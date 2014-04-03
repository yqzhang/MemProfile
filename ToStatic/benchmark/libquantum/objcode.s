	.file	"objcode.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX objcode.c -mtune=generic -march=x86-64
# -g -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.globl	opstatus
	.bss
	.align 4
	.type	opstatus, @object
	.size	opstatus, 4
opstatus:
	.zero	4
	.globl	objcode
	.align 8
	.type	objcode, @object
	.size	objcode, 8
objcode:
	.zero	8
	.globl	position
	.align 8
	.type	position, @object
	.size	position, 8
position:
	.zero	8
	.globl	allocated
	.align 8
	.type	allocated, @object
	.size	allocated, 8
allocated:
	.zero	8
	.comm	globalfile,8,8
	.text
	.globl	quantum_mu2char
	.type	quantum_mu2char, @function
quantum_mu2char:
.LFB5:
	.file 1 "objcode.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mu, mu
	movq	%rsi, -32(%rbp)	# buf, buf
	.loc 1 63 0
	movl	$8, -4(%rbp)	#, size
	.loc 1 65 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 67 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp71
	movslq	%eax, %rdx	# tmp71, D.3618
	movq	-32(%rbp), %rax	# buf, tmp72
	addq	%rax, %rdx	# tmp72, D.3619
	movl	-8(%rbp), %eax	# i, tmp73
	movl	-4(%rbp), %ecx	# size, tmp74
	subl	%eax, %ecx	# tmp73, D.3620
	movl	%ecx, %eax	# D.3620, D.3620
	subl	$1, %eax	#, D.3620
	sall	$3, %eax	#, D.3620
	movq	-24(%rbp), %rsi	# mu, tmp75
	movl	%eax, %ecx	# D.3620, tmp82
	shrq	%cl, %rsi	# tmp82, D.3621
	movq	%rsi, %rax	# D.3621, D.3621
	movb	%al, (%rdx)	# D.3622, *_8
	.loc 1 68 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp76
	movl	-4(%rbp), %edx	# size, tmp77
	subl	%eax, %edx	# tmp76, D.3620
	movl	%edx, %eax	# D.3620, D.3620
	subl	$1, %eax	#, D.3620
	sall	$3, %eax	#, D.3620
	movl	$1, %edx	#, tmp78
	movl	%eax, %ecx	# D.3620, tmp85
	salq	%cl, %rdx	# tmp85, D.3621
	movq	%rdx, %rax	# D.3621, D.3621
	subq	$1, %rax	#, D.3621
	andq	%rax, -24(%rbp)	# D.3621, mu
	.loc 1 65 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp79
	cmpl	-4(%rbp), %eax	# size, tmp79
	jl	.L3	#,
	.loc 1 70 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_mu2char, .-quantum_mu2char
	.globl	quantum_int2char
	.type	quantum_int2char, @function
quantum_int2char:
.LFB6:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# j, j
	movq	%rsi, -40(%rbp)	# buf, buf
	.loc 1 79 0
	movl	$4, -12(%rbp)	#, size
	.loc 1 81 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L5	#
.L6:
	.loc 1 83 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp71
	movslq	%eax, %rdx	# tmp71, D.3623
	movq	-40(%rbp), %rax	# buf, tmp72
	leaq	(%rdx,%rax), %rsi	#, D.3624
	movl	-16(%rbp), %eax	# i, tmp73
	movl	-12(%rbp), %edx	# size, tmp74
	subl	%eax, %edx	# tmp73, D.3625
	movl	%edx, %eax	# D.3625, D.3625
	subl	$1, %eax	#, D.3625
	sall	$3, %eax	#, D.3625
	movl	$1, %edx	#, tmp75
	movl	%eax, %ecx	# D.3625, tmp88
	movl	%edx, %ebx	# tmp75, D.3625
	sall	%cl, %ebx	# tmp88, D.3625
	movl	-28(%rbp), %eax	# j, tmp78
	cltd
	idivl	%ebx	# D.3625
	movb	%al, (%rsi)	# D.3626, *_8
	.loc 1 84 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp79
	movl	-12(%rbp), %edx	# size, tmp80
	subl	%eax, %edx	# tmp79, D.3625
	movl	%edx, %eax	# D.3625, D.3625
	subl	$1, %eax	#, D.3625
	sall	$3, %eax	#, D.3625
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# D.3625, tmp92
	sall	%cl, %edx	# tmp92, D.3625
	movl	%edx, %ecx	# D.3625, D.3625
	movl	-28(%rbp), %eax	# j, tmp83
	cltd
	idivl	%ecx	# D.3625
	movl	%edx, -28(%rbp)	# tmp84, j
	.loc 1 81 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L5:
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp86
	cmpl	-12(%rbp), %eax	# size, tmp86
	jl	.L6	#,
	.loc 1 86 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_int2char, .-quantum_int2char
	.globl	quantum_double2char
	.type	quantum_double2char, @function
quantum_double2char:
.LFB7:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)	# d, d
	movq	%rdi, -32(%rbp)	# buf, buf
	.loc 1 94 0
	leaq	-24(%rbp), %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
	.loc 1 96 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L8	#
.L9:
	.loc 1 97 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp66
	movslq	%eax, %rdx	# tmp66, D.3627
	movq	-32(%rbp), %rax	# buf, tmp67
	addq	%rax, %rdx	# tmp67, D.3628
	movl	-12(%rbp), %eax	# i, tmp68
	movslq	%eax, %rcx	# tmp68, D.3627
	movq	-8(%rbp), %rax	# p, tmp69
	addq	%rcx, %rax	# D.3627, D.3628
	movzbl	(%rax), %eax	# *_9, D.3629
	movb	%al, (%rdx)	# D.3629, *_7
	.loc 1 96 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L8:
	.loc 1 96 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, i.0
	cmpl	$7, %eax	#, i.0
	jbe	.L9	#,
	.loc 1 98 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_double2char, .-quantum_double2char
	.globl	quantum_char2mu
	.type	quantum_char2mu, @function
quantum_char2mu:
.LFB8:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# buf, buf
	.loc 1 103 0
	movq	$0, -8(%rbp)	#, mu
	.loc 1 105 0
	movl	$8, -12(%rbp)	#, size
	.loc 1 107 0
	movl	-12(%rbp), %eax	# size, tmp72
	subl	$1, %eax	#, tmp71
	movl	%eax, -16(%rbp)	# tmp71, i
	jmp	.L11	#
.L12:
	.loc 1 108 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp73
	movslq	%eax, %rdx	# tmp73, D.3630
	movq	-24(%rbp), %rax	# buf, tmp74
	addq	%rdx, %rax	# D.3630, D.3631
	movzbl	(%rax), %eax	# *_8, D.3632
	movzbl	%al, %edx	# D.3632, D.3633
	movl	-16(%rbp), %eax	# i, tmp75
	movl	-12(%rbp), %ecx	# size, tmp76
	subl	%eax, %ecx	# tmp75, D.3634
	movl	%ecx, %eax	# D.3634, D.3634
	subl	$1, %eax	#, D.3634
	sall	$3, %eax	#, D.3634
	movl	%eax, %ecx	# D.3634, tmp80
	salq	%cl, %rdx	# tmp80, D.3633
	movq	%rdx, %rax	# D.3633, D.3633
	addq	%rax, -8(%rbp)	# D.3633, mu
	.loc 1 107 0 discriminator 2
	subl	$1, -16(%rbp)	#, i
.L11:
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jns	.L12	#,
	.loc 1 110 0 is_stmt 1
	movq	-8(%rbp), %rax	# mu, D.3633
	.loc 1 111 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_char2mu, .-quantum_char2mu
	.globl	quantum_char2int
	.type	quantum_char2int, @function
