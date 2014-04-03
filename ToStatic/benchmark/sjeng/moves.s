	.file	"moves.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 moves.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	total_moves,4,4
	.comm	total_movegens,4,4
	.comm	numb_moves,4,4
	.local	genfor
	.comm	genfor,8,8
	.comm	fcaptures,4,4
	.comm	gfrom,4,4
	.comm	kingcap,4,4
	.globl	check_legal
	.type	check_legal, @function
check_legal:
.LFB2:
	.file 1 "moves.c"
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# moves, moves
	movl	%esi, -28(%rbp)	# m, m
	movl	%edx, -32(%rbp)	# incheck, incheck
	.loc 1 31 0
	movl	-28(%rbp), %eax	# m, tmp427
	movslq	%eax, %rdx	# tmp427, D.7136
	movq	%rdx, %rax	# D.7136, tmp428
	addq	%rax, %rax	# tmp428
	addq	%rdx, %rax	# D.7136, tmp428
	salq	$3, %rax	#, tmp429
	movq	%rax, %rdx	# tmp428, D.7136
	movq	-24(%rbp), %rax	# moves, tmp430
	addq	%rdx, %rax	# D.7136, D.7137
	movl	16(%rax), %eax	# _24->castled, tmp431
	movl	%eax, -12(%rbp)	# tmp431, castled
	.loc 1 32 0
	movl	-28(%rbp), %eax	# m, tmp432
	movslq	%eax, %rdx	# tmp432, D.7136
	movq	%rdx, %rax	# D.7136, tmp433
	addq	%rax, %rax	# tmp433
	addq	%rdx, %rax	# D.7136, tmp433
	salq	$3, %rax	#, tmp434
	movq	%rax, %rdx	# tmp433, D.7136
	movq	-24(%rbp), %rax	# moves, tmp435
	addq	%rdx, %rax	# D.7136, D.7137
	movl	(%rax), %eax	# _28->from, tmp436
	movl	%eax, -8(%rbp)	# tmp436, from
	.loc 1 33 0
	movl	-28(%rbp), %eax	# m, tmp437
	movslq	%eax, %rdx	# tmp437, D.7136
	movq	%rdx, %rax	# D.7136, tmp438
	addq	%rax, %rax	# tmp438
	addq	%rdx, %rax	# D.7136, tmp438
	salq	$3, %rax	#, tmp439
	movq	%rax, %rdx	# tmp438, D.7136
	movq	-24(%rbp), %rax	# moves, tmp440
	addq	%rdx, %rax	# D.7136, D.7137
	movl	4(%rax), %eax	# _32->target, tmp441
	movl	%eax, -4(%rbp)	# tmp441, target
	.loc 1 36 0
	movl	Variant(%rip), %eax	# Variant, Variant.0
	cmpl	$3, %eax	#, Variant.0
	jne	.L2	#,
	.loc 1 36 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L2:
	.loc 1 39 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, castled
	je	.L4	#,
	.loc 1 42 0
	cmpl	$1, -12(%rbp)	#, castled
	jne	.L5	#,
	.loc 1 43 0
	movl	$0, %esi	#,
	movl	$30, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L6	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L6:
	.loc 1 44 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L7	#,
	.loc 1 44 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L7:
	.loc 1 45 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$32, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L8	#,
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L8:
	.loc 1 46 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L5:
	.loc 1 49 0
	cmpl	$2, -12(%rbp)	#, castled
	jne	.L9	#,
	.loc 1 50 0
	movl	$0, %esi	#,
	movl	$30, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L10	#,
	.loc 1 50 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L10:
	.loc 1 51 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$29, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L11	#,
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L11:
	.loc 1 52 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$28, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L12	#,
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L12:
	.loc 1 53 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L9:
	.loc 1 56 0
	cmpl	$3, -12(%rbp)	#, castled
	jne	.L13	#,
	.loc 1 57 0
	movl	$1, %esi	#,
	movl	$114, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L14	#,
	.loc 1 57 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L14:
	.loc 1 58 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$115, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L15	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L15:
	.loc 1 59 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$116, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L16	#,
	.loc 1 59 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L16:
	.loc 1 60 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L13:
	.loc 1 63 0
	cmpl	$4, -12(%rbp)	#, castled
	jne	.L17	#,
	.loc 1 64 0
	movl	$1, %esi	#,
	movl	$114, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L18	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L18:
	.loc 1 65 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$113, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L19	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L19:
	.loc 1 66 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$112, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L20	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L20:
	.loc 1 67 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L4:
	.loc 1 78 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.1
	andl	$1, %eax	#, D.7139
	testl	%eax, %eax	# D.7139
	je	.L21	#,
	.loc 1 80 0
	cmpl	$0, -32(%rbp)	#, incheck
	jne	.L22	#,
	.loc 1 82 0
	movl	-28(%rbp), %eax	# m, tmp442
	movslq	%eax, %rdx	# tmp442, D.7136
	movq	%rdx, %rax	# D.7136, tmp443
	addq	%rax, %rax	# tmp443
	addq	%rdx, %rax	# D.7136, tmp443
	salq	$3, %rax	#, tmp444
	movq	%rax, %rdx	# tmp443, D.7136
	movq	-24(%rbp), %rax	# moves, tmp445
	addq	%rdx, %rax	# D.7136, D.7137
	movl	(%rax), %eax	# _70->from, D.7139
	testl	%eax, %eax	# D.7139
	jne	.L23	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L23:
	.loc 1 84 0 is_stmt 1
	movl	-28(%rbp), %eax	# m, tmp446
	movslq	%eax, %rdx	# tmp446, D.7136
	movq	%rdx, %rax	# D.7136, tmp447
	addq	%rax, %rax	# tmp447
	addq	%rdx, %rax	# D.7136, tmp447
	salq	$3, %rax	#, tmp448
	movq	%rax, %rdx	# tmp447, D.7136
	movq	-24(%rbp), %rax	# moves, tmp449
	addq	%rdx, %rax	# D.7136, D.7137
	movl	12(%rax), %eax	# _75->promoted, D.7139
	testl	%eax, %eax	# D.7139
	jne	.L24	#,
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# target, tmp451
	cltq
	movl	board(,%rax,4), %eax	# board, iftmp.2
	jmp	.L25	#
.L24:
	.loc 1 84 0 discriminator 2
	movl	$2, %eax	#, iftmp.2
.L25:
	.loc 1 84 0 discriminator 3
	cmpl	$12, %eax	#, iftmp.2
	ja	.L134	#,
	movl	%eax, %eax	# iftmp.2, tmp452
	movq	.L28(,%rax,8), %rax	#, tmp453
	jmp	*%rax	# tmp453
	.section	.rodata
	.align 8
	.align 4
.L28:
	.quad	.L134
	.quad	.L134
	.quad	.L27
	.quad	.L134
	.quad	.L29
	.quad	.L134
	.quad	.L134
	.quad	.L134
	.quad	.L30
	.quad	.L134
	.quad	.L31
	.quad	.L134
	.quad	.L32
	.text
.L27:
	.loc 1 89 0 is_stmt 1
	movl	-28(%rbp), %eax	# m, tmp454
	movslq	%eax, %rdx	# tmp454, D.7136
	movq	%rdx, %rax	# D.7136, tmp455
	addq	%rax, %rax	# tmp455
	addq	%rdx, %rax	# D.7136, tmp455
	salq	$3, %rax	#, tmp456
	movq	%rax, %rdx	# tmp455, D.7136
	movq	-24(%rbp), %rax	# moves, tmp457
	addq	%rdx, %rax	# D.7136, D.7137
	movl	8(%rax), %eax	# _81->captured, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L33	#,
	.loc 1 91 0
	movl	-8(%rbp), %eax	# from, tmp459
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.3
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 92 0
	movl	-8(%rbp), %eax	# from, tmp462
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.4
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 93 0
	movl	-8(%rbp), %eax	# from, tmp465
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.5
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 94 0
	movl	-8(%rbp), %eax	# from, tmp468
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.6
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 95 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L33:
	.loc 1 99 0
	movl	-8(%rbp), %eax	# from, tmp471
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.7
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 100 0
	movl	-8(%rbp), %eax	# from, tmp474
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.8
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 101 0
	movl	-8(%rbp), %eax	# from, tmp477
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.9
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L34	#,
	.loc 1 102 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L34:
	.loc 1 104 0
	jmp	.L35	#
.L29:
	.loc 1 107 0
	movl	-8(%rbp), %eax	# from, tmp480
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.10
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L36	#,
	.loc 1 108 0
	movl	-8(%rbp), %eax	# from, tmp483
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.11
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L36	#,
	.loc 1 109 0
	movl	-8(%rbp), %eax	# from, tmp486
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.12
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L36	#,
	.loc 1 110 0
	movl	-8(%rbp), %eax	# from, tmp489
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.13
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L36	#,
	.loc 1 111 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L36:
	.loc 1 112 0
	jmp	.L35	#
.L32:
	.loc 1 116 0
	movl	-8(%rbp), %eax	# from, tmp492
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.14
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L37	#,
	.loc 1 117 0
	movl	-8(%rbp), %eax	# from, tmp495
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.15
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L37	#,
	.loc 1 119 0
	movl	-8(%rbp), %eax	# from, tmp498
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	-4(%rbp), %eax	# target, tmp500
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L38	#,
	.loc 1 123 0
	movl	-8(%rbp), %eax	# from, tmp502
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.16
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L37	#,
	.loc 1 124 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L38:
	.loc 1 128 0
	movl	-8(%rbp), %eax	# from, tmp505
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.17
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L37	#,
	.loc 1 129 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L37:
	.loc 1 132 0
	jmp	.L35	#
.L30:
	.loc 1 136 0
	movl	-8(%rbp), %eax	# from, tmp508
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.18
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L39	#,
	.loc 1 137 0
	movl	-8(%rbp), %eax	# from, tmp511
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.19
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L39	#,
	.loc 1 140 0
	movl	-8(%rbp), %eax	# from, tmp514
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	-4(%rbp), %eax	# target, tmp516
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L40	#,
	.loc 1 142 0
	movl	-8(%rbp), %eax	# from, tmp518
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.20
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L39	#,
	.loc 1 143 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L40:
	.loc 1 148 0
	movl	-8(%rbp), %eax	# from, tmp521
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.21
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L39	#,
	.loc 1 149 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L39:
	.loc 1 152 0
	jmp	.L35	#
.L31:
	.loc 1 155 0
	movl	-8(%rbp), %eax	# from, tmp524
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	-4(%rbp), %eax	# target, tmp526
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L41	#,
	.loc 1 157 0
	movl	-8(%rbp), %eax	# from, tmp528
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.22
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 158 0
	movl	-8(%rbp), %eax	# from, tmp531
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.23
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 159 0
	movl	-8(%rbp), %eax	# from, tmp534
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.24
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 160 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L41:
	.loc 1 162 0
	movl	-8(%rbp), %eax	# from, tmp537
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	-4(%rbp), %eax	# target, tmp539
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L43	#,
	.loc 1 164 0
	movl	-8(%rbp), %eax	# from, tmp541
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.25
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 165 0
	movl	-8(%rbp), %eax	# from, tmp544
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.26
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 166 0
	movl	-8(%rbp), %eax	# from, tmp547
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.27
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 167 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L43:
	.loc 1 169 0
	movl	-8(%rbp), %eax	# from, tmp550
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	-4(%rbp), %eax	# target, tmp552
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L44	#,
	.loc 1 171 0
	movl	-8(%rbp), %eax	# from, tmp554
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.28
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 172 0
	movl	-8(%rbp), %eax	# from, tmp557
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.29
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 173 0
	movl	-8(%rbp), %eax	# from, tmp560
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.30
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 174 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L44:
	.loc 1 176 0
	movl	-8(%rbp), %eax	# from, tmp563
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	-4(%rbp), %eax	# target, tmp565
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L42	#,
	.loc 1 178 0
	movl	-8(%rbp), %eax	# from, tmp567
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.31
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 179 0
	movl	-8(%rbp), %eax	# from, tmp570
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.32
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 180 0
	movl	-8(%rbp), %eax	# from, tmp573
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.33
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L42	#,
	.loc 1 181 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L42:
	.loc 1 183 0
	jmp	.L35	#
.L134:
	.loc 1 185 0
	nop
.L35:
	.loc 1 194 0
	movl	-4(%rbp), %eax	# target, tmp576
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$6, %eax	#, D.7139
	je	.L22	#,
	.loc 1 196 0
	movl	-8(%rbp), %eax	# from, tmp578
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.34
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L45	#,
	.loc 1 198 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.35
	cmpl	-8(%rbp), %eax	# from, bking_loc.35
	jle	.L46	#,
	.loc 1 200 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.36
	subl	$12, %eax	#, tmp580
	movl	%eax, -16(%rbp)	# tmp580, l
	jmp	.L47	#
.L48:
	.loc 1 200 0 is_stmt 0 discriminator 2
	subl	$12, -16(%rbp)	#, l
.L47:
	.loc 1 200 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp582
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L48	#,
	.loc 1 201 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp584
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$7, %eax	#, D.7139
	je	.L49	#,
	.loc 1 201 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp586
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L49:
	.loc 1 201 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L46:
	.loc 1 205 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.37
	addl	$12, %eax	#, tmp587
	movl	%eax, -16(%rbp)	# tmp587, l
	jmp	.L51	#
.L52:
	.loc 1 205 0 is_stmt 0 discriminator 2
	addl	$12, -16(%rbp)	#, l
.L51:
	.loc 1 205 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp589
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L52	#,
	.loc 1 206 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp591
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$7, %eax	#, D.7139
	je	.L53	#,
	.loc 1 206 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp593
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L53:
	.loc 1 206 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L45:
	.loc 1 209 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp595
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.38
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L54	#,
	.loc 1 211 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.39
	cmpl	-8(%rbp), %eax	# from, bking_loc.39
	jle	.L55	#,
	.loc 1 213 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.40
	subl	$1, %eax	#, tmp597
	movl	%eax, -16(%rbp)	# tmp597, l
	jmp	.L56	#
.L57:
	.loc 1 213 0 is_stmt 0 discriminator 2
	subl	$1, -16(%rbp)	#, l
.L56:
	.loc 1 213 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp599
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L57	#,
	.loc 1 214 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp601
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$7, %eax	#, D.7139
	je	.L58	#,
	.loc 1 214 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp603
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L58:
	.loc 1 214 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L55:
	.loc 1 218 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.41
	addl	$1, %eax	#, tmp604
	movl	%eax, -16(%rbp)	# tmp604, l
	jmp	.L59	#
.L60:
	.loc 1 218 0 is_stmt 0 discriminator 2
	addl	$1, -16(%rbp)	#, l
.L59:
	.loc 1 218 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp606
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L60	#,
	.loc 1 219 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp608
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$7, %eax	#, D.7139
	je	.L61	#,
	.loc 1 219 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp610
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L61:
	.loc 1 219 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L54:
	.loc 1 222 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp612
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.42
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L62	#,
	.loc 1 224 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.43
	cmpl	-8(%rbp), %eax	# from, bking_loc.43
	jle	.L63	#,
	.loc 1 226 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.44
	subl	$13, %eax	#, tmp614
	movl	%eax, -16(%rbp)	# tmp614, l
	jmp	.L64	#
.L65:
	.loc 1 226 0 is_stmt 0 discriminator 2
	subl	$13, -16(%rbp)	#, l
.L64:
	.loc 1 226 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp616
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L65	#,
	.loc 1 227 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp618
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$11, %eax	#, D.7139
	je	.L66	#,
	.loc 1 227 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp620
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L66:
	.loc 1 227 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L63:
	.loc 1 231 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.45
	addl	$13, %eax	#, tmp621
	movl	%eax, -16(%rbp)	# tmp621, l
	jmp	.L67	#
.L68:
	.loc 1 231 0 is_stmt 0 discriminator 2
	addl	$13, -16(%rbp)	#, l
.L67:
	.loc 1 231 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp623
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L68	#,
	.loc 1 232 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp625
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$11, %eax	#, D.7139
	je	.L69	#,
	.loc 1 232 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp627
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L69:
	.loc 1 232 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L62:
	.loc 1 235 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp629
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.46
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L50	#,
	.loc 1 237 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.47
	cmpl	-8(%rbp), %eax	# from, bking_loc.47
	jle	.L70	#,
	.loc 1 239 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.48
	subl	$11, %eax	#, tmp631
	movl	%eax, -16(%rbp)	# tmp631, l
	jmp	.L71	#
.L72:
	.loc 1 239 0 is_stmt 0 discriminator 2
	subl	$11, -16(%rbp)	#, l
.L71:
	.loc 1 239 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp633
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L72	#,
	.loc 1 240 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp635
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$11, %eax	#, D.7139
	je	.L73	#,
	.loc 1 240 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp637
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L73:
	.loc 1 240 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L70:
	.loc 1 244 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.49
	addl	$11, %eax	#, tmp638
	movl	%eax, -16(%rbp)	# tmp638, l
	jmp	.L74	#
.L75:
	.loc 1 244 0 is_stmt 0 discriminator 2
	addl	$11, -16(%rbp)	#, l
.L74:
	.loc 1 244 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp640
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L75	#,
	.loc 1 245 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp642
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$11, %eax	#, D.7139
	je	.L76	#,
	.loc 1 245 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp644
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$9, %eax	#, D.7139
	jne	.L50	#,
.L76:
	.loc 1 245 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L50:
	.loc 1 248 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L22:
	.loc 1 252 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.50
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.50,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L77	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L77:
	.loc 1 253 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L21:
	.loc 1 260 0
	cmpl	$0, -32(%rbp)	#, incheck
	jne	.L78	#,
	.loc 1 262 0
	movl	-28(%rbp), %eax	# m, tmp645
	movslq	%eax, %rdx	# tmp645, D.7136
	movq	%rdx, %rax	# D.7136, tmp646
	addq	%rax, %rax	# tmp646
	addq	%rdx, %rax	# D.7136, tmp646
	salq	$3, %rax	#, tmp647
	movq	%rax, %rdx	# tmp646, D.7136
	movq	-24(%rbp), %rax	# moves, tmp648
	addq	%rdx, %rax	# D.7136, D.7137
	movl	(%rax), %eax	# _279->from, D.7139
	testl	%eax, %eax	# D.7139
	jne	.L79	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L79:
	.loc 1 264 0 is_stmt 1
	movl	-28(%rbp), %eax	# m, tmp649
	movslq	%eax, %rdx	# tmp649, D.7136
	movq	%rdx, %rax	# D.7136, tmp650
	addq	%rax, %rax	# tmp650
	addq	%rdx, %rax	# D.7136, tmp650
	salq	$3, %rax	#, tmp651
	movq	%rax, %rdx	# tmp650, D.7136
	movq	-24(%rbp), %rax	# moves, tmp652
	addq	%rdx, %rax	# D.7136, D.7137
	movl	12(%rax), %eax	# _284->promoted, D.7139
	testl	%eax, %eax	# D.7139
	jne	.L80	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# target, tmp654
	cltq
	movl	board(,%rax,4), %eax	# board, iftmp.51
	jmp	.L81	#
.L80:
	.loc 1 264 0 discriminator 2
	movl	$1, %eax	#, iftmp.51
.L81:
	.loc 1 264 0 discriminator 3
	cmpl	$11, %eax	#, iftmp.51
	ja	.L135	#,
	movl	%eax, %eax	# iftmp.51, tmp655
	movq	.L84(,%rax,8), %rax	#, tmp656
	jmp	*%rax	# tmp656
	.section	.rodata
	.align 8
	.align 4
.L84:
	.quad	.L135
	.quad	.L83
	.quad	.L135
	.quad	.L85
	.quad	.L135
	.quad	.L135
	.quad	.L135
	.quad	.L86
	.quad	.L135
	.quad	.L87
	.quad	.L135
	.quad	.L88
	.text
.L83:
	.loc 1 269 0 is_stmt 1
	movl	-28(%rbp), %eax	# m, tmp657
	movslq	%eax, %rdx	# tmp657, D.7136
	movq	%rdx, %rax	# D.7136, tmp658
	addq	%rax, %rax	# tmp658
	addq	%rdx, %rax	# D.7136, tmp658
	salq	$3, %rax	#, tmp659
	movq	%rax, %rdx	# tmp658, D.7136
	movq	-24(%rbp), %rax	# moves, tmp660
	addq	%rdx, %rax	# D.7136, D.7137
	movl	8(%rax), %eax	# _290->captured, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L89	#,
	.loc 1 271 0
	movl	-8(%rbp), %eax	# from, tmp662
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.52
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 272 0
	movl	-8(%rbp), %eax	# from, tmp665
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.53
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 273 0
	movl	-8(%rbp), %eax	# from, tmp668
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.54
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 274 0
	movl	-8(%rbp), %eax	# from, tmp671
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.55
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 275 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L89:
	.loc 1 279 0
	movl	-8(%rbp), %eax	# from, tmp674
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.56
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 280 0
	movl	-8(%rbp), %eax	# from, tmp677
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.57
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 281 0
	movl	-8(%rbp), %eax	# from, tmp680
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.58
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L90	#,
	.loc 1 282 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L90:
	.loc 1 284 0
	jmp	.L91	#
.L85:
	.loc 1 287 0
	movl	-8(%rbp), %eax	# from, tmp683
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.59
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L92	#,
	.loc 1 288 0
	movl	-8(%rbp), %eax	# from, tmp686
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.60
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L92	#,
	.loc 1 289 0
	movl	-8(%rbp), %eax	# from, tmp689
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.61
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L92	#,
	.loc 1 290 0
	movl	-8(%rbp), %eax	# from, tmp692
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.62
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L92	#,
	.loc 1 291 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L92:
	.loc 1 292 0
	jmp	.L91	#
.L88:
	.loc 1 296 0
	movl	-8(%rbp), %eax	# from, tmp695
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.63
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L93	#,
	.loc 1 297 0
	movl	-8(%rbp), %eax	# from, tmp698
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.64
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L93	#,
	.loc 1 299 0
	movl	-8(%rbp), %eax	# from, tmp701
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	-4(%rbp), %eax	# target, tmp703
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L94	#,
	.loc 1 303 0
	movl	-8(%rbp), %eax	# from, tmp705
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.65
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L93	#,
	.loc 1 304 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L94:
	.loc 1 308 0
	movl	-8(%rbp), %eax	# from, tmp708
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.66
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L93	#,
	.loc 1 309 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L93:
	.loc 1 312 0
	jmp	.L91	#
.L86:
	.loc 1 316 0
	movl	-8(%rbp), %eax	# from, tmp711
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.67
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L95	#,
	.loc 1 317 0
	movl	-8(%rbp), %eax	# from, tmp714
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.68
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L95	#,
	.loc 1 320 0
	movl	-8(%rbp), %eax	# from, tmp717
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	-4(%rbp), %eax	# target, tmp719
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L96	#,
	.loc 1 322 0
	movl	-8(%rbp), %eax	# from, tmp721
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.69
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L95	#,
	.loc 1 323 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L96:
	.loc 1 328 0
	movl	-8(%rbp), %eax	# from, tmp724
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.70
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L95	#,
	.loc 1 329 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L95:
	.loc 1 332 0
	jmp	.L91	#
.L87:
	.loc 1 335 0
	movl	-8(%rbp), %eax	# from, tmp727
	cltq
	movl	Xfile(,%rax,4), %ecx	# Xfile, D.7139
	movl	-28(%rbp), %eax	# m, tmp728
	movslq	%eax, %rdx	# tmp728, D.7136
	movq	%rdx, %rax	# D.7136, tmp729
	addq	%rax, %rax	# tmp729
	addq	%rdx, %rax	# D.7136, tmp729
	salq	$3, %rax	#, tmp730
	movq	%rax, %rdx	# tmp729, D.7136
	movq	-24(%rbp), %rax	# moves, tmp731
	addq	%rdx, %rax	# D.7136, D.7137
	movl	4(%rax), %eax	# _363->target, D.7139
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %ecx	# D.7139, D.7139
	jne	.L97	#,
	.loc 1 337 0
	movl	-8(%rbp), %eax	# from, tmp734
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.71
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 338 0
	movl	-8(%rbp), %eax	# from, tmp737
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.72
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 339 0
	movl	-8(%rbp), %eax	# from, tmp740
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.73
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 340 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L97:
	.loc 1 342 0
	movl	-8(%rbp), %eax	# from, tmp743
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	-4(%rbp), %eax	# target, tmp745
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L99	#,
	.loc 1 344 0
	movl	-8(%rbp), %eax	# from, tmp747
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.74
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 345 0
	movl	-8(%rbp), %eax	# from, tmp750
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.75
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 346 0
	movl	-8(%rbp), %eax	# from, tmp753
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.76
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 347 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L99:
	.loc 1 349 0
	movl	-8(%rbp), %eax	# from, tmp756
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	-4(%rbp), %eax	# target, tmp758
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L100	#,
	.loc 1 351 0
	movl	-8(%rbp), %eax	# from, tmp760
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.77
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 352 0
	movl	-8(%rbp), %eax	# from, tmp763
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.78
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 353 0
	movl	-8(%rbp), %eax	# from, tmp766
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.79
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 354 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L100:
	.loc 1 356 0
	movl	-8(%rbp), %eax	# from, tmp769
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	-4(%rbp), %eax	# target, tmp771
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L98	#,
	.loc 1 358 0
	movl	-8(%rbp), %eax	# from, tmp773
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.80
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 359 0
	movl	-8(%rbp), %eax	# from, tmp776
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.81
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 360 0
	movl	-8(%rbp), %eax	# from, tmp779
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.82
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	je	.L98	#,
	.loc 1 361 0
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L98:
	.loc 1 363 0
	jmp	.L91	#
.L135:
	.loc 1 365 0
	nop
.L91:
	.loc 1 368 0
	movl	-4(%rbp), %eax	# target, tmp782
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$5, %eax	#, D.7139
	je	.L78	#,
	.loc 1 370 0
	movl	-8(%rbp), %eax	# from, tmp784
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.83
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L101	#,
	.loc 1 372 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.84
	cmpl	-8(%rbp), %eax	# from, wking_loc.84
	jle	.L102	#,
	.loc 1 374 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.85
	subl	$12, %eax	#, tmp786
	movl	%eax, -16(%rbp)	# tmp786, l
	jmp	.L103	#
.L104:
	.loc 1 374 0 is_stmt 0 discriminator 2
	subl	$12, -16(%rbp)	#, l
.L103:
	.loc 1 374 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp788
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L104	#,
	.loc 1 375 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp790
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$8, %eax	#, D.7139
	je	.L105	#,
	.loc 1 375 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp792
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L105:
	.loc 1 375 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L102:
	.loc 1 379 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.86
	addl	$12, %eax	#, tmp793
	movl	%eax, -16(%rbp)	# tmp793, l
	jmp	.L107	#
.L108:
	.loc 1 379 0 is_stmt 0 discriminator 2
	addl	$12, -16(%rbp)	#, l
.L107:
	.loc 1 379 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp795
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L108	#,
	.loc 1 380 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp797
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$8, %eax	#, D.7139
	je	.L109	#,
	.loc 1 380 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp799
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L109:
	.loc 1 380 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L101:
	.loc 1 383 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp801
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.87
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L110	#,
	.loc 1 385 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.88
	cmpl	-8(%rbp), %eax	# from, wking_loc.88
	jle	.L111	#,
	.loc 1 387 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.89
	subl	$1, %eax	#, tmp803
	movl	%eax, -16(%rbp)	# tmp803, l
	jmp	.L112	#
.L113:
	.loc 1 387 0 is_stmt 0 discriminator 2
	subl	$1, -16(%rbp)	#, l
.L112:
	.loc 1 387 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp805
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L113	#,
	.loc 1 388 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp807
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$8, %eax	#, D.7139
	je	.L114	#,
	.loc 1 388 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp809
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L114:
	.loc 1 388 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L111:
	.loc 1 392 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.90
	addl	$1, %eax	#, tmp810
	movl	%eax, -16(%rbp)	# tmp810, l
	jmp	.L115	#
.L116:
	.loc 1 392 0 is_stmt 0 discriminator 2
	addl	$1, -16(%rbp)	#, l
