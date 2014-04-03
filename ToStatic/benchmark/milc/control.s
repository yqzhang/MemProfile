	.file	"control.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# control.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	gauge_info_keyword
	.section	.rodata
.LC0:
	.string	"magic_number"
.LC1:
	.string	"time_stamp"
.LC2:
	.string	"checksums"
.LC3:
	.string	"nx"
.LC4:
	.string	"ny"
.LC5:
	.string	"nz"
.LC6:
	.string	"nt"
.LC7:
	.string	"action.description"
.LC8:
	.string	"gauge.description"
.LC9:
	.string	"gauge.beta11"
.LC10:
	.string	"gauge.beta12"
.LC11:
	.string	"gauge.tadpole.u0"
.LC12:
	.string	"gauge.nloops"
.LC13:
	.string	"gauge.nreps"
.LC14:
	.string	"gauge.previous.filename"
.LC15:
	.string	"gauge.previous.time_stamp"
.LC16:
	.string	"gauge.previous.checksums"
.LC17:
	.string	"gauge.fix.description"
.LC18:
	.string	"gauge.fix.tolerance"
.LC19:
	.string	"gauge.smear.description"
.LC20:
	.string	"gauge.smear.steps"
.LC21:
	.string	"gauge.smear.factor"
.LC22:
	.string	"quark.description"
.LC23:
	.string	"quark.flavors"
.LC24:
	.string	"quark.flavors1"
.LC25:
	.string	"quark.flavors2"
.LC26:
	.string	"quark.mass"
.LC27:
	.string	"quark.mass1"
.LC28:
	.string	"quark.mass2"
.LC29:
	.string	"quark.kappa"
.LC30:
	.string	"quark.link.c1"
.LC31:
	.string	"quark.link.c3"
.LC32:
	.string	"quark.staple.w3"
.LC33:
	.string	"quark.clover.c0"
.LC34:
	.string	"quark.clover.u0"
.LC35:
	.string	""
	.data
	.align 32
	.type	gauge_info_keyword, @object
	.size	gauge_info_keyword, 288
gauge_info_keyword:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.comm	ensemble_id,256,32
	.comm	sequence_number,4,4
	.comm	nx,4,4
	.comm	ny,4,4
	.comm	nz,4,4
	.comm	nt,4,4
	.comm	volume,4,4
	.comm	iseed,4,4
	.comm	warms,4,4
	.comm	trajecs,4,4
	.comm	steps,4,4
	.comm	niter,4,4
	.comm	propinterval,4,4
	.comm	nflavors,4,4
	.comm	epsilon,8,8
	.comm	beta,8,8
	.comm	mass,8,8
	.comm	u0,8,8
	.comm	rsqmin,8,8
	.comm	rsqprop,8,8
	.comm	startflag,4,4
	.comm	saveflag,4,4
	.comm	startfile,256,32
	.comm	savefile,256,32
	.comm	total_iters,4,4
	.comm	phases_in,4,4
	.comm	source_start,4,4
	.comm	source_inc,4,4
	.comm	n_sources,4,4
	.comm	sites_on_node,4,4
	.comm	even_sites_on_node,4,4
	.comm	odd_sites_on_node,4,4
	.comm	number_of_nodes,4,4
	.comm	this_node,4,4
	.comm	valid_longlinks,4,4
	.comm	valid_fatlinks,4,4
	.comm	startlat_p,8,8
	.comm	node_prn,88,32
	.comm	lattice,8,8
	.comm	gen_pt,128,32
	.comm	t_longlink,8,8
	.comm	t_fatlink,8,8
	.comm	start_lat_hdr,92,32
	.section	.rodata
.LC37:
	.string	"WARMUPS COMPLETED"
.LC38:
	.string	"RUNNING COMPLETED"
	.align 8
.LC39:
	.string	"average cg iters for step= %e\n"
