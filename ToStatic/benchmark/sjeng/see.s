	.file	"see.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 see.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	see_attackers,256,32
	.comm	see_num_attackers,8,4
	.globl	setup_attackers
	.type	setup_attackers, @function
setup_attackers:
.LFB2:
	.file 1 "see.c"
	.loc 1 22 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -44(%rbp)	# square, square
	.loc 1 30 0
	movl	see_num_attackers(%rip), %eax	# see_num_attackers, tmp71
	movl	%eax, -32(%rbp)	# tmp71, numw
	movl	see_num_attackers+4(%rip), %eax	# see_num_attackers, tmp72
	movl	%eax, -28(%rbp)	# tmp72, numb
	.loc 1 33 0
	movl	$0, %r13d	#, i
	jmp	.L2	#
.L14:
	.loc 1 35 0
	movslq	%r13d, %rax	# i, tmp73
	movl	rook_o.3607(,%rax,4), %edx	# rook_o, D.3778
	movl	-44(%rbp), %eax	# square, tmp74
	leal	(%rdx,%rax), %r12d	#, a_sq
	.loc 1 36 0
	movslq	%r12d, %rax	# a_sq, tmp75
	movl	board(,%rax,4), %ebx	# board, b_sq
	.loc 1 39 0
	cmpl	$5, %ebx	#, b_sq
	jne	.L3	#,
	.loc 1 41 0
	movl	-32(%rbp), %eax	# numw, tmp77
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_9].piece
	.loc 1 42 0
	movl	-32(%rbp), %eax	# numw, tmp79
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_9].square
	.loc 1 43 0
	addl	$1, -32(%rbp)	#, numw
	.loc 1 44 0
	jmp	.L4	#
.L3:
	.loc 1 46 0
	cmpl	$6, %ebx	#, b_sq
	jne	.L5	#,
	.loc 1 48 0
	movl	-28(%rbp), %eax	# numb, tmp81
	cltq
	addq	$16, %rax	#, tmp82
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_17].piece
	.loc 1 49 0
	movl	-28(%rbp), %eax	# numb, tmp84
	cltq
	addq	$16, %rax	#, tmp85
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_17].square
	.loc 1 50 0
	addl	$1, -28(%rbp)	#, numb
	.loc 1 51 0
	jmp	.L4	#
.L5:
	.loc 1 56 0
	jmp	.L6	#
.L13:
	.loc 1 58 0
	cmpl	$7, %ebx	#, b_sq
	je	.L7	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	cmpl	$9, %ebx	#, b_sq
	jne	.L8	#,
.L7:
	.loc 1 60 0 is_stmt 1
	movl	-32(%rbp), %eax	# numw, tmp87
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_9].piece
	.loc 1 61 0
	movl	-32(%rbp), %eax	# numw, tmp89
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_9].square
	.loc 1 62 0
	addl	$1, -32(%rbp)	#, numw
	.loc 1 63 0
	jmp	.L9	#
.L8:
	.loc 1 65 0
	cmpl	$8, %ebx	#, b_sq
	je	.L10	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	cmpl	$10, %ebx	#, b_sq
	jne	.L11	#,
.L10:
	.loc 1 67 0 is_stmt 1
	movl	-28(%rbp), %eax	# numb, tmp91
	cltq
	addq	$16, %rax	#, tmp92
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_17].piece
	.loc 1 68 0
	movl	-28(%rbp), %eax	# numb, tmp94
	cltq
	addq	$16, %rax	#, tmp95
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_17].square
	.loc 1 69 0
	addl	$1, -28(%rbp)	#, numb
	.loc 1 70 0
	jmp	.L9	#
.L11:
	.loc 1 72 0
	cmpl	$13, %ebx	#, b_sq
	je	.L12	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	jmp	.L9	#
.L12:
	.loc 1 73 0 is_stmt 1
	movslq	%r13d, %rax	# i, tmp96
	movl	rook_o.3607(,%rax,4), %eax	# rook_o, D.3778
	addl	%eax, %r12d	# D.3778, a_sq
	.loc 1 74 0
	movslq	%r12d, %rax	# a_sq, tmp97
	movl	board(,%rax,4), %ebx	# board, b_sq
.L6:
	.loc 1 56 0 discriminator 1
	testl	%ebx, %ebx	# b_sq
	jne	.L13	#,
