	.file	"com_vanilla.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# com_vanilla.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	neighbor,8,8
	.comm	n_gathers,4,4
	.globl	initialize_machine
	.type	initialize_machine, @function
initialize_machine:
.LFB2:
	.file 1 "com_vanilla.c"
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
	.loc 1 96 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initialize_machine, .-initialize_machine
	.globl	make_nn_gathers
	.type	make_nn_gathers, @function
make_nn_gathers:
.LFB3:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 114 0
	movl	$8, %esi	#,
	movl	$8, %edi	#,
	call	calloc	#
	movq	%rax, neighbor(%rip)	# neighbor.0, neighbor
	.loc 1 115 0
	movl	$0, n_gathers(%rip)	#, n_gathers
	.loc 1 117 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L3	#
.L4:
	.loc 1 118 0 discriminator 2
	leaq	-4(%rbp), %rax	#, tmp65
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp65,
	movl	$neighbor_coords_special, %edi	#,
	call	make_gather	#
	.loc 1 117 0 discriminator 2
	movl	-4(%rbp), %eax	# i, i.1
	addl	$1, %eax	#, i.2
	movl	%eax, -4(%rbp)	# i.2, i
.L3:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, i.3
	cmpl	$3, %eax	#, i.3
	jle	.L4	#,
	.loc 1 123 0 is_stmt 1
	movq	neighbor(%rip), %rax	# neighbor, neighbor.4
	movq	%rax, %rdi	# neighbor.4,
	call	sort_eight_special	#
	.loc 1 124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	make_nn_gathers, .-make_nn_gathers
	.globl	sort_eight_neighborlists
	.type	sort_eight_neighborlists, @function
sort_eight_neighborlists:
.LFB4:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# index, index
	.loc 1 132 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.5
	movl	-4(%rbp), %edx	# index, tmp63
	movslq	%edx, %rdx	# tmp63, D.5925
	salq	$3, %rdx	#, D.5925
	addq	%rdx, %rax	# D.5925, D.5926
	movq	%rax, %rdi	# D.5926,
	call	sort_eight_special	#
	.loc 1 133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sort_eight_neighborlists, .-sort_eight_neighborlists
	.globl	sort_eight_special
	.type	sort_eight_special, @function
sort_eight_special:
.LFB5:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -80(%rbp)	# pt, pt
	.loc 1 141 0
	movl	$0, %ebx	#, i
	jmp	.L7	#
.L8:
	.loc 1 141 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# i, D.5927
	leaq	0(,%rax,8), %rdx	#, D.5927
	movq	-80(%rbp), %rax	# pt, tmp76
	addq	%rdx, %rax	# D.5927, D.5928
	movq	(%rax), %rdx	# *_7, D.5929
	movslq	%ebx, %rax	# i, tmp77
	movq	%rdx, -72(%rbp,%rax,8)	# D.5929, tt
	addl	$1, %ebx	#, i
.L7:
	.loc 1 141 0 discriminator 1
	cmpl	$7, %ebx	#, i
	jle	.L8	#,
	.loc 1 142 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L9	#
.L10:
	.loc 1 142 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# i, D.5927
	leaq	0(,%rax,8), %rdx	#, D.5927
	movq	-80(%rbp), %rax	# pt, tmp78
	addq	%rax, %rdx	# tmp78, D.5928
	leal	(%rbx,%rbx), %eax	#, D.5930
	cltq
	movq	-72(%rbp,%rax,8), %rax	# tt, D.5929
	movq	%rax, (%rdx)	# D.5929, *_13
	movl	$7, %eax	#, tmp80
	subl	%ebx, %eax	# i, D.5930
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5927
	movq	-80(%rbp), %rax	# pt, tmp81
	addq	%rax, %rdx	# tmp81, D.5928
	leal	(%rbx,%rbx), %eax	#, D.5930
	addl	$1, %eax	#, D.5930
	cltq
	movq	-72(%rbp,%rax,8), %rax	# tt, D.5929
	movq	%rax, (%rdx)	# D.5929, *_19
	addl	$1, %ebx	#, i
.L9:
	.loc 1 142 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L10	#,
	.loc 1 143 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sort_eight_special, .-sort_eight_special
	.section	.rodata
.LC0:
	.string	"BOTCH: bad direction"
	.text
	.globl	neighbor_coords_special
	.type	neighbor_coords_special, @function
neighbor_coords_special:
.LFB6:
	.loc 1 154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# z, z
	movl	%ecx, -32(%rbp)	# t, t
	movq	%r8, -40(%rbp)	# dirpt, dirpt
	movl	%r9d, -44(%rbp)	# fb, fb
	.loc 1 156 0
	cmpl	$1, -44(%rbp)	#, fb
	jne	.L12	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dirpt, tmp93
	movl	(%rax), %eax	# *dirpt_3(D), iftmp.6
	jmp	.L13	#
.L12:
	.loc 1 156 0 discriminator 2
	movq	-40(%rbp), %rax	# dirpt, tmp94
	movl	(%rax), %eax	# *dirpt_3(D), D.5931
	movl	$7, %edx	#, tmp95
	subl	%eax, %edx	# D.5931, iftmp.6
	movl	%edx, %eax	# iftmp.6, iftmp.6
.L13:
	.loc 1 156 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.6, dir
	.loc 1 157 0 is_stmt 1 discriminator 3
	movq	16(%rbp), %rax	# x2p, tmp96
	movl	-20(%rbp), %edx	# x, tmp97
	movl	%edx, (%rax)	# tmp97, *x2p_8(D)
	movq	24(%rbp), %rax	# y2p, tmp98
	movl	-24(%rbp), %edx	# y, tmp99
	movl	%edx, (%rax)	# tmp99, *y2p_10(D)
	movq	32(%rbp), %rax	# z2p, tmp100
	movl	-28(%rbp), %edx	# z, tmp101
	movl	%edx, (%rax)	# tmp101, *z2p_12(D)
	movq	40(%rbp), %rax	# t2p, tmp102
	movl	-32(%rbp), %edx	# t, tmp103
	movl	%edx, (%rax)	# tmp103, *t2p_14(D)
	.loc 1 158 0 discriminator 3
	cmpl	$7, -4(%rbp)	#, dir
	ja	.L14	#,
	movl	-4(%rbp), %eax	# dir, tmp104
	movq	.L16(,%rax,8), %rax	#, tmp105
	jmp	*%rax	# tmp105
	.section	.rodata
	.align 8
	.align 4
.L16:
	.quad	.L15
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.text
.L15:
	.loc 1 159 0
	movl	-20(%rbp), %eax	# x, tmp106
	addl	$1, %eax	#, D.5931
	movl	nx(%rip), %ecx	# nx, nx.7
	cltd
	idivl	%ecx	# nx.7
	movq	16(%rbp), %rax	# x2p, tmp109
	movl	%edx, (%rax)	# D.5931, *x2p_8(D)
	jmp	.L11	#
.L23:
	.loc 1 160 0
	movl	nx(%rip), %edx	# nx, nx.8
	movl	-20(%rbp), %eax	# x, tmp110
	addl	%edx, %eax	# nx.8, D.5931
	subl	$1, %eax	#, D.5931
	movl	nx(%rip), %ecx	# nx, nx.9
	cltd
	idivl	%ecx	# nx.9
	movq	16(%rbp), %rax	# x2p, tmp113
	movl	%edx, (%rax)	# D.5931, *x2p_8(D)
	jmp	.L11	#
.L17:
	.loc 1 161 0
	movl	-24(%rbp), %eax	# y, tmp114
	addl	$1, %eax	#, D.5931
	movl	ny(%rip), %ecx	# ny, ny.10
	cltd
	idivl	%ecx	# ny.10
	movq	24(%rbp), %rax	# y2p, tmp117
	movl	%edx, (%rax)	# D.5931, *y2p_10(D)
	jmp	.L11	#
.L22:
	.loc 1 162 0
	movl	ny(%rip), %edx	# ny, ny.11
	movl	-24(%rbp), %eax	# y, tmp118
	addl	%edx, %eax	# ny.11, D.5931
	subl	$1, %eax	#, D.5931
	movl	ny(%rip), %ecx	# ny, ny.12
	cltd
	idivl	%ecx	# ny.12
	movq	24(%rbp), %rax	# y2p, tmp121
	movl	%edx, (%rax)	# D.5931, *y2p_10(D)
	jmp	.L11	#
.L18:
	.loc 1 163 0
	movl	-28(%rbp), %eax	# z, tmp122
	addl	$1, %eax	#, D.5931
	movl	nz(%rip), %ecx	# nz, nz.13
	cltd
	idivl	%ecx	# nz.13
	movq	32(%rbp), %rax	# z2p, tmp125
	movl	%edx, (%rax)	# D.5931, *z2p_12(D)
	jmp	.L11	#
.L21:
	.loc 1 164 0
	movl	nz(%rip), %edx	# nz, nz.14
	movl	-28(%rbp), %eax	# z, tmp126
	addl	%edx, %eax	# nz.14, D.5931
	subl	$1, %eax	#, D.5931
	movl	nz(%rip), %ecx	# nz, nz.15
	cltd
	idivl	%ecx	# nz.15
	movq	32(%rbp), %rax	# z2p, tmp129
	movl	%edx, (%rax)	# D.5931, *z2p_12(D)
	jmp	.L11	#
.L19:
	.loc 1 165 0
	movl	-32(%rbp), %eax	# t, tmp130
	addl	$1, %eax	#, D.5931
	movl	nt(%rip), %ecx	# nt, nt.16
	cltd
	idivl	%ecx	# nt.16
	movq	40(%rbp), %rax	# t2p, tmp133
	movl	%edx, (%rax)	# D.5931, *t2p_14(D)
	jmp	.L11	#
.L20:
	.loc 1 166 0
	movl	nt(%rip), %edx	# nt, nt.17
	movl	-32(%rbp), %eax	# t, tmp134
	addl	%edx, %eax	# nt.17, D.5931
	subl	$1, %eax	#, D.5931
	movl	nt(%rip), %ecx	# nt, nt.18
	cltd
	idivl	%ecx	# nt.18
	movq	40(%rbp), %rax	# t2p, tmp137
	movl	%edx, (%rax)	# D.5931, *t2p_14(D)
	jmp	.L11	#
.L14:
	.loc 1 167 0
	movl	$.LC0, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	exit	#
.L11:
	.loc 1 169 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	neighbor_coords_special, .-neighbor_coords_special
	.section	.rodata
	.align 8
.LC1:
	.string	"Too many gathers! change MAX_GATHERS"
	.align 8
.LC2:
	.string	"NODE %d: no room for neighbor vector\n"
	.align 8
.LC3:
	.string	"DUMMY! Your gather mapping does not stay in lattice"
	.align 8
.LC4:
	.string	"It mapped %d %d %d %d to %d %d %d %d\n"
	.align 8
.LC5:
	.string	"DUMMY! Your gather mapping does not obey claimed parity"
	.align 8
.LC6:
	.string	"DUMMY! Your gather mapping is not its own inverse"
	.align 8
.LC7:
	.string	"It's square mapped %d %d %d %d to %d %d %d %d\n"
	.text
	.globl	make_gather
	.type	make_gather, @function
