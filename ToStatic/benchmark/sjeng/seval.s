	.file	"seval.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 seval.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	scentral, @object
	.size	scentral, 576
scentral:
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
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	2
	.long	15
	.long	15
	.long	15
	.long	15
	.long	2
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	7
	.long	15
	.long	25
	.long	25
	.long	15
	.long	7
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	7
	.long	15
	.long	25
	.long	25
	.long	15
	.long	7
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	2
	.long	15
	.long	15
	.long	15
	.long	15
	.long	2
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
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
	.section	.rodata
	.align 16
	.type	rook_o, @object
	.size	rook_o, 16
rook_o:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o, @object
	.size	bishop_o, 16
bishop_o:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o, @object
	.size	knight_o, 32
knight_o:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	king_o, @object
	.size	king_o, 32
king_o:
	.long	13
	.long	12
	.long	11
	.long	1
	.long	-1
	.long	-11
	.long	-12
	.long	-13
	.text
	.type	s_bishop_mobility, @function
s_bishop_mobility:
.LFB2:
	.file 1 "seval.c"
	.loc 1 34 0
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
	.loc 1 36 0
	movl	$0, %r12d	#, m
	.loc 1 38 0
	movl	-20(%rbp), %eax	# square, tmp67
	leal	-13(%rax), %ebx	#, l
	jmp	.L2	#
.L3:
	.loc 1 39 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 38 0 discriminator 2
	subl	$13, %ebx	#, l
.L2:
	.loc 1 38 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp68
	movl	board(,%rax,4), %eax	# board, D.4467
	cmpl	$13, %eax	#, D.4467
	je	.L3	#,
	.loc 1 40 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp69
	leal	-11(%rax), %ebx	#, l
	jmp	.L4	#
.L5:
	.loc 1 41 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 40 0 discriminator 2
	subl	$11, %ebx	#, l
.L4:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.4467
	cmpl	$13, %eax	#, D.4467
	je	.L5	#,
	.loc 1 42 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp71
	leal	11(%rax), %ebx	#, l
	jmp	.L6	#
.L7:
	.loc 1 43 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 42 0 discriminator 2
	addl	$11, %ebx	#, l
.L6:
	.loc 1 42 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp72
	movl	board(,%rax,4), %eax	# board, D.4467
	cmpl	$13, %eax	#, D.4467
	je	.L7	#,
	.loc 1 44 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp73
	leal	13(%rax), %ebx	#, l
	jmp	.L8	#
.L9:
	.loc 1 45 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 44 0 discriminator 2
	addl	$13, %ebx	#, l
.L8:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp74
	movl	board(,%rax,4), %eax	# board, D.4467
	cmpl	$13, %eax	#, D.4467
	je	.L9	#,
	.loc 1 47 0 is_stmt 1
	leal	0(,%r12,4), %eax	#, D.4467
	.loc 1 48 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	s_bishop_mobility, .-s_bishop_mobility
	.type	s_rook_mobility, @function
s_rook_mobility:
.LFB3:
	.loc 1 51 0
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
	.loc 1 53 0
	movl	$0, %r12d	#, m
	.loc 1 55 0
	movl	-20(%rbp), %eax	# square, tmp67
	leal	-12(%rax), %ebx	#, l
	jmp	.L12	#
.L13:
	.loc 1 56 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 55 0 discriminator 2
	subl	$12, %ebx	#, l
.L12:
	.loc 1 55 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp68
	movl	board(,%rax,4), %eax	# board, D.4468
	cmpl	$13, %eax	#, D.4468
	je	.L13	#,
	.loc 1 57 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp69
	leal	-1(%rax), %ebx	#, l
	jmp	.L14	#
.L15:
	.loc 1 58 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 57 0 discriminator 2
	subl	$1, %ebx	#, l
.L14:
	.loc 1 57 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.4468
	cmpl	$13, %eax	#, D.4468
	je	.L15	#,
	.loc 1 59 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp71
	leal	1(%rax), %ebx	#, l
	jmp	.L16	#
.L17:
	.loc 1 60 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 59 0 discriminator 2
	addl	$1, %ebx	#, l
.L16:
	.loc 1 59 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp72
	movl	board(,%rax,4), %eax	# board, D.4468
	cmpl	$13, %eax	#, D.4468
	je	.L17	#,
	.loc 1 61 0 is_stmt 1
	movl	-20(%rbp), %eax	# square, tmp73
	leal	12(%rax), %ebx	#, l
	jmp	.L18	#
.L19:
	.loc 1 62 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 61 0 discriminator 2
	addl	$12, %ebx	#, l
.L18:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# l, tmp74
	movl	board(,%rax,4), %eax	# board, D.4468
	cmpl	$13, %eax	#, D.4468
	je	.L19	#,
	.loc 1 64 0 is_stmt 1
	leal	0(,%r12,4), %eax	#, D.4468
	.loc 1 65 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	s_rook_mobility, .-s_rook_mobility
	.type	s_knight_mobility, @function
s_knight_mobility:
.LFB4:
	.loc 1 68 0
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
	.loc 1 69 0
	movl	$0, %r12d	#, m
	.loc 1 71 0
	movl	$0, %ebx	#, d
	jmp	.L22	#
.L24:
	.loc 1 73 0
	movslq	%ebx, %rax	# d, tmp66
	movl	knight_o(,%rax,4), %edx	# knight_o, D.4469
	movl	-20(%rbp), %eax	# square, tmp67
	addl	%edx, %eax	# D.4469, D.4469
	cltq
	movl	board(,%rax,4), %eax	# board, D.4469
	cmpl	$13, %eax	#, D.4469
	jne	.L23	#,
	.loc 1 73 0 is_stmt 0 discriminator 1
	addl	$1, %r12d	#, m
.L23:
	.loc 1 71 0 is_stmt 1
	addl	$1, %ebx	#, d
.L22:
	.loc 1 71 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, d
	jle	.L24	#,
	.loc 1 76 0 is_stmt 1
	leal	0(,%r12,4), %eax	#, D.4469
	.loc 1 77 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	s_knight_mobility, .-s_knight_mobility
	.type	s_pawn_mobility, @function
s_pawn_mobility:
.LFB5:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# square, square
	.loc 1 81 0
	movl	$0, %ebx	#, m
	.loc 1 83 0
	movl	-12(%rbp), %eax	# square, tmp68
	cltq
	movl	board(,%rax,4), %eax	# board, D.4470
	cmpl	$1, %eax	#, D.4470
	jne	.L27	#,
	.loc 1 85 0
	movl	-12(%rbp), %eax	# square, tmp69
	addl	$12, %eax	#, D.4470
	cltq
	movl	board(,%rax,4), %eax	# board, D.4470
	cmpl	$13, %eax	#, D.4470
	jne	.L29	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	addl	$1, %ebx	#, m
	jmp	.L29	#
.L27:
	.loc 1 89 0 is_stmt 1
	movl	-12(%rbp), %eax	# square, tmp71
	subl	$12, %eax	#, D.4470
	cltq
	movl	board(,%rax,4), %eax	# board, D.4470
	cmpl	$13, %eax	#, D.4470
	jne	.L29	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	addl	$1, %ebx	#, m