.L9:
	.loc 1 33 0
	addl	$1, %r13d	#, i
.L2:
	.loc 1 33 0 is_stmt 0 discriminator 1
	cmpl	$3, %r13d	#, i
	jle	.L14	#,
.L4:
	.loc 1 80 0 is_stmt 1
	movl	$0, %r13d	#, i
	jmp	.L15	#
.L29:
	.loc 1 82 0
	movslq	%r13d, %rax	# i, tmp98
	movl	bishop_o.3608(,%rax,4), %edx	# bishop_o, D.3778
	movl	-44(%rbp), %eax	# square, tmp99
	leal	(%rdx,%rax), %r12d	#, a_sq
	.loc 1 83 0
	movslq	%r12d, %rax	# a_sq, tmp100
	movl	board(,%rax,4), %ebx	# board, b_sq
	.loc 1 85 0
	cmpl	$1, %ebx	#, b_sq
	jne	.L16	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	%r13d, %eax	# i, i.0
	andl	$1, %eax	#, D.3779
	testl	%eax, %eax	# D.3779
	je	.L16	#,
	.loc 1 87 0 is_stmt 1
	movl	-32(%rbp), %eax	# numw, tmp102
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_12].piece
	.loc 1 88 0
	movl	-32(%rbp), %eax	# numw, tmp104
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_12].square
	.loc 1 89 0
	addl	$1, -32(%rbp)	#, numw
	.loc 1 90 0
	jmp	.L17	#
.L16:
	.loc 1 92 0
	cmpl	$2, %ebx	#, b_sq
	jne	.L18	#,
	.loc 1 92 0 is_stmt 0 discriminator 1
	movl	%r13d, %eax	# i, i.1
	andl	$1, %eax	#, D.3779
	testl	%eax, %eax	# D.3779
	jne	.L18	#,
	.loc 1 94 0 is_stmt 1
	movl	-28(%rbp), %eax	# numb, tmp106
	cltq
	addq	$16, %rax	#, tmp107
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_20].piece
	.loc 1 95 0
	movl	-28(%rbp), %eax	# numb, tmp109
	cltq
	addq	$16, %rax	#, tmp110
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_20].square
	.loc 1 96 0
	addl	$1, -28(%rbp)	#, numb
	.loc 1 97 0
	jmp	.L17	#
.L18:
	.loc 1 100 0
	cmpl	$5, %ebx	#, b_sq
	jne	.L19	#,
	.loc 1 102 0
	movl	-32(%rbp), %eax	# numw, tmp112
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_12].piece
	.loc 1 103 0
	movl	-32(%rbp), %eax	# numw, tmp114
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_12].square
	.loc 1 104 0
	addl	$1, -32(%rbp)	#, numw
	.loc 1 105 0
	jmp	.L17	#
.L19:
	.loc 1 107 0
	cmpl	$6, %ebx	#, b_sq
	jne	.L20	#,
	.loc 1 109 0
	movl	-28(%rbp), %eax	# numb, tmp116
	cltq
	addq	$16, %rax	#, tmp117
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_20].piece
	.loc 1 110 0
	movl	-28(%rbp), %eax	# numb, tmp119
	cltq
	addq	$16, %rax	#, tmp120
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_20].square
	.loc 1 111 0
	addl	$1, -28(%rbp)	#, numb
	.loc 1 112 0
	jmp	.L17	#
.L20:
	.loc 1 116 0
	jmp	.L21	#
.L28:
	.loc 1 117 0
	cmpl	$11, %ebx	#, b_sq
	je	.L22	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	cmpl	$9, %ebx	#, b_sq
	jne	.L23	#,
.L22:
	.loc 1 119 0 is_stmt 1
	movl	-32(%rbp), %eax	# numw, tmp122
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_12].piece
	.loc 1 120 0
	movl	-32(%rbp), %eax	# numw, tmp124
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_12].square
	.loc 1 121 0
	addl	$1, -32(%rbp)	#, numw
	.loc 1 122 0
	jmp	.L24	#
.L23:
	.loc 1 124 0
	cmpl	$12, %ebx	#, b_sq
	je	.L25	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	cmpl	$10, %ebx	#, b_sq
	jne	.L26	#,
