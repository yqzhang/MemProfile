	.file	"attacks.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 attacks.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	calc_attackers
	.type	calc_attackers, @function
calc_attackers:
.LFB2:
	.file 1 "attacks.c"
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# square, square
	movl	%esi, -24(%rbp)	# color, color
	.loc 1 23 0
	movl	$0, -4(%rbp)	#, attackers
	.loc 1 25 0
	movl	-20(%rbp), %eax	# square, tmp103
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	testl	%eax, %eax	# D.4186
	jne	.L2	#,
	.loc 1 25 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.4186
	jmp	.L3	#
.L2:
	.loc 1 28 0 is_stmt 1
	movl	-24(%rbp), %eax	# color, color.0
	andl	$1, %eax	#, D.4187
	testl	%eax, %eax	# D.4187
	je	.L4	#,
	.loc 1 30 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L5	#
.L14:
	.loc 1 31 0
	movl	-8(%rbp), %eax	# i, tmp105
	cltq
	movl	rook_o.3878(,%rax,4), %edx	# rook_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp109
	addl	%edx, %eax	# D.4186, tmp108
	movl	%eax, -12(%rbp)	# tmp108, a_sq
	.loc 1 34 0
	movl	-12(%rbp), %eax	# a_sq, tmp111
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$5, %eax	#, D.4186
	jne	.L6	#,
	.loc 1 36 0
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 37 0
	jmp	.L7	#
.L6:
	.loc 1 42 0
	jmp	.L8	#
.L13:
	.loc 1 43 0
	movl	-12(%rbp), %eax	# a_sq, tmp113
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$7, %eax	#, D.4186
	je	.L9	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp115
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$9, %eax	#, D.4186
	jne	.L10	#,
.L9:
	.loc 1 45 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 46 0
	jmp	.L11	#
.L10:
	.loc 1 48 0
	movl	-12(%rbp), %eax	# a_sq, tmp117
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$13, %eax	#, D.4186
	je	.L12	#,
	.loc 1 48 0 is_stmt 0 discriminator 1
	jmp	.L11	#
.L12:
	.loc 1 49 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp119
	cltq
	movl	rook_o.3878(,%rax,4), %eax	# rook_o, D.4186
	addl	%eax, -12(%rbp)	# D.4186, a_sq
.L8:
	.loc 1 42 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp121
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	testl	%eax, %eax	# D.4186
	jne	.L13	#,
.L11:
	.loc 1 30 0
	addl	$1, -8(%rbp)	#, i
.L5:
	.loc 1 30 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L14	#,
.L7:
	.loc 1 55 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L15	#
.L25:
	.loc 1 56 0
	movl	-8(%rbp), %eax	# i, tmp123
	cltq
	movl	bishop_o.3879(,%rax,4), %edx	# bishop_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp127
	addl	%edx, %eax	# D.4186, tmp126
	movl	%eax, -12(%rbp)	# tmp126, a_sq
	.loc 1 58 0
	movl	-12(%rbp), %eax	# a_sq, tmp129
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$1, %eax	#, D.4186
	jne	.L16	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, i.1
	andl	$1, %eax	#, D.4187
	testl	%eax, %eax	# D.4187
	je	.L16	#,
	.loc 1 60 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 61 0
	jmp	.L17	#
.L16:
	.loc 1 64 0
	movl	-12(%rbp), %eax	# a_sq, tmp131
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$5, %eax	#, D.4186
	jne	.L18	#,
	.loc 1 66 0
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 67 0
	jmp	.L17	#
.L18:
	.loc 1 71 0
	jmp	.L19	#
.L24:
	.loc 1 72 0
	movl	-12(%rbp), %eax	# a_sq, tmp133
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$11, %eax	#, D.4186
	je	.L20	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp135
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$9, %eax	#, D.4186
	jne	.L21	#,
.L20:
	.loc 1 74 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 75 0
	jmp	.L22	#
.L21:
	.loc 1 77 0
	movl	-12(%rbp), %eax	# a_sq, tmp137
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$13, %eax	#, D.4186
	je	.L23	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	jmp	.L22	#
.L23:
	.loc 1 78 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp139
	cltq
	movl	bishop_o.3879(,%rax,4), %eax	# bishop_o, D.4186
	addl	%eax, -12(%rbp)	# D.4186, a_sq
.L19:
	.loc 1 71 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp141
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	testl	%eax, %eax	# D.4186
	jne	.L24	#,
