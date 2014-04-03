	.file	"make_lattice.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# make_lattice.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"NODE %d: no room for lattice\n"
	.align 8
.LC1:
	.string	"NODE %d: no room for pointer vector\n"
	.align 8
.LC2:
	.string	"NODE %d: no room for t_longlink\n"
	.align 8
.LC3:
	.string	"NODE %d: no room for t_fatlink\n"
	.text
	.globl	make_lattice
	.type	make_lattice, @function
make_lattice:
.LFB2:
	.file 1 "make_lattice.c"
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 20 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.0
	cltq
	movl	$2048, %esi	#,
	movq	%rax, %rdi	# D.5097,
	call	calloc	#
	movq	%rax, lattice(%rip)	# lattice.1, lattice
	.loc 1 21 0
	movq	lattice(%rip), %rax	# lattice, lattice.2
	testq	%rax, %rax	# lattice.2
	jne	.L2	#,
	.loc 1 22 0
	movl	this_node(%rip), %eax	# this_node, this_node.3
	movl	%eax, %esi	# this_node.3,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 23 0
	movl	$1, %edi	#,
	call	terminate	#
.L2:
	.loc 1 27 0
	movl	$0, %ebx	#, i
	jmp	.L3	#
.L5:
	.loc 1 28 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.4
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5097,
	call	calloc	#
	movq	%rax, %rdx	# tmp146, D.5098
	movslq	%ebx, %rax	# i, tmp147
	movq	%rdx, gen_pt(,%rax,8)	# D.5098, gen_pt
	.loc 1 29 0
	movslq	%ebx, %rax	# i, tmp148
	movq	gen_pt(,%rax,8), %rax	# gen_pt, D.5099
	testq	%rax, %rax	# D.5099
	jne	.L4	#,
	.loc 1 30 0
	movl	this_node(%rip), %eax	# this_node, this_node.5
	movl	%eax, %esi	# this_node.5,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 31 0
	movl	$1, %edi	#,
	call	terminate	#
.L4:
	.loc 1 27 0
	addl	$1, %ebx	#, i
.L3:
	.loc 1 27 0 is_stmt 0 discriminator 1
	cmpl	$15, %ebx	#, i
	jle	.L5	#,
	.loc 1 35 0 is_stmt 1
	movl	$0, -20(%rbp)	#, t
	jmp	.L6	#
.L16:
	.loc 1 35 0 is_stmt 0 discriminator 2
	movl	$0, -24(%rbp)	#, z
	jmp	.L7	#
.L15:
	movl	$0, -28(%rbp)	#, y
	jmp	.L8	#
.L14:
	movl	$0, -32(%rbp)	#, x
	jmp	.L9	#
