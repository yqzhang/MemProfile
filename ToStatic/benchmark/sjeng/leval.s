	.file	"leval.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 leval.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 32
	.type	lcentral, @object
	.size	lcentral, 576
lcentral:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	30
	.long	30
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	30
	.long	30
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.type	l_bishop_mobility, @function
l_bishop_mobility:
.LFB2:
	.file 1 "leval.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 31 0
	movl	$0, %r12d	#, m
	.loc 1 33 0
	movl	-20(%rbp), %eax	# square, tmp67
	leal	-13(%rax), %ebx	#, l
	jmp	.L2	#
.L3:
	.loc 1 34 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 33 0 discriminator 2
	subl	$13, %ebx	#, l
.L2:
	.loc 1 33 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp68
	movl	board(,%rax,4), %eax	# board, D.4379
	cmpl	$13, %eax	#, D.4379
	je	.L3	#,
	.loc 1 35 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp69
	leal	-11(%rax), %ebx	#, l
	jmp	.L4	#
.L5:
	.loc 1 36 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 35 0 discriminator 2
	subl	$11, %ebx	#, l
.L4:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.4379
	cmpl	$13, %eax	#, D.4379
	je	.L5	#,
	.loc 1 37 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp71
	leal	11(%rax), %ebx	#, l
	jmp	.L6	#
.L7:
	.loc 1 38 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 37 0 discriminator 2
	addl	$11, %ebx	#, l
.L6:
	.loc 1 37 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp72
	movl	board(,%rax,4), %eax	# board, D.4379
	cmpl	$13, %eax	#, D.4379
	je	.L7	#,
	.loc 1 39 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp73
	leal	13(%rax), %ebx	#, l
	jmp	.L8	#
.L9:
	.loc 1 40 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 39 0 discriminator 2
	addl	$13, %ebx	#, l
.L8:
	.loc 1 39 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp74
	movl	board(,%rax,4), %eax	# board, D.4379
	cmpl	$13, %eax	#, D.4379
	je	.L9	#,
	.loc 1 42 0 is_stmt 1
	movl	%r12d, %eax	# m, D.4379
	.loc 1 43 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	l_bishop_mobility, .-l_bishop_mobility
	.type	l_rook_mobility, @function
l_rook_mobility:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 48 0
	movl	$0, %r12d	#, m
	.loc 1 50 0
	movl	-20(%rbp), %eax	# square, tmp67
	leal	-12(%rax), %ebx	#, l
	jmp	.L12	#
.L13:
	.loc 1 51 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 50 0 discriminator 2
	subl	$12, %ebx	#, l
.L12:
	.loc 1 50 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp68
	movl	board(,%rax,4), %eax	# board, D.4380
	cmpl	$13, %eax	#, D.4380
	je	.L13	#,
	.loc 1 52 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp69
	leal	-1(%rax), %ebx	#, l
	jmp	.L14	#
.L15:
	.loc 1 53 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 52 0 discriminator 2
	subl	$1, %ebx	#, l
.L14:
	.loc 1 52 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.4380
	cmpl	$13, %eax	#, D.4380
	je	.L15	#,
	.loc 1 54 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp71
	leal	1(%rax), %ebx	#, l
	jmp	.L16	#
.L17:
	.loc 1 55 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 54 0 discriminator 2
	addl	$1, %ebx	#, l
.L16:
	.loc 1 54 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp72
	movl	board(,%rax,4), %eax	# board, D.4380
	cmpl	$13, %eax	#, D.4380
	je	.L17	#,
	.loc 1 56 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp73
	leal	12(%rax), %ebx	#, l
	jmp	.L18	#
.L19:
	.loc 1 57 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 56 0 discriminator 2
	addl	$12, %ebx	#, l
.L18:
	.loc 1 56 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp74
	movl	board(,%rax,4), %eax	# board, D.4380
	cmpl	$13, %eax	#, D.4380
	je	.L19	#,
	.loc 1 59 0 is_stmt 1
	movl	%r12d, %eax	# m, D.4380
	.loc 1 60 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	l_rook_mobility, .-l_rook_mobility
	.type	l_knight_mobility, @function
l_knight_mobility:
.LFB4:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 66 0
	movl	$0, %r12d	#, m
	.loc 1 68 0
	movl	$0, %ebx	#, d
	jmp	.L22	#
.L24:
	.loc 1 70 0
	movslq	%ebx, %rax	# d, tmp66
	movl	knight_o.3912(,%rax,4), %edx	# knight_o, D.4381
	movl	-20(%rbp), %eax	# square, tmp67
	addl	%edx, %eax	# D.4381, D.4381
	cltq
	movl	board(,%rax,4), %eax	# board, D.4381
	cmpl	$13, %eax	#, D.4381
	jne	.L23	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	addl	$1, %r12d	#, m
.L23:
	.loc 1 68 0 is_stmt 1
	addl	$1, %ebx	#, d
.L22:
	.loc 1 68 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, d
	jle	.L24	#,
	.loc 1 73 0 is_stmt 1
	movl	%r12d, %eax	# m, D.4381
	.loc 1 74 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	l_knight_mobility, .-l_knight_mobility
	.type	l_pawn_mobility, @function
l_pawn_mobility:
.LFB5:
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# square, square
	.loc 1 78 0
	movl	$0, %ebx	#, m
	.loc 1 80 0
	movl	-12(%rbp), %eax	# square, tmp68
	cltq
	movl	board(,%rax,4), %eax	# board, D.4382
	cmpl	$1, %eax	#, D.4382
	jne	.L27	#,
	.loc 1 82 0
	movl	-12(%rbp), %eax	# square, tmp69
	addl	$12, %eax	#, D.4382
	cltq
	movl	board(,%rax,4), %eax	# board, D.4382
	cmpl	$13, %eax	#, D.4382
	jne	.L29	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	addl	$1, %ebx	#, m
	jmp	.L29	#
