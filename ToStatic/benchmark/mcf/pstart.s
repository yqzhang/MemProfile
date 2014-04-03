	.file	"pstart.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 pstart.c -mtune=generic -march=x86-64
# -g -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.globl	primal_start_artificial
	.type	primal_start_artificial, @function
primal_start_artificial:
.LFB2:
	.file 1 "pstart.c"
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# net, net
	.loc 1 40 0
	movq	-40(%rbp), %rax	# net, tmp66
	movq	552(%rax), %rax	# net_4(D)->nodes, tmp67
	movq	%rax, -32(%rbp)	# tmp67, node
	movq	-32(%rbp), %rax	# node, tmp68
	movq	%rax, -16(%rbp)	# tmp68, root
	addq	$104, -32(%rbp)	#, node
	.loc 1 41 0
	movq	-16(%rbp), %rax	# root, tmp69
	movq	$0, 48(%rax)	#, root_6->basic_arc
	.loc 1 42 0
	movq	-16(%rbp), %rax	# root, tmp70
	movq	$0, 24(%rax)	#, root_6->pred
	.loc 1 43 0
	movq	-16(%rbp), %rax	# root, tmp71
	movq	-32(%rbp), %rdx	# node, tmp72
	movq	%rdx, 16(%rax)	# tmp72, root_6->child
	.loc 1 44 0
	movq	-16(%rbp), %rax	# root, tmp73
	movq	$0, 32(%rax)	#, root_6->sibling
	.loc 1 45 0
	movq	-16(%rbp), %rax	# root, tmp74
	movq	$0, 40(%rax)	#, root_6->sibling_prev
	.loc 1 46 0
	movq	-40(%rbp), %rax	# net, tmp75
	movq	400(%rax), %rax	# net_4(D)->n, D.4676
	leaq	1(%rax), %rdx	#, D.4676
	movq	-16(%rbp), %rax	# root, tmp76
	movq	%rdx, 88(%rax)	# D.4676, root_6->depth
	.loc 1 47 0
	movq	-16(%rbp), %rax	# root, tmp77
	movl	$0, 8(%rax)	#, root_6->orientation
	.loc 1 48 0
	movq	-16(%rbp), %rax	# root, tmp78
	movq	$-100000000, (%rax)	#, root_6->potential
	.loc 1 49 0
	movq	-16(%rbp), %rax	# root, tmp79
	movq	$0, 80(%rax)	#, root_6->flow
	.loc 1 51 0
	movq	-40(%rbp), %rax	# net, tmp80
	movq	576(%rax), %rax	# net_4(D)->stop_arcs, tmp81
	movq	%rax, -8(%rbp)	# tmp81, stop
	.loc 1 52 0
	movq	-40(%rbp), %rax	# net, tmp82
	movq	568(%rax), %rax	# net_4(D)->arcs, tmp83
	movq	%rax, -24(%rbp)	# tmp83, arc
	jmp	.L2	#
.L4:
	.loc 1 53 0
	movq	-24(%rbp), %rax	# arc, tmp84
	movl	24(%rax), %eax	# arc_2->ident, D.4677
	cmpl	$-1, %eax	#, D.4677
	je	.L3	#,
	.loc 1 54 0
	movq	-24(%rbp), %rax	# arc, tmp85
	movl	$1, 24(%rax)	#, arc_2->ident
.L3:
	.loc 1 52 0
	addq	$64, -24(%rbp)	#, arc
.L2:
	.loc 1 52 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arc, tmp86
	cmpq	-8(%rbp), %rax	# stop, tmp86
	jne	.L4	#,
	.loc 1 56 0 is_stmt 1
	movq	-40(%rbp), %rax	# net, tmp87
	movq	584(%rax), %rax	# net_4(D)->dummy_arcs, tmp88
	movq	%rax, -24(%rbp)	# tmp88, arc
	.loc 1 57 0
	movq	-40(%rbp), %rax	# net, tmp89
	movq	560(%rax), %rax	# net_4(D)->stop_nodes, tmp90
	movq	%rax, -8(%rbp)	# tmp90, stop
	jmp	.L5	#