.LC40:
	.string	"total_iters = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "control.c"
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# argc, argc
	movq	%rsi, -64(%rbp)	# argv, argv
	.loc 1 27 0
	movq	-64(%rbp), %rdx	# argv, tmp85
	movl	-52(%rbp), %eax	# argc, tmp86
	movq	%rdx, %rsi	# tmp85,
	movl	%eax, %edi	# tmp86,
	call	initialize_machine	#
	.loc 1 28 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 30 0
	movl	$0, %eax	#,
	call	setup	#
	movl	%eax, -24(%rbp)	# tmp87, prompt
	.loc 1 32 0
	jmp	.L2	#
.L12:
	.loc 1 35 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	.LC36(%rip), %xmm1	#, tmp89
	xorpd	%xmm1, %xmm0	# tmp89, tmp88
	movsd	%xmm0, -8(%rbp)	# tmp88, dtime
	.loc 1 36 0
	movl	$0, -32(%rbp)	#, traj_done
	jmp	.L3	#
.L4:
	.loc 1 37 0 discriminator 2
	movl	$0, %eax	#,
	call	update	#
	.loc 1 36 0 discriminator 2
	addl	$1, -32(%rbp)	#, traj_done
.L3:
	.loc 1 36 0 is_stmt 0 discriminator 1
	movl	warms(%rip), %eax	# warms, warms.0
	cmpl	%eax, -32(%rbp)	# warms.0, traj_done
	jl	.L4	#,
	.loc 1 39 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.1
	testl	%eax, %eax	# this_node.1
	jne	.L5	#,
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	$.LC37, %edi	#,
	call	puts	#
.L5:
	.loc 1 39 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.2
	movq	%rax, %rdi	# stdout.2,
	call	fflush	#
	.loc 1 42 0 is_stmt 1 discriminator 2
	movl	$0, -36(%rbp)	#, meascount
	.loc 1 43 0 discriminator 2
	movl	$0, -20(%rbp)	#, avbcorr_iters
	movl	-20(%rbp), %eax	# avbcorr_iters, tmp90
	movl	%eax, -28(%rbp)	# tmp90, avs_iters
	movl	-28(%rbp), %eax	# avs_iters, tmp91
	movl	%eax, -16(%rbp)	# tmp91, avspect_iters
	.loc 1 44 0 discriminator 2
	movl	$0, -32(%rbp)	#, traj_done
	jmp	.L6	#
.L8:
	.loc 1 47 0
	movl	$0, %eax	#,
	call	update	#
	movl	%eax, -12(%rbp)	# tmp92, s_iters
	.loc 1 50 0
	movl	propinterval(%rip), %ecx	# propinterval, propinterval.3
	movl	-32(%rbp), %eax	# traj_done, tmp93
	cltd
	idivl	%ecx	# propinterval.3
	movl	%edx, %eax	# tmp94, D.5054
	movl	propinterval(%rip), %edx	# propinterval, propinterval.4
	subl	$1, %edx	#, D.5054
	cmpl	%edx, %eax	# D.5054, D.5054
	jne	.L7	#,
	.loc 1 54 0
	movl	$0, %edi	#,
	call	rephase	#
	.loc 1 55 0
	call	g_measure	#
	.loc 1 56 0
	movl	$1, %edi	#,
	call	rephase	#
	.loc 1 57 0
	movq	mass(%rip), %rax	# mass, mass.5
	movq	%rax, -72(%rbp)	# mass.5, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$1184, %esi	#,
	movl	$1040, %edi	#,
	call	f_meas_imp	#
	.loc 1 91 0
	movl	-12(%rbp), %eax	# s_iters, tmp96
	addl	%eax, -28(%rbp)	# tmp96, avs_iters
	.loc 1 92 0
	addl	$1, -36(%rbp)	#, meascount
	.loc 1 93 0
	movq	stdout(%rip), %rax	# stdout, stdout.6
	movq	%rax, %rdi	# stdout.6,
	call	fflush	#
.L7:
	.loc 1 44 0
	addl	$1, -32(%rbp)	#, traj_done
.L6:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movl	trajecs(%rip), %eax	# trajecs, trajecs.7
	cmpl	%eax, -32(%rbp)	# trajecs.7, traj_done
	jl	.L8	#,
	.loc 1 97 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.8
	testl	%eax, %eax	# this_node.8
	jne	.L9	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edi	#,
	call	puts	#
