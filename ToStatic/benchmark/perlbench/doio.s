	.file	"doio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 doio.c -mtune=generic
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
	.globl	Perl_do_open
	.type	Perl_do_open, @function
Perl_do_open:
.LFB2:
	.file 1 "doio.c"
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# gv, gv
	movq	%rsi, %rax	# name, name
	movl	%edx, -12(%rbp)	# len, len
	movl	%ecx, -16(%rbp)	# as_raw, as_raw
	movl	%r8d, -20(%rbp)	# rawmode, rawmode
	movl	%r9d, -24(%rbp)	# rawperm, rawperm
	.loc 1 65 0
	movl	-24(%rbp), %r9d	# rawperm, tmp62
	movl	-20(%rbp), %r8d	# rawmode, tmp63
	movl	-16(%rbp), %ecx	# as_raw, tmp64
	movl	-12(%rbp), %edx	# len, tmp65
	movq	-8(%rbp), %rdi	# gv, tmp66
	movl	$0, 16(%rsp)	#,
	movq	$0, 8(%rsp)	#,
	movq	16(%rbp), %rsi	# supplied_fp, tmp67
	movq	%rsi, (%rsp)	# tmp67,
	movq	%rax, %rsi	# name,
	call	Perl_do_openn	#
	.loc 1 67 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_do_open, .-Perl_do_open
	.globl	Perl_do_open9
	.type	Perl_do_open9, @function
Perl_do_open9:
.LFB3:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# gv, gv
	movq	%rsi, %rax	# name, name
	movl	%edx, -12(%rbp)	# len, len
	movl	%ecx, -16(%rbp)	# as_raw, as_raw
	movl	%r8d, -20(%rbp)	# rawmode, rawmode
	movl	%r9d, -24(%rbp)	# rawperm, rawperm
	.loc 1 74 0
	movl	-24(%rbp), %r9d	# rawperm, tmp62
	movl	-20(%rbp), %r8d	# rawmode, tmp63
	movl	-16(%rbp), %ecx	# as_raw, tmp64
	movl	-12(%rbp), %edx	# len, tmp65
	movq	-8(%rbp), %rdi	# gv, tmp66
	movl	$1, 16(%rsp)	#,
	leaq	24(%rbp), %rsi	#, tmp67
	movq	%rsi, 8(%rsp)	# tmp67,
	movq	16(%rbp), %rsi	# supplied_fp, tmp68
	movq	%rsi, (%rsp)	# tmp68,
	movq	%rax, %rsi	# name,
	call	Perl_do_openn	#
	.loc 1 76 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_do_open9, .-Perl_do_open9
	.section	.rodata
	.align 8
.LC0:
	.string	"Warning: unable to close filehandle %s properly.\n"
	.align 8
.LC1:
	.string	"panic: sysopen with multiple args"
.LC2:
	.string	"sysopen"
.LC3:
	.string	""
.LC4:
	.string	"open"
.LC5:
	.string	"Unknown open() mode '%.*s'"
.LC6:
	.string	"Missing command in piped open"
.LC7:
	.string	"piped open"
.LC8:
	.string	"Can't open bidirectional pipe"
	.align 8
.LC9:
	.string	"More than one argument to '%c&' open"
	.align 8
.LC10:
	.string	"More than one argument to '>%c' open"
	.align 8
.LC11:
	.string	"More than one argument to '<%c' open"
.LC12:
	.string	"OUT"
.LC13:
	.string	"ERR"
	.align 8
.LC14:
	.string	"Filehandle STD%s reopened as %s only for input"
	.align 8
.LC15:
	.string	"Filehandle STDIN reopened as %s only for output"
	.text
	.globl	Perl_do_openn
	.type	Perl_do_openn, @function
Perl_do_openn:
.LFB4:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$264, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -232(%rbp)	# gv, gv
	movq	%rsi, %r12	# name, name
	movl	%edx, -236(%rbp)	# len, len
	movl	%ecx, -240(%rbp)	# as_raw, as_raw
	movl	%r8d, -244(%rbp)	# rawmode, rawmode
	movl	%r9d, -248(%rbp)	# rawperm, rawperm
	movq	16(%rbp), %rax	# supplied_fp, tmp590
	movq	%rax, -256(%rbp)	# tmp590, supplied_fp
	movq	24(%rbp), %rax	# svp, tmp591
	movq	%rax, -264(%rbp)	# tmp591, svp
	.loc 1 82 0
	movq	%fs:40, %rax	#, tmp971
	movq	%rax, -40(%rbp)	# tmp971, D.13962
	xorl	%eax, %eax	# tmp971
	.loc 1 83 0
	cmpq	$0, -232(%rbp)	#, gv
	je	.L6	#,
	.loc 1 83 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# gv, tmp592
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_98(D)].sv_flags, D.13944
	movzbl	%al, %eax	# D.13944, D.13944
	cmpl	$13, %eax	#, D.13944
	jne	.L6	#,
	movq	-232(%rbp), %rax	# gv, tmp593
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _101->xgv_gp, D.13946
	testq	%rax, %rax	# D.13946
	je	.L6	#,
	movq	-232(%rbp), %rax	# gv, tmp594
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _103->xgv_gp, D.13946
	movq	16(%rax), %rax	# _104->gp_io, D.13947
	testq	%rax, %rax	# D.13947
	je	.L6	#,
	movq	-232(%rbp), %rax	# gv, tmp595
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _106->xgv_gp, D.13946
	movq	16(%rax), %rax	# _107->gp_io, iftmp.0
	jmp	.L7	#
.L6:
	.loc 1 83 0 discriminator 2
	movq	-232(%rbp), %rax	# gv, tmp596
	movq	%rax, %rdi	# tmp596,
	call	Perl_gv_IOadd	#
	movq	(%rax), %rax	# _109->sv_any, D.13945
	movq	56(%rax), %rax	# _110->xgv_gp, D.13946
	movq	16(%rax), %rax	# _111->gp_io, iftmp.0
.L7:
	.loc 1 83 0 discriminator 3
	movq	%rax, %rbx	# iftmp.0, io
	.loc 1 84 0 is_stmt 1 discriminator 3
	movq	$0, -152(%rbp)	#, saveifp
	.loc 1 85 0 discriminator 3
	movq	$0, -144(%rbp)	#, saveofp
	.loc 1 86 0 discriminator 3
	movl	$-1, -208(%rbp)	#, savefd
	.loc 1 87 0 discriminator 3
	movb	$32, -219(%rbp)	#, savetype
	.loc 1 88 0 discriminator 3
	movl	$0, -212(%rbp)	#, writing
	.loc 1 92 0 discriminator 3
	movb	$0, -218(%rbp)	#, was_fdopen
	.loc 1 93 0 discriminator 3
	movb	$0, -217(%rbp)	#, in_raw
	movb	$0, -216(%rbp)	#, in_crlf
	movb	$0, -215(%rbp)	#, out_raw
	movb	$0, -214(%rbp)	#, out_crlf
	.loc 1 94 0 discriminator 3
	movq	$0, -128(%rbp)	#, type
	.loc 1 98 0 discriminator 3
	leaq	-48(%rbp), %rax	#, tmp597
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp597,
	call	memset	#
	.loc 1 99 0 discriminator 3
	movl	$1, PL_forkprocess(%rip)	#, PL_forkprocess
	.loc 1 102 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1
	testq	%rax, %rax	# PL_op.1
	je	.L8	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.2
	movzwl	32(%rax), %eax	# PL_op.2_125->op_type, D.13949
	cmpw	$191, %ax	#, D.13949
	jne	.L8	#,
.LBB2:
	.loc 1 104 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.3
	movzbl	37(%rax), %eax	# PL_op.3_127->op_private, tmp598
	movb	%al, -213(%rbp)	# tmp598, flags
	.loc 1 105 0
	movzbl	-213(%rbp), %eax	# flags, flags.4
	andl	$16, %eax	#, tmp599
	movb	%al, -217(%rbp)	# tmp599, in_raw
	.loc 1 106 0
	movzbl	-213(%rbp), %eax	# flags, flags.5
	andl	$32, %eax	#, tmp600
	movb	%al, -216(%rbp)	# tmp600, in_crlf
	.loc 1 107 0
	movzbl	-213(%rbp), %eax	# flags, flags.6
	andl	$64, %eax	#, tmp601
	movb	%al, -215(%rbp)	# tmp601, out_raw
	.loc 1 108 0
	movzbl	-213(%rbp), %eax	# flags, flags.7
	andl	$-128, %eax	#, tmp602
	movb	%al, -214(%rbp)	# tmp602, out_crlf
.L8:
.LBE2:
	.loc 1 112 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _137->xio_ifp, D.13951
	testq	%rax, %rax	# D.13951
	je	.L9	#,
	.loc 1 113 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _139->xio_ifp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -204(%rbp)	# tmp603, fd
	.loc 1 114 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _142->xio_type, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L10	#,
	.loc 1 116 0
	movl	$0, -200(%rbp)	#, result
	jmp	.L11	#
.L10:
	.loc 1 118 0
	cmpl	$0, -204(%rbp)	#, fd
	js	.L12	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	PL_maxsysfd(%rip), %eax	# PL_maxsysfd, PL_maxsysfd.8
	cmpl	%eax, -204(%rbp)	# PL_maxsysfd.8, fd
	jg	.L12	#,
	.loc 1 120 0 is_stmt 1
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _146->xio_ifp, tmp604
	movq	%rax, -152(%rbp)	# tmp604, saveifp
	.loc 1 121 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	64(%rax), %rax	# _148->xio_ofp, tmp605
	movq	%rax, -144(%rbp)	# tmp605, saveofp
	.loc 1 122 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _150->xio_type, tmp606
	movb	%al, -219(%rbp)	# tmp606, savetype
	.loc 1 123 0
	movl	-204(%rbp), %eax	# fd, tmp607
	movl	%eax, -208(%rbp)	# tmp607, savefd
	.loc 1 124 0
	movl	$0, -200(%rbp)	#, result
	jmp	.L11	#
.L12:
	.loc 1 126 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _154->xio_type, D.13943
	cmpb	$124, %al	#, D.13943
	jne	.L13	#,
	.loc 1 127 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _156->xio_ifp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_my_pclose	#
	movl	%eax, -200(%rbp)	# tmp608, result
	jmp	.L11	#
.L13:
	.loc 1 128 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rdx	# _159->xio_ifp, D.13951
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	64(%rax), %rax	# _161->xio_ofp, D.13951
	cmpq	%rax, %rdx	# D.13951, D.13951
	je	.L14	#,
	.loc 1 129 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	64(%rax), %rax	# _163->xio_ofp, D.13951
	testq	%rax, %rax	# D.13951
	je	.L15	#,
	.loc 1 130 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	64(%rax), %rax	# _165->xio_ofp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_PerlIO_close	#
	movl	%eax, -200(%rbp)	# tmp609, result
	.loc 1 131 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _168->xio_ifp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_PerlIO_close	#
	jmp	.L11	#
.L15:
	.loc 1 134 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _170->xio_ifp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_PerlIO_close	#
	movl	%eax, -200(%rbp)	# tmp610, result
	jmp	.L11	#
.L14:
	.loc 1 137 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	56(%rax), %rax	# _173->xio_ifp, D.13951
	movq	%rax, %rdi	# D.13951,
	call	Perl_PerlIO_close	#
	movl	%eax, -200(%rbp)	# tmp611, result
.L11:
	.loc 1 138 0
	cmpl	$-1, -200(%rbp)	#, result
	jne	.L17	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	PL_maxsysfd(%rip), %eax	# PL_maxsysfd, PL_maxsysfd.9
	cmpl	%eax, -204(%rbp)	# PL_maxsysfd.9, fd
	jle	.L17	#,
	.loc 1 142 0 is_stmt 1
	movq	-232(%rbp), %rax	# gv, tmp612
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _177->xgv_gp, D.13946
	movq	48(%rax), %rax	# _178->gp_egv, D.13948
	testq	%rax, %rax	# D.13948
	je	.L18	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# gv, tmp613
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _180->xgv_gp, D.13946
	movq	48(%rax), %rax	# _181->gp_egv, iftmp.10
	jmp	.L19	#
.L18:
	.loc 1 142 0 discriminator 2
	movq	-232(%rbp), %rax	# gv, iftmp.10
.L19:
	.loc 1 142 0 discriminator 3
	movq	(%rax), %rax	# iftmp.10_89->sv_any, D.13945
	.loc 1 140 0 is_stmt 1 discriminator 3
	movq	64(%rax), %r13	# _184->xgv_name, D.13952
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.12
	testq	%rax, %rax	# PL_stderrgv.12
	je	.L20	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.13
	movl	12(%rax), %eax	# PL_stderrgv.13_187->sv_flags, D.13944
	movzbl	%al, %eax	# D.13944, D.13944
	cmpl	$13, %eax	#, D.13944
	jne	.L20	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.14
	movq	(%rax), %rax	# PL_stderrgv.14_190->sv_any, D.13945
	movq	56(%rax), %rax	# _191->xgv_gp, D.13946
	movq	16(%rax), %rax	# _192->gp_io, D.13947
	testq	%rax, %rax	# D.13947
	je	.L20	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.15
	movq	(%rax), %rax	# PL_stderrgv.15_194->sv_any, D.13945
	movq	56(%rax), %rax	# _195->xgv_gp, D.13946
	movq	16(%rax), %rax	# _196->gp_io, D.13947
	movq	(%rax), %rax	# _197->sv_any, D.13950
	movq	64(%rax), %rax	# _198->xio_ofp, D.13951
	testq	%rax, %rax	# D.13951
	je	.L20	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.16
	movq	(%rax), %rax	# PL_stderrgv.16_200->sv_any, D.13945
	movq	56(%rax), %rax	# _201->xgv_gp, D.13946
	movq	16(%rax), %rax	# _202->gp_io, D.13947
	movq	(%rax), %rax	# _203->sv_any, D.13950
	movq	64(%rax), %rax	# _204->xio_ofp, iftmp.11
	jmp	.L21	#
.L20:
	.loc 1 140 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L21:
	.loc 1 140 0 discriminator 3
	movq	%r13, %rdx	# D.13952,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# iftmp.11,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L17:
	.loc 1 144 0 is_stmt 1
	movq	(%rbx), %rdx	# io_113->sv_any, D.13950
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	$0, 56(%rax)	#, _208->xio_ifp
	movq	56(%rax), %rax	# _208->xio_ifp, D.13951
	movq	%rax, 64(%rdx)	# D.13951, _207->xio_ofp
.L9:
	.loc 1 147 0
	cmpl	$0, -240(%rbp)	#, as_raw
	je	.L22	#,
.LBB3:
	.loc 1 149 0
	movq	$0, -88(%rbp)	#, ix
	.loc 1 150 0
	movl	$1536, -192(%rbp)	#, appendtrunc
	.loc 1 159 0
	movl	-192(%rbp), %eax	# appendtrunc, tmp617
	orl	$67, %eax	#, tmp616
	movl	%eax, -188(%rbp)	# tmp616, modifyingmode
	.loc 1 163 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L23	#,
	.loc 1 164 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L23:
	.loc 1 182 0
	movl	-188(%rbp), %eax	# modifyingmode, tmp622
	movl	-244(%rbp), %edx	# rawmode, tmp623
	andl	%edx, %eax	# tmp623, tmp621
	movl	%eax, -184(%rbp)	# tmp621, ismodifying
	cmpl	$0, -184(%rbp)	#, ismodifying
	je	.L24	#,
	.loc 1 183 0
	movl	-184(%rbp), %eax	# ismodifying, tmp624
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L25	#,
	.loc 1 184 0 discriminator 1
	movl	-184(%rbp), %eax	# ismodifying, tmp625
	andl	$2, %eax	#, D.13953
	.loc 1 183 0 discriminator 1
	testl	%eax, %eax	# D.13953
	jne	.L25	#,
	.loc 1 185 0
	movl	-192(%rbp), %eax	# appendtrunc, tmp626
	orl	$64, %eax	#, D.13953
	andl	-184(%rbp), %eax	# ismodifying, D.13953
	.loc 1 184 0
	testl	%eax, %eax	# D.13953
	je	.L24	#,
.L25:
	.loc 1 186 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.17
	testb	%al, %al	# PL_tainting.17
	je	.L24	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movl	$.LC2, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L24:
	.loc 1 188 0 is_stmt 1
	movq	-88(%rbp), %rax	# ix, ix.18
	leaq	1(%rax), %rdx	#, tmp627
	movq	%rdx, -88(%rbp)	# tmp627, ix
	movb	$35, -48(%rbp,%rax)	#, mode
	.loc 1 194 0
	movq	(%rbx), %r13	# io_113->sv_any, D.13950
	leaq	-48(%rbp), %rdx	#, tmp628
	movq	-88(%rbp), %rax	# ix, tmp629
	leaq	(%rdx,%rax), %rcx	#, D.13952
	leaq	-212(%rbp), %rdx	#, tmp630
	movl	-244(%rbp), %eax	# rawmode, tmp631
	movq	%rcx, %rsi	# D.13952,
	movl	%eax, %edi	# tmp631,
	call	PerlIO_intmode2str	#
	movb	%al, 162(%r13)	# D.13943, _224->xio_type
	.loc 1 196 0
	movq	%r12, %rdi	# name,
	call	strlen	#
	movq	%rax, %rsi	# D.13954,
	movq	%r12, %rdi	# name,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2mortal	#
	movq	%rax, -160(%rbp)	# namesv.19, namesv
	.loc 1 197 0
	movl	$1, 32(%rbp)	#, num_svs
	.loc 1 198 0
	leaq	-160(%rbp), %rax	#, tmp632
	movq	%rax, -264(%rbp)	# tmp632, svp
	.loc 1 199 0
	movq	$0, -128(%rbp)	#, type
	.loc 1 200 0
	movl	-248(%rbp), %edi	# rawperm, tmp633
	movl	-244(%rbp), %edx	# rawmode, tmp634
	leaq	-48(%rbp), %rsi	#, tmp635
	movq	-128(%rbp), %rax	# type, tmp636
	movq	-264(%rbp), %rcx	# svp, tmp637
	movq	%rcx, 8(%rsp)	# tmp637,
	movl	32(%rbp), %ecx	# num_svs, tmp638
	movl	%ecx, (%rsp)	# tmp638,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp633,
	movl	%edx, %ecx	# tmp634,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# tmp636,
	call	PerlIO_openn	#
	movq	%rax, -136(%rbp)	# tmp639, fp
.LBE3:
	jmp	.L26	#
.L22:
.LBB4:
	.loc 1 204 0
	movq	%r12, -80(%rbp)	# name, oname
	.loc 1 205 0
	movl	-236(%rbp), %eax	# len, tmp641
	cltq
	movq	%rax, -72(%rbp)	# tmp640, olen
	.loc 1 207 0
	movl	$0, -196(%rbp)	#, dodup
	.loc 1 208 0
	movq	$0, -112(%rbp)	#, that_fp
	.loc 1 210 0
	movl	-236(%rbp), %eax	# len, tmp642
	movl	%eax, %esi	# tmp642,
	movq	%r12, %rdi	# name,
	call	Perl_savepvn	#
	movq	%rax, -128(%rbp)	# tmp643, type
	.loc 1 211 0
	movl	-236(%rbp), %eax	# len, tmp644
	movslq	%eax, %rdx	# tmp644, D.13956
	movq	-128(%rbp), %rax	# type, tmp648
	addq	%rdx, %rax	# D.13956, tmp647
	movq	%rax, -120(%rbp)	# tmp647, tend
	.loc 1 212 0
	movq	-128(%rbp), %rax	# type, tmp649
	movq	%rax, %rdi	# tmp649,
	call	Perl_save_freepv	#
	.loc 1 216 0
	jmp	.L27	#
.L28:
	.loc 1 216 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L27:
	.loc 1 216 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp650
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L28	#,
	.loc 1 216 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp651
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L28	#,
	.loc 1 216 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp652
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L28	#,
	movq	-128(%rbp), %rax	# type, tmp653
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L28	#,
	movq	-128(%rbp), %rax	# type, tmp654
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L28	#,
	.loc 1 217 0 is_stmt 1
	jmp	.L29	#
.L31:
	.loc 1 218 0
	subq	$1, -120(%rbp)	#, tend
	movq	-120(%rbp), %rax	# tend, tmp655
	movb	$0, (%rax)	#, *tend_260
.L29:
	.loc 1 217 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp656
	cmpq	-128(%rbp), %rax	# type, tmp656
	jbe	.L30	#,
	.loc 1 217 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# tend, tmp657
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_250, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L31	#,
	.loc 1 217 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp658
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_252, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L31	#,
	movq	-120(%rbp), %rax	# tend, tmp659
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_254, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L31	#,
	movq	-120(%rbp), %rax	# tend, tmp660
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_256, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L31	#,
	movq	-120(%rbp), %rax	# tend, tmp661
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_258, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L31	#,
.L30:
	.loc 1 220 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L32	#,
	.loc 1 231 0
	movq	-264(%rbp), %rax	# svp, tmp662
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movl	12(%rax), %eax	# _262->sv_flags, D.13944
	andl	$118423552, %eax	#, D.13944
	testl	%eax, %eax	# D.13944
	je	.L33	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# svp, tmp663
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movq	%rax, %rdi	# D.13955,
	call	Perl_savesvpv	#
	jmp	.L34	#
.L33:
	.loc 1 231 0 discriminator 2
	movl	$0, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_savepvn	#
.L34:
	.loc 1 231 0 discriminator 1
	movq	%rax, %r12	# iftmp.20, name
	.loc 1 232 0 is_stmt 1 discriminator 1
	movq	%r12, %rdi	# name,
	call	Perl_save_freepv	#
	jmp	.L35	#
.L32:
	.loc 1 235 0
	movq	-128(%rbp), %r12	# type, name
	.loc 1 236 0
	movq	-120(%rbp), %rdx	# tend, tend.21
	movq	-128(%rbp), %rax	# type, type.22
	subq	%rax, %rdx	# type.22, D.13957
	movq	%rdx, %rax	# D.13957, D.13957
	movl	%eax, -236(%rbp)	# D.13957, len
.L35:
	.loc 1 238 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	-128(%rbp), %rdx	# type, tmp664
	movzbl	(%rdx), %edx	# *type_58, D.13943
	movb	%dl, 162(%rax)	# D.13943, _274->xio_type
	.loc 1 239 0
	movq	-128(%rbp), %rax	# type, tmp665
	movzbl	(%rax), %eax	# *type_58, D.13943
	cmpb	$43, %al	#, D.13943
	jne	.L36	#,
	.loc 1 240 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp666
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_277, D.13943
	.loc 1 239 0 discriminator 1
	cmpb	$60, %al	#, D.13943
	je	.L37	#,
	.loc 1 240 0
	movq	-128(%rbp), %rax	# type, tmp667
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_279, D.13943
	cmpb	$62, %al	#, D.13943
	jne	.L36	#,
.L37:
	.loc 1 240 0 is_stmt 0 discriminator 1
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L38	#,
	.loc 1 241 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, tmp668
	addq	$1, %rax	#, D.13952
	cmpq	-120(%rbp), %rax	# tend, D.13952
	jae	.L36	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp669
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_282, D.13943
	cmpb	$124, %al	#, D.13943
	je	.L36	#,
.L38:
	.loc 1 242 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.23
	testb	%al, %al	# PL_tainting.23
	je	.L39	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	movl	$.LC4, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L39:
	.loc 1 243 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, type.24
	leaq	1(%rax), %rdx	#, tmp670
	movq	%rdx, -128(%rbp)	# tmp670, type
	movzbl	(%rax), %eax	# *type.24_285, D.13943
	movb	%al, -47(%rbp)	# D.13943, mode
	.loc 1 244 0
	movl	$1, -212(%rbp)	#, writing
.L36:
	.loc 1 247 0
	movq	-128(%rbp), %rax	# type, tmp671
	movzbl	(%rax), %eax	# *type_59, D.13943
	cmpb	$124, %al	#, D.13943
	jne	.L40	#,
	.loc 1 248 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L41	#,
	.loc 1 249 0
	movq	-128(%rbp), %rax	# type, tmp672
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_289, D.13943
	cmpb	$45, %al	#, D.13943
	je	.L42	#,
.L43:
	.loc 1 251 0
	movq	-72(%rbp), %rax	# olen, tmp673
	movq	-80(%rbp), %rdx	# oname, tmp674
	movl	%eax, %esi	# D.13953,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L42:
	.loc 1 253 0
	addq	$1, -128(%rbp)	#, type
.L41:
	.loc 1 256 0
	addq	$1, -128(%rbp)	#, type
	jmp	.L44	#
.L45:
	.loc 1 256 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L44:
	.loc 1 256 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp675
	movzbl	(%rax), %eax	# *type_63, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L45	#,
	.loc 1 256 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp676
	movzbl	(%rax), %eax	# *type_63, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L45	#,
	.loc 1 256 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp677
	movzbl	(%rax), %eax	# *type_63, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L45	#,
	movq	-128(%rbp), %rax	# type, tmp678
	movzbl	(%rax), %eax	# *type_63, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L45	#,
	movq	-128(%rbp), %rax	# type, tmp679
	movzbl	(%rax), %eax	# *type_63, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L45	#,
	.loc 1 257 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L46	#,
	.loc 1 258 0
	movq	-128(%rbp), %r12	# type, name
	.loc 1 259 0
	movq	-120(%rbp), %rdx	# tend, tend.25
	movq	-128(%rbp), %rax	# type, type.26
	subq	%rax, %rdx	# type.26, D.13957
	movq	%rdx, %rax	# D.13957, D.13957
	movl	%eax, -236(%rbp)	# D.13957, len
.L46:
	.loc 1 261 0
	movzbl	(%r12), %eax	# *name_2, D.13943
	testb	%al, %al	# D.13943
	jne	.L47	#,
	.loc 1 263 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.27
	movq	80(%rax), %rax	# PL_curcop.27_565->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	je	.L48	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.28
	movq	80(%rax), %rax	# PL_curcop.28_567->cop_warnings, D.13955
	cmpq	$32, %rax	#, D.13955
	je	.L48	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.29
	movq	80(%rax), %rax	# PL_curcop.29_569->cop_warnings, D.13955
	cmpq	$16, %rax	#, D.13955
	je	.L49	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.30
	movq	80(%rax), %rax	# PL_curcop.30_571->cop_warnings, D.13955
	movq	(%rax), %rax	# _572->sv_any, D.13958
	movq	(%rax), %rax	# MEM[(struct XPV *)_573].xpv_pv, D.13952
	addq	$2, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_575, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	andl	$16, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L49	#,
.L48:
	.loc 1 263 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.31
	movq	80(%rax), %rax	# PL_curcop.31_579->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	jne	.L50	#,
	.loc 1 263 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.32
	movzbl	%al, %eax	# PL_dowarn.32, D.13953
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	je	.L50	#,
.L49:
	.loc 1 264 0 is_stmt 1
	movl	$.LC6, %esi	#,
	movl	$10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L50:
	.loc 1 265 0
	call	__errno_location	#
	movl	$32, (%rax)	#, *_584
	.loc 1 266 0
	jmp	.L51	#
.L47:
	.loc 1 268 0
	movzbl	(%r12), %eax	# *name_2, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L52	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	leaq	1(%r12), %rax	#, D.13952
	movzbl	(%rax), %eax	# *_586, D.13943
	testb	%al, %al	# D.13943
	je	.L53	#,
.L52:
	.loc 1 268 0 discriminator 2
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L54	#,
.L53:
	.loc 1 269 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.33
	testb	%al, %al	# PL_tainting.33
	je	.L54	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	call	Perl_taint_env	#
.L54:
	.loc 1 270 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.34
	testb	%al, %al	# PL_tainting.34
	je	.L55	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	$.LC7, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L55:
	.loc 1 271 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L56	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	-236(%rbp), %eax	# len, tmp680
	cltq
	subq	$1, %rax	#, D.13956
	addq	%r12, %rax	# name, D.13952
	movzbl	(%rax), %eax	# *_592, D.13943
	cmpb	$124, %al	#, D.13943
	jne	.L56	#,
	.loc 1 272 0 is_stmt 1
	subl	$1, -236(%rbp)	#, len
	movl	-236(%rbp), %eax	# len, tmp681
	cltq
	addq	%r12, %rax	# name, D.13952
	movb	$0, (%rax)	#, *_596
	.loc 1 273 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.35
	movq	80(%rax), %rax	# PL_curcop.35_597->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	je	.L57	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.36
	movq	80(%rax), %rax	# PL_curcop.36_599->cop_warnings, D.13955
	cmpq	$32, %rax	#, D.13955
	je	.L57	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.37
	movq	80(%rax), %rax	# PL_curcop.37_601->cop_warnings, D.13955
	cmpq	$16, %rax	#, D.13955
	je	.L58	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.38
	movq	80(%rax), %rax	# PL_curcop.38_603->cop_warnings, D.13955
	movq	(%rax), %rax	# _604->sv_any, D.13958
	movq	(%rax), %rax	# MEM[(struct XPV *)_605].xpv_pv, D.13952
	addq	$2, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_607, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	andl	$16, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L58	#,
.L57:
	.loc 1 273 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.39
	movq	80(%rax), %rax	# PL_curcop.39_611->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	jne	.L56	#,
	.loc 1 273 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.40
	movzbl	%al, %eax	# PL_dowarn.40, D.13953
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	je	.L56	#,
.L58:
	.loc 1 274 0 is_stmt 1
	movl	$.LC8, %esi	#,
	movl	$10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L56:
	.loc 1 276 0
	movb	$119, -48(%rbp)	#, mode
	.loc 1 277 0
	movl	$1, -212(%rbp)	#, writing
	.loc 1 284 0
	cmpb	$0, -215(%rbp)	#, out_raw
	je	.L59	#,
	.loc 1 285 0
	leaq	-48(%rbp), %rax	#, tmp682
	movq	$-1, %rcx	#, tmp686
	movq	%rax, %rdx	# tmp682, tmp685
	movl	$0, %eax	#, tmp687
	movq	%rdx, %rdi	# tmp685, tmp685
	repnz scasb
	movq	%rcx, %rax	# tmp683, tmp683
	notq	%rax	# tmp684
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp688
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$98, (%rax)	#, MEM[(void *)_617]
	jmp	.L60	#
.L59:
	.loc 1 286 0
	cmpb	$0, -214(%rbp)	#, out_crlf
	je	.L60	#,
	.loc 1 287 0
	leaq	-48(%rbp), %rax	#, tmp689
	movq	$-1, %rcx	#, tmp693
	movq	%rax, %rdx	# tmp689, tmp692
	movl	$0, %eax	#, tmp694
	movq	%rdx, %rdi	# tmp692, tmp692
	repnz scasb
	movq	%rcx, %rax	# tmp690, tmp690
	notq	%rax	# tmp691
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp695
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$116, (%rax)	#, MEM[(void *)_619]
.L60:
	.loc 1 289 0
	cmpl	$1, 32(%rbp)	#, num_svs
	jle	.L61	#,
	.loc 1 290 0
	movq	-264(%rbp), %rdx	# svp, tmp696
	movl	32(%rbp), %ecx	# num_svs, tmp697
	leaq	-48(%rbp), %rax	#, tmp698
	movl	%ecx, %esi	# tmp697,
	movq	%rax, %rdi	# tmp698,
	call	Perl_my_popen_list	#
	movq	%rax, -136(%rbp)	# tmp699, fp
	jmp	.L62	#
.L61:
	.loc 1 293 0
	leaq	-48(%rbp), %rax	#, tmp700
	movq	%rax, %rsi	# tmp700,
	movq	%r12, %rdi	# name,
	call	Perl_my_popen	#
	movq	%rax, -136(%rbp)	# tmp701, fp
.L62:
	.loc 1 295 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L26	#,
	.loc 1 296 0
	movq	-128(%rbp), %rax	# type, tmp702
	movzbl	(%rax), %eax	# *type_63, D.13943
	testb	%al, %al	# D.13943
	je	.L26	#,
	.loc 1 297 0
	movq	-128(%rbp), %rdx	# type, tmp703
	leaq	-48(%rbp), %rcx	#, tmp704
	movq	-136(%rbp), %rax	# fp, tmp705
	movq	%rcx, %rsi	# tmp704,
	movq	%rax, %rdi	# tmp705,
	call	PerlIO_apply_layers	#
	testl	%eax, %eax	# D.13953
	je	.L26	#,
	.loc 1 298 0
	jmp	.L51	#
.L40:
	.loc 1 303 0
	movq	-128(%rbp), %rax	# type, tmp706
	movzbl	(%rax), %eax	# *type_59, D.13943
	cmpb	$62, %al	#, D.13943
	jne	.L63	#,
	.loc 1 304 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.41
	testb	%al, %al	# PL_tainting.41
	je	.L64	#,
	.loc 1 304 0 is_stmt 0 discriminator 1
	movl	$.LC4, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L64:
	.loc 1 305 0 is_stmt 1
	addq	$1, -128(%rbp)	#, type
	.loc 1 306 0
	movq	-128(%rbp), %rax	# type, tmp707
	movzbl	(%rax), %eax	# *type_293, D.13943
	cmpb	$62, %al	#, D.13943
	jne	.L65	#,
	.loc 1 308 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$97, 162(%rax)	#, _295->xio_type
	movzbl	162(%rax), %eax	# _295->xio_type, D.13943
	movb	%al, -48(%rbp)	# D.13943, mode
	.loc 1 309 0
	addq	$1, -128(%rbp)	#, type
	jmp	.L66	#
.L65:
	.loc 1 312 0
	movb	$119, -48(%rbp)	#, mode
.L66:
	.loc 1 314 0
	movl	$1, -212(%rbp)	#, writing
	.loc 1 322 0
	cmpb	$0, -215(%rbp)	#, out_raw
	je	.L67	#,
	.loc 1 323 0
	leaq	-48(%rbp), %rax	#, tmp708
	movq	$-1, %rcx	#, tmp712
	movq	%rax, %rdx	# tmp708, tmp711
	movl	$0, %eax	#, tmp713
	movq	%rdx, %rdi	# tmp711, tmp711
	repnz scasb
	movq	%rcx, %rax	# tmp709, tmp709
	notq	%rax	# tmp710
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp714
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$98, (%rax)	#, MEM[(void *)_299]
	jmp	.L68	#
.L67:
	.loc 1 324 0
	cmpb	$0, -214(%rbp)	#, out_crlf
	je	.L68	#,
	.loc 1 325 0
	leaq	-48(%rbp), %rax	#, tmp715
	movq	$-1, %rcx	#, tmp719
	movq	%rax, %rdx	# tmp715, tmp718
	movl	$0, %eax	#, tmp720
	movq	%rdx, %rdi	# tmp718, tmp718
	repnz scasb
	movq	%rcx, %rax	# tmp716, tmp716
	notq	%rax	# tmp717
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp721
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$116, (%rax)	#, MEM[(void *)_301]
.L68:
	.loc 1 327 0
	movq	-128(%rbp), %rax	# type, tmp722
	movzbl	(%rax), %eax	# *type_64, D.13943
	cmpb	$38, %al	#, D.13943
	jne	.L69	#,
.L70:
	.loc 1 329 0
	movl	$2, -196(%rbp)	#, dodup
	.loc 1 330 0
	addq	$1, -128(%rbp)	#, type
	.loc 1 331 0
	movq	-128(%rbp), %rax	# type, tmp723
	movzbl	(%rax), %eax	# *type_475, D.13943
	cmpb	$61, %al	#, D.13943
	jne	.L71	#,
	.loc 1 332 0
	movl	$0, -196(%rbp)	#, dodup
	.loc 1 333 0
	addq	$1, -128(%rbp)	#, type
.L71:
	.loc 1 335 0
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L72	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp724
	movzbl	(%rax), %eax	# *type_66, D.13943
	testb	%al, %al	# D.13943
	jne	.L72	#,
	cmpq	$0, -256(%rbp)	#, supplied_fp
	je	.L72	#,
	.loc 1 337 0 is_stmt 1
	movq	-256(%rbp), %rax	# supplied_fp, tmp725
	movq	%rax, -136(%rbp)	# tmp725, fp
	jmp	.L97	#
.L72:
	.loc 1 340 0
	cmpl	$1, 32(%rbp)	#, num_svs
	jle	.L74	#,
	.loc 1 341 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _482->xio_type, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	movl	%eax, %esi	# D.13953,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 344 0
	jmp	.L75	#
.L74:
	jmp	.L75	#
.L76:
	.loc 1 344 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L75:
	.loc 1 344 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp726
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L76	#,
	.loc 1 344 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp727
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L76	#,
	.loc 1 344 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp728
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L76	#,
	movq	-128(%rbp), %rax	# type, tmp729
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L76	#,
	movq	-128(%rbp), %rax	# type, tmp730
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L76	#,
	.loc 1 345 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L77	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# svp, tmp731
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movl	12(%rax), %eax	# _490->sv_flags, D.13944
	andl	$65536, %eax	#, D.13944
	testl	%eax, %eax	# D.13944
	jne	.L78	#,
	movq	-264(%rbp), %rax	# svp, tmp732
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movl	12(%rax), %eax	# _493->sv_flags, D.13944
	andl	$262144, %eax	#, D.13944
	testl	%eax, %eax	# D.13944
	je	.L77	#,
	movq	-264(%rbp), %rax	# svp, tmp733
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movq	%rax, %rdi	# D.13955,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.13953
	je	.L77	#,
.L78:
	.loc 1 346 0 is_stmt 1
	movq	-264(%rbp), %rax	# svp, tmp734
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movl	12(%rax), %eax	# _498->sv_flags, D.13944
	andl	$65536, %eax	#, D.13944
	testl	%eax, %eax	# D.13944
	je	.L79	#,
	.loc 1 346 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# svp, tmp735
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movq	(%rax), %rax	# _501->sv_any, D.13958
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_502].xuv_uv, D.13954
	jmp	.L80	#
.L79:
	.loc 1 346 0 discriminator 2
	movq	-264(%rbp), %rax	# svp, tmp736
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2uv	#
.L80:
	.loc 1 346 0 discriminator 3
	movl	%eax, -204(%rbp)	# iftmp.42, fd
	.loc 1 347 0 is_stmt 1 discriminator 3
	movl	$0, 32(%rbp)	#, num_svs
	jmp	.L81	#
.L77:
	.loc 1 349 0
	movq	-128(%rbp), %rax	# type, tmp737
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$47, %al	#, D.13943
	jle	.L82	#,
	.loc 1 349 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp738
	movzbl	(%rax), %eax	# *type_67, D.13943
	cmpb	$57, %al	#, D.13943
	jg	.L82	#,
	.loc 1 350 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, tmp739
	movq	%rax, %rdi	# tmp739,
	call	atoi	#
	movl	%eax, -204(%rbp)	# tmp740, fd
	jmp	.L81	#
.L82:
.LBB5:
	.loc 1 354 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L83	#,
	.loc 1 355 0
	movq	-264(%rbp), %rax	# svp, tmp741
	movq	(%rax), %rax	# *svp_261(D), D.13955
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2io	#
	movq	%rax, -104(%rbp)	# tmp742, thatio
	jmp	.L84	#
.L83:
.LBB6:
	.loc 1 359 0
	movq	-128(%rbp), %rax	# type, tmp743
	movl	$15, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp743,
	call	Perl_gv_fetchpv	#
	movq	%rax, -64(%rbp)	# tmp744, thatgv
	.loc 1 360 0
	cmpq	$0, -64(%rbp)	#, thatgv
	je	.L85	#,
	.loc 1 360 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# thatgv, tmp745
	movl	12(%rax), %eax	# MEM[(struct SV *)thatgv_515].sv_flags, D.13944
	movzbl	%al, %eax	# D.13944, D.13944
	cmpl	$13, %eax	#, D.13944
	jne	.L85	#,
	movq	-64(%rbp), %rax	# thatgv, tmp746
	movq	(%rax), %rax	# thatgv_515->sv_any, D.13945
	movq	56(%rax), %rax	# _518->xgv_gp, D.13946
	testq	%rax, %rax	# D.13946
	je	.L85	#,
	movq	-64(%rbp), %rax	# thatgv, tmp747
	movq	(%rax), %rax	# thatgv_515->sv_any, D.13945
	movq	56(%rax), %rax	# _520->xgv_gp, D.13946
	movq	16(%rax), %rax	# _521->gp_io, iftmp.43
	jmp	.L86	#
.L85:
	.loc 1 360 0 discriminator 2
	movl	$0, %eax	#, iftmp.43
.L86:
	.loc 1 360 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.43, thatio
.L84:
.LBE6:
	.loc 1 362 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, thatio
	jne	.L87	#,
	.loc 1 364 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_525
	.loc 1 366 0
	jmp	.L51	#
.L87:
	.loc 1 368 0
	movq	-104(%rbp), %rax	# thatio, tmp748
	movq	(%rax), %rax	# thatio_86->sv_any, D.13950
	movq	56(%rax), %rax	# _526->xio_ifp, tmp749
	movq	%rax, -112(%rbp)	# tmp749, that_fp
	cmpq	$0, -112(%rbp)	#, that_fp
	je	.L88	#,
	.loc 1 385 0
	movq	-112(%rbp), %rax	# that_fp, tmp750
	movq	%rax, %rdi	# tmp750,
	call	Perl_PerlIO_flush	#
	.loc 1 386 0
	movq	-112(%rbp), %rax	# that_fp, tmp751
	movq	%rax, %rdi	# tmp751,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -204(%rbp)	# tmp752, fd
	.loc 1 389 0
	call	Perl_PerlIO_stdout	#
	cmpq	-112(%rbp), %rax	# that_fp, D.13951
	je	.L89	#,
	.loc 1 390 0
	call	Perl_PerlIO_stderr	#
	cmpq	-112(%rbp), %rax	# that_fp, D.13951
	jne	.L90	#,
.L89:
	.loc 1 391 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$62, 162(%rax)	#, _536->xio_type
	jmp	.L81	#
.L90:
	.loc 1 392 0
	call	Perl_PerlIO_stdin	#
	cmpq	-112(%rbp), %rax	# that_fp, D.13951
	jne	.L92	#,
	.loc 1 393 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$60, 162(%rax)	#, _532->xio_type
	jmp	.L81	#
.L92:
	.loc 1 396 0
	movq	-104(%rbp), %rax	# thatio, tmp753
	movq	(%rax), %rax	# thatio_86->sv_any, D.13950
	movzbl	162(%rax), %eax	# _533->xio_type, D.13943
	cmpb	$115, %al	#, D.13943
	jne	.L81	#,
	.loc 1 397 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$115, 162(%rax)	#, _535->xio_type
	jmp	.L81	#
.L88:
	.loc 1 400 0
	movl	$-1, -204(%rbp)	#, fd
.L81:
.LBE5:
	.loc 1 402 0
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L93	#,
	.loc 1 403 0
	movq	$0, -128(%rbp)	#, type
.L93:
	.loc 1 404 0
	cmpq	$0, -112(%rbp)	#, that_fp
	je	.L94	#,
	.loc 1 405 0
	movl	-196(%rbp), %edx	# dodup, tmp754
	movq	-112(%rbp), %rax	# that_fp, tmp755
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp755,
	call	PerlIO_fdupopen	#
	movq	%rax, -136(%rbp)	# tmp756, fp
	jmp	.L97	#
.L94:
	.loc 1 408 0
	cmpl	$0, -196(%rbp)	#, dodup
	je	.L95	#,
	.loc 1 409 0
	movl	-204(%rbp), %eax	# fd, tmp757
	movl	%eax, %edi	# tmp757,
	call	dup	#
	movl	%eax, -204(%rbp)	# tmp758, fd
	jmp	.L96	#
.L95:
	.loc 1 411 0
	movb	$1, -218(%rbp)	#, was_fdopen
.L96:
	.loc 1 412 0
	movl	-204(%rbp), %edx	# fd, tmp759
	leaq	-48(%rbp), %rsi	#, tmp760
	movq	-128(%rbp), %rax	# type, tmp761
	movq	-264(%rbp), %rcx	# svp, tmp762
	movq	%rcx, 8(%rsp)	# tmp762,
	movl	32(%rbp), %ecx	# num_svs, tmp763
	movl	%ecx, (%rsp)	# tmp763,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp761,
	call	PerlIO_openn	#
	movq	%rax, -136(%rbp)	# tmp764, fp
	cmpq	$0, -136(%rbp)	#, fp
	jne	.L97	#,
	.loc 1 413 0
	cmpl	$0, -196(%rbp)	#, dodup
	je	.L97	#,
	.loc 1 414 0
	movl	-204(%rbp), %eax	# fd, tmp765
	movl	%eax, %edi	# tmp765,
	call	close	#
	jmp	.L97	#
.L69:
	.loc 1 421 0
	jmp	.L98	#
.L99:
	.loc 1 421 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L98:
	.loc 1 421 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp766
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L99	#,
	.loc 1 421 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp767
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L99	#,
	.loc 1 421 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp768
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L99	#,
	movq	-128(%rbp), %rax	# type, tmp769
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L99	#,
	movq	-128(%rbp), %rax	# type, tmp770
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L99	#,
	.loc 1 422 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, tmp771
	movzbl	(%rax), %eax	# *type_70, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L100	#,
	.loc 1 422 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp772
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_309, D.13943
	testb	%al, %al	# D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp773
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_311, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp774
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_313, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp775
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_315, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp776
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_317, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp777
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_319, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L101	#,
	movq	-128(%rbp), %rax	# type, tmp778
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_321, D.13943
	cmpb	$58, %al	#, D.13943
	jne	.L100	#,
.L101:
	.loc 1 424 0 is_stmt 1
	addq	$1, -128(%rbp)	#, type
	.loc 1 425 0
	call	Perl_PerlIO_stdout	#
	movq	%rax, -136(%rbp)	# tmp779, fp
	.loc 1 426 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$45, 162(%rax)	#, _325->xio_type
	.loc 1 427 0
	cmpl	$1, 32(%rbp)	#, num_svs
	jle	.L102	#,
	.loc 1 428 0
	movl	$45, %esi	#,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 427 0
	jmp	.L97	#
.L102:
	.loc 1 427 0 is_stmt 0 discriminator 1
	jmp	.L97	#
.L100:
	.loc 1 432 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L103	#,
	.loc 1 433 0
	movq	-128(%rbp), %rax	# type, tmp780
	movq	%rax, %rdi	# tmp780,
	call	strlen	#
	movq	%rax, %rdx	#, D.13954
	movq	-128(%rbp), %rax	# type, tmp781
	movq	%rdx, %rsi	# D.13954,
	movq	%rax, %rdi	# tmp781,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2mortal	#
	movq	%rax, -160(%rbp)	# namesv.44, namesv
	.loc 1 434 0
	movl	$1, 32(%rbp)	#, num_svs
	.loc 1 435 0
	leaq	-160(%rbp), %rax	#, tmp782
	movq	%rax, -264(%rbp)	# tmp782, svp
	.loc 1 436 0
	movq	$0, -128(%rbp)	#, type
.L103:
	.loc 1 438 0
	leaq	-48(%rbp), %rsi	#, tmp783
	movq	-128(%rbp), %rax	# type, tmp784
	movq	-264(%rbp), %rdx	# svp, tmp785
	movq	%rdx, 8(%rsp)	# tmp785,
	movl	32(%rbp), %edx	# num_svs, tmp786
	movl	%edx, (%rsp)	# tmp786,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# tmp784,
	call	PerlIO_openn	#
	movq	%rax, -136(%rbp)	# tmp787, fp
.L97:
	.loc 1 441 0
	cmpq	$0, -136(%rbp)	#, fp
	jne	.L26	#,
	.loc 1 441 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, type
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp788
	movzbl	(%rax), %eax	# *type_72, D.13943
	testb	%al, %al	# D.13943
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp789
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$58, %al	#, D.13943
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp790
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$64, %al	#, D.13943
	jle	.L104	#,
	.loc 1 441 0 discriminator 2
	movq	-128(%rbp), %rax	# type, tmp791
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$90, %al	#, D.13943
	jle	.L26	#,
.L104:
	.loc 1 441 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp792
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$96, %al	#, D.13943
	jle	.L105	#,
	.loc 1 441 0 discriminator 2
	movq	-128(%rbp), %rax	# type, tmp793
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$122, %al	#, D.13943
	jle	.L26	#,
.L105:
	.loc 1 441 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp794
	movzbl	(%rax), %eax	# *type_72, D.13943
	cmpb	$95, %al	#, D.13943
	je	.L26	#,
	.loc 1 442 0 is_stmt 1
	jmp	.L43	#
.L63:
	.loc 1 444 0
	movq	-128(%rbp), %rax	# type, tmp795
	movzbl	(%rax), %eax	# *type_59, D.13943
	cmpb	$60, %al	#, D.13943
	jne	.L106	#,
	.loc 1 446 0
	addq	$1, -128(%rbp)	#, type
	jmp	.L107	#
.L108:
	.loc 1 446 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L107:
	.loc 1 446 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp796
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L108	#,
	.loc 1 446 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp797
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L108	#,
	.loc 1 446 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp798
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L108	#,
	movq	-128(%rbp), %rax	# type, tmp799
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L108	#,
	movq	-128(%rbp), %rax	# type, tmp800
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L108	#,
	.loc 1 447 0 is_stmt 1
	movb	$114, -48(%rbp)	#, mode
	.loc 1 454 0
	cmpb	$0, -217(%rbp)	#, in_raw
	je	.L109	#,
	.loc 1 455 0
	leaq	-48(%rbp), %rax	#, tmp801
	movq	$-1, %rcx	#, tmp805
	movq	%rax, %rdx	# tmp801, tmp804
	movl	$0, %eax	#, tmp806
	movq	%rdx, %rdi	# tmp804, tmp804
	repnz scasb
	movq	%rcx, %rax	# tmp802, tmp802
	notq	%rax	# tmp803
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp807
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$98, (%rax)	#, MEM[(void *)_342]
	jmp	.L110	#
.L109:
	.loc 1 456 0
	cmpb	$0, -216(%rbp)	#, in_crlf
	je	.L110	#,
	.loc 1 457 0
	leaq	-48(%rbp), %rax	#, tmp808
	movq	$-1, %rcx	#, tmp812
	movq	%rax, %rdx	# tmp808, tmp811
	movl	$0, %eax	#, tmp813
	movq	%rdx, %rdi	# tmp811, tmp811
	repnz scasb
	movq	%rcx, %rax	# tmp809, tmp809
	notq	%rax	# tmp810
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp814
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$116, (%rax)	#, MEM[(void *)_344]
.L110:
	.loc 1 459 0
	movq	-128(%rbp), %rax	# type, tmp815
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$38, %al	#, D.13943
	jne	.L111	#,
	.loc 1 460 0
	jmp	.L70	#
.L111:
	.loc 1 462 0
	movq	-128(%rbp), %rax	# type, tmp816
	movzbl	(%rax), %eax	# *type_73, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L112	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp817
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_347, D.13943
	testb	%al, %al	# D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp818
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_349, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp819
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_351, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp820
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_353, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp821
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_355, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp822
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_357, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L113	#,
	movq	-128(%rbp), %rax	# type, tmp823
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_359, D.13943
	cmpb	$58, %al	#, D.13943
	jne	.L112	#,
.L113:
	.loc 1 464 0 is_stmt 1
	addq	$1, -128(%rbp)	#, type
	.loc 1 465 0
	call	Perl_PerlIO_stdin	#
	movq	%rax, -136(%rbp)	# tmp824, fp
	.loc 1 466 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$45, 162(%rax)	#, _363->xio_type
	.loc 1 467 0
	cmpl	$1, 32(%rbp)	#, num_svs
	jle	.L114	#,
	.loc 1 468 0
	movl	$45, %esi	#,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 467 0
	jmp	.L115	#
.L114:
	.loc 1 467 0 is_stmt 0 discriminator 1
	jmp	.L115	#
.L112:
	.loc 1 472 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L116	#,
	.loc 1 473 0
	movq	-128(%rbp), %rax	# type, tmp825
	movq	%rax, %rdi	# tmp825,
	call	strlen	#
	movq	%rax, %rdx	#, D.13954
	movq	-128(%rbp), %rax	# type, tmp826
	movq	%rdx, %rsi	# D.13954,
	movq	%rax, %rdi	# tmp826,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2mortal	#
	movq	%rax, -160(%rbp)	# namesv.45, namesv
	.loc 1 474 0
	movl	$1, 32(%rbp)	#, num_svs
	.loc 1 475 0
	leaq	-160(%rbp), %rax	#, tmp827
	movq	%rax, -264(%rbp)	# tmp827, svp
	.loc 1 476 0
	movq	$0, -128(%rbp)	#, type
.L116:
	.loc 1 478 0
	leaq	-48(%rbp), %rsi	#, tmp828
	movq	-128(%rbp), %rax	# type, tmp829
	movq	-264(%rbp), %rdx	# svp, tmp830
	movq	%rdx, 8(%rsp)	# tmp830,
	movl	32(%rbp), %edx	# num_svs, tmp831
	movl	%edx, (%rsp)	# tmp831,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# tmp829,
	call	PerlIO_openn	#
	movq	%rax, -136(%rbp)	# tmp832, fp
.L115:
	.loc 1 480 0
	cmpq	$0, -136(%rbp)	#, fp
	jne	.L26	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, type
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp833
	movzbl	(%rax), %eax	# *type_75, D.13943
	testb	%al, %al	# D.13943
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp834
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$58, %al	#, D.13943
	je	.L26	#,
	movq	-128(%rbp), %rax	# type, tmp835
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$64, %al	#, D.13943
	jle	.L117	#,
	.loc 1 480 0 discriminator 2
	movq	-128(%rbp), %rax	# type, tmp836
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$90, %al	#, D.13943
	jle	.L26	#,
.L117:
	.loc 1 480 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp837
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$96, %al	#, D.13943
	jle	.L118	#,
	.loc 1 480 0 discriminator 2
	movq	-128(%rbp), %rax	# type, tmp838
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$122, %al	#, D.13943
	jle	.L26	#,
.L118:
	.loc 1 480 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp839
	movzbl	(%rax), %eax	# *type_75, D.13943
	cmpb	$95, %al	#, D.13943
	je	.L26	#,
	.loc 1 481 0 is_stmt 1
	jmp	.L43	#
.L106:
	.loc 1 483 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L119	#,
	.loc 1 484 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp840
	movzbl	(%rax), %eax	# *type_59, D.13943
	.loc 1 483 0 discriminator 1
	cmpb	$45, %al	#, D.13943
	jne	.L119	#,
	.loc 1 484 0
	movq	-128(%rbp), %rax	# type, tmp841
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_380, D.13943
	cmpb	$124, %al	#, D.13943
	je	.L120	#,
.L119:
	.loc 1 484 0 is_stmt 0 discriminator 1
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L121	#,
	.loc 1 485 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, tmp842
	addq	$1, %rax	#, D.13952
	cmpq	-120(%rbp), %rax	# tend, D.13952
	jae	.L121	#,
	.loc 1 485 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp843
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_383, D.13943
	cmpb	$124, %al	#, D.13943
	jne	.L121	#,
.L120:
	.loc 1 486 0 is_stmt 1
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L122	#,
	.loc 1 487 0
	addq	$2, -128(%rbp)	#, type
	jmp	.L123	#
.L122:
	.loc 1 490 0
	subq	$1, -120(%rbp)	#, tend
	movq	-120(%rbp), %rax	# tend, tmp844
	movb	$0, (%rax)	#, *tend_410
	.loc 1 491 0
	jmp	.L124	#
.L126:
	.loc 1 492 0
	subq	$1, -120(%rbp)	#, tend
	movq	-120(%rbp), %rax	# tend, tmp845
	movb	$0, (%rax)	#, *tend_421
.L124:
	.loc 1 491 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp846
	cmpq	-128(%rbp), %rax	# type, tmp846
	jbe	.L125	#,
	.loc 1 491 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# tend, tmp847
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_411, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L126	#,
	.loc 1 491 0 discriminator 1
	movq	-120(%rbp), %rax	# tend, tmp848
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_413, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L126	#,
	movq	-120(%rbp), %rax	# tend, tmp849
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_415, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L126	#,
	movq	-120(%rbp), %rax	# tend, tmp850
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_417, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L126	#,
	movq	-120(%rbp), %rax	# tend, tmp851
	subq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_419, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L126	#,
.L125:
	.loc 1 494 0 is_stmt 1
	jmp	.L127	#
.L128:
	.loc 1 494 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L127:
	.loc 1 494 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp852
	movzbl	(%rax), %eax	# *type_76, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L128	#,
	.loc 1 494 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp853
	movzbl	(%rax), %eax	# *type_76, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L128	#,
	.loc 1 494 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp854
	movzbl	(%rax), %eax	# *type_76, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L128	#,
	movq	-128(%rbp), %rax	# type, tmp855
	movzbl	(%rax), %eax	# *type_76, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L128	#,
	movq	-128(%rbp), %rax	# type, tmp856
	movzbl	(%rax), %eax	# *type_76, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L128	#,
	.loc 1 495 0 is_stmt 1
	movq	-128(%rbp), %r12	# type, name
	.loc 1 496 0
	movq	-120(%rbp), %rdx	# tend, tend.46
	movq	-128(%rbp), %rax	# type, type.47
	subq	%rax, %rdx	# type.47, D.13957
	movq	%rdx, %rax	# D.13957, D.13957
	movl	%eax, -236(%rbp)	# D.13957, len
.L123:
	.loc 1 498 0
	movzbl	(%r12), %eax	# *name_3, D.13943
	testb	%al, %al	# D.13943
	jne	.L129	#,
	.loc 1 500 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.48
	movq	80(%rax), %rax	# PL_curcop.48_434->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	je	.L130	#,
	.loc 1 500 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.49
	movq	80(%rax), %rax	# PL_curcop.49_436->cop_warnings, D.13955
	cmpq	$32, %rax	#, D.13955
	je	.L130	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.50
	movq	80(%rax), %rax	# PL_curcop.50_438->cop_warnings, D.13955
	cmpq	$16, %rax	#, D.13955
	je	.L131	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.51
	movq	80(%rax), %rax	# PL_curcop.51_440->cop_warnings, D.13955
	movq	(%rax), %rax	# _441->sv_any, D.13958
	movq	(%rax), %rax	# MEM[(struct XPV *)_442].xpv_pv, D.13952
	addq	$2, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_444, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	andl	$16, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L131	#,
.L130:
	.loc 1 500 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.52
	movq	80(%rax), %rax	# PL_curcop.52_448->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	jne	.L132	#,
	.loc 1 500 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.53
	movzbl	%al, %eax	# PL_dowarn.53, D.13953
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	je	.L132	#,
.L131:
	.loc 1 501 0 is_stmt 1
	movl	$.LC6, %esi	#,
	movl	$10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L132:
	.loc 1 502 0
	call	__errno_location	#
	movl	$32, (%rax)	#, *_453
	.loc 1 503 0
	jmp	.L51	#
.L129:
	.loc 1 505 0
	movzbl	(%r12), %eax	# *name_3, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L133	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	leaq	1(%r12), %rax	#, D.13952
	movzbl	(%rax), %eax	# *_455, D.13943
	testb	%al, %al	# D.13943
	jne	.L133	#,
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L134	#,
.L133:
	.loc 1 506 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.54
	testb	%al, %al	# PL_tainting.54
	je	.L134	#,
	.loc 1 506 0 is_stmt 0 discriminator 1
	call	Perl_taint_env	#
.L134:
	.loc 1 507 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.55
	testb	%al, %al	# PL_tainting.55
	je	.L135	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	$.LC7, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L135:
	.loc 1 508 0 is_stmt 1
	movb	$114, -48(%rbp)	#, mode
	.loc 1 516 0
	cmpb	$0, -217(%rbp)	#, in_raw
	je	.L136	#,
	.loc 1 517 0
	leaq	-48(%rbp), %rax	#, tmp857
	movq	$-1, %rcx	#, tmp861
	movq	%rax, %rdx	# tmp857, tmp860
	movl	$0, %eax	#, tmp862
	movq	%rdx, %rdi	# tmp860, tmp860
	repnz scasb
	movq	%rcx, %rax	# tmp858, tmp858
	notq	%rax	# tmp859
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp863
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$98, (%rax)	#, MEM[(void *)_460]
	jmp	.L137	#
.L136:
	.loc 1 518 0
	cmpb	$0, -216(%rbp)	#, in_crlf
	je	.L137	#,
	.loc 1 519 0
	leaq	-48(%rbp), %rax	#, tmp864
	movq	$-1, %rcx	#, tmp868
	movq	%rax, %rdx	# tmp864, tmp867
	movl	$0, %eax	#, tmp869
	movq	%rdx, %rdi	# tmp867, tmp867
	repnz scasb
	movq	%rcx, %rax	# tmp865, tmp865
	notq	%rax	# tmp866
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp870
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$116, (%rax)	#, MEM[(void *)_462]
.L137:
	.loc 1 522 0
	cmpl	$1, 32(%rbp)	#, num_svs
	jle	.L138	#,
	.loc 1 523 0
	movq	-264(%rbp), %rdx	# svp, tmp871
	movl	32(%rbp), %ecx	# num_svs, tmp872
	leaq	-48(%rbp), %rax	#, tmp873
	movl	%ecx, %esi	# tmp872,
	movq	%rax, %rdi	# tmp873,
	call	Perl_my_popen_list	#
	movq	%rax, -136(%rbp)	# tmp874, fp
	jmp	.L139	#
.L138:
	.loc 1 526 0
	leaq	-48(%rbp), %rax	#, tmp875
	movq	%rax, %rsi	# tmp875,
	movq	%r12, %rdi	# name,
	call	Perl_my_popen	#
	movq	%rax, -136(%rbp)	# tmp876, fp
.L139:
	.loc 1 528 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$124, 162(%rax)	#, _465->xio_type
	.loc 1 529 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L140	#,
	.loc 1 530 0
	jmp	.L141	#
.L142:
	.loc 1 530 0 is_stmt 0 discriminator 2
	addq	$1, -128(%rbp)	#, type
.L141:
	.loc 1 530 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp877
	movzbl	(%rax), %eax	# *type_78, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L142	#,
	.loc 1 530 0 discriminator 3
	movq	-128(%rbp), %rax	# type, tmp878
	movzbl	(%rax), %eax	# *type_78, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L142	#,
	.loc 1 530 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp879
	movzbl	(%rax), %eax	# *type_78, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L142	#,
	movq	-128(%rbp), %rax	# type, tmp880
	movzbl	(%rax), %eax	# *type_78, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L142	#,
	movq	-128(%rbp), %rax	# type, tmp881
	movzbl	(%rax), %eax	# *type_78, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L142	#,
	.loc 1 531 0 is_stmt 1
	movq	-128(%rbp), %rax	# type, tmp882
	movzbl	(%rax), %eax	# *type_78, D.13943
	testb	%al, %al	# D.13943
	je	.L140	#,
	.loc 1 532 0
	movq	-128(%rbp), %rdx	# type, tmp883
	leaq	-48(%rbp), %rcx	#, tmp884
	movq	-136(%rbp), %rax	# fp, tmp885
	movq	%rcx, %rsi	# tmp884,
	movq	%rax, %rdi	# tmp885,
	call	PerlIO_apply_layers	#
	testl	%eax, %eax	# D.13953
	je	.L140	#,
	.loc 1 533 0
	jmp	.L51	#
.L140:
	.loc 1 529 0 discriminator 1
	jmp	.L26	#
.L121:
	.loc 1 539 0
	cmpl	$0, 32(%rbp)	#, num_svs
	je	.L143	#,
	.loc 1 540 0
	jmp	.L43	#
.L143:
	.loc 1 541 0
	movq	-128(%rbp), %r12	# type, name
	.loc 1 542 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$60, 162(%rax)	#, _386->xio_type
	.loc 1 544 0
	jmp	.L144	#
.L145:
	.loc 1 544 0 is_stmt 0 discriminator 2
	addq	$1, %r12	#, name
.L144:
	.loc 1 544 0 discriminator 1
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$32, %al	#, D.13943
	je	.L145	#,
	.loc 1 544 0 discriminator 3
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$9, %al	#, D.13943
	je	.L145	#,
	.loc 1 544 0 discriminator 1
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$10, %al	#, D.13943
	je	.L145	#,
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$13, %al	#, D.13943
	je	.L145	#,
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$12, %al	#, D.13943
	je	.L145	#,
	.loc 1 545 0 is_stmt 1
	movb	$114, -48(%rbp)	#, mode
	.loc 1 553 0
	cmpb	$0, -217(%rbp)	#, in_raw
	je	.L146	#,
	.loc 1 554 0
	leaq	-48(%rbp), %rax	#, tmp886
	movq	$-1, %rcx	#, tmp890
	movq	%rax, %rdx	# tmp886, tmp889
	movl	$0, %eax	#, tmp891
	movq	%rdx, %rdi	# tmp889, tmp889
	repnz scasb
	movq	%rcx, %rax	# tmp887, tmp887
	notq	%rax	# tmp888
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp892
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$98, (%rax)	#, MEM[(void *)_393]
	jmp	.L147	#
.L146:
	.loc 1 555 0
	cmpb	$0, -216(%rbp)	#, in_crlf
	je	.L147	#,
	.loc 1 556 0
	leaq	-48(%rbp), %rax	#, tmp893
	movq	$-1, %rcx	#, tmp897
	movq	%rax, %rdx	# tmp893, tmp896
	movl	$0, %eax	#, tmp898
	movq	%rdx, %rdi	# tmp896, tmp896
	repnz scasb
	movq	%rcx, %rax	# tmp894, tmp894
	notq	%rax	# tmp895
	leaq	-1(%rax), %rdx	#, D.13954
	leaq	-48(%rbp), %rax	#, tmp899
	addq	%rdx, %rax	# D.13954, D.13952
	movw	$116, (%rax)	#, MEM[(void *)_395]
.L147:
	.loc 1 559 0
	movzbl	(%r12), %eax	# *name_4, D.13943
	cmpb	$45, %al	#, D.13943
	jne	.L148	#,
	.loc 1 559 0 is_stmt 0 discriminator 1
	leaq	1(%r12), %rax	#, D.13952
	movzbl	(%rax), %eax	# *_397, D.13943
	testb	%al, %al	# D.13943
	jne	.L148	#,
	.loc 1 560 0 is_stmt 1
	call	Perl_PerlIO_stdin	#
	movq	%rax, -136(%rbp)	# tmp900, fp
	.loc 1 561 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$45, 162(%rax)	#, _400->xio_type
	jmp	.L26	#
.L148:
	.loc 1 564 0
	cmpl	$0, 32(%rbp)	#, num_svs
	jne	.L149	#,
	.loc 1 565 0
	movq	-128(%rbp), %rax	# type, tmp901
	movq	%rax, %rdi	# tmp901,
	call	strlen	#
	movq	%rax, %rdx	#, D.13954
	movq	-128(%rbp), %rax	# type, tmp902
	movq	%rdx, %rsi	# D.13954,
	movq	%rax, %rdi	# tmp902,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13955,
	call	Perl_sv_2mortal	#
	movq	%rax, -160(%rbp)	# namesv.56, namesv
	.loc 1 566 0
	movl	$1, 32(%rbp)	#, num_svs
	.loc 1 567 0
	leaq	-160(%rbp), %rax	#, tmp903
	movq	%rax, -264(%rbp)	# tmp903, svp
	.loc 1 568 0
	movq	$0, -128(%rbp)	#, type
.L149:
	.loc 1 570 0
	leaq	-48(%rbp), %rsi	#, tmp904
	movq	-128(%rbp), %rax	# type, tmp905
	movq	-264(%rbp), %rdx	# svp, tmp906
	movq	%rdx, 8(%rsp)	# tmp906,
	movl	32(%rbp), %edx	# num_svs, tmp907
	movl	%edx, (%rsp)	# tmp907,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# tmp905,
	call	PerlIO_openn	#
	movq	%rax, -136(%rbp)	# tmp908, fp
.L26:
.LBE4:
	.loc 1 574 0
	cmpq	$0, -136(%rbp)	#, fp
	jne	.L150	#,
	.loc 1 575 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.57
	movq	80(%rax), %rax	# PL_curcop.57_626->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	je	.L151	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.58
	movq	80(%rax), %rax	# PL_curcop.58_628->cop_warnings, D.13955
	cmpq	$32, %rax	#, D.13955
	je	.L151	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.59
	movq	80(%rax), %rax	# PL_curcop.59_630->cop_warnings, D.13955
	cmpq	$16, %rax	#, D.13955
	je	.L152	#,
	.loc 1 575 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.60
	movq	80(%rax), %rax	# PL_curcop.60_632->cop_warnings, D.13955
	movq	(%rax), %rax	# _633->sv_any, D.13958
	movq	(%rax), %rax	# MEM[(struct XPV *)_634].xpv_pv, D.13952
	addq	$2, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_636, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	andl	$4, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L152	#,
.L151:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.61
	movq	80(%rax), %rax	# PL_curcop.61_640->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	jne	.L153	#,
	.loc 1 575 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.62
	movzbl	%al, %eax	# PL_dowarn.62, D.13953
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	je	.L153	#,
.L152:
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _645->xio_type, D.13943
	cmpb	$60, %al	#, D.13943
	jne	.L153	#,
	movl	$10, %esi	#,
	movq	%r12, %rdi	# name,
	call	strchr	#
	testq	%rax, %rax	# D.13952
	je	.L153	#,
	.loc 1 576 0 is_stmt 1
	movl	$.LC4, %edx	#,
	movl	$PL_warn_nl, %esi	#,
	movl	$9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 577 0
	jmp	.L51	#
.L153:
	jmp	.L51	#
.L150:
	.loc 1 580 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.63
	movq	80(%rax), %rax	# PL_curcop.63_648->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	je	.L154	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.64
	movq	80(%rax), %rax	# PL_curcop.64_650->cop_warnings, D.13955
	cmpq	$32, %rax	#, D.13955
	je	.L154	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.65
	movq	80(%rax), %rax	# PL_curcop.65_652->cop_warnings, D.13955
	cmpq	$16, %rax	#, D.13955
	je	.L155	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.66
	movq	80(%rax), %rax	# PL_curcop.66_654->cop_warnings, D.13955
	movq	(%rax), %rax	# _655->sv_any, D.13958
	movq	(%rax), %rax	# MEM[(struct XPV *)_656].xpv_pv, D.13952
	addq	$1, %rax	#, D.13952
	movzbl	(%rax), %eax	# *_658, D.13943
	movsbl	%al, %eax	# D.13943, D.13953
	andl	$4, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	jne	.L155	#,
.L154:
	.loc 1 580 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.67
	movq	80(%rax), %rax	# PL_curcop.67_662->cop_warnings, D.13955
	testq	%rax, %rax	# D.13955
	jne	.L156	#,
	.loc 1 580 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.68
	movzbl	%al, %eax	# PL_dowarn.68, D.13953
	andl	$1, %eax	#, D.13953
	testl	%eax, %eax	# D.13953
	je	.L156	#,
.L155:
	.loc 1 581 0 is_stmt 1
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _667->xio_type, D.13943
	cmpb	$60, %al	#, D.13943
	jne	.L157	#,
	.loc 1 582 0 discriminator 1
	call	Perl_PerlIO_stdout	#
	.loc 1 581 0 discriminator 1
	cmpq	-136(%rbp), %rax	# fp, D.13951
	je	.L158	#,
	.loc 1 582 0
	call	Perl_PerlIO_stderr	#
	cmpq	-136(%rbp), %rax	# fp, D.13951
	jne	.L157	#,
.L158:
	.loc 1 586 0
	movq	-232(%rbp), %rax	# gv, tmp909
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _671->xgv_gp, D.13946
	movq	48(%rax), %rax	# _672->gp_egv, D.13948
	testq	%rax, %rax	# D.13948
	je	.L159	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# gv, tmp910
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _674->xgv_gp, D.13946
	movq	48(%rax), %rax	# _675->gp_egv, iftmp.69
	jmp	.L160	#
.L159:
	.loc 1 586 0 discriminator 2
	movq	-232(%rbp), %rax	# gv, iftmp.69
.L160:
	.loc 1 586 0 discriminator 3
	movq	(%rax), %rax	# iftmp.69_94->sv_any, D.13945
	.loc 1 583 0 is_stmt 1 discriminator 3
	movq	64(%rax), %r12	# _678->xgv_name, D.13952
	.loc 1 585 0 discriminator 3
	call	Perl_PerlIO_stdout	#
	.loc 1 583 0 discriminator 3
	cmpq	-136(%rbp), %rax	# fp, D.13951
	jne	.L161	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	movl	$.LC12, %eax	#, iftmp.70
	jmp	.L162	#
.L161:
	.loc 1 583 0 discriminator 2
	movl	$.LC13, %eax	#, iftmp.70
.L162:
	.loc 1 583 0 discriminator 3
	movq	%r12, %rcx	# D.13952,
	movq	%rax, %rdx	# iftmp.70,
	movl	$.LC14, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L156	#
.L157:
	.loc 1 588 0 is_stmt 1
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _683->xio_type, D.13943
	cmpb	$62, %al	#, D.13943
	jne	.L156	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	call	Perl_PerlIO_stdin	#
	cmpq	-136(%rbp), %rax	# fp, D.13951
	jne	.L156	#,
	.loc 1 591 0 is_stmt 1
	movq	-232(%rbp), %rax	# gv, tmp911
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _686->xgv_gp, D.13946
	movq	48(%rax), %rax	# _687->gp_egv, D.13948
	testq	%rax, %rax	# D.13948
	je	.L163	#,
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# gv, tmp912
	movq	(%rax), %rax	# gv_98(D)->sv_any, D.13945
	movq	56(%rax), %rax	# _689->xgv_gp, D.13946
	movq	48(%rax), %rax	# _690->gp_egv, iftmp.71
	jmp	.L164	#
.L163:
	.loc 1 591 0 discriminator 2
	movq	-232(%rbp), %rax	# gv, iftmp.71
.L164:
	.loc 1 591 0 discriminator 3
	movq	(%rax), %rax	# iftmp.71_96->sv_any, D.13945
	.loc 1 589 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _693->xgv_name, D.13952
	movq	%rax, %rdx	# D.13952,
	movl	$.LC15, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L156:
	.loc 1 595 0
	movq	-136(%rbp), %rax	# fp, tmp913
	movq	%rax, %rdi	# tmp913,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -204(%rbp)	# tmp914, fd
	.loc 1 600 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _696->xio_type, D.13943
	testb	%al, %al	# D.13943
	je	.L165	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _698->xio_type, D.13943
	cmpb	$124, %al	#, D.13943
	je	.L165	#,
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _700->xio_type, D.13943
	cmpb	$45, %al	#, D.13943
	je	.L165	#,
	cmpl	$0, -204(%rbp)	#, fd
	js	.L165	#,
	.loc 1 601 0 is_stmt 1
	movl	-204(%rbp), %eax	# fd, tmp915
	movl	$PL_statbuf, %esi	#,
	movl	%eax, %edi	# tmp915,
	call	fstat	#
	testl	%eax, %eax	# D.13953
	jns	.L166	#,
	.loc 1 603 0
	movq	-136(%rbp), %rax	# fp, tmp916
	movq	%rax, %rdi	# tmp916,
	call	Perl_PerlIO_close	#
	.loc 1 604 0
	jmp	.L51	#
.L166:
	.loc 1 607 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.13944
	andl	$61440, %eax	#, D.13944
	cmpl	$49152, %eax	#, D.13944
	jne	.L165	#,
	.loc 1 608 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movb	$115, 162(%rax)	#, _705->xio_type
.L165:
	.loc 1 635 0
	cmpq	$0, -152(%rbp)	#, saveifp
	je	.L167	#,
	.loc 1 639 0
	cmpq	$0, -144(%rbp)	#, saveofp
	je	.L168	#,
	.loc 1 640 0
	movq	-144(%rbp), %rax	# saveofp, tmp917
	movq	%rax, %rdi	# tmp917,
	call	Perl_PerlIO_flush	#
	.loc 1 641 0
	movq	-144(%rbp), %rax	# saveofp, tmp918
	cmpq	-152(%rbp), %rax	# saveifp, tmp918
	je	.L168	#,
	.loc 1 642 0
	movq	-144(%rbp), %rax	# saveofp, tmp919
	movq	%rax, %rdi	# tmp919,
	call	Perl_PerlIO_close	#
.L168:
	.loc 1 645 0
	movl	-208(%rbp), %eax	# savefd, tmp920
	cmpl	-204(%rbp), %eax	# fd, tmp920
	je	.L169	#,
	.loc 1 650 0
	movl	-208(%rbp), %edx	# savefd, tmp921
	movl	-204(%rbp), %eax	# fd, tmp922
	movl	%edx, %esi	# tmp921,
	movl	%eax, %edi	# tmp922,
	call	dup2	#
	testl	%eax, %eax	# D.13953
	jns	.L170	#,
	.loc 1 651 0
	movq	-136(%rbp), %rax	# fp, tmp923
	movq	%rax, %rdi	# tmp923,
	call	Perl_PerlIO_close	#
	.loc 1 652 0
	jmp	.L51	#
.L170:
.LBB7:
	.loc 1 674 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.72
	movl	-204(%rbp), %ecx	# fd, tmp924
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp924,
	movq	%rax, %rdi	# PL_fdpid.72,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_708, tmp925
	movq	%rax, -56(%rbp)	# tmp925, sv
	.loc 1 675 0
	movq	-56(%rbp), %rax	# sv, tmp926
	movl	12(%rax), %eax	# sv_709->sv_flags, D.13944
	movzbl	%al, %eax	# D.13944, D.13944
	testl	%eax, %eax	# D.13944
	jne	.L171	#,
	.loc 1 675 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp927
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp927,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.13943
	je	.L173	#,
.L171:
	.loc 1 675 0 discriminator 1
	nop
.L173:
	.loc 1 676 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp928
	movq	(%rax), %rax	# sv_709->sv_any, D.13958
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_715].xiv_iv, D.13957
	movl	%eax, -180(%rbp)	# D.13957, pid
	.loc 1 677 0
	movq	-56(%rbp), %rax	# sv, tmp929
	movq	(%rax), %rax	# sv_709->sv_any, D.13958
	movq	$0, 24(%rax)	#, MEM[(struct XPVIV *)_718].xiv_iv
	.loc 1 678 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.74
	movl	-208(%rbp), %ecx	# savefd, tmp930
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp930,
	movq	%rax, %rdi	# PL_fdpid.74,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_720, tmp931
	movq	%rax, -56(%rbp)	# tmp931, sv
	.loc 1 679 0
	movq	-56(%rbp), %rax	# sv, tmp932
	movl	12(%rax), %eax	# sv_721->sv_flags, D.13944
	movzbl	%al, %eax	# D.13944, D.13944
	testl	%eax, %eax	# D.13944
	jne	.L174	#,
	.loc 1 679 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp933
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp933,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.13943
	je	.L176	#,
.L174:
	.loc 1 679 0 discriminator 1
	nop
.L176:
	.loc 1 680 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp934
	movq	(%rax), %rax	# sv_721->sv_any, D.13958
	movl	-180(%rbp), %edx	# pid, tmp935
	movslq	%edx, %rdx	# tmp935, D.13957
	movq	%rdx, 24(%rax)	# D.13957, MEM[(struct XPVIV *)_727].xiv_iv
.LBE7:
	.loc 1 685 0
	cmpb	$0, -218(%rbp)	#, was_fdopen
	je	.L177	#,
.LBB8:
	.loc 1 687 0
	movq	-136(%rbp), %rax	# fp, tmp936
	movq	%rax, %rdi	# tmp936,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -176(%rbp)	# tmp937, ofd
	.loc 1 688 0
	movl	-176(%rbp), %eax	# ofd, tmp938
	movl	%eax, %edi	# tmp938,
	call	dup	#
	movl	%eax, -172(%rbp)	# tmp939, dupfd
	.loc 1 691 0
	movl	-176(%rbp), %eax	# ofd, tmp940
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp940,
	movl	$0, %eax	#,
	call	fcntl	#
	movl	%eax, -168(%rbp)	# tmp941, coe
	.loc 1 693 0
	movq	-136(%rbp), %rax	# fp, tmp942
	movq	%rax, %rdi	# tmp942,
	call	Perl_PerlIO_close	#
	.loc 1 694 0
	movl	-176(%rbp), %edx	# ofd, tmp943
	movl	-172(%rbp), %eax	# dupfd, tmp944
	movl	%edx, %esi	# tmp943,
	movl	%eax, %edi	# tmp944,
	call	dup2	#
	.loc 1 697 0
	movl	-168(%rbp), %edx	# coe, tmp945
	movl	-176(%rbp), %eax	# ofd, tmp946
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp946,
	movl	$0, %eax	#,
	call	fcntl	#
	.loc 1 699 0
	movl	-172(%rbp), %eax	# dupfd, tmp947
	movl	%eax, %edi	# tmp947,
	call	close	#
.LBE8:
	jmp	.L169	#
.L177:
	.loc 1 702 0
	movq	-136(%rbp), %rax	# fp, tmp948
	movq	%rax, %rdi	# tmp948,
	call	Perl_PerlIO_close	#
.L169:
	.loc 1 704 0
	movq	-152(%rbp), %rax	# saveifp, tmp949
	movq	%rax, -136(%rbp)	# tmp949, fp
	.loc 1 705 0
	movq	-136(%rbp), %rax	# fp, tmp950
	movq	%rax, %rdi	# tmp950,
	call	Perl_PerlIO_clearerr	#
	.loc 1 706 0
	movq	-136(%rbp), %rax	# fp, tmp951
	movq	%rax, %rdi	# tmp951,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -204(%rbp)	# tmp952, fd
.L167:
	.loc 1 709 0
	cmpl	$0, -204(%rbp)	#, fd
	js	.L178	#,
.LBB9:
	.loc 1 710 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_734, tmp953
	movl	%eax, -164(%rbp)	# tmp953, save_errno
	.loc 1 711 0
	movl	PL_maxsysfd(%rip), %eax	# PL_maxsysfd, PL_maxsysfd.76
	cmpl	%eax, -204(%rbp)	# PL_maxsysfd.76, fd
	setg	%al	#, D.13961
	movzbl	%al, %edx	# D.13961, D.13953
	movl	-204(%rbp), %eax	# fd, tmp954
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp954,
	movl	$0, %eax	#,
	call	fcntl	#
	.loc 1 712 0
	call	__errno_location	#
	movl	-164(%rbp), %edx	# save_errno, tmp955
	movl	%edx, (%rax)	# tmp955, *_739
.L178:
.LBE9:
	.loc 1 715 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	-136(%rbp), %rdx	# fp, tmp956
	movq	%rdx, 56(%rax)	# tmp956, _740->xio_ifp
	.loc 1 717 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	(%rbx), %rdx	# io_113->sv_any, D.13950
	movzbl	163(%rdx), %edx	# _742->xio_flags, D.13943
	andl	$-33, %edx	#, D.13943
	movb	%dl, 163(%rax)	# D.13943, _741->xio_flags
	.loc 1 718 0
	movl	-212(%rbp), %eax	# writing, writing.77
	testl	%eax, %eax	# writing.77
	je	.L179	#,
	.loc 1 719 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _746->xio_type, D.13943
	cmpb	$115, %al	#, D.13943
	je	.L180	#,
	.loc 1 720 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	162(%rax), %eax	# _748->xio_type, D.13943
	cmpb	$62, %al	#, D.13943
	jne	.L181	#,
	.loc 1 720 0 is_stmt 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, fd
	js	.L181	#,
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.13944
	andl	$61440, %eax	#, D.13944
	cmpl	$8192, %eax	#, D.13944
	jne	.L181	#,
.L180:
.LBB10:
	.loc 1 721 0 is_stmt 1
	leaq	-48(%rbp), %rax	#, tmp957
	movq	%rax, -96(%rbp)	# tmp957, s
	.loc 1 722 0
	movq	-96(%rbp), %rax	# s, tmp958
	movzbl	(%rax), %eax	# *s_753, D.13943
	cmpb	$73, %al	#, D.13943
	je	.L182	#,
	.loc 1 722 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# s, tmp959
	movzbl	(%rax), %eax	# *s_753, D.13943
	cmpb	$35, %al	#, D.13943
	jne	.L183	#,
.L182:
	.loc 1 723 0 is_stmt 1
	addq	$1, -96(%rbp)	#, s
.L183:
	.loc 1 724 0
	movq	-96(%rbp), %rax	# s, tmp960
	movb	$119, (%rax)	#, *s_87
	.loc 1 725 0
	movq	(%rbx), %r12	# io_113->sv_any, D.13950
	movl	-204(%rbp), %edx	# fd, tmp961
	movq	-96(%rbp), %rsi	# s, tmp962
	movq	-128(%rbp), %rax	# type, tmp963
	movq	-264(%rbp), %rcx	# svp, tmp964
	movq	%rcx, 8(%rsp)	# tmp964,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp963,
	call	PerlIO_openn	#
	movq	%rax, 64(%r12)	# D.13951, _757->xio_ofp
	movq	64(%r12), %rax	# _757->xio_ofp, D.13951
	testq	%rax, %rax	# D.13951
	jne	.L184	#,
	.loc 1 726 0
	movq	-136(%rbp), %rax	# fp, tmp965
	movq	%rax, %rdi	# tmp965,
	call	Perl_PerlIO_close	#
	.loc 1 727 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	$0, 56(%rax)	#, _760->xio_ifp
	.loc 1 728 0
	jmp	.L51	#
.L184:
.LBE10:
	.loc 1 720 0
	jmp	.L179	#
.L181:
	.loc 1 732 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	-136(%rbp), %rdx	# fp, tmp966
	movq	%rdx, 64(%rax)	# tmp966, _752->xio_ofp
.L179:
	.loc 1 734 0
	movl	$1, %eax	#, D.13943
	jmp	.L186	#
.L51:
	.loc 1 737 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	-152(%rbp), %rdx	# saveifp, tmp967
	movq	%rdx, 56(%rax)	# tmp967, _762->xio_ifp
	.loc 1 738 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movq	-144(%rbp), %rdx	# saveofp, tmp968
	movq	%rdx, 64(%rax)	# tmp968, _763->xio_ofp
	.loc 1 739 0
	movq	(%rbx), %rax	# io_113->sv_any, D.13950
	movzbl	-219(%rbp), %edx	# savetype, tmp969
	movb	%dl, 162(%rax)	# tmp969, _764->xio_type
	.loc 1 740 0
	movl	$0, %eax	#, D.13943
.L186:
	.loc 1 741 0
	movq	-40(%rbp), %rbx	# D.13962, tmp972
	xorq	%fs:40, %rbx	#, tmp972
	je	.L187	#,
	call	__stack_chk_fail	#
.L187:
	addq	$264, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_do_openn, .-Perl_do_openn
	.section	.rodata
.LC16:
	.string	"ARGVOUT"
.LC17:
	.string	"inplace open"
.LC18:
	.string	"STDOUT"
	.align 8
.LC19:
	.string	"Can't do inplace edit: %s is not a regular file"
	.align 8
.LC20:
	.string	"Can't rename %s to %_: %s, skipping file"
	.align 8
.LC21:
	.string	"Can't remove %s: %s, skipping file"
.LC22:
	.string	">"
	.align 8
.LC23:
	.string	"Can't do inplace edit on %s: %s"
.LC24:
	.string	"Can't open %s: %s"
	.text
	.globl	Perl_nextargv
	.type	Perl_nextargv, @function
Perl_nextargv:
.LFB5:
	.loc 1 745 0
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
	movq	%rdi, %rbx	# gv, gv
	.loc 1 753 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _8->xgv_gp, D.13983
	movq	16(%rax), %rax	# _9->gp_io, tmp338
	movq	%rax, -32(%rbp)	# tmp338, io
	.loc 1 755 0
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.78
	testq	%rax, %rax	# PL_argvoutgv.78
	jne	.L189	#,
	.loc 1 756 0
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_argvoutgv(%rip)	# PL_argvoutgv.79, PL_argvoutgv
.L189:
	.loc 1 757 0
	cmpq	$0, -32(%rbp)	#, io
	je	.L190	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp339
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movzbl	163(%rax), %eax	# _13->xio_flags, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$1, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L190	#,
	movq	-32(%rbp), %rax	# io, tmp340
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movzbl	163(%rax), %eax	# _17->xio_flags, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$2, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L190	#,
	.loc 1 758 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp341
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movq	-32(%rbp), %rdx	# io, tmp342
	movq	(%rdx), %rdx	# io_10->sv_any, D.13984
	movzbl	163(%rdx), %edx	# _22->xio_flags, D.13985
	andl	$-3, %edx	#, D.13985
	movb	%dl, 163(%rax)	# D.13985, _21->xio_flags
	.loc 1 759 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.80
	testq	%rax, %rax	# PL_inplace.80
	je	.L190	#,
	.loc 1 760 0
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.81
	testq	%rax, %rax	# PL_argvout_stack.81
	jne	.L191	#,
	.loc 1 761 0
	call	Perl_newAV	#
	movq	%rax, PL_argvout_stack(%rip)	# PL_argvout_stack.82, PL_argvout_stack
.L191:
	.loc 1 762 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.83
	movq	%rax, PL_Sv(%rip)	# PL_defoutgv.83, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.85
	testq	%rax, %rax	# PL_Sv.85
	je	.L193	#,
	.loc 1 762 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.86
	movl	8(%rax), %edx	# PL_Sv.86_30->sv_refcnt, D.13987
	addl	$1, %edx	#, D.13987
	movl	%edx, 8(%rax)	# D.13987, PL_Sv.86_30->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.86_30->sv_refcnt, D.13987
	testl	%eax, %eax	# D.13987
	je	.L193	#,
	.loc 1 762 0
	nop
.L193:
	.loc 1 762 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.87
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.88
	movq	%rdx, %rsi	# PL_Sv.87,
	movq	%rax, %rdi	# PL_argvout_stack.88,
	call	Perl_av_push	#
.L190:
	.loc 1 765 0 is_stmt 1
	movl	PL_filemode(%rip), %eax	# PL_filemode, PL_filemode.89
	andl	$3072, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L194	#,
	.loc 1 766 0
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.91
	testq	%rax, %rax	# PL_argvoutgv.91
	je	.L195	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.92
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_argvoutgv.92_41].sv_flags, D.13987
	movzbl	%al, %eax	# D.13987, D.13987
	cmpl	$13, %eax	#, D.13987
	jne	.L195	#,
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.93
	movq	(%rax), %rax	# PL_argvoutgv.93_44->sv_any, D.13982
	movq	56(%rax), %rax	# _45->xgv_gp, D.13983
	testq	%rax, %rax	# D.13983
	je	.L195	#,
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.94
	movq	(%rax), %rax	# PL_argvoutgv.94_47->sv_any, D.13982
	movq	56(%rax), %rax	# _48->xgv_gp, D.13983
	movq	16(%rax), %rax	# _49->gp_io, D.13988
	testq	%rax, %rax	# D.13988
	je	.L195	#,
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.95
	movq	(%rax), %rax	# PL_argvoutgv.95_51->sv_any, D.13982
	movq	56(%rax), %rax	# _52->xgv_gp, D.13983
	movq	16(%rax), %rax	# _53->gp_io, iftmp.90
	jmp	.L196	#
.L195:
	.loc 1 766 0 discriminator 2
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.96
	movq	%rax, %rdi	# PL_argvoutgv.96,
	call	Perl_gv_IOadd	#
	movq	(%rax), %rax	# _56->sv_any, D.13982
	movq	56(%rax), %rax	# _57->xgv_gp, D.13983
	movq	16(%rax), %rax	# _58->gp_io, iftmp.90
.L196:
	.loc 1 766 0 discriminator 3
	movq	(%rax), %rax	# iftmp.90_3->sv_any, D.13984
	movq	56(%rax), %rax	# _60->xio_ifp, D.13981
	movq	%rax, %rdi	# D.13981,
	call	Perl_PerlIO_flush	#
	.loc 1 771 0 is_stmt 1 discriminator 3
	movl	PL_filemode(%rip), %eax	# PL_filemode, PL_filemode.97
	movl	%eax, %edx	# PL_filemode.97, PL_filemode.98
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.99
	movl	%edx, %esi	# PL_filemode.98,
	movq	%rax, %rdi	# PL_oldname.99,
	call	chmod	#
.L194:
	.loc 1 774 0
	movl	$-1, PL_lastfd(%rip)	#, PL_lastfd
	.loc 1 775 0
	movl	$0, PL_filemode(%rip)	#, PL_filemode
	.loc 1 776 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _65->xgv_gp, D.13983
	movq	32(%rax), %rax	# _66->gp_av, D.13990
	testq	%rax, %rax	# D.13990
	jne	.L197	#,
	.loc 1 777 0
	movl	$0, %eax	#, D.13981
	jmp	.L198	#
.L197:
	.loc 1 778 0
	jmp	.L199	#
.L229:
.LBB11:
	.loc 1 780 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _73->xgv_gp, D.13983
	movq	32(%rax), %rax	# _74->gp_av, D.13990
	movq	%rax, %rdi	# D.13990,
	call	Perl_av_shift	#
	movq	%rax, %r12	#, sv
	.loc 1 781 0
	movq	%r12, %rdi	# sv,
	call	Perl_save_freesv	#
	.loc 1 782 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _77->xgv_gp, D.13983
	movq	(%rax), %rax	# _78->gp_sv, D.13991
	movl	$2, %edx	#,
	movq	%r12, %rsi	# sv,
	movq	%rax, %rdi	# D.13991,
	call	Perl_sv_setsv_flags	#
	.loc 1 783 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _80->xgv_gp, D.13983
	movq	(%rax), %rax	# _81->gp_sv, D.13991
	movl	12(%rax), %eax	# _82->sv_flags, D.13987
	andl	$16384, %eax	#, D.13987
	testl	%eax, %eax	# D.13987
	je	.L200	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _85->xgv_gp, D.13983
	movq	(%rax), %rax	# _86->gp_sv, D.13991
	movq	%rax, %rdi	# D.13991,
	call	Perl_mg_set	#
.L200:
	.loc 1 784 0 is_stmt 1
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _88->xgv_gp, D.13983
	movq	(%rax), %rax	# _89->gp_sv, PL_Sv.100
	movq	%rax, PL_Sv(%rip)	# PL_Sv.100, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.102
	movl	12(%rax), %eax	# PL_Sv.102_91->sv_flags, D.13987
	andl	$262144, %eax	#, D.13987
	testl	%eax, %eax	# D.13987
	je	.L201	#,
	.loc 1 784 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.103
	movq	(%rax), %rax	# PL_Sv.103_94->sv_any, D.13992
	movq	8(%rax), %rax	# MEM[(struct XPV *)_95].xpv_cur, oldlen.104
	movq	%rax, -56(%rbp)	# oldlen.104, oldlen
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.105
	movq	(%rax), %rax	# PL_Sv.105_97->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_98].xpv_pv, iftmp.101
	jmp	.L202	#
.L201:
	.loc 1 784 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.106
	leaq	-56(%rbp), %rcx	#, tmp343
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp343,
	movq	%rax, %rdi	# PL_Sv.106,
	call	Perl_sv_2pv_flags	#
.L202:
	.loc 1 784 0 discriminator 3
	movq	%rax, PL_oldname(%rip)	# iftmp.101, PL_oldname
	.loc 1 785 0 is_stmt 1 discriminator 3
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.107
	testq	%rax, %rax	# PL_inplace.107
	setne	%al	#, D.13993
	movzbl	%al, %ecx	# D.13993, D.13986
	movq	-56(%rbp), %rax	# oldlen, oldlen.108
	movl	%eax, %edx	# oldlen.108, D.13986
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.109
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# PL_oldname.109,
	movq	%rbx, %rdi	# gv,
	call	Perl_do_open	#
	testb	%al, %al	# D.13985
	je	.L203	#,
	.loc 1 786 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.110
	testq	%rax, %rax	# PL_inplace.110
	je	.L204	#,
	.loc 1 787 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.111
	testb	%al, %al	# PL_tainting.111
	je	.L205	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	movl	$.LC17, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L205:
	.loc 1 788 0 is_stmt 1
	movq	-56(%rbp), %rax	# oldlen, oldlen.112
	cmpq	$1, %rax	#, oldlen.112
	jne	.L206	#,
	.loc 1 788 0 is_stmt 0 discriminator 1
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.113
	movzbl	(%rax), %eax	# *PL_oldname.113_112, D.13985
	cmpb	$45, %al	#, D.13985
	jne	.L206	#,
	.loc 1 789 0 is_stmt 1
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.13989,
	call	Perl_setdefout	#
	.loc 1 790 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _115->xgv_gp, D.13983
	movq	16(%rax), %rax	# _116->gp_io, D.13988
	movq	(%rax), %rax	# _117->sv_any, D.13984
	movq	56(%rax), %rax	# _118->xio_ifp, D.13981
	jmp	.L198	#
.L206:
	.loc 1 796 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.13987
	movl	%eax, PL_filemode(%rip)	# PL_filemode.114, PL_filemode
	.loc 1 797 0
	movl	PL_statbuf+28(%rip), %eax	# PL_statbuf.st_uid, tmp344
	movl	%eax, -68(%rbp)	# tmp344, fileuid
	.loc 1 798 0
	movl	PL_statbuf+32(%rip), %eax	# PL_statbuf.st_gid, tmp345
	movl	%eax, -64(%rbp)	# tmp345, filegid
	.loc 1 799 0
	movl	PL_filemode(%rip), %eax	# PL_filemode, PL_filemode.115
	andl	$61440, %eax	#, D.13986
	cmpl	$32768, %eax	#, D.13986
	je	.L208	#,
	.loc 1 800 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.116
	movq	80(%rax), %rax	# PL_curcop.116_126->cop_warnings, D.13991
	testq	%rax, %rax	# D.13991
	je	.L209	#,
	.loc 1 800 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.117
	movq	80(%rax), %rax	# PL_curcop.117_128->cop_warnings, D.13991
	cmpq	$16, %rax	#, D.13991
	je	.L209	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.118
	movq	80(%rax), %rax	# PL_curcop.118_130->cop_warnings, D.13991
	cmpq	$32, %rax	#, D.13991
	je	.L210	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.119
	movq	80(%rax), %rax	# PL_curcop.119_132->cop_warnings, D.13991
	movq	(%rax), %rax	# _133->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_134].xpv_pv, D.13994
	addq	$5, %rax	#, D.13994
	movzbl	(%rax), %eax	# *_136, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$64, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L210	#,
.L209:
	.loc 1 801 0 is_stmt 1
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.120
	movq	%rax, %rdx	# PL_oldname.120,
	movl	$.LC19, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L210:
	.loc 1 804 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gv,
	call	Perl_do_close	#
	.loc 1 805 0
	jmp	.L199	#
.L208:
	.loc 1 807 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.121
	movzbl	(%rax), %eax	# *PL_inplace.121_141, D.13985
	testb	%al, %al	# D.13985
	je	.L212	#,
.LBB12:
	.loc 1 808 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.122
	movl	$42, %esi	#,
	movq	%rax, %rdi	# PL_inplace.122,
	call	strchr	#
	movq	%rax, -48(%rbp)	# tmp346, star
	.loc 1 809 0
	cmpq	$0, -48(%rbp)	#, star
	je	.L213	#,
.LBB13:
	.loc 1 810 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, tmp347
	movq	%rax, -40(%rbp)	# tmp347, begin
	.loc 1 811 0
	movl	$0, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setpvn	#
.L214:
	.loc 1 813 0 discriminator 1
	movq	-48(%rbp), %rdx	# star, star.123
	movq	-40(%rbp), %rax	# begin, begin.124
	subq	%rax, %rdx	# begin.124, D.13995
	movq	%rdx, %rax	# D.13995, D.13995
	movq	%rax, %rdx	# D.13995, D.13996
	movq	-40(%rbp), %rax	# begin, tmp348
	movl	$2, %ecx	#,
	movq	%rax, %rsi	# tmp348,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 814 0 discriminator 1
	movq	-56(%rbp), %rdx	# oldlen, oldlen.125
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.126
	movl	$2, %ecx	#,
	movq	%rax, %rsi	# PL_oldname.126,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 815 0 discriminator 1
	addq	$1, -48(%rbp)	#, star
	movq	-48(%rbp), %rax	# star, tmp349
	movq	%rax, -40(%rbp)	# tmp349, begin
	.loc 1 816 0 discriminator 1
	movq	-40(%rbp), %rax	# begin, tmp350
	movl	$42, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	strchr	#
	movq	%rax, -48(%rbp)	# tmp351, star
	cmpq	$0, -48(%rbp)	#, star
	jne	.L214	#,
	.loc 1 817 0
	movq	-40(%rbp), %rax	# begin, tmp352
	movzbl	(%rax), %eax	# *begin_153, D.13985
	testb	%al, %al	# D.13985
	je	.L215	#,
	.loc 1 818 0
	movq	-40(%rbp), %rax	# begin, tmp353
	movq	%rax, %rsi	# tmp353,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpv	#
.LBE13:
	jmp	.L216	#
.L215:
	jmp	.L216	#
.L213:
	.loc 1 821 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.127
	movq	%rax, %rsi	# PL_inplace.127,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpv	#
.L216:
	.loc 1 857 0
	movq	(%r12), %rax	# sv_76->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_157].xpv_pv, D.13994
	movq	%rax, %rdi	# D.13994,
	call	unlink	#
	.loc 1 858 0
	movq	(%r12), %rax	# sv_76->sv_any, D.13992
	movq	(%rax), %rdx	# MEM[(struct XPV *)_159].xpv_pv, D.13994
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.128
	movq	%rdx, %rsi	# D.13994,
	movq	%rax, %rdi	# PL_oldname.128,
	call	link	#
	testl	%eax, %eax	# D.13986
	jns	.L217	#,
	.loc 1 859 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.129
	movq	80(%rax), %rax	# PL_curcop.129_163->cop_warnings, D.13991
	testq	%rax, %rax	# D.13991
	je	.L218	#,
	.loc 1 859 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.130
	movq	80(%rax), %rax	# PL_curcop.130_165->cop_warnings, D.13991
	cmpq	$16, %rax	#, D.13991
	je	.L218	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.131
	movq	80(%rax), %rax	# PL_curcop.131_167->cop_warnings, D.13991
	cmpq	$32, %rax	#, D.13991
	je	.L219	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.132
	movq	80(%rax), %rax	# PL_curcop.132_169->cop_warnings, D.13991
	movq	(%rax), %rax	# _170->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_171].xpv_pv, D.13994
	addq	$5, %rax	#, D.13994
	movzbl	(%rax), %eax	# *_173, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$64, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L219	#,
.L218:
	.loc 1 862 0 is_stmt 1
	call	__errno_location	#
	.loc 1 860 0
	movl	(%rax), %eax	# *_177, D.13986
	movl	%eax, %edi	# D.13986,
	call	strerror	#
	movq	%rax, %rdx	#, D.13994
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.133
	movq	%rdx, %r8	# D.13994,
	movq	%r12, %rcx	# sv,
	movq	%rax, %rdx	# PL_oldname.133,
	movl	$.LC20, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L219:
	.loc 1 863 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gv,
	call	Perl_do_close	#
	.loc 1 864 0
	jmp	.L199	#
.L217:
	.loc 1 866 0
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.134
	movq	%rax, %rdi	# PL_oldname.134,
	call	unlink	#
.LBE12:
	jmp	.L220	#
.L212:
	.loc 1 872 0
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.135
	movq	%rax, %rdi	# PL_oldname.135,
	call	unlink	#
	testl	%eax, %eax	# D.13986
	jns	.L220	#,
	.loc 1 873 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.136
	movq	80(%rax), %rax	# PL_curcop.136_184->cop_warnings, D.13991
	testq	%rax, %rax	# D.13991
	je	.L221	#,
	.loc 1 873 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.137
	movq	80(%rax), %rax	# PL_curcop.137_186->cop_warnings, D.13991
	cmpq	$16, %rax	#, D.13991
	je	.L221	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.138
	movq	80(%rax), %rax	# PL_curcop.138_188->cop_warnings, D.13991
	cmpq	$32, %rax	#, D.13991
	je	.L222	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.139
	movq	80(%rax), %rax	# PL_curcop.139_190->cop_warnings, D.13991
	movq	(%rax), %rax	# _191->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_192].xpv_pv, D.13994
	addq	$5, %rax	#, D.13994
	movzbl	(%rax), %eax	# *_194, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$64, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L222	#,
.L221:
	.loc 1 876 0 is_stmt 1
	call	__errno_location	#
	.loc 1 874 0
	movl	(%rax), %eax	# *_198, D.13986
	movl	%eax, %edi	# D.13986,
	call	strerror	#
	movq	%rax, %rdx	#, D.13994
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.140
	movq	%rdx, %rcx	# D.13994,
	movq	%rax, %rdx	# PL_oldname.140,
	movl	$.LC21, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L222:
	.loc 1 877 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gv,
	call	Perl_do_close	#
	.loc 1 878 0
	jmp	.L199	#
.L220:
	.loc 1 886 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.141
	testq	%rax, %rax	# PL_inplace.141
	sete	%al	#, D.13993
	movzbl	%al, %eax	# D.13993, D.13996
	movq	%rax, %rdx	# D.13996,
	movl	$.LC22, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setpvn	#
	.loc 1 887 0
	movq	-56(%rbp), %rdx	# oldlen, oldlen.142
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.143
	movl	$2, %ecx	#,
	movq	%rax, %rsi	# PL_oldname.143,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 888 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_207
	.loc 1 893 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.144
	testq	%rax, %rax	# PL_inplace.144
	setne	%al	#, D.13993
	movzbl	%al, %ecx	# D.13993, D.13986
	movq	(%r12), %rax	# sv_76->sv_any, D.13992
	movq	8(%rax), %rax	# MEM[(struct XPV *)_211].xpv_cur, D.13996
	movl	%eax, %edx	# D.13996, D.13986
	movq	(%r12), %rax	# sv_76->sv_any, D.13992
	movq	(%rax), %rsi	# MEM[(struct XPV *)_214].xpv_pv, D.13994
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.145
	movq	$0, (%rsp)	#,
	movl	$438, %r9d	#,
	movl	$193, %r8d	#,
	movq	%rax, %rdi	# PL_argvoutgv.145,
	call	Perl_do_open	#
	testb	%al, %al	# D.13985
	jne	.L223	#,
	.loc 1 897 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.146
	movq	80(%rax), %rax	# PL_curcop.146_218->cop_warnings, D.13991
	testq	%rax, %rax	# D.13991
	je	.L224	#,
	.loc 1 897 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.147
	movq	80(%rax), %rax	# PL_curcop.147_220->cop_warnings, D.13991
	cmpq	$16, %rax	#, D.13991
	je	.L224	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.148
	movq	80(%rax), %rax	# PL_curcop.148_222->cop_warnings, D.13991
	cmpq	$32, %rax	#, D.13991
	je	.L225	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.149
	movq	80(%rax), %rax	# PL_curcop.149_224->cop_warnings, D.13991
	movq	(%rax), %rax	# _225->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_226].xpv_pv, D.13994
	addq	$5, %rax	#, D.13994
	movzbl	(%rax), %eax	# *_228, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$64, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L225	#,
.L224:
	.loc 1 899 0 is_stmt 1
	call	__errno_location	#
	.loc 1 898 0
	movl	(%rax), %eax	# *_232, D.13986
	movl	%eax, %edi	# D.13986,
	call	strerror	#
	movq	%rax, %rdx	#, D.13994
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.150
	movq	%rdx, %rcx	# D.13994,
	movq	%rax, %rdx	# PL_oldname.150,
	movl	$.LC23, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L225:
	.loc 1 900 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gv,
	call	Perl_do_close	#
	.loc 1 901 0
	jmp	.L199	#
.L223:
	.loc 1 903 0
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.151
	movq	%rax, %rdi	# PL_argvoutgv.151,
	call	Perl_setdefout	#
	.loc 1 904 0
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.152
	movq	(%rax), %rax	# PL_argvoutgv.152_237->sv_any, D.13982
	movq	56(%rax), %rax	# _238->xgv_gp, D.13983
	movq	16(%rax), %rax	# _239->gp_io, D.13988
	movq	(%rax), %rax	# _240->sv_any, D.13984
	movq	56(%rax), %rax	# _241->xio_ifp, D.13981
	movq	%rax, %rdi	# D.13981,
	call	Perl_PerlIO_fileno	#
	movl	%eax, PL_lastfd(%rip)	# PL_lastfd.153, PL_lastfd
	.loc 1 905 0
	movl	PL_lastfd(%rip), %eax	# PL_lastfd, PL_lastfd.154
	movl	$PL_statbuf, %esi	#,
	movl	%eax, %edi	# PL_lastfd.154,
	call	fstat	#
	.loc 1 911 0
	movl	PL_filemode(%rip), %eax	# PL_filemode, PL_filemode.155
	movl	%eax, %edx	# PL_filemode.155, PL_filemode.156
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.157
	movl	%edx, %esi	# PL_filemode.156,
	movq	%rax, %rdi	# PL_oldname.157,
	call	chmod	#
	.loc 1 914 0
	movl	PL_statbuf+28(%rip), %eax	# PL_statbuf.st_uid, D.13987
	cmpl	-68(%rbp), %eax	# fileuid, D.13987
.L204:
	.loc 1 924 0
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _250->xgv_gp, D.13983
	movq	16(%rax), %rax	# _251->gp_io, D.13988
	movq	(%rax), %rax	# _252->sv_any, D.13984
	movq	56(%rax), %rax	# _253->xio_ifp, D.13981
	jmp	.L198	#
.L203:
	.loc 1 927 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.158
	movq	80(%rax), %rax	# PL_curcop.158_255->cop_warnings, D.13991
	testq	%rax, %rax	# D.13991
	je	.L226	#,
	.loc 1 927 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.159
	movq	80(%rax), %rax	# PL_curcop.159_257->cop_warnings, D.13991
	cmpq	$16, %rax	#, D.13991
	je	.L226	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.160
	movq	80(%rax), %rax	# PL_curcop.160_259->cop_warnings, D.13991
	cmpq	$32, %rax	#, D.13991
	je	.L227	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.161
	movq	80(%rax), %rax	# PL_curcop.161_261->cop_warnings, D.13991
	movq	(%rax), %rax	# _262->sv_any, D.13992
	movq	(%rax), %rax	# MEM[(struct XPV *)_263].xpv_pv, D.13994
	addq	$5, %rax	#, D.13994
	movzbl	(%rax), %eax	# *_265, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$64, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L227	#,
.L226:
.LBB14:
	.loc 1 928 0 is_stmt 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_269, tmp354
	movl	%eax, -60(%rbp)	# tmp354, eno
	.loc 1 929 0
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.162
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# PL_oldname.162,
	call	stat	#
	testl	%eax, %eax	# D.13986
	js	.L228	#,
	.loc 1 930 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.13987
	andl	$61440, %eax	#, D.13987
	cmpl	$32768, %eax	#, D.13987
	je	.L228	#,
	.loc 1 932 0
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.163
	movq	%rax, %rdx	# PL_oldname.163,
	movl	$.LC19, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L227	#
.L228:
	.loc 1 937 0
	movl	-60(%rbp), %eax	# eno, tmp355
	movl	%eax, %edi	# tmp355,
	call	strerror	#
	movq	%rax, %rdx	#, D.13994
	movq	PL_oldname(%rip), %rax	# PL_oldname, PL_oldname.164
	movq	%rdx, %rcx	# D.13994,
	movq	%rax, %rdx	# PL_oldname.164,
	movl	$.LC24, %esi	#,
	movl	$23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.LBE14:
	jmp	.L199	#
.L227:
.L199:
.LBE11:
	.loc 1 778 0 discriminator 1
	movq	(%rbx), %rax	# gv_7(D)->sv_any, D.13982
	movq	56(%rax), %rax	# _69->xgv_gp, D.13983
	movq	32(%rax), %rax	# _70->gp_av, D.13990
	movq	%rax, %rdi	# D.13990,
	call	Perl_av_len	#
	testl	%eax, %eax	# D.13986
	jns	.L229	#,
	.loc 1 942 0
	cmpq	$0, -32(%rbp)	#, io
	je	.L230	#,
	.loc 1 942 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp356
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movzbl	163(%rax), %eax	# _278->xio_flags, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$1, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L230	#,
	.loc 1 943 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp357
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movq	-32(%rbp), %rdx	# io, tmp358
	movq	(%rdx), %rdx	# io_10->sv_any, D.13984
	movzbl	163(%rdx), %edx	# _283->xio_flags, D.13985
	orl	$2, %edx	#, D.13998
	movb	%dl, 163(%rax)	# D.13998, _282->xio_flags
.L230:
	.loc 1 944 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.165
	testq	%rax, %rax	# PL_inplace.165
	je	.L231	#,
	.loc 1 945 0
	movq	PL_argvoutgv(%rip), %rax	# PL_argvoutgv, PL_argvoutgv.166
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_argvoutgv.166,
	call	Perl_do_close	#
	.loc 1 946 0
	cmpq	$0, -32(%rbp)	#, io
	je	.L232	#,
	.loc 1 946 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp359
	movq	(%rax), %rax	# io_10->sv_any, D.13984
	movzbl	163(%rax), %eax	# _288->xio_flags, D.13985
	movsbl	%al, %eax	# D.13985, D.13986
	andl	$1, %eax	#, D.13986
	testl	%eax, %eax	# D.13986
	je	.L232	#,
	.loc 1 947 0 is_stmt 1
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.167
	testq	%rax, %rax	# PL_argvout_stack.167
	je	.L232	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.168
	movq	(%rax), %rax	# PL_argvout_stack.168_293->sv_any, D.13999
	movq	8(%rax), %rax	# _294->xav_fill, D.13995
	testq	%rax, %rax	# D.13995
	js	.L232	#,
.LBB15:
	.loc 1 949 0 is_stmt 1
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.169
	movq	%rax, %rdi	# PL_argvout_stack.169,
	call	Perl_av_pop	#
	movq	%rax, -24(%rbp)	# tmp360, oldout
	.loc 1 950 0
	movq	-24(%rbp), %rax	# oldout, tmp361
	movq	%rax, %rdi	# tmp361,
	call	Perl_setdefout	#
	.loc 1 951 0
	movq	-24(%rbp), %rax	# oldout, tmp362
	movq	%rax, %rdi	# tmp362,
	call	Perl_sv_free	#
	.loc 1 952 0
	movl	$0, %eax	#, D.13981
	jmp	.L198	#
.L232:
.LBE15:
	.loc 1 954 0
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.13989,
	call	Perl_setdefout	#
.L231:
	.loc 1 956 0
	movl	$0, %eax	#, D.13981
.L198:
	.loc 1 957 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_nextargv, .-Perl_nextargv
	.globl	Perl_do_close
	.type	Perl_do_close, @function
Perl_do_close:
.LFB6:
	.loc 1 1008 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gv, gv
	movl	%esi, %eax	# not_implicit, tmp101
	movb	%al, -28(%rbp)	# tmp101, not_implicit
	.loc 1 1012 0
	cmpq	$0, -24(%rbp)	#, gv
	jne	.L234	#,
	.loc 1 1013 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, tmp102
	movq	%rax, -24(%rbp)	# tmp102, gv
.L234:
	.loc 1 1014 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L235	#,
	.loc 1 1014 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp103
	movl	12(%rax), %eax	# gv_1->sv_flags, D.14010
	movzbl	%al, %eax	# D.14010, D.14010
	cmpl	$13, %eax	#, D.14010
	je	.L236	#,
.L235:
	.loc 1 1015 0 is_stmt 1
	cmpb	$0, -28(%rbp)	#, not_implicit
	je	.L237	#,
	.loc 1 1016 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_51
.L237:
	.loc 1 1017 0
	movl	$0, %eax	#, D.14009
	jmp	.L238	#
.L236:
	.loc 1 1019 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L239	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp104
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_1].sv_flags, D.14010
	movzbl	%al, %eax	# D.14010, D.14010
	cmpl	$13, %eax	#, D.14010
	jne	.L239	#,
	movq	-24(%rbp), %rax	# gv, tmp105
	movq	(%rax), %rax	# gv_1->sv_any, D.14011
	movq	56(%rax), %rax	# _10->xgv_gp, D.14012
	testq	%rax, %rax	# D.14012
	je	.L239	#,
	movq	-24(%rbp), %rax	# gv, tmp106
	movq	(%rax), %rax	# gv_1->sv_any, D.14011
	movq	56(%rax), %rax	# _12->xgv_gp, D.14012
	movq	16(%rax), %rax	# _13->gp_io, iftmp.170
	jmp	.L240	#
.L239:
	.loc 1 1019 0 discriminator 2
	movl	$0, %eax	#, iftmp.170
.L240:
	.loc 1 1019 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.170, io
	.loc 1 1020 0 is_stmt 1 discriminator 3
	cmpq	$0, -8(%rbp)	#, io
	jne	.L241	#,
	.loc 1 1021 0
	cmpb	$0, -28(%rbp)	#, not_implicit
	je	.L242	#,
	.loc 1 1022 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.171
	movq	80(%rax), %rax	# PL_curcop.171_18->cop_warnings, D.14013
	testq	%rax, %rax	# D.14013
	je	.L243	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.172
	movq	80(%rax), %rax	# PL_curcop.172_20->cop_warnings, D.14013
	cmpq	$32, %rax	#, D.14013
	je	.L243	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.173
	movq	80(%rax), %rax	# PL_curcop.173_22->cop_warnings, D.14013
	cmpq	$16, %rax	#, D.14013
	je	.L244	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.174
	movq	80(%rax), %rax	# PL_curcop.174_24->cop_warnings, D.14013
	movq	(%rax), %rax	# _25->sv_any, D.14014
	movq	(%rax), %rax	# MEM[(struct XPV *)_26].xpv_pv, D.14015
	addq	$2, %rax	#, D.14015
	movzbl	(%rax), %eax	# *_28, D.14009
	movsbl	%al, %eax	# D.14009, D.14016
	andl	$64, %eax	#, D.14016
	testl	%eax, %eax	# D.14016
	jne	.L244	#,
.L243:
	.loc 1 1022 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.175
	movq	80(%rax), %rax	# PL_curcop.175_32->cop_warnings, D.14013
	testq	%rax, %rax	# D.14013
	jne	.L245	#,
	.loc 1 1022 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.176
	movzbl	%al, %eax	# PL_dowarn.176, D.14016
	andl	$1, %eax	#, D.14016
	testl	%eax, %eax	# D.14016
	je	.L245	#,
.L244:
	.loc 1 1023 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.177
	movzwl	32(%rax), %eax	# PL_op.177_37->op_type, D.14017
	movzwl	%ax, %edx	# D.14017, D.14016
	movq	-8(%rbp), %rcx	# io, tmp107
	movq	-24(%rbp), %rax	# gv, tmp108
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	Perl_report_evil_fh	#
.L245:
	.loc 1 1024 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_40
.L242:
	.loc 1 1026 0
	movl	$0, %eax	#, D.14009
	jmp	.L238	#
.L241:
	.loc 1 1028 0
	movsbl	-28(%rbp), %edx	# not_implicit, D.14016
	movq	-8(%rbp), %rax	# io, tmp109
	movl	%edx, %esi	# D.14016,
	movq	%rax, %rdi	# tmp109,
	call	Perl_io_close	#
	movb	%al, -9(%rbp)	# tmp110, retval
	.loc 1 1029 0
	cmpb	$0, -28(%rbp)	#, not_implicit
	je	.L246	#,
	.loc 1 1030 0
	movq	-8(%rbp), %rax	# io, tmp111
	movq	(%rax), %rax	# io_16->sv_any, D.14019
	movq	$0, 80(%rax)	#, _44->xio_lines
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# io, tmp112
	movq	(%rax), %rax	# io_16->sv_any, D.14019
	movq	$0, 88(%rax)	#, _45->xio_page
	.loc 1 1032 0
	movq	-8(%rbp), %rax	# io, tmp113
	movq	(%rax), %rax	# io_16->sv_any, D.14019
	movq	-8(%rbp), %rdx	# io, tmp114
	movq	(%rdx), %rdx	# io_16->sv_any, D.14019
	movq	96(%rdx), %rdx	# _47->xio_page_len, D.14020
	movq	%rdx, 104(%rax)	# D.14020, _46->xio_lines_left
.L246:
	.loc 1 1034 0
	movq	-8(%rbp), %rax	# io, tmp115
	movq	(%rax), %rax	# io_16->sv_any, D.14019
	movb	$32, 162(%rax)	#, _49->xio_type
	.loc 1 1035 0
	movzbl	-9(%rbp), %eax	# retval, D.14009
.L238:
	.loc 1 1036 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_do_close, .-Perl_do_close
	.globl	Perl_io_close
	.type	Perl_io_close, @function
Perl_io_close:
.LFB7:
	.loc 1 1040 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# io, io
	movl	%esi, %eax	# not_implicit, tmp101
	movb	%al, -28(%rbp)	# tmp101, not_implicit
	.loc 1 1041 0
	movb	$0, -7(%rbp)	#, retval
	.loc 1 1044 0
	movq	-24(%rbp), %rax	# io, tmp102
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _8->xio_ifp, D.14022
	testq	%rax, %rax	# D.14022
	je	.L248	#,
	.loc 1 1045 0
	movq	-24(%rbp), %rax	# io, tmp103
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movzbl	162(%rax), %eax	# _10->xio_type, D.14023
	cmpb	$124, %al	#, D.14023
	jne	.L249	#,
	.loc 1 1046 0
	movq	-24(%rbp), %rax	# io, tmp104
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _12->xio_ifp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_my_pclose	#
	movl	%eax, -4(%rbp)	# tmp105, status
	.loc 1 1047 0
	cmpb	$0, -28(%rbp)	#, not_implicit
	je	.L250	#,
.LBB16:
	.loc 1 1048 0
	movl	-4(%rbp), %eax	# status, tmp106
	movl	%eax, PL_statusvalue(%rip)	# tmp106, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.178
	cmpl	$-1, %eax	#, PL_statusvalue.178
	je	.L251	#,
	.loc 1 1048 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.179
	movzwl	%ax, %eax	# PL_statusvalue.179, PL_statusvalue.180
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.180, PL_statusvalue
.L251:
.LBE16:
	.loc 1 1049 0 is_stmt 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.181
	testl	%eax, %eax	# PL_statusvalue.181
	sete	%al	#, D.14024
	movb	%al, -7(%rbp)	# D.14024, retval
	jmp	.L253	#
.L250:
	.loc 1 1052 0
	cmpl	$-1, -4(%rbp)	#, status
	setne	%al	#, D.14024
	movb	%al, -7(%rbp)	# D.14024, retval
	jmp	.L253	#
.L249:
	.loc 1 1055 0
	movq	-24(%rbp), %rax	# io, tmp107
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movzbl	162(%rax), %eax	# _24->xio_type, D.14023
	cmpb	$45, %al	#, D.14023
	jne	.L254	#,
	.loc 1 1056 0
	movb	$1, -7(%rbp)	#, retval
	jmp	.L253	#
.L254:
	.loc 1 1058 0
	movq	-24(%rbp), %rax	# io, tmp108
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	64(%rax), %rax	# _27->xio_ofp, D.14022
	testq	%rax, %rax	# D.14022
	je	.L255	#,
	.loc 1 1058 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# io, tmp109
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	64(%rax), %rdx	# _29->xio_ofp, D.14022
	movq	-24(%rbp), %rax	# io, tmp110
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _31->xio_ifp, D.14022
	cmpq	%rax, %rdx	# D.14022, D.14022
	je	.L255	#,
.LBB17:
	.loc 1 1059 0 is_stmt 1
	movq	-24(%rbp), %rax	# io, tmp111
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	64(%rax), %rax	# _33->xio_ofp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_PerlIO_error	#
	movb	%al, -6(%rbp)	# D.14025, prev_err
	.loc 1 1060 0
	movq	-24(%rbp), %rax	# io, tmp112
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	64(%rax), %rax	# _37->xio_ofp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_PerlIO_close	#
	cmpl	$-1, %eax	#, D.14025
	je	.L256	#,
	.loc 1 1060 0 is_stmt 0 discriminator 1
	cmpb	$0, -6(%rbp)	#, prev_err
	jne	.L256	#,
	.loc 1 1060 0 discriminator 3
	movl	$1, %eax	#, iftmp.182
	jmp	.L257	#
.L256:
	.loc 1 1060 0 discriminator 2
	movl	$0, %eax	#, iftmp.182
.L257:
	.loc 1 1060 0 discriminator 4
	movb	%al, -7(%rbp)	# iftmp.182, retval
	.loc 1 1061 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# io, tmp113
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _43->xio_ifp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_PerlIO_close	#
.LBE17:
	.loc 1 1058 0 discriminator 4
	jmp	.L253	#
.L255:
.LBB18:
	.loc 1 1064 0
	movq	-24(%rbp), %rax	# io, tmp114
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _45->xio_ifp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_PerlIO_error	#
	movb	%al, -5(%rbp)	# D.14025, prev_err
	.loc 1 1065 0
	movq	-24(%rbp), %rax	# io, tmp115
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	56(%rax), %rax	# _49->xio_ifp, D.14022
	movq	%rax, %rdi	# D.14022,
	call	Perl_PerlIO_close	#
	cmpl	$-1, %eax	#, D.14025
	je	.L258	#,
	.loc 1 1065 0 is_stmt 0 discriminator 1
	cmpb	$0, -5(%rbp)	#, prev_err
	jne	.L258	#,
	.loc 1 1065 0 discriminator 3
	movl	$1, %eax	#, iftmp.183
	jmp	.L259	#
.L258:
	.loc 1 1065 0 discriminator 2
	movl	$0, %eax	#, iftmp.183
.L259:
	.loc 1 1065 0 discriminator 4
	movb	%al, -7(%rbp)	# iftmp.183, retval
.L253:
.LBE18:
	.loc 1 1068 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# io, tmp116
	movq	(%rax), %rdx	# io_7(D)->sv_any, D.14021
	movq	-24(%rbp), %rax	# io, tmp117
	movq	(%rax), %rax	# io_7(D)->sv_any, D.14021
	movq	$0, 56(%rax)	#, _56->xio_ifp
	movq	56(%rax), %rax	# _56->xio_ifp, D.14022
	movq	%rax, 64(%rdx)	# D.14022, _55->xio_ofp
	jmp	.L260	#
.L248:
	.loc 1 1070 0
	cmpb	$0, -28(%rbp)	#, not_implicit
	je	.L260	#,
	.loc 1 1071 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_58
.L260:
	.loc 1 1074 0
	movzbl	-7(%rbp), %eax	# retval, D.14023
	.loc 1 1075 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_io_close, .-Perl_io_close
	.globl	Perl_do_eof
	.type	Perl_do_eof, @function
Perl_do_eof:
.LFB8:
	.loc 1 1079 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# gv, gv
	.loc 1 1083 0
	cmpq	$0, -40(%rbp)	#, gv
	je	.L263	#,
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp121
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_3(D)].sv_flags, D.14028
	movzbl	%al, %eax	# D.14028, D.14028
	cmpl	$13, %eax	#, D.14028
	jne	.L263	#,
	movq	-40(%rbp), %rax	# gv, tmp122
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.14029
	movq	56(%rax), %rax	# _6->xgv_gp, D.14030
	testq	%rax, %rax	# D.14030
	je	.L263	#,
	movq	-40(%rbp), %rax	# gv, tmp123
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.14029
	movq	56(%rax), %rax	# _8->xgv_gp, D.14030
	movq	16(%rax), %rax	# _9->gp_io, iftmp.184
	jmp	.L264	#
.L263:
	.loc 1 1083 0 discriminator 2
	movl	$0, %eax	#, iftmp.184
.L264:
	.loc 1 1083 0 discriminator 3
	movq	%rax, %rbx	# iftmp.184, io
	.loc 1 1085 0 is_stmt 1 discriminator 3
	testq	%rbx, %rbx	# io
	jne	.L265	#,
	.loc 1 1086 0
	movl	$1, %eax	#, D.14027
	jmp	.L266	#
.L265:
	.loc 1 1087 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.185
	movq	80(%rax), %rax	# PL_curcop.185_14->cop_warnings, D.14031
	testq	%rax, %rax	# D.14031
	je	.L267	#,
	.loc 1 1087 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.186
	movq	80(%rax), %rax	# PL_curcop.186_16->cop_warnings, D.14031
	cmpq	$32, %rax	#, D.14031
	je	.L267	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.187
	movq	80(%rax), %rax	# PL_curcop.187_18->cop_warnings, D.14031
	cmpq	$16, %rax	#, D.14031
	je	.L268	#,
	.loc 1 1087 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.188
	movq	80(%rax), %rax	# PL_curcop.188_20->cop_warnings, D.14031
	movq	(%rax), %rax	# _21->sv_any, D.14032
	movq	(%rax), %rax	# MEM[(struct XPV *)_22].xpv_pv, D.14033
	addq	$1, %rax	#, D.14033
	movzbl	(%rax), %eax	# *_24, D.14027
	movsbl	%al, %eax	# D.14027, D.14034
	andl	$4, %eax	#, D.14034
	testl	%eax, %eax	# D.14034
	jne	.L268	#,
.L267:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.189
	movq	80(%rax), %rax	# PL_curcop.189_28->cop_warnings, D.14031
	testq	%rax, %rax	# D.14031
	jne	.L269	#,
	.loc 1 1087 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.190
	movzbl	%al, %eax	# PL_dowarn.190, D.14034
	andl	$1, %eax	#, D.14034
	testl	%eax, %eax	# D.14034
	je	.L269	#,
.L268:
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movzbl	162(%rax), %eax	# _33->xio_type, D.14027
	cmpb	$62, %al	#, D.14027
	jne	.L269	#,
	.loc 1 1088 0 is_stmt 1
	movq	-40(%rbp), %rax	# gv, tmp124
	movl	$-2, %edx	#,
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp124,
	call	Perl_report_evil_fh	#
	.loc 1 1090 0
	jmp	.L270	#
.L269:
	jmp	.L270	#
.L276:
.LBB19:
	.loc 1 1093 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _37->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	PerlIO_has_cntptr	#
	testl	%eax, %eax	# D.14034
	je	.L271	#,
	.loc 1 1094 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _40->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	Perl_PerlIO_get_cnt	#
	testl	%eax, %eax	# D.14034
	jle	.L271	#,
	.loc 1 1095 0
	movl	$0, %eax	#, D.14027
	jmp	.L266	#
.L271:
	.loc 1 1098 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_44, tmp125
	movl	%eax, -24(%rbp)	# tmp125, saverrno
	.loc 1 1099 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _46->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	PerlIO_getc	#
	movl	%eax, -20(%rbp)	# tmp126, ch
	.loc 1 1100 0
	cmpl	$-1, -20(%rbp)	#, ch
	je	.L272	#,
	.loc 1 1101 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _49->xio_ifp, D.14036
	movl	-20(%rbp), %edx	# ch, tmp127
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# D.14036,
	call	PerlIO_ungetc	#
	.loc 1 1102 0
	call	__errno_location	#
	movl	-24(%rbp), %edx	# saverrno, tmp128
	movl	%edx, (%rax)	# tmp128, *_51
	.loc 1 1103 0
	movl	$0, %eax	#, D.14027
	jmp	.L266	#
.L272:
	.loc 1 1105 0
	call	__errno_location	#
	movl	-24(%rbp), %edx	# saverrno, tmp129
	movl	%edx, (%rax)	# tmp129, *_53
	.loc 1 1107 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _54->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	PerlIO_has_cntptr	#
	testl	%eax, %eax	# D.14034
	je	.L273	#,
	.loc 1 1107 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _57->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	PerlIO_canset_cnt	#
	testl	%eax, %eax	# D.14034
	je	.L273	#,
	.loc 1 1108 0 is_stmt 1
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _60->xio_ifp, D.14036
	movq	%rax, %rdi	# D.14036,
	call	Perl_PerlIO_get_cnt	#
	cmpl	$-1, %eax	#, D.14034
	jge	.L273	#,
	.loc 1 1109 0
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _63->xio_ifp, D.14036
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.14036,
	call	Perl_PerlIO_set_cnt	#
.L273:
	.loc 1 1111 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.191
	movzbl	36(%rax), %eax	# PL_op.191_65->op_flags, D.14038
	testb	%al, %al	# D.14039
	jns	.L274	#,
	.loc 1 1112 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.192
	cmpq	%rax, -40(%rbp)	# PL_argvgv.192, gv
	jne	.L275	#,
	.loc 1 1112 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_nextargv	#
	testq	%rax, %rax	# D.14036
	jne	.L270	#,
.L275:
	.loc 1 1113 0 is_stmt 1
	movl	$1, %eax	#, D.14027
	jmp	.L266	#
.L274:
	.loc 1 1116 0
	movl	$1, %eax	#, D.14027
	jmp	.L266	#
.L270:
.LBE19:
	.loc 1 1090 0 discriminator 1
	movq	(%rbx), %rax	# io_12->sv_any, D.14035
	movq	56(%rax), %rax	# _35->xio_ifp, D.14036
	testq	%rax, %rax	# D.14036
	jne	.L276	#,
	.loc 1 1118 0
	movl	$1, %eax	#, D.14027
.L266:
	.loc 1 1119 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_do_eof, .-Perl_do_eof
	.globl	Perl_do_tell
	.type	Perl_do_tell, @function
Perl_do_tell:
.LFB9:
	.loc 1 1123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# gv, gv
	.loc 1 1124 0
	movl	$0, %ebx	#, io
	.loc 1 1127 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L278	#,
	.loc 1 1127 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gv
	je	.L279	#,
	movq	-24(%rbp), %rax	# gv, tmp102
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_5(D)].sv_flags, D.14041
	movzbl	%al, %eax	# D.14041, D.14041
	cmpl	$13, %eax	#, D.14041
	jne	.L279	#,
	movq	-24(%rbp), %rax	# gv, tmp103
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14042
	movq	56(%rax), %rax	# _8->xgv_gp, D.14043
	testq	%rax, %rax	# D.14043
	je	.L279	#,
	movq	-24(%rbp), %rax	# gv, tmp104
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14042
	movq	56(%rax), %rax	# _10->xgv_gp, D.14043
	movq	16(%rax), %rax	# _11->gp_io, iftmp.193
	jmp	.L280	#
.L279:
	.loc 1 1127 0 discriminator 2
	movl	$0, %eax	#, iftmp.193
.L280:
	.loc 1 1127 0 discriminator 3
	movq	%rax, %rbx	# iftmp.193, io
	testq	%rbx, %rbx	# io
	je	.L278	#,
	.loc 1 1127 0 discriminator 1
	movq	(%rbx), %rax	# io_14->sv_any, D.14044
	movq	56(%rax), %r12	# _15->xio_ifp, fp
	testq	%r12, %r12	# fp
	je	.L278	#,
	.loc 1 1132 0 is_stmt 1
	movq	%r12, %rdi	# fp,
	call	Perl_PerlIO_tell	#
	jmp	.L281	#
.L278:
	.loc 1 1134 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.194
	movq	80(%rax), %rax	# PL_curcop.194_18->cop_warnings, D.14045
	testq	%rax, %rax	# D.14045
	je	.L282	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.195
	movq	80(%rax), %rax	# PL_curcop.195_20->cop_warnings, D.14045
	cmpq	$32, %rax	#, D.14045
	je	.L282	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.196
	movq	80(%rax), %rax	# PL_curcop.196_22->cop_warnings, D.14045
	cmpq	$16, %rax	#, D.14045
	je	.L283	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.197
	movq	80(%rax), %rax	# PL_curcop.197_24->cop_warnings, D.14045
	movq	(%rax), %rax	# _25->sv_any, D.14046
	movq	(%rax), %rax	# MEM[(struct XPV *)_26].xpv_pv, D.14047
	addq	$2, %rax	#, D.14047
	movzbl	(%rax), %eax	# *_28, D.14048
	movsbl	%al, %eax	# D.14048, D.14049
	andl	$64, %eax	#, D.14049
	testl	%eax, %eax	# D.14049
	jne	.L283	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.198
	movq	80(%rax), %rax	# PL_curcop.198_32->cop_warnings, D.14045
	movq	(%rax), %rax	# _33->sv_any, D.14046
	movq	(%rax), %rax	# MEM[(struct XPV *)_34].xpv_pv, D.14047
	addq	$1, %rax	#, D.14047
	movzbl	(%rax), %eax	# *_36, D.14048
	movsbl	%al, %eax	# D.14048, D.14049
	andl	$16, %eax	#, D.14049
	testl	%eax, %eax	# D.14049
	jne	.L283	#,
.L282:
	.loc 1 1134 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.199
	movq	80(%rax), %rax	# PL_curcop.199_40->cop_warnings, D.14045
	testq	%rax, %rax	# D.14045
	jne	.L284	#,
	.loc 1 1134 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.200
	movzbl	%al, %eax	# PL_dowarn.200, D.14049
	andl	$1, %eax	#, D.14049
	testl	%eax, %eax	# D.14049
	je	.L284	#,
.L283:
	.loc 1 1135 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.201
	movzwl	32(%rax), %eax	# PL_op.201_45->op_type, D.14050
	movzwl	%ax, %edx	# D.14050, D.14049
	movq	-24(%rbp), %rax	# gv, tmp105
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp105,
	call	Perl_report_evil_fh	#
.L284:
	.loc 1 1136 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_48
	.loc 1 1137 0
	movq	$-1, %rax	#, D.14040
.L281:
	.loc 1 1138 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_do_tell, .-Perl_do_tell
	.globl	Perl_do_seek
	.type	Perl_do_seek, @function
Perl_do_seek:
.LFB10:
	.loc 1 1142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# gv, gv
	movq	%rsi, -32(%rbp)	# pos, pos
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 1143 0
	movl	$0, %ebx	#, io
	.loc 1 1146 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L286	#,
	.loc 1 1146 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gv
	je	.L287	#,
	movq	-24(%rbp), %rax	# gv, tmp104
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_5(D)].sv_flags, D.14053
	movzbl	%al, %eax	# D.14053, D.14053
	cmpl	$13, %eax	#, D.14053
	jne	.L287	#,
	movq	-24(%rbp), %rax	# gv, tmp105
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14054
	movq	56(%rax), %rax	# _8->xgv_gp, D.14055
	testq	%rax, %rax	# D.14055
	je	.L287	#,
	movq	-24(%rbp), %rax	# gv, tmp106
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14054
	movq	56(%rax), %rax	# _10->xgv_gp, D.14055
	movq	16(%rax), %rax	# _11->gp_io, iftmp.202
	jmp	.L288	#
.L287:
	.loc 1 1146 0 discriminator 2
	movl	$0, %eax	#, iftmp.202
.L288:
	.loc 1 1146 0 discriminator 3
	movq	%rax, %rbx	# iftmp.202, io
	testq	%rbx, %rbx	# io
	je	.L286	#,
	.loc 1 1146 0 discriminator 1
	movq	(%rbx), %rax	# io_14->sv_any, D.14056
	movq	56(%rax), %r12	# _15->xio_ifp, fp
	testq	%r12, %r12	# fp
	je	.L286	#,
	.loc 1 1151 0 is_stmt 1
	movl	-36(%rbp), %edx	# whence, tmp107
	movq	-32(%rbp), %rax	# pos, tmp108
	movq	%rax, %rsi	# tmp108,
	movq	%r12, %rdi	# fp,
	call	Perl_PerlIO_seek	#
	notl	%eax	# tmp109
	shrl	$31, %eax	#, tmp110
	jmp	.L289	#
.L286:
	.loc 1 1153 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.203
	movq	80(%rax), %rax	# PL_curcop.203_22->cop_warnings, D.14059
	testq	%rax, %rax	# D.14059
	je	.L290	#,
	.loc 1 1153 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.204
	movq	80(%rax), %rax	# PL_curcop.204_24->cop_warnings, D.14059
	cmpq	$32, %rax	#, D.14059
	je	.L290	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.205
	movq	80(%rax), %rax	# PL_curcop.205_26->cop_warnings, D.14059
	cmpq	$16, %rax	#, D.14059
	je	.L291	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.206
	movq	80(%rax), %rax	# PL_curcop.206_28->cop_warnings, D.14059
	movq	(%rax), %rax	# _29->sv_any, D.14060
	movq	(%rax), %rax	# MEM[(struct XPV *)_30].xpv_pv, D.14061
	addq	$2, %rax	#, D.14061
	movzbl	(%rax), %eax	# *_32, D.14052
	movsbl	%al, %eax	# D.14052, D.14057
	andl	$64, %eax	#, D.14057
	testl	%eax, %eax	# D.14057
	jne	.L291	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.207
	movq	80(%rax), %rax	# PL_curcop.207_36->cop_warnings, D.14059
	movq	(%rax), %rax	# _37->sv_any, D.14060
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, D.14061
	addq	$1, %rax	#, D.14061
	movzbl	(%rax), %eax	# *_40, D.14052
	movsbl	%al, %eax	# D.14052, D.14057
	andl	$16, %eax	#, D.14057
	testl	%eax, %eax	# D.14057
	jne	.L291	#,
.L290:
	.loc 1 1153 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.208
	movq	80(%rax), %rax	# PL_curcop.208_44->cop_warnings, D.14059
	testq	%rax, %rax	# D.14059
	jne	.L292	#,
	.loc 1 1153 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.209
	movzbl	%al, %eax	# PL_dowarn.209, D.14057
	andl	$1, %eax	#, D.14057
	testl	%eax, %eax	# D.14057
	je	.L292	#,
.L291:
	.loc 1 1154 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.210
	movzwl	32(%rax), %eax	# PL_op.210_49->op_type, D.14062
	movzwl	%ax, %edx	# D.14062, D.14057
	movq	-24(%rbp), %rax	# gv, tmp111
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp111,
	call	Perl_report_evil_fh	#
.L292:
	.loc 1 1155 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_52
	.loc 1 1156 0
	movl	$0, %eax	#, D.14052
.L289:
	.loc 1 1157 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_do_seek, .-Perl_do_seek
	.globl	Perl_do_sysseek
	.type	Perl_do_sysseek, @function
Perl_do_sysseek:
.LFB11:
	.loc 1 1161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# gv, gv
	movq	%rsi, -32(%rbp)	# pos, pos
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 1162 0
	movl	$0, %ebx	#, io
	.loc 1 1165 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L294	#,
	.loc 1 1165 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gv
	je	.L295	#,
	movq	-24(%rbp), %rax	# gv, tmp103
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_5(D)].sv_flags, D.14065
	movzbl	%al, %eax	# D.14065, D.14065
	cmpl	$13, %eax	#, D.14065
	jne	.L295	#,
	movq	-24(%rbp), %rax	# gv, tmp104
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14066
	movq	56(%rax), %rax	# _8->xgv_gp, D.14067
	testq	%rax, %rax	# D.14067
	je	.L295	#,
	movq	-24(%rbp), %rax	# gv, tmp105
	movq	(%rax), %rax	# gv_5(D)->sv_any, D.14066
	movq	56(%rax), %rax	# _10->xgv_gp, D.14067
	movq	16(%rax), %rax	# _11->gp_io, iftmp.211
	jmp	.L296	#
.L295:
	.loc 1 1165 0 discriminator 2
	movl	$0, %eax	#, iftmp.211
.L296:
	.loc 1 1165 0 discriminator 3
	movq	%rax, %rbx	# iftmp.211, io
	testq	%rbx, %rbx	# io
	je	.L294	#,
	.loc 1 1165 0 discriminator 1
	movq	(%rbx), %rax	# io_14->sv_any, D.14068
	movq	56(%rax), %r12	# _15->xio_ifp, fp
	testq	%r12, %r12	# fp
	je	.L294	#,
	.loc 1 1166 0 is_stmt 1
	movq	%r12, %rdi	# fp,
	call	Perl_PerlIO_fileno	#
	movl	-36(%rbp), %edx	# whence, tmp106
	movq	-32(%rbp), %rcx	# pos, tmp107
	movq	%rcx, %rsi	# tmp107,
	movl	%eax, %edi	# D.14069,
	call	lseek	#
	jmp	.L297	#
.L294:
	.loc 1 1167 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.212
	movq	80(%rax), %rax	# PL_curcop.212_21->cop_warnings, D.14070
	testq	%rax, %rax	# D.14070
	je	.L298	#,
	.loc 1 1167 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.213
	movq	80(%rax), %rax	# PL_curcop.213_23->cop_warnings, D.14070
	cmpq	$32, %rax	#, D.14070
	je	.L298	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.214
	movq	80(%rax), %rax	# PL_curcop.214_25->cop_warnings, D.14070
	cmpq	$16, %rax	#, D.14070
	je	.L299	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.215
	movq	80(%rax), %rax	# PL_curcop.215_27->cop_warnings, D.14070
	movq	(%rax), %rax	# _28->sv_any, D.14071
	movq	(%rax), %rax	# MEM[(struct XPV *)_29].xpv_pv, D.14072
	addq	$2, %rax	#, D.14072
	movzbl	(%rax), %eax	# *_31, D.14073
	movsbl	%al, %eax	# D.14073, D.14069
	andl	$64, %eax	#, D.14069
	testl	%eax, %eax	# D.14069
	jne	.L299	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.216
	movq	80(%rax), %rax	# PL_curcop.216_35->cop_warnings, D.14070
	movq	(%rax), %rax	# _36->sv_any, D.14071
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, D.14072
	addq	$1, %rax	#, D.14072
	movzbl	(%rax), %eax	# *_39, D.14073
	movsbl	%al, %eax	# D.14073, D.14069
	andl	$16, %eax	#, D.14069
	testl	%eax, %eax	# D.14069
	jne	.L299	#,
.L298:
	.loc 1 1167 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.217
	movq	80(%rax), %rax	# PL_curcop.217_43->cop_warnings, D.14070
	testq	%rax, %rax	# D.14070
	jne	.L300	#,
	.loc 1 1167 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.218
	movzbl	%al, %eax	# PL_dowarn.218, D.14069
	andl	$1, %eax	#, D.14069
	testl	%eax, %eax	# D.14069
	je	.L300	#,
.L299:
	.loc 1 1168 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.219
	movzwl	32(%rax), %eax	# PL_op.219_48->op_type, D.14074
	movzwl	%ax, %edx	# D.14074, D.14069
	movq	-24(%rbp), %rax	# gv, tmp108
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp108,
	call	Perl_report_evil_fh	#
.L300:
	.loc 1 1169 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_51
	.loc 1 1170 0
	movq	$-1, %rax	#, D.14064
.L297:
	.loc 1 1171 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_do_sysseek, .-Perl_do_sysseek
	.globl	Perl_mode_from_discipline
	.type	Perl_mode_from_discipline, @function
Perl_mode_from_discipline:
.LFB12:
	.loc 1 1175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# discp, discp
	.loc 1 1176 0
	movl	$0, -28(%rbp)	#, mode
	.loc 1 1177 0
	cmpq	$0, -40(%rbp)	#, discp
	je	.L302	#,
.LBB20:
	.loc 1 1179 0
	movq	-40(%rbp), %rax	# discp, tmp129
	movl	12(%rax), %eax	# discp_9(D)->sv_flags, D.14076
	andl	$262144, %eax	#, D.14076
	testl	%eax, %eax	# D.14076
	je	.L303	#,
	.loc 1 1179 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# discp, tmp130
	movq	(%rax), %rax	# discp_9(D)->sv_any, D.14077
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, len.221
	movq	%rax, -24(%rbp)	# len.221, len
	movq	-40(%rbp), %rax	# discp, tmp131
	movq	(%rax), %rax	# discp_9(D)->sv_any, D.14077
	movq	(%rax), %rax	# MEM[(struct XPV *)_14].xpv_pv, iftmp.220
	jmp	.L304	#
.L303:
	.loc 1 1179 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp132
	movq	-40(%rbp), %rax	# discp, tmp133
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	Perl_sv_2pv_flags	#
.L304:
	.loc 1 1179 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.220, s
	.loc 1 1180 0 is_stmt 1 discriminator 3
	jmp	.L305	#
.L316:
	.loc 1 1181 0
	movq	-16(%rbp), %rax	# s, tmp134
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$58, %al	#, D.14078
	jne	.L306	#,
	.loc 1 1182 0
	movq	-16(%rbp), %rax	# s, tmp135
	addq	$1, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_20, D.14078
	movsbl	%al, %eax	# D.14078, D.14080
	cmpl	$99, %eax	#, D.14080
	je	.L308	#,
	cmpl	$114, %eax	#, D.14080
	je	.L309	#,
	.loc 1 1204 0
	jmp	.L313	#
.L309:
	.loc 1 1184 0
	movq	-16(%rbp), %rax	# s, tmp136
	addq	$2, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_23, D.14078
	cmpb	$97, %al	#, D.14078
	jne	.L308	#,
	.loc 1 1184 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp137
	addq	$3, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_25, D.14078
	cmpb	$119, %al	#, D.14078
	jne	.L308	#,
	.loc 1 1185 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp138
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_27, D.14078
	testb	%al, %al	# D.14078
	je	.L310	#,
	.loc 1 1185 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp139
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_29, D.14078
	cmpb	$58, %al	#, D.14078
	je	.L310	#,
	movq	-16(%rbp), %rax	# s, tmp140
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_31, D.14078
	cmpb	$32, %al	#, D.14078
	je	.L310	#,
	movq	-16(%rbp), %rax	# s, tmp141
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_33, D.14078
	cmpb	$9, %al	#, D.14078
	je	.L310	#,
	movq	-16(%rbp), %rax	# s, tmp142
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_35, D.14078
	cmpb	$10, %al	#, D.14078
	je	.L310	#,
	movq	-16(%rbp), %rax	# s, tmp143
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_37, D.14078
	cmpb	$13, %al	#, D.14078
	je	.L310	#,
	movq	-16(%rbp), %rax	# s, tmp144
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_39, D.14078
	cmpb	$12, %al	#, D.14078
	jne	.L308	#,
.L310:
	.loc 1 1187 0 is_stmt 1
	movl	$0, -28(%rbp)	#, mode
	.loc 1 1188 0
	addq	$4, -16(%rbp)	#, s
	.loc 1 1189 0
	movq	-24(%rbp), %rax	# len, len.222
	subq	$4, %rax	#, len.223
	movq	%rax, -24(%rbp)	# len.223, len
	.loc 1 1190 0
	jmp	.L311	#
.L308:
	.loc 1 1194 0
	movq	-16(%rbp), %rax	# s, tmp145
	addq	$2, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_45, D.14078
	cmpb	$114, %al	#, D.14078
	jne	.L307	#,
	.loc 1 1194 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp146
	addq	$3, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_47, D.14078
	cmpb	$108, %al	#, D.14078
	jne	.L307	#,
	movq	-16(%rbp), %rax	# s, tmp147
	addq	$4, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_49, D.14078
	cmpb	$102, %al	#, D.14078
	jne	.L307	#,
	.loc 1 1195 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp148
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_51, D.14078
	testb	%al, %al	# D.14078
	je	.L312	#,
	.loc 1 1195 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp149
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_53, D.14078
	cmpb	$58, %al	#, D.14078
	je	.L312	#,
	movq	-16(%rbp), %rax	# s, tmp150
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_55, D.14078
	cmpb	$32, %al	#, D.14078
	je	.L312	#,
	movq	-16(%rbp), %rax	# s, tmp151
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_57, D.14078
	cmpb	$9, %al	#, D.14078
	je	.L312	#,
	movq	-16(%rbp), %rax	# s, tmp152
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_59, D.14078
	cmpb	$10, %al	#, D.14078
	je	.L312	#,
	movq	-16(%rbp), %rax	# s, tmp153
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_61, D.14078
	cmpb	$13, %al	#, D.14078
	je	.L312	#,
	movq	-16(%rbp), %rax	# s, tmp154
	addq	$5, %rax	#, D.14079
	movzbl	(%rax), %eax	# *_63, D.14078
	cmpb	$12, %al	#, D.14078
	jne	.L307	#,
.L312:
	.loc 1 1197 0 is_stmt 1
	movl	$0, -28(%rbp)	#, mode
	.loc 1 1198 0
	addq	$5, -16(%rbp)	#, s
	.loc 1 1199 0
	movq	-24(%rbp), %rax	# len, len.224
	subq	$5, %rax	#, len.225
	movq	%rax, -24(%rbp)	# len.225, len
	.loc 1 1200 0
	jmp	.L311	#
.L307:
	.loc 1 1204 0
	jmp	.L313	#
.L311:
	jmp	.L305	#
.L306:
	.loc 1 1207 0
	movq	-16(%rbp), %rax	# s, tmp155
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$32, %al	#, D.14078
	je	.L314	#,
	.loc 1 1207 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp156
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$9, %al	#, D.14078
	je	.L314	#,
	movq	-16(%rbp), %rax	# s, tmp157
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$10, %al	#, D.14078
	je	.L314	#,
	movq	-16(%rbp), %rax	# s, tmp158
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$13, %al	#, D.14078
	je	.L314	#,
	movq	-16(%rbp), %rax	# s, tmp159
	movzbl	(%rax), %eax	# *s_5, D.14078
	cmpb	$12, %al	#, D.14078
	jne	.L313	#,
.L314:
	.loc 1 1208 0 is_stmt 1
	addq	$1, -16(%rbp)	#, s
	.loc 1 1209 0
	movq	-24(%rbp), %rax	# len, len.226
	subq	$1, %rax	#, len.227
	movq	%rax, -24(%rbp)	# len.227, len
	jmp	.L305	#
.L313:
.LBB21:
	.loc 1 1214 0
	movq	-16(%rbp), %rax	# s, tmp160
	addq	$1, %rax	#, D.14081
	movl	$58, %esi	#,
	movq	%rax, %rdi	# D.14081,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp161, end
	.loc 1 1215 0
	cmpq	$0, -8(%rbp)	#, end
	jne	.L315	#,
	.loc 1 1216 0
	movq	-24(%rbp), %rdx	# len, len.228
	movq	-16(%rbp), %rax	# s, tmp165
	addq	%rdx, %rax	# len.228, tmp164
	movq	%rax, -8(%rbp)	# tmp164, end
.L315:
	.loc 1 1220 0
	movq	-16(%rbp), %rdx	# s, s.229
	movq	-8(%rbp), %rax	# end, end.230
	subq	%rax, %rdx	# end.230, D.14082
	movq	%rdx, %rax	# D.14082, D.14082
	movq	%rax, %rdx	# D.14082, D.14083
	movq	-24(%rbp), %rax	# len, len.231
	addq	%rdx, %rax	# D.14083, len.232
	movq	%rax, -24(%rbp)	# len.232, len
	.loc 1 1221 0
	movq	-8(%rbp), %rax	# end, tmp166
	movq	%rax, -16(%rbp)	# tmp166, s
.L305:
.LBE21:
	.loc 1 1180 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp167
	movzbl	(%rax), %eax	# *s_5, D.14078
	testb	%al, %al	# D.14078
	jne	.L316	#,
.L302:
.LBE20:
	.loc 1 1226 0
	movl	-28(%rbp), %eax	# mode, D.14080
	.loc 1 1227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_mode_from_discipline, .-Perl_mode_from_discipline
	.section	.rodata
.LC25:
	.string	":raw"
	.text
	.globl	Perl_do_binmode
	.type	Perl_do_binmode, @function
Perl_do_binmode:
.LFB13:
	.loc 1 1231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movl	%esi, -28(%rbp)	# iotype, iotype
	movl	%edx, -32(%rbp)	# mode, mode
	.loc 1 1235 0
	movq	$.LC25, -8(%rbp)	#, name
	.loc 1 1240 0
	movq	-8(%rbp), %rcx	# name, tmp61
	movl	-32(%rbp), %edx	# mode, tmp62
	movl	-28(%rbp), %esi	# iotype, tmp63
	movq	-24(%rbp), %rax	# fp, tmp64
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_binmode	#
	.loc 1 1241 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_do_binmode, .-Perl_do_binmode
	.section	.rodata
.LC27:
	.string	"%lu"
.LC28:
	.string	"%ld"
.LC29:
	.string	"Wide character in print"
	.text
	.globl	Perl_do_print
	.type	Perl_do_print, @function
Perl_do_print:
.LFB14:
	.loc 1 1301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# sv, sv
	movq	%rsi, -40(%rbp)	# fp, fp
	.loc 1 1306 0
	testq	%rbx, %rbx	# sv
	jne	.L321	#,
	.loc 1 1307 0
	movl	$1, %eax	#, D.14086
	jmp	.L345	#
.L321:
	.loc 1 1308 0
	movq	PL_ofmt(%rip), %rax	# PL_ofmt, PL_ofmt.233
	testq	%rax, %rax	# PL_ofmt.233
	je	.L323	#,
	.loc 1 1309 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$8192, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L324	#,
	.loc 1 1310 0
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_get	#
.L324:
	.loc 1 1311 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$65536, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L325	#,
	.loc 1 1311 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_12].xiv_iv, D.14089
	testq	%rax, %rax	# D.14089
	je	.L325	#,
	.loc 1 1312 0 is_stmt 1
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_14].xiv_iv, D.14089
	cvtsi2sdq	%rax, %xmm0	# D.14089, D.14090
	movq	PL_ofmt(%rip), %rdx	# PL_ofmt, PL_ofmt.234
	movq	-40(%rbp), %rax	# fp, tmp155
	movq	%rdx, %rsi	# PL_ofmt.234,
	movq	%rax, %rdi	# tmp155,
	movl	$1, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1313 0
	movq	-40(%rbp), %rax	# fp, tmp156
	movq	%rax, %rdi	# tmp156,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.14091
	sete	%al	#, D.14092
	jmp	.L345	#
.L325:
	.loc 1 1315 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$131072, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L326	#,
	.loc 1 1315 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_24].xnv_nv, D.14090
	xorpd	%xmm1, %xmm1	# tmp157
	ucomisd	%xmm1, %xmm0	# tmp157, D.14090
	jp	.L327	#,
	xorpd	%xmm1, %xmm1	# tmp158
	ucomisd	%xmm1, %xmm0	# tmp158, D.14090
	jne	.L327	#,
.L326:
	.loc 1 1316 0 is_stmt 1
	movq	%rbx, %rdi	# sv,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.14091
	je	.L323	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_2nv	#
	xorpd	%xmm1, %xmm1	# tmp159
	ucomisd	%xmm1, %xmm0	# tmp159, D.14090
	jp	.L327	#,
	xorpd	%xmm1, %xmm1	# tmp160
	ucomisd	%xmm1, %xmm0	# tmp160, D.14090
	je	.L323	#,
.L327:
	.loc 1 1317 0 is_stmt 1
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_28].xnv_nv, D.14090
	movq	PL_ofmt(%rip), %rcx	# PL_ofmt, PL_ofmt.235
	movq	-40(%rbp), %rdx	# fp, tmp161
	movq	%rax, -48(%rbp)	# D.14090, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# PL_ofmt.235,
	movq	%rdx, %rdi	# tmp161,
	movl	$1, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1318 0
	movq	-40(%rbp), %rax	# fp, tmp162
	movq	%rax, %rdi	# tmp162,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.14091
	sete	%al	#, D.14092
	jmp	.L345	#
.L323:
	.loc 1 1321 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	movzbl	%al, %eax	# D.14087, D.14087
	testl	%eax, %eax	# D.14087
	je	.L330	#,
	cmpl	$1, %eax	#, D.14087
	je	.L331	#,
	jmp	.L329	#
.L330:
	.loc 1 1323 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.236
	movq	80(%rax), %rax	# PL_curcop.236_36->cop_warnings, D.14093
	testq	%rax, %rax	# D.14093
	je	.L332	#,
	.loc 1 1323 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.237
	movq	80(%rax), %rax	# PL_curcop.237_38->cop_warnings, D.14093
	cmpq	$32, %rax	#, D.14093
	je	.L332	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.238
	movq	80(%rax), %rax	# PL_curcop.238_40->cop_warnings, D.14093
	cmpq	$16, %rax	#, D.14093
	je	.L333	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.239
	movq	80(%rax), %rax	# PL_curcop.239_42->cop_warnings, D.14093
	movq	(%rax), %rax	# _43->sv_any, D.14088
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, D.14094
	addq	$10, %rax	#, D.14094
	movzbl	(%rax), %eax	# *_46, D.14086
	movsbl	%al, %eax	# D.14086, D.14091
	andl	$4, %eax	#, D.14091
	testl	%eax, %eax	# D.14091
	jne	.L333	#,
.L332:
	.loc 1 1323 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.240
	movq	80(%rax), %rax	# PL_curcop.240_50->cop_warnings, D.14093
	testq	%rax, %rax	# D.14093
	jne	.L334	#,
	.loc 1 1323 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.241
	movzbl	%al, %eax	# PL_dowarn.241, D.14091
	andl	$1, %eax	#, D.14091
	testl	%eax, %eax	# D.14091
	je	.L334	#,
.L333:
	.loc 1 1324 0 is_stmt 1
	call	Perl_report_uninit	#
.L334:
	.loc 1 1325 0
	movl	$1, %eax	#, D.14086
	jmp	.L345	#
.L331:
	.loc 1 1327 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$65536, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L329	#,
	.loc 1 1328 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$8192, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L335	#,
	.loc 1 1329 0
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_get	#
.L335:
	.loc 1 1330 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	testl	%eax, %eax	# D.14095
	jns	.L336	#,
	.loc 1 1331 0
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movq	24(%rax), %rdx	# MEM[(struct XPVUV *)_62].xuv_uv, D.14096
	movq	-40(%rbp), %rax	# fp, tmp163
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp163,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L337	#
.L336:
	.loc 1 1333 0
	movq	(%rbx), %rax	# sv_5(D)->sv_any, D.14088
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_64].xiv_iv, D.14089
	movq	-40(%rbp), %rax	# fp, tmp164
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp164,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L337:
	.loc 1 1334 0
	movq	-40(%rbp), %rax	# fp, tmp165
	movq	%rax, %rdi	# tmp165,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.14091
	sete	%al	#, D.14092
	jmp	.L345	#
.L329:
	.loc 1 1338 0
	movq	-40(%rbp), %rax	# fp, tmp166
	movq	%rax, %rdi	# tmp166,
	call	PerlIO_isutf8	#
	testl	%eax, %eax	# D.14091
	je	.L338	#,
	.loc 1 1339 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$536870912, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L340	#,
	.loc 1 1340 0
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_mortalcopy	#
	movq	%rax, %rbx	#, sv
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_utf8_upgrade_flags	#
	jmp	.L340	#
.L338:
	.loc 1 1343 0
	movl	12(%rbx), %eax	# sv_5(D)->sv_flags, D.14087
	andl	$536870912, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L340	#,
	.loc 1 1343 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.242
	movzbl	37(%rax), %eax	# PL_curcop.242_75->op_private, D.14097
	movzbl	%al, %eax	# D.14097, D.14091
	andl	$8, %eax	#, D.14091
	testl	%eax, %eax	# D.14091
	jne	.L340	#,
	.loc 1 1344 0 is_stmt 1
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_mortalcopy	#
	movq	%rax, %rbx	#, sv
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_utf8_downgrade	#
	testb	%al, %al	# D.14086
	jne	.L340	#,
	.loc 1 1345 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.243
	movq	80(%rax), %rax	# PL_curcop.243_81->cop_warnings, D.14093
	testq	%rax, %rax	# D.14093
	je	.L341	#,
	.loc 1 1345 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.244
	movq	80(%rax), %rax	# PL_curcop.244_83->cop_warnings, D.14093
	cmpq	$16, %rax	#, D.14093
	je	.L341	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.245
	movq	80(%rax), %rax	# PL_curcop.245_85->cop_warnings, D.14093
	cmpq	$32, %rax	#, D.14093
	je	.L340	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.246
	movq	80(%rax), %rax	# PL_curcop.246_87->cop_warnings, D.14093
	movq	(%rax), %rax	# _88->sv_any, D.14088
	movq	(%rax), %rax	# MEM[(struct XPV *)_89].xpv_pv, D.14094
	addq	$11, %rax	#, D.14094
	movzbl	(%rax), %eax	# *_91, D.14086
	movsbl	%al, %eax	# D.14086, D.14091
	andl	$1, %eax	#, D.14091
	testl	%eax, %eax	# D.14091
	je	.L340	#,
.L341:
	.loc 1 1347 0 is_stmt 1
	movl	$.LC29, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L340:
	.loc 1 1350 0
	movl	12(%rbx), %eax	# sv_2->sv_flags, D.14087
	andl	$262144, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L342	#,
	.loc 1 1350 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_2->sv_any, D.14088
	movq	8(%rax), %rax	# MEM[(struct XPV *)_97].xpv_cur, len.248
	movq	%rax, -24(%rbp)	# len.248, len
	movq	(%rbx), %rax	# sv_2->sv_any, D.14088
	movq	(%rax), %rax	# MEM[(struct XPV *)_99].xpv_pv, iftmp.247
	jmp	.L343	#
.L342:
	.loc 1 1350 0 discriminator 2
	leaq	-24(%rbp), %rax	#, tmp167
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp167,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L343:
	.loc 1 1350 0 discriminator 3
	movq	%rax, %rbx	# iftmp.247, tmps
	.loc 1 1351 0 is_stmt 1 discriminator 3
	nop
	.loc 1 1359 0 discriminator 3
	movq	-24(%rbp), %rax	# len, len.249
	testq	%rax, %rax	# len.249
	je	.L344	#,
	.loc 1 1359 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# len, len.250
	movq	-40(%rbp), %rax	# fp, tmp168
	movq	%rbx, %rsi	# tmps,
	movq	%rax, %rdi	# tmp168,
	call	Perl_PerlIO_write	#
	testq	%rax, %rax	# D.14089
	jne	.L344	#,
	.loc 1 1360 0 is_stmt 1
	movl	$0, %eax	#, D.14086
	jmp	.L345	#
.L344:
	.loc 1 1361 0
	movq	-40(%rbp), %rax	# fp, tmp169
	movq	%rax, %rdi	# tmp169,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.14091
	sete	%al	#, D.14092
.L345:
	.loc 1 1362 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_do_print, .-Perl_do_print
	.section	.rodata
.LC30:
	.string	"stat"
	.text
	.globl	Perl_my_stat
	.type	Perl_my_stat, @function
Perl_my_stat:
.LFB15:
	.loc 1 1366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1367 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1371 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.251
	movzbl	36(%rax), %eax	# PL_op.251_7->op_flags, D.14103
	movzbl	%al, %eax	# D.14103, D.14104
	andl	$16, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	je	.L347	#,
	.loc 1 1372 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.252
	movq	%rax, %rdx	# PL_stack_max.252, PL_stack_max.253
	movq	%rbx, %rax	# sp, sp.254
	subq	%rax, %rdx	# sp.254, D.14105
	movq	%rdx, %rax	# D.14105, D.14105
	cmpq	$7, %rax	#, D.14105
	jg	.L348	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L348:
	.loc 1 1373 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.255
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.255_16].op_sv, tmp159
	movq	%rax, -48(%rbp)	# tmp159, gv
.L349:
	.loc 1 1375 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L350	#,
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp160
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_1].sv_flags, D.14106
	movzbl	%al, %eax	# D.14106, D.14106
	cmpl	$13, %eax	#, D.14106
	jne	.L350	#,
	movq	-48(%rbp), %rax	# gv, tmp161
	movq	(%rax), %rax	# gv_1->sv_any, D.14111
	movq	56(%rax), %rax	# _70->xgv_gp, D.14112
	testq	%rax, %rax	# D.14112
	je	.L350	#,
	movq	-48(%rbp), %rax	# gv, tmp162
	movq	(%rax), %rax	# gv_1->sv_any, D.14111
	movq	56(%rax), %rax	# _72->xgv_gp, D.14112
	movq	16(%rax), %rax	# _73->gp_io, iftmp.256
	jmp	.L351	#
.L350:
	.loc 1 1375 0 discriminator 2
	movl	$0, %eax	#, iftmp.256
.L351:
	.loc 1 1375 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.256, io
	.loc 1 1376 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, io
	je	.L352	#,
	.loc 1 1376 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# io, tmp163
	movq	(%rax), %rax	# io_76->sv_any, D.14113
	movq	56(%rax), %rax	# _77->xio_ifp, D.14114
	testq	%rax, %rax	# D.14114
	je	.L352	#,
	.loc 1 1377 0 is_stmt 1
	movq	-48(%rbp), %rax	# gv, tmp164
	movq	%rax, PL_statgv(%rip)	# tmp164, PL_statgv
	.loc 1 1378 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.257
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# PL_statname.257,
	call	Perl_sv_setpv	#
	.loc 1 1379 0
	movl	$235, PL_laststype(%rip)	#, PL_laststype
	.loc 1 1380 0
	movq	-24(%rbp), %rax	# io, tmp165
	movq	(%rax), %rax	# io_76->sv_any, D.14113
	movq	56(%rax), %rax	# _80->xio_ifp, D.14114
	movq	%rax, %rdi	# D.14114,
	call	Perl_PerlIO_fileno	#
	movl	$PL_statcache, %esi	#,
	movl	%eax, %edi	# D.14104,
	call	fstat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.258, PL_laststatval
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, D.14102
	jmp	.L353	#
.L352:
	.loc 1 1383 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.259
	cmpq	%rax, -48(%rbp)	# PL_defgv.259, gv
	jne	.L354	#,
	.loc 1 1384 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, D.14102
	jmp	.L353	#
.L354:
	.loc 1 1385 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.260
	movq	80(%rax), %rax	# PL_curcop.260_87->cop_warnings, D.14108
	testq	%rax, %rax	# D.14108
	je	.L355	#,
	.loc 1 1385 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.261
	movq	80(%rax), %rax	# PL_curcop.261_89->cop_warnings, D.14108
	cmpq	$32, %rax	#, D.14108
	je	.L355	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.262
	movq	80(%rax), %rax	# PL_curcop.262_91->cop_warnings, D.14108
	cmpq	$16, %rax	#, D.14108
	je	.L356	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.263
	movq	80(%rax), %rax	# PL_curcop.263_93->cop_warnings, D.14108
	movq	(%rax), %rax	# _94->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XPV *)_95].xpv_pv, D.14109
	addq	$2, %rax	#, D.14109
	movzbl	(%rax), %eax	# *_97, D.14110
	movsbl	%al, %eax	# D.14110, D.14104
	andl	$64, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	jne	.L356	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.264
	movq	80(%rax), %rax	# PL_curcop.264_101->cop_warnings, D.14108
	movq	(%rax), %rax	# _102->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XPV *)_103].xpv_pv, D.14109
	addq	$1, %rax	#, D.14109
	movzbl	(%rax), %eax	# *_105, D.14110
	movsbl	%al, %eax	# D.14110, D.14104
	andl	$16, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	jne	.L356	#,
.L355:
	.loc 1 1385 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.265
	movq	80(%rax), %rax	# PL_curcop.265_109->cop_warnings, D.14108
	testq	%rax, %rax	# D.14108
	jne	.L357	#,
	.loc 1 1385 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.266
	movzbl	%al, %eax	# PL_dowarn.266, D.14104
	andl	$1, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	je	.L357	#,
.L356:
	.loc 1 1386 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.267
	movzwl	32(%rax), %eax	# PL_op.267_114->op_type, D.14115
	movzwl	%ax, %edx	# D.14115, D.14104
	movq	-24(%rbp), %rcx	# io, tmp166
	movq	-48(%rbp), %rax	# gv, tmp167
	movq	%rcx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	Perl_report_evil_fh	#
.L357:
	.loc 1 1387 0
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 1388 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.268
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# PL_statname.268,
	call	Perl_sv_setpv	#
	.loc 1 1389 0
	movl	$-1, PL_laststatval(%rip)	#, PL_laststatval
	movl	$-1, %eax	#, D.14102
	jmp	.L353	#
.L347:
.LBB22:
	.loc 1 1393 0
	movq	%rbx, %rax	# sp, sp.269
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.269_18, tmp168
	movq	%rax, -40(%rbp)	# tmp168, sv
	.loc 1 1396 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1397 0
	movq	-40(%rbp), %rax	# sv, tmp169
	movl	12(%rax), %eax	# sv_20->sv_flags, D.14106
	movzbl	%al, %eax	# D.14106, D.14106
	cmpl	$13, %eax	#, D.14106
	jne	.L358	#,
	.loc 1 1398 0
	movq	-40(%rbp), %rax	# sv, tmp170
	movq	%rax, -48(%rbp)	# tmp170, gv
	.loc 1 1399 0
	jmp	.L349	#
.L358:
	.loc 1 1401 0
	movq	-40(%rbp), %rax	# sv, tmp171
	movl	12(%rax), %eax	# sv_20->sv_flags, D.14106
	andl	$524288, %eax	#, D.14106
	testl	%eax, %eax	# D.14106
	je	.L360	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp172
	movq	(%rax), %rax	# sv_20->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XRV *)_26].xrv_rv, D.14108
	movl	12(%rax), %eax	# _27->sv_flags, D.14106
	movzbl	%al, %eax	# D.14106, D.14106
	cmpl	$13, %eax	#, D.14106
	jne	.L360	#,
	.loc 1 1402 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp173
	movq	(%rax), %rax	# sv_20->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XRV *)_30].xrv_rv, tmp174
	movq	%rax, -48(%rbp)	# tmp174, gv
	.loc 1 1403 0
	nop
	jmp	.L349	#
.L360:
	.loc 1 1406 0
	movq	-40(%rbp), %rax	# sv, tmp175
	movl	12(%rax), %eax	# sv_20->sv_flags, D.14106
	andl	$262144, %eax	#, D.14106
	testl	%eax, %eax	# D.14106
	je	.L361	#,
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp176
	movq	(%rax), %rax	# sv_20->sv_any, D.14107
	movq	8(%rax), %rax	# MEM[(struct XPV *)_34].xpv_cur, len.271
	movq	%rax, -56(%rbp)	# len.271, len
	movq	-40(%rbp), %rax	# sv, tmp177
	movq	(%rax), %rax	# sv_20->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XPV *)_36].xpv_pv, iftmp.270
	jmp	.L362	#
.L361:
	.loc 1 1406 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp178
	movq	-40(%rbp), %rax	# sv, tmp179
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	Perl_sv_2pv_flags	#
.L362:
	.loc 1 1406 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.270, s
	.loc 1 1407 0 is_stmt 1 discriminator 3
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 1408 0 discriminator 3
	movq	-56(%rbp), %rdx	# len, len.272
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.273
	movq	-32(%rbp), %rcx	# s, tmp180
	movq	%rcx, %rsi	# tmp180,
	movq	%rax, %rdi	# PL_statname.273,
	call	Perl_sv_setpvn	#
	.loc 1 1409 0 discriminator 3
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.274
	movq	(%rax), %rax	# PL_statname.274_42->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XPV *)_43].xpv_pv, tmp181
	movq	%rax, -32(%rbp)	# tmp181, s
	.loc 1 1410 0 discriminator 3
	movl	$235, PL_laststype(%rip)	#, PL_laststype
	.loc 1 1411 0 discriminator 3
	movq	-32(%rbp), %rax	# s, tmp182
	movl	$PL_statcache, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	stat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.275, PL_laststatval
	.loc 1 1412 0 discriminator 3
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.276
	testl	%eax, %eax	# PL_laststatval.276
	jns	.L363	#,
	.loc 1 1412 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.277
	movq	80(%rax), %rax	# PL_curcop.277_47->cop_warnings, D.14108
	testq	%rax, %rax	# D.14108
	je	.L364	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.278
	movq	80(%rax), %rax	# PL_curcop.278_49->cop_warnings, D.14108
	cmpq	$32, %rax	#, D.14108
	je	.L364	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.279
	movq	80(%rax), %rax	# PL_curcop.279_51->cop_warnings, D.14108
	cmpq	$16, %rax	#, D.14108
	je	.L365	#,
	.loc 1 1412 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.280
	movq	80(%rax), %rax	# PL_curcop.280_53->cop_warnings, D.14108
	movq	(%rax), %rax	# _54->sv_any, D.14107
	movq	(%rax), %rax	# MEM[(struct XPV *)_55].xpv_pv, D.14109
	addq	$2, %rax	#, D.14109
	movzbl	(%rax), %eax	# *_57, D.14110
	movsbl	%al, %eax	# D.14110, D.14104
	andl	$4, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	jne	.L365	#,
.L364:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.281
	movq	80(%rax), %rax	# PL_curcop.281_61->cop_warnings, D.14108
	testq	%rax, %rax	# D.14108
	jne	.L363	#,
	.loc 1 1412 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.282
	movzbl	%al, %eax	# PL_dowarn.282, D.14104
	andl	$1, %eax	#, D.14104
	testl	%eax, %eax	# D.14104
	je	.L363	#,
.L365:
	movq	-32(%rbp), %rax	# s, tmp183
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	strchr	#
	testq	%rax, %rax	# D.14109
	je	.L363	#,
	.loc 1 1413 0 is_stmt 1
	movl	$.LC30, %edx	#,
	movl	$PL_warn_nl, %esi	#,
	movl	$9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L363:
	.loc 1 1414 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, D.14102
.L353:
.LBE22:
	.loc 1 1416 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_my_stat, .-Perl_my_stat
	.section	.rodata
	.align 8
.LC31:
	.string	"The stat preceding -l _ wasn't an lstat"
.LC32:
	.string	"Use of -l on filehandle %s"
.LC33:
	.string	"lstat"
	.text
	.globl	Perl_my_lstat
	.type	Perl_my_lstat, @function
Perl_my_lstat:
.LFB16:
	.loc 1 1420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1421 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1424 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.283
	movzbl	36(%rax), %eax	# PL_op.283_10->op_flags, D.14118
	movzbl	%al, %eax	# D.14118, D.14119
	andl	$16, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	je	.L367	#,
	.loc 1 1425 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.284
	movq	%rax, %rdx	# PL_stack_max.284, PL_stack_max.285
	movq	%rbx, %rax	# sp, sp.286
	subq	%rax, %rdx	# sp.286, D.14120
	movq	%rdx, %rax	# D.14120, D.14120
	cmpq	$7, %rax	#, D.14120
	jg	.L368	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L368:
	.loc 1 1426 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.287
	movq	40(%rax), %rdx	# MEM[(struct SVOP *)PL_op.287_19].op_sv, D.14121
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.288
	cmpq	%rax, %rdx	# PL_defgv.288, D.14121
	jne	.L369	#,
	.loc 1 1427 0
	movl	PL_laststype(%rip), %eax	# PL_laststype, PL_laststype.289
	cmpl	$234, %eax	#, PL_laststype.289
	je	.L370	#,
	.loc 1 1428 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L370:
	.loc 1 1429 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, D.14117
	jmp	.L390	#
.L369:
	.loc 1 1431 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.290
	movq	80(%rax), %rax	# PL_curcop.290_24->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	je	.L372	#,
	.loc 1 1431 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.291
	movq	80(%rax), %rax	# PL_curcop.291_26->cop_warnings, D.14121
	cmpq	$32, %rax	#, D.14121
	je	.L372	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.292
	movq	80(%rax), %rax	# PL_curcop.292_28->cop_warnings, D.14121
	cmpq	$16, %rax	#, D.14121
	je	.L373	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.293
	movq	80(%rax), %rax	# PL_curcop.293_30->cop_warnings, D.14121
	movq	(%rax), %rax	# _31->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_32].xpv_pv, D.14123
	addq	$1, %rax	#, D.14123
	movzbl	(%rax), %eax	# *_34, D.14124
	movsbl	%al, %eax	# D.14124, D.14119
	andl	$4, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	jne	.L373	#,
.L372:
	.loc 1 1431 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.294
	movq	80(%rax), %rax	# PL_curcop.294_38->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	jne	.L367	#,
	.loc 1 1431 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.295
	movzbl	%al, %eax	# PL_dowarn.295, D.14119
	andl	$1, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	je	.L367	#,
.L373:
	.loc 1 1433 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.297
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.297_43].op_sv, D.14121
	movq	(%rax), %rax	# MEM[(struct GV *)_44].sv_any, D.14125
	movq	56(%rax), %rax	# _45->xgv_gp, D.14126
	movq	48(%rax), %rax	# _46->gp_egv, D.14127
	testq	%rax, %rax	# D.14127
	je	.L374	#,
	.loc 1 1433 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.298
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.298_48].op_sv, D.14121
	movq	(%rax), %rax	# MEM[(struct GV *)_49].sv_any, D.14125
	movq	56(%rax), %rax	# _50->xgv_gp, D.14126
	movq	48(%rax), %rax	# _51->gp_egv, iftmp.296
	jmp	.L375	#
.L374:
	.loc 1 1433 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.299
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.299_53].op_sv, iftmp.296
.L375:
	.loc 1 1433 0 discriminator 3
	movq	(%rax), %rax	# iftmp.296_4->sv_any, D.14125
	.loc 1 1432 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _55->xgv_name, D.14123
	movq	%rax, %rdx	# D.14123,
	movl	$.LC32, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 1434 0 discriminator 3
	movl	$-1, PL_laststatval(%rip)	#, PL_laststatval
	movl	$-1, %eax	#, D.14117
	jmp	.L390	#
.L367:
	.loc 1 1438 0
	movl	$234, PL_laststype(%rip)	#, PL_laststype
	.loc 1 1439 0
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 1440 0
	movq	%rbx, %rax	# sp, sp.300
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.300_58, tmp186
	movq	%rax, -24(%rbp)	# tmp186, sv
	.loc 1 1441 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1442 0
	movq	-24(%rbp), %rax	# sv, tmp187
	movl	12(%rax), %eax	# sv_60->sv_flags, D.14128
	andl	$524288, %eax	#, D.14128
	testl	%eax, %eax	# D.14128
	je	.L376	#,
	.loc 1 1442 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp188
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XRV *)_63].xrv_rv, D.14121
	movl	12(%rax), %eax	# _64->sv_flags, D.14128
	movzbl	%al, %eax	# D.14128, D.14128
	cmpl	$13, %eax	#, D.14128
	jne	.L376	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.301
	movq	80(%rax), %rax	# PL_curcop.301_67->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	je	.L377	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.302
	movq	80(%rax), %rax	# PL_curcop.302_69->cop_warnings, D.14121
	cmpq	$32, %rax	#, D.14121
	je	.L377	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.303
	movq	80(%rax), %rax	# PL_curcop.303_71->cop_warnings, D.14121
	cmpq	$16, %rax	#, D.14121
	je	.L378	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.304
	movq	80(%rax), %rax	# PL_curcop.304_73->cop_warnings, D.14121
	movq	(%rax), %rax	# _74->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_75].xpv_pv, D.14123
	addq	$1, %rax	#, D.14123
	movzbl	(%rax), %eax	# *_77, D.14124
	movsbl	%al, %eax	# D.14124, D.14119
	andl	$4, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	jne	.L378	#,
.L377:
	.loc 1 1442 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.305
	movq	80(%rax), %rax	# PL_curcop.305_81->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	jne	.L376	#,
	.loc 1 1442 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.306
	movzbl	%al, %eax	# PL_dowarn.306, D.14119
	andl	$1, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	je	.L376	#,
.L378:
	.loc 1 1444 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp189
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XRV *)_86].xrv_rv, D.14121
	movq	(%rax), %rax	# MEM[(struct GV *)_87].sv_any, D.14125
	movq	56(%rax), %rax	# _88->xgv_gp, D.14126
	movq	48(%rax), %rax	# _89->gp_egv, D.14127
	testq	%rax, %rax	# D.14127
	je	.L379	#,
	.loc 1 1444 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp190
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XRV *)_91].xrv_rv, D.14121
	movq	(%rax), %rax	# MEM[(struct GV *)_92].sv_any, D.14125
	movq	56(%rax), %rax	# _93->xgv_gp, D.14126
	movq	48(%rax), %rax	# _94->gp_egv, iftmp.307
	jmp	.L380	#
.L379:
	.loc 1 1444 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp191
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XRV *)_96].xrv_rv, iftmp.307
.L380:
	.loc 1 1444 0 discriminator 3
	movq	(%rax), %rax	# iftmp.307_5->sv_any, D.14125
	.loc 1 1443 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _98->xgv_name, D.14123
	movq	%rax, %rdx	# D.14123,
	movl	$.LC32, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 1445 0 discriminator 3
	movl	$-1, PL_laststatval(%rip)	#, PL_laststatval
	movl	$-1, %eax	#, D.14117
	jmp	.L390	#
.L376:
	.loc 1 1447 0
	movq	-24(%rbp), %rax	# sv, tmp192
	movl	12(%rax), %eax	# sv_60->sv_flags, D.14128
	andl	$262144, %eax	#, D.14128
	testl	%eax, %eax	# D.14128
	je	.L381	#,
	.loc 1 1447 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp193
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_103].xpv_cur, n_a.309
	movq	%rax, -32(%rbp)	# n_a.309, n_a
	movq	-24(%rbp), %rax	# sv, tmp194
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_105].xpv_pv, iftmp.308
	jmp	.L382	#
.L381:
	.loc 1 1447 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp195
	movq	-24(%rbp), %rax	# sv, tmp196
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp196,
	call	Perl_sv_2pv_flags	#
.L382:
	.loc 1 1447 0 discriminator 3
	movq	PL_statname(%rip), %rdx	# PL_statname, PL_statname.310
	movq	%rax, %rsi	# iftmp.308,
	movq	%rdx, %rdi	# PL_statname.310,
	call	Perl_sv_setpv	#
	.loc 1 1448 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# sv, tmp197
	movl	12(%rax), %eax	# sv_60->sv_flags, D.14128
	andl	$262144, %eax	#, D.14128
	testl	%eax, %eax	# D.14128
	je	.L383	#,
	.loc 1 1448 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp198
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_111].xpv_cur, n_a.312
	movq	%rax, -32(%rbp)	# n_a.312, n_a
	movq	-24(%rbp), %rax	# sv, tmp199
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_113].xpv_pv, iftmp.311
	jmp	.L384	#
.L383:
	.loc 1 1448 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp200
	movq	-24(%rbp), %rax	# sv, tmp201
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	Perl_sv_2pv_flags	#
.L384:
	.loc 1 1448 0 discriminator 3
	movl	$PL_statcache, %esi	#,
	movq	%rax, %rdi	# iftmp.311,
	call	stat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.313, PL_laststatval
	.loc 1 1449 0 is_stmt 1 discriminator 3
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.314
	testl	%eax, %eax	# PL_laststatval.314
	jns	.L385	#,
	.loc 1 1449 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.315
	movq	80(%rax), %rax	# PL_curcop.315_118->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	je	.L386	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.316
	movq	80(%rax), %rax	# PL_curcop.316_120->cop_warnings, D.14121
	cmpq	$32, %rax	#, D.14121
	je	.L386	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.317
	movq	80(%rax), %rax	# PL_curcop.317_122->cop_warnings, D.14121
	cmpq	$16, %rax	#, D.14121
	je	.L387	#,
	.loc 1 1449 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.318
	movq	80(%rax), %rax	# PL_curcop.318_124->cop_warnings, D.14121
	movq	(%rax), %rax	# _125->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_126].xpv_pv, D.14123
	addq	$2, %rax	#, D.14123
	movzbl	(%rax), %eax	# *_128, D.14124
	movsbl	%al, %eax	# D.14124, D.14119
	andl	$4, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	jne	.L387	#,
.L386:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.319
	movq	80(%rax), %rax	# PL_curcop.319_132->cop_warnings, D.14121
	testq	%rax, %rax	# D.14121
	jne	.L385	#,
	.loc 1 1449 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.320
	movzbl	%al, %eax	# PL_dowarn.320, D.14119
	andl	$1, %eax	#, D.14119
	testl	%eax, %eax	# D.14119
	je	.L385	#,
.L387:
	movq	-24(%rbp), %rax	# sv, tmp202
	movl	12(%rax), %eax	# sv_60->sv_flags, D.14128
	andl	$262144, %eax	#, D.14128
	testl	%eax, %eax	# D.14128
	je	.L388	#,
	movq	-24(%rbp), %rax	# sv, tmp203
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_139].xpv_cur, n_a.322
	movq	%rax, -32(%rbp)	# n_a.322, n_a
	movq	-24(%rbp), %rax	# sv, tmp204
	movq	(%rax), %rax	# sv_60->sv_any, D.14122
	movq	(%rax), %rax	# MEM[(struct XPV *)_141].xpv_pv, iftmp.321
	jmp	.L389	#
.L388:
	.loc 1 1449 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp205
	movq	-24(%rbp), %rax	# sv, tmp206
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	Perl_sv_2pv_flags	#
.L389:
	.loc 1 1449 0 discriminator 3
	movl	$10, %esi	#,
	movq	%rax, %rdi	# iftmp.321,
	call	strchr	#
	testq	%rax, %rax	# D.14123
	je	.L385	#,
	.loc 1 1450 0 is_stmt 1
	movl	$.LC33, %edx	#,
	movl	$PL_warn_nl, %esi	#,
	movl	$9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L385:
	.loc 1 1451 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, D.14117
.L390:
	.loc 1 1452 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_my_lstat, .-Perl_my_lstat
	.globl	Perl_do_aexec
	.type	Perl_do_aexec, @function
Perl_do_aexec:
.LFB17:
	.loc 1 1457 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# really, really
	movq	%rsi, %rax	# mark, mark
	.loc 1 1458 0
	movq	-8(%rbp), %rdi	# really, tmp63
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# mark,
	call	Perl_do_aexec5	#
	.loc 1 1459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_do_aexec, .-Perl_do_aexec
	.section	.rodata
.LC34:
	.string	"Can't exec \"%s\": %s"
	.text
	.globl	Perl_do_aexec5
	.type	Perl_do_aexec5, @function
Perl_do_aexec5:
.LFB18:
	.loc 1 1465 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)	# really, really
	movq	%rsi, %rbx	# mark, mark
	movq	%rdx, %r13	# sp, sp
	movl	%ecx, -76(%rbp)	# fd, fd
	movl	%r8d, -80(%rbp)	# do_report, do_report
	.loc 1 1470 0
	movq	$0, -40(%rbp)	#, tmps
	.loc 1 1473 0
	cmpq	%rbx, %r13	# mark, sp
	jbe	.L394	#,
	.loc 1 1474 0
	movq	%r13, %rdx	# sp, sp.323
	movq	%rbx, %rax	# mark, mark.324
	subq	%rax, %rdx	# mark.324, D.14133
	movq	%rdx, %rax	# D.14133, D.14133
	sarq	$3, %rax	#, tmp128
	addq	$1, %rax	#, D.14133
	salq	$3, %rax	#, D.14134
	movq	%rax, %rdi	# D.14134,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_Argv(%rip)	# PL_Argv.325, PL_Argv
	.loc 1 1475 0
	movq	PL_Argv(%rip), %r12	# PL_Argv, a
	.loc 1 1476 0
	jmp	.L395	#
.L399:
	.loc 1 1477 0
	movq	(%rbx), %rax	# *mark_19, D.14135
	testq	%rax, %rax	# D.14135
	je	.L396	#,
	.loc 1 1478 0
	movq	(%rbx), %rax	# *mark_19, PL_Sv.326
	movq	%rax, PL_Sv(%rip)	# PL_Sv.326, PL_Sv
	movq	%r12, %r14	# a, a.327
	leaq	8(%r14), %r12	#, a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.329
	movl	12(%rax), %eax	# PL_Sv.329_24->sv_flags, D.14136
	andl	$262144, %eax	#, D.14136
	testl	%eax, %eax	# D.14136
	je	.L397	#,
	.loc 1 1478 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.330
	movq	(%rax), %rax	# PL_Sv.330_27->sv_any, D.14137
	movq	8(%rax), %rax	# MEM[(struct XPV *)_28].xpv_cur, n_a.331
	movq	%rax, -48(%rbp)	# n_a.331, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.332
	movq	(%rax), %rax	# PL_Sv.332_30->sv_any, D.14137
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, iftmp.328
	jmp	.L398	#
.L397:
	.loc 1 1478 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.333
	leaq	-48(%rbp), %rcx	#, tmp129
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# PL_Sv.333,
	call	Perl_sv_2pv_flags	#
.L398:
	.loc 1 1478 0 discriminator 1
	movq	%rax, (%r14)	# iftmp.328, *a.327_22
	jmp	.L395	#
.L396:
	.loc 1 1480 0 is_stmt 1
	movq	%r12, %rax	# a, a.334
	leaq	8(%rax), %r12	#, a
	movq	$.LC3, (%rax)	#, *a.334_35
.L395:
	.loc 1 1476 0 discriminator 1
	addq	$8, %rbx	#, mark
	cmpq	%r13, %rbx	# sp, mark
	jbe	.L399	#,
	.loc 1 1482 0
	movq	$0, (%r12)	#, *a_2
	.loc 1 1483 0
	cmpq	$0, -72(%rbp)	#, really
	je	.L400	#,
	.loc 1 1484 0
	movq	-72(%rbp), %rax	# really, tmp130
	movl	12(%rax), %eax	# really_37(D)->sv_flags, D.14136
	andl	$262144, %eax	#, D.14136
	testl	%eax, %eax	# D.14136
	je	.L401	#,
	.loc 1 1484 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# really, tmp131
	movq	(%rax), %rax	# really_37(D)->sv_any, D.14137
	movq	8(%rax), %rax	# MEM[(struct XPV *)_40].xpv_cur, n_a.336
	movq	%rax, -48(%rbp)	# n_a.336, n_a
	movq	-72(%rbp), %rax	# really, tmp132
	movq	(%rax), %rax	# really_37(D)->sv_any, D.14137
	movq	(%rax), %rax	# MEM[(struct XPV *)_42].xpv_pv, iftmp.335
	jmp	.L402	#
.L401:
	.loc 1 1484 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp133
	movq	-72(%rbp), %rax	# really, tmp134
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	Perl_sv_2pv_flags	#
.L402:
	.loc 1 1484 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.335, tmps
.L400:
	.loc 1 1485 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, really
	jne	.L403	#,
	.loc 1 1485 0 is_stmt 0 discriminator 1
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.337
	movq	(%rax), %rax	# *PL_Argv.337_46, D.14138
	movzbl	(%rax), %eax	# *_47, D.14139
	cmpb	$47, %al	#, D.14139
	jne	.L404	#,
.L403:
	.loc 1 1485 0 discriminator 2
	cmpq	$0, -72(%rbp)	#, really
	je	.L405	#,
	.loc 1 1486 0 is_stmt 1
	movq	-40(%rbp), %rax	# tmps, tmp135
	movzbl	(%rax), %eax	# *tmps_3, D.14139
	cmpb	$47, %al	#, D.14139
	je	.L405	#,
.L404:
	.loc 1 1487 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.338
	testb	%al, %al	# PL_tainting.338
	je	.L405	#,
	.loc 1 1487 0 is_stmt 0 discriminator 1
	call	Perl_taint_env	#
.L405:
	.loc 1 1489 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, really
	je	.L406	#,
	.loc 1 1489 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tmps, tmp136
	movzbl	(%rax), %eax	# *tmps_3, D.14139
	testb	%al, %al	# D.14139
	je	.L406	#,
	.loc 1 1490 0 is_stmt 1
	movq	PL_Argv(%rip), %rdx	# PL_Argv, PL_Argv.339
	movq	-40(%rbp), %rax	# tmps, tmp137
	movq	%rdx, %rsi	# PL_Argv.339,
	movq	%rax, %rdi	# tmp137,
	call	execvp	#
	jmp	.L407	#
.L406:
	.loc 1 1492 0
	movq	PL_Argv(%rip), %rdx	# PL_Argv, PL_Argv.340
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.341
	movq	(%rax), %rax	# *PL_Argv.341_54, D.14138
	movq	%rdx, %rsi	# PL_Argv.340,
	movq	%rax, %rdi	# D.14138,
	call	execvp	#
.L407:
	.loc 1 1494 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.342
	movq	80(%rax), %rax	# PL_curcop.342_56->cop_warnings, D.14135
	testq	%rax, %rax	# D.14135
	je	.L408	#,
	.loc 1 1494 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.343
	movq	80(%rax), %rax	# PL_curcop.343_58->cop_warnings, D.14135
	cmpq	$32, %rax	#, D.14135
	je	.L408	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.344
	movq	80(%rax), %rax	# PL_curcop.344_60->cop_warnings, D.14135
	cmpq	$16, %rax	#, D.14135
	je	.L409	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.345
	movq	80(%rax), %rax	# PL_curcop.345_62->cop_warnings, D.14135
	movq	(%rax), %rax	# _63->sv_any, D.14137
	movq	(%rax), %rax	# MEM[(struct XPV *)_64].xpv_pv, D.14138
	addq	$1, %rax	#, D.14138
	movzbl	(%rax), %eax	# *_66, D.14139
	movsbl	%al, %eax	# D.14139, D.14140
	andl	$64, %eax	#, D.14140
	testl	%eax, %eax	# D.14140
	jne	.L409	#,
.L408:
	.loc 1 1494 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.346
	movq	80(%rax), %rax	# PL_curcop.346_70->cop_warnings, D.14135
	testq	%rax, %rax	# D.14135
	jne	.L410	#,
	.loc 1 1494 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.347
	movzbl	%al, %eax	# PL_dowarn.347, D.14140
	andl	$1, %eax	#, D.14140
	testl	%eax, %eax	# D.14140
	je	.L410	#,
.L409:
	.loc 1 1496 0 is_stmt 1
	call	__errno_location	#
	.loc 1 1495 0
	movl	(%rax), %eax	# *_75, D.14140
	movl	%eax, %edi	# D.14140,
	call	strerror	#
	movq	%rax, %rdx	#, D.14138
	cmpq	$0, -72(%rbp)	#, really
	jne	.L411	#,
	.loc 1 1496 0
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.349
	.loc 1 1495 0
	movq	(%rax), %rax	# *PL_Argv.349_78, iftmp.348
	jmp	.L412	#
.L411:
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tmps, iftmp.348
.L412:
	.loc 1 1495 0 discriminator 2
	movq	%rdx, %rcx	# D.14138,
	movq	%rax, %rdx	# iftmp.348,
	movl	$.LC34, %esi	#,
	movl	$7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L410:
	.loc 1 1497 0 is_stmt 1
	cmpl	$0, -80(%rbp)	#, do_report
	je	.L394	#,
.LBB23:
	.loc 1 1498 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_82, e.350
	movl	%eax, -52(%rbp)	# e.350, e
	.loc 1 1500 0
	leaq	-52(%rbp), %rcx	#, tmp138
	movl	-76(%rbp), %eax	# fd, tmp139
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp138,
	movl	%eax, %edi	# tmp139,
	call	write	#
	.loc 1 1501 0
	movl	-76(%rbp), %eax	# fd, tmp140
	movl	%eax, %edi	# tmp140,
	call	close	#
.L394:
.LBE23:
	.loc 1 1504 0
	call	Perl_do_execfree	#
	.loc 1 1506 0
	movl	$0, %eax	#, D.14139
	.loc 1 1507 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_do_aexec5, .-Perl_do_aexec5
	.globl	Perl_do_execfree
	.type	Perl_do_execfree, @function
Perl_do_execfree:
.LFB19:
	.loc 1 1511 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1512 0
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.351
	testq	%rax, %rax	# PL_Argv.351
	je	.L415	#,
	.loc 1 1513 0
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.352
	movq	%rax, %rdi	# PL_Argv.352,
	call	Perl_safesysfree	#
	.loc 1 1514 0
	movq	$0, PL_Argv(%rip)	#, PL_Argv
.L415:
	.loc 1 1516 0
	movq	PL_Cmd(%rip), %rax	# PL_Cmd, PL_Cmd.353
	testq	%rax, %rax	# PL_Cmd.353
	je	.L414	#,
	.loc 1 1517 0
	movq	PL_Cmd(%rip), %rax	# PL_Cmd, PL_Cmd.354
	movq	%rax, %rdi	# PL_Cmd.354,
	call	Perl_safesysfree	#
	.loc 1 1518 0
	movq	$0, PL_Cmd(%rip)	#, PL_Cmd
.L414:
	.loc 1 1520 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_do_execfree, .-Perl_do_execfree
	.globl	Perl_do_exec
	.type	Perl_do_exec, @function
Perl_do_exec:
.LFB20:
	.loc 1 1526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cmd, cmd
	.loc 1 1527 0
	movq	-8(%rbp), %rax	# cmd, tmp61
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_do_exec3	#
	.loc 1 1528 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_do_exec, .-Perl_do_exec
	.section	.rodata
.LC35:
	.string	" -c"
.LC36:
	.string	"csh"
.LC37:
	.string	"exec"
.LC38:
	.string	"$&*(){}[]'\";\\|?<>~`\n"
.LC39:
	.string	"-c"
.LC40:
	.string	"sh"
	.text
	.globl	Perl_do_exec3
	.type	Perl_do_exec3, @function
Perl_do_exec3:
.LFB21:
	.loc 1 1532 0
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
	movq	%rdi, -88(%rbp)	# cmd, cmd
	movl	%esi, -92(%rbp)	# fd, fd
	movl	%edx, -96(%rbp)	# do_report, do_report
	.loc 1 1532 0
	movq	%fs:40, %rax	#, tmp287
	movq	%rax, -24(%rbp)	# tmp287, D.14154
	xorl	%eax, %eax	# tmp287
	.loc 1 1536 0
	jmp	.L420	#
.L422:
	.loc 1 1537 0
	addq	$1, -88(%rbp)	#, cmd
.L420:
	.loc 1 1536 0 discriminator 1
	movq	-88(%rbp), %rax	# cmd, tmp238
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	testb	%al, %al	# D.14144
	je	.L421	#,
	.loc 1 1536 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# cmd, tmp239
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L422	#,
	.loc 1 1536 0 discriminator 1
	movq	-88(%rbp), %rax	# cmd, tmp240
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L422	#,
	movq	-88(%rbp), %rax	# cmd, tmp241
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L422	#,
	movq	-88(%rbp), %rax	# cmd, tmp242
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L422	#,
	movq	-88(%rbp), %rax	# cmd, tmp243
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$12, %al	#, D.14144
	je	.L422	#,
.L421:
.LBB24:
	.loc 1 1544 0 is_stmt 1
	movl	PL_cshlen(%rip), %eax	# PL_cshlen, PL_cshlen.355
	movslq	%eax, %rdx	# PL_cshlen.355, D.14145
	movq	PL_cshname(%rip), %rcx	# PL_cshname, PL_cshname.356
	movq	-88(%rbp), %rax	# cmd, tmp244
	movq	%rcx, %rsi	# PL_cshname.356,
	movq	%rax, %rdi	# tmp244,
	call	strncmp	#
	testl	%eax, %eax	# D.14146
	jne	.L423	#,
	.loc 1 1545 0 discriminator 1
	movl	PL_cshlen(%rip), %eax	# PL_cshlen, PL_cshlen.357
	movslq	%eax, %rdx	# PL_cshlen.357, D.14147
	movq	-88(%rbp), %rax	# cmd, tmp245
	addq	%rdx, %rax	# D.14147, D.14148
	movl	$3, %edx	#,
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# D.14148,
	call	strncmp	#
	.loc 1 1544 0 discriminator 1
	testl	%eax, %eax	# D.14146
	jne	.L423	#,
	.loc 1 1549 0
	leaq	-48(%rbp), %rax	#, tmp246
	movw	$25389, (%rax)	#, MEM[(void *)&flags]
	movb	$0, 2(%rax)	#, MEM[(void *)&flags]
	.loc 1 1551 0
	movl	PL_cshlen(%rip), %eax	# PL_cshlen, PL_cshlen.358
	cltq
	leaq	3(%rax), %rdx	#, D.14147
	movq	-88(%rbp), %rax	# cmd, tmp247
	leaq	(%rdx,%rax), %rbx	#, s
	.loc 1 1552 0
	movzbl	(%rbx), %eax	# *s_34, D.14144
	cmpb	$102, %al	#, D.14144
	jne	.L424	#,
	.loc 1 1553 0
	addq	$1, %rbx	#, s
	.loc 1 1557 0
	leaq	-48(%rbp), %rax	#, tmp248
	movq	$-1, %rcx	#, tmp252
	movq	%rax, %rdx	# tmp248, tmp251
	movl	$0, %eax	#, tmp253
	movq	%rdx, %rdi	# tmp251, tmp251
	repnz scasb
	movq	%rcx, %rax	# tmp249, tmp249
	notq	%rax	# tmp250
	leaq	-1(%rax), %rdx	#, D.14145
	leaq	-48(%rbp), %rax	#, tmp254
	addq	%rdx, %rax	# D.14145, D.14149
	movw	$102, (%rax)	#, MEM[(void *)_38]
.L424:
	.loc 1 1560 0
	movzbl	(%rbx), %eax	# *s_4, D.14144
	cmpb	$32, %al	#, D.14144
	jne	.L425	#,
	.loc 1 1561 0
	addq	$1, %rbx	#, s
.L425:
	.loc 1 1562 0
	movq	%rbx, %rax	# s, s.359
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.359_41, D.14144
	cmpb	$39, %al	#, D.14144
	jne	.L423	#,
.LBB25:
	.loc 1 1563 0
	movq	%rbx, -56(%rbp)	# s, ncmd
	.loc 1 1565 0
	jmp	.L426	#
.L427:
	.loc 1 1566 0
	addq	$1, %rbx	#, s
.L426:
	.loc 1 1565 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_6, D.14144
	testb	%al, %al	# D.14144
	jne	.L427	#,
	.loc 1 1567 0
	leaq	-1(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_47, D.14144
	cmpb	$10, %al	#, D.14144
	jne	.L428	#,
	.loc 1 1568 0
	subq	$1, %rbx	#, s
	movb	$0, (%rbx)	#, *s_49
.L428:
	.loc 1 1569 0
	leaq	-1(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_50, D.14144
	cmpb	$39, %al	#, D.14144
	jne	.L423	#,
	.loc 1 1570 0
	subq	$1, %rbx	#, s
	movb	$0, (%rbx)	#, *s_52
	.loc 1 1572 0
	movq	PL_cshname(%rip), %rax	# PL_cshname, PL_cshname.360
	movq	-56(%rbp), %rcx	# ncmd, tmp255
	leaq	-48(%rbp), %rdx	#, tmp256
	movl	$0, %r8d	#,
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# PL_cshname.360,
	movl	$0, %eax	#,
	call	execl	#
	.loc 1 1574 0
	movb	$39, (%rbx)	#, *s_52
	.loc 1 1575 0
	movl	$0, %eax	#, D.14144
	jmp	.L429	#
.L423:
.LBE25:
.LBE24:
	.loc 1 1584 0
	movq	-88(%rbp), %rax	# cmd, tmp257
	movzbl	(%rax), %eax	# *cmd_1, D.14144
	cmpb	$46, %al	#, D.14144
	jne	.L430	#,
	.loc 1 1584 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# cmd, tmp258
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_56, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp259
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_58, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp260
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_60, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp261
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_62, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp262
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_64, D.14144
	cmpb	$12, %al	#, D.14144
	je	.L431	#,
.L430:
	.loc 1 1587 0 is_stmt 1
	movq	-88(%rbp), %rax	# cmd, tmp263
	movl	$4, %edx	#,
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	strncmp	#
	testl	%eax, %eax	# D.14146
	jne	.L432	#,
	.loc 1 1587 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# cmd, tmp264
	addq	$4, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_67, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp265
	addq	$4, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_69, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp266
	addq	$4, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_71, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp267
	addq	$4, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_73, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L431	#,
	movq	-88(%rbp), %rax	# cmd, tmp268
	addq	$4, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_75, D.14144
	cmpb	$12, %al	#, D.14144
	je	.L431	#,
.L432:
	.loc 1 1590 0 is_stmt 1
	movq	-88(%rbp), %rbx	# cmd, s
	jmp	.L433	#
.L436:
	.loc 1 1590 0 is_stmt 0 discriminator 1
	addq	$1, %rbx	#, s
.L433:
	movzbl	(%rbx), %eax	# *s_8, D.14144
	testb	%al, %al	# D.14144
	je	.L434	#,
	.loc 1 1590 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$64, %al	#, D.14144
	jle	.L435	#,
	.loc 1 1590 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$90, %al	#, D.14144
	jle	.L436	#,
.L435:
	.loc 1 1590 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$96, %al	#, D.14144
	jle	.L437	#,
	.loc 1 1590 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$122, %al	#, D.14144
	jle	.L436	#,
.L437:
	.loc 1 1590 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$47, %al	#, D.14144
	jle	.L438	#,
	.loc 1 1590 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$57, %al	#, D.14144
	jle	.L436	#,
.L438:
	.loc 1 1590 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$95, %al	#, D.14144
	je	.L436	#,
.L434:
	.loc 1 1591 0 is_stmt 1
	movzbl	(%rbx), %eax	# *s_8, D.14144
	cmpb	$61, %al	#, D.14144
	jne	.L439	#,
	.loc 1 1592 0
	jmp	.L431	#
.L439:
	.loc 1 1594 0
	movq	-88(%rbp), %rbx	# cmd, s
	jmp	.L440	#
.L451:
	.loc 1 1595 0
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L441	#,
	.loc 1 1595 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$64, %al	#, D.14144
	jle	.L442	#,
	.loc 1 1595 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$90, %al	#, D.14144
	jle	.L441	#,
.L442:
	.loc 1 1595 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$96, %al	#, D.14144
	jle	.L443	#,
	.loc 1 1595 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$122, %al	#, D.14144
	jle	.L441	#,
.L443:
	.loc 1 1596 0 is_stmt 1 discriminator 1
	movzbl	(%rbx), %eax	# *s_9, D.14144
	movsbl	%al, %eax	# D.14144, D.14146
	movl	%eax, %esi	# D.14146,
	movl	$.LC38, %edi	#,
	call	strchr	#
	.loc 1 1595 0 discriminator 1
	testq	%rax, %rax	# D.14149
	je	.L441	#,
	.loc 1 1597 0
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$10, %al	#, D.14144
	jne	.L444	#,
	.loc 1 1597 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_99, D.14144
	testb	%al, %al	# D.14144
	jne	.L444	#,
	.loc 1 1598 0 is_stmt 1
	movb	$0, (%rbx)	#, *s_9
	.loc 1 1599 0
	jmp	.L445	#
.L444:
	.loc 1 1602 0
	movzbl	(%rbx), %eax	# *s_9, D.14144
	cmpb	$62, %al	#, D.14144
	jne	.L431	#,
	.loc 1 1602 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_102, D.14144
	cmpb	$38, %al	#, D.14144
	jne	.L431	#,
	leaq	2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_104, D.14144
	cmpb	$49, %al	#, D.14144
	jne	.L431	#,
	.loc 1 1603 0 is_stmt 1
	movq	-88(%rbp), %rax	# cmd, tmp269
	addq	$1, %rax	#, D.14149
	cmpq	%rbx, %rax	# s, D.14149
	jae	.L431	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	leaq	-1(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_107, D.14144
	cmpb	$50, %al	#, D.14144
	jne	.L431	#,
	leaq	-2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_109, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L446	#,
	leaq	-2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_111, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L446	#,
	leaq	-2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_113, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L446	#,
	leaq	-2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_115, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L446	#,
	leaq	-2(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_117, D.14144
	cmpb	$12, %al	#, D.14144
	jne	.L431	#,
.L446:
	.loc 1 1604 0 is_stmt 1
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_119, D.14144
	testb	%al, %al	# D.14144
	je	.L447	#,
	.loc 1 1604 0 is_stmt 0 discriminator 1
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_121, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L447	#,
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_123, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L447	#,
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_125, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L447	#,
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_127, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L447	#,
	leaq	3(%rbx), %rax	#, D.14149
	movzbl	(%rax), %eax	# *_129, D.14144
	cmpb	$12, %al	#, D.14144
	jne	.L431	#,
.L447:
.LBB26:
	.loc 1 1606 0 is_stmt 1
	leaq	3(%rbx), %rax	#, tmp270
	movq	%rax, -64(%rbp)	# tmp270, t
	.loc 1 1608 0
	jmp	.L448	#
.L450:
	.loc 1 1609 0
	addq	$1, -64(%rbp)	#, t
.L448:
	.loc 1 1608 0 discriminator 1
	movq	-64(%rbp), %rax	# t, tmp271
	movzbl	(%rax), %eax	# *t_13, D.14144
	testb	%al, %al	# D.14144
	je	.L449	#,
	.loc 1 1608 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# t, tmp272
	movzbl	(%rax), %eax	# *t_13, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L450	#,
	.loc 1 1608 0 discriminator 1
	movq	-64(%rbp), %rax	# t, tmp273
	movzbl	(%rax), %eax	# *t_13, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L450	#,
	movq	-64(%rbp), %rax	# t, tmp274
	movzbl	(%rax), %eax	# *t_13, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L450	#,
	movq	-64(%rbp), %rax	# t, tmp275
	movzbl	(%rax), %eax	# *t_13, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L450	#,
	movq	-64(%rbp), %rax	# t, tmp276
	movzbl	(%rax), %eax	# *t_13, D.14144
	cmpb	$12, %al	#, D.14144
	je	.L450	#,
.L449:
	.loc 1 1610 0 is_stmt 1
	movq	-64(%rbp), %rax	# t, tmp277
	movzbl	(%rax), %eax	# *t_13, D.14144
	testb	%al, %al	# D.14144
	jne	.L431	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	dup2	#
	cmpl	$-1, %eax	#, D.14146
	je	.L431	#,
	.loc 1 1611 0 is_stmt 1
	leaq	-2(%rbx), %rax	#, D.14149
	movb	$0, (%rax)	#, *_141
	.loc 1 1612 0
	jmp	.L445	#
.L431:
.LBE26:
	.loc 1 1617 0
	movq	PL_sh_path(%rip), %rax	# PL_sh_path, PL_sh_path.361
	movq	-88(%rbp), %rdx	# cmd, tmp278
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp278,
	movl	$.LC39, %edx	#,
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# PL_sh_path.361,
	movl	$0, %eax	#,
	call	execl	#
	.loc 1 1619 0
	movl	$0, %eax	#, D.14144
	jmp	.L429	#
.L441:
	.loc 1 1594 0
	addq	$1, %rbx	#, s
.L440:
	.loc 1 1594 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_9, D.14144
	testb	%al, %al	# D.14144
	jne	.L451	#,
.L445:
	.loc 1 1623 0 is_stmt 1
	movq	%rbx, %rdx	# s, s.362
	movq	-88(%rbp), %rax	# cmd, cmd.363
	subq	%rax, %rdx	# cmd.363, D.14150
	movq	%rdx, %rax	# D.14150, D.14150
	movq	%rax, %rdx	# D.14150, tmp279
	shrq	$63, %rdx	#, tmp279
	addq	%rdx, %rax	# tmp279, tmp280
	sarq	%rax	# tmp281
	addq	$2, %rax	#, D.14150
	salq	$3, %rax	#, D.14145
	movq	%rax, %rdi	# D.14145,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_Argv(%rip)	# PL_Argv.364, PL_Argv
	.loc 1 1624 0
	movq	%rbx, %rdx	# s, s.365
	movq	-88(%rbp), %rax	# cmd, cmd.366
	subq	%rax, %rdx	# cmd.366, D.14150
	movq	%rdx, %rax	# D.14150, D.14150
	movl	%eax, %edx	# D.14150, D.14146
	movq	-88(%rbp), %rax	# cmd, tmp282
	movl	%edx, %esi	# D.14146,
	movq	%rax, %rdi	# tmp282,
	call	Perl_savepvn	#
	movq	%rax, PL_Cmd(%rip)	# PL_Cmd.367, PL_Cmd
	.loc 1 1625 0
	movq	PL_Argv(%rip), %r12	# PL_Argv, a
	.loc 1 1626 0
	movq	PL_Cmd(%rip), %rbx	# PL_Cmd, s
	jmp	.L452	#
.L460:
	.loc 1 1627 0
	jmp	.L453	#
.L455:
	.loc 1 1627 0 is_stmt 0 discriminator 1
	addq	$1, %rbx	#, s
.L453:
	movzbl	(%rbx), %eax	# *s_10, D.14144
	testb	%al, %al	# D.14144
	je	.L454	#,
	.loc 1 1627 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_10, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L455	#,
	movzbl	(%rbx), %eax	# *s_10, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L455	#,
	.loc 1 1627 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_10, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L455	#,
	movzbl	(%rbx), %eax	# *s_10, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L455	#,
	movzbl	(%rbx), %eax	# *s_10, D.14144
	cmpb	$12, %al	#, D.14144
	je	.L455	#,
.L454:
	.loc 1 1628 0 is_stmt 1
	movzbl	(%rbx), %eax	# *s_10, D.14144
	testb	%al, %al	# D.14144
	je	.L456	#,
	.loc 1 1629 0
	movq	%r12, %rax	# a, a.368
	leaq	8(%rax), %r12	#, a
	movq	%rbx, (%rax)	# s, *a.368_167
	.loc 1 1630 0
	jmp	.L457	#
.L456:
	jmp	.L457	#
.L459:
	.loc 1 1630 0 is_stmt 0 discriminator 1
	addq	$1, %rbx	#, s
.L457:
	movzbl	(%rbx), %eax	# *s_11, D.14144
	testb	%al, %al	# D.14144
	je	.L458	#,
	.loc 1 1630 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_11, D.14144
	cmpb	$32, %al	#, D.14144
	je	.L458	#,
	.loc 1 1630 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_11, D.14144
	cmpb	$9, %al	#, D.14144
	je	.L458	#,
	movzbl	(%rbx), %eax	# *s_11, D.14144
	cmpb	$10, %al	#, D.14144
	je	.L458	#,
	movzbl	(%rbx), %eax	# *s_11, D.14144
	cmpb	$13, %al	#, D.14144
	je	.L458	#,
	movzbl	(%rbx), %eax	# *s_11, D.14144
	cmpb	$12, %al	#, D.14144
	jne	.L459	#,
.L458:
	.loc 1 1631 0 is_stmt 1
	movzbl	(%rbx), %eax	# *s_11, D.14144
	testb	%al, %al	# D.14144
	je	.L452	#,
	.loc 1 1632 0
	movq	%rbx, %rax	# s, s.369
	leaq	1(%rax), %rbx	#, s
	movb	$0, (%rax)	#, *s.369_177
.L452:
	.loc 1 1626 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_12, D.14144
	testb	%al, %al	# D.14144
	jne	.L460	#,
	.loc 1 1634 0
	movq	$0, (%r12)	#, *a_3
	.loc 1 1635 0
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.370
	movq	(%rax), %rax	# *PL_Argv.370_179, D.14149
	testq	%rax, %rax	# D.14149
	je	.L461	#,
	.loc 1 1637 0
	movq	PL_Argv(%rip), %rdx	# PL_Argv, PL_Argv.371
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.372
	movq	(%rax), %rax	# *PL_Argv.372_182, D.14149
	movq	%rdx, %rsi	# PL_Argv.371,
	movq	%rax, %rdi	# D.14149,
	call	execvp	#
	.loc 1 1639 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_184, D.14146
	cmpl	$8, %eax	#, D.14146
	jne	.L462	#,
	.loc 1 1640 0
	call	Perl_do_execfree	#
	.loc 1 1641 0
	jmp	.L431	#
.L462:
.LBB27:
	.loc 1 1644 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_186, e.373
	movl	%eax, -68(%rbp)	# e.373, e
	.loc 1 1646 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.374
	movq	80(%rax), %rax	# PL_curcop.374_188->cop_warnings, D.14152
	testq	%rax, %rax	# D.14152
	je	.L463	#,
	.loc 1 1646 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.375
	movq	80(%rax), %rax	# PL_curcop.375_190->cop_warnings, D.14152
	cmpq	$32, %rax	#, D.14152
	je	.L463	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.376
	movq	80(%rax), %rax	# PL_curcop.376_192->cop_warnings, D.14152
	cmpq	$16, %rax	#, D.14152
	je	.L464	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.377
	movq	80(%rax), %rax	# PL_curcop.377_194->cop_warnings, D.14152
	movq	(%rax), %rax	# _195->sv_any, D.14153
	movq	(%rax), %rax	# MEM[(struct XPV *)_196].xpv_pv, D.14149
	addq	$1, %rax	#, D.14149
	movzbl	(%rax), %eax	# *_198, D.14144
	movsbl	%al, %eax	# D.14144, D.14146
	andl	$64, %eax	#, D.14146
	testl	%eax, %eax	# D.14146
	jne	.L464	#,
.L463:
	.loc 1 1646 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.378
	movq	80(%rax), %rax	# PL_curcop.378_202->cop_warnings, D.14152
	testq	%rax, %rax	# D.14152
	jne	.L465	#,
	.loc 1 1646 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.379
	movzbl	%al, %eax	# PL_dowarn.379, D.14146
	andl	$1, %eax	#, D.14146
	testl	%eax, %eax	# D.14146
	je	.L465	#,
.L464:
	.loc 1 1648 0 is_stmt 1
	call	__errno_location	#
	.loc 1 1647 0
	movl	(%rax), %eax	# *_207, D.14146
	movl	%eax, %edi	# D.14146,
	call	strerror	#
	movq	%rax, %rdx	#, D.14149
	movq	PL_Argv(%rip), %rax	# PL_Argv, PL_Argv.380
	movq	(%rax), %rax	# *PL_Argv.380_210, D.14149
	movq	%rdx, %rcx	# D.14149,
	movq	%rax, %rdx	# D.14149,
	movl	$.LC34, %esi	#,
	movl	$7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L465:
	.loc 1 1649 0
	cmpl	$0, -96(%rbp)	#, do_report
	je	.L461	#,
	.loc 1 1650 0
	leaq	-68(%rbp), %rcx	#, tmp283
	movl	-92(%rbp), %eax	# fd, tmp284
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp283,
	movl	%eax, %edi	# tmp284,
	call	write	#
	.loc 1 1651 0
	movl	-92(%rbp), %eax	# fd, tmp285
	movl	%eax, %edi	# tmp285,
	call	close	#
.L461:
.LBE27:
	.loc 1 1655 0
	call	Perl_do_execfree	#
	.loc 1 1656 0
	movl	$0, %eax	#, D.14144
.L429:
	.loc 1 1657 0
	movq	-24(%rbp), %rsi	# D.14154, tmp288
	xorq	%fs:40, %rsi	#, tmp288
	je	.L467	#,
	call	__stack_chk_fail	#
.L467:
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_do_exec3, .-Perl_do_exec3
	.section	.rodata
.LC41:
	.string	"chmod"
.LC42:
	.string	"unlink"
	.text
	.globl	Perl_apply
	.type	Perl_apply, @function
Perl_apply:
.LFB22:
	.loc 1 1663 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -84(%rbp)	# type, type
	movq	%rsi, %rbx	# mark, mark
	movq	%rdx, %r13	# sp, sp
	.loc 1 1666 0
	movl	$0, %r12d	#, tot
	.loc 1 1669 0
	movq	%rbx, -64(%rbp)	# mark, oldmark
	.loc 1 1678 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.381
	testb	%al, %al	# PL_tainting.381
	je	.L469	#,
	.loc 1 1679 0
	jmp	.L470	#
.L472:
	.loc 1 1680 0
	movq	(%rbx), %rax	# *mark_17, D.14161
	movl	12(%rax), %eax	# _19->sv_flags, D.14162
	andl	$57344, %eax	#, D.14162
	testl	%eax, %eax	# D.14162
	je	.L470	#,
	.loc 1 1680 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *mark_17, D.14161
	movq	%rax, %rdi	# D.14161,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.14163
	je	.L470	#,
	.loc 1 1681 0 is_stmt 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1682 0
	jmp	.L471	#
.L470:
	.loc 1 1679 0 discriminator 1
	addq	$8, %rbx	#, mark
	cmpq	%r13, %rbx	# sp, mark
	jbe	.L472	#,
.L471:
	.loc 1 1685 0
	movq	-64(%rbp), %rbx	# oldmark, mark
.L469:
	.loc 1 1687 0
	movl	-84(%rbp), %eax	# type, type
	cmpl	$266, %eax	#, type
	je	.L474	#,
	cmpl	$267, %eax	#, type
	jne	.L473	#,
	.loc 1 1689 0
	movq	$.LC41, -56(%rbp)	#, what
	.loc 1 1690 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.382
	testb	%al, %al	# PL_tainted.382
	je	.L476	#,
	.loc 1 1690 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.383
	testb	%al, %al	# PL_tainting.383
	je	.L476	#,
	movq	-56(%rbp), %rax	# what, tmp131
	movq	%rax, %rsi	# tmp131,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L476:
	.loc 1 1691 0 is_stmt 1
	addq	$8, %rbx	#, mark
	cmpq	%r13, %rbx	# sp, mark
	ja	.L477	#,
	.loc 1 1692 0
	movq	(%rbx), %rax	# *mark_29, PL_Sv.384
	movq	%rax, PL_Sv(%rip)	# PL_Sv.384, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.386
	movl	12(%rax), %eax	# PL_Sv.386_31->sv_flags, D.14162
	andl	$65536, %eax	#, D.14162
	testl	%eax, %eax	# D.14162
	je	.L478	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.387
	movq	(%rax), %rax	# PL_Sv.387_34->sv_any, D.14164
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_35].xiv_iv, D.14165
	jmp	.L479	#
.L478:
	.loc 1 1692 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.388
	movq	%rax, %rdi	# PL_Sv.388,
	call	Perl_sv_2iv	#
.L479:
	.loc 1 1692 0 discriminator 3
	movl	%eax, %r14d	# iftmp.385, val
	.loc 1 1693 0 is_stmt 1 discriminator 3
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.389
	testb	%al, %al	# PL_tainted.389
	je	.L480	#,
	.loc 1 1693 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.390
	testb	%al, %al	# PL_tainting.390
	je	.L480	#,
	movq	-56(%rbp), %rax	# what, tmp132
	movq	%rax, %rsi	# tmp132,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L480:
	.loc 1 1694 0 is_stmt 1
	movq	%r13, %rdx	# sp, sp.391
	movq	%rbx, %rax	# mark, mark.392
	subq	%rax, %rdx	# mark.392, D.14165
	movq	%rdx, %rax	# D.14165, D.14165
	sarq	$3, %rax	#, tmp133
	movl	%eax, %r12d	# D.14165, tot
	.loc 1 1695 0
	jmp	.L481	#
.L485:
.LBB28:
	.loc 1 1696 0
	movq	(%rbx), %rax	# *mark_49, PL_Sv.393
	movq	%rax, PL_Sv(%rip)	# PL_Sv.393, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.395
	movl	12(%rax), %eax	# PL_Sv.395_51->sv_flags, D.14162
	andl	$262144, %eax	#, D.14162
	testl	%eax, %eax	# D.14162
	je	.L482	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.396
	movq	(%rax), %rax	# PL_Sv.396_54->sv_any, D.14164
	movq	8(%rax), %rax	# MEM[(struct XPV *)_55].xpv_cur, n_a.397
	movq	%rax, -72(%rbp)	# n_a.397, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.398
	movq	(%rax), %rax	# PL_Sv.398_57->sv_any, D.14164
	movq	(%rax), %rax	# MEM[(struct XPV *)_58].xpv_pv, iftmp.394
	jmp	.L483	#
.L482:
	.loc 1 1696 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.399
	leaq	-72(%rbp), %rcx	#, tmp134
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# PL_Sv.399,
	call	Perl_sv_2pv_flags	#
.L483:
	.loc 1 1696 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.394, name
	.loc 1 1697 0 is_stmt 1 discriminator 3
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.400
	testb	%al, %al	# PL_tainted.400
	je	.L484	#,
	.loc 1 1697 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.401
	testb	%al, %al	# PL_tainting.401
	je	.L484	#,
	movq	-56(%rbp), %rax	# what, tmp135
	movq	%rax, %rsi	# tmp135,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L484:
	.loc 1 1698 0 is_stmt 1
	movl	%r14d, %edx	# val, val.402
	movq	-48(%rbp), %rax	# name, tmp136
	movl	%edx, %esi	# val.402,
	movq	%rax, %rdi	# tmp136,
	call	chmod	#
	testl	%eax, %eax	# D.14166
	je	.L481	#,
	.loc 1 1699 0
	subl	$1, %r12d	#, tot
.L481:
.LBE28:
	.loc 1 1695 0 discriminator 1
	addq	$8, %rbx	#, mark
	cmpq	%r13, %rbx	# sp, mark
	jbe	.L485	#,
.L477:
	.loc 1 1702 0
	jmp	.L473	#
.L474:
	.loc 1 1799 0
	movq	$.LC42, -56(%rbp)	#, what
	.loc 1 1800 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.403
	testb	%al, %al	# PL_tainted.403
	je	.L486	#,
	.loc 1 1800 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.404
	testb	%al, %al	# PL_tainting.404
	je	.L486	#,
	movq	-56(%rbp), %rax	# what, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L486:
	.loc 1 1801 0 is_stmt 1
	movq	%r13, %rdx	# sp, sp.405
	movq	%rbx, %rax	# mark, mark.406
	subq	%rax, %rdx	# mark.406, D.14165
	movq	%rdx, %rax	# D.14165, D.14165
	sarq	$3, %rax	#, tmp138
	movl	%eax, %r12d	# D.14165, tot
	.loc 1 1802 0
	jmp	.L487	#
.L496:
	.loc 1 1803 0
	movq	(%rbx), %rax	# *mark_76, PL_Sv.407
	movq	%rax, PL_Sv(%rip)	# PL_Sv.407, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.409
	movl	12(%rax), %eax	# PL_Sv.409_78->sv_flags, D.14162
	andl	$262144, %eax	#, D.14162
	testl	%eax, %eax	# D.14162
	je	.L488	#,
	.loc 1 1803 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.410
	movq	(%rax), %rax	# PL_Sv.410_81->sv_any, D.14164
	movq	8(%rax), %rax	# MEM[(struct XPV *)_82].xpv_cur, n_a.411
	movq	%rax, -72(%rbp)	# n_a.411, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.412
	movq	(%rax), %rax	# PL_Sv.412_84->sv_any, D.14164
	movq	(%rax), %rax	# MEM[(struct XPV *)_85].xpv_pv, iftmp.408
	jmp	.L489	#
.L488:
	.loc 1 1803 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.413
	leaq	-72(%rbp), %rcx	#, tmp139
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp139,
	movq	%rax, %rdi	# PL_Sv.413,
	call	Perl_sv_2pv_flags	#
.L489:
	.loc 1 1803 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.408, s
	.loc 1 1804 0 is_stmt 1 discriminator 3
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.414
	testb	%al, %al	# PL_tainted.414
	je	.L490	#,
	.loc 1 1804 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.415
	testb	%al, %al	# PL_tainting.415
	je	.L490	#,
	movq	-56(%rbp), %rax	# what, tmp140
	movq	%rax, %rsi	# tmp140,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L490:
	.loc 1 1805 0 is_stmt 1
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.416
	testl	%eax, %eax	# PL_euid.416
	jne	.L491	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movzbl	PL_unsafe(%rip), %eax	# PL_unsafe, PL_unsafe.417
	testb	%al, %al	# PL_unsafe.417
	je	.L492	#,
.L491:
	.loc 1 1806 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp141
	movq	%rax, %rdi	# tmp141,
	call	unlink	#
	testl	%eax, %eax	# D.14166
	je	.L493	#,
	.loc 1 1807 0
	subl	$1, %r12d	#, tot
	.loc 1 1806 0
	jmp	.L487	#
.L493:
	.loc 1 1806 0 is_stmt 0 discriminator 1
	jmp	.L487	#
.L492:
	.loc 1 1810 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp142
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	stat	#
	testl	%eax, %eax	# D.14166
	js	.L494	#,
	.loc 1 1810 0 is_stmt 0 discriminator 1
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14162
	andl	$61440, %eax	#, D.14162
	cmpl	$16384, %eax	#, D.14162
	jne	.L495	#,
.L494:
	.loc 1 1811 0 is_stmt 1
	subl	$1, %r12d	#, tot
	jmp	.L487	#
.L495:
	.loc 1 1813 0
	movq	-40(%rbp), %rax	# s, tmp143
	movq	%rax, %rdi	# tmp143,
	call	unlink	#
	testl	%eax, %eax	# D.14166
	je	.L487	#,
	.loc 1 1814 0
	subl	$1, %r12d	#, tot
.L487:
	.loc 1 1802 0 discriminator 1
	addq	$8, %rbx	#, mark
	cmpq	%r13, %rbx	# sp, mark
	jbe	.L496	#,
	.loc 1 1818 0
	nop
.L473:
	.loc 1 1867 0
	movl	%r12d, %eax	# tot, D.14167
	.loc 1 1870 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_apply, .-Perl_apply
	.globl	Perl_cando
	.type	Perl_cando, @function
Perl_cando:
.LFB23:
	.loc 1 1878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# effective, effective
	movq	%rdx, %rbx	# statbufp, statbufp
	.loc 1 1904 0
	cmpl	$0, -24(%rbp)	#, effective
	je	.L499	#,
	.loc 1 1904 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.419
	testl	%eax, %eax	# PL_euid.419
	sete	%al	#, iftmp.418
	jmp	.L500	#
.L499:
	.loc 1 1904 0 discriminator 2
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.420
	testl	%eax, %eax	# PL_uid.420
	sete	%al	#, iftmp.418
.L500:
	.loc 1 1904 0 discriminator 3
	testb	%al, %al	# iftmp.418
	je	.L501	#,
	.loc 1 1905 0 is_stmt 1
	cmpl	$64, -20(%rbp)	#, mode
	jne	.L502	#,
	.loc 1 1906 0
	movl	24(%rbx), %eax	# statbufp_10(D)->st_mode, D.14171
	andl	$73, %eax	#, D.14171
	testl	%eax, %eax	# D.14171
	jne	.L503	#,
	.loc 1 1906 0 is_stmt 0 discriminator 1
	movl	24(%rbx), %eax	# statbufp_10(D)->st_mode, D.14171
	andl	$61440, %eax	#, D.14171
	cmpl	$16384, %eax	#, D.14171
	jne	.L504	#,
.L503:
	.loc 1 1907 0 is_stmt 1
	movl	$1, %eax	#, D.14170
	jmp	.L505	#
.L502:
	.loc 1 1910 0
	movl	$1, %eax	#, D.14170
	jmp	.L505	#
.L504:
	.loc 1 1911 0
	movl	$0, %eax	#, D.14170
	jmp	.L505	#
.L501:
	.loc 1 1913 0
	movl	28(%rbx), %edx	# statbufp_10(D)->st_uid, D.14171
	cmpl	$0, -24(%rbp)	#, effective
	je	.L506	#,
	.loc 1 1913 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %eax	# PL_euid, iftmp.421
	jmp	.L507	#
.L506:
	.loc 1 1913 0 discriminator 2
	movl	PL_uid(%rip), %eax	# PL_uid, iftmp.421
.L507:
	.loc 1 1913 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.421, D.14171
	jne	.L508	#,
	.loc 1 1914 0 is_stmt 1
	movl	24(%rbx), %eax	# statbufp_10(D)->st_mode, D.14171
	andl	-20(%rbp), %eax	# mode, D.14171
	testl	%eax, %eax	# D.14171
	je	.L509	#,
	.loc 1 1915 0
	movl	$1, %eax	#, D.14170
	jmp	.L505	#
.L508:
	.loc 1 1917 0
	movl	32(%rbx), %eax	# statbufp_10(D)->st_gid, D.14171
	movl	-24(%rbp), %edx	# effective, tmp81
	movl	%edx, %esi	# tmp81,
	movl	%eax, %edi	# D.14171,
	call	Perl_ingroup	#
	testb	%al, %al	# D.14170
	je	.L510	#,
	.loc 1 1918 0
	movl	24(%rbx), %eax	# statbufp_10(D)->st_mode, D.14171
	movl	-20(%rbp), %edx	# mode, tmp82
	shrl	$3, %edx	#, D.14171
	andl	%edx, %eax	# D.14171, D.14171
	testl	%eax, %eax	# D.14171
	je	.L509	#,
	.loc 1 1919 0
	movl	$1, %eax	#, D.14170
	jmp	.L505	#
.L510:
	.loc 1 1921 0
	movl	24(%rbx), %eax	# statbufp_10(D)->st_mode, D.14171
	movl	-20(%rbp), %edx	# mode, tmp83
	shrl	$6, %edx	#, D.14171
	andl	%edx, %eax	# D.14171, D.14171
	testl	%eax, %eax	# D.14171
	je	.L509	#,
	.loc 1 1922 0
	movl	$1, %eax	#, D.14170
	jmp	.L505	#
.L509:
	.loc 1 1923 0
	movl	$0, %eax	#, D.14170
.L505:
	.loc 1 1925 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_cando, .-Perl_cando
	.globl	Perl_ingroup
	.type	Perl_ingroup, @function
Perl_ingroup:
.LFB24:
	.loc 1 1930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# testgid, testgid
	movl	%esi, -8(%rbp)	# effective, effective
	.loc 1 1935 0
	cmpl	$0, -8(%rbp)	#, effective
	je	.L512	#,
	.loc 1 1935 0 is_stmt 0 discriminator 1
	movl	PL_egid(%rip), %eax	# PL_egid, iftmp.422
	jmp	.L513	#
.L512:
	.loc 1 1935 0 discriminator 2
	movl	PL_gid(%rip), %eax	# PL_gid, iftmp.422
.L513:
	.loc 1 1935 0 discriminator 3
	cmpl	-4(%rbp), %eax	# testgid, iftmp.422
	jne	.L514	#,
	.loc 1 1936 0 is_stmt 1
	movl	$1, %eax	#, D.14172
	jmp	.L515	#
.L514:
	.loc 1 1951 0
	movl	$0, %eax	#, D.14172
.L515:
	.loc 1 1953 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_ingroup, .-Perl_ingroup
	.section	.rodata
.LC43:
	.string	" -cf 'set nonomatch; glob "
.LC44:
	.string	"' 2>/dev/null |"
	.text
	.globl	Perl_start_glob
	.type	Perl_start_glob, @function
Perl_start_glob:
.LFB25:
	.loc 1 2297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# tmpglob, tmpglob
	movq	%rsi, -32(%rbp)	# io, io
	.loc 1 2298 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -16(%rbp)	# tmp71, tmpcmd
	.loc 1 2300 0
	call	Perl_push_scope	#
	.loc 1 2301 0
	movq	-16(%rbp), %rax	# tmpcmd, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_save_freesv	#
	.loc 1 2409 0
	movl	PL_cshlen(%rip), %eax	# PL_cshlen, PL_cshlen.423
	movslq	%eax, %rdx	# PL_cshlen.423, D.14173
	movq	PL_cshname(%rip), %rcx	# PL_cshname, PL_cshname.424
	movq	-16(%rbp), %rax	# tmpcmd, tmp73
	movq	%rcx, %rsi	# PL_cshname.424,
	movq	%rax, %rdi	# tmp73,
	call	Perl_sv_setpvn	#
	.loc 1 2410 0
	movq	-16(%rbp), %rax	# tmpcmd, tmp74
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	Perl_sv_catpv	#
	.loc 1 2411 0
	movq	-24(%rbp), %rcx	# tmpglob, tmp75
	movq	-16(%rbp), %rax	# tmpcmd, tmp76
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_catsv_flags	#
	.loc 1 2412 0
	movq	-16(%rbp), %rax	# tmpcmd, tmp77
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	Perl_sv_catpv	#
	.loc 1 2424 0
	movq	-16(%rbp), %rax	# tmpcmd, tmp78
	movq	(%rax), %rax	# tmpcmd_1->sv_any, D.14174
	movq	8(%rax), %rax	# MEM[(struct XPV *)_6].xpv_cur, D.14173
	movl	%eax, %edx	# D.14173, D.14175
	movq	-16(%rbp), %rax	# tmpcmd, tmp79
	movq	(%rax), %rax	# tmpcmd_1->sv_any, D.14174
	movq	(%rax), %rsi	# MEM[(struct XPV *)_9].xpv_pv, D.14176
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.425
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# PL_last_in_gv.425,
	call	Perl_do_open	#
	.loc 1 2426 0
	movq	-32(%rbp), %rax	# io, tmp80
	movq	(%rax), %rax	# io_12(D)->sv_any, D.14177
	movq	56(%rax), %rax	# _13->xio_ifp, tmp81
	movq	%rax, -8(%rbp)	# tmp81, fp
	.loc 1 2428 0
	call	Perl_pop_scope	#
	.loc 1 2429 0
	movq	-8(%rbp), %rax	# fp, D.14178
	.loc 1 2430 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_start_glob, .-Perl_start_glob
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 7 "/usr/include/dirent.h"
	.file 8 "perl.h"
	.file 9 "op.h"
	.file 10 "cop.h"
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
	.file 23 "perlvars.h"
	.file 24 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d32
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF742
	.byte	0x1
	.long	.LASF743
	.long	.LASF744
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
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x85
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x86
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x87
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x88
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x8a
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x8b
	.long	0x42
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x8e
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF20
	.byte	0x2
	.byte	0xb8
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x103
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x41
	.long	0x7b
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x46
	.long	0x91
	.uleb128 0x4
	.long	.LASF24
	.byte	0x3
	.byte	0x50
	.long	0x70
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3
	.byte	0x56
	.long	0xa7
	.uleb128 0x4
	.long	.LASF26
	.byte	0x3
	.byte	0x62
	.long	0xb2
	.uleb128 0x4
	.long	.LASF27
	.byte	0x3
	.byte	0x6d
	.long	0xe7
	.uleb128 0x4
	.long	.LASF28
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.long	.LASF33
	.byte	0x10
	.byte	0x5
	.byte	0x78
	.long	0x17c
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x7a
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.byte	0x7b
	.long	0xf2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF31
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF32
	.uleb128 0x9
	.long	0x103
	.long	0x19a
	.uleb128 0xa
	.long	0xbd
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1a0
	.uleb128 0xb
	.long	0x103
	.uleb128 0x7
	.long	.LASF34
	.byte	0x90
	.byte	0x6
	.byte	0x2e
	.long	0x266
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x4e
	.long	0xd1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x50
	.long	0xdc
	.byte	0x40
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0x5b
	.long	0x157
	.byte	0x48
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0x5c
	.long	0x157
	.byte	0x58
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0x5d
	.long	0x157
	.byte	0x68
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0x6a
	.long	0x266
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x276
	.uleb128 0xa
	.long	0xbd
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"DIR"
	.byte	0x7
	.byte	0x80
	.long	0x281
	.uleb128 0xd
	.long	.LASF226
	.uleb128 0xe
	.string	"IV"
	.byte	0x8
	.value	0x52b
	.long	0x5e
	.uleb128 0xe
	.string	"UV"
	.byte	0x8
	.value	0x52c
	.long	0x42
	.uleb128 0xe
	.string	"NV"
	.byte	0x8
	.value	0x5f3
	.long	0x2a7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.value	0x7d3
	.long	0x14c
	.uleb128 0xe
	.string	"OP"
	.byte	0x8
	.value	0x7d5
	.long	0x2c5
	.uleb128 0x10
	.string	"op"
	.byte	0x28
	.byte	0x9
	.byte	0xe2
	.long	0x331
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xe3
	.long	0x1153
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xe3
	.long	0x1153
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xe3
	.long	0x1b4b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xe3
	.long	0x11c1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0xe3
	.long	0xfc5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0xe3
	.long	0xfc5
	.byte	0x22
	.uleb128 0x8
	.long	.LASF58
	.byte	0x9
	.byte	0xe3
	.long	0xfbb
	.byte	0x24
	.uleb128 0x8
	.long	.LASF59
	.byte	0x9
	.byte	0xe3
	.long	0xfbb
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"COP"
	.byte	0x8
	.value	0x7d6
	.long	0x33d
	.uleb128 0x10
	.string	"cop"
	.byte	0x60
	.byte	0xa
	.byte	0x10
	.long	0x40a
	.uleb128 0x8
	.long	.LASF52
	.byte	0xa
	.byte	0x11
	.long	0x1153
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0xa
	.byte	0x11
	.long	0x1153
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0xa
	.byte	0x11
	.long	0x1b4b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF55
	.byte	0xa
	.byte	0x11
	.long	0x11c1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF56
	.byte	0xa
	.byte	0x11
	.long	0xfc5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF57
	.byte	0xa
	.byte	0x11
	.long	0xfc5
	.byte	0x22
	.uleb128 0x8
	.long	.LASF58
	.byte	0xa
	.byte	0x11
	.long	0xfbb
	.byte	0x24
	.uleb128 0x8
	.long	.LASF59
	.byte	0xa
	.byte	0x11
	.long	0xfbb
	.byte	0x25
	.uleb128 0x8
	.long	.LASF60
	.byte	0xa
	.byte	0x12
	.long	0xfd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x17
	.long	0x113b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0xa
	.byte	0x18
	.long	0x1170
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0xa
	.byte	0x1a
	.long	0xfdb
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0xa
	.byte	0x1b
	.long	0xfd0
	.byte	0x44
	.uleb128 0x8
	.long	.LASF65
	.byte	0xa
	.byte	0x1c
	.long	0xfe6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF66
	.byte	0xa
	.byte	0x1d
	.long	0x1003
	.byte	0x50
	.uleb128 0x8
	.long	.LASF67
	.byte	0xa
	.byte	0x1e
	.long	0x1003
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0x8
	.value	0x7db
	.long	0x416
	.uleb128 0x7
	.long	.LASF69
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x504
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xfe
	.long	0x1153
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xfe
	.long	0x1153
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xfe
	.long	0x1b4b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xfe
	.long	0x11c1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0xfe
	.long	0xfc5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0xfe
	.long	0xfc5
	.byte	0x22
	.uleb128 0x8
	.long	.LASF58
	.byte	0x9
	.byte	0xfe
	.long	0xfbb
	.byte	0x24
	.uleb128 0x8
	.long	.LASF59
	.byte	0x9
	.byte	0xfe
	.long	0xfbb
	.byte	0x25
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0xff
	.long	0x1153
	.byte	0x28
	.uleb128 0x11
	.long	.LASF71
	.byte	0x9
	.value	0x100
	.long	0x1153
	.byte	0x30
	.uleb128 0x11
	.long	.LASF72
	.byte	0x9
	.value	0x101
	.long	0x1153
	.byte	0x38
	.uleb128 0x11
	.long	.LASF73
	.byte	0x9
	.value	0x102
	.long	0x1153
	.byte	0x40
	.uleb128 0x11
	.long	.LASF74
	.byte	0x9
	.value	0x103
	.long	0x1b51
	.byte	0x48
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.value	0x107
	.long	0x1b57
	.byte	0x50
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.value	0x109
	.long	0xfdb
	.byte	0x58
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.value	0x10a
	.long	0xfdb
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.value	0x10b
	.long	0xfbb
	.byte	0x60
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.value	0x10f
	.long	0x113b
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x7dc
	.long	0x510
	.uleb128 0x12
	.long	.LASF81
	.byte	0x30
	.byte	0x9
	.value	0x14c
	.long	0x593
	.uleb128 0x11
	.long	.LASF52
	.byte	0x9
	.value	0x14d
	.long	0x1153
	.byte	0
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x14d
	.long	0x1153
	.byte	0x8
	.uleb128 0x11
	.long	.LASF54
	.byte	0x9
	.value	0x14d
	.long	0x1b4b
	.byte	0x10
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x14d
	.long	0x11c1
	.byte	0x18
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.value	0x14d
	.long	0xfc5
	.byte	0x20
	.uleb128 0x11
	.long	.LASF57
	.byte	0x9
	.value	0x14d
	.long	0xfc5
	.byte	0x22
	.uleb128 0x11
	.long	.LASF58
	.byte	0x9
	.value	0x14d
	.long	0xfbb
	.byte	0x24
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.value	0x14d
	.long	0xfbb
	.byte	0x25
	.uleb128 0x11
	.long	.LASF82
	.byte	0x9
	.value	0x14e
	.long	0x1003
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x7e1
	.long	0x59f
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x5ba
	.uleb128 0x11
	.long	.LASF85
	.byte	0x8
	.value	0xea8
	.long	0x103
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x5c5
	.uleb128 0x10
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x5f5
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x44
	.long	0xcf
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x45
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x46
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x600
	.uleb128 0x10
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x630
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x56
	.long	0x1123
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x57
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x58
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x63b
	.uleb128 0x10
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x66b
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x5c
	.long	0x1129
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x5d
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x5e
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x676
	.uleb128 0x10
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x6a6
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x50
	.long	0x111d
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x51
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x52
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x7ee
	.long	0x6b2
	.uleb128 0x7
	.long	.LASF90
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x78b
	.uleb128 0x8
	.long	.LASF91
	.byte	0xc
	.byte	0x20
	.long	0x1076
	.byte	0
	.uleb128 0x8
	.long	.LASF92
	.byte	0xc
	.byte	0x21
	.long	0x1076
	.byte	0x8
	.uleb128 0x8
	.long	.LASF93
	.byte	0xc
	.byte	0x22
	.long	0x107c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x23
	.long	0x1087
	.byte	0x18
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x24
	.long	0xfd
	.byte	0x20
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x25
	.long	0x1092
	.byte	0x28
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x26
	.long	0xfd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x28
	.long	0x1098
	.byte	0x38
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x29
	.long	0xfd0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x2a
	.long	0xfd0
	.byte	0x44
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x2b
	.long	0xfd0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF102
	.byte	0xc
	.byte	0x2c
	.long	0xfd0
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF103
	.byte	0xc
	.byte	0x2d
	.long	0xfdb
	.byte	0x50
	.uleb128 0x8
	.long	.LASF104
	.byte	0xc
	.byte	0x2e
	.long	0xfdb
	.byte	0x54
	.uleb128 0x8
	.long	.LASF105
	.byte	0xc
	.byte	0x2f
	.long	0xfdb
	.byte	0x58
	.uleb128 0x8
	.long	.LASF106
	.byte	0xc
	.byte	0x30
	.long	0xfdb
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF107
	.byte	0xc
	.byte	0x32
	.long	0x109e
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x796
	.uleb128 0x10
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x832
	.uleb128 0x8
	.long	.LASF108
	.byte	0xd
	.byte	0xc
	.long	0x1003
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0xd
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF110
	.byte	0xd
	.byte	0xe
	.long	0x11b0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0xf
	.long	0x1164
	.byte	0x18
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0x10
	.long	0x1176
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x11
	.long	0x113b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF114
	.byte	0xd
	.byte	0x12
	.long	0x1170
	.byte	0x30
	.uleb128 0x8
	.long	.LASF115
	.byte	0xd
	.byte	0x13
	.long	0x1164
	.byte	0x38
	.uleb128 0x8
	.long	.LASF116
	.byte	0xd
	.byte	0x14
	.long	0xfdb
	.byte	0x40
	.uleb128 0x8
	.long	.LASF117
	.byte	0xd
	.byte	0x15
	.long	0xfdb
	.byte	0x44
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x16
	.long	0xfe6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF119
	.byte	0xd
	.byte	0x17
	.long	0xfd
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x83d
	.uleb128 0x10
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x86d
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x4a
	.long	0x1117
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x4b
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x4c
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"IO"
	.byte	0x8
	.value	0x7f1
	.long	0x878
	.uleb128 0x10
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x8a8
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x62
	.long	0x112f
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x63
	.long	0xfdb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x64
	.long	0xfdb
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF120
	.byte	0x8
	.value	0x7f5
	.long	0x8b4
	.uleb128 0x7
	.long	.LASF121
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x921
	.uleb128 0x8
	.long	.LASF122
	.byte	0xe
	.byte	0x1b
	.long	0x1135
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0xe
	.byte	0x1c
	.long	0x1c68
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0xe
	.byte	0x1d
	.long	0xfc5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0xe
	.byte	0x1e
	.long	0x103
	.byte	0x12
	.uleb128 0x8
	.long	.LASF126
	.byte	0xe
	.byte	0x1f
	.long	0xfbb
	.byte	0x13
	.uleb128 0x8
	.long	.LASF127
	.byte	0xe
	.byte	0x20
	.long	0x1003
	.byte	0x18
	.uleb128 0x8
	.long	.LASF128
	.byte	0xe
	.byte	0x21
	.long	0xfd
	.byte	0x20
	.uleb128 0x8
	.long	.LASF129
	.byte	0xe
	.byte	0x22
	.long	0xfd0
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0x92d
	.uleb128 0x10
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0x946
	.uleb128 0x8
	.long	.LASF130
	.byte	0xb
	.byte	0xf6
	.long	0x1003
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0x952
	.uleb128 0x10
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x983
	.uleb128 0x8
	.long	.LASF131
	.byte	0xb
	.byte	0xfa
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF132
	.byte	0xb
	.byte	0xfb
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0xb
	.byte	0xfc
	.long	0x2ae
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.value	0x7f8
	.long	0x98f
	.uleb128 0x7
	.long	.LASF135
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0x9d0
	.uleb128 0x11
	.long	.LASF131
	.byte	0xb
	.value	0x100
	.long	0xfd
	.byte	0
	.uleb128 0x11
	.long	.LASF132
	.byte	0xb
	.value	0x101
	.long	0x2ae
	.byte	0x8
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x102
	.long	0x2ae
	.byte	0x10
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x103
	.long	0x286
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x7f9
	.long	0x9dc
	.uleb128 0x12
	.long	.LASF138
	.byte	0x20
	.byte	0xb
	.value	0x106
	.long	0xa1e
	.uleb128 0x11
	.long	.LASF131
	.byte	0xb
	.value	0x107
	.long	0xfd
	.byte	0
	.uleb128 0x11
	.long	.LASF132
	.byte	0xb
	.value	0x108
	.long	0x2ae
	.byte	0x8
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x109
	.long	0x2ae
	.byte	0x10
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x10a
	.long	0x291
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x7fa
	.long	0xa2a
	.uleb128 0x12
	.long	.LASF141
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0xa79
	.uleb128 0x11
	.long	.LASF131
	.byte	0xb
	.value	0x10e
	.long	0xfd
	.byte	0
	.uleb128 0x11
	.long	.LASF132
	.byte	0xb
	.value	0x10f
	.long	0x2ae
	.byte	0x8
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x110
	.long	0x2ae
	.byte	0x10
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x111
	.long	0x286
	.byte	0x18
	.uleb128 0x11
	.long	.LASF142
	.byte	0xb
	.value	0x112
	.long	0x29c
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x7fd
	.long	0xa85
	.uleb128 0x7
	.long	.LASF144
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0xb0a
	.uleb128 0x8
	.long	.LASF145
	.byte	0xf
	.byte	0xc
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF146
	.byte	0xf
	.byte	0xd
	.long	0x141
	.byte	0x8
	.uleb128 0x8
	.long	.LASF147
	.byte	0xf
	.byte	0xe
	.long	0x141
	.byte	0x10
	.uleb128 0x8
	.long	.LASF148
	.byte	0xf
	.byte	0xf
	.long	0x286
	.byte	0x18
	.uleb128 0x8
	.long	.LASF142
	.byte	0xf
	.byte	0x10
	.long	0x29c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0xf
	.byte	0x11
	.long	0x1135
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0xf
	.byte	0x12
	.long	0x113b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF151
	.byte	0xf
	.byte	0x14
	.long	0x1b5d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x15
	.long	0x1003
	.byte	0x40
	.uleb128 0x8
	.long	.LASF153
	.byte	0xf
	.byte	0x16
	.long	0xfbb
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF154
	.byte	0x8
	.value	0x7fe
	.long	0xb16
	.uleb128 0x7
	.long	.LASF155
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0xba7
	.uleb128 0x8
	.long	.LASF156
	.byte	0x10
	.byte	0x23
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF157
	.byte	0x10
	.byte	0x24
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF158
	.byte	0x10
	.byte	0x25
	.long	0x2ae
	.byte	0x10
	.uleb128 0x8
	.long	.LASF159
	.byte	0x10
	.byte	0x26
	.long	0x286
	.byte	0x18
	.uleb128 0x8
	.long	.LASF142
	.byte	0x10
	.byte	0x27
	.long	0x29c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x10
	.byte	0x29
	.long	0x1135
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0x10
	.byte	0x2a
	.long	0x113b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF160
	.byte	0x10
	.byte	0x2c
	.long	0xfd0
	.byte	0x38
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x2d
	.long	0x1bdf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x2e
	.long	0x1b51
	.byte	0x48
	.uleb128 0x8
	.long	.LASF163
	.byte	0x10
	.byte	0x2f
	.long	0xfd
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF164
	.byte	0x8
	.value	0x7ff
	.long	0xbb3
	.uleb128 0x12
	.long	.LASF165
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xc5d
	.uleb128 0x11
	.long	.LASF131
	.byte	0xb
	.value	0x131
	.long	0xfd
	.byte	0
	.uleb128 0x11
	.long	.LASF132
	.byte	0xb
	.value	0x132
	.long	0x2ae
	.byte	0x8
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x133
	.long	0x2ae
	.byte	0x10
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x134
	.long	0x286
	.byte	0x18
	.uleb128 0x11
	.long	.LASF142
	.byte	0xb
	.value	0x135
	.long	0x29c
	.byte	0x20
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x136
	.long	0x1135
	.byte	0x28
	.uleb128 0x11
	.long	.LASF150
	.byte	0xb
	.value	0x137
	.long	0x113b
	.byte	0x30
	.uleb128 0x11
	.long	.LASF166
	.byte	0xb
	.value	0x139
	.long	0x1141
	.byte	0x38
	.uleb128 0x11
	.long	.LASF167
	.byte	0xb
	.value	0x13a
	.long	0xfd
	.byte	0x40
	.uleb128 0x11
	.long	.LASF168
	.byte	0xb
	.value	0x13b
	.long	0x2ae
	.byte	0x48
	.uleb128 0x11
	.long	.LASF169
	.byte	0xb
	.value	0x13c
	.long	0x113b
	.byte	0x50
	.uleb128 0x11
	.long	.LASF170
	.byte	0xb
	.value	0x13d
	.long	0xfbb
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF171
	.byte	0x8
	.value	0x800
	.long	0xc69
	.uleb128 0x7
	.long	.LASF172
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0xd5a
	.uleb128 0x8
	.long	.LASF131
	.byte	0x11
	.byte	0xf
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x11
	.byte	0x10
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0x11
	.byte	0x11
	.long	0x2ae
	.byte	0x10
	.uleb128 0x8
	.long	.LASF148
	.byte	0x11
	.byte	0x12
	.long	0x286
	.byte	0x18
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x13
	.long	0x29c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x11
	.byte	0x14
	.long	0x1135
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0x11
	.byte	0x15
	.long	0x113b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF173
	.byte	0x11
	.byte	0x17
	.long	0x113b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF174
	.byte	0x11
	.byte	0x18
	.long	0x1153
	.byte	0x40
	.uleb128 0x8
	.long	.LASF175
	.byte	0x11
	.byte	0x19
	.long	0x1153
	.byte	0x48
	.uleb128 0x8
	.long	.LASF176
	.byte	0x11
	.byte	0x1a
	.long	0x116a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF177
	.byte	0x11
	.byte	0x1b
	.long	0xf0c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF178
	.byte	0x11
	.byte	0x1c
	.long	0x1170
	.byte	0x60
	.uleb128 0x8
	.long	.LASF179
	.byte	0x11
	.byte	0x1d
	.long	0xfd
	.byte	0x68
	.uleb128 0x8
	.long	.LASF180
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF181
	.byte	0x11
	.byte	0x1f
	.long	0x11cc
	.byte	0x78
	.uleb128 0x8
	.long	.LASF182
	.byte	0x11
	.byte	0x20
	.long	0x1164
	.byte	0x80
	.uleb128 0x8
	.long	.LASF183
	.byte	0x11
	.byte	0x25
	.long	0x1147
	.byte	0x88
	.uleb128 0x8
	.long	.LASF184
	.byte	0x11
	.byte	0x26
	.long	0xfdb
	.byte	0x8c
	.byte	0
	.uleb128 0xf
	.long	.LASF185
	.byte	0x8
	.value	0x803
	.long	0xd66
	.uleb128 0x12
	.long	.LASF186
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xe9f
	.uleb128 0x11
	.long	.LASF131
	.byte	0xb
	.value	0x171
	.long	0xfd
	.byte	0
	.uleb128 0x11
	.long	.LASF132
	.byte	0xb
	.value	0x172
	.long	0x2ae
	.byte	0x8
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x173
	.long	0x2ae
	.byte	0x10
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x174
	.long	0x286
	.byte	0x18
	.uleb128 0x11
	.long	.LASF142
	.byte	0xb
	.value	0x175
	.long	0x29c
	.byte	0x20
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x176
	.long	0x1135
	.byte	0x28
	.uleb128 0x11
	.long	.LASF150
	.byte	0xb
	.value	0x177
	.long	0x113b
	.byte	0x30
	.uleb128 0x11
	.long	.LASF187
	.byte	0xb
	.value	0x179
	.long	0x11a4
	.byte	0x38
	.uleb128 0x11
	.long	.LASF188
	.byte	0xb
	.value	0x17a
	.long	0x11a4
	.byte	0x40
	.uleb128 0x11
	.long	.LASF189
	.byte	0xb
	.value	0x187
	.long	0x117c
	.byte	0x48
	.uleb128 0x11
	.long	.LASF190
	.byte	0xb
	.value	0x188
	.long	0x286
	.byte	0x50
	.uleb128 0x11
	.long	.LASF191
	.byte	0xb
	.value	0x189
	.long	0x286
	.byte	0x58
	.uleb128 0x11
	.long	.LASF192
	.byte	0xb
	.value	0x18a
	.long	0x286
	.byte	0x60
	.uleb128 0x11
	.long	.LASF193
	.byte	0xb
	.value	0x18b
	.long	0x286
	.byte	0x68
	.uleb128 0x11
	.long	.LASF194
	.byte	0xb
	.value	0x18c
	.long	0xfd
	.byte	0x70
	.uleb128 0x11
	.long	.LASF195
	.byte	0xb
	.value	0x18d
	.long	0x1170
	.byte	0x78
	.uleb128 0x11
	.long	.LASF196
	.byte	0xb
	.value	0x18e
	.long	0xfd
	.byte	0x80
	.uleb128 0x11
	.long	.LASF197
	.byte	0xb
	.value	0x18f
	.long	0x1170
	.byte	0x88
	.uleb128 0x11
	.long	.LASF198
	.byte	0xb
	.value	0x190
	.long	0xfd
	.byte	0x90
	.uleb128 0x11
	.long	.LASF199
	.byte	0xb
	.value	0x191
	.long	0x1170
	.byte	0x98
	.uleb128 0x11
	.long	.LASF200
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF201
	.byte	0xb
	.value	0x193
	.long	0x103
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF202
	.byte	0xb
	.value	0x194
	.long	0x103
	.byte	0xa3
	.byte	0
	.uleb128 0xf
	.long	.LASF203
	.byte	0x8
	.value	0x804
	.long	0xeab
	.uleb128 0x7
	.long	.LASF204
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xf0c
	.uleb128 0x8
	.long	.LASF205
	.byte	0xe
	.byte	0xf
	.long	0x1bff
	.byte	0
	.uleb128 0x8
	.long	.LASF206
	.byte	0xe
	.byte	0x10
	.long	0x1bff
	.byte	0x8
	.uleb128 0x8
	.long	.LASF207
	.byte	0xe
	.byte	0x11
	.long	0x1c19
	.byte	0x10
	.uleb128 0x8
	.long	.LASF208
	.byte	0xe
	.byte	0x12
	.long	0x1bff
	.byte	0x18
	.uleb128 0x8
	.long	.LASF209
	.byte	0xe
	.byte	0x13
	.long	0x1bff
	.byte	0x20
	.uleb128 0x8
	.long	.LASF210
	.byte	0xe
	.byte	0x14
	.long	0x1c42
	.byte	0x28
	.uleb128 0x8
	.long	.LASF211
	.byte	0xe
	.byte	0x16
	.long	0x1c62
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0xf18
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0xf7a
	.uleb128 0x14
	.long	.LASF212
	.byte	0x8
	.value	0x9f2
	.long	0xcf
	.uleb128 0x14
	.long	.LASF213
	.byte	0x8
	.value	0x9f3
	.long	0xfd0
	.uleb128 0x14
	.long	.LASF214
	.byte	0x8
	.value	0x9f4
	.long	0x286
	.uleb128 0x14
	.long	.LASF215
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF216
	.byte	0x8
	.value	0x9f6
	.long	0x103
	.uleb128 0x14
	.long	.LASF217
	.byte	0x8
	.value	0x9f7
	.long	0xffd
	.uleb128 0x14
	.long	.LASF218
	.byte	0x8
	.value	0x9f8
	.long	0xffd
	.byte	0
	.uleb128 0xf
	.long	.LASF219
	.byte	0x8
	.value	0x808
	.long	0xf86
	.uleb128 0x12
	.long	.LASF220
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0xfbb
	.uleb128 0x11
	.long	.LASF221
	.byte	0xb
	.value	0x4ee
	.long	0x1176
	.byte	0
	.uleb128 0x11
	.long	.LASF222
	.byte	0xb
	.value	0x4ef
	.long	0x291
	.byte	0x8
	.uleb128 0x11
	.long	.LASF223
	.byte	0xb
	.value	0x4f0
	.long	0x11aa
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0xc
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0xc
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0xc
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0xf
	.long	.LASF224
	.byte	0x12
	.value	0x209
	.long	0xfdb
	.uleb128 0x15
	.long	0xffd
	.uleb128 0x16
	.long	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xff2
	.uleb128 0x6
	.byte	0x8
	.long	0x5ba
	.uleb128 0x9
	.long	0x103
	.long	0x1019
	.uleb128 0xa
	.long	0xbd
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF225
	.byte	0x13
	.byte	0x63
	.long	0x1024
	.uleb128 0xd
	.long	.LASF227
	.uleb128 0x4
	.long	.LASF228
	.byte	0x13
	.byte	0x65
	.long	0x1034
	.uleb128 0x6
	.byte	0x8
	.long	0x1019
	.uleb128 0x7
	.long	.LASF229
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0x106b
	.uleb128 0x8
	.long	.LASF222
	.byte	0xc
	.byte	0x14
	.long	0xfbb
	.byte	0
	.uleb128 0x8
	.long	.LASF230
	.byte	0xc
	.byte	0x15
	.long	0xfbb
	.byte	0x1
	.uleb128 0x8
	.long	.LASF231
	.byte	0xc
	.byte	0x16
	.long	0xfc5
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF229
	.byte	0xc
	.byte	0x19
	.long	0x103a
	.uleb128 0x6
	.byte	0x8
	.long	0xfd0
	.uleb128 0x6
	.byte	0x8
	.long	0x106b
	.uleb128 0xd
	.long	.LASF232
	.uleb128 0x6
	.byte	0x8
	.long	0x1082
	.uleb128 0xd
	.long	.LASF233
	.uleb128 0x6
	.byte	0x8
	.long	0x108d
	.uleb128 0x6
	.byte	0x8
	.long	0xfdb
	.uleb128 0x9
	.long	0x106b
	.long	0x10ae
	.uleb128 0xa
	.long	0xbd
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x1117
	.uleb128 0x18
	.long	.LASF234
	.sleb128 0
	.uleb128 0x18
	.long	.LASF235
	.sleb128 1
	.uleb128 0x18
	.long	.LASF236
	.sleb128 2
	.uleb128 0x18
	.long	.LASF237
	.sleb128 3
	.uleb128 0x18
	.long	.LASF238
	.sleb128 4
	.uleb128 0x18
	.long	.LASF239
	.sleb128 5
	.uleb128 0x18
	.long	.LASF240
	.sleb128 6
	.uleb128 0x18
	.long	.LASF241
	.sleb128 7
	.uleb128 0x18
	.long	.LASF242
	.sleb128 8
	.uleb128 0x18
	.long	.LASF243
	.sleb128 9
	.uleb128 0x18
	.long	.LASF244
	.sleb128 10
	.uleb128 0x18
	.long	.LASF245
	.sleb128 11
	.uleb128 0x18
	.long	.LASF246
	.sleb128 12
	.uleb128 0x18
	.long	.LASF247
	.sleb128 13
	.uleb128 0x18
	.long	.LASF248
	.sleb128 14
	.uleb128 0x18
	.long	.LASF249
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba7
	.uleb128 0x6
	.byte	0x8
	.long	0xc5d
	.uleb128 0x6
	.byte	0x8
	.long	0xa79
	.uleb128 0x6
	.byte	0x8
	.long	0xb0a
	.uleb128 0x6
	.byte	0x8
	.long	0xd5a
	.uleb128 0x6
	.byte	0x8
	.long	0x8a8
	.uleb128 0x6
	.byte	0x8
	.long	0x630
	.uleb128 0x6
	.byte	0x8
	.long	0x78b
	.uleb128 0xf
	.long	.LASF250
	.byte	0xb
	.value	0x150
	.long	0xfc5
	.uleb128 0x6
	.byte	0x8
	.long	0x2ba
	.uleb128 0x15
	.long	0x1164
	.uleb128 0x16
	.long	0x1164
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x66b
	.uleb128 0x6
	.byte	0x8
	.long	0x1159
	.uleb128 0x6
	.byte	0x8
	.long	0x832
	.uleb128 0x6
	.byte	0x8
	.long	0x5f5
	.uleb128 0x19
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x119e
	.uleb128 0x14
	.long	.LASF251
	.byte	0xb
	.value	0x185
	.long	0x119e
	.uleb128 0x14
	.long	.LASF252
	.byte	0xb
	.value	0x186
	.long	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0x6
	.byte	0x8
	.long	0x1029
	.uleb128 0x6
	.byte	0x8
	.long	0x593
	.uleb128 0x6
	.byte	0x8
	.long	0x878
	.uleb128 0x4
	.long	.LASF253
	.byte	0x14
	.byte	0x13
	.long	0x5f5
	.uleb128 0x4
	.long	.LASF254
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x11b6
	.uleb128 0x1a
	.long	.LASF745
	.byte	0x4
	.byte	0x18
	.byte	0xf
	.long	0x1b46
	.uleb128 0x18
	.long	.LASF255
	.sleb128 0
	.uleb128 0x18
	.long	.LASF256
	.sleb128 1
	.uleb128 0x18
	.long	.LASF257
	.sleb128 2
	.uleb128 0x18
	.long	.LASF258
	.sleb128 3
	.uleb128 0x18
	.long	.LASF259
	.sleb128 4
	.uleb128 0x18
	.long	.LASF260
	.sleb128 5
	.uleb128 0x18
	.long	.LASF261
	.sleb128 6
	.uleb128 0x18
	.long	.LASF262
	.sleb128 7
	.uleb128 0x18
	.long	.LASF263
	.sleb128 8
	.uleb128 0x18
	.long	.LASF264
	.sleb128 9
	.uleb128 0x18
	.long	.LASF265
	.sleb128 10
	.uleb128 0x18
	.long	.LASF266
	.sleb128 11
	.uleb128 0x18
	.long	.LASF267
	.sleb128 12
	.uleb128 0x18
	.long	.LASF268
	.sleb128 13
	.uleb128 0x18
	.long	.LASF269
	.sleb128 14
	.uleb128 0x18
	.long	.LASF270
	.sleb128 15
	.uleb128 0x18
	.long	.LASF271
	.sleb128 16
	.uleb128 0x18
	.long	.LASF272
	.sleb128 17
	.uleb128 0x18
	.long	.LASF273
	.sleb128 18
	.uleb128 0x18
	.long	.LASF274
	.sleb128 19
	.uleb128 0x18
	.long	.LASF275
	.sleb128 20
	.uleb128 0x18
	.long	.LASF276
	.sleb128 21
	.uleb128 0x18
	.long	.LASF277
	.sleb128 22
	.uleb128 0x18
	.long	.LASF278
	.sleb128 23
	.uleb128 0x18
	.long	.LASF279
	.sleb128 24
	.uleb128 0x18
	.long	.LASF280
	.sleb128 25
	.uleb128 0x18
	.long	.LASF281
	.sleb128 26
	.uleb128 0x18
	.long	.LASF282
	.sleb128 27
	.uleb128 0x18
	.long	.LASF283
	.sleb128 28
	.uleb128 0x18
	.long	.LASF284
	.sleb128 29
	.uleb128 0x18
	.long	.LASF285
	.sleb128 30
	.uleb128 0x18
	.long	.LASF286
	.sleb128 31
	.uleb128 0x18
	.long	.LASF287
	.sleb128 32
	.uleb128 0x18
	.long	.LASF288
	.sleb128 33
	.uleb128 0x18
	.long	.LASF289
	.sleb128 34
	.uleb128 0x18
	.long	.LASF290
	.sleb128 35
	.uleb128 0x18
	.long	.LASF291
	.sleb128 36
	.uleb128 0x18
	.long	.LASF292
	.sleb128 37
	.uleb128 0x18
	.long	.LASF293
	.sleb128 38
	.uleb128 0x18
	.long	.LASF294
	.sleb128 39
	.uleb128 0x18
	.long	.LASF295
	.sleb128 40
	.uleb128 0x18
	.long	.LASF296
	.sleb128 41
	.uleb128 0x18
	.long	.LASF297
	.sleb128 42
	.uleb128 0x18
	.long	.LASF298
	.sleb128 43
	.uleb128 0x18
	.long	.LASF299
	.sleb128 44
	.uleb128 0x18
	.long	.LASF300
	.sleb128 45
	.uleb128 0x18
	.long	.LASF301
	.sleb128 46
	.uleb128 0x18
	.long	.LASF302
	.sleb128 47
	.uleb128 0x18
	.long	.LASF303
	.sleb128 48
	.uleb128 0x18
	.long	.LASF304
	.sleb128 49
	.uleb128 0x18
	.long	.LASF305
	.sleb128 50
	.uleb128 0x18
	.long	.LASF306
	.sleb128 51
	.uleb128 0x18
	.long	.LASF307
	.sleb128 52
	.uleb128 0x18
	.long	.LASF308
	.sleb128 53
	.uleb128 0x18
	.long	.LASF309
	.sleb128 54
	.uleb128 0x18
	.long	.LASF310
	.sleb128 55
	.uleb128 0x18
	.long	.LASF311
	.sleb128 56
	.uleb128 0x18
	.long	.LASF312
	.sleb128 57
	.uleb128 0x18
	.long	.LASF313
	.sleb128 58
	.uleb128 0x18
	.long	.LASF314
	.sleb128 59
	.uleb128 0x18
	.long	.LASF315
	.sleb128 60
	.uleb128 0x18
	.long	.LASF316
	.sleb128 61
	.uleb128 0x18
	.long	.LASF317
	.sleb128 62
	.uleb128 0x18
	.long	.LASF318
	.sleb128 63
	.uleb128 0x18
	.long	.LASF319
	.sleb128 64
	.uleb128 0x18
	.long	.LASF320
	.sleb128 65
	.uleb128 0x18
	.long	.LASF321
	.sleb128 66
	.uleb128 0x18
	.long	.LASF322
	.sleb128 67
	.uleb128 0x18
	.long	.LASF323
	.sleb128 68
	.uleb128 0x18
	.long	.LASF324
	.sleb128 69
	.uleb128 0x18
	.long	.LASF325
	.sleb128 70
	.uleb128 0x18
	.long	.LASF326
	.sleb128 71
	.uleb128 0x18
	.long	.LASF327
	.sleb128 72
	.uleb128 0x18
	.long	.LASF328
	.sleb128 73
	.uleb128 0x18
	.long	.LASF329
	.sleb128 74
	.uleb128 0x18
	.long	.LASF330
	.sleb128 75
	.uleb128 0x18
	.long	.LASF331
	.sleb128 76
	.uleb128 0x18
	.long	.LASF332
	.sleb128 77
	.uleb128 0x18
	.long	.LASF333
	.sleb128 78
	.uleb128 0x18
	.long	.LASF334
	.sleb128 79
	.uleb128 0x18
	.long	.LASF335
	.sleb128 80
	.uleb128 0x18
	.long	.LASF336
	.sleb128 81
	.uleb128 0x18
	.long	.LASF337
	.sleb128 82
	.uleb128 0x18
	.long	.LASF338
	.sleb128 83
	.uleb128 0x18
	.long	.LASF339
	.sleb128 84
	.uleb128 0x18
	.long	.LASF340
	.sleb128 85
	.uleb128 0x18
	.long	.LASF341
	.sleb128 86
	.uleb128 0x18
	.long	.LASF342
	.sleb128 87
	.uleb128 0x18
	.long	.LASF343
	.sleb128 88
	.uleb128 0x18
	.long	.LASF344
	.sleb128 89
	.uleb128 0x18
	.long	.LASF345
	.sleb128 90
	.uleb128 0x18
	.long	.LASF346
	.sleb128 91
	.uleb128 0x18
	.long	.LASF347
	.sleb128 92
	.uleb128 0x18
	.long	.LASF348
	.sleb128 93
	.uleb128 0x18
	.long	.LASF349
	.sleb128 94
	.uleb128 0x18
	.long	.LASF350
	.sleb128 95
	.uleb128 0x18
	.long	.LASF351
	.sleb128 96
	.uleb128 0x18
	.long	.LASF352
	.sleb128 97
	.uleb128 0x18
	.long	.LASF353
	.sleb128 98
	.uleb128 0x18
	.long	.LASF354
	.sleb128 99
	.uleb128 0x18
	.long	.LASF355
	.sleb128 100
	.uleb128 0x18
	.long	.LASF356
	.sleb128 101
	.uleb128 0x18
	.long	.LASF357
	.sleb128 102
	.uleb128 0x18
	.long	.LASF358
	.sleb128 103
	.uleb128 0x18
	.long	.LASF359
	.sleb128 104
	.uleb128 0x18
	.long	.LASF360
	.sleb128 105
	.uleb128 0x18
	.long	.LASF361
	.sleb128 106
	.uleb128 0x18
	.long	.LASF362
	.sleb128 107
	.uleb128 0x18
	.long	.LASF363
	.sleb128 108
	.uleb128 0x18
	.long	.LASF364
	.sleb128 109
	.uleb128 0x18
	.long	.LASF365
	.sleb128 110
	.uleb128 0x18
	.long	.LASF366
	.sleb128 111
	.uleb128 0x18
	.long	.LASF367
	.sleb128 112
	.uleb128 0x18
	.long	.LASF368
	.sleb128 113
	.uleb128 0x18
	.long	.LASF369
	.sleb128 114
	.uleb128 0x18
	.long	.LASF370
	.sleb128 115
	.uleb128 0x18
	.long	.LASF371
	.sleb128 116
	.uleb128 0x18
	.long	.LASF372
	.sleb128 117
	.uleb128 0x18
	.long	.LASF373
	.sleb128 118
	.uleb128 0x18
	.long	.LASF374
	.sleb128 119
	.uleb128 0x18
	.long	.LASF375
	.sleb128 120
	.uleb128 0x18
	.long	.LASF376
	.sleb128 121
	.uleb128 0x18
	.long	.LASF377
	.sleb128 122
	.uleb128 0x18
	.long	.LASF378
	.sleb128 123
	.uleb128 0x18
	.long	.LASF379
	.sleb128 124
	.uleb128 0x18
	.long	.LASF380
	.sleb128 125
	.uleb128 0x18
	.long	.LASF381
	.sleb128 126
	.uleb128 0x18
	.long	.LASF382
	.sleb128 127
	.uleb128 0x18
	.long	.LASF383
	.sleb128 128
	.uleb128 0x18
	.long	.LASF384
	.sleb128 129
	.uleb128 0x18
	.long	.LASF385
	.sleb128 130
	.uleb128 0x18
	.long	.LASF386
	.sleb128 131
	.uleb128 0x18
	.long	.LASF387
	.sleb128 132
	.uleb128 0x18
	.long	.LASF388
	.sleb128 133
	.uleb128 0x18
	.long	.LASF389
	.sleb128 134
	.uleb128 0x18
	.long	.LASF390
	.sleb128 135
	.uleb128 0x18
	.long	.LASF391
	.sleb128 136
	.uleb128 0x18
	.long	.LASF392
	.sleb128 137
	.uleb128 0x18
	.long	.LASF393
	.sleb128 138
	.uleb128 0x18
	.long	.LASF394
	.sleb128 139
	.uleb128 0x18
	.long	.LASF395
	.sleb128 140
	.uleb128 0x18
	.long	.LASF396
	.sleb128 141
	.uleb128 0x18
	.long	.LASF397
	.sleb128 142
	.uleb128 0x18
	.long	.LASF398
	.sleb128 143
	.uleb128 0x18
	.long	.LASF399
	.sleb128 144
	.uleb128 0x18
	.long	.LASF400
	.sleb128 145
	.uleb128 0x18
	.long	.LASF401
	.sleb128 146
	.uleb128 0x18
	.long	.LASF402
	.sleb128 147
	.uleb128 0x18
	.long	.LASF403
	.sleb128 148
	.uleb128 0x18
	.long	.LASF404
	.sleb128 149
	.uleb128 0x18
	.long	.LASF405
	.sleb128 150
	.uleb128 0x18
	.long	.LASF406
	.sleb128 151
	.uleb128 0x18
	.long	.LASF407
	.sleb128 152
	.uleb128 0x18
	.long	.LASF408
	.sleb128 153
	.uleb128 0x18
	.long	.LASF409
	.sleb128 154
	.uleb128 0x18
	.long	.LASF410
	.sleb128 155
	.uleb128 0x18
	.long	.LASF411
	.sleb128 156
	.uleb128 0x18
	.long	.LASF412
	.sleb128 157
	.uleb128 0x18
	.long	.LASF413
	.sleb128 158
	.uleb128 0x18
	.long	.LASF414
	.sleb128 159
	.uleb128 0x18
	.long	.LASF415
	.sleb128 160
	.uleb128 0x18
	.long	.LASF416
	.sleb128 161
	.uleb128 0x18
	.long	.LASF417
	.sleb128 162
	.uleb128 0x18
	.long	.LASF418
	.sleb128 163
	.uleb128 0x18
	.long	.LASF419
	.sleb128 164
	.uleb128 0x18
	.long	.LASF420
	.sleb128 165
	.uleb128 0x18
	.long	.LASF421
	.sleb128 166
	.uleb128 0x18
	.long	.LASF422
	.sleb128 167
	.uleb128 0x18
	.long	.LASF423
	.sleb128 168
	.uleb128 0x18
	.long	.LASF424
	.sleb128 169
	.uleb128 0x18
	.long	.LASF425
	.sleb128 170
	.uleb128 0x18
	.long	.LASF426
	.sleb128 171
	.uleb128 0x18
	.long	.LASF427
	.sleb128 172
	.uleb128 0x18
	.long	.LASF428
	.sleb128 173
	.uleb128 0x18
	.long	.LASF429
	.sleb128 174
	.uleb128 0x18
	.long	.LASF430
	.sleb128 175
	.uleb128 0x18
	.long	.LASF431
	.sleb128 176
	.uleb128 0x18
	.long	.LASF432
	.sleb128 177
	.uleb128 0x18
	.long	.LASF433
	.sleb128 178
	.uleb128 0x18
	.long	.LASF434
	.sleb128 179
	.uleb128 0x18
	.long	.LASF435
	.sleb128 180
	.uleb128 0x18
	.long	.LASF436
	.sleb128 181
	.uleb128 0x18
	.long	.LASF437
	.sleb128 182
	.uleb128 0x18
	.long	.LASF438
	.sleb128 183
	.uleb128 0x18
	.long	.LASF439
	.sleb128 184
	.uleb128 0x18
	.long	.LASF440
	.sleb128 185
	.uleb128 0x18
	.long	.LASF441
	.sleb128 186
	.uleb128 0x18
	.long	.LASF442
	.sleb128 187
	.uleb128 0x18
	.long	.LASF443
	.sleb128 188
	.uleb128 0x18
	.long	.LASF444
	.sleb128 189
	.uleb128 0x18
	.long	.LASF445
	.sleb128 190
	.uleb128 0x18
	.long	.LASF446
	.sleb128 191
	.uleb128 0x18
	.long	.LASF447
	.sleb128 192
	.uleb128 0x18
	.long	.LASF448
	.sleb128 193
	.uleb128 0x18
	.long	.LASF449
	.sleb128 194
	.uleb128 0x18
	.long	.LASF450
	.sleb128 195
	.uleb128 0x18
	.long	.LASF451
	.sleb128 196
	.uleb128 0x18
	.long	.LASF452
	.sleb128 197
	.uleb128 0x18
	.long	.LASF453
	.sleb128 198
	.uleb128 0x18
	.long	.LASF454
	.sleb128 199
	.uleb128 0x18
	.long	.LASF455
	.sleb128 200
	.uleb128 0x18
	.long	.LASF456
	.sleb128 201
	.uleb128 0x18
	.long	.LASF457
	.sleb128 202
	.uleb128 0x18
	.long	.LASF458
	.sleb128 203
	.uleb128 0x18
	.long	.LASF459
	.sleb128 204
	.uleb128 0x18
	.long	.LASF460
	.sleb128 205
	.uleb128 0x18
	.long	.LASF461
	.sleb128 206
	.uleb128 0x18
	.long	.LASF462
	.sleb128 207
	.uleb128 0x18
	.long	.LASF463
	.sleb128 208
	.uleb128 0x18
	.long	.LASF464
	.sleb128 209
	.uleb128 0x18
	.long	.LASF465
	.sleb128 210
	.uleb128 0x18
	.long	.LASF466
	.sleb128 211
	.uleb128 0x18
	.long	.LASF467
	.sleb128 212
	.uleb128 0x18
	.long	.LASF468
	.sleb128 213
	.uleb128 0x18
	.long	.LASF469
	.sleb128 214
	.uleb128 0x18
	.long	.LASF470
	.sleb128 215
	.uleb128 0x18
	.long	.LASF471
	.sleb128 216
	.uleb128 0x18
	.long	.LASF472
	.sleb128 217
	.uleb128 0x18
	.long	.LASF473
	.sleb128 218
	.uleb128 0x18
	.long	.LASF474
	.sleb128 219
	.uleb128 0x18
	.long	.LASF475
	.sleb128 220
	.uleb128 0x18
	.long	.LASF476
	.sleb128 221
	.uleb128 0x18
	.long	.LASF477
	.sleb128 222
	.uleb128 0x18
	.long	.LASF478
	.sleb128 223
	.uleb128 0x18
	.long	.LASF479
	.sleb128 224
	.uleb128 0x18
	.long	.LASF480
	.sleb128 225
	.uleb128 0x18
	.long	.LASF481
	.sleb128 226
	.uleb128 0x18
	.long	.LASF482
	.sleb128 227
	.uleb128 0x18
	.long	.LASF483
	.sleb128 228
	.uleb128 0x18
	.long	.LASF484
	.sleb128 229
	.uleb128 0x18
	.long	.LASF485
	.sleb128 230
	.uleb128 0x18
	.long	.LASF486
	.sleb128 231
	.uleb128 0x18
	.long	.LASF487
	.sleb128 232
	.uleb128 0x18
	.long	.LASF488
	.sleb128 233
	.uleb128 0x18
	.long	.LASF489
	.sleb128 234
	.uleb128 0x18
	.long	.LASF490
	.sleb128 235
	.uleb128 0x18
	.long	.LASF491
	.sleb128 236
	.uleb128 0x18
	.long	.LASF492
	.sleb128 237
	.uleb128 0x18
	.long	.LASF493
	.sleb128 238
	.uleb128 0x18
	.long	.LASF494
	.sleb128 239
	.uleb128 0x18
	.long	.LASF495
	.sleb128 240
	.uleb128 0x18
	.long	.LASF496
	.sleb128 241
	.uleb128 0x18
	.long	.LASF497
	.sleb128 242
	.uleb128 0x18
	.long	.LASF498
	.sleb128 243
	.uleb128 0x18
	.long	.LASF499
	.sleb128 244
	.uleb128 0x18
	.long	.LASF500
	.sleb128 245
	.uleb128 0x18
	.long	.LASF501
	.sleb128 246
	.uleb128 0x18
	.long	.LASF502
	.sleb128 247
	.uleb128 0x18
	.long	.LASF503
	.sleb128 248
	.uleb128 0x18
	.long	.LASF504
	.sleb128 249
	.uleb128 0x18
	.long	.LASF505
	.sleb128 250
	.uleb128 0x18
	.long	.LASF506
	.sleb128 251
	.uleb128 0x18
	.long	.LASF507
	.sleb128 252
	.uleb128 0x18
	.long	.LASF508
	.sleb128 253
	.uleb128 0x18
	.long	.LASF509
	.sleb128 254
	.uleb128 0x18
	.long	.LASF510
	.sleb128 255
	.uleb128 0x18
	.long	.LASF511
	.sleb128 256
	.uleb128 0x18
	.long	.LASF512
	.sleb128 257
	.uleb128 0x18
	.long	.LASF513
	.sleb128 258
	.uleb128 0x18
	.long	.LASF514
	.sleb128 259
	.uleb128 0x18
	.long	.LASF515
	.sleb128 260
	.uleb128 0x18
	.long	.LASF516
	.sleb128 261
	.uleb128 0x18
	.long	.LASF517
	.sleb128 262
	.uleb128 0x18
	.long	.LASF518
	.sleb128 263
	.uleb128 0x18
	.long	.LASF519
	.sleb128 264
	.uleb128 0x18
	.long	.LASF520
	.sleb128 265
	.uleb128 0x18
	.long	.LASF521
	.sleb128 266
	.uleb128 0x18
	.long	.LASF522
	.sleb128 267
	.uleb128 0x18
	.long	.LASF523
	.sleb128 268
	.uleb128 0x18
	.long	.LASF524
	.sleb128 269
	.uleb128 0x18
	.long	.LASF525
	.sleb128 270
	.uleb128 0x18
	.long	.LASF526
	.sleb128 271
	.uleb128 0x18
	.long	.LASF527
	.sleb128 272
	.uleb128 0x18
	.long	.LASF528
	.sleb128 273
	.uleb128 0x18
	.long	.LASF529
	.sleb128 274
	.uleb128 0x18
	.long	.LASF530
	.sleb128 275
	.uleb128 0x18
	.long	.LASF531
	.sleb128 276
	.uleb128 0x18
	.long	.LASF532
	.sleb128 277
	.uleb128 0x18
	.long	.LASF533
	.sleb128 278
	.uleb128 0x18
	.long	.LASF534
	.sleb128 279
	.uleb128 0x18
	.long	.LASF535
	.sleb128 280
	.uleb128 0x18
	.long	.LASF536
	.sleb128 281
	.uleb128 0x18
	.long	.LASF537
	.sleb128 282
	.uleb128 0x18
	.long	.LASF538
	.sleb128 283
	.uleb128 0x18
	.long	.LASF539
	.sleb128 284
	.uleb128 0x18
	.long	.LASF540
	.sleb128 285
	.uleb128 0x18
	.long	.LASF541
	.sleb128 286
	.uleb128 0x18
	.long	.LASF542
	.sleb128 287
	.uleb128 0x18
	.long	.LASF543
	.sleb128 288
	.uleb128 0x18
	.long	.LASF544
	.sleb128 289
	.uleb128 0x18
	.long	.LASF545
	.sleb128 290
	.uleb128 0x18
	.long	.LASF546
	.sleb128 291
	.uleb128 0x18
	.long	.LASF547
	.sleb128 292
	.uleb128 0x18
	.long	.LASF548
	.sleb128 293
	.uleb128 0x18
	.long	.LASF549
	.sleb128 294
	.uleb128 0x18
	.long	.LASF550
	.sleb128 295
	.uleb128 0x18
	.long	.LASF551
	.sleb128 296
	.uleb128 0x18
	.long	.LASF552
	.sleb128 297
	.uleb128 0x18
	.long	.LASF553
	.sleb128 298
	.uleb128 0x18
	.long	.LASF554
	.sleb128 299
	.uleb128 0x18
	.long	.LASF555
	.sleb128 300
	.uleb128 0x18
	.long	.LASF556
	.sleb128 301
	.uleb128 0x18
	.long	.LASF557
	.sleb128 302
	.uleb128 0x18
	.long	.LASF558
	.sleb128 303
	.uleb128 0x18
	.long	.LASF559
	.sleb128 304
	.uleb128 0x18
	.long	.LASF560
	.sleb128 305
	.uleb128 0x18
	.long	.LASF561
	.sleb128 306
	.uleb128 0x18
	.long	.LASF562
	.sleb128 307
	.uleb128 0x18
	.long	.LASF563
	.sleb128 308
	.uleb128 0x18
	.long	.LASF564
	.sleb128 309
	.uleb128 0x18
	.long	.LASF565
	.sleb128 310
	.uleb128 0x18
	.long	.LASF566
	.sleb128 311
	.uleb128 0x18
	.long	.LASF567
	.sleb128 312
	.uleb128 0x18
	.long	.LASF568
	.sleb128 313
	.uleb128 0x18
	.long	.LASF569
	.sleb128 314
	.uleb128 0x18
	.long	.LASF570
	.sleb128 315
	.uleb128 0x18
	.long	.LASF571
	.sleb128 316
	.uleb128 0x18
	.long	.LASF572
	.sleb128 317
	.uleb128 0x18
	.long	.LASF573
	.sleb128 318
	.uleb128 0x18
	.long	.LASF574
	.sleb128 319
	.uleb128 0x18
	.long	.LASF575
	.sleb128 320
	.uleb128 0x18
	.long	.LASF576
	.sleb128 321
	.uleb128 0x18
	.long	.LASF577
	.sleb128 322
	.uleb128 0x18
	.long	.LASF578
	.sleb128 323
	.uleb128 0x18
	.long	.LASF579
	.sleb128 324
	.uleb128 0x18
	.long	.LASF580
	.sleb128 325
	.uleb128 0x18
	.long	.LASF581
	.sleb128 326
	.uleb128 0x18
	.long	.LASF582
	.sleb128 327
	.uleb128 0x18
	.long	.LASF583
	.sleb128 328
	.uleb128 0x18
	.long	.LASF584
	.sleb128 329
	.uleb128 0x18
	.long	.LASF585
	.sleb128 330
	.uleb128 0x18
	.long	.LASF586
	.sleb128 331
	.uleb128 0x18
	.long	.LASF587
	.sleb128 332
	.uleb128 0x18
	.long	.LASF588
	.sleb128 333
	.uleb128 0x18
	.long	.LASF589
	.sleb128 334
	.uleb128 0x18
	.long	.LASF590
	.sleb128 335
	.uleb128 0x18
	.long	.LASF591
	.sleb128 336
	.uleb128 0x18
	.long	.LASF592
	.sleb128 337
	.uleb128 0x18
	.long	.LASF593
	.sleb128 338
	.uleb128 0x18
	.long	.LASF594
	.sleb128 339
	.uleb128 0x18
	.long	.LASF595
	.sleb128 340
	.uleb128 0x18
	.long	.LASF596
	.sleb128 341
	.uleb128 0x18
	.long	.LASF597
	.sleb128 342
	.uleb128 0x18
	.long	.LASF598
	.sleb128 343
	.uleb128 0x18
	.long	.LASF599
	.sleb128 344
	.uleb128 0x18
	.long	.LASF600
	.sleb128 345
	.uleb128 0x18
	.long	.LASF601
	.sleb128 346
	.uleb128 0x18
	.long	.LASF602
	.sleb128 347
	.uleb128 0x18
	.long	.LASF603
	.sleb128 348
	.uleb128 0x18
	.long	.LASF604
	.sleb128 349
	.uleb128 0x18
	.long	.LASF605
	.sleb128 350
	.uleb128 0x18
	.long	.LASF606
	.sleb128 351
	.uleb128 0x18
	.long	.LASF607
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0x1153
	.uleb128 0x6
	.byte	0x8
	.long	0x1b46
	.uleb128 0x6
	.byte	0x8
	.long	0x40a
	.uleb128 0x6
	.byte	0x8
	.long	0x6a6
	.uleb128 0x6
	.byte	0x8
	.long	0x1003
	.uleb128 0x6
	.byte	0x8
	.long	0x331
	.uleb128 0xc
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x1b73
	.uleb128 0x10
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x1ba3
	.uleb128 0x8
	.long	.LASF608
	.byte	0x10
	.byte	0x11
	.long	0x1bdf
	.byte	0
	.uleb128 0x8
	.long	.LASF609
	.byte	0x10
	.byte	0x12
	.long	0x1be5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF610
	.byte	0x10
	.byte	0x13
	.long	0x1003
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x1bae
	.uleb128 0x10
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x1bdf
	.uleb128 0x8
	.long	.LASF611
	.byte	0x10
	.byte	0x18
	.long	0xfdb
	.byte	0
	.uleb128 0x8
	.long	.LASF612
	.byte	0x10
	.byte	0x19
	.long	0xfd0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF613
	.byte	0x10
	.byte	0x1a
	.long	0x1009
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b69
	.uleb128 0x6
	.byte	0x8
	.long	0x1ba3
	.uleb128 0x1c
	.long	0x57
	.long	0x1bff
	.uleb128 0x16
	.long	0x1003
	.uleb128 0x16
	.long	0x1135
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1beb
	.uleb128 0x1c
	.long	0xfdb
	.long	0x1c19
	.uleb128 0x16
	.long	0x1003
	.uleb128 0x16
	.long	0x1135
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1c05
	.uleb128 0x1c
	.long	0x57
	.long	0x1c42
	.uleb128 0x16
	.long	0x1003
	.uleb128 0x16
	.long	0x1135
	.uleb128 0x16
	.long	0x1003
	.uleb128 0x16
	.long	0x19a
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1c1f
	.uleb128 0x1c
	.long	0x57
	.long	0x1c5c
	.uleb128 0x16
	.long	0x1135
	.uleb128 0x16
	.long	0x1c5c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf7a
	.uleb128 0x6
	.byte	0x8
	.long	0x1c48
	.uleb128 0x6
	.byte	0x8
	.long	0xe9f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF614
	.uleb128 0x1d
	.long	.LASF620
	.byte	0x1
	.byte	0x3e
	.long	0x103
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf7
	.uleb128 0x1e
	.string	"gv"
	.byte	0x1
	.byte	0x3e
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x1
	.byte	0x3e
	.long	0xfd
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x3e
	.long	0xfd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF616
	.byte	0x1
	.byte	0x3e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF618
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF619
	.byte	0x1
	.byte	0x3f
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LASF621
	.byte	0x1
	.byte	0x46
	.long	0x103
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d95
	.uleb128 0x1e
	.string	"gv"
	.byte	0x1
	.byte	0x46
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x1
	.byte	0x46
	.long	0xfd
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x46
	.long	0xfd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF616
	.byte	0x1
	.byte	0x46
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x1
	.byte	0x47
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF618
	.byte	0x1
	.byte	0x47
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF619
	.byte	0x1
	.byte	0x47
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"svs"
	.byte	0x1
	.byte	0x47
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	.LASF622
	.byte	0x1
	.byte	0x48
	.long	0xfd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1d
	.long	.LASF623
	.byte	0x1
	.byte	0x4f
	.long	0x103
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x213e
	.uleb128 0x1e
	.string	"gv"
	.byte	0x1
	.byte	0x4f
	.long	0x1170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x1
	.byte	0x4f
	.long	0xfd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x4f
	.long	0xfd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x1f
	.long	.LASF616
	.byte	0x1
	.byte	0x4f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x1
	.byte	0x50
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1f
	.long	.LASF618
	.byte	0x1
	.byte	0x50
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1f
	.long	.LASF619
	.byte	0x1
	.byte	0x50
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.string	"svp"
	.byte	0x1
	.byte	0x50
	.long	0x1b5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1f
	.long	.LASF622
	.byte	0x1
	.byte	0x51
	.long	0xfd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.string	"io"
	.byte	0x1
	.byte	0x53
	.long	0x213e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF624
	.byte	0x1
	.byte	0x54
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	.LASF625
	.byte	0x1
	.byte	0x55
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF626
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.long	.LASF627
	.byte	0x1
	.byte	0x57
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -235
	.uleb128 0x21
	.long	.LASF628
	.byte	0x1
	.byte	0x58
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x20
	.string	"fp"
	.byte	0x1
	.byte	0x59
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x21
	.long	.LASF629
	.byte	0x1
	.byte	0x5b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.long	.LASF630
	.byte	0x1
	.byte	0x5c
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -234
	.uleb128 0x21
	.long	.LASF631
	.byte	0x1
	.byte	0x5d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -233
	.uleb128 0x21
	.long	.LASF632
	.byte	0x1
	.byte	0x5d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.long	.LASF633
	.byte	0x1
	.byte	0x5d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -231
	.uleb128 0x21
	.long	.LASF634
	.byte	0x1
	.byte	0x5d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -230
	.uleb128 0x21
	.long	.LASF230
	.byte	0x1
	.byte	0x5e
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.long	.LASF635
	.byte	0x1
	.byte	0x5f
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF636
	.byte	0x1
	.byte	0x60
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF637
	.byte	0x1
	.byte	0xfa
	.quad	.L43
	.uleb128 0x23
	.long	.LASF638
	.byte	0x1
	.value	0x2e0
	.quad	.L51
	.uleb128 0x23
	.long	.LASF639
	.byte	0x1
	.value	0x148
	.quad	.L70
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1f86
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.byte	0x68
	.long	0xfbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -229
	.byte	0
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1fd7
	.uleb128 0x20
	.string	"ix"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF640
	.byte	0x1
	.byte	0x96
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF641
	.byte	0x1
	.byte	0x9f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x21
	.long	.LASF642
	.byte	0x1
	.byte	0xa1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x207c
	.uleb128 0x21
	.long	.LASF643
	.byte	0x1
	.byte	0xcc
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF644
	.byte	0x1
	.byte	0xcd
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF645
	.byte	0x1
	.byte	0xce
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF646
	.byte	0x1
	.byte	0xcf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x21
	.long	.LASF647
	.byte	0x1
	.byte	0xd0
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.long	.LASF648
	.byte	0x1
	.value	0x161
	.long	0x213e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF649
	.byte	0x1
	.value	0x166
	.long	0x1170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x20b1
	.uleb128 0x27
	.string	"pid"
	.byte	0x1
	.value	0x29e
	.long	0x136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x29f
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x20f7
	.uleb128 0x27
	.string	"ofd"
	.byte	0x1
	.value	0x2af
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF650
	.byte	0x1
	.value	0x2b0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x27
	.string	"coe"
	.byte	0x1
	.value	0x2b3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x211d
	.uleb128 0x26
	.long	.LASF651
	.byte	0x1
	.value	0x2c6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x2d1
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x86d
	.uleb128 0x28
	.long	.LASF652
	.byte	0x1
	.value	0x2e8
	.long	0x11a4
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x225e
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x2e8
	.long	0x1170
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x2ea
	.long	0x1003
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF653
	.byte	0x1
	.value	0x2ef
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF654
	.byte	0x1
	.value	0x2f0
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x2f1
	.long	0x213e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x223c
	.uleb128 0x26
	.long	.LASF655
	.byte	0x1
	.value	0x30b
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2219
	.uleb128 0x26
	.long	.LASF656
	.byte	0x1
	.value	0x328
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.long	.LASF657
	.byte	0x1
	.value	0x32a
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x27
	.string	"eno"
	.byte	0x1
	.value	0x3a0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x26
	.long	.LASF658
	.byte	0x1
	.value	0x3b5
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF659
	.byte	0x1
	.value	0x3ef
	.long	0x103
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x22bb
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x3ef
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF660
	.byte	0x1
	.value	0x3ef
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF661
	.byte	0x1
	.value	0x3f1
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x3f2
	.long	0x213e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF662
	.byte	0x1
	.value	0x40f
	.long	0x103
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x235f
	.uleb128 0x29
	.string	"io"
	.byte	0x1
	.value	0x40f
	.long	0x213e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF660
	.byte	0x1
	.value	0x40f
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF661
	.byte	0x1
	.value	0x411
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x26
	.long	.LASF663
	.byte	0x1
	.value	0x412
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x233d
	.uleb128 0x26
	.long	.LASF664
	.byte	0x1
	.value	0x423
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.long	.LASF664
	.byte	0x1
	.value	0x428
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF665
	.byte	0x1
	.value	0x436
	.long	0x103
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x23cc
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x436
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x438
	.long	0x213e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"ch"
	.byte	0x1
	.value	0x439
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x26
	.long	.LASF666
	.byte	0x1
	.value	0x443
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF667
	.byte	0x1
	.value	0x462
	.long	0x12b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2417
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x462
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x464
	.long	0x213e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x465
	.long	0x11a4
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x28
	.long	.LASF668
	.byte	0x1
	.value	0x475
	.long	0x103
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2480
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x475
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pos"
	.byte	0x1
	.value	0x475
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF669
	.byte	0x1
	.value	0x475
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x477
	.long	0x213e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x478
	.long	0x11a4
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x28
	.long	.LASF670
	.byte	0x1
	.value	0x488
	.long	0x12b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e9
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x488
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pos"
	.byte	0x1
	.value	0x488
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF669
	.byte	0x1
	.value	0x488
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x48a
	.long	0x213e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x48b
	.long	0x11a4
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x28
	.long	.LASF671
	.byte	0x1
	.value	0x496
	.long	0x57
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2589
	.uleb128 0x2a
	.long	.LASF672
	.byte	0x1
	.value	0x496
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF635
	.byte	0x1
	.value	0x498
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF673
	.byte	0x1
	.value	0x4bd
	.quad	.L313
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x49a
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x49b
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.value	0x4bc
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF674
	.byte	0x1
	.value	0x4ce
	.long	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e7
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.value	0x4ce
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF675
	.byte	0x1
	.value	0x4ce
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF635
	.byte	0x1
	.value	0x4ce
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF615
	.byte	0x1
	.value	0x4d3
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF676
	.byte	0x1
	.value	0x514
	.long	0x103
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2642
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x514
	.long	0x1003
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.value	0x514
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF677
	.byte	0x1
	.value	0x516
	.long	0xfd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x517
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF678
	.byte	0x1
	.value	0x555
	.long	0xfd0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x26db
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x557
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x558
	.long	0x213e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"gv"
	.byte	0x1
	.value	0x559
	.long	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF679
	.byte	0x1
	.value	0x55e
	.quad	.L349
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x571
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x572
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x573
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF680
	.byte	0x1
	.value	0x58b
	.long	0xfd0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2728
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x58d
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x58e
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x58f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF681
	.byte	0x1
	.value	0x5b0
	.long	0x103
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2775
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x5b0
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF683
	.byte	0x1
	.value	0x5b0
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x5b0
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x28
	.long	.LASF684
	.byte	0x1
	.value	0x5b7
	.long	0x103
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x282c
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x5b7
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF683
	.byte	0x1
	.value	0x5b7
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x5b7
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x5b8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF685
	.byte	0x1
	.value	0x5b8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x5bd
	.long	0x282c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF677
	.byte	0x1
	.value	0x5be
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x5bf
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x5da
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd
	.uleb128 0x2b
	.long	.LASF746
	.byte	0x1
	.value	0x5e6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF686
	.byte	0x1
	.value	0x5f5
	.long	0x103
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x287e
	.uleb128 0x29
	.string	"cmd"
	.byte	0x1
	.value	0x5f5
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF687
	.byte	0x1
	.value	0x5fb
	.long	0x103
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2983
	.uleb128 0x29
	.string	"cmd"
	.byte	0x1
	.value	0x5fb
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x5fb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF685
	.byte	0x1
	.value	0x5fb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x5fd
	.long	0x282c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x5fe
	.long	0xfd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF688
	.byte	0x1
	.value	0x64f
	.quad	.L431
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x293e
	.uleb128 0x26
	.long	.LASF222
	.byte	0x1
	.value	0x607
	.long	0x2983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.long	.LASF689
	.byte	0x1
	.value	0x61b
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x2962
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x646
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x66c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x103
	.long	0x2993
	.uleb128 0xa
	.long	0xbd
	.byte	0x9
	.byte	0
	.uleb128 0x28
	.long	.LASF690
	.byte	0x1
	.value	0x67e
	.long	0xfd0
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a67
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x1
	.value	0x67e
	.long	0xfd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF683
	.byte	0x1
	.value	0x67e
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x67e
	.long	0x1b5d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.value	0x680
	.long	0xfd0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2c
	.long	.LASF747
	.byte	0x1
	.value	0x681
	.long	0xfd0
	.uleb128 0x27
	.string	"tot"
	.byte	0x1
	.value	0x682
	.long	0xfd0
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF691
	.byte	0x1
	.value	0x683
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x684
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x685
	.long	0x1b5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x686
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF615
	.byte	0x1
	.value	0x6a0
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF693
	.byte	0x1
	.value	0x753
	.long	0x103
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab6
	.uleb128 0x2a
	.long	.LASF635
	.byte	0x1
	.value	0x753
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF694
	.byte	0x1
	.value	0x753
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x1
	.value	0x753
	.long	0x2ab6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1a5
	.uleb128 0x2d
	.long	.LASF696
	.byte	0x1
	.value	0x789
	.long	0x103
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2afd
	.uleb128 0x2a
	.long	.LASF697
	.byte	0x1
	.value	0x789
	.long	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF694
	.byte	0x1
	.value	0x789
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF698
	.byte	0x1
	.value	0x8f8
	.long	0x11a4
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b5a
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x8f8
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"io"
	.byte	0x1
	.value	0x8f8
	.long	0x213e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF700
	.byte	0x1
	.value	0x8fa
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x8fb
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	0x103
	.long	0x2b65
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x8
	.value	0xceb
	.long	0x2b71
	.uleb128 0xb
	.long	0x2b5a
	.uleb128 0x30
	.long	.LASF702
	.byte	0x15
	.byte	0x34
	.long	0xfbb
	.uleb128 0x30
	.long	.LASF703
	.byte	0x15
	.byte	0x38
	.long	0x103
	.uleb128 0x30
	.long	.LASF704
	.byte	0x15
	.byte	0x39
	.long	0xfd
	.uleb128 0x30
	.long	.LASF705
	.byte	0x15
	.byte	0x46
	.long	0xfd0
	.uleb128 0x30
	.long	.LASF706
	.byte	0x15
	.byte	0x49
	.long	0xfd0
	.uleb128 0x30
	.long	.LASF707
	.byte	0x15
	.byte	0x51
	.long	0x1170
	.uleb128 0x30
	.long	.LASF708
	.byte	0x15
	.byte	0x52
	.long	0x1170
	.uleb128 0x30
	.long	.LASF709
	.byte	0x15
	.byte	0x53
	.long	0x1170
	.uleb128 0x30
	.long	.LASF710
	.byte	0x15
	.byte	0x54
	.long	0x1170
	.uleb128 0x30
	.long	.LASF711
	.byte	0x15
	.byte	0x55
	.long	0x1176
	.uleb128 0x30
	.long	.LASF712
	.byte	0x15
	.byte	0x92
	.long	0x57
	.uleb128 0x30
	.long	.LASF713
	.byte	0x15
	.byte	0x95
	.long	0x1176
	.uleb128 0x30
	.long	.LASF714
	.byte	0x15
	.byte	0x98
	.long	0x103
	.uleb128 0x30
	.long	.LASF715
	.byte	0x15
	.byte	0xa7
	.long	0x57
	.uleb128 0x30
	.long	.LASF716
	.byte	0x15
	.byte	0xa8
	.long	0x57
	.uleb128 0x30
	.long	.LASF717
	.byte	0x15
	.byte	0xa9
	.long	0xfd
	.uleb128 0x30
	.long	.LASF718
	.byte	0x15
	.byte	0xaa
	.long	0x282c
	.uleb128 0x30
	.long	.LASF719
	.byte	0x15
	.byte	0xab
	.long	0xfd
	.uleb128 0x30
	.long	.LASF720
	.byte	0x15
	.byte	0xaf
	.long	0x57
	.uleb128 0x30
	.long	.LASF721
	.byte	0x15
	.byte	0xb0
	.long	0xfd0
	.uleb128 0x30
	.long	.LASF722
	.byte	0x15
	.byte	0xb5
	.long	0xfd
	.uleb128 0x30
	.long	.LASF723
	.byte	0x15
	.byte	0xed
	.long	0x120
	.uleb128 0x30
	.long	.LASF724
	.byte	0x15
	.byte	0xee
	.long	0x120
	.uleb128 0x30
	.long	.LASF725
	.byte	0x15
	.byte	0xef
	.long	0x10a
	.uleb128 0x30
	.long	.LASF726
	.byte	0x15
	.byte	0xf0
	.long	0x10a
	.uleb128 0x2f
	.long	.LASF727
	.byte	0x15
	.value	0x12a
	.long	0xfd
	.uleb128 0x2f
	.long	.LASF728
	.byte	0x15
	.value	0x12b
	.long	0xfd0
	.uleb128 0x30
	.long	.LASF729
	.byte	0x16
	.byte	0x22
	.long	0x1b5d
	.uleb128 0x30
	.long	.LASF730
	.byte	0x16
	.byte	0x26
	.long	0x1153
	.uleb128 0x30
	.long	.LASF731
	.byte	0x16
	.byte	0x2b
	.long	0x1b5d
	.uleb128 0x30
	.long	.LASF732
	.byte	0x16
	.byte	0x43
	.long	0x1003
	.uleb128 0x30
	.long	.LASF733
	.byte	0x16
	.byte	0x55
	.long	0x1a5
	.uleb128 0x30
	.long	.LASF734
	.byte	0x16
	.byte	0x56
	.long	0x1a5
	.uleb128 0x30
	.long	.LASF735
	.byte	0x16
	.byte	0x57
	.long	0x1170
	.uleb128 0x30
	.long	.LASF736
	.byte	0x16
	.byte	0x58
	.long	0x1003
	.uleb128 0x30
	.long	.LASF737
	.byte	0x16
	.byte	0x5f
	.long	0x103
	.uleb128 0x30
	.long	.LASF738
	.byte	0x16
	.byte	0x74
	.long	0x1170
	.uleb128 0x30
	.long	.LASF739
	.byte	0x16
	.byte	0x76
	.long	0x1170
	.uleb128 0x30
	.long	.LASF740
	.byte	0x16
	.byte	0x81
	.long	0x2d25
	.uleb128 0x31
	.long	0x1b63
	.uleb128 0x30
	.long	.LASF741
	.byte	0x17
	.byte	0x38
	.long	0xfd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF589:
	.string	"OP_ESERVENT"
.LASF514:
	.string	"OP_FTSVTX"
.LASF95:
	.string	"precomp"
.LASF467:
	.string	"OP_SYSREAD"
.LASF484:
	.string	"OP_SHUTDOWN"
.LASF627:
	.string	"savetype"
.LASF665:
	.string	"Perl_do_eof"
.LASF560:
	.string	"OP_MSGRCV"
.LASF602:
	.string	"OP_LOCK"
.LASF607:
	.string	"OP_max"
.LASF696:
	.string	"Perl_ingroup"
.LASF631:
	.string	"in_raw"
.LASF22:
	.string	"gid_t"
.LASF252:
	.string	"xiou_any"
.LASF518:
	.string	"OP_CHDIR"
.LASF119:
	.string	"gp_file"
.LASF432:
	.string	"OP_ENTER"
.LASF626:
	.string	"savefd"
.LASF283:
	.string	"OP_REGCMAYBE"
.LASF413:
	.string	"OP_FLOP"
.LASF451:
	.string	"OP_BINMODE"
.LASF165:
	.string	"xpvgv"
.LASF187:
	.string	"xio_ifp"
.LASF343:
	.string	"OP_SEQ"
.LASF67:
	.string	"cop_io"
.LASF697:
	.string	"testgid"
.LASF505:
	.string	"OP_FTSOCK"
.LASF159:
	.string	"xhv_keys"
.LASF677:
	.string	"tmps"
.LASF202:
	.string	"xio_flags"
.LASF581:
	.string	"OP_GSERVENT"
.LASF206:
	.string	"svt_set"
.LASF155:
	.string	"xpvhv"
.LASF633:
	.string	"out_raw"
.LASF744:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF472:
	.string	"OP_TELL"
.LASF544:
	.string	"OP_SETPGRP"
.LASF499:
	.string	"OP_FTROWNED"
.LASF656:
	.string	"star"
.LASF113:
	.string	"gp_hv"
.LASF186:
	.string	"xpvio"
.LASF488:
	.string	"OP_GETPEERNAME"
.LASF342:
	.string	"OP_SGE"
.LASF135:
	.string	"xpviv"
.LASF424:
	.string	"OP_CALLER"
.LASF482:
	.string	"OP_LISTEN"
.LASF340:
	.string	"OP_SGT"
.LASF554:
	.string	"OP_SHMCTL"
.LASF637:
	.string	"unknown_open_mode"
.LASF312:
	.string	"OP_DIVIDE"
.LASF174:
	.string	"xcv_start"
.LASF655:
	.string	"oldlen"
.LASF13:
	.string	"__off_t"
.LASF110:
	.string	"gp_io"
.LASF114:
	.string	"gp_egv"
.LASF43:
	.string	"st_size"
.LASF676:
	.string	"Perl_do_print"
.LASF357:
	.string	"OP_SRAND"
.LASF622:
	.string	"num_svs"
.LASF611:
	.string	"hek_hash"
.LASF65:
	.string	"cop_line"
.LASF173:
	.string	"xcv_stash"
.LASF323:
	.string	"OP_LEFT_SHIFT"
.LASF737:
	.string	"PL_tainted"
.LASF590:
	.string	"OP_GPWNAM"
.LASF453:
	.string	"OP_UNTIE"
.LASF354:
	.string	"OP_SIN"
.LASF541:
	.string	"OP_KILL"
.LASF683:
	.string	"mark"
.LASF636:
	.string	"namesv"
.LASF132:
	.string	"xpv_cur"
.LASF281:
	.string	"OP_READLINE"
.LASF294:
	.string	"OP_SCHOP"
.LASF125:
	.string	"mg_type"
.LASF527:
	.string	"OP_READLINK"
.LASF418:
	.string	"OP_ANDASSIGN"
.LASF44:
	.string	"st_blksize"
.LASF131:
	.string	"xpv_pv"
.LASF745:
	.string	"opcode"
.LASF420:
	.string	"OP_METHOD"
.LASF652:
	.string	"Perl_nextargv"
.LASF297:
	.string	"OP_DEFINED"
.LASF40:
	.string	"st_gid"
.LASF535:
	.string	"OP_CLOSEDIR"
.LASF562:
	.string	"OP_SEMCTL"
.LASF438:
	.string	"OP_LEAVELOOP"
.LASF529:
	.string	"OP_RMDIR"
.LASF468:
	.string	"OP_SYSWRITE"
.LASF250:
	.string	"cv_flags_t"
.LASF118:
	.string	"gp_line"
.LASF599:
	.string	"OP_EGRENT"
.LASF20:
	.string	"__syscall_slong_t"
.LASF192:
	.string	"xio_page_len"
.LASF296:
	.string	"OP_SCHOMP"
.LASF650:
	.string	"dupfd"
.LASF462:
	.string	"OP_LEAVEWRITE"
.LASF37:
	.string	"st_nlink"
.LASF341:
	.string	"OP_SLE"
.LASF141:
	.string	"xpvnv"
.LASF166:
	.string	"xgv_gp"
.LASF461:
	.string	"OP_ENTERWRITE"
.LASF339:
	.string	"OP_SLT"
.LASF395:
	.string	"OP_JOIN"
.LASF124:
	.string	"mg_private"
.LASF732:
	.string	"PL_Sv"
.LASF295:
	.string	"OP_CHOMP"
.LASF48:
	.string	"st_ctim"
.LASF388:
	.string	"OP_EXISTS"
.LASF152:
	.string	"xav_arylen"
.LASF107:
	.string	"program"
.LASF678:
	.string	"Perl_my_stat"
.LASF175:
	.string	"xcv_root"
.LASF609:
	.string	"hent_hek"
.LASF123:
	.string	"mg_virtual"
.LASF699:
	.string	"tmpglob"
.LASF437:
	.string	"OP_ENTERLOOP"
.LASF256:
	.string	"OP_STUB"
.LASF706:
	.string	"PL_statusvalue"
.LASF703:
	.string	"PL_unsafe"
.LASF63:
	.string	"cop_seq"
.LASF447:
	.string	"OP_CLOSE"
.LASF741:
	.string	"PL_sh_path"
.LASF344:
	.string	"OP_SNE"
.LASF88:
	.string	"sv_flags"
.LASF551:
	.string	"OP_ALARM"
.LASF332:
	.string	"OP_I_GE"
.LASF328:
	.string	"OP_I_GT"
.LASF85:
	.string	"broiled"
.LASF197:
	.string	"xio_fmt_gv"
.LASF46:
	.string	"st_atim"
.LASF717:
	.string	"PL_oldname"
.LASF619:
	.string	"supplied_fp"
.LASF452:
	.string	"OP_TIE"
.LASF285:
	.string	"OP_REGCOMP"
.LASF117:
	.string	"gp_flags"
.LASF293:
	.string	"OP_CHOP"
.LASF109:
	.string	"gp_refcnt"
.LASF103:
	.string	"nparens"
.LASF567:
	.string	"OP_LEAVEEVAL"
.LASF230:
	.string	"type"
.LASF456:
	.string	"OP_DBMCLOSE"
.LASF310:
	.string	"OP_MULTIPLY"
.LASF419:
	.string	"OP_ORASSIGN"
.LASF8:
	.string	"__uid_t"
.LASF485:
	.string	"OP_GSOCKOPT"
.LASF191:
	.string	"xio_page"
.LASF583:
	.string	"OP_SNETENT"
.LASF724:
	.string	"PL_euid"
.LASF720:
	.string	"PL_laststatval"
.LASF425:
	.string	"OP_WARN"
.LASF553:
	.string	"OP_SHMGET"
.LASF361:
	.string	"OP_INT"
.LASF575:
	.string	"OP_GNETENT"
.LASF542:
	.string	"OP_GETPPID"
.LASF669:
	.string	"whence"
.LASF743:
	.string	"doio.c"
.LASF635:
	.string	"mode"
.LASF365:
	.string	"OP_LENGTH"
.LASF286:
	.string	"OP_MATCH"
.LASF181:
	.string	"xcv_padlist"
.LASF510:
	.string	"OP_FTPIPE"
.LASF439:
	.string	"OP_RETURN"
.LASF645:
	.string	"tend"
.LASF632:
	.string	"in_crlf"
.LASF692:
	.string	"oldmark"
.LASF349:
	.string	"OP_NEGATE"
.LASF108:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF406:
	.string	"OP_REVERSE"
.LASF588:
	.string	"OP_EPROTOENT"
.LASF364:
	.string	"OP_ABS"
.LASF228:
	.string	"PerlIO"
.LASF18:
	.string	"__blkcnt_t"
.LASF578:
	.string	"OP_GPROTOENT"
.LASF614:
	.string	"float"
.LASF52:
	.string	"op_next"
.LASF138:
	.string	"xpvuv"
.LASF86:
	.string	"sv_any"
.LASF399:
	.string	"OP_ANONHASH"
.LASF330:
	.string	"OP_I_LE"
.LASF598:
	.string	"OP_SGRENT"
.LASF326:
	.string	"OP_I_LT"
.LASF417:
	.string	"OP_COND_EXPR"
.LASF511:
	.string	"OP_FTLINK"
.LASF106:
	.string	"reganch"
.LASF221:
	.string	"stashes"
.LASF445:
	.string	"OP_EXIT"
.LASF92:
	.string	"endp"
.LASF25:
	.string	"off_t"
.LASF561:
	.string	"OP_SEMGET"
.LASF288:
	.string	"OP_SUBST"
.LASF411:
	.string	"OP_RANGE"
.LASF257:
	.string	"OP_SCALAR"
.LASF584:
	.string	"OP_SPROTOENT"
.LASF559:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF667:
	.string	"Perl_do_tell"
.LASF384:
	.string	"OP_EACH"
.LASF556:
	.string	"OP_SHMWRITE"
.LASF385:
	.string	"OP_VALUES"
.LASF407:
	.string	"OP_GREPSTART"
.LASF28:
	.string	"size_t"
.LASF274:
	.string	"OP_PROTOTYPE"
.LASF694:
	.string	"effective"
.LASF336:
	.string	"OP_I_NE"
.LASF624:
	.string	"saveifp"
.LASF725:
	.string	"PL_gid"
.LASF279:
	.string	"OP_BACKTICK"
.LASF528:
	.string	"OP_MKDIR"
.LASF708:
	.string	"PL_defgv"
.LASF247:
	.string	"SVt_PVGV"
.LASF99:
	.string	"sublen"
.LASF433:
	.string	"OP_LEAVE"
.LASF146:
	.string	"xav_fill"
.LASF519:
	.string	"OP_CHOWN"
.LASF545:
	.string	"OP_GETPRIORITY"
.LASF493:
	.string	"OP_FTREXEC"
.LASF122:
	.string	"mg_moremagic"
.LASF524:
	.string	"OP_RENAME"
.LASF64:
	.string	"cop_arybase"
.LASF367:
	.string	"OP_VEC"
.LASF460:
	.string	"OP_READ"
.LASF428:
	.string	"OP_LINESEQ"
.LASF128:
	.string	"mg_ptr"
.LASF454:
	.string	"OP_TIED"
.LASF305:
	.string	"OP_POSTINC"
.LASF392:
	.string	"OP_UNPACK"
.LASF549:
	.string	"OP_LOCALTIME"
.LASF200:
	.string	"xio_subprocess"
.LASF646:
	.string	"dodup"
.LASF508:
	.string	"OP_FTFILE"
.LASF97:
	.string	"subbeg"
.LASF91:
	.string	"startp"
.LASF595:
	.string	"OP_GGRNAM"
.LASF742:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF319:
	.string	"OP_SUBTRACT"
.LASF690:
	.string	"Perl_apply"
.LASF495:
	.string	"OP_FTEWRITE"
.LASF664:
	.string	"prev_err"
.LASF521:
	.string	"OP_UNLINK"
.LASF90:
	.string	"regexp"
.LASF604:
	.string	"OP_SETSTATE"
.LASF441:
	.string	"OP_NEXT"
.LASF476:
	.string	"OP_IOCTL"
.LASF714:
	.string	"PL_tainting"
.LASF89:
	.string	"REGEXP"
.LASF87:
	.string	"sv_refcnt"
.LASF436:
	.string	"OP_ITER"
.LASF513:
	.string	"OP_FTSGID"
.LASF268:
	.string	"OP_PUSHRE"
.LASF266:
	.string	"OP_PADHV"
.LASF536:
	.string	"OP_FORK"
.LASF207:
	.string	"svt_len"
.LASF231:
	.string	"next_off"
.LASF430:
	.string	"OP_DBSTATE"
.LASF58:
	.string	"op_flags"
.LASF49:
	.string	"__unused"
.LASF673:
	.string	"fail_discipline"
.LASF66:
	.string	"cop_warnings"
.LASF94:
	.string	"substrs"
.LASF675:
	.string	"iotype"
.LASF628:
	.string	"writing"
.LASF735:
	.string	"PL_statgv"
.LASF684:
	.string	"Perl_do_aexec5"
.LASF591:
	.string	"OP_GPWUID"
.LASF299:
	.string	"OP_STUDY"
.LASF366:
	.string	"OP_SUBSTR"
.LASF634:
	.string	"out_crlf"
.LASF244:
	.string	"SVt_PVAV"
.LASF572:
	.string	"OP_GHOSTENT"
.LASF701:
	.string	"PL_warn_nl"
.LASF156:
	.string	"xhv_array"
.LASF616:
	.string	"as_raw"
.LASF574:
	.string	"OP_GNBYADDR"
.LASF98:
	.string	"offsets"
.LASF400:
	.string	"OP_SPLICE"
.LASF729:
	.string	"PL_stack_sp"
.LASF345:
	.string	"OP_SCMP"
.LASF532:
	.string	"OP_TELLDIR"
.LASF198:
	.string	"xio_bottom_name"
.LASF346:
	.string	"OP_BIT_AND"
.LASF242:
	.string	"SVt_PVBM"
.LASF621:
	.string	"Perl_do_open9"
.LASF12:
	.string	"__nlink_t"
.LASF36:
	.string	"st_ino"
.LASF38:
	.string	"st_mode"
.LASF120:
	.string	"MAGIC"
.LASF60:
	.string	"cop_label"
.LASF126:
	.string	"mg_flags"
.LASF143:
	.string	"XPVAV"
.LASF623:
	.string	"Perl_do_openn"
.LASF81:
	.string	"svop"
.LASF246:
	.string	"SVt_PVCV"
.LASF302:
	.string	"OP_I_PREINC"
.LASF102:
	.string	"prelen"
.LASF740:
	.string	"PL_curcop"
.LASF408:
	.string	"OP_GREPWHILE"
.LASF442:
	.string	"OP_REDO"
.LASF55:
	.string	"op_targ"
.LASF688:
	.string	"doshell"
.LASF301:
	.string	"OP_PREINC"
.LASF199:
	.string	"xio_bottom_gv"
.LASF298:
	.string	"OP_UNDEF"
.LASF351:
	.string	"OP_NOT"
.LASF449:
	.string	"OP_FILENO"
.LASF414:
	.string	"OP_AND"
.LASF566:
	.string	"OP_ENTEREVAL"
.LASF104:
	.string	"lastparen"
.LASF713:
	.string	"PL_fdpid"
.LASF171:
	.string	"XPVCV"
.LASF348:
	.string	"OP_BIT_OR"
.LASF483:
	.string	"OP_ACCEPT"
.LASF455:
	.string	"OP_DBMOPEN"
.LASF600:
	.string	"OP_GETLOGIN"
.LASF19:
	.string	"__ssize_t"
.LASF233:
	.string	"reg_data"
.LASF196:
	.string	"xio_fmt_name"
.LASF610:
	.string	"hent_val"
.LASF431:
	.string	"OP_UNSTACK"
.LASF142:
	.string	"xnv_nv"
.LASF33:
	.string	"timespec"
.LASF608:
	.string	"hent_next"
.LASF473:
	.string	"OP_SEEK"
.LASF736:
	.string	"PL_statname"
.LASF209:
	.string	"svt_free"
.LASF78:
	.string	"op_pmdynflags"
.LASF248:
	.string	"SVt_PVFM"
.LASF403:
	.string	"OP_SHIFT"
.LASF429:
	.string	"OP_NEXTSTATE"
.LASF220:
	.string	"clone_params"
.LASF597:
	.string	"OP_GGRENT"
.LASF338:
	.string	"OP_I_NCMP"
.LASF316:
	.string	"OP_REPEAT"
.LASF376:
	.string	"OP_LCFIRST"
.LASF515:
	.string	"OP_FTTTY"
.LASF709:
	.string	"PL_argvgv"
.LASF321:
	.string	"OP_CONCAT"
.LASF39:
	.string	"st_uid"
.LASF660:
	.string	"not_implicit"
.LASF182:
	.string	"xcv_outside"
.LASF253:
	.string	"PADLIST"
.LASF218:
	.string	"any_dxptr"
.LASF404:
	.string	"OP_UNSHIFT"
.LASF170:
	.string	"xgv_flags"
.LASF121:
	.string	"magic"
.LASF547:
	.string	"OP_TIME"
.LASF496:
	.string	"OP_FTEEXEC"
.LASF593:
	.string	"OP_SPWENT"
.LASF638:
	.string	"say_false"
.LASF629:
	.string	"result"
.LASF498:
	.string	"OP_FTEOWNED"
.LASF313:
	.string	"OP_I_DIVIDE"
.LASF334:
	.string	"OP_I_EQ"
.LASF721:
	.string	"PL_laststype"
.LASF245:
	.string	"SVt_PVHV"
.LASF234:
	.string	"SVt_NULL"
.LASF670:
	.string	"Perl_do_sysseek"
.LASF564:
	.string	"OP_REQUIRE"
.LASF204:
	.string	"mgvtbl"
.LASF280:
	.string	"OP_GLOB"
.LASF533:
	.string	"OP_SEEKDIR"
.LASF618:
	.string	"rawperm"
.LASF164:
	.string	"XPVGV"
.LASF463:
	.string	"OP_PRTF"
.LASF203:
	.string	"MGVTBL"
.LASF573:
	.string	"OP_GNBYNAME"
.LASF249:
	.string	"SVt_PVIO"
.LASF16:
	.string	"__time_t"
.LASF239:
	.string	"SVt_PVIV"
.LASF359:
	.string	"OP_LOG"
.LASF100:
	.string	"refcnt"
.LASF306:
	.string	"OP_I_POSTINC"
.LASF525:
	.string	"OP_LINK"
.LASF409:
	.string	"OP_MAPSTART"
.LASF154:
	.string	"XPVHV"
.LASF15:
	.string	"sizetype"
.LASF333:
	.string	"OP_EQ"
.LASF260:
	.string	"OP_CONST"
.LASF718:
	.string	"PL_Argv"
.LASF74:
	.string	"op_pmnext"
.LASF147:
	.string	"xav_max"
.LASF481:
	.string	"OP_CONNECT"
.LASF176:
	.string	"xcv_xsub"
.LASF548:
	.string	"OP_TMS"
.LASF423:
	.string	"OP_LEAVESUBLV"
.LASF487:
	.string	"OP_GETSOCKNAME"
.LASF59:
	.string	"op_private"
.LASF263:
	.string	"OP_GELEM"
.LASF373:
	.string	"OP_CHR"
.LASF212:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF322:
	.string	"OP_STRINGIFY"
.LASF540:
	.string	"OP_EXEC"
.LASF320:
	.string	"OP_I_SUBTRACT"
.LASF185:
	.string	"XPVIO"
.LASF17:
	.string	"__blksize_t"
.LASF134:
	.string	"XPVIV"
.LASF151:
	.string	"xav_alloc"
.LASF317:
	.string	"OP_ADD"
.LASF261:
	.string	"OP_GVSV"
.LASF158:
	.string	"xhv_max"
.LASF705:
	.string	"PL_maxsysfd"
.LASF649:
	.string	"thatgv"
.LASF101:
	.string	"minlen"
.LASF663:
	.string	"status"
.LASF292:
	.string	"OP_AASSIGN"
.LASF734:
	.string	"PL_statcache"
.LASF466:
	.string	"OP_SYSSEEK"
.LASF150:
	.string	"xmg_stash"
.LASF563:
	.string	"OP_SEMOP"
.LASF93:
	.string	"regstclass"
.LASF331:
	.string	"OP_GE"
.LASF161:
	.string	"xhv_eiter"
.LASF397:
	.string	"OP_LSLICE"
.LASF327:
	.string	"OP_GT"
.LASF262:
	.string	"OP_GV"
.LASF489:
	.string	"OP_LSTAT"
.LASF458:
	.string	"OP_SELECT"
.LASF552:
	.string	"OP_SLEEP"
.LASF243:
	.string	"SVt_PVLV"
.LASF232:
	.string	"reg_substr_data"
.LASF654:
	.string	"filegid"
.LASF259:
	.string	"OP_WANTARRAY"
.LASF731:
	.string	"PL_stack_max"
.LASF324:
	.string	"OP_RIGHT_SHIFT"
.LASF579:
	.string	"OP_GSBYNAME"
.LASF241:
	.string	"SVt_PVMG"
.LASF648:
	.string	"thatio"
.LASF148:
	.string	"xof_off"
.LASF546:
	.string	"OP_SETPRIORITY"
.LASF596:
	.string	"OP_GGRGID"
.LASF168:
	.string	"xgv_namelen"
.LASF71:
	.string	"op_last"
.LASF265:
	.string	"OP_PADAV"
.LASF226:
	.string	"__dirstream"
.LASF681:
	.string	"Perl_do_aexec"
.LASF393:
	.string	"OP_PACK"
.LASF215:
	.string	"any_long"
.LASF446:
	.string	"OP_OPEN"
.LASF57:
	.string	"op_seq"
.LASF577:
	.string	"OP_GPBYNUMBER"
.LASF672:
	.string	"discp"
.LASF666:
	.string	"saverrno"
.LASF698:
	.string	"Perl_start_glob"
.LASF240:
	.string	"SVt_PVNV"
.LASF68:
	.string	"PMOP"
.LASF380:
	.string	"OP_RV2AV"
.LASF464:
	.string	"OP_PRINT"
.LASF469:
	.string	"OP_SEND"
.LASF507:
	.string	"OP_FTBLK"
.LASF105:
	.string	"lastcloseparen"
.LASF520:
	.string	"OP_CHROOT"
.LASF730:
	.string	"PL_op"
.LASF201:
	.string	"xio_type"
.LASF494:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF208:
	.string	"svt_clear"
.LASF188:
	.string	"xio_ofp"
.LASF169:
	.string	"xgv_stash"
.LASF363:
	.string	"OP_OCT"
.LASF318:
	.string	"OP_I_ADD"
.LASF72:
	.string	"op_pmreplroot"
.LASF180:
	.string	"xcv_depth"
.LASF116:
	.string	"gp_cvgen"
.LASF140:
	.string	"XPVNV"
.LASF658:
	.string	"oldout"
.LASF160:
	.string	"xhv_riter"
.LASF272:
	.string	"OP_RV2CV"
.LASF506:
	.string	"OP_FTCHR"
.LASF405:
	.string	"OP_SORT"
.LASF378:
	.string	"OP_LC"
.LASF329:
	.string	"OP_LE"
.LASF695:
	.string	"statbufp"
.LASF14:
	.string	"__pid_t"
.LASF580:
	.string	"OP_GSBYPORT"
.LASF73:
	.string	"op_pmreplstart"
.LASF606:
	.string	"OP_CUSTOM"
.LASF325:
	.string	"OP_LT"
.LASF642:
	.string	"ismodifying"
.LASF347:
	.string	"OP_BIT_XOR"
.LASF426:
	.string	"OP_DIE"
.LASF289:
	.string	"OP_SUBSTCONT"
.LASF235:
	.string	"SVt_IV"
.LASF311:
	.string	"OP_I_MULTIPLY"
.LASF229:
	.string	"regnode"
.LASF355:
	.string	"OP_COS"
.LASF722:
	.string	"PL_ofmt"
.LASF53:
	.string	"op_sibling"
.LASF214:
	.string	"any_iv"
.LASF382:
	.string	"OP_AELEM"
.LASF162:
	.string	"xhv_pmroot"
.LASF352:
	.string	"OP_COMPLEMENT"
.LASF427:
	.string	"OP_RESET"
.LASF727:
	.string	"PL_cshname"
.LASF3:
	.string	"long unsigned int"
.LASF69:
	.string	"pmop"
.LASF504:
	.string	"OP_FTCTIME"
.LASF410:
	.string	"OP_MAPWHILE"
.LASF502:
	.string	"OP_FTMTIME"
.LASF394:
	.string	"OP_SPLIT"
.LASF350:
	.string	"OP_I_NEGATE"
.LASF531:
	.string	"OP_READDIR"
.LASF83:
	.string	"PerlInterpreter"
.LASF335:
	.string	"OP_NE"
.LASF571:
	.string	"OP_GHBYADDR"
.LASF671:
	.string	"Perl_mode_from_discipline"
.LASF21:
	.string	"char"
.LASF728:
	.string	"PL_cshlen"
.LASF416:
	.string	"OP_XOR"
.LASF491:
	.string	"OP_FTRREAD"
.LASF668:
	.string	"Perl_do_seek"
.LASF194:
	.string	"xio_top_name"
.LASF539:
	.string	"OP_SYSTEM"
.LASF738:
	.string	"PL_last_in_gv"
.LASF129:
	.string	"mg_len"
.LASF465:
	.string	"OP_SYSOPEN"
.LASF251:
	.string	"xiou_dirp"
.LASF167:
	.string	"xgv_name"
.LASF282:
	.string	"OP_RCATLINE"
.LASF415:
	.string	"OP_OR"
.LASF689:
	.string	"ncmd"
.LASF307:
	.string	"OP_POSTDEC"
.LASF7:
	.string	"__dev_t"
.LASF475:
	.string	"OP_FCNTL"
.LASF500:
	.string	"OP_FTZERO"
.LASF269:
	.string	"OP_RV2GV"
.LASF396:
	.string	"OP_LIST"
.LASF190:
	.string	"xio_lines"
.LASF497:
	.string	"OP_FTIS"
.LASF255:
	.string	"OP_NULL"
.LASF133:
	.string	"xpv_len"
.LASF733:
	.string	"PL_statbuf"
.LASF56:
	.string	"op_type"
.LASF389:
	.string	"OP_RV2HV"
.LASF51:
	.string	"STRLEN"
.LASF512:
	.string	"OP_FTSUID"
.LASF287:
	.string	"OP_QR"
.LASF371:
	.string	"OP_FORMLINE"
.LASF538:
	.string	"OP_WAITPID"
.LASF662:
	.string	"Perl_io_close"
.LASF236:
	.string	"SVt_NV"
.LASF368:
	.string	"OP_INDEX"
.LASF356:
	.string	"OP_RAND"
.LASF369:
	.string	"OP_RINDEX"
.LASF613:
	.string	"hek_key"
.LASF586:
	.string	"OP_EHOSTENT"
.LASF315:
	.string	"OP_I_MODULO"
.LASF179:
	.string	"xcv_file"
.LASF137:
	.string	"XPVUV"
.LASF41:
	.string	"__pad0"
.LASF223:
	.string	"proto_perl"
.LASF391:
	.string	"OP_HSLICE"
.LASF710:
	.string	"PL_argvoutgv"
.LASF314:
	.string	"OP_MODULO"
.LASF82:
	.string	"op_sv"
.LASF555:
	.string	"OP_SHMREAD"
.LASF509:
	.string	"OP_FTDIR"
.LASF585:
	.string	"OP_SSERVENT"
.LASF254:
	.string	"PADOFFSET"
.LASF76:
	.string	"op_pmflags"
.LASF644:
	.string	"olen"
.LASF691:
	.string	"what"
.LASF139:
	.string	"xuv_uv"
.LASF84:
	.string	"interpreter"
.LASF189:
	.string	"xio_dirpu"
.LASF747:
	.string	"val2"
.LASF70:
	.string	"op_first"
.LASF50:
	.string	"double"
.LASF686:
	.string	"Perl_do_exec"
.LASF739:
	.string	"PL_defoutgv"
.LASF77:
	.string	"op_pmpermflags"
.LASF130:
	.string	"xrv_rv"
.LASF42:
	.string	"st_rdev"
.LASF35:
	.string	"st_dev"
.LASF27:
	.string	"ssize_t"
.LASF54:
	.string	"op_ppaddr"
.LASF603:
	.string	"OP_THREADSV"
.LASF685:
	.string	"do_report"
.LASF213:
	.string	"any_i32"
.LASF238:
	.string	"SVt_PV"
.LASF62:
	.string	"cop_filegv"
.LASF216:
	.string	"any_bool"
.LASF401:
	.string	"OP_PUSH"
.LASF377:
	.string	"OP_UC"
.LASF184:
	.string	"xcv_outside_seq"
.LASF304:
	.string	"OP_I_PREDEC"
.LASF96:
	.string	"data"
.LASF480:
	.string	"OP_BIND"
.LASF587:
	.string	"OP_ENETENT"
.LASF534:
	.string	"OP_REWINDDIR"
.LASF145:
	.string	"xav_array"
.LASF237:
	.string	"SVt_RV"
.LASF702:
	.string	"PL_dowarn"
.LASF219:
	.string	"CLONE_PARAMS"
.LASF434:
	.string	"OP_SCOPE"
.LASF570:
	.string	"OP_GHBYNAME"
.LASF700:
	.string	"tmpcmd"
.LASF303:
	.string	"OP_PREDEC"
.LASF617:
	.string	"rawmode"
.LASF157:
	.string	"xhv_fill"
.LASF136:
	.string	"xiv_iv"
.LASF659:
	.string	"Perl_do_close"
.LASF679:
	.string	"do_fstat"
.LASF537:
	.string	"OP_WAIT"
.LASF443:
	.string	"OP_DUMP"
.LASF620:
	.string	"Perl_do_open"
.LASF9:
	.string	"__gid_t"
.LASF291:
	.string	"OP_SASSIGN"
.LASF381:
	.string	"OP_AELEMFAST"
.LASF612:
	.string	"hek_len"
.LASF375:
	.string	"OP_UCFIRST"
.LASF23:
	.string	"mode_t"
.LASF526:
	.string	"OP_SYMLINK"
.LASF360:
	.string	"OP_SQRT"
.LASF558:
	.string	"OP_MSGCTL"
.LASF746:
	.string	"Perl_do_execfree"
.LASF29:
	.string	"tv_sec"
.LASF501:
	.string	"OP_FTSIZE"
.LASF31:
	.string	"long long unsigned int"
.LASF26:
	.string	"pid_t"
.LASF471:
	.string	"OP_EOF"
.LASF24:
	.string	"uid_t"
.LASF651:
	.string	"save_errno"
.LASF517:
	.string	"OP_FTBINARY"
.LASF490:
	.string	"OP_STAT"
.LASF390:
	.string	"OP_HELEM"
.LASF45:
	.string	"st_blocks"
.LASF707:
	.string	"PL_stderrgv"
.LASF267:
	.string	"OP_PADANY"
.LASF271:
	.string	"OP_AV2ARYLEN"
.LASF477:
	.string	"OP_FLOCK"
.LASF726:
	.string	"PL_egid"
.LASF372:
	.string	"OP_ORD"
.LASF211:
	.string	"svt_dup"
.LASF258:
	.string	"OP_PUSHMARK"
.LASF565:
	.string	"OP_DOFILE"
.LASF195:
	.string	"xio_top_gv"
.LASF687:
	.string	"Perl_do_exec3"
.LASF387:
	.string	"OP_DELETE"
.LASF643:
	.string	"oname"
.LASF625:
	.string	"saveofp"
.LASF422:
	.string	"OP_LEAVESUB"
.LASF719:
	.string	"PL_Cmd"
.LASF716:
	.string	"PL_lastfd"
.LASF264:
	.string	"OP_PADSV"
.LASF276:
	.string	"OP_SREFGEN"
.LASF444:
	.string	"OP_GOTO"
.LASF615:
	.string	"name"
.LASF79:
	.string	"op_pmstash"
.LASF205:
	.string	"svt_get"
.LASF111:
	.string	"gp_form"
.LASF693:
	.string	"Perl_cando"
.LASF308:
	.string	"OP_I_POSTDEC"
.LASF630:
	.string	"was_fdopen"
.LASF661:
	.string	"retval"
.LASF270:
	.string	"OP_RV2SV"
.LASF178:
	.string	"xcv_gv"
.LASF61:
	.string	"cop_stash"
.LASF278:
	.string	"OP_BLESS"
.LASF550:
	.string	"OP_GMTIME"
.LASF32:
	.string	"long long int"
.LASF224:
	.string	"line_t"
.LASF163:
	.string	"xhv_name"
.LASF516:
	.string	"OP_FTTEXT"
.LASF503:
	.string	"OP_FTATIME"
.LASF210:
	.string	"svt_copy"
.LASF402:
	.string	"OP_POP"
.LASF300:
	.string	"OP_POS"
.LASF309:
	.string	"OP_POW"
.LASF435:
	.string	"OP_ENTERITER"
.LASF275:
	.string	"OP_REFGEN"
.LASF30:
	.string	"tv_nsec"
.LASF492:
	.string	"OP_FTRWRITE"
.LASF486:
	.string	"OP_SSOCKOPT"
.LASF80:
	.string	"SVOP"
.LASF153:
	.string	"xav_flags"
.LASF712:
	.string	"PL_forkprocess"
.LASF592:
	.string	"OP_GPWENT"
.LASF653:
	.string	"fileuid"
.LASF582:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF440:
	.string	"OP_LAST"
.LASF149:
	.string	"xmg_magic"
.LASF715:
	.string	"PL_filemode"
.LASF386:
	.string	"OP_KEYS"
.LASF711:
	.string	"PL_argvout_stack"
.LASF127:
	.string	"mg_obj"
.LASF569:
	.string	"OP_LEAVETRY"
.LASF217:
	.string	"any_dptr"
.LASF412:
	.string	"OP_FLIP"
.LASF680:
	.string	"Perl_my_lstat"
.LASF530:
	.string	"OP_OPEN_DIR"
.LASF144:
	.string	"xpvav"
.LASF75:
	.string	"op_pmregexp"
.LASF277:
	.string	"OP_REF"
.LASF639:
	.string	"duplicity"
.LASF479:
	.string	"OP_SOCKPAIR"
.LASF459:
	.string	"OP_GETC"
.LASF576:
	.string	"OP_GPBYNAME"
.LASF177:
	.string	"xcv_xsubany"
.LASF450:
	.string	"OP_UMASK"
.LASF193:
	.string	"xio_lines_left"
.LASF470:
	.string	"OP_RECV"
.LASF112:
	.string	"gp_av"
.LASF682:
	.string	"really"
.LASF474:
	.string	"OP_TRUNCATE"
.LASF641:
	.string	"modifyingmode"
.LASF448:
	.string	"OP_PIPE_OP"
.LASF594:
	.string	"OP_EPWENT"
.LASF704:
	.string	"PL_inplace"
.LASF273:
	.string	"OP_ANONCODE"
.LASF290:
	.string	"OP_TRANS"
.LASF723:
	.string	"PL_uid"
.LASF601:
	.string	"OP_SYSCALL"
.LASF183:
	.string	"xcv_flags"
.LASF605:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF172:
	.string	"xpvcv"
.LASF353:
	.string	"OP_ATAN2"
.LASF398:
	.string	"OP_ANONLIST"
.LASF478:
	.string	"OP_SOCKET"
.LASF383:
	.string	"OP_ASLICE"
.LASF647:
	.string	"that_fp"
.LASF362:
	.string	"OP_HEX"
.LASF227:
	.string	"_PerlIO"
.LASF47:
	.string	"st_mtim"
.LASF457:
	.string	"OP_SSELECT"
.LASF640:
	.string	"appendtrunc"
.LASF557:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF657:
	.string	"begin"
.LASF115:
	.string	"gp_cv"
.LASF674:
	.string	"Perl_do_binmode"
.LASF379:
	.string	"OP_QUOTEMETA"
.LASF543:
	.string	"OP_GETPGRP"
.LASF337:
	.string	"OP_NCMP"
.LASF568:
	.string	"OP_ENTERTRY"
.LASF522:
	.string	"OP_CHMOD"
.LASF358:
	.string	"OP_EXP"
.LASF374:
	.string	"OP_CRYPT"
.LASF523:
	.string	"OP_UTIME"
.LASF34:
	.string	"stat"
.LASF225:
	.string	"PerlIOl"
.LASF421:
	.string	"OP_ENTERSUB"
.LASF222:
	.string	"flags"
.LASF370:
	.string	"OP_SPRINTF"
.LASF284:
	.string	"OP_REGCRESET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