.L27:
	.loc 1 86 0 is_stmt 1
	movl	-12(%rbp), %eax	# square, tmp71
	subl	$12, %eax	#, D.4382
	cltq
	movl	board(,%rax,4), %eax	# board, D.4382
	cmpl	$13, %eax	#, D.4382
	jne	.L29	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	addl	$1, %ebx	#, m
.L29:
	.loc 1 89 0 is_stmt 1
	movl	%ebx, %eax	# m, D.4382
	.loc 1 90 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	l_pawn_mobility, .-l_pawn_mobility
	.type	l_king_mobility, @function
l_king_mobility:
.LFB6:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 95 0
	movl	$0, %r12d	#, m
	.loc 1 97 0
	movl	$0, %ebx	#, d
	jmp	.L32	#
.L34:
	.loc 1 99 0
	movslq	%ebx, %rax	# d, tmp66
	movl	king_o.3925(,%rax,4), %edx	# king_o, D.4383
	movl	-20(%rbp), %eax	# square, tmp67
	addl	%edx, %eax	# D.4383, D.4383
	cltq
	movl	board(,%rax,4), %eax	# board, D.4383
	cmpl	$13, %eax	#, D.4383
	jne	.L33	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	addl	$1, %r12d	#, m
.L33:
	.loc 1 97 0 is_stmt 1
	addl	$1, %ebx	#, d
.L32:
	.loc 1 97 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, d
	jle	.L34	#,
	.loc 1 102 0 is_stmt 1
	movl	%r12d, %eax	# m, D.4383
	.loc 1 103 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	l_king_mobility, .-l_king_mobility
	.globl	losers_eval
	.type	losers_eval, @function
losers_eval:
.LFB7:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$280, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 109 0
	movl	$0, -268(%rbp)	#, srank
	movl	$0, -264(%rbp)	#, pawn_file
	.loc 1 112 0
	movl	$0, -276(%rbp)	#, score
	.loc 1 114 0
	movl	$0, -240(%rbp)	#, wp
	movl	$0, -236(%rbp)	#, bp
	.loc 1 115 0
	movl	$0, -232(%rbp)	#, wks
	movl	$0, -228(%rbp)	#, bks
	.loc 1 116 0
	movl	$0, -224(%rbp)	#, wpassp
	movl	$0, -220(%rbp)	#, bpassp
	.loc 1 117 0
	movl	$0, -216(%rbp)	#, wpawns
	movl	$0, -212(%rbp)	#, bpawns
	.loc 1 119 0
	movl	$0, -272(%rbp)	#, in_cache
	.loc 1 121 0
	leaq	-272(%rbp), %rdx	#, tmp304
	leaq	-276(%rbp), %rax	#, tmp305
	movq	%rdx, %rsi	# tmp304,
	movq	%rax, %rdi	# tmp305,
	call	checkECache	#
	.loc 1 123 0
	movl	-272(%rbp), %eax	# in_cache, in_cache.0
	testl	%eax, %eax	# in_cache.0
	je	.L37	#,
	.loc 1 125 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.1
	cmpl	$1, %eax	#, white_to_move.1
	jne	.L38	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, D.4384
	jmp	.L93	#
.L38:
	.loc 1 126 0 is_stmt 1
	movl	-276(%rbp), %eax	# score, score.2
	negl	%eax	# D.4384
	jmp	.L93	#
.L37:
	.loc 1 132 0
	leaq	-112(%rbp), %rax	#, tmp306
	movl	$88, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	memset	#
	.loc 1 133 0
	movl	$0, -252(%rbp)	#, i
	jmp	.L40	#
.L41:
	.loc 1 134 0 discriminator 2
	movl	-252(%rbp), %eax	# i, tmp308
	cltq
	movl	$7, -208(%rbp,%rax,4)	#, white_back_pawn
	.loc 1 135 0 discriminator 2
	movl	-252(%rbp), %eax	# i, tmp310
	cltq
	movl	$2, -160(%rbp,%rax,4)	#, black_back_pawn
	.loc 1 133 0 discriminator 2
	addl	$1, -252(%rbp)	#, i
.L40:
	.loc 1 133 0 is_stmt 0 discriminator 1
	cmpl	$10, -252(%rbp)	#, i
	jle	.L41	#,
	.loc 1 137 0 is_stmt 1
	movl	$1, -244(%rbp)	#, j
	movl	$1, -248(%rbp)	#, a
	jmp	.L42	#
.L47:
	.loc 1 138 0
	movl	-244(%rbp), %eax	# j, tmp312
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp313
	movl	%eax, -252(%rbp)	# tmp313, i
	.loc 1 140 0
	cmpl	$0, -252(%rbp)	#, i
	jne	.L43	#,
	.loc 1 141 0
	jmp	.L44	#
.L43:
	.loc 1 143 0
	addl	$1, -248(%rbp)	#, a
	.loc 1 147 0
	movl	-252(%rbp), %eax	# i, tmp315
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4384
	addl	$1, %eax	#, tmp316
	movl	%eax, -264(%rbp)	# tmp316, pawn_file
	.loc 1 148 0
	movl	-252(%rbp), %eax	# i, tmp318
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp319
	movl	%eax, -268(%rbp)	# tmp319, srank
	.loc 1 149 0
	movl	-252(%rbp), %eax	# i, tmp321
	cltq
	movl	board(,%rax,4), %eax	# board, D.4384
	cmpl	$1, %eax	#, D.4384
	jne	.L45	#,
	.loc 1 150 0
	movl	-264(%rbp), %eax	# pawn_file, tmp323
	cltq
	addq	$11, %rax	#, tmp324
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	leal	1(%rax), %edx	#, D.4384
	movl	-264(%rbp), %eax	# pawn_file, tmp326
	cltq
	addq	$11, %rax	#, tmp327
	movl	%edx, -112(%rbp,%rax,4)	# D.4384, pawns
	.loc 1 151 0
	movl	-264(%rbp), %eax	# pawn_file, tmp329
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jle	.L44	#,
	.loc 1 152 0
	movl	-264(%rbp), %eax	# pawn_file, tmp331
	cltq
	movl	-268(%rbp), %edx	# srank, tmp332
	movl	%edx, -208(%rbp,%rax,4)	# tmp332, white_back_pawn
	jmp	.L44	#