make_gather:
.LFB7:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)	# func, func
	movq	%rsi, -96(%rbp)	# args, args
	movl	%edx, -100(%rbp)	# inverse, inverse
	movl	%ecx, -104(%rbp)	# want_even_odd, want_even_odd
	movl	%r8d, -108(%rbp)	# parity_conserve, parity_conserve
	.loc 1 204 0
	cmpl	$1, -100(%rbp)	#, inverse
	jne	.L26	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.19
	addl	$2, %eax	#, n_gathers.20
	movl	%eax, n_gathers(%rip)	# n_gathers.20, n_gathers
	jmp	.L27	#
.L26:
	.loc 1 205 0 is_stmt 1
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.21
	addl	$1, %eax	#, n_gathers.22
	movl	%eax, n_gathers(%rip)	# n_gathers.22, n_gathers
.L27:
	.loc 1 206 0
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.23
	cmpl	$32, %eax	#, n_gathers.23
	jle	.L28	#,
	.loc 1 207 0
	movl	this_node(%rip), %eax	# this_node, this_node.24
	testl	%eax, %eax	# this_node.24
	jne	.L29	#,
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	puts	#
.L29:
	.loc 1 208 0 is_stmt 1
	movl	$1, %edi	#,
	call	exit	#
.L28:
	.loc 1 212 0
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.25
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5934
	movq	neighbor(%rip), %rax	# neighbor, neighbor.26
	movq	%rdx, %rsi	# D.5934,
	movq	%rax, %rdi	# neighbor.26,
	call	realloc	#
	movq	%rax, neighbor(%rip)	# neighbor.27, neighbor
	.loc 1 213 0
	cmpl	$1, -100(%rbp)	#, inverse
	jne	.L30	#,
	.loc 1 214 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.28
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.29
	movslq	%edx, %rdx	# n_gathers.29, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$16, %rdx	#, D.5935
	leaq	(%rax,%rdx), %rbx	#, D.5936
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.30
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5934,
	call	calloc	#
	movq	%rax, (%rbx)	# D.5937, *_26
	.loc 1 215 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.31
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.32
	movslq	%edx, %rdx	# n_gathers.32, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$16, %rdx	#, D.5935
	addq	%rdx, %rax	# D.5935, D.5936
	movq	(%rax), %rax	# *_35, D.5938
	testq	%rax, %rax	# D.5938
	jne	.L31	#,
	.loc 1 216 0
	movl	this_node(%rip), %eax	# this_node, this_node.33
	movl	%eax, %esi	# this_node.33,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 217 0
	movl	$1, %edi	#,
	call	terminate	#
.L31:
	.loc 1 219 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.34
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.35
	movslq	%edx, %rdx	# n_gathers.35, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$8, %rdx	#, D.5935
	leaq	(%rax,%rdx), %rbx	#, D.5936
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.36
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5934,
	call	calloc	#
	movq	%rax, (%rbx)	# D.5937, *_43
	.loc 1 220 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.37
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.38
	movslq	%edx, %rdx	# n_gathers.38, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$8, %rdx	#, D.5935
	addq	%rdx, %rax	# D.5935, D.5936
	movq	(%rax), %rax	# *_52, D.5938
	testq	%rax, %rax	# D.5938
	jne	.L32	#,
	.loc 1 221 0
	movl	this_node(%rip), %eax	# this_node, this_node.39
	movl	%eax, %esi	# this_node.39,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 222 0
	movl	$1, %edi	#,
	call	terminate	#
.L32:
	.loc 1 224 0
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.40
	subl	$2, %eax	#, tmp258
	movl	%eax, -36(%rbp)	# tmp258, dir
	jmp	.L33	#
.L30:
	.loc 1 227 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.41
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.42
	movslq	%edx, %rdx	# n_gathers.42, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$8, %rdx	#, D.5935
	leaq	(%rax,%rdx), %rbx	#, D.5936
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.43
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5934,
	call	calloc	#
	movq	%rax, (%rbx)	# D.5937, *_62
	.loc 1 228 0
	movq	neighbor(%rip), %rax	# neighbor, neighbor.44
	movl	n_gathers(%rip), %edx	# n_gathers, n_gathers.45
	movslq	%edx, %rdx	# n_gathers.45, D.5934
	salq	$3, %rdx	#, D.5934
	subq	$8, %rdx	#, D.5935
	addq	%rdx, %rax	# D.5935, D.5936
	movq	(%rax), %rax	# *_71, D.5938
	testq	%rax, %rax	# D.5938
	jne	.L34	#,
	.loc 1 229 0
	movl	this_node(%rip), %eax	# this_node, this_node.46
	movl	%eax, %esi	# this_node.46,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 230 0
	movl	$1, %edi	#,
	call	terminate	#
.L34:
	.loc 1 232 0
	movl	n_gathers(%rip), %eax	# n_gathers, n_gathers.47
	subl	$1, %eax	#, tmp260
	movl	%eax, -36(%rbp)	# tmp260, dir
.L33:
	.loc 1 238 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L35	#
.L46:
	.loc 1 240 0
	movzwl	6(%rbx), %eax	# s_4->t, D.5939
	movswl	%ax, %ecx	# D.5939, D.5933
	movzwl	4(%rbx), %eax	# s_4->z, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movzwl	2(%rbx), %eax	# s_4->y, D.5939
	movswl	%ax, %esi	# D.5939, D.5933
	movzwl	(%rbx), %eax	# s_4->x, D.5939
	movswl	%ax, %edi	# D.5939, D.5933
	movq	-96(%rbp), %r8	# args, tmp261
	leaq	-56(%rbp), %rax	#, tmp262
	movq	%rax, 24(%rsp)	# tmp262,
	leaq	-60(%rbp), %rax	#, tmp263
	movq	%rax, 16(%rsp)	# tmp263,
	leaq	-64(%rbp), %rax	#, tmp264
	movq	%rax, 8(%rsp)	# tmp264,
	leaq	-68(%rbp), %rax	#, tmp265
	movq	%rax, (%rsp)	# tmp265,
	movq	-88(%rbp), %rax	# func, tmp266
	movl	$1, %r9d	#,
	call	*%rax	# tmp266
	.loc 1 241 0
	movl	-68(%rbp), %edx	# x, x.48
	movl	-64(%rbp), %eax	# y, y.49
	addl	%eax, %edx	# y.49, D.5933
	movl	-60(%rbp), %eax	# z, z.50
	addl	%eax, %edx	# z.50, D.5933
	movl	-56(%rbp), %eax	# t, t.51
	addl	%eax, %edx	# t.51, D.5933
	movl	%edx, %eax	# D.5933, tmp267
	sarl	$31, %eax	#, tmp267
	shrl	$31, %eax	#, tmp268
	addl	%eax, %edx	# tmp268, tmp269
	andl	$1, %edx	#, tmp270
	subl	%eax, %edx	# tmp268, tmp271
	movl	%edx, %eax	# tmp271, tmp271
	movl	%eax, %r13d	# tmp271, k
	.loc 1 243 0
	movl	-68(%rbp), %eax	# x, x.52
	testl	%eax, %eax	# x.52
	js	.L36	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# y, y.53
	testl	%eax, %eax	# y.53
	js	.L36	#,
	movl	-60(%rbp), %eax	# z, z.54
	testl	%eax, %eax	# z.54
	js	.L36	#,
	movl	-56(%rbp), %eax	# t, t.55
	testl	%eax, %eax	# t.55
	js	.L36	#,
	movl	-68(%rbp), %edx	# x, x.56
	movl	nx(%rip), %eax	# nx, nx.57
	cmpl	%eax, %edx	# nx.57, x.56
	jge	.L36	#,
	movl	-64(%rbp), %edx	# y, y.58
	movl	ny(%rip), %eax	# ny, ny.59
	cmpl	%eax, %edx	# ny.59, y.58
	jge	.L36	#,
	movl	-60(%rbp), %edx	# z, z.60
	movl	nz(%rip), %eax	# nz, nz.61
	cmpl	%eax, %edx	# nz.61, z.60
	jge	.L36	#,
	movl	-56(%rbp), %edx	# t, t.62
	movl	nt(%rip), %eax	# nt, nt.63
	cmpl	%eax, %edx	# nt.63, t.62
	jl	.L37	#,
.L36:
	.loc 1 244 0 is_stmt 1
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 245 0
	movl	-56(%rbp), %r8d	# t, t.64
	movl	-60(%rbp), %edi	# z, z.65
	movl	-64(%rbp), %esi	# y, y.66
	movl	-68(%rbp), %r9d	# x, x.67
	.loc 1 246 0
	movzwl	6(%rbx), %eax	# s_4->t, D.5939
	.loc 1 245 0
	movswl	%ax, %r10d	# D.5939, D.5933
	.loc 1 246 0
	movzwl	4(%rbx), %eax	# s_4->z, D.5939
	.loc 1 245 0
	movswl	%ax, %ecx	# D.5939, D.5933
	.loc 1 246 0
	movzwl	2(%rbx), %eax	# s_4->y, D.5939
	.loc 1 245 0
	movswl	%ax, %edx	# D.5939, D.5933
	.loc 1 246 0
	movzwl	(%rbx), %eax	# s_4->x, D.5939
	.loc 1 245 0
	cwtl
	movl	%r8d, 16(%rsp)	# t.64,
	movl	%edi, 8(%rsp)	# z.65,
	movl	%esi, (%rsp)	# y.66,
	movl	%r10d, %r8d	# D.5933,
	movl	%eax, %esi	# D.5933,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 247 0
	movl	$1, %edi	#,
	call	terminate	#
.L37:
	.loc 1 249 0
	cmpl	$0, -108(%rbp)	#, parity_conserve
	jne	.L38	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# k
	jne	.L39	#,
	.loc 1 250 0 is_stmt 1
	movzbl	8(%rbx), %eax	# s_4->parity, D.5940
	cmpb	$1, %al	#, D.5940
	je	.L40	#,
.L39:
	.loc 1 250 0 is_stmt 0 discriminator 1
	cmpl	$1, %r13d	#, k
	jne	.L38	#,
	movzbl	8(%rbx), %eax	# s_4->parity, D.5940
	cmpb	$2, %al	#, D.5940
	je	.L40	#,
.L38:
	.loc 1 252 0 is_stmt 1
	cmpl	$1, -108(%rbp)	#, parity_conserve
	jne	.L41	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# k
	jne	.L42	#,
	.loc 1 253 0 is_stmt 1
	movzbl	8(%rbx), %eax	# s_4->parity, D.5940
	cmpb	$2, %al	#, D.5940
	je	.L40	#,
.L42:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cmpl	$1, %r13d	#, k
	jne	.L41	#,
	movzbl	8(%rbx), %eax	# s_4->parity, D.5940
	cmpb	$1, %al	#, D.5940
	jne	.L41	#,
.L40:
	.loc 1 259 0 is_stmt 1
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 260 0
	movl	-56(%rbp), %r8d	# t, t.68
	movl	-60(%rbp), %edi	# z, z.69
	movl	-64(%rbp), %esi	# y, y.70
	movl	-68(%rbp), %r9d	# x, x.71
	.loc 1 261 0
	movzwl	6(%rbx), %eax	# s_4->t, D.5939
	.loc 1 260 0
	movswl	%ax, %r10d	# D.5939, D.5933
	.loc 1 261 0
	movzwl	4(%rbx), %eax	# s_4->z, D.5939
	.loc 1 260 0
	movswl	%ax, %ecx	# D.5939, D.5933
	.loc 1 261 0
	movzwl	2(%rbx), %eax	# s_4->y, D.5939
	.loc 1 260 0
	movswl	%ax, %edx	# D.5939, D.5933
	.loc 1 261 0
	movzwl	(%rbx), %eax	# s_4->x, D.5939
	.loc 1 260 0
	cwtl
	movl	%r8d, 16(%rsp)	# t.68,
	movl	%edi, 8(%rsp)	# z.69,
	movl	%esi, (%rsp)	# y.70,
	movl	%r10d, %r8d	# D.5933,
	movl	%eax, %esi	# D.5933,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 262 0
	movl	$1, %edi	#,
	call	terminate	#
