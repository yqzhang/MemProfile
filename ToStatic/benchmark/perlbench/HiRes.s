	.file	"HiRes.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 HiRes.c
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
	.string	"ITIMER_PROF"
.LC1:
	.string	"ITIMER_REAL"
.LC2:
	.string	"d_getitimer"
.LC3:
	.string	"d_setitimer"
.LC4:
	.string	"d_nanosleep"
	.text
	.type	constant_11, @function
constant_11:
.LFB2:
	.file 1 "const-c.inc"
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movq	%rsi, -16(%rbp)	# iv_return, iv_return
	.loc 1 29 0
	movq	-8(%rbp), %rax	# name, tmp69
	addq	$7, %rax	#, D.10920
	movzbl	(%rax), %eax	# *_3, D.10921
	movsbl	%al, %eax	# D.10921, D.10919
	cmpl	$82, %eax	#, D.10919
	je	.L3	#,
	cmpl	$82, %eax	#, D.10919
	jg	.L4	#,
	cmpl	$80, %eax	#, D.10919
	je	.L5	#,
	jmp	.L2	#
.L4:
	cmpl	$105, %eax	#, D.10919
	je	.L6	#,
	cmpl	$108, %eax	#, D.10919
	je	.L7	#,
	jmp	.L2	#
.L5:
	.loc 1 31 0
	movq	-8(%rbp), %rax	# name, tmp70
	movl	$11, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	memcmp	#
	testl	%eax, %eax	# D.10919
	jne	.L8	#,
	.loc 1 34 0
	movq	-16(%rbp), %rax	# iv_return, tmp71
	movq	$2, (%rax)	#, *iv_return_7(D)
	.loc 1 35 0
	movl	$3, %eax	#, D.10919
	jmp	.L9	#
.L8:
	.loc 1 40 0
	jmp	.L2	#
.L3:
	.loc 1 42 0
	movq	-8(%rbp), %rax	# name, tmp72
	movl	$11, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	memcmp	#
	testl	%eax, %eax	# D.10919
	jne	.L10	#,
	.loc 1 45 0
	movq	-16(%rbp), %rax	# iv_return, tmp73
	movq	$0, (%rax)	#, *iv_return_7(D)
	.loc 1 46 0
	movl	$3, %eax	#, D.10919
	jmp	.L9	#
.L10:
	.loc 1 51 0
	jmp	.L2	#
.L6:
	.loc 1 53 0
	movq	-8(%rbp), %rax	# name, tmp74
	movl	$11, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	memcmp	#
	testl	%eax, %eax	# D.10919
	jne	.L11	#,
	.loc 1 59 0
	movq	-16(%rbp), %rax	# iv_return, tmp75
	movq	$0, (%rax)	#, *iv_return_7(D)
	.loc 1 60 0
	movl	$3, %eax	#, D.10919
	jmp	.L9	#
.L11:
	.loc 1 63 0
	movq	-8(%rbp), %rax	# name, tmp76
	movl	$11, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	memcmp	#
	testl	%eax, %eax	# D.10919
	jne	.L12	#,
	.loc 1 69 0
	movq	-16(%rbp), %rax	# iv_return, tmp77
	movq	$0, (%rax)	#, *iv_return_7(D)
	.loc 1 70 0
	movl	$3, %eax	#, D.10919
	jmp	.L9	#
.L12:
	.loc 1 73 0
	jmp	.L2	#
.L7:
	.loc 1 75 0
	movq	-8(%rbp), %rax	# name, tmp78
	movl	$11, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	memcmp	#
	testl	%eax, %eax	# D.10919
	jne	.L13	#,
	.loc 1 81 0
	movq	-16(%rbp), %rax	# iv_return, tmp79
	movq	$0, (%rax)	#, *iv_return_7(D)
	.loc 1 82 0
	movl	$3, %eax	#, D.10919
	jmp	.L9	#
.L13:
	.loc 1 85 0
	nop
.L2:
	.loc 1 87 0
	movl	$1, %eax	#, D.10919
.L9:
	.loc 1 88 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	constant_11, .-constant_11
	.section	.rodata
.LC5:
	.string	"d_ualar"
.LC6:
	.string	"d_uslee"
.LC7:
	.string	"ITIMER_VIRTUAL"
.LC8:
	.string	"d_gettimeofday"
.LC9:
	.string	"ITIMER_REALPROF"
	.text
	.type	constant, @function
constant:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movq	%rsi, -16(%rbp)	# len, len
	movq	%rdx, -24(%rbp)	# iv_return, iv_return
	.loc 1 124 0
	movq	-16(%rbp), %rax	# len, len
	cmpq	$11, %rax	#, len
	je	.L16	#,
	cmpq	$11, %rax	#, len
	ja	.L17	#,
	cmpq	$8, %rax	#, len
	je	.L18	#,
	jmp	.L15	#
.L17:
	cmpq	$14, %rax	#, len
	je	.L19	#,
	cmpq	$15, %rax	#, len
	je	.L20	#,
	jmp	.L15	#
.L18:
	.loc 1 129 0
	movq	-8(%rbp), %rax	# name, tmp73
	addq	$7, %rax	#, D.10929
	movzbl	(%rax), %eax	# *_4, D.10930
	movsbl	%al, %eax	# D.10930, D.10928
	cmpl	$109, %eax	#, D.10928
	je	.L22	#,
	cmpl	$112, %eax	#, D.10928
	je	.L23	#,
	.loc 1 155 0
	jmp	.L15	#
.L22:
	.loc 1 131 0
	movq	-8(%rbp), %rax	# name, tmp74
	movl	$7, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	memcmp	#
	testl	%eax, %eax	# D.10928
	jne	.L24	#,
	.loc 1 137 0
	movq	-24(%rbp), %rax	# iv_return, tmp75
	movq	$0, (%rax)	#, *iv_return_8(D)
	.loc 1 138 0
	movl	$3, %eax	#, D.10928
	jmp	.L25	#
.L24:
	.loc 1 141 0
	jmp	.L21	#
.L23:
	.loc 1 143 0
	movq	-8(%rbp), %rax	# name, tmp76
	movl	$7, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	memcmp	#
	testl	%eax, %eax	# D.10928
	jne	.L26	#,
	.loc 1 149 0
	movq	-24(%rbp), %rax	# iv_return, tmp77
	movq	$0, (%rax)	#, *iv_return_8(D)
	.loc 1 150 0
	movl	$3, %eax	#, D.10928
	jmp	.L25	#
.L26:
	.loc 1 153 0
	nop
.L21:
	.loc 1 155 0
	jmp	.L15	#
.L16:
	.loc 1 157 0
	movq	-24(%rbp), %rdx	# iv_return, tmp78
	movq	-8(%rbp), %rax	# name, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	constant_11	#
	jmp	.L25	#
.L19:
	.loc 1 163 0
	movq	-8(%rbp), %rax	# name, tmp80
	addq	$6, %rax	#, D.10929
	movzbl	(%rax), %eax	# *_13, D.10930
	movsbl	%al, %eax	# D.10930, D.10928
	cmpl	$95, %eax	#, D.10928
	je	.L28	#,
	cmpl	$105, %eax	#, D.10928
	je	.L29	#,
	.loc 1 188 0
	jmp	.L15	#
.L28:
	.loc 1 165 0
	movq	-8(%rbp), %rax	# name, tmp81
	movl	$14, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	memcmp	#
	testl	%eax, %eax	# D.10928
	jne	.L30	#,
	.loc 1 168 0
	movq	-24(%rbp), %rax	# iv_return, tmp82
	movq	$1, (%rax)	#, *iv_return_8(D)
	.loc 1 169 0
	movl	$3, %eax	#, D.10928
	jmp	.L25	#
.L30:
	.loc 1 174 0
	jmp	.L27	#
.L29:
	.loc 1 176 0
	movq	-8(%rbp), %rax	# name, tmp83
	movl	$14, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	memcmp	#
	testl	%eax, %eax	# D.10928
	jne	.L31	#,
	.loc 1 179 0
	movq	-24(%rbp), %rax	# iv_return, tmp84
	movq	$1, (%rax)	#, *iv_return_8(D)
	.loc 1 180 0
	movl	$3, %eax	#, D.10928
	jmp	.L25	#
.L31:
	.loc 1 186 0
	nop
.L27:
	.loc 1 188 0
	jmp	.L15	#
.L20:
	.loc 1 190 0
	movq	-8(%rbp), %rax	# name, tmp85
	movl	$15, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	memcmp	#
	testl	%eax, %eax	# D.10928
	jne	.L32	#,
	.loc 1 195 0
	movl	$2, %eax	#, D.10928
	jmp	.L25	#
.L32:
	.loc 1 198 0
	nop
.L15:
	.loc 1 200 0
	movl	$1, %eax	#, D.10928
.L25:
	.loc 1 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	constant, .-constant
	.globl	hrt_usleep
	.type	hrt_usleep, @function
hrt_usleep:
.LFB4:
	.file 2 "HiRes.c"
	.loc 2 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# usec, usec
	.loc 2 389 0
	movq	$0, -16(%rbp)	#, tv.tv_sec
	.loc 2 390 0
	movq	-24(%rbp), %rax	# usec, usec.0
	movq	%rax, -8(%rbp)	# usec.0, tv.tv_usec
	.loc 2 391 0
	leaq	-16(%rbp), %rax	#, tmp60
	movq	%rax, %r8	# tmp60,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	select	#
	.loc 2 393 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	hrt_usleep, .-hrt_usleep
	.type	myU2time, @function
myU2time:
.LFB5:
	.loc 2 628 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ret, ret
	.loc 2 631 0
	leaq	-16(%rbp), %rax	#, tmp66
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	gettimeofday	#
	movl	%eax, -20(%rbp)	# tmp67, status
	.loc 2 632 0
	movq	-16(%rbp), %rax	# Tp.tv_sec, D.10937
	movq	%rax, %rdx	# D.10937, D.10938
	movq	-40(%rbp), %rax	# ret, tmp68
	movq	%rdx, (%rax)	# D.10938, *ret_4(D)
	.loc 2 633 0
	movq	-40(%rbp), %rax	# ret, tmp69
	leaq	8(%rax), %rdx	#, D.10939
	movq	-8(%rbp), %rax	# Tp.tv_usec, D.10937
	movq	%rax, (%rdx)	# D.10938, *_5
	.loc 2 634 0
	movl	-20(%rbp), %eax	# status, D.10940
	.loc 2 635 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	myU2time, .-myU2time
	.type	myNVtime, @function
myNVtime:
.LFB6:
	.loc 2 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 2 645 0
	leaq	-16(%rbp), %rax	#, tmp67
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	gettimeofday	#
	movl	%eax, -20(%rbp)	# tmp68, status
	.loc 2 646 0
	cmpl	$0, -20(%rbp)	#, status
	jne	.L37	#,
	.loc 2 646 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# Tp.tv_sec, D.10941
	cvtsi2sdq	%rax, %xmm1	# D.10941, D.10942
	movq	-8(%rbp), %rax	# Tp.tv_usec, D.10941
	cvtsi2sdq	%rax, %xmm0	# D.10941, D.10942
	movsd	.LC10(%rip), %xmm2	#, tmp69
	divsd	%xmm2, %xmm0	# tmp69, D.10942
	addsd	%xmm0, %xmm1	# D.10942, iftmp.1
	movsd	%xmm1, -40(%rbp)	# iftmp.1, %sfp
	movq	-40(%rbp), %rax	# %sfp, iftmp.1
	jmp	.L38	#
.L37:
	.loc 2 646 0 discriminator 2
	movabsq	$-4616189618054758400, %rax	#, iftmp.1
.L38:
	.loc 2 647 0 is_stmt 1 discriminator 3
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	myNVtime, .-myNVtime
	.section	.rodata
	.align 8
.LC12:
	.string	"Usage: Time::HiRes::constant(sv)"
	.align 8
.LC13:
	.string	"%s is not a valid Time::HiRes macro"
	.align 8
.LC14:
	.string	"Your vendor has not defined Time::HiRes macro %s, used"
	.align 8
.LC15:
	.string	"Unexpected return type %d while processing Time::HiRes macro %s, used"
	.text
	.globl	XS_Time__HiRes_constant
	.type	XS_Time__HiRes_constant, @function