.L29:
	.loc 1 92 0 is_stmt 1
	leal	0(,%rbx,8), %eax	#, D.4470
	.loc 1 93 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	s_pawn_mobility, .-s_pawn_mobility
	.type	s_king_mobility, @function
s_king_mobility:
.LFB6:
	.loc 1 96 0
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
	.loc 1 97 0
	movl	$0, %r12d	#, m
	.loc 1 99 0
	movl	$0, %ebx	#, d
	jmp	.L32	#
.L34:
	.loc 1 101 0
	movslq	%ebx, %rax	# d, tmp66
	movl	king_o(,%rax,4), %edx	# king_o, D.4471
	movl	-20(%rbp), %eax	# square, tmp67
	addl	%edx, %eax	# D.4471, D.4471
	cltq
	movl	board(,%rax,4), %eax	# board, D.4471
	cmpl	$13, %eax	#, D.4471
	jne	.L33	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	addl	$1, %r12d	#, m
.L33:
	.loc 1 99 0 is_stmt 1
	addl	$1, %ebx	#, d
.L32:
	.loc 1 99 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, d
	jle	.L34	#,
	.loc 1 104 0 is_stmt 1
	leal	0(,%r12,4), %eax	#, D.4471
	.loc 1 105 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	s_king_mobility, .-s_king_mobility
	.type	black_saccers, @function
black_saccers:
.LFB7:
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 109 0
	movl	$0, %ebx	#, f
	.loc 1 117 0
	movl	-20(%rbp), %eax	# square, tmp88
	addl	$24, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	cmpl	$2, %eax	#, D.4472
	je	.L37	#,
	.loc 1 118 0 discriminator 1
	movl	-20(%rbp), %eax	# square, tmp90
	addl	$22, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	.loc 1 117 0 discriminator 1
	cmpl	$2, %eax	#, D.4472
	je	.L37	#,
	.loc 1 119 0
	movl	-20(%rbp), %eax	# square, tmp92
	addl	$26, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	.loc 1 118 0
	cmpl	$2, %eax	#, D.4472
	jne	.L38	#,
.L37:
	.loc 1 121 0
	movl	$0, %eax	#, D.4472
	jmp	.L39	#
.L38:
	.loc 1 126 0
	movl	-20(%rbp), %eax	# square, tmp95
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4472
	cmpl	$5, %eax	#, D.4472
	jg	.L40	#,
	.loc 1 127 0
	movl	-20(%rbp), %eax	# square, tmp96
	addl	$25, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	cmpl	$2, %eax	#, D.4472
	je	.L41	#,
	.loc 1 129 0
	movl	-20(%rbp), %eax	# square, tmp98
	addl	$23, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	.loc 1 128 0
	cmpl	$2, %eax	#, D.4472
	jne	.L40	#,
.L41:
	.loc 1 131 0
	movl	$1, %ebx	#, f
	jmp	.L42	#
.L40:
	.loc 1 133 0
	movl	-20(%rbp), %eax	# square, tmp101
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4472
	cmpl	$4, %eax	#, D.4472
	jne	.L42	#,
	.loc 1 134 0 discriminator 1
	movl	-20(%rbp), %eax	# square, tmp102
	addl	$35, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	.loc 1 133 0 discriminator 1
	cmpl	$2, %eax	#, D.4472
	je	.L43	#,
	.loc 1 135 0
	movl	-20(%rbp), %eax	# square, tmp104
	addl	$37, %eax	#, D.4472
	cltq
	movl	board(,%rax,4), %eax	# board, D.4472
	.loc 1 134 0
	cmpl	$2, %eax	#, D.4472
	jne	.L42	#,
.L43:
	.loc 1 137 0
	movl	$1, %ebx	#, f
.L42:
	.loc 1 140 0
	testl	%ebx, %ebx	# f
	jne	.L44	#,
	.loc 1 142 0
	movl	-20(%rbp), %eax	# square, tmp106
	addl	$11, %eax	#, D.4472
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4472,
	call	is_attacked	#
	testl	%eax, %eax	# D.4473
	setne	%al	#, D.4474
	movzbl	%al, %ebx	# D.4474, f
.L44:
	.loc 1 144 0
	testl	%ebx, %ebx	# f
	jne	.L45	#,
	.loc 1 146 0
	movl	-20(%rbp), %eax	# square, tmp107
	addl	$13, %eax	#, D.4472
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4472,
	call	is_attacked	#
	testl	%eax, %eax	# D.4473
	je	.L46	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.0
	jmp	.L47	#
.L46:
	.loc 1 146 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L47:
	.loc 1 146 0 discriminator 3
	movl	%eax, %ebx	# iftmp.0, f
.L45:
	.loc 1 149 0 is_stmt 1
	testl	%ebx, %ebx	# f
	jne	.L48	#,
	.loc 1 151 0
	movl	$0, %eax	#, D.4472
	jmp	.L39	#
.L48:
	.loc 1 157 0
	cmpl	$1, %ebx	#, f
	jne	.L49	#,
	.loc 1 159 0
	movl	-20(%rbp), %eax	# square, tmp108
	addl	$11, %eax	#, D.4472
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4472,
	call	calc_attackers	#
	cmpl	$1, %eax	#, D.4472
	jle	.L50	#,
	.loc 1 162 0
	movl	$0, %eax	#, D.4472
	jmp	.L39	#
.L50:
	.loc 1 167 0
	movl	$30, %eax	#, D.4472
	jmp	.L39	#
.L49:
	.loc 1 172 0
	movl	-20(%rbp), %eax	# square, tmp109
	addl	$13, %eax	#, D.4472
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4472,
	call	calc_attackers	#
	cmpl	$1, %eax	#, D.4472
	jle	.L51	#,
	.loc 1 174 0
	movl	$0, %eax	#, D.4472
	jmp	.L39	#
.L51:
	.loc 1 178 0
	movl	$30, %eax	#, D.4472
.L39:
	.loc 1 184 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	black_saccers, .-black_saccers
	.type	white_saccers, @function
white_saccers:
.LFB8:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# square, square
	.loc 1 191 0
	movl	$0, %ebx	#, f
	.loc 1 199 0
	movl	-20(%rbp), %eax	# square, tmp88
	subl	$24, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	cmpl	$1, %eax	#, D.4475
	je	.L53	#,
	.loc 1 200 0 discriminator 1
	movl	-20(%rbp), %eax	# square, tmp90
	subl	$22, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	.loc 1 199 0 discriminator 1
	cmpl	$1, %eax	#, D.4475
	je	.L53	#,
	.loc 1 201 0
	movl	-20(%rbp), %eax	# square, tmp92
	subl	$26, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	.loc 1 200 0
	cmpl	$1, %eax	#, D.4475
	jne	.L54	#,
.L53:
	.loc 1 203 0
	movl	$0, %eax	#, D.4475
	jmp	.L55	#
.L54:
	.loc 1 208 0
	movl	-20(%rbp), %eax	# square, tmp95
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4475
	cmpl	$3, %eax	#, D.4475
	jle	.L56	#,
	.loc 1 209 0
	movl	-20(%rbp), %eax	# square, tmp96
	subl	$25, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	cmpl	$1, %eax	#, D.4475
	je	.L57	#,
	.loc 1 211 0
	movl	-20(%rbp), %eax	# square, tmp98
	subl	$23, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	.loc 1 210 0
	cmpl	$1, %eax	#, D.4475
	jne	.L56	#,
