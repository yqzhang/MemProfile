	.file	"d_plaq4.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# d_plaq4.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 8
.LC1:
	.string	"plaquette: can't malloc su3mat"
	.text
	.globl	d_plaquette
	.type	d_plaquette, @function
d_plaquette:
.LFB2:
	.file 1 "d_plaq4.c"
	.loc 1 13 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$216, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -248(%rbp)	# ss_plaq, ss_plaq
	movq	%rsi, -256(%rbp)	# st_plaq, st_plaq
	.loc 1 22 0
	movl	$0, %eax	#, tmp136
	movq	%rax, -224(%rbp)	# tmp136, st_sum
	movq	-224(%rbp), %rax	# st_sum, st_sum.0
	movq	%rax, -232(%rbp)	# st_sum.0, ss_sum
	.loc 1 24 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.1
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5081,
	call	calloc	#
	movq	%rax, -216(%rbp)	# tmp137, su3mat
	.loc 1 25 0
	cmpq	$0, -216(%rbp)	#, su3mat
	jne	.L2	#,
	.loc 1 27 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 28 0
	movq	stdout(%rip), %rax	# stdout, stdout.2
	movq	%rax, %rdi	# stdout.2,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L2:
	.loc 1 31 0
	movl	$1, %r12d	#, dir1
	jmp	.L3	#
.L12:
	.loc 1 32 0
	movl	$0, %r14d	#, dir2
	jmp	.L4	#
.L11:
	.loc 1 34 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5082
	movq	lattice(%rip), %rsi	# lattice, lattice.3
	movslq	%r14d, %rdx	# dir2, tmp138
	movq	%rdx, %rax	# tmp138, tmp139
	salq	$3, %rax	#, tmp139
	addq	%rdx, %rax	# tmp138, tmp139
	salq	$4, %rax	#, tmp140
	addq	$112, %rax	#, tmp141
	addq	%rsi, %rax	# lattice.3, D.5083
	movq	%rax, %rdx	# D.5083, D.5084
	movq	lattice(%rip), %rax	# lattice, lattice.4
	subq	%rax, %rdx	# lattice.5, D.5084
	movq	%rdx, %rax	# D.5084, D.5084
	movq	%rcx, %r8	# D.5082,
	movl	$3, %ecx	#,
	movl	%r12d, %edx	# dir1,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.5085,
	call	start_gather	#
	movq	%rax, -208(%rbp)	# tmp142, mtag0
	.loc 1 36 0
	movq	gen_pt+8(%rip), %rcx	# gen_pt, D.5082
	movq	lattice(%rip), %rsi	# lattice, lattice.6
	movslq	%r12d, %rdx	# dir1, tmp143
	movq	%rdx, %rax	# tmp143, tmp144
	salq	$3, %rax	#, tmp144
	addq	%rdx, %rax	# tmp143, tmp144
	salq	$4, %rax	#, tmp145
	addq	$112, %rax	#, tmp146
	addq	%rsi, %rax	# lattice.6, D.5083
	movq	%rax, %rdx	# D.5083, D.5084
	movq	lattice(%rip), %rax	# lattice, lattice.7
	subq	%rax, %rdx	# lattice.8, D.5084
	movq	%rdx, %rax	# D.5084, D.5084
	movq	%rcx, %r8	# D.5082,
	movl	$3, %ecx	#,
	movl	%r14d, %edx	# dir2,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.5085,
	call	start_gather	#
	movq	%rax, -200(%rbp)	# tmp147, mtag1
	.loc 1 39 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L5	#
.L6:
	.loc 1 40 0 discriminator 2
	movslq	%r12d, %rdx	# dir1, tmp148
	movq	%rdx, %rax	# tmp148, tmp149
	salq	$3, %rax	#, tmp149
	addq	%rdx, %rax	# tmp148, tmp149
	salq	$4, %rax	#, tmp150
	addq	$112, %rax	#, tmp151
	addq	%r13, %rax	# s, m1
	movq	%rax, %rsi	# m1, m1
	.loc 1 41 0 discriminator 2
	movslq	%r14d, %rdx	# dir2, tmp152
	movq	%rdx, %rax	# tmp152, tmp153
	salq	$3, %rax	#, tmp153
	addq	%rdx, %rax	# tmp152, tmp153
	salq	$4, %rax	#, tmp154
	addq	$112, %rax	#, tmp155
	leaq	0(%r13,%rax), %r15	#, m4
	.loc 1 42 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5081
	movq	%rdx, %rax	# D.5081, tmp156
	salq	$3, %rax	#, tmp156
	addq	%rdx, %rax	# D.5081, tmp156
	salq	$4, %rax	#, tmp157
	movq	%rax, %rdx	# tmp156, D.5081
	movq	-216(%rbp), %rax	# su3mat, tmp158
	addq	%rdx, %rax	# D.5081, D.5083
	movq	%rax, %rdx	# D.5083,
	movq	%r15, %rdi	# m4,
	call	mult_su3_an	#
	.loc 1 39 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r13	#, s
