	.file	"ploop3.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# ploop3.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	ploop
	.type	ploop, @function
ploop:
.LFB2:
	.file 1 "ploop3.c"
	.loc 1 18 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 27 0
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	call	cmplx	#
	movsd	%xmm0, -248(%rbp)	#, %sfp
	movq	-248(%rbp), %rax	# %sfp, tmp115
	movsd	%xmm1, -248(%rbp)	#, %sfp
	movq	-248(%rbp), %rdx	# %sfp, tmp116
	movq	%rax, -224(%rbp)	# tmp115, sum
	movq	%rdx, -216(%rbp)	# tmp116, sum
	.loc 1 28 0
	movl	$0, -184(%rbp)	#, d
	movl	-184(%rbp), %eax	# d, D.5058
	movl	%eax, -188(%rbp)	# D.5058, d
	movl	-188(%rbp), %eax	# d, D.5058
	movl	%eax, -192(%rbp)	# D.5058, d
	.loc 1 32 0
	movq	gen_pt(%rip), %rax	# gen_pt, D.5059
	movq	%rax, %r8	# D.5059,
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$144, %esi	#,
	movl	$544, %edi	#,
	call	start_gather	#
	movq	%rax, -232(%rbp)	# tmp117, tag
	.loc 1 34 0
	movq	-232(%rbp), %rax	# tag, tmp118
	movq	%rax, %rdi	# tmp118,
	call	wait_gather	#
	.loc 1 35 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L2	#
.L3:
	.loc 1 36 0 discriminator 2
	leaq	1760(%rbx), %rdx	#, D.5060
	movq	gen_pt(%rip), %rax	# gen_pt, D.5059
	movslq	%r12d, %rcx	# i, D.5061
	salq	$3, %rcx	#, D.5061
	addq	%rcx, %rax	# D.5061, D.5059
	movq	(%rax), %rcx	# *_19, D.5062
	leaq	544(%rbx), %rax	#, D.5060
	movq	%rcx, %rsi	# D.5062,
	movq	%rax, %rdi	# D.5060,
	call	mult_su3_nn	#
	.loc 1 35 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.0
	cmpl	%eax, %r12d	# even_sites_on_node.0, i
	jl	.L3	#,
	.loc 1 39 0 is_stmt 1
	movq	-232(%rbp), %rax	# tag, tmp119
	movq	%rax, %rdi	# tmp119,
	call	cleanup_gather	#
	.loc 1 41 0
	movl	$2, %r13d	#, t
	jmp	.L4	#
.L9:
	.loc 1 42 0
	movl	%r13d, -180(%rbp)	# t, d
	.loc 1 43 0
	movq	gen_pt(%rip), %rdx	# gen_pt, D.5059
	leaq	-192(%rbp), %rax	#, tmp120
	movq	%rdx, %r8	# D.5059,
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# tmp120,
	movl	$144, %esi	#,
	movl	$1760, %edi	#,
	call	start_general_gather	#
	movq	%rax, -232(%rbp)	# tmp121, tag
	.loc 1 45 0
	movq	-232(%rbp), %rax	# tag, tmp122
	movq	%rax, %rdi	# tmp122,
	call	wait_general_gather	#
	.loc 1 46 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L5	#
.L8:
	.loc 1 47 0
	movzwl	6(%rbx), %eax	# st_6->t, D.5063
	cmpw	$1, %ax	#, D.5063
	jle	.L6	#,
	.loc 1 47 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L6:
	.loc 1 48 0 is_stmt 1
	movq	gen_pt(%rip), %rax	# gen_pt, D.5059
	movslq	%r12d, %rdx	# i, D.5061
	salq	$3, %rdx	#, D.5061
	addq	%rdx, %rax	# D.5061, D.5059
	movq	(%rax), %rcx	# *_35, D.5062
	leaq	1760(%rbx), %rax	#, D.5060
	leaq	-176(%rbp), %rdx	#, tmp123
	movq	%rcx, %rsi	# D.5062,
	movq	%rax, %rdi	# D.5060,
	call	mult_su3_nn	#
	.loc 1 49 0
	movq	lattice(%rip), %rax	# lattice, lattice.1
	movslq	%r12d, %rdx	# i, D.5061
	salq	$11, %rdx	#, D.5061
	addq	%rdx, %rax	# D.5061, D.5064
	leaq	1760(%rax), %rdi	#, tmp124
	leaq	-176(%rbp), %rdx	#, tmp125
	movl	$18, %eax	#, tmp126
	movq	%rdx, %rsi	# tmp125, tmp125
	movq	%rax, %rcx	# tmp126, tmp126
	rep movsq
