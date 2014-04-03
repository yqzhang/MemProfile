	.file	"concat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 concat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	vconcat_length, @function
vconcat_length:
.LFB2:
	.file 1 "concat.c"
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# first, first
	movq	%rsi, -32(%rbp)	# args, args
	.loc 1 76 0
	movq	$0, -16(%rbp)	#, length
	.loc 1 79 0
	movq	-24(%rbp), %rax	# first, tmp71
	movq	%rax, -8(%rbp)	# tmp71, arg
	jmp	.L2	#
.L5:
	.loc 1 80 0 discriminator 2
	movq	-8(%rbp), %rax	# arg, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	addq	%rax, -16(%rbp)	# D.5108, length
	.loc 1 79 0 discriminator 2
	movq	-32(%rbp), %rax	# args, tmp73
	movl	(%rax), %eax	# args_9(D)->gp_offset, D.5109
	cmpl	$48, %eax	#, D.5109
	jae	.L3	#,
	movq	-32(%rbp), %rax	# args, tmp74
	movq	16(%rax), %rdx	# args_9(D)->reg_save_area, D.5110
	movq	-32(%rbp), %rax	# args, tmp75
	movl	(%rax), %eax	# args_9(D)->gp_offset, D.5109
	movl	%eax, %eax	# D.5109, D.5111
	addq	%rdx, %rax	# D.5110, addr.0
	movq	-32(%rbp), %rdx	# args, tmp76
	movl	(%rdx), %edx	# args_9(D)->gp_offset, D.5109
	leal	8(%rdx), %ecx	#, D.5109
	movq	-32(%rbp), %rdx	# args, tmp77
	movl	%ecx, (%rdx)	# D.5109, args_9(D)->gp_offset
	jmp	.L4	#
.L3:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# args, tmp78
	movq	8(%rax), %rdx	# args_9(D)->overflow_arg_area, D.5110
	movq	%rdx, %rax	# D.5110, addr.0
	leaq	8(%rdx), %rcx	#, D.5110
	movq	-32(%rbp), %rdx	# args, tmp79
	movq	%rcx, 8(%rdx)	# D.5110, args_9(D)->overflow_arg_area
.L4:
	movq	(%rax), %rax	# MEM[(const char * * {ref-all})addr.0_3], tmp80
	movq	%rax, -8(%rbp)	# tmp80, arg
.L2:
	cmpq	$0, -8(%rbp)	#, arg
	jne	.L5	#,
	.loc 1 82 0 is_stmt 1
	movq	-16(%rbp), %rax	# length, D.5108
	.loc 1 83 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	vconcat_length, .-vconcat_length
	.type	vconcat_copy, @function
vconcat_copy:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# dst, dst
	movq	%rsi, -48(%rbp)	# first, first
	movq	%rdx, -56(%rbp)	# args, args
	.loc 1 92 0
	movq	-40(%rbp), %rax	# dst, tmp70
	movq	%rax, -24(%rbp)	# tmp70, end
	.loc 1 95 0
	movq	-48(%rbp), %rax	# first, tmp71
	movq	%rax, -16(%rbp)	# tmp71, arg
	jmp	.L8	#
.L11:
.LBB2:
	.loc 1 97 0 discriminator 2
	movq	-16(%rbp), %rax	# arg, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	movq	%rax, -8(%rbp)	# tmp73, length
	.loc 1 98 0 discriminator 2
	movq	-8(%rbp), %rdx	# length, tmp74
	movq	-16(%rbp), %rcx	# arg, tmp75
	movq	-24(%rbp), %rax	# end, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	memcpy	#
	.loc 1 99 0 discriminator 2
	movq	-8(%rbp), %rax	# length, tmp77
	addq	%rax, -24(%rbp)	# tmp77, end
.LBE2:
	.loc 1 95 0 discriminator 2
	movq	-56(%rbp), %rax	# args, tmp78
	movl	(%rax), %eax	# args_10(D)->gp_offset, D.5112
	cmpl	$48, %eax	#, D.5112
	jae	.L9	#,
	movq	-56(%rbp), %rax	# args, tmp79
	movq	16(%rax), %rdx	# args_10(D)->reg_save_area, D.5113
	movq	-56(%rbp), %rax	# args, tmp80
	movl	(%rax), %eax	# args_10(D)->gp_offset, D.5112
	movl	%eax, %eax	# D.5112, D.5114
	addq	%rdx, %rax	# D.5113, addr.1
	movq	-56(%rbp), %rdx	# args, tmp81
	movl	(%rdx), %edx	# args_10(D)->gp_offset, D.5112
	leal	8(%rdx), %ecx	#, D.5112
	movq	-56(%rbp), %rdx	# args, tmp82
	movl	%ecx, (%rdx)	# D.5112, args_10(D)->gp_offset
	jmp	.L10	#