.L9:
	.loc 1 97 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.9
	movq	%rax, %rdi	# stdout.9,
	call	fflush	#
	.loc 1 98 0 is_stmt 1 discriminator 2
	cmpl	$0, -36(%rbp)	#, meascount
	jle	.L10	#,
	.loc 1 99 0
	movl	this_node(%rip), %eax	# this_node, this_node.10
	testl	%eax, %eax	# this_node.10
	jne	.L10	#,
	.loc 1 100 0 discriminator 1
	cvtsi2sd	-28(%rbp), %xmm0	# avs_iters, D.5055
	.loc 1 99 0 discriminator 1
	cvtsi2sd	-36(%rbp), %xmm1	# meascount, D.5055
	divsd	%xmm1, %xmm0	# D.5055, D.5055
	movl	$.LC39, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L10:
	.loc 1 107 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	-8(%rbp), %xmm1	# dtime, tmp98
	addsd	%xmm1, %xmm0	# tmp98, tmp97
	movsd	%xmm0, -8(%rbp)	# tmp97, dtime
	.loc 1 108 0
	movl	this_node(%rip), %eax	# this_node, this_node.11
	testl	%eax, %eax	# this_node.11
	jne	.L11	#,
	.loc 1 110 0
	movl	total_iters(%rip), %eax	# total_iters, total_iters.12
	movl	%eax, %esi	# total_iters.12,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L11:
	.loc 1 112 0
	movq	stdout(%rip), %rax	# stdout, stdout.13
	movq	%rax, %rdi	# stdout.13,
	call	fflush	#
	.loc 1 115 0
	movl	saveflag(%rip), %eax	# saveflag, saveflag.14
	cmpl	$20, %eax	#, saveflag.14
	je	.L2	#,
	.loc 1 116 0
	movl	$0, %edi	#,
	call	rephase	#
	.loc 1 117 0
	movl	saveflag(%rip), %eax	# saveflag, saveflag.15
	movl	$savefile, %esi	#,
	movl	%eax, %edi	# saveflag.15,
	call	save_lattice	#
	.loc 1 118 0
	movl	$1, %edi	#,
	call	rephase	#
