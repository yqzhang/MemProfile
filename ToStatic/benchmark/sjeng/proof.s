	.file	"proof.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 proof.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	nodecount,4,4
	.comm	nodecount2,4,4
	.comm	pn2,4,4
	.comm	frees,4,4
	.comm	iters,4,4
	.comm	forwards,4,4
	.comm	maxply,4,4
	.comm	pn_time,4,4
	.comm	pn_move,24,16
	.comm	pn_saver,24,16
	.comm	kibitzed,4,4
	.comm	forcedwin,4,4
	.comm	rootlosers,1200,32
	.comm	alllosers,4,4
	.comm	membuff,8,8
	.globl	bufftop
	.bss
	.align 4
	.type	bufftop, @object
	.size	bufftop, 4
bufftop:
	.zero	4
	.text
	.globl	Xmalloc
	.type	Xmalloc, @function
Xmalloc:
.LFB2:
	.file 1 "proof.c"
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# size, size
	.loc 1 69 0
	movl	bufftop(%rip), %eax	# bufftop, tmp65
	movl	%eax, -4(%rbp)	# tmp65, oldtop
	.loc 1 71 0
	movl	bufftop(%rip), %edx	# bufftop, bufftop.0
	movl	-20(%rbp), %eax	# size, tmp66
	addl	%edx, %eax	# bufftop.0, bufftop.1
	movl	%eax, bufftop(%rip)	# bufftop.1, bufftop
	.loc 1 73 0
	movq	membuff(%rip), %rdx	# membuff, membuff.2
	movl	-4(%rbp), %eax	# oldtop, tmp67
	cltq
	addq	%rdx, %rax	# membuff.2, D.5135
	.loc 1 74 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Xmalloc, .-Xmalloc
	.globl	Xfree
	.type	Xfree, @function
Xfree:
.LFB3:
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 78 0
	movl	$0, bufftop(%rip)	#, bufftop
	.loc 1 79 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Xfree, .-Xfree
	.globl	freenodes
	.type	freenodes, @function
freenodes:
.LFB4:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	.loc 1 85 0
	cmpq	$0, -24(%rbp)	#, node
	jne	.L5	#,
	.loc 1 86 0
	jmp	.L4	#
.L5:
	.loc 1 88 0
	movq	-24(%rbp), %rax	# node, tmp74
	movq	16(%rax), %rax	# node_2(D)->children, D.5136
	testq	%rax, %rax	# D.5136
	je	.L7	#,
	.loc 1 90 0
	movq	-24(%rbp), %rax	# node, tmp75
	movzbl	1(%rax), %eax	# node_2(D)->num_children, D.5137
	testb	%al, %al	# D.5137
	je	.L7	#,
	.loc 1 92 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L8	#