quantum_char2int:
.LFB9:
	.loc 1 114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# buf, buf
	.loc 1 116 0
	movl	$0, -8(%rbp)	#, j
	.loc 1 118 0
	movl	$4, -4(%rbp)	#, size
	.loc 1 120 0
	movl	-4(%rbp), %eax	# size, tmp72
	subl	$1, %eax	#, tmp71
	movl	%eax, -12(%rbp)	# tmp71, i
	jmp	.L15	#
.L16:
	.loc 1 121 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp73
	movslq	%eax, %rdx	# tmp73, D.3635
	movq	-24(%rbp), %rax	# buf, tmp74
	addq	%rdx, %rax	# D.3635, D.3636
	movzbl	(%rax), %eax	# *_8, D.3637
	movzbl	%al, %edx	# D.3637, D.3638
	movl	-12(%rbp), %eax	# i, tmp75
	movl	-4(%rbp), %ecx	# size, tmp76
	subl	%eax, %ecx	# tmp75, D.3638
	movl	%ecx, %eax	# D.3638, D.3638
	subl	$1, %eax	#, D.3638
	sall	$3, %eax	#, D.3638
	movl	%eax, %ecx	# D.3638, tmp80
	sall	%cl, %edx	# tmp80, D.3638
	movl	%edx, %eax	# D.3638, D.3638
	addl	%eax, -8(%rbp)	# D.3638, j
	.loc 1 120 0 discriminator 2
	subl	$1, -12(%rbp)	#, i
.L15:
	.loc 1 120 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L16	#,
	.loc 1 123 0 is_stmt 1
	movl	-8(%rbp), %eax	# j, D.3638
	.loc 1 124 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_char2int, .-quantum_char2int
	.globl	quantum_char2double
	.type	quantum_char2double, @function
quantum_char2double:
.LFB10:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# buf, buf
	.loc 1 128 0
	movq	-24(%rbp), %rax	# buf, tmp61
	movq	%rax, -8(%rbp)	# tmp61, d
	.loc 1 130 0
	movq	-8(%rbp), %rax	# d, tmp62
	movq	(%rax), %rax	# *d_2, D.3639
	.loc 1 131 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_char2double, .-quantum_char2double
	.section	.rodata
	.align 8
.LC0:
	.string	"Error allocating memory for objcode data!"
	.text
	.globl	quantum_objcode_start
	.type	quantum_objcode_start, @function
quantum_objcode_start:
.LFB11:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 139 0
	movl	$1, opstatus(%rip)	#, opstatus
	.loc 1 140 0
	movq	$1, allocated(%rip)	#, allocated
	.loc 1 141 0
	movl	$65536, %edi	#,
	call	malloc	#
	movq	%rax, objcode(%rip)	# objcode.1, objcode
	.loc 1 142 0
	movq	objcode(%rip), %rax	# objcode, objcode.2
	testq	%rax, %rax	# objcode.2
	jne	.L21	#,
	.loc 1 144 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 145 0
	movl	$1, %edi	#,
	call	exit	#
.L21:
	.loc 1 147 0
	movl	$65536, %edi	#,
	call	quantum_memman	#
	.loc 1 148 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	quantum_objcode_start, .-quantum_objcode_start
	.globl	quantum_objcode_stop
	.type	quantum_objcode_stop, @function
quantum_objcode_stop:
.LFB12:
	.loc 1 154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 155 0
	movl	$0, opstatus(%rip)	#, opstatus
	.loc 1 156 0
	movq	objcode(%rip), %rax	# objcode, objcode.3
	movq	%rax, %rdi	# objcode.3,
	call	free	#
	.loc 1 157 0
	movq	$0, objcode(%rip)	#, objcode
	.loc 1 158 0
	movq	allocated(%rip), %rdx	# allocated, allocated.4
	movl	$0, %eax	#, tmp63
	subq	%rdx, %rax	# allocated.4, tmp63
	salq	$16, %rax	#, tmp64
	movq	%rax, %rdi	# D.3643,
	call	quantum_memman	#
	.loc 1 159 0
	movq	$0, allocated(%rip)	#, allocated
	.loc 1 160 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	quantum_objcode_stop, .-quantum_objcode_stop
	.section	.rodata
.LC1:
	.string	"Unknown opcode 0x(%X)!\n"
	.align 8
.LC2:
	.string	"Error reallocating memory for objcode data!"
	.text
	.globl	quantum_objcode_put
	.type	quantum_objcode_put, @function
quantum_objcode_put:
.LFB13:
	.loc 1 166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 3, -24
	movq	%rsi, -184(%rbp)	#,
	movq	%rdx, -176(%rbp)	#,
	movq	%rcx, -168(%rbp)	#,
	movq	%r8, -160(%rbp)	#,
	movq	%r9, -152(%rbp)	#,
	testb	%al, %al	#
	je	.L24	#,
	.loc 1 166 0
	movaps	%xmm0, -144(%rbp)	#,
	movaps	%xmm1, -128(%rbp)	#,
	movaps	%xmm2, -112(%rbp)	#,
	movaps	%xmm3, -96(%rbp)	#,
	movaps	%xmm4, -80(%rbp)	#,
	movaps	%xmm5, -64(%rbp)	#,
	movaps	%xmm6, -48(%rbp)	#,
	movaps	%xmm7, -32(%rbp)	#,
.L24:
	movl	%edi, %eax	# operation, tmp191
	movb	%al, -340(%rbp)	# tmp191, operation
	movq	%fs:40, %rax	#, tmp247
	movq	%rax, -200(%rbp)	# tmp247, D.3651
	xorl	%eax, %eax	# tmp247
	.loc 1 173 0
	movl	opstatus(%rip), %eax	# opstatus, opstatus.5
	testl	%eax, %eax	# opstatus.5
	jne	.L25	#,
	.loc 1 174 0
	movl	$0, %eax	#, D.3644
	jmp	.L66	#
.L25:
	.loc 1 176 0
	movl	$8, -312(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -308(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp249
	movq	%rax, -304(%rbp)	# tmp249, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-192(%rbp), %rax	#, tmp250
	movq	%rax, -296(%rbp)	# tmp250, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 178 0
	movzbl	-340(%rbp), %eax	# operation, tmp193
	movb	%al, -288(%rbp)	# tmp193, buf
	.loc 1 180 0
	movzbl	-340(%rbp), %eax	# operation, D.3644
	cmpl	$11, %eax	#, D.3644
	jg	.L28	#,
	cmpl	$7, %eax	#, D.3644
	jge	.L29	#,
	cmpl	$2, %eax	#, D.3644
	je	.L30	#,
	cmpl	$2, %eax	#, D.3644
	jg	.L31	#,
	testl	%eax, %eax	# D.3644
	je	.L32	#,
	cmpl	$1, %eax	#, D.3644
	je	.L33	#,
	jmp	.L27	#
.L28:
	cmpl	$128, %eax	#, D.3644
	je	.L34	#,
	cmpl	$128, %eax	#, D.3644
	jg	.L35	#,
	cmpl	$13, %eax	#, D.3644
	je	.L36	#,
	cmpl	$13, %eax	#, D.3644
	jl	.L33	#,
	cmpl	$14, %eax	#, D.3644
	je	.L31	#,
	jmp	.L27	#
.L35:
	cmpl	$130, %eax	#, D.3644
	jle	.L31	#,
	cmpl	$255, %eax	#, D.3644
	je	.L34	#,
	jmp	.L27	#
.L32:
	.loc 1 183 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L37	#,
	.loc 1 183 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.6
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L38	#
.L37:
	.loc 1 183 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.6
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L38:
	movq	(%rax), %rax	# MEM[(long long unsigned int * {ref-all})addr.6_4], tmp194
	movq	%rax, -328(%rbp)	# tmp194, mu
	.loc 1 184 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp195
	leaq	1(%rax), %rdx	#, tmp196
	movq	-328(%rbp), %rax	# mu, tmp197
	movq	%rdx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	quantum_mu2char	#
	.loc 1 185 0 discriminator 1
	movl	$9, -332(%rbp)	#, size
	.loc 1 186 0 discriminator 1
	jmp	.L39	#
.L33:
	.loc 1 189 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L40	#,
	.loc 1 189 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.7
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L41	#
.L40:
	.loc 1 189 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.7
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L41:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.7_5], tmp198
	movl	%eax, -336(%rbp)	# tmp198, i
	.loc 1 190 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp199
	leaq	1(%rax), %rdx	#, tmp200
	movl	-336(%rbp), %eax	# i, tmp201
	movq	%rdx, %rsi	# tmp200,
	movl	%eax, %edi	# tmp201,
	call	quantum_int2char	#
	.loc 1 191 0 discriminator 1
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L42	#,
	.loc 1 191 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.8
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L43	#
.L42:
	.loc 1 191 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.8
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L43:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.8_6], tmp202
	movl	%eax, -336(%rbp)	# tmp202, i
	.loc 1 192 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp203
	leaq	5(%rax), %rdx	#, tmp204
	movl	-336(%rbp), %eax	# i, tmp205
	movq	%rdx, %rsi	# tmp204,
	movl	%eax, %edi	# tmp205,
	call	quantum_int2char	#
	.loc 1 193 0 discriminator 1
	movl	$9, -332(%rbp)	#, size
	.loc 1 194 0 discriminator 1
	jmp	.L39	#