.L6:
	.loc 1 59 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp91
	movq	-24(%rbp), %rdx	# arc, tmp92
	movq	%rdx, 48(%rax)	# tmp92, node_1->basic_arc
	.loc 1 60 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp93
	movq	-16(%rbp), %rdx	# root, tmp94
	movq	%rdx, 24(%rax)	# tmp94, node_1->pred
	.loc 1 61 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp95
	movq	$0, 16(%rax)	#, node_1->child
	.loc 1 62 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp96
	leaq	104(%rax), %rdx	#, D.4678
	movq	-32(%rbp), %rax	# node, tmp97
	movq	%rdx, 32(%rax)	# D.4678, node_1->sibling
	.loc 1 63 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp98
	leaq	-104(%rax), %rdx	#, D.4678
	movq	-32(%rbp), %rax	# node, tmp99
	movq	%rdx, 40(%rax)	# D.4678, node_1->sibling_prev
	.loc 1 64 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp100
	movq	$1, 88(%rax)	#, node_1->depth
	.loc 1 66 0 discriminator 2
	movq	-24(%rbp), %rax	# arc, tmp101
	movq	$100000000, (%rax)	#, arc_3->cost
	.loc 1 67 0 discriminator 2
	movq	-24(%rbp), %rax	# arc, tmp102
	movl	$0, 24(%rax)	#, arc_3->ident
	.loc 1 69 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp103
	movl	$1, 8(%rax)	#, node_1->orientation
	.loc 1 70 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp104
	movq	$0, (%rax)	#, node_1->potential
	.loc 1 71 0 discriminator 2
	movq	-24(%rbp), %rax	# arc, tmp105
	movq	-32(%rbp), %rdx	# node, tmp106
	movq	%rdx, 8(%rax)	# tmp106, arc_3->tail
	.loc 1 72 0 discriminator 2
	movq	-24(%rbp), %rax	# arc, tmp107
	movq	-16(%rbp), %rdx	# root, tmp108
	movq	%rdx, 16(%rax)	# tmp108, arc_3->head
	.loc 1 73 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp109
	movq	$0, 80(%rax)	#, node_1->flow
	.loc 1 57 0 discriminator 2
	addq	$64, -24(%rbp)	#, arc
	addq	$104, -32(%rbp)	#, node
.L5:
	.loc 1 57 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp110
	cmpq	-8(%rbp), %rax	# stop, tmp110
	jne	.L6	#,
	.loc 1 76 0 is_stmt 1
	subq	$104, -32(%rbp)	#, node
	addq	$104, -16(%rbp)	#, root
	.loc 1 77 0
	movq	-32(%rbp), %rax	# node, tmp111
	movq	$0, 32(%rax)	#, node_20->sibling
	.loc 1 78 0
	movq	-16(%rbp), %rax	# root, tmp112
	movq	$0, 40(%rax)	#, root_21->sibling_prev
	.loc 1 80 0
	movl	$0, %eax	#, D.4676
	.loc 1 81 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	primal_start_artificial, .-primal_start_artificial