.L57:
	.loc 1 213 0
	movl	$1, %ebx	#, f
	jmp	.L58	#
.L56:
	.loc 1 215 0
	movl	-20(%rbp), %eax	# square, tmp101
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4475
	cmpl	$5, %eax	#, D.4475
	jne	.L58	#,
	.loc 1 216 0 discriminator 1
	movl	-20(%rbp), %eax	# square, tmp102
	subl	$35, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	.loc 1 215 0 discriminator 1
	cmpl	$1, %eax	#, D.4475
	je	.L59	#,
	.loc 1 217 0
	movl	-20(%rbp), %eax	# square, tmp104
	subl	$37, %eax	#, D.4475
	cltq
	movl	board(,%rax,4), %eax	# board, D.4475
	.loc 1 216 0
	cmpl	$1, %eax	#, D.4475
	jne	.L58	#,
.L59:
	.loc 1 219 0
	movl	$1, %ebx	#, f
.L58:
	.loc 1 222 0
	testl	%ebx, %ebx	# f
	jne	.L60	#,
	.loc 1 224 0
	movl	-20(%rbp), %eax	# square, tmp106
	subl	$11, %eax	#, D.4475
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4475,
	call	is_attacked	#
	testl	%eax, %eax	# D.4476
	setne	%al	#, D.4477
	movzbl	%al, %ebx	# D.4477, f
.L60:
	.loc 1 226 0
	testl	%ebx, %ebx	# f
	jne	.L61	#,
	.loc 1 228 0
	movl	-20(%rbp), %eax	# square, tmp107
	subl	$13, %eax	#, D.4475
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4475,
	call	is_attacked	#
	testl	%eax, %eax	# D.4476
	je	.L62	#,
	.loc 1 228 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.1
	jmp	.L63	#
.L62:
	.loc 1 228 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L63:
	.loc 1 228 0 discriminator 3
	movl	%eax, %ebx	# iftmp.1, f
.L61:
	.loc 1 231 0 is_stmt 1
	testl	%ebx, %ebx	# f
	jne	.L64	#,
	.loc 1 233 0
	movl	$0, %eax	#, D.4475
	jmp	.L55	#
.L64:
	.loc 1 239 0
	cmpl	$1, %ebx	#, f
	jne	.L65	#,
	.loc 1 241 0
	movl	-20(%rbp), %eax	# square, tmp108
	subl	$11, %eax	#, D.4475
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4475,
	call	calc_attackers	#
	cmpl	$1, %eax	#, D.4475
	jle	.L66	#,
	.loc 1 244 0
	movl	$0, %eax	#, D.4475
	jmp	.L55	#
.L66:
	.loc 1 249 0
	movl	$30, %eax	#, D.4475
	jmp	.L55	#
.L65:
	.loc 1 254 0
	movl	-20(%rbp), %eax	# square, tmp109
	subl	$13, %eax	#, D.4475
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4475,
	call	calc_attackers	#
	cmpl	$1, %eax	#, D.4475
	jle	.L67	#,
	.loc 1 256 0
	movl	$0, %eax	#, D.4475
	jmp	.L55	#
.L67:
	.loc 1 260 0
	movl	$30, %eax	#, D.4475
.L55:
	.loc 1 266 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	white_saccers, .-white_saccers
	.globl	suicide_eval
	.type	suicide_eval, @function
suicide_eval:
.LFB9:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 271 0
	call	suicide_mid_eval	#
	.loc 1 272 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	suicide_eval, .-suicide_eval
	.globl	suicide_mid_eval
	.type	suicide_mid_eval, @function
suicide_mid_eval:
.LFB10:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$296, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 280 0
	movl	$0, -292(%rbp)	#, score
	.loc 1 282 0
	movl	$0, -264(%rbp)	#, wb
	movl	$0, -260(%rbp)	#, bb
	movl	$0, -256(%rbp)	#, wbc
	movl	$0, -252(%rbp)	#, bbc
	.loc 1 283 0
	movl	$0, -248(%rbp)	#, wk
	movl	$0, -244(%rbp)	#, bk
	movl	$0, -240(%rbp)	#, wr
	movl	$0, -236(%rbp)	#, br
	.loc 1 284 0
	movl	$0, -232(%rbp)	#, wn
	movl	$0, -228(%rbp)	#, bn
	movl	$0, -224(%rbp)	#, wp
	movl	$0, -220(%rbp)	#, bp
	.loc 1 286 0
	movl	$0, -288(%rbp)	#, in_cache
	.loc 1 288 0
	leaq	-288(%rbp), %rdx	#, tmp270
	leaq	-292(%rbp), %rax	#, tmp271
	movq	%rdx, %rsi	# tmp270,
	movq	%rax, %rdi	# tmp271,
	call	checkECache	#
	.loc 1 290 0
	movl	-288(%rbp), %eax	# in_cache, in_cache.2
	testl	%eax, %eax	# in_cache.2
	je	.L71	#,
	.loc 1 292 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.3
	cmpl	$1, %eax	#, white_to_move.3
	jne	.L72	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# score, D.4479
	jmp	.L119	#
.L72:
	.loc 1 293 0 is_stmt 1
	movl	-292(%rbp), %eax	# score, score.4
	negl	%eax	# D.4479
	jmp	.L119	#
.L71:
	.loc 1 296 0
	movl	Material(%rip), %eax	# Material, Material.5
	movl	%eax, -292(%rbp)	# Material.5, score
	.loc 1 301 0
	leaq	-112(%rbp), %rax	#, tmp272
	movl	$88, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp272,
	call	memset	#
	.loc 1 302 0
	movl	$0, -276(%rbp)	#, i
	jmp	.L74	#
.L75:
	.loc 1 303 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp274
	cltq
	movl	$7, -208(%rbp,%rax,4)	#, white_back_pawn
	.loc 1 304 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp276
	cltq
	movl	$2, -160(%rbp,%rax,4)	#, black_back_pawn
	.loc 1 302 0 discriminator 2
	addl	$1, -276(%rbp)	#, i
.L74:
	.loc 1 302 0 is_stmt 0 discriminator 1
	cmpl	$10, -276(%rbp)	#, i
	jle	.L75	#,
	.loc 1 306 0 is_stmt 1
	movl	$1, -268(%rbp)	#, j
	movl	$1, -272(%rbp)	#, a
	jmp	.L76	#
.L81:
	.loc 1 307 0
	movl	-268(%rbp), %eax	# j, tmp278
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp279
	movl	%eax, -276(%rbp)	# tmp279, i
	.loc 1 309 0
	cmpl	$0, -276(%rbp)	#, i
	jne	.L77	#,
	.loc 1 310 0
	jmp	.L78	#