.L22:
	.loc 1 55 0
	addl	$1, -8(%rbp)	#, i
.L15:
	.loc 1 55 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L25	#,
.L17:
	.loc 1 84 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L26	#
.L28:
	.loc 1 85 0
	movl	-8(%rbp), %eax	# i, tmp143
	cltq
	movl	knight_o.3880(,%rax,4), %edx	# knight_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp147
	addl	%edx, %eax	# D.4186, tmp146
	movl	%eax, -12(%rbp)	# tmp146, a_sq
	.loc 1 86 0
	movl	-12(%rbp), %eax	# a_sq, tmp149
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$3, %eax	#, D.4186
	jne	.L27	#,
	.loc 1 87 0
	addl	$1, -4(%rbp)	#, attackers
.L27:
	.loc 1 84 0
	addl	$1, -8(%rbp)	#, i
.L26:
	.loc 1 84 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, i
	jle	.L28	#,
	jmp	.L29	#
.L4:
	.loc 1 98 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L30	#
.L39:
	.loc 1 99 0
	movl	-8(%rbp), %eax	# i, tmp151
	cltq
	movl	rook_o.3878(,%rax,4), %edx	# rook_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp155
	addl	%edx, %eax	# D.4186, tmp154
	movl	%eax, -12(%rbp)	# tmp154, a_sq
	.loc 1 101 0
	movl	-12(%rbp), %eax	# a_sq, tmp157
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$6, %eax	#, D.4186
	jne	.L31	#,
	.loc 1 103 0
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 104 0
	jmp	.L32	#
.L31:
	.loc 1 108 0
	jmp	.L33	#
.L38:
	.loc 1 109 0
	movl	-12(%rbp), %eax	# a_sq, tmp159
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$8, %eax	#, D.4186
	je	.L34	#,
	.loc 1 109 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp161
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$10, %eax	#, D.4186
	jne	.L35	#,
.L34:
	.loc 1 111 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 112 0
	jmp	.L36	#
.L35:
	.loc 1 114 0
	movl	-12(%rbp), %eax	# a_sq, tmp163
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$13, %eax	#, D.4186
	je	.L37	#,
	.loc 1 114 0 is_stmt 0 discriminator 1
	jmp	.L36	#
.L37:
	.loc 1 115 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp165
	cltq
	movl	rook_o.3878(,%rax,4), %eax	# rook_o, D.4186
	addl	%eax, -12(%rbp)	# D.4186, a_sq
.L33:
	.loc 1 108 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp167
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	testl	%eax, %eax	# D.4186
	jne	.L38	#,
.L36:
	.loc 1 98 0
	addl	$1, -8(%rbp)	#, i
.L30:
	.loc 1 98 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L39	#,
.L32:
	.loc 1 121 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L40	#
.L50:
	.loc 1 122 0
	movl	-8(%rbp), %eax	# i, tmp169
	cltq
	movl	bishop_o.3879(,%rax,4), %edx	# bishop_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp173
	addl	%edx, %eax	# D.4186, tmp172
	movl	%eax, -12(%rbp)	# tmp172, a_sq
	.loc 1 124 0
	movl	-12(%rbp), %eax	# a_sq, tmp175
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$2, %eax	#, D.4186
	jne	.L41	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, i.2
	andl	$1, %eax	#, D.4187
	testl	%eax, %eax	# D.4187
	jne	.L41	#,
	.loc 1 126 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 127 0
	jmp	.L42	#
.L41:
	.loc 1 130 0
	movl	-12(%rbp), %eax	# a_sq, tmp177
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$6, %eax	#, D.4186
	jne	.L43	#,
	.loc 1 132 0
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 133 0
	jmp	.L42	#
.L43:
	.loc 1 136 0
	jmp	.L44	#
.L49:
	.loc 1 137 0
	movl	-12(%rbp), %eax	# a_sq, tmp179
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$12, %eax	#, D.4186
	je	.L45	#,
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp181
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$10, %eax	#, D.4186
	jne	.L46	#,
.L45:
	.loc 1 139 0 is_stmt 1
	addl	$1, -4(%rbp)	#, attackers
	.loc 1 140 0
	jmp	.L47	#
.L46:
	.loc 1 142 0
	movl	-12(%rbp), %eax	# a_sq, tmp183
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$13, %eax	#, D.4186
	je	.L48	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	jmp	.L47	#
