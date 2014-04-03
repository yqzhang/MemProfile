	.file	"layout_hyper.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# layout_hyper.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	squaresize,16,16
	.comm	nsquares,16,16
	.section	.rodata
	.align 8
.LC0:
	.string	"LAYOUT = Hypercubes, options = "
.LC1:
	.string	"EVENFIRST,"
	.align 8
.LC2:
	.string	"LAYOUT: Can't lay out this lattice, not enough factors of 2"
	.align 8
.LC3:
	.string	"SORRY, CAN'T LAY OUT THIS LATTICE"
	.text
	.globl	setup_layout
	.type	setup_layout, @function
setup_layout:
.LFB2:
	.file 1 "layout_hyper.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 39 0
	movl	$0, %eax	#,
	call	mynode	#
	testl	%eax, %eax	# D.5116
	jne	.L2	#,
	.loc 1 40 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 41 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 42 0
	movl	$10, %edi	#,
	call	putchar	#
.L2:
	.loc 1 46 0
	movl	nx(%rip), %eax	# nx, nx.0
	movl	%eax, squaresize(%rip)	# nx.0, squaresize
	movl	ny(%rip), %eax	# ny, ny.1
	movl	%eax, squaresize+4(%rip)	# ny.1, squaresize
	.loc 1 47 0
	movl	nz(%rip), %eax	# nz, nz.2
	movl	%eax, squaresize+8(%rip)	# nz.2, squaresize
	movl	nt(%rip), %eax	# nt, nt.3
	movl	%eax, squaresize+12(%rip)	# nt.3, squaresize
	.loc 1 48 0
	movl	$1, nsquares+12(%rip)	#, nsquares
	movl	nsquares+12(%rip), %eax	# nsquares, D.5116
	movl	%eax, nsquares+8(%rip)	# D.5116, nsquares
	movl	nsquares+8(%rip), %eax	# nsquares, D.5116
	movl	%eax, nsquares+4(%rip)	# D.5116, nsquares
	movl	nsquares+4(%rip), %eax	# nsquares, D.5116
	movl	%eax, nsquares(%rip)	# D.5116, nsquares
	.loc 1 50 0
	movl	$1, %r13d	#, i
	.loc 1 51 0
	jmp	.L3	#
.L17:
	.loc 1 55 0
	movl	$1, %r12d	#, j
	movl	$0, %ebx	#, dir
	jmp	.L4	#
.L6:
	.loc 1 56 0
	movslq	%ebx, %rax	# dir, tmp97
	movl	squaresize(,%rax,4), %eax	# squaresize, D.5116
	cmpl	%r12d, %eax	# j, D.5116
	jle	.L5	#,
	.loc 1 56 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# dir, tmp98
	movl	squaresize(,%rax,4), %eax	# squaresize, D.5116
	andl	$1, %eax	#, D.5117
	testl	%eax, %eax	# D.5117
	jne	.L5	#,
	movslq	%ebx, %rax	# dir, tmp99
	movl	squaresize(,%rax,4), %r12d	# squaresize, j
.L5:
	.loc 1 55 0 is_stmt 1
	addl	$1, %ebx	#, dir
.L4:
	.loc 1 55 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L6	#,
	.loc 1 61 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L7	#
.L10:
	.loc 1 62 0
	movslq	%ebx, %rax	# dir, tmp100
	movl	squaresize(,%rax,4), %eax	# squaresize, D.5116
	cmpl	%r12d, %eax	# j, D.5116
	jne	.L8	#,
	.loc 1 62 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# dir, tmp101
	movl	nsquares(,%rax,4), %eax	# nsquares, D.5116
	cmpl	$1, %eax	#, D.5116
	jle	.L8	#,
	jmp	.L9	#
.L8:
	.loc 1 61 0 is_stmt 1
	addl	$1, %ebx	#, dir
.L7:
	.loc 1 61 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L10	#,
.L9:
	.loc 1 63 0 is_stmt 1
	cmpl	$3, %ebx	#, dir
	jle	.L11	#,
	.loc 1 63 0 is_stmt 0 discriminator 1
	movl	$0, %ebx	#, dir
	jmp	.L12	#
.L14:
	.loc 1 64 0 is_stmt 1
	movslq	%ebx, %rax	# dir, tmp102
	movl	squaresize(,%rax,4), %eax	# squaresize, D.5116
	cmpl	%r12d, %eax	# j, D.5116
	jne	.L13	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	jmp	.L11	#
.L13:
	.loc 1 63 0 is_stmt 1
	addl	$1, %ebx	#, dir
.L12:
	.loc 1 63 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L14	#,
.L11:
	.loc 1 66 0 is_stmt 1
	cmpl	$3, %ebx	#, dir
	jle	.L15	#,
	.loc 1 67 0
	movl	$0, %eax	#,
	call	mynode	#
	testl	%eax, %eax	# D.5116
	jne	.L16	#,
	.loc 1 67 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	puts	#
.L16:
	.loc 1 69 0 is_stmt 1
	movl	$1, %edi	#,
	call	terminate	#
