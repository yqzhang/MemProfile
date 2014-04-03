	.file	"vasprintf.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 vasprintf.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.section	.rodata
.LC0:
	.string	"-+ #0"
.LC1:
	.string	"hlL"
	.text
	.type	int_vasprintf, @function
int_vasprintf:
.LFB2:
	.file 1 "vasprintf.c"
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# result, result
	movq	%rsi, -64(%rbp)	# format, format
	movq	%rdx, -72(%rbp)	# args, args
	.loc 1 68 0
	movq	-64(%rbp), %rax	# format, tmp179
	movq	%rax, -32(%rbp)	# tmp179, p
	.loc 1 71 0
	movq	-64(%rbp), %rax	# format, tmp180
	movq	%rax, %rdi	# tmp180,
	call	strlen	#
	addl	$1, %eax	#, D.5638
	movl	%eax, -36(%rbp)	# D.5638, total_width
	.loc 1 75 0
	leaq	-24(%rbp), %rax	#, tmp181
	movq	-72(%rbp), %rdx	# args, tmp182
	movq	(%rdx), %rcx	#, tmp183
	movq	%rcx, (%rax)	# tmp183,
	movq	8(%rdx), %rcx	#, tmp184
	movq	%rcx, 8(%rax)	# tmp184,
	movq	16(%rdx), %rdx	#, tmp185
	movq	%rdx, 16(%rax)	# tmp185,
	.loc 1 80 0
	jmp	.L2	#
.L29:
	.loc 1 82 0
	movq	-32(%rbp), %rax	# p, p.0
	leaq	1(%rax), %rdx	#, p.2
	movq	%rdx, -32(%rbp)	# p.2, p
	movzbl	(%rax), %eax	# *p.1_18, D.5639
	cmpb	$37, %al	#, D.5639
	jne	.L2	#,
	.loc 1 84 0
	jmp	.L3	#
.L4:
	.loc 1 85 0
	movq	-32(%rbp), %rax	# p, p.3
	addq	$1, %rax	#, p.4
	movq	%rax, -32(%rbp)	# p.4, p
.L3:
	.loc 1 84 0 discriminator 1
	movq	-32(%rbp), %rax	# p, p.5
	movzbl	(%rax), %eax	# *p.5_21, D.5639
	movsbl	%al, %eax	# D.5639, D.5636
	movl	%eax, %esi	# D.5636,
	movl	$.LC0, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.5640
	jne	.L4	#,
	.loc 1 86 0
	movq	-32(%rbp), %rax	# p, p.6
	movzbl	(%rax), %eax	# *p.6_27, D.5639
	cmpb	$42, %al	#, D.5639
	jne	.L5	#,
	.loc 1 88 0
	movq	-32(%rbp), %rax	# p, p.7
	addq	$1, %rax	#, p.8
	movq	%rax, -32(%rbp)	# p.8, p
	.loc 1 89 0
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	cmpl	$48, %eax	#, D.5641
	jae	.L6	#,
	.loc 1 89 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rdx	# ap.reg_save_area, D.5642
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	movl	%eax, %eax	# D.5641, D.5643
	addq	%rdx, %rax	# D.5642, addr.9
	movl	-24(%rbp), %edx	# ap.gp_offset, D.5641
	addl	$8, %edx	#, D.5641
	movl	%edx, -24(%rbp)	# D.5641, ap.gp_offset
	jmp	.L7	#
.L6:
	.loc 1 89 0 discriminator 1
	movq	-16(%rbp), %rdx	# ap.overflow_arg_area, D.5642
	movq	%rdx, %rax	# D.5642, addr.9
	addq	$8, %rdx	#, D.5642
	movq	%rdx, -16(%rbp)	# D.5642, ap.overflow_arg_area
.L7:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.9_5], D.5636
	cltd
	xorl	%edx, %eax	# tmp186, D.5636
	subl	%edx, %eax	# tmp186, D.5636
	addl	%eax, -36(%rbp)	# D.5636, total_width
	jmp	.L8	#