.Letext0:
	.file 2 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x421
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x1
	.long	.LASF73
	.long	.LASF74
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x44
	.long	0x5e
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x5e
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0x63
	.long	0xb2
	.uleb128 0x6
	.long	.LASF32
	.byte	0x68
	.byte	0x2
	.byte	0x6b
	.long	0x167
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x6d
	.long	0x9c
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x6e
	.long	0x57
	.byte	0x8
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.byte	0x6f
	.long	0x167
	.byte	0x10
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x70
	.long	0x167
	.byte	0x18
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0x71
	.long	0x167
	.byte	0x20
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x72
	.long	0x167
	.byte	0x28
	.uleb128 0x7
	.long	.LASF22
	.byte	0x2
	.byte	0x73
	.long	0x1f0
	.byte	0x30
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x1f0
	.byte	0x38
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x74
	.long	0x1f0
	.byte	0x40
	.uleb128 0x7
	.long	.LASF25
	.byte	0x2
	.byte	0x75
	.long	0x1f0
	.byte	0x48
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.byte	0x76
	.long	0x91
	.byte	0x50
	.uleb128 0x7
	.long	.LASF27
	.byte	0x2
	.byte	0x77
	.long	0x5e
	.byte	0x58
	.uleb128 0x7
	.long	.LASF28
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x60
	.uleb128 0x7
	.long	.LASF29
	.byte	0x2
	.byte	0x79
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.long	.LASF30
	.byte	0x2
	.byte	0x64
	.long	0x172
	.uleb128 0x8
	.byte	0x8
	.long	0xb2
	.uleb128 0x5
	.long	.LASF31
	.byte	0x2
	.byte	0x66
	.long	0x183
	.uleb128 0x9
	.string	"arc"
	.byte	0x40
	.byte	0x2
	.byte	0x7e
	.long	0x1f0
	.uleb128 0x7
	.long	.LASF33
	.byte	0x2
	.byte	0x80
	.long	0x9c
	.byte	0
	.uleb128 0x7
	.long	.LASF34
	.byte	0x2
	.byte	0x81
	.long	0x167
	.byte	0x8
	.uleb128 0x7
	.long	.LASF35
	.byte	0x2
	.byte	0x81
	.long	0x167
	.byte	0x10
	.uleb128 0x7
	.long	.LASF36
	.byte	0x2
	.byte	0x82
	.long	0x57
	.byte	0x18
	.uleb128 0x7
	.long	.LASF37
	.byte	0x2
	.byte	0x83
	.long	0x1f0
	.byte	0x20
	.uleb128 0x7
	.long	.LASF38
	.byte	0x2
	.byte	0x83
	.long	0x1f0
	.byte	0x28
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.byte	0x84
	.long	0x91
	.byte	0x30
	.uleb128 0x7
	.long	.LASF39
	.byte	0x2
	.byte	0x85
	.long	0x9c
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.long	.LASF40
	.byte	0x2
	.byte	0x67
	.long	0x1fb
	.uleb128 0x8
	.byte	0x8
	.long	0x183
	.uleb128 0xa
	.long	.LASF41
	.value	0x270
	.byte	0x2
	.byte	0x8a
	.long	0x38f
	.uleb128 0x7
	.long	.LASF42
	.byte	0x2
	.byte	0x8c
	.long	0x38f
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x2
	.byte	0x8d
	.long	0x38f
	.byte	0xc8
	.uleb128 0xb
	.string	"n"
	.byte	0x2
	.byte	0x8e
	.long	0x5e
	.value	0x190
	.uleb128 0xc
	.long	.LASF44
	.byte	0x2
	.byte	0x8e
	.long	0x5e
	.value	0x198
	.uleb128 0xc
	.long	.LASF45
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1a0
	.uleb128 0xb
	.string	"m"
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1a8
	.uleb128 0xc
	.long	.LASF46
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1b0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1b8
	.uleb128 0xc
	.long	.LASF48
	.byte	0x2
	.byte	0x90
	.long	0x5e
	.value	0x1c0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x2
	.byte	0x90
	.long	0x5e
	.value	0x1c8
	.uleb128 0xc
	.long	.LASF50
	.byte	0x2
	.byte	0x92
	.long	0x5e
	.value	0x1d0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x2
	.byte	0x93
	.long	0x5e
	.value	0x1d8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.value	0x1e0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x2
	.byte	0x95
	.long	0x5e
	.value	0x1e8
	.uleb128 0xb
	.string	"eps"
	.byte	0x2
	.byte	0x96
	.long	0x5e
	.value	0x1f0
	.uleb128 0xc
	.long	.LASF54
	.byte	0x2
	.byte	0x97
	.long	0x5e
	.value	0x1f8
	.uleb128 0xc
	.long	.LASF55
	.byte	0x2
	.byte	0x98
	.long	0x5e
	.value	0x200
	.uleb128 0xc
	.long	.LASF56
	.byte	0x2
	.byte	0x99
	.long	0x5e
	.value	0x208
	.uleb128 0xc
	.long	.LASF57
	.byte	0x2
	.byte	0x9a
	.long	0x5e
	.value	0x210
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x9b
	.long	0x7c
	.value	0x218
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x9c
	.long	0x9c
	.value	0x220
	.uleb128 0xc
	.long	.LASF60
	.byte	0x2
	.byte	0x9d
	.long	0x167
	.value	0x228
	.uleb128 0xc
	.long	.LASF61
	.byte	0x2
	.byte	0x9d
	.long	0x167
	.value	0x230
	.uleb128 0xc
	.long	.LASF62
	.byte	0x2
	.byte	0x9e
	.long	0x1f0
	.value	0x238
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.byte	0x9e
	.long	0x1f0
	.value	0x240
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.byte	0x9f
	.long	0x1f0
	.value	0x248
	.uleb128 0xc
	.long	.LASF65
	.byte	0x2
	.byte	0x9f
	.long	0x1f0
	.value	0x250
	.uleb128 0xc
	.long	.LASF66
	.byte	0x2
	.byte	0xa0
	.long	0x5e
	.value	0x258
	.uleb128 0xc
	.long	.LASF67
	.byte	0x2
	.byte	0xa1
	.long	0x5e
	.value	0x260
	.uleb128 0xc
	.long	.LASF68
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.value	0x268
	.byte	0
	.uleb128 0xd
	.long	0x6e
	.long	0x39f
	.uleb128 0xe
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	.LASF69
	.byte	0x2
	.byte	0xa3
	.long	0x201
	.uleb128 0xf
	.long	.LASF75
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x412
	.uleb128 0x10
	.string	"net"
	.byte	0x1
	.byte	0x1d
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0x23
	.long	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.byte	0x23
	.long	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"arc"
	.byte	0x1
	.byte	0x24
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF71
	.byte	0x1
	.byte	0x25
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x39f
	.uleb128 0x8
	.byte	0x8
	.long	0xa7
	.uleb128 0x8
	.byte	0x8
	.long	0x178
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF73:
	.string	"pstart.c"
