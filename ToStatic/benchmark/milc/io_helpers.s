	.file	"io_helpers.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# io_helpers.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"save_lattice: ERROR: unknown type for saving lattice"
.LC2:
	.string	"Time to save = %e\n"
.LC3:
	.string	"CHECK PLAQ: %e %e\n"
	.text
	.globl	save_lattice
	.type	save_lattice, @function
save_lattice:
.LFB2:
	.file 1 "io_helpers.c"
	.loc 1 15 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# flag, flag
	movq	%rsi, -48(%rbp)	# filename, filename
	.loc 1 20 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	.LC0(%rip), %xmm1	#, tmp68
	xorpd	%xmm1, %xmm0	# tmp68, tmp67
	movsd	%xmm0, -8(%rbp)	# tmp67, dtime
	.loc 1 21 0
	movl	-36(%rbp), %eax	# flag, tmp70
	subl	$20, %eax	#, tmp69
	cmpl	$11, %eax	#, tmp69
	ja	.L2	#,
	movl	%eax, %eax	# tmp69, tmp71
	movq	.L4(,%rax,8), %rax	#, tmp72
	jmp	*%rax	# tmp72
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L8
	.quad	.L2
	.quad	.L9
	.quad	.L10
	.text
.L3:
	.loc 1 23 0
	movq	$0, -16(%rbp)	#, gf
	.loc 1 24 0
	jmp	.L11	#
.L5:
	.loc 1 26 0
	movq	-48(%rbp), %rax	# filename, tmp73
	movq	%rax, %rdi	# tmp73,
	call	save_ascii	#
	movq	%rax, -16(%rbp)	# tmp74, gf
	.loc 1 27 0
	jmp	.L11	#
.L6:
	.loc 1 29 0
	movq	-48(%rbp), %rax	# filename, tmp75
	movq	%rax, %rdi	# tmp75,
	call	save_serial	#
	movq	%rax, -16(%rbp)	# tmp76, gf
	.loc 1 30 0
	jmp	.L11	#
.L8:
	.loc 1 32 0
	movq	-48(%rbp), %rax	# filename, tmp77
	movq	%rax, %rdi	# tmp77,
	call	save_parallel	#
	movq	%rax, -16(%rbp)	# tmp78, gf
	.loc 1 33 0
	jmp	.L11	#
.L7:
	.loc 1 35 0
	movq	-48(%rbp), %rax	# filename, tmp79
	movq	%rax, %rdi	# tmp79,
	call	save_checkpoint	#
	movq	%rax, -16(%rbp)	# tmp80, gf
	.loc 1 36 0
	jmp	.L11	#
.L9:
	.loc 1 38 0
	movq	-48(%rbp), %rax	# filename, tmp81
	movq	%rax, %rdi	# tmp81,
	call	save_serial_archive	#
	movq	%rax, -16(%rbp)	# tmp82, gf
	.loc 1 39 0
	jmp	.L11	#
.L10:
	.loc 1 41 0
	movq	-48(%rbp), %rax	# filename, tmp83
	movq	%rax, %rdi	# tmp83,
	call	save_parallel_archive	#
	movq	%rax, -16(%rbp)	# tmp84, gf
	.loc 1 42 0
	jmp	.L11	#
.L2:
	.loc 1 44 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 45 0
	movl	$1, %edi	#,
	call	terminate	#
.L11:
	.loc 1 47 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	-8(%rbp), %xmm1	# dtime, tmp86
	addsd	%xmm1, %xmm0	# tmp86, tmp85
	movsd	%xmm0, -8(%rbp)	# tmp85, dtime
	.loc 1 48 0
	cmpl	$20, -36(%rbp)	#, flag
	je	.L12	#,
	.loc 1 49 0
	movl	this_node(%rip), %eax	# this_node, this_node.0
	testl	%eax, %eax	# this_node.0
	jne	.L12	#,
	.loc 1 49 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dtime, tmp87
	movq	%rax, -56(%rbp)	# tmp87, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC2, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L12:
	.loc 1 50 0 is_stmt 1
	leaq	-24(%rbp), %rdx	#, tmp88
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	d_plaquette	#
	.loc 1 51 0
	movl	this_node(%rip), %eax	# this_node, this_node.1
	testl	%eax, %eax	# this_node.1
	jne	.L13	#,
	.loc 1 51 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# stplaq, stplaq.2
	movq	-32(%rbp), %rax	# ssplaq, ssplaq.3
	movq	%rdx, -56(%rbp)	# stplaq.2, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movq	%rax, -56(%rbp)	# ssplaq.3, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L13:
	.loc 1 52 0 is_stmt 1
	movq	-16(%rbp), %rax	# gf, D.5340
	.loc 1 53 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	save_lattice, .-save_lattice
	.section	.rodata
	.align 8
.LC4:
	.string	"reload_lattice: Bad startflag %d\n"
	.align 8
.LC5:
	.string	"Time to reload gauge configuration = %e\n"
	.align 8
.LC6:
	.string	"Unitarity checked.  Max deviation %.2e\n"
	.text
	.globl	reload_lattice
	.type	reload_lattice, @function
reload_lattice:
.LFB3:
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# flag, flag
	movq	%rsi, -64(%rbp)	# filename, filename
	.loc 1 67 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	.LC0(%rip), %xmm1	#, tmp76
	xorpd	%xmm1, %xmm0	# tmp76, tmp75
	movsd	%xmm0, -8(%rbp)	# tmp75, dtime
	.loc 1 68 0
	movl	-52(%rbp), %eax	# flag, tmp78
	subl	$10, %eax	#, tmp77
	cmpl	$9, %eax	#, tmp77
	ja	.L16	#,
	movl	%eax, %eax	# tmp77, tmp79
	movq	.L18(,%rax,8), %rax	#, tmp80
	jmp	*%rax	# tmp80
	.section	.rodata
	.align 8
	.align 4
.L18:
	.quad	.L17
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L22
	.text
.L17:
	.loc 1 70 0
	movq	$0, -16(%rbp)	#, gf
	.loc 1 71 0
	jmp	.L23	#
.L19:
	.loc 1 73 0
	movl	$0, %eax	#,
	call	coldlat	#
	.loc 1 74 0
	movq	$0, -16(%rbp)	#, gf
	.loc 1 75 0
	jmp	.L23	#
.L20:
	.loc 1 77 0
	movq	-64(%rbp), %rax	# filename, tmp81
	movq	%rax, %rdi	# tmp81,
	call	restore_ascii	#
	movq	%rax, -16(%rbp)	# tmp82, gf
	.loc 1 78 0
	jmp	.L23	#
.L21:
	.loc 1 80 0
	movq	-64(%rbp), %rax	# filename, tmp83
	movq	%rax, %rdi	# tmp83,
	call	restore_serial	#
	movq	%rax, -16(%rbp)	# tmp84, gf
	.loc 1 81 0
	jmp	.L23	#
.L22:
	.loc 1 83 0
	movq	-64(%rbp), %rax	# filename, tmp85
	movq	%rax, %rdi	# tmp85,
	call	restore_parallel	#
	movq	%rax, -16(%rbp)	# tmp86, gf
	.loc 1 84 0
	jmp	.L23	#
.L16:
	.loc 1 86 0
	movl	this_node(%rip), %eax	# this_node, this_node.4
	testl	%eax, %eax	# this_node.4
	jne	.L24	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# flag, tmp87
	movl	%eax, %esi	# tmp87,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L24:
	.loc 1 87 0 is_stmt 1
	movl	$1, %edi	#,
	call	terminate	#
