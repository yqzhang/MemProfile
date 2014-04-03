	.file	"update.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# update.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	update
	.type	update, @function
update:
.LFB2:
	.file 1 "update.c"
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 21 0
	movl	$0, -36(%rbp)	#, iters
	.loc 1 31 0
	call	ranmom	#
	.loc 1 40 0
	movl	$1, -40(%rbp)	#, step
	jmp	.L2	#
.L3:
	.loc 1 70 0 discriminator 2
	movl	nflavors(%rip), %eax	# nflavors, nflavors.0
	cvtsi2sd	%eax, %xmm0	# nflavors.0, D.5001
	movsd	.LC0(%rip), %xmm1	#, tmp86
	divsd	%xmm1, %xmm0	# tmp86, D.5001
	movsd	.LC1(%rip), %xmm1	#, tmp87
	subsd	%xmm0, %xmm1	# D.5001, D.5001
	movapd	%xmm1, %xmm0	# D.5001, D.5001
	movsd	epsilon(%rip), %xmm1	# epsilon, epsilon.1
	mulsd	%xmm1, %xmm0	# epsilon.1, D.5001
	call	update_u	#
	.loc 1 73 0 discriminator 2
	movq	mass(%rip), %rax	# mass, mass.2
	movl	$2, %esi	#,
	movq	%rax, -56(%rbp)	# mass.2, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$1040, %edi	#,
	call	grsource_imp	#
	movabsq	$-4526534890170089472, %rax	#, tmp88
	movq	%rax, -24(%rbp)	# tmp88, cg_time
	.loc 1 76 0 discriminator 2
	movl	nflavors(%rip), %eax	# nflavors, nflavors.3
	cvtsi2sd	%eax, %xmm0	# nflavors.3, D.5001
	movsd	epsilon(%rip), %xmm1	# epsilon, epsilon.4
	mulsd	%xmm1, %xmm0	# epsilon.4, D.5001
	movsd	.LC0(%rip), %xmm1	#, tmp89
	divsd	%xmm1, %xmm0	# tmp89, D.5001
	call	update_u	#
	.loc 1 80 0 discriminator 2
	movq	rsqmin(%rip), %rdx	# rsqmin, rsqmin.5
	movl	niter(%rip), %esi	# niter, niter.6
	movq	mass(%rip), %rax	# mass, mass.7
	leaq	-32(%rbp), %rcx	#, tmp90
	movq	%rcx, %r8	# tmp90,
	movl	$2, %ecx	#,
	movq	%rdx, -56(%rbp)	# rsqmin.5, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movl	%esi, %edx	# niter.6,
	movq	%rax, -56(%rbp)	# mass.7, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$1184, %esi	#,
	movl	$1040, %edi	#,
	call	ks_congrad	#
	addl	%eax, -36(%rbp)	# D.5000, iters
	.loc 1 82 0 discriminator 2
	cvtsi2sd	-40(%rbp), %xmm0	# step, D.5001
	movsd	.LC1(%rip), %xmm1	#, tmp91
	subsd	%xmm1, %xmm0	# tmp91, D.5001
	movsd	epsilon(%rip), %xmm1	# epsilon, epsilon.8
	mulsd	%xmm1, %xmm0	# epsilon.8, tmp92
	movsd	%xmm0, -24(%rbp)	# tmp92, cg_time
	.loc 1 84 0 discriminator 2
	movq	epsilon(%rip), %rax	# epsilon, epsilon.9
	movq	%rax, -56(%rbp)	# epsilon.9, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	update_h	#
	.loc 1 87 0 discriminator 2
	movsd	epsilon(%rip), %xmm1	# epsilon, epsilon.10
	movsd	.LC1(%rip), %xmm0	#, tmp93
	mulsd	%xmm1, %xmm0	# epsilon.10, D.5001
	call	update_u	#
	.loc 1 90 0 discriminator 2
	movl	$0, %edi	#,
	call	rephase	#
	.loc 1 91 0 discriminator 2
	call	reunitarize	#
	.loc 1 92 0 discriminator 2
	movl	$1, %edi	#,
	call	rephase	#
	.loc 1 40 0 discriminator 2
	addl	$1, -40(%rbp)	#, step
.L2:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	steps(%rip), %eax	# steps, steps.11
	cmpl	%eax, -40(%rbp)	# steps.11, step
	jle	.L3	#,
	.loc 1 122 0 is_stmt 1
	movl	steps(%rip), %eax	# steps, steps.12
	testl	%eax, %eax	# steps.12
	jle	.L4	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	movl	steps(%rip), %ebx	# steps, steps.13
	movl	-36(%rbp), %eax	# iters, tmp96
	cltd
	idivl	%ebx	# steps.13
	jmp	.L6	#
.L4:
	.loc 1 123 0 is_stmt 1
	movl	$-99, %eax	#, D.5000