.L5:
	.loc 1 92 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, p.10
	leaq	-32(%rbp), %rcx	#, tmp187
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp187,
	movq	%rax, %rdi	# p.10,
	call	strtoul	#
	movl	%eax, %edx	# D.5637, D.5638
	movl	-36(%rbp), %eax	# total_width, total_width.11
	addl	%edx, %eax	# D.5638, D.5638
	movl	%eax, -36(%rbp)	# D.5638, total_width
.L8:
	.loc 1 93 0
	movq	-32(%rbp), %rax	# p, p.12
	movzbl	(%rax), %eax	# *p.12_50, D.5639
	cmpb	$46, %al	#, D.5639
	jne	.L9	#,
	.loc 1 95 0
	movq	-32(%rbp), %rax	# p, p.13
	addq	$1, %rax	#, p.14
	movq	%rax, -32(%rbp)	# p.14, p
	.loc 1 96 0
	movq	-32(%rbp), %rax	# p, p.15
	movzbl	(%rax), %eax	# *p.15_54, D.5639
	cmpb	$42, %al	#, D.5639
	jne	.L10	#,
	.loc 1 98 0
	movq	-32(%rbp), %rax	# p, p.16
	addq	$1, %rax	#, p.17
	movq	%rax, -32(%rbp)	# p.17, p
	.loc 1 99 0
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	cmpl	$48, %eax	#, D.5641
	jae	.L11	#,
	.loc 1 99 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rdx	# ap.reg_save_area, D.5642
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	movl	%eax, %eax	# D.5641, D.5643
	addq	%rdx, %rax	# D.5642, addr.18
	movl	-24(%rbp), %edx	# ap.gp_offset, D.5641
	addl	$8, %edx	#, D.5641
	movl	%edx, -24(%rbp)	# D.5641, ap.gp_offset
	jmp	.L12	#
.L11:
	.loc 1 99 0 discriminator 1
	movq	-16(%rbp), %rdx	# ap.overflow_arg_area, D.5642
	movq	%rdx, %rax	# D.5642, addr.18
	addq	$8, %rdx	#, D.5642
	movq	%rdx, -16(%rbp)	# D.5642, ap.overflow_arg_area
.L12:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.18_6], D.5636
	cltd
	xorl	%edx, %eax	# tmp188, D.5636
	subl	%edx, %eax	# tmp188, D.5636
	addl	%eax, -36(%rbp)	# D.5636, total_width
	jmp	.L9	#
.L10:
	.loc 1 102 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, p.19
	leaq	-32(%rbp), %rcx	#, tmp189
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp189,
	movq	%rax, %rdi	# p.19,
	call	strtoul	#
	movl	%eax, %edx	# D.5637, D.5638
	movl	-36(%rbp), %eax	# total_width, total_width.20
	addl	%edx, %eax	# D.5638, D.5638
	movl	%eax, -36(%rbp)	# D.5638, total_width
	.loc 1 104 0
	jmp	.L13	#
.L9:
	jmp	.L13	#
.L14:
	.loc 1 105 0
	movq	-32(%rbp), %rax	# p, p.21
	addq	$1, %rax	#, p.22
	movq	%rax, -32(%rbp)	# p.22, p
.L13:
	.loc 1 104 0 discriminator 1
	movq	-32(%rbp), %rax	# p, p.23
	movzbl	(%rax), %eax	# *p.23_77, D.5639
	movsbl	%al, %eax	# D.5639, D.5636
	movl	%eax, %esi	# D.5636,
	movl	$.LC1, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.5640
	jne	.L14	#,
	.loc 1 107 0
	addl	$30, -36(%rbp)	#, total_width
	.loc 1 108 0
	movq	-32(%rbp), %rax	# p, p.24
	movzbl	(%rax), %eax	# *p.24_84, D.5639
	movsbl	%al, %eax	# D.5639, D.5636
	subl	$69, %eax	#, tmp190
	cmpl	$51, %eax	#, tmp190
	ja	.L15	#,
	movl	%eax, %eax	# tmp190, tmp191
	movq	.L17(,%rax,8), %rax	#, tmp192
	jmp	*%rax	# tmp192
	.section	.rodata
	.align 8
	.align 4
.L17:
	.quad	.L16
	.quad	.L15
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L18
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L18
	.quad	.L18
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L15
	.quad	.L18
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L19
	.quad	.L18
	.quad	.L19
	.quad	.L15
	.quad	.L15
	.quad	.L20
	.quad	.L15
	.quad	.L18
	.quad	.L15
	.quad	.L15
	.quad	.L18
	.text