.L115:
	.loc 1 392 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp812
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L116	#,
	.loc 1 393 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp814
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$8, %eax	#, D.7139
	je	.L117	#,
	.loc 1 393 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp816
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L117:
	.loc 1 393 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L110:
	.loc 1 396 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp818
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.91
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L118	#,
	.loc 1 398 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.92
	cmpl	-8(%rbp), %eax	# from, wking_loc.92
	jle	.L119	#,
	.loc 1 400 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.93
	subl	$13, %eax	#, tmp820
	movl	%eax, -16(%rbp)	# tmp820, l
	jmp	.L120	#
.L121:
	.loc 1 400 0 is_stmt 0 discriminator 2
	subl	$13, -16(%rbp)	#, l
.L120:
	.loc 1 400 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp822
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L121	#,
	.loc 1 401 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp824
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$12, %eax	#, D.7139
	je	.L122	#,
	.loc 1 401 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp826
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L122:
	.loc 1 401 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L119:
	.loc 1 405 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.94
	addl	$13, %eax	#, tmp827
	movl	%eax, -16(%rbp)	# tmp827, l
	jmp	.L123	#
.L124:
	.loc 1 405 0 is_stmt 0 discriminator 2
	addl	$13, -16(%rbp)	#, l
.L123:
	.loc 1 405 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp829
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L124	#,
	.loc 1 406 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp831
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$12, %eax	#, D.7139
	je	.L125	#,
	.loc 1 406 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp833
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L125:
	.loc 1 406 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L118:
	.loc 1 409 0 is_stmt 1
	movl	-8(%rbp), %eax	# from, tmp835
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7139
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.95
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7139
	cmpl	%eax, %edx	# D.7139, D.7139
	jne	.L106	#,
	.loc 1 411 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.96
	cmpl	-8(%rbp), %eax	# from, wking_loc.96
	jle	.L126	#,
	.loc 1 413 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.97
	subl	$11, %eax	#, tmp837
	movl	%eax, -16(%rbp)	# tmp837, l
	jmp	.L127	#
.L128:
	.loc 1 413 0 is_stmt 0 discriminator 2
	subl	$11, -16(%rbp)	#, l
.L127:
	.loc 1 413 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp839
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L128	#,
	.loc 1 414 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp841
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$12, %eax	#, D.7139
	je	.L129	#,
	.loc 1 414 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp843
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L129:
	.loc 1 414 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L126:
	.loc 1 418 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.98
	addl	$11, %eax	#, tmp844
	movl	%eax, -16(%rbp)	# tmp844, l
	jmp	.L130	#
.L131:
	.loc 1 418 0 is_stmt 0 discriminator 2
	addl	$11, -16(%rbp)	#, l
.L130:
	.loc 1 418 0 discriminator 1
	movl	-16(%rbp), %eax	# l, tmp846
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$13, %eax	#, D.7139
	je	.L131	#,
	.loc 1 419 0 is_stmt 1
	movl	-16(%rbp), %eax	# l, tmp848
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$12, %eax	#, D.7139
	je	.L132	#,
	.loc 1 419 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp850
	cltq
	movl	board(,%rax,4), %eax	# board, D.7139
	cmpl	$10, %eax	#, D.7139
	jne	.L106	#,
.L132:
	.loc 1 419 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L106:
	.loc 1 422 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L78:
	.loc 1 426 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.99
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.99,
	call	is_attacked	#
	testl	%eax, %eax	# D.7138
	je	.L133	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7135
	jmp	.L3	#
.L133:
	.loc 1 427 0 is_stmt 1
	movl	$1, %eax	#, D.7135
	jmp	.L3	#
.L17:
	.loc 1 431 0
	movl	$0, %eax	#, D.7135
.L3:
	.loc 1 433 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_legal, .-check_legal
	.globl	gen
	.type	gen, @function
gen:
.LFB3:
	.loc 1 439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# moves, moves
	.loc 1 445 0
	movl	$0, kingcap(%rip)	#, kingcap
	.loc 1 447 0
	movl	$0, numb_moves(%rip)	#, numb_moves
	.loc 1 448 0
	movq	-24(%rbp), %rax	# moves, tmp361
	movq	%rax, genfor(%rip)	# tmp361, genfor
	.loc 1 450 0
	movl	Variant(%rip), %eax	# Variant, Variant.100
	cmpl	$3, %eax	#, Variant.100
	jne	.L137	#,
	.loc 1 452 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 453 0
	movl	$0, fcaptures(%rip)	#, fcaptures
.L137:
	.loc 1 459 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.101
	testl	%eax, %eax	# white_to_move.101
	je	.L138	#,
	.loc 1 460 0
	movl	$1, -12(%rbp)	#, a
	movl	$1, -8(%rbp)	#, j
	jmp	.L139	#
.L185:
	.loc 1 466 0
	movl	-8(%rbp), %eax	# j, tmp363
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp364
	movl	%eax, -4(%rbp)	# tmp364, i
	.loc 1 468 0
	cmpl	$0, -4(%rbp)	#, i
	jne	.L140	#,
	.loc 1 469 0
	jmp	.L141	#
.L140:
	.loc 1 471 0
	addl	$1, -12(%rbp)	#, a
	.loc 1 473 0
	movl	-4(%rbp), %eax	# i, tmp365
	movl	%eax, -16(%rbp)	# tmp365, from
	.loc 1 474 0
	movl	-4(%rbp), %eax	# i, tmp366
	movl	%eax, gfrom(%rip)	# tmp366, gfrom
	.loc 1 476 0
	movl	-16(%rbp), %eax	# from, tmp368
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$11, %eax	#, D.7140
	ja	.L257	#,
	movl	%eax, %eax	# D.7140, tmp369
	movq	.L144(,%rax,8), %rax	#, tmp370
	jmp	*%rax	# tmp370
	.section	.rodata
	.align 8
	.align 4
.L144:
	.quad	.L257
	.quad	.L143
	.quad	.L257
	.quad	.L145
	.quad	.L257
	.quad	.L146
	.quad	.L257
	.quad	.L147
	.quad	.L257
	.quad	.L148
	.quad	.L257
	.quad	.L149
	.text
.L143:
	.loc 1 479 0
	movl	-16(%rbp), %eax	# from, tmp371
	addl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L150	#,
	.loc 1 481 0
	movl	-16(%rbp), %eax	# from, tmp374
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$7, %eax	#, D.7140
	jne	.L151	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.102
	cmpl	$3, %eax	#, Variant.102
	je	.L151	#,
	movl	Variant(%rip), %eax	# Variant, Variant.103
	cmpl	$4, %eax	#, Variant.103
	je	.L151	#,
	.loc 1 482 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp375
	addl	$12, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	jmp	.L150	#
.L151:
	.loc 1 484 0
	movl	captures(%rip), %eax	# captures, captures.104
	testl	%eax, %eax	# captures.104
	jne	.L150	#,
	.loc 1 485 0
	movl	-16(%rbp), %eax	# from, tmp376
	addl	$12, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	.loc 1 488 0
	movl	-16(%rbp), %eax	# from, tmp378
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$2, %eax	#, D.7140
	jne	.L150	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp379
	addl	$24, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L150	#,
	.loc 1 489 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp381
	addl	$24, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_pawn_simple	#
.L150:
	.loc 1 493 0
	movl	-16(%rbp), %eax	# from, tmp382
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	andl	$1, %eax	#, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L152	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp384
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L152	#,
	.loc 1 494 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp386
	addl	$13, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
.L152:
	.loc 1 496 0
	movl	-16(%rbp), %eax	# from, tmp387
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	andl	$1, %eax	#, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L153	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp389
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L153	#,
	.loc 1 497 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp391
	addl	$11, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
.L153:
	.loc 1 499 0
	movl	-16(%rbp), %eax	# from, tmp392
	leal	13(%rax), %edx	#, D.7140
	movl	ep_square(%rip), %eax	# ep_square, ep_square.105
	cmpl	%eax, %edx	# ep_square.105, D.7140
	jne	.L154	#,
	.loc 1 500 0
	movl	-16(%rbp), %eax	# from, tmp393
	addl	$13, %eax	#, D.7140
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	jmp	.L155	#
.L154:
	.loc 1 502 0
	movl	-16(%rbp), %eax	# from, tmp394
	leal	11(%rax), %edx	#, D.7140
	movl	ep_square(%rip), %eax	# ep_square, ep_square.106
	cmpl	%eax, %edx	# ep_square.106, D.7140
	jne	.L155	#,
	.loc 1 503 0
	movl	-16(%rbp), %eax	# from, tmp395
	addl	$11, %eax	#, D.7140
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	.loc 1 504 0
	jmp	.L141	#
.L155:
	jmp	.L141	#
.L145:
	.loc 1 507 0
	movl	-16(%rbp), %eax	# from, tmp396
	subl	$25, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L156	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp398
	subl	$25, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L156:
	.loc 1 508 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp399
	subl	$23, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L157	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp401
	subl	$23, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L157:
	.loc 1 509 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp402
	subl	$14, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L158	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp404
	subl	$14, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L158:
	.loc 1 510 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp405
	subl	$10, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L159	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp407
	subl	$10, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L159:
	.loc 1 511 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp408
	addl	$10, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L160	#,
	.loc 1 511 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp410
	addl	$10, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L160:
	.loc 1 512 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp411
	addl	$14, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L161	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp413
	addl	$14, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L161:
	.loc 1 513 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp414
	addl	$23, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L162	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp416
	addl	$23, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L162:
	.loc 1 514 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp417
	addl	$25, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L163	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp419
	addl	$25, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
	.loc 1 515 0 is_stmt 1 discriminator 1
	jmp	.L141	#
.L163:
	.loc 1 515 0 is_stmt 0
	jmp	.L141	#
.L149:
	.loc 1 518 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp420
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L164	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp422
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L164:
	.loc 1 519 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp423
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L165	#,
	.loc 1 519 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp425
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L165:
	.loc 1 520 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp426
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L166	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp428
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L166:
	.loc 1 521 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp429
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L167	#,
	.loc 1 521 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp431
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 522 0 is_stmt 1 discriminator 1
	jmp	.L141	#
.L167:
	.loc 1 522 0 is_stmt 0
	jmp	.L141	#
.L147:
	.loc 1 525 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp432
	subl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L168	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp434
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L168:
	.loc 1 526 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp435
	subl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L169	#,
	.loc 1 526 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp437
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L169:
	.loc 1 527 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp438
	addl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L170	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp440
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L170:
	.loc 1 528 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp441
	addl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L171	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp443
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 529 0 is_stmt 1 discriminator 1
	jmp	.L141	#
.L171:
	.loc 1 529 0 is_stmt 0
	jmp	.L141	#
.L148:
	.loc 1 532 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp444
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L172	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp446
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L172:
	.loc 1 533 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp447
	subl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L173	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp449
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L173:
	.loc 1 534 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp450
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L174	#,
	.loc 1 534 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp452
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L174:
	.loc 1 535 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp453
	subl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L175	#,
	.loc 1 535 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp455
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L175:
	.loc 1 536 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp456
	addl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L176	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp458
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L176:
	.loc 1 537 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp459
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L177	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp461
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L177:
	.loc 1 538 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp462
	addl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L178	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp464
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L178:
	.loc 1 539 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp465
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L179	#,
	.loc 1 539 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp467
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 540 0 is_stmt 1 discriminator 1
	jmp	.L141	#
.L179:
	.loc 1 540 0 is_stmt 0
	jmp	.L141	#