.L6:
	.loc 1 124 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	update, .-update
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075838976
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.file 5 "macros.h"
	.file 6 "lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x464
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.long	.LASF58
	.long	.LASF59
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
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0xb0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x4a
	.long	0x88
	.byte	0
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x4b
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x4c
	.long	0x8f
	.uleb128 0x4
	.byte	0x58
	.byte	0x3
	.byte	0x6
	.long	0x141
	.uleb128 0x7
	.string	"r0"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x7
	.string	"r1"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x7
	.string	"r2"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.string	"r3"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x7
	.string	"r4"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x7
	.string	"r5"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x7
	.string	"r6"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x5
	.long	.LASF18
	.byte	0x3
	.byte	0xa
	.long	0x88
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0xb
	.long	0xbb
	.uleb128 0x4
	.byte	0x90
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.uleb128 0x7
	.string	"e"
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xb0
	.long	0x175
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0x14c
	.uleb128 0x4
	.byte	0x30
	.byte	0x4
	.byte	0xf
	.long	0x193
	.uleb128 0x7
	.string	"c"
	.byte	0x4
	.byte	0xf
	.long	0x193
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xb0
	.long	0x1a3
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.byte	0xf
	.long	0x180
	.uleb128 0x4
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x20b
	.uleb128 0x7
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0
	.uleb128 0x7
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0x10
	.uleb128 0x7
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0x20
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x30
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x38
	.uleb128 0x5
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x40
	.uleb128 0x5
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x1ae
	.uleb128 0x8
	.long	0x1a3
	.long	0x226
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0x2a
	.long	0x57
	.uleb128 0xa
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x348
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x7
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x7
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x5
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x6c
	.byte	0x8
	.uleb128 0x5
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x5
	.long	.LASF31
	.byte	0x6
	.byte	0x29
	.long	0x141
	.byte	0x10
	.uleb128 0x5
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x5
	.long	.LASF33
	.byte	0x6
	.byte	0x32
	.long	0x348
	.byte	0x70
	.uleb128 0xb
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x358
	.value	0x2b0
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x368
	.value	0x3f0
	.uleb128 0xb
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1a3
	.value	0x410
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1a3
	.value	0x440
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1a3
	.value	0x470
	.uleb128 0xb
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1a3
	.value	0x4a0
	.uleb128 0xb
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1a3
	.value	0x4d0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1a3
	.value	0x500
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x216
	.value	0x530
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x216
	.value	0x5f0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1a3
	.value	0x6b0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x175
	.value	0x6e0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x175
	.value	0x770
	.byte	0
	.uleb128 0x8
	.long	0x175
	.long	0x358
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x20b
	.long	0x368
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x88
	.long	0x378
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x231
	.uleb128 0xd
	.long	.LASF60
	.byte	0x1
	.byte	0x14
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0x16
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF61
	.byte	0x1
	.byte	0x17
	.long	0x3e9
	.uleb128 0x10
	.long	0x40e
	.uleb128 0x10
	.long	0x40e
	.uleb128 0x10
	.long	0x40e
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.byte	0x18
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.byte	0x18
	.long	0x88
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0x18
	.long	0x88
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.long	0x88
	.uleb128 0x13
	.long	.LASF50
	.byte	0x6
	.byte	0x77
	.long	0x57
	.uleb128 0x13
	.long	.LASF51
	.byte	0x6
	.byte	0x77
	.long	0x57
	.uleb128 0x13
	.long	.LASF52
	.byte	0x6
	.byte	0x77
	.long	0x57
	.uleb128 0x13
	.long	.LASF53
	.byte	0x6
	.byte	0x78
	.long	0x88
	.uleb128 0x13
	.long	.LASF54
	.byte	0x6
	.byte	0x79
	.long	0x88
	.uleb128 0x13
	.long	.LASF55
	.byte	0x6
	.byte	0x7a
	.long	0x88
	.uleb128 0x13
	.long	.LASF56
	.byte	0x6
	.byte	0x9a
	.long	0x461
	.uleb128 0x12
	.byte	0x8
	.long	0x378
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
.LASF57:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF45:
	.string	"iters"
.LASF34:
	.string	"phase"
.LASF19:
	.string	"complex"
.LASF43:
	.string	"site"
.LASF38:
	.string	"tempvec"
.LASF36:
	.string	"cg_p"
.LASF39:
	.string	"templongvec"
.LASF52:
	.string	"nflavors"
.LASF30:
	.string	"index"
.LASF47:
	.string	"cg_time"
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
.LASF60:
	.string	"update"
.LASF56:
	.string	"lattice"
.LASF29:
	.string	"parity"
.LASF25:
	.string	"m22im"
.LASF61:
	.string	"predict_next_xxx"
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
.LASF49:
	.string	"next_cg_time"
.LASF18:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF14:
	.string	"imag"
.LASF13:
	.string	"real"
.LASF50:
	.string	"steps"
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
.LASF6:
	.string	"long int"
.LASF53:
	.string	"epsilon"
.LASF16:
	.string	"addend"
.LASF59:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF48:
	.string	"old_cg_time"
.LASF32:
	.string	"space1"
.LASF55:
	.string	"rsqmin"
.LASF51:
	.string	"niter"
.LASF35:
	.string	"resid"
.LASF46:
	.string	"final_rsq"
.LASF54:
	.string	"mass"
.LASF17:
	.string	"ic_state"
.LASF58:
	.string	"update.c"
.LASF27:
	.string	"anti_hermitmat"
.LASF44:
	.string	"step"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