.L48:
	.loc 1 143 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp185
	cltq
	movl	bishop_o.3879(,%rax,4), %eax	# bishop_o, D.4186
	addl	%eax, -12(%rbp)	# D.4186, a_sq
.L44:
	.loc 1 136 0 discriminator 1
	movl	-12(%rbp), %eax	# a_sq, tmp187
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	testl	%eax, %eax	# D.4186
	jne	.L49	#,
.L47:
	.loc 1 121 0
	addl	$1, -8(%rbp)	#, i
.L40:
	.loc 1 121 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L50	#,
.L42:
	.loc 1 149 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L51	#
.L53:
	.loc 1 150 0
	movl	-8(%rbp), %eax	# i, tmp189
	cltq
	movl	knight_o.3880(,%rax,4), %edx	# knight_o, D.4186
	movl	-20(%rbp), %eax	# square, tmp193
	addl	%edx, %eax	# D.4186, tmp192
	movl	%eax, -12(%rbp)	# tmp192, a_sq
	.loc 1 151 0
	movl	-12(%rbp), %eax	# a_sq, tmp195
	cltq
	movl	board(,%rax,4), %eax	# board, D.4186
	cmpl	$4, %eax	#, D.4186
	jne	.L52	#,
	.loc 1 152 0
	addl	$1, -4(%rbp)	#, attackers
.L52:
	.loc 1 149 0
	addl	$1, -8(%rbp)	#, i
.L51:
	.loc 1 149 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, i
	jle	.L53	#,
.L29:
	.loc 1 158 0 is_stmt 1
	movl	-4(%rbp), %eax	# attackers, D.4186
.L3:
	.loc 1 160 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	calc_attackers, .-calc_attackers
	.globl	is_attacked
	.type	is_attacked, @function
is_attacked:
.LFB3:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)	# square, square
	movl	%esi, -40(%rbp)	# color, color
	.loc 1 174 0
	movl	-40(%rbp), %eax	# color, tmp75
	andl	$1, %eax	#, D.4189
	testl	%eax, %eax	# D.4189
	je	.L55	#,
	.loc 1 177 0
	movl	$0, %ebx	#, i
	jmp	.L56	#
.L66:
	.loc 1 178 0
	movslq	%ebx, %rax	# i, tmp76
	movl	bishop_o.3919(,%rax,4), %r14d	# bishop_o, ndir
	.loc 1 179 0
	movl	-36(%rbp), %eax	# square, tmp77
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 180 0
	movslq	%r13d, %rax	# a_sq, tmp78
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 182 0
	cmpl	$1, %r12d	#, basq
	jne	.L57	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# i, D.4189
	andl	$1, %eax	#, D.4189
	testl	%eax, %eax	# D.4189
	je	.L57	#,
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L57:
	.loc 1 184 0 is_stmt 1
	cmpl	$5, %r12d	#, basq
	jne	.L59	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L59:
	.loc 1 185 0 is_stmt 1
	jmp	.L60	#
.L65:
	.loc 1 186 0
	cmpl	$11, %r12d	#, basq
	je	.L61	#,
	.loc 1 186 0 is_stmt 0 discriminator 2
	cmpl	$9, %r12d	#, basq
	jne	.L62	#,
.L61:
	.loc 1 186 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L62:
	.loc 1 187 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L63	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	jmp	.L64	#
.L63:
	.loc 1 188 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 189 0
	movslq	%r13d, %rax	# a_sq, tmp79
	movl	board(,%rax,4), %r12d	# board, basq
.L60:
	.loc 1 185 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L65	#,
.L64:
	.loc 1 177 0
	addl	$1, %ebx	#, i
.L56:
	.loc 1 177 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L66	#,
	.loc 1 193 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L67	#
.L69:
	.loc 1 194 0
	movslq	%ebx, %rax	# i, tmp80
	movl	knight_o.3920(,%rax,4), %edx	# knight_o, D.4189
	movl	-36(%rbp), %eax	# square, tmp81
	addl	%edx, %eax	# D.4189, D.4189
	cltq
	movl	board(,%rax,4), %eax	# board, D.4189
	cmpl	$3, %eax	#, D.4189
	jne	.L68	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L68:
	.loc 1 193 0 is_stmt 1
	addl	$1, %ebx	#, i
.L67:
	.loc 1 193 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, i
	jle	.L69	#,
	.loc 1 197 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L70	#