.L2:
	.loc 1 32 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, tmp99
	movl	%eax, %edi	# tmp99,
	call	readin	#
	testl	%eax, %eax	# D.5054
	je	.L12	#,
	.loc 1 121 0
	movl	$0, %eax	#, D.5054
	.loc 1 122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC36:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "complex.h"
	.file 7 "random.h"
	.file 8 "su3.h"
	.file 9 "int32type.h"
	.file 10 "macros.h"
	.file 11 "io_lat.h"
	.file 12 "lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb7a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF150
	.byte	0x1
	.long	.LASF151
	.long	.LASF152
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF153
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
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
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x49
	.long	0x2cf
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2a7
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x4b
	.long	0x2a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x4c
	.long	0x2ae
	.uleb128 0xd
	.byte	0x58
	.byte	0x7
	.byte	0x6
	.long	0x360
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
	.long	.LASF54
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0xa
	.long	0x2a7
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xb
	.long	0x2da
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2cf
	.long	0x394
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0xe
	.long	0x36b
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2cf
	.long	0x3c2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.long	0x39f
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x42a
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x2cf
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x2cf
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x2cf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x11
	.long	0x2a7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.long	0x2a7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x2a7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x2a7
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x11
	.long	0x3cd
	.uleb128 0xb
	.long	0x3c2
	.long	0x445
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x1f
	.long	0x62
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x20
	.long	0x4d
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x2a
	.long	0x62
	.uleb128 0xd
	.byte	0x5c
	.byte	0xb
	.byte	0x41
	.long	0x4ab
	.uleb128 0x8
	.long	.LASF69
	.byte	0xb
	.byte	0x42
	.long	0x445
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0xb
	.byte	0x43
	.long	0x4ab
	.byte	0x4
	.uleb128 0x8
	.long	.LASF71
	.byte	0xb
	.byte	0x47
	.long	0x4bb
	.byte	0x44
	.uleb128 0x8
	.long	.LASF72
	.byte	0xb
	.byte	0x48
	.long	0x445
	.byte	0x54
	.uleb128 0x8
	.long	.LASF73
	.byte	0xb
	.byte	0x4a
	.long	0x445
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x4bb
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x445
	.long	0x4cb
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0xb
	.byte	0x50
	.long	0x466
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x60
	.long	0x4f7
	.uleb128 0x8
	.long	.LASF75
	.byte	0xb
	.byte	0x61
	.long	0x450
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0xb
	.byte	0x62
	.long	0x450
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0xb
	.byte	0x63
	.long	0x4d6
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xd
	.byte	0x38
	.byte	0xb
	.byte	0xfe
	.long	0x56a
	.uleb128 0xe
	.string	"fp"
	.byte	0xb
	.byte	0xff
	.long	0x56a
	.byte	0
	.uleb128 0x9
	.long	.LASF78
	.byte	0xb
	.value	0x100
	.long	0x570
	.byte	0x8
	.uleb128 0x9
	.long	.LASF79
	.byte	0xb
	.value	0x101
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0xb
	.value	0x102
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.value	0x103
	.long	0x576
	.byte	0x20
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.value	0x105
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF83
	.byte	0xb
	.value	0x107
	.long	0x4f7
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x4cb
	.uleb128 0x6
	.byte	0x8
	.long	0x445
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.value	0x108
	.long	0x508
	.uleb128 0x10
	.value	0x800
	.byte	0xc
	.byte	0x1f
	.long	0x69f
	.uleb128 0xe
	.string	"x"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF85
	.byte	0xc
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF86
	.byte	0xc
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF87
	.byte	0xc
	.byte	0x29
	.long	0x360
	.byte	0x10
	.uleb128 0x8
	.long	.LASF88
	.byte	0xc
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF89
	.byte	0xc
	.byte	0x32
	.long	0x69f
	.byte	0x70
	.uleb128 0x11
	.string	"mom"
	.byte	0xc
	.byte	0x3e
	.long	0x6af
	.value	0x2b0
	.uleb128 0x12
	.long	.LASF90
	.byte	0xc
	.byte	0x42
	.long	0x6bf
	.value	0x3f0
	.uleb128 0x11
	.string	"phi"
	.byte	0xc
	.byte	0x45
	.long	0x3c2
	.value	0x410
	.uleb128 0x12
	.long	.LASF91
	.byte	0xc
	.byte	0x46
	.long	0x3c2
	.value	0x440
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.byte	0x47
	.long	0x3c2
	.value	0x470
	.uleb128 0x11
	.string	"xxx"
	.byte	0xc
	.byte	0x48
	.long	0x3c2
	.value	0x4a0
	.uleb128 0x11
	.string	"ttt"
	.byte	0xc
	.byte	0x49
	.long	0x3c2
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF93
	.byte	0xc
	.byte	0x4a
	.long	0x3c2
	.value	0x500
	.uleb128 0x12
	.long	.LASF94
	.byte	0xc
	.byte	0x5d
	.long	0x435
	.value	0x530
	.uleb128 0x12
	.long	.LASF95
	.byte	0xc
	.byte	0x5f
	.long	0x435
	.value	0x5f0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xc
	.byte	0x60
	.long	0x3c2
	.value	0x6b0
	.uleb128 0x12
	.long	.LASF97
	.byte	0xc
	.byte	0x62
	.long	0x394
	.value	0x6e0
	.uleb128 0x12
	.long	.LASF98
	.byte	0xc
	.byte	0x62
	.long	0x394
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x394
	.long	0x6af
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x42a
	.long	0x6bf
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2a7
	.long	0x6cf
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF99
	.byte	0xc
	.byte	0x63
	.long	0x588
	.uleb128 0x13
	.long	.LASF154
	.byte	0x1
	.byte	0x14
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x797
	.uleb128 0x14
	.long	.LASF100
	.byte	0x1
	.byte	0x14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.byte	0x14
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0x15
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.byte	0x15
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.byte	0x16
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0x17
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.long	.LASF106
	.byte	0x1
	.byte	0x17
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF107
	.byte	0x1
	.byte	0x17
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x18
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x19
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF155
	.byte	0x1
	.byte	0x19
	.long	0x2a7
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0xb
	.long	0x8f
	.long	0x7b2
	.uleb128 0xc
	.long	0x86
	.byte	0x23
	.byte	0
	.uleb128 0x19
	.long	.LASF111
	.byte	0xb
	.byte	0x76
	.long	0x7a2
	.uleb128 0x9
	.byte	0x3
	.quad	gauge_info_keyword
	.uleb128 0xb
	.long	0x95
	.long	0x7d7
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.long	.LASF112
	.byte	0xb
	.value	0x10e
	.long	0x7c7
	.uleb128 0x9
	.byte	0x3
	.quad	ensemble_id
	.uleb128 0x1a
	.long	.LASF113
	.byte	0xb
	.value	0x10f
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	sequence_number
	.uleb128 0x1b
	.string	"nx"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	nx
	.uleb128 0x1b
	.string	"ny"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	ny
	.uleb128 0x1b
	.string	"nz"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	nz
	.uleb128 0x1b
	.string	"nt"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	nt
	.uleb128 0x19
	.long	.LASF114
	.byte	0xc
	.byte	0x75
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	volume
	.uleb128 0x19
	.long	.LASF115
	.byte	0xc
	.byte	0x76
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	iseed
	.uleb128 0x19
	.long	.LASF116
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	warms
	.uleb128 0x19
	.long	.LASF117
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	trajecs
	.uleb128 0x19
	.long	.LASF118
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	steps
	.uleb128 0x19
	.long	.LASF119
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	niter
	.uleb128 0x19
	.long	.LASF120
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	propinterval
	.uleb128 0x19
	.long	.LASF121
	.byte	0xc
	.byte	0x77
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	nflavors
	.uleb128 0x19
	.long	.LASF122
	.byte	0xc
	.byte	0x78
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	epsilon
	.uleb128 0x19
	.long	.LASF123
	.byte	0xc
	.byte	0x79
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	beta
	.uleb128 0x19
	.long	.LASF124
	.byte	0xc
	.byte	0x79
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	mass
	.uleb128 0x1b
	.string	"u0"
	.byte	0xc
	.byte	0x79
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	u0
	.uleb128 0x19
	.long	.LASF125
	.byte	0xc
	.byte	0x7a
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	rsqmin
	.uleb128 0x19
	.long	.LASF126
	.byte	0xc
	.byte	0x7a
	.long	0x2a7
	.uleb128 0x9
	.byte	0x3
	.quad	rsqprop
	.uleb128 0x19
	.long	.LASF127
	.byte	0xc
	.byte	0x7b
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	startflag
	.uleb128 0x19
	.long	.LASF128
	.byte	0xc
	.byte	0x7d
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	saveflag
	.uleb128 0x19
	.long	.LASF129
	.byte	0xc
	.byte	0x7f
	.long	0x7c7
	.uleb128 0x9
	.byte	0x3
	.quad	startfile
	.uleb128 0x19
	.long	.LASF130
	.byte	0xc
	.byte	0x7f
	.long	0x7c7
	.uleb128 0x9
	.byte	0x3
	.quad	savefile
	.uleb128 0x19
	.long	.LASF131
	.byte	0xc
	.byte	0x80
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	total_iters
	.uleb128 0x19
	.long	.LASF132
	.byte	0xc
	.byte	0x81
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	phases_in
	.uleb128 0x19
	.long	.LASF133
	.byte	0xc
	.byte	0x82
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	source_start
	.uleb128 0x19
	.long	.LASF134
	.byte	0xc
	.byte	0x82
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	source_inc
	.uleb128 0x19
	.long	.LASF135
	.byte	0xc
	.byte	0x82
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	n_sources
	.uleb128 0x19
	.long	.LASF136
	.byte	0xc
	.byte	0x87
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	sites_on_node
	.uleb128 0x19
	.long	.LASF137
	.byte	0xc
	.byte	0x88
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	even_sites_on_node
	.uleb128 0x19
	.long	.LASF138
	.byte	0xc
	.byte	0x89
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	odd_sites_on_node
	.uleb128 0x19
	.long	.LASF139
	.byte	0xc
	.byte	0x8a
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	number_of_nodes
	.uleb128 0x19
	.long	.LASF140
	.byte	0xc
	.byte	0x8b
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	this_node
	.uleb128 0x19
	.long	.LASF141
	.byte	0xc
	.byte	0x8e
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	valid_longlinks
	.uleb128 0x19
	.long	.LASF142
	.byte	0xc
	.byte	0x8f
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	valid_fatlinks
	.uleb128 0x19
	.long	.LASF143
	.byte	0xc
	.byte	0x91
	.long	0xadd
	.uleb128 0x9
	.byte	0x3
	.quad	startlat_p
	.uleb128 0x6
	.byte	0x8
	.long	0x57c
	.uleb128 0x19
	.long	.LASF144
	.byte	0xc
	.byte	0x95
	.long	0x360
	.uleb128 0x9
	.byte	0x3
	.quad	node_prn
	.uleb128 0x19
	.long	.LASF145
	.byte	0xc
	.byte	0x9a
	.long	0xb0d
	.uleb128 0x9
	.byte	0x3
	.quad	lattice
	.uleb128 0x6
	.byte	0x8
	.long	0x6cf
	.uleb128 0xb
	.long	0x502
	.long	0xb23
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.long	.LASF146
	.byte	0xc
	.byte	0x9f
	.long	0xb13
	.uleb128 0x9
	.byte	0x3
	.quad	gen_pt
	.uleb128 0x19
	.long	.LASF147
	.byte	0xc
	.byte	0xa3
	.long	0xb4d
	.uleb128 0x9
	.byte	0x3
	.quad	t_longlink
	.uleb128 0x6
	.byte	0x8
	.long	0x394
	.uleb128 0x19
	.long	.LASF148
	.byte	0xc
	.byte	0xa4
	.long	0xb4d
	.uleb128 0x9
	.byte	0x3
	.quad	t_fatlink
	.uleb128 0x19
	.long	.LASF149
	.byte	0x1
	.byte	0x12
	.long	0x4cb
	.uleb128 0x9
	.byte	0x3
	.quad	start_lat_hdr
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
.LASF32:
	.string	"_shortbuf"