.L30:
	.loc 1 196 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L44	#,
	.loc 1 196 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.9
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L45	#
.L44:
	.loc 1 196 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.9
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L45:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.9_7], tmp206
	movl	%eax, -336(%rbp)	# tmp206, i
	.loc 1 197 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp207
	leaq	1(%rax), %rdx	#, tmp208
	movl	-336(%rbp), %eax	# i, tmp209
	movq	%rdx, %rsi	# tmp208,
	movl	%eax, %edi	# tmp209,
	call	quantum_int2char	#
	.loc 1 198 0 discriminator 1
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L46	#,
	.loc 1 198 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.10
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L47	#
.L46:
	.loc 1 198 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.10
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L47:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.10_8], tmp210
	movl	%eax, -336(%rbp)	# tmp210, i
	.loc 1 199 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp211
	leaq	5(%rax), %rdx	#, tmp212
	movl	-336(%rbp), %eax	# i, tmp213
	movq	%rdx, %rsi	# tmp212,
	movl	%eax, %edi	# tmp213,
	call	quantum_int2char	#
	.loc 1 200 0 discriminator 1
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L48	#,
	.loc 1 200 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.11
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L49	#
.L48:
	.loc 1 200 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.11
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L49:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.11_9], tmp214
	movl	%eax, -336(%rbp)	# tmp214, i
	.loc 1 201 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp215
	leaq	9(%rax), %rdx	#, tmp216
	movl	-336(%rbp), %eax	# i, tmp217
	movq	%rdx, %rsi	# tmp216,
	movl	%eax, %edi	# tmp217,
	call	quantum_int2char	#
	.loc 1 202 0 discriminator 1
	movl	$13, -332(%rbp)	#, size
	.loc 1 203 0 discriminator 1
	jmp	.L39	#
.L31:
	.loc 1 211 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L50	#,
	.loc 1 211 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.12
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L51	#
.L50:
	.loc 1 211 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.12
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L51:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.12_10], tmp218
	movl	%eax, -336(%rbp)	# tmp218, i
	.loc 1 212 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp219
	leaq	1(%rax), %rdx	#, tmp220
	movl	-336(%rbp), %eax	# i, tmp221
	movq	%rdx, %rsi	# tmp220,
	movl	%eax, %edi	# tmp221,
	call	quantum_int2char	#
	.loc 1 213 0 discriminator 1
	movl	$5, -332(%rbp)	#, size
	.loc 1 214 0 discriminator 1
	jmp	.L39	#
.L29:
	.loc 1 220 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L52	#,
	.loc 1 220 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.13
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L53	#
.L52:
	.loc 1 220 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.13
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L53:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.13_11], tmp222
	movl	%eax, -336(%rbp)	# tmp222, i
	.loc 1 221 0 is_stmt 1 discriminator 1
	movl	-308(%rbp), %eax	# args.fp_offset, D.3645
	cmpl	$176, %eax	#, D.3645
	jae	.L54	#,
	.loc 1 221 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-308(%rbp), %eax	# args.fp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.14
	movl	-308(%rbp), %edx	# args.fp_offset, D.3645
	addl	$16, %edx	#, D.3645
	movl	%edx, -308(%rbp)	# D.3645, args.fp_offset
	jmp	.L55	#
.L54:
	.loc 1 221 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.14
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L55:
	movq	(%rax), %rax	# MEM[(double * {ref-all})addr.14_12], tmp223
	movq	%rax, -320(%rbp)	# tmp223, d
	.loc 1 222 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp224
	leaq	1(%rax), %rdx	#, tmp225
	movl	-336(%rbp), %eax	# i, tmp226
	movq	%rdx, %rsi	# tmp225,
	movl	%eax, %edi	# tmp226,
	call	quantum_int2char	#
	.loc 1 223 0 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp227
	leaq	5(%rax), %rdx	#, tmp228
	movq	-320(%rbp), %rax	# d, tmp229
	movq	%rdx, %rdi	# tmp228,
	movq	%rax, -352(%rbp)	# tmp229, %sfp
	movsd	-352(%rbp), %xmm0	# %sfp,
	call	quantum_double2char	#
	.loc 1 224 0 discriminator 1
	movl	$13, -332(%rbp)	#, size
	.loc 1 225 0 discriminator 1
	jmp	.L39	#
.L36:
	.loc 1 227 0
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L56	#,
	.loc 1 227 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.15
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L57	#
.L56:
	.loc 1 227 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.15
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L57:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.15_13], tmp230
	movl	%eax, -336(%rbp)	# tmp230, i
	.loc 1 228 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp231
	leaq	1(%rax), %rdx	#, tmp232
	movl	-336(%rbp), %eax	# i, tmp233
	movq	%rdx, %rsi	# tmp232,
	movl	%eax, %edi	# tmp233,
	call	quantum_int2char	#
	.loc 1 229 0 discriminator 1
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	cmpl	$48, %eax	#, D.3645
	jae	.L58	#,
	.loc 1 229 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-312(%rbp), %eax	# args.gp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.16
	movl	-312(%rbp), %edx	# args.gp_offset, D.3645
	addl	$8, %edx	#, D.3645
	movl	%edx, -312(%rbp)	# D.3645, args.gp_offset
	jmp	.L59	#
.L58:
	.loc 1 229 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.16
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L59:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.16_14], tmp234
	movl	%eax, -336(%rbp)	# tmp234, i
	.loc 1 230 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp235
	leaq	5(%rax), %rdx	#, tmp236
	movl	-336(%rbp), %eax	# i, tmp237
	movq	%rdx, %rsi	# tmp236,
	movl	%eax, %edi	# tmp237,
	call	quantum_int2char	#
	.loc 1 231 0 discriminator 1
	movl	-308(%rbp), %eax	# args.fp_offset, D.3645
	cmpl	$176, %eax	#, D.3645
	jae	.L60	#,
	.loc 1 231 0 is_stmt 0 discriminator 2
	movq	-296(%rbp), %rdx	# args.reg_save_area, D.3646
	movl	-308(%rbp), %eax	# args.fp_offset, D.3645
	movl	%eax, %eax	# D.3645, D.3647
	addq	%rdx, %rax	# D.3646, addr.17
	movl	-308(%rbp), %edx	# args.fp_offset, D.3645
	addl	$16, %edx	#, D.3645
	movl	%edx, -308(%rbp)	# D.3645, args.fp_offset
	jmp	.L61	#