.L77:
	.loc 1 312 0
	addl	$1, -272(%rbp)	#, a
	.loc 1 316 0
	movl	-276(%rbp), %eax	# i, tmp281
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	addl	$1, %eax	#, tmp282
	movl	%eax, -216(%rbp)	# tmp282, pawn_file
	.loc 1 317 0
	movl	-276(%rbp), %eax	# i, tmp284
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp285
	movl	%eax, -212(%rbp)	# tmp285, srank
	.loc 1 318 0
	movl	-276(%rbp), %eax	# i, tmp287
	cltq
	movl	board(,%rax,4), %eax	# board, D.4479
	cmpl	$1, %eax	#, D.4479
	jne	.L79	#,
	.loc 1 319 0
	movl	-216(%rbp), %eax	# pawn_file, tmp289
	cltq
	addq	$11, %rax	#, tmp290
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	leal	1(%rax), %edx	#, D.4479
	movl	-216(%rbp), %eax	# pawn_file, tmp292
	cltq
	addq	$11, %rax	#, tmp293
	movl	%edx, -112(%rbp,%rax,4)	# D.4479, pawns
	.loc 1 320 0
	movl	-216(%rbp), %eax	# pawn_file, tmp295
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jle	.L78	#,
	.loc 1 321 0
	movl	-216(%rbp), %eax	# pawn_file, tmp297
	cltq
	movl	-212(%rbp), %edx	# srank, tmp298
	movl	%edx, -208(%rbp,%rax,4)	# tmp298, white_back_pawn
	jmp	.L78	#
.L79:
	.loc 1 324 0
	movl	-276(%rbp), %eax	# i, tmp300
	cltq
	movl	board(,%rax,4), %eax	# board, D.4479
	cmpl	$2, %eax	#, D.4479
	jne	.L78	#,
	.loc 1 325 0
	movl	-216(%rbp), %eax	# pawn_file, tmp302
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	leal	1(%rax), %edx	#, D.4479
	movl	-216(%rbp), %eax	# pawn_file, tmp304
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.4479, pawns
	.loc 1 326 0
	movl	-216(%rbp), %eax	# pawn_file, tmp306
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jge	.L78	#,
	.loc 1 327 0
	movl	-216(%rbp), %eax	# pawn_file, tmp308
	cltq
	movl	-212(%rbp), %edx	# srank, tmp309
	movl	%edx, -160(%rbp,%rax,4)	# tmp309, black_back_pawn
.L78:
	.loc 1 306 0
	addl	$1, -268(%rbp)	#, j
.L76:
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.6
	cmpl	%eax, -272(%rbp)	# piece_count.6, a
	jle	.L81	#,
	.loc 1 334 0 is_stmt 1
	movl	$1, -268(%rbp)	#, j
	movl	$1, -272(%rbp)	#, a
	jmp	.L82	#
.L116:
	.loc 1 335 0
	movl	-268(%rbp), %eax	# j, tmp311
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp312
	movl	%eax, -276(%rbp)	# tmp312, i
	.loc 1 337 0
	cmpl	$0, -276(%rbp)	#, i
	jne	.L83	#,
	.loc 1 338 0
	jmp	.L84	#
.L83:
	.loc 1 340 0
	addl	$1, -272(%rbp)	#, a
	.loc 1 342 0
	movl	-276(%rbp), %eax	# i, tmp314
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	addl	$1, %eax	#, tmp315
	movl	%eax, -216(%rbp)	# tmp315, pawn_file
	.loc 1 343 0
	movl	-276(%rbp), %eax	# i, tmp317
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp318
	movl	%eax, -212(%rbp)	# tmp318, srank
	.loc 1 344 0
	movl	-276(%rbp), %eax	# i, tmp320
	cltq
	movl	board(,%rax,4), %eax	# board, D.4479
	cmpl	$12, %eax	#, D.4479
	ja	.L84	#,
	movl	%eax, %eax	# D.4479, tmp321
	movq	.L86(,%rax,8), %rax	#, tmp322
	jmp	*%rax	# tmp322
	.section	.rodata
	.align 8
	.align 4
.L86:
	.quad	.L84
	.quad	.L85
	.quad	.L87
	.quad	.L88
	.quad	.L89
	.quad	.L90
	.quad	.L91
	.quad	.L92
	.quad	.L93
	.quad	.L94
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.text
.L85:
	.loc 1 346 0
	movl	-276(%rbp), %eax	# i, tmp324
	cltq
	movl	scentral(,%rax,4), %edx	# scentral, D.4479
	movl	-292(%rbp), %eax	# score, score.7
	addl	%edx, %eax	# D.4479, score.8
	movl	%eax, -292(%rbp)	# score.8, score
	.loc 1 347 0
	movl	-276(%rbp), %eax	# i, tmp325
	movl	%eax, %edi	# tmp325,
	call	s_pawn_mobility	#
	movl	-292(%rbp), %edx	# score, score.9
	addl	%edx, %eax	# score.9, score.10
	movl	%eax, -292(%rbp)	# score.10, score
	.loc 1 348 0
	movl	-292(%rbp), %ebx	# score, score.11
	movl	-276(%rbp), %eax	# i, tmp326
	movl	%eax, %edi	# tmp326,
	call	black_saccers	#
	subl	%eax, %ebx	# D.4479, score.12
	movl	%ebx, %eax	# score.12, score.12
	movl	%eax, -292(%rbp)	# score.12, score
	.loc 1 349 0
	addl	$1, -224(%rbp)	#, wp
	.loc 1 350 0
	movl	$0, -284(%rbp)	#, isolated
	.loc 1 351 0
	movl	$0, -280(%rbp)	#, backwards
	.loc 1 354 0
	movl	-216(%rbp), %eax	# pawn_file, tmp327
	addl	$1, %eax	#, D.4479
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jle	.L98	#,
	.loc 1 355 0
	movl	-216(%rbp), %eax	# pawn_file, tmp329
	subl	$1, %eax	#, D.4479
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jle	.L98	#,
	.loc 1 356 0
	movl	-292(%rbp), %eax	# score, score.13
	subl	$8, %eax	#, score.14
	movl	%eax, -292(%rbp)	# score.14, score
	.loc 1 357 0
	movl	$1, -280(%rbp)	#, backwards
	.loc 1 359 0
	movl	-216(%rbp), %eax	# pawn_file, tmp331
	addl	$1, %eax	#, D.4479
	cltq
	addq	$11, %rax	#, tmp333
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L98	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp334
	subl	$1, %eax	#, D.4479
	cltq
	addq	$11, %rax	#, tmp336
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L98	#,
	.loc 1 360 0 is_stmt 1
	movl	-292(%rbp), %eax	# score, score.15
	subl	$12, %eax	#, score.16
	movl	%eax, -292(%rbp)	# score.16, score
	.loc 1 361 0
	movl	$1, -284(%rbp)	#, isolated
.L98:
	.loc 1 365 0
	movl	-216(%rbp), %eax	# pawn_file, tmp338
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L99	#,
	.loc 1 366 0
	cmpl	$0, -280(%rbp)	#, backwards
	je	.L100	#,
	.loc 1 366 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# score, score.17
	subl	$5, %eax	#, score.18
	movl	%eax, -292(%rbp)	# score.18, score
.L100:
	.loc 1 367 0 is_stmt 1
	cmpl	$0, -284(%rbp)	#, isolated
	je	.L99	#,
	.loc 1 367 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# score, score.19
	subl	$8, %eax	#, score.20
	movl	%eax, -292(%rbp)	# score.20, score