.L78:
	.loc 1 198 0
	movslq	%ebx, %rax	# i, tmp83
	movl	rook_o.3918(,%rax,4), %r14d	# rook_o, ndir
	.loc 1 199 0
	movl	-36(%rbp), %eax	# square, tmp84
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 200 0
	movslq	%r13d, %rax	# a_sq, tmp85
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 202 0
	cmpl	$5, %r12d	#, basq
	jne	.L71	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L71:
	.loc 1 204 0 is_stmt 1
	jmp	.L72	#
.L77:
	.loc 1 205 0
	cmpl	$7, %r12d	#, basq
	je	.L73	#,
	.loc 1 205 0 is_stmt 0 discriminator 2
	cmpl	$9, %r12d	#, basq
	jne	.L74	#,
.L73:
	.loc 1 205 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L74:
	.loc 1 206 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L75	#,
	.loc 1 206 0 is_stmt 0 discriminator 1
	jmp	.L76	#
.L75:
	.loc 1 207 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 208 0
	movslq	%r13d, %rax	# a_sq, tmp86
	movl	board(,%rax,4), %r12d	# board, basq
.L72:
	.loc 1 204 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L77	#,
.L76:
	.loc 1 197 0
	addl	$1, %ebx	#, i
.L70:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L78	#,
	.loc 1 213 0 is_stmt 1
	movl	$0, %eax	#, D.4188
	jmp	.L58	#
.L55:
	.loc 1 220 0
	movl	$0, %ebx	#, i
	jmp	.L79	#
.L88:
	.loc 1 221 0
	movslq	%ebx, %rax	# i, tmp87
	movl	bishop_o.3919(,%rax,4), %r14d	# bishop_o, ndir
	.loc 1 222 0
	movl	-36(%rbp), %eax	# square, tmp88
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 223 0
	movslq	%r13d, %rax	# a_sq, tmp89
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 225 0
	cmpl	$2, %r12d	#, basq
	jne	.L80	#,
	.loc 1 225 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# i, D.4189
	andl	$1, %eax	#, D.4189
	testl	%eax, %eax	# D.4189
	jne	.L80	#,
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L80:
	.loc 1 227 0 is_stmt 1
	cmpl	$6, %r12d	#, basq
	jne	.L81	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L81:
	.loc 1 228 0 is_stmt 1
	jmp	.L82	#
.L87:
	.loc 1 229 0
	cmpl	$12, %r12d	#, basq
	je	.L83	#,
	.loc 1 229 0 is_stmt 0 discriminator 2
	cmpl	$10, %r12d	#, basq
	jne	.L84	#,
.L83:
	.loc 1 229 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L84:
	.loc 1 230 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L85	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	jmp	.L86	#
.L85:
	.loc 1 231 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 232 0
	movslq	%r13d, %rax	# a_sq, tmp90
	movl	board(,%rax,4), %r12d	# board, basq
.L82:
	.loc 1 228 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L87	#,
.L86:
	.loc 1 220 0
	addl	$1, %ebx	#, i
.L79:
	.loc 1 220 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L88	#,
	.loc 1 237 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L89	#
.L91:
	.loc 1 238 0
	movslq	%ebx, %rax	# i, tmp91
	movl	knight_o.3920(,%rax,4), %edx	# knight_o, D.4189
	movl	-36(%rbp), %eax	# square, tmp92
	addl	%edx, %eax	# D.4189, D.4189
	cltq
	movl	board(,%rax,4), %eax	# board, D.4189
	cmpl	$4, %eax	#, D.4189
	jne	.L90	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L90:
	.loc 1 237 0 is_stmt 1
	addl	$1, %ebx	#, i
.L89:
	.loc 1 237 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, i
	jle	.L91	#,
	.loc 1 242 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L92	#
.L100:
	.loc 1 243 0
	movslq	%ebx, %rax	# i, tmp94
	movl	rook_o.3918(,%rax,4), %r14d	# rook_o, ndir
	.loc 1 244 0
	movslq	%ebx, %rax	# i, tmp95
	movl	rook_o.3918(,%rax,4), %edx	# rook_o, D.4189
	movl	-36(%rbp), %eax	# square, tmp96
	leal	(%rdx,%rax), %r13d	#, a_sq
	.loc 1 245 0
	movslq	%r13d, %rax	# a_sq, tmp97
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 247 0
	cmpl	$6, %r12d	#, basq
	jne	.L93	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L93:
	.loc 1 249 0 is_stmt 1
	jmp	.L94	#