.L25:
	.loc 1 126 0 is_stmt 1
	movl	-28(%rbp), %eax	# numb, tmp126
	cltq
	addq	$16, %rax	#, tmp127
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_20].piece
	.loc 1 127 0
	movl	-28(%rbp), %eax	# numb, tmp129
	cltq
	addq	$16, %rax	#, tmp130
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_20].square
	.loc 1 128 0
	addl	$1, -28(%rbp)	#, numb
	.loc 1 129 0
	jmp	.L24	#
.L26:
	.loc 1 131 0
	cmpl	$13, %ebx	#, b_sq
	je	.L27	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	jmp	.L24	#
.L27:
	.loc 1 132 0 is_stmt 1
	movslq	%r13d, %rax	# i, tmp131
	movl	bishop_o.3608(,%rax,4), %eax	# bishop_o, D.3778
	addl	%eax, %r12d	# D.3778, a_sq
	.loc 1 133 0
	movslq	%r12d, %rax	# a_sq, tmp132
	movl	board(,%rax,4), %ebx	# board, b_sq
.L21:
	.loc 1 116 0 discriminator 1
	testl	%ebx, %ebx	# b_sq
	jne	.L28	#,
.L24:
	.loc 1 80 0
	addl	$1, %r13d	#, i
.L15:
	.loc 1 80 0 is_stmt 0 discriminator 1
	cmpl	$3, %r13d	#, i
	jle	.L29	#,
.L17:
	.loc 1 139 0 is_stmt 1
	movl	$0, %r13d	#, i
	jmp	.L30	#
.L33:
	.loc 1 141 0
	movslq	%r13d, %rax	# i, tmp133
	movl	knight_o.3609(,%rax,4), %edx	# knight_o, D.3778
	movl	-44(%rbp), %eax	# square, tmp134
	leal	(%rdx,%rax), %r12d	#, a_sq
	.loc 1 142 0
	movslq	%r12d, %rax	# a_sq, tmp135
	movl	board(,%rax,4), %ebx	# board, b_sq
	.loc 1 143 0
	cmpl	$3, %ebx	#, b_sq
	jne	.L31	#,
	.loc 1 145 0
	movl	-32(%rbp), %eax	# numw, tmp137
	cltq
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[0][numw_15].piece
	.loc 1 146 0
	movl	-32(%rbp), %eax	# numw, tmp139
	cltq
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[0][numw_15].square
	.loc 1 147 0
	addl	$1, -32(%rbp)	#, numw
	jmp	.L32	#
.L31:
	.loc 1 149 0
	cmpl	$4, %ebx	#, b_sq
	jne	.L32	#,
	.loc 1 151 0
	movl	-28(%rbp), %eax	# numb, tmp141
	cltq
	addq	$16, %rax	#, tmp142
	movl	%ebx, see_attackers(,%rax,8)	# b_sq, see_attackers[1][numb_23].piece
	.loc 1 152 0
	movl	-28(%rbp), %eax	# numb, tmp144
	cltq
	addq	$16, %rax	#, tmp145
	movl	%r12d, see_attackers+4(,%rax,8)	# a_sq, see_attackers[1][numb_23].square
	.loc 1 153 0
	addl	$1, -28(%rbp)	#, numb
.L32:
	.loc 1 139 0
	addl	$1, %r13d	#, i
.L30:
	.loc 1 139 0 is_stmt 0 discriminator 1
	cmpl	$7, %r13d	#, i
	jle	.L33	#,
	.loc 1 157 0 is_stmt 1
	movl	-32(%rbp), %eax	# numw, tmp146
	movl	%eax, see_num_attackers(%rip)	# tmp146, see_num_attackers
	.loc 1 158 0
	movl	-28(%rbp), %eax	# numb, tmp147
	movl	%eax, see_num_attackers+4(%rip)	# tmp147, see_num_attackers
	.loc 1 159 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setup_attackers, .-setup_attackers
	.globl	findlowest
	.type	findlowest, @function
