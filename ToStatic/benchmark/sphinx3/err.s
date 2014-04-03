	.file	"err.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 err.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.string	"%s: \"%s\", line %ld: "
	.text
	.globl	_E__pr_header
	.type	_E__pr_header, @function
_E__pr_header:
.LFB2:
	.file 1 "err.c"
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# ln, ln
	movq	%rdx, -24(%rbp)	# msg, msg
	.loc 1 74 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rdi	# stderr.0,
	call	fflush	#
	.loc 1 75 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	-16(%rbp), %rsi	# ln, tmp61
	movq	-8(%rbp), %rcx	# f, tmp62
	movq	-24(%rbp), %rdx	# msg, tmp63
	movq	%rsi, %r8	# tmp61,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.1,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 76 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_E__pr_header, .-_E__pr_header
	.section	.rodata
.LC1:
	.string	"%s: %s(%ld): "
	.text
	.globl	_E__pr_info_header
	.type	_E__pr_info_header, @function
_E__pr_info_header:
.LFB3:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# ln, ln
	movq	%rdx, -24(%rbp)	# msg, msg
	.loc 1 85 0
	movq	stdout(%rip), %rax	# stdout, stdout.2
	movq	-16(%rbp), %rsi	# ln, tmp60
	movq	-8(%rbp), %rcx	# f, tmp61
	movq	-24(%rbp), %rdx	# msg, tmp62
	movq	%rsi, %r8	# tmp60,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# stdout.2,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 86 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_E__pr_info_header, .-_E__pr_info_header
	.globl	_E__pr_warn
	.type	_E__pr_warn, @function
_E__pr_warn:
.LFB4:
	.loc 1 90 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L4	#,
	.loc 1 90 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L4:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 93 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp64
	movq	%rax, -192(%rbp)	# tmp64, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp65
	movq	%rax, -184(%rbp)	# tmp65, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 94 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rcx	# fmt, tmp63
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# stderr.3,
	call	vfprintf	#
	.loc 1 97 0
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rdi	# stderr.4,
	call	fflush	#
	.loc 1 98 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_E__pr_warn, .-_E__pr_warn
	.globl	_E__pr_info
	.type	_E__pr_info, @function
_E__pr_info:
.LFB5:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L6	#,
	.loc 1 102 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L6:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 105 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp63
	movq	%rax, -192(%rbp)	# tmp63, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp64
	movq	%rax, -184(%rbp)	# tmp64, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 106 0
	movq	stdout(%rip), %rax	# stdout, stdout.5
	leaq	-200(%rbp), %rdx	#, tmp61
	movq	-216(%rbp), %rcx	# fmt, tmp62
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# stdout.5,
	call	vfprintf	#
	.loc 1 110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_E__pr_info, .-_E__pr_info
	.globl	_E__die_error
	.type	_E__die_error, @function
_E__die_error:
.LFB6:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L8	#,
	.loc 1 113 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L8:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 116 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp65
	movq	%rax, -192(%rbp)	# tmp65, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp66
	movq	%rax, -184(%rbp)	# tmp66, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 118 0
	movq	stderr(%rip), %rax	# stderr, stderr.6
	leaq	-200(%rbp), %rdx	#, tmp63
	movq	-216(%rbp), %rcx	# fmt, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# stderr.6,
	call	vfprintf	#
	.loc 1 119 0
	movq	stderr(%rip), %rax	# stderr, stderr.7
	movq	%rax, %rdi	# stderr.7,
	call	fflush	#
	.loc 1 123 0
	movq	stderr(%rip), %rax	# stderr, stderr.8
	movq	%rax, %rdi	# stderr.8,
	call	fflush	#
	.loc 1 125 0
	movl	$-1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE6:
	.size	_E__die_error, .-_E__die_error
	.section	.rodata
.LC2:
	.string	""
	.text
	.globl	_E__fatal_sys_error
	.type	_E__fatal_sys_error, @function
_E__fatal_sys_error:
.LFB7:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L10	#,
	.loc 1 129 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L10:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 132 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -192(%rbp)	# tmp68, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 133 0
	movq	stderr(%rip), %rax	# stderr, stderr.9
	leaq	-200(%rbp), %rdx	#, tmp66
	movq	-216(%rbp), %rcx	# fmt, tmp67
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# stderr.9,
	call	vfprintf	#
	.loc 1 136 0
	movq	stderr(%rip), %rax	# stderr, stderr.10
	movq	%rax, %rsi	# stderr.10,
	movl	$59, %edi	#,
	call	_IO_putc	#
	.loc 1 137 0
	movq	stderr(%rip), %rax	# stderr, stderr.11
	movq	%rax, %rsi	# stderr.11,
	movl	$32, %edi	#,
	call	_IO_putc	#
	.loc 1 139 0
	movl	$.LC2, %edi	#,
	call	perror	#
	.loc 1 141 0
	movq	stderr(%rip), %rax	# stderr, stderr.12
	movq	%rax, %rdi	# stderr.12,
	call	fflush	#
	.loc 1 143 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_6, D.2939
	movl	%eax, %edi	# D.2939,
	call	exit	#
	.cfi_endproc
.LFE7:
	.size	_E__fatal_sys_error, .-_E__fatal_sys_error
	.globl	_E__sys_error
	.type	_E__sys_error, @function