.L99:
	.loc 1 250 0
	cmpl	$8, %r12d	#, basq
	je	.L95	#,
	.loc 1 250 0 is_stmt 0 discriminator 2
	cmpl	$10, %r12d	#, basq
	jne	.L96	#,
.L95:
	.loc 1 250 0 discriminator 1
	movl	$1, %eax	#, D.4188
	jmp	.L58	#
.L96:
	.loc 1 251 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L97	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	jmp	.L98	#
.L97:
	.loc 1 252 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 253 0
	movslq	%r13d, %rax	# a_sq, tmp98
	movl	board(,%rax,4), %r12d	# board, basq
.L94:
	.loc 1 249 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L99	#,
.L98:
	.loc 1 242 0
	addl	$1, %ebx	#, i
.L92:
	.loc 1 242 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L100	#,
	.loc 1 258 0 is_stmt 1
	movl	$0, %eax	#, D.4188
.L58:
	.loc 1 262 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	is_attacked, .-is_attacked
	.globl	nk_attacked
	.type	nk_attacked, @function
nk_attacked:
.LFB4:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)	# square, square
	movl	%esi, -40(%rbp)	# color, color
	.loc 1 276 0
	movl	-40(%rbp), %eax	# color, tmp75
	andl	$1, %eax	#, D.4191
	testl	%eax, %eax	# D.4191
	je	.L102	#,
	.loc 1 279 0
	movl	$0, %ebx	#, i
	jmp	.L103	#
.L112:
	.loc 1 280 0
	movslq	%ebx, %rax	# i, tmp76
	movl	bishop_o.3960(,%rax,4), %r14d	# bishop_o, ndir
	.loc 1 281 0
	movl	-36(%rbp), %eax	# square, tmp77
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 282 0
	movslq	%r13d, %rax	# a_sq, tmp78
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 284 0
	cmpl	$1, %r12d	#, basq
	jne	.L104	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# i, D.4191
	andl	$1, %eax	#, D.4191
	testl	%eax, %eax	# D.4191
	je	.L104	#,
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L104:
	.loc 1 286 0 is_stmt 1
	jmp	.L106	#
.L111:
	.loc 1 287 0
	cmpl	$11, %r12d	#, basq
	je	.L107	#,
	.loc 1 287 0 is_stmt 0 discriminator 2
	cmpl	$9, %r12d	#, basq
	jne	.L108	#,
.L107:
	.loc 1 287 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L108:
	.loc 1 288 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L109	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	jmp	.L110	#
.L109:
	.loc 1 289 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 290 0
	movslq	%r13d, %rax	# a_sq, tmp79
	movl	board(,%rax,4), %r12d	# board, basq
.L106:
	.loc 1 286 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L111	#,
.L110:
	.loc 1 279 0
	addl	$1, %ebx	#, i
.L103:
	.loc 1 279 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L112	#,
	.loc 1 294 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L113	#
.L115:
	.loc 1 295 0
	movslq	%ebx, %rax	# i, tmp80
	movl	knight_o.3961(,%rax,4), %edx	# knight_o, D.4191
	movl	-36(%rbp), %eax	# square, tmp81
	addl	%edx, %eax	# D.4191, D.4191
	cltq
	movl	board(,%rax,4), %eax	# board, D.4191
	cmpl	$3, %eax	#, D.4191
	jne	.L114	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L114:
	.loc 1 294 0 is_stmt 1
	addl	$1, %ebx	#, i
.L113:
	.loc 1 294 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, i
	jle	.L115	#,
	.loc 1 298 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L116	#
.L123:
	.loc 1 299 0
	movslq	%ebx, %rax	# i, tmp83
	movl	rook_o.3959(,%rax,4), %r14d	# rook_o, ndir
	.loc 1 300 0
	movl	-36(%rbp), %eax	# square, tmp84
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 301 0
	movslq	%r13d, %rax	# a_sq, tmp85
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 303 0
	jmp	.L117	#
.L122:
	.loc 1 304 0
	cmpl	$7, %r12d	#, basq
	je	.L118	#,
	.loc 1 304 0 is_stmt 0 discriminator 2
	cmpl	$9, %r12d	#, basq
	jne	.L119	#,
.L118:
	.loc 1 304 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L119:
	.loc 1 305 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L120	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	jmp	.L121	#
.L120:
	.loc 1 306 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 307 0
	movslq	%r13d, %rax	# a_sq, tmp86
	movl	board(,%rax,4), %r12d	# board, basq