.L5:
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.9
	cmpl	%eax, %ebx	# sites_on_node.9, i
	jl	.L6	#,
	.loc 1 45 0 is_stmt 1
	movq	-208(%rbp), %rax	# mtag0, tmp159
	movq	%rax, %rdi	# tmp159,
	call	wait_gather	#
	.loc 1 46 0
	movq	-200(%rbp), %rax	# mtag1, tmp160
	movq	%rax, %rdi	# tmp160,
	call	wait_gather	#
	.loc 1 48 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L7	#
.L10:
	.loc 1 69 0
	movq	gen_pt(%rip), %rax	# gen_pt, D.5082
	movslq	%ebx, %rdx	# i, D.5081
	salq	$3, %rdx	#, D.5081
	addq	%rdx, %rax	# D.5081, D.5082
	movq	(%rax), %rcx	# *_48, D.5086
	movslq	%ebx, %rdx	# i, D.5081
	movq	%rdx, %rax	# D.5081, tmp161
	salq	$3, %rax	#, tmp161
	addq	%rdx, %rax	# D.5081, tmp161
	salq	$4, %rax	#, tmp162
	movq	%rax, %rdx	# tmp161, D.5081
	movq	-216(%rbp), %rax	# su3mat, tmp163
	leaq	(%rdx,%rax), %rdi	#, D.5083
	leaq	-192(%rbp), %rax	#, tmp164
	movq	%rax, %rdx	# tmp164,
	movq	%rcx, %rsi	# D.5086,
	call	mult_su3_nn	#
	.loc 1 72 0
	cmpl	$3, %r12d	#, dir1
	jne	.L8	#,
	.loc 1 73 0
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.5082
	movslq	%ebx, %rdx	# i, D.5081
	salq	$3, %rdx	#, D.5081
	addq	%rdx, %rax	# D.5081, D.5082
	.loc 1 72 0
	movq	(%rax), %rax	# *_56, D.5086
	leaq	-192(%rbp), %rdx	#, tmp165
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# D.5086,
	call	realtrace_su3	#
	movsd	-224(%rbp), %xmm1	# st_sum, st_sum.10
	addsd	%xmm1, %xmm0	# st_sum.10, st_sum.11
	movsd	%xmm0, -224(%rbp)	# st_sum.11, st_sum
	jmp	.L9	#
.L8:
	.loc 1 75 0
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.5082
	movslq	%ebx, %rdx	# i, D.5081
	salq	$3, %rdx	#, D.5081
	addq	%rdx, %rax	# D.5081, D.5082
	.loc 1 74 0
	movq	(%rax), %rax	# *_64, D.5086
	leaq	-192(%rbp), %rdx	#, tmp166
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# D.5086,
	call	realtrace_su3	#
	movsd	-232(%rbp), %xmm1	# ss_sum, ss_sum.12
	addsd	%xmm1, %xmm0	# ss_sum.12, ss_sum.13
	movsd	%xmm0, -232(%rbp)	# ss_sum.13, ss_sum
.L9:
	.loc 1 48 0
	addl	$1, %ebx	#, i
	addq	$2048, %r13	#, s
.L7:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.14
	cmpl	%eax, %ebx	# sites_on_node.14, i
	jl	.L10	#,
	.loc 1 79 0 is_stmt 1
	movq	-208(%rbp), %rax	# mtag0, tmp167
	movq	%rax, %rdi	# tmp167,
	call	cleanup_gather	#
	.loc 1 80 0
	movq	-200(%rbp), %rax	# mtag1, tmp168
	movq	%rax, %rdi	# tmp168,
	call	cleanup_gather	#
	.loc 1 32 0
	addl	$1, %r14d	#, dir2
.L4:
	.loc 1 32 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %r14d	# dir1, dir2
	jl	.L11	#,
	.loc 1 31 0 is_stmt 1
	addl	$1, %r12d	#, dir1