.L18:
	.loc 1 117 0
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	cmpl	$48, %eax	#, D.5641
	jae	.L21	#,
	.loc 1 117 0 is_stmt 0 discriminator 2
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	addl	$8, %eax	#, D.5641
	movl	%eax, -24(%rbp)	# D.5641, ap.gp_offset
	.loc 1 118 0 is_stmt 1 discriminator 2
	jmp	.L15	#
.L21:
	.loc 1 117 0 discriminator 1
	movq	-16(%rbp), %rax	# ap.overflow_arg_area, D.5642
	addq	$8, %rax	#, D.5642
	movq	%rax, -16(%rbp)	# D.5642, ap.overflow_arg_area
	.loc 1 118 0 discriminator 1
	jmp	.L15	#
.L16:
	.loc 1 124 0
	movl	-20(%rbp), %eax	# ap.fp_offset, D.5641
	cmpl	$176, %eax	#, D.5641
	jae	.L23	#,
	.loc 1 124 0 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax	# ap.fp_offset, D.5641
	addl	$16, %eax	#, D.5641
	movl	%eax, -20(%rbp)	# D.5641, ap.fp_offset
	jmp	.L24	#
.L23:
	.loc 1 124 0 discriminator 1
	movq	-16(%rbp), %rax	# ap.overflow_arg_area, D.5642
	addq	$8, %rax	#, D.5642
	movq	%rax, -16(%rbp)	# D.5642, ap.overflow_arg_area
.L24:
	.loc 1 127 0 is_stmt 1
	addl	$307, -36(%rbp)	#, total_width
	.loc 1 128 0
	jmp	.L15	#
.L20:
	.loc 1 130 0
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	cmpl	$48, %eax	#, D.5641
	jae	.L25	#,
	.loc 1 130 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rdx	# ap.reg_save_area, D.5642
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	movl	%eax, %eax	# D.5641, D.5643
	addq	%rdx, %rax	# D.5642, addr.27
	movl	-24(%rbp), %edx	# ap.gp_offset, D.5641
	addl	$8, %edx	#, D.5641
	movl	%edx, -24(%rbp)	# D.5641, ap.gp_offset
	jmp	.L26	#
.L25:
	.loc 1 130 0 discriminator 1
	movq	-16(%rbp), %rdx	# ap.overflow_arg_area, D.5642
	movq	%rdx, %rax	# D.5642, addr.27
	addq	$8, %rdx	#, D.5642
	movq	%rdx, -16(%rbp)	# D.5642, ap.overflow_arg_area
.L26:
	movq	(%rax), %rax	# MEM[(char * * {ref-all})addr.27_7], D.5640
	movq	%rax, %rdi	# D.5640,
	call	strlen	#
	movl	%eax, %edx	# D.5637, D.5638
	movl	-36(%rbp), %eax	# total_width, total_width.28
	addl	%edx, %eax	# D.5638, D.5638
	movl	%eax, -36(%rbp)	# D.5638, total_width
	.loc 1 131 0 is_stmt 1 discriminator 1
	jmp	.L15	#
.L19:
	.loc 1 134 0
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	cmpl	$48, %eax	#, D.5641
	jae	.L27	#,
	.loc 1 134 0 is_stmt 0 discriminator 2
	movl	-24(%rbp), %eax	# ap.gp_offset, D.5641
	addl	$8, %eax	#, D.5641
	movl	%eax, -24(%rbp)	# D.5641, ap.gp_offset
	.loc 1 135 0 is_stmt 1 discriminator 2
	jmp	.L33	#
.L27:
	.loc 1 134 0 discriminator 1
	movq	-16(%rbp), %rax	# ap.overflow_arg_area, D.5642
	addq	$8, %rax	#, D.5642
	movq	%rax, -16(%rbp)	# D.5642, ap.overflow_arg_area
.L33:
	.loc 1 135 0
	nop
.L15:
	.loc 1 137 0
	movq	-32(%rbp), %rax	# p, p.30
	addq	$1, %rax	#, p.31
	movq	%rax, -32(%rbp)	# p.31, p
