	.file	"IO.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 IO.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
.LC0:
	.string	"%s not implemented on this architecture"
	.text
	.type	not_here, @function
not_here:
.LFB2:
	.file 1 "IO.c"
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 64 0
	movq	-8(%rbp), %rax	# s, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 65 0
	movl	$-1, %eax	#, D.11625
	.loc 1 66 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	not_here, .-not_here
	.type	io_blocking, @function
io_blocking:
.LFB3:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# block, block
	.loc 1 78 0
	cmpq	$0, -24(%rbp)	#, f
	jne	.L4	#,
	.loc 1 79 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_5
	.loc 1 80 0
	movl	$-1, %eax	#, D.11627
	jmp	.L5	#
.L4:
	.loc 1 82 0
	movq	-24(%rbp), %rax	# f, tmp66
	movq	%rax, %rdi	# tmp66,
	call	Perl_PerlIO_fileno	#
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movl	%eax, %edi	# D.11627,
	movl	$0, %eax	#,
	call	fcntl	#
	movl	%eax, -16(%rbp)	# tmp67, RETVAL
	.loc 1 83 0
	cmpl	$0, -16(%rbp)	#, RETVAL
	js	.L6	#,
.LBB2:
	.loc 1 84 0
	movl	-16(%rbp), %eax	# RETVAL, tmp68
	movl	%eax, -8(%rbp)	# tmp68, mode
	.loc 1 85 0
	movl	-8(%rbp), %eax	# mode, tmp69
	movl	%eax, -12(%rbp)	# tmp69, newmode
	.loc 1 94 0
	movl	-16(%rbp), %eax	# RETVAL, tmp70
	andl	$2048, %eax	#, D.11627
	testl	%eax, %eax	# D.11627
	sete	%al	#, D.11629
	movzbl	%al, %eax	# D.11629, tmp71
	movl	%eax, -16(%rbp)	# tmp71, RETVAL
	.loc 1 96 0
	cmpl	$0, -28(%rbp)	#, block
	jne	.L7	#,
	.loc 1 97 0
	andl	$-2049, -12(%rbp)	#, newmode
	.loc 1 98 0
	orl	$2048, -12(%rbp)	#, newmode
	jmp	.L8	#
.L7:
	.loc 1 99 0
	cmpl	$0, -28(%rbp)	#, block
	jle	.L8	#,
	.loc 1 100 0
	andl	$-2049, -12(%rbp)	#, newmode
.L8:
	.loc 1 116 0
	movl	-12(%rbp), %eax	# newmode, tmp72
	cmpl	-8(%rbp), %eax	# mode, tmp72
	je	.L6	#,
.LBB3:
	.loc 1 118 0
	movq	-24(%rbp), %rax	# f, tmp73
	movq	%rax, %rdi	# tmp73,
	call	Perl_PerlIO_fileno	#
	movl	-12(%rbp), %edx	# newmode, tmp74
	movl	$4, %esi	#,
	movl	%eax, %edi	# D.11627,
	movl	$0, %eax	#,
	call	fcntl	#
	movl	%eax, -4(%rbp)	# tmp75, ret
	.loc 1 119 0
	cmpl	$0, -4(%rbp)	#, ret
	jns	.L6	#,
	.loc 1 120 0
	movl	-4(%rbp), %eax	# ret, tmp76
	movl	%eax, -16(%rbp)	# tmp76, RETVAL
.L6:
.LBE3:
.LBE2:
	.loc 1 123 0
	movl	-16(%rbp), %eax	# RETVAL, D.11627
.L5:
	.loc 1 127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	io_blocking, .-io_blocking
	.section	.rodata
	.align 8
.LC1:
	.string	"Usage: IO::Seekable::getpos(handle)"
	.text
	.globl	XS_IO__Seekable_getpos
	.type	XS_IO__Seekable_getpos, @function
XS_IO__Seekable_getpos:
.LFB4:
	.loc 1 132 0
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
	.loc 1 133 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.3
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.3, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.2_4, D.11630
	cltq
	salq	$3, %rax	#, D.11631
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.5
	subq	%rax, %rdx	# PL_stack_base.6, D.11632
	movq	%rdx, %rax	# D.11632, D.11632
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.11633
	movl	%eax, -40(%rbp)	# D.11633, ax
	movq	%r12, %rdx	# sp, sp.7
	movq	%rbx, %rax	# mark, mark.8
	subq	%rax, %rdx	# mark.8, D.11632
	movq	%rdx, %rax	# D.11632, D.11632
	sarq	$3, %rax	#, tmp115
	movl	%eax, -36(%rbp)	# D.11632, items
	.loc 1 134 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L10	#,
	.loc 1 135 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L10:
.LBB4:
	.loc 1 137 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.9
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11631
	salq	$3, %rdx	#, D.11631
	addq	%rdx, %rax	# D.11631, D.11634
	movq	(%rax), %rax	# *_26, D.11635
	movq	%rax, %rdi	# D.11635,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _28->sv_any, D.11637
	movq	56(%rax), %rax	# _29->xio_ifp, tmp117
	movq	%rax, -32(%rbp)	# tmp117, handle
	.loc 1 139 0
	cmpq	$0, -32(%rbp)	#, handle
	je	.L11	#,
	.loc 1 141 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.10
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.11631
	salq	$3, %rdx	#, D.11631
	leaq	(%rax,%rdx), %rbx	#, D.11634
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rdi	# D.11635,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11635, *_34
	.loc 1 142 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.11
	movl	-40(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11631
	salq	$3, %rdx	#, D.11631
	addq	%rdx, %rax	# D.11631, D.11634
	movq	(%rax), %rdx	# *_40, D.11635
	movq	-32(%rbp), %rax	# handle, tmp120
	movq	%rdx, %rsi	# D.11635,
	movq	%rax, %rdi	# tmp120,
	call	PerlIO_getpos	#
	testl	%eax, %eax	# D.11630
	je	.L13	#,
	.loc 1 143 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.12
	movl	-40(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.11631
	salq	$3, %rdx	#, D.11631
	addq	%rdx, %rax	# D.11631, D.11634
	movq	$PL_sv_undef, (%rax)	#, *_46
	jmp	.L13	#
.L11:
	.loc 1 154 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.13
	movl	-40(%rbp), %edx	# ax, tmp122
	movslq	%edx, %rdx	# tmp122, D.11631
	salq	$3, %rdx	#, D.11631
	addq	%rdx, %rax	# D.11631, D.11634
	movq	$PL_sv_undef, (%rax)	#, *_50
	.loc 1 155 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_51
.L13:
.LBE4:
.LBB5:
	.loc 1 159 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.14
	movl	-40(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rcx	# tmp123, D.11639
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.15
	addq	%rcx, %rdx	# D.11639, D.11639
	salq	$3, %rdx	#, D.11639
	subq	$8, %rdx	#, D.11639
	addq	%rdx, %rax	# D.11639, PL_stack_sp.16
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.16, PL_stack_sp
	nop
.LBE5:
	.loc 1 160 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	XS_IO__Seekable_getpos, .-XS_IO__Seekable_getpos
	.section	.rodata
	.align 8
.LC2:
	.string	"Usage: IO::Seekable::setpos(handle, pos)"
.LC3:
	.string	"0 but true"
	.text
	.globl	XS_IO__Seekable_setpos
	.type	XS_IO__Seekable_setpos, @function
XS_IO__Seekable_setpos:
.LFB5:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 165 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.17
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.18
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.20
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.20, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.19_5, D.11641
	cltq
	salq	$3, %rax	#, D.11642
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.21
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.22
	subq	%rax, %rdx	# PL_stack_base.23, D.11643
	movq	%rdx, %rax	# D.11643, D.11643
	sarq	$3, %rax	#, tmp115
	addl	$1, %eax	#, D.11644
	movl	%eax, -48(%rbp)	# D.11644, ax
	movq	%r12, %rdx	# sp, sp.24
	movq	%rbx, %rax	# mark, mark.25
	subq	%rax, %rdx	# mark.25, D.11643
	movq	%rdx, %rax	# D.11643, D.11643
	sarq	$3, %rax	#, tmp116
	movl	%eax, -44(%rbp)	# D.11643, items
	.loc 1 166 0
	cmpl	$2, -44(%rbp)	#, items
	je	.L16	#,
	.loc 1 167 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L16:
.LBB6:
	.loc 1 169 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.26
	movl	-48(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.11642
	salq	$3, %rdx	#, D.11642
	addq	%rdx, %rax	# D.11642, D.11645
	movq	(%rax), %rax	# *_27, D.11646
	movq	%rax, %rdi	# D.11646,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _29->sv_any, D.11648
	movq	56(%rax), %rax	# _30->xio_ifp, tmp118
	movq	%rax, -40(%rbp)	# tmp118, handle
	.loc 1 170 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.27
	movl	-48(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11649
	addq	$1, %rdx	#, D.11649
	salq	$3, %rdx	#, D.11649
	addq	%rdx, %rax	# D.11649, D.11645
	movq	(%rax), %rax	# *_36, tmp120
	movq	%rax, -32(%rbp)	# tmp120, pos
	.loc 1 173 0
	cmpq	$0, -40(%rbp)	#, handle
	je	.L17	#,
	.loc 1 175 0
	movq	-32(%rbp), %rdx	# pos, tmp121
	movq	-40(%rbp), %rax	# handle, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	PerlIO_setpos	#
	movl	%eax, -52(%rbp)	# tmp123, RETVAL
	jmp	.L18	#
.L17:
	.loc 1 189 0
	movl	$-1, -52(%rbp)	#, RETVAL
	.loc 1 190 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_40
.L18:
	.loc 1 193 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.28
	movl	-48(%rbp), %edx	# ax, tmp124
	movslq	%edx, %rdx	# tmp124, D.11642
	salq	$3, %rdx	#, D.11642
	leaq	(%rax,%rdx), %rbx	#, D.11645
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.11646, *_44
	.loc 1 194 0
	cmpl	$-1, -52(%rbp)	#, RETVAL
	je	.L19	#,
	.loc 1 195 0
	cmpl	$0, -52(%rbp)	#, RETVAL
	jne	.L20	#,
	.loc 1 196 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.29
	movl	-48(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.11642
	salq	$3, %rdx	#, D.11642
	addq	%rdx, %rax	# D.11642, D.11645
	movq	(%rax), %rax	# *_49, D.11646
	movl	$10, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11646,
	call	Perl_sv_setpvn	#
	jmp	.L19	#
.L20:
	.loc 1 198 0
	movl	-52(%rbp), %eax	# RETVAL, tmp126
	movslq	%eax, %rdx	# tmp126, D.11643
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.30
	movl	-48(%rbp), %ecx	# ax, tmp127
	movslq	%ecx, %rcx	# tmp127, D.11642
	salq	$3, %rcx	#, D.11642
	addq	%rcx, %rax	# D.11642, D.11645
	movq	(%rax), %rax	# *_55, D.11646
	movq	%rdx, %rsi	# D.11643,
	movq	%rax, %rdi	# D.11646,
	call	Perl_sv_setiv	#
.L19:
.LBE6:
.LBB7:
	.loc 1 201 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.31
	movl	-48(%rbp), %edx	# ax, tmp128
	movslq	%edx, %rcx	# tmp128, D.11649
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.32
	addq	%rcx, %rdx	# D.11649, D.11649
	salq	$3, %rdx	#, D.11649
	subq	$8, %rdx	#, D.11649
	addq	%rdx, %rax	# D.11649, PL_stack_sp.33
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.33, PL_stack_sp
	nop
.LBE7:
	.loc 1 202 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	XS_IO__Seekable_setpos, .-XS_IO__Seekable_setpos
	.section	.rodata
	.align 8
.LC4:
	.string	"Usage: IO::File::new_tmpfile(packname = \"IO::File\")"
.LC5:
	.string	"IO::File"
.LC6:
	.string	"+>&"
	.text
	.globl	XS_IO__File_new_tmpfile
	.type	XS_IO__File_new_tmpfile, @function
XS_IO__File_new_tmpfile:
.LFB6:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 207 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.34
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.35
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.37
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.37, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.36_6, D.11653
	cltq
	salq	$3, %rax	#, D.11654
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.38
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.39
	subq	%rax, %rdx	# PL_stack_base.40, D.11655
	movq	%rdx, %rax	# D.11655, D.11655
	sarq	$3, %rax	#, tmp137
	addl	$1, %eax	#, D.11656
	movl	%eax, -56(%rbp)	# D.11656, ax
	movq	%r12, %rdx	# sp, sp.41
	movq	%rbx, %rax	# mark, mark.42
	subq	%rax, %rdx	# mark.42, D.11655
	movq	%rdx, %rax	# D.11655, D.11655
	sarq	$3, %rax	#, tmp138
	movl	%eax, -52(%rbp)	# D.11655, items
	.loc 1 208 0
	cmpl	$0, -52(%rbp)	#, items
	js	.L23	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, items
	jle	.L24	#,
.L23:
	.loc 1 209 0 is_stmt 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L24:
.LBB8:
	.loc 1 217 0
	cmpl	$0, -52(%rbp)	#, items
	jg	.L25	#,
	.loc 1 218 0
	movq	$.LC5, -48(%rbp)	#, packname
	jmp	.L26	#
.L25:
	.loc 1 220 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.44
	movl	-56(%rbp), %edx	# ax, tmp139
	movslq	%edx, %rdx	# tmp139, D.11654
	salq	$3, %rdx	#, D.11654
	addq	%rdx, %rax	# D.11654, D.11657
	movq	(%rax), %rax	# *_29, D.11658
	movl	12(%rax), %eax	# _30->sv_flags, D.11659
	andl	$262144, %eax	#, D.11659
	testl	%eax, %eax	# D.11659
	je	.L27	#,
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.45
	movl	-56(%rbp), %edx	# ax, tmp140
	movslq	%edx, %rdx	# tmp140, D.11654
	salq	$3, %rdx	#, D.11654
	addq	%rdx, %rax	# D.11654, D.11657
	movq	(%rax), %rax	# *_36, D.11658
	movq	(%rax), %rax	# _37->sv_any, D.11660
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, iftmp.43
	jmp	.L28	#
.L27:
	.loc 1 220 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.46
	movl	-56(%rbp), %edx	# ax, tmp141
	movslq	%edx, %rdx	# tmp141, D.11654
	salq	$3, %rdx	#, D.11654
	addq	%rdx, %rax	# D.11654, D.11657
	movq	(%rax), %rax	# *_43, D.11658
	movq	%rax, %rdi	# D.11658,
	call	Perl_sv_2pv_nolen	#
.L28:
	.loc 1 220 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.43, packname
.L26:
	.loc 1 224 0 is_stmt 1
	call	PerlIO_tmpfile	#
	movq	%rax, -40(%rbp)	# tmp142, fp
	.loc 1 228 0
	movq	-48(%rbp), %rax	# packname, tmp143
	movq	%rax, %rdi	# tmp143,
	call	Perl_newGVgen	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.47, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.49
	testq	%rax, %rax	# PL_Sv.49
	je	.L30	#,
	.loc 1 228 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.50
	movl	8(%rax), %edx	# PL_Sv.50_50->sv_refcnt, D.11659
	addl	$1, %edx	#, D.11659
	movl	%edx, 8(%rax)	# D.11659, PL_Sv.50_50->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.50_50->sv_refcnt, D.11659
	testl	%eax, %eax	# D.11659
	je	.L30	#,
	.loc 1 228 0
	nop
.L30:
	.loc 1 228 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp144
	movq	%rax, -32(%rbp)	# tmp144, gv
	.loc 1 229 0 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax	# gv, tmp145
	movq	(%rax), %rax	# gv_56->sv_any, D.11661
	movq	72(%rax), %rax	# _57->xgv_namelen, D.11654
	movl	%eax, %edx	# D.11654, D.11653
	movq	-32(%rbp), %rax	# gv, tmp146
	movq	(%rax), %rax	# gv_56->sv_any, D.11661
	movq	64(%rax), %rsi	# _60->xgv_name, D.11662
	movq	-32(%rbp), %rax	# gv, tmp147
	movq	(%rax), %rax	# gv_56->sv_any, D.11661
	movq	80(%rax), %rax	# _62->xgv_stash, D.11663
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.11663,
	call	Perl_hv_delete	#
	.loc 1 230 0 discriminator 4
	movq	-32(%rbp), %rax	# gv, tmp148
	movq	-40(%rbp), %rdx	# fp, tmp149
	movq	%rdx, (%rsp)	# tmp149,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	Perl_do_open	#
	testb	%al, %al	# D.11664
	je	.L31	#,
	.loc 1 231 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.51
	movl	-56(%rbp), %edx	# ax, tmp150
	movslq	%edx, %rdx	# tmp150, D.11654
	salq	$3, %rdx	#, D.11654
	leaq	(%rax,%rdx), %rbx	#, D.11657
	movq	-32(%rbp), %rax	# gv, tmp151
	movq	%rax, %rdi	# tmp151,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.11658,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11658, *_68
	.loc 1 232 0
	movq	-48(%rbp), %rax	# packname, tmp152
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	Perl_gv_stashpv	#
	movq	%rax, %rdx	#, D.11663
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.52
	movl	-56(%rbp), %ecx	# ax, tmp153
	movslq	%ecx, %rcx	# tmp153, D.11654
	salq	$3, %rcx	#, D.11654
	addq	%rcx, %rax	# D.11654, D.11657
	movq	(%rax), %rax	# *_75, D.11658
	movq	%rdx, %rsi	# D.11663,
	movq	%rax, %rdi	# D.11658,
	call	Perl_sv_bless	#
	.loc 1 233 0
	movq	-32(%rbp), %rax	# gv, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_free	#
	jmp	.L32	#
.L31:
	.loc 1 236 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.53
	movl	-56(%rbp), %edx	# ax, tmp155
	movslq	%edx, %rdx	# tmp155, D.11654
	salq	$3, %rdx	#, D.11654
	addq	%rdx, %rax	# D.11654, D.11657
	movq	$PL_sv_undef, (%rax)	#, *_80
	.loc 1 237 0
	movq	-32(%rbp), %rax	# gv, tmp156
	movq	%rax, %rdi	# tmp156,
	call	Perl_sv_free	#
.L32:
.LBE8:
.LBB9:
	.loc 1 241 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.54
	movl	-56(%rbp), %edx	# ax, tmp157
	movslq	%edx, %rcx	# tmp157, D.11665
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.55
	addq	%rcx, %rdx	# D.11665, D.11665
	salq	$3, %rdx	#, D.11665
	subq	$8, %rdx	#, D.11665
	addq	%rdx, %rax	# D.11665, PL_stack_sp.56
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.56, PL_stack_sp
	nop
.LBE9:
	.loc 1 242 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	XS_IO__File_new_tmpfile, .-XS_IO__File_new_tmpfile
	.section	.rodata
	.align 8
.LC7:
	.string	"Usage: IO::Poll::_poll(timeout, ...)"
	.text
	.globl	XS_IO__Poll__poll
	.type	XS_IO__Poll__poll, @function
XS_IO__Poll__poll:
.LFB7:
	.loc 1 246 0
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
	.loc 1 247 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.57
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.58
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.60
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.60, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.59_11, D.11669
	cltq
	salq	$3, %rax	#, D.11670
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.61
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.62
	subq	%rax, %rdx	# PL_stack_base.63, D.11671
	movq	%rdx, %rax	# D.11671, D.11671
	sarq	$3, %rax	#, tmp201
	addl	$1, %eax	#, D.11672
	movl	%eax, -60(%rbp)	# D.11672, ax
	movq	%rbx, %rdx	# sp, sp.64
	movq	%r12, %rax	# mark, mark.65
	subq	%rax, %rdx	# mark.65, D.11671
	movq	%rdx, %rax	# D.11671, D.11671
	sarq	$3, %rax	#, tmp202
	movl	%eax, -56(%rbp)	# D.11671, items
	.loc 1 248 0
	cmpl	$0, -56(%rbp)	#, items
	jg	.L35	#,
	.loc 1 249 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L35:
	.loc 1 250 0
	movl	-56(%rbp), %eax	# items, tmp203
	cltq
	salq	$3, %rax	#, D.11670
	negq	%rax	# D.11673
	addq	%rax, %rbx	# D.11673, sp
.LBB10:
	.loc 1 252 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.67
	movl	-60(%rbp), %edx	# ax, tmp204
	movslq	%edx, %rdx	# tmp204, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_37, D.11675
	movl	12(%rax), %eax	# _38->sv_flags, D.11676
	andl	$65536, %eax	#, D.11676
	testl	%eax, %eax	# D.11676
	je	.L36	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.68
	movl	-60(%rbp), %edx	# ax, tmp205
	movslq	%edx, %rdx	# tmp205, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_44, D.11675
	movq	(%rax), %rax	# _45->sv_any, D.11677
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_46].xiv_iv, D.11671
	jmp	.L37	#
.L36:
	.loc 1 252 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.69
	movl	-60(%rbp), %edx	# ax, tmp206
	movslq	%edx, %rdx	# tmp206, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_52, D.11675
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_2iv	#
.L37:
	.loc 1 252 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.66, timeout
.LBB11:
	.loc 1 256 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %eax	# items, tmp207
	subl	$1, %eax	#, D.11669
	movl	%eax, %edx	# D.11669, tmp208
	shrl	$31, %edx	#, tmp208
	addl	%edx, %eax	# tmp208, tmp209
	sarl	%eax	# tmp210
	movl	%eax, -48(%rbp)	# tmp210, nfd
	.loc 1 257 0 discriminator 3
	movl	-48(%rbp), %eax	# nfd, tmp211
	cltq
	salq	$3, %rax	#, D.11670
	movq	%rax, %rdi	# D.11670,
	call	Perl_newSV	#
	movq	%rax, -40(%rbp)	# tmp212, tmpsv
	.loc 1 258 0 discriminator 3
	movq	-40(%rbp), %rax	# tmpsv, tmp213
	movq	(%rax), %rax	# tmpsv_61->sv_any, D.11677
	movq	(%rax), %rax	# MEM[(struct XPV *)_62].xpv_pv, tmp214
	movq	%rax, -32(%rbp)	# tmp214, fds
	.loc 1 260 0 discriminator 3
	movl	$1, -68(%rbp)	#, i
	movl	$0, -64(%rbp)	#, j
	jmp	.L38	#
.L43:
	.loc 1 261 0
	movl	-64(%rbp), %eax	# j, tmp215
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11670
	movq	-32(%rbp), %rax	# fds, tmp216
	leaq	(%rdx,%rax), %rbx	#, D.11678
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.71
	movl	-68(%rbp), %edx	# i, tmp217
	movl	-60(%rbp), %ecx	# ax, tmp218
	addl	%ecx, %edx	# tmp218, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_73, D.11675
	movl	12(%rax), %eax	# _74->sv_flags, D.11676
	andl	$65536, %eax	#, D.11676
	testl	%eax, %eax	# D.11676
	je	.L39	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	movl	-68(%rbp), %edx	# i, tmp219
	movl	-60(%rbp), %ecx	# ax, tmp220
	addl	%ecx, %edx	# tmp220, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_81, D.11675
	movq	(%rax), %rax	# _82->sv_any, D.11677
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_83].xiv_iv, D.11671
	jmp	.L40	#
.L39:
	.loc 1 261 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.73
	movl	-68(%rbp), %edx	# i, tmp221
	movl	-60(%rbp), %ecx	# ax, tmp222
	addl	%ecx, %edx	# tmp222, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_90, D.11675
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_2iv	#
.L40:
	.loc 1 261 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.70, _68->fd
	.loc 1 262 0 is_stmt 1 discriminator 3
	addl	$1, -68(%rbp)	#, i
	.loc 1 263 0 discriminator 3
	movl	-64(%rbp), %eax	# j, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11670
	movq	-32(%rbp), %rax	# fds, tmp224
	leaq	(%rdx,%rax), %rbx	#, D.11678
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.75
	movl	-68(%rbp), %edx	# i, tmp225
	movl	-60(%rbp), %ecx	# ax, tmp226
	addl	%ecx, %edx	# tmp226, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_102, D.11675
	movl	12(%rax), %eax	# _103->sv_flags, D.11676
	andl	$65536, %eax	#, D.11676
	testl	%eax, %eax	# D.11676
	je	.L41	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.76
	movl	-68(%rbp), %edx	# i, tmp227
	movl	-60(%rbp), %ecx	# ax, tmp228
	addl	%ecx, %edx	# tmp228, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_110, D.11675
	movq	(%rax), %rax	# _111->sv_any, D.11677
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_112].xiv_iv, D.11671
	jmp	.L42	#
.L41:
	.loc 1 263 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.77
	movl	-68(%rbp), %edx	# i, tmp229
	movl	-60(%rbp), %ecx	# ax, tmp230
	addl	%ecx, %edx	# tmp230, D.11669
	movslq	%edx, %rdx	# D.11669, D.11670
	salq	$3, %rdx	#, D.11670
	addq	%rdx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_119, D.11675
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_2iv	#
.L42:
	.loc 1 263 0 discriminator 3
	movw	%ax, 4(%rbx)	# iftmp.74, _97->events
	.loc 1 264 0 is_stmt 1 discriminator 3
	addl	$1, -68(%rbp)	#, i
	.loc 1 265 0 discriminator 3
	movl	-64(%rbp), %eax	# j, tmp231
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11670
	movq	-32(%rbp), %rax	# fds, tmp232
	addq	%rdx, %rax	# D.11670, D.11678
	movw	$0, 6(%rax)	#, _126->revents
	.loc 1 260 0 discriminator 3
	addl	$1, -64(%rbp)	#, j
.L38:
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp233
	cmpl	-48(%rbp), %eax	# nfd, tmp233
	jl	.L43	#,
	.loc 1 267 0 is_stmt 1
	movl	-48(%rbp), %eax	# nfd, tmp234
	movslq	%eax, %rcx	# tmp234, D.11670
	movl	-52(%rbp), %edx	# timeout, tmp235
	movq	-32(%rbp), %rax	# fds, tmp236
	movq	%rcx, %rsi	# D.11670,
	movq	%rax, %rdi	# tmp236,
	call	Perl_my_poll	#
	movl	%eax, -44(%rbp)	# tmp237, ret
	cmpl	$0, -44(%rbp)	#, ret
	js	.L44	#,
	.loc 1 268 0
	movl	$1, -68(%rbp)	#, i
	movl	$0, -64(%rbp)	#, j
	jmp	.L45	#
.L46:
	.loc 1 269 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp238
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11670
	movq	-32(%rbp), %rax	# fds, tmp239
	addq	%rdx, %rax	# D.11670, D.11678
	movl	(%rax), %eax	# _134->fd, D.11669
	movslq	%eax, %rdx	# D.11669, D.11671
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.78
	movl	-68(%rbp), %ecx	# i, tmp240
	movl	-60(%rbp), %esi	# ax, tmp241
	addl	%esi, %ecx	# tmp241, D.11669
	movslq	%ecx, %rcx	# D.11669, D.11670
	salq	$3, %rcx	#, D.11670
	addq	%rcx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_141, D.11675
	movq	%rdx, %rsi	# D.11671,
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_setiv	#
	addl	$1, -68(%rbp)	#, i
	.loc 1 270 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11670
	movq	-32(%rbp), %rax	# fds, tmp243
	addq	%rdx, %rax	# D.11670, D.11678
	movzwl	6(%rax), %eax	# _146->revents, D.11679
	movswq	%ax, %rdx	# D.11679, D.11671
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.79
	movl	-68(%rbp), %ecx	# i, tmp244
	movl	-60(%rbp), %esi	# ax, tmp245
	addl	%esi, %ecx	# tmp245, D.11669
	movslq	%ecx, %rcx	# D.11669, D.11670
	salq	$3, %rcx	#, D.11670
	addq	%rcx, %rax	# D.11670, D.11674
	movq	(%rax), %rax	# *_153, D.11675
	movq	%rdx, %rsi	# D.11671,
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_setiv	#
	addl	$1, -68(%rbp)	#, i
	.loc 1 268 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L45:
	.loc 1 268 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp246
	cmpl	-48(%rbp), %eax	# nfd, tmp246
	jl	.L46	#,
.L44:
	.loc 1 273 0 is_stmt 1
	movq	-40(%rbp), %rax	# tmpsv, tmp247
	movq	%rax, %rdi	# tmp247,
	call	Perl_sv_free	#
.LBB12:
	.loc 1 274 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.80
	movl	-60(%rbp), %edx	# ax, tmp248
	movslq	%edx, %rdx	# tmp248, D.11670
	salq	$3, %rdx	#, D.11670
	leaq	(%rax,%rdx), %rbx	#, D.11674
	movl	-44(%rbp), %eax	# ret, tmp249
	cltq
	movq	%rax, %rdi	# D.11671,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.11675,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11675, *_160
.LBB13:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.81
	movl	-60(%rbp), %edx	# ax, tmp250
	movslq	%edx, %rcx	# tmp250, D.11673
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.82
	addq	%rcx, %rdx	# D.11673, D.11673
	salq	$3, %rdx	#, D.11673
	subq	$8, %rdx	#, D.11673
	addq	%rdx, %rax	# D.11673, PL_stack_sp.83
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.83, PL_stack_sp
	nop
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 283 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	XS_IO__Poll__poll, .-XS_IO__Poll__poll
	.section	.rodata
	.align 8
.LC8:
	.string	"Usage: IO::Handle::blocking(handle, blk=-1)"
	.text
	.globl	XS_IO__Handle_blocking
	.type	XS_IO__Handle_blocking, @function
XS_IO__Handle_blocking:
.LFB8:
	.loc 1 287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 288 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.84
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.85
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.87
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.87, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.86_7, D.11681
	cltq
	salq	$3, %rax	#, D.11682
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.88
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.89
	subq	%rax, %rdx	# PL_stack_base.90, D.11683
	movq	%rdx, %rax	# D.11683, D.11683
	sarq	$3, %rax	#, tmp137
	addl	$1, %eax	#, D.11684
	movl	%eax, -52(%rbp)	# D.11684, ax
	movq	%r12, %rdx	# sp, sp.91
	movq	%rbx, %rax	# mark, mark.92
	subq	%rax, %rdx	# mark.92, D.11683
	movq	%rdx, %rax	# D.11683, D.11683
	sarq	$3, %rax	#, tmp138
	movl	%eax, -48(%rbp)	# D.11683, items
	.loc 1 289 0
	cmpl	$0, -48(%rbp)	#, items
	jle	.L49	#,
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$2, -48(%rbp)	#, items
	jle	.L50	#,
.L49:
	.loc 1 290 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L50:
.LBB14:
	.loc 1 292 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.93
	movl	-52(%rbp), %edx	# ax, tmp139
	movslq	%edx, %rdx	# tmp139, D.11682
	salq	$3, %rdx	#, D.11682
	addq	%rdx, %rax	# D.11682, D.11685
	movq	(%rax), %rax	# *_29, D.11686
	movq	%rax, %rdi	# D.11686,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _31->sv_any, D.11688
	movq	56(%rax), %rax	# _32->xio_ifp, tmp140
	movq	%rax, -40(%rbp)	# tmp140, handle
	.loc 1 295 0
	cmpl	$1, -48(%rbp)	#, items
	jg	.L51	#,
	.loc 1 296 0
	movl	$-1, -56(%rbp)	#, blk
	jmp	.L52	#
.L51:
	.loc 1 298 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.95
	movl	-52(%rbp), %edx	# ax, tmp141
	movslq	%edx, %rdx	# tmp141, D.11689
	addq	$1, %rdx	#, D.11689
	salq	$3, %rdx	#, D.11689
	addq	%rdx, %rax	# D.11689, D.11685
	movq	(%rax), %rax	# *_39, D.11686
	movl	12(%rax), %eax	# _40->sv_flags, D.11690
	andl	$65536, %eax	#, D.11690
	testl	%eax, %eax	# D.11690
	je	.L53	#,
	.loc 1 298 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.96
	movl	-52(%rbp), %edx	# ax, tmp142
	movslq	%edx, %rdx	# tmp142, D.11689
	addq	$1, %rdx	#, D.11689
	salq	$3, %rdx	#, D.11689
	addq	%rdx, %rax	# D.11689, D.11685
	movq	(%rax), %rax	# *_47, D.11686
	movq	(%rax), %rax	# _48->sv_any, D.11691
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_49].xiv_iv, D.11683
	jmp	.L54	#
.L53:
	.loc 1 298 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.97
	movl	-52(%rbp), %edx	# ax, tmp143
	movslq	%edx, %rdx	# tmp143, D.11689
	addq	$1, %rdx	#, D.11689
	salq	$3, %rdx	#, D.11689
	addq	%rdx, %rax	# D.11689, D.11685
	movq	(%rax), %rax	# *_56, D.11686
	movq	%rax, %rdi	# D.11686,
	call	Perl_sv_2iv	#
.L54:
	.loc 1 298 0 discriminator 3
	movl	%eax, -56(%rbp)	# iftmp.94, blk
.L52:
.LBB15:
	.loc 1 302 0 is_stmt 1
	cmpl	$1, -48(%rbp)	#, items
	je	.L55	#,
	.loc 1 302 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, blk
	setne	%al	#, D.11692
	movzbl	%al, %eax	# D.11692, iftmp.98
	jmp	.L56	#
.L55:
	.loc 1 302 0 discriminator 2
	movl	$-1, %eax	#, iftmp.98
.L56:
	.loc 1 302 0 discriminator 3
	movq	-40(%rbp), %rdx	# handle, tmp144
	movl	%eax, %esi	# iftmp.98,
	movq	%rdx, %rdi	# tmp144,
	call	io_blocking	#
	movl	%eax, -44(%rbp)	# tmp145, ret
	.loc 1 303 0 is_stmt 1 discriminator 3
	cmpl	$0, -44(%rbp)	#, ret
	js	.L57	#,
.LBB16:
	.loc 1 304 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.99
	movl	-52(%rbp), %edx	# ax, tmp146
	movslq	%edx, %rdx	# tmp146, D.11682
	salq	$3, %rdx	#, D.11682
	leaq	(%rax,%rdx), %rbx	#, D.11685
	movl	-44(%rbp), %eax	# ret, tmp147
	cltq
	movq	%rax, %rdi	# D.11683,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.11686,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11686, *_68
.LBB17:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.100
	movl	-52(%rbp), %edx	# ax, tmp148
	movslq	%edx, %rcx	# tmp148, D.11689
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.101
	addq	%rcx, %rdx	# D.11689, D.11689
	salq	$3, %rdx	#, D.11689
	subq	$8, %rdx	#, D.11689
	addq	%rdx, %rax	# D.11689, PL_stack_sp.102
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.102, PL_stack_sp
	jmp	.L48	#
.L57:
.LBE17:
.LBE16:
.LBB18:
	.loc 1 306 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.103
	movl	-52(%rbp), %edx	# ax, tmp149
	movslq	%edx, %rdx	# tmp149, D.11682
	salq	$3, %rdx	#, D.11682
	addq	%rdx, %rax	# D.11682, D.11685
	movq	$PL_sv_undef, (%rax)	#, *_83
.LBB19:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.104
	movl	-52(%rbp), %edx	# ax, tmp150
	movslq	%edx, %rcx	# tmp150, D.11689
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.105
	addq	%rcx, %rdx	# D.11689, D.11689
	salq	$3, %rdx	#, D.11689
	subq	$8, %rdx	#, D.11689
	addq	%rdx, %rax	# D.11689, PL_stack_sp.106
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.106, PL_stack_sp
	nop
.L48:
.LBE19:
.LBE18:
.LBE15:
.LBE14:
	.loc 1 311 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_IO__Handle_blocking, .-XS_IO__Handle_blocking
	.section	.rodata
	.align 8
.LC9:
	.string	"Usage: IO::Handle::ungetc(handle, c)"
	.text
	.globl	XS_IO__Handle_ungetc
	.type	XS_IO__Handle_ungetc, @function
XS_IO__Handle_ungetc:
.LFB9:
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 316 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.110
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.111
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.113
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.113, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.112_7, D.11694
	cltq
	salq	$3, %rax	#, D.11695
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.114
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.115
	subq	%rax, %rdx	# PL_stack_base.116, D.11696
	movq	%rdx, %rax	# D.11696, D.11696
	sarq	$3, %rax	#, tmp136
	addl	$1, %eax	#, D.11697
	movl	%eax, -52(%rbp)	# D.11697, ax
	movq	%rbx, %rdx	# sp, sp.117
	movq	%r12, %rax	# mark, mark.118
	subq	%rax, %rdx	# mark.118, D.11696
	movq	%rdx, %rax	# D.11696, D.11696
	sarq	$3, %rax	#, tmp137
	movl	%eax, -48(%rbp)	# D.11696, items
	.loc 1 317 0
	cmpl	$2, -48(%rbp)	#, items
	je	.L60	#,
	.loc 1 318 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L60:
.LBB20:
	.loc 1 320 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.119
	movl	-52(%rbp), %edx	# ax, tmp138
	movslq	%edx, %rdx	# tmp138, D.11695
	salq	$3, %rdx	#, D.11695
	addq	%rdx, %rax	# D.11695, D.11698
	movq	(%rax), %rax	# *_29, D.11699
	movq	%rax, %rdi	# D.11699,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _31->sv_any, D.11701
	movq	56(%rax), %rax	# _32->xio_ifp, tmp139
	movq	%rax, -40(%rbp)	# tmp139, handle
	.loc 1 321 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.121
	movl	-52(%rbp), %edx	# ax, tmp140
	movslq	%edx, %rdx	# tmp140, D.11702
	addq	$1, %rdx	#, D.11702
	salq	$3, %rdx	#, D.11702
	addq	%rdx, %rax	# D.11702, D.11698
	movq	(%rax), %rax	# *_38, D.11699
	movl	12(%rax), %eax	# _39->sv_flags, D.11703
	andl	$65536, %eax	#, D.11703
	testl	%eax, %eax	# D.11703
	je	.L61	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.122
	movl	-52(%rbp), %edx	# ax, tmp141
	movslq	%edx, %rdx	# tmp141, D.11702
	addq	$1, %rdx	#, D.11702
	salq	$3, %rdx	#, D.11702
	addq	%rdx, %rax	# D.11702, D.11698
	movq	(%rax), %rax	# *_46, D.11699
	movq	(%rax), %rax	# _47->sv_any, D.11704
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_48].xiv_iv, D.11696
	jmp	.L62	#
.L61:
	.loc 1 321 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.123
	movl	-52(%rbp), %edx	# ax, tmp142
	movslq	%edx, %rdx	# tmp142, D.11702
	addq	$1, %rdx	#, D.11702
	salq	$3, %rdx	#, D.11702
	addq	%rdx, %rax	# D.11702, D.11698
	movq	(%rax), %rax	# *_55, D.11699
	movq	%rax, %rdi	# D.11699,
	call	Perl_sv_2iv	#
.L62:
	.loc 1 321 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.120, c
	.loc 1 323 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.125
	movzbl	37(%rax), %eax	# PL_op.125_60->op_private, D.11705
	movzbl	%al, %eax	# D.11705, D.11694
	andl	$32, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	je	.L63	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.126
	movq	PL_op(%rip), %rax	# PL_op, PL_op.127
	movq	24(%rax), %rax	# PL_op.127_65->op_targ, D.11695
	salq	$3, %rax	#, D.11695
	addq	%rdx, %rax	# PL_curpad.126, D.11698
	movq	(%rax), %rax	# *_68, iftmp.124
	jmp	.L64	#
.L63:
	.loc 1 323 0 discriminator 2
	call	Perl_sv_newmortal	#
.L64:
	.loc 1 323 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.124, targ
	.loc 1 325 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, handle
	je	.L65	#,
	.loc 1 327 0
	movl	-44(%rbp), %edx	# c, tmp143
	movq	-40(%rbp), %rax	# handle, tmp144
	movl	%edx, %esi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	PerlIO_ungetc	#
	movl	%eax, -56(%rbp)	# tmp145, RETVAL
	jmp	.L66	#
.L65:
	.loc 1 332 0
	movl	$-1, -56(%rbp)	#, RETVAL
	.loc 1 333 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_74
.L66:
	.loc 1 336 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.128
	movl	-52(%rbp), %edx	# ax, tmp146
	movslq	%edx, %rdx	# tmp146, D.11695
	salq	$3, %rdx	#, D.11695
	subq	$8, %rdx	#, D.11702
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB21:
	movl	-56(%rbp), %eax	# RETVAL, tmp147
	movslq	%eax, %rdx	# tmp147, D.11696
	movq	-32(%rbp), %rax	# targ, tmp148
	movq	%rdx, %rsi	# D.11696,
	movq	%rax, %rdi	# tmp148,
	call	Perl_sv_setiv	#
.LBB22:
	movq	-32(%rbp), %rax	# targ, tmp149
	movl	12(%rax), %eax	# targ_71->sv_flags, D.11703
	andl	$16384, %eax	#, D.11703
	testl	%eax, %eax	# D.11703
	je	.L67	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp150
	movq	%rax, %rdi	# tmp150,
	call	Perl_mg_set	#
.L67:
	.loc 1 336 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp151
	movq	%rax, (%rbx)	# tmp151, *sp_83
.LBE22:
.LBE21:
.LBE20:
.LBB23:
	.loc 1 338 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.129
	movl	-52(%rbp), %edx	# ax, tmp152
	movslq	%edx, %rcx	# tmp152, D.11702
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.130
	addq	%rcx, %rdx	# D.11702, D.11702
	salq	$3, %rdx	#, D.11702
	subq	$8, %rdx	#, D.11702
	addq	%rdx, %rax	# D.11702, PL_stack_sp.131
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.131, PL_stack_sp
	nop
.LBE23:
	.loc 1 339 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	XS_IO__Handle_ungetc, .-XS_IO__Handle_ungetc
	.section	.rodata
	.align 8
.LC10:
	.string	"Usage: IO::Handle::error(handle)"
	.text
	.globl	XS_IO__Handle_error
	.type	XS_IO__Handle_error, @function
XS_IO__Handle_error:
.LFB10:
	.loc 1 343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 344 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.132
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.133
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.135
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.135, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.134_6, D.11708
	cltq
	salq	$3, %rax	#, D.11709
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.136
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.137
	subq	%rax, %rdx	# PL_stack_base.138, D.11710
	movq	%rdx, %rax	# D.11710, D.11710
	sarq	$3, %rax	#, tmp112
	addl	$1, %eax	#, D.11711
	movl	%eax, -48(%rbp)	# D.11711, ax
	movq	%rbx, %rdx	# sp, sp.139
	movq	%r12, %rax	# mark, mark.140
	subq	%rax, %rdx	# mark.140, D.11710
	movq	%rdx, %rax	# D.11710, D.11710
	sarq	$3, %rax	#, tmp113
	movl	%eax, -44(%rbp)	# D.11710, items
	.loc 1 345 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L70	#,
	.loc 1 346 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L70:
.LBB24:
	.loc 1 348 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.141
	movl	-48(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.11709
	salq	$3, %rdx	#, D.11709
	addq	%rdx, %rax	# D.11709, D.11712
	movq	(%rax), %rax	# *_28, D.11713
	movq	%rax, %rdi	# D.11713,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _30->sv_any, D.11715
	movq	56(%rax), %rax	# _31->xio_ifp, tmp115
	movq	%rax, -40(%rbp)	# tmp115, handle
	.loc 1 350 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.143
	movzbl	37(%rax), %eax	# PL_op.143_33->op_private, D.11716
	movzbl	%al, %eax	# D.11716, D.11708
	andl	$32, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L71	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.144
	movq	PL_op(%rip), %rax	# PL_op, PL_op.145
	movq	24(%rax), %rax	# PL_op.145_38->op_targ, D.11709
	salq	$3, %rax	#, D.11709
	addq	%rdx, %rax	# PL_curpad.144, D.11712
	movq	(%rax), %rax	# *_41, iftmp.142
	jmp	.L72	#
.L71:
	.loc 1 350 0 discriminator 2
	call	Perl_sv_newmortal	#
.L72:
	.loc 1 350 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.142, targ
	.loc 1 352 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, handle
	je	.L73	#,
	.loc 1 354 0
	movq	-40(%rbp), %rax	# handle, tmp116
	movq	%rax, %rdi	# tmp116,
	call	Perl_PerlIO_error	#
	movl	%eax, -52(%rbp)	# tmp117, RETVAL
	jmp	.L74	#
.L73:
	.loc 1 359 0
	movl	$-1, -52(%rbp)	#, RETVAL
	.loc 1 360 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_47
.L74:
	.loc 1 363 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.146
	movl	-48(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.11709
	salq	$3, %rdx	#, D.11709
	subq	$8, %rdx	#, D.11718
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB25:
	movl	-52(%rbp), %eax	# RETVAL, tmp119
	movslq	%eax, %rdx	# tmp119, D.11710
	movq	-32(%rbp), %rax	# targ, tmp120
	movq	%rdx, %rsi	# D.11710,
	movq	%rax, %rdi	# tmp120,
	call	Perl_sv_setiv	#
.LBB26:
	movq	-32(%rbp), %rax	# targ, tmp121
	movl	12(%rax), %eax	# targ_44->sv_flags, D.11719
	andl	$16384, %eax	#, D.11719
	testl	%eax, %eax	# D.11719
	je	.L75	#,
	.loc 1 363 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp122
	movq	%rax, %rdi	# tmp122,
	call	Perl_mg_set	#
.L75:
	.loc 1 363 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp123
	movq	%rax, (%rbx)	# tmp123, *sp_56
.LBE26:
.LBE25:
.LBE24:
.LBB27:
	.loc 1 365 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.147
	movl	-48(%rbp), %edx	# ax, tmp124
	movslq	%edx, %rcx	# tmp124, D.11718
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.148
	addq	%rcx, %rdx	# D.11718, D.11718
	salq	$3, %rdx	#, D.11718
	subq	$8, %rdx	#, D.11718
	addq	%rdx, %rax	# D.11718, PL_stack_sp.149
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.149, PL_stack_sp
	nop
.LBE27:
	.loc 1 366 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	XS_IO__Handle_error, .-XS_IO__Handle_error
	.section	.rodata
	.align 8
.LC11:
	.string	"Usage: IO::Handle::clearerr(handle)"
	.text
	.globl	XS_IO__Handle_clearerr
	.type	XS_IO__Handle_clearerr, @function
XS_IO__Handle_clearerr:
.LFB11:
	.loc 1 370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 371 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.150
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.151
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.153
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.153, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.152_6, D.11721
	cltq
	salq	$3, %rax	#, D.11722
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.154
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.155
	subq	%rax, %rdx	# PL_stack_base.156, D.11723
	movq	%rdx, %rax	# D.11723, D.11723
	sarq	$3, %rax	#, tmp112
	addl	$1, %eax	#, D.11724
	movl	%eax, -48(%rbp)	# D.11724, ax
	movq	%rbx, %rdx	# sp, sp.157
	movq	%r12, %rax	# mark, mark.158
	subq	%rax, %rdx	# mark.158, D.11723
	movq	%rdx, %rax	# D.11723, D.11723
	sarq	$3, %rax	#, tmp113
	movl	%eax, -44(%rbp)	# D.11723, items
	.loc 1 372 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L78	#,
	.loc 1 373 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L78:
.LBB28:
	.loc 1 375 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.159
	movl	-48(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.11722
	salq	$3, %rdx	#, D.11722
	addq	%rdx, %rax	# D.11722, D.11725
	movq	(%rax), %rax	# *_28, D.11726
	movq	%rax, %rdi	# D.11726,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _30->sv_any, D.11728
	movq	56(%rax), %rax	# _31->xio_ifp, tmp115
	movq	%rax, -40(%rbp)	# tmp115, handle
	.loc 1 377 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.161
	movzbl	37(%rax), %eax	# PL_op.161_33->op_private, D.11729
	movzbl	%al, %eax	# D.11729, D.11721
	andl	$32, %eax	#, D.11721
	testl	%eax, %eax	# D.11721
	je	.L79	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.162
	movq	PL_op(%rip), %rax	# PL_op, PL_op.163
	movq	24(%rax), %rax	# PL_op.163_38->op_targ, D.11722
	salq	$3, %rax	#, D.11722
	addq	%rdx, %rax	# PL_curpad.162, D.11725
	movq	(%rax), %rax	# *_41, iftmp.160
	jmp	.L80	#
.L79:
	.loc 1 377 0 discriminator 2
	call	Perl_sv_newmortal	#
.L80:
	.loc 1 377 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.160, targ
	.loc 1 379 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, handle
	je	.L81	#,
	.loc 1 381 0
	movq	-40(%rbp), %rax	# handle, tmp116
	movq	%rax, %rdi	# tmp116,
	call	Perl_PerlIO_clearerr	#
	.loc 1 385 0
	movl	$0, -52(%rbp)	#, RETVAL
	jmp	.L82	#
.L81:
	.loc 1 388 0
	movl	$-1, -52(%rbp)	#, RETVAL
	.loc 1 389 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_47
.L82:
	.loc 1 392 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.164
	movl	-48(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.11722
	salq	$3, %rdx	#, D.11722
	subq	$8, %rdx	#, D.11731
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB29:
	movl	-52(%rbp), %eax	# RETVAL, tmp118
	movslq	%eax, %rdx	# tmp118, D.11723
	movq	-32(%rbp), %rax	# targ, tmp119
	movq	%rdx, %rsi	# D.11723,
	movq	%rax, %rdi	# tmp119,
	call	Perl_sv_setiv	#
.LBB30:
	movq	-32(%rbp), %rax	# targ, tmp120
	movl	12(%rax), %eax	# targ_44->sv_flags, D.11732
	andl	$16384, %eax	#, D.11732
	testl	%eax, %eax	# D.11732
	je	.L83	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_mg_set	#
.L83:
	.loc 1 392 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp122
	movq	%rax, (%rbx)	# tmp122, *sp_56
.LBE30:
.LBE29:
.LBE28:
.LBB31:
	.loc 1 394 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.165
	movl	-48(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rcx	# tmp123, D.11731
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.166
	addq	%rcx, %rdx	# D.11731, D.11731
	salq	$3, %rdx	#, D.11731
	subq	$8, %rdx	#, D.11731
	addq	%rdx, %rax	# D.11731, PL_stack_sp.167
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.167, PL_stack_sp
	nop
.LBE31:
	.loc 1 395 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	XS_IO__Handle_clearerr, .-XS_IO__Handle_clearerr
	.section	.rodata
	.align 8
.LC12:
	.string	"Usage: IO::Handle::untaint(handle)"
	.text
	.globl	XS_IO__Handle_untaint
	.type	XS_IO__Handle_untaint, @function
XS_IO__Handle_untaint:
.LFB12:
	.loc 1 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 400 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.168
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.169
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.171
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.171, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.170_6, D.11734
	cltq
	salq	$3, %rax	#, D.11735
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.172
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.173
	subq	%rax, %rdx	# PL_stack_base.174, D.11736
	movq	%rdx, %rax	# D.11736, D.11736
	sarq	$3, %rax	#, tmp113
	addl	$1, %eax	#, D.11737
	movl	%eax, -56(%rbp)	# D.11737, ax
	movq	%rbx, %rdx	# sp, sp.175
	movq	%r12, %rax	# mark, mark.176
	subq	%rax, %rdx	# mark.176, D.11736
	movq	%rdx, %rax	# D.11736, D.11736
	sarq	$3, %rax	#, tmp114
	movl	%eax, -52(%rbp)	# D.11736, items
	.loc 1 401 0
	cmpl	$1, -52(%rbp)	#, items
	je	.L86	#,
	.loc 1 402 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L86:
.LBB32:
	.loc 1 404 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.177
	movl	-56(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.11735
	salq	$3, %rdx	#, D.11735
	addq	%rdx, %rax	# D.11735, D.11738
	movq	(%rax), %rax	# *_28, tmp116
	movq	%rax, -48(%rbp)	# tmp116, handle
	.loc 1 406 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.179
	movzbl	37(%rax), %eax	# PL_op.179_30->op_private, D.11739
	movzbl	%al, %eax	# D.11739, D.11734
	andl	$32, %eax	#, D.11734
	testl	%eax, %eax	# D.11734
	je	.L87	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.180
	movq	PL_op(%rip), %rax	# PL_op, PL_op.181
	movq	24(%rax), %rax	# PL_op.181_35->op_targ, D.11735
	salq	$3, %rax	#, D.11735
	addq	%rdx, %rax	# PL_curpad.180, D.11738
	movq	(%rax), %rax	# *_38, iftmp.178
	jmp	.L88	#
.L87:
	.loc 1 406 0 discriminator 2
	call	Perl_sv_newmortal	#
.L88:
	.loc 1 406 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.178, targ
	.loc 1 410 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# handle, tmp117
	movq	%rax, %rdi	# tmp117,
	call	Perl_sv_2io	#
	movq	%rax, -32(%rbp)	# tmp118, io
	.loc 1 411 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, io
	je	.L89	#,
	.loc 1 412 0
	movq	-32(%rbp), %rax	# io, tmp119
	movq	(%rax), %rax	# io_42->sv_any, D.11740
	movq	-32(%rbp), %rdx	# io, tmp120
	movq	(%rdx), %rdx	# io_42->sv_any, D.11740
	movzbl	163(%rdx), %edx	# _44->xio_flags, D.11741
	orl	$16, %edx	#, D.11742
	movb	%dl, 163(%rax)	# D.11742, _43->xio_flags
	.loc 1 413 0
	movl	$0, -60(%rbp)	#, RETVAL
	jmp	.L90	#
.L89:
	.loc 1 417 0
	movl	$-1, -60(%rbp)	#, RETVAL
	.loc 1 418 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_49
.L90:
	.loc 1 423 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.182
	movl	-56(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.11735
	salq	$3, %rdx	#, D.11735
	subq	$8, %rdx	#, D.11744
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB33:
	movl	-60(%rbp), %eax	# RETVAL, tmp122
	movslq	%eax, %rdx	# tmp122, D.11736
	movq	-40(%rbp), %rax	# targ, tmp123
	movq	%rdx, %rsi	# D.11736,
	movq	%rax, %rdi	# tmp123,
	call	Perl_sv_setiv	#
.LBB34:
	movq	-40(%rbp), %rax	# targ, tmp124
	movl	12(%rax), %eax	# targ_41->sv_flags, D.11745
	andl	$16384, %eax	#, D.11745
	testl	%eax, %eax	# D.11745
	je	.L91	#,
	.loc 1 423 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_mg_set	#
.L91:
	.loc 1 423 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp126
	movq	%rax, (%rbx)	# tmp126, *sp_58
.LBE34:
.LBE33:
.LBE32:
.LBB35:
	.loc 1 425 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.183
	movl	-56(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rcx	# tmp127, D.11744
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.184
	addq	%rcx, %rdx	# D.11744, D.11744
	salq	$3, %rdx	#, D.11744
	subq	$8, %rdx	#, D.11744
	addq	%rdx, %rax	# D.11744, PL_stack_sp.185
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.185, PL_stack_sp
	nop
.LBE35:
	.loc 1 426 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	XS_IO__Handle_untaint, .-XS_IO__Handle_untaint
	.section	.rodata
	.align 8
.LC13:
	.string	"Usage: IO::Handle::flush(handle)"
	.text
	.globl	XS_IO__Handle_flush
	.type	XS_IO__Handle_flush, @function
XS_IO__Handle_flush:
.LFB13:
	.loc 1 430 0
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
	.loc 1 431 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.186
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.187
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.189
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.189, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.188_5, D.11748
	cltq
	salq	$3, %rax	#, D.11749
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.190
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.191
	subq	%rax, %rdx	# PL_stack_base.192, D.11750
	movq	%rdx, %rax	# D.11750, D.11750
	sarq	$3, %rax	#, tmp110
	addl	$1, %eax	#, D.11751
	movl	%eax, -40(%rbp)	# D.11751, ax
	movq	%r12, %rdx	# sp, sp.193
	movq	%rbx, %rax	# mark, mark.194
	subq	%rax, %rdx	# mark.194, D.11750
	movq	%rdx, %rax	# D.11750, D.11750
	sarq	$3, %rax	#, tmp111
	movl	%eax, -36(%rbp)	# D.11750, items
	.loc 1 432 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L94	#,
	.loc 1 433 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L94:
.LBB36:
	.loc 1 435 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.195
	movl	-40(%rbp), %edx	# ax, tmp112
	movslq	%edx, %rdx	# tmp112, D.11749
	salq	$3, %rdx	#, D.11749
	addq	%rdx, %rax	# D.11749, D.11752
	movq	(%rax), %rax	# *_27, D.11753
	movq	%rax, %rdi	# D.11753,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _29->sv_any, D.11755
	movq	64(%rax), %rax	# _30->xio_ofp, tmp113
	movq	%rax, -32(%rbp)	# tmp113, handle
	.loc 1 438 0
	cmpq	$0, -32(%rbp)	#, handle
	je	.L95	#,
	.loc 1 440 0
	movq	-32(%rbp), %rax	# handle, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_PerlIO_flush	#
	movl	%eax, -44(%rbp)	# tmp115, RETVAL
	jmp	.L96	#
.L95:
	.loc 1 445 0
	movl	$-1, -44(%rbp)	#, RETVAL
	.loc 1 446 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_34
.L96:
	.loc 1 449 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.196
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11749
	salq	$3, %rdx	#, D.11749
	leaq	(%rax,%rdx), %rbx	#, D.11752
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.11753, *_38
	.loc 1 450 0
	cmpl	$-1, -44(%rbp)	#, RETVAL
	je	.L97	#,
	.loc 1 451 0
	cmpl	$0, -44(%rbp)	#, RETVAL
	jne	.L98	#,
	.loc 1 452 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.197
	movl	-40(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.11749
	salq	$3, %rdx	#, D.11749
	addq	%rdx, %rax	# D.11749, D.11752
	movq	(%rax), %rax	# *_43, D.11753
	movl	$10, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11753,
	call	Perl_sv_setpvn	#
	jmp	.L97	#
.L98:
	.loc 1 454 0
	movl	-44(%rbp), %eax	# RETVAL, tmp118
	movslq	%eax, %rdx	# tmp118, D.11750
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.198
	movl	-40(%rbp), %ecx	# ax, tmp119
	movslq	%ecx, %rcx	# tmp119, D.11749
	salq	$3, %rcx	#, D.11749
	addq	%rcx, %rax	# D.11749, D.11752
	movq	(%rax), %rax	# *_49, D.11753
	movq	%rdx, %rsi	# D.11750,
	movq	%rax, %rdi	# D.11753,
	call	Perl_sv_setiv	#
.L97:
.LBE36:
.LBB37:
	.loc 1 457 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.199
	movl	-40(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rcx	# tmp120, D.11757
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.200
	addq	%rcx, %rdx	# D.11757, D.11757
	salq	$3, %rdx	#, D.11757
	subq	$8, %rdx	#, D.11757
	addq	%rdx, %rax	# D.11757, PL_stack_sp.201
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.201, PL_stack_sp
	nop
.LBE37:
	.loc 1 458 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	XS_IO__Handle_flush, .-XS_IO__Handle_flush
	.section	.rodata
	.align 8
.LC14:
	.string	"Usage: IO::Handle::setbuf(handle, ...)"
.LC15:
	.string	"IO::Handle::setbuf"
	.text
	.globl	XS_IO__Handle_setbuf
	.type	XS_IO__Handle_setbuf, @function
XS_IO__Handle_setbuf:
.LFB14:
	.loc 1 462 0
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
	.loc 1 463 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.202
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.203
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.205
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.205, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.204_4, D.11759
	cltq
	salq	$3, %rax	#, D.11760
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.206
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.207
	subq	%rax, %rdx	# PL_stack_base.208, D.11761
	movq	%rdx, %rax	# D.11761, D.11761
	sarq	$3, %rax	#, tmp93
	addl	$1, %eax	#, D.11762
	movl	%eax, -40(%rbp)	# D.11762, ax
	movq	%r12, %rdx	# sp, sp.209
	movq	%rbx, %rax	# mark, mark.210
	subq	%rax, %rdx	# mark.210, D.11761
	movq	%rdx, %rax	# D.11761, D.11761
	sarq	$3, %rax	#, tmp94
	movl	%eax, -36(%rbp)	# D.11761, items
	.loc 1 464 0
	cmpl	$0, -36(%rbp)	#, items
	jg	.L101	#,
	.loc 1 465 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L101:
.LBB38:
	.loc 1 467 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.211
	movl	-40(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rdx	# tmp95, D.11760
	salq	$3, %rdx	#, D.11760
	addq	%rdx, %rax	# D.11760, D.11763
	movq	(%rax), %rax	# *_26, D.11764
	movq	%rax, %rdi	# D.11764,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _28->sv_any, D.11766
	movq	64(%rax), %rax	# _29->xio_ofp, tmp96
	movq	%rax, -32(%rbp)	# tmp96, handle
	.loc 1 469 0
	cmpq	$0, -32(%rbp)	#, handle
	je	.L102	#,
	.loc 1 477 0
	movl	$.LC15, %edi	#,
	call	not_here	#
.L102:
.LBE38:
.LBB39:
	.loc 1 481 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.212
	movl	-40(%rbp), %edx	# ax, tmp97
	movslq	%edx, %rcx	# tmp97, D.11767
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.213
	addq	%rcx, %rdx	# D.11767, D.11767
	salq	$3, %rdx	#, D.11767
	subq	$8, %rdx	#, D.11767
	addq	%rdx, %rax	# D.11767, PL_stack_sp.214
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.214, PL_stack_sp
	nop
.LBE39:
	.loc 1 482 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	XS_IO__Handle_setbuf, .-XS_IO__Handle_setbuf
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: IO::Handle::setvbuf(handle, buf, type, size)"
.LC17:
	.string	"IO::Handle::setvbuf"
	.text
	.globl	XS_IO__Handle_setvbuf
	.type	XS_IO__Handle_setvbuf, @function
XS_IO__Handle_setvbuf:
.LFB15:
	.loc 1 486 0
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
	.loc 1 487 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.215
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.216
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.218
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.218, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.217_4, D.11770
	cltq
	salq	$3, %rax	#, D.11771
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.219
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.220
	subq	%rax, %rdx	# PL_stack_base.221, D.11772
	movq	%rdx, %rax	# D.11772, D.11772
	sarq	$3, %rax	#, tmp102
	addl	$1, %eax	#, D.11773
	movl	%eax, -36(%rbp)	# D.11773, ax
	movq	%r12, %rdx	# sp, sp.222
	movq	%rbx, %rax	# mark, mark.223
	subq	%rax, %rdx	# mark.223, D.11772
	movq	%rdx, %rax	# D.11772, D.11772
	sarq	$3, %rax	#, tmp103
	movl	%eax, -32(%rbp)	# D.11772, items
.LBB40:
	.loc 1 491 0
	cmpl	$4, -32(%rbp)	#, items
	je	.L105	#,
	.loc 1 492 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L105:
	.loc 1 516 0
	movl	$.LC17, %edi	#,
	call	not_here	#
	movl	%eax, -28(%rbp)	# tmp104, RETVAL
	.loc 1 519 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.224
	movl	-36(%rbp), %edx	# ax, tmp105
	movslq	%edx, %rdx	# tmp105, D.11771
	salq	$3, %rdx	#, D.11771
	leaq	(%rax,%rdx), %rbx	#, D.11774
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.11775, *_27
	.loc 1 520 0
	cmpl	$-1, -28(%rbp)	#, RETVAL
	je	.L106	#,
	.loc 1 521 0
	cmpl	$0, -28(%rbp)	#, RETVAL
	jne	.L107	#,
	.loc 1 522 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.225
	movl	-36(%rbp), %edx	# ax, tmp106
	movslq	%edx, %rdx	# tmp106, D.11771
	salq	$3, %rdx	#, D.11771
	addq	%rdx, %rax	# D.11771, D.11774
	movq	(%rax), %rax	# *_32, D.11775
	movl	$10, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11775,
	call	Perl_sv_setpvn	#
	jmp	.L106	#
.L107:
	.loc 1 524 0
	movl	-28(%rbp), %eax	# RETVAL, tmp107
	movslq	%eax, %rdx	# tmp107, D.11772
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.226
	movl	-36(%rbp), %ecx	# ax, tmp108
	movslq	%ecx, %rcx	# tmp108, D.11771
	salq	$3, %rcx	#, D.11771
	addq	%rcx, %rax	# D.11771, D.11774
	movq	(%rax), %rax	# *_38, D.11775
	movq	%rdx, %rsi	# D.11772,
	movq	%rax, %rdi	# D.11775,
	call	Perl_sv_setiv	#
.L106:
.LBE40:
.LBB41:
	.loc 1 527 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.227
	movl	-36(%rbp), %edx	# ax, tmp109
	movslq	%edx, %rcx	# tmp109, D.11776
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.228
	addq	%rcx, %rdx	# D.11776, D.11776
	salq	$3, %rdx	#, D.11776
	subq	$8, %rdx	#, D.11776
	addq	%rdx, %rax	# D.11776, PL_stack_sp.229
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.229, PL_stack_sp
	nop
.LBE41:
	.loc 1 528 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	XS_IO__Handle_setvbuf, .-XS_IO__Handle_setvbuf
	.section	.rodata
	.align 8
.LC18:
	.string	"Usage: IO::Handle::sync(handle)"
.LC19:
	.string	"IO::Handle::sync"
	.text
	.globl	XS_IO__Handle_sync
	.type	XS_IO__Handle_sync, @function
XS_IO__Handle_sync:
.LFB16:
	.loc 1 532 0
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
	.loc 1 533 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.230
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.231
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.233
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.233, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.232_4, D.11779
	cltq
	salq	$3, %rax	#, D.11780
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.234
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.235
	subq	%rax, %rdx	# PL_stack_base.236, D.11781
	movq	%rdx, %rax	# D.11781, D.11781
	sarq	$3, %rax	#, tmp109
	addl	$1, %eax	#, D.11782
	movl	%eax, -44(%rbp)	# D.11782, ax
	movq	%r12, %rdx	# sp, sp.237
	movq	%rbx, %rax	# mark, mark.238
	subq	%rax, %rdx	# mark.238, D.11781
	movq	%rdx, %rax	# D.11781, D.11781
	sarq	$3, %rax	#, tmp110
	movl	%eax, -40(%rbp)	# D.11781, items
	.loc 1 534 0
	cmpl	$1, -40(%rbp)	#, items
	je	.L110	#,
	.loc 1 535 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L110:
.LBB42:
	.loc 1 537 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.239
	movl	-44(%rbp), %edx	# ax, tmp111
	movslq	%edx, %rdx	# tmp111, D.11780
	salq	$3, %rdx	#, D.11780
	addq	%rdx, %rax	# D.11780, D.11783
	movq	(%rax), %rax	# *_26, D.11784
	movq	%rax, %rdi	# D.11784,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _28->sv_any, D.11786
	movq	64(%rax), %rax	# _29->xio_ofp, tmp112
	movq	%rax, -32(%rbp)	# tmp112, handle
	.loc 1 548 0
	movl	$.LC19, %edi	#,
	call	not_here	#
	movl	%eax, -36(%rbp)	# tmp113, RETVAL
	.loc 1 551 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.240
	movl	-44(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.11780
	salq	$3, %rdx	#, D.11780
	leaq	(%rax,%rdx), %rbx	#, D.11783
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.11784, *_35
	.loc 1 552 0
	cmpl	$-1, -36(%rbp)	#, RETVAL
	je	.L111	#,
	.loc 1 553 0
	cmpl	$0, -36(%rbp)	#, RETVAL
	jne	.L112	#,
	.loc 1 554 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.241
	movl	-44(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.11780
	salq	$3, %rdx	#, D.11780
	addq	%rdx, %rax	# D.11780, D.11783
	movq	(%rax), %rax	# *_40, D.11784
	movl	$10, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11784,
	call	Perl_sv_setpvn	#
	jmp	.L111	#
.L112:
	.loc 1 556 0
	movl	-36(%rbp), %eax	# RETVAL, tmp116
	movslq	%eax, %rdx	# tmp116, D.11781
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.242
	movl	-44(%rbp), %ecx	# ax, tmp117
	movslq	%ecx, %rcx	# tmp117, D.11780
	salq	$3, %rcx	#, D.11780
	addq	%rcx, %rax	# D.11780, D.11783
	movq	(%rax), %rax	# *_46, D.11784
	movq	%rdx, %rsi	# D.11781,
	movq	%rax, %rdi	# D.11784,
	call	Perl_sv_setiv	#
.L111:
.LBE42:
.LBB43:
	.loc 1 559 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.243
	movl	-44(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rcx	# tmp118, D.11787
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.244
	addq	%rcx, %rdx	# D.11787, D.11787
	salq	$3, %rdx	#, D.11787
	subq	$8, %rdx	#, D.11787
	addq	%rdx, %rax	# D.11787, PL_stack_sp.245
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.245, PL_stack_sp
	nop
.LBE43:
	.loc 1 560 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	XS_IO__Handle_sync, .-XS_IO__Handle_sync
	.section	.rodata
	.align 8
.LC20:
	.string	"Usage: IO::Socket::sockatmark(sock)"
	.text
	.globl	XS_IO__Socket_sockatmark
	.type	XS_IO__Socket_sockatmark, @function
XS_IO__Socket_sockatmark:
.LFB17:
	.loc 1 564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 565 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.246
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.247
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.249
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.249, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.248_4, D.11790
	cltq
	salq	$3, %rax	#, D.11791
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.250
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.251
	subq	%rax, %rdx	# PL_stack_base.252, D.11792
	movq	%rdx, %rax	# D.11792, D.11792
	sarq	$3, %rax	#, tmp121
	addl	$1, %eax	#, D.11793
	movl	%eax, -56(%rbp)	# D.11793, ax
	movq	%r12, %rdx	# sp, sp.253
	movq	%rbx, %rax	# mark, mark.254
	subq	%rax, %rdx	# mark.254, D.11792
	movq	%rdx, %rax	# D.11792, D.11792
	sarq	$3, %rax	#, tmp122
	movl	%eax, -52(%rbp)	# D.11792, items
	.loc 1 566 0
	cmpl	$1, -52(%rbp)	#, items
	je	.L115	#,
	.loc 1 567 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L115:
.LBB44:
	.loc 1 569 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.255
	movl	-56(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rdx	# tmp123, D.11791
	salq	$3, %rdx	#, D.11791
	addq	%rdx, %rax	# D.11791, D.11794
	movq	(%rax), %rax	# *_26, D.11795
	movq	%rax, %rdi	# D.11795,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _28->sv_any, D.11797
	movq	56(%rax), %rax	# _29->xio_ifp, tmp124
	movq	%rax, -40(%rbp)	# tmp124, sock
	.loc 1 576 0
	movq	-40(%rbp), %rax	# sock, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -48(%rbp)	# tmp126, fd
.LBB45:
	.loc 1 581 0
	movl	$0, -60(%rbp)	#, flag
	.loc 1 586 0
	leaq	-60(%rbp), %rdx	#, tmp127
	movl	-48(%rbp), %eax	# fd, tmp128
	movl	$35077, %esi	#,
	movl	%eax, %edi	# tmp128,
	movl	$0, %eax	#,
	call	ioctl	#
	testl	%eax, %eax	# D.11790
	je	.L116	#,
.LBB46:
	.loc 1 588 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.256
	movl	-56(%rbp), %edx	# ax, tmp129
	movslq	%edx, %rdx	# tmp129, D.11791
	salq	$3, %rdx	#, D.11791
	addq	%rdx, %rax	# D.11791, D.11794
	movq	$PL_sv_undef, (%rax)	#, *_36
.LBB47:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.257
	movl	-56(%rbp), %edx	# ax, tmp130
	movslq	%edx, %rcx	# tmp130, D.11798
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.258
	addq	%rcx, %rdx	# D.11798, D.11798
	salq	$3, %rdx	#, D.11798
	subq	$8, %rdx	#, D.11798
	addq	%rdx, %rax	# D.11798, PL_stack_sp.259
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.259, PL_stack_sp
	nop
	jmp	.L114	#
.L116:
.LBE47:
.LBE46:
	.loc 1 592 0
	movl	-60(%rbp), %eax	# flag, tmp131
	movl	%eax, -44(%rbp)	# tmp131, RETVAL
.LBE45:
	.loc 1 597 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.260
	movl	-56(%rbp), %edx	# ax, tmp132
	movslq	%edx, %rdx	# tmp132, D.11791
	salq	$3, %rdx	#, D.11791
	leaq	(%rax,%rdx), %rbx	#, D.11794
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.11795, *_49
	.loc 1 598 0
	cmpl	$-1, -44(%rbp)	#, RETVAL
	je	.L119	#,
	.loc 1 599 0
	cmpl	$0, -44(%rbp)	#, RETVAL
	jne	.L121	#,
	.loc 1 600 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.261
	movl	-56(%rbp), %edx	# ax, tmp133
	movslq	%edx, %rdx	# tmp133, D.11791
	salq	$3, %rdx	#, D.11791
	addq	%rdx, %rax	# D.11791, D.11794
	movq	(%rax), %rax	# *_54, D.11795
	movl	$10, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11795,
	call	Perl_sv_setpvn	#
	jmp	.L119	#
.L121:
	.loc 1 602 0
	movl	-44(%rbp), %eax	# RETVAL, tmp134
	movslq	%eax, %rdx	# tmp134, D.11792
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.262
	movl	-56(%rbp), %ecx	# ax, tmp135
	movslq	%ecx, %rcx	# tmp135, D.11791
	salq	$3, %rcx	#, D.11791
	addq	%rcx, %rax	# D.11791, D.11794
	movq	(%rax), %rax	# *_60, D.11795
	movq	%rdx, %rsi	# D.11792,
	movq	%rax, %rdi	# D.11795,
	call	Perl_sv_setiv	#
.L119:
.LBE44:
.LBB48:
	.loc 1 605 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.263
	movl	-56(%rbp), %edx	# ax, tmp136
	movslq	%edx, %rcx	# tmp136, D.11798
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.264
	addq	%rcx, %rdx	# D.11798, D.11798
	salq	$3, %rdx	#, D.11798
	subq	$8, %rdx	#, D.11798
	addq	%rdx, %rax	# D.11798, PL_stack_sp.265
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.265, PL_stack_sp
	nop
.L114:
.LBE48:
	.loc 1 606 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	XS_IO__Socket_sockatmark, .-XS_IO__Socket_sockatmark
	.section	.rodata
.LC21:
	.string	"IO.c"
.LC22:
	.string	"IO::Seekable::getpos"
.LC23:
	.string	"IO::Seekable::setpos"
.LC24:
	.string	"IO::File::new_tmpfile"
.LC25:
	.string	"IO::Poll::_poll"
.LC26:
	.string	"IO::Handle::blocking"
.LC27:
	.string	"$;$"
.LC28:
	.string	"IO::Handle::ungetc"
.LC29:
	.string	"IO::Handle::error"
.LC30:
	.string	"IO::Handle::clearerr"
.LC31:
	.string	"IO::Handle::untaint"
.LC32:
	.string	"IO::Handle::flush"
.LC33:
	.string	"IO::Socket::sockatmark"
.LC34:
	.string	"$"
.LC35:
	.string	"IO::Poll"
.LC36:
	.string	"POLLIN"
.LC37:
	.string	"POLLPRI"
.LC38:
	.string	"POLLOUT"
.LC39:
	.string	"POLLRDNORM"
.LC40:
	.string	"POLLWRNORM"
.LC41:
	.string	"POLLRDBAND"
.LC42:
	.string	"POLLWRBAND"
.LC43:
	.string	"POLLNORM"
.LC44:
	.string	"POLLERR"
.LC45:
	.string	"POLLHUP"
.LC46:
	.string	"POLLNVAL"
.LC47:
	.string	"IO::Handle"
.LC48:
	.string	"_IOFBF"
.LC49:
	.string	"_IOLBF"
.LC50:
	.string	"_IONBF"
.LC51:
	.string	"SEEK_SET"
.LC52:
	.string	"SEEK_CUR"
.LC53:
	.string	"SEEK_END"
	.text
	.globl	boot_IO
	.type	boot_IO, @function
boot_IO:
.LFB18:
	.loc 1 613 0
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
	.loc 1 614 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.266
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.267
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.269
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.269, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.268_4, D.11800
	cltq
	salq	$3, %rax	#, D.11801
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.270
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.271
	subq	%rax, %rdx	# PL_stack_base.272, D.11802
	movq	%rdx, %rax	# D.11802, D.11802
	sarq	$3, %rax	#, tmp109
	addl	$1, %eax	#, D.11803
	movl	%eax, -48(%rbp)	# D.11803, ax
	movq	%r12, %rdx	# sp, sp.273
	movq	%rbx, %rax	# mark, mark.274
	subq	%rax, %rdx	# mark.274, D.11802
	movq	%rdx, %rax	# D.11802, D.11802
	sarq	$3, %rax	#, tmp110
	movl	%eax, -44(%rbp)	# D.11802, items
	.loc 1 615 0
	movq	$.LC21, -40(%rbp)	#, file
	.loc 1 619 0
	movq	-40(%rbp), %rax	# file, tmp111
	movq	%rax, %rdx	# tmp111,
	movl	$XS_IO__Seekable_getpos, %esi	#,
	movl	$.LC22, %edi	#,
	call	Perl_newXS	#
	.loc 1 620 0
	movq	-40(%rbp), %rax	# file, tmp112
	movq	%rax, %rdx	# tmp112,
	movl	$XS_IO__Seekable_setpos, %esi	#,
	movl	$.LC23, %edi	#,
	call	Perl_newXS	#
	.loc 1 621 0
	movq	-40(%rbp), %rax	# file, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$XS_IO__File_new_tmpfile, %esi	#,
	movl	$.LC24, %edi	#,
	call	Perl_newXS	#
	.loc 1 622 0
	movq	-40(%rbp), %rax	# file, tmp114
	movq	%rax, %rdx	# tmp114,
	movl	$XS_IO__Poll__poll, %esi	#,
	movl	$.LC25, %edi	#,
	call	Perl_newXS	#
	.loc 1 623 0
	movq	-40(%rbp), %rax	# file, tmp115
	movq	%rax, %rdx	# tmp115,
	movl	$XS_IO__Handle_blocking, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_newXS	#
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.11804,
	call	Perl_sv_setpv	#
	.loc 1 624 0
	movq	-40(%rbp), %rax	# file, tmp116
	movq	%rax, %rdx	# tmp116,
	movl	$XS_IO__Handle_ungetc, %esi	#,
	movl	$.LC28, %edi	#,
	call	Perl_newXS	#
	.loc 1 625 0
	movq	-40(%rbp), %rax	# file, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$XS_IO__Handle_error, %esi	#,
	movl	$.LC29, %edi	#,
	call	Perl_newXS	#
	.loc 1 626 0
	movq	-40(%rbp), %rax	# file, tmp118
	movq	%rax, %rdx	# tmp118,
	movl	$XS_IO__Handle_clearerr, %esi	#,
	movl	$.LC30, %edi	#,
	call	Perl_newXS	#
	.loc 1 627 0
	movq	-40(%rbp), %rax	# file, tmp119
	movq	%rax, %rdx	# tmp119,
	movl	$XS_IO__Handle_untaint, %esi	#,
	movl	$.LC31, %edi	#,
	call	Perl_newXS	#
	.loc 1 628 0
	movq	-40(%rbp), %rax	# file, tmp120
	movq	%rax, %rdx	# tmp120,
	movl	$XS_IO__Handle_flush, %esi	#,
	movl	$.LC32, %edi	#,
	call	Perl_newXS	#
	.loc 1 629 0
	movq	-40(%rbp), %rax	# file, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	$XS_IO__Handle_setbuf, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_newXS	#
	.loc 1 630 0
	movq	-40(%rbp), %rax	# file, tmp122
	movq	%rax, %rdx	# tmp122,
	movl	$XS_IO__Handle_setvbuf, %esi	#,
	movl	$.LC17, %edi	#,
	call	Perl_newXS	#
	.loc 1 631 0
	movq	-40(%rbp), %rax	# file, tmp123
	movq	%rax, %rdx	# tmp123,
	movl	$XS_IO__Handle_sync, %esi	#,
	movl	$.LC19, %edi	#,
	call	Perl_newXS	#
	.loc 1 632 0
	movq	-40(%rbp), %rax	# file, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$XS_IO__Socket_sockatmark, %esi	#,
	movl	$.LC33, %edi	#,
	call	Perl_newXS	#
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# D.11804,
	call	Perl_sv_setpv	#
.LBB49:
	.loc 1 642 0
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -32(%rbp)	# tmp125, stash
	.loc 1 644 0
	movl	$1, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp126
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	Perl_newCONSTSUB	#
	.loc 1 647 0
	movl	$2, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp127
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	Perl_newCONSTSUB	#
	.loc 1 650 0
	movl	$4, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp128
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	Perl_newCONSTSUB	#
	.loc 1 653 0
	movl	$64, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp129
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	Perl_newCONSTSUB	#
	.loc 1 656 0
	movl	$4, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp130
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	Perl_newCONSTSUB	#
	.loc 1 659 0
	movl	$128, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp131
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	Perl_newCONSTSUB	#
	.loc 1 662 0
	movl	$256, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp132
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	Perl_newCONSTSUB	#
	.loc 1 665 0
	movl	$64, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp133
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	Perl_newCONSTSUB	#
	.loc 1 668 0
	movl	$8, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp134
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	Perl_newCONSTSUB	#
	.loc 1 671 0
	movl	$16, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp135
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	Perl_newCONSTSUB	#
	.loc 1 674 0
	movl	$32, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp136
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	Perl_newCONSTSUB	#
	.loc 1 679 0
	movl	$1, %edx	#,
	movl	$10, %esi	#,
	movl	$.LC47, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -32(%rbp)	# tmp137, stash
	.loc 1 681 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp138
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	Perl_newCONSTSUB	#
	.loc 1 684 0
	movl	$1, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp139
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	Perl_newCONSTSUB	#
	.loc 1 687 0
	movl	$2, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp140
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	Perl_newCONSTSUB	#
	.loc 1 690 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp141
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	Perl_newCONSTSUB	#
	.loc 1 693 0
	movl	$1, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp142
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	Perl_newCONSTSUB	#
	.loc 1 696 0
	movl	$2, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.11805
	movq	-32(%rbp), %rax	# stash, tmp143
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	Perl_newCONSTSUB	#
.LBE49:
.LBB50:
	.loc 1 704 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.275
	movl	-48(%rbp), %edx	# ax, tmp144
	movslq	%edx, %rdx	# tmp144, D.11801
	salq	$3, %rdx	#, D.11801
	addq	%rdx, %rax	# D.11801, D.11806
	movq	$PL_sv_yes, (%rax)	#, *_48
.LBB51:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.276
	movl	-48(%rbp), %edx	# ax, tmp145
	movslq	%edx, %rcx	# tmp145, D.11807
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.277
	addq	%rcx, %rdx	# D.11807, D.11807
	salq	$3, %rdx	#, D.11807
	subq	$8, %rdx	#, D.11807
	addq	%rdx, %rax	# D.11807, PL_stack_sp.278
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.278, PL_stack_sp
	nop
.LBE51:
.LBE50:
	.loc 1 705 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	boot_IO, .-boot_IO
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "sv.h"
	.file 9 "regexp.h"
	.file 10 "gv.h"
	.file 11 "mg.h"
	.file 12 "av.h"
	.file 13 "hv.h"
	.file 14 "cv.h"
	.file 15 "handy.h"
	.file 16 "perlio.h"
	.file 17 "pad.h"
	.file 18 "poll.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c28
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF240
	.byte	0x1
	.long	.LASF241
	.long	.LASF242
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
	.byte	0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc0
	.uleb128 0x9
	.long	.LASF173
	.uleb128 0xa
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xe6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x104
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x170
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xcf3
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xcf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xd77
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xd61
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xbce
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xbce
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xbc4
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xbc4
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x7db
	.long	0x17c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x26a
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xcf3
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xcf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xd77
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xd61
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xbce
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xbce
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xbc4
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xbc4
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xcf3
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xcf3
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xcf3
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xcf3
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xd7d
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xd83
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xbe4
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xbe4
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xbc4
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xcdb
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x7e1
	.long	0x276
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x291
	.uleb128 0xf
	.long	.LASF38
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x29c
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.long	0x2cc
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x45
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x2d7
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x8
	.byte	0x55
	.long	0x307
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x56
	.long	0xcc3
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x312
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.long	0x342
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x5c
	.long	0xcc9
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x34d
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x8
	.byte	0x4f
	.long	0x37d
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x50
	.long	0xcbd
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x7ee
	.long	0x389
	.uleb128 0xe
	.long	.LASF43
	.byte	0x68
	.byte	0x9
	.byte	0x1f
	.long	0x462
	.uleb128 0xd
	.long	.LASF44
	.byte	0x9
	.byte	0x20
	.long	0xc7f
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xc7f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xc85
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xc90
	.byte	0x18
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x25
	.long	0xc9b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x28
	.long	0xca1
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xbd9
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xbd9
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xbd9
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xbd9
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xbe4
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xbe4
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xbe4
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xbe4
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xca7
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x46d
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xa
	.byte	0xb
	.long	0x509
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0xc
	.long	0xc0c
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xd50
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xd04
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xd16
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xcdb
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xd10
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xd04
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xbe4
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xbe4
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xbef
	.byte	0x48
	.uleb128 0xd
	.long	.LASF72
	.byte	0xa
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x514
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x8
	.byte	0x49
	.long	0x544
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x4a
	.long	0xcb7
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"IO"
	.byte	0x6
	.value	0x7f1
	.long	0x54f
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x8
	.byte	0x61
	.long	0x57f
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x62
	.long	0xccf
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xbe4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xbe4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.value	0x7f5
	.long	0x58b
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xb
	.byte	0x1a
	.long	0x5f8
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0xcd5
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xe8e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xbce
	.byte	0x10
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x1f
	.long	0xbc4
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xc0c
	.byte	0x18
	.uleb128 0xd
	.long	.LASF81
	.byte	0xb
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF82
	.byte	0xb
	.byte	0x22
	.long	0xbd9
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x604
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x8
	.byte	0xf9
	.long	0x635
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0x8
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x6
	.value	0x7f8
	.long	0x641
	.uleb128 0xe
	.long	.LASF87
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.long	0x682
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x6
	.value	0x7fd
	.long	0x68e
	.uleb128 0xe
	.long	.LASF90
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x713
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF93
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0x11
	.long	0xcd5
	.byte	0x28
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0x12
	.long	0xcdb
	.byte	0x30
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x14
	.long	0xd89
	.byte	0x38
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x15
	.long	0xc0c
	.byte	0x40
	.uleb128 0xd
	.long	.LASF100
	.byte	0xc
	.byte	0x16
	.long	0xbc4
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF101
	.byte	0x6
	.value	0x7fe
	.long	0x71f
	.uleb128 0xe
	.long	.LASF102
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x7b0
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF96
	.byte	0xd
	.byte	0x29
	.long	0xcd5
	.byte	0x28
	.uleb128 0xd
	.long	.LASF97
	.byte	0xd
	.byte	0x2a
	.long	0xcdb
	.byte	0x30
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x2c
	.long	0xbd9
	.byte	0x38
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x2d
	.long	0xe05
	.byte	0x40
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x2e
	.long	0xd7d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF111
	.byte	0x6
	.value	0x7ff
	.long	0x7bc
	.uleb128 0x10
	.long	.LASF112
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x866
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF96
	.byte	0x8
	.value	0x136
	.long	0xcd5
	.byte	0x28
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.value	0x137
	.long	0xcdb
	.byte	0x30
	.uleb128 0xf
	.long	.LASF113
	.byte	0x8
	.value	0x139
	.long	0xce1
	.byte	0x38
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF115
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF116
	.byte	0x8
	.value	0x13c
	.long	0xcdb
	.byte	0x50
	.uleb128 0xf
	.long	.LASF117
	.byte	0x8
	.value	0x13d
	.long	0xbc4
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF118
	.byte	0x6
	.value	0x800
	.long	0x872
	.uleb128 0xe
	.long	.LASF119
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x963
	.uleb128 0xd
	.long	.LASF83
	.byte	0xe
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xe
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xe
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF94
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF96
	.byte	0xe
	.byte	0x14
	.long	0xcd5
	.byte	0x28
	.uleb128 0xd
	.long	.LASF97
	.byte	0xe
	.byte	0x15
	.long	0xcdb
	.byte	0x30
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x17
	.long	0xcdb
	.byte	0x38
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x18
	.long	0xcf3
	.byte	0x40
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x19
	.long	0xcf3
	.byte	0x48
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x1a
	.long	0xd0a
	.byte	0x50
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x1b
	.long	0xb15
	.byte	0x58
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x1c
	.long	0xd10
	.byte	0x60
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x1f
	.long	0xd6c
	.byte	0x78
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x20
	.long	0xd04
	.byte	0x80
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x25
	.long	0xce7
	.byte	0x88
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x26
	.long	0xbe4
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x6
	.value	0x803
	.long	0x96f
	.uleb128 0x10
	.long	.LASF133
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xaa8
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF96
	.byte	0x8
	.value	0x176
	.long	0xcd5
	.byte	0x28
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.value	0x177
	.long	0xcdb
	.byte	0x30
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.value	0x179
	.long	0xd44
	.byte	0x38
	.uleb128 0xf
	.long	.LASF135
	.byte	0x8
	.value	0x17a
	.long	0xd44
	.byte	0x40
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x187
	.long	0xd1c
	.byte	0x48
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18d
	.long	0xd10
	.byte	0x78
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x18f
	.long	0xd10
	.byte	0x88
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x191
	.long	0xd10
	.byte	0x98
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.value	0x804
	.long	0xab4
	.uleb128 0xe
	.long	.LASF151
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xb15
	.uleb128 0xd
	.long	.LASF152
	.byte	0xb
	.byte	0xf
	.long	0xe25
	.byte	0
	.uleb128 0xd
	.long	.LASF153
	.byte	0xb
	.byte	0x10
	.long	0xe25
	.byte	0x8
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0x11
	.long	0xe3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x12
	.long	0xe25
	.byte	0x18
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x13
	.long	0xe25
	.byte	0x20
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.byte	0x14
	.long	0xe68
	.byte	0x28
	.uleb128 0xd
	.long	.LASF158
	.byte	0xb
	.byte	0x16
	.long	0xe88
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xb21
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xb83
	.uleb128 0x12
	.long	.LASF159
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF160
	.byte	0x6
	.value	0x9f3
	.long	0xbd9
	.uleb128 0x12
	.long	.LASF161
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF164
	.byte	0x6
	.value	0x9f7
	.long	0xc06
	.uleb128 0x12
	.long	.LASF165
	.byte	0x6
	.value	0x9f8
	.long	0xc06
	.byte	0
	.uleb128 0xb
	.long	.LASF166
	.byte	0x6
	.value	0x808
	.long	0xb8f
	.uleb128 0x10
	.long	.LASF167
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xbc4
	.uleb128 0xf
	.long	.LASF168
	.byte	0x8
	.value	0x4ee
	.long	0xd16
	.byte	0
	.uleb128 0xf
	.long	.LASF169
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF170
	.byte	0x8
	.value	0x4f0
	.long	0xd4a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0xf
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0xf
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0xf
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0xf
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF171
	.byte	0xf
	.value	0x209
	.long	0xbe4
	.uleb128 0x13
	.long	0xc06
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbfb
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xc22
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF172
	.byte	0x10
	.byte	0x63
	.long	0xc2d
	.uleb128 0x9
	.long	.LASF174
	.uleb128 0x5
	.long	.LASF175
	.byte	0x10
	.byte	0x65
	.long	0xc3d
	.uleb128 0x6
	.byte	0x8
	.long	0xc22
	.uleb128 0xe
	.long	.LASF176
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xc74
	.uleb128 0xd
	.long	.LASF169
	.byte	0x9
	.byte	0x14
	.long	0xbc4
	.byte	0
	.uleb128 0xd
	.long	.LASF177
	.byte	0x9
	.byte	0x15
	.long	0xbc4
	.byte	0x1
	.uleb128 0xd
	.long	.LASF178
	.byte	0x9
	.byte	0x16
	.long	0xbce
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF176
	.byte	0x9
	.byte	0x19
	.long	0xc43
	.uleb128 0x6
	.byte	0x8
	.long	0xbd9
	.uleb128 0x6
	.byte	0x8
	.long	0xc74
	.uleb128 0x9
	.long	.LASF179
	.uleb128 0x6
	.byte	0x8
	.long	0xc8b
	.uleb128 0x9
	.long	.LASF180
	.uleb128 0x6
	.byte	0x8
	.long	0xc96
	.uleb128 0x6
	.byte	0x8
	.long	0xbe4
	.uleb128 0x15
	.long	0xc74
	.long	0xcb7
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7b0
	.uleb128 0x6
	.byte	0x8
	.long	0x866
	.uleb128 0x6
	.byte	0x8
	.long	0x682
	.uleb128 0x6
	.byte	0x8
	.long	0x713
	.uleb128 0x6
	.byte	0x8
	.long	0x963
	.uleb128 0x6
	.byte	0x8
	.long	0x57f
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x462
	.uleb128 0xb
	.long	.LASF181
	.byte	0x8
	.value	0x150
	.long	0xbce
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xd04
	.uleb128 0x14
	.long	0xd04
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xcf9
	.uleb128 0x6
	.byte	0x8
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x2cc
	.uleb128 0x17
	.byte	0x8
	.byte	0x8
	.value	0x184
	.long	0xd3e
	.uleb128 0x12
	.long	.LASF182
	.byte	0x8
	.value	0x185
	.long	0xd3e
	.uleb128 0x12
	.long	.LASF183
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xc32
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x54f
	.uleb128 0x5
	.long	.LASF184
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF185
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xd56
	.uleb128 0x18
	.long	0xcf3
	.uleb128 0x6
	.byte	0x8
	.long	0xd72
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xd99
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xdc9
	.uleb128 0xd
	.long	.LASF186
	.byte	0xd
	.byte	0x11
	.long	0xe05
	.byte	0
	.uleb128 0xd
	.long	.LASF187
	.byte	0xd
	.byte	0x12
	.long	0xe0b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF188
	.byte	0xd
	.byte	0x13
	.long	0xc0c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xdd4
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xe05
	.uleb128 0xd
	.long	.LASF189
	.byte	0xd
	.byte	0x18
	.long	0xbe4
	.byte	0
	.uleb128 0xd
	.long	.LASF190
	.byte	0xd
	.byte	0x19
	.long	0xbd9
	.byte	0x4
	.uleb128 0xd
	.long	.LASF191
	.byte	0xd
	.byte	0x1a
	.long	0xc12
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd8f
	.uleb128 0x6
	.byte	0x8
	.long	0xdc9
	.uleb128 0x19
	.long	0x57
	.long	0xe25
	.uleb128 0x14
	.long	0xc0c
	.uleb128 0x14
	.long	0xcd5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe11
	.uleb128 0x19
	.long	0xbe4
	.long	0xe3f
	.uleb128 0x14
	.long	0xc0c
	.uleb128 0x14
	.long	0xcd5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe2b
	.uleb128 0x19
	.long	0x57
	.long	0xe68
	.uleb128 0x14
	.long	0xc0c
	.uleb128 0x14
	.long	0xcd5
	.uleb128 0x14
	.long	0xc0c
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe45
	.uleb128 0x19
	.long	0x57
	.long	0xe82
	.uleb128 0x14
	.long	0xcd5
	.uleb128 0x14
	.long	0xe82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb83
	.uleb128 0x6
	.byte	0x8
	.long	0xe6e
	.uleb128 0x6
	.byte	0x8
	.long	0xaa8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF192
	.uleb128 0xe
	.long	.LASF193
	.byte	0x8
	.byte	0x12
	.byte	0x1c
	.long	0xecb
	.uleb128 0x1a
	.string	"fd"
	.byte	0x12
	.byte	0x1d
	.long	0x57
	.byte	0
	.uleb128 0xd
	.long	.LASF194
	.byte	0x12
	.byte	0x1e
	.long	0x50
	.byte	0x4
	.uleb128 0xd
	.long	.LASF195
	.byte	0x12
	.byte	0x1f
	.long	0x50
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF196
	.byte	0x1
	.byte	0x2d
	.long	0x57
	.uleb128 0x5
	.long	.LASF197
	.byte	0x1
	.byte	0x2e
	.long	0xd44
	.uleb128 0x5
	.long	.LASF198
	.byte	0x1
	.byte	0x2f
	.long	0xd44
	.uleb128 0x1b
	.long	.LASF199
	.byte	0x1
	.byte	0x3e
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1a
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x3e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF200
	.byte	0x1
	.byte	0x4a
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb2
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.byte	0x4a
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF201
	.byte	0x1
	.byte	0x4a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x1
	.byte	0x4d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1e
	.long	.LASF203
	.byte	0x1
	.byte	0x54
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.byte	0x55
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF209
	.byte	0x1
	.byte	0x83
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1056
	.uleb128 0x1c
	.string	"cv"
	.byte	0x1
	.byte	0x83
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x85
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0x85
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0x85
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0x85
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1035
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.byte	0x89
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.byte	0x9f
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF210
	.byte	0x1
	.byte	0xa3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1117
	.uleb128 0x1c
	.string	"cv"
	.byte	0x1
	.byte	0xa3
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xa5
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0xa5
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0xa5
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0xa5
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x10f6
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.byte	0xa9
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"pos"
	.byte	0x1
	.byte	0xaa
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x1
	.byte	0xab
	.long	0xecb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.byte	0xc9
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF211
	.byte	0x1
	.byte	0xcd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d7
	.uleb128 0x1c
	.string	"cv"
	.byte	0x1
	.byte	0xcd
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xcf
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0xcf
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0xcf
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0xcf
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x11b6
	.uleb128 0x1e
	.long	.LASF212
	.byte	0x1
	.byte	0xd3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"fp"
	.byte	0x1
	.byte	0xd5
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"gv"
	.byte	0x1
	.byte	0xd6
	.long	0xd10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.byte	0xf1
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF213
	.byte	0x1
	.byte	0xf5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e5
	.uleb128 0x1c
	.string	"cv"
	.byte	0x1
	.byte	0xf5
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xf7
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0xf7
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0xf7
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0xf7
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1e
	.long	.LASF214
	.byte	0x1
	.byte	0xfc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.string	"nfd"
	.byte	0x1
	.value	0x100
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0x101
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"fds"
	.byte	0x1
	.value	0x102
	.long	0x12e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x103
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x103
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.value	0x103
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x112
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe9b
	.uleb128 0x25
	.long	.LASF216
	.byte	0x1
	.value	0x11e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ea
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x11e
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x120
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x120
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x120
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x120
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x124
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"blk"
	.byte	0x1
	.value	0x125
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.value	0x12e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x13c6
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x130
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x132
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF217
	.byte	0x1
	.value	0x13a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c3
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x13a
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x13c
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x13c
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x13c
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x13c
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x14a1
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x140
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x141
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x142
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x143
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x152
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF219
	.byte	0x1
	.value	0x156
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x158e
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x156
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x158
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x158
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x158
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x158
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x156c
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x15c
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x15d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x15e
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x16d
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF220
	.byte	0x1
	.value	0x171
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1659
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x171
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x173
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x173
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x173
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x173
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x1637
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x177
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x178
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x179
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x18a
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF221
	.byte	0x1
	.value	0x18e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1734
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x18e
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x190
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x190
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x190
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x190
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1712
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x194
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x195
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x196
	.long	0xc0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x199
	.long	0x1734
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x1a9
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x25
	.long	.LASF222
	.byte	0x1
	.value	0x1ad
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x17f5
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1ad
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1af
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x1af
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x1af
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x1af
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x17d3
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x1b3
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x1b4
	.long	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1f
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x1c9
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF223
	.byte	0x1
	.value	0x1cd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a1
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1cd
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1cf
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x1cf
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x1cf
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x1cf
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x187f
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x1d3
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x1e1
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF224
	.byte	0x1
	.value	0x1e5
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x194d
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1e5
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1e7
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x1e7
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x1e7
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x1e7
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x192b
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x1e9
	.long	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1f
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x20f
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF225
	.byte	0x1
	.value	0x213
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a08
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x213
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x215
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x215
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x215
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x215
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x19e6
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x219
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x21a
	.long	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1f
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x22f
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF226
	.byte	0x1
	.value	0x233
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b16
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x233
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x235
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x235
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x235
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x235
	.long	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x1af4
	.uleb128 0x24
	.long	.LASF227
	.byte	0x1
	.value	0x239
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.value	0x23b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x23d
	.long	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x24
	.long	.LASF228
	.byte	0x1
	.value	0x245
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x24c
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x25d
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF229
	.byte	0x1
	.value	0x264
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd1
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x264
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x266
	.long	0xd89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x266
	.long	0xd89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x266
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x266
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF230
	.byte	0x1
	.value	0x267
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x1baf
	.uleb128 0x24
	.long	.LASF231
	.byte	0x1
	.value	0x27e
	.long	0xcdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x2c0
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF232
	.byte	0x13
	.value	0x125
	.long	0x291
	.uleb128 0x27
	.long	.LASF233
	.byte	0x13
	.value	0x127
	.long	0x291
	.uleb128 0x28
	.long	.LASF234
	.byte	0x14
	.byte	0x22
	.long	0xd89
	.uleb128 0x28
	.long	.LASF235
	.byte	0x14
	.byte	0x26
	.long	0xcf3
	.uleb128 0x28
	.long	.LASF236
	.byte	0x14
	.byte	0x28
	.long	0xd89
	.uleb128 0x28
	.long	.LASF237
	.byte	0x14
	.byte	0x2a
	.long	0xd89
	.uleb128 0x28
	.long	.LASF238
	.byte	0x14
	.byte	0x3c
	.long	0xc7f
	.uleb128 0x28
	.long	.LASF239
	.byte	0x14
	.byte	0x43
	.long	0xc0c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF139:
	.string	"xio_page_len"
.LASF145:
	.string	"xio_bottom_name"
.LASF204:
	.string	"newmode"
.LASF61:
	.string	"gp_sv"
.LASF172:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF242:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF217:
	.string	"XS_IO__Handle_ungetc"
.LASF118:
	.string	"XPVCV"
.LASF212:
	.string	"packname"
.LASF152:
	.string	"svt_get"
.LASF199:
	.string	"not_here"
.LASF148:
	.string	"xio_type"
.LASF119:
	.string	"xpvcv"
.LASF79:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF169:
	.string	"flags"
.LASF104:
	.string	"xhv_fill"
.LASF72:
	.string	"gp_file"
.LASF149:
	.string	"xio_flags"
.LASF229:
	.string	"boot_IO"
.LASF176:
	.string	"regnode"
.LASF163:
	.string	"any_bool"
.LASF31:
	.string	"op_pmregexp"
.LASF184:
	.string	"PADLIST"
.LASF48:
	.string	"precomp"
.LASF100:
	.string	"xav_flags"
.LASF209:
	.string	"XS_IO__Seekable_getpos"
.LASF116:
	.string	"xgv_stash"
.LASF45:
	.string	"endp"
.LASF203:
	.string	"mode"
.LASF10:
	.string	"ssize_t"
.LASF97:
	.string	"xmg_stash"
.LASF174:
	.string	"_PerlIO"
.LASF30:
	.string	"op_pmnext"
.LASF239:
	.string	"PL_Sv"
.LASF123:
	.string	"xcv_xsub"
.LASF196:
	.string	"SysRet"
.LASF75:
	.string	"mg_moremagic"
.LASF68:
	.string	"gp_cv"
.LASF93:
	.string	"xav_max"
.LASF175:
	.string	"PerlIO"
.LASF192:
	.string	"float"
.LASF106:
	.string	"xhv_keys"
.LASF47:
	.string	"substrs"
.LASF208:
	.string	"tmpXSoff"
.LASF241:
	.string	"IO.c"
.LASF151:
	.string	"mgvtbl"
.LASF126:
	.string	"xcv_file"
.LASF125:
	.string	"xcv_gv"
.LASF12:
	.string	"long long unsigned int"
.LASF230:
	.string	"file"
.LASF42:
	.string	"REGEXP"
.LASF180:
	.string	"reg_data"
.LASF167:
	.string	"clone_params"
.LASF179:
	.string	"reg_substr_data"
.LASF194:
	.string	"events"
.LASF77:
	.string	"mg_private"
.LASF219:
	.string	"XS_IO__Handle_error"
.LASF88:
	.string	"xiv_iv"
.LASF117:
	.string	"xgv_flags"
.LASF137:
	.string	"xio_lines"
.LASF37:
	.string	"interpreter"
.LASF66:
	.string	"gp_hv"
.LASF83:
	.string	"xpv_pv"
.LASF111:
	.string	"XPVGV"
.LASF140:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF189:
	.string	"hek_hash"
.LASF165:
	.string	"any_dxptr"
.LASF112:
	.string	"xpvgv"
.LASF171:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF82:
	.string	"mg_len"
.LASF220:
	.string	"XS_IO__Handle_clearerr"
.LASF127:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF144:
	.string	"xio_fmt_gv"
.LASF236:
	.string	"PL_curpad"
.LASF191:
	.string	"hek_key"
.LASF60:
	.string	"program"
.LASF63:
	.string	"gp_io"
.LASF109:
	.string	"xhv_pmroot"
.LASF101:
	.string	"XPVHV"
.LASF155:
	.string	"svt_clear"
.LASF210:
	.string	"XS_IO__Seekable_setpos"
.LASF223:
	.string	"XS_IO__Handle_setbuf"
.LASF136:
	.string	"xio_dirpu"
.LASF102:
	.string	"xpvhv"
.LASF28:
	.string	"op_pmreplroot"
.LASF215:
	.string	"tmpsv"
.LASF34:
	.string	"op_pmdynflags"
.LASF157:
	.string	"svt_copy"
.LASF85:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF221:
	.string	"XS_IO__Handle_untaint"
.LASF132:
	.string	"XPVIO"
.LASF161:
	.string	"any_iv"
.LASF168:
	.string	"stashes"
.LASF55:
	.string	"prelen"
.LASF86:
	.string	"XPVIV"
.LASF62:
	.string	"gp_refcnt"
.LASF57:
	.string	"lastparen"
.LASF133:
	.string	"xpvio"
.LASF218:
	.string	"targ"
.LASF49:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF237:
	.string	"PL_stack_base"
.LASF87:
	.string	"xpviv"
.LASF232:
	.string	"PL_sv_undef"
.LASF52:
	.string	"sublen"
.LASF200:
	.string	"io_blocking"
.LASF27:
	.string	"op_last"
.LASF187:
	.string	"hent_hek"
.LASF59:
	.string	"reganch"
.LASF50:
	.string	"subbeg"
.LASF170:
	.string	"proto_perl"
.LASF74:
	.string	"magic"
.LASF186:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF103:
	.string	"xhv_array"
.LASF198:
	.string	"OutputStream"
.LASF141:
	.string	"xio_top_name"
.LASF58:
	.string	"lastcloseparen"
.LASF205:
	.string	"mark"
.LASF216:
	.string	"XS_IO__Handle_blocking"
.LASF76:
	.string	"mg_virtual"
.LASF24:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF110:
	.string	"xhv_name"
.LASF81:
	.string	"mg_ptr"
.LASF233:
	.string	"PL_sv_yes"
.LASF134:
	.string	"xio_ifp"
.LASF38:
	.string	"broiled"
.LASF227:
	.string	"sock"
.LASF16:
	.string	"op_next"
.LASF98:
	.string	"xav_alloc"
.LASF67:
	.string	"gp_egv"
.LASF44:
	.string	"startp"
.LASF206:
	.string	"items"
.LASF39:
	.string	"sv_any"
.LASF178:
	.string	"next_off"
.LASF35:
	.string	"op_pmstash"
.LASF138:
	.string	"xio_page"
.LASF183:
	.string	"xiou_any"
.LASF146:
	.string	"xio_bottom_gv"
.LASF29:
	.string	"op_pmreplstart"
.LASF73:
	.string	"MAGIC"
.LASF224:
	.string	"XS_IO__Handle_setvbuf"
.LASF197:
	.string	"InputStream"
.LASF154:
	.string	"svt_len"
.LASF240:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF41:
	.string	"sv_flags"
.LASF36:
	.string	"PerlInterpreter"
.LASF195:
	.string	"revents"
.LASF108:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF80:
	.string	"mg_obj"
.LASF64:
	.string	"gp_form"
.LASF26:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF121:
	.string	"xcv_start"
.LASF131:
	.string	"xcv_outside_seq"
.LASF91:
	.string	"xav_array"
.LASF226:
	.string	"XS_IO__Socket_sockatmark"
.LASF147:
	.string	"xio_subprocess"
.LASF51:
	.string	"offsets"
.LASF193:
	.string	"pollfd"
.LASF94:
	.string	"xof_off"
.LASF228:
	.string	"flag"
.LASF190:
	.string	"hek_len"
.LASF150:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF53:
	.string	"refcnt"
.LASF211:
	.string	"XS_IO__File_new_tmpfile"
.LASF201:
	.string	"block"
.LASF99:
	.string	"xav_arylen"
.LASF120:
	.string	"xcv_stash"
.LASF115:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF122:
	.string	"xcv_root"
.LASF43:
	.string	"regexp"
.LASF188:
	.string	"hent_val"
.LASF129:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF32:
	.string	"op_pmflags"
.LASF105:
	.string	"xhv_max"
.LASF128:
	.string	"xcv_padlist"
.LASF96:
	.string	"xmg_magic"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF160:
	.string	"any_i32"
.LASF153:
	.string	"svt_set"
.LASF166:
	.string	"CLONE_PARAMS"
.LASF143:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF173:
	.string	"__dirstream"
.LASF162:
	.string	"any_long"
.LASF231:
	.string	"stash"
.LASF25:
	.string	"pmop"
.LASF92:
	.string	"xav_fill"
.LASF177:
	.string	"type"
.LASF0:
	.string	"unsigned char"
.LASF107:
	.string	"xhv_riter"
.LASF113:
	.string	"xgv_gp"
.LASF225:
	.string	"XS_IO__Handle_sync"
.LASF214:
	.string	"timeout"
.LASF40:
	.string	"sv_refcnt"
.LASF95:
	.string	"xnv_nv"
.LASF70:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF78:
	.string	"mg_type"
.LASF130:
	.string	"xcv_flags"
.LASF158:
	.string	"svt_dup"
.LASF84:
	.string	"xpv_cur"
.LASF159:
	.string	"any_ptr"
.LASF89:
	.string	"XPVAV"
.LASF222:
	.string	"XS_IO__Handle_flush"
.LASF156:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF185:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"op_pmpermflags"
.LASF90:
	.string	"xpvav"
.LASF207:
	.string	"handle"
.LASF65:
	.string	"gp_av"
.LASF69:
	.string	"gp_cvgen"
.LASF71:
	.string	"gp_line"
.LASF54:
	.string	"minlen"
.LASF124:
	.string	"xcv_xsubany"
.LASF181:
	.string	"cv_flags_t"
.LASF135:
	.string	"xio_ofp"
.LASF238:
	.string	"PL_markstack_ptr"
.LASF213:
	.string	"XS_IO__Poll__poll"
.LASF46:
	.string	"regstclass"
.LASF142:
	.string	"xio_top_gv"
.LASF56:
	.string	"nparens"
.LASF202:
	.string	"RETVAL"
.LASF182:
	.string	"xiou_dirp"
.LASF234:
	.string	"PL_stack_sp"
.LASF164:
	.string	"any_dptr"
.LASF235:
	.string	"PL_op"
.LASF114:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
