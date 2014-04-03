	.file	"f_meas.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# f_meas.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC3:
	.string	"PBP: mass %e     %e  %e ( %d of %d )\n"
	.align 8
.LC4:
	.string	"FACTION: mass = %e,  %e ( %d of %d )\n"
	.text
	.globl	f_meas_imp
	.type	f_meas_imp, @function
f_meas_imp:
.LFB2:
	.file 1 "f_meas.c"
	.loc 1 21 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -100(%rbp)	# phi_off, phi_off
	movl	%esi, -104(%rbp)	# xxx_off, xxx_off
	movsd	%xmm0, -112(%rbp)	# mass, mass
	.loc 1 38 0
	movl	$1, -84(%rbp)	#, npbp_reps
	.loc 1 43 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.0
	cmpl	$1, %eax	#, valid_longlinks.0
	je	.L2	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L2:
	.loc 1 44 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.1
	cmpl	$1, %eax	#, valid_fatlinks.1
	je	.L3	#,
	.loc 1 44 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L3:
	.loc 1 47 0 is_stmt 1
	movl	$0, -88(%rbp)	#, jpbp_reps
	jmp	.L4	#
.L11:
	.loc 1 48 0
	movl	$0, %eax	#, tmp105
	movq	%rax, -64(%rbp)	# tmp105, rfaction
	movq	-64(%rbp), %rax	# rfaction, rfaction.2
	movq	%rax, -72(%rbp)	# rfaction.2, rpbp_o
	movq	-72(%rbp), %rax	# rpbp_o, rpbp_o.3
	movq	%rax, -80(%rbp)	# rpbp_o.3, rpbp_e
	.loc 1 51 0
	movq	-112(%rbp), %rax	# mass, tmp106
	movl	-100(%rbp), %edx	# phi_off, tmp107
	movl	$3, %esi	#,
	movq	%rax, -120(%rbp)	# tmp106, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	%edx, %edi	# tmp107,
	call	grsource_imp	#
	.loc 1 52 0
	movq	-112(%rbp), %rax	# mass, tmp108
	movl	-100(%rbp), %edx	# phi_off, tmp109
	movl	-104(%rbp), %ecx	# xxx_off, tmp110
	movq	%rax, -120(%rbp)	# tmp108, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp110,
	movl	$1280, %edi	#,
	call	mat_invert_uml	#
	.loc 1 56 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L5	#
.L6:
	.loc 1 57 0 discriminator 2
	movl	-104(%rbp), %eax	# xxx_off, tmp111
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5017
	movl	-100(%rbp), %eax	# phi_off, tmp112
	cltq
	addq	%rbx, %rax	# st, D.5017
	movq	%rdx, %rsi	# D.5017,
	movq	%rax, %rdi	# D.5017,
	call	su3_dot	#
	movsd	%xmm0, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rax	# %sfp, tmp113
	movsd	%xmm1, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rdx	# %sfp, tmp114
	movq	%rax, -32(%rbp)	# tmp113, cc
	movq	%rdx, -24(%rbp)	# tmp114, cc
	.loc 1 59 0 discriminator 2
	movsd	-32(%rbp), %xmm1	# cc.real, D.5018
	movsd	-64(%rbp), %xmm0	# rfaction, rfaction.4
	addsd	%xmm1, %xmm0	# D.5018, rfaction.5
	movsd	%xmm0, -64(%rbp)	# rfaction.5, rfaction
	.loc 1 60 0 discriminator 2
	movl	-104(%rbp), %eax	# xxx_off, tmp115
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5017
	leaq	1280(%rbx), %rax	#, D.5017
	movq	%rdx, %rsi	# D.5017,
	movq	%rax, %rdi	# D.5017,
	call	su3_dot	#
	movsd	%xmm0, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rax	# %sfp, tmp116
	movsd	%xmm1, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rdx	# %sfp, tmp117
	movq	%rax, -32(%rbp)	# tmp116, cc
	movq	%rdx, -24(%rbp)	# tmp117, cc
	.loc 1 61 0 discriminator 2
	movsd	-32(%rbp), %xmm1	# cc.real, D.5018
	movsd	-80(%rbp), %xmm0	# rpbp_e, rpbp_e.6
	addsd	%xmm1, %xmm0	# D.5018, rpbp_e.7
	movsd	%xmm0, -80(%rbp)	# rpbp_e.7, rpbp_e
	.loc 1 56 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L5:
	.loc 1 56 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, even_sites_on_node.8
	cmpl	%eax, %r12d	# even_sites_on_node.8, i
	jl	.L6	#,
	.loc 1 64 0 is_stmt 1
	movl	even_sites_on_node(%rip), %r12d	# even_sites_on_node, i
	movq	lattice(%rip), %rax	# lattice, lattice.9
	movslq	%r12d, %rdx	# i, D.5019
	salq	$11, %rdx	#, D.5019
	leaq	(%rax,%rdx), %rbx	#, st
	jmp	.L7	#