.L2:
	.loc 1 80 0 discriminator 1
	movq	-32(%rbp), %rax	# p, p.32
	movzbl	(%rax), %eax	# *p.32_15, D.5639
	testb	%al, %al	# D.5639
	jne	.L29	#,
	.loc 1 146 0
	movl	-36(%rbp), %eax	# total_width, tmp193
	cltq
	movq	%rax, %rdi	# D.5637,
	call	malloc	#
	movq	%rax, %rdx	# tmp194, D.5642
	movq	-56(%rbp), %rax	# result, tmp195
	movq	%rdx, (%rax)	# D.5642, *result_138(D)
	.loc 1 147 0
	movq	-56(%rbp), %rax	# result, tmp196
	movq	(%rax), %rax	# *result_138(D), D.5640
	testq	%rax, %rax	# D.5640
	je	.L30	#,
	.loc 1 148 0
	movq	-56(%rbp), %rax	# result, tmp197
	movq	(%rax), %rax	# *result_138(D), D.5640
	movq	-72(%rbp), %rdx	# args, tmp198
	movq	-64(%rbp), %rcx	# format, tmp199
	movq	%rcx, %rsi	# tmp199,
	movq	%rax, %rdi	# D.5640,
	call	vsprintf	#
	jmp	.L32	#
.L30:
	.loc 1 150 0
	movl	$0, %eax	#, D.5636
.L32:
	.loc 1 151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	int_vasprintf, .-int_vasprintf
	.globl	vasprintf
	.type	vasprintf, @function
vasprintf:
.LFB3:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# result, result
	movq	%rsi, -16(%rbp)	# format, format
	movq	%rdx, -24(%rbp)	# args, args
	.loc 1 163 0
	movq	-24(%rbp), %rdx	# args, tmp61
	movq	-16(%rbp), %rcx	# format, tmp62
	movq	-8(%rbp), %rax	# result, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	int_vasprintf	#
	.loc 1 164 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	vasprintf, .-vasprintf
.Letext0:
	.file 2 "<built-in>"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 4 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1bf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x1
	.long	.LASF22
	.long	.LASF23
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
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x28
	.long	0x46
	.uleb128 0x5
	.long	0x56
	.long	0x56
	.uleb128 0x6
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0x93
	.uleb128 0x8
	.long	.LASF1
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0
	.uleb128 0x8
	.long	.LASF2
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0x4
	.uleb128 0x8
	.long	.LASF3
	.byte	0x2
	.byte	0
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF4
	.byte	0x2
	.byte	0
	.long	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x62
	.long	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0xa
	.byte	0x8
	.long	0xd7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xa
	.byte	0x8
	.long	0xe4
	.uleb128 0xb
	.long	0xd7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x3f
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x40
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x41
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x42
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x44
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x47
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.string	"ap"
	.byte	0x1
	.byte	0x48
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xd1
	.uleb128 0xa
	.byte	0x8
	.long	0x56
	.uleb128 0x10
	.long	.LASF26
	.byte	0x4
	.value	0x18f
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x9b
	.long	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x9c
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0xa0
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF15:
	.string	"long long int"
.LASF6:
	.string	"__gnuc_va_list"
.LASF25:
	.string	"int_vasprintf"
.LASF5:
	.string	"unsigned int"
.LASF7:
	.string	"va_list"
.LASF8:
	.string	"long unsigned int"
.LASF16:
	.string	"long long unsigned int"
.LASF4:
	.string	"reg_save_area"
.LASF22:
	.string	"vasprintf.c"
.LASF9:
	.string	"unsigned char"
.LASF2:
	.string	"fp_offset"
.LASF14:
	.string	"char"
.LASF17:
	.string	"result"
.LASF13:
	.string	"long int"
.LASF24:
	.string	"__va_list_tag"
.LASF21:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF26:
	.string	"vasprintf"
.LASF18:
	.string	"format"
.LASF19:
	.string	"args"
.LASF10:
	.string	"short unsigned int"
.LASF11:
	.string	"signed char"
.LASF20:
	.string	"total_width"
.LASF3:
	.string	"overflow_arg_area"
.LASF12:
	.string	"short int"
.LASF1:
	.string	"gp_offset"
.LASF0:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