.L3:
	.loc 1 31 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, dir1
	jle	.L12	#,
	.loc 1 83 0 is_stmt 1
	leaq	-232(%rbp), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	g_doublesum	#
	.loc 1 84 0
	leaq	-224(%rbp), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	g_doublesum	#
	.loc 1 88 0
	movsd	-232(%rbp), %xmm1	# ss_sum, ss_sum.15
	movl	nx(%rip), %edx	# nx, nx.16
	movl	%edx, %eax	# nx.16, tmp171
	addl	%eax, %eax	# tmp171
	addl	%eax, %edx	# tmp171, D.5085
	movl	ny(%rip), %eax	# ny, ny.17
	imull	%eax, %edx	# ny.17, D.5085
	movl	nz(%rip), %eax	# nz, nz.18
	imull	%eax, %edx	# nz.18, D.5085
	movl	nt(%rip), %eax	# nt, nt.19
	imull	%edx, %eax	# D.5085, D.5085
	cvtsi2sd	%eax, %xmm0	# D.5085, D.5087
	divsd	%xmm0, %xmm1	# D.5087, D.5087
	movapd	%xmm1, %xmm0	# D.5087, D.5087
	movq	-248(%rbp), %rax	# ss_plaq, tmp172
	movsd	%xmm0, (%rax)	# D.5087, *ss_plaq_84(D)
	.loc 1 90 0
	movsd	-224(%rbp), %xmm1	# st_sum, st_sum.20
	movl	nx(%rip), %edx	# nx, nx.21
	movl	%edx, %eax	# nx.21, tmp173
	addl	%eax, %eax	# tmp173
	addl	%eax, %edx	# tmp173, D.5085
	movl	ny(%rip), %eax	# ny, ny.22
	imull	%eax, %edx	# ny.22, D.5085
	movl	nz(%rip), %eax	# nz, nz.23
	imull	%eax, %edx	# nz.23, D.5085
	movl	nt(%rip), %eax	# nt, nt.24
	imull	%edx, %eax	# D.5085, D.5085
	cvtsi2sd	%eax, %xmm0	# D.5085, D.5087
	divsd	%xmm0, %xmm1	# D.5087, D.5087
	movapd	%xmm1, %xmm0	# D.5087, D.5087
	movq	-256(%rbp), %rax	# st_plaq, tmp174
	movsd	%xmm0, (%rax)	# D.5087, *st_plaq_96(D)
	.loc 1 92 0
	movq	-216(%rbp), %rax	# su3mat, tmp175
	movq	%rax, %rdi	# tmp175,
	call	free	#
	.loc 1 93 0
	addq	$216, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	d_plaquette, .-d_plaquette
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "complex.h"
	.file 6 "random.h"
	.file 7 "su3.h"
	.file 8 "macros.h"
	.file 9 "./lattice.h"
	.file 10 "comdefs.h"
	.file 11 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x736
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF100
	.byte	0x1
	.long	.LASF101
	.long	.LASF102
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF103
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x49
	.long	0x2c4
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x4a
	.long	0x29c
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4b
	.long	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x4c
	.long	0x2a3
	.uleb128 0xd
	.byte	0x58
	.byte	0x6
	.byte	0x6
	.long	0x355
	.uleb128 0xe
	.string	"r0"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xa
	.long	0x29c
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0xb
	.long	0x2cf
	.uleb128 0xd
	.byte	0x90
	.byte	0x7
	.byte	0xe
	.long	0x373
	.uleb128 0xe
	.string	"e"
	.byte	0x7
	.byte	0xe
	.long	0x373
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x389
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xe
	.long	0x360
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.uleb128 0xe
	.string	"c"
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x3b7
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0xf
	.long	0x394
	.uleb128 0xd
	.byte	0x50
	.byte	0x7
	.byte	0x10
	.long	0x41f
	.uleb128 0xe
	.string	"m01"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x11
	.long	0x3c2
	.uleb128 0xb
	.long	0x3b7
	.long	0x43a
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x2a
	.long	0x62
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xf
	.value	0x800
	.byte	0x9
	.byte	0x1f
	.long	0x562
	.uleb128 0xe
	.string	"x"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x29
	.long	0x355
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x32
	.long	0x562
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x9
	.byte	0x3e
	.long	0x572
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF71
	.byte	0x9
	.byte	0x42
	.long	0x582
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x9
	.byte	0x45
	.long	0x3b7
	.value	0x410
	.uleb128 0x11
	.long	.LASF72
	.byte	0x9
	.byte	0x46
	.long	0x3b7
	.value	0x440
	.uleb128 0x11
	.long	.LASF73
	.byte	0x9
	.byte	0x47
	.long	0x3b7
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x9
	.byte	0x48
	.long	0x3b7
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x9
	.byte	0x49
	.long	0x3b7
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x9
	.byte	0x4a
	.long	0x3b7
	.value	0x500
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.byte	0x5d
	.long	0x42a
	.value	0x530
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.byte	0x5f
	.long	0x42a
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.byte	0x60
	.long	0x3b7
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.byte	0x62
	.long	0x389
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.byte	0x62
	.long	0x389
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x389
	.long	0x572
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x41f
	.long	0x582
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x29c
	.long	0x592
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.byte	0x63
	.long	0x44b
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x35
	.long	0x5d6
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x37
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x39
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x3b
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x40
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xa
	.byte	0x42
	.long	0x59d
	.uleb128 0x12
	.long	.LASF104
	.byte	0x1
	.byte	0xd
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bd
	.uleb128 0x13
	.long	.LASF86
	.byte	0x1
	.byte	0xd
	.long	0x6bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x13
	.long	.LASF87
	.byte	0x1
	.byte	0xd
	.long	0x6bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xf
	.long	0x6c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.byte	0x10
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0x10
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x11
	.long	0x6c9
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x16
	.string	"m1"
	.byte	0x1
	.byte	0x12
	.long	0x6c3
	.uleb128 0x15
	.string	"m4"
	.byte	0x1
	.byte	0x12
	.long	0x6c3
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0x13
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.long	.LASF92
	.byte	0x1
	.byte	0x14
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.byte	0x14
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.byte	0x15
	.long	0x6cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0x15
	.long	0x6cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29c
	.uleb128 0x6
	.byte	0x8
	.long	0x389
	.uleb128 0x6
	.byte	0x8
	.long	0x592
	.uleb128 0x6
	.byte	0x8
	.long	0x5d6
	.uleb128 0x17
	.long	.LASF96
	.byte	0xb
	.byte	0xa9
	.long	0x25b
	.uleb128 0x18
	.string	"nx"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x18
	.string	"ny"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x18
	.string	"nz"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x18
	.string	"nt"
	.byte	0x9
	.byte	0x74
	.long	0x62
	.uleb128 0x17
	.long	.LASF97
	.byte	0x9
	.byte	0x87
	.long	0x62
	.uleb128 0x17
	.long	.LASF98
	.byte	0x9
	.byte	0x9a
	.long	0x6c9
	.uleb128 0xb
	.long	0x445
	.long	0x72e
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.long	.LASF99
	.byte	0x9
	.byte	0x9f
	.long	0x71e
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
	.uleb128 0x2116
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF31:
	.string	"_shortbuf"