.L9:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# args, tmp83
	movq	8(%rax), %rdx	# args_10(D)->overflow_arg_area, D.5113
	movq	%rdx, %rax	# D.5113, addr.1
	leaq	8(%rdx), %rcx	#, D.5113
	movq	-56(%rbp), %rdx	# args, tmp84
	movq	%rcx, 8(%rdx)	# D.5113, args_10(D)->overflow_arg_area
.L10:
	movq	(%rax), %rax	# MEM[(const char * * {ref-all})addr.1_3], tmp85
	movq	%rax, -16(%rbp)	# tmp85, arg
.L8:
	cmpq	$0, -16(%rbp)	#, arg
	jne	.L11	#,
	.loc 1 101 0 is_stmt 1
	movq	-24(%rbp), %rax	# end, tmp86
	movb	$0, (%rax)	#, *end_1
	.loc 1 103 0
	movq	-40(%rbp), %rax	# dst, D.5115
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	vconcat_copy, .-vconcat_copy
	.globl	concat_length
	.type	concat_length, @function
concat_length:
.LFB4:
	.loc 1 110 0
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
	.loc 1 110 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L14:
	movq	%rdi, -216(%rbp)	# first, first
.LBB3:
	.loc 1 113 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&args].reg_save_area
.LBB4:
	.loc 1 115 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rax	# first, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	vconcat_length	#
	movq	%rax, -208(%rbp)	# tmp64, length
.LBE4:
.LBE3:
	.loc 1 118 0
	movq	-208(%rbp), %rax	# length, D.5116
	.loc 1 119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	concat_length, .-concat_length
	.globl	concat_copy
	.type	concat_copy, @function
concat_copy:
.LFB5:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# dst, dst
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L17	#,
	.loc 1 125 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L17:
	movq	%rsi, -224(%rbp)	# first, first
.LBB5:
	.loc 1 128 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp67
	movq	%rax, -192(%rbp)	# tmp67, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp68
	movq	%rax, -184(%rbp)	# tmp68, MEM[(struct [1] *)&args].reg_save_area
.LBB6:
	.loc 1 131 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-224(%rbp), %rcx	# first, tmp63
	movq	-216(%rbp), %rax	# dst, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	vconcat_copy	#
	.loc 1 132 0
	movq	-216(%rbp), %rax	# dst, tmp65
	movq	%rax, -208(%rbp)	# tmp65, save_dst
.LBE6:
.LBE5:
	.loc 1 135 0
	movq	-208(%rbp), %rax	# save_dst, D.5119
	.loc 1 136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	concat_copy, .-concat_copy
	.comm	libiberty_concat_ptr,8,8
	.globl	concat_copy2
	.type	concat_copy2, @function
concat_copy2:
.LFB6:
	.loc 1 144 0
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
	je	.L20	#,
	.loc 1 144 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L20:
	movq	%rdi, -216(%rbp)	# first, first
.LBB7:
	.loc 1 145 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&args].reg_save_area
.LBB8:
	.loc 1 147 0
	movq	libiberty_concat_ptr(%rip), %rax	# libiberty_concat_ptr, libiberty_concat_ptr.2
	leaq	-200(%rbp), %rdx	#, tmp63
	movq	-216(%rbp), %rcx	# first, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# libiberty_concat_ptr.2,
	call	vconcat_copy	#
.LBE8:
.LBE7:
	.loc 1 150 0
	movq	libiberty_concat_ptr(%rip), %rax	# libiberty_concat_ptr, D.5122
	.loc 1 151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	concat_copy2, .-concat_copy2
	.globl	concat
	.type	concat, @function
concat:
.LFB7:
	.loc 1 155 0
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
	je	.L23	#,
	.loc 1 155 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L23:
	movq	%rdi, -216(%rbp)	# first, first
.LBB9:
	.loc 1 159 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp72
	movq	%rax, -192(%rbp)	# tmp72, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp73
	movq	%rax, -184(%rbp)	# tmp73, MEM[(struct [1] *)&args].reg_save_area
.LBB10:
	.loc 1 161 0
	leaq	-200(%rbp), %rdx	#, tmp64
	movq	-216(%rbp), %rax	# first, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	vconcat_length	#
	addq	$1, %rax	#, D.5125
	movq	%rax, %rdi	# D.5125,
	call	xmalloc	#
	movq	%rax, -208(%rbp)	# tmp66, newstr
.LBE10:
.LBE9:
.LBB11:
	.loc 1 165 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp74
	movq	%rax, -192(%rbp)	# tmp74, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp75
	movq	%rax, -184(%rbp)	# tmp75, MEM[(struct [1] *)&args].reg_save_area
.LBB12:
	.loc 1 167 0
	leaq	-200(%rbp), %rdx	#, tmp68
	movq	-216(%rbp), %rcx	# first, tmp69
	movq	-208(%rbp), %rax	# newstr, tmp70
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	vconcat_copy	#
.LBE12:
.LBE11:
	.loc 1 170 0
	movq	-208(%rbp), %rax	# newstr, D.5126
	.loc 1 171 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	concat, .-concat
	.globl	reconcat
	.type	reconcat, @function