.L45:
	.loc 1 155 0
	movl	-252(%rbp), %eax	# i, tmp334
	cltq
	movl	board(,%rax,4), %eax	# board, D.4384
	cmpl	$2, %eax	#, D.4384
	jne	.L44	#,
	.loc 1 156 0
	movl	-264(%rbp), %eax	# pawn_file, tmp336
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	leal	1(%rax), %edx	#, D.4384
	movl	-264(%rbp), %eax	# pawn_file, tmp338
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.4384, pawns
	.loc 1 157 0
	movl	-264(%rbp), %eax	# pawn_file, tmp340
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jge	.L44	#,
	.loc 1 158 0
	movl	-264(%rbp), %eax	# pawn_file, tmp342
	cltq
	movl	-268(%rbp), %edx	# srank, tmp343
	movl	%edx, -160(%rbp,%rax,4)	# tmp343, black_back_pawn
.L44:
	.loc 1 137 0
	addl	$1, -244(%rbp)	#, j
.L42:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.3
	cmpl	%eax, -248(%rbp)	# piece_count.3, a
	jle	.L47	#,
	.loc 1 165 0 is_stmt 1
	movl	$1, -244(%rbp)	#, j
	movl	$1, -248(%rbp)	#, a
	jmp	.L48	#
.L82:
	.loc 1 166 0
	movl	-244(%rbp), %eax	# j, tmp345
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp346
	movl	%eax, -252(%rbp)	# tmp346, i
	.loc 1 168 0
	cmpl	$0, -252(%rbp)	#, i
	jne	.L49	#,
	.loc 1 169 0
	jmp	.L50	#
.L49:
	.loc 1 171 0
	addl	$1, -248(%rbp)	#, a
	.loc 1 173 0
	movl	-252(%rbp), %eax	# i, tmp348
	cltq
	movl	board(,%rax,4), %eax	# board, D.4384
	cmpl	$12, %eax	#, D.4384
	ja	.L50	#,
	movl	%eax, %eax	# D.4384, tmp349
	movq	.L52(,%rax,8), %rax	#, tmp350
	jmp	*%rax	# tmp350
	.section	.rodata
	.align 8
	.align 4
.L52:
	.quad	.L50
	.quad	.L51
	.quad	.L53
	.quad	.L54
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.text
.L51:
	.loc 1 175 0
	addl	$1, -240(%rbp)	#, wp
	.loc 1 176 0
	addl	$1, -216(%rbp)	#, wpawns
	.loc 1 177 0
	movl	-252(%rbp), %eax	# i, tmp352
	cltq
	movl	lcentral(,%rax,4), %edx	# lcentral, D.4384
	movl	-276(%rbp), %eax	# score, score.4
	addl	%edx, %eax	# D.4384, score.5
	movl	%eax, -276(%rbp)	# score.5, score
	.loc 1 178 0
	movl	-252(%rbp), %eax	# i, tmp353
	movl	%eax, %edi	# tmp353,
	call	l_pawn_mobility	#
	leal	0(,%rax,4), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.6
	addl	%edx, %eax	# D.4384, score.7
	movl	%eax, -276(%rbp)	# score.7, score
	.loc 1 179 0
	movl	-252(%rbp), %eax	# i, tmp355
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	subl	$2, %eax	#, D.4384
	leal	0(,%rax,8), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.8
	addl	%edx, %eax	# D.4384, score.9
	movl	%eax, -276(%rbp)	# score.9, score
	.loc 1 180 0
	movl	$0, -260(%rbp)	#, isolated
	.loc 1 181 0
	movl	$0, -256(%rbp)	#, backwards
	.loc 1 184 0
	movl	-264(%rbp), %eax	# pawn_file, tmp356
	addl	$1, %eax	#, D.4384
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jle	.L64	#,
	.loc 1 185 0
	movl	-264(%rbp), %eax	# pawn_file, tmp358
	subl	$1, %eax	#, D.4384
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jle	.L64	#,
	.loc 1 186 0
	movl	-276(%rbp), %eax	# score, score.10
	subl	$8, %eax	#, score.11
	movl	%eax, -276(%rbp)	# score.11, score
	.loc 1 187 0
	movl	$1, -256(%rbp)	#, backwards
	.loc 1 189 0
	movl	-264(%rbp), %eax	# pawn_file, tmp360
	addl	$1, %eax	#, D.4384
	cltq
	addq	$11, %rax	#, tmp362
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L64	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp363
	subl	$1, %eax	#, D.4384
	cltq
	addq	$11, %rax	#, tmp365
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L64	#,
	.loc 1 190 0 is_stmt 1
	movl	-276(%rbp), %eax	# score, score.12
	subl	$12, %eax	#, score.13
	movl	%eax, -276(%rbp)	# score.13, score
	.loc 1 191 0
	movl	$1, -260(%rbp)	#, isolated
.L64:
	.loc 1 195 0
	movl	-264(%rbp), %eax	# pawn_file, tmp367
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L65	#,
	.loc 1 196 0
	cmpl	$0, -256(%rbp)	#, backwards
	je	.L66	#,
	.loc 1 196 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.14
	subl	$5, %eax	#, score.15
	movl	%eax, -276(%rbp)	# score.15, score
.L66:
	.loc 1 197 0 is_stmt 1
	cmpl	$0, -260(%rbp)	#, isolated
	je	.L65	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.16
	subl	$8, %eax	#, score.17
	movl	%eax, -276(%rbp)	# score.17, score