.L60:
	.loc 1 231 0 discriminator 1
	movq	-304(%rbp), %rdx	# args.overflow_arg_area, D.3646
	movq	%rdx, %rax	# D.3646, addr.17
	addq	$8, %rdx	#, D.3646
	movq	%rdx, -304(%rbp)	# D.3646, args.overflow_arg_area
.L61:
	movq	(%rax), %rax	# MEM[(double * {ref-all})addr.17_15], tmp238
	movq	%rax, -320(%rbp)	# tmp238, d
	.loc 1 232 0 is_stmt 1 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp239
	leaq	9(%rax), %rdx	#, tmp240
	movq	-320(%rbp), %rax	# d, tmp241
	movq	%rdx, %rdi	# tmp240,
	movq	%rax, -352(%rbp)	# tmp241, %sfp
	movsd	-352(%rbp), %xmm0	# %sfp,
	call	quantum_double2char	#
	.loc 1 233 0 discriminator 1
	movl	$17, -332(%rbp)	#, size
	.loc 1 234 0 discriminator 1
	jmp	.L39	#
.L34:
	.loc 1 237 0
	movl	$1, -332(%rbp)	#, size
	.loc 1 238 0
	jmp	.L39	#
.L27:
	.loc 1 240 0
	movzbl	-340(%rbp), %eax	# operation, D.3644
	movl	%eax, %esi	# D.3644,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 241 0
	movl	$1, %edi	#,
	call	exit	#
.L39:
	.loc 1 244 0
	movl	-332(%rbp), %eax	# size, tmp242
	movslq	%eax, %rdx	# tmp242, D.3648
	movq	position(%rip), %rax	# position, position.18
	addq	%rdx, %rax	# D.3648, D.3648
	shrq	$16, %rax	#, D.3648
	movq	%rax, %rdx	# D.3648, D.3648
	movq	position(%rip), %rax	# position, position.19
	shrq	$16, %rax	#, D.3648
	cmpq	%rax, %rdx	# D.3648, D.3648
	jbe	.L62	#,
	.loc 1 246 0
	movq	allocated(%rip), %rax	# allocated, allocated.20
	addq	$1, %rax	#, allocated.21
	movq	%rax, allocated(%rip)	# allocated.21, allocated
	.loc 1 247 0
	movq	allocated(%rip), %rax	# allocated, allocated.22
	salq	$16, %rax	#, D.3648
	movq	%rax, %rdx	# D.3648, D.3648
	movq	objcode(%rip), %rax	# objcode, objcode.23
	movq	%rdx, %rsi	# D.3648,
	movq	%rax, %rdi	# objcode.23,
	call	realloc	#
	movq	%rax, objcode(%rip)	# objcode.24, objcode
	.loc 1 248 0
	movq	objcode(%rip), %rax	# objcode, objcode.25
	testq	%rax, %rax	# objcode.25
	jne	.L63	#,
	.loc 1 250 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 251 0
	movl	$1, %edi	#,
	call	exit	#
.L63:
	.loc 1 253 0
	movl	$65536, %edi	#,
	call	quantum_memman	#
.L62:
	.loc 1 256 0
	movl	$0, -336(%rbp)	#, i
	jmp	.L64	#
.L65:
	.loc 1 258 0 discriminator 2
	movq	objcode(%rip), %rdx	# objcode, objcode.26
	movq	position(%rip), %rax	# position, position.27
	addq	%rax, %rdx	# position.27, D.3649
	movl	-336(%rbp), %eax	# i, tmp244
	cltq
	movzbl	-288(%rbp,%rax), %eax	# buf, D.3650
	movb	%al, (%rdx)	# D.3650, *_176
	.loc 1 259 0 discriminator 2
	movq	position(%rip), %rax	# position, position.28
	addq	$1, %rax	#, position.29
	movq	%rax, position(%rip)	# position.29, position
	.loc 1 256 0 discriminator 2
	addl	$1, -336(%rbp)	#, i
.L64:
	.loc 1 256 0 is_stmt 0 discriminator 1
	movl	-336(%rbp), %eax	# i, tmp245
	cmpl	-332(%rbp), %eax	# size, tmp245
	jl	.L65	#,
	.loc 1 262 0 is_stmt 1
	movl	$1, %eax	#, D.3644
.L66:
	.loc 1 263 0
	movq	-200(%rbp), %rbx	# D.3651, tmp248
	xorq	%fs:40, %rbx	#, tmp248
	je	.L67	#,
	call	__stack_chk_fail	#
.L67:
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	quantum_objcode_put, .-quantum_objcode_put
	.section	.rodata
	.align 8
.LC3:
	.string	"Object code generation not active! Forgot to call quantum_objcode_start?\n"
.LC4:
	.string	"w"
	.text
	.globl	quantum_objcode_write
	.type	quantum_objcode_write, @function
quantum_objcode_write:
.LFB14:
	.loc 1 269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	.loc 1 272 0
	movl	opstatus(%rip), %eax	# opstatus, opstatus.30
	testl	%eax, %eax	# opstatus.30
	jne	.L69	#,
	.loc 1 274 0
	movq	stderr(%rip), %rax	# stderr, stderr.31
	movq	%rax, %rcx	# stderr.31,
	movl	$73, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 275 0
	movl	$1, %eax	#, D.3660
	jmp	.L70	#
.L69:
	.loc 1 278 0
	cmpq	$0, -24(%rbp)	#, file
	jne	.L71	#,
	.loc 1 279 0
	movq	globalfile(%rip), %rax	# globalfile, tmp65
	movq	%rax, -24(%rbp)	# tmp65, file
.L71:
	.loc 1 281 0
	movq	-24(%rbp), %rax	# file, tmp66
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp67, fhd
	.loc 1 283 0
	cmpq	$0, -8(%rbp)	#, fhd
	jne	.L72	#,
	.loc 1 284 0
	movl	$-1, %eax	#, D.3660
	jmp	.L70	#
.L72:
	.loc 1 286 0
	movq	position(%rip), %rsi	# position, position.32
	movq	objcode(%rip), %rax	# objcode, objcode.33
	movq	-8(%rbp), %rdx	# fhd, tmp68
	movq	%rdx, %rcx	# tmp68,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# objcode.33,
	call	fwrite	#
	.loc 1 288 0
	movq	-8(%rbp), %rax	# fhd, tmp69
	movq	%rax, %rdi	# tmp69,
	call	fclose	#
	.loc 1 290 0
	movl	$0, %eax	#, D.3660
.L70:
	.loc 1 291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	quantum_objcode_write, .-quantum_objcode_write
	.globl	quantum_objcode_file
	.type	quantum_objcode_file, @function
quantum_objcode_file:
.LFB15:
	.loc 1 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 298 0
	movq	-8(%rbp), %rax	# file, tmp59
	movq	%rax, globalfile(%rip)	# tmp59, globalfile
	.loc 1 299 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	quantum_objcode_file, .-quantum_objcode_file
	.globl	quantum_objcode_exit
	.type	quantum_objcode_exit, @function
quantum_objcode_exit:
.LFB16:
	.loc 1 306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 307 0
	movl	$0, %edi	#,
	call	quantum_objcode_write	#
	.loc 1 308 0
	movl	$0, %eax	#,
	call	quantum_objcode_stop	#
	.loc 1 309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	quantum_objcode_exit, .-quantum_objcode_exit
	.section	.rodata
.LC5:
	.string	"r"
	.align 8