findlowest:
.LFB3:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# color, color
	movl	%esi, -40(%rbp)	# next, next
	.loc 1 168 0
	movl	-40(%rbp), %eax	# next, tmp67
	movl	%eax, -28(%rbp)	# tmp67, lowestp
	.loc 1 169 0
	movl	-40(%rbp), %eax	# next, tmp69
	cltq
	movl	-36(%rbp), %edx	# color, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	salq	$4, %rdx	#, tmp72
	addq	%rdx, %rax	# tmp72, tmp73
	movl	see_attackers(,%rax,8), %eax	# see_attackers[color_8(D)][next_6(D)].piece, D.3780
	cltq
	movl	material(,%rax,4), %edx	# material, D.3780
	movl	%edx, %eax	# D.3780, tmp75
	sarl	$31, %eax	#, tmp75
	xorl	%eax, %edx	# tmp75, tmp76
	movl	%edx, -24(%rbp)	# tmp76, lowestv
	subl	%eax, -24(%rbp)	# tmp75, lowestv
	.loc 1 171 0
	movl	-40(%rbp), %eax	# next, tmp77
	movl	%eax, -20(%rbp)	# tmp77, i
	jmp	.L35	#
.L37:
	.loc 1 173 0
	movl	-20(%rbp), %eax	# i, tmp79
	cltq
	movl	-36(%rbp), %edx	# color, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	salq	$4, %rdx	#, tmp82
	addq	%rdx, %rax	# tmp82, tmp83
	movl	see_attackers(,%rax,8), %eax	# see_attackers[color_8(D)][i_5].piece, D.3780
	cltq
	movl	material(,%rax,4), %eax	# material, D.3780
	cltd
	xorl	%edx, %eax	# tmp85, D.3780
	subl	%edx, %eax	# tmp85, D.3780
	cmpl	-24(%rbp), %eax	# lowestv, D.3780
	jge	.L36	#,
	.loc 1 175 0
	movl	-20(%rbp), %eax	# i, tmp86
	movl	%eax, -28(%rbp)	# tmp86, lowestp
	.loc 1 176 0
	movl	-20(%rbp), %eax	# i, tmp88
	cltq
	movl	-36(%rbp), %edx	# color, tmp90
	movslq	%edx, %rdx	# tmp90, tmp89
	salq	$4, %rdx	#, tmp91
	addq	%rdx, %rax	# tmp91, tmp92
	movl	see_attackers(,%rax,8), %eax	# see_attackers[color_8(D)][i_5].piece, D.3780
	cltq
	movl	material(,%rax,4), %edx	# material, D.3780
	movl	%edx, %eax	# D.3780, tmp94
	sarl	$31, %eax	#, tmp94
	xorl	%eax, %edx	# tmp94, tmp95
	movl	%edx, -24(%rbp)	# tmp95, lowestv
	subl	%eax, -24(%rbp)	# tmp94, lowestv
.L36:
	.loc 1 171 0
	addl	$1, -20(%rbp)	#, i
.L35:
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# color, tmp97
	cltq
	movl	see_num_attackers(,%rax,4), %eax	# see_num_attackers, D.3780
	cmpl	-20(%rbp), %eax	# i, D.3780
	jg	.L37	#,
	.loc 1 181 0 is_stmt 1
	movl	-40(%rbp), %eax	# next, tmp99
	cltq
	movl	-36(%rbp), %edx	# color, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	salq	$4, %rdx	#, tmp102
	addq	%rdx, %rax	# tmp102, tmp103
	movq	see_attackers(,%rax,8), %rax	# see_attackers, tmp104
	movq	%rax, -16(%rbp)	# tmp104, swap
	.loc 1 182 0
	movl	-40(%rbp), %eax	# next, tmp106
	cltq
	movl	-36(%rbp), %edx	# color, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	salq	$4, %rdx	#, tmp109
	addq	%rax, %rdx	# tmp105, tmp110
	movl	-28(%rbp), %eax	# lowestp, tmp112
	cltq
	movl	-36(%rbp), %ecx	# color, tmp114
	movslq	%ecx, %rcx	# tmp114, tmp113
	salq	$4, %rcx	#, tmp115
	addq	%rcx, %rax	# tmp115, tmp116
	movq	see_attackers(,%rax,8), %rax	# see_attackers, tmp117
	movq	%rax, see_attackers(,%rdx,8)	# tmp117, see_attackers
	.loc 1 183 0
	movl	-28(%rbp), %eax	# lowestp, tmp119
	cltq
	movl	-36(%rbp), %edx	# color, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	salq	$4, %rdx	#, tmp122
	addq	%rax, %rdx	# tmp118, tmp123
	movq	-16(%rbp), %rax	# swap, tmp124
	movq	%rax, see_attackers(,%rdx,8)	# tmp124, see_attackers
	.loc 1 184 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	findlowest, .-findlowest
	.globl	see
	.type	see, @function