.L65:
	.loc 1 200 0 is_stmt 1
	movl	-264(%rbp), %eax	# pawn_file, tmp369
	cltq
	addq	$11, %rax	#, tmp370
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	cmpl	$1, %eax	#, D.4384
	jle	.L67	#,
	.loc 1 201 0
	movl	-264(%rbp), %eax	# pawn_file, tmp372
	cltq
	addq	$11, %rax	#, tmp373
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	movl	$1, %edx	#, tmp374
	subl	%eax, %edx	# D.4384, D.4384
	movl	%edx, %eax	# D.4384, D.4384
	leal	0(,%rax,8), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.18
	addl	%edx, %eax	# D.4384, score.19
	movl	%eax, -276(%rbp)	# score.19, score
.L67:
	.loc 1 203 0
	movl	-264(%rbp), %eax	# pawn_file, tmp376
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L68	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp377
	subl	$1, %eax	#, D.4384
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jg	.L68	#,
	.loc 1 204 0 is_stmt 1 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp379
	addl	$1, %eax	#, D.4384
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4384
	.loc 1 203 0 discriminator 1
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jg	.L68	#,
	.loc 1 205 0
	movl	-252(%rbp), %eax	# i, tmp382
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	leal	-2(%rax), %edx	#, D.4384
	movl	%edx, %eax	# D.4384, tmp383
	sall	$2, %eax	#, tmp383
	addl	%edx, %eax	# D.4384, tmp383
	addl	%eax, %eax	# tmp384
	leal	25(%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.20
	addl	%edx, %eax	# D.4384, score.21
	movl	%eax, -276(%rbp)	# score.21, score
	.loc 1 207 0
	movl	-252(%rbp), %eax	# i, tmp386
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	cmpl	$7, %eax	#, D.4384
	jne	.L69	#,
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.22
	addl	$50, %eax	#, score.23
	movl	%eax, -276(%rbp)	# score.23, score
.L69:
	.loc 1 209 0 is_stmt 1
	addl	$1, -224(%rbp)	#, wpassp
	.loc 1 212 0
	movl	-252(%rbp), %eax	# i, tmp388
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4384
	cmpl	$1, %eax	#, D.4384
	je	.L70	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# i, tmp390
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4384
	cmpl	$8, %eax	#, D.4384
	jne	.L71	#,
.L70:
	.loc 1 213 0 is_stmt 1
	movl	-252(%rbp), %eax	# i, tmp392
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	leal	(%rax,%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.24
	addl	%edx, %eax	# D.4384, score.25
	movl	%eax, -276(%rbp)	# score.25, score
.L71:
	.loc 1 216 0
	cmpl	$0, -260(%rbp)	#, isolated
	jne	.L68	#,
	.loc 1 218 0
	movl	-276(%rbp), %eax	# score, score.26
	addl	$24, %eax	#, score.27
	movl	%eax, -276(%rbp)	# score.27, score
.L68:
	.loc 1 223 0
	movl	-264(%rbp), %eax	# pawn_file, tmp393
	subl	$1, %eax	#, D.4384
	cltq
	addq	$11, %rax	#, tmp395
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L72	#,
	.loc 1 224 0
	movl	-276(%rbp), %eax	# score, score.28
	subl	$5, %eax	#, score.29
	movl	%eax, -276(%rbp)	# score.29, score
	.loc 1 226 0
	jmp	.L50	#
.L72:
	jmp	.L50	#
.L53:
	.loc 1 229 0
	addl	$1, -236(%rbp)	#, bp
	.loc 1 230 0
	addl	$1, -212(%rbp)	#, bpawns
	.loc 1 231 0
	movl	-276(%rbp), %edx	# score, score.30
	movl	-252(%rbp), %eax	# i, tmp397
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	subl	%eax, %edx	# D.4384, score.31
	movl	%edx, %eax	# score.31, score.31
	movl	%eax, -276(%rbp)	# score.31, score
	.loc 1 232 0
	movl	-276(%rbp), %ebx	# score, score.32
	movl	-252(%rbp), %eax	# i, tmp398
	movl	%eax, %edi	# tmp398,
	call	l_pawn_mobility	#
	sall	$2, %eax	#, D.4384
	subl	%eax, %ebx	# D.4384, score.33
	movl	%ebx, %eax	# score.33, score.33
	movl	%eax, -276(%rbp)	# score.33, score
	.loc 1 233 0
	movl	-252(%rbp), %eax	# i, tmp400
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	subl	$7, %eax	#, D.4384
	leal	0(,%rax,8), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.34
	addl	%edx, %eax	# D.4384, score.35
	movl	%eax, -276(%rbp)	# score.35, score
	.loc 1 234 0
	movl	$0, -260(%rbp)	#, isolated
	.loc 1 235 0
	movl	$0, -256(%rbp)	#, backwards
	.loc 1 242 0
	movl	-264(%rbp), %eax	# pawn_file, tmp401
	addl	$1, %eax	#, D.4384
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jge	.L73	#,
	.loc 1 243 0
	movl	-264(%rbp), %eax	# pawn_file, tmp403
	subl	$1, %eax	#, D.4384
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jge	.L73	#,
	.loc 1 244 0
	movl	-276(%rbp), %eax	# score, score.36
	addl	$8, %eax	#, score.37
	movl	%eax, -276(%rbp)	# score.37, score
	.loc 1 245 0
	movl	$1, -256(%rbp)	#, backwards
	.loc 1 247 0
	movl	-264(%rbp), %eax	# pawn_file, tmp405
	addl	$1, %eax	#, D.4384
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L73	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp407
	subl	$1, %eax	#, D.4384
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L73	#,
	.loc 1 248 0 is_stmt 1
	movl	-276(%rbp), %eax	# score, score.38
	addl	$12, %eax	#, score.39
	movl	%eax, -276(%rbp)	# score.39, score
	.loc 1 249 0
	movl	$1, -260(%rbp)	#, isolated
.L73:
	.loc 1 253 0
	movl	-264(%rbp), %eax	# pawn_file, tmp410
	cltq
	addq	$11, %rax	#, tmp411
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L74	#,
	.loc 1 254 0
	cmpl	$0, -256(%rbp)	#, backwards
	je	.L75	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.40
	addl	$5, %eax	#, score.41
	movl	%eax, -276(%rbp)	# score.41, score
.L75:
	.loc 1 255 0 is_stmt 1
	cmpl	$0, -260(%rbp)	#, isolated
	je	.L74	#,
	.loc 1 255 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.42
	addl	$8, %eax	#, score.43
	movl	%eax, -276(%rbp)	# score.43, score
.L74:
	.loc 1 258 0 is_stmt 1
	movl	-264(%rbp), %eax	# pawn_file, tmp413
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	cmpl	$1, %eax	#, D.4384
	jle	.L76	#,
	.loc 1 259 0
	movl	-264(%rbp), %eax	# pawn_file, tmp415
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	subl	$1, %eax	#, D.4384
	leal	0(,%rax,8), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.44
	addl	%edx, %eax	# D.4384, score.45
	movl	%eax, -276(%rbp)	# score.45, score
.L76:
	.loc 1 261 0
	movl	-264(%rbp), %eax	# pawn_file, tmp417
	cltq
	addq	$11, %rax	#, tmp418
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L77	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp419
	subl	$1, %eax	#, D.4384
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4384
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jl	.L77	#,
	.loc 1 262 0 is_stmt 1 discriminator 1
	movl	-264(%rbp), %eax	# pawn_file, tmp421
	addl	$1, %eax	#, D.4384
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4384
	.loc 1 261 0 discriminator 1
	cmpl	-268(%rbp), %eax	# srank, D.4384
	jl	.L77	#,
	.loc 1 263 0
	movl	-252(%rbp), %eax	# i, tmp424
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	leal	-7(%rax), %edx	#, D.4384
	movl	%edx, %eax	# D.4384, tmp425
	sall	$2, %eax	#, tmp425
	addl	%edx, %eax	# D.4384, tmp425
	addl	%eax, %eax	# tmp426
	leal	-25(%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.46
	addl	%edx, %eax	# D.4384, score.47
	movl	%eax, -276(%rbp)	# score.47, score
	.loc 1 265 0
	movl	-252(%rbp), %eax	# i, tmp428
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	cmpl	$2, %eax	#, D.4384
	jne	.L78	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.48
	subl	$50, %eax	#, score.49
	movl	%eax, -276(%rbp)	# score.49, score
.L78:
	.loc 1 267 0 is_stmt 1
	addl	$1, -220(%rbp)	#, bpassp
	.loc 1 270 0
	movl	-252(%rbp), %eax	# i, tmp430
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4384
	cmpl	$1, %eax	#, D.4384
	je	.L79	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# i, tmp432
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4384
	cmpl	$8, %eax	#, D.4384
	jne	.L80	#,
.L79:
	.loc 1 271 0 is_stmt 1
	movl	-252(%rbp), %eax	# i, tmp434
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4384
	subl	$9, %eax	#, D.4384
	leal	(%rax,%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.50
	addl	%edx, %eax	# D.4384, score.51
	movl	%eax, -276(%rbp)	# score.51, score
.L80:
	.loc 1 274 0
	cmpl	$0, -260(%rbp)	#, isolated
	jne	.L77	#,
	.loc 1 276 0
	movl	-276(%rbp), %eax	# score, score.52
	subl	$24, %eax	#, score.53
	movl	%eax, -276(%rbp)	# score.53, score
.L77:
	.loc 1 280 0
	movl	-264(%rbp), %eax	# pawn_file, tmp435
	subl	$1, %eax	#, D.4384
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4384
	testl	%eax, %eax	# D.4384
	jne	.L81	#,
	.loc 1 281 0
	movl	-276(%rbp), %eax	# score, score.54
	addl	$5, %eax	#, score.55
	movl	%eax, -276(%rbp)	# score.55, score
	.loc 1 283 0
	jmp	.L50	#
.L81:
	jmp	.L50	#
.L58:
	.loc 1 286 0
	addl	$1, -240(%rbp)	#, wp
	.loc 1 287 0
	movl	-252(%rbp), %eax	# i, tmp437
	movl	%eax, %edi	# tmp437,
	call	l_rook_mobility	#
	leal	0(,%rax,4), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.56
	addl	%edx, %eax	# D.4384, score.57
	movl	%eax, -276(%rbp)	# score.57, score
	.loc 1 288 0
	movl	-252(%rbp), %eax	# i, tmp439
	cltq
	movl	lcentral(,%rax,4), %edx	# lcentral, D.4384
	movl	-276(%rbp), %eax	# score, score.58
	addl	%edx, %eax	# D.4384, score.59
	movl	%eax, -276(%rbp)	# score.59, score
	.loc 1 289 0
	jmp	.L50	#
.L59:
	.loc 1 292 0
	addl	$1, -236(%rbp)	#, bp
	.loc 1 293 0
	movl	-276(%rbp), %ebx	# score, score.60
	movl	-252(%rbp), %eax	# i, tmp440
	movl	%eax, %edi	# tmp440,
	call	l_rook_mobility	#
	sall	$2, %eax	#, D.4384
	subl	%eax, %ebx	# D.4384, score.61
	movl	%ebx, %eax	# score.61, score.61
	movl	%eax, -276(%rbp)	# score.61, score
	.loc 1 294 0
	movl	-276(%rbp), %edx	# score, score.62
	movl	-252(%rbp), %eax	# i, tmp442
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	subl	%eax, %edx	# D.4384, score.63
	movl	%edx, %eax	# score.63, score.63
	movl	%eax, -276(%rbp)	# score.63, score
	.loc 1 295 0
	jmp	.L50	#
.L62:
	.loc 1 298 0
	addl	$1, -240(%rbp)	#, wp
	.loc 1 299 0
	movl	-252(%rbp), %eax	# i, tmp443
	movl	%eax, %edi	# tmp443,
	call	l_bishop_mobility	#
	leal	0(,%rax,4), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.64
	addl	%edx, %eax	# D.4384, score.65
	movl	%eax, -276(%rbp)	# score.65, score
	.loc 1 300 0
	movl	-252(%rbp), %eax	# i, tmp445
	cltq
	movl	lcentral(,%rax,4), %edx	# lcentral, D.4384
	movl	-276(%rbp), %eax	# score, score.66
	addl	%edx, %eax	# D.4384, score.67
	movl	%eax, -276(%rbp)	# score.67, score
	.loc 1 301 0
	jmp	.L50	#
.L63:
	.loc 1 304 0
	addl	$1, -236(%rbp)	#, bp
	.loc 1 305 0
	movl	-276(%rbp), %ebx	# score, score.68
	movl	-252(%rbp), %eax	# i, tmp446
	movl	%eax, %edi	# tmp446,
	call	l_bishop_mobility	#
	sall	$2, %eax	#, D.4384
	subl	%eax, %ebx	# D.4384, score.69
	movl	%ebx, %eax	# score.69, score.69
	movl	%eax, -276(%rbp)	# score.69, score
	.loc 1 306 0
	movl	-276(%rbp), %edx	# score, score.70
	movl	-252(%rbp), %eax	# i, tmp448
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	subl	%eax, %edx	# D.4384, score.71
	movl	%edx, %eax	# score.71, score.71
	movl	%eax, -276(%rbp)	# score.71, score
	.loc 1 307 0
	jmp	.L50	#
.L54:
	.loc 1 310 0
	addl	$1, -240(%rbp)	#, wp
	.loc 1 311 0
	movl	-252(%rbp), %eax	# i, tmp450
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	leal	(%rax,%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.72
	addl	%edx, %eax	# D.4384, score.73
	movl	%eax, -276(%rbp)	# score.73, score
	.loc 1 312 0
	movl	-252(%rbp), %eax	# i, tmp451
	movl	%eax, %edi	# tmp451,
	call	l_knight_mobility	#
	leal	0(,%rax,4), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.74
	addl	%edx, %eax	# D.4384, score.75
	movl	%eax, -276(%rbp)	# score.75, score
	.loc 1 313 0
	jmp	.L50	#
.L55:
	.loc 1 316 0
	addl	$1, -236(%rbp)	#, bp
	.loc 1 317 0
	movl	-276(%rbp), %edx	# score, score.76
	movl	-252(%rbp), %eax	# i, tmp453
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	addl	%eax, %eax	# D.4384
	subl	%eax, %edx	# D.4384, score.77
	movl	%edx, %eax	# score.77, score.77
	movl	%eax, -276(%rbp)	# score.77, score
	.loc 1 318 0
	movl	-276(%rbp), %ebx	# score, score.78
	movl	-252(%rbp), %eax	# i, tmp454
	movl	%eax, %edi	# tmp454,
	call	l_knight_mobility	#
	sall	$2, %eax	#, D.4384
	subl	%eax, %ebx	# D.4384, score.79
	movl	%ebx, %eax	# score.79, score.79
	movl	%eax, -276(%rbp)	# score.79, score
	.loc 1 319 0
	jmp	.L50	#
.L60:
	.loc 1 322 0
	addl	$1, -240(%rbp)	#, wp
	.loc 1 323 0
	movl	-252(%rbp), %eax	# i, tmp455
	movl	%eax, %edi	# tmp455,
	call	l_bishop_mobility	#
	leal	(%rax,%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.80
	addl	%edx, %eax	# D.4384, score.81
	movl	%eax, -276(%rbp)	# score.81, score
	.loc 1 324 0
	movl	-252(%rbp), %eax	# i, tmp456
	movl	%eax, %edi	# tmp456,
	call	l_rook_mobility	#
	leal	(%rax,%rax), %edx	#, D.4384
	movl	-276(%rbp), %eax	# score, score.82
	addl	%edx, %eax	# D.4384, score.83
	movl	%eax, -276(%rbp)	# score.83, score
	.loc 1 325 0
	movl	-252(%rbp), %eax	# i, tmp458
	cltq
	movl	lcentral(,%rax,4), %edx	# lcentral, D.4384
	movl	-276(%rbp), %eax	# score, score.84
	addl	%edx, %eax	# D.4384, score.85
	movl	%eax, -276(%rbp)	# score.85, score
	.loc 1 326 0
	jmp	.L50	#
.L61:
	.loc 1 329 0
	addl	$1, -236(%rbp)	#, bp
	.loc 1 330 0
	movl	-276(%rbp), %ebx	# score, score.86
	movl	-252(%rbp), %eax	# i, tmp459
	movl	%eax, %edi	# tmp459,
	call	l_bishop_mobility	#
	addl	%eax, %eax	# D.4384
	subl	%eax, %ebx	# D.4384, score.87
	movl	%ebx, %eax	# score.87, score.87
	movl	%eax, -276(%rbp)	# score.87, score
	.loc 1 331 0
	movl	-276(%rbp), %ebx	# score, score.88
	movl	-252(%rbp), %eax	# i, tmp460
	movl	%eax, %edi	# tmp460,
	call	l_rook_mobility	#
	addl	%eax, %eax	# D.4384
	subl	%eax, %ebx	# D.4384, score.89
	movl	%ebx, %eax	# score.89, score.89
	movl	%eax, -276(%rbp)	# score.89, score
	.loc 1 332 0
	movl	-276(%rbp), %edx	# score, score.90
	movl	-252(%rbp), %eax	# i, tmp462
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	subl	%eax, %edx	# D.4384, score.91
	movl	%edx, %eax	# score.91, score.91
	movl	%eax, -276(%rbp)	# score.91, score
	.loc 1 333 0
	jmp	.L50	#
.L56:
	.loc 1 337 0
	movl	-252(%rbp), %eax	# i, tmp464
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	addl	%eax, %eax	# tmp465
	movl	%eax, -232(%rbp)	# tmp465, wks
	.loc 1 338 0
	movl	-252(%rbp), %eax	# i, tmp466
	movl	%eax, %edi	# tmp466,
	call	l_king_mobility	#
	movl	-276(%rbp), %edx	# score, score.92
	addl	%edx, %eax	# score.92, score.93
	movl	%eax, -276(%rbp)	# score.93, score
	.loc 1 339 0
	jmp	.L50	#
.L57:
	.loc 1 343 0
	movl	-252(%rbp), %eax	# i, tmp468
	cltq
	movl	lcentral(,%rax,4), %eax	# lcentral, D.4384
	addl	%eax, %eax	# tmp469
	movl	%eax, -228(%rbp)	# tmp469, bks
	.loc 1 344 0
	movl	-276(%rbp), %ebx	# score, score.94
	movl	-252(%rbp), %eax	# i, tmp470
	movl	%eax, %edi	# tmp470,
	call	l_king_mobility	#
	subl	%eax, %ebx	# D.4384, score.95
	movl	%ebx, %eax	# score.95, score.95
	movl	%eax, -276(%rbp)	# score.95, score
	.loc 1 345 0
	nop
.L50:
	.loc 1 165 0
	addl	$1, -244(%rbp)	#, j
.L48:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.96
	cmpl	%eax, -248(%rbp)	# piece_count.96, a
	jle	.L82	#,
	.loc 1 349 0 is_stmt 1
	movl	-236(%rbp), %eax	# bp, tmp471
	movl	-240(%rbp), %edx	# wp, tmp472
	addl	%edx, %eax	# tmp472, D.4384
	cmpl	$10, %eax	#, D.4384
	jle	.L83	#,
	.loc 1 351 0
	movl	-232(%rbp), %eax	# wks, tmp473
	movl	-228(%rbp), %edx	# bks, tmp474
	subl	%eax, %edx	# tmp473, D.4384
	movl	-276(%rbp), %eax	# score, score.97
	addl	%edx, %eax	# D.4384, score.98
	movl	%eax, -276(%rbp)	# score.98, score
.L83:
	.loc 1 354 0
	movl	Material(%rip), %eax	# Material, Material.99
	cmpl	$-900, %eax	#, Material.99
	jl	.L84	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.100
	cmpl	$900, %eax	#, Material.100
	jg	.L84	#,
	.loc 1 356 0 is_stmt 1
	movl	-276(%rbp), %edx	# score, score.101
	movl	Material(%rip), %eax	# Material, Material.102
	addl	%edx, %eax	# score.101, score.103
	movl	%eax, -276(%rbp)	# score.103, score
	jmp	.L85	#
.L84:
	.loc 1 371 0
	movl	Material(%rip), %eax	# Material, Material.104
	testl	%eax, %eax	# Material.104
	jle	.L86	#,
	.loc 1 371 0 is_stmt 0 discriminator 1
	movl	comp_color(%rip), %eax	# comp_color, comp_color.105
	cmpl	$1, %eax	#, comp_color.105
	jne	.L86	#,
	cmpl	$0, -224(%rbp)	#, wpassp
	jne	.L86	#,
	.loc 1 373 0 is_stmt 1
	movl	Material(%rip), %eax	# Material, Material.106
	movl	$1800, %edx	#, tmp475
	subl	%eax, %edx	# Material.106, D.4384
	movl	-276(%rbp), %eax	# score, score.107
	addl	%edx, %eax	# D.4384, score.108
	movl	%eax, -276(%rbp)	# score.108, score
	jmp	.L85	#
.L86:
	.loc 1 375 0
	movl	Material(%rip), %eax	# Material, Material.109
	testl	%eax, %eax	# Material.109
	jns	.L87	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	comp_color(%rip), %eax	# comp_color, comp_color.110
	testl	%eax, %eax	# comp_color.110
	jne	.L87	#,
	cmpl	$0, -220(%rbp)	#, bpassp
	jne	.L87	#,
	.loc 1 377 0 is_stmt 1
	movl	Material(%rip), %eax	# Material, Material.111
	movl	$-1800, %edx	#, tmp476
	subl	%eax, %edx	# Material.111, D.4384
	movl	-276(%rbp), %eax	# score, score.112
	addl	%edx, %eax	# D.4384, score.113
	movl	%eax, -276(%rbp)	# score.113, score
	jmp	.L85	#
.L87:
	.loc 1 381 0
	movl	-276(%rbp), %edx	# score, score.114
	movl	Material(%rip), %eax	# Material, Material.115
	addl	%edx, %eax	# score.114, score.116
	movl	%eax, -276(%rbp)	# score.116, score
.L85:
	.loc 1 385 0
	cmpl	$0, -216(%rbp)	#, wpawns
	jne	.L88	#,
	.loc 1 385 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.117
	addl	$200, %eax	#, score.118
	movl	%eax, -276(%rbp)	# score.118, score
	jmp	.L89	#
.L88:
	.loc 1 386 0 is_stmt 1
	cmpl	$0, -212(%rbp)	#, bpawns
	jne	.L89	#,
	.loc 1 386 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# score, score.119
	subl	$200, %eax	#, score.120
	movl	%eax, -276(%rbp)	# score.120, score
.L89:
	.loc 1 388 0 is_stmt 1
	cmpl	$0, -240(%rbp)	#, wp
	jne	.L90	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movl	$1000000, -276(%rbp)	#, score
	jmp	.L91	#
.L90:
	.loc 1 389 0 is_stmt 1
	cmpl	$0, -236(%rbp)	#, bp
	jne	.L91	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movl	$-1000000, -276(%rbp)	#, score
.L91:
	.loc 1 391 0 is_stmt 1
	movl	-276(%rbp), %eax	# score, score.121
	movl	%eax, %edi	# score.121,
	call	storeECache	#
	.loc 1 394 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.122
	cmpl	$1, %eax	#, white_to_move.122
	jne	.L92	#,
	.loc 1 395 0
	movl	-276(%rbp), %eax	# score, D.4384
	jmp	.L93	#
.L92:
	.loc 1 398 0
	movl	-276(%rbp), %eax	# score, score.123
	negl	%eax	# D.4384
.L93:
	.loc 1 401 0
	addq	$280, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	losers_eval, .-losers_eval
	.section	.rodata
	.align 32
	.type	knight_o.3912, @object
	.size	knight_o.3912, 32
knight_o.3912:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	king_o.3925, @object
	.size	king_o.3925, 32
king_o.3925:
	.long	13
	.long	12
	.long	11
	.long	1
	.long	-1
	.long	-11
	.long	-12
	.long	-13
	.text
.Letext0:
	.file 2 "extvars.h"
	.file 3 "sjeng.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x42d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x1
	.long	.LASF44
	.long	.LASF45
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
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
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x1c
	.long	0x6c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x1c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x1e
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x1f
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x2d
	.long	0x6c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x122
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x2d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x2f
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x30
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x3f
	.long	0x6c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x3f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x41
	.long	0x18d
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.3912
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x42
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x42
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xa
	.long	0x6c
	.long	0x18d
	.uleb128 0xb
	.long	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x17d
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x4c
	.long	0x6c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x4c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x4e
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x5c
	.long	0x6c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x228
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x5c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x5e
	.long	0x228
	.uleb128 0x9
	.byte	0x3
	.quad	king_o.3925
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0xc
	.long	0x17d
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.byte	0x6a
	.long	0x6c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x373
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x6d
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x6d
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x6d
	.long	0x373
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x6d
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x6d
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x6e
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x6e
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x6f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x6f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x70
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x71
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x8
	.string	"wp"
	.byte	0x1
	.byte	0x72
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x8
	.string	"bp"
	.byte	0x1
	.byte	0x72
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x8
	.string	"wks"
	.byte	0x1
	.byte	0x73
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x8
	.string	"bks"
	.byte	0x1
	.byte	0x73
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x74
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x74
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x75
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x75
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0xa
	.long	0x6c
	.long	0x389
	.uleb128 0xb
	.long	0x7a
	.byte	0x1
	.uleb128 0xb
	.long	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x6c
	.long	0x399
	.uleb128 0xb
	.long	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x6c
	.long	0x3a9
	.uleb128 0xb
	.long	0x7a
	.byte	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0xe
	.long	0x399
	.uleb128 0x9
	.byte	0x3
	.quad	lcentral
	.uleb128 0xe
	.long	.LASF35
	.byte	0x2
	.byte	0xc
	.long	0x399
	.uleb128 0xe
	.long	.LASF36
	.byte	0x2
	.byte	0xc
	.long	0x6c
	.uleb128 0xe
	.long	.LASF37
	.byte	0x2
	.byte	0xe
	.long	0x6c
	.uleb128 0xe
	.long	.LASF38
	.byte	0x2
	.byte	0xe
	.long	0x6c
	.uleb128 0xa
	.long	0x6c
	.long	0x3fa
	.uleb128 0xb
	.long	0x7a
	.byte	0x3d
	.byte	0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x2
	.byte	0x2c
	.long	0x3ea
	.uleb128 0xe
	.long	.LASF40
	.byte	0x2
	.byte	0x4a
	.long	0x6c
	.uleb128 0xe
	.long	.LASF41
	.byte	0x2
	.byte	0x5e
	.long	0x41b
	.uleb128 0xc
	.long	0x399
	.uleb128 0xe
	.long	.LASF42
	.byte	0x2
	.byte	0x5e
	.long	0x42b
	.uleb128 0xc
	.long	0x399
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xe
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
.LASF0:
	.string	"FALSE"
.LASF42:
	.string	"Xfile"
.LASF22:
	.string	"pawn_file"
.LASF29:
	.string	"in_cache"
.LASF1:
	.string	"TRUE"
.LASF39:
	.string	"pieces"
.LASF30:
	.string	"wpassp"
.LASF13:
	.string	"l_bishop_mobility"
.LASF38:
	.string	"piece_count"
.LASF33:
	.string	"bpawns"
.LASF41:
	.string	"Xrank"
.LASF36:
	.string	"white_to_move"
.LASF28:
	.string	"score"
.LASF12:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF40:
	.string	"Material"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"isolated"
.LASF31:
	.string	"bpassp"
.LASF14:
	.string	"l_rook_mobility"
.LASF15:
	.string	"square"
.LASF24:
	.string	"white_back_pawn"
.LASF21:
	.string	"srank"
.LASF44:
	.string	"leval.c"
.LASF20:
	.string	"king_o"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"knight_o"
.LASF6:
	.string	"signed char"
.LASF37:
	.string	"comp_color"
.LASF9:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF45:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF10:
	.string	"char"
.LASF25:
	.string	"black_back_pawn"
.LASF43:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF7:
	.string	"short int"
.LASF34:
	.string	"lcentral"
.LASF19:
	.string	"l_king_mobility"
.LASF32:
	.string	"wpawns"
.LASF8:
	.string	"long int"
.LASF27:
	.string	"backwards"
.LASF35:
	.string	"board"
.LASF18:
	.string	"l_pawn_mobility"
.LASF46:
	.string	"losers_eval"
.LASF16:
	.string	"l_knight_mobility"
.LASF23:
	.string	"pawns"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