.LASF153:
	.string	"_IO_lock_t"
.LASF72:
	.string	"header_bytes"
.LASF147:
	.string	"t_longlink"
.LASF90:
	.string	"phase"
.LASF112:
	.string	"ensemble_id"
.LASF152:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF21:
	.string	"_IO_buf_end"
.LASF137:
	.string	"even_sites_on_node"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF105:
	.string	"s_iters"
.LASF83:
	.string	"check"
.LASF89:
	.string	"link"
.LASF25:
	.string	"_markers"
.LASF149:
	.string	"start_lat_hdr"
.LASF111:
	.string	"gauge_info_keyword"
.LASF65:
	.string	"anti_hermitmat"
.LASF99:
	.string	"site"
.LASF71:
	.string	"dims"
.LASF145:
	.string	"lattice"
.LASF117:
	.string	"trajecs"
.LASF46:
	.string	"_pos"
.LASF110:
	.string	"stdout"
.LASF24:
	.string	"_IO_save_end"
.LASF118:
	.string	"steps"
.LASF114:
	.string	"volume"
.LASF49:
	.string	"float"
.LASF80:
	.string	"byterevflag"
.LASF86:
	.string	"index"
.LASF131:
	.string	"total_iters"
.LASF130:
	.string	"savefile"
.LASF48:
	.string	"long long unsigned int"