see:
.LFB4:
	.loc 1 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# color, color
	movl	%esi, -56(%rbp)	# square, square
	movl	%edx, -60(%rbp)	# from, from
	.loc 1 197 0
	movl	$0, see_num_attackers(%rip)	#, see_num_attackers
	.loc 1 198 0
	movl	$0, see_num_attackers+4(%rip)	#, see_num_attackers
	.loc 1 201 0
	movl	-60(%rbp), %eax	# from, tmp107
	cltq
	movl	board(,%rax,4), %eax	# board, tmp108
	movl	%eax, -20(%rbp)	# tmp108, origpiece
	.loc 1 202 0
	movl	-60(%rbp), %eax	# from, tmp110
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 204 0
	movl	-52(%rbp), %eax	# color, tmp112
	cltq
	movl	see_num_attackers(,%rax,4), %eax	# see_num_attackers, D.3781
	leal	1(%rax), %edx	#, D.3781
	movl	-52(%rbp), %eax	# color, tmp114
	cltq
	movl	%edx, see_num_attackers(,%rax,4)	# D.3781, see_num_attackers
	.loc 1 205 0
	movl	-52(%rbp), %eax	# color, tmp116
	cltq
	salq	$7, %rax	#, tmp117
	leaq	see_attackers(%rax), %rdx	#, tmp118
	movl	-20(%rbp), %eax	# origpiece, tmp119
	movl	%eax, (%rdx)	# tmp119, see_attackers[color_14(D)][0].piece
	.loc 1 206 0
	movl	-52(%rbp), %eax	# color, tmp121
	cltq
	salq	$7, %rax	#, tmp122
	leaq	see_attackers(%rax), %rdx	#, tmp123
	movl	-60(%rbp), %eax	# from, tmp124
	movl	%eax, 4(%rdx)	# tmp124, see_attackers[color_14(D)][0].square
	.loc 1 209 0
	movl	-56(%rbp), %eax	# square, tmp125
	movl	%eax, %edi	# tmp125,
	call	setup_attackers	#
	.loc 1 212 0
	movl	-56(%rbp), %eax	# square, tmp127
	cltq
	movl	board(,%rax,4), %eax	# board, D.3781
	cltq
	movl	material(,%rax,4), %edx	# material, D.3781
	movl	%edx, %eax	# D.3781, tmp129
	sarl	$31, %eax	#, tmp129
	xorl	%eax, %edx	# tmp129, tmp130
	movl	%edx, -32(%rbp)	# tmp130, value
	subl	%eax, -32(%rbp)	# tmp129, value
	.loc 1 215 0
	cmpl	$0, -52(%rbp)	#, color
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	see_num_attackers(,%rax,4), %eax	# see_num_attackers, D.3781
	testl	%eax, %eax	# D.3781
	jne	.L39	#,
	.loc 1 217 0
	movl	-60(%rbp), %eax	# from, tmp133
	cltq
	movl	-20(%rbp), %edx	# origpiece, tmp134
	movl	%edx, board(,%rax,4)	# tmp134, board
	.loc 1 218 0
	movl	-32(%rbp), %eax	# value, D.3781
	jmp	.L48	#
.L39:
	.loc 1 225 0
	movl	-32(%rbp), %eax	# value, tmp135
	movl	%eax, -24(%rbp)	# tmp135, hisbestvalue
	.loc 1 226 0
	movl	$-1000000, -28(%rbp)	#, ourbestvalue
	.loc 1 229 0
	movl	-52(%rbp), %eax	# color, tmp137
	cltq
	movl	$1, -16(%rbp,%rax,4)	#, caps
	.loc 1 230 0
	cmpl	$0, -52(%rbp)	#, color
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	$0, -16(%rbp,%rax,4)	#, caps
	.loc 1 233 0
	cmpl	$0, -52(%rbp)	#, color
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, tmp139
	movl	%eax, -36(%rbp)	# tmp139, sside
	.loc 1 236 0
	jmp	.L41	#