.LC6:
	.string	"quantum_objcode_run: Could not open %s: "
.LC7:
	.string	"%i: Unknown opcode 0x(%X)!\n"
	.text
	.globl	quantum_objcode_run
	.type	quantum_objcode_run, @function
quantum_objcode_run:
.LFB17:
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# file, file
	movq	%rsi, -176(%rbp)	# reg, reg
	.loc 1 315 0
	movq	%fs:40, %rax	#, tmp183
	movq	%rax, -24(%rbp)	# tmp183, D.3665
	xorl	%eax, %eax	# tmp183
	.loc 1 323 0
	movq	-168(%rbp), %rax	# file, tmp74
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	fopen	#
	movq	%rax, -136(%rbp)	# tmp75, fhd
	.loc 1 325 0
	cmpq	$0, -136(%rbp)	#, fhd
	jne	.L76	#,
	.loc 1 327 0
	movq	stderr(%rip), %rax	# stderr, stderr.34
	movq	-168(%rbp), %rdx	# file, tmp76
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.34,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 328 0
	movl	$0, %edi	#,
	call	perror	#
	.loc 1 329 0
	jmp	.L75	#
.L76:
	.loc 1 332 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L78	#
.L112:
	.loc 1 334 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L79	#
.L80:
	.loc 1 335 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp78
	cltq
	movb	$0, -112(%rbp,%rax)	#, buf
	.loc 1 334 0 discriminator 2
	addl	$1, -148(%rbp)	#, j
.L79:
	.loc 1 334 0 is_stmt 0 discriminator 1
	cmpl	$79, -148(%rbp)	#, j
	jle	.L80	#,
	.loc 1 337 0 is_stmt 1
	movq	-136(%rbp), %rax	# fhd, tmp79
	movq	%rax, %rdi	# tmp79,
	call	fgetc	#
	movb	%al, -153(%rbp)	# D.3663, operation
	.loc 1 338 0
	movzbl	-153(%rbp), %eax	# operation, D.3663
	cmpl	$11, %eax	#, D.3663
	jg	.L82	#,
	cmpl	$7, %eax	#, D.3663
	jge	.L83	#,
	cmpl	$2, %eax	#, D.3663
	je	.L84	#,
	cmpl	$2, %eax	#, D.3663
	jg	.L85	#,
	testl	%eax, %eax	# D.3663
	je	.L86	#,
	cmpl	$1, %eax	#, D.3663
	je	.L87	#,
	jmp	.L81	#
.L82:
	cmpl	$128, %eax	#, D.3663
	je	.L88	#,
	cmpl	$128, %eax	#, D.3663
	jg	.L89	#,
	cmpl	$13, %eax	#, D.3663
	je	.L90	#,
	cmpl	$13, %eax	#, D.3663
	jl	.L87	#,
	cmpl	$14, %eax	#, D.3663
	je	.L85	#,
	jmp	.L81	#
.L89:
	cmpl	$130, %eax	#, D.3663
	jle	.L85	#,
	cmpl	$255, %eax	#, D.3663
	je	.L115	#,
	jmp	.L81	#
.L86:
	.loc 1 341 0
	movq	-136(%rbp), %rdx	# fhd, tmp80
	leaq	-112(%rbp), %rax	#, tmp81
	movq	%rdx, %rcx	# tmp80,
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	fread	#
	.loc 1 342 0
	leaq	-112(%rbp), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	quantum_char2mu	#
	movq	%rax, -128(%rbp)	# tmp83, mu
	.loc 1 343 0
	movq	-176(%rbp), %rbx	# reg, tmp84
	leaq	-208(%rbp), %rax	#, tmp85
	movq	-128(%rbp), %rcx	# mu, tmp86
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp85,
	call	quantum_new_qureg	#
	movq	-208(%rbp), %rax	#, tmp87
	movq	%rax, (%rbx)	# tmp87, *reg_14(D)
	movq	-200(%rbp), %rax	#, tmp88
	movq	%rax, 8(%rbx)	# tmp88, *reg_14(D)
	movq	-192(%rbp), %rax	#, tmp89
	movq	%rax, 16(%rbx)	# tmp89, *reg_14(D)
	movq	-184(%rbp), %rax	#, tmp90
	movq	%rax, 24(%rbx)	# tmp90, *reg_14(D)
	.loc 1 344 0
	jmp	.L92	#