.LASF113:
	.string	"sequence_number"
.LASF139:
	.string	"number_of_nodes"
.LASF82:
	.string	"parallel"
.LASF98:
	.string	"staple"
.LASF23:
	.string	"_IO_backup_base"
.LASF106:
	.string	"avs_iters"
.LASF34:
	.string	"_offset"
.LASF146:
	.string	"gen_pt"
.LASF27:
	.string	"_fileno"
.LASF104:
	.string	"prompt"
.LASF7:
	.string	"size_t"
.LASF56:
	.string	"ic_state"
.LASF93:
	.string	"g_rand"
.LASF16:
	.string	"_IO_read_base"
.LASF100:
	.string	"argc"
.LASF140:
	.string	"this_node"
.LASF69:
	.string	"magic_number"
.LASF44:
	.string	"_next"
.LASF85:
	.string	"parity"
.LASF122:
	.string	"epsilon"
.LASF141:
	.string	"valid_longlinks"
.LASF60:
	.string	"su3_vector"
.LASF135:
	.string	"n_sources"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF79:
	.string	"filename"
.LASF43:
	.string	"_IO_marker"
.LASF133:
	.string	"source_start"
.LASF14:
	.string	"_IO_read_ptr"
.LASF73:
	.string	"order"
.LASF144:
	.string	"node_prn"
