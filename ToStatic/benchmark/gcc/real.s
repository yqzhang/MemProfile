	.file	"real.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 real.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"real.c"
	.text
	.type	endian, @function
endian:
.LFB2:
	.file 1 "real.c"
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# e, e
	movq	%rsi, -32(%rbp)	# x, x
	movl	%edx, -36(%rbp)	# mode, mode
	.loc 1 567 0
	movl	-36(%rbp), %eax	# mode, tmp80
	subl	$13, %eax	#, tmp79
	cmpl	$5, %eax	#, tmp79
	ja	.L2	#,
	movl	%eax, %eax	# tmp79, tmp81
	movq	.L4(,%rax,8), %rax	#, tmp82
	jmp	*%rax	# tmp82
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L2
	.quad	.L3
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.text
.L7:
	.loc 1 577 0
	movq	-32(%rbp), %rax	# x, tmp83
	addq	$24, %rax	#, D.12084
	movq	$0, (%rax)	#, *_3
.L6:
	.loc 1 585 0
	movq	-24(%rbp), %rax	# e, tmp84
	addq	$10, %rax	#, D.12085
	movzwl	(%rax), %eax	# *_5, D.12086
	movzwl	%ax, %eax	# D.12086, tmp85
	movq	%rax, -16(%rbp)	# tmp85, th
	.loc 1 586 0
	movq	-24(%rbp), %rax	# e, tmp86
	addq	$8, %rax	#, D.12085
	movzwl	(%rax), %eax	# *_8, D.12086
	movzwl	%ax, %eax	# D.12086, tmp87
	movq	%rax, -8(%rbp)	# tmp87, t
	.loc 1 587 0
	movq	-16(%rbp), %rax	# th, tmp88
	salq	$16, %rax	#, D.12087
	orq	%rax, -8(%rbp)	# D.12087, t
	.loc 1 588 0
	movq	-32(%rbp), %rax	# x, tmp89
	leaq	16(%rax), %rdx	#, D.12084
	movq	-8(%rbp), %rax	# t, t.3
	movq	%rax, (%rdx)	# t.3, *_13
.L5:
	.loc 1 593 0
	movq	-24(%rbp), %rax	# e, tmp90
	addq	$6, %rax	#, D.12085
	movzwl	(%rax), %eax	# *_15, D.12086
	movzwl	%ax, %eax	# D.12086, tmp91
	movq	%rax, -16(%rbp)	# tmp91, th
	.loc 1 594 0
	movq	-24(%rbp), %rax	# e, tmp92
	addq	$4, %rax	#, D.12085
	movzwl	(%rax), %eax	# *_18, D.12086
	movzwl	%ax, %eax	# D.12086, tmp93
	movq	%rax, -8(%rbp)	# tmp93, t
	.loc 1 595 0
	movq	-16(%rbp), %rax	# th, tmp94
	salq	$16, %rax	#, D.12087
	orq	%rax, -8(%rbp)	# D.12087, t
	.loc 1 596 0
	movq	-32(%rbp), %rax	# x, tmp95
	leaq	8(%rax), %rdx	#, D.12084
	movq	-8(%rbp), %rax	# t, t.4
	movq	%rax, (%rdx)	# t.4, *_23
.L3:
	.loc 1 602 0
	movq	-24(%rbp), %rax	# e, tmp96
	addq	$2, %rax	#, D.12085
	movzwl	(%rax), %eax	# *_25, D.12086
	movzwl	%ax, %eax	# D.12086, tmp97
	movq	%rax, -16(%rbp)	# tmp97, th
	.loc 1 603 0
	movq	-24(%rbp), %rax	# e, tmp98
	movzwl	(%rax), %eax	# *e_4(D), D.12086
	movzwl	%ax, %eax	# D.12086, tmp99
	movq	%rax, -8(%rbp)	# tmp99, t
	.loc 1 604 0
	movq	-16(%rbp), %rax	# th, tmp100
	salq	$16, %rax	#, D.12087
	orq	%rax, -8(%rbp)	# D.12087, t
	.loc 1 605 0
	movq	-8(%rbp), %rdx	# t, t.5
	movq	-32(%rbp), %rax	# x, tmp101
	movq	%rdx, (%rax)	# t.5, *x_2(D)
	.loc 1 606 0
	jmp	.L9	#
.L2:
	.loc 1 609 0
	movl	$__FUNCTION__.9002, %edx	#,
	movl	$609, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L9:
	.loc 1 612 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	endian, .-endian
	.globl	earith
	.type	earith, @function
earith:
.LFB3:
	.loc 1 623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# value, value
	movl	%esi, -76(%rbp)	# icode, icode
	movq	%rdx, -88(%rbp)	# r1, r1
	movq	%rcx, -96(%rbp)	# r2, r2
	.loc 1 627 0
	movq	-88(%rbp), %rcx	# r1, tmp66
	leaq	-48(%rbp), %rax	#, tmp67
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	memcpy	#
	.loc 1 628 0
	movq	-96(%rbp), %rcx	# r2, tmp68
	leaq	-32(%rbp), %rax	#, tmp69
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	memcpy	#
	.loc 1 631 0
	leaq	-48(%rbp), %rax	#, tmp70
	movq	%rax, %rdi	# tmp70,
	call	eisnan	#
	testl	%eax, %eax	# D.12089
	je	.L11	#,
	.loc 1 633 0
	leaq	-48(%rbp), %rcx	#, tmp71
	movq	-72(%rbp), %rax	# value, tmp72
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	memcpy	#
	movq	-72(%rbp), %rax	# value, tmp73
	addq	$12, %rax	#, D.12090
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12090,
	call	memset	#
	.loc 1 634 0
	jmp	.L10	#
.L11:
	.loc 1 636 0
	leaq	-32(%rbp), %rax	#, tmp74
	movq	%rax, %rdi	# tmp74,
	call	eisnan	#
	testl	%eax, %eax	# D.12089
	je	.L13	#,
	.loc 1 638 0
	leaq	-32(%rbp), %rcx	#, tmp75
	movq	-72(%rbp), %rax	# value, tmp76
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	memcpy	#
	movq	-72(%rbp), %rax	# value, tmp77
	addq	$12, %rax	#, D.12090
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12090,
	call	memset	#
	.loc 1 639 0
	jmp	.L10	#
.L13:
	.loc 1 642 0
	movl	-76(%rbp), %eax	# icode, tmp78
	movl	%eax, -52(%rbp)	# tmp78, code
	.loc 1 643 0
	movl	-52(%rbp), %eax	# code, tmp80
	subl	$59, %eax	#, tmp79
	cmpl	$20, %eax	#, tmp79
	ja	.L14	#,
	movl	%eax, %eax	# tmp79, tmp81
	movq	.L16(,%rax,8), %rax	#, tmp82
	jmp	*%rax	# tmp82
	.section	.rodata
	.align 8
	.align 4
.L16:
	.quad	.L15
	.quad	.L17
	.quad	.L18
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L19
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L14
	.quad	.L20
	.quad	.L21
	.text
.L15:
	.loc 1 646 0
	leaq	-16(%rbp), %rdx	#, tmp83
	leaq	-48(%rbp), %rcx	#, tmp84
	leaq	-32(%rbp), %rax	#, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	eadd	#
	.loc 1 647 0
	jmp	.L22	#
.L17:
	.loc 1 650 0
	leaq	-16(%rbp), %rdx	#, tmp86
	leaq	-48(%rbp), %rcx	#, tmp87
	leaq	-32(%rbp), %rax	#, tmp88
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	esub	#
	.loc 1 651 0
	jmp	.L22	#
.L18:
	.loc 1 654 0
	leaq	-16(%rbp), %rdx	#, tmp89
	leaq	-48(%rbp), %rcx	#, tmp90
	leaq	-32(%rbp), %rax	#, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	emul	#
	.loc 1 655 0
	jmp	.L22	#
.L19:
	.loc 1 669 0
	leaq	-16(%rbp), %rdx	#, tmp92
	leaq	-48(%rbp), %rcx	#, tmp93
	leaq	-32(%rbp), %rax	#, tmp94
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	ediv	#
	.loc 1 670 0
	jmp	.L22	#
.L20:
	.loc 1 673 0
	leaq	-32(%rbp), %rdx	#, tmp95
	leaq	-48(%rbp), %rax	#, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	ecmp	#
	testl	%eax, %eax	# D.12089
	jns	.L23	#,
	.loc 1 674 0
	leaq	-16(%rbp), %rdx	#, tmp97
	leaq	-48(%rbp), %rax	#, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	emov	#
	.loc 1 677 0
	jmp	.L22	#
.L23:
	.loc 1 676 0
	leaq	-16(%rbp), %rdx	#, tmp99
	leaq	-32(%rbp), %rax	#, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	emov	#
	.loc 1 677 0
	jmp	.L22	#
.L21:
	.loc 1 680 0
	leaq	-32(%rbp), %rdx	#, tmp101
	leaq	-48(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	ecmp	#
	testl	%eax, %eax	# D.12089
	jle	.L25	#,
	.loc 1 681 0
	leaq	-16(%rbp), %rdx	#, tmp103
	leaq	-48(%rbp), %rax	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	emov	#
	.loc 1 684 0
	jmp	.L22	#
.L25:
	.loc 1 683 0
	leaq	-16(%rbp), %rdx	#, tmp105
	leaq	-32(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	emov	#
	.loc 1 684 0
	jmp	.L22	#
.L14:
	.loc 1 686 0
	leaq	-16(%rbp), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	movl	$ezero, %edi	#,
	call	emov	#
	.loc 1 687 0
	nop
.L22:
	.loc 1 689 0
	leaq	-16(%rbp), %rcx	#, tmp108
	movq	-72(%rbp), %rax	# value, tmp109
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	memcpy	#
	movq	-72(%rbp), %rax	# value, tmp110
	addq	$12, %rax	#, D.12090
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12090,
	call	memset	#
.L10:
	.loc 1 690 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	earith, .-earith
	.globl	etrunci
	.type	etrunci, @function
etrunci:
.LFB4:
	.loc 1 699 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# .result_ptr, .result_ptr
	.loc 1 704 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp60
	movq	%rax, -48(%rbp)	# tmp60, MEM[(char * {ref-all})&g]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp61
	movl	%eax, -40(%rbp)	# tmp61, MEM[(char * {ref-all})&g]
	.loc 1 706 0
	leaq	-48(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	eisnan	#
	testl	%eax, %eax	# D.12091
	je	.L29	#,
	.loc 1 707 0
	movq	-88(%rbp), %rax	# .result_ptr, tmp63
	movq	16(%rbp), %rdx	# x, tmp64
	movq	%rdx, (%rax)	# tmp64, <retval>
	movq	24(%rbp), %rdx	# x, tmp65
	movq	%rdx, 8(%rax)	# tmp65, <retval>
	movq	32(%rbp), %rdx	# x, tmp66
	movq	%rdx, 16(%rax)	# tmp66, <retval>
	jmp	.L28	#
.L29:
	.loc 1 709 0
	leaq	-64(%rbp), %rdx	#, tmp67
	leaq	-72(%rbp), %rcx	#, tmp68
	leaq	-48(%rbp), %rax	#, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	eifrac	#
	.loc 1 710 0
	leaq	-48(%rbp), %rdx	#, tmp70
	leaq	-72(%rbp), %rax	#, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	ltoe	#
	.loc 1 711 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&g], tmp72
	movq	%rax, -32(%rbp)	# tmp72, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&g], tmp73
	movl	%eax, -24(%rbp)	# tmp73, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp74
	addq	$12, %rax	#, tmp75
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	memset	#
	.loc 1 712 0
	movq	-88(%rbp), %rax	# .result_ptr, tmp76
	movq	-32(%rbp), %rdx	# r, tmp77
	movq	%rdx, (%rax)	# tmp77, <retval>
	movq	-24(%rbp), %rdx	# r, tmp78
	movq	%rdx, 8(%rax)	# tmp78, <retval>
	movq	-16(%rbp), %rdx	# r, tmp79
	movq	%rdx, 16(%rax)	# tmp79, <retval>
.L28:
	.loc 1 713 0
	movq	-88(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	etrunci, .-etrunci
	.globl	etruncui
	.type	etruncui, @function
etruncui:
.LFB5:
	.loc 1 722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# .result_ptr, .result_ptr
	.loc 1 727 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp60
	movq	%rax, -48(%rbp)	# tmp60, MEM[(char * {ref-all})&g]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp61
	movl	%eax, -40(%rbp)	# tmp61, MEM[(char * {ref-all})&g]
	.loc 1 729 0
	leaq	-48(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	eisnan	#
	testl	%eax, %eax	# D.12093
	je	.L33	#,
	.loc 1 730 0
	movq	-88(%rbp), %rax	# .result_ptr, tmp63
	movq	16(%rbp), %rdx	# x, tmp64
	movq	%rdx, (%rax)	# tmp64, <retval>
	movq	24(%rbp), %rdx	# x, tmp65
	movq	%rdx, 8(%rax)	# tmp65, <retval>
	movq	32(%rbp), %rdx	# x, tmp66
	movq	%rdx, 16(%rax)	# tmp66, <retval>
	jmp	.L32	#
.L33:
	.loc 1 732 0
	leaq	-64(%rbp), %rdx	#, tmp67
	leaq	-72(%rbp), %rcx	#, tmp68
	leaq	-48(%rbp), %rax	#, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	euifrac	#
	.loc 1 733 0
	leaq	-48(%rbp), %rdx	#, tmp70
	leaq	-72(%rbp), %rax	#, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	ultoe	#
	.loc 1 734 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&g], tmp72
	movq	%rax, -32(%rbp)	# tmp72, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&g], tmp73
	movl	%eax, -24(%rbp)	# tmp73, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp74
	addq	$12, %rax	#, tmp75
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	memset	#
	.loc 1 735 0
	movq	-88(%rbp), %rax	# .result_ptr, tmp76
	movq	-32(%rbp), %rdx	# r, tmp77
	movq	%rdx, (%rax)	# tmp77, <retval>
	movq	-24(%rbp), %rdx	# r, tmp78
	movq	%rdx, 8(%rax)	# tmp78, <retval>
	movq	-16(%rbp), %rdx	# r, tmp79
	movq	%rdx, 16(%rax)	# tmp79, <retval>
.L32:
	.loc 1 736 0
	movq	-88(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	etruncui, .-etruncui
	.globl	ereal_atof
	.type	ereal_atof, @function
ereal_atof:
.LFB6:
	.loc 1 747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# s, s
	movl	%edx, -84(%rbp)	# t, t
	.loc 1 751 0
	movl	-84(%rbp), %eax	# t, tmp60
	subl	$13, %eax	#, tmp59
	cmpl	$5, %eax	#, tmp59
	ja	.L37	#,
	movl	%eax, %eax	# tmp59, tmp61
	movq	.L39(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L39:
	.quad	.L38
	.quad	.L37
	.quad	.L38
	.quad	.L40
	.quad	.L41
	.quad	.L41
	.text
.L38:
	.loc 1 764 0
	leaq	-64(%rbp), %rdx	#, tmp63
	movq	-80(%rbp), %rax	# s, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	asctoe24	#
	.loc 1 765 0
	leaq	-48(%rbp), %rdx	#, tmp65
	leaq	-64(%rbp), %rax	#, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	e24toe	#
	.loc 1 766 0
	jmp	.L42	#
.L40:
	.loc 1 769 0
	leaq	-64(%rbp), %rdx	#, tmp67
	movq	-80(%rbp), %rax	# s, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	asctoe53	#
	.loc 1 770 0
	leaq	-48(%rbp), %rdx	#, tmp69
	leaq	-64(%rbp), %rax	#, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	e53toe	#
	.loc 1 771 0
	jmp	.L42	#
.L41:
	.loc 1 782 0
	leaq	-64(%rbp), %rdx	#, tmp71
	movq	-80(%rbp), %rax	# s, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	asctoe64	#
	.loc 1 783 0
	leaq	-48(%rbp), %rdx	#, tmp73
	leaq	-64(%rbp), %rax	#, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	e64toe	#
	.loc 1 784 0
	jmp	.L42	#
.L37:
	.loc 1 787 0
	leaq	-48(%rbp), %rdx	#, tmp75
	movq	-80(%rbp), %rax	# s, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	asctoe	#
.L42:
	.loc 1 789 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp77
	movq	%rax, -32(%rbp)	# tmp77, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp78
	movl	%eax, -24(%rbp)	# tmp78, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp79
	addq	$12, %rax	#, tmp80
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	memset	#
	.loc 1 790 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp81
	movq	-32(%rbp), %rdx	# r, tmp82
	movq	%rdx, (%rax)	# tmp82, <retval>
	movq	-24(%rbp), %rdx	# r, tmp83
	movq	%rdx, 8(%rax)	# tmp83, <retval>
	movq	-16(%rbp), %rdx	# r, tmp84
	movq	%rdx, 16(%rax)	# tmp84, <retval>
	.loc 1 791 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ereal_atof, .-ereal_atof
	.globl	ereal_negate
	.type	ereal_negate, @function
ereal_negate:
.LFB7:
	.loc 1 799 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# .result_ptr, .result_ptr
	.loc 1 803 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp59
	movq	%rax, -48(%rbp)	# tmp59, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp60
	movl	%eax, -40(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	.loc 1 804 0
	leaq	-48(%rbp), %rax	#, tmp61
	movq	%rax, %rdi	# tmp61,
	call	eneg	#
	.loc 1 805 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp62
	movq	%rax, -32(%rbp)	# tmp62, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp63
	movl	%eax, -24(%rbp)	# tmp63, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp64
	addq	$12, %rax	#, tmp65
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	memset	#
	.loc 1 806 0
	movq	-56(%rbp), %rax	# .result_ptr, tmp66
	movq	-32(%rbp), %rdx	# r, tmp67
	movq	%rdx, (%rax)	# tmp67, <retval>
	movq	-24(%rbp), %rdx	# r, tmp68
	movq	%rdx, 8(%rax)	# tmp68, <retval>
	movq	-16(%rbp), %rdx	# r, tmp69
	movq	%rdx, 16(%rax)	# tmp69, <retval>
	.loc 1 807 0
	movq	-56(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ereal_negate, .-ereal_negate
	.section	.rodata
.LC1:
	.string	"conversion from NaN to int"
	.text
	.globl	efixi
	.type	efixi, @function
efixi:
.LFB8:
	.loc 1 816 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 820 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp62
	movq	%rax, -32(%rbp)	# tmp62, MEM[(char * {ref-all})&f]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp63
	movl	%eax, -24(%rbp)	# tmp63, MEM[(char * {ref-all})&f]
	.loc 1 822 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, %rdi	# tmp64,
	call	eisnan	#
	testl	%eax, %eax	# D.12098
	je	.L47	#,
	.loc 1 824 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 825 0
	movq	$-1, %rax	#, D.12097
	jmp	.L49	#
.L47:
	.loc 1 828 0
	leaq	-16(%rbp), %rdx	#, tmp65
	leaq	-40(%rbp), %rcx	#, tmp66
	leaq	-32(%rbp), %rax	#, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	eifrac	#
	.loc 1 829 0
	movq	-40(%rbp), %rax	# l, D.12097
.L49:
	.loc 1 830 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	efixi, .-efixi
	.section	.rodata
	.align 8
.LC2:
	.string	"conversion from NaN to unsigned int"
	.text
	.globl	efixui
	.type	efixui, @function
efixui:
.LFB9:
	.loc 1 839 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 843 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp62
	movq	%rax, -32(%rbp)	# tmp62, MEM[(char * {ref-all})&f]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp63
	movl	%eax, -24(%rbp)	# tmp63, MEM[(char * {ref-all})&f]
	.loc 1 845 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, %rdi	# tmp64,
	call	eisnan	#
	testl	%eax, %eax	# D.12101
	je	.L51	#,
	.loc 1 847 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 848 0
	movq	$-1, %rax	#, D.12100
	jmp	.L53	#
.L51:
	.loc 1 851 0
	leaq	-16(%rbp), %rdx	#, tmp65
	leaq	-40(%rbp), %rcx	#, tmp66
	leaq	-32(%rbp), %rax	#, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	euifrac	#
	.loc 1 852 0
	movq	-40(%rbp), %rax	# l, D.12100
.L53:
	.loc 1 853 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	efixui, .-efixui
	.globl	ereal_from_int
	.type	ereal_from_int, @function
ereal_from_int:
.LFB10:
	.loc 1 863 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# d, d
	movq	%rsi, -80(%rbp)	# i, i
	movq	%rdx, -88(%rbp)	# j, j
	movl	%ecx, -92(%rbp)	# mode, mode
	.loc 1 868 0
	movl	-92(%rbp), %eax	# mode, mode.6
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12103
	cmpl	$2, %eax	#, D.12103
	je	.L55	#,
	.loc 1 869 0
	movl	$__FUNCTION__.9084, %edx	#,
	movl	$869, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L55:
	.loc 1 870 0
	movl	$0, -52(%rbp)	#, sign
	.loc 1 871 0
	movq	-80(%rbp), %rax	# i, tmp74
	movq	%rax, -48(%rbp)	# tmp74, low
	.loc 1 872 0
	movq	-88(%rbp), %rax	# j, tmp75
	movq	%rax, -40(%rbp)	# tmp75, high
	movq	-40(%rbp), %rax	# high, high.7
	testq	%rax, %rax	# high.7
	jns	.L56	#,
	.loc 1 874 0
	movl	$1, -52(%rbp)	#, sign
	.loc 1 876 0
	movq	-40(%rbp), %rax	# high, high.8
	notq	%rax	# high.9
	movq	%rax, -40(%rbp)	# high.9, high
	.loc 1 877 0
	movq	-48(%rbp), %rax	# low, low.10
	testq	%rax, %rax	# low.10
	je	.L57	#,
	.loc 1 878 0
	movq	-48(%rbp), %rax	# low, low.11
	negq	%rax	# low.12
	movq	%rax, -48(%rbp)	# low.12, low
	jmp	.L56	#
.L57:
	.loc 1 880 0
	movq	-40(%rbp), %rax	# high, high.13
	addq	$1, %rax	#, high.14
	movq	%rax, -40(%rbp)	# high.14, high
.L56:
	.loc 1 882 0
	leaq	-32(%rbp), %rax	#, tmp76
	movq	%rax, %rdx	# tmp76,
	movl	$64, %esi	#,
	movl	$eone, %edi	#,
	call	eldexp	#
	.loc 1 883 0
	leaq	-16(%rbp), %rdx	#, tmp77
	leaq	-40(%rbp), %rax	#, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	ultoe	#
	.loc 1 884 0
	leaq	-16(%rbp), %rdx	#, tmp79
	leaq	-32(%rbp), %rcx	#, tmp80
	leaq	-16(%rbp), %rax	#, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	emul	#
	.loc 1 885 0
	leaq	-32(%rbp), %rdx	#, tmp82
	leaq	-48(%rbp), %rax	#, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	ultoe	#
	.loc 1 886 0
	leaq	-16(%rbp), %rdx	#, tmp84
	leaq	-16(%rbp), %rcx	#, tmp85
	leaq	-32(%rbp), %rax	#, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	eadd	#
	.loc 1 887 0
	cmpl	$0, -52(%rbp)	#, sign
	je	.L58	#,
	.loc 1 888 0
	leaq	-16(%rbp), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	eneg	#
.L58:
	.loc 1 893 0
	movl	-92(%rbp), %eax	# mode, mode.15
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.12104
	movzwl	%ax, %eax	# D.12104, D.12105
	cmpl	$64, %eax	#, D.12105
	je	.L60	#,
	cmpl	$64, %eax	#, D.12105
	jg	.L61	#,
	cmpl	$32, %eax	#, D.12105
	je	.L62	#,
	jmp	.L59	#
.L61:
	cmpl	$96, %eax	#, D.12105
	je	.L63	#,
	cmpl	$128, %eax	#, D.12105
	je	.L64	#,
	jmp	.L59	#
.L62:
	.loc 1 896 0
	leaq	-32(%rbp), %rdx	#, tmp89
	leaq	-16(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	etoe24	#
	.loc 1 897 0
	leaq	-16(%rbp), %rdx	#, tmp91
	leaq	-32(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	e24toe	#
	.loc 1 898 0
	jmp	.L65	#
.L60:
	.loc 1 901 0
	leaq	-32(%rbp), %rdx	#, tmp93
	leaq	-16(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	etoe53	#
	.loc 1 902 0
	leaq	-16(%rbp), %rdx	#, tmp95
	leaq	-32(%rbp), %rax	#, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	e53toe	#
	.loc 1 903 0
	jmp	.L65	#
.L63:
	.loc 1 906 0
	leaq	-32(%rbp), %rdx	#, tmp97
	leaq	-16(%rbp), %rax	#, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	etoe64	#
	.loc 1 907 0
	leaq	-16(%rbp), %rdx	#, tmp99
	leaq	-32(%rbp), %rax	#, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	e64toe	#
	.loc 1 908 0
	jmp	.L65	#
.L64:
	.loc 1 915 0
	leaq	-32(%rbp), %rdx	#, tmp101
	leaq	-16(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	etoe64	#
	.loc 1 916 0
	leaq	-16(%rbp), %rdx	#, tmp103
	leaq	-32(%rbp), %rax	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	e64toe	#
	.loc 1 918 0
	jmp	.L65	#
.L59:
	.loc 1 921 0
	movl	$__FUNCTION__.9084, %edx	#,
	movl	$921, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L65:
	.loc 1 924 0
	leaq	-16(%rbp), %rcx	#, tmp105
	movq	-72(%rbp), %rax	# d, tmp106
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	memcpy	#
	movq	-72(%rbp), %rax	# d, tmp107
	addq	$12, %rax	#, D.12106
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12106,
	call	memset	#
	.loc 1 925 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ereal_from_int, .-ereal_from_int
	.globl	ereal_from_uint
	.type	ereal_from_uint, @function
ereal_from_uint:
.LFB11:
	.loc 1 935 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# d, d
	movq	%rsi, -64(%rbp)	# i, i
	movq	%rdx, -72(%rbp)	# j, j
	movl	%ecx, -76(%rbp)	# mode, mode
	.loc 1 939 0
	movl	-76(%rbp), %eax	# mode, mode.16
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12108
	cmpl	$2, %eax	#, D.12108
	je	.L67	#,
	.loc 1 940 0
	movl	$__FUNCTION__.9101, %edx	#,
	movl	$940, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L67:
	.loc 1 941 0
	movq	-64(%rbp), %rax	# i, tmp66
	movq	%rax, -48(%rbp)	# tmp66, low
	.loc 1 942 0
	movq	-72(%rbp), %rax	# j, tmp67
	movq	%rax, -40(%rbp)	# tmp67, high
	.loc 1 943 0
	leaq	-32(%rbp), %rax	#, tmp68
	movq	%rax, %rdx	# tmp68,
	movl	$64, %esi	#,
	movl	$eone, %edi	#,
	call	eldexp	#
	.loc 1 944 0
	leaq	-16(%rbp), %rdx	#, tmp69
	leaq	-40(%rbp), %rax	#, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	ultoe	#
	.loc 1 945 0
	leaq	-16(%rbp), %rdx	#, tmp71
	leaq	-32(%rbp), %rcx	#, tmp72
	leaq	-16(%rbp), %rax	#, tmp73
	movq	%rcx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	emul	#
	.loc 1 946 0
	leaq	-32(%rbp), %rdx	#, tmp74
	leaq	-48(%rbp), %rax	#, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	ultoe	#
	.loc 1 947 0
	leaq	-16(%rbp), %rdx	#, tmp76
	leaq	-16(%rbp), %rcx	#, tmp77
	leaq	-32(%rbp), %rax	#, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	eadd	#
	.loc 1 952 0
	movl	-76(%rbp), %eax	# mode, mode.17
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.12109
	movzwl	%ax, %eax	# D.12109, D.12110
	cmpl	$64, %eax	#, D.12110
	je	.L69	#,
	cmpl	$64, %eax	#, D.12110
	jg	.L70	#,
	cmpl	$32, %eax	#, D.12110
	je	.L71	#,
	jmp	.L68	#
.L70:
	cmpl	$96, %eax	#, D.12110
	je	.L72	#,
	cmpl	$128, %eax	#, D.12110
	je	.L73	#,
	jmp	.L68	#
.L71:
	.loc 1 955 0
	leaq	-32(%rbp), %rdx	#, tmp80
	leaq	-16(%rbp), %rax	#, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	etoe24	#
	.loc 1 956 0
	leaq	-16(%rbp), %rdx	#, tmp82
	leaq	-32(%rbp), %rax	#, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	e24toe	#
	.loc 1 957 0
	jmp	.L74	#
.L69:
	.loc 1 960 0
	leaq	-32(%rbp), %rdx	#, tmp84
	leaq	-16(%rbp), %rax	#, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	etoe53	#
	.loc 1 961 0
	leaq	-16(%rbp), %rdx	#, tmp86
	leaq	-32(%rbp), %rax	#, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	e53toe	#
	.loc 1 962 0
	jmp	.L74	#
.L72:
	.loc 1 965 0
	leaq	-32(%rbp), %rdx	#, tmp88
	leaq	-16(%rbp), %rax	#, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	etoe64	#
	.loc 1 966 0
	leaq	-16(%rbp), %rdx	#, tmp90
	leaq	-32(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	e64toe	#
	.loc 1 967 0
	jmp	.L74	#
.L73:
	.loc 1 974 0
	leaq	-32(%rbp), %rdx	#, tmp92
	leaq	-16(%rbp), %rax	#, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	etoe64	#
	.loc 1 975 0
	leaq	-16(%rbp), %rdx	#, tmp94
	leaq	-32(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	e64toe	#
	.loc 1 977 0
	jmp	.L74	#
.L68:
	.loc 1 980 0
	movl	$__FUNCTION__.9101, %edx	#,
	movl	$980, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L74:
	.loc 1 983 0
	leaq	-16(%rbp), %rcx	#, tmp96
	movq	-56(%rbp), %rax	# d, tmp97
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	memcpy	#
	movq	-56(%rbp), %rax	# d, tmp98
	addq	$12, %rax	#, D.12111
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12111,
	call	memset	#
	.loc 1 984 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ereal_from_uint, .-ereal_from_uint
	.globl	ereal_to_int
	.type	ereal_to_int, @function
ereal_to_int:
.LFB12:
	.loc 1 993 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# low, low
	movq	%rsi, -96(%rbp)	# high, high
	.loc 1 997 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&rr], tmp68
	movq	%rax, -64(%rbp)	# tmp68, MEM[(char * {ref-all})&d]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&rr], tmp69
	movl	%eax, -56(%rbp)	# tmp69, MEM[(char * {ref-all})&d]
	.loc 1 999 0
	leaq	-64(%rbp), %rax	#, tmp70
	movq	%rax, %rdi	# tmp70,
	call	eisnan	#
	testl	%eax, %eax	# D.12113
	je	.L76	#,
	.loc 1 1001 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 1002 0
	movq	-88(%rbp), %rax	# low, tmp71
	movq	$-1, (%rax)	#, *low_3(D)
	.loc 1 1003 0
	movq	-96(%rbp), %rax	# high, tmp72
	movq	$-1, (%rax)	#, *high_4(D)
	jmp	.L75	#
.L76:
	.loc 1 1008 0
	movl	$0, -68(%rbp)	#, s
	.loc 1 1009 0
	leaq	-64(%rbp), %rax	#, tmp73
	movq	%rax, %rdi	# tmp73,
	call	eisneg	#
	testl	%eax, %eax	# D.12113
	je	.L78	#,
	.loc 1 1011 0
	leaq	-64(%rbp), %rax	#, tmp74
	movq	%rax, %rdi	# tmp74,
	call	eneg	#
	.loc 1 1012 0
	movl	$1, -68(%rbp)	#, s
.L78:
	.loc 1 1014 0
	leaq	-48(%rbp), %rax	#, tmp75
	movq	%rax, %rdx	# tmp75,
	movl	$64, %esi	#,
	movl	$eone, %edi	#,
	call	eldexp	#
	.loc 1 1015 0
	leaq	-32(%rbp), %rdx	#, tmp76
	leaq	-64(%rbp), %rcx	#, tmp77
	leaq	-48(%rbp), %rax	#, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	ediv	#
	.loc 1 1016 0
	leaq	-16(%rbp), %rdx	#, tmp79
	movq	-96(%rbp), %rcx	# high, tmp80
	leaq	-32(%rbp), %rax	#, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	euifrac	#
	.loc 1 1017 0
	leaq	-32(%rbp), %rdx	#, tmp82
	leaq	-16(%rbp), %rcx	#, tmp83
	leaq	-48(%rbp), %rax	#, tmp84
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	emul	#
	.loc 1 1018 0
	leaq	-16(%rbp), %rdx	#, tmp85
	movq	-88(%rbp), %rcx	# low, tmp86
	leaq	-32(%rbp), %rax	#, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	euifrac	#
	.loc 1 1019 0
	cmpl	$0, -68(%rbp)	#, s
	je	.L75	#,
	.loc 1 1022 0
	movq	-96(%rbp), %rax	# high, tmp88
	movq	(%rax), %rax	# *high_4(D), D.12114
	notq	%rax	# D.12114
	movq	%rax, %rdx	# D.12114, D.12114
	movq	-96(%rbp), %rax	# high, tmp89
	movq	%rdx, (%rax)	# D.12114, *high_4(D)
	.loc 1 1023 0
	movq	-88(%rbp), %rax	# low, tmp90
	movq	(%rax), %rax	# *low_3(D), D.12114
	testq	%rax, %rax	# D.12114
	je	.L80	#,
	.loc 1 1024 0
	movq	-88(%rbp), %rax	# low, tmp91
	movq	(%rax), %rax	# *low_3(D), D.12114
	negq	%rax	# D.12114
	movq	%rax, %rdx	# D.12114, D.12114
	movq	-88(%rbp), %rax	# low, tmp92
	movq	%rdx, (%rax)	# D.12114, *low_3(D)
	jmp	.L75	#
.L80:
	.loc 1 1026 0
	movq	-96(%rbp), %rax	# high, tmp93
	movq	(%rax), %rax	# *high_4(D), D.12114
	leaq	1(%rax), %rdx	#, D.12114
	movq	-96(%rbp), %rax	# high, tmp94
	movq	%rdx, (%rax)	# D.12114, *high_4(D)
.L75:
	.loc 1 1028 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ereal_to_int, .-ereal_to_int
	.globl	ereal_ldexp
	.type	ereal_ldexp, @function
ereal_ldexp:
.LFB13:
	.loc 1 1037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movl	%esi, -76(%rbp)	# n, n
	.loc 1 1041 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp60
	movq	%rax, -64(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp61
	movl	%eax, -56(%rbp)	# tmp61, MEM[(char * {ref-all})&e]
	.loc 1 1043 0
	leaq	-64(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	eisnan	#
	testl	%eax, %eax	# D.12115
	je	.L82	#,
	.loc 1 1044 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp63
	movq	16(%rbp), %rdx	# x, tmp64
	movq	%rdx, (%rax)	# tmp64, <retval>
	movq	24(%rbp), %rdx	# x, tmp65
	movq	%rdx, 8(%rax)	# tmp65, <retval>
	movq	32(%rbp), %rdx	# x, tmp66
	movq	%rdx, 16(%rax)	# tmp66, <retval>
	jmp	.L81	#
.L82:
	.loc 1 1046 0
	leaq	-48(%rbp), %rdx	#, tmp67
	movl	-76(%rbp), %ecx	# n, tmp68
	leaq	-64(%rbp), %rax	#, tmp69
	movl	%ecx, %esi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	eldexp	#
	.loc 1 1047 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&y], tmp70
	movq	%rax, -32(%rbp)	# tmp70, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&y], tmp71
	movl	%eax, -24(%rbp)	# tmp71, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp72
	addq	$12, %rax	#, tmp73
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	memset	#
	.loc 1 1048 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp74
	movq	-32(%rbp), %rdx	# r, tmp75
	movq	%rdx, (%rax)	# tmp75, <retval>
	movq	-24(%rbp), %rdx	# r, tmp76
	movq	%rdx, 8(%rax)	# tmp76, <retval>
	movq	-16(%rbp), %rdx	# r, tmp77
	movq	%rdx, 16(%rax)	# tmp77, <retval>
.L81:
	.loc 1 1049 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ereal_ldexp, .-ereal_ldexp
	.globl	target_isinf
	.type	target_isinf, @function
target_isinf:
.LFB14:
	.loc 1 1061 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1065 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp61
	movq	%rax, -16(%rbp)	# tmp61, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp62
	movl	%eax, -8(%rbp)	# tmp62, MEM[(char * {ref-all})&e]
	.loc 1 1066 0
	leaq	-16(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	eisinf	#
	.loc 1 1070 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	target_isinf, .-target_isinf
	.globl	target_isnan
	.type	target_isnan, @function
target_isnan:
.LFB15:
	.loc 1 1077 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1081 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp61
	movq	%rax, -16(%rbp)	# tmp61, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp62
	movl	%eax, -8(%rbp)	# tmp62, MEM[(char * {ref-all})&e]
	.loc 1 1082 0
	leaq	-16(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	eisnan	#
	.loc 1 1086 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	target_isnan, .-target_isnan
	.globl	target_negative
	.type	target_negative, @function
target_negative:
.LFB16:
	.loc 1 1095 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1096 0
	movq	16(%rbp), %rax	# x, tmp61
	movq	%rax, (%rsp)	# tmp61,
	movq	24(%rbp), %rax	# x, tmp62
	movq	%rax, 8(%rsp)	# tmp62,
	movq	32(%rbp), %rax	# x, tmp63
	movq	%rax, 16(%rsp)	# tmp63,
	call	ereal_isneg	#
	.loc 1 1097 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	target_negative, .-target_negative
	.globl	real_value_truncate
	.type	real_value_truncate, @function
real_value_truncate:
.LFB17:
	.loc 1 1106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movl	%esi, -76(%rbp)	# mode, mode
	.loc 1 1110 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&arg], tmp60
	movq	%rax, -64(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&arg], tmp61
	movl	%eax, -56(%rbp)	# tmp61, MEM[(char * {ref-all})&e]
	.loc 1 1112 0
	leaq	-64(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	eisnan	#
	testl	%eax, %eax	# D.12121
	je	.L92	#,
	.loc 1 1113 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp63
	movq	16(%rbp), %rdx	# arg, tmp64
	movq	%rdx, (%rax)	# tmp64, <retval>
	movq	24(%rbp), %rdx	# arg, tmp65
	movq	%rdx, 8(%rax)	# tmp65, <retval>
	movq	32(%rbp), %rdx	# arg, tmp66
	movq	%rdx, 16(%rax)	# tmp66, <retval>
	jmp	.L91	#
.L92:
	.loc 1 1115 0
	leaq	-48(%rbp), %rax	#, tmp67
	movq	%rax, %rdi	# tmp67,
	call	eclear	#
	.loc 1 1116 0
	movl	-76(%rbp), %eax	# mode, tmp69
	subl	$4, %eax	#, tmp68
	cmpl	$14, %eax	#, tmp68
	ja	.L94	#,
	movl	%eax, %eax	# tmp68, tmp70
	movq	.L96(,%rax,8), %rax	#, tmp71
	jmp	*%rax	# tmp71
	.section	.rodata
	.align 8
	.align 4
.L96:
	.quad	.L95
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L97
	.quad	.L94
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.quad	.L99
	.text
.L99:
	.loc 1 1127 0
	leaq	-48(%rbp), %rdx	#, tmp72
	leaq	-64(%rbp), %rax	#, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	etoe64	#
	.loc 1 1128 0
	leaq	-48(%rbp), %rdx	#, tmp74
	leaq	-48(%rbp), %rax	#, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	e64toe	#
	.loc 1 1129 0
	jmp	.L100	#
.L98:
	.loc 1 1132 0
	leaq	-48(%rbp), %rdx	#, tmp76
	leaq	-64(%rbp), %rax	#, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	etoe53	#
	.loc 1 1133 0
	leaq	-48(%rbp), %rdx	#, tmp78
	leaq	-48(%rbp), %rax	#, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	e53toe	#
	.loc 1 1134 0
	jmp	.L100	#
.L97:
	.loc 1 1140 0
	leaq	-48(%rbp), %rdx	#, tmp80
	leaq	-64(%rbp), %rax	#, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	etoe24	#
	.loc 1 1141 0
	leaq	-48(%rbp), %rdx	#, tmp82
	leaq	-48(%rbp), %rax	#, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	e24toe	#
	.loc 1 1142 0
	jmp	.L100	#
.L95:
	.loc 1 1153 0
	leaq	-112(%rbp), %rax	#, tmp84
	movq	16(%rbp), %rdx	# arg, tmp85
	movq	%rdx, (%rsp)	# tmp85,
	movq	24(%rbp), %rdx	# arg, tmp86
	movq	%rdx, 8(%rsp)	# tmp86,
	movq	32(%rbp), %rdx	# arg, tmp87
	movq	%rdx, 16(%rsp)	# tmp87,
	movq	%rax, %rdi	# tmp84,
	call	etrunci	#
	movq	-112(%rbp), %rax	#, tmp88
	movq	%rax, -32(%rbp)	# tmp88, r
	movq	-104(%rbp), %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, r
	movq	-96(%rbp), %rax	#, tmp90
	movq	%rax, -16(%rbp)	# tmp90, r
	.loc 1 1154 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp91
	movq	-32(%rbp), %rdx	# r, tmp92
	movq	%rdx, (%rax)	# tmp92, <retval>
	movq	-24(%rbp), %rdx	# r, tmp93
	movq	%rdx, 8(%rax)	# tmp93, <retval>
	movq	-16(%rbp), %rdx	# r, tmp94
	movq	%rdx, 16(%rax)	# tmp94, <retval>
	jmp	.L91	#
.L94:
	.loc 1 1161 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp95
	movq	16(%rbp), %rdx	# arg, tmp96
	movq	%rdx, (%rax)	# tmp96, <retval>
	movq	24(%rbp), %rdx	# arg, tmp97
	movq	%rdx, 8(%rax)	# tmp97, <retval>
	movq	32(%rbp), %rdx	# arg, tmp98
	movq	%rdx, 16(%rax)	# tmp98, <retval>
	jmp	.L91	#
.L100:
	.loc 1 1163 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&t], tmp99
	movq	%rax, -32(%rbp)	# tmp99, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&t], tmp100
	movl	%eax, -24(%rbp)	# tmp100, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp101
	addq	$12, %rax	#, tmp102
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	memset	#
	.loc 1 1164 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp103
	movq	-32(%rbp), %rdx	# r, tmp104
	movq	%rdx, (%rax)	# tmp104, <retval>
	movq	-24(%rbp), %rdx	# r, tmp105
	movq	%rdx, 8(%rax)	# tmp105, <retval>
	movq	-16(%rbp), %rdx	# r, tmp106
	movq	%rdx, 16(%rax)	# tmp106, <retval>
.L91:
	.loc 1 1165 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	real_value_truncate, .-real_value_truncate
	.globl	exact_real_inverse
	.type	exact_real_inverse, @function
exact_real_inverse:
.LFB18:
	.loc 1 1174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -84(%rbp)	# mode, mode
	movq	%rsi, -96(%rbp)	# r, r
	.loc 1 1179 0
	movq	-96(%rbp), %rcx	# r, tmp72
	leaq	-64(%rbp), %rax	#, tmp73
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	memcpy	#
	.loc 1 1182 0
	leaq	-64(%rbp), %rax	#, tmp74
	movq	%rax, %rdi	# tmp74,
	call	eisinf	#
	testl	%eax, %eax	# D.12124
	jne	.L103	#,
	.loc 1 1182 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rax	#, tmp75
	movq	%rax, %rdi	# tmp75,
	call	eisnan	#
	testl	%eax, %eax	# D.12124
	jne	.L103	#,
	leaq	-64(%rbp), %rax	#, tmp76
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	ecmp	#
	testl	%eax, %eax	# D.12124
	jne	.L104	#,
.L103:
	.loc 1 1183 0 is_stmt 1
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L104:
	.loc 1 1187 0
	movzwl	-56(%rbp), %eax	# e, D.12125
	cmpw	$-32768, %ax	#, D.12125
	je	.L106	#,
	.loc 1 1188 0
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L106:
	.loc 1 1190 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L107	#
.L109:
	.loc 1 1192 0
	movl	-68(%rbp), %eax	# i, tmp78
	cltq
	movzwl	-64(%rbp,%rax,2), %eax	# e, D.12125
	testw	%ax, %ax	# D.12125
	je	.L108	#,
	.loc 1 1193 0
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L108:
	.loc 1 1190 0
	addl	$1, -68(%rbp)	#, i
.L107:
	.loc 1 1190 0 is_stmt 0 discriminator 1
	cmpl	$3, -68(%rbp)	#, i
	jle	.L109	#,
	.loc 1 1197 0 is_stmt 1
	leaq	-48(%rbp), %rdx	#, tmp79
	leaq	-64(%rbp), %rax	#, tmp80
	movl	$eone, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	ediv	#
	.loc 1 1198 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&einv], tmp81
	movq	%rax, -32(%rbp)	# tmp81, MEM[(char * {ref-all})&rinv]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&einv], tmp82
	movl	%eax, -24(%rbp)	# tmp82, MEM[(char * {ref-all})&rinv]
	leaq	-32(%rbp), %rax	#, tmp83
	addq	$12, %rax	#, tmp84
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	memset	#
	.loc 1 1199 0
	leaq	-128(%rbp), %rax	#, tmp85
	movl	-84(%rbp), %edx	# mode, tmp86
	movq	-32(%rbp), %rcx	# rinv, tmp87
	movq	%rcx, (%rsp)	# tmp87,
	movq	-24(%rbp), %rcx	# rinv, tmp88
	movq	%rcx, 8(%rsp)	# tmp88,
	movq	-16(%rbp), %rcx	# rinv, tmp89
	movq	%rcx, 16(%rsp)	# tmp89,
	movl	%edx, %esi	# tmp86,
	movq	%rax, %rdi	# tmp85,
	call	real_value_truncate	#
	movq	-128(%rbp), %rax	#, tmp90
	movq	%rax, -32(%rbp)	# tmp90, rinv
	movq	-120(%rbp), %rax	#, tmp91
	movq	%rax, -24(%rbp)	# tmp91, rinv
	movq	-112(%rbp), %rax	#, tmp92
	movq	%rax, -16(%rbp)	# tmp92, rinv
	.loc 1 1208 0
	movq	-32(%rbp), %rax	# MEM[(char * {ref-all})&rinv], tmp93
	movq	%rax, -48(%rbp)	# tmp93, MEM[(char * {ref-all})&einv]
	movl	-24(%rbp), %eax	# MEM[(char * {ref-all})&rinv], tmp94
	movl	%eax, -40(%rbp)	# tmp94, MEM[(char * {ref-all})&einv]
	.loc 1 1212 0
	movzwl	-40(%rbp), %eax	# einv, D.12125
	cmpw	$-32768, %ax	#, D.12125
	je	.L110	#,
	.loc 1 1213 0
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L110:
	.loc 1 1215 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L111	#
.L113:
	.loc 1 1217 0
	movl	-68(%rbp), %eax	# i, tmp96
	cltq
	movzwl	-48(%rbp,%rax,2), %eax	# einv, D.12125
	testw	%ax, %ax	# D.12125
	je	.L112	#,
	.loc 1 1218 0
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L112:
	.loc 1 1215 0
	addl	$1, -68(%rbp)	#, i
.L111:
	.loc 1 1215 0 is_stmt 0 discriminator 1
	cmpl	$3, -68(%rbp)	#, i
	jle	.L113	#,
	.loc 1 1222 0 is_stmt 1
	leaq	-48(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	eisinf	#
	testl	%eax, %eax	# D.12124
	jne	.L114	#,
	.loc 1 1222 0 is_stmt 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	eisnan	#
	testl	%eax, %eax	# D.12124
	jne	.L114	#,
	leaq	-48(%rbp), %rax	#, tmp99
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	ecmp	#
	testl	%eax, %eax	# D.12124
	jne	.L115	#,
.L114:
	.loc 1 1223 0 is_stmt 1
	movl	$0, %eax	#, D.12124
	jmp	.L116	#
.L115:
	.loc 1 1226 0
	leaq	-48(%rbp), %rcx	#, tmp100
	movq	-96(%rbp), %rax	# r, tmp101
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	memcpy	#
	movq	-96(%rbp), %rax	# r, tmp102
	addq	$12, %rax	#, D.12126
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12126,
	call	memset	#
	.loc 1 1227 0
	movl	$1, %eax	#, D.12124
.L116:
	.loc 1 1228 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	exact_real_inverse, .-exact_real_inverse
	.globl	debug_real
	.type	debug_real, @function
debug_real:
.LFB19:
	.loc 1 1237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 1237 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.12128
	xorl	%eax, %eax	# tmp65
	.loc 1 1240 0
	leaq	-48(%rbp), %rax	#, tmp60
	movq	16(%rbp), %rdx	# r, tmp61
	movq	%rdx, (%rsp)	# tmp61,
	movq	24(%rbp), %rdx	# r, tmp62
	movq	%rdx, 8(%rsp)	# tmp62,
	movq	32(%rbp), %rdx	# r, tmp63
	movq	%rdx, 16(%rsp)	# tmp63,
	movq	%rax, %rdi	# tmp60,
	call	ereal_to_decimal	#
	.loc 1 1241 0
	movq	stderr(%rip), %rdx	# stderr, stderr.18
	leaq	-48(%rbp), %rax	#, tmp64
	movq	%rdx, %rsi	# stderr.18,
	movq	%rax, %rdi	# tmp64,
	call	fputs	#
	.loc 1 1242 0
	movq	-8(%rbp), %rax	# D.12128, tmp66
	xorq	%fs:40, %rax	#, tmp66
	je	.L118	#,
	call	__stack_chk_fail	#
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	debug_real, .-debug_real
	.globl	etartdouble
	.type	etartdouble, @function
etartdouble:
.LFB20:
	.loc 1 1263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	.loc 1 1266 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&r], tmp59
	movq	%rax, -16(%rbp)	# tmp59, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&r], tmp60
	movl	%eax, -8(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	.loc 1 1270 0
	leaq	-16(%rbp), %rdx	#, tmp61
	leaq	-16(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	etoe64	#
	.loc 1 1272 0
	movq	-24(%rbp), %rcx	# l, tmp63
	leaq	-16(%rbp), %rax	#, tmp64
	movl	$18, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	endian	#
	.loc 1 1273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	etartdouble, .-etartdouble
	.globl	etarldouble
	.type	etarldouble, @function
etarldouble:
.LFB21:
	.loc 1 1283 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	.loc 1 1286 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&r], tmp59
	movq	%rax, -16(%rbp)	# tmp59, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&r], tmp60
	movl	%eax, -8(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	.loc 1 1287 0
	leaq	-16(%rbp), %rdx	#, tmp61
	leaq	-16(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	etoe64	#
	.loc 1 1288 0
	movq	-24(%rbp), %rcx	# l, tmp63
	leaq	-16(%rbp), %rax	#, tmp64
	movl	$17, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	endian	#
	.loc 1 1289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	etarldouble, .-etarldouble
	.globl	etardouble
	.type	etardouble, @function
etardouble:
.LFB22:
	.loc 1 1298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	.loc 1 1301 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&r], tmp59
	movq	%rax, -16(%rbp)	# tmp59, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&r], tmp60
	movl	%eax, -8(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	.loc 1 1302 0
	leaq	-16(%rbp), %rdx	#, tmp61
	leaq	-16(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	etoe53	#
	.loc 1 1303 0
	movq	-24(%rbp), %rcx	# l, tmp63
	leaq	-16(%rbp), %rax	#, tmp64
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	endian	#
	.loc 1 1304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	etardouble, .-etardouble
	.globl	etarsingle
	.type	etarsingle, @function
etarsingle:
.LFB23:
	.loc 1 1312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1316 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&r], tmp61
	movq	%rax, -16(%rbp)	# tmp61, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&r], tmp62
	movl	%eax, -8(%rbp)	# tmp62, MEM[(char * {ref-all})&e]
	.loc 1 1317 0
	leaq	-16(%rbp), %rdx	#, tmp63
	leaq	-16(%rbp), %rax	#, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	etoe24	#
	.loc 1 1318 0
	leaq	-24(%rbp), %rcx	#, tmp65
	leaq	-16(%rbp), %rax	#, tmp66
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	endian	#
	.loc 1 1319 0
	movq	-24(%rbp), %rax	# l, D.12131
	.loc 1 1320 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	etarsingle, .-etarsingle
	.globl	ereal_to_decimal
	.type	ereal_to_decimal, @function
ereal_to_decimal:
.LFB24:
	.loc 1 1331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 1334 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp59
	movq	%rax, -16(%rbp)	# tmp59, MEM[(char * {ref-all})&e]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp60
	movl	%eax, -8(%rbp)	# tmp60, MEM[(char * {ref-all})&e]
	.loc 1 1335 0
	movq	-24(%rbp), %rcx	# s, tmp61
	leaq	-16(%rbp), %rax	#, tmp62
	movl	$20, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	etoasc	#
	.loc 1 1336 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ereal_to_decimal, .-ereal_to_decimal
	.globl	ereal_cmp
	.type	ereal_cmp, @function
ereal_cmp:
.LFB25:
	.loc 1 1344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1347 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp61
	movq	%rax, -32(%rbp)	# tmp61, MEM[(char * {ref-all})&ex]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp62
	movl	%eax, -24(%rbp)	# tmp62, MEM[(char * {ref-all})&ex]
	.loc 1 1348 0
	movq	40(%rbp), %rax	# MEM[(char * {ref-all})&y], tmp63
	movq	%rax, -16(%rbp)	# tmp63, MEM[(char * {ref-all})&ey]
	movl	48(%rbp), %eax	# MEM[(char * {ref-all})&y], tmp64
	movl	%eax, -8(%rbp)	# tmp64, MEM[(char * {ref-all})&ey]
	.loc 1 1349 0
	leaq	-16(%rbp), %rdx	#, tmp65
	leaq	-32(%rbp), %rax	#, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	ecmp	#
	.loc 1 1350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ereal_cmp, .-ereal_cmp
	.globl	ereal_isneg
	.type	ereal_isneg, @function
ereal_isneg:
.LFB26:
	.loc 1 1357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1360 0
	movq	16(%rbp), %rax	# MEM[(char * {ref-all})&x], tmp61
	movq	%rax, -16(%rbp)	# tmp61, MEM[(char * {ref-all})&ex]
	movl	24(%rbp), %eax	# MEM[(char * {ref-all})&x], tmp62
	movl	%eax, -8(%rbp)	# tmp62, MEM[(char * {ref-all})&ex]
	.loc 1 1361 0
	leaq	-16(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	eisneg	#
	.loc 1 1362 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ereal_isneg, .-ereal_isneg
	.globl	ezero
	.section	.rodata
	.align 2
	.type	ezero, @object
	.size	ezero, 12
ezero:
	.zero	12
	.globl	ehalf
	.align 2
	.type	ehalf, @object
	.size	ehalf, 12
ehalf:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-32768
	.value	16382
	.globl	eone
	.align 2
	.type	eone, @object
	.size	eone, 12
eone:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-32768
	.value	16383
	.globl	etwo
	.align 2
	.type	etwo, @object
	.size	etwo, 12
etwo:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-32768
	.value	16384
	.globl	e32
	.align 2
	.type	e32, @object
	.size	e32, 12
e32:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-32768
	.value	16388
	.globl	elog2
	.align 2
	.type	elog2, @object
	.size	elog2, 12
elog2:
	.value	-13852
	.value	31147
	.value	-11825
	.value	6135
	.value	-20110
	.value	16382
	.globl	esqrt2
	.align 2
	.type	esqrt2, @object
	.size	esqrt2, 12
esqrt2:
	.value	22910
	.value	25732
	.value	-1570
	.value	-3277
	.value	-19196
	.value	16383
	.globl	epi
	.align 2
	.type	epi, @object
	.size	epi, 12
epi:
	.value	-15162
	.value	-15820
	.value	8552
	.value	-9566
	.value	-14065
	.value	16384
	.globl	rndprc
	.data
	.align 4
	.type	rndprc, @object
	.size	rndprc, 4
rndprc:
	.long	80
	.text
	.type	eclear, @function
eclear:
.LFB27:
	.loc 1 1614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1617 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L130	#
.L131:
	.loc 1 1618 0 discriminator 2
	movq	-24(%rbp), %rax	# x, x.19
	leaq	2(%rax), %rdx	#, tmp60
	movq	%rdx, -24(%rbp)	# tmp60, x
	movw	$0, (%rax)	#, *x.19_5
	.loc 1 1617 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L130:
	.loc 1 1617 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L131	#,
	.loc 1 1619 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	eclear, .-eclear
	.type	emov, @function
emov:
.LFB28:
	.loc 1 1627 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1630 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L133	#
.L134:
	.loc 1 1631 0 discriminator 2
	movq	-32(%rbp), %rax	# b, b.20
	leaq	2(%rax), %rdx	#, tmp62
	movq	%rdx, -32(%rbp)	# tmp62, b
	movq	-24(%rbp), %rdx	# a, a.21
	leaq	2(%rdx), %rcx	#, tmp63
	movq	%rcx, -24(%rbp)	# tmp63, a
	movzwl	(%rdx), %edx	# *a.21_9, D.12134
	movw	%dx, (%rax)	# D.12134, *b.20_7
	.loc 1 1630 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L133:
	.loc 1 1630 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L134	#,
	.loc 1 1632 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	emov, .-emov
	.type	eneg, @function
eneg:
.LFB29:
	.loc 1 1652 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1654 0
	movq	-8(%rbp), %rax	# x, tmp63
	addq	$10, %rax	#, D.12135
	movq	-8(%rbp), %rdx	# x, tmp64
	addq	$10, %rdx	#, D.12135
	movzwl	(%rdx), %edx	# *_3, D.12136
	xorw	$-32768, %dx	#, D.12136
	movw	%dx, (%rax)	# D.12136, *_2
	.loc 1 1655 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	eneg, .-eneg
	.type	eisneg, @function
eisneg:
.LFB30:
	.loc 1 1662 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1664 0
	movq	-8(%rbp), %rax	# x, tmp64
	addq	$10, %rax	#, D.12138
	movzwl	(%rax), %eax	# *_3, D.12139
	testw	%ax, %ax	# D.12140
	jns	.L137	#,
	.loc 1 1665 0
	movl	$1, %eax	#, D.12137
	jmp	.L138	#
.L137:
	.loc 1 1667 0
	movl	$0, %eax	#, D.12137
.L138:
	.loc 1 1668 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	eisneg, .-eisneg
	.type	eisinf, @function
eisinf:
.LFB31:
	.loc 1 1675 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1678 0
	movq	-8(%rbp), %rax	# x, tmp66
	movq	%rax, %rdi	# tmp66,
	call	eisnan	#
	testl	%eax, %eax	# D.12141
	je	.L140	#,
	.loc 1 1679 0
	movl	$0, %eax	#, D.12141
	jmp	.L141	#
.L140:
	.loc 1 1681 0
	movq	-8(%rbp), %rax	# x, tmp67
	addq	$10, %rax	#, D.12142
	movzwl	(%rax), %eax	# *_5, D.12143
	movzwl	%ax, %eax	# D.12143, D.12141
	andl	$32767, %eax	#, D.12141
	cmpl	$32767, %eax	#, D.12141
	jne	.L142	#,
	.loc 1 1682 0
	movl	$1, %eax	#, D.12141
	jmp	.L141	#
.L142:
	.loc 1 1684 0
	movl	$0, %eax	#, D.12141
.L141:
	.loc 1 1685 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	eisinf, .-eisinf
	.type	eisnan, @function
eisnan:
.LFB32:
	.loc 1 1693 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1698 0
	movq	-24(%rbp), %rax	# x, tmp67
	addq	$10, %rax	#, D.12145
	movzwl	(%rax), %eax	# *_5, D.12146
	movzwl	%ax, %eax	# D.12146, D.12144
	andl	$32767, %eax	#, D.12144
	cmpl	$32767, %eax	#, D.12144
	je	.L144	#,
	.loc 1 1699 0
	movl	$0, %eax	#, D.12144
	jmp	.L145	#
.L144:
	.loc 1 1701 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L146	#
.L148:
	.loc 1 1703 0
	movq	-24(%rbp), %rax	# x, x.22
	leaq	2(%rax), %rdx	#, tmp68
	movq	%rdx, -24(%rbp)	# tmp68, x
	movzwl	(%rax), %eax	# *x.22_11, D.12146
	testw	%ax, %ax	# D.12146
	je	.L147	#,
	.loc 1 1704 0
	movl	$1, %eax	#, D.12144
	jmp	.L145	#
.L147:
	.loc 1 1701 0
	addl	$1, -4(%rbp)	#, i
.L146:
	.loc 1 1701 0 is_stmt 0 discriminator 1
	cmpl	$4, -4(%rbp)	#, i
	jle	.L148	#,
	.loc 1 1708 0 is_stmt 1
	movl	$0, %eax	#, D.12144
.L145:
	.loc 1 1709 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	eisnan, .-eisnan
	.type	einfin, @function
einfin:
.LFB33:
	.loc 1 1717 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1721 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L150	#
.L151:
	.loc 1 1722 0 discriminator 2
	movq	-24(%rbp), %rax	# x, x.23
	leaq	2(%rax), %rdx	#, tmp62
	movq	%rdx, -24(%rbp)	# tmp62, x
	movw	$0, (%rax)	#, *x.23_5
	.loc 1 1721 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L150:
	.loc 1 1721 0 is_stmt 0 discriminator 1
	cmpl	$4, -4(%rbp)	#, i
	jle	.L151	#,
	.loc 1 1723 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp63
	movzwl	(%rax), %eax	# *x_1, D.12147
	orw	$32767, %ax	#, D.12147
	movl	%eax, %edx	# D.12147, D.12147
	movq	-24(%rbp), %rax	# x, tmp64
	movw	%dx, (%rax)	# D.12147, *x_1
	.loc 1 1751 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	einfin, .-einfin
	.type	enan, @function
enan:
.LFB34:
	.loc 1 1762 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# sign, sign
	.loc 1 1765 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L153	#
.L154:
	.loc 1 1766 0 discriminator 2
	movq	-24(%rbp), %rax	# x, x.24
	leaq	2(%rax), %rdx	#, tmp65
	movq	%rdx, -24(%rbp)	# tmp65, x
	movw	$0, (%rax)	#, *x.24_5
	.loc 1 1765 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L153:
	.loc 1 1765 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L154	#,
	.loc 1 1767 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, x.25
	leaq	2(%rax), %rdx	#, tmp66
	movq	%rdx, -24(%rbp)	# tmp66, x
	movw	$-16384, (%rax)	#, *x.25_8
	.loc 1 1768 0
	movl	-28(%rbp), %eax	# sign, tmp67
	sall	$15, %eax	#, D.12148
	orw	$32767, %ax	#, D.12149
	movl	%eax, %edx	# D.12149, D.12150
	movq	-24(%rbp), %rax	# x, tmp68
	movw	%dx, (%rax)	# D.12150, *x_9
	.loc 1 1769 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	enan, .-enan
	.type	emovi, @function
emovi:
.LFB35:
	.loc 1 1778 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 1783 0
	movq	-48(%rbp), %rax	# b, tmp83
	movq	%rax, -8(%rbp)	# tmp83, q
	.loc 1 1784 0
	movq	-40(%rbp), %rax	# a, tmp87
	addq	$10, %rax	#, tmp86
	movq	%rax, -16(%rbp)	# tmp86, p
	.loc 1 1786 0
	movq	-16(%rbp), %rax	# p, tmp88
	movzwl	(%rax), %eax	# *p_13, D.12151
	testw	%ax, %ax	# D.12152
	jns	.L156	#,
	.loc 1 1787 0
	movq	-8(%rbp), %rax	# q, q.26
	leaq	2(%rax), %rdx	#, tmp89
	movq	%rdx, -8(%rbp)	# tmp89, q
	movw	$-1, (%rax)	#, *q.26_16
	jmp	.L157	#
.L156:
	.loc 1 1789 0
	movq	-8(%rbp), %rax	# q, q.27
	leaq	2(%rax), %rdx	#, tmp90
	movq	%rdx, -8(%rbp)	# tmp90, q
	movw	$0, (%rax)	#, *q.27_18
.L157:
	.loc 1 1791 0
	movq	-16(%rbp), %rax	# p, p.28
	leaq	-2(%rax), %rdx	#, tmp91
	movq	%rdx, -16(%rbp)	# tmp91, p
	movzwl	(%rax), %edx	# *p.28_20, D.12151
	movq	-8(%rbp), %rax	# q, tmp92
	movw	%dx, (%rax)	# D.12151, *q_3
	.loc 1 1792 0
	movq	-8(%rbp), %rax	# q, q.29
	leaq	2(%rax), %rdx	#, tmp93
	movq	%rdx, -8(%rbp)	# tmp93, q
	movzwl	(%rax), %edx	# *q.30_25, D.12151
	andw	$32767, %dx	#, D.12151
	movw	%dx, (%rax)	# D.12151, *q.30_25
	.loc 1 1794 0
	movq	-8(%rbp), %rax	# q, tmp94
	subq	$2, %rax	#, D.12153
	movzwl	(%rax), %eax	# *_28, D.12151
	movzwl	%ax, %eax	# D.12151, D.12154
	andl	$32767, %eax	#, D.12154
	cmpl	$32767, %eax	#, D.12154
	jne	.L158	#,
	.loc 1 1797 0
	movq	-40(%rbp), %rax	# a, tmp95
	movq	%rax, %rdi	# tmp95,
	call	eisnan	#
	testl	%eax, %eax	# D.12154
	je	.L159	#,
	.loc 1 1799 0
	movq	-8(%rbp), %rax	# q, q.31
	leaq	2(%rax), %rdx	#, tmp96
	movq	%rdx, -8(%rbp)	# tmp96, q
	movw	$0, (%rax)	#, *q.31_33
	.loc 1 1800 0
	movl	$3, -20(%rbp)	#, i
	jmp	.L160	#
.L161:
	.loc 1 1801 0 discriminator 2
	movq	-8(%rbp), %rax	# q, q.32
	leaq	2(%rax), %rdx	#, tmp97
	movq	%rdx, -8(%rbp)	# tmp97, q
	movq	-16(%rbp), %rdx	# p, p.33
	leaq	-2(%rdx), %rcx	#, tmp98
	movq	%rcx, -16(%rbp)	# tmp98, p
	movzwl	(%rdx), %edx	# *p.33_38, D.12151
	movw	%dx, (%rax)	# D.12151, *q.32_36
	.loc 1 1800 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L160:
	.loc 1 1800 0 is_stmt 0 discriminator 1
	cmpl	$8, -20(%rbp)	#, i
	jle	.L161	#,
	.loc 1 1802 0 is_stmt 1
	jmp	.L155	#
.L159:
	.loc 1 1806 0
	movl	$2, -20(%rbp)	#, i
	jmp	.L163	#
.L164:
	.loc 1 1807 0 discriminator 2
	movq	-8(%rbp), %rax	# q, q.34
	leaq	2(%rax), %rdx	#, tmp99
	movq	%rdx, -8(%rbp)	# tmp99, q
	movw	$0, (%rax)	#, *q.34_43
	.loc 1 1806 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L163:
	.loc 1 1806 0 is_stmt 0 discriminator 1
	cmpl	$8, -20(%rbp)	#, i
	jle	.L164	#,
	.loc 1 1808 0 is_stmt 1
	jmp	.L155	#
.L158:
	.loc 1 1813 0
	movq	-8(%rbp), %rax	# q, q.35
	leaq	2(%rax), %rdx	#, tmp100
	movq	%rdx, -8(%rbp)	# tmp100, q
	movw	$0, (%rax)	#, *q.35_46
	.loc 1 1815 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L165	#
.L166:
	.loc 1 1816 0 discriminator 2
	movq	-8(%rbp), %rax	# q, q.36
	leaq	2(%rax), %rdx	#, tmp101
	movq	%rdx, -8(%rbp)	# tmp101, q
	movq	-16(%rbp), %rdx	# p, p.37
	leaq	-2(%rdx), %rcx	#, tmp102
	movq	%rcx, -16(%rbp)	# tmp102, p
	movzwl	(%rdx), %edx	# *p.37_51, D.12151
	movw	%dx, (%rax)	# D.12151, *q.36_49
	.loc 1 1815 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L165:
	.loc 1 1815 0 is_stmt 0 discriminator 1
	cmpl	$4, -20(%rbp)	#, i
	jle	.L166	#,
	.loc 1 1818 0 is_stmt 1
	movq	-8(%rbp), %rax	# q, tmp103
	movw	$0, (%rax)	#, *q_6
.L155:
	.loc 1 1819 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	emovi, .-emovi
	.type	emovo, @function
emovo:
.LFB36:
	.loc 1 1827 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 1833 0
	movq	-40(%rbp), %rax	# a, tmp74
	movq	%rax, -16(%rbp)	# tmp74, p
	.loc 1 1834 0
	movq	-48(%rbp), %rax	# b, tmp78
	addq	$10, %rax	#, tmp77
	movq	%rax, -8(%rbp)	# tmp77, q
	.loc 1 1836 0
	movq	-16(%rbp), %rax	# p, p.38
	leaq	2(%rax), %rdx	#, tmp79
	movq	%rdx, -16(%rbp)	# tmp79, p
	movzwl	(%rax), %eax	# *p.38_10, tmp80
	movw	%ax, -22(%rbp)	# tmp80, i
	.loc 1 1837 0
	cmpw	$0, -22(%rbp)	#, i
	je	.L168	#,
	.loc 1 1838 0
	movq	-8(%rbp), %rax	# q, q.39
	leaq	-2(%rax), %rdx	#, tmp81
	movq	%rdx, -8(%rbp)	# tmp81, q
	movq	-16(%rbp), %rdx	# p, p.40
	leaq	2(%rdx), %rcx	#, tmp82
	movq	%rcx, -16(%rbp)	# tmp82, p
	movzwl	(%rdx), %edx	# *p.40_15, D.12155
	orw	$-32768, %dx	#, D.12155
	movw	%dx, (%rax)	# D.12155, *q.39_13
	jmp	.L169	#
.L168:
	.loc 1 1840 0
	movq	-8(%rbp), %rax	# q, q.41
	leaq	-2(%rax), %rdx	#, tmp83
	movq	%rdx, -8(%rbp)	# tmp83, q
	movq	-16(%rbp), %rdx	# p, p.42
	leaq	2(%rdx), %rcx	#, tmp84
	movq	%rcx, -16(%rbp)	# tmp84, p
	movzwl	(%rdx), %edx	# *p.42_21, D.12155
	movw	%dx, (%rax)	# D.12155, *q.41_19
.L169:
	.loc 1 1842 0
	movq	-16(%rbp), %rax	# p, tmp85
	subq	$2, %rax	#, D.12156
	movzwl	(%rax), %eax	# *_24, D.12155
	cmpw	$32767, %ax	#, D.12155
	jne	.L170	#,
	.loc 1 1845 0
	movq	-40(%rbp), %rax	# a, tmp86
	movq	%rax, %rdi	# tmp86,
	call	eiisnan	#
	testl	%eax, %eax	# D.12157
	je	.L171	#,
	.loc 1 1847 0
	movq	-40(%rbp), %rax	# a, tmp87
	movq	%rax, %rdi	# tmp87,
	call	eiisneg	#
	movl	%eax, %edx	#, D.12157
	movq	-48(%rbp), %rax	# b, tmp88
	movl	%edx, %esi	# D.12157,
	movq	%rax, %rdi	# tmp88,
	call	enan	#
	.loc 1 1848 0
	jmp	.L167	#
.L171:
	.loc 1 1851 0
	movq	-48(%rbp), %rax	# b, tmp89
	movq	%rax, %rdi	# tmp89,
	call	einfin	#
	.loc 1 1852 0
	jmp	.L167	#
.L170:
	.loc 1 1856 0
	addq	$2, -16(%rbp)	#, p
	.loc 1 1858 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L173	#
.L174:
	.loc 1 1859 0 discriminator 2
	movq	-8(%rbp), %rax	# q, q.43
	leaq	-2(%rax), %rdx	#, tmp90
	movq	%rdx, -8(%rbp)	# tmp90, q
	movq	-16(%rbp), %rdx	# p, p.44
	leaq	2(%rdx), %rcx	#, tmp91
	movq	%rcx, -16(%rbp)	# tmp91, p
	movzwl	(%rdx), %edx	# *p.44_32, D.12155
	movw	%dx, (%rax)	# D.12155, *q.43_30
	.loc 1 1858 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L173:
	.loc 1 1858 0 is_stmt 0 discriminator 1
	cmpl	$4, -20(%rbp)	#, j
	jle	.L174	#,
.L167:
	.loc 1 1860 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	emovo, .-emovo
	.type	ecleaz, @function
ecleaz:
.LFB37:
	.loc 1 1867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# xi, xi
	.loc 1 1870 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L176	#
.L177:
	.loc 1 1871 0 discriminator 2
	movq	-24(%rbp), %rax	# xi, xi.45
	leaq	2(%rax), %rdx	#, tmp60
	movq	%rdx, -24(%rbp)	# tmp60, xi
	movw	$0, (%rax)	#, *xi.45_5
	.loc 1 1870 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L176:
	.loc 1 1870 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L177	#,
	.loc 1 1872 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ecleaz, .-ecleaz
	.type	ecleazs, @function
ecleazs:
.LFB38:
	.loc 1 1879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# xi, xi
	.loc 1 1882 0
	addq	$2, -24(%rbp)	#, xi
	.loc 1 1883 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L179	#
.L180:
	.loc 1 1884 0 discriminator 2
	movq	-24(%rbp), %rax	# xi, xi.46
	leaq	2(%rax), %rdx	#, tmp60
	movq	%rdx, -24(%rbp)	# tmp60, xi
	movw	$0, (%rax)	#, *xi.46_6
	.loc 1 1883 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L179:
	.loc 1 1883 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, i
	jle	.L180	#,
	.loc 1 1885 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ecleazs, .-ecleazs
	.type	emovz, @function
emovz:
.LFB39:
	.loc 1 1893 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1896 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L182	#
.L183:
	.loc 1 1897 0 discriminator 2
	movq	-32(%rbp), %rax	# b, b.47
	leaq	2(%rax), %rdx	#, tmp62
	movq	%rdx, -32(%rbp)	# tmp62, b
	movq	-24(%rbp), %rdx	# a, a.48
	leaq	2(%rdx), %rcx	#, tmp63
	movq	%rcx, -24(%rbp)	# tmp63, a
	movzwl	(%rdx), %edx	# *a.48_9, D.12158
	movw	%dx, (%rax)	# D.12158, *b.47_7
	.loc 1 1896 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L182:
	.loc 1 1896 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, i
	jle	.L183	#,
	.loc 1 1899 0 is_stmt 1
	movq	-32(%rbp), %rax	# b, tmp64
	movw	$0, (%rax)	#, *b_2
	.loc 1 1900 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	emovz, .-emovz
	.type	einan, @function
einan:
.LFB40:
	.loc 1 1910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1912 0
	movq	-8(%rbp), %rax	# x, tmp61
	movq	%rax, %rdi	# tmp61,
	call	ecleaz	#
	.loc 1 1913 0
	movq	-8(%rbp), %rax	# x, tmp62
	addq	$2, %rax	#, D.12159
	movw	$32767, (%rax)	#, *_2
	.loc 1 1914 0
	movq	-8(%rbp), %rax	# x, tmp63
	addq	$6, %rax	#, D.12159
	movw	$-16384, (%rax)	#, *_3
	.loc 1 1915 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	einan, .-einan
	.type	eiisnan, @function
eiisnan:
.LFB41:
	.loc 1 1924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1927 0
	movq	-24(%rbp), %rax	# x, tmp69
	addq	$2, %rax	#, D.12161
	movzwl	(%rax), %eax	# *_4, D.12162
	movzwl	%ax, %eax	# D.12162, D.12160
	andl	$32767, %eax	#, D.12160
	cmpl	$32767, %eax	#, D.12160
	jne	.L186	#,
	.loc 1 1929 0
	movl	$3, -4(%rbp)	#, i
	jmp	.L187	#
.L190:
	.loc 1 1931 0
	movl	-4(%rbp), %eax	# i, tmp70
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12163
	movq	-24(%rbp), %rax	# x, tmp71
	addq	%rdx, %rax	# D.12163, D.12161
	movzwl	(%rax), %eax	# *_11, D.12162
	testw	%ax, %ax	# D.12162
	je	.L188	#,
	.loc 1 1932 0
	movl	$1, %eax	#, D.12160
	jmp	.L189	#
.L188:
	.loc 1 1929 0
	addl	$1, -4(%rbp)	#, i
.L187:
	.loc 1 1929 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L190	#,
.L186:
	.loc 1 1935 0 is_stmt 1
	movl	$0, %eax	#, D.12160
.L189:
	.loc 1 1936 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	eiisnan, .-eiisnan
	.type	eiisneg, @function
eiisneg:
.LFB42:
	.loc 1 1945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1947 0
	movq	-8(%rbp), %rax	# x, tmp63
	movzwl	(%rax), %eax	# *x_1(D), D.12164
	testw	%ax, %ax	# D.12164
	setne	%al	#, D.12165
	movzbl	%al, %eax	# D.12165, D.12166
	.loc 1 1948 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	eiisneg, .-eiisneg
	.type	eiisinf, @function
eiisinf:
.LFB43:
	.loc 1 1971 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1974 0
	movq	-8(%rbp), %rax	# x, tmp66
	movq	%rax, %rdi	# tmp66,
	call	eiisnan	#
	testl	%eax, %eax	# D.12167
	je	.L194	#,
	.loc 1 1975 0
	movl	$0, %eax	#, D.12167
	jmp	.L195	#
.L194:
	.loc 1 1977 0
	movq	-8(%rbp), %rax	# x, tmp67
	addq	$2, %rax	#, D.12168
	movzwl	(%rax), %eax	# *_5, D.12169
	movzwl	%ax, %eax	# D.12169, D.12167
	andl	$32767, %eax	#, D.12167
	cmpl	$32767, %eax	#, D.12167
	jne	.L196	#,
	.loc 1 1978 0
	movl	$1, %eax	#, D.12167
	jmp	.L195	#
.L196:
	.loc 1 1979 0
	movl	$0, %eax	#, D.12167
.L195:
	.loc 1 1980 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	eiisinf, .-eiisinf
	.type	ecmpm, @function
ecmpm:
.LFB44:
	.loc 1 1993 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1996 0
	addq	$4, -24(%rbp)	#, a
	.loc 1 1997 0
	addq	$4, -32(%rbp)	#, b
	.loc 1 1998 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L198	#
.L201:
	.loc 1 2000 0
	movq	-24(%rbp), %rax	# a, a.49
	leaq	2(%rax), %rdx	#, tmp67
	movq	%rdx, -24(%rbp)	# tmp67, a
	movzwl	(%rax), %ecx	# *a.49_10, D.12171
	movq	-32(%rbp), %rax	# b, b.50
	leaq	2(%rax), %rdx	#, tmp68
	movq	%rdx, -32(%rbp)	# tmp68, b
	movzwl	(%rax), %eax	# *b.50_13, D.12171
	cmpw	%ax, %cx	# D.12171, D.12171
	je	.L199	#,
	.loc 1 2001 0
	nop
.L200:
	.loc 1 2006 0
	subq	$2, -24(%rbp)	#, a
	movq	-24(%rbp), %rax	# a, tmp69
	movzwl	(%rax), %edx	# *a_16, D.12171
	subq	$2, -32(%rbp)	#, b
	movq	-32(%rbp), %rax	# b, tmp70
	movzwl	(%rax), %eax	# *b_18, D.12171
	cmpw	%ax, %dx	# D.12171, D.12171
	jbe	.L203	#,
	jmp	.L204	#
.L199:
	.loc 1 1998 0
	addl	$1, -4(%rbp)	#, i
.L198:
	.loc 1 1998 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L201	#,
	.loc 1 2003 0 is_stmt 1
	movl	$0, %eax	#, D.12170
	jmp	.L202	#
.L204:
	.loc 1 2007 0
	movl	$1, %eax	#, D.12170
	jmp	.L202	#
.L203:
	.loc 1 2009 0
	movl	$-1, %eax	#, D.12170
.L202:
	.loc 1 2010 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ecmpm, .-ecmpm
	.type	eshdn1, @function
eshdn1:
.LFB45:
	.loc 1 2017 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2021 0
	addq	$4, -24(%rbp)	#, x
	.loc 1 2023 0
	movw	$0, -6(%rbp)	#, bits
	.loc 1 2024 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L206	#
.L209:
	.loc 1 2026 0
	movq	-24(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# *x_1, D.12172
	movzwl	%ax, %eax	# D.12172, D.12173
	andl	$1, %eax	#, D.12173
	testl	%eax, %eax	# D.12173
	je	.L207	#,
	.loc 1 2027 0
	orw	$1, -6(%rbp)	#, bits
.L207:
	.loc 1 2028 0
	movq	-24(%rbp), %rax	# x, tmp69
	movzwl	(%rax), %eax	# *x_1, D.12172
	shrw	%ax	# D.12172
	movl	%eax, %edx	# D.12172, D.12172
	movq	-24(%rbp), %rax	# x, tmp70
	movw	%dx, (%rax)	# D.12172, *x_1
	.loc 1 2029 0
	movzwl	-6(%rbp), %eax	# bits, D.12173
	andl	$2, %eax	#, D.12173
	testl	%eax, %eax	# D.12173
	je	.L208	#,
	.loc 1 2030 0
	movq	-24(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# *x_1, D.12172
	orw	$-32768, %ax	#, D.12172
	movl	%eax, %edx	# D.12172, D.12172
	movq	-24(%rbp), %rax	# x, tmp72
	movw	%dx, (%rax)	# D.12172, *x_1
.L208:
	.loc 1 2031 0
	salw	-6(%rbp)	# bits
	.loc 1 2032 0
	addq	$2, -24(%rbp)	#, x
	.loc 1 2024 0
	addl	$1, -4(%rbp)	#, i
.L206:
	.loc 1 2024 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L209	#,
	.loc 1 2034 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	eshdn1, .-eshdn1
	.type	eshup1, @function
eshup1:
.LFB46:
	.loc 1 2041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2045 0
	addq	$16, -24(%rbp)	#, x
	.loc 1 2046 0
	movw	$0, -6(%rbp)	#, bits
	.loc 1 2048 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L211	#
.L214:
	.loc 1 2050 0
	movq	-24(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# *x_1, D.12174
	testw	%ax, %ax	# D.12175
	jns	.L212	#,
	.loc 1 2051 0
	orw	$1, -6(%rbp)	#, bits
.L212:
	.loc 1 2052 0
	movq	-24(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# *x_1, D.12174
	leal	(%rax,%rax), %edx	#, D.12174
	movq	-24(%rbp), %rax	# x, tmp69
	movw	%dx, (%rax)	# D.12174, *x_1
	.loc 1 2053 0
	movzwl	-6(%rbp), %eax	# bits, D.12176
	andl	$2, %eax	#, D.12176
	testl	%eax, %eax	# D.12176
	je	.L213	#,
	.loc 1 2054 0
	movq	-24(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# *x_1, D.12174
	orl	$1, %eax	#, D.12174
	movl	%eax, %edx	# D.12174, D.12174
	movq	-24(%rbp), %rax	# x, tmp71
	movw	%dx, (%rax)	# D.12174, *x_1
.L213:
	.loc 1 2055 0
	salw	-6(%rbp)	# bits
	.loc 1 2056 0
	subq	$2, -24(%rbp)	#, x
	.loc 1 2048 0
	addl	$1, -4(%rbp)	#, i
.L211:
	.loc 1 2048 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L214	#,
	.loc 1 2058 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	eshup1, .-eshup1
	.type	eshdn8, @function
eshdn8:
.LFB47:
	.loc 1 2066 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2070 0
	addq	$4, -24(%rbp)	#, x
	.loc 1 2071 0
	movw	$0, -8(%rbp)	#, oldbyt
	.loc 1 2072 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L216	#
.L217:
	.loc 1 2074 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp64
	movzwl	(%rax), %eax	# *x_1, D.12177
	sall	$8, %eax	#, tmp65
	movw	%ax, -6(%rbp)	# tmp65, newbyt
	.loc 1 2075 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp66
	movzwl	(%rax), %eax	# *x_1, D.12177
	shrw	$8, %ax	#, D.12177
	movl	%eax, %edx	# D.12177, D.12177
	movq	-24(%rbp), %rax	# x, tmp67
	movw	%dx, (%rax)	# D.12177, *x_1
	.loc 1 2076 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# *x_1, D.12177
	orw	-8(%rbp), %ax	# oldbyt, D.12177
	movl	%eax, %edx	# D.12177, D.12177
	movq	-24(%rbp), %rax	# x, tmp69
	movw	%dx, (%rax)	# D.12177, *x_1
	.loc 1 2077 0 discriminator 2
	movzwl	-6(%rbp), %eax	# newbyt, tmp70
	movw	%ax, -8(%rbp)	# tmp70, oldbyt
	.loc 1 2078 0 discriminator 2
	addq	$2, -24(%rbp)	#, x
	.loc 1 2072 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L216:
	.loc 1 2072 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L217	#,
	.loc 1 2080 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	eshdn8, .-eshdn8
	.type	eshup8, @function
eshup8:
.LFB48:
	.loc 1 2087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2091 0
	addq	$16, -24(%rbp)	#, x
	.loc 1 2092 0
	movw	$0, -8(%rbp)	#, oldbyt
	.loc 1 2094 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L219	#
.L220:
	.loc 1 2096 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp64
	movzwl	(%rax), %eax	# *x_1, D.12178
	shrw	$8, %ax	#, tmp65
	movw	%ax, -6(%rbp)	# tmp65, newbyt
	.loc 1 2097 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp66
	movzwl	(%rax), %eax	# *x_1, D.12178
	sall	$8, %eax	#, D.12178
	movl	%eax, %edx	# D.12178, D.12178
	movq	-24(%rbp), %rax	# x, tmp67
	movw	%dx, (%rax)	# D.12178, *x_1
	.loc 1 2098 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# *x_1, D.12178
	orw	-8(%rbp), %ax	# oldbyt, D.12178
	movl	%eax, %edx	# D.12178, D.12178
	movq	-24(%rbp), %rax	# x, tmp69
	movw	%dx, (%rax)	# D.12178, *x_1
	.loc 1 2099 0 discriminator 2
	movzwl	-6(%rbp), %eax	# newbyt, tmp70
	movw	%ax, -8(%rbp)	# tmp70, oldbyt
	.loc 1 2100 0 discriminator 2
	subq	$2, -24(%rbp)	#, x
	.loc 1 2094 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L219:
	.loc 1 2094 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L220	#,
	.loc 1 2102 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	eshup8, .-eshup8
	.type	eshup6, @function
eshup6:
.LFB49:
	.loc 1 2109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2113 0
	movq	-24(%rbp), %rax	# x, tmp65
	addq	$4, %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 1 2114 0
	addq	$6, -24(%rbp)	#, x
	.loc 1 2116 0
	movl	$2, -12(%rbp)	#, i
	jmp	.L222	#
.L223:
	.loc 1 2117 0 discriminator 2
	movq	-8(%rbp), %rax	# p, p.51
	leaq	2(%rax), %rdx	#, tmp66
	movq	%rdx, -8(%rbp)	# tmp66, p
	movq	-24(%rbp), %rdx	# x, x.52
	leaq	2(%rdx), %rcx	#, tmp67
	movq	%rcx, -24(%rbp)	# tmp67, x
	movzwl	(%rdx), %edx	# *x.52_10, D.12179
	movw	%dx, (%rax)	# D.12179, *p.51_8
	.loc 1 2116 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L222:
	.loc 1 2116 0 is_stmt 0 discriminator 1
	cmpl	$7, -12(%rbp)	#, i
	jle	.L223	#,
	.loc 1 2119 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp68
	movw	$0, (%rax)	#, *p_3
	.loc 1 2120 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	eshup6, .-eshup6
	.type	eshdn6, @function
eshdn6:
.LFB50:
	.loc 1 2127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2131 0
	addq	$16, -24(%rbp)	#, x
	.loc 1 2132 0
	movq	-24(%rbp), %rax	# x, tmp63
	addq	$2, %rax	#, tmp62
	movq	%rax, -8(%rbp)	# tmp62, p
	.loc 1 2134 0
	movl	$2, -12(%rbp)	#, i
	jmp	.L225	#
.L226:
	.loc 1 2135 0 discriminator 2
	subq	$2, -8(%rbp)	#, p
	subq	$2, -24(%rbp)	#, x
	movq	-24(%rbp), %rax	# x, tmp64
	movzwl	(%rax), %edx	# *x_9, D.12180
	movq	-8(%rbp), %rax	# p, tmp65
	movw	%dx, (%rax)	# D.12180, *p_8
	.loc 1 2134 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L225:
	.loc 1 2134 0 is_stmt 0 discriminator 1
	cmpl	$7, -12(%rbp)	#, i
	jle	.L226	#,
	.loc 1 2137 0 is_stmt 1
	subq	$2, -8(%rbp)	#, p
	movq	-8(%rbp), %rax	# p, tmp66
	movw	$0, (%rax)	#, *p_12
	.loc 1 2138 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	eshdn6, .-eshdn6
	.type	eaddm, @function
eaddm:
.LFB51:
	.loc 1 2146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 2151 0
	addq	$16, -24(%rbp)	#, x
	.loc 1 2152 0
	addq	$16, -32(%rbp)	#, y
	.loc 1 2153 0
	movl	$0, -8(%rbp)	#, carry
	.loc 1 2154 0
	movl	$2, -12(%rbp)	#, i
	jmp	.L228	#
.L231:
	.loc 1 2156 0
	movq	-24(%rbp), %rax	# x, tmp66
	movzwl	(%rax), %eax	# *x_1, D.12181
	movzwl	%ax, %edx	# D.12181, D.12182
	movq	-32(%rbp), %rax	# y, tmp67
	movzwl	(%rax), %eax	# *y_2, D.12181
	movzwl	%ax, %eax	# D.12181, D.12182
	addl	%eax, %edx	# D.12182, D.12182
	movl	-8(%rbp), %eax	# carry, tmp71
	addl	%edx, %eax	# D.12182, tmp70
	movl	%eax, -4(%rbp)	# tmp70, a
	.loc 1 2157 0
	movl	-4(%rbp), %eax	# a, tmp72
	andl	$65536, %eax	#, D.12182
	testl	%eax, %eax	# D.12182
	je	.L229	#,
	.loc 1 2158 0
	movl	$1, -8(%rbp)	#, carry
	jmp	.L230	#
.L229:
	.loc 1 2160 0
	movl	$0, -8(%rbp)	#, carry
.L230:
	.loc 1 2161 0
	movl	-4(%rbp), %eax	# a, tmp73
	movl	%eax, %edx	# tmp73, D.12181
	movq	-32(%rbp), %rax	# y, tmp74
	movw	%dx, (%rax)	# D.12181, *y_2
	.loc 1 2162 0
	subq	$2, -24(%rbp)	#, x
	.loc 1 2163 0
	subq	$2, -32(%rbp)	#, y
	.loc 1 2154 0
	addl	$1, -12(%rbp)	#, i
.L228:
	.loc 1 2154 0 is_stmt 0 discriminator 1
	cmpl	$8, -12(%rbp)	#, i
	jle	.L231	#,
	.loc 1 2165 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	eaddm, .-eaddm
	.type	esubm, @function
esubm:
.LFB52:
	.loc 1 2173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 2178 0
	addq	$16, -24(%rbp)	#, x
	.loc 1 2179 0
	addq	$16, -32(%rbp)	#, y
	.loc 1 2180 0
	movl	$0, -8(%rbp)	#, carry
	.loc 1 2181 0
	movl	$2, -12(%rbp)	#, i
	jmp	.L233	#
.L236:
	.loc 1 2183 0
	movq	-32(%rbp), %rax	# y, tmp66
	movzwl	(%rax), %eax	# *y_2, D.12183
	movzwl	%ax, %edx	# D.12183, D.12184
	movq	-24(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# *x_1, D.12183
	movzwl	%ax, %eax	# D.12183, D.12184
	subl	%eax, %edx	# D.12184, D.12184
	movl	%edx, %eax	# D.12184, D.12184
	subl	-8(%rbp), %eax	# carry, tmp69
	movl	%eax, -4(%rbp)	# tmp69, a
	.loc 1 2184 0
	movl	-4(%rbp), %eax	# a, tmp70
	andl	$65536, %eax	#, D.12184
	testl	%eax, %eax	# D.12184
	je	.L234	#,
	.loc 1 2185 0
	movl	$1, -8(%rbp)	#, carry
	jmp	.L235	#
.L234:
	.loc 1 2187 0
	movl	$0, -8(%rbp)	#, carry
.L235:
	.loc 1 2188 0
	movl	-4(%rbp), %eax	# a, tmp71
	movl	%eax, %edx	# tmp71, D.12183
	movq	-32(%rbp), %rax	# y, tmp72
	movw	%dx, (%rax)	# D.12183, *y_2
	.loc 1 2189 0
	subq	$2, -24(%rbp)	#, x
	.loc 1 2190 0
	subq	$2, -32(%rbp)	#, y
	.loc 1 2181 0
	addl	$1, -12(%rbp)	#, i
.L233:
	.loc 1 2181 0 is_stmt 0 discriminator 1
	cmpl	$8, -12(%rbp)	#, i
	jle	.L236	#,
	.loc 1 2192 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	esubm, .-esubm
	.local	equot
	.comm	equot,18,16
	.type	m16m, @function
m16m:
.LFB53:
	.loc 1 2359 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)	# a, a
	movq	%rsi, -80(%rbp)	# b, b
	movq	%rdx, -88(%rbp)	# c, c
	.loc 1 2367 0
	movl	-68(%rbp), %eax	# a, tmp83
	movl	%eax, -60(%rbp)	# tmp83, aa
	.loc 1 2368 0
	leaq	-32(%rbp), %rax	#, tmp84
	addq	$14, %rax	#, tmp85
	movq	%rax, -48(%rbp)	# tmp85, pp
	.loc 1 2369 0
	movq	-48(%rbp), %rax	# pp, pp.53
	leaq	2(%rax), %rdx	#, tmp86
	movq	%rdx, -48(%rbp)	# tmp86, pp
	movw	$0, (%rax)	#, *pp.53_10
	.loc 1 2370 0
	movq	-48(%rbp), %rax	# pp, tmp87
	movw	$0, (%rax)	#, *pp_11
	.loc 1 2371 0
	movq	-80(%rbp), %rax	# b, tmp91
	addq	$16, %rax	#, tmp90
	movq	%rax, -40(%rbp)	# tmp90, ps
	.loc 1 2373 0
	movl	$3, -64(%rbp)	#, i
	jmp	.L238	#
.L241:
	.loc 1 2375 0
	movq	-40(%rbp), %rax	# ps, tmp92
	movzwl	(%rax), %eax	# *ps_4, D.12185
	testw	%ax, %ax	# D.12185
	jne	.L239	#,
	.loc 1 2377 0
	subq	$2, -40(%rbp)	#, ps
	.loc 1 2378 0
	subq	$2, -48(%rbp)	#, pp
	.loc 1 2379 0
	movq	-48(%rbp), %rax	# pp, tmp93
	subq	$2, %rax	#, D.12186
	movw	$0, (%rax)	#, *_18
	jmp	.L240	#
.L239:
	.loc 1 2383 0
	movq	-40(%rbp), %rax	# ps, ps.54
	leaq	-2(%rax), %rdx	#, tmp94
	movq	%rdx, -40(%rbp)	# tmp94, ps
	movzwl	(%rax), %eax	# *ps.54_19, D.12185
	movzwl	%ax, %eax	# D.12185, D.12187
	imull	-60(%rbp), %eax	# aa, tmp95
	movl	%eax, -56(%rbp)	# tmp95, m
	.loc 1 2384 0
	movl	-56(%rbp), %eax	# m, tmp96
	movzwl	%ax, %edx	# tmp96, D.12187
	movq	-48(%rbp), %rax	# pp, tmp97
	movzwl	(%rax), %eax	# *pp_2, D.12185
	movzwl	%ax, %eax	# D.12185, D.12187
	addl	%edx, %eax	# D.12187, tmp98
	movl	%eax, -52(%rbp)	# tmp98, carry
	.loc 1 2385 0
	movq	-48(%rbp), %rax	# pp, pp.55
	leaq	-2(%rax), %rdx	#, tmp99
	movq	%rdx, -48(%rbp)	# tmp99, pp
	movl	-52(%rbp), %edx	# carry, tmp100
	movw	%dx, (%rax)	# D.12185, *pp.55_28
	.loc 1 2386 0
	movl	-52(%rbp), %eax	# carry, tmp101
	shrl	$16, %eax	#, D.12187
	movl	%eax, %edx	# D.12187, D.12187
	movl	-56(%rbp), %eax	# m, tmp102
	shrl	$16, %eax	#, D.12187
	addl	%eax, %edx	# D.12187, D.12187
	movq	-48(%rbp), %rax	# pp, tmp103
	movzwl	(%rax), %eax	# *pp_29, D.12185
	movzwl	%ax, %eax	# D.12185, D.12187
	addl	%edx, %eax	# D.12187, tmp104
	movl	%eax, -52(%rbp)	# tmp104, carry
	.loc 1 2387 0
	movl	-52(%rbp), %eax	# carry, tmp105
	movl	%eax, %edx	# tmp105, D.12185
	movq	-48(%rbp), %rax	# pp, tmp106
	movw	%dx, (%rax)	# D.12185, *pp_29
	.loc 1 2388 0
	movq	-48(%rbp), %rax	# pp, tmp107
	leaq	-2(%rax), %rdx	#, D.12186
	movl	-52(%rbp), %eax	# carry, tmp108
	shrl	$16, %eax	#, D.12187
	movw	%ax, (%rdx)	# D.12185, *_38
.L240:
	.loc 1 2373 0
	addl	$1, -64(%rbp)	#, i
.L238:
	.loc 1 2373 0 is_stmt 0 discriminator 1
	cmpl	$8, -64(%rbp)	#, i
	jle	.L241	#,
	.loc 1 2391 0 is_stmt 1
	movl	$2, -64(%rbp)	#, i
	jmp	.L242	#
.L243:
	.loc 1 2392 0 discriminator 2
	movl	-64(%rbp), %eax	# i, tmp109
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12188
	movq	-88(%rbp), %rax	# c, tmp110
	addq	%rax, %rdx	# tmp110, D.12186
	movl	-64(%rbp), %eax	# i, tmp112
	cltq
	movzwl	-32(%rbp,%rax,2), %eax	# p, D.12185
	movw	%ax, (%rdx)	# D.12185, *_46
	.loc 1 2391 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L242:
	.loc 1 2391 0 is_stmt 0 discriminator 1
	cmpl	$8, -64(%rbp)	#, i
	jle	.L243	#,
	.loc 1 2393 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	m16m, .-m16m
	.type	edivm, @function
edivm:
.LFB54:
	.loc 1 2403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -80(%rbp)	# den, den
	movq	%rsi, -88(%rbp)	# num, num
	.loc 1 2410 0
	movq	$equot, -48(%rbp)	#, p
	.loc 1 2411 0
	movq	-48(%rbp), %rax	# p, p.56
	leaq	2(%rax), %rdx	#, tmp87
	movq	%rdx, -48(%rbp)	# tmp87, p
	movq	-88(%rbp), %rdx	# num, tmp88
	movzwl	(%rdx), %edx	# *num_14(D), D.12189
	movw	%dx, (%rax)	# D.12189, *p.56_12
	.loc 1 2412 0
	movq	-48(%rbp), %rax	# p, p.57
	leaq	2(%rax), %rdx	#, tmp89
	movq	%rdx, -48(%rbp)	# tmp89, p
	movq	-88(%rbp), %rdx	# num, tmp90
	movzwl	2(%rdx), %edx	# MEM[(short unsigned int *)num_14(D) + 2B], D.12189
	movw	%dx, (%rax)	# D.12189, *p.57_16
	.loc 1 2414 0
	movl	$2, -56(%rbp)	#, i
	jmp	.L245	#
.L246:
	.loc 1 2416 0 discriminator 2
	movq	-48(%rbp), %rax	# p, p.58
	leaq	2(%rax), %rdx	#, tmp91
	movq	%rdx, -48(%rbp)	# tmp91, p
	movw	$0, (%rax)	#, *p.58_20
	.loc 1 2414 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L245:
	.loc 1 2414 0 is_stmt 0 discriminator 1
	cmpl	$8, -56(%rbp)	#, i
	jle	.L246	#,
	.loc 1 2418 0 is_stmt 1
	movq	-88(%rbp), %rax	# num, tmp92
	movq	%rax, %rdi	# tmp92,
	call	eshdn1	#
	.loc 1 2419 0
	movq	-80(%rbp), %rax	# den, tmp93
	movzwl	6(%rax), %eax	# MEM[(const short unsigned int *)den_23(D) + 6B], tmp94
	movw	%ax, -58(%rbp)	# tmp94, tdenm
	.loc 1 2420 0
	movl	$2, -56(%rbp)	#, i
	jmp	.L247	#
.L251:
	.loc 1 2423 0
	movq	-88(%rbp), %rax	# num, tmp95
	addq	$4, %rax	#, D.12190
	movzwl	(%rax), %eax	# *_26, D.12189
	movzwl	%ax, %eax	# D.12189, D.12191
	sall	$16, %eax	#, D.12191
	movl	%eax, %edx	# D.12191, D.12191
	movq	-88(%rbp), %rax	# num, tmp96
	addq	$6, %rax	#, D.12190
	movzwl	(%rax), %eax	# *_30, D.12189
	movzwl	%ax, %eax	# D.12189, D.12191
	addl	%edx, %eax	# D.12191, tmp97
	movl	%eax, -52(%rbp)	# tmp97, tnum
	.loc 1 2426 0
	movzwl	-58(%rbp), %edx	# tdenm, D.12192
	movq	%rdx, %rax	# D.12192, tmp98
	salq	$16, %rax	#, tmp99
	subq	%rdx, %rax	# D.12192, D.12192
	movq	%rax, %rdx	# D.12192, D.12192
	movl	-52(%rbp), %eax	# tnum, D.12192
	cmpq	%rax, %rdx	# D.12192, D.12192
	jae	.L248	#,
	.loc 1 2427 0
	movw	$-1, -60(%rbp)	#, tquot
	jmp	.L249	#
.L248:
	.loc 1 2429 0
	movzwl	-58(%rbp), %ebx	# tdenm, D.12191
	movl	-52(%rbp), %eax	# tnum, tmp102
	movl	$0, %edx	#, tmp101
	divl	%ebx	# D.12191
	movw	%ax, -60(%rbp)	# D.12191, tquot
.L249:
	.loc 1 2431 0
	movzwl	-60(%rbp), %eax	# tquot, D.12191
	leaq	-40(%rbp), %rdx	#, tmp103
	movq	-80(%rbp), %rcx	# den, tmp104
	movq	%rcx, %rsi	# tmp104,
	movl	%eax, %edi	# D.12191,
	call	m16m	#
	.loc 1 2433 0
	movq	-88(%rbp), %rdx	# num, tmp105
	leaq	-40(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	ecmpm	#
	testl	%eax, %eax	# D.12193
	jle	.L250	#,
	.loc 1 2435 0
	subw	$1, -60(%rbp)	#, tquot
	.loc 1 2436 0
	leaq	-40(%rbp), %rdx	#, tmp107
	movq	-80(%rbp), %rax	# den, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	esubm	#
	.loc 1 2437 0
	movq	-88(%rbp), %rdx	# num, tmp109
	leaq	-40(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	ecmpm	#
	testl	%eax, %eax	# D.12193
	jle	.L250	#,
	.loc 1 2439 0
	subw	$1, -60(%rbp)	#, tquot
	.loc 1 2440 0
	leaq	-40(%rbp), %rdx	#, tmp111
	movq	-80(%rbp), %rax	# den, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	esubm	#
.L250:
	.loc 1 2443 0
	movq	-88(%rbp), %rdx	# num, tmp113
	leaq	-40(%rbp), %rax	#, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	esubm	#
	.loc 1 2444 0
	movl	-56(%rbp), %eax	# i, tmp116
	cltq
	movzwl	-60(%rbp), %edx	# tquot, tmp117
	movw	%dx, equot(%rax,%rax)	# tmp117, equot
	.loc 1 2445 0
	movq	-88(%rbp), %rax	# num, tmp118
	movq	%rax, %rdi	# tmp118,
	call	eshup6	#
	.loc 1 2420 0
	addl	$1, -56(%rbp)	#, i
.L247:
	.loc 1 2420 0 is_stmt 0 discriminator 1
	cmpl	$8, -56(%rbp)	#, i
	jle	.L251	#,
	.loc 1 2448 0 is_stmt 1
	movq	-88(%rbp), %rax	# num, tmp122
	addq	$4, %rax	#, tmp121
	movq	%rax, -48(%rbp)	# tmp121, p
	.loc 1 2449 0
	movw	$0, -62(%rbp)	#, j
	.loc 1 2450 0
	movl	$2, -56(%rbp)	#, i
	jmp	.L252	#
.L253:
	.loc 1 2452 0 discriminator 2
	movq	-48(%rbp), %rax	# p, p.59
	leaq	2(%rax), %rdx	#, tmp123
	movq	%rdx, -48(%rbp)	# tmp123, p
	movzwl	(%rax), %eax	# *p.59_50, D.12189
	orw	%ax, -62(%rbp)	# D.12189, j
	.loc 1 2450 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L252:
	.loc 1 2450 0 is_stmt 0 discriminator 1
	cmpl	$8, -56(%rbp)	#, i
	jle	.L253	#,
	.loc 1 2454 0 is_stmt 1
	cmpw	$0, -62(%rbp)	#, j
	je	.L254	#,
	.loc 1 2455 0
	movw	$1, -62(%rbp)	#, j
.L254:
	.loc 1 2457 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L255	#
.L256:
	.loc 1 2458 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp124
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12192
	movq	-88(%rbp), %rax	# num, tmp125
	addq	%rax, %rdx	# tmp125, D.12190
	movl	-56(%rbp), %eax	# i, tmp127
	cltq
	movzwl	equot(%rax,%rax), %eax	# equot, D.12189
	movw	%ax, (%rdx)	# D.12189, *_59
	.loc 1 2457 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L255:
	.loc 1 2457 0 is_stmt 0 discriminator 1
	cmpl	$8, -56(%rbp)	#, i
	jle	.L256	#,
	.loc 1 2460 0 is_stmt 1
	movzwl	-62(%rbp), %eax	# j, D.12193
	.loc 1 2461 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	edivm, .-edivm
	.type	emulm, @function
emulm:
.LFB55:
	.loc 1 2469 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# a, a
	movq	%rsi, -80(%rbp)	# b, b
	.loc 1 2476 0
	movq	-80(%rbp), %rax	# b, tmp72
	movzwl	(%rax), %eax	# *b_7(D), D.12194
	movw	%ax, equot(%rip)	# D.12194, equot
	.loc 1 2477 0
	movq	-80(%rbp), %rax	# b, tmp73
	movzwl	2(%rax), %eax	# MEM[(short unsigned int *)b_7(D) + 2B], D.12194
	movw	%ax, equot+2(%rip)	# D.12194, equot
	.loc 1 2478 0
	movl	$2, -52(%rbp)	#, i
	jmp	.L259	#
.L260:
	.loc 1 2479 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp75
	cltq
	movw	$0, equot(%rax,%rax)	#, equot
	.loc 1 2478 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L259:
	.loc 1 2478 0 is_stmt 0 discriminator 1
	cmpl	$8, -52(%rbp)	#, i
	jle	.L260	#,
	.loc 1 2481 0 is_stmt 1
	movw	$0, -54(%rbp)	#, j
	.loc 1 2482 0
	movq	-72(%rbp), %rax	# a, tmp79
	addq	$16, %rax	#, tmp78
	movq	%rax, -48(%rbp)	# tmp78, p
	.loc 1 2483 0
	movq	$equot+16, -40(%rbp)	#, q
	.loc 1 2484 0
	movl	$3, -52(%rbp)	#, i
	jmp	.L261	#
.L264:
	.loc 1 2486 0
	movq	-48(%rbp), %rax	# p, tmp80
	movzwl	(%rax), %eax	# *p_2, D.12194
	testw	%ax, %ax	# D.12194
	jne	.L262	#,
	.loc 1 2488 0
	subq	$2, -48(%rbp)	#, p
	jmp	.L263	#
.L262:
	.loc 1 2492 0
	movq	-48(%rbp), %rax	# p, p.60
	leaq	-2(%rax), %rdx	#, tmp81
	movq	%rdx, -48(%rbp)	# tmp81, p
	movzwl	(%rax), %eax	# *p.60_19, D.12194
	movzwl	%ax, %eax	# D.12194, D.12195
	leaq	-32(%rbp), %rdx	#, tmp82
	movq	-80(%rbp), %rcx	# b, tmp83
	movq	%rcx, %rsi	# tmp83,
	movl	%eax, %edi	# D.12195,
	call	m16m	#
	.loc 1 2493 0
	leaq	-32(%rbp), %rax	#, tmp84
	movl	$equot, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	eaddm	#
.L263:
	.loc 1 2495 0
	movq	-40(%rbp), %rax	# q, tmp85
	movzwl	(%rax), %eax	# *q_15, D.12194
	orw	%ax, -54(%rbp)	# D.12194, j
	.loc 1 2496 0
	movl	$equot, %edi	#,
	call	eshdn6	#
	.loc 1 2484 0
	addl	$1, -52(%rbp)	#, i
.L261:
	.loc 1 2484 0 is_stmt 0 discriminator 1
	cmpl	$8, -52(%rbp)	#, i
	jle	.L264	#,
	.loc 1 2499 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L265	#
.L266:
	.loc 1 2500 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp86
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12196
	movq	-80(%rbp), %rax	# b, tmp87
	addq	%rax, %rdx	# tmp87, D.12197
	movl	-52(%rbp), %eax	# i, tmp89
	cltq
	movzwl	equot(%rax,%rax), %eax	# equot, D.12194
	movw	%ax, (%rdx)	# D.12194, *_29
	.loc 1 2499 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L265:
	.loc 1 2499 0 is_stmt 0 discriminator 1
	cmpl	$8, -52(%rbp)	#, i
	jle	.L266	#,
	.loc 1 2503 0 is_stmt 1
	movzwl	-54(%rbp), %eax	# j, D.12198
	.loc 1 2504 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	emulm, .-emulm
	.data
	.align 4
	.type	rlast, @object
	.size	rlast, 4
rlast:
	.long	-1
	.local	rw
	.comm	rw,4,4
	.local	rmsk
	.comm	rmsk,2,2
	.local	rmbit
	.comm	rmbit,2,2
	.local	rebit
	.comm	rebit,2,2
	.local	re
	.comm	re,4,4
	.local	rbit
	.comm	rbit,18,16
	.section	.rodata
.LC3:
	.string	"floating point overflow"
	.text
	.type	emdnorm, @function
emdnorm:
.LFB56:
	.loc 1 2550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# lost, lost
	movl	%edx, -32(%rbp)	# subflg, subflg
	movl	%ecx, -36(%rbp)	# exp, exp
	movl	%r8d, -40(%rbp)	# rcntrl, rcntrl
	.loc 1 2555 0
	movq	-24(%rbp), %rax	# s, tmp136
	movq	%rax, %rdi	# tmp136,
	call	enormlz	#
	movl	%eax, -4(%rbp)	# tmp137, j
	.loc 1 2565 0
	movl	-4(%rbp), %eax	# j, tmp138
	subl	%eax, -36(%rbp)	# tmp138, exp
	.loc 1 2570 0
	cmpl	$80, -4(%rbp)	#, j
	jle	.L269	#,
	.loc 1 2570 0 is_stmt 0 discriminator 1
	cmpl	$32766, -36(%rbp)	#, exp
	jg	.L269	#,
	.loc 1 2572 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp139
	movq	%rax, %rdi	# tmp139,
	call	ecleazs	#
	.loc 1 2573 0
	jmp	.L268	#
.L269:
	.loc 1 2576 0
	cmpl	$0, -36(%rbp)	#, exp
	jns	.L271	#,
	.loc 1 2578 0
	cmpl	$-80, -36(%rbp)	#, exp
	jl	.L272	#,
	.loc 1 2580 0
	movl	-36(%rbp), %eax	# exp, tmp140
	movl	%eax, -4(%rbp)	# tmp140, j
	.loc 1 2581 0
	movl	-4(%rbp), %edx	# j, tmp141
	movq	-24(%rbp), %rax	# s, tmp142
	movl	%edx, %esi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	eshift	#
	movl	%eax, -8(%rbp)	# tmp143, i
	.loc 1 2582 0
	cmpl	$0, -8(%rbp)	#, i
	je	.L271	#,
	.loc 1 2583 0
	movl	$1, -28(%rbp)	#, lost
	jmp	.L271	#
.L272:
	.loc 1 2587 0
	movq	-24(%rbp), %rax	# s, tmp144
	movq	%rax, %rdi	# tmp144,
	call	ecleazs	#
	.loc 1 2588 0
	jmp	.L268	#
.L271:
	.loc 1 2592 0
	cmpl	$0, -40(%rbp)	#, rcntrl
	jne	.L274	#,
	.loc 1 2593 0
	jmp	.L275	#
.L274:
	.loc 1 2595 0
	movl	rndprc(%rip), %edx	# rndprc, rndprc.61
	movl	rlast(%rip), %eax	# rlast, rlast.62
	cmpl	%eax, %edx	# rlast.62, rndprc.61
	je	.L276	#,
	.loc 1 2597 0
	movl	$rbit, %edi	#,
	call	ecleaz	#
	.loc 1 2598 0
	movl	rndprc(%rip), %eax	# rndprc, rndprc.63
	cmpl	$53, %eax	#, rndprc.63
	je	.L278	#,
	cmpl	$53, %eax	#, rndprc.63
	jg	.L279	#,
	cmpl	$24, %eax	#, rndprc.63
	je	.L280	#,
	cmpl	$32, %eax	#, rndprc.63
	je	.L281	#,
	jmp	.L277	#
.L279:
	cmpl	$64, %eax	#, rndprc.63
	je	.L282	#,
	cmpl	$113, %eax	#, rndprc.63
	je	.L283	#,
	cmpl	$56, %eax	#, rndprc.63
	je	.L284	#,
.L277:
	.loc 1 2602 0
	movl	$8, rw(%rip)	#, rw
	.loc 1 2603 0
	movw	$-1, rmsk(%rip)	#, rmsk
	.loc 1 2604 0
	movw	$-32768, rmbit(%rip)	#, rmbit
	.loc 1 2605 0
	movl	rw(%rip), %eax	# rw, rw.64
	subl	$1, %eax	#, re.65
	movl	%eax, re(%rip)	# re.65, re
	.loc 1 2606 0
	movw	$1, rebit(%rip)	#, rebit
	.loc 1 2607 0
	jmp	.L285	#
.L283:
	.loc 1 2610 0
	movl	$10, rw(%rip)	#, rw
	.loc 1 2611 0
	movw	$32767, rmsk(%rip)	#, rmsk
	.loc 1 2612 0
	movw	$16384, rmbit(%rip)	#, rmbit
	.loc 1 2613 0
	movw	$-32768, rebit(%rip)	#, rebit
	.loc 1 2614 0
	movl	rw(%rip), %eax	# rw, rw.66
	movl	%eax, re(%rip)	# rw.66, re
	.loc 1 2615 0
	jmp	.L285	#
.L282:
	.loc 1 2618 0
	movl	$7, rw(%rip)	#, rw
	.loc 1 2619 0
	movw	$-1, rmsk(%rip)	#, rmsk
	.loc 1 2620 0
	movw	$-32768, rmbit(%rip)	#, rmbit
	.loc 1 2621 0
	movl	rw(%rip), %eax	# rw, rw.67
	subl	$1, %eax	#, re.68
	movl	%eax, re(%rip)	# re.68, re
	.loc 1 2622 0
	movw	$1, rebit(%rip)	#, rebit
	.loc 1 2623 0
	jmp	.L285	#
.L284:
	.loc 1 2627 0
	movl	$6, rw(%rip)	#, rw
	.loc 1 2628 0
	movw	$255, rmsk(%rip)	#, rmsk
	.loc 1 2629 0
	movw	$128, rmbit(%rip)	#, rmbit
	.loc 1 2630 0
	movw	$256, rebit(%rip)	#, rebit
	.loc 1 2631 0
	movl	rw(%rip), %eax	# rw, rw.69
	movl	%eax, re(%rip)	# rw.69, re
	.loc 1 2632 0
	jmp	.L285	#
.L278:
	.loc 1 2635 0
	movl	$6, rw(%rip)	#, rw
	.loc 1 2636 0
	movw	$2047, rmsk(%rip)	#, rmsk
	.loc 1 2637 0
	movw	$1024, rmbit(%rip)	#, rmbit
	.loc 1 2638 0
	movw	$2048, rebit(%rip)	#, rebit
	.loc 1 2639 0
	movl	rw(%rip), %eax	# rw, rw.70
	movl	%eax, re(%rip)	# rw.70, re
	.loc 1 2640 0
	jmp	.L285	#
.L281:
	.loc 1 2644 0
	movl	$5, rw(%rip)	#, rw
	.loc 1 2645 0
	movw	$-1, rmsk(%rip)	#, rmsk
	.loc 1 2646 0
	movw	$-32768, rmbit(%rip)	#, rmbit
	.loc 1 2647 0
	movw	$1, rebit(%rip)	#, rebit
	.loc 1 2648 0
	movl	rw(%rip), %eax	# rw, rw.71
	subl	$1, %eax	#, re.72
	movl	%eax, re(%rip)	# re.72, re
	.loc 1 2649 0
	jmp	.L285	#
.L280:
	.loc 1 2652 0
	movl	$4, rw(%rip)	#, rw
	.loc 1 2653 0
	movw	$255, rmsk(%rip)	#, rmsk
	.loc 1 2654 0
	movw	$128, rmbit(%rip)	#, rmbit
	.loc 1 2655 0
	movw	$256, rebit(%rip)	#, rebit
	.loc 1 2656 0
	movl	rw(%rip), %eax	# rw, rw.73
	movl	%eax, re(%rip)	# rw.73, re
	.loc 1 2657 0
	nop
.L285:
	.loc 1 2659 0
	movl	re(%rip), %eax	# re, re.74
	movzwl	rebit(%rip), %edx	# rebit, rebit.75
	cltq
	movw	%dx, rbit(%rax,%rax)	# rebit.75, rbit
	.loc 1 2660 0
	movl	rndprc(%rip), %eax	# rndprc, rndprc.76
	movl	%eax, rlast(%rip)	# rndprc.76, rlast
.L276:
	.loc 1 2666 0
	cmpl	$0, -36(%rbp)	#, exp
	jg	.L286	#,
	.loc 1 2666 0 is_stmt 0 discriminator 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.77
	cmpl	$80, %eax	#, rndprc.77
	je	.L286	#,
	.loc 1 2667 0 is_stmt 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.78
	cmpl	$64, %eax	#, rndprc.78
	jne	.L287	#,
	.loc 1 2667 0 is_stmt 0 discriminator 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.79
	cmpl	$64, %eax	#, rndprc.79
	jne	.L286	#,
.L287:
	.loc 1 2669 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp146
	addq	$16, %rax	#, D.12199
	movzwl	(%rax), %eax	# *_38, D.12200
	movzwl	%ax, %eax	# D.12200, D.12201
	andl	$1, %eax	#, D.12201
	orl	%eax, -28(%rbp)	# D.12201, lost
	.loc 1 2670 0
	movq	-24(%rbp), %rax	# s, tmp147
	movq	%rax, %rdi	# tmp147,
	call	eshdn1	#
.L286:
	.loc 1 2674 0
	movl	rw(%rip), %eax	# rw, rw.80
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp148
	addq	%rdx, %rax	# D.12202, D.12199
	movzwl	(%rax), %edx	# *_46, D.12200
	movzwl	rmsk(%rip), %eax	# rmsk, rmsk.81
	andl	%edx, %eax	# D.12200, tmp149
	movw	%ax, -10(%rbp)	# tmp149, r
	.loc 1 2675 0
	movl	rndprc(%rip), %eax	# rndprc, rndprc.82
	cmpl	$79, %eax	#, rndprc.82
	jg	.L288	#,
	.loc 1 2677 0
	movl	rw(%rip), %eax	# rw, rw.83
	addl	$1, %eax	#, tmp150
	movl	%eax, -8(%rbp)	# tmp150, i
	.loc 1 2678 0
	jmp	.L289	#
.L291:
	.loc 1 2680 0
	movl	-8(%rbp), %eax	# i, tmp151
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp152
	addq	%rdx, %rax	# D.12202, D.12199
	movzwl	(%rax), %eax	# *_55, D.12200
	testw	%ax, %ax	# D.12200
	je	.L290	#,
	.loc 1 2681 0
	orw	$1, -10(%rbp)	#, r
.L290:
	.loc 1 2682 0
	movl	-8(%rbp), %eax	# i, tmp153
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp154
	addq	%rdx, %rax	# D.12202, D.12199
	movw	$0, (%rax)	#, *_60
	.loc 1 2683 0
	addl	$1, -8(%rbp)	#, i
.L289:
	.loc 1 2678 0 discriminator 1
	cmpl	$8, -8(%rbp)	#, i
	jle	.L291	#,
.L288:
	.loc 1 2686 0
	movl	rw(%rip), %eax	# rw, rw.84
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp155
	addq	%rax, %rdx	# tmp155, D.12199
	movl	rw(%rip), %eax	# rw, rw.85
	cltq
	leaq	(%rax,%rax), %rcx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp156
	addq	%rcx, %rax	# D.12202, D.12199
	movzwl	(%rax), %eax	# *_69, D.12200
	movzwl	rmsk(%rip), %ecx	# rmsk, rmsk.86
	notl	%ecx	# D.12203
	andl	%ecx, %eax	# D.12203, D.12203
	movw	%ax, (%rdx)	# D.12200, *_65
	.loc 1 2687 0
	movzwl	rmbit(%rip), %eax	# rmbit, rmbit.88
	andw	-10(%rbp), %ax	# r, D.12200
	testw	%ax, %ax	# D.12200
	je	.L292	#,
	.loc 1 2690 0
	movzwl	rmbit(%rip), %eax	# rmbit, rmbit.89
	cmpw	%ax, -10(%rbp)	# rmbit.89, r
	jne	.L293	#,
	.loc 1 2692 0
	cmpl	$0, -28(%rbp)	#, lost
	jne	.L294	#,
	.loc 1 2694 0
	movl	re(%rip), %eax	# re, re.90
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp157
	addq	%rdx, %rax	# D.12202, D.12199
	movzwl	(%rax), %edx	# *_83, D.12200
	movzwl	rebit(%rip), %eax	# rebit, rebit.91
	andl	%edx, %eax	# D.12200, D.12200
	testw	%ax, %ax	# D.12200
	jne	.L293	#,
	.loc 1 2695 0
	jmp	.L292	#
.L294:
	.loc 1 2699 0
	cmpl	$0, -32(%rbp)	#, subflg
	je	.L293	#,
	.loc 1 2700 0
	jmp	.L292	#
.L293:
	.loc 1 2704 0
	movq	-24(%rbp), %rax	# s, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$rbit, %edi	#,
	call	eaddm	#
.L292:
	.loc 1 2708 0
	cmpl	$0, -36(%rbp)	#, exp
	jg	.L295	#,
	.loc 1 2708 0 is_stmt 0 discriminator 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.92
	cmpl	$80, %eax	#, rndprc.92
	je	.L295	#,
	.loc 1 2709 0 is_stmt 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.93
	cmpl	$64, %eax	#, rndprc.93
	jne	.L296	#,
	.loc 1 2709 0 is_stmt 0 discriminator 1
	movl	rndprc(%rip), %eax	# rndprc, rndprc.94
	cmpl	$64, %eax	#, rndprc.94
	jne	.L295	#,
.L296:
	.loc 1 2711 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp159
	movq	%rax, %rdi	# tmp159,
	call	eshup1	#
.L295:
	.loc 1 2713 0
	movq	-24(%rbp), %rax	# s, tmp160
	addq	$4, %rax	#, D.12199
	movzwl	(%rax), %eax	# *_91, D.12200
	testw	%ax, %ax	# D.12200
	je	.L275	#,
	.loc 1 2715 0
	movq	-24(%rbp), %rax	# s, tmp161
	movq	%rax, %rdi	# tmp161,
	call	eshdn1	#
	.loc 1 2716 0
	addl	$1, -36(%rbp)	#, exp
.L275:
	.loc 1 2719 0
	movq	-24(%rbp), %rax	# s, tmp162
	addq	$16, %rax	#, D.12199
	movw	$0, (%rax)	#, *_94
	.loc 1 2720 0
	cmpl	$32766, -36(%rbp)	#, exp
	jle	.L297	#,
	.loc 1 2726 0
	movq	-24(%rbp), %rax	# s, tmp163
	addq	$2, %rax	#, D.12199
	movw	$32767, (%rax)	#, *_95
	.loc 1 2727 0
	movl	$2, -8(%rbp)	#, i
	jmp	.L298	#
.L299:
	.loc 1 2728 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp164
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12202
	movq	-24(%rbp), %rax	# s, tmp165
	addq	%rdx, %rax	# D.12202, D.12199
	movw	$0, (%rax)	#, *_99
	.loc 1 2727 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L298:
	.loc 1 2727 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, i
	jle	.L299	#,
	.loc 1 2729 0 is_stmt 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.95
	testl	%eax, %eax	# extra_warnings.95
	je	.L300	#,
	.loc 1 2730 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 2747 0
	jmp	.L268	#
.L300:
	jmp	.L268	#
.L297:
	.loc 1 2749 0
	cmpl	$0, -36(%rbp)	#, exp
	jns	.L301	#,
	.loc 1 2750 0
	movq	-24(%rbp), %rax	# s, tmp166
	addq	$2, %rax	#, D.12199
	movw	$0, (%rax)	#, *_102
	jmp	.L268	#
.L301:
	.loc 1 2752 0
	movq	-24(%rbp), %rax	# s, tmp167
	leaq	2(%rax), %rdx	#, D.12199
	movl	-36(%rbp), %eax	# exp, tmp168
	movw	%ax, (%rdx)	# D.12200, *_103
.L268:
	.loc 1 2753 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	emdnorm, .-emdnorm
	.local	subflg
	.comm	subflg,4,4
	.section	.rodata
.LC4:
	.string	"esub"
	.text
	.type	esub, @function
esub:
.LFB57:
	.loc 1 2763 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 2766 0
	movq	-24(%rbp), %rax	# a, tmp65
	movq	%rax, %rdi	# tmp65,
	call	eisnan	#
	testl	%eax, %eax	# D.12206
	je	.L303	#,
	.loc 1 2768 0
	movq	-40(%rbp), %rdx	# c, tmp66
	movq	-24(%rbp), %rax	# a, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	emov	#
	.loc 1 2769 0
	jmp	.L302	#
.L303:
	.loc 1 2771 0
	movq	-32(%rbp), %rax	# b, tmp68
	movq	%rax, %rdi	# tmp68,
	call	eisnan	#
	testl	%eax, %eax	# D.12206
	je	.L305	#,
	.loc 1 2773 0
	movq	-40(%rbp), %rdx	# c, tmp69
	movq	-32(%rbp), %rax	# b, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	emov	#
	.loc 1 2774 0
	jmp	.L302	#
.L305:
	.loc 1 2778 0
	movq	-24(%rbp), %rax	# a, tmp71
	movq	%rax, %rdi	# tmp71,
	call	eisinf	#
	testl	%eax, %eax	# D.12206
	je	.L306	#,
	.loc 1 2778 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp72
	movq	%rax, %rdi	# tmp72,
	call	eisinf	#
	testl	%eax, %eax	# D.12206
	je	.L306	#,
	.loc 1 2779 0 is_stmt 1
	movq	-24(%rbp), %rax	# a, tmp73
	movq	%rax, %rdi	# tmp73,
	call	eisneg	#
	movl	%eax, %ebx	#, D.12206
	movq	-32(%rbp), %rax	# b, tmp74
	movq	%rax, %rdi	# tmp74,
	call	eisneg	#
	cmpl	%eax, %ebx	# D.12206, D.12206
	jne	.L306	#,
	.loc 1 2781 0
	movl	$7, %esi	#,
	movl	$.LC4, %edi	#,
	call	mtherr	#
	.loc 1 2782 0
	movq	-40(%rbp), %rax	# c, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	enan	#
	.loc 1 2783 0
	jmp	.L302	#
.L306:
	.loc 1 2786 0
	movl	$1, subflg(%rip)	#, subflg
	.loc 1 2787 0
	movq	-40(%rbp), %rdx	# c, tmp76
	movq	-32(%rbp), %rcx	# b, tmp77
	movq	-24(%rbp), %rax	# a, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	eadd1	#
.L302:
	.loc 1 2788 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	esub, .-esub
	.type	eadd, @function
eadd:
.LFB58:
	.loc 1 2796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 2800 0
	movq	-24(%rbp), %rax	# a, tmp65
	movq	%rax, %rdi	# tmp65,
	call	eisnan	#
	testl	%eax, %eax	# D.12208
	je	.L308	#,
	.loc 1 2802 0
	movq	-40(%rbp), %rdx	# c, tmp66
	movq	-24(%rbp), %rax	# a, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	emov	#
	.loc 1 2803 0
	jmp	.L307	#
.L308:
	.loc 1 2805 0
	movq	-32(%rbp), %rax	# b, tmp68
	movq	%rax, %rdi	# tmp68,
	call	eisnan	#
	testl	%eax, %eax	# D.12208
	je	.L310	#,
	.loc 1 2807 0
	movq	-40(%rbp), %rdx	# c, tmp69
	movq	-32(%rbp), %rax	# b, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	emov	#
	.loc 1 2808 0
	jmp	.L307	#
.L310:
	.loc 1 2812 0
	movq	-24(%rbp), %rax	# a, tmp71
	movq	%rax, %rdi	# tmp71,
	call	eisinf	#
	testl	%eax, %eax	# D.12208
	je	.L311	#,
	.loc 1 2812 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp72
	movq	%rax, %rdi	# tmp72,
	call	eisinf	#
	testl	%eax, %eax	# D.12208
	je	.L311	#,
	.loc 1 2813 0 is_stmt 1
	movq	-24(%rbp), %rax	# a, tmp73
	movq	%rax, %rdi	# tmp73,
	call	eisneg	#
	movl	%eax, %ebx	#, D.12208
	movq	-32(%rbp), %rax	# b, tmp74
	movq	%rax, %rdi	# tmp74,
	call	eisneg	#
	cmpl	%eax, %ebx	# D.12208, D.12208
	je	.L311	#,
	.loc 1 2815 0
	movl	$7, %esi	#,
	movl	$.LC4, %edi	#,
	call	mtherr	#
	.loc 1 2816 0
	movq	-40(%rbp), %rax	# c, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	enan	#
	.loc 1 2817 0
	jmp	.L307	#
.L311:
	.loc 1 2820 0
	movl	$0, subflg(%rip)	#, subflg
	.loc 1 2821 0
	movq	-40(%rbp), %rdx	# c, tmp76
	movq	-32(%rbp), %rcx	# b, tmp77
	movq	-24(%rbp), %rax	# a, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	eadd1	#
.L307:
	.loc 1 2822 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	eadd, .-eadd
	.type	eadd1, @function
eadd1:
.LFB59:
	.loc 1 2830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# a, a
	movq	%rsi, -144(%rbp)	# b, b
	movq	%rdx, -152(%rbp)	# c, c
	.loc 1 2836 0
	movq	-136(%rbp), %rax	# a, tmp79
	movq	%rax, %rdi	# tmp79,
	call	eisinf	#
	testl	%eax, %eax	# D.12209
	je	.L313	#,
	.loc 1 2838 0
	movq	-152(%rbp), %rdx	# c, tmp80
	movq	-136(%rbp), %rax	# a, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	emov	#
	.loc 1 2839 0
	movl	subflg(%rip), %eax	# subflg, subflg.96
	testl	%eax, %eax	# subflg.96
	je	.L314	#,
	.loc 1 2840 0
	movq	-152(%rbp), %rax	# c, tmp82
	movq	%rax, %rdi	# tmp82,
	call	eneg	#
	.loc 1 2841 0
	jmp	.L312	#
.L314:
	jmp	.L312	#
.L313:
	.loc 1 2843 0
	movq	-144(%rbp), %rax	# b, tmp83
	movq	%rax, %rdi	# tmp83,
	call	eisinf	#
	testl	%eax, %eax	# D.12209
	je	.L316	#,
	.loc 1 2845 0
	movq	-152(%rbp), %rdx	# c, tmp84
	movq	-144(%rbp), %rax	# b, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	emov	#
	.loc 1 2846 0
	jmp	.L312	#
.L316:
	.loc 1 2849 0
	leaq	-96(%rbp), %rdx	#, tmp86
	movq	-136(%rbp), %rax	# a, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	emovi	#
	.loc 1 2850 0
	leaq	-64(%rbp), %rdx	#, tmp88
	movq	-144(%rbp), %rax	# b, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	emovi	#
	.loc 1 2851 0
	movl	subflg(%rip), %eax	# subflg, subflg.97
	testl	%eax, %eax	# subflg.97
	je	.L317	#,
	.loc 1 2852 0
	movzwl	-96(%rbp), %eax	# ai, D.12210
	notl	%eax	# D.12210
	movw	%ax, -96(%rbp)	# D.12210, ai
.L317:
	.loc 1 2855 0
	movzwl	-94(%rbp), %eax	# ai, D.12210
	movzwl	%ax, %eax	# D.12210, tmp90
	movl	%eax, -108(%rbp)	# tmp90, lta
	.loc 1 2856 0
	movzwl	-62(%rbp), %eax	# bi, D.12210
	movzwl	%ax, %eax	# D.12210, tmp91
	movl	%eax, -112(%rbp)	# tmp91, ltb
	.loc 1 2857 0
	movl	-112(%rbp), %eax	# ltb, tmp96
	movl	-108(%rbp), %edx	# lta, tmp97
	subl	%eax, %edx	# tmp96, tmp95
	movl	%edx, %eax	# tmp95, tmp95
	movl	%eax, -116(%rbp)	# tmp95, lt
	.loc 1 2858 0
	cmpl	$0, -116(%rbp)	#, lt
	jle	.L318	#,
	.loc 1 2860 0
	leaq	-32(%rbp), %rdx	#, tmp98
	leaq	-64(%rbp), %rax	#, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	emovz	#
	.loc 1 2861 0
	leaq	-64(%rbp), %rdx	#, tmp100
	leaq	-96(%rbp), %rax	#, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	emovz	#
	.loc 1 2862 0
	leaq	-96(%rbp), %rdx	#, tmp102
	leaq	-32(%rbp), %rax	#, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	emovz	#
	.loc 1 2863 0
	movzwl	-62(%rbp), %eax	# bi, D.12210
	movzwl	%ax, %eax	# D.12210, tmp104
	movl	%eax, -112(%rbp)	# tmp104, ltb
	.loc 1 2864 0
	negl	-116(%rbp)	# lt
.L318:
	.loc 1 2866 0
	movl	$0, -124(%rbp)	#, lost
	.loc 1 2867 0
	cmpl	$0, -116(%rbp)	#, lt
	je	.L319	#,
	.loc 1 2869 0
	cmpl	$-81, -116(%rbp)	#, lt
	jge	.L320	#,
	.loc 1 2870 0
	jmp	.L321	#
.L320:
	.loc 1 2871 0
	movl	-116(%rbp), %eax	# lt, tmp105
	movl	%eax, -104(%rbp)	# tmp105, k
	.loc 1 2872 0
	movl	-104(%rbp), %edx	# k, tmp106
	leaq	-96(%rbp), %rax	#, tmp107
	movl	%edx, %esi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	eshift	#
	movl	%eax, -124(%rbp)	# tmp108, lost
	jmp	.L322	#
.L319:
	.loc 1 2877 0
	leaq	-64(%rbp), %rdx	#, tmp109
	leaq	-96(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	ecmpm	#
	movl	%eax, -100(%rbp)	# tmp111, i
	.loc 1 2878 0
	cmpl	$0, -100(%rbp)	#, i
	jne	.L323	#,
	.loc 1 2881 0
	movzwl	-96(%rbp), %edx	# ai, D.12210
	movzwl	-64(%rbp), %eax	# bi, D.12210
	cmpw	%ax, %dx	# D.12210, D.12210
	je	.L324	#,
	.loc 1 2883 0
	movq	-152(%rbp), %rax	# c, tmp112
	movq	%rax, %rdi	# tmp112,
	call	eclear	#
	.loc 1 2884 0
	jmp	.L312	#
.L324:
	.loc 1 2888 0
	movzwl	-62(%rbp), %eax	# bi, D.12210
	testw	%ax, %ax	# D.12210
	jne	.L325	#,
	.loc 1 2888 0 is_stmt 0 discriminator 1
	movzwl	-58(%rbp), %eax	# bi, D.12210
	testw	%ax, %ax	# D.12211
	js	.L325	#,
	.loc 1 2890 0 is_stmt 1
	leaq	-64(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	eshup1	#
	.loc 1 2891 0
	jmp	.L321	#
.L325:
	.loc 1 2894 0
	movl	$1, -120(%rbp)	#, j
	jmp	.L326	#
.L331:
	.loc 1 2896 0
	movl	-120(%rbp), %eax	# j, tmp115
	cltq
	movzwl	-64(%rbp,%rax,2), %eax	# bi, D.12210
	testw	%ax, %ax	# D.12210
	je	.L327	#,
	.loc 1 2898 0
	addl	$1, -112(%rbp)	#, ltb
	.loc 1 2899 0
	cmpl	$32766, -112(%rbp)	#, ltb
	jle	.L328	#,
	.loc 1 2901 0
	movq	-152(%rbp), %rax	# c, tmp116
	movq	%rax, %rdi	# tmp116,
	call	eclear	#
	.loc 1 2902 0
	movzwl	-96(%rbp), %eax	# ai, D.12210
	testw	%ax, %ax	# D.12210
	je	.L329	#,
	.loc 1 2903 0
	movq	-152(%rbp), %rax	# c, tmp117
	movq	%rax, %rdi	# tmp117,
	call	eneg	#
.L329:
	.loc 1 2904 0
	movq	-152(%rbp), %rax	# c, tmp118
	movq	%rax, %rdi	# tmp118,
	call	einfin	#
	.loc 1 2905 0
	jmp	.L312	#
.L328:
	.loc 1 2907 0
	jmp	.L330	#
.L327:
	.loc 1 2894 0
	addl	$1, -120(%rbp)	#, j
.L326:
	.loc 1 2894 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, j
	jle	.L331	#,
.L330:
	.loc 1 2910 0 is_stmt 1
	movl	-112(%rbp), %eax	# ltb, tmp119
	movw	%ax, -62(%rbp)	# D.12210, bi
	.loc 1 2911 0
	jmp	.L321	#
.L323:
	.loc 1 2913 0
	cmpl	$0, -100(%rbp)	#, i
	jle	.L322	#,
	.loc 1 2915 0
	leaq	-32(%rbp), %rdx	#, tmp120
	leaq	-64(%rbp), %rax	#, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	emovz	#
	.loc 1 2916 0
	leaq	-64(%rbp), %rdx	#, tmp122
	leaq	-96(%rbp), %rax	#, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	emovz	#
	.loc 1 2917 0
	leaq	-96(%rbp), %rdx	#, tmp124
	leaq	-32(%rbp), %rax	#, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	emovz	#
.L322:
	.loc 1 2920 0
	movzwl	-96(%rbp), %edx	# ai, D.12210
	movzwl	-64(%rbp), %eax	# bi, D.12210
	cmpw	%ax, %dx	# D.12210, D.12210
	jne	.L332	#,
	.loc 1 2922 0
	leaq	-64(%rbp), %rdx	#, tmp126
	leaq	-96(%rbp), %rax	#, tmp127
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	eaddm	#
	.loc 1 2923 0
	movl	$0, subflg(%rip)	#, subflg
	jmp	.L333	#
.L332:
	.loc 1 2927 0
	leaq	-64(%rbp), %rdx	#, tmp128
	leaq	-96(%rbp), %rax	#, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	esubm	#
	.loc 1 2928 0
	movl	$1, subflg(%rip)	#, subflg
.L333:
	.loc 1 2930 0
	movl	subflg(%rip), %edx	# subflg, subflg.98
	movl	-112(%rbp), %ecx	# ltb, tmp130
	movl	-124(%rbp), %esi	# lost, tmp131
	leaq	-64(%rbp), %rax	#, tmp132
	movl	$64, %r8d	#,
	movq	%rax, %rdi	# tmp132,
	call	emdnorm	#
.L321:
	.loc 1 2933 0
	movq	-152(%rbp), %rdx	# c, tmp133
	leaq	-64(%rbp), %rax	#, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	emovo	#
.L312:
	.loc 1 2934 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	eadd1, .-eadd1
	.section	.rodata
.LC5:
	.string	"ediv"
	.text
	.type	ediv, @function
ediv:
.LFB60:
	.loc 1 2942 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# a, a
	movq	%rsi, -128(%rbp)	# b, b
	movq	%rdx, -136(%rbp)	# c, c
	.loc 1 2949 0
	movq	-120(%rbp), %rax	# a, tmp86
	movq	%rax, %rdi	# tmp86,
	call	eisneg	#
	movl	%eax, %ebx	#, D.12212
	movq	-128(%rbp), %rax	# b, tmp87
	movq	%rax, %rdi	# tmp87,
	call	eisneg	#
	xorl	%ebx, %eax	# D.12212, tmp88
	movl	%eax, -88(%rbp)	# tmp88, sign
	.loc 1 2953 0
	movq	-120(%rbp), %rax	# a, tmp89
	movq	%rax, %rdi	# tmp89,
	call	eisnan	#
	testl	%eax, %eax	# D.12212
	je	.L336	#,
	.loc 1 2955 0
	movq	-136(%rbp), %rdx	# c, tmp90
	movq	-120(%rbp), %rax	# a, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	emov	#
	.loc 1 2956 0
	jmp	.L335	#
.L336:
	.loc 1 2958 0
	movq	-128(%rbp), %rax	# b, tmp92
	movq	%rax, %rdi	# tmp92,
	call	eisnan	#
	testl	%eax, %eax	# D.12212
	je	.L338	#,
	.loc 1 2960 0
	movq	-136(%rbp), %rdx	# c, tmp93
	movq	-128(%rbp), %rax	# b, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	emov	#
	.loc 1 2961 0
	jmp	.L335	#
.L338:
	.loc 1 2964 0
	movq	-120(%rbp), %rax	# a, tmp95
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	ecmp	#
	testl	%eax, %eax	# D.12212
	jne	.L339	#,
	.loc 1 2964 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# b, tmp96
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	ecmp	#
	testl	%eax, %eax	# D.12212
	je	.L340	#,
.L339:
	.loc 1 2965 0 is_stmt 1
	movq	-120(%rbp), %rax	# a, tmp97
	movq	%rax, %rdi	# tmp97,
	call	eisinf	#
	testl	%eax, %eax	# D.12212
	je	.L341	#,
	.loc 1 2965 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# b, tmp98
	movq	%rax, %rdi	# tmp98,
	call	eisinf	#
	testl	%eax, %eax	# D.12212
	je	.L341	#,
.L340:
	.loc 1 2967 0 is_stmt 1
	movl	$7, %esi	#,
	movl	$.LC5, %edi	#,
	call	mtherr	#
	.loc 1 2968 0
	movl	-88(%rbp), %edx	# sign, tmp99
	movq	-136(%rbp), %rax	# c, tmp100
	movl	%edx, %esi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	enan	#
	.loc 1 2969 0
	jmp	.L335	#
.L341:
	.loc 1 2974 0
	movq	-128(%rbp), %rax	# b, tmp101
	movq	%rax, %rdi	# tmp101,
	call	eisinf	#
	testl	%eax, %eax	# D.12212
	je	.L342	#,
	.loc 1 2976 0
	movq	-136(%rbp), %rax	# c, tmp102
	movq	%rax, %rdi	# tmp102,
	call	einfin	#
	.loc 1 2977 0
	jmp	.L343	#
.L342:
	.loc 1 2980 0
	movq	-120(%rbp), %rax	# a, tmp103
	movq	%rax, %rdi	# tmp103,
	call	eisinf	#
	testl	%eax, %eax	# D.12212
	je	.L344	#,
	.loc 1 2982 0
	movq	-136(%rbp), %rax	# c, tmp104
	movq	%rax, %rdi	# tmp104,
	call	eclear	#
	.loc 1 2983 0
	jmp	.L343	#
.L344:
	.loc 1 2986 0
	leaq	-80(%rbp), %rdx	#, tmp105
	movq	-120(%rbp), %rax	# a, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	emovi	#
	.loc 1 2987 0
	leaq	-48(%rbp), %rdx	#, tmp107
	movq	-128(%rbp), %rax	# b, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	emovi	#
	.loc 1 2988 0
	movzwl	-78(%rbp), %eax	# ai, D.12213
	movzwl	%ax, %eax	# D.12213, tmp109
	movl	%eax, -96(%rbp)	# tmp109, lta
	.loc 1 2989 0
	movzwl	-46(%rbp), %eax	# bi, D.12213
	movzwl	%ax, %eax	# D.12213, tmp110
	movl	%eax, -92(%rbp)	# tmp110, ltb
	.loc 1 2990 0
	movzwl	-46(%rbp), %eax	# bi, D.12213
	testw	%ax, %ax	# D.12213
	jne	.L345	#,
	.loc 1 2992 0
	movl	$1, -100(%rbp)	#, i
	jmp	.L346	#
.L348:
	.loc 1 2994 0
	movl	-100(%rbp), %eax	# i, tmp112
	cltq
	movzwl	-48(%rbp,%rax,2), %eax	# bi, D.12213
	testw	%ax, %ax	# D.12213
	je	.L347	#,
	.loc 1 2996 0
	leaq	-48(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	enormlz	#
	subl	%eax, -92(%rbp)	# D.12212, ltb
	.loc 1 2997 0
	jmp	.L345	#
.L347:
	.loc 1 2992 0
	addl	$1, -100(%rbp)	#, i
.L346:
	.loc 1 2992 0 is_stmt 0 discriminator 1
	cmpl	$7, -100(%rbp)	#, i
	jle	.L348	#,
	.loc 1 3000 0 is_stmt 1
	movq	-136(%rbp), %rax	# c, tmp114
	movq	%rax, %rdi	# tmp114,
	call	eclear	#
	.loc 1 3001 0
	jmp	.L343	#
.L345:
	.loc 1 3005 0
	movzwl	-78(%rbp), %eax	# ai, D.12213
	testw	%ax, %ax	# D.12213
	jne	.L349	#,
	.loc 1 3007 0
	movl	$1, -100(%rbp)	#, i
	jmp	.L350	#
.L352:
	.loc 1 3009 0
	movl	-100(%rbp), %eax	# i, tmp116
	cltq
	movzwl	-80(%rbp,%rax,2), %eax	# ai, D.12213
	testw	%ax, %ax	# D.12213
	je	.L351	#,
	.loc 1 3011 0
	leaq	-80(%rbp), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	enormlz	#
	subl	%eax, -96(%rbp)	# D.12212, lta
	.loc 1 3012 0
	jmp	.L349	#
.L351:
	.loc 1 3007 0
	addl	$1, -100(%rbp)	#, i
.L350:
	.loc 1 3007 0 is_stmt 0 discriminator 1
	cmpl	$7, -100(%rbp)	#, i
	jle	.L352	#,
	.loc 1 3017 0 is_stmt 1
	movq	-136(%rbp), %rax	# c, tmp118
	movq	%rax, %rdi	# tmp118,
	call	einfin	#
	.loc 1 3018 0
	movl	$2, %esi	#,
	movl	$.LC5, %edi	#,
	call	mtherr	#
	.loc 1 3019 0
	jmp	.L343	#
.L349:
	.loc 1 3023 0
	leaq	-48(%rbp), %rdx	#, tmp119
	leaq	-80(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	edivm	#
	movl	%eax, -100(%rbp)	# tmp121, i
	.loc 1 3025 0
	movl	-96(%rbp), %eax	# lta, tmp122
	movl	-92(%rbp), %edx	# ltb, tmp123
	subl	%eax, %edx	# tmp122, D.12212
	movl	%edx, %eax	# D.12212, D.12212
	addl	$16383, %eax	#, tmp124
	movl	%eax, -84(%rbp)	# tmp124, lt
	.loc 1 3026 0
	movl	-84(%rbp), %edx	# lt, tmp125
	movl	-100(%rbp), %esi	# i, tmp126
	leaq	-48(%rbp), %rax	#, tmp127
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp125,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp127,
	call	emdnorm	#
	.loc 1 3027 0
	movq	-136(%rbp), %rdx	# c, tmp128
	leaq	-48(%rbp), %rax	#, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	emovo	#
.L343:
	.loc 1 3031 0
	cmpl	$0, -88(%rbp)	#, sign
	je	.L353	#,
	.loc 1 3036 0
	movq	-136(%rbp), %rax	# c, tmp130
	addq	$10, %rax	#, D.12214
	movq	-136(%rbp), %rdx	# c, tmp131
	addq	$10, %rdx	#, D.12214
	movzwl	(%rdx), %edx	# *_39, D.12213
	orw	$-32768, %dx	#, D.12213
	movw	%dx, (%rax)	# D.12213, *_38
	jmp	.L335	#
.L353:
	.loc 1 3038 0
	movq	-136(%rbp), %rax	# c, tmp132
	addq	$10, %rax	#, D.12214
	movq	-136(%rbp), %rdx	# c, tmp133
	addq	$10, %rdx	#, D.12214
	movzwl	(%rdx), %edx	# *_43, D.12213
	andw	$32767, %dx	#, D.12213
	movw	%dx, (%rax)	# D.12213, *_42
.L335:
	.loc 1 3039 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ediv, .-ediv
	.section	.rodata
.LC6:
	.string	"emul"
	.text
	.type	emul, @function
emul:
.LFB61:
	.loc 1 3047 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# a, a
	movq	%rsi, -128(%rbp)	# b, b
	movq	%rdx, -136(%rbp)	# c, c
	.loc 1 3054 0
	movq	-120(%rbp), %rax	# a, tmp86
	movq	%rax, %rdi	# tmp86,
	call	eisneg	#
	movl	%eax, %ebx	#, D.12216
	movq	-128(%rbp), %rax	# b, tmp87
	movq	%rax, %rdi	# tmp87,
	call	eisneg	#
	xorl	%ebx, %eax	# D.12216, tmp88
	movl	%eax, -92(%rbp)	# tmp88, sign
	.loc 1 3058 0
	movq	-120(%rbp), %rax	# a, tmp89
	movq	%rax, %rdi	# tmp89,
	call	eisnan	#
	testl	%eax, %eax	# D.12216
	je	.L357	#,
	.loc 1 3060 0
	movq	-136(%rbp), %rdx	# c, tmp90
	movq	-120(%rbp), %rax	# a, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	emov	#
	.loc 1 3061 0
	jmp	.L356	#
.L357:
	.loc 1 3063 0
	movq	-128(%rbp), %rax	# b, tmp92
	movq	%rax, %rdi	# tmp92,
	call	eisnan	#
	testl	%eax, %eax	# D.12216
	je	.L359	#,
	.loc 1 3065 0
	movq	-136(%rbp), %rdx	# c, tmp93
	movq	-128(%rbp), %rax	# b, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	emov	#
	.loc 1 3066 0
	jmp	.L356	#
.L359:
	.loc 1 3069 0
	movq	-120(%rbp), %rax	# a, tmp95
	movq	%rax, %rdi	# tmp95,
	call	eisinf	#
	testl	%eax, %eax	# D.12216
	je	.L360	#,
	.loc 1 3069 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# b, tmp96
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	ecmp	#
	testl	%eax, %eax	# D.12216
	je	.L361	#,
.L360:
	.loc 1 3070 0 is_stmt 1
	movq	-128(%rbp), %rax	# b, tmp97
	movq	%rax, %rdi	# tmp97,
	call	eisinf	#
	testl	%eax, %eax	# D.12216
	je	.L362	#,
	.loc 1 3070 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# a, tmp98
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	ecmp	#
	testl	%eax, %eax	# D.12216
	jne	.L362	#,
.L361:
	.loc 1 3072 0 is_stmt 1
	movl	$7, %esi	#,
	movl	$.LC6, %edi	#,
	call	mtherr	#
	.loc 1 3073 0
	movl	-92(%rbp), %edx	# sign, tmp99
	movq	-136(%rbp), %rax	# c, tmp100
	movl	%edx, %esi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	enan	#
	.loc 1 3074 0
	jmp	.L356	#
.L362:
	.loc 1 3079 0
	movq	-120(%rbp), %rax	# a, tmp101
	movq	%rax, %rdi	# tmp101,
	call	eisinf	#
	testl	%eax, %eax	# D.12216
	jne	.L363	#,
	.loc 1 3079 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# b, tmp102
	movq	%rax, %rdi	# tmp102,
	call	eisinf	#
	testl	%eax, %eax	# D.12216
	je	.L364	#,
.L363:
	.loc 1 3081 0 is_stmt 1
	movq	-136(%rbp), %rax	# c, tmp103
	movq	%rax, %rdi	# tmp103,
	call	einfin	#
	.loc 1 3082 0
	jmp	.L365	#
.L364:
	.loc 1 3085 0
	leaq	-80(%rbp), %rdx	#, tmp104
	movq	-120(%rbp), %rax	# a, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	emovi	#
	.loc 1 3086 0
	leaq	-48(%rbp), %rdx	#, tmp106
	movq	-128(%rbp), %rax	# b, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	emovi	#
	.loc 1 3087 0
	movzwl	-78(%rbp), %eax	# ai, D.12217
	movzwl	%ax, %eax	# D.12217, tmp108
	movl	%eax, -100(%rbp)	# tmp108, lta
	.loc 1 3088 0
	movzwl	-46(%rbp), %eax	# bi, D.12217
	movzwl	%ax, %eax	# D.12217, tmp109
	movl	%eax, -96(%rbp)	# tmp109, ltb
	.loc 1 3089 0
	movzwl	-78(%rbp), %eax	# ai, D.12217
	testw	%ax, %ax	# D.12217
	jne	.L366	#,
	.loc 1 3091 0
	movl	$1, -104(%rbp)	#, i
	jmp	.L367	#
.L369:
	.loc 1 3093 0
	movl	-104(%rbp), %eax	# i, tmp111
	cltq
	movzwl	-80(%rbp,%rax,2), %eax	# ai, D.12217
	testw	%ax, %ax	# D.12217
	je	.L368	#,
	.loc 1 3095 0
	leaq	-80(%rbp), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	enormlz	#
	subl	%eax, -100(%rbp)	# D.12216, lta
	.loc 1 3096 0
	jmp	.L366	#
.L368:
	.loc 1 3091 0
	addl	$1, -104(%rbp)	#, i
.L367:
	.loc 1 3091 0 is_stmt 0 discriminator 1
	cmpl	$7, -104(%rbp)	#, i
	jle	.L369	#,
	.loc 1 3099 0 is_stmt 1
	movq	-136(%rbp), %rax	# c, tmp113
	movq	%rax, %rdi	# tmp113,
	call	eclear	#
	.loc 1 3100 0
	jmp	.L365	#
.L366:
	.loc 1 3104 0
	movzwl	-46(%rbp), %eax	# bi, D.12217
	testw	%ax, %ax	# D.12217
	jne	.L370	#,
	.loc 1 3106 0
	movl	$1, -104(%rbp)	#, i
	jmp	.L371	#
.L373:
	.loc 1 3108 0
	movl	-104(%rbp), %eax	# i, tmp115
	cltq
	movzwl	-48(%rbp,%rax,2), %eax	# bi, D.12217
	testw	%ax, %ax	# D.12217
	je	.L372	#,
	.loc 1 3110 0
	leaq	-48(%rbp), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	enormlz	#
	subl	%eax, -96(%rbp)	# D.12216, ltb
	.loc 1 3111 0
	jmp	.L370	#
.L372:
	.loc 1 3106 0
	addl	$1, -104(%rbp)	#, i
.L371:
	.loc 1 3106 0 is_stmt 0 discriminator 1
	cmpl	$7, -104(%rbp)	#, i
	jle	.L373	#,
	.loc 1 3114 0 is_stmt 1
	movq	-136(%rbp), %rax	# c, tmp117
	movq	%rax, %rdi	# tmp117,
	call	eclear	#
	.loc 1 3115 0
	jmp	.L365	#
.L370:
	.loc 1 3120 0
	leaq	-48(%rbp), %rdx	#, tmp118
	leaq	-80(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	emulm	#
	movl	%eax, -88(%rbp)	# tmp120, j
	.loc 1 3122 0
	movl	-96(%rbp), %eax	# ltb, tmp121
	movl	-100(%rbp), %edx	# lta, tmp122
	addl	%edx, %eax	# tmp122, D.12216
	subl	$16382, %eax	#, tmp123
	movl	%eax, -84(%rbp)	# tmp123, lt
	.loc 1 3123 0
	movl	-84(%rbp), %edx	# lt, tmp124
	movl	-88(%rbp), %esi	# j, tmp125
	leaq	-48(%rbp), %rax	#, tmp126
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp124,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp126,
	call	emdnorm	#
	.loc 1 3124 0
	movq	-136(%rbp), %rdx	# c, tmp127
	leaq	-48(%rbp), %rax	#, tmp128
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	emovo	#
.L365:
	.loc 1 3128 0
	cmpl	$0, -92(%rbp)	#, sign
	je	.L374	#,
	.loc 1 3133 0
	movq	-136(%rbp), %rax	# c, tmp129
	addq	$10, %rax	#, D.12218
	movq	-136(%rbp), %rdx	# c, tmp130
	addq	$10, %rdx	#, D.12218
	movzwl	(%rdx), %edx	# *_39, D.12217
	orw	$-32768, %dx	#, D.12217
	movw	%dx, (%rax)	# D.12217, *_38
	jmp	.L356	#
.L374:
	.loc 1 3135 0
	movq	-136(%rbp), %rax	# c, tmp131
	addq	$10, %rax	#, D.12218
	movq	-136(%rbp), %rdx	# c, tmp132
	addq	$10, %rdx	#, D.12218
	movzwl	(%rdx), %edx	# *_43, D.12217
	andw	$32767, %dx	#, D.12217
	movw	%dx, (%rax)	# D.12217, *_42
.L356:
	.loc 1 3136 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	emul, .-emul
	.type	e53toe, @function
e53toe:
.LFB62:
	.loc 1 3144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pe, pe
	movq	%rsi, -80(%rbp)	# y, y
	.loc 1 3166 0
	movq	-72(%rbp), %rax	# pe, tmp89
	movq	%rax, -48(%rbp)	# tmp89, e
	.loc 1 3167 0
	movl	$0, -56(%rbp)	#, denorm
	.loc 1 3168 0
	leaq	-32(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	ecleaz	#
	.loc 1 3170 0
	addq	$6, -48(%rbp)	#, e
	.loc 1 3171 0
	movq	-48(%rbp), %rax	# e, tmp91
	movzwl	(%rax), %eax	# *e_5, tmp92
	movw	%ax, -58(%rbp)	# tmp92, r
	.loc 1 3172 0
	movw	$0, -32(%rbp)	#, yy
	.loc 1 3173 0
	movzwl	-58(%rbp), %eax	# r, r.99
	testw	%ax, %ax	# r.99
	jns	.L378	#,
	.loc 1 3174 0
	movw	$-1, -32(%rbp)	#, yy
.L378:
	.loc 1 3175 0
	movzwl	-58(%rbp), %eax	# r, r.100
	andl	$15, %eax	#, D.12220
	orl	$16, %eax	#, D.12220
	movw	%ax, -28(%rbp)	# D.12221, yy
	.loc 1 3176 0
	andw	$32752, -58(%rbp)	#, r
	.loc 1 3178 0
	cmpw	$32752, -58(%rbp)	#, r
	jne	.L379	#,
	.loc 1 3183 0
	movq	-72(%rbp), %rax	# pe, tmp93
	addq	$6, %rax	#, D.12222
	movzwl	(%rax), %eax	# *_13, D.12221
	movzwl	%ax, %eax	# D.12221, D.12223
	andl	$15, %eax	#, D.12223
	testl	%eax, %eax	# D.12223
	jne	.L380	#,
	.loc 1 3183 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pe, tmp94
	addq	$4, %rax	#, D.12222
	movzwl	(%rax), %eax	# *_17, D.12221
	testw	%ax, %ax	# D.12221
	jne	.L380	#,
	.loc 1 3184 0 is_stmt 1
	movq	-72(%rbp), %rax	# pe, tmp95
	addq	$2, %rax	#, D.12222
	movzwl	(%rax), %eax	# *_19, D.12221
	testw	%ax, %ax	# D.12221
	jne	.L380	#,
	.loc 1 3184 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pe, tmp96
	movzwl	(%rax), %eax	# *pe_2(D), D.12221
	testw	%ax, %ax	# D.12221
	je	.L381	#,
.L380:
	.loc 1 3186 0 is_stmt 1
	movzwl	-32(%rbp), %eax	# yy, D.12221
	testw	%ax, %ax	# D.12221
	setne	%al	#, D.12224
	movzbl	%al, %edx	# D.12224, D.12223
	movq	-80(%rbp), %rax	# y, tmp97
	movl	%edx, %esi	# D.12223,
	movq	%rax, %rdi	# tmp97,
	call	enan	#
	.loc 1 3187 0
	jmp	.L377	#
.L381:
	.loc 1 3200 0
	movq	-80(%rbp), %rax	# y, tmp98
	movq	%rax, %rdi	# tmp98,
	call	eclear	#
	.loc 1 3201 0
	movq	-80(%rbp), %rax	# y, tmp99
	movq	%rax, %rdi	# tmp99,
	call	einfin	#
	.loc 1 3202 0
	movzwl	-32(%rbp), %eax	# yy, D.12221
	testw	%ax, %ax	# D.12221
	je	.L383	#,
	.loc 1 3203 0
	movq	-80(%rbp), %rax	# y, tmp100
	movq	%rax, %rdi	# tmp100,
	call	eneg	#
	.loc 1 3204 0
	jmp	.L377	#
.L383:
	jmp	.L377	#
.L379:
	.loc 1 3207 0
	shrw	$4, -58(%rbp)	#, r
	.loc 1 3211 0
	cmpw	$0, -58(%rbp)	#, r
	jne	.L384	#,
	.loc 1 3213 0
	movl	$1, -56(%rbp)	#, denorm
	.loc 1 3214 0
	movzwl	-28(%rbp), %eax	# yy, D.12221
	andl	$-17, %eax	#, D.12221
	movw	%ax, -28(%rbp)	# D.12221, yy
.L384:
	.loc 1 3216 0
	addw	$15360, -58(%rbp)	#, r
	.loc 1 3217 0
	movzwl	-58(%rbp), %eax	# r, tmp101
	movw	%ax, -30(%rbp)	# tmp101, yy
	.loc 1 3218 0
	leaq	-32(%rbp), %rax	#, tmp102
	addq	$6, %rax	#, tmp103
	movq	%rax, -40(%rbp)	# tmp103, p
	.loc 1 3222 0
	movq	-40(%rbp), %rax	# p, p.101
	leaq	2(%rax), %rdx	#, tmp104
	movq	%rdx, -40(%rbp)	# tmp104, p
	subq	$2, -48(%rbp)	#, e
	movq	-48(%rbp), %rdx	# e, tmp105
	movzwl	(%rdx), %edx	# *e_35, D.12221
	movw	%dx, (%rax)	# D.12221, *p.101_33
	.loc 1 3223 0
	movq	-40(%rbp), %rax	# p, p.102
	leaq	2(%rax), %rdx	#, tmp106
	movq	%rdx, -40(%rbp)	# tmp106, p
	subq	$2, -48(%rbp)	#, e
	movq	-48(%rbp), %rdx	# e, tmp107
	movzwl	(%rdx), %edx	# *e_39, D.12221
	movw	%dx, (%rax)	# D.12221, *p.102_37
	.loc 1 3224 0
	movq	-40(%rbp), %rax	# p, p.103
	leaq	2(%rax), %rdx	#, tmp108
	movq	%rdx, -40(%rbp)	# tmp108, p
	subq	$2, -48(%rbp)	#, e
	movq	-48(%rbp), %rdx	# e, tmp109
	movzwl	(%rdx), %edx	# *e_43, D.12221
	movw	%dx, (%rax)	# D.12221, *p.103_41
	.loc 1 3234 0
	leaq	-32(%rbp), %rax	#, tmp110
	movl	$-5, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	eshift	#
	.loc 1 3235 0
	cmpl	$0, -56(%rbp)	#, denorm
	je	.L385	#,
	.loc 1 3238 0
	leaq	-32(%rbp), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	enormlz	#
	movl	%eax, -52(%rbp)	# tmp112, k
	cmpl	$80, -52(%rbp)	#, k
	jle	.L386	#,
	.loc 1 3239 0
	leaq	-32(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	ecleazs	#
	jmp	.L385	#
.L386:
	.loc 1 3241 0
	movzwl	-30(%rbp), %edx	# yy, D.12221
	movl	-52(%rbp), %eax	# k, tmp114
	subl	%eax, %edx	# D.12221, D.12221
	movl	%edx, %eax	# D.12221, D.12221
	addl	$1, %eax	#, D.12221
	movw	%ax, -30(%rbp)	# D.12221, yy
.L385:
	.loc 1 3243 0 discriminator 1
	movq	-80(%rbp), %rdx	# y, tmp115
	leaq	-32(%rbp), %rax	#, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	emovo	#
.L377:
	.loc 1 3247 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	e53toe, .-e53toe
	.type	e64toe, @function
e64toe:
.LFB63:
	.loc 1 3255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# pe, pe
	movq	%rsi, -112(%rbp)	# y, y
	.loc 1 3261 0
	movq	-104(%rbp), %rax	# pe, tmp88
	movq	%rax, -88(%rbp)	# tmp88, e
	.loc 1 3262 0
	leaq	-64(%rbp), %rax	#, tmp89
	movq	%rax, -80(%rbp)	# tmp89, p
	.loc 1 3263 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L389	#
.L390:
	.loc 1 3264 0 discriminator 2
	movq	-80(%rbp), %rax	# p, p.110
	leaq	2(%rax), %rdx	#, tmp90
	movq	%rdx, -80(%rbp)	# tmp90, p
	movw	$0, (%rax)	#, *p.110_14
	.loc 1 3263 0 discriminator 2
	addl	$1, -92(%rbp)	#, i
.L389:
	.loc 1 3263 0 is_stmt 0 discriminator 1
	cmpl	$0, -92(%rbp)	#, i
	jle	.L390	#,
	.loc 1 3280 0 is_stmt 1
	movl	$0, -92(%rbp)	#, i
	jmp	.L391	#
.L392:
	.loc 1 3281 0 discriminator 2
	movq	-80(%rbp), %rax	# p, p.111
	leaq	2(%rax), %rdx	#, tmp91
	movq	%rdx, -80(%rbp)	# tmp91, p
	movq	-88(%rbp), %rdx	# e, e.112
	leaq	2(%rdx), %rcx	#, tmp92
	movq	%rcx, -88(%rbp)	# tmp92, e
	movzwl	(%rdx), %edx	# *e.112_20, D.12225
	movw	%dx, (%rax)	# D.12225, *p.111_18
	.loc 1 3280 0 discriminator 2
	addl	$1, -92(%rbp)	#, i
.L391:
	.loc 1 3280 0 is_stmt 0 discriminator 1
	cmpl	$4, -92(%rbp)	#, i
	jle	.L392	#,
	.loc 1 3286 0 is_stmt 1
	movzwl	-54(%rbp), %eax	# yy, D.12225
	movzwl	%ax, %eax	# D.12225, D.12226
	andl	$32767, %eax	#, D.12226
	testl	%eax, %eax	# D.12226
	jne	.L393	#,
	.loc 1 3286 0 is_stmt 0 discriminator 1
	movzwl	-56(%rbp), %eax	# yy, D.12225
	testw	%ax, %ax	# D.12227
	js	.L393	#,
.LBB2:
	.loc 1 3290 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp93
	leaq	-64(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	emovi	#
	.loc 1 3291 0
	leaq	-32(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	eshup1	#
	.loc 1 3292 0
	movq	-112(%rbp), %rdx	# y, tmp96
	leaq	-32(%rbp), %rax	#, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	emovo	#
	.loc 1 3293 0
	nop
	jmp	.L388	#
.L393:
.LBE2:
	.loc 1 3313 0
	leaq	-64(%rbp), %rax	#, tmp98
	addq	$10, %rax	#, tmp99
	movq	%rax, -80(%rbp)	# tmp99, p
	.loc 1 3314 0
	movq	-80(%rbp), %rax	# p, tmp100
	movzwl	(%rax), %eax	# *p_30, D.12225
	movzwl	%ax, %eax	# D.12225, D.12226
	andl	$32767, %eax	#, D.12226
	cmpl	$32767, %eax	#, D.12226
	jne	.L395	#,
	.loc 1 3319 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L396	#
.L400:
	.loc 1 3321 0
	cmpl	$3, -92(%rbp)	#, i
	je	.L397	#,
	.loc 1 3321 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp101
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12228
	movq	-104(%rbp), %rax	# pe, tmp102
	addq	%rdx, %rax	# D.12228, D.12229
	movzwl	(%rax), %eax	# *_37, D.12225
	testw	%ax, %ax	# D.12225
	jne	.L398	#,
.L397:
	.loc 1 3323 0 is_stmt 1
	cmpl	$3, -92(%rbp)	#, i
	jne	.L399	#,
	.loc 1 3323 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp103
	cltq
	leaq	(%rax,%rax), %rdx	#, D.12228
	movq	-104(%rbp), %rax	# pe, tmp104
	addq	%rdx, %rax	# D.12228, D.12229
	movzwl	(%rax), %eax	# *_41, D.12225
	cmpw	$-32768, %ax	#, D.12225
	je	.L399	#,
.L398:
	.loc 1 3325 0 is_stmt 1
	movq	-80(%rbp), %rax	# p, tmp105
	movzwl	(%rax), %eax	# *p_30, D.12225
	shrw	$15, %ax	#, tmp106
	movzbl	%al, %edx	# D.12230, D.12226
	movq	-112(%rbp), %rax	# y, tmp107
	movl	%edx, %esi	# D.12226,
	movq	%rax, %rdi	# tmp107,
	call	enan	#
	.loc 1 3326 0
	jmp	.L388	#
.L399:
	.loc 1 3319 0
	addl	$1, -92(%rbp)	#, i
.L396:
	.loc 1 3319 0 is_stmt 0 discriminator 1
	cmpl	$3, -92(%rbp)	#, i
	jle	.L400	#,
	.loc 1 3360 0 is_stmt 1
	movq	-112(%rbp), %rax	# y, tmp108
	movq	%rax, %rdi	# tmp108,
	call	eclear	#
	.loc 1 3361 0
	movq	-112(%rbp), %rax	# y, tmp109
	movq	%rax, %rdi	# tmp109,
	call	einfin	#
	.loc 1 3362 0
	movq	-80(%rbp), %rax	# p, tmp110
	movzwl	(%rax), %eax	# *p_30, D.12225
	testw	%ax, %ax	# D.12227
	jns	.L401	#,
	.loc 1 3363 0
	movq	-112(%rbp), %rax	# y, tmp111
	movq	%rax, %rdi	# tmp111,
	call	eneg	#
	.loc 1 3364 0
	jmp	.L388	#
.L401:
	jmp	.L388	#
.L395:
	.loc 1 3367 0
	leaq	-64(%rbp), %rax	#, tmp112
	movq	%rax, -80(%rbp)	# tmp112, p
	.loc 1 3368 0
	movq	-112(%rbp), %rax	# y, tmp113
	movq	%rax, -72(%rbp)	# tmp113, q
	.loc 1 3369 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L402	#
.L403:
	.loc 1 3370 0 discriminator 2
	movq	-72(%rbp), %rax	# q, q.117
	leaq	2(%rax), %rdx	#, tmp114
	movq	%rdx, -72(%rbp)	# tmp114, q
	movq	-80(%rbp), %rdx	# p, p.118
	leaq	2(%rdx), %rcx	#, tmp115
	movq	%rcx, -80(%rbp)	# tmp115, p
	movzwl	(%rdx), %edx	# *p.118_55, D.12225
	movw	%dx, (%rax)	# D.12225, *q.117_53
	.loc 1 3369 0 discriminator 2
	addl	$1, -92(%rbp)	#, i
.L402:
	.loc 1 3369 0 is_stmt 0 discriminator 1
	cmpl	$5, -92(%rbp)	#, i
	jle	.L403	#,
.L388:
	.loc 1 3371 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	e64toe, .-e64toe
	.type	e24toe, @function
e24toe:
.LFB64:
	.loc 1 3468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pe, pe
	movq	%rsi, -80(%rbp)	# y, y
	.loc 1 3487 0
	movq	-72(%rbp), %rax	# pe, tmp81
	movq	%rax, -48(%rbp)	# tmp81, e
	.loc 1 3488 0
	movl	$0, -56(%rbp)	#, denorm
	.loc 1 3489 0
	leaq	-32(%rbp), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	ecleaz	#
	.loc 1 3492 0
	addq	$2, -48(%rbp)	#, e
	.loc 1 3497 0
	movq	-48(%rbp), %rax	# e, tmp83
	movzwl	(%rax), %eax	# *e_5, tmp84
	movw	%ax, -58(%rbp)	# tmp84, r
	.loc 1 3498 0
	movw	$0, -32(%rbp)	#, yy
	.loc 1 3499 0
	movzwl	-58(%rbp), %eax	# r, r.119
	testw	%ax, %ax	# r.119
	jns	.L406	#,
	.loc 1 3500 0
	movw	$-1, -32(%rbp)	#, yy
.L406:
	.loc 1 3501 0
	movzwl	-58(%rbp), %eax	# r, r.120
	movzbl	%al, %eax	# r.120, D.12231
	orb	$-128, %al	#, D.12231
	movw	%ax, -28(%rbp)	# D.12232, yy
	.loc 1 3502 0
	andw	$32640, -58(%rbp)	#, r
	.loc 1 3504 0
	cmpw	$32640, -58(%rbp)	#, r
	jne	.L407	#,
	.loc 1 3517 0
	movq	-72(%rbp), %rax	# pe, tmp85
	addq	$2, %rax	#, D.12233
	movzwl	(%rax), %eax	# *_13, D.12232
	movzwl	%ax, %eax	# D.12232, D.12234
	andl	$127, %eax	#, D.12234
	testl	%eax, %eax	# D.12234
	jne	.L408	#,
	.loc 1 3517 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pe, tmp86
	movzwl	(%rax), %eax	# *pe_2(D), D.12232
	testw	%ax, %ax	# D.12232
	je	.L409	#,
.L408:
	.loc 1 3519 0 is_stmt 1
	movzwl	-32(%rbp), %eax	# yy, D.12232
	testw	%ax, %ax	# D.12232
	setne	%al	#, D.12235
	movzbl	%al, %edx	# D.12235, D.12234
	movq	-80(%rbp), %rax	# y, tmp87
	movl	%edx, %esi	# D.12234,
	movq	%rax, %rdi	# tmp87,
	call	enan	#
	.loc 1 3520 0
	jmp	.L405	#
.L409:
	.loc 1 3524 0
	movq	-80(%rbp), %rax	# y, tmp88
	movq	%rax, %rdi	# tmp88,
	call	eclear	#
	.loc 1 3525 0
	movq	-80(%rbp), %rax	# y, tmp89
	movq	%rax, %rdi	# tmp89,
	call	einfin	#
	.loc 1 3526 0
	movzwl	-32(%rbp), %eax	# yy, D.12232
	testw	%ax, %ax	# D.12232
	je	.L411	#,
	.loc 1 3527 0
	movq	-80(%rbp), %rax	# y, tmp90
	movq	%rax, %rdi	# tmp90,
	call	eneg	#
	.loc 1 3528 0
	jmp	.L405	#
.L411:
	jmp	.L405	#
.L407:
	.loc 1 3531 0
	shrw	$7, -58(%rbp)	#, r
	.loc 1 3534 0
	cmpw	$0, -58(%rbp)	#, r
	jne	.L412	#,
	.loc 1 3536 0
	movl	$1, -56(%rbp)	#, denorm
	.loc 1 3537 0
	movzwl	-28(%rbp), %eax	# yy, D.12232
	andb	$127, %al	#, D.12232
	movw	%ax, -28(%rbp)	# D.12232, yy
.L412:
	.loc 1 3539 0
	addw	$16256, -58(%rbp)	#, r
	.loc 1 3540 0
	movzwl	-58(%rbp), %eax	# r, tmp91
	movw	%ax, -30(%rbp)	# tmp91, yy
	.loc 1 3541 0
	leaq	-32(%rbp), %rax	#, tmp92
	addq	$6, %rax	#, tmp93
	movq	%rax, -40(%rbp)	# tmp93, p
	.loc 1 3547 0
	movq	-40(%rbp), %rax	# p, p.121
	leaq	2(%rax), %rdx	#, tmp94
	movq	%rdx, -40(%rbp)	# tmp94, p
	subq	$2, -48(%rbp)	#, e
	movq	-48(%rbp), %rdx	# e, tmp95
	movzwl	(%rdx), %edx	# *e_31, D.12232
	movw	%dx, (%rax)	# D.12232, *p.121_29
	.loc 1 3554 0
	leaq	-32(%rbp), %rax	#, tmp96
	movl	$-8, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	eshift	#
	.loc 1 3555 0
	cmpl	$0, -56(%rbp)	#, denorm
	je	.L413	#,
	.loc 1 3557 0
	leaq	-32(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	enormlz	#
	movl	%eax, -52(%rbp)	# tmp98, k
	cmpl	$80, -52(%rbp)	#, k
	jle	.L414	#,
	.loc 1 3558 0
	leaq	-32(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	ecleazs	#
	jmp	.L413	#
.L414:
	.loc 1 3560 0
	movzwl	-30(%rbp), %edx	# yy, D.12232
	movl	-52(%rbp), %eax	# k, tmp100
	subl	%eax, %edx	# D.12232, D.12232
	movl	%edx, %eax	# D.12232, D.12232
	addl	$1, %eax	#, D.12232
	movw	%ax, -30(%rbp)	# D.12232, yy
.L413:
	.loc 1 3562 0 discriminator 1
	movq	-80(%rbp), %rdx	# y, tmp101
	leaq	-32(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	emovo	#
.L405:
	.loc 1 3565 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	e24toe, .-e24toe
	.type	etoe64, @function
etoe64:
.LFB65:
	.loc 1 3669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# e, e
	.loc 1 3675 0
	movq	-56(%rbp), %rax	# x, tmp63
	movq	%rax, %rdi	# tmp63,
	call	eisnan	#
	testl	%eax, %eax	# D.12236
	je	.L417	#,
	.loc 1 3677 0
	movq	-56(%rbp), %rax	# x, tmp64
	movq	%rax, %rdi	# tmp64,
	call	eisneg	#
	movl	%eax, %ecx	#, D.12236
	movq	-64(%rbp), %rax	# e, tmp65
	movl	$17, %edx	#,
	movl	%ecx, %esi	# D.12236,
	movq	%rax, %rdi	# tmp65,
	call	make_nan	#
	jmp	.L416	#
.L417:
	.loc 1 3681 0
	leaq	-32(%rbp), %rdx	#, tmp66
	movq	-56(%rbp), %rax	# x, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	emovi	#
	.loc 1 3683 0
	movzwl	-30(%rbp), %eax	# xi, D.12237
	movzwl	%ax, %eax	# D.12237, tmp68
	movl	%eax, -40(%rbp)	# tmp68, exp
	.loc 1 3685 0
	movq	-56(%rbp), %rax	# x, tmp69
	movq	%rax, %rdi	# tmp69,
	call	eisinf	#
	testl	%eax, %eax	# D.12236
	je	.L419	#,
	.loc 1 3686 0
	jmp	.L420	#
.L419:
	.loc 1 3689 0
	movl	rndprc(%rip), %eax	# rndprc, tmp70
	movl	%eax, -36(%rbp)	# tmp70, rndsav
	.loc 1 3690 0
	movl	$64, rndprc(%rip)	#, rndprc
	.loc 1 3691 0
	movl	-40(%rbp), %edx	# exp, tmp71
	leaq	-32(%rbp), %rax	#, tmp72
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp71,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	emdnorm	#
	.loc 1 3692 0
	movl	-36(%rbp), %eax	# rndsav, tmp73
	movl	%eax, rndprc(%rip)	# tmp73, rndprc
.L420:
	.loc 1 3696 0
	movq	-64(%rbp), %rdx	# e, tmp74
	leaq	-32(%rbp), %rax	#, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	toe64	#
.L416:
	.loc 1 3697 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	etoe64, .-etoe64
	.type	toe64, @function
toe64:
.LFB66:
	.loc 1 3705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 3710 0
	movq	-40(%rbp), %rax	# a, tmp80
	movq	%rax, %rdi	# tmp80,
	call	eiisnan	#
	testl	%eax, %eax	# D.12238
	je	.L422	#,
	.loc 1 3712 0
	movq	-40(%rbp), %rax	# a, tmp81
	movq	%rax, %rdi	# tmp81,
	call	eiisneg	#
	movl	%eax, %ecx	#, D.12238
	movq	-48(%rbp), %rax	# b, tmp82
	movl	$17, %edx	#,
	movl	%ecx, %esi	# D.12238,
	movq	%rax, %rdi	# tmp82,
	call	make_nan	#
	.loc 1 3713 0
	jmp	.L421	#
.L422:
	.loc 1 3717 0
	movq	-40(%rbp), %rax	# a, tmp83
	addq	$2, %rax	#, D.12239
	movzwl	(%rax), %eax	# *_10, D.12240
	testw	%ax, %ax	# D.12240
	jne	.L424	#,
	.loc 1 3718 0
	movq	-40(%rbp), %rax	# a, tmp84
	movq	%rax, %rdi	# tmp84,
	call	eshdn1	#
.L424:
	.loc 1 3719 0
	movq	-40(%rbp), %rax	# a, tmp85
	movq	%rax, -16(%rbp)	# tmp85, p
	.loc 1 3731 0
	movq	-48(%rbp), %rax	# b, tmp89
	addq	$8, %rax	#, tmp88
	movq	%rax, -8(%rbp)	# tmp88, q
	.loc 1 3736 0
	movq	-8(%rbp), %rax	# q, tmp90
	addq	$2, %rax	#, D.12239
	movw	$0, (%rax)	#, *_14
	.loc 1 3741 0
	movq	-16(%rbp), %rax	# p, p.124
	leaq	2(%rax), %rdx	#, tmp91
	movq	%rdx, -16(%rbp)	# tmp91, p
	movzwl	(%rax), %eax	# *p.124_15, tmp92
	movw	%ax, -18(%rbp)	# tmp92, i
	.loc 1 3772 0
	cmpw	$0, -18(%rbp)	#, i
	je	.L425	#,
	.loc 1 3773 0
	movq	-8(%rbp), %rax	# q, q.130
	leaq	-2(%rax), %rdx	#, tmp93
	movq	%rdx, -8(%rbp)	# tmp93, q
	movq	-16(%rbp), %rdx	# p, p.131
	leaq	2(%rdx), %rcx	#, tmp94
	movq	%rcx, -16(%rbp)	# tmp94, p
	movzwl	(%rdx), %edx	# *p.131_20, D.12240
	orw	$-32768, %dx	#, D.12240
	movw	%dx, (%rax)	# D.12240, *q.130_18
	jmp	.L426	#
.L425:
	.loc 1 3775 0
	movq	-8(%rbp), %rax	# q, q.132
	leaq	-2(%rax), %rdx	#, tmp95
	movq	%rdx, -8(%rbp)	# tmp95, q
	movq	-16(%rbp), %rdx	# p, p.133
	leaq	2(%rdx), %rcx	#, tmp96
	movq	%rcx, -16(%rbp)	# tmp96, p
	movzwl	(%rdx), %edx	# *p.133_26, D.12240
	movw	%dx, (%rax)	# D.12240, *q.132_24
.L426:
	.loc 1 3779 0
	addq	$2, -16(%rbp)	#, p
	.loc 1 3798 0
	movq	-40(%rbp), %rax	# a, tmp97
	movq	%rax, %rdi	# tmp97,
	call	eiisinf	#
	testl	%eax, %eax	# D.12238
	je	.L427	#,
	.loc 1 3801 0
	movq	-8(%rbp), %rax	# q, q.137
	leaq	-2(%rax), %rdx	#, tmp98
	movq	%rdx, -8(%rbp)	# tmp98, q
	movw	$-32768, (%rax)	#, *q.137_31
	.loc 1 3802 0
	movq	-8(%rbp), %rax	# q, q.138
	leaq	-2(%rax), %rdx	#, tmp99
	movq	%rdx, -8(%rbp)	# tmp99, q
	movw	$0, (%rax)	#, *q.138_33
	.loc 1 3803 0
	movq	-8(%rbp), %rax	# q, q.139
	leaq	-2(%rax), %rdx	#, tmp100
	movq	%rdx, -8(%rbp)	# tmp100, q
	movw	$0, (%rax)	#, *q.139_35
	.loc 1 3804 0
	movq	-8(%rbp), %rax	# q, tmp101
	movw	$0, (%rax)	#, *q_36
	.loc 1 3805 0
	jmp	.L421	#
.L427:
	.loc 1 3808 0
	movw	$0, -18(%rbp)	#, i
	jmp	.L428	#
.L429:
	.loc 1 3809 0 discriminator 2
	movq	-8(%rbp), %rax	# q, q.140
	leaq	-2(%rax), %rdx	#, tmp102
	movq	%rdx, -8(%rbp)	# tmp102, q
	movq	-16(%rbp), %rdx	# p, p.141
	leaq	2(%rdx), %rcx	#, tmp103
	movq	%rcx, -16(%rbp)	# tmp103, p
	movzwl	(%rdx), %edx	# *p.141_40, D.12240
	movw	%dx, (%rax)	# D.12240, *q.140_38
	.loc 1 3808 0 discriminator 2
	movzwl	-18(%rbp), %eax	# i, i.142
	addl	$1, %eax	#, tmp104
	movw	%ax, -18(%rbp)	# tmp104, i
.L428:
	.loc 1 3808 0 is_stmt 0 discriminator 1
	cmpw	$3, -18(%rbp)	#, i
	jbe	.L429	#,
.L421:
	.loc 1 3812 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	toe64, .-toe64
	.type	etoe53, @function
etoe53:
.LFB67:
	.loc 1 3889 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# e, e
	.loc 1 3895 0
	movq	-56(%rbp), %rax	# x, tmp64
	movq	%rax, %rdi	# tmp64,
	call	eisnan	#
	testl	%eax, %eax	# D.12241
	je	.L431	#,
	.loc 1 3897 0
	movq	-56(%rbp), %rax	# x, tmp65
	movq	%rax, %rdi	# tmp65,
	call	eisneg	#
	movl	%eax, %ecx	#, D.12241
	movq	-64(%rbp), %rax	# e, tmp66
	movl	$16, %edx	#,
	movl	%ecx, %esi	# D.12241,
	movq	%rax, %rdi	# tmp66,
	call	make_nan	#
	jmp	.L430	#
.L431:
	.loc 1 3901 0
	leaq	-32(%rbp), %rdx	#, tmp67
	movq	-56(%rbp), %rax	# x, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	emovi	#
	.loc 1 3903 0
	movzwl	-30(%rbp), %eax	# xi, D.12242
	movzwl	%ax, %eax	# D.12242, D.12241
	subl	$15360, %eax	#, tmp69
	movl	%eax, -40(%rbp)	# tmp69, exp
	.loc 1 3905 0
	movq	-56(%rbp), %rax	# x, tmp70
	movq	%rax, %rdi	# tmp70,
	call	eisinf	#
	testl	%eax, %eax	# D.12241
	je	.L433	#,
	.loc 1 3906 0
	jmp	.L434	#
.L433:
	.loc 1 3909 0
	movl	rndprc(%rip), %eax	# rndprc, tmp71
	movl	%eax, -36(%rbp)	# tmp71, rndsav
	.loc 1 3910 0
	movl	$53, rndprc(%rip)	#, rndprc
	.loc 1 3911 0
	movl	-40(%rbp), %edx	# exp, tmp72
	leaq	-32(%rbp), %rax	#, tmp73
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp72,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	emdnorm	#
	.loc 1 3912 0
	movl	-36(%rbp), %eax	# rndsav, tmp74
	movl	%eax, rndprc(%rip)	# tmp74, rndprc
.L434:
	.loc 1 3916 0
	movq	-64(%rbp), %rdx	# e, tmp75
	leaq	-32(%rbp), %rax	#, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	toe53	#
.L430:
	.loc 1 3917 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	etoe53, .-etoe53
	.type	toe53, @function
toe53:
.LFB68:
	.loc 1 3925 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 3930 0
	movq	-24(%rbp), %rax	# x, tmp79
	movq	%rax, %rdi	# tmp79,
	call	eiisnan	#
	testl	%eax, %eax	# D.12243
	je	.L436	#,
	.loc 1 3932 0
	movq	-24(%rbp), %rax	# x, tmp80
	movq	%rax, %rdi	# tmp80,
	call	eiisneg	#
	movl	%eax, %ecx	#, D.12243
	movq	-32(%rbp), %rax	# y, tmp81
	movl	$16, %edx	#,
	movl	%ecx, %esi	# D.12243,
	movq	%rax, %rdi	# tmp81,
	call	make_nan	#
	.loc 1 3933 0
	jmp	.L435	#
.L436:
	.loc 1 3936 0
	movq	-24(%rbp), %rax	# x, tmp82
	movq	%rax, -8(%rbp)	# tmp82, p
	.loc 1 3939 0
	addq	$6, -32(%rbp)	#, y
	.loc 1 3941 0
	movq	-32(%rbp), %rax	# y, tmp83
	movw	$0, (%rax)	#, *y_7
	.loc 1 3942 0
	movq	-8(%rbp), %rax	# p, p.143
	leaq	2(%rax), %rdx	#, tmp84
	movq	%rdx, -8(%rbp)	# tmp84, p
	movzwl	(%rax), %eax	# *p.143_8, D.12244
	testw	%ax, %ax	# D.12244
	je	.L438	#,
	.loc 1 3943 0
	movq	-32(%rbp), %rax	# y, tmp85
	movw	$-32768, (%rax)	#, *y_7
.L438:
	.loc 1 3945 0
	movq	-8(%rbp), %rax	# p, p.144
	leaq	2(%rax), %rdx	#, tmp86
	movq	%rdx, -8(%rbp)	# tmp86, p
	movzwl	(%rax), %eax	# *p.144_11, tmp87
	movw	%ax, -10(%rbp)	# tmp87, i
	.loc 1 3946 0
	cmpw	$2046, -10(%rbp)	#, i
	jbe	.L439	#,
	.loc 1 3950 0
	movq	-32(%rbp), %rax	# y, tmp88
	movzwl	(%rax), %eax	# *y_7, D.12244
	orw	$32752, %ax	#, D.12244
	movl	%eax, %edx	# D.12244, D.12244
	movq	-32(%rbp), %rax	# y, tmp89
	movw	%dx, (%rax)	# D.12244, *y_7
	.loc 1 3953 0
	subq	$2, -32(%rbp)	#, y
	movq	-32(%rbp), %rax	# y, tmp90
	movw	$0, (%rax)	#, *y_16
	.loc 1 3954 0
	subq	$2, -32(%rbp)	#, y
	movq	-32(%rbp), %rax	# y, tmp91
	movw	$0, (%rax)	#, *y_17
	.loc 1 3955 0
	subq	$2, -32(%rbp)	#, y
	movq	-32(%rbp), %rax	# y, tmp92
	movw	$0, (%rax)	#, *y_18
	.loc 1 3980 0
	jmp	.L435	#
.L439:
	.loc 1 3982 0
	cmpw	$0, -10(%rbp)	#, i
	jne	.L440	#,
	.loc 1 3984 0
	movq	-24(%rbp), %rax	# x, tmp93
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	eshift	#
	jmp	.L441	#
.L440:
	.loc 1 3988 0
	salw	$4, -10(%rbp)	#, i
	.loc 1 3989 0
	movq	-24(%rbp), %rax	# x, tmp94
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	eshift	#
.L441:
	.loc 1 3991 0
	movq	-8(%rbp), %rax	# p, p.148
	leaq	2(%rax), %rdx	#, tmp95
	movq	%rdx, -8(%rbp)	# tmp95, p
	movzwl	(%rax), %eax	# *p.148_20, D.12244
	andl	$15, %eax	#, D.12245
	movl	%eax, %edx	# D.12245, D.12245
	movzwl	-10(%rbp), %eax	# i, i.149
	orl	%edx, %eax	# D.12245, D.12245
	movw	%ax, -10(%rbp)	# D.12245, i
	.loc 1 3992 0
	movq	-32(%rbp), %rax	# y, tmp96
	movzwl	(%rax), %eax	# *y_7, D.12244
	orw	-10(%rbp), %ax	# i, D.12244
	movl	%eax, %edx	# D.12244, D.12244
	movq	-32(%rbp), %rax	# y, tmp97
	movw	%dx, (%rax)	# D.12244, *y_7
	.loc 1 3995 0
	subq	$2, -32(%rbp)	#, y
	movq	-8(%rbp), %rax	# p, p.150
	leaq	2(%rax), %rdx	#, tmp98
	movq	%rdx, -8(%rbp)	# tmp98, p
	movzwl	(%rax), %edx	# *p.150_31, D.12244
	movq	-32(%rbp), %rax	# y, tmp99
	movw	%dx, (%rax)	# D.12244, *y_30
	.loc 1 3996 0
	subq	$2, -32(%rbp)	#, y
	movq	-8(%rbp), %rax	# p, p.151
	leaq	2(%rax), %rdx	#, tmp100
	movq	%rdx, -8(%rbp)	# tmp100, p
	movzwl	(%rax), %edx	# *p.151_35, D.12244
	movq	-32(%rbp), %rax	# y, tmp101
	movw	%dx, (%rax)	# D.12244, *y_34
	.loc 1 3997 0
	subq	$2, -32(%rbp)	#, y
	movq	-8(%rbp), %rax	# p, tmp102
	movzwl	(%rax), %edx	# *p_36, D.12244
	movq	-32(%rbp), %rax	# y, tmp103
	movw	%dx, (%rax)	# D.12244, *y_38
.L435:
	.loc 1 4006 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	toe53, .-toe53
	.type	etoe24, @function
etoe24:
.LFB69:
	.loc 1 4068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# e, e
	.loc 1 4074 0
	movq	-56(%rbp), %rax	# x, tmp64
	movq	%rax, %rdi	# tmp64,
	call	eisnan	#
	testl	%eax, %eax	# D.12246
	je	.L443	#,
	.loc 1 4076 0
	movq	-56(%rbp), %rax	# x, tmp65
	movq	%rax, %rdi	# tmp65,
	call	eisneg	#
	movl	%eax, %ecx	#, D.12246
	movq	-64(%rbp), %rax	# e, tmp66
	movl	$15, %edx	#,
	movl	%ecx, %esi	# D.12246,
	movq	%rax, %rdi	# tmp66,
	call	make_nan	#
	jmp	.L442	#
.L443:
	.loc 1 4080 0
	leaq	-32(%rbp), %rdx	#, tmp67
	movq	-56(%rbp), %rax	# x, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	emovi	#
	.loc 1 4082 0
	movzwl	-30(%rbp), %eax	# xi, D.12247
	movzwl	%ax, %eax	# D.12247, D.12246
	subl	$16256, %eax	#, tmp69
	movl	%eax, -40(%rbp)	# tmp69, exp
	.loc 1 4084 0
	movq	-56(%rbp), %rax	# x, tmp70
	movq	%rax, %rdi	# tmp70,
	call	eisinf	#
	testl	%eax, %eax	# D.12246
	je	.L445	#,
	.loc 1 4085 0
	jmp	.L446	#
.L445:
	.loc 1 4088 0
	movl	rndprc(%rip), %eax	# rndprc, tmp71
	movl	%eax, -36(%rbp)	# tmp71, rndsav
	.loc 1 4089 0
	movl	$24, rndprc(%rip)	#, rndprc
	.loc 1 4090 0
	movl	-40(%rbp), %edx	# exp, tmp72
	leaq	-32(%rbp), %rax	#, tmp73
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp72,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	emdnorm	#
	.loc 1 4091 0
	movl	-36(%rbp), %eax	# rndsav, tmp74
	movl	%eax, rndprc(%rip)	# tmp74, rndprc
.L446:
	.loc 1 4095 0
	movq	-64(%rbp), %rdx	# e, tmp75
	leaq	-32(%rbp), %rax	#, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	toe24	#
.L442:
	.loc 1 4096 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	etoe24, .-etoe24
	.type	toe24, @function
toe24:
.LFB70:
	.loc 1 4104 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 4109 0
	movq	-24(%rbp), %rax	# x, tmp75
	movq	%rax, %rdi	# tmp75,
	call	eiisnan	#
	testl	%eax, %eax	# D.12248
	je	.L448	#,
	.loc 1 4111 0
	movq	-24(%rbp), %rax	# x, tmp76
	movq	%rax, %rdi	# tmp76,
	call	eiisneg	#
	movl	%eax, %ecx	#, D.12248
	movq	-32(%rbp), %rax	# y, tmp77
	movl	$15, %edx	#,
	movl	%ecx, %esi	# D.12248,
	movq	%rax, %rdi	# tmp77,
	call	make_nan	#
	.loc 1 4112 0
	jmp	.L447	#
.L448:
	.loc 1 4115 0
	movq	-24(%rbp), %rax	# x, tmp78
	movq	%rax, -8(%rbp)	# tmp78, p
	.loc 1 4118 0
	addq	$2, -32(%rbp)	#, y
	.loc 1 4123 0
	movq	-32(%rbp), %rax	# y, tmp79
	movw	$0, (%rax)	#, *y_7
	.loc 1 4124 0
	movq	-8(%rbp), %rax	# p, p.158
	leaq	2(%rax), %rdx	#, tmp80
	movq	%rdx, -8(%rbp)	# tmp80, p
	movzwl	(%rax), %eax	# *p.158_8, D.12249
	testw	%ax, %ax	# D.12249
	je	.L450	#,
	.loc 1 4125 0
	movq	-32(%rbp), %rax	# y, tmp81
	movw	$-32768, (%rax)	#, *y_7
.L450:
	.loc 1 4127 0
	movq	-8(%rbp), %rax	# p, p.159
	leaq	2(%rax), %rdx	#, tmp82
	movq	%rdx, -8(%rbp)	# tmp82, p
	movzwl	(%rax), %eax	# *p.159_11, tmp83
	movw	%ax, -10(%rbp)	# tmp83, i
	.loc 1 4129 0
	cmpw	$254, -10(%rbp)	#, i
	jbe	.L451	#,
	.loc 1 4132 0
	movq	-32(%rbp), %rax	# y, tmp84
	movzwl	(%rax), %eax	# *y_7, D.12249
	orw	$32640, %ax	#, D.12249
	movl	%eax, %edx	# D.12249, D.12249
	movq	-32(%rbp), %rax	# y, tmp85
	movw	%dx, (%rax)	# D.12249, *y_7
	.loc 1 4138 0
	subq	$2, -32(%rbp)	#, y
	movq	-32(%rbp), %rax	# y, tmp86
	movw	$0, (%rax)	#, *y_16
	.loc 1 4163 0
	jmp	.L447	#
.L451:
	.loc 1 4165 0
	cmpw	$0, -10(%rbp)	#, i
	jne	.L452	#,
	.loc 1 4167 0
	movq	-24(%rbp), %rax	# x, tmp87
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	eshift	#
	jmp	.L453	#
.L452:
	.loc 1 4171 0
	salw	$7, -10(%rbp)	#, i
	.loc 1 4172 0
	movq	-24(%rbp), %rax	# x, tmp88
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	eshift	#
.L453:
	.loc 1 4174 0
	movq	-8(%rbp), %rax	# p, p.160
	leaq	2(%rax), %rdx	#, tmp89
	movq	%rdx, -8(%rbp)	# tmp89, p
	movzwl	(%rax), %eax	# *p.160_18, D.12249
	andl	$127, %eax	#, D.12250
	movl	%eax, %edx	# D.12250, D.12250
	movzwl	-10(%rbp), %eax	# i, i.161
	orl	%edx, %eax	# D.12250, D.12250
	movw	%ax, -10(%rbp)	# D.12250, i
	.loc 1 4176 0
	movq	-32(%rbp), %rax	# y, tmp90
	movzwl	(%rax), %eax	# *y_7, D.12249
	orw	-10(%rbp), %ax	# i, D.12249
	movl	%eax, %edx	# D.12249, D.12249
	movq	-32(%rbp), %rax	# y, tmp91
	movw	%dx, (%rax)	# D.12249, *y_7
	.loc 1 4182 0
	subq	$2, -32(%rbp)	#, y
	movq	-8(%rbp), %rax	# p, tmp92
	movzwl	(%rax), %edx	# *p_19, D.12249
	movq	-32(%rbp), %rax	# y, tmp93
	movw	%dx, (%rax)	# D.12249, *y_28
.L447:
	.loc 1 4189 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	toe24, .-toe24
	.type	ecmp, @function
ecmp:
.LFB71:
	.loc 1 4202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# a, a
	movq	%rsi, -112(%rbp)	# b, b
	.loc 1 4209 0
	movq	-104(%rbp), %rax	# a, tmp75
	movq	%rax, %rdi	# tmp75,
	call	eisnan	#
	testl	%eax, %eax	# D.12251
	jne	.L455	#,
	.loc 1 4209 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# b, tmp76
	movq	%rax, %rdi	# tmp76,
	call	eisnan	#
	testl	%eax, %eax	# D.12251
	je	.L456	#,
.L455:
	.loc 1 4210 0 is_stmt 1
	movl	$-2, %eax	#, D.12251
	jmp	.L471	#
.L456:
	.loc 1 4212 0
	leaq	-64(%rbp), %rdx	#, tmp77
	movq	-104(%rbp), %rax	# a, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	emovi	#
	.loc 1 4213 0
	leaq	-64(%rbp), %rax	#, tmp79
	movq	%rax, -80(%rbp)	# tmp79, p
	.loc 1 4214 0
	leaq	-32(%rbp), %rdx	#, tmp80
	movq	-112(%rbp), %rax	# b, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	emovi	#
	.loc 1 4215 0
	leaq	-32(%rbp), %rax	#, tmp82
	movq	%rax, -72(%rbp)	# tmp82, q
	.loc 1 4217 0
	movq	-80(%rbp), %rax	# p, tmp83
	movzwl	(%rax), %edx	# *p_11, D.12252
	movq	-72(%rbp), %rax	# q, tmp84
	movzwl	(%rax), %eax	# *q_12, D.12252
	cmpw	%ax, %dx	# D.12252, D.12252
	je	.L458	#,
	.loc 1 4220 0
	movl	$1, -88(%rbp)	#, i
	jmp	.L459	#
.L463:
	.loc 1 4222 0
	movl	-88(%rbp), %eax	# i, tmp86
	cltq
	movzwl	-64(%rbp,%rax,2), %eax	# ai, D.12252
	testw	%ax, %ax	# D.12252
	je	.L460	#,
	.loc 1 4223 0
	jmp	.L461	#
.L460:
	.loc 1 4224 0
	movl	-88(%rbp), %eax	# i, tmp88
	cltq
	movzwl	-32(%rbp,%rax,2), %eax	# bi, D.12252
	testw	%ax, %ax	# D.12252
	je	.L462	#,
	.loc 1 4225 0
	jmp	.L461	#
.L462:
	.loc 1 4220 0
	addl	$1, -88(%rbp)	#, i
.L459:
	.loc 1 4220 0 is_stmt 0 discriminator 1
	cmpl	$7, -88(%rbp)	#, i
	jle	.L463	#,
	.loc 1 4227 0 is_stmt 1
	movl	$0, %eax	#, D.12251
	jmp	.L471	#
.L461:
	.loc 1 4229 0
	movq	-80(%rbp), %rax	# p, tmp89
	movzwl	(%rax), %eax	# *p_11, D.12252
	testw	%ax, %ax	# D.12252
	jne	.L464	#,
	.loc 1 4230 0
	movl	$1, %eax	#, D.12251
	jmp	.L471	#
.L464:
	.loc 1 4232 0
	movl	$-1, %eax	#, D.12251
	jmp	.L471	#
.L458:
	.loc 1 4235 0
	movq	-80(%rbp), %rax	# p, tmp90
	movzwl	(%rax), %eax	# *p_11, D.12252
	testw	%ax, %ax	# D.12252
	jne	.L465	#,
	.loc 1 4236 0
	movl	$1, -84(%rbp)	#, msign
	jmp	.L466	#
.L465:
	.loc 1 4238 0
	movl	$-1, -84(%rbp)	#, msign
.L466:
	.loc 1 4239 0
	movl	$8, -88(%rbp)	#, i
.L469:
	.loc 1 4242 0
	movq	-80(%rbp), %rax	# p, p.162
	leaq	2(%rax), %rdx	#, tmp91
	movq	%rdx, -80(%rbp)	# tmp91, p
	movzwl	(%rax), %ecx	# *p.162_27, D.12252
	movq	-72(%rbp), %rax	# q, q.163
	leaq	2(%rax), %rdx	#, tmp92
	movq	%rdx, -72(%rbp)	# tmp92, q
	movzwl	(%rax), %eax	# *q.163_30, D.12252
	cmpw	%ax, %cx	# D.12252, D.12252
	je	.L467	#,
	.loc 1 4244 0
	nop
.L468:
	.loc 1 4253 0
	subq	$2, -80(%rbp)	#, p
	movq	-80(%rbp), %rax	# p, tmp93
	movzwl	(%rax), %edx	# *p_33, D.12252
	subq	$2, -72(%rbp)	#, q
	movq	-72(%rbp), %rax	# q, tmp94
	movzwl	(%rax), %eax	# *q_35, D.12252
	cmpw	%ax, %dx	# D.12252, D.12252
	jbe	.L470	#,
	jmp	.L472	#
.L467:
	.loc 1 4247 0
	subl	$1, -88(%rbp)	#, i
	cmpl	$0, -88(%rbp)	#, i
	jg	.L469	#,
	.loc 1 4249 0
	movl	$0, %eax	#, D.12251
	jmp	.L471	#
.L472:
	.loc 1 4254 0
	movl	-84(%rbp), %eax	# msign, D.12251
	jmp	.L471	#
.L470:
	.loc 1 4256 0
	movl	-84(%rbp), %eax	# msign, tmp95
	negl	%eax	# D.12251
.L471:
	.loc 1 4257 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	ecmp, .-ecmp
	.type	ltoe, @function
ltoe:
.LFB72:
	.loc 1 4278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# lp, lp
	movq	%rsi, -64(%rbp)	# y, y
	.loc 1 4283 0
	leaq	-32(%rbp), %rax	#, tmp73
	movq	%rax, %rdi	# tmp73,
	call	ecleaz	#
	.loc 1 4284 0
	movq	-56(%rbp), %rax	# lp, tmp74
	movq	(%rax), %rax	# *lp_2(D), D.12253
	testq	%rax, %rax	# D.12253
	jns	.L474	#,
	.loc 1 4287 0
	movq	-56(%rbp), %rax	# lp, tmp75
	movq	(%rax), %rax	# *lp_2(D), D.12253
	negq	%rax	# D.12253
	movq	%rax, -40(%rbp)	# D.12253, ll
	.loc 1 4288 0
	movw	$-1, -32(%rbp)	#, yi
	jmp	.L475	#
.L474:
	.loc 1 4292 0
	movq	-56(%rbp), %rax	# lp, tmp76
	movq	(%rax), %rax	# *lp_2(D), D.12253
	movq	%rax, -40(%rbp)	# D.12253, ll
.L475:
	.loc 1 4296 0
	movq	-40(%rbp), %rax	# ll, tmp77
	shrq	$48, %rax	#, D.12254
	movw	%ax, -28(%rbp)	# D.12255, yi
	.loc 1 4297 0
	movq	-40(%rbp), %rax	# ll, tmp78
	shrq	$32, %rax	#, D.12254
	movw	%ax, -26(%rbp)	# D.12255, yi
	.loc 1 4298 0
	movq	-40(%rbp), %rax	# ll, tmp79
	shrq	$16, %rax	#, D.12254
	movw	%ax, -24(%rbp)	# D.12255, yi
	.loc 1 4299 0
	movq	-40(%rbp), %rax	# ll, tmp80
	movw	%ax, -22(%rbp)	# D.12255, yi
	.loc 1 4300 0
	movw	$16430, -30(%rbp)	#, yi
	.loc 1 4307 0
	leaq	-32(%rbp), %rax	#, tmp81
	movq	%rax, %rdi	# tmp81,
	call	enormlz	#
	movl	%eax, -44(%rbp)	# tmp82, k
	cmpl	$80, -44(%rbp)	#, k
	jle	.L476	#,
	.loc 1 4308 0
	leaq	-32(%rbp), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	ecleaz	#
	jmp	.L477	#
.L476:
	.loc 1 4310 0
	movzwl	-30(%rbp), %edx	# yi, D.12255
	movl	-44(%rbp), %eax	# k, tmp84
	subl	%eax, %edx	# D.12255, D.12255
	movl	%edx, %eax	# D.12255, D.12255
	movw	%ax, -30(%rbp)	# D.12255, yi
.L477:
	.loc 1 4311 0
	movq	-64(%rbp), %rdx	# y, tmp85
	leaq	-32(%rbp), %rax	#, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	emovo	#
	.loc 1 4312 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	ltoe, .-ltoe
	.type	ultoe, @function
ultoe:
.LFB73:
	.loc 1 4320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# lp, lp
	movq	%rsi, -64(%rbp)	# y, y
	.loc 1 4325 0
	leaq	-32(%rbp), %rax	#, tmp69
	movq	%rax, %rdi	# tmp69,
	call	ecleaz	#
	.loc 1 4326 0
	movq	-56(%rbp), %rax	# lp, tmp70
	movq	(%rax), %rax	# *lp_1(D), tmp71
	movq	%rax, -40(%rbp)	# tmp71, ll
	.loc 1 4330 0
	movq	-40(%rbp), %rax	# ll, tmp72
	shrq	$48, %rax	#, D.12256
	movw	%ax, -28(%rbp)	# D.12257, yi
	.loc 1 4331 0
	movq	-40(%rbp), %rax	# ll, tmp73
	shrq	$32, %rax	#, D.12256
	movw	%ax, -26(%rbp)	# D.12257, yi
	.loc 1 4332 0
	movq	-40(%rbp), %rax	# ll, tmp74
	shrq	$16, %rax	#, D.12256
	movw	%ax, -24(%rbp)	# D.12257, yi
	.loc 1 4333 0
	movq	-40(%rbp), %rax	# ll, tmp75
	movw	%ax, -22(%rbp)	# D.12257, yi
	.loc 1 4334 0
	movw	$16430, -30(%rbp)	#, yi
	.loc 1 4341 0
	leaq	-32(%rbp), %rax	#, tmp76
	movq	%rax, %rdi	# tmp76,
	call	enormlz	#
	movl	%eax, -44(%rbp)	# tmp77, k
	cmpl	$80, -44(%rbp)	#, k
	jle	.L479	#,
	.loc 1 4342 0
	leaq	-32(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	ecleaz	#
	jmp	.L480	#
.L479:
	.loc 1 4344 0
	movzwl	-30(%rbp), %edx	# yi, D.12257
	movl	-44(%rbp), %eax	# k, tmp79
	subl	%eax, %edx	# D.12257, D.12257
	movl	%edx, %eax	# D.12257, D.12257
	movw	%ax, -30(%rbp)	# D.12257, yi
.L480:
	.loc 1 4345 0
	movq	-64(%rbp), %rdx	# y, tmp80
	leaq	-32(%rbp), %rax	#, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	emovo	#
	.loc 1 4346 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	ultoe, .-ultoe
	.section	.rodata
	.align 8
.LC7:
	.string	"overflow on truncation to integer"
	.text
	.type	eifrac, @function
eifrac:
.LFB74:
	.loc 1 4361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# i, i
	movq	%rdx, -88(%rbp)	# frac, frac
	.loc 1 4366 0
	leaq	-48(%rbp), %rdx	#, tmp79
	movq	-72(%rbp), %rax	# x, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	emovi	#
	.loc 1 4367 0
	movzwl	-46(%rbp), %eax	# xi, D.12258
	movzwl	%ax, %eax	# D.12258, D.12259
	subl	$16382, %eax	#, tmp81
	movl	%eax, -64(%rbp)	# tmp81, k
	.loc 1 4368 0
	cmpl	$0, -64(%rbp)	#, k
	jg	.L482	#,
	.loc 1 4371 0
	movq	-80(%rbp), %rax	# i, tmp82
	movq	$0, (%rax)	#, *i_7(D)
	.loc 1 4372 0
	movq	-88(%rbp), %rdx	# frac, tmp83
	leaq	-48(%rbp), %rax	#, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	emovo	#
	jmp	.L481	#
.L482:
	.loc 1 4375 0
	cmpl	$63, -64(%rbp)	#, k
	jle	.L484	#,
	.loc 1 4379 0
	movzwl	-48(%rbp), %eax	# xi, D.12258
	testw	%ax, %ax	# D.12258
	je	.L485	#,
	.loc 1 4380 0
	movq	-80(%rbp), %rax	# i, tmp85
	movabsq	$-9223372036854775808, %rcx	#, tmp114
	movq	%rcx, (%rax)	# tmp114, *i_7(D)
	jmp	.L486	#
.L485:
	.loc 1 4390 0
	movq	-80(%rbp), %rax	# i, tmp86
	movabsq	$9223372036854775807, %rbx	#, tmp115
	movq	%rbx, (%rax)	# tmp115, *i_7(D)
.L486:
	.loc 1 4393 0
	movl	-64(%rbp), %edx	# k, tmp87
	leaq	-48(%rbp), %rax	#, tmp88
	movl	%edx, %esi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	eshift	#
	.loc 1 4394 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.164
	testl	%eax, %eax	# extra_warnings.164
	je	.L488	#,
	.loc 1 4395 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L488	#
.L484:
	.loc 1 4397 0
	cmpl	$16, -64(%rbp)	#, k
	jle	.L489	#,
	.loc 1 4401 0
	movl	-64(%rbp), %eax	# k, tmp92
	andl	$15, %eax	#, tmp91
	movl	%eax, -60(%rbp)	# tmp91, j
	.loc 1 4402 0
	movl	-60(%rbp), %edx	# j, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movl	%edx, %esi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	eshift	#
	.loc 1 4403 0
	movzwl	-44(%rbp), %eax	# xi, D.12258
	movzwl	%ax, %eax	# D.12258, tmp95
	movq	%rax, -56(%rbp)	# tmp95, ll
	.loc 1 4404 0
	movl	-60(%rbp), %eax	# j, tmp96
	subl	%eax, -64(%rbp)	# tmp96, k
.L490:
	.loc 1 4407 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	eshup6	#
	.loc 1 4408 0 discriminator 1
	movq	-56(%rbp), %rax	# ll, tmp98
	salq	$16, %rax	#, D.12260
	movq	%rax, %rdx	# D.12260, D.12260
	movzwl	-44(%rbp), %eax	# xi, D.12258
	movzwl	%ax, %eax	# D.12258, D.12260
	orq	%rdx, %rax	# D.12260, tmp99
	movq	%rax, -56(%rbp)	# tmp99, ll
	.loc 1 4410 0 discriminator 1
	subl	$16, -64(%rbp)	#, k
	cmpl	$0, -64(%rbp)	#, k
	jg	.L490	#,
	.loc 1 4411 0
	movq	-56(%rbp), %rdx	# ll, ll.165
	movq	-80(%rbp), %rax	# i, tmp100
	movq	%rdx, (%rax)	# ll.165, *i_7(D)
	.loc 1 4412 0
	movzwl	-48(%rbp), %eax	# xi, D.12258
	testw	%ax, %ax	# D.12258
	je	.L488	#,
	.loc 1 4413 0
	movq	-80(%rbp), %rax	# i, tmp101
	movq	(%rax), %rax	# *i_7(D), D.12261
	negq	%rax	# D.12261
	movq	%rax, %rdx	# D.12261, D.12261
	movq	-80(%rbp), %rax	# i, tmp102
	movq	%rdx, (%rax)	# D.12261, *i_7(D)
	jmp	.L488	#
.L489:
	.loc 1 4418 0
	movl	-64(%rbp), %edx	# k, tmp103
	leaq	-48(%rbp), %rax	#, tmp104
	movl	%edx, %esi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	eshift	#
	.loc 1 4419 0
	movzwl	-44(%rbp), %eax	# xi, D.12258
	movzwl	%ax, %edx	# D.12258, D.12261
	movq	-80(%rbp), %rax	# i, tmp105
	movq	%rdx, (%rax)	# D.12261, *i_7(D)
	.loc 1 4420 0
	movzwl	-48(%rbp), %eax	# xi, D.12258
	testw	%ax, %ax	# D.12258
	je	.L488	#,
	.loc 1 4421 0
	movq	-80(%rbp), %rax	# i, tmp106
	movq	(%rax), %rax	# *i_7(D), D.12261
	negq	%rax	# D.12261
	movq	%rax, %rdx	# D.12261, D.12261
	movq	-80(%rbp), %rax	# i, tmp107
	movq	%rdx, (%rax)	# D.12261, *i_7(D)
.L488:
	.loc 1 4423 0
	movw	$0, -48(%rbp)	#, xi
	.loc 1 4424 0
	movw	$16382, -46(%rbp)	#, xi
	.loc 1 4425 0
	movw	$0, -44(%rbp)	#, xi
	.loc 1 4426 0
	leaq	-48(%rbp), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	enormlz	#
	movl	%eax, -64(%rbp)	# tmp109, k
	cmpl	$80, -64(%rbp)	#, k
	jle	.L492	#,
	.loc 1 4427 0
	leaq	-48(%rbp), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	ecleaz	#
	jmp	.L493	#
.L492:
	.loc 1 4429 0
	movzwl	-46(%rbp), %edx	# xi, D.12258
	movl	-64(%rbp), %eax	# k, tmp111
	subl	%eax, %edx	# D.12258, D.12258
	movl	%edx, %eax	# D.12258, D.12258
	movw	%ax, -46(%rbp)	# D.12258, xi
.L493:
	.loc 1 4431 0 discriminator 1
	movq	-88(%rbp), %rdx	# frac, tmp112
	leaq	-48(%rbp), %rax	#, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	emovo	#
.L481:
	.loc 1 4432 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	eifrac, .-eifrac
	.section	.rodata
	.align 8
.LC8:
	.string	"overflow on truncation to unsigned integer"
	.text
	.type	euifrac, @function
euifrac:
.LFB75:
	.loc 1 4444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# i, i
	movq	%rdx, -72(%rbp)	# frac, frac
	.loc 1 4449 0
	leaq	-32(%rbp), %rdx	#, tmp72
	movq	-56(%rbp), %rax	# x, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	emovi	#
	.loc 1 4450 0
	movzwl	-30(%rbp), %eax	# xi, D.12263
	movzwl	%ax, %eax	# D.12263, D.12264
	subl	$16382, %eax	#, tmp74
	movl	%eax, -48(%rbp)	# tmp74, k
	.loc 1 4451 0
	cmpl	$0, -48(%rbp)	#, k
	jg	.L495	#,
	.loc 1 4454 0
	movq	-64(%rbp), %rax	# i, tmp75
	movq	$0, (%rax)	#, *i_7(D)
	.loc 1 4455 0
	movq	-72(%rbp), %rdx	# frac, tmp76
	leaq	-32(%rbp), %rax	#, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	emovo	#
	jmp	.L494	#
.L495:
	.loc 1 4458 0
	cmpl	$64, -48(%rbp)	#, k
	jle	.L497	#,
	.loc 1 4464 0
	movq	-64(%rbp), %rax	# i, tmp78
	movq	$-1, (%rax)	#, *i_7(D)
	.loc 1 4465 0
	movl	-48(%rbp), %edx	# k, tmp79
	leaq	-32(%rbp), %rax	#, tmp80
	movl	%edx, %esi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	eshift	#
	.loc 1 4466 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.166
	testl	%eax, %eax	# extra_warnings.166
	je	.L499	#,
	.loc 1 4467 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L499	#
.L497:
	.loc 1 4469 0
	cmpl	$16, -48(%rbp)	#, k
	jle	.L500	#,
	.loc 1 4473 0
	movl	-48(%rbp), %eax	# k, tmp84
	andl	$15, %eax	#, tmp83
	movl	%eax, -44(%rbp)	# tmp83, j
	.loc 1 4474 0
	movl	-44(%rbp), %edx	# j, tmp85
	leaq	-32(%rbp), %rax	#, tmp86
	movl	%edx, %esi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	eshift	#
	.loc 1 4475 0
	movzwl	-28(%rbp), %eax	# xi, D.12263
	movzwl	%ax, %eax	# D.12263, tmp87
	movq	%rax, -40(%rbp)	# tmp87, ll
	.loc 1 4476 0
	movl	-44(%rbp), %eax	# j, tmp88
	subl	%eax, -48(%rbp)	# tmp88, k
.L501:
	.loc 1 4479 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	eshup6	#
	.loc 1 4480 0 discriminator 1
	movq	-40(%rbp), %rax	# ll, tmp90
	salq	$16, %rax	#, D.12265
	movq	%rax, %rdx	# D.12265, D.12265
	movzwl	-28(%rbp), %eax	# xi, D.12263
	movzwl	%ax, %eax	# D.12263, D.12265
	orq	%rdx, %rax	# D.12265, tmp91
	movq	%rax, -40(%rbp)	# tmp91, ll
	.loc 1 4482 0 discriminator 1
	subl	$16, -48(%rbp)	#, k
	cmpl	$0, -48(%rbp)	#, k
	jg	.L501	#,
	.loc 1 4483 0
	movq	-64(%rbp), %rax	# i, tmp92
	movq	-40(%rbp), %rdx	# ll, tmp93
	movq	%rdx, (%rax)	# tmp93, *i_7(D)
	jmp	.L499	#
.L500:
	.loc 1 4488 0
	movl	-48(%rbp), %edx	# k, tmp94
	leaq	-32(%rbp), %rax	#, tmp95
	movl	%edx, %esi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	eshift	#
	.loc 1 4489 0
	movzwl	-28(%rbp), %eax	# xi, D.12263
	movzwl	%ax, %edx	# D.12263, D.12265
	movq	-64(%rbp), %rax	# i, tmp96
	movq	%rdx, (%rax)	# D.12265, *i_7(D)
.L499:
	.loc 1 4492 0
	movzwl	-32(%rbp), %eax	# xi, D.12263
	testw	%ax, %ax	# D.12263
	je	.L502	#,
	.loc 1 4493 0
	movq	-64(%rbp), %rax	# i, tmp97
	movq	$0, (%rax)	#, *i_7(D)
.L502:
	.loc 1 4495 0
	movw	$0, -32(%rbp)	#, xi
	.loc 1 4496 0
	movw	$16382, -30(%rbp)	#, xi
	.loc 1 4497 0
	movw	$0, -28(%rbp)	#, xi
	.loc 1 4498 0
	leaq	-32(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	enormlz	#
	movl	%eax, -48(%rbp)	# tmp99, k
	cmpl	$80, -48(%rbp)	#, k
	jle	.L503	#,
	.loc 1 4499 0
	leaq	-32(%rbp), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	ecleaz	#
	jmp	.L504	#
.L503:
	.loc 1 4501 0
	movzwl	-30(%rbp), %edx	# xi, D.12263
	movl	-48(%rbp), %eax	# k, tmp101
	subl	%eax, %edx	# D.12263, D.12263
	movl	%edx, %eax	# D.12263, D.12263
	movw	%ax, -30(%rbp)	# D.12263, xi
.L504:
	.loc 1 4503 0 discriminator 1
	movq	-72(%rbp), %rdx	# frac, tmp102
	leaq	-32(%rbp), %rax	#, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	emovo	#
.L494:
	.loc 1 4504 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	euifrac, .-euifrac
	.type	eshift, @function
eshift:
.LFB76:
	.loc 1 4512 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# sc, sc
	.loc 1 4516 0
	cmpl	$0, -28(%rbp)	#, sc
	jne	.L506	#,
	.loc 1 4517 0
	movl	$0, %eax	#, D.12267
	jmp	.L507	#
.L506:
	.loc 1 4519 0
	movw	$0, -10(%rbp)	#, lost
	.loc 1 4520 0
	movq	-24(%rbp), %rax	# x, tmp75
	addq	$16, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, p
	.loc 1 4522 0
	cmpl	$0, -28(%rbp)	#, sc
	jns	.L508	#,
	.loc 1 4524 0
	negl	-28(%rbp)	# sc
	.loc 1 4525 0
	jmp	.L509	#
.L510:
	.loc 1 4527 0
	movq	-8(%rbp), %rax	# p, tmp76
	movzwl	(%rax), %eax	# *p_17, D.12268
	orw	%ax, -10(%rbp)	# D.12268, lost
	.loc 1 4528 0
	movq	-24(%rbp), %rax	# x, tmp77
	movq	%rax, %rdi	# tmp77,
	call	eshdn6	#
	.loc 1 4529 0
	subl	$16, -28(%rbp)	#, sc
.L509:
	.loc 1 4525 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, sc
	jg	.L510	#,
	.loc 1 4532 0
	jmp	.L511	#
.L512:
	.loc 1 4534 0
	movq	-8(%rbp), %rax	# p, tmp78
	movzwl	(%rax), %eax	# *p_17, D.12268
	movzbl	%al, %edx	# D.12269, D.12269
	movzwl	-10(%rbp), %eax	# lost, lost.167
	orl	%edx, %eax	# D.12269, D.12269
	movw	%ax, -10(%rbp)	# D.12269, lost
	.loc 1 4535 0
	movq	-24(%rbp), %rax	# x, tmp79
	movq	%rax, %rdi	# tmp79,
	call	eshdn8	#
	.loc 1 4536 0
	subl	$8, -28(%rbp)	#, sc
.L511:
	.loc 1 4532 0 discriminator 1
	cmpl	$7, -28(%rbp)	#, sc
	jg	.L512	#,
	.loc 1 4539 0
	jmp	.L513	#
.L514:
	.loc 1 4541 0
	movq	-8(%rbp), %rax	# p, tmp80
	movzwl	(%rax), %eax	# *p_17, D.12268
	andl	$1, %eax	#, D.12269
	movl	%eax, %edx	# D.12269, D.12269
	movzwl	-10(%rbp), %eax	# lost, lost.168
	orl	%edx, %eax	# D.12269, D.12269
	movw	%ax, -10(%rbp)	# D.12269, lost
	.loc 1 4542 0
	movq	-24(%rbp), %rax	# x, tmp81
	movq	%rax, %rdi	# tmp81,
	call	eshdn1	#
	.loc 1 4543 0
	subl	$1, -28(%rbp)	#, sc
.L513:
	.loc 1 4539 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, sc
	jg	.L514	#,
	jmp	.L515	#
.L508:
	.loc 1 4548 0
	jmp	.L516	#
.L517:
	.loc 1 4550 0
	movq	-24(%rbp), %rax	# x, tmp82
	movq	%rax, %rdi	# tmp82,
	call	eshup6	#
	.loc 1 4551 0
	subl	$16, -28(%rbp)	#, sc
.L516:
	.loc 1 4548 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, sc
	jg	.L517	#,
	.loc 1 4554 0
	jmp	.L518	#
.L519:
	.loc 1 4556 0
	movq	-24(%rbp), %rax	# x, tmp83
	movq	%rax, %rdi	# tmp83,
	call	eshup8	#
	.loc 1 4557 0
	subl	$8, -28(%rbp)	#, sc
.L518:
	.loc 1 4554 0 discriminator 1
	cmpl	$7, -28(%rbp)	#, sc
	jg	.L519	#,
	.loc 1 4560 0
	jmp	.L520	#
.L521:
	.loc 1 4562 0
	movq	-24(%rbp), %rax	# x, tmp84
	movq	%rax, %rdi	# tmp84,
	call	eshup1	#
	.loc 1 4563 0
	subl	$1, -28(%rbp)	#, sc
.L520:
	.loc 1 4560 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, sc
	jg	.L521	#,
.L515:
	.loc 1 4566 0
	cmpw	$0, -10(%rbp)	#, lost
	je	.L522	#,
	.loc 1 4567 0
	movw	$1, -10(%rbp)	#, lost
.L522:
	.loc 1 4568 0
	movzwl	-10(%rbp), %eax	# lost, D.12267
.L507:
	.loc 1 4569 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	eshift, .-eshift
	.section	.rodata
.LC9:
	.string	"enormlz"
	.text
	.type	enormlz, @function
enormlz:
.LFB77:
	.loc 1 4577 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 4581 0
	movl	$0, -12(%rbp)	#, sc
	.loc 1 4582 0
	movq	-24(%rbp), %rax	# x, tmp77
	addq	$4, %rax	#, tmp76
	movq	%rax, -8(%rbp)	# tmp76, p
	.loc 1 4583 0
	movq	-8(%rbp), %rax	# p, tmp78
	movzwl	(%rax), %eax	# *p_9, D.12271
	testw	%ax, %ax	# D.12271
	je	.L524	#,
	.loc 1 4584 0
	nop
.L525:
	.loc 1 4621 0
	movq	-8(%rbp), %rax	# p, tmp86
	movzwl	(%rax), %eax	# *p_9, D.12271
	movzwl	%ax, %eax	# D.12271, D.12270
	andl	$65280, %eax	#, D.12270
	testl	%eax, %eax	# D.12270
	je	.L534	#,
	jmp	.L537	#
.L524:
	.loc 1 4585 0
	addq	$2, -8(%rbp)	#, p
	.loc 1 4586 0
	movq	-8(%rbp), %rax	# p, tmp79
	movzwl	(%rax), %eax	# *p_19, D.12271
	testw	%ax, %ax	# D.12272
	jns	.L526	#,
	.loc 1 4587 0
	movl	$0, %eax	#, D.12270
	jmp	.L527	#
.L526:
	.loc 1 4588 0
	jmp	.L528	#
.L529:
	.loc 1 4590 0
	movq	-24(%rbp), %rax	# x, tmp80
	movq	%rax, %rdi	# tmp80,
	call	eshup6	#
	.loc 1 4591 0
	addl	$16, -12(%rbp)	#, sc
	.loc 1 4595 0
	cmpl	$80, -12(%rbp)	#, sc
	jle	.L528	#,
	.loc 1 4596 0
	movl	-12(%rbp), %eax	# sc, D.12270
	jmp	.L527	#
.L528:
	.loc 1 4588 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp81
	movzwl	(%rax), %eax	# *p_19, D.12271
	testw	%ax, %ax	# D.12271
	je	.L529	#,
	.loc 1 4599 0
	jmp	.L530	#
.L531:
	.loc 1 4601 0
	movq	-24(%rbp), %rax	# x, tmp82
	movq	%rax, %rdi	# tmp82,
	call	eshup8	#
	.loc 1 4602 0
	addl	$8, -12(%rbp)	#, sc
.L530:
	.loc 1 4599 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp83
	movzwl	(%rax), %eax	# *p_19, D.12271
	movzwl	%ax, %eax	# D.12271, D.12270
	andl	$65280, %eax	#, D.12270
	testl	%eax, %eax	# D.12270
	je	.L531	#,
	.loc 1 4605 0
	jmp	.L532	#
.L533:
	.loc 1 4607 0
	movq	-24(%rbp), %rax	# x, tmp84
	movq	%rax, %rdi	# tmp84,
	call	eshup1	#
	.loc 1 4608 0
	addl	$1, -12(%rbp)	#, sc
	.loc 1 4609 0
	cmpl	$80, -12(%rbp)	#, sc
	jle	.L532	#,
	.loc 1 4611 0
	movl	$4, %esi	#,
	movl	$.LC9, %edi	#,
	call	mtherr	#
	.loc 1 4612 0
	movl	-12(%rbp), %eax	# sc, D.12270
	jmp	.L527	#
.L532:
	.loc 1 4605 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp85
	movzwl	(%rax), %eax	# *p_19, D.12271
	testw	%ax, %ax	# D.12272
	jns	.L533	#,
	.loc 1 4615 0
	movl	-12(%rbp), %eax	# sc, D.12270
	jmp	.L527	#
.L537:
	.loc 1 4623 0
	movq	-24(%rbp), %rax	# x, tmp87
	movq	%rax, %rdi	# tmp87,
	call	eshdn8	#
	.loc 1 4624 0
	subl	$8, -12(%rbp)	#, sc
	.loc 1 4626 0
	jmp	.L535	#
.L534:
	jmp	.L535	#
.L536:
	.loc 1 4628 0
	movq	-24(%rbp), %rax	# x, tmp88
	movq	%rax, %rdi	# tmp88,
	call	eshdn1	#
	.loc 1 4629 0
	subl	$1, -12(%rbp)	#, sc
	.loc 1 4631 0
	cmpl	$-80, -12(%rbp)	#, sc
	jge	.L535	#,
	.loc 1 4633 0
	movl	$3, %esi	#,
	movl	$.LC9, %edi	#,
	call	mtherr	#
	.loc 1 4634 0
	movl	-12(%rbp), %eax	# sc, D.12270
	jmp	.L527	#
.L535:
	.loc 1 4626 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp89
	movzwl	(%rax), %eax	# *p_9, D.12271
	testw	%ax, %ax	# D.12271
	jne	.L536	#,
	.loc 1 4637 0
	movl	-12(%rbp), %eax	# sc, D.12270
.L527:
	.loc 1 4638 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	enormlz, .-enormlz
	.section	.rodata
	.align 32
	.type	etens, @object
	.size	etens, 156
etens:
	.value	-14004
	.value	-26726
	.value	-30176
	.value	20994
	.value	-15264
	.value	29989
	.value	-22707
	.value	24036
	.value	-15043
	.value	15197
	.value	-24949
	.value	23186
	.value	25869
	.value	3095
	.value	-32395
	.value	30086
	.value	-13962
	.value	19784
	.value	-13211
	.value	-28218
	.value	-23026
	.value	-24402
	.value	-7399
	.value	18083
	.value	-8772
	.value	-8563
	.value	-25095
	.value	-5125
	.value	-21890
	.value	17233
	.value	-14737
	.value	-29473
	.value	-32535
	.value	18377
	.value	-27718
	.value	16808
	.value	15551
	.value	-22827
	.value	-49
	.value	8009
	.value	-15752
	.value	16595
	.value	-4064
	.value	-19043
	.value	11120
	.value	-21080
	.value	-25147
	.value	16489
	.value	0
	.value	0
	.value	1024
	.value	-13889
	.value	-29157
	.value	16436
	.value	0
	.value	0
	.value	0
	.value	8192
	.value	-16708
	.value	16409
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-25536
	.value	16396
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-14336
	.value	16389
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-24576
	.value	16386
	.align 32
	.type	emtens, @object
	.size	emtens, 156
emtens:
	.value	11748
	.value	-24610
	.value	-11570
	.value	1224
	.value	-22819
	.value	2776
	.value	18725
	.value	11748
	.value	13366
	.value	21327
	.value	-12626
	.value	9579
	.value	-30810
	.value	-16195
	.value	-9641
	.value	-32091
	.value	-23898
	.value	12981
	.value	28979
	.value	-11748
	.value	-9437
	.value	-4558
	.value	-28599
	.value	14682
	.value	-1391
	.value	6457
	.value	25466
	.value	17189
	.value	-16335
	.value	15532
	.value	-21379
	.value	-7008
	.value	25788
	.value	18044
	.value	-8752
	.value	15957
	.value	16164
	.value	-5723
	.value	-23239
	.value	-5593
	.value	-22401
	.value	16170
	.value	26590
	.value	-27462
	.value	17721
	.value	7853
	.value	-12367
	.value	16276
	.value	19503
	.value	-7845
	.value	-15283
	.value	-27458
	.value	-6507
	.value	16329
	.value	-574
	.value	-12548
	.value	-31647
	.value	30481
	.value	-21556
	.value	16356
	.value	-11325
	.value	25899
	.value	-7655
	.value	5976
	.value	-11849
	.value	16369
	.value	15729
	.value	-10486
	.value	28835
	.value	2621
	.value	-23593
	.value	16376
	.value	-13107
	.value	-13108
	.value	-13108
	.value	-13108
	.value	-13108
	.value	16379
	.local	wstring
	.comm	wstring,80,32
.LC10:
	.string	"etoasc"
.LC11:
	.string	"e%d"
	.text
	.type	etoasc, @function
etoasc:
.LFB78:
	.loc 1 4814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movq	%rdi, -216(%rbp)	# x, x
	movq	%rsi, -224(%rbp)	# string, string
	movl	%edx, -228(%rbp)	# ndigs, ndigs
	.loc 1 4824 0
	movl	rndprc(%rip), %eax	# rndprc, tmp130
	movl	%eax, -172(%rbp)	# tmp130, rndsav
	.loc 1 4825 0
	movq	-224(%rbp), %rax	# string, tmp131
	movq	%rax, -144(%rbp)	# tmp131, ss
	.loc 1 4826 0
	movq	$wstring, -152(%rbp)	#, s
	.loc 1 4827 0
	movq	-144(%rbp), %rax	# ss, tmp132
	movb	$0, (%rax)	#, *ss_44
	.loc 1 4828 0
	movq	-152(%rbp), %rax	# s, tmp133
	movb	$0, (%rax)	#, *s_45
	.loc 1 4830 0
	movq	-216(%rbp), %rax	# x, tmp134
	movq	%rax, %rdi	# tmp134,
	call	eisnan	#
	testl	%eax, %eax	# D.12274
	je	.L539	#,
	.loc 1 4832 0
	movl	$1314999840, wstring(%rip)	#, MEM[(void *)&wstring]
	movw	$32, wstring+4(%rip)	#, MEM[(void *)&wstring]
	.loc 1 4833 0
	jmp	.L540	#
.L539:
	.loc 1 4836 0
	movl	$80, rndprc(%rip)	#, rndprc
	.loc 1 4837 0
	leaq	-128(%rbp), %rdx	#, tmp135
	movq	-216(%rbp), %rax	# x, tmp136
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	emov	#
	.loc 1 4838 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12276
	jns	.L541	#,
	.loc 1 4840 0
	movw	$-1, -192(%rbp)	#, sign
	.loc 1 4841 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	andw	$32767, %ax	#, D.12275
	movw	%ax, -118(%rbp)	# D.12275, y
	jmp	.L542	#
.L541:
	.loc 1 4845 0
	movw	$0, -192(%rbp)	#, sign
.L542:
	.loc 1 4847 0
	movl	$0, -176(%rbp)	#, expon
	.loc 1 4848 0
	movq	$etens+144, -136(%rbp)	#, ten
	.loc 1 4849 0
	leaq	-96(%rbp), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$eone, %edi	#,
	call	emov	#
	.loc 1 4851 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12275
	jne	.L543	#,
	.loc 1 4853 0
	movl	$0, -180(%rbp)	#, k
	jmp	.L544	#
.L546:
	.loc 1 4855 0
	movl	-180(%rbp), %eax	# k, tmp139
	cltq
	movzwl	-128(%rbp,%rax,2), %eax	# y, D.12275
	testw	%ax, %ax	# D.12275
	je	.L545	#,
	.loc 1 4856 0
	jmp	.L543	#
.L545:
	.loc 1 4853 0
	addl	$1, -180(%rbp)	#, k
.L544:
	.loc 1 4853 0 is_stmt 0 discriminator 1
	cmpl	$4, -180(%rbp)	#, k
	jle	.L546	#,
	.loc 1 4858 0 is_stmt 1
	jmp	.L547	#
.L543:
	.loc 1 4863 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	cmpw	$32767, %ax	#, D.12275
	jne	.L548	#,
	.loc 1 4865 0
	cmpw	$0, -192(%rbp)	#, sign
	je	.L549	#,
	.loc 1 4866 0
	movabsq	$7597125510078475552, %rax	#, tmp266
	movq	%rax, wstring(%rip)	# tmp266, MEM[(void *)&wstring]
	movl	$2128244, wstring+8(%rip)	#, MEM[(void *)&wstring]
	.loc 1 4869 0
	jmp	.L540	#
.L549:
	.loc 1 4868 0
	movabsq	$8388357179923384608, %rax	#, tmp267
	movq	%rax, wstring(%rip)	# tmp267, MEM[(void *)&wstring]
	movw	$8313, wstring+8(%rip)	#, MEM[(void *)&wstring]
	movb	$0, wstring+10(%rip)	#, MEM[(void *)&wstring]
	.loc 1 4869 0
	jmp	.L540	#
.L548:
	.loc 1 4875 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12275
	je	.L551	#,
	.loc 1 4875 0 is_stmt 0 discriminator 1
	movzwl	-120(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12276
	js	.L551	#,
	.loc 1 4877 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	mtherr	#
	.loc 1 4878 0
	movl	$5136718, wstring(%rip)	#, MEM[(void *)&wstring]
	.loc 1 4879 0
	jmp	.L540	#
.L551:
	.loc 1 4883 0
	leaq	-128(%rbp), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	movl	$eone, %edi	#,
	call	ecmp	#
	movl	%eax, -188(%rbp)	# tmp142, i
	.loc 1 4884 0
	cmpl	$0, -188(%rbp)	#, i
	jne	.L552	#,
	.loc 1 4885 0
	jmp	.L547	#
.L552:
	.loc 1 4887 0
	cmpl	$-2, -188(%rbp)	#, i
	jne	.L553	#,
	.loc 1 4888 0
	movl	$__FUNCTION__.9795, %edx	#,
	movl	$4888, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L553:
	.loc 1 4890 0
	cmpl	$0, -188(%rbp)	#, i
	jns	.L554	#,
	.loc 1 4893 0
	leaq	-64(%rbp), %rdx	#, tmp143
	leaq	-128(%rbp), %rax	#, tmp144
	movq	%rdx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	emov	#
	.loc 1 4894 0
	movw	$16462, -54(%rbp)	#, u
	.loc 1 4896 0
	movq	$etens+96, -168(%rbp)	#, p
	.loc 1 4897 0
	movw	$16, -190(%rbp)	#, m
.L559:
	.loc 1 4900 0
	leaq	-96(%rbp), %rdx	#, tmp145
	leaq	-64(%rbp), %rcx	#, tmp146
	movq	-168(%rbp), %rax	# p, tmp147
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	ediv	#
	.loc 1 4901 0
	leaq	-32(%rbp), %rdx	#, tmp148
	leaq	-96(%rbp), %rax	#, tmp149
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	efloor	#
	.loc 1 4902 0
	movl	$0, -184(%rbp)	#, j
	jmp	.L555	#
.L558:
	.loc 1 4904 0
	movl	-184(%rbp), %eax	# j, tmp151
	cltq
	movzwl	-96(%rbp,%rax,2), %edx	# t, D.12275
	movl	-184(%rbp), %eax	# j, tmp153
	cltq
	movzwl	-32(%rbp,%rax,2), %eax	# w, D.12275
	cmpw	%ax, %dx	# D.12275, D.12275
	je	.L556	#,
	.loc 1 4905 0
	jmp	.L557	#
.L556:
	.loc 1 4902 0
	addl	$1, -184(%rbp)	#, j
.L555:
	.loc 1 4902 0 is_stmt 0 discriminator 1
	cmpl	$4, -184(%rbp)	#, j
	jle	.L558	#,
	.loc 1 4907 0 is_stmt 1
	leaq	-64(%rbp), %rdx	#, tmp154
	leaq	-96(%rbp), %rax	#, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	emov	#
	.loc 1 4908 0
	movzwl	-190(%rbp), %eax	# m, D.12274
	addl	%eax, -176(%rbp)	# D.12274, expon
.L557:
	.loc 1 4910 0
	addq	$12, -168(%rbp)	#, p
	.loc 1 4911 0
	shrw	-190(%rbp)	# m
	.loc 1 4913 0
	cmpw	$0, -190(%rbp)	#, m
	jne	.L559	#,
	.loc 1 4916 0
	movzwl	-54(%rbp), %edx	# u, D.12275
	movzwl	-118(%rbp), %eax	# y, D.12275
	addl	%edx, %eax	# D.12275, D.12275
	subw	$16462, %ax	#, D.12275
	movw	%ax, -54(%rbp)	# D.12275, u
	.loc 1 4917 0
	leaq	-128(%rbp), %rdx	#, tmp156
	leaq	-64(%rbp), %rax	#, tmp157
	movq	%rdx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	emov	#
	.loc 1 4919 0
	leaq	-96(%rbp), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$eone, %edi	#,
	call	emov	#
	.loc 1 4920 0
	movw	$4096, -190(%rbp)	#, m
	.loc 1 4921 0
	movq	$etens, -168(%rbp)	#, p
	.loc 1 4923 0
	jmp	.L560	#
.L564:
	.loc 1 4925 0
	leaq	-64(%rbp), %rdx	#, tmp159
	movq	-168(%rbp), %rax	# p, tmp160
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	jg	.L561	#,
	.loc 1 4927 0
	leaq	-64(%rbp), %rdx	#, tmp161
	leaq	-64(%rbp), %rcx	#, tmp162
	movq	-168(%rbp), %rax	# p, tmp163
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	ediv	#
	.loc 1 4928 0
	leaq	-96(%rbp), %rdx	#, tmp164
	leaq	-96(%rbp), %rcx	#, tmp165
	movq	-168(%rbp), %rax	# p, tmp166
	movq	%rcx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	emul	#
	.loc 1 4929 0
	movzwl	-190(%rbp), %eax	# m, D.12274
	addl	%eax, -176(%rbp)	# D.12274, expon
.L561:
	.loc 1 4931 0
	shrw	-190(%rbp)	# m
	.loc 1 4932 0
	cmpw	$0, -190(%rbp)	#, m
	jne	.L562	#,
	.loc 1 4933 0
	nop
	jmp	.L547	#
.L562:
	.loc 1 4934 0
	addq	$12, -168(%rbp)	#, p
.L560:
	.loc 1 4923 0 discriminator 1
	leaq	-64(%rbp), %rdx	#, tmp167
	movq	-136(%rbp), %rax	# ten, tmp168
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	jle	.L564	#,
	jmp	.L547	#
.L554:
	.loc 1 4940 0
	movzwl	-118(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12275
	jne	.L565	#,
	.loc 1 4942 0
	jmp	.L566	#
.L567:
	.loc 1 4944 0
	leaq	-128(%rbp), %rdx	#, tmp169
	leaq	-128(%rbp), %rcx	#, tmp170
	movq	-136(%rbp), %rax	# ten, tmp171
	movq	%rcx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	emul	#
	.loc 1 4945 0
	subl	$1, -176(%rbp)	#, expon
.L566:
	.loc 1 4942 0 discriminator 1
	movzwl	-120(%rbp), %eax	# y, D.12275
	testw	%ax, %ax	# D.12276
	jns	.L567	#,
	jmp	.L568	#
.L565:
	.loc 1 4950 0
	leaq	-32(%rbp), %rdx	#, tmp172
	leaq	-128(%rbp), %rax	#, tmp173
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	emovi	#
	.loc 1 4951 0
	movl	$0, -188(%rbp)	#, i
	jmp	.L569	#
.L576:
	.loc 1 4953 0
	movzwl	-16(%rbp), %eax	# w, D.12275
	movzwl	%ax, %eax	# D.12275, D.12274
	andl	$7, %eax	#, D.12274
	testl	%eax, %eax	# D.12274
	je	.L570	#,
	.loc 1 4954 0
	jmp	.L571	#
.L570:
	.loc 1 4956 0
	leaq	-64(%rbp), %rdx	#, tmp174
	leaq	-32(%rbp), %rax	#, tmp175
	movq	%rdx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	emovz	#
	.loc 1 4957 0
	leaq	-64(%rbp), %rax	#, tmp176
	movq	%rax, %rdi	# tmp176,
	call	eshdn1	#
	.loc 1 4958 0
	leaq	-64(%rbp), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	eshdn1	#
	.loc 1 4959 0
	leaq	-64(%rbp), %rdx	#, tmp178
	leaq	-32(%rbp), %rax	#, tmp179
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	eaddm	#
	.loc 1 4960 0
	movzwl	-62(%rbp), %eax	# u, D.12275
	addl	$3, %eax	#, D.12275
	movw	%ax, -62(%rbp)	# D.12275, u
	.loc 1 4961 0
	jmp	.L572	#
.L573:
	.loc 1 4963 0
	leaq	-64(%rbp), %rax	#, tmp180
	movq	%rax, %rdi	# tmp180,
	call	eshdn1	#
	.loc 1 4964 0
	movzwl	-62(%rbp), %eax	# u, D.12275
	addl	$1, %eax	#, D.12275
	movw	%ax, -62(%rbp)	# D.12275, u
.L572:
	.loc 1 4961 0 discriminator 1
	movzwl	-60(%rbp), %eax	# u, D.12275
	testw	%ax, %ax	# D.12275
	jne	.L573	#,
	.loc 1 4966 0
	movzwl	-48(%rbp), %eax	# u, D.12275
	testw	%ax, %ax	# D.12275
	je	.L574	#,
	.loc 1 4967 0
	jmp	.L571	#
.L574:
	.loc 1 4968 0
	movl	$16383, %edx	#, D.12275
	movzwl	-62(%rbp), %eax	# u, D.12275
	cmpw	%ax, %dx	# D.12275, D.12275
	ja	.L575	#,
	.loc 1 4969 0
	jmp	.L571	#
.L575:
	.loc 1 4970 0
	leaq	-32(%rbp), %rdx	#, tmp181
	leaq	-64(%rbp), %rax	#, tmp182
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# tmp182,
	call	emovz	#
	.loc 1 4971 0
	subl	$1, -176(%rbp)	#, expon
	.loc 1 4951 0
	addl	$1, -188(%rbp)	#, i
.L569:
	.loc 1 4951 0 is_stmt 0 discriminator 1
	cmpl	$23, -188(%rbp)	#, i
	jle	.L576	#,
.L571:
	.loc 1 4973 0 is_stmt 1
	leaq	-128(%rbp), %rdx	#, tmp183
	leaq	-32(%rbp), %rax	#, tmp184
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	emovo	#
.L568:
	.loc 1 4975 0
	movl	$-4096, -180(%rbp)	#, k
	.loc 1 4976 0
	movq	$emtens, -168(%rbp)	#, p
	.loc 1 4977 0
	movq	$etens, -160(%rbp)	#, r
	.loc 1 4978 0
	leaq	-32(%rbp), %rdx	#, tmp185
	leaq	-128(%rbp), %rax	#, tmp186
	movq	%rdx, %rsi	# tmp185,
	movq	%rax, %rdi	# tmp186,
	call	emov	#
	.loc 1 4979 0
	leaq	-96(%rbp), %rax	#, tmp187
	movq	%rax, %rsi	# tmp187,
	movl	$eone, %edi	#,
	call	emov	#
	.loc 1 4980 0
	jmp	.L577	#
.L581:
	.loc 1 4982 0
	leaq	-32(%rbp), %rdx	#, tmp188
	movq	-168(%rbp), %rax	# p, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	js	.L578	#,
	.loc 1 4984 0
	leaq	-32(%rbp), %rdx	#, tmp190
	leaq	-32(%rbp), %rcx	#, tmp191
	movq	-160(%rbp), %rax	# r, tmp192
	movq	%rcx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	emul	#
	.loc 1 4985 0
	leaq	-96(%rbp), %rdx	#, tmp193
	leaq	-96(%rbp), %rcx	#, tmp194
	movq	-160(%rbp), %rax	# r, tmp195
	movq	%rcx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	emul	#
	.loc 1 4986 0
	movl	-180(%rbp), %eax	# k, tmp196
	addl	%eax, -176(%rbp)	# tmp196, expon
.L578:
	.loc 1 4988 0
	movl	-180(%rbp), %eax	# k, tmp198
	movl	%eax, %edx	# tmp198, tmp199
	shrl	$31, %edx	#, tmp199
	addl	%edx, %eax	# tmp199, tmp200
	sarl	%eax	# tmp201
	movl	%eax, -180(%rbp)	# tmp201, k
	.loc 1 4989 0
	cmpl	$0, -180(%rbp)	#, k
	jne	.L579	#,
	.loc 1 4990 0
	jmp	.L580	#
.L579:
	.loc 1 4991 0
	addq	$12, -168(%rbp)	#, p
	.loc 1 4992 0
	addq	$12, -160(%rbp)	#, r
.L577:
	.loc 1 4980 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp202
	movq	%rax, %rsi	# tmp202,
	movl	$eone, %edi	#,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	jg	.L581	#,
.L580:
	.loc 1 4994 0
	leaq	-96(%rbp), %rdx	#, tmp203
	leaq	-96(%rbp), %rax	#, tmp204
	movl	$eone, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	ediv	#
.L547:
	.loc 1 4998 0
	leaq	-32(%rbp), %rdx	#, tmp205
	leaq	-96(%rbp), %rax	#, tmp206
	movq	%rdx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	emovi	#
	.loc 1 4999 0
	leaq	-96(%rbp), %rdx	#, tmp207
	leaq	-32(%rbp), %rax	#, tmp208
	movq	%rdx, %rsi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	emovz	#
	.loc 1 5000 0
	leaq	-32(%rbp), %rdx	#, tmp209
	leaq	-128(%rbp), %rax	#, tmp210
	movq	%rdx, %rsi	# tmp209,
	movq	%rax, %rdi	# tmp210,
	call	emovi	#
	.loc 1 5001 0
	leaq	-128(%rbp), %rdx	#, tmp211
	leaq	-32(%rbp), %rax	#, tmp212
	movq	%rdx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	emovz	#
	.loc 1 5002 0
	leaq	-128(%rbp), %rdx	#, tmp213
	leaq	-96(%rbp), %rax	#, tmp214
	movq	%rdx, %rsi	# tmp213,
	movq	%rax, %rdi	# tmp214,
	call	eiremain	#
	.loc 1 5003 0
	movzwl	equot+16(%rip), %eax	# equot, D.12275
	movw	%ax, -194(%rbp)	# D.12275, digit
	.loc 1 5004 0
	jmp	.L582	#
.L584:
	.loc 1 5006 0
	leaq	-128(%rbp), %rax	#, tmp215
	movq	%rax, %rdi	# tmp215,
	call	eshup1	#
	.loc 1 5007 0
	leaq	-64(%rbp), %rdx	#, tmp216
	leaq	-128(%rbp), %rax	#, tmp217
	movq	%rdx, %rsi	# tmp216,
	movq	%rax, %rdi	# tmp217,
	call	emovz	#
	.loc 1 5008 0
	leaq	-64(%rbp), %rax	#, tmp218
	movq	%rax, %rdi	# tmp218,
	call	eshup1	#
	.loc 1 5009 0
	leaq	-64(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	eshup1	#
	.loc 1 5010 0
	leaq	-128(%rbp), %rdx	#, tmp220
	leaq	-64(%rbp), %rax	#, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	eaddm	#
	.loc 1 5011 0
	leaq	-128(%rbp), %rdx	#, tmp222
	leaq	-96(%rbp), %rax	#, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	eiremain	#
	.loc 1 5012 0
	movzwl	equot+16(%rip), %eax	# equot, D.12275
	movw	%ax, -194(%rbp)	# D.12275, digit
	.loc 1 5013 0
	subl	$1, -176(%rbp)	#, expon
.L582:
	.loc 1 5004 0 discriminator 1
	cmpw	$0, -194(%rbp)	#, digit
	jne	.L583	#,
	.loc 1 5004 0 is_stmt 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp224
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	jne	.L584	#,
.L583:
	.loc 1 5015 0 is_stmt 1
	movq	$wstring, -152(%rbp)	#, s
	.loc 1 5016 0
	cmpw	$0, -192(%rbp)	#, sign
	je	.L585	#,
	.loc 1 5017 0
	movq	-152(%rbp), %rax	# s, s.169
	leaq	1(%rax), %rdx	#, tmp225
	movq	%rdx, -152(%rbp)	# tmp225, s
	movb	$45, (%rax)	#, *s.169_121
	jmp	.L586	#
.L585:
	.loc 1 5019 0
	movq	-152(%rbp), %rax	# s, s.170
	leaq	1(%rax), %rdx	#, tmp226
	movq	%rdx, -152(%rbp)	# tmp226, s
	movb	$32, (%rax)	#, *s.170_123
.L586:
	.loc 1 5021 0
	cmpl	$0, -228(%rbp)	#, ndigs
	jns	.L587	#,
	.loc 1 5022 0
	movl	$0, -228(%rbp)	#, ndigs
.L587:
	.loc 1 5023 0
	cmpl	$23, -228(%rbp)	#, ndigs
	jle	.L588	#,
	.loc 1 5024 0
	movl	$23, -228(%rbp)	#, ndigs
.L588:
	.loc 1 5025 0
	cmpw	$10, -194(%rbp)	#, digit
	jne	.L589	#,
	.loc 1 5027 0
	movq	-152(%rbp), %rax	# s, s.171
	leaq	1(%rax), %rdx	#, tmp227
	movq	%rdx, -152(%rbp)	# tmp227, s
	movb	$49, (%rax)	#, *s.171_128
	.loc 1 5028 0
	movq	-152(%rbp), %rax	# s, s.172
	leaq	1(%rax), %rdx	#, tmp228
	movq	%rdx, -152(%rbp)	# tmp228, s
	movb	$46, (%rax)	#, *s.172_130
	.loc 1 5029 0
	cmpl	$0, -228(%rbp)	#, ndigs
	jle	.L590	#,
	.loc 1 5031 0
	movq	-152(%rbp), %rax	# s, s.173
	leaq	1(%rax), %rdx	#, tmp229
	movq	%rdx, -152(%rbp)	# tmp229, s
	movb	$48, (%rax)	#, *s.173_132
	.loc 1 5032 0
	subl	$1, -228(%rbp)	#, ndigs
.L590:
	.loc 1 5034 0
	addl	$1, -176(%rbp)	#, expon
	jmp	.L591	#
.L589:
	.loc 1 5038 0
	movq	-152(%rbp), %rax	# s, s.174
	leaq	1(%rax), %rdx	#, tmp230
	movq	%rdx, -152(%rbp)	# tmp230, s
	movzwl	-194(%rbp), %edx	# digit, tmp231
	addl	$48, %edx	#, D.12277
	movb	%dl, (%rax)	# D.12278, *s.174_136
	.loc 1 5039 0
	movq	-152(%rbp), %rax	# s, s.175
	leaq	1(%rax), %rdx	#, tmp232
	movq	%rdx, -152(%rbp)	# tmp232, s
	movb	$46, (%rax)	#, *s.175_141
.L591:
	.loc 1 5042 0
	movl	$0, -180(%rbp)	#, k
	jmp	.L592	#
.L593:
	.loc 1 5045 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp233
	movq	%rax, %rdi	# tmp233,
	call	eshup1	#
	.loc 1 5046 0 discriminator 2
	leaq	-64(%rbp), %rdx	#, tmp234
	leaq	-128(%rbp), %rax	#, tmp235
	movq	%rdx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
	call	emovz	#
	.loc 1 5047 0 discriminator 2
	leaq	-64(%rbp), %rax	#, tmp236
	movq	%rax, %rdi	# tmp236,
	call	eshup1	#
	.loc 1 5048 0 discriminator 2
	leaq	-64(%rbp), %rax	#, tmp237
	movq	%rax, %rdi	# tmp237,
	call	eshup1	#
	.loc 1 5049 0 discriminator 2
	leaq	-128(%rbp), %rdx	#, tmp238
	leaq	-64(%rbp), %rax	#, tmp239
	movq	%rdx, %rsi	# tmp238,
	movq	%rax, %rdi	# tmp239,
	call	eaddm	#
	.loc 1 5050 0 discriminator 2
	leaq	-128(%rbp), %rdx	#, tmp240
	leaq	-96(%rbp), %rax	#, tmp241
	movq	%rdx, %rsi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	eiremain	#
	.loc 1 5051 0 discriminator 2
	movq	-152(%rbp), %rax	# s, s.176
	leaq	1(%rax), %rdx	#, tmp242
	movq	%rdx, -152(%rbp)	# tmp242, s
	movzwl	equot+16(%rip), %edx	# equot, D.12275
	addl	$48, %edx	#, D.12277
	movb	%dl, (%rax)	# D.12278, *s.176_144
	.loc 1 5042 0 discriminator 2
	addl	$1, -180(%rbp)	#, k
.L592:
	.loc 1 5042 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# k, tmp243
	cmpl	-228(%rbp), %eax	# ndigs, tmp243
	jle	.L593	#,
	.loc 1 5053 0 is_stmt 1
	movzwl	equot+16(%rip), %eax	# equot, D.12275
	movw	%ax, -194(%rbp)	# D.12275, digit
	.loc 1 5054 0
	subq	$1, -152(%rbp)	#, s
	.loc 1 5055 0
	movq	-152(%rbp), %rax	# s, tmp244
	movq	%rax, -144(%rbp)	# tmp244, ss
	.loc 1 5057 0
	cmpw	$4, -194(%rbp)	#, digit
	jle	.L594	#,
	.loc 1 5060 0
	cmpw	$5, -194(%rbp)	#, digit
	jne	.L595	#,
	.loc 1 5062 0
	leaq	-96(%rbp), %rdx	#, tmp245
	leaq	-128(%rbp), %rax	#, tmp246
	movq	%rdx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	emovo	#
	.loc 1 5063 0
	leaq	-96(%rbp), %rax	#, tmp247
	movl	$ezero, %esi	#,
	movq	%rax, %rdi	# tmp247,
	call	ecmp	#
	testl	%eax, %eax	# D.12274
	je	.L596	#,
	.loc 1 5064 0
	jmp	.L595	#
.L596:
	.loc 1 5066 0
	movq	-152(%rbp), %rax	# s, tmp248
	subq	$1, %rax	#, D.12279
	movzbl	(%rax), %eax	# *_156, D.12278
	movsbl	%al, %eax	# D.12278, D.12274
	andl	$1, %eax	#, D.12274
	testl	%eax, %eax	# D.12274
	jne	.L595	#,
	.loc 1 5067 0
	jmp	.L594	#
.L595:
	.loc 1 5072 0
	subq	$1, -152(%rbp)	#, s
	.loc 1 5073 0
	movq	-152(%rbp), %rax	# s, tmp249
	movzbl	(%rax), %eax	# *s_160, D.12278
	movsbl	%al, %eax	# D.12278, D.12274
	andl	$127, %eax	#, tmp250
	movl	%eax, -180(%rbp)	# tmp250, k
	.loc 1 5075 0
	cmpl	$46, -180(%rbp)	#, k
	jne	.L597	#,
	.loc 1 5077 0
	subq	$1, -152(%rbp)	#, s
	.loc 1 5078 0
	movq	-152(%rbp), %rax	# s, tmp251
	movzbl	(%rax), %eax	# *s_164, D.12278
	movsbl	%al, %eax	# D.12278, tmp252
	movl	%eax, -180(%rbp)	# tmp252, k
	.loc 1 5079 0
	addl	$1, -180(%rbp)	#, k
	.loc 1 5080 0
	movl	-180(%rbp), %eax	# k, tmp253
	movl	%eax, %edx	# tmp253, D.12278
	movq	-152(%rbp), %rax	# s, tmp254
	movb	%dl, (%rax)	# D.12278, *s_164
	.loc 1 5082 0
	cmpl	$57, -180(%rbp)	#, k
	jle	.L598	#,
	.loc 1 5084 0
	addl	$1, -176(%rbp)	#, expon
	.loc 1 5085 0
	movq	-152(%rbp), %rax	# s, tmp255
	movb	$49, (%rax)	#, *s_164
	.loc 1 5087 0
	jmp	.L594	#
.L598:
	jmp	.L594	#
.L597:
	.loc 1 5090 0
	addl	$1, -180(%rbp)	#, k
	.loc 1 5091 0
	movl	-180(%rbp), %eax	# k, tmp256
	movl	%eax, %edx	# tmp256, D.12278
	movq	-152(%rbp), %rax	# s, tmp257
	movb	%dl, (%rax)	# D.12278, *s_160
	.loc 1 5092 0
	cmpl	$57, -180(%rbp)	#, k
	jle	.L594	#,
	.loc 1 5094 0
	movq	-152(%rbp), %rax	# s, tmp258
	movb	$48, (%rax)	#, *s_160
	.loc 1 5095 0
	jmp	.L595	#
.L594:
	.loc 1 5105 0
	movl	-176(%rbp), %edx	# expon, tmp259
	movq	-144(%rbp), %rax	# ss, tmp260
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp260,
	movl	$0, %eax	#,
	call	sprintf	#
.L540:
	.loc 1 5107 0
	movl	-172(%rbp), %eax	# rndsav, tmp261
	movl	%eax, rndprc(%rip)	# tmp261, rndprc
	.loc 1 5109 0
	movq	-224(%rbp), %rax	# string, tmp262
	movq	%rax, -152(%rbp)	# tmp262, s
	.loc 1 5110 0
	movq	$wstring, -144(%rbp)	#, ss
	.loc 1 5111 0
	jmp	.L599	#
.L600:
	.loc 1 5112 0
	addq	$1, -144(%rbp)	#, ss
.L599:
	.loc 1 5111 0 discriminator 1
	movq	-144(%rbp), %rax	# ss, tmp263
	movzbl	(%rax), %eax	# *ss_38, D.12278
	cmpb	$32, %al	#, D.12278
	je	.L600	#,
	.loc 1 5113 0
	nop
.L601:
	.loc 1 5113 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# s, s.177
	leaq	1(%rax), %rdx	#, tmp264
	movq	%rdx, -152(%rbp)	# tmp264, s
	movq	-144(%rbp), %rdx	# ss, ss.178
	leaq	1(%rdx), %rcx	#, tmp265
	movq	%rcx, -144(%rbp)	# tmp265, ss
	movzbl	(%rdx), %edx	# *ss.178_178, D.12278
	movb	%dl, (%rax)	# D.12278, *s.177_176
	movzbl	(%rax), %eax	# *s.177_176, D.12278
	testb	%al, %al	# D.12278
	jne	.L601	#,
	.loc 1 5115 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	etoasc, .-etoasc
	.type	asctoe24, @function
asctoe24:
.LFB79:
	.loc 1 5131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 5132 0
	movq	-16(%rbp), %rcx	# y, tmp59
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	asctoeg	#
	.loc 1 5133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	asctoe24, .-asctoe24
	.type	asctoe53, @function
asctoe53:
.LFB80:
	.loc 1 5142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 5149 0
	movq	-16(%rbp), %rcx	# y, tmp59
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$53, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	asctoeg	#
	.loc 1 5152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	asctoe53, .-asctoe53
	.type	asctoe64, @function
asctoe64:
.LFB81:
	.loc 1 5161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 5162 0
	movq	-16(%rbp), %rcx	# y, tmp59
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	asctoeg	#
	.loc 1 5163 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	asctoe64, .-asctoe64
	.type	asctoe, @function
asctoe:
.LFB82:
	.loc 1 5183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 5184 0
	movq	-16(%rbp), %rcx	# y, tmp59
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$80, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	asctoeg	#
	.loc 1 5185 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	asctoe, .-asctoe
	.type	asctoeg, @function
asctoeg:
.LFB83:
	.loc 1 5195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)	# ss, ss
	movq	%rsi, -224(%rbp)	# y, y
	movl	%edx, -228(%rbp)	# oprec, oprec
	.loc 1 5202 0
	movl	$10, -148(%rbp)	#, base
	.loc 1 5205 0
	movq	-216(%rbp), %rax	# ss, tmp126
	movq	%rax, %rdi	# tmp126,
	call	strlen	#
	addq	$1, %rax	#, D.12282
	leaq	15(%rax), %rdx	#, tmp127
	movl	$16, %eax	#, tmp269
	subq	$1, %rax	#, tmp128
	addq	%rdx, %rax	# tmp127, tmp129
	movl	$16, %ebx	#, tmp270
	movl	$0, %edx	#, tmp132
	divq	%rbx	# tmp270
	imulq	$16, %rax, %rax	#, tmp131, tmp133
	subq	%rax, %rsp	# tmp133,
	movq	%rsp, %rax	#, tmp134
	addq	$15, %rax	#, tmp135
	shrq	$4, %rax	#, tmp136
	salq	$4, %rax	#, tmp137
	movq	%rax, -120(%rbp)	# tmp137, lstr
	.loc 1 5207 0
	jmp	.L607	#
.L608:
	.loc 1 5208 0
	addq	$1, -216(%rbp)	#, ss
.L607:
	.loc 1 5207 0 discriminator 1
	movq	-216(%rbp), %rax	# ss, tmp138
	movzbl	(%rax), %eax	# *ss_1, D.12283
	cmpb	$32, %al	#, D.12283
	je	.L608	#,
	.loc 1 5210 0
	movq	-120(%rbp), %rax	# lstr, tmp139
	movq	%rax, -136(%rbp)	# tmp139, sp
	.loc 1 5211 0
	nop
.L609:
	.loc 1 5211 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# sp, sp.179
	leaq	1(%rax), %rdx	#, tmp140
	movq	%rdx, -136(%rbp)	# tmp140, sp
	movq	-216(%rbp), %rdx	# ss, ss.180
	leaq	1(%rdx), %rcx	#, tmp141
	movq	%rcx, -216(%rbp)	# tmp141, ss
	movzbl	(%rdx), %edx	# *ss.180_61, D.12283
	movb	%dl, (%rax)	# D.12283, *sp.179_59
	movzbl	(%rax), %eax	# *sp.179_59, D.12283
	testb	%al, %al	# D.12283
	jne	.L609	#,
	.loc 1 5213 0 is_stmt 1
	movq	-120(%rbp), %rax	# lstr, tmp142
	movq	%rax, -128(%rbp)	# tmp142, s
	.loc 1 5215 0
	movq	-128(%rbp), %rax	# s, tmp143
	movzbl	(%rax), %eax	# *s_65, D.12283
	cmpb	$48, %al	#, D.12283
	jne	.L610	#,
	.loc 1 5215 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# s, tmp144
	addq	$1, %rax	#, D.12284
	movzbl	(%rax), %eax	# *_67, D.12283
	cmpb	$120, %al	#, D.12283
	je	.L611	#,
	movq	-128(%rbp), %rax	# s, tmp145
	addq	$1, %rax	#, D.12284
	movzbl	(%rax), %eax	# *_69, D.12283
	cmpb	$88, %al	#, D.12283
	jne	.L610	#,
.L611:
	.loc 1 5217 0 is_stmt 1
	movl	$16, -148(%rbp)	#, base
	.loc 1 5218 0
	addq	$2, -128(%rbp)	#, s
.L610:
	.loc 1 5221 0
	movl	rndprc(%rip), %eax	# rndprc, tmp146
	movl	%eax, -144(%rbp)	# tmp146, rndsav
	.loc 1 5222 0
	movl	$80, rndprc(%rip)	#, rndprc
	.loc 1 5223 0
	movl	$0, -168(%rbp)	#, lost
	.loc 1 5224 0
	movw	$0, -194(%rbp)	#, nsign
	.loc 1 5225 0
	movl	$0, -188(%rbp)	#, decflg
	.loc 1 5226 0
	movl	$0, -184(%rbp)	#, sgnflg
	.loc 1 5227 0
	movl	$0, -180(%rbp)	#, nexp
	.loc 1 5228 0
	movl	$0, -176(%rbp)	#, exp
	.loc 1 5229 0
	movl	$0, -172(%rbp)	#, prec
	.loc 1 5230 0
	leaq	-112(%rbp), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	ecleaz	#
	.loc 1 5231 0
	movl	$0, -156(%rbp)	#, trail
.L612:
	.loc 1 5234 0
	movq	-128(%rbp), %rax	# s, tmp148
	movzbl	(%rax), %eax	# *s_46, D.12283
	movzbl	%al, %eax	# D.12285, D.12286
	cltq
	movzbl	_hex_value(%rax), %eax	# _hex_value, D.12283
	movsbl	%al, %eax	# D.12283, tmp150
	movl	%eax, -160(%rbp)	# tmp150, k
	.loc 1 5235 0
	cmpl	$0, -160(%rbp)	#, k
	js	.L613	#,
	.loc 1 5235 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# k, tmp151
	cmpl	-148(%rbp), %eax	# base, tmp151
	jge	.L613	#,
	.loc 1 5238 0 is_stmt 1
	cmpl	$0, -172(%rbp)	#, prec
	jne	.L614	#,
	.loc 1 5238 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, decflg
	jne	.L614	#,
	cmpl	$0, -160(%rbp)	#, k
	jne	.L614	#,
	.loc 1 5239 0 is_stmt 1
	jmp	.L615	#
.L614:
	.loc 1 5241 0
	cmpl	$0, -156(%rbp)	#, trail
	jne	.L616	#,
	.loc 1 5241 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, decflg
	je	.L616	#,
	.loc 1 5243 0 is_stmt 1
	movq	-128(%rbp), %rax	# s, tmp152
	movq	%rax, -136(%rbp)	# tmp152, sp
	.loc 1 5244 0
	jmp	.L617	#
.L618:
	.loc 1 5245 0
	addq	$1, -136(%rbp)	#, sp
.L617:
	.loc 1 5244 0 discriminator 1
	movq	-136(%rbp), %rax	# sp, tmp153
	movzbl	(%rax), %eax	# *sp_43, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	movzbl	%al, %eax	# D.12286, D.12286
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	andl	$4, %eax	#, D.12286
	testl	%eax, %eax	# D.12286
	jne	.L618	#,
	.loc 1 5244 0 is_stmt 0 discriminator 2
	cmpl	$16, -148(%rbp)	#, base
	jne	.L619	#,
	.loc 1 5244 0 discriminator 1
	movq	-136(%rbp), %rax	# sp, tmp155
	movzbl	(%rax), %eax	# *sp_43, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	movzbl	%al, %eax	# D.12286, D.12286
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	andl	$256, %eax	#, D.12286
	testl	%eax, %eax	# D.12286
	jne	.L618	#,
.L619:
	.loc 1 5247 0 is_stmt 1
	movq	-136(%rbp), %rax	# sp, tmp157
	movzbl	(%rax), %eax	# *sp_43, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	andl	$127, %eax	#, tmp158
	movl	%eax, -140(%rbp)	# tmp158, c
	.loc 1 5248 0
	cmpl	$10, -148(%rbp)	#, base
	jne	.L620	#,
	.loc 1 5248 0 is_stmt 0 discriminator 1
	cmpl	$101, -140(%rbp)	#, c
	je	.L621	#,
	cmpl	$69, -140(%rbp)	#, c
	je	.L621	#,
.L620:
	.loc 1 5249 0 is_stmt 1
	cmpl	$16, -148(%rbp)	#, base
	jne	.L622	#,
	.loc 1 5249 0 is_stmt 0 discriminator 1
	cmpl	$112, -140(%rbp)	#, c
	je	.L621	#,
	cmpl	$80, -140(%rbp)	#, c
	je	.L621	#,
.L622:
	.loc 1 5250 0 is_stmt 1
	cmpl	$0, -140(%rbp)	#, c
	je	.L621	#,
	.loc 1 5251 0
	cmpl	$10, -140(%rbp)	#, c
	je	.L621	#,
	.loc 1 5251 0 is_stmt 0 discriminator 1
	cmpl	$13, -140(%rbp)	#, c
	je	.L621	#,
	cmpl	$32, -140(%rbp)	#, c
	je	.L621	#,
	.loc 1 5252 0 is_stmt 1
	cmpl	$44, -140(%rbp)	#, c
	je	.L621	#,
	.loc 1 5253 0
	jmp	.L623	#
.L621:
	.loc 1 5254 0
	subq	$1, -136(%rbp)	#, sp
	.loc 1 5255 0
	jmp	.L624	#
.L625:
	.loc 1 5256 0
	movq	-136(%rbp), %rax	# sp, sp.181
	leaq	-1(%rax), %rdx	#, tmp159
	movq	%rdx, -136(%rbp)	# tmp159, sp
	movb	$122, (%rax)	#, *sp.181_105
.L624:
	.loc 1 5255 0 discriminator 1
	movq	-136(%rbp), %rax	# sp, tmp160
	movzbl	(%rax), %eax	# *sp_44, D.12283
	cmpb	$48, %al	#, D.12283
	je	.L625	#,
	.loc 1 5257 0
	movl	$1, -156(%rbp)	#, trail
	.loc 1 5258 0
	movq	-128(%rbp), %rax	# s, tmp161
	movzbl	(%rax), %eax	# *s_46, D.12283
	cmpb	$122, %al	#, D.12283
	jne	.L616	#,
	.loc 1 5259 0
	jmp	.L615	#
.L616:
	.loc 1 5267 0
	movzwl	-108(%rbp), %eax	# yy, D.12287
	testw	%ax, %ax	# D.12287
	jne	.L626	#,
	.loc 1 5269 0
	cmpl	$16, -148(%rbp)	#, base
	jne	.L627	#,
	.loc 1 5271 0
	cmpl	$0, -188(%rbp)	#, decflg
	je	.L628	#,
	.loc 1 5272 0
	addl	$4, -180(%rbp)	#, nexp
.L628:
	.loc 1 5274 0
	leaq	-112(%rbp), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	eshup1	#
	.loc 1 5275 0
	leaq	-112(%rbp), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	call	eshup1	#
	.loc 1 5276 0
	leaq	-112(%rbp), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	eshup1	#
	.loc 1 5277 0
	leaq	-112(%rbp), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	call	eshup1	#
	jmp	.L629	#
.L627:
	.loc 1 5281 0
	cmpl	$0, -188(%rbp)	#, decflg
	je	.L630	#,
	.loc 1 5282 0
	addl	$1, -180(%rbp)	#, nexp
.L630:
	.loc 1 5284 0
	leaq	-112(%rbp), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	eshup1	#
	.loc 1 5285 0
	leaq	-80(%rbp), %rdx	#, tmp167
	leaq	-112(%rbp), %rax	#, tmp168
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	emovz	#
	.loc 1 5286 0
	leaq	-80(%rbp), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	eshup1	#
	.loc 1 5287 0
	leaq	-80(%rbp), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	eshup1	#
	.loc 1 5288 0
	leaq	-112(%rbp), %rdx	#, tmp171
	leaq	-80(%rbp), %rax	#, tmp172
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	eaddm	#
.L629:
	.loc 1 5291 0 discriminator 1
	leaq	-80(%rbp), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	ecleaz	#
	.loc 1 5292 0 discriminator 1
	movl	-160(%rbp), %eax	# k, tmp174
	movw	%ax, -66(%rbp)	# D.12287, xt
	.loc 1 5293 0 discriminator 1
	leaq	-112(%rbp), %rdx	#, tmp175
	leaq	-80(%rbp), %rax	#, tmp176
	movq	%rdx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp176,
	call	eaddm	#
	jmp	.L631	#
.L626:
	.loc 1 5298 0
	movl	-160(%rbp), %eax	# k, tmp177
	orl	%eax, -168(%rbp)	# tmp177, lost
	.loc 1 5300 0
	cmpl	$0, -188(%rbp)	#, decflg
	jne	.L631	#,
	.loc 1 5302 0
	cmpl	$10, -148(%rbp)	#, base
	jne	.L632	#,
	.loc 1 5303 0
	subl	$1, -180(%rbp)	#, nexp
	jmp	.L631	#
.L632:
	.loc 1 5305 0
	subl	$4, -180(%rbp)	#, nexp
.L631:
	.loc 1 5308 0
	addl	$1, -172(%rbp)	#, prec
	.loc 1 5309 0
	jmp	.L615	#
.L613:
	.loc 1 5312 0
	movq	-128(%rbp), %rax	# s, tmp178
	movzbl	(%rax), %eax	# *s_46, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	cmpl	$122, %eax	#, D.12286
	ja	.L623	#,
	movl	%eax, %eax	# D.12286, tmp179
	movq	.L634(,%rax,8), %rax	#, tmp180
	jmp	*%rax	# tmp180
	.section	.rodata
	.align 8
	.align 4
.L634:
	.quad	.L685
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L685
	.quad	.L623
	.quad	.L623
	.quad	.L685
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L685
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L635
	.quad	.L685
	.quad	.L636
	.quad	.L637
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L686
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L687
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L686
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L686
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L687
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L686
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L688
	.text
.L637:
	.loc 1 5322 0
	cmpl	$0, -188(%rbp)	#, decflg
	je	.L642	#,
	.loc 1 5323 0
	jmp	.L623	#
.L642:
	.loc 1 5324 0
	addl	$1, -188(%rbp)	#, decflg
	.loc 1 5325 0
	jmp	.L615	#
.L636:
	.loc 1 5327 0
	movw	$-1, -194(%rbp)	#, nsign
	.loc 1 5328 0
	cmpl	$0, -184(%rbp)	#, sgnflg
	je	.L643	#,
	.loc 1 5329 0
	jmp	.L623	#
.L643:
	.loc 1 5330 0
	addl	$1, -184(%rbp)	#, sgnflg
	.loc 1 5331 0
	jmp	.L615	#
.L635:
	.loc 1 5333 0
	cmpl	$0, -184(%rbp)	#, sgnflg
	je	.L644	#,
	.loc 1 5334 0
	jmp	.L623	#
.L644:
	.loc 1 5335 0
	addl	$1, -184(%rbp)	#, sgnflg
	.loc 1 5336 0
	jmp	.L615	#
.L623:
	.loc 1 5349 0
	leaq	-112(%rbp), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	einan	#
	.loc 1 5354 0
	jmp	.L647	#
.L688:
	.loc 1 5315 0
	nop
.L615:
	.loc 1 5357 0
	addq	$1, -128(%rbp)	#, s
	.loc 1 5358 0
	jmp	.L612	#
.L686:
	.loc 1 5320 0
	nop
.L641:
	.loc 1 5363 0
	movl	$0, -160(%rbp)	#, k
	jmp	.L648	#
.L651:
	.loc 1 5365 0
	movl	-160(%rbp), %eax	# k, tmp183
	cltq
	movzwl	-112(%rbp,%rax,2), %eax	# yy, D.12287
	testw	%ax, %ax	# D.12287
	je	.L649	#,
	.loc 1 5366 0
	nop
.L650:
	.loc 1 5371 0
	movl	$1, -192(%rbp)	#, esign
	.loc 1 5372 0
	movl	$0, -176(%rbp)	#, exp
	.loc 1 5373 0
	addq	$1, -128(%rbp)	#, s
	.loc 1 5375 0
	movq	-128(%rbp), %rax	# s, tmp184
	movzbl	(%rax), %eax	# *s_124, D.12283
	cmpb	$45, %al	#, D.12283
	jne	.L652	#,
	jmp	.L684	#
.L649:
	.loc 1 5363 0
	addl	$1, -160(%rbp)	#, k
.L648:
	.loc 1 5363 0 is_stmt 0 discriminator 1
	cmpl	$8, -160(%rbp)	#, k
	jle	.L651	#,
	.loc 1 5368 0 is_stmt 1
	jmp	.L647	#
.L684:
	.loc 1 5377 0
	movl	$-1, -192(%rbp)	#, esign
	.loc 1 5378 0
	addq	$1, -128(%rbp)	#, s
.L652:
	.loc 1 5380 0
	movq	-128(%rbp), %rax	# s, tmp185
	movzbl	(%rax), %eax	# *s_47, D.12283
	cmpb	$43, %al	#, D.12283
	jne	.L653	#,
	.loc 1 5381 0
	addq	$1, -128(%rbp)	#, s
	.loc 1 5382 0
	jmp	.L654	#
.L653:
	jmp	.L654	#
.L656:
	.loc 1 5384 0
	movl	-176(%rbp), %edx	# exp, tmp186
	movl	%edx, %eax	# tmp186, tmp187
	sall	$2, %eax	#, tmp187
	addl	%edx, %eax	# tmp186, tmp187
	addl	%eax, %eax	# tmp188
	movl	%eax, -176(%rbp)	# tmp187, exp
	.loc 1 5385 0
	movq	-128(%rbp), %rax	# s, s.182
	leaq	1(%rax), %rdx	#, tmp189
	movq	%rdx, -128(%rbp)	# tmp189, s
	movzbl	(%rax), %eax	# *s.182_137, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	subl	$48, %eax	#, D.12286
	addl	%eax, -176(%rbp)	# D.12286, exp
	.loc 1 5386 0
	cmpl	$999999, -176(%rbp)	#, exp
	jle	.L654	#,
	.loc 1 5387 0
	jmp	.L655	#
.L654:
	.loc 1 5382 0 discriminator 1
	movq	-128(%rbp), %rax	# s, tmp190
	movzbl	(%rax), %eax	# *s_49, D.12283
	movsbl	%al, %eax	# D.12283, D.12286
	movzbl	%al, %eax	# D.12286, D.12286
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	andl	$4, %eax	#, D.12286
	testl	%eax, %eax	# D.12286
	jne	.L656	#,
.L655:
	.loc 1 5389 0
	cmpl	$0, -192(%rbp)	#, esign
	jns	.L657	#,
	.loc 1 5390 0
	negl	-176(%rbp)	# exp
.L657:
	.loc 1 5391 0
	cmpl	$4932, -176(%rbp)	#, exp
	jle	.L658	#,
	.loc 1 5391 0 is_stmt 0 discriminator 1
	cmpl	$10, -148(%rbp)	#, base
	jne	.L658	#,
	jmp	.L646	#
.L687:
	.loc 1 5345 0 is_stmt 1
	nop
.L646:
	.loc 1 5394 0
	leaq	-112(%rbp), %rax	#, tmp192
	movq	%rax, %rdi	# tmp192,
	call	ecleaz	#
	.loc 1 5395 0
	movw	$32767, -110(%rbp)	#, yy
	.loc 1 5396 0
	jmp	.L647	#
.L658:
	.loc 1 5398 0
	cmpl	$-4956, -176(%rbp)	#, exp
	jge	.L645	#,
	.loc 1 5398 0 is_stmt 0 discriminator 1
	cmpl	$10, -148(%rbp)	#, base
	jne	.L645	#,
.L659:
	.loc 1 5401 0 is_stmt 1
	leaq	-112(%rbp), %rax	#, tmp193
	movq	%rax, %rdi	# tmp193,
	call	ecleaz	#
	.loc 1 5402 0
	jmp	.L647	#
.L685:
	.loc 1 5342 0
	nop
.L645:
	.loc 1 5406 0
	cmpl	$16, -148(%rbp)	#, base
	jne	.L660	#,
	.loc 1 5409 0
	leaq	-112(%rbp), %rax	#, tmp194
	movq	%rax, %rdi	# tmp194,
	call	enormlz	#
	movl	%eax, -160(%rbp)	# tmp195, k
	cmpl	$80, -160(%rbp)	#, k
	jle	.L661	#,
	.loc 1 5411 0
	leaq	-112(%rbp), %rax	#, tmp196
	movq	%rax, %rdi	# tmp196,
	call	ecleaz	#
	.loc 1 5412 0
	jmp	.L647	#
.L661:
	.loc 1 5416 0
	movl	$16462, %eax	#, tmp197
	subl	-160(%rbp), %eax	# k, D.12286
	movl	%eax, %edx	# D.12286, D.12286
	movzwl	-110(%rbp), %eax	# yy, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	addl	%eax, %edx	# D.12286, D.12286
	movl	-176(%rbp), %eax	# exp, tmp198
	addl	%edx, %eax	# D.12286, D.12286
	subl	-180(%rbp), %eax	# nexp, tmp200
	movl	%eax, -152(%rbp)	# tmp200, lexp
	.loc 1 5417 0
	cmpl	$32767, -152(%rbp)	#, lexp
	jle	.L662	#,
	.loc 1 5418 0
	jmp	.L646	#
.L662:
	.loc 1 5419 0
	cmpl	$0, -152(%rbp)	#, lexp
	jns	.L663	#,
	.loc 1 5420 0
	jmp	.L659	#
.L663:
	.loc 1 5421 0
	movl	-152(%rbp), %eax	# lexp, tmp201
	movw	%ax, -110(%rbp)	# D.12287, yy
	.loc 1 5422 0
	jmp	.L664	#
.L660:
	.loc 1 5425 0
	movl	-180(%rbp), %eax	# nexp, tmp206
	movl	-176(%rbp), %edx	# exp, tmp207
	subl	%eax, %edx	# tmp206, tmp205
	movl	%edx, %eax	# tmp205, tmp205
	movl	%eax, -180(%rbp)	# tmp205, nexp
	.loc 1 5427 0
	jmp	.L665	#
.L668:
	.loc 1 5429 0
	leaq	-80(%rbp), %rdx	#, tmp208
	leaq	-112(%rbp), %rax	#, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	emovz	#
	.loc 1 5430 0
	leaq	-80(%rbp), %rax	#, tmp210
	movq	%rax, %rdi	# tmp210,
	call	eshup1	#
	.loc 1 5431 0
	leaq	-80(%rbp), %rax	#, tmp211
	movq	%rax, %rdi	# tmp211,
	call	eshup1	#
	.loc 1 5432 0
	leaq	-80(%rbp), %rdx	#, tmp212
	leaq	-112(%rbp), %rax	#, tmp213
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	eaddm	#
	.loc 1 5433 0
	leaq	-80(%rbp), %rax	#, tmp214
	movq	%rax, %rdi	# tmp214,
	call	eshup1	#
	.loc 1 5434 0
	movzwl	-76(%rbp), %eax	# xt, D.12287
	testw	%ax, %ax	# D.12287
	je	.L666	#,
	.loc 1 5435 0
	jmp	.L667	#
.L666:
	.loc 1 5436 0
	subl	$1, -180(%rbp)	#, nexp
	.loc 1 5437 0
	leaq	-112(%rbp), %rdx	#, tmp215
	leaq	-80(%rbp), %rax	#, tmp216
	movq	%rdx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	emovz	#
.L665:
	.loc 1 5427 0 discriminator 1
	cmpl	$0, -180(%rbp)	#, nexp
	jle	.L667	#,
	.loc 1 5427 0 is_stmt 0 discriminator 2
	movzwl	-108(%rbp), %eax	# yy, D.12287
	testw	%ax, %ax	# D.12287
	je	.L668	#,
.L667:
	.loc 1 5439 0 is_stmt 1
	leaq	-112(%rbp), %rax	#, tmp217
	movq	%rax, %rdi	# tmp217,
	call	enormlz	#
	movl	%eax, -160(%rbp)	# tmp218, k
	cmpl	$80, -160(%rbp)	#, k
	jle	.L669	#,
	.loc 1 5441 0
	leaq	-112(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	ecleaz	#
	.loc 1 5442 0
	jmp	.L647	#
.L669:
	.loc 1 5444 0
	movl	$16462, %eax	#, tmp223
	subl	-160(%rbp), %eax	# k, tmp222
	movl	%eax, -152(%rbp)	# tmp222, lexp
	.loc 1 5445 0
	movl	-152(%rbp), %edx	# lexp, tmp224
	movl	-168(%rbp), %esi	# lost, tmp225
	leaq	-112(%rbp), %rax	#, tmp226
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp224,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp226,
	call	emdnorm	#
	.loc 1 5446 0
	movl	$0, -168(%rbp)	#, lost
	.loc 1 5456 0
	movzwl	-110(%rbp), %eax	# yy, D.12287
	movzwl	%ax, %eax	# D.12287, tmp227
	movl	%eax, -152(%rbp)	# tmp227, lexp
	.loc 1 5457 0
	cmpl	$0, -180(%rbp)	#, nexp
	jne	.L670	#,
	.loc 1 5459 0
	movl	$0, -160(%rbp)	#, k
	.loc 1 5460 0
	jmp	.L664	#
.L670:
	.loc 1 5462 0
	movl	$1, -192(%rbp)	#, esign
	.loc 1 5463 0
	cmpl	$0, -180(%rbp)	#, nexp
	jns	.L671	#,
	.loc 1 5465 0
	negl	-180(%rbp)	# nexp
	.loc 1 5466 0
	movl	$-1, -192(%rbp)	#, esign
	.loc 1 5467 0
	cmpl	$4096, -180(%rbp)	#, nexp
	jle	.L671	#,
	.loc 1 5470 0
	leaq	-48(%rbp), %rax	#, tmp228
	movq	%rax, %rsi	# tmp228,
	movl	$etens, %edi	#,
	call	emovi	#
	.loc 1 5471 0
	movzwl	-46(%rbp), %eax	# tt, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	subl	%eax, -152(%rbp)	# D.12286, lexp
	.loc 1 5472 0
	leaq	-112(%rbp), %rdx	#, tmp229
	leaq	-48(%rbp), %rax	#, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	edivm	#
	movl	%eax, -160(%rbp)	# tmp231, k
	.loc 1 5473 0
	addl	$16383, -152(%rbp)	#, lexp
	.loc 1 5474 0
	subl	$4096, -180(%rbp)	#, nexp
.L671:
	.loc 1 5477 0
	leaq	-80(%rbp), %rax	#, tmp232
	movq	%rax, %rsi	# tmp232,
	movl	$eone, %edi	#,
	call	emov	#
	.loc 1 5478 0
	movl	$1, -176(%rbp)	#, exp
	.loc 1 5479 0
	movl	$12, -164(%rbp)	#, i
.L673:
	.loc 1 5482 0
	movl	-180(%rbp), %eax	# nexp, tmp233
	movl	-176(%rbp), %edx	# exp, tmp234
	andl	%edx, %eax	# tmp234, D.12286
	testl	%eax, %eax	# D.12286
	je	.L672	#,
	.loc 1 5483 0
	movl	-164(%rbp), %eax	# i, tmp236
	movslq	%eax, %rdx	# tmp236, tmp235
	movq	%rdx, %rax	# tmp235, tmp237
	addq	%rax, %rax	# tmp237
	addq	%rdx, %rax	# tmp235, tmp237
	salq	$2, %rax	#, tmp238
	leaq	etens(%rax), %rcx	#, D.12288
	leaq	-80(%rbp), %rdx	#, tmp239
	leaq	-80(%rbp), %rax	#, tmp240
	movq	%rax, %rsi	# tmp240,
	movq	%rcx, %rdi	# D.12288,
	call	emul	#
.L672:
	.loc 1 5484 0
	subl	$1, -164(%rbp)	#, i
	.loc 1 5485 0
	movl	-176(%rbp), %eax	# exp, tmp244
	addl	%eax, %eax	# tmp244, tmp243
	movl	%eax, -176(%rbp)	# tmp243, exp
	.loc 1 5487 0
	cmpl	$4096, -176(%rbp)	#, exp
	jle	.L673	#,
	.loc 1 5489 0
	leaq	-48(%rbp), %rdx	#, tmp245
	leaq	-80(%rbp), %rax	#, tmp246
	movq	%rdx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	emovi	#
	.loc 1 5490 0
	cmpl	$0, -192(%rbp)	#, esign
	jns	.L674	#,
	.loc 1 5492 0
	movzwl	-46(%rbp), %eax	# tt, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	subl	%eax, -152(%rbp)	# D.12286, lexp
	.loc 1 5493 0
	leaq	-112(%rbp), %rdx	#, tmp247
	leaq	-48(%rbp), %rax	#, tmp248
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# tmp248,
	call	edivm	#
	movl	%eax, -160(%rbp)	# tmp249, k
	.loc 1 5494 0
	addl	$16383, -152(%rbp)	#, lexp
	jmp	.L675	#
.L674:
	.loc 1 5498 0
	movzwl	-46(%rbp), %eax	# tt, D.12287
	movzwl	%ax, %eax	# D.12287, D.12286
	addl	%eax, -152(%rbp)	# D.12286, lexp
	.loc 1 5499 0
	leaq	-112(%rbp), %rdx	#, tmp250
	leaq	-48(%rbp), %rax	#, tmp251
	movq	%rdx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	emulm	#
	movl	%eax, -160(%rbp)	# tmp252, k
	.loc 1 5500 0
	subl	$16382, -152(%rbp)	#, lexp
.L675:
	.loc 1 5502 0
	movl	-160(%rbp), %eax	# k, tmp253
	movl	%eax, -168(%rbp)	# tmp253, lost
.L664:
	.loc 1 5507 0
	cmpl	$53, -228(%rbp)	#, oprec
	jne	.L676	#,
	.loc 1 5508 0
	subl	$15360, -152(%rbp)	#, lexp
	jmp	.L677	#
.L676:
	.loc 1 5517 0
	cmpl	$24, -228(%rbp)	#, oprec
	jne	.L677	#,
	.loc 1 5518 0
	subl	$16256, -152(%rbp)	#, lexp
.L677:
	.loc 1 5525 0
	movl	-228(%rbp), %eax	# oprec, tmp254
	movl	%eax, rndprc(%rip)	# tmp254, rndprc
	.loc 1 5526 0
	movl	-152(%rbp), %edx	# lexp, tmp255
	movl	-168(%rbp), %esi	# lost, tmp256
	leaq	-112(%rbp), %rax	#, tmp257
	movl	$64, %r8d	#,
	movl	%edx, %ecx	# tmp255,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp257,
	call	emdnorm	#
.L647:
	.loc 1 5530 0
	movl	-144(%rbp), %eax	# rndsav, tmp258
	movl	%eax, rndprc(%rip)	# tmp258, rndprc
	.loc 1 5531 0
	movzwl	-194(%rbp), %eax	# nsign, tmp259
	movw	%ax, -112(%rbp)	# tmp259, yy
	.loc 1 5532 0
	movl	-228(%rbp), %eax	# oprec, oprec
	cmpl	$53, %eax	#, oprec
	je	.L679	#,
	cmpl	$53, %eax	#, oprec
	jg	.L680	#,
	cmpl	$24, %eax	#, oprec
	je	.L681	#,
	jmp	.L606	#
.L680:
	cmpl	$64, %eax	#, oprec
	je	.L682	#,
	cmpl	$80, %eax	#, oprec
	je	.L683	#,
	jmp	.L606	#
.L679:
	.loc 1 5551 0
	movq	-224(%rbp), %rdx	# y, tmp261
	leaq	-112(%rbp), %rax	#, tmp262
	movq	%rdx, %rsi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	toe53	#
	.loc 1 5552 0
	jmp	.L606	#
.L681:
	.loc 1 5554 0
	movq	-224(%rbp), %rdx	# y, tmp263
	leaq	-112(%rbp), %rax	#, tmp264
	movq	%rdx, %rsi	# tmp263,
	movq	%rax, %rdi	# tmp264,
	call	toe24	#
	.loc 1 5555 0
	jmp	.L606	#
.L682:
	.loc 1 5557 0
	movq	-224(%rbp), %rdx	# y, tmp265
	leaq	-112(%rbp), %rax	#, tmp266
	movq	%rdx, %rsi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	toe64	#
	.loc 1 5558 0
	jmp	.L606	#
.L683:
	.loc 1 5565 0
	movq	-224(%rbp), %rdx	# y, tmp267
	leaq	-112(%rbp), %rax	#, tmp268
	movq	%rdx, %rsi	# tmp267,
	movq	%rax, %rdi	# tmp268,
	call	emovo	#
	.loc 1 5566 0
	nop
.L606:
	.loc 1 5568 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	asctoeg, .-asctoeg
	.section	.rodata
	.align 32
	.type	bmask, @object
	.size	bmask, 34
bmask:
	.value	-1
	.value	-2
	.value	-4
	.value	-8
	.value	-16
	.value	-32
	.value	-64
	.value	-128
	.value	-256
	.value	-512
	.value	-1024
	.value	-2048
	.value	-4096
	.value	-8192
	.value	-16384
	.value	-32768
	.value	0
	.text
	.type	efloor, @function
efloor:
.LFB84:
	.loc 1 5600 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# y, y
	.loc 1 5605 0
	leaq	-16(%rbp), %rdx	#, tmp71
	movq	-56(%rbp), %rax	# x, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	emov	#
	.loc 1 5606 0
	movzwl	-6(%rbp), %eax	# f, D.12291
	movzwl	%ax, %eax	# D.12291, tmp73
	movl	%eax, -28(%rbp)	# tmp73, expon
	.loc 1 5607 0
	movl	-28(%rbp), %eax	# expon, tmp74
	andl	$32767, %eax	#, D.12292
	subl	$16382, %eax	#, tmp75
	movl	%eax, -36(%rbp)	# tmp75, e
	.loc 1 5608 0
	cmpl	$0, -36(%rbp)	#, e
	jg	.L690	#,
	.loc 1 5610 0
	movq	-64(%rbp), %rax	# y, tmp76
	movq	%rax, %rdi	# tmp76,
	call	eclear	#
	.loc 1 5611 0
	jmp	.L691	#
.L690:
	.loc 1 5614 0
	movl	$80, %eax	#, tmp80
	subl	-36(%rbp), %eax	# e, tmp79
	movl	%eax, -36(%rbp)	# tmp79, e
	.loc 1 5615 0
	movq	-64(%rbp), %rdx	# y, tmp81
	leaq	-16(%rbp), %rax	#, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	emov	#
	.loc 1 5616 0
	cmpl	$0, -36(%rbp)	#, e
	jle	.L689	#,
	.loc 1 5619 0
	movq	-64(%rbp), %rax	# y, tmp83
	movq	%rax, -24(%rbp)	# tmp83, p
	.loc 1 5620 0
	jmp	.L694	#
.L695:
	.loc 1 5622 0
	movq	-24(%rbp), %rax	# p, p.183
	leaq	2(%rax), %rdx	#, tmp84
	movq	%rdx, -24(%rbp)	# tmp84, p
	movw	$0, (%rax)	#, *p.183_12
	.loc 1 5623 0
	subl	$16, -36(%rbp)	#, e
.L694:
	.loc 1 5620 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, e
	jg	.L695	#,
	.loc 1 5626 0
	movq	-24(%rbp), %rax	# p, tmp85
	movzwl	(%rax), %edx	# *p_1, D.12291
	movl	-36(%rbp), %eax	# e, tmp87
	cltq
	movzwl	bmask(%rax,%rax), %eax	# bmask, D.12291
	andl	%eax, %edx	# D.12291, D.12291
	movq	-24(%rbp), %rax	# p, tmp88
	movw	%dx, (%rax)	# D.12291, *p_1
.L691:
	.loc 1 5630 0
	movl	-28(%rbp), %eax	# expon, tmp89
	testw	%ax, %ax	# D.12293
	jns	.L689	#,
	.loc 1 5632 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L697	#
.L699:
	.loc 1 5634 0
	movl	-32(%rbp), %eax	# i, tmp91
	cltq
	movzwl	-16(%rbp,%rax,2), %edx	# f, D.12291
	movl	-32(%rbp), %eax	# i, tmp92
	cltq
	leaq	(%rax,%rax), %rcx	#, D.12294
	movq	-64(%rbp), %rax	# y, tmp93
	addq	%rcx, %rax	# D.12294, D.12295
	movzwl	(%rax), %eax	# *_23, D.12291
	cmpw	%ax, %dx	# D.12291, D.12291
	je	.L698	#,
	.loc 1 5636 0
	movq	-64(%rbp), %rdx	# y, tmp94
	movq	-64(%rbp), %rax	# y, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$eone, %edi	#,
	call	esub	#
	.loc 1 5637 0
	nop
	jmp	.L689	#
.L698:
	.loc 1 5632 0
	addl	$1, -32(%rbp)	#, i
.L697:
	.loc 1 5632 0 is_stmt 0 discriminator 1
	cmpl	$4, -32(%rbp)	#, i
	jle	.L699	#,
.L689:
	.loc 1 5641 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	efloor, .-efloor
	.type	eldexp, @function
eldexp:
.LFB85:
	.loc 1 5678 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movl	%esi, -60(%rbp)	# pwr2, pwr2
	movq	%rdx, -72(%rbp)	# y, y
	.loc 1 5683 0
	leaq	-32(%rbp), %rdx	#, tmp60
	movq	-56(%rbp), %rax	# x, tmp61
	movq	%rdx, %rsi	# tmp60,
	movq	%rax, %rdi	# tmp61,
	call	emovi	#
	.loc 1 5684 0
	movzwl	-30(%rbp), %eax	# xi, D.12296
	movzwl	%ax, %eax	# D.12296, tmp62
	movl	%eax, -40(%rbp)	# tmp62, li
	.loc 1 5685 0
	movl	-60(%rbp), %eax	# pwr2, tmp63
	addl	%eax, -40(%rbp)	# tmp63, li
	.loc 1 5686 0
	movl	$0, -36(%rbp)	#, i
	.loc 1 5687 0
	movl	-40(%rbp), %ecx	# li, tmp64
	movl	-36(%rbp), %edx	# i, tmp65
	movl	-36(%rbp), %esi	# i, tmp66
	leaq	-32(%rbp), %rax	#, tmp67
	movl	$64, %r8d	#,
	movq	%rax, %rdi	# tmp67,
	call	emdnorm	#
	.loc 1 5688 0
	movq	-72(%rbp), %rdx	# y, tmp68
	leaq	-32(%rbp), %rax	#, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	emovo	#
	.loc 1 5689 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	eldexp, .-eldexp
	.type	eiremain, @function
eiremain:
.LFB86:
	.loc 1 5737 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# den, den
	movq	%rsi, -32(%rbp)	# num, num
	.loc 1 5741 0
	movq	-24(%rbp), %rax	# den, tmp68
	addq	$2, %rax	#, D.12297
	movzwl	(%rax), %eax	# *_4, D.12298
	movzwl	%ax, %eax	# D.12298, tmp69
	movl	%eax, -4(%rbp)	# tmp69, ld
	.loc 1 5742 0
	movq	-24(%rbp), %rax	# den, tmp70
	movq	%rax, %rdi	# tmp70,
	call	enormlz	#
	subl	%eax, -4(%rbp)	# D.12299, ld
	.loc 1 5743 0
	movq	-32(%rbp), %rax	# num, tmp71
	addq	$2, %rax	#, D.12297
	movzwl	(%rax), %eax	# *_10, D.12298
	movzwl	%ax, %eax	# D.12298, tmp72
	movl	%eax, -8(%rbp)	# tmp72, ln
	.loc 1 5744 0
	movq	-32(%rbp), %rax	# num, tmp73
	movq	%rax, %rdi	# tmp73,
	call	enormlz	#
	subl	%eax, -8(%rbp)	# D.12299, ln
	.loc 1 5745 0
	movl	$equot, %edi	#,
	call	ecleaz	#
	.loc 1 5746 0
	jmp	.L702	#
.L705:
	.loc 1 5748 0
	movq	-32(%rbp), %rdx	# num, tmp74
	movq	-24(%rbp), %rax	# den, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	ecmpm	#
	testl	%eax, %eax	# D.12299
	jg	.L703	#,
	.loc 1 5750 0
	movq	-32(%rbp), %rdx	# num, tmp76
	movq	-24(%rbp), %rax	# den, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	esubm	#
	.loc 1 5751 0
	movw	$1, -10(%rbp)	#, j
	jmp	.L704	#
.L703:
	.loc 1 5754 0
	movw	$0, -10(%rbp)	#, j
.L704:
	.loc 1 5755 0
	movl	$equot, %edi	#,
	call	eshup1	#
	.loc 1 5756 0
	movzwl	equot+16(%rip), %eax	# equot, D.12298
	orw	-10(%rbp), %ax	# j, D.12298
	movw	%ax, equot+16(%rip)	# D.12298, equot
	.loc 1 5757 0
	movq	-32(%rbp), %rax	# num, tmp78
	movq	%rax, %rdi	# tmp78,
	call	eshup1	#
	.loc 1 5758 0
	subl	$1, -8(%rbp)	#, ln
.L702:
	.loc 1 5746 0 discriminator 1
	movl	-8(%rbp), %eax	# ln, tmp79
	cmpl	-4(%rbp), %eax	# ld, tmp79
	jge	.L705	#,
	.loc 1 5760 0
	movl	-8(%rbp), %edx	# ln, tmp80
	movq	-32(%rbp), %rax	# num, tmp81
	movl	$0, %r8d	#,
	movl	%edx, %ecx	# tmp80,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	emdnorm	#
	.loc 1 5761 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	eiremain, .-eiremain
	.globl	merror
	.bss
	.align 4
	.type	merror, @object
	.size	merror, 4
merror:
	.zero	4
	.section	.rodata
.LC12:
	.string	"subtraction"
.LC13:
	.string	"division"
.LC14:
	.string	"multiplication"
.LC15:
	.string	"normalization"
.LC16:
	.string	"conversion to text"
.LC17:
	.string	"asctoe"
.LC18:
	.string	"parsing"
.LC19:
	.string	"eremain"
.LC20:
	.string	"modulus"
.LC21:
	.string	"esqrt"
.LC22:
	.string	"square root"
.LC23:
	.string	"%s: argument domain error"
.LC24:
	.string	"%s: function singularity"
.LC25:
	.string	"%s: overflow range error"
.LC26:
	.string	"%s: underflow range error"
.LC27:
	.string	"%s: total loss of precision"
.LC28:
	.string	"%s: partial loss of precision"
.LC29:
	.string	"%s: NaN - producing operation"
	.text
	.type	mtherr, @function
mtherr:
.LFB87:
	.loc 1 5787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# code, code
	.loc 1 5792 0
	movq	-8(%rbp), %rax	# name, tmp69
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L707	#,
	.loc 1 5793 0
	movq	$.LC12, -8(%rbp)	#, name
	jmp	.L708	#
.L707:
	.loc 1 5794 0
	movq	-8(%rbp), %rax	# name, tmp70
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L709	#,
	.loc 1 5795 0
	movq	$.LC13, -8(%rbp)	#, name
	jmp	.L708	#
.L709:
	.loc 1 5796 0
	movq	-8(%rbp), %rax	# name, tmp71
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L710	#,
	.loc 1 5797 0
	movq	$.LC14, -8(%rbp)	#, name
	jmp	.L708	#
.L710:
	.loc 1 5798 0
	movq	-8(%rbp), %rax	# name, tmp72
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L711	#,
	.loc 1 5799 0
	movq	$.LC15, -8(%rbp)	#, name
	jmp	.L708	#
.L711:
	.loc 1 5800 0
	movq	-8(%rbp), %rax	# name, tmp73
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L712	#,
	.loc 1 5801 0
	movq	$.LC16, -8(%rbp)	#, name
	jmp	.L708	#
.L712:
	.loc 1 5802 0
	movq	-8(%rbp), %rax	# name, tmp74
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L713	#,
	.loc 1 5803 0
	movq	$.LC18, -8(%rbp)	#, name
	jmp	.L708	#
.L713:
	.loc 1 5804 0
	movq	-8(%rbp), %rax	# name, tmp75
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L714	#,
	.loc 1 5805 0
	movq	$.LC20, -8(%rbp)	#, name
	jmp	.L708	#
.L714:
	.loc 1 5806 0
	movq	-8(%rbp), %rax	# name, tmp76
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	strcmp	#
	testl	%eax, %eax	# D.12300
	jne	.L708	#,
	.loc 1 5807 0
	movq	$.LC22, -8(%rbp)	#, name
.L708:
	.loc 1 5808 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.184
	testl	%eax, %eax	# extra_warnings.184
	je	.L715	#,
	.loc 1 5810 0
	cmpl	$7, -12(%rbp)	#, code
	ja	.L716	#,
	movl	-12(%rbp), %eax	# code, tmp77
	movq	.L718(,%rax,8), %rax	#, tmp78
	jmp	*%rax	# tmp78
	.section	.rodata
	.align 8
	.align 4
.L718:
	.quad	.L716
	.quad	.L717
	.quad	.L719
	.quad	.L720
	.quad	.L721
	.quad	.L722
	.quad	.L723
	.quad	.L724
	.text
.L717:
	.loc 1 5812 0
	movq	-8(%rbp), %rax	# name, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L719:
	.loc 1 5813 0
	movq	-8(%rbp), %rax	# name, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L720:
	.loc 1 5814 0
	movq	-8(%rbp), %rax	# name, tmp81
	movq	%rax, %rsi	# tmp81,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L721:
	.loc 1 5815 0
	movq	-8(%rbp), %rax	# name, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L722:
	.loc 1 5816 0
	movq	-8(%rbp), %rax	# name, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L723:
	.loc 1 5817 0
	movq	-8(%rbp), %rax	# name, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L724:
	.loc 1 5818 0
	movq	-8(%rbp), %rax	# name, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L715	#
.L716:
	.loc 1 5819 0
	movl	$__FUNCTION__.9978, %edx	#,
	movl	$5819, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L715:
	.loc 1 5824 0
	movl	-12(%rbp), %eax	# code, tmp86
	addl	$1, %eax	#, merror.185
	movl	%eax, merror(%rip)	# merror.185, merror
	.loc 1 5825 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	mtherr, .-mtherr
	.section	.rodata
	.align 16
	.type	TFbignan, @object
	.size	TFbignan, 16
TFbignan:
	.value	32767
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.align 16
	.type	TFlittlenan, @object
	.size	TFlittlenan, 16
TFlittlenan:
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-32768
	.value	-1
	.align 2
	.type	XFbignan, @object
	.size	XFbignan, 12
XFbignan:
	.value	32767
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.align 2
	.type	XFlittlenan, @object
	.size	XFlittlenan, 12
XFlittlenan:
	.value	0
	.value	0
	.value	0
	.value	-16384
	.value	-1
	.value	0
	.align 2
	.type	DFbignan, @object
	.size	DFbignan, 8
DFbignan:
	.value	32767
	.value	-1
	.value	-1
	.value	-1
	.align 2
	.type	DFlittlenan, @object
	.size	DFlittlenan, 8
DFlittlenan:
	.value	0
	.value	0
	.value	0
	.value	-8
	.align 2
	.type	SFbignan, @object
	.size	SFbignan, 4
SFbignan:
	.value	32767
	.value	-1
	.align 2
	.type	SFlittlenan, @object
	.size	SFlittlenan, 4
SFlittlenan:
	.value	0
	.value	-64
	.text
	.type	make_nan, @function
make_nan:
.LFB88:
	.loc 1 6354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# nan, nan
	movl	%esi, -28(%rbp)	# sign, sign
	movl	%edx, -32(%rbp)	# mode, mode
	.loc 1 6358 0
	movl	-32(%rbp), %eax	# mode, tmp70
	subl	$13, %eax	#, tmp69
	cmpl	$5, %eax	#, tmp69
	ja	.L726	#,
	movl	%eax, %eax	# tmp69, tmp71
	movq	.L728(,%rax,8), %rax	#, tmp72
	jmp	*%rax	# tmp72
	.section	.rodata
	.align 8
	.align 4
.L728:
	.quad	.L727
	.quad	.L726
	.quad	.L727
	.quad	.L729
	.quad	.L730
	.quad	.L730
	.text
.L730:
	.loc 1 6375 0
	movl	$6, -12(%rbp)	#, n
	.loc 1 6379 0
	movq	$XFlittlenan, -8(%rbp)	#, p
	.loc 1 6380 0
	jmp	.L731	#
.L729:
	.loc 1 6383 0
	movl	$4, -12(%rbp)	#, n
	.loc 1 6387 0
	movq	$DFlittlenan, -8(%rbp)	#, p
	.loc 1 6388 0
	jmp	.L731	#
.L727:
	.loc 1 6392 0
	movl	$2, -12(%rbp)	#, n
	.loc 1 6396 0
	movq	$SFlittlenan, -8(%rbp)	#, p
	.loc 1 6397 0
	jmp	.L731	#
.L726:
	.loc 1 6401 0
	movl	$__FUNCTION__.10001, %edx	#,
	movl	$6401, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L731:
	.loc 1 6405 0
	jmp	.L732	#
.L733:
	.loc 1 6406 0
	movq	-24(%rbp), %rax	# nan, nan.188
	leaq	2(%rax), %rdx	#, tmp73
	movq	%rdx, -24(%rbp)	# tmp73, nan
	movq	-8(%rbp), %rdx	# p, p.189
	leaq	2(%rdx), %rcx	#, tmp74
	movq	%rcx, -8(%rbp)	# tmp74, p
	movzwl	(%rdx), %edx	# *p.189_17, D.12319
	movw	%dx, (%rax)	# D.12319, *nan.188_15
.L732:
	.loc 1 6405 0 discriminator 1
	subl	$1, -12(%rbp)	#, n
	cmpl	$0, -12(%rbp)	#, n
	jne	.L733	#,
	.loc 1 6408 0
	movl	-28(%rbp), %eax	# sign, tmp75
	sall	$15, %eax	#, D.12320
	movl	%eax, %edx	# D.12320, D.12321
	movq	-8(%rbp), %rax	# p, tmp76
	movzwl	(%rax), %eax	# *p_5, D.12319
	andw	$32767, %ax	#, D.12321
	orl	%edx, %eax	# D.12321, D.12321
	movl	%eax, %edx	# D.12321, D.12319
	movq	-24(%rbp), %rax	# nan, tmp77
	movw	%dx, (%rax)	# D.12319, *nan_1
	.loc 1 6409 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	make_nan, .-make_nan
	.globl	ereal_unto_float
	.type	ereal_unto_float, @function
ereal_unto_float:
.LFB89:
	.loc 1 6418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# f, f
	.loc 1 6432 0
	movq	-80(%rbp), %rax	# f, tmp62
	movw	%ax, -64(%rbp)	# D.12322, s
	.loc 1 6433 0
	movq	-80(%rbp), %rax	# f, tmp63
	sarq	$16, %rax	#, D.12323
	movw	%ax, -62(%rbp)	# D.12322, s
	.loc 1 6436 0
	leaq	-48(%rbp), %rdx	#, tmp64
	leaq	-64(%rbp), %rax	#, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	e24toe	#
	.loc 1 6438 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp66
	movq	%rax, -32(%rbp)	# tmp66, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp67
	movl	%eax, -24(%rbp)	# tmp67, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp68
	addq	$12, %rax	#, tmp69
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	memset	#
	.loc 1 6439 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp70
	movq	-32(%rbp), %rdx	# r, tmp71
	movq	%rdx, (%rax)	# tmp71, <retval>
	movq	-24(%rbp), %rdx	# r, tmp72
	movq	%rdx, 8(%rax)	# tmp72, <retval>
	movq	-16(%rbp), %rdx	# r, tmp73
	movq	%rdx, 16(%rax)	# tmp73, <retval>
	.loc 1 6440 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ereal_unto_float, .-ereal_unto_float
	.globl	ereal_unto_double
	.type	ereal_unto_double, @function
ereal_unto_double:
.LFB90:
	.loc 1 6449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# d, d
	.loc 1 6465 0
	movq	-80(%rbp), %rax	# d, tmp71
	movq	(%rax), %rax	# *d_1(D), D.12325
	movw	%ax, -64(%rbp)	# D.12326, s
	.loc 1 6466 0
	movq	-80(%rbp), %rax	# d, tmp72
	movq	(%rax), %rax	# *d_1(D), D.12325
	sarq	$16, %rax	#, D.12325
	movw	%ax, -62(%rbp)	# D.12326, s
	.loc 1 6467 0
	movq	-80(%rbp), %rax	# d, tmp73
	addq	$8, %rax	#, D.12327
	movq	(%rax), %rax	# *_7, D.12325
	movw	%ax, -60(%rbp)	# D.12326, s
	.loc 1 6468 0
	movq	-80(%rbp), %rax	# d, tmp74
	addq	$8, %rax	#, D.12327
	movq	(%rax), %rax	# *_10, D.12325
	sarq	$16, %rax	#, D.12325
	movw	%ax, -58(%rbp)	# D.12326, s
	.loc 1 6471 0
	leaq	-48(%rbp), %rdx	#, tmp75
	leaq	-64(%rbp), %rax	#, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	e53toe	#
	.loc 1 6473 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp77
	movq	%rax, -32(%rbp)	# tmp77, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp78
	movl	%eax, -24(%rbp)	# tmp78, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp79
	addq	$12, %rax	#, tmp80
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	memset	#
	.loc 1 6474 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp81
	movq	-32(%rbp), %rdx	# r, tmp82
	movq	%rdx, (%rax)	# tmp82, <retval>
	movq	-24(%rbp), %rdx	# r, tmp83
	movq	%rdx, 8(%rax)	# tmp83, <retval>
	movq	-16(%rbp), %rdx	# r, tmp84
	movq	%rdx, 16(%rax)	# tmp84, <retval>
	.loc 1 6475 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	ereal_unto_double, .-ereal_unto_double
	.globl	ereal_from_float
	.type	ereal_from_float, @function
ereal_from_float:
.LFB91:
	.loc 1 6485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# f, f
	.loc 1 6499 0
	movq	-80(%rbp), %rax	# f, tmp62
	movw	%ax, -64(%rbp)	# D.12329, s
	.loc 1 6500 0
	movq	-80(%rbp), %rax	# f, tmp63
	sarq	$16, %rax	#, D.12330
	movw	%ax, -62(%rbp)	# D.12329, s
	.loc 1 6503 0
	leaq	-48(%rbp), %rdx	#, tmp64
	leaq	-64(%rbp), %rax	#, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	e24toe	#
	.loc 1 6505 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp66
	movq	%rax, -32(%rbp)	# tmp66, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp67
	movl	%eax, -24(%rbp)	# tmp67, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp68
	addq	$12, %rax	#, tmp69
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	memset	#
	.loc 1 6506 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp70
	movq	-32(%rbp), %rdx	# r, tmp71
	movq	%rdx, (%rax)	# tmp71, <retval>
	movq	-24(%rbp), %rdx	# r, tmp72
	movq	%rdx, 8(%rax)	# tmp72, <retval>
	movq	-16(%rbp), %rdx	# r, tmp73
	movq	%rdx, 16(%rax)	# tmp73, <retval>
	.loc 1 6507 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ereal_from_float, .-ereal_from_float
	.globl	ereal_from_double
	.type	ereal_from_double, @function
ereal_from_double:
.LFB92:
	.loc 1 6522 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# d, d
	.loc 1 6548 0
	movq	-80(%rbp), %rax	# d, tmp70
	movq	(%rax), %rax	# *d_1(D), D.12332
	movw	%ax, -64(%rbp)	# D.12333, s
	.loc 1 6549 0
	movq	-80(%rbp), %rax	# d, tmp71
	movq	(%rax), %rax	# *d_1(D), D.12332
	sarq	$16, %rax	#, D.12332
	movw	%ax, -62(%rbp)	# D.12333, s
	.loc 1 6554 0
	movq	-80(%rbp), %rax	# d, tmp72
	movq	(%rax), %rax	# *d_1(D), D.12332
	sarq	$32, %rax	#, D.12332
	movw	%ax, -60(%rbp)	# D.12333, s
	.loc 1 6555 0
	movq	-80(%rbp), %rax	# d, tmp73
	movq	(%rax), %rax	# *d_1(D), D.12332
	sarq	$48, %rax	#, D.12332
	movw	%ax, -58(%rbp)	# D.12333, s
	.loc 1 6559 0
	leaq	-48(%rbp), %rdx	#, tmp74
	leaq	-64(%rbp), %rax	#, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	e53toe	#
	.loc 1 6561 0
	movq	-48(%rbp), %rax	# MEM[(char * {ref-all})&e], tmp76
	movq	%rax, -32(%rbp)	# tmp76, MEM[(char * {ref-all})&r]
	movl	-40(%rbp), %eax	# MEM[(char * {ref-all})&e], tmp77
	movl	%eax, -24(%rbp)	# tmp77, MEM[(char * {ref-all})&r]
	leaq	-32(%rbp), %rax	#, tmp78
	addq	$12, %rax	#, tmp79
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	memset	#
	.loc 1 6562 0
	movq	-72(%rbp), %rax	# .result_ptr, tmp80
	movq	-32(%rbp), %rdx	# r, tmp81
	movq	%rdx, (%rax)	# tmp81, <retval>
	movq	-24(%rbp), %rdx	# r, tmp82
	movq	%rdx, 8(%rax)	# tmp82, <retval>
	movq	-16(%rbp), %rdx	# r, tmp83
	movq	%rdx, 16(%rax)	# tmp83, <retval>
	.loc 1 6563 0
	movq	-72(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	ereal_from_double, .-ereal_from_double
	.globl	significand_size
	.type	significand_size, @function
significand_size:
.LFB93:
	.loc 1 6948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	.loc 1 6953 0
	movl	-4(%rbp), %eax	# mode, mode.190
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.12336
	movzwl	%ax, %eax	# D.12336, D.12337
	cmpl	$64, %eax	#, D.12337
	je	.L744	#,
	cmpl	$64, %eax	#, D.12337
	jg	.L745	#,
	cmpl	$32, %eax	#, D.12337
	je	.L746	#,
	jmp	.L743	#
.L745:
	cmpl	$96, %eax	#, D.12337
	je	.L747	#,
	cmpl	$128, %eax	#, D.12337
	je	.L748	#,
	jmp	.L743	#
.L746:
	.loc 1 6961 0
	movl	$24, %eax	#, D.12335
	jmp	.L749	#
.L744:
	.loc 1 6965 0
	movl	$53, %eax	#, D.12335
	jmp	.L749	#
.L747:
	.loc 1 6983 0
	movl	$64, %eax	#, D.12335
	jmp	.L749	#
.L748:
	.loc 1 6989 0
	movl	$64, %eax	#, D.12335
	jmp	.L749	#
.L743:
	.loc 1 6993 0
	movl	$__FUNCTION__.10037, %edx	#,
	movl	$6993, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L749:
	.loc 1 6995 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	significand_size, .-significand_size
	.section	.rodata
	.type	__FUNCTION__.9002, @object
	.size	__FUNCTION__.9002, 7
__FUNCTION__.9002:
	.string	"endian"
	.type	__FUNCTION__.9084, @object
	.size	__FUNCTION__.9084, 15
__FUNCTION__.9084:
	.string	"ereal_from_int"
	.align 16
	.type	__FUNCTION__.9101, @object
	.size	__FUNCTION__.9101, 16
__FUNCTION__.9101:
	.string	"ereal_from_uint"
	.type	__FUNCTION__.9795, @object
	.size	__FUNCTION__.9795, 7
__FUNCTION__.9795:
	.string	"etoasc"
	.type	__FUNCTION__.9978, @object
	.size	__FUNCTION__.9978, 7
__FUNCTION__.9978:
	.string	"mtherr"
	.type	__FUNCTION__.10001, @object
	.size	__FUNCTION__.10001, 9
__FUNCTION__.10001:
	.string	"make_nan"
	.align 16
	.type	__FUNCTION__.10037, @object
	.size	__FUNCTION__.10037, 17
__FUNCTION__.10037:
	.string	"significand_size"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "machmode.h"
	.file 6 "tree.h"
	.file 7 "real.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "./safe-ctype.h"
	.file 10 "libiberty.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x385c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF658
	.byte	0x1
	.long	.LASF659
	.long	.LASF660
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x44
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
	.long	0x2d
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
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x6b
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
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF661
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
	.long	0x2d
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
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0xd
	.long	0x95
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x313
	.uleb128 0xf
	.long	.LASF46
	.sleb128 1
	.uleb128 0xf
	.long	.LASF47
	.sleb128 2
	.uleb128 0xf
	.long	.LASF48
	.sleb128 4
	.uleb128 0xf
	.long	.LASF49
	.sleb128 8
	.uleb128 0xf
	.long	.LASF50
	.sleb128 16
	.uleb128 0xf
	.long	.LASF51
	.sleb128 32
	.uleb128 0xf
	.long	.LASF52
	.sleb128 64
	.uleb128 0xf
	.long	.LASF53
	.sleb128 128
	.uleb128 0xf
	.long	.LASF54
	.sleb128 256
	.uleb128 0xf
	.long	.LASF55
	.sleb128 512
	.uleb128 0xf
	.long	.LASF56
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF57
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF58
	.sleb128 136
	.uleb128 0xf
	.long	.LASF59
	.sleb128 140
	.uleb128 0xf
	.long	.LASF60
	.sleb128 516
	.uleb128 0xf
	.long	.LASF61
	.sleb128 172
	.uleb128 0xf
	.long	.LASF62
	.sleb128 3072
	.uleb128 0xf
	.long	.LASF63
	.sleb128 3088
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF64
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF65
	.uleb128 0x6
	.byte	0x8
	.long	0x327
	.uleb128 0xd
	.long	0x64
	.uleb128 0x10
	.long	.LASF126
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.long	0x4a1
	.uleb128 0xf
	.long	.LASF66
	.sleb128 0
	.uleb128 0xf
	.long	.LASF67
	.sleb128 1
	.uleb128 0xf
	.long	.LASF68
	.sleb128 2
	.uleb128 0xf
	.long	.LASF69
	.sleb128 3
	.uleb128 0xf
	.long	.LASF70
	.sleb128 4
	.uleb128 0xf
	.long	.LASF71
	.sleb128 5
	.uleb128 0xf
	.long	.LASF72
	.sleb128 6
	.uleb128 0xf
	.long	.LASF73
	.sleb128 7
	.uleb128 0xf
	.long	.LASF74
	.sleb128 8
	.uleb128 0xf
	.long	.LASF75
	.sleb128 9
	.uleb128 0xf
	.long	.LASF76
	.sleb128 10
	.uleb128 0xf
	.long	.LASF77
	.sleb128 11
	.uleb128 0xf
	.long	.LASF78
	.sleb128 12
	.uleb128 0xf
	.long	.LASF79
	.sleb128 13
	.uleb128 0xf
	.long	.LASF80
	.sleb128 14
	.uleb128 0xf
	.long	.LASF81
	.sleb128 15
	.uleb128 0xf
	.long	.LASF82
	.sleb128 16
	.uleb128 0xf
	.long	.LASF83
	.sleb128 17
	.uleb128 0xf
	.long	.LASF84
	.sleb128 18
	.uleb128 0xf
	.long	.LASF85
	.sleb128 19
	.uleb128 0xf
	.long	.LASF86
	.sleb128 20
	.uleb128 0xf
	.long	.LASF87
	.sleb128 21
	.uleb128 0xf
	.long	.LASF88
	.sleb128 22
	.uleb128 0xf
	.long	.LASF89
	.sleb128 23
	.uleb128 0xf
	.long	.LASF90
	.sleb128 24
	.uleb128 0xf
	.long	.LASF91
	.sleb128 25
	.uleb128 0xf
	.long	.LASF92
	.sleb128 26
	.uleb128 0xf
	.long	.LASF93
	.sleb128 27
	.uleb128 0xf
	.long	.LASF94
	.sleb128 28
	.uleb128 0xf
	.long	.LASF95
	.sleb128 29
	.uleb128 0xf
	.long	.LASF96
	.sleb128 30
	.uleb128 0xf
	.long	.LASF97
	.sleb128 31
	.uleb128 0xf
	.long	.LASF98
	.sleb128 32
	.uleb128 0xf
	.long	.LASF99
	.sleb128 33
	.uleb128 0xf
	.long	.LASF100
	.sleb128 34
	.uleb128 0xf
	.long	.LASF101
	.sleb128 35
	.uleb128 0xf
	.long	.LASF102
	.sleb128 36
	.uleb128 0xf
	.long	.LASF103
	.sleb128 37
	.uleb128 0xf
	.long	.LASF104
	.sleb128 38
	.uleb128 0xf
	.long	.LASF105
	.sleb128 39
	.uleb128 0xf
	.long	.LASF106
	.sleb128 40
	.uleb128 0xf
	.long	.LASF107
	.sleb128 41
	.uleb128 0xf
	.long	.LASF108
	.sleb128 42
	.uleb128 0xf
	.long	.LASF109
	.sleb128 43
	.uleb128 0xf
	.long	.LASF110
	.sleb128 44
	.uleb128 0xf
	.long	.LASF111
	.sleb128 45
	.uleb128 0xf
	.long	.LASF112
	.sleb128 46
	.uleb128 0xf
	.long	.LASF113
	.sleb128 47
	.uleb128 0xf
	.long	.LASF114
	.sleb128 48
	.uleb128 0xf
	.long	.LASF115
	.sleb128 49
	.uleb128 0xf
	.long	.LASF116
	.sleb128 50
	.uleb128 0xf
	.long	.LASF117
	.sleb128 51
	.uleb128 0xf
	.long	.LASF118
	.sleb128 52
	.uleb128 0xf
	.long	.LASF119
	.sleb128 53
	.uleb128 0xf
	.long	.LASF120
	.sleb128 54
	.uleb128 0xf
	.long	.LASF121
	.sleb128 55
	.uleb128 0xf
	.long	.LASF122
	.sleb128 56
	.uleb128 0xf
	.long	.LASF123
	.sleb128 57
	.uleb128 0xf
	.long	.LASF124
	.sleb128 58
	.uleb128 0xf
	.long	.LASF125
	.sleb128 59
	.byte	0
	.uleb128 0x10
	.long	.LASF127
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.long	0x4ea
	.uleb128 0xf
	.long	.LASF128
	.sleb128 0
	.uleb128 0xf
	.long	.LASF129
	.sleb128 1
	.uleb128 0xf
	.long	.LASF130
	.sleb128 2
	.uleb128 0xf
	.long	.LASF131
	.sleb128 3
	.uleb128 0xf
	.long	.LASF132
	.sleb128 4
	.uleb128 0xf
	.long	.LASF133
	.sleb128 5
	.uleb128 0xf
	.long	.LASF134
	.sleb128 6
	.uleb128 0xf
	.long	.LASF135
	.sleb128 7
	.uleb128 0xf
	.long	.LASF136
	.sleb128 8
	.uleb128 0xf
	.long	.LASF137
	.sleb128 9
	.byte	0
	.uleb128 0x10
	.long	.LASF138
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x8c3
	.uleb128 0xf
	.long	.LASF139
	.sleb128 0
	.uleb128 0xf
	.long	.LASF140
	.sleb128 1
	.uleb128 0xf
	.long	.LASF141
	.sleb128 2
	.uleb128 0xf
	.long	.LASF142
	.sleb128 3
	.uleb128 0xf
	.long	.LASF143
	.sleb128 4
	.uleb128 0xf
	.long	.LASF144
	.sleb128 5
	.uleb128 0xf
	.long	.LASF145
	.sleb128 6
	.uleb128 0xf
	.long	.LASF146
	.sleb128 7
	.uleb128 0xf
	.long	.LASF147
	.sleb128 8
	.uleb128 0xf
	.long	.LASF148
	.sleb128 9
	.uleb128 0xf
	.long	.LASF149
	.sleb128 10
	.uleb128 0xf
	.long	.LASF150
	.sleb128 11
	.uleb128 0xf
	.long	.LASF151
	.sleb128 12
	.uleb128 0xf
	.long	.LASF152
	.sleb128 13
	.uleb128 0xf
	.long	.LASF153
	.sleb128 14
	.uleb128 0xf
	.long	.LASF154
	.sleb128 15
	.uleb128 0xf
	.long	.LASF155
	.sleb128 16
	.uleb128 0xf
	.long	.LASF156
	.sleb128 17
	.uleb128 0xf
	.long	.LASF157
	.sleb128 18
	.uleb128 0xf
	.long	.LASF158
	.sleb128 19
	.uleb128 0xf
	.long	.LASF159
	.sleb128 20
	.uleb128 0xf
	.long	.LASF160
	.sleb128 21
	.uleb128 0xf
	.long	.LASF161
	.sleb128 22
	.uleb128 0xf
	.long	.LASF162
	.sleb128 23
	.uleb128 0xf
	.long	.LASF163
	.sleb128 24
	.uleb128 0xf
	.long	.LASF164
	.sleb128 25
	.uleb128 0xf
	.long	.LASF165
	.sleb128 26
	.uleb128 0xf
	.long	.LASF166
	.sleb128 27
	.uleb128 0xf
	.long	.LASF167
	.sleb128 28
	.uleb128 0xf
	.long	.LASF168
	.sleb128 29
	.uleb128 0xf
	.long	.LASF169
	.sleb128 30
	.uleb128 0xf
	.long	.LASF170
	.sleb128 31
	.uleb128 0xf
	.long	.LASF171
	.sleb128 32
	.uleb128 0xf
	.long	.LASF172
	.sleb128 33
	.uleb128 0xf
	.long	.LASF173
	.sleb128 34
	.uleb128 0xf
	.long	.LASF174
	.sleb128 35
	.uleb128 0xf
	.long	.LASF175
	.sleb128 36
	.uleb128 0xf
	.long	.LASF176
	.sleb128 37
	.uleb128 0xf
	.long	.LASF177
	.sleb128 38
	.uleb128 0xf
	.long	.LASF178
	.sleb128 39
	.uleb128 0xf
	.long	.LASF179
	.sleb128 40
	.uleb128 0xf
	.long	.LASF180
	.sleb128 41
	.uleb128 0xf
	.long	.LASF181
	.sleb128 42
	.uleb128 0xf
	.long	.LASF182
	.sleb128 43
	.uleb128 0xf
	.long	.LASF183
	.sleb128 44
	.uleb128 0xf
	.long	.LASF184
	.sleb128 45
	.uleb128 0xf
	.long	.LASF185
	.sleb128 46
	.uleb128 0xf
	.long	.LASF186
	.sleb128 47
	.uleb128 0xf
	.long	.LASF187
	.sleb128 48
	.uleb128 0xf
	.long	.LASF188
	.sleb128 49
	.uleb128 0xf
	.long	.LASF189
	.sleb128 50
	.uleb128 0xf
	.long	.LASF190
	.sleb128 51
	.uleb128 0xf
	.long	.LASF191
	.sleb128 52
	.uleb128 0xf
	.long	.LASF192
	.sleb128 53
	.uleb128 0xf
	.long	.LASF193
	.sleb128 54
	.uleb128 0xf
	.long	.LASF194
	.sleb128 55
	.uleb128 0xf
	.long	.LASF195
	.sleb128 56
	.uleb128 0xf
	.long	.LASF196
	.sleb128 57
	.uleb128 0xf
	.long	.LASF197
	.sleb128 58
	.uleb128 0xf
	.long	.LASF198
	.sleb128 59
	.uleb128 0xf
	.long	.LASF199
	.sleb128 60
	.uleb128 0xf
	.long	.LASF200
	.sleb128 61
	.uleb128 0xf
	.long	.LASF201
	.sleb128 62
	.uleb128 0xf
	.long	.LASF202
	.sleb128 63
	.uleb128 0xf
	.long	.LASF203
	.sleb128 64
	.uleb128 0xf
	.long	.LASF204
	.sleb128 65
	.uleb128 0xf
	.long	.LASF205
	.sleb128 66
	.uleb128 0xf
	.long	.LASF206
	.sleb128 67
	.uleb128 0xf
	.long	.LASF207
	.sleb128 68
	.uleb128 0xf
	.long	.LASF208
	.sleb128 69
	.uleb128 0xf
	.long	.LASF209
	.sleb128 70
	.uleb128 0xf
	.long	.LASF210
	.sleb128 71
	.uleb128 0xf
	.long	.LASF211
	.sleb128 72
	.uleb128 0xf
	.long	.LASF212
	.sleb128 73
	.uleb128 0xf
	.long	.LASF213
	.sleb128 74
	.uleb128 0xf
	.long	.LASF214
	.sleb128 75
	.uleb128 0xf
	.long	.LASF215
	.sleb128 76
	.uleb128 0xf
	.long	.LASF216
	.sleb128 77
	.uleb128 0xf
	.long	.LASF217
	.sleb128 78
	.uleb128 0xf
	.long	.LASF218
	.sleb128 79
	.uleb128 0xf
	.long	.LASF219
	.sleb128 80
	.uleb128 0xf
	.long	.LASF220
	.sleb128 81
	.uleb128 0xf
	.long	.LASF221
	.sleb128 82
	.uleb128 0xf
	.long	.LASF222
	.sleb128 83
	.uleb128 0xf
	.long	.LASF223
	.sleb128 84
	.uleb128 0xf
	.long	.LASF224
	.sleb128 85
	.uleb128 0xf
	.long	.LASF225
	.sleb128 86
	.uleb128 0xf
	.long	.LASF226
	.sleb128 87
	.uleb128 0xf
	.long	.LASF227
	.sleb128 88
	.uleb128 0xf
	.long	.LASF228
	.sleb128 89
	.uleb128 0xf
	.long	.LASF229
	.sleb128 90
	.uleb128 0xf
	.long	.LASF230
	.sleb128 91
	.uleb128 0xf
	.long	.LASF231
	.sleb128 92
	.uleb128 0xf
	.long	.LASF232
	.sleb128 93
	.uleb128 0xf
	.long	.LASF233
	.sleb128 94
	.uleb128 0xf
	.long	.LASF234
	.sleb128 95
	.uleb128 0xf
	.long	.LASF235
	.sleb128 96
	.uleb128 0xf
	.long	.LASF236
	.sleb128 97
	.uleb128 0xf
	.long	.LASF237
	.sleb128 98
	.uleb128 0xf
	.long	.LASF238
	.sleb128 99
	.uleb128 0xf
	.long	.LASF239
	.sleb128 100
	.uleb128 0xf
	.long	.LASF240
	.sleb128 101
	.uleb128 0xf
	.long	.LASF241
	.sleb128 102
	.uleb128 0xf
	.long	.LASF242
	.sleb128 103
	.uleb128 0xf
	.long	.LASF243
	.sleb128 104
	.uleb128 0xf
	.long	.LASF244
	.sleb128 105
	.uleb128 0xf
	.long	.LASF245
	.sleb128 106
	.uleb128 0xf
	.long	.LASF246
	.sleb128 107
	.uleb128 0xf
	.long	.LASF247
	.sleb128 108
	.uleb128 0xf
	.long	.LASF248
	.sleb128 109
	.uleb128 0xf
	.long	.LASF249
	.sleb128 110
	.uleb128 0xf
	.long	.LASF250
	.sleb128 111
	.uleb128 0xf
	.long	.LASF251
	.sleb128 112
	.uleb128 0xf
	.long	.LASF252
	.sleb128 113
	.uleb128 0xf
	.long	.LASF253
	.sleb128 114
	.uleb128 0xf
	.long	.LASF254
	.sleb128 115
	.uleb128 0xf
	.long	.LASF255
	.sleb128 116
	.uleb128 0xf
	.long	.LASF256
	.sleb128 117
	.uleb128 0xf
	.long	.LASF257
	.sleb128 118
	.uleb128 0xf
	.long	.LASF258
	.sleb128 119
	.uleb128 0xf
	.long	.LASF259
	.sleb128 120
	.uleb128 0xf
	.long	.LASF260
	.sleb128 121
	.uleb128 0xf
	.long	.LASF261
	.sleb128 122
	.uleb128 0xf
	.long	.LASF262
	.sleb128 123
	.uleb128 0xf
	.long	.LASF263
	.sleb128 124
	.uleb128 0xf
	.long	.LASF264
	.sleb128 125
	.uleb128 0xf
	.long	.LASF265
	.sleb128 126
	.uleb128 0xf
	.long	.LASF266
	.sleb128 127
	.uleb128 0xf
	.long	.LASF267
	.sleb128 128
	.uleb128 0xf
	.long	.LASF268
	.sleb128 129
	.uleb128 0xf
	.long	.LASF269
	.sleb128 130
	.uleb128 0xf
	.long	.LASF270
	.sleb128 131
	.uleb128 0xf
	.long	.LASF271
	.sleb128 132
	.uleb128 0xf
	.long	.LASF272
	.sleb128 133
	.uleb128 0xf
	.long	.LASF273
	.sleb128 134
	.uleb128 0xf
	.long	.LASF274
	.sleb128 135
	.uleb128 0xf
	.long	.LASF275
	.sleb128 136
	.uleb128 0xf
	.long	.LASF276
	.sleb128 137
	.uleb128 0xf
	.long	.LASF277
	.sleb128 138
	.uleb128 0xf
	.long	.LASF278
	.sleb128 139
	.uleb128 0xf
	.long	.LASF279
	.sleb128 140
	.uleb128 0xf
	.long	.LASF280
	.sleb128 141
	.uleb128 0xf
	.long	.LASF281
	.sleb128 142
	.uleb128 0xf
	.long	.LASF282
	.sleb128 143
	.uleb128 0xf
	.long	.LASF283
	.sleb128 144
	.uleb128 0xf
	.long	.LASF284
	.sleb128 145
	.uleb128 0xf
	.long	.LASF285
	.sleb128 146
	.uleb128 0xf
	.long	.LASF286
	.sleb128 147
	.byte	0
	.uleb128 0x10
	.long	.LASF287
	.byte	0x4
	.byte	0x6
	.byte	0x54
	.long	0xb30
	.uleb128 0xf
	.long	.LASF288
	.sleb128 0
	.uleb128 0xf
	.long	.LASF289
	.sleb128 1
	.uleb128 0xf
	.long	.LASF290
	.sleb128 2
	.uleb128 0xf
	.long	.LASF291
	.sleb128 3
	.uleb128 0xf
	.long	.LASF292
	.sleb128 4
	.uleb128 0xf
	.long	.LASF293
	.sleb128 5
	.uleb128 0xf
	.long	.LASF294
	.sleb128 6
	.uleb128 0xf
	.long	.LASF295
	.sleb128 7
	.uleb128 0xf
	.long	.LASF296
	.sleb128 8
	.uleb128 0xf
	.long	.LASF297
	.sleb128 9
	.uleb128 0xf
	.long	.LASF298
	.sleb128 10
	.uleb128 0xf
	.long	.LASF299
	.sleb128 11
	.uleb128 0xf
	.long	.LASF300
	.sleb128 12
	.uleb128 0xf
	.long	.LASF301
	.sleb128 13
	.uleb128 0xf
	.long	.LASF302
	.sleb128 14
	.uleb128 0xf
	.long	.LASF303
	.sleb128 15
	.uleb128 0xf
	.long	.LASF304
	.sleb128 16
	.uleb128 0xf
	.long	.LASF305
	.sleb128 17
	.uleb128 0xf
	.long	.LASF306
	.sleb128 18
	.uleb128 0xf
	.long	.LASF307
	.sleb128 19
	.uleb128 0xf
	.long	.LASF308
	.sleb128 20
	.uleb128 0xf
	.long	.LASF309
	.sleb128 21
	.uleb128 0xf
	.long	.LASF310
	.sleb128 22
	.uleb128 0xf
	.long	.LASF311
	.sleb128 23
	.uleb128 0xf
	.long	.LASF312
	.sleb128 24
	.uleb128 0xf
	.long	.LASF313
	.sleb128 25
	.uleb128 0xf
	.long	.LASF314
	.sleb128 26
	.uleb128 0xf
	.long	.LASF315
	.sleb128 27
	.uleb128 0xf
	.long	.LASF316
	.sleb128 28
	.uleb128 0xf
	.long	.LASF317
	.sleb128 29
	.uleb128 0xf
	.long	.LASF318
	.sleb128 30
	.uleb128 0xf
	.long	.LASF319
	.sleb128 31
	.uleb128 0xf
	.long	.LASF320
	.sleb128 32
	.uleb128 0xf
	.long	.LASF321
	.sleb128 33
	.uleb128 0xf
	.long	.LASF322
	.sleb128 34
	.uleb128 0xf
	.long	.LASF323
	.sleb128 35
	.uleb128 0xf
	.long	.LASF324
	.sleb128 36
	.uleb128 0xf
	.long	.LASF325
	.sleb128 37
	.uleb128 0xf
	.long	.LASF326
	.sleb128 38
	.uleb128 0xf
	.long	.LASF327
	.sleb128 39
	.uleb128 0xf
	.long	.LASF328
	.sleb128 40
	.uleb128 0xf
	.long	.LASF329
	.sleb128 41
	.uleb128 0xf
	.long	.LASF330
	.sleb128 42
	.uleb128 0xf
	.long	.LASF331
	.sleb128 43
	.uleb128 0xf
	.long	.LASF332
	.sleb128 44
	.uleb128 0xf
	.long	.LASF333
	.sleb128 45
	.uleb128 0xf
	.long	.LASF334
	.sleb128 46
	.uleb128 0xf
	.long	.LASF335
	.sleb128 47
	.uleb128 0xf
	.long	.LASF336
	.sleb128 48
	.uleb128 0xf
	.long	.LASF337
	.sleb128 49
	.uleb128 0xf
	.long	.LASF338
	.sleb128 50
	.uleb128 0xf
	.long	.LASF339
	.sleb128 51
	.uleb128 0xf
	.long	.LASF340
	.sleb128 52
	.uleb128 0xf
	.long	.LASF341
	.sleb128 53
	.uleb128 0xf
	.long	.LASF342
	.sleb128 54
	.uleb128 0xf
	.long	.LASF343
	.sleb128 55
	.uleb128 0xf
	.long	.LASF344
	.sleb128 56
	.uleb128 0xf
	.long	.LASF345
	.sleb128 57
	.uleb128 0xf
	.long	.LASF346
	.sleb128 58
	.uleb128 0xf
	.long	.LASF347
	.sleb128 59
	.uleb128 0xf
	.long	.LASF348
	.sleb128 60
	.uleb128 0xf
	.long	.LASF349
	.sleb128 61
	.uleb128 0xf
	.long	.LASF350
	.sleb128 62
	.uleb128 0xf
	.long	.LASF351
	.sleb128 63
	.uleb128 0xf
	.long	.LASF352
	.sleb128 64
	.uleb128 0xf
	.long	.LASF353
	.sleb128 65
	.uleb128 0xf
	.long	.LASF354
	.sleb128 66
	.uleb128 0xf
	.long	.LASF355
	.sleb128 67
	.uleb128 0xf
	.long	.LASF356
	.sleb128 68
	.uleb128 0xf
	.long	.LASF357
	.sleb128 69
	.uleb128 0xf
	.long	.LASF358
	.sleb128 70
	.uleb128 0xf
	.long	.LASF359
	.sleb128 71
	.uleb128 0xf
	.long	.LASF360
	.sleb128 72
	.uleb128 0xf
	.long	.LASF361
	.sleb128 73
	.uleb128 0xf
	.long	.LASF362
	.sleb128 74
	.uleb128 0xf
	.long	.LASF363
	.sleb128 75
	.uleb128 0xf
	.long	.LASF364
	.sleb128 76
	.uleb128 0xf
	.long	.LASF365
	.sleb128 77
	.uleb128 0xf
	.long	.LASF366
	.sleb128 78
	.uleb128 0xf
	.long	.LASF367
	.sleb128 79
	.uleb128 0xf
	.long	.LASF368
	.sleb128 80
	.uleb128 0xf
	.long	.LASF369
	.sleb128 81
	.uleb128 0xf
	.long	.LASF370
	.sleb128 82
	.uleb128 0xf
	.long	.LASF371
	.sleb128 83
	.uleb128 0xf
	.long	.LASF372
	.sleb128 84
	.uleb128 0xf
	.long	.LASF373
	.sleb128 85
	.uleb128 0xf
	.long	.LASF374
	.sleb128 86
	.uleb128 0xf
	.long	.LASF375
	.sleb128 87
	.uleb128 0xf
	.long	.LASF376
	.sleb128 88
	.uleb128 0xf
	.long	.LASF377
	.sleb128 89
	.uleb128 0xf
	.long	.LASF378
	.sleb128 90
	.uleb128 0xf
	.long	.LASF379
	.sleb128 91
	.uleb128 0xf
	.long	.LASF380
	.sleb128 92
	.uleb128 0xf
	.long	.LASF381
	.sleb128 93
	.uleb128 0xf
	.long	.LASF382
	.sleb128 94
	.uleb128 0xf
	.long	.LASF383
	.sleb128 95
	.byte	0
	.uleb128 0x11
	.byte	0x18
	.byte	0x7
	.byte	0x6b
	.long	0xb43
	.uleb128 0x12
	.string	"r"
	.byte	0x7
	.byte	0x6c
	.long	0xb43
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x44
	.long	0xb53
	.uleb128 0xc
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF384
	.byte	0x7
	.byte	0x6d
	.long	0xb30
	.uleb128 0x13
	.long	.LASF385
	.byte	0x4
	.byte	0x6
	.value	0x757
	.long	0xca4
	.uleb128 0xf
	.long	.LASF386
	.sleb128 0
	.uleb128 0xf
	.long	.LASF387
	.sleb128 1
	.uleb128 0xf
	.long	.LASF388
	.sleb128 2
	.uleb128 0xf
	.long	.LASF389
	.sleb128 3
	.uleb128 0xf
	.long	.LASF390
	.sleb128 4
	.uleb128 0xf
	.long	.LASF391
	.sleb128 5
	.uleb128 0xf
	.long	.LASF392
	.sleb128 6
	.uleb128 0xf
	.long	.LASF393
	.sleb128 7
	.uleb128 0xf
	.long	.LASF394
	.sleb128 8
	.uleb128 0xf
	.long	.LASF395
	.sleb128 9
	.uleb128 0xf
	.long	.LASF396
	.sleb128 10
	.uleb128 0xf
	.long	.LASF397
	.sleb128 11
	.uleb128 0xf
	.long	.LASF398
	.sleb128 12
	.uleb128 0xf
	.long	.LASF399
	.sleb128 13
	.uleb128 0xf
	.long	.LASF400
	.sleb128 14
	.uleb128 0xf
	.long	.LASF401
	.sleb128 15
	.uleb128 0xf
	.long	.LASF402
	.sleb128 16
	.uleb128 0xf
	.long	.LASF403
	.sleb128 17
	.uleb128 0xf
	.long	.LASF404
	.sleb128 18
	.uleb128 0xf
	.long	.LASF405
	.sleb128 19
	.uleb128 0xf
	.long	.LASF406
	.sleb128 20
	.uleb128 0xf
	.long	.LASF407
	.sleb128 21
	.uleb128 0xf
	.long	.LASF408
	.sleb128 22
	.uleb128 0xf
	.long	.LASF409
	.sleb128 23
	.uleb128 0xf
	.long	.LASF410
	.sleb128 24
	.uleb128 0xf
	.long	.LASF411
	.sleb128 25
	.uleb128 0xf
	.long	.LASF412
	.sleb128 26
	.uleb128 0xf
	.long	.LASF413
	.sleb128 27
	.uleb128 0xf
	.long	.LASF414
	.sleb128 28
	.uleb128 0xf
	.long	.LASF415
	.sleb128 29
	.uleb128 0xf
	.long	.LASF416
	.sleb128 30
	.uleb128 0xf
	.long	.LASF417
	.sleb128 31
	.uleb128 0xf
	.long	.LASF418
	.sleb128 32
	.uleb128 0xf
	.long	.LASF419
	.sleb128 33
	.uleb128 0xf
	.long	.LASF420
	.sleb128 34
	.uleb128 0xf
	.long	.LASF421
	.sleb128 35
	.uleb128 0xf
	.long	.LASF422
	.sleb128 36
	.uleb128 0xf
	.long	.LASF423
	.sleb128 37
	.uleb128 0xf
	.long	.LASF424
	.sleb128 38
	.uleb128 0xf
	.long	.LASF425
	.sleb128 39
	.uleb128 0xf
	.long	.LASF426
	.sleb128 40
	.uleb128 0xf
	.long	.LASF427
	.sleb128 41
	.uleb128 0xf
	.long	.LASF428
	.sleb128 42
	.uleb128 0xf
	.long	.LASF429
	.sleb128 43
	.uleb128 0xf
	.long	.LASF430
	.sleb128 44
	.uleb128 0xf
	.long	.LASF431
	.sleb128 45
	.uleb128 0xf
	.long	.LASF432
	.sleb128 46
	.uleb128 0xf
	.long	.LASF433
	.sleb128 47
	.uleb128 0xf
	.long	.LASF434
	.sleb128 48
	.uleb128 0xf
	.long	.LASF435
	.sleb128 49
	.uleb128 0xf
	.long	.LASF436
	.sleb128 50
	.uleb128 0xf
	.long	.LASF437
	.sleb128 51
	.byte	0
	.uleb128 0x13
	.long	.LASF438
	.byte	0x4
	.byte	0x6
	.value	0x7e4
	.long	0xcfa
	.uleb128 0xf
	.long	.LASF439
	.sleb128 0
	.uleb128 0xf
	.long	.LASF440
	.sleb128 1
	.uleb128 0xf
	.long	.LASF441
	.sleb128 2
	.uleb128 0xf
	.long	.LASF442
	.sleb128 3
	.uleb128 0xf
	.long	.LASF443
	.sleb128 4
	.uleb128 0xf
	.long	.LASF444
	.sleb128 5
	.uleb128 0xf
	.long	.LASF445
	.sleb128 6
	.uleb128 0xf
	.long	.LASF446
	.sleb128 7
	.uleb128 0xf
	.long	.LASF447
	.sleb128 8
	.uleb128 0xf
	.long	.LASF448
	.sleb128 9
	.uleb128 0xf
	.long	.LASF449
	.sleb128 10
	.uleb128 0xf
	.long	.LASF450
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF451
	.uleb128 0x13
	.long	.LASF452
	.byte	0x4
	.byte	0x6
	.value	0x972
	.long	0xd39
	.uleb128 0xf
	.long	.LASF453
	.sleb128 0
	.uleb128 0xf
	.long	.LASF454
	.sleb128 1
	.uleb128 0xf
	.long	.LASF455
	.sleb128 2
	.uleb128 0xf
	.long	.LASF456
	.sleb128 3
	.uleb128 0xf
	.long	.LASF457
	.sleb128 4
	.uleb128 0xf
	.long	.LASF458
	.sleb128 5
	.uleb128 0xf
	.long	.LASF459
	.sleb128 6
	.byte	0
	.uleb128 0x14
	.long	.LASF494
	.byte	0x1
	.value	0x1ff
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xdaf
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.value	0x200
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x201
	.long	0xdaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x202
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"th"
	.byte	0x1
	.value	0x204
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.value	0x204
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF474
	.long	0xdc5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9002
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x44
	.uleb128 0xb
	.long	0x95
	.long	0xdc5
	.uleb128 0xc
	.long	0x34
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0xdb5
	.uleb128 0x19
	.long	.LASF470
	.byte	0x1
	.value	0x26a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xe60
	.uleb128 0x16
	.long	.LASF461
	.byte	0x1
	.value	0x26b
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF462
	.byte	0x1
	.value	0x26c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.string	"r1"
	.byte	0x1
	.value	0x26d
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.string	"r2"
	.byte	0x1
	.value	0x26e
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"d1"
	.byte	0x1
	.value	0x270
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"d2"
	.byte	0x1
	.value	0x270
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"v"
	.byte	0x1
	.value	0x270
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF463
	.byte	0x1
	.value	0x271
	.long	0x4ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb53
	.uleb128 0xb
	.long	0x64
	.long	0xe76
	.uleb128 0xc
	.long	0x34
	.byte	0x5
	.byte	0
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x1
	.value	0x2b9
	.long	0xb53
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xedc
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x2ba
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x2bc
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x2bc
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x2bd
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.value	0x2be
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x1
	.value	0x2d0
	.long	0xb53
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xf42
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x2d1
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x2d3
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x2d3
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x2d4
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.value	0x2d5
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x1
	.value	0x2e8
	.long	0xb53
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xfab
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x2e9
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.value	0x2ea
	.long	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"tem"
	.byte	0x1
	.value	0x2ec
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x2ec
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x2ed
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x1
	.value	0x31d
	.long	0xb53
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xff5
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x31e
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x320
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x321
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x1
	.value	0x32e
	.long	0x44
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x104c
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x32f
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x331
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x331
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.value	0x332
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x1
	.value	0x345
	.long	0x56
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a3
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x346
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x348
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x348
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.value	0x349
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x19
	.long	.LASF471
	.byte	0x1
	.value	0x35b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1159
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.value	0x35c
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x35d
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x35d
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x35e
	.long	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.string	"df"
	.byte	0x1
	.value	0x360
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"dg"
	.byte	0x1
	.value	0x360
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"low"
	.byte	0x1
	.value	0x361
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF472
	.byte	0x1
	.value	0x361
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x1
	.value	0x362
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.long	.LASF474
	.long	0x1169
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9084
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1169
	.uleb128 0xc
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	0x1159
	.uleb128 0x19
	.long	.LASF475
	.byte	0x1
	.value	0x3a3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1214
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.value	0x3a4
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x3a5
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x3a5
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x3a6
	.long	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.string	"df"
	.byte	0x1
	.value	0x3a8
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"dg"
	.byte	0x1
	.value	0x3a8
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"low"
	.byte	0x1
	.value	0x3a9
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF472
	.byte	0x1
	.value	0x3a9
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF474
	.long	0x1224
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9101
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1224
	.uleb128 0xc
	.long	0x34
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	0x1214
	.uleb128 0x19
	.long	.LASF476
	.byte	0x1
	.value	0x3de
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x12bc
	.uleb128 0x15
	.string	"low"
	.byte	0x1
	.value	0x3df
	.long	0xdaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.long	.LASF472
	.byte	0x1
	.value	0x3df
	.long	0xdaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.string	"rr"
	.byte	0x1
	.value	0x3e0
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.value	0x3e2
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"df"
	.byte	0x1
	.value	0x3e2
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"dg"
	.byte	0x1
	.value	0x3e2
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"dh"
	.byte	0x1
	.value	0x3e2
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x3e3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x1
	.value	0x40a
	.long	0xb53
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1322
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x40b
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x40c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x40e
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x40e
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x40f
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.long	.LASF478
	.byte	0x1
	.value	0x423
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x135f
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x424
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x427
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF479
	.byte	0x1
	.value	0x433
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x139c
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x434
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x437
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF480
	.byte	0x1
	.value	0x445
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x13cc
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x446
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LASF481
	.byte	0x1
	.value	0x44f
	.long	0xb53
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1436
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x450
	.long	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.value	0x451
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x453
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.value	0x453
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x454
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.long	.LASF482
	.byte	0x1
	.value	0x493
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b1
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x494
	.long	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x495
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x497
	.long	0xe66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF483
	.byte	0x1
	.value	0x497
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF484
	.byte	0x1
	.value	0x498
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x499
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x19
	.long	.LASF485
	.byte	0x1
	.value	0x4d3
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ec
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x4d4
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF486
	.byte	0x1
	.value	0x4d6
	.long	0x14ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x14fc
	.uleb128 0xc
	.long	0x34
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.long	.LASF487
	.byte	0x1
	.value	0x4ec
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1542
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x4ed
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x4ee
	.long	0xdaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x4f0
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF488
	.byte	0x1
	.value	0x500
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1588
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x501
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x502
	.long	0xdaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x504
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF489
	.byte	0x1
	.value	0x50f
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ce
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x510
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x511
	.long	0xdaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x513
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF490
	.byte	0x1
	.value	0x51e
	.long	0x44
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1618
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.value	0x51f
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x521
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.value	0x522
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF491
	.byte	0x1
	.value	0x530
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x165e
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x531
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x532
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x534
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF492
	.byte	0x1
	.value	0x53e
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x16b7
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x53f
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x53f
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.string	"ex"
	.byte	0x1
	.value	0x541
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ey"
	.byte	0x1
	.value	0x541
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF493
	.byte	0x1
	.value	0x54b
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f5
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x54c
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"ex"
	.byte	0x1
	.value	0x54e
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF495
	.byte	0x1
	.value	0x64c
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x172e
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x64d
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x64f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64
	.uleb128 0x1c
	.long	.LASF496
	.byte	0x1
	.value	0x658
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x177a
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x659
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x65a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x65c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF497
	.byte	0x1
	.value	0x672
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x17a6
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x673
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF498
	.byte	0x1
	.value	0x67c
	.long	0x2d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d6
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x67d
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x1
	.value	0x689
	.long	0x2d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1806
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x68a
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF500
	.byte	0x1
	.value	0x69b
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1843
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x69c
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x69f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF501
	.byte	0x1
	.value	0x6b3
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x187c
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x6b4
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x6b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF502
	.byte	0x1
	.value	0x6df
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c4
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x6e0
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF473
	.byte	0x1
	.value	0x6e1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x6e3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF503
	.byte	0x1
	.value	0x6ef
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1924
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x6f0
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x6f1
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x6f3
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0x6f4
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x6f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF504
	.byte	0x1
	.value	0x720
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1991
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x721
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x722
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x724
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0x725
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x726
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x727
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.long	.LASF505
	.byte	0x1
	.value	0x749
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x19cb
	.uleb128 0x15
	.string	"xi"
	.byte	0x1
	.value	0x74a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x74c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF506
	.byte	0x1
	.value	0x755
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a05
	.uleb128 0x15
	.string	"xi"
	.byte	0x1
	.value	0x756
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x758
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF507
	.byte	0x1
	.value	0x762
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a4b
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x763
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x764
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x766
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF508
	.byte	0x1
	.value	0x774
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a77
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x775
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF509
	.byte	0x1
	.value	0x782
	.long	0x2d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab4
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x783
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x785
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF510
	.byte	0x1
	.value	0x797
	.long	0x2d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae4
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x798
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x1
	.value	0x7b1
	.long	0x2d
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b14
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x7b2
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF512
	.byte	0x1
	.value	0x7c7
	.long	0x2d
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6e
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x7c8
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x7c8
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x7ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LASF537
	.byte	0x1
	.value	0x7d5
	.quad	.L200
	.byte	0
	.uleb128 0x1c
	.long	.LASF513
	.byte	0x1
	.value	0x7df
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb6
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x7e0
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF514
	.byte	0x1
	.value	0x7e2
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x7e3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF515
	.byte	0x1
	.value	0x7f7
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bfe
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x7f8
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF514
	.byte	0x1
	.value	0x7fa
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x7fb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF516
	.byte	0x1
	.value	0x810
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c55
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x811
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF517
	.byte	0x1
	.value	0x813
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.long	.LASF518
	.byte	0x1
	.value	0x813
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x814
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF519
	.byte	0x1
	.value	0x825
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cac
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x826
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x828
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF517
	.byte	0x1
	.value	0x829
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.long	.LASF518
	.byte	0x1
	.value	0x829
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF520
	.byte	0x1
	.value	0x83b
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf2
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x83c
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x83e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x83f
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF521
	.byte	0x1
	.value	0x84d
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d38
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x84e
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x850
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x851
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF522
	.byte	0x1
	.value	0x85f
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9a
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x860
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x861
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x863
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x864
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x865
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF524
	.byte	0x1
	.value	0x87a
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dfc
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x87b
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x87c
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x87e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x87f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x880
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF525
	.byte	0x1
	.value	0x933
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea9
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x934
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x935
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x936
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"pp"
	.byte	0x1
	.value	0x938
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x939
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"ps"
	.byte	0x1
	.value	0x93a
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x93b
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"aa"
	.byte	0x1
	.value	0x93c
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.value	0x93c
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x93d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xb
	.long	0x64
	.long	0x1eb9
	.uleb128 0xc
	.long	0x34
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x1
	.value	0x960
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f64
	.uleb128 0x15
	.string	"den"
	.byte	0x1
	.value	0x961
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.value	0x962
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x964
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x965
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF527
	.byte	0x1
	.value	0x966
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x967
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x1a
	.long	.LASF528
	.byte	0x1
	.value	0x967
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x1a
	.long	.LASF529
	.byte	0x1
	.value	0x967
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.long	.LASF530
	.byte	0x1
	.value	0x968
	.long	0x1f64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xb
	.long	0x64
	.long	0x1f74
	.uleb128 0xc
	.long	0x34
	.byte	0x9
	.byte	0
	.uleb128 0x1e
	.long	.LASF531
	.byte	0x1
	.value	0x9a2
	.long	0x2d
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff8
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x9a3
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x9a4
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x9a6
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0x9a7
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF532
	.byte	0x1
	.value	0x9a8
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x9a9
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x9aa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x14
	.long	.LASF533
	.byte	0x1
	.value	0x9f0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a7
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9f1
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF534
	.byte	0x1
	.value	0x9f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LASF535
	.byte	0x1
	.value	0x9f3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"exp"
	.byte	0x1
	.value	0x9f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LASF536
	.byte	0x1
	.value	0x9f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x9f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x9f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x9f8
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1f
	.long	.LASF538
	.byte	0x1
	.value	0xa9e
	.quad	.L275
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x1
	.value	0xa92
	.quad	.L292
	.byte	0
	.uleb128 0x14
	.long	.LASF540
	.byte	0x1
	.value	0xac8
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ed
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xac9
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xac9
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0xaca
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x14
	.long	.LASF541
	.byte	0x1
	.value	0xae9
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2133
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xaea
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xaea
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0xaeb
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x14
	.long	.LASF542
	.byte	0x1
	.value	0xb0b
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2221
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xb0c
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xb0c
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0xb0d
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x17
	.string	"ai"
	.byte	0x1
	.value	0xb0f
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"bi"
	.byte	0x1
	.value	0xb0f
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"ci"
	.byte	0x1
	.value	0xb0f
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xb10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1a
	.long	.LASF534
	.byte	0x1
	.value	0xb10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0xb10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0xb10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.string	"lt"
	.byte	0x1
	.value	0xb11
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x17
	.string	"lta"
	.byte	0x1
	.value	0xb11
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x17
	.string	"ltb"
	.byte	0x1
	.value	0xb11
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF543
	.byte	0x1
	.value	0xb74
	.quad	.L321
	.byte	0
	.uleb128 0x14
	.long	.LASF544
	.byte	0x1
	.value	0xb7b
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2304
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xb7c
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xb7c
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0xb7d
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.string	"ai"
	.byte	0x1
	.value	0xb7f
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"bi"
	.byte	0x1
	.value	0xb7f
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xb80
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x1
	.value	0xb80
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"lt"
	.byte	0x1
	.value	0xb81
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"lta"
	.byte	0x1
	.value	0xb81
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"ltb"
	.byte	0x1
	.value	0xb81
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1f
	.long	.LASF545
	.byte	0x1
	.value	0xbd5
	.quad	.L343
	.uleb128 0x1f
	.long	.LASF546
	.byte	0x1
	.value	0xbbb
	.quad	.L345
	.uleb128 0x1f
	.long	.LASF547
	.byte	0x1
	.value	0xbcd
	.quad	.L349
	.byte	0
	.uleb128 0x14
	.long	.LASF548
	.byte	0x1
	.value	0xbe4
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f5
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xbe5
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xbe5
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0xbe6
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.string	"ai"
	.byte	0x1
	.value	0xbe8
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"bi"
	.byte	0x1
	.value	0xbe8
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xbe9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0xbe9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x1
	.value	0xbe9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.string	"lt"
	.byte	0x1
	.value	0xbea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"lta"
	.byte	0x1
	.value	0xbea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x17
	.string	"ltb"
	.byte	0x1
	.value	0xbea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF549
	.byte	0x1
	.value	0xc36
	.quad	.L365
	.uleb128 0x1f
	.long	.LASF550
	.byte	0x1
	.value	0xc1e
	.quad	.L366
	.uleb128 0x1f
	.long	.LASF551
	.byte	0x1
	.value	0xc2d
	.quad	.L370
	.byte	0
	.uleb128 0x14
	.long	.LASF552
	.byte	0x1
	.value	0xc45
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x2485
	.uleb128 0x15
	.string	"pe"
	.byte	0x1
	.value	0xc46
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0xc47
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xc58
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0xc59
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0xc5a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"yy"
	.byte	0x1
	.value	0xc5b
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0xc5c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0xc5c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x14
	.long	.LASF554
	.byte	0x1
	.value	0xcb4
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x2531
	.uleb128 0x15
	.string	"pe"
	.byte	0x1
	.value	0xcb5
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0xcb6
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.string	"yy"
	.byte	0x1
	.value	0xcb8
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0xcb9
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0xcba
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0xcba
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xcbb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.long	.LASF662
	.byte	0x1
	.value	0xd18
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF555
	.byte	0x1
	.value	0xcd8
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF556
	.byte	0x1
	.value	0xd89
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x25c1
	.uleb128 0x15
	.string	"pe"
	.byte	0x1
	.value	0xd8a
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0xd8b
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xd99
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0xd9a
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0xd9b
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"yy"
	.byte	0x1
	.value	0xd9c
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0xd9d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0xd9d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x14
	.long	.LASF557
	.byte	0x1
	.value	0xe52
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x2638
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0xe53
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.value	0xe54
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0xe56
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0xe57
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0xe58
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF559
	.byte	0x1
	.value	0xe6e
	.quad	.L420
	.byte	0
	.uleb128 0x14
	.long	.LASF560
	.byte	0x1
	.value	0xe77
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2698
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0xe78
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0xe78
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0xe7a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0xe7a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xe7b
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x14
	.long	.LASF561
	.byte	0x1
	.value	0xf2e
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x270f
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0xf2f
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.value	0xf30
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0xf32
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0xf33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0xf34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF559
	.byte	0x1
	.value	0xf4a
	.quad	.L434
	.byte	0
	.uleb128 0x14
	.long	.LASF562
	.byte	0x1
	.value	0xf53
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x2762
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0xf54
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0xf54
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0xf56
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0xf57
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF563
	.byte	0x1
	.value	0xfe1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x27d9
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0xfe2
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.value	0xfe3
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0xfe5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0xfe6
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0xfe7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF559
	.byte	0x1
	.value	0xffd
	.quad	.L446
	.byte	0
	.uleb128 0x14
	.long	.LASF564
	.byte	0x1
	.value	0x1006
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x282c
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x1007
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x1007
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1009
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x100a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF565
	.byte	0x1
	.value	0x1068
	.long	0x2d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x28e2
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x1069
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x1069
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.string	"ai"
	.byte	0x1
	.value	0x106b
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"bi"
	.byte	0x1
	.value	0x106b
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x106c
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"q"
	.byte	0x1
	.value	0x106c
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x106d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF566
	.byte	0x1
	.value	0x106e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.long	.LASF567
	.byte	0x1
	.value	0x1084
	.quad	.L461
	.uleb128 0x1f
	.long	.LASF568
	.byte	0x1
	.value	0x109b
	.quad	.L468
	.byte	0
	.uleb128 0x14
	.long	.LASF569
	.byte	0x1
	.value	0x10b3
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x2947
	.uleb128 0x15
	.string	"lp"
	.byte	0x1
	.value	0x10b4
	.long	0x2947
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x10b5
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"yi"
	.byte	0x1
	.value	0x10b7
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ll"
	.byte	0x1
	.value	0x10b8
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x10b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x294d
	.uleb128 0xd
	.long	0x44
	.uleb128 0x14
	.long	.LASF570
	.byte	0x1
	.value	0x10dd
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b7
	.uleb128 0x15
	.string	"lp"
	.byte	0x1
	.value	0x10de
	.long	0x29b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x10df
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"yi"
	.byte	0x1
	.value	0x10e1
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ll"
	.byte	0x1
	.value	0x10e2
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x10e3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29bd
	.uleb128 0xd
	.long	0x56
	.uleb128 0x14
	.long	.LASF571
	.byte	0x1
	.value	0x1105
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a46
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x1106
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x1107
	.long	0xdaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.long	.LASF572
	.byte	0x1
	.value	0x1108
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0x110a
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x110b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x110b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"ll"
	.byte	0x1
	.value	0x110c
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x14
	.long	.LASF573
	.byte	0x1
	.value	0x1158
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ac7
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x1159
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x115a
	.long	0x2ac7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.long	.LASF572
	.byte	0x1
	.value	0x115b
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"ll"
	.byte	0x1
	.value	0x115d
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0x115e
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x115f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x115f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56
	.uleb128 0x1e
	.long	.LASF574
	.byte	0x1
	.value	0x119d
	.long	0x2d
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b27
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x119e
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"sc"
	.byte	0x1
	.value	0x119f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF534
	.byte	0x1
	.value	0x11a1
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x11a2
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF575
	.byte	0x1
	.value	0x11df
	.long	0x2d
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b82
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x11e0
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x11e2
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x11e3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF576
	.byte	0x1
	.value	0x120b
	.quad	.L525
	.byte	0
	.uleb128 0x14
	.long	.LASF577
	.byte	0x1
	.value	0x12ca
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d3a
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x12cb
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x16
	.long	.LASF578
	.byte	0x1
	.value	0x12cc
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x16
	.long	.LASF579
	.byte	0x1
	.value	0x12cd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x1a
	.long	.LASF580
	.byte	0x1
	.value	0x12cf
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -210
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x12d0
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.value	0x12d0
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"u"
	.byte	0x1
	.value	0x12d0
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"w"
	.byte	0x1
	.value	0x12d0
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x12d1
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x12d1
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x17
	.string	"ten"
	.byte	0x1
	.value	0x12d1
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x1
	.value	0x12d2
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x12d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x12d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x12d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1a
	.long	.LASF581
	.byte	0x1
	.value	0x12d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0x12d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x12d4
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x17
	.string	"ss"
	.byte	0x1
	.value	0x12d4
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.value	0x12d5
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -206
	.uleb128 0x1f
	.long	.LASF582
	.byte	0x1
	.value	0x13f2
	.quad	.L540
	.uleb128 0x1f
	.long	.LASF583
	.byte	0x1
	.value	0x12fc
	.quad	.L543
	.uleb128 0x1f
	.long	.LASF584
	.byte	0x1
	.value	0x1384
	.quad	.L547
	.uleb128 0x18
	.long	.LASF474
	.long	0x2d3a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9795
	.uleb128 0x1f
	.long	.LASF585
	.byte	0x1
	.value	0x132d
	.quad	.L557
	.uleb128 0x1f
	.long	.LASF586
	.byte	0x1
	.value	0x13cf
	.quad	.L595
	.uleb128 0x1f
	.long	.LASF587
	.byte	0x1
	.value	0x13ea
	.quad	.L594
	.byte	0
	.uleb128 0xd
	.long	0xdb5
	.uleb128 0x14
	.long	.LASF588
	.byte	0x1
	.value	0x1408
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d78
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1409
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x140a
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF589
	.byte	0x1
	.value	0x1413
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db1
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1414
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x1415
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF590
	.byte	0x1
	.value	0x1426
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dea
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1427
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x1428
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF591
	.byte	0x1
	.value	0x143c
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e23
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x143d
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x143e
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF592
	.byte	0x1
	.value	0x1447
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x3052
	.uleb128 0x15
	.string	"ss"
	.byte	0x1
	.value	0x1448
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x1449
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x16
	.long	.LASF593
	.byte	0x1
	.value	0x144a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x17
	.string	"yy"
	.byte	0x1
	.value	0x144c
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.string	"xt"
	.byte	0x1
	.value	0x144c
	.long	0x1ea9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"tt"
	.byte	0x1
	.value	0x144c
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF594
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1a
	.long	.LASF595
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x1a
	.long	.LASF596
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF597
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF598
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.long	.LASF534
	.byte	0x1
	.value	0x144d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x144e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x144e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1a
	.long	.LASF599
	.byte	0x1
	.value	0x144e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.value	0x144e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0x144e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF600
	.byte	0x1
	.value	0x144f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1a
	.long	.LASF601
	.byte	0x1
	.value	0x1450
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -210
	.uleb128 0x17
	.string	"sp"
	.byte	0x1
	.value	0x1451
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x1451
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1a
	.long	.LASF602
	.byte	0x1
	.value	0x1451
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF603
	.byte	0x1
	.value	0x1452
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.long	.LASF604
	.byte	0x1
	.value	0x1471
	.quad	.L612
	.uleb128 0x1f
	.long	.LASF605
	.byte	0x1
	.value	0x14ec
	.quad	.L615
	.uleb128 0x1f
	.long	.LASF606
	.byte	0x1
	.value	0x14e3
	.quad	.L623
	.uleb128 0x1f
	.long	.LASF607
	.byte	0x1
	.value	0x14f1
	.quad	.L641
	.uleb128 0x1f
	.long	.LASF608
	.byte	0x1
	.value	0x151d
	.quad	.L645
	.uleb128 0x1f
	.long	.LASF609
	.byte	0x1
	.value	0x1511
	.quad	.L646
	.uleb128 0x1f
	.long	.LASF610
	.byte	0x1
	.value	0x1598
	.quad	.L647
	.uleb128 0x1f
	.long	.LASF611
	.byte	0x1
	.value	0x14fa
	.quad	.L650
	.uleb128 0x1f
	.long	.LASF612
	.byte	0x1
	.value	0x1518
	.quad	.L659
	.uleb128 0x1f
	.long	.LASF613
	.byte	0x1
	.value	0x1580
	.quad	.L664
	.byte	0
	.uleb128 0x14
	.long	.LASF614
	.byte	0x1
	.value	0x15dd
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e0
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x15de
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x15df
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x15e1
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x15e2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF581
	.byte	0x1
	.value	0x15e2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x15e2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x15e3
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x1
	.value	0x15fc
	.quad	.L691
	.byte	0
	.uleb128 0x14
	.long	.LASF616
	.byte	0x1
	.value	0x162a
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x3154
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x162b
	.long	0x321
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF617
	.byte	0x1
	.value	0x162c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x162d
	.long	0x172e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"xi"
	.byte	0x1
	.value	0x162f
	.long	0x1ea9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"li"
	.byte	0x1
	.value	0x1630
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1631
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x14
	.long	.LASF618
	.byte	0x1
	.value	0x1667
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ba
	.uleb128 0x15
	.string	"den"
	.byte	0x1
	.value	0x1668
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.value	0x1668
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ld"
	.byte	0x1
	.value	0x166a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"ln"
	.byte	0x1
	.value	0x166a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x166b
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x14
	.long	.LASF619
	.byte	0x1
	.value	0x1698
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x320a
	.uleb128 0x16
	.long	.LASF620
	.byte	0x1
	.value	0x1699
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF463
	.byte	0x1
	.value	0x169a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF474
	.long	0x320a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9978
	.byte	0
	.uleb128 0xd
	.long	0xdb5
	.uleb128 0x14
	.long	.LASF621
	.byte	0x1
	.value	0x18ce
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x3288
	.uleb128 0x15
	.string	"nan"
	.byte	0x1
	.value	0x18cf
	.long	0x172e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF473
	.byte	0x1
	.value	0x18d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x18d1
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x18d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x18d4
	.long	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF474
	.long	0x3298
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10001
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3298
	.uleb128 0xc
	.long	0x34
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x3288
	.uleb128 0x1b
	.long	.LASF622
	.byte	0x1
	.value	0x1910
	.long	0xb53
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x32f6
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x1911
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1913
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x1914
	.long	0x32f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x1915
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0x64
	.long	0x3306
	.uleb128 0xc
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF623
	.byte	0x1
	.value	0x192f
	.long	0xb53
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x335f
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.value	0x1930
	.long	0xdaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1932
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x1933
	.long	0x335f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x1934
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0x64
	.long	0x336f
	.uleb128 0xc
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF624
	.byte	0x1
	.value	0x1953
	.long	0xb53
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c8
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x1954
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1956
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x1957
	.long	0x32f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x1958
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1b
	.long	.LASF625
	.byte	0x1
	.value	0x1978
	.long	0xb53
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x3421
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.value	0x1979
	.long	0xdaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x197b
	.long	0xb53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x197c
	.long	0x335f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.value	0x197d
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1b
	.long	.LASF626
	.byte	0x1
	.value	0x1b22
	.long	0x3b
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x3466
	.uleb128 0x16
	.long	.LASF460
	.byte	0x1
	.value	0x1b23
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF474
	.long	0x3476
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10037
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3476
	.uleb128 0xc
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x3466
	.uleb128 0x1a
	.long	.LASF627
	.byte	0x1
	.value	0x893
	.long	0x1ea9
	.uleb128 0x9
	.byte	0x3
	.quad	equot
	.uleb128 0x1a
	.long	.LASF628
	.byte	0x1
	.value	0x9e7
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	rlast
	.uleb128 0x17
	.string	"rw"
	.byte	0x1
	.value	0x9e8
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	rw
	.uleb128 0x1a
	.long	.LASF629
	.byte	0x1
	.value	0x9e9
	.long	0x64
	.uleb128 0x9
	.byte	0x3
	.quad	rmsk
	.uleb128 0x1a
	.long	.LASF630
	.byte	0x1
	.value	0x9ea
	.long	0x64
	.uleb128 0x9
	.byte	0x3
	.quad	rmbit
	.uleb128 0x1a
	.long	.LASF631
	.byte	0x1
	.value	0x9eb
	.long	0x64
	.uleb128 0x9
	.byte	0x3
	.quad	rebit
	.uleb128 0x17
	.string	"re"
	.byte	0x1
	.value	0x9ec
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	re
	.uleb128 0x1a
	.long	.LASF632
	.byte	0x1
	.value	0x9ed
	.long	0x1ea9
	.uleb128 0x9
	.byte	0x3
	.quad	rbit
	.uleb128 0x1a
	.long	.LASF535
	.byte	0x1
	.value	0xac5
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	subflg
	.uleb128 0xb
	.long	0x64
	.long	0x3555
	.uleb128 0xc
	.long	0x34
	.byte	0xc
	.uleb128 0xc
	.long	0x34
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.long	.LASF633
	.byte	0x1
	.value	0x1263
	.long	0x356b
	.uleb128 0x9
	.byte	0x3
	.quad	etens
	.uleb128 0xd
	.long	0x353f
	.uleb128 0x1a
	.long	.LASF634
	.byte	0x1
	.value	0x1274
	.long	0x3586
	.uleb128 0x9
	.byte	0x3
	.quad	emtens
	.uleb128 0xd
	.long	0x353f
	.uleb128 0xb
	.long	0x95
	.long	0x359b
	.uleb128 0xc
	.long	0x34
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.long	.LASF635
	.byte	0x1
	.value	0x12c7
	.long	0x358b
	.uleb128 0x9
	.byte	0x3
	.quad	wstring
	.uleb128 0xb
	.long	0x64
	.long	0x35c1
	.uleb128 0xc
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.long	.LASF636
	.byte	0x1
	.value	0x15c7
	.long	0x35d7
	.uleb128 0x9
	.byte	0x3
	.quad	bmask
	.uleb128 0xd
	.long	0x35b1
	.uleb128 0xb
	.long	0x64
	.long	0x35ec
	.uleb128 0xc
	.long	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.long	.LASF637
	.byte	0x1
	.value	0x18a9
	.long	0x3602
	.uleb128 0x9
	.byte	0x3
	.quad	TFbignan
	.uleb128 0xd
	.long	0x35dc
	.uleb128 0x1a
	.long	.LASF638
	.byte	0x1
	.value	0x18ab
	.long	0x361d
	.uleb128 0x9
	.byte	0x3
	.quad	TFlittlenan
	.uleb128 0xd
	.long	0x35dc
	.uleb128 0x1a
	.long	.LASF639
	.byte	0x1
	.value	0x18b3
	.long	0x3638
	.uleb128 0x9
	.byte	0x3
	.quad	XFbignan
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x1a
	.long	.LASF640
	.byte	0x1
	.value	0x18b5
	.long	0x3653
	.uleb128 0x9
	.byte	0x3
	.quad	XFlittlenan
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x1a
	.long	.LASF641
	.byte	0x1
	.value	0x18bd
	.long	0x366e
	.uleb128 0x9
	.byte	0x3
	.quad	DFbignan
	.uleb128 0xd
	.long	0x335f
	.uleb128 0x1a
	.long	.LASF642
	.byte	0x1
	.value	0x18be
	.long	0x3689
	.uleb128 0x9
	.byte	0x3
	.quad	DFlittlenan
	.uleb128 0xd
	.long	0x335f
	.uleb128 0x1a
	.long	.LASF643
	.byte	0x1
	.value	0x18c6
	.long	0x36a4
	.uleb128 0x9
	.byte	0x3
	.quad	SFbignan
	.uleb128 0xd
	.long	0x32f6
	.uleb128 0x1a
	.long	.LASF644
	.byte	0x1
	.value	0x18c7
	.long	0x36bf
	.uleb128 0x9
	.byte	0x3
	.quad	SFlittlenan
	.uleb128 0xd
	.long	0x32f6
	.uleb128 0x22
	.long	.LASF645
	.byte	0x8
	.byte	0xaa
	.long	0x25b
	.uleb128 0xb
	.long	0x64
	.long	0x36df
	.uleb128 0xc
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.long	.LASF646
	.byte	0x9
	.byte	0x48
	.long	0x36ea
	.uleb128 0xd
	.long	0x36cf
	.uleb128 0xb
	.long	0x95
	.long	0x36ff
	.uleb128 0xc
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.long	.LASF647
	.byte	0xa
	.byte	0xfb
	.long	0x370a
	.uleb128 0xd
	.long	0x36ef
	.uleb128 0xb
	.long	0x4a1
	.long	0x371f
	.uleb128 0xc
	.long	0x34
	.byte	0x3a
	.byte	0
	.uleb128 0x22
	.long	.LASF127
	.byte	0x5
	.byte	0x34
	.long	0x372a
	.uleb128 0xd
	.long	0x370f
	.uleb128 0xb
	.long	0x64
	.long	0x373f
	.uleb128 0xc
	.long	0x34
	.byte	0x3a
	.byte	0
	.uleb128 0x22
	.long	.LASF648
	.byte	0x5
	.byte	0x60
	.long	0x374a
	.uleb128 0xd
	.long	0x372f
	.uleb128 0x23
	.long	.LASF649
	.byte	0x1
	.value	0x16d
	.long	0x2d
	.uleb128 0x24
	.long	.LASF650
	.byte	0x1
	.value	0x631
	.long	0x3771
	.uleb128 0x9
	.byte	0x3
	.quad	ezero
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF651
	.byte	0x1
	.value	0x633
	.long	0x378c
	.uleb128 0x9
	.byte	0x3
	.quad	ehalf
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF652
	.byte	0x1
	.value	0x635
	.long	0x37a7
	.uleb128 0x9
	.byte	0x3
	.quad	eone
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF653
	.byte	0x1
	.value	0x637
	.long	0x37c2
	.uleb128 0x9
	.byte	0x3
	.quad	etwo
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF654
	.byte	0x1
	.value	0x63b
	.long	0x37dd
	.uleb128 0x9
	.byte	0x3
	.quad	elog2
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF655
	.byte	0x1
	.value	0x63d
	.long	0x37f8
	.uleb128 0x9
	.byte	0x3
	.quad	esqrt2
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x25
	.string	"e32"
	.byte	0x1
	.value	0x639
	.long	0x3813
	.uleb128 0x9
	.byte	0x3
	.quad	e32
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x25
	.string	"epi"
	.byte	0x1
	.value	0x63f
	.long	0x382e
	.uleb128 0x9
	.byte	0x3
	.quad	epi
	.uleb128 0xd
	.long	0xe66
	.uleb128 0x24
	.long	.LASF656
	.byte	0x1
	.value	0x646
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	rndprc
	.uleb128 0x24
	.long	.LASF657
	.byte	0x1
	.value	0x1694
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	merror
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
.LASF375:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF426:
	.string	"TI_UV16QI_TYPE"
.LASF296:
	.string	"BUILT_IN_CONJ"
.LASF441:
	.string	"itk_unsigned_char"
.LASF194:
	.string	"WITH_CLEANUP_EXPR"
.LASF184:
	.string	"VTABLE_REF"
.LASF342:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF40:
	.string	"_unused2"
.LASF271:
	.string	"POSTINCREMENT_EXPR"
.LASF292:
	.string	"BUILT_IN_FABSF"
.LASF207:
	.string	"FLOOR_MOD_EXPR"
.LASF26:
	.string	"_fileno"
.LASF293:
	.string	"BUILT_IN_FABSL"
.LASF433:
	.string	"TI_V2SI_TYPE"
.LASF647:
	.string	"_hex_value"
.LASF394:
	.string	"TI_UINTSI_TYPE"
.LASF166:
	.string	"COMPLEX_CST"
.LASF224:
	.string	"RROTATE_EXPR"
.LASF473:
	.string	"sign"
.LASF260:
	.string	"ADDR_EXPR"
.LASF482:
	.string	"exact_real_inverse"
.LASF451:
	.string	"_Bool"
.LASF540:
	.string	"esub"
.LASF607:
	.string	"expnt"
.LASF249:
	.string	"IN_EXPR"
.LASF47:
	.string	"_sch_iscntrl"
.LASF633:
	.string	"etens"
.LASF376:
	.string	"BUILT_IN_EH_RETURN"
.LASF31:
	.string	"_shortbuf"
.LASF660:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF53:
	.string	"_sch_isupper"
.LASF232:
	.string	"TRUTH_AND_EXPR"
.LASF315:
	.string	"BUILT_IN_STRCPY"
.LASF543:
	.string	"done"
.LASF581:
	.string	"expon"
.LASF413:
	.string	"TI_VOID_TYPE"
.LASF378:
	.string	"BUILT_IN_VARARGS_START"
.LASF276:
	.string	"LABEL_EXPR"
.LASF499:
	.string	"eisinf"
.LASF400:
	.string	"TI_NULL_POINTER"
.LASF156:
	.string	"FILE_TYPE"
.LASF429:
	.string	"TI_V4SI_TYPE"
.LASF515:
	.string	"eshup1"
.LASF355:
	.string	"BUILT_IN_FWRITE"
.LASF520:
	.string	"eshup6"
.LASF519:
	.string	"eshup8"
.LASF642:
	.string	"DFlittlenan"
.LASF95:
	.string	"CTImode"
.LASF12:
	.string	"_flags"
.LASF597:
	.string	"nexp"
.LASF234:
	.string	"TRUTH_XOR_EXPR"
.LASF196:
	.string	"PLACEHOLDER_EXPR"
.LASF603:
	.string	"base"
.LASF9:
	.string	"__off_t"
.LASF215:
	.string	"FLOAT_EXPR"
.LASF403:
	.string	"TI_BITSIZE_ZERO"
.LASF174:
	.string	"PARM_DECL"
.LASF93:
	.string	"CSImode"
.LASF334:
	.string	"BUILT_IN_COSL"
.LASF265:
	.string	"CONJ_EXPR"
.LASF572:
	.string	"frac"
.LASF32:
	.string	"_lock"
.LASF556:
	.string	"e24toe"
.LASF305:
	.string	"BUILT_IN_BZERO"
.LASF281:
	.string	"LABELED_BLOCK_EXPR"
.LASF338:
	.string	"BUILT_IN_ARGS_INFO"
.LASF139:
	.string	"ERROR_MARK"
.LASF570:
	.string	"ultoe"
.LASF130:
	.string	"MODE_FLOAT"
.LASF311:
	.string	"BUILT_IN_MEMCMP"
.LASF353:
	.string	"BUILT_IN_FPUTC"
.LASF345:
	.string	"BUILT_IN_RETURN"
.LASF391:
	.string	"TI_INTTI_TYPE"
.LASF354:
	.string	"BUILT_IN_FPUTS"
.LASF282:
	.string	"EXIT_BLOCK_EXPR"
.LASF600:
	.string	"lexp"
.LASF99:
	.string	"V2SImode"
.LASF360:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF153:
	.string	"OFFSET_TYPE"
.LASF410:
	.string	"TI_FLOAT_TYPE"
.LASF280:
	.string	"LOOP_EXPR"
.LASF361:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF94:
	.string	"CDImode"
.LASF272:
	.string	"VA_ARG_EXPR"
.LASF327:
	.string	"BUILT_IN_SIN"
.LASF416:
	.string	"TI_PTRDIFF_TYPE"
.LASF464:
	.string	"etrunci"
.LASF424:
	.string	"TI_UV2SI_TYPE"
.LASF189:
	.string	"TARGET_EXPR"
.LASF101:
	.string	"V4QImode"
.LASF374:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF629:
	.string	"rmsk"
.LASF476:
	.string	"ereal_to_int"
.LASF330:
	.string	"BUILT_IN_SINF"
.LASF100:
	.string	"V2DImode"
.LASF333:
	.string	"BUILT_IN_SINL"
.LASF210:
	.string	"EXACT_DIV_EXPR"
.LASF18:
	.string	"_IO_write_end"
.LASF310:
	.string	"BUILT_IN_MEMCPY"
.LASF177:
	.string	"NAMESPACE_DECL"
.LASF634:
	.string	"emtens"
.LASF182:
	.string	"ARRAY_REF"
.LASF339:
	.string	"BUILT_IN_CONSTANT_P"
.LASF365:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF371:
	.string	"BUILT_IN_DWARF_CFA"
.LASF162:
	.string	"FUNCTION_TYPE"
.LASF653:
	.string	"etwo"
.LASF110:
	.string	"V2SFmode"
.LASF470:
	.string	"earith"
.LASF126:
	.string	"machine_mode"
.LASF161:
	.string	"QUAL_UNION_TYPE"
.LASF488:
	.string	"etarldouble"
.LASF494:
	.string	"endian"
.LASF277:
	.string	"GOTO_EXPR"
.LASF531:
	.string	"emulm"
.LASF72:
	.string	"TImode"
.LASF655:
	.string	"esqrt2"
.LASF188:
	.string	"INIT_EXPR"
.LASF223:
	.string	"LROTATE_EXPR"
.LASF55:
	.string	"_sch_isidst"
.LASF384:
	.string	"realvaluetype"
.LASF606:
	.string	"unexpected_char_error"
.LASF308:
	.string	"BUILT_IN_INDEX"
.LASF545:
	.string	"divsign"
.LASF254:
	.string	"NOP_EXPR"
.LASF563:
	.string	"etoe24"
.LASF70:
	.string	"SImode"
.LASF612:
	.string	"zero"
.LASF111:
	.string	"V2DFmode"
.LASF208:
	.string	"ROUND_MOD_EXPR"
.LASF287:
	.string	"built_in_function"
.LASF495:
	.string	"eclear"
.LASF204:
	.string	"ROUND_DIV_EXPR"
.LASF505:
	.string	"ecleaz"
.LASF219:
	.string	"ABS_EXPR"
.LASF63:
	.string	"_sch_isbasic"
.LASF229:
	.string	"BIT_NOT_EXPR"
.LASF555:
	.string	"temp"
.LASF527:
	.string	"tnum"
.LASF502:
	.string	"enan"
.LASF460:
	.string	"mode"
.LASF71:
	.string	"DImode"
.LASF231:
	.string	"TRUTH_ORIF_EXPR"
.LASF288:
	.string	"BUILT_IN_ALLOCA"
.LASF490:
	.string	"etarsingle"
.LASF447:
	.string	"itk_unsigned_long"
.LASF25:
	.string	"_chain"
.LASF193:
	.string	"METHOD_CALL_EXPR"
.LASF396:
	.string	"TI_UINTTI_TYPE"
.LASF537:
	.string	"difrnt"
.LASF84:
	.string	"TFmode"
.LASF159:
	.string	"RECORD_TYPE"
.LASF4:
	.string	"unsigned char"
.LASF393:
	.string	"TI_UINTHI_TYPE"
.LASF596:
	.string	"sgnflg"
.LASF648:
	.string	"mode_bitsize"
.LASF661:
	.string	"_IO_lock_t"
.LASF415:
	.string	"TI_CONST_PTR_TYPE"
.LASF646:
	.string	"_sch_istable"
.LASF67:
	.string	"BImode"
.LASF81:
	.string	"SFmode"
.LASF54:
	.string	"_sch_isxdigit"
.LASF390:
	.string	"TI_INTDI_TYPE"
.LASF557:
	.string	"etoe64"
.LASF225:
	.string	"BIT_IOR_EXPR"
.LASF289:
	.string	"BUILT_IN_ABS"
.LASF171:
	.string	"CONST_DECL"
.LASF176:
	.string	"FIELD_DECL"
.LASF479:
	.string	"target_isnan"
.LASF443:
	.string	"itk_unsigned_short"
.LASF471:
	.string	"ereal_from_int"
.LASF299:
	.string	"BUILT_IN_CREAL"
.LASF134:
	.string	"MODE_COMPLEX_FLOAT"
.LASF506:
	.string	"ecleazs"
.LASF295:
	.string	"BUILT_IN_IMAXABS"
.LASF150:
	.string	"BOOLEAN_TYPE"
.LASF304:
	.string	"BUILT_IN_CIMAGL"
.LASF501:
	.string	"einfin"
.LASF364:
	.string	"BUILT_IN_ISGREATER"
.LASF348:
	.string	"BUILT_IN_TRAP"
.LASF257:
	.string	"SAVE_EXPR"
.LASF472:
	.string	"high"
.LASF635:
	.string	"wstring"
.LASF432:
	.string	"TI_V4HI_TYPE"
.LASF82:
	.string	"DFmode"
.LASF497:
	.string	"eneg"
.LASF8:
	.string	"size_t"
.LASF76:
	.string	"PSImode"
.LASF314:
	.string	"BUILT_IN_STRNCAT"
.LASF454:
	.string	"SSIZETYPE"
.LASF169:
	.string	"FUNCTION_DECL"
.LASF367:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF455:
	.string	"USIZETYPE"
.LASF190:
	.string	"COND_EXPR"
.LASF90:
	.string	"TCmode"
.LASF211:
	.string	"FIX_TRUNC_EXPR"
.LASF17:
	.string	"_IO_write_ptr"
.LASF147:
	.string	"COMPLEX_TYPE"
.LASF610:
	.string	"aexit"
.LASF349:
	.string	"BUILT_IN_PREFETCH"
.LASF221:
	.string	"LSHIFT_EXPR"
.LASF87:
	.string	"SCmode"
.LASF487:
	.string	"etartdouble"
.LASF438:
	.string	"integer_type_kind"
.LASF77:
	.string	"PDImode"
.LASF638:
	.string	"TFlittlenan"
.LASF164:
	.string	"INTEGER_CST"
.LASF172:
	.string	"TYPE_DECL"
.LASF407:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF268:
	.string	"PREDECREMENT_EXPR"
.LASF399:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF412:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF500:
	.string	"eisnan"
.LASF409:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF120:
	.string	"CCGOCmode"
.LASF325:
	.string	"BUILT_IN_STRRCHR"
.LASF428:
	.string	"TI_V16SF_TYPE"
.LASF408:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF566:
	.string	"msign"
.LASF568:
	.string	"diff"
.LASF57:
	.string	"_sch_isnvsp"
.LASF544:
	.string	"ediv"
.LASF148:
	.string	"VECTOR_TYPE"
.LASF131:
	.string	"MODE_PARTIAL_INT"
.LASF614:
	.string	"efloor"
.LASF554:
	.string	"e64toe"
.LASF306:
	.string	"BUILT_IN_BCMP"
.LASF88:
	.string	"DCmode"
.LASF61:
	.string	"_sch_isgraph"
.LASF658:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF228:
	.string	"BIT_ANDTC_EXPR"
.LASF484:
	.string	"rinv"
.LASF414:
	.string	"TI_PTR_TYPE"
.LASF586:
	.string	"roun"
.LASF559:
	.string	"nonorm"
.LASF565:
	.string	"ecmp"
.LASF496:
	.string	"emov"
.LASF480:
	.string	"target_negative"
.LASF662:
	.string	"bigend_nan"
.LASF118:
	.string	"CCmode"
.LASF377:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF369:
	.string	"BUILT_IN_ISUNORDERED"
.LASF116:
	.string	"V16SFmode"
.LASF230:
	.string	"TRUTH_ANDIF_EXPR"
.LASF492:
	.string	"ereal_cmp"
.LASF21:
	.string	"_IO_save_base"
.LASF453:
	.string	"SIZETYPE"
.LASF583:
	.string	"tnzro"
.LASF235:
	.string	"TRUTH_NOT_EXPR"
.LASF216:
	.string	"NEGATE_EXPR"
.LASF107:
	.string	"V8SImode"
.LASF379:
	.string	"BUILT_IN_STDARG_START"
.LASF628:
	.string	"rlast"
.LASF466:
	.string	"ereal_atof"
.LASF513:
	.string	"eshdn1"
.LASF521:
	.string	"eshdn6"
.LASF516:
	.string	"eshdn8"
.LASF395:
	.string	"TI_UINTDI_TYPE"
.LASF467:
	.string	"ereal_negate"
.LASF625:
	.string	"ereal_from_double"
.LASF157:
	.string	"ARRAY_TYPE"
.LASF508:
	.string	"einan"
.LASF405:
	.string	"TI_BITSIZE_UNIT"
.LASF498:
	.string	"eisneg"
.LASF238:
	.string	"GT_EXPR"
.LASF35:
	.string	"__pad2"
.LASF251:
	.string	"CARD_EXPR"
.LASF463:
	.string	"code"
.LASF411:
	.string	"TI_DOUBLE_TYPE"
.LASF569:
	.string	"ltoe"
.LASF493:
	.string	"ereal_isneg"
.LASF347:
	.string	"BUILT_IN_LONGJMP"
.LASF155:
	.string	"METHOD_TYPE"
.LASF119:
	.string	"CCGCmode"
.LASF341:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF253:
	.string	"CONVERT_EXPR"
.LASF105:
	.string	"V8QImode"
.LASF205:
	.string	"TRUNC_MOD_EXPR"
.LASF108:
	.string	"V8DImode"
.LASF137:
	.string	"MAX_MODE_CLASS"
.LASF579:
	.string	"ndigs"
.LASF449:
	.string	"itk_unsigned_long_long"
.LASF49:
	.string	"_sch_islower"
.LASF517:
	.string	"newbyt"
.LASF201:
	.string	"TRUNC_DIV_EXPR"
.LASF550:
	.string	"mnzer1"
.LASF551:
	.string	"mnzer2"
.LASF258:
	.string	"UNSAVE_EXPR"
.LASF605:
	.string	"donchr"
.LASF200:
	.string	"MULT_EXPR"
.LASF461:
	.string	"value"
.LASF239:
	.string	"GE_EXPR"
.LASF43:
	.string	"_next"
.LASF465:
	.string	"etruncui"
.LASF321:
	.string	"BUILT_IN_STRPBRK"
.LASF261:
	.string	"REFERENCE_EXPR"
.LASF518:
	.string	"oldbyt"
.LASF206:
	.string	"CEIL_MOD_EXPR"
.LASF627:
	.string	"equot"
.LASF350:
	.string	"BUILT_IN_PUTCHAR"
.LASF511:
	.string	"eiisinf"
.LASF114:
	.string	"V8SFmode"
.LASF571:
	.string	"eifrac"
.LASF202:
	.string	"CEIL_DIV_EXPR"
.LASF340:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF546:
	.string	"dnzro1"
.LASF547:
	.string	"dnzro2"
.LASF548:
	.string	"emul"
.LASF122:
	.string	"CCZmode"
.LASF626:
	.string	"significand_size"
.LASF458:
	.string	"UBITSIZETYPE"
.LASF203:
	.string	"FLOOR_DIV_EXPR"
.LASF141:
	.string	"TREE_LIST"
.LASF528:
	.string	"tdenm"
.LASF536:
	.string	"rcntrl"
.LASF387:
	.string	"TI_INTQI_TYPE"
.LASF168:
	.string	"STRING_CST"
.LASF236:
	.string	"LT_EXPR"
.LASF489:
	.string	"etardouble"
.LASF226:
	.string	"BIT_XOR_EXPR"
.LASF284:
	.string	"SWITCH_EXPR"
.LASF233:
	.string	"TRUTH_OR_EXPR"
.LASF609:
	.string	"infinite"
.LASF275:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF525:
	.string	"m16m"
.LASF115:
	.string	"V8DFmode"
.LASF481:
	.string	"real_value_truncate"
.LASF641:
	.string	"DFbignan"
.LASF217:
	.string	"MIN_EXPR"
.LASF420:
	.string	"TI_UV4SI_TYPE"
.LASF561:
	.string	"etoe53"
.LASF212:
	.string	"FIX_CEIL_EXPR"
.LASF318:
	.string	"BUILT_IN_STRNCMP"
.LASF533:
	.string	"emdnorm"
.LASF123:
	.string	"CCFPmode"
.LASF237:
	.string	"LE_EXPR"
.LASF645:
	.string	"stderr"
.LASF620:
	.string	"name"
.LASF44:
	.string	"_sbuf"
.LASF23:
	.string	"_IO_save_end"
.LASF129:
	.string	"MODE_INT"
.LASF218:
	.string	"MAX_EXPR"
.LASF401:
	.string	"TI_SIZE_ZERO"
.LASF442:
	.string	"itk_short"
.LASF312:
	.string	"BUILT_IN_MEMSET"
.LASF98:
	.string	"V2HImode"
.LASF209:
	.string	"RDIV_EXPR"
.LASF530:
	.string	"tprod"
.LASF170:
	.string	"LABEL_DECL"
.LASF383:
	.string	"END_BUILTINS"
.LASF456:
	.string	"BITSIZETYPE"
.LASF0:
	.string	"sizetype"
.LASF652:
	.string	"eone"
.LASF103:
	.string	"V4SImode"
.LASF580:
	.string	"digit"
.LASF404:
	.string	"TI_BITSIZE_ONE"
.LASF486:
	.string	"dstr"
.LASF5:
	.string	"short unsigned int"
.LASF48:
	.string	"_sch_isdigit"
.LASF6:
	.string	"signed char"
.LASF398:
	.string	"TI_INTEGER_ONE"
.LASF616:
	.string	"eldexp"
.LASF388:
	.string	"TI_INTHI_TYPE"
.LASF552:
	.string	"e53toe"
.LASF549:
	.string	"mulsign"
.LASF270:
	.string	"POSTDECREMENT_EXPR"
.LASF477:
	.string	"ereal_ldexp"
.LASF358:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF362:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF10:
	.string	"__off64_t"
.LASF437:
	.string	"TI_MAX"
.LASF104:
	.string	"V4DImode"
.LASF15:
	.string	"_IO_read_base"
.LASF274:
	.string	"TRY_FINALLY_EXPR"
.LASF33:
	.string	"_offset"
.LASF578:
	.string	"string"
.LASF624:
	.string	"ereal_from_float"
.LASF475:
	.string	"ereal_from_uint"
.LASF20:
	.string	"_IO_buf_end"
.LASF523:
	.string	"carry"
.LASF422:
	.string	"TI_UV8QI_TYPE"
.LASF240:
	.string	"EQ_EXPR"
.LASF178:
	.string	"COMPONENT_REF"
.LASF199:
	.string	"MINUS_EXPR"
.LASF541:
	.string	"eadd"
.LASF39:
	.string	"_mode"
.LASF135:
	.string	"MODE_VECTOR_INT"
.LASF16:
	.string	"_IO_write_base"
.LASF611:
	.string	"read_expnt"
.LASF322:
	.string	"BUILT_IN_STRSPN"
.LASF112:
	.string	"V4SFmode"
.LASF587:
	.string	"doexp"
.LASF186:
	.string	"COMPOUND_EXPR"
.LASF539:
	.string	"mddone"
.LASF392:
	.string	"TI_UINTQI_TYPE"
.LASF357:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF309:
	.string	"BUILT_IN_RINDEX"
.LASF514:
	.string	"bits"
.LASF69:
	.string	"HImode"
.LASF133:
	.string	"MODE_COMPLEX_INT"
.LASF623:
	.string	"ereal_unto_double"
.LASF286:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF2:
	.string	"long int"
.LASF152:
	.string	"POINTER_TYPE"
.LASF602:
	.string	"lstr"
.LASF220:
	.string	"FFS_EXPR"
.LASF144:
	.string	"VOID_TYPE"
.LASF522:
	.string	"eaddm"
.LASF256:
	.string	"VIEW_CONVERT_EXPR"
.LASF386:
	.string	"TI_ERROR_MARK"
.LASF553:
	.string	"denorm"
.LASF42:
	.string	"_IO_marker"
.LASF83:
	.string	"XFmode"
.LASF113:
	.string	"V4DFmode"
.LASF434:
	.string	"TI_V2SF_TYPE"
.LASF62:
	.string	"_sch_iscppsp"
.LASF197:
	.string	"WITH_RECORD_EXPR"
.LASF385:
	.string	"tree_index"
.LASF619:
	.string	"mtherr"
.LASF512:
	.string	"ecmpm"
.LASF601:
	.string	"nsign"
.LASF373:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF183:
	.string	"ARRAY_RANGE_REF"
.LASF459:
	.string	"TYPE_KIND_LAST"
.LASF320:
	.string	"BUILT_IN_STRSTR"
.LASF3:
	.string	"long unsigned int"
.LASF617:
	.string	"pwr2"
.LASF138:
	.string	"tree_code"
.LASF51:
	.string	"_sch_ispunct"
.LASF79:
	.string	"HFmode"
.LASF356:
	.string	"BUILT_IN_FPRINTF"
.LASF328:
	.string	"BUILT_IN_COS"
.LASF175:
	.string	"RESULT_DECL"
.LASF273:
	.string	"TRY_CATCH_EXPR"
.LASF427:
	.string	"TI_V4SF_TYPE"
.LASF91:
	.string	"CQImode"
.LASF11:
	.string	"char"
.LASF89:
	.string	"XCmode"
.LASF368:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF255:
	.string	"NON_LVALUE_EXPR"
.LASF19:
	.string	"_IO_buf_base"
.LASF643:
	.string	"SFbignan"
.LASF656:
	.string	"rndprc"
.LASF644:
	.string	"SFlittlenan"
.LASF180:
	.string	"INDIRECT_REF"
.LASF97:
	.string	"V2QImode"
.LASF278:
	.string	"RETURN_EXPR"
.LASF302:
	.string	"BUILT_IN_CIMAG"
.LASF343:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF491:
	.string	"ereal_to_decimal"
.LASF75:
	.string	"PHImode"
.LASF14:
	.string	"_IO_read_end"
.LASF452:
	.string	"size_type_kind"
.LASF96:
	.string	"COImode"
.LASF589:
	.string	"asctoe53"
.LASF56:
	.string	"_sch_isvsp"
.LASF41:
	.string	"_IO_FILE"
.LASF558:
	.string	"rndsav"
.LASF370:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF439:
	.string	"itk_char"
.LASF637:
	.string	"TFbignan"
.LASF406:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF509:
	.string	"eiisnan"
.LASF128:
	.string	"MODE_RANDOM"
.LASF615:
	.string	"isitneg"
.LASF573:
	.string	"euifrac"
.LASF117:
	.string	"BLKmode"
.LASF86:
	.string	"HCmode"
.LASF191:
	.string	"BIND_EXPR"
.LASF263:
	.string	"FDESC_EXPR"
.LASF425:
	.string	"TI_UV2SF_TYPE"
.LASF198:
	.string	"PLUS_EXPR"
.LASF431:
	.string	"TI_V8QI_TYPE"
.LASF436:
	.string	"TI_MAIN_IDENTIFIER"
.LASF319:
	.string	"BUILT_IN_STRLEN"
.LASF160:
	.string	"UNION_TYPE"
.LASF591:
	.string	"asctoe"
.LASF262:
	.string	"ENTRY_VALUE_EXPR"
.LASF590:
	.string	"asctoe64"
.LASF337:
	.string	"BUILT_IN_NEXT_ARG"
.LASF542:
	.string	"eadd1"
.LASF34:
	.string	"__pad1"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF599:
	.string	"trail"
.LASF124:
	.string	"CCFPUmode"
.LASF636:
	.string	"bmask"
.LASF24:
	.string	"_markers"
.LASF45:
	.string	"_pos"
.LASF243:
	.string	"ORDERED_EXPR"
.LASF381:
	.string	"BUILT_IN_VA_COPY"
.LASF574:
	.string	"eshift"
.LASF503:
	.string	"emovi"
.LASF504:
	.string	"emovo"
.LASF154:
	.string	"REFERENCE_TYPE"
.LASF507:
	.string	"emovz"
.LASF382:
	.string	"BUILT_IN_EXPECT"
.LASF564:
	.string	"toe24"
.LASF618:
	.string	"eiremain"
.LASF242:
	.string	"UNORDERED_EXPR"
.LASF419:
	.string	"TI_UV4SF_TYPE"
.LASF584:
	.string	"isone"
.LASF323:
	.string	"BUILT_IN_STRCSPN"
.LASF250:
	.string	"SET_LE_EXPR"
.LASF510:
	.string	"eiisneg"
.LASF435:
	.string	"TI_V16QI_TYPE"
.LASF448:
	.string	"itk_long_long"
.LASF269:
	.string	"PREINCREMENT_EXPR"
.LASF68:
	.string	"QImode"
.LASF246:
	.string	"UNGT_EXPR"
.LASF608:
	.string	"daldone"
.LASF290:
	.string	"BUILT_IN_LABS"
.LASF80:
	.string	"TQFmode"
.LASF592:
	.string	"asctoeg"
.LASF622:
	.string	"ereal_unto_float"
.LASF313:
	.string	"BUILT_IN_STRCAT"
.LASF329:
	.string	"BUILT_IN_SQRTF"
.LASF332:
	.string	"BUILT_IN_SQRTL"
.LASF630:
	.string	"rmbit"
.LASF639:
	.string	"XFbignan"
.LASF445:
	.string	"itk_unsigned_int"
.LASF285:
	.string	"EXC_PTR_EXPR"
.LASF307:
	.string	"BUILT_IN_FFS"
.LASF352:
	.string	"BUILT_IN_PRINTF"
.LASF151:
	.string	"CHAR_TYPE"
.LASF430:
	.string	"TI_V8HI_TYPE"
.LASF529:
	.string	"tquot"
.LASF213:
	.string	"FIX_FLOOR_EXPR"
.LASF73:
	.string	"OImode"
.LASF359:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF562:
	.string	"toe53"
.LASF179:
	.string	"BIT_FIELD_REF"
.LASF247:
	.string	"UNGE_EXPR"
.LASF294:
	.string	"BUILT_IN_LLABS"
.LASF423:
	.string	"TI_UV4HI_TYPE"
.LASF173:
	.string	"VAR_DECL"
.LASF187:
	.string	"MODIFY_EXPR"
.LASF532:
	.string	"pprod"
.LASF136:
	.string	"MODE_VECTOR_FLOAT"
.LASF142:
	.string	"TREE_VEC"
.LASF594:
	.string	"esign"
.LASF651:
	.string	"ehalf"
.LASF560:
	.string	"toe64"
.LASF335:
	.string	"BUILT_IN_SAVEREGS"
.LASF279:
	.string	"EXIT_EXPR"
.LASF297:
	.string	"BUILT_IN_CONJF"
.LASF585:
	.string	"noint"
.LASF222:
	.string	"RSHIFT_EXPR"
.LASF298:
	.string	"BUILT_IN_CONJL"
.LASF468:
	.string	"efixi"
.LASF64:
	.string	"long long unsigned int"
.LASF29:
	.string	"_cur_column"
.LASF535:
	.string	"subflg"
.LASF526:
	.string	"edivm"
.LASF140:
	.string	"IDENTIFIER_NODE"
.LASF613:
	.string	"expdon"
.LASF538:
	.string	"mdfin"
.LASF78:
	.string	"QFmode"
.LASF621:
	.string	"make_nan"
.LASF593:
	.string	"oprec"
.LASF244:
	.string	"UNLT_EXPR"
.LASF163:
	.string	"LANG_TYPE"
.LASF46:
	.string	"_sch_isblank"
.LASF576:
	.string	"normdn"
.LASF469:
	.string	"efixui"
.LASF397:
	.string	"TI_INTEGER_ZERO"
.LASF649:
	.string	"extra_warnings"
.LASF22:
	.string	"_IO_backup_base"
.LASF125:
	.string	"MAX_MACHINE_MODE"
.LASF13:
	.string	"_IO_read_ptr"
.LASF444:
	.string	"itk_int"
.LASF336:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF582:
	.string	"bxit"
.LASF127:
	.string	"mode_class"
.LASF604:
	.string	"nxtcom"
.LASF158:
	.string	"SET_TYPE"
.LASF132:
	.string	"MODE_CC"
.LASF577:
	.string	"etoasc"
.LASF192:
	.string	"CALL_EXPR"
.LASF74:
	.string	"PQImode"
.LASF227:
	.string	"BIT_AND_EXPR"
.LASF266:
	.string	"REALPART_EXPR"
.LASF106:
	.string	"V8HImode"
.LASF389:
	.string	"TI_INTSI_TYPE"
.LASF303:
	.string	"BUILT_IN_CIMAGF"
.LASF28:
	.string	"_old_offset"
.LASF595:
	.string	"decflg"
.LASF58:
	.string	"_sch_isalpha"
.LASF462:
	.string	"icode"
.LASF109:
	.string	"V16QImode"
.LASF291:
	.string	"BUILT_IN_FABS"
.LASF632:
	.string	"rbit"
.LASF267:
	.string	"IMAGPART_EXPR"
.LASF65:
	.string	"long long int"
.LASF567:
	.string	"nzro"
.LASF450:
	.string	"itk_none"
.LASF27:
	.string	"_flags2"
.LASF457:
	.string	"SBITSIZETYPE"
.LASF85:
	.string	"QCmode"
.LASF195:
	.string	"CLEANUP_POINT_EXPR"
.LASF524:
	.string	"esubm"
.LASF421:
	.string	"TI_UV8HI_TYPE"
.LASF165:
	.string	"REAL_CST"
.LASF50:
	.string	"_sch_isprint"
.LASF324:
	.string	"BUILT_IN_STRCHR"
.LASF380:
	.string	"BUILT_IN_VA_END"
.LASF59:
	.string	"_sch_isalnum"
.LASF598:
	.string	"prec"
.LASF214:
	.string	"FIX_ROUND_EXPR"
.LASF241:
	.string	"NE_EXPR"
.LASF344:
	.string	"BUILT_IN_APPLY"
.LASF366:
	.string	"BUILT_IN_ISLESS"
.LASF331:
	.string	"BUILT_IN_COSF"
.LASF149:
	.string	"ENUMERAL_TYPE"
.LASF659:
	.string	"real.c"
.LASF92:
	.string	"CHImode"
.LASF52:
	.string	"_sch_isspace"
.LASF300:
	.string	"BUILT_IN_CREALF"
.LASF185:
	.string	"CONSTRUCTOR"
.LASF301:
	.string	"BUILT_IN_CREALL"
.LASF440:
	.string	"itk_signed_char"
.LASF346:
	.string	"BUILT_IN_SETJMP"
.LASF363:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF446:
	.string	"itk_long"
.LASF121:
	.string	"CCNOmode"
.LASF102:
	.string	"V4HImode"
.LASF631:
	.string	"rebit"
.LASF143:
	.string	"BLOCK"
.LASF575:
	.string	"enormlz"
.LASF418:
	.string	"TI_VOID_LIST_NODE"
.LASF474:
	.string	"__FUNCTION__"
.LASF351:
	.string	"BUILT_IN_PUTS"
.LASF483:
	.string	"einv"
.LASF485:
	.string	"debug_real"
.LASF60:
	.string	"_sch_isidnum"
.LASF640:
	.string	"XFlittlenan"
.LASF167:
	.string	"VECTOR_CST"
.LASF1:
	.string	"unsigned int"
.LASF259:
	.string	"RTL_EXPR"
.LASF248:
	.string	"UNEQ_EXPR"
.LASF316:
	.string	"BUILT_IN_STRNCPY"
.LASF657:
	.string	"merror"
.LASF145:
	.string	"INTEGER_TYPE"
.LASF588:
	.string	"asctoe24"
.LASF7:
	.string	"short int"
.LASF252:
	.string	"RANGE_EXPR"
.LASF654:
	.string	"elog2"
.LASF326:
	.string	"BUILT_IN_SQRT"
.LASF181:
	.string	"BUFFER_REF"
.LASF30:
	.string	"_vtable_offset"
.LASF264:
	.string	"COMPLEX_EXPR"
.LASF372:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF245:
	.string	"UNLE_EXPR"
.LASF66:
	.string	"VOIDmode"
.LASF478:
	.string	"target_isinf"
.LASF417:
	.string	"TI_VA_LIST_TYPE"
.LASF534:
	.string	"lost"
.LASF317:
	.string	"BUILT_IN_STRCMP"
.LASF146:
	.string	"REAL_TYPE"
.LASF402:
	.string	"TI_SIZE_ONE"
.LASF283:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF650:
	.string	"ezero"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