.L7:
	.loc 1 46 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L5:
	.loc 1 46 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.2
	cmpl	%eax, %r12d	# even_sites_on_node.2, i
	jl	.L8	#,
	.loc 1 54 0 is_stmt 1
	movq	-232(%rbp), %rax	# tag, tmp127
	movq	%rax, %rdi	# tmp127,
	call	cleanup_general_gather	#
	.loc 1 41 0
	addl	$2, %r13d	#, t
.L4:
	.loc 1 41 0 is_stmt 0 discriminator 1
	movl	nt(%rip), %eax	# nt, nt.3
	cmpl	%eax, %r13d	# nt.3, t
	jl	.L9	#,
	.loc 1 56 0 is_stmt 1
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L10	#
.L13:
	.loc 1 57 0
	movzwl	6(%rbx), %eax	# st_7->t, D.5063
	cmpw	$1, %ax	#, D.5063
	jle	.L11	#,
	.loc 1 57 0 is_stmt 0 discriminator 1
	jmp	.L12	#
.L11:
	.loc 1 58 0 is_stmt 1
	leaq	1760(%rbx), %rax	#, D.5060
	movq	%rax, %rdi	# D.5060,
	call	trace_su3	#
	movsd	%xmm0, -248(%rbp)	#, %sfp
	movq	-248(%rbp), %rax	# %sfp, tmp128
	movsd	%xmm1, -248(%rbp)	#, %sfp
	movq	-248(%rbp), %rdx	# %sfp, tmp129
	movq	%rax, -208(%rbp)	# tmp128, plp
	movq	%rdx, -200(%rbp)	# tmp129, plp
	.loc 1 60 0
	movsd	-224(%rbp), %xmm1	# sum.real, D.5065
	movsd	-208(%rbp), %xmm0	# plp.real, D.5065
	addsd	%xmm1, %xmm0	# D.5065, D.5065
	movsd	%xmm0, -224(%rbp)	# D.5065, sum.real
	movsd	-216(%rbp), %xmm1	# sum.imag, D.5065
	movsd	-200(%rbp), %xmm0	# plp.imag, D.5065
	addsd	%xmm1, %xmm0	# D.5065, D.5065
	movsd	%xmm0, -216(%rbp)	# D.5065, sum.imag
