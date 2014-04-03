	.file	"search.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 search.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	FH,4,4
	.comm	FHF,4,4
	.comm	razor_drop,4,4
	.comm	razor_material,4,4
	.comm	drop_cuts,4,4
	.comm	ext_recap,4,4
	.comm	ext_onerep,4,4
	.comm	true_i_depth,1,1
	.comm	bestmovenum,4,4
	.comm	ugly_ep_hack,4,4
	.comm	postpv,256,32
	.comm	searching_move,20,16
	.comm	moveleft,4,4
	.comm	movetotal,4,4
	.comm	legals,4,4
	.comm	failed,4,4
	.comm	extendedtime,4,4
	.comm	tradefreely,4,4
	.comm	s_threat,4,4
	.comm	rootnodecount,2048,32
	.comm	checks,1200,32
	.comm	recaps,1200,32
	.comm	singular,1200,32
	.globl	order_moves
	.type	order_moves, @function
order_moves:
.LFB2:
	.file 1 "search.c"
	.loc 1 55 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# moves, moves
	movq	%rsi, -48(%rbp)	# move_ordering, move_ordering
	movq	%rdx, -56(%rbp)	# see_values, see_values
	movl	%ecx, -60(%rbp)	# num_moves, num_moves
	movl	%r8d, -64(%rbp)	# best, best
	.loc 1 63 0
	movl	searching_pv(%rip), %eax	# searching_pv, searching_pv.0
	testl	%eax, %eax	# searching_pv.0
	je	.L2	#,
	.loc 1 64 0
	movl	$0, searching_pv(%rip)	#, searching_pv
	.loc 1 65 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L3	#
.L25:
	.loc 1 66 0
	movl	-24(%rbp), %eax	# i, tmp439
	movslq	%eax, %rdx	# tmp439, D.6279
	movq	%rdx, %rax	# D.6279, tmp440
	addq	%rax, %rax	# tmp440
	addq	%rdx, %rax	# D.6279, tmp440
	salq	$3, %rax	#, tmp441
	movq	%rax, %rdx	# tmp440, D.6279
	movq	-40(%rbp), %rax	# moves, tmp442
	addq	%rdx, %rax	# D.6279, D.6280
	movl	(%rax), %eax	# _9->from, tmp443
	movl	%eax, -20(%rbp)	# tmp443, from
	.loc 1 67 0
	movl	-24(%rbp), %eax	# i, tmp444
	movslq	%eax, %rdx	# tmp444, D.6279
	movq	%rdx, %rax	# D.6279, tmp445
	addq	%rax, %rax	# tmp445
	addq	%rdx, %rax	# D.6279, tmp445
	salq	$3, %rax	#, tmp446
	movq	%rax, %rdx	# tmp445, D.6279
	movq	-40(%rbp), %rax	# moves, tmp447
	addq	%rdx, %rax	# D.6279, D.6280
	movl	4(%rax), %eax	# _13->target, tmp448
	movl	%eax, -16(%rbp)	# tmp448, target
	.loc 1 68 0
	movl	-24(%rbp), %eax	# i, tmp449
	movslq	%eax, %rdx	# tmp449, D.6279
	movq	%rdx, %rax	# D.6279, tmp450
	addq	%rax, %rax	# tmp450
	addq	%rdx, %rax	# D.6279, tmp450
	salq	$3, %rax	#, tmp451
	movq	%rax, %rdx	# tmp450, D.6279
	movq	-40(%rbp), %rax	# moves, tmp452
	addq	%rdx, %rax	# D.6279, D.6280
	movl	12(%rax), %eax	# _17->promoted, tmp453
	movl	%eax, -12(%rbp)	# tmp453, promoted
	.loc 1 69 0
	movl	-24(%rbp), %eax	# i, tmp454
	movslq	%eax, %rdx	# tmp454, D.6279
	movq	%rdx, %rax	# D.6279, tmp455
	addq	%rax, %rax	# tmp455
	addq	%rdx, %rax	# D.6279, tmp455
	salq	$3, %rax	#, tmp456
	movq	%rax, %rdx	# tmp455, D.6279
	movq	-40(%rbp), %rax	# moves, tmp457
	addq	%rdx, %rax	# D.6279, D.6280
	movl	8(%rax), %eax	# _21->captured, tmp458
	movl	%eax, -8(%rbp)	# tmp458, captured
	.loc 1 73 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L4	#,
	.loc 1 76 0
	movl	-8(%rbp), %eax	# captured, tmp460
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp461, D.6281
	subl	%edx, %eax	# tmp461, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp463
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp465, D.6281
	subl	%edx, %eax	# tmp465, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L5	#,
	.loc 1 78 0
	movl	-24(%rbp), %eax	# i, tmp466
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp467
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp469
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp470, D.6281
	subl	%edx, %eax	# tmp470, D.6281
	movl	-20(%rbp), %edx	# from, tmp472
	movslq	%edx, %rdx	# tmp472, tmp471
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp473
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp474
	sarl	$31, %ecx	#, tmp474
	xorl	%ecx, %edx	# tmp474, D.6281
	subl	%ecx, %edx	# tmp474, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_32
	.loc 1 79 0
	movl	-24(%rbp), %eax	# i, tmp475
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp476
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp477
	movslq	%edx, %rdx	# tmp477, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-56(%rbp), %rdx	# see_values, tmp478
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_46, D.6281
	addl	$50000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_43
	jmp	.L9	#
.L5:
	.loc 1 83 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.1
	testl	%eax, %eax	# white_to_move.1
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp479
	movl	-16(%rbp), %ecx	# target, tmp480
	movl	%ecx, %esi	# tmp480,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp481, seev
	.loc 1 85 0
	cmpl	$-50, -4(%rbp)	#, seev
	jl	.L7	#,
	.loc 1 86 0
	movl	-24(%rbp), %eax	# i, tmp482
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp483
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-4(%rbp), %edx	# seev, tmp484
	addl	$50000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_55
	jmp	.L8	#
.L7:
	.loc 1 88 0
	movl	-24(%rbp), %eax	# i, tmp485
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp486
	addq	%rax, %rdx	# tmp486, D.6282
	movl	-4(%rbp), %eax	# seev, tmp487
	movl	%eax, (%rdx)	# tmp487, *_59
.L8:
	.loc 1 90 0
	movl	-24(%rbp), %eax	# i, tmp488
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp489
	addq	%rax, %rdx	# tmp489, D.6282
	movl	-4(%rbp), %eax	# seev, tmp490
	movl	%eax, (%rdx)	# tmp490, *_62
	jmp	.L9	#
.L4:
	.loc 1 94 0
	movl	-24(%rbp), %eax	# i, tmp491
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp492
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$0, (%rax)	#, *_65
.L9:
	.loc 1 97 0
	movl	ply(%rip), %eax	# ply, ply.2
	movslq	%eax, %rdx	# ply.2, tmp493
	movq	%rdx, %rax	# tmp493, tmp494
	addq	%rax, %rax	# tmp494
	addq	%rdx, %rax	# tmp493, tmp494
	salq	$3, %rax	#, tmp495
	addq	$pv+7200, %rax	#, tmp496
	movl	(%rax), %eax	# pv[1][ply.2_66].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L10	#,
	.loc 1 98 0
	movl	ply(%rip), %eax	# ply, ply.3
	movslq	%eax, %rdx	# ply.3, tmp497
	movq	%rdx, %rax	# tmp497, tmp498
	addq	%rax, %rax	# tmp498
	addq	%rdx, %rax	# tmp497, tmp498
	salq	$3, %rax	#, tmp499
	addq	$pv+7204, %rax	#, tmp500
	movl	(%rax), %eax	# pv[1][ply.3_68].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L10	#,
	.loc 1 99 0
	movl	ply(%rip), %eax	# ply, ply.4
	movslq	%eax, %rdx	# ply.4, tmp501
	movq	%rdx, %rax	# tmp501, tmp502
	addq	%rax, %rax	# tmp502
	addq	%rdx, %rax	# tmp501, tmp502
	salq	$3, %rax	#, tmp503
	addq	$pv+7212, %rax	#, tmp504
	movl	(%rax), %eax	# pv[1][ply.4_70].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L10	#,
	.loc 1 101 0
	movl	$1, searching_pv(%rip)	#, searching_pv
	.loc 1 102 0
	movl	-24(%rbp), %eax	# i, tmp505
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp506
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$100000000, (%rax)	#, *_74
	.loc 1 104 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L11	#,
	.loc 1 107 0
	movl	-8(%rbp), %eax	# captured, tmp508
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp509, D.6281
	subl	%edx, %eax	# tmp509, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp511
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp513, D.6281
	subl	%edx, %eax	# tmp513, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L12	#,
	.loc 1 109 0
	movl	-24(%rbp), %eax	# i, tmp514
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp515
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp517
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp518, D.6281
	subl	%edx, %eax	# tmp518, D.6281
	movl	-20(%rbp), %edx	# from, tmp520
	movslq	%edx, %rdx	# tmp520, tmp519
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp521
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp522
	sarl	$31, %ecx	#, tmp522
	xorl	%ecx, %edx	# tmp522, D.6281
	subl	%ecx, %edx	# tmp522, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_83
	jmp	.L11	#
.L12:
	.loc 1 113 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.5
	testl	%eax, %eax	# white_to_move.5
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp523
	movl	-16(%rbp), %ecx	# target, tmp524
	movl	%ecx, %esi	# tmp524,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp525, seev
	.loc 1 114 0
	movl	-24(%rbp), %eax	# i, tmp526
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp527
	addq	%rax, %rdx	# tmp527, D.6282
	movl	-4(%rbp), %eax	# seev, tmp528
	movl	%eax, (%rdx)	# tmp528, *_97
	.loc 1 104 0
	jmp	.L13	#
.L11:
	.loc 1 104 0 is_stmt 0 discriminator 1
	jmp	.L13	#
.L10:
	.loc 1 118 0 is_stmt 1
	cmpl	$-1, -64(%rbp)	#, best
	je	.L14	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	cmpl	$-2, -64(%rbp)	#, best
	je	.L14	#,
	movl	-24(%rbp), %eax	# i, tmp529
	cmpl	-64(%rbp), %eax	# best, tmp529
	jne	.L14	#,
	.loc 1 120 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp530
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp531
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$100000000, (%rax)	#, *_101
	.loc 1 122 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L15	#,
	.loc 1 125 0
	movl	-8(%rbp), %eax	# captured, tmp533
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp534, D.6281
	subl	%edx, %eax	# tmp534, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp536
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp538, D.6281
	subl	%edx, %eax	# tmp538, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L16	#,
	.loc 1 127 0
	movl	-24(%rbp), %eax	# i, tmp539
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp540
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp542
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp543, D.6281
	subl	%edx, %eax	# tmp543, D.6281
	movl	-20(%rbp), %edx	# from, tmp545
	movslq	%edx, %rdx	# tmp545, tmp544
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp546
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp547
	sarl	$31, %ecx	#, tmp547
	xorl	%ecx, %edx	# tmp547, D.6281
	subl	%ecx, %edx	# tmp547, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_110
	jmp	.L15	#
.L16:
	.loc 1 131 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.6
	testl	%eax, %eax	# white_to_move.6
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp548
	movl	-16(%rbp), %ecx	# target, tmp549
	movl	%ecx, %esi	# tmp549,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp550, seev
	.loc 1 132 0
	movl	-24(%rbp), %eax	# i, tmp551
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp552
	addq	%rax, %rdx	# tmp552, D.6282
	movl	-4(%rbp), %eax	# seev, tmp553
	movl	%eax, (%rdx)	# tmp553, *_124
	.loc 1 122 0
	jmp	.L13	#
.L15:
	.loc 1 122 0 is_stmt 0 discriminator 1
	jmp	.L13	#
.L14:
	.loc 1 136 0 is_stmt 1
	cmpl	$-2, -64(%rbp)	#, best
	jne	.L17	#,
	.loc 1 139 0
	movl	ply(%rip), %eax	# ply, ply.7
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.8
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp554
	movslq	%ecx, %rcx	# D.6281, tmp555
	movq	%rdx, %rax	# tmp554, tmp556
	addq	%rax, %rax	# tmp556
	addq	%rdx, %rax	# tmp554, tmp556
	salq	$3, %rax	#, tmp557
	imulq	$7200, %rcx, %rdx	#, tmp555, tmp558
	addq	%rdx, %rax	# tmp558, tmp559
	addq	$pv, %rax	#, tmp560
	movl	(%rax), %eax	# pv[_126][_128].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L13	#,
	.loc 1 140 0
	movl	ply(%rip), %eax	# ply, ply.9
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.10
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp561
	movslq	%ecx, %rcx	# D.6281, tmp562
	movq	%rdx, %rax	# tmp561, tmp563
	addq	%rax, %rax	# tmp563
	addq	%rdx, %rax	# tmp561, tmp563
	salq	$3, %rax	#, tmp564
	imulq	$7200, %rcx, %rdx	#, tmp562, tmp565
	addq	%rdx, %rax	# tmp565, tmp566
	addq	$pv+4, %rax	#, tmp567
	movl	(%rax), %eax	# pv[_131][_133].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L13	#,
	.loc 1 141 0
	movl	ply(%rip), %eax	# ply, ply.11
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.12
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp568
	movslq	%ecx, %rcx	# D.6281, tmp569
	movq	%rdx, %rax	# tmp568, tmp570
	addq	%rax, %rax	# tmp570
	addq	%rdx, %rax	# tmp568, tmp570
	salq	$3, %rax	#, tmp571
	imulq	$7200, %rcx, %rdx	#, tmp569, tmp572
	addq	%rdx, %rax	# tmp572, tmp573
	addq	$pv+12, %rax	#, tmp574
	movl	(%rax), %eax	# pv[_136][_138].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L13	#,
	.loc 1 143 0
	movl	-24(%rbp), %eax	# i, tmp575
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp576
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$100000000, (%rax)	#, *_142
	.loc 1 145 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L13	#,
	.loc 1 148 0
	movl	-8(%rbp), %eax	# captured, tmp578
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp579, D.6281
	subl	%edx, %eax	# tmp579, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp581
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp583, D.6281
	subl	%edx, %eax	# tmp583, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L19	#,
	.loc 1 150 0
	movl	-24(%rbp), %eax	# i, tmp584
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp585
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp587
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp588, D.6281
	subl	%edx, %eax	# tmp588, D.6281
	movl	-20(%rbp), %edx	# from, tmp590
	movslq	%edx, %rdx	# tmp590, tmp589
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp591
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp592
	sarl	$31, %ecx	#, tmp592
	xorl	%ecx, %edx	# tmp592, D.6281
	subl	%ecx, %edx	# tmp592, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_151
	jmp	.L13	#
.L19:
	.loc 1 154 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.13
	testl	%eax, %eax	# white_to_move.13
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp593
	movl	-16(%rbp), %ecx	# target, tmp594
	movl	%ecx, %esi	# tmp594,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp595, seev
	.loc 1 155 0
	movl	-24(%rbp), %eax	# i, tmp596
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp597
	addq	%rax, %rdx	# tmp597, D.6282
	movl	-4(%rbp), %eax	# seev, tmp598
	movl	%eax, (%rdx)	# tmp598, *_165
	jmp	.L13	#
.L17:
	.loc 1 166 0
	movl	ply(%rip), %eax	# ply, ply.14
	cmpl	$1, %eax	#, ply.14
	jne	.L20	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.15
	cmpl	$1, %eax	#, i_depth.15
	jg	.L21	#,
.L20:
	.loc 1 169 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp599
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp600
	leaq	(%rdx,%rax), %rcx	#, D.6282
	movl	-24(%rbp), %eax	# i, tmp601
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp602
	addq	%rdx, %rax	# D.6279, D.6282
	movl	(%rax), %eax	# *_179, D.6281
	movl	%eax, %esi	# D.6281, D.6284
	movl	-16(%rbp), %eax	# target, tmp604
	movslq	%eax, %rdi	# tmp604, tmp603
	movl	-20(%rbp), %eax	# from, tmp606
	movslq	%eax, %rdx	# tmp606, tmp605
	movq	%rdx, %rax	# tmp605, tmp607
	salq	$3, %rax	#, tmp607
	addq	%rdx, %rax	# tmp605, tmp607
	salq	$4, %rax	#, tmp608
	addq	%rdi, %rax	# tmp603, tmp609
	movl	history_h(,%rax,4), %eax	# history_h, D.6284
	addl	%esi, %eax	# D.6284, D.6284
	movl	%eax, (%rcx)	# D.6281, *_176
	.loc 1 172 0
	movl	ply(%rip), %eax	# ply, ply.16
	movslq	%eax, %rdx	# ply.16, tmp610
	movq	%rdx, %rax	# tmp610, tmp611
	addq	%rax, %rax	# tmp611
	addq	%rdx, %rax	# tmp610, tmp611
	salq	$3, %rax	#, tmp612
	addq	$killer1, %rax	#, tmp613
	movl	(%rax), %eax	# killer1[ply.16_185].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L22	#,
	.loc 1 172 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.17
	movslq	%eax, %rdx	# ply.17, tmp614
	movq	%rdx, %rax	# tmp614, tmp615
	addq	%rax, %rax	# tmp615
	addq	%rdx, %rax	# tmp614, tmp615
	salq	$3, %rax	#, tmp616
	addq	$killer1+4, %rax	#, tmp617
	movl	(%rax), %eax	# killer1[ply.17_187].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L22	#,
	.loc 1 173 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.18
	movslq	%eax, %rdx	# ply.18, tmp618
	movq	%rdx, %rax	# tmp618, tmp619
	addq	%rax, %rax	# tmp619
	addq	%rdx, %rax	# tmp618, tmp619
	salq	$3, %rax	#, tmp620
	addq	$killer1+12, %rax	#, tmp621
	movl	(%rax), %eax	# killer1[ply.18_189].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L22	#,
	.loc 1 174 0
	movl	-24(%rbp), %eax	# i, tmp622
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp623
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp624
	movslq	%edx, %rdx	# tmp624, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp625
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_196, D.6281
	addl	$25000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_193
	jmp	.L23	#
.L22:
	.loc 1 175 0
	movl	ply(%rip), %eax	# ply, ply.19
	movslq	%eax, %rdx	# ply.19, tmp626
	movq	%rdx, %rax	# tmp626, tmp627
	addq	%rax, %rax	# tmp627
	addq	%rdx, %rax	# tmp626, tmp627
	salq	$3, %rax	#, tmp628
	addq	$killer2, %rax	#, tmp629
	movl	(%rax), %eax	# killer2[ply.19_199].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L24	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.20
	movslq	%eax, %rdx	# ply.20, tmp630
	movq	%rdx, %rax	# tmp630, tmp631
	addq	%rax, %rax	# tmp631
	addq	%rdx, %rax	# tmp630, tmp631
	salq	$3, %rax	#, tmp632
	addq	$killer2+4, %rax	#, tmp633
	movl	(%rax), %eax	# killer2[ply.20_201].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L24	#,
	.loc 1 176 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.21
	movslq	%eax, %rdx	# ply.21, tmp634
	movq	%rdx, %rax	# tmp634, tmp635
	addq	%rax, %rax	# tmp635
	addq	%rdx, %rax	# tmp634, tmp635
	salq	$3, %rax	#, tmp636
	addq	$killer2+12, %rax	#, tmp637
	movl	(%rax), %eax	# killer2[ply.21_203].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L24	#,
	.loc 1 177 0
	movl	-24(%rbp), %eax	# i, tmp638
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp639
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp640
	movslq	%edx, %rdx	# tmp640, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp641
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_210, D.6281
	addl	$20000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_207
	jmp	.L23	#
.L24:
	.loc 1 178 0
	movl	ply(%rip), %eax	# ply, ply.22
	movslq	%eax, %rdx	# ply.22, tmp642
	movq	%rdx, %rax	# tmp642, tmp643
	addq	%rax, %rax	# tmp643
	addq	%rdx, %rax	# tmp642, tmp643
	salq	$3, %rax	#, tmp644
	addq	$killer3, %rax	#, tmp645
	movl	(%rax), %eax	# killer3[ply.22_213].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L23	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.23
	movslq	%eax, %rdx	# ply.23, tmp646
	movq	%rdx, %rax	# tmp646, tmp647
	addq	%rax, %rax	# tmp647
	addq	%rdx, %rax	# tmp646, tmp647
	salq	$3, %rax	#, tmp648
	addq	$killer3+4, %rax	#, tmp649
	movl	(%rax), %eax	# killer3[ply.23_215].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L23	#,
	.loc 1 179 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.24
	movslq	%eax, %rdx	# ply.24, tmp650
	movq	%rdx, %rax	# tmp650, tmp651
	addq	%rax, %rax	# tmp651
	addq	%rdx, %rax	# tmp650, tmp651
	salq	$3, %rax	#, tmp652
	addq	$killer3+12, %rax	#, tmp653
	movl	(%rax), %eax	# killer3[ply.24_217].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L23	#,
	.loc 1 180 0
	movl	-24(%rbp), %eax	# i, tmp654
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp655
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp656
	movslq	%edx, %rdx	# tmp656, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp657
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_224, D.6281
	addl	$15000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_221
	.loc 1 172 0
	jmp	.L13	#
.L23:
	jmp	.L13	#
.L21:
	.loc 1 190 0
	movl	-24(%rbp), %eax	# i, tmp658
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp659
	leaq	(%rdx,%rax), %rcx	#, D.6282
	movl	-24(%rbp), %eax	# i, tmp661
	cltq
	movl	rootnodecount(,%rax,4), %eax	# rootnodecount, D.6284
	movl	$1374389535, %edx	#, tmp663
	mull	%edx	# tmp663
	movl	%edx, %eax	# tmp662, D.6284
	shrl	$5, %eax	#, D.6284
	movl	%eax, (%rcx)	# D.6281, *_170
.L13:
	.loc 1 65 0
	addl	$1, -24(%rbp)	#, i
.L3:
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp664
	cmpl	-60(%rbp), %eax	# num_moves, tmp664
	jl	.L25	#,
	jmp	.L1	#
.L2:
	.loc 1 199 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	jmp	.L27	#
.L43:
	.loc 1 200 0
	movl	-24(%rbp), %eax	# i, tmp665
	movslq	%eax, %rdx	# tmp665, D.6279
	movq	%rdx, %rax	# D.6279, tmp666
	addq	%rax, %rax	# tmp666
	addq	%rdx, %rax	# D.6279, tmp666
	salq	$3, %rax	#, tmp667
	movq	%rax, %rdx	# tmp666, D.6279
	movq	-40(%rbp), %rax	# moves, tmp668
	addq	%rdx, %rax	# D.6279, D.6280
	movl	(%rax), %eax	# _231->from, tmp669
	movl	%eax, -20(%rbp)	# tmp669, from
	.loc 1 201 0
	movl	-24(%rbp), %eax	# i, tmp670
	movslq	%eax, %rdx	# tmp670, D.6279
	movq	%rdx, %rax	# D.6279, tmp671
	addq	%rax, %rax	# tmp671
	addq	%rdx, %rax	# D.6279, tmp671
	salq	$3, %rax	#, tmp672
	movq	%rax, %rdx	# tmp671, D.6279
	movq	-40(%rbp), %rax	# moves, tmp673
	addq	%rdx, %rax	# D.6279, D.6280
	movl	4(%rax), %eax	# _235->target, tmp674
	movl	%eax, -16(%rbp)	# tmp674, target
	.loc 1 202 0
	movl	-24(%rbp), %eax	# i, tmp675
	movslq	%eax, %rdx	# tmp675, D.6279
	movq	%rdx, %rax	# D.6279, tmp676
	addq	%rax, %rax	# tmp676
	addq	%rdx, %rax	# D.6279, tmp676
	salq	$3, %rax	#, tmp677
	movq	%rax, %rdx	# tmp676, D.6279
	movq	-40(%rbp), %rax	# moves, tmp678
	addq	%rdx, %rax	# D.6279, D.6280
	movl	12(%rax), %eax	# _239->promoted, tmp679
	movl	%eax, -12(%rbp)	# tmp679, promoted
	.loc 1 203 0
	movl	-24(%rbp), %eax	# i, tmp680
	movslq	%eax, %rdx	# tmp680, D.6279
	movq	%rdx, %rax	# D.6279, tmp681
	addq	%rax, %rax	# tmp681
	addq	%rdx, %rax	# D.6279, tmp681
	salq	$3, %rax	#, tmp682
	movq	%rax, %rdx	# tmp681, D.6279
	movq	-40(%rbp), %rax	# moves, tmp683
	addq	%rdx, %rax	# D.6279, D.6280
	movl	8(%rax), %eax	# _243->captured, tmp684
	movl	%eax, -8(%rbp)	# tmp684, captured
	.loc 1 207 0
	cmpl	$-1, -64(%rbp)	#, best
	je	.L28	#,
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp685
	cmpl	-64(%rbp), %eax	# best, tmp685
	jne	.L28	#,
	.loc 1 209 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp686
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp687
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$100000000, (%rax)	#, *_247
	.loc 1 212 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L29	#,
	.loc 1 215 0
	movl	-8(%rbp), %eax	# captured, tmp689
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp690, D.6281
	subl	%edx, %eax	# tmp690, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp692
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp694, D.6281
	subl	%edx, %eax	# tmp694, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L30	#,
	.loc 1 217 0
	movl	-24(%rbp), %eax	# i, tmp695
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp696
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp698
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp699, D.6281
	subl	%edx, %eax	# tmp699, D.6281
	movl	-20(%rbp), %edx	# from, tmp701
	movslq	%edx, %rdx	# tmp701, tmp700
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp702
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp703
	sarl	$31, %ecx	#, tmp703
	xorl	%ecx, %edx	# tmp703, D.6281
	subl	%ecx, %edx	# tmp703, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_256
	jmp	.L29	#
.L30:
	.loc 1 221 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.25
	testl	%eax, %eax	# white_to_move.25
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp704
	movl	-16(%rbp), %ecx	# target, tmp705
	movl	%ecx, %esi	# tmp705,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp706, seev
	.loc 1 222 0
	movl	-24(%rbp), %eax	# i, tmp707
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp708
	addq	%rax, %rdx	# tmp708, D.6282
	movl	-4(%rbp), %eax	# seev, tmp709
	movl	%eax, (%rdx)	# tmp709, *_270
	.loc 1 212 0
	jmp	.L31	#
.L29:
	.loc 1 212 0 is_stmt 0 discriminator 1
	jmp	.L31	#
.L28:
	.loc 1 227 0 is_stmt 1
	cmpl	$-2, -64(%rbp)	#, best
	jne	.L32	#,
	.loc 1 230 0
	movl	ply(%rip), %eax	# ply, ply.26
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.27
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp710
	movslq	%ecx, %rcx	# D.6281, tmp711
	movq	%rdx, %rax	# tmp710, tmp712
	addq	%rax, %rax	# tmp712
	addq	%rdx, %rax	# tmp710, tmp712
	salq	$3, %rax	#, tmp713
	imulq	$7200, %rcx, %rdx	#, tmp711, tmp714
	addq	%rdx, %rax	# tmp714, tmp715
	addq	$pv, %rax	#, tmp716
	movl	(%rax), %eax	# pv[_272][_274].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L31	#,
	.loc 1 231 0
	movl	ply(%rip), %eax	# ply, ply.28
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.29
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp717
	movslq	%ecx, %rcx	# D.6281, tmp718
	movq	%rdx, %rax	# tmp717, tmp719
	addq	%rax, %rax	# tmp719
	addq	%rdx, %rax	# tmp717, tmp719
	salq	$3, %rax	#, tmp720
	imulq	$7200, %rcx, %rdx	#, tmp718, tmp721
	addq	%rdx, %rax	# tmp721, tmp722
	addq	$pv+4, %rax	#, tmp723
	movl	(%rax), %eax	# pv[_277][_279].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L31	#,
	.loc 1 232 0
	movl	ply(%rip), %eax	# ply, ply.30
	leal	1(%rax), %ecx	#, D.6281
	movl	ply(%rip), %eax	# ply, ply.31
	addl	$1, %eax	#, D.6281
	movslq	%eax, %rdx	# D.6281, tmp724
	movslq	%ecx, %rcx	# D.6281, tmp725
	movq	%rdx, %rax	# tmp724, tmp726
	addq	%rax, %rax	# tmp726
	addq	%rdx, %rax	# tmp724, tmp726
	salq	$3, %rax	#, tmp727
	imulq	$7200, %rcx, %rdx	#, tmp725, tmp728
	addq	%rdx, %rax	# tmp728, tmp729
	addq	$pv+12, %rax	#, tmp730
	movl	(%rax), %eax	# pv[_282][_284].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L31	#,
	.loc 1 234 0
	movl	-24(%rbp), %eax	# i, tmp731
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp732
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$100000000, (%rax)	#, *_288
	.loc 1 236 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L31	#,
	.loc 1 239 0
	movl	-8(%rbp), %eax	# captured, tmp734
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp735, D.6281
	subl	%edx, %eax	# tmp735, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp737
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp739, D.6281
	subl	%edx, %eax	# tmp739, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L34	#,
	.loc 1 241 0
	movl	-24(%rbp), %eax	# i, tmp740
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp741
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp743
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp744, D.6281
	subl	%edx, %eax	# tmp744, D.6281
	movl	-20(%rbp), %edx	# from, tmp746
	movslq	%edx, %rdx	# tmp746, tmp745
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp747
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp748
	sarl	$31, %ecx	#, tmp748
	xorl	%ecx, %edx	# tmp748, D.6281
	subl	%ecx, %edx	# tmp748, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_297
	jmp	.L31	#
.L34:
	.loc 1 245 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.32
	testl	%eax, %eax	# white_to_move.32
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp749
	movl	-16(%rbp), %ecx	# target, tmp750
	movl	%ecx, %esi	# tmp750,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp751, seev
	.loc 1 246 0
	movl	-24(%rbp), %eax	# i, tmp752
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp753
	addq	%rax, %rdx	# tmp753, D.6282
	movl	-4(%rbp), %eax	# seev, tmp754
	movl	%eax, (%rdx)	# tmp754, *_311
	jmp	.L31	#
.L32:
	.loc 1 251 0
	cmpl	$13, -8(%rbp)	#, captured
	je	.L35	#,
	.loc 1 254 0
	movl	-8(%rbp), %eax	# captured, tmp756
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp757, D.6281
	subl	%edx, %eax	# tmp757, D.6281
	leal	15(%rax), %ecx	#, D.6281
	movl	-20(%rbp), %eax	# from, tmp759
	cltq
	movl	board(,%rax,4), %eax	# board, D.6281
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp761, D.6281
	subl	%edx, %eax	# tmp761, D.6281
	cmpl	%eax, %ecx	# D.6281, D.6281
	jl	.L36	#,
	.loc 1 256 0
	movl	-24(%rbp), %eax	# i, tmp762
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp763
	leaq	(%rdx,%rax), %rsi	#, D.6282
	movl	-8(%rbp), %eax	# captured, tmp765
	cltq
	movl	material(,%rax,4), %eax	# material, D.6281
	cltd
	xorl	%edx, %eax	# tmp766, D.6281
	subl	%edx, %eax	# tmp766, D.6281
	movl	-20(%rbp), %edx	# from, tmp768
	movslq	%edx, %rdx	# tmp768, tmp767
	movl	board(,%rdx,4), %edx	# board, D.6281
	movslq	%edx, %rdx	# D.6281, tmp769
	movl	material(,%rdx,4), %edx	# material, D.6281
	movl	%edx, %ecx	# D.6281, tmp770
	sarl	$31, %ecx	#, tmp770
	xorl	%ecx, %edx	# tmp770, D.6281
	subl	%ecx, %edx	# tmp770, D.6281
	sarl	$4, %edx	#, D.6281
	subl	%edx, %eax	# D.6281, D.6281
	movl	%eax, (%rsi)	# D.6281, *_320
	.loc 1 257 0
	movl	-24(%rbp), %eax	# i, tmp771
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp772
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp773
	movslq	%edx, %rdx	# tmp773, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-56(%rbp), %rdx	# see_values, tmp774
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_333, D.6281
	addl	$50000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_330
	jmp	.L31	#
.L36:
	.loc 1 261 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.33
	testl	%eax, %eax	# white_to_move.33
	sete	%al	#, D.6283
	movzbl	%al, %eax	# D.6283, D.6281
	movl	-20(%rbp), %edx	# from, tmp775
	movl	-16(%rbp), %ecx	# target, tmp776
	movl	%ecx, %esi	# tmp776,
	movl	%eax, %edi	# D.6281,
	call	see	#
	movl	%eax, -4(%rbp)	# tmp777, seev
	.loc 1 263 0
	cmpl	$-50, -4(%rbp)	#, seev
	jl	.L38	#,
	.loc 1 264 0
	movl	-24(%rbp), %eax	# i, tmp778
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp779
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-4(%rbp), %edx	# seev, tmp780
	addl	$50000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_342
	jmp	.L39	#
.L38:
	.loc 1 266 0
	movl	-24(%rbp), %eax	# i, tmp781
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp782
	addq	%rax, %rdx	# tmp782, D.6282
	movl	-4(%rbp), %eax	# seev, tmp783
	movl	%eax, (%rdx)	# tmp783, *_346
.L39:
	.loc 1 268 0
	movl	-24(%rbp), %eax	# i, tmp784
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-56(%rbp), %rax	# see_values, tmp785
	addq	%rax, %rdx	# tmp785, D.6282
	movl	-4(%rbp), %eax	# seev, tmp786
	movl	%eax, (%rdx)	# tmp786, *_349
	jmp	.L31	#
.L35:
	.loc 1 272 0
	movl	-24(%rbp), %eax	# i, tmp787
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp788
	addq	%rdx, %rax	# D.6279, D.6282
	movl	$0, (%rax)	#, *_352
.L31:
	.loc 1 277 0
	movl	-24(%rbp), %eax	# i, tmp789
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp790
	leaq	(%rdx,%rax), %rcx	#, D.6282
	movl	-24(%rbp), %eax	# i, tmp791
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp792
	addq	%rdx, %rax	# D.6279, D.6282
	movl	(%rax), %eax	# *_358, D.6281
	movl	%eax, %esi	# D.6281, D.6284
	movl	-16(%rbp), %eax	# target, tmp794
	movslq	%eax, %rdi	# tmp794, tmp793
	movl	-20(%rbp), %eax	# from, tmp796
	movslq	%eax, %rdx	# tmp796, tmp795
	movq	%rdx, %rax	# tmp795, tmp797
	salq	$3, %rax	#, tmp797
	addq	%rdx, %rax	# tmp795, tmp797
	salq	$4, %rax	#, tmp798
	addq	%rdi, %rax	# tmp793, tmp799
	movl	history_h(,%rax,4), %eax	# history_h, D.6284
	addl	%esi, %eax	# D.6284, D.6284
	movl	%eax, (%rcx)	# D.6281, *_355
	.loc 1 280 0
	movl	ply(%rip), %eax	# ply, ply.34
	movslq	%eax, %rdx	# ply.34, tmp800
	movq	%rdx, %rax	# tmp800, tmp801
	addq	%rax, %rax	# tmp801
	addq	%rdx, %rax	# tmp800, tmp801
	salq	$3, %rax	#, tmp802
	addq	$killer1, %rax	#, tmp803
	movl	(%rax), %eax	# killer1[ply.34_364].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L40	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.35
	movslq	%eax, %rdx	# ply.35, tmp804
	movq	%rdx, %rax	# tmp804, tmp805
	addq	%rax, %rax	# tmp805
	addq	%rdx, %rax	# tmp804, tmp805
	salq	$3, %rax	#, tmp806
	addq	$killer1+4, %rax	#, tmp807
	movl	(%rax), %eax	# killer1[ply.35_366].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L40	#,
	.loc 1 281 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.36
	movslq	%eax, %rdx	# ply.36, tmp808
	movq	%rdx, %rax	# tmp808, tmp809
	addq	%rax, %rax	# tmp809
	addq	%rdx, %rax	# tmp808, tmp809
	salq	$3, %rax	#, tmp810
	addq	$killer1+12, %rax	#, tmp811
	movl	(%rax), %eax	# killer1[ply.36_368].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L40	#,
	.loc 1 282 0
	movl	-24(%rbp), %eax	# i, tmp812
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp813
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp814
	movslq	%edx, %rdx	# tmp814, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp815
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_375, D.6281
	addl	$25000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_372
	jmp	.L41	#
.L40:
	.loc 1 283 0
	movl	ply(%rip), %eax	# ply, ply.37
	movslq	%eax, %rdx	# ply.37, tmp816
	movq	%rdx, %rax	# tmp816, tmp817
	addq	%rax, %rax	# tmp817
	addq	%rdx, %rax	# tmp816, tmp817
	salq	$3, %rax	#, tmp818
	addq	$killer2, %rax	#, tmp819
	movl	(%rax), %eax	# killer2[ply.37_378].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L42	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.38
	movslq	%eax, %rdx	# ply.38, tmp820
	movq	%rdx, %rax	# tmp820, tmp821
	addq	%rax, %rax	# tmp821
	addq	%rdx, %rax	# tmp820, tmp821
	salq	$3, %rax	#, tmp822
	addq	$killer2+4, %rax	#, tmp823
	movl	(%rax), %eax	# killer2[ply.38_380].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L42	#,
	.loc 1 284 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.39
	movslq	%eax, %rdx	# ply.39, tmp824
	movq	%rdx, %rax	# tmp824, tmp825
	addq	%rax, %rax	# tmp825
	addq	%rdx, %rax	# tmp824, tmp825
	salq	$3, %rax	#, tmp826
	addq	$killer2+12, %rax	#, tmp827
	movl	(%rax), %eax	# killer2[ply.39_382].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L42	#,
	.loc 1 285 0
	movl	-24(%rbp), %eax	# i, tmp828
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp829
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp830
	movslq	%edx, %rdx	# tmp830, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp831
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_389, D.6281
	addl	$20000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_386
	jmp	.L41	#
.L42:
	.loc 1 286 0
	movl	ply(%rip), %eax	# ply, ply.40
	movslq	%eax, %rdx	# ply.40, tmp832
	movq	%rdx, %rax	# tmp832, tmp833
	addq	%rax, %rax	# tmp833
	addq	%rdx, %rax	# tmp832, tmp833
	salq	$3, %rax	#, tmp834
	addq	$killer3, %rax	#, tmp835
	movl	(%rax), %eax	# killer3[ply.40_392].from, D.6281
	cmpl	-20(%rbp), %eax	# from, D.6281
	jne	.L41	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.41
	movslq	%eax, %rdx	# ply.41, tmp836
	movq	%rdx, %rax	# tmp836, tmp837
	addq	%rax, %rax	# tmp837
	addq	%rdx, %rax	# tmp836, tmp837
	salq	$3, %rax	#, tmp838
	addq	$killer3+4, %rax	#, tmp839
	movl	(%rax), %eax	# killer3[ply.41_394].target, D.6281
	cmpl	-16(%rbp), %eax	# target, D.6281
	jne	.L41	#,
	.loc 1 287 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.42
	movslq	%eax, %rdx	# ply.42, tmp840
	movq	%rdx, %rax	# tmp840, tmp841
	addq	%rax, %rax	# tmp841
	addq	%rdx, %rax	# tmp840, tmp841
	salq	$3, %rax	#, tmp842
	addq	$killer3+12, %rax	#, tmp843
	movl	(%rax), %eax	# killer3[ply.42_396].promoted, D.6281
	cmpl	-12(%rbp), %eax	# promoted, D.6281
	jne	.L41	#,
	.loc 1 288 0
	movl	-24(%rbp), %eax	# i, tmp844
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6279
	movq	-48(%rbp), %rax	# move_ordering, tmp845
	addq	%rdx, %rax	# D.6279, D.6282
	movl	-24(%rbp), %edx	# i, tmp846
	movslq	%edx, %rdx	# tmp846, D.6279
	leaq	0(,%rdx,4), %rcx	#, D.6279
	movq	-48(%rbp), %rdx	# move_ordering, tmp847
	addq	%rcx, %rdx	# D.6279, D.6282
	movl	(%rdx), %edx	# *_403, D.6281
	addl	$15000000, %edx	#, D.6281
	movl	%edx, (%rax)	# D.6281, *_400
.L41:
	.loc 1 199 0
	addl	$1, -24(%rbp)	#, i
.L27:
	.loc 1 199 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp848
	cmpl	-60(%rbp), %eax	# num_moves, tmp848
	jl	.L43	#,
.L1:
	.loc 1 292 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	order_moves, .-order_moves
	.globl	perft
	.type	perft, @function
perft:
.LFB3:
	.loc 1 294 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12320, %rsp	#,
	movl	%edi, -12308(%rbp)	# depth, depth
	.loc 1 300 0
	movl	$0, -12296(%rbp)	#, num_moves
	.loc 1 303 0
	cmpl	$0, -12308(%rbp)	#, depth
	jne	.L45	#,
	.loc 1 304 0
	movl	raw_nodes(%rip), %eax	# raw_nodes, raw_nodes.43
	addl	$1, %eax	#, raw_nodes.44
	movl	%eax, raw_nodes(%rip)	# raw_nodes.44, raw_nodes
	jmp	.L44	#
.L45:
	.loc 1 309 0
	leaq	-12288(%rbp), %rax	#, tmp64
	movq	%rax, %rdi	# tmp64,
	call	gen	#
	.loc 1 310 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp65
	movl	%eax, -12296(%rbp)	# tmp65, num_moves
	.loc 1 312 0
	call	in_check	#
	movl	%eax, -12292(%rbp)	# D.6285, ic
	.loc 1 315 0
	movl	$0, -12300(%rbp)	#, i
	jmp	.L47	#
.L49:
	.loc 1 316 0
	movl	-12300(%rbp), %edx	# i, tmp66
	leaq	-12288(%rbp), %rax	#, tmp67
	movl	%edx, %esi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	make	#
	.loc 1 319 0
	movl	-12292(%rbp), %edx	# ic, tmp68
	movl	-12300(%rbp), %ecx	# i, tmp69
	leaq	-12288(%rbp), %rax	#, tmp70
	movl	%ecx, %esi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	check_legal	#
	testl	%eax, %eax	# D.6285
	je	.L48	#,
	.loc 1 322 0
	movl	-12308(%rbp), %eax	# depth, tmp71
	subl	$1, %eax	#, D.6286
	movl	%eax, %edi	# D.6286,
	call	perft	#
.L48:
	.loc 1 326 0
	movl	-12300(%rbp), %edx	# i, tmp72
	leaq	-12288(%rbp), %rax	#, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	unmake	#
	.loc 1 315 0
	addl	$1, -12300(%rbp)	#, i
.L47:
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	-12300(%rbp), %eax	# i, tmp74
	cmpl	-12296(%rbp), %eax	# num_moves, tmp74
	jl	.L49	#,
.L44:
	.loc 1 330 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	perft, .-perft
	.section	.rodata
	.align 8
.LC0:
	.string	"Extended from %d to %d, time left %d\n"
	.text
	.globl	qsearch
	.type	qsearch, @function
qsearch:
.LFB4:
	.loc 1 333 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16472, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -16468(%rbp)	# alpha, alpha
	movl	%esi, -16472(%rbp)	# beta, beta
	movl	%edx, -16476(%rbp)	# depth, depth
	.loc 1 340 0
	movl	$-1000000, -16436(%rbp)	#, score
	.loc 1 343 0
	movl	$1, -16432(%rbp)	#, no_moves
	.loc 1 349 0
	movl	ply(%rip), %eax	# ply, ply.45
	movl	ply(%rip), %edx	# ply, ply.46
	cltq
	movl	%edx, pv_length(,%rax,4)	# ply.46, pv_length
	.loc 1 352 0
	movl	nodes(%rip), %eax	# nodes, nodes.47
	movzwl	%ax, %eax	# nodes.47, D.6287
	testl	%eax, %eax	# D.6287
	jne	.L51	#,
	.loc 1 354 0
	call	interrupt	#
	testl	%eax, %eax	# D.6287
	je	.L52	#,
	.loc 1 356 0
	movl	$1, time_exit(%rip)	#, time_exit
	.loc 1 357 0
	movl	$0, %eax	#, D.6287
	jmp	.L78	#
.L52:
	.loc 1 359 0
	movq	start_time(%rip), %rbx	# start_time, start_time.48
	call	rtime	#
	movq	%rbx, %rsi	# start_time.48,
	movq	%rax, %rdi	# D.6288,
	call	rdifftime	#
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.49
	cmpl	%edx, %eax	# time_for_move.49, D.6287
	jl	.L51	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.50
	cmpl	$1, %eax	#, i_depth.50
	jle	.L51	#,
	.loc 1 361 0 is_stmt 1
	movl	failed(%rip), %eax	# failed, failed.51
	cmpl	$1, %eax	#, failed.51
	jne	.L54	#,
	.loc 1 361 0 is_stmt 0 discriminator 1
	movl	extendedtime(%rip), %eax	# extendedtime, extendedtime.52
	testl	%eax, %eax	# extendedtime.52
	jne	.L54	#,
	.loc 1 362 0 is_stmt 1
	movl	fixed_time(%rip), %eax	# fixed_time, fixed_time.53
	testl	%eax, %eax	# fixed_time.53
	jne	.L54	#,
	.loc 1 363 0
	movl	go_fast(%rip), %eax	# go_fast, go_fast.54
	testl	%eax, %eax	# go_fast.54
	jne	.L54	#,
	.loc 1 364 0
	movl	Variant(%rip), %eax	# Variant, Variant.55
	cmpl	$1, %eax	#, Variant.55
	je	.L54	#,
	.loc 1 365 0
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.56
	sall	$2, %eax	#, D.6287
	movl	$1000, %edx	#, tmp124
	cmpl	$1000, %eax	#, D.6287
	cmovge	%eax, %edx	# D.6287,, D.6287
	movl	time_left(%rip), %eax	# time_left, time_left.57
	cmpl	%eax, %edx	# time_left.57, D.6287
	jge	.L54	#,
	.loc 1 367 0
	movl	$1, extendedtime(%rip)	#, extendedtime
	.loc 1 368 0
	movl	time_for_move(%rip), %eax	# time_for_move, tmp125
	movl	%eax, -16428(%rbp)	# tmp125, oldtime
	.loc 1 369 0
	call	allocate_time	#
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.58
	addl	%edx, %eax	# time_for_move.58, time_for_move.59
	movl	%eax, time_for_move(%rip)	# time_for_move.59, time_for_move
	.loc 1 370 0
	movl	time_left(%rip), %ecx	# time_left, time_left.60
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.61
	movl	-16428(%rbp), %eax	# oldtime, tmp126
	movl	%eax, %esi	# tmp126,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L51	#
.L54:
	.loc 1 376 0
	movl	$1, time_exit(%rip)	#, time_exit
	.loc 1 377 0
	movl	$0, %eax	#, D.6287
	jmp	.L78	#
.L51:
	.loc 1 383 0
	cmpl	$0, -16476(%rbp)	#, depth
	jle	.L55	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.62
	cmpl	$299, %eax	#, ply.62
	jle	.L56	#,
.L55:
	.loc 1 385 0 is_stmt 1
	movl	-16472(%rbp), %edx	# beta, tmp127
	movl	-16468(%rbp), %eax	# alpha, tmp128
	movl	%edx, %esi	# tmp127,
	movl	%eax, %edi	# tmp128,
	call	eval	#
	movl	%eax, -16436(%rbp)	# tmp129, score
	.loc 1 386 0
	movl	-16436(%rbp), %eax	# score, D.6287
	jmp	.L78	#
.L56:
	.loc 1 389 0
	movl	qnodes(%rip), %eax	# qnodes, qnodes.63
	addl	$1, %eax	#, qnodes.64
	movl	%eax, qnodes(%rip)	# qnodes.64, qnodes
	.loc 1 390 0
	movl	nodes(%rip), %eax	# nodes, nodes.65
	addl	$1, %eax	#, nodes.66
	movl	%eax, nodes(%rip)	# nodes.66, nodes
	.loc 1 392 0
	movl	-16468(%rbp), %eax	# alpha, tmp130
	movl	%eax, -16424(%rbp)	# tmp130, originalalpha
	.loc 1 394 0
	leaq	-16456(%rbp), %rdx	#, tmp131
	leaq	-16452(%rbp), %rax	#, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	QProbeTT	#
	cmpl	$4, %eax	#, D.6287
	ja	.L57	#,
	movl	%eax, %eax	# D.6287, tmp133
	movq	.L59(,%rax,8), %rax	#, tmp134
	jmp	*%rax	# tmp134
	.section	.rodata
	.align 8
	.align 4
.L59:
	.quad	.L79
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.text
.L62:
	.loc 1 397 0
	movl	-16452(%rbp), %eax	# bound, D.6287
	jmp	.L78	#
.L60:
	.loc 1 400 0
	movl	-16452(%rbp), %eax	# bound, bound.67
	cmpl	-16468(%rbp), %eax	# alpha, bound.67
	jg	.L64	#,
	.loc 1 401 0
	movl	-16452(%rbp), %eax	# bound, D.6287
	jmp	.L78	#
.L64:
	.loc 1 402 0
	jmp	.L57	#
.L61:
	.loc 1 404 0
	movl	-16452(%rbp), %eax	# bound, bound.68
	cmpl	-16472(%rbp), %eax	# beta, bound.68
	jl	.L65	#,
	.loc 1 405 0
	movl	-16452(%rbp), %eax	# bound, D.6287
	jmp	.L78	#
.L65:
	.loc 1 406 0
	jmp	.L57	#
.L63:
	.loc 1 410 0
	movl	$-1, -16456(%rbp)	#, best
	.loc 1 411 0
	jmp	.L57	#
.L79:
	.loc 1 408 0
	nop
.L57:
	.loc 1 414 0
	movl	-16472(%rbp), %edx	# beta, tmp135
	movl	-16468(%rbp), %eax	# alpha, tmp136
	movl	%edx, %esi	# tmp135,
	movl	%eax, %edi	# tmp136,
	call	eval	#
	movl	%eax, -16420(%rbp)	# tmp137, standpat
	.loc 1 416 0
	movl	-16420(%rbp), %eax	# standpat, tmp138
	cmpl	-16472(%rbp), %eax	# beta, tmp138
	jl	.L66	#,
	.loc 1 418 0
	movl	-16472(%rbp), %edx	# beta, tmp139
	movl	-16424(%rbp), %esi	# originalalpha, tmp140
	movl	-16420(%rbp), %eax	# standpat, tmp141
	movl	$500, %ecx	#,
	movl	%eax, %edi	# tmp141,
	call	QStoreTT	#
	.loc 1 419 0
	movl	-16420(%rbp), %eax	# standpat, D.6287
	jmp	.L78	#
.L66:
	.loc 1 421 0
	movl	-16420(%rbp), %eax	# standpat, tmp142
	cmpl	-16468(%rbp), %eax	# alpha, tmp142
	jle	.L67	#,
	.loc 1 422 0
	movl	-16420(%rbp), %eax	# standpat, tmp143
	movl	%eax, -16468(%rbp)	# tmp143, alpha
.L67:
	.loc 1 425 0
	movl	$-1, -16416(%rbp)	#, sbest
	.loc 1 426 0
	movl	$-1000000, -16440(%rbp)	#, best_score
	.loc 1 427 0
	movl	$0, -16412(%rbp)	#, num_moves
	.loc 1 430 0
	leaq	-12304(%rbp), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	gen	#
	.loc 1 431 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp145
	movl	%eax, -16412(%rbp)	# tmp145, num_moves
	.loc 1 433 0
	movl	kingcap(%rip), %eax	# kingcap, kingcap.69
	testl	%eax, %eax	# kingcap.69
	je	.L68	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movl	$50000, %eax	#, D.6287
	jmp	.L78	#
.L68:
	.loc 1 435 0 is_stmt 1
	movl	-16468(%rbp), %eax	# alpha, tmp146
	subl	$150, %eax	#, D.6287
	subl	-16420(%rbp), %eax	# standpat, tmp148
	movl	%eax, -16408(%rbp)	# tmp148, delta
	.loc 1 437 0
	movl	-16456(%rbp), %edi	# best, best.70
	movl	-16412(%rbp), %ecx	# num_moves, tmp149
	leaq	-14352(%rbp), %rdx	#, tmp150
	leaq	-16400(%rbp), %rsi	#, tmp151
	leaq	-12304(%rbp), %rax	#, tmp152
	movl	%edi, %r8d	# best.70,
	movq	%rax, %rdi	# tmp152,
	call	order_moves	#
	.loc 1 440 0
	jmp	.L69	#
.L77:
	.loc 1 442 0
	movl	$0, -16444(%rbp)	#, legal_move
	.loc 1 444 0
	movl	-16460(%rbp), %eax	# i, i.71
	movslq	%eax, %rdx	# i.71, tmp153
	movq	%rdx, %rax	# tmp153, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rdx, %rax	# tmp153, tmp154
	salq	$3, %rax	#, tmp155
	leaq	-16(%rbp), %rbx	#, tmp220
	addq	%rbx, %rax	# tmp220, tmp156
	subq	$12288, %rax	#, tmp157
	movl	12(%rax), %eax	# moves[i.71_66].promoted, D.6287
	testl	%eax, %eax	# D.6287
	jne	.L70	#,
	.loc 1 446 0
	movl	-16460(%rbp), %eax	# i, i.72
	cltq
	movl	-14352(%rbp,%rax,4), %eax	# see_values, tmp159
	movl	%eax, -16404(%rbp)	# tmp159, seev
	.loc 1 448 0
	movl	-16404(%rbp), %eax	# seev, tmp160
	cmpl	-16408(%rbp), %eax	# delta, tmp160
	jl	.L71	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	cmpl	$0, -16404(%rbp)	#, seev
	jns	.L70	#,
.L71:
	.loc 1 449 0 is_stmt 1
	jmp	.L69	#
.L70:
	.loc 1 452 0
	movl	-16460(%rbp), %edx	# i, i.73
	leaq	-12304(%rbp), %rax	#, tmp161
	movl	%edx, %esi	# i.73,
	movq	%rax, %rdi	# tmp161,
	call	make	#
	.loc 1 454 0
	movl	-16476(%rbp), %eax	# depth, tmp162
	leal	-1(%rax), %edx	#, D.6287
	movl	-16468(%rbp), %eax	# alpha, tmp163
	negl	%eax	# D.6287
	movl	%eax, %ecx	# D.6287, D.6287
	movl	-16472(%rbp), %eax	# beta, tmp164
	negl	%eax	# D.6287
	movl	%ecx, %esi	# D.6287,
	movl	%eax, %edi	# D.6287,
	call	qsearch	#
	negl	%eax	# tmp165
	movl	%eax, -16436(%rbp)	# tmp165, score
	.loc 1 456 0
	cmpl	$-50000, -16436(%rbp)	#, score
	je	.L72	#,
	.loc 1 458 0
	movl	$1, -16444(%rbp)	#, legal_move
	.loc 1 459 0
	movl	$0, -16432(%rbp)	#, no_moves
.L72:
	.loc 1 462 0
	movl	-16460(%rbp), %edx	# i, i.74
	leaq	-12304(%rbp), %rax	#, tmp166
	movl	%edx, %esi	# i.74,
	movq	%rax, %rdi	# tmp166,
	call	unmake	#
	.loc 1 464 0
	movl	-16436(%rbp), %eax	# score, tmp167
	cmpl	-16440(%rbp), %eax	# best_score, tmp167
	jle	.L73	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	cmpl	$0, -16444(%rbp)	#, legal_move
	je	.L73	#,
	.loc 1 466 0 is_stmt 1
	movl	-16436(%rbp), %eax	# score, tmp168
	movl	%eax, -16440(%rbp)	# tmp168, best_score
.L73:
	.loc 1 470 0
	movl	-16436(%rbp), %eax	# score, tmp169
	cmpl	-16468(%rbp), %eax	# alpha, tmp169
	jle	.L69	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	cmpl	$0, -16444(%rbp)	#, legal_move
	je	.L69	#,
	.loc 1 475 0 is_stmt 1
	movl	-16460(%rbp), %eax	# i, i.75
	movl	%eax, -16456(%rbp)	# i.75, best
	.loc 1 478 0
	movl	-16436(%rbp), %eax	# score, tmp170
	cmpl	-16472(%rbp), %eax	# beta, tmp170
	jl	.L74	#,
	.loc 1 480 0
	movl	-16460(%rbp), %ecx	# i, i.76
	movl	-16472(%rbp), %edx	# beta, tmp171
	movl	-16424(%rbp), %esi	# originalalpha, tmp172
	movl	-16436(%rbp), %eax	# score, tmp173
	movl	%eax, %edi	# tmp173,
	call	QStoreTT	#
	.loc 1 481 0
	movl	-16436(%rbp), %eax	# score, D.6287
	jmp	.L78	#
.L74:
	.loc 1 484 0
	movl	-16436(%rbp), %eax	# score, tmp174
	movl	%eax, -16468(%rbp)	# tmp174, alpha
	.loc 1 487 0
	movl	ply(%rip), %eax	# ply, ply.77
	movl	ply(%rip), %edx	# ply, ply.78
	movl	-16460(%rbp), %ecx	# i, i.79
	movslq	%edx, %rdx	# ply.78, tmp175
	movslq	%eax, %rsi	# ply.77, tmp176
	movq	%rdx, %rax	# tmp175, tmp177
	addq	%rax, %rax	# tmp177
	addq	%rdx, %rax	# tmp175, tmp177
	salq	$3, %rax	#, tmp178
	imulq	$7200, %rsi, %rdx	#, tmp176, tmp179
	addq	%rdx, %rax	# tmp179, tmp180
	leaq	pv(%rax), %rdx	#, tmp181
	movslq	%ecx, %rcx	# i.79, tmp182
	movq	%rcx, %rax	# tmp182, tmp183
	addq	%rax, %rax	# tmp183
	addq	%rcx, %rax	# tmp182, tmp183
	salq	$3, %rax	#, tmp184
	leaq	-16(%rbp), %rbx	#, tmp222
	addq	%rbx, %rax	# tmp222, tmp185
	subq	$12288, %rax	#, tmp186
	movq	(%rax), %rcx	# moves, tmp187
	movq	%rcx, (%rdx)	# tmp187, pv
	movq	8(%rax), %rcx	# moves, tmp188
	movq	%rcx, 8(%rdx)	# tmp188, pv
	movq	16(%rax), %rax	# moves, tmp189
	movq	%rax, 16(%rdx)	# tmp189, pv
	.loc 1 488 0
	movl	ply(%rip), %eax	# ply, ply.80
	addl	$1, %eax	#, tmp190
	movl	%eax, -16448(%rbp)	# tmp190, j
	jmp	.L75	#
.L76:
	.loc 1 489 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.81
	movl	ply(%rip), %edx	# ply, ply.82
	leal	1(%rdx), %esi	#, D.6287
	movl	-16448(%rbp), %edx	# j, tmp192
	movslq	%edx, %rdx	# tmp192, tmp191
	movslq	%eax, %rcx	# ply.81, tmp193
	movq	%rdx, %rax	# tmp191, tmp194
	addq	%rax, %rax	# tmp194
	addq	%rdx, %rax	# tmp191, tmp194
	salq	$3, %rax	#, tmp195
	imulq	$7200, %rcx, %rdx	#, tmp193, tmp196
	addq	%rdx, %rax	# tmp196, tmp197
	leaq	pv(%rax), %rdx	#, tmp198
	movl	-16448(%rbp), %eax	# j, tmp200
	movslq	%eax, %rcx	# tmp200, tmp199
	movslq	%esi, %rsi	# D.6287, tmp201
	movq	%rcx, %rax	# tmp199, tmp202
	addq	%rax, %rax	# tmp202
	addq	%rcx, %rax	# tmp199, tmp202
	salq	$3, %rax	#, tmp203
	imulq	$7200, %rsi, %rcx	#, tmp201, tmp204
	addq	%rcx, %rax	# tmp204, tmp205
	addq	$pv, %rax	#, tmp206
	movq	(%rax), %rcx	# pv, tmp207
	movq	%rcx, (%rdx)	# tmp207, pv
	movq	8(%rax), %rcx	# pv, tmp208
	movq	%rcx, 8(%rdx)	# tmp208, pv
	movq	16(%rax), %rax	# pv, tmp209
	movq	%rax, 16(%rdx)	# tmp209, pv
	.loc 1 488 0 discriminator 2
	addl	$1, -16448(%rbp)	#, j
.L75:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.83
	addl	$1, %eax	#, D.6287
	cltq
	movl	pv_length(,%rax,4), %eax	# pv_length, D.6287
	cmpl	-16448(%rbp), %eax	# j, D.6287
	jg	.L76	#,
	.loc 1 490 0 is_stmt 1
	movl	ply(%rip), %ecx	# ply, ply.84
	movl	ply(%rip), %eax	# ply, ply.85
	addl	$1, %eax	#, D.6287
	cltq
	movl	pv_length(,%rax,4), %edx	# pv_length, D.6287
	movslq	%ecx, %rax	# ply.84, tmp212
	movl	%edx, pv_length(,%rax,4)	# D.6287, pv_length
.L69:
	.loc 1 440 0 discriminator 1
	movl	-16412(%rbp), %edx	# num_moves, tmp213
	leaq	-16400(%rbp), %rcx	#, tmp214
	leaq	-16460(%rbp), %rax	#, tmp215
	movq	%rcx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	remove_one	#
	testl	%eax, %eax	# D.6289
	jne	.L77	#,
	.loc 1 499 0
	movl	-16456(%rbp), %ecx	# best, best.86
	movl	-16472(%rbp), %edx	# beta, tmp216
	movl	-16424(%rbp), %esi	# originalalpha, tmp217
	movl	-16468(%rbp), %eax	# alpha, tmp218
	movl	%eax, %edi	# tmp218,
	call	QStoreTT	#
	.loc 1 500 0
	movl	-16468(%rbp), %eax	# alpha, D.6287
.L78:
	.loc 1 502 0
	addq	$16472, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	qsearch, .-qsearch
	.globl	remove_one
	.type	remove_one, @function
remove_one:
.LFB5:
	.loc 1 504 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# marker, marker
	movq	%rsi, -32(%rbp)	# move_ordering, move_ordering
	movl	%edx, -36(%rbp)	# num_moves, num_moves
	.loc 1 510 0
	movl	$-1000000, -4(%rbp)	#, best
	.loc 1 512 0
	movq	-24(%rbp), %rax	# marker, tmp73
	movl	$-1000000, (%rax)	#, *marker_6(D)
	.loc 1 514 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L81	#
.L83:
	.loc 1 515 0
	movl	-8(%rbp), %eax	# i, tmp74
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6292
	movq	-32(%rbp), %rax	# move_ordering, tmp75
	addq	%rdx, %rax	# D.6292, D.6293
	movl	(%rax), %eax	# *_12, D.6294
	cmpl	-4(%rbp), %eax	# best, D.6294
	jle	.L82	#,
	.loc 1 516 0
	movq	-24(%rbp), %rax	# marker, tmp76
	movl	-8(%rbp), %edx	# i, tmp77
	movl	%edx, (%rax)	# tmp77, *marker_6(D)
	.loc 1 517 0
	movl	-8(%rbp), %eax	# i, tmp78
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6292
	movq	-32(%rbp), %rax	# move_ordering, tmp79
	addq	%rdx, %rax	# D.6292, D.6293
	movl	(%rax), %eax	# *_16, tmp80
	movl	%eax, -4(%rbp)	# tmp80, best
.L82:
	.loc 1 514 0
	addl	$1, -8(%rbp)	#, i
.L81:
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp81
	cmpl	-36(%rbp), %eax	# num_moves, tmp81
	jl	.L83	#,
	.loc 1 521 0 is_stmt 1
	movq	-24(%rbp), %rax	# marker, tmp82
	movl	(%rax), %eax	# *marker_6(D), D.6294
	cmpl	$-999999, %eax	#, D.6294
	jl	.L84	#,
	.loc 1 522 0
	movq	-24(%rbp), %rax	# marker, tmp83
	movl	(%rax), %eax	# *marker_6(D), D.6294
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6292
	movq	-32(%rbp), %rax	# move_ordering, tmp84
	addq	%rdx, %rax	# D.6292, D.6293
	movl	$-1000000, (%rax)	#, *_23
	.loc 1 523 0
	movl	$1, %eax	#, D.6291
	jmp	.L85	#
.L84:
	.loc 1 526 0
	movl	$0, %eax	#, D.6291
.L85:
	.loc 1 529 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	remove_one, .-remove_one
	.globl	search
	.type	search, @function
search:
.LFB6:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16552, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -16548(%rbp)	# alpha, alpha
	movl	%esi, -16552(%rbp)	# beta, beta
	movl	%edx, -16556(%rbp)	# depth, depth
	movl	%ecx, -16560(%rbp)	# is_null, is_null
	.loc 1 537 0
	movl	$-1000000, -16504(%rbp)	#, score
	.loc 1 551 0
	movl	nodes(%rip), %eax	# nodes, nodes.87
	addl	$1, %eax	#, nodes.88
	movl	%eax, nodes(%rip)	# nodes.88, nodes
	.loc 1 554 0
	movl	nodes(%rip), %eax	# nodes, nodes.89
	movzwl	%ax, %eax	# nodes.89, D.6295
	testl	%eax, %eax	# D.6295
	jne	.L87	#,
	.loc 1 555 0
	call	interrupt	#
	testl	%eax, %eax	# D.6295
	je	.L88	#,
	.loc 1 557 0
	movl	$1, time_exit(%rip)	#, time_exit
	.loc 1 558 0
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L88:
	.loc 1 560 0
	movq	start_time(%rip), %rbx	# start_time, start_time.90
	call	rtime	#
	movq	%rbx, %rsi	# start_time.90,
	movq	%rax, %rdi	# D.6296,
	call	rdifftime	#
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.91
	cmpl	%edx, %eax	# time_for_move.91, D.6295
	jl	.L87	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.92
	cmpl	$1, %eax	#, i_depth.92
	jle	.L87	#,
	.loc 1 562 0 is_stmt 1
	movl	failed(%rip), %eax	# failed, failed.93
	cmpl	$1, %eax	#, failed.93
	jne	.L90	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movl	extendedtime(%rip), %eax	# extendedtime, extendedtime.94
	testl	%eax, %eax	# extendedtime.94
	jne	.L90	#,
	.loc 1 563 0 is_stmt 1
	movl	fixed_time(%rip), %eax	# fixed_time, fixed_time.95
	testl	%eax, %eax	# fixed_time.95
	jne	.L90	#,
	.loc 1 564 0
	movl	go_fast(%rip), %eax	# go_fast, go_fast.96
	testl	%eax, %eax	# go_fast.96
	jne	.L90	#,
	.loc 1 565 0
	movl	Variant(%rip), %eax	# Variant, Variant.97
	cmpl	$1, %eax	#, Variant.97
	je	.L90	#,
	.loc 1 566 0
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.98
	sall	$2, %eax	#, D.6295
	movl	$1000, %edx	#, tmp464
	cmpl	$1000, %eax	#, D.6295
	cmovge	%eax, %edx	# D.6295,, D.6295
	movl	time_left(%rip), %eax	# time_left, time_left.99
	cmpl	%eax, %edx	# time_left.99, D.6295
	jge	.L90	#,
	.loc 1 568 0
	movl	$1, extendedtime(%rip)	#, extendedtime
	.loc 1 569 0
	movl	time_for_move(%rip), %eax	# time_for_move, tmp465
	movl	%eax, -16460(%rbp)	# tmp465, oldtime
	.loc 1 570 0
	call	allocate_time	#
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.100
	addl	%edx, %eax	# time_for_move.100, time_for_move.101
	movl	%eax, time_for_move(%rip)	# time_for_move.101, time_for_move
	.loc 1 571 0
	movl	time_left(%rip), %ecx	# time_left, time_left.102
	movl	time_for_move(%rip), %edx	# time_for_move, time_for_move.103
	movl	-16460(%rbp), %eax	# oldtime, tmp466
	movl	%eax, %esi	# tmp466,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L87	#
.L90:
	.loc 1 577 0
	movl	$1, time_exit(%rip)	#, time_exit
	.loc 1 578 0
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L87:
	.loc 1 583 0
	movl	-16548(%rbp), %eax	# alpha, tmp467
	movl	%eax, -16456(%rbp)	# tmp467, originalalpha
	.loc 1 584 0
	movl	$-1000000, -16476(%rbp)	#, fmax
	.loc 1 586 0
	movl	$0, -16524(%rbp)	#, threat
	.loc 1 587 0
	movl	$0, -16480(%rbp)	#, extend
	.loc 1 589 0
	movl	ply(%rip), %eax	# ply, ply.104
	movl	ply(%rip), %edx	# ply, ply.105
	cltq
	movl	%edx, pv_length(,%rax,4)	# ply.105, pv_length
	.loc 1 591 0
	call	is_draw	#
	testl	%eax, %eax	# D.6297
	je	.L91	#,
	.loc 1 593 0
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L91:
	.loc 1 596 0
	movl	ply(%rip), %eax	# ply, ply.106
	cltq
	movl	checks(,%rax,4), %eax	# checks, tmp470
	movl	%eax, -16452(%rbp)	# tmp470, incheck
	.loc 1 597 0
	movl	ply(%rip), %eax	# ply, ply.107
	cltq
	movl	$0, singular(,%rax,4)	#, singular
	.loc 1 598 0
	movl	ply(%rip), %eax	# ply, ply.108
	cltq
	movl	$0, recaps(,%rax,4)	#, recaps
	.loc 1 601 0
	movl	ply(%rip), %eax	# ply, ply.109
	cmpl	$299, %eax	#, ply.109
	jg	.L92	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	cmpl	$0, -16452(%rbp)	#, incheck
	je	.L92	#,
	movl	i_depth(%rip), %eax	# i_depth, i_depth.110
	leal	(%rax,%rax), %edx	#, D.6295
	movl	ply(%rip), %eax	# ply, ply.111
	cmpl	%eax, %edx	# ply.111, D.6295
	jge	.L93	#,
	cmpl	$0, -16556(%rbp)	#, depth
	jne	.L92	#,
.L93:
	.loc 1 603 0 is_stmt 1
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 604 0
	movl	ext_check(%rip), %eax	# ext_check, ext_check.112
	addl	$1, %eax	#, ext_check.113
	movl	%eax, ext_check(%rip)	# ext_check.113, ext_check
	.loc 1 605 0
	addl	$1, -16480(%rbp)	#, extend
	jmp	.L94	#
.L92:
	.loc 1 607 0
	movl	ply(%rip), %eax	# ply, ply.114
	cmpl	$299, %eax	#, ply.114
	jg	.L94	#,
	.loc 1 607 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.115
	cmpl	$2, %eax	#, ply.115
	jle	.L94	#,
	movl	i_depth(%rip), %eax	# i_depth, i_depth.116
	leal	(%rax,%rax), %edx	#, D.6295
	movl	ply(%rip), %eax	# ply, ply.117
	cmpl	%eax, %edx	# ply.117, D.6295
	jl	.L94	#,
	.loc 1 608 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.118
	subl	$2, %eax	#, D.6295
	cltq
	movl	recaps(,%rax,4), %eax	# recaps, D.6297
	testl	%eax, %eax	# D.6297
	jne	.L94	#,
	.loc 1 609 0
	movl	cfg_recap(%rip), %eax	# cfg_recap, cfg_recap.119
	testl	%eax, %eax	# cfg_recap.119
	je	.L94	#,
	.loc 1 610 0
	movl	ply(%rip), %eax	# ply, ply.120
	subl	$1, %eax	#, D.6295
	movslq	%eax, %rdx	# D.6295, tmp474
	movq	%rdx, %rax	# tmp474, tmp475
	addq	%rax, %rax	# tmp475
	addq	%rdx, %rax	# tmp474, tmp475
	salq	$3, %rax	#, tmp476
	addq	$path+8, %rax	#, tmp477
	movl	(%rax), %eax	# path[_121].captured, D.6295
	cmpl	$13, %eax	#, D.6295
	je	.L94	#,
	.loc 1 611 0
	movl	ply(%rip), %eax	# ply, ply.121
	subl	$1, %eax	#, D.6295
	movslq	%eax, %rdx	# D.6295, tmp478
	movq	%rdx, %rax	# tmp478, tmp479
	addq	%rax, %rax	# tmp479
	addq	%rdx, %rax	# tmp478, tmp479
	salq	$3, %rax	#, tmp480
	addq	$path+8, %rax	#, tmp481
	movl	(%rax), %eax	# path[_124].captured, D.6295
	cltq
	movl	rc_index.4006(,%rax,4), %ecx	# rc_index, D.6295
	movl	ply(%rip), %eax	# ply, ply.122
	subl	$2, %eax	#, D.6295
	movslq	%eax, %rdx	# D.6295, tmp483
	movq	%rdx, %rax	# tmp483, tmp484
	addq	%rax, %rax	# tmp484
	addq	%rdx, %rax	# tmp483, tmp484
	salq	$3, %rax	#, tmp485
	addq	$path+8, %rax	#, tmp486
	movl	(%rax), %eax	# path[_128].captured, D.6295
	cltq
	movl	rc_index.4006(,%rax,4), %eax	# rc_index, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L94	#,
	.loc 1 613 0
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 614 0
	movl	ext_recap(%rip), %eax	# ext_recap, ext_recap.123
	addl	$1, %eax	#, ext_recap.124
	movl	%eax, ext_recap(%rip)	# ext_recap.124, ext_recap
	.loc 1 615 0
	addl	$1, -16480(%rbp)	#, extend
	.loc 1 616 0
	movl	ply(%rip), %eax	# ply, ply.125
	cltq
	movl	$1, recaps(,%rax,4)	#, recaps
.L94:
	.loc 1 620 0
	cmpl	$0, -16556(%rbp)	#, depth
	jle	.L95	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.126
	cmpl	$299, %eax	#, ply.126
	jle	.L96	#,
.L95:
	.loc 1 622 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.127
	cmpl	$3, %eax	#, Variant.127
	je	.L97	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.128
	cmpl	$4, %eax	#, Variant.128
	je	.L97	#,
	.loc 1 624 0 is_stmt 1
	movl	$1, captures(%rip)	#, captures
	.loc 1 625 0
	movl	ply(%rip), %eax	# ply, ply.129
	movl	$300, %edx	#, tmp489
	subl	%eax, %edx	# ply.129, D.6295
	movl	-16552(%rbp), %ecx	# beta, tmp490
	movl	-16548(%rbp), %eax	# alpha, tmp491
	movl	%ecx, %esi	# tmp490,
	movl	%eax, %edi	# tmp491,
	call	qsearch	#
	movl	%eax, -16504(%rbp)	# tmp492, score
	.loc 1 626 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 627 0
	movl	-16504(%rbp), %eax	# score, D.6295
	jmp	.L196	#
.L97:
	.loc 1 631 0
	movl	Variant(%rip), %eax	# Variant, Variant.130
	cmpl	$3, %eax	#, Variant.130
	jne	.L98	#,
	.loc 1 633 0
	call	suicide_eval	#
	jmp	.L196	#
.L98:
	.loc 1 636 0
	movl	Variant(%rip), %eax	# Variant, Variant.131
	cmpl	$4, %eax	#, Variant.131
	jne	.L96	#,
	.loc 1 638 0
	call	losers_eval	#
	movl	%eax, -16532(%rbp)	# i.132, i
	.loc 1 640 0
	movl	-16532(%rbp), %eax	# i, i.133
	cltd
	xorl	%edx, %eax	# tmp493, D.6295
	subl	%edx, %eax	# tmp493, D.6295
	cmpl	$1000000, %eax	#, D.6295
	jne	.L99	#,
	.loc 1 642 0
	movl	-16532(%rbp), %eax	# i, i.135
	testl	%eax, %eax	# i.135
	jle	.L100	#,
	.loc 1 642 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.136
	movl	$1000000, %edx	#, tmp494
	subl	%eax, %edx	# ply.136, iftmp.134
	movl	%edx, %eax	# iftmp.134, iftmp.134
	jmp	.L101	#
.L100:
	.loc 1 642 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.137
	subl	$1000000, %eax	#, iftmp.134
.L101:
	.loc 1 642 0 discriminator 3
	jmp	.L196	#
.L99:
	.loc 1 646 0 is_stmt 1
	movl	-16532(%rbp), %eax	# i, D.6295
	jmp	.L196	#
.L96:
	.loc 1 652 0
	movl	$0, -16512(%rbp)	#, num_moves
	.loc 1 653 0
	movl	$1, -16500(%rbp)	#, no_moves
	.loc 1 655 0
	movl	-16556(%rbp), %r8d	# depth, tmp495
	leaq	-16520(%rbp), %rdi	#, tmp496
	leaq	-16524(%rbp), %rcx	#, tmp497
	leaq	-16516(%rbp), %rdx	#, tmp498
	movl	-16552(%rbp), %esi	# beta, tmp499
	leaq	-16528(%rbp), %rax	#, tmp500
	movl	%r8d, %r9d	# tmp495,
	movq	%rdi, %r8	# tmp496,
	movq	%rax, %rdi	# tmp500,
	call	ProbeTT	#
	cmpl	$4, %eax	#, D.6295
	ja	.L102	#,
	movl	%eax, %eax	# D.6295, tmp501
	movq	.L104(,%rax,8), %rax	#, tmp502
	jmp	*%rax	# tmp502
	.section	.rodata
	.align 8
	.align 4
.L104:
	.quad	.L198
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.quad	.L108
	.text
.L107:
	.loc 1 658 0
	movl	-16528(%rbp), %eax	# bound, D.6295
	jmp	.L196	#
.L105:
	.loc 1 661 0
	movl	-16528(%rbp), %eax	# bound, bound.138
	cmpl	-16548(%rbp), %eax	# alpha, bound.138
	jg	.L109	#,
	.loc 1 662 0
	movl	-16528(%rbp), %eax	# bound, D.6295
	jmp	.L196	#
.L109:
	.loc 1 663 0
	jmp	.L102	#
.L106:
	.loc 1 665 0
	movl	-16528(%rbp), %eax	# bound, bound.139
	cmpl	-16552(%rbp), %eax	# beta, bound.139
	jl	.L110	#,
	.loc 1 666 0
	movl	-16528(%rbp), %eax	# bound, D.6295
	jmp	.L196	#
.L110:
	.loc 1 667 0
	jmp	.L102	#
.L108:
	.loc 1 671 0
	movl	$-1, -16516(%rbp)	#, best
	.loc 1 672 0
	movl	$0, -16524(%rbp)	#, threat
	.loc 1 673 0
	jmp	.L102	#
.L198:
	.loc 1 669 0
	nop
.L102:
	.loc 1 676 0
	movl	-16516(%rbp), %eax	# best, best.140
	cmpl	$500, %eax	#, best.140
	jne	.L111	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	movl	$-1, -16516(%rbp)	#, best
.L111:
	.loc 1 678 0 is_stmt 1
	movl	$-1, -16492(%rbp)	#, sbest
	.loc 1 679 0
	movl	$-1000000, -16488(%rbp)	#, best_score
	.loc 1 681 0
	movl	ep_square(%rip), %eax	# ep_square, tmp503
	movl	%eax, -16448(%rbp)	# tmp503, old_ep
	.loc 1 683 0
	movl	$0, -16468(%rbp)	#, legalmoves
	.loc 1 685 0
	movl	Variant(%rip), %eax	# Variant, Variant.141
	cmpl	$4, %eax	#, Variant.141
	jne	.L112	#,
	.loc 1 687 0
	call	losers_eval	#
	movl	%eax, -16532(%rbp)	# i.142, i
	.loc 1 689 0
	movl	-16532(%rbp), %eax	# i, i.143
	cltd
	xorl	%edx, %eax	# tmp504, D.6295
	subl	%edx, %eax	# tmp504, D.6295
	cmpl	$1000000, %eax	#, D.6295
	jne	.L113	#,
	.loc 1 691 0
	movl	-16532(%rbp), %eax	# i, i.145
	testl	%eax, %eax	# i.145
	jle	.L114	#,
	.loc 1 691 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %edx	# i, i.146
	movl	ply(%rip), %eax	# ply, ply.147
	subl	%eax, %edx	# ply.147, iftmp.144
	movl	%edx, %eax	# iftmp.144, iftmp.144
	jmp	.L115	#
.L114:
	.loc 1 691 0 discriminator 2
	movl	-16532(%rbp), %edx	# i, i.148
	movl	ply(%rip), %eax	# ply, ply.149
	addl	%edx, %eax	# i.148, iftmp.144
.L115:
	.loc 1 691 0 discriminator 3
	jmp	.L196	#
.L113:
	.loc 1 694 0 is_stmt 1
	movl	$1, captures(%rip)	#, captures
	.loc 1 695 0
	leaq	-12304(%rbp), %rax	#, tmp505
	movq	%rax, %rdi	# tmp505,
	call	gen	#
	.loc 1 696 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp506
	movl	%eax, -16512(%rbp)	# tmp506, num_moves
	.loc 1 697 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 699 0
	cmpl	$0, -16512(%rbp)	#, num_moves
	je	.L116	#,
	.loc 1 701 0
	movl	$0, -16532(%rbp)	#, i
	jmp	.L117	#
.L119:
	.loc 1 703 0
	movl	-16532(%rbp), %edx	# i, i.150
	leaq	-12304(%rbp), %rax	#, tmp507
	movl	%edx, %esi	# i.150,
	movq	%rax, %rdi	# tmp507,
	call	make	#
	.loc 1 704 0
	movl	-16452(%rbp), %edx	# incheck, incheck.151
	movl	-16532(%rbp), %ecx	# i, i.152
	leaq	-12304(%rbp), %rax	#, tmp508
	movl	%ecx, %esi	# i.152,
	movq	%rax, %rdi	# tmp508,
	call	check_legal	#
	testl	%eax, %eax	# D.6297
	je	.L118	#,
	.loc 1 706 0
	addl	$1, -16468(%rbp)	#, legalmoves
.L118:
	.loc 1 708 0
	movl	-16532(%rbp), %edx	# i, i.153
	leaq	-12304(%rbp), %rax	#, tmp509
	movl	%edx, %esi	# i.153,
	movq	%rax, %rdi	# tmp509,
	call	unmake	#
	.loc 1 701 0
	movl	-16532(%rbp), %eax	# i, i.154
	addl	$1, %eax	#, i.155
	movl	%eax, -16532(%rbp)	# i.155, i
.L117:
	.loc 1 701 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.156
	cmpl	-16512(%rbp), %eax	# num_moves, i.156
	jl	.L119	#,
.L116:
	.loc 1 711 0 is_stmt 1
	cmpl	$0, -16468(%rbp)	#, legalmoves
	jne	.L120	#,
	.loc 1 713 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 714 0
	leaq	-12304(%rbp), %rax	#, tmp510
	movq	%rax, %rdi	# tmp510,
	call	gen	#
	.loc 1 715 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp511
	movl	%eax, -16512(%rbp)	# tmp511, num_moves
.L120:
	.loc 1 718 0
	movl	$0, -16468(%rbp)	#, legalmoves
.L112:
	.loc 1 721 0
	cmpl	$0, -16560(%rbp)	#, is_null
	jne	.L121	#,
	.loc 1 722 0
	movl	phase(%rip), %eax	# phase, phase.157
	cmpl	$2, %eax	#, phase.157
	jne	.L122	#,
	.loc 1 722 0 is_stmt 0 discriminator 1
	movl	phase(%rip), %eax	# phase, phase.158
	cmpl	$2, %eax	#, phase.158
	jne	.L121	#,
	cmpl	$6, -16556(%rbp)	#, depth
	jg	.L121	#,
.L122:
	.loc 1 723 0 is_stmt 1
	cmpl	$0, -16452(%rbp)	#, incheck
	jne	.L121	#,
	.loc 1 723 0 is_stmt 0 discriminator 1
	movl	-16520(%rbp), %eax	# donull, donull.159
	testl	%eax, %eax	# donull.159
	je	.L121	#,
	movl	searching_pv(%rip), %eax	# searching_pv, searching_pv.160
	testl	%eax, %eax	# searching_pv.160
	jne	.L121	#,
	.loc 1 724 0 is_stmt 1
	movl	-16524(%rbp), %eax	# threat, threat.161
	testl	%eax, %eax	# threat.161
	jne	.L121	#,
	.loc 1 725 0
	movl	Variant(%rip), %eax	# Variant, Variant.162
	cmpl	$3, %eax	#, Variant.162
	je	.L123	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.163
	cmpl	$4, %eax	#, Variant.163
	jne	.L124	#,
.L123:
	.loc 1 726 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.164
	cmpl	$4, %eax	#, Variant.164
	jne	.L121	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movl	-12296(%rbp), %eax	# moves[0].captured, D.6295
	cmpl	$13, %eax	#, D.6295
	jne	.L121	#,
.L124:
	.loc 1 729 0 is_stmt 1
	movl	$0, ep_square(%rip)	#, ep_square
	.loc 1 730 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.165
	xorl	$1, %eax	#, white_to_move.166
	movl	%eax, white_to_move(%rip)	# white_to_move.166, white_to_move
	.loc 1 731 0
	movl	ply(%rip), %eax	# ply, ply.167
	addl	$1, %eax	#, ply.168
	movl	%eax, ply(%rip)	# ply.168, ply
	.loc 1 732 0
	movl	fifty(%rip), %eax	# fifty, fifty.169
	addl	$1, %eax	#, fifty.170
	movl	%eax, fifty(%rip)	# fifty.170, fifty
	.loc 1 733 0
	movl	hash(%rip), %eax	# hash, hash.171
	xorl	$-559038737, %eax	#, hash.172
	movl	%eax, hash(%rip)	# hash.172, hash
	.loc 1 736 0
	movl	Variant(%rip), %eax	# Variant, Variant.173
	cmpl	$2, %eax	#, Variant.173
	je	.L125	#,
	.loc 1 736 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.174
	cmpl	$4, %eax	#, Variant.174
	je	.L125	#,
	.loc 1 737 0 is_stmt 1
	cmpl	$3, -16556(%rbp)	#, depth
	jle	.L126	#,
	.loc 1 737 0 is_stmt 0 discriminator 1
	movl	-16556(%rbp), %eax	# depth, tmp512
	subl	$3, %eax	#, iftmp.175
	jmp	.L127	#
.L126:
	.loc 1 737 0 discriminator 2
	movl	-16556(%rbp), %eax	# depth, tmp513
	subl	$2, %eax	#, iftmp.175
.L127:
	.loc 1 737 0 discriminator 3
	movl	$1, %edx	#, tmp514
	movl	%edx, %esi	# tmp514, D.6295
	subl	-16552(%rbp), %esi	# beta, D.6295
	movl	-16552(%rbp), %edx	# beta, tmp515
	movl	%edx, %edi	# tmp515, D.6295
	negl	%edi	# D.6295
	movl	$1, %ecx	#,
	movl	%eax, %edx	# iftmp.175,
	call	search	#
	negl	%eax	# tmp516
	movl	%eax, -16504(%rbp)	# tmp516, score
	jmp	.L128	#
.L125:
	.loc 1 739 0 is_stmt 1
	movl	-16556(%rbp), %eax	# depth, tmp517
	leal	-4(%rax), %edx	#, D.6295
	movl	$1, %eax	#, tmp518
	subl	-16552(%rbp), %eax	# beta, D.6295
	movl	-16552(%rbp), %ecx	# beta, tmp519
	movl	%ecx, %edi	# tmp519, D.6295
	negl	%edi	# D.6295
	movl	$1, %ecx	#,
	movl	%eax, %esi	# D.6295,
	call	search	#
	negl	%eax	# tmp520
	movl	%eax, -16504(%rbp)	# tmp520, score
.L128:
	.loc 1 741 0
	movl	hash(%rip), %eax	# hash, hash.176
	xorl	$-559038737, %eax	#, hash.177
	movl	%eax, hash(%rip)	# hash.177, hash
	.loc 1 742 0
	movl	fifty(%rip), %eax	# fifty, fifty.178
	subl	$1, %eax	#, fifty.179
	movl	%eax, fifty(%rip)	# fifty.179, fifty
	.loc 1 743 0
	movl	ply(%rip), %eax	# ply, ply.180
	subl	$1, %eax	#, ply.181
	movl	%eax, ply(%rip)	# ply.181, ply
	.loc 1 744 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.182
	xorl	$1, %eax	#, white_to_move.183
	movl	%eax, white_to_move(%rip)	# white_to_move.183, white_to_move
	.loc 1 745 0
	movl	-16448(%rbp), %eax	# old_ep, tmp521
	movl	%eax, ep_square(%rip)	# tmp521, ep_square
	.loc 1 747 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.184
	testl	%eax, %eax	# time_exit.184
	je	.L129	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L129:
	.loc 1 749 0 is_stmt 1
	movl	NTries(%rip), %eax	# NTries, NTries.185
	addl	$1, %eax	#, NTries.186
	movl	%eax, NTries(%rip)	# NTries.186, NTries
	.loc 1 751 0
	movl	-16504(%rbp), %eax	# score, tmp522
	cmpl	-16552(%rbp), %eax	# beta, tmp522
	jl	.L130	#,
	.loc 1 754 0
	movl	NCuts(%rip), %eax	# NCuts, NCuts.187
	addl	$1, %eax	#, NCuts.188
	movl	%eax, NCuts(%rip)	# NCuts.188, NCuts
	.loc 1 756 0
	movl	-16556(%rbp), %ecx	# depth, tmp523
	movl	-16552(%rbp), %edx	# beta, tmp524
	movl	-16548(%rbp), %esi	# alpha, tmp525
	movl	-16504(%rbp), %eax	# score, tmp526
	movl	%ecx, %r9d	# tmp523,
	movl	$0, %r8d	#,
	movl	$500, %ecx	#,
	movl	%eax, %edi	# tmp526,
	call	StoreTT	#
	.loc 1 758 0
	movl	-16504(%rbp), %eax	# score, D.6295
	jmp	.L196	#
.L130:
	.loc 1 760 0
	cmpl	$-999900, -16504(%rbp)	#, score
	jge	.L131	#,
	.loc 1 762 0
	movl	$1, -16524(%rbp)	#, threat
	.loc 1 763 0
	movl	TExt(%rip), %eax	# TExt, TExt.189
	addl	$1, %eax	#, TExt.190
	movl	%eax, TExt(%rip)	# TExt.190, TExt
	.loc 1 764 0
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 765 0
	addl	$1, -16480(%rbp)	#, extend
	.loc 1 766 0
	movl	ext_onerep(%rip), %eax	# ext_onerep, ext_onerep.191
	addl	$1, %eax	#, ext_onerep.192
	movl	%eax, ext_onerep(%rip)	# ext_onerep.192, ext_onerep
	.loc 1 751 0
	jmp	.L132	#
.L131:
	jmp	.L132	#
.L121:
	.loc 1 769 0
	movl	-16524(%rbp), %eax	# threat, threat.193
	cmpl	$1, %eax	#, threat.193
	jne	.L132	#,
	.loc 1 771 0
	movl	TExt(%rip), %eax	# TExt, TExt.194
	addl	$1, %eax	#, TExt.195
	movl	%eax, TExt(%rip)	# TExt.195, TExt
	.loc 1 772 0
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 773 0
	addl	$1, -16480(%rbp)	#, extend
	.loc 1 774 0
	movl	ext_onerep(%rip), %eax	# ext_onerep, ext_onerep.196
	addl	$1, %eax	#, ext_onerep.197
	movl	%eax, ext_onerep(%rip)	# ext_onerep.197, ext_onerep
.L132:
	.loc 1 777 0
	movl	$-1000000, -16504(%rbp)	#, score
	.loc 1 779 0
	movl	Variant(%rip), %eax	# Variant, Variant.198
	cmpl	$4, %eax	#, Variant.198
	je	.L133	#,
	.loc 1 782 0
	leaq	-12304(%rbp), %rax	#, tmp527
	movq	%rax, %rdi	# tmp527,
	call	gen	#
	.loc 1 783 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp528
	movl	%eax, -16512(%rbp)	# tmp528, num_moves
.L133:
	.loc 1 787 0
	movl	cfg_onerep(%rip), %eax	# cfg_onerep, cfg_onerep.199
	testl	%eax, %eax	# cfg_onerep.199
	je	.L134	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	cmpl	$0, -16452(%rbp)	#, incheck
	je	.L134	#,
	.loc 1 789 0 is_stmt 1
	cmpl	$0, -16512(%rbp)	#, num_moves
	je	.L134	#,
	.loc 1 791 0
	movl	$0, -16532(%rbp)	#, i
	jmp	.L135	#
.L137:
	.loc 1 793 0
	movl	-16532(%rbp), %edx	# i, i.200
	leaq	-12304(%rbp), %rax	#, tmp529
	movl	%edx, %esi	# i.200,
	movq	%rax, %rdi	# tmp529,
	call	make	#
	.loc 1 794 0
	movl	-16452(%rbp), %edx	# incheck, incheck.201
	movl	-16532(%rbp), %ecx	# i, i.202
	leaq	-12304(%rbp), %rax	#, tmp530
	movl	%ecx, %esi	# i.202,
	movq	%rax, %rdi	# tmp530,
	call	check_legal	#
	testl	%eax, %eax	# D.6297
	je	.L136	#,
	.loc 1 796 0
	addl	$1, -16468(%rbp)	#, legalmoves
.L136:
	.loc 1 798 0
	movl	-16532(%rbp), %edx	# i, i.203
	leaq	-12304(%rbp), %rax	#, tmp531
	movl	%edx, %esi	# i.203,
	movq	%rax, %rdi	# tmp531,
	call	unmake	#
	.loc 1 791 0
	movl	-16532(%rbp), %eax	# i, i.204
	addl	$1, %eax	#, i.205
	movl	%eax, -16532(%rbp)	# i.205, i
.L135:
	.loc 1 791 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.206
	cmpl	-16512(%rbp), %eax	# num_moves, i.206
	jge	.L134	#,
	.loc 1 791 0 discriminator 2
	cmpl	$1, -16468(%rbp)	#, legalmoves
	jle	.L137	#,
.L134:
	.loc 1 803 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.207
	cmpl	$299, %eax	#, ply.207
	jg	.L138	#,
	.loc 1 805 0
	movl	Variant(%rip), %eax	# Variant, Variant.208
	cmpl	$3, %eax	#, Variant.208
	jne	.L139	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	cmpl	$1, -16512(%rbp)	#, num_moves
	jne	.L139	#,
	.loc 1 806 0 is_stmt 1
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 807 0
	movl	ext_onerep(%rip), %eax	# ext_onerep, ext_onerep.209
	addl	$1, %eax	#, ext_onerep.210
	movl	%eax, ext_onerep(%rip)	# ext_onerep.210, ext_onerep
	.loc 1 808 0
	movl	ply(%rip), %eax	# ply, ply.211
	cltq
	movl	$1, singular(,%rax,4)	#, singular
	jmp	.L138	#
.L139:
	.loc 1 810 0
	cmpl	$1, -16468(%rbp)	#, legalmoves
	jne	.L138	#,
	.loc 1 810 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.212
	subl	$2, %eax	#, D.6295
	cltq
	movl	singular(,%rax,4), %eax	# singular, D.6297
	testl	%eax, %eax	# D.6297
	jne	.L138	#,
	.loc 1 811 0 is_stmt 1
	addl	$1, -16556(%rbp)	#, depth
	.loc 1 812 0
	movl	ext_onerep(%rip), %eax	# ext_onerep, ext_onerep.213
	addl	$1, %eax	#, ext_onerep.214
	movl	%eax, ext_onerep(%rip)	# ext_onerep.214, ext_onerep
	.loc 1 813 0
	movl	ply(%rip), %eax	# ply, ply.215
	cltq
	movl	$1, singular(,%rax,4)	#, singular
.L138:
	.loc 1 817 0
	movl	$1, -16484(%rbp)	#, first
	.loc 1 818 0
	movl	$0, -16472(%rbp)	#, selective
	.loc 1 820 0
	movl	phase(%rip), %eax	# phase, phase.216
	cmpl	$2, %eax	#, phase.216
	je	.L140	#,
	.loc 1 820 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.217
	cmpl	$3, %eax	#, Variant.217
	je	.L140	#,
	movl	cfg_futprune(%rip), %eax	# cfg_futprune, cfg_futprune.218
	testl	%eax, %eax	# cfg_futprune.218
	je	.L140	#,
	.loc 1 823 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.220
	testl	%eax, %eax	# white_to_move.220
	jne	.L141	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.221
	movl	$900, %edx	#, tmp535
	subl	%eax, %edx	# Material.221, iftmp.219
	movl	%edx, %eax	# iftmp.219, iftmp.219
	jmp	.L142	#
.L141:
	.loc 1 823 0 discriminator 2
	movl	Material(%rip), %eax	# Material, Material.222
	addl	$900, %eax	#, iftmp.219
.L142:
	.loc 1 823 0 discriminator 3
	movl	%eax, -16444(%rbp)	# iftmp.219, fscore
	.loc 1 825 0 is_stmt 1 discriminator 3
	cmpl	$0, -16480(%rbp)	#, extend
	jne	.L143	#,
	.loc 1 825 0 is_stmt 0 discriminator 1
	cmpl	$3, -16556(%rbp)	#, depth
	jne	.L143	#,
	movl	-16444(%rbp), %eax	# fscore, tmp536
	cmpl	-16548(%rbp), %eax	# alpha, tmp536
	jg	.L143	#,
	.loc 1 826 0 is_stmt 1
	movl	$2, -16556(%rbp)	#, depth
.L143:
	.loc 1 828 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.224
	testl	%eax, %eax	# white_to_move.224
	jne	.L144	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.225
	movl	$500, %edx	#, tmp537
	subl	%eax, %edx	# Material.225, iftmp.223
	movl	%edx, %eax	# iftmp.223, iftmp.223
	jmp	.L145	#
.L144:
	.loc 1 828 0 discriminator 2
	movl	Material(%rip), %eax	# Material, Material.226
	addl	$500, %eax	#, iftmp.223
.L145:
	.loc 1 828 0 discriminator 3
	movl	%eax, -16444(%rbp)	# iftmp.223, fscore
	.loc 1 830 0 is_stmt 1 discriminator 3
	cmpl	$0, -16480(%rbp)	#, extend
	jne	.L146	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	cmpl	$2, -16556(%rbp)	#, depth
	jne	.L146	#,
	movl	-16444(%rbp), %eax	# fscore, tmp538
	cmpl	-16548(%rbp), %eax	# alpha, tmp538
	jg	.L146	#,
	.loc 1 832 0 is_stmt 1
	movl	$1, -16472(%rbp)	#, selective
	.loc 1 833 0
	movl	-16444(%rbp), %eax	# fscore, tmp539
	movl	%eax, -16476(%rbp)	# tmp539, fmax
	movl	-16476(%rbp), %eax	# fmax, tmp540
	movl	%eax, -16488(%rbp)	# tmp540, best_score
.L146:
	.loc 1 836 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.228
	testl	%eax, %eax	# white_to_move.228
	jne	.L147	#,
	.loc 1 836 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.229
	negl	%eax	# iftmp.227
	movl	%eax, %edx	# iftmp.227, iftmp.227
	jmp	.L148	#
.L147:
	.loc 1 836 0 discriminator 2
	movl	Material(%rip), %edx	# Material, iftmp.227
.L148:
	.loc 1 836 0 discriminator 3
	movl	Variant(%rip), %eax	# Variant, Variant.231
	cmpl	$2, %eax	#, Variant.231
	jne	.L149	#,
	.loc 1 836 0 discriminator 1
	movl	$150, %eax	#, iftmp.230
	jmp	.L150	#
.L149:
	.loc 1 836 0 discriminator 2
	movl	$200, %eax	#, iftmp.230
.L150:
	.loc 1 836 0 discriminator 3
	addl	%edx, %eax	# iftmp.227, tmp541
	movl	%eax, -16444(%rbp)	# tmp541, fscore
	.loc 1 838 0 is_stmt 1 discriminator 3
	cmpl	$0, -16480(%rbp)	#, extend
	jne	.L140	#,
	.loc 1 838 0 is_stmt 0 discriminator 1
	cmpl	$1, -16556(%rbp)	#, depth
	jne	.L140	#,
	movl	-16444(%rbp), %eax	# fscore, tmp542
	cmpl	-16548(%rbp), %eax	# alpha, tmp542
	jg	.L140	#,
	.loc 1 840 0 is_stmt 1
	movl	$1, -16472(%rbp)	#, selective
	.loc 1 841 0
	movl	-16444(%rbp), %eax	# fscore, tmp543
	movl	%eax, -16476(%rbp)	# tmp543, fmax
	movl	-16476(%rbp), %eax	# fmax, tmp544
	movl	%eax, -16488(%rbp)	# tmp544, best_score
.L140:
	.loc 1 845 0
	cmpl	$0, -16512(%rbp)	#, num_moves
	jle	.L151	#,
	.loc 1 847 0
	movl	-16516(%rbp), %edi	# best, best.232
	movl	-16512(%rbp), %ecx	# num_moves, tmp545
	leaq	-14352(%rbp), %rdx	#, tmp546
	leaq	-16400(%rbp), %rsi	#, tmp547
	leaq	-12304(%rbp), %rax	#, tmp548
	movl	%edi, %r8d	# best.232,
	movq	%rax, %rdi	# tmp548,
	call	order_moves	#
	.loc 1 850 0
	jmp	.L152	#
.L185:
	.loc 1 852 0
	movl	-16532(%rbp), %edx	# i, i.233
	leaq	-12304(%rbp), %rax	#, tmp549
	movl	%edx, %esi	# i.233,
	movq	%rax, %rdi	# tmp549,
	call	make	#
	.loc 1 854 0
	movl	$0, -16496(%rbp)	#, legal_move
	.loc 1 856 0
	movl	move_number(%rip), %edx	# move_number, move_number.234
	movl	ply(%rip), %eax	# ply, ply.235
	addl	%edx, %eax	# move_number.234, D.6295
	subl	$1, %eax	#, D.6295
	movl	hash(%rip), %edx	# hash, hash.236
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.236, hash_history
	.loc 1 857 0
	movl	ply(%rip), %eax	# ply, ply.237
	subl	$1, %eax	#, D.6295
	movl	-16532(%rbp), %ecx	# i, i.238
	movslq	%eax, %rdx	# D.6295, tmp551
	movq	%rdx, %rax	# tmp551, tmp552
	addq	%rax, %rax	# tmp552
	addq	%rdx, %rax	# tmp551, tmp552
	salq	$3, %rax	#, tmp553
	leaq	path(%rax), %rdx	#, tmp554
	movslq	%ecx, %rcx	# i.238, tmp555
	movq	%rcx, %rax	# tmp555, tmp556
	addq	%rax, %rax	# tmp556
	addq	%rcx, %rax	# tmp555, tmp556
	salq	$3, %rax	#, tmp557
	leaq	-16(%rbp), %rbx	#, tmp938
	addq	%rbx, %rax	# tmp938, tmp558
	subq	$12288, %rax	#, tmp559
	movq	(%rax), %rcx	# moves, tmp560
	movq	%rcx, (%rdx)	# tmp560, path
	movq	8(%rax), %rcx	# moves, tmp561
	movq	%rcx, 8(%rdx)	# tmp561, path
	movq	16(%rax), %rax	# moves, tmp562
	movq	%rax, 16(%rdx)	# tmp562, path
	.loc 1 859 0
	movl	$0, -16480(%rbp)	#, extend
	.loc 1 863 0
	movl	-16452(%rbp), %edx	# incheck, incheck.239
	movl	-16532(%rbp), %ecx	# i, i.240
	leaq	-12304(%rbp), %rax	#, tmp563
	movl	%ecx, %esi	# i.240,
	movq	%rax, %rdi	# tmp563,
	call	check_legal	#
	testl	%eax, %eax	# D.6297
	je	.L153	#,
	.loc 1 865 0
	movl	-16532(%rbp), %edx	# i, i.241
	leaq	-12304(%rbp), %rax	#, tmp564
	movl	%edx, %esi	# i.241,
	movq	%rax, %rdi	# tmp564,
	call	f_in_check	#
	movl	%eax, -16440(%rbp)	# D.6297, afterincheck
	.loc 1 866 0
	movl	ply(%rip), %eax	# ply, ply.242
	movl	-16440(%rbp), %edx	# afterincheck, afterincheck.243
	cltq
	movl	%edx, checks(,%rax,4)	# afterincheck.243, checks
	.loc 1 868 0
	cmpl	$0, -16440(%rbp)	#, afterincheck
	jne	.L154	#,
	.loc 1 868 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.244
	cmpl	$2, %eax	#, Variant.244
	je	.L155	#,
	.loc 1 869 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.245
	cmpl	$3, %eax	#, Variant.245
	je	.L155	#,
	.loc 1 870 0
	movl	Variant(%rip), %eax	# Variant, Variant.246
	cmpl	$4, %eax	#, Variant.246
	jne	.L154	#,
.L155:
	.loc 1 870 0 is_stmt 0 discriminator 1
	cmpl	$2, -16556(%rbp)	#, depth
	jg	.L154	#,
	.loc 1 871 0 is_stmt 1 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.247
	movslq	%eax, %rdx	# i.247, tmp566
	movq	%rdx, %rax	# tmp566, tmp567
	addq	%rax, %rax	# tmp567
	addq	%rdx, %rax	# tmp566, tmp567
	salq	$3, %rax	#, tmp568
	leaq	-16(%rbp), %rbx	#, tmp939
	addq	%rbx, %rax	# tmp939, tmp569
	subq	$12288, %rax	#, tmp570
	movl	4(%rax), %eax	# moves[i.247_335].target, D.6295
	cltq
	movl	board(,%rax,4), %eax	# board, D.6295
	.loc 1 870 0 discriminator 1
	cmpl	$1, %eax	#, D.6295
	jne	.L156	#,
	.loc 1 871 0
	movl	-16532(%rbp), %eax	# i, i.248
	movslq	%eax, %rdx	# i.248, tmp572
	movq	%rdx, %rax	# tmp572, tmp573
	addq	%rax, %rax	# tmp573
	addq	%rdx, %rax	# tmp572, tmp573
	salq	$3, %rax	#, tmp574
	leaq	-16(%rbp), %rbx	#, tmp940
	addq	%rbx, %rax	# tmp940, tmp575
	subq	$12288, %rax	#, tmp576
	movl	4(%rax), %eax	# moves[i.248_338].target, D.6295
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.6295
	cmpl	$5, %eax	#, D.6295
	jg	.L157	#,
.L156:
	.loc 1 872 0
	movl	-16532(%rbp), %eax	# i, i.249
	movslq	%eax, %rdx	# i.249, tmp578
	movq	%rdx, %rax	# tmp578, tmp579
	addq	%rax, %rax	# tmp579
	addq	%rdx, %rax	# tmp578, tmp579
	salq	$3, %rax	#, tmp580
	leaq	-16(%rbp), %rbx	#, tmp941
	addq	%rbx, %rax	# tmp941, tmp581
	subq	$12288, %rax	#, tmp582
	movl	4(%rax), %eax	# moves[i.249_341].target, D.6295
	cltq
	movl	board(,%rax,4), %eax	# board, D.6295
	cmpl	$2, %eax	#, D.6295
	jne	.L154	#,
	.loc 1 872 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.250
	movslq	%eax, %rdx	# i.250, tmp584
	movq	%rdx, %rax	# tmp584, tmp585
	addq	%rax, %rax	# tmp585
	addq	%rdx, %rax	# tmp584, tmp585
	salq	$3, %rax	#, tmp586
	leaq	-16(%rbp), %rbx	#, tmp942
	addq	%rbx, %rax	# tmp942, tmp587
	subq	$12288, %rax	#, tmp588
	movl	4(%rax), %eax	# moves[i.250_344].target, D.6295
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.6295
	cmpl	$3, %eax	#, D.6295
	jg	.L154	#,
.L157:
	.loc 1 874 0 is_stmt 1
	addl	$1, -16480(%rbp)	#, extend
.L154:
	.loc 1 877 0
	movl	$0, -16464(%rbp)	#, dropcut
	.loc 1 880 0
	movl	-16532(%rbp), %eax	# i, i.251
	movslq	%eax, %rdx	# i.251, tmp590
	movq	%rdx, %rax	# tmp590, tmp591
	addq	%rax, %rax	# tmp591
	addq	%rdx, %rax	# tmp590, tmp591
	salq	$3, %rax	#, tmp592
	leaq	-16(%rbp), %rbx	#, tmp943
	addq	%rbx, %rax	# tmp943, tmp593
	subq	$12288, %rax	#, tmp594
	movl	(%rax), %eax	# moves[i.251_349].from, D.6295
	testl	%eax, %eax	# D.6295
	jne	.L158	#,
	.loc 1 881 0
	cmpl	$1, -16556(%rbp)	#, depth
	jle	.L158	#,
	.loc 1 882 0
	cmpl	$0, -16440(%rbp)	#, afterincheck
	jne	.L158	#,
	.loc 1 883 0
	cmpl	$0, -16452(%rbp)	#, incheck
	jne	.L158	#,
	.loc 1 884 0
	movl	searching_pv(%rip), %eax	# searching_pv, searching_pv.252
	testl	%eax, %eax	# searching_pv.252
	jne	.L158	#,
	.loc 1 885 0
	movl	cfg_razordrop(%rip), %eax	# cfg_razordrop, cfg_razordrop.253
	testl	%eax, %eax	# cfg_razordrop.253
	je	.L158	#,
	.loc 1 887 0
	movl	razor_drop(%rip), %eax	# razor_drop, razor_drop.254
	addl	$1, %eax	#, razor_drop.255
	movl	%eax, razor_drop(%rip)	# razor_drop.255, razor_drop
	subl	$1, -16480(%rbp)	#, extend
	jmp	.L159	#
.L158:
	.loc 1 890 0
	movl	-16532(%rbp), %eax	# i, i.256
	movslq	%eax, %rdx	# i.256, tmp595
	movq	%rdx, %rax	# tmp595, tmp596
	addq	%rax, %rax	# tmp596
	addq	%rdx, %rax	# tmp595, tmp596
	salq	$3, %rax	#, tmp597
	leaq	-16(%rbp), %rbx	#, tmp944
	addq	%rbx, %rax	# tmp944, tmp598
	subq	$12288, %rax	#, tmp599
	movl	(%rax), %eax	# moves[i.256_356].from, D.6295
	testl	%eax, %eax	# D.6295
	jne	.L159	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	cmpl	$1, -16556(%rbp)	#, depth
	jne	.L159	#,
	cmpl	$0, -16452(%rbp)	#, incheck
	jne	.L159	#,
	movl	cfg_cutdrop(%rip), %eax	# cfg_cutdrop, cfg_cutdrop.257
	testl	%eax, %eax	# cfg_cutdrop.257
	je	.L159	#,
	.loc 1 892 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.258
	testl	%eax, %eax	# white_to_move.258
	je	.L160	#,
	.loc 1 894 0
	movl	-16532(%rbp), %eax	# i, i.259
	movslq	%eax, %rdx	# i.259, tmp600
	movq	%rdx, %rax	# tmp600, tmp601
	addq	%rax, %rax	# tmp601
	addq	%rdx, %rax	# tmp600, tmp601
	salq	$3, %rax	#, tmp602
	leaq	-16(%rbp), %rbx	#, tmp945
	addq	%rbx, %rax	# tmp945, tmp603
	subq	$12288, %rax	#, tmp604
	movl	4(%rax), %eax	# moves[i.259_360].target, D.6295
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.6295,
	call	calc_attackers	#
	movl	%eax, %ebx	#, D.6295
	.loc 1 895 0
	movl	-16532(%rbp), %eax	# i, i.260
	movslq	%eax, %rdx	# i.260, tmp605
	movq	%rdx, %rax	# tmp605, tmp606
	addq	%rax, %rax	# tmp606
	addq	%rdx, %rax	# tmp605, tmp606
	salq	$3, %rax	#, tmp607
	leaq	-16(%rbp), %rdi	#, tmp946
	addq	%rdi, %rax	# tmp946, tmp608
	subq	$12288, %rax	#, tmp609
	movl	4(%rax), %eax	# moves[i.260_363].target, D.6295
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6295,
	call	calc_attackers	#
	subl	%eax, %ebx	# D.6295, D.6295
	movl	%ebx, %eax	# D.6295, D.6295
	testl	%eax, %eax	# D.6295
	setg	%al	#, D.6298
	.loc 1 894 0
	movzbl	%al, %eax	# D.6298, tmp610
	movl	%eax, -16464(%rbp)	# tmp610, dropcut
	.loc 1 896 0
	cmpl	$0, -16464(%rbp)	#, dropcut
	je	.L159	#,
	.loc 1 896 0 is_stmt 0 discriminator 1
	movl	drop_cuts(%rip), %eax	# drop_cuts, drop_cuts.261
	addl	$1, %eax	#, drop_cuts.262
	movl	%eax, drop_cuts(%rip)	# drop_cuts.262, drop_cuts
	jmp	.L159	#
.L160:
	.loc 1 900 0 is_stmt 1
	movl	-16532(%rbp), %eax	# i, i.263
	movslq	%eax, %rdx	# i.263, tmp611
	movq	%rdx, %rax	# tmp611, tmp612
	addq	%rax, %rax	# tmp612
	addq	%rdx, %rax	# tmp611, tmp612
	salq	$3, %rax	#, tmp613
	leaq	-16(%rbp), %rbx	#, tmp948
	addq	%rbx, %rax	# tmp948, tmp614
	subq	$12288, %rax	#, tmp615
	movl	4(%rax), %eax	# moves[i.263_371].target, D.6295
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6295,
	call	calc_attackers	#
	movl	%eax, %ebx	#, D.6295
	.loc 1 901 0
	movl	-16532(%rbp), %eax	# i, i.264
	movslq	%eax, %rdx	# i.264, tmp616
	movq	%rdx, %rax	# tmp616, tmp617
	addq	%rax, %rax	# tmp617
	addq	%rdx, %rax	# tmp616, tmp617
	salq	$3, %rax	#, tmp618
	leaq	-16(%rbp), %rdi	#, tmp949
	addq	%rdi, %rax	# tmp949, tmp619
	subq	$12288, %rax	#, tmp620
	movl	4(%rax), %eax	# moves[i.264_374].target, D.6295
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.6295,
	call	calc_attackers	#
	subl	%eax, %ebx	# D.6295, D.6295
	movl	%ebx, %eax	# D.6295, D.6295
	testl	%eax, %eax	# D.6295
	setg	%al	#, D.6298
	.loc 1 900 0
	movzbl	%al, %eax	# D.6298, tmp621
	movl	%eax, -16464(%rbp)	# tmp621, dropcut
	.loc 1 902 0
	cmpl	$0, -16464(%rbp)	#, dropcut
	je	.L159	#,
	.loc 1 902 0 is_stmt 0 discriminator 1
	movl	drop_cuts(%rip), %eax	# drop_cuts, drop_cuts.265
	addl	$1, %eax	#, drop_cuts.266
	movl	%eax, drop_cuts(%rip)	# drop_cuts.266, drop_cuts
.L159:
	.loc 1 908 0 is_stmt 1
	cmpl	$0, -16464(%rbp)	#, dropcut
	jne	.L162	#,
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpl	$0, -16472(%rbp)	#, selective
	je	.L163	#,
	cmpl	$0, -16440(%rbp)	#, afterincheck
	jne	.L163	#,
	.loc 1 909 0 is_stmt 1
	movl	-16532(%rbp), %eax	# i, i.267
	movslq	%eax, %rdx	# i.267, tmp622
	movq	%rdx, %rax	# tmp622, tmp623
	addq	%rax, %rax	# tmp623
	addq	%rdx, %rax	# tmp622, tmp623
	salq	$3, %rax	#, tmp624
	leaq	-16(%rbp), %rbx	#, tmp951
	addq	%rbx, %rax	# tmp951, tmp625
	subq	$12288, %rax	#, tmp626
	movl	8(%rax), %eax	# moves[i.267_382].captured, D.6295
	cltq
	movl	material(,%rax,4), %eax	# material, D.6295
	cltd
	xorl	%edx, %eax	# tmp628, D.6295
	subl	%edx, %eax	# tmp628, D.6295
	.loc 1 910 0
	movl	Variant(%rip), %edx	# Variant, Variant.269
	cmpl	$2, %edx	#, Variant.269
	je	.L164	#,
	.loc 1 910 0 is_stmt 0 discriminator 2
	movl	Variant(%rip), %edx	# Variant, Variant.270
	cmpl	$4, %edx	#, Variant.270
	jne	.L165	#,
.L164:
	.loc 1 910 0 discriminator 1
	movl	$1, %edx	#, iftmp.268
	jmp	.L166	#
.L165:
	movl	$2, %edx	#, iftmp.268
.L166:
	.loc 1 909 0 is_stmt 1
	imull	%eax, %edx	# D.6295, D.6295
	movl	-16476(%rbp), %eax	# fmax, tmp629
	addl	%edx, %eax	# D.6295, D.6295
	cmpl	-16548(%rbp), %eax	# alpha, D.6295
	jg	.L163	#,
	.loc 1 912 0
	movl	-16532(%rbp), %eax	# i, i.271
	movslq	%eax, %rdx	# i.271, tmp630
	movq	%rdx, %rax	# tmp630, tmp631
	addq	%rax, %rax	# tmp631
	addq	%rdx, %rax	# tmp630, tmp631
	salq	$3, %rax	#, tmp632
	leaq	-16(%rbp), %rbx	#, tmp952
	addq	%rbx, %rax	# tmp952, tmp633
	subq	$12288, %rax	#, tmp634
	movl	12(%rax), %eax	# moves[i.271_392].promoted, D.6295
	testl	%eax, %eax	# D.6295
	je	.L162	#,
.L163:
	.loc 1 914 0
	cmpl	$1, -16484(%rbp)	#, first
	jne	.L167	#,
	.loc 1 916 0
	movl	-16480(%rbp), %eax	# extend, tmp635
	movl	-16556(%rbp), %edx	# depth, tmp636
	addl	%edx, %eax	# tmp636, D.6295
	leal	-1(%rax), %edx	#, D.6295
	movl	-16548(%rbp), %eax	# alpha, tmp637
	negl	%eax	# D.6295
	movl	%eax, %esi	# D.6295, D.6295
	movl	-16552(%rbp), %eax	# beta, tmp638
	negl	%eax	# D.6295
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6295,
	call	search	#
	negl	%eax	# tmp639
	movl	%eax, -16504(%rbp)	# tmp639, score
	.loc 1 917 0
	movl	FULL(%rip), %eax	# FULL, FULL.272
	addl	$1, %eax	#, FULL.273
	movl	%eax, FULL(%rip)	# FULL.273, FULL
	jmp	.L168	#
.L167:
	.loc 1 921 0
	movl	-16480(%rbp), %eax	# extend, tmp640
	movl	-16556(%rbp), %edx	# depth, tmp641
	addl	%edx, %eax	# tmp641, D.6295
	leal	-1(%rax), %edx	#, D.6295
	movl	-16548(%rbp), %eax	# alpha, tmp642
	negl	%eax	# D.6295
	movl	%eax, %esi	# D.6295, D.6295
	movl	-16548(%rbp), %eax	# alpha, tmp643
	notl	%eax	# D.6295
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6295,
	call	search	#
	negl	%eax	# tmp644
	movl	%eax, -16504(%rbp)	# tmp644, score
	.loc 1 922 0
	movl	PVS(%rip), %eax	# PVS, PVS.274
	addl	$1, %eax	#, PVS.275
	movl	%eax, PVS(%rip)	# PVS.275, PVS
	.loc 1 924 0
	movl	-16504(%rbp), %eax	# score, tmp645
	cmpl	-16488(%rbp), %eax	# best_score, tmp645
	jle	.L168	#,
	.loc 1 924 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.276
	testl	%eax, %eax	# time_exit.276
	jne	.L168	#,
	cmpl	$-50000, -16504(%rbp)	#, score
	je	.L168	#,
	.loc 1 926 0 is_stmt 1
	movl	-16504(%rbp), %eax	# score, tmp646
	cmpl	-16548(%rbp), %eax	# alpha, tmp646
	jle	.L169	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movl	-16504(%rbp), %eax	# score, tmp647
	cmpl	-16552(%rbp), %eax	# beta, tmp647
	jge	.L169	#,
	.loc 1 928 0 is_stmt 1
	movl	-16480(%rbp), %eax	# extend, tmp648
	movl	-16556(%rbp), %edx	# depth, tmp649
	addl	%edx, %eax	# tmp649, D.6295
	leal	-1(%rax), %edx	#, D.6295
	movl	-16548(%rbp), %eax	# alpha, tmp650
	negl	%eax	# D.6295
	movl	%eax, %esi	# D.6295, D.6295
	movl	-16552(%rbp), %eax	# beta, tmp651
	negl	%eax	# D.6295
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6295,
	call	search	#
	negl	%eax	# tmp652
	movl	%eax, -16504(%rbp)	# tmp652, score
	.loc 1 929 0
	movl	PVSF(%rip), %eax	# PVSF, PVSF.277
	addl	$1, %eax	#, PVSF.278
	movl	%eax, PVSF(%rip)	# PVSF.278, PVSF
	.loc 1 931 0
	movl	-16504(%rbp), %eax	# score, tmp653
	cmpl	-16488(%rbp), %eax	# best_score, tmp653
	jle	.L170	#,
	.loc 1 931 0 is_stmt 0 discriminator 1
	movl	-16504(%rbp), %eax	# score, tmp654
	movl	%eax, -16488(%rbp)	# tmp654, best_score
	jmp	.L168	#
.L170:
	.loc 1 931 0 discriminator 2
	jmp	.L168	#
.L169:
	.loc 1 934 0 is_stmt 1
	movl	-16504(%rbp), %eax	# score, tmp655
	movl	%eax, -16488(%rbp)	# tmp655, best_score
.L168:
	.loc 1 938 0
	movl	$1, -16496(%rbp)	#, legal_move
	jmp	.L171	#
.L162:
	.loc 1 942 0
	movl	razor_material(%rip), %eax	# razor_material, razor_material.279
	addl	$1, %eax	#, razor_material.280
	movl	%eax, razor_material(%rip)	# razor_material.280, razor_material
.L171:
	.loc 1 945 0
	addl	$1, -16468(%rbp)	#, legalmoves
	.loc 1 946 0
	movl	$0, -16500(%rbp)	#, no_moves
.L153:
	.loc 1 949 0
	movl	-16504(%rbp), %eax	# score, tmp656
	cmpl	-16488(%rbp), %eax	# best_score, tmp656
	jle	.L172	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	cmpl	$0, -16496(%rbp)	#, legal_move
	je	.L172	#,
	.loc 1 951 0 is_stmt 1
	movl	-16504(%rbp), %eax	# score, tmp657
	movl	%eax, -16488(%rbp)	# tmp657, best_score
.L172:
	.loc 1 954 0
	movl	-16532(%rbp), %edx	# i, i.281
	leaq	-12304(%rbp), %rax	#, tmp658
	movl	%edx, %esi	# i.281,
	movq	%rax, %rdi	# tmp658,
	call	unmake	#
	.loc 1 957 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.282
	testl	%eax, %eax	# time_exit.282
	je	.L173	#,
	.loc 1 957 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L173:
	.loc 1 960 0 is_stmt 1
	movl	-16504(%rbp), %eax	# score, tmp659
	cmpl	-16548(%rbp), %eax	# alpha, tmp659
	jle	.L174	#,
	.loc 1 960 0 is_stmt 0 discriminator 1
	cmpl	$0, -16496(%rbp)	#, legal_move
	je	.L174	#,
	.loc 1 963 0 is_stmt 1
	movl	-16504(%rbp), %eax	# score, tmp660
	cmpl	-16552(%rbp), %eax	# beta, tmp660
	jl	.L175	#,
	.loc 1 966 0
	movl	-16532(%rbp), %eax	# i, i.283
	movslq	%eax, %rdx	# i.283, tmp661
	movq	%rdx, %rax	# tmp661, tmp662
	addq	%rax, %rax	# tmp662
	addq	%rdx, %rax	# tmp661, tmp662
	salq	$3, %rax	#, tmp663
	leaq	-16(%rbp), %rbx	#, tmp956
	addq	%rbx, %rax	# tmp956, tmp664
	subq	$12288, %rax	#, tmp665
	movl	(%rax), %edx	# moves[i.283_430].from, D.6295
	movl	-16532(%rbp), %eax	# i, i.284
	movslq	%eax, %rcx	# i.284, tmp666
	movq	%rcx, %rax	# tmp666, tmp667
	addq	%rax, %rax	# tmp667
	addq	%rcx, %rax	# tmp666, tmp667
	salq	$3, %rax	#, tmp668
	leaq	-16(%rbp), %rbx	#, tmp957
	addq	%rbx, %rax	# tmp957, tmp669
	subq	$12288, %rax	#, tmp670
	movl	4(%rax), %ecx	# moves[i.284_432].target, D.6295
	movslq	%ecx, %rdi	# D.6295, tmp671
	movslq	%edx, %rsi	# D.6295, tmp672
	movq	%rsi, %rax	# tmp672, tmp673
	salq	$3, %rax	#, tmp673
	addq	%rsi, %rax	# tmp672, tmp673
	salq	$4, %rax	#, tmp674
	addq	%rdi, %rax	# tmp671, tmp675
	movl	history_h(,%rax,4), %eax	# history_h, D.6299
	leal	1(%rax), %esi	#, D.6299
	movslq	%ecx, %rcx	# D.6295, tmp676
	movslq	%edx, %rdx	# D.6295, tmp677
	movq	%rdx, %rax	# tmp677, tmp678
	salq	$3, %rax	#, tmp678
	addq	%rdx, %rax	# tmp677, tmp678
	salq	$4, %rax	#, tmp679
	addq	%rcx, %rax	# tmp676, tmp680
	movl	%esi, history_h(,%rax,4)	# D.6299, history_h
	.loc 1 968 0
	movl	-16532(%rbp), %eax	# i, i.285
	movslq	%eax, %rdx	# i.285, tmp681
	movq	%rdx, %rax	# tmp681, tmp682
	addq	%rax, %rax	# tmp682
	addq	%rdx, %rax	# tmp681, tmp682
	salq	$3, %rax	#, tmp683
	leaq	-16(%rbp), %rbx	#, tmp958
	addq	%rbx, %rax	# tmp958, tmp684
	subq	$12288, %rax	#, tmp685
	movl	8(%rax), %eax	# moves[i.285_436].captured, D.6295
	cmpl	$13, %eax	#, D.6295
	jne	.L176	#,
	.loc 1 972 0
	movl	-16532(%rbp), %eax	# i, i.286
	movslq	%eax, %rdx	# i.286, tmp686
	movq	%rdx, %rax	# tmp686, tmp687
	addq	%rax, %rax	# tmp687
	addq	%rdx, %rax	# tmp686, tmp687
	salq	$3, %rax	#, tmp688
	leaq	-16(%rbp), %rbx	#, tmp959
	addq	%rbx, %rax	# tmp959, tmp689
	subq	$12288, %rax	#, tmp690
	movl	(%rax), %ecx	# moves[i.286_438].from, D.6295
	movl	ply(%rip), %eax	# ply, ply.287
	movslq	%eax, %rdx	# ply.287, tmp691
	movq	%rdx, %rax	# tmp691, tmp692
	addq	%rax, %rax	# tmp692
	addq	%rdx, %rax	# tmp691, tmp692
	salq	$3, %rax	#, tmp693
	addq	$killer1, %rax	#, tmp694
	movl	(%rax), %eax	# killer1[ply.287_440].from, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L177	#,
	.loc 1 972 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.288
	movslq	%eax, %rdx	# i.288, tmp695
	movq	%rdx, %rax	# tmp695, tmp696
	addq	%rax, %rax	# tmp696
	addq	%rdx, %rax	# tmp695, tmp696
	salq	$3, %rax	#, tmp697
	leaq	-16(%rbp), %rbx	#, tmp960
	addq	%rbx, %rax	# tmp960, tmp698
	subq	$12288, %rax	#, tmp699
	movl	4(%rax), %ecx	# moves[i.288_442].target, D.6295
	.loc 1 973 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.289
	movslq	%eax, %rdx	# ply.289, tmp700
	movq	%rdx, %rax	# tmp700, tmp701
	addq	%rax, %rax	# tmp701
	addq	%rdx, %rax	# tmp700, tmp701
	salq	$3, %rax	#, tmp702
	addq	$killer1+4, %rax	#, tmp703
	movl	(%rax), %eax	# killer1[ply.289_444].target, D.6295
	.loc 1 972 0 discriminator 1
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L177	#,
	.loc 1 973 0
	movl	-16532(%rbp), %eax	# i, i.290
	movslq	%eax, %rdx	# i.290, tmp704
	movq	%rdx, %rax	# tmp704, tmp705
	addq	%rax, %rax	# tmp705
	addq	%rdx, %rax	# tmp704, tmp705
	salq	$3, %rax	#, tmp706
	leaq	-16(%rbp), %rbx	#, tmp961
	addq	%rbx, %rax	# tmp961, tmp707
	subq	$12288, %rax	#, tmp708
	movl	12(%rax), %ecx	# moves[i.290_446].promoted, D.6295
	movl	ply(%rip), %eax	# ply, ply.291
	movslq	%eax, %rdx	# ply.291, tmp709
	movq	%rdx, %rax	# tmp709, tmp710
	addq	%rax, %rax	# tmp710
	addq	%rdx, %rax	# tmp709, tmp710
	salq	$3, %rax	#, tmp711
	addq	$killer1+12, %rax	#, tmp712
	movl	(%rax), %eax	# killer1[ply.291_448].promoted, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L177	#,
	.loc 1 975 0
	movl	ply(%rip), %eax	# ply, ply.292
	movslq	%eax, %rdx	# ply.292, tmp713
	movl	killer_scores(,%rdx,4), %edx	# killer_scores, D.6295
	addl	$1, %edx	#, D.6295
	cltq
	movl	%edx, killer_scores(,%rax,4)	# D.6295, killer_scores
	jmp	.L176	#
.L177:
	.loc 1 977 0
	movl	-16532(%rbp), %eax	# i, i.293
	movslq	%eax, %rdx	# i.293, tmp715
	movq	%rdx, %rax	# tmp715, tmp716
	addq	%rax, %rax	# tmp716
	addq	%rdx, %rax	# tmp715, tmp716
	salq	$3, %rax	#, tmp717
	leaq	-16(%rbp), %rbx	#, tmp962
	addq	%rbx, %rax	# tmp962, tmp718
	subq	$12288, %rax	#, tmp719
	movl	(%rax), %ecx	# moves[i.293_453].from, D.6295
	movl	ply(%rip), %eax	# ply, ply.294
	movslq	%eax, %rdx	# ply.294, tmp720
	movq	%rdx, %rax	# tmp720, tmp721
	addq	%rax, %rax	# tmp721
	addq	%rdx, %rax	# tmp720, tmp721
	salq	$3, %rax	#, tmp722
	addq	$killer2, %rax	#, tmp723
	movl	(%rax), %eax	# killer2[ply.294_455].from, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L178	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.295
	movslq	%eax, %rdx	# i.295, tmp724
	movq	%rdx, %rax	# tmp724, tmp725
	addq	%rax, %rax	# tmp725
	addq	%rdx, %rax	# tmp724, tmp725
	salq	$3, %rax	#, tmp726
	leaq	-16(%rbp), %rbx	#, tmp963
	addq	%rbx, %rax	# tmp963, tmp727
	subq	$12288, %rax	#, tmp728
	movl	4(%rax), %ecx	# moves[i.295_457].target, D.6295
	.loc 1 978 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.296
	movslq	%eax, %rdx	# ply.296, tmp729
	movq	%rdx, %rax	# tmp729, tmp730
	addq	%rax, %rax	# tmp730
	addq	%rdx, %rax	# tmp729, tmp730
	salq	$3, %rax	#, tmp731
	addq	$killer2+4, %rax	#, tmp732
	movl	(%rax), %eax	# killer2[ply.296_459].target, D.6295
	.loc 1 977 0 discriminator 1
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L178	#,
	.loc 1 978 0
	movl	-16532(%rbp), %eax	# i, i.297
	movslq	%eax, %rdx	# i.297, tmp733
	movq	%rdx, %rax	# tmp733, tmp734
	addq	%rax, %rax	# tmp734
	addq	%rdx, %rax	# tmp733, tmp734
	salq	$3, %rax	#, tmp735
	leaq	-16(%rbp), %rbx	#, tmp964
	addq	%rbx, %rax	# tmp964, tmp736
	subq	$12288, %rax	#, tmp737
	movl	12(%rax), %ecx	# moves[i.297_461].promoted, D.6295
	movl	ply(%rip), %eax	# ply, ply.298
	movslq	%eax, %rdx	# ply.298, tmp738
	movq	%rdx, %rax	# tmp738, tmp739
	addq	%rax, %rax	# tmp739
	addq	%rdx, %rax	# tmp738, tmp739
	salq	$3, %rax	#, tmp740
	addq	$killer2+12, %rax	#, tmp741
	movl	(%rax), %eax	# killer2[ply.298_463].promoted, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L178	#,
	.loc 1 980 0
	movl	ply(%rip), %eax	# ply, ply.299
	movslq	%eax, %rdx	# ply.299, tmp742
	movl	killer_scores2(,%rdx,4), %edx	# killer_scores2, D.6295
	addl	$1, %edx	#, D.6295
	cltq
	movl	%edx, killer_scores2(,%rax,4)	# D.6295, killer_scores2
	.loc 1 982 0
	movl	ply(%rip), %eax	# ply, ply.300
	cltq
	movl	killer_scores2(,%rax,4), %edx	# killer_scores2, D.6295
	movl	ply(%rip), %eax	# ply, ply.301
	cltq
	movl	killer_scores(,%rax,4), %eax	# killer_scores, D.6295
	cmpl	%eax, %edx	# D.6295, D.6295
	jle	.L179	#,
	.loc 1 984 0
	movl	ply(%rip), %eax	# ply, ply.302
	movslq	%eax, %rdx	# ply.302, tmp746
	movq	%rdx, %rax	# tmp746, tmp747
	addq	%rax, %rax	# tmp747
	addq	%rdx, %rax	# tmp746, tmp747
	salq	$3, %rax	#, tmp748
	addq	$killer1, %rax	#, tmp749
	movq	(%rax), %rdx	# killer1, tmp750
	movq	%rdx, -16432(%rbp)	# tmp750, kswap
	movq	8(%rax), %rdx	# killer1, tmp751
	movq	%rdx, -16424(%rbp)	# tmp751, kswap
	movq	16(%rax), %rax	# killer1, tmp752
	movq	%rax, -16416(%rbp)	# tmp752, kswap
	.loc 1 985 0
	movl	ply(%rip), %eax	# ply, ply.303
	movl	ply(%rip), %ecx	# ply, ply.304
	movslq	%eax, %rdx	# ply.303, tmp753
	movq	%rdx, %rax	# tmp753, tmp754
	addq	%rax, %rax	# tmp754
	addq	%rdx, %rax	# tmp753, tmp754
	salq	$3, %rax	#, tmp755
	leaq	killer1(%rax), %rdx	#, tmp756
	movslq	%ecx, %rcx	# ply.304, tmp757
	movq	%rcx, %rax	# tmp757, tmp758
	addq	%rax, %rax	# tmp758
	addq	%rcx, %rax	# tmp757, tmp758
	salq	$3, %rax	#, tmp759
	addq	$killer2, %rax	#, tmp760
	movq	(%rax), %rcx	# killer2, tmp761
	movq	%rcx, (%rdx)	# tmp761, killer1
	movq	8(%rax), %rcx	# killer2, tmp762
	movq	%rcx, 8(%rdx)	# tmp762, killer1
	movq	16(%rax), %rax	# killer2, tmp763
	movq	%rax, 16(%rdx)	# tmp763, killer1
	.loc 1 986 0
	movl	ply(%rip), %eax	# ply, ply.305
	movslq	%eax, %rdx	# ply.305, tmp764
	movq	%rdx, %rax	# tmp764, tmp765
	addq	%rax, %rax	# tmp765
	addq	%rdx, %rax	# tmp764, tmp765
	salq	$3, %rax	#, tmp766
	addq	$killer2, %rax	#, tmp767
	movq	-16432(%rbp), %rdx	# kswap, tmp768
	movq	%rdx, (%rax)	# tmp768, killer2
	movq	-16424(%rbp), %rdx	# kswap, tmp769
	movq	%rdx, 8(%rax)	# tmp769, killer2
	movq	-16416(%rbp), %rdx	# kswap, tmp770
	movq	%rdx, 16(%rax)	# tmp770, killer2
	.loc 1 987 0
	movl	ply(%rip), %eax	# ply, ply.306
	cltq
	movl	killer_scores(,%rax,4), %eax	# killer_scores, tmp772
	movl	%eax, -16436(%rbp)	# tmp772, ksswap
	.loc 1 988 0
	movl	ply(%rip), %ecx	# ply, ply.307
	movl	ply(%rip), %eax	# ply, ply.308
	cltq
	movl	killer_scores2(,%rax,4), %edx	# killer_scores2, D.6295
	movslq	%ecx, %rax	# ply.307, tmp774
	movl	%edx, killer_scores(,%rax,4)	# D.6295, killer_scores
	.loc 1 989 0
	movl	ply(%rip), %eax	# ply, ply.309
	cltq
	movl	-16436(%rbp), %edx	# ksswap, tmp776
	movl	%edx, killer_scores2(,%rax,4)	# tmp776, killer_scores2
	.loc 1 982 0
	jmp	.L176	#
.L179:
	.loc 1 982 0 is_stmt 0 discriminator 1
	jmp	.L176	#
.L178:
	.loc 1 993 0 is_stmt 1
	movl	-16532(%rbp), %eax	# i, i.310
	movslq	%eax, %rdx	# i.310, tmp777
	movq	%rdx, %rax	# tmp777, tmp778
	addq	%rax, %rax	# tmp778
	addq	%rdx, %rax	# tmp777, tmp778
	salq	$3, %rax	#, tmp779
	leaq	-16(%rbp), %rbx	#, tmp965
	addq	%rbx, %rax	# tmp965, tmp780
	subq	$12288, %rax	#, tmp781
	movl	(%rax), %ecx	# moves[i.310_482].from, D.6295
	movl	ply(%rip), %eax	# ply, ply.311
	movslq	%eax, %rdx	# ply.311, tmp782
	movq	%rdx, %rax	# tmp782, tmp783
	addq	%rax, %rax	# tmp783
	addq	%rdx, %rax	# tmp782, tmp783
	salq	$3, %rax	#, tmp784
	addq	$killer3, %rax	#, tmp785
	movl	(%rax), %eax	# killer3[ply.311_484].from, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L180	#,
	.loc 1 993 0 is_stmt 0 discriminator 1
	movl	-16532(%rbp), %eax	# i, i.312
	movslq	%eax, %rdx	# i.312, tmp786
	movq	%rdx, %rax	# tmp786, tmp787
	addq	%rax, %rax	# tmp787
	addq	%rdx, %rax	# tmp786, tmp787
	salq	$3, %rax	#, tmp788
	leaq	-16(%rbp), %rbx	#, tmp966
	addq	%rbx, %rax	# tmp966, tmp789
	subq	$12288, %rax	#, tmp790
	movl	4(%rax), %ecx	# moves[i.312_486].target, D.6295
	.loc 1 994 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.313
	movslq	%eax, %rdx	# ply.313, tmp791
	movq	%rdx, %rax	# tmp791, tmp792
	addq	%rax, %rax	# tmp792
	addq	%rdx, %rax	# tmp791, tmp792
	salq	$3, %rax	#, tmp793
	addq	$killer3+4, %rax	#, tmp794
	movl	(%rax), %eax	# killer3[ply.313_488].target, D.6295
	.loc 1 993 0 discriminator 1
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L180	#,
	.loc 1 994 0
	movl	-16532(%rbp), %eax	# i, i.314
	movslq	%eax, %rdx	# i.314, tmp795
	movq	%rdx, %rax	# tmp795, tmp796
	addq	%rax, %rax	# tmp796
	addq	%rdx, %rax	# tmp795, tmp796
	salq	$3, %rax	#, tmp797
	leaq	-16(%rbp), %rbx	#, tmp967
	addq	%rbx, %rax	# tmp967, tmp798
	subq	$12288, %rax	#, tmp799
	movl	12(%rax), %ecx	# moves[i.314_490].promoted, D.6295
	movl	ply(%rip), %eax	# ply, ply.315
	movslq	%eax, %rdx	# ply.315, tmp800
	movq	%rdx, %rax	# tmp800, tmp801
	addq	%rax, %rax	# tmp801
	addq	%rdx, %rax	# tmp800, tmp801
	salq	$3, %rax	#, tmp802
	addq	$killer3+12, %rax	#, tmp803
	movl	(%rax), %eax	# killer3[ply.315_492].promoted, D.6295
	cmpl	%eax, %ecx	# D.6295, D.6295
	jne	.L180	#,
	.loc 1 997 0
	movl	ply(%rip), %eax	# ply, ply.316
	movslq	%eax, %rdx	# ply.316, tmp804
	movl	killer_scores3(,%rdx,4), %edx	# killer_scores3, D.6295
	addl	$1, %edx	#, D.6295
	cltq
	movl	%edx, killer_scores3(,%rax,4)	# D.6295, killer_scores3
	.loc 1 999 0
	movl	ply(%rip), %eax	# ply, ply.317
	cltq
	movl	killer_scores3(,%rax,4), %edx	# killer_scores3, D.6295
	movl	ply(%rip), %eax	# ply, ply.318
	cltq
	movl	killer_scores2(,%rax,4), %eax	# killer_scores2, D.6295
	cmpl	%eax, %edx	# D.6295, D.6295
	jle	.L181	#,
	.loc 1 1001 0
	movl	ply(%rip), %eax	# ply, ply.319
	movslq	%eax, %rdx	# ply.319, tmp808
	movq	%rdx, %rax	# tmp808, tmp809
	addq	%rax, %rax	# tmp809
	addq	%rdx, %rax	# tmp808, tmp809
	salq	$3, %rax	#, tmp810
	addq	$killer2, %rax	#, tmp811
	movq	(%rax), %rdx	# killer2, tmp812
	movq	%rdx, -16432(%rbp)	# tmp812, kswap
	movq	8(%rax), %rdx	# killer2, tmp813
	movq	%rdx, -16424(%rbp)	# tmp813, kswap
	movq	16(%rax), %rax	# killer2, tmp814
	movq	%rax, -16416(%rbp)	# tmp814, kswap
	.loc 1 1002 0
	movl	ply(%rip), %eax	# ply, ply.320
	movl	ply(%rip), %ecx	# ply, ply.321
	movslq	%eax, %rdx	# ply.320, tmp815
	movq	%rdx, %rax	# tmp815, tmp816
	addq	%rax, %rax	# tmp816
	addq	%rdx, %rax	# tmp815, tmp816
	salq	$3, %rax	#, tmp817
	leaq	killer2(%rax), %rdx	#, tmp818
	movslq	%ecx, %rcx	# ply.321, tmp819
	movq	%rcx, %rax	# tmp819, tmp820
	addq	%rax, %rax	# tmp820
	addq	%rcx, %rax	# tmp819, tmp820
	salq	$3, %rax	#, tmp821
	addq	$killer3, %rax	#, tmp822
	movq	(%rax), %rcx	# killer3, tmp823
	movq	%rcx, (%rdx)	# tmp823, killer2
	movq	8(%rax), %rcx	# killer3, tmp824
	movq	%rcx, 8(%rdx)	# tmp824, killer2
	movq	16(%rax), %rax	# killer3, tmp825
	movq	%rax, 16(%rdx)	# tmp825, killer2
	.loc 1 1003 0
	movl	ply(%rip), %eax	# ply, ply.322
	movslq	%eax, %rdx	# ply.322, tmp826
	movq	%rdx, %rax	# tmp826, tmp827
	addq	%rax, %rax	# tmp827
	addq	%rdx, %rax	# tmp826, tmp827
	salq	$3, %rax	#, tmp828
	addq	$killer3, %rax	#, tmp829
	movq	-16432(%rbp), %rdx	# kswap, tmp830
	movq	%rdx, (%rax)	# tmp830, killer3
	movq	-16424(%rbp), %rdx	# kswap, tmp831
	movq	%rdx, 8(%rax)	# tmp831, killer3
	movq	-16416(%rbp), %rdx	# kswap, tmp832
	movq	%rdx, 16(%rax)	# tmp832, killer3
	.loc 1 1004 0
	movl	ply(%rip), %eax	# ply, ply.323
	cltq
	movl	killer_scores2(,%rax,4), %eax	# killer_scores2, tmp834
	movl	%eax, -16436(%rbp)	# tmp834, ksswap
	.loc 1 1005 0
	movl	ply(%rip), %ecx	# ply, ply.324
	movl	ply(%rip), %eax	# ply, ply.325
	cltq
	movl	killer_scores3(,%rax,4), %edx	# killer_scores3, D.6295
	movslq	%ecx, %rax	# ply.324, tmp836
	movl	%edx, killer_scores2(,%rax,4)	# D.6295, killer_scores2
	.loc 1 1006 0
	movl	ply(%rip), %eax	# ply, ply.326
	cltq
	movl	-16436(%rbp), %edx	# ksswap, tmp838
	movl	%edx, killer_scores3(,%rax,4)	# tmp838, killer_scores3
	.loc 1 999 0
	jmp	.L176	#
.L181:
	.loc 1 999 0 is_stmt 0 discriminator 1
	jmp	.L176	#
.L180:
	.loc 1 1012 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.327
	cltq
	movl	$1, killer_scores3(,%rax,4)	#, killer_scores3
	.loc 1 1013 0
	movl	ply(%rip), %eax	# ply, ply.328
	movl	-16532(%rbp), %ecx	# i, i.329
	movslq	%eax, %rdx	# ply.328, tmp840
	movq	%rdx, %rax	# tmp840, tmp841
	addq	%rax, %rax	# tmp841
	addq	%rdx, %rax	# tmp840, tmp841
	salq	$3, %rax	#, tmp842
	leaq	killer3(%rax), %rdx	#, tmp843
	movslq	%ecx, %rcx	# i.329, tmp844
	movq	%rcx, %rax	# tmp844, tmp845
	addq	%rax, %rax	# tmp845
	addq	%rcx, %rax	# tmp844, tmp845
	salq	$3, %rax	#, tmp846
	leaq	-16(%rbp), %rbx	#, tmp968
	addq	%rbx, %rax	# tmp968, tmp847
	subq	$12288, %rax	#, tmp848
	movq	(%rax), %rcx	# moves, tmp849
	movq	%rcx, (%rdx)	# tmp849, killer3
	movq	8(%rax), %rcx	# moves, tmp850
	movq	%rcx, 8(%rdx)	# tmp850, killer3
	movq	16(%rax), %rax	# moves, tmp851
	movq	%rax, 16(%rdx)	# tmp851, killer3
.L176:
	.loc 1 1017 0
	cmpl	$1, -16484(%rbp)	#, first
	jne	.L182	#,
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movl	FHF(%rip), %eax	# FHF, FHF.330
	addl	$1, %eax	#, FHF.331
	movl	%eax, FHF(%rip)	# FHF.331, FHF
.L182:
	.loc 1 1019 0 is_stmt 1
	movl	FH(%rip), %eax	# FH, FH.332
	addl	$1, %eax	#, FH.333
	movl	%eax, FH(%rip)	# FH.333, FH
	.loc 1 1021 0
	movl	-16524(%rbp), %edi	# threat, threat.334
	movl	-16532(%rbp), %ecx	# i, i.335
	movl	-16556(%rbp), %r8d	# depth, tmp852
	movl	-16552(%rbp), %edx	# beta, tmp853
	movl	-16456(%rbp), %esi	# originalalpha, tmp854
	movl	-16504(%rbp), %eax	# score, tmp855
	movl	%r8d, %r9d	# tmp852,
	movl	%edi, %r8d	# threat.334,
	movl	%eax, %edi	# tmp855,
	call	StoreTT	#
	.loc 1 1023 0
	movl	-16504(%rbp), %eax	# score, D.6295
	jmp	.L196	#
.L175:
	.loc 1 1026 0
	movl	-16504(%rbp), %eax	# score, tmp856
	movl	%eax, -16548(%rbp)	# tmp856, alpha
	.loc 1 1028 0
	movl	-16532(%rbp), %eax	# i, tmp857
	movl	%eax, -16492(%rbp)	# tmp857, sbest
	.loc 1 1031 0
	movl	ply(%rip), %eax	# ply, ply.336
	movl	ply(%rip), %edx	# ply, ply.337
	movl	-16532(%rbp), %ecx	# i, i.338
	movslq	%edx, %rdx	# ply.337, tmp858
	movslq	%eax, %rsi	# ply.336, tmp859
	movq	%rdx, %rax	# tmp858, tmp860
	addq	%rax, %rax	# tmp860
	addq	%rdx, %rax	# tmp858, tmp860
	salq	$3, %rax	#, tmp861
	imulq	$7200, %rsi, %rdx	#, tmp859, tmp862
	addq	%rdx, %rax	# tmp862, tmp863
	leaq	pv(%rax), %rdx	#, tmp864
	movslq	%ecx, %rcx	# i.338, tmp865
	movq	%rcx, %rax	# tmp865, tmp866
	addq	%rax, %rax	# tmp866
	addq	%rcx, %rax	# tmp865, tmp866
	salq	$3, %rax	#, tmp867
	leaq	-16(%rbp), %rbx	#, tmp969
	addq	%rbx, %rax	# tmp969, tmp868
	subq	$12288, %rax	#, tmp869
	movq	(%rax), %rcx	# moves, tmp870
	movq	%rcx, (%rdx)	# tmp870, pv
	movq	8(%rax), %rcx	# moves, tmp871
	movq	%rcx, 8(%rdx)	# tmp871, pv
	movq	16(%rax), %rax	# moves, tmp872
	movq	%rax, 16(%rdx)	# tmp872, pv
	.loc 1 1032 0
	movl	ply(%rip), %eax	# ply, ply.339
	addl	$1, %eax	#, tmp873
	movl	%eax, -16508(%rbp)	# tmp873, j
	jmp	.L183	#
.L184:
	.loc 1 1033 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.340
	movl	ply(%rip), %edx	# ply, ply.341
	leal	1(%rdx), %esi	#, D.6295
	movl	-16508(%rbp), %edx	# j, tmp875
	movslq	%edx, %rdx	# tmp875, tmp874
	movslq	%eax, %rcx	# ply.340, tmp876
	movq	%rdx, %rax	# tmp874, tmp877
	addq	%rax, %rax	# tmp877
	addq	%rdx, %rax	# tmp874, tmp877
	salq	$3, %rax	#, tmp878
	imulq	$7200, %rcx, %rdx	#, tmp876, tmp879
	addq	%rdx, %rax	# tmp879, tmp880
	leaq	pv(%rax), %rdx	#, tmp881
	movl	-16508(%rbp), %eax	# j, tmp883
	movslq	%eax, %rcx	# tmp883, tmp882
	movslq	%esi, %rsi	# D.6295, tmp884
	movq	%rcx, %rax	# tmp882, tmp885
	addq	%rax, %rax	# tmp885
	addq	%rcx, %rax	# tmp882, tmp885
	salq	$3, %rax	#, tmp886
	imulq	$7200, %rsi, %rcx	#, tmp884, tmp887
	addq	%rcx, %rax	# tmp887, tmp888
	addq	$pv, %rax	#, tmp889
	movq	(%rax), %rcx	# pv, tmp890
	movq	%rcx, (%rdx)	# tmp890, pv
	movq	8(%rax), %rcx	# pv, tmp891
	movq	%rcx, 8(%rdx)	# tmp891, pv
	movq	16(%rax), %rax	# pv, tmp892
	movq	%rax, 16(%rdx)	# tmp892, pv
	.loc 1 1032 0 discriminator 2
	addl	$1, -16508(%rbp)	#, j
.L183:
	.loc 1 1032 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.342
	addl	$1, %eax	#, D.6295
	cltq
	movl	pv_length(,%rax,4), %eax	# pv_length, D.6295
	cmpl	-16508(%rbp), %eax	# j, D.6295
	jg	.L184	#,
	.loc 1 1034 0 is_stmt 1
	movl	ply(%rip), %ecx	# ply, ply.343
	movl	ply(%rip), %eax	# ply, ply.344
	addl	$1, %eax	#, D.6295
	cltq
	movl	pv_length(,%rax,4), %edx	# pv_length, D.6295
	movslq	%ecx, %rax	# ply.343, tmp895
	movl	%edx, pv_length(,%rax,4)	# D.6295, pv_length
.L174:
	.loc 1 1037 0
	cmpl	$0, -16496(%rbp)	#, legal_move
	je	.L152	#,
	.loc 1 1038 0
	movl	$0, -16484(%rbp)	#, first
.L152:
	.loc 1 850 0 discriminator 1
	movl	-16512(%rbp), %edx	# num_moves, tmp896
	leaq	-16400(%rbp), %rcx	#, tmp897
	leaq	-16532(%rbp), %rax	#, tmp898
	movq	%rcx, %rsi	# tmp897,
	movq	%rax, %rdi	# tmp898,
	call	remove_one	#
	testl	%eax, %eax	# D.6297
	jne	.L185	#,
	jmp	.L197	#
.L151:
	.loc 1 1045 0
	movl	-16524(%rbp), %ecx	# threat, threat.345
	movl	ply(%rip), %eax	# ply, ply.346
	movl	$1000000, %edx	#, tmp899
	movl	%edx, %edi	# tmp899, D.6295
	subl	%eax, %edi	# ply.346, D.6295
	movl	-16556(%rbp), %esi	# depth, tmp900
	movl	-16552(%rbp), %edx	# beta, tmp901
	movl	-16456(%rbp), %eax	# originalalpha, tmp902
	movl	%esi, %r9d	# tmp900,
	movl	%ecx, %r8d	# threat.345,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp902,
	call	StoreTT	#
	.loc 1 1046 0
	movl	ply(%rip), %eax	# ply, ply.347
	movl	$1000000, %edx	#, tmp903
	subl	%eax, %edx	# ply.347, D.6295
	movl	%edx, %eax	# D.6295, D.6295
	jmp	.L196	#
.L197:
	.loc 1 1050 0
	cmpl	$0, -16500(%rbp)	#, no_moves
	je	.L187	#,
	.loc 1 1052 0
	movl	Variant(%rip), %eax	# Variant, Variant.348
	cmpl	$4, %eax	#, Variant.348
	je	.L188	#,
	.loc 1 1052 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.349
	cmpl	$3, %eax	#, Variant.349
	je	.L188	#,
	.loc 1 1054 0 is_stmt 1
	call	in_check	#
	testl	%eax, %eax	# D.6297
	je	.L189	#,
	.loc 1 1056 0
	movl	-16524(%rbp), %ecx	# threat, threat.350
	movl	ply(%rip), %eax	# ply, ply.351
	leal	-1000000(%rax), %edi	#, D.6295
	movl	-16556(%rbp), %esi	# depth, tmp904
	movl	-16552(%rbp), %edx	# beta, tmp905
	movl	-16456(%rbp), %eax	# originalalpha, tmp906
	movl	%esi, %r9d	# tmp904,
	movl	%ecx, %r8d	# threat.350,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp906,
	call	StoreTT	#
	.loc 1 1057 0
	movl	ply(%rip), %eax	# ply, ply.352
	subl	$1000000, %eax	#, D.6295
	jmp	.L196	#
.L189:
	.loc 1 1061 0
	movl	-16524(%rbp), %ecx	# threat, threat.353
	movl	-16556(%rbp), %esi	# depth, tmp907
	movl	-16552(%rbp), %edx	# beta, tmp908
	movl	-16456(%rbp), %eax	# originalalpha, tmp909
	movl	%esi, %r9d	# tmp907,
	movl	%ecx, %r8d	# threat.353,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp909,
	movl	$0, %edi	#,
	call	StoreTT	#
	.loc 1 1062 0
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L188:
	.loc 1 1067 0
	movl	-16524(%rbp), %ecx	# threat, threat.354
	movl	ply(%rip), %eax	# ply, ply.355
	movl	$1000000, %edx	#, tmp910
	movl	%edx, %edi	# tmp910, D.6295
	subl	%eax, %edi	# ply.355, D.6295
	movl	-16556(%rbp), %esi	# depth, tmp911
	movl	-16552(%rbp), %edx	# beta, tmp912
	movl	-16456(%rbp), %eax	# originalalpha, tmp913
	movl	%esi, %r9d	# tmp911,
	movl	%ecx, %r8d	# threat.354,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp913,
	call	StoreTT	#
	.loc 1 1068 0
	movl	ply(%rip), %eax	# ply, ply.356
	movl	$1000000, %edx	#, tmp914
	subl	%eax, %edx	# ply.356, D.6295
	movl	%edx, %eax	# D.6295, D.6295
	jmp	.L196	#
.L187:
	.loc 1 1073 0
	movl	fifty(%rip), %eax	# fifty, fifty.357
	cmpl	$100, %eax	#, fifty.357
	jle	.L190	#,
	.loc 1 1075 0
	movl	$0, %eax	#, D.6295
	jmp	.L196	#
.L190:
	.loc 1 1079 0
	cmpl	$-1, -16492(%rbp)	#, sbest
	jne	.L191	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movl	$500, -16492(%rbp)	#, sbest
.L191:
	.loc 1 1081 0 is_stmt 1
	movl	-16488(%rbp), %eax	# best_score, tmp915
	cmpl	-16456(%rbp), %eax	# originalalpha, tmp915
	jg	.L192	#,
	.loc 1 1083 0
	cmpl	$0, -16472(%rbp)	#, selective
	jne	.L194	#,
	.loc 1 1084 0
	movl	-16524(%rbp), %edi	# threat, threat.358
	movl	-16556(%rbp), %r8d	# depth, tmp916
	movl	-16492(%rbp), %ecx	# sbest, tmp917
	movl	-16552(%rbp), %edx	# beta, tmp918
	movl	-16456(%rbp), %esi	# originalalpha, tmp919
	movl	-16488(%rbp), %eax	# best_score, tmp920
	movl	%r8d, %r9d	# tmp916,
	movl	%edi, %r8d	# threat.358,
	movl	%eax, %edi	# tmp920,
	call	StoreTT	#
	jmp	.L194	#
.L192:
	.loc 1 1088 0
	cmpl	$0, -16472(%rbp)	#, selective
	jne	.L195	#,
	.loc 1 1089 0
	movl	-16524(%rbp), %edi	# threat, threat.359
	movl	-16556(%rbp), %r8d	# depth, tmp921
	movl	-16492(%rbp), %ecx	# sbest, tmp922
	movl	-16552(%rbp), %edx	# beta, tmp923
	movl	-16456(%rbp), %esi	# originalalpha, tmp924
	movl	-16488(%rbp), %eax	# best_score, tmp925
	movl	%r8d, %r9d	# tmp921,
	movl	%edi, %r8d	# threat.359,
	movl	%eax, %edi	# tmp925,
	call	StoreTT	#
	jmp	.L194	#
.L195:
	.loc 1 1091 0
	movl	-16524(%rbp), %ecx	# threat, threat.360
	movl	-16556(%rbp), %esi	# depth, tmp926
	movl	-16492(%rbp), %edx	# sbest, tmp927
	movl	-16488(%rbp), %eax	# best_score, tmp928
	movl	%esi, %r9d	# tmp926,
	movl	%ecx, %r8d	# threat.360,
	movl	%edx, %ecx	# tmp927,
	movl	$-1000000, %edx	#,
	movl	$-1000000, %esi	#,
	movl	%eax, %edi	# tmp928,
	call	StoreTT	#
.L194:
	.loc 1 1094 0
	movl	-16488(%rbp), %eax	# best_score, D.6295
.L196:
	.loc 1 1096 0
	addq	$16552, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	search, .-search
	.globl	search_root
	.type	search_root, @function
search_root:
.LFB7:
	.loc 1 1099 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16568, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16536(%rbp)	# .result_ptr, .result_ptr
	movl	%esi, -16540(%rbp)	# originalalpha, originalalpha
	movl	%edx, -16544(%rbp)	# originalbeta, originalbeta
	movl	%ecx, -16548(%rbp)	# depth, depth
	.loc 1 1103 0
	movq	dummy(%rip), %rax	# dummy, tmp309
	movq	%rax, -16464(%rbp)	# tmp309, best_move
	movq	dummy+8(%rip), %rax	# dummy, tmp310
	movq	%rax, -16456(%rbp)	# tmp310, best_move
	movq	dummy+16(%rip), %rax	# dummy, tmp311
	movq	%rax, -16448(%rbp)	# tmp311, best_move
	.loc 1 1105 0
	movl	$-1000000, -16504(%rbp)	#, root_score
	.loc 1 1111 0
	movl	$0, -16484(%rbp)	#, mc
	.loc 1 1114 0
	movl	-16540(%rbp), %eax	# originalalpha, tmp312
	movl	%eax, -16488(%rbp)	# tmp312, alpha
	.loc 1 1115 0
	movl	-16544(%rbp), %eax	# originalbeta, tmp313
	movl	%eax, -16480(%rbp)	# tmp313, beta
	.loc 1 1117 0
	movl	$0, -16512(%rbp)	#, num_moves
	.loc 1 1118 0
	movl	$1, -16500(%rbp)	#, no_moves
	.loc 1 1119 0
	movl	$1, ply(%rip)	#, ply
	.loc 1 1120 0
	movl	$1, searching_pv(%rip)	#, searching_pv
	.loc 1 1121 0
	movl	$0, time_exit(%rip)	#, time_exit
	.loc 1 1122 0
	movl	$0, time_failure(%rip)	#, time_failure
	.loc 1 1123 0
	movl	$1, -16492(%rbp)	#, first
	.loc 1 1124 0
	movl	$-1000000, cur_score(%rip)	#, cur_score
	.loc 1 1125 0
	movl	nodes(%rip), %eax	# nodes, nodes.361
	addl	$1, %eax	#, nodes.362
	movl	%eax, nodes(%rip)	# nodes.362, nodes
	.loc 1 1128 0
	call	is_draw	#
	testl	%eax, %eax	# D.6300
	je	.L200	#,
	.loc 1 1130 0
	movl	$5, result(%rip)	#, result
	.loc 1 1131 0
	movl	$0, cur_score(%rip)	#, cur_score
	.loc 1 1132 0
	movl	ply(%rip), %eax	# ply, ply.363
	cltq
	movl	$0, pv_length(,%rax,4)	#, pv_length
	.loc 1 1133 0
	movq	-16536(%rbp), %rax	# .result_ptr, tmp315
	movq	dummy(%rip), %rdx	# dummy, tmp317
	movq	%rdx, (%rax)	# tmp317, <retval>
	movq	dummy+8(%rip), %rdx	# dummy, tmp318
	movq	%rdx, 8(%rax)	# tmp318, <retval>
	movq	dummy+16(%rip), %rdx	# dummy, tmp319
	movq	%rdx, 16(%rax)	# tmp319, <retval>
	jmp	.L199	#
.L200:
	.loc 1 1136 0
	movl	ply(%rip), %eax	# ply, ply.364
	movl	ply(%rip), %edx	# ply, ply.365
	cltq
	movl	%edx, pv_length(,%rax,4)	# ply.365, pv_length
	.loc 1 1137 0
	movl	move_number(%rip), %edx	# move_number, move_number.366
	movl	ply(%rip), %eax	# ply, ply.367
	addl	%edx, %eax	# move_number.366, D.6301
	subl	$1, %eax	#, D.6301
	movl	hash(%rip), %edx	# hash, hash.368
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.368, hash_history
	.loc 1 1141 0
	call	in_check	#
	movl	%eax, -16476(%rbp)	# D.6300, incheck
	.loc 1 1143 0
	cmpl	$0, -16476(%rbp)	#, incheck
	je	.L202	#,
	.loc 1 1145 0
	movl	ext_check(%rip), %eax	# ext_check, ext_check.369
	addl	$1, %eax	#, ext_check.370
	movl	%eax, ext_check(%rip)	# ext_check.370, ext_check
	.loc 1 1146 0
	addl	$1, -16548(%rbp)	#, depth
.L202:
	.loc 1 1149 0
	movl	ply(%rip), %eax	# ply, ply.371
	movl	-16476(%rbp), %edx	# incheck, incheck.372
	cltq
	movl	%edx, checks(,%rax,4)	# incheck.372, checks
	.loc 1 1150 0
	movl	ply(%rip), %eax	# ply, ply.373
	cltq
	movl	$0, recaps(,%rax,4)	#, recaps
	.loc 1 1151 0
	movl	ply(%rip), %eax	# ply, ply.374
	cltq
	movl	$0, singular(,%rax,4)	#, singular
	.loc 1 1153 0
	movl	Variant(%rip), %eax	# Variant, Variant.375
	cmpl	$4, %eax	#, Variant.375
	jne	.L203	#,
	.loc 1 1155 0
	movl	$0, legals(%rip)	#, legals
	.loc 1 1156 0
	movl	$1, captures(%rip)	#, captures
	.loc 1 1157 0
	leaq	-12304(%rbp), %rax	#, tmp325
	movq	%rax, %rdi	# tmp325,
	call	gen	#
	.loc 1 1158 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp326
	movl	%eax, -16512(%rbp)	# tmp326, num_moves
	.loc 1 1159 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 1161 0
	cmpl	$0, -16512(%rbp)	#, num_moves
	je	.L204	#,
	.loc 1 1163 0
	movl	$0, -16516(%rbp)	#, i
	jmp	.L205	#
.L207:
	.loc 1 1165 0
	movl	-16516(%rbp), %edx	# i, i.376
	leaq	-12304(%rbp), %rax	#, tmp327
	movl	%edx, %esi	# i.376,
	movq	%rax, %rdi	# tmp327,
	call	make	#
	.loc 1 1166 0
	movl	-16516(%rbp), %ecx	# i, i.377
	movl	-16476(%rbp), %edx	# incheck, tmp328
	leaq	-12304(%rbp), %rax	#, tmp329
	movl	%ecx, %esi	# i.377,
	movq	%rax, %rdi	# tmp329,
	call	check_legal	#
	testl	%eax, %eax	# D.6300
	je	.L206	#,
	.loc 1 1168 0
	movl	legals(%rip), %eax	# legals, legals.378
	addl	$1, %eax	#, legals.379
	movl	%eax, legals(%rip)	# legals.379, legals
.L206:
	.loc 1 1170 0
	movl	-16516(%rbp), %edx	# i, i.380
	leaq	-12304(%rbp), %rax	#, tmp330
	movl	%edx, %esi	# i.380,
	movq	%rax, %rdi	# tmp330,
	call	unmake	#
	.loc 1 1163 0
	movl	-16516(%rbp), %eax	# i, i.381
	addl	$1, %eax	#, i.382
	movl	%eax, -16516(%rbp)	# i.382, i
.L205:
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.383
	cmpl	-16512(%rbp), %eax	# num_moves, i.383
	jl	.L207	#,
.L204:
	.loc 1 1174 0 is_stmt 1
	movl	legals(%rip), %eax	# legals, legals.384
	testl	%eax, %eax	# legals.384
	jne	.L208	#,
	.loc 1 1176 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 1177 0
	leaq	-12304(%rbp), %rax	#, tmp331
	movq	%rax, %rdi	# tmp331,
	call	gen	#
	.loc 1 1178 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp332
	movl	%eax, -16512(%rbp)	# tmp332, num_moves
	.loc 1 1180 0
	movl	$0, -16516(%rbp)	#, i
	jmp	.L209	#
.L211:
	.loc 1 1182 0
	movl	-16516(%rbp), %edx	# i, i.385
	leaq	-12304(%rbp), %rax	#, tmp333
	movl	%edx, %esi	# i.385,
	movq	%rax, %rdi	# tmp333,
	call	make	#
	.loc 1 1183 0
	movl	-16516(%rbp), %ecx	# i, i.386
	movl	-16476(%rbp), %edx	# incheck, tmp334
	leaq	-12304(%rbp), %rax	#, tmp335
	movl	%ecx, %esi	# i.386,
	movq	%rax, %rdi	# tmp335,
	call	check_legal	#
	testl	%eax, %eax	# D.6300
	je	.L210	#,
	.loc 1 1185 0
	movl	legals(%rip), %eax	# legals, legals.387
	addl	$1, %eax	#, legals.388
	movl	%eax, legals(%rip)	# legals.388, legals
.L210:
	.loc 1 1187 0
	movl	-16516(%rbp), %edx	# i, i.389
	leaq	-12304(%rbp), %rax	#, tmp336
	movl	%edx, %esi	# i.389,
	movq	%rax, %rdi	# tmp336,
	call	unmake	#
	.loc 1 1180 0
	movl	-16516(%rbp), %eax	# i, i.390
	addl	$1, %eax	#, i.391
	movl	%eax, -16516(%rbp)	# i.391, i
.L209:
	.loc 1 1180 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.392
	cmpl	-16512(%rbp), %eax	# num_moves, i.392
	jl	.L211	#,
	jmp	.L208	#
.L203:
	.loc 1 1195 0 is_stmt 1
	leaq	-12304(%rbp), %rax	#, tmp337
	movq	%rax, %rdi	# tmp337,
	call	gen	#
	.loc 1 1196 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp338
	movl	%eax, -16512(%rbp)	# tmp338, num_moves
.L208:
	.loc 1 1199 0
	movl	legals(%rip), %eax	# legals, legals.393
	movl	%eax, movetotal(%rip)	# legals.393, movetotal
	.loc 1 1201 0
	movl	-16512(%rbp), %ecx	# num_moves, tmp339
	leaq	-14352(%rbp), %rdx	#, tmp340
	leaq	-16400(%rbp), %rsi	#, tmp341
	leaq	-12304(%rbp), %rax	#, tmp342
	movl	$-1, %r8d	#,
	movq	%rax, %rdi	# tmp342,
	call	order_moves	#
	.loc 1 1204 0
	jmp	.L212	#
.L243:
	.loc 1 1206 0
	movl	alllosers(%rip), %eax	# alllosers, alllosers.394
	testl	%eax, %eax	# alllosers.394
	jne	.L213	#,
	.loc 1 1206 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.395
	cltq
	movl	rootlosers(,%rax,4), %eax	# rootlosers, D.6301
	testl	%eax, %eax	# D.6301
	je	.L213	#,
	movl	Variant(%rip), %eax	# Variant, Variant.396
	cmpl	$4, %eax	#, Variant.396
	je	.L214	#,
	.loc 1 1206 0 discriminator 2
	movl	Variant(%rip), %eax	# Variant, Variant.397
	cmpl	$3, %eax	#, Variant.397
	jne	.L213	#,
.L214:
	.loc 1 1206 0 discriminator 1
	jmp	.L212	#
.L213:
	.loc 1 1208 0 is_stmt 1
	movl	-16516(%rbp), %edx	# i, i.398
	leaq	-12304(%rbp), %rax	#, tmp344
	movl	%edx, %esi	# i.398,
	movq	%rax, %rdi	# tmp344,
	call	make	#
	.loc 1 1209 0
	movl	$0, -16496(%rbp)	#, legal_move
	.loc 1 1211 0
	movl	move_number(%rip), %edx	# move_number, move_number.399
	movl	ply(%rip), %eax	# ply, ply.400
	addl	%edx, %eax	# move_number.399, D.6301
	subl	$1, %eax	#, D.6301
	movl	hash(%rip), %edx	# hash, hash.401
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.401, hash_history
	.loc 1 1212 0
	movl	ply(%rip), %eax	# ply, ply.402
	subl	$1, %eax	#, D.6301
	movl	-16516(%rbp), %ecx	# i, i.403
	movslq	%eax, %rdx	# D.6301, tmp346
	movq	%rdx, %rax	# tmp346, tmp347
	addq	%rax, %rax	# tmp347
	addq	%rdx, %rax	# tmp346, tmp347
	salq	$3, %rax	#, tmp348
	leaq	path(%rax), %rdx	#, tmp349
	movslq	%ecx, %rcx	# i.403, tmp350
	movq	%rcx, %rax	# tmp350, tmp351
	addq	%rax, %rax	# tmp351
	addq	%rcx, %rax	# tmp350, tmp351
	salq	$3, %rax	#, tmp352
	leaq	-16(%rbp), %rbx	#, tmp777
	addq	%rbx, %rax	# tmp777, tmp353
	subq	$12288, %rax	#, tmp354
	movq	(%rax), %rcx	# moves, tmp355
	movq	%rcx, (%rdx)	# tmp355, path
	movq	8(%rax), %rcx	# moves, tmp356
	movq	%rcx, 8(%rdx)	# tmp356, path
	movq	16(%rax), %rax	# moves, tmp357
	movq	%rax, 16(%rdx)	# tmp357, path
	.loc 1 1214 0
	movl	nodes(%rip), %eax	# nodes, tmp358
	movl	%eax, -16472(%rbp)	# tmp358, oldnodecount
	.loc 1 1217 0
	movl	-16516(%rbp), %ecx	# i, i.404
	movl	-16476(%rbp), %edx	# incheck, tmp359
	leaq	-12304(%rbp), %rax	#, tmp360
	movl	%ecx, %esi	# i.404,
	movq	%rax, %rdi	# tmp360,
	call	check_legal	#
	testl	%eax, %eax	# D.6300
	je	.L215	#,
	.loc 1 1219 0
	movl	-16516(%rbp), %edx	# i, i.405
	leaq	-12304(%rbp), %rax	#, tmp361
	movl	%edx, %esi	# i.405,
	movq	%rax, %rdi	# tmp361,
	call	unmake	#
	.loc 1 1220 0
	addl	$1, -16484(%rbp)	#, mc
	.loc 1 1221 0
	movl	movetotal(%rip), %eax	# movetotal, movetotal.406
	subl	-16484(%rbp), %eax	# mc, moveleft.407
	movl	%eax, moveleft(%rip)	# moveleft.407, moveleft
	.loc 1 1222 0
	movl	-16516(%rbp), %eax	# i, i.408
	movslq	%eax, %rdx	# i.408, tmp362
	movq	%rdx, %rax	# tmp362, tmp363
	addq	%rax, %rax	# tmp363
	addq	%rdx, %rax	# tmp362, tmp363
	salq	$3, %rax	#, tmp364
	leaq	-16(%rbp), %rbx	#, tmp778
	addq	%rbx, %rax	# tmp778, tmp365
	subq	$12288, %rax	#, tmp366
	movq	(%rax), %rdx	# moves, tmp367
	movq	%rdx, (%rsp)	# tmp367,
	movq	8(%rax), %rdx	# moves, tmp368
	movq	%rdx, 8(%rsp)	# tmp368,
	movq	16(%rax), %rax	# moves, tmp369
	movq	%rax, 16(%rsp)	# tmp369,
	movl	$searching_move, %edi	#,
	call	comp_to_san	#
	.loc 1 1223 0
	movl	-16516(%rbp), %edx	# i, i.409
	leaq	-12304(%rbp), %rax	#, tmp370
	movl	%edx, %esi	# i.409,
	movq	%rax, %rdi	# tmp370,
	call	make	#
	.loc 1 1225 0
	movl	ply(%rip), %ebx	# ply, ply.410
	movl	-16516(%rbp), %edx	# i, i.411
	leaq	-12304(%rbp), %rax	#, tmp371
	movl	%edx, %esi	# i.411,
	movq	%rax, %rdi	# tmp371,
	call	f_in_check	#
	movslq	%ebx, %rdx	# ply.410, tmp372
	movl	%eax, checks(,%rdx,4)	# D.6300, checks
	.loc 1 1226 0
	movl	ply(%rip), %eax	# ply, ply.412
	cltq
	movl	$0, recaps(,%rax,4)	#, recaps
	.loc 1 1227 0
	movl	ply(%rip), %eax	# ply, ply.413
	cltq
	movl	$0, singular(,%rax,4)	#, singular
	.loc 1 1229 0
	cmpl	$1, -16492(%rbp)	#, first
	je	.L216	#,
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.414
	cmpl	$1, %eax	#, i_depth.414
	jg	.L217	#,
.L216:
	.loc 1 1231 0 is_stmt 1
	movl	-16548(%rbp), %eax	# depth, tmp375
	leal	-1(%rax), %edx	#, D.6301
	movl	-16488(%rbp), %eax	# alpha, tmp376
	negl	%eax	# D.6301
	movl	%eax, %esi	# D.6301, D.6301
	movl	-16480(%rbp), %eax	# beta, tmp377
	negl	%eax	# D.6301
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6301,
	call	search	#
	negl	%eax	# tmp378
	movl	%eax, -16504(%rbp)	# tmp378, root_score
	.loc 1 1233 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.415
	testl	%eax, %eax	# time_exit.415
	jne	.L218	#,
	.loc 1 1233 0 is_stmt 0 discriminator 1
	movl	post(%rip), %eax	# post, post.416
	testl	%eax, %eax	# post.416
	jne	.L219	#,
	.loc 1 1233 0 discriminator 2
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.417
	testl	%eax, %eax	# xb_mode.417
	jne	.L218	#,
.L219:
	.loc 1 1233 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.418
	cmpl	$1, %eax	#, i_depth.418
	jle	.L218	#,
	.loc 1 1235 0 is_stmt 1
	movl	-16504(%rbp), %eax	# root_score, tmp379
	cmpl	-16480(%rbp), %eax	# beta, tmp379
	jl	.L220	#,
	.loc 1 1237 0
	movl	-16516(%rbp), %eax	# i, i.419
	leaq	-12304(%rbp), %rcx	#, tmp380
	movslq	%eax, %rdx	# i.419, tmp381
	movq	%rdx, %rax	# tmp381, tmp382
	addq	%rax, %rax	# tmp382
	addq	%rdx, %rax	# tmp381, tmp382
	salq	$3, %rax	#, tmp383
	leaq	(%rcx,%rax), %rdx	#, D.6302
	movl	-16504(%rbp), %eax	# root_score, tmp384
	movq	%rdx, %rsi	# D.6302,
	movl	%eax, %edi	# tmp384,
	call	post_fh_thinking	#
	jmp	.L221	#
.L220:
	.loc 1 1239 0
	movl	-16504(%rbp), %eax	# root_score, tmp385
	cmpl	-16488(%rbp), %eax	# alpha, tmp385
	jg	.L222	#,
	.loc 1 1241 0
	movl	$1, failed(%rip)	#, failed
	.loc 1 1243 0
	movl	-16516(%rbp), %eax	# i, i.420
	leaq	-12304(%rbp), %rcx	#, tmp386
	movslq	%eax, %rdx	# i.420, tmp387
	movq	%rdx, %rax	# tmp387, tmp388
	addq	%rax, %rax	# tmp388
	addq	%rdx, %rax	# tmp387, tmp388
	salq	$3, %rax	#, tmp389
	leaq	(%rcx,%rax), %rdx	#, D.6302
	movl	-16504(%rbp), %eax	# root_score, tmp390
	movq	%rdx, %rsi	# D.6302,
	movl	%eax, %edi	# tmp390,
	call	post_fl_thinking	#
	jmp	.L221	#
.L222:
	.loc 1 1248 0
	movl	ply(%rip), %eax	# ply, ply.421
	leal	-1(%rax), %esi	#, D.6301
	movl	ply(%rip), %eax	# ply, ply.422
	subl	$1, %eax	#, D.6301
	movl	-16516(%rbp), %ecx	# i, i.423
	movslq	%eax, %rdx	# D.6301, tmp391
	movslq	%esi, %rsi	# D.6301, tmp392
	movq	%rdx, %rax	# tmp391, tmp393
	addq	%rax, %rax	# tmp393
	addq	%rdx, %rax	# tmp391, tmp393
	salq	$3, %rax	#, tmp394
	imulq	$7200, %rsi, %rdx	#, tmp392, tmp395
	addq	%rdx, %rax	# tmp395, tmp396
	leaq	pv(%rax), %rdx	#, tmp397
	movslq	%ecx, %rcx	# i.423, tmp398
	movq	%rcx, %rax	# tmp398, tmp399
	addq	%rax, %rax	# tmp399
	addq	%rcx, %rax	# tmp398, tmp399
	salq	$3, %rax	#, tmp400
	leaq	-16(%rbp), %rbx	#, tmp780
	addq	%rbx, %rax	# tmp780, tmp401
	subq	$12288, %rax	#, tmp402
	movq	(%rax), %rcx	# moves, tmp403
	movq	%rcx, (%rdx)	# tmp403, pv
	movq	8(%rax), %rcx	# moves, tmp404
	movq	%rcx, 8(%rdx)	# tmp404, pv
	movq	16(%rax), %rax	# moves, tmp405
	movq	%rax, 16(%rdx)	# tmp405, pv
	.loc 1 1249 0
	movl	ply(%rip), %eax	# ply, tmp406
	movl	%eax, -16508(%rbp)	# tmp406, j
	jmp	.L223	#
.L224:
	.loc 1 1250 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.424
	leal	-1(%rax), %ecx	#, D.6301
	movl	ply(%rip), %esi	# ply, ply.425
	movl	-16508(%rbp), %eax	# j, tmp408
	movslq	%eax, %rdx	# tmp408, tmp407
	movslq	%ecx, %rcx	# D.6301, tmp409
	movq	%rdx, %rax	# tmp407, tmp410
	addq	%rax, %rax	# tmp410
	addq	%rdx, %rax	# tmp407, tmp410
	salq	$3, %rax	#, tmp411
	imulq	$7200, %rcx, %rdx	#, tmp409, tmp412
	addq	%rdx, %rax	# tmp412, tmp413
	leaq	pv(%rax), %rdx	#, tmp414
	movl	-16508(%rbp), %eax	# j, tmp416
	movslq	%eax, %rcx	# tmp416, tmp415
	movslq	%esi, %rsi	# ply.425, tmp417
	movq	%rcx, %rax	# tmp415, tmp418
	addq	%rax, %rax	# tmp418
	addq	%rcx, %rax	# tmp415, tmp418
	salq	$3, %rax	#, tmp419
	imulq	$7200, %rsi, %rcx	#, tmp417, tmp420
	addq	%rcx, %rax	# tmp420, tmp421
	addq	$pv, %rax	#, tmp422
	movq	(%rax), %rcx	# pv, tmp423
	movq	%rcx, (%rdx)	# tmp423, pv
	movq	8(%rax), %rcx	# pv, tmp424
	movq	%rcx, 8(%rdx)	# tmp424, pv
	movq	16(%rax), %rax	# pv, tmp425
	movq	%rax, 16(%rdx)	# tmp425, pv
	.loc 1 1249 0 discriminator 2
	addl	$1, -16508(%rbp)	#, j
.L223:
	.loc 1 1249 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.426
	cltq
	movl	pv_length(,%rax,4), %eax	# pv_length, D.6301
	cmpl	-16508(%rbp), %eax	# j, D.6301
	jg	.L224	#,
	.loc 1 1251 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.427
	leal	-1(%rax), %ecx	#, D.6301
	movl	ply(%rip), %eax	# ply, ply.428
	cltq
	movl	pv_length(,%rax,4), %edx	# pv_length, D.6301
	movslq	%ecx, %rax	# D.6301, tmp428
	movl	%edx, pv_length(,%rax,4)	# D.6301, pv_length
	.loc 1 1253 0
	movl	-16504(%rbp), %eax	# root_score, tmp429
	movl	%eax, %edi	# tmp429,
	call	post_thinking	#
.L221:
	.loc 1 1256 0
	movl	cur_score(%rip), %eax	# cur_score, cur_score.429
	cmpl	%eax, -16504(%rbp)	# cur_score.429, root_score
	jle	.L218	#,
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.430
	testl	%eax, %eax	# time_exit.430
	jne	.L218	#,
	.loc 1 1258 0 is_stmt 1
	movl	-16504(%rbp), %eax	# root_score, tmp430
	movl	%eax, cur_score(%rip)	# tmp430, cur_score
	.loc 1 1259 0
	movl	-16516(%rbp), %eax	# i, i.431
	movl	%eax, bestmovenum(%rip)	# i.431, bestmovenum
	.loc 1 1260 0
	movl	-16516(%rbp), %eax	# i, i.432
	movslq	%eax, %rdx	# i.432, tmp431
	movq	%rdx, %rax	# tmp431, tmp432
	addq	%rax, %rax	# tmp432
	addq	%rdx, %rax	# tmp431, tmp432
	salq	$3, %rax	#, tmp433
	leaq	-16(%rbp), %rbx	#, tmp781
	addq	%rbx, %rax	# tmp781, tmp434
	subq	$12288, %rax	#, tmp435
	movq	(%rax), %rdx	# moves, tmp436
	movq	%rdx, -16464(%rbp)	# tmp436, best_move
	movq	8(%rax), %rdx	# moves, tmp437
	movq	%rdx, -16456(%rbp)	# tmp437, best_move
	movq	16(%rax), %rax	# moves, tmp438
	movq	%rax, -16448(%rbp)	# tmp438, best_move
	.loc 1 1233 0
	jmp	.L225	#
.L218:
	.loc 1 1233 0 is_stmt 0 discriminator 2
	jmp	.L225	#
.L217:
	.loc 1 1267 0 is_stmt 1
	movl	-16548(%rbp), %eax	# depth, tmp439
	leal	-1(%rax), %edx	#, D.6301
	movl	-16488(%rbp), %eax	# alpha, tmp440
	negl	%eax	# D.6301
	movl	%eax, %esi	# D.6301, D.6301
	movl	-16488(%rbp), %eax	# alpha, tmp441
	notl	%eax	# D.6301
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6301,
	call	search	#
	negl	%eax	# tmp442
	movl	%eax, -16504(%rbp)	# tmp442, root_score
	.loc 1 1269 0
	movl	-16504(%rbp), %eax	# root_score, tmp443
	cmpl	-16488(%rbp), %eax	# alpha, tmp443
	jle	.L226	#,
	.loc 1 1269 0 is_stmt 0 discriminator 1
	movl	-16504(%rbp), %eax	# root_score, tmp444
	cmpl	-16480(%rbp), %eax	# beta, tmp444
	jge	.L226	#,
	movl	time_exit(%rip), %eax	# time_exit, time_exit.433
	testl	%eax, %eax	# time_exit.433
	jne	.L226	#,
	.loc 1 1271 0 is_stmt 1
	movl	-16516(%rbp), %eax	# i, i.434
	leaq	-12304(%rbp), %rcx	#, tmp445
	movslq	%eax, %rdx	# i.434, tmp446
	movq	%rdx, %rax	# tmp446, tmp447
	addq	%rax, %rax	# tmp447
	addq	%rdx, %rax	# tmp446, tmp447
	salq	$3, %rax	#, tmp448
	leaq	(%rcx,%rax), %rdx	#, D.6302
	movl	-16504(%rbp), %eax	# root_score, tmp449
	movq	%rdx, %rsi	# D.6302,
	movl	%eax, %edi	# tmp449,
	call	post_fail_thinking	#
	.loc 1 1273 0
	movl	-16548(%rbp), %eax	# depth, tmp450
	leal	-1(%rax), %edx	#, D.6301
	movl	-16488(%rbp), %eax	# alpha, tmp451
	negl	%eax	# D.6301
	movl	%eax, %esi	# D.6301, D.6301
	movl	-16480(%rbp), %eax	# beta, tmp452
	negl	%eax	# D.6301
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6301,
	call	search	#
	negl	%eax	# tmp453
	movl	%eax, -16504(%rbp)	# tmp453, root_score
	.loc 1 1275 0
	movl	-16504(%rbp), %eax	# root_score, tmp454
	cmpl	-16488(%rbp), %eax	# alpha, tmp454
	jle	.L226	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.435
	testl	%eax, %eax	# time_exit.435
	jne	.L226	#,
	.loc 1 1277 0 is_stmt 1
	movl	$0, failed(%rip)	#, failed
	.loc 1 1279 0
	movl	-16504(%rbp), %eax	# root_score, tmp455
	movl	%eax, cur_score(%rip)	# tmp455, cur_score
	.loc 1 1280 0
	movl	-16516(%rbp), %eax	# i, i.436
	movl	%eax, bestmovenum(%rip)	# i.436, bestmovenum
	.loc 1 1281 0
	movl	-16516(%rbp), %eax	# i, i.437
	movslq	%eax, %rdx	# i.437, tmp456
	movq	%rdx, %rax	# tmp456, tmp457
	addq	%rax, %rax	# tmp457
	addq	%rdx, %rax	# tmp456, tmp457
	salq	$3, %rax	#, tmp458
	leaq	-16(%rbp), %rbx	#, tmp784
	addq	%rbx, %rax	# tmp784, tmp459
	subq	$12288, %rax	#, tmp460
	movq	(%rax), %rdx	# moves, tmp461
	movq	%rdx, -16464(%rbp)	# tmp461, best_move
	movq	8(%rax), %rdx	# moves, tmp462
	movq	%rdx, -16456(%rbp)	# tmp462, best_move
	movq	16(%rax), %rax	# moves, tmp463
	movq	%rax, -16448(%rbp)	# tmp463, best_move
	.loc 1 1283 0
	movl	-16504(%rbp), %eax	# root_score, tmp464
	cmpl	-16480(%rbp), %eax	# beta, tmp464
	jge	.L226	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.438
	cmpl	$1, %eax	#, i_depth.438
	jle	.L226	#,
	.loc 1 1286 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.439
	leal	-1(%rax), %esi	#, D.6301
	movl	ply(%rip), %eax	# ply, ply.440
	subl	$1, %eax	#, D.6301
	movl	-16516(%rbp), %ecx	# i, i.441
	movslq	%eax, %rdx	# D.6301, tmp465
	movslq	%esi, %rsi	# D.6301, tmp466
	movq	%rdx, %rax	# tmp465, tmp467
	addq	%rax, %rax	# tmp467
	addq	%rdx, %rax	# tmp465, tmp467
	salq	$3, %rax	#, tmp468
	imulq	$7200, %rsi, %rdx	#, tmp466, tmp469
	addq	%rdx, %rax	# tmp469, tmp470
	leaq	pv(%rax), %rdx	#, tmp471
	movslq	%ecx, %rcx	# i.441, tmp472
	movq	%rcx, %rax	# tmp472, tmp473
	addq	%rax, %rax	# tmp473
	addq	%rcx, %rax	# tmp472, tmp473
	salq	$3, %rax	#, tmp474
	leaq	-16(%rbp), %rbx	#, tmp785
	addq	%rbx, %rax	# tmp785, tmp475
	subq	$12288, %rax	#, tmp476
	movq	(%rax), %rcx	# moves, tmp477
	movq	%rcx, (%rdx)	# tmp477, pv
	movq	8(%rax), %rcx	# moves, tmp478
	movq	%rcx, 8(%rdx)	# tmp478, pv
	movq	16(%rax), %rax	# moves, tmp479
	movq	%rax, 16(%rdx)	# tmp479, pv
	.loc 1 1287 0
	movl	ply(%rip), %eax	# ply, tmp480
	movl	%eax, -16508(%rbp)	# tmp480, j
	jmp	.L227	#
.L228:
	.loc 1 1288 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.442
	leal	-1(%rax), %ecx	#, D.6301
	movl	ply(%rip), %esi	# ply, ply.443
	movl	-16508(%rbp), %eax	# j, tmp482
	movslq	%eax, %rdx	# tmp482, tmp481
	movslq	%ecx, %rcx	# D.6301, tmp483
	movq	%rdx, %rax	# tmp481, tmp484
	addq	%rax, %rax	# tmp484
	addq	%rdx, %rax	# tmp481, tmp484
	salq	$3, %rax	#, tmp485
	imulq	$7200, %rcx, %rdx	#, tmp483, tmp486
	addq	%rdx, %rax	# tmp486, tmp487
	leaq	pv(%rax), %rdx	#, tmp488
	movl	-16508(%rbp), %eax	# j, tmp490
	movslq	%eax, %rcx	# tmp490, tmp489
	movslq	%esi, %rsi	# ply.443, tmp491
	movq	%rcx, %rax	# tmp489, tmp492
	addq	%rax, %rax	# tmp492
	addq	%rcx, %rax	# tmp489, tmp492
	salq	$3, %rax	#, tmp493
	imulq	$7200, %rsi, %rcx	#, tmp491, tmp494
	addq	%rcx, %rax	# tmp494, tmp495
	addq	$pv, %rax	#, tmp496
	movq	(%rax), %rcx	# pv, tmp497
	movq	%rcx, (%rdx)	# tmp497, pv
	movq	8(%rax), %rcx	# pv, tmp498
	movq	%rcx, 8(%rdx)	# tmp498, pv
	movq	16(%rax), %rax	# pv, tmp499
	movq	%rax, 16(%rdx)	# tmp499, pv
	.loc 1 1287 0 discriminator 2
	addl	$1, -16508(%rbp)	#, j
.L227:
	.loc 1 1287 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.444
	cltq
	movl	pv_length(,%rax,4), %eax	# pv_length, D.6301
	cmpl	-16508(%rbp), %eax	# j, D.6301
	jg	.L228	#,
	.loc 1 1289 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.445
	leal	-1(%rax), %ecx	#, D.6301
	movl	ply(%rip), %eax	# ply, ply.446
	cltq
	movl	pv_length(,%rax,4), %edx	# pv_length, D.6301
	movslq	%ecx, %rax	# D.6301, tmp502
	movl	%edx, pv_length(,%rax,4)	# D.6301, pv_length
.L226:
	.loc 1 1294 0
	movl	-16504(%rbp), %eax	# root_score, tmp503
	cmpl	-16480(%rbp), %eax	# beta, tmp503
	jl	.L225	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.447
	testl	%eax, %eax	# time_exit.447
	jne	.L225	#,
	.loc 1 1295 0 is_stmt 1
	movl	-16516(%rbp), %eax	# i, i.448
	leaq	-12304(%rbp), %rcx	#, tmp504
	movslq	%eax, %rdx	# i.448, tmp505
	movq	%rdx, %rax	# tmp505, tmp506
	addq	%rax, %rax	# tmp506
	addq	%rdx, %rax	# tmp505, tmp506
	salq	$3, %rax	#, tmp507
	leaq	(%rcx,%rax), %rdx	#, D.6302
	movl	-16504(%rbp), %eax	# root_score, tmp508
	movq	%rdx, %rsi	# D.6302,
	movl	%eax, %edi	# tmp508,
	call	post_fh_thinking	#
.L225:
	.loc 1 1298 0
	movl	cur_score(%rip), %eax	# cur_score, cur_score.449
	cmpl	%eax, -16504(%rbp)	# cur_score.449, root_score
	jle	.L229	#,
	.loc 1 1298 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.450
	testl	%eax, %eax	# time_exit.450
	jne	.L229	#,
	.loc 1 1300 0 is_stmt 1
	movl	-16504(%rbp), %eax	# root_score, tmp509
	movl	%eax, cur_score(%rip)	# tmp509, cur_score
	.loc 1 1301 0
	movl	-16516(%rbp), %eax	# i, i.451
	movl	%eax, bestmovenum(%rip)	# i.451, bestmovenum
	.loc 1 1302 0
	movl	-16516(%rbp), %eax	# i, i.452
	movslq	%eax, %rdx	# i.452, tmp510
	movq	%rdx, %rax	# tmp510, tmp511
	addq	%rax, %rax	# tmp511
	addq	%rdx, %rax	# tmp510, tmp511
	salq	$3, %rax	#, tmp512
	leaq	-16(%rbp), %rbx	#, tmp786
	addq	%rbx, %rax	# tmp786, tmp513
	subq	$12288, %rax	#, tmp514
	movq	(%rax), %rdx	# moves, tmp515
	movq	%rdx, -16464(%rbp)	# tmp515, best_move
	movq	8(%rax), %rdx	# moves, tmp516
	movq	%rdx, -16456(%rbp)	# tmp516, best_move
	movq	16(%rax), %rax	# moves, tmp517
	movq	%rax, -16448(%rbp)	# tmp517, best_move
.L229:
	.loc 1 1309 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.453
	testl	%eax, %eax	# time_exit.453
	je	.L230	#,
	.loc 1 1309 0 is_stmt 0 discriminator 1
	movl	cur_score(%rip), %eax	# cur_score, cur_score.454
	cmpl	$-1000000, %eax	#, cur_score.454
	jne	.L230	#,
	.loc 1 1311 0 is_stmt 1
	cmpl	$0, -16500(%rbp)	#, no_moves
	je	.L230	#,
	.loc 1 1312 0
	movl	$1, time_failure(%rip)	#, time_failure
.L230:
	.loc 1 1315 0
	movl	$0, -16500(%rbp)	#, no_moves
	.loc 1 1316 0
	movl	$1, -16496(%rbp)	#, legal_move
.L215:
	.loc 1 1320 0
	movl	-16516(%rbp), %edx	# i, i.455
	leaq	-12304(%rbp), %rax	#, tmp518
	movl	%edx, %esi	# i.455,
	movq	%rax, %rdi	# tmp518,
	call	unmake	#
	.loc 1 1323 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.456
	testl	%eax, %eax	# time_exit.456
	je	.L231	#,
	.loc 1 1324 0
	movq	-16536(%rbp), %rax	# .result_ptr, tmp519
	movq	-16464(%rbp), %rdx	# best_move, tmp520
	movq	%rdx, (%rax)	# tmp520, <retval>
	movq	-16456(%rbp), %rdx	# best_move, tmp521
	movq	%rdx, 8(%rax)	# tmp521, <retval>
	movq	-16448(%rbp), %rdx	# best_move, tmp522
	movq	%rdx, 16(%rax)	# tmp522, <retval>
	jmp	.L199	#
.L231:
	.loc 1 1327 0
	movl	-16504(%rbp), %eax	# root_score, tmp523
	cmpl	-16488(%rbp), %eax	# alpha, tmp523
	jle	.L232	#,
	.loc 1 1327 0 is_stmt 0 discriminator 1
	cmpl	$0, -16496(%rbp)	#, legal_move
	je	.L232	#,
	.loc 1 1331 0 is_stmt 1
	movl	-16516(%rbp), %eax	# i, i.457
	movslq	%eax, %rdx	# i.457, tmp524
	movq	%rdx, %rax	# tmp524, tmp525
	addq	%rax, %rax	# tmp525
	addq	%rdx, %rax	# tmp524, tmp525
	salq	$3, %rax	#, tmp526
	leaq	-16(%rbp), %rbx	#, tmp787
	addq	%rbx, %rax	# tmp787, tmp527
	subq	$12288, %rax	#, tmp528
	movl	(%rax), %ecx	# moves[i.457_183].from, D.6301
	movl	ply(%rip), %eax	# ply, ply.458
	movslq	%eax, %rdx	# ply.458, tmp529
	movq	%rdx, %rax	# tmp529, tmp530
	addq	%rax, %rax	# tmp530
	addq	%rdx, %rax	# tmp529, tmp530
	salq	$3, %rax	#, tmp531
	addq	$killer1, %rax	#, tmp532
	movl	(%rax), %eax	# killer1[ply.458_185].from, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L233	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.459
	movslq	%eax, %rdx	# i.459, tmp533
	movq	%rdx, %rax	# tmp533, tmp534
	addq	%rax, %rax	# tmp534
	addq	%rdx, %rax	# tmp533, tmp534
	salq	$3, %rax	#, tmp535
	leaq	-16(%rbp), %rbx	#, tmp788
	addq	%rbx, %rax	# tmp788, tmp536
	subq	$12288, %rax	#, tmp537
	movl	4(%rax), %ecx	# moves[i.459_187].target, D.6301
	.loc 1 1332 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.460
	movslq	%eax, %rdx	# ply.460, tmp538
	movq	%rdx, %rax	# tmp538, tmp539
	addq	%rax, %rax	# tmp539
	addq	%rdx, %rax	# tmp538, tmp539
	salq	$3, %rax	#, tmp540
	addq	$killer1+4, %rax	#, tmp541
	movl	(%rax), %eax	# killer1[ply.460_189].target, D.6301
	.loc 1 1331 0 discriminator 1
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L233	#,
	.loc 1 1332 0
	movl	-16516(%rbp), %eax	# i, i.461
	movslq	%eax, %rdx	# i.461, tmp542
	movq	%rdx, %rax	# tmp542, tmp543
	addq	%rax, %rax	# tmp543
	addq	%rdx, %rax	# tmp542, tmp543
	salq	$3, %rax	#, tmp544
	leaq	-16(%rbp), %rbx	#, tmp789
	addq	%rbx, %rax	# tmp789, tmp545
	subq	$12288, %rax	#, tmp546
	movl	12(%rax), %ecx	# moves[i.461_191].promoted, D.6301
	movl	ply(%rip), %eax	# ply, ply.462
	movslq	%eax, %rdx	# ply.462, tmp547
	movq	%rdx, %rax	# tmp547, tmp548
	addq	%rax, %rax	# tmp548
	addq	%rdx, %rax	# tmp547, tmp548
	salq	$3, %rax	#, tmp549
	addq	$killer1+12, %rax	#, tmp550
	movl	(%rax), %eax	# killer1[ply.462_193].promoted, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L233	#,
	.loc 1 1334 0
	movl	ply(%rip), %eax	# ply, ply.463
	movslq	%eax, %rdx	# ply.463, tmp551
	movl	killer_scores(,%rdx,4), %edx	# killer_scores, D.6301
	addl	$1, %edx	#, D.6301
	cltq
	movl	%edx, killer_scores(,%rax,4)	# D.6301, killer_scores
	jmp	.L234	#
.L233:
	.loc 1 1336 0
	movl	-16516(%rbp), %eax	# i, i.464
	movslq	%eax, %rdx	# i.464, tmp553
	movq	%rdx, %rax	# tmp553, tmp554
	addq	%rax, %rax	# tmp554
	addq	%rdx, %rax	# tmp553, tmp554
	salq	$3, %rax	#, tmp555
	leaq	-16(%rbp), %rbx	#, tmp790
	addq	%rbx, %rax	# tmp790, tmp556
	subq	$12288, %rax	#, tmp557
	movl	(%rax), %ecx	# moves[i.464_198].from, D.6301
	movl	ply(%rip), %eax	# ply, ply.465
	movslq	%eax, %rdx	# ply.465, tmp558
	movq	%rdx, %rax	# tmp558, tmp559
	addq	%rax, %rax	# tmp559
	addq	%rdx, %rax	# tmp558, tmp559
	salq	$3, %rax	#, tmp560
	addq	$killer2, %rax	#, tmp561
	movl	(%rax), %eax	# killer2[ply.465_200].from, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L235	#,
	.loc 1 1336 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.466
	movslq	%eax, %rdx	# i.466, tmp562
	movq	%rdx, %rax	# tmp562, tmp563
	addq	%rax, %rax	# tmp563
	addq	%rdx, %rax	# tmp562, tmp563
	salq	$3, %rax	#, tmp564
	leaq	-16(%rbp), %rbx	#, tmp791
	addq	%rbx, %rax	# tmp791, tmp565
	subq	$12288, %rax	#, tmp566
	movl	4(%rax), %ecx	# moves[i.466_202].target, D.6301
	.loc 1 1337 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.467
	movslq	%eax, %rdx	# ply.467, tmp567
	movq	%rdx, %rax	# tmp567, tmp568
	addq	%rax, %rax	# tmp568
	addq	%rdx, %rax	# tmp567, tmp568
	salq	$3, %rax	#, tmp569
	addq	$killer2+4, %rax	#, tmp570
	movl	(%rax), %eax	# killer2[ply.467_204].target, D.6301
	.loc 1 1336 0 discriminator 1
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L235	#,
	.loc 1 1337 0
	movl	-16516(%rbp), %eax	# i, i.468
	movslq	%eax, %rdx	# i.468, tmp571
	movq	%rdx, %rax	# tmp571, tmp572
	addq	%rax, %rax	# tmp572
	addq	%rdx, %rax	# tmp571, tmp572
	salq	$3, %rax	#, tmp573
	leaq	-16(%rbp), %rbx	#, tmp792
	addq	%rbx, %rax	# tmp792, tmp574
	subq	$12288, %rax	#, tmp575
	movl	12(%rax), %ecx	# moves[i.468_206].promoted, D.6301
	movl	ply(%rip), %eax	# ply, ply.469
	movslq	%eax, %rdx	# ply.469, tmp576
	movq	%rdx, %rax	# tmp576, tmp577
	addq	%rax, %rax	# tmp577
	addq	%rdx, %rax	# tmp576, tmp577
	salq	$3, %rax	#, tmp578
	addq	$killer2+12, %rax	#, tmp579
	movl	(%rax), %eax	# killer2[ply.469_208].promoted, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L235	#,
	.loc 1 1339 0
	movl	ply(%rip), %eax	# ply, ply.470
	movslq	%eax, %rdx	# ply.470, tmp580
	movl	killer_scores2(,%rdx,4), %edx	# killer_scores2, D.6301
	addl	$1, %edx	#, D.6301
	cltq
	movl	%edx, killer_scores2(,%rax,4)	# D.6301, killer_scores2
	.loc 1 1341 0
	movl	ply(%rip), %eax	# ply, ply.471
	cltq
	movl	killer_scores2(,%rax,4), %edx	# killer_scores2, D.6301
	movl	ply(%rip), %eax	# ply, ply.472
	cltq
	movl	killer_scores(,%rax,4), %eax	# killer_scores, D.6301
	cmpl	%eax, %edx	# D.6301, D.6301
	jle	.L236	#,
	.loc 1 1343 0
	movl	ply(%rip), %eax	# ply, ply.473
	movslq	%eax, %rdx	# ply.473, tmp584
	movq	%rdx, %rax	# tmp584, tmp585
	addq	%rax, %rax	# tmp585
	addq	%rdx, %rax	# tmp584, tmp585
	salq	$3, %rax	#, tmp586
	addq	$killer1, %rax	#, tmp587
	movq	(%rax), %rdx	# killer1, tmp588
	movq	%rdx, -16432(%rbp)	# tmp588, kswap
	movq	8(%rax), %rdx	# killer1, tmp589
	movq	%rdx, -16424(%rbp)	# tmp589, kswap
	movq	16(%rax), %rax	# killer1, tmp590
	movq	%rax, -16416(%rbp)	# tmp590, kswap
	.loc 1 1344 0
	movl	ply(%rip), %eax	# ply, ply.474
	movl	ply(%rip), %ecx	# ply, ply.475
	movslq	%eax, %rdx	# ply.474, tmp591
	movq	%rdx, %rax	# tmp591, tmp592
	addq	%rax, %rax	# tmp592
	addq	%rdx, %rax	# tmp591, tmp592
	salq	$3, %rax	#, tmp593
	leaq	killer1(%rax), %rdx	#, tmp594
	movslq	%ecx, %rcx	# ply.475, tmp595
	movq	%rcx, %rax	# tmp595, tmp596
	addq	%rax, %rax	# tmp596
	addq	%rcx, %rax	# tmp595, tmp596
	salq	$3, %rax	#, tmp597
	addq	$killer2, %rax	#, tmp598
	movq	(%rax), %rcx	# killer2, tmp599
	movq	%rcx, (%rdx)	# tmp599, killer1
	movq	8(%rax), %rcx	# killer2, tmp600
	movq	%rcx, 8(%rdx)	# tmp600, killer1
	movq	16(%rax), %rax	# killer2, tmp601
	movq	%rax, 16(%rdx)	# tmp601, killer1
	.loc 1 1345 0
	movl	ply(%rip), %eax	# ply, ply.476
	movslq	%eax, %rdx	# ply.476, tmp602
	movq	%rdx, %rax	# tmp602, tmp603
	addq	%rax, %rax	# tmp603
	addq	%rdx, %rax	# tmp602, tmp603
	salq	$3, %rax	#, tmp604
	addq	$killer2, %rax	#, tmp605
	movq	-16432(%rbp), %rdx	# kswap, tmp606
	movq	%rdx, (%rax)	# tmp606, killer2
	movq	-16424(%rbp), %rdx	# kswap, tmp607
	movq	%rdx, 8(%rax)	# tmp607, killer2
	movq	-16416(%rbp), %rdx	# kswap, tmp608
	movq	%rdx, 16(%rax)	# tmp608, killer2
	.loc 1 1346 0
	movl	ply(%rip), %eax	# ply, ply.477
	cltq
	movl	killer_scores(,%rax,4), %eax	# killer_scores, tmp610
	movl	%eax, -16468(%rbp)	# tmp610, ksswap
	.loc 1 1347 0
	movl	ply(%rip), %ecx	# ply, ply.478
	movl	ply(%rip), %eax	# ply, ply.479
	cltq
	movl	killer_scores2(,%rax,4), %edx	# killer_scores2, D.6301
	movslq	%ecx, %rax	# ply.478, tmp612
	movl	%edx, killer_scores(,%rax,4)	# D.6301, killer_scores
	.loc 1 1348 0
	movl	ply(%rip), %eax	# ply, ply.480
	cltq
	movl	-16468(%rbp), %edx	# ksswap, tmp614
	movl	%edx, killer_scores2(,%rax,4)	# tmp614, killer_scores2
	.loc 1 1341 0
	jmp	.L234	#
.L236:
	.loc 1 1341 0 is_stmt 0 discriminator 1
	jmp	.L234	#
.L235:
	.loc 1 1351 0 is_stmt 1
	movl	-16516(%rbp), %eax	# i, i.481
	movslq	%eax, %rdx	# i.481, tmp615
	movq	%rdx, %rax	# tmp615, tmp616
	addq	%rax, %rax	# tmp616
	addq	%rdx, %rax	# tmp615, tmp616
	salq	$3, %rax	#, tmp617
	leaq	-16(%rbp), %rbx	#, tmp793
	addq	%rbx, %rax	# tmp793, tmp618
	subq	$12288, %rax	#, tmp619
	movl	(%rax), %ecx	# moves[i.481_227].from, D.6301
	movl	ply(%rip), %eax	# ply, ply.482
	movslq	%eax, %rdx	# ply.482, tmp620
	movq	%rdx, %rax	# tmp620, tmp621
	addq	%rax, %rax	# tmp621
	addq	%rdx, %rax	# tmp620, tmp621
	salq	$3, %rax	#, tmp622
	addq	$killer3, %rax	#, tmp623
	movl	(%rax), %eax	# killer3[ply.482_229].from, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L237	#,
	.loc 1 1351 0 is_stmt 0 discriminator 1
	movl	-16516(%rbp), %eax	# i, i.483
	movslq	%eax, %rdx	# i.483, tmp624
	movq	%rdx, %rax	# tmp624, tmp625
	addq	%rax, %rax	# tmp625
	addq	%rdx, %rax	# tmp624, tmp625
	salq	$3, %rax	#, tmp626
	leaq	-16(%rbp), %rdi	#, tmp794
	addq	%rdi, %rax	# tmp794, tmp627
	subq	$12288, %rax	#, tmp628
	movl	4(%rax), %ecx	# moves[i.483_231].target, D.6301
	.loc 1 1352 0 is_stmt 1 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.484
	movslq	%eax, %rdx	# ply.484, tmp629
	movq	%rdx, %rax	# tmp629, tmp630
	addq	%rax, %rax	# tmp630
	addq	%rdx, %rax	# tmp629, tmp630
	salq	$3, %rax	#, tmp631
	addq	$killer3+4, %rax	#, tmp632
	movl	(%rax), %eax	# killer3[ply.484_233].target, D.6301
	.loc 1 1351 0 discriminator 1
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L237	#,
	.loc 1 1352 0
	movl	-16516(%rbp), %eax	# i, i.485
	movslq	%eax, %rdx	# i.485, tmp633
	movq	%rdx, %rax	# tmp633, tmp634
	addq	%rax, %rax	# tmp634
	addq	%rdx, %rax	# tmp633, tmp634
	salq	$3, %rax	#, tmp635
	leaq	-16(%rbp), %rbx	#, tmp795
	addq	%rbx, %rax	# tmp795, tmp636
	subq	$12288, %rax	#, tmp637
	movl	12(%rax), %ecx	# moves[i.485_235].promoted, D.6301
	movl	ply(%rip), %eax	# ply, ply.486
	movslq	%eax, %rdx	# ply.486, tmp638
	movq	%rdx, %rax	# tmp638, tmp639
	addq	%rax, %rax	# tmp639
	addq	%rdx, %rax	# tmp638, tmp639
	salq	$3, %rax	#, tmp640
	addq	$killer3+12, %rax	#, tmp641
	movl	(%rax), %eax	# killer3[ply.486_237].promoted, D.6301
	cmpl	%eax, %ecx	# D.6301, D.6301
	jne	.L237	#,
	.loc 1 1354 0
	movl	ply(%rip), %eax	# ply, ply.487
	movslq	%eax, %rdx	# ply.487, tmp642
	movl	killer_scores3(,%rdx,4), %edx	# killer_scores3, D.6301
	addl	$1, %edx	#, D.6301
	cltq
	movl	%edx, killer_scores3(,%rax,4)	# D.6301, killer_scores3
	.loc 1 1356 0
	movl	ply(%rip), %eax	# ply, ply.488
	cltq
	movl	killer_scores3(,%rax,4), %edx	# killer_scores3, D.6301
	movl	ply(%rip), %eax	# ply, ply.489
	cltq
	movl	killer_scores2(,%rax,4), %eax	# killer_scores2, D.6301
	cmpl	%eax, %edx	# D.6301, D.6301
	jle	.L238	#,
	.loc 1 1358 0
	movl	ply(%rip), %eax	# ply, ply.490
	movslq	%eax, %rdx	# ply.490, tmp646
	movq	%rdx, %rax	# tmp646, tmp647
	addq	%rax, %rax	# tmp647
	addq	%rdx, %rax	# tmp646, tmp647
	salq	$3, %rax	#, tmp648
	addq	$killer2, %rax	#, tmp649
	movq	(%rax), %rdx	# killer2, tmp650
	movq	%rdx, -16432(%rbp)	# tmp650, kswap
	movq	8(%rax), %rdx	# killer2, tmp651
	movq	%rdx, -16424(%rbp)	# tmp651, kswap
	movq	16(%rax), %rax	# killer2, tmp652
	movq	%rax, -16416(%rbp)	# tmp652, kswap
	.loc 1 1359 0
	movl	ply(%rip), %eax	# ply, ply.491
	movl	ply(%rip), %ecx	# ply, ply.492
	movslq	%eax, %rdx	# ply.491, tmp653
	movq	%rdx, %rax	# tmp653, tmp654
	addq	%rax, %rax	# tmp654
	addq	%rdx, %rax	# tmp653, tmp654
	salq	$3, %rax	#, tmp655
	leaq	killer2(%rax), %rdx	#, tmp656
	movslq	%ecx, %rcx	# ply.492, tmp657
	movq	%rcx, %rax	# tmp657, tmp658
	addq	%rax, %rax	# tmp658
	addq	%rcx, %rax	# tmp657, tmp658
	salq	$3, %rax	#, tmp659
	addq	$killer3, %rax	#, tmp660
	movq	(%rax), %rcx	# killer3, tmp661
	movq	%rcx, (%rdx)	# tmp661, killer2
	movq	8(%rax), %rcx	# killer3, tmp662
	movq	%rcx, 8(%rdx)	# tmp662, killer2
	movq	16(%rax), %rax	# killer3, tmp663
	movq	%rax, 16(%rdx)	# tmp663, killer2
	.loc 1 1360 0
	movl	ply(%rip), %eax	# ply, ply.493
	movslq	%eax, %rdx	# ply.493, tmp664
	movq	%rdx, %rax	# tmp664, tmp665
	addq	%rax, %rax	# tmp665
	addq	%rdx, %rax	# tmp664, tmp665
	salq	$3, %rax	#, tmp666
	addq	$killer3, %rax	#, tmp667
	movq	-16432(%rbp), %rdx	# kswap, tmp668
	movq	%rdx, (%rax)	# tmp668, killer3
	movq	-16424(%rbp), %rdx	# kswap, tmp669
	movq	%rdx, 8(%rax)	# tmp669, killer3
	movq	-16416(%rbp), %rdx	# kswap, tmp670
	movq	%rdx, 16(%rax)	# tmp670, killer3
	.loc 1 1361 0
	movl	ply(%rip), %eax	# ply, ply.494
	cltq
	movl	killer_scores2(,%rax,4), %eax	# killer_scores2, tmp672
	movl	%eax, -16468(%rbp)	# tmp672, ksswap
	.loc 1 1362 0
	movl	ply(%rip), %ecx	# ply, ply.495
	movl	ply(%rip), %eax	# ply, ply.496
	cltq
	movl	killer_scores3(,%rax,4), %edx	# killer_scores3, D.6301
	movslq	%ecx, %rax	# ply.495, tmp674
	movl	%edx, killer_scores2(,%rax,4)	# D.6301, killer_scores2
	.loc 1 1363 0
	movl	ply(%rip), %eax	# ply, ply.497
	cltq
	movl	-16468(%rbp), %edx	# ksswap, tmp676
	movl	%edx, killer_scores3(,%rax,4)	# tmp676, killer_scores3
	.loc 1 1356 0
	jmp	.L234	#
.L238:
	.loc 1 1356 0 is_stmt 0 discriminator 1
	jmp	.L234	#
.L237:
	.loc 1 1369 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.498
	cltq
	movl	$1, killer_scores3(,%rax,4)	#, killer_scores3
	.loc 1 1370 0
	movl	ply(%rip), %eax	# ply, ply.499
	movl	-16516(%rbp), %ecx	# i, i.500
	movslq	%eax, %rdx	# ply.499, tmp678
	movq	%rdx, %rax	# tmp678, tmp679
	addq	%rax, %rax	# tmp679
	addq	%rdx, %rax	# tmp678, tmp679
	salq	$3, %rax	#, tmp680
	leaq	killer3(%rax), %rdx	#, tmp681
	movslq	%ecx, %rcx	# i.500, tmp682
	movq	%rcx, %rax	# tmp682, tmp683
	addq	%rax, %rax	# tmp683
	addq	%rcx, %rax	# tmp682, tmp683
	salq	$3, %rax	#, tmp684
	leaq	-16(%rbp), %rdi	#, tmp796
	addq	%rdi, %rax	# tmp796, tmp685
	subq	$12288, %rax	#, tmp686
	movq	(%rax), %rcx	# moves, tmp687
	movq	%rcx, (%rdx)	# tmp687, killer3
	movq	8(%rax), %rcx	# moves, tmp688
	movq	%rcx, 8(%rdx)	# tmp688, killer3
	movq	16(%rax), %rax	# moves, tmp689
	movq	%rax, 16(%rdx)	# tmp689, killer3
.L234:
	.loc 1 1374 0
	movl	-16516(%rbp), %eax	# i, i.501
	movslq	%eax, %rdx	# i.501, tmp690
	movq	%rdx, %rax	# tmp690, tmp691
	addq	%rax, %rax	# tmp691
	addq	%rdx, %rax	# tmp690, tmp691
	salq	$3, %rax	#, tmp692
	leaq	-16(%rbp), %rbx	#, tmp797
	addq	%rbx, %rax	# tmp797, tmp693
	subq	$12288, %rax	#, tmp694
	movl	(%rax), %edx	# moves[i.501_259].from, D.6301
	movl	-16516(%rbp), %eax	# i, i.502
	movslq	%eax, %rcx	# i.502, tmp695
	movq	%rcx, %rax	# tmp695, tmp696
	addq	%rax, %rax	# tmp696
	addq	%rcx, %rax	# tmp695, tmp696
	salq	$3, %rax	#, tmp697
	leaq	-16(%rbp), %rdi	#, tmp798
	addq	%rdi, %rax	# tmp798, tmp698
	subq	$12288, %rax	#, tmp699
	movl	4(%rax), %ecx	# moves[i.502_261].target, D.6301
	movslq	%ecx, %rdi	# D.6301, tmp700
	movslq	%edx, %rsi	# D.6301, tmp701
	movq	%rsi, %rax	# tmp701, tmp702
	salq	$3, %rax	#, tmp702
	addq	%rsi, %rax	# tmp701, tmp702
	salq	$4, %rax	#, tmp703
	addq	%rdi, %rax	# tmp700, tmp704
	movl	history_h(,%rax,4), %eax	# history_h, D.6303
	leal	1(%rax), %esi	#, D.6303
	movslq	%ecx, %rcx	# D.6301, tmp705
	movslq	%edx, %rdx	# D.6301, tmp706
	movq	%rdx, %rax	# tmp706, tmp707
	salq	$3, %rax	#, tmp707
	addq	%rdx, %rax	# tmp706, tmp707
	salq	$4, %rax	#, tmp708
	addq	%rcx, %rax	# tmp705, tmp709
	movl	%esi, history_h(,%rax,4)	# D.6303, history_h
	.loc 1 1376 0
	movl	-16504(%rbp), %eax	# root_score, tmp710
	movl	%eax, -16488(%rbp)	# tmp710, alpha
	.loc 1 1377 0
	movl	-16516(%rbp), %eax	# i, i.503
	movslq	%eax, %rdx	# i.503, tmp711
	movq	%rdx, %rax	# tmp711, tmp712
	addq	%rax, %rax	# tmp712
	addq	%rdx, %rax	# tmp711, tmp712
	salq	$3, %rax	#, tmp713
	leaq	-16(%rbp), %rbx	#, tmp799
	addq	%rbx, %rax	# tmp799, tmp714
	subq	$12288, %rax	#, tmp715
	movq	(%rax), %rdx	# moves, tmp716
	movq	%rdx, -16464(%rbp)	# tmp716, best_move
	movq	8(%rax), %rdx	# moves, tmp717
	movq	%rdx, -16456(%rbp)	# tmp717, best_move
	movq	16(%rax), %rax	# moves, tmp718
	movq	%rax, -16448(%rbp)	# tmp718, best_move
	.loc 1 1378 0
	movl	-16516(%rbp), %eax	# i, i.504
	movl	%eax, bestmovenum(%rip)	# i.504, bestmovenum
	.loc 1 1379 0
	movl	-16488(%rbp), %eax	# alpha, tmp719
	movl	%eax, cur_score(%rip)	# tmp719, cur_score
	.loc 1 1382 0
	movl	ply(%rip), %eax	# ply, ply.505
	movl	ply(%rip), %edx	# ply, ply.506
	movl	-16516(%rbp), %ecx	# i, i.507
	movslq	%edx, %rdx	# ply.506, tmp720
	movslq	%eax, %rsi	# ply.505, tmp721
	movq	%rdx, %rax	# tmp720, tmp722
	addq	%rax, %rax	# tmp722
	addq	%rdx, %rax	# tmp720, tmp722
	salq	$3, %rax	#, tmp723
	imulq	$7200, %rsi, %rdx	#, tmp721, tmp724
	addq	%rdx, %rax	# tmp724, tmp725
	leaq	pv(%rax), %rdx	#, tmp726
	movslq	%ecx, %rcx	# i.507, tmp727
	movq	%rcx, %rax	# tmp727, tmp728
	addq	%rax, %rax	# tmp728
	addq	%rcx, %rax	# tmp727, tmp728
	salq	$3, %rax	#, tmp729
	leaq	-16(%rbp), %rdi	#, tmp800
	addq	%rdi, %rax	# tmp800, tmp730
	subq	$12288, %rax	#, tmp731
	movq	(%rax), %rcx	# moves, tmp732
	movq	%rcx, (%rdx)	# tmp732, pv
	movq	8(%rax), %rcx	# moves, tmp733
	movq	%rcx, 8(%rdx)	# tmp733, pv
	movq	16(%rax), %rax	# moves, tmp734
	movq	%rax, 16(%rdx)	# tmp734, pv
	.loc 1 1383 0
	movl	ply(%rip), %eax	# ply, ply.508
	addl	$1, %eax	#, tmp735
	movl	%eax, -16508(%rbp)	# tmp735, j
	jmp	.L239	#
.L240:
	.loc 1 1384 0 discriminator 2
	movl	ply(%rip), %eax	# ply, ply.509
	movl	ply(%rip), %edx	# ply, ply.510
	leal	1(%rdx), %esi	#, D.6301
	movl	-16508(%rbp), %edx	# j, tmp737
	movslq	%edx, %rdx	# tmp737, tmp736
	movslq	%eax, %rcx	# ply.509, tmp738
	movq	%rdx, %rax	# tmp736, tmp739
	addq	%rax, %rax	# tmp739
	addq	%rdx, %rax	# tmp736, tmp739
	salq	$3, %rax	#, tmp740
	imulq	$7200, %rcx, %rdx	#, tmp738, tmp741
	addq	%rdx, %rax	# tmp741, tmp742
	leaq	pv(%rax), %rdx	#, tmp743
	movl	-16508(%rbp), %eax	# j, tmp745
	movslq	%eax, %rcx	# tmp745, tmp744
	movslq	%esi, %rsi	# D.6301, tmp746
	movq	%rcx, %rax	# tmp744, tmp747
	addq	%rax, %rax	# tmp747
	addq	%rcx, %rax	# tmp744, tmp747
	salq	$3, %rax	#, tmp748
	imulq	$7200, %rsi, %rcx	#, tmp746, tmp749
	addq	%rcx, %rax	# tmp749, tmp750
	addq	$pv, %rax	#, tmp751
	movq	(%rax), %rcx	# pv, tmp752
	movq	%rcx, (%rdx)	# tmp752, pv
	movq	8(%rax), %rcx	# pv, tmp753
	movq	%rcx, 8(%rdx)	# tmp753, pv
	movq	16(%rax), %rax	# pv, tmp754
	movq	%rax, 16(%rdx)	# tmp754, pv
	.loc 1 1383 0 discriminator 2
	addl	$1, -16508(%rbp)	#, j
.L239:
	.loc 1 1383 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.511
	addl	$1, %eax	#, D.6301
	cltq
	movl	pv_length(,%rax,4), %eax	# pv_length, D.6301
	cmpl	-16508(%rbp), %eax	# j, D.6301
	jg	.L240	#,
	.loc 1 1385 0 is_stmt 1
	movl	ply(%rip), %ecx	# ply, ply.512
	movl	ply(%rip), %eax	# ply, ply.513
	addl	$1, %eax	#, D.6301
	cltq
	movl	pv_length(,%rax,4), %edx	# pv_length, D.6301
	movslq	%ecx, %rax	# ply.512, tmp757
	movl	%edx, pv_length(,%rax,4)	# D.6301, pv_length
	.loc 1 1387 0
	movl	cur_score(%rip), %eax	# cur_score, cur_score.514
	cmpl	-16480(%rbp), %eax	# beta, cur_score.514
	jl	.L241	#,
	.loc 1 1387 0 is_stmt 0 discriminator 1
	movq	-16536(%rbp), %rax	# .result_ptr, tmp758
	movq	-16464(%rbp), %rdx	# best_move, tmp759
	movq	%rdx, (%rax)	# tmp759, <retval>
	movq	-16456(%rbp), %rdx	# best_move, tmp760
	movq	%rdx, 8(%rax)	# tmp760, <retval>
	movq	-16448(%rbp), %rdx	# best_move, tmp761
	movq	%rdx, 16(%rax)	# tmp761, <retval>
	jmp	.L199	#
.L241:
	.loc 1 1390 0 is_stmt 1
	movl	post(%rip), %eax	# post, post.515
	testl	%eax, %eax	# post.515
	je	.L232	#,
	.loc 1 1390 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.516
	cmpl	$1, %eax	#, i_depth.516
	jle	.L232	#,
	.loc 1 1391 0 is_stmt 1
	movl	-16488(%rbp), %eax	# alpha, tmp762
	movl	%eax, %edi	# tmp762,
	call	post_thinking	#
.L232:
	.loc 1 1394 0
	cmpl	$0, -16496(%rbp)	#, legal_move
	je	.L242	#,
	.loc 1 1395 0
	movl	$0, -16492(%rbp)	#, first
.L242:
	.loc 1 1397 0
	movl	-16516(%rbp), %ecx	# i, i.517
	movl	nodes(%rip), %eax	# nodes, nodes.518
	subl	-16472(%rbp), %eax	# oldnodecount, D.6301
	movl	%eax, %edx	# D.6301, D.6303
	movslq	%ecx, %rax	# i.517, tmp763
	movl	%edx, rootnodecount(,%rax,4)	# D.6303, rootnodecount
.L212:
	.loc 1 1204 0 discriminator 1
	movl	-16512(%rbp), %edx	# num_moves, tmp764
	leaq	-16400(%rbp), %rcx	#, tmp765
	leaq	-16516(%rbp), %rax	#, tmp766
	movq	%rcx, %rsi	# tmp765,
	movq	%rax, %rdi	# tmp766,
	call	remove_one	#
	testl	%eax, %eax	# D.6300
	jne	.L243	#,
	.loc 1 1401 0
	cmpl	$0, -16500(%rbp)	#, no_moves
	je	.L244	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.519
	testl	%eax, %eax	# is_pondering.519
	jne	.L244	#,
	.loc 1 1403 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.520
	cmpl	$3, %eax	#, Variant.520
	je	.L245	#,
	.loc 1 1403 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.521
	cmpl	$4, %eax	#, Variant.521
	je	.L245	#,
	.loc 1 1405 0 is_stmt 1
	call	in_check	#
	testl	%eax, %eax	# D.6300
	je	.L246	#,
	.loc 1 1406 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.522
	cmpl	$1, %eax	#, white_to_move.522
	jne	.L247	#,
	.loc 1 1407 0
	movl	$2, result(%rip)	#, result
	.loc 1 1405 0
	jmp	.L250	#
.L247:
	.loc 1 1410 0
	movl	$3, result(%rip)	#, result
	.loc 1 1405 0
	jmp	.L250	#
.L246:
	.loc 1 1414 0
	movl	$1, result(%rip)	#, result
	.loc 1 1405 0
	jmp	.L250	#
.L245:
	.loc 1 1419 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.523
	cmpl	$1, %eax	#, white_to_move.523
	jne	.L251	#,
	.loc 1 1420 0
	movl	$3, result(%rip)	#, result
	jmp	.L250	#
.L251:
	.loc 1 1423 0
	movl	$2, result(%rip)	#, result
	.loc 1 1403 0
	jmp	.L252	#
.L250:
	jmp	.L252	#
.L244:
	.loc 1 1427 0
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.524
	testl	%eax, %eax	# is_pondering.524
	jne	.L252	#,
	.loc 1 1430 0
	movl	fifty(%rip), %eax	# fifty, fifty.525
	cmpl	$100, %eax	#, fifty.525
	jle	.L252	#,
	.loc 1 1432 0
	movl	$4, result(%rip)	#, result
	.loc 1 1433 0
	movl	$0, cur_score(%rip)	#, cur_score
	.loc 1 1434 0
	movl	ply(%rip), %eax	# ply, ply.526
	cltq
	movl	$0, pv_length(,%rax,4)	#, pv_length
	.loc 1 1435 0
	movq	-16536(%rbp), %rax	# .result_ptr, tmp768
	movq	dummy(%rip), %rdx	# dummy, tmp770
	movq	%rdx, (%rax)	# tmp770, <retval>
	movq	dummy+8(%rip), %rdx	# dummy, tmp771
	movq	%rdx, 8(%rax)	# tmp771, <retval>
	movq	dummy+16(%rip), %rdx	# dummy, tmp772
	movq	%rdx, 16(%rax)	# tmp772, <retval>
	jmp	.L199	#
.L252:
	.loc 1 1439 0
	movq	-16536(%rbp), %rax	# .result_ptr, tmp773
	movq	-16464(%rbp), %rdx	# best_move, tmp774
	movq	%rdx, (%rax)	# tmp774, <retval>
	movq	-16456(%rbp), %rdx	# best_move, tmp775
	movq	%rdx, 8(%rax)	# tmp775, <retval>
	movq	-16448(%rbp), %rdx	# best_move, tmp776
	movq	%rdx, 16(%rax)	# tmp776, <retval>
.L199:
	.loc 1 1441 0
	movq	-16536(%rbp), %rax	# .result_ptr,
	addq	$16568, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	search_root, .-search_root
	.section	.rodata
.LC1:
	.string	"Opening phase."
.LC2:
	.string	"Middlegame phase."
.LC3:
	.string	"Endgame phase."
.LC5:
	.string	"Time for move : %d\n"
	.align 8
.LC8:
	.string	"tellics whisper %d restart(s), ended up with %s\n"
.LC9:
	.string	"tellics kibitz Mate in %d\n"
	.align 8
.LC10:
	.string	"tellics ptell Mate in %d, give him no more pieces.\n"
	.align 8
.LC11:
	.string	"tellics ptell You can trade freely."
.LC12:
	.string	"tellics ptell ---trades"
	.align 8
.LC13:
	.string	"tellics kibitz Both players dead...resigning..."
.LC14:
	.string	"tellics resign"
	.align 8
.LC15:
	.string	"tellics ptell I am forcedly mated (dead). Tell me 'go' to start moving into it."
	.align 8
.LC16:
	.string	"tellics ptell I'll have to sit...(lose piece that mates you)"
	.text
	.globl	think
	.type	think, @function
think:
.LFB8:
	.loc 1 1444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$12552, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -12488(%rbp)	# .result_ptr, .result_ptr
	.loc 1 1444 0
	movq	%fs:40, %rax	#, tmp429
	movq	%rax, -24(%rbp)	# tmp429, D.6312
	xorl	%eax, %eax	# tmp429
	.loc 1 1449 0
	movl	$0, -12468(%rbp)	#, k
	.loc 1 1450 0
	movl	$0, -12464(%rbp)	#, temp_score
	.loc 1 1455 0
	movl	$0, -12452(%rbp)	#, lastlegal
	.loc 1 1460 0
	movl	$0, userealholdings(%rip)	#, userealholdings
	.loc 1 1461 0
	movl	$0, -12448(%rbp)	#, pn_restart
.L255:
	.loc 1 1463 0
	movl	$0, nodes(%rip)	#, nodes
	.loc 1 1464 0
	movl	$0, qnodes(%rip)	#, qnodes
	.loc 1 1465 0
	movl	$1, ply(%rip)	#, ply
	.loc 1 1467 0
	movl	$0, ECacheProbes(%rip)	#, ECacheProbes
	.loc 1 1468 0
	movl	$0, ECacheHits(%rip)	#, ECacheHits
	.loc 1 1469 0
	movl	$0, TTProbes(%rip)	#, TTProbes
	.loc 1 1470 0
	movl	$0, TTHits(%rip)	#, TTHits
	.loc 1 1471 0
	movl	$0, TTStores(%rip)	#, TTStores
	.loc 1 1472 0
	movl	$0, NCuts(%rip)	#, NCuts
	.loc 1 1473 0
	movl	$0, NTries(%rip)	#, NTries
	.loc 1 1474 0
	movl	$0, TExt(%rip)	#, TExt
	.loc 1 1475 0
	movl	$0, FH(%rip)	#, FH
	.loc 1 1476 0
	movl	$0, FHF(%rip)	#, FHF
	.loc 1 1477 0
	movl	$0, PVS(%rip)	#, PVS
	.loc 1 1478 0
	movl	$0, FULL(%rip)	#, FULL
	.loc 1 1479 0
	movl	$0, PVSF(%rip)	#, PVSF
	.loc 1 1480 0
	movl	$0, ext_check(%rip)	#, ext_check
	.loc 1 1481 0
	movl	$0, ext_recap(%rip)	#, ext_recap
	.loc 1 1482 0
	movl	$0, ext_onerep(%rip)	#, ext_onerep
	.loc 1 1483 0
	movl	$0, razor_drop(%rip)	#, razor_drop
	.loc 1 1484 0
	movl	$0, razor_material(%rip)	#, razor_material
	.loc 1 1485 0
	movl	$0, drop_cuts(%rip)	#, drop_cuts
	.loc 1 1486 0
	movl	$0, -12460(%rbp)	#, rs
	.loc 1 1487 0
	movl	$0, extendedtime(%rip)	#, extendedtime
	.loc 1 1488 0
	movl	$0, forcedwin(%rip)	#, forcedwin
	.loc 1 1489 0
	movl	$200, maxposdiff(%rip)	#, maxposdiff
	.loc 1 1491 0
	movb	$0, true_i_depth(%rip)	#, true_i_depth
	.loc 1 1492 0
	movl	$-1, bestmovenum(%rip)	#, bestmovenum
	.loc 1 1496 0
	call	interrupt	#
	testl	%eax, %eax	# D.6306
	je	.L256	#,
	.loc 1 1496 0 is_stmt 0 discriminator 1
	movl	is_analyzing(%rip), %eax	# is_analyzing, is_analyzing.527
	testl	%eax, %eax	# is_analyzing.527
	jne	.L257	#,
	.loc 1 1496 0 discriminator 2
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.528
	testl	%eax, %eax	# is_pondering.528
	je	.L256	#,
.L257:
	.loc 1 1496 0 discriminator 1
	movq	-12488(%rbp), %rax	# .result_ptr, tmp230
	movq	dummy(%rip), %rdx	# dummy, tmp232
	movq	%rdx, (%rax)	# tmp232, <retval>
	movq	dummy+8(%rip), %rdx	# dummy, tmp233
	movq	%rdx, 8(%rax)	# tmp233, <retval>
	movq	dummy+16(%rip), %rdx	# dummy, tmp234
	movq	%rdx, 16(%rax)	# tmp234, <retval>
	jmp	.L254	#
.L256:
	.loc 1 1499 0 is_stmt 1
	call	rtime	#
	movq	%rax, start_time(%rip)	# start_time.529, start_time
	.loc 1 1502 0
	movl	$0, legals(%rip)	#, legals
	.loc 1 1504 0
	movl	Variant(%rip), %eax	# Variant, Variant.530
	cmpl	$4, %eax	#, Variant.530
	jne	.L259	#,
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movl	$1, captures(%rip)	#, captures
	jmp	.L260	#
.L259:
	.loc 1 1505 0 is_stmt 1
	movl	$0, captures(%rip)	#, captures
.L260:
	.loc 1 1506 0
	leaq	-12320(%rbp), %rax	#, tmp235
	movq	%rax, %rdi	# tmp235,
	call	gen	#
	.loc 1 1507 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp236
	movl	%eax, -12444(%rbp)	# tmp236, num_moves
	.loc 1 1509 0
	call	in_check	#
	movl	%eax, -12440(%rbp)	# D.6307, ic
	.loc 1 1511 0
	movl	$0, -12456(%rbp)	#, l
	jmp	.L261	#
.L263:
	.loc 1 1513 0
	movl	-12456(%rbp), %edx	# l, tmp237
	leaq	-12320(%rbp), %rax	#, tmp238
	movl	%edx, %esi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	make	#
	.loc 1 1514 0
	movl	-12440(%rbp), %edx	# ic, tmp239
	movl	-12456(%rbp), %ecx	# l, tmp240
	leaq	-12320(%rbp), %rax	#, tmp241
	movl	%ecx, %esi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	check_legal	#
	testl	%eax, %eax	# D.6307
	je	.L262	#,
	.loc 1 1516 0
	movl	legals(%rip), %eax	# legals, legals.531
	addl	$1, %eax	#, legals.532
	movl	%eax, legals(%rip)	# legals.532, legals
	.loc 1 1517 0
	movl	-12456(%rbp), %eax	# l, tmp242
	movl	%eax, -12452(%rbp)	# tmp242, lastlegal
.L262:
	.loc 1 1519 0
	movl	-12456(%rbp), %edx	# l, tmp243
	leaq	-12320(%rbp), %rax	#, tmp244
	movl	%edx, %esi	# tmp243,
	movq	%rax, %rdi	# tmp244,
	call	unmake	#
	.loc 1 1511 0
	addl	$1, -12456(%rbp)	#, l
.L261:
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.533
	cmpl	%eax, -12456(%rbp)	# numb_moves.533, l
	jl	.L263	#,
	.loc 1 1522 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.534
	cmpl	$4, %eax	#, Variant.534
	jne	.L264	#,
	.loc 1 1522 0 is_stmt 0 discriminator 1
	movl	legals(%rip), %eax	# legals, legals.535
	testl	%eax, %eax	# legals.535
	jne	.L264	#,
	.loc 1 1524 0 is_stmt 1
	movl	$0, captures(%rip)	#, captures
	.loc 1 1525 0
	movl	$0, -12444(%rbp)	#, num_moves
	.loc 1 1526 0
	leaq	-12320(%rbp), %rax	#, tmp245
	movq	%rax, %rdi	# tmp245,
	call	gen	#
	.loc 1 1527 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp246
	movl	%eax, -12444(%rbp)	# tmp246, num_moves
	.loc 1 1529 0
	movl	$0, -12456(%rbp)	#, l
	jmp	.L265	#
.L267:
	.loc 1 1531 0
	movl	-12456(%rbp), %edx	# l, tmp247
	leaq	-12320(%rbp), %rax	#, tmp248
	movl	%edx, %esi	# tmp247,
	movq	%rax, %rdi	# tmp248,
	call	make	#
	.loc 1 1532 0
	movl	-12440(%rbp), %edx	# ic, tmp249
	movl	-12456(%rbp), %ecx	# l, tmp250
	leaq	-12320(%rbp), %rax	#, tmp251
	movl	%ecx, %esi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	check_legal	#
	testl	%eax, %eax	# D.6307
	je	.L266	#,
	.loc 1 1534 0
	movl	legals(%rip), %eax	# legals, legals.536
	addl	$1, %eax	#, legals.537
	movl	%eax, legals(%rip)	# legals.537, legals
	.loc 1 1535 0
	movl	-12456(%rbp), %eax	# l, tmp252
	movl	%eax, -12452(%rbp)	# tmp252, lastlegal
.L266:
	.loc 1 1537 0
	movl	-12456(%rbp), %edx	# l, tmp253
	leaq	-12320(%rbp), %rax	#, tmp254
	movl	%edx, %esi	# tmp253,
	movq	%rax, %rdi	# tmp254,
	call	unmake	#
	.loc 1 1529 0
	addl	$1, -12456(%rbp)	#, l
.L265:
	.loc 1 1529 0 is_stmt 0 discriminator 1
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.538
	cmpl	%eax, -12456(%rbp)	# numb_moves.538, l
	jl	.L267	#,
.L264:
	.loc 1 1541 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.539
	cmpl	$1, %eax	#, Variant.539
	je	.L268	#,
	.loc 1 1541 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.540
	testl	%eax, %eax	# is_pondering.540
	jne	.L268	#,
	.loc 1 1543 0 is_stmt 1
	movl	legals(%rip), %eax	# legals, legals.541
	cmpl	$1, %eax	#, legals.541
	jne	.L268	#,
	.loc 1 1545 0
	movl	inc(%rip), %eax	# inc, inc.542
	imull	$100, %eax, %edx	#, inc.542, D.6306
	movl	time_cushion(%rip), %eax	# time_cushion, time_cushion.543
	addl	%edx, %eax	# D.6306, time_cushion.544
	movl	%eax, time_cushion(%rip)	# time_cushion.544, time_cushion
	.loc 1 1546 0
	movq	-12488(%rbp), %rdx	# .result_ptr, tmp255
	movl	-12452(%rbp), %eax	# lastlegal, tmp257
	movslq	%eax, %rcx	# tmp257, tmp256
	movq	%rcx, %rax	# tmp256, tmp258
	addq	%rax, %rax	# tmp258
	addq	%rcx, %rax	# tmp256, tmp258
	salq	$3, %rax	#, tmp259
	leaq	-16(%rbp), %rbx	#, tmp431
	addq	%rbx, %rax	# tmp431, tmp260
	subq	$12304, %rax	#, tmp261
	movq	(%rax), %rcx	# moves, tmp262
	movq	%rcx, (%rdx)	# tmp262, <retval>
	movq	8(%rax), %rcx	# moves, tmp263
	movq	%rcx, 8(%rdx)	# tmp263, <retval>
	movq	16(%rax), %rax	# moves, tmp264
	movq	%rax, 16(%rdx)	# tmp264, <retval>
	jmp	.L254	#
.L268:
	.loc 1 1551 0
	call	check_phase	#
	.loc 1 1553 0
	movl	phase(%rip), %eax	# phase, phase.545
	cmpl	$1, %eax	#, phase.545
	je	.L270	#,
	cmpl	$2, %eax	#, phase.545
	je	.L271	#,
	testl	%eax, %eax	# phase.545
	jne	.L269	#,
	.loc 1 1556 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 1557 0
	jmp	.L269	#
.L270:
	.loc 1 1559 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 1560 0
	jmp	.L269	#
.L271:
	.loc 1 1562 0
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 1563 0
	nop
.L269:
	.loc 1 1568 0
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.546
	testl	%eax, %eax	# is_pondering.546
	jne	.L273	#,
	.loc 1 1570 0
	movl	fixed_time(%rip), %eax	# fixed_time, fixed_time.547
	testl	%eax, %eax	# fixed_time.547
	jne	.L274	#,
	.loc 1 1572 0
	movl	go_fast(%rip), %eax	# go_fast, go_fast.548
	testl	%eax, %eax	# go_fast.548
	je	.L275	#,
	.loc 1 1574 0
	call	allocate_time	#
	movl	%eax, -12436(%rbp)	# tmp265, tmptmp
	.loc 1 1576 0
	cmpl	$40, -12436(%rbp)	#, tmptmp
	jle	.L276	#,
	.loc 1 1578 0
	movl	$40, time_for_move(%rip)	#, time_for_move
	jmp	.L280	#
.L276:
	.loc 1 1582 0
	movl	-12436(%rbp), %eax	# tmptmp, tmp266
	movl	%eax, time_for_move(%rip)	# tmp266, time_for_move
	jmp	.L280	#
.L275:
	.loc 1 1587 0
	call	allocate_time	#
	movl	%eax, time_for_move(%rip)	# time_for_move.549, time_for_move
	jmp	.L280	#
.L274:
	.loc 1 1592 0
	movl	fixed_time(%rip), %eax	# fixed_time, fixed_time.550
	movl	%eax, time_for_move(%rip)	# fixed_time.550, time_for_move
	jmp	.L280	#
.L273:
	.loc 1 1597 0
	movl	$999999, time_for_move(%rip)	#, time_for_move
.L280:
	.loc 1 1600 0
	cmpl	$0, -12448(%rbp)	#, pn_restart
	je	.L281	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.551
	cvtsi2ss	%eax, %xmm0	# time_for_move.551, D.6308
	.loc 1 1601 0 is_stmt 1 discriminator 1
	addss	%xmm0, %xmm0	# D.6308, D.6308
	unpcklps	%xmm0, %xmm0	# D.6308, D.6308
	cvtps2pd	%xmm0, %xmm0	# D.6308, D.6309
	cvtsi2ss	-12448(%rbp), %xmm1	# pn_restart, D.6308
	unpcklps	%xmm1, %xmm1	# D.6308, D.6308
	cvtps2pd	%xmm1, %xmm1	# D.6308, D.6309
	movsd	.LC4(%rip), %xmm2	#, tmp267
	addsd	%xmm2, %xmm1	# tmp267, D.6309
	divsd	%xmm1, %xmm0	# D.6309, D.6309
	.loc 1 1600 0 discriminator 1
	cvttsd2si	%xmm0, %eax	# D.6309, time_for_move.552
	movl	%eax, time_for_move(%rip)	# time_for_move.552, time_for_move
.L281:
	.loc 1 1603 0
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.553
	movl	%eax, %esi	# time_for_move.553,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1605 0
	cmpl	$0, -12448(%rbp)	#, pn_restart
	jne	.L282	#,
	.loc 1 1608 0
	call	clear_tt	#
	.loc 1 1609 0
	call	reset_ecache	#
	.loc 1 1610 0
	movl	$1200, %edx	#,
	movl	$0, %esi	#,
	movl	$rootlosers, %edi	#,
	call	memset	#
.L282:
	.loc 1 1613 0
	cmpl	$0, -12448(%rbp)	#, pn_restart
	jne	.L283	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.554
	testl	%eax, %eax	# is_pondering.554
	jne	.L283	#,
	movl	Variant(%rip), %eax	# Variant, Variant.555
	cmpl	$3, %eax	#, Variant.555
	je	.L284	#,
	movl	Variant(%rip), %eax	# Variant, Variant.556
	cmpl	$4, %eax	#, Variant.556
	jne	.L283	#,
.L284:
	.loc 1 1614 0 is_stmt 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.557
	cmpl	$3, %eax	#, piece_count.557
	jg	.L285	#,
	.loc 1 1614 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.558
	cmpl	$3, %eax	#, Variant.558
	je	.L283	#,
.L285:
	.loc 1 1616 0 is_stmt 1
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.559
	cvtsi2ss	%eax, %xmm0	# time_for_move.559, D.6308
	unpcklps	%xmm0, %xmm0	# D.6308, D.6308
	cvtps2pd	%xmm0, %xmm0	# D.6308, D.6309
	movsd	.LC6(%rip), %xmm1	#, tmp268
	divsd	%xmm1, %xmm0	# tmp268, D.6309
	cvttsd2si	%xmm0, %eax	# D.6309, pn_time.560
	movl	%eax, pn_time(%rip)	# pn_time.560, pn_time
	.loc 1 1617 0
	call	proofnumberscan	#
	jmp	.L286	#
.L283:
	.loc 1 1619 0
	cmpl	$0, -12448(%rbp)	#, pn_restart
	jne	.L286	#,
	.loc 1 1620 0
	movq	dummy(%rip), %rax	# dummy, tmp271
	movq	%rax, pn_move(%rip)	# tmp271, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp272
	movq	%rax, pn_move+8(%rip)	# tmp272, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp273
	movq	%rax, pn_move+16(%rip)	# tmp273, pn_move
.L286:
	.loc 1 1622 0
	movl	result(%rip), %eax	# result, result.561
	testl	%eax, %eax	# result.561
	je	.L287	#,
	.loc 1 1622 0 is_stmt 0 discriminator 1
	movl	pn_move+4(%rip), %edx	# pn_move.target, D.6306
	movl	dummy+4(%rip), %eax	# dummy.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L287	#,
	.loc 1 1623 0 is_stmt 1
	movq	-12488(%rbp), %rax	# .result_ptr, tmp274
	movq	pn_move(%rip), %rdx	# pn_move, tmp276
	movq	%rdx, (%rax)	# tmp276, <retval>
	movq	pn_move+8(%rip), %rdx	# pn_move, tmp277
	movq	%rdx, 8(%rax)	# tmp277, <retval>
	movq	pn_move+16(%rip), %rdx	# pn_move, tmp278
	movq	%rdx, 16(%rax)	# tmp278, <retval>
	jmp	.L254	#
.L287:
	.loc 1 1625 0
	movl	forcedwin(%rip), %eax	# forcedwin, forcedwin.562
	testl	%eax, %eax	# forcedwin.562
	jne	.L288	#,
	.loc 1 1625 0 is_stmt 0 discriminator 2
	movl	result(%rip), %eax	# result, result.563
	testl	%eax, %eax	# result.563
	je	.L289	#,
.L288:
	.loc 1 1625 0 discriminator 1
	movl	pn_move+4(%rip), %edx	# pn_move.target, D.6306
	movl	dummy+4(%rip), %eax	# dummy.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	je	.L289	#,
	.loc 1 1626 0 is_stmt 1
	movl	is_analyzing(%rip), %eax	# is_analyzing, is_analyzing.564
	testl	%eax, %eax	# is_analyzing.564
	jne	.L289	#,
	.loc 1 1628 0
	movq	pn_move(%rip), %rax	# pn_move, tmp280
	movq	%rax, -12416(%rbp)	# tmp280, comp_move
	movq	pn_move+8(%rip), %rax	# pn_move, tmp281
	movq	%rax, -12408(%rbp)	# tmp281, comp_move
	movq	pn_move+16(%rip), %rax	# pn_move, tmp282
	movq	%rax, -12400(%rbp)	# tmp282, comp_move
	jmp	.L290	#
.L289:
	.loc 1 1633 0
	movl	$0, -12476(%rbp)	#, i
	jmp	.L291	#
.L294:
	.loc 1 1634 0
	movl	$0, -12472(%rbp)	#, j
	jmp	.L292	#
.L293:
	.loc 1 1635 0 discriminator 2
	movl	-12472(%rbp), %eax	# j, tmp284
	movslq	%eax, %rdx	# tmp284, tmp283
	movl	-12476(%rbp), %eax	# i, tmp286
	movslq	%eax, %rcx	# tmp286, tmp285
	movq	%rdx, %rax	# tmp283, tmp287
	addq	%rax, %rax	# tmp287
	addq	%rdx, %rax	# tmp283, tmp287
	salq	$3, %rax	#, tmp288
	imulq	$7200, %rcx, %rdx	#, tmp285, tmp289
	addq	%rdx, %rax	# tmp289, tmp290
	addq	$pv, %rax	#, tmp291
	movq	dummy(%rip), %rdx	# dummy, tmp293
	movq	%rdx, (%rax)	# tmp293, pv
	movq	dummy+8(%rip), %rdx	# dummy, tmp294
	movq	%rdx, 8(%rax)	# tmp294, pv
	movq	dummy+16(%rip), %rdx	# dummy, tmp295
	movq	%rdx, 16(%rax)	# tmp295, pv
	.loc 1 1634 0 discriminator 2
	addl	$1, -12472(%rbp)	#, j
.L292:
	.loc 1 1634 0 is_stmt 0 discriminator 1
	cmpl	$299, -12472(%rbp)	#, j
	jle	.L293	#,
	.loc 1 1633 0 is_stmt 1
	addl	$1, -12476(%rbp)	#, i
.L291:
	.loc 1 1633 0 is_stmt 0 discriminator 1
	cmpl	$299, -12476(%rbp)	#, i
	jle	.L294	#,
	.loc 1 1638 0 is_stmt 1
	movl	$82944, %edx	#,
	movl	$0, %esi	#,
	movl	$history_h, %edi	#,
	call	memset	#
	.loc 1 1641 0
	movl	$0, -12476(%rbp)	#, i
	jmp	.L295	#
.L296:
	.loc 1 1642 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp297
	cltq
	movl	$0, killer_scores(,%rax,4)	#, killer_scores
	.loc 1 1643 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp299
	cltq
	movl	$0, killer_scores2(,%rax,4)	#, killer_scores2
	.loc 1 1644 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp301
	cltq
	movl	$0, killer_scores3(,%rax,4)	#, killer_scores3
	.loc 1 1645 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp303
	movslq	%eax, %rdx	# tmp303, tmp302
	movq	%rdx, %rax	# tmp302, tmp304
	addq	%rax, %rax	# tmp304
	addq	%rdx, %rax	# tmp302, tmp304
	salq	$3, %rax	#, tmp305
	addq	$killer1, %rax	#, tmp306
	movq	dummy(%rip), %rdx	# dummy, tmp308
	movq	%rdx, (%rax)	# tmp308, killer1
	movq	dummy+8(%rip), %rdx	# dummy, tmp309
	movq	%rdx, 8(%rax)	# tmp309, killer1
	movq	dummy+16(%rip), %rdx	# dummy, tmp310
	movq	%rdx, 16(%rax)	# tmp310, killer1
	.loc 1 1646 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp312
	movslq	%eax, %rdx	# tmp312, tmp311
	movq	%rdx, %rax	# tmp311, tmp313
	addq	%rax, %rax	# tmp313
	addq	%rdx, %rax	# tmp311, tmp313
	salq	$3, %rax	#, tmp314
	addq	$killer2, %rax	#, tmp315
	movq	dummy(%rip), %rdx	# dummy, tmp317
	movq	%rdx, (%rax)	# tmp317, killer2
	movq	dummy+8(%rip), %rdx	# dummy, tmp318
	movq	%rdx, 8(%rax)	# tmp318, killer2
	movq	dummy+16(%rip), %rdx	# dummy, tmp319
	movq	%rdx, 16(%rax)	# tmp319, killer2
	.loc 1 1647 0 discriminator 2
	movl	-12476(%rbp), %eax	# i, tmp321
	movslq	%eax, %rdx	# tmp321, tmp320
	movq	%rdx, %rax	# tmp320, tmp322
	addq	%rax, %rax	# tmp322
	addq	%rdx, %rax	# tmp320, tmp322
	salq	$3, %rax	#, tmp323
	addq	$killer3, %rax	#, tmp324
	movq	dummy(%rip), %rdx	# dummy, tmp326
	movq	%rdx, (%rax)	# tmp326, killer3
	movq	dummy+8(%rip), %rdx	# dummy, tmp327
	movq	%rdx, 8(%rax)	# tmp327, killer3
	movq	dummy+16(%rip), %rdx	# dummy, tmp328
	movq	%rdx, 16(%rax)	# tmp328, killer3
	.loc 1 1641 0 discriminator 2
	addl	$1, -12476(%rbp)	#, i
.L295:
	.loc 1 1641 0 is_stmt 0 discriminator 1
	cmpl	$299, -12476(%rbp)	#, i
	jle	.L296	#,
	.loc 1 1650 0 is_stmt 1
	movl	$2048, %edx	#,
	movl	$0, %esi	#,
	movl	$rootnodecount, %edi	#,
	call	memset	#
	.loc 1 1652 0
	movl	$0, -12464(%rbp)	#, temp_score
	.loc 1 1653 0
	movl	$0, cur_score(%rip)	#, cur_score
	.loc 1 1654 0
	movl	$0, -12432(%rbp)	#, true_score
	.loc 1 1656 0
	movl	$1, i_depth(%rip)	#, i_depth
	jmp	.L297	#
.L319:
	.loc 1 1660 0
	movq	start_time(%rip), %rbx	# start_time, start_time.565
	call	rtime	#
	movq	%rbx, %rsi	# start_time.565,
	movq	%rax, %rdi	# D.6310,
	call	rdifftime	#
	movl	%eax, -12428(%rbp)	# tmp329, elapsed
	.loc 1 1661 0
	cvtsi2sd	-12428(%rbp), %xmm0	# elapsed, D.6309
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.566
	cvtsi2sd	%eax, %xmm1	# time_for_move.566, D.6309
	movsd	.LC7(%rip), %xmm2	#, tmp330
	mulsd	%xmm2, %xmm1	# tmp330, D.6309
	movsd	.LC6(%rip), %xmm2	#, tmp331
	divsd	%xmm2, %xmm1	# tmp331, D.6309
	ucomisd	%xmm1, %xmm0	# D.6309, D.6309
	jbe	.L298	#,
	.loc 1 1661 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.567
	cmpl	$2, %eax	#, i_depth.567
	jle	.L298	#,
	.loc 1 1662 0 is_stmt 1
	jmp	.L290	#
.L298:
	.loc 1 1664 0
	movl	$0, failed(%rip)	#, failed
	.loc 1 1666 0
	movl	Variant(%rip), %eax	# Variant, Variant.569
	cmpl	$2, %eax	#, Variant.569
	jne	.L300	#,
	.loc 1 1666 0 is_stmt 0 discriminator 1
	movl	$35, %eax	#, iftmp.568
	jmp	.L301	#
.L300:
	.loc 1 1666 0 discriminator 2
	movl	$100, %eax	#, iftmp.568
.L301:
	.loc 1 1666 0 discriminator 3
	movl	-12464(%rbp), %edx	# temp_score, tmp335
	subl	%eax, %edx	# iftmp.568, tmp334
	movl	%edx, %eax	# tmp334, tmp334
	movl	%eax, -12424(%rbp)	# tmp334, alpha
	.loc 1 1667 0 is_stmt 1 discriminator 3
	movl	Variant(%rip), %eax	# Variant, Variant.571
	cmpl	$2, %eax	#, Variant.571
	jne	.L302	#,
	.loc 1 1667 0 is_stmt 0 discriminator 1
	movl	$35, %eax	#, iftmp.570
	jmp	.L303	#
.L302:
	.loc 1 1667 0 discriminator 2
	movl	$100, %eax	#, iftmp.570
.L303:
	.loc 1 1667 0 discriminator 3
	movl	-12464(%rbp), %edx	# temp_score, tmp339
	addl	%edx, %eax	# tmp339, tmp338
	movl	%eax, -12420(%rbp)	# tmp338, beta
	.loc 1 1669 0 is_stmt 1 discriminator 3
	movl	i_depth(%rip), %ecx	# i_depth, i_depth.572
	leaq	-12384(%rbp), %rax	#, tmp340
	movl	-12420(%rbp), %edx	# beta, tmp341
	movl	-12424(%rbp), %esi	# alpha, tmp342
	movq	%rax, %rdi	# tmp340,
	call	search_root	#
	.loc 1 1671 0 discriminator 3
	movl	result(%rip), %eax	# result, result.573
	testl	%eax, %eax	# result.573
	je	.L304	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	jmp	.L290	#
.L304:
	.loc 1 1673 0 is_stmt 1
	movl	cur_score(%rip), %eax	# cur_score, cur_score.574
	cmpl	-12424(%rbp), %eax	# alpha, cur_score.574
	jg	.L305	#,
	.loc 1 1673 0 is_stmt 0 discriminator 1
	movl	$1, failed(%rip)	#, failed
	jmp	.L306	#
.L305:
	.loc 1 1674 0 is_stmt 1
	movl	$0, failed(%rip)	#, failed
.L306:
	.loc 1 1676 0
	movl	cur_score(%rip), %eax	# cur_score, cur_score.575
	cmpl	-12424(%rbp), %eax	# alpha, cur_score.575
	jg	.L307	#,
	.loc 1 1676 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.576
	testl	%eax, %eax	# time_exit.576
	jne	.L307	#,
	.loc 1 1678 0 is_stmt 1
	addl	$1, -12460(%rbp)	#, rs
	.loc 1 1680 0
	movl	i_depth(%rip), %edx	# i_depth, i_depth.577
	leaq	-12528(%rbp), %rax	#, tmp343
	movl	%edx, %ecx	# i_depth.577,
	movl	$1000000, %edx	#,
	movl	$-1000000, %esi	#,
	movq	%rax, %rdi	# tmp343,
	call	search_root	#
	movq	-12528(%rbp), %rax	#, tmp344
	movq	%rax, -12384(%rbp)	# tmp344, temp_move
	movq	-12520(%rbp), %rax	#, tmp345
	movq	%rax, -12376(%rbp)	# tmp345, temp_move
	movq	-12512(%rbp), %rax	#, tmp346
	movq	%rax, -12368(%rbp)	# tmp346, temp_move
	.loc 1 1681 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.578
	testl	%eax, %eax	# time_exit.578
	jne	.L308	#,
	.loc 1 1681 0 is_stmt 0 discriminator 1
	movl	$0, failed(%rip)	#, failed
	jmp	.L309	#
.L308:
	.loc 1 1681 0 discriminator 2
	jmp	.L309	#
.L307:
	.loc 1 1684 0 is_stmt 1
	movl	cur_score(%rip), %eax	# cur_score, cur_score.579
	cmpl	-12420(%rbp), %eax	# beta, cur_score.579
	jl	.L309	#,
	.loc 1 1684 0 is_stmt 0 discriminator 1
	movl	time_exit(%rip), %eax	# time_exit, time_exit.580
	testl	%eax, %eax	# time_exit.580
	jne	.L309	#,
	.loc 1 1686 0 is_stmt 1
	movq	-12384(%rbp), %rax	# temp_move, tmp347
	movq	%rax, -12416(%rbp)	# tmp347, comp_move
	movq	-12376(%rbp), %rax	# temp_move, tmp348
	movq	%rax, -12408(%rbp)	# tmp348, comp_move
	movq	-12368(%rbp), %rax	# temp_move, tmp349
	movq	%rax, -12400(%rbp)	# tmp349, comp_move
	.loc 1 1687 0
	movl	cur_score(%rip), %eax	# cur_score, tmp350
	movl	%eax, -12464(%rbp)	# tmp350, temp_score
	.loc 1 1689 0
	addl	$1, -12460(%rbp)	#, rs
	.loc 1 1691 0
	movl	i_depth(%rip), %edx	# i_depth, i_depth.581
	leaq	-12528(%rbp), %rax	#, tmp351
	movl	%edx, %ecx	# i_depth.581,
	movl	$1000000, %edx	#,
	movl	$-1000000, %esi	#,
	movq	%rax, %rdi	# tmp351,
	call	search_root	#
	movq	-12528(%rbp), %rax	#, tmp352
	movq	%rax, -12384(%rbp)	# tmp352, temp_move
	movq	-12520(%rbp), %rax	#, tmp353
	movq	%rax, -12376(%rbp)	# tmp353, temp_move
	movq	-12512(%rbp), %rax	#, tmp354
	movq	%rax, -12368(%rbp)	# tmp354, temp_move
	.loc 1 1692 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.582
	testl	%eax, %eax	# time_exit.582
	jne	.L309	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movl	$0, failed(%rip)	#, failed
.L309:
	.loc 1 1697 0 is_stmt 1
	call	interrupt	#
	testl	%eax, %eax	# D.6306
	je	.L310	#,
	.loc 1 1697 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.583
	cmpl	$1, %eax	#, i_depth.583
	jle	.L310	#,
	.loc 1 1699 0 is_stmt 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.584
	testl	%eax, %eax	# is_pondering.584
	je	.L311	#,
	.loc 1 1700 0
	movq	-12488(%rbp), %rax	# .result_ptr, tmp355
	movq	dummy(%rip), %rdx	# dummy, tmp357
	movq	%rdx, (%rax)	# tmp357, <retval>
	movq	dummy+8(%rip), %rdx	# dummy, tmp358
	movq	%rdx, 8(%rax)	# tmp358, <retval>
	movq	dummy+16(%rip), %rdx	# dummy, tmp359
	movq	%rdx, 16(%rax)	# tmp359, <retval>
	jmp	.L254	#
.L311:
	.loc 1 1701 0
	movl	go_fast(%rip), %eax	# go_fast, go_fast.585
	testl	%eax, %eax	# go_fast.585
	jne	.L310	#,
	.loc 1 1702 0
	jmp	.L290	#
.L310:
	.loc 1 1707 0
	movl	time_failure(%rip), %eax	# time_failure, time_failure.586
	testl	%eax, %eax	# time_failure.586
	jne	.L312	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	movl	failed(%rip), %eax	# failed, failed.587
	testl	%eax, %eax	# failed.587
	jne	.L312	#,
	.loc 1 1712 0 is_stmt 1
	movl	cur_score(%rip), %eax	# cur_score, cur_score.588
	cmpl	$-1000000, %eax	#, cur_score.588
	jne	.L313	#,
	.loc 1 1712 0 is_stmt 0 discriminator 1
	movq	-12488(%rbp), %rax	# .result_ptr, tmp360
	movq	dummy(%rip), %rdx	# dummy, tmp362
	movq	%rdx, (%rax)	# tmp362, <retval>
	movq	dummy+8(%rip), %rdx	# dummy, tmp363
	movq	%rdx, 8(%rax)	# tmp363, <retval>
	movq	dummy+16(%rip), %rdx	# dummy, tmp364
	movq	%rdx, 16(%rax)	# tmp364, <retval>
	jmp	.L254	#
.L313:
	.loc 1 1714 0 is_stmt 1
	movq	-12384(%rbp), %rax	# temp_move, tmp365
	movq	%rax, -12416(%rbp)	# tmp365, comp_move
	movq	-12376(%rbp), %rax	# temp_move, tmp366
	movq	%rax, -12408(%rbp)	# tmp366, comp_move
	movq	-12368(%rbp), %rax	# temp_move, tmp367
	movq	%rax, -12400(%rbp)	# tmp367, comp_move
	.loc 1 1715 0
	movl	cur_score(%rip), %eax	# cur_score, tmp368
	movl	%eax, -12464(%rbp)	# tmp368, temp_score
	.loc 1 1717 0
	movl	$postpv, %edi	#,
	call	stringize_pv	#
	.loc 1 1719 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.589
	testl	%eax, %eax	# time_exit.589
	jne	.L314	#,
	.loc 1 1721 0
	movl	i_depth(%rip), %eax	# i_depth, i_depth.590
	movb	%al, true_i_depth(%rip)	# true_i_depth.591, true_i_depth
.L314:
	.loc 1 1724 0
	movl	i_depth(%rip), %eax	# i_depth, i_depth.592
	cmpl	$1, %eax	#, i_depth.592
	jle	.L315	#,
	.loc 1 1725 0
	movl	cur_score(%rip), %eax	# cur_score, cur_score.593
	movl	%eax, %edi	# cur_score.593,
	call	post_thinking	#
.L315:
	.loc 1 1727 0
	cmpl	$900000, -12464(%rbp)	#, temp_score
	jle	.L312	#,
	.loc 1 1727 0 is_stmt 0 discriminator 1
	movl	cur_score(%rip), %eax	# cur_score, cur_score.594
	movl	$1000000, %edx	#, tmp369
	subl	%eax, %edx	# cur_score.594, D.6306
	movl	i_depth(%rip), %eax	# i_depth, i_depth.595
	cmpl	%eax, %edx	# i_depth.595, D.6306
	jge	.L312	#,
	.loc 1 1729 0 is_stmt 1
	jmp	.L290	#
.L312:
	.loc 1 1733 0
	movl	time_exit(%rip), %eax	# time_exit, time_exit.596
	testl	%eax, %eax	# time_exit.596
	je	.L316	#,
	.loc 1 1733 0 is_stmt 0 discriminator 1
	jmp	.L290	#
.L316:
	.loc 1 1738 0 is_stmt 1
	movl	$0, -12472(%rbp)	#, j
	jmp	.L317	#
.L318:
	.loc 1 1739 0 discriminator 2
	movl	-12472(%rbp), %eax	# j, tmp371
	cltq
	movl	$0, killer_scores(,%rax,4)	#, killer_scores
	.loc 1 1740 0 discriminator 2
	movl	-12472(%rbp), %eax	# j, tmp373
	cltq
	movl	$0, killer_scores2(,%rax,4)	#, killer_scores2
	.loc 1 1741 0 discriminator 2
	movl	-12472(%rbp), %eax	# j, tmp375
	cltq
	movl	$0, killer_scores3(,%rax,4)	#, killer_scores3
	.loc 1 1738 0 discriminator 2
	addl	$1, -12472(%rbp)	#, j
.L317:
	.loc 1 1738 0 is_stmt 0 discriminator 1
	cmpl	$299, -12472(%rbp)	#, j
	jle	.L318	#,
	.loc 1 1656 0 is_stmt 1
	movl	i_depth(%rip), %eax	# i_depth, i_depth.597
	addl	$1, %eax	#, i_depth.598
	movl	%eax, i_depth(%rip)	# i_depth.598, i_depth
.L297:
	.loc 1 1656 0 is_stmt 0 discriminator 1
	movl	i_depth(%rip), %edx	# i_depth, i_depth.599
	movl	maxdepth(%rip), %eax	# maxdepth, maxdepth.600
	cmpl	%eax, %edx	# maxdepth.600, i_depth.599
	jle	.L319	#,
.L290:
	.loc 1 1748 0 is_stmt 1
	movl	forcedwin(%rip), %eax	# forcedwin, forcedwin.601
	testl	%eax, %eax	# forcedwin.601
	jne	.L320	#,
	.loc 1 1751 0
	movq	-12416(%rbp), %rax	# comp_move, tmp376
	movq	%rax, -12352(%rbp)	# tmp376, old_move
	movq	-12408(%rbp), %rax	# comp_move, tmp377
	movq	%rax, -12344(%rbp)	# tmp377, old_move
	movq	-12400(%rbp), %rax	# comp_move, tmp378
	movq	%rax, -12336(%rbp)	# tmp378, old_move
	.loc 1 1753 0
	movl	Variant(%rip), %eax	# Variant, Variant.602
	cmpl	$4, %eax	#, Variant.602
	je	.L321	#,
	.loc 1 1753 0 is_stmt 0 discriminator 2
	movl	Variant(%rip), %eax	# Variant, Variant.603
	cmpl	$3, %eax	#, Variant.603
	jne	.L320	#,
.L321:
	.loc 1 1753 0 discriminator 1
	movl	result(%rip), %eax	# result, result.604
	testl	%eax, %eax	# result.604
	jne	.L320	#,
	movl	alllosers(%rip), %eax	# alllosers, alllosers.605
	testl	%eax, %eax	# alllosers.605
	jne	.L320	#,
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.606
	testl	%eax, %eax	# is_pondering.606
	jne	.L320	#,
	.loc 1 1755 0 is_stmt 1
	movl	$0, s_threat(%rip)	#, s_threat
	.loc 1 1757 0
	leaq	-12416(%rbp), %rax	#, tmp379
	movq	-12416(%rbp), %rdx	# comp_move, tmp380
	movq	%rdx, (%rsp)	# tmp380,
	movq	-12408(%rbp), %rdx	# comp_move, tmp381
	movq	%rdx, 8(%rsp)	# tmp381,
	movq	-12400(%rbp), %rdx	# comp_move, tmp382
	movq	%rdx, 16(%rsp)	# tmp382,
	movq	%rax, %rdi	# tmp379,
	call	proofnumbercheck	#
	.loc 1 1759 0
	cmpl	$9, -12448(%rbp)	#, pn_restart
	jg	.L320	#,
	.loc 1 1759 0 is_stmt 0 discriminator 1
	movl	s_threat(%rip), %eax	# s_threat, s_threat.607
	testl	%eax, %eax	# s_threat.607
	je	.L320	#,
	.loc 1 1762 0 is_stmt 1
	addl	$1, -12448(%rbp)	#, pn_restart
	.loc 1 1765 0
	movl	$0, -12476(%rbp)	#, i
	jmp	.L322	#
.L325:
	.loc 1 1767 0
	movl	-12476(%rbp), %eax	# i, tmp384
	movslq	%eax, %rdx	# tmp384, tmp383
	movq	%rdx, %rax	# tmp383, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# tmp383, tmp385
	salq	$3, %rax	#, tmp386
	leaq	-16(%rbp), %rbx	#, tmp433
	addq	%rbx, %rax	# tmp433, tmp387
	subq	$12304, %rax	#, tmp388
	movl	(%rax), %edx	# moves[i_3].from, D.6306
	movl	-12352(%rbp), %eax	# old_move.from, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L323	#,
	.loc 1 1767 0 is_stmt 0 discriminator 1
	movl	-12476(%rbp), %eax	# i, tmp390
	movslq	%eax, %rdx	# tmp390, tmp389
	movq	%rdx, %rax	# tmp389, tmp391
	addq	%rax, %rax	# tmp391
	addq	%rdx, %rax	# tmp389, tmp391
	salq	$3, %rax	#, tmp392
	leaq	-16(%rbp), %rbx	#, tmp434
	addq	%rbx, %rax	# tmp434, tmp393
	subq	$12304, %rax	#, tmp394
	movl	4(%rax), %edx	# moves[i_3].target, D.6306
	movl	-12348(%rbp), %eax	# old_move.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L323	#,
	.loc 1 1768 0 is_stmt 1
	movl	-12476(%rbp), %eax	# i, tmp396
	movslq	%eax, %rdx	# tmp396, tmp395
	movq	%rdx, %rax	# tmp395, tmp397
	addq	%rax, %rax	# tmp397
	addq	%rdx, %rax	# tmp395, tmp397
	salq	$3, %rax	#, tmp398
	leaq	-16(%rbp), %rbx	#, tmp435
	addq	%rbx, %rax	# tmp435, tmp399
	subq	$12304, %rax	#, tmp400
	movl	12(%rax), %edx	# moves[i_3].promoted, D.6306
	movl	-12340(%rbp), %eax	# old_move.promoted, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L323	#,
	.loc 1 1770 0
	movl	-12476(%rbp), %eax	# i, tmp402
	cltq
	movl	$1, rootlosers(,%rax,4)	#, rootlosers
	.loc 1 1771 0
	jmp	.L324	#
.L323:
	.loc 1 1765 0
	addl	$1, -12476(%rbp)	#, i
.L322:
	.loc 1 1765 0 is_stmt 0 discriminator 1
	movl	-12476(%rbp), %eax	# i, tmp403
	cmpl	-12444(%rbp), %eax	# num_moves, tmp403
	jl	.L325	#,
.L324:
	.loc 1 1774 0 is_stmt 1
	movl	$0, -12472(%rbp)	#, j
	jmp	.L326	#
.L328:
	.loc 1 1776 0
	movl	-12472(%rbp), %eax	# j, tmp405
	cltq
	movl	rootlosers(,%rax,4), %eax	# rootlosers, D.6306
	testl	%eax, %eax	# D.6306
	je	.L327	#,
	.loc 1 1776 0 is_stmt 0 discriminator 1
	addl	$1, -12468(%rbp)	#, k
.L327:
	.loc 1 1774 0 is_stmt 1
	addl	$1, -12472(%rbp)	#, j
.L326:
	.loc 1 1774 0 is_stmt 0 discriminator 1
	movl	-12472(%rbp), %eax	# j, tmp406
	cmpl	-12444(%rbp), %eax	# num_moves, tmp406
	jl	.L328	#,
	.loc 1 1779 0 is_stmt 1
	movl	legals(%rip), %eax	# legals, legals.608
	cmpl	%eax, -12468(%rbp)	# legals.608, k
	jne	.L329	#,
	.loc 1 1779 0 is_stmt 0 discriminator 1
	movl	$1, alllosers(%rip)	#, alllosers
	.loc 1 1781 0 is_stmt 1 discriminator 1
	jmp	.L255	#
.L329:
	.loc 1 1781 0 is_stmt 0
	jmp	.L255	#
.L320:
	.loc 1 1786 0 is_stmt 1
	movl	alllosers(%rip), %eax	# alllosers, alllosers.609
	testl	%eax, %eax	# alllosers.609
	je	.L330	#,
	.loc 1 1786 0 is_stmt 0 discriminator 1
	movq	-12352(%rbp), %rax	# old_move, tmp407
	movq	%rax, -12416(%rbp)	# tmp407, comp_move
	movq	-12344(%rbp), %rax	# old_move, tmp408
	movq	%rax, -12408(%rbp)	# tmp408, comp_move
	movq	-12336(%rbp), %rax	# old_move, tmp409
	movq	%rax, -12400(%rbp)	# tmp409, comp_move
.L330:
	.loc 1 1788 0 is_stmt 1
	cmpl	$0, -12448(%rbp)	#, pn_restart
	je	.L331	#,
	.loc 1 1788 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.610
	testl	%eax, %eax	# xb_mode.610
	je	.L331	#,
	.loc 1 1790 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp410
	movq	-12416(%rbp), %rdx	# comp_move, tmp411
	movq	%rdx, (%rsp)	# tmp411,
	movq	-12408(%rbp), %rdx	# comp_move, tmp412
	movq	%rdx, 8(%rsp)	# tmp412,
	movq	-12400(%rbp), %rdx	# comp_move, tmp413
	movq	%rdx, 16(%rsp)	# tmp413,
	movq	%rax, %rdi	# tmp410,
	call	comp_to_san	#
	.loc 1 1791 0
	leaq	-32(%rbp), %rdx	#, tmp414
	movl	-12448(%rbp), %eax	# pn_restart, tmp415
	movl	%eax, %esi	# tmp415,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1792 0
	movl	$0, result(%rip)	#, result
.L331:
	.loc 1 1794 0
	movq	start_time(%rip), %rbx	# start_time, start_time.611
	call	rtime	#
	movq	%rbx, %rsi	# start_time.611,
	movq	%rax, %rdi	# D.6310,
	call	rdifftime	#
	movl	%eax, -12428(%rbp)	# tmp416, elapsed
	.loc 1 1797 0
	movl	time_left(%rip), %eax	# time_left, time_left.612
	subl	-12428(%rbp), %eax	# elapsed, time_left.613
	movl	%eax, time_left(%rip)	# time_left.613, time_left
	.loc 1 1800 0
	movl	moves_to_tc(%rip), %eax	# moves_to_tc, moves_to_tc.614
	testl	%eax, %eax	# moves_to_tc.614
	je	.L332	#,
	.loc 1 1800 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.615
	testl	%eax, %eax	# is_pondering.615
	jne	.L332	#,
	.loc 1 1801 0 is_stmt 1
	movl	time_for_move(%rip), %eax	# time_for_move, time_for_move.616
	subl	-12428(%rbp), %eax	# elapsed, D.6306
	movl	%eax, %edx	# D.6306, D.6306
	movl	inc(%rip), %eax	# inc, inc.617
	addl	%eax, %edx	# inc.617, D.6306
	movl	time_cushion(%rip), %eax	# time_cushion, time_cushion.618
	addl	%edx, %eax	# D.6306, time_cushion.619
	movl	%eax, time_cushion(%rip)	# time_cushion.619, time_cushion
.L332:
	.loc 1 1805 0
	cmpl	$999998, -12464(%rbp)	#, temp_score
	jne	.L333	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.620
	testl	%eax, %eax	# is_pondering.620
	jne	.L333	#,
	.loc 1 1807 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.621
	cmpl	$1, %eax	#, white_to_move.621
	jne	.L334	#,
	.loc 1 1809 0
	movl	$3, result(%rip)	#, result
	.loc 1 1807 0
	jmp	.L336	#
.L334:
	.loc 1 1813 0
	movl	$2, result(%rip)	#, result
	.loc 1 1807 0
	jmp	.L336	#
.L333:
	.loc 1 1816 0
	cmpl	$-999998, -12464(%rbp)	#, temp_score
	jne	.L336	#,
	.loc 1 1816 0 is_stmt 0 discriminator 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.622
	testl	%eax, %eax	# is_pondering.622
	jne	.L336	#,
	.loc 1 1818 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.623
	cmpl	$1, %eax	#, white_to_move.623
	jne	.L337	#,
	.loc 1 1820 0
	movl	$2, result(%rip)	#, result
	jmp	.L336	#
.L337:
	.loc 1 1824 0
	movl	$3, result(%rip)	#, result
.L336:
	.loc 1 1829 0
	movl	post(%rip), %eax	# post, post.624
	testl	%eax, %eax	# post.624
	je	.L338	#,
	.loc 1 1829 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.625
	testl	%eax, %eax	# xb_mode.625
	je	.L338	#,
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.626
	testl	%eax, %eax	# is_pondering.626
	jne	.L338	#,
	.loc 1 1830 0 is_stmt 1 discriminator 1
	movl	result(%rip), %eax	# result, result.627
	.loc 1 1829 0 discriminator 1
	cmpl	$3, %eax	#, result.627
	je	.L338	#,
	.loc 1 1831 0
	movl	result(%rip), %eax	# result, result.628
	.loc 1 1830 0
	cmpl	$2, %eax	#, result.628
	je	.L338	#,
	.loc 1 1832 0
	movl	result(%rip), %eax	# result, result.629
	.loc 1 1831 0
	cmpl	$4, %eax	#, result.629
	je	.L338	#,
	.loc 1 1832 0
	movl	result(%rip), %eax	# result, result.630
	cmpl	$5, %eax	#, result.630
	je	.L338	#,
	.loc 1 1833 0 discriminator 1
	movl	result(%rip), %eax	# result, result.631
	.loc 1 1832 0 discriminator 1
	cmpl	$1, %eax	#, result.631
	je	.L338	#,
	.loc 1 1833 0
	movl	forcedwin(%rip), %eax	# forcedwin, forcedwin.632
	testl	%eax, %eax	# forcedwin.632
	jne	.L338	#,
	.loc 1 1835 0
	cmpl	$999600, -12464(%rbp)	#, temp_score
	jle	.L338	#,
	.loc 1 1837 0
	movl	Variant(%rip), %eax	# Variant, Variant.633
	cmpl	$1, %eax	#, Variant.633
	je	.L339	#,
	.loc 1 1839 0
	movl	$1000000, %eax	#, tmp417
	subl	-12464(%rbp), %eax	# temp_score, D.6306
	movl	%eax, %edx	# D.6306, tmp418
	shrl	$31, %edx	#, tmp418
	addl	%edx, %eax	# tmp418, tmp419
	sarl	%eax	# tmp420
	movl	%eax, %esi	# D.6306,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L338	#
.L339:
	.loc 1 1843 0
	movl	$1000000, %eax	#, tmp421
	subl	-12464(%rbp), %eax	# temp_score, D.6306
	movl	%eax, %edx	# D.6306, tmp422
	shrl	$31, %edx	#, tmp422
	addl	%edx, %eax	# tmp422, tmp423
	sarl	%eax	# tmp424
	movl	%eax, %esi	# D.6306,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L338:
	.loc 1 1849 0
	movl	result(%rip), %eax	# result, result.634
	cmpl	$2, %eax	#, result.634
	je	.L340	#,
	.loc 1 1850 0
	movl	result(%rip), %eax	# result, result.635
	cmpl	$3, %eax	#, result.635
	je	.L340	#,
	.loc 1 1851 0
	movl	result(%rip), %eax	# result, result.636
	cmpl	$1, %eax	#, result.636
	je	.L340	#,
	.loc 1 1852 0
	movl	result(%rip), %eax	# result, result.637
	cmpl	$4, %eax	#, result.637
	je	.L340	#,
	.loc 1 1852 0 is_stmt 0 discriminator 1
	movl	result(%rip), %eax	# result, result.638
	cmpl	$5, %eax	#, result.638
	je	.L340	#,
	.loc 1 1853 0 is_stmt 1
	movzbl	true_i_depth(%rip), %eax	# true_i_depth, true_i_depth.639
	cmpb	$2, %al	#, true_i_depth.639
	jle	.L340	#,
	.loc 1 1854 0
	movl	pn_move+4(%rip), %edx	# pn_move.target, D.6306
	movl	dummy+4(%rip), %eax	# dummy.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L340	#,
	.loc 1 1855 0
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.640
	testl	%eax, %eax	# is_pondering.640
	jne	.L340	#,
	.loc 1 1856 0
	movl	Variant(%rip), %eax	# Variant, Variant.641
	cmpl	$1, %eax	#, Variant.641
	je	.L340	#,
	.loc 1 1858 0
	movl	bestmovenum(%rip), %eax	# bestmovenum, bestmovenum.642
	cmpl	$-1, %eax	#, bestmovenum.642
	jne	.L340	#,
	.loc 1 1858 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6311
	movl	$0, (%rax)	#, *_229
.L340:
	.loc 1 1861 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.643
	cmpl	$1, %eax	#, Variant.643
	jne	.L341	#,
	.loc 1 1861 0 is_stmt 0 discriminator 1
	cmpl	$-999899, -12464(%rbp)	#, temp_score
	jl	.L341	#,
	.loc 1 1863 0 is_stmt 1
	movl	tradefreely(%rip), %eax	# tradefreely, tradefreely.644
	testl	%eax, %eax	# tradefreely.644
	jne	.L342	#,
	.loc 1 1863 0 is_stmt 0 discriminator 1
	movl	userealholdings(%rip), %eax	# userealholdings, userealholdings.645
	testl	%eax, %eax	# userealholdings.645
	jne	.L342	#,
	.loc 1 1865 0 is_stmt 1
	movl	$1, tradefreely(%rip)	#, tradefreely
	.loc 1 1866 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 1863 0
	jmp	.L343	#
.L342:
	.loc 1 1863 0 is_stmt 0 discriminator 2
	jmp	.L343	#
.L341:
	.loc 1 1869 0 is_stmt 1
	cmpl	$-999900, -12464(%rbp)	#, temp_score
	jge	.L344	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.646
	cmpl	$1, %eax	#, Variant.646
	jne	.L344	#,
	movl	pn_move+4(%rip), %edx	# pn_move.target, D.6306
	movl	dummy+4(%rip), %eax	# dummy.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L344	#,
	.loc 1 1871 0 is_stmt 1
	movl	userealholdings(%rip), %eax	# userealholdings, userealholdings.647
	testl	%eax, %eax	# userealholdings.647
	je	.L345	#,
	.loc 1 1873 0
	movl	$1, must_sit(%rip)	#, must_sit
	.loc 1 1886 0
	cmpl	$-999999, -12464(%rbp)	#, temp_score
	jl	.L347	#,
	jmp	.L352	#
.L345:
	.loc 1 1877 0
	movl	$1, userealholdings(%rip)	#, userealholdings
	.loc 1 1878 0
	movl	$realholdings, %edi	#,
	call	ProcessHoldings	#
	.loc 1 1879 0
	movl	$0, tradefreely(%rip)	#, tradefreely
	.loc 1 1880 0
	movl	$.LC12, %edi	#,
	call	puts	#
	.loc 1 1881 0
	jmp	.L255	#
.L352:
	.loc 1 1888 0
	movl	partnerdead(%rip), %eax	# partnerdead, partnerdead.648
	testl	%eax, %eax	# partnerdead.648
	je	.L348	#,
	.loc 1 1890 0
	movl	$.LC13, %edi	#,
	call	puts	#
	.loc 1 1891 0
	movl	$.LC14, %edi	#,
	call	puts	#
	jmp	.L347	#
.L348:
	.loc 1 1895 0
	movl	$.LC15, %edi	#,
	call	puts	#
	.loc 1 1886 0
	jmp	.L343	#
.L347:
	.loc 1 1886 0 is_stmt 0 discriminator 1
	jmp	.L343	#
.L344:
	.loc 1 1899 0 is_stmt 1
	cmpl	$-59999, -12464(%rbp)	#, temp_score
	jl	.L343	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	cmpl	$-40000, -12464(%rbp)	#, temp_score
	jge	.L343	#,
	movl	Variant(%rip), %eax	# Variant, Variant.649
	cmpl	$1, %eax	#, Variant.649
	jne	.L343	#,
	movl	partnerdead(%rip), %eax	# partnerdead, partnerdead.650
	testl	%eax, %eax	# partnerdead.650
	jne	.L343	#,
	movl	pn_move+4(%rip), %edx	# pn_move.target, D.6306
	movl	dummy+4(%rip), %eax	# dummy.target, D.6306
	cmpl	%eax, %edx	# D.6306, D.6306
	jne	.L343	#,
	.loc 1 1901 0 is_stmt 1
	movl	$1, must_sit(%rip)	#, must_sit
	.loc 1 1902 0
	movl	$.LC16, %edi	#,
	call	puts	#
.L343:
	.loc 1 1905 0
	movq	-12488(%rbp), %rax	# .result_ptr, tmp425
	movq	-12416(%rbp), %rdx	# comp_move, tmp426
	movq	%rdx, (%rax)	# tmp426, <retval>
	movq	-12408(%rbp), %rdx	# comp_move, tmp427
	movq	%rdx, 8(%rax)	# tmp427, <retval>
	movq	-12400(%rbp), %rdx	# comp_move, tmp428
	movq	%rdx, 16(%rax)	# tmp428, <retval>
.L254:
	.loc 1 1907 0
	movq	-12488(%rbp), %rax	# .result_ptr,
	movq	-24(%rbp), %rbx	# D.6312, tmp430
	xorq	%fs:40, %rbx	#, tmp430
	je	.L350	#,
	call	__stack_chk_fail	#
.L350:
	addq	$12552, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	think, .-think
	.globl	tree
	.type	tree, @function
tree:
.LFB9:
	.loc 1 1910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12336, %rsp	#,
	movl	%edi, -12308(%rbp)	# depth, depth
	movl	%esi, -12312(%rbp)	# indent, indent
	movq	%rdx, -12320(%rbp)	# output, output
	movq	%rcx, -12328(%rbp)	# disp_b, disp_b
	.loc 1 1916 0
	movl	$0, -12296(%rbp)	#, num_moves
	.loc 1 1919 0
	cmpl	$0, -12308(%rbp)	#, depth
	je	.L353	#,
	.loc 1 1924 0
	leaq	-12288(%rbp), %rax	#, tmp64
	movq	%rax, %rdi	# tmp64,
	call	gen	#
	.loc 1 1925 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp65
	movl	%eax, -12296(%rbp)	# tmp65, num_moves
	.loc 1 1927 0
	call	in_check	#
	movl	%eax, -12292(%rbp)	# D.6333, ic
	.loc 1 1930 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L356	#
.L361:
	.loc 1 1931 0
	movl	-12304(%rbp), %edx	# i, tmp66
	leaq	-12288(%rbp), %rax	#, tmp67
	movl	%edx, %esi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	make	#
	.loc 1 1934 0
	movl	-12292(%rbp), %edx	# ic, tmp68
	movl	-12304(%rbp), %ecx	# i, tmp69
	leaq	-12288(%rbp), %rax	#, tmp70
	movl	%ecx, %esi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	check_legal	#
	testl	%eax, %eax	# D.6333
	je	.L357	#,
	.loc 1 1936 0
	movl	$0, -12300(%rbp)	#, j
	jmp	.L358	#
.L359:
	.loc 1 1937 0 discriminator 2
	movq	-12320(%rbp), %rax	# output, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$32, %edi	#,
	call	fputc	#
	.loc 1 1936 0 discriminator 2
	addl	$1, -12300(%rbp)	#, j
.L358:
	.loc 1 1936 0 is_stmt 0 discriminator 1
	movl	-12300(%rbp), %eax	# j, tmp72
	cmpl	-12312(%rbp), %eax	# indent, tmp72
	jl	.L359	#,
	.loc 1 1939 0 is_stmt 1
	movq	-12320(%rbp), %rdx	# output, tmp73
	movl	-12304(%rbp), %ecx	# i, tmp74
	leaq	-12288(%rbp), %rax	#, tmp75
	movl	%ecx, %esi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	print_move	#
	.loc 1 1940 0
	movq	-12320(%rbp), %rax	# output, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1943 0
	movq	-12328(%rbp), %rax	# disp_b, tmp77
	movzbl	(%rax), %eax	# *disp_b_14(D), D.6334
	cmpb	$121, %al	#, D.6334
	jne	.L360	#,
	.loc 1 1944 0
	movq	-12320(%rbp), %rax	# output, tmp78
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	display_board	#
.L360:
	.loc 1 1948 0
	movl	-12312(%rbp), %eax	# indent, tmp79
	leal	2(%rax), %esi	#, D.6335
	movl	-12308(%rbp), %eax	# depth, tmp80
	leal	-1(%rax), %edi	#, D.6335
	movq	-12328(%rbp), %rdx	# disp_b, tmp81
	movq	-12320(%rbp), %rax	# output, tmp82
	movq	%rdx, %rcx	# tmp81,
	movq	%rax, %rdx	# tmp82,
	call	tree	#
.L357:
	.loc 1 1952 0
	movl	-12304(%rbp), %edx	# i, tmp83
	leaq	-12288(%rbp), %rax	#, tmp84
	movl	%edx, %esi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	unmake	#
	.loc 1 1930 0
	addl	$1, -12304(%rbp)	#, i
.L356:
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movl	-12304(%rbp), %eax	# i, tmp85
	cmpl	-12296(%rbp), %eax	# num_moves, tmp85
	jl	.L361	#,
.L353:
	.loc 1 1954 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	tree, .-tree
	.section	.rodata
	.align 32
	.type	rc_index.4006, @object
	.size	rc_index.4006, 56
rc_index.4006:
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	5
	.long	5
	.long	3
	.long	3
	.long	4
	.long	4
	.long	2
	.long	2
	.long	0
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1074266112
	.align 8
.LC7:
	.long	3435973837
	.long	1073794252
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12ab
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF215
	.byte	0x1
	.long	.LASF216
	.long	.LASF217
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.long	0x42
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0xe
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x7e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x8d
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x94
	.long	0x7e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xb5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0xd4
	.long	0x62
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x9
	.long	0xb5
	.long	0xe5
	.uleb128 0xa
	.long	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x77
	.uleb128 0x4
	.long	.LASF18
	.byte	0x5
	.byte	0x4b
	.long	0xa2
	.uleb128 0x4
	.long	.LASF19
	.byte	0x6
	.byte	0x30
	.long	0x101
	.uleb128 0xb
	.long	.LASF49
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x282
	.uleb128 0xc
	.long	.LASF20
	.byte	0x7
	.byte	0xf7
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x7
	.byte	0xfc
	.long	0xaf
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x7
	.byte	0xfd
	.long	0xaf
	.byte	0x10
	.uleb128 0xc
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xaf
	.byte	0x18
	.uleb128 0xc
	.long	.LASF24
	.byte	0x7
	.byte	0xff
	.long	0xaf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF25
	.byte	0x7
	.value	0x100
	.long	0xaf
	.byte	0x28
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.value	0x101
	.long	0xaf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF27
	.byte	0x7
	.value	0x102
	.long	0xaf
	.byte	0x38
	.uleb128 0xd
	.long	.LASF28
	.byte	0x7
	.value	0x103
	.long	0xaf
	.byte	0x40
	.uleb128 0xd
	.long	.LASF29
	.byte	0x7
	.value	0x105
	.long	0xaf
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x7
	.value	0x106
	.long	0xaf
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xaf
	.byte	0x58
	.uleb128 0xd
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0x2ba
	.byte	0x60
	.uleb128 0xd
	.long	.LASF33
	.byte	0x7
	.value	0x10b
	.long	0x2c0
	.byte	0x68
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.value	0x10d
	.long	0x77
	.byte	0x70
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.value	0x111
	.long	0x77
	.byte	0x74
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.value	0x113
	.long	0x85
	.byte	0x78
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.value	0x117
	.long	0x54
	.byte	0x80
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.value	0x118
	.long	0x69
	.byte	0x82
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.value	0x119
	.long	0x2c6
	.byte	0x83
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.value	0x11d
	.long	0x2d6
	.byte	0x88
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.value	0x126
	.long	0x90
	.byte	0x90
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.value	0x12f
	.long	0xad
	.byte	0x98
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.value	0x130
	.long	0xad
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.value	0x131
	.long	0xad
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.value	0x132
	.long	0xad
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.value	0x133
	.long	0xbc
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.value	0x135
	.long	0x77
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.value	0x137
	.long	0x2dc
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF218
	.byte	0x7
	.byte	0x9b
	.uleb128 0xb
	.long	.LASF50
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x2ba
	.uleb128 0xc
	.long	.LASF51
	.byte	0x7
	.byte	0xa2
	.long	0x2ba
	.byte	0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x7
	.byte	0xa3
	.long	0x2c0
	.byte	0x8
	.uleb128 0xc
	.long	.LASF53
	.byte	0x7
	.byte	0xa7
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x289
	.uleb128 0x8
	.byte	0x8
	.long	0x101
	.uleb128 0x9
	.long	0xb5
	.long	0x2d6
	.uleb128 0xa
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x282
	.uleb128 0x9
	.long	0xb5
	.long	0x2ec
	.uleb128 0xa
	.long	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0x33c
	.uleb128 0xc
	.long	.LASF54
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF55
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0xc
	.long	.LASF56
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0x10
	.string	"ep"
	.byte	0x2
	.byte	0x65
	.long	0x77
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF59
	.byte	0x2
	.byte	0x66
	.long	0x2ec
	.uleb128 0x4
	.long	.LASF60
	.byte	0x2
	.byte	0xa1
	.long	0xeb
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0x37
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x40b
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x37
	.long	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0x37
	.long	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0x37
	.long	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.byte	0x37
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x37
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x39
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x39
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.byte	0x3a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x3a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x3a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x33c
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.value	0x126
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x482
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x126
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12324
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x128
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x129
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x129
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x12a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12308
	.byte	0
	.uleb128 0x9
	.long	0x33c
	.long	0x493
	.uleb128 0x19
	.long	0x9b
	.value	0x1ff
	.byte	0
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x14d
	.long	0x77
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x617
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.value	0x14d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16484
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.value	0x14d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x14d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16492
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x152
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x153
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16428
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x153
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x153
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x154
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.value	0x154
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16436
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x155
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x156
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -14368
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x157
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0x157
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x158
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x158
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x158
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.value	0x158
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16424
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.value	0x158
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16468
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.value	0x159
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x15a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16444
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x15b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16420
	.byte	0
	.uleb128 0x9
	.long	0x77
	.long	0x628
	.uleb128 0x19
	.long	0x9b
	.value	0x1ff
	.byte	0
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.value	0x1f8
	.long	0x42
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x694
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.value	0x1f8
	.long	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF62
	.byte	0x1
	.value	0x1f8
	.long	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.value	0x1f8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1fe
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x1fe
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.value	0x213
	.long	0x77
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fa
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.value	0x213
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16564
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.value	0x213
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16568
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x213
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16572
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.value	0x213
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16576
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x217
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x218
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16528
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x218
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16548
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x218
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16524
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x219
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16520
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x219
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x219
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -14368
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0x21a
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16516
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x21a
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16544
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16540
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16536
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16532
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16508
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x21b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x21c
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16468
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.value	0x21c
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16500
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.value	0x21d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.value	0x21d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.value	0x21d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16492
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.value	0x21d
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.value	0x21e
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.value	0x21f
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.value	0x220
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.value	0x221
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.value	0x222
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16484
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.value	0x223
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x224
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x17
	.long	.LASF101
	.byte	0x1
	.value	0x225
	.long	0x90a
	.uleb128 0x9
	.byte	0x3
	.quad	rc_index.4006
	.byte	0
	.uleb128 0x9
	.long	0x77
	.long	0x90a
	.uleb128 0xa
	.long	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x1c
	.long	0x8fa
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x44b
	.long	0x33c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xa92
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x44b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16556
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x44b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16560
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x44b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16564
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x44f
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x17
	.long	.LASF104
	.byte	0x1
	.value	0x44f
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x450
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16528
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x450
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16532
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x450
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16524
	.uleb128 0x17
	.long	.LASF105
	.byte	0x1
	.value	0x451
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16520
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x451
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x451
	.long	0x617
	.uleb128 0x4
	.byte	0x91
	.sleb128 -14368
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0x452
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16516
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x452
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.value	0x452
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16508
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x453
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x453
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.value	0x454
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.value	0x455
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16484
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x456
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16492
	.uleb128 0x18
	.string	"mc"
	.byte	0x1
	.value	0x457
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16500
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.value	0x458
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.byte	0
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x5a4
	.long	0x33c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0d
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.value	0x5a8
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12432
	.uleb128 0x17
	.long	.LASF109
	.byte	0x1
	.value	0x5a8
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12400
	.uleb128 0x17
	.long	.LASF110
	.byte	0x1
	.value	0x5a8
	.long	0x33c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12368
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x5a9
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12492
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x5a9
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12488
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x5a9
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12484
	.uleb128 0x17
	.long	.LASF111
	.byte	0x1
	.value	0x5aa
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12444
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.value	0x5aa
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12480
	.uleb128 0x17
	.long	.LASF113
	.byte	0x1
	.value	0x5aa
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12448
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x5ab
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12440
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x5ab
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12436
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.value	0x5ac
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12452
	.uleb128 0x18
	.string	"rs"
	.byte	0x1
	.value	0x5ad
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12476
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x5ae
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12336
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x5af
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12472
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.value	0x5af
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12468
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x5af
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12456
	.uleb128 0x17
	.long	.LASF116
	.byte	0x1
	.value	0x5b0
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12464
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x5b1
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12460
	.uleb128 0x17
	.long	.LASF117
	.byte	0x1
	.value	0x5b2
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF219
	.byte	0x1
	.value	0x5b6
	.quad	.L255
	.byte	0
	.uleb128 0x15
	.long	.LASF118
	.byte	0x1
	.value	0x776
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc0
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12324
	.uleb128 0x16
	.long	.LASF119
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12328
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.value	0x776
	.long	0xcc0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12336
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.value	0x776
	.long	0xaf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x778
	.long	0x482
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x779
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x779
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x779
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x77a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12308
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf6
	.uleb128 0x9
	.long	0x77
	.long	0xcd6
	.uleb128 0xa
	.long	0x9b
	.byte	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x8
	.byte	0xc
	.long	0xcc6
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x8
	.byte	0xc
	.long	0x77
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x8
	.byte	0xc
	.long	0x77
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x8
	.byte	0xd
	.long	0x77
	.uleb128 0x1f
	.string	"ply"
	.byte	0x8
	.byte	0xd
	.long	0x77
	.uleb128 0x9
	.long	0x77
	.long	0xd1e
	.uleb128 0x19
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x8
	.byte	0xd
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x8
	.byte	0xe
	.long	0x77
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x8
	.byte	0xe
	.long	0x77
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x8
	.byte	0xe
	.long	0x77
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x8
	.byte	0x10
	.long	0x77
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x8
	.byte	0x10
	.long	0x77
	.uleb128 0x1e
	.long	.LASF131
	.byte	0x8
	.byte	0x10
	.long	0x77
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x8
	.byte	0x10
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x8
	.byte	0x11
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x8
	.byte	0x11
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x8
	.byte	0x11
	.long	0x77
	.uleb128 0x1f
	.string	"inc"
	.byte	0x8
	.byte	0x12
	.long	0x77
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x8
	.byte	0x12
	.long	0x77
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x8
	.byte	0x12
	.long	0x77
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x8
	.byte	0x12
	.long	0x77
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x8
	.byte	0x12
	.long	0x77
	.uleb128 0x9
	.long	0x5b
	.long	0xde4
	.uleb128 0xa
	.long	0x9b
	.byte	0x8f
	.uleb128 0xa
	.long	0x9b
	.byte	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x8
	.byte	0x14
	.long	0xdce
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x8
	.byte	0x16
	.long	0x42
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x8
	.byte	0x16
	.long	0x42
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x8
	.byte	0x16
	.long	0x42
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x8
	.byte	0x16
	.long	0x42
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x8
	.byte	0x16
	.long	0x42
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x8
	.byte	0x17
	.long	0x77
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x8
	.byte	0x17
	.long	0x77
	.uleb128 0x9
	.long	0x33c
	.long	0xe54
	.uleb128 0x19
	.long	0x9b
	.value	0x12b
	.uleb128 0x19
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x1f
	.string	"pv"
	.byte	0x8
	.byte	0x19
	.long	0xe3c
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x8
	.byte	0x19
	.long	0x33c
	.uleb128 0x9
	.long	0x33c
	.long	0xe7a
	.uleb128 0x19
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x8
	.byte	0x19
	.long	0xe69
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x8
	.byte	0x19
	.long	0xe69
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x8
	.byte	0x1a
	.long	0xe69
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x8
	.byte	0x1d
	.long	0xe69
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x8
	.byte	0x1e
	.long	0x77
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x8
	.byte	0x20
	.long	0x347
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x8
	.byte	0x38
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x8
	.byte	0x3a
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x8
	.byte	0x3b
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x8
	.byte	0x3d
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x8
	.byte	0x3e
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x8
	.byte	0x3f
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x8
	.byte	0x4a
	.long	0x77
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x8
	.byte	0x4b
	.long	0x8fa
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x8
	.byte	0x51
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x8
	.byte	0x51
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x8
	.byte	0x51
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x8
	.byte	0x55
	.long	0x42
	.uleb128 0x20
	.string	"FH"
	.byte	0x1
	.byte	0xf
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	FH
	.uleb128 0x20
	.string	"FHF"
	.byte	0x1
	.byte	0xf
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	FHF
	.uleb128 0x1f
	.string	"PVS"
	.byte	0x8
	.byte	0x57
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x8
	.byte	0x57
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x8
	.byte	0x57
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x8
	.byte	0x58
	.long	0x5b
	.uleb128 0x21
	.long	.LASF170
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	ext_recap
	.uleb128 0x21
	.long	.LASF171
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	ext_onerep
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	razor_drop
	.uleb128 0x21
	.long	.LASF173
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	razor_material
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x8
	.byte	0x5e
	.long	0xff4
	.uleb128 0x1c
	.long	0xcc6
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x8
	.byte	0x63
	.long	0x77
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x8
	.byte	0x65
	.long	0x77
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x8
	.byte	0x67
	.long	0x42
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x8
	.byte	0x6b
	.long	0x42
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x8
	.byte	0x6d
	.long	0x42
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x8
	.byte	0x6f
	.long	0x42
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.byte	0x23
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	tradefreely
	.uleb128 0x21
	.long	.LASF182
	.byte	0x1
	.byte	0x12
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	true_i_depth
	.uleb128 0x1e
	.long	.LASF183
	.byte	0x8
	.byte	0x74
	.long	0x77
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x8
	.byte	0x76
	.long	0x77
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x8
	.byte	0x78
	.long	0x77
	.uleb128 0x21
	.long	.LASF186
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bestmovenum
	.uleb128 0x21
	.long	.LASF187
	.byte	0x1
	.byte	0x16
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	ugly_ep_hack
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x8
	.byte	0x80
	.long	0x77
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x8
	.byte	0x82
	.long	0x77
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x8
	.byte	0x83
	.long	0x33c
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x8
	.byte	0x86
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x8
	.byte	0x87
	.long	0x77
	.uleb128 0x21
	.long	.LASF193
	.byte	0x1
	.byte	0x25
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	s_threat
	.uleb128 0x1e
	.long	.LASF194
	.byte	0x8
	.byte	0x8c
	.long	0x77
	.uleb128 0x1e
	.long	.LASF195
	.byte	0x8
	.byte	0x8d
	.long	0x77
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x8
	.byte	0x8e
	.long	0x77
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x8
	.byte	0x8f
	.long	0x77
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x8
	.byte	0x90
	.long	0x77
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x8
	.byte	0x9c
	.long	0x77
	.uleb128 0x9
	.long	0xb5
	.long	0x114e
	.uleb128 0xa
	.long	0x9b
	.byte	0xfe
	.byte	0
	.uleb128 0x1e
	.long	.LASF200
	.byte	0x8
	.byte	0x9d
	.long	0x113e
	.uleb128 0x1e
	.long	.LASF201
	.byte	0x8
	.byte	0x9f
	.long	0x77
	.uleb128 0x9
	.long	0x5b
	.long	0x1175
	.uleb128 0x19
	.long	0x9b
	.value	0x257
	.byte	0
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x8
	.byte	0xa0
	.long	0x1164
	.uleb128 0x21
	.long	.LASF203
	.byte	0x1
	.byte	0x1b
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	moveleft
	.uleb128 0x21
	.long	.LASF204
	.byte	0x1
	.byte	0x1c
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	movetotal
	.uleb128 0x21
	.long	.LASF205
	.byte	0x1
	.byte	0x1a
	.long	0x2dc
	.uleb128 0x9
	.byte	0x3
	.quad	searching_move
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	drop_cuts
	.uleb128 0x9
	.long	0xb5
	.long	0x11e4
	.uleb128 0xa
	.long	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.long	.LASF207
	.byte	0x1
	.byte	0x18
	.long	0x11d4
	.uleb128 0x9
	.byte	0x3
	.quad	postpv
	.uleb128 0x21
	.long	.LASF208
	.byte	0x1
	.byte	0x1e
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	legals
	.uleb128 0x21
	.long	.LASF209
	.byte	0x1
	.byte	0x20
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	failed
	.uleb128 0x21
	.long	.LASF210
	.byte	0x1
	.byte	0x21
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	extendedtime
	.uleb128 0x9
	.long	0x5b
	.long	0x1249
	.uleb128 0x19
	.long	0x9b
	.value	0x1ff
	.byte	0
	.uleb128 0x21
	.long	.LASF211
	.byte	0x1
	.byte	0x27
	.long	0x1238
	.uleb128 0x9
	.byte	0x3
	.quad	rootnodecount
	.uleb128 0x9
	.long	0x42
	.long	0x126f
	.uleb128 0x19
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x21
	.long	.LASF212
	.byte	0x1
	.byte	0x29
	.long	0x125e
	.uleb128 0x9
	.byte	0x3
	.quad	checks
	.uleb128 0x21
	.long	.LASF213
	.byte	0x1
	.byte	0x2a
	.long	0x125e
	.uleb128 0x9
	.byte	0x3
	.quad	recaps
	.uleb128 0x21
	.long	.LASF214
	.byte	0x1
	.byte	0x2b
	.long	0x125e
	.uleb128 0x9
	.byte	0x3
	.quad	singular
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
.LASF77:
	.string	"best_score"
.LASF179:
	.string	"go_fast"
.LASF131:
	.string	"qnodes"
.LASF39:
	.string	"_shortbuf"
.LASF54:
	.string	"from"
.LASF60:
	.string	"rtime_t"
.LASF218:
	.string	"_IO_lock_t"
.LASF162:
	.string	"material"
.LASF117:
	.string	"output"
.LASF185:
	.string	"phase"
.LASF28:
	.string	"_IO_buf_end"
.LASF129:
	.string	"nodes"
.LASF186:
	.string	"bestmovenum"
.LASF26:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF219:
	.string	"restart"
.LASF92:
	.string	"extend"
.LASF177:
	.string	"is_analyzing"
.LASF163:
	.string	"NTries"
.LASF20:
	.string	"_flags"
.LASF148:
	.string	"dummy"
.LASF85:
	.string	"search"
.LASF209:
	.string	"failed"
.LASF32:
	.string	"_markers"
.LASF94:
	.string	"fmax"
.LASF106:
	.string	"oldnodecount"
.LASF158:
	.string	"TTProbes"
.LASF89:
	.string	"old_ep"
.LASF83:
	.string	"remove_one"
.LASF110:
	.string	"old_move"
.LASF170:
	.string	"ext_recap"
.LASF97:
	.string	"ksswap"
.LASF127:
	.string	"fifty"
.LASF146:
	.string	"xb_mode"
.LASF169:
	.string	"ext_check"
.LASF159:
	.string	"TTHits"
.LASF153:
	.string	"maxposdiff"
.LASF144:
	.string	"time_exit"
.LASF184:
	.string	"numb_moves"
.LASF217:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF53:
	.string	"_pos"
.LASF1:
	.string	"TRUE"
.LASF31:
	.string	"_IO_save_end"
.LASF68:
	.string	"perft"
.LASF126:
	.string	"i_depth"
.LASF141:
	.string	"captures"
.LASF105:
	.string	"root_score"
.LASF190:
	.string	"pn_move"
.LASF125:
	.string	"pv_length"
.LASF124:
	.string	"result"
.LASF100:
	.string	"dropcut"
.LASF17:
	.string	"long long unsigned int"
.LASF63:
	.string	"see_values"
.LASF56:
	.string	"captured"
.LASF210:
	.string	"extendedtime"
.LASF102:
	.string	"search_root"
.LASF30:
	.string	"_IO_backup_base"
.LASF120:
	.string	"disp_b"
.LASF41:
	.string	"_offset"
.LASF187:
	.string	"ugly_ep_hack"
.LASF189:
	.string	"pn_time"
.LASF214:
	.string	"singular"
.LASF34:
	.string	"_fileno"
.LASF145:
	.string	"time_failure"
.LASF59:
	.string	"move_s"
.LASF166:
	.string	"is_pondering"
.LASF99:
	.string	"legalmoves"
.LASF15:
	.string	"size_t"
.LASF118:
	.string	"tree"
.LASF128:
	.string	"piece_count"
.LASF213:
	.string	"recaps"
.LASF23:
	.string	"_IO_read_base"
.LASF147:
	.string	"maxdepth"
.LASF168:
	.string	"PVSF"
.LASF111:
	.string	"elapsed"
.LASF51:
	.string	"_next"
.LASF74:
	.string	"legal_move"
.LASF152:
	.string	"path"
.LASF91:
	.string	"first"
.LASF165:
	.string	"TExt"
.LASF107:
	.string	"think"
.LASF138:
	.string	"time_for_move"
.LASF14:
	.string	"char"
.LASF47:
	.string	"_mode"
.LASF193:
	.string	"s_threat"
.LASF197:
	.string	"cfg_onerep"
.LASF122:
	.string	"ep_square"
.LASF50:
	.string	"_IO_marker"
.LASF75:
	.string	"no_moves"
.LASF113:
	.string	"true_score"
.LASF21:
	.string	"_IO_read_ptr"
.LASF161:
	.string	"Material"
.LASF88:
	.string	"donull"
.LASF116:
	.string	"pn_restart"
.LASF172:
	.string	"razor_drop"
.LASF18:
	.string	"time_t"
.LASF132:
	.string	"killer_scores"
.LASF133:
	.string	"killer_scores2"
.LASF134:
	.string	"killer_scores3"
.LASF135:
	.string	"moves_to_tc"
.LASF90:
	.string	"incheck"
.LASF24:
	.string	"_IO_write_base"
.LASF72:
	.string	"score"
.LASF136:
	.string	"time_left"
.LASF16:
	.string	"long long int"
.LASF142:
	.string	"searching_pv"
.LASF188:
	.string	"kingcap"
.LASF29:
	.string	"_IO_save_base"
.LASF69:
	.string	"depth"
.LASF115:
	.string	"lastlegal"
.LASF194:
	.string	"cfg_razordrop"
.LASF143:
	.string	"post"
.LASF55:
	.string	"target"
.LASF61:
	.string	"moves"
.LASF164:
	.string	"NCuts"
.LASF79:
	.string	"bound"
.LASF86:
	.string	"is_null"
.LASF154:
	.string	"start_time"
.LASF42:
	.string	"__pad1"
.LASF43:
	.string	"__pad2"
.LASF44:
	.string	"__pad3"
.LASF45:
	.string	"__pad4"
.LASF46:
	.string	"__pad5"
.LASF64:
	.string	"num_moves"
.LASF207:
	.string	"postpv"
.LASF160:
	.string	"TTStores"
.LASF38:
	.string	"_vtable_offset"
.LASF66:
	.string	"seev"
.LASF109:
	.string	"temp_move"
.LASF180:
	.string	"partnerdead"
.LASF67:
	.string	"order_moves"
.LASF103:
	.string	"originalbeta"
.LASF84:
	.string	"marker"
.LASF57:
	.string	"promoted"
.LASF215:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF114:
	.string	"tmptmp"
.LASF22:
	.string	"_IO_read_end"
.LASF173:
	.string	"razor_material"
.LASF7:
	.string	"short int"
.LASF139:
	.string	"cur_score"
.LASF96:
	.string	"kswap"
.LASF8:
	.string	"long int"
.LASF98:
	.string	"afterincheck"
.LASF155:
	.string	"hash"
.LASF198:
	.string	"cfg_recap"
.LASF156:
	.string	"ECacheProbes"
.LASF200:
	.string	"realholdings"
.LASF82:
	.string	"qsearch"
.LASF81:
	.string	"oldtime"
.LASF104:
	.string	"best_move"
.LASF140:
	.string	"history_h"
.LASF181:
	.string	"tradefreely"
.LASF0:
	.string	"FALSE"
.LASF167:
	.string	"FULL"
.LASF183:
	.string	"fixed_time"
.LASF76:
	.string	"sbest"
.LASF208:
	.string	"legals"
.LASF58:
	.string	"castled"
.LASF191:
	.string	"rootlosers"
.LASF40:
	.string	"_lock"
.LASF176:
	.string	"forcedwin"
.LASF12:
	.string	"sizetype"
.LASF175:
	.string	"Variant"
.LASF5:
	.string	"long unsigned int"
.LASF36:
	.string	"_old_offset"
.LASF49:
	.string	"_IO_FILE"
.LASF199:
	.string	"userealholdings"
.LASF70:
	.string	"alpha"
.LASF119:
	.string	"indent"
.LASF80:
	.string	"originalalpha"
.LASF171:
	.string	"ext_onerep"
.LASF204:
	.string	"movetotal"
.LASF87:
	.string	"threat"
.LASF65:
	.string	"best"
.LASF2:
	.string	"unsigned char"
.LASF62:
	.string	"move_ordering"
.LASF52:
	.string	"_sbuf"
.LASF101:
	.string	"rc_index"
.LASF25:
	.string	"_IO_write_ptr"
.LASF174:
	.string	"Xrank"
.LASF202:
	.string	"hash_history"
.LASF196:
	.string	"cfg_futprune"
.LASF73:
	.string	"standpat"
.LASF212:
	.string	"checks"
.LASF195:
	.string	"cfg_cutdrop"
.LASF13:
	.string	"__time_t"
.LASF71:
	.string	"beta"
.LASF178:
	.string	"must_sit"
.LASF201:
	.string	"move_number"
.LASF211:
	.string	"rootnodecount"
.LASF93:
	.string	"fscore"
.LASF121:
	.string	"board"
.LASF205:
	.string	"searching_move"
.LASF10:
	.string	"__off_t"
.LASF182:
	.string	"true_i_depth"
.LASF112:
	.string	"temp_score"
.LASF6:
	.string	"signed char"
.LASF78:
	.string	"delta"
.LASF3:
	.string	"short unsigned int"
.LASF157:
	.string	"ECacheHits"
.LASF149:
	.string	"killer1"
.LASF150:
	.string	"killer2"
.LASF151:
	.string	"killer3"
.LASF108:
	.string	"comp_move"
.LASF203:
	.string	"moveleft"
.LASF123:
	.string	"white_to_move"
.LASF33:
	.string	"_chain"
.LASF19:
	.string	"FILE"
.LASF35:
	.string	"_flags2"
.LASF206:
	.string	"drop_cuts"
.LASF130:
	.string	"raw_nodes"
.LASF9:
	.string	"xbool"
.LASF37:
	.string	"_cur_column"
.LASF95:
	.string	"selective"
.LASF11:
	.string	"__off64_t"
.LASF48:
	.string	"_unused2"
.LASF27:
	.string	"_IO_buf_base"
.LASF216:
	.string	"search.c"
.LASF192:
	.string	"alllosers"
.LASF137:
	.string	"time_cushion"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