.L13:
	.loc 1 36 0 is_stmt 1
	movl	-20(%rbp), %ecx	# t, tmp149
	movl	-24(%rbp), %edx	# z, tmp150
	movl	-28(%rbp), %esi	# y, tmp151
	movl	-32(%rbp), %eax	# x, tmp152
	movl	%eax, %edi	# tmp152,
	call	node_number	#
	movl	%eax, %ebx	#, D.5100
	movl	$0, %eax	#,
	call	mynode	#
	cmpl	%eax, %ebx	# D.5100, D.5100
	jne	.L10	#,
	.loc 1 37 0
	movl	-20(%rbp), %ecx	# t, tmp153
	movl	-24(%rbp), %edx	# z, tmp154
	movl	-28(%rbp), %esi	# y, tmp155
	movl	-32(%rbp), %eax	# x, tmp156
	movl	%eax, %edi	# tmp156,
	call	node_index	#
	movl	%eax, %ebx	#, i
	.loc 1 38 0
	movq	lattice(%rip), %rax	# lattice, lattice.6
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rax, %rdx	# lattice.6, D.5101
	movl	-32(%rbp), %eax	# x, tmp157
	movw	%ax, (%rdx)	# D.5102, _32->x
	movq	lattice(%rip), %rax	# lattice, lattice.7
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rax, %rdx	# lattice.7, D.5101
	movl	-28(%rbp), %eax	# y, tmp158
	movw	%ax, 2(%rdx)	# D.5102, _37->y
	movq	lattice(%rip), %rax	# lattice, lattice.8
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rax, %rdx	# lattice.8, D.5101
	movl	-24(%rbp), %eax	# z, tmp159
	movw	%ax, 4(%rdx)	# D.5102, _42->z
	movq	lattice(%rip), %rax	# lattice, lattice.9
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rax, %rdx	# lattice.9, D.5101
	movl	-20(%rbp), %eax	# t, tmp160
	movw	%ax, 6(%rdx)	# D.5102, _47->t
	.loc 1 39 0
	movq	lattice(%rip), %rax	# lattice, lattice.10
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rax, %rdx	# lattice.10, D.5101
	movl	nz(%rip), %eax	# nz, nz.11
	imull	-20(%rbp), %eax	# t, D.5100
	movl	%eax, %ecx	# D.5100, D.5100
	movl	-24(%rbp), %eax	# z, tmp161
	addl	%eax, %ecx	# tmp161, D.5100
	movl	ny(%rip), %eax	# ny, ny.12
	imull	%eax, %ecx	# ny.12, D.5100
	movl	-28(%rbp), %eax	# y, tmp162
	addl	%eax, %ecx	# tmp162, D.5100
	movl	nx(%rip), %eax	# nx, nx.13
	imull	%eax, %ecx	# nx.13, D.5100
	movl	-32(%rbp), %eax	# x, tmp163
	addl	%ecx, %eax	# D.5100, D.5100
	movl	%eax, 12(%rdx)	# D.5100, _52->index
	.loc 1 40 0
	movl	-28(%rbp), %eax	# y, tmp164
	movl	-32(%rbp), %edx	# x, tmp165
	addl	%eax, %edx	# tmp164, D.5100
	movl	-24(%rbp), %eax	# z, tmp166
	addl	%eax, %edx	# tmp166, D.5100
	movl	-20(%rbp), %eax	# t, tmp167
	addl	%edx, %eax	# D.5100, D.5100
	andl	$1, %eax	#, D.5103
	testl	%eax, %eax	# D.5103
	jne	.L11	#,
	.loc 1 40 0 is_stmt 0 discriminator 1
	movq	lattice(%rip), %rax	# lattice, lattice.14
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rdx, %rax	# D.5097, D.5101
	movb	$2, 8(%rax)	#, _70->parity
	jmp	.L12	#
.L11:
	.loc 1 41 0 is_stmt 1
	movq	lattice(%rip), %rax	# lattice, lattice.15
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rdx, %rax	# D.5097, D.5101
	movb	$1, 8(%rax)	#, _74->parity
.L12:
	.loc 1 43 0
	movq	lattice(%rip), %rax	# lattice, lattice.16
	movslq	%ebx, %rdx	# i, D.5097
	salq	$11, %rdx	#, D.5097
	addq	%rdx, %rax	# D.5097, D.5101
	movl	12(%rax), %edx	# _78->index, D.5100
	movl	iseed(%rip), %eax	# iseed, iseed.17
	movq	lattice(%rip), %rcx	# lattice, lattice.18
	movslq	%ebx, %rsi	# i, D.5097
	salq	$11, %rsi	#, D.5097
	addq	%rsi, %rcx	# D.5097, D.5101
	addq	$16, %rcx	#, D.5104
	movl	%eax, %esi	# iseed.17,
	movq	%rcx, %rdi	# D.5104,
	call	initialize_prn	#
.L10:
	.loc 1 35 0
	addl	$1, -32(%rbp)	#, x
.L9:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	nx(%rip), %eax	# nx, nx.19
	cmpl	%eax, -32(%rbp)	# nx.19, x
	jl	.L13	#,
	.loc 1 35 0 discriminator 2
	addl	$1, -28(%rbp)	#, y
.L8:
	.loc 1 35 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.20
	cmpl	%eax, -28(%rbp)	# ny.20, y
	jl	.L14	#,
	.loc 1 35 0 discriminator 3
	addl	$1, -24(%rbp)	#, z