.L47:
	.loc 1 239 0
	movl	-36(%rbp), %eax	# sside, tmp141
	cltq
	movl	-16(%rbp,%rax,4), %edx	# caps, D.3781
	movl	-36(%rbp), %eax	# sside, tmp142
	movl	%edx, %esi	# D.3781,
	movl	%eax, %edi	# tmp142,
	call	findlowest	#
	.loc 1 241 0
	movl	-36(%rbp), %eax	# sside, tmp143
	cmpl	-52(%rbp), %eax	# color, tmp143
	jne	.L42	#,
	.loc 1 245 0
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %edx	# D.3782, D.3781
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	-16(%rbp,%rax,4), %eax	# caps, D.3781
	subl	$1, %eax	#, D.3781
	cltq
	movslq	%edx, %rdx	# D.3781, tmp146
	salq	$4, %rdx	#, tmp147
	addq	%rdx, %rax	# tmp147, tmp148
	movl	see_attackers(,%rax,8), %eax	# see_attackers[_35][_39].piece, D.3781
	cltq
	movl	material(,%rax,4), %eax	# material, D.3781
	cltd
	xorl	%edx, %eax	# tmp150, D.3781
	subl	%edx, %eax	# tmp150, D.3781
	addl	%eax, -32(%rbp)	# D.3781, value
	.loc 1 248 0
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	see_num_attackers(,%rax,4), %edx	# see_num_attackers, D.3781
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	-16(%rbp,%rax,4), %eax	# caps, D.3781
	cmpl	%eax, %edx	# D.3781, D.3781
	jg	.L43	#,
	.loc 1 248 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# value, tmp153
	cmpl	-28(%rbp), %eax	# ourbestvalue, tmp153
	jle	.L43	#,
	.loc 1 249 0 is_stmt 1
	movl	-32(%rbp), %eax	# value, tmp154
	movl	%eax, -28(%rbp)	# tmp154, ourbestvalue
.L43:
	.loc 1 252 0
	movl	-32(%rbp), %eax	# value, tmp155
	cmpl	-24(%rbp), %eax	# hisbestvalue, tmp155
	jge	.L45	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# value, tmp156
	movl	%eax, -24(%rbp)	# tmp156, hisbestvalue
	jmp	.L45	#
.L42:
	.loc 1 258 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %edx	# D.3782, D.3781
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	-16(%rbp,%rax,4), %eax	# caps, D.3781
	subl	$1, %eax	#, D.3781
	cltq
	movslq	%edx, %rdx	# D.3781, tmp159
	salq	$4, %rdx	#, tmp160
	addq	%rdx, %rax	# tmp160, tmp161
	movl	see_attackers(,%rax,8), %eax	# see_attackers[_53][_57].piece, D.3781
	cltq
	movl	material(,%rax,4), %eax	# material, D.3781
	cltd
	xorl	%edx, %eax	# tmp163, D.3781
	subl	%edx, %eax	# tmp163, D.3781
	subl	%eax, -32(%rbp)	# D.3781, value
	.loc 1 263 0
	movl	-32(%rbp), %eax	# value, tmp164
	cmpl	-28(%rbp), %eax	# ourbestvalue, tmp164
	jle	.L46	#,
	.loc 1 265 0
	movl	-32(%rbp), %eax	# value, tmp165
	movl	%eax, -28(%rbp)	# tmp165, ourbestvalue
.L46:
	.loc 1 268 0
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	see_num_attackers(,%rax,4), %edx	# see_num_attackers, D.3781
	cmpl	$0, -36(%rbp)	#, sside
	sete	%al	#, D.3782
	movzbl	%al, %eax	# D.3782, D.3781
	cltq
	movl	-16(%rbp,%rax,4), %eax	# caps, D.3781
	cmpl	%eax, %edx	# D.3781, D.3781
	jg	.L45	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# value, tmp168
	cmpl	-24(%rbp), %eax	# hisbestvalue, tmp168
	jge	.L45	#,
	.loc 1 269 0 is_stmt 1
	movl	-32(%rbp), %eax	# value, tmp169
	movl	%eax, -24(%rbp)	# tmp169, hisbestvalue
.L45:
	.loc 1 273 0
	movl	-36(%rbp), %eax	# sside, tmp171
	cltq
	movl	-16(%rbp,%rax,4), %eax	# caps, D.3781
	leal	1(%rax), %edx	#, D.3781
	movl	-36(%rbp), %eax	# sside, tmp173
	cltq
	movl	%edx, -16(%rbp,%rax,4)	# D.3781, caps
	.loc 1 276 0
	xorl	$1, -36(%rbp)	#, sside