.L10:
	.loc 1 94 0
	movq	-24(%rbp), %rax	# node, tmp76
	movq	16(%rax), %rax	# node_2(D)->children, D.5136
	movl	-4(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, D.5139
	salq	$3, %rdx	#, D.5139
	addq	%rdx, %rax	# D.5139, D.5136
	movq	(%rax), %rax	# *_11, D.5140
	testq	%rax, %rax	# D.5140
	je	.L9	#,
	.loc 1 96 0
	movq	-24(%rbp), %rax	# node, tmp78
	movq	16(%rax), %rax	# node_2(D)->children, D.5136
	movl	-4(%rbp), %edx	# i, tmp79
	movslq	%edx, %rdx	# tmp79, D.5139
	salq	$3, %rdx	#, D.5139
	addq	%rdx, %rax	# D.5139, D.5136
	movq	(%rax), %rax	# *_16, D.5140
	movq	%rax, %rdi	# D.5140,
	call	freenodes	#
.L9:
	.loc 1 92 0
	addl	$1, -4(%rbp)	#, i
.L8:
	.loc 1 92 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# node, tmp80
	movzbl	1(%rax), %eax	# node_2(D)->num_children, D.5137
	movzbl	%al, %eax	# D.5137, D.5138
	cmpl	-4(%rbp), %eax	# i, D.5138
	jg	.L10	#,
	.loc 1 99 0 is_stmt 1
	movq	-24(%rbp), %rax	# node, tmp81
	movq	16(%rax), %rax	# node_2(D)->children, D.5136
	movq	%rax, %rdi	# D.5136,
	call	free	#
.L7:
	.loc 1 103 0
	movq	-24(%rbp), %rax	# node, tmp82
	movq	%rax, %rdi	# tmp82,
	call	free	#
.L4:
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	freenodes, .-freenodes
	.globl	pn_eval
	.type	pn_eval, @function
pn_eval:
.LFB5:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	.loc 1 108 0
	movl	Variant(%rip), %eax	# Variant, Variant.3
	cmpl	$3, %eax	#, Variant.3
	jne	.L12	#,
	.loc 1 110 0
	movq	-8(%rbp), %rax	# this, tmp61
	movq	%rax, %rdi	# tmp61,
	call	suicide_pn_eval	#
	jmp	.L11	#
.L12:
	.loc 1 112 0
	movl	Variant(%rip), %eax	# Variant, Variant.4
	cmpl	$4, %eax	#, Variant.4
	jne	.L14	#,
	.loc 1 114 0
	movq	-8(%rbp), %rax	# this, tmp62
	movq	%rax, %rdi	# tmp62,
	call	losers_pn_eval	#
	jmp	.L11	#
.L14:
	.loc 1 118 0
	movq	-8(%rbp), %rax	# this, tmp63
	movq	%rax, %rdi	# tmp63,
	call	std_pn_eval	#
.L11:
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	pn_eval, .-pn_eval
	.globl	std_pn_eval
	.type	std_pn_eval, @function
std_pn_eval:
.LFB6:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12320, %rsp	#,
	movq	%rdi, -12312(%rbp)	# this, this
	.loc 1 129 0
	movq	-12312(%rbp), %rax	# this, tmp70
	movb	$1, 3(%rax)	#, this_3(D)->evaluated
	.loc 1 133 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.5
	testl	%eax, %eax	# white_to_move.5
	je	.L16	#,
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.6
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.6,
	call	is_attacked	#
	testl	%eax, %eax	# D.5141
	jne	.L17	#,
.L16:
	.loc 1 134 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.7
	testl	%eax, %eax	# white_to_move.7
	jne	.L18	#,
	.loc 1 134 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.8
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.8,
	call	is_attacked	#
	testl	%eax, %eax	# D.5141
	je	.L18	#,
.L17:
	.loc 1 137 0 is_stmt 1
	movl	$0, -12292(%rbp)	#, num_moves
	.loc 1 138 0
	leaq	-12288(%rbp), %rax	#, tmp71
	movq	%rax, %rdi	# tmp71,
	call	gen	#
	.loc 1 139 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp72
	movl	%eax, -12292(%rbp)	# tmp72, num_moves
	.loc 1 141 0
	movl	$1, -12300(%rbp)	#, mate
	.loc 1 143 0
	movl	$0, -12296(%rbp)	#, i
	jmp	.L19	#
.L22:
	.loc 1 145 0
	movl	-12296(%rbp), %edx	# i, tmp73
	leaq	-12288(%rbp), %rax	#, tmp74
	movl	%edx, %esi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	make	#
	.loc 1 148 0
	movl	-12296(%rbp), %ecx	# i, tmp75
	leaq	-12288(%rbp), %rax	#, tmp76
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	check_legal	#
	testl	%eax, %eax	# D.5141
	je	.L20	#,
	.loc 1 150 0
	movl	$0, -12300(%rbp)	#, mate
	.loc 1 151 0
	movl	-12296(%rbp), %edx	# i, tmp77
	leaq	-12288(%rbp), %rax	#, tmp78
	movl	%edx, %esi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	unmake	#
	.loc 1 152 0
	jmp	.L21	#
.L20:
	.loc 1 155 0
	movl	-12296(%rbp), %edx	# i, tmp79
	leaq	-12288(%rbp), %rax	#, tmp80
	movl	%edx, %esi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	unmake	#
	.loc 1 143 0
	addl	$1, -12296(%rbp)	#, i
.L19:
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-12296(%rbp), %eax	# i, tmp81
	cmpl	-12292(%rbp), %eax	# num_moves, tmp81
	jl	.L22	#,
.L21:
	.loc 1 158 0 is_stmt 1
	cmpl	$1, -12300(%rbp)	#, mate
	jne	.L23	#,
	.loc 1 161 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.9
	testl	%eax, %eax	# white_to_move.9
	sete	%al	#, D.5142
	movzbl	%al, %edx	# D.5142, D.5143
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.10
	cmpl	%eax, %edx	# root_to_move.10, D.5143
	jne	.L24	#,
	.loc 1 164 0
	movq	-12312(%rbp), %rax	# this, tmp82
	movb	$0, (%rax)	#, this_3(D)->value
	.loc 1 158 0
	jmp	.L15	#
.L24:
	.loc 1 168 0
	movq	-12312(%rbp), %rax	# this, tmp83
	movb	$1, (%rax)	#, this_3(D)->value
	.loc 1 158 0
	jmp	.L15	#
.L23:
	.loc 1 173 0
	movq	-12312(%rbp), %rax	# this, tmp84
	movb	$2, (%rax)	#, this_3(D)->value
	.loc 1 158 0
	jmp	.L15	#
.L18:
	.loc 1 178 0
	movq	-12312(%rbp), %rax	# this, tmp85
	movb	$2, (%rax)	#, this_3(D)->value
.L15:
	.loc 1 183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	std_pn_eval, .-std_pn_eval
	.globl	suicide_pn_eval
	.type	suicide_pn_eval, @function
suicide_pn_eval:
.LFB7:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# this, this
	.loc 1 188 0
	movl	$0, -12(%rbp)	#, wp
	movl	$0, -8(%rbp)	#, bp
	.loc 1 190 0
	movq	-40(%rbp), %rax	# this, tmp63
	movb	$1, 3(%rax)	#, this_14(D)->evaluated
	.loc 1 192 0
	movl	$1, -20(%rbp)	#, j
	movl	$1, -16(%rbp)	#, a
	jmp	.L29	#
.L37:
	.loc 1 194 0
	movl	-20(%rbp), %eax	# j, tmp65
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp66
	movl	%eax, -4(%rbp)	# tmp66, i
	.loc 1 196 0
	cmpl	$0, -4(%rbp)	#, i
	jne	.L30	#,
	.loc 1 197 0
	jmp	.L31	#
.L30:
	.loc 1 199 0
	addl	$1, -16(%rbp)	#, a
	.loc 1 201 0
	movl	-4(%rbp), %eax	# i, tmp68
	cltq
	movl	board(,%rax,4), %eax	# board, D.5144
	cmpl	$12, %eax	#, D.5144
	ja	.L32	#,
	movl	%eax, %eax	# D.5144, tmp69
	movq	.L34(,%rax,8), %rax	#, tmp70
	jmp	*%rax	# tmp70
	.section	.rodata
	.align 8
	.align 4
.L34:
	.quad	.L32
	.quad	.L33
	.quad	.L35
	.quad	.L33
	.quad	.L35
	.quad	.L33
	.quad	.L35
	.quad	.L33
	.quad	.L35
	.quad	.L33
	.quad	.L35
	.quad	.L33
	.quad	.L35
	.text
.L33:
	.loc 1 208 0
	addl	$1, -12(%rbp)	#, wp
	jmp	.L32	#
.L35:
	.loc 1 214 0
	addl	$1, -8(%rbp)	#, bp
	nop
.L32:
	.loc 1 217 0
	cmpl	$0, -12(%rbp)	#, wp
	je	.L31	#,
	.loc 1 217 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, bp
	je	.L31	#,
	jmp	.L36	#
.L31:
	.loc 1 192 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L29:
	.loc 1 192 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.11
	cmpl	%eax, -16(%rbp)	# piece_count.11, a
	jle	.L37	#,
.L36:
	.loc 1 220 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, wp
	jne	.L38	#,
	.loc 1 224 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.12
	testl	%eax, %eax	# root_to_move.12
	jne	.L39	#,
	.loc 1 227 0
	movq	-40(%rbp), %rax	# this, tmp71
	movb	$1, (%rax)	#, this_14(D)->value
	jmp	.L28	#
.L39:
	.loc 1 231 0
	movq	-40(%rbp), %rax	# this, tmp72
	movb	$0, (%rax)	#, this_14(D)->value
	jmp	.L28	#
.L38:
	.loc 1 234 0
	cmpl	$0, -8(%rbp)	#, bp
	jne	.L42	#,
	.loc 1 237 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.13
	testl	%eax, %eax	# root_to_move.13
	jne	.L43	#,
	.loc 1 240 0
	movq	-40(%rbp), %rax	# this, tmp73
	movb	$0, (%rax)	#, this_14(D)->value
	jmp	.L28	#
.L43:
	.loc 1 244 0
	movq	-40(%rbp), %rax	# this, tmp74
	movb	$1, (%rax)	#, this_14(D)->value
	jmp	.L28	#
.L42:
	.loc 1 249 0
	movq	-40(%rbp), %rax	# this, tmp75
	movb	$2, (%rax)	#, this_14(D)->value
.L28:
	.loc 1 251 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	suicide_pn_eval, .-suicide_pn_eval
	.globl	losers_pn_eval
	.type	losers_pn_eval, @function
losers_pn_eval:
.LFB8:
	.loc 1 254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12336, %rsp	#,
	movq	%rdi, -12328(%rbp)	# this, this
	.loc 1 260 0
	movl	$0, -12300(%rbp)	#, wp
	movl	$0, -12296(%rbp)	#, bp
	.loc 1 262 0
	movq	-12328(%rbp), %rax	# this, tmp75
	movb	$1, 3(%rax)	#, this_18(D)->evaluated
	.loc 1 266 0
	movl	$1, -12308(%rbp)	#, j
	movl	$1, -12304(%rbp)	#, a
	jmp	.L46	#
.L54:
	.loc 1 268 0
	movl	-12308(%rbp), %eax	# j, tmp77
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp78
	movl	%eax, -12312(%rbp)	# tmp78, i
	.loc 1 270 0
	cmpl	$0, -12312(%rbp)	#, i
	jne	.L47	#,
	.loc 1 271 0
	jmp	.L48	#
.L47:
	.loc 1 273 0
	addl	$1, -12304(%rbp)	#, a
	.loc 1 275 0
	movl	-12312(%rbp), %eax	# i, tmp80
	cltq
	movl	board(,%rax,4), %eax	# board, D.5145
	cmpl	$12, %eax	#, D.5145
	ja	.L49	#,
	movl	%eax, %eax	# D.5145, tmp81
	movq	.L51(,%rax,8), %rax	#, tmp82
	jmp	*%rax	# tmp82
	.section	.rodata
	.align 8
	.align 4
.L51:
	.quad	.L49
	.quad	.L50
	.quad	.L52
	.quad	.L50
	.quad	.L52
	.quad	.L49
	.quad	.L49
	.quad	.L50
	.quad	.L52
	.quad	.L50
	.quad	.L52
	.quad	.L50
	.quad	.L52
	.text
.L50:
	.loc 1 281 0
	addl	$1, -12300(%rbp)	#, wp
	jmp	.L49	#
.L52:
	.loc 1 286 0
	addl	$1, -12296(%rbp)	#, bp
	nop
.L49:
	.loc 1 289 0
	cmpl	$0, -12300(%rbp)	#, wp
	je	.L48	#,
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$0, -12296(%rbp)	#, bp
	je	.L48	#,
	jmp	.L53	#
.L48:
	.loc 1 266 0 is_stmt 1
	addl	$1, -12308(%rbp)	#, j
.L46:
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.14
	cmpl	%eax, -12304(%rbp)	# piece_count.14, a
	jle	.L54	#,
.L53:
	.loc 1 293 0 is_stmt 1
	cmpl	$0, -12300(%rbp)	#, wp
	jne	.L55	#,
	.loc 1 296 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.15
	testl	%eax, %eax	# root_to_move.15
	jne	.L56	#,
	.loc 1 299 0
	movq	-12328(%rbp), %rax	# this, tmp83
	movb	$1, (%rax)	#, this_18(D)->value
	.loc 1 305 0
	jmp	.L45	#
.L56:
	.loc 1 303 0
	movq	-12328(%rbp), %rax	# this, tmp84
	movb	$0, (%rax)	#, this_18(D)->value
	.loc 1 305 0
	jmp	.L45	#
.L55:
	.loc 1 307 0
	cmpl	$0, -12296(%rbp)	#, bp
	jne	.L59	#,
	.loc 1 309 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.16
	testl	%eax, %eax	# root_to_move.16
	je	.L60	#,
	.loc 1 312 0
	movq	-12328(%rbp), %rax	# this, tmp85
	movb	$1, (%rax)	#, this_18(D)->value
	.loc 1 318 0
	jmp	.L45	#
.L60:
	.loc 1 316 0
	movq	-12328(%rbp), %rax	# this, tmp86
	movb	$0, (%rax)	#, this_18(D)->value
	.loc 1 318 0
	jmp	.L45	#
.L59:
	.loc 1 321 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.17
	testl	%eax, %eax	# white_to_move.17
	je	.L62	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.18
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.18,
	call	is_attacked	#
	testl	%eax, %eax	# D.5146
	jne	.L63	#,
.L62:
	.loc 1 322 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.19
	testl	%eax, %eax	# white_to_move.19
	jne	.L64	#,
	.loc 1 322 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.20
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.20,
	call	is_attacked	#
	testl	%eax, %eax	# D.5146
	je	.L64	#,
.L63:
	.loc 1 325 0 is_stmt 1
	movl	$1, captures(%rip)	#, captures
	.loc 1 327 0
	movl	$0, -12292(%rbp)	#, num_moves
	.loc 1 328 0
	leaq	-12288(%rbp), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	gen	#
	.loc 1 329 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp88
	movl	%eax, -12292(%rbp)	# tmp88, num_moves
	.loc 1 330 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 332 0
	movl	$1, -12316(%rbp)	#, mate
	.loc 1 334 0
	movl	$0, -12312(%rbp)	#, i
	jmp	.L65	#
.L68:
	.loc 1 336 0
	movl	-12312(%rbp), %edx	# i, tmp89
	leaq	-12288(%rbp), %rax	#, tmp90
	movl	%edx, %esi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	make	#
	.loc 1 339 0
	movl	-12312(%rbp), %ecx	# i, tmp91
	leaq	-12288(%rbp), %rax	#, tmp92
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	check_legal	#
	testl	%eax, %eax	# D.5146
	je	.L66	#,
	.loc 1 341 0
	movl	$0, -12316(%rbp)	#, mate
	.loc 1 342 0
	movl	-12312(%rbp), %edx	# i, tmp93
	leaq	-12288(%rbp), %rax	#, tmp94
	movl	%edx, %esi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	unmake	#
	.loc 1 343 0
	jmp	.L67	#
.L66:
	.loc 1 346 0
	movl	-12312(%rbp), %edx	# i, tmp95
	leaq	-12288(%rbp), %rax	#, tmp96
	movl	%edx, %esi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	unmake	#
	.loc 1 334 0
	addl	$1, -12312(%rbp)	#, i
.L65:
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	-12312(%rbp), %eax	# i, tmp97
	cmpl	-12292(%rbp), %eax	# num_moves, tmp97
	jl	.L68	#,
.L67:
	.loc 1 349 0 is_stmt 1
	cmpl	$1, -12316(%rbp)	#, mate
	jne	.L69	#,
	.loc 1 352 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 353 0
	movl	$0, -12292(%rbp)	#, num_moves
	.loc 1 354 0
	leaq	-12288(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	gen	#
	.loc 1 355 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp99
	movl	%eax, -12292(%rbp)	# tmp99, num_moves
	.loc 1 357 0
	movl	$0, -12312(%rbp)	#, i
	jmp	.L70	#
.L72:
	.loc 1 359 0
	movl	-12312(%rbp), %edx	# i, tmp100
	leaq	-12288(%rbp), %rax	#, tmp101
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	make	#
	.loc 1 362 0
	movl	-12312(%rbp), %ecx	# i, tmp102
	leaq	-12288(%rbp), %rax	#, tmp103
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	check_legal	#
	testl	%eax, %eax	# D.5146
	je	.L71	#,
	.loc 1 364 0
	movl	$0, -12316(%rbp)	#, mate
	.loc 1 365 0
	movl	-12312(%rbp), %edx	# i, tmp104
	leaq	-12288(%rbp), %rax	#, tmp105
	movl	%edx, %esi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	unmake	#
	.loc 1 366 0
	jmp	.L69	#
.L71:
	.loc 1 369 0
	movl	-12312(%rbp), %edx	# i, tmp106
	leaq	-12288(%rbp), %rax	#, tmp107
	movl	%edx, %esi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	unmake	#
	.loc 1 357 0
	addl	$1, -12312(%rbp)	#, i
.L70:
	.loc 1 357 0 is_stmt 0 discriminator 1
	movl	-12312(%rbp), %eax	# i, tmp108
	cmpl	-12292(%rbp), %eax	# num_moves, tmp108
	jl	.L72	#,
.L69:
	.loc 1 373 0 is_stmt 1
	cmpl	$1, -12316(%rbp)	#, mate
	jne	.L73	#,
	.loc 1 376 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.21
	testl	%eax, %eax	# white_to_move.21
	sete	%al	#, D.5147
	movzbl	%al, %edx	# D.5147, D.5145
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.22
	cmpl	%eax, %edx	# root_to_move.22, D.5145
	jne	.L74	#,
	.loc 1 379 0
	movq	-12328(%rbp), %rax	# this, tmp109
	movb	$1, (%rax)	#, this_18(D)->value
	.loc 1 373 0
	jmp	.L77	#
.L74:
	.loc 1 383 0
	movq	-12328(%rbp), %rax	# this, tmp110
	movb	$0, (%rax)	#, this_18(D)->value
	.loc 1 373 0
	jmp	.L77	#
.L73:
	.loc 1 388 0
	movq	-12328(%rbp), %rax	# this, tmp111
	movb	$2, (%rax)	#, this_18(D)->value
	.loc 1 373 0
	jmp	.L77	#
.L64:
	.loc 1 393 0
	movq	-12328(%rbp), %rax	# this, tmp112
	movb	$2, (%rax)	#, this_18(D)->value
	jmp	.L45	#
.L77:
.L45:
	.loc 1 398 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	losers_pn_eval, .-losers_pn_eval
	.globl	select_most_proving
	.type	select_most_proving, @function
select_most_proving:
.LFB9:
	.loc 1 402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	.loc 1 406 0
	movq	-24(%rbp), %rax	# node, tmp93
	movq	%rax, -8(%rbp)	# tmp93, tnode
	.loc 1 408 0
	jmp	.L80	#
.L87:
	.loc 1 410 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.23
	testl	%eax, %eax	# white_to_move.23
	sete	%al	#, D.5149
	movzbl	%al, %edx	# D.5149, D.5150
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.24
	cmpl	%eax, %edx	# root_to_move.24, D.5150
	jne	.L81	#,
	.loc 1 412 0
	movl	$0, -12(%rbp)	#, i
	.loc 1 414 0
	jmp	.L82	#
.L83:
	.loc 1 416 0
	addl	$1, -12(%rbp)	#, i
.L82:
	.loc 1 414 0 discriminator 1
	movq	-8(%rbp), %rax	# tnode, tmp94
	movq	16(%rax), %rax	# tnode_4->children, D.5151
	movl	-12(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.5152
	salq	$3, %rdx	#, D.5152
	addq	%rdx, %rax	# D.5152, D.5151
	movq	(%rax), %rax	# *_16, D.5153
	movl	4(%rax), %edx	# _17->proof, D.5150
	movq	-8(%rbp), %rax	# tnode, tmp96
	movl	4(%rax), %eax	# tnode_4->proof, D.5150
	cmpl	%eax, %edx	# D.5150, D.5150
	jne	.L83	#,
	jmp	.L84	#
.L81:
	.loc 1 421 0
	movl	$0, -12(%rbp)	#, i
	.loc 1 423 0
	jmp	.L85	#
.L86:
	.loc 1 425 0
	addl	$1, -12(%rbp)	#, i
.L85:
	.loc 1 423 0 discriminator 1
	movq	-8(%rbp), %rax	# tnode, tmp97
	movq	16(%rax), %rax	# tnode_4->children, D.5151
	movl	-12(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, D.5152
	salq	$3, %rdx	#, D.5152
	addq	%rdx, %rax	# D.5152, D.5151
	movq	(%rax), %rax	# *_25, D.5153
	movl	8(%rax), %edx	# _26->disproof, D.5150
	movq	-8(%rbp), %rax	# tnode, tmp99
	movl	8(%rax), %eax	# tnode_4->disproof, D.5150
	cmpl	%eax, %edx	# D.5150, D.5150
	jne	.L86	#,
.L84:
	.loc 1 429 0
	movq	-8(%rbp), %rax	# tnode, tmp100
	movq	16(%rax), %rax	# tnode_4->children, D.5151
	movl	-12(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, D.5152
	salq	$3, %rdx	#, D.5152
	addq	%rdx, %rax	# D.5152, D.5151
	movq	(%rax), %rax	# *_33, tmp102
	movq	%rax, -8(%rbp)	# tmp102, tnode
	.loc 1 431 0
	movl	move_number(%rip), %edx	# move_number, move_number.25
	movl	ply(%rip), %eax	# ply, ply.26
	addl	%edx, %eax	# move_number.25, D.5150
	subl	$1, %eax	#, D.5150
	movl	hash(%rip), %edx	# hash, hash.27
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.27, hash_history
	.loc 1 433 0
	movq	-8(%rbp), %rax	# tnode, tmp104
	addq	$32, %rax	#, D.5154
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5154,
	call	make	#
	.loc 1 435 0
	movl	ply(%rip), %edx	# ply, ply.28
	movl	maxply(%rip), %eax	# maxply, maxply.29
	cmpl	%eax, %edx	# maxply.29, ply.28
	jle	.L80	#,
	.loc 1 436 0
	movl	ply(%rip), %eax	# ply, ply.30
	movl	%eax, maxply(%rip)	# ply.30, maxply
.L80:
	.loc 1 408 0 discriminator 1
	movq	-8(%rbp), %rax	# tnode, tmp105
	movzbl	2(%rax), %eax	# tnode_4->expanded, D.5148
	testb	%al, %al	# D.5148
	jne	.L87	#,
	.loc 1 440 0
	movq	-8(%rbp), %rax	# tnode, D.5155
	.loc 1 442 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	select_most_proving, .-select_most_proving
	.globl	set_proof_and_disproof_numbers
	.type	set_proof_and_disproof_numbers, @function
set_proof_and_disproof_numbers:
.LFB10:
	.loc 1 445 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12336, %rsp	#,
	movq	%rdi, -12328(%rbp)	# node, node
	.loc 1 453 0
	movq	-12328(%rbp), %rax	# node, tmp195
	movzbl	2(%rax), %eax	# node_25(D)->expanded, D.5156
	testb	%al, %al	# D.5156
	je	.L90	#,
	.loc 1 455 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.31
	testl	%eax, %eax	# white_to_move.31
	sete	%al	#, D.5157
	movzbl	%al, %edx	# D.5157, D.5158
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.32
	cmpl	%eax, %edx	# root_to_move.32, D.5158
	je	.L91	#,
	.loc 1 457 0
	movl	$0, -12312(%rbp)	#, proof
	.loc 1 458 0
	movl	$100000000, -12308(%rbp)	#, disproof
	.loc 1 460 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L92	#
.L95:
	.loc 1 462 0
	movq	-12328(%rbp), %rax	# node, tmp196
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_39, D.5161
	movl	4(%rax), %eax	# _40->proof, D.5158
	addl	%eax, -12312(%rbp)	# D.5158, proof
	.loc 1 464 0
	cmpl	$100000000, -12312(%rbp)	#, proof
	jle	.L93	#,
	.loc 1 465 0
	movl	$100000000, -12312(%rbp)	#, proof
.L93:
	.loc 1 467 0
	movq	-12328(%rbp), %rax	# node, tmp198
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_47, D.5161
	movl	8(%rax), %eax	# _48->disproof, D.5158
	cmpl	-12308(%rbp), %eax	# disproof, D.5158
	jge	.L94	#,
	.loc 1 469 0
	movq	-12328(%rbp), %rax	# node, tmp200
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp201
	movslq	%edx, %rdx	# tmp201, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_53, D.5161
	movl	8(%rax), %eax	# _54->disproof, tmp202
	movl	%eax, -12308(%rbp)	# tmp202, disproof
.L94:
	.loc 1 460 0
	addl	$1, -12304(%rbp)	#, i
.L92:
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-12328(%rbp), %rax	# node, tmp203
	movzbl	1(%rax), %eax	# node_25(D)->num_children, D.5156
	movzbl	%al, %eax	# D.5156, D.5158
	cmpl	-12304(%rbp), %eax	# i, D.5158
	jg	.L95	#,
	.loc 1 473 0 is_stmt 1
	cmpl	$0, -12312(%rbp)	#, proof
	je	.L96	#,
	.loc 1 473 0 is_stmt 0 discriminator 1
	cmpl	$100000000, -12308(%rbp)	#, disproof
	jne	.L97	#,
.L96:
	.loc 1 475 0 is_stmt 1
	movl	forwards(%rip), %eax	# forwards, forwards.33
	addl	$1, %eax	#, forwards.34
	movl	%eax, forwards(%rip)	# forwards.34, forwards
	.loc 1 476 0
	movl	$200, %r9d	#,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	$-1000000, %edx	#,
	movl	$1000000, %esi	#,
	movl	$999500, %edi	#,
	call	StoreTT	#
	jmp	.L100	#
.L97:
	.loc 1 478 0
	cmpl	$0, -12308(%rbp)	#, disproof
	je	.L99	#,
	.loc 1 478 0 is_stmt 0 discriminator 1
	cmpl	$100000000, -12312(%rbp)	#, proof
	jne	.L100	#,
.L99:
	.loc 1 480 0 is_stmt 1
	movl	forwards(%rip), %eax	# forwards, forwards.35
	addl	$1, %eax	#, forwards.36
	movl	%eax, forwards(%rip)	# forwards.36, forwards
	.loc 1 481 0
	movl	$200, %r9d	#,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	$-1000000, %edx	#,
	movl	$1000000, %esi	#,
	movl	$-999500, %edi	#,
	call	StoreTT	#
	jmp	.L100	#
.L91:
	.loc 1 486 0
	movl	$0, -12308(%rbp)	#, disproof
	.loc 1 487 0
	movl	$100000000, -12312(%rbp)	#, proof
	.loc 1 489 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L101	#
.L104:
	.loc 1 492 0
	movq	-12328(%rbp), %rax	# node, tmp204
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp205
	movslq	%edx, %rdx	# tmp205, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_69, D.5161
	movl	8(%rax), %eax	# _70->disproof, D.5158
	addl	%eax, -12308(%rbp)	# D.5158, disproof
	.loc 1 494 0
	cmpl	$100000000, -12308(%rbp)	#, disproof
	jle	.L102	#,
	.loc 1 495 0
	movl	$100000000, -12308(%rbp)	#, disproof
.L102:
	.loc 1 497 0
	movq	-12328(%rbp), %rax	# node, tmp206
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp207
	movslq	%edx, %rdx	# tmp207, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_77, D.5161
	movl	4(%rax), %eax	# _78->proof, D.5158
	cmpl	-12312(%rbp), %eax	# proof, D.5158
	jge	.L103	#,
	.loc 1 499 0
	movq	-12328(%rbp), %rax	# node, tmp208
	movq	16(%rax), %rax	# node_25(D)->children, D.5159
	movl	-12304(%rbp), %edx	# i, tmp209
	movslq	%edx, %rdx	# tmp209, D.5160
	salq	$3, %rdx	#, D.5160
	addq	%rdx, %rax	# D.5160, D.5159
	movq	(%rax), %rax	# *_83, D.5161
	movl	4(%rax), %eax	# _84->proof, tmp210
	movl	%eax, -12312(%rbp)	# tmp210, proof
.L103:
	.loc 1 489 0
	addl	$1, -12304(%rbp)	#, i
.L101:
	.loc 1 489 0 is_stmt 0 discriminator 1
	movq	-12328(%rbp), %rax	# node, tmp211
	movzbl	1(%rax), %eax	# node_25(D)->num_children, D.5156
	movzbl	%al, %eax	# D.5156, D.5158
	cmpl	-12304(%rbp), %eax	# i, D.5158
	jg	.L104	#,
	.loc 1 503 0 is_stmt 1
	cmpl	$0, -12312(%rbp)	#, proof
	je	.L105	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	cmpl	$100000000, -12308(%rbp)	#, disproof
	jne	.L106	#,
.L105:
	.loc 1 505 0 is_stmt 1
	movl	forwards(%rip), %eax	# forwards, forwards.37
	addl	$1, %eax	#, forwards.38
	movl	%eax, forwards(%rip)	# forwards.38, forwards
	.loc 1 506 0
	movl	$200, %r9d	#,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	$-1000000, %edx	#,
	movl	$1000000, %esi	#,
	movl	$999500, %edi	#,
	call	StoreTT	#
	jmp	.L100	#
.L106:
	.loc 1 508 0
	cmpl	$0, -12308(%rbp)	#, disproof
	je	.L107	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	cmpl	$100000000, -12312(%rbp)	#, proof
	jne	.L100	#,
.L107:
	.loc 1 510 0 is_stmt 1
	movl	forwards(%rip), %eax	# forwards, forwards.39
	addl	$1, %eax	#, forwards.40
	movl	%eax, forwards(%rip)	# forwards.40, forwards
	.loc 1 511 0
	movl	$200, %r9d	#,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	$-1000000, %edx	#,
	movl	$1000000, %esi	#,
	movl	$-999500, %edi	#,
	call	StoreTT	#
.L100:
	.loc 1 515 0 discriminator 1
	movl	move_number(%rip), %edx	# move_number, move_number.41
	movl	ply(%rip), %eax	# ply, ply.42
	addl	%edx, %eax	# move_number.41, D.5158
	subl	$1, %eax	#, D.5158
	movl	hash(%rip), %edx	# hash, hash.43
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.43, hash_history
	.loc 1 517 0 discriminator 1
	movq	-12328(%rbp), %rax	# node, tmp213
	movl	-12312(%rbp), %edx	# proof, tmp214
	movl	%edx, 4(%rax)	# tmp214, node_25(D)->proof
	.loc 1 518 0 discriminator 1
	movq	-12328(%rbp), %rax	# node, tmp215
	movl	-12308(%rbp), %edx	# disproof, tmp216
	movl	%edx, 8(%rax)	# tmp216, node_25(D)->disproof
	jmp	.L89	#
.L90:
	.loc 1 521 0
	movq	-12328(%rbp), %rax	# node, tmp217
	movzbl	3(%rax), %eax	# node_25(D)->evaluated, D.5156
	testb	%al, %al	# D.5156
	je	.L109	#,
	.loc 1 523 0
	movq	-12328(%rbp), %rax	# node, tmp218
	movzbl	(%rax), %eax	# node_25(D)->value, D.5156
	cmpb	$2, %al	#, D.5156
	jne	.L110	#,
	.loc 1 526 0
	movl	move_number(%rip), %edx	# move_number, move_number.44
	movl	ply(%rip), %eax	# ply, ply.45
	addl	%edx, %eax	# move_number.44, D.5158
	subl	$1, %eax	#, D.5158
	movl	hash(%rip), %edx	# hash, hash.46
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.46, hash_history
	.loc 1 528 0
	call	is_draw	#
	testl	%eax, %eax	# D.5162
	jne	.L111	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	ply(%rip), %eax	# ply, ply.47
	cmpl	$200, %eax	#, ply.47
	jle	.L112	#,
.L111:
	.loc 1 530 0 is_stmt 1
	movq	-12328(%rbp), %rax	# node, tmp220
	movl	$50000, 4(%rax)	#, node_25(D)->proof
	.loc 1 531 0
	movq	-12328(%rbp), %rax	# node, tmp221
	movl	$50000, 8(%rax)	#, node_25(D)->disproof
	jmp	.L89	#
.L112:
	.loc 1 537 0
	movl	Variant(%rip), %eax	# Variant, Variant.48
	cmpl	$4, %eax	#, Variant.48
	je	.L114	#,
	.loc 1 539 0
	movl	$0, -12296(%rbp)	#, num_moves
	.loc 1 540 0
	leaq	-12288(%rbp), %rax	#, tmp222
	movq	%rax, %rdi	# tmp222,
	call	gen	#
	.loc 1 541 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp223
	movl	%eax, -12296(%rbp)	# tmp223, num_moves
	.loc 1 543 0
	call	in_check	#
	movl	%eax, -12292(%rbp)	# D.5162, ic
	.loc 1 545 0
	movl	Variant(%rip), %eax	# Variant, Variant.49
	cmpl	$3, %eax	#, Variant.49
	je	.L115	#,
	.loc 1 547 0
	movl	$0, -12300(%rbp)	#, l
	.loc 1 549 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L116	#
.L118:
	.loc 1 551 0
	movl	-12304(%rbp), %edx	# i, tmp224
	leaq	-12288(%rbp), %rax	#, tmp225
	movl	%edx, %esi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	make	#
	.loc 1 553 0
	movl	-12292(%rbp), %edx	# ic, tmp226
	movl	-12304(%rbp), %ecx	# i, tmp227
	leaq	-12288(%rbp), %rax	#, tmp228
	movl	%ecx, %esi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	check_legal	#
	testl	%eax, %eax	# D.5162
	je	.L117	#,
	.loc 1 555 0
	addl	$1, -12300(%rbp)	#, l
.L117:
	.loc 1 557 0
	movl	-12304(%rbp), %edx	# i, tmp229
	leaq	-12288(%rbp), %rax	#, tmp230
	movl	%edx, %esi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	unmake	#
	.loc 1 549 0
	addl	$1, -12304(%rbp)	#, i
.L116:
	.loc 1 549 0 is_stmt 0 discriminator 1
	movl	-12304(%rbp), %eax	# i, tmp231
	cmpl	-12296(%rbp), %eax	# num_moves, tmp231
	jl	.L118	#,
	jmp	.L120	#
.L115:
	.loc 1 562 0 is_stmt 1
	movl	numb_moves(%rip), %eax	# numb_moves, tmp232
	movl	%eax, -12300(%rbp)	# tmp232, l
	jmp	.L120	#
.L114:
	.loc 1 569 0
	movl	$0, -12300(%rbp)	#, l
	.loc 1 570 0
	movl	$1, captures(%rip)	#, captures
	.loc 1 571 0
	movl	$0, -12296(%rbp)	#, num_moves
	.loc 1 572 0
	leaq	-12288(%rbp), %rax	#, tmp233
	movq	%rax, %rdi	# tmp233,
	call	gen	#
	.loc 1 573 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp234
	movl	%eax, -12296(%rbp)	# tmp234, num_moves
	.loc 1 574 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 576 0
	call	in_check	#
	movl	%eax, -12292(%rbp)	# D.5162, ic
	.loc 1 578 0
	cmpl	$0, -12296(%rbp)	#, num_moves
	je	.L121	#,
	.loc 1 580 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L122	#
.L124:
	.loc 1 582 0
	movl	-12304(%rbp), %edx	# i, tmp235
	leaq	-12288(%rbp), %rax	#, tmp236
	movl	%edx, %esi	# tmp235,
	movq	%rax, %rdi	# tmp236,
	call	make	#
	.loc 1 584 0
	movl	-12292(%rbp), %edx	# ic, tmp237
	movl	-12304(%rbp), %ecx	# i, tmp238
	leaq	-12288(%rbp), %rax	#, tmp239
	movl	%ecx, %esi	# tmp238,
	movq	%rax, %rdi	# tmp239,
	call	check_legal	#
	testl	%eax, %eax	# D.5162
	je	.L123	#,
	.loc 1 586 0
	addl	$1, -12300(%rbp)	#, l
.L123:
	.loc 1 588 0
	movl	-12304(%rbp), %edx	# i, tmp240
	leaq	-12288(%rbp), %rax	#, tmp241
	movl	%edx, %esi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	unmake	#
	.loc 1 580 0
	addl	$1, -12304(%rbp)	#, i
.L122:
	.loc 1 580 0 is_stmt 0 discriminator 1
	movl	-12304(%rbp), %eax	# i, tmp242
	cmpl	-12296(%rbp), %eax	# num_moves, tmp242
	jl	.L124	#,
.L121:
	.loc 1 594 0 is_stmt 1
	cmpl	$0, -12300(%rbp)	#, l
	jne	.L120	#,
	.loc 1 596 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 597 0
	movl	$0, -12296(%rbp)	#, num_moves
	.loc 1 598 0
	leaq	-12288(%rbp), %rax	#, tmp243
	movq	%rax, %rdi	# tmp243,
	call	gen	#
	.loc 1 599 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp244
	movl	%eax, -12296(%rbp)	# tmp244, num_moves
	.loc 1 601 0
	movl	$0, -12304(%rbp)	#, i
	jmp	.L125	#
.L127:
	.loc 1 603 0
	movl	-12304(%rbp), %edx	# i, tmp245
	leaq	-12288(%rbp), %rax	#, tmp246
	movl	%edx, %esi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	make	#
	.loc 1 605 0
	movl	-12292(%rbp), %edx	# ic, tmp247
	movl	-12304(%rbp), %ecx	# i, tmp248
	leaq	-12288(%rbp), %rax	#, tmp249
	movl	%ecx, %esi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	check_legal	#
	testl	%eax, %eax	# D.5162
	je	.L126	#,
	.loc 1 607 0
	addl	$1, -12300(%rbp)	#, l
.L126:
	.loc 1 609 0
	movl	-12304(%rbp), %edx	# i, tmp250
	leaq	-12288(%rbp), %rax	#, tmp251
	movl	%edx, %esi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	unmake	#
	.loc 1 601 0
	addl	$1, -12304(%rbp)	#, i
.L125:
	.loc 1 601 0 is_stmt 0 discriminator 1
	movl	-12304(%rbp), %eax	# i, tmp252
	cmpl	-12296(%rbp), %eax	# num_moves, tmp252
	jl	.L127	#,
.L120:
	.loc 1 614 0 is_stmt 1
	cmpl	$0, -12300(%rbp)	#, l
	jne	.L128	#,
	.loc 1 617 0
	movq	-12328(%rbp), %rax	# node, tmp253
	movl	$1, 4(%rax)	#, node_25(D)->proof
	.loc 1 618 0
	movq	-12328(%rbp), %rax	# node, tmp254
	movl	$1, 8(%rax)	#, node_25(D)->disproof
	jmp	.L89	#
.L128:
	.loc 1 620 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.50
	testl	%eax, %eax	# white_to_move.50
	sete	%al	#, D.5157
	movzbl	%al, %edx	# D.5157, D.5158
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.51
	cmpl	%eax, %edx	# root_to_move.51, D.5158
	jne	.L130	#,
	.loc 1 622 0
	movl	Variant(%rip), %eax	# Variant, Variant.52
	cmpl	$3, %eax	#, Variant.52
	je	.L131	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.53
	cmpl	$4, %eax	#, Variant.53
	je	.L131	#,
	.loc 1 624 0 is_stmt 1
	movl	ply(%rip), %ecx	# ply, ply.54
	movl	$1374389535, %edx	#, tmp256
	movl	%ecx, %eax	# ply.54, tmp359
	imull	%edx	# tmp256
	sarl	$4, %edx	#, tmp257
	movl	%ecx, %eax	# ply.54, tmp258
	sarl	$31, %eax	#, tmp258
	subl	%eax, %edx	# tmp258, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp259
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 625 0
	movl	ply(%rip), %ecx	# ply, ply.55
	movl	$1374389535, %edx	#, tmp261
	movl	%ecx, %eax	# ply.55, tmp360
	imull	%edx	# tmp261
	sarl	$4, %edx	#, tmp262
	movl	%ecx, %eax	# ply.55, tmp263
	sarl	$31, %eax	#, tmp263
	subl	%eax, %edx	# tmp263, D.5158
	movl	-12300(%rbp), %eax	# l, tmp264
	addl	%eax, %edx	# tmp264, D.5158
	movq	-12328(%rbp), %rax	# node, tmp265
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L131:
	.loc 1 629 0
	movl	Variant(%rip), %eax	# Variant, Variant.56
	cmpl	$4, %eax	#, Variant.56
	jne	.L133	#,
	.loc 1 633 0
	movl	phase(%rip), %eax	# phase, phase.57
	cmpl	$2, %eax	#, phase.57
	jne	.L134	#,
	.loc 1 635 0
	movl	ply(%rip), %ecx	# ply, ply.58
	movl	$-2004318071, %edx	#, tmp267
	movl	%ecx, %eax	# ply.58, tmp361
	imull	%edx	# tmp267
	leal	(%rdx,%rcx), %eax	#, tmp268
	sarl	$4, %eax	#, tmp269
	movl	%eax, %edx	# tmp269, tmp269
	movl	%ecx, %eax	# ply.58, tmp270
	sarl	$31, %eax	#, tmp270
	subl	%eax, %edx	# tmp270, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp271
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 636 0
	movl	ply(%rip), %ecx	# ply, ply.59
	movl	$-2004318071, %edx	#, tmp273
	movl	%ecx, %eax	# ply.59, tmp362
	imull	%edx	# tmp273
	leal	(%rdx,%rcx), %eax	#, tmp274
	sarl	$4, %eax	#, tmp275
	movl	%eax, %edx	# tmp275, tmp275
	movl	%ecx, %eax	# ply.59, tmp276
	sarl	$31, %eax	#, tmp276
	subl	%eax, %edx	# tmp276, D.5158
	movl	-12300(%rbp), %eax	# l, tmp277
	addl	%eax, %edx	# tmp277, D.5158
	movq	-12328(%rbp), %rax	# node, tmp278
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L134:
	.loc 1 640 0
	movl	ply(%rip), %ecx	# ply, ply.60
	movl	$1717986919, %edx	#, tmp280
	movl	%ecx, %eax	# ply.60, tmp363
	imull	%edx	# tmp280
	sarl	$5, %edx	#, tmp281
	movl	%ecx, %eax	# ply.60, tmp282
	sarl	$31, %eax	#, tmp282
	subl	%eax, %edx	# tmp282, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp283
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 641 0
	movl	ply(%rip), %ecx	# ply, ply.61
	movl	$1717986919, %edx	#, tmp285
	movl	%ecx, %eax	# ply.61, tmp364
	imull	%edx	# tmp285
	sarl	$5, %edx	#, tmp286
	movl	%ecx, %eax	# ply.61, tmp287
	sarl	$31, %eax	#, tmp287
	subl	%eax, %edx	# tmp287, D.5158
	movl	-12300(%rbp), %eax	# l, tmp288
	addl	%eax, %edx	# tmp288, D.5158
	movq	-12328(%rbp), %rax	# node, tmp289
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L133:
	.loc 1 646 0
	movl	ply(%rip), %ecx	# ply, ply.62
	movl	$458129845, %edx	#, tmp291
	movl	%ecx, %eax	# ply.62, tmp365
	imull	%edx	# tmp291
	sarl	$4, %edx	#, tmp292
	movl	%ecx, %eax	# ply.62, tmp293
	sarl	$31, %eax	#, tmp293
	subl	%eax, %edx	# tmp293, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp294
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 647 0
	movl	ply(%rip), %ecx	# ply, ply.63
	movl	$458129845, %edx	#, tmp296
	movl	%ecx, %eax	# ply.63, tmp366
	imull	%edx	# tmp296
	sarl	$4, %edx	#, tmp297
	movl	%ecx, %eax	# ply.63, tmp298
	sarl	$31, %eax	#, tmp298
	subl	%eax, %edx	# tmp298, D.5158
	movl	-12300(%rbp), %eax	# l, tmp299
	addl	%eax, %edx	# tmp299, D.5158
	movq	-12328(%rbp), %rax	# node, tmp300
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L130:
	.loc 1 653 0
	movl	Variant(%rip), %eax	# Variant, Variant.64
	cmpl	$3, %eax	#, Variant.64
	je	.L136	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.65
	cmpl	$4, %eax	#, Variant.65
	je	.L136	#,
	.loc 1 655 0 is_stmt 1
	movl	ply(%rip), %ecx	# ply, ply.66
	movl	$1374389535, %edx	#, tmp302
	movl	%ecx, %eax	# ply.66, tmp367
	imull	%edx	# tmp302
	sarl	$4, %edx	#, tmp303
	movl	%ecx, %eax	# ply.66, tmp304
	sarl	$31, %eax	#, tmp304
	subl	%eax, %edx	# tmp304, D.5158
	movl	-12300(%rbp), %eax	# l, tmp305
	addl	%eax, %edx	# tmp305, D.5158
	movq	-12328(%rbp), %rax	# node, tmp306
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 656 0
	movl	ply(%rip), %ecx	# ply, ply.67
	movl	$1374389535, %edx	#, tmp308
	movl	%ecx, %eax	# ply.67, tmp368
	imull	%edx	# tmp308
	sarl	$4, %edx	#, tmp309
	movl	%ecx, %eax	# ply.67, tmp310
	sarl	$31, %eax	#, tmp310
	subl	%eax, %edx	# tmp310, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp311
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L136:
	.loc 1 660 0
	movl	Variant(%rip), %eax	# Variant, Variant.68
	cmpl	$4, %eax	#, Variant.68
	jne	.L137	#,
	.loc 1 662 0
	movl	phase(%rip), %eax	# phase, phase.69
	cmpl	$2, %eax	#, phase.69
	jne	.L138	#,
	.loc 1 664 0
	movl	ply(%rip), %ecx	# ply, ply.70
	movl	$-2004318071, %edx	#, tmp313
	movl	%ecx, %eax	# ply.70, tmp369
	imull	%edx	# tmp313
	leal	(%rdx,%rcx), %eax	#, tmp314
	sarl	$4, %eax	#, tmp315
	movl	%eax, %edx	# tmp315, tmp315
	movl	%ecx, %eax	# ply.70, tmp316
	sarl	$31, %eax	#, tmp316
	subl	%eax, %edx	# tmp316, D.5158
	movl	-12300(%rbp), %eax	# l, tmp317
	addl	%eax, %edx	# tmp317, D.5158
	movq	-12328(%rbp), %rax	# node, tmp318
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 665 0
	movl	ply(%rip), %ecx	# ply, ply.71
	movl	$-2004318071, %edx	#, tmp320
	movl	%ecx, %eax	# ply.71, tmp370
	imull	%edx	# tmp320
	leal	(%rdx,%rcx), %eax	#, tmp321
	sarl	$4, %eax	#, tmp322
	movl	%eax, %edx	# tmp322, tmp322
	movl	%ecx, %eax	# ply.71, tmp323
	sarl	$31, %eax	#, tmp323
	subl	%eax, %edx	# tmp323, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp324
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L138:
	.loc 1 670 0
	movl	ply(%rip), %ecx	# ply, ply.72
	movl	$1717986919, %edx	#, tmp326
	movl	%ecx, %eax	# ply.72, tmp371
	imull	%edx	# tmp326
	sarl	$5, %edx	#, tmp327
	movl	%ecx, %eax	# ply.72, tmp328
	sarl	$31, %eax	#, tmp328
	subl	%eax, %edx	# tmp328, D.5158
	movl	-12300(%rbp), %eax	# l, tmp329
	addl	%eax, %edx	# tmp329, D.5158
	movq	-12328(%rbp), %rax	# node, tmp330
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 671 0
	movl	ply(%rip), %ecx	# ply, ply.73
	movl	$1717986919, %edx	#, tmp332
	movl	%ecx, %eax	# ply.73, tmp372
	imull	%edx	# tmp332
	sarl	$5, %edx	#, tmp333
	movl	%ecx, %eax	# ply.73, tmp334
	sarl	$31, %eax	#, tmp334
	subl	%eax, %edx	# tmp334, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp335
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L137:
	.loc 1 676 0
	movl	ply(%rip), %ecx	# ply, ply.74
	movl	$458129845, %edx	#, tmp337
	movl	%ecx, %eax	# ply.74, tmp373
	imull	%edx	# tmp337
	sarl	$4, %edx	#, tmp338
	movl	%ecx, %eax	# ply.74, tmp339
	sarl	$31, %eax	#, tmp339
	subl	%eax, %edx	# tmp339, D.5158
	movl	-12300(%rbp), %eax	# l, tmp340
	addl	%eax, %edx	# tmp340, D.5158
	movq	-12328(%rbp), %rax	# node, tmp341
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
	.loc 1 677 0
	movl	ply(%rip), %ecx	# ply, ply.75
	movl	$458129845, %edx	#, tmp343
	movl	%ecx, %eax	# ply.75, tmp374
	imull	%edx	# tmp343
	sarl	$4, %edx	#, tmp344
	movl	%ecx, %eax	# ply.75, tmp345
	sarl	$31, %eax	#, tmp345
	subl	%eax, %edx	# tmp345, D.5158
	movl	%edx, %eax	# D.5158, D.5158
	leal	1(%rax), %edx	#, D.5158
	movq	-12328(%rbp), %rax	# node, tmp346
	movl	%edx, 8(%rax)	# D.5158, node_25(D)->disproof
	jmp	.L89	#
.L110:
	.loc 1 684 0
	movq	-12328(%rbp), %rax	# node, tmp347
	movzbl	(%rax), %eax	# node_25(D)->value, D.5156
	testb	%al, %al	# D.5156
	jne	.L141	#,
	.loc 1 686 0
	movq	-12328(%rbp), %rax	# node, tmp348
	movl	$100000000, 4(%rax)	#, node_25(D)->proof
	.loc 1 687 0
	movq	-12328(%rbp), %rax	# node, tmp349
	movl	$0, 8(%rax)	#, node_25(D)->disproof
	jmp	.L89	#
.L141:
	.loc 1 689 0
	movq	-12328(%rbp), %rax	# node, tmp350
	movzbl	(%rax), %eax	# node_25(D)->value, D.5156
	cmpb	$1, %al	#, D.5156
	jne	.L142	#,
	.loc 1 691 0
	movq	-12328(%rbp), %rax	# node, tmp351
	movl	$0, 4(%rax)	#, node_25(D)->proof
	.loc 1 692 0
	movq	-12328(%rbp), %rax	# node, tmp352
	movl	$100000000, 8(%rax)	#, node_25(D)->disproof
	jmp	.L89	#
.L142:
	.loc 1 694 0
	movq	-12328(%rbp), %rax	# node, tmp353
	movzbl	(%rax), %eax	# node_25(D)->value, D.5156
	cmpb	$3, %al	#, D.5156
	jne	.L89	#,
	.loc 1 697 0
	movq	-12328(%rbp), %rax	# node, tmp354
	movl	$50000, 4(%rax)	#, node_25(D)->proof
	.loc 1 698 0
	movq	-12328(%rbp), %rax	# node, tmp355
	movl	$50000, 8(%rax)	#, node_25(D)->disproof
	jmp	.L89	#
.L109:
	.loc 1 703 0
	movq	-12328(%rbp), %rax	# node, tmp356
	movl	$1, 8(%rax)	#, node_25(D)->disproof
	movq	-12328(%rbp), %rax	# node, tmp357
	movl	8(%rax), %edx	# node_25(D)->disproof, D.5158
	movq	-12328(%rbp), %rax	# node, tmp358
	movl	%edx, 4(%rax)	# D.5158, node_25(D)->proof
.L89:
	.loc 1 705 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	set_proof_and_disproof_numbers, .-set_proof_and_disproof_numbers
	.globl	develop_node
	.type	develop_node, @function
develop_node:
.LFB11:
	.loc 1 708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12336, %rsp	#,
	movq	%rdi, -12328(%rbp)	# node, node
	.loc 1 726 0
	call	in_check	#
	movl	%eax, -12300(%rbp)	# D.5163, ic
	.loc 1 728 0
	movl	Variant(%rip), %eax	# Variant, Variant.76
	cmpl	$4, %eax	#, Variant.76
	je	.L144	#,
	.loc 1 730 0
	movl	$0, -12316(%rbp)	#, num_moves
	.loc 1 731 0
	leaq	-12288(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	gen	#
	.loc 1 732 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp90
	movl	%eax, -12316(%rbp)	# tmp90, num_moves
	jmp	.L145	#
.L144:
	.loc 1 736 0
	movl	$1, captures(%rip)	#, captures
	.loc 1 737 0
	movl	$0, -12304(%rbp)	#, leg
	.loc 1 738 0
	movl	$0, -12316(%rbp)	#, num_moves
	.loc 1 740 0
	leaq	-12288(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	gen	#
	.loc 1 741 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp92
	movl	%eax, -12316(%rbp)	# tmp92, num_moves
	.loc 1 742 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 744 0
	movl	$0, -12312(%rbp)	#, i
	jmp	.L146	#
.L149:
	.loc 1 746 0
	movl	-12312(%rbp), %edx	# i, tmp93
	leaq	-12288(%rbp), %rax	#, tmp94
	movl	%edx, %esi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	make	#
	.loc 1 749 0
	movl	-12300(%rbp), %edx	# ic, tmp95
	movl	-12312(%rbp), %ecx	# i, tmp96
	leaq	-12288(%rbp), %rax	#, tmp97
	movl	%ecx, %esi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	check_legal	#
	testl	%eax, %eax	# D.5163
	je	.L147	#,
	.loc 1 751 0
	movl	$1, -12304(%rbp)	#, leg
	.loc 1 752 0
	movl	-12312(%rbp), %edx	# i, tmp98
	leaq	-12288(%rbp), %rax	#, tmp99
	movl	%edx, %esi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	unmake	#
	.loc 1 753 0
	jmp	.L148	#
.L147:
	.loc 1 756 0
	movl	-12312(%rbp), %edx	# i, tmp100
	leaq	-12288(%rbp), %rax	#, tmp101
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	unmake	#
	.loc 1 744 0
	addl	$1, -12312(%rbp)	#, i
.L146:
	.loc 1 744 0 is_stmt 0 discriminator 1
	movl	-12312(%rbp), %eax	# i, tmp102
	cmpl	-12316(%rbp), %eax	# num_moves, tmp102
	jl	.L149	#,
.L148:
	.loc 1 759 0 is_stmt 1
	cmpl	$0, -12304(%rbp)	#, leg
	jne	.L145	#,
	.loc 1 761 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 762 0
	movl	$0, -12316(%rbp)	#, num_moves
	.loc 1 763 0
	leaq	-12288(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	gen	#
	.loc 1 764 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp104
	movl	%eax, -12316(%rbp)	# tmp104, num_moves
.L145:
	.loc 1 771 0
	movl	-12316(%rbp), %eax	# num_moves, num_moves.77
	sall	$3, %eax	#, D.5164
	movl	%eax, %edi	# D.5165,
	call	Xmalloc	#
	movq	-12328(%rbp), %rdx	# node, tmp105
	movq	%rax, 16(%rdx)	# D.5166, node_25(D)->children
	.loc 1 777 0
	movl	$0, -12308(%rbp)	#, l
	.loc 1 779 0
	movl	$0, -12312(%rbp)	#, i
	jmp	.L150	#
.L153:
	.loc 1 781 0
	movl	move_number(%rip), %edx	# move_number, move_number.78
	movl	ply(%rip), %eax	# ply, ply.79
	addl	%edx, %eax	# move_number.78, D.5165
	subl	$1, %eax	#, D.5165
	movl	hash(%rip), %edx	# hash, hash.80
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.80, hash_history
	.loc 1 783 0
	movl	-12312(%rbp), %edx	# i, tmp107
	leaq	-12288(%rbp), %rax	#, tmp108
	movl	%edx, %esi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	make	#
	.loc 1 786 0
	movl	-12300(%rbp), %edx	# ic, tmp109
	movl	-12312(%rbp), %ecx	# i, tmp110
	leaq	-12288(%rbp), %rax	#, tmp111
	movl	%ecx, %esi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	check_legal	#
	testl	%eax, %eax	# D.5163
	je	.L151	#,
	.loc 1 791 0
	movl	$56, %edi	#,
	call	Xmalloc	#
	movq	%rax, -12296(%rbp)	# tmp112, newnode
	.loc 1 796 0
	movq	-12296(%rbp), %rax	# newnode, tmp113
	movb	$0, (%rax)	#, newnode_34->value
	.loc 1 806 0
	movq	-12296(%rbp), %rax	# newnode, tmp114
	movl	$1, 8(%rax)	#, newnode_34->disproof
	movq	-12296(%rbp), %rax	# newnode, tmp115
	movl	8(%rax), %edx	# newnode_34->disproof, D.5165
	movq	-12296(%rbp), %rax	# newnode, tmp116
	movl	%edx, 4(%rax)	# D.5165, newnode_34->proof
	.loc 1 811 0
	movq	-12296(%rbp), %rax	# newnode, tmp117
	movb	$0, 1(%rax)	#, newnode_34->num_children
	.loc 1 812 0
	movq	-12296(%rbp), %rax	# newnode, tmp118
	movq	-12328(%rbp), %rdx	# node, tmp119
	movq	%rdx, 24(%rax)	# tmp119, newnode_34->parent
	.loc 1 813 0
	movq	-12296(%rbp), %rax	# newnode, tmp120
	movb	$0, 3(%rax)	#, newnode_34->evaluated
	.loc 1 814 0
	movq	-12296(%rbp), %rax	# newnode, tmp121
	movb	$0, 2(%rax)	#, newnode_34->expanded
	.loc 1 815 0
	movq	-12296(%rbp), %rdx	# newnode, tmp122
	movl	-12312(%rbp), %eax	# i, tmp124
	movslq	%eax, %rcx	# tmp124, tmp123
	movq	%rcx, %rax	# tmp123, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rcx, %rax	# tmp123, tmp125
	salq	$3, %rax	#, tmp126
	addq	%rbp, %rax	#, tmp127
	subq	$12288, %rax	#, tmp128
	movq	(%rax), %rcx	# moves, tmp129
	movq	%rcx, 32(%rdx)	# tmp129, newnode_34->move
	movq	8(%rax), %rcx	# moves, tmp130
	movq	%rcx, 40(%rdx)	# tmp130, newnode_34->move
	movq	16(%rax), %rax	# moves, tmp131
	movq	%rax, 48(%rdx)	# tmp131, newnode_34->move
	.loc 1 822 0
	movq	-12328(%rbp), %rax	# node, tmp132
	movq	16(%rax), %rax	# node_25(D)->children, D.5167
	movl	-12308(%rbp), %edx	# l, tmp133
	movslq	%edx, %rdx	# tmp133, D.5168
	salq	$3, %rdx	#, D.5168
	addq	%rax, %rdx	# D.5167, D.5167
	movq	-12296(%rbp), %rax	# newnode, tmp134
	movq	%rax, (%rdx)	# tmp134, *_39
	.loc 1 824 0
	addl	$1, -12308(%rbp)	#, l
	.loc 1 830 0
	movq	-12296(%rbp), %rax	# newnode, tmp135
	movq	%rax, %rdi	# tmp135,
	call	pn_eval	#
	.loc 1 834 0
	movq	-12296(%rbp), %rax	# newnode, tmp136
	movq	%rax, %rdi	# tmp136,
	call	set_proof_and_disproof_numbers	#
	.loc 1 836 0
	movl	-12312(%rbp), %edx	# i, tmp137
	leaq	-12288(%rbp), %rax	#, tmp138
	movl	%edx, %esi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	unmake	#
	jmp	.L152	#
.L151:
	.loc 1 840 0
	movl	-12312(%rbp), %edx	# i, tmp139
	leaq	-12288(%rbp), %rax	#, tmp140
	movl	%edx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	unmake	#
.L152:
	.loc 1 779 0
	addl	$1, -12312(%rbp)	#, i
.L150:
	.loc 1 779 0 is_stmt 0 discriminator 1
	movl	-12312(%rbp), %eax	# i, tmp141
	cmpl	-12316(%rbp), %eax	# num_moves, tmp141
	jl	.L153	#,
	.loc 1 843 0 is_stmt 1
	movq	-12328(%rbp), %rax	# node, tmp142
	movb	$1, 2(%rax)	#, node_25(D)->expanded
	.loc 1 844 0
	movl	-12308(%rbp), %eax	# l, tmp143
	movl	%eax, %edx	# tmp143, D.5169
	movq	-12328(%rbp), %rax	# node, tmp144
	movb	%dl, 1(%rax)	# D.5169, node_25(D)->num_children
	.loc 1 852 0
	movq	-12328(%rbp), %rax	# node, tmp145
	movzbl	1(%rax), %eax	# node_25(D)->num_children, D.5169
	testb	%al, %al	# D.5169
	jne	.L154	#,
	.loc 1 854 0
	movq	-12328(%rbp), %rax	# node, tmp146
	movb	$0, 2(%rax)	#, node_25(D)->expanded
	.loc 1 855 0
	movq	-12328(%rbp), %rax	# node, tmp147
	movb	$1, 3(%rax)	#, node_25(D)->evaluated
	.loc 1 856 0
	movl	Variant(%rip), %eax	# Variant, Variant.81
	cmpl	$3, %eax	#, Variant.81
	je	.L155	#,
	.loc 1 856 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.82
	cmpl	$4, %eax	#, Variant.82
	je	.L155	#,
	.loc 1 858 0 is_stmt 1
	movq	-12328(%rbp), %rax	# node, tmp148
	movb	$3, (%rax)	#, node_25(D)->value
	jmp	.L154	#
.L155:
	.loc 1 862 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.83
	testl	%eax, %eax	# white_to_move.83
	sete	%al	#, D.5170
	movzbl	%al, %edx	# D.5170, D.5165
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.84
	cmpl	%eax, %edx	# root_to_move.84, D.5165
	jne	.L156	#,
	.loc 1 864 0
	movq	-12328(%rbp), %rax	# node, tmp149
	movb	$1, (%rax)	#, node_25(D)->value
	jmp	.L154	#
.L156:
	.loc 1 868 0
	movq	-12328(%rbp), %rax	# node, tmp150
	movb	$0, (%rax)	#, node_25(D)->value
.L154:
	.loc 1 878 0
	movl	nodecount(%rip), %edx	# nodecount, nodecount.85
	movl	-12316(%rbp), %eax	# num_moves, tmp151
	addl	%edx, %eax	# nodecount.85, nodecount.86
	movl	%eax, nodecount(%rip)	# nodecount.86, nodecount
	.loc 1 880 0
	movl	frees(%rip), %edx	# frees, frees.87
	movl	-12316(%rbp), %eax	# num_moves, tmp152
	addl	%edx, %eax	# frees.87, frees.88
	movl	%eax, frees(%rip)	# frees.88, frees
	.loc 1 886 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	develop_node, .-develop_node
	.globl	update_ancestors
	.type	update_ancestors, @function
update_ancestors:
.LFB12:
	.loc 1 889 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	.loc 1 892 0
	movq	-24(%rbp), %rax	# node, tmp63
	movq	%rax, -16(%rbp)	# tmp63, tnode
	.loc 1 893 0
	movq	-24(%rbp), %rax	# node, tmp64
	movq	%rax, -8(%rbp)	# tmp64, prevnode
	.loc 1 895 0
	jmp	.L158	#
.L160:
	.loc 1 897 0
	movq	-16(%rbp), %rax	# tnode, tmp65
	movq	%rax, %rdi	# tmp65,
	call	set_proof_and_disproof_numbers	#
	.loc 1 899 0
	movq	-16(%rbp), %rax	# tnode, tmp66
	movq	%rax, -8(%rbp)	# tmp66, prevnode
	.loc 1 901 0
	movq	-16(%rbp), %rax	# tnode, tmp67
	movl	36(%rax), %eax	# tnode_1->move.target, D.5171
	testl	%eax, %eax	# D.5171
	je	.L159	#,
	.loc 1 903 0
	movq	-16(%rbp), %rax	# tnode, tmp68
	addq	$32, %rax	#, D.5172
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5172,
	call	unmake	#
.L159:
	.loc 1 906 0
	movq	-16(%rbp), %rax	# tnode, tmp69
	movq	24(%rax), %rax	# tnode_1->parent, tmp70
	movq	%rax, -16(%rbp)	# tmp70, tnode
.L158:
	.loc 1 895 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tnode
	jne	.L160	#,
	.loc 1 909 0
	movq	-8(%rbp), %rax	# prevnode, tmp71
	movl	36(%rax), %eax	# prevnode_2->move.target, D.5171
	testl	%eax, %eax	# D.5171
	je	.L161	#,
	.loc 1 911 0
	movq	-8(%rbp), %rax	# prevnode, tmp72
	addq	$32, %rax	#, D.5172
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5172,
	call	make	#
.L161:
	.loc 1 914 0
	nop
	.loc 1 916 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	update_ancestors, .-update_ancestors
	.globl	pn2_eval
	.type	pn2_eval, @function
pn2_eval:
.LFB13:
	.loc 1 920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# root, root
	.loc 1 928 0
	movl	$0, nodecount2(%rip)	#, nodecount2
	.loc 1 929 0
	movl	$1, pn2(%rip)	#, pn2
	.loc 1 931 0
	movq	-40(%rbp), %rax	# root, tmp63
	movq	24(%rax), %rax	# root_1(D)->parent, tmp64
	movq	%rax, -24(%rbp)	# tmp64, oldparent
	.loc 1 932 0
	movq	-40(%rbp), %rax	# root, tmp65
	movq	$0, 24(%rax)	#, root_1(D)->parent
	.loc 1 934 0
	movq	-40(%rbp), %rax	# root, tmp66
	movq	%rax, %rdi	# tmp66,
	call	pn_eval	#
	.loc 1 936 0
	movq	-40(%rbp), %rax	# root, tmp67
	movq	%rax, %rdi	# tmp67,
	call	set_proof_and_disproof_numbers	#
	.loc 1 938 0
	movq	-40(%rbp), %rax	# root, tmp68
	movq	%rax, -16(%rbp)	# tmp68, currentnode
	.loc 1 940 0
	jmp	.L164	#
.L166:
	.loc 1 942 0
	movq	-40(%rbp), %rax	# root, tmp69
	movq	%rax, %rdi	# tmp69,
	call	select_most_proving	#
	movq	%rax, -8(%rbp)	# tmp70, mostproving
	.loc 1 943 0
	movq	-8(%rbp), %rax	# mostproving, tmp71
	movq	%rax, %rdi	# tmp71,
	call	develop_node	#
	.loc 1 944 0
	movq	-8(%rbp), %rax	# mostproving, tmp72
	movq	%rax, %rdi	# tmp72,
	call	update_ancestors	#
.L164:
	.loc 1 940 0 discriminator 1
	movq	-40(%rbp), %rax	# root, tmp73
	movl	4(%rax), %eax	# root_1(D)->proof, D.5173
	testl	%eax, %eax	# D.5173
	je	.L165	#,
	.loc 1 940 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# root, tmp74
	movl	8(%rax), %eax	# root_1(D)->disproof, D.5173
	testl	%eax, %eax	# D.5173
	je	.L165	#,
	.loc 1 940 0 discriminator 1
	movl	nodecount2(%rip), %edx	# nodecount2, nodecount2.89
	movl	nodecount(%rip), %eax	# nodecount, nodecount.90
	cmpl	%eax, %edx	# nodecount.90, nodecount2.89
	jl	.L166	#,
.L165:
	.loc 1 947 0 is_stmt 1
	movq	-40(%rbp), %rax	# root, tmp75
	movb	$0, 2(%rax)	#, root_1(D)->expanded
	.loc 1 948 0
	movq	-40(%rbp), %rax	# root, tmp76
	movb	$0, 1(%rax)	#, root_1(D)->num_children
	.loc 1 950 0
	movq	-40(%rbp), %rax	# root, tmp77
	movq	-24(%rbp), %rdx	# oldparent, tmp78
	movq	%rdx, 24(%rax)	# tmp78, root_1(D)->parent
	.loc 1 952 0
	movl	$0, pn2(%rip)	#, pn2
	.loc 1 954 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	pn2_eval, .-pn2_eval
	.section	.rodata
.LC0:
	.string	"tellics kibitz Forced win!"
	.align 8
.LC1:
	.string	"tellics kibitz Forced win! (alt)"
	.align 8
.LC4:
	.string	"tellics whisper proof %d, disproof %d, %d losers, highest depth %d, primary %d, secondary %d\n"
.LC5:
	.string	"tellics whisper Forced reply"
	.text
	.globl	proofnumberscan
	.type	proofnumberscan, @function
proofnumberscan:
.LFB14:
	.loc 1 957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16528, %rsp	#,
	.loc 1 957 0
	movq	%fs:40, %rax	#, tmp414
	movq	%rax, -8(%rbp)	# tmp414, D.5183
	xorl	%eax, %eax	# tmp414
	.loc 1 967 0
	movl	$0, -16472(%rbp)	#, leastlooked_l
	movl	$0, -16468(%rbp)	#, leastlooked_i
	.loc 1 976 0
	call	rtime	#
	movq	%rax, -16432(%rbp)	# tmp226, xstart_time
	.loc 1 978 0
	movl	PBSize(%rip), %eax	# PBSize, PBSize.91
	cltq
	movl	$56, %esi	#,
	movq	%rax, %rdi	# D.5174,
	call	calloc	#
	movq	%rax, membuff(%rip)	# membuff.92, membuff
	.loc 1 980 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -16424(%rbp)	# tmp228, root
	.loc 1 982 0
	leaq	-12304(%rbp), %rax	#, tmp229
	movq	%rax, %rdi	# tmp229,
	call	gen	#
	.loc 1 983 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp230
	movl	%eax, -16444(%rbp)	# tmp230, num_moves
	.loc 1 985 0
	movl	$0, alllosers(%rip)	#, alllosers
	.loc 1 986 0
	movl	$1200, %edx	#,
	movl	$0, %esi	#,
	movl	$rootlosers, %edi	#,
	call	memset	#
	.loc 1 987 0
	leaq	-14352(%rbp), %rax	#, tmp231
	movl	$2048, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	memset	#
	.loc 1 989 0
	movq	dummy(%rip), %rax	# dummy, tmp234
	movq	%rax, pn_move(%rip)	# tmp234, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp235
	movq	%rax, pn_move+8(%rip)	# tmp235, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp236
	movq	%rax, pn_move+16(%rip)	# tmp236, pn_move
	.loc 1 991 0
	movl	$0, -16480(%rbp)	#, legal
	.loc 1 993 0
	call	in_check	#
	movl	%eax, -16440(%rbp)	# D.5175, ic
	.loc 1 995 0
	movl	$0, -16488(%rbp)	#, i
	jmp	.L168	#
.L171:
	.loc 1 997 0
	movl	-16488(%rbp), %edx	# i, tmp237
	leaq	-12304(%rbp), %rax	#, tmp238
	movl	%edx, %esi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	make	#
	.loc 1 1000 0
	movl	-16440(%rbp), %edx	# ic, tmp239
	movl	-16488(%rbp), %ecx	# i, tmp240
	leaq	-12304(%rbp), %rax	#, tmp241
	movl	%ecx, %esi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	check_legal	#
	testl	%eax, %eax	# D.5175
	je	.L169	#,
	.loc 1 1002 0
	addl	$1, -16480(%rbp)	#, legal
	.loc 1 1003 0
	movl	-16488(%rbp), %eax	# i, tmp243
	cltq
	movl	$1, -16400(%rbp,%rax,4)	#, islegal
	jmp	.L170	#
.L169:
	.loc 1 1007 0
	movl	-16488(%rbp), %eax	# i, tmp245
	cltq
	movl	$0, -16400(%rbp,%rax,4)	#, islegal
.L170:
	.loc 1 1010 0
	movl	-16488(%rbp), %edx	# i, tmp246
	leaq	-12304(%rbp), %rax	#, tmp247
	movl	%edx, %esi	# tmp246,
	movq	%rax, %rdi	# tmp247,
	call	unmake	#
	.loc 1 995 0
	addl	$1, -16488(%rbp)	#, i
.L168:
	.loc 1 995 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp248
	cmpl	-16444(%rbp), %eax	# num_moves, tmp248
	jl	.L171	#,
	.loc 1 1013 0 is_stmt 1
	cmpl	$0, -16480(%rbp)	#, legal
	jne	.L172	#,
	.loc 1 1015 0
	call	Xfree	#
	.loc 1 1016 0
	movq	membuff(%rip), %rax	# membuff, membuff.93
	movq	%rax, %rdi	# membuff.93,
	call	free	#
	.loc 1 1017 0
	movq	-16424(%rbp), %rax	# root, tmp249
	movq	%rax, %rdi	# tmp249,
	call	free	#
	.loc 1 1018 0
	jmp	.L167	#
.L172:
	.loc 1 1021 0
	movl	$0, -16464(%rbp)	#, losers
	.loc 1 1023 0
	movl	$1, nodecount(%rip)	#, nodecount
	.loc 1 1024 0
	movl	$0, iters(%rip)	#, iters
	.loc 1 1025 0
	movl	$0, maxply(%rip)	#, maxply
	.loc 1 1026 0
	movl	$0, forwards(%rip)	#, forwards
	.loc 1 1027 0
	movl	$0, -16460(%rbp)	#, firsts
	.loc 1 1028 0
	movl	$0, -16456(%rbp)	#, alternates
	.loc 1 1029 0
	movl	move_number(%rip), %edx	# move_number, move_number.94
	movl	ply(%rip), %eax	# ply, ply.95
	addl	%edx, %eax	# move_number.94, D.5176
	subl	$1, %eax	#, D.5176
	movl	hash(%rip), %edx	# hash, hash.96
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.96, hash_history
	.loc 1 1030 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.97
	testl	%eax, %eax	# white_to_move.97
	sete	%al	#, D.5177
	movzbl	%al, %eax	# D.5177, root_to_move.98
	movl	%eax, root_to_move(%rip)	# root_to_move.98, root_to_move
	.loc 1 1032 0
	movq	-16424(%rbp), %rax	# root, tmp251
	movq	%rax, %rdi	# tmp251,
	call	pn_eval	#
	.loc 1 1034 0
	movq	-16424(%rbp), %rax	# root, tmp252
	movzbl	(%rax), %eax	# root_39->value, D.5178
	cmpb	$1, %al	#, D.5178
	je	.L174	#,
	.loc 1 1034 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp253
	movzbl	(%rax), %eax	# root_39->value, D.5178
	testb	%al, %al	# D.5178
	jne	.L175	#,
.L174:
	.loc 1 1036 0 is_stmt 1
	call	Xfree	#
	.loc 1 1037 0
	movq	membuff(%rip), %rax	# membuff, membuff.99
	movq	%rax, %rdi	# membuff.99,
	call	free	#
	.loc 1 1038 0
	movq	-16424(%rbp), %rax	# root, tmp254
	movq	%rax, %rdi	# tmp254,
	call	free	#
	.loc 1 1039 0
	movq	dummy(%rip), %rax	# dummy, tmp257
	movq	%rax, pn_move(%rip)	# tmp257, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp258
	movq	%rax, pn_move+8(%rip)	# tmp258, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp259
	movq	%rax, pn_move+16(%rip)	# tmp259, pn_move
	.loc 1 1040 0
	jmp	.L167	#
.L175:
	.loc 1 1043 0
	movq	-16424(%rbp), %rax	# root, tmp260
	movq	%rax, %rdi	# tmp260,
	call	set_proof_and_disproof_numbers	#
	.loc 1 1045 0
	jmp	.L176	#
.L191:
	.loc 1 1050 0
	movl	iters(%rip), %eax	# iters, iters.100
	addl	$1, %eax	#, iters.101
	movl	%eax, iters(%rip)	# iters.101, iters
	.loc 1 1051 0
	movl	nodecount(%rip), %eax	# nodecount, tmp261
	movl	%eax, -16436(%rbp)	# tmp261, xnodecount
	.loc 1 1053 0
	movl	nodecount(%rip), %ecx	# nodecount, nodecount.102
	movl	$1374389535, %edx	#, tmp263
	movl	%ecx, %eax	# nodecount.102, tmp415
	imull	%edx	# tmp263
	sarl	$5, %edx	#, tmp264
	movl	%ecx, %eax	# nodecount.102, tmp265
	sarl	$31, %eax	#, tmp265
	subl	%eax, %edx	# tmp265, D.5176
	movl	%edx, %eax	# D.5176, D.5176
	imull	$100, %eax, %eax	#, D.5176, tmp266
	subl	%eax, %ecx	# tmp266, D.5176
	movl	%ecx, %eax	# D.5176, D.5176
	cmpl	$65, %eax	#, D.5176
	jg	.L177	#,
	.loc 1 1055 0
	addl	$1, -16460(%rbp)	#, firsts
	.loc 1 1058 0
	movq	-16424(%rbp), %rax	# root, tmp267
	movq	%rax, -16416(%rbp)	# tmp267, currentnode
	.loc 1 1060 0
	movq	-16416(%rbp), %rax	# currentnode, tmp268
	movq	%rax, %rdi	# tmp268,
	call	select_most_proving	#
	movq	%rax, -16408(%rbp)	# tmp269, mostproving
	.loc 1 1061 0
	movq	-16408(%rbp), %rax	# mostproving, tmp270
	movq	%rax, %rdi	# tmp270,
	call	develop_node	#
	.loc 1 1062 0
	movq	-16408(%rbp), %rax	# mostproving, tmp271
	movq	%rax, %rdi	# tmp271,
	call	update_ancestors	#
	.loc 1 1065 0
	movl	$0, -16488(%rbp)	#, i
	.loc 1 1066 0
	jmp	.L178	#
.L179:
	.loc 1 1066 0 is_stmt 0 discriminator 2
	addl	$1, -16488(%rbp)	#, i
.L178:
	.loc 1 1066 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp272
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16488(%rbp), %edx	# i, tmp273
	movslq	%edx, %rdx	# tmp273, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_87, D.5181
	movl	4(%rax), %edx	# _88->proof, D.5176
	movq	-16424(%rbp), %rax	# root, tmp274
	movl	4(%rax), %eax	# root_39->proof, D.5176
	cmpl	%eax, %edx	# D.5176, D.5176
	jne	.L179	#,
	.loc 1 1068 0 is_stmt 1
	movl	-16488(%rbp), %eax	# i, tmp276
	cltq
	movl	-14352(%rbp,%rax,4), %edx	# nodesspent, D.5176
	movl	nodecount(%rip), %eax	# nodecount, nodecount.103
	subl	-16436(%rbp), %eax	# xnodecount, D.5176
	addl	%eax, %edx	# D.5176, D.5176
	movl	-16488(%rbp), %eax	# i, tmp278
	cltq
	movl	%edx, -14352(%rbp,%rax,4)	# D.5176, nodesspent
	.loc 1 1070 0
	movq	-16424(%rbp), %rax	# root, tmp279
	movl	4(%rax), %eax	# root_39->proof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L180	#,
	.loc 1 1070 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp280
	movl	8(%rax), %eax	# root_39->disproof, D.5176
	cmpl	$100000000, %eax	#, D.5176
	jne	.L180	#,
	.loc 1 1072 0 is_stmt 1
	movl	$1, forcedwin(%rip)	#, forcedwin
	.loc 1 1074 0
	movl	kibitzed(%rip), %eax	# kibitzed, kibitzed.104
	testl	%eax, %eax	# kibitzed.104
	jne	.L181	#,
	.loc 1 1076 0
	movl	$1, kibitzed(%rip)	#, kibitzed
	.loc 1 1077 0
	movl	$.LC0, %edi	#,
	call	puts	#
.L181:
	.loc 1 1080 0
	movq	-16424(%rbp), %rax	# root, tmp281
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16488(%rbp), %edx	# i, tmp282
	movslq	%edx, %rdx	# tmp282, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_102, D.5181
	movq	32(%rax), %rdx	# _103->move, tmp284
	movq	%rdx, pn_move(%rip)	# tmp284, pn_move
	movq	40(%rax), %rdx	# _103->move, tmp285
	movq	%rdx, pn_move+8(%rip)	# tmp285, pn_move
	movq	48(%rax), %rax	# _103->move, tmp286
	movq	%rax, pn_move+16(%rip)	# tmp286, pn_move
	jmp	.L176	#
.L180:
	.loc 1 1083 0
	movq	-16424(%rbp), %rax	# root, tmp287
	movl	8(%rax), %eax	# root_39->disproof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L176	#,
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp288
	movl	4(%rax), %eax	# root_39->proof, D.5176
	cmpl	$100000000, %eax	#, D.5176
	jne	.L176	#,
	.loc 1 1085 0 is_stmt 1
	movq	dummy(%rip), %rax	# dummy, tmp291
	movq	%rax, pn_move(%rip)	# tmp291, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp292
	movq	%rax, pn_move+8(%rip)	# tmp292, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp293
	movq	%rax, pn_move+16(%rip)	# tmp293, pn_move
	.loc 1 1086 0
	addl	$1, -16464(%rbp)	#, losers
	jmp	.L176	#
.L177:
	.loc 1 1092 0
	addl	$1, -16456(%rbp)	#, alternates
	.loc 1 1094 0
	movl	$100000000, -16476(%rbp)	#, leastlooked
	.loc 1 1095 0
	movl	$0, -16484(%rbp)	#, l
	.loc 1 1097 0
	movl	$0, -16488(%rbp)	#, i
	jmp	.L183	#
.L186:
	.loc 1 1099 0
	movl	-16488(%rbp), %eax	# i, tmp295
	cltq
	movl	-14352(%rbp,%rax,4), %eax	# nodesspent, D.5176
	cmpl	-16476(%rbp), %eax	# leastlooked, D.5176
	jge	.L184	#,
	.loc 1 1099 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp297
	cltq
	movl	-16400(%rbp,%rax,4), %eax	# islegal, D.5176
	testl	%eax, %eax	# D.5176
	je	.L184	#,
	movl	-16488(%rbp), %eax	# i, tmp299
	cltq
	movl	rootlosers(,%rax,4), %eax	# rootlosers, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L184	#,
	.loc 1 1101 0 is_stmt 1
	movl	-16488(%rbp), %eax	# i, tmp301
	cltq
	movl	-14352(%rbp,%rax,4), %eax	# nodesspent, tmp302
	movl	%eax, -16476(%rbp)	# tmp302, leastlooked
	.loc 1 1102 0
	movl	-16488(%rbp), %eax	# i, tmp303
	movl	%eax, -16468(%rbp)	# tmp303, leastlooked_i
	.loc 1 1103 0
	movl	-16484(%rbp), %eax	# l, tmp304
	movl	%eax, -16472(%rbp)	# tmp304, leastlooked_l
.L184:
	.loc 1 1105 0
	movl	-16488(%rbp), %eax	# i, tmp306
	cltq
	movl	-16400(%rbp,%rax,4), %eax	# islegal, D.5176
	testl	%eax, %eax	# D.5176
	je	.L185	#,
	.loc 1 1105 0 is_stmt 0 discriminator 1
	addl	$1, -16484(%rbp)	#, l
.L185:
	.loc 1 1097 0 is_stmt 1
	addl	$1, -16488(%rbp)	#, i
.L183:
	.loc 1 1097 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp307
	cmpl	-16444(%rbp), %eax	# num_moves, tmp307
	jl	.L186	#,
	.loc 1 1108 0 is_stmt 1
	cmpl	$100000000, -16476(%rbp)	#, leastlooked
	jne	.L187	#,
	.loc 1 1111 0
	movl	nodecount(%rip), %eax	# nodecount, nodecount.105
	addl	$30, %eax	#, nodecount.106
	movl	%eax, nodecount(%rip)	# nodecount.106, nodecount
	.loc 1 1112 0
	jmp	.L176	#
.L187:
	.loc 1 1115 0
	movl	-16468(%rbp), %edx	# leastlooked_i, tmp308
	leaq	-12304(%rbp), %rax	#, tmp309
	movl	%edx, %esi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	make	#
	.loc 1 1117 0
	movq	-16424(%rbp), %rax	# root, tmp310
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp311
	movslq	%edx, %rdx	# tmp311, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_125, tmp312
	movq	%rax, -16416(%rbp)	# tmp312, currentnode
	.loc 1 1119 0
	movq	-16416(%rbp), %rax	# currentnode, tmp313
	movq	%rax, %rdi	# tmp313,
	call	select_most_proving	#
	movq	%rax, -16408(%rbp)	# tmp314, mostproving
	.loc 1 1120 0
	movq	-16408(%rbp), %rax	# mostproving, tmp315
	movq	%rax, %rdi	# tmp315,
	call	develop_node	#
	.loc 1 1121 0
	movq	-16408(%rbp), %rax	# mostproving, tmp316
	movq	%rax, %rdi	# tmp316,
	call	update_ancestors	#
	.loc 1 1123 0
	movl	-16468(%rbp), %eax	# leastlooked_i, tmp318
	cltq
	movl	-14352(%rbp,%rax,4), %edx	# nodesspent, D.5176
	movl	nodecount(%rip), %eax	# nodecount, nodecount.107
	subl	-16436(%rbp), %eax	# xnodecount, D.5176
	addl	%eax, %edx	# D.5176, D.5176
	movl	-16468(%rbp), %eax	# leastlooked_i, tmp320
	cltq
	movl	%edx, -14352(%rbp,%rax,4)	# D.5176, nodesspent
	.loc 1 1127 0
	movq	-16424(%rbp), %rax	# root, tmp321
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp322
	movslq	%edx, %rdx	# tmp322, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_135, D.5181
	movl	4(%rax), %eax	# _136->proof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L188	#,
	.loc 1 1128 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp323
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp324
	movslq	%edx, %rdx	# tmp324, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_141, D.5181
	movl	8(%rax), %eax	# _142->disproof, D.5176
	.loc 1 1127 0 discriminator 1
	cmpl	$100000000, %eax	#, D.5176
	jne	.L188	#,
	.loc 1 1131 0
	movl	$1, forcedwin(%rip)	#, forcedwin
	.loc 1 1133 0
	movl	kibitzed(%rip), %eax	# kibitzed, kibitzed.108
	testl	%eax, %eax	# kibitzed.108
	jne	.L189	#,
	.loc 1 1135 0
	movl	$1, kibitzed(%rip)	#, kibitzed
	.loc 1 1136 0
	movl	$.LC1, %edi	#,
	call	puts	#
.L189:
	.loc 1 1139 0
	movq	-16424(%rbp), %rax	# root, tmp325
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp326
	movslq	%edx, %rdx	# tmp326, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_148, D.5181
	movq	32(%rax), %rdx	# _149->move, tmp328
	movq	%rdx, pn_move(%rip)	# tmp328, pn_move
	movq	40(%rax), %rdx	# _149->move, tmp329
	movq	%rdx, pn_move+8(%rip)	# tmp329, pn_move
	movq	48(%rax), %rax	# _149->move, tmp330
	movq	%rax, pn_move+16(%rip)	# tmp330, pn_move
	jmp	.L176	#
.L188:
	.loc 1 1141 0
	movq	-16424(%rbp), %rax	# root, tmp331
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp332
	movslq	%edx, %rdx	# tmp332, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_153, D.5181
	movl	8(%rax), %eax	# _154->disproof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L176	#,
	.loc 1 1142 0
	movq	-16424(%rbp), %rax	# root, tmp333
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16472(%rbp), %edx	# leastlooked_l, tmp334
	movslq	%edx, %rdx	# tmp334, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_159, D.5181
	movl	4(%rax), %eax	# _160->proof, D.5176
	cmpl	$100000000, %eax	#, D.5176
	jne	.L176	#,
	.loc 1 1145 0
	movl	-16468(%rbp), %eax	# leastlooked_i, tmp336
	cltq
	movl	$1, rootlosers(,%rax,4)	#, rootlosers
	.loc 1 1146 0
	addl	$1, -16464(%rbp)	#, losers
.L176:
	.loc 1 1045 0 discriminator 1
	call	rtime	#
	movq	-16432(%rbp), %rdx	# xstart_time, tmp337
	movq	%rdx, %rsi	# tmp337,
	movq	%rax, %rdi	# D.5179,
	call	rdifftime	#
	movl	pn_time(%rip), %edx	# pn_time, pn_time.109
	cmpl	%edx, %eax	# pn_time.109, D.5176
	jge	.L190	#,
	.loc 1 1045 0 is_stmt 0 discriminator 2
	call	interrupt	#
	testl	%eax, %eax	# D.5176
	jne	.L190	#,
	.loc 1 1046 0 is_stmt 1
	movl	bufftop(%rip), %eax	# bufftop, bufftop.110
	movl	%eax, %edx	# bufftop.111, D.5174
	movl	PBSize(%rip), %eax	# PBSize, PBSize.112
	subl	$10000, %eax	#, D.5176
	cltq
	salq	$3, %rax	#, tmp339
	leaq	0(,%rax,8), %rcx	#, tmp340
	subq	%rax, %rcx	# tmp338, D.5174
	movq	%rcx, %rax	# D.5174, D.5174
	cmpq	%rax, %rdx	# D.5174, D.5174
	jae	.L190	#,
	.loc 1 1047 0
	movq	-16424(%rbp), %rax	# root, tmp341
	movl	4(%rax), %eax	# root_39->proof, D.5176
	testl	%eax, %eax	# D.5176
	je	.L190	#,
	.loc 1 1047 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp342
	movl	8(%rax), %eax	# root_39->disproof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L191	#,
.L190:
	.loc 1 1151 0 is_stmt 1
	movl	$0, -16484(%rbp)	#, l
	.loc 1 1152 0
	movl	.LC2(%rip), %eax	#, tmp343
	movl	%eax, -16452(%rbp)	# tmp343, bdp
	.loc 1 1153 0
	movl	$0, -16448(%rbp)	#, altlosers
	.loc 1 1155 0
	movq	-16424(%rbp), %rax	# root, tmp344
	movzbl	2(%rax), %eax	# root_39->expanded, D.5178
	testb	%al, %al	# D.5178
	je	.L192	#,
	.loc 1 1157 0
	movl	$0, -16488(%rbp)	#, i
	jmp	.L193	#
.L200:
	.loc 1 1159 0
	movl	-16488(%rbp), %eax	# i, tmp346
	cltq
	movl	-16400(%rbp,%rax,4), %eax	# islegal, D.5176
	testl	%eax, %eax	# D.5176
	je	.L194	#,
	.loc 1 1161 0
	leaq	-16(%rbp), %rcx	#, tmp347
	movl	-16488(%rbp), %eax	# i, tmp349
	movslq	%eax, %rdx	# tmp349, tmp348
	movq	%rdx, %rax	# tmp348, tmp350
	addq	%rax, %rax	# tmp350
	addq	%rdx, %rax	# tmp348, tmp350
	salq	$3, %rax	#, tmp351
	addq	%rbp, %rax	#, tmp352
	subq	$12304, %rax	#, tmp353
	movq	(%rax), %rdx	# moves, tmp354
	movq	%rdx, (%rsp)	# tmp354,
	movq	8(%rax), %rdx	# moves, tmp355
	movq	%rdx, 8(%rsp)	# tmp355,
	movq	16(%rax), %rax	# moves, tmp356
	movq	%rax, 16(%rsp)	# tmp356,
	movq	%rcx, %rdi	# tmp347,
	call	comp_to_san	#
	.loc 1 1166 0
	movq	-16424(%rbp), %rax	# root, tmp357
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp358
	movslq	%edx, %rdx	# tmp358, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_172, D.5181
	movl	4(%rax), %eax	# _173->proof, D.5176
	testl	%eax, %eax	# D.5176
	je	.L195	#,
	.loc 1 1168 0
	movq	-16424(%rbp), %rax	# root, tmp359
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp360
	movslq	%edx, %rdx	# tmp360, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_178, D.5181
	movl	8(%rax), %eax	# _179->disproof, D.5176
	cvtsi2ss	%eax, %xmm0	# D.5176, D.5182
	movq	-16424(%rbp), %rax	# root, tmp361
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp362
	movslq	%edx, %rdx	# tmp362, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_185, D.5181
	movl	4(%rax), %eax	# _186->proof, D.5176
	cvtsi2ss	%eax, %xmm1	# D.5176, D.5182
	divss	%xmm1, %xmm0	# D.5182, D.5182
	ucomiss	-16452(%rbp), %xmm0	# bdp, D.5182
	jbe	.L196	#,
	.loc 1 1170 0
	movq	-16424(%rbp), %rax	# root, tmp363
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp364
	movslq	%edx, %rdx	# tmp364, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_193, D.5181
	movl	8(%rax), %eax	# _194->disproof, D.5176
	cvtsi2ss	%eax, %xmm0	# D.5176, D.5182
	movq	-16424(%rbp), %rax	# root, tmp365
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp366
	movslq	%edx, %rdx	# tmp366, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_200, D.5181
	movl	4(%rax), %eax	# _201->proof, D.5176
	cvtsi2ss	%eax, %xmm1	# D.5176, D.5182
	divss	%xmm1, %xmm0	# D.5182, tmp367
	movss	%xmm0, -16452(%rbp)	# tmp367, bdp
	.loc 1 1171 0
	movq	-16424(%rbp), %rax	# root, tmp368
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp369
	movslq	%edx, %rdx	# tmp369, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_208, D.5181
	movq	32(%rax), %rdx	# _209->move, tmp371
	movq	%rdx, pn_move(%rip)	# tmp371, pn_move
	movq	40(%rax), %rdx	# _209->move, tmp372
	movq	%rdx, pn_move+8(%rip)	# tmp372, pn_move
	movq	48(%rax), %rax	# _209->move, tmp373
	movq	%rax, pn_move+16(%rip)	# tmp373, pn_move
.L196:
	.loc 1 1173 0
	movq	-16424(%rbp), %rax	# root, tmp374
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp375
	movslq	%edx, %rdx	# tmp375, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_213, D.5181
	movl	8(%rax), %eax	# _214->disproof, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L199	#,
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# root, tmp376
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp377
	movslq	%edx, %rdx	# tmp377, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_219, D.5181
	movl	4(%rax), %eax	# _220->proof, D.5176
	cmpl	$100000000, %eax	#, D.5176
	jne	.L199	#,
	.loc 1 1175 0 is_stmt 1
	addl	$1, -16448(%rbp)	#, altlosers
	jmp	.L199	#
.L195:
	.loc 1 1180 0
	movl	$1, forcedwin(%rip)	#, forcedwin
	.loc 1 1181 0
	movq	-16424(%rbp), %rax	# root, tmp378
	movq	16(%rax), %rax	# root_39->children, D.5180
	movl	-16484(%rbp), %edx	# l, tmp379
	movslq	%edx, %rdx	# tmp379, D.5174
	salq	$3, %rdx	#, D.5174
	addq	%rdx, %rax	# D.5174, D.5180
	movq	(%rax), %rax	# *_226, D.5181
	movq	32(%rax), %rdx	# _227->move, tmp381
	movq	%rdx, pn_move(%rip)	# tmp381, pn_move
	movq	40(%rax), %rdx	# _227->move, tmp382
	movq	%rdx, pn_move+8(%rip)	# tmp382, pn_move
	movq	48(%rax), %rax	# _227->move, tmp383
	movq	%rax, pn_move+16(%rip)	# tmp383, pn_move
	.loc 1 1182 0
	movl	.LC3(%rip), %eax	#, tmp384
	movl	%eax, -16452(%rbp)	# tmp384, bdp
.L199:
	.loc 1 1184 0
	addl	$1, -16484(%rbp)	#, l
.L194:
	.loc 1 1157 0
	addl	$1, -16488(%rbp)	#, i
.L193:
	.loc 1 1157 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp385
	cmpl	-16444(%rbp), %eax	# num_moves, tmp385
	jl	.L200	#,
.L192:
	.loc 1 1189 0 is_stmt 1
	leaq	-16(%rbp), %rax	#, tmp386
	movq	pn_move(%rip), %rdx	# pn_move, tmp388
	movq	%rdx, (%rsp)	# tmp388,
	movq	pn_move+8(%rip), %rdx	# pn_move, tmp389
	movq	%rdx, 8(%rsp)	# tmp389,
	movq	pn_move+16(%rip), %rdx	# pn_move, tmp390
	movq	%rdx, 16(%rsp)	# tmp390,
	movq	%rax, %rdi	# tmp386,
	call	comp_to_san	#
	.loc 1 1191 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.113
	testl	%eax, %eax	# xb_mode.113
	je	.L201	#,
	.loc 1 1191 0 is_stmt 0 discriminator 1
	movl	post(%rip), %eax	# post, post.114
	testl	%eax, %eax	# post.114
	je	.L201	#,
	.loc 1 1192 0 is_stmt 1
	movl	maxply(%rip), %edi	# maxply, maxply.115
	movq	-16424(%rbp), %rax	# root, tmp391
	movl	8(%rax), %edx	# root_39->disproof, D.5176
	movq	-16424(%rbp), %rax	# root, tmp392
	movl	4(%rax), %eax	# root_39->proof, D.5176
	movl	-16460(%rbp), %r8d	# firsts, tmp393
	movl	-16448(%rbp), %ecx	# altlosers, tmp394
	movl	-16456(%rbp), %esi	# alternates, tmp395
	movl	%esi, (%rsp)	# tmp395,
	movl	%r8d, %r9d	# tmp393,
	movl	%edi, %r8d	# maxply.115,
	movl	%eax, %esi	# D.5176,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L201:
	.loc 1 1208 0
	movl	-16480(%rbp), %eax	# legal, tmp396
	subl	$1, %eax	#, D.5176
	cmpl	-16448(%rbp), %eax	# altlosers, D.5176
	jne	.L202	#,
	.loc 1 1210 0
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 1212 0
	movl	$0, -16488(%rbp)	#, i
	jmp	.L203	#
.L205:
	.loc 1 1214 0
	movl	-16488(%rbp), %eax	# i, tmp398
	cltq
	movl	rootlosers(,%rax,4), %eax	# rootlosers, D.5176
	testl	%eax, %eax	# D.5176
	jne	.L204	#,
	.loc 1 1214 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp400
	cltq
	movl	-16400(%rbp,%rax,4), %eax	# islegal, D.5176
	testl	%eax, %eax	# D.5176
	je	.L204	#,
	.loc 1 1218 0 is_stmt 1
	movl	$1, forcedwin(%rip)	#, forcedwin
	.loc 1 1219 0
	movl	-16488(%rbp), %eax	# i, tmp402
	movslq	%eax, %rdx	# tmp402, tmp401
	movq	%rdx, %rax	# tmp401, tmp403
	addq	%rax, %rax	# tmp403
	addq	%rdx, %rax	# tmp401, tmp403
	salq	$3, %rax	#, tmp404
	addq	%rbp, %rax	#, tmp405
	subq	$12304, %rax	#, tmp406
	movq	(%rax), %rdx	# moves, tmp408
	movq	%rdx, pn_move(%rip)	# tmp408, pn_move
	movq	8(%rax), %rdx	# moves, tmp409
	movq	%rdx, pn_move+8(%rip)	# tmp409, pn_move
	movq	16(%rax), %rax	# moves, tmp410
	movq	%rax, pn_move+16(%rip)	# tmp410, pn_move
	.loc 1 1220 0
	jmp	.L202	#
.L204:
	.loc 1 1212 0
	addl	$1, -16488(%rbp)	#, i
.L203:
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movl	-16488(%rbp), %eax	# i, tmp411
	cmpl	-16444(%rbp), %eax	# num_moves, tmp411
	jl	.L205	#,
.L202:
	.loc 1 1225 0 is_stmt 1
	movl	-16448(%rbp), %eax	# altlosers, tmp412
	cmpl	-16480(%rbp), %eax	# legal, tmp412
	jne	.L206	#,
	.loc 1 1227 0
	movl	$1, alllosers(%rip)	#, alllosers
.L206:
	.loc 1 1230 0
	call	Xfree	#
	.loc 1 1231 0
	movq	membuff(%rip), %rax	# membuff, membuff.116
	movq	%rax, %rdi	# membuff.116,
	call	free	#
	.loc 1 1232 0
	movq	-16424(%rbp), %rax	# root, tmp413
	movq	%rax, %rdi	# tmp413,
	call	free	#
	.loc 1 1234 0
	nop
.L167:
	.loc 1 1236 0
	movq	-8(%rbp), %rax	# D.5183, tmp416
	xorq	%fs:40, %rax	#, tmp416
	je	.L208	#,
	call	__stack_chk_fail	#
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	proofnumberscan, .-proofnumberscan
	.section	.rodata
	.align 8
.LC7:
	.string	"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d MaxDepth: %d\n"
	.align 8
.LC8:
	.string	"tellics whisper proof %d, disproof %d, %d nodes, %d forwards, %d iters, highest depth %d\n"
.LC10:
	.string	"Time : %f\n"
.LC11:
	.string	"This position is WON."
.LC12:
	.string	"PV: "
.LC13:
	.string	"%s "
	.align 8
.LC14:
	.string	"\ntellics kibitz Forced win in %d moves.\n"
.LC15:
	.string	"\n1-0 {White mates}"
.LC16:
	.string	"\n0-1 {Black mates}"
.LC17:
	.string	"This position is LOST."
.LC18:
	.string	"This position is UNKNOWN."
	.text
	.globl	proofnumbersearch
	.type	proofnumbersearch, @function
proofnumbersearch:
.LFB15:
	.loc 1 1241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16480, %rsp	#,
	.loc 1 1241 0
	movq	%fs:40, %rax	#, tmp333
	movq	%rax, -8(%rbp)	# tmp333, D.5203
	xorl	%eax, %eax	# tmp333
	.loc 1 1252 0
	movl	$1, nodecount(%rip)	#, nodecount
	.loc 1 1253 0
	movl	$0, iters(%rip)	#, iters
	.loc 1 1254 0
	movl	$0, frees(%rip)	#, frees
	.loc 1 1255 0
	movl	$1, ply(%rip)	#, ply
	.loc 1 1256 0
	movl	$0, maxply(%rip)	#, maxply
	.loc 1 1257 0
	movl	$0, forwards(%rip)	#, forwards
	.loc 1 1258 0
	movl	move_number(%rip), %edx	# move_number, move_number.117
	movl	ply(%rip), %eax	# ply, ply.118
	addl	%edx, %eax	# move_number.117, D.5191
	subl	$1, %eax	#, D.5191
	movl	hash(%rip), %edx	# hash, hash.119
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.119, hash_history
	.loc 1 1259 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.120
	testl	%eax, %eax	# white_to_move.120
	sete	%al	#, D.5192
	movzbl	%al, %eax	# D.5192, root_to_move.121
	movl	%eax, root_to_move(%rip)	# root_to_move.121, root_to_move
	.loc 1 1263 0
	call	rtime	#
	movq	%rax, -16424(%rbp)	# tmp203, xstart_time
	.loc 1 1265 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -16416(%rbp)	# tmp204, root
	.loc 1 1267 0
	movl	PBSize(%rip), %eax	# PBSize, PBSize.122
	cltq
	movl	$56, %esi	#,
	movq	%rax, %rdi	# D.5193,
	call	calloc	#
	movq	%rax, membuff(%rip)	# membuff.123, membuff
	.loc 1 1269 0
	movq	-16416(%rbp), %rax	# root, tmp206
	movq	%rax, %rdi	# tmp206,
	call	pn_eval	#
	.loc 1 1271 0
	movq	-16416(%rbp), %rax	# root, tmp207
	movzbl	(%rax), %eax	# root_19->value, D.5194
	testb	%al, %al	# D.5194
	jne	.L211	#,
	.loc 1 1273 0
	movq	dummy(%rip), %rax	# dummy, tmp210
	movq	%rax, pn_move(%rip)	# tmp210, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp211
	movq	%rax, pn_move+8(%rip)	# tmp211, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp212
	movq	%rax, pn_move+16(%rip)	# tmp212, pn_move
	.loc 1 1274 0
	call	Xfree	#
	.loc 1 1275 0
	movq	-16416(%rbp), %rax	# root, tmp213
	movq	%rax, %rdi	# tmp213,
	call	free	#
	.loc 1 1276 0
	movq	membuff(%rip), %rax	# membuff, membuff.124
	movq	%rax, %rdi	# membuff.124,
	call	free	#
	.loc 1 1277 0
	jmp	.L210	#
.L211:
	.loc 1 1280 0
	movq	-16416(%rbp), %rax	# root, tmp214
	movq	%rax, %rdi	# tmp214,
	call	set_proof_and_disproof_numbers	#
	.loc 1 1282 0
	movq	-16416(%rbp), %rax	# root, tmp215
	movq	%rax, -16432(%rbp)	# tmp215, currentnode
	.loc 1 1284 0
	jmp	.L213	#
.L215:
	.loc 1 1287 0
	movq	-16432(%rbp), %rax	# currentnode, tmp216
	movq	%rax, %rdi	# tmp216,
	call	select_most_proving	#
	movq	%rax, -16408(%rbp)	# tmp217, mostproving
	.loc 1 1288 0
	movq	-16408(%rbp), %rax	# mostproving, tmp218
	movq	%rax, %rdi	# tmp218,
	call	develop_node	#
	.loc 1 1289 0
	movq	-16408(%rbp), %rax	# mostproving, tmp219
	movq	%rax, %rdi	# tmp219,
	call	update_ancestors	#
	.loc 1 1291 0
	movl	iters(%rip), %eax	# iters, iters.125
	addl	$1, %eax	#, iters.126
	movl	%eax, iters(%rip)	# iters.126, iters
	.loc 1 1296 0
	movl	iters(%rip), %eax	# iters, iters.127
	andl	$31, %eax	#, D.5195
	testl	%eax, %eax	# D.5195
	jne	.L213	#,
	.loc 1 1346 0
	call	rtime	#
	movq	-16424(%rbp), %rdx	# xstart_time, tmp220
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# D.5196,
	call	rdifftime	#
	movl	pn_time(%rip), %edx	# pn_time, pn_time.129
	cmpl	%edx, %eax	# pn_time.129, D.5191
	jle	.L213	#,
	.loc 1 1346 0 is_stmt 0 discriminator 1
	call	interrupt	#
	testl	%eax, %eax	# D.5191
	jne	.L213	#,
	.loc 1 1347 0 is_stmt 1
	jmp	.L214	#
.L213:
	.loc 1 1284 0 discriminator 1
	movq	-16416(%rbp), %rax	# root, tmp221
	movl	4(%rax), %eax	# root_19->proof, D.5191
	testl	%eax, %eax	# D.5191
	je	.L214	#,
	.loc 1 1284 0 is_stmt 0 discriminator 2
	movq	-16416(%rbp), %rax	# root, tmp222
	movl	8(%rax), %eax	# root_19->disproof, D.5191
	testl	%eax, %eax	# D.5191
	je	.L214	#,
	.loc 1 1285 0 is_stmt 1
	movl	bufftop(%rip), %eax	# bufftop, bufftop.130
	movl	%eax, %edx	# bufftop.131, D.5193
	movl	PBSize(%rip), %eax	# PBSize, PBSize.132
	subl	$10000, %eax	#, D.5191
	cltq
	salq	$3, %rax	#, tmp224
	leaq	0(,%rax,8), %rcx	#, tmp225
	subq	%rax, %rcx	# tmp223, D.5193
	movq	%rcx, %rax	# D.5193, D.5193
	cmpq	%rax, %rdx	# D.5193, D.5193
	jb	.L215	#,
.L214:
	.loc 1 1351 0
	movl	maxply(%rip), %esi	# maxply, maxply.133
	movl	iters(%rip), %r8d	# iters, iters.134
	movl	nodecount(%rip), %eax	# nodecount, nodecount.135
	cltq
	salq	$3, %rax	#, tmp227
	leaq	0(,%rax,8), %rdx	#, tmp228
	subq	%rax, %rdx	# tmp226, D.5193
	movq	%rdx, %rax	# D.5193, D.5193
	testq	%rax, %rax	# D.5193
	js	.L216	#,
	cvtsi2ssq	%rax, %xmm0	# D.5193, D.5197
	jmp	.L217	#
.L216:
	movq	%rax, %rdx	# D.5193, tmp230
	shrq	%rdx	# tmp230
	andl	$1, %eax	#, tmp231
	orq	%rax, %rdx	# tmp231, tmp230
	cvtsi2ssq	%rdx, %xmm0	# tmp230, tmp229
	addss	%xmm0, %xmm0	# tmp229, D.5197
.L217:
	movss	.LC6(%rip), %xmm1	#, tmp232
	divss	%xmm1, %xmm0	# tmp232, D.5197
	unpcklps	%xmm0, %xmm0	# D.5197, D.5197
	cvtps2pd	%xmm0, %xmm0	# D.5197, D.5198
	movl	frees(%rip), %edi	# frees, frees.136
	movl	nodecount(%rip), %ecx	# nodecount, nodecount.137
	movq	-16416(%rbp), %rax	# root, tmp233
	movl	8(%rax), %edx	# root_19->disproof, D.5191
	movq	-16416(%rbp), %rax	# root, tmp234
	movl	4(%rax), %eax	# root_19->proof, D.5191
	movl	%esi, (%rsp)	# maxply.133,
	movl	%r8d, %r9d	# iters.134,
	movl	%edi, %r8d	# frees.136,
	movl	%eax, %esi	# D.5191,
	movl	$.LC7, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 1353 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.138
	testl	%eax, %eax	# xb_mode.138
	je	.L218	#,
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movl	post(%rip), %eax	# post, post.139
	testl	%eax, %eax	# post.139
	je	.L218	#,
	.loc 1 1354 0 is_stmt 1
	movl	maxply(%rip), %esi	# maxply, maxply.140
	movl	iters(%rip), %r8d	# iters, iters.141
	movl	forwards(%rip), %edi	# forwards, forwards.142
	movl	nodecount(%rip), %ecx	# nodecount, nodecount.143
	movq	-16416(%rbp), %rax	# root, tmp235
	movl	8(%rax), %edx	# root_19->disproof, D.5191
	movq	-16416(%rbp), %rax	# root, tmp236
	movl	4(%rax), %eax	# root_19->proof, D.5191
	movl	%esi, (%rsp)	# maxply.140,
	movl	%r8d, %r9d	# iters.141,
	movl	%edi, %r8d	# forwards.142,
	movl	%eax, %esi	# D.5191,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L218:
	.loc 1 1356 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.144
	testl	%eax, %eax	# xb_mode.144
	jne	.L219	#,
	.loc 1 1357 0
	call	rtime	#
	movq	-16424(%rbp), %rdx	# xstart_time, tmp237
	movq	%rdx, %rsi	# tmp237,
	movq	%rax, %rdi	# D.5196,
	call	rdifftime	#
	cvtsi2ss	%eax, %xmm0	# D.5191, D.5197
	unpcklps	%xmm0, %xmm0	# D.5197, D.5197
	cvtps2pd	%xmm0, %xmm0	# D.5197, D.5198
	movsd	.LC9(%rip), %xmm1	#, tmp238
	divsd	%xmm1, %xmm0	# tmp238, D.5198
	movl	$.LC10, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 1359 0
	jmp	.L220	#
.L219:
	jmp	.L220	#
.L221:
	.loc 1 1361 0
	movq	-16432(%rbp), %rax	# currentnode, tmp239
	addq	$32, %rax	#, D.5199
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5199,
	call	unmake	#
	.loc 1 1362 0
	movq	-16432(%rbp), %rax	# currentnode, tmp240
	movq	24(%rax), %rax	# currentnode_1->parent, tmp241
	movq	%rax, -16432(%rbp)	# tmp241, currentnode
.L220:
	.loc 1 1359 0 discriminator 1
	movq	-16432(%rbp), %rax	# currentnode, tmp242
	cmpq	-16416(%rbp), %rax	# root, tmp242
	jne	.L221	#,
	.loc 1 1365 0
	movq	-16416(%rbp), %rax	# root, tmp243
	movl	4(%rax), %eax	# root_19->proof, D.5191
	testl	%eax, %eax	# D.5191
	jne	.L222	#,
	.loc 1 1367 0
	movq	-16416(%rbp), %rax	# root, tmp244
	movb	$1, (%rax)	#, root_19->value
	.loc 1 1369 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 1370 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1372 0
	leaq	-16400(%rbp), %rax	#, tmp245
	movl	$8192, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	memset	#
	.loc 1 1373 0
	leaq	-8208(%rbp), %rax	#, tmp246
	movl	$8192, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	memset	#
	.loc 1 1375 0
	movl	$1, ply(%rip)	#, ply
	.loc 1 1377 0
	jmp	.L223	#
.L231:
	.loc 1 1379 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.145
	testl	%eax, %eax	# white_to_move.145
	sete	%al	#, D.5192
	movzbl	%al, %edx	# D.5192, D.5191
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.146
	cmpl	%eax, %edx	# root_to_move.146, D.5191
	jne	.L224	#,
	.loc 1 1381 0
	movl	$0, -16444(%rbp)	#, i
	.loc 1 1382 0
	jmp	.L225	#
.L226:
	.loc 1 1384 0
	addl	$1, -16444(%rbp)	#, i
.L225:
	.loc 1 1382 0 discriminator 1
	movq	-16432(%rbp), %rax	# currentnode, tmp247
	movq	16(%rax), %rax	# currentnode_2->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp248
	movslq	%edx, %rdx	# tmp248, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_83, D.5201
	movl	4(%rax), %edx	# _84->proof, D.5191
	movq	-16432(%rbp), %rax	# currentnode, tmp249
	movl	4(%rax), %eax	# currentnode_2->proof, D.5191
	cmpl	%eax, %edx	# D.5191, D.5191
	jne	.L226	#,
	jmp	.L227	#
.L224:
	.loc 1 1389 0
	movl	$0, -16444(%rbp)	#, i
	.loc 1 1390 0
	jmp	.L228	#
.L229:
	.loc 1 1392 0
	addl	$1, -16444(%rbp)	#, i
.L228:
	.loc 1 1390 0 discriminator 1
	movq	-16432(%rbp), %rax	# currentnode, tmp250
	movq	16(%rax), %rax	# currentnode_2->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp251
	movslq	%edx, %rdx	# tmp251, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_92, D.5201
	movl	8(%rax), %edx	# _93->disproof, D.5191
	movq	-16432(%rbp), %rax	# currentnode, tmp252
	movl	8(%rax), %eax	# currentnode_2->disproof, D.5191
	cmpl	%eax, %edx	# D.5191, D.5191
	jne	.L229	#,
.L227:
	.loc 1 1396 0
	movq	-16432(%rbp), %rax	# currentnode, tmp253
	movq	16(%rax), %rax	# currentnode_2->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp254
	movslq	%edx, %rdx	# tmp254, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_100, tmp255
	movq	%rax, -16432(%rbp)	# tmp255, currentnode
	.loc 1 1398 0
	leaq	-16400(%rbp), %rdx	#, tmp256
	movq	-16432(%rbp), %rax	# currentnode, tmp257
	movq	32(%rax), %rcx	# currentnode_101->move, tmp258
	movq	%rcx, (%rsp)	# tmp258,
	movq	40(%rax), %rcx	# currentnode_101->move, tmp259
	movq	%rcx, 8(%rsp)	# tmp259,
	movq	48(%rax), %rax	# currentnode_101->move, tmp260
	movq	%rax, 16(%rsp)	# tmp260,
	movq	%rdx, %rdi	# tmp256,
	call	comp_to_coord	#
	.loc 1 1399 0
	leaq	-16400(%rbp), %rax	#, tmp261
	movq	%rax, %rsi	# tmp261,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1400 0
	leaq	-16400(%rbp), %rdx	#, tmp262
	leaq	-8208(%rbp), %rax	#, tmp263
	movq	%rdx, %rsi	# tmp262,
	movq	%rax, %rdi	# tmp263,
	call	strcat	#
	.loc 1 1401 0
	leaq	-8208(%rbp), %rax	#, tmp264
	movq	$-1, %rcx	#, tmp268
	movq	%rax, %rdx	# tmp264, tmp267
	movl	$0, %eax	#, tmp269
	movq	%rdx, %rdi	# tmp267, tmp267
	repnz scasb
	movq	%rcx, %rax	# tmp265, tmp265
	notq	%rax	# tmp266
	leaq	-1(%rax), %rdx	#, D.5193
	leaq	-8208(%rbp), %rax	#, tmp270
	addq	%rdx, %rax	# D.5193, D.5202
	movw	$32, (%rax)	#, MEM[(void *)_103]
	.loc 1 1403 0
	movq	-16432(%rbp), %rax	# currentnode, tmp271
	addq	$32, %rax	#, D.5199
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5199,
	call	make	#
	.loc 1 1405 0
	movl	ply(%rip), %eax	# ply, ply.147
	cmpl	$1, %eax	#, ply.147
	jne	.L230	#,
	.loc 1 1406 0
	movq	-16432(%rbp), %rax	# currentnode, tmp272
	movq	32(%rax), %rdx	# currentnode_101->move, tmp274
	movq	%rdx, pn_move(%rip)	# tmp274, pn_move
	movq	40(%rax), %rdx	# currentnode_101->move, tmp275
	movq	%rdx, pn_move+8(%rip)	# tmp275, pn_move
	movq	48(%rax), %rax	# currentnode_101->move, tmp276
	movq	%rax, pn_move+16(%rip)	# tmp276, pn_move
.L230:
	.loc 1 1408 0
	movl	$1, forcedwin(%rip)	#, forcedwin
.L223:
	.loc 1 1377 0 discriminator 1
	movq	-16432(%rbp), %rax	# currentnode, tmp277
	movzbl	2(%rax), %eax	# currentnode_2->expanded, D.5194
	testb	%al, %al	# D.5194
	jne	.L231	#,
	.loc 1 1411 0
	movl	ply(%rip), %eax	# ply, tmp278
	movl	%eax, -16436(%rbp)	# tmp278, oldply
	.loc 1 1413 0
	jmp	.L232	#
.L233:
	.loc 1 1415 0
	movq	-16432(%rbp), %rax	# currentnode, tmp279
	addq	$32, %rax	#, D.5199
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5199,
	call	unmake	#
	.loc 1 1416 0
	movq	-16432(%rbp), %rax	# currentnode, tmp280
	movq	24(%rax), %rax	# currentnode_3->parent, tmp281
	movq	%rax, -16432(%rbp)	# tmp281, currentnode
.L232:
	.loc 1 1413 0 discriminator 1
	movq	-16432(%rbp), %rax	# currentnode, tmp282
	cmpq	-16416(%rbp), %rax	# root, tmp282
	jne	.L233	#,
	.loc 1 1419 0
	movl	kibitzed(%rip), %eax	# kibitzed, kibitzed.148
	testl	%eax, %eax	# kibitzed.148
	jne	.L234	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.149
	testl	%eax, %eax	# xb_mode.149
	je	.L234	#,
	movl	post(%rip), %eax	# post, post.150
	testl	%eax, %eax	# post.150
	je	.L234	#,
	.loc 1 1421 0 is_stmt 1
	movl	$1, kibitzed(%rip)	#, kibitzed
	.loc 1 1422 0
	movl	-16436(%rbp), %eax	# oldply, tmp283
	movl	%eax, %edx	# tmp283, tmp284
	shrl	$31, %edx	#, tmp284
	addl	%edx, %eax	# tmp284, tmp285
	sarl	%eax	# tmp286
	movl	%eax, %esi	# D.5191,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L234:
	.loc 1 1425 0
	cmpl	$1, -16436(%rbp)	#, oldply
	jne	.L235	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	movq	-16416(%rbp), %rax	# root, tmp287
	movl	4(%rax), %eax	# root_19->proof, D.5191
	testl	%eax, %eax	# D.5191
	je	.L236	#,
	movq	-16416(%rbp), %rax	# root, tmp288
	movl	8(%rax), %eax	# root_19->disproof, D.5191
	testl	%eax, %eax	# D.5191
	jne	.L235	#,
.L236:
	.loc 1 1427 0 is_stmt 1
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.151
	testl	%eax, %eax	# root_to_move.151
	jne	.L237	#,
	.loc 1 1429 0
	movl	$.LC15, %edi	#,
	call	puts	#
	.loc 1 1430 0
	movl	$3, result(%rip)	#, result
	jmp	.L235	#
.L237:
	.loc 1 1434 0
	movl	$.LC16, %edi	#,
	call	puts	#
	.loc 1 1435 0
	movl	$2, result(%rip)	#, result
.L235:
	.loc 1 1439 0 discriminator 1
	movl	$10, %edi	#,
	call	putchar	#
	jmp	.L238	#
.L222:
	.loc 1 1441 0
	movq	-16416(%rbp), %rax	# root, tmp289
	movl	8(%rax), %eax	# root_19->disproof, D.5191
	testl	%eax, %eax	# D.5191
	jne	.L239	#,
	.loc 1 1443 0
	movq	-16416(%rbp), %rax	# root, tmp290
	movb	$0, (%rax)	#, root_19->value
	.loc 1 1444 0
	movl	$.LC17, %edi	#,
	call	puts	#
	.loc 1 1446 0
	movq	dummy(%rip), %rax	# dummy, tmp293
	movq	%rax, pn_move(%rip)	# tmp293, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp294
	movq	%rax, pn_move+8(%rip)	# tmp294, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp295
	movq	%rax, pn_move+16(%rip)	# tmp295, pn_move
	jmp	.L238	#
.L239:
	.loc 1 1450 0
	movq	-16416(%rbp), %rax	# root, tmp296
	movb	$2, (%rax)	#, root_19->value
	.loc 1 1451 0
	movl	$.LC18, %edi	#,
	call	puts	#
	.loc 1 1453 0
	movq	dummy(%rip), %rax	# dummy, tmp299
	movq	%rax, pn_move(%rip)	# tmp299, pn_move
	movq	dummy+8(%rip), %rax	# dummy, tmp300
	movq	%rax, pn_move+8(%rip)	# tmp300, pn_move
	movq	dummy+16(%rip), %rax	# dummy, tmp301
	movq	%rax, pn_move+16(%rip)	# tmp301, pn_move
.L238:
	.loc 1 1457 0
	movl	.LC2(%rip), %eax	#, tmp302
	movl	%eax, -16440(%rbp)	# tmp302, bdp
	.loc 1 1459 0
	movl	$0, -16444(%rbp)	#, i
	jmp	.L240	#
.L246:
	.loc 1 1461 0
	movq	-16416(%rbp), %rax	# root, tmp303
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp304
	movslq	%edx, %rdx	# tmp304, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_124, D.5201
	movl	4(%rax), %eax	# _125->proof, D.5191
	testl	%eax, %eax	# D.5191
	je	.L241	#,
	.loc 1 1463 0
	movq	-16416(%rbp), %rax	# root, tmp305
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp306
	movslq	%edx, %rdx	# tmp306, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_130, D.5201
	movl	8(%rax), %eax	# _131->disproof, D.5191
	cvtsi2ss	%eax, %xmm0	# D.5191, D.5197
	movq	-16416(%rbp), %rax	# root, tmp307
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp308
	movslq	%edx, %rdx	# tmp308, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_137, D.5201
	movl	4(%rax), %eax	# _138->proof, D.5191
	cvtsi2ss	%eax, %xmm1	# D.5191, D.5197
	divss	%xmm1, %xmm0	# D.5197, D.5197
	ucomiss	-16440(%rbp), %xmm0	# bdp, D.5197
	ja	.L249	#,
	jmp	.L244	#
.L249:
	.loc 1 1465 0
	movq	-16416(%rbp), %rax	# root, tmp309
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp310
	movslq	%edx, %rdx	# tmp310, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_145, D.5201
	movl	8(%rax), %eax	# _146->disproof, D.5191
	cvtsi2ss	%eax, %xmm0	# D.5191, D.5197
	movq	-16416(%rbp), %rax	# root, tmp311
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp312
	movslq	%edx, %rdx	# tmp312, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_152, D.5201
	movl	4(%rax), %eax	# _153->proof, D.5191
	cvtsi2ss	%eax, %xmm1	# D.5191, D.5197
	divss	%xmm1, %xmm0	# D.5197, tmp313
	movss	%xmm0, -16440(%rbp)	# tmp313, bdp
	.loc 1 1466 0
	movq	-16416(%rbp), %rax	# root, tmp314
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp315
	movslq	%edx, %rdx	# tmp315, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_160, D.5201
	movq	32(%rax), %rdx	# _161->move, tmp317
	movq	%rdx, pn_move(%rip)	# tmp317, pn_move
	movq	40(%rax), %rdx	# _161->move, tmp318
	movq	%rdx, pn_move+8(%rip)	# tmp318, pn_move
	movq	48(%rax), %rax	# _161->move, tmp319
	movq	%rax, pn_move+16(%rip)	# tmp319, pn_move
	jmp	.L244	#
.L241:
	.loc 1 1471 0
	movq	-16416(%rbp), %rax	# root, tmp320
	movq	16(%rax), %rax	# root_19->children, D.5200
	movl	-16444(%rbp), %edx	# i, tmp321
	movslq	%edx, %rdx	# tmp321, D.5193
	salq	$3, %rdx	#, D.5193
	addq	%rdx, %rax	# D.5193, D.5200
	movq	(%rax), %rax	# *_166, D.5201
	movq	32(%rax), %rdx	# _167->move, tmp323
	movq	%rdx, pn_move(%rip)	# tmp323, pn_move
	movq	40(%rax), %rdx	# _167->move, tmp324
	movq	%rdx, pn_move+8(%rip)	# tmp324, pn_move
	movq	48(%rax), %rax	# _167->move, tmp325
	movq	%rax, pn_move+16(%rip)	# tmp325, pn_move
	.loc 1 1472 0
	jmp	.L245	#
.L244:
	.loc 1 1459 0
	addl	$1, -16444(%rbp)	#, i
.L240:
	.loc 1 1459 0 is_stmt 0 discriminator 1
	movq	-16416(%rbp), %rax	# root, tmp326
	movzbl	1(%rax), %eax	# root_19->num_children, D.5194
	movzbl	%al, %eax	# D.5194, D.5191
	cmpl	-16444(%rbp), %eax	# i, D.5191
	jg	.L246	#,
.L245:
	.loc 1 1476 0 is_stmt 1
	movq	pn_move(%rip), %rax	# pn_move, tmp329
	movq	%rax, pn_saver(%rip)	# tmp329, pn_saver
	movq	pn_move+8(%rip), %rax	# pn_move, tmp330
	movq	%rax, pn_saver+8(%rip)	# tmp330, pn_saver
	movq	pn_move+16(%rip), %rax	# pn_move, tmp331
	movq	%rax, pn_saver+16(%rip)	# tmp331, pn_saver
	.loc 1 1478 0
	movq	-16416(%rbp), %rax	# root, tmp332
	movq	%rax, %rdi	# tmp332,
	call	free	#
	.loc 1 1479 0
	call	Xfree	#
	.loc 1 1480 0
	movq	membuff(%rip), %rax	# membuff, membuff.152
	movq	%rax, %rdi	# membuff.152,
	call	free	#
	.loc 1 1484 0
	nop
.L210:
	.loc 1 1485 0
	movq	-8(%rbp), %rax	# D.5203, tmp334
	xorq	%fs:40, %rax	#, tmp334
	je	.L248	#,
	call	__stack_chk_fail	#
.L248:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	proofnumbersearch, .-proofnumbersearch
	.section	.rodata
	.align 8
.LC19:
	.string	"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d\n"
	.text
	.globl	proofnumbercheck
	.type	proofnumbercheck, @function
proofnumbercheck:
.LFB16:
	.loc 1 1488 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	.loc 1 1495 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.153
	cmpl	$3, %eax	#, piece_count.153
	jg	.L251	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.154
	cmpl	$3, %eax	#, Variant.154
	jne	.L251	#,
	.loc 1 1497 0 is_stmt 1
	movq	-72(%rbp), %rax	# .result_ptr, tmp104
	movq	16(%rbp), %rdx	# compmove, tmp105
	movq	%rdx, (%rax)	# tmp105, <retval>
	movq	24(%rbp), %rdx	# compmove, tmp106
	movq	%rdx, 8(%rax)	# tmp106, <retval>
	movq	32(%rbp), %rdx	# compmove, tmp107
	movq	%rdx, 16(%rax)	# tmp107, <retval>
	jmp	.L250	#
.L251:
	.loc 1 1500 0
	movl	$0, nodecount(%rip)	#, nodecount
	.loc 1 1501 0
	movl	$0, iters(%rip)	#, iters
	.loc 1 1502 0
	movl	$0, frees(%rip)	#, frees
	.loc 1 1503 0
	movl	$1, ply(%rip)	#, ply
	.loc 1 1504 0
	movl	$0, maxply(%rip)	#, maxply
	.loc 1 1507 0
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	make	#
	.loc 1 1509 0
	movl	move_number(%rip), %edx	# move_number, move_number.155
	movl	ply(%rip), %eax	# ply, ply.156
	addl	%edx, %eax	# move_number.155, D.5215
	subl	$1, %eax	#, D.5215
	movl	hash(%rip), %edx	# hash, hash.157
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.157, hash_history
	.loc 1 1511 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.158
	testl	%eax, %eax	# white_to_move.158
	sete	%al	#, D.5216
	movzbl	%al, %eax	# D.5216, root_to_move.159
	movl	%eax, root_to_move(%rip)	# root_to_move.159, root_to_move
	.loc 1 1515 0
	call	rtime	#
	movq	%rax, -56(%rbp)	# tmp109, xstart_time
	.loc 1 1517 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp110, root
	.loc 1 1519 0
	movl	PBSize(%rip), %eax	# PBSize, PBSize.160
	cltq
	movl	$56, %esi	#,
	movq	%rax, %rdi	# D.5217,
	call	calloc	#
	movq	%rax, membuff(%rip)	# membuff.161, membuff
	.loc 1 1521 0
	movq	-48(%rbp), %rax	# root, tmp112
	movq	%rax, %rdi	# tmp112,
	call	pn_eval	#
	.loc 1 1523 0
	movq	-48(%rbp), %rax	# root, tmp113
	movq	%rax, %rdi	# tmp113,
	call	set_proof_and_disproof_numbers	#
	.loc 1 1525 0
	movq	-48(%rbp), %rax	# root, tmp114
	movq	%rax, -64(%rbp)	# tmp114, currentnode
	.loc 1 1527 0
	jmp	.L253	#
.L255:
	.loc 1 1530 0
	movq	-64(%rbp), %rax	# currentnode, tmp115
	movq	%rax, %rdi	# tmp115,
	call	select_most_proving	#
	movq	%rax, -40(%rbp)	# tmp116, mostproving
	.loc 1 1531 0
	movq	-40(%rbp), %rax	# mostproving, tmp117
	movq	%rax, %rdi	# tmp117,
	call	develop_node	#
	.loc 1 1532 0
	movq	-40(%rbp), %rax	# mostproving, tmp118
	movq	%rax, %rdi	# tmp118,
	call	update_ancestors	#
	.loc 1 1534 0
	movl	iters(%rip), %eax	# iters, iters.162
	addl	$1, %eax	#, iters.163
	movl	%eax, iters(%rip)	# iters.163, iters
	.loc 1 1536 0
	movl	iters(%rip), %eax	# iters, iters.164
	andl	$31, %eax	#, D.5218
	testl	%eax, %eax	# D.5218
	jne	.L253	#,
	.loc 1 1539 0
	call	rtime	#
	movq	-56(%rbp), %rdx	# xstart_time, tmp119
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# D.5219,
	call	rdifftime	#
	movl	pn_time(%rip), %edx	# pn_time, pn_time.166
	cmpl	%edx, %eax	# pn_time.166, D.5215
	jle	.L253	#,
	.loc 1 1540 0
	jmp	.L254	#
.L253:
	.loc 1 1527 0 discriminator 1
	movq	-48(%rbp), %rax	# root, tmp120
	movl	4(%rax), %eax	# root_13->proof, D.5215
	testl	%eax, %eax	# D.5215
	je	.L254	#,
	.loc 1 1527 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# root, tmp121
	movl	8(%rax), %eax	# root_13->disproof, D.5215
	testl	%eax, %eax	# D.5215
	je	.L254	#,
	.loc 1 1528 0 is_stmt 1
	movl	bufftop(%rip), %eax	# bufftop, bufftop.167
	movl	%eax, %edx	# bufftop.168, D.5217
	movl	PBSize(%rip), %eax	# PBSize, PBSize.169
	subl	$10000, %eax	#, D.5215
	cltq
	salq	$3, %rax	#, tmp123
	leaq	0(,%rax,8), %rcx	#, tmp124
	subq	%rax, %rcx	# tmp122, D.5217
	movq	%rcx, %rax	# D.5217, D.5217
	cmpq	%rax, %rdx	# D.5217, D.5217
	jb	.L255	#,
.L254:
	.loc 1 1544 0
	movl	iters(%rip), %edi	# iters, iters.170
	movl	nodecount(%rip), %eax	# nodecount, nodecount.171
	cltq
	salq	$3, %rax	#, tmp126
	leaq	0(,%rax,8), %rdx	#, tmp127
	subq	%rax, %rdx	# tmp125, D.5217
	movq	%rdx, %rax	# D.5217, D.5217
	testq	%rax, %rax	# D.5217
	js	.L256	#,
	cvtsi2ssq	%rax, %xmm0	# D.5217, D.5220
	jmp	.L257	#
.L256:
	movq	%rax, %rdx	# D.5217, tmp129
	shrq	%rdx	# tmp129
	andl	$1, %eax	#, tmp130
	orq	%rax, %rdx	# tmp130, tmp129
	cvtsi2ssq	%rdx, %xmm0	# tmp129, tmp128
	addss	%xmm0, %xmm0	# tmp128, D.5220
.L257:
	movss	.LC6(%rip), %xmm1	#, tmp131
	divss	%xmm1, %xmm0	# tmp131, D.5220
	unpcklps	%xmm0, %xmm0	# D.5220, D.5220
	cvtps2pd	%xmm0, %xmm0	# D.5220, D.5221
	movl	frees(%rip), %esi	# frees, frees.172
	movl	nodecount(%rip), %ecx	# nodecount, nodecount.173
	movq	-48(%rbp), %rax	# root, tmp132
	movl	8(%rax), %edx	# root_13->disproof, D.5215
	movq	-48(%rbp), %rax	# root, tmp133
	movl	4(%rax), %eax	# root_13->proof, D.5215
	movl	%edi, %r9d	# iters.170,
	movl	%esi, %r8d	# frees.172,
	movl	%eax, %esi	# D.5215,
	movl	$.LC19, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 1546 0
	jmp	.L258	#
.L259:
	.loc 1 1548 0
	movq	-64(%rbp), %rax	# currentnode, tmp134
	addq	$32, %rax	#, D.5222
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5222,
	call	unmake	#
	.loc 1 1549 0
	movq	-64(%rbp), %rax	# currentnode, tmp135
	movq	24(%rax), %rax	# currentnode_1->parent, tmp136
	movq	%rax, -64(%rbp)	# tmp136, currentnode
.L258:
	.loc 1 1546 0 discriminator 1
	movq	-64(%rbp), %rax	# currentnode, tmp137
	cmpq	-48(%rbp), %rax	# root, tmp137
	jne	.L259	#,
	.loc 1 1552 0
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	unmake	#
	.loc 1 1554 0
	movq	-48(%rbp), %rax	# root, tmp138
	movl	4(%rax), %eax	# root_13->proof, D.5215
	testl	%eax, %eax	# D.5215
	jne	.L260	#,
	.loc 1 1557 0
	movq	-48(%rbp), %rax	# root, tmp139
	movb	$1, (%rax)	#, root_13->value
	.loc 1 1560 0
	movq	pn_move(%rip), %rax	# pn_move, tmp141
	movq	%rax, -32(%rbp)	# tmp141, resmove
	movq	pn_move+8(%rip), %rax	# pn_move, tmp142
	movq	%rax, -24(%rbp)	# tmp142, resmove
	movq	pn_move+16(%rip), %rax	# pn_move, tmp143
	movq	%rax, -16(%rbp)	# tmp143, resmove
	.loc 1 1562 0
	movl	$1, s_threat(%rip)	#, s_threat
	jmp	.L261	#
.L260:
	.loc 1 1564 0
	movq	-48(%rbp), %rax	# root, tmp144
	movl	8(%rax), %eax	# root_13->disproof, D.5215
	testl	%eax, %eax	# D.5215
	jne	.L262	#,
	.loc 1 1568 0
	movq	-48(%rbp), %rax	# root, tmp145
	movb	$0, (%rax)	#, root_13->value
	.loc 1 1569 0
	movq	16(%rbp), %rax	# compmove, tmp146
	movq	%rax, -32(%rbp)	# tmp146, resmove
	movq	24(%rbp), %rax	# compmove, tmp147
	movq	%rax, -24(%rbp)	# tmp147, resmove
	movq	32(%rbp), %rax	# compmove, tmp148
	movq	%rax, -16(%rbp)	# tmp148, resmove
	jmp	.L261	#
.L262:
	.loc 1 1574 0
	movq	-48(%rbp), %rax	# root, tmp149
	movb	$2, (%rax)	#, root_13->value
	.loc 1 1575 0
	movq	16(%rbp), %rax	# compmove, tmp150
	movq	%rax, -32(%rbp)	# tmp150, resmove
	movq	24(%rbp), %rax	# compmove, tmp151
	movq	%rax, -24(%rbp)	# tmp151, resmove
	movq	32(%rbp), %rax	# compmove, tmp152
	movq	%rax, -16(%rbp)	# tmp152, resmove
.L261:
	.loc 1 1579 0
	call	Xfree	#
	.loc 1 1580 0
	movq	-48(%rbp), %rax	# root, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free	#
	.loc 1 1581 0
	movq	membuff(%rip), %rax	# membuff, membuff.174
	movq	%rax, %rdi	# membuff.174,
	call	free	#
	.loc 1 1585 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp154
	movq	-32(%rbp), %rdx	# resmove, tmp155
	movq	%rdx, (%rax)	# tmp155, <retval>
	movq	-24(%rbp), %rdx	# resmove, tmp156
	movq	%rdx, 8(%rax)	# tmp156, <retval>
	movq	-16(%rbp), %rdx	# resmove, tmp157
	movq	%rdx, 16(%rax)	# tmp157, <retval>
.L250:
	.loc 1 1586 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	proofnumbercheck, .-proofnumbercheck
	.section	.rodata
	.align 4
.LC2:
	.long	3212836864
	.align 4
.LC3:
	.long	1287568416
	.align 4
.LC6:
	.long	1233125376
	.align 8
.LC9:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbb4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x1
	.long	.LASF114
	.long	.LASF115
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
	.long	.LASF10
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
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x7e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x8
	.long	0x99
	.long	0xbe
	.uleb128 0x9
	.long	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x4b
	.long	0x8c
	.uleb128 0xa
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0x119
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0xc
	.string	"ep"
	.byte	0x2
	.byte	0x65
	.long	0x77
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x2
	.byte	0x66
	.long	0xc9
	.uleb128 0x4
	.long	.LASF22
	.byte	0x2
	.byte	0xa1
	.long	0xbe
	.uleb128 0xd
	.long	.LASF34
	.byte	0x38
	.byte	0x1
	.byte	0x2d
	.long	0x1a8
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x2f
	.long	0x4d
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x30
	.long	0x4d
	.byte	0x1
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x31
	.long	0x4d
	.byte	0x2
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x32
	.long	0x4d
	.byte	0x3
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x33
	.long	0x77
	.byte	0x4
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x34
	.long	0x77
	.byte	0x8
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x35
	.long	0x1a8
	.byte	0x10
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x36
	.long	0x1ae
	.byte	0x18
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x37
	.long	0x119
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1ae
	.uleb128 0xe
	.byte	0x8
	.long	0x12f
	.uleb128 0x4
	.long	.LASF32
	.byte	0x1
	.byte	0x39
	.long	0x12f
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0x43
	.long	0x97
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x43
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x45
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0x1
	.byte	0x4c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF36
	.byte	0x1
	.byte	0x51
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x51
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1b4
	.uleb128 0x13
	.long	.LASF37
	.byte	0x1
	.byte	0x6a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x280
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0x6a
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF39
	.byte	0x1
	.byte	0x7a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ec
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0x7a
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12328
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0x7c
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12308
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x7d
	.long	0x2ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x7e
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.byte	0
	.uleb128 0x8
	.long	0x119
	.long	0x2fd
	.uleb128 0x15
	.long	0x85
	.value	0x1ff
	.byte	0
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.byte	0xb9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x367
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0xb9
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0xbb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"wp"
	.byte	0x1
	.byte	0xbc
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"bp"
	.byte	0x1
	.byte	0xbc
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.byte	0xfd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x414
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0xfd
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0xff
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12308
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x100
	.long	0x2ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.value	0x101
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12332
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x102
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12328
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x103
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12324
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.value	0x103
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x18
	.string	"wp"
	.byte	0x1
	.value	0x104
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.uleb128 0x18
	.string	"bp"
	.byte	0x1
	.value	0x104
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.byte	0
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.value	0x191
	.long	0x24e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x462
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0x191
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x193
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF47
	.byte	0x1
	.value	0x194
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF48
	.byte	0x1
	.value	0x1bc
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x504
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0x1bc
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x17
	.long	.LASF27
	.byte	0x1
	.value	0x1be
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12328
	.uleb128 0x17
	.long	.LASF28
	.byte	0x1
	.value	0x1bf
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12324
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1c0
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x1c1
	.long	0x2ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x1c2
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.value	0x1c2
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x1c3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12308
	.byte	0
	.uleb128 0x1b
	.long	.LASF49
	.byte	0x1
	.value	0x2c3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a6
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0x2c3
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.value	0x2c5
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12332
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x2c6
	.long	0x2ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x2c7
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12328
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x2c7
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12324
	.uleb128 0x17
	.long	.LASF50
	.byte	0x1
	.value	0x2c8
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12312
	.uleb128 0x18
	.string	"leg"
	.byte	0x1
	.value	0x2cc
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x2cd
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12316
	.byte	0
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x378
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f2
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0x378
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF47
	.byte	0x1
	.value	0x37a
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF52
	.byte	0x1
	.value	0x37a
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.value	0x397
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x64d
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.value	0x397
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0x399
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0x39d
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.value	0x39e
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x1
	.value	0x3bc
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x7db
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x3be
	.long	0x2ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12320
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.value	0x3bf
	.long	0x7db
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.value	0x3c0
	.long	0x7db
	.uleb128 0x4
	.byte	0x91
	.sleb128 -14368
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3c1
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x3c1
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16500
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x3c1
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.value	0x3c2
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x3c3
	.long	0x124
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.value	0x3c4
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0x3c5
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16424
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0x3c6
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x3c7
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16492
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x3c7
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x3c7
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16484
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x3c8
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.value	0x3c9
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.value	0x3ca
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.value	0x3ca
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x3cb
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"ic"
	.byte	0x1
	.value	0x3cc
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x18
	.string	"bdp"
	.byte	0x1
	.value	0x3cd
	.long	0x7ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16468
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x3ce
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.byte	0
	.uleb128 0x8
	.long	0x77
	.long	0x7ec
	.uleb128 0x15
	.long	0x85
	.value	0x1ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF72
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.value	0x4d8
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a8
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.value	0x4da
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0x4db
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16424
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0x4dc
	.long	0x24e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x4dd
	.long	0x124
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x4de
	.long	0x8a8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x18
	.string	"PV"
	.byte	0x1
	.value	0x4df
	.long	0x8a8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x4e0
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x18
	.string	"bdp"
	.byte	0x1
	.value	0x4e1
	.long	0x7ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x4e2
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.byte	0
	.uleb128 0x8
	.long	0x99
	.long	0x8b9
	.uleb128 0x15
	.long	0x85
	.value	0x1fff
	.byte	0
	.uleb128 0x19
	.long	.LASF75
	.byte	0x1
	.value	0x5cf
	.long	0x119
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x938
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x5cf
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.value	0x5d1
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0x5d2
	.long	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0x5d3
	.long	0x24e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.value	0x5d4
	.long	0x124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x5d5
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	0x77
	.long	0x948
	.uleb128 0x9
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x5
	.byte	0xc
	.long	0x938
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x5
	.byte	0xc
	.long	0x77
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x5
	.byte	0xc
	.long	0x77
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x5
	.byte	0xd
	.long	0x77
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x5
	.byte	0xd
	.long	0x77
	.uleb128 0x1d
	.string	"ply"
	.byte	0x5
	.byte	0xd
	.long	0x77
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x5
	.byte	0xe
	.long	0x77
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x5
	.byte	0x16
	.long	0x42
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x5
	.byte	0x16
	.long	0x42
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x5
	.byte	0x17
	.long	0x77
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x5
	.byte	0x19
	.long	0x119
	.uleb128 0x8
	.long	0x77
	.long	0x9d1
	.uleb128 0x9
	.long	0x85
	.byte	0x3d
	.byte	0
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x5
	.byte	0x2c
	.long	0x9c1
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x5
	.byte	0x38
	.long	0x5b
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x5
	.byte	0x63
	.long	0x77
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.byte	0x28
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	forcedwin
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x5
	.byte	0x76
	.long	0x77
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x5
	.byte	0x78
	.long	0x77
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x5
	.byte	0x7e
	.long	0x77
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.byte	0x23
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	pn_time
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.byte	0x24
	.long	0x119
	.uleb128 0x9
	.byte	0x3
	.quad	pn_move
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.byte	0x25
	.long	0x119
	.uleb128 0x9
	.byte	0x3
	.quad	pn_saver
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.byte	0x27
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	kibitzed
	.uleb128 0x8
	.long	0x77
	.long	0xa8d
	.uleb128 0x15
	.long	0x85
	.value	0x12b
	.byte	0
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x1
	.byte	0x2a
	.long	0xa7c
	.uleb128 0x9
	.byte	0x3
	.quad	rootlosers
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.byte	0x2b
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	alllosers
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x5
	.byte	0x88
	.long	0x77
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x5
	.byte	0x98
	.long	0x77
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x5
	.byte	0x9f
	.long	0x77
	.uleb128 0x8
	.long	0x5b
	.long	0xae9
	.uleb128 0x15
	.long	0x85
	.value	0x257
	.byte	0
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x5
	.byte	0xa0
	.long	0xad8
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.byte	0x1c
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	nodecount
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.byte	0x1d
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	nodecount2
	.uleb128 0x1f
	.string	"pn2"
	.byte	0x1
	.byte	0x1e
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	pn2
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.byte	0x1f
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	frees
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.byte	0x20
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	iters
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.byte	0x21
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	forwards
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x1
	.byte	0x22
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	maxply
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.byte	0x40
	.long	0xb9c
	.uleb128 0x9
	.byte	0x3
	.quad	membuff
	.uleb128 0xe
	.byte	0x8
	.long	0x4d
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.byte	0x41
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bufftop
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF37:
	.string	"pn_eval"
.LASF16:
	.string	"from"
.LASF22:
	.string	"rtime_t"
.LASF70:
	.string	"output"
.LASF93:
	.string	"phase"
.LASF39:
	.string	"std_pn_eval"
.LASF69:
	.string	"alternates"
.LASF105:
	.string	"nodecount"
.LASF76:
	.string	"compmove"
.LASF103:
	.string	"move_number"
.LASF116:
	.string	"Xfree"
.LASF4:
	.string	"unsigned int"
.LASF28:
	.string	"disproof"
.LASF27:
	.string	"proof"
.LASF24:
	.string	"num_children"
.LASF87:
	.string	"dummy"
.LASF35:
	.string	"oldtop"
.LASF65:
	.string	"leastlooked_i"
.LASF64:
	.string	"leastlooked_l"
.LASF56:
	.string	"currentnode"
.LASF44:
	.string	"losers_pn_eval"
.LASF66:
	.string	"losers"
.LASF92:
	.string	"numb_moves"
.LASF26:
	.string	"evaluated"
.LASF55:
	.string	"mostproving"
.LASF115:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"TRUE"
.LASF53:
	.string	"pn2_eval"
.LASF86:
	.string	"xb_mode"
.LASF63:
	.string	"leastlooked"
.LASF72:
	.string	"float"
.LASF96:
	.string	"pn_move"
.LASF45:
	.string	"Xmalloc"
.LASF82:
	.string	"result"
.LASF14:
	.string	"long long unsigned int"
.LASF18:
	.string	"captured"
.LASF62:
	.string	"xstart_time"
.LASF36:
	.string	"freenodes"
.LASF84:
	.string	"captures"
.LASF43:
	.string	"suicide_pn_eval"
.LASF95:
	.string	"pn_time"
.LASF23:
	.string	"value"
.LASF21:
	.string	"move_s"
.LASF81:
	.string	"bking_loc"
.LASF17:
	.string	"target"
.LASF31:
	.string	"move"
.LASF83:
	.string	"piece_count"
.LASF80:
	.string	"wking_loc"
.LASF97:
	.string	"pn_saver"
.LASF74:
	.string	"oldply"
.LASF60:
	.string	"nodesspent"
.LASF71:
	.string	"altlosers"
.LASF12:
	.string	"char"
.LASF101:
	.string	"s_threat"
.LASF49:
	.string	"develop_node"
.LASF111:
	.string	"membuff"
.LASF32:
	.string	"node_t"
.LASF15:
	.string	"time_t"
.LASF13:
	.string	"long long int"
.LASF85:
	.string	"post"
.LASF41:
	.string	"moves"
.LASF110:
	.string	"maxply"
.LASF33:
	.string	"size"
.LASF59:
	.string	"islegal"
.LASF47:
	.string	"tnode"
.LASF102:
	.string	"PBSize"
.LASF98:
	.string	"kibitzed"
.LASF50:
	.string	"newnode"
.LASF94:
	.string	"root_to_move"
.LASF100:
	.string	"alllosers"
.LASF42:
	.string	"mate"
.LASF38:
	.string	"this"
.LASF112:
	.string	"bufftop"
.LASF19:
	.string	"promoted"
.LASF113:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF54:
	.string	"root"
.LASF73:
	.string	"proofnumbersearch"
.LASF30:
	.string	"parent"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF89:
	.string	"hash"
.LASF34:
	.string	"node"
.LASF0:
	.string	"FALSE"
.LASF75:
	.string	"proofnumbercheck"
.LASF67:
	.string	"xnodecount"
.LASF68:
	.string	"firsts"
.LASF20:
	.string	"castled"
.LASF99:
	.string	"rootlosers"
.LASF91:
	.string	"forcedwin"
.LASF9:
	.string	"sizetype"
.LASF90:
	.string	"Variant"
.LASF5:
	.string	"long unsigned int"
.LASF52:
	.string	"prevnode"
.LASF109:
	.string	"forwards"
.LASF46:
	.string	"select_most_proving"
.LASF2:
	.string	"unsigned char"
.LASF77:
	.string	"resmove"
.LASF114:
	.string	"proof.c"
.LASF106:
	.string	"nodecount2"
.LASF48:
	.string	"set_proof_and_disproof_numbers"
.LASF104:
	.string	"hash_history"
.LASF51:
	.string	"update_ancestors"
.LASF11:
	.string	"__time_t"
.LASF78:
	.string	"board"
.LASF61:
	.string	"legal"
.LASF58:
	.string	"proofnumberscan"
.LASF6:
	.string	"signed char"
.LASF25:
	.string	"expanded"
.LASF3:
	.string	"short unsigned int"
.LASF108:
	.string	"iters"
.LASF29:
	.string	"children"
.LASF79:
	.string	"white_to_move"
.LASF40:
	.string	"num_moves"
.LASF107:
	.string	"frees"
.LASF10:
	.string	"xbool"
.LASF57:
	.string	"oldparent"
.LASF88:
	.string	"pieces"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