.L41:
	.loc 1 264 0
	cmpl	$0, -100(%rbp)	#, inverse
	jne	.L43	#,
.LBB2:
	.loc 1 266 0
	movl	-56(%rbp), %ecx	# t, t.72
	movl	-60(%rbp), %edx	# z, z.73
	movl	-64(%rbp), %esi	# y, y.74
	movl	-68(%rbp), %edi	# x, x.75
	movq	-96(%rbp), %r8	# args, tmp272
	leaq	-40(%rbp), %rax	#, tmp273
	movq	%rax, 24(%rsp)	# tmp273,
	leaq	-44(%rbp), %rax	#, tmp274
	movq	%rax, 16(%rsp)	# tmp274,
	leaq	-48(%rbp), %rax	#, tmp275
	movq	%rax, 8(%rsp)	# tmp275,
	leaq	-52(%rbp), %rax	#, tmp276
	movq	%rax, (%rsp)	# tmp276,
	movq	-88(%rbp), %rax	# func, tmp277
	movl	$1, %r9d	#,
	call	*%rax	# tmp277
	.loc 1 267 0
	movzwl	(%rbx), %eax	# s_4->x, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movl	-52(%rbp), %eax	# x2, x2.76
	cmpl	%eax, %edx	# x2.76, D.5933
	jne	.L44	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movzwl	2(%rbx), %eax	# s_4->y, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movl	-48(%rbp), %eax	# y2, y2.77
	cmpl	%eax, %edx	# y2.77, D.5933
	jne	.L44	#,
	movzwl	4(%rbx), %eax	# s_4->z, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movl	-44(%rbp), %eax	# z2, z2.78
	cmpl	%eax, %edx	# z2.78, D.5933
	jne	.L44	#,
	movzwl	6(%rbx), %eax	# s_4->t, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movl	-40(%rbp), %eax	# t2, t2.79
	cmpl	%eax, %edx	# t2.79, D.5933
	je	.L43	#,
.L44:
	.loc 1 268 0 is_stmt 1
	movl	$.LC6, %edi	#,
	call	puts	#
	.loc 1 270 0
	movl	-40(%rbp), %r8d	# t2, t2.80
	movl	-44(%rbp), %edi	# z2, z2.81
	movl	-48(%rbp), %esi	# y2, y2.82
	movl	-52(%rbp), %r9d	# x2, x2.83
	.loc 1 271 0
	movzwl	6(%rbx), %eax	# s_4->t, D.5939
	.loc 1 270 0
	movswl	%ax, %r10d	# D.5939, D.5933
	.loc 1 271 0
	movzwl	4(%rbx), %eax	# s_4->z, D.5939
	.loc 1 270 0
	movswl	%ax, %ecx	# D.5939, D.5933
	.loc 1 271 0
	movzwl	2(%rbx), %eax	# s_4->y, D.5939
	.loc 1 270 0
	movswl	%ax, %edx	# D.5939, D.5933
	.loc 1 271 0
	movzwl	(%rbx), %eax	# s_4->x, D.5939
	.loc 1 270 0
	cwtl
	movl	%r8d, 16(%rsp)	# t2.80,
	movl	%edi, 8(%rsp)	# z2.81,
	movl	%esi, (%rsp)	# y2.82,
	movl	%r10d, %r8d	# D.5933,
	movl	%eax, %esi	# D.5933,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 272 0
	movl	$1, %edi	#,
	call	terminate	#
.L43:
.LBE2:
	.loc 1 238 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L35:
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.84
	cmpl	%eax, %r12d	# sites_on_node.84, i
	jl	.L46	#,
	.loc 1 345 0 is_stmt 1
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L47	#
.L48:
	.loc 1 347 0 discriminator 2
	movzwl	6(%rbx), %eax	# s_5->t, D.5939
	movswl	%ax, %ecx	# D.5939, D.5933
	movzwl	4(%rbx), %eax	# s_5->z, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movzwl	2(%rbx), %eax	# s_5->y, D.5939
	movswl	%ax, %esi	# D.5939, D.5933
	movzwl	(%rbx), %eax	# s_5->x, D.5939
	movswl	%ax, %edi	# D.5939, D.5933
	movq	-96(%rbp), %r8	# args, tmp278
	leaq	-56(%rbp), %rax	#, tmp279
	movq	%rax, 24(%rsp)	# tmp279,
	leaq	-60(%rbp), %rax	#, tmp280
	movq	%rax, 16(%rsp)	# tmp280,
	leaq	-64(%rbp), %rax	#, tmp281
	movq	%rax, 8(%rsp)	# tmp281,
	leaq	-68(%rbp), %rax	#, tmp282
	movq	%rax, (%rsp)	# tmp282,
	movq	-88(%rbp), %rax	# func, tmp283
	movl	$1, %r9d	#,
	call	*%rax	# tmp283
	.loc 1 349 0 discriminator 2
	movq	neighbor(%rip), %rax	# neighbor, neighbor.85
	movl	-36(%rbp), %edx	# dir, tmp284
	movslq	%edx, %rdx	# tmp284, D.5934
	salq	$3, %rdx	#, D.5934
	addq	%rdx, %rax	# D.5934, D.5936
	movq	(%rax), %rax	# *_182, D.5938
	movslq	%r12d, %rdx	# i, D.5934
	salq	$2, %rdx	#, D.5934
	leaq	(%rax,%rdx), %r13	#, D.5938
	movl	-56(%rbp), %ecx	# t, t.86
	movl	-60(%rbp), %edx	# z, z.87
	movl	-64(%rbp), %esi	# y, y.88
	movl	-68(%rbp), %eax	# x, x.89
	movl	%eax, %edi	# x.89,
	call	node_index	#
	movl	%eax, 0(%r13)	# D.5933, *_186
	.loc 1 345 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L47:
	.loc 1 345 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.90
	cmpl	%eax, %r12d	# sites_on_node.90, i
	jl	.L48	#,
	.loc 1 352 0 is_stmt 1
	cmpl	$1, -100(%rbp)	#, inverse
	je	.L49	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# dir, D.5933
	jmp	.L53	#
.L49:
	.loc 1 359 0 is_stmt 1
	addl	$1, -36(%rbp)	#, dir
	.loc 1 363 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L51	#
.L52:
	.loc 1 365 0 discriminator 2
	movzwl	6(%rbx), %eax	# s_6->t, D.5939
	movswl	%ax, %ecx	# D.5939, D.5933
	movzwl	4(%rbx), %eax	# s_6->z, D.5939
	movswl	%ax, %edx	# D.5939, D.5933
	movzwl	2(%rbx), %eax	# s_6->y, D.5939
	movswl	%ax, %esi	# D.5939, D.5933
	movzwl	(%rbx), %eax	# s_6->x, D.5939
	movswl	%ax, %edi	# D.5939, D.5933
	movq	-96(%rbp), %r8	# args, tmp285
	leaq	-56(%rbp), %rax	#, tmp286
	movq	%rax, 24(%rsp)	# tmp286,
	leaq	-60(%rbp), %rax	#, tmp287
	movq	%rax, 16(%rsp)	# tmp287,
	leaq	-64(%rbp), %rax	#, tmp288
	movq	%rax, 8(%rsp)	# tmp288,
	leaq	-68(%rbp), %rax	#, tmp289
	movq	%rax, (%rsp)	# tmp289,
	movq	-88(%rbp), %rax	# func, tmp290
	movl	$-1, %r9d	#,
	call	*%rax	# tmp290
	.loc 1 368 0 discriminator 2
	movq	neighbor(%rip), %rax	# neighbor, neighbor.91
	movl	-36(%rbp), %edx	# dir, tmp291
	movslq	%edx, %rdx	# tmp291, D.5934
	salq	$3, %rdx	#, D.5934
	addq	%rdx, %rax	# D.5934, D.5936
	movq	(%rax), %rax	# *_210, D.5938
	movslq	%r12d, %rdx	# i, D.5934
	salq	$2, %rdx	#, D.5934
	leaq	(%rax,%rdx), %r13	#, D.5938
	movl	-56(%rbp), %ecx	# t, t.92
	movl	-60(%rbp), %edx	# z, z.93
	movl	-64(%rbp), %esi	# y, y.94
	movl	-68(%rbp), %eax	# x, x.95
	movl	%eax, %edi	# x.95,
	call	node_index	#
	movl	%eax, 0(%r13)	# D.5933, *_214
	.loc 1 363 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L51:
	.loc 1 363 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.96
	cmpl	%eax, %r12d	# sites_on_node.96, i
	jl	.L52	#,
	.loc 1 371 0 is_stmt 1
	movl	-36(%rbp), %eax	# dir, tmp292
	subl	$1, %eax	#, D.5933
.L53:
	.loc 1 372 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	make_gather, .-make_gather
	.globl	neighbor_coords
	.type	neighbor_coords, @function
neighbor_coords:
.LFB8:
	.loc 1 381 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
	movl	%edx, -12(%rbp)	# z, z
	movl	%ecx, -16(%rbp)	# t, t
	movl	%r8d, -20(%rbp)	# dir, dir
	movq	%r9, -32(%rbp)	# x2p, x2p
	.loc 1 382 0
	movq	-32(%rbp), %rax	# x2p, tmp91
	movl	-4(%rbp), %edx	# x, tmp92
	movl	%edx, (%rax)	# tmp92, *x2p_1(D)
	movq	16(%rbp), %rax	# y2p, tmp93
	movl	-8(%rbp), %edx	# y, tmp94
	movl	%edx, (%rax)	# tmp94, *y2p_3(D)
	movq	24(%rbp), %rax	# z2p, tmp95
	movl	-12(%rbp), %edx	# z, tmp96
	movl	%edx, (%rax)	# tmp96, *z2p_5(D)
	movq	32(%rbp), %rax	# t2p, tmp97
	movl	-16(%rbp), %edx	# t, tmp98
	movl	%edx, (%rax)	# tmp98, *t2p_7(D)
	.loc 1 383 0
	cmpl	$7, -20(%rbp)	#, dir
	ja	.L55	#,
	movl	-20(%rbp), %eax	# dir, tmp99
	movq	.L57(,%rax,8), %rax	#, tmp100
	jmp	*%rax	# tmp100
	.section	.rodata
	.align 8
	.align 4
.L57:
	.quad	.L56
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.text
.L56:
	.loc 1 384 0
	movl	-4(%rbp), %eax	# x, tmp101
	addl	$1, %eax	#, D.5948
	movl	nx(%rip), %ecx	# nx, nx.97
	cltd
	idivl	%ecx	# nx.97
	movq	-32(%rbp), %rax	# x2p, tmp104
	movl	%edx, (%rax)	# D.5948, *x2p_1(D)
	jmp	.L54	#