.L117:
	.loc 1 303 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L122	#,
.L121:
	.loc 1 298 0
	addl	$1, %ebx	#, i
.L116:
	.loc 1 298 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L123	#,
	.loc 1 312 0 is_stmt 1
	movl	$0, %eax	#, D.4190
	jmp	.L105	#
.L102:
	.loc 1 319 0
	movl	$0, %ebx	#, i
	jmp	.L124	#
.L132:
	.loc 1 320 0
	movslq	%ebx, %rax	# i, tmp87
	movl	bishop_o.3960(,%rax,4), %r14d	# bishop_o, ndir
	.loc 1 321 0
	movl	-36(%rbp), %eax	# square, tmp88
	leal	(%r14,%rax), %r13d	#, a_sq
	.loc 1 322 0
	movslq	%r13d, %rax	# a_sq, tmp89
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 324 0
	cmpl	$2, %r12d	#, basq
	jne	.L125	#,
	.loc 1 324 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# i, D.4191
	andl	$1, %eax	#, D.4191
	testl	%eax, %eax	# D.4191
	jne	.L125	#,
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L125:
	.loc 1 326 0 is_stmt 1
	jmp	.L126	#
.L131:
	.loc 1 327 0
	cmpl	$12, %r12d	#, basq
	je	.L127	#,
	.loc 1 327 0 is_stmt 0 discriminator 2
	cmpl	$10, %r12d	#, basq
	jne	.L128	#,
.L127:
	.loc 1 327 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L128:
	.loc 1 328 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L129	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	jmp	.L130	#
.L129:
	.loc 1 329 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 330 0
	movslq	%r13d, %rax	# a_sq, tmp90
	movl	board(,%rax,4), %r12d	# board, basq
.L126:
	.loc 1 326 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L131	#,
.L130:
	.loc 1 319 0
	addl	$1, %ebx	#, i
.L124:
	.loc 1 319 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L132	#,
	.loc 1 335 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L133	#
.L135:
	.loc 1 336 0
	movslq	%ebx, %rax	# i, tmp91
	movl	knight_o.3961(,%rax,4), %edx	# knight_o, D.4191
	movl	-36(%rbp), %eax	# square, tmp92
	addl	%edx, %eax	# D.4191, D.4191
	cltq
	movl	board(,%rax,4), %eax	# board, D.4191
	cmpl	$4, %eax	#, D.4191
	jne	.L134	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L134:
	.loc 1 335 0 is_stmt 1
	addl	$1, %ebx	#, i
.L133:
	.loc 1 335 0 is_stmt 0 discriminator 1
	cmpl	$7, %ebx	#, i
	jle	.L135	#,
	.loc 1 340 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L136	#
.L143:
	.loc 1 341 0
	movslq	%ebx, %rax	# i, tmp94
	movl	rook_o.3959(,%rax,4), %r14d	# rook_o, ndir
	.loc 1 342 0
	movslq	%ebx, %rax	# i, tmp95
	movl	rook_o.3959(,%rax,4), %edx	# rook_o, D.4191
	movl	-36(%rbp), %eax	# square, tmp96
	leal	(%rdx,%rax), %r13d	#, a_sq
	.loc 1 343 0
	movslq	%r13d, %rax	# a_sq, tmp97
	movl	board(,%rax,4), %r12d	# board, basq
	.loc 1 345 0
	jmp	.L137	#
.L142:
	.loc 1 346 0
	cmpl	$8, %r12d	#, basq
	je	.L138	#,
	.loc 1 346 0 is_stmt 0 discriminator 2
	cmpl	$10, %r12d	#, basq
	jne	.L139	#,
.L138:
	.loc 1 346 0 discriminator 1
	movl	$1, %eax	#, D.4190
	jmp	.L105	#
.L139:
	.loc 1 347 0 is_stmt 1
	cmpl	$13, %r12d	#, basq
	je	.L140	#,
	.loc 1 347 0 is_stmt 0 discriminator 1
	jmp	.L141	#
.L140:
	.loc 1 348 0 is_stmt 1
	addl	%r14d, %r13d	# ndir, a_sq
	.loc 1 349 0
	movslq	%r13d, %rax	# a_sq, tmp98
	movl	board(,%rax,4), %r12d	# board, basq
.L137:
	.loc 1 345 0 discriminator 1
	testl	%r12d, %r12d	# basq
	jne	.L142	#,