.L41:
	.loc 1 236 0 discriminator 1
	movl	-36(%rbp), %eax	# sside, tmp175
	cltq
	movl	-16(%rbp,%rax,4), %edx	# caps, D.3781
	movl	-36(%rbp), %eax	# sside, tmp177
	cltq
	movl	see_num_attackers(,%rax,4), %eax	# see_num_attackers, D.3781
	cmpl	%eax, %edx	# D.3781, D.3781
	jl	.L47	#,
	.loc 1 281 0
	movl	-60(%rbp), %eax	# from, tmp179
	cltq
	movl	-20(%rbp), %edx	# origpiece, tmp180
	movl	%edx, board(,%rax,4)	# tmp180, board
	.loc 1 285 0
	movl	-24(%rbp), %eax	# hisbestvalue, tmp181
	cmpl	%eax, -28(%rbp)	# tmp181, ourbestvalue
	cmovle	-28(%rbp), %eax	# ourbestvalue,, D.3781
.L48:
	.loc 1 286 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	see, .-see
	.section	.rodata
	.align 16
	.type	rook_o.3607, @object
	.size	rook_o.3607, 16
rook_o.3607:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.3608, @object
	.size	bishop_o.3608, 16
bishop_o.3608:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3609, @object
	.size	knight_o.3609, 32
knight_o.3609:
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
	.file 2 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x31e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x1
	.long	.LASF39
	.long	.LASF40
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
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0xd
	.long	0xb2
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0xf
	.long	0x57
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x10
	.long	0x57
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x1
	.byte	0x11
	.long	0x91
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x16
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x169
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x16
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0x1a
	.long	0x179
	.uleb128 0x9
	.byte	0x3
	.quad	rook_o.3607
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x1b
	.long	0x17e
	.uleb128 0x9
	.byte	0x3
	.quad	bishop_o.3608
	.uleb128 0xb
	.long	.LASF15
	.byte	0x1
	.byte	0x1c
	.long	0x193
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.3609
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x1d
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x1d
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x1e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x1e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x179
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x169
	.uleb128 0xd
	.long	0x169
	.uleb128 0x4
	.long	0x57
	.long	0x193
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x183
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0xa1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x208
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0xa1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0xa1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0xa3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0xa4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0xa5
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.string	"see"
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0xbd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0xbe
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0xbf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0xc0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0xc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0xc2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x2bb
	.uleb128 0x5
	.long	0x75
	.byte	0x8f
	.byte	0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x2
	.byte	0xc
	.long	0x2ab
	.uleb128 0x4
	.long	0x57
	.long	0x2d6
	.uleb128 0x5
	.long	0x75
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.long	.LASF35
	.byte	0x2
	.byte	0x4b
	.long	0x2c6
	.uleb128 0x4
	.long	0xb2
	.long	0x2f7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0x13
	.long	0x2e1
	.uleb128 0x9
	.byte	0x3
	.quad	see_attackers
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x14
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	see_num_attackers
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
.LASF21:
	.string	"findlowest"
.LASF27:
	.string	"from"
.LASF26:
	.string	"swap"
.LASF29:
	.string	"caps"
.LASF30:
	.string	"value"
.LASF24:
	.string	"lowestp"
.LASF25:
	.string	"lowestv"
.LASF28:
	.string	"sside"
.LASF14:
	.string	"bishop_o"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned char"
.LASF39:
	.string	"see.c"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF20:
	.string	"setup_attackers"
.LASF35:
	.string	"material"
.LASF12:
	.string	"square"
.LASF32:
	.string	"ourbestvalue"
.LASF36:
	.string	"see_attackers"
.LASF37:
	.string	"see_num_attackers"
.LASF22:
	.string	"color"
.LASF11:
	.string	"piece"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"knight_o"
.LASF19:
	.string	"numb"
.LASF41:
	.string	"see_data"
.LASF31:
	.string	"origpiece"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF40:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF8:
	.string	"char"
.LASF17:
	.string	"b_sq"
.LASF38:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"numw"
.LASF13:
	.string	"rook_o"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"a_sq"
.LASF4:
	.string	"signed char"
.LASF34:
	.string	"board"
.LASF23:
	.string	"next"
.LASF33:
	.string	"hisbestvalue"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