.L64:
	.loc 1 385 0
	movl	nx(%rip), %edx	# nx, nx.98
	movl	-4(%rbp), %eax	# x, tmp105
	addl	%edx, %eax	# nx.98, D.5948
	subl	$1, %eax	#, D.5948
	movl	nx(%rip), %ecx	# nx, nx.99
	cltd
	idivl	%ecx	# nx.99
	movq	-32(%rbp), %rax	# x2p, tmp108
	movl	%edx, (%rax)	# D.5948, *x2p_1(D)
	jmp	.L54	#
.L58:
	.loc 1 386 0
	movl	-8(%rbp), %eax	# y, tmp109
	addl	$1, %eax	#, D.5948
	movl	ny(%rip), %ecx	# ny, ny.100
	cltd
	idivl	%ecx	# ny.100
	movq	16(%rbp), %rax	# y2p, tmp112
	movl	%edx, (%rax)	# D.5948, *y2p_3(D)
	jmp	.L54	#
.L63:
	.loc 1 387 0
	movl	ny(%rip), %edx	# ny, ny.101
	movl	-8(%rbp), %eax	# y, tmp113
	addl	%edx, %eax	# ny.101, D.5948
	subl	$1, %eax	#, D.5948
	movl	ny(%rip), %ecx	# ny, ny.102
	cltd
	idivl	%ecx	# ny.102
	movq	16(%rbp), %rax	# y2p, tmp116
	movl	%edx, (%rax)	# D.5948, *y2p_3(D)
	jmp	.L54	#
.L59:
	.loc 1 388 0
	movl	-12(%rbp), %eax	# z, tmp117
	addl	$1, %eax	#, D.5948
	movl	nz(%rip), %ecx	# nz, nz.103
	cltd
	idivl	%ecx	# nz.103
	movq	24(%rbp), %rax	# z2p, tmp120
	movl	%edx, (%rax)	# D.5948, *z2p_5(D)
	jmp	.L54	#
.L62:
	.loc 1 389 0
	movl	nz(%rip), %edx	# nz, nz.104
	movl	-12(%rbp), %eax	# z, tmp121
	addl	%edx, %eax	# nz.104, D.5948
	subl	$1, %eax	#, D.5948
	movl	nz(%rip), %ecx	# nz, nz.105
	cltd
	idivl	%ecx	# nz.105
	movq	24(%rbp), %rax	# z2p, tmp124
	movl	%edx, (%rax)	# D.5948, *z2p_5(D)
	jmp	.L54	#
.L60:
	.loc 1 390 0
	movl	-16(%rbp), %eax	# t, tmp125
	addl	$1, %eax	#, D.5948
	movl	nt(%rip), %ecx	# nt, nt.106
	cltd
	idivl	%ecx	# nt.106
	movq	32(%rbp), %rax	# t2p, tmp128
	movl	%edx, (%rax)	# D.5948, *t2p_7(D)
	jmp	.L54	#
.L61:
	.loc 1 391 0
	movl	nt(%rip), %edx	# nt, nt.107
	movl	-16(%rbp), %eax	# t, tmp129
	addl	%edx, %eax	# nt.107, D.5948
	subl	$1, %eax	#, D.5948
	movl	nt(%rip), %ecx	# nt, nt.108
	cltd
	idivl	%ecx	# nt.108
	movq	32(%rbp), %rax	# t2p, tmp132
	movl	%edx, (%rax)	# D.5948, *t2p_7(D)
	jmp	.L54	#
.L55:
	.loc 1 392 0
	movl	$.LC0, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	exit	#
.L54:
	.loc 1 394 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	neighbor_coords, .-neighbor_coords
	.globl	start_handlers
	.type	start_handlers, @function
start_handlers:
.LFB9:
	.loc 1 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 402 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	start_handlers, .-start_handlers
	.globl	start_gather
	.type	start_gather, @function