.L141:
	.loc 1 340 0
	addl	$1, %ebx	#, i
.L136:
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L143	#,
	.loc 1 354 0 is_stmt 1
	movl	$0, %eax	#, D.4190
.L105:
	.loc 1 358 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	nk_attacked, .-nk_attacked
	.section	.rodata
	.align 16
	.type	rook_o.3878, @object
	.size	rook_o.3878, 16
rook_o.3878:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.3879, @object
	.size	bishop_o.3879, 16
bishop_o.3879:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3880, @object
	.size	knight_o.3880, 32
knight_o.3880:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	bishop_o.3919, @object
	.size	bishop_o.3919, 16
bishop_o.3919:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3920, @object
	.size	knight_o.3920, 32
knight_o.3920:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	rook_o.3918, @object
	.size	rook_o.3918, 16
rook_o.3918:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.3960, @object
	.size	bishop_o.3960, 16
bishop_o.3960:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3961, @object
	.size	knight_o.3961, 32
knight_o.3961:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	rook_o.3959, @object
	.size	rook_o.3959, 16
rook_o.3959:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x313
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF25
	.byte	0x1
	.long	.LASF26
	.long	.LASF27
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
	.long	.LASF28
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
	.long	.LASF20
	.byte	0x1
	.byte	0xe
	.long	0x77
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x146
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0xe
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0xe
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x12
	.long	0x156
	.uleb128 0x9
	.byte	0x3
	.quad	rook_o.3878
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x13
	.long	0x15b
	.uleb128 0x9
	.byte	0x3
	.quad	bishop_o.3879
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x14
	.long	0x170
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.3880
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x17
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x77
	.long	0x156
	.uleb128 0xc
	.long	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x146
	.uleb128 0xd
	.long	0x146
	.uleb128 0xb
	.long	0x77
	.long	0x170
	.uleb128 0xc
	.long	0x85
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x160
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0xa2
	.long	0x42
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x224
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0xa2
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0xa2
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0xa7
	.long	0x224
	.uleb128 0x9
	.byte	0x3
	.quad	rook_o.3918
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0xa8
	.long	0x229
	.uleb128 0x9
	.byte	0x3
	.quad	bishop_o.3919
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0xa9
	.long	0x22e
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.3920
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0xaa
	.long	0x77
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0xaa
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0xab
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xab
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.long	0x146
	.uleb128 0xd
	.long	0x146
	.uleb128 0xd
	.long	0x160
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.value	0x108
	.long	0x42
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ec
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.value	0x108
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.long	.LASF14
	.byte	0x1
	.value	0x108
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF15
	.byte	0x1
	.value	0x10d
	.long	0x2ec
	.uleb128 0x9
	.byte	0x3
	.quad	rook_o.3959
	.uleb128 0x10
	.long	.LASF16
	.byte	0x1
	.value	0x10e
	.long	0x2f1
	.uleb128 0x9
	.byte	0x3
	.quad	bishop_o.3960
	.uleb128 0x10
	.long	.LASF17
	.byte	0x1
	.value	0x10f
	.long	0x2f6
	.uleb128 0x9
	.byte	0x3
	.quad	knight_o.3961
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.value	0x110
	.long	0x77
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x10
	.long	.LASF18
	.byte	0x1
	.value	0x110
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.value	0x111
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x111
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.long	0x146
	.uleb128 0xd
	.long	0x146
	.uleb128 0xd
	.long	0x160
	.uleb128 0xb
	.long	0x77
	.long	0x30b
	.uleb128 0xc
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x12
	.long	.LASF29
	.byte	0x3
	.byte	0xc
	.long	0x2fb
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
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
.LASF28:
	.string	"xbool"
.LASF26:
	.string	"attacks.c"
.LASF1:
	.string	"TRUE"
.LASF21:
	.string	"is_attacked"
.LASF19:
	.string	"attackers"
.LASF12:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF16:
	.string	"bishop_o"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"square"
.LASF0:
	.string	"FALSE"
.LASF23:
	.string	"basq"
.LASF20:
	.string	"calc_attackers"
.LASF14:
	.string	"color"
.LASF18:
	.string	"a_sq"
.LASF27:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"knight_o"
.LASF9:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF24:
	.string	"nk_attacked"
.LASF10:
	.string	"char"
.LASF22:
	.string	"ndir"
.LASF25:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"rook_o"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF29:
	.string	"board"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