.L146:
	.loc 1 543 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp468
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 544 0
	movl	-16(%rbp), %eax	# from, tmp469
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 545 0
	movl	-16(%rbp), %eax	# from, tmp470
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 546 0
	movl	-16(%rbp), %eax	# from, tmp471
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 547 0
	movl	-16(%rbp), %eax	# from, tmp472
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 548 0
	movl	-16(%rbp), %eax	# from, tmp473
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 549 0
	movl	-16(%rbp), %eax	# from, tmp474
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 550 0
	movl	-16(%rbp), %eax	# from, tmp475
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 552 0
	cmpl	$30, -16(%rbp)	#, from
	jne	.L180	#,
	.loc 1 552 0 is_stmt 0 discriminator 1
	movl	moved+120(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L180	#,
	movl	captures(%rip), %eax	# captures, captures.107
	testl	%eax, %eax	# captures.107
	jne	.L180	#,
	movl	Variant(%rip), %eax	# Variant, Variant.108
	cmpl	$3, %eax	#, Variant.108
	jne	.L181	#,
	movl	Giveaway(%rip), %eax	# Giveaway, Giveaway.109
	cmpl	$1, %eax	#, Giveaway.109
	jne	.L180	#,
.L181:
	.loc 1 554 0 is_stmt 1
	movl	moved+132(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L182	#,
	.loc 1 554 0 is_stmt 0 discriminator 1
	movl	board+132(%rip), %eax	# board, D.7140
	cmpl	$7, %eax	#, D.7140
	jne	.L182	#,
	.loc 1 555 0 is_stmt 1
	movl	board+124(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L182	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movl	board+128(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L182	#,
	.loc 1 556 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp476
	addl	$2, %eax	#, D.7140
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_king_castle	#
.L182:
	.loc 1 558 0
	movl	moved+104(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L180	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	board+104(%rip), %eax	# board, D.7140
	cmpl	$7, %eax	#, D.7140
	jne	.L180	#,
	.loc 1 559 0 is_stmt 1
	movl	board+108(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L180	#,
	.loc 1 559 0 is_stmt 0 discriminator 1
	movl	board+112(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L180	#,
	.loc 1 560 0 is_stmt 1
	movl	board+116(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L180	#,
	.loc 1 561 0
	movl	-16(%rbp), %eax	# from, tmp477
	subl	$2, %eax	#, D.7140
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_king_castle	#
	.loc 1 563 0
	jmp	.L141	#
.L180:
	jmp	.L141	#
.L257:
	.loc 1 565 0
	nop
.L141:
	.loc 1 464 0
	addl	$1, -8(%rbp)	#, j
.L139:
	.loc 1 461 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.110
	.loc 1 460 0 discriminator 1
	cmpl	%eax, -12(%rbp)	# piece_count.110, a
	jg	.L183	#,
	.loc 1 462 0
	movl	Variant(%rip), %eax	# Variant, Variant.111
	cmpl	$3, %eax	#, Variant.111
	je	.L184	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	movl	kingcap(%rip), %eax	# kingcap, kingcap.112
	testl	%eax, %eax	# kingcap.112
	je	.L185	#,
.L184:
	.loc 1 463 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.113
	cmpl	$3, %eax	#, Variant.113
	jne	.L183	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movl	fcaptures(%rip), %edx	# fcaptures, fcaptures.114
	movl	captures(%rip), %eax	# captures, captures.115
	cmpl	%eax, %edx	# captures.115, fcaptures.114
	je	.L185	#,
	jmp	.L183	#
.L138:
	.loc 1 572 0 is_stmt 1
	movl	$1, -12(%rbp)	#, a
	movl	$1, -8(%rbp)	#, j
	jmp	.L186	#
.L231:
	.loc 1 577 0
	movl	-8(%rbp), %eax	# j, tmp479
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp480
	movl	%eax, -4(%rbp)	# tmp480, i
	.loc 1 579 0
	cmpl	$0, -4(%rbp)	#, i
	jne	.L187	#,
	.loc 1 580 0
	jmp	.L188	#
.L187:
	.loc 1 582 0
	addl	$1, -12(%rbp)	#, a
	.loc 1 584 0
	movl	-4(%rbp), %eax	# i, tmp481
	movl	%eax, -16(%rbp)	# tmp481, from
	.loc 1 585 0
	movl	-4(%rbp), %eax	# i, tmp482
	movl	%eax, gfrom(%rip)	# tmp482, gfrom
	.loc 1 587 0
	movl	-16(%rbp), %eax	# from, tmp484
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$12, %eax	#, D.7140
	ja	.L258	#,
	movl	%eax, %eax	# D.7140, tmp485
	movq	.L191(,%rax,8), %rax	#, tmp486
	jmp	*%rax	# tmp486
	.section	.rodata
	.align 8
	.align 4
.L191:
	.quad	.L258
	.quad	.L258
	.quad	.L190
	.quad	.L258
	.quad	.L192
	.quad	.L258
	.quad	.L193
	.quad	.L258
	.quad	.L194
	.quad	.L258
	.quad	.L195
	.quad	.L258
	.quad	.L196
	.text
.L190:
	.loc 1 590 0
	movl	-16(%rbp), %eax	# from, tmp487
	subl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L197	#,
	.loc 1 592 0
	movl	-16(%rbp), %eax	# from, tmp490
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$2, %eax	#, D.7140
	jne	.L198	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.116
	cmpl	$3, %eax	#, Variant.116
	je	.L198	#,
	movl	Variant(%rip), %eax	# Variant, Variant.117
	cmpl	$4, %eax	#, Variant.117
	je	.L198	#,
	.loc 1 593 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp491
	subl	$12, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	jmp	.L197	#
.L198:
	.loc 1 595 0
	movl	captures(%rip), %eax	# captures, captures.118
	testl	%eax, %eax	# captures.118
	jne	.L197	#,
	.loc 1 596 0
	movl	-16(%rbp), %eax	# from, tmp492
	subl	$12, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	.loc 1 599 0
	movl	-16(%rbp), %eax	# from, tmp494
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$7, %eax	#, D.7140
	jne	.L197	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp495
	subl	$24, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L197	#,
	.loc 1 600 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp497
	subl	$24, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_pawn_simple	#
.L197:
	.loc 1 604 0
	movl	-16(%rbp), %eax	# from, tmp498
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	andl	$1, %eax	#, D.7140
	testl	%eax, %eax	# D.7140
	je	.L199	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp500
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	je	.L199	#,
	.loc 1 605 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp502
	subl	$13, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
.L199:
	.loc 1 607 0
	movl	-16(%rbp), %eax	# from, tmp503
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	andl	$1, %eax	#, D.7140
	testl	%eax, %eax	# D.7140
	je	.L200	#,
	.loc 1 607 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp505
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	je	.L200	#,
	.loc 1 608 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp507
	subl	$11, %eax	#, D.7140
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
.L200:
	.loc 1 610 0
	movl	-16(%rbp), %eax	# from, tmp508
	leal	-13(%rax), %edx	#, D.7140
	movl	ep_square(%rip), %eax	# ep_square, ep_square.119
	cmpl	%eax, %edx	# ep_square.119, D.7140
	jne	.L201	#,
	.loc 1 611 0
	movl	-16(%rbp), %eax	# from, tmp509
	subl	$13, %eax	#, D.7140
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	jmp	.L202	#
.L201:
	.loc 1 613 0
	movl	-16(%rbp), %eax	# from, tmp510
	leal	-11(%rax), %edx	#, D.7140
	movl	ep_square(%rip), %eax	# ep_square, ep_square.120
	cmpl	%eax, %edx	# ep_square.120, D.7140
	jne	.L202	#,
	.loc 1 614 0
	movl	-16(%rbp), %eax	# from, tmp511
	subl	$11, %eax	#, D.7140
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_pawn	#
	.loc 1 615 0
	jmp	.L188	#
.L202:
	jmp	.L188	#
.L192:
	.loc 1 618 0
	movl	-16(%rbp), %eax	# from, tmp512
	subl	$25, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L203	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp514
	subl	$25, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L203:
	.loc 1 619 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp515
	subl	$23, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L204	#,
	.loc 1 619 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp517
	subl	$23, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L204:
	.loc 1 620 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp518
	subl	$14, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L205	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp520
	subl	$14, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L205:
	.loc 1 621 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp521
	subl	$10, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L206	#,
	.loc 1 621 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp523
	subl	$10, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L206:
	.loc 1 622 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp524
	addl	$10, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L207	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp526
	addl	$10, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L207:
	.loc 1 623 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp527
	addl	$14, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L208	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp529
	addl	$14, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L208:
	.loc 1 624 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp530
	addl	$23, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L209	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp532
	addl	$23, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
.L209:
	.loc 1 625 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp533
	addl	$25, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L210	#,
	.loc 1 625 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp535
	addl	$25, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_knighT	#
	.loc 1 626 0 is_stmt 1 discriminator 1
	jmp	.L188	#
.L210:
	.loc 1 626 0 is_stmt 0
	jmp	.L188	#
.L196:
	.loc 1 629 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp536
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L211	#,
	.loc 1 629 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp538
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L211:
	.loc 1 630 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp539
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L212	#,
	.loc 1 630 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp541
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L212:
	.loc 1 631 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp542
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L213	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp544
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L213:
	.loc 1 632 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp545
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L214	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp547
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 633 0 is_stmt 1 discriminator 1
	jmp	.L188	#
.L214:
	.loc 1 633 0 is_stmt 0
	jmp	.L188	#
.L194:
	.loc 1 636 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp548
	subl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L215	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp550
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L215:
	.loc 1 637 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp551
	subl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L216	#,
	.loc 1 637 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp553
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L216:
	.loc 1 638 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp554
	addl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L217	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp556
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L217:
	.loc 1 639 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp557
	addl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L218	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp559
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 640 0 is_stmt 1 discriminator 1
	jmp	.L188	#
.L218:
	.loc 1 640 0 is_stmt 0
	jmp	.L188	#
.L195:
	.loc 1 643 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp560
	subl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L219	#,
	.loc 1 643 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp562
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L219:
	.loc 1 644 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp563
	subl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L220	#,
	.loc 1 644 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp565
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L220:
	.loc 1 645 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp566
	subl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L221	#,
	.loc 1 645 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp568
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L221:
	.loc 1 646 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp569
	subl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L222	#,
	.loc 1 646 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp571
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L222:
	.loc 1 647 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp572
	addl	$1, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L223	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp574
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L223:
	.loc 1 648 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp575
	addl	$11, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L224	#,
	.loc 1 648 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp577
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L224:
	.loc 1 649 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp578
	addl	$12, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L225	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp580
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
.L225:
	.loc 1 650 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp581
	addl	$13, %eax	#, D.7140
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L226	#,
	.loc 1 650 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp583
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_slidE	#
	.loc 1 651 0 is_stmt 1 discriminator 1
	jmp	.L188	#
.L226:
	.loc 1 651 0 is_stmt 0
	jmp	.L188	#
.L193:
	.loc 1 654 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp584
	subl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 655 0
	movl	-16(%rbp), %eax	# from, tmp585
	subl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 656 0
	movl	-16(%rbp), %eax	# from, tmp586
	subl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 657 0
	movl	-16(%rbp), %eax	# from, tmp587
	subl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 658 0
	movl	-16(%rbp), %eax	# from, tmp588
	addl	$1, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 659 0
	movl	-16(%rbp), %eax	# from, tmp589
	addl	$11, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 660 0
	movl	-16(%rbp), %eax	# from, tmp590
	addl	$12, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 661 0
	movl	-16(%rbp), %eax	# from, tmp591
	addl	$13, %eax	#, D.7140
	movl	%eax, %edi	# D.7140,
	call	push_king	#
	.loc 1 663 0
	cmpl	$114, -16(%rbp)	#, from
	jne	.L227	#,
	.loc 1 663 0 is_stmt 0 discriminator 1
	movl	moved+456(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L227	#,
	movl	captures(%rip), %eax	# captures, captures.121
	testl	%eax, %eax	# captures.121
	jne	.L227	#,
	movl	Variant(%rip), %eax	# Variant, Variant.122
	cmpl	$3, %eax	#, Variant.122
	jne	.L228	#,
	movl	Giveaway(%rip), %eax	# Giveaway, Giveaway.123
	cmpl	$1, %eax	#, Giveaway.123
	jne	.L227	#,
.L228:
	.loc 1 665 0 is_stmt 1
	movl	moved+468(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L229	#,
	.loc 1 665 0 is_stmt 0 discriminator 1
	movl	board+468(%rip), %eax	# board, D.7140
	cmpl	$8, %eax	#, D.7140
	jne	.L229	#,
	.loc 1 666 0 is_stmt 1
	movl	board+460(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L229	#,
	.loc 1 666 0 is_stmt 0 discriminator 1
	movl	board+464(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L229	#,
	.loc 1 667 0 is_stmt 1
	movl	-16(%rbp), %eax	# from, tmp592
	addl	$2, %eax	#, D.7140
	movl	$3, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_king_castle	#
.L229:
	.loc 1 669 0
	movl	moved+440(%rip), %eax	# moved, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L227	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movl	board+440(%rip), %eax	# board, D.7140
	cmpl	$8, %eax	#, D.7140
	jne	.L227	#,
	.loc 1 670 0 is_stmt 1
	movl	board+444(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L227	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	movl	board+448(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L227	#,
	.loc 1 671 0 is_stmt 1
	movl	board+452(%rip), %eax	# board, D.7140
	cmpl	$13, %eax	#, D.7140
	jne	.L227	#,
	.loc 1 672 0
	movl	-16(%rbp), %eax	# from, tmp593
	subl	$2, %eax	#, D.7140
	movl	$4, %esi	#,
	movl	%eax, %edi	# D.7140,
	call	push_king_castle	#
	.loc 1 674 0
	jmp	.L188	#
.L227:
	jmp	.L188	#
.L258:
	.loc 1 676 0
	nop
.L188:
	.loc 1 576 0
	addl	$1, -8(%rbp)	#, j
.L186:
	.loc 1 573 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.124
	.loc 1 572 0 discriminator 1
	cmpl	%eax, -12(%rbp)	# piece_count.124, a
	jg	.L183	#,
	.loc 1 574 0
	movl	Variant(%rip), %eax	# Variant, Variant.125
	.loc 1 573 0
	cmpl	$3, %eax	#, Variant.125
	je	.L230	#,
	.loc 1 574 0
	movl	kingcap(%rip), %eax	# kingcap, kingcap.126
	testl	%eax, %eax	# kingcap.126
	je	.L231	#,
.L230:
	.loc 1 575 0
	movl	Variant(%rip), %eax	# Variant, Variant.127
	cmpl	$3, %eax	#, Variant.127
	jne	.L183	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movl	fcaptures(%rip), %edx	# fcaptures, fcaptures.128
	movl	captures(%rip), %eax	# captures, captures.129
	cmpl	%eax, %edx	# captures.129, fcaptures.128
	je	.L231	#,
.L183:
	.loc 1 680 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.130
	testl	%eax, %eax	# Variant.130
	je	.L232	#,
	.loc 1 680 0 is_stmt 0 discriminator 2
	movl	Variant(%rip), %eax	# Variant, Variant.131
	cmpl	$1, %eax	#, Variant.131
	jne	.L233	#,
.L232:
	.loc 1 680 0 discriminator 1
	movl	captures(%rip), %eax	# captures, captures.132
	testl	%eax, %eax	# captures.132
	jne	.L233	#,
	movl	kingcap(%rip), %eax	# kingcap, kingcap.133
	testl	%eax, %eax	# kingcap.133
	jne	.L233	#,
	.loc 1 682 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.134
	testl	%eax, %eax	# white_to_move.134
	je	.L234	#,
	.loc 1 683 0 discriminator 1
	movl	holding+4(%rip), %eax	# holding, D.7140
	.loc 1 682 0 discriminator 1
	testl	%eax, %eax	# D.7140
	jne	.L235	#,
	.loc 1 683 0
	movl	holding+12(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L235	#,
	.loc 1 684 0
	movl	holding+44(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L235	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	movl	holding+36(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L235	#,
	.loc 1 685 0 is_stmt 1
	movl	holding+28(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L234	#,
.L235:
	.loc 1 687 0
	movl	$26, -16(%rbp)	#, from
	jmp	.L236	#
.L244:
	.loc 1 689 0
	movl	-16(%rbp), %eax	# from, tmp594
	movl	%eax, gfrom(%rip)	# tmp594, gfrom
	.loc 1 691 0
	movl	-16(%rbp), %eax	# from, tmp596
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L238	#,
	cmpl	$13, %eax	#, D.7140
	je	.L239	#,
	jmp	.L237	#
.L238:
	.loc 1 694 0
	addl	$3, -16(%rbp)	#, from
	.loc 1 695 0
	jmp	.L237	#
.L239:
	.loc 1 697 0
	movl	holding+4(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L240	#,
	.loc 1 699 0
	movl	-16(%rbp), %eax	# from, tmp598
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$8, %eax	#, D.7140
	je	.L240	#,
	.loc 1 699 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp600
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$1, %eax	#, D.7140
	je	.L240	#,
	.loc 1 701 0 is_stmt 1
	movl	$1, %edi	#,
	call	try_drop	#
.L240:
	.loc 1 704 0
	movl	holding+12(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L241	#,
	.loc 1 706 0
	movl	$3, %edi	#,
	call	try_drop	#
.L241:
	.loc 1 708 0
	movl	holding+44(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L242	#,
	.loc 1 710 0
	movl	$11, %edi	#,
	call	try_drop	#
.L242:
	.loc 1 712 0
	movl	holding+28(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L243	#,
	.loc 1 714 0
	movl	$7, %edi	#,
	call	try_drop	#
.L243:
	.loc 1 716 0
	movl	holding+36(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L237	#,
	.loc 1 718 0
	movl	$9, %edi	#,
	call	try_drop	#
.L237:
	.loc 1 687 0
	addl	$1, -16(%rbp)	#, from
.L236:
	.loc 1 687 0 is_stmt 0 discriminator 1
	cmpl	$117, -16(%rbp)	#, from
	jle	.L244	#,
	.loc 1 682 0 is_stmt 1
	jmp	.L233	#
.L234:
	.loc 1 723 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.135
	testl	%eax, %eax	# white_to_move.135
	jne	.L233	#,
	.loc 1 724 0 discriminator 1
	movl	holding+72(%rip), %eax	# holding, D.7140
	.loc 1 723 0 discriminator 1
	testl	%eax, %eax	# D.7140
	jne	.L245	#,
	.loc 1 724 0
	movl	holding+80(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L245	#,
	.loc 1 725 0
	movl	holding+112(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L245	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	holding+104(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	jne	.L245	#,
	.loc 1 726 0 is_stmt 1
	movl	holding+96(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L233	#,
.L245:
	.loc 1 728 0
	movl	$26, -16(%rbp)	#, from
	jmp	.L246	#
.L254:
	.loc 1 730 0
	movl	-16(%rbp), %eax	# from, tmp601
	movl	%eax, gfrom(%rip)	# tmp601, gfrom
	.loc 1 732 0
	movl	-16(%rbp), %eax	# from, tmp603
	cltq
	movl	board(,%rax,4), %eax	# board, D.7140
	testl	%eax, %eax	# D.7140
	je	.L248	#,
	cmpl	$13, %eax	#, D.7140
	je	.L249	#,
	jmp	.L247	#
.L248:
	.loc 1 735 0
	addl	$3, -16(%rbp)	#, from
	.loc 1 736 0
	jmp	.L247	#
.L249:
	.loc 1 738 0
	movl	holding+72(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L250	#,
	.loc 1 740 0
	movl	-16(%rbp), %eax	# from, tmp605
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$8, %eax	#, D.7140
	je	.L250	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# from, tmp607
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7140
	cmpl	$1, %eax	#, D.7140
	je	.L250	#,
	.loc 1 742 0 is_stmt 1
	movl	$2, %edi	#,
	call	try_drop	#
.L250:
	.loc 1 745 0
	movl	holding+80(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L251	#,
	.loc 1 747 0
	movl	$4, %edi	#,
	call	try_drop	#
.L251:
	.loc 1 749 0
	movl	holding+112(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L252	#,
	.loc 1 751 0
	movl	$12, %edi	#,
	call	try_drop	#
.L252:
	.loc 1 753 0
	movl	holding+96(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L253	#,
	.loc 1 755 0
	movl	$8, %edi	#,
	call	try_drop	#
.L253:
	.loc 1 757 0
	movl	holding+104(%rip), %eax	# holding, D.7140
	testl	%eax, %eax	# D.7140
	je	.L247	#,
	.loc 1 759 0
	movl	$10, %edi	#,
	call	try_drop	#
.L247:
	.loc 1 728 0
	addl	$1, -16(%rbp)	#, from
.L246:
	.loc 1 728 0 is_stmt 0 discriminator 1
	cmpl	$117, -16(%rbp)	#, from
	jle	.L254	#,
.L233:
	.loc 1 766 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.136
	cmpl	$3, %eax	#, Variant.136
	jne	.L255	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movl	fcaptures(%rip), %eax	# fcaptures, fcaptures.137
	cmpl	$1, %eax	#, fcaptures.137
	jne	.L255	#,
	movl	captures(%rip), %eax	# captures, captures.138
	testl	%eax, %eax	# captures.138
	jne	.L255	#,
	.loc 1 768 0 is_stmt 1
	movl	$1, captures(%rip)	#, captures
	.loc 1 769 0
	movl	$0, numb_moves(%rip)	#, numb_moves
	.loc 1 770 0
	jmp	.L137	#
.L255:
	.loc 1 773 0
	movl	Variant(%rip), %eax	# Variant, Variant.139
	cmpl	$3, %eax	#, Variant.139
	jne	.L136	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movl	$0, kingcap(%rip)	#, kingcap
.L136:
	.loc 1 776 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	gen, .-gen
	.globl	in_check
	.type	in_check, @function
in_check:
.LFB4:
	.loc 1 779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 783 0
	movl	Variant(%rip), %eax	# Variant, Variant.140
	cmpl	$3, %eax	#, Variant.140
	jne	.L260	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7141
	jmp	.L261	#
.L260:
	.loc 1 785 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.141
	cmpl	$1, %eax	#, white_to_move.141
	jne	.L262	#,
	.loc 1 786 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.142
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.142,
	call	is_attacked	#
	testl	%eax, %eax	# D.7142
	je	.L263	#,
	.loc 1 787 0
	movl	$1, %eax	#, D.7141
	jmp	.L261	#
.L262:
	.loc 1 791 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.143
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.143,
	call	is_attacked	#
	testl	%eax, %eax	# D.7142
	je	.L263	#,
	.loc 1 792 0
	movl	$1, %eax	#, D.7141
	jmp	.L261	#
.L263:
	.loc 1 796 0
	movl	$0, %eax	#, D.7141
.L261:
	.loc 1 798 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	in_check, .-in_check
	.globl	f_in_check
	.type	f_in_check, @function
f_in_check:
.LFB5:
	.loc 1 801 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# moves, moves
	movl	%esi, -28(%rbp)	# m, m
	.loc 1 802 0
	movl	-28(%rbp), %eax	# m, tmp321
	movslq	%eax, %rdx	# tmp321, D.7144
	movq	%rdx, %rax	# D.7144, tmp322
	addq	%rax, %rax	# tmp322
	addq	%rdx, %rax	# D.7144, tmp322
	salq	$3, %rax	#, tmp323
	movq	%rax, %rdx	# tmp322, D.7144
	movq	-24(%rbp), %rax	# moves, tmp324
	addq	%rdx, %rax	# D.7144, D.7145
	movl	4(%rax), %eax	# _56->target, tmp325
	movl	%eax, -8(%rbp)	# tmp325, target
	.loc 1 803 0
	movl	-28(%rbp), %eax	# m, tmp326
	movslq	%eax, %rdx	# tmp326, D.7144
	movq	%rdx, %rax	# D.7144, tmp327
	addq	%rax, %rax	# tmp327
	addq	%rdx, %rax	# D.7144, tmp327
	salq	$3, %rax	#, tmp328
	movq	%rax, %rdx	# tmp327, D.7144
	movq	-24(%rbp), %rax	# moves, tmp329
	addq	%rdx, %rax	# D.7144, D.7145
	movl	(%rax), %eax	# _60->from, tmp330
	movl	%eax, -4(%rbp)	# tmp330, from
	.loc 1 807 0
	movl	Variant(%rip), %eax	# Variant, Variant.144
	cmpl	$3, %eax	#, Variant.144
	jne	.L265	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L265:
	.loc 1 809 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.145
	cmpl	$1, %eax	#, white_to_move.145
	jne	.L267	#,
	.loc 1 818 0
	movl	-8(%rbp), %eax	# target, tmp332
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$12, %eax	#, D.7146
	ja	.L268	#,
	movl	%eax, %eax	# D.7146, tmp333
	movq	.L270(,%rax,8), %rax	#, tmp334
	jmp	*%rax	# tmp334
	.section	.rodata
	.align 8
	.align 4
.L270:
	.quad	.L268
	.quad	.L268
	.quad	.L269
	.quad	.L268
	.quad	.L271
	.quad	.L268
	.quad	.L272
	.quad	.L268
	.quad	.L273
	.quad	.L268
	.quad	.L274
	.quad	.L268
	.quad	.L275
	.text
.L269:
	.loc 1 821 0
	movl	-8(%rbp), %eax	# target, tmp335
	subl	$11, %eax	#, D.7146
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$5, %eax	#, D.7146
	je	.L276	#,
	.loc 1 821 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# target, tmp337
	subl	$13, %eax	#, D.7146
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$5, %eax	#, D.7146
	jne	.L277	#,
.L276:
	.loc 1 821 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L277:
	.loc 1 822 0 is_stmt 1
	jmp	.L268	#
.L275:
	.loc 1 824 0
	movl	-8(%rbp), %eax	# target, tmp340
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.146
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L278	#,
	.loc 1 827 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.147
	cmpl	-8(%rbp), %eax	# target, wking_loc.147
	jge	.L279	#,
	.loc 1 829 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.148
	addl	$13, %eax	#, tmp342
	movl	%eax, -12(%rbp)	# tmp342, l
	jmp	.L280	#
.L281:
	.loc 1 829 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L280:
	.loc 1 829 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp344
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L281	#,
	.loc 1 830 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp345
	cmpl	-8(%rbp), %eax	# target, tmp345
	jne	.L282	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L279:
	.loc 1 834 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.149
	subl	$13, %eax	#, tmp346
	movl	%eax, -12(%rbp)	# tmp346, l
	jmp	.L283	#
.L284:
	.loc 1 834 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L283:
	.loc 1 834 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp348
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L284	#,
	.loc 1 835 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp349
	cmpl	-8(%rbp), %eax	# target, tmp349
	jne	.L282	#,
	.loc 1 835 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L278:
	.loc 1 838 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp351
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.150
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L282	#,
	.loc 1 840 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.151
	cmpl	-8(%rbp), %eax	# target, wking_loc.151
	jge	.L285	#,
	.loc 1 842 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.152
	addl	$11, %eax	#, tmp353
	movl	%eax, -12(%rbp)	# tmp353, l
	jmp	.L286	#
.L287:
	.loc 1 842 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L286:
	.loc 1 842 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp355
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L287	#,
	.loc 1 843 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp356
	cmpl	-8(%rbp), %eax	# target, tmp356
	jne	.L282	#,
	.loc 1 843 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L285:
	.loc 1 847 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.153
	subl	$11, %eax	#, tmp357
	movl	%eax, -12(%rbp)	# tmp357, l
	jmp	.L288	#
.L289:
	.loc 1 847 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L288:
	.loc 1 847 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp359
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L289	#,
	.loc 1 848 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp360
	cmpl	-8(%rbp), %eax	# target, tmp360
	jne	.L282	#,
	.loc 1 848 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L282:
	.loc 1 851 0 is_stmt 1
	jmp	.L268	#
.L273:
	.loc 1 853 0
	movl	-8(%rbp), %eax	# target, tmp362
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.154
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L290	#,
	.loc 1 855 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.155
	cmpl	-8(%rbp), %eax	# target, wking_loc.155
	jge	.L291	#,
	.loc 1 857 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.156
	addl	$12, %eax	#, tmp364
	movl	%eax, -12(%rbp)	# tmp364, l
	jmp	.L292	#
.L293:
	.loc 1 857 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L292:
	.loc 1 857 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp366
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L293	#,
	.loc 1 858 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp367
	cmpl	-8(%rbp), %eax	# target, tmp367
	jne	.L294	#,
	.loc 1 858 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L291:
	.loc 1 862 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.157
	subl	$12, %eax	#, tmp368
	movl	%eax, -12(%rbp)	# tmp368, l
	jmp	.L295	#
.L296:
	.loc 1 862 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L295:
	.loc 1 862 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp370
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L296	#,
	.loc 1 863 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp371
	cmpl	-8(%rbp), %eax	# target, tmp371
	jne	.L294	#,
	.loc 1 863 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L290:
	.loc 1 866 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp373
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.158
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L294	#,
	.loc 1 868 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.159
	cmpl	-8(%rbp), %eax	# target, wking_loc.159
	jge	.L297	#,
	.loc 1 870 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.160
	addl	$1, %eax	#, tmp375
	movl	%eax, -12(%rbp)	# tmp375, l
	jmp	.L298	#
.L299:
	.loc 1 870 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L298:
	.loc 1 870 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp377
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L299	#,
	.loc 1 871 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp378
	cmpl	-8(%rbp), %eax	# target, tmp378
	jne	.L294	#,
	.loc 1 871 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L297:
	.loc 1 875 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.161
	subl	$1, %eax	#, tmp379
	movl	%eax, -12(%rbp)	# tmp379, l
	jmp	.L300	#
.L301:
	.loc 1 875 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L300:
	.loc 1 875 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp381
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L301	#,
	.loc 1 876 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp382
	cmpl	-8(%rbp), %eax	# target, tmp382
	jne	.L294	#,
	.loc 1 876 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L294:
	.loc 1 879 0 is_stmt 1
	jmp	.L268	#
.L271:
	.loc 1 881 0
	movl	$0, -12(%rbp)	#, l
	jmp	.L302	#
.L304:
	.loc 1 882 0
	movl	-12(%rbp), %eax	# l, tmp384
	cltq
	movl	knight_o.4006(,%rax,4), %edx	# knight_o, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.162
	addl	%edx, %eax	# D.7146, D.7146
	cmpl	-8(%rbp), %eax	# target, D.7146
	jne	.L303	#,
	.loc 1 882 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L303:
	.loc 1 881 0 is_stmt 1
	addl	$1, -12(%rbp)	#, l
.L302:
	.loc 1 881 0 is_stmt 0 discriminator 1
	cmpl	$7, -12(%rbp)	#, l
	jle	.L304	#,
	.loc 1 883 0 is_stmt 1
	jmp	.L268	#
.L274:
	.loc 1 885 0
	movl	-8(%rbp), %eax	# target, tmp386
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.163
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L305	#,
	.loc 1 887 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.164
	cmpl	-8(%rbp), %eax	# target, wking_loc.164
	jge	.L306	#,
	.loc 1 889 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.165
	addl	$12, %eax	#, tmp388
	movl	%eax, -12(%rbp)	# tmp388, l
	jmp	.L307	#
.L308:
	.loc 1 889 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L307:
	.loc 1 889 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp390
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L308	#,
	.loc 1 890 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp391
	cmpl	-8(%rbp), %eax	# target, tmp391
	jne	.L309	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L306:
	.loc 1 894 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.166
	subl	$12, %eax	#, tmp392
	movl	%eax, -12(%rbp)	# tmp392, l
	jmp	.L310	#
.L311:
	.loc 1 894 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L310:
	.loc 1 894 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp394
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L311	#,
	.loc 1 895 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp395
	cmpl	-8(%rbp), %eax	# target, tmp395
	jne	.L309	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L305:
	.loc 1 898 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp397
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.167
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L312	#,
	.loc 1 900 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.168
	cmpl	-8(%rbp), %eax	# target, wking_loc.168
	jge	.L313	#,
	.loc 1 902 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.169
	addl	$1, %eax	#, tmp399
	movl	%eax, -12(%rbp)	# tmp399, l
	jmp	.L314	#
.L315:
	.loc 1 902 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L314:
	.loc 1 902 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp401
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L315	#,
	.loc 1 903 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp402
	cmpl	-8(%rbp), %eax	# target, tmp402
	jne	.L309	#,
	.loc 1 903 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L313:
	.loc 1 907 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.170
	subl	$1, %eax	#, tmp403
	movl	%eax, -12(%rbp)	# tmp403, l
	jmp	.L316	#
.L317:
	.loc 1 907 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L316:
	.loc 1 907 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp405
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L317	#,
	.loc 1 908 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp406
	cmpl	-8(%rbp), %eax	# target, tmp406
	jne	.L309	#,
	.loc 1 908 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L312:
	.loc 1 911 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp408
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.171
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L318	#,
	.loc 1 913 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.172
	cmpl	-8(%rbp), %eax	# target, wking_loc.172
	jge	.L319	#,
	.loc 1 915 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.173
	addl	$13, %eax	#, tmp410
	movl	%eax, -12(%rbp)	# tmp410, l
	jmp	.L320	#
.L321:
	.loc 1 915 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L320:
	.loc 1 915 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp412
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L321	#,
	.loc 1 916 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp413
	cmpl	-8(%rbp), %eax	# target, tmp413
	jne	.L309	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L319:
	.loc 1 920 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.174
	subl	$13, %eax	#, tmp414
	movl	%eax, -12(%rbp)	# tmp414, l
	jmp	.L322	#
.L323:
	.loc 1 920 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L322:
	.loc 1 920 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp416
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L323	#,
	.loc 1 921 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp417
	cmpl	-8(%rbp), %eax	# target, tmp417
	jne	.L309	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L318:
	.loc 1 924 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp419
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.175
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L309	#,
	.loc 1 926 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.176
	cmpl	-8(%rbp), %eax	# target, wking_loc.176
	jge	.L324	#,
	.loc 1 928 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.177
	addl	$11, %eax	#, tmp421
	movl	%eax, -12(%rbp)	# tmp421, l
	jmp	.L325	#
.L326:
	.loc 1 928 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L325:
	.loc 1 928 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp423
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L326	#,
	.loc 1 929 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp424
	cmpl	-8(%rbp), %eax	# target, tmp424
	jne	.L309	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L324:
	.loc 1 933 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.178
	subl	$11, %eax	#, tmp425
	movl	%eax, -12(%rbp)	# tmp425, l
	jmp	.L327	#
.L328:
	.loc 1 933 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L327:
	.loc 1 933 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp427
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L328	#,
	.loc 1 934 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp428
	cmpl	-8(%rbp), %eax	# target, tmp428
	jne	.L309	#,
	.loc 1 934 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L309:
	.loc 1 937 0 is_stmt 1
	jmp	.L268	#
.L272:
	.loc 1 941 0
	movl	-28(%rbp), %eax	# m, tmp429
	movslq	%eax, %rdx	# tmp429, D.7144
	movq	%rdx, %rax	# D.7144, tmp430
	addq	%rax, %rax	# tmp430
	addq	%rdx, %rax	# D.7144, tmp430
	salq	$3, %rax	#, tmp431
	movq	%rax, %rdx	# tmp430, D.7144
	movq	-24(%rbp), %rax	# moves, tmp432
	addq	%rdx, %rax	# D.7144, D.7145
	movl	16(%rax), %eax	# _191->castled, D.7146
	testl	%eax, %eax	# D.7146
	je	.L329	#,
	.loc 1 943 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.179
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.179,
	call	is_attacked	#
	testl	%eax, %eax	# D.7147
	je	.L330	#,
	.loc 1 944 0
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L330:
	.loc 1 946 0
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L329:
	.loc 1 948 0
	nop
.L268:
	.loc 1 952 0
	cmpl	$0, -4(%rbp)	#, from
	jne	.L331	#,
	.loc 1 952 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L331:
	.loc 1 955 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp434
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.180
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L332	#,
	.loc 1 957 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.181
	cmpl	-4(%rbp), %eax	# from, wking_loc.181
	jle	.L333	#,
	.loc 1 959 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.182
	subl	$1, %eax	#, tmp436
	movl	%eax, -12(%rbp)	# tmp436, l
	jmp	.L334	#
.L335:
	.loc 1 959 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L334:
	.loc 1 959 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp438
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L335	#,
	.loc 1 960 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp440
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$8, %eax	#, D.7146
	je	.L336	#,
	.loc 1 960 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp442
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L336:
	.loc 1 960 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L333:
	.loc 1 964 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.183
	addl	$1, %eax	#, tmp443
	movl	%eax, -12(%rbp)	# tmp443, l
	jmp	.L338	#
.L339:
	.loc 1 964 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L338:
	.loc 1 964 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp445
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L339	#,
	.loc 1 965 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp447
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$8, %eax	#, D.7146
	je	.L340	#,
	.loc 1 965 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp449
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L340:
	.loc 1 965 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L332:
	.loc 1 968 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp451
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.184
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L341	#,
	.loc 1 970 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.185
	cmpl	-4(%rbp), %eax	# from, wking_loc.185
	jle	.L342	#,
	.loc 1 972 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.186
	subl	$12, %eax	#, tmp453
	movl	%eax, -12(%rbp)	# tmp453, l
	jmp	.L343	#
.L344:
	.loc 1 972 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L343:
	.loc 1 972 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp455
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L344	#,
	.loc 1 973 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp457
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$8, %eax	#, D.7146
	je	.L345	#,
	.loc 1 973 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp459
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L345:
	.loc 1 973 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L342:
	.loc 1 977 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.187
	addl	$12, %eax	#, tmp460
	movl	%eax, -12(%rbp)	# tmp460, l
	jmp	.L346	#
.L347:
	.loc 1 977 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L346:
	.loc 1 977 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp462
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L347	#,
	.loc 1 978 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp464
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$8, %eax	#, D.7146
	je	.L348	#,
	.loc 1 978 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp466
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L348:
	.loc 1 978 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L341:
	.loc 1 981 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp468
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.188
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L349	#,
	.loc 1 983 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.189
	cmpl	-4(%rbp), %eax	# from, wking_loc.189
	jle	.L350	#,
	.loc 1 985 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.190
	subl	$13, %eax	#, tmp470
	movl	%eax, -12(%rbp)	# tmp470, l
	jmp	.L351	#
.L352:
	.loc 1 985 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L351:
	.loc 1 985 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp472
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L352	#,
	.loc 1 986 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp474
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$12, %eax	#, D.7146
	je	.L353	#,
	.loc 1 986 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp476
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L353:
	.loc 1 986 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L350:
	.loc 1 990 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.191
	addl	$13, %eax	#, tmp477
	movl	%eax, -12(%rbp)	# tmp477, l
	jmp	.L354	#
.L355:
	.loc 1 990 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L354:
	.loc 1 990 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp479
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L355	#,
	.loc 1 991 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp481
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$12, %eax	#, D.7146
	je	.L356	#,
	.loc 1 991 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp483
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L356:
	.loc 1 991 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L349:
	.loc 1 994 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp485
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.192
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L337	#,
	.loc 1 996 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.193
	cmpl	-4(%rbp), %eax	# from, wking_loc.193
	jle	.L357	#,
	.loc 1 998 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.194
	subl	$11, %eax	#, tmp487
	movl	%eax, -12(%rbp)	# tmp487, l
	jmp	.L358	#
.L359:
	.loc 1 998 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L358:
	.loc 1 998 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp489
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L359	#,
	.loc 1 999 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp491
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$12, %eax	#, D.7146
	je	.L360	#,
	.loc 1 999 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp493
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L360:
	.loc 1 999 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L357:
	.loc 1 1003 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.195
	addl	$11, %eax	#, tmp494
	movl	%eax, -12(%rbp)	# tmp494, l
	jmp	.L361	#
.L362:
	.loc 1 1003 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L361:
	.loc 1 1003 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp496
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L362	#,
	.loc 1 1004 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp498
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$12, %eax	#, D.7146
	je	.L363	#,
	.loc 1 1004 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp500
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$10, %eax	#, D.7146
	jne	.L337	#,
.L363:
	.loc 1 1004 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L337:
	.loc 1 1008 0 is_stmt 1
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L267:
	.loc 1 1016 0
	movl	-8(%rbp), %eax	# target, tmp502
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$11, %eax	#, D.7146
	ja	.L364	#,
	movl	%eax, %eax	# D.7146, tmp503
	movq	.L366(,%rax,8), %rax	#, tmp504
	jmp	*%rax	# tmp504
	.section	.rodata
	.align 8
	.align 4
.L366:
	.quad	.L364
	.quad	.L365
	.quad	.L364
	.quad	.L367
	.quad	.L364
	.quad	.L368
	.quad	.L364
	.quad	.L369
	.quad	.L364
	.quad	.L370
	.quad	.L364
	.quad	.L371
	.text
.L365:
	.loc 1 1019 0
	movl	-8(%rbp), %eax	# target, tmp505
	addl	$11, %eax	#, D.7146
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$6, %eax	#, D.7146
	je	.L372	#,
	.loc 1 1019 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# target, tmp507
	addl	$13, %eax	#, D.7146
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$6, %eax	#, D.7146
	jne	.L373	#,
.L372:
	.loc 1 1019 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L373:
	.loc 1 1020 0 is_stmt 1
	jmp	.L364	#
.L371:
	.loc 1 1022 0
	movl	-8(%rbp), %eax	# target, tmp510
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.196
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L374	#,
	.loc 1 1025 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.197
	cmpl	-8(%rbp), %eax	# target, bking_loc.197
	jge	.L375	#,
	.loc 1 1027 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.198
	addl	$13, %eax	#, tmp512
	movl	%eax, -12(%rbp)	# tmp512, l
	jmp	.L376	#
.L377:
	.loc 1 1027 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L376:
	.loc 1 1027 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp514
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L377	#,
	.loc 1 1028 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp515
	cmpl	-8(%rbp), %eax	# target, tmp515
	jne	.L378	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L375:
	.loc 1 1032 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.199
	subl	$13, %eax	#, tmp516
	movl	%eax, -12(%rbp)	# tmp516, l
	jmp	.L379	#
.L380:
	.loc 1 1032 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L379:
	.loc 1 1032 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp518
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L380	#,
	.loc 1 1033 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp519
	cmpl	-8(%rbp), %eax	# target, tmp519
	jne	.L378	#,
	.loc 1 1033 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L374:
	.loc 1 1036 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp521
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.200
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L378	#,
	.loc 1 1038 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.201
	cmpl	-8(%rbp), %eax	# target, bking_loc.201
	jge	.L381	#,
	.loc 1 1040 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.202
	addl	$11, %eax	#, tmp523
	movl	%eax, -12(%rbp)	# tmp523, l
	jmp	.L382	#
.L383:
	.loc 1 1040 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L382:
	.loc 1 1040 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp525
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L383	#,
	.loc 1 1041 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp526
	cmpl	-8(%rbp), %eax	# target, tmp526
	jne	.L378	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L381:
	.loc 1 1045 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.203
	subl	$11, %eax	#, tmp527
	movl	%eax, -12(%rbp)	# tmp527, l
	jmp	.L384	#
.L385:
	.loc 1 1045 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L384:
	.loc 1 1045 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp529
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L385	#,
	.loc 1 1046 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp530
	cmpl	-8(%rbp), %eax	# target, tmp530
	jne	.L378	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L378:
	.loc 1 1049 0 is_stmt 1
	jmp	.L364	#
.L369:
	.loc 1 1051 0
	movl	-8(%rbp), %eax	# target, tmp532
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.204
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L386	#,
	.loc 1 1053 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.205
	cmpl	-8(%rbp), %eax	# target, bking_loc.205
	jge	.L387	#,
	.loc 1 1055 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.206
	addl	$12, %eax	#, tmp534
	movl	%eax, -12(%rbp)	# tmp534, l
	jmp	.L388	#
.L389:
	.loc 1 1055 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L388:
	.loc 1 1055 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp536
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L389	#,
	.loc 1 1056 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp537
	cmpl	-8(%rbp), %eax	# target, tmp537
	jne	.L390	#,
	.loc 1 1056 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L387:
	.loc 1 1060 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.207
	subl	$12, %eax	#, tmp538
	movl	%eax, -12(%rbp)	# tmp538, l
	jmp	.L391	#
.L392:
	.loc 1 1060 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L391:
	.loc 1 1060 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp540
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L392	#,
	.loc 1 1061 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp541
	cmpl	-8(%rbp), %eax	# target, tmp541
	jne	.L390	#,
	.loc 1 1061 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L386:
	.loc 1 1064 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp543
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.208
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L390	#,
	.loc 1 1066 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.209
	cmpl	-8(%rbp), %eax	# target, bking_loc.209
	jge	.L393	#,
	.loc 1 1068 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.210
	addl	$1, %eax	#, tmp545
	movl	%eax, -12(%rbp)	# tmp545, l
	jmp	.L394	#
.L395:
	.loc 1 1068 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L394:
	.loc 1 1068 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp547
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L395	#,
	.loc 1 1069 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp548
	cmpl	-8(%rbp), %eax	# target, tmp548
	jne	.L390	#,
	.loc 1 1069 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L393:
	.loc 1 1073 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.211
	subl	$1, %eax	#, tmp549
	movl	%eax, -12(%rbp)	# tmp549, l
	jmp	.L396	#
.L397:
	.loc 1 1073 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L396:
	.loc 1 1073 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp551
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L397	#,
	.loc 1 1074 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp552
	cmpl	-8(%rbp), %eax	# target, tmp552
	jne	.L390	#,
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L390:
	.loc 1 1077 0 is_stmt 1
	jmp	.L364	#
.L367:
	.loc 1 1079 0
	movl	$0, -12(%rbp)	#, l
	jmp	.L398	#
.L400:
	.loc 1 1080 0
	movl	-12(%rbp), %eax	# l, tmp554
	cltq
	movl	knight_o.4006(,%rax,4), %edx	# knight_o, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.212
	addl	%edx, %eax	# D.7146, D.7146
	cmpl	-8(%rbp), %eax	# target, D.7146
	jne	.L399	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L399:
	.loc 1 1079 0 is_stmt 1
	addl	$1, -12(%rbp)	#, l
.L398:
	.loc 1 1079 0 is_stmt 0 discriminator 1
	cmpl	$7, -12(%rbp)	#, l
	jle	.L400	#,
	.loc 1 1081 0 is_stmt 1
	jmp	.L364	#
.L370:
	.loc 1 1083 0
	movl	-8(%rbp), %eax	# target, tmp556
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.213
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L401	#,
	.loc 1 1085 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.214
	cmpl	-8(%rbp), %eax	# target, bking_loc.214
	jge	.L402	#,
	.loc 1 1087 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.215
	addl	$12, %eax	#, tmp558
	movl	%eax, -12(%rbp)	# tmp558, l
	jmp	.L403	#
.L404:
	.loc 1 1087 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L403:
	.loc 1 1087 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp560
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L404	#,
	.loc 1 1088 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp561
	cmpl	-8(%rbp), %eax	# target, tmp561
	jne	.L405	#,
	.loc 1 1088 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L402:
	.loc 1 1092 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.216
	subl	$12, %eax	#, tmp562
	movl	%eax, -12(%rbp)	# tmp562, l
	jmp	.L406	#
.L407:
	.loc 1 1092 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L406:
	.loc 1 1092 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp564
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L407	#,
	.loc 1 1093 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp565
	cmpl	-8(%rbp), %eax	# target, tmp565
	jne	.L405	#,
	.loc 1 1093 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L401:
	.loc 1 1096 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp567
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.217
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L408	#,
	.loc 1 1098 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.218
	cmpl	-8(%rbp), %eax	# target, bking_loc.218
	jge	.L409	#,
	.loc 1 1100 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.219
	addl	$1, %eax	#, tmp569
	movl	%eax, -12(%rbp)	# tmp569, l
	jmp	.L410	#
.L411:
	.loc 1 1100 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L410:
	.loc 1 1100 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp571
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L411	#,
	.loc 1 1101 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp572
	cmpl	-8(%rbp), %eax	# target, tmp572
	jne	.L405	#,
	.loc 1 1101 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L409:
	.loc 1 1105 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.220
	subl	$1, %eax	#, tmp573
	movl	%eax, -12(%rbp)	# tmp573, l
	jmp	.L412	#
.L413:
	.loc 1 1105 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L412:
	.loc 1 1105 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp575
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L413	#,
	.loc 1 1106 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp576
	cmpl	-8(%rbp), %eax	# target, tmp576
	jne	.L405	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L408:
	.loc 1 1109 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp578
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.221
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L414	#,
	.loc 1 1111 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.222
	cmpl	-8(%rbp), %eax	# target, bking_loc.222
	jge	.L415	#,
	.loc 1 1113 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.223
	addl	$13, %eax	#, tmp580
	movl	%eax, -12(%rbp)	# tmp580, l
	jmp	.L416	#
.L417:
	.loc 1 1113 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L416:
	.loc 1 1113 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp582
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L417	#,
	.loc 1 1114 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp583
	cmpl	-8(%rbp), %eax	# target, tmp583
	jne	.L405	#,
	.loc 1 1114 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L415:
	.loc 1 1118 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.224
	subl	$13, %eax	#, tmp584
	movl	%eax, -12(%rbp)	# tmp584, l
	jmp	.L418	#
.L419:
	.loc 1 1118 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L418:
	.loc 1 1118 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp586
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L419	#,
	.loc 1 1119 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp587
	cmpl	-8(%rbp), %eax	# target, tmp587
	jne	.L405	#,
	.loc 1 1119 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L414:
	.loc 1 1122 0 is_stmt 1
	movl	-8(%rbp), %eax	# target, tmp589
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.225
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L405	#,
	.loc 1 1124 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.226
	cmpl	-8(%rbp), %eax	# target, bking_loc.226
	jge	.L420	#,
	.loc 1 1126 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.227
	addl	$11, %eax	#, tmp591
	movl	%eax, -12(%rbp)	# tmp591, l
	jmp	.L421	#
.L422:
	.loc 1 1126 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L421:
	.loc 1 1126 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp593
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L422	#,
	.loc 1 1127 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp594
	cmpl	-8(%rbp), %eax	# target, tmp594
	jne	.L405	#,
	.loc 1 1127 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L420:
	.loc 1 1131 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.228
	subl	$11, %eax	#, tmp595
	movl	%eax, -12(%rbp)	# tmp595, l
	jmp	.L423	#
.L424:
	.loc 1 1131 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L423:
	.loc 1 1131 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp597
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L424	#,
	.loc 1 1132 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp598
	cmpl	-8(%rbp), %eax	# target, tmp598
	jne	.L405	#,
	.loc 1 1132 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L405:
	.loc 1 1135 0 is_stmt 1
	jmp	.L364	#
.L368:
	.loc 1 1138 0
	movl	-28(%rbp), %eax	# m, tmp599
	movslq	%eax, %rdx	# tmp599, D.7144
	movq	%rdx, %rax	# D.7144, tmp600
	addq	%rax, %rax	# tmp600
	addq	%rdx, %rax	# D.7144, tmp600
	salq	$3, %rax	#, tmp601
	movq	%rax, %rdx	# tmp600, D.7144
	movq	-24(%rbp), %rax	# moves, tmp602
	addq	%rdx, %rax	# D.7144, D.7145
	movl	16(%rax), %eax	# _397->castled, D.7146
	testl	%eax, %eax	# D.7146
	je	.L425	#,
	.loc 1 1140 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.229
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.229,
	call	is_attacked	#
	testl	%eax, %eax	# D.7147
	je	.L426	#,
	.loc 1 1141 0
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L426:
	.loc 1 1143 0
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L425:
	.loc 1 1145 0
	nop
.L364:
	.loc 1 1148 0
	cmpl	$0, -4(%rbp)	#, from
	jne	.L427	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7143
	jmp	.L266	#
.L427:
	.loc 1 1151 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp604
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.230
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L428	#,
	.loc 1 1153 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.231
	cmpl	-4(%rbp), %eax	# from, bking_loc.231
	jle	.L429	#,
	.loc 1 1155 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.232
	subl	$1, %eax	#, tmp606
	movl	%eax, -12(%rbp)	# tmp606, l
	jmp	.L430	#
.L431:
	.loc 1 1155 0 is_stmt 0 discriminator 2
	subl	$1, -12(%rbp)	#, l
.L430:
	.loc 1 1155 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp608
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L431	#,
	.loc 1 1156 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp610
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$7, %eax	#, D.7146
	je	.L432	#,
	.loc 1 1156 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp612
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L432:
	.loc 1 1156 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L429:
	.loc 1 1160 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.233
	addl	$1, %eax	#, tmp613
	movl	%eax, -12(%rbp)	# tmp613, l
	jmp	.L434	#
.L435:
	.loc 1 1160 0 is_stmt 0 discriminator 2
	addl	$1, -12(%rbp)	#, l
.L434:
	.loc 1 1160 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp615
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L435	#,
	.loc 1 1161 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp617
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$7, %eax	#, D.7146
	je	.L436	#,
	.loc 1 1161 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp619
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L436:
	.loc 1 1161 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L428:
	.loc 1 1164 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp621
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.234
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L437	#,
	.loc 1 1166 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.235
	cmpl	-4(%rbp), %eax	# from, bking_loc.235
	jle	.L438	#,
	.loc 1 1168 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.236
	subl	$12, %eax	#, tmp623
	movl	%eax, -12(%rbp)	# tmp623, l
	jmp	.L439	#
.L440:
	.loc 1 1168 0 is_stmt 0 discriminator 2
	subl	$12, -12(%rbp)	#, l
.L439:
	.loc 1 1168 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp625
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L440	#,
	.loc 1 1169 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp627
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$7, %eax	#, D.7146
	je	.L441	#,
	.loc 1 1169 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp629
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L441:
	.loc 1 1169 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L438:
	.loc 1 1173 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.237
	addl	$12, %eax	#, tmp630
	movl	%eax, -12(%rbp)	# tmp630, l
	jmp	.L442	#
.L443:
	.loc 1 1173 0 is_stmt 0 discriminator 2
	addl	$12, -12(%rbp)	#, l
.L442:
	.loc 1 1173 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp632
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L443	#,
	.loc 1 1174 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp634
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$7, %eax	#, D.7146
	je	.L444	#,
	.loc 1 1174 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp636
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L444:
	.loc 1 1174 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L437:
	.loc 1 1177 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp638
	cltq
	movl	Xdiagl(,%rax,4), %edx	# Xdiagl, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.238
	cltq
	movl	Xdiagl(,%rax,4), %eax	# Xdiagl, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L445	#,
	.loc 1 1179 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.239
	cmpl	-4(%rbp), %eax	# from, bking_loc.239
	jle	.L446	#,
	.loc 1 1181 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.240
	subl	$13, %eax	#, tmp640
	movl	%eax, -12(%rbp)	# tmp640, l
	jmp	.L447	#
.L448:
	.loc 1 1181 0 is_stmt 0 discriminator 2
	subl	$13, -12(%rbp)	#, l
.L447:
	.loc 1 1181 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp642
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L448	#,
	.loc 1 1182 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp644
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$11, %eax	#, D.7146
	je	.L449	#,
	.loc 1 1182 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp646
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L449:
	.loc 1 1182 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L446:
	.loc 1 1186 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.241
	addl	$13, %eax	#, tmp647
	movl	%eax, -12(%rbp)	# tmp647, l
	jmp	.L450	#
.L451:
	.loc 1 1186 0 is_stmt 0 discriminator 2
	addl	$13, -12(%rbp)	#, l
.L450:
	.loc 1 1186 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp649
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L451	#,
	.loc 1 1187 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp651
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$11, %eax	#, D.7146
	je	.L452	#,
	.loc 1 1187 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp653
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L452:
	.loc 1 1187 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L445:
	.loc 1 1190 0 is_stmt 1
	movl	-4(%rbp), %eax	# from, tmp655
	cltq
	movl	Xdiagr(,%rax,4), %edx	# Xdiagr, D.7146
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.242
	cltq
	movl	Xdiagr(,%rax,4), %eax	# Xdiagr, D.7146
	cmpl	%eax, %edx	# D.7146, D.7146
	jne	.L433	#,
	.loc 1 1192 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.243
	cmpl	-4(%rbp), %eax	# from, bking_loc.243
	jle	.L453	#,
	.loc 1 1194 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.244
	subl	$11, %eax	#, tmp657
	movl	%eax, -12(%rbp)	# tmp657, l
	jmp	.L454	#
.L455:
	.loc 1 1194 0 is_stmt 0 discriminator 2
	subl	$11, -12(%rbp)	#, l
.L454:
	.loc 1 1194 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp659
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L455	#,
	.loc 1 1195 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp661
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$11, %eax	#, D.7146
	je	.L456	#,
	.loc 1 1195 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp663
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L456:
	.loc 1 1195 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L453:
	.loc 1 1199 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.245
	addl	$11, %eax	#, tmp664
	movl	%eax, -12(%rbp)	# tmp664, l
	jmp	.L457	#
.L458:
	.loc 1 1199 0 is_stmt 0 discriminator 2
	addl	$11, -12(%rbp)	#, l
.L457:
	.loc 1 1199 0 discriminator 1
	movl	-12(%rbp), %eax	# l, tmp666
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$13, %eax	#, D.7146
	je	.L458	#,
	.loc 1 1200 0 is_stmt 1
	movl	-12(%rbp), %eax	# l, tmp668
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$11, %eax	#, D.7146
	je	.L459	#,
	.loc 1 1200 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# l, tmp670
	cltq
	movl	board(,%rax,4), %eax	# board, D.7146
	cmpl	$9, %eax	#, D.7146
	jne	.L433	#,
.L459:
	.loc 1 1200 0 discriminator 1
	movl	$1, %eax	#, D.7143
	jmp	.L266	#
.L433:
	.loc 1 1204 0 is_stmt 1
	movl	$0, %eax	#, D.7143
.L266:
	.loc 1 1209 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	f_in_check, .-f_in_check
	.globl	extended_in_check
	.type	extended_in_check, @function
extended_in_check:
.LFB6:
	.loc 1 1212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1216 0
	movl	Variant(%rip), %eax	# Variant, Variant.246
	cmpl	$3, %eax	#, Variant.246
	jne	.L461	#,
	.loc 1 1216 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7148
	jmp	.L462	#
.L461:
	.loc 1 1218 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.247
	cmpl	$1, %eax	#, white_to_move.247
	jne	.L463	#,
	.loc 1 1220 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.248
	subl	$12, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1221 0
	cmpl	$8, %ebx	#, sq
	je	.L464	#,
	.loc 1 1221 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L465	#,
.L464:
	.loc 1 1221 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L465:
	.loc 1 1222 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.249
	subl	$1, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1223 0
	cmpl	$8, %ebx	#, sq
	je	.L466	#,
	.loc 1 1223 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L467	#,
.L466:
	.loc 1 1223 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L467:
	.loc 1 1224 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.250
	addl	$1, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1225 0
	cmpl	$8, %ebx	#, sq
	je	.L468	#,
	.loc 1 1225 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L469	#,
.L468:
	.loc 1 1225 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L469:
	.loc 1 1226 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.251
	addl	$12, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1227 0
	cmpl	$8, %ebx	#, sq
	je	.L470	#,
	.loc 1 1227 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L471	#,
.L470:
	.loc 1 1227 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L471:
	.loc 1 1228 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.252
	addl	$13, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1229 0
	cmpl	$12, %ebx	#, sq
	je	.L472	#,
	.loc 1 1229 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	je	.L472	#,
	.loc 1 1229 0 discriminator 1
	cmpl	$2, %ebx	#, sq
	jne	.L473	#,
.L472:
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L473:
	.loc 1 1230 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.253
	addl	$11, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1231 0
	cmpl	$12, %ebx	#, sq
	je	.L474	#,
	.loc 1 1231 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	je	.L474	#,
	.loc 1 1231 0 discriminator 1
	cmpl	$2, %ebx	#, sq
	jne	.L475	#,
.L474:
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L475:
	.loc 1 1232 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.254
	subl	$11, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1233 0
	cmpl	$12, %ebx	#, sq
	je	.L476	#,
	.loc 1 1233 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L477	#,
.L476:
	.loc 1 1233 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L477:
	.loc 1 1234 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.255
	subl	$13, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1235 0
	cmpl	$12, %ebx	#, sq
	je	.L478	#,
	.loc 1 1235 0 is_stmt 0 discriminator 2
	cmpl	$10, %ebx	#, sq
	jne	.L479	#,
.L478:
	.loc 1 1235 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L479:
	.loc 1 1236 0 is_stmt 1
	movl	$0, %ebx	#, sq
	jmp	.L480	#
.L482:
	.loc 1 1238 0
	movslq	%ebx, %rax	# sq, tmp120
	movl	knight_o.4175(,%rax,4), %edx	# knight_o, D.7148
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.256
	addl	%edx, %eax	# D.7148, D.7148
	cltq
	movl	board(,%rax,4), %eax	# board, D.7148
	cmpl	$4, %eax	#, D.7148
	jne	.L481	#,
	.loc 1 1238 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L481:
	.loc 1 1236 0 is_stmt 1
	addl	$1, %ebx	#, sq
.L480:
	.loc 1 1236 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, sq
	jle	.L482	#,
	.loc 1 1240 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.257
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.257,
	call	is_attacked	#
	testl	%eax, %eax	# D.7149
	je	.L483	#,
	.loc 1 1242 0
	movl	Variant(%rip), %eax	# Variant, Variant.258
	cmpl	$2, %eax	#, Variant.258
	je	.L484	#,
	.loc 1 1242 0 is_stmt 0 discriminator 2
	movl	Variant(%rip), %eax	# Variant, Variant.259
	cmpl	$4, %eax	#, Variant.259
	jne	.L485	#,
.L484:
	.loc 1 1242 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L485:
	.loc 1 1243 0 is_stmt 1
	movl	$1, %eax	#, D.7148
	jmp	.L462	#
.L463:
	.loc 1 1248 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.260
	subl	$12, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1249 0
	cmpl	$7, %ebx	#, sq
	je	.L486	#,
	.loc 1 1249 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L487	#,
.L486:
	.loc 1 1249 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L487:
	.loc 1 1250 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.261
	subl	$1, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1251 0
	cmpl	$7, %ebx	#, sq
	je	.L488	#,
	.loc 1 1251 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L489	#,
.L488:
	.loc 1 1251 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L489:
	.loc 1 1252 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.262
	addl	$1, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1253 0
	cmpl	$7, %ebx	#, sq
	je	.L490	#,
	.loc 1 1253 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L491	#,
.L490:
	.loc 1 1253 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L491:
	.loc 1 1254 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.263
	addl	$12, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1255 0
	cmpl	$7, %ebx	#, sq
	je	.L492	#,
	.loc 1 1255 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L493	#,
.L492:
	.loc 1 1255 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L493:
	.loc 1 1256 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.264
	subl	$13, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1257 0
	cmpl	$11, %ebx	#, sq
	je	.L494	#,
	.loc 1 1257 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	je	.L494	#,
	.loc 1 1257 0 discriminator 1
	cmpl	$1, %ebx	#, sq
	jne	.L495	#,
.L494:
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L495:
	.loc 1 1258 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.265
	subl	$11, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1259 0
	cmpl	$11, %ebx	#, sq
	je	.L496	#,
	.loc 1 1259 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	je	.L496	#,
	.loc 1 1259 0 discriminator 1
	cmpl	$1, %ebx	#, sq
	jne	.L497	#,
.L496:
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L497:
	.loc 1 1260 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.266
	addl	$11, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1261 0
	cmpl	$11, %ebx	#, sq
	je	.L498	#,
	.loc 1 1261 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L499	#,
.L498:
	.loc 1 1261 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L499:
	.loc 1 1262 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.267
	addl	$13, %eax	#, D.7148
	cltq
	movl	board(,%rax,4), %ebx	# board, sq
	.loc 1 1263 0
	cmpl	$11, %ebx	#, sq
	je	.L500	#,
	.loc 1 1263 0 is_stmt 0 discriminator 2
	cmpl	$9, %ebx	#, sq
	jne	.L501	#,
.L500:
	.loc 1 1263 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L501:
	.loc 1 1264 0 is_stmt 1
	movl	$0, %ebx	#, sq
	jmp	.L502	#
.L504:
	.loc 1 1266 0
	movslq	%ebx, %rax	# sq, tmp130
	movl	knight_o.4175(,%rax,4), %edx	# knight_o, D.7148
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.268
	addl	%edx, %eax	# D.7148, D.7148
	cltq
	movl	board(,%rax,4), %eax	# board, D.7148
	cmpl	$3, %eax	#, D.7148
	jne	.L503	#,
	.loc 1 1266 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L503:
	.loc 1 1264 0 is_stmt 1
	addl	$1, %ebx	#, sq
.L502:
	.loc 1 1264 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, sq
	jle	.L504	#,
	.loc 1 1268 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.269
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.269,
	call	is_attacked	#
	testl	%eax, %eax	# D.7149
	je	.L483	#,
	.loc 1 1270 0
	movl	Variant(%rip), %eax	# Variant, Variant.270
	cmpl	$2, %eax	#, Variant.270
	je	.L505	#,
	.loc 1 1270 0 is_stmt 0 discriminator 2
	movl	Variant(%rip), %eax	# Variant, Variant.271
	cmpl	$4, %eax	#, Variant.271
	jne	.L506	#,
.L505:
	.loc 1 1270 0 discriminator 1
	movl	$2, %eax	#, D.7148
	jmp	.L462	#
.L506:
	.loc 1 1271 0 is_stmt 1
	movl	$1, %eax	#, D.7148
	jmp	.L462	#
.L483:
	.loc 1 1275 0
	movl	$0, %eax	#, D.7148
.L462:
	.loc 1 1276 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	extended_in_check, .-extended_in_check
	.globl	make
	.type	make, @function
make:
.LFB7:
	.loc 1 1278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# moves, moves
	movl	%esi, -60(%rbp)	# i, i
	.loc 1 1285 0
	movl	-60(%rbp), %eax	# i, tmp383
	movslq	%eax, %rdx	# tmp383, D.7150
	movq	%rdx, %rax	# D.7150, tmp384
	addq	%rax, %rax	# tmp384
	addq	%rdx, %rax	# D.7150, tmp384
	salq	$3, %rax	#, tmp385
	movq	%rax, %rdx	# tmp384, D.7150
	movq	-56(%rbp), %rax	# moves, tmp386
	addq	%rdx, %rax	# D.7150, D.7151
	movl	20(%rax), %eax	# _6->ep, tmp387
	movl	%eax, -40(%rbp)	# tmp387, ep
	.loc 1 1286 0
	movl	-60(%rbp), %eax	# i, tmp388
	movslq	%eax, %rdx	# tmp388, D.7150
	movq	%rdx, %rax	# D.7150, tmp389
	addq	%rax, %rax	# tmp389
	addq	%rdx, %rax	# D.7150, tmp389
	salq	$3, %rax	#, tmp390
	movq	%rax, %rdx	# tmp389, D.7150
	movq	-56(%rbp), %rax	# moves, tmp391
	addq	%rdx, %rax	# D.7150, D.7151
	movl	(%rax), %eax	# _10->from, tmp392
	movl	%eax, -36(%rbp)	# tmp392, from
	.loc 1 1287 0
	movl	-60(%rbp), %eax	# i, tmp393
	movslq	%eax, %rdx	# tmp393, D.7150
	movq	%rdx, %rax	# D.7150, tmp394
	addq	%rax, %rax	# tmp394
	addq	%rdx, %rax	# D.7150, tmp394
	salq	$3, %rax	#, tmp395
	movq	%rax, %rdx	# tmp394, D.7150
	movq	-56(%rbp), %rax	# moves, tmp396
	addq	%rdx, %rax	# D.7150, D.7151
	movl	4(%rax), %eax	# _14->target, tmp397
	movl	%eax, -32(%rbp)	# tmp397, target
	.loc 1 1288 0
	movl	-60(%rbp), %eax	# i, tmp398
	movslq	%eax, %rdx	# tmp398, D.7150
	movq	%rdx, %rax	# D.7150, tmp399
	addq	%rax, %rax	# tmp399
	addq	%rdx, %rax	# D.7150, tmp399
	salq	$3, %rax	#, tmp400
	movq	%rax, %rdx	# tmp399, D.7150
	movq	-56(%rbp), %rax	# moves, tmp401
	addq	%rdx, %rax	# D.7150, D.7151
	movl	8(%rax), %eax	# _18->captured, tmp402
	movl	%eax, -28(%rbp)	# tmp402, captured
	.loc 1 1289 0
	movl	-60(%rbp), %eax	# i, tmp403
	movslq	%eax, %rdx	# tmp403, D.7150
	movq	%rdx, %rax	# D.7150, tmp404
	addq	%rax, %rax	# tmp404
	addq	%rdx, %rax	# D.7150, tmp404
	salq	$3, %rax	#, tmp405
	movq	%rax, %rdx	# tmp404, D.7150
	movq	-56(%rbp), %rax	# moves, tmp406
	addq	%rdx, %rax	# D.7150, D.7151
	movl	12(%rax), %eax	# _22->promoted, tmp407
	movl	%eax, -24(%rbp)	# tmp407, promoted
	.loc 1 1290 0
	movl	-60(%rbp), %eax	# i, tmp408
	movslq	%eax, %rdx	# tmp408, D.7150
	movq	%rdx, %rax	# D.7150, tmp409
	addq	%rax, %rax	# tmp409
	addq	%rdx, %rax	# D.7150, tmp409
	salq	$3, %rax	#, tmp410
	movq	%rax, %rdx	# tmp409, D.7150
	movq	-56(%rbp), %rax	# moves, tmp411
	addq	%rdx, %rax	# D.7150, D.7151
	movl	16(%rax), %eax	# _26->castled, tmp412
	movl	%eax, -20(%rbp)	# tmp412, castled
	.loc 1 1297 0
	movl	ply(%rip), %edx	# ply, ply.272
	movl	ep_square(%rip), %eax	# ep_square, ep_square.273
	movslq	%edx, %rdx	# ply.272, tmp413
	salq	$4, %rdx	#, tmp414
	addq	$path_x+8, %rdx	#, tmp415
	movl	%eax, (%rdx)	# ep_square.273, path_x[ply.272_28].epsq
	.loc 1 1299 0
	movl	$0, ep_square(%rip)	#, ep_square
	.loc 1 1302 0
	movl	ply(%rip), %edx	# ply, ply.274
	movl	fifty(%rip), %eax	# fifty, fifty.275
	movslq	%edx, %rdx	# ply.274, tmp416
	salq	$4, %rdx	#, tmp417
	addq	$path_x+12, %rdx	#, tmp418
	movl	%eax, (%rdx)	# fifty.275, path_x[ply.274_30].fifty
	.loc 1 1305 0
	movl	-36(%rbp), %eax	# from, tmp420
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$1, %eax	#, D.7152
	je	.L508	#,
	.loc 1 1305 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# from, tmp422
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$2, %eax	#, D.7152
	je	.L508	#,
	movl	-32(%rbp), %eax	# target, tmp424
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$13, %eax	#, D.7152
	je	.L509	#,
.L508:
	.loc 1 1307 0 is_stmt 1
	movl	$0, fifty(%rip)	#, fifty
	jmp	.L510	#
.L509:
	.loc 1 1311 0
	movl	fifty(%rip), %eax	# fifty, fifty.276
	addl	$1, %eax	#, fifty.277
	movl	%eax, fifty(%rip)	# fifty.277, fifty
.L510:
	.loc 1 1314 0
	cmpl	$0, -36(%rbp)	#, from
	jne	.L511	#,
	.loc 1 1322 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.278
	addl	$1, %eax	#, piece_count.279
	movl	%eax, piece_count(%rip)	# piece_count.279, piece_count
	.loc 1 1325 0
	movl	$1, -44(%rbp)	#, find_slot
	jmp	.L512	#
.L513:
	.loc 1 1325 0 is_stmt 0 discriminator 2
	addl	$1, -44(%rbp)	#, find_slot
.L512:
	.loc 1 1325 0 discriminator 1
	movl	-44(%rbp), %eax	# find_slot, tmp426
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.7152
	testl	%eax, %eax	# D.7152
	jne	.L513	#,
	.loc 1 1329 0 is_stmt 1
	movl	-44(%rbp), %eax	# find_slot, tmp428
	cltq
	movl	-32(%rbp), %edx	# target, tmp429
	movl	%edx, pieces(,%rax,4)	# tmp429, pieces
	.loc 1 1331 0
	movl	ply(%rip), %edx	# ply, ply.280
	movl	-44(%rbp), %eax	# find_slot, tmp431
	cltq
	movl	is_promoted(,%rax,4), %eax	# is_promoted, D.7152
	movslq	%edx, %rdx	# ply.280, tmp432
	salq	$4, %rdx	#, tmp433
	addq	$path_x+4, %rdx	#, tmp434
	movl	%eax, (%rdx)	# D.7152, path_x[ply.280_42].was_promoted
	.loc 1 1332 0
	movl	-44(%rbp), %eax	# find_slot, tmp436
	cltq
	movl	$0, is_promoted(,%rax,4)	#, is_promoted
	.loc 1 1335 0
	movl	-32(%rbp), %eax	# target, tmp438
	cltq
	movl	-44(%rbp), %edx	# find_slot, tmp439
	movl	%edx, squares(,%rax,4)	# tmp439, squares
	.loc 1 1339 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.281
	testl	%eax, %eax	# white_to_move.281
	sete	%al	#, D.7153
	movzbl	%al, %edx	# D.7153, D.7152
	movl	-24(%rbp), %eax	# promoted, tmp440
	movl	%edx, %esi	# D.7152,
	movl	%eax, %edi	# tmp440,
	call	DropremoveHolding	#
	.loc 1 1342 0
	movl	-24(%rbp), %eax	# promoted, tmp442
	cltq
	movl	material(,%rax,4), %edx	# material, D.7152
	movl	Material(%rip), %eax	# Material, Material.282
	addl	%edx, %eax	# D.7152, Material.283
	movl	%eax, Material(%rip)	# Material.283, Material
	.loc 1 1345 0
	movl	-32(%rbp), %eax	# target, tmp444
	cltq
	movl	-24(%rbp), %edx	# promoted, tmp445
	movl	%edx, board(,%rax,4)	# tmp445, board
	.loc 1 1347 0
	movl	-32(%rbp), %eax	# target, tmp447
	movslq	%eax, %rcx	# tmp447, tmp446
	movl	-24(%rbp), %eax	# promoted, tmp449
	movslq	%eax, %rdx	# tmp449, tmp448
	movq	%rdx, %rax	# tmp448, tmp450
	salq	$3, %rax	#, tmp450
	addq	%rdx, %rax	# tmp448, tmp450
	salq	$4, %rax	#, tmp451
	addq	%rcx, %rax	# tmp446, tmp452
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.284
	xorl	%edx, %eax	# D.7154, hash.285
	movl	%eax, hash(%rip)	# hash.285, hash
	.loc 1 1349 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.286
	xorl	$1, %eax	#, white_to_move.287
	movl	%eax, white_to_move(%rip)	# white_to_move.287, white_to_move
	.loc 1 1350 0
	movl	ply(%rip), %eax	# ply, ply.288
	addl	$1, %eax	#, ply.289
	movl	%eax, ply(%rip)	# ply.289, ply
	.loc 1 1352 0
	jmp	.L507	#
.L511:
	.loc 1 1357 0
	movl	ply(%rip), %edx	# ply, ply.290
	movl	-32(%rbp), %eax	# target, tmp454
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	is_promoted(,%rax,4), %eax	# is_promoted, D.7152
	movslq	%edx, %rdx	# ply.290, tmp456
	salq	$4, %rdx	#, tmp457
	addq	$path_x+4, %rdx	#, tmp458
	movl	%eax, (%rdx)	# D.7152, path_x[ply.290_57].was_promoted
	.loc 1 1361 0
	movl	ply(%rip), %edx	# ply, ply.291
	movl	-32(%rbp), %eax	# target, tmp460
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	movslq	%edx, %rdx	# ply.291, tmp461
	salq	$4, %rdx	#, tmp462
	addq	$path_x, %rdx	#, tmp463
	movl	%eax, (%rdx)	# D.7152, path_x[ply.291_60].cap_num
	.loc 1 1362 0
	movl	-32(%rbp), %eax	# target, tmp465
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	$0, pieces(,%rax,4)	#, pieces
	.loc 1 1363 0
	movl	-36(%rbp), %eax	# from, tmp468
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	-32(%rbp), %edx	# target, tmp470
	movl	%edx, pieces(,%rax,4)	# tmp470, pieces
	.loc 1 1364 0
	movl	-36(%rbp), %eax	# from, tmp472
	cltq
	movl	squares(,%rax,4), %edx	# squares, D.7152
	movl	-32(%rbp), %eax	# target, tmp474
	cltq
	movl	%edx, squares(,%rax,4)	# D.7152, squares
	.loc 1 1365 0
	movl	-36(%rbp), %eax	# from, tmp476
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 1368 0
	cmpl	$0, -40(%rbp)	#, ep
	jne	.L515	#,
	.loc 1 1370 0
	movl	-32(%rbp), %eax	# target, tmp478
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$13, %eax	#, D.7152
	je	.L535	#,
	.loc 1 1374 0
	movl	Variant(%rip), %eax	# Variant, Variant.292
	cmpl	$1, %eax	#, Variant.292
	je	.L518	#,
	.loc 1 1374 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.293
	testl	%eax, %eax	# Variant.293
	jne	.L519	#,
.L518:
	.loc 1 1376 0 is_stmt 1
	movl	ply(%rip), %eax	# ply, ply.294
	cltq
	salq	$4, %rax	#, tmp480
	addq	$path_x+4, %rax	#, tmp481
	movl	(%rax), %eax	# path_x[ply.294_68].was_promoted, D.7152
	testl	%eax, %eax	# D.7152
	je	.L520	#,
	.loc 1 1378 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.295
	testl	%eax, %eax	# white_to_move.295
	sete	%al	#, D.7153
	movzbl	%al, %ebx	# D.7153, D.7152
	movl	-32(%rbp), %eax	# target, tmp483
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	movl	%eax, %edi	# D.7152,
	call	SwitchPromoted	#
	movl	%ebx, %esi	# D.7152,
	movl	%eax, %edi	# D.7152,
	call	addHolding	#
	jmp	.L519	#
.L520:
	.loc 1 1382 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.296
	testl	%eax, %eax	# white_to_move.296
	sete	%al	#, D.7153
	movzbl	%al, %ebx	# D.7153, D.7152
	movl	-32(%rbp), %eax	# target, tmp485
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	movl	%eax, %edi	# D.7152,
	call	SwitchColor	#
	movl	%ebx, %esi	# D.7152,
	movl	%eax, %edi	# D.7152,
	call	addHolding	#
.L519:
	.loc 1 1386 0
	movl	Material(%rip), %edx	# Material, Material.297
	movl	-32(%rbp), %eax	# target, tmp487
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cltq
	movl	material(,%rax,4), %eax	# material, D.7152
	subl	%eax, %edx	# D.7152, Material.298
	movl	%edx, %eax	# Material.298, Material.298
	movl	%eax, Material(%rip)	# Material.298, Material
	.loc 1 1389 0
	movl	-32(%rbp), %eax	# target, tmp490
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	movl	-32(%rbp), %edx	# target, tmp492
	movslq	%edx, %rcx	# tmp492, tmp491
	movslq	%eax, %rdx	# D.7152, tmp493
	movq	%rdx, %rax	# tmp493, tmp494
	salq	$3, %rax	#, tmp494
	addq	%rdx, %rax	# tmp493, tmp494
	salq	$4, %rax	#, tmp495
	addq	%rcx, %rax	# tmp491, tmp496
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.299
	xorl	%edx, %eax	# D.7154, hash.300
	movl	%eax, hash(%rip)	# hash.300, hash
	.loc 1 1391 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.301
	subl	$1, %eax	#, piece_count.302
	movl	%eax, piece_count(%rip)	# piece_count.302, piece_count
	.loc 1 1392 0
	jmp	.L515	#
.L535:
	.loc 1 1371 0
	nop
.L515:
	.loc 1 1397 0
	movl	-36(%rbp), %eax	# from, tmp498
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$1, %eax	#, D.7152
	jne	.L521	#,
	.loc 1 1399 0
	cmpl	$0, -24(%rbp)	#, promoted
	je	.L522	#,
	.loc 1 1400 0
	movl	-32(%rbp), %eax	# target, tmp500
	cltq
	movl	-24(%rbp), %edx	# promoted, tmp501
	movl	%edx, board(,%rax,4)	# tmp501, board
	.loc 1 1401 0
	movl	-36(%rbp), %eax	# from, tmp503
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1402 0
	movl	-32(%rbp), %eax	# target, tmp505
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp507
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1403 0
	movl	-36(%rbp), %eax	# from, tmp509
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp511
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1404 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.303
	xorl	$1, %eax	#, white_to_move.304
	movl	%eax, white_to_move(%rip)	# white_to_move.304, white_to_move
	.loc 1 1406 0
	movl	-32(%rbp), %eax	# target, tmp513
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	$1, is_promoted(,%rax,4)	#, is_promoted
	.loc 1 1409 0
	movl	-36(%rbp), %eax	# from, tmp516
	cltq
	addq	$144, %rax	#, tmp517
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.305
	xorl	%edx, %eax	# D.7154, hash.306
	movl	%eax, hash(%rip)	# hash.306, hash
	.loc 1 1411 0
	movl	-32(%rbp), %eax	# target, tmp519
	movslq	%eax, %rcx	# tmp519, tmp518
	movl	-24(%rbp), %eax	# promoted, tmp521
	movslq	%eax, %rdx	# tmp521, tmp520
	movq	%rdx, %rax	# tmp520, tmp522
	salq	$3, %rax	#, tmp522
	addq	%rdx, %rax	# tmp520, tmp522
	salq	$4, %rax	#, tmp523
	addq	%rcx, %rax	# tmp518, tmp524
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.307
	xorl	%edx, %eax	# D.7154, hash.308
	movl	%eax, hash(%rip)	# hash.308, hash
	.loc 1 1413 0
	movl	Material(%rip), %edx	# Material, Material.309
	movl	material+4(%rip), %eax	# material, D.7152
	subl	%eax, %edx	# D.7152, Material.310
	movl	%edx, %eax	# Material.310, Material.310
	movl	%eax, Material(%rip)	# Material.310, Material
	.loc 1 1414 0
	movl	-24(%rbp), %eax	# promoted, tmp526
	cltq
	movl	material(,%rax,4), %edx	# material, D.7152
	movl	Material(%rip), %eax	# Material, Material.311
	addl	%edx, %eax	# D.7152, Material.312
	movl	%eax, Material(%rip)	# Material.312, Material
	.loc 1 1416 0
	movl	ply(%rip), %eax	# ply, ply.313
	addl	$1, %eax	#, ply.314
	movl	%eax, ply(%rip)	# ply.314, ply
	.loc 1 1418 0
	jmp	.L507	#
.L522:
	.loc 1 1422 0
	cmpl	$0, -40(%rbp)	#, ep
	je	.L523	#,
	.loc 1 1425 0
	movl	-36(%rbp), %eax	# from, tmp528
	cltq
	addq	$144, %rax	#, tmp529
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.315
	xorl	%edx, %eax	# D.7154, hash.316
	movl	%eax, hash(%rip)	# hash.316, hash
	.loc 1 1427 0
	movl	-32(%rbp), %eax	# target, tmp530
	subl	$12, %eax	#, D.7152
	cltq
	addq	$288, %rax	#, tmp532
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.317
	xorl	%edx, %eax	# D.7154, hash.318
	movl	%eax, hash(%rip)	# hash.318, hash
	.loc 1 1429 0
	movl	-32(%rbp), %eax	# target, tmp534
	cltq
	addq	$144, %rax	#, tmp535
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.319
	xorl	%edx, %eax	# D.7154, hash.320
	movl	%eax, hash(%rip)	# hash.320, hash
	.loc 1 1431 0
	movl	Material(%rip), %edx	# Material, Material.321
	movl	material+8(%rip), %eax	# material, D.7152
	subl	%eax, %edx	# D.7152, Material.322
	movl	%edx, %eax	# Material.322, Material.322
	movl	%eax, Material(%rip)	# Material.322, Material
	.loc 1 1433 0
	movl	-32(%rbp), %eax	# target, tmp537
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 1434 0
	movl	-36(%rbp), %eax	# from, tmp539
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1436 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	addHolding	#
	.loc 1 1437 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.323
	subl	$1, %eax	#, piece_count.324
	movl	%eax, piece_count(%rip)	# piece_count.324, piece_count
	.loc 1 1439 0
	movl	-32(%rbp), %eax	# target, tmp540
	subl	$12, %eax	#, D.7152
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1440 0
	movl	-32(%rbp), %eax	# target, tmp543
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp545
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1441 0
	movl	-36(%rbp), %eax	# from, tmp547
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp549
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1442 0
	movl	-32(%rbp), %eax	# target, tmp550
	subl	$12, %eax	#, D.7152
	movslq	%eax, %rdx	# D.7152, tmp551
	movl	moved(,%rdx,4), %edx	# moved, D.7152
	addl	$1, %edx	#, D.7152
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1443 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.325
	xorl	$1, %eax	#, white_to_move.326
	movl	%eax, white_to_move(%rip)	# white_to_move.326, white_to_move
	.loc 1 1444 0
	movl	ply(%rip), %edx	# ply, ply.327
	movl	-32(%rbp), %eax	# target, tmp553
	subl	$12, %eax	#, D.7152
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	movslq	%edx, %rdx	# ply.327, tmp555
	salq	$4, %rdx	#, tmp556
	addq	$path_x, %rdx	#, tmp557
	movl	%eax, (%rdx)	# D.7152, path_x[ply.327_137].cap_num
	.loc 1 1446 0
	movl	-32(%rbp), %eax	# target, tmp558
	subl	$12, %eax	#, D.7152
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	$0, pieces(,%rax,4)	#, pieces
	.loc 1 1447 0
	movl	-32(%rbp), %eax	# target, tmp561
	subl	$12, %eax	#, D.7152
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 1449 0
	movl	ply(%rip), %eax	# ply, ply.328
	addl	$1, %eax	#, ply.329
	movl	%eax, ply(%rip)	# ply.329, ply
	.loc 1 1451 0
	jmp	.L507	#
.L523:
	.loc 1 1456 0
	movl	-36(%rbp), %eax	# from, tmp563
	addl	$24, %eax	#, D.7152
	cmpl	-32(%rbp), %eax	# target, D.7152
	jne	.L524	#,
	.loc 1 1457 0
	movl	-36(%rbp), %eax	# from, tmp564
	addl	$12, %eax	#, ep_square.330
	movl	%eax, ep_square(%rip)	# ep_square.330, ep_square
.L524:
	.loc 1 1459 0
	movl	-36(%rbp), %eax	# from, tmp566
	cltq
	addq	$144, %rax	#, tmp567
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.331
	xorl	%edx, %eax	# D.7154, hash.332
	movl	%eax, hash(%rip)	# hash.332, hash
	.loc 1 1460 0
	movl	-32(%rbp), %eax	# target, tmp569
	cltq
	addq	$144, %rax	#, tmp570
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.333
	xorl	%edx, %eax	# D.7154, hash.334
	movl	%eax, hash(%rip)	# hash.334, hash
	.loc 1 1462 0
	movl	-32(%rbp), %eax	# target, tmp572
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 1463 0
	movl	-36(%rbp), %eax	# from, tmp574
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1464 0
	movl	-32(%rbp), %eax	# target, tmp576
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp578
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1465 0
	movl	-36(%rbp), %eax	# from, tmp580
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp582
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1466 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.335
	xorl	$1, %eax	#, white_to_move.336
	movl	%eax, white_to_move(%rip)	# white_to_move.336, white_to_move
	.loc 1 1468 0
	movl	ply(%rip), %eax	# ply, ply.337
	addl	$1, %eax	#, ply.338
	movl	%eax, ply(%rip)	# ply.338, ply
	.loc 1 1470 0
	jmp	.L507	#
.L521:
	.loc 1 1475 0
	movl	-36(%rbp), %eax	# from, tmp584
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$2, %eax	#, D.7152
	jne	.L525	#,
	.loc 1 1477 0
	cmpl	$0, -24(%rbp)	#, promoted
	je	.L526	#,
	.loc 1 1478 0
	movl	-32(%rbp), %eax	# target, tmp586
	cltq
	movl	-24(%rbp), %edx	# promoted, tmp587
	movl	%edx, board(,%rax,4)	# tmp587, board
	.loc 1 1479 0
	movl	-36(%rbp), %eax	# from, tmp589
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1480 0
	movl	-32(%rbp), %eax	# target, tmp591
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp593
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1481 0
	movl	-36(%rbp), %eax	# from, tmp595
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp597
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1482 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.339
	xorl	$1, %eax	#, white_to_move.340
	movl	%eax, white_to_move(%rip)	# white_to_move.340, white_to_move
	.loc 1 1484 0
	movl	-32(%rbp), %eax	# target, tmp599
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	$1, is_promoted(,%rax,4)	#, is_promoted
	.loc 1 1487 0
	movl	-36(%rbp), %eax	# from, tmp602
	cltq
	addq	$288, %rax	#, tmp603
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.341
	xorl	%edx, %eax	# D.7154, hash.342
	movl	%eax, hash(%rip)	# hash.342, hash
	.loc 1 1489 0
	movl	-32(%rbp), %eax	# target, tmp605
	movslq	%eax, %rcx	# tmp605, tmp604
	movl	-24(%rbp), %eax	# promoted, tmp607
	movslq	%eax, %rdx	# tmp607, tmp606
	movq	%rdx, %rax	# tmp606, tmp608
	salq	$3, %rax	#, tmp608
	addq	%rdx, %rax	# tmp606, tmp608
	salq	$4, %rax	#, tmp609
	addq	%rcx, %rax	# tmp604, tmp610
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.343
	xorl	%edx, %eax	# D.7154, hash.344
	movl	%eax, hash(%rip)	# hash.344, hash
	.loc 1 1491 0
	movl	Material(%rip), %edx	# Material, Material.345
	movl	material+8(%rip), %eax	# material, D.7152
	subl	%eax, %edx	# D.7152, Material.346
	movl	%edx, %eax	# Material.346, Material.346
	movl	%eax, Material(%rip)	# Material.346, Material
	.loc 1 1492 0
	movl	-24(%rbp), %eax	# promoted, tmp612
	cltq
	movl	material(,%rax,4), %edx	# material, D.7152
	movl	Material(%rip), %eax	# Material, Material.347
	addl	%edx, %eax	# D.7152, Material.348
	movl	%eax, Material(%rip)	# Material.348, Material
	.loc 1 1494 0
	movl	ply(%rip), %eax	# ply, ply.349
	addl	$1, %eax	#, ply.350
	movl	%eax, ply(%rip)	# ply.350, ply
	.loc 1 1496 0
	jmp	.L507	#
.L526:
	.loc 1 1500 0
	cmpl	$0, -40(%rbp)	#, ep
	je	.L527	#,
	.loc 1 1503 0
	movl	-36(%rbp), %eax	# from, tmp614
	cltq
	addq	$288, %rax	#, tmp615
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.351
	xorl	%edx, %eax	# D.7154, hash.352
	movl	%eax, hash(%rip)	# hash.352, hash
	.loc 1 1505 0
	movl	-32(%rbp), %eax	# target, tmp616
	addl	$12, %eax	#, D.7152
	cltq
	addq	$144, %rax	#, tmp618
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.353
	xorl	%edx, %eax	# D.7154, hash.354
	movl	%eax, hash(%rip)	# hash.354, hash
	.loc 1 1507 0
	movl	-32(%rbp), %eax	# target, tmp620
	cltq
	addq	$288, %rax	#, tmp621
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.355
	xorl	%edx, %eax	# D.7154, hash.356
	movl	%eax, hash(%rip)	# hash.356, hash
	.loc 1 1509 0
	movl	Material(%rip), %edx	# Material, Material.357
	movl	material+4(%rip), %eax	# material, D.7152
	subl	%eax, %edx	# D.7152, Material.358
	movl	%edx, %eax	# Material.358, Material.358
	movl	%eax, Material(%rip)	# Material.358, Material
	.loc 1 1511 0
	movl	-32(%rbp), %eax	# target, tmp623
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 1512 0
	movl	-36(%rbp), %eax	# from, tmp625
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1514 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	addHolding	#
	.loc 1 1515 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.359
	subl	$1, %eax	#, piece_count.360
	movl	%eax, piece_count(%rip)	# piece_count.360, piece_count
	.loc 1 1517 0
	movl	-32(%rbp), %eax	# target, tmp626
	addl	$12, %eax	#, D.7152
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1518 0
	movl	-32(%rbp), %eax	# target, tmp629
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp631
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1519 0
	movl	-36(%rbp), %eax	# from, tmp633
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp635
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1520 0
	movl	-32(%rbp), %eax	# target, tmp636
	addl	$12, %eax	#, D.7152
	movslq	%eax, %rdx	# D.7152, tmp637
	movl	moved(,%rdx,4), %edx	# moved, D.7152
	addl	$1, %edx	#, D.7152
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1521 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.361
	xorl	$1, %eax	#, white_to_move.362
	movl	%eax, white_to_move(%rip)	# white_to_move.362, white_to_move
	.loc 1 1522 0
	movl	ply(%rip), %edx	# ply, ply.363
	movl	-32(%rbp), %eax	# target, tmp639
	addl	$12, %eax	#, D.7152
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	movslq	%edx, %rdx	# ply.363, tmp641
	salq	$4, %rdx	#, tmp642
	addq	$path_x, %rdx	#, tmp643
	movl	%eax, (%rdx)	# D.7152, path_x[ply.363_208].cap_num
	.loc 1 1523 0
	movl	-32(%rbp), %eax	# target, tmp644
	addl	$12, %eax	#, D.7152
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7152
	cltq
	movl	$0, pieces(,%rax,4)	#, pieces
	.loc 1 1524 0
	movl	-32(%rbp), %eax	# target, tmp647
	addl	$12, %eax	#, D.7152
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 1526 0
	movl	ply(%rip), %eax	# ply, ply.364
	addl	$1, %eax	#, ply.365
	movl	%eax, ply(%rip)	# ply.365, ply
	.loc 1 1528 0
	jmp	.L507	#
.L527:
	.loc 1 1533 0
	movl	-36(%rbp), %eax	# from, tmp649
	subl	$24, %eax	#, D.7152
	cmpl	-32(%rbp), %eax	# target, D.7152
	jne	.L528	#,
	.loc 1 1534 0
	movl	-36(%rbp), %eax	# from, tmp650
	subl	$12, %eax	#, ep_square.366
	movl	%eax, ep_square(%rip)	# ep_square.366, ep_square
.L528:
	.loc 1 1536 0
	movl	-32(%rbp), %eax	# target, tmp652
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 1537 0
	movl	-36(%rbp), %eax	# from, tmp654
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1538 0
	movl	-32(%rbp), %eax	# target, tmp656
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp658
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1539 0
	movl	-36(%rbp), %eax	# from, tmp660
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp662
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1540 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.367
	xorl	$1, %eax	#, white_to_move.368
	movl	%eax, white_to_move(%rip)	# white_to_move.368, white_to_move
	.loc 1 1542 0
	movl	-36(%rbp), %eax	# from, tmp664
	cltq
	addq	$288, %rax	#, tmp665
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.369
	xorl	%edx, %eax	# D.7154, hash.370
	movl	%eax, hash(%rip)	# hash.370, hash
	.loc 1 1543 0
	movl	-32(%rbp), %eax	# target, tmp667
	cltq
	addq	$288, %rax	#, tmp668
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.371
	xorl	%edx, %eax	# D.7154, hash.372
	movl	%eax, hash(%rip)	# hash.372, hash
	.loc 1 1545 0
	movl	ply(%rip), %eax	# ply, ply.373
	addl	$1, %eax	#, ply.374
	movl	%eax, ply(%rip)	# ply.374, ply
	.loc 1 1547 0
	jmp	.L507	#
.L525:
	.loc 1 1551 0
	movl	-36(%rbp), %eax	# from, tmp670
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$5, %eax	#, D.7152
	je	.L529	#,
	.loc 1 1551 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# from, tmp672
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$6, %eax	#, D.7152
	je	.L529	#,
	.loc 1 1553 0 is_stmt 1
	movl	-36(%rbp), %eax	# from, tmp674
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	movl	-36(%rbp), %edx	# from, tmp676
	movslq	%edx, %rcx	# tmp676, tmp675
	movslq	%eax, %rdx	# D.7152, tmp677
	movq	%rdx, %rax	# tmp677, tmp678
	salq	$3, %rax	#, tmp678
	addq	%rdx, %rax	# tmp677, tmp678
	salq	$4, %rax	#, tmp679
	addq	%rcx, %rax	# tmp675, tmp680
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.375
	xorl	%edx, %eax	# D.7154, hash.376
	movl	%eax, hash(%rip)	# hash.376, hash
	.loc 1 1554 0
	movl	-36(%rbp), %eax	# from, tmp682
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	movl	-32(%rbp), %edx	# target, tmp684
	movslq	%edx, %rcx	# tmp684, tmp683
	movslq	%eax, %rdx	# D.7152, tmp685
	movq	%rdx, %rax	# tmp685, tmp686
	salq	$3, %rax	#, tmp686
	addq	%rdx, %rax	# tmp685, tmp686
	salq	$4, %rax	#, tmp687
	addq	%rcx, %rax	# tmp683, tmp688
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.377
	xorl	%edx, %eax	# D.7154, hash.378
	movl	%eax, hash(%rip)	# hash.378, hash
	.loc 1 1556 0
	movl	-36(%rbp), %eax	# from, tmp690
	cltq
	movl	board(,%rax,4), %edx	# board, D.7152
	movl	-32(%rbp), %eax	# target, tmp692
	cltq
	movl	%edx, board(,%rax,4)	# D.7152, board
	.loc 1 1557 0
	movl	-36(%rbp), %eax	# from, tmp694
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1558 0
	movl	-32(%rbp), %eax	# target, tmp696
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp698
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1559 0
	movl	-36(%rbp), %eax	# from, tmp700
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp702
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1560 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.379
	xorl	$1, %eax	#, white_to_move.380
	movl	%eax, white_to_move(%rip)	# white_to_move.380, white_to_move
	.loc 1 1562 0
	movl	ply(%rip), %eax	# ply, ply.381
	addl	$1, %eax	#, ply.382
	movl	%eax, ply(%rip)	# ply.382, ply
	.loc 1 1564 0
	jmp	.L507	#
.L529:
	.loc 1 1569 0
	movl	-36(%rbp), %eax	# from, tmp704
	cltq
	movl	board(,%rax,4), %eax	# board, D.7152
	cmpl	$5, %eax	#, D.7152
	jne	.L530	#,
	.loc 1 1571 0
	movl	-32(%rbp), %eax	# target, tmp705
	movl	%eax, wking_loc(%rip)	# tmp705, wking_loc
	.loc 1 1574 0
	movl	-32(%rbp), %eax	# target, tmp707
	cltq
	movl	$5, board(,%rax,4)	#, board
	.loc 1 1575 0
	movl	-36(%rbp), %eax	# from, tmp709
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1576 0
	movl	-32(%rbp), %eax	# target, tmp711
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp713
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1577 0
	movl	-36(%rbp), %eax	# from, tmp715
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp717
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1578 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.383
	xorl	$1, %eax	#, white_to_move.384
	movl	%eax, white_to_move(%rip)	# white_to_move.384, white_to_move
	.loc 1 1580 0
	movl	-36(%rbp), %eax	# from, tmp719
	cltq
	addq	$720, %rax	#, tmp720
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.385
	xorl	%edx, %eax	# D.7154, hash.386
	movl	%eax, hash(%rip)	# hash.386, hash
	.loc 1 1581 0
	movl	-32(%rbp), %eax	# target, tmp722
	cltq
	addq	$720, %rax	#, tmp723
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.387
	xorl	%edx, %eax	# D.7154, hash.388
	movl	%eax, hash(%rip)	# hash.388, hash
	.loc 1 1585 0
	cmpl	$1, -20(%rbp)	#, castled
	jne	.L531	#,
	.loc 1 1586 0
	movl	$13, board+132(%rip)	#, board
	.loc 1 1587 0
	movl	$7, board+124(%rip)	#, board
	.loc 1 1588 0
	movl	moved+132(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+132(%rip)	# D.7152, moved
	.loc 1 1589 0
	movl	moved+124(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+124(%rip)	# D.7152, moved
	.loc 1 1590 0
	movl	$1, white_castled(%rip)	#, white_castled
	.loc 1 1591 0
	movl	squares+132(%rip), %eax	# squares, D.7152
	cltq
	movl	$31, pieces(,%rax,4)	#, pieces
	.loc 1 1592 0
	movl	squares+132(%rip), %eax	# squares, D.7152
	movl	%eax, squares+124(%rip)	# D.7152, squares
	.loc 1 1593 0
	movl	$0, squares+132(%rip)	#, squares
	.loc 1 1595 0
	movl	zobrist+4164(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.389
	xorl	%edx, %eax	# D.7154, hash.390
	movl	%eax, hash(%rip)	# hash.390, hash
	.loc 1 1596 0
	movl	zobrist+4156(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.391
	xorl	%edx, %eax	# D.7154, hash.392
	movl	%eax, hash(%rip)	# hash.392, hash
	.loc 1 1598 0
	movl	ply(%rip), %eax	# ply, ply.393
	addl	$1, %eax	#, ply.394
	movl	%eax, ply(%rip)	# ply.394, ply
	.loc 1 1600 0
	jmp	.L507	#
.L531:
	.loc 1 1604 0
	cmpl	$2, -20(%rbp)	#, castled
	jne	.L532	#,
	.loc 1 1605 0
	movl	$13, board+104(%rip)	#, board
	.loc 1 1606 0
	movl	$7, board+116(%rip)	#, board
	.loc 1 1607 0
	movl	moved+104(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+104(%rip)	# D.7152, moved
	.loc 1 1608 0
	movl	moved+116(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+116(%rip)	# D.7152, moved
	.loc 1 1609 0
	movl	$2, white_castled(%rip)	#, white_castled
	.loc 1 1610 0
	movl	squares+104(%rip), %eax	# squares, D.7152
	cltq
	movl	$29, pieces(,%rax,4)	#, pieces
	.loc 1 1611 0
	movl	squares+104(%rip), %eax	# squares, D.7152
	movl	%eax, squares+116(%rip)	# D.7152, squares
	.loc 1 1612 0
	movl	$0, squares+104(%rip)	#, squares
	.loc 1 1614 0
	movl	zobrist+4136(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.395
	xorl	%edx, %eax	# D.7154, hash.396
	movl	%eax, hash(%rip)	# hash.396, hash
	.loc 1 1615 0
	movl	zobrist+4148(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.397
	xorl	%edx, %eax	# D.7154, hash.398
	movl	%eax, hash(%rip)	# hash.398, hash
	.loc 1 1617 0
	movl	ply(%rip), %eax	# ply, ply.399
	addl	$1, %eax	#, ply.400
	movl	%eax, ply(%rip)	# ply.400, ply
	.loc 1 1619 0
	jmp	.L507	#
.L532:
	.loc 1 1622 0
	movl	ply(%rip), %eax	# ply, ply.401
	addl	$1, %eax	#, ply.402
	movl	%eax, ply(%rip)	# ply.402, ply
	.loc 1 1624 0
	jmp	.L507	#
.L530:
	.loc 1 1630 0
	movl	-32(%rbp), %eax	# target, tmp726
	movl	%eax, bking_loc(%rip)	# tmp726, bking_loc
	.loc 1 1633 0
	movl	-32(%rbp), %eax	# target, tmp728
	cltq
	movl	$6, board(,%rax,4)	#, board
	.loc 1 1634 0
	movl	-36(%rbp), %eax	# from, tmp730
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1635 0
	movl	-32(%rbp), %eax	# target, tmp732
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-32(%rbp), %eax	# target, tmp734
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1636 0
	movl	-36(%rbp), %eax	# from, tmp736
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7152
	leal	1(%rax), %edx	#, D.7152
	movl	-36(%rbp), %eax	# from, tmp738
	cltq
	movl	%edx, moved(,%rax,4)	# D.7152, moved
	.loc 1 1637 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.403
	xorl	$1, %eax	#, white_to_move.404
	movl	%eax, white_to_move(%rip)	# white_to_move.404, white_to_move
	.loc 1 1639 0
	movl	-36(%rbp), %eax	# from, tmp740
	cltq
	addq	$864, %rax	#, tmp741
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.405
	xorl	%edx, %eax	# D.7154, hash.406
	movl	%eax, hash(%rip)	# hash.406, hash
	.loc 1 1640 0
	movl	-32(%rbp), %eax	# target, tmp743
	cltq
	addq	$864, %rax	#, tmp744
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.407
	xorl	%edx, %eax	# D.7154, hash.408
	movl	%eax, hash(%rip)	# hash.408, hash
	.loc 1 1644 0
	cmpl	$3, -20(%rbp)	#, castled
	jne	.L533	#,
	.loc 1 1645 0
	movl	$13, board+468(%rip)	#, board
	.loc 1 1646 0
	movl	$8, board+460(%rip)	#, board
	.loc 1 1647 0
	movl	moved+468(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+468(%rip)	# D.7152, moved
	.loc 1 1648 0
	movl	moved+460(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+460(%rip)	# D.7152, moved
	.loc 1 1649 0
	movl	$3, black_castled(%rip)	#, black_castled
	.loc 1 1650 0
	movl	squares+468(%rip), %eax	# squares, D.7152
	cltq
	movl	$115, pieces(,%rax,4)	#, pieces
	.loc 1 1651 0
	movl	squares+468(%rip), %eax	# squares, D.7152
	movl	%eax, squares+460(%rip)	# D.7152, squares
	.loc 1 1652 0
	movl	$0, squares+468(%rip)	#, squares
	.loc 1 1654 0
	movl	zobrist+5076(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.409
	xorl	%edx, %eax	# D.7154, hash.410
	movl	%eax, hash(%rip)	# hash.410, hash
	.loc 1 1655 0
	movl	zobrist+5068(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.411
	xorl	%edx, %eax	# D.7154, hash.412
	movl	%eax, hash(%rip)	# hash.412, hash
	.loc 1 1657 0
	movl	ply(%rip), %eax	# ply, ply.413
	addl	$1, %eax	#, ply.414
	movl	%eax, ply(%rip)	# ply.414, ply
	.loc 1 1659 0
	jmp	.L507	#
.L533:
	.loc 1 1663 0
	cmpl	$4, -20(%rbp)	#, castled
	jne	.L534	#,
	.loc 1 1664 0
	movl	$13, board+440(%rip)	#, board
	.loc 1 1665 0
	movl	$8, board+452(%rip)	#, board
	.loc 1 1666 0
	movl	moved+440(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+440(%rip)	# D.7152, moved
	.loc 1 1667 0
	movl	moved+452(%rip), %eax	# moved, D.7152
	addl	$1, %eax	#, D.7152
	movl	%eax, moved+452(%rip)	# D.7152, moved
	.loc 1 1668 0
	movl	$4, black_castled(%rip)	#, black_castled
	.loc 1 1669 0
	movl	squares+440(%rip), %eax	# squares, D.7152
	cltq
	movl	$113, pieces(,%rax,4)	#, pieces
	.loc 1 1670 0
	movl	squares+440(%rip), %eax	# squares, D.7152
	movl	%eax, squares+452(%rip)	# D.7152, squares
	.loc 1 1671 0
	movl	$0, squares+440(%rip)	#, squares
	.loc 1 1673 0
	movl	zobrist+5048(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.415
	xorl	%edx, %eax	# D.7154, hash.416
	movl	%eax, hash(%rip)	# hash.416, hash
	.loc 1 1674 0
	movl	zobrist+5060(%rip), %edx	# zobrist, D.7154
	movl	hash(%rip), %eax	# hash, hash.417
	xorl	%edx, %eax	# D.7154, hash.418
	movl	%eax, hash(%rip)	# hash.418, hash
	.loc 1 1676 0
	movl	ply(%rip), %eax	# ply, ply.419
	addl	$1, %eax	#, ply.420
	movl	%eax, ply(%rip)	# ply.420, ply
	.loc 1 1678 0
	jmp	.L507	#
.L534:
	.loc 1 1681 0
	movl	ply(%rip), %eax	# ply, ply.421
	addl	$1, %eax	#, ply.422
	movl	%eax, ply(%rip)	# ply.422, ply
	.loc 1 1683 0
	nop
.L507:
	.loc 1 1685 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	make, .-make
	.globl	add_move
	.type	add_move, @function
add_move:
.LFB8:
	.loc 1 1689 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# Ptarget, Ptarget
	movl	%esi, -8(%rbp)	# Ppromoted, Ppromoted
	.loc 1 1690 0
	movq	genfor(%rip), %rcx	# genfor, genfor.423
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.424
	movslq	%eax, %rdx	# numb_moves.424, D.7155
	movq	%rdx, %rax	# D.7155, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# D.7155, tmp92
	salq	$3, %rax	#, tmp93
	leaq	(%rcx,%rax), %rdx	#, D.7156
	movl	gfrom(%rip), %eax	# gfrom, gfrom.425
	movl	%eax, (%rdx)	# gfrom.425, _5->from
	.loc 1 1691 0
	movq	genfor(%rip), %rcx	# genfor, genfor.426
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.427
	movslq	%eax, %rdx	# numb_moves.427, D.7155
	movq	%rdx, %rax	# D.7155, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# D.7155, tmp94
	salq	$3, %rax	#, tmp95
	leaq	(%rcx,%rax), %rdx	#, D.7156
	movl	-4(%rbp), %eax	# Ptarget, tmp96
	movl	%eax, 4(%rdx)	# tmp96, _11->target
	.loc 1 1692 0
	movq	genfor(%rip), %rcx	# genfor, genfor.428
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.429
	movslq	%eax, %rdx	# numb_moves.429, D.7155
	movq	%rdx, %rax	# D.7155, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.7155, tmp97
	salq	$3, %rax	#, tmp98
	addq	%rcx, %rax	# genfor.428, D.7156
	movl	$13, 8(%rax)	#, _17->captured
	.loc 1 1693 0
	movq	genfor(%rip), %rcx	# genfor, genfor.430
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.431
	movslq	%eax, %rdx	# numb_moves.431, D.7155
	movq	%rdx, %rax	# D.7155, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.7155, tmp99
	salq	$3, %rax	#, tmp100
	addq	%rcx, %rax	# genfor.430, D.7156
	movl	$0, 16(%rax)	#, _22->castled
	.loc 1 1694 0
	movq	genfor(%rip), %rcx	# genfor, genfor.432
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.433
	movslq	%eax, %rdx	# numb_moves.433, D.7155
	movq	%rdx, %rax	# D.7155, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.7155, tmp101
	salq	$3, %rax	#, tmp102
	leaq	(%rcx,%rax), %rdx	#, D.7156
	movl	-8(%rbp), %eax	# Ppromoted, tmp103
	movl	%eax, 12(%rdx)	# tmp103, _27->promoted
	.loc 1 1695 0
	movq	genfor(%rip), %rcx	# genfor, genfor.434
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.435
	movslq	%eax, %rdx	# numb_moves.435, D.7155
	movq	%rdx, %rax	# D.7155, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# D.7155, tmp104
	salq	$3, %rax	#, tmp105
	addq	%rcx, %rax	# genfor.434, D.7156
	movl	$0, 20(%rax)	#, _33->ep
	.loc 1 1696 0
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.436
	addl	$1, %eax	#, numb_moves.437
	movl	%eax, numb_moves(%rip)	# numb_moves.437, numb_moves
	.loc 1 1698 0
	nop
	.loc 1 1699 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add_move, .-add_move
	.globl	add_capture
	.type	add_capture, @function
add_capture:
.LFB9:
	.loc 1 1705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# Ptarget, Ptarget
	movl	%esi, -8(%rbp)	# Pcaptured, Pcaptured
	movl	%edx, -12(%rbp)	# Ppromoted, Ppromoted
	movl	%ecx, -16(%rbp)	# Pep, Pep
	.loc 1 1706 0
	movl	Variant(%rip), %eax	# Variant, Variant.438
	cmpl	$3, %eax	#, Variant.438
	je	.L539	#,
	.loc 1 1706 0 is_stmt 0 discriminator 1
	cmpl	$5, -8(%rbp)	#, Pcaptured
	je	.L540	#,
	cmpl	$6, -8(%rbp)	#, Pcaptured
	jne	.L539	#,
.L540:
	.loc 1 1708 0 is_stmt 1
	movl	$1, kingcap(%rip)	#, kingcap
	.loc 1 1709 0
	jmp	.L538	#
.L539:
	.loc 1 1712 0
	cmpl	$13, -8(%rbp)	#, Pcaptured
	je	.L542	#,
	.loc 1 1712 0 is_stmt 0 discriminator 1
	movl	$1, fcaptures(%rip)	#, fcaptures
.L542:
	.loc 1 1714 0 is_stmt 1
	movq	genfor(%rip), %rcx	# genfor, genfor.439
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.440
	movslq	%eax, %rdx	# numb_moves.440, D.7157
	movq	%rdx, %rax	# D.7157, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# D.7157, tmp93
	salq	$3, %rax	#, tmp94
	leaq	(%rcx,%rax), %rdx	#, D.7158
	movl	gfrom(%rip), %eax	# gfrom, gfrom.441
	movl	%eax, (%rdx)	# gfrom.441, _7->from
	.loc 1 1715 0
	movq	genfor(%rip), %rcx	# genfor, genfor.442
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.443
	movslq	%eax, %rdx	# numb_moves.443, D.7157
	movq	%rdx, %rax	# D.7157, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# D.7157, tmp95
	salq	$3, %rax	#, tmp96
	leaq	(%rcx,%rax), %rdx	#, D.7158
	movl	-4(%rbp), %eax	# Ptarget, tmp97
	movl	%eax, 4(%rdx)	# tmp97, _13->target
	.loc 1 1716 0
	movq	genfor(%rip), %rcx	# genfor, genfor.444
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.445
	movslq	%eax, %rdx	# numb_moves.445, D.7157
	movq	%rdx, %rax	# D.7157, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# D.7157, tmp98
	salq	$3, %rax	#, tmp99
	leaq	(%rcx,%rax), %rdx	#, D.7158
	movl	-8(%rbp), %eax	# Pcaptured, tmp100
	movl	%eax, 8(%rdx)	# tmp100, _19->captured
	.loc 1 1717 0
	movq	genfor(%rip), %rcx	# genfor, genfor.446
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.447
	movslq	%eax, %rdx	# numb_moves.447, D.7157
	movq	%rdx, %rax	# D.7157, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.7157, tmp101
	salq	$3, %rax	#, tmp102
	addq	%rcx, %rax	# genfor.446, D.7158
	movl	$0, 16(%rax)	#, _24->castled
	.loc 1 1718 0
	movq	genfor(%rip), %rcx	# genfor, genfor.448
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.449
	movslq	%eax, %rdx	# numb_moves.449, D.7157
	movq	%rdx, %rax	# D.7157, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.7157, tmp103
	salq	$3, %rax	#, tmp104
	leaq	(%rcx,%rax), %rdx	#, D.7158
	movl	-12(%rbp), %eax	# Ppromoted, tmp105
	movl	%eax, 12(%rdx)	# tmp105, _29->promoted
	.loc 1 1719 0
	movq	genfor(%rip), %rcx	# genfor, genfor.450
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.451
	movslq	%eax, %rdx	# numb_moves.451, D.7157
	movq	%rdx, %rax	# D.7157, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# D.7157, tmp106
	salq	$3, %rax	#, tmp107
	leaq	(%rcx,%rax), %rdx	#, D.7158
	movl	-16(%rbp), %eax	# Pep, tmp108
	movl	%eax, 20(%rdx)	# tmp108, _35->ep
	.loc 1 1720 0
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.452
	addl	$1, %eax	#, numb_moves.453
	movl	%eax, numb_moves(%rip)	# numb_moves.453, numb_moves
	.loc 1 1722 0
	nop
.L538:
	.loc 1 1723 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	add_capture, .-add_capture
	.globl	try_drop
	.type	try_drop, @function
try_drop:
.LFB10:
	.loc 1 1726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# ptype, ptype
	.loc 1 1727 0
	movq	genfor(%rip), %rcx	# genfor, genfor.454
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.455
	movslq	%eax, %rdx	# numb_moves.455, D.7159
	movq	%rdx, %rax	# D.7159, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# D.7159, tmp92
	salq	$3, %rax	#, tmp93
	addq	%rcx, %rax	# genfor.454, D.7160
	movl	$0, (%rax)	#, _5->from
	.loc 1 1728 0
	movq	genfor(%rip), %rcx	# genfor, genfor.456
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.457
	movslq	%eax, %rdx	# numb_moves.457, D.7159
	movq	%rdx, %rax	# D.7159, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# D.7159, tmp94
	salq	$3, %rax	#, tmp95
	leaq	(%rcx,%rax), %rdx	#, D.7160
	movl	gfrom(%rip), %eax	# gfrom, gfrom.458
	movl	%eax, 4(%rdx)	# gfrom.458, _10->target
	.loc 1 1729 0
	movq	genfor(%rip), %rcx	# genfor, genfor.459
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.460
	movslq	%eax, %rdx	# numb_moves.460, D.7159
	movq	%rdx, %rax	# D.7159, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# D.7159, tmp96
	salq	$3, %rax	#, tmp97
	addq	%rcx, %rax	# genfor.459, D.7160
	movl	$13, 8(%rax)	#, _16->captured
	.loc 1 1730 0
	movq	genfor(%rip), %rcx	# genfor, genfor.461
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.462
	movslq	%eax, %rdx	# numb_moves.462, D.7159
	movq	%rdx, %rax	# D.7159, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# D.7159, tmp98
	salq	$3, %rax	#, tmp99
	addq	%rcx, %rax	# genfor.461, D.7160
	movl	$0, 16(%rax)	#, _21->castled
	.loc 1 1731 0
	movq	genfor(%rip), %rcx	# genfor, genfor.463
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.464
	movslq	%eax, %rdx	# numb_moves.464, D.7159
	movq	%rdx, %rax	# D.7159, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# D.7159, tmp100
	salq	$3, %rax	#, tmp101
	leaq	(%rcx,%rax), %rdx	#, D.7160
	movl	-4(%rbp), %eax	# ptype, tmp102
	movl	%eax, 12(%rdx)	# tmp102, _26->promoted
	.loc 1 1732 0
	movq	genfor(%rip), %rcx	# genfor, genfor.465
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.466
	movslq	%eax, %rdx	# numb_moves.466, D.7159
	movq	%rdx, %rax	# D.7159, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.7159, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# genfor.465, D.7160
	movl	$0, 20(%rax)	#, _32->ep
	.loc 1 1733 0
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.467
	addl	$1, %eax	#, numb_moves.468
	movl	%eax, numb_moves(%rip)	# numb_moves.468, numb_moves
	.loc 1 1735 0
	nop
	.loc 1 1736 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	try_drop, .-try_drop
	.globl	push_king_castle
	.type	push_king_castle, @function
push_king_castle:
.LFB11:
	.loc 1 1739 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# Ptarget, Ptarget
	movl	%esi, -8(%rbp)	# Pcastle_type, Pcastle_type
	.loc 1 1740 0
	movq	genfor(%rip), %rcx	# genfor, genfor.469
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.470
	movslq	%eax, %rdx	# numb_moves.470, D.7161
	movq	%rdx, %rax	# D.7161, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# D.7161, tmp92
	salq	$3, %rax	#, tmp93
	leaq	(%rcx,%rax), %rdx	#, D.7162
	movl	gfrom(%rip), %eax	# gfrom, gfrom.471
	movl	%eax, (%rdx)	# gfrom.471, _5->from
	.loc 1 1741 0
	movq	genfor(%rip), %rcx	# genfor, genfor.472
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.473
	movslq	%eax, %rdx	# numb_moves.473, D.7161
	movq	%rdx, %rax	# D.7161, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# D.7161, tmp94
	salq	$3, %rax	#, tmp95
	leaq	(%rcx,%rax), %rdx	#, D.7162
	movl	-4(%rbp), %eax	# Ptarget, tmp96
	movl	%eax, 4(%rdx)	# tmp96, _11->target
	.loc 1 1742 0
	movq	genfor(%rip), %rcx	# genfor, genfor.474
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.475
	movslq	%eax, %rdx	# numb_moves.475, D.7161
	movq	%rdx, %rax	# D.7161, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.7161, tmp97
	salq	$3, %rax	#, tmp98
	addq	%rcx, %rax	# genfor.474, D.7162
	movl	$13, 8(%rax)	#, _17->captured
	.loc 1 1743 0
	movq	genfor(%rip), %rcx	# genfor, genfor.476
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.477
	movslq	%eax, %rdx	# numb_moves.477, D.7161
	movq	%rdx, %rax	# D.7161, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.7161, tmp99
	salq	$3, %rax	#, tmp100
	leaq	(%rcx,%rax), %rdx	#, D.7162
	movl	-8(%rbp), %eax	# Pcastle_type, tmp101
	movl	%eax, 16(%rdx)	# tmp101, _22->castled
	.loc 1 1744 0
	movq	genfor(%rip), %rcx	# genfor, genfor.478
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.479
	movslq	%eax, %rdx	# numb_moves.479, D.7161
	movq	%rdx, %rax	# D.7161, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# D.7161, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# genfor.478, D.7162
	movl	$0, 12(%rax)	#, _28->promoted
	.loc 1 1745 0
	movq	genfor(%rip), %rcx	# genfor, genfor.480
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.481
	movslq	%eax, %rdx	# numb_moves.481, D.7161
	movq	%rdx, %rax	# D.7161, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# D.7161, tmp104
	salq	$3, %rax	#, tmp105
	addq	%rcx, %rax	# genfor.480, D.7162
	movl	$0, 20(%rax)	#, _33->ep
	.loc 1 1746 0
	movl	numb_moves(%rip), %eax	# numb_moves, numb_moves.482
	addl	$1, %eax	#, numb_moves.483
	movl	%eax, numb_moves(%rip)	# numb_moves.483, numb_moves
	.loc 1 1748 0
	nop
	.loc 1 1749 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	push_king_castle, .-push_king_castle
	.globl	push_king
	.type	push_king, @function
push_king:
.LFB12:
	.loc 1 1751 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, -4(%rbp)	# target, target
	.loc 1 1756 0
	movl	-4(%rbp), %eax	# target, tmp70
	cltq
	movl	board(,%rax,4), %eax	# board, D.7163
	testl	%eax, %eax	# D.7163
	jne	.L548	#,
	.loc 1 1757 0
	jmp	.L547	#
.L548:
	.loc 1 1760 0
	movl	-4(%rbp), %eax	# target, tmp72
	cltq
	movl	board(,%rax,4), %eax	# board, D.7163
	cmpl	$13, %eax	#, D.7163
	jne	.L550	#,
	.loc 1 1760 0 is_stmt 0 discriminator 1
	movl	captures(%rip), %eax	# captures, captures.484
	testl	%eax, %eax	# captures.484
	je	.L550	#,
	.loc 1 1761 0 is_stmt 1
	jmp	.L547	#
.L550:
	.loc 1 1764 0
	movl	-4(%rbp), %eax	# target, tmp74
	cltq
	movl	board(,%rax,4), %eax	# board, D.7163
	cmpl	$13, %eax	#, D.7163
	jne	.L551	#,
	.loc 1 1765 0
	movl	-4(%rbp), %eax	# target, tmp75
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp75,
	call	add_move	#
	.loc 1 1766 0
	jmp	.L547	#
.L551:
	.loc 1 1770 0
	movl	-4(%rbp), %eax	# target, tmp77
	cltq
	movl	board(,%rax,4), %edx	# board, D.7163
	movl	gfrom(%rip), %eax	# gfrom, gfrom.485
	cltq
	movl	board(,%rax,4), %eax	# board, D.7163
	xorl	%edx, %eax	# D.7163, D.7163
	andl	$1, %eax	#, D.7163
	testl	%eax, %eax	# D.7163
	je	.L552	#,
	.loc 1 1771 0
	movl	-4(%rbp), %eax	# target, tmp80
	cltq
	movl	board(,%rax,4), %esi	# board, D.7163
	movl	-4(%rbp), %eax	# target, tmp81
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp81,
	call	add_capture	#
	.loc 1 1772 0
	jmp	.L547	#
.L552:
	.loc 1 1776 0
	nop
.L547:
	.loc 1 1777 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	push_king, .-push_king
	.globl	push_knighT
	.type	push_knighT, @function
push_knighT:
.LFB13:
	.loc 1 1780 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, -4(%rbp)	# target, target
	.loc 1 1785 0
	movl	-4(%rbp), %eax	# target, tmp69
	cltq
	movl	board(,%rax,4), %eax	# board, D.7164
	cmpl	$13, %eax	#, D.7164
	jne	.L554	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movl	captures(%rip), %eax	# captures, captures.486
	testl	%eax, %eax	# captures.486
	je	.L554	#,
	.loc 1 1786 0 is_stmt 1
	jmp	.L553	#
.L554:
	.loc 1 1789 0
	movl	-4(%rbp), %eax	# target, tmp71
	cltq
	movl	board(,%rax,4), %eax	# board, D.7164
	cmpl	$13, %eax	#, D.7164
	jne	.L556	#,
	.loc 1 1790 0
	movl	-4(%rbp), %eax	# target, tmp72
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp72,
	call	add_move	#
	.loc 1 1791 0
	jmp	.L553	#
.L556:
	.loc 1 1795 0
	movl	-4(%rbp), %eax	# target, tmp74
	cltq
	movl	board(,%rax,4), %edx	# board, D.7164
	movl	gfrom(%rip), %eax	# gfrom, gfrom.487
	cltq
	movl	board(,%rax,4), %eax	# board, D.7164
	xorl	%edx, %eax	# D.7164, D.7164
	andl	$1, %eax	#, D.7164
	testl	%eax, %eax	# D.7164
	je	.L557	#,
	.loc 1 1796 0
	movl	-4(%rbp), %eax	# target, tmp77
	cltq
	movl	board(,%rax,4), %esi	# board, D.7164
	movl	-4(%rbp), %eax	# target, tmp78
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp78,
	call	add_capture	#
	.loc 1 1797 0
	jmp	.L553	#
.L557:
	.loc 1 1801 0
	nop
.L553:
	.loc 1 1802 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	push_knighT, .-push_knighT
	.globl	push_pawn
	.type	push_pawn, @function
push_pawn:
.LFB14:
	.loc 1 1805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	movl	%esi, -24(%rbp)	# is_ep, is_ep
	.loc 1 1812 0
	cmpl	$0, -24(%rbp)	#, is_ep
	je	.L559	#,
	.loc 1 1813 0
	movl	gfrom(%rip), %eax	# gfrom, gfrom.488
	cltq
	movl	board(,%rax,4), %eax	# board, D.7165
	cmpl	$1, %eax	#, D.7165
	jne	.L560	#,
	.loc 1 1814 0
	movl	-20(%rbp), %eax	# target, tmp72
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp72,
	call	add_capture	#
	.loc 1 1815 0
	jmp	.L558	#
.L560:
	.loc 1 1818 0
	movl	-20(%rbp), %eax	# target, tmp73
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp73,
	call	add_capture	#
	.loc 1 1819 0
	jmp	.L558	#
.L559:
	.loc 1 1825 0
	movl	-20(%rbp), %eax	# target, tmp75
	cltq
	movl	board(,%rax,4), %eax	# board, tmp76
	movl	%eax, -4(%rbp)	# tmp76, captured_piece
	.loc 1 1828 0
	movl	gfrom(%rip), %eax	# gfrom, gfrom.489
	cltq
	movl	board(,%rax,4), %eax	# board, D.7165
	cmpl	$1, %eax	#, D.7165
	jne	.L562	#,
	.loc 1 1828 0 is_stmt 0 discriminator 1
	movl	gfrom(%rip), %eax	# gfrom, gfrom.490
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7165
	cmpl	$7, %eax	#, D.7165
	jne	.L562	#,
	.loc 1 1829 0 is_stmt 1
	movl	-4(%rbp), %esi	# captured_piece, tmp79
	movl	-20(%rbp), %eax	# target, tmp80
	movl	$0, %ecx	#,
	movl	$9, %edx	#,
	movl	%eax, %edi	# tmp80,
	call	add_capture	#
	.loc 1 1830 0
	movl	-4(%rbp), %esi	# captured_piece, tmp81
	movl	-20(%rbp), %eax	# target, tmp82
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movl	%eax, %edi	# tmp82,
	call	add_capture	#
	.loc 1 1831 0
	movl	-4(%rbp), %esi	# captured_piece, tmp83
	movl	-20(%rbp), %eax	# target, tmp84
	movl	$0, %ecx	#,
	movl	$11, %edx	#,
	movl	%eax, %edi	# tmp84,
	call	add_capture	#
	.loc 1 1832 0
	movl	-4(%rbp), %esi	# captured_piece, tmp85
	movl	-20(%rbp), %eax	# target, tmp86
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	%eax, %edi	# tmp86,
	call	add_capture	#
	.loc 1 1833 0
	movl	Variant(%rip), %eax	# Variant, Variant.491
	cmpl	$3, %eax	#, Variant.491
	jne	.L563	#,
	.loc 1 1834 0
	movl	-4(%rbp), %esi	# captured_piece, tmp87
	movl	-20(%rbp), %eax	# target, tmp88
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	%eax, %edi	# tmp88,
	call	add_capture	#
	.loc 1 1836 0
	jmp	.L558	#
.L563:
	jmp	.L558	#
.L562:
	.loc 1 1840 0
	movl	gfrom(%rip), %eax	# gfrom, gfrom.492
	cltq
	movl	board(,%rax,4), %eax	# board, D.7165
	cmpl	$2, %eax	#, D.7165
	jne	.L564	#,
	.loc 1 1840 0 is_stmt 0 discriminator 1
	movl	gfrom(%rip), %eax	# gfrom, gfrom.493
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.7165
	cmpl	$2, %eax	#, D.7165
	jne	.L564	#,
	.loc 1 1841 0 is_stmt 1
	movl	-4(%rbp), %esi	# captured_piece, tmp91
	movl	-20(%rbp), %eax	# target, tmp92
	movl	$0, %ecx	#,
	movl	$10, %edx	#,
	movl	%eax, %edi	# tmp92,
	call	add_capture	#
	.loc 1 1842 0
	movl	-4(%rbp), %esi	# captured_piece, tmp93
	movl	-20(%rbp), %eax	# target, tmp94
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movl	%eax, %edi	# tmp94,
	call	add_capture	#
	.loc 1 1843 0
	movl	-4(%rbp), %esi	# captured_piece, tmp95
	movl	-20(%rbp), %eax	# target, tmp96
	movl	$0, %ecx	#,
	movl	$12, %edx	#,
	movl	%eax, %edi	# tmp96,
	call	add_capture	#
	.loc 1 1844 0
	movl	-4(%rbp), %esi	# captured_piece, tmp97
	movl	-20(%rbp), %eax	# target, tmp98
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# tmp98,
	call	add_capture	#
	.loc 1 1845 0
	movl	Variant(%rip), %eax	# Variant, Variant.494
	cmpl	$3, %eax	#, Variant.494
	jne	.L565	#,
	.loc 1 1846 0
	movl	-4(%rbp), %esi	# captured_piece, tmp99
	movl	-20(%rbp), %eax	# target, tmp100
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	%eax, %edi	# tmp100,
	call	add_capture	#
	.loc 1 1848 0
	jmp	.L558	#
.L565:
	jmp	.L558	#
.L564:
	.loc 1 1853 0
	movl	-4(%rbp), %esi	# captured_piece, tmp101
	movl	-20(%rbp), %eax	# target, tmp102
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp102,
	call	add_capture	#
	.loc 1 1854 0
	nop
.L558:
	.loc 1 1856 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	push_pawn, .-push_pawn
	.globl	push_pawn_simple
	.type	push_pawn_simple, @function
push_pawn_simple:
.LFB15:
	.loc 1 1858 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, -4(%rbp)	# target, target
	.loc 1 1862 0
	movl	-4(%rbp), %eax	# target, tmp59
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp59,
	call	add_move	#
	.loc 1 1863 0
	nop
	.loc 1 1864 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	push_pawn_simple, .-push_pawn_simple
	.globl	push_slidE
	.type	push_slidE, @function
push_slidE:
.LFB16:
	.loc 1 1866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	.loc 1 1875 0
	movl	gfrom(%rip), %eax	# gfrom, gfrom.495
	movl	-20(%rbp), %edx	# target, tmp71
	subl	%eax, %edx	# gfrom.495, tmp70
	movl	%edx, %eax	# tmp70, tmp70
	movl	%eax, -8(%rbp)	# tmp70, offset
	.loc 1 1876 0
	movl	gfrom(%rip), %eax	# gfrom, gfrom.496
	cltq
	movl	board(,%rax,4), %eax	# board, D.7166
	andl	$1, %eax	#, tmp73
	movl	%eax, -4(%rbp)	# tmp73, mycolor
.L574:
	.loc 1 1881 0
	movl	-20(%rbp), %eax	# target, tmp75
	cltq
	movl	board(,%rax,4), %eax	# board, D.7166
	cmpl	$13, %eax	#, D.7166
	jne	.L569	#,
	.loc 1 1882 0
	movl	captures(%rip), %eax	# captures, captures.497
	testl	%eax, %eax	# captures.497
	jne	.L570	#,
	.loc 1 1883 0
	movl	-20(%rbp), %eax	# target, tmp76
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp76,
	call	add_move	#
.L570:
	.loc 1 1885 0
	movl	-8(%rbp), %eax	# offset, tmp77
	addl	%eax, -20(%rbp)	# tmp77, target
	.loc 1 1897 0
	movl	-20(%rbp), %eax	# target, tmp84
	cltq
	movl	board(,%rax,4), %eax	# board, D.7166
	testl	%eax, %eax	# D.7166
	jne	.L574	#,
	jmp	.L573	#
.L569:
	.loc 1 1889 0
	movl	-20(%rbp), %eax	# target, tmp79
	cltq
	movl	board(,%rax,4), %eax	# board, D.7166
	andl	$1, %eax	#, D.7166
	cmpl	-4(%rbp), %eax	# mycolor, D.7166
	je	.L572	#,
	.loc 1 1890 0
	movl	-20(%rbp), %eax	# target, tmp81
	cltq
	movl	board(,%rax,4), %esi	# board, D.7166
	movl	-20(%rbp), %eax	# target, tmp82
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp82,
	call	add_capture	#
	.loc 1 1891 0
	jmp	.L573	#
.L572:
	.loc 1 1896 0
	nop
.L573:
	.loc 1 1900 0
	nop
	.loc 1 1902 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	push_slidE, .-push_slidE
	.globl	unmake
	.type	unmake, @function
unmake:
.LFB17:
	.loc 1 1904 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# moves, moves
	movl	%esi, -60(%rbp)	# i, i
	.loc 1 1911 0
	movl	-60(%rbp), %eax	# i, tmp345
	movslq	%eax, %rdx	# tmp345, D.7167
	movq	%rdx, %rax	# D.7167, tmp346
	addq	%rax, %rax	# tmp346
	addq	%rdx, %rax	# D.7167, tmp346
	salq	$3, %rax	#, tmp347
	movq	%rax, %rdx	# tmp346, D.7167
	movq	-56(%rbp), %rax	# moves, tmp348
	addq	%rdx, %rax	# D.7167, D.7168
	movl	20(%rax), %eax	# _5->ep, tmp349
	movl	%eax, -40(%rbp)	# tmp349, ep
	.loc 1 1912 0
	movl	-60(%rbp), %eax	# i, tmp350
	movslq	%eax, %rdx	# tmp350, D.7167
	movq	%rdx, %rax	# D.7167, tmp351
	addq	%rax, %rax	# tmp351
	addq	%rdx, %rax	# D.7167, tmp351
	salq	$3, %rax	#, tmp352
	movq	%rax, %rdx	# tmp351, D.7167
	movq	-56(%rbp), %rax	# moves, tmp353
	addq	%rdx, %rax	# D.7167, D.7168
	movl	(%rax), %eax	# _9->from, tmp354
	movl	%eax, -36(%rbp)	# tmp354, from
	.loc 1 1913 0
	movl	-60(%rbp), %eax	# i, tmp355
	movslq	%eax, %rdx	# tmp355, D.7167
	movq	%rdx, %rax	# D.7167, tmp356
	addq	%rax, %rax	# tmp356
	addq	%rdx, %rax	# D.7167, tmp356
	salq	$3, %rax	#, tmp357
	movq	%rax, %rdx	# tmp356, D.7167
	movq	-56(%rbp), %rax	# moves, tmp358
	addq	%rdx, %rax	# D.7167, D.7168
	movl	4(%rax), %eax	# _13->target, tmp359
	movl	%eax, -32(%rbp)	# tmp359, target
	.loc 1 1914 0
	movl	-60(%rbp), %eax	# i, tmp360
	movslq	%eax, %rdx	# tmp360, D.7167
	movq	%rdx, %rax	# D.7167, tmp361
	addq	%rax, %rax	# tmp361
	addq	%rdx, %rax	# D.7167, tmp361
	salq	$3, %rax	#, tmp362
	movq	%rax, %rdx	# tmp361, D.7167
	movq	-56(%rbp), %rax	# moves, tmp363
	addq	%rdx, %rax	# D.7167, D.7168
	movl	8(%rax), %eax	# _17->captured, tmp364
	movl	%eax, -28(%rbp)	# tmp364, captured
	.loc 1 1915 0
	movl	-60(%rbp), %eax	# i, tmp365
	movslq	%eax, %rdx	# tmp365, D.7167
	movq	%rdx, %rax	# D.7167, tmp366
	addq	%rax, %rax	# tmp366
	addq	%rdx, %rax	# D.7167, tmp366
	salq	$3, %rax	#, tmp367
	movq	%rax, %rdx	# tmp366, D.7167
	movq	-56(%rbp), %rax	# moves, tmp368
	addq	%rdx, %rax	# D.7167, D.7168
	movl	12(%rax), %eax	# _21->promoted, tmp369
	movl	%eax, -24(%rbp)	# tmp369, promoted
	.loc 1 1916 0
	movl	-60(%rbp), %eax	# i, tmp370
	movslq	%eax, %rdx	# tmp370, D.7167
	movq	%rdx, %rax	# D.7167, tmp371
	addq	%rax, %rax	# tmp371
	addq	%rdx, %rax	# D.7167, tmp371
	salq	$3, %rax	#, tmp372
	movq	%rax, %rdx	# tmp371, D.7167
	movq	-56(%rbp), %rax	# moves, tmp373
	addq	%rdx, %rax	# D.7167, D.7168
	movl	16(%rax), %eax	# _25->castled, tmp374
	movl	%eax, -20(%rbp)	# tmp374, castled
	.loc 1 1922 0
	movl	ply(%rip), %eax	# ply, ply.498
	subl	$1, %eax	#, ply.499
	movl	%eax, ply(%rip)	# ply.499, ply
	.loc 1 1924 0
	movl	ply(%rip), %eax	# ply, ply.500
	cltq
	salq	$4, %rax	#, tmp376
	addq	$path_x+8, %rax	#, tmp377
	movl	(%rax), %eax	# path_x[ply.500_29].epsq, ep_square.501
	movl	%eax, ep_square(%rip)	# ep_square.501, ep_square
	.loc 1 1927 0
	movl	ply(%rip), %eax	# ply, ply.502
	cltq
	salq	$4, %rax	#, tmp379
	addq	$path_x+12, %rax	#, tmp380
	movl	(%rax), %eax	# path_x[ply.502_31].fifty, fifty.503
	movl	%eax, fifty(%rip)	# fifty.503, fifty
	.loc 1 1929 0
	cmpl	$0, -36(%rbp)	#, from
	jne	.L577	#,
	.loc 1 1938 0
	movl	-32(%rbp), %eax	# target, tmp382
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	cltq
	movl	$0, pieces(,%rax,4)	#, pieces
	.loc 1 1939 0
	movl	-32(%rbp), %eax	# target, tmp385
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	movl	ply(%rip), %edx	# ply, ply.504
	movslq	%edx, %rdx	# ply.504, tmp386
	salq	$4, %rdx	#, tmp387
	addq	$path_x+4, %rdx	#, tmp388
	movl	(%rdx), %edx	# path_x[ply.504_35].was_promoted, D.7169
	cltq
	movl	%edx, is_promoted(,%rax,4)	# D.7169, is_promoted
	.loc 1 1942 0
	movl	-32(%rbp), %eax	# target, tmp391
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 1944 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.505
	subl	$1, %eax	#, piece_count.506
	movl	%eax, piece_count(%rip)	# piece_count.506, piece_count
	.loc 1 1948 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.507
	testl	%eax, %eax	# white_to_move.507
	setne	%al	#, D.7170
	movzbl	%al, %edx	# D.7170, D.7169
	movl	-24(%rbp), %eax	# promoted, tmp392
	movl	%edx, %esi	# D.7169,
	movl	%eax, %edi	# tmp392,
	call	DropaddHolding	#
	.loc 1 1950 0
	movl	Material(%rip), %edx	# Material, Material.508
	movl	-24(%rbp), %eax	# promoted, tmp394
	cltq
	movl	material(,%rax,4), %eax	# material, D.7169
	subl	%eax, %edx	# D.7169, Material.509
	movl	%edx, %eax	# Material.509, Material.509
	movl	%eax, Material(%rip)	# Material.509, Material
	.loc 1 1953 0
	movl	-32(%rbp), %eax	# target, tmp396
	cltq
	movl	-28(%rbp), %edx	# captured, tmp397
	movl	%edx, board(,%rax,4)	# tmp397, board
	.loc 1 1955 0
	movl	-32(%rbp), %eax	# target, tmp399
	movslq	%eax, %rcx	# tmp399, tmp398
	movl	-24(%rbp), %eax	# promoted, tmp401
	movslq	%eax, %rdx	# tmp401, tmp400
	movq	%rdx, %rax	# tmp400, tmp402
	salq	$3, %rax	#, tmp402
	addq	%rdx, %rax	# tmp400, tmp402
	salq	$4, %rax	#, tmp403
	addq	%rcx, %rax	# tmp398, tmp404
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.510
	xorl	%edx, %eax	# D.7171, hash.511
	movl	%eax, hash(%rip)	# hash.511, hash
	.loc 1 1957 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.512
	xorl	$1, %eax	#, white_to_move.513
	movl	%eax, white_to_move(%rip)	# white_to_move.513, white_to_move
	.loc 1 1959 0
	jmp	.L576	#
.L577:
	.loc 1 1967 0
	movl	-32(%rbp), %eax	# target, tmp406
	cltq
	movl	squares(,%rax,4), %edx	# squares, D.7169
	movl	-36(%rbp), %eax	# from, tmp408
	cltq
	movl	%edx, squares(,%rax,4)	# D.7169, squares
	.loc 1 1968 0
	movl	ply(%rip), %eax	# ply, ply.514
	cltq
	salq	$4, %rax	#, tmp410
	addq	$path_x, %rax	#, tmp411
	movl	(%rax), %edx	# path_x[ply.514_51].cap_num, D.7169
	movl	-32(%rbp), %eax	# target, tmp413
	cltq
	movl	%edx, squares(,%rax,4)	# D.7169, squares
	.loc 1 1969 0
	movl	-32(%rbp), %eax	# target, tmp415
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	cltq
	movl	-32(%rbp), %edx	# target, tmp417
	movl	%edx, pieces(,%rax,4)	# tmp417, pieces
	.loc 1 1970 0
	movl	-36(%rbp), %eax	# from, tmp419
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	cltq
	movl	-36(%rbp), %edx	# from, tmp421
	movl	%edx, pieces(,%rax,4)	# tmp421, pieces
	.loc 1 1972 0
	movl	-32(%rbp), %eax	# target, tmp423
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	movl	ply(%rip), %edx	# ply, ply.515
	movslq	%edx, %rdx	# ply.515, tmp424
	salq	$4, %rdx	#, tmp425
	addq	$path_x+4, %rdx	#, tmp426
	movl	(%rdx), %edx	# path_x[ply.515_56].was_promoted, D.7169
	cltq
	movl	%edx, is_promoted(,%rax,4)	# D.7169, is_promoted
	.loc 1 1975 0
	cmpl	$0, -40(%rbp)	#, ep
	jne	.L579	#,
	.loc 1 1977 0
	movl	-28(%rbp), %eax	# captured, captured
	cmpl	$13, %eax	#, captured
	je	.L597	#,
	.loc 1 1981 0
	movl	Variant(%rip), %eax	# Variant, Variant.516
	cmpl	$1, %eax	#, Variant.516
	je	.L582	#,
	.loc 1 1981 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.517
	testl	%eax, %eax	# Variant.517
	jne	.L583	#,
.L582:
	.loc 1 1983 0 is_stmt 1
	movl	-32(%rbp), %eax	# target, tmp430
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.7169
	cltq
	movl	is_promoted(,%rax,4), %eax	# is_promoted, D.7169
	testl	%eax, %eax	# D.7169
	je	.L584	#,
	.loc 1 1985 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.518
	testl	%eax, %eax	# white_to_move.518
	setne	%al	#, D.7170
	movzbl	%al, %ebx	# D.7170, D.7169
	movl	-28(%rbp), %eax	# captured, tmp432
	movl	%eax, %edi	# tmp432,
	call	SwitchPromoted	#
	movl	%ebx, %esi	# D.7169,
	movl	%eax, %edi	# D.7169,
	call	removeHolding	#
	jmp	.L583	#
.L584:
	.loc 1 1989 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.519
	testl	%eax, %eax	# white_to_move.519
	setne	%al	#, D.7170
	movzbl	%al, %ebx	# D.7170, D.7169
	movl	-28(%rbp), %eax	# captured, tmp433
	movl	%eax, %edi	# tmp433,
	call	SwitchColor	#
	movl	%ebx, %esi	# D.7169,
	movl	%eax, %edi	# D.7169,
	call	removeHolding	#
.L583:
	.loc 1 1993 0
	movl	-32(%rbp), %eax	# target, tmp435
	movslq	%eax, %rcx	# tmp435, tmp434
	movl	-28(%rbp), %eax	# captured, tmp437
	movslq	%eax, %rdx	# tmp437, tmp436
	movq	%rdx, %rax	# tmp436, tmp438
	salq	$3, %rax	#, tmp438
	addq	%rdx, %rax	# tmp436, tmp438
	salq	$4, %rax	#, tmp439
	addq	%rcx, %rax	# tmp434, tmp440
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.520
	xorl	%edx, %eax	# D.7171, hash.521
	movl	%eax, hash(%rip)	# hash.521, hash
	.loc 1 1995 0
	movl	-28(%rbp), %eax	# captured, tmp442
	cltq
	movl	material(,%rax,4), %edx	# material, D.7169
	movl	Material(%rip), %eax	# Material, Material.522
	addl	%edx, %eax	# D.7169, Material.523
	movl	%eax, Material(%rip)	# Material.523, Material
	.loc 1 1997 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.524
	addl	$1, %eax	#, piece_count.525
	movl	%eax, piece_count(%rip)	# piece_count.525, piece_count
	.loc 1 1998 0
	jmp	.L579	#
.L597:
	.loc 1 1978 0
	nop
.L579:
	.loc 1 2003 0
	movl	-32(%rbp), %eax	# target, tmp444
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	cmpl	$1, %eax	#, D.7169
	jne	.L585	#,
	.loc 1 2005 0
	cmpl	$0, -40(%rbp)	#, ep
	je	.L586	#,
	.loc 1 2007 0
	movl	-32(%rbp), %eax	# target, tmp446
	cltq
	addq	$144, %rax	#, tmp447
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.526
	xorl	%edx, %eax	# D.7171, hash.527
	movl	%eax, hash(%rip)	# hash.527, hash
	.loc 1 2008 0
	movl	-36(%rbp), %eax	# from, tmp449
	cltq
	addq	$144, %rax	#, tmp450
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.528
	xorl	%edx, %eax	# D.7171, hash.529
	movl	%eax, hash(%rip)	# hash.529, hash
	.loc 1 2009 0
	movl	-32(%rbp), %eax	# target, tmp451
	subl	$12, %eax	#, D.7169
	cltq
	addq	$288, %rax	#, tmp453
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.530
	xorl	%edx, %eax	# D.7171, hash.531
	movl	%eax, hash(%rip)	# hash.531, hash
	.loc 1 2011 0
	movl	-32(%rbp), %eax	# target, tmp455
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 2012 0
	movl	-36(%rbp), %eax	# from, tmp457
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 2014 0
	movl	material+8(%rip), %edx	# material, D.7169
	movl	Material(%rip), %eax	# Material, Material.532
	addl	%edx, %eax	# D.7169, Material.533
	movl	%eax, Material(%rip)	# Material.533, Material
	.loc 1 2016 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	removeHolding	#
	.loc 1 2017 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.534
	addl	$1, %eax	#, piece_count.535
	movl	%eax, piece_count(%rip)	# piece_count.535, piece_count
	.loc 1 2019 0
	movl	-32(%rbp), %eax	# target, tmp458
	subl	$12, %eax	#, D.7169
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 2020 0
	movl	-32(%rbp), %eax	# target, tmp461
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp463
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2021 0
	movl	-36(%rbp), %eax	# from, tmp465
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp467
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2022 0
	movl	-32(%rbp), %eax	# target, tmp468
	subl	$12, %eax	#, D.7169
	movslq	%eax, %rdx	# D.7169, tmp469
	movl	moved(,%rdx,4), %edx	# moved, D.7169
	subl	$1, %edx	#, D.7169
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2023 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.536
	xorl	$1, %eax	#, white_to_move.537
	movl	%eax, white_to_move(%rip)	# white_to_move.537, white_to_move
	.loc 1 2024 0
	movl	-32(%rbp), %eax	# target, tmp471
	leal	-12(%rax), %ecx	#, D.7169
	movl	ply(%rip), %eax	# ply, ply.538
	cltq
	salq	$4, %rax	#, tmp473
	addq	$path_x, %rax	#, tmp474
	movl	(%rax), %edx	# path_x[ply.538_105].cap_num, D.7169
	movslq	%ecx, %rax	# D.7169, tmp475
	movl	%edx, squares(,%rax,4)	# D.7169, squares
	.loc 1 2025 0
	movl	ply(%rip), %eax	# ply, ply.539
	cltq
	salq	$4, %rax	#, tmp477
	addq	$path_x, %rax	#, tmp478
	movl	(%rax), %eax	# path_x[ply.539_107].cap_num, D.7169
	movl	-32(%rbp), %edx	# target, tmp479
	subl	$12, %edx	#, D.7169
	cltq
	movl	%edx, pieces(,%rax,4)	# D.7169, pieces
	.loc 1 2026 0
	movl	-32(%rbp), %eax	# target, tmp482
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 2027 0
	jmp	.L576	#
.L586:
	.loc 1 2031 0
	movl	-36(%rbp), %eax	# from, tmp484
	cltq
	addq	$144, %rax	#, tmp485
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.540
	xorl	%edx, %eax	# D.7171, hash.541
	movl	%eax, hash(%rip)	# hash.541, hash
	.loc 1 2032 0
	movl	-32(%rbp), %eax	# target, tmp487
	cltq
	addq	$144, %rax	#, tmp488
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.542
	xorl	%edx, %eax	# D.7171, hash.543
	movl	%eax, hash(%rip)	# hash.543, hash
	.loc 1 2034 0
	movl	-32(%rbp), %eax	# target, tmp490
	cltq
	movl	-28(%rbp), %edx	# captured, tmp491
	movl	%edx, board(,%rax,4)	# tmp491, board
	.loc 1 2035 0
	movl	-36(%rbp), %eax	# from, tmp493
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 2036 0
	movl	-32(%rbp), %eax	# target, tmp495
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp497
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2037 0
	movl	-36(%rbp), %eax	# from, tmp499
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp501
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2038 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.544
	xorl	$1, %eax	#, white_to_move.545
	movl	%eax, white_to_move(%rip)	# white_to_move.545, white_to_move
	.loc 1 2039 0
	jmp	.L576	#
.L585:
	.loc 1 2044 0
	movl	-32(%rbp), %eax	# target, tmp503
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	cmpl	$2, %eax	#, D.7169
	jne	.L587	#,
	.loc 1 2046 0
	cmpl	$0, -40(%rbp)	#, ep
	je	.L588	#,
	.loc 1 2048 0
	movl	-32(%rbp), %eax	# target, tmp505
	cltq
	addq	$288, %rax	#, tmp506
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.546
	xorl	%edx, %eax	# D.7171, hash.547
	movl	%eax, hash(%rip)	# hash.547, hash
	.loc 1 2049 0
	movl	-36(%rbp), %eax	# from, tmp508
	cltq
	addq	$288, %rax	#, tmp509
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.548
	xorl	%edx, %eax	# D.7171, hash.549
	movl	%eax, hash(%rip)	# hash.549, hash
	.loc 1 2050 0
	movl	-32(%rbp), %eax	# target, tmp510
	addl	$12, %eax	#, D.7169
	cltq
	addq	$144, %rax	#, tmp512
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.550
	xorl	%edx, %eax	# D.7171, hash.551
	movl	%eax, hash(%rip)	# hash.551, hash
	.loc 1 2052 0
	movl	-32(%rbp), %eax	# target, tmp514
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 2053 0
	movl	-36(%rbp), %eax	# from, tmp516
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 2055 0
	movl	material+4(%rip), %edx	# material, D.7169
	movl	Material(%rip), %eax	# Material, Material.552
	addl	%edx, %eax	# D.7169, Material.553
	movl	%eax, Material(%rip)	# Material.553, Material
	.loc 1 2057 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	removeHolding	#
	.loc 1 2058 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.554
	addl	$1, %eax	#, piece_count.555
	movl	%eax, piece_count(%rip)	# piece_count.555, piece_count
	.loc 1 2060 0
	movl	-32(%rbp), %eax	# target, tmp517
	addl	$12, %eax	#, D.7169
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 2061 0
	movl	-32(%rbp), %eax	# target, tmp520
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp522
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2062 0
	movl	-36(%rbp), %eax	# from, tmp524
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp526
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2063 0
	movl	-32(%rbp), %eax	# target, tmp527
	addl	$12, %eax	#, D.7169
	movslq	%eax, %rdx	# D.7169, tmp528
	movl	moved(,%rdx,4), %edx	# moved, D.7169
	subl	$1, %edx	#, D.7169
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2064 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.556
	xorl	$1, %eax	#, white_to_move.557
	movl	%eax, white_to_move(%rip)	# white_to_move.557, white_to_move
	.loc 1 2065 0
	movl	-32(%rbp), %eax	# target, tmp530
	leal	12(%rax), %ecx	#, D.7169
	movl	ply(%rip), %eax	# ply, ply.558
	cltq
	salq	$4, %rax	#, tmp532
	addq	$path_x, %rax	#, tmp533
	movl	(%rax), %edx	# path_x[ply.558_149].cap_num, D.7169
	movslq	%ecx, %rax	# D.7169, tmp534
	movl	%edx, squares(,%rax,4)	# D.7169, squares
	.loc 1 2066 0
	movl	ply(%rip), %eax	# ply, ply.559
	cltq
	salq	$4, %rax	#, tmp536
	addq	$path_x, %rax	#, tmp537
	movl	(%rax), %eax	# path_x[ply.559_151].cap_num, D.7169
	movl	-32(%rbp), %edx	# target, tmp538
	addl	$12, %edx	#, D.7169
	cltq
	movl	%edx, pieces(,%rax,4)	# D.7169, pieces
	.loc 1 2067 0
	movl	-32(%rbp), %eax	# target, tmp541
	cltq
	movl	$0, squares(,%rax,4)	#, squares
	.loc 1 2068 0
	jmp	.L576	#
.L588:
	.loc 1 2071 0
	movl	-36(%rbp), %eax	# from, tmp543
	cltq
	addq	$288, %rax	#, tmp544
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.560
	xorl	%edx, %eax	# D.7171, hash.561
	movl	%eax, hash(%rip)	# hash.561, hash
	.loc 1 2072 0
	movl	-32(%rbp), %eax	# target, tmp546
	cltq
	addq	$288, %rax	#, tmp547
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.562
	xorl	%edx, %eax	# D.7171, hash.563
	movl	%eax, hash(%rip)	# hash.563, hash
	.loc 1 2075 0
	movl	-32(%rbp), %eax	# target, tmp549
	cltq
	movl	-28(%rbp), %edx	# captured, tmp550
	movl	%edx, board(,%rax,4)	# tmp550, board
	.loc 1 2076 0
	movl	-36(%rbp), %eax	# from, tmp552
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 2077 0
	movl	-32(%rbp), %eax	# target, tmp554
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp556
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2078 0
	movl	-36(%rbp), %eax	# from, tmp558
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp560
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2079 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.564
	xorl	$1, %eax	#, white_to_move.565
	movl	%eax, white_to_move(%rip)	# white_to_move.565, white_to_move
	.loc 1 2080 0
	jmp	.L576	#
.L587:
	.loc 1 2085 0
	movl	-32(%rbp), %eax	# target, tmp562
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	cmpl	$5, %eax	#, D.7169
	je	.L589	#,
	.loc 1 2085 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# target, tmp564
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	cmpl	$6, %eax	#, D.7169
	je	.L589	#,
	cmpl	$0, -24(%rbp)	#, promoted
	jne	.L589	#,
	.loc 1 2086 0 is_stmt 1
	movl	-32(%rbp), %eax	# target, tmp566
	cltq
	movl	board(,%rax,4), %edx	# board, D.7169
	movl	-36(%rbp), %eax	# from, tmp568
	cltq
	movl	%edx, board(,%rax,4)	# D.7169, board
	.loc 1 2087 0
	movl	-32(%rbp), %eax	# target, tmp570
	cltq
	movl	-28(%rbp), %edx	# captured, tmp571
	movl	%edx, board(,%rax,4)	# tmp571, board
	.loc 1 2088 0
	movl	-32(%rbp), %eax	# target, tmp573
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp575
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2089 0
	movl	-36(%rbp), %eax	# from, tmp577
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp579
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2090 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.566
	xorl	$1, %eax	#, white_to_move.567
	movl	%eax, white_to_move(%rip)	# white_to_move.567, white_to_move
	.loc 1 2092 0
	movl	-36(%rbp), %eax	# from, tmp581
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	movl	-32(%rbp), %edx	# target, tmp583
	movslq	%edx, %rcx	# tmp583, tmp582
	movslq	%eax, %rdx	# D.7169, tmp584
	movq	%rdx, %rax	# tmp584, tmp585
	salq	$3, %rax	#, tmp585
	addq	%rdx, %rax	# tmp584, tmp585
	salq	$4, %rax	#, tmp586
	addq	%rcx, %rax	# tmp582, tmp587
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.568
	xorl	%edx, %eax	# D.7171, hash.569
	movl	%eax, hash(%rip)	# hash.569, hash
	.loc 1 2093 0
	movl	-36(%rbp), %eax	# from, tmp589
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	movl	-36(%rbp), %edx	# from, tmp591
	movslq	%edx, %rcx	# tmp591, tmp590
	movslq	%eax, %rdx	# D.7169, tmp592
	movq	%rdx, %rax	# tmp592, tmp593
	salq	$3, %rax	#, tmp593
	addq	%rdx, %rax	# tmp592, tmp593
	salq	$4, %rax	#, tmp594
	addq	%rcx, %rax	# tmp590, tmp595
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.570
	xorl	%edx, %eax	# D.7171, hash.571
	movl	%eax, hash(%rip)	# hash.571, hash
	.loc 1 2095 0
	jmp	.L576	#
.L589:
	.loc 1 2099 0
	cmpl	$0, -24(%rbp)	#, promoted
	je	.L590	#,
	.loc 1 2101 0
	movl	-32(%rbp), %eax	# target, tmp597
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	andl	$1, %eax	#, D.7172
	testl	%eax, %eax	# D.7172
	je	.L591	#,
	.loc 1 2102 0
	movl	-32(%rbp), %eax	# target, tmp599
	cltq
	movl	-28(%rbp), %edx	# captured, tmp600
	movl	%edx, board(,%rax,4)	# tmp600, board
	.loc 1 2103 0
	movl	-36(%rbp), %eax	# from, tmp602
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 2104 0
	movl	-32(%rbp), %eax	# target, tmp604
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp606
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2105 0
	movl	-36(%rbp), %eax	# from, tmp608
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp610
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2106 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.572
	xorl	$1, %eax	#, white_to_move.573
	movl	%eax, white_to_move(%rip)	# white_to_move.573, white_to_move
	.loc 1 2108 0
	movl	-36(%rbp), %eax	# from, tmp612
	cltq
	addq	$144, %rax	#, tmp613
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.574
	xorl	%edx, %eax	# D.7171, hash.575
	movl	%eax, hash(%rip)	# hash.575, hash
	.loc 1 2109 0
	movl	-32(%rbp), %eax	# target, tmp615
	movslq	%eax, %rcx	# tmp615, tmp614
	movl	-24(%rbp), %eax	# promoted, tmp617
	movslq	%eax, %rdx	# tmp617, tmp616
	movq	%rdx, %rax	# tmp616, tmp618
	salq	$3, %rax	#, tmp618
	addq	%rdx, %rax	# tmp616, tmp618
	salq	$4, %rax	#, tmp619
	addq	%rcx, %rax	# tmp614, tmp620
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.576
	xorl	%edx, %eax	# D.7171, hash.577
	movl	%eax, hash(%rip)	# hash.577, hash
	.loc 1 2111 0
	movl	Material(%rip), %edx	# Material, Material.578
	movl	-24(%rbp), %eax	# promoted, tmp622
	cltq
	movl	material(,%rax,4), %eax	# material, D.7169
	subl	%eax, %edx	# D.7169, Material.579
	movl	%edx, %eax	# Material.579, Material.579
	movl	%eax, Material(%rip)	# Material.579, Material
	.loc 1 2112 0
	movl	material+4(%rip), %edx	# material, D.7169
	movl	Material(%rip), %eax	# Material, Material.580
	addl	%edx, %eax	# D.7169, Material.581
	movl	%eax, Material(%rip)	# Material.581, Material
	.loc 1 2114 0
	jmp	.L576	#
.L591:
	.loc 1 2118 0
	movl	-32(%rbp), %eax	# target, tmp624
	cltq
	movl	-28(%rbp), %edx	# captured, tmp625
	movl	%edx, board(,%rax,4)	# tmp625, board
	.loc 1 2119 0
	movl	-36(%rbp), %eax	# from, tmp627
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 2120 0
	movl	-32(%rbp), %eax	# target, tmp629
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp631
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2121 0
	movl	-36(%rbp), %eax	# from, tmp633
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp635
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2122 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.582
	xorl	$1, %eax	#, white_to_move.583
	movl	%eax, white_to_move(%rip)	# white_to_move.583, white_to_move
	.loc 1 2124 0
	movl	-36(%rbp), %eax	# from, tmp637
	cltq
	addq	$288, %rax	#, tmp638
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.584
	xorl	%edx, %eax	# D.7171, hash.585
	movl	%eax, hash(%rip)	# hash.585, hash
	.loc 1 2125 0
	movl	-32(%rbp), %eax	# target, tmp640
	movslq	%eax, %rcx	# tmp640, tmp639
	movl	-24(%rbp), %eax	# promoted, tmp642
	movslq	%eax, %rdx	# tmp642, tmp641
	movq	%rdx, %rax	# tmp641, tmp643
	salq	$3, %rax	#, tmp643
	addq	%rdx, %rax	# tmp641, tmp643
	salq	$4, %rax	#, tmp644
	addq	%rcx, %rax	# tmp639, tmp645
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.586
	xorl	%edx, %eax	# D.7171, hash.587
	movl	%eax, hash(%rip)	# hash.587, hash
	.loc 1 2127 0
	movl	Material(%rip), %edx	# Material, Material.588
	movl	-24(%rbp), %eax	# promoted, tmp647
	cltq
	movl	material(,%rax,4), %eax	# material, D.7169
	subl	%eax, %edx	# D.7169, Material.589
	movl	%edx, %eax	# Material.589, Material.589
	movl	%eax, Material(%rip)	# Material.589, Material
	.loc 1 2128 0
	movl	material+8(%rip), %edx	# material, D.7169
	movl	Material(%rip), %eax	# Material, Material.590
	addl	%edx, %eax	# D.7169, Material.591
	movl	%eax, Material(%rip)	# Material.591, Material
	.loc 1 2130 0
	jmp	.L576	#
.L590:
	.loc 1 2135 0
	movl	-32(%rbp), %eax	# target, tmp649
	cltq
	movl	board(,%rax,4), %eax	# board, D.7169
	cmpl	$5, %eax	#, D.7169
	jne	.L592	#,
	.loc 1 2137 0
	movl	-36(%rbp), %eax	# from, tmp650
	movl	%eax, wking_loc(%rip)	# tmp650, wking_loc
	.loc 1 2140 0
	movl	-32(%rbp), %eax	# target, tmp652
	cltq
	movl	-28(%rbp), %edx	# captured, tmp653
	movl	%edx, board(,%rax,4)	# tmp653, board
	.loc 1 2141 0
	movl	-36(%rbp), %eax	# from, tmp655
	cltq
	movl	$5, board(,%rax,4)	#, board
	.loc 1 2142 0
	movl	-32(%rbp), %eax	# target, tmp657
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp659
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2143 0
	movl	-36(%rbp), %eax	# from, tmp661
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp663
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2144 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.592
	xorl	$1, %eax	#, white_to_move.593
	movl	%eax, white_to_move(%rip)	# white_to_move.593, white_to_move
	.loc 1 2146 0
	movl	-36(%rbp), %eax	# from, tmp665
	cltq
	addq	$720, %rax	#, tmp666
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.594
	xorl	%edx, %eax	# D.7171, hash.595
	movl	%eax, hash(%rip)	# hash.595, hash
	.loc 1 2147 0
	movl	-32(%rbp), %eax	# target, tmp668
	cltq
	addq	$720, %rax	#, tmp669
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.596
	xorl	%edx, %eax	# D.7171, hash.597
	movl	%eax, hash(%rip)	# hash.597, hash
	.loc 1 2151 0
	cmpl	$1, -20(%rbp)	#, castled
	jne	.L593	#,
	.loc 1 2152 0
	movl	$7, board+132(%rip)	#, board
	.loc 1 2153 0
	movl	$13, board+124(%rip)	#, board
	.loc 1 2154 0
	movl	moved+132(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+132(%rip)	# D.7169, moved
	.loc 1 2155 0
	movl	moved+124(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+124(%rip)	# D.7169, moved
	.loc 1 2156 0
	movl	$0, white_castled(%rip)	#, white_castled
	.loc 1 2157 0
	movl	squares+124(%rip), %eax	# squares, D.7169
	movl	%eax, squares+132(%rip)	# D.7169, squares
	.loc 1 2158 0
	movl	$0, squares+124(%rip)	#, squares
	.loc 1 2159 0
	movl	squares+132(%rip), %eax	# squares, D.7169
	cltq
	movl	$33, pieces(,%rax,4)	#, pieces
	.loc 1 2161 0
	movl	zobrist+4164(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.598
	xorl	%edx, %eax	# D.7171, hash.599
	movl	%eax, hash(%rip)	# hash.599, hash
	.loc 1 2162 0
	movl	zobrist+4156(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.600
	xorl	%edx, %eax	# D.7171, hash.601
	movl	%eax, hash(%rip)	# hash.601, hash
	.loc 1 2164 0
	jmp	.L576	#
.L593:
	.loc 1 2168 0
	cmpl	$2, -20(%rbp)	#, castled
	jne	.L594	#,
	.loc 1 2169 0
	movl	$7, board+104(%rip)	#, board
	.loc 1 2170 0
	movl	$13, board+116(%rip)	#, board
	.loc 1 2171 0
	movl	moved+104(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+104(%rip)	# D.7169, moved
	.loc 1 2172 0
	movl	moved+116(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+116(%rip)	# D.7169, moved
	.loc 1 2173 0
	movl	$0, white_castled(%rip)	#, white_castled
	.loc 1 2174 0
	movl	squares+116(%rip), %eax	# squares, D.7169
	movl	%eax, squares+104(%rip)	# D.7169, squares
	.loc 1 2175 0
	movl	$0, squares+116(%rip)	#, squares
	.loc 1 2176 0
	movl	squares+104(%rip), %eax	# squares, D.7169
	cltq
	movl	$26, pieces(,%rax,4)	#, pieces
	.loc 1 2178 0
	movl	zobrist+4148(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.602
	xorl	%edx, %eax	# D.7171, hash.603
	movl	%eax, hash(%rip)	# hash.603, hash
	.loc 1 2179 0
	movl	zobrist+4136(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.604
	xorl	%edx, %eax	# D.7171, hash.605
	movl	%eax, hash(%rip)	# hash.605, hash
	.loc 1 2181 0
	jmp	.L576	#
.L594:
	.loc 1 2184 0
	jmp	.L576	#
.L592:
	.loc 1 2190 0
	movl	-36(%rbp), %eax	# from, tmp672
	movl	%eax, bking_loc(%rip)	# tmp672, bking_loc
	.loc 1 2193 0
	movl	-32(%rbp), %eax	# target, tmp674
	cltq
	movl	-28(%rbp), %edx	# captured, tmp675
	movl	%edx, board(,%rax,4)	# tmp675, board
	.loc 1 2194 0
	movl	-36(%rbp), %eax	# from, tmp677
	cltq
	movl	$6, board(,%rax,4)	#, board
	.loc 1 2195 0
	movl	-32(%rbp), %eax	# target, tmp679
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-32(%rbp), %eax	# target, tmp681
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2196 0
	movl	-36(%rbp), %eax	# from, tmp683
	cltq
	movl	moved(,%rax,4), %eax	# moved, D.7169
	leal	-1(%rax), %edx	#, D.7169
	movl	-36(%rbp), %eax	# from, tmp685
	cltq
	movl	%edx, moved(,%rax,4)	# D.7169, moved
	.loc 1 2197 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.606
	xorl	$1, %eax	#, white_to_move.607
	movl	%eax, white_to_move(%rip)	# white_to_move.607, white_to_move
	.loc 1 2199 0
	movl	-36(%rbp), %eax	# from, tmp687
	cltq
	addq	$864, %rax	#, tmp688
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.608
	xorl	%edx, %eax	# D.7171, hash.609
	movl	%eax, hash(%rip)	# hash.609, hash
	.loc 1 2200 0
	movl	-32(%rbp), %eax	# target, tmp690
	cltq
	addq	$864, %rax	#, tmp691
	movl	zobrist(,%rax,4), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.610
	xorl	%edx, %eax	# D.7171, hash.611
	movl	%eax, hash(%rip)	# hash.611, hash
	.loc 1 2204 0
	cmpl	$3, -20(%rbp)	#, castled
	jne	.L595	#,
	.loc 1 2205 0
	movl	$8, board+468(%rip)	#, board
	.loc 1 2206 0
	movl	$13, board+460(%rip)	#, board
	.loc 1 2207 0
	movl	moved+468(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+468(%rip)	# D.7169, moved
	.loc 1 2208 0
	movl	moved+460(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+460(%rip)	# D.7169, moved
	.loc 1 2209 0
	movl	$0, black_castled(%rip)	#, black_castled
	.loc 1 2210 0
	movl	squares+460(%rip), %eax	# squares, D.7169
	movl	%eax, squares+468(%rip)	# D.7169, squares
	.loc 1 2211 0
	movl	$0, squares+460(%rip)	#, squares
	.loc 1 2212 0
	movl	squares+468(%rip), %eax	# squares, D.7169
	cltq
	movl	$117, pieces(,%rax,4)	#, pieces
	.loc 1 2214 0
	movl	zobrist+5076(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.612
	xorl	%edx, %eax	# D.7171, hash.613
	movl	%eax, hash(%rip)	# hash.613, hash
	.loc 1 2215 0
	movl	zobrist+5068(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.614
	xorl	%edx, %eax	# D.7171, hash.615
	movl	%eax, hash(%rip)	# hash.615, hash
	.loc 1 2217 0
	jmp	.L576	#
.L595:
	.loc 1 2221 0
	cmpl	$4, -20(%rbp)	#, castled
	jne	.L596	#,
	.loc 1 2222 0
	movl	$8, board+440(%rip)	#, board
	.loc 1 2223 0
	movl	$13, board+452(%rip)	#, board
	.loc 1 2224 0
	movl	moved+440(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+440(%rip)	# D.7169, moved
	.loc 1 2225 0
	movl	moved+452(%rip), %eax	# moved, D.7169
	subl	$1, %eax	#, D.7169
	movl	%eax, moved+452(%rip)	# D.7169, moved
	.loc 1 2226 0
	movl	$0, black_castled(%rip)	#, black_castled
	.loc 1 2227 0
	movl	squares+452(%rip), %eax	# squares, D.7169
	movl	%eax, squares+440(%rip)	# D.7169, squares
	.loc 1 2228 0
	movl	$0, squares+452(%rip)	#, squares
	.loc 1 2229 0
	movl	squares+440(%rip), %eax	# squares, D.7169
	cltq
	movl	$110, pieces(,%rax,4)	#, pieces
	.loc 1 2231 0
	movl	zobrist+5048(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.616
	xorl	%edx, %eax	# D.7171, hash.617
	movl	%eax, hash(%rip)	# hash.617, hash
	.loc 1 2232 0
	movl	zobrist+5060(%rip), %edx	# zobrist, D.7171
	movl	hash(%rip), %eax	# hash, hash.618
	xorl	%edx, %eax	# D.7171, hash.619
	movl	%eax, hash(%rip)	# hash.619, hash
	.loc 1 2234 0
	jmp	.L576	#
.L596:
	.loc 1 2238 0
	nop
.L576:
	.loc 1 2239 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	unmake, .-unmake
	.section	.rodata
	.align 32
	.type	knight_o.4006, @object
	.size	knight_o.4006, 32
knight_o.4006:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	knight_o.4175, @object
	.size	knight_o.4175, 32
knight_o.4175:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF84
	.byte	0x1
	.long	.LASF85
	.long	.LASF86
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
	.long	.LASF18
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
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x7
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0xf1
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0x8
	.long	.LASF17
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0x9
	.string	"ep"
	.byte	0x2
	.byte	0x65
	.long	0x77
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x66
	.long	0xa1
	.uleb128 0x7
	.byte	0x10
	.byte	0x2
	.byte	0x68
	.long	0x135
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.byte	0x69
	.long	0x77
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x2
	.byte	0x6a
	.long	0x77
	.byte	0x4
	.uleb128 0x8
	.long	.LASF22
	.byte	0x2
	.byte	0x6b
	.long	0x77
	.byte	0x8
	.uleb128 0x8
	.long	.LASF23
	.byte	0x2
	.byte	0x6c
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x2
	.byte	0x6d
	.long	0xfc
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x19
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x19
	.long	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"m"
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x1f
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x21
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x22
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.long	0xf1
	.uleb128 0x10
	.string	"gen"
	.byte	0x1
	.value	0x1b7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x23a
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.value	0x1b7
	.long	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF13
	.byte	0x1
	.value	0x1bb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.value	0x1bb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"j"
	.byte	0x1
	.value	0x1bb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x1bb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.value	0x1c8
	.quad	.L137
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.value	0x30b
	.long	0x42
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.value	0x320
	.long	0x42
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d8
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.value	0x320
	.long	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.value	0x320
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF14
	.byte	0x1
	.value	0x322
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF13
	.byte	0x1
	.value	0x323
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.value	0x324
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.value	0x325
	.long	0x2e8
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.4006
	.byte	0
	.uleb128 0x18
	.long	0x77
	.long	0x2e8
	.uleb128 0x19
	.long	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.long	0x2d8
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.value	0x4bb
	.long	0x77
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x333
	.uleb128 0x13
	.string	"sq"
	.byte	0x1
	.value	0x4bd
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.value	0x4be
	.long	0x333
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.4175
	.byte	0
	.uleb128 0x1a
	.long	0x2d8
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x1
	.value	0x4fe
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.value	0x4fe
	.long	0x1c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x4fe
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.string	"ep"
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF13
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF14
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF15
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF16
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF17
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.value	0x504
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x1
	.value	0x697
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x697
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.value	0x698
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x1
	.value	0x6a5
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x475
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x6a5
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.value	0x6a6
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.value	0x6a7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"Pep"
	.byte	0x1
	.value	0x6a8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.value	0x6bd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a3
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.value	0x6bd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x1
	.value	0x6ca
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.value	0x6ca
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.value	0x6ca
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x1
	.value	0x6d7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x50e
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x6d7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF43
	.byte	0x1
	.value	0x6f4
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x53c
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x6f4
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF44
	.byte	0x1
	.value	0x70d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x588
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x70d
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x70d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.value	0x711
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF47
	.byte	0x1
	.value	0x742
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b6
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x742
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF48
	.byte	0x1
	.value	0x74a
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x602
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x74a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.value	0x74e
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.value	0x74f
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x770
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x698
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.value	0x770
	.long	0x1c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x770
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.string	"ep"
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF13
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF14
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF15
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF16
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF17
	.byte	0x1
	.value	0x776
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x1
	.byte	0x12
	.long	0x1c0
	.uleb128 0x9
	.byte	0x3
	.quad	genfor
	.uleb128 0x18
	.long	0x77
	.long	0x6bd
	.uleb128 0x19
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x1d
	.long	.LASF53
	.byte	0x3
	.byte	0xc
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x3
	.byte	0xc
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x1d
	.long	.LASF57
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x1d
	.long	.LASF58
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1d
	.long	.LASF59
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1e
	.string	"ply"
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x3
	.byte	0xe
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF23
	.byte	0x3
	.byte	0xe
	.long	0x77
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x3
	.byte	0xe
	.long	0x77
	.uleb128 0x1d
	.long	.LASF63
	.byte	0x3
	.byte	0x16
	.long	0x42
	.uleb128 0x18
	.long	0x135
	.long	0x75d
	.uleb128 0x1f
	.long	0x85
	.value	0x12b
	.byte	0
	.uleb128 0x1d
	.long	.LASF64
	.byte	0x3
	.byte	0x1c
	.long	0x74c
	.uleb128 0x18
	.long	0x77
	.long	0x77e
	.uleb128 0x19
	.long	0x85
	.byte	0x1
	.uleb128 0x19
	.long	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.long	.LASF65
	.byte	0x3
	.byte	0x22
	.long	0x768
	.uleb128 0x18
	.long	0x77
	.long	0x799
	.uleb128 0x19
	.long	0x85
	.byte	0x3d
	.byte	0
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x3
	.byte	0x2c
	.long	0x789
	.uleb128 0x1d
	.long	.LASF67
	.byte	0x3
	.byte	0x2d
	.long	0x789
	.uleb128 0x18
	.long	0x5b
	.long	0x7c5
	.uleb128 0x19
	.long	0x85
	.byte	0xd
	.uleb128 0x19
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x1d
	.long	.LASF68
	.byte	0x3
	.byte	0x37
	.long	0x7af
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x3
	.byte	0x38
	.long	0x5b
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x3
	.byte	0x4a
	.long	0x77
	.uleb128 0x18
	.long	0x77
	.long	0x7f6
	.uleb128 0x19
	.long	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x3
	.byte	0x4b
	.long	0x7e6
	.uleb128 0x20
	.long	.LASF72
	.byte	0x1
	.byte	0xe
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	total_moves
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.byte	0xf
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	total_movegens
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x3
	.byte	0x5e
	.long	0x836
	.uleb128 0x1a
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF75
	.byte	0x3
	.byte	0x5e
	.long	0x846
	.uleb128 0x1a
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x3
	.byte	0x5e
	.long	0x856
	.uleb128 0x1a
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x3
	.byte	0x5e
	.long	0x866
	.uleb128 0x1a
	.long	0x6ad
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x3
	.byte	0x63
	.long	0x77
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x3
	.byte	0x64
	.long	0x77
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.byte	0x11
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	numb_moves
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.byte	0x17
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	kingcap
	.uleb128 0x20
	.long	.LASF82
	.byte	0x1
	.byte	0x14
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	fcaptures
	.uleb128 0x20
	.long	.LASF83
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	gfrom
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
	.uleb128 0x2116
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LASF81:
	.string	"kingcap"
.LASF35:
	.string	"Ppromoted"
.LASF74:
	.string	"Xrank"
.LASF56:
	.string	"white_to_move"
.LASF61:
	.string	"squares"
.LASF55:
	.string	"ep_square"
.LASF28:
	.string	"f_in_check"
.LASF32:
	.string	"find_slot"
.LASF45:
	.string	"is_ep"
.LASF14:
	.string	"target"
.LASF65:
	.string	"holding"
.LASF9:
	.string	"sizetype"
.LASF22:
	.string	"epsq"
.LASF60:
	.string	"black_castled"
.LASF38:
	.string	"try_drop"
.LASF34:
	.string	"Ptarget"
.LASF16:
	.string	"promoted"
.LASF37:
	.string	"Pcaptured"
.LASF7:
	.string	"short int"
.LASF76:
	.string	"Xdiagl"
.LASF19:
	.string	"move_s"
.LASF46:
	.string	"captured_piece"
.LASF24:
	.string	"move_x"
.LASF87:
	.string	"restart"
.LASF15:
	.string	"captured"
.LASF18:
	.string	"xbool"
.LASF63:
	.string	"captures"
.LASF78:
	.string	"Variant"
.LASF20:
	.string	"cap_num"
.LASF17:
	.string	"castled"
.LASF11:
	.string	"long long int"
.LASF62:
	.string	"piece_count"
.LASF44:
	.string	"push_pawn"
.LASF48:
	.string	"push_slidE"
.LASF27:
	.string	"check_legal"
.LASF29:
	.string	"knight_o"
.LASF8:
	.string	"long int"
.LASF86:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF50:
	.string	"mycolor"
.LASF79:
	.string	"Giveaway"
.LASF75:
	.string	"Xfile"
.LASF64:
	.string	"path_x"
.LASF59:
	.string	"white_castled"
.LASF2:
	.string	"unsigned char"
.LASF69:
	.string	"hash"
.LASF66:
	.string	"pieces"
.LASF84:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF0:
	.string	"FALSE"
.LASF26:
	.string	"incheck"
.LASF80:
	.string	"numb_moves"
.LASF36:
	.string	"add_capture"
.LASF51:
	.string	"unmake"
.LASF21:
	.string	"was_promoted"
.LASF67:
	.string	"is_promoted"
.LASF47:
	.string	"push_pawn_simple"
.LASF70:
	.string	"Material"
.LASF71:
	.string	"material"
.LASF3:
	.string	"short unsigned int"
.LASF49:
	.string	"offset"
.LASF88:
	.string	"in_check"
.LASF41:
	.string	"Pcastle_type"
.LASF10:
	.string	"char"
.LASF57:
	.string	"wking_loc"
.LASF31:
	.string	"make"
.LASF23:
	.string	"fifty"
.LASF39:
	.string	"ptype"
.LASF52:
	.string	"genfor"
.LASF42:
	.string	"push_king"
.LASF33:
	.string	"add_move"
.LASF72:
	.string	"total_moves"
.LASF54:
	.string	"moved"
.LASF5:
	.string	"long unsigned int"
.LASF53:
	.string	"board"
.LASF30:
	.string	"extended_in_check"
.LASF25:
	.string	"moves"
.LASF85:
	.string	"moves.c"
.LASF73:
	.string	"total_movegens"
.LASF68:
	.string	"zobrist"
.LASF58:
	.string	"bking_loc"
.LASF82:
	.string	"fcaptures"
.LASF83:
	.string	"gfrom"
.LASF1:
	.string	"TRUE"
.LASF40:
	.string	"push_king_castle"
.LASF43:
	.string	"push_knighT"
.LASF13:
	.string	"from"
.LASF77:
	.string	"Xdiagr"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