XS_Time__HiRes_constant:
.LFB7:
	.loc 2 673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 2 674 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.3
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.5
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.5, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.4_8, D.10945
	cltq
	salq	$3, %rax	#, D.10946
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.6
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.7
	subq	%rax, %rdx	# PL_stack_base.8, D.10947
	movq	%rdx, %rax	# D.10947, D.10947
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.10948
	movl	%eax, -68(%rbp)	# D.10948, ax
	movq	%rbx, %rdx	# sp, sp.9
	movq	%r12, %rax	# mark, mark.10
	subq	%rax, %rdx	# mark.10, D.10947
	movq	%rdx, %rax	# D.10947, D.10947
	sarq	$3, %rax	#, tmp115
	movl	%eax, -64(%rbp)	# D.10947, items
	.loc 2 675 0
	cmpl	$1, -64(%rbp)	#, items
	je	.L41	#,
	.loc 2 676 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L41:
	.loc 2 677 0
	movl	-64(%rbp), %eax	# items, tmp116
	cltq
	salq	$3, %rax	#, D.10946
	negq	%rax	# D.10949
	addq	%rax, %rbx	# D.10949, sp
.LBB2:
	.loc 2 681 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.12
	movzbl	37(%rax), %eax	# PL_op.12_31->op_private, D.10950
	movzbl	%al, %eax	# D.10950, D.10945
	andl	$32, %eax	#, D.10945
	testl	%eax, %eax	# D.10945
	je	.L42	#,
	.loc 2 681 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.13
	movq	PL_op(%rip), %rax	# PL_op, PL_op.14
	movq	24(%rax), %rax	# PL_op.14_36->op_targ, D.10946
	salq	$3, %rax	#, D.10946
	addq	%rdx, %rax	# PL_curpad.13, D.10951
	movq	(%rax), %rax	# *_39, iftmp.11
	jmp	.L43	#
.L42:
	.loc 2 681 0 discriminator 2
	call	Perl_sv_newmortal	#
.L43:
	.loc 2 681 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.11, targ
	.loc 2 691 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.15
	movl	-68(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.10946
	salq	$3, %rdx	#, D.10946
	addq	%rdx, %rax	# D.10946, D.10951
	movq	(%rax), %rax	# *_46, tmp118
	movq	%rax, -32(%rbp)	# tmp118, sv
	.loc 2 692 0 discriminator 3
	movq	-32(%rbp), %rax	# sv, tmp119
	movl	12(%rax), %eax	# sv_47->sv_flags, D.10952
	andl	$262144, %eax	#, D.10952
	testl	%eax, %eax	# D.10952
	je	.L44	#,
	.loc 2 692 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp120
	movq	(%rax), %rax	# sv_47->sv_any, D.10953
	movq	8(%rax), %rax	# MEM[(struct XPV *)_50].xpv_cur, len.17
	movq	%rax, -56(%rbp)	# len.17, len
	movq	-32(%rbp), %rax	# sv, tmp121
	movq	(%rax), %rax	# sv_47->sv_any, D.10953
	movq	(%rax), %rax	# MEM[(struct XPV *)_52].xpv_pv, iftmp.16
	jmp	.L45	#
.L44:
	.loc 2 692 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp122
	movq	-32(%rbp), %rax	# sv, tmp123
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	Perl_sv_2pv_flags	#
.L45:
	.loc 2 692 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.16, s
	.loc 2 696 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rcx	# len, len.18
	leaq	-48(%rbp), %rdx	#, tmp124
	movq	-24(%rbp), %rax	# s, tmp125
	movq	%rcx, %rsi	# len.18,
	movq	%rax, %rdi	# tmp125,
	call	constant	#
	movl	%eax, -60(%rbp)	# tmp126, type
	.loc 2 699 0 discriminator 3
	movl	-60(%rbp), %eax	# type, type
	cmpl	$2, %eax	#, type
	je	.L47	#,
	cmpl	$3, %eax	#, type
	je	.L48	#,
	cmpl	$1, %eax	#, type
	jne	.L54	#,
	.loc 2 701 0
	movq	-24(%rbp), %rax	# s, tmp128
	movq	%rax, %rsi	# tmp128,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.10954,
	call	Perl_sv_2mortal	#
	movq	%rax, -32(%rbp)	# tmp129, sv
	.loc 2 702 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp130
	movq	%rax, (%rbx)	# tmp130, *sp_60
	.loc 2 703 0
	jmp	.L50	#
.L47:
	.loc 2 705 0
	movq	-24(%rbp), %rax	# s, tmp131
	movq	%rax, %rsi	# tmp131,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.10954,
	call	Perl_sv_2mortal	#
	movq	%rax, -32(%rbp)	# tmp132, sv
	.loc 2 707 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp133
	movq	%rax, (%rbx)	# tmp133, *sp_63
	.loc 2 708 0
	jmp	.L50	#
.L48:
	.loc 2 710 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.19
	movq	%rax, %rdx	# PL_stack_max.19, PL_stack_max.20
	movq	%rbx, %rax	# sp, sp.21
	subq	%rax, %rdx	# sp.21, D.10947
	movq	%rdx, %rax	# D.10947, D.10947
	cmpq	$7, %rax	#, D.10947
	jg	.L51	#,
	.loc 2 710 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L51:
	.loc 2 711 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_69
.LBB3:
	.loc 2 712 0
	movq	-48(%rbp), %rdx	# iv, iv.22
	movq	-40(%rbp), %rax	# targ, tmp134
	movq	%rdx, %rsi	# iv.22,
	movq	%rax, %rdi	# tmp134,
	call	Perl_sv_setiv	#
.LBB4:
	movq	-40(%rbp), %rax	# targ, tmp135
	movl	12(%rax), %eax	# targ_42->sv_flags, D.10952
	andl	$16384, %eax	#, D.10952
	testl	%eax, %eax	# D.10952
	je	.L52	#,
	.loc 2 712 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp136
	movq	%rax, %rdi	# tmp136,
	call	Perl_mg_set	#
.L52:
	.loc 2 712 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp137
	movq	%rax, (%rbx)	# tmp137, *sp_73
.LBE4:
.LBE3:
	.loc 2 713 0 is_stmt 1 discriminator 2
	jmp	.L50	#
.L54:
	.loc 2 760 0
	movq	-24(%rbp), %rdx	# s, tmp138
	movl	-60(%rbp), %eax	# type, tmp139
	movl	%eax, %esi	# tmp139,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.10954,
	call	Perl_sv_2mortal	#
	movq	%rax, -32(%rbp)	# tmp140, sv
	.loc 2 763 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp141
	movq	%rax, (%rbx)	# tmp141, *sp_77
.L50:
	.loc 2 766 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 2 767 0
	nop
.LBE2:
	.loc 2 769 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	XS_Time__HiRes_constant, .-XS_Time__HiRes_constant
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: Time::HiRes::usleep(useconds)"
	.align 8
.LC18:
	.string	"Time::HiRes::usleep(%g): negative time not invented yet"
	.text
	.globl	XS_Time__HiRes_usleep
	.type	XS_Time__HiRes_usleep, @function
XS_Time__HiRes_usleep:
.LFB8:
	.loc 2 779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# cv, cv
	.loc 2 780 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.23
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.24
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.26
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.26, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.25_8, D.10959
	cltq
	salq	$3, %rax	#, D.10960
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.27
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.28
	subq	%rax, %rdx	# PL_stack_base.29, D.10961
	movq	%rdx, %rax	# D.10961, D.10961
	sarq	$3, %rax	#, tmp137
	addl	$1, %eax	#, D.10962
	movl	%eax, -96(%rbp)	# D.10962, ax
	movq	%rbx, %rdx	# sp, sp.30
	movq	%r12, %rax	# mark, mark.31
	subq	%rax, %rdx	# mark.31, D.10961
	movq	%rdx, %rax	# D.10961, D.10961
	sarq	$3, %rax	#, tmp138
	movl	%eax, -92(%rbp)	# D.10961, items
	.loc 2 781 0
	cmpl	$1, -92(%rbp)	#, items
	je	.L56	#,
	.loc 2 782 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L56:
.LBB5:
	.loc 2 784 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.33
	movl	-96(%rbp), %edx	# ax, tmp139
	movslq	%edx, %rdx	# tmp139, D.10960
	salq	$3, %rdx	#, D.10960
	addq	%rdx, %rax	# D.10960, D.10963
	movq	(%rax), %rax	# *_30, D.10964
	movl	12(%rax), %eax	# _31->sv_flags, D.10965
	andl	$131072, %eax	#, D.10965
	testl	%eax, %eax	# D.10965
	je	.L57	#,
	.loc 2 784 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.34
	movl	-96(%rbp), %edx	# ax, tmp140
	movslq	%edx, %rdx	# tmp140, D.10960
	salq	$3, %rdx	#, D.10960
	addq	%rdx, %rax	# D.10960, D.10963
	movq	(%rax), %rax	# *_37, D.10964
	movq	(%rax), %rax	# _38->sv_any, D.10966
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_39].xnv_nv, iftmp.32
	jmp	.L58	#
.L57:
	.loc 2 784 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.35
	movl	-96(%rbp), %edx	# ax, tmp141
	movslq	%edx, %rdx	# tmp141, D.10960
	salq	$3, %rdx	#, D.10960
	addq	%rdx, %rax	# D.10960, D.10963
	movq	(%rax), %rax	# *_44, D.10964
	movq	%rax, %rdi	# D.10964,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -112(%rbp)	#, %sfp
	movq	-112(%rbp), %rax	# %sfp, iftmp.32
.L58:
	.loc 2 784 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.32, useconds
	.loc 2 789 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.37
	movzbl	37(%rax), %eax	# PL_op.37_48->op_private, D.10967
	movzbl	%al, %eax	# D.10967, D.10959
	andl	$32, %eax	#, D.10959
	testl	%eax, %eax	# D.10959
	je	.L59	#,
	.loc 2 789 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.38
	movq	PL_op(%rip), %rax	# PL_op, PL_op.39
	movq	24(%rax), %rax	# PL_op.39_53->op_targ, D.10960
	salq	$3, %rax	#, D.10960
	addq	%rdx, %rax	# PL_curpad.38, D.10963
	movq	(%rax), %rax	# *_56, iftmp.36
	jmp	.L60	#
.L59:
	.loc 2 789 0 discriminator 2
	call	Perl_sv_newmortal	#
.L60:
	.loc 2 789 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.36, targ
	.loc 2 791 0 is_stmt 1 discriminator 3
	leaq	-48(%rbp), %rax	#, tmp142
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	gettimeofday	#
	.loc 2 792 0 discriminator 3
	cmpl	$0, -92(%rbp)	#, items
	jle	.L61	#,
	.loc 2 793 0
	movsd	-88(%rbp), %xmm0	# useconds, tmp143
	ucomisd	.LC10(%rip), %xmm0	#, tmp143
	jbe	.L72	#,
.LBB6:
	.loc 2 794 0
	movsd	-88(%rbp), %xmm0	# useconds, tmp144
	movsd	.LC10(%rip), %xmm1	#, tmp145
	divsd	%xmm1, %xmm0	# tmp145, D.10968
	cvttsd2siq	%xmm0, %rax	# D.10968, tmp146
	movq	%rax, -72(%rbp)	# tmp146, seconds
	.loc 2 798 0
	cmpq	$0, -72(%rbp)	#, seconds
	je	.L64	#,
	.loc 2 799 0
	movq	-72(%rbp), %rax	# seconds, tmp147
	movl	%eax, %edi	# D.10965,
	call	sleep	#
	.loc 2 800 0
	cvtsi2sdq	-72(%rbp), %xmm0	# seconds, D.10968
	movsd	.LC10(%rip), %xmm1	#, tmp148
	mulsd	%xmm1, %xmm0	# tmp148, D.10968
	movsd	-88(%rbp), %xmm1	# useconds, tmp150
	subsd	%xmm0, %xmm1	# D.10968, tmp149
	movapd	%xmm1, %xmm0	# tmp149, tmp149
	movsd	%xmm0, -88(%rbp)	# tmp149, useconds
.LBE6:
	jmp	.L65	#
.L64:
	jmp	.L65	#