.LASF103:
	.string	"_IO_lock_t"
.LASF71:
	.string	"phase"
.LASF102:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF86:
	.string	"ss_plaq"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF70:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF104:
	.string	"d_plaquette"
.LASF101:
	.string	"d_plaq4.c"
.LASF64:
	.string	"anti_hermitmat"
.LASF94:
	.string	"mtag0"
.LASF80:
	.string	"site"
.LASF98:
	.string	"lattice"
.LASF45:
	.string	"_pos"
.LASF96:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF48:
	.string	"float"
.LASF67:
	.string	"index"
.LASF47:
	.string	"long long unsigned int"
.LASF92:
	.string	"ss_sum"
.LASF85:
	.string	"msg_tag"
.LASF79:
	.string	"staple"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF99:
	.string	"gen_pt"
.LASF26:
	.string	"_fileno"
.LASF7:
	.string	"size_t"
.LASF55:
	.string	"ic_state"
.LASF74:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF43:
	.string	"_next"
.LASF66:
	.string	"parity"
.LASF95:
	.string	"mtag1"
.LASF59:
	.string	"su3_vector"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF83:
	.string	"msg_buf"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"dir1"
.LASF90:
	.string	"dir2"
.LASF63:
	.string	"space"
.LASF75:
	.string	"tempvec"
.LASF54:
	.string	"addend"
.LASF88:
	.string	"su3mat"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF82:
	.string	"msg_size"
.LASF21:
	.string	"_IO_save_base"
.LASF84:
	.string	"msg_id"
.LASF97:
	.string	"sites_on_node"
.LASF56:
	.string	"scale"
.LASF81:
	.string	"msg_node"
.LASF77:
	.string	"templongv1"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF30:
	.string	"_vtable_offset"
.LASF68:
	.string	"site_prn"
.LASF62:
	.string	"m22im"
.LASF100:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF61:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF76:
	.string	"templongvec"
.LASF60:
	.string	"m00im"
.LASF87:
	.string	"st_plaq"
.LASF91:
	.string	"mtmp"
.LASF52:
	.string	"complex"
.LASF50:
	.string	"real"
.LASF53:
	.string	"multiplier"
.LASF32:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"_sbuf"
.LASF78:
	.string	"tempmat1"
.LASF51:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"field_offset"
.LASF73:
	.string	"cg_p"
.LASF57:
	.string	"double_prn"
.LASF93:
	.string	"st_sum"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF49:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF72:
	.string	"resid"
.LASF58:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF69:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