_E__sys_error:
.LFB8:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L12	#,
	.loc 1 147 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L12:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 150 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 151 0
	movq	stderr(%rip), %rax	# stderr, stderr.13
	leaq	-200(%rbp), %rdx	#, tmp64
	movq	-216(%rbp), %rcx	# fmt, tmp65
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# stderr.13,
	call	vfprintf	#
	.loc 1 154 0
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movq	%rax, %rsi	# stderr.14,
	movl	$59, %edi	#,
	call	_IO_putc	#
	.loc 1 155 0
	movq	stderr(%rip), %rax	# stderr, stderr.15
	movq	%rax, %rsi	# stderr.15,
	movl	$32, %edi	#,
	call	_IO_putc	#
	.loc 1 157 0
	movl	$.LC2, %edi	#,
	call	perror	#
	.loc 1 159 0
	movq	stderr(%rip), %rax	# stderr, stderr.16
	movq	%rax, %rdi	# stderr.16,
	call	fflush	#
	.loc 1 160 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_E__sys_error, .-_E__sys_error
	.globl	_E__abort_error
	.type	_E__abort_error, @function
_E__abort_error:
.LFB9:
	.loc 1 163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L14	#,
	.loc 1 163 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L14:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 166 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&pvar].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&pvar].fp_offset
	leaq	16(%rbp), %rax	#, tmp64
	movq	%rax, -192(%rbp)	# tmp64, MEM[(struct [1] *)&pvar].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp65
	movq	%rax, -184(%rbp)	# tmp65, MEM[(struct [1] *)&pvar].reg_save_area
	.loc 1 167 0
	movq	stderr(%rip), %rax	# stderr, stderr.17
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rcx	# fmt, tmp63
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# stderr.17,
	call	vfprintf	#
	.loc 1 170 0
	movq	stderr(%rip), %rax	# stderr, stderr.18
	movq	%rax, %rdi	# stderr.18,
	call	fflush	#
	.loc 1 172 0
	call	abort	#
	.cfi_endproc
.LFE9:
	.size	_E__abort_error, .-_E__abort_error
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x50e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.long	.LASF67
	.long	.LASF68
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
	.long	.LASF42
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
	.long	0x2ad
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x2b3
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
	.long	0x2b9
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x2c9
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
	.long	0x2cf
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x28
	.long	0x228
	.uleb128 0xa
	.long	0x238
	.long	0x238
	.uleb128 0xb
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0x275
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0
	.long	0x4d
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0
	.long	0x4d
	.byte	0x4
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0
	.long	0x8d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0
	.long	0x8d
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF69
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x2ad
	.uleb128 0x8
	.long	.LASF49
	.byte	0x4
	.byte	0xa2
	.long	0x2ad
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x4
	.byte	0xa3
	.long	0x2b3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27c
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xa
	.long	0x95
	.long	0x2c9
	.uleb128 0xb
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x275
	.uleb128 0xa
	.long	0x95
	.long	0x2df
	.uleb128 0xb
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5
	.uleb128 0xd
	.long	0x95
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x4f
	.long	0x21d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0x48
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x348
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x48
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"ln"
	.byte	0x1
	.byte	0x48
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"msg"
	.byte	0x1
	.byte	0x48
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.byte	0x4f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x38d
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x4f
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"ln"
	.byte	0x1
	.byte	0x4f
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"msg"
	.byte	0x1
	.byte	0x4f
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.byte	0x59
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ca
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0x59
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x5b
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x65
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x407
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0x65
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x67
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.byte	0x70
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x444
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0x70
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x72
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.byte	0x80
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x481
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0x80
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x82
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.byte	0x92
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4be
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0x92
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x94
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.byte	0xa2
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fb
	.uleb128 0xf
	.string	"fmt"
	.byte	0x1
	.byte	0xa2
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0xa4
	.long	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x12
	.long	.LASF64
	.byte	0x7
	.byte	0xa9
	.long	0x2b3
	.uleb128 0x12
	.long	.LASF65
	.byte	0x7
	.byte	0xaa
	.long	0x2b3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
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
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF67:
	.string	"err.c"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF44:
	.string	"gp_offset"
.LASF52:
	.string	"va_list"
.LASF19:
	.string	"_IO_buf_base"
.LASF54:
	.string	"long long unsigned int"
.LASF61:
	.string	"_E__fatal_sys_error"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF48:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF68:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF46:
	.string	"overflow_arg_area"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF50:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF64:
	.string	"stdout"
.LASF56:
	.string	"_E__pr_info_header"
.LASF10:
	.string	"sizetype"
.LASF41:
	.string	"__gnuc_va_list"
.LASF18:
	.string	"_IO_write_end"
.LASF69:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF58:
	.string	"_E__pr_info"
.LASF65:
	.string	"stderr"
.LASF51:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF60:
	.string	"_E__die_error"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF55:
	.string	"_E__pr_header"
.LASF30:
	.string	"_vtable_offset"
.LASF47:
	.string	"reg_save_area"
.LASF11:
	.string	"char"
.LASF59:
	.string	"pvar"
.LASF49:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF62:
	.string	"_E__sys_error"
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
.LASF40:
	.string	"_unused2"
.LASF63:
	.string	"_E__abort_error"
.LASF66:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"_IO_backup_base"
.LASF45:
	.string	"fp_offset"
.LASF57:
	.string	"_E__pr_warn"
.LASF16:
	.string	"_IO_write_base"
.LASF43:
	.string	"__va_list_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