.L7:
	.loc 1 35 0 discriminator 1
	movl	nz(%rip), %eax	# nz, nz.21
	cmpl	%eax, -24(%rbp)	# nz.21, z
	jl	.L15	#,
	.loc 1 35 0 discriminator 3
	addl	$1, -20(%rbp)	#, t
.L6:
	.loc 1 35 0 discriminator 1
	movl	nt(%rip), %eax	# nt, nt.22
	cmpl	%eax, -20(%rbp)	# nt.22, t
	jl	.L16	#,
	.loc 1 50 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.23
	sall	$2, %eax	#, D.5100
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5097,
	call	calloc	#
	movq	%rax, t_longlink(%rip)	# t_longlink.24, t_longlink
	.loc 1 51 0
	movq	t_longlink(%rip), %rax	# t_longlink, t_longlink.25
	testq	%rax, %rax	# t_longlink.25
	jne	.L17	#,
	.loc 1 52 0
	movl	this_node(%rip), %eax	# this_node, this_node.26
	movl	%eax, %esi	# this_node.26,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 53 0
	movl	$1, %edi	#,
	call	terminate	#
.L17:
	.loc 1 55 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.27
	sall	$2, %eax	#, D.5100
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5097,
	call	calloc	#
	movq	%rax, t_fatlink(%rip)	# t_fatlink.28, t_fatlink
	.loc 1 56 0
	movq	t_fatlink(%rip), %rax	# t_fatlink, t_fatlink.29
	testq	%rax, %rax	# t_fatlink.29
	jne	.L1	#,
	.loc 1 57 0
	movl	this_node(%rip), %eax	# this_node, this_node.30
	movl	%eax, %esi	# this_node.30,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 58 0
	movl	$1, %edi	#,
	call	terminate	#