reconcat:
.LFB8:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# optr, optr
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L26	#,
	.loc 1 192 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L26:
	movq	%rsi, -224(%rbp)	# first, first
.LBB13:
	.loc 1 196 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp73
	movq	%rax, -192(%rbp)	# tmp73, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp74
	movq	%rax, -184(%rbp)	# tmp74, MEM[(struct [1] *)&args].reg_save_area
.LBB14:
	.loc 1 199 0
	leaq	-200(%rbp), %rdx	#, tmp64
	movq	-224(%rbp), %rax	# first, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	vconcat_length	#
	addq	$1, %rax	#, D.5132
	movq	%rax, %rdi	# D.5132,
	call	xmalloc	#
	movq	%rax, -208(%rbp)	# tmp66, newstr
.LBE14:
.LBE13:
.LBB15:
	.loc 1 203 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp75
	movq	%rax, -192(%rbp)	# tmp75, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp76
	movq	%rax, -184(%rbp)	# tmp76, MEM[(struct [1] *)&args].reg_save_area
.LBB16:
	.loc 1 206 0
	leaq	-200(%rbp), %rdx	#, tmp68
	movq	-224(%rbp), %rcx	# first, tmp69
	movq	-208(%rbp), %rax	# newstr, tmp70
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	vconcat_copy	#
	.loc 1 207 0
	cmpq	$0, -216(%rbp)	#, optr
	je	.L27	#,
	.loc 1 208 0
	movq	-216(%rbp), %rax	# optr, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
.L27:
.LBE16:
.LBE15:
	.loc 1 211 0
	movq	-208(%rbp), %rax	# newstr, D.5133
	.loc 1 212 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	reconcat, .-reconcat
.Letext0:
	.file 2 "<built-in>"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ac
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.long	.LASF31
	.long	.LASF32
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
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x28
	.long	0x54
	.uleb128 0x5
	.long	0x64
	.long	0x64
	.uleb128 0x6
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF33
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0xa1
	.uleb128 0x8
	.long	.LASF3
	.byte	0x2
	.byte	0
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF4
	.byte	0x2
	.byte	0
	.long	0xa1
	.byte	0x4
	.uleb128 0x8
	.long	.LASF5
	.byte	0x2
	.byte	0
	.long	0xa8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF6
	.byte	0x2
	.byte	0
	.long	0xa8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x62
	.long	0x49
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xa
	.byte	0x8
	.long	0xd7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0xa
	.byte	0x8
	.long	0xf2
	.uleb128 0xb
	.long	0xd7
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0x48
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x151
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x49
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x4a
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x4c
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x4d
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x64
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.byte	0x57
	.long	0xd1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e0
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0x58
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x59
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x5a
	.long	0x151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x5c
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x5d
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x61
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x6d
	.long	0x42
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x253
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x6d
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x6f
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x71
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x7c
	.long	0xd1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0x7c
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x7c
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x7e
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x11
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x80
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x8f
	.long	0xd1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x339
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x8f
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x13
	.uleb128 0x11
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x91
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0x9a
	.long	0xd1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e2
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x9a
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x9c
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x15
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x3af
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x9f
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x11
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0xa5
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0xbf
	.long	0xd1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x49a
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.byte	0xbf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0xbf
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0xc1
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x15
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x467
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0xc4
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x11
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0xcb
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.byte	0x8a
	.long	0xd1
	.uleb128 0x9
	.byte	0x3
	.quad	libiberty_concat_ptr
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
.LASF23:
	.string	"concat_copy"
.LASF28:
	.string	"reconcat"
.LASF22:
	.string	"concat_length"
.LASF4:
	.string	"fp_offset"
.LASF17:
	.string	"first"
.LASF27:
	.string	"newstr"
.LASF26:
	.string	"concat"
.LASF21:
	.string	"vconcat_copy"
.LASF31:
	.string	"concat.c"
.LASF20:
	.string	"vconcat_length"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"short unsigned int"
.LASF9:
	.string	"va_list"
.LASF10:
	.string	"unsigned char"
.LASF8:
	.string	"__gnuc_va_list"
.LASF3:
	.string	"gp_offset"
.LASF7:
	.string	"unsigned int"
.LASF6:
	.string	"reg_save_area"
.LASF25:
	.string	"concat_copy2"
.LASF15:
	.string	"long long unsigned int"
.LASF33:
	.string	"__va_list_tag"
.LASF5:
	.string	"overflow_arg_area"
.LASF0:
	.string	"sizetype"
.LASF16:
	.string	"long long int"
.LASF24:
	.string	"save_dst"
.LASF14:
	.string	"char"
.LASF30:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF13:
	.string	"short int"
.LASF18:
	.string	"args"
.LASF1:
	.string	"long int"
.LASF34:
	.string	"libiberty_concat_ptr"
.LASF12:
	.string	"signed char"
.LASF32:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF29:
	.string	"optr"
.LASF19:
	.string	"length"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