.LASF64:
	.string	"dummy_arcs"
.LASF51:
	.string	"dual_unbounded"
.LASF61:
	.string	"stop_nodes"
.LASF57:
	.string	"bigM"
.LASF22:
	.string	"basic_arc"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"child"
.LASF7:
	.string	"sizetype"
.LASF58:
	.string	"optcost"
.LASF38:
	.string	"nextin"
.LASF23:
	.string	"firstout"
.LASF20:
	.string	"sibling"
.LASF48:
	.string	"max_residual_new_m"
.LASF65:
	.string	"stop_dummy"
.LASF35:
	.string	"head"
.LASF60:
	.string	"nodes"
.LASF68:
	.string	"checksum"
.LASF67:
	.string	"bound_exchanges"
.LASF14:
	.string	"cost_t"
.LASF75:
	.string	"primal_start_artificial"
.LASF9:
	.string	"float"
.LASF45:
	.string	"max_m"
.LASF25:
	.string	"arc_tmp"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"potential"
.LASF47:
	.string	"m_impl"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"ignore_impl"
.LASF54:
	.string	"opt_tol"
.LASF32:
	.string	"node"
.LASF24:
	.string	"firstin"
.LASF21:
	.string	"sibling_prev"
.LASF44:
	.string	"n_trips"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"perturbed"
.LASF62:
	.string	"arcs"
.LASF72:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF41:
	.string	"network"
.LASF74:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF15:
	.string	"node_t"
.LASF3:
	.string	"unsigned int"
.LASF30:
	.string	"node_p"
.LASF34:
	.string	"tail"
.LASF17:
	.string	"orientation"
.LASF29:
	.string	"time"
.LASF49:
	.string	"max_new_m"
.LASF2:
	.string	"short unsigned int"
.LASF71:
	.string	"stop"
.LASF8:
	.string	"char"
.LASF33:
	.string	"cost"
.LASF55:
	.string	"feas_tol"
.LASF56:
	.string	"pert_val"
.LASF43:
	.string	"clustfile"
.LASF27:
	.string	"depth"
.LASF26:
	.string	"flow"
.LASF63:
	.string	"stop_arcs"
.LASF0:
	.string	"long unsigned int"
.LASF39:
	.string	"org_cost"
.LASF10:
	.string	"double"
.LASF53:
	.string	"feasible"
.LASF69:
	.string	"network_t"
.LASF13:
	.string	"flow_t"
.LASF50:
	.string	"primal_unbounded"
.LASF66:
	.string	"iterations"
.LASF42:
	.string	"inputfile"
.LASF19:
	.string	"pred"
.LASF46:
	.string	"m_org"
.LASF36:
	.string	"ident"
.LASF28:
	.string	"number"
.LASF40:
	.string	"arc_p"
.LASF31:
	.string	"arc_t"
.LASF70:
	.string	"root"
.LASF37:
	.string	"nextout"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