start_gather:
.LFB10:
	.loc 1 469 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# field, field
	movl	%esi, -16(%rbp)	# size, size
	movl	%edx, -20(%rbp)	# index, index
	movl	%ecx, -24(%rbp)	# parity, parity
	movq	%r8, -32(%rbp)	# dest, dest
	.loc 1 476 0
	movl	-24(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L69	#,
	cmpl	$3, %eax	#, parity
	je	.L70	#,
	cmpl	$1, %eax	#, parity
	je	.L71	#,
	jmp	.L68	#
.L69:
	.loc 1 478 0
	movl	$0, %ebx	#, j
	jmp	.L72	#
.L73:
	.loc 1 479 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5949
	leaq	0(,%rax,8), %rdx	#, D.5949
	movq	-32(%rbp), %rax	# dest, tmp124
	addq	%rdx, %rax	# D.5949, D.5950
	movq	lattice(%rip), %rdx	# lattice, lattice.109
	movq	neighbor(%rip), %rcx	# neighbor, neighbor.110
	movl	-20(%rbp), %esi	# index, tmp125
	movslq	%esi, %rsi	# tmp125, D.5949
	salq	$3, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5951
	movq	(%rcx), %rcx	# *_20, D.5952
	movslq	%ebx, %rsi	# j, D.5949
	salq	$2, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5952
	movl	(%rcx), %ecx	# *_24, D.5953
	movslq	%ecx, %rcx	# D.5953, D.5949
	movq	%rcx, %rsi	# D.5949, D.5949
	salq	$11, %rsi	#, D.5949
	movl	-12(%rbp), %ecx	# field, tmp126
	movslq	%ecx, %rcx	# tmp126, D.5954
	addq	%rsi, %rcx	# D.5949, D.5954
	addq	%rcx, %rdx	# D.5954, D.5955
	movq	%rdx, (%rax)	# D.5955, *_14
	.loc 1 478 0 discriminator 2
	addl	$1, %ebx	#, j
.L72:
	.loc 1 478 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.111
	cmpl	%eax, %ebx	# even_sites_on_node.111, j
	jl	.L73	#,
	.loc 1 481 0 is_stmt 1
	jmp	.L68	#
.L71:
	.loc 1 483 0
	movl	even_sites_on_node(%rip), %ebx	# even_sites_on_node, j
	jmp	.L74	#
.L75:
	.loc 1 484 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5949
	leaq	0(,%rax,8), %rdx	#, D.5949
	movq	-32(%rbp), %rax	# dest, tmp127
	addq	%rdx, %rax	# D.5949, D.5950
	movq	lattice(%rip), %rdx	# lattice, lattice.113
	movq	neighbor(%rip), %rcx	# neighbor, neighbor.114
	movl	-20(%rbp), %esi	# index, tmp128
	movslq	%esi, %rsi	# tmp128, D.5949
	salq	$3, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5951
	movq	(%rcx), %rcx	# *_47, D.5952
	movslq	%ebx, %rsi	# j, D.5949
	salq	$2, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5952
	movl	(%rcx), %ecx	# *_51, D.5953
	movslq	%ecx, %rcx	# D.5953, D.5949
	movq	%rcx, %rsi	# D.5949, D.5949
	salq	$11, %rsi	#, D.5949
	movl	-12(%rbp), %ecx	# field, tmp129
	movslq	%ecx, %rcx	# tmp129, D.5954
	addq	%rsi, %rcx	# D.5949, D.5954
	addq	%rcx, %rdx	# D.5954, D.5955
	movq	%rdx, (%rax)	# D.5955, *_42
	.loc 1 483 0 discriminator 2
	addl	$1, %ebx	#, j
.L74:
	.loc 1 483 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.115
	cmpl	%eax, %ebx	# sites_on_node.115, j
	jl	.L75	#,
	.loc 1 486 0 is_stmt 1
	jmp	.L68	#
.L70:
	.loc 1 488 0
	movl	$0, %ebx	#, j
	jmp	.L76	#
.L77:
	.loc 1 489 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5949
	leaq	0(,%rax,8), %rdx	#, D.5949
	movq	-32(%rbp), %rax	# dest, tmp130
	addq	%rdx, %rax	# D.5949, D.5950
	movq	lattice(%rip), %rdx	# lattice, lattice.116
	movq	neighbor(%rip), %rcx	# neighbor, neighbor.117
	movl	-20(%rbp), %esi	# index, tmp131
	movslq	%esi, %rsi	# tmp131, D.5949
	salq	$3, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5951
	movq	(%rcx), %rcx	# *_70, D.5952
	movslq	%ebx, %rsi	# j, D.5949
	salq	$2, %rsi	#, D.5949
	addq	%rsi, %rcx	# D.5949, D.5952
	movl	(%rcx), %ecx	# *_74, D.5953
	movslq	%ecx, %rcx	# D.5953, D.5949
	movq	%rcx, %rsi	# D.5949, D.5949
	salq	$11, %rsi	#, D.5949
	movl	-12(%rbp), %ecx	# field, tmp132
	movslq	%ecx, %rcx	# tmp132, D.5954
	addq	%rsi, %rcx	# D.5949, D.5954
	addq	%rcx, %rdx	# D.5954, D.5955
	movq	%rdx, (%rax)	# D.5955, *_65
	.loc 1 488 0 discriminator 2
	addl	$1, %ebx	#, j
.L76:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.118
	cmpl	%eax, %ebx	# sites_on_node.118, j
	jl	.L77	#,
	.loc 1 491 0 is_stmt 1
	nop
.L68:
	.loc 1 495 0
	movl	$0, %eax	#, D.5956
	.loc 1 496 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	start_gather, .-start_gather
	.globl	restart_gather
	.type	restart_gather, @function
restart_gather:
.LFB11:
	.loc 1 547 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# field, field
	movl	%esi, -8(%rbp)	# size, size
	movl	%edx, -12(%rbp)	# index, index
	movl	%ecx, -16(%rbp)	# parity, parity
	movq	%r8, -24(%rbp)	# dest, dest
	movq	%r9, -32(%rbp)	# mbuf, mbuf
	.loc 1 549 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	restart_gather, .-restart_gather
	.globl	start_gather_from_temp
	.type	start_gather_from_temp, @function
start_gather_from_temp:
.LFB12:
	.loc 1 562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# field, field
	movl	%esi, -20(%rbp)	# size, size
	movl	%edx, -24(%rbp)	# index, index
	movl	%ecx, -28(%rbp)	# parity, parity
	movq	%r8, -40(%rbp)	# dest, dest
	.loc 1 569 0
	movl	-28(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L82	#,
	cmpl	$3, %eax	#, parity
	je	.L83	#,
	cmpl	$1, %eax	#, parity
	je	.L84	#,
	jmp	.L81	#
.L82:
	.loc 1 571 0
	movl	$0, %ebx	#, j
	jmp	.L85	#
.L86:
	.loc 1 572 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5957
	leaq	0(,%rax,8), %rdx	#, D.5957
	movq	-40(%rbp), %rax	# dest, tmp115
	addq	%rax, %rdx	# tmp115, D.5958
	movq	neighbor(%rip), %rax	# neighbor, neighbor.119
	movl	-24(%rbp), %ecx	# index, tmp116
	movslq	%ecx, %rcx	# tmp116, D.5957
	salq	$3, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5959
	movq	(%rax), %rax	# *_19, D.5960
	movslq	%ebx, %rcx	# j, D.5957
	salq	$2, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5960
	movl	(%rax), %eax	# *_23, D.5961
	imull	-20(%rbp), %eax	# size, D.5961
	movslq	%eax, %rcx	# D.5961, D.5962
	movq	-16(%rbp), %rax	# field, tmp117
	addq	%rcx, %rax	# D.5962, D.5963
	movq	%rax, (%rdx)	# D.5963, *_14
	.loc 1 571 0 discriminator 2
	addl	$1, %ebx	#, j
.L85:
	.loc 1 571 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.120
	cmpl	%eax, %ebx	# even_sites_on_node.120, j
	jl	.L86	#,
	.loc 1 574 0 is_stmt 1
	jmp	.L81	#
.L84:
	.loc 1 576 0
	movl	even_sites_on_node(%rip), %ebx	# even_sites_on_node, j
	jmp	.L87	#
.L88:
	.loc 1 577 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5957
	leaq	0(,%rax,8), %rdx	#, D.5957
	movq	-40(%rbp), %rax	# dest, tmp118
	addq	%rax, %rdx	# tmp118, D.5958
	movq	neighbor(%rip), %rax	# neighbor, neighbor.122
	movl	-24(%rbp), %ecx	# index, tmp119
	movslq	%ecx, %rcx	# tmp119, D.5957
	salq	$3, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5959
	movq	(%rax), %rax	# *_44, D.5960
	movslq	%ebx, %rcx	# j, D.5957
	salq	$2, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5960
	movl	(%rax), %eax	# *_48, D.5961
	imull	-20(%rbp), %eax	# size, D.5961
	movslq	%eax, %rcx	# D.5961, D.5962
	movq	-16(%rbp), %rax	# field, tmp120
	addq	%rcx, %rax	# D.5962, D.5963
	movq	%rax, (%rdx)	# D.5963, *_40
	.loc 1 576 0 discriminator 2
	addl	$1, %ebx	#, j
.L87:
	.loc 1 576 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.123
	cmpl	%eax, %ebx	# sites_on_node.123, j
	jl	.L88	#,
	.loc 1 579 0 is_stmt 1
	jmp	.L81	#
.L83:
	.loc 1 581 0
	movl	$0, %ebx	#, j
	jmp	.L89	#
.L90:
	.loc 1 582 0 discriminator 2
	movslq	%ebx, %rax	# j, D.5957
	leaq	0(,%rax,8), %rdx	#, D.5957
	movq	-40(%rbp), %rax	# dest, tmp121
	addq	%rax, %rdx	# tmp121, D.5958
	movq	neighbor(%rip), %rax	# neighbor, neighbor.124
	movl	-24(%rbp), %ecx	# index, tmp122
	movslq	%ecx, %rcx	# tmp122, D.5957
	salq	$3, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5959
	movq	(%rax), %rax	# *_64, D.5960
	movslq	%ebx, %rcx	# j, D.5957
	salq	$2, %rcx	#, D.5957
	addq	%rcx, %rax	# D.5957, D.5960
	movl	(%rax), %eax	# *_68, D.5961
	imull	-20(%rbp), %eax	# size, D.5961
	movslq	%eax, %rcx	# D.5961, D.5962
	movq	-16(%rbp), %rax	# field, tmp123
	addq	%rcx, %rax	# D.5962, D.5963
	movq	%rax, (%rdx)	# D.5963, *_60
	.loc 1 581 0 discriminator 2
	addl	$1, %ebx	#, j
.L89:
	.loc 1 581 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.125
	cmpl	%eax, %ebx	# sites_on_node.125, j
	jl	.L90	#,
	.loc 1 584 0 is_stmt 1
	nop
.L81:
	.loc 1 588 0
	movl	$0, %eax	#, D.5964
	.loc 1 589 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	start_gather_from_temp, .-start_gather_from_temp
	.globl	restart_gather_from_temp
	.type	restart_gather_from_temp, @function
restart_gather_from_temp:
.LFB13:
	.loc 1 640 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# field, field
	movl	%esi, -12(%rbp)	# size, size
	movl	%edx, -16(%rbp)	# index, index
	movl	%ecx, -20(%rbp)	# parity, parity
	movq	%r8, -32(%rbp)	# dest, dest
	movq	%r9, -40(%rbp)	# mbuf, mbuf
	.loc 1 642 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	restart_gather_from_temp, .-restart_gather_from_temp
	.globl	wait_gather
	.type	wait_gather, @function
wait_gather:
.LFB14:
	.loc 1 644 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mbuf, mbuf
	.loc 1 645 0
	nop
	.loc 1 646 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	wait_gather, .-wait_gather
	.globl	cleanup_gather
	.type	cleanup_gather, @function
cleanup_gather:
.LFB15:
	.loc 1 649 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mbuf, mbuf
	.loc 1 650 0
	nop
	.loc 1 651 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	cleanup_gather, .-cleanup_gather
	.globl	g_gather_flag
	.bss
	.align 4
	.type	g_gather_flag, @object
	.size	g_gather_flag, 4
g_gather_flag:
	.zero	4
	.section	.rodata
	.align 8
.LC8:
	.string	"ERROR: node %d, two general_gathers() at once!\n"
	.text
	.globl	start_general_gather
	.type	start_general_gather, @function
start_general_gather:
.LFB16:
	.loc 1 697 0
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
	subq	$48, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -52(%rbp)	# field, field
	movl	%esi, -56(%rbp)	# size, size
	movq	%rdx, -64(%rbp)	# displacement, displacement
	movl	%ecx, -68(%rbp)	# parity, parity
	movq	%r8, -80(%rbp)	# dest, dest
	.loc 1 705 0
	movl	g_gather_flag(%rip), %eax	# g_gather_flag, g_gather_flag.126
	testl	%eax, %eax	# g_gather_flag.126
	je	.L98	#,
	.loc 1 706 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	%eax, %edx	#, D.5965
	movq	stderr(%rip), %rax	# stderr, stderr.127
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# stderr.127,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 708 0
	movl	$1, %edi	#,
	call	exit	#
.L98:
	.loc 1 714 0
	cmpl	$1, -68(%rbp)	#, parity
	jne	.L99	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.128
	jmp	.L100	#
.L99:
	.loc 1 714 0 discriminator 2
	movl	$0, %eax	#, iftmp.128
.L100:
	.loc 1 714 0 discriminator 3
	movl	%eax, %r12d	# iftmp.128, i
	movq	lattice(%rip), %rax	# lattice, lattice.129
	movslq	%r12d, %rdx	# i, D.5966
	salq	$11, %rdx	#, D.5966
	leaq	(%rax,%rdx), %rbx	#, s
	jmp	.L101	#
.L112:
	.loc 1 715 0 is_stmt 1
	movq	-64(%rbp), %rax	# displacement, tmp123
	movl	(%rax), %eax	# *displacement_22(D), D.5965
	testl	%eax, %eax	# D.5965
	je	.L102	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	movzwl	(%rbx), %eax	# s_2->x, D.5967
	movswl	%ax, %edx	# D.5967, D.5965
	movq	-64(%rbp), %rax	# displacement, tmp124
	movl	(%rax), %eax	# *displacement_22(D), D.5965
	addl	%eax, %edx	# D.5965, D.5965
	movl	nx(%rip), %eax	# nx, nx.130
	addl	%edx, %eax	# D.5965, D.5965
	movl	nx(%rip), %ecx	# nx, nx.131
	cltd
	idivl	%ecx	# nx.131
	movl	%edx, -48(%rbp)	# tmp125, tx
	jmp	.L103	#
.L102:
	.loc 1 716 0 is_stmt 1
	movzwl	(%rbx), %eax	# s_2->x, D.5967
	cwtl
	movl	%eax, -48(%rbp)	# tmp127, tx
.L103:
	.loc 1 717 0
	movq	-64(%rbp), %rax	# displacement, tmp128
	addq	$4, %rax	#, D.5968
	movl	(%rax), %eax	# *_34, D.5965
	testl	%eax, %eax	# D.5965
	je	.L104	#,
	.loc 1 717 0 is_stmt 0 discriminator 1
	movzwl	2(%rbx), %eax	# s_2->y, D.5967
	movswl	%ax, %edx	# D.5967, D.5965
	movq	-64(%rbp), %rax	# displacement, tmp129
	addq	$4, %rax	#, D.5968
	movl	(%rax), %eax	# *_38, D.5965
	addl	%eax, %edx	# D.5965, D.5965
	movl	ny(%rip), %eax	# ny, ny.132
	addl	%edx, %eax	# D.5965, D.5965
	movl	ny(%rip), %ecx	# ny, ny.133
	cltd
	idivl	%ecx	# ny.133
	movl	%edx, -44(%rbp)	# tmp130, ty
	jmp	.L105	#
.L104:
	.loc 1 718 0 is_stmt 1
	movzwl	2(%rbx), %eax	# s_2->y, D.5967
	cwtl
	movl	%eax, -44(%rbp)	# tmp132, ty
.L105:
	.loc 1 719 0
	movq	-64(%rbp), %rax	# displacement, tmp133
	addq	$8, %rax	#, D.5968
	movl	(%rax), %eax	# *_47, D.5965
	testl	%eax, %eax	# D.5965
	je	.L106	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	movzwl	4(%rbx), %eax	# s_2->z, D.5967
	movswl	%ax, %edx	# D.5967, D.5965
	movq	-64(%rbp), %rax	# displacement, tmp134
	addq	$8, %rax	#, D.5968
	movl	(%rax), %eax	# *_51, D.5965
	addl	%eax, %edx	# D.5965, D.5965
	movl	nz(%rip), %eax	# nz, nz.134
	addl	%edx, %eax	# D.5965, D.5965
	movl	nz(%rip), %ecx	# nz, nz.135
	cltd
	idivl	%ecx	# nz.135
	movl	%edx, -40(%rbp)	# tmp135, tz
	jmp	.L107	#
.L106:
	.loc 1 720 0 is_stmt 1
	movzwl	4(%rbx), %eax	# s_2->z, D.5967
	cwtl
	movl	%eax, -40(%rbp)	# tmp137, tz
.L107:
	.loc 1 721 0
	movq	-64(%rbp), %rax	# displacement, tmp138
	addq	$12, %rax	#, D.5968
	movl	(%rax), %eax	# *_60, D.5965
	testl	%eax, %eax	# D.5965
	je	.L108	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	movzwl	6(%rbx), %eax	# s_2->t, D.5967
	movswl	%ax, %edx	# D.5967, D.5965
	movq	-64(%rbp), %rax	# displacement, tmp139
	addq	$12, %rax	#, D.5968
	movl	(%rax), %eax	# *_64, D.5965
	addl	%eax, %edx	# D.5965, D.5965
	movl	nt(%rip), %eax	# nt, nt.136
	addl	%edx, %eax	# D.5965, D.5965
	movl	nt(%rip), %ecx	# nt, nt.137
	cltd
	idivl	%ecx	# nt.137
	movl	%edx, -36(%rbp)	# tmp140, tt
	jmp	.L109	#
.L108:
	.loc 1 722 0 is_stmt 1
	movzwl	6(%rbx), %eax	# s_2->t, D.5967
	cwtl
	movl	%eax, -36(%rbp)	# tmp142, tt
.L109:
	.loc 1 723 0
	movslq	%r12d, %rax	# i, D.5966
	leaq	0(,%rax,8), %rdx	#, D.5966
	movq	-80(%rbp), %rax	# dest, tmp143
	leaq	(%rdx,%rax), %r13	#, D.5969
	movq	lattice(%rip), %r14	# lattice, lattice.138
	movl	-36(%rbp), %ecx	# tt, tmp144
	movl	-40(%rbp), %edx	# tz, tmp145
	movl	-44(%rbp), %esi	# ty, tmp146
	movl	-48(%rbp), %eax	# tx, tmp147
	movl	%eax, %edi	# tmp147,
	call	node_index	#
	cltq
	salq	$11, %rax	#, D.5966
	movq	%rax, %rdx	# D.5966, D.5966
	movl	-52(%rbp), %eax	# field, tmp148
	cltq
	addq	%rdx, %rax	# D.5966, D.5970
	addq	%r14, %rax	# lattice.138, D.5971
	movq	%rax, 0(%r13)	# D.5971, *_76
	.loc 1 714 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L101:
	.loc 1 714 0 is_stmt 0 discriminator 1
	cmpl	$2, -68(%rbp)	#, parity
	jne	.L110	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.139
	jmp	.L111	#
.L110:
	.loc 1 714 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.139
.L111:
	.loc 1 714 0 discriminator 3
	cmpl	%r12d, %eax	# i, iftmp.139
	jg	.L112	#,
	.loc 1 727 0 is_stmt 1
	movl	$1, g_gather_flag(%rip)	#, g_gather_flag
	.loc 1 729 0
	movl	$0, %eax	#, D.5972
	.loc 1 730 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	start_general_gather, .-start_general_gather
	.globl	wait_general_gather
	.type	wait_general_gather, @function
wait_general_gather:
.LFB17:
	.loc 1 794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mbuf, mbuf
	.loc 1 795 0
	movl	$0, g_gather_flag(%rip)	#, g_gather_flag
	.loc 1 796 0
	nop
	.loc 1 797 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	wait_general_gather, .-wait_general_gather
	.globl	cleanup_general_gather
	.type	cleanup_general_gather, @function
cleanup_general_gather:
.LFB18:
	.loc 1 800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mbuf, mbuf
	.loc 1 801 0
	nop
	.loc 1 802 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cleanup_general_gather, .-cleanup_general_gather
	.globl	field_pointer_at_coordinates
	.type	field_pointer_at_coordinates, @function
field_pointer_at_coordinates:
.LFB19:
	.loc 1 824 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# field, field
	movl	%esi, -24(%rbp)	# size, size
	movl	%edx, -28(%rbp)	# x, x
	movl	%ecx, -32(%rbp)	# y, y
	movl	%r8d, -36(%rbp)	# z, z
	movl	%r9d, -40(%rbp)	# t, t
	.loc 1 826 0
	movl	-40(%rbp), %ecx	# t, tmp66
	movl	-36(%rbp), %edx	# z, tmp67
	movl	-32(%rbp), %esi	# y, tmp68
	movl	-28(%rbp), %eax	# x, tmp69
	movl	%eax, %edi	# tmp69,
	call	node_index	#
	movl	%eax, -4(%rbp)	# tmp70, index
	.loc 1 828 0
	movq	lattice(%rip), %rax	# lattice, lattice.140
	movl	-4(%rbp), %edx	# index, tmp71
	movslq	%edx, %rdx	# tmp71, D.5974
	movq	%rdx, %rcx	# D.5974, D.5974
	salq	$11, %rcx	#, D.5974
	movl	-20(%rbp), %edx	# field, tmp72
	movslq	%edx, %rdx	# tmp72, D.5975
	addq	%rcx, %rdx	# D.5974, D.5975
	addq	%rdx, %rax	# D.5975, D.5976
	.loc 1 829 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	field_pointer_at_coordinates, .-field_pointer_at_coordinates
	.globl	field_pointer_at_direction
	.type	field_pointer_at_direction, @function
field_pointer_at_direction:
.LFB20:
	.loc 1 842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# field, field
	movl	%esi, -8(%rbp)	# size, size
	movq	%rdx, -16(%rbp)	# s, s
	movl	%ecx, -20(%rbp)	# direction, direction
	.loc 1 843 0
	movl	-4(%rbp), %eax	# field, tmp78
	movslq	%eax, %rdx	# tmp78, D.5977
	movq	neighbor(%rip), %rax	# neighbor, neighbor.141
	movl	-20(%rbp), %ecx	# direction, tmp79
	movslq	%ecx, %rcx	# tmp79, D.5978
	salq	$3, %rcx	#, D.5978
	addq	%rcx, %rax	# D.5978, D.5979
	movq	(%rax), %rax	# *_7, D.5980
	movq	-16(%rbp), %rsi	# s, s.142
	movq	lattice(%rip), %rcx	# lattice, lattice.143
	subq	%rcx, %rsi	# lattice.144, D.5981
	movq	%rsi, %rcx	# D.5981, D.5981
	sarq	$11, %rcx	#, tmp80
	salq	$2, %rcx	#, D.5978
	addq	%rcx, %rax	# D.5978, D.5980
	movl	(%rax), %eax	# *_17, D.5982
	cltq
	addq	%rdx, %rax	# D.5977, D.5977
	.loc 1 844 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	field_pointer_at_direction, .-field_pointer_at_direction
	.globl	cleanup_field_pointer
	.type	cleanup_field_pointer, @function
cleanup_field_pointer:
.LFB21:
	.loc 1 849 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buf, buf
	.loc 1 850 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	cleanup_field_pointer, .-cleanup_field_pointer
	.section	.rodata
.LC9:
	.string	"BOTCH: this never happens"
	.text
	.globl	send_field
	.type	send_field, @function
send_field:
.LFB22:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# size, size
	movl	%edx, -16(%rbp)	# tonode, tonode
	.loc 1 855 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 856 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	send_field, .-send_field
	.globl	get_field
	.type	get_field, @function
get_field:
.LFB23:
	.loc 1 858 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# size, size
	.loc 1 859 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 860 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_field, .-get_field
	.data
	.align 16
	.type	name, @object
	.size	name, 17
name:
	.string	"Scalar processor"
	.text
	.globl	machine_type
	.type	machine_type, @function
machine_type:
.LFB24:
	.loc 1 867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 868 0
	movl	$name, %eax	#, D.5985
	.loc 1 869 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	machine_type, .-machine_type
	.globl	mynode
	.type	mynode, @function
mynode:
.LFB25:
	.loc 1 872 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 872 0
	movl	$0, %eax	#, D.5986
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	mynode, .-mynode
	.globl	numnodes
	.type	numnodes, @function
numnodes:
.LFB26:
	.loc 1 875 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 875 0
	movl	$1, %eax	#, D.5987
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	numnodes, .-numnodes
	.globl	g_sync
	.type	g_sync, @function
g_sync:
.LFB27:
	.loc 1 878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 879 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	g_sync, .-g_sync
	.globl	g_floatsum
	.type	g_floatsum, @function
g_floatsum:
.LFB28:
	.loc 1 882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fpt, fpt
	.loc 1 883 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	g_floatsum, .-g_floatsum
	.globl	g_doublesum
	.type	g_doublesum, @function
g_doublesum:
.LFB29:
	.loc 1 886 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dpt, dpt
	.loc 1 887 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	g_doublesum, .-g_doublesum
	.globl	g_vecdoublesum
	.type	g_vecdoublesum, @function
g_vecdoublesum:
.LFB30:
	.loc 1 890 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dpt, dpt
	movl	%esi, -12(%rbp)	# ndoubles, ndoubles
	.loc 1 891 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	g_vecdoublesum, .-g_vecdoublesum
	.globl	g_complexsum
	.type	g_complexsum, @function
g_complexsum:
.LFB31:
	.loc 1 894 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cpt, cpt
	.loc 1 895 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	g_complexsum, .-g_complexsum
	.globl	g_dcomplexsum
	.type	g_dcomplexsum, @function
g_dcomplexsum:
.LFB32:
	.loc 1 898 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cpt, cpt
	.loc 1 899 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	g_dcomplexsum, .-g_dcomplexsum
	.globl	g_veccomplexsum
	.type	g_veccomplexsum, @function
g_veccomplexsum:
.LFB33:
	.loc 1 902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cpt, cpt
	movl	%esi, -12(%rbp)	# ncomplex, ncomplex
	.loc 1 903 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	g_veccomplexsum, .-g_veccomplexsum
	.globl	g_wvectorsum
	.type	g_wvectorsum, @function
g_wvectorsum:
.LFB34:
	.loc 1 906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# wvpt, wvpt
	.loc 1 907 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	g_wvectorsum, .-g_wvectorsum
	.globl	g_xor32
	.type	g_xor32, @function
g_xor32:
.LFB35:
	.loc 1 910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pt, pt
	.loc 1 911 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	g_xor32, .-g_xor32
	.globl	g_floatmax
	.type	g_floatmax, @function
g_floatmax:
.LFB36:
	.loc 1 914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fpt, fpt
	.loc 1 915 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	g_floatmax, .-g_floatmax
	.globl	g_doublemax
	.type	g_doublemax, @function
g_doublemax:
.LFB37:
	.loc 1 918 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dpt, dpt
	.loc 1 919 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	g_doublemax, .-g_doublemax
	.globl	broadcast_float
	.type	broadcast_float, @function
broadcast_float:
.LFB38:
	.loc 1 922 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fpt, fpt
	.loc 1 923 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	broadcast_float, .-broadcast_float
	.globl	broadcast_double
	.type	broadcast_double, @function
broadcast_double:
.LFB39:
	.loc 1 926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dpt, dpt
	.loc 1 927 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	broadcast_double, .-broadcast_double
	.globl	broadcast_complex
	.type	broadcast_complex, @function
broadcast_complex:
.LFB40:
	.loc 1 930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cpt, cpt
	.loc 1 931 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	broadcast_complex, .-broadcast_complex
	.globl	broadcast_dcomplex
	.type	broadcast_dcomplex, @function
broadcast_dcomplex:
.LFB41:
	.loc 1 934 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cpt, cpt
	.loc 1 935 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	broadcast_dcomplex, .-broadcast_dcomplex
	.globl	broadcast_bytes
	.type	broadcast_bytes, @function
broadcast_bytes:
.LFB42:
	.loc 1 938 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# size, size
	.loc 1 939 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	broadcast_bytes, .-broadcast_bytes
	.globl	send_integer
	.type	send_integer, @function
send_integer:
.LFB43:
	.loc 1 943 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# tonode, tonode
	movq	%rsi, -16(%rbp)	# address, address
	.loc 1 944 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 945 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	send_integer, .-send_integer
	.globl	receive_integer
	.type	receive_integer, @function
receive_integer:
.LFB44:
	.loc 1 949 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# address, address
	.loc 1 950 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 951 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	receive_integer, .-receive_integer
	.globl	dclock
	.type	dclock, @function
dclock:
.LFB45:
	.loc 1 956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 959 0
	movq	$0, -8(%rbp)	#, fine
	.loc 1 960 0
	cvtsi2sdq	-8(%rbp), %xmm0	# fine, D.5988
	movsd	.LC10(%rip), %xmm1	#, tmp62
	divsd	%xmm1, %xmm0	# tmp62, D.5988
	movsd	%xmm0, -24(%rbp)	# D.5988, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 961 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	dclock, .-dclock
	.section	.rodata
.LC11:
	.string	"%s: %s\n"
	.text
	.globl	time_stamp
	.type	time_stamp, @function
time_stamp:
.LFB46:
	.loc 1 964 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msg, msg
	.loc 1 967 0
	movl	$0, %eax	#,
	call	mynode	#
	testl	%eax, %eax	# D.5990
	jne	.L151	#,
	.loc 1 968 0
	leaq	-8(%rbp), %rax	#, tmp61
	movq	%rax, %rdi	# tmp61,
	call	time	#
	.loc 1 969 0
	leaq	-8(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	ctime	#
	movq	%rax, %rdx	#, D.5991
	movq	-24(%rbp), %rax	# msg, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L151:
	.loc 1 971 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	time_stamp, .-time_stamp
	.section	.rodata
.LC12:
	.string	"termination"
.LC13:
	.string	"Termination: status = %d\n"
	.text
	.globl	terminate
	.type	terminate, @function
terminate:
.LFB47:
	.loc 1 974 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# status, status
	.loc 1 975 0
	movl	$.LC12, %edi	#,
	call	time_stamp	#
	.loc 1 976 0
	movl	-4(%rbp), %eax	# status, tmp61
	movl	%eax, %esi	# tmp61,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 977 0
	movq	stdout(%rip), %rax	# stdout, stdout.145
	movq	%rax, %rdi	# stdout.145,
	call	fflush	#
	movq	stderr(%rip), %rax	# stderr, stderr.146
	movq	%rax, %rdi	# stderr.146,
	call	fflush	#
	.loc 1 978 0
	movl	-4(%rbp), %eax	# status, tmp62
	movl	%eax, %edi	# tmp62,
	call	exit	#
	.cfi_endproc
.LFE47:
	.size	terminate, .-terminate
	.globl	normal_exit
	.type	normal_exit, @function
normal_exit:
.LFB48:
	.loc 1 982 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# status, status
	.loc 1 984 0
	movl	-4(%rbp), %eax	# status, tmp59
	movl	%eax, %edi	# tmp59,
	call	exit	#
	.cfi_endproc
.LFE48:
	.size	normal_exit, .-normal_exit
	.section	.rodata
	.align 8
.LC10:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/time.h"
	.file 6 "complex.h"
	.file 7 "random.h"
	.file 8 "su3.h"
	.file 9 "int32type.h"
	.file 10 "macros.h"
	.file 11 "./lattice.h"
	.file 12 "comdefs.h"
	.file 13 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x14f1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF169
	.byte	0x1
	.long	.LASF170
	.long	.LASF171
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
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfc
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfd
	.long	0x9a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfe
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xff
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x100
	.long	0x9a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x101
	.long	0x9a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x102
	.long	0x9a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x103
	.long	0x9a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x105
	.long	0x9a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x106
	.long	0x9a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x107
	.long	0x9a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x98
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x98
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x131
	.long	0x98
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x132
	.long	0x98
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF172
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
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
	.long	0xa0
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0xa0
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x4b
	.long	0x8d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x49
	.long	0x2e0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x4a
	.long	0x2b8
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x4b
	.long	0x2b8
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x4c
	.long	0x2bf
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x4d
	.long	0x30c
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x4e
	.long	0x2b8
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x4f
	.long	0x2b8
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x50
	.long	0x2eb
	.uleb128 0xd
	.byte	0x58
	.byte	0x7
	.byte	0x6
	.long	0x39d
	.uleb128 0xe
	.string	"r0"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0xa
	.long	0x2b8
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.byte	0xb
	.long	0x317
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x3bb
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x3bb
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2e0
	.long	0x3d1
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.byte	0xe
	.long	0x3a8
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3ef
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3ef
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2e0
	.long	0x3ff
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x8
	.byte	0xf
	.long	0x3dc
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x467
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x2e0
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x2e0
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x2e0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x2b8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x2b8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x11
	.long	0x2b8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x11
	.long	0x2b8
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x11
	.long	0x40a
	.uleb128 0xd
	.byte	0xc0
	.byte	0x8
	.byte	0x2e
	.long	0x485
	.uleb128 0xe
	.string	"d"
	.byte	0x8
	.byte	0x2e
	.long	0x485
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x3ff
	.long	0x495
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x2e
	.long	0x472
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.byte	0x20
	.long	0x4d
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.byte	0x2a
	.long	0x62
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0xf
	.value	0x800
	.byte	0xb
	.byte	0x1f
	.long	0x5d3
	.uleb128 0xe
	.string	"x"
	.byte	0xb
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0xb
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0xb
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0xb
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF71
	.byte	0xb
	.byte	0x24
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0xb
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF73
	.byte	0xb
	.byte	0x29
	.long	0x39d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0xb
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF75
	.byte	0xb
	.byte	0x32
	.long	0x5d3
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0xb
	.byte	0x3e
	.long	0x5e3
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF76
	.byte	0xb
	.byte	0x42
	.long	0x5f3
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0xb
	.byte	0x45
	.long	0x3ff
	.value	0x410
	.uleb128 0x11
	.long	.LASF77
	.byte	0xb
	.byte	0x46
	.long	0x3ff
	.value	0x440
	.uleb128 0x11
	.long	.LASF78
	.byte	0xb
	.byte	0x47
	.long	0x3ff
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0xb
	.byte	0x48
	.long	0x3ff
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0xb
	.byte	0x49
	.long	0x3ff
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF79
	.byte	0xb
	.byte	0x4a
	.long	0x3ff
	.value	0x500
	.uleb128 0x11
	.long	.LASF80
	.byte	0xb
	.byte	0x5d
	.long	0x485
	.value	0x530
	.uleb128 0x11
	.long	.LASF81
	.byte	0xb
	.byte	0x5f
	.long	0x485
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xb
	.byte	0x60
	.long	0x3ff
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF83
	.byte	0xb
	.byte	0x62
	.long	0x3d1
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF84
	.byte	0xb
	.byte	0x62
	.long	0x3d1
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x3d1
	.long	0x5e3
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x467
	.long	0x5f3
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2b8
	.long	0x603
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xb
	.byte	0x63
	.long	0x4bc
	.uleb128 0xd
	.byte	0x18
	.byte	0xc
	.byte	0x35
	.long	0x647
	.uleb128 0x8
	.long	.LASF86
	.byte	0xc
	.byte	0x37
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xc
	.byte	0x39
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF88
	.byte	0xc
	.byte	0x3b
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0xc
	.byte	0x40
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF90
	.byte	0xc
	.byte	0x42
	.long	0x60e
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.byte	0x60
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1
	.byte	0x60
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1
	.byte	0x60
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF104
	.byte	0x1
	.byte	0x66
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x68
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0x69
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.byte	0x83
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x71c
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x83
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF95
	.byte	0x1
	.byte	0x8a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x761
	.uleb128 0x19
	.string	"pt"
	.byte	0x1
	.byte	0x8a
	.long	0x761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"tt"
	.byte	0x1
	.byte	0x8b
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0xb
	.long	0x98
	.long	0x777
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.byte	0x94
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x826
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"z"
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF97
	.byte	0x1
	.byte	0x96
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"fb"
	.byte	0x1
	.byte	0x97
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.string	"x2p"
	.byte	0x1
	.byte	0x98
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"y2p"
	.byte	0x1
	.byte	0x98
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.string	"z2p"
	.byte	0x1
	.byte	0x98
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.string	"t2p"
	.byte	0x1
	.byte	0x98
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.string	"dir"
	.byte	0x1
	.byte	0x9b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.byte	0xaf
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x941
	.uleb128 0x13
	.long	.LASF98
	.byte	0x1
	.byte	0xb0
	.long	0x979
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.long	.LASF99
	.byte	0x1
	.byte	0xb2
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.byte	0xb3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.byte	0xb4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.byte	0xb5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0xbc
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xbd
	.long	0x97f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"dir"
	.byte	0x1
	.byte	0xbe
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"z"
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.string	"x2"
	.byte	0x1
	.value	0x109
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.string	"y2"
	.byte	0x1
	.value	0x109
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"z2"
	.byte	0x1
	.value	0x109
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.string	"t2"
	.byte	0x1
	.value	0x109
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x979
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.uleb128 0x17
	.long	0x292
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x941
	.uleb128 0x6
	.byte	0x8
	.long	0x603
	.uleb128 0x1e
	.long	.LASF103
	.byte	0x1
	.value	0x178
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xa23
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x179
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x179
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"z"
	.byte	0x1
	.value	0x179
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x179
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"dir"
	.byte	0x1
	.value	0x17a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"x2p"
	.byte	0x1
	.value	0x17b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"y2p"
	.byte	0x1
	.value	0x17b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"z2p"
	.byte	0x1
	.value	0x17b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"t2p"
	.byte	0x1
	.value	0x17b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x20
	.long	.LASF105
	.byte	0x1
	.value	0x18f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5f
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.value	0x190
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.uleb128 0x17
	.long	0x62
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF108
	.byte	0x1
	.value	0x1cc
	.long	0xae3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xae3
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x1ce
	.long	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x1cf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.value	0x1d0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x1d2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x1d4
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.value	0x1d7
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x1d8
	.long	0x97f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x647
	.uleb128 0x25
	.long	.LASF112
	.byte	0x1
	.value	0x219
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb62
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x21b
	.long	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x21c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.value	0x21d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x21f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x221
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x222
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.value	0x229
	.long	0xae3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe6
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x22b
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x22c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.value	0x22d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x22f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x231
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.value	0x234
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x235
	.long	0x97f
	.byte	0
	.uleb128 0x25
	.long	.LASF115
	.byte	0x1
	.value	0x276
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5f
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x278
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x279
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.value	0x27a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x27c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x27e
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x27f
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.long	.LASF116
	.byte	0x1
	.value	0x284
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8d
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x284
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF117
	.byte	0x1
	.value	0x289
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbb
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x289
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x2b1
	.long	0xae3
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7e
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x2b3
	.long	0x4ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x2b4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF119
	.byte	0x1
	.value	0x2b5
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x2b6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF111
	.byte	0x1
	.value	0x2b8
	.long	0x4b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x2bb
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x2bc
	.long	0x97f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"tx"
	.byte	0x1
	.value	0x2bd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"ty"
	.byte	0x1
	.value	0x2bd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.string	"tz"
	.byte	0x1
	.value	0x2bd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"tt"
	.byte	0x1
	.value	0x2bd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF120
	.byte	0x1
	.value	0x31a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xdac
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x31a
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF121
	.byte	0x1
	.value	0x320
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xdda
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x320
	.long	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF122
	.byte	0x1
	.value	0x333
	.long	0x9a
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5e
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x335
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x336
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x337
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x337
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"z"
	.byte	0x1
	.value	0x337
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x337
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x339
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x343
	.long	0x9a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xebb
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x345
	.long	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x346
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x347
	.long	0x97f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x348
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF125
	.byte	0x1
	.value	0x351
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xee9
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.value	0x351
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x356
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xf35
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.value	0x356
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x356
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF127
	.byte	0x1
	.value	0x356
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x35a
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xf72
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.value	0x35a
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x35a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF129
	.byte	0x1
	.value	0x363
	.long	0x9a
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF130
	.byte	0x1
	.value	0x368
	.long	0x62
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF131
	.byte	0x1
	.value	0x36b
	.long	0x62
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF173
	.byte	0x1
	.value	0x36e
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF132
	.byte	0x1
	.value	0x372
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1014
	.uleb128 0x1f
	.string	"fpt"
	.byte	0x1
	.value	0x372
	.long	0x1014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b1
	.uleb128 0x25
	.long	.LASF133
	.byte	0x1
	.value	0x376
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1048
	.uleb128 0x1f
	.string	"dpt"
	.byte	0x1
	.value	0x376
	.long	0x1048
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b8
	.uleb128 0x25
	.long	.LASF134
	.byte	0x1
	.value	0x37a
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x108b
	.uleb128 0x1f
	.string	"dpt"
	.byte	0x1
	.value	0x37a
	.long	0x1048
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF135
	.byte	0x1
	.value	0x37a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF136
	.byte	0x1
	.value	0x37e
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b9
	.uleb128 0x1f
	.string	"cpt"
	.byte	0x1
	.value	0x37e
	.long	0x10b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e0
	.uleb128 0x25
	.long	.LASF137
	.byte	0x1
	.value	0x382
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ed
	.uleb128 0x1f
	.string	"cpt"
	.byte	0x1
	.value	0x382
	.long	0x10ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x30c
	.uleb128 0x25
	.long	.LASF138
	.byte	0x1
	.value	0x386
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1130
	.uleb128 0x1f
	.string	"cpt"
	.byte	0x1
	.value	0x386
	.long	0x10b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.value	0x386
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF140
	.byte	0x1
	.value	0x38a
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x115e
	.uleb128 0x23
	.long	.LASF141
	.byte	0x1
	.value	0x38a
	.long	0x115e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x495
	.uleb128 0x25
	.long	.LASF142
	.byte	0x1
	.value	0x38e
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1191
	.uleb128 0x1f
	.string	"pt"
	.byte	0x1
	.value	0x38e
	.long	0x1191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a0
	.uleb128 0x25
	.long	.LASF143
	.byte	0x1
	.value	0x392
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c5
	.uleb128 0x1f
	.string	"fpt"
	.byte	0x1
	.value	0x392
	.long	0x1014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF144
	.byte	0x1
	.value	0x396
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f3
	.uleb128 0x1f
	.string	"dpt"
	.byte	0x1
	.value	0x396
	.long	0x1048
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF145
	.byte	0x1
	.value	0x39a
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1221
	.uleb128 0x1f
	.string	"fpt"
	.byte	0x1
	.value	0x39a
	.long	0x1014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF146
	.byte	0x1
	.value	0x39e
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x124f
	.uleb128 0x1f
	.string	"dpt"
	.byte	0x1
	.value	0x39e
	.long	0x1048
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF147
	.byte	0x1
	.value	0x3a2
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x127d
	.uleb128 0x1f
	.string	"cpt"
	.byte	0x1
	.value	0x3a2
	.long	0x10b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF148
	.byte	0x1
	.value	0x3a6
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ab
	.uleb128 0x1f
	.string	"cpt"
	.byte	0x1
	.value	0x3a6
	.long	0x10ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF149
	.byte	0x1
	.value	0x3aa
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e8
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.value	0x3aa
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x3aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.value	0x3af
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x1325
	.uleb128 0x23
	.long	.LASF127
	.byte	0x1
	.value	0x3af
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF151
	.byte	0x1
	.value	0x3af
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.value	0x3b5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1353
	.uleb128 0x23
	.long	.LASF151
	.byte	0x1
	.value	0x3b5
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF153
	.byte	0x1
	.value	0x3bc
	.long	0x2b8
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1385
	.uleb128 0x27
	.long	.LASF154
	.byte	0x1
	.value	0x3bd
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x1
	.value	0x3c4
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c2
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.value	0x3c4
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF155
	.byte	0x1
	.value	0x3c5
	.long	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x1
	.value	0x3ce
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f0
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.value	0x3ce
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x1
	.value	0x3d6
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x141e
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.value	0x3d6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x142e
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.long	.LASF159
	.byte	0x1
	.value	0x362
	.long	0x141e
	.uleb128 0x9
	.byte	0x3
	.quad	name
	.uleb128 0x2b
	.long	.LASF160
	.byte	0xd
	.byte	0xa9
	.long	0x266
	.uleb128 0x2b
	.long	.LASF161
	.byte	0xd
	.byte	0xaa
	.long	0x266
	.uleb128 0x2c
	.string	"nx"
	.byte	0xb
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"ny"
	.byte	0xb
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"nz"
	.byte	0xb
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"nt"
	.byte	0xb
	.byte	0x74
	.long	0x62
	.uleb128 0x2b
	.long	.LASF162
	.byte	0xb
	.byte	0x87
	.long	0x62
	.uleb128 0x2b
	.long	.LASF163
	.byte	0xb
	.byte	0x88
	.long	0x62
	.uleb128 0x2b
	.long	.LASF164
	.byte	0xb
	.byte	0x8b
	.long	0x62
	.uleb128 0x2b
	.long	.LASF165
	.byte	0xb
	.byte	0x9a
	.long	0x97f
	.uleb128 0x2d
	.long	.LASF166
	.byte	0x1
	.byte	0x5a
	.long	0x14c3
	.uleb128 0x9
	.byte	0x3
	.quad	neighbor
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0x2d
	.long	.LASF167
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	n_gathers
	.uleb128 0x2e
	.long	.LASF168
	.byte	0x1
	.value	0x2ad
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	g_gather_flag
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LASF68:
	.string	"wilson_vector"
.LASF32:
	.string	"_shortbuf"
.LASF126:
	.string	"send_field"
.LASF172:
	.string	"_IO_lock_t"
.LASF76:
	.string	"phase"
.LASF146:
	.string	"broadcast_double"
.LASF171:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF21:
	.string	"_IO_buf_end"
.LASF163:
	.string	"even_sites_on_node"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF170:
	.string	"com_vanilla.c"
.LASF120:
	.string	"wait_general_gather"
.LASF13:
	.string	"_flags"
.LASF75:
	.string	"link"
.LASF25:
	.string	"_markers"
.LASF133:
	.string	"g_doublesum"
.LASF98:
	.string	"func"
.LASF55:
	.string	"double_complex"
.LASF113:
	.string	"mbuf"
.LASF114:
	.string	"start_gather_from_temp"
.LASF67:
	.string	"anti_hermitmat"
.LASF85:
	.string	"site"
.LASF147:
	.string	"broadcast_complex"
.LASF129:
	.string	"machine_type"
.LASF95:
	.string	"sort_eight_special"
.LASF144:
	.string	"g_doublemax"
.LASF46:
	.string	"_pos"
.LASF101:
	.string	"want_even_odd"
.LASF24:
	.string	"_IO_save_end"
.LASF50:
	.string	"float"
.LASF145:
	.string	"broadcast_float"
.LASF127:
	.string	"tonode"
.LASF109:
	.string	"field"
.LASF72:
	.string	"index"
.LASF143:
	.string	"g_floatmax"
.LASF93:
	.string	"initialize_machine"
.LASF104:
	.string	"make_nn_gathers"
.LASF49:
	.string	"long long unsigned int"
.LASF90:
	.string	"msg_tag"
.LASF105:
	.string	"start_handlers"
.LASF84:
	.string	"staple"
.LASF23:
	.string	"_IO_backup_base"
.LASF142:
	.string	"g_xor32"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF121:
	.string	"cleanup_general_gather"
.LASF117:
	.string	"cleanup_gather"
.LASF7:
	.string	"size_t"
.LASF58:
	.string	"ic_state"
.LASF79:
	.string	"g_rand"
.LASF168:
	.string	"g_gather_flag"
.LASF16:
	.string	"_IO_read_base"
.LASF91:
	.string	"argc"
.LASF164:
	.string	"this_node"
.LASF103:
	.string	"neighbor_coords"
.LASF44:
	.string	"_next"
.LASF149:
	.string	"broadcast_bytes"
.LASF97:
	.string	"dirpt"
.LASF71:
	.string	"parity"
.LASF154:
	.string	"fine"
.LASF141:
	.string	"wvpt"
.LASF62:
	.string	"su3_vector"
.LASF137:
	.string	"g_dcomplexsum"
.LASF12:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF123:
	.string	"field_pointer_at_direction"
.LASF88:
	.string	"msg_buf"
.LASF43:
	.string	"_IO_marker"
.LASF173:
	.string	"g_sync"
.LASF14:
	.string	"_IO_read_ptr"
.LASF134:
	.string	"g_vecdoublesum"
.LASF167:
	.string	"n_gathers"
.LASF66:
	.string	"space"
.LASF80:
	.string	"tempvec"
.LASF157:
	.string	"status"
.LASF48:
	.string	"time_t"
.LASF161:
	.string	"stderr"
.LASF118:
	.string	"start_general_gather"
.LASF130:
	.string	"mynode"
.LASF57:
	.string	"addend"
.LASF17:
	.string	"_IO_write_base"
.LASF47:
	.string	"long long int"
.LASF87:
	.string	"msg_size"
.LASF22:
	.string	"_IO_save_base"
.LASF153:
	.string	"dclock"
.LASF89:
	.string	"msg_id"
.LASF140:
	.string	"g_wvectorsum"
.LASF96:
	.string	"neighbor_coords_special"
.LASF59:
	.string	"scale"
.LASF86:
	.string	"msg_node"
.LASF110:
	.string	"size"
.LASF82:
	.string	"templongv1"
.LASF158:
	.string	"normal_exit"
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
.LASF156:
	.string	"terminate"
.LASF31:
	.string	"_vtable_offset"
.LASF99:
	.string	"args"
.LASF73:
	.string	"site_prn"
.LASF92:
	.string	"argv"
.LASF100:
	.string	"inverse"
.LASF166:
	.string	"neighbor"
.LASF65:
	.string	"m22im"
.LASF131:
	.string	"numnodes"
.LASF169:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF135:
	.string	"ndoubles"
.LASF15:
	.string	"_IO_read_end"
.LASF64:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF128:
	.string	"get_field"
.LASF81:
	.string	"templongvec"
.LASF63:
	.string	"m00im"
.LASF125:
	.string	"cleanup_field_pointer"
.LASF162:
	.string	"sites_on_node"
.LASF124:
	.string	"direction"
.LASF69:
	.string	"u_int32type"
.LASF152:
	.string	"receive_integer"
.LASF108:
	.string	"start_gather"
.LASF107:
	.string	"make_gather"
.LASF159:
	.string	"name"
.LASF54:
	.string	"complex"
.LASF52:
	.string	"real"
.LASF56:
	.string	"multiplier"
.LASF112:
	.string	"restart_gather"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF151:
	.string	"address"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF119:
	.string	"displacement"
.LASF165:
	.string	"lattice"
.LASF83:
	.string	"tempmat1"
.LASF53:
	.string	"imag"
.LASF18:
	.string	"_IO_write_ptr"
.LASF70:
	.string	"field_offset"
.LASF116:
	.string	"wait_gather"
.LASF11:
	.string	"__time_t"
.LASF78:
	.string	"cg_p"
.LASF150:
	.string	"send_integer"
.LASF160:
	.string	"stdout"
.LASF148:
	.string	"broadcast_dcomplex"
.LASF60:
	.string	"double_prn"
.LASF155:
	.string	"time_stamp"
.LASF8:
	.string	"__off_t"
.LASF115:
	.string	"restart_gather_from_temp"
.LASF4:
	.string	"signed char"
.LASF132:
	.string	"g_floatsum"
.LASF2:
	.string	"short unsigned int"
.LASF94:
	.string	"sort_eight_neighborlists"
.LASF102:
	.string	"parity_conserve"
.LASF51:
	.string	"double"
.LASF138:
	.string	"g_veccomplexsum"
.LASF122:
	.string	"field_pointer_at_coordinates"
.LASF26:
	.string	"_chain"
.LASF139:
	.string	"ncomplex"
.LASF28:
	.string	"_flags2"
.LASF106:
	.string	"fillfieldrequest"
.LASF30:
	.string	"_cur_column"
.LASF111:
	.string	"dest"
.LASF77:
	.string	"resid"
.LASF136:
	.string	"g_complexsum"
.LASF61:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
.LASF74:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