.L23:
	.loc 1 89 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	-8(%rbp), %xmm1	# dtime, tmp89
	addsd	%xmm1, %xmm0	# tmp89, tmp88
	movsd	%xmm0, -8(%rbp)	# tmp88, dtime
	.loc 1 90 0
	cmpl	$11, -52(%rbp)	#, flag
	je	.L25	#,
	.loc 1 90 0 is_stmt 0 discriminator 1
	cmpl	$10, -52(%rbp)	#, flag
	je	.L25	#,
	.loc 1 91 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.5
	testl	%eax, %eax	# this_node.5
	jne	.L25	#,
	.loc 1 91 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dtime, tmp90
	movq	%rax, -72(%rbp)	# tmp90, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$.LC5, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L25:
	.loc 1 95 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp91
	leaq	-40(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	d_plaquette	#
	.loc 1 96 0
	movl	this_node(%rip), %eax	# this_node, this_node.6
	testl	%eax, %eax	# this_node.6
	jne	.L26	#,
	.loc 1 97 0
	movq	-32(%rbp), %rdx	# stplaq, stplaq.7
	movq	-40(%rbp), %rax	# ssplaq, ssplaq.8
	movq	%rdx, -72(%rbp)	# stplaq.7, %sfp
	movsd	-72(%rbp), %xmm1	# %sfp,
	movq	%rax, -72(%rbp)	# ssplaq.8, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
	movq	stdout(%rip), %rax	# stdout, stdout.9
	movq	%rax, %rdi	# stdout.9,
	call	fflush	#
.L26:
	.loc 1 99 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	.LC0(%rip), %xmm1	#, tmp94
	xorpd	%xmm1, %xmm0	# tmp94, tmp93
	movsd	%xmm0, -8(%rbp)	# tmp93, dtime
	.loc 1 100 0
	call	check_unitarity	#
	movsd	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, max_deviation.10
	movq	%rax, -24(%rbp)	# max_deviation.10, max_deviation
	.loc 1 101 0
	leaq	-24(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	g_doublemax	#
	.loc 1 102 0
	movl	$0, %eax	#,
	call	dclock	#
	movsd	-8(%rbp), %xmm1	# dtime, tmp97
	addsd	%xmm1, %xmm0	# tmp97, tmp96
	movsd	%xmm0, -8(%rbp)	# tmp96, dtime
	.loc 1 103 0
	movl	this_node(%rip), %eax	# this_node, this_node.11
	testl	%eax, %eax	# this_node.11
	jne	.L27	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# max_deviation, max_deviation.12
	movq	%rax, -72(%rbp)	# max_deviation.12, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$.LC6, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L27:
	.loc 1 104 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.13
	movq	%rax, %rdi	# stdout.13,
	call	fflush	#
	.loc 1 106 0
	movq	-16(%rbp), %rax	# gf, D.5346
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	reload_lattice, .-reload_lattice
	.section	.rodata
	.align 8
.LC7:
	.string	"enter 'continue', 'fresh', 'reload_ascii', 'reload_serial', or 'reload_parallel'"
.LC8:
	.string	"%s"
	.align 8
.LC9:
	.string	"ask_starting_lattice: ERROR IN INPUT: starting lattice command"
.LC10:
	.string	"%s "
.LC11:
	.string	"fresh"
.LC12:
	.string	"continue"
.LC13:
	.string	"reload_ascii"
.LC14:
	.string	"reload_serial"
.LC15:
	.string	"reload_parallel"
	.align 8
.LC16:
	.string	"ask_starting_lattice: ERROR IN INPUT: lattice_command %s is invalid\n"
	.align 8
.LC17:
	.string	"enter name of file containing lattice"
	.align 8
.LC18:
	.string	"ask_starting_lattice: ERROR IN INPUT: file name read"
	.text
	.globl	ask_starting_lattice
	.type	ask_starting_lattice, @function
ask_starting_lattice:
.LFB4:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movl	%edi, -292(%rbp)	# prompt, prompt
	movq	%rsi, -304(%rbp)	# flag, flag
	movq	%rdx, -312(%rbp)	# filename, filename
	.loc 1 112 0
	movq	%fs:40, %rax	#, tmp88
	movq	%rax, -8(%rbp)	# tmp88, D.5351
	xorl	%eax, %eax	# tmp88
	.loc 1 116 0
	cmpl	$0, -292(%rbp)	#, prompt
	je	.L30	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	call	puts	#
.L30:
	.loc 1 118 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp68
	movq	%rax, %rsi	# tmp68,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -276(%rbp)	# tmp69, status
	.loc 1 119 0
	cmpl	$1, -276(%rbp)	#, status
	je	.L31	#,
	.loc 1 120 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 121 0
	movl	$1, %eax	#, D.5350
	jmp	.L42	#
.L31:
	.loc 1 124 0
	leaq	-272(%rbp), %rax	#, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 125 0
	leaq	-272(%rbp), %rax	#, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$.LC11, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5350
	jne	.L33	#,
	.loc 1 126 0
	movq	-304(%rbp), %rax	# flag, tmp72
	movl	$11, (%rax)	#, *flag_6(D)
	.loc 1 127 0
	movl	$10, %edi	#,
	call	putchar	#
	jmp	.L34	#
.L33:
	.loc 1 129 0
	leaq	-272(%rbp), %rax	#, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC12, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5350
	jne	.L35	#,
	.loc 1 130 0
	movq	-304(%rbp), %rax	# flag, tmp74
	movl	$10, (%rax)	#, *flag_6(D)
	.loc 1 131 0
	movl	$10, %edi	#,
	call	putchar	#
	jmp	.L34	#
.L35:
	.loc 1 133 0
	leaq	-272(%rbp), %rax	#, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$.LC13, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5350
	jne	.L36	#,
	.loc 1 134 0
	movq	-304(%rbp), %rax	# flag, tmp76
	movl	$12, (%rax)	#, *flag_6(D)
	jmp	.L34	#
.L36:
	.loc 1 136 0
	leaq	-272(%rbp), %rax	#, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$.LC14, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5350
	jne	.L37	#,
	.loc 1 137 0
	movq	-304(%rbp), %rax	# flag, tmp78
	movl	$13, (%rax)	#, *flag_6(D)
	jmp	.L34	#
.L37:
	.loc 1 139 0
	leaq	-272(%rbp), %rax	#, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC15, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5350
	jne	.L38	#,
	.loc 1 140 0
	movq	-304(%rbp), %rax	# flag, tmp80
	movl	$19, (%rax)	#, *flag_6(D)
	jmp	.L34	#
.L38:
	.loc 1 143 0
	leaq	-272(%rbp), %rax	#, tmp81
	movq	%rax, %rsi	# tmp81,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$1, %eax	#, D.5350
	jmp	.L42	#
.L34:
	.loc 1 147 0
	movq	-304(%rbp), %rax	# flag, tmp82
	movl	(%rax), %eax	# *flag_6(D), D.5350
	cmpl	$11, %eax	#, D.5350
	je	.L39	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# flag, tmp83
	movl	(%rax), %eax	# *flag_6(D), D.5350
	cmpl	$10, %eax	#, D.5350
	je	.L39	#,
	.loc 1 148 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, prompt
	je	.L40	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	$.LC17, %edi	#,
	call	puts	#
.L40:
	.loc 1 149 0 is_stmt 1
	movq	-312(%rbp), %rax	# filename, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -276(%rbp)	# tmp85, status
	.loc 1 150 0
	cmpl	$1, -276(%rbp)	#, status
	je	.L41	#,
	.loc 1 151 0
	movl	$.LC18, %edi	#,
	call	puts	#
	movl	$1, %eax	#, D.5350
	jmp	.L42	#
.L41:
	.loc 1 153 0
	movq	-312(%rbp), %rax	# filename, tmp86
	movq	%rax, %rdi	# tmp86,
	call	puts	#
.L39:
	.loc 1 155 0
	movl	$0, %eax	#, D.5350
.L42:
	.loc 1 156 0
	movq	-8(%rbp), %rcx	# D.5351, tmp89
	xorq	%fs:40, %rcx	#, tmp89
	je	.L43	#,
	call	__stack_chk_fail	#
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ask_starting_lattice, .-ask_starting_lattice
	.section	.rodata
	.align 8
.LC19:
	.string	"'forget' lattice at end,  'save_ascii', 'save_serial', 'save_parallel', 'save_checkpoint', 'save_serial_archive', or 'save_parallel_archive'"
	.align 8
.LC20:
	.string	"ask_ending_lattice: ERROR IN INPUT: ending lattice command"
.LC21:
	.string	"save_ascii"
.LC22:
	.string	"save_serial"
.LC23:
	.string	"save_parallel"
.LC24:
	.string	"save_checkpoint"
.LC25:
	.string	"save_serial_archive"
.LC26:
	.string	"save_parallel_archive"
.LC27:
	.string	"forget"
	.align 8
.LC28:
	.string	"ask_ending_lattice: ERROR IN INPUT: %s is not a save lattice command\n"
.LC29:
	.string	"enter filename"
	.align 8
.LC30:
	.string	"ask_ending_lattice: ERROR IN INPUT: save filename"
	.text
	.globl	ask_ending_lattice
	.type	ask_ending_lattice, @function
ask_ending_lattice:
.LFB5:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movl	%edi, -292(%rbp)	# prompt, prompt
	movq	%rsi, -304(%rbp)	# flag, flag
	movq	%rdx, -312(%rbp)	# filename, filename
	.loc 1 161 0
	movq	%fs:40, %rax	#, tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.5367
	xorl	%eax, %eax	# tmp92
	.loc 1 165 0
	cmpl	$0, -292(%rbp)	#, prompt
	je	.L45	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movl	$.LC19, %edi	#,
	call	puts	#
.L45:
	.loc 1 167 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -276(%rbp)	# tmp70, status
	.loc 1 168 0
	cmpl	$1, -276(%rbp)	#, status
	je	.L46	#,
	.loc 1 169 0
	movl	$.LC20, %edi	#,
	call	puts	#
	.loc 1 170 0
	movl	$1, %eax	#, D.5366
	jmp	.L59	#
.L46:
	.loc 1 172 0
	leaq	-272(%rbp), %rax	#, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 173 0
	leaq	-272(%rbp), %rax	#, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	$.LC21, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L48	#,
	.loc 1 174 0
	movq	-304(%rbp), %rax	# flag, tmp73
	movl	$21, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L48:
	.loc 1 176 0
	leaq	-272(%rbp), %rax	#, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC22, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L50	#,
	.loc 1 177 0
	movq	-304(%rbp), %rax	# flag, tmp75
	movl	$22, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L50:
	.loc 1 179 0
	leaq	-272(%rbp), %rax	#, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC23, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L51	#,
	.loc 1 180 0
	movq	-304(%rbp), %rax	# flag, tmp77
	movl	$28, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L51:
	.loc 1 182 0
	leaq	-272(%rbp), %rax	#, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC24, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L52	#,
	.loc 1 183 0
	movq	-304(%rbp), %rax	# flag, tmp79
	movl	$23, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L52:
	.loc 1 185 0
	leaq	-272(%rbp), %rax	#, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC25, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L53	#,
	.loc 1 186 0
	movq	-304(%rbp), %rax	# flag, tmp81
	movl	$30, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L53:
	.loc 1 188 0
	leaq	-272(%rbp), %rax	#, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$.LC26, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L54	#,
	.loc 1 189 0
	movq	-304(%rbp), %rax	# flag, tmp83
	movl	$31, (%rax)	#, *flag_6(D)
	jmp	.L49	#
.L54:
	.loc 1 191 0
	leaq	-272(%rbp), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$.LC27, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5366
	jne	.L55	#,
	.loc 1 192 0
	movq	-304(%rbp), %rax	# flag, tmp85
	movl	$20, (%rax)	#, *flag_6(D)
	.loc 1 193 0
	movl	$10, %edi	#,
	call	putchar	#
	jmp	.L49	#
.L55:
	.loc 1 196 0
	leaq	-272(%rbp), %rax	#, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 197 0
	movl	$1, %eax	#, D.5366
	jmp	.L59	#
.L49:
	.loc 1 202 0
	movq	-304(%rbp), %rax	# flag, tmp87
	movl	(%rax), %eax	# *flag_6(D), D.5366
	cmpl	$20, %eax	#, D.5366
	je	.L56	#,
	.loc 1 203 0
	cmpl	$0, -292(%rbp)	#, prompt
	je	.L57	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	$.LC29, %edi	#,
	call	puts	#
.L57:
	.loc 1 204 0 is_stmt 1
	movq	-312(%rbp), %rax	# filename, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -276(%rbp)	# tmp89, status
	.loc 1 205 0
	cmpl	$1, -276(%rbp)	#, status
	je	.L58	#,
	.loc 1 206 0
	movl	$.LC30, %edi	#,
	call	puts	#
	movl	$1, %eax	#, D.5366
	jmp	.L59	#
.L58:
	.loc 1 208 0
	movq	-312(%rbp), %rax	# filename, tmp90
	movq	%rax, %rdi	# tmp90,
	call	puts	#
.L56:
	.loc 1 211 0
	movl	$0, %eax	#, D.5366
.L59:
	.loc 1 212 0
	movq	-8(%rbp), %rcx	# D.5367, tmp93
	xorq	%fs:40, %rcx	#, tmp93
	je	.L60	#,
	call	__stack_chk_fail	#
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ask_ending_lattice, .-ask_ending_lattice
	.section	.rodata
	.align 8
.LC33:
	.string	"unit gauge configuration loaded"
	.text
	.globl	coldlat
	.type	coldlat, @function
coldlat:
.LFB6:
	.loc 1 215 0
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
	subq	$24, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 220 0
	movl	$0, %r15d	#, i
	movq	lattice(%rip), %r14	# lattice, sit
	jmp	.L62	#
.L71:
	.loc 1 221 0
	movl	$0, %r13d	#, dir
	jmp	.L63	#
.L70:
	.loc 1 222 0
	movl	$0, %ebx	#, j
	jmp	.L64	#
.L69:
	.loc 1 223 0
	movl	$0, %r12d	#, k
	jmp	.L65	#
.L68:
	.loc 1 224 0
	cmpl	%r12d, %ebx	# k, j
	je	.L66	#,
	.loc 1 225 0
	movslq	%r12d, %rsi	# k, tmp66
	movslq	%r13d, %rax	# dir, tmp67
	movslq	%ebx, %rcx	# j, tmp68
	movq	%rax, %rdx	# tmp67, tmp69
	salq	$3, %rdx	#, tmp69
	addq	%rax, %rdx	# tmp67, tmp69
	movq	%rcx, %rax	# tmp68, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rcx, %rax	# tmp68, tmp70
	addq	%rdx, %rax	# tmp69, tmp71
	addq	%rsi, %rax	# tmp66, tmp72
	addq	$7, %rax	#, tmp73
	salq	$4, %rax	#, tmp74
	addq	%r14, %rax	# sit, tmp75
	movq	%rax, -56(%rbp)	# tmp75, %sfp
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	call	cmplx	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rax	# %sfp, tmp76
	movsd	%xmm1, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rdx	# %sfp, tmp77
	movq	-56(%rbp), %rdi	# %sfp, tmp75
	movq	%rax, (%rdi)	# tmp76, sit_5->link[dir_4].e
	movq	%rdi, %rax	# tmp75, tmp75
	movq	%rdx, 8(%rax)	# tmp77, sit_5->link[dir_4].e
	jmp	.L67	#
.L66:
	.loc 1 228 0
	movslq	%r12d, %rsi	# k, tmp78
	movslq	%r13d, %rax	# dir, tmp79
	movslq	%ebx, %rcx	# j, tmp80
	movq	%rax, %rdx	# tmp79, tmp81
	salq	$3, %rdx	#, tmp81
	addq	%rax, %rdx	# tmp79, tmp81
	movq	%rcx, %rax	# tmp80, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rcx, %rax	# tmp80, tmp82
	addq	%rdx, %rax	# tmp81, tmp83
	addq	%rsi, %rax	# tmp78, tmp84
	addq	$7, %rax	#, tmp85
	salq	$4, %rax	#, tmp86
	addq	%r14, %rax	# sit, tmp87
	movq	%rax, -56(%rbp)	# tmp87, %sfp
	xorpd	%xmm1, %xmm1	#
	movsd	.LC32(%rip), %xmm0	#,
	call	cmplx	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rax	# %sfp, tmp88
	movsd	%xmm1, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rdx	# %sfp, tmp89
	movq	-56(%rbp), %rsi	# %sfp, tmp87
	movq	%rax, (%rsi)	# tmp88, sit_5->link[dir_4].e
	movq	%rsi, %rax	# tmp87, tmp87
	movq	%rdx, 8(%rax)	# tmp89, sit_5->link[dir_4].e
.L67:
	.loc 1 223 0
	addl	$1, %r12d	#, k
.L65:
	.loc 1 223 0 is_stmt 0 discriminator 1
	cmpl	$2, %r12d	#, k
	jle	.L68	#,
	.loc 1 222 0 is_stmt 1
	addl	$1, %ebx	#, j
.L64:
	.loc 1 222 0 is_stmt 0 discriminator 1
	cmpl	$2, %ebx	#, j
	jle	.L69	#,
	.loc 1 221 0 is_stmt 1
	addl	$1, %r13d	#, dir
.L63:
	.loc 1 221 0 is_stmt 0 discriminator 1
	cmpl	$3, %r13d	#, dir
	jle	.L70	#,
	.loc 1 220 0 is_stmt 1
	addl	$1, %r15d	#, i
	addq	$2048, %r14	#, sit
.L62:
	.loc 1 220 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.14
	cmpl	%eax, %r15d	# sites_on_node.14, i
	jl	.L71	#,
	.loc 1 235 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.15
	testl	%eax, %eax	# this_node.15
	jne	.L61	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movl	$.LC33, %edi	#,
	call	puts	#
.L61:
	.loc 1 236 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coldlat, .-coldlat
	.globl	funnylat
	.type	funnylat, @function
funnylat:
.LFB7:
	.loc 1 238 0
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
	subq	$24, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 243 0
	movl	$0, %r15d	#, i
	movq	lattice(%rip), %rbx	# lattice, sit
	jmp	.L74	#
.L81:
	.loc 1 244 0
	movl	$0, %r12d	#, dir
	jmp	.L75	#
.L80:
	.loc 1 245 0
	movl	$0, %r13d	#, j
	jmp	.L76	#
.L79:
	.loc 1 246 0
	movl	$0, %r14d	#, k
	jmp	.L77	#
.L78:
	.loc 1 247 0 discriminator 2
	movslq	%r14d, %rsi	# k, tmp83
	movslq	%r12d, %rax	# dir, tmp84
	movslq	%r13d, %rcx	# j, tmp85
	movq	%rax, %rdx	# tmp84, tmp86
	salq	$3, %rdx	#, tmp86
	addq	%rax, %rdx	# tmp84, tmp86
	movq	%rcx, %rax	# tmp85, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rcx, %rax	# tmp85, tmp87
	addq	%rdx, %rax	# tmp86, tmp88
	addq	%rsi, %rax	# tmp83, tmp89
	addq	$7, %rax	#, tmp90
	salq	$4, %rax	#, tmp91
	addq	%rbx, %rax	# sit, tmp92
	movq	%rax, -56(%rbp)	# tmp92, %sfp
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	call	cmplx	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rax	# %sfp, tmp93
	movsd	%xmm1, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rdx	# %sfp, tmp94
	movq	-56(%rbp), %rdi	# %sfp, tmp92
	movq	%rax, (%rdi)	# tmp93, sit_5->link[dir_4].e
	movq	%rdi, %rax	# tmp92, tmp92
	movq	%rdx, 8(%rax)	# tmp94, sit_5->link[dir_4].e
	.loc 1 246 0 discriminator 2
	addl	$1, %r14d	#, k
.L77:
	.loc 1 246 0 is_stmt 0 discriminator 1
	cmpl	$2, %r14d	#, k
	jle	.L78	#,
	.loc 1 245 0 is_stmt 1
	addl	$1, %r13d	#, j
.L76:
	.loc 1 245 0 is_stmt 0 discriminator 1
	cmpl	$2, %r13d	#, j
	jle	.L79	#,
	.loc 1 250 0 is_stmt 1
	cvtsi2sd	%r12d, %xmm0	# dir, D.5381
	movslq	%r12d, %rdx	# dir, tmp95
	movq	%rdx, %rax	# tmp95, tmp96
	salq	$3, %rax	#, tmp96
	addq	%rdx, %rax	# tmp95, tmp96
	salq	$4, %rax	#, tmp97
	addq	%rbx, %rax	# sit, tmp98
	addq	$112, %rax	#, tmp99
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[0][0].real
	.loc 1 251 0
	movzwl	(%rbx), %eax	# sit_5->x, D.5382
	movswl	%ax, %edx	# D.5382, D.5383
	movl	%edx, %eax	# D.5383, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# D.5383, tmp100
	addl	%eax, %eax	# tmp101
	cvtsi2sd	%eax, %xmm0	# D.5383, D.5381
	movslq	%r12d, %rdx	# dir, tmp102
	movq	%rdx, %rax	# tmp102, tmp103
	salq	$3, %rax	#, tmp103
	addq	%rdx, %rax	# tmp102, tmp103
	salq	$4, %rax	#, tmp104
	addq	%rbx, %rax	# sit, tmp105
	addq	$176, %rax	#, tmp106
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[1][1].real
	.loc 1 252 0
	movzwl	2(%rbx), %eax	# sit_5->y, D.5382
	cwtl
	imull	$100, %eax, %eax	#, D.5383, D.5383
	cvtsi2sd	%eax, %xmm0	# D.5383, D.5381
	movslq	%r12d, %rdx	# dir, tmp107
	movq	%rdx, %rax	# tmp107, tmp108
	salq	$3, %rax	#, tmp108
	addq	%rdx, %rax	# tmp107, tmp108
	salq	$4, %rax	#, tmp109
	addq	%rbx, %rax	# sit, tmp110
	addq	$240, %rax	#, tmp111
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[2][2].real
	.loc 1 253 0
	cvtsi2sd	%r12d, %xmm0	# dir, D.5381
	movslq	%r12d, %rdx	# dir, tmp112
	movq	%rdx, %rax	# tmp112, tmp113
	salq	$3, %rax	#, tmp113
	addq	%rdx, %rax	# tmp112, tmp113
	salq	$4, %rax	#, tmp114
	addq	%rbx, %rax	# sit, tmp115
	addq	$120, %rax	#, tmp116
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[0][0].imag
	.loc 1 254 0
	movzwl	4(%rbx), %eax	# sit_5->z, D.5382
	movswl	%ax, %edx	# D.5382, D.5383
	movl	%edx, %eax	# D.5383, tmp117
	sall	$2, %eax	#, tmp117
	addl	%edx, %eax	# D.5383, tmp117
	addl	%eax, %eax	# tmp118
	cvtsi2sd	%eax, %xmm0	# D.5383, D.5381
	movslq	%r12d, %rdx	# dir, tmp119
	movq	%rdx, %rax	# tmp119, tmp120
	salq	$3, %rax	#, tmp120
	addq	%rdx, %rax	# tmp119, tmp120
	salq	$4, %rax	#, tmp121
	addq	%rbx, %rax	# sit, tmp122
	addq	$184, %rax	#, tmp123
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[1][1].imag
	.loc 1 255 0
	movzwl	6(%rbx), %eax	# sit_5->t, D.5382
	cwtl
	imull	$100, %eax, %eax	#, D.5383, D.5383
	cvtsi2sd	%eax, %xmm0	# D.5383, D.5381
	movslq	%r12d, %rdx	# dir, tmp124
	movq	%rdx, %rax	# tmp124, tmp125
	salq	$3, %rax	#, tmp125
	addq	%rdx, %rax	# tmp124, tmp125
	salq	$4, %rax	#, tmp126
	addq	%rbx, %rax	# sit, tmp127
	addq	$248, %rax	#, tmp128
	movsd	%xmm0, (%rax)	# D.5381, sit_5->link[dir_4].e[2][2].imag
	.loc 1 244 0
	addl	$1, %r12d	#, dir
.L75:
	.loc 1 244 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, dir
	jle	.L80	#,
	.loc 1 243 0 is_stmt 1
	addl	$1, %r15d	#, i
	addq	$2048, %rbx	#, sit
.L74:
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.16
	cmpl	%eax, %r15d	# sites_on_node.16, i
	jl	.L81	#,
	.loc 1 258 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	funnylat, .-funnylat
	.section	.rodata
.LC34:
	.string	"enter %s "
.LC35:
	.string	"%lf"
.LC36:
	.string	"%s %g\n"
.LC37:
	.string	"Data format error."
	.align 8
.LC38:
	.string	"get_f: EOF on STDIN while expecting %s.\n"
	.align 8
.LC39:
	.string	"get_f: Format error looking for %s\n"
	.align 8
.LC40:
	.string	"get_f: ERROR IN INPUT: expected %s but found %s\n"
	.align 8
.LC41:
	.string	"\nget_f: Expecting value for %s but found EOF.\n"
	.align 8
.LC42:
	.string	"\nget_f: Format error reading value for %s\n"
.LC43:
	.string	"%g\n"
	.text
	.globl	get_f
	.type	get_f, @function
get_f:
.LFB8:
	.loc 1 267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -116(%rbp)	# prompt, prompt
	movq	%rsi, -128(%rbp)	# variable_name_string, variable_name_string
	movq	%rdx, -136(%rbp)	# value, value
	.loc 1 267 0
	movq	%fs:40, %rax	#, tmp86
	movq	%rax, -8(%rbp)	# tmp86, D.5386
	xorl	%eax, %eax	# tmp86
	.loc 1 271 0
	cmpl	$0, -116(%rbp)	#, prompt
	je	.L83	#,
	.loc 1 272 0
	movl	$0, -100(%rbp)	#, s
	.loc 1 273 0
	jmp	.L84	#
.L86:
	.loc 1 274 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 275 0
	leaq	-96(%rbp), %rax	#, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	.loc 1 276 0
	movq	-136(%rbp), %rdx	# value, tmp66
	leaq	-96(%rbp), %rax	#, tmp67
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	movl	%eax, -100(%rbp)	# tmp68, s
	.loc 1 277 0
	cmpl	$1, -100(%rbp)	#, s
	jne	.L85	#,
	.loc 1 278 0
	movq	-136(%rbp), %rax	# value, tmp69
	movq	(%rax), %rax	# *value_6(D), D.5385
	movq	-128(%rbp), %rdx	# variable_name_string, tmp70
	movq	%rax, -144(%rbp)	# D.5385, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rsi	# tmp70,
	movl	$.LC36, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	jmp	.L84	#
.L85:
	.loc 1 280 0
	movl	$.LC37, %edi	#,
	call	puts	#
.L84:
	.loc 1 273 0 discriminator 1
	cmpl	$1, -100(%rbp)	#, s
	jne	.L86	#,
	jmp	.L87	#
.L83:
	.loc 1 284 0
	leaq	-96(%rbp), %rax	#, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp72, s
	.loc 1 285 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L88	#,
	.loc 1 286 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 288 0
	movl	$1, %eax	#, D.5384
	jmp	.L94	#
.L88:
	.loc 1 290 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L90	#,
	.loc 1 291 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 292 0
	movl	$1, %eax	#, D.5384
	jmp	.L94	#
.L90:
	.loc 1 294 0
	movq	-128(%rbp), %rdx	# variable_name_string, tmp75
	leaq	-96(%rbp), %rax	#, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	strcmp	#
	testl	%eax, %eax	# D.5384
	je	.L91	#,
	.loc 1 295 0
	leaq	-96(%rbp), %rdx	#, tmp77
	movq	-128(%rbp), %rax	# variable_name_string, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 297 0
	movl	$1, %eax	#, D.5384
	jmp	.L94	#
.L91:
	.loc 1 300 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 302 0
	movq	-136(%rbp), %rax	# value, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp81, s
	.loc 1 303 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L92	#,
	.loc 1 304 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 306 0
	movl	$1, %eax	#, D.5384
	jmp	.L94	#
.L92:
	.loc 1 308 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L93	#,
	.loc 1 309 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 311 0
	movl	$1, %eax	#, D.5384
	jmp	.L94	#
.L93:
	.loc 1 313 0
	movq	-136(%rbp), %rax	# value, tmp84
	movq	(%rax), %rax	# *value_6(D), D.5385
	movq	%rax, -144(%rbp)	# D.5385, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	movl	$.LC43, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L87:
	.loc 1 316 0
	movl	$0, %eax	#, D.5384
.L94:
	.loc 1 317 0
	movq	-8(%rbp), %rcx	# D.5386, tmp87
	xorq	%fs:40, %rcx	#, tmp87
	je	.L95	#,
	call	__stack_chk_fail	#
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_f, .-get_f
	.section	.rodata
.LC44:
	.string	"%d"
.LC45:
	.string	"%s %d\n"
	.align 8
.LC46:
	.string	"get_i: EOF on STDIN while expecting %s.\n"
	.align 8
.LC47:
	.string	"get_i: Format error looking for %s\n"
	.align 8
.LC48:
	.string	"get_i: ERROR IN INPUT: expected %s but found %s\n"
	.align 8
.LC49:
	.string	"\nget_i: Expecting value for %s but found EOF.\n"
	.align 8
.LC50:
	.string	"\nget_i: Format error reading value for %s\n"
.LC51:
	.string	"%d\n"
	.text
	.globl	get_i
	.type	get_i, @function
get_i:
.LFB9:
	.loc 1 319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -116(%rbp)	# prompt, prompt
	movq	%rsi, -128(%rbp)	# variable_name_string, variable_name_string
	movq	%rdx, -136(%rbp)	# value, value
	.loc 1 319 0
	movq	%fs:40, %rax	#, tmp86
	movq	%rax, -8(%rbp)	# tmp86, D.5398
	xorl	%eax, %eax	# tmp86
	.loc 1 323 0
	cmpl	$0, -116(%rbp)	#, prompt
	je	.L97	#,
	.loc 1 324 0
	movl	$0, -100(%rbp)	#, s
	.loc 1 325 0
	jmp	.L98	#
.L100:
	.loc 1 326 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 327 0
	leaq	-96(%rbp), %rax	#, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	.loc 1 328 0
	movq	-136(%rbp), %rdx	# value, tmp66
	leaq	-96(%rbp), %rax	#, tmp67
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	movl	%eax, -100(%rbp)	# tmp68, s
	.loc 1 329 0
	cmpl	$1, -100(%rbp)	#, s
	jne	.L99	#,
	.loc 1 330 0
	movq	-136(%rbp), %rax	# value, tmp69
	movl	(%rax), %edx	# *value_6(D), D.5397
	movq	-128(%rbp), %rax	# variable_name_string, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L98	#
.L99:
	.loc 1 332 0
	movl	$.LC37, %edi	#,
	call	puts	#
.L98:
	.loc 1 325 0 discriminator 1
	cmpl	$1, -100(%rbp)	#, s
	jne	.L100	#,
	jmp	.L101	#
.L97:
	.loc 1 336 0
	leaq	-96(%rbp), %rax	#, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp72, s
	.loc 1 337 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L102	#,
	.loc 1 338 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 340 0
	movl	$1, %eax	#, D.5397
	jmp	.L108	#
.L102:
	.loc 1 342 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L104	#,
	.loc 1 343 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 344 0
	movl	$1, %eax	#, D.5397
	jmp	.L108	#
.L104:
	.loc 1 346 0
	movq	-128(%rbp), %rdx	# variable_name_string, tmp75
	leaq	-96(%rbp), %rax	#, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	strcmp	#
	testl	%eax, %eax	# D.5397
	je	.L105	#,
	.loc 1 347 0
	leaq	-96(%rbp), %rdx	#, tmp77
	movq	-128(%rbp), %rax	# variable_name_string, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 349 0
	movl	$1, %eax	#, D.5397
	jmp	.L108	#
.L105:
	.loc 1 352 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 354 0
	movq	-136(%rbp), %rax	# value, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp81, s
	.loc 1 355 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L106	#,
	.loc 1 356 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 358 0
	movl	$1, %eax	#, D.5397
	jmp	.L108	#
.L106:
	.loc 1 360 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L107	#,
	.loc 1 361 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 363 0
	movl	$1, %eax	#, D.5397
	jmp	.L108	#
.L107:
	.loc 1 365 0
	movq	-136(%rbp), %rax	# value, tmp84
	movl	(%rax), %eax	# *value_6(D), D.5397
	movl	%eax, %esi	# D.5397,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L101:
	.loc 1 368 0
	movl	$0, %eax	#, D.5397
.L108:
	.loc 1 370 0
	movq	-8(%rbp), %rcx	# D.5398, tmp87
	xorq	%fs:40, %rcx	#, tmp87
	je	.L109	#,
	call	__stack_chk_fail	#
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_i, .-get_i
	.section	.rodata
.LC52:
	.string	"%s %s\n"
	.align 8
.LC53:
	.string	"get_s: EOF on STDIN while expecting %s.\n"
	.align 8
.LC54:
	.string	"get_s: Format error looking for %s\n"
	.align 8
.LC55:
	.string	"get_s: ERROR IN INPUT: expected %s but found %s\n"
	.align 8
.LC56:
	.string	"\nget_s: Expecting value for %s but found EOF.\n"
	.align 8
.LC57:
	.string	"\nget_s: Format error reading value for %s\n"
	.text
	.globl	get_s
	.type	get_s, @function
get_s:
.LFB10:
	.loc 1 374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -116(%rbp)	# prompt, prompt
	movq	%rsi, -128(%rbp)	# variable_name_string, variable_name_string
	movq	%rdx, -136(%rbp)	# value, value
	.loc 1 374 0
	movq	%fs:40, %rax	#, tmp82
	movq	%rax, -8(%rbp)	# tmp82, D.5408
	xorl	%eax, %eax	# tmp82
	.loc 1 378 0
	cmpl	$0, -116(%rbp)	#, prompt
	je	.L111	#,
	.loc 1 379 0
	movl	$0, -100(%rbp)	#, s
	.loc 1 380 0
	jmp	.L112	#
.L114:
	.loc 1 381 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 382 0
	movq	-136(%rbp), %rax	# value, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp64, s
	.loc 1 383 0
	cmpl	$1, -100(%rbp)	#, s
	jne	.L113	#,
	.loc 1 384 0
	movq	-136(%rbp), %rdx	# value, tmp65
	movq	-128(%rbp), %rax	# variable_name_string, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L112	#
.L113:
	.loc 1 386 0
	movl	$.LC37, %edi	#,
	call	puts	#
.L112:
	.loc 1 380 0 discriminator 1
	cmpl	$1, -100(%rbp)	#, s
	jne	.L114	#,
	jmp	.L115	#
.L111:
	.loc 1 390 0
	leaq	-96(%rbp), %rax	#, tmp67
	movq	%rax, %rsi	# tmp67,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp68, s
	.loc 1 391 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L116	#,
	.loc 1 392 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 394 0
	movl	$1, %eax	#, D.5407
	jmp	.L122	#
.L116:
	.loc 1 396 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L118	#,
	.loc 1 397 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 398 0
	movl	$1, %eax	#, D.5407
	jmp	.L122	#
.L118:
	.loc 1 400 0
	movq	-128(%rbp), %rdx	# variable_name_string, tmp71
	leaq	-96(%rbp), %rax	#, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	strcmp	#
	testl	%eax, %eax	# D.5407
	je	.L119	#,
	.loc 1 401 0
	leaq	-96(%rbp), %rdx	#, tmp73
	movq	-128(%rbp), %rax	# variable_name_string, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 403 0
	movl	$1, %eax	#, D.5407
	jmp	.L122	#
.L119:
	.loc 1 406 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 408 0
	movq	-136(%rbp), %rax	# value, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	movl	%eax, -100(%rbp)	# tmp77, s
	.loc 1 409 0
	cmpl	$-1, -100(%rbp)	#, s
	jne	.L120	#,
	.loc 1 410 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 412 0
	movl	$1, %eax	#, D.5407
	jmp	.L122	#
.L120:
	.loc 1 414 0
	cmpl	$0, -100(%rbp)	#, s
	jne	.L121	#,
	.loc 1 415 0
	movq	-128(%rbp), %rax	# variable_name_string, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 417 0
	movl	$1, %eax	#, D.5407
	jmp	.L122	#
.L121:
	.loc 1 419 0
	movq	-136(%rbp), %rax	# value, tmp80
	movq	%rax, %rdi	# tmp80,
	call	puts	#
.L115:
	.loc 1 421 0
	movl	$0, %eax	#, D.5407
.L122:
	.loc 1 422 0
	movq	-8(%rbp), %rcx	# D.5408, tmp83
	xorq	%fs:40, %rcx	#, tmp83
	je	.L123	#,
	call	__stack_chk_fail	#
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_s, .-get_s
	.section	.rodata
	.align 8
.LC58:
	.string	"type 0 for no prompts  or 1 for prompts"
.LC59:
	.string	"prompt"
.LC60:
	.string	"0"
.LC61:
	.string	"1"
	.align 8
.LC62:
	.string	"get_prompt: ERROR IN INPUT: initial prompt"
	.text
	.globl	get_prompt
	.type	get_prompt, @function
get_prompt:
.LFB11:
	.loc 1 428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# prompt, prompt
	.loc 1 428 0
	movq	%fs:40, %rax	#, tmp77
	movq	%rax, -8(%rbp)	# tmp77, D.5416
	xorl	%eax, %eax	# tmp77
	.loc 1 431 0
	movq	-104(%rbp), %rax	# prompt, tmp66
	movl	$-1, (%rax)	#, *prompt_2(D)
	.loc 1 432 0
	movl	$.LC58, %edi	#,
	call	puts	#
	.loc 1 433 0
	leaq	-96(%rbp), %rax	#, tmp67
	movq	%rax, %rsi	# tmp67,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	.loc 1 434 0
	leaq	-96(%rbp), %rax	#, tmp68
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	strcmp	#
	testl	%eax, %eax	# D.5415
	jne	.L125	#,
	.loc 1 435 0
	movq	-104(%rbp), %rax	# prompt, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf	#
	jmp	.L126	#
.L125:
	.loc 1 437 0
	leaq	-96(%rbp), %rax	#, tmp70
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	strcmp	#
	testl	%eax, %eax	# D.5415
	jne	.L127	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# prompt, tmp71
	movl	$0, (%rax)	#, *prompt_2(D)
	jmp	.L126	#
.L127:
	.loc 1 438 0 is_stmt 1
	leaq	-96(%rbp), %rax	#, tmp72
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	strcmp	#
	testl	%eax, %eax	# D.5415
	jne	.L126	#,
	.loc 1 438 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# prompt, tmp73
	movl	$1, (%rax)	#, *prompt_2(D)
.L126:
	.loc 1 440 0 is_stmt 1
	movq	-104(%rbp), %rax	# prompt, tmp74
	movl	(%rax), %eax	# *prompt_2(D), D.5415
	testl	%eax, %eax	# D.5415
	je	.L128	#,
	.loc 1 440 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# prompt, tmp75
	movl	(%rax), %eax	# *prompt_2(D), D.5415
	cmpl	$1, %eax	#, D.5415
	jne	.L129	#,
.L128:
	.loc 1 440 0 discriminator 1
	movl	$0, %eax	#, D.5415
	jmp	.L131	#
.L129:
	.loc 1 442 0 is_stmt 1
	movl	$.LC62, %edi	#,
	call	puts	#
	.loc 1 443 0
	movl	$1, %eax	#, D.5415
.L131:
	.loc 1 445 0
	movq	-8(%rbp), %rdx	# D.5416, tmp78
	xorq	%fs:40, %rdx	#, tmp78
	je	.L132	#,
	call	__stack_chk_fail	#
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_prompt, .-get_prompt
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC32:
	.long	0
	.long	1072693248
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
	.file 10 "./io_lat.h"
	.file 11 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb4f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF125
	.byte	0x1
	.long	.LASF126
	.long	.LASF127
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
	.long	.LASF128
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
	.uleb128 0x6
	.byte	0x8
	.long	0x62
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
	.long	0x2d5
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2ad
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x4b
	.long	0x2ad
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x4c
	.long	0x2b4
	.uleb128 0xd
	.byte	0x58
	.byte	0x7
	.byte	0x6
	.long	0x366
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
	.long	0x2ad
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xb
	.long	0x2e0
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x384
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x384
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2d5
	.long	0x39a
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
	.long	0x371
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3b8
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3b8
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2d5
	.long	0x3c8
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.long	0x3a5
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x430
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x2d5
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x2d5
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x2d5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x11
	.long	0x2ad
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.long	0x2ad
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x2ad
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x2ad
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x11
	.long	0x3d3
	.uleb128 0xb
	.long	0x3c8
	.long	0x44b
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
	.uleb128 0xd
	.byte	0x5c
	.byte	0xa
	.byte	0x41
	.long	0x4a6
	.uleb128 0x8
	.long	.LASF68
	.byte	0xa
	.byte	0x42
	.long	0x44b
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0xa
	.byte	0x43
	.long	0x4a6
	.byte	0x4
	.uleb128 0x8
	.long	.LASF70
	.byte	0xa
	.byte	0x47
	.long	0x4b6
	.byte	0x44
	.uleb128 0x8
	.long	.LASF71
	.byte	0xa
	.byte	0x48
	.long	0x44b
	.byte	0x54
	.uleb128 0x8
	.long	.LASF72
	.byte	0xa
	.byte	0x4a
	.long	0x44b
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x4b6
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x44b
	.long	0x4c6
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x50
	.long	0x461
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x60
	.long	0x4f2
	.uleb128 0x8
	.long	.LASF74
	.byte	0xa
	.byte	0x61
	.long	0x456
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0xa
	.byte	0x62
	.long	0x456
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xa
	.byte	0x63
	.long	0x4d1
	.uleb128 0xd
	.byte	0x38
	.byte	0xa
	.byte	0xfe
	.long	0x55f
	.uleb128 0xe
	.string	"fp"
	.byte	0xa
	.byte	0xff
	.long	0x55f
	.byte	0
	.uleb128 0x9
	.long	.LASF77
	.byte	0xa
	.value	0x100
	.long	0x565
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xa
	.value	0x101
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.value	0x102
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF80
	.byte	0xa
	.value	0x103
	.long	0x56b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF81
	.byte	0xa
	.value	0x105
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF82
	.byte	0xa
	.value	0x107
	.long	0x4f2
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x4c6
	.uleb128 0x6
	.byte	0x8
	.long	0x44b
	.uleb128 0xf
	.long	.LASF83
	.byte	0xa
	.value	0x108
	.long	0x4fd
	.uleb128 0x10
	.value	0x800
	.byte	0xb
	.byte	0x1f
	.long	0x694
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
	.long	.LASF84
	.byte	0xb
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF85
	.byte	0xb
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x29
	.long	0x366
	.byte	0x10
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x32
	.long	0x694
	.byte	0x70
	.uleb128 0x11
	.string	"mom"
	.byte	0xb
	.byte	0x3e
	.long	0x6a4
	.value	0x2b0
	.uleb128 0x12
	.long	.LASF89
	.byte	0xb
	.byte	0x42
	.long	0x6b4
	.value	0x3f0
	.uleb128 0x11
	.string	"phi"
	.byte	0xb
	.byte	0x45
	.long	0x3c8
	.value	0x410
	.uleb128 0x12
	.long	.LASF90
	.byte	0xb
	.byte	0x46
	.long	0x3c8
	.value	0x440
	.uleb128 0x12
	.long	.LASF91
	.byte	0xb
	.byte	0x47
	.long	0x3c8
	.value	0x470
	.uleb128 0x11
	.string	"xxx"
	.byte	0xb
	.byte	0x48
	.long	0x3c8
	.value	0x4a0
	.uleb128 0x11
	.string	"ttt"
	.byte	0xb
	.byte	0x49
	.long	0x3c8
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF92
	.byte	0xb
	.byte	0x4a
	.long	0x3c8
	.value	0x500
	.uleb128 0x12
	.long	.LASF93
	.byte	0xb
	.byte	0x5d
	.long	0x43b
	.value	0x530
	.uleb128 0x12
	.long	.LASF94
	.byte	0xb
	.byte	0x5f
	.long	0x43b
	.value	0x5f0
	.uleb128 0x12
	.long	.LASF95
	.byte	0xb
	.byte	0x60
	.long	0x3c8
	.value	0x6b0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xb
	.byte	0x62
	.long	0x39a
	.value	0x6e0
	.uleb128 0x12
	.long	.LASF97
	.byte	0xb
	.byte	0x62
	.long	0x39a
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x39a
	.long	0x6a4
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x430
	.long	0x6b4
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2ad
	.long	0x6c4
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF98
	.byte	0xb
	.byte	0x63
	.long	0x57d
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.byte	0xf
	.long	0x744
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x744
	.uleb128 0x14
	.long	.LASF99
	.byte	0x1
	.byte	0xf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xf
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF100
	.byte	0x1
	.byte	0x10
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"gf"
	.byte	0x1
	.byte	0x11
	.long	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF101
	.byte	0x1
	.byte	0x12
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0x12
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x571
	.uleb128 0x13
	.long	.LASF104
	.byte	0x1
	.byte	0x3c
	.long	0x744
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d8
	.uleb128 0x14
	.long	.LASF99
	.byte	0x1
	.byte	0x3c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x3c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF100
	.byte	0x1
	.byte	0x3d
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"gf"
	.byte	0x1
	.byte	0x3e
	.long	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF101
	.byte	0x1
	.byte	0x3f
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0x3f
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0x40
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF111
	.byte	0x1
	.byte	0x41
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF106
	.byte	0x1
	.byte	0x70
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x845
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0x70
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x14
	.long	.LASF99
	.byte	0x1
	.byte	0x70
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x70
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x71
	.long	0x845
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x72
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x855
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.long	.LASF110
	.byte	0x1
	.byte	0xa1
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0xa1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x14
	.long	.LASF99
	.byte	0x1
	.byte	0xa1
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xa1
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0xa2
	.long	0x845
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.byte	0xd7
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x91b
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.long	0x62
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xd9
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.byte	0xd9
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.byte	0xd9
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x16
	.string	"sit"
	.byte	0x1
	.byte	0xda
	.long	0x91b
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6c4
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.byte	0xee
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x97a
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.string	"sit"
	.byte	0x1
	.byte	0xf1
	.long	0x91b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.value	0x10b
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x9eb
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x10b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.value	0x10b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x10b
	.long	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x10c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x10d
	.long	0x9f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ad
	.uleb128 0xb
	.long	0x95
	.long	0xa01
	.uleb128 0xc
	.long	0x86
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x13f
	.long	0x62
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa72
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x13f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.value	0x13f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x13f
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x140
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x141
	.long	0x9f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.value	0x176
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xae3
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x176
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.value	0x176
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x176
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x177
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x178
	.long	0x9f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.value	0x1ac
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb26
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x1ac
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.value	0x1ad
	.long	0x9f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x1e
	.long	.LASF122
	.byte	0xb
	.byte	0x87
	.long	0x62
	.uleb128 0x1e
	.long	.LASF123
	.byte	0xb
	.byte	0x8b
	.long	0x62
	.uleb128 0x1e
	.long	.LASF124
	.byte	0xb
	.byte	0x9a
	.long	0x91b
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
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1b
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
.LASF32:
	.string	"_shortbuf"
.LASF128:
	.string	"_IO_lock_t"
.LASF71:
	.string	"header_bytes"
.LASF89:
	.string	"phase"
.LASF127:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF21:
	.string	"_IO_buf_end"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF82:
	.string	"check"
.LASF88:
	.string	"link"
.LASF25:
	.string	"_markers"
.LASF126:
	.string	"io_helpers.c"
.LASF65:
	.string	"anti_hermitmat"
.LASF112:
	.string	"funnylat"
.LASF98:
	.string	"site"
.LASF70:
	.string	"dims"
.LASF124:
	.string	"lattice"
.LASF46:
	.string	"_pos"
.LASF121:
	.string	"stdout"
.LASF101:
	.string	"ssplaq"
.LASF24:
	.string	"_IO_save_end"
.LASF49:
	.string	"float"
.LASF79:
	.string	"byterevflag"
.LASF85:
	.string	"index"
.LASF48:
	.string	"long long unsigned int"
.LASF111:
	.string	"coldlat"
.LASF81:
	.string	"parallel"
.LASF97:
	.string	"staple"
.LASF106:
	.string	"ask_starting_lattice"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF115:
	.string	"value"
.LASF27:
	.string	"_fileno"
.LASF114:
	.string	"variable_name_string"
.LASF107:
	.string	"prompt"
.LASF120:
	.string	"initial_prompt"
.LASF7:
	.string	"size_t"
.LASF56:
	.string	"ic_state"
.LASF92:
	.string	"g_rand"
.LASF16:
	.string	"_IO_read_base"
.LASF123:
	.string	"this_node"
.LASF68:
	.string	"magic_number"
.LASF44:
	.string	"_next"
.LASF84:
	.string	"parity"
.LASF116:
	.string	"checkname"
.LASF60:
	.string	"su3_vector"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF78:
	.string	"filename"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF72:
	.string	"order"
.LASF64:
	.string	"space"
.LASF93:
	.string	"tempvec"
.LASF109:
	.string	"status"
.LASF55:
	.string	"addend"
.LASF17:
	.string	"_IO_write_base"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF77:
	.string	"header"
.LASF122:
	.string	"sites_on_node"
.LASF83:
	.string	"gauge_file"
.LASF57:
	.string	"scale"
.LASF95:
	.string	"templongv1"
.LASF73:
	.string	"gauge_header"
.LASF119:
	.string	"get_prompt"
.LASF108:
	.string	"savebuf"
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
.LASF66:
	.string	"int32type"
.LASF31:
	.string	"_vtable_offset"
.LASF86:
	.string	"site_prn"
.LASF102:
	.string	"stplaq"
.LASF63:
	.string	"m22im"
.LASF125:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF62:
	.string	"m11im"
.LASF113:
	.string	"get_f"
.LASF117:
	.string	"get_i"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"get_s"
.LASF6:
	.string	"long int"
.LASF94:
	.string	"templongvec"
.LASF61:
	.string	"m00im"
.LASF99:
	.string	"flag"
.LASF67:
	.string	"u_int32type"
.LASF110:
	.string	"ask_ending_lattice"
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
.LASF104:
	.string	"reload_lattice"
.LASF1:
	.string	"unsigned char"
.LASF75:
	.string	"sum29"
.LASF45:
	.string	"_sbuf"
.LASF96:
	.string	"tempmat1"
.LASF52:
	.string	"imag"
.LASF18:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"rank2rcv"
.LASF103:
	.string	"save_lattice"
.LASF91:
	.string	"cg_p"
.LASF58:
	.string	"double_prn"
.LASF69:
	.string	"time_stamp"
.LASF74:
	.string	"sum31"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF105:
	.string	"max_deviation"
.LASF2:
	.string	"short unsigned int"
.LASF100:
	.string	"dtime"
.LASF50:
	.string	"double"
.LASF26:
	.string	"_chain"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF76:
	.string	"gauge_check"
.LASF30:
	.string	"_cur_column"
.LASF90:
	.string	"resid"
.LASF59:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
.LASF87:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