.L72:
	.loc 2 802 0
	xorpd	%xmm0, %xmm0	# tmp151
	ucomisd	-88(%rbp), %xmm0	# useconds, tmp151
	jbe	.L65	#,
	.loc 2 803 0
	movq	-88(%rbp), %rax	# useconds, tmp152
	movq	%rax, -112(%rbp)	# tmp152, %sfp
	movsd	-112(%rbp), %xmm0	# %sfp,
	movl	$.LC18, %edi	#,
	movl	$1, %eax	#,
	call	Perl_croak	#
.L65:
	.loc 2 804 0 discriminator 1
	movsd	-88(%rbp), %xmm0	# useconds, tmp154
	cvttsd2siq	%xmm0, %rax	# tmp154, tmp153
	movl	%eax, %eax	# D.10965, D.10960
	movq	%rax, %rdi	# D.10960,
	call	hrt_usleep	#
	jmp	.L67	#
.L61:
	.loc 2 806 0
	movl	$2147450879, %edi	#,
	call	sleep	#
.L67:
	.loc 2 807 0
	leaq	-32(%rbp), %rax	#, tmp155
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	gettimeofday	#
	.loc 2 811 0
	movq	-32(%rbp), %rdx	# Tb.tv_sec, D.10961
	movq	-48(%rbp), %rax	# Ta.tv_sec, D.10961
	subq	%rax, %rdx	# D.10961, D.10961
	movq	%rdx, %rax	# D.10961, D.10961
	cvtsi2sdq	%rax, %xmm0	# D.10961, D.10968
	movsd	.LC10(%rip), %xmm1	#, tmp156
	mulsd	%xmm0, %xmm1	# D.10968, D.10968
	movq	-24(%rbp), %rdx	# Tb.tv_usec, D.10961
	movq	-40(%rbp), %rax	# Ta.tv_usec, D.10961
	subq	%rax, %rdx	# D.10961, D.10961
	movq	%rdx, %rax	# D.10961, D.10961
	cvtsi2sdq	%rax, %xmm0	# D.10961, D.10968
	addsd	%xmm1, %xmm0	# D.10968, tmp157
	movsd	%xmm0, -64(%rbp)	# tmp157, RETVAL
	.loc 2 814 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.40
	movl	-96(%rbp), %edx	# ax, tmp158
	movslq	%edx, %rdx	# tmp158, D.10960
	salq	$3, %rdx	#, D.10960
	subq	$8, %rdx	#, D.10969
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB7:
	movq	-64(%rbp), %rax	# RETVAL, tmp159
	movq	-80(%rbp), %rdx	# targ, tmp160
	movq	%rax, -112(%rbp)	# tmp159, %sfp
	movsd	-112(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp160,
	call	Perl_sv_setnv	#
.LBB8:
	movq	-80(%rbp), %rax	# targ, tmp161
	movl	12(%rax), %eax	# targ_59->sv_flags, D.10965
	andl	$16384, %eax	#, D.10965
	testl	%eax, %eax	# D.10965
	je	.L68	#,
	.loc 2 814 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# targ, tmp162
	movq	%rax, %rdi	# tmp162,
	call	Perl_mg_set	#
.L68:
	.loc 2 814 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-80(%rbp), %rax	# targ, tmp163
	movq	%rax, (%rbx)	# tmp163, *sp_85
.LBE8:
.LBE7:
.LBE5:
.LBB9:
	.loc 2 816 0 is_stmt 1 discriminator 2
	movq	$1, -56(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.41
	movl	-96(%rbp), %edx	# ax, tmp164
	movslq	%edx, %rcx	# tmp164, D.10969
	movq	-56(%rbp), %rdx	# tmpXSoff, tmpXSoff.42
	addq	%rcx, %rdx	# D.10969, D.10969
	salq	$3, %rdx	#, D.10969
	subq	$8, %rdx	#, D.10969
	addq	%rdx, %rax	# D.10969, PL_stack_sp.43
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.43, PL_stack_sp
	nop
.LBE9:
	.loc 2 817 0 discriminator 2
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_Time__HiRes_usleep, .-XS_Time__HiRes_usleep
	.section	.rodata
	.align 8
.LC21:
	.string	"Time::HiRes::sleep(%g): internal error: useconds < 0 (unsigned %lu signed %ld)"
	.align 8
.LC22:
	.string	"Time::HiRes::sleep(%g): negative time not invented yet"
	.text
	.globl	XS_Time__HiRes_sleep
	.type	XS_Time__HiRes_sleep, @function
XS_Time__HiRes_sleep:
.LFB9:
	.loc 2 864 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# cv, cv
	.loc 2 865 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.44
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.45
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.47
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.47, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.46_6, D.10972
	cltq
	salq	$3, %rax	#, D.10973
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.48
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.49
	subq	%rax, %rdx	# PL_stack_base.50, D.10974
	movq	%rdx, %rax	# D.10974, D.10974
	sarq	$3, %rax	#, tmp139
	addl	$1, %eax	#, D.10975
	movl	%eax, -96(%rbp)	# D.10975, ax
	movq	%rbx, %rdx	# sp, sp.51
	movq	%r12, %rax	# mark, mark.52
	subq	%rax, %rdx	# mark.52, D.10974
	movq	%rdx, %rax	# D.10974, D.10974
	sarq	$3, %rax	#, tmp140
	movl	%eax, -92(%rbp)	# D.10974, items
.LBB10:
	.loc 2 871 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.54
	movzbl	37(%rax), %eax	# PL_op.54_25->op_private, D.10976
	movzbl	%al, %eax	# D.10976, D.10972
	andl	$32, %eax	#, D.10972
	testl	%eax, %eax	# D.10972
	je	.L74	#,
	.loc 2 871 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.55
	movq	PL_op(%rip), %rax	# PL_op, PL_op.56
	movq	24(%rax), %rax	# PL_op.56_30->op_targ, D.10973
	salq	$3, %rax	#, D.10973
	addq	%rdx, %rax	# PL_curpad.55, D.10977
	movq	(%rax), %rax	# *_33, iftmp.53
	jmp	.L75	#
.L74:
	.loc 2 871 0 discriminator 2
	call	Perl_sv_newmortal	#
.L75:
	.loc 2 871 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.53, targ
	.loc 2 873 0 is_stmt 1 discriminator 3
	leaq	-48(%rbp), %rax	#, tmp141
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	gettimeofday	#
	.loc 2 874 0 discriminator 3
	cmpl	$0, -92(%rbp)	#, items
	jle	.L76	#,
.LBB11:
	.loc 2 875 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.58
	movl	-96(%rbp), %edx	# ax, tmp142
	movslq	%edx, %rdx	# tmp142, D.10973
	salq	$3, %rdx	#, D.10973
	addq	%rdx, %rax	# D.10973, D.10977
	movq	(%rax), %rax	# *_40, D.10978
	movl	12(%rax), %eax	# _41->sv_flags, D.10979
	andl	$131072, %eax	#, D.10979
	testl	%eax, %eax	# D.10979
	je	.L77	#,
	.loc 2 875 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.59
	movl	-96(%rbp), %edx	# ax, tmp143
	movslq	%edx, %rdx	# tmp143, D.10973
	salq	$3, %rdx	#, D.10973
	addq	%rdx, %rax	# D.10973, D.10977
	movq	(%rax), %rax	# *_47, D.10978
	movq	(%rax), %rax	# _48->sv_any, D.10980
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_49].xnv_nv, iftmp.57
	jmp	.L78	#
.L77:
	.loc 2 875 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.60
	movl	-96(%rbp), %edx	# ax, tmp144
	movslq	%edx, %rdx	# tmp144, D.10973
	salq	$3, %rdx	#, D.10973
	addq	%rdx, %rax	# D.10973, D.10977
	movq	(%rax), %rax	# *_54, D.10978
	movq	%rax, %rdi	# D.10978,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -112(%rbp)	#, %sfp
	movq	-112(%rbp), %rax	# %sfp, iftmp.57
.L78:
	.loc 2 875 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.57, seconds
	.loc 2 876 0 is_stmt 1 discriminator 3
	movsd	-80(%rbp), %xmm0	# seconds, tmp145
	xorpd	%xmm1, %xmm1	# tmp146
	ucomisd	%xmm1, %xmm0	# tmp146, tmp145
	jb	.L96	#,
.LBB12:
	.loc 2 877 0
	movsd	-80(%rbp), %xmm0	# seconds, tmp147
	ucomisd	.LC19(%rip), %xmm0	#, tmp147
	jae	.L81	#,
	movsd	-80(%rbp), %xmm0	# seconds, tmp148
	cvttsd2siq	%xmm0, %rax	# tmp148, D.10973
	jmp	.L82	#
.L81:
	movsd	-80(%rbp), %xmm0	# seconds, tmp150
	movsd	.LC19(%rip), %xmm1	#, tmp151
	subsd	%xmm1, %xmm0	# tmp151, tmp149
	cvttsd2siq	%xmm0, %rax	# tmp149, D.10973
	movabsq	$-9223372036854775808, %rdx	#, tmp152
	xorq	%rdx, %rax	# tmp152, D.10973
.L82:
	testq	%rax, %rax	# D.10973
	js	.L83	#,
	cvtsi2sdq	%rax, %xmm0	# D.10973, D.10981
	jmp	.L84	#
.L83:
	movq	%rax, %rdx	# D.10973, tmp154
	shrq	%rdx	# tmp154
	andl	$1, %eax	#, tmp155
	orq	%rax, %rdx	# tmp155, tmp154
	cvtsi2sdq	%rdx, %xmm0	# tmp154, tmp153
	addsd	%xmm0, %xmm0	# tmp153, D.10981
.L84:
	movsd	-80(%rbp), %xmm1	# seconds, tmp156
	subsd	%xmm0, %xmm1	# D.10981, D.10981
	movapd	%xmm1, %xmm0	# D.10981, D.10981
	movsd	.LC10(%rip), %xmm1	#, tmp157
	mulsd	%xmm1, %xmm0	# tmp157, D.10981
	ucomisd	.LC19(%rip), %xmm0	#, D.10981
	jae	.L85	#,
	cvttsd2siq	%xmm0, %rax	# D.10981, tmp158
	movq	%rax, -72(%rbp)	# tmp158, useconds
	jmp	.L86	#
.L85:
	movsd	.LC19(%rip), %xmm1	#, tmp160
	subsd	%xmm1, %xmm0	# tmp160, tmp159
	cvttsd2siq	%xmm0, %rax	# tmp159, tmp161
	movq	%rax, -72(%rbp)	# tmp161, useconds
	movabsq	$-9223372036854775808, %rax	#, tmp162
	xorq	%rax, -72(%rbp)	# tmp162, useconds
.L86:
	movq	-72(%rbp), %rax	# useconds, tmp163
	movq	%rax, -72(%rbp)	# tmp163, useconds
	.loc 2 878 0
	movsd	-80(%rbp), %xmm0	# seconds, tmp164
	movsd	.LC20(%rip), %xmm1	#, tmp165
	ucomisd	%xmm1, %xmm0	# tmp165, tmp164
	jb	.L87	#,
	.loc 2 879 0
	movsd	-80(%rbp), %xmm0	# seconds, tmp167
	cvttsd2siq	%xmm0, %rax	# tmp167, tmp166
	movl	%eax, %edi	# D.10979,
	call	sleep	#
.L87:
	.loc 2 880 0
	movq	-72(%rbp), %rax	# useconds, useconds.61
	testq	%rax, %rax	# useconds.61
	jns	.L89	#,
	.loc 2 890 0
	movq	-72(%rbp), %rax	# useconds, useconds.62
	testq	%rax, %rax	# useconds.62
	jns	.L89	#,
	.loc 2 891 0
	movq	-72(%rbp), %rdx	# useconds, useconds.63
	movq	-72(%rbp), %rcx	# useconds, tmp168
	movq	-80(%rbp), %rax	# seconds, tmp169
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, -112(%rbp)	# tmp169, %sfp
	movsd	-112(%rbp), %xmm0	# %sfp,
	movl	$.LC21, %edi	#,
	movl	$1, %eax	#,
	call	Perl_croak	#
.L89:
	.loc 2 893 0
	movq	-72(%rbp), %rax	# useconds, tmp170
	movq	%rax, %rdi	# tmp170,
	call	hrt_usleep	#
.LBE12:
	jmp	.L91	#
.L96:
	.loc 2 895 0
	movq	-80(%rbp), %rax	# seconds, tmp171
	movq	%rax, -112(%rbp)	# tmp171, %sfp
	movsd	-112(%rbp), %xmm0	# %sfp,
	movl	$.LC22, %edi	#,
	movl	$1, %eax	#,
	call	Perl_croak	#
.LBE11:
	jmp	.L91	#
.L76:
	.loc 2 897 0
	movl	$2147450879, %edi	#,
	call	sleep	#
.L91:
	.loc 2 898 0
	leaq	-32(%rbp), %rax	#, tmp172
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp172,
	call	gettimeofday	#
	.loc 2 902 0
	movq	-32(%rbp), %rdx	# Tb.tv_sec, D.10974
	movq	-48(%rbp), %rax	# Ta.tv_sec, D.10974
	subq	%rax, %rdx	# D.10974, D.10974
	movq	%rdx, %rax	# D.10974, D.10974
	cvtsi2sdq	%rax, %xmm1	# D.10974, D.10981
	movq	-24(%rbp), %rdx	# Tb.tv_usec, D.10974
	movq	-40(%rbp), %rax	# Ta.tv_usec, D.10974
	subq	%rax, %rdx	# D.10974, D.10974
	movq	%rdx, %rax	# D.10974, D.10974
	cvtsi2sdq	%rax, %xmm0	# D.10974, D.10981
	movsd	.LC23(%rip), %xmm2	#, tmp173
	mulsd	%xmm2, %xmm0	# tmp173, D.10981
	addsd	%xmm1, %xmm0	# D.10981, tmp174
	movsd	%xmm0, -64(%rbp)	# tmp174, RETVAL
	.loc 2 905 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.64
	movl	-96(%rbp), %edx	# ax, tmp175
	movslq	%edx, %rdx	# tmp175, D.10973
	salq	$3, %rdx	#, D.10973
	subq	$8, %rdx	#, D.10982
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB13:
	movq	-64(%rbp), %rax	# RETVAL, tmp176
	movq	-88(%rbp), %rdx	# targ, tmp177
	movq	%rax, -112(%rbp)	# tmp176, %sfp
	movsd	-112(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp177,
	call	Perl_sv_setnv	#
.LBB14:
	movq	-88(%rbp), %rax	# targ, tmp178
	movl	12(%rax), %eax	# targ_36->sv_flags, D.10979
	andl	$16384, %eax	#, D.10979
	testl	%eax, %eax	# D.10979
	je	.L92	#,
	.loc 2 905 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp179
	movq	%rax, %rdi	# tmp179,
	call	Perl_mg_set	#
.L92:
	.loc 2 905 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-88(%rbp), %rax	# targ, tmp180
	movq	%rax, (%rbx)	# tmp180, *sp_84
.LBE14:
.LBE13:
.LBE10:
.LBB15:
	.loc 2 907 0 is_stmt 1 discriminator 2
	movq	$1, -56(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.65
	movl	-96(%rbp), %edx	# ax, tmp181
	movslq	%edx, %rcx	# tmp181, D.10982
	movq	-56(%rbp), %rdx	# tmpXSoff, tmpXSoff.66
	addq	%rcx, %rdx	# D.10982, D.10982
	salq	$3, %rdx	#, D.10982
	subq	$8, %rdx	#, D.10982
	addq	%rdx, %rax	# D.10982, PL_stack_sp.67
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.67, PL_stack_sp
	nop
.LBE15:
	.loc 2 908 0 discriminator 2
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	XS_Time__HiRes_sleep, .-XS_Time__HiRes_sleep
	.section	.rodata
	.align 8
.LC24:
	.string	"Usage: Time::HiRes::gettimeofday()"
	.text
	.globl	XS_Time__HiRes_gettimeofday
	.type	XS_Time__HiRes_gettimeofday, @function
XS_Time__HiRes_gettimeofday:
.LFB10:
	.loc 2 1038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 2 1039 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.68
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.69
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.71
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.71, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.70_8, D.10985
	cltq
	salq	$3, %rax	#, D.10986
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.72
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.73
	subq	%rax, %rdx	# PL_stack_base.74, D.10987
	movq	%rdx, %rax	# D.10987, D.10987
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.10988
	movl	%eax, -44(%rbp)	# D.10988, ax
	movq	%rbx, %rdx	# sp, sp.75
	movq	%r12, %rax	# mark, mark.76
	subq	%rax, %rdx	# mark.76, D.10987
	movq	%rdx, %rax	# D.10987, D.10987
	sarq	$3, %rax	#, tmp115
	movl	%eax, -40(%rbp)	# D.10987, items
	.loc 2 1040 0
	cmpl	$0, -40(%rbp)	#, items
	je	.L106	#,
	.loc 2 1041 0
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L106:
	.loc 2 1043 0
	movl	-40(%rbp), %eax	# items, tmp116
	cltq
	salq	$3, %rax	#, D.10986
	negq	%rax	# D.10989
	addq	%rax, %rbx	# D.10989, sp
.LBB16:
	.loc 2 1050 0
	leaq	-32(%rbp), %rax	#, tmp117
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	gettimeofday	#
	movl	%eax, -36(%rbp)	# tmp118, status
	.loc 2 1051 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.78
	movzbl	36(%rax), %eax	# PL_op.78_32->op_flags, D.10990
	movzbl	%al, %eax	# D.10990, D.10985
	andl	$3, %eax	#, D.10985
	testl	%eax, %eax	# D.10985
	je	.L99	#,
	.loc 2 1051 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.79
	movzbl	36(%rax), %eax	# PL_op.79_36->op_flags, D.10990
	movzbl	%al, %eax	# D.10990, D.10985
	andl	$3, %eax	#, D.10985
	cmpl	$3, %eax	#, D.10985
	sete	%al	#, iftmp.77
	jmp	.L100	#
.L99:
	.loc 2 1051 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.10985
	sete	%al	#, iftmp.77
.L100:
	.loc 2 1051 0 discriminator 3
	testb	%al, %al	# iftmp.77
	je	.L101	#,
	.loc 2 1052 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.80
	movq	%rax, %rdx	# PL_stack_max.80, PL_stack_max.81
	movq	%rbx, %rax	# sp, sp.82
	subq	%rax, %rdx	# sp.82, D.10987
	movq	%rdx, %rax	# D.10987, D.10987
	cmpq	$15, %rax	#, D.10987
	jg	.L102	#,
	.loc 2 1052 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L102:
	.loc 2 1053 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# Tp.tv_sec, D.10987
	movq	%rax, %rdi	# D.10987,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.10991,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10991, *sp_48
	.loc 2 1054 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# Tp.tv_usec, D.10987
	movq	%rax, %rdi	# D.10987,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.10991,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10991, *sp_52
	jmp	.L103	#
.L101:
	.loc 2 1056 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.83
	movq	%rax, %rdx	# PL_stack_max.83, PL_stack_max.84
	movq	%rbx, %rax	# sp, sp.85
	subq	%rax, %rdx	# sp.85, D.10987
	movq	%rdx, %rax	# D.10987, D.10987
	cmpq	$7, %rax	#, D.10987
	jg	.L104	#,
	.loc 2 1056 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L104:
	.loc 2 1057 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# Tp.tv_sec, D.10987
	cvtsi2sdq	%rax, %xmm1	# D.10987, D.10992
	movq	-24(%rbp), %rax	# Tp.tv_usec, D.10987
	cvtsi2sdq	%rax, %xmm0	# D.10987, D.10992
	movsd	.LC10(%rip), %xmm2	#, tmp119
	divsd	%xmm2, %xmm0	# tmp119, D.10992
	addsd	%xmm1, %xmm0	# D.10992, D.10992
	call	Perl_newSVnv	#
	movq	%rax, %rdi	# D.10991,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10991, *sp_61
.L103:
	.loc 2 1060 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 2 1061 0
	nop
.LBE16:
	.loc 2 1063 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	XS_Time__HiRes_gettimeofday, .-XS_Time__HiRes_gettimeofday
	.section	.rodata
.LC25:
	.string	"Usage: Time::HiRes::time()"
	.text
	.globl	XS_Time__HiRes_time
	.type	XS_Time__HiRes_time, @function
XS_Time__HiRes_time:
.LFB11:
	.loc 2 1067 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 2 1068 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.86
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.87
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.89
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.89, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.88_5, D.10994
	cltq
	salq	$3, %rax	#, D.10995
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.90
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.91
	subq	%rax, %rdx	# PL_stack_base.92, D.10996
	movq	%rdx, %rax	# D.10996, D.10996
	sarq	$3, %rax	#, tmp108
	addl	$1, %eax	#, D.10997
	movl	%eax, -68(%rbp)	# D.10997, ax
	movq	%rbx, %rdx	# sp, sp.93
	movq	%r12, %rax	# mark, mark.94
	subq	%rax, %rdx	# mark.94, D.10996
	movq	%rdx, %rax	# D.10996, D.10996
	sarq	$3, %rax	#, tmp109
	movl	%eax, -64(%rbp)	# D.10996, items
	.loc 2 1069 0
	cmpl	$0, -64(%rbp)	#, items
	je	.L108	#,
	.loc 2 1070 0
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L108:
.LBB17:
	.loc 2 1076 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.96
	movzbl	37(%rax), %eax	# PL_op.96_24->op_private, D.10998
	movzbl	%al, %eax	# D.10998, D.10994
	andl	$32, %eax	#, D.10994
	testl	%eax, %eax	# D.10994
	je	.L109	#,
	.loc 2 1076 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.97
	movq	PL_op(%rip), %rax	# PL_op, PL_op.98
	movq	24(%rax), %rax	# PL_op.98_29->op_targ, D.10995
	salq	$3, %rax	#, D.10995
	addq	%rdx, %rax	# PL_curpad.97, D.10999
	movq	(%rax), %rax	# *_32, iftmp.95
	jmp	.L110	#
.L109:
	.loc 2 1076 0 discriminator 2
	call	Perl_sv_newmortal	#
.L110:
	.loc 2 1076 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.95, targ
	.loc 2 1079 0 is_stmt 1 discriminator 3
	leaq	-32(%rbp), %rax	#, tmp110
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	gettimeofday	#
	movl	%eax, -60(%rbp)	# tmp111, status
	.loc 2 1080 0 discriminator 3
	movq	-32(%rbp), %rax	# Tp.tv_sec, D.10996
	cvtsi2sdq	%rax, %xmm1	# D.10996, D.11000
	movq	-24(%rbp), %rax	# Tp.tv_usec, D.10996
	cvtsi2sdq	%rax, %xmm0	# D.10996, D.11000
	movsd	.LC10(%rip), %xmm2	#, tmp112
	divsd	%xmm2, %xmm0	# tmp112, D.11000
	addsd	%xmm1, %xmm0	# D.11000, tmp113
	movsd	%xmm0, -48(%rbp)	# tmp113, RETVAL
	.loc 2 1082 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.99
	movl	-68(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.10995
	salq	$3, %rdx	#, D.10995
	subq	$8, %rdx	#, D.11001
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB18:
	movq	-48(%rbp), %rax	# RETVAL, tmp115
	movq	-56(%rbp), %rdx	# targ, tmp116
	movq	%rax, -96(%rbp)	# tmp115, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp116,
	call	Perl_sv_setnv	#
.LBB19:
	movq	-56(%rbp), %rax	# targ, tmp117
	movl	12(%rax), %eax	# targ_35->sv_flags, D.11002
	andl	$16384, %eax	#, D.11002
	testl	%eax, %eax	# D.11002
	je	.L111	#,
	.loc 2 1082 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Perl_mg_set	#
.L111:
	.loc 2 1082 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp119
	movq	%rax, (%rbx)	# tmp119, *sp_50
.LBE19:
.LBE18:
.LBE17:
.LBB20:
	.loc 2 1084 0 is_stmt 1 discriminator 2
	movq	$1, -40(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.100
	movl	-68(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rcx	# tmp120, D.11001
	movq	-40(%rbp), %rdx	# tmpXSoff, tmpXSoff.101
	addq	%rcx, %rdx	# D.11001, D.11001
	salq	$3, %rdx	#, D.11001
	subq	$8, %rdx	#, D.11001
	addq	%rdx, %rax	# D.11001, PL_stack_sp.102
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.102, PL_stack_sp
	nop
.LBE20:
	.loc 2 1085 0 discriminator 2
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	XS_Time__HiRes_time, .-XS_Time__HiRes_time
	.section	.rodata
.LC26:
	.string	"HiRes.c"
.LC27:
	.string	"Time::HiRes::constant"
.LC28:
	.string	"$"
.LC29:
	.string	"Time::HiRes::usleep"
.LC30:
	.string	"Time::HiRes::sleep"
.LC31:
	.string	";@"
.LC32:
	.string	"Time::HiRes::gettimeofday"
.LC33:
	.string	""
.LC34:
	.string	"Time::HiRes::time"
	.text
	.globl	boot_Time__HiRes
	.type	boot_Time__HiRes, @function
boot_Time__HiRes:
.LFB12:
	.loc 2 1170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 2 1171 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.103
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.104
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.106
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.106, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.105_4, D.11005
	cltq
	salq	$3, %rax	#, D.11006
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.107
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.108
	subq	%rax, %rdx	# PL_stack_base.109, D.11007
	movq	%rdx, %rax	# D.11007, D.11007
	sarq	$3, %rax	#, tmp95
	addl	$1, %eax	#, D.11008
	movl	%eax, -40(%rbp)	# D.11008, ax
	movq	%r12, %rdx	# sp, sp.110
	movq	%rbx, %rax	# mark, mark.111
	subq	%rax, %rdx	# mark.111, D.11007
	movq	%rdx, %rax	# D.11007, D.11007
	sarq	$3, %rax	#, tmp96
	movl	%eax, -36(%rbp)	# D.11007, items
	.loc 2 1172 0
	movq	$.LC26, -32(%rbp)	#, file
	.loc 2 1179 0
	movq	-32(%rbp), %rax	# file, tmp97
	movq	%rax, %rdx	# tmp97,
	movl	$XS_Time__HiRes_constant, %esi	#,
	movl	$.LC27, %edi	#,
	call	Perl_newXS	#
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.11009,
	call	Perl_sv_setpv	#
	.loc 2 1181 0
	movq	-32(%rbp), %rax	# file, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$XS_Time__HiRes_usleep, %esi	#,
	movl	$.LC29, %edi	#,
	call	Perl_newXS	#
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.11009,
	call	Perl_sv_setpv	#
	.loc 2 1185 0
	movq	-32(%rbp), %rax	# file, tmp99
	movq	%rax, %rdx	# tmp99,
	movl	$XS_Time__HiRes_sleep, %esi	#,
	movl	$.LC30, %edi	#,
	call	Perl_newXS	#
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# D.11009,
	call	Perl_sv_setpv	#
	.loc 2 1196 0
	movq	-32(%rbp), %rax	# file, tmp100
	movq	%rax, %rdx	# tmp100,
	movl	$XS_Time__HiRes_gettimeofday, %esi	#,
	movl	$.LC32, %edi	#,
	call	Perl_newXS	#
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# D.11009,
	call	Perl_sv_setpv	#
	.loc 2 1197 0
	movq	-32(%rbp), %rax	# file, tmp101
	movq	%rax, %rdx	# tmp101,
	movl	$XS_Time__HiRes_time, %esi	#,
	movl	$.LC34, %edi	#,
	call	Perl_newXS	#
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# D.11009,
	call	Perl_sv_setpv	#
.LBB21:
	.loc 2 1241 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.112
	movl	-40(%rbp), %edx	# ax, tmp102
	movslq	%edx, %rdx	# tmp102, D.11006
	salq	$3, %rdx	#, D.11006
	addq	%rdx, %rax	# D.11006, D.11010
	movq	$PL_sv_yes, (%rax)	#, *_32
.LBB22:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.113
	movl	-40(%rbp), %edx	# ax, tmp103
	movslq	%edx, %rcx	# tmp103, D.11011
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.114
	addq	%rcx, %rdx	# D.11011, D.11011
	salq	$3, %rdx	#, D.11011
	subq	$8, %rdx	#, D.11011
	addq	%rdx, %rax	# D.11011, PL_stack_sp.115
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.115, PL_stack_sp
	nop
.LBE22:
.LBE21:
	.loc 2 1242 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	boot_Time__HiRes, .-boot_Time__HiRes
	.section	.rodata
	.align 8
.LC10:
	.long	0
	.long	1093567616
	.align 8
.LC19:
	.long	0
	.long	1138753536
	.align 8
.LC20:
	.long	0
	.long	1072693248
	.align 8
.LC23:
	.long	2696277389
	.long	1051772663
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "perl.h"
	.file 10 "op.h"
	.file 11 "sv.h"
	.file 12 "regexp.h"
	.file 13 "gv.h"
	.file 14 "mg.h"
	.file 15 "av.h"
	.file 16 "hv.h"
	.file 17 "cv.h"
	.file 18 "handy.h"
	.file 19 "perlio.h"
	.file 20 "pad.h"
	.file 21 "intrpvar.h"
	.file 22 "thrdvar.h"
	.file 23 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15f2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF234
	.byte	0x1
	.long	.LASF235
	.long	.LASF236
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x94
	.long	0x5e
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x96
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x6d
	.long	0x84
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.long	.LASF26
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.long	0xd7
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0x20
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0x21
	.long	0x77
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x7
	.byte	0x36
	.long	0x5e
	.uleb128 0x9
	.byte	0x80
	.byte	0x7
	.byte	0x40
	.long	0xf7
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.byte	0x48
	.long	0xf7
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xd7
	.long	0x107
	.uleb128 0xb
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x7
	.byte	0x4b
	.long	0xe2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x6
	.byte	0x8
	.long	0x126
	.uleb128 0xc
	.long	0x95
	.uleb128 0xd
	.long	.LASF237
	.byte	0x4
	.byte	0x17
	.byte	0x5c
	.long	0x14a
	.uleb128 0xe
	.long	.LASF21
	.sleb128 0
	.uleb128 0xe
	.long	.LASF22
	.sleb128 1
	.uleb128 0xe
	.long	.LASF23
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.string	"DIR"
	.byte	0x8
	.byte	0x80
	.long	0x155
	.uleb128 0x10
	.long	.LASF184
	.uleb128 0x11
	.string	"IV"
	.byte	0x9
	.value	0x52b
	.long	0x5e
	.uleb128 0x11
	.string	"UV"
	.byte	0x9
	.value	0x52c
	.long	0x42
	.uleb128 0x11
	.string	"NV"
	.byte	0x9
	.value	0x5f3
	.long	0x17b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF24
	.uleb128 0x12
	.long	.LASF25
	.byte	0x9
	.value	0x7d3
	.long	0xa7
	.uleb128 0x11
	.string	"OP"
	.byte	0x9
	.value	0x7d5
	.long	0x199
	.uleb128 0x13
	.string	"op"
	.byte	0x28
	.byte	0xa
	.byte	0xe2
	.long	0x205
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xe3
	.long	0xd8b
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xe3
	.long	0xd8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xe3
	.long	0xe0f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xe3
	.long	0xdf9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xe3
	.long	0xc66
	.byte	0x20
	.uleb128 0x8
	.long	.LASF32
	.byte	0xa
	.byte	0xe3
	.long	0xc66
	.byte	0x22
	.uleb128 0x8
	.long	.LASF33
	.byte	0xa
	.byte	0xe3
	.long	0xc5c
	.byte	0x24
	.uleb128 0x8
	.long	.LASF34
	.byte	0xa
	.byte	0xe3
	.long	0xc5c
	.byte	0x25
	.byte	0
	.uleb128 0x12
	.long	.LASF35
	.byte	0x9
	.value	0x7db
	.long	0x211
	.uleb128 0x7
	.long	.LASF36
	.byte	0x70
	.byte	0xa
	.byte	0xfd
	.long	0x2ff
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xfe
	.long	0xd8b
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xfe
	.long	0xd8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xfe
	.long	0xe0f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xfe
	.long	0xdf9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xfe
	.long	0xc66
	.byte	0x20
	.uleb128 0x8
	.long	.LASF32
	.byte	0xa
	.byte	0xfe
	.long	0xc66
	.byte	0x22
	.uleb128 0x8
	.long	.LASF33
	.byte	0xa
	.byte	0xfe
	.long	0xc5c
	.byte	0x24
	.uleb128 0x8
	.long	.LASF34
	.byte	0xa
	.byte	0xfe
	.long	0xc5c
	.byte	0x25
	.uleb128 0x8
	.long	.LASF37
	.byte	0xa
	.byte	0xff
	.long	0xd8b
	.byte	0x28
	.uleb128 0x14
	.long	.LASF38
	.byte	0xa
	.value	0x100
	.long	0xd8b
	.byte	0x30
	.uleb128 0x14
	.long	.LASF39
	.byte	0xa
	.value	0x101
	.long	0xd8b
	.byte	0x38
	.uleb128 0x14
	.long	.LASF40
	.byte	0xa
	.value	0x102
	.long	0xd8b
	.byte	0x40
	.uleb128 0x14
	.long	.LASF41
	.byte	0xa
	.value	0x103
	.long	0xe15
	.byte	0x48
	.uleb128 0x14
	.long	.LASF42
	.byte	0xa
	.value	0x107
	.long	0xe1b
	.byte	0x50
	.uleb128 0x14
	.long	.LASF43
	.byte	0xa
	.value	0x109
	.long	0xc7c
	.byte	0x58
	.uleb128 0x14
	.long	.LASF44
	.byte	0xa
	.value	0x10a
	.long	0xc7c
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF45
	.byte	0xa
	.value	0x10b
	.long	0xc5c
	.byte	0x60
	.uleb128 0x14
	.long	.LASF46
	.byte	0xa
	.value	0x10f
	.long	0xd73
	.byte	0x68
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x9
	.value	0x7e1
	.long	0x30b
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.byte	0x9
	.value	0xea7
	.long	0x326
	.uleb128 0x14
	.long	.LASF49
	.byte	0x9
	.value	0xea8
	.long	0x95
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"SV"
	.byte	0x9
	.value	0x7ea
	.long	0x331
	.uleb128 0x13
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x361
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x44
	.long	0x82
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x45
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x46
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"AV"
	.byte	0x9
	.value	0x7eb
	.long	0x36c
	.uleb128 0x13
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x39c
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x56
	.long	0xd5b
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x57
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x58
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"HV"
	.byte	0x9
	.value	0x7ec
	.long	0x3a7
	.uleb128 0x13
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x3d7
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x5c
	.long	0xd61
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x5d
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x5e
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"CV"
	.byte	0x9
	.value	0x7ed
	.long	0x3e2
	.uleb128 0x13
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x412
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x50
	.long	0xd55
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x51
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x52
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x9
	.value	0x7ee
	.long	0x41e
	.uleb128 0x7
	.long	.LASF54
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x4f7
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0x20
	.long	0xd17
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0x21
	.long	0xd17
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x22
	.long	0xd1d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x23
	.long	0xd28
	.byte	0x18
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x24
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x25
	.long	0xd33
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x26
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0xc
	.byte	0x28
	.long	0xd39
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0xc
	.byte	0x29
	.long	0xc71
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0xc
	.byte	0x2a
	.long	0xc71
	.byte	0x44
	.uleb128 0x8
	.long	.LASF65
	.byte	0xc
	.byte	0x2b
	.long	0xc71
	.byte	0x48
	.uleb128 0x8
	.long	.LASF66
	.byte	0xc
	.byte	0x2c
	.long	0xc71
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF67
	.byte	0xc
	.byte	0x2d
	.long	0xc7c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF68
	.byte	0xc
	.byte	0x2e
	.long	0xc7c
	.byte	0x54
	.uleb128 0x8
	.long	.LASF69
	.byte	0xc
	.byte	0x2f
	.long	0xc7c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF70
	.byte	0xc
	.byte	0x30
	.long	0xc7c
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF71
	.byte	0xc
	.byte	0x32
	.long	0xd3f
	.byte	0x60
	.byte	0
	.uleb128 0x11
	.string	"GP"
	.byte	0x9
	.value	0x7ef
	.long	0x502
	.uleb128 0x13
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x59e
	.uleb128 0x8
	.long	.LASF72
	.byte	0xd
	.byte	0xc
	.long	0xca4
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0xd
	.byte	0xd
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF74
	.byte	0xd
	.byte	0xe
	.long	0xde8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF75
	.byte	0xd
	.byte	0xf
	.long	0xd9c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF76
	.byte	0xd
	.byte	0x10
	.long	0xdae
	.byte	0x20
	.uleb128 0x8
	.long	.LASF77
	.byte	0xd
	.byte	0x11
	.long	0xd73
	.byte	0x28
	.uleb128 0x8
	.long	.LASF78
	.byte	0xd
	.byte	0x12
	.long	0xda8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF79
	.byte	0xd
	.byte	0x13
	.long	0xd9c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF80
	.byte	0xd
	.byte	0x14
	.long	0xc7c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF81
	.byte	0xd
	.byte	0x15
	.long	0xc7c
	.byte	0x44
	.uleb128 0x8
	.long	.LASF82
	.byte	0xd
	.byte	0x16
	.long	0xc87
	.byte	0x48
	.uleb128 0x8
	.long	.LASF83
	.byte	0xd
	.byte	0x17
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.string	"GV"
	.byte	0x9
	.value	0x7f0
	.long	0x5a9
	.uleb128 0x13
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x5d9
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x4a
	.long	0xd4f
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x4b
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x4c
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x609
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x62
	.long	0xd67
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x63
	.long	0xc7c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x64
	.long	0xc7c
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x9
	.value	0x7f5
	.long	0x615
	.uleb128 0x7
	.long	.LASF85
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x682
	.uleb128 0x8
	.long	.LASF86
	.byte	0xe
	.byte	0x1b
	.long	0xd6d
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xe
	.byte	0x1c
	.long	0xf26
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0x1d
	.long	0xc66
	.byte	0x10
	.uleb128 0x8
	.long	.LASF89
	.byte	0xe
	.byte	0x1e
	.long	0x95
	.byte	0x12
	.uleb128 0x8
	.long	.LASF90
	.byte	0xe
	.byte	0x1f
	.long	0xc5c
	.byte	0x13
	.uleb128 0x8
	.long	.LASF91
	.byte	0xe
	.byte	0x20
	.long	0xca4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF92
	.byte	0xe
	.byte	0x21
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF93
	.byte	0xe
	.byte	0x22
	.long	0xc71
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.string	"XPV"
	.byte	0x9
	.value	0x7f7
	.long	0x68e
	.uleb128 0x13
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x6bf
	.uleb128 0x8
	.long	.LASF94
	.byte	0xb
	.byte	0xfa
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0xb
	.byte	0xfb
	.long	0x182
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0xb
	.byte	0xfc
	.long	0x182
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF97
	.byte	0x9
	.value	0x7fa
	.long	0x6cb
	.uleb128 0x15
	.long	.LASF98
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0x71a
	.uleb128 0x14
	.long	.LASF94
	.byte	0xb
	.value	0x10e
	.long	0x8f
	.byte	0
	.uleb128 0x14
	.long	.LASF95
	.byte	0xb
	.value	0x10f
	.long	0x182
	.byte	0x8
	.uleb128 0x14
	.long	.LASF96
	.byte	0xb
	.value	0x110
	.long	0x182
	.byte	0x10
	.uleb128 0x14
	.long	.LASF99
	.byte	0xb
	.value	0x111
	.long	0x15a
	.byte	0x18
	.uleb128 0x14
	.long	.LASF100
	.byte	0xb
	.value	0x112
	.long	0x170
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.value	0x7fd
	.long	0x726
	.uleb128 0x7
	.long	.LASF102
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0x7ab
	.uleb128 0x8
	.long	.LASF103
	.byte	0xf
	.byte	0xc
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF104
	.byte	0xf
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF105
	.byte	0xf
	.byte	0xe
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF106
	.byte	0xf
	.byte	0xf
	.long	0x15a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0xf
	.byte	0x10
	.long	0x170
	.byte	0x20
	.uleb128 0x8
	.long	.LASF107
	.byte	0xf
	.byte	0x11
	.long	0xd6d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF108
	.byte	0xf
	.byte	0x12
	.long	0xd73
	.byte	0x30
	.uleb128 0x8
	.long	.LASF109
	.byte	0xf
	.byte	0x14
	.long	0xe21
	.byte	0x38
	.uleb128 0x8
	.long	.LASF110
	.byte	0xf
	.byte	0x15
	.long	0xca4
	.byte	0x40
	.uleb128 0x8
	.long	.LASF111
	.byte	0xf
	.byte	0x16
	.long	0xc5c
	.byte	0x48
	.byte	0
	.uleb128 0x12
	.long	.LASF112
	.byte	0x9
	.value	0x7fe
	.long	0x7b7
	.uleb128 0x7
	.long	.LASF113
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0x848
	.uleb128 0x8
	.long	.LASF114
	.byte	0x10
	.byte	0x23
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x10
	.byte	0x24
	.long	0x182
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x10
	.byte	0x25
	.long	0x182
	.byte	0x10
	.uleb128 0x8
	.long	.LASF117
	.byte	0x10
	.byte	0x26
	.long	0x15a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0x10
	.byte	0x27
	.long	0x170
	.byte	0x20
	.uleb128 0x8
	.long	.LASF107
	.byte	0x10
	.byte	0x29
	.long	0xd6d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF108
	.byte	0x10
	.byte	0x2a
	.long	0xd73
	.byte	0x30
	.uleb128 0x8
	.long	.LASF118
	.byte	0x10
	.byte	0x2c
	.long	0xc71
	.byte	0x38
	.uleb128 0x8
	.long	.LASF119
	.byte	0x10
	.byte	0x2d
	.long	0xe9d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF120
	.byte	0x10
	.byte	0x2e
	.long	0xe15
	.byte	0x48
	.uleb128 0x8
	.long	.LASF121
	.byte	0x10
	.byte	0x2f
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.long	.LASF122
	.byte	0x9
	.value	0x7ff
	.long	0x854
	.uleb128 0x15
	.long	.LASF123
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0x8fe
	.uleb128 0x14
	.long	.LASF94
	.byte	0xb
	.value	0x131
	.long	0x8f
	.byte	0
	.uleb128 0x14
	.long	.LASF95
	.byte	0xb
	.value	0x132
	.long	0x182
	.byte	0x8
	.uleb128 0x14
	.long	.LASF96
	.byte	0xb
	.value	0x133
	.long	0x182
	.byte	0x10
	.uleb128 0x14
	.long	.LASF99
	.byte	0xb
	.value	0x134
	.long	0x15a
	.byte	0x18
	.uleb128 0x14
	.long	.LASF100
	.byte	0xb
	.value	0x135
	.long	0x170
	.byte	0x20
	.uleb128 0x14
	.long	.LASF107
	.byte	0xb
	.value	0x136
	.long	0xd6d
	.byte	0x28
	.uleb128 0x14
	.long	.LASF108
	.byte	0xb
	.value	0x137
	.long	0xd73
	.byte	0x30
	.uleb128 0x14
	.long	.LASF124
	.byte	0xb
	.value	0x139
	.long	0xd79
	.byte	0x38
	.uleb128 0x14
	.long	.LASF125
	.byte	0xb
	.value	0x13a
	.long	0x8f
	.byte	0x40
	.uleb128 0x14
	.long	.LASF126
	.byte	0xb
	.value	0x13b
	.long	0x182
	.byte	0x48
	.uleb128 0x14
	.long	.LASF127
	.byte	0xb
	.value	0x13c
	.long	0xd73
	.byte	0x50
	.uleb128 0x14
	.long	.LASF128
	.byte	0xb
	.value	0x13d
	.long	0xc5c
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.long	.LASF129
	.byte	0x9
	.value	0x800
	.long	0x90a
	.uleb128 0x7
	.long	.LASF130
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0x9fb
	.uleb128 0x8
	.long	.LASF94
	.byte	0x11
	.byte	0xf
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0x11
	.byte	0x10
	.long	0x182
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0x11
	.byte	0x11
	.long	0x182
	.byte	0x10
	.uleb128 0x8
	.long	.LASF106
	.byte	0x11
	.byte	0x12
	.long	0x15a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0x11
	.byte	0x13
	.long	0x170
	.byte	0x20
	.uleb128 0x8
	.long	.LASF107
	.byte	0x11
	.byte	0x14
	.long	0xd6d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF108
	.byte	0x11
	.byte	0x15
	.long	0xd73
	.byte	0x30
	.uleb128 0x8
	.long	.LASF131
	.byte	0x11
	.byte	0x17
	.long	0xd73
	.byte	0x38
	.uleb128 0x8
	.long	.LASF132
	.byte	0x11
	.byte	0x18
	.long	0xd8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF133
	.byte	0x11
	.byte	0x19
	.long	0xd8b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF134
	.byte	0x11
	.byte	0x1a
	.long	0xda2
	.byte	0x50
	.uleb128 0x8
	.long	.LASF135
	.byte	0x11
	.byte	0x1b
	.long	0xbad
	.byte	0x58
	.uleb128 0x8
	.long	.LASF136
	.byte	0x11
	.byte	0x1c
	.long	0xda8
	.byte	0x60
	.uleb128 0x8
	.long	.LASF137
	.byte	0x11
	.byte	0x1d
	.long	0x8f
	.byte	0x68
	.uleb128 0x8
	.long	.LASF138
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF139
	.byte	0x11
	.byte	0x1f
	.long	0xe04
	.byte	0x78
	.uleb128 0x8
	.long	.LASF140
	.byte	0x11
	.byte	0x20
	.long	0xd9c
	.byte	0x80
	.uleb128 0x8
	.long	.LASF141
	.byte	0x11
	.byte	0x25
	.long	0xd7f
	.byte	0x88
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x26
	.long	0xc7c
	.byte	0x8c
	.byte	0
	.uleb128 0x12
	.long	.LASF143
	.byte	0x9
	.value	0x803
	.long	0xa07
	.uleb128 0x15
	.long	.LASF144
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xb40
	.uleb128 0x14
	.long	.LASF94
	.byte	0xb
	.value	0x171
	.long	0x8f
	.byte	0
	.uleb128 0x14
	.long	.LASF95
	.byte	0xb
	.value	0x172
	.long	0x182
	.byte	0x8
	.uleb128 0x14
	.long	.LASF96
	.byte	0xb
	.value	0x173
	.long	0x182
	.byte	0x10
	.uleb128 0x14
	.long	.LASF99
	.byte	0xb
	.value	0x174
	.long	0x15a
	.byte	0x18
	.uleb128 0x14
	.long	.LASF100
	.byte	0xb
	.value	0x175
	.long	0x170
	.byte	0x20
	.uleb128 0x14
	.long	.LASF107
	.byte	0xb
	.value	0x176
	.long	0xd6d
	.byte	0x28
	.uleb128 0x14
	.long	.LASF108
	.byte	0xb
	.value	0x177
	.long	0xd73
	.byte	0x30
	.uleb128 0x14
	.long	.LASF145
	.byte	0xb
	.value	0x179
	.long	0xddc
	.byte	0x38
	.uleb128 0x14
	.long	.LASF146
	.byte	0xb
	.value	0x17a
	.long	0xddc
	.byte	0x40
	.uleb128 0x14
	.long	.LASF147
	.byte	0xb
	.value	0x187
	.long	0xdb4
	.byte	0x48
	.uleb128 0x14
	.long	.LASF148
	.byte	0xb
	.value	0x188
	.long	0x15a
	.byte	0x50
	.uleb128 0x14
	.long	.LASF149
	.byte	0xb
	.value	0x189
	.long	0x15a
	.byte	0x58
	.uleb128 0x14
	.long	.LASF150
	.byte	0xb
	.value	0x18a
	.long	0x15a
	.byte	0x60
	.uleb128 0x14
	.long	.LASF151
	.byte	0xb
	.value	0x18b
	.long	0x15a
	.byte	0x68
	.uleb128 0x14
	.long	.LASF152
	.byte	0xb
	.value	0x18c
	.long	0x8f
	.byte	0x70
	.uleb128 0x14
	.long	.LASF153
	.byte	0xb
	.value	0x18d
	.long	0xda8
	.byte	0x78
	.uleb128 0x14
	.long	.LASF154
	.byte	0xb
	.value	0x18e
	.long	0x8f
	.byte	0x80
	.uleb128 0x14
	.long	.LASF155
	.byte	0xb
	.value	0x18f
	.long	0xda8
	.byte	0x88
	.uleb128 0x14
	.long	.LASF156
	.byte	0xb
	.value	0x190
	.long	0x8f
	.byte	0x90
	.uleb128 0x14
	.long	.LASF157
	.byte	0xb
	.value	0x191
	.long	0xda8
	.byte	0x98
	.uleb128 0x14
	.long	.LASF158
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF159
	.byte	0xb
	.value	0x193
	.long	0x95
	.byte	0xa2
	.uleb128 0x14
	.long	.LASF160
	.byte	0xb
	.value	0x194
	.long	0x95
	.byte	0xa3
	.byte	0
	.uleb128 0x12
	.long	.LASF161
	.byte	0x9
	.value	0x804
	.long	0xb4c
	.uleb128 0x7
	.long	.LASF162
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xbad
	.uleb128 0x8
	.long	.LASF163
	.byte	0xe
	.byte	0xf
	.long	0xebd
	.byte	0
	.uleb128 0x8
	.long	.LASF164
	.byte	0xe
	.byte	0x10
	.long	0xebd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF165
	.byte	0xe
	.byte	0x11
	.long	0xed7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF166
	.byte	0xe
	.byte	0x12
	.long	0xebd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF167
	.byte	0xe
	.byte	0x13
	.long	0xebd
	.byte	0x20
	.uleb128 0x8
	.long	.LASF168
	.byte	0xe
	.byte	0x14
	.long	0xf00
	.byte	0x28
	.uleb128 0x8
	.long	.LASF169
	.byte	0xe
	.byte	0x16
	.long	0xf20
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.string	"ANY"
	.byte	0x9
	.value	0x805
	.long	0xbb9
	.uleb128 0x16
	.string	"any"
	.byte	0x8
	.byte	0x9
	.value	0x9f1
	.long	0xc1b
	.uleb128 0x17
	.long	.LASF170
	.byte	0x9
	.value	0x9f2
	.long	0x82
	.uleb128 0x17
	.long	.LASF171
	.byte	0x9
	.value	0x9f3
	.long	0xc71
	.uleb128 0x17
	.long	.LASF172
	.byte	0x9
	.value	0x9f4
	.long	0x15a
	.uleb128 0x17
	.long	.LASF173
	.byte	0x9
	.value	0x9f5
	.long	0x5e
	.uleb128 0x17
	.long	.LASF174
	.byte	0x9
	.value	0x9f6
	.long	0x95
	.uleb128 0x17
	.long	.LASF175
	.byte	0x9
	.value	0x9f7
	.long	0xc9e
	.uleb128 0x17
	.long	.LASF176
	.byte	0x9
	.value	0x9f8
	.long	0xc9e
	.byte	0
	.uleb128 0x12
	.long	.LASF177
	.byte	0x9
	.value	0x808
	.long	0xc27
	.uleb128 0x15
	.long	.LASF178
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0xc5c
	.uleb128 0x14
	.long	.LASF179
	.byte	0xb
	.value	0x4ee
	.long	0xdae
	.byte	0
	.uleb128 0x14
	.long	.LASF180
	.byte	0xb
	.value	0x4ef
	.long	0x165
	.byte	0x8
	.uleb128 0x14
	.long	.LASF181
	.byte	0xb
	.value	0x4f0
	.long	0xde2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0xf
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0xf
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0xf
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0x12
	.long	.LASF182
	.byte	0x12
	.value	0x209
	.long	0xc7c
	.uleb128 0x18
	.long	0xc9e
	.uleb128 0x19
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc93
	.uleb128 0x6
	.byte	0x8
	.long	0x326
	.uleb128 0xa
	.long	0x95
	.long	0xcba
	.uleb128 0xb
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF183
	.byte	0x13
	.byte	0x63
	.long	0xcc5
	.uleb128 0x10
	.long	.LASF185
	.uleb128 0x4
	.long	.LASF186
	.byte	0x13
	.byte	0x65
	.long	0xcd5
	.uleb128 0x6
	.byte	0x8
	.long	0xcba
	.uleb128 0x7
	.long	.LASF187
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0xd0c
	.uleb128 0x8
	.long	.LASF180
	.byte	0xc
	.byte	0x14
	.long	0xc5c
	.byte	0
	.uleb128 0x8
	.long	.LASF188
	.byte	0xc
	.byte	0x15
	.long	0xc5c
	.byte	0x1
	.uleb128 0x8
	.long	.LASF189
	.byte	0xc
	.byte	0x16
	.long	0xc66
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF187
	.byte	0xc
	.byte	0x19
	.long	0xcdb
	.uleb128 0x6
	.byte	0x8
	.long	0xc71
	.uleb128 0x6
	.byte	0x8
	.long	0xd0c
	.uleb128 0x10
	.long	.LASF190
	.uleb128 0x6
	.byte	0x8
	.long	0xd23
	.uleb128 0x10
	.long	.LASF191
	.uleb128 0x6
	.byte	0x8
	.long	0xd2e
	.uleb128 0x6
	.byte	0x8
	.long	0xc7c
	.uleb128 0xa
	.long	0xd0c
	.long	0xd4f
	.uleb128 0xb
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x848
	.uleb128 0x6
	.byte	0x8
	.long	0x8fe
	.uleb128 0x6
	.byte	0x8
	.long	0x71a
	.uleb128 0x6
	.byte	0x8
	.long	0x7ab
	.uleb128 0x6
	.byte	0x8
	.long	0x9fb
	.uleb128 0x6
	.byte	0x8
	.long	0x609
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x6
	.byte	0x8
	.long	0x4f7
	.uleb128 0x12
	.long	.LASF192
	.byte	0xb
	.value	0x150
	.long	0xc66
	.uleb128 0x6
	.byte	0x8
	.long	0x18e
	.uleb128 0x18
	.long	0xd9c
	.uleb128 0x19
	.long	0xd9c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d7
	.uleb128 0x6
	.byte	0x8
	.long	0xd91
	.uleb128 0x6
	.byte	0x8
	.long	0x59e
	.uleb128 0x6
	.byte	0x8
	.long	0x361
	.uleb128 0x1a
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0xdd6
	.uleb128 0x17
	.long	.LASF193
	.byte	0xb
	.value	0x185
	.long	0xdd6
	.uleb128 0x17
	.long	.LASF194
	.byte	0xb
	.value	0x186
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14a
	.uleb128 0x6
	.byte	0x8
	.long	0xcca
	.uleb128 0x6
	.byte	0x8
	.long	0x2ff
	.uleb128 0x6
	.byte	0x8
	.long	0x5d9
	.uleb128 0x4
	.long	.LASF195
	.byte	0x14
	.byte	0x13
	.long	0x361
	.uleb128 0x4
	.long	.LASF196
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xdee
	.uleb128 0x1b
	.long	0xd8b
	.uleb128 0x6
	.byte	0x8
	.long	0xe0a
	.uleb128 0x6
	.byte	0x8
	.long	0x205
	.uleb128 0x6
	.byte	0x8
	.long	0x412
	.uleb128 0x6
	.byte	0x8
	.long	0xca4
	.uleb128 0xf
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0xe31
	.uleb128 0x13
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0xe61
	.uleb128 0x8
	.long	.LASF197
	.byte	0x10
	.byte	0x11
	.long	0xe9d
	.byte	0
	.uleb128 0x8
	.long	.LASF198
	.byte	0x10
	.byte	0x12
	.long	0xea3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF199
	.byte	0x10
	.byte	0x13
	.long	0xca4
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0xe6c
	.uleb128 0x13
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0xe9d
	.uleb128 0x8
	.long	.LASF200
	.byte	0x10
	.byte	0x18
	.long	0xc7c
	.byte	0
	.uleb128 0x8
	.long	.LASF201
	.byte	0x10
	.byte	0x19
	.long	0xc71
	.byte	0x4
	.uleb128 0x8
	.long	.LASF202
	.byte	0x10
	.byte	0x1a
	.long	0xcaa
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe27
	.uleb128 0x6
	.byte	0x8
	.long	0xe61
	.uleb128 0x1c
	.long	0x57
	.long	0xebd
	.uleb128 0x19
	.long	0xca4
	.uleb128 0x19
	.long	0xd6d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xea9
	.uleb128 0x1c
	.long	0xc7c
	.long	0xed7
	.uleb128 0x19
	.long	0xca4
	.uleb128 0x19
	.long	0xd6d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec3
	.uleb128 0x1c
	.long	0x57
	.long	0xf00
	.uleb128 0x19
	.long	0xca4
	.uleb128 0x19
	.long	0xd6d
	.uleb128 0x19
	.long	0xca4
	.uleb128 0x19
	.long	0x120
	.uleb128 0x19
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xedd
	.uleb128 0x1c
	.long	0x57
	.long	0xf1a
	.uleb128 0x19
	.long	0xd6d
	.uleb128 0x19
	.long	0xf1a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc1b
	.uleb128 0x6
	.byte	0x8
	.long	0xf06
	.uleb128 0x6
	.byte	0x8
	.long	0xb40
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF203
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x1
	.byte	0x18
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf71
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.byte	0x18
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0x18
	.long	0xf71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15a
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x1
	.byte	0x5b
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc3
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.byte	0x5b
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x5b
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0x5b
	.long	0xf71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF211
	.byte	0x2
	.value	0x182
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xfff
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.value	0x182
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"tv"
	.byte	0x2
	.value	0x184
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF209
	.byte	0x2
	.value	0x273
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x104e
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x273
	.long	0x104e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"Tp"
	.byte	0x2
	.value	0x275
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x276
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x165
	.uleb128 0x26
	.long	.LASF238
	.byte	0x2
	.value	0x27e
	.long	0x170
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1094
	.uleb128 0x22
	.string	"Tp"
	.byte	0x2
	.value	0x283
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x284
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF212
	.byte	0x2
	.value	0x2a0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1166
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x2a0
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x2a2
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x2a2
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x2a2
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x2a2
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.long	.LASF215
	.byte	0x2
	.value	0x2a9
	.long	0xca4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x2ad
	.long	0x182
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF188
	.byte	0x2
	.value	0x2ae
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"iv"
	.byte	0x2
	.value	0x2af
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x2
	.value	0x2b3
	.long	0xca4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x2b4
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF216
	.byte	0x2
	.value	0x30a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1274
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x30a
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x30c
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x30c
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x30c
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x30c
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1251
	.uleb128 0x25
	.long	.LASF217
	.byte	0x2
	.value	0x310
	.long	0x170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"Ta"
	.byte	0x2
	.value	0x312
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"Tb"
	.byte	0x2
	.value	0x312
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF218
	.byte	0x2
	.value	0x314
	.long	0x170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF215
	.byte	0x2
	.value	0x315
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.long	.LASF219
	.byte	0x2
	.value	0x31a
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x25
	.long	.LASF220
	.byte	0x2
	.value	0x330
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF221
	.byte	0x2
	.value	0x35f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1394
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x35f
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x361
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x361
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x361
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x361
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1371
	.uleb128 0x22
	.string	"Ta"
	.byte	0x2
	.value	0x364
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"Tb"
	.byte	0x2
	.value	0x364
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF218
	.byte	0x2
	.value	0x366
	.long	0x170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF215
	.byte	0x2
	.value	0x367
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.long	.LASF219
	.byte	0x2
	.value	0x36b
	.long	0x170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF217
	.byte	0x2
	.value	0x36d
	.long	0x165
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.long	.LASF220
	.byte	0x2
	.value	0x38b
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF222
	.byte	0x2
	.value	0x40d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1429
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x40d
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x40f
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x40f
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x40f
	.long	0xc71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x40f
	.long	0xc71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x22
	.string	"Tp"
	.byte	0x2
	.value	0x416
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x419
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF223
	.byte	0x2
	.value	0x42a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1505
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x42a
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x42c
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x42c
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x42c
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x42c
	.long	0xc71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x14e3
	.uleb128 0x22
	.string	"Tp"
	.byte	0x2
	.value	0x431
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF218
	.byte	0x2
	.value	0x433
	.long	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF215
	.byte	0x2
	.value	0x434
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x436
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.long	.LASF220
	.byte	0x2
	.value	0x43c
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF224
	.byte	0x2
	.value	0x491
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x159b
	.uleb128 0x24
	.string	"cv"
	.byte	0x2
	.value	0x491
	.long	0xd9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x2
	.value	0x493
	.long	0xe21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF213
	.byte	0x2
	.value	0x493
	.long	0xe21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x2
	.value	0x493
	.long	0xc71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x493
	.long	0xc71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF225
	.byte	0x2
	.value	0x494
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.long	.LASF220
	.byte	0x2
	.value	0x4d9
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF226
	.byte	0x15
	.value	0x125
	.long	0x326
	.uleb128 0x29
	.long	.LASF227
	.byte	0x15
	.value	0x127
	.long	0x326
	.uleb128 0x2a
	.long	.LASF228
	.byte	0x16
	.byte	0x22
	.long	0xe21
	.uleb128 0x2a
	.long	.LASF229
	.byte	0x16
	.byte	0x26
	.long	0xd8b
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x16
	.byte	0x28
	.long	0xe21
	.uleb128 0x2a
	.long	.LASF231
	.byte	0x16
	.byte	0x2a
	.long	0xe21
	.uleb128 0x2a
	.long	.LASF232
	.byte	0x16
	.byte	0x2b
	.long	0xe21
	.uleb128 0x2a
	.long	.LASF233
	.byte	0x16
	.byte	0x3c
	.long	0xd17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF150:
	.string	"xio_page_len"
.LASF156:
	.string	"xio_bottom_name"
.LASF72:
	.string	"gp_sv"
.LASF183:
	.string	"PerlIOl"
.LASF204:
	.string	"name"
.LASF236:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF129:
	.string	"XPVCV"
.LASF232:
	.string	"PL_stack_max"
.LASF237:
	.string	"__itimer_which"
.LASF159:
	.string	"xio_type"
.LASF130:
	.string	"xpvcv"
.LASF90:
	.string	"mg_flags"
.LASF30:
	.string	"op_targ"
.LASF180:
	.string	"flags"
.LASF21:
	.string	"ITIMER_REAL"
.LASF115:
	.string	"xhv_fill"
.LASF16:
	.string	"__fd_mask"
.LASF83:
	.string	"gp_file"
.LASF160:
	.string	"xio_flags"
.LASF224:
	.string	"boot_Time__HiRes"
.LASF193:
	.string	"xiou_dirp"
.LASF187:
	.string	"regnode"
.LASF174:
	.string	"any_bool"
.LASF42:
	.string	"op_pmregexp"
.LASF195:
	.string	"PADLIST"
.LASF59:
	.string	"precomp"
.LASF111:
	.string	"xav_flags"
.LASF127:
	.string	"xgv_stash"
.LASF56:
	.string	"endp"
.LASF97:
	.string	"XPVNV"
.LASF12:
	.string	"ssize_t"
.LASF221:
	.string	"XS_Time__HiRes_sleep"
.LASF185:
	.string	"_PerlIO"
.LASF134:
	.string	"xcv_xsub"
.LASF86:
	.string	"mg_moremagic"
.LASF79:
	.string	"gp_cv"
.LASF105:
	.string	"xav_max"
.LASF186:
	.string	"PerlIO"
.LASF206:
	.string	"constant_11"
.LASF203:
	.string	"float"
.LASF117:
	.string	"xhv_keys"
.LASF58:
	.string	"substrs"
.LASF220:
	.string	"tmpXSoff"
.LASF162:
	.string	"mgvtbl"
.LASF137:
	.string	"xcv_file"
.LASF136:
	.string	"xcv_gv"
.LASF19:
	.string	"long long unsigned int"
.LASF225:
	.string	"file"
.LASF53:
	.string	"REGEXP"
.LASF191:
	.string	"reg_data"
.LASF178:
	.string	"clone_params"
.LASF190:
	.string	"reg_substr_data"
.LASF88:
	.string	"mg_private"
.LASF99:
	.string	"xiv_iv"
.LASF128:
	.string	"xgv_flags"
.LASF148:
	.string	"xio_lines"
.LASF48:
	.string	"interpreter"
.LASF77:
	.string	"gp_hv"
.LASF94:
	.string	"xpv_pv"
.LASF122:
	.string	"XPVGV"
.LASF208:
	.string	"usec"
.LASF26:
	.string	"timeval"
.LASF34:
	.string	"op_private"
.LASF200:
	.string	"hek_hash"
.LASF223:
	.string	"XS_Time__HiRes_time"
.LASF222:
	.string	"XS_Time__HiRes_gettimeofday"
.LASF176:
	.string	"any_dxptr"
.LASF123:
	.string	"xpvgv"
.LASF17:
	.string	"__fds_bits"
.LASF182:
	.string	"line_t"
.LASF13:
	.string	"size_t"
.LASF93:
	.string	"mg_len"
.LASF91:
	.string	"mg_obj"
.LASF138:
	.string	"xcv_depth"
.LASF29:
	.string	"op_ppaddr"
.LASF155:
	.string	"xio_fmt_gv"
.LASF230:
	.string	"PL_curpad"
.LASF202:
	.string	"hek_key"
.LASF71:
	.string	"program"
.LASF74:
	.string	"gp_io"
.LASF120:
	.string	"xhv_pmroot"
.LASF15:
	.string	"tv_usec"
.LASF112:
	.string	"XPVHV"
.LASF166:
	.string	"svt_clear"
.LASF147:
	.string	"xio_dirpu"
.LASF113:
	.string	"xpvhv"
.LASF217:
	.string	"useconds"
.LASF39:
	.string	"op_pmreplroot"
.LASF45:
	.string	"op_pmdynflags"
.LASF168:
	.string	"svt_copy"
.LASF38:
	.string	"op_last"
.LASF96:
	.string	"xpv_len"
.LASF11:
	.string	"char"
.LASF143:
	.string	"XPVIO"
.LASF172:
	.string	"any_iv"
.LASF179:
	.string	"stashes"
.LASF66:
	.string	"prelen"
.LASF73:
	.string	"gp_refcnt"
.LASF68:
	.string	"lastparen"
.LASF144:
	.string	"xpvio"
.LASF209:
	.string	"myU2time"
.LASF60:
	.string	"data"
.LASF31:
	.string	"op_type"
.LASF231:
	.string	"PL_stack_base"
.LASF226:
	.string	"PL_sv_undef"
.LASF63:
	.string	"sublen"
.LASF212:
	.string	"XS_Time__HiRes_constant"
.LASF198:
	.string	"hent_hek"
.LASF70:
	.string	"reganch"
.LASF215:
	.string	"targ"
.LASF61:
	.string	"subbeg"
.LASF28:
	.string	"op_sibling"
.LASF181:
	.string	"proto_perl"
.LASF85:
	.string	"magic"
.LASF197:
	.string	"hent_next"
.LASF20:
	.string	"long long int"
.LASF114:
	.string	"xhv_array"
.LASF152:
	.string	"xio_top_name"
.LASF69:
	.string	"lastcloseparen"
.LASF213:
	.string	"mark"
.LASF189:
	.string	"next_off"
.LASF207:
	.string	"constant"
.LASF87:
	.string	"mg_virtual"
.LASF35:
	.string	"PMOP"
.LASF25:
	.string	"STRLEN"
.LASF211:
	.string	"hrt_usleep"
.LASF18:
	.string	"fd_set"
.LASF121:
	.string	"xhv_name"
.LASF92:
	.string	"mg_ptr"
.LASF227:
	.string	"PL_sv_yes"
.LASF151:
	.string	"xio_lines_left"
.LASF145:
	.string	"xio_ifp"
.LASF49:
	.string	"broiled"
.LASF27:
	.string	"op_next"
.LASF78:
	.string	"gp_egv"
.LASF55:
	.string	"startp"
.LASF214:
	.string	"items"
.LASF50:
	.string	"sv_any"
.LASF46:
	.string	"op_pmstash"
.LASF149:
	.string	"xio_page"
.LASF194:
	.string	"xiou_any"
.LASF238:
	.string	"myNVtime"
.LASF40:
	.string	"op_pmreplstart"
.LASF84:
	.string	"MAGIC"
.LASF165:
	.string	"svt_len"
.LASF234:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF219:
	.string	"seconds"
.LASF52:
	.string	"sv_flags"
.LASF47:
	.string	"PerlInterpreter"
.LASF235:
	.string	"HiRes.c"
.LASF109:
	.string	"xav_alloc"
.LASF119:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"gp_form"
.LASF37:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF132:
	.string	"xcv_start"
.LASF142:
	.string	"xcv_outside_seq"
.LASF103:
	.string	"xav_array"
.LASF158:
	.string	"xio_subprocess"
.LASF210:
	.string	"status"
.LASF62:
	.string	"offsets"
.LASF106:
	.string	"xof_off"
.LASF201:
	.string	"hek_len"
.LASF161:
	.string	"MGVTBL"
.LASF24:
	.string	"double"
.LASF64:
	.string	"refcnt"
.LASF205:
	.string	"iv_return"
.LASF110:
	.string	"xav_arylen"
.LASF131:
	.string	"xcv_stash"
.LASF126:
	.string	"xgv_namelen"
.LASF10:
	.string	"__ssize_t"
.LASF133:
	.string	"xcv_root"
.LASF54:
	.string	"regexp"
.LASF199:
	.string	"hent_val"
.LASF140:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF43:
	.string	"op_pmflags"
.LASF116:
	.string	"xhv_max"
.LASF139:
	.string	"xcv_padlist"
.LASF107:
	.string	"xmg_magic"
.LASF98:
	.string	"xpvnv"
.LASF14:
	.string	"tv_sec"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF171:
	.string	"any_i32"
.LASF164:
	.string	"svt_set"
.LASF177:
	.string	"CLONE_PARAMS"
.LASF154:
	.string	"xio_fmt_name"
.LASF32:
	.string	"op_seq"
.LASF184:
	.string	"__dirstream"
.LASF173:
	.string	"any_long"
.LASF36:
	.string	"pmop"
.LASF104:
	.string	"xav_fill"
.LASF188:
	.string	"type"
.LASF22:
	.string	"ITIMER_VIRTUAL"
.LASF0:
	.string	"unsigned char"
.LASF118:
	.string	"xhv_riter"
.LASF124:
	.string	"xgv_gp"
.LASF41:
	.string	"op_pmnext"
.LASF51:
	.string	"sv_refcnt"
.LASF100:
	.string	"xnv_nv"
.LASF9:
	.string	"__suseconds_t"
.LASF8:
	.string	"__time_t"
.LASF141:
	.string	"xcv_flags"
.LASF81:
	.string	"gp_flags"
.LASF33:
	.string	"op_flags"
.LASF89:
	.string	"mg_type"
.LASF169:
	.string	"svt_dup"
.LASF157:
	.string	"xio_bottom_gv"
.LASF216:
	.string	"XS_Time__HiRes_usleep"
.LASF163:
	.string	"svt_get"
.LASF170:
	.string	"any_ptr"
.LASF101:
	.string	"XPVAV"
.LASF167:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF196:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"op_pmpermflags"
.LASF102:
	.string	"xpvav"
.LASF108:
	.string	"xmg_stash"
.LASF76:
	.string	"gp_av"
.LASF80:
	.string	"gp_cvgen"
.LASF82:
	.string	"gp_line"
.LASF65:
	.string	"minlen"
.LASF135:
	.string	"xcv_xsubany"
.LASF192:
	.string	"cv_flags_t"
.LASF146:
	.string	"xio_ofp"
.LASF95:
	.string	"xpv_cur"
.LASF233:
	.string	"PL_markstack_ptr"
.LASF57:
	.string	"regstclass"
.LASF153:
	.string	"xio_top_gv"
.LASF23:
	.string	"ITIMER_PROF"
.LASF67:
	.string	"nparens"
.LASF218:
	.string	"RETVAL"
.LASF228:
	.string	"PL_stack_sp"
.LASF175:
	.string	"any_dptr"
.LASF229:
	.string	"PL_op"
.LASF125:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