.L15:
	.loc 1 73 0
	addl	%r13d, %r13d	# i
	movslq	%ebx, %rax	# dir, tmp103
	movl	squaresize(,%rax,4), %eax	# squaresize, D.5116
	movl	%eax, %edx	# D.5116, tmp104
	shrl	$31, %edx	#, tmp104
	addl	%edx, %eax	# tmp104, tmp105
	sarl	%eax	# tmp106
	movl	%eax, %edx	# tmp106, D.5116
	movslq	%ebx, %rax	# dir, tmp107
	movl	%edx, squaresize(,%rax,4)	# D.5116, squaresize
	movslq	%ebx, %rax	# dir, tmp108
	movl	nsquares(,%rax,4), %eax	# nsquares, D.5116
	leal	(%rax,%rax), %edx	#, D.5116
	movslq	%ebx, %rax	# dir, tmp109
	movl	%edx, nsquares(,%rax,4)	# D.5116, nsquares
.L3:
	.loc 1 51 0 discriminator 1
	movl	$0, %eax	#,
	call	numnodes	#
	cmpl	%r13d, %eax	# i, D.5116
	jg	.L17	#,
	.loc 1 77 0
	movl	squaresize(%rip), %edx	# squaresize, D.5116
	movl	squaresize+4(%rip), %eax	# squaresize, D.5116
	imull	%eax, %edx	# D.5116, D.5116
	movl	squaresize+8(%rip), %eax	# squaresize, D.5116
	imull	%eax, %edx	# D.5116, D.5116
	movl	squaresize+12(%rip), %eax	# squaresize, D.5116
	imull	%edx, %eax	# D.5116, sites_on_node.4
	.loc 1 76 0
	movl	%eax, sites_on_node(%rip)	# sites_on_node.4, sites_on_node
	.loc 1 79 0
	movl	$0, %eax	#,
	call	mynode	#
	testl	%eax, %eax	# D.5116
	jne	.L18	#,
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.5
	andl	$1, %eax	#, D.5117
	testl	%eax, %eax	# D.5117
	je	.L18	#,
	.loc 1 80 0 is_stmt 1
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 81 0
	movl	$0, %edi	#,
	call	terminate	#
.L18:
	.loc 1 83 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.7
	movl	%eax, %edx	# sites_on_node.7, tmp110
	shrl	$31, %edx	#, tmp110
	addl	%edx, %eax	# tmp110, tmp111
	sarl	%eax	# tmp112
	movl	%eax, odd_sites_on_node(%rip)	# odd_sites_on_node.8, odd_sites_on_node
	movl	odd_sites_on_node(%rip), %eax	# odd_sites_on_node, odd_sites_on_node.9
	movl	%eax, even_sites_on_node(%rip)	# odd_sites_on_node.9, even_sites_on_node
	.loc 1 84 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setup_layout, .-setup_layout
	.globl	node_number
	.type	node_number, @function
node_number:
.LFB3:
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# x, x
	movl	%esi, -16(%rbp)	# y, y
	movl	%edx, -20(%rbp)	# z, z
	movl	%ecx, -24(%rbp)	# t, t
	.loc 1 88 0
	movl	squaresize(%rip), %edi	# squaresize, D.5122
	movl	-12(%rbp), %eax	# x, tmp76
	cltd
	idivl	%edi	# D.5122
	movl	%eax, -12(%rbp)	# tmp74, x
	movl	squaresize+4(%rip), %ebx	# squaresize, D.5122
	movl	-16(%rbp), %eax	# y, tmp79
	cltd
	idivl	%ebx	# D.5122
	movl	%eax, -16(%rbp)	# tmp77, y
	.loc 1 89 0
	movl	squaresize+8(%rip), %esi	# squaresize, D.5122
	movl	-20(%rbp), %eax	# z, tmp82
	cltd
	idivl	%esi	# D.5122
	movl	%eax, -20(%rbp)	# tmp80, z
	movl	squaresize+12(%rip), %edi	# squaresize, D.5122
	movl	-24(%rbp), %eax	# t, tmp85
	cltd
	idivl	%edi	# D.5122
	movl	%eax, -24(%rbp)	# tmp83, t
	.loc 1 90 0
	movl	nsquares(%rip), %edx	# nsquares, D.5122
	movl	nsquares+4(%rip), %ecx	# nsquares, D.5122
	movl	nsquares+8(%rip), %eax	# nsquares, D.5122
	imull	-24(%rbp), %eax	# t, D.5122
	movl	%eax, %esi	# D.5122, D.5122
	movl	-20(%rbp), %eax	# z, tmp86
	addl	%esi, %eax	# D.5122, D.5122
	imull	%eax, %ecx	# D.5122, D.5122
	movl	-16(%rbp), %eax	# y, tmp87
	addl	%ecx, %eax	# D.5122, D.5122
	imull	%eax, %edx	# D.5122, D.5122
	movl	-12(%rbp), %eax	# x, tmp88
	leal	(%rdx,%rax), %ebx	#, i
	.loc 1 91 0
	movl	%ebx, %eax	# i, D.5122
	.loc 1 92 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	node_number, .-node_number
	.globl	node_index
	.type	node_index, @function