.L87:
	.loc 1 348 0
	movq	-136(%rbp), %rdx	# fhd, tmp91
	leaq	-112(%rbp), %rax	#, tmp92
	movq	%rdx, %rcx	# tmp91,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	fread	#
	.loc 1 349 0
	leaq	-112(%rbp), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	quantum_char2int	#
	movl	%eax, -148(%rbp)	# tmp94, j
	.loc 1 350 0
	movq	-136(%rbp), %rdx	# fhd, tmp95
	leaq	-112(%rbp), %rax	#, tmp96
	movq	%rdx, %rcx	# tmp95,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	fread	#
	.loc 1 351 0
	leaq	-112(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	quantum_char2int	#
	movl	%eax, -144(%rbp)	# tmp98, k
	.loc 1 352 0
	movzbl	-153(%rbp), %eax	# operation, D.3663
	cmpl	$1, %eax	#, D.3663
	je	.L94	#,
	cmpl	$12, %eax	#, D.3663
	je	.L95	#,
	.loc 1 359 0
	jmp	.L92	#
.L94:
	.loc 1 354 0
	movq	-176(%rbp), %rdx	# reg, tmp99
	movl	-144(%rbp), %ecx	# k, tmp100
	movl	-148(%rbp), %eax	# j, tmp101
	movl	%ecx, %esi	# tmp100,
	movl	%eax, %edi	# tmp101,
	call	quantum_cnot	#
	.loc 1 355 0
	jmp	.L93	#
.L95:
	.loc 1 356 0
	movq	-176(%rbp), %rdx	# reg, tmp102
	movl	-144(%rbp), %ecx	# k, tmp103
	movl	-148(%rbp), %eax	# j, tmp104
	movl	%ecx, %esi	# tmp103,
	movl	%eax, %edi	# tmp104,
	call	quantum_cond_phase	#
	.loc 1 357 0
	nop
.L93:
	.loc 1 359 0
	jmp	.L92	#
.L84:
	.loc 1 362 0
	movq	-136(%rbp), %rdx	# fhd, tmp105
	leaq	-112(%rbp), %rax	#, tmp106
	movq	%rdx, %rcx	# tmp105,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	fread	#
	.loc 1 363 0
	leaq	-112(%rbp), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	quantum_char2int	#
	movl	%eax, -148(%rbp)	# tmp108, j
	.loc 1 364 0
	movq	-136(%rbp), %rdx	# fhd, tmp109
	leaq	-112(%rbp), %rax	#, tmp110
	movq	%rdx, %rcx	# tmp109,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	fread	#
	.loc 1 365 0
	leaq	-112(%rbp), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	quantum_char2int	#
	movl	%eax, -144(%rbp)	# tmp112, k
	.loc 1 366 0
	movq	-136(%rbp), %rdx	# fhd, tmp113
	leaq	-112(%rbp), %rax	#, tmp114
	movq	%rdx, %rcx	# tmp113,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	fread	#
	.loc 1 367 0
	leaq	-112(%rbp), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	quantum_char2int	#
	movl	%eax, -140(%rbp)	# tmp116, l
	.loc 1 368 0
	movq	-176(%rbp), %rcx	# reg, tmp117
	movl	-140(%rbp), %edx	# l, tmp118
	movl	-144(%rbp), %esi	# k, tmp119
	movl	-148(%rbp), %eax	# j, tmp120
	movl	%eax, %edi	# tmp120,
	call	quantum_toffoli	#
	.loc 1 369 0
	jmp	.L92	#
.L85:
	.loc 1 378 0
	movq	-136(%rbp), %rdx	# fhd, tmp121
	leaq	-112(%rbp), %rax	#, tmp122
	movq	%rdx, %rcx	# tmp121,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	fread	#
	.loc 1 379 0
	leaq	-112(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	quantum_char2int	#
	movl	%eax, -148(%rbp)	# tmp124, j
	.loc 1 380 0
	movzbl	-153(%rbp), %eax	# operation, D.3663
	cmpl	$6, %eax	#, D.3663
	je	.L97	#,
	cmpl	$6, %eax	#, D.3663
	jg	.L98	#,
	cmpl	$4, %eax	#, D.3663
	je	.L99	#,
	cmpl	$4, %eax	#, D.3663
	jg	.L100	#,
	cmpl	$3, %eax	#, D.3663
	je	.L101	#,
	.loc 1 397 0
	jmp	.L92	#
.L98:
	.loc 1 380 0
	cmpl	$129, %eax	#, D.3663
	je	.L102	#,
	cmpl	$130, %eax	#, D.3663
	je	.L103	#,
	cmpl	$14, %eax	#, D.3663
	je	.L104	#,
	.loc 1 397 0
	jmp	.L92	#
.L101:
	.loc 1 382 0
	movq	-176(%rbp), %rdx	# reg, tmp125
	movl	-148(%rbp), %eax	# j, tmp126
	movq	%rdx, %rsi	# tmp125,
	movl	%eax, %edi	# tmp126,
	call	quantum_sigma_x	#
	.loc 1 383 0
	jmp	.L96	#
.L99:
	.loc 1 384 0
	movq	-176(%rbp), %rdx	# reg, tmp127
	movl	-148(%rbp), %eax	# j, tmp128
	movq	%rdx, %rsi	# tmp127,
	movl	%eax, %edi	# tmp128,
	call	quantum_sigma_y	#
	.loc 1 385 0
	jmp	.L96	#
.L100:
	.loc 1 386 0
	movq	-176(%rbp), %rdx	# reg, tmp129
	movl	-148(%rbp), %eax	# j, tmp130
	movq	%rdx, %rsi	# tmp129,
	movl	%eax, %edi	# tmp130,
	call	quantum_sigma_z	#
	.loc 1 387 0
	jmp	.L96	#
.L97:
	.loc 1 388 0
	movq	-176(%rbp), %rdx	# reg, tmp131
	movl	-148(%rbp), %eax	# j, tmp132
	movq	%rdx, %rsi	# tmp131,
	movl	%eax, %edi	# tmp132,
	call	quantum_hadamard	#
	.loc 1 389 0
	jmp	.L96	#
.L102:
	.loc 1 390 0
	movq	-176(%rbp), %rdx	# reg, tmp133
	movl	-148(%rbp), %eax	# j, tmp134
	movq	%rdx, %rsi	# tmp133,
	movl	%eax, %edi	# tmp134,
	call	quantum_bmeasure	#
	.loc 1 391 0
	jmp	.L96	#
.L103:
	.loc 1 392 0
	movq	-176(%rbp), %rdx	# reg, tmp135
	movl	-148(%rbp), %eax	# j, tmp136
	movq	%rdx, %rsi	# tmp135,
	movl	%eax, %edi	# tmp136,
	call	quantum_bmeasure_bitpreserve	#
	.loc 1 393 0
	jmp	.L96	#
.L104:
	.loc 1 394 0
	movq	-176(%rbp), %rdx	# reg, tmp137
	movl	-148(%rbp), %eax	# j, tmp138
	movq	%rdx, %rsi	# tmp137,
	movl	%eax, %edi	# tmp138,
	call	quantum_swaptheleads	#
	.loc 1 395 0
	nop
.L96:
	.loc 1 397 0
	jmp	.L92	#
.L83:
	.loc 1 404 0
	movq	-136(%rbp), %rdx	# fhd, tmp139
	leaq	-112(%rbp), %rax	#, tmp140
	movq	%rdx, %rcx	# tmp139,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	fread	#
	.loc 1 405 0
	leaq	-112(%rbp), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	quantum_char2int	#
	movl	%eax, -148(%rbp)	# tmp142, j
	.loc 1 406 0
	movq	-136(%rbp), %rdx	# fhd, tmp143
	leaq	-112(%rbp), %rax	#, tmp144
	movq	%rdx, %rcx	# tmp143,
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	fread	#
	.loc 1 407 0
	leaq	-112(%rbp), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	quantum_char2double	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp146
	movq	%rax, -120(%rbp)	# tmp146, d
	.loc 1 408 0
	movzbl	-153(%rbp), %eax	# operation, D.3663
	subl	$7, %eax	#, tmp147
	cmpl	$4, %eax	#, tmp147
	ja	.L116	#,
	movl	%eax, %eax	# tmp147, tmp148
	movq	.L107(,%rax,8), %rax	#, tmp149
	jmp	*%rax	# tmp149
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L106
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.text
.L106:
	.loc 1 410 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp150
	movl	-148(%rbp), %eax	# j, tmp151
	movq	%rdx, %rsi	# tmp150,
	movl	%eax, %edi	# tmp151,
	call	quantum_r_x	#
	.loc 1 411 0
	jmp	.L105	#
.L108:
	.loc 1 412 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp152
	movl	-148(%rbp), %eax	# j, tmp153
	movq	%rdx, %rsi	# tmp152,
	movl	%eax, %edi	# tmp153,
	call	quantum_r_y	#
	.loc 1 413 0
	jmp	.L105	#
.L109:
	.loc 1 414 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp154
	movl	-148(%rbp), %eax	# j, tmp155
	movq	%rdx, %rsi	# tmp154,
	movl	%eax, %edi	# tmp155,
	call	quantum_r_z	#
	.loc 1 415 0
	jmp	.L105	#
.L110:
	.loc 1 416 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp156
	movl	-148(%rbp), %eax	# j, tmp157
	movq	%rdx, %rsi	# tmp156,
	movl	%eax, %edi	# tmp157,
	call	quantum_phase_kick	#
	.loc 1 417 0
	jmp	.L105	#
.L111:
	.loc 1 418 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp158
	movl	-148(%rbp), %eax	# j, tmp159
	movq	%rdx, %rsi	# tmp158,
	movl	%eax, %edi	# tmp159,
	call	quantum_phase_scale	#
	.loc 1 419 0
	nop
.L105:
	.loc 1 421 0
	jmp	.L116	#
.L90:
	.loc 1 424 0
	movq	-136(%rbp), %rdx	# fhd, tmp160
	leaq	-112(%rbp), %rax	#, tmp161
	movq	%rdx, %rcx	# tmp160,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	fread	#
	.loc 1 425 0
	leaq	-112(%rbp), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	quantum_char2int	#
	movl	%eax, -148(%rbp)	# tmp163, j
	.loc 1 426 0
	movq	-136(%rbp), %rdx	# fhd, tmp164
	leaq	-112(%rbp), %rax	#, tmp165
	movq	%rdx, %rcx	# tmp164,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	fread	#
	.loc 1 427 0
	leaq	-112(%rbp), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	quantum_char2int	#
	movl	%eax, -144(%rbp)	# tmp167, k
	.loc 1 428 0
	movq	-136(%rbp), %rdx	# fhd, tmp168
	leaq	-112(%rbp), %rax	#, tmp169
	movq	%rdx, %rcx	# tmp168,
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	fread	#
	.loc 1 429 0
	leaq	-112(%rbp), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	quantum_char2double	#
	movsd	%xmm0, -216(%rbp)	#, %sfp
	movq	-216(%rbp), %rax	# %sfp, tmp171
	movq	%rax, -120(%rbp)	# tmp171, d
	.loc 1 430 0
	movsd	-120(%rbp), %xmm0	# d, D.3664
	cvtpd2ps	%xmm0, %xmm0	# D.3664, D.3664
	movq	-176(%rbp), %rdx	# reg, tmp172
	movl	-144(%rbp), %ecx	# k, tmp173
	movl	-148(%rbp), %eax	# j, tmp174
	movl	%ecx, %esi	# tmp173,
	movl	%eax, %edi	# tmp174,
	call	quantum_cond_phase_kick	#
	.loc 1 431 0
	jmp	.L92	#
.L88:
	.loc 1 433 0
	movq	-176(%rbp), %rax	# reg, tmp175
	movq	(%rax), %rdx	# *reg_14(D), tmp176
	movq	%rdx, (%rsp)	# tmp176,
	movq	8(%rax), %rdx	# *reg_14(D), tmp177
	movq	%rdx, 8(%rsp)	# tmp177,
	movq	16(%rax), %rdx	# *reg_14(D), tmp178
	movq	%rdx, 16(%rsp)	# tmp178,
	movq	24(%rax), %rax	# *reg_14(D), tmp179
	movq	%rax, 24(%rsp)	# tmp179,
	call	quantum_measure	#
	.loc 1 434 0
	jmp	.L92	#
.L81:
	.loc 1 440 0
	movzbl	-153(%rbp), %ecx	# operation, D.3663
	movq	stderr(%rip), %rax	# stderr, stderr.35
	movl	-152(%rbp), %edx	# i, tmp180
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# stderr.35,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 441 0
	jmp	.L75	#
.L115:
	.loc 1 437 0
	nop
	jmp	.L92	#
.L116:
	.loc 1 421 0
	nop
.L92:
	.loc 1 332 0
	addl	$1, -152(%rbp)	#, i
.L78:
	.loc 1 332 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# fhd, tmp181
	movq	%rax, %rdi	# tmp181,
	call	feof	#
	testl	%eax, %eax	# D.3663
	je	.L112	#,
	.loc 1 446 0 is_stmt 1
	movq	-136(%rbp), %rax	# fhd, tmp182
	movq	%rax, %rdi	# tmp182,
	call	fclose	#
.L75:
	.loc 1 448 0
	movq	-24(%rbp), %rax	# D.3665, tmp184
	xorq	%fs:40, %rax	#, tmp184
	je	.L114	#,
	call	__stack_chk_fail	#
.L114:
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	quantum_objcode_run, .-quantum_objcode_run
.Letext0:
	.file 2 "<built-in>"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x832
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.long	.LASF92
	.long	.LASF93
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3
	.byte	0x28
	.long	0x38
	.uleb128 0x3
	.long	0x4f
	.long	0x48
	.uleb128 0x4
	.long	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.long	.LASF21
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0x8c
	.uleb128 0x7
	.long	.LASF0
	.byte	0x2
	.byte	0
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x2
	.byte	0
	.long	0x8c
	.byte	0x4
	.uleb128 0x7
	.long	.LASF2
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0x8
	.uleb128 0x7
	.long	.LASF3
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x62
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF12
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x8c
	.long	0xca
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x8d
	.long	0xca
	.uleb128 0xa
	.byte	0x8
	.long	0xed
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0xd4
	.long	0xae
	.uleb128 0xa
	.byte	0x8
	.long	0xc3
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0x30
	.long	0x11e
	.uleb128 0x6
	.long	.LASF22
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x29f
	.uleb128 0x7
	.long	.LASF23
	.byte	0x7
	.byte	0xf7
	.long	0xc3
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x7
	.byte	0xfc
	.long	0xe7
	.byte	0x8
	.uleb128 0x7
	.long	.LASF25
	.byte	0x7
	.byte	0xfd
	.long	0xe7
	.byte	0x10
	.uleb128 0x7
	.long	.LASF26
	.byte	0x7
	.byte	0xfe
	.long	0xe7
	.byte	0x18
	.uleb128 0x7
	.long	.LASF27
	.byte	0x7
	.byte	0xff
	.long	0xe7
	.byte	0x20
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.value	0x100
	.long	0xe7
	.byte	0x28
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.value	0x101
	.long	0xe7
	.byte	0x30
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.value	0x102
	.long	0xe7
	.byte	0x38
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.value	0x103
	.long	0xe7
	.byte	0x40
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.value	0x105
	.long	0xe7
	.byte	0x48
	.uleb128 0xb
	.long	.LASF33
	.byte	0x7
	.value	0x106
	.long	0xe7
	.byte	0x50
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.value	0x107
	.long	0xe7
	.byte	0x58
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.value	0x109
	.long	0x2d7
	.byte	0x60
	.uleb128 0xb
	.long	.LASF36
	.byte	0x7
	.value	0x10b
	.long	0x2dd
	.byte	0x68
	.uleb128 0xb
	.long	.LASF37
	.byte	0x7
	.value	0x10d
	.long	0xc3
	.byte	0x70
	.uleb128 0xb
	.long	.LASF38
	.byte	0x7
	.value	0x111
	.long	0xc3
	.byte	0x74
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.value	0x113
	.long	0xd1
	.byte	0x78
	.uleb128 0xb
	.long	.LASF40
	.byte	0x7
	.value	0x117
	.long	0xa7
	.byte	0x80
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.value	0x118
	.long	0xb5
	.byte	0x82
	.uleb128 0xb
	.long	.LASF42
	.byte	0x7
	.value	0x119
	.long	0x2e3
	.byte	0x83
	.uleb128 0xb
	.long	.LASF43
	.byte	0x7
	.value	0x11d
	.long	0x2f3
	.byte	0x88
	.uleb128 0xb
	.long	.LASF44
	.byte	0x7
	.value	0x126
	.long	0xdc
	.byte	0x90
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.value	0x12f
	.long	0x93
	.byte	0x98
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.value	0x130
	.long	0x93
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.value	0x131
	.long	0x93
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.value	0x132
	.long	0x93
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x7
	.value	0x133
	.long	0xf4
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF50
	.byte	0x7
	.value	0x135
	.long	0xc3
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x7
	.value	0x137
	.long	0x2f9
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF94
	.byte	0x7
	.byte	0x9b
	.uleb128 0x6
	.long	.LASF52
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x2d7
	.uleb128 0x7
	.long	.LASF53
	.byte	0x7
	.byte	0xa2
	.long	0x2d7
	.byte	0
	.uleb128 0x7
	.long	.LASF54
	.byte	0x7
	.byte	0xa3
	.long	0x2dd
	.byte	0x8
	.uleb128 0x7
	.long	.LASF55
	.byte	0x7
	.byte	0xa7
	.long	0xc3
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2a6
	.uleb128 0xa
	.byte	0x8
	.long	0x11e
	.uleb128 0x3
	.long	0xed
	.long	0x2f3
	.uleb128 0x4
	.long	0x48
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x29f
	.uleb128 0x3
	.long	0xed
	.long	0x309
	.uleb128 0x4
	.long	0x48
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.long	.LASF56
	.uleb128 0x6
	.long	.LASF57
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x335
	.uleb128 0x7
	.long	.LASF58
	.byte	0x8
	.byte	0x25
	.long	0x309
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x8
	.byte	0x26
	.long	0x10c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x29
	.long	0x310
	.uleb128 0x6
	.long	.LASF61
	.byte	0x20
	.byte	0x8
	.byte	0x2d
	.long	0x389
	.uleb128 0x7
	.long	.LASF62
	.byte	0x8
	.byte	0x2f
	.long	0xc3
	.byte	0
	.uleb128 0x7
	.long	.LASF63
	.byte	0x8
	.byte	0x30
	.long	0xc3
	.byte	0x4
	.uleb128 0x7
	.long	.LASF64
	.byte	0x8
	.byte	0x31
	.long	0xc3
	.byte	0x8
	.uleb128 0x7
	.long	.LASF65
	.byte	0x8
	.byte	0x32
	.long	0x389
	.byte	0x10
	.uleb128 0x7
	.long	.LASF66
	.byte	0x8
	.byte	0x33
	.long	0xff
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x335
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x36
	.long	0x340
	.uleb128 0xd
	.long	.LASF68
	.byte	0x1
	.byte	0x3b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ed
	.uleb128 0xe
	.string	"mu"
	.byte	0x1
	.byte	0x3b
	.long	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x3b
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x3d
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xa0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x1
	.byte	0x4b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x445
	.uleb128 0xe
	.string	"j"
	.byte	0x1
	.byte	0x4b
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x4b
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x4d
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x1
	.byte	0x5b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x495
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.byte	0x5b
	.long	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x5b
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x5e
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF71
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.byte	0x64
	.long	0x10c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f3
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x64
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x66
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x66
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"mu"
	.byte	0x1
	.byte	0x67
	.long	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.byte	0x71
	.long	0xc3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x549
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x71
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x73
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x73
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x74
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.byte	0x7e
	.long	0x495
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x585
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x7e
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"d"
	.byte	0x1
	.byte	0x80
	.long	0x585
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x495
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.byte	0x89
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0x99
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0xa5
	.long	0xc3
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x644
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xa5
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x15
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0xa7
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.byte	0xa8
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0xa9
	.long	0x644
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xf
	.string	"d"
	.byte	0x1
	.byte	0xaa
	.long	0x495
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0xf
	.string	"mu"
	.byte	0x1
	.byte	0xab
	.long	0x10c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x3
	.long	0xa0
	.long	0x654
	.uleb128 0x4
	.long	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x10c
	.long	0xc3
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x695
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x10c
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"fhd"
	.byte	0x1
	.value	0x10e
	.long	0x695
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x113
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.value	0x128
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c9
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x128
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.value	0x131
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f7
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x131
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.value	0x13a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bb
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x13a
	.long	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1b
	.string	"reg"
	.byte	0x1
	.value	0x13a
	.long	0x7bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x13c
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x13c
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x13c
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x13c
	.long	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x18
	.string	"fhd"
	.byte	0x1
	.value	0x13d
	.long	0x695
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1
	.value	0x13e
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -169
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.value	0x13f
	.long	0x644
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.string	"mu"
	.byte	0x1
	.value	0x140
	.long	0x10c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x141
	.long	0x495
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x38f
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x6
	.byte	0xaa
	.long	0x2dd
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x1
	.byte	0x26
	.long	0xc3
	.uleb128 0x9
	.byte	0x3
	.quad	opstatus
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.byte	0x2a
	.long	0x3ed
	.uleb128 0x9
	.byte	0x3
	.quad	objcode
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x1
	.byte	0x2e
	.long	0xae
	.uleb128 0x9
	.byte	0x3
	.quad	position
	.uleb128 0x1e
	.long	.LASF89
	.byte	0x1
	.byte	0x32
	.long	0xae
	.uleb128 0x9
	.byte	0x3
	.quad	allocated
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.byte	0x36
	.long	0xe7
	.uleb128 0x9
	.byte	0x3
	.quad	globalfile
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2117
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF14:
	.string	"__off_t"
.LASF24:
	.string	"_IO_read_ptr"
.LASF36:
	.string	"_chain"
.LASF17:
	.string	"size_t"
.LASF42:
	.string	"_shortbuf"
.LASF0:
	.string	"gp_offset"
.LASF7:
	.string	"va_list"
.LASF30:
	.string	"_IO_buf_base"
.LASF19:
	.string	"long long unsigned int"
.LASF18:
	.string	"long long int"
.LASF11:
	.string	"signed char"
.LASF90:
	.string	"globalfile"
.LASF37:
	.string	"_fileno"
.LASF25:
	.string	"_IO_read_end"
.LASF59:
	.string	"state"
.LASF13:
	.string	"long int"
.LASF23:
	.string	"_flags"
.LASF76:
	.string	"quantum_objcode_stop"
.LASF31:
	.string	"_IO_buf_end"
.LASF40:
	.string	"_cur_column"
.LASF71:
	.string	"double"
.LASF39:
	.string	"_old_offset"
.LASF44:
	.string	"_offset"
.LASF67:
	.string	"quantum_reg"
.LASF64:
	.string	"hashw"
.LASF68:
	.string	"quantum_mu2char"
.LASF92:
	.string	"objcode.c"
.LASF52:
	.string	"_IO_marker"
.LASF5:
	.string	"unsigned int"
.LASF88:
	.string	"position"
.LASF2:
	.string	"overflow_arg_area"
.LASF10:
	.string	"long unsigned int"
.LASF93:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF28:
	.string	"_IO_write_ptr"
.LASF54:
	.string	"_sbuf"
.LASF62:
	.string	"width"
.LASF63:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF87:
	.string	"objcode"
.LASF32:
	.string	"_IO_save_base"
.LASF70:
	.string	"quantum_double2char"
.LASF78:
	.string	"operation"
.LASF43:
	.string	"_lock"
.LASF61:
	.string	"quantum_reg_struct"
.LASF38:
	.string	"_flags2"
.LASF50:
	.string	"_mode"
.LASF84:
	.string	"quantum_objcode_run"
.LASF80:
	.string	"quantum_objcode_write"
.LASF4:
	.string	"sizetype"
.LASF89:
	.string	"allocated"
.LASF6:
	.string	"__gnuc_va_list"
.LASF29:
	.string	"_IO_write_end"
.LASF56:
	.string	"complex float"
.LASF94:
	.string	"_IO_lock_t"
.LASF22:
	.string	"_IO_FILE"
.LASF55:
	.string	"_pos"
.LASF35:
	.string	"_markers"
.LASF81:
	.string	"file"
.LASF8:
	.string	"unsigned char"
.LASF65:
	.string	"node"
.LASF12:
	.string	"short int"
.LASF57:
	.string	"quantum_reg_node_struct"
.LASF41:
	.string	"_vtable_offset"
.LASF20:
	.string	"FILE"
.LASF3:
	.string	"reg_save_area"
.LASF74:
	.string	"quantum_char2double"
.LASF58:
	.string	"amplitude"
.LASF16:
	.string	"char"
.LASF72:
	.string	"quantum_char2mu"
.LASF69:
	.string	"quantum_int2char"
.LASF66:
	.string	"hash"
.LASF53:
	.string	"_next"
.LASF15:
	.string	"__off64_t"
.LASF26:
	.string	"_IO_read_base"
.LASF73:
	.string	"quantum_char2int"
.LASF34:
	.string	"_IO_save_end"
.LASF60:
	.string	"quantum_reg_node"
.LASF45:
	.string	"__pad1"
.LASF46:
	.string	"__pad2"
.LASF47:
	.string	"__pad3"
.LASF48:
	.string	"__pad4"
.LASF49:
	.string	"__pad5"
.LASF51:
	.string	"_unused2"
.LASF85:
	.string	"stderr"
.LASF91:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF82:
	.string	"quantum_objcode_file"
.LASF33:
	.string	"_IO_backup_base"
.LASF1:
	.string	"fp_offset"
.LASF83:
	.string	"quantum_objcode_exit"
.LASF75:
	.string	"quantum_objcode_start"
.LASF79:
	.string	"args"
.LASF86:
	.string	"opstatus"
.LASF27:
	.string	"_IO_write_base"
.LASF77:
	.string	"quantum_objcode_put"
.LASF21:
	.string	"__va_list_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