.L1:
	.loc 1 61 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	make_lattice, .-make_lattice
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.file 5 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x46b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF50
	.byte	0x1
	.long	.LASF51
	.long	.LASF52
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
	.uleb128 0x4
	.byte	0x8
	.long	0x72
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
	.uleb128 0x5
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0xb6
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x4a
	.long	0x8e
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x4b
	.long	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x4c
	.long	0x95
	.uleb128 0x5
	.byte	0x58
	.byte	0x3
	.byte	0x6
	.long	0x147
	.uleb128 0x8
	.string	"r0"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.string	"r1"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.string	"r2"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.string	"r3"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.string	"r4"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.string	"r5"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.string	"r6"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0xa
	.long	0x8e
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0xb
	.long	0xc1
	.uleb128 0x5
	.byte	0x90
	.byte	0x4
	.byte	0xe
	.long	0x165
	.uleb128 0x8
	.string	"e"
	.byte	0x4
	.byte	0xe
	.long	0x165
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xb6
	.long	0x17b
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0x152
	.uleb128 0x5
	.byte	0x30
	.byte	0x4
	.byte	0xf
	.long	0x199
	.uleb128 0x8
	.string	"c"
	.byte	0x4
	.byte	0xf
	.long	0x199
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xb6
	.long	0x1a9
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.byte	0xf
	.long	0x186
	.uleb128 0x5
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x211
	.uleb128 0x8
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0xb6
	.byte	0
	.uleb128 0x8
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0xb6
	.byte	0x10
	.uleb128 0x8
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0xb6
	.byte	0x20
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.byte	0x11
	.long	0x8e
	.byte	0x30
	.uleb128 0x6
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x8e
	.byte	0x38
	.uleb128 0x6
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x8e
	.byte	0x40
	.uleb128 0x6
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x8e
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x1b4
	.uleb128 0x9
	.long	0x1a9
	.long	0x22c
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0xb
	.value	0x800
	.byte	0x5
	.byte	0x1f
	.long	0x349
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x8
	.string	"z"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x8
	.string	"t"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0x24
	.long	0x72
	.byte	0x8
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x29
	.long	0x147
	.byte	0x10
	.uleb128 0x6
	.long	.LASF31
	.byte	0x5
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x32
	.long	0x349
	.byte	0x70
	.uleb128 0xc
	.string	"mom"
	.byte	0x5
	.byte	0x3e
	.long	0x359
	.value	0x2b0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.long	0x369
	.value	0x3f0
	.uleb128 0xc
	.string	"phi"
	.byte	0x5
	.byte	0x45
	.long	0x1a9
	.value	0x410
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.long	0x1a9
	.value	0x440
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.byte	0x47
	.long	0x1a9
	.value	0x470
	.uleb128 0xc
	.string	"xxx"
	.byte	0x5
	.byte	0x48
	.long	0x1a9
	.value	0x4a0
	.uleb128 0xc
	.string	"ttt"
	.byte	0x5
	.byte	0x49
	.long	0x1a9
	.value	0x4d0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.byte	0x4a
	.long	0x1a9
	.value	0x500
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.long	0x21c
	.value	0x530
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.long	0x21c
	.value	0x5f0
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.long	0x1a9
	.value	0x6b0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.long	0x17b
	.value	0x6e0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.long	0x17b
	.value	0x770
	.byte	0
	.uleb128 0x9
	.long	0x17b
	.long	0x359
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x211
	.long	0x369
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x8e
	.long	0x379
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x5
	.byte	0x63
	.long	0x232
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0xe
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"z"
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.string	"nx"
	.byte	0x5
	.byte	0x74
	.long	0x57
	.uleb128 0x10
	.string	"ny"
	.byte	0x5
	.byte	0x74
	.long	0x57
	.uleb128 0x10
	.string	"nz"
	.byte	0x5
	.byte	0x74
	.long	0x57
	.uleb128 0x10
	.string	"nt"
	.byte	0x5
	.byte	0x74
	.long	0x57
	.uleb128 0x11
	.long	.LASF43
	.byte	0x5
	.byte	0x76
	.long	0x57
	.uleb128 0x11
	.long	.LASF44
	.byte	0x5
	.byte	0x87
	.long	0x57
	.uleb128 0x11
	.long	.LASF45
	.byte	0x5
	.byte	0x8b
	.long	0x57
	.uleb128 0x11
	.long	.LASF46
	.byte	0x5
	.byte	0x9a
	.long	0x431
	.uleb128 0x4
	.byte	0x8
	.long	0x379
	.uleb128 0x9
	.long	0x22c
	.long	0x447
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x5
	.byte	0x9f
	.long	0x437
	.uleb128 0x11
	.long	.LASF48
	.byte	0x5
	.byte	0xa3
	.long	0x45d
	.uleb128 0x4
	.byte	0x8
	.long	0x17b
	.uleb128 0x11
	.long	.LASF49
	.byte	0x5
	.byte	0xa4
	.long	0x45d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
.LASF36:
	.string	"g_rand"
.LASF15:
	.string	"multiplier"
.LASF50:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF33:
	.string	"phase"
.LASF19:
	.string	"complex"
.LASF42:
	.string	"site"
.LASF37:
	.string	"tempvec"
.LASF35:
	.string	"cg_p"
.LASF38:
	.string	"templongvec"
.LASF29:
	.string	"index"
.LASF45:
	.string	"this_node"
.LASF32:
	.string	"link"
.LASF11:
	.string	"float"
.LASF30:
	.string	"site_prn"
.LASF21:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF43:
	.string	"iseed"
.LASF13:
	.string	"real"
.LASF46:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF44:
	.string	"sites_on_node"
.LASF28:
	.string	"parity"
.LASF25:
	.string	"m22im"
.LASF23:
	.string	"m00im"
.LASF20:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"space"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF40:
	.string	"tempmat1"
.LASF14:
	.string	"imag"
.LASF48:
	.string	"t_longlink"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"su3_vector"
.LASF41:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF39:
	.string	"templongv1"
.LASF31:
	.string	"space1"
.LASF16:
	.string	"addend"
.LASF53:
	.string	"make_lattice"
.LASF52:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF34:
	.string	"resid"
.LASF17:
	.string	"ic_state"
.LASF47:
	.string	"gen_pt"
.LASF49:
	.string	"t_fatlink"
.LASF27:
	.string	"anti_hermitmat"
.LASF51:
	.string	"make_lattice.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