.L99:
	.loc 1 370 0 is_stmt 1
	movl	-216(%rbp), %eax	# pawn_file, tmp340
	cltq
	addq	$11, %rax	#, tmp341
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	cmpl	$1, %eax	#, D.4479
	jle	.L101	#,
	.loc 1 371 0
	movl	-216(%rbp), %eax	# pawn_file, tmp343
	cltq
	addq	$11, %rax	#, tmp344
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	movl	$1, %edx	#, tmp345
	subl	%eax, %edx	# D.4479, D.4479
	movl	%edx, %eax	# D.4479, tmp346
	sall	$4, %eax	#, tmp347
	subl	%edx, %eax	# D.4479, D.4479
	movl	%eax, %edx	# D.4479, D.4479
	movl	-292(%rbp), %eax	# score, score.21
	addl	%edx, %eax	# D.4479, score.22
	movl	%eax, -292(%rbp)	# score.22, score
.L101:
	.loc 1 373 0
	movl	-216(%rbp), %eax	# pawn_file, tmp349
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L102	#,
	.loc 1 373 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp350
	subl	$1, %eax	#, D.4479
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jg	.L102	#,
	.loc 1 374 0 is_stmt 1 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp352
	addl	$1, %eax	#, D.4479
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4479
	.loc 1 373 0 discriminator 1
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jg	.L102	#,
	.loc 1 375 0
	movl	-276(%rbp), %eax	# i, tmp355
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4479
	leal	-2(%rax), %edx	#, D.4479
	movl	%edx, %eax	# D.4479, tmp356
	addl	%eax, %eax	# tmp356
	addl	%edx, %eax	# D.4479, D.4479
	leal	30(%rax), %edx	#, D.4479
	movl	-292(%rbp), %eax	# score, score.23
	addl	%edx, %eax	# D.4479, score.24
	movl	%eax, -292(%rbp)	# score.24, score
	.loc 1 378 0
	movl	-276(%rbp), %eax	# i, tmp358
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	cmpl	$1, %eax	#, D.4479
	je	.L103	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# i, tmp360
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	cmpl	$8, %eax	#, D.4479
	jne	.L104	#,
.L103:
	.loc 1 379 0 is_stmt 1
	movl	-276(%rbp), %eax	# i, tmp362
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4479
	leal	(%rax,%rax), %edx	#, D.4479
	movl	-292(%rbp), %eax	# score, score.25
	addl	%edx, %eax	# D.4479, score.26
	movl	%eax, -292(%rbp)	# score.26, score
.L104:
	.loc 1 382 0
	cmpl	$0, -284(%rbp)	#, isolated
	jne	.L102	#,
	.loc 1 384 0
	movl	-292(%rbp), %eax	# score, score.27
	addl	$6, %eax	#, score.28
	movl	%eax, -292(%rbp)	# score.28, score
.L102:
	.loc 1 389 0
	movl	-216(%rbp), %eax	# pawn_file, tmp363
	subl	$1, %eax	#, D.4479
	cltq
	addq	$11, %rax	#, tmp365
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L105	#,
	.loc 1 390 0
	movl	-292(%rbp), %eax	# score, score.29
	subl	$20, %eax	#, score.30
	movl	%eax, -292(%rbp)	# score.30, score
	.loc 1 392 0
	jmp	.L84	#
.L105:
	jmp	.L84	#
.L87:
	.loc 1 395 0
	movl	-292(%rbp), %edx	# score, score.31
	movl	-276(%rbp), %eax	# i, tmp367
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	subl	%eax, %edx	# D.4479, score.32
	movl	%edx, %eax	# score.32, score.32
	movl	%eax, -292(%rbp)	# score.32, score
	.loc 1 396 0
	movl	-292(%rbp), %ebx	# score, score.33
	movl	-276(%rbp), %eax	# i, tmp368
	movl	%eax, %edi	# tmp368,
	call	s_pawn_mobility	#
	subl	%eax, %ebx	# D.4479, score.34
	movl	%ebx, %eax	# score.34, score.34
	movl	%eax, -292(%rbp)	# score.34, score
	.loc 1 397 0
	movl	-276(%rbp), %eax	# i, tmp369
	movl	%eax, %edi	# tmp369,
	call	white_saccers	#
	movl	-292(%rbp), %edx	# score, score.35
	addl	%edx, %eax	# score.35, score.36
	movl	%eax, -292(%rbp)	# score.36, score
	.loc 1 398 0
	movl	$0, -284(%rbp)	#, isolated
	.loc 1 399 0
	movl	$0, -280(%rbp)	#, backwards
	.loc 1 400 0
	addl	$1, -220(%rbp)	#, bp
	.loc 1 402 0
	movl	-216(%rbp), %eax	# pawn_file, tmp370
	addl	$1, %eax	#, D.4479
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jge	.L106	#,
	.loc 1 403 0
	movl	-216(%rbp), %eax	# pawn_file, tmp372
	subl	$1, %eax	#, D.4479
	cltq
	movl	-160(%rbp,%rax,4), %eax	# black_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jge	.L106	#,
	.loc 1 404 0
	movl	-292(%rbp), %eax	# score, score.37
	addl	$8, %eax	#, score.38
	movl	%eax, -292(%rbp)	# score.38, score
	.loc 1 405 0
	movl	$1, -280(%rbp)	#, backwards
	.loc 1 407 0
	movl	-216(%rbp), %eax	# pawn_file, tmp374
	addl	$1, %eax	#, D.4479
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L106	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp376
	subl	$1, %eax	#, D.4479
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L106	#,
	.loc 1 408 0 is_stmt 1
	movl	-292(%rbp), %eax	# score, score.39
	addl	$12, %eax	#, score.40
	movl	%eax, -292(%rbp)	# score.40, score
	.loc 1 409 0
	movl	$1, -284(%rbp)	#, isolated
.L106:
	.loc 1 413 0
	movl	-216(%rbp), %eax	# pawn_file, tmp379
	cltq
	addq	$11, %rax	#, tmp380
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L107	#,
	.loc 1 414 0
	cmpl	$0, -280(%rbp)	#, backwards
	je	.L108	#,
	.loc 1 414 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# score, score.41
	addl	$5, %eax	#, score.42
	movl	%eax, -292(%rbp)	# score.42, score
.L108:
	.loc 1 415 0 is_stmt 1
	cmpl	$0, -284(%rbp)	#, isolated
	je	.L107	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# score, score.43
	addl	$8, %eax	#, score.44
	movl	%eax, -292(%rbp)	# score.44, score
.L107:
	.loc 1 418 0 is_stmt 1
	movl	-216(%rbp), %eax	# pawn_file, tmp382
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	cmpl	$1, %eax	#, D.4479
	jle	.L109	#,
	.loc 1 419 0
	movl	-216(%rbp), %eax	# pawn_file, tmp384
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	leal	-1(%rax), %edx	#, D.4479
	movl	%edx, %eax	# D.4479, tmp385
	sall	$4, %eax	#, tmp386
	subl	%edx, %eax	# D.4479, D.4479
	movl	%eax, %edx	# D.4479, D.4479
	movl	-292(%rbp), %eax	# score, score.45
	addl	%edx, %eax	# D.4479, score.46
	movl	%eax, -292(%rbp)	# score.46, score