.L12:
	.loc 1 56 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L10:
	.loc 1 56 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.4
	cmpl	%eax, %r12d	# even_sites_on_node.4, i
	jl	.L13	#,
	.loc 1 68 0 is_stmt 1
	leaq	-224(%rbp), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	g_complexsum	#
	.loc 1 69 0
	movsd	-224(%rbp), %xmm1	# sum.real, D.5065
	movl	nx(%rip), %edx	# nx, nx.5
	movl	ny(%rip), %eax	# ny, ny.6
	imull	%eax, %edx	# ny.6, D.5058
	movl	nz(%rip), %eax	# nz, nz.7
	imull	%edx, %eax	# D.5058, D.5058
	cvtsi2sd	%eax, %xmm0	# D.5058, D.5065
	divsd	%xmm0, %xmm1	# D.5065, D.5065
	movapd	%xmm1, %xmm0	# D.5065, D.5065
	movsd	%xmm0, -208(%rbp)	# D.5065, plp.real
	.loc 1 70 0
	movsd	-216(%rbp), %xmm1	# sum.imag, D.5065
	movl	nx(%rip), %edx	# nx, nx.8
	movl	ny(%rip), %eax	# ny, ny.9
	imull	%eax, %edx	# ny.9, D.5058
	movl	nz(%rip), %eax	# nz, nz.10
	imull	%edx, %eax	# D.5058, D.5058
	cvtsi2sd	%eax, %xmm0	# D.5058, D.5065
	divsd	%xmm0, %xmm1	# D.5065, D.5065
	movapd	%xmm1, %xmm0	# D.5065, D.5065
	movsd	%xmm0, -200(%rbp)	# D.5065, plp.imag
	.loc 1 71 0
	movq	-208(%rbp), %rax	# plp, D.5054
	movq	-200(%rbp), %rdx	# plp, D.5054
	movq	%rax, %rcx	# D.5054, tmp132
	movq	%rdx, %rbx	# D.5054,
	movq	%rdx, %rax	#, <retval>
	.loc 1 72 0
	movq	%rcx, -248(%rbp)	# <retval>, %sfp
	movsd	-248(%rbp), %xmm0	# %sfp,
	movq	%rax, -248(%rbp)	# <retval>, %sfp
	movsd	-248(%rbp), %xmm1	# %sfp,
	addq	$232, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ploop, .-ploop
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.file 5 "macros.h"
	.file 6 "./lattice.h"
	.file 7 "comdefs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4d2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
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
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x2a
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0xb
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x354
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x8
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x8
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x72
	.byte	0x8
	.uleb128 0x6
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0x29
	.long	0x147
	.byte	0x10
	.uleb128 0x6
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x6
	.long	.LASF33
	.byte	0x6
	.byte	0x32
	.long	0x354
	.byte	0x70
	.uleb128 0xc
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x364
	.value	0x2b0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x374
	.value	0x3f0
	.uleb128 0xc
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1a9
	.value	0x410
	.uleb128 0xd
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1a9
	.value	0x440
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1a9
	.value	0x470
	.uleb128 0xc
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1a9
	.value	0x4a0
	.uleb128 0xc
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1a9
	.value	0x4d0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1a9
	.value	0x500
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x21c
	.value	0x530
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x21c
	.value	0x5f0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1a9
	.value	0x6b0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x17b
	.value	0x6e0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x17b
	.value	0x770
	.byte	0
	.uleb128 0x9
	.long	0x17b
	.long	0x364
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x211
	.long	0x374
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x8e
	.long	0x384
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x23d
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.long	0x3c8
	.uleb128 0x6
	.long	.LASF44
	.byte	0x7
	.byte	0x37
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x7
	.byte	0x39
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF46
	.byte	0x7
	.byte	0x3b
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF47
	.byte	0x7
	.byte	0x40
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x7
	.byte	0x42
	.long	0x38f
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.byte	0x12
	.long	0xb6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x460
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.string	"st"
	.byte	0x1
	.byte	0x14
	.long	0x460
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"tag"
	.byte	0x1
	.byte	0x15
	.long	0x466
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0xf
	.string	"sum"
	.byte	0x1
	.byte	0x16
	.long	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xf
	.string	"plp"
	.byte	0x1
	.byte	0x17
	.long	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x18
	.long	0x17b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xf
	.string	"d"
	.byte	0x1
	.byte	0x19
	.long	0x46c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x384
	.uleb128 0x4
	.byte	0x8
	.long	0x3c8
	.uleb128 0x9
	.long	0x57
	.long	0x47c
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"nx"
	.byte	0x6
	.byte	0x74
	.long	0x57
	.uleb128 0x11
	.string	"ny"
	.byte	0x6
	.byte	0x74
	.long	0x57
	.uleb128 0x11
	.string	"nz"
	.byte	0x6
	.byte	0x74
	.long	0x57
	.uleb128 0x11
	.string	"nt"
	.byte	0x6
	.byte	0x74
	.long	0x57
	.uleb128 0x12
	.long	.LASF50
	.byte	0x6
	.byte	0x88
	.long	0x57
	.uleb128 0x12
	.long	.LASF51
	.byte	0x6
	.byte	0x9a
	.long	0x460
	.uleb128 0x9
	.long	0x237
	.long	0x4ca
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	.LASF52
	.byte	0x6
	.byte	0x9f
	.long	0x4ba
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
.LASF37:
	.string	"g_rand"
.LASF28:
	.string	"field_offset"
.LASF15:
	.string	"multiplier"
.LASF53:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF34:
	.string	"phase"
.LASF19:
	.string	"complex"
.LASF50:
	.string	"even_sites_on_node"
.LASF43:
	.string	"site"
.LASF38:
	.string	"tempvec"
.LASF54:
	.string	"ploop3.c"
.LASF39:
	.string	"templongvec"
.LASF30:
	.string	"index"
.LASF45:
	.string	"msg_size"
.LASF33:
	.string	"link"
.LASF11:
	.string	"float"
.LASF31:
	.string	"site_prn"
.LASF21:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"real"
.LASF51:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF44:
	.string	"msg_node"
.LASF29:
	.string	"parity"
.LASF25:
	.string	"m22im"
.LASF47:
	.string	"msg_id"
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
.LASF56:
	.string	"ploop"
.LASF18:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF14:
	.string	"imag"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"su3_vector"
.LASF42:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF40:
	.string	"templongv1"
.LASF32:
	.string	"space1"
.LASF36:
	.string	"cg_p"
.LASF16:
	.string	"addend"
.LASF55:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF35:
	.string	"resid"
.LASF17:
	.string	"ic_state"
.LASF52:
	.string	"gen_pt"
.LASF27:
	.string	"anti_hermitmat"
.LASF46:
	.string	"msg_buf"
.LASF49:
	.string	"tmat"
.LASF48:
	.string	"msg_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