.LASF64:
	.string	"space"
.LASF94:
	.string	"tempvec"
.LASF107:
	.string	"avspect_iters"
.LASF55:
	.string	"addend"
.LASF17:
	.string	"_IO_write_base"
.LASF115:
	.string	"iseed"
.LASF108:
	.string	"avbcorr_iters"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF155:
	.string	"dclock"
.LASF129:
	.string	"startfile"
.LASF78:
	.string	"header"
.LASF143:
	.string	"startlat_p"
.LASF126:
	.string	"rsqprop"
.LASF121:
	.string	"nflavors"
.LASF136:
	.string	"sites_on_node"
.LASF84:
	.string	"gauge_file"
.LASF57:
	.string	"scale"
.LASF151:
	.string	"control.c"
.LASF96:
	.string	"templongv1"
.LASF74:
	.string	"gauge_header"
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
.LASF124:
	.string	"mass"
.LASF66:
	.string	"int32type"
.LASF31:
	.string	"_vtable_offset"
.LASF87:
	.string	"site_prn"
.LASF101:
	.string	"argv"
.LASF63:
	.string	"m22im"
.LASF138:
	.string	"odd_sites_on_node"
.LASF150:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF62:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF95:
	.string	"templongvec"
.LASF61:
	.string	"m00im"
.LASF120:
	.string	"propinterval"
.LASF128:
	.string	"saveflag"
.LASF67:
	.string	"u_int32type"
.LASF53:
	.string	"complex"
.LASF51:
	.string	"real"
.LASF54:
	.string	"multiplier"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF116:
	.string	"warms"
.LASF148:
	.string	"t_fatlink"
.LASF125:
	.string	"rsqmin"
.LASF1:
	.string	"unsigned char"
.LASF76:
	.string	"sum29"
.LASF45:
	.string	"_sbuf"
.LASF97:
	.string	"tempmat1"
.LASF52:
	.string	"imag"
.LASF18:
	.string	"_IO_write_ptr"
.LASF68:
	.string	"field_offset"
.LASF123:
	.string	"beta"
.LASF81:
	.string	"rank2rcv"
.LASF92:
	.string	"cg_p"
.LASF58:
	.string	"double_prn"
.LASF70:
	.string	"time_stamp"
.LASF75:
	.string	"sum31"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF132:
	.string	"phases_in"
.LASF2:
	.string	"short unsigned int"
.LASF109:
	.string	"dtime"
.LASF154:
	.string	"main"
.LASF102:
	.string	"meascount"
.LASF103:
	.string	"traj_done"
.LASF119:
	.string	"niter"
.LASF50:
	.string	"double"
.LASF134:
	.string	"source_inc"
.LASF26:
	.string	"_chain"
.LASF142:
	.string	"valid_fatlinks"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF77:
	.string	"gauge_check"
.LASF30:
	.string	"_cur_column"
.LASF127:
	.string	"startflag"
.LASF91:
	.string	"resid"
.LASF59:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
.LASF88:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