.L109:
	.loc 1 421 0
	movl	-216(%rbp), %eax	# pawn_file, tmp388
	cltq
	addq	$11, %rax	#, tmp389
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L110	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp390
	subl	$1, %eax	#, D.4479
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4479
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jl	.L110	#,
	.loc 1 422 0 is_stmt 1 discriminator 1
	movl	-216(%rbp), %eax	# pawn_file, tmp392
	addl	$1, %eax	#, D.4479
	cltq
	movl	-208(%rbp,%rax,4), %eax	# white_back_pawn, D.4479
	.loc 1 421 0 discriminator 1
	cmpl	-212(%rbp), %eax	# srank, D.4479
	jl	.L110	#,
	.loc 1 423 0
	movl	-276(%rbp), %eax	# i, tmp395
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4479
	leal	-7(%rax), %edx	#, D.4479
	movl	%edx, %eax	# D.4479, tmp396
	addl	%eax, %eax	# tmp396
	addl	%edx, %eax	# D.4479, D.4479
	leal	-30(%rax), %edx	#, D.4479
	movl	-292(%rbp), %eax	# score, score.47
	addl	%edx, %eax	# D.4479, score.48
	movl	%eax, -292(%rbp)	# score.48, score
	.loc 1 426 0
	movl	-276(%rbp), %eax	# i, tmp398
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	cmpl	$1, %eax	#, D.4479
	je	.L111	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# i, tmp400
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4479
	cmpl	$8, %eax	#, D.4479
	jne	.L112	#,
.L111:
	.loc 1 427 0 is_stmt 1
	movl	-276(%rbp), %eax	# i, tmp402
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4479
	subl	$9, %eax	#, D.4479
	leal	(%rax,%rax), %edx	#, D.4479
	movl	-292(%rbp), %eax	# score, score.49
	addl	%edx, %eax	# D.4479, score.50
	movl	%eax, -292(%rbp)	# score.50, score
.L112:
	.loc 1 430 0
	cmpl	$0, -284(%rbp)	#, isolated
	jne	.L110	#,
	.loc 1 432 0
	movl	-292(%rbp), %eax	# score, score.51
	subl	$6, %eax	#, score.52
	movl	%eax, -292(%rbp)	# score.52, score
.L110:
	.loc 1 436 0
	movl	-216(%rbp), %eax	# pawn_file, tmp403
	subl	$1, %eax	#, D.4479
	cltq
	movl	-112(%rbp,%rax,4), %eax	# pawns, D.4479
	testl	%eax, %eax	# D.4479
	jne	.L113	#,
	.loc 1 437 0
	movl	-292(%rbp), %eax	# score, score.53
	addl	$20, %eax	#, score.54
	movl	%eax, -292(%rbp)	# score.54, score
	.loc 1 439 0
	jmp	.L84	#
.L113:
	jmp	.L84	#
.L92:
	.loc 1 442 0
	movl	-276(%rbp), %eax	# i, tmp406
	cltq
	movl	scentral(,%rax,4), %edx	# scentral, D.4479
	movl	-292(%rbp), %eax	# score, score.55
	addl	%edx, %eax	# D.4479, score.56
	movl	%eax, -292(%rbp)	# score.56, score
	.loc 1 443 0
	movl	-276(%rbp), %eax	# i, tmp407
	movl	%eax, %edi	# tmp407,
	call	s_rook_mobility	#
	movl	-292(%rbp), %edx	# score, score.57
	addl	%edx, %eax	# score.57, score.58
	movl	%eax, -292(%rbp)	# score.58, score
	.loc 1 444 0
	addl	$1, -240(%rbp)	#, wr
	.loc 1 445 0
	jmp	.L84	#
.L93:
	.loc 1 448 0
	movl	-292(%rbp), %edx	# score, score.59
	movl	-276(%rbp), %eax	# i, tmp409
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	subl	%eax, %edx	# D.4479, score.60
	movl	%edx, %eax	# score.60, score.60
	movl	%eax, -292(%rbp)	# score.60, score
	.loc 1 449 0
	movl	-292(%rbp), %ebx	# score, score.61
	movl	-276(%rbp), %eax	# i, tmp410
	movl	%eax, %edi	# tmp410,
	call	s_rook_mobility	#
	subl	%eax, %ebx	# D.4479, score.62
	movl	%ebx, %eax	# score.62, score.62
	movl	%eax, -292(%rbp)	# score.62, score
	.loc 1 450 0
	addl	$1, -236(%rbp)	#, br
	.loc 1 451 0
	jmp	.L84	#
.L96:
	.loc 1 454 0
	movl	-276(%rbp), %eax	# i, tmp412
	cltq
	movl	scentral(,%rax,4), %edx	# scentral, D.4479
	movl	-292(%rbp), %eax	# score, score.63
	addl	%edx, %eax	# D.4479, score.64
	movl	%eax, -292(%rbp)	# score.64, score
	.loc 1 455 0
	movl	-276(%rbp), %eax	# i, tmp413
	movl	%eax, %edi	# tmp413,
	call	s_bishop_mobility	#
	movl	-292(%rbp), %edx	# score, score.65
	addl	%edx, %eax	# score.65, score.66
	movl	%eax, -292(%rbp)	# score.66, score
	.loc 1 456 0
	cmpl	$0, -264(%rbp)	#, wb
	je	.L114	#,
	.loc 1 458 0
	movl	-276(%rbp), %eax	# i, tmp415
	cltq
	movl	sqcolor(,%rax,4), %eax	# sqcolor, D.4479
	cmpl	-256(%rbp), %eax	# wbc, D.4479
	je	.L114	#,
	.loc 1 459 0
	movl	$99, -264(%rbp)	#, wb
.L114:
	.loc 1 461 0
	addl	$1, -264(%rbp)	#, wb
	.loc 1 462 0
	movl	-276(%rbp), %eax	# i, tmp417
	cltq
	movl	sqcolor(,%rax,4), %eax	# sqcolor, tmp418
	movl	%eax, -256(%rbp)	# tmp418, wbc
	.loc 1 463 0
	jmp	.L84	#
.L97:
	.loc 1 466 0
	movl	-292(%rbp), %edx	# score, score.67
	movl	-276(%rbp), %eax	# i, tmp420
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	subl	%eax, %edx	# D.4479, score.68
	movl	%edx, %eax	# score.68, score.68
	movl	%eax, -292(%rbp)	# score.68, score
	.loc 1 467 0
	movl	-292(%rbp), %ebx	# score, score.69
	movl	-276(%rbp), %eax	# i, tmp421
	movl	%eax, %edi	# tmp421,
	call	s_bishop_mobility	#
	subl	%eax, %ebx	# D.4479, score.70
	movl	%ebx, %eax	# score.70, score.70
	movl	%eax, -292(%rbp)	# score.70, score
	.loc 1 468 0
	cmpl	$0, -260(%rbp)	#, bb
	je	.L115	#,
	.loc 1 471 0
	movl	-276(%rbp), %eax	# i, tmp423
	cltq
	movl	sqcolor(,%rax,4), %eax	# sqcolor, D.4479
	cmpl	-252(%rbp), %eax	# bbc, D.4479
	je	.L115	#,
	.loc 1 472 0
	movl	$99, -260(%rbp)	#, bb