.L8:
	.loc 1 65 0 discriminator 2
	movl	-104(%rbp), %eax	# xxx_off, tmp118
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5017
	leaq	1280(%rbx), %rax	#, D.5017
	movq	%rdx, %rsi	# D.5017,
	movq	%rax, %rdi	# D.5017,
	call	su3_dot	#
	movsd	%xmm0, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rax	# %sfp, tmp119
	movsd	%xmm1, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rdx	# %sfp, tmp120
	movq	%rax, -32(%rbp)	# tmp119, cc
	movq	%rdx, -24(%rbp)	# tmp120, cc
	.loc 1 66 0 discriminator 2
	movsd	-32(%rbp), %xmm1	# cc.real, D.5018
	movsd	-72(%rbp), %xmm0	# rpbp_o, rpbp_o.10
	addsd	%xmm1, %xmm0	# D.5018, rpbp_o.11
	movsd	%xmm0, -72(%rbp)	# rpbp_o.11, rpbp_o
	.loc 1 64 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L7:
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.12
	cmpl	%eax, %r12d	# sites_on_node.12, i
	jl	.L8	#,
	.loc 1 69 0 is_stmt 1
	leaq	-72(%rbp), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	g_doublesum	#
	.loc 1 70 0
	leaq	-80(%rbp), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	g_doublesum	#
	.loc 1 71 0
	leaq	-64(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	g_doublesum	#
	.loc 1 73 0
	movl	volume(%rip), %eax	# volume, volume.13
	cvtsi2sd	%eax, %xmm0	# volume.13, D.5018
	movsd	.LC1(%rip), %xmm1	#, tmp124
	divsd	%xmm0, %xmm1	# D.5018, D.5018
	movapd	%xmm1, %xmm0	# D.5018, D.5018
	movsd	-72(%rbp), %xmm1	# rpbp_o, rpbp_o.14
	mulsd	%xmm1, %xmm0	# rpbp_o.14, tmp125
	movsd	%xmm0, -56(%rbp)	# tmp125, r_psi_bar_psi_odd
	.loc 1 74 0
	movl	volume(%rip), %eax	# volume, volume.15
	cvtsi2sd	%eax, %xmm0	# volume.15, D.5018
	movsd	.LC1(%rip), %xmm1	#, tmp126
	divsd	%xmm0, %xmm1	# D.5018, D.5018
	movapd	%xmm1, %xmm0	# D.5018, D.5018
	movsd	-80(%rbp), %xmm1	# rpbp_e, rpbp_e.16
	mulsd	%xmm1, %xmm0	# rpbp_e.16, tmp127
	movsd	%xmm0, -48(%rbp)	# tmp127, r_psi_bar_psi_even
	.loc 1 75 0
	movl	volume(%rip), %eax	# volume, volume.17
	cvtsi2sd	%eax, %xmm0	# volume.17, D.5018
	movsd	.LC2(%rip), %xmm1	#, tmp128
	divsd	%xmm0, %xmm1	# D.5018, D.5018
	movapd	%xmm1, %xmm0	# D.5018, D.5018
	movsd	-64(%rbp), %xmm1	# rfaction, rfaction.18
	mulsd	%xmm1, %xmm0	# rfaction.18, tmp129
	movsd	%xmm0, -40(%rbp)	# tmp129, r_ferm_action
	.loc 1 76 0
	movl	this_node(%rip), %eax	# this_node, this_node.19
	testl	%eax, %eax	# this_node.19
	jne	.L9	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# jpbp_reps, tmp130
	leal	1(%rax), %esi	#, D.5020
	movl	-84(%rbp), %edx	# npbp_reps, tmp131
	movq	-56(%rbp), %rdi	# r_psi_bar_psi_odd, tmp132
	movq	-48(%rbp), %rcx	# r_psi_bar_psi_even, tmp133
	movq	-112(%rbp), %rax	# mass, tmp134
	movq	%rdi, -120(%rbp)	# tmp132, %sfp
	movsd	-120(%rbp), %xmm2	# %sfp,
	movq	%rcx, -120(%rbp)	# tmp133, %sfp
	movsd	-120(%rbp), %xmm1	# %sfp,
	movq	%rax, -120(%rbp)	# tmp134, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
.L9:
	.loc 1 78 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.20
	testl	%eax, %eax	# this_node.20
	jne	.L10	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# jpbp_reps, tmp135
	leal	1(%rax), %esi	#, D.5020
	movl	-84(%rbp), %edx	# npbp_reps, tmp136
	movq	-40(%rbp), %rcx	# r_ferm_action, tmp137
	movq	-112(%rbp), %rax	# mass, tmp138
	movq	%rcx, -120(%rbp)	# tmp137, %sfp
	movsd	-120(%rbp), %xmm1	# %sfp,
	movq	%rax, -120(%rbp)	# tmp138, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	$.LC4, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L10:
	.loc 1 47 0 is_stmt 1
	addl	$1, -88(%rbp)	#, jpbp_reps
.L4:
	.loc 1 47 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# jpbp_reps, tmp139
	cmpl	-84(%rbp), %eax	# npbp_reps, tmp139
	jl	.L11	#,
	.loc 1 81 0 is_stmt 1
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	f_meas_imp, .-f_meas_imp
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "random.h"
	.file 3 "./macros.h"
	.file 4 "./complex.h"
	.file 5 "./su3.h"
	.file 6 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.long	.LASF63
	.long	.LASF64
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
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0x115
	.uleb128 0x5
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x5
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x5
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x5
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x5
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x5
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x5
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0xa
	.long	0x88
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0xb
	.long	0x8f
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.long	0x57
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.byte	0x49
	.long	0x14c
	.uleb128 0x6
	.long	.LASF19
	.byte	0x4
	.byte	0x4a
	.long	0x88
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x4
	.byte	0x4b
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0x4c
	.long	0x12b
	.uleb128 0x4
	.byte	0x90
	.byte	0x5
	.byte	0xe
	.long	0x16a
	.uleb128 0x5
	.string	"e"
	.byte	0x5
	.byte	0xe
	.long	0x16a
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x14c
	.long	0x180
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x5
	.byte	0xe
	.long	0x157
	.uleb128 0x4
	.byte	0x30
	.byte	0x5
	.byte	0xf
	.long	0x19e
	.uleb128 0x5
	.string	"c"
	.byte	0x5
	.byte	0xf
	.long	0x19e
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x14c
	.long	0x1ae
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.byte	0xf
	.long	0x18b
	.uleb128 0x4
	.byte	0x50
	.byte	0x5
	.byte	0x10
	.long	0x216
	.uleb128 0x5
	.string	"m01"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0
	.uleb128 0x5
	.string	"m02"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0x10
	.uleb128 0x5
	.string	"m12"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0x20
	.uleb128 0x6
	.long	.LASF24
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x30
	.uleb128 0x6
	.long	.LASF25
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x38
	.uleb128 0x6
	.long	.LASF26
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x40
	.uleb128 0x6
	.long	.LASF27
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x11
	.long	0x1b9
	.uleb128 0x8
	.long	0x1ae
	.long	0x231
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x348
	.uleb128 0x5
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x5
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x5
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x6c
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
	.long	0x115
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
	.long	0x1ae
	.value	0x410
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1ae
	.value	0x440
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1ae
	.value	0x470
	.uleb128 0xb
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1ae
	.value	0x4a0
	.uleb128 0xb
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1ae
	.value	0x4d0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1ae
	.value	0x500
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x221
	.value	0x530
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x221
	.value	0x5f0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1ae
	.value	0x6b0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x180
	.value	0x6e0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x180
	.value	0x770
	.byte	0
	.uleb128 0x8
	.long	0x180
	.long	0x358
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x216
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
	.uleb128 0x7
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x231
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0x15
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x468
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.byte	0x15
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x15
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0x15
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.long	.LASF47
	.byte	0x1
	.byte	0x16
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x16
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.byte	0x17
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x10
	.string	"st"
	.byte	0x1
	.byte	0x1a
	.long	0x468
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x1b
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x1b
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x1b
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"cc"
	.byte	0x1
	.byte	0x1c
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0x26
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0x28
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x378
	.uleb128 0x12
	.long	.LASF55
	.byte	0x6
	.byte	0x75
	.long	0x57
	.uleb128 0x12
	.long	.LASF56
	.byte	0x6
	.byte	0x87
	.long	0x57
	.uleb128 0x12
	.long	.LASF57
	.byte	0x6
	.byte	0x88
	.long	0x57
	.uleb128 0x12
	.long	.LASF58
	.byte	0x6
	.byte	0x8b
	.long	0x57
	.uleb128 0x12
	.long	.LASF59
	.byte	0x6
	.byte	0x8e
	.long	0x57
	.uleb128 0x12
	.long	.LASF60
	.byte	0x6
	.byte	0x8f
	.long	0x57
	.uleb128 0x12
	.long	.LASF61
	.byte	0x6
	.byte	0x9a
	.long	0x468
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
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF65:
	.string	"f_meas_imp"
.LASF18:
	.string	"field_offset"
.LASF13:
	.string	"multiplier"
.LASF62:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF34:
	.string	"phase"
.LASF21:
	.string	"complex"
.LASF57:
	.string	"even_sites_on_node"
.LASF43:
	.string	"site"
.LASF38:
	.string	"tempvec"
.LASF36:
	.string	"cg_p"
.LASF39:
	.string	"templongvec"
.LASF30:
	.string	"index"
.LASF58:
	.string	"this_node"
.LASF45:
	.string	"xxx_off"
.LASF33:
	.string	"link"
.LASF44:
	.string	"phi_off"
.LASF11:
	.string	"float"
.LASF31:
	.string	"site_prn"
.LASF22:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF19:
	.string	"real"
.LASF61:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"volume"
.LASF56:
	.string	"sites_on_node"
.LASF29:
	.string	"parity"
.LASF59:
	.string	"valid_longlinks"
.LASF24:
	.string	"m00im"
.LASF17:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"space"
.LASF50:
	.string	"rpbp_e"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF16:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF51:
	.string	"rpbp_o"
.LASF20:
	.string	"imag"
.LASF49:
	.string	"r_ferm_action"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"su3_vector"
.LASF42:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF40:
	.string	"templongv1"
.LASF32:
	.string	"space1"
.LASF48:
	.string	"r_psi_bar_psi_odd"
.LASF14:
	.string	"addend"
.LASF52:
	.string	"rfaction"
.LASF64:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF25:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF60:
	.string	"valid_fatlinks"
.LASF47:
	.string	"r_psi_bar_psi_even"
.LASF35:
	.string	"resid"
.LASF46:
	.string	"mass"
.LASF15:
	.string	"ic_state"
.LASF26:
	.string	"m22im"
.LASF63:
	.string	"f_meas.c"
.LASF28:
	.string	"anti_hermitmat"
.LASF54:
	.string	"jpbp_reps"
.LASF53:
	.string	"npbp_reps"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