node_index:
.LFB4:
	.loc 1 94 0
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
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movl	%edx, -44(%rbp)	# z, z
	movl	%ecx, -48(%rbp)	# t, t
	.loc 1 96 0
	movl	squaresize(%rip), %ecx	# squaresize, D.5123
	movl	-36(%rbp), %eax	# x, tmp85
	cltd
	idivl	%ecx	# D.5123
	movl	%edx, %ebx	# tmp86, xr
	movl	squaresize+4(%rip), %ecx	# squaresize, D.5123
	movl	-40(%rbp), %eax	# y, tmp88
	cltd
	idivl	%ecx	# D.5123
	movl	%edx, %r12d	# tmp89, yr
	.loc 1 97 0
	movl	squaresize+8(%rip), %ecx	# squaresize, D.5123
	movl	-44(%rbp), %eax	# z, tmp91
	cltd
	idivl	%ecx	# D.5123
	movl	%edx, %r13d	# tmp92, zr
	movl	squaresize+12(%rip), %ecx	# squaresize, D.5123
	movl	-48(%rbp), %eax	# t, tmp94
	cltd
	idivl	%ecx	# D.5123
	movl	%edx, %r14d	# tmp95, tr
	.loc 1 98 0
	movl	squaresize(%rip), %eax	# squaresize, D.5123
	movl	squaresize+4(%rip), %edx	# squaresize, D.5123
	movl	squaresize+8(%rip), %ecx	# squaresize, D.5123
	imull	%r14d, %ecx	# tr, D.5123
	addl	%r13d, %ecx	# zr, D.5123
	imull	%ecx, %edx	# D.5123, D.5123
	addl	%r12d, %edx	# yr, D.5123
	imull	%edx, %eax	# D.5123, D.5123
	addl	%eax, %ebx	# D.5123, i
	.loc 1 99 0
	movl	-40(%rbp), %eax	# y, tmp97
	movl	-36(%rbp), %edx	# x, tmp98
	addl	%eax, %edx	# tmp97, D.5123
	movl	-44(%rbp), %eax	# z, tmp99
	addl	%eax, %edx	# tmp99, D.5123
	movl	-48(%rbp), %eax	# t, tmp100
	addl	%edx, %eax	# D.5123, D.5123
	andl	$1, %eax	#, D.5124
	testl	%eax, %eax	# D.5124
	jne	.L22	#,
	.loc 1 100 0
	movl	%ebx, %eax	# i, tmp101
	shrl	$31, %eax	#, tmp101
	addl	%ebx, %eax	# i, tmp102
	sarl	%eax	# tmp103
	jmp	.L23	#
.L22:
	.loc 1 103 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.10
	addl	%ebx, %eax	# i, D.5123
	movl	%eax, %edx	# D.5123, tmp104
	shrl	$31, %edx	#, tmp104
	addl	%edx, %eax	# tmp104, tmp105
	sarl	%eax	# tmp106
.L23:
	.loc 1 105 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	node_index, .-node_index
	.globl	num_sites
	.type	num_sites, @function
num_sites:
.LFB5:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# node, node
	.loc 1 108 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, D.5125
	.loc 1 109 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	num_sites, .-num_sites
.Letext0:
	.file 2 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x26a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF25
	.byte	0x1
	.byte	0x25
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x26
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.byte	0x26
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.string	"dir"
	.byte	0x1
	.byte	0x26
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x56
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x12d
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"z"
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"t"
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x57
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"z"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"t"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.string	"xr"
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.string	"yr"
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.string	"zr"
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.string	"tr"
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x6b
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x6b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.string	"nx"
	.byte	0x2
	.byte	0x74
	.long	0x57
	.uleb128 0x9
	.string	"ny"
	.byte	0x2
	.byte	0x74
	.long	0x57
	.uleb128 0x9
	.string	"nz"
	.byte	0x2
	.byte	0x74
	.long	0x57
	.uleb128 0x9
	.string	"nt"
	.byte	0x2
	.byte	0x74
	.long	0x57
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.byte	0x87
	.long	0x57
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.byte	0x88
	.long	0x57
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.byte	0x89
	.long	0x57
	.uleb128 0xb
	.long	0x57
	.long	0x243
	.uleb128 0xc
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x22
	.long	0x233
	.uleb128 0x9
	.byte	0x3
	.quad	squaresize
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x23
	.long	0x233
	.uleb128 0x9
	.byte	0x3
	.quad	nsquares
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
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
.LASF25:
	.string	"setup_layout"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"node_index"
.LASF12:
	.string	"double"
.LASF11:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"squaresize"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF23:
	.string	"layout_hyper.c"
.LASF18:
	.string	"even_sites_on_node"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"node_number"
.LASF15:
	.string	"num_sites"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF21:
	.string	"nsquares"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF17:
	.string	"sites_on_node"
.LASF16:
	.string	"node"
.LASF19:
	.string	"odd_sites_on_node"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