.L115:
	.loc 1 474 0
	addl	$1, -260(%rbp)	#, bb
	.loc 1 475 0
	movl	-276(%rbp), %eax	# i, tmp425
	cltq
	movl	sqcolor(,%rax,4), %eax	# sqcolor, tmp426
	movl	%eax, -252(%rbp)	# tmp426, bbc
	.loc 1 476 0
	jmp	.L84	#
.L88:
	.loc 1 479 0
	movl	-276(%rbp), %eax	# i, tmp428
	cltq
	movl	scentral(,%rax,4), %edx	# scentral, D.4479
	movl	-292(%rbp), %eax	# score, score.71
	addl	%edx, %eax	# D.4479, score.72
	movl	%eax, -292(%rbp)	# score.72, score
	.loc 1 480 0
	movl	-276(%rbp), %eax	# i, tmp429
	movl	%eax, %edi	# tmp429,
	call	s_knight_mobility	#
	movl	-292(%rbp), %edx	# score, score.73
	addl	%edx, %eax	# score.73, score.74
	movl	%eax, -292(%rbp)	# score.74, score
	.loc 1 481 0
	addl	$1, -232(%rbp)	#, wn
	.loc 1 482 0
	jmp	.L84	#
.L89:
	.loc 1 485 0
	movl	-292(%rbp), %edx	# score, score.75
	movl	-276(%rbp), %eax	# i, tmp431
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	subl	%eax, %edx	# D.4479, score.76
	movl	%edx, %eax	# score.76, score.76
	movl	%eax, -292(%rbp)	# score.76, score
	.loc 1 486 0
	movl	-292(%rbp), %ebx	# score, score.77
	movl	-276(%rbp), %eax	# i, tmp432
	movl	%eax, %edi	# tmp432,
	call	s_knight_mobility	#
	subl	%eax, %ebx	# D.4479, score.78
	movl	%ebx, %eax	# score.78, score.78
	movl	%eax, -292(%rbp)	# score.78, score
	.loc 1 487 0
	addl	$1, -228(%rbp)	#, bn
	.loc 1 488 0
	jmp	.L84	#
.L94:
	.loc 1 491 0
	movl	-276(%rbp), %eax	# i, tmp434
	cltq
	movl	scentral(,%rax,4), %edx	# scentral, D.4479
	movl	-292(%rbp), %eax	# score, score.79
	addl	%edx, %eax	# D.4479, score.80
	movl	%eax, -292(%rbp)	# score.80, score
	.loc 1 492 0
	movl	-276(%rbp), %eax	# i, tmp435
	movl	%eax, %edi	# tmp435,
	call	s_rook_mobility	#
	movl	-292(%rbp), %edx	# score, score.81
	addl	%edx, %eax	# score.81, score.82
	movl	%eax, -292(%rbp)	# score.82, score
	.loc 1 493 0
	movl	-276(%rbp), %eax	# i, tmp436
	movl	%eax, %edi	# tmp436,
	call	s_bishop_mobility	#
	movl	-292(%rbp), %edx	# score, score.83
	addl	%edx, %eax	# score.83, score.84
	movl	%eax, -292(%rbp)	# score.84, score
	.loc 1 494 0
	jmp	.L84	#
.L95:
	.loc 1 497 0
	movl	-292(%rbp), %edx	# score, score.85
	movl	-276(%rbp), %eax	# i, tmp438
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	subl	%eax, %edx	# D.4479, score.86
	movl	%edx, %eax	# score.86, score.86
	movl	%eax, -292(%rbp)	# score.86, score
	.loc 1 498 0
	movl	-292(%rbp), %ebx	# score, score.87
	movl	-276(%rbp), %eax	# i, tmp439
	movl	%eax, %edi	# tmp439,
	call	s_rook_mobility	#
	subl	%eax, %ebx	# D.4479, score.88
	movl	%ebx, %eax	# score.88, score.88
	movl	%eax, -292(%rbp)	# score.88, score
	.loc 1 499 0
	movl	-292(%rbp), %ebx	# score, score.89
	movl	-276(%rbp), %eax	# i, tmp440
	movl	%eax, %edi	# tmp440,
	call	s_bishop_mobility	#
	subl	%eax, %ebx	# D.4479, score.90
	movl	%ebx, %eax	# score.90, score.90
	movl	%eax, -292(%rbp)	# score.90, score
	.loc 1 500 0
	jmp	.L84	#
.L90:
	.loc 1 503 0
	movl	-276(%rbp), %eax	# i, tmp442
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	sarl	%eax	# D.4479
	movl	%eax, %edx	# D.4479, D.4479
	movl	-292(%rbp), %eax	# score, score.91
	addl	%edx, %eax	# D.4479, score.92
	movl	%eax, -292(%rbp)	# score.92, score
	.loc 1 504 0
	movl	-276(%rbp), %eax	# i, tmp443
	movl	%eax, %edi	# tmp443,
	call	s_king_mobility	#
	movl	-292(%rbp), %edx	# score, score.93
	addl	%edx, %eax	# score.93, score.94
	movl	%eax, -292(%rbp)	# score.94, score
	.loc 1 505 0
	addl	$1, -248(%rbp)	#, wk
	.loc 1 506 0
	jmp	.L84	#
.L91:
	.loc 1 509 0
	movl	-292(%rbp), %edx	# score, score.95
	movl	-276(%rbp), %eax	# i, tmp445
	cltq
	movl	scentral(,%rax,4), %eax	# scentral, D.4479
	sarl	%eax	# D.4479
	subl	%eax, %edx	# D.4479, score.96
	movl	%edx, %eax	# score.96, score.96
	movl	%eax, -292(%rbp)	# score.96, score
	.loc 1 510 0
	movl	-292(%rbp), %ebx	# score, score.97
	movl	-276(%rbp), %eax	# i, tmp446
	movl	%eax, %edi	# tmp446,
	call	s_king_mobility	#
	subl	%eax, %ebx	# D.4479, score.98
	movl	%ebx, %eax	# score.98, score.98
	movl	%eax, -292(%rbp)	# score.98, score
	.loc 1 511 0
	addl	$1, -244(%rbp)	#, bk
	.loc 1 512 0
	nop
.L84:
	.loc 1 334 0
	addl	$1, -268(%rbp)	#, j
.L82:
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.99
	cmpl	%eax, -272(%rbp)	# piece_count.99, a
	jle	.L116	#,
	.loc 1 517 0 is_stmt 1
	cmpl	$98, -264(%rbp)	#, wb
	jg	.L117	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	cmpl	$98, -260(%rbp)	#, bb
	jg	.L117	#,
	movl	-256(%rbp), %eax	# wbc, tmp447
	cmpl	-252(%rbp), %eax	# bbc, tmp447
	je	.L117	#,
	movl	piece_count(%rip), %eax	# piece_count, piece_count.100
	cmpl	$31, %eax	#, piece_count.100
	jg	.L117	#,
	.loc 1 519 0 is_stmt 1
	movl	-292(%rbp), %eax	# score, score.101
	cvtsi2ss	%eax, %xmm1	# score.101, D.4480
	movl	piece_count(%rip), %eax	# piece_count, piece_count.102
	cvtsi2ss	%eax, %xmm0	# piece_count.102, D.4480
	movss	.LC0(%rip), %xmm2	#, tmp448
	divss	%xmm2, %xmm0	# tmp448, D.4480
	mulss	%xmm1, %xmm0	# D.4480, D.4480
	cvttss2si	%xmm0, %eax	# D.4480, score.103
	movl	%eax, -292(%rbp)	# score.103, score
.L117:
	.loc 1 522 0
	movl	-292(%rbp), %eax	# score, score.104
	movl	%eax, %edi	# score.104,
	call	storeECache	#
	.loc 1 525 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.105
	cmpl	$1, %eax	#, white_to_move.105
	jne	.L118	#,
	.loc 1 526 0
	movl	-292(%rbp), %eax	# score, D.4479
	jmp	.L119	#
.L118:
	.loc 1 529 0
	movl	-292(%rbp), %eax	# score, score.106
	negl	%eax	# D.4479
.L119:
	.loc 1 532 0
	addq	$296, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	suicide_mid_eval, .-suicide_mid_eval
	.section	.rodata
	.align 4
.LC0:
	.long	1107296256
	.text
.Letext0:
	.file 2 "extvars.h"
	.file 3 "sjeng.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x557
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
	.byte	0x21
	.long	0x6c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x21
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x32
	.long	0x6c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x122
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x32
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x34
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x35
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x43
	.long	0x6c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x168
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x43
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x45
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x45
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x4f
	.long	0x6c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x4f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x51
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e9
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"d"
	.byte	0x1
	.byte	0x61
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x61
	.long	0x6c
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x6b
	.long	0x6c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x224
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x6b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"f"
	.byte	0x1
	.byte	0x6d
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0xba
	.long	0x6c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0xba
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"f"
	.byte	0x1
	.byte	0xbf
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.value	0x10c
	.long	0x6c
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF47
	.byte	0x1
	.value	0x112
	.long	0x6c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x410
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x116
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x116
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0x116
	.long	0x410
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.value	0x116
	.long	0x426
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x116
	.long	0x426
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x117
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.value	0x117
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x117
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0xd
	.string	"j"
	.byte	0x1
	.value	0x117
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.value	0x118
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.value	0x119
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xd
	.string	"wb"
	.byte	0x1
	.value	0x11a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0xd
	.string	"bb"
	.byte	0x1
	.value	0x11a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0xd
	.string	"wbc"
	.byte	0x1
	.value	0x11a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0xd
	.string	"bbc"
	.byte	0x1
	.value	0x11a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0xd
	.string	"wk"
	.byte	0x1
	.value	0x11b
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0xd
	.string	"bk"
	.byte	0x1
	.value	0x11b
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0xd
	.string	"wr"
	.byte	0x1
	.value	0x11b
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xd
	.string	"br"
	.byte	0x1
	.value	0x11b
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0xd
	.string	"wn"
	.byte	0x1
	.value	0x11c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0xd
	.string	"bn"
	.byte	0x1
	.value	0x11c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0xd
	.string	"wp"
	.byte	0x1
	.value	0x11c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xd
	.string	"bp"
	.byte	0x1
	.value	0x11c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0xe
	.long	0x6c
	.long	0x426
	.uleb128 0xf
	.long	0x7a
	.byte	0x1
	.uleb128 0xf
	.long	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.long	0x6c
	.long	0x436
	.uleb128 0xf
	.long	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.long	0x6c
	.long	0x446
	.uleb128 0xf
	.long	0x7a
	.byte	0x8f
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0xe
	.long	0x436
	.uleb128 0x9
	.byte	0x3
	.quad	scentral
	.uleb128 0xe
	.long	0x6c
	.long	0x46b
	.uleb128 0xf
	.long	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.byte	0x1c
	.long	0x480
	.uleb128 0x9
	.byte	0x3
	.quad	rook_o
	.uleb128 0x11
	.long	0x45b
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.byte	0x1d
	.long	0x49a
	.uleb128 0x9
	.byte	0x3
	.quad	bishop_o
	.uleb128 0x11
	.long	0x45b
	.uleb128 0xe
	.long	0x6c
	.long	0x4af
	.uleb128 0xf
	.long	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x1e
	.long	0x4c4
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o
	.uleb128 0x11
	.long	0x49f
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x1f
	.long	0x4de
	.uleb128 0x9
	.byte	0x3
	.quad	king_o
	.uleb128 0x11
	.long	0x49f
	.uleb128 0x12
	.long	.LASF35
	.byte	0x2
	.byte	0xc
	.long	0x436
	.uleb128 0x12
	.long	.LASF36
	.byte	0x2
	.byte	0xc
	.long	0x6c
	.uleb128 0x12
	.long	.LASF37
	.byte	0x2
	.byte	0xe
	.long	0x6c
	.uleb128 0xe
	.long	0x6c
	.long	0x514
	.uleb128 0xf
	.long	0x7a
	.byte	0x3d
	.byte	0
	.uleb128 0x12
	.long	.LASF38
	.byte	0x2
	.byte	0x2c
	.long	0x504
	.uleb128 0x12
	.long	.LASF39
	.byte	0x2
	.byte	0x4a
	.long	0x6c
	.uleb128 0x12
	.long	.LASF40
	.byte	0x2
	.byte	0x5e
	.long	0x535
	.uleb128 0x11
	.long	0x436
	.uleb128 0x12
	.long	.LASF41
	.byte	0x2
	.byte	0x5e
	.long	0x545
	.uleb128 0x11
	.long	0x436
	.uleb128 0x12
	.long	.LASF42
	.byte	0x2
	.byte	0x5e
	.long	0x555
	.uleb128 0x11
	.long	0x436
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF20:
	.string	"white_saccers"
.LASF40:
	.string	"Xrank"
.LASF22:
	.string	"pawn_file"
.LASF0:
	.string	"FALSE"
.LASF15:
	.string	"square"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF32:
	.string	"bishop_o"
.LASF31:
	.string	"rook_o"
.LASF38:
	.string	"pieces"
.LASF27:
	.string	"backwards"
.LASF11:
	.string	"long long int"
.LASF29:
	.string	"in_cache"
.LASF33:
	.string	"knight_o"
.LASF8:
	.string	"long int"
.LASF45:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF44:
	.string	"seval.c"
.LASF41:
	.string	"Xfile"
.LASF46:
	.string	"suicide_eval"
.LASF2:
	.string	"unsigned char"
.LASF24:
	.string	"white_back_pawn"
.LASF23:
	.string	"pawns"
.LASF43:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"score"
.LASF12:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF37:
	.string	"piece_count"
.LASF39:
	.string	"Material"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"s_knight_mobility"
.LASF10:
	.string	"char"
.LASF19:
	.string	"black_saccers"
.LASF18:
	.string	"s_king_mobility"
.LASF17:
	.string	"s_pawn_mobility"
.LASF42:
	.string	"sqcolor"
.LASF47:
	.string	"suicide_mid_eval"
.LASF36:
	.string	"white_to_move"
.LASF5:
	.string	"long unsigned int"
.LASF14:
	.string	"s_rook_mobility"
.LASF35:
	.string	"board"
.LASF25:
	.string	"black_back_pawn"
.LASF34:
	.string	"king_o"
.LASF26:
	.string	"isolated"
.LASF13:
	.string	"s_bishop_mobility"
.LASF1:
	.string	"TRUE"
.LASF21:
	.string	"srank"
.LASF30:
	.string	"scentral"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
