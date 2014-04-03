	.file	"gv.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 gv.c -mtune=generic
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
.LC0:
	.string	"Bad symbol for array"
	.text
	.globl	Perl_gv_AVadd
	.type	Perl_gv_AVadd, @function
Perl_gv_AVadd:
.LFB2:
	.file 1 "gv.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# gv, gv
	.loc 1 40 0
	testq	%rbx, %rbx	# gv
	je	.L2	#,
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)gv_1(D)].sv_flags, D.13531
	movzbl	%al, %eax	# D.13531, D.13531
	cmpl	$13, %eax	#, D.13531
	je	.L3	#,
.L2:
	.loc 1 41 0 is_stmt 1
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L3:
	.loc 1 42 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13532
	movq	56(%rax), %rax	# _4->xgv_gp, D.13533
	movq	32(%rax), %rax	# _5->gp_av, D.13534
	testq	%rax, %rax	# D.13534
	jne	.L4	#,
	.loc 1 43 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13532
	movq	56(%rax), %r12	# _7->xgv_gp, D.13533
	call	Perl_newAV	#
	movq	%rax, 32(%r12)	# D.13534, _8->gp_av
.L4:
	.loc 1 44 0
	movq	%rbx, %rax	# gv, D.13535
	.loc 1 45 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_gv_AVadd, .-Perl_gv_AVadd
	.section	.rodata
.LC1:
	.string	"Bad symbol for hash"
	.text
	.globl	Perl_gv_HVadd
	.type	Perl_gv_HVadd, @function
Perl_gv_HVadd:
.LFB3:
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# gv, gv
	.loc 1 50 0
	testq	%rbx, %rbx	# gv
	je	.L7	#,
	.loc 1 50 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)gv_1(D)].sv_flags, D.13537
	movzbl	%al, %eax	# D.13537, D.13537
	cmpl	$13, %eax	#, D.13537
	je	.L8	#,
.L7:
	.loc 1 51 0 is_stmt 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L8:
	.loc 1 52 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13538
	movq	56(%rax), %rax	# _4->xgv_gp, D.13539
	movq	40(%rax), %rax	# _5->gp_hv, D.13540
	testq	%rax, %rax	# D.13540
	jne	.L9	#,
	.loc 1 53 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13538
	movq	56(%rax), %r12	# _7->xgv_gp, D.13539
	call	Perl_newHV	#
	movq	%rax, 40(%r12)	# D.13540, _8->gp_hv
.L9:
	.loc 1 54 0
	movq	%rbx, %rax	# gv, D.13541
	.loc 1 55 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_gv_HVadd, .-Perl_gv_HVadd
	.section	.rodata
.LC2:
	.string	"Bad symbol for filehandle"
	.text
	.globl	Perl_gv_IOadd
	.type	Perl_gv_IOadd, @function
Perl_gv_IOadd:
.LFB4:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# gv, gv
	.loc 1 60 0
	testq	%rbx, %rbx	# gv
	je	.L12	#,
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)gv_1(D)].sv_flags, D.13543
	movzbl	%al, %eax	# D.13543, D.13543
	cmpl	$13, %eax	#, D.13543
	je	.L13	#,
.L12:
	.loc 1 61 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L13:
	.loc 1 62 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13544
	movq	56(%rax), %rax	# _4->xgv_gp, D.13545
	movq	16(%rax), %rax	# _5->gp_io, D.13546
	testq	%rax, %rax	# D.13546
	jne	.L14	#,
	.loc 1 68 0
	movq	(%rbx), %rax	# gv_1(D)->sv_any, D.13544
	movq	56(%rax), %r12	# _7->xgv_gp, D.13545
	call	Perl_newIO	#
	movq	%rax, 16(%r12)	# D.13547, _8->gp_io
.L14:
	.loc 1 70 0
	movq	%rbx, %rax	# gv, D.13548
	.loc 1 71 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_gv_IOadd, .-Perl_gv_IOadd
	.globl	Perl_gv_fetchfile
	.type	Perl_gv_fetchfile, @function
Perl_gv_fetchfile:
.LFB5:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# name, name
	.loc 1 75 0
	movq	%fs:40, %rax	#, tmp114
	movq	%rax, -24(%rbp)	# tmp114, D.13560
	xorl	%eax, %eax	# tmp114
	.loc 1 81 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.0
	testq	%rax, %rax	# PL_defstash.0
	jne	.L17	#,
	.loc 1 82 0
	movl	$0, %eax	#, D.13550
	jmp	.L25	#
.L17:
	.loc 1 84 0
	movq	-328(%rbp), %rax	# name, tmp90
	movq	%rax, %rdi	# tmp90,
	call	strlen	#
	addq	$2, %rax	#, tmp91
	movq	%rax, -304(%rbp)	# tmp91, tmplen
	.loc 1 85 0
	cmpq	$255, -304(%rbp)	#, tmplen
	ja	.L19	#,
	.loc 1 86 0
	leaq	-288(%rbp), %rax	#, tmp92
	movq	%rax, -312(%rbp)	# tmp92, tmpbuf
	jmp	.L20	#
.L19:
	.loc 1 88 0
	movq	-304(%rbp), %rax	# tmplen, tmp93
	addq	$1, %rax	#, D.13551
	movq	%rax, %rdi	# D.13551,
	call	Perl_safesysmalloc	#
	movq	%rax, -312(%rbp)	# tmp94, tmpbuf
.L20:
	.loc 1 90 0
	movq	-312(%rbp), %rax	# tmpbuf, tmp95
	movb	$95, (%rax)	#, *tmpbuf_1
	.loc 1 91 0
	movq	-312(%rbp), %rax	# tmpbuf, tmp96
	addq	$1, %rax	#, D.13552
	movb	$60, (%rax)	#, *_12
	.loc 1 92 0
	movq	-312(%rbp), %rax	# tmpbuf, tmp97
	leaq	2(%rax), %rdx	#, D.13552
	movq	-328(%rbp), %rax	# name, tmp98
	movq	%rax, %rsi	# tmp98,
	movq	%rdx, %rdi	# D.13552,
	call	strcpy	#
	.loc 1 93 0
	movq	-304(%rbp), %rax	# tmplen, tmp99
	movl	%eax, %edx	# tmp99, D.13553
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.1
	movq	-312(%rbp), %rsi	# tmpbuf, tmp100
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# PL_defstash.1,
	call	Perl_hv_fetch	#
	movq	(%rax), %rax	# MEM[(struct GV * *)_16], tmp101
	movq	%rax, -296(%rbp)	# tmp101, gv
	.loc 1 94 0
	movq	-296(%rbp), %rax	# gv, tmp102
	movl	12(%rax), %eax	# gv_17->sv_flags, D.13555
	movzbl	%al, %eax	# D.13555, D.13555
	cmpl	$13, %eax	#, D.13555
	je	.L21	#,
	.loc 1 95 0
	movq	PL_defstash(%rip), %rsi	# PL_defstash, PL_defstash.2
	movq	-304(%rbp), %rcx	# tmplen, tmp103
	movq	-312(%rbp), %rdx	# tmpbuf, tmp104
	movq	-296(%rbp), %rax	# gv, tmp105
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp105,
	call	Perl_gv_init	#
	.loc 1 96 0
	movq	-296(%rbp), %rax	# gv, tmp106
	movq	(%rax), %rax	# gv_17->sv_any, D.13556
	movq	56(%rax), %rax	# _21->xgv_gp, D.13557
	movq	(%rax), %rax	# _22->gp_sv, D.13558
	movq	-328(%rbp), %rdx	# name, tmp107
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.13558,
	call	Perl_sv_setpv	#
	.loc 1 97 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.3
	testl	%eax, %eax	# PL_perldb.3
	je	.L21	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.4
	andl	$2, %eax	#, D.13555
	testl	%eax, %eax	# D.13555
	je	.L21	#,
	.loc 1 98 0 is_stmt 1
	movq	-296(%rbp), %rax	# gv, tmp108
	movq	%rax, %rdi	# tmp108,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _27->sv_any, D.13556
	movq	56(%rax), %rax	# _28->xgv_gp, D.13557
	movq	40(%rax), %rax	# _29->gp_hv, D.13559
	testq	%rax, %rax	# D.13559
	je	.L22	#,
	.loc 1 98 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# gv, tmp109
	movq	%rax, %rdi	# tmp109,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _31->sv_any, D.13556
	movq	56(%rax), %rax	# _32->xgv_gp, D.13557
	movq	40(%rax), %rax	# _33->gp_hv, iftmp.5
	jmp	.L23	#
.L22:
	.loc 1 98 0 discriminator 2
	movq	-296(%rbp), %rax	# gv, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_gv_AVadd	#
	movq	%rax, %rdi	# D.13550,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _36->sv_any, D.13556
	movq	56(%rax), %rax	# _37->xgv_gp, D.13557
	movq	40(%rax), %rax	# _38->gp_hv, iftmp.5
.L23:
	.loc 1 98 0 discriminator 3
	movl	$76, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.5,
	call	Perl_hv_magic	#
.L21:
	.loc 1 100 0 is_stmt 1
	leaq	-288(%rbp), %rax	#, tmp111
	cmpq	%rax, -312(%rbp)	# tmp111, tmpbuf
	je	.L24	#,
	.loc 1 101 0
	movq	-312(%rbp), %rax	# tmpbuf, tmp112
	movq	%rax, %rdi	# tmp112,
	call	Perl_safesysfree	#
.L24:
	.loc 1 102 0
	movq	-296(%rbp), %rax	# gv, D.13550
.L25:
	.loc 1 103 0
	movq	-24(%rbp), %rbx	# D.13560, tmp115
	xorq	%fs:40, %rbx	#, tmp115
	je	.L26	#,
	call	__stack_chk_fail	#
.L26:
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_gv_fetchfile, .-Perl_gv_fetchfile
	.section	.rodata
.LC3:
	.string	""
	.text
	.globl	Perl_gv_init
	.type	Perl_gv_init, @function
Perl_gv_init:
.LFB6:
	.loc 1 107 0
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
	movq	%rdi, -40(%rbp)	# gv, gv
	movq	%rsi, -48(%rbp)	# stash, stash
	movq	%rdx, -56(%rbp)	# name, name
	movq	%rcx, -64(%rbp)	# len, len
	movl	%r8d, -68(%rbp)	# multi, multi
	.loc 1 109 0
	movq	-40(%rbp), %rax	# gv, tmp179
	movl	12(%rax), %eax	# gv_8(D)->sv_flags, D.13563
	movzbl	%al, %eax	# D.13563, D.13563
	testl	%eax, %eax	# D.13563
	setne	%al	#, D.13564
	movb	%al, -25(%rbp)	# D.13564, doproto
	.loc 1 110 0
	cmpb	$0, -25(%rbp)	#, doproto
	je	.L28	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp180
	movl	12(%rax), %eax	# gv_8(D)->sv_flags, D.13563
	andl	$262144, %eax	#, D.13563
	testl	%eax, %eax	# D.13563
	je	.L28	#,
	movq	-40(%rbp), %rax	# gv, tmp181
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	(%rax), %rax	# MEM[(struct XPV *)_15].xpv_pv, iftmp.6
	jmp	.L29	#
.L28:
	.loc 1 110 0 discriminator 2
	movl	$0, %eax	#, iftmp.6
.L29:
	.loc 1 110 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.6, proto
	.loc 1 112 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp182
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	Perl_sv_upgrade	#
	.loc 1 113 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp183
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	16(%rax), %rax	# MEM[(struct XPV *)_19].xpv_len, D.13566
	testq	%rax, %rax	# D.13566
	je	.L30	#,
	.loc 1 114 0
	cmpq	$0, -24(%rbp)	#, proto
	je	.L31	#,
	.loc 1 115 0
	movq	-40(%rbp), %rax	# gv, tmp184
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	$0, (%rax)	#, MEM[(struct XPV *)_21].xpv_pv
	.loc 1 116 0
	movq	-40(%rbp), %rax	# gv, tmp185
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	$0, 16(%rax)	#, MEM[(struct XPV *)_22].xpv_len
	.loc 1 117 0
	movq	-40(%rbp), %rax	# gv, tmp186
	movl	12(%rax), %eax	# gv_8(D)->sv_flags, D.13563
	andl	$-67371009, %eax	#, D.13563
	movl	%eax, %edx	# D.13563, D.13563
	movq	-40(%rbp), %rax	# gv, tmp187
	movl	%edx, 12(%rax)	# D.13563, gv_8(D)->sv_flags
	jmp	.L30	#
.L31:
	.loc 1 119 0
	movq	-40(%rbp), %rax	# gv, tmp188
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	(%rax), %rax	# MEM[(struct XPV *)_25].xpv_pv, D.13567
	movq	%rax, %rdi	# D.13567,
	call	Perl_safesysfree	#
.L30:
	.loc 1 121 0
	movl	$88, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, %rbx	#, gp
	movl	$88, %edx	#,
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gp,
	call	memset	#
	.loc 1 122 0
	movq	-40(%rbp), %rax	# gv, tmp189
	movq	(%rax), %r12	# gv_8(D)->sv_any, D.13565
	movq	%rbx, %rdi	# gp,
	call	Perl_gp_ref	#
	movq	%rax, 56(%r12)	# D.13568, _28->xgv_gp
	.loc 1 123 0
	movq	-40(%rbp), %rax	# gv, tmp190
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rbx	# _30->xgv_gp, D.13568
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, (%rbx)	# D.13569, _31->gp_sv
	.loc 1 124 0
	movq	-40(%rbp), %rax	# gv, tmp191
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _33->xgv_gp, D.13568
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.7
	movl	72(%rdx), %edx	# PL_curcop.7_35->cop_line, D.13563
	movl	%edx, 72(%rax)	# D.13563, _34->gp_line
	.loc 1 125 0
	movq	-40(%rbp), %rax	# gv, tmp192
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rdx	# _37->xgv_gp, D.13568
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.9
	movq	56(%rax), %rax	# PL_curcop.9_39->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L32	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.10
	movq	56(%rax), %rax	# PL_curcop.10_41->cop_filegv, D.13570
	movq	(%rax), %rax	# _42->sv_any, D.13565
	movq	56(%rax), %rax	# _43->xgv_gp, D.13568
	movq	(%rax), %rax	# _44->gp_sv, D.13569
	testq	%rax, %rax	# D.13569
	je	.L32	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.12
	movq	56(%rax), %rax	# PL_curcop.12_46->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L33	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.13
	movq	56(%rax), %rax	# PL_curcop.13_48->cop_filegv, D.13570
	movq	(%rax), %rax	# _49->sv_any, D.13565
	movq	56(%rax), %rax	# _50->xgv_gp, D.13568
	movq	(%rax), %rax	# _51->gp_sv, iftmp.11
	jmp	.L34	#
.L33:
	.loc 1 125 0 discriminator 2
	movl	$0, %eax	#, iftmp.11
.L34:
	.loc 1 125 0 discriminator 3
	movq	(%rax), %rax	# iftmp.11_3->sv_any, D.13571
	movq	(%rax), %rax	# MEM[(struct XPV *)_54].xpv_pv, D.13567
	testq	%rax, %rax	# D.13567
	je	.L32	#,
	.loc 1 125 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.15
	movq	56(%rax), %rax	# PL_curcop.15_56->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L35	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.16
	movq	56(%rax), %rax	# PL_curcop.16_58->cop_filegv, D.13570
	movq	(%rax), %rax	# _59->sv_any, D.13565
	movq	56(%rax), %rax	# _60->xgv_gp, D.13568
	movq	(%rax), %rax	# _61->gp_sv, D.13569
	testq	%rax, %rax	# D.13569
	je	.L35	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.18
	movq	56(%rax), %rax	# PL_curcop.18_63->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L36	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.19
	movq	56(%rax), %rax	# PL_curcop.19_65->cop_filegv, D.13570
	movq	(%rax), %rax	# _66->sv_any, D.13565
	movq	56(%rax), %rax	# _67->xgv_gp, D.13568
	movq	(%rax), %rax	# _68->gp_sv, iftmp.17
	jmp	.L37	#
.L36:
	.loc 1 125 0 discriminator 2
	movl	$0, %eax	#, iftmp.17
.L37:
	.loc 1 125 0 discriminator 3
	movq	(%rax), %rax	# iftmp.17_5->sv_any, D.13571
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, iftmp.14
	jmp	.L38	#
.L35:
	.loc 1 125 0 discriminator 2
	movl	$0, %eax	#, iftmp.14
.L38:
	.loc 1 125 0 discriminator 3
	jmp	.L39	#
.L32:
	.loc 1 125 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.8
.L39:
	.loc 1 125 0 discriminator 3
	movq	%rax, 80(%rdx)	# iftmp.8, _38->gp_file
	.loc 1 126 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp193
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _76->xgv_gp, D.13568
	movl	$0, 64(%rax)	#, _77->gp_cvgen
	.loc 1 127 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp194
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _78->xgv_gp, D.13568
	movq	-40(%rbp), %rdx	# gv, tmp195
	movq	%rdx, 48(%rax)	# tmp195, _79->gp_egv
	.loc 1 128 0 discriminator 3
	movq	-40(%rbp), %rsi	# gv, tmp196
	movq	-40(%rbp), %rax	# gv, tmp197
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$42, %edx	#,
	movq	%rax, %rdi	# tmp197,
	call	Perl_sv_magic	#
	.loc 1 129 0 discriminator 3
	movq	-48(%rbp), %rax	# stash, tmp198
	movq	%rax, PL_Sv(%rip)	# tmp198, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.21
	testq	%rax, %rax	# PL_Sv.21
	je	.L41	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.22
	movl	8(%rax), %edx	# PL_Sv.22_82->sv_refcnt, D.13563
	addl	$1, %edx	#, D.13563
	movl	%edx, 8(%rax)	# D.13563, PL_Sv.22_82->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.22_82->sv_refcnt, D.13563
	testl	%eax, %eax	# D.13563
	je	.L41	#,
	.loc 1 129 0
	nop
.L41:
	.loc 1 129 0 discriminator 4
	movq	-40(%rbp), %rax	# gv, tmp199
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.23
	movq	%rdx, 80(%rax)	# PL_Sv.23, _88->xgv_stash
	.loc 1 130 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax	# gv, tmp200
	movq	(%rax), %rbx	# gv_8(D)->sv_any, D.13565
	movq	-64(%rbp), %rax	# len, tmp201
	movl	%eax, %edx	# tmp201, D.13572
	movq	-56(%rbp), %rax	# name, tmp202
	movl	%edx, %esi	# D.13572,
	movq	%rax, %rdi	# tmp202,
	call	Perl_savepvn	#
	movq	%rax, 64(%rbx)	# D.13567, _90->xgv_name
	.loc 1 131 0 discriminator 4
	movq	-40(%rbp), %rax	# gv, tmp203
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	-64(%rbp), %rdx	# len, tmp204
	movq	%rdx, 72(%rax)	# tmp204, _95->xgv_namelen
	.loc 1 132 0 discriminator 4
	cmpl	$0, -68(%rbp)	#, multi
	jne	.L42	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	cmpb	$0, -25(%rbp)	#, doproto
	je	.L43	#,
.L42:
	.loc 1 133 0 is_stmt 1
	movq	-40(%rbp), %rax	# gv, tmp205
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	-40(%rbp), %rdx	# gv, tmp206
	movq	(%rdx), %rdx	# gv_8(D)->sv_any, D.13565
	movzbl	88(%rdx), %edx	# _98->xgv_flags, D.13573
	orl	$2, %edx	#, D.13573
	movb	%dl, 88(%rax)	# D.13573, _97->xgv_flags
.L43:
	.loc 1 134 0
	cmpb	$0, -25(%rbp)	#, doproto
	je	.L27	#,
	.loc 1 135 0
	movq	-40(%rbp), %rax	# gv, tmp207
	movl	12(%rax), %eax	# gv_8(D)->sv_flags, D.13563
	andl	$2130640895, %eax	#, D.13563
	movl	%eax, %edx	# D.13563, D.13563
	movq	-40(%rbp), %rax	# gv, tmp208
	movl	%edx, 12(%rax)	# D.13563, gv_8(D)->sv_flags
	.loc 1 136 0
	call	Perl_push_scope	#
	.loc 1 138 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	Perl_start_subparse	#
	.loc 1 139 0
	movq	-40(%rbp), %rax	# gv, tmp209
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _103->xgv_gp, D.13568
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.24
	movq	%rdx, 56(%rax)	# PL_compcv.24, _104->gp_cv
	.loc 1 140 0
	call	Perl_pop_scope	#
	.loc 1 142 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.25
	addl	$1, %eax	#, PL_sub_generation.26
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.26, PL_sub_generation
	.loc 1 143 0
	movq	-40(%rbp), %rax	# gv, tmp210
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _108->xgv_gp, D.13568
	movq	56(%rax), %rax	# _109->gp_cv, D.13574
	movq	(%rax), %rax	# _110->sv_any, D.13575
	movq	-40(%rbp), %rdx	# gv, tmp211
	movq	%rdx, 96(%rax)	# tmp211, _111->xcv_gv
	.loc 1 144 0
	movq	-40(%rbp), %rax	# gv, tmp212
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _112->xgv_gp, D.13568
	movq	56(%rax), %rax	# _113->gp_cv, D.13574
	movq	(%rax), %rdx	# _114->sv_any, D.13575
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.28
	movq	56(%rax), %rax	# PL_curcop.28_116->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L45	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.29
	movq	56(%rax), %rax	# PL_curcop.29_118->cop_filegv, D.13570
	movq	(%rax), %rax	# _119->sv_any, D.13565
	movq	56(%rax), %rax	# _120->xgv_gp, D.13568
	movq	(%rax), %rax	# _121->gp_sv, D.13569
	testq	%rax, %rax	# D.13569
	je	.L45	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.31
	movq	56(%rax), %rax	# PL_curcop.31_123->cop_filegv, D.13570
	testq	%rax, %rax	# D.13570
	je	.L46	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.32
	movq	56(%rax), %rax	# PL_curcop.32_125->cop_filegv, D.13570
	movq	(%rax), %rax	# _126->sv_any, D.13565
	movq	56(%rax), %rax	# _127->xgv_gp, D.13568
	movq	(%rax), %rax	# _128->gp_sv, iftmp.30
	jmp	.L47	#
.L46:
	.loc 1 144 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L47:
	.loc 1 144 0 discriminator 3
	movq	(%rax), %rax	# iftmp.30_7->sv_any, D.13571
	movq	(%rax), %rax	# MEM[(struct XPV *)_131].xpv_pv, iftmp.27
	jmp	.L48	#
.L45:
	.loc 1 144 0 discriminator 2
	movl	$0, %eax	#, iftmp.27
.L48:
	.loc 1 144 0 discriminator 3
	movq	%rax, 104(%rdx)	# iftmp.27, _115->xcv_file
	.loc 1 145 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp213
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _134->xgv_gp, D.13568
	movq	56(%rax), %rax	# _135->gp_cv, D.13574
	movq	(%rax), %rax	# _136->sv_any, D.13575
	movq	PL_curstash(%rip), %rdx	# PL_curstash, PL_curstash.33
	movq	%rdx, 56(%rax)	# PL_curstash.33, _137->xcv_stash
	.loc 1 153 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, proto
	je	.L27	#,
	.loc 1 154 0
	movq	-40(%rbp), %rax	# gv, tmp214
	movq	(%rax), %rax	# gv_8(D)->sv_any, D.13565
	movq	56(%rax), %rax	# _139->xgv_gp, D.13568
	movq	56(%rax), %rax	# _140->gp_cv, D.13574
	movq	-24(%rbp), %rdx	# proto, tmp215
	movq	%rdx, %rsi	# tmp215,
	movq	%rax, %rdi	# D.13574,
	call	Perl_sv_setpv	#
	.loc 1 155 0
	movq	-24(%rbp), %rax	# proto, tmp216
	movq	%rax, %rdi	# tmp216,
	call	Perl_safesysfree	#
.L27:
	.loc 1 158 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_gv_init, .-Perl_gv_init
	.type	S_gv_init_sv, @function
S_gv_init_sv:
.LFB7:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gv, gv
	movl	%esi, -12(%rbp)	# sv_type, sv_type
	.loc 1 163 0
	movl	-12(%rbp), %eax	# sv_type, sv_type
	cmpl	$11, %eax	#, sv_type
	je	.L51	#,
	cmpl	$15, %eax	#, sv_type
	je	.L52	#,
	cmpl	$10, %eax	#, sv_type
	je	.L53	#,
	jmp	.L49	#
.L52:
	.loc 1 165 0
	cmpq	$0, -8(%rbp)	#, gv
	je	.L54	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gv, tmp94
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_2(D)].sv_flags, D.13577
	movzbl	%al, %eax	# D.13577, D.13577
	cmpl	$13, %eax	#, D.13577
	jne	.L54	#,
	movq	-8(%rbp), %rax	# gv, tmp95
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13578
	movq	56(%rax), %rax	# _5->xgv_gp, D.13579
	testq	%rax, %rax	# D.13579
	je	.L54	#,
	movq	-8(%rbp), %rax	# gv, tmp96
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13578
	movq	56(%rax), %rax	# _7->xgv_gp, D.13579
	movq	16(%rax), %rax	# _8->gp_io, D.13580
	testq	%rax, %rax	# D.13580
	je	.L54	#,
	.loc 1 166 0 is_stmt 1 discriminator 1
	jmp	.L49	#
.L54:
	.loc 1 165 0 discriminator 2
	movq	-8(%rbp), %rax	# gv, tmp98
	movq	%rax, %rdi	# tmp98,
	call	Perl_gv_IOadd	#
	.loc 1 166 0 discriminator 2
	jmp	.L49	#
.L53:
	.loc 1 168 0
	movq	-8(%rbp), %rax	# gv, tmp99
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13578
	movq	56(%rax), %rax	# _17->xgv_gp, D.13579
	movq	32(%rax), %rax	# _18->gp_av, D.13582
	testq	%rax, %rax	# D.13582
	je	.L56	#,
	.loc 1 169 0 discriminator 1
	jmp	.L49	#
.L56:
	.loc 1 168 0 discriminator 2
	movq	-8(%rbp), %rax	# gv, tmp101
	movq	%rax, %rdi	# tmp101,
	call	Perl_gv_AVadd	#
	.loc 1 169 0 discriminator 2
	jmp	.L49	#
.L51:
	.loc 1 171 0
	movq	-8(%rbp), %rax	# gv, tmp102
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13578
	movq	56(%rax), %rax	# _27->xgv_gp, D.13579
	movq	40(%rax), %rax	# _28->gp_hv, D.13583
	testq	%rax, %rax	# D.13583
	jne	.L59	#,
	.loc 1 171 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# gv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_gv_HVadd	#
.L59:
	.loc 1 172 0 is_stmt 1
	nop
.L49:
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	S_gv_init_sv, .-S_gv_init_sv
	.section	.rodata
.LC4:
	.string	"UNIVERSAL"
	.align 8
.LC5:
	.string	"Can't use anonymous symbol table for method lookup"
	.align 8
.LC6:
	.string	"Recursive inheritance detected while looking for method '%s' in package '%s'"
.LC7:
	.string	"ISA"
.LC8:
	.string	"::SUPER"
.LC9:
	.string	"Cannot create %s::ISA"
	.align 8
.LC10:
	.string	"Can't locate package %_ for @%s::ISA"
	.text
	.globl	Perl_gv_fetchmeth
	.type	Perl_gv_fetchmeth, @function
Perl_gv_fetchmeth:
.LFB8:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# stash, stash
	movq	%rsi, -128(%rbp)	# name, name
	movq	%rdx, -136(%rbp)	# len, len
	movl	%ecx, -140(%rbp)	# level, level
	.loc 1 207 0
	cmpq	$0, -120(%rbp)	#, stash
	jne	.L61	#,
	.loc 1 208 0
	movl	$-1, -140(%rbp)	#, level
	.loc 1 209 0
	movl	$0, %edx	#,
	movl	$9, %esi	#,
	movl	$.LC4, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -120(%rbp)	# tmp179, stash
	cmpq	$0, -120(%rbp)	#, stash
	jne	.L61	#,
	.loc 1 210 0
	movl	$0, %eax	#, D.13584
	jmp	.L62	#
.L61:
	.loc 1 213 0
	movq	-120(%rbp), %rax	# stash, tmp180
	movq	(%rax), %rax	# stash_1->sv_any, D.13585
	movq	80(%rax), %rax	# _19->xhv_name, D.13586
	testq	%rax, %rax	# D.13586
	jne	.L63	#,
	.loc 1 214 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L63:
	.loc 1 217 0
	cmpl	$100, -140(%rbp)	#, level
	jg	.L64	#,
	.loc 1 217 0 is_stmt 0 discriminator 1
	cmpl	$-100, -140(%rbp)	#, level
	jge	.L65	#,
.L64:
	.loc 1 219 0 is_stmt 1
	movq	-120(%rbp), %rax	# stash, tmp181
	movq	(%rax), %rax	# stash_1->sv_any, D.13585
	.loc 1 218 0
	movq	80(%rax), %rdx	# _21->xhv_name, D.13586
	movq	-128(%rbp), %rax	# name, tmp182
	movq	%rax, %rsi	# tmp182,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L65:
	.loc 1 223 0
	movl	-140(%rbp), %eax	# level, tmp184
	notl	%eax	# tmp183
	shrl	$31, %eax	#, tmp185
	movzbl	%al, %ecx	# D.13587, D.13588
	movq	-136(%rbp), %rax	# len, tmp186
	movl	%eax, %edx	# tmp186, D.13588
	movq	-128(%rbp), %rsi	# name, tmp187
	movq	-120(%rbp), %rax	# stash, tmp188
	movq	%rax, %rdi	# tmp188,
	call	Perl_hv_fetch	#
	movq	%rax, -64(%rbp)	# tmp189, gvp
	.loc 1 224 0
	cmpq	$0, -64(%rbp)	#, gvp
	jne	.L66	#,
	.loc 1 225 0
	movq	$0, -88(%rbp)	#, topgv
	jmp	.L67	#
.L66:
	.loc 1 227 0
	movq	-64(%rbp), %rax	# gvp, tmp190
	movq	(%rax), %rax	# *gvp_28, tmp191
	movq	%rax, -88(%rbp)	# tmp191, topgv
	.loc 1 228 0
	movq	-88(%rbp), %rax	# topgv, tmp192
	movl	12(%rax), %eax	# topgv_30->sv_flags, D.13589
	movzbl	%al, %eax	# D.13589, D.13589
	cmpl	$13, %eax	#, D.13589
	je	.L68	#,
	.loc 1 229 0
	movq	-136(%rbp), %rcx	# len, tmp193
	movq	-128(%rbp), %rdx	# name, tmp194
	movq	-120(%rbp), %rsi	# stash, tmp195
	movq	-88(%rbp), %rax	# topgv, tmp196
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp196,
	call	Perl_gv_init	#
.L68:
	.loc 1 230 0
	movq	-88(%rbp), %rax	# topgv, tmp197
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _33->xgv_gp, D.13591
	movq	56(%rax), %rax	# _34->gp_cv, tmp198
	movq	%rax, -56(%rbp)	# tmp198, cv
	cmpq	$0, -56(%rbp)	#, cv
	je	.L69	#,
	.loc 1 232 0
	movq	-88(%rbp), %rax	# topgv, tmp199
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _36->xgv_gp, D.13591
	movl	64(%rax), %eax	# _37->gp_cvgen, D.13589
	testl	%eax, %eax	# D.13589
	je	.L70	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# topgv, tmp200
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _39->xgv_gp, D.13591
	movl	64(%rax), %edx	# _40->gp_cvgen, D.13589
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.37
	cmpl	%eax, %edx	# PL_sub_generation.37, D.13589
	jne	.L71	#,
.L70:
	.loc 1 233 0 is_stmt 1
	movq	-88(%rbp), %rax	# topgv, D.13584
	jmp	.L62	#
.L71:
	.loc 1 235 0
	movq	-56(%rbp), %rax	# cv, tmp201
	movq	%rax, %rdi	# tmp201,
	call	Perl_sv_free	#
	.loc 1 236 0
	movq	-88(%rbp), %rax	# topgv, tmp202
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _43->xgv_gp, D.13591
	movq	$0, -56(%rbp)	#, cv
	movq	-56(%rbp), %rdx	# cv, tmp203
	movq	%rdx, 56(%rax)	# tmp203, _44->gp_cv
	.loc 1 237 0
	movq	-88(%rbp), %rax	# topgv, tmp204
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _46->xgv_gp, D.13591
	movl	$0, 64(%rax)	#, _47->gp_cvgen
	jmp	.L67	#
.L69:
	.loc 1 239 0
	movq	-88(%rbp), %rax	# topgv, tmp205
	movq	(%rax), %rax	# topgv_30->sv_any, D.13590
	movq	56(%rax), %rax	# _49->xgv_gp, D.13591
	movl	64(%rax), %edx	# _50->gp_cvgen, D.13589
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.38
	cmpl	%eax, %edx	# PL_sub_generation.38, D.13589
	jne	.L67	#,
	.loc 1 240 0
	movl	$0, %eax	#, D.13584
	jmp	.L62	#
.L67:
	.loc 1 243 0
	movq	-120(%rbp), %rax	# stash, tmp206
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	Perl_hv_fetch	#
	movq	%rax, -64(%rbp)	# tmp207, gvp
	.loc 1 244 0
	cmpq	$0, -64(%rbp)	#, gvp
	je	.L72	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# gvp, tmp208
	movq	(%rax), %rax	# *gvp_54, tmp209
	movq	%rax, -80(%rbp)	# tmp209, gv
	cmpq	$0, -80(%rbp)	#, gv
	je	.L72	#,
	cmpq	$PL_sv_undef, -80(%rbp)	#, gv
	je	.L72	#,
	movq	-80(%rbp), %rax	# gv, tmp210
	movq	(%rax), %rax	# gv_55->sv_any, D.13590
	movq	56(%rax), %rax	# _56->xgv_gp, D.13591
	movq	32(%rax), %rax	# _57->gp_av, iftmp.39
	jmp	.L73	#
.L72:
	.loc 1 244 0 discriminator 2
	movl	$0, %eax	#, iftmp.39
.L73:
	.loc 1 244 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.39, av
	.loc 1 247 0 is_stmt 1 discriminator 3
	cmpq	$0, -96(%rbp)	#, av
	je	.L74	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# av, tmp211
	movq	(%rax), %rax	# av_60->sv_any, D.13592
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_61].xmg_magic, D.13593
	testq	%rax, %rax	# D.13593
	jne	.L75	#,
.L74:
.LBB2:
	.loc 1 248 0 is_stmt 1
	movq	-120(%rbp), %rax	# stash, tmp212
	movq	(%rax), %rax	# stash_1->sv_any, D.13585
	movq	80(%rax), %rax	# _63->xhv_name, tmp213
	movq	%rax, -48(%rbp)	# tmp213, packname
	.loc 1 249 0
	movq	-48(%rbp), %rax	# packname, tmp214
	movq	%rax, %rdi	# tmp214,
	call	strlen	#
	movq	%rax, -40(%rbp)	# tmp215, packlen
	.loc 1 251 0
	cmpq	$6, -40(%rbp)	#, packlen
	jbe	.L75	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# packlen, tmp216
	leaq	-7(%rax), %rdx	#, D.13594
	movq	-48(%rbp), %rax	# packname, tmp217
	addq	%rdx, %rax	# D.13594, D.13586
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.13586,
	call	strcmp	#
	testl	%eax, %eax	# D.13588
	jne	.L75	#,
.LBB3:
	.loc 1 254 0 is_stmt 1
	subq	$7, -40(%rbp)	#, packlen
	.loc 1 255 0
	movq	-40(%rbp), %rax	# packlen, tmp218
	movl	%eax, %ecx	# tmp218, D.13589
	movq	-48(%rbp), %rax	# packname, tmp219
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.13589,
	movq	%rax, %rdi	# tmp219,
	call	Perl_gv_stashpvn	#
	movq	%rax, -32(%rbp)	# tmp220, basestash
	.loc 1 256 0
	movq	-32(%rbp), %rax	# basestash, tmp221
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	Perl_hv_fetch	#
	movq	%rax, -64(%rbp)	# tmp222, gvp
	.loc 1 257 0
	cmpq	$0, -64(%rbp)	#, gvp
	je	.L75	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# gvp, tmp223
	movq	(%rax), %rax	# *gvp_72, tmp224
	movq	%rax, -80(%rbp)	# tmp224, gv
	cmpq	$PL_sv_undef, -80(%rbp)	#, gv
	je	.L75	#,
	movq	-80(%rbp), %rax	# gv, tmp225
	movq	(%rax), %rax	# gv_73->sv_any, D.13590
	movq	56(%rax), %rax	# _74->xgv_gp, D.13591
	movq	32(%rax), %rax	# _75->gp_av, tmp226
	movq	%rax, -96(%rbp)	# tmp226, av
	cmpq	$0, -96(%rbp)	#, av
	je	.L75	#,
	.loc 1 258 0 is_stmt 1
	movq	-120(%rbp), %rax	# stash, tmp227
	movl	$1, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	Perl_hv_fetch	#
	movq	%rax, -64(%rbp)	# tmp228, gvp
	.loc 1 259 0
	cmpq	$0, -64(%rbp)	#, gvp
	je	.L76	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# gvp, tmp229
	movq	(%rax), %rax	# *gvp_77, tmp230
	movq	%rax, -80(%rbp)	# tmp230, gv
	cmpq	$0, -80(%rbp)	#, gv
	jne	.L77	#,
.L76:
	.loc 1 260 0 is_stmt 1
	movq	-120(%rbp), %rax	# stash, tmp231
	movq	(%rax), %rax	# stash_1->sv_any, D.13585
	movq	80(%rax), %rax	# _79->xhv_name, D.13586
	movq	%rax, %rsi	# D.13586,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L77:
	.loc 1 261 0
	movq	-80(%rbp), %rax	# gv, tmp232
	movl	12(%rax), %eax	# gv_6->sv_flags, D.13589
	movzbl	%al, %eax	# D.13589, D.13589
	cmpl	$13, %eax	#, D.13589
	je	.L78	#,
	.loc 1 262 0
	movq	-120(%rbp), %rsi	# stash, tmp233
	movq	-80(%rbp), %rax	# gv, tmp234
	movl	$1, %r8d	#,
	movl	$3, %ecx	#,
	movl	$.LC7, %edx	#,
	movq	%rax, %rdi	# tmp234,
	call	Perl_gv_init	#
.L78:
	.loc 1 263 0
	movq	-80(%rbp), %rax	# gv, tmp235
	movq	(%rax), %rax	# gv_6->sv_any, D.13590
	movq	56(%rax), %rax	# _83->xgv_gp, D.13591
	movq	32(%rax), %rax	# _84->gp_av, D.13595
	movq	%rax, %rdi	# D.13595,
	call	Perl_sv_free	#
	.loc 1 264 0
	movq	-96(%rbp), %rax	# av, tmp236
	movq	%rax, PL_Sv(%rip)	# tmp236, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.41
	testq	%rax, %rax	# PL_Sv.41
	je	.L80	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.42
	movl	8(%rax), %edx	# PL_Sv.42_87->sv_refcnt, D.13589
	addl	$1, %edx	#, D.13589
	movl	%edx, 8(%rax)	# D.13589, PL_Sv.42_87->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.42_87->sv_refcnt, D.13589
	testl	%eax, %eax	# D.13589
	je	.L80	#,
	.loc 1 264 0
	nop
.L80:
	.loc 1 264 0 discriminator 4
	movq	-80(%rbp), %rax	# gv, tmp237
	movq	(%rax), %rax	# gv_6->sv_any, D.13590
	movq	56(%rax), %rax	# _93->xgv_gp, D.13591
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.43
	movq	%rdx, 32(%rax)	# PL_Sv.43, _94->gp_av
.L75:
.LBE3:
.LBE2:
	.loc 1 269 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, av
	je	.L81	#,
.LBB4:
	.loc 1 270 0
	movq	-96(%rbp), %rax	# av, tmp238
	movq	(%rax), %rax	# av_3->sv_any, D.13592
	movq	(%rax), %rax	# _96->xav_array, tmp239
	movq	%rax, -72(%rbp)	# tmp239, svp
	.loc 1 272 0
	movq	-96(%rbp), %rax	# av, tmp240
	movq	(%rax), %rax	# av_3->sv_any, D.13592
	movq	8(%rax), %rax	# _98->xav_fill, D.13596
	addl	$1, %eax	#, D.13597
	movl	%eax, -100(%rbp)	# D.13597, items
	.loc 1 273 0
	jmp	.L82	#
.L90:
.LBB5:
	.loc 1 274 0
	movq	-72(%rbp), %rax	# svp, svp.44
	leaq	8(%rax), %rdx	#, tmp241
	movq	%rdx, -72(%rbp)	# tmp241, svp
	movq	(%rax), %rax	# *svp.44_105, tmp242
	movq	%rax, -24(%rbp)	# tmp242, sv
	.loc 1 275 0
	movq	-24(%rbp), %rax	# sv, tmp243
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	Perl_gv_stashsv	#
	movq	%rax, -16(%rbp)	# tmp244, basestash
	.loc 1 276 0
	cmpq	$0, -16(%rbp)	#, basestash
	jne	.L83	#,
	.loc 1 277 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.45
	movq	80(%rax), %rax	# PL_curcop.45_109->cop_warnings, D.13598
	testq	%rax, %rax	# D.13598
	je	.L84	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.46
	movq	80(%rax), %rax	# PL_curcop.46_111->cop_warnings, D.13598
	cmpq	$32, %rax	#, D.13598
	je	.L84	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.47
	movq	80(%rax), %rax	# PL_curcop.47_113->cop_warnings, D.13598
	cmpq	$16, %rax	#, D.13598
	je	.L85	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.48
	movq	80(%rax), %rax	# PL_curcop.48_115->cop_warnings, D.13598
	movq	(%rax), %rax	# _116->sv_any, D.13599
	movq	(%rax), %rax	# MEM[(struct XPV *)_117].xpv_pv, D.13586
	addq	$3, %rax	#, D.13586
	movzbl	(%rax), %eax	# *_119, D.13600
	movsbl	%al, %eax	# D.13600, D.13588
	andl	$1, %eax	#, D.13588
	testl	%eax, %eax	# D.13588
	jne	.L85	#,
.L84:
	.loc 1 277 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.49
	movq	80(%rax), %rax	# PL_curcop.49_123->cop_warnings, D.13598
	testq	%rax, %rax	# D.13598
	jne	.L86	#,
	.loc 1 277 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.50
	movzbl	%al, %eax	# PL_dowarn.50, D.13588
	andl	$1, %eax	#, D.13588
	testl	%eax, %eax	# D.13588
	je	.L86	#,
.L85:
	.loc 1 279 0 is_stmt 1
	movq	-120(%rbp), %rax	# stash, tmp245
	movq	(%rax), %rax	# stash_1->sv_any, D.13585
	.loc 1 278 0
	movq	80(%rax), %rdx	# _128->xhv_name, D.13586
	movq	-24(%rbp), %rax	# sv, tmp246
	movq	%rdx, %rcx	# D.13586,
	movq	%rax, %rdx	# tmp246,
	movl	$.LC10, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 280 0
	jmp	.L82	#
.L86:
	jmp	.L82	#
.L83:
	.loc 1 282 0
	cmpl	$0, -140(%rbp)	#, level
	js	.L87	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# level, tmp247
	addl	$1, %eax	#, iftmp.51
	jmp	.L88	#
.L87:
	.loc 1 282 0 discriminator 2
	movl	-140(%rbp), %eax	# level, tmp248
	subl	$1, %eax	#, iftmp.51
.L88:
	.loc 1 282 0 discriminator 3
	movq	-136(%rbp), %rdx	# len, tmp249
	movq	-128(%rbp), %rsi	# name, tmp250
	movq	-16(%rbp), %rdi	# basestash, tmp251
	movl	%eax, %ecx	# iftmp.51,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -80(%rbp)	# tmp252, gv
	.loc 1 284 0 is_stmt 1 discriminator 3
	cmpq	$0, -80(%rbp)	#, gv
	je	.L82	#,
	.loc 1 285 0
	jmp	.L89	#
.L82:
.LBE5:
	.loc 1 273 0 discriminator 1
	movl	-100(%rbp), %eax	# items, items.52
	leal	-1(%rax), %edx	#, tmp253
	movl	%edx, -100(%rbp)	# tmp253, items
	testl	%eax, %eax	# items.52
	jne	.L90	#,
.L81:
.LBE4:
	.loc 1 291 0
	cmpl	$0, -140(%rbp)	#, level
	je	.L91	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	cmpl	$-1, -140(%rbp)	#, level
	jne	.L92	#,
.L91:
.LBB6:
	.loc 1 294 0 is_stmt 1
	movl	$0, %edx	#,
	movl	$9, %esi	#,
	movl	$.LC4, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -8(%rbp)	# tmp254, lastchance
	cmpq	$0, -8(%rbp)	#, lastchance
	je	.L92	#,
	.loc 1 295 0
	cmpl	$0, -140(%rbp)	#, level
	js	.L93	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# level, tmp255
	addl	$1, %eax	#, iftmp.53
	jmp	.L94	#
.L93:
	.loc 1 295 0 discriminator 2
	movl	-140(%rbp), %eax	# level, tmp256
	subl	$1, %eax	#, iftmp.53
.L94:
	.loc 1 295 0 discriminator 3
	movq	-136(%rbp), %rdx	# len, tmp257
	movq	-128(%rbp), %rsi	# name, tmp258
	movq	-8(%rbp), %rdi	# lastchance, tmp259
	movl	%eax, %ecx	# iftmp.53,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -80(%rbp)	# tmp260, gv
	cmpq	$0, -80(%rbp)	#, gv
	je	.L95	#,
.L89:
	.loc 1 304 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, topgv
	je	.L96	#,
	.loc 1 305 0 discriminator 1
	movq	-88(%rbp), %rax	# topgv, tmp261
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _144->xgv_gp, D.13591
	movl	8(%rax), %eax	# _145->gp_refcnt, D.13589
	.loc 1 304 0 discriminator 1
	cmpl	$1, %eax	#, D.13589
	jne	.L96	#,
	.loc 1 306 0
	movq	-80(%rbp), %rax	# gv, tmp262
	movq	(%rax), %rax	# gv_7->sv_any, D.13590
	movq	56(%rax), %rax	# _147->xgv_gp, D.13591
	movq	56(%rax), %rax	# _148->gp_cv, tmp263
	movq	%rax, -56(%rbp)	# tmp263, cv
	.loc 1 305 0
	cmpq	$0, -56(%rbp)	#, cv
	je	.L96	#,
	.loc 1 307 0
	movq	-56(%rbp), %rax	# cv, tmp264
	movq	(%rax), %rax	# cv_149->sv_any, D.13601
	movq	72(%rax), %rax	# _150->xcv_root, D.13602
	.loc 1 306 0
	testq	%rax, %rax	# D.13602
	jne	.L97	#,
	.loc 1 307 0
	movq	-56(%rbp), %rax	# cv, tmp265
	movq	(%rax), %rax	# cv_149->sv_any, D.13601
	movq	80(%rax), %rax	# _152->xcv_xsub, D.13603
	testq	%rax, %rax	# D.13603
	je	.L96	#,
.L97:
	.loc 1 309 0
	movq	-88(%rbp), %rax	# topgv, tmp266
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _154->xgv_gp, D.13591
	movq	56(%rax), %rax	# _155->gp_cv, tmp267
	movq	%rax, -56(%rbp)	# tmp267, cv
	cmpq	$0, -56(%rbp)	#, cv
	je	.L98	#,
	.loc 1 310 0
	movq	-56(%rbp), %rax	# cv, tmp268
	movq	%rax, %rdi	# tmp268,
	call	Perl_sv_free	#
.L98:
	.loc 1 311 0
	movq	-80(%rbp), %rax	# gv, tmp269
	movq	(%rax), %rax	# gv_7->sv_any, D.13590
	movq	56(%rax), %rax	# _157->xgv_gp, D.13591
	movq	56(%rax), %rax	# _158->gp_cv, PL_Sv.54
	movq	%rax, PL_Sv(%rip)	# PL_Sv.54, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.56
	testq	%rax, %rax	# PL_Sv.56
	je	.L100	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.57
	movl	8(%rax), %edx	# PL_Sv.57_161->sv_refcnt, D.13589
	addl	$1, %edx	#, D.13589
	movl	%edx, 8(%rax)	# D.13589, PL_Sv.57_161->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.57_161->sv_refcnt, D.13589
	testl	%eax, %eax	# D.13589
	je	.L100	#,
	.loc 1 311 0
	nop
.L100:
	.loc 1 311 0 discriminator 4
	movq	-88(%rbp), %rax	# topgv, tmp270
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _167->xgv_gp, D.13591
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.58
	movq	%rdx, 56(%rax)	# PL_Sv.58, _168->gp_cv
	.loc 1 312 0 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax	# topgv, tmp271
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _170->xgv_gp, D.13591
	movl	PL_sub_generation(%rip), %edx	# PL_sub_generation, PL_sub_generation.59
	movl	%edx, 64(%rax)	# PL_sub_generation.59, _171->gp_cvgen
.L96:
	.loc 1 314 0
	movq	-80(%rbp), %rax	# gv, D.13584
	jmp	.L62	#
.L95:
	.loc 1 316 0
	cmpq	$0, -88(%rbp)	#, topgv
	je	.L92	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# topgv, tmp272
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _137->xgv_gp, D.13591
	movl	8(%rax), %eax	# _138->gp_refcnt, D.13589
	cmpl	$1, %eax	#, D.13589
	jne	.L92	#,
	.loc 1 318 0 is_stmt 1
	movq	-88(%rbp), %rax	# topgv, tmp273
	movq	(%rax), %rax	# topgv_4->sv_any, D.13590
	movq	56(%rax), %rax	# _140->xgv_gp, D.13591
	movl	PL_sub_generation(%rip), %edx	# PL_sub_generation, PL_sub_generation.60
	movl	%edx, 64(%rax)	# PL_sub_generation.60, _141->gp_cvgen
.L92:
.LBE6:
	.loc 1 323 0
	movl	$0, %eax	#, D.13584
.L62:
	.loc 1 324 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_gv_fetchmeth, .-Perl_gv_fetchmeth
	.globl	Perl_gv_fetchmeth_autoload
	.type	Perl_gv_fetchmeth_autoload, @function
Perl_gv_fetchmeth_autoload:
.LFB9:
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# stash, stash
	movq	%rsi, -96(%rbp)	# name, name
	movq	%rdx, -104(%rbp)	# len, len
	movl	%ecx, -108(%rbp)	# level, level
	.loc 1 341 0
	movq	%fs:40, %rax	#, tmp100
	movq	%rax, -24(%rbp)	# tmp100, D.13619
	xorl	%eax, %eax	# tmp100
	.loc 1 342 0
	movl	-108(%rbp), %ecx	# level, tmp71
	movq	-104(%rbp), %rdx	# len, tmp72
	movq	-96(%rbp), %rsi	# name, tmp73
	movq	-88(%rbp), %rax	# stash, tmp74
	movq	%rax, %rdi	# tmp74,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -80(%rbp)	# tmp75, gv
	.loc 1 344 0
	cmpq	$0, -80(%rbp)	#, gv
	jne	.L102	#,
.LBB7:
	.loc 1 345 0
	movabsq	$4918299457232328001, %rax	#, tmp102
	movq	%rax, -48(%rbp)	# tmp102, autoload
	movb	$0, -40(%rbp)	#, autoload
	.loc 1 346 0
	movq	$8, -72(%rbp)	#, autolen
	.loc 1 350 0
	cmpq	$0, -88(%rbp)	#, stash
	jne	.L103	#,
	.loc 1 351 0
	movl	$0, %eax	#, D.13611
	jmp	.L110	#
.L103:
	.loc 1 352 0
	movq	-104(%rbp), %rax	# len, tmp76
	cmpq	-72(%rbp), %rax	# autolen, tmp76
	jne	.L105	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rdx	# autolen, tmp77
	leaq	-48(%rbp), %rcx	#, tmp78
	movq	-96(%rbp), %rax	# name, tmp79
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	strncmp	#
	testl	%eax, %eax	# D.13612
	jne	.L105	#,
	.loc 1 353 0 is_stmt 1
	movl	$0, %eax	#, D.13611
	jmp	.L110	#
.L105:
	.loc 1 354 0
	movq	-72(%rbp), %rdx	# autolen, tmp80
	leaq	-48(%rbp), %rsi	#, tmp81
	movq	-88(%rbp), %rax	# stash, tmp82
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp82,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -80(%rbp)	# tmp83, gv
	cmpq	$0, -80(%rbp)	#, gv
	jne	.L106	#,
	.loc 1 355 0
	movl	$0, %eax	#, D.13611
	jmp	.L110	#
.L106:
	.loc 1 356 0
	movq	-80(%rbp), %rax	# gv, tmp84
	movq	(%rax), %rax	# gv_12->sv_any, D.13613
	movq	56(%rax), %rax	# _14->xgv_gp, D.13614
	movq	56(%rax), %rax	# _15->gp_cv, tmp85
	movq	%rax, -64(%rbp)	# tmp85, cv
	.loc 1 357 0
	movq	-64(%rbp), %rax	# cv, tmp86
	movq	(%rax), %rax	# cv_16->sv_any, D.13615
	movq	72(%rax), %rax	# _17->xcv_root, D.13616
	testq	%rax, %rax	# D.13616
	jne	.L107	#,
	.loc 1 357 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# cv, tmp87
	movq	(%rax), %rax	# cv_16->sv_any, D.13615
	movq	80(%rax), %rax	# _19->xcv_xsub, D.13617
	testq	%rax, %rax	# D.13617
	jne	.L107	#,
	.loc 1 358 0 is_stmt 1
	movl	$0, %eax	#, D.13611
	jmp	.L110	#
.L107:
	.loc 1 360 0
	cmpl	$0, -108(%rbp)	#, level
	jns	.L108	#,
	.loc 1 361 0
	movq	-104(%rbp), %rdx	# len, tmp88
	movq	-96(%rbp), %rsi	# name, tmp89
	movq	-88(%rbp), %rax	# stash, tmp90
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_gv_fetchmeth	#
.L108:
	.loc 1 362 0
	movl	-108(%rbp), %eax	# level, tmp92
	notl	%eax	# tmp91
	shrl	$31, %eax	#, tmp93
	movzbl	%al, %ecx	# D.13618, D.13612
	movq	-104(%rbp), %rax	# len, tmp94
	movl	%eax, %edx	# tmp94, D.13612
	movq	-96(%rbp), %rsi	# name, tmp95
	movq	-88(%rbp), %rax	# stash, tmp96
	movq	%rax, %rdi	# tmp96,
	call	Perl_hv_fetch	#
	movq	%rax, -56(%rbp)	# tmp97, gvp
	.loc 1 363 0
	cmpq	$0, -56(%rbp)	#, gvp
	jne	.L109	#,
	.loc 1 364 0
	movl	$0, %eax	#, D.13611
	jmp	.L110	#
.L109:
	.loc 1 365 0
	movq	-56(%rbp), %rax	# gvp, tmp98
	movq	(%rax), %rax	# *gvp_25, D.13611
	jmp	.L110	#
.L102:
.LBE7:
	.loc 1 367 0
	movq	-80(%rbp), %rax	# gv, D.13611
.L110:
	.loc 1 368 0
	movq	-24(%rbp), %rbx	# D.13619, tmp101
	xorq	%fs:40, %rbx	#, tmp101
	je	.L111	#,
	call	__stack_chk_fail	#
.L111:
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_gv_fetchmeth_autoload, .-Perl_gv_fetchmeth_autoload
	.globl	Perl_gv_fetchmethod
	.type	Perl_gv_fetchmethod, @function
Perl_gv_fetchmethod:
.LFB10:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# stash, stash
	movq	%rsi, -16(%rbp)	# name, name
	.loc 1 381 0
	movq	-16(%rbp), %rcx	# name, tmp61
	movq	-8(%rbp), %rax	# stash, tmp62
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_gv_fetchmethod_autoload	#
	.loc 1 382 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_gv_fetchmethod, .-Perl_gv_fetchmethod
	.section	.rodata
.LC11:
	.string	"SUPER"
.LC12:
	.string	"%s::SUPER"
.LC13:
	.string	"import"
.LC14:
	.string	"unimport"
	.text
	.globl	Perl_gv_fetchmethod_autoload
	.type	Perl_gv_fetchmethod_autoload, @function
Perl_gv_fetchmethod_autoload:
.LFB11:
	.loc 1 414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# stash, stash
	movq	%rsi, -96(%rbp)	# name, name
	movl	%edx, -100(%rbp)	# autoload, autoload
	.loc 1 416 0
	movq	$0, -80(%rbp)	#, nsplit
	.loc 1 418 0
	movq	-88(%rbp), %rax	# stash, tmp135
	movq	%rax, -64(%rbp)	# tmp135, ostash
	.loc 1 420 0
	cmpq	$0, -88(%rbp)	#, stash
	je	.L115	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# stash, tmp136
	movl	12(%rax), %eax	# stash_16(D)->sv_flags, D.13621
	movzbl	%al, %eax	# D.13621, D.13621
	cmpl	$10, %eax	#, D.13621
	ja	.L115	#,
	.loc 1 421 0 is_stmt 1
	movq	$0, -88(%rbp)	#, stash
.L115:
	.loc 1 423 0
	movq	-96(%rbp), %rbx	# name, nend
	jmp	.L116	#
.L119:
	.loc 1 424 0
	movzbl	(%rbx), %eax	# *nend_6, D.13622
	cmpb	$39, %al	#, D.13622
	jne	.L117	#,
	.loc 1 425 0
	movq	%rbx, -80(%rbp)	# nend, nsplit
	jmp	.L118	#
.L117:
	.loc 1 426 0
	movzbl	(%rbx), %eax	# *nend_6, D.13622
	cmpb	$58, %al	#, D.13622
	jne	.L118	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.13623
	movzbl	(%rax), %eax	# *_27, D.13622
	cmpb	$58, %al	#, D.13622
	jne	.L118	#,
	.loc 1 427 0 is_stmt 1
	addq	$1, %rbx	#, nend
	movq	%rbx, -80(%rbp)	# nend, nsplit
.L118:
	.loc 1 423 0
	addq	$1, %rbx	#, nend
.L116:
	.loc 1 423 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *nend_6, D.13622
	testb	%al, %al	# D.13622
	jne	.L119	#,
	.loc 1 429 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, nsplit
	je	.L120	#,
.LBB8:
	.loc 1 430 0
	movq	-96(%rbp), %rax	# name, tmp137
	movq	%rax, -48(%rbp)	# tmp137, origname
	.loc 1 431 0
	movq	-80(%rbp), %rax	# nsplit, tmp141
	addq	$1, %rax	#, tmp140
	movq	%rax, -96(%rbp)	# tmp140, name
	.loc 1 432 0
	movq	-80(%rbp), %rax	# nsplit, tmp142
	movzbl	(%rax), %eax	# *nsplit_8, D.13622
	cmpb	$58, %al	#, D.13622
	jne	.L121	#,
	.loc 1 433 0
	subq	$1, -80(%rbp)	#, nsplit
.L121:
	.loc 1 434 0
	movq	-80(%rbp), %rdx	# nsplit, nsplit.61
	movq	-48(%rbp), %rax	# origname, origname.62
	subq	%rax, %rdx	# origname.62, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	cmpq	$5, %rax	#, D.13624
	jne	.L122	#,
	.loc 1 434 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# origname, tmp143
	movl	$5, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	strncmp	#
	testl	%eax, %eax	# D.13625
	jne	.L122	#,
.LBB9:
	.loc 1 437 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.64
	movq	48(%rax), %rax	# PL_curcop.64_40->cop_stash, D.13626
	.loc 1 436 0
	testq	%rax, %rax	# D.13626
	je	.L123	#,
	.loc 1 437 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.65
	movq	48(%rax), %rax	# PL_curcop.65_42->cop_stash, D.13626
	movq	(%rax), %rax	# _43->sv_any, D.13627
	.loc 1 436 0
	movq	80(%rax), %rax	# _44->xhv_name, iftmp.63
	jmp	.L124	#
.L123:
	.loc 1 436 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.63
.L124:
	.loc 1 436 0 discriminator 2
	movq	%rax, %rsi	# iftmp.63,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.13628,
	call	Perl_sv_2mortal	#
	movq	%rax, -40(%rbp)	# tmp144, tmpstr
	.loc 1 439 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax	# tmpstr, tmp145
	movq	(%rax), %rax	# tmpstr_48->sv_any, D.13629
	movq	8(%rax), %rax	# MEM[(struct XPV *)_49].xpv_cur, D.13630
	movl	%eax, %ecx	# D.13630, D.13621
	movq	-40(%rbp), %rax	# tmpstr, tmp146
	movq	(%rax), %rax	# tmpstr_48->sv_any, D.13629
	movq	(%rax), %rax	# MEM[(struct XPV *)_52].xpv_pv, D.13631
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.13621,
	movq	%rax, %rdi	# D.13631,
	call	Perl_gv_stashpvn	#
	movq	%rax, -88(%rbp)	# tmp147, stash
.LBE9:
	.loc 1 434 0 discriminator 2
	jmp	.L125	#
.L122:
	.loc 1 445 0
	movq	-80(%rbp), %rdx	# nsplit, nsplit.66
	movq	-48(%rbp), %rax	# origname, origname.67
	subq	%rax, %rdx	# origname.67, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	movl	%eax, %ecx	# D.13624, D.13621
	movq	-48(%rbp), %rax	# origname, tmp148
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.13621,
	movq	%rax, %rdi	# tmp148,
	call	Perl_gv_stashpvn	#
	movq	%rax, -88(%rbp)	# tmp149, stash
	.loc 1 449 0
	cmpq	$0, -88(%rbp)	#, stash
	jne	.L125	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx	# nsplit, nsplit.68
	movq	-48(%rbp), %rax	# origname, origname.69
	subq	%rax, %rdx	# origname.69, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	cmpq	$6, %rax	#, D.13624
	jle	.L125	#,
	.loc 1 450 0 is_stmt 1 discriminator 1
	movq	-80(%rbp), %rax	# nsplit, tmp150
	subq	$7, %rax	#, D.13623
	movl	$7, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.13623,
	call	strncmp	#
	.loc 1 449 0 discriminator 1
	testl	%eax, %eax	# D.13625
	jne	.L125	#,
	.loc 1 451 0
	movq	-80(%rbp), %rdx	# nsplit, nsplit.70
	movq	-48(%rbp), %rax	# origname, origname.71
	subq	%rax, %rdx	# origname.71, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	leal	-7(%rax), %ecx	#, D.13621
	movq	-48(%rbp), %rax	# origname, tmp151
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.13621,
	movq	%rax, %rdi	# tmp151,
	call	Perl_gv_stashpvn	#
	.loc 1 450 0
	testq	%rax, %rax	# D.13626
	je	.L125	#,
	.loc 1 452 0
	movq	-80(%rbp), %rdx	# nsplit, nsplit.72
	movq	-48(%rbp), %rax	# origname, origname.73
	subq	%rax, %rdx	# origname.73, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	movl	%eax, %ecx	# D.13624, D.13621
	movq	-48(%rbp), %rax	# origname, tmp152
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.13621,
	movq	%rax, %rdi	# tmp152,
	call	Perl_gv_stashpvn	#
	movq	%rax, -88(%rbp)	# tmp153, stash
.L125:
	.loc 1 454 0
	movq	-88(%rbp), %rax	# stash, tmp154
	movq	%rax, -64(%rbp)	# tmp154, ostash
.L120:
.LBE8:
	.loc 1 457 0
	movq	%rbx, %rdx	# nend, nend.74
	movq	-96(%rbp), %rax	# name, name.75
	subq	%rax, %rdx	# name.75, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	movq	%rax, %rdx	# D.13624, D.13630
	movq	-96(%rbp), %rsi	# name, tmp155
	movq	-88(%rbp), %rax	# stash, tmp156
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp156,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -72(%rbp)	# tmp157, gv
	.loc 1 458 0
	cmpq	$0, -72(%rbp)	#, gv
	jne	.L126	#,
	.loc 1 459 0
	movq	-96(%rbp), %rax	# name, tmp158
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	strcmp	#
	testl	%eax, %eax	# D.13625
	je	.L127	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# name, tmp159
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp159,
	call	strcmp	#
	testl	%eax, %eax	# D.13625
	jne	.L128	#,
.L127:
	.loc 1 460 0 is_stmt 1
	movq	$PL_sv_yes, -72(%rbp)	#, gv
	jmp	.L130	#
.L128:
	.loc 1 461 0
	cmpl	$0, -100(%rbp)	#, autoload
	je	.L130	#,
	.loc 1 462 0
	movq	%rbx, %rdx	# nend, nend.76
	movq	-96(%rbp), %rax	# name, name.77
	subq	%rax, %rdx	# name.77, D.13624
	movq	%rdx, %rax	# D.13624, D.13624
	movq	%rax, %rdx	# D.13624, D.13630
	movq	-96(%rbp), %rsi	# name, tmp160
	movq	-64(%rbp), %rax	# ostash, tmp161
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp161,
	call	Perl_gv_autoload4	#
	movq	%rax, -72(%rbp)	# tmp162, gv
	jmp	.L130	#
.L126:
	.loc 1 464 0
	cmpl	$0, -100(%rbp)	#, autoload
	je	.L130	#,
.LBB10:
	.loc 1 465 0
	movq	-72(%rbp), %rax	# gv, tmp163
	movq	(%rax), %rax	# gv_81->sv_any, D.13632
	movq	56(%rax), %rax	# _91->xgv_gp, D.13633
	movq	56(%rax), %rax	# _92->gp_cv, tmp164
	movq	%rax, -32(%rbp)	# tmp164, cv
	.loc 1 466 0
	movq	-32(%rbp), %rax	# cv, tmp165
	movq	(%rax), %rax	# cv_93->sv_any, D.13634
	movq	72(%rax), %rax	# _94->xcv_root, D.13635
	testq	%rax, %rax	# D.13635
	jne	.L130	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# cv, tmp166
	movq	(%rax), %rax	# cv_93->sv_any, D.13634
	movq	80(%rax), %rax	# _96->xcv_xsub, D.13636
	testq	%rax, %rax	# D.13636
	jne	.L130	#,
.LBB11:
	.loc 1 470 0 is_stmt 1
	movq	-32(%rbp), %rax	# cv, tmp167
	movq	(%rax), %rax	# cv_93->sv_any, D.13634
	movzwl	136(%rax), %eax	# _98->xcv_flags, D.13637
	movzwl	%ax, %eax	# D.13637, D.13625
	andl	$4, %eax	#, D.13625
	testl	%eax, %eax	# D.13625
	je	.L131	#,
	.loc 1 471 0
	movq	-72(%rbp), %rax	# gv, tmp168
	movq	%rax, -56(%rbp)	# tmp168, stubgv
	jmp	.L132	#
.L131:
	.loc 1 473 0
	movq	-32(%rbp), %rax	# cv, tmp169
	movq	(%rax), %rax	# cv_93->sv_any, D.13634
	movq	96(%rax), %rax	# _103->xcv_gv, tmp170
	movq	%rax, -56(%rbp)	# tmp170, stubgv
	.loc 1 474 0
	movq	-56(%rbp), %rax	# stubgv, tmp171
	movq	(%rax), %rax	# stubgv_104->sv_any, D.13632
	movq	56(%rax), %rax	# _105->xgv_gp, D.13633
	movq	56(%rax), %rax	# _106->gp_cv, D.13638
	cmpq	-32(%rbp), %rax	# cv, D.13638
	je	.L132	#,
	.loc 1 475 0
	movq	-72(%rbp), %rax	# gv, tmp172
	movq	%rax, -56(%rbp)	# tmp172, stubgv
.L132:
	.loc 1 478 0
	movq	-56(%rbp), %rax	# stubgv, tmp173
	movq	(%rax), %rax	# stubgv_13->sv_any, D.13632
	.loc 1 477 0
	movq	72(%rax), %rdx	# _109->xgv_namelen, D.13630
	.loc 1 478 0
	movq	-56(%rbp), %rax	# stubgv, tmp174
	movq	(%rax), %rax	# stubgv_13->sv_any, D.13632
	movq	64(%rax), %rsi	# _111->xgv_name, D.13631
	.loc 1 477 0
	movq	-56(%rbp), %rax	# stubgv, tmp175
	movq	(%rax), %rax	# stubgv_13->sv_any, D.13632
	movq	80(%rax), %rax	# _113->xgv_stash, D.13626
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.13626,
	call	Perl_gv_autoload4	#
	movq	%rax, -24(%rbp)	# tmp176, autogv
	.loc 1 479 0
	cmpq	$0, -24(%rbp)	#, autogv
	je	.L130	#,
	.loc 1 480 0
	movq	-24(%rbp), %rax	# autogv, tmp177
	movq	%rax, -72(%rbp)	# tmp177, gv
.L130:
.LBE11:
.LBE10:
	.loc 1 484 0
	movq	-72(%rbp), %rax	# gv, D.13639
	.loc 1 485 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_gv_fetchmethod_autoload, .-Perl_gv_fetchmethod_autoload
	.section	.rodata
	.align 8
.LC15:
	.string	"Use of inherited AUTOLOAD for non-method %s::%.*s() is deprecated"
.LC16:
	.string	"::"
	.text
	.globl	Perl_gv_autoload4
	.type	Perl_gv_autoload4, @function
Perl_gv_autoload4:
.LFB12:
	.loc 1 489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# stash, stash
	movq	%rsi, -128(%rbp)	# name, name
	movq	%rdx, -136(%rbp)	# len, len
	movl	%ecx, -140(%rbp)	# method, method
	.loc 1 489 0
	movq	%fs:40, %rax	#, tmp173
	movq	%rax, -24(%rbp)	# tmp173, D.13659
	xorl	%eax, %eax	# tmp173
	.loc 1 490 0
	movabsq	$4918299457232328001, %rax	#, tmp175
	movq	%rax, -48(%rbp)	# tmp175, autoload
	movb	$0, -40(%rbp)	#, autoload
	.loc 1 491 0
	movq	$8, -96(%rbp)	#, autolen
	.loc 1 497 0
	movq	$.LC3, -104(%rbp)	#, packname
	.loc 1 499 0
	movq	-136(%rbp), %rax	# len, tmp122
	cmpq	-96(%rbp), %rax	# autolen, tmp122
	jne	.L135	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx	# autolen, tmp123
	leaq	-48(%rbp), %rcx	#, tmp124
	movq	-128(%rbp), %rax	# name, tmp125
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	strncmp	#
	testl	%eax, %eax	# D.13645
	jne	.L135	#,
	.loc 1 500 0 is_stmt 1
	movl	$0, %eax	#, D.13644
	jmp	.L150	#
.L135:
	.loc 1 501 0
	cmpq	$0, -120(%rbp)	#, stash
	je	.L137	#,
	.loc 1 502 0
	movq	-120(%rbp), %rax	# stash, tmp126
	movl	12(%rax), %eax	# stash_11(D)->sv_flags, D.13646
	movzbl	%al, %eax	# D.13646, D.13646
	cmpl	$10, %eax	#, D.13646
	ja	.L138	#,
	.loc 1 503 0
	movq	-120(%rbp), %rax	# stash, tmp127
	movl	12(%rax), %eax	# MEM[(struct SV *)stash_11(D)].sv_flags, D.13646
	andl	$262144, %eax	#, D.13646
	testl	%eax, %eax	# D.13646
	je	.L139	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# stash, tmp128
	movq	(%rax), %rax	# MEM[(struct SV *)stash_11(D)].sv_any, D.13647
	movq	(%rax), %rax	# MEM[(struct XPV *)_16].xpv_pv, iftmp.78
	jmp	.L140	#
.L139:
	.loc 1 503 0 discriminator 2
	movq	-120(%rbp), %rax	# stash, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_sv_2pv_nolen	#
.L140:
	.loc 1 503 0 discriminator 1
	movq	%rax, -104(%rbp)	# iftmp.78, packname
	.loc 1 504 0 is_stmt 1 discriminator 1
	movq	$0, -120(%rbp)	#, stash
	jmp	.L137	#
.L138:
	.loc 1 507 0
	movq	-120(%rbp), %rax	# stash, tmp130
	movq	(%rax), %rax	# stash_11(D)->sv_any, D.13648
	movq	80(%rax), %rax	# _21->xhv_name, tmp131
	movq	%rax, -104(%rbp)	# tmp131, packname
.L137:
	.loc 1 510 0
	movq	-96(%rbp), %rdx	# autolen, tmp132
	leaq	-48(%rbp), %rsi	#, tmp133
	movq	-120(%rbp), %rax	# stash, tmp134
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp134,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -88(%rbp)	# tmp135, gv
	cmpq	$0, -88(%rbp)	#, gv
	jne	.L141	#,
	.loc 1 511 0
	movl	$0, %eax	#, D.13644
	jmp	.L150	#
.L141:
	.loc 1 512 0
	movq	-88(%rbp), %rax	# gv, tmp136
	movq	(%rax), %rax	# gv_23->sv_any, D.13649
	movq	56(%rax), %rax	# _25->xgv_gp, D.13650
	movq	56(%rax), %rax	# _26->gp_cv, tmp137
	movq	%rax, -80(%rbp)	# tmp137, cv
	.loc 1 514 0
	movq	-80(%rbp), %rax	# cv, tmp138
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	72(%rax), %rax	# _28->xcv_root, D.13652
	testq	%rax, %rax	# D.13652
	jne	.L142	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# cv, tmp139
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	80(%rax), %rax	# _30->xcv_xsub, D.13653
	testq	%rax, %rax	# D.13653
	jne	.L142	#,
	.loc 1 515 0 is_stmt 1
	movl	$0, %eax	#, D.13644
	jmp	.L150	#
.L142:
	.loc 1 520 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.79
	movq	80(%rax), %rax	# PL_curcop.79_33->cop_warnings, D.13654
	testq	%rax, %rax	# D.13654
	je	.L143	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.80
	movq	80(%rax), %rax	# PL_curcop.80_35->cop_warnings, D.13654
	cmpq	$32, %rax	#, D.13654
	je	.L143	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.81
	movq	80(%rax), %rax	# PL_curcop.81_37->cop_warnings, D.13654
	cmpq	$16, %rax	#, D.13654
	je	.L144	#,
	.loc 1 520 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.82
	movq	80(%rax), %rax	# PL_curcop.82_39->cop_warnings, D.13654
	movq	(%rax), %rax	# _40->sv_any, D.13647
	movq	(%rax), %rax	# MEM[(struct XPV *)_41].xpv_pv, D.13655
	movzbl	(%rax), %eax	# *_42, D.13656
	movsbl	%al, %eax	# D.13656, D.13645
	andl	$16, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	jne	.L144	#,
	.loc 1 520 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.83
	movq	80(%rax), %rax	# PL_curcop.83_46->cop_warnings, D.13654
	movq	(%rax), %rax	# _47->sv_any, D.13647
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, D.13655
	addq	$7, %rax	#, D.13655
	movzbl	(%rax), %eax	# *_50, D.13656
	movsbl	%al, %eax	# D.13656, D.13645
	andl	$1, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	jne	.L144	#,
.L143:
	.loc 1 520 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.84
	movq	80(%rax), %rax	# PL_curcop.84_54->cop_warnings, D.13654
	testq	%rax, %rax	# D.13654
	jne	.L145	#,
	.loc 1 520 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.85
	movzbl	%al, %eax	# PL_dowarn.85, D.13645
	andl	$1, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L145	#,
.L144:
	cmpl	$0, -140(%rbp)	#, method
	jne	.L145	#,
	.loc 1 521 0 is_stmt 1 discriminator 1
	movq	-88(%rbp), %rax	# gv, tmp140
	movq	(%rax), %rax	# gv_23->sv_any, D.13649
	movq	56(%rax), %rax	# _60->xgv_gp, D.13650
	movl	64(%rax), %eax	# _61->gp_cvgen, D.13646
	.loc 1 520 0 discriminator 1
	testl	%eax, %eax	# D.13646
	jne	.L146	#,
	.loc 1 521 0
	movq	-88(%rbp), %rax	# gv, tmp141
	movq	(%rax), %rax	# gv_23->sv_any, D.13649
	movq	80(%rax), %rax	# _63->xgv_stash, D.13657
	cmpq	-120(%rbp), %rax	# stash, D.13657
	je	.L145	#,
.L146:
	.loc 1 522 0
	movq	-136(%rbp), %rax	# len, tmp142
	movl	%eax, %edx	# tmp142, D.13645
	movq	-128(%rbp), %rcx	# name, tmp143
	movq	-104(%rbp), %rax	# packname, tmp144
	movq	%rcx, %r8	# tmp143,
	movl	%edx, %ecx	# D.13645,
	movq	%rax, %rdx	# tmp144,
	movl	$.LC15, %esi	#,
	movl	$7170, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L145:
	.loc 1 527 0
	movq	-80(%rbp), %rax	# cv, tmp145
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	80(%rax), %rax	# _66->xcv_xsub, D.13653
	testq	%rax, %rax	# D.13653
	je	.L147	#,
	.loc 1 533 0
	movq	-80(%rbp), %rax	# cv, tmp146
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	-120(%rbp), %rdx	# stash, tmp147
	movq	%rdx, 56(%rax)	# tmp147, _68->xcv_stash
	.loc 1 534 0
	movq	-80(%rbp), %rax	# cv, tmp148
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	-128(%rbp), %rdx	# name, tmp149
	movq	%rdx, (%rax)	# tmp149, MEM[(struct XPV *)_69].xpv_pv
	.loc 1 535 0
	movq	-80(%rbp), %rax	# cv, tmp150
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	-136(%rbp), %rdx	# len, tmp151
	movq	%rdx, 8(%rax)	# tmp151, MEM[(struct XPV *)_70].xpv_cur
	.loc 1 536 0
	movq	-88(%rbp), %rax	# gv, D.13644
	jmp	.L150	#
.L147:
	.loc 1 546 0
	movq	-80(%rbp), %rax	# cv, tmp152
	movq	(%rax), %rax	# cv_27->sv_any, D.13651
	movq	96(%rax), %rax	# _72->xcv_gv, D.13644
	movq	(%rax), %rax	# _73->sv_any, D.13649
	movq	80(%rax), %rax	# _74->xgv_stash, tmp153
	movq	%rax, -72(%rbp)	# tmp153, varstash
	.loc 1 547 0
	movq	-96(%rbp), %rax	# autolen, tmp154
	movl	%eax, %edx	# tmp154, D.13645
	leaq	-48(%rbp), %rsi	#, tmp155
	movq	-72(%rbp), %rax	# varstash, tmp156
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp156,
	call	Perl_hv_fetch	#
	movq	(%rax), %rax	# MEM[(struct GV * *)_77], tmp157
	movq	%rax, -64(%rbp)	# tmp157, vargv
	.loc 1 548 0
	call	Perl_push_scope	#
	.loc 1 553 0
	movq	-64(%rbp), %rax	# vargv, tmp158
	movl	12(%rax), %eax	# vargv_78->sv_flags, D.13646
	movzbl	%al, %eax	# D.13646, D.13646
	cmpl	$13, %eax	#, D.13646
	je	.L148	#,
	.loc 1 554 0
	movq	-96(%rbp), %rcx	# autolen, tmp159
	leaq	-48(%rbp), %rdx	#, tmp160
	movq	-72(%rbp), %rsi	# varstash, tmp161
	movq	-64(%rbp), %rax	# vargv, tmp162
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp162,
	call	Perl_gv_init	#
.L148:
	.loc 1 555 0
	call	Perl_pop_scope	#
	.loc 1 556 0
	movq	-64(%rbp), %rax	# vargv, tmp163
	movq	(%rax), %rax	# vargv_78->sv_any, D.13649
	movq	56(%rax), %rax	# _81->xgv_gp, D.13650
	movq	(%rax), %rax	# _82->gp_sv, tmp164
	movq	%rax, -56(%rbp)	# tmp164, varsv
	.loc 1 560 0
	movq	-104(%rbp), %rdx	# packname, tmp165
	movq	-56(%rbp), %rax	# varsv, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	Perl_sv_setpv	#
	.loc 1 561 0
	movq	-56(%rbp), %rax	# varsv, tmp167
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	Perl_sv_catpvn_flags	#
	.loc 1 562 0
	movq	-136(%rbp), %rdx	# len, tmp168
	movq	-128(%rbp), %rsi	# name, tmp169
	movq	-56(%rbp), %rax	# varsv, tmp170
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp170,
	call	Perl_sv_catpvn_flags	#
	.loc 1 563 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.86
	testb	%al, %al	# PL_tainting.86
	je	.L149	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# varsv, tmp171
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_untaint	#
.L149:
	.loc 1 564 0 is_stmt 1
	movq	-88(%rbp), %rax	# gv, D.13644
.L150:
	.loc 1 565 0
	movq	-24(%rbp), %rbx	# D.13659, tmp174
	xorq	%fs:40, %rbx	#, tmp174
	je	.L151	#,
	call	__stack_chk_fail	#
.L151:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_gv_autoload4, .-Perl_gv_autoload4
	.section	.rodata
.LC17:
	.string	"Errno"
.LC18:
	.string	"TIEHASH"
	.align 8
.LC19:
	.string	"Can't use %%! because Errno.pm is not available"
	.text
	.type	S_require_errno, @function
S_require_errno:
.LFB13:
	.loc 1 572 0
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
	.loc 1 573 0
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movl	$.LC17, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -24(%rbp)	# tmp63, stash
	.loc 1 575 0
	cmpq	$0, -24(%rbp)	#, stash
	je	.L153	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# stash, tmp64
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	Perl_gv_fetchmethod	#
	testq	%rax, %rax	# D.13662
	jne	.L152	#,
.L153:
.LBB12:
	.loc 1 576 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 577 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 578 0
	call	Perl_push_scope	#
	.loc 1 579 0
	movq	-40(%rbp), %rax	# gv, tmp65
	movq	%rax, %rdi	# tmp65,
	call	Perl_save_scalar	#
	.loc 1 580 0
	movl	$5, %esi	#,
	movl	$.LC17, %edi	#,
	call	Perl_newSVpvn	#
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.13663,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_load_module	#
	.loc 1 582 0
	call	Perl_pop_scope	#
	.loc 1 583 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 584 0
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movl	$.LC17, %edi	#,
	call	Perl_gv_stashpvn	#
	movq	%rax, -24(%rbp)	# tmp66, stash
	.loc 1 585 0
	cmpq	$0, -24(%rbp)	#, stash
	je	.L155	#,
	.loc 1 585 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# stash, tmp67
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	Perl_gv_fetchmethod	#
	testq	%rax, %rax	# D.13662
	jne	.L152	#,
.L155:
	.loc 1 586 0 is_stmt 1
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L152:
.LBE12:
	.loc 1 588 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	S_require_errno, .-S_require_errno
	.globl	Perl_gv_stashpv
	.type	Perl_gv_stashpv, @function
Perl_gv_stashpv:
.LFB14:
	.loc 1 603 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# create, create
	.loc 1 604 0
	movq	-8(%rbp), %rax	# name, tmp63
	movq	%rax, %rdi	# tmp63,
	call	strlen	#
	movl	%eax, %ecx	# D.13667, D.13668
	movl	-12(%rbp), %edx	# create, tmp64
	movq	-8(%rbp), %rax	# name, tmp65
	movl	%ecx, %esi	# D.13668,
	movq	%rax, %rdi	# tmp65,
	call	Perl_gv_stashpvn	#
	.loc 1 605 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_gv_stashpv, .-Perl_gv_stashpv
	.globl	Perl_gv_stashpvn
	.type	Perl_gv_stashpvn, @function
Perl_gv_stashpvn:
.LFB15:
	.loc 1 621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# name, name
	movl	%esi, -332(%rbp)	# namelen, namelen
	movl	%edx, -336(%rbp)	# create, create
	.loc 1 621 0
	movq	%fs:40, %rax	#, tmp109
	movq	%rax, -24(%rbp)	# tmp109, D.13678
	xorl	%eax, %eax	# tmp109
	.loc 1 627 0
	movl	-332(%rbp), %eax	# namelen, tmp85
	addl	$3, %eax	#, D.13671
	cmpl	$255, %eax	#, D.13671
	ja	.L159	#,
	.loc 1 628 0
	leaq	-288(%rbp), %rax	#, tmp86
	movq	%rax, -312(%rbp)	# tmp86, tmpbuf
	jmp	.L160	#
.L159:
	.loc 1 630 0
	movl	-332(%rbp), %eax	# namelen, tmp87
	addl	$3, %eax	#, D.13671
	movl	%eax, %eax	# D.13671, D.13672
	movq	%rax, %rdi	# D.13672,
	call	Perl_safesysmalloc	#
	movq	%rax, -312(%rbp)	# tmp88, tmpbuf
.L160:
	.loc 1 631 0
	movl	-332(%rbp), %edx	# namelen, D.13672
	movq	-328(%rbp), %rcx	# name, tmp89
	movq	-312(%rbp), %rax	# tmpbuf, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	memcpy	#
	.loc 1 632 0
	movl	-332(%rbp), %eax	# namelen, namelen.87
	leal	1(%rax), %edx	#, tmp91
	movl	%edx, -332(%rbp)	# tmp91, namelen
	movl	%eax, %edx	# namelen.87, D.13673
	movq	-312(%rbp), %rax	# tmpbuf, tmp92
	addq	%rdx, %rax	# D.13673, D.13674
	movb	$58, (%rax)	#, *_14
	.loc 1 633 0
	movl	-332(%rbp), %eax	# namelen, namelen.88
	leal	1(%rax), %edx	#, tmp93
	movl	%edx, -332(%rbp)	# tmp93, namelen
	movl	%eax, %edx	# namelen.88, D.13673
	movq	-312(%rbp), %rax	# tmpbuf, tmp94
	addq	%rdx, %rax	# D.13673, D.13674
	movb	$58, (%rax)	#, *_18
	.loc 1 634 0
	movl	-332(%rbp), %edx	# namelen, D.13673
	movq	-312(%rbp), %rax	# tmpbuf, tmp95
	addq	%rdx, %rax	# D.13673, D.13674
	movb	$0, (%rax)	#, *_20
	.loc 1 635 0
	movl	-336(%rbp), %ecx	# create, tmp96
	movq	-312(%rbp), %rax	# tmpbuf, tmp97
	movl	$11, %edx	#,
	movl	%ecx, %esi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	Perl_gv_fetchpv	#
	movq	%rax, -304(%rbp)	# tmp98, tmpgv
	.loc 1 636 0
	leaq	-288(%rbp), %rax	#, tmp99
	cmpq	%rax, -312(%rbp)	# tmp99, tmpbuf
	je	.L161	#,
	.loc 1 637 0
	movq	-312(%rbp), %rax	# tmpbuf, tmp100
	movq	%rax, %rdi	# tmp100,
	call	Perl_safesysfree	#
.L161:
	.loc 1 638 0
	cmpq	$0, -304(%rbp)	#, tmpgv
	jne	.L162	#,
	.loc 1 639 0
	movl	$0, %eax	#, D.13670
	jmp	.L166	#
.L162:
	.loc 1 640 0
	movq	-304(%rbp), %rax	# tmpgv, tmp101
	movq	(%rax), %rax	# tmpgv_22->sv_any, D.13675
	movq	56(%rax), %rax	# _24->xgv_gp, D.13676
	movq	40(%rax), %rax	# _25->gp_hv, D.13670
	testq	%rax, %rax	# D.13670
	jne	.L164	#,
	.loc 1 641 0
	movq	-304(%rbp), %rax	# tmpgv, tmp102
	movq	(%rax), %rax	# tmpgv_22->sv_any, D.13675
	movq	56(%rax), %rbx	# _27->xgv_gp, D.13676
	call	Perl_newHV	#
	movq	%rax, 40(%rbx)	# D.13670, _28->gp_hv
.L164:
	.loc 1 642 0
	movq	-304(%rbp), %rax	# tmpgv, tmp103
	movq	(%rax), %rax	# tmpgv_22->sv_any, D.13675
	movq	56(%rax), %rax	# _30->xgv_gp, D.13676
	movq	40(%rax), %rax	# _31->gp_hv, tmp104
	movq	%rax, -296(%rbp)	# tmp104, stash
	.loc 1 643 0
	movq	-296(%rbp), %rax	# stash, tmp105
	movq	(%rax), %rax	# stash_32->sv_any, D.13677
	movq	80(%rax), %rax	# _33->xhv_name, D.13674
	testq	%rax, %rax	# D.13674
	jne	.L165	#,
	.loc 1 644 0
	movq	-296(%rbp), %rax	# stash, tmp106
	movq	(%rax), %rbx	# stash_32->sv_any, D.13677
	movq	-328(%rbp), %rax	# name, tmp107
	movq	%rax, %rdi	# tmp107,
	call	Perl_savepv	#
	movq	%rax, 80(%rbx)	# D.13674, _35->xhv_name
.L165:
	.loc 1 645 0
	movq	-296(%rbp), %rax	# stash, D.13670
.L166:
	.loc 1 646 0
	movq	-24(%rbp), %rsi	# D.13678, tmp110
	xorq	%fs:40, %rsi	#, tmp110
	je	.L167	#,
	call	__stack_chk_fail	#
.L167:
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_gv_stashpvn, .-Perl_gv_stashpvn
	.globl	Perl_gv_stashsv
	.type	Perl_gv_stashsv, @function
Perl_gv_stashsv:
.LFB16:
	.loc 1 659 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# sv, sv
	movl	%esi, -44(%rbp)	# create, create
	.loc 1 662 0
	movq	-40(%rbp), %rax	# sv, tmp70
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.13679
	andl	$262144, %eax	#, D.13679
	testl	%eax, %eax	# D.13679
	je	.L169	#,
	.loc 1 662 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp71
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.13680
	movq	8(%rax), %rax	# MEM[(struct XPV *)_5].xpv_cur, len.90
	movq	%rax, -24(%rbp)	# len.90, len
	movq	-40(%rbp), %rax	# sv, tmp72
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.13680
	movq	(%rax), %rax	# MEM[(struct XPV *)_7].xpv_pv, iftmp.89
	jmp	.L170	#
.L169:
	.loc 1 662 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp73
	movq	-40(%rbp), %rax	# sv, tmp74
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	Perl_sv_2pv_flags	#
.L170:
	.loc 1 662 0 discriminator 3
	movq	%rax, %rbx	# iftmp.89, ptr
	.loc 1 663 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# len, len.91
	movl	-44(%rbp), %edx	# create, tmp75
	movl	%eax, %esi	# D.13679,
	movq	%rbx, %rdi	# ptr,
	call	Perl_gv_stashpvn	#
	.loc 1 664 0 discriminator 3
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_gv_stashsv, .-Perl_gv_stashsv
	.section	.rodata
.LC20:
	.string	"main::"
.LC21:
	.string	"INC"
.LC22:
	.string	"ENV"
.LC23:
	.string	"SIG"
.LC24:
	.string	"STDIN"
.LC25:
	.string	"STDOUT"
.LC26:
	.string	"STDERR"
.LC27:
	.string	"ARGV"
.LC28:
	.string	"ARGVOUT"
	.align 8
.LC29:
	.string	"Variable \"%c%s\" is not imported"
.LC30:
	.string	"\t(Did you mean &%s instead?)\n"
.LC31:
	.string	"%"
.LC32:
	.string	"@"
.LC33:
	.string	"$"
	.align 8
.LC34:
	.string	"Global symbol \"%s%s\" requires explicit package name"
.LC35:
	.string	"Had to create %s unexpectedly"
.LC36:
	.string	"RGV"
.LC37:
	.string	"XPORT"
.LC38:
	.string	"SA"
.LC39:
	.string	"AnyDBM_File::ISA"
.LC40:
	.string	"NDBM_File"
.LC41:
	.string	"DB_File"
.LC42:
	.string	"GDBM_File"
.LC43:
	.string	"SDBM_File"
.LC44:
	.string	"ODBM_File"
.LC45:
	.string	"VERLOAD"
.LC46:
	.string	"IG"
.LC47:
	.string	"ERSION"
.LC48:
	.string	"NCODING"
.LC49:
	.string	"PEN"
.LC50:
	.string	"AINT"
.LC51:
	.string	"NICODE"
.LC52:
	.string	"TF8LOCALE"
.LC53:
	.string	"ARNING_BITS"
.LC54:
	.string	"Use of $%s is deprecated"
.LC55:
	.string	"\f"
.LC56:
	.string	"\034"
.LC57:
	.string	"%8.6f"
	.text
	.globl	Perl_gv_fetchpv
	.type	Perl_gv_fetchpv, @function
Perl_gv_fetchpv:
.LFB17:
	.loc 1 669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$440, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -440(%rbp)	# nambeg, nambeg
	movl	%esi, -444(%rbp)	# add, add
	movl	%edx, -448(%rbp)	# sv_type, sv_type
	.loc 1 669 0
	movq	%fs:40, %rax	#, tmp623
	movq	%rax, -40(%rbp)	# tmp623, D.13708
	xorl	%eax, %eax	# tmp623
	.loc 1 670 0
	movq	-440(%rbp), %r12	# nambeg, name
	.loc 1 671 0
	movl	$0, %ebx	#, gv
	.loc 1 675 0
	movq	$0, -416(%rbp)	#, stash
	.loc 1 677 0
	movzbl	(%r12), %eax	# *name_48, D.13683
	cmpb	$42, %al	#, D.13683
	jne	.L173	#,
	.loc 1 677 0 is_stmt 0 discriminator 1
	leaq	1(%r12), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_52, D.13683
	cmpb	$64, %al	#, D.13683
	jle	.L174	#,
	leaq	1(%r12), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_54, D.13683
	cmpb	$90, %al	#, D.13683
	jle	.L175	#,
.L174:
	.loc 1 677 0 discriminator 2
	leaq	1(%r12), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_56, D.13683
	cmpb	$96, %al	#, D.13683
	jle	.L173	#,
	.loc 1 677 0 discriminator 1
	leaq	1(%r12), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_58, D.13683
	cmpb	$122, %al	#, D.13683
	jg	.L173	#,
.L175:
	.loc 1 678 0 is_stmt 1
	addq	$1, %r12	#, name
.L173:
	.loc 1 680 0
	movq	%r12, %r13	# name, namend
	jmp	.L176	#
.L199:
	.loc 1 681 0
	movzbl	0(%r13), %eax	# *namend_9, D.13683
	cmpb	$58, %al	#, D.13683
	jne	.L177	#,
	.loc 1 681 0 is_stmt 0 discriminator 1
	leaq	1(%r13), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_64, D.13683
	cmpb	$58, %al	#, D.13683
	je	.L178	#,
.L177:
	.loc 1 682 0 is_stmt 1
	movzbl	0(%r13), %eax	# *namend_9, D.13683
	cmpb	$39, %al	#, D.13683
	jne	.L179	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	leaq	1(%r13), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_67, D.13683
	testb	%al, %al	# D.13683
	je	.L179	#,
.L178:
	.loc 1 684 0 is_stmt 1
	cmpq	$0, -416(%rbp)	#, stash
	jne	.L180	#,
	.loc 1 685 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, tmp493
	movq	%rax, -416(%rbp)	# tmp493, stash
.L180:
	.loc 1 686 0
	cmpq	$0, -416(%rbp)	#, stash
	je	.L181	#,
	.loc 1 686 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# stash, tmp494
	movl	8(%rax), %eax	# stash_10->sv_refcnt, D.13685
	testl	%eax, %eax	# D.13685
	jne	.L182	#,
.L181:
	.loc 1 687 0 is_stmt 1
	movl	$0, %eax	#, D.13682
	jmp	.L183	#
.L182:
	.loc 1 689 0
	movq	%r13, %rdx	# namend, namend.92
	movq	%r12, %rax	# name, name.93
	subq	%rax, %rdx	# name.93, D.13686
	movq	%rdx, %rax	# D.13686, D.13686
	movl	%eax, -420(%rbp)	# D.13686, len
	.loc 1 690 0
	cmpl	$0, -420(%rbp)	#, len
	jle	.L184	#,
.LBB13:
	.loc 1 694 0
	movl	-420(%rbp), %eax	# len, tmp495
	addl	$3, %eax	#, D.13687
	cmpl	$255, %eax	#, D.13685
	ja	.L185	#,
	.loc 1 695 0
	leaq	-304(%rbp), %rax	#, tmp496
	movq	%rax, -408(%rbp)	# tmp496, tmpbuf
	jmp	.L186	#
.L185:
	.loc 1 697 0
	movl	-420(%rbp), %eax	# len, tmp497
	addl	$3, %eax	#, D.13687
	cltq
	movq	%rax, %rdi	# D.13688,
	call	Perl_safesysmalloc	#
	movq	%rax, -408(%rbp)	# tmp498, tmpbuf
.L186:
	.loc 1 698 0
	movl	-420(%rbp), %eax	# len, tmp499
	movslq	%eax, %rdx	# tmp499, D.13688
	movq	-408(%rbp), %rax	# tmpbuf, tmp500
	movq	%r12, %rsi	# name,
	movq	%rax, %rdi	# tmp500,
	call	memcpy	#
	.loc 1 699 0
	movl	-420(%rbp), %eax	# len, len.94
	leal	1(%rax), %edx	#, tmp501
	movl	%edx, -420(%rbp)	# tmp501, len
	movslq	%eax, %rdx	# len.94, D.13689
	movq	-408(%rbp), %rax	# tmpbuf, tmp502
	addq	%rdx, %rax	# D.13689, D.13690
	movb	$58, (%rax)	#, *_85
	.loc 1 700 0
	movl	-420(%rbp), %eax	# len, len.95
	leal	1(%rax), %edx	#, tmp503
	movl	%edx, -420(%rbp)	# tmp503, len
	movslq	%eax, %rdx	# len.95, D.13689
	movq	-408(%rbp), %rax	# tmpbuf, tmp504
	addq	%rdx, %rax	# D.13689, D.13690
	movb	$58, (%rax)	#, *_89
	.loc 1 701 0
	movl	-420(%rbp), %eax	# len, tmp505
	movslq	%eax, %rdx	# tmp505, D.13689
	movq	-408(%rbp), %rax	# tmpbuf, tmp506
	addq	%rdx, %rax	# D.13689, D.13690
	movb	$0, (%rax)	#, *_91
	.loc 1 702 0
	movl	-444(%rbp), %ecx	# add, tmp507
	movl	-420(%rbp), %edx	# len, tmp508
	movq	-408(%rbp), %rsi	# tmpbuf, tmp509
	movq	-416(%rbp), %rax	# stash, tmp510
	movq	%rax, %rdi	# tmp510,
	call	Perl_hv_fetch	#
	movq	%rax, -392(%rbp)	# tmp511, gvp
	.loc 1 703 0
	cmpq	$0, -392(%rbp)	#, gvp
	je	.L187	#,
	.loc 1 703 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# gvp, tmp512
	movq	(%rax), %rax	# *gvp_93, iftmp.96
	jmp	.L188	#
.L187:
	.loc 1 703 0 discriminator 2
	movl	$0, %eax	#, iftmp.96
.L188:
	.loc 1 703 0 discriminator 3
	movq	%rax, %rbx	# iftmp.96, gv
	.loc 1 704 0 is_stmt 1 discriminator 3
	testq	%rbx, %rbx	# gv
	je	.L189	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, %rbx	#, gv
	je	.L189	#,
	.loc 1 705 0 is_stmt 1
	movl	12(%rbx), %eax	# gv_96->sv_flags, D.13685
	movzbl	%al, %eax	# D.13685, D.13685
	cmpl	$13, %eax	#, D.13685
	je	.L190	#,
	.loc 1 706 0
	movl	-444(%rbp), %eax	# add, tmp513
	andl	$2, %eax	#, D.13687
	movl	%eax, %esi	# D.13687, D.13687
	movl	-420(%rbp), %eax	# len, tmp514
	movslq	%eax, %rcx	# tmp514, D.13688
	movq	-408(%rbp), %rdx	# tmpbuf, tmp515
	movq	-416(%rbp), %rax	# stash, tmp516
	movl	%esi, %r8d	# D.13687,
	movq	%rax, %rsi	# tmp516,
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_init	#
	jmp	.L189	#
.L190:
	.loc 1 708 0
	movq	(%rbx), %rax	# gv_96->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_96->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _102->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _101->xgv_flags
.L189:
	.loc 1 710 0
	leaq	-304(%rbp), %rax	#, tmp517
	cmpq	%rax, -408(%rbp)	# tmp517, tmpbuf
	je	.L191	#,
	.loc 1 711 0
	movq	-408(%rbp), %rax	# tmpbuf, tmp518
	movq	%rax, %rdi	# tmp518,
	call	Perl_safesysfree	#
.L191:
	.loc 1 712 0
	testq	%rbx, %rbx	# gv
	je	.L192	#,
	.loc 1 712 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, %rbx	#, gv
	jne	.L193	#,
.L192:
	.loc 1 713 0 is_stmt 1
	movl	$0, %eax	#, D.13682
	jmp	.L183	#
.L193:
	.loc 1 715 0
	movq	(%rbx), %rax	# gv_96->sv_any, D.13691
	movq	56(%rax), %rax	# _105->xgv_gp, D.13693
	movq	40(%rax), %rax	# _106->gp_hv, tmp519
	movq	%rax, -416(%rbp)	# tmp519, stash
	cmpq	$0, -416(%rbp)	#, stash
	jne	.L194	#,
	.loc 1 716 0
	movq	(%rbx), %rax	# gv_96->sv_any, D.13691
	movq	56(%rax), %r12	# _108->xgv_gp, D.13693
	call	Perl_newHV	#
	movq	%rax, 40(%r12)	# D.13694, _109->gp_hv
	movq	40(%r12), %rax	# _109->gp_hv, tmp520
	movq	%rax, -416(%rbp)	# tmp520, stash
.L194:
	.loc 1 718 0
	movq	-416(%rbp), %rax	# stash, tmp521
	movq	(%rax), %rax	# stash_11->sv_any, D.13695
	movq	80(%rax), %rax	# _112->xhv_name, D.13690
	testq	%rax, %rax	# D.13690
	jne	.L184	#,
	.loc 1 719 0
	movq	-416(%rbp), %rax	# stash, tmp522
	movq	(%rax), %r12	# stash_11->sv_any, D.13695
	movq	%r13, %rdx	# namend, namend.97
	movq	-440(%rbp), %rax	# nambeg, nambeg.98
	subq	%rax, %rdx	# nambeg.98, D.13686
	movq	%rdx, %rax	# D.13686, D.13686
	movl	%eax, %edx	# D.13686, D.13687
	movq	-440(%rbp), %rax	# nambeg, tmp523
	movl	%edx, %esi	# D.13687,
	movq	%rax, %rdi	# tmp523,
	call	Perl_savepvn	#
	movq	%rax, 80(%r12)	# D.13690, _114->xhv_name
.L184:
.LBE13:
	.loc 1 722 0
	movzbl	0(%r13), %eax	# *namend_9, D.13683
	cmpb	$58, %al	#, D.13683
	jne	.L196	#,
	.loc 1 723 0
	addq	$1, %r13	#, namend
.L196:
	.loc 1 724 0
	addq	$1, %r13	#, namend
	.loc 1 725 0
	movq	%r13, %r12	# namend, name
	.loc 1 726 0
	movzbl	(%r12), %eax	# *name_124, D.13683
	testb	%al, %al	# D.13683
	jne	.L179	#,
	.loc 1 727 0
	testq	%rbx, %rbx	# gv
	jne	.L197	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.100
	movl	$1, %ecx	#,
	movl	$6, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# PL_defstash.100,
	call	Perl_hv_fetch	#
	movq	(%rax), %rax	# *_127, iftmp.99
	jmp	.L198	#
.L197:
	.loc 1 727 0 discriminator 2
	movq	%rbx, %rax	# gv, iftmp.99
.L198:
	.loc 1 727 0 discriminator 3
	jmp	.L183	#
.L179:
	.loc 1 680 0 is_stmt 1
	addq	$1, %r13	#, namend
.L176:
	.loc 1 680 0 is_stmt 0 discriminator 1
	movzbl	0(%r13), %eax	# *namend_9, D.13683
	testb	%al, %al	# D.13683
	jne	.L199	#,
	.loc 1 730 0 is_stmt 1
	movq	%r13, %rdx	# namend, namend.101
	movq	%r12, %rax	# name, name.102
	subq	%rax, %rdx	# name.102, D.13686
	movq	%rdx, %rax	# D.13686, D.13686
	movl	%eax, -420(%rbp)	# D.13686, len
	.loc 1 734 0
	cmpq	$0, -416(%rbp)	#, stash
	jne	.L200	#,
	.loc 1 735 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.104
	movzbl	37(%rax), %eax	# PL_curcop.104_137->op_private, D.13692
	movzbl	%al, %eax	# D.13692, D.13687
	andl	$8, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L201	#,
	.loc 1 735 0 is_stmt 0 discriminator 2
	movzbl	(%r12), %eax	# MEM[(U8 *)name_3], D.13692
	cmpb	$-65, %al	#, D.13692
	ja	.L202	#,
.L201:
	.loc 1 735 0 discriminator 1
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$64, %al	#, D.13683
	jle	.L203	#,
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$90, %al	#, D.13683
	jle	.L204	#,
.L203:
	.loc 1 735 0 discriminator 2
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$96, %al	#, D.13683
	jle	.L205	#,
	.loc 1 735 0 discriminator 1
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$122, %al	#, D.13683
	jle	.L204	#,
.L205:
	.loc 1 735 0 discriminator 2
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$95, %al	#, D.13683
	jne	.L206	#,
.L204:
	.loc 1 735 0 discriminator 1
	movl	$1, %eax	#, iftmp.105
	jmp	.L207	#
.L206:
	.loc 1 735 0 discriminator 3
	movl	$0, %eax	#, iftmp.105
.L207:
	.loc 1 735 0 discriminator 4
	andl	$1, %eax	#, iftmp.103
	jmp	.L208	#
.L202:
	.loc 1 735 0 discriminator 1
	movq	%r12, %rdi	# name,
	call	Perl_is_utf8_idcont	#
	testb	%al, %al	# D.13683
	je	.L209	#,
	movq	%r12, %rdi	# name,
	call	Perl_is_utf8_digit	#
	testb	%al, %al	# D.13683
	jne	.L209	#,
	.loc 1 735 0 discriminator 3
	movl	$1, %eax	#, iftmp.106
	jmp	.L210	#
.L209:
	.loc 1 735 0 discriminator 2
	movl	$0, %eax	#, iftmp.106
.L210:
	.loc 1 735 0 discriminator 4
	andl	$1, %eax	#, iftmp.103
.L208:
	.loc 1 735 0 discriminator 3
	testb	%al, %al	# iftmp.103
	je	.L211	#,
.LBB14:
	.loc 1 736 0 is_stmt 1
	movb	$0, -425(%rbp)	#, global
	.loc 1 740 0
	leaq	1(%r12), %rax	#, D.13684
	movzbl	(%rax), %eax	# *_156, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	cmpl	$78, %eax	#, D.13687
	je	.L213	#,
	cmpl	$78, %eax	#, D.13687
	jg	.L214	#,
	testl	%eax, %eax	# D.13687
	je	.L215	#,
	cmpl	$73, %eax	#, D.13687
	je	.L216	#,
	jmp	.L212	#
.L214:
	cmpl	$82, %eax	#, D.13687
	je	.L217	#,
	cmpl	$84, %eax	#, D.13687
	je	.L218	#,
	jmp	.L212	#
.L215:
	.loc 1 742 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$95, %al	#, D.13683
	jne	.L219	#,
	.loc 1 743 0
	movb	$1, -425(%rbp)	#, global
	.loc 1 744 0
	jmp	.L212	#
.L219:
	jmp	.L212	#
.L213:
	.loc 1 746 0
	movl	$.LC21, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	je	.L220	#,
	.loc 1 746 0 is_stmt 0 discriminator 1
	movl	$.LC22, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L221	#,
.L220:
	.loc 1 747 0 is_stmt 1
	movb	$1, -425(%rbp)	#, global
	.loc 1 748 0
	jmp	.L212	#
.L221:
	jmp	.L212	#
.L216:
	.loc 1 750 0
	movl	$.LC23, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L222	#,
	.loc 1 751 0
	movb	$1, -425(%rbp)	#, global
	.loc 1 752 0
	jmp	.L212	#
.L222:
	jmp	.L212	#
.L218:
	.loc 1 754 0
	movl	$.LC24, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	je	.L223	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	movl	$.LC25, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	je	.L223	#,
	.loc 1 755 0 is_stmt 1 discriminator 1
	movl	$.LC26, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	.loc 1 754 0 discriminator 1
	testl	%eax, %eax	# D.13687
	jne	.L224	#,
.L223:
	.loc 1 756 0
	movb	$1, -425(%rbp)	#, global
	.loc 1 757 0
	jmp	.L212	#
.L224:
	jmp	.L212	#
.L217:
	.loc 1 759 0
	movl	$.LC27, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	je	.L225	#,
	.loc 1 759 0 is_stmt 0 discriminator 1
	movl	$.LC28, %esi	#,
	movq	%r12, %rdi	# name,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L226	#,
.L225:
	.loc 1 760 0 is_stmt 1
	movb	$1, -425(%rbp)	#, global
	.loc 1 761 0
	jmp	.L340	#
.L226:
.L340:
	nop
.L212:
	.loc 1 764 0
	cmpb	$0, -425(%rbp)	#, global
	je	.L227	#,
	.loc 1 765 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, tmp524
	movq	%rax, -416(%rbp)	# tmp524, stash
	jmp	.L228	#
.L227:
	.loc 1 766 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.107
	cmpq	$PL_compiling, %rax	#, PL_curcop.107
	jne	.L229	#,
	.loc 1 767 0
	movq	PL_curstash(%rip), %rax	# PL_curstash, tmp525
	movq	%rax, -416(%rbp)	# tmp525, stash
	.loc 1 768 0
	cmpl	$0, -444(%rbp)	#, add
	je	.L228	#,
	.loc 1 768 0 is_stmt 0 discriminator 1
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.108
	andl	$1024, %eax	#, D.13685
	testl	%eax, %eax	# D.13685
	je	.L228	#,
	cmpl	$12, -448(%rbp)	#, sv_type
	je	.L228	#,
	.loc 1 769 0 is_stmt 1
	cmpl	$13, -448(%rbp)	#, sv_type
	je	.L228	#,
	.loc 1 770 0
	cmpl	$14, -448(%rbp)	#, sv_type
	je	.L228	#,
	.loc 1 771 0
	cmpl	$15, -448(%rbp)	#, sv_type
	je	.L228	#,
	.loc 1 772 0
	cmpl	$1, -420(%rbp)	#, len
	jne	.L231	#,
	.loc 1 773 0
	cmpl	$4, -448(%rbp)	#, sv_type
	jne	.L231	#,
	.loc 1 774 0 discriminator 1
	movzbl	(%r12), %eax	# *name_3, D.13683
	.loc 1 773 0 discriminator 1
	cmpb	$97, %al	#, D.13683
	je	.L228	#,
	.loc 1 774 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$98, %al	#, D.13683
	je	.L228	#,
.L231:
	.loc 1 776 0
	movl	-420(%rbp), %edx	# len, tmp526
	movq	-416(%rbp), %rax	# stash, tmp527
	movl	$0, %ecx	#,
	movq	%r12, %rsi	# name,
	movq	%rax, %rdi	# tmp527,
	call	Perl_hv_fetch	#
	movq	%rax, -392(%rbp)	# tmp528, gvp
	.loc 1 777 0
	cmpq	$0, -392(%rbp)	#, gvp
	je	.L232	#,
	.loc 1 778 0 discriminator 1
	movq	-392(%rbp), %rax	# gvp, tmp529
	movq	(%rax), %rax	# *gvp_181, D.13682
	.loc 1 777 0 discriminator 1
	cmpq	$PL_sv_undef, %rax	#, D.13682
	je	.L232	#,
	.loc 1 779 0
	movq	-392(%rbp), %rax	# gvp, tmp530
	movq	(%rax), %rax	# *gvp_181, D.13682
	movl	12(%rax), %eax	# _183->sv_flags, D.13685
	movzbl	%al, %eax	# D.13685, D.13685
	.loc 1 778 0
	cmpl	$13, %eax	#, D.13685
	je	.L233	#,
.L232:
	.loc 1 781 0
	movq	$0, -416(%rbp)	#, stash
	jmp	.L228	#
.L233:
	.loc 1 783 0
	cmpl	$4, -448(%rbp)	#, sv_type
	jne	.L234	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# gvp, tmp531
	movq	(%rax), %rax	# *gvp_181, D.13682
	movq	(%rax), %rax	# _186->sv_any, D.13691
	movzbl	88(%rax), %eax	# _187->xgv_flags, D.13692
	movzbl	%al, %eax	# D.13692, D.13687
	andl	$16, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L235	#,
.L234:
	.loc 1 783 0 discriminator 2
	cmpl	$10, -448(%rbp)	#, sv_type
	jne	.L236	#,
	.loc 1 784 0 is_stmt 1
	movq	-392(%rbp), %rax	# gvp, tmp532
	movq	(%rax), %rax	# *gvp_181, D.13682
	movq	(%rax), %rax	# _191->sv_any, D.13691
	movzbl	88(%rax), %eax	# _192->xgv_flags, D.13692
	movzbl	%al, %eax	# D.13692, D.13687
	andl	$32, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L235	#,
.L236:
	.loc 1 784 0 is_stmt 0 discriminator 1
	cmpl	$11, -448(%rbp)	#, sv_type
	jne	.L228	#,
	.loc 1 785 0 is_stmt 1
	movq	-392(%rbp), %rax	# gvp, tmp533
	movq	(%rax), %rax	# *gvp_181, D.13682
	movq	(%rax), %rax	# _196->sv_any, D.13691
	movzbl	88(%rax), %eax	# _197->xgv_flags, D.13692
	movzbl	%al, %eax	# D.13692, D.13687
	andl	$64, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L228	#,
.L235:
	.loc 1 787 0
	cmpl	$10, -448(%rbp)	#, sv_type
	je	.L237	#,
	.loc 1 789 0
	cmpl	$11, -448(%rbp)	#, sv_type
	jne	.L238	#,
	.loc 1 789 0 is_stmt 0 discriminator 1
	movl	$37, %eax	#, iftmp.110
	jmp	.L240	#
.L238:
	.loc 1 789 0 discriminator 2
	movl	$36, %eax	#, iftmp.110
	jmp	.L240	#
.L237:
	.loc 1 787 0 is_stmt 1 discriminator 1
	movl	$64, %eax	#, iftmp.109
.L240:
	.loc 1 787 0 is_stmt 0 discriminator 2
	movq	%r12, %rdx	# name,
	movl	%eax, %esi	# iftmp.109,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 791 0 is_stmt 1 discriminator 2
	movq	-392(%rbp), %rax	# gvp, tmp534
	movq	(%rax), %rax	# *gvp_181, D.13682
	movq	(%rax), %rax	# _205->sv_any, D.13691
	movq	56(%rax), %rax	# _206->xgv_gp, D.13693
	movl	64(%rax), %eax	# _207->gp_cvgen, D.13685
	testl	%eax, %eax	# D.13685
	jne	.L241	#,
	.loc 1 791 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# gvp, tmp535
	movq	(%rax), %rax	# *gvp_181, D.13682
	movq	(%rax), %rax	# _209->sv_any, D.13691
	movq	56(%rax), %rax	# _210->xgv_gp, D.13693
	movq	56(%rax), %rax	# _211->gp_cv, D.13697
	testq	%rax, %rax	# D.13697
	je	.L241	#,
	.loc 1 792 0 is_stmt 1
	movq	%r12, %rsi	# name,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L241:
	.loc 1 793 0
	movq	$0, -416(%rbp)	#, stash
	jmp	.L228	#
.L229:
	.loc 1 798 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.111
	movq	48(%rax), %rax	# PL_curcop.111_215->cop_stash, tmp536
	movq	%rax, -416(%rbp)	# tmp536, stash
.LBE14:
	jmp	.L200	#
.L228:
	jmp	.L200	#
.L211:
	.loc 1 801 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, tmp537
	movq	%rax, -416(%rbp)	# tmp537, stash
.L200:
	.loc 1 806 0
	cmpq	$0, -416(%rbp)	#, stash
	jne	.L242	#,
	.loc 1 807 0
	cmpl	$0, -444(%rbp)	#, add
	je	.L243	#,
.LBB15:
	.loc 1 808 0
	cmpl	$4, -448(%rbp)	#, sv_type
	je	.L244	#,
	.loc 1 812 0
	cmpl	$10, -448(%rbp)	#, sv_type
	je	.L245	#,
	.loc 1 813 0
	cmpl	$11, -448(%rbp)	#, sv_type
	jne	.L246	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	movl	$.LC31, %eax	#, iftmp.114
	jmp	.L249	#
.L246:
	.loc 1 813 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.114
	jmp	.L249	#
.L245:
	.loc 1 812 0 is_stmt 1 discriminator 1
	movl	$.LC32, %eax	#, iftmp.113
	jmp	.L249	#
.L244:
	.loc 1 808 0 discriminator 1
	movl	$.LC33, %eax	#, iftmp.112
.L249:
	.loc 1 808 0 is_stmt 0 discriminator 2
	movq	%r12, %rdx	# name,
	movq	%rax, %rsi	# iftmp.112,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_mess	#
	movq	%rax, %rbx	#, err
	.loc 1 814 0 is_stmt 1 discriminator 2
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.115
	andl	$8388608, %eax	#, D.13685
	testl	%eax, %eax	# D.13685
	je	.L250	#,
	.loc 1 815 0
	movl	12(%rbx), %eax	# err_224->sv_flags, D.13685
	orl	$536870912, %eax	#, D.13685
	movl	%eax, 12(%rbx)	# D.13685, err_224->sv_flags
.L250:
	.loc 1 816 0
	movq	%rbx, %rdi	# err,
	call	Perl_qerror	#
	.loc 1 817 0
	movq	PL_nullstash(%rip), %rax	# PL_nullstash, tmp538
	movq	%rax, -416(%rbp)	# tmp538, stash
.LBE15:
	jmp	.L242	#
.L243:
	.loc 1 820 0
	movl	$0, %eax	#, D.13682
	jmp	.L183	#
.L242:
	.loc 1 823 0
	movq	-416(%rbp), %rax	# stash, tmp539
	movl	8(%rax), %eax	# stash_18->sv_refcnt, D.13685
	testl	%eax, %eax	# D.13685
	jne	.L251	#,
	.loc 1 824 0
	movl	$0, %eax	#, D.13682
	jmp	.L183	#
.L251:
	.loc 1 826 0
	movl	-444(%rbp), %ecx	# add, tmp540
	movl	-420(%rbp), %edx	# len, tmp541
	movq	-416(%rbp), %rax	# stash, tmp542
	movq	%r12, %rsi	# name,
	movq	%rax, %rdi	# tmp542,
	call	Perl_hv_fetch	#
	movq	%rax, -392(%rbp)	# tmp543, gvp
	.loc 1 827 0
	cmpq	$0, -392(%rbp)	#, gvp
	je	.L252	#,
	.loc 1 827 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# gvp, tmp544
	movq	(%rax), %rax	# *gvp_233, D.13682
	cmpq	$PL_sv_undef, %rax	#, D.13682
	jne	.L253	#,
.L252:
	.loc 1 828 0 is_stmt 1
	movl	$0, %eax	#, D.13682
	jmp	.L183	#
.L253:
	.loc 1 829 0
	movq	-392(%rbp), %rax	# gvp, tmp545
	movq	(%rax), %rbx	# *gvp_233, gv
	.loc 1 830 0
	movl	12(%rbx), %eax	# gv_235->sv_flags, D.13685
	movzbl	%al, %eax	# D.13685, D.13685
	cmpl	$13, %eax	#, D.13685
	jne	.L254	#,
	.loc 1 831 0
	cmpl	$0, -444(%rbp)	#, add
	je	.L255	#,
	.loc 1 832 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _239->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _238->xgv_flags
	.loc 1 833 0
	movl	-448(%rbp), %eax	# sv_type, tmp546
	movl	%eax, %esi	# tmp546,
	movq	%rbx, %rdi	# gv,
	call	S_gv_init_sv	#
	.loc 1 834 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$33, %al	#, D.13683
	jne	.L255	#,
	.loc 1 834 0 is_stmt 0 discriminator 1
	cmpl	$11, -448(%rbp)	#, sv_type
	jne	.L255	#,
	cmpl	$1, -420(%rbp)	#, len
	jne	.L255	#,
	.loc 1 835 0 is_stmt 1
	movq	%rbx, %rdi	# gv,
	call	S_require_errno	#
.L255:
	.loc 1 837 0
	movq	%rbx, %rax	# gv, D.13682
	jmp	.L183	#
.L254:
	.loc 1 838 0
	movl	-444(%rbp), %eax	# add, tmp547
	andl	$16, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L256	#,
	.loc 1 839 0
	movq	%rbx, %rax	# gv, D.13682
	jmp	.L183	#
.L256:
	.loc 1 844 0
	movl	-444(%rbp), %eax	# add, tmp548
	andl	$4, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L257	#,
	.loc 1 844 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.116
	movq	80(%rax), %rax	# PL_curcop.116_247->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	je	.L258	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.117
	movq	80(%rax), %rax	# PL_curcop.117_249->cop_warnings, D.13698
	cmpq	$16, %rax	#, D.13698
	je	.L258	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.118
	movq	80(%rax), %rax	# PL_curcop.118_251->cop_warnings, D.13698
	cmpq	$32, %rax	#, D.13698
	je	.L257	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.119
	movq	80(%rax), %rax	# PL_curcop.119_253->cop_warnings, D.13698
	movq	(%rax), %rax	# _254->sv_any, D.13699
	movq	(%rax), %rax	# MEM[(struct XPV *)_255].xpv_pv, D.13690
	addq	$6, %rax	#, D.13690
	movzbl	(%rax), %eax	# *_257, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	andl	$1, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L257	#,
.L258:
	.loc 1 845 0 is_stmt 1
	movq	-440(%rbp), %rax	# nambeg, tmp549
	movq	%rax, %rdx	# tmp549,
	movl	$.LC35, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L257:
	.loc 1 846 0
	movl	-444(%rbp), %eax	# add, tmp550
	andl	$2, %eax	#, D.13687
	movl	%eax, %ecx	# D.13687, D.13687
	movl	-420(%rbp), %eax	# len, tmp551
	movslq	%eax, %rdx	# tmp551, D.13688
	movq	-416(%rbp), %rax	# stash, tmp552
	movl	%ecx, %r8d	# D.13687,
	movq	%rdx, %rcx	# D.13688,
	movq	%r12, %rdx	# name,
	movq	%rax, %rsi	# tmp552,
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_init	#
	.loc 1 847 0
	movl	-448(%rbp), %eax	# sv_type, tmp553
	movl	%eax, %esi	# tmp553,
	movq	%rbx, %rdi	# gv,
	call	S_gv_init_sv	#
	.loc 1 849 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$64, %al	#, D.13683
	jle	.L259	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$90, %al	#, D.13683
	jle	.L260	#,
.L259:
	.loc 1 849 0 discriminator 2
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$96, %al	#, D.13683
	jle	.L261	#,
	.loc 1 849 0 discriminator 1
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$122, %al	#, D.13683
	jg	.L261	#,
.L260:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.121
	movq	80(%rax), %rax	# PL_curcop.121_267->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	je	.L262	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.123
	movq	80(%rax), %rax	# PL_curcop.123_269->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	je	.L263	#,
	.loc 1 849 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.124
	movq	80(%rax), %rax	# PL_curcop.124_271->cop_warnings, D.13698
	cmpq	$32, %rax	#, D.13698
	je	.L263	#,
	.loc 1 849 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.125
	movq	80(%rax), %rax	# PL_curcop.125_273->cop_warnings, D.13698
	cmpq	$16, %rax	#, D.13698
	je	.L264	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.126
	movq	80(%rax), %rax	# PL_curcop.126_275->cop_warnings, D.13698
	movq	(%rax), %rax	# _276->sv_any, D.13699
	movq	(%rax), %rax	# MEM[(struct XPV *)_277].xpv_pv, D.13690
	addq	$3, %rax	#, D.13690
	movzbl	(%rax), %eax	# *_279, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	andl	$16, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L264	#,
.L263:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.127
	movq	80(%rax), %rax	# PL_curcop.127_283->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	jne	.L265	#,
	.loc 1 849 0 discriminator 4
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.128
	movzbl	%al, %eax	# PL_dowarn.128, D.13687
	andl	$1, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L264	#,
.L265:
	.loc 1 849 0 discriminator 3
	movl	$1, %eax	#, iftmp.122
	jmp	.L266	#
.L264:
	.loc 1 849 0 discriminator 2
	movl	$0, %eax	#, iftmp.122
.L266:
	.loc 1 849 0 discriminator 5
	andl	$1, %eax	#, iftmp.120
	jmp	.L267	#
.L262:
	.loc 1 850 0 is_stmt 1 discriminator 2
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.129
	movzbl	%al, %eax	# PL_dowarn.129, D.13687
	andl	$1, %eax	#, D.13687
	.loc 1 849 0 discriminator 2
	testl	%eax, %eax	# D.13687
	sete	%al	#, iftmp.120
.L267:
	.loc 1 849 0 is_stmt 0 discriminator 3
	testb	%al, %al	# iftmp.120
	je	.L261	#,
	.loc 1 851 0 is_stmt 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _296->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _295->xgv_flags
.L261:
	.loc 1 854 0
	cmpl	$1, -420(%rbp)	#, len
	jle	.L268	#,
	.loc 1 856 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	cmpb	$86, %al	#, D.13683
	jg	.L312	#,
.LBB16:
	.loc 1 864 0
	leaq	1(%r12), %rax	#, tmp554
	movq	%rax, -384(%rbp)	# tmp554, name2
	.loc 1 865 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	subl	$5, %eax	#, tmp555
	cmpl	$81, %eax	#, tmp555
	ja	.L312	#,
	movl	%eax, %eax	# tmp555, tmp556
	movq	.L271(,%rax,8), %rax	#, tmp557
	jmp	*%rax	# tmp557
	.section	.rodata
	.align 8
	.align 4
.L271:
	.quad	.L270
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L272
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L273
	.quad	.L274
	.quad	.L312
	.quad	.L275
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L276
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L277
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L278
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L279
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L280
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L281
	.quad	.L312
	.quad	.L312
	.quad	.L282
	.text
.L277:
	.loc 1 867 0
	movq	-384(%rbp), %rax	# name2, tmp558
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp558,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L283	#,
	.loc 1 868 0
	testq	%rbx, %rbx	# gv
	je	.L284	#,
	.loc 1 868 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)gv_235].sv_flags, D.13685
	movzbl	%al, %eax	# D.13685, D.13685
	cmpl	$13, %eax	#, D.13685
	jne	.L284	#,
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _306->xgv_gp, D.13693
	testq	%rax, %rax	# D.13693
	je	.L284	#,
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _308->xgv_gp, D.13693
	movq	16(%rax), %rax	# _309->gp_io, D.13700
	testq	%rax, %rax	# D.13700
	je	.L284	#,
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _311->xgv_gp, D.13693
	movq	16(%rax), %rax	# _312->gp_io, iftmp.130
	jmp	.L285	#
.L284:
	.loc 1 868 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_IOadd	#
	movq	(%rax), %rax	# _314->sv_any, D.13691
	movq	56(%rax), %rax	# _315->xgv_gp, D.13693
	movq	16(%rax), %rax	# _316->gp_io, iftmp.130
.L285:
	.loc 1 868 0 discriminator 3
	movq	(%rax), %rax	# iftmp.130_41->sv_any, D.13701
	movzbl	163(%rax), %edx	# _318->xio_flags, D.13683
	orl	$3, %edx	#, D.13702
	movb	%dl, 163(%rax)	# D.13702, _318->xio_flags
	.loc 1 870 0 is_stmt 1 discriminator 3
	jmp	.L269	#
.L283:
	.loc 1 870 0 is_stmt 0
	jmp	.L269	#
.L278:
	.loc 1 872 0 is_stmt 1
	movq	-384(%rbp), %rax	# name2, tmp559
	movl	$5, %edx	#,
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp559,
	call	strncmp	#
	testl	%eax, %eax	# D.13687
	jne	.L286	#,
	.loc 1 873 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _323->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _322->xgv_flags
	.loc 1 874 0
	jmp	.L269	#
.L286:
	jmp	.L269	#
.L279:
	.loc 1 876 0
	movq	-384(%rbp), %rax	# name2, tmp560
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp560,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L287	#,
.LBB17:
	.loc 1 877 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _327->xgv_gp, D.13693
	movq	32(%rax), %rax	# _328->gp_av, D.13703
	testq	%rax, %rax	# D.13703
	je	.L288	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _330->xgv_gp, D.13693
	movq	32(%rax), %rax	# _331->gp_av, iftmp.131
	jmp	.L289	#
.L288:
	.loc 1 877 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _333->sv_any, D.13691
	movq	56(%rax), %rax	# _334->xgv_gp, D.13693
	movq	32(%rax), %rax	# _335->gp_av, iftmp.131
.L289:
	.loc 1 877 0 discriminator 3
	movq	%rax, -376(%rbp)	# iftmp.131, av
	.loc 1 878 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _339->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _338->xgv_flags
	.loc 1 879 0 discriminator 3
	movq	-376(%rbp), %rax	# av, tmp561
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$73, %edx	#,
	movq	%rbx, %rsi	# gv,
	movq	%rax, %rdi	# tmp561,
	call	Perl_sv_magic	#
	.loc 1 881 0 discriminator 3
	movl	-444(%rbp), %eax	# add, tmp562
	andl	$2, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L287	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# nambeg, tmp563
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp563,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L287	#,
	.loc 1 882 0 is_stmt 1
	movq	-376(%rbp), %rax	# av, tmp564
	movq	(%rax), %rax	# av_337->sv_any, D.13704
	movq	8(%rax), %rax	# _344->xav_fill, D.13686
	cmpq	$-1, %rax	#, D.13686
	jne	.L287	#,
.LBB18:
	.loc 1 885 0
	movq	$.LC40, -368(%rbp)	#, pname
	movl	$9, %esi	#,
	movl	$.LC40, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.13698
	movq	-376(%rbp), %rax	# av, tmp565
	movq	%rdx, %rsi	# D.13698,
	movq	%rax, %rdi	# tmp565,
	call	Perl_av_push	#
	.loc 1 886 0
	movq	-368(%rbp), %rax	# pname, tmp566
	movl	$1, %edx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp566,
	call	Perl_gv_stashpvn	#
	.loc 1 887 0
	movq	$.LC41, -368(%rbp)	#, pname
	movl	$7, %esi	#,
	movl	$.LC41, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.13698
	movq	-376(%rbp), %rax	# av, tmp567
	movq	%rdx, %rsi	# D.13698,
	movq	%rax, %rdi	# tmp567,
	call	Perl_av_push	#
	.loc 1 888 0
	movq	-368(%rbp), %rax	# pname, tmp568
	movl	$1, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp568,
	call	Perl_gv_stashpvn	#
	.loc 1 889 0
	movq	$.LC42, -368(%rbp)	#, pname
	movl	$9, %esi	#,
	movl	$.LC42, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.13698
	movq	-376(%rbp), %rax	# av, tmp569
	movq	%rdx, %rsi	# D.13698,
	movq	%rax, %rdi	# tmp569,
	call	Perl_av_push	#
	.loc 1 890 0
	movq	-368(%rbp), %rax	# pname, tmp570
	movl	$1, %edx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp570,
	call	Perl_gv_stashpvn	#
	.loc 1 891 0
	movq	$.LC43, -368(%rbp)	#, pname
	movl	$9, %esi	#,
	movl	$.LC43, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.13698
	movq	-376(%rbp), %rax	# av, tmp571
	movq	%rdx, %rsi	# D.13698,
	movq	%rax, %rdi	# tmp571,
	call	Perl_av_push	#
	.loc 1 892 0
	movq	-368(%rbp), %rax	# pname, tmp572
	movl	$1, %edx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp572,
	call	Perl_gv_stashpvn	#
	.loc 1 893 0
	movq	$.LC44, -368(%rbp)	#, pname
	movl	$9, %esi	#,
	movl	$.LC44, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.13698
	movq	-376(%rbp), %rax	# av, tmp573
	movq	%rdx, %rsi	# D.13698,
	movq	%rax, %rdi	# tmp573,
	call	Perl_av_push	#
	.loc 1 894 0
	movq	-368(%rbp), %rax	# pname, tmp574
	movl	$1, %edx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp574,
	call	Perl_gv_stashpvn	#
.LBE18:
.LBE17:
	.loc 1 897 0
	jmp	.L269	#
.L287:
	jmp	.L269	#
.L280:
	.loc 1 899 0
	movq	-384(%rbp), %rax	# name2, tmp575
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp575,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L290	#,
.LBB19:
	.loc 1 900 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _357->xgv_gp, D.13693
	movq	40(%rax), %rax	# _358->gp_hv, D.13694
	testq	%rax, %rax	# D.13694
	je	.L291	#,
	.loc 1 900 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _360->xgv_gp, D.13693
	movq	40(%rax), %rax	# _361->gp_hv, iftmp.132
	jmp	.L292	#
.L291:
	.loc 1 900 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _363->sv_any, D.13691
	movq	56(%rax), %rax	# _364->xgv_gp, D.13693
	movq	40(%rax), %rax	# _365->gp_hv, iftmp.132
.L292:
	.loc 1 900 0 discriminator 3
	movq	%rax, -360(%rbp)	# iftmp.132, hv
	.loc 1 901 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _369->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _368->xgv_flags
	.loc 1 902 0 discriminator 3
	movq	-360(%rbp), %rax	# hv, tmp576
	movl	$65, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp576,
	call	Perl_hv_magic	#
.LBE19:
	.loc 1 904 0 discriminator 3
	jmp	.L269	#
.L290:
	.loc 1 904 0 is_stmt 0
	jmp	.L269	#
.L281:
	.loc 1 906 0 is_stmt 1
	movq	-384(%rbp), %rax	# name2, tmp577
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp577,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L293	#,
.LBB20:
	.loc 1 909 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.133
	testq	%rax, %rax	# PL_psig_ptr.133
	jne	.L294	#,
	.loc 1 910 0
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_psig_ptr(%rip)	# PL_psig_ptr.134, PL_psig_ptr
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.135
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_psig_ptr.135,
	call	memset	#
	.loc 1 911 0
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_psig_name(%rip)	# PL_psig_name.136, PL_psig_name
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.137
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_psig_name.137,
	call	memset	#
	.loc 1 912 0
	movl	$64, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_psig_pend(%rip)	# PL_psig_pend.138, PL_psig_pend
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.139
	movl	$64, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_psig_pend.139,
	call	memset	#
.L294:
	.loc 1 914 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _381->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _380->xgv_flags
	.loc 1 915 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _384->xgv_gp, D.13693
	movq	40(%rax), %rax	# _385->gp_hv, D.13694
	testq	%rax, %rax	# D.13694
	je	.L295	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _387->xgv_gp, D.13693
	movq	40(%rax), %rax	# _388->gp_hv, iftmp.140
	jmp	.L296	#
.L295:
	.loc 1 915 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _390->sv_any, D.13691
	movq	56(%rax), %rax	# _391->xgv_gp, D.13693
	movq	40(%rax), %rax	# _392->gp_hv, iftmp.140
.L296:
	.loc 1 915 0 discriminator 3
	movq	%rax, -352(%rbp)	# iftmp.140, hv
	.loc 1 916 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# hv, tmp578
	movl	$83, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp578,
	call	Perl_hv_magic	#
	.loc 1 917 0 discriminator 3
	movl	$1, -424(%rbp)	#, i
	jmp	.L297	#
.L299:
.LBB21:
	.loc 1 919 0
	movl	-424(%rbp), %eax	# i, tmp580
	cltq
	movq	PL_sig_name(,%rax,8), %rax	# PL_sig_name, D.13690
	movq	%rax, %rdi	# D.13690,
	call	strlen	#
	movl	%eax, %edx	# D.13688, D.13687
	movl	-424(%rbp), %eax	# i, tmp582
	cltq
	movq	PL_sig_name(,%rax,8), %rsi	# PL_sig_name, D.13690
	movq	-352(%rbp), %rax	# hv, tmp583
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp583,
	call	Perl_hv_fetch	#
	movq	%rax, -344(%rbp)	# tmp584, init
	.loc 1 920 0
	cmpq	$0, -344(%rbp)	#, init
	je	.L298	#,
	.loc 1 921 0
	movq	-344(%rbp), %rax	# init, tmp585
	movq	(%rax), %rax	# *init_400, D.13698
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_setsv_flags	#
.L298:
	.loc 1 922 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.141
	movl	-424(%rbp), %edx	# i, tmp586
	movslq	%edx, %rdx	# tmp586, D.13688
	salq	$3, %rdx	#, D.13688
	addq	%rdx, %rax	# D.13688, D.13696
	movq	$0, (%rax)	#, *_405
	.loc 1 923 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.142
	movl	-424(%rbp), %edx	# i, tmp587
	movslq	%edx, %rdx	# tmp587, D.13688
	salq	$3, %rdx	#, D.13688
	addq	%rdx, %rax	# D.13688, D.13696
	movq	$0, (%rax)	#, *_409
	.loc 1 924 0
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.143
	movl	-424(%rbp), %edx	# i, tmp588
	movslq	%edx, %rdx	# tmp588, D.13688
	salq	$2, %rdx	#, D.13688
	addq	%rdx, %rax	# D.13688, D.13705
	movl	$0, (%rax)	#, *_413
.LBE21:
	.loc 1 917 0
	addl	$1, -424(%rbp)	#, i
.L297:
	.loc 1 917 0 is_stmt 0 discriminator 1
	cmpl	$15, -424(%rbp)	#, i
	jle	.L299	#,
.L293:
.LBE20:
	.loc 1 927 0 is_stmt 1
	jmp	.L269	#
.L282:
	.loc 1 929 0
	movq	-384(%rbp), %rax	# name2, tmp589
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp589,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L300	#,
	.loc 1 930 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movzbl	88(%rdx), %edx	# _417->xgv_flags, D.13692
	orl	$2, %edx	#, D.13692
	movb	%dl, 88(%rax)	# D.13692, _416->xgv_flags
	.loc 1 931 0
	jmp	.L269	#
.L300:
	jmp	.L269	#
.L270:
	.loc 1 933 0
	movq	-384(%rbp), %rax	# name2, tmp590
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp590,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L301	#,
	.loc 1 934 0
	jmp	.L302	#
.L301:
	.loc 1 935 0
	jmp	.L269	#
.L272:
	.loc 1 937 0
	movq	-384(%rbp), %rax	# name2, tmp591
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp591,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L303	#,
	.loc 1 938 0
	jmp	.L302	#
.L303:
	.loc 1 939 0
	jmp	.L269	#
.L273:
	.loc 1 941 0
	movq	-384(%rbp), %rax	# name2, tmp592
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp592,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L304	#,
	.loc 1 942 0
	jmp	.L305	#
.L304:
	.loc 1 943 0
	jmp	.L269	#
.L274:
	.loc 1 945 0
	movq	-384(%rbp), %rax	# name2, tmp593
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp593,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L306	#,
	.loc 1 946 0
	jmp	.L305	#
.L306:
	.loc 1 947 0
	movq	-384(%rbp), %rax	# name2, tmp594
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp594,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L307	#,
	.loc 1 948 0
	jmp	.L305	#
.L307:
	.loc 1 949 0
	jmp	.L269	#
.L275:
	.loc 1 951 0
	movq	-384(%rbp), %rax	# name2, tmp595
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp595,
	call	strcmp	#
	testl	%eax, %eax	# D.13687
	jne	.L308	#,
	.loc 1 952 0
	jmp	.L302	#
.L308:
	.loc 1 953 0
	jmp	.L269	#
.L276:
.LBB22:
	.loc 1 967 0
	movl	-420(%rbp), %eax	# len, tmp596
	cltq
	addq	%r12, %rax	# name, tmp597
	movq	%rax, -400(%rbp)	# tmp597, end
	.loc 1 968 0
	jmp	.L309	#
.L311:
	.loc 1 969 0
	movq	-400(%rbp), %rax	# end, tmp598
	movzbl	(%rax), %eax	# *end_428, D.13683
	cmpb	$47, %al	#, D.13683
	jle	.L310	#,
	.loc 1 969 0 is_stmt 0 discriminator 2
	movq	-400(%rbp), %rax	# end, tmp599
	movzbl	(%rax), %eax	# *end_428, D.13683
	cmpb	$57, %al	#, D.13683
	jle	.L309	#,
.L310:
	.loc 1 969 0 discriminator 1
	movq	%rbx, %rax	# gv, D.13682
	jmp	.L183	#
.L309:
	.loc 1 968 0 is_stmt 1 discriminator 1
	subq	$1, -400(%rbp)	#, end
	cmpq	%r12, -400(%rbp)	# name, end
	ja	.L311	#,
	.loc 1 971 0
	jmp	.L305	#
.L269:
.LBE22:
.LBE16:
	jmp	.L312	#
.L268:
	.loc 1 978 0
	movzbl	(%r12), %eax	# *name_3, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	cmpl	$126, %eax	#, D.13687
	ja	.L312	#,
	movl	%eax, %eax	# D.13687, tmp600
	movq	.L313(,%rax,8), %rax	#, tmp601
	jmp	*%rax	# tmp601
	.section	.rodata
	.align 8
	.align 4
.L313:
	.quad	.L312
	.quad	.L302
	.quad	.L312
	.quad	.L302
	.quad	.L302
	.quad	.L302
	.quad	.L302
	.quad	.L312
	.quad	.L302
	.quad	.L302
	.quad	.L312
	.quad	.L312
	.quad	.L314
	.quad	.L312
	.quad	.L302
	.quad	.L302
	.quad	.L302
	.quad	.L312
	.quad	.L312
	.quad	.L305
	.quad	.L302
	.quad	.L312
	.quad	.L315
	.quad	.L302
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L316
	.quad	.L312
	.quad	.L317
	.quad	.L312
	.quad	.L302
	.quad	.L318
	.quad	.L318
	.quad	.L302
	.quad	.L302
	.quad	.L317
	.quad	.L319
	.quad	.L302
	.quad	.L320
	.quad	.L302
	.quad	.L302
	.quad	.L312
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L305
	.quad	.L321
	.quad	.L322
	.quad	.L302
	.quad	.L302
	.quad	.L302
	.quad	.L302
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L302
	.quad	.L302
	.quad	.L324
	.quad	.L302
	.quad	.L312
	.quad	.L318
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L312
	.quad	.L325
	.quad	.L312
	.quad	.L302
	.text
.L318:
	.loc 1 982 0
	cmpl	$10, -448(%rbp)	#, sv_type
	je	.L312	#,
	.loc 1 983 0
	cmpl	$11, -448(%rbp)	#, sv_type
	je	.L312	#,
	.loc 1 984 0
	cmpl	$12, -448(%rbp)	#, sv_type
	je	.L312	#,
	.loc 1 985 0
	cmpl	$14, -448(%rbp)	#, sv_type
	je	.L312	#,
	.loc 1 986 0
	cmpl	$15, -448(%rbp)	#, sv_type
	je	.L312	#,
	.loc 1 989 0
	movb	$1, PL_sawampersand(%rip)	#, PL_sawampersand
	.loc 1 990 0
	jmp	.L305	#
.L321:
	.loc 1 993 0
	movq	PL_chopset(%rip), %rdx	# PL_chopset, PL_chopset.144
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _435->xgv_gp, D.13693
	movq	(%rax), %rax	# _436->gp_sv, D.13698
	movq	%rdx, %rsi	# PL_chopset.144,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_setpv	#
	.loc 1 994 0
	jmp	.L302	#
.L316:
	.loc 1 1010 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _438->xgv_gp, D.13693
	movq	(%rax), %rax	# _439->gp_sv, D.13698
	movl	-420(%rbp), %edx	# len, tmp602
	movl	%edx, %r8d	# tmp602,
	movq	%r12, %rcx	# name,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# gv,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_magic	#
	.loc 1 1012 0
	cmpl	$11, -448(%rbp)	#, sv_type
	jne	.L326	#,
	.loc 1 1013 0
	movq	%rbx, %rdi	# gv,
	call	S_require_errno	#
	.loc 1 1015 0
	jmp	.L312	#
.L326:
	jmp	.L312	#
.L320:
.LBB23:
	.loc 1 1018 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _441->xgv_gp, D.13693
	movq	32(%rax), %rax	# _442->gp_av, D.13703
	testq	%rax, %rax	# D.13703
	je	.L327	#,
	.loc 1 1018 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _444->xgv_gp, D.13693
	movq	32(%rax), %rax	# _445->gp_av, iftmp.145
	jmp	.L328	#
.L327:
	.loc 1 1018 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _447->sv_any, D.13691
	movq	56(%rax), %rax	# _448->xgv_gp, D.13693
	movq	32(%rax), %rax	# _449->gp_av, iftmp.145
.L328:
	.loc 1 1018 0 discriminator 3
	movq	%rax, -336(%rbp)	# iftmp.145, av
	.loc 1 1019 0 is_stmt 1 discriminator 3
	movq	-336(%rbp), %rax	# av, tmp603
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$68, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp603,
	call	Perl_sv_magic	#
	.loc 1 1020 0 discriminator 3
	movq	-336(%rbp), %rax	# av, tmp604
	movl	12(%rax), %eax	# av_451->sv_flags, D.13685
	orl	$8388608, %eax	#, D.13685
	movl	%eax, %edx	# D.13685, D.13685
	movq	-336(%rbp), %rax	# av, tmp605
	movl	%edx, 12(%rax)	# D.13685, av_451->sv_flags
	.loc 1 1021 0 discriminator 3
	jmp	.L302	#
.L317:
.LBE23:
	.loc 1 1025 0
	cmpl	$4, -448(%rbp)	#, sv_type
	jne	.L329	#,
	.loc 1 1025 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.146
	movq	80(%rax), %rax	# PL_curcop.146_454->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	je	.L330	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.147
	movq	80(%rax), %rax	# PL_curcop.147_456->cop_warnings, D.13698
	cmpq	$32, %rax	#, D.13698
	je	.L330	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.148
	movq	80(%rax), %rax	# PL_curcop.148_458->cop_warnings, D.13698
	cmpq	$16, %rax	#, D.13698
	je	.L331	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.149
	movq	80(%rax), %rax	# PL_curcop.149_460->cop_warnings, D.13698
	movq	(%rax), %rax	# _461->sv_any, D.13699
	movq	(%rax), %rax	# MEM[(struct XPV *)_462].xpv_pv, D.13690
	movzbl	(%rax), %eax	# *_463, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	andl	$16, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L331	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.150
	movq	80(%rax), %rax	# PL_curcop.150_467->cop_warnings, D.13698
	movq	(%rax), %rax	# _468->sv_any, D.13699
	movq	(%rax), %rax	# MEM[(struct XPV *)_469].xpv_pv, D.13690
	addq	$7, %rax	#, D.13690
	movzbl	(%rax), %eax	# *_471, D.13683
	movsbl	%al, %eax	# D.13683, D.13687
	andl	$1, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	jne	.L331	#,
.L330:
	.loc 1 1025 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.151
	movq	80(%rax), %rax	# PL_curcop.151_475->cop_warnings, D.13698
	testq	%rax, %rax	# D.13698
	jne	.L329	#,
	.loc 1 1025 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.152
	movzbl	%al, %eax	# PL_dowarn.152, D.13687
	andl	$1, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L329	#,
.L331:
	.loc 1 1026 0 is_stmt 1
	movq	%r12, %rdx	# name,
	movl	$.LC54, %esi	#,
	movl	$7170, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 1028 0
	jmp	.L302	#
.L329:
	jmp	.L302	#
.L325:
	.loc 1 1030 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.153
	movq	(%rax), %rax	# PL_defoutgv.153_480->sv_any, D.13691
	movq	56(%rax), %rax	# _481->xgv_gp, D.13693
	movq	16(%rax), %rax	# _482->gp_io, D.13700
	movq	(%rax), %rax	# _483->sv_any, D.13701
	movzbl	163(%rax), %eax	# _484->xio_flags, D.13683
	movsbq	%al, %rax	# D.13683, D.13686
	andl	$4, %eax	#, D.13686
	testq	%rax, %rax	# D.13686
	setne	%al	#, D.13706
	movzbl	%al, %edx	# D.13706, D.13686
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _490->xgv_gp, D.13693
	movq	(%rax), %rax	# _491->gp_sv, D.13698
	movq	%rdx, %rsi	# D.13686,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_setiv	#
	.loc 1 1031 0
	jmp	.L302	#
.L319:
.LBB24:
	.loc 1 1035 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _493->xgv_gp, D.13693
	movq	32(%rax), %rax	# _494->gp_av, D.13703
	testq	%rax, %rax	# D.13703
	je	.L332	#,
	.loc 1 1035 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _496->xgv_gp, D.13693
	movq	32(%rax), %rax	# _497->gp_av, iftmp.154
	jmp	.L333	#
.L332:
	.loc 1 1035 0 discriminator 2
	movq	%rbx, %rdi	# gv,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _499->sv_any, D.13691
	movq	56(%rax), %rax	# _500->xgv_gp, D.13693
	movq	32(%rax), %rax	# _501->gp_av, iftmp.154
.L333:
	.loc 1 1035 0 discriminator 3
	movq	%rax, -328(%rbp)	# iftmp.154, av
	.loc 1 1036 0 is_stmt 1 discriminator 3
	movq	-328(%rbp), %rsi	# av, tmp606
	movq	-328(%rbp), %rax	# av, tmp607
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$68, %edx	#,
	movq	%rax, %rdi	# tmp607,
	call	Perl_sv_magic	#
	.loc 1 1037 0 discriminator 3
	movq	-328(%rbp), %rax	# av, tmp608
	movl	12(%rax), %eax	# av_503->sv_flags, D.13685
	orl	$8388608, %eax	#, D.13685
	movl	%eax, %edx	# D.13685, D.13685
	movq	-328(%rbp), %rax	# av, tmp609
	movl	%edx, 12(%rax)	# D.13685, av_503->sv_flags
.L305:
.LBE24:
	.loc 1 1051 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _548->xgv_gp, D.13693
	movq	(%rax), %rax	# _549->gp_sv, D.13698
	movq	(%rbx), %rdx	# gv_235->sv_any, D.13691
	movq	56(%rdx), %rdx	# _551->xgv_gp, D.13693
	movq	(%rdx), %rdx	# _552->gp_sv, D.13698
	movl	12(%rdx), %edx	# _553->sv_flags, D.13685
	orl	$8388608, %edx	#, D.13685
	movl	%edx, 12(%rax)	# D.13685, _550->sv_flags
.L302:
	.loc 1 1079 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _556->xgv_gp, D.13693
	movq	(%rax), %rax	# _557->gp_sv, D.13698
	movl	-420(%rbp), %edx	# len, tmp610
	movl	%edx, %r8d	# tmp610,
	movq	%r12, %rcx	# name,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# gv,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_magic	#
	.loc 1 1080 0
	jmp	.L312	#
.L314:
	.loc 1 1083 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _506->xgv_gp, D.13693
	movq	(%rax), %rax	# _507->gp_sv, D.13698
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_setpv	#
	.loc 1 1084 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _509->xgv_gp, D.13693
	movq	(%rax), %rax	# _510->gp_sv, PL_formfeed.155
	movq	%rax, PL_formfeed(%rip)	# PL_formfeed.155, PL_formfeed
	.loc 1 1085 0
	jmp	.L312	#
.L322:
	.loc 1 1087 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _512->xgv_gp, D.13693
	movq	(%rax), %rax	# _513->gp_sv, D.13698
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# D.13698,
	call	Perl_sv_setpv	#
	.loc 1 1088 0
	jmp	.L312	#
.L324:
.LBB25:
	.loc 1 1091 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _515->xgv_gp, D.13693
	movq	(%rax), %rax	# _516->gp_sv, tmp611
	movq	%rax, -320(%rbp)	# tmp611, sv
	.loc 1 1092 0
	movq	-320(%rbp), %rax	# sv, tmp612
	movl	12(%rax), %eax	# sv_517->sv_flags, D.13685
	movzbl	%al, %eax	# D.13685, D.13685
	cmpl	$5, %eax	#, D.13685
	ja	.L334	#,
	.loc 1 1092 0 is_stmt 0 discriminator 2
	movq	-320(%rbp), %rax	# sv, tmp613
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp613,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.13683
	je	.L336	#,
.L334:
	.loc 1 1092 0 discriminator 1
	nop
.L336:
	.loc 1 1100 0 is_stmt 1
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.157
	movq	(%rax), %rax	# PL_patchlevel.157_523->sv_any, D.13699
	.loc 1 1093 0
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_524].xnv_nv, D.13707
	movq	-320(%rbp), %rdx	# sv, tmp614
	movq	%rax, -456(%rbp)	# D.13707, %sfp
	movsd	-456(%rbp), %xmm0	# %sfp,
	movl	$.LC57, %esi	#,
	movq	%rdx, %rdi	# tmp614,
	movl	$1, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 1101 0
	movq	-320(%rbp), %rax	# sv, tmp615
	movq	(%rax), %rdx	# sv_517->sv_any, D.13699
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.158
	movq	(%rax), %rax	# PL_patchlevel.158_527->sv_any, D.13699
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_528].xnv_nv, D.13707
	movq	%rax, 32(%rdx)	# D.13707, MEM[(struct XPVNV *)_526].xnv_nv
	.loc 1 1102 0
	movq	-320(%rbp), %rax	# sv, tmp616
	movl	12(%rax), %eax	# sv_517->sv_flags, D.13685
	orl	$33685504, %eax	#, D.13685
	movl	%eax, %edx	# D.13685, D.13685
	movq	-320(%rbp), %rax	# sv, tmp617
	movl	%edx, 12(%rax)	# D.13685, sv_517->sv_flags
	.loc 1 1103 0
	movq	-320(%rbp), %rax	# sv, tmp618
	movl	12(%rax), %eax	# sv_517->sv_flags, D.13685
	orl	$8388608, %eax	#, D.13685
	movl	%eax, %edx	# D.13685, D.13685
	movq	-320(%rbp), %rax	# sv, tmp619
	movl	%edx, 12(%rax)	# D.13685, sv_517->sv_flags
.LBE25:
	.loc 1 1105 0
	jmp	.L312	#
.L315:
.LBB26:
	.loc 1 1108 0
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _534->xgv_gp, D.13693
	movq	(%rax), %rax	# _535->gp_sv, tmp620
	movq	%rax, -312(%rbp)	# tmp620, sv
	.loc 1 1109 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.159
	movq	%rax, PL_Sv(%rip)	# PL_patchlevel.159, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.161
	testq	%rax, %rax	# PL_Sv.161
	je	.L338	#,
	.loc 1 1109 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.162
	movl	8(%rax), %edx	# PL_Sv.162_539->sv_refcnt, D.13685
	addl	$1, %edx	#, D.13685
	movl	%edx, 8(%rax)	# D.13685, PL_Sv.162_539->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.162_539->sv_refcnt, D.13685
	testl	%eax, %eax	# D.13685
	je	.L338	#,
	.loc 1 1109 0
	nop
.L338:
	.loc 1 1109 0 discriminator 4
	movq	(%rbx), %rax	# gv_235->sv_any, D.13691
	movq	56(%rax), %rax	# _545->xgv_gp, D.13693
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.163
	movq	%rdx, (%rax)	# PL_Sv.163, _546->gp_sv
	.loc 1 1110 0 is_stmt 1 discriminator 4
	movq	-312(%rbp), %rax	# sv, tmp621
	movq	%rax, %rdi	# tmp621,
	call	Perl_sv_free	#
.LBE26:
	.loc 1 1112 0 discriminator 4
	nop
.L312:
	.loc 1 1115 0
	movq	%rbx, %rax	# gv, D.13682
.L183:
	.loc 1 1116 0
	movq	-40(%rbp), %rcx	# D.13708, tmp624
	xorq	%fs:40, %rcx	#, tmp624
	je	.L339	#,
	call	__stack_chk_fail	#
.L339:
	addq	$440, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_gv_fetchpv, .-Perl_gv_fetchpv
	.section	.rodata
.LC58:
	.string	"__ANON__"
.LC59:
	.string	"main"
	.text
	.globl	Perl_gv_fullname4
	.type	Perl_gv_fullname4, @function
Perl_gv_fullname4:
.LFB18:
	.loc 1 1120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# gv, gv
	movq	%rdx, -40(%rbp)	# prefix, prefix
	movl	%ecx, %eax	# keepmain, tmp74
	movb	%al, -44(%rbp)	# tmp74, keepmain
	.loc 1 1122 0
	movq	-32(%rbp), %rax	# gv, tmp75
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13749
	movq	80(%rax), %rax	# _4->xgv_stash, tmp76
	movq	%rax, -8(%rbp)	# tmp76, hv
	.loc 1 1123 0
	cmpq	$0, -8(%rbp)	#, hv
	jne	.L342	#,
	.loc 1 1124 0
	movq	-24(%rbp), %rax	# sv, tmp77
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13750
	andl	$1223753727, %eax	#, D.13750
	movl	%eax, %edx	# D.13750, D.13750
	movq	-24(%rbp), %rax	# sv, tmp78
	movl	%edx, 12(%rax)	# D.13750, sv_6(D)->sv_flags
	movq	-24(%rbp), %rax	# sv, tmp79
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13750
	andl	$2097152, %eax	#, D.13750
	testl	%eax, %eax	# D.13750
	je	.L343	#,
	.loc 1 1124 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp80
	movq	%rax, %rdi	# tmp80,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.13751
	je	.L343	#,
	.loc 1 1125 0 is_stmt 1 discriminator 1
	jmp	.L341	#
.L343:
	.loc 1 1125 0 is_stmt 0 discriminator 2
	jmp	.L341	#
.L342:
	.loc 1 1127 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, prefix
	je	.L346	#,
	.loc 1 1127 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# prefix, iftmp.165
	jmp	.L347	#
.L346:
	.loc 1 1127 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.165
.L347:
	.loc 1 1127 0 discriminator 3
	movq	-24(%rbp), %rdx	# sv, tmp81
	movq	%rax, %rsi	# iftmp.165,
	movq	%rdx, %rdi	# tmp81,
	call	Perl_sv_setpv	#
	.loc 1 1129 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# hv, tmp82
	movq	(%rax), %rax	# hv_5->sv_any, D.13752
	movq	80(%rax), %rax	# _17->xhv_name, tmp83
	movq	%rax, -16(%rbp)	# tmp83, name
	.loc 1 1130 0 discriminator 3
	cmpq	$0, -16(%rbp)	#, name
	jne	.L348	#,
	.loc 1 1131 0
	movq	$.LC58, -16(%rbp)	#, name
.L348:
	.loc 1 1133 0
	cmpb	$0, -44(%rbp)	#, keepmain
	jne	.L349	#,
	.loc 1 1133 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# name, tmp84
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strcmp	#
	testl	%eax, %eax	# D.13751
	je	.L350	#,
.L349:
	.loc 1 1134 0 is_stmt 1
	movq	-16(%rbp), %rdx	# name, tmp85
	movq	-24(%rbp), %rax	# sv, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_catpv	#
	.loc 1 1135 0
	movq	-24(%rbp), %rax	# sv, tmp87
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_catpvn_flags	#
.L350:
	.loc 1 1137 0
	movq	-32(%rbp), %rax	# gv, tmp88
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13749
	movq	72(%rax), %rdx	# _22->xgv_namelen, D.13753
	movq	-32(%rbp), %rax	# gv, tmp89
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13749
	movq	64(%rax), %rsi	# _24->xgv_name, D.13754
	movq	-24(%rbp), %rax	# sv, tmp90
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_sv_catpvn_flags	#
.L341:
	.loc 1 1138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_gv_fullname4, .-Perl_gv_fullname4
	.globl	Perl_gv_fullname3
	.type	Perl_gv_fullname3, @function
Perl_gv_fullname3:
.LFB19:
	.loc 1 1142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# gv, gv
	movq	%rdx, -24(%rbp)	# prefix, prefix
	.loc 1 1143 0
	movq	-24(%rbp), %rdx	# prefix, tmp59
	movq	-16(%rbp), %rsi	# gv, tmp60
	movq	-8(%rbp), %rax	# sv, tmp61
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_gv_fullname4	#
	.loc 1 1144 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_gv_fullname3, .-Perl_gv_fullname3
	.globl	Perl_gv_efullname4
	.type	Perl_gv_efullname4, @function
Perl_gv_efullname4:
.LFB20:
	.loc 1 1148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# gv, gv
	movq	%rdx, -40(%rbp)	# prefix, prefix
	movl	%ecx, %eax	# keepmain, tmp62
	movb	%al, -44(%rbp)	# tmp62, keepmain
	.loc 1 1149 0
	movq	-32(%rbp), %rax	# gv, tmp63
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13757
	movq	56(%rax), %rax	# _3->xgv_gp, D.13758
	movq	48(%rax), %rax	# _4->gp_egv, tmp64
	movq	%rax, -8(%rbp)	# tmp64, egv
	.loc 1 1150 0
	cmpq	$0, -8(%rbp)	#, egv
	jne	.L353	#,
	.loc 1 1151 0
	movq	-32(%rbp), %rax	# gv, tmp65
	movq	%rax, -8(%rbp)	# tmp65, egv
.L353:
	.loc 1 1152 0
	movsbl	-44(%rbp), %ecx	# keepmain, D.13759
	movq	-40(%rbp), %rdx	# prefix, tmp66
	movq	-8(%rbp), %rsi	# egv, tmp67
	movq	-24(%rbp), %rax	# sv, tmp68
	movq	%rax, %rdi	# tmp68,
	call	Perl_gv_fullname4	#
	.loc 1 1153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_gv_efullname4, .-Perl_gv_efullname4
	.globl	Perl_gv_efullname3
	.type	Perl_gv_efullname3, @function
Perl_gv_efullname3:
.LFB21:
	.loc 1 1157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# gv, gv
	movq	%rdx, -24(%rbp)	# prefix, prefix
	.loc 1 1158 0
	movq	-24(%rbp), %rdx	# prefix, tmp59
	movq	-16(%rbp), %rsi	# gv, tmp60
	movq	-8(%rbp), %rax	# sv, tmp61
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_gv_efullname4	#
	.loc 1 1159 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_gv_efullname3, .-Perl_gv_efullname3
	.section	.rodata
.LC60:
	.string	"*"
	.text
	.globl	Perl_gv_fullname
	.type	Perl_gv_fullname, @function
Perl_gv_fullname:
.LFB22:
	.loc 1 1164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# gv, gv
	.loc 1 1165 0
	movq	-8(%rbp), %rax	# sv, tmp60
	cmpq	-16(%rbp), %rax	# gv, tmp60
	jne	.L356	#,
	.loc 1 1165 0 is_stmt 0 discriminator 1
	movl	$.LC60, %eax	#, iftmp.166
	jmp	.L357	#
.L356:
	.loc 1 1165 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.166
.L357:
	.loc 1 1165 0 discriminator 3
	movq	-16(%rbp), %rsi	# gv, tmp61
	movq	-8(%rbp), %rdi	# sv, tmp62
	movl	$1, %ecx	#,
	movq	%rax, %rdx	# iftmp.166,
	call	Perl_gv_fullname4	#
	.loc 1 1166 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_gv_fullname, .-Perl_gv_fullname
	.globl	Perl_gv_efullname
	.type	Perl_gv_efullname, @function
Perl_gv_efullname:
.LFB23:
	.loc 1 1171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# gv, gv
	.loc 1 1172 0
	movq	-8(%rbp), %rax	# sv, tmp60
	cmpq	-16(%rbp), %rax	# gv, tmp60
	jne	.L359	#,
	.loc 1 1172 0 is_stmt 0 discriminator 1
	movl	$.LC60, %eax	#, iftmp.167
	jmp	.L360	#
.L359:
	.loc 1 1172 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.167
.L360:
	.loc 1 1172 0 discriminator 3
	movq	-16(%rbp), %rsi	# gv, tmp61
	movq	-8(%rbp), %rdi	# sv, tmp62
	movl	$1, %ecx	#,
	movq	%rax, %rdx	# iftmp.167,
	call	Perl_gv_efullname4	#
	.loc 1 1173 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_gv_efullname, .-Perl_gv_efullname
	.section	.rodata
.LC61:
	.string	"FileHandle::"
.LC62:
	.string	"IO::Handle::"
	.text
	.globl	Perl_newIO
	.type	Perl_newIO, @function
Perl_newIO:
.LFB24:
	.loc 1 1177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1181 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -8(%rbp)	# tmp85, io
	.loc 1 1182 0
	movq	-8(%rbp), %rax	# io, tmp86
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_upgrade	#
	.loc 1 1183 0
	movq	-8(%rbp), %rax	# io, tmp87
	movl	$1, 8(%rax)	#, io_2->sv_refcnt
	.loc 1 1184 0
	movq	-8(%rbp), %rax	# io, tmp88
	movl	12(%rax), %eax	# io_2->sv_flags, D.13761
	orb	$16, %ah	#, D.13761
	movl	%eax, %edx	# D.13761, D.13761
	movq	-8(%rbp), %rax	# io, tmp89
	movl	%edx, 12(%rax)	# D.13761, io_2->sv_flags
	.loc 1 1187 0
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.168
	movq	%rax, %rdi	# PL_stashcache.168,
	call	Perl_hv_clear	#
	.loc 1 1188 0
	movl	$11, %edx	#,
	movl	$0, %esi	#,
	movl	$.LC61, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -16(%rbp)	# tmp90, iogv
	.loc 1 1190 0
	cmpq	$0, -16(%rbp)	#, iogv
	je	.L362	#,
	.loc 1 1190 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# iogv, tmp91
	movq	(%rax), %rax	# iogv_6->sv_any, D.13762
	movq	56(%rax), %rax	# _7->xgv_gp, D.13763
	movq	40(%rax), %rax	# _8->gp_hv, D.13764
	testq	%rax, %rax	# D.13764
	je	.L362	#,
	movq	-16(%rbp), %rax	# iogv, tmp92
	movq	(%rax), %rax	# iogv_6->sv_any, D.13762
	movq	56(%rax), %rax	# _10->xgv_gp, D.13763
	movq	40(%rax), %rax	# _11->gp_hv, D.13764
	movq	(%rax), %rax	# _12->sv_any, D.13765
	movq	(%rax), %rax	# MEM[(struct HE * * *)_14], D.13767
	testq	%rax, %rax	# D.13767
	jne	.L363	#,
.L362:
	.loc 1 1191 0 is_stmt 1
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC62, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -16(%rbp)	# tmp93, iogv
.L363:
	.loc 1 1192 0
	movq	-16(%rbp), %rax	# iogv, tmp94
	movq	(%rax), %rax	# iogv_1->sv_any, D.13762
	movq	56(%rax), %rax	# _17->xgv_gp, D.13763
	movq	40(%rax), %rax	# _18->gp_hv, PL_Sv.169
	movq	%rax, PL_Sv(%rip)	# PL_Sv.169, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.171
	testq	%rax, %rax	# PL_Sv.171
	je	.L365	#,
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.172
	movl	8(%rax), %edx	# PL_Sv.172_21->sv_refcnt, D.13761
	addl	$1, %edx	#, D.13761
	movl	%edx, 8(%rax)	# D.13761, PL_Sv.172_21->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.172_21->sv_refcnt, D.13761
	testl	%eax, %eax	# D.13761
	je	.L365	#,
	.loc 1 1192 0
	nop
.L365:
	.loc 1 1192 0 discriminator 4
	movq	-8(%rbp), %rax	# io, tmp95
	movq	(%rax), %rax	# io_2->sv_any, D.13768
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.173
	movq	%rdx, 48(%rax)	# PL_Sv.173, MEM[(struct XPVMG *)_27].xmg_stash
	.loc 1 1193 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# io, D.13769
	.loc 1 1194 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_newIO, .-Perl_newIO
	.section	.rodata
.LC63:
	.string	"/lib/"
.LC64:
	.string	".pm"
	.align 8
.LC65:
	.string	"Name \"%s::%s\" used only once: possible typo"
	.text
	.globl	Perl_gv_check
	.type	Perl_gv_check, @function
Perl_gv_check:
.LFB25:
	.loc 1 1198 0
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
	subq	$32, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)	# stash, stash
	.loc 1 1204 0
	movq	-56(%rbp), %rax	# stash, tmp113
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13772
	movq	(%rax), %rax	# MEM[(struct HE * * *)_5], D.13774
	testq	%rax, %rax	# D.13774
	jne	.L368	#,
	.loc 1 1205 0
	jmp	.L367	#
.L368:
	.loc 1 1206 0
	movl	$0, %r13d	#, i
	jmp	.L370	#
.L382:
	.loc 1 1207 0
	movq	-56(%rbp), %rax	# stash, tmp114
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13772
	movq	(%rax), %rax	# MEM[(struct HE * * *)_12], D.13774
	movslq	%r13d, %rdx	# i, D.13775
	salq	$3, %rdx	#, D.13775
	addq	%rdx, %rax	# D.13775, D.13774
	movq	(%rax), %rbx	# *_16, entry
	jmp	.L371	#
.L381:
	.loc 1 1208 0
	movq	8(%rbx), %rdx	# entry_1->hent_hek, D.13777
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.13777
	movl	4(%rax), %eax	# _19->hek_len, D.13776
	subl	$1, %eax	#, D.13776
	cltq
	movzbl	8(%rdx,%rax), %eax	# _18->hek_key, D.13778
	cmpb	$58, %al	#, D.13778
	jne	.L372	#,
	.loc 1 1209 0 discriminator 1
	movq	16(%rbx), %r12	# entry_1->hent_val, gv
	.loc 1 1208 0 discriminator 1
	testq	%r12, %r12	# gv
	je	.L372	#,
	.loc 1 1209 0
	movl	12(%r12), %eax	# gv_23->sv_flags, D.13779
	movzbl	%al, %eax	# D.13779, D.13779
	cmpl	$13, %eax	#, D.13779
	jne	.L372	#,
	.loc 1 1209 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# gv_23->sv_any, D.13780
	movq	56(%rax), %rax	# _26->xgv_gp, D.13781
	movq	40(%rax), %rax	# _27->gp_hv, tmp116
	movq	%rax, -48(%rbp)	# tmp116, hv
	cmpq	$0, -48(%rbp)	#, hv
	je	.L372	#,
	.loc 1 1211 0 is_stmt 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.174
	cmpq	%rax, -48(%rbp)	# PL_defstash.174, hv
	je	.L373	#,
	.loc 1 1211 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# hv, tmp117
	cmpq	-56(%rbp), %rax	# stash, tmp117
	je	.L373	#,
	.loc 1 1212 0 is_stmt 1
	movq	-48(%rbp), %rax	# hv, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Perl_gv_check	#
	.loc 1 1211 0
	jmp	.L374	#
.L373:
	.loc 1 1211 0 is_stmt 0 discriminator 2
	jmp	.L374	#
.L372:
	.loc 1 1214 0 is_stmt 1
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.13777
	movzbl	8(%rax), %eax	# _30->hek_key, D.13778
	cmpb	$64, %al	#, D.13778
	jle	.L375	#,
	.loc 1 1214 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.13777
	movzbl	8(%rax), %eax	# _32->hek_key, D.13778
	cmpb	$90, %al	#, D.13778
	jle	.L376	#,
.L375:
	.loc 1 1214 0 discriminator 2
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.13777
	movzbl	8(%rax), %eax	# _34->hek_key, D.13778
	cmpb	$96, %al	#, D.13778
	jle	.L374	#,
	.loc 1 1214 0 discriminator 1
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.13777
	movzbl	8(%rax), %eax	# _36->hek_key, D.13778
	cmpb	$122, %al	#, D.13778
	jg	.L374	#,
.L376:
.LBB27:
	.loc 1 1216 0 is_stmt 1
	movq	16(%rbx), %r12	# entry_1->hent_val, gv
	.loc 1 1217 0
	movl	12(%r12), %eax	# gv_38->sv_flags, D.13779
	movzbl	%al, %eax	# D.13779, D.13779
	cmpl	$13, %eax	#, D.13779
	jne	.L377	#,
	.loc 1 1217 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# gv_38->sv_any, D.13780
	movzbl	88(%rax), %eax	# _41->xgv_flags, D.13782
	movzbl	%al, %eax	# D.13782, D.13776
	andl	$2, %eax	#, D.13776
	testl	%eax, %eax	# D.13776
	je	.L378	#,
.L377:
	.loc 1 1218 0 is_stmt 1
	jmp	.L374	#
.L378:
	.loc 1 1219 0
	movq	(%r12), %rax	# gv_38->sv_any, D.13780
	movq	56(%rax), %rax	# _45->xgv_gp, D.13781
	movq	80(%rax), %rax	# _46->gp_file, tmp119
	movq	%rax, -40(%rbp)	# tmp119, file
	.loc 1 1222 0
	cmpq	$0, -40(%rbp)	#, file
	je	.L379	#,
	.loc 1 1223 0
	movq	-40(%rbp), %rax	# file, tmp120
	movzbl	(%rax), %eax	# *file_47, D.13778
	cmpb	$47, %al	#, D.13778
	jne	.L379	#,
	.loc 1 1227 0
	movq	-40(%rbp), %rax	# file, tmp121
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	Perl_instr	#
	testq	%rax, %rax	# D.13783
	jne	.L380	#,
	.loc 1 1229 0
	movq	-40(%rbp), %rax	# file, tmp122
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	Perl_instr	#
	testq	%rax, %rax	# D.13783
	je	.L379	#,
.L380:
	.loc 1 1231 0
	jmp	.L374	#
.L379:
	.loc 1 1233 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.175
	movq	(%r12), %rdx	# gv_38->sv_any, D.13780
	movq	56(%rdx), %rdx	# _52->xgv_gp, D.13781
	movl	72(%rdx), %edx	# _53->gp_line, D.13779
	movl	%edx, 72(%rax)	# D.13779, PL_curcop.175_51->cop_line
	.loc 1 1237 0
	movq	PL_curcop(%rip), %r14	# PL_curcop, PL_curcop.176
	movq	-40(%rbp), %rax	# file, tmp123
	movq	%rax, %rdi	# tmp123,
	call	Perl_gv_fetchfile	#
	movq	%rax, 56(%r14)	# D.13784, PL_curcop.176_55->cop_filegv
	.loc 1 1241 0
	movq	(%r12), %rax	# gv_38->sv_any, D.13780
	.loc 1 1239 0
	movq	64(%rax), %rdx	# _57->xgv_name, D.13783
	.loc 1 1241 0
	movq	-56(%rbp), %rax	# stash, tmp124
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13772
	.loc 1 1239 0
	movq	80(%rax), %rax	# _59->xhv_name, D.13783
	movq	%rdx, %rcx	# D.13783,
	movq	%rax, %rdx	# D.13783,
	movl	$.LC65, %esi	#,
	movl	$14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L374:
.LBE27:
	.loc 1 1207 0
	movq	(%rbx), %rbx	# entry_1->hent_next, entry
.L371:
	.loc 1 1207 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L381	#,
	.loc 1 1206 0 is_stmt 1
	addl	$1, %r13d	#, i
.L370:
	.loc 1 1206 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# stash, tmp125
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13772
	movq	16(%rax), %rax	# _8->xhv_max, D.13775
	cmpl	%r13d, %eax	# i, D.13776
	jge	.L382	#,
.L367:
	.loc 1 1245 0 is_stmt 1
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_gv_check, .-Perl_gv_check
	.section	.rodata
.LC66:
	.string	"%s::_GEN_%ld"
	.text
	.globl	Perl_newGVgen
	.type	Perl_newGVgen, @function
Perl_newGVgen:
.LFB26:
	.loc 1 1249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pack, pack
	.loc 1 1250 0
	movl	PL_gensym(%rip), %eax	# PL_gensym, PL_gensym.177
	leal	1(%rax), %edx	#, PL_gensym.179
	movl	%edx, PL_gensym(%rip)	# PL_gensym.179, PL_gensym
	movslq	%eax, %rdx	# PL_gensym.178, D.13788
	movq	-8(%rbp), %rax	# pack, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	Perl_form	#
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.13789,
	call	Perl_gv_fetchpv	#
	.loc 1 1252 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_newGVgen, .-Perl_newGVgen
	.globl	Perl_gp_ref
	.type	Perl_gp_ref, @function
Perl_gp_ref:
.LFB27:
	.loc 1 1258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gp, gp
	.loc 1 1259 0
	cmpq	$0, -8(%rbp)	#, gp
	jne	.L386	#,
	.loc 1 1260 0
	movl	$0, %eax	#, D.13792
	jmp	.L387	#
.L386:
	.loc 1 1261 0
	movq	-8(%rbp), %rax	# gp, tmp68
	movl	8(%rax), %eax	# gp_2(D)->gp_refcnt, D.13793
	leal	1(%rax), %edx	#, D.13793
	movq	-8(%rbp), %rax	# gp, tmp69
	movl	%edx, 8(%rax)	# D.13793, gp_2(D)->gp_refcnt
	.loc 1 1262 0
	movq	-8(%rbp), %rax	# gp, tmp70
	movq	56(%rax), %rax	# gp_2(D)->gp_cv, D.13794
	testq	%rax, %rax	# D.13794
	je	.L388	#,
	.loc 1 1263 0
	movq	-8(%rbp), %rax	# gp, tmp71
	movl	64(%rax), %eax	# gp_2(D)->gp_cvgen, D.13793
	testl	%eax, %eax	# D.13793
	je	.L389	#,
	.loc 1 1265 0
	movq	-8(%rbp), %rax	# gp, tmp72
	movq	56(%rax), %rax	# gp_2(D)->gp_cv, D.13794
	movq	%rax, %rdi	# D.13794,
	call	Perl_sv_free	#
	.loc 1 1266 0
	movq	-8(%rbp), %rax	# gp, tmp73
	movq	$0, 56(%rax)	#, gp_2(D)->gp_cv
	.loc 1 1267 0
	movq	-8(%rbp), %rax	# gp, tmp74
	movl	$0, 64(%rax)	#, gp_2(D)->gp_cvgen
	jmp	.L388	#
.L389:
	.loc 1 1271 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.180
	addl	$1, %eax	#, PL_sub_generation.181
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.181, PL_sub_generation
.L388:
	.loc 1 1274 0
	movq	-8(%rbp), %rax	# gp, D.13792
.L387:
	.loc 1 1275 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_gp_ref, .-Perl_gp_ref
	.section	.rodata
	.align 8
.LC67:
	.string	"Attempt to free unreferenced glob pointers"
	.text
	.globl	Perl_gp_free
	.type	Perl_gp_free, @function
Perl_gp_free:
.LFB28:
	.loc 1 1279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gv, gv
	.loc 1 1282 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L391	#,
	.loc 1 1282 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp108
	movq	(%rax), %rax	# gv_1(D)->sv_any, D.13795
	movq	56(%rax), %rax	# _2->xgv_gp, tmp109
	movq	%rax, -8(%rbp)	# tmp109, gp
	cmpq	$0, -8(%rbp)	#, gp
	jne	.L392	#,
.L391:
	.loc 1 1283 0 is_stmt 1
	jmp	.L390	#
.L392:
	.loc 1 1284 0
	movq	-8(%rbp), %rax	# gp, tmp110
	movl	8(%rax), %eax	# gp_3->gp_refcnt, D.13796
	testl	%eax, %eax	# D.13796
	jne	.L394	#,
	.loc 1 1285 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.182
	movq	80(%rax), %rax	# PL_curcop.182_5->cop_warnings, D.13797
	testq	%rax, %rax	# D.13797
	je	.L395	#,
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.183
	movq	80(%rax), %rax	# PL_curcop.183_7->cop_warnings, D.13797
	cmpq	$16, %rax	#, D.13797
	je	.L395	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.184
	movq	80(%rax), %rax	# PL_curcop.184_9->cop_warnings, D.13797
	cmpq	$32, %rax	#, D.13797
	je	.L396	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.185
	movq	80(%rax), %rax	# PL_curcop.185_11->cop_warnings, D.13797
	movq	(%rax), %rax	# _12->sv_any, D.13798
	movq	(%rax), %rax	# MEM[(struct XPV *)_13].xpv_pv, D.13799
	addq	$6, %rax	#, D.13799
	movzbl	(%rax), %eax	# *_15, D.13800
	movsbl	%al, %eax	# D.13800, D.13801
	andl	$1, %eax	#, D.13801
	testl	%eax, %eax	# D.13801
	je	.L396	#,
.L395:
	.loc 1 1286 0 is_stmt 1
	movl	$.LC67, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 1289 0
	jmp	.L390	#
.L396:
	jmp	.L390	#
.L394:
	.loc 1 1291 0
	movq	-8(%rbp), %rax	# gp, tmp111
	movq	56(%rax), %rax	# gp_3->gp_cv, D.13802
	testq	%rax, %rax	# D.13802
	je	.L397	#,
	.loc 1 1293 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.186
	addl	$1, %eax	#, PL_sub_generation.187
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.187, PL_sub_generation
.L397:
	.loc 1 1295 0
	movq	-8(%rbp), %rax	# gp, tmp112
	movl	8(%rax), %eax	# gp_3->gp_refcnt, D.13796
	leal	-1(%rax), %edx	#, D.13796
	movq	-8(%rbp), %rax	# gp, tmp113
	movl	%edx, 8(%rax)	# D.13796, gp_3->gp_refcnt
	movq	-8(%rbp), %rax	# gp, tmp114
	movl	8(%rax), %eax	# gp_3->gp_refcnt, D.13796
	testl	%eax, %eax	# D.13796
	je	.L398	#,
	.loc 1 1296 0
	movq	-8(%rbp), %rax	# gp, tmp115
	movq	48(%rax), %rax	# gp_3->gp_egv, D.13803
	cmpq	-24(%rbp), %rax	# gv, D.13803
	jne	.L399	#,
	.loc 1 1297 0
	movq	-8(%rbp), %rax	# gp, tmp116
	movq	$0, 48(%rax)	#, gp_3->gp_egv
	.loc 1 1298 0
	jmp	.L390	#
.L399:
	jmp	.L390	#
.L398:
	.loc 1 1301 0
	movq	-8(%rbp), %rax	# gp, tmp117
	movq	(%rax), %rax	# gp_3->gp_sv, D.13797
	testq	%rax, %rax	# D.13797
	je	.L400	#,
	.loc 1 1301 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp118
	movq	(%rax), %rax	# gp_3->gp_sv, D.13797
	movq	%rax, %rdi	# D.13797,
	call	Perl_sv_free	#
.L400:
	.loc 1 1302 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp119
	movq	32(%rax), %rax	# gp_3->gp_av, D.13804
	testq	%rax, %rax	# D.13804
	je	.L401	#,
	.loc 1 1302 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp120
	movq	32(%rax), %rax	# gp_3->gp_av, D.13804
	movq	%rax, %rdi	# D.13804,
	call	Perl_sv_free	#
.L401:
	.loc 1 1303 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp121
	movq	40(%rax), %rax	# gp_3->gp_hv, D.13805
	testq	%rax, %rax	# D.13805
	je	.L402	#,
	.loc 1 1304 0
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.188
	testq	%rax, %rax	# PL_stashcache.188
	je	.L403	#,
	.loc 1 1304 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp122
	movq	40(%rax), %rax	# gp_3->gp_hv, D.13805
	movq	(%rax), %rax	# _32->sv_any, D.13806
	movq	80(%rax), %rax	# _33->xhv_name, D.13799
	testq	%rax, %rax	# D.13799
	je	.L403	#,
	.loc 1 1306 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp123
	movq	40(%rax), %rax	# gp_3->gp_hv, D.13805
	movq	(%rax), %rax	# _35->sv_any, D.13806
	movq	80(%rax), %rax	# _36->xhv_name, D.13799
	movq	%rax, %rdi	# D.13799,
	call	strlen	#
	.loc 1 1305 0
	movl	%eax, %edx	# D.13807, D.13801
	.loc 1 1306 0
	movq	-8(%rbp), %rax	# gp, tmp124
	movq	40(%rax), %rax	# gp_3->gp_hv, D.13805
	movq	(%rax), %rax	# _40->sv_any, D.13806
	movq	80(%rax), %rsi	# _41->xhv_name, D.13799
	.loc 1 1305 0
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.189
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# PL_stashcache.189,
	call	Perl_hv_delete	#
.L403:
	.loc 1 1308 0
	movq	-8(%rbp), %rax	# gp, tmp125
	movq	40(%rax), %rax	# gp_3->gp_hv, D.13805
	movq	%rax, %rdi	# D.13805,
	call	Perl_sv_free	#
.L402:
	.loc 1 1310 0
	movq	-8(%rbp), %rax	# gp, tmp126
	movq	16(%rax), %rax	# gp_3->gp_io, D.13808
	testq	%rax, %rax	# D.13808
	je	.L404	#,
	.loc 1 1310 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp127
	movq	16(%rax), %rax	# gp_3->gp_io, D.13808
	movq	%rax, %rdi	# D.13808,
	call	Perl_sv_free	#
.L404:
	.loc 1 1311 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp128
	movq	56(%rax), %rax	# gp_3->gp_cv, D.13802
	testq	%rax, %rax	# D.13802
	je	.L405	#,
	.loc 1 1311 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp129
	movq	56(%rax), %rax	# gp_3->gp_cv, D.13802
	movq	%rax, %rdi	# D.13802,
	call	Perl_sv_free	#
.L405:
	.loc 1 1312 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp130
	movq	24(%rax), %rax	# gp_3->gp_form, D.13802
	testq	%rax, %rax	# D.13802
	je	.L406	#,
	.loc 1 1312 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gp, tmp131
	movq	24(%rax), %rax	# gp_3->gp_form, D.13802
	movq	%rax, %rdi	# D.13802,
	call	Perl_sv_free	#
.L406:
	.loc 1 1314 0 is_stmt 1
	movq	-8(%rbp), %rax	# gp, tmp132
	movq	%rax, %rdi	# tmp132,
	call	Perl_safesysfree	#
	.loc 1 1315 0
	movq	-24(%rbp), %rax	# gv, tmp133
	movq	(%rax), %rax	# gv_1(D)->sv_any, D.13795
	movq	$0, 56(%rax)	#, _51->xgv_gp
.L390:
	.loc 1 1316 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_gp_free, .-Perl_gp_free
	.globl	Perl_magic_freeovrld
	.type	Perl_magic_freeovrld, @function
Perl_magic_freeovrld:
.LFB29:
	.loc 1 1320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1321 0
	movq	-48(%rbp), %rax	# mg, tmp63
	movq	32(%rax), %rax	# mg_2(D)->mg_ptr, tmp64
	movq	%rax, -16(%rbp)	# tmp64, amtp
	.loc 1 1322 0
	cmpq	$0, -16(%rbp)	#, amtp
	je	.L408	#,
	.loc 1 1322 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# amtp, tmp65
	movl	16(%rax), %eax	# amtp_3->flags, D.13810
	andl	$1, %eax	#, D.13810
	testl	%eax, %eax	# D.13810
	je	.L408	#,
.LBB28:
	.loc 1 1324 0 is_stmt 1
	movl	$1, -20(%rbp)	#, i
	jmp	.L409	#
.L411:
.LBB29:
	.loc 1 1325 0
	movq	-16(%rbp), %rax	# amtp, tmp66
	movl	-20(%rbp), %edx	# i, tmp68
	movslq	%edx, %rdx	# tmp68, tmp67
	addq	$2, %rdx	#, tmp69
	movq	8(%rax,%rdx,8), %rax	# amtp_3->table, tmp70
	movq	%rax, -8(%rbp)	# tmp70, cv
	.loc 1 1326 0
	cmpq	$0, -8(%rbp)	#, cv
	je	.L410	#,
	.loc 1 1327 0
	movq	-8(%rbp), %rax	# cv, tmp71
	movq	%rax, %rdi	# tmp71,
	call	Perl_sv_free	#
	.loc 1 1328 0
	movq	-16(%rbp), %rax	# amtp, tmp72
	movl	-20(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, tmp73
	addq	$2, %rdx	#, tmp75
	movq	$0, 8(%rax,%rdx,8)	#, amtp_3->table
.L410:
.LBE29:
	.loc 1 1324 0
	addl	$1, -20(%rbp)	#, i
.L409:
	.loc 1 1324 0 is_stmt 0 discriminator 1
	cmpl	$65, -20(%rbp)	#, i
	jle	.L411	#,
.L408:
.LBE28:
	.loc 1 1332 0 is_stmt 1
	movl	$0, %eax	#, D.13811
	.loc 1 1333 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_magic_freeovrld, .-Perl_magic_freeovrld
	.section	.rodata
.LC69:
	.string	"nil"
.LC70:
	.string	"overload"
.LC71:
	.string	"???"
.LC72:
	.string	"Stub found while resolving"
.LC73:
	.string	"Can't resolve"
	.align 8
.LC74:
	.string	"%s method `%.256s' overloading `%s' in package `%.256s'"
	.text
	.globl	Perl_Gv_AMupdate
	.type	Perl_Gv_AMupdate, @function
Perl_Gv_AMupdate:
.LFB30:
	.loc 1 1339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$688, %rsp	#,
	movq	%rdi, -680(%rbp)	# stash, stash
	.loc 1 1342 0
	movq	-680(%rbp), %rax	# stash, tmp158
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	Perl_mg_find	#
	movq	%rax, -616(%rbp)	# tmp159, mg
	.loc 1 1343 0
	cmpq	$0, -616(%rbp)	#, mg
	je	.L414	#,
	.loc 1 1343 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# mg, tmp160
	movq	32(%rax), %rax	# mg_27->mg_ptr, iftmp.190
	jmp	.L415	#
.L414:
	.loc 1 1343 0 discriminator 2
	movl	$0, %eax	#, iftmp.190
.L415:
	.loc 1 1343 0 discriminator 3
	movq	%rax, -608(%rbp)	# iftmp.190, amtp
	.loc 1 1346 0 is_stmt 1 discriminator 3
	cmpq	$0, -616(%rbp)	#, mg
	je	.L416	#,
	.loc 1 1346 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax	# amtp, tmp161
	movq	8(%rax), %rdx	# amtp_30->was_ok_am, D.13813
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.191
	cmpq	%rax, %rdx	# PL_amagic_generation.191, D.13813
	jne	.L416	#,
	.loc 1 1347 0 is_stmt 1
	movq	-608(%rbp), %rax	# amtp, tmp162
	movl	(%rax), %edx	# amtp_30->was_ok_sub, D.13814
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.192
	cmpl	%eax, %edx	# PL_sub_generation.192, D.13814
	jne	.L416	#,
	.loc 1 1348 0
	movq	-608(%rbp), %rax	# amtp, tmp163
	movl	16(%rax), %eax	# amtp_30->flags, D.13814
	andl	$2, %eax	#, D.13812
	jmp	.L455	#
.L416:
	.loc 1 1349 0
	movq	-680(%rbp), %rax	# stash, tmp164
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	Perl_sv_unmagic	#
	.loc 1 1353 0
	leaq	-560(%rbp), %rax	#, tmp165
	movl	$560, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	memset	#
	.loc 1 1354 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.193
	movq	%rax, -552(%rbp)	# PL_amagic_generation.193, amt.was_ok_am
	.loc 1 1355 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.194
	movl	%eax, -560(%rbp)	# PL_sub_generation.194, amt.was_ok_sub
	.loc 1 1356 0
	movq	$2, -8(%rbp)	#, amt.fallback
	.loc 1 1357 0
	movl	$0, -544(%rbp)	#, amt.flags
.LBB30:
	.loc 1 1360 0
	movl	$0, -664(%rbp)	#, filled
	movl	$0, -660(%rbp)	#, have_ovl
	.loc 1 1361 0
	movl	$1, -652(%rbp)	#, lim
	.loc 1 1362 0
	movq	$0, -632(%rbp)	#, sv
	.loc 1 1367 0
	movq	PL_AMG_names(%rip), %rsi	# PL_AMG_names, D.13815
	movq	-680(%rbp), %rax	# stash, tmp166
	movl	$-1, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp166,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -648(%rbp)	# tmp167, gv
	.loc 1 1368 0
	cmpq	$0, -648(%rbp)	#, gv
	je	.L418	#,
	.loc 1 1369 0
	movq	-648(%rbp), %rax	# gv, tmp168
	movq	(%rax), %rax	# gv_45->sv_any, D.13816
	movq	56(%rax), %rax	# _46->xgv_gp, D.13817
	movq	(%rax), %rax	# _47->gp_sv, tmp169
	movq	%rax, -632(%rbp)	# tmp169, sv
.L418:
	.loc 1 1371 0
	cmpq	$0, -648(%rbp)	#, gv
	jne	.L419	#,
	.loc 1 1372 0
	movl	$65, -652(%rbp)	#, lim
	jmp	.L420	#
.L419:
	.loc 1 1373 0
	cmpq	$0, -632(%rbp)	#, sv
	je	.L421	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# sv, tmp170
	movl	12(%rax), %eax	# sv_13->sv_flags, D.13814
	andl	$262144, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L422	#,
	.loc 1 1373 0 discriminator 3
	movq	-632(%rbp), %rax	# sv, tmp171
	movq	(%rax), %rax	# sv_13->sv_any, PL_Xpv.198
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.198, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.199
	testq	%rax, %rax	# PL_Xpv.199
	je	.L423	#,
	.loc 1 1373 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.200
	movq	8(%rax), %rax	# PL_Xpv.200_54->xpv_cur, D.13818
	cmpq	$1, %rax	#, D.13818
	ja	.L424	#,
	.loc 1 1373 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.201
	movq	8(%rax), %rax	# PL_Xpv.201_56->xpv_cur, D.13818
	testq	%rax, %rax	# D.13818
	je	.L423	#,
	.loc 1 1373 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.202
	movq	(%rax), %rax	# PL_Xpv.202_58->xpv_pv, D.13819
	movzbl	(%rax), %eax	# *_59, D.13812
	cmpb	$48, %al	#, D.13812
	je	.L423	#,
.L424:
	.loc 1 1373 0 discriminator 7
	movl	$1, %eax	#, iftmp.197
	jmp	.L425	#
.L423:
	.loc 1 1373 0 discriminator 6
	movl	$0, %eax	#, iftmp.197
.L425:
	.loc 1 1373 0 discriminator 9
	andl	$1, %eax	#, iftmp.196
	jmp	.L431	#
.L422:
	.loc 1 1373 0 discriminator 4
	movq	-632(%rbp), %rax	# sv, tmp172
	movl	12(%rax), %eax	# sv_13->sv_flags, D.13814
	andl	$65536, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L427	#,
	.loc 1 1373 0 discriminator 10
	movq	-632(%rbp), %rax	# sv, tmp173
	movq	(%rax), %rax	# sv_13->sv_any, D.13820
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_66].xiv_iv, D.13813
	testq	%rax, %rax	# D.13813
	setne	%al	#, iftmp.203
	jmp	.L431	#
.L427:
	.loc 1 1373 0 discriminator 11
	movq	-632(%rbp), %rax	# sv, tmp174
	movl	12(%rax), %eax	# sv_13->sv_flags, D.13814
	andl	$131072, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L429	#,
	.loc 1 1373 0 discriminator 12
	movq	-632(%rbp), %rax	# sv, tmp175
	movq	(%rax), %rax	# sv_13->sv_any, D.13820
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_71].xnv_nv, D.13821
	xorpd	%xmm1, %xmm1	# tmp177
	ucomisd	%xmm1, %xmm0	# tmp177, D.13821
	setp	%dl	#, tmp176
	movl	$1, %eax	#, tmp179
	xorpd	%xmm1, %xmm1	# tmp178
	ucomisd	%xmm1, %xmm0	# tmp178, D.13821
	cmove	%edx, %eax	# tmp176,, iftmp.204
	jmp	.L431	#
.L429:
	.loc 1 1373 0 discriminator 13
	movq	-632(%rbp), %rax	# sv, tmp180
	movq	%rax, %rdi	# tmp180,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13812
	setne	%al	#, iftmp.204
	jmp	.L431	#
.L421:
	.loc 1 1373 0 discriminator 2
	movl	$0, %eax	#, iftmp.195
.L431:
	.loc 1 1373 0 discriminator 16
	testb	%al, %al	# iftmp.195
	je	.L432	#,
	.loc 1 1374 0 is_stmt 1
	movq	$3, -8(%rbp)	#, amt.fallback
	jmp	.L420	#
.L432:
	.loc 1 1375 0
	movq	-632(%rbp), %rax	# sv, tmp181
	movl	12(%rax), %eax	# sv_13->sv_flags, D.13814
	andl	$118423552, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L420	#,
	.loc 1 1376 0
	movq	$1, -8(%rbp)	#, amt.fallback
.L420:
	.loc 1 1378 0
	movl	$1, -656(%rbp)	#, i
	jmp	.L433	#
.L434:
	.loc 1 1379 0 discriminator 2
	movl	-656(%rbp), %eax	# i, tmp183
	cltq
	addq	$2, %rax	#, tmp184
	movq	$0, -552(%rbp,%rax,8)	#, amt.table
	.loc 1 1378 0 discriminator 2
	addl	$1, -656(%rbp)	#, i
.L433:
	.loc 1 1378 0 is_stmt 0 discriminator 1
	movl	-656(%rbp), %eax	# i, tmp185
	cmpl	-652(%rbp), %eax	# lim, tmp185
	jl	.L434	#,
	.loc 1 1380 0 is_stmt 1
	jmp	.L435	#
.L452:
.LBB31:
	.loc 1 1381 0
	movl	-656(%rbp), %eax	# i, tmp187
	cltq
	movq	PL_AMG_names(,%rax,8), %rax	# PL_AMG_names, tmp188
	movq	%rax, -600(%rbp)	# tmp188, cooky
	.loc 1 1383 0
	cmpl	$64, -656(%rbp)	#, i
	jg	.L436	#,
	.loc 1 1383 0 is_stmt 0 discriminator 1
	movl	-656(%rbp), %eax	# i, tmp190
	cltq
	movq	PL_AMG_names(,%rax,8), %rax	# PL_AMG_names, D.13815
	addq	$1, %rax	#, iftmp.205
	jmp	.L437	#
.L436:
	.loc 1 1383 0 discriminator 2
	movq	-600(%rbp), %rax	# cooky, iftmp.205
.L437:
	.loc 1 1383 0 discriminator 3
	movq	%rax, -592(%rbp)	# iftmp.205, cp
	.loc 1 1384 0 is_stmt 1 discriminator 3
	movq	-600(%rbp), %rax	# cooky, tmp191
	movq	%rax, %rdi	# tmp191,
	call	strlen	#
	movq	%rax, -584(%rbp)	# tmp192, l
	.loc 1 1395 0 discriminator 3
	cmpl	$64, -656(%rbp)	#, i
	jle	.L438	#,
	.loc 1 1396 0
	movq	-584(%rbp), %rdx	# l, tmp193
	movq	-600(%rbp), %rsi	# cooky, tmp194
	movq	-680(%rbp), %rax	# stash, tmp195
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp195,
	call	Perl_gv_fetchmeth_autoload	#
	movq	%rax, -648(%rbp)	# tmp196, gv
	jmp	.L439	#
.L438:
	.loc 1 1398 0
	movq	-584(%rbp), %rdx	# l, tmp197
	movq	-600(%rbp), %rsi	# cooky, tmp198
	movq	-680(%rbp), %rax	# stash, tmp199
	movl	$-1, %ecx	#,
	movq	%rax, %rdi	# tmp199,
	call	Perl_gv_fetchmeth	#
	movq	%rax, -648(%rbp)	# tmp200, gv
.L439:
	.loc 1 1399 0
	movq	$0, -640(%rbp)	#, cv
	.loc 1 1400 0
	cmpq	$0, -648(%rbp)	#, gv
	je	.L440	#,
	.loc 1 1400 0 is_stmt 0 discriminator 1
	movq	-648(%rbp), %rax	# gv, tmp201
	movq	(%rax), %rax	# gv_1->sv_any, D.13816
	movq	56(%rax), %rax	# _93->xgv_gp, D.13817
	movq	56(%rax), %rax	# _94->gp_cv, tmp202
	movq	%rax, -640(%rbp)	# tmp202, cv
	cmpq	$0, -640(%rbp)	#, cv
	je	.L440	#,
	.loc 1 1401 0 is_stmt 1
	movq	-640(%rbp), %rax	# cv, tmp203
	movq	(%rax), %rax	# cv_95->sv_any, D.13822
	movq	96(%rax), %rax	# _96->xcv_gv, D.13823
	movq	(%rax), %rax	# _97->sv_any, D.13816
	movq	72(%rax), %rax	# _98->xgv_namelen, D.13818
	cmpq	$3, %rax	#, D.13818
	jne	.L441	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	movq	-640(%rbp), %rax	# cv, tmp204
	movq	(%rax), %rax	# cv_95->sv_any, D.13822
	movq	96(%rax), %rax	# _100->xcv_gv, D.13823
	movq	(%rax), %rax	# _101->sv_any, D.13816
	movq	64(%rax), %rax	# _102->xgv_name, D.13819
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# D.13819,
	call	strcmp	#
	testl	%eax, %eax	# D.13824
	jne	.L441	#,
	.loc 1 1402 0 is_stmt 1
	movq	-640(%rbp), %rax	# cv, tmp205
	movq	(%rax), %rax	# cv_95->sv_any, D.13822
	movq	96(%rax), %rax	# _105->xcv_gv, D.13823
	movq	(%rax), %rax	# _106->sv_any, D.13816
	movq	80(%rax), %rax	# _107->xgv_stash, D.13825
	movq	(%rax), %rax	# _108->sv_any, D.13826
	movq	80(%rax), %rax	# _109->xhv_name, D.13819
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# D.13819,
	call	strcmp	#
	testl	%eax, %eax	# D.13824
	jne	.L441	#,
.LBB32:
	.loc 1 1406 0
	movq	$0, -624(%rbp)	#, ngv
	.loc 1 1411 0
	movq	-648(%rbp), %rax	# gv, tmp206
	movq	(%rax), %rax	# gv_1->sv_any, D.13816
	movq	56(%rax), %rax	# _113->xgv_gp, D.13817
	movq	(%rax), %rax	# _114->gp_sv, D.13827
	movl	12(%rax), %eax	# _115->sv_flags, D.13814
	andl	$262144, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L442	#,
	.loc 1 1412 0
	movq	-648(%rbp), %rax	# gv, tmp207
	movq	(%rax), %rax	# gv_1->sv_any, D.13816
	movq	56(%rax), %rax	# _118->xgv_gp, D.13817
	movq	(%rax), %rax	# _119->gp_sv, D.13827
	movq	(%rax), %rax	# _120->sv_any, D.13820
	movq	(%rax), %rcx	# MEM[(struct XPV *)_121].xpv_pv, D.13819
	movq	-680(%rbp), %rax	# stash, tmp208
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13819,
	movq	%rax, %rdi	# tmp208,
	call	Perl_gv_fetchmethod_autoload	#
	movq	%rax, -624(%rbp)	# tmp209, ngv
	cmpq	$0, -624(%rbp)	#, ngv
	jne	.L443	#,
.L442:
.LBB33:
	.loc 1 1416 0
	movq	-648(%rbp), %rax	# gv, tmp210
	movq	(%rax), %rax	# gv_1->sv_any, D.13816
	movq	56(%rax), %rax	# _124->xgv_gp, D.13817
	movq	(%rax), %rax	# _125->gp_sv, tmp211
	movq	%rax, -576(%rbp)	# tmp211, gvsv
	.loc 1 1417 0
	movq	-576(%rbp), %rax	# gvsv, tmp212
	movl	12(%rax), %eax	# gvsv_126->sv_flags, D.13814
	andl	$262144, %eax	#, D.13814
	testl	%eax, %eax	# D.13814
	je	.L444	#,
	.loc 1 1417 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rax	# gvsv, tmp213
	movq	(%rax), %rax	# gvsv_126->sv_any, D.13820
	movq	(%rax), %rax	# MEM[(struct XPV *)_129].xpv_pv, iftmp.206
	jmp	.L445	#
.L444:
	.loc 1 1417 0 discriminator 2
	movl	$.LC71, %eax	#, iftmp.206
.L445:
	.loc 1 1417 0 discriminator 3
	movq	%rax, -568(%rbp)	# iftmp.206, name
	.loc 1 1422 0 is_stmt 1 discriminator 3
	movq	-680(%rbp), %rax	# stash, tmp214
	movq	(%rax), %rax	# stash_26(D)->sv_any, D.13826
	.loc 1 1418 0 discriminator 3
	movq	80(%rax), %rsi	# _133->xhv_name, D.13819
	.loc 1 1420 0 discriminator 3
	movq	-648(%rbp), %rax	# gv, tmp215
	movq	(%rax), %rax	# gv_1->sv_any, D.13816
	movq	56(%rax), %rax	# _135->xgv_gp, D.13817
	movl	64(%rax), %eax	# _136->gp_cvgen, D.13814
	.loc 1 1418 0 discriminator 3
	testl	%eax, %eax	# D.13814
	je	.L446	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	movl	$.LC72, %eax	#, iftmp.207
	jmp	.L447	#
.L446:
	.loc 1 1418 0 discriminator 2
	movl	$.LC73, %eax	#, iftmp.207
.L447:
	.loc 1 1418 0 discriminator 3
	movq	-592(%rbp), %rcx	# cp, tmp216
	movq	-568(%rbp), %rdx	# name, tmp217
	movq	%rsi, %r8	# D.13819,
	movq	%rax, %rsi	# iftmp.207,
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L443:
.LBE33:
	.loc 1 1424 0 is_stmt 1
	movq	-624(%rbp), %rax	# ngv, tmp218
	movq	%rax, -648(%rbp)	# tmp218, gv
	movq	-648(%rbp), %rax	# gv, tmp219
	movq	(%rax), %rax	# gv_140->sv_any, D.13816
	movq	56(%rax), %rax	# _141->xgv_gp, D.13817
	movq	56(%rax), %rax	# _142->gp_cv, tmp220
	movq	%rax, -640(%rbp)	# tmp220, cv
.L441:
.LBE32:
	.loc 1 1429 0
	movl	$1, -664(%rbp)	#, filled
	.loc 1 1430 0
	cmpl	$64, -656(%rbp)	#, i
	jg	.L448	#,
	.loc 1 1431 0
	movl	$1, -660(%rbp)	#, have_ovl
	.loc 1 1430 0
	jmp	.L449	#
.L448:
	.loc 1 1430 0 is_stmt 0 discriminator 1
	jmp	.L449	#
.L440:
	.loc 1 1432 0 is_stmt 1
	cmpq	$0, -648(%rbp)	#, gv
	je	.L449	#,
	.loc 1 1433 0
	movq	-648(%rbp), %rax	# gv, tmp221
	movq	%rax, -640(%rbp)	# tmp221, cv
	.loc 1 1434 0
	movl	$1, -664(%rbp)	#, filled
.L449:
	.loc 1 1436 0
	movq	-640(%rbp), %rax	# cv, tmp222
	movq	%rax, PL_Sv(%rip)	# tmp222, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.209
	testq	%rax, %rax	# PL_Sv.209
	je	.L451	#,
	.loc 1 1436 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.210
	movl	8(%rax), %edx	# PL_Sv.210_149->sv_refcnt, D.13814
	addl	$1, %edx	#, D.13814
	movl	%edx, 8(%rax)	# D.13814, PL_Sv.210_149->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.210_149->sv_refcnt, D.13814
	testl	%eax, %eax	# D.13814
	je	.L451	#,
	.loc 1 1436 0
	nop
.L451:
	.loc 1 1436 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.211
	movl	-656(%rbp), %edx	# i, tmp224
	movslq	%edx, %rdx	# tmp224, tmp223
	addq	$2, %rdx	#, tmp225
	movq	%rax, -552(%rbp,%rdx,8)	# PL_Sv.211, amt.table
.LBE31:
	.loc 1 1380 0 is_stmt 1 discriminator 4
	addl	$1, -656(%rbp)	#, i
.L435:
	.loc 1 1380 0 is_stmt 0 discriminator 1
	cmpl	$65, -656(%rbp)	#, i
	jle	.L452	#,
	.loc 1 1438 0 is_stmt 1
	cmpl	$0, -664(%rbp)	#, filled
	je	.L453	#,
	.loc 1 1439 0
	movl	-544(%rbp), %eax	# amt.flags, D.13814
	orl	$1, %eax	#, D.13814
	movl	%eax, -544(%rbp)	# D.13814, amt.flags
	.loc 1 1440 0
	cmpl	$0, -660(%rbp)	#, have_ovl
	je	.L454	#,
	.loc 1 1441 0
	movl	-544(%rbp), %eax	# amt.flags, D.13814
	orl	$2, %eax	#, D.13814
	movl	%eax, -544(%rbp)	# D.13814, amt.flags
.L454:
	.loc 1 1442 0
	leaq	-560(%rbp), %rdx	#, tmp226
	movq	-680(%rbp), %rax	# stash, tmp227
	movl	$560, %r8d	#,
	movq	%rdx, %rcx	# tmp226,
	movl	$99, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_magic	#
	.loc 1 1444 0
	movl	-660(%rbp), %eax	# have_ovl, tmp228
	jmp	.L455	#
.L453:
.LBE30:
	.loc 1 1449 0
	movl	-544(%rbp), %eax	# amt.flags, D.13814
	andl	$-2, %eax	#, D.13814
	movl	%eax, -544(%rbp)	# D.13814, amt.flags
	.loc 1 1450 0
	leaq	-560(%rbp), %rdx	#, tmp229
	movq	-680(%rbp), %rax	# stash, tmp230
	movl	$24, %r8d	#,
	movq	%rdx, %rcx	# tmp229,
	movl	$99, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	Perl_sv_magic	#
	.loc 1 1452 0
	movl	$0, %eax	#, D.13812
.L455:
	.loc 1 1453 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_Gv_AMupdate, .-Perl_Gv_AMupdate
	.globl	Perl_gv_handler
	.type	Perl_gv_handler, @function
Perl_gv_handler:
.LFB31:
	.loc 1 1458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# stash, stash
	movl	%esi, -44(%rbp)	# id, id
	.loc 1 1463 0
	cmpq	$0, -40(%rbp)	#, stash
	je	.L457	#,
	.loc 1 1463 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# stash, tmp77
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13835
	movq	80(%rax), %rax	# _4->xhv_name, D.13836
	testq	%rax, %rax	# D.13836
	jne	.L458	#,
.L457:
	.loc 1 1464 0 is_stmt 1
	movl	$0, %eax	#, D.13834
	jmp	.L459	#
.L458:
	.loc 1 1465 0
	movq	-40(%rbp), %rax	# stash, tmp78
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	Perl_mg_find	#
	movq	%rax, -32(%rbp)	# tmp79, mg
	.loc 1 1466 0
	cmpq	$0, -32(%rbp)	#, mg
	jne	.L460	#,
.L461:
	.loc 1 1468 0
	movq	-40(%rbp), %rax	# stash, tmp80
	movq	%rax, %rdi	# tmp80,
	call	Perl_Gv_AMupdate	#
	.loc 1 1469 0
	movq	-40(%rbp), %rax	# stash, tmp81
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	Perl_mg_find	#
	movq	%rax, -32(%rbp)	# tmp82, mg
.L460:
	.loc 1 1471 0
	movq	-32(%rbp), %rax	# mg, tmp83
	movq	32(%rax), %rax	# mg_1->mg_ptr, tmp84
	movq	%rax, -24(%rbp)	# tmp84, amtp
	.loc 1 1472 0
	movq	-24(%rbp), %rax	# amtp, tmp85
	movq	8(%rax), %rdx	# amtp_7->was_ok_am, D.13837
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.212
	cmpq	%rax, %rdx	# PL_amagic_generation.212, D.13837
	jne	.L461	#,
	.loc 1 1473 0
	movq	-24(%rbp), %rax	# amtp, tmp86
	movl	(%rax), %edx	# amtp_7->was_ok_sub, D.13838
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.213
	cmpl	%eax, %edx	# PL_sub_generation.213, D.13838
	jne	.L461	#,
	.loc 1 1475 0
	movq	-24(%rbp), %rax	# amtp, tmp87
	movl	16(%rax), %eax	# amtp_7->flags, D.13838
	andl	$1, %eax	#, D.13838
	testl	%eax, %eax	# D.13838
	je	.L462	#,
	.loc 1 1476 0
	movq	-24(%rbp), %rax	# amtp, tmp88
	movl	-44(%rbp), %edx	# id, tmp90
	movslq	%edx, %rdx	# tmp90, tmp89
	addq	$2, %rdx	#, tmp91
	movq	8(%rax,%rdx,8), %rax	# amtp_7->table, tmp92
	movq	%rax, -16(%rbp)	# tmp92, ret
	.loc 1 1477 0
	cmpq	$0, -16(%rbp)	#, ret
	je	.L463	#,
	.loc 1 1477 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ret, tmp93
	movl	12(%rax), %eax	# ret_15->sv_flags, D.13838
	movzbl	%al, %eax	# D.13838, D.13838
	cmpl	$13, %eax	#, D.13838
	jne	.L463	#,
.LBB34:
	.loc 1 1482 0 is_stmt 1
	movl	-44(%rbp), %eax	# id, tmp95
	cltq
	movq	PL_AMG_names(,%rax,8), %rdx	# PL_AMG_names, D.13839
	movq	-40(%rbp), %rax	# stash, tmp96
	movq	%rdx, %rsi	# D.13839,
	movq	%rax, %rdi	# tmp96,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -8(%rbp)	# tmp97, gv
	.loc 1 1484 0
	cmpq	$0, -8(%rbp)	#, gv
	je	.L463	#,
	.loc 1 1484 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gv, tmp98
	movq	(%rax), %rax	# gv_19->sv_any, D.13840
	movq	56(%rax), %rax	# _20->xgv_gp, D.13841
	movq	56(%rax), %rax	# _21->gp_cv, D.13834
	testq	%rax, %rax	# D.13834
	je	.L463	#,
	.loc 1 1485 0 is_stmt 1
	movq	-8(%rbp), %rax	# gv, tmp99
	movq	(%rax), %rax	# gv_19->sv_any, D.13840
	movq	56(%rax), %rax	# _23->xgv_gp, D.13841
	movq	56(%rax), %rax	# _24->gp_cv, D.13834
	jmp	.L459	#
.L463:
.LBE34:
	.loc 1 1487 0
	movq	-16(%rbp), %rax	# ret, D.13834
	jmp	.L459	#
.L462:
	.loc 1 1490 0
	movl	$0, %eax	#, D.13834
.L459:
	.loc 1 1491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_gv_handler, .-Perl_gv_handler
	.section	.rodata
	.align 8
.LC75:
	.string	",\n\tright argument has no overloaded magic"
	.align 8
.LC76:
	.string	",\n\tright argument in overloaded package "
.LC77:
	.string	"in overloaded package "
.LC78:
	.string	"has no overloaded magic"
.LC79:
	.string	" "
.LC80:
	.string	"\n\tleft "
	.align 8
.LC81:
	.string	"Operation `%s': no method found,%sargument %s%s%s%s"
.LC82:
	.string	"%_"
.LC83:
	.string	"panic: POPSTACK\n"
	.align 8
.LC84:
	.string	"Copy method did not return a reference"
	.text
	.globl	Perl_amagic_call
	.type	Perl_amagic_call, @function
Perl_amagic_call:
.LFB32:
	.loc 1 1496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$296, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)	# left, left
	movq	%rsi, -288(%rbp)	# right, right
	movl	%edx, -292(%rbp)	# method, method
	movl	%ecx, -296(%rbp)	# flags, flags
	.loc 1 1498 0
	movq	$0, -216(%rbp)	#, cv
	.loc 1 1499 0
	movq	$0, -208(%rbp)	#, cvp
	movq	$0, -200(%rbp)	#, ocvp
	.loc 1 1500 0
	movq	$0, -192(%rbp)	#, amtp
	movq	$0, -184(%rbp)	#, oamtp
	.loc 1 1501 0
	movl	$0, -256(%rbp)	#, off
	movl	$0, -248(%rbp)	#, lr
	movl	-296(%rbp), %eax	# flags, tmp425
	andl	$4, %eax	#, tmp424
	movl	%eax, -244(%rbp)	# tmp424, assign
	movl	$0, -240(%rbp)	#, notfound
	.loc 1 1502 0
	movl	$0, -236(%rbp)	#, postpr
	movl	$0, -232(%rbp)	#, force_cpy
	cmpl	$0, -244(%rbp)	#, assign
	setne	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, tmp426
	movl	%eax, -220(%rbp)	# tmp426, assignshift
	.loc 1 1506 0
	movq	$0, -168(%rbp)	#, stash
	.loc 1 1507 0
	movl	-296(%rbp), %eax	# flags, tmp427
	andl	$2, %eax	#, D.13844
	testl	%eax, %eax	# D.13844
	jne	.L465	#,
	.loc 1 1507 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# left, tmp428
	movl	12(%rax), %eax	# left_157(D)->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L465	#,
	.loc 1 1508 0 is_stmt 1
	movq	-280(%rbp), %rax	# left, tmp429
	movq	(%rax), %rax	# left_157(D)->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_160].xrv_rv, D.13842
	movq	(%rax), %rax	# _161->sv_any, D.13846
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_162].xmg_stash, tmp430
	movq	%rax, -168(%rbp)	# tmp430, stash
	cmpq	$0, -168(%rbp)	#, stash
	je	.L465	#,
	.loc 1 1509 0
	movq	-168(%rbp), %rax	# stash, tmp431
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp431,
	call	Perl_mg_find	#
	movq	%rax, -160(%rbp)	# tmp432, mg
	cmpq	$0, -160(%rbp)	#, mg
	je	.L465	#,
	.loc 1 1510 0
	movq	-160(%rbp), %rax	# mg, tmp433
	movq	32(%rax), %rax	# mg_164->mg_ptr, D.13847
	movl	16(%rax), %eax	# MEM[(struct AMT *)_165].flags, D.13845
	andl	$1, %eax	#, D.13845
	.loc 1 1512 0
	testl	%eax, %eax	# D.13845
	je	.L466	#,
	.loc 1 1511 0
	movq	-160(%rbp), %rax	# mg, tmp434
	movq	32(%rax), %rax	# mg_164->mg_ptr, tmp435
	movq	%rax, -192(%rbp)	# tmp435, amtp
	movq	-192(%rbp), %rax	# amtp, tmp436
	movq	%rax, -184(%rbp)	# tmp436, oamtp
	.loc 1 1512 0
	movq	-184(%rbp), %rax	# oamtp, tmp437
	addq	$24, %rax	#, iftmp.214
	jmp	.L467	#
.L466:
	.loc 1 1512 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.214
.L467:
	.loc 1 1510 0 is_stmt 1
	movq	%rax, -208(%rbp)	# iftmp.214, cvp
	movq	-208(%rbp), %rax	# cvp, tmp438
	movq	%rax, -200(%rbp)	# tmp438, ocvp
	cmpq	$0, -200(%rbp)	#, ocvp
	je	.L465	#,
	.loc 1 1513 0
	movl	-220(%rbp), %eax	# assignshift, tmp443
	movl	-292(%rbp), %edx	# method, tmp444
	addl	%edx, %eax	# tmp444, tmp442
	movl	%eax, -256(%rbp)	# tmp442, off
	movl	-256(%rbp), %eax	# off, tmp445
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13848
	movq	-208(%rbp), %rax	# cvp, tmp446
	addq	%rdx, %rax	# D.13848, D.13849
	movq	(%rax), %rax	# *_178, tmp447
	movq	%rax, -216(%rbp)	# tmp447, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L468	#,
	.loc 1 1514 0
	cmpl	$0, -244(%rbp)	#, assign
	je	.L465	#,
	.loc 1 1514 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# amtp, tmp448
	movq	552(%rax), %rax	# amtp_42->fallback, D.13850
	cmpq	$1, %rax	#, D.13850
	jle	.L465	#,
	.loc 1 1520 0 is_stmt 1 discriminator 1
	movl	-292(%rbp), %eax	# method, tmp449
	movl	%eax, -256(%rbp)	# tmp449, off
	movl	-256(%rbp), %eax	# off, tmp450
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13848
	movq	-208(%rbp), %rax	# cvp, tmp451
	addq	%rdx, %rax	# D.13848, D.13849
	movq	(%rax), %rax	# *_184, tmp452
	movq	%rax, -216(%rbp)	# tmp452, cv
	.loc 1 1514 0 discriminator 1
	cmpq	$0, -216(%rbp)	#, cv
	je	.L465	#,
.L468:
	.loc 1 1521 0
	movl	$-1, -248(%rbp)	#, lr
	jmp	.L469	#
.L465:
	.loc 1 1523 0
	cmpq	$0, -208(%rbp)	#, cvp
	je	.L470	#,
	.loc 1 1523 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# amtp, tmp453
	movq	552(%rax), %rax	# amtp_43->fallback, D.13850
	cmpq	$1, %rax	#, D.13850
	jle	.L470	#,
	movl	-296(%rbp), %eax	# flags, tmp454
	andl	$8, %eax	#, D.13844
	testl	%eax, %eax	# D.13844
	je	.L470	#,
.LBB35:
	.loc 1 1528 0 is_stmt 1
	cmpl	$64, -292(%rbp)	#, method
	ja	.L625	#,
	movl	-292(%rbp), %eax	# method, tmp455
	movq	.L473(,%rax,8), %rax	#, tmp456
	jmp	*%rax	# tmp456
	.section	.rodata
	.align 8
	.align 4
.L473:
	.quad	.L625
	.quad	.L472
	.quad	.L474
	.quad	.L625
	.quad	.L475
	.quad	.L476
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L477
	.quad	.L625
	.quad	.L478
	.quad	.L479
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L625
	.quad	.L480
	.quad	.L481
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L483
	.quad	.L483
	.text
.L478:
	.loc 1 1530 0
	movl	$1, -232(%rbp)	#, force_cpy
	.loc 1 1531 0
	movl	$7, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp457
	addq	$56, %rax	#, D.13849
	movq	(%rax), %rax	# *_192, tmp458
	movq	%rax, -216(%rbp)	# tmp458, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L484	#,
	.loc 1 1532 0
	movl	$6, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp459
	addq	$48, %rax	#, D.13849
	movq	(%rax), %rax	# *_195, tmp460
	movq	%rax, -216(%rbp)	# tmp460, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L485	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movl	$0, -232(%rbp)	#, force_cpy
	movl	$1, -236(%rbp)	#, postpr
.L484:
	.loc 1 1533 0 is_stmt 1
	movq	$PL_sv_yes, -288(%rbp)	#, right
	movl	$-1, -248(%rbp)	#, lr
	movl	$1, -244(%rbp)	#, assign
	.loc 1 1535 0
	jmp	.L486	#
.L485:
	jmp	.L486	#
.L479:
	.loc 1 1537 0
	movl	$1, -232(%rbp)	#, force_cpy
	.loc 1 1538 0
	movl	$9, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp461
	addq	$72, %rax	#, D.13849
	movq	(%rax), %rax	# *_204, tmp462
	movq	%rax, -216(%rbp)	# tmp462, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L487	#,
	.loc 1 1539 0
	movl	$8, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp463
	addq	$64, %rax	#, D.13849
	movq	(%rax), %rax	# *_207, tmp464
	movq	%rax, -216(%rbp)	# tmp464, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L488	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movl	$0, -232(%rbp)	#, force_cpy
	movl	$1, -236(%rbp)	#, postpr
.L487:
	.loc 1 1540 0 is_stmt 1
	movq	$PL_sv_yes, -288(%rbp)	#, right
	movl	$-1, -248(%rbp)	#, lr
	movl	$1, -244(%rbp)	#, assign
	.loc 1 1542 0
	jmp	.L486	#
.L488:
	jmp	.L486	#
.L474:
	.loc 1 1544 0
	movl	$5, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp465
	addq	$40, %rax	#, D.13849
	movq	(%rax), %rax	# *_215, tmp466
	movq	%rax, -216(%rbp)	# tmp466, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L489	#,
	.loc 1 1544 0 is_stmt 0 discriminator 2
	movl	$4, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp467
	addq	$32, %rax	#, D.13849
	movq	(%rax), %rax	# *_218, tmp468
	movq	%rax, -216(%rbp)	# tmp468, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L490	#,
.L489:
	.loc 1 1545 0 is_stmt 1 discriminator 1
	jmp	.L486	#
.L490:
	jmp	.L486	#
.L476:
	.loc 1 1547 0
	movl	$4, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp469
	addq	$32, %rax	#, D.13849
	movq	(%rax), %rax	# *_223, tmp470
	movq	%rax, -216(%rbp)	# tmp470, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L492	#,
	.loc 1 1547 0 is_stmt 0 discriminator 2
	movl	$2, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp471
	addq	$16, %rax	#, D.13849
	movq	(%rax), %rax	# *_226, tmp472
	movq	%rax, -216(%rbp)	# tmp472, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L493	#,
.L492:
	.loc 1 1548 0 is_stmt 1 discriminator 1
	jmp	.L486	#
.L493:
	jmp	.L486	#
.L475:
	.loc 1 1550 0
	movl	$5, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp473
	addq	$40, %rax	#, D.13849
	movq	(%rax), %rax	# *_231, tmp474
	movq	%rax, -216(%rbp)	# tmp474, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L495	#,
	.loc 1 1550 0 is_stmt 0 discriminator 2
	movl	$2, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp475
	addq	$16, %rax	#, D.13849
	movq	(%rax), %rax	# *_234, tmp476
	movq	%rax, -216(%rbp)	# tmp476, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L496	#,
.L495:
	.loc 1 1551 0 is_stmt 1 discriminator 1
	jmp	.L486	#
.L496:
	jmp	.L486	#
.L477:
	.loc 1 1553 0
	movl	$2, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp477
	addq	$16, %rax	#, D.13849
	movq	(%rax), %rax	# *_239, tmp478
	movq	%rax, -216(%rbp)	# tmp478, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L498	#,
	.loc 1 1554 0
	movl	$5, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp479
	addq	$40, %rax	#, D.13849
	movq	(%rax), %rax	# *_242, tmp480
	movq	%rax, -216(%rbp)	# tmp480, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L498	#,
	.loc 1 1555 0
	movl	$4, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp481
	addq	$32, %rax	#, D.13849
	movq	(%rax), %rax	# *_245, tmp482
	movq	%rax, -216(%rbp)	# tmp482, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L500	#,
.L498:
	.loc 1 1553 0 discriminator 1
	nop
.L500:
	.loc 1 1556 0
	movl	$1, -236(%rbp)	#, postpr
	.loc 1 1557 0
	jmp	.L486	#
.L480:
.LBB36:
	.loc 1 1564 0
	movq	-280(%rbp), %rax	# left, tmp483
	movq	(%rax), %rax	# left_157(D)->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_250].xrv_rv, tmp484
	movq	%rax, -152(%rbp)	# tmp484, tmpRef
	.loc 1 1565 0
	movq	-152(%rbp), %rax	# tmpRef, tmp485
	movl	12(%rax), %eax	# tmpRef_251->sv_flags, D.13845
	andl	$524288, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	jne	.L501	#,
	.loc 1 1565 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# tmpRef, tmp486
	movl	12(%rax), %eax	# tmpRef_251->sv_flags, D.13845
	movzbl	%al, %eax	# D.13845, D.13845
	cmpl	$7, %eax	#, D.13845
	ja	.L501	#,
.LBB37:
	.loc 1 1570 0 is_stmt 1
	movq	-152(%rbp), %rax	# tmpRef, tmp487
	movq	%rax, %rdi	# tmp487,
	call	Perl_newSVsv	#
	movq	%rax, -144(%rbp)	# tmp488, newref
	.loc 1 1571 0
	movq	-144(%rbp), %rax	# newref, tmp489
	movl	12(%rax), %eax	# newref_256->sv_flags, D.13845
	orb	$16, %ah	#, D.13845
	movl	%eax, %edx	# D.13845, D.13845
	movq	-144(%rbp), %rax	# newref, tmp490
	movl	%edx, 12(%rax)	# D.13845, newref_256->sv_flags
	.loc 1 1572 0
	movq	-152(%rbp), %rax	# tmpRef, tmp491
	movq	(%rax), %rax	# tmpRef_251->sv_any, D.13846
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_259].xmg_stash, PL_Sv.219
	movq	%rax, PL_Sv(%rip)	# PL_Sv.219, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.221
	testq	%rax, %rax	# PL_Sv.221
	je	.L503	#,
	.loc 1 1572 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.222
	movl	8(%rax), %edx	# PL_Sv.222_262->sv_refcnt, D.13845
	addl	$1, %edx	#, D.13845
	movl	%edx, 8(%rax)	# D.13845, PL_Sv.222_262->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.222_262->sv_refcnt, D.13845
	testl	%eax, %eax	# D.13845
	je	.L503	#,
	.loc 1 1572 0
	nop
.L503:
	.loc 1 1572 0 discriminator 4
	movq	-144(%rbp), %rax	# newref, tmp492
	movq	(%rax), %rax	# newref_256->sv_any, D.13846
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.223
	movq	%rdx, 48(%rax)	# PL_Sv.223, MEM[(struct XPVMG *)_268].xmg_stash
	.loc 1 1573 0 is_stmt 1 discriminator 4
	movq	-144(%rbp), %rax	# newref, D.13842
	jmp	.L504	#
.L501:
.LBE37:
.LBE36:
	.loc 1 1576 0
	jmp	.L486	#
.L472:
	.loc 1 1578 0
	movl	$28, -252(%rbp)	#, off1
	movq	-208(%rbp), %rax	# cvp, tmp493
	addq	$224, %rax	#, D.13849
	movq	(%rax), %rax	# *_272, D.13851
	testq	%rax, %rax	# D.13851
	jne	.L505	#,
	.loc 1 1578 0 is_stmt 0 discriminator 1
	movl	$34, -252(%rbp)	#, off1
	movq	-208(%rbp), %rax	# cvp, tmp494
	addq	$272, %rax	#, D.13849
	movq	(%rax), %rax	# *_275, D.13851
	testq	%rax, %rax	# D.13851
	je	.L506	#,
.L505:
	.loc 1 1579 0 is_stmt 1
	movl	$57, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp495
	addq	$456, %rax	#, D.13849
	movq	(%rax), %rax	# *_278, tmp496
	movq	%rax, -216(%rbp)	# tmp496, cv
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L507	#,
	.loc 1 1579 0 is_stmt 0 discriminator 1
	movl	$8, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp497
	addq	$64, %rax	#, D.13849
	movq	(%rax), %rax	# *_281, tmp498
	movq	%rax, -216(%rbp)	# tmp498, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L506	#,
.L507:
.LBB38:
	.loc 1 1580 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13842,
	call	Perl_sv_2mortal	#
	movq	%rax, -136(%rbp)	# tmp499, nullsv
	.loc 1 1581 0
	cmpl	$28, -252(%rbp)	#, off1
	jne	.L508	#,
.LBB39:
	.loc 1 1582 0
	movq	-136(%rbp), %rsi	# nullsv, tmp500
	movq	-280(%rbp), %rax	# left, tmp501
	movl	$1, %ecx	#,
	movl	$28, %edx	#,
	movq	%rax, %rdi	# tmp501,
	call	Perl_amagic_call	#
	movq	%rax, -128(%rbp)	# tmp502, lessp
	.loc 1 1584 0
	cmpq	$0, -128(%rbp)	#, lessp
	je	.L509	#,
	.loc 1 1584 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# lessp, tmp503
	movl	12(%rax), %eax	# lessp_285->sv_flags, D.13845
	andl	$262144, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L510	#,
	movq	-128(%rbp), %rax	# lessp, tmp504
	movq	(%rax), %rax	# lessp_285->sv_any, PL_Xpv.227
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.227, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.228
	testq	%rax, %rax	# PL_Xpv.228
	je	.L511	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.229
	movq	8(%rax), %rax	# PL_Xpv.229_290->xpv_cur, D.13848
	cmpq	$1, %rax	#, D.13848
	ja	.L512	#,
	.loc 1 1584 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.230
	movq	8(%rax), %rax	# PL_Xpv.230_292->xpv_cur, D.13848
	testq	%rax, %rax	# D.13848
	je	.L511	#,
	.loc 1 1584 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.231
	movq	(%rax), %rax	# PL_Xpv.231_294->xpv_pv, D.13847
	movzbl	(%rax), %eax	# *_295, D.13852
	cmpb	$48, %al	#, D.13852
	je	.L511	#,
.L512:
	.loc 1 1584 0 discriminator 3
	movl	$1, %eax	#, iftmp.226
	jmp	.L513	#
.L511:
	.loc 1 1584 0 discriminator 2
	movl	$0, %eax	#, iftmp.226
.L513:
	jmp	.L519	#
.L510:
	movq	-128(%rbp), %rax	# lessp, tmp505
	movl	12(%rax), %eax	# lessp_285->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L515	#,
	.loc 1 1584 0 discriminator 1
	movq	-128(%rbp), %rax	# lessp, tmp506
	movq	(%rax), %rax	# lessp_285->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_302].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	setne	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.232
	jmp	.L519	#
.L515:
	.loc 1 1584 0 discriminator 2
	movq	-128(%rbp), %rax	# lessp, tmp507
	movl	12(%rax), %eax	# lessp_285->sv_flags, D.13845
	andl	$131072, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L517	#,
	.loc 1 1584 0 discriminator 1
	movq	-128(%rbp), %rax	# lessp, tmp508
	movq	(%rax), %rax	# lessp_285->sv_any, D.13846
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_308].xnv_nv, D.13853
	xorpd	%xmm1, %xmm1	# tmp510
	ucomisd	%xmm1, %xmm0	# tmp510, D.13853
	setp	%dl	#, tmp509
	movl	$1, %eax	#, tmp512
	xorpd	%xmm1, %xmm1	# tmp511
	ucomisd	%xmm1, %xmm0	# tmp511, D.13853
	cmove	%edx, %eax	# tmp509,, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.233
	jmp	.L519	#
.L517:
	.loc 1 1584 0 discriminator 2
	movq	-128(%rbp), %rax	# lessp, tmp513
	movq	%rax, %rdi	# tmp513,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.13852, iftmp.233
	jmp	.L519	#
.L509:
	movl	$0, %eax	#, iftmp.224
.L519:
	movl	%eax, -228(%rbp)	# iftmp.224, logic
.LBE39:
	jmp	.L520	#
.L508:
.LBB40:
	.loc 1 1586 0 is_stmt 1
	movq	-136(%rbp), %rsi	# nullsv, tmp514
	movq	-280(%rbp), %rax	# left, tmp515
	movl	$1, %ecx	#,
	movl	$34, %edx	#,
	movq	%rax, %rdi	# tmp515,
	call	Perl_amagic_call	#
	movq	%rax, -120(%rbp)	# tmp516, lessp
	.loc 1 1588 0
	movq	-120(%rbp), %rax	# lessp, tmp517
	movl	12(%rax), %eax	# lessp_319->sv_flags, D.13845
	andl	$131072, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L521	#,
	.loc 1 1588 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# lessp, tmp518
	movq	(%rax), %rax	# lessp_319->sv_any, D.13846
	movsd	32(%rax), %xmm1	# MEM[(struct XPVNV *)_322].xnv_nv, D.13853
	xorpd	%xmm0, %xmm0	# tmp519
	ucomisd	%xmm1, %xmm0	# D.13853, tmp519
	seta	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.234
	jmp	.L522	#
.L521:
	.loc 1 1588 0 discriminator 2
	movq	-120(%rbp), %rax	# lessp, tmp520
	movq	%rax, %rdi	# tmp520,
	call	Perl_sv_2nv	#
	xorpd	%xmm1, %xmm1	# tmp521
	ucomisd	%xmm0, %xmm1	# D.13853, tmp521
	seta	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.234
.L522:
	.loc 1 1588 0 discriminator 3
	movl	%eax, -228(%rbp)	# iftmp.234, logic
.L520:
.LBE40:
	.loc 1 1590 0 is_stmt 1
	cmpl	$0, -228(%rbp)	#, logic
	je	.L523	#,
	.loc 1 1591 0
	cmpl	$8, -256(%rbp)	#, off
	jne	.L506	#,
	.loc 1 1592 0
	movq	-280(%rbp), %rax	# left, tmp522
	movq	%rax, -288(%rbp)	# tmp522, right
	.loc 1 1593 0
	movq	-136(%rbp), %rax	# nullsv, tmp523
	movq	%rax, -280(%rbp)	# tmp523, left
	.loc 1 1594 0
	movl	$1, -248(%rbp)	#, lr
.LBE38:
	.loc 1 1600 0
	jmp	.L486	#
.L523:
.LBB41:
	.loc 1 1597 0
	movq	-280(%rbp), %rax	# left, D.13842
	jmp	.L504	#
.L506:
.LBE41:
	.loc 1 1600 0
	jmp	.L486	#
.L481:
	.loc 1 1602 0
	movl	$8, -256(%rbp)	#, off
	movq	-208(%rbp), %rax	# cvp, tmp524
	addq	$64, %rax	#, D.13849
	movq	(%rax), %rax	# *_335, tmp525
	movq	%rax, -216(%rbp)	# tmp525, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L525	#,
	.loc 1 1603 0
	movq	-280(%rbp), %rax	# left, tmp526
	movq	%rax, -288(%rbp)	# tmp526, right
	.loc 1 1604 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13842,
	call	Perl_sv_2mortal	#
	movq	%rax, -280(%rbp)	# tmp527, left
	.loc 1 1605 0
	movl	$1, -248(%rbp)	#, lr
	.loc 1 1607 0
	jmp	.L486	#
.L525:
	jmp	.L486	#
.L483:
	.loc 1 1611 0
	movl	$0, %eax	#, D.13842
	jmp	.L504	#
.L482:
	.loc 1 1619 0
	movq	-280(%rbp), %rax	# left, D.13842
	jmp	.L504	#
.L486:
	.loc 1 1624 0
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L527	#,
	.loc 1 1624 0 is_stmt 0 discriminator 1
	jmp	.L526	#
.L527:
.LBE35:
	.loc 1 1523 0 is_stmt 1
	jmp	.L469	#
.L470:
	.loc 1 1625 0
	movl	-296(%rbp), %eax	# flags, tmp528
	andl	$1, %eax	#, D.13844
	testl	%eax, %eax	# D.13844
	jne	.L528	#,
	.loc 1 1625 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# right, tmp529
	movl	12(%rax), %eax	# right_187(D)->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L528	#,
	.loc 1 1626 0 is_stmt 1
	movq	-288(%rbp), %rax	# right, tmp530
	movq	(%rax), %rax	# right_187(D)->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_346].xrv_rv, D.13842
	movq	(%rax), %rax	# _347->sv_any, D.13846
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_348].xmg_stash, tmp531
	movq	%rax, -168(%rbp)	# tmp531, stash
	cmpq	$0, -168(%rbp)	#, stash
	je	.L528	#,
	.loc 1 1627 0
	movq	-168(%rbp), %rax	# stash, tmp532
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp532,
	call	Perl_mg_find	#
	movq	%rax, -160(%rbp)	# tmp533, mg
	cmpq	$0, -160(%rbp)	#, mg
	je	.L528	#,
	.loc 1 1628 0
	movq	-160(%rbp), %rax	# mg, tmp534
	movq	32(%rax), %rax	# mg_350->mg_ptr, D.13847
	movl	16(%rax), %eax	# MEM[(struct AMT *)_351].flags, D.13845
	andl	$1, %eax	#, D.13845
	.loc 1 1630 0
	testl	%eax, %eax	# D.13845
	je	.L529	#,
	.loc 1 1629 0
	movq	-160(%rbp), %rax	# mg, tmp535
	movq	32(%rax), %rax	# mg_350->mg_ptr, tmp536
	movq	%rax, -192(%rbp)	# tmp536, amtp
	.loc 1 1630 0
	movq	-192(%rbp), %rax	# amtp, tmp537
	addq	$24, %rax	#, iftmp.235
	jmp	.L530	#
.L529:
	.loc 1 1630 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.235
.L530:
	.loc 1 1628 0 is_stmt 1
	movq	%rax, -208(%rbp)	# iftmp.235, cvp
	cmpq	$0, -208(%rbp)	#, cvp
	je	.L528	#,
	.loc 1 1631 0
	movl	-292(%rbp), %eax	# method, tmp538
	movl	%eax, -256(%rbp)	# tmp538, off
	movl	-256(%rbp), %eax	# off, tmp539
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13848
	movq	-208(%rbp), %rax	# cvp, tmp540
	addq	%rdx, %rax	# D.13848, D.13849
	movq	(%rax), %rax	# *_361, tmp541
	movq	%rax, -216(%rbp)	# tmp541, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L528	#,
	.loc 1 1633 0
	movl	$1, -248(%rbp)	#, lr
	jmp	.L469	#
.L528:
	.loc 1 1634 0
	cmpq	$0, -200(%rbp)	#, ocvp
	je	.L531	#,
	.loc 1 1634 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# oamtp, tmp542
	movq	552(%rax), %rax	# oamtp_48->fallback, D.13850
	cmpq	$1, %rax	#, D.13850
	jle	.L531	#,
	.loc 1 1635 0 is_stmt 1
	movq	-200(%rbp), %rax	# ocvp, tmp543
	movq	%rax, -208(%rbp)	# tmp543, cvp
	cmpq	$0, -208(%rbp)	#, cvp
	je	.L531	#,
	.loc 1 1635 0 is_stmt 0 discriminator 1
	movl	$-1, -248(%rbp)	#, lr
	jmp	.L532	#
.L531:
	.loc 1 1636 0 is_stmt 1
	cmpq	$0, -208(%rbp)	#, cvp
	je	.L526	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# amtp, tmp544
	movq	552(%rax), %rax	# amtp_45->fallback, D.13850
	cmpq	$1, %rax	#, D.13850
	jle	.L526	#,
	movl	$1, -248(%rbp)	#, lr
.L532:
	.loc 1 1637 0 is_stmt 1
	movl	-296(%rbp), %eax	# flags, tmp545
	andl	$8, %eax	#, D.13844
	testl	%eax, %eax	# D.13844
	jne	.L526	#,
	.loc 1 1641 0
	cmpl	$54, -292(%rbp)	#, method
	je	.L533	#,
	.loc 1 1641 0 is_stmt 0 discriminator 1
	cmpl	$55, -292(%rbp)	#, method
	je	.L533	#,
	.loc 1 1642 0 is_stmt 1
	cmpl	$52, -292(%rbp)	#, method
	je	.L533	#,
	.loc 1 1642 0 is_stmt 0 discriminator 1
	cmpl	$53, -292(%rbp)	#, method
	jne	.L534	#,
.L533:
	.loc 1 1643 0 is_stmt 1
	movl	$0, %eax	#, D.13842
	jmp	.L504	#
.L534:
	.loc 1 1645 0
	movl	$-1, -256(%rbp)	#, off
	.loc 1 1646 0
	movl	-292(%rbp), %eax	# method, method
	cmpl	$28, %eax	#, method
	jl	.L535	#,
	cmpl	$33, %eax	#, method
	jle	.L536	#,
	subl	$36, %eax	#, tmp547
	cmpl	$5, %eax	#, tmp547
	ja	.L535	#,
	jmp	.L624	#
.L536:
	.loc 1 1653 0
	movl	$1, -236(%rbp)	#, postpr
	movl	$34, -256(%rbp)	#, off
	jmp	.L535	#
.L624:
	.loc 1 1660 0
	movl	$1, -236(%rbp)	#, postpr
	movl	$35, -256(%rbp)	#, off
	nop
.L535:
	.loc 1 1662 0
	cmpl	$-1, -256(%rbp)	#, off
	je	.L538	#,
	.loc 1 1662 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# off, tmp548
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13848
	movq	-208(%rbp), %rax	# cvp, tmp549
	addq	%rdx, %rax	# D.13848, D.13849
	movq	(%rax), %rax	# *_377, tmp550
	movq	%rax, -216(%rbp)	# tmp550, cv
.L538:
	.loc 1 1663 0 is_stmt 1
	cmpq	$0, -216(%rbp)	#, cv
	jne	.L539	#,
	.loc 1 1664 0
	jmp	.L526	#
.L539:
	.loc 1 1663 0 discriminator 1
	jmp	.L469	#
.L625:
.LBB42:
	.loc 1 1622 0
	nop
.L526:
.LBE42:
	.loc 1 1668 0
	movl	-292(%rbp), %eax	# method, method
	subl	$58, %eax	#, tmp552
	cmpl	$4, %eax	#, tmp552
	ja	.L540	#,
	.loc 1 1675 0
	movq	-280(%rbp), %rax	# left, D.13842
	jmp	.L504	#
.L540:
	.loc 1 1678 0
	cmpq	$0, -200(%rbp)	#, ocvp
	je	.L542	#,
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# ocvp, tmp553
	movq	24(%rax), %rax	# MEM[(struct CV * *)ocvp_41 + 24B], tmp554
	movq	%rax, -216(%rbp)	# tmp554, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L542	#,
	.loc 1 1679 0 is_stmt 1
	movl	$1, -240(%rbp)	#, notfound
	movl	$-1, -248(%rbp)	#, lr
	jmp	.L543	#
.L542:
	.loc 1 1680 0
	cmpq	$0, -208(%rbp)	#, cvp
	je	.L544	#,
	.loc 1 1680 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# cvp, tmp555
	movq	24(%rax), %rax	# MEM[(struct CV * *)cvp_40 + 24B], tmp556
	movq	%rax, -216(%rbp)	# tmp556, cv
	cmpq	$0, -216(%rbp)	#, cv
	je	.L544	#,
	.loc 1 1681 0 is_stmt 1
	movl	$1, -240(%rbp)	#, notfound
	movl	$1, -248(%rbp)	#, lr
	jmp	.L543	#
.L544:
.LBB43:
	.loc 1 1684 0
	cmpl	$-1, -256(%rbp)	#, off
	jne	.L545	#,
	.loc 1 1684 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# method, tmp557
	movl	%eax, -256(%rbp)	# tmp557, off
.L545:
	.loc 1 1700 0 is_stmt 1
	movq	-288(%rbp), %rax	# right, tmp558
	movl	12(%rax), %eax	# right_13->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	.loc 1 1685 0
	testl	%eax, %eax	# D.13845
	je	.L546	#,
	.loc 1 1701 0
	movq	-288(%rbp), %rax	# right, tmp559
	movq	(%rax), %rax	# right_13->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_390].xrv_rv, D.13842
	movq	(%rax), %rax	# _391->sv_any, D.13846
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_392].xmg_stash, D.13854
	movq	(%rax), %rax	# _393->sv_any, D.13855
	.loc 1 1685 0
	movq	80(%rax), %rcx	# _394->xhv_name, iftmp.236
	jmp	.L547	#
.L546:
	.loc 1 1685 0 is_stmt 0 discriminator 1
	movl	$.LC3, %ecx	#, iftmp.236
.L547:
	.loc 1 1695 0 is_stmt 1 discriminator 2
	movq	-288(%rbp), %rax	# right, tmp560
	movl	12(%rax), %eax	# right_13->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	.loc 1 1685 0 discriminator 2
	testl	%eax, %eax	# D.13845
	jne	.L548	#,
	.loc 1 1697 0
	movl	-296(%rbp), %eax	# flags, tmp561
	andl	$8, %eax	#, D.13844
	.loc 1 1699 0
	testl	%eax, %eax	# D.13844
	je	.L549	#,
	.loc 1 1699 0 is_stmt 0 discriminator 1
	movl	$.LC3, %eax	#, iftmp.238
	jmp	.L550	#
.L549:
	.loc 1 1699 0 discriminator 2
	movl	$.LC75, %eax	#, iftmp.238
.L550:
	.loc 1 1685 0 is_stmt 1 discriminator 1
	movq	%rax, %rdi	# iftmp.238, iftmp.237
	jmp	.L551	#
.L548:
	.loc 1 1685 0 is_stmt 0 discriminator 3
	movl	$.LC76, %edi	#, iftmp.237
.L551:
	.loc 1 1692 0 is_stmt 1 discriminator 4
	movq	-280(%rbp), %rax	# left, tmp562
	movl	12(%rax), %eax	# left_5->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	.loc 1 1685 0 discriminator 4
	testl	%eax, %eax	# D.13845
	je	.L552	#,
	.loc 1 1693 0
	movq	-280(%rbp), %rax	# left, tmp563
	movq	(%rax), %rax	# left_5->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_406].xrv_rv, D.13842
	movq	(%rax), %rax	# _407->sv_any, D.13846
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_408].xmg_stash, D.13854
	movq	(%rax), %rax	# _409->sv_any, D.13855
	.loc 1 1685 0
	movq	80(%rax), %rsi	# _410->xhv_name, iftmp.239
	jmp	.L553	#
.L552:
	.loc 1 1685 0 is_stmt 0 discriminator 5
	movl	$.LC3, %esi	#, iftmp.239
.L553:
	.loc 1 1689 0 is_stmt 1 discriminator 6
	movq	-280(%rbp), %rax	# left, tmp564
	movl	12(%rax), %eax	# left_5->sv_flags, D.13845
	andl	$268435456, %eax	#, D.13845
	.loc 1 1685 0 discriminator 6
	testl	%eax, %eax	# D.13845
	je	.L554	#,
	.loc 1 1685 0 is_stmt 0 discriminator 7
	movl	$.LC77, %edx	#, iftmp.240
	jmp	.L555	#
.L554:
	.loc 1 1685 0 discriminator 8
	movl	$.LC78, %edx	#, iftmp.240
.L555:
	.loc 1 1688 0 is_stmt 1 discriminator 9
	movl	-296(%rbp), %eax	# flags, tmp565
	andl	$8, %eax	#, D.13844
	.loc 1 1685 0 discriminator 9
	testl	%eax, %eax	# D.13844
	je	.L556	#,
	.loc 1 1685 0 is_stmt 0 discriminator 10
	movl	$.LC79, %eax	#, iftmp.241
	jmp	.L557	#
.L556:
	.loc 1 1685 0 discriminator 11
	movl	$.LC80, %eax	#, iftmp.241
.L557:
	.loc 1 1687 0 is_stmt 1
	movl	-220(%rbp), %r8d	# assignshift, tmp566
	movl	-292(%rbp), %r9d	# method, tmp567
	addl	%r9d, %r8d	# tmp567, D.13844
	movslq	%r8d, %r8	# D.13844, tmp568
	movq	PL_AMG_names(,%r8,8), %r8	# PL_AMG_names, D.13856
	.loc 1 1685 0
	leaq	1(%r8), %r10	#, D.13847
	movq	%rcx, (%rsp)	# iftmp.236,
	movq	%rdi, %r9	# iftmp.237,
	movq	%rsi, %r8	# iftmp.239,
	movq	%rdx, %rcx	# iftmp.240,
	movq	%rax, %rdx	# iftmp.241,
	movq	%r10, %rsi	# D.13847,
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.13842,
	call	Perl_sv_2mortal	#
	movq	%rax, -112(%rbp)	# tmp569, msg
	.loc 1 1703 0
	cmpq	$0, -192(%rbp)	#, amtp
	je	.L558	#,
	.loc 1 1703 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# amtp, tmp570
	movq	552(%rax), %rax	# amtp_46->fallback, D.13850
	cmpq	$2, %rax	#, D.13850
	jle	.L558	#,
	jmp	.L559	#
.L558:
	.loc 1 1706 0 is_stmt 1
	movq	-112(%rbp), %rax	# msg, tmp571
	movq	%rax, %rsi	# tmp571,
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L559:
	.loc 1 1708 0
	movl	$0, %eax	#, D.13842
	jmp	.L504	#
.L543:
.LBE43:
	.loc 1 1710 0
	cmpl	$0, -232(%rbp)	#, force_cpy
	jne	.L560	#,
	.loc 1 1710 0 is_stmt 0 discriminator 2
	cmpl	$0, -244(%rbp)	#, assign
	je	.L561	#,
.L560:
	.loc 1 1710 0 discriminator 1
	movl	$1, %eax	#, iftmp.242
	jmp	.L562	#
.L561:
	.loc 1 1710 0 discriminator 3
	movl	$0, %eax	#, iftmp.242
.L562:
	.loc 1 1710 0 discriminator 4
	movl	%eax, -232(%rbp)	# iftmp.242, force_cpy
.L469:
	.loc 1 1752 0 is_stmt 1
	movl	-220(%rbp), %eax	# assignshift, tmp572
	movl	-292(%rbp), %edx	# method, tmp573
	addl	%edx, %eax	# tmp573, D.13844
	cmpl	-256(%rbp), %eax	# off, D.13844
	jne	.L563	#,
	.loc 1 1753 0
	cmpl	$0, -244(%rbp)	#, assign
	jne	.L564	#,
	.loc 1 1753 0 is_stmt 0 discriminator 1
	cmpl	$44, -292(%rbp)	#, method
	je	.L564	#,
	cmpl	$45, -292(%rbp)	#, method
	je	.L564	#,
.L563:
	.loc 1 1754 0 is_stmt 1
	cmpl	$0, -232(%rbp)	#, force_cpy
	je	.L565	#,
.L564:
.LBB44:
	.loc 1 1755 0
	movq	-280(%rbp), %rax	# left, tmp574
	movq	(%rax), %rax	# left_6->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_431].xrv_rv, tmp575
	movq	%rax, -104(%rbp)	# tmp575, tmpRef
	movq	-104(%rbp), %rax	# tmpRef, tmp576
	movl	8(%rax), %eax	# tmpRef_432->sv_refcnt, D.13845
	cmpl	$1, %eax	#, D.13845
	jbe	.L565	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# left, tmp577
	movq	(%rax), %rbx	# left_6->sv_any, D.13846
	movq	-280(%rbp), %rax	# left, tmp578
	movl	$9, %ecx	#,
	movl	$56, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp578,
	call	Perl_amagic_call	#
	movq	%rax, (%rbx)	# D.13842, MEM[(struct XRV *)_434].xrv_rv
	movq	-104(%rbp), %rax	# tmpRef, tmp579
	movq	%rax, %rdi	# tmp579,
	call	Perl_sv_free	#
.L565:
.LBE44:
.LBB45:
	.loc 1 1757 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1760 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.243
	movzbl	212(%rax), %eax	# PL_top_env.243_437->je_mustcatch, tmp580
	movb	%al, -257(%rbp)	# tmp580, oldcatch
	.loc 1 1762 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.244
	movb	$1, 212(%rax)	#, PL_top_env.244_439->je_mustcatch
	.loc 1 1763 0
	leaq	-80(%rbp), %rax	#, tmp581
	movl	$56, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp581,
	call	memset	#
	.loc 1 1764 0
	leaq	-80(%rbp), %rax	#, tmp582
	movq	%rax, -32(%rbp)	# tmp582, myop.op_last
	.loc 1 1765 0
	movq	$0, -80(%rbp)	#, myop.op_next
	.loc 1 1766 0
	movb	$66, -44(%rbp)	#, myop.op_flags
.LBB46:
	.loc 1 1768 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.245
	movq	40(%rax), %rax	# PL_curstackinfo.245_440->si_next, tmp583
	movq	%rax, -176(%rbp)	# tmp583, next
	cmpq	$0, -176(%rbp)	#, next
	jne	.L566	#,
	.loc 1 1768 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -176(%rbp)	# tmp584, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.246
	movq	-176(%rbp), %rax	# next, tmp585
	movq	%rdx, 32(%rax)	# PL_curstackinfo.246, next_442->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.247
	movq	-176(%rbp), %rdx	# next, tmp586
	movq	%rdx, 40(%rax)	# tmp586, PL_curstackinfo.247_444->si_next
.L566:
	.loc 1 1768 0 discriminator 2
	movq	-176(%rbp), %rax	# next, tmp587
	movl	$5, 24(%rax)	#, next_105->si_type
	movq	-176(%rbp), %rax	# next, tmp588
	movl	$-1, 16(%rax)	#, next_105->si_cxix
	movq	-176(%rbp), %rax	# next, tmp589
	movq	(%rax), %rax	# next_105->si_stack, D.13857
	movq	(%rax), %rax	# _445->sv_any, D.13858
	movq	$0, 8(%rax)	#, _446->xav_fill
.LBB47:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.248
	movq	(%rax), %rax	# PL_curstack.248_447->sv_any, D.13858
	movq	%rbx, %rcx	# sp, sp.249
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.250
	subq	%rdx, %rcx	# PL_stack_base.251, D.13850
	movq	%rcx, %rdx	# D.13850, D.13850
	sarq	$3, %rdx	#, tmp590
	movq	%rdx, 8(%rax)	# D.13850, _448->xav_fill
	movq	-176(%rbp), %rax	# next, tmp591
	movq	(%rax), %rax	# next_105->si_stack, D.13857
	movq	(%rax), %rax	# _454->sv_any, D.13858
	movq	(%rax), %rax	# _455->xav_array, PL_stack_base.252
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.252, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.253
	movq	-176(%rbp), %rax	# next, tmp592
	movq	(%rax), %rax	# next_105->si_stack, D.13857
	movq	(%rax), %rax	# _458->sv_any, D.13858
	movq	16(%rax), %rax	# _459->xav_max, D.13850
	salq	$3, %rax	#, D.13848
	addq	%rdx, %rax	# PL_stack_base.253, PL_stack_max.254
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.254, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.255
	movq	-176(%rbp), %rax	# next, tmp593
	movq	(%rax), %rax	# next_105->si_stack, D.13857
	movq	(%rax), %rax	# _465->sv_any, D.13858
	movq	8(%rax), %rax	# _466->xav_fill, D.13850
	salq	$3, %rax	#, D.13848
	addq	%rdx, %rax	# PL_stack_base.255, PL_stack_sp.256
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.256, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-176(%rbp), %rax	# next, tmp594
	movq	(%rax), %rax	# next_105->si_stack, PL_curstack.257
	movq	%rax, PL_curstack(%rip)	# PL_curstack.257, PL_curstack
.LBE47:
	movq	-176(%rbp), %rax	# next, tmp595
	movq	%rax, PL_curstackinfo(%rip)	# tmp595, PL_curstackinfo
.LBE46:
	.loc 1 1769 0 is_stmt 1 discriminator 2
	call	Perl_push_scope	#
	.loc 1 1770 0 discriminator 2
	call	Perl_save_op	#
	.loc 1 1771 0 discriminator 2
	leaq	-80(%rbp), %rax	#, tmp596
	movq	%rax, PL_op(%rip)	# tmp596, PL_op
	.loc 1 1772 0 discriminator 2
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.258
	testl	%eax, %eax	# PL_perldb.258
	je	.L567	#,
	.loc 1 1772 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.259
	andl	$1, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L567	#,
	movq	PL_curstash(%rip), %rdx	# PL_curstash, PL_curstash.260
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.261
	cmpq	%rax, %rdx	# PL_debstash.261, PL_curstash.260
	je	.L567	#,
	.loc 1 1773 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.262
	movq	PL_op(%rip), %rdx	# PL_op, PL_op.263
	movzbl	37(%rdx), %edx	# PL_op.263_480->op_private, D.13859
	orl	$16, %edx	#, D.13859
	movb	%dl, 37(%rax)	# D.13859, PL_op.262_479->op_private
.L567:
	.loc 1 1774 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1775 0
	call	Perl_pp_pushmark	#
	.loc 1 1777 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.264
	movq	%rax, %rdx	# PL_stack_max.264, PL_stack_max.265
	movq	%rbx, %rax	# sp, sp.266
	subq	%rax, %rdx	# sp.266, D.13850
	movq	%rdx, %rax	# D.13850, D.13850
	sarq	$3, %rax	#, tmp597
	movq	%rax, %rdx	# tmp597, D.13850
	movl	-240(%rbp), %eax	# notfound, tmp598
	addl	$5, %eax	#, D.13844
	cltq
	cmpq	%rax, %rdx	# D.13850, D.13850
	jge	.L568	#,
	.loc 1 1777 0 is_stmt 0 discriminator 1
	movl	-240(%rbp), %eax	# notfound, tmp599
	addl	$5, %eax	#, D.13844
	movl	%eax, %edx	# D.13844,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L568:
	.loc 1 1778 0 is_stmt 1
	addq	$8, %rbx	#, sp
	cmpl	$0, -248(%rbp)	#, lr
	jle	.L569	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# right, iftmp.267
	jmp	.L570	#
.L569:
	.loc 1 1778 0 discriminator 2
	movq	-280(%rbp), %rax	# left, iftmp.267
.L570:
	.loc 1 1778 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.267, *sp_492
	.loc 1 1779 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	cmpl	$0, -248(%rbp)	#, lr
	jle	.L571	#,
	.loc 1 1779 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# left, iftmp.268
	jmp	.L572	#
.L571:
	.loc 1 1779 0 discriminator 2
	movq	-288(%rbp), %rax	# right, iftmp.268
.L572:
	.loc 1 1779 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.268, *sp_495
	.loc 1 1780 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	cmpl	$0, -248(%rbp)	#, lr
	jg	.L573	#,
	.loc 1 1780 0 is_stmt 0 discriminator 1
	cmpl	$0, -244(%rbp)	#, assign
	je	.L574	#,
	movl	$PL_sv_undef, %eax	#, iftmp.270
	jmp	.L576	#
.L574:
	.loc 1 1780 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.270
	jmp	.L576	#
.L573:
	movl	$PL_sv_yes, %eax	#, iftmp.269
.L576:
	.loc 1 1780 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.269, *sp_498
	.loc 1 1781 0 is_stmt 1 discriminator 3
	cmpl	$0, -240(%rbp)	#, notfound
	je	.L577	#,
	.loc 1 1782 0
	addq	$8, %rbx	#, sp
	movl	-220(%rbp), %eax	# assignshift, tmp600
	movl	-292(%rbp), %edx	# method, tmp601
	addl	%edx, %eax	# tmp601, D.13844
	cltq
	movq	PL_AMG_names(,%rax,8), %rax	# PL_AMG_names, D.13856
	addq	$1, %rax	#, D.13856
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13856,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.13842,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13842, *sp_503
.L577:
	.loc 1 1784 0
	addq	$8, %rbx	#, sp
	movq	-216(%rbp), %rax	# cv, tmp603
	movq	%rax, (%rbx)	# tmp603, *sp_509
	.loc 1 1785 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1787 0
	call	Perl_pp_entersub	#
	movq	%rax, PL_op(%rip)	# PL_op.271, PL_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.272
	testq	%rax, %rax	# PL_op.272
	je	.L578	#,
	.loc 1 1788 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.273
	call	*%rax	# PL_runops.273
.L578:
	.loc 1 1789 0
	call	Perl_pop_scope	#
	.loc 1 1790 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1792 0
	movq	%rbx, %rax	# sp, sp.274
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.274_514, tmp604
	movq	%rax, -96(%rbp)	# tmp604, res
	.loc 1 1793 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
.LBB48:
	.loc 1 1794 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.275
	movq	32(%rax), %rax	# PL_curstackinfo.275_518->si_prev, tmp605
	movq	%rax, -88(%rbp)	# tmp605, prev
	cmpq	$0, -88(%rbp)	#, prev
	jne	.L579	#,
	.loc 1 1794 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.277
	testq	%rax, %rax	# PL_stderrgv.277
	je	.L580	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.278
	movl	12(%rax), %eax	# PL_stderrgv.278_521->sv_flags, D.13845
	movzbl	%al, %eax	# D.13845, D.13845
	cmpl	$13, %eax	#, D.13845
	jne	.L580	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.279
	movq	(%rax), %rax	# PL_stderrgv.279_524->sv_any, D.13860
	movq	56(%rax), %rax	# _525->xgv_gp, D.13861
	movq	16(%rax), %rax	# _526->gp_io, D.13862
	testq	%rax, %rax	# D.13862
	je	.L580	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.280
	movq	(%rax), %rax	# PL_stderrgv.280_528->sv_any, D.13860
	movq	56(%rax), %rax	# _529->xgv_gp, D.13861
	movq	16(%rax), %rax	# _530->gp_io, D.13862
	movq	(%rax), %rax	# _531->sv_any, D.13863
	movq	64(%rax), %rax	# _532->xio_ofp, D.13864
	testq	%rax, %rax	# D.13864
	je	.L580	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.281
	movq	(%rax), %rax	# PL_stderrgv.281_534->sv_any, D.13860
	movq	56(%rax), %rax	# _535->xgv_gp, D.13861
	movq	16(%rax), %rax	# _536->gp_io, D.13862
	movq	(%rax), %rax	# _537->sv_any, D.13863
	movq	64(%rax), %rax	# _538->xio_ofp, iftmp.276
	jmp	.L581	#
.L580:
	.loc 1 1794 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L581:
	.loc 1 1794 0 discriminator 3
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# iftmp.276,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L579:
.LBB49:
	.loc 1 1794 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.282
	movq	(%rax), %rax	# PL_curstack.282_541->sv_any, D.13858
	movq	%rbx, %rcx	# sp, sp.283
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.284
	subq	%rdx, %rcx	# PL_stack_base.285, D.13850
	movq	%rcx, %rdx	# D.13850, D.13850
	sarq	$3, %rdx	#, tmp606
	movq	%rdx, 8(%rax)	# D.13850, _542->xav_fill
	movq	-88(%rbp), %rax	# prev, tmp607
	movq	(%rax), %rax	# prev_519->si_stack, D.13857
	movq	(%rax), %rax	# _548->sv_any, D.13858
	movq	(%rax), %rax	# _549->xav_array, PL_stack_base.286
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.286, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.287
	movq	-88(%rbp), %rax	# prev, tmp608
	movq	(%rax), %rax	# prev_519->si_stack, D.13857
	movq	(%rax), %rax	# _552->sv_any, D.13858
	movq	16(%rax), %rax	# _553->xav_max, D.13850
	salq	$3, %rax	#, D.13848
	addq	%rdx, %rax	# PL_stack_base.287, PL_stack_max.288
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.288, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.289
	movq	-88(%rbp), %rax	# prev, tmp609
	movq	(%rax), %rax	# prev_519->si_stack, D.13857
	movq	(%rax), %rax	# _559->sv_any, D.13858
	movq	8(%rax), %rax	# _560->xav_fill, D.13850
	salq	$3, %rax	#, D.13848
	addq	%rdx, %rax	# PL_stack_base.289, PL_stack_sp.290
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.290, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-88(%rbp), %rax	# prev, tmp610
	movq	(%rax), %rax	# prev_519->si_stack, PL_curstack.291
	movq	%rax, PL_curstack(%rip)	# PL_curstack.291, PL_curstack
.LBE49:
	movq	-88(%rbp), %rax	# prev, tmp611
	movq	%rax, PL_curstackinfo(%rip)	# tmp611, PL_curstackinfo
.LBE48:
	.loc 1 1795 0 is_stmt 1 discriminator 2
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.292
	movzbl	-257(%rbp), %edx	# oldcatch, tmp612
	movb	%dl, 212(%rax)	# tmp612, PL_top_env.292_569->je_mustcatch
	.loc 1 1797 0 discriminator 2
	cmpl	$0, -236(%rbp)	#, postpr
	je	.L582	#,
.LBB50:
	.loc 1 1798 0
	movl	$0, -224(%rbp)	#, ans
	.loc 1 1799 0
	movl	-292(%rbp), %eax	# method, tmp614
	subl	$28, %eax	#, tmp613
	cmpl	$17, %eax	#, tmp613
	ja	.L583	#,
	movl	%eax, %eax	# tmp613, tmp615
	movq	.L585(,%rax,8), %rax	#, tmp616
	jmp	*%rax	# tmp616
	.section	.rodata
	.align 8
	.align 4
.L585:
	.quad	.L584
	.quad	.L586
	.quad	.L587
	.quad	.L588
	.quad	.L589
	.quad	.L590
	.quad	.L583
	.quad	.L583
	.quad	.L584
	.quad	.L586
	.quad	.L587
	.quad	.L588
	.quad	.L589
	.quad	.L590
	.quad	.L591
	.quad	.L583
	.quad	.L592
	.quad	.L592
	.text
.L586:
	.loc 1 1802 0
	movq	-96(%rbp), %rax	# res, tmp617
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L593	#,
	.loc 1 1802 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp618
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_573].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	setle	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.293
	jmp	.L594	#
.L593:
	.loc 1 1802 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp619
	movq	%rax, %rdi	# tmp619,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.13850
	setle	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.293
.L594:
	.loc 1 1802 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.293, ans
	jmp	.L583	#
.L584:
	.loc 1 1805 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, tmp620
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L595	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp621
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_583].xiv_iv, D.13850
	shrq	$63, %rax	#, tmp622
	movzbl	%al, %eax	# D.13843, iftmp.294
	jmp	.L596	#
.L595:
	.loc 1 1805 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp623
	movq	%rax, %rdi	# tmp623,
	call	Perl_sv_2iv	#
	shrq	$63, %rax	#, tmp624
	movzbl	%al, %eax	# D.13843, iftmp.294
.L596:
	.loc 1 1805 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.294, ans
	jmp	.L583	#
.L588:
	.loc 1 1808 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, tmp625
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L597	#,
	.loc 1 1808 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp626
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_593].xiv_iv, D.13850
	notq	%rax	# tmp627
	shrq	$63, %rax	#, tmp628
	movzbl	%al, %eax	# D.13843, iftmp.295
	jmp	.L598	#
.L597:
	.loc 1 1808 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp629
	movq	%rax, %rdi	# tmp629,
	call	Perl_sv_2iv	#
	notq	%rax	# tmp630
	shrq	$63, %rax	#, tmp631
	movzbl	%al, %eax	# D.13843, iftmp.295
.L598:
	.loc 1 1808 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.295, ans
	jmp	.L583	#
.L587:
	.loc 1 1811 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, tmp632
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L599	#,
	.loc 1 1811 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp633
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_603].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	setg	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.296
	jmp	.L600	#
.L599:
	.loc 1 1811 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp634
	movq	%rax, %rdi	# tmp634,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.13850
	setg	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.296
.L600:
	.loc 1 1811 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.296, ans
	jmp	.L583	#
.L589:
	.loc 1 1814 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, tmp635
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L601	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp636
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_613].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	sete	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.297
	jmp	.L602	#
.L601:
	.loc 1 1814 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp637
	movq	%rax, %rdi	# tmp637,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.13850
	sete	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.297
.L602:
	.loc 1 1814 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.297, ans
	jmp	.L583	#
.L590:
	.loc 1 1817 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, tmp638
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L603	#,
	.loc 1 1817 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp639
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_623].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	setne	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.298
	jmp	.L604	#
.L603:
	.loc 1 1817 0 discriminator 2
	movq	-96(%rbp), %rax	# res, tmp640
	movq	%rax, %rdi	# tmp640,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.13850
	setne	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.298
.L604:
	.loc 1 1817 0 discriminator 3
	movl	%eax, -224(%rbp)	# iftmp.298, ans
	jmp	.L583	#
.L592:
	.loc 1 1820 0 is_stmt 1
	movq	-280(%rbp), %rax	# left, tmp641
	cmpq	-96(%rbp), %rax	# res, tmp641
	je	.L605	#,
	.loc 1 1820 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rcx	# res, tmp642
	movq	-280(%rbp), %rax	# left, tmp643
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp642,
	movq	%rax, %rdi	# tmp643,
	call	Perl_sv_setsv_flags	#
.L605:
	.loc 1 1820 0 discriminator 2
	movq	-280(%rbp), %rax	# left, D.13842
	jmp	.L504	#
.L591:
	.loc 1 1822 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, res
	je	.L607	#,
	.loc 1 1822 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# res, tmp644
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$262144, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L608	#,
	.loc 1 1822 0 discriminator 3
	movq	-96(%rbp), %rax	# res, tmp645
	movq	(%rax), %rax	# res_516->sv_any, PL_Xpv.302
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.302, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.303
	testq	%rax, %rax	# PL_Xpv.303
	je	.L609	#,
	.loc 1 1822 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.304
	movq	8(%rax), %rax	# PL_Xpv.304_636->xpv_cur, D.13848
	cmpq	$1, %rax	#, D.13848
	ja	.L610	#,
	.loc 1 1822 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.305
	movq	8(%rax), %rax	# PL_Xpv.305_638->xpv_cur, D.13848
	testq	%rax, %rax	# D.13848
	je	.L609	#,
	.loc 1 1822 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.306
	movq	(%rax), %rax	# PL_Xpv.306_640->xpv_pv, D.13847
	movzbl	(%rax), %eax	# *_641, D.13852
	cmpb	$48, %al	#, D.13852
	jne	.L610	#,
.L609:
	.loc 1 1822 0 discriminator 5
	movl	$1, %eax	#, iftmp.301
	jmp	.L611	#
.L610:
	.loc 1 1822 0 discriminator 8
	movl	$0, %eax	#, iftmp.301
.L611:
	jmp	.L617	#
.L608:
	.loc 1 1822 0 discriminator 4
	movq	-96(%rbp), %rax	# res, tmp646
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$65536, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L613	#,
	.loc 1 1822 0 discriminator 10
	movq	-96(%rbp), %rax	# res, tmp647
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_648].xiv_iv, D.13850
	testq	%rax, %rax	# D.13850
	sete	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.307
	jmp	.L617	#
.L613:
	.loc 1 1822 0 discriminator 11
	movq	-96(%rbp), %rax	# res, tmp648
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$131072, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	je	.L615	#,
	.loc 1 1822 0 discriminator 12
	movq	-96(%rbp), %rax	# res, tmp649
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_654].xnv_nv, D.13853
	xorpd	%xmm1, %xmm1	# tmp651
	ucomisd	%xmm1, %xmm0	# tmp651, D.13853
	setnp	%dl	#, tmp650
	movl	$0, %eax	#, tmp653
	xorpd	%xmm1, %xmm1	# tmp652
	ucomisd	%xmm1, %xmm0	# tmp652, D.13853
	cmove	%edx, %eax	# tmp650,, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.308
	jmp	.L617	#
.L615:
	.loc 1 1822 0 discriminator 13
	movq	-96(%rbp), %rax	# res, tmp654
	movq	%rax, %rdi	# tmp654,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13852
	sete	%al	#, D.13843
	movzbl	%al, %eax	# D.13843, iftmp.308
	jmp	.L617	#
.L607:
	.loc 1 1822 0 discriminator 2
	movl	$1, %eax	#, iftmp.299
.L617:
	.loc 1 1822 0 discriminator 16
	movl	%eax, -224(%rbp)	# iftmp.299, ans
	nop
.L583:
	.loc 1 1824 0 is_stmt 1
	cmpl	$0, -224(%rbp)	#, ans
	je	.L618	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.309
	jmp	.L619	#
.L618:
	.loc 1 1824 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.309
.L619:
	.loc 1 1824 0 discriminator 3
	jmp	.L504	#
.L582:
.LBE50:
	.loc 1 1825 0 is_stmt 1
	cmpl	$56, -292(%rbp)	#, method
	jne	.L620	#,
	.loc 1 1826 0
	movq	-96(%rbp), %rax	# res, tmp655
	movl	12(%rax), %eax	# res_516->sv_flags, D.13845
	andl	$524288, %eax	#, D.13845
	testl	%eax, %eax	# D.13845
	jne	.L621	#,
	.loc 1 1827 0
	movl	$.LC84, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L621:
	.loc 1 1829 0
	movq	-96(%rbp), %rax	# res, tmp656
	movq	(%rax), %rax	# res_516->sv_any, D.13846
	movq	(%rax), %rax	# MEM[(struct XRV *)_671].xrv_rv, PL_Sv.310
	movq	%rax, PL_Sv(%rip)	# PL_Sv.310, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.312
	testq	%rax, %rax	# PL_Sv.312
	je	.L623	#,
	.loc 1 1829 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.313
	movl	8(%rax), %edx	# PL_Sv.313_674->sv_refcnt, D.13845
	addl	$1, %edx	#, D.13845
	movl	%edx, 8(%rax)	# D.13845, PL_Sv.313_674->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.313_674->sv_refcnt, D.13845
	testl	%eax, %eax	# D.13845
	je	.L623	#,
	.loc 1 1829 0
	nop
.L623:
	.loc 1 1829 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, D.13842
	jmp	.L504	#
.L620:
	.loc 1 1831 0 is_stmt 1
	movq	-96(%rbp), %rax	# res, D.13842
.L504:
.LBE45:
	.loc 1 1834 0
	addq	$296, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_amagic_call, .-Perl_amagic_call
	.globl	Perl_is_gv_magical
	.type	Perl_is_gv_magical, @function
Perl_is_gv_magical:
.LFB33:
	.loc 1 1855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movq	%rsi, -32(%rbp)	# len, len
	movl	%edx, -36(%rbp)	# flags, flags
	.loc 1 1856 0
	cmpq	$1, -32(%rbp)	#, len
	jbe	.L627	#,
.LBB51:
	.loc 1 1857 0
	movq	-24(%rbp), %rax	# name, tmp84
	addq	$1, %rax	#, tmp83
	movq	%rax, -8(%rbp)	# tmp83, name1
	.loc 1 1858 0
	movq	-24(%rbp), %rax	# name, tmp85
	movzbl	(%rax), %eax	# *name_4(D), D.13876
	movsbl	%al, %eax	# D.13876, D.13877
	subl	$15, %eax	#, tmp86
	cmpl	$68, %eax	#, tmp86
	ja	.L651	#,
	movl	%eax, %eax	# tmp86, tmp87
	movq	.L630(,%rax,8), %rax	#, tmp88
	jmp	*%rax	# tmp88
	.section	.rodata
	.align 8
	.align 4
.L630:
	.quad	.L629
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L631
	.quad	.L632
	.quad	.L651
	.quad	.L633
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L634
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L635
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L636
	.quad	.L651
	.quad	.L651
	.quad	.L651
	.quad	.L637
	.text
.L635:
	.loc 1 1860 0
	cmpq	$3, -32(%rbp)	#, len
	jne	.L638	#,
	.loc 1 1860 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name1, tmp89
	addq	$1, %rax	#, D.13878
	movzbl	(%rax), %eax	# *_8, D.13876
	cmpb	$83, %al	#, D.13876
	jne	.L638	#,
	movq	-24(%rbp), %rax	# name, tmp90
	addq	$2, %rax	#, D.13879
	movzbl	(%rax), %eax	# *_10, D.13876
	cmpb	$65, %al	#, D.13876
	jne	.L638	#,
	.loc 1 1861 0 is_stmt 1
	jmp	.L639	#
.L638:
	.loc 1 1862 0
	jmp	.L628	#
.L636:
	.loc 1 1864 0
	cmpq	$8, -32(%rbp)	#, len
	jne	.L640	#,
	.loc 1 1864 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name1, tmp91
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L640	#,
	.loc 1 1865 0 is_stmt 1
	jmp	.L639	#
.L640:
	.loc 1 1866 0
	jmp	.L628	#
.L637:
	.loc 1 1868 0
	cmpq	$3, -32(%rbp)	#, len
	jne	.L641	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# name, tmp92
	addq	$1, %rax	#, D.13879
	movzbl	(%rax), %eax	# *_13, D.13876
	cmpb	$73, %al	#, D.13876
	jne	.L641	#,
	movq	-24(%rbp), %rax	# name, tmp93
	addq	$2, %rax	#, D.13879
	movzbl	(%rax), %eax	# *_15, D.13876
	cmpb	$71, %al	#, D.13876
	jne	.L641	#,
	.loc 1 1869 0 is_stmt 1
	jmp	.L639	#
.L641:
	.loc 1 1870 0
	jmp	.L628	#
.L629:
	.loc 1 1875 0
	movq	-8(%rbp), %rax	# name1, tmp94
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L642	#,
	.loc 1 1876 0
	jmp	.L639	#
.L642:
	.loc 1 1877 0
	jmp	.L628	#
.L631:
	.loc 1 1879 0
	movq	-8(%rbp), %rax	# name1, tmp95
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L643	#,
	.loc 1 1880 0
	jmp	.L639	#
.L643:
	.loc 1 1881 0
	jmp	.L628	#
.L632:
	.loc 1 1883 0
	movq	-8(%rbp), %rax	# name1, tmp96
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L644	#,
	.loc 1 1884 0
	jmp	.L639	#
.L644:
	.loc 1 1885 0
	movq	-8(%rbp), %rax	# name1, tmp97
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L645	#,
	.loc 1 1886 0
	jmp	.L639	#
.L645:
	.loc 1 1887 0
	jmp	.L628	#
.L633:
	.loc 1 1889 0
	movq	-8(%rbp), %rax	# name1, tmp98
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	strcmp	#
	testl	%eax, %eax	# D.13877
	jne	.L646	#,
	.loc 1 1890 0
	jmp	.L639	#
.L646:
	.loc 1 1891 0
	jmp	.L628	#
.L634:
.LBB52:
	.loc 1 1902 0
	movq	-32(%rbp), %rax	# len, tmp103
	movq	-24(%rbp), %rdx	# name, tmp104
	addq	%rdx, %rax	# tmp104, tmp102
	movq	%rax, -16(%rbp)	# tmp102, end
	.loc 1 1903 0
	jmp	.L647	#
.L650:
	.loc 1 1904 0
	movq	-16(%rbp), %rax	# end, tmp105
	movzbl	(%rax), %eax	# *end_23, D.13876
	cmpb	$47, %al	#, D.13876
	jle	.L648	#,
	.loc 1 1904 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# end, tmp106
	movzbl	(%rax), %eax	# *end_23, D.13876
	cmpb	$57, %al	#, D.13876
	jle	.L647	#,
.L648:
	.loc 1 1905 0 is_stmt 1
	movl	$0, %eax	#, D.13876
	jmp	.L649	#
.L647:
	.loc 1 1903 0 discriminator 1
	subq	$1, -16(%rbp)	#, end
	movq	-16(%rbp), %rax	# end, tmp107
	cmpq	-24(%rbp), %rax	# name, tmp107
	ja	.L650	#,
	.loc 1 1907 0
	jmp	.L639	#
.L628:
.LBE52:
.LBE51:
	jmp	.L651	#
.L627:
	.loc 1 1913 0
	movq	-24(%rbp), %rax	# name, tmp108
	movzbl	(%rax), %eax	# *name_4(D), D.13876
	movsbl	%al, %eax	# D.13876, D.13877
	cmpl	$126, %eax	#, D.13877
	ja	.L654	#,
	movl	%eax, %eax	# D.13877, tmp109
	movq	.L653(,%rax,8), %rax	#, tmp110
	jmp	*%rax	# tmp110
	.section	.rodata
	.align 8
	.align 4
.L653:
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L654
	.quad	.L639
	.quad	.L654
	.quad	.L639
	.text
.L639:
	.loc 1 1965 0
	movl	$1, %eax	#, D.13876
	jmp	.L649	#
.L654:
	.loc 1 1967 0
	nop
.L651:
	.loc 1 1970 0
	movl	$0, %eax	#, D.13876
.L649:
	.loc 1 1971 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_is_gv_magical, .-Perl_is_gv_magical
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 7 "/usr/include/setjmp.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "perl.h"
	.file 10 "op.h"
	.file 11 "cop.h"
	.file 12 "sv.h"
	.file 13 "regexp.h"
	.file 14 "gv.h"
	.file 15 "mg.h"
	.file 16 "av.h"
	.file 17 "hv.h"
	.file 18 "cv.h"
	.file 19 "handy.h"
	.file 20 "perlio.h"
	.file 21 "pad.h"
	.file 22 "scope.h"
	.file 23 "intrpvar.h"
	.file 24 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2ed8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF525
	.byte	0x1
	.long	.LASF526
	.long	.LASF527
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
	.uleb128 0x7
	.byte	0x80
	.byte	0x5
	.byte	0x1c
	.long	0xb1
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0x1e
	.long	0xb1
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x42
	.long	0xc1
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0x1f
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x6
	.byte	0x8
	.long	0xe0
	.uleb128 0xb
	.long	0x7f
	.uleb128 0x5
	.long	.LASF15
	.byte	0x6
	.byte	0x1f
	.long	0xf0
	.uleb128 0x9
	.long	0x5e
	.long	0x100
	.uleb128 0xa
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0xc8
	.byte	0x7
	.byte	0x22
	.long	0x131
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.byte	0x28
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.byte	0x29
	.long	0x57
	.byte	0x40
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.byte	0x2a
	.long	0xc1
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.long	0x100
	.long	0x141
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x7
	.byte	0x63
	.long	0x131
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x9
	.long	0x7f
	.long	0x162
	.uleb128 0xa
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.string	"DIR"
	.byte	0x8
	.byte	0x80
	.long	0x16d
	.uleb128 0xe
	.long	.LASF209
	.uleb128 0xf
	.string	"IV"
	.byte	0x9
	.value	0x52b
	.long	0x5e
	.uleb128 0xf
	.string	"UV"
	.byte	0x9
	.value	0x52c
	.long	0x42
	.uleb128 0xf
	.string	"NV"
	.byte	0x9
	.value	0x5f3
	.long	0x193
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF21
	.uleb128 0x10
	.long	.LASF22
	.byte	0x9
	.value	0x7d3
	.long	0x91
	.uleb128 0xf
	.string	"OP"
	.byte	0x9
	.value	0x7d5
	.long	0x1b1
	.uleb128 0x11
	.string	"op"
	.byte	0x28
	.byte	0xa
	.byte	0xe2
	.long	0x21d
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xe3
	.long	0x1112
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xe3
	.long	0x1112
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xe3
	.long	0x11a1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xe3
	.long	0x118b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xe3
	.long	0xf84
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xe3
	.long	0xf84
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xe3
	.long	0xf7a
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xe3
	.long	0xf7a
	.byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"COP"
	.byte	0x9
	.value	0x7d6
	.long	0x229
	.uleb128 0x11
	.string	"cop"
	.byte	0x60
	.byte	0xb
	.byte	0x10
	.long	0x2f6
	.uleb128 0x8
	.long	.LASF24
	.byte	0xb
	.byte	0x11
	.long	0x1112
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xb
	.byte	0x11
	.long	0x1112
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xb
	.byte	0x11
	.long	0x11a1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xb
	.byte	0x11
	.long	0x118b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xb
	.byte	0x11
	.long	0xf84
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xb
	.byte	0x11
	.long	0xf84
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xb
	.byte	0x11
	.long	0xf7a
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xb
	.byte	0x11
	.long	0xf7a
	.byte	0x25
	.uleb128 0x8
	.long	.LASF32
	.byte	0xb
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0x8
	.long	.LASF33
	.byte	0xb
	.byte	0x17
	.long	0x10fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF34
	.byte	0xb
	.byte	0x18
	.long	0x112f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF35
	.byte	0xb
	.byte	0x1a
	.long	0xf9a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF36
	.byte	0xb
	.byte	0x1b
	.long	0xf8f
	.byte	0x44
	.uleb128 0x8
	.long	.LASF37
	.byte	0xb
	.byte	0x1c
	.long	0xfa5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF38
	.byte	0xb
	.byte	0x1d
	.long	0xfc2
	.byte	0x50
	.uleb128 0x8
	.long	.LASF39
	.byte	0xb
	.byte	0x1e
	.long	0xfc2
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0x9
	.value	0x7d8
	.long	0x302
	.uleb128 0xc
	.long	.LASF41
	.byte	0x38
	.byte	0xa
	.byte	0xeb
	.long	0x387
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xec
	.long	0x1112
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xec
	.long	0x1112
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xec
	.long	0x11a1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xec
	.long	0x118b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xec
	.long	0xf84
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xec
	.long	0xf84
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xec
	.long	0xf7a
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xec
	.long	0xf7a
	.byte	0x25
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.byte	0xed
	.long	0x1112
	.byte	0x28
	.uleb128 0x8
	.long	.LASF43
	.byte	0xa
	.byte	0xee
	.long	0x1112
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF44
	.byte	0x9
	.value	0x7db
	.long	0x393
	.uleb128 0xc
	.long	.LASF45
	.byte	0x70
	.byte	0xa
	.byte	0xfd
	.long	0x481
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xfe
	.long	0x1112
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xfe
	.long	0x1112
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xfe
	.long	0x11a1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xfe
	.long	0x118b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xfe
	.long	0xf84
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xfe
	.long	0xf84
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xfe
	.long	0xf7a
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xfe
	.long	0xf7a
	.byte	0x25
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.byte	0xff
	.long	0x1112
	.byte	0x28
	.uleb128 0x12
	.long	.LASF43
	.byte	0xa
	.value	0x100
	.long	0x1112
	.byte	0x30
	.uleb128 0x12
	.long	.LASF46
	.byte	0xa
	.value	0x101
	.long	0x1112
	.byte	0x38
	.uleb128 0x12
	.long	.LASF47
	.byte	0xa
	.value	0x102
	.long	0x1112
	.byte	0x40
	.uleb128 0x12
	.long	.LASF48
	.byte	0xa
	.value	0x103
	.long	0x11a7
	.byte	0x48
	.uleb128 0x12
	.long	.LASF49
	.byte	0xa
	.value	0x107
	.long	0x11ad
	.byte	0x50
	.uleb128 0x12
	.long	.LASF50
	.byte	0xa
	.value	0x109
	.long	0xf9a
	.byte	0x58
	.uleb128 0x12
	.long	.LASF51
	.byte	0xa
	.value	0x10a
	.long	0xf9a
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF52
	.byte	0xa
	.value	0x10b
	.long	0xf7a
	.byte	0x60
	.uleb128 0x12
	.long	.LASF53
	.byte	0xa
	.value	0x10f
	.long	0x10fa
	.byte	0x68
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x9
	.value	0x7e1
	.long	0x48d
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x9
	.value	0xea7
	.long	0x4a8
	.uleb128 0x12
	.long	.LASF56
	.byte	0x9
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"SV"
	.byte	0x9
	.value	0x7ea
	.long	0x4b3
	.uleb128 0x11
	.string	"sv"
	.byte	0x10
	.byte	0xc
	.byte	0x43
	.long	0x4e3
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x45
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x46
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"AV"
	.byte	0x9
	.value	0x7eb
	.long	0x4ee
	.uleb128 0x11
	.string	"av"
	.byte	0x10
	.byte	0xc
	.byte	0x55
	.long	0x51e
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x56
	.long	0x10e2
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x57
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x58
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"HV"
	.byte	0x9
	.value	0x7ec
	.long	0x529
	.uleb128 0x11
	.string	"hv"
	.byte	0x10
	.byte	0xc
	.byte	0x5b
	.long	0x559
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x5c
	.long	0x10e8
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x5d
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x5e
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"CV"
	.byte	0x9
	.value	0x7ed
	.long	0x564
	.uleb128 0x11
	.string	"cv"
	.byte	0x10
	.byte	0xc
	.byte	0x4f
	.long	0x594
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x50
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x51
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x52
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x9
	.value	0x7ee
	.long	0x5a0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x68
	.byte	0xd
	.byte	0x1f
	.long	0x679
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x20
	.long	0x1035
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0xd
	.byte	0x21
	.long	0x1035
	.byte	0x8
	.uleb128 0x8
	.long	.LASF64
	.byte	0xd
	.byte	0x22
	.long	0x103b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF65
	.byte	0xd
	.byte	0x23
	.long	0x1046
	.byte	0x18
	.uleb128 0x8
	.long	.LASF66
	.byte	0xd
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0x8
	.long	.LASF67
	.byte	0xd
	.byte	0x25
	.long	0x1051
	.byte	0x28
	.uleb128 0x8
	.long	.LASF68
	.byte	0xd
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0x8
	.long	.LASF69
	.byte	0xd
	.byte	0x28
	.long	0x1057
	.byte	0x38
	.uleb128 0x8
	.long	.LASF70
	.byte	0xd
	.byte	0x29
	.long	0xf8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF71
	.byte	0xd
	.byte	0x2a
	.long	0xf8f
	.byte	0x44
	.uleb128 0x8
	.long	.LASF72
	.byte	0xd
	.byte	0x2b
	.long	0xf8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF73
	.byte	0xd
	.byte	0x2c
	.long	0xf8f
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF74
	.byte	0xd
	.byte	0x2d
	.long	0xf9a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF75
	.byte	0xd
	.byte	0x2e
	.long	0xf9a
	.byte	0x54
	.uleb128 0x8
	.long	.LASF76
	.byte	0xd
	.byte	0x2f
	.long	0xf9a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF77
	.byte	0xd
	.byte	0x30
	.long	0xf9a
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF78
	.byte	0xd
	.byte	0x32
	.long	0x105d
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.string	"GP"
	.byte	0x9
	.value	0x7ef
	.long	0x684
	.uleb128 0x11
	.string	"gp"
	.byte	0x58
	.byte	0xe
	.byte	0xb
	.long	0x720
	.uleb128 0x8
	.long	.LASF79
	.byte	0xe
	.byte	0xc
	.long	0xfc2
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xe
	.byte	0xd
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF81
	.byte	0xe
	.byte	0xe
	.long	0x116f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF82
	.byte	0xe
	.byte	0xf
	.long	0x1123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF83
	.byte	0xe
	.byte	0x10
	.long	0x1135
	.byte	0x20
	.uleb128 0x8
	.long	.LASF84
	.byte	0xe
	.byte	0x11
	.long	0x10fa
	.byte	0x28
	.uleb128 0x8
	.long	.LASF85
	.byte	0xe
	.byte	0x12
	.long	0x112f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF86
	.byte	0xe
	.byte	0x13
	.long	0x1123
	.byte	0x38
	.uleb128 0x8
	.long	.LASF87
	.byte	0xe
	.byte	0x14
	.long	0xf9a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0x15
	.long	0xf9a
	.byte	0x44
	.uleb128 0x8
	.long	.LASF89
	.byte	0xe
	.byte	0x16
	.long	0xfa5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF90
	.byte	0xe
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.string	"GV"
	.byte	0x9
	.value	0x7f0
	.long	0x72b
	.uleb128 0x11
	.string	"gv"
	.byte	0x10
	.byte	0xc
	.byte	0x49
	.long	0x75b
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x4a
	.long	0x10d6
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x4b
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x4c
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"IO"
	.byte	0x9
	.value	0x7f1
	.long	0x766
	.uleb128 0x11
	.string	"io"
	.byte	0x10
	.byte	0xc
	.byte	0x61
	.long	0x796
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x62
	.long	0x10ee
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0x63
	.long	0xf9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x64
	.long	0xf9a
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x9
	.value	0x7f2
	.long	0x7a2
	.uleb128 0x13
	.long	.LASF92
	.byte	0x90
	.byte	0xb
	.value	0x1a2
	.long	0x7ca
	.uleb128 0x12
	.long	.LASF93
	.byte	0xb
	.value	0x1a3
	.long	0xf9a
	.byte	0
	.uleb128 0x12
	.long	.LASF94
	.byte	0xb
	.value	0x1a7
	.long	0x1414
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF95
	.byte	0x88
	.byte	0xb
	.value	0x130
	.long	0x840
	.uleb128 0x12
	.long	.LASF96
	.byte	0xb
	.value	0x131
	.long	0xf8f
	.byte	0
	.uleb128 0x12
	.long	.LASF97
	.byte	0xb
	.value	0x132
	.long	0x134a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF98
	.byte	0xb
	.value	0x133
	.long	0xf8f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF99
	.byte	0xb
	.value	0x134
	.long	0xf8f
	.byte	0x14
	.uleb128 0x12
	.long	.LASF100
	.byte	0xb
	.value	0x135
	.long	0xf8f
	.byte	0x18
	.uleb128 0x12
	.long	.LASF101
	.byte	0xb
	.value	0x136
	.long	0x11a7
	.byte	0x20
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x137
	.long	0xf7a
	.byte	0x28
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x13d
	.long	0x131c
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF104
	.byte	0x9
	.value	0x7f5
	.long	0x84c
	.uleb128 0xc
	.long	.LASF105
	.byte	0x30
	.byte	0xf
	.byte	0x1a
	.long	0x8b9
	.uleb128 0x8
	.long	.LASF106
	.byte	0xf
	.byte	0x1b
	.long	0x10f4
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0xf
	.byte	0x1c
	.long	0x15c3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF108
	.byte	0xf
	.byte	0x1d
	.long	0xf84
	.byte	0x10
	.uleb128 0x8
	.long	.LASF109
	.byte	0xf
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0x8
	.long	.LASF110
	.byte	0xf
	.byte	0x1f
	.long	0xf7a
	.byte	0x13
	.uleb128 0x8
	.long	.LASF111
	.byte	0xf
	.byte	0x20
	.long	0xfc2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF112
	.byte	0xf
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0xf
	.byte	0x22
	.long	0xf8f
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.string	"XRV"
	.byte	0x9
	.value	0x7f6
	.long	0x8c5
	.uleb128 0x11
	.string	"xrv"
	.byte	0x8
	.byte	0xc
	.byte	0xf5
	.long	0x8de
	.uleb128 0x8
	.long	.LASF114
	.byte	0xc
	.byte	0xf6
	.long	0xfc2
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"XPV"
	.byte	0x9
	.value	0x7f7
	.long	0x8ea
	.uleb128 0x11
	.string	"xpv"
	.byte	0x18
	.byte	0xc
	.byte	0xf9
	.long	0x91b
	.uleb128 0x8
	.long	.LASF115
	.byte	0xc
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF116
	.byte	0xc
	.byte	0xfb
	.long	0x19a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF117
	.byte	0xc
	.byte	0xfc
	.long	0x19a
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.value	0x7f8
	.long	0x927
	.uleb128 0xc
	.long	.LASF119
	.byte	0x20
	.byte	0xc
	.byte	0xff
	.long	0x968
	.uleb128 0x12
	.long	.LASF115
	.byte	0xc
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x101
	.long	0x19a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x102
	.long	0x19a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xc
	.value	0x103
	.long	0x172
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF121
	.byte	0x9
	.value	0x7fa
	.long	0x974
	.uleb128 0x13
	.long	.LASF122
	.byte	0x28
	.byte	0xc
	.value	0x10d
	.long	0x9c3
	.uleb128 0x12
	.long	.LASF115
	.byte	0xc
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x10f
	.long	0x19a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x110
	.long	0x19a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xc
	.value	0x111
	.long	0x172
	.byte	0x18
	.uleb128 0x12
	.long	.LASF123
	.byte	0xc
	.value	0x112
	.long	0x188
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF124
	.byte	0x9
	.value	0x7fb
	.long	0x9cf
	.uleb128 0x13
	.long	.LASF125
	.byte	0x38
	.byte	0xc
	.value	0x116
	.long	0xa38
	.uleb128 0x12
	.long	.LASF115
	.byte	0xc
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x118
	.long	0x19a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x119
	.long	0x19a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xc
	.value	0x11a
	.long	0x172
	.byte	0x18
	.uleb128 0x12
	.long	.LASF123
	.byte	0xc
	.value	0x11b
	.long	0x188
	.byte	0x20
	.uleb128 0x12
	.long	.LASF126
	.byte	0xc
	.value	0x11c
	.long	0x10f4
	.byte	0x28
	.uleb128 0x12
	.long	.LASF127
	.byte	0xc
	.value	0x11d
	.long	0x10fa
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF128
	.byte	0x9
	.value	0x7fd
	.long	0xa44
	.uleb128 0xc
	.long	.LASF129
	.byte	0x50
	.byte	0x10
	.byte	0xb
	.long	0xac9
	.uleb128 0x8
	.long	.LASF130
	.byte	0x10
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0x10
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF132
	.byte	0x10
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0x8
	.long	.LASF133
	.byte	0x10
	.byte	0xf
	.long	0x172
	.byte	0x18
	.uleb128 0x8
	.long	.LASF123
	.byte	0x10
	.byte	0x10
	.long	0x188
	.byte	0x20
	.uleb128 0x8
	.long	.LASF126
	.byte	0x10
	.byte	0x11
	.long	0x10f4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF127
	.byte	0x10
	.byte	0x12
	.long	0x10fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF134
	.byte	0x10
	.byte	0x14
	.long	0x1316
	.byte	0x38
	.uleb128 0x8
	.long	.LASF135
	.byte	0x10
	.byte	0x15
	.long	0xfc2
	.byte	0x40
	.uleb128 0x8
	.long	.LASF136
	.byte	0x10
	.byte	0x16
	.long	0xf7a
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.long	.LASF137
	.byte	0x9
	.value	0x7fe
	.long	0xad5
	.uleb128 0xc
	.long	.LASF138
	.byte	0x58
	.byte	0x11
	.byte	0x22
	.long	0xb66
	.uleb128 0x8
	.long	.LASF139
	.byte	0x11
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF140
	.byte	0x11
	.byte	0x24
	.long	0x19a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF141
	.byte	0x11
	.byte	0x25
	.long	0x19a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x26
	.long	0x172
	.byte	0x18
	.uleb128 0x8
	.long	.LASF123
	.byte	0x11
	.byte	0x27
	.long	0x188
	.byte	0x20
	.uleb128 0x8
	.long	.LASF126
	.byte	0x11
	.byte	0x29
	.long	0x10f4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF127
	.byte	0x11
	.byte	0x2a
	.long	0x10fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF143
	.byte	0x11
	.byte	0x2c
	.long	0xf8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF144
	.byte	0x11
	.byte	0x2d
	.long	0x153a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF145
	.byte	0x11
	.byte	0x2e
	.long	0x11a7
	.byte	0x48
	.uleb128 0x8
	.long	.LASF146
	.byte	0x11
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF147
	.byte	0x9
	.value	0x7ff
	.long	0xb72
	.uleb128 0x13
	.long	.LASF148
	.byte	0x60
	.byte	0xc
	.value	0x130
	.long	0xc1c
	.uleb128 0x12
	.long	.LASF115
	.byte	0xc
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x132
	.long	0x19a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x133
	.long	0x19a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xc
	.value	0x134
	.long	0x172
	.byte	0x18
	.uleb128 0x12
	.long	.LASF123
	.byte	0xc
	.value	0x135
	.long	0x188
	.byte	0x20
	.uleb128 0x12
	.long	.LASF126
	.byte	0xc
	.value	0x136
	.long	0x10f4
	.byte	0x28
	.uleb128 0x12
	.long	.LASF127
	.byte	0xc
	.value	0x137
	.long	0x10fa
	.byte	0x30
	.uleb128 0x12
	.long	.LASF149
	.byte	0xc
	.value	0x139
	.long	0x1100
	.byte	0x38
	.uleb128 0x12
	.long	.LASF150
	.byte	0xc
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x12
	.long	.LASF151
	.byte	0xc
	.value	0x13b
	.long	0x19a
	.byte	0x48
	.uleb128 0x12
	.long	.LASF152
	.byte	0xc
	.value	0x13c
	.long	0x10fa
	.byte	0x50
	.uleb128 0x12
	.long	.LASF153
	.byte	0xc
	.value	0x13d
	.long	0xf7a
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF154
	.byte	0x9
	.value	0x800
	.long	0xc28
	.uleb128 0xc
	.long	.LASF155
	.byte	0x90
	.byte	0x12
	.byte	0xe
	.long	0xd19
	.uleb128 0x8
	.long	.LASF115
	.byte	0x12
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF116
	.byte	0x12
	.byte	0x10
	.long	0x19a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF117
	.byte	0x12
	.byte	0x11
	.long	0x19a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF133
	.byte	0x12
	.byte	0x12
	.long	0x172
	.byte	0x18
	.uleb128 0x8
	.long	.LASF123
	.byte	0x12
	.byte	0x13
	.long	0x188
	.byte	0x20
	.uleb128 0x8
	.long	.LASF126
	.byte	0x12
	.byte	0x14
	.long	0x10f4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF127
	.byte	0x12
	.byte	0x15
	.long	0x10fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF156
	.byte	0x12
	.byte	0x17
	.long	0x10fa
	.byte	0x38
	.uleb128 0x8
	.long	.LASF157
	.byte	0x12
	.byte	0x18
	.long	0x1112
	.byte	0x40
	.uleb128 0x8
	.long	.LASF158
	.byte	0x12
	.byte	0x19
	.long	0x1112
	.byte	0x48
	.uleb128 0x8
	.long	.LASF159
	.byte	0x12
	.byte	0x1a
	.long	0x1129
	.byte	0x50
	.uleb128 0x8
	.long	.LASF160
	.byte	0x12
	.byte	0x1b
	.long	0xecb
	.byte	0x58
	.uleb128 0x8
	.long	.LASF161
	.byte	0x12
	.byte	0x1c
	.long	0x112f
	.byte	0x60
	.uleb128 0x8
	.long	.LASF162
	.byte	0x12
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0x8
	.long	.LASF163
	.byte	0x12
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF164
	.byte	0x12
	.byte	0x1f
	.long	0x1196
	.byte	0x78
	.uleb128 0x8
	.long	.LASF165
	.byte	0x12
	.byte	0x20
	.long	0x1123
	.byte	0x80
	.uleb128 0x8
	.long	.LASF166
	.byte	0x12
	.byte	0x25
	.long	0x1106
	.byte	0x88
	.uleb128 0x8
	.long	.LASF167
	.byte	0x12
	.byte	0x26
	.long	0xf9a
	.byte	0x8c
	.byte	0
	.uleb128 0x10
	.long	.LASF168
	.byte	0x9
	.value	0x803
	.long	0xd25
	.uleb128 0x13
	.long	.LASF169
	.byte	0xa8
	.byte	0xc
	.value	0x170
	.long	0xe5e
	.uleb128 0x12
	.long	.LASF115
	.byte	0xc
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x172
	.long	0x19a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x173
	.long	0x19a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xc
	.value	0x174
	.long	0x172
	.byte	0x18
	.uleb128 0x12
	.long	.LASF123
	.byte	0xc
	.value	0x175
	.long	0x188
	.byte	0x20
	.uleb128 0x12
	.long	.LASF126
	.byte	0xc
	.value	0x176
	.long	0x10f4
	.byte	0x28
	.uleb128 0x12
	.long	.LASF127
	.byte	0xc
	.value	0x177
	.long	0x10fa
	.byte	0x30
	.uleb128 0x12
	.long	.LASF170
	.byte	0xc
	.value	0x179
	.long	0x1163
	.byte	0x38
	.uleb128 0x12
	.long	.LASF171
	.byte	0xc
	.value	0x17a
	.long	0x1163
	.byte	0x40
	.uleb128 0x12
	.long	.LASF172
	.byte	0xc
	.value	0x187
	.long	0x113b
	.byte	0x48
	.uleb128 0x12
	.long	.LASF173
	.byte	0xc
	.value	0x188
	.long	0x172
	.byte	0x50
	.uleb128 0x12
	.long	.LASF174
	.byte	0xc
	.value	0x189
	.long	0x172
	.byte	0x58
	.uleb128 0x12
	.long	.LASF175
	.byte	0xc
	.value	0x18a
	.long	0x172
	.byte	0x60
	.uleb128 0x12
	.long	.LASF176
	.byte	0xc
	.value	0x18b
	.long	0x172
	.byte	0x68
	.uleb128 0x12
	.long	.LASF177
	.byte	0xc
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x12
	.long	.LASF178
	.byte	0xc
	.value	0x18d
	.long	0x112f
	.byte	0x78
	.uleb128 0x12
	.long	.LASF179
	.byte	0xc
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x12
	.long	.LASF180
	.byte	0xc
	.value	0x18f
	.long	0x112f
	.byte	0x88
	.uleb128 0x12
	.long	.LASF181
	.byte	0xc
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x12
	.long	.LASF182
	.byte	0xc
	.value	0x191
	.long	0x112f
	.byte	0x98
	.uleb128 0x12
	.long	.LASF183
	.byte	0xc
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF184
	.byte	0xc
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x12
	.long	.LASF185
	.byte	0xc
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0x10
	.long	.LASF186
	.byte	0x9
	.value	0x804
	.long	0xe6a
	.uleb128 0xc
	.long	.LASF187
	.byte	0x38
	.byte	0xf
	.byte	0xe
	.long	0xecb
	.uleb128 0x8
	.long	.LASF188
	.byte	0xf
	.byte	0xf
	.long	0x155a
	.byte	0
	.uleb128 0x8
	.long	.LASF189
	.byte	0xf
	.byte	0x10
	.long	0x155a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF190
	.byte	0xf
	.byte	0x11
	.long	0x1574
	.byte	0x10
	.uleb128 0x8
	.long	.LASF191
	.byte	0xf
	.byte	0x12
	.long	0x155a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF192
	.byte	0xf
	.byte	0x13
	.long	0x155a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF193
	.byte	0xf
	.byte	0x14
	.long	0x159d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF194
	.byte	0xf
	.byte	0x16
	.long	0x15bd
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.string	"ANY"
	.byte	0x9
	.value	0x805
	.long	0xed7
	.uleb128 0x14
	.string	"any"
	.byte	0x8
	.byte	0x9
	.value	0x9f1
	.long	0xf39
	.uleb128 0x15
	.long	.LASF195
	.byte	0x9
	.value	0x9f2
	.long	0x6c
	.uleb128 0x15
	.long	.LASF196
	.byte	0x9
	.value	0x9f3
	.long	0xf8f
	.uleb128 0x15
	.long	.LASF197
	.byte	0x9
	.value	0x9f4
	.long	0x172
	.uleb128 0x15
	.long	.LASF198
	.byte	0x9
	.value	0x9f5
	.long	0x5e
	.uleb128 0x15
	.long	.LASF199
	.byte	0x9
	.value	0x9f6
	.long	0x7f
	.uleb128 0x15
	.long	.LASF200
	.byte	0x9
	.value	0x9f7
	.long	0xfbc
	.uleb128 0x15
	.long	.LASF201
	.byte	0x9
	.value	0x9f8
	.long	0xfbc
	.byte	0
	.uleb128 0x10
	.long	.LASF202
	.byte	0x9
	.value	0x808
	.long	0xf45
	.uleb128 0x13
	.long	.LASF203
	.byte	0x18
	.byte	0xc
	.value	0x4ed
	.long	0xf7a
	.uleb128 0x12
	.long	.LASF204
	.byte	0xc
	.value	0x4ee
	.long	0x1135
	.byte	0
	.uleb128 0x12
	.long	.LASF205
	.byte	0xc
	.value	0x4ef
	.long	0x17d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF206
	.byte	0xc
	.value	0x4f0
	.long	0x1169
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"U8"
	.byte	0x13
	.byte	0x85
	.long	0x2d
	.uleb128 0xd
	.string	"U16"
	.byte	0x13
	.byte	0x87
	.long	0x34
	.uleb128 0xd
	.string	"I32"
	.byte	0x13
	.byte	0x88
	.long	0x57
	.uleb128 0xd
	.string	"U32"
	.byte	0x13
	.byte	0x89
	.long	0x3b
	.uleb128 0x10
	.long	.LASF207
	.byte	0x13
	.value	0x209
	.long	0xf9a
	.uleb128 0x16
	.long	0xfbc
	.uleb128 0x17
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfb1
	.uleb128 0x6
	.byte	0x8
	.long	0x4a8
	.uleb128 0x9
	.long	0x7f
	.long	0xfd8
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF208
	.byte	0x14
	.byte	0x63
	.long	0xfe3
	.uleb128 0xe
	.long	.LASF210
	.uleb128 0x5
	.long	.LASF211
	.byte	0x14
	.byte	0x65
	.long	0xff3
	.uleb128 0x6
	.byte	0x8
	.long	0xfd8
	.uleb128 0xc
	.long	.LASF212
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.long	0x102a
	.uleb128 0x8
	.long	.LASF205
	.byte	0xd
	.byte	0x14
	.long	0xf7a
	.byte	0
	.uleb128 0x8
	.long	.LASF213
	.byte	0xd
	.byte	0x15
	.long	0xf7a
	.byte	0x1
	.uleb128 0x8
	.long	.LASF214
	.byte	0xd
	.byte	0x16
	.long	0xf84
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF212
	.byte	0xd
	.byte	0x19
	.long	0xff9
	.uleb128 0x6
	.byte	0x8
	.long	0xf8f
	.uleb128 0x6
	.byte	0x8
	.long	0x102a
	.uleb128 0xe
	.long	.LASF215
	.uleb128 0x6
	.byte	0x8
	.long	0x1041
	.uleb128 0xe
	.long	.LASF216
	.uleb128 0x6
	.byte	0x8
	.long	0x104c
	.uleb128 0x6
	.byte	0x8
	.long	0xf9a
	.uleb128 0x9
	.long	0x102a
	.long	0x106d
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x10d6
	.uleb128 0x19
	.long	.LASF217
	.sleb128 0
	.uleb128 0x19
	.long	.LASF218
	.sleb128 1
	.uleb128 0x19
	.long	.LASF219
	.sleb128 2
	.uleb128 0x19
	.long	.LASF220
	.sleb128 3
	.uleb128 0x19
	.long	.LASF221
	.sleb128 4
	.uleb128 0x19
	.long	.LASF222
	.sleb128 5
	.uleb128 0x19
	.long	.LASF223
	.sleb128 6
	.uleb128 0x19
	.long	.LASF224
	.sleb128 7
	.uleb128 0x19
	.long	.LASF225
	.sleb128 8
	.uleb128 0x19
	.long	.LASF226
	.sleb128 9
	.uleb128 0x19
	.long	.LASF227
	.sleb128 10
	.uleb128 0x19
	.long	.LASF228
	.sleb128 11
	.uleb128 0x19
	.long	.LASF229
	.sleb128 12
	.uleb128 0x19
	.long	.LASF230
	.sleb128 13
	.uleb128 0x19
	.long	.LASF231
	.sleb128 14
	.uleb128 0x19
	.long	.LASF232
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb66
	.uleb128 0x6
	.byte	0x8
	.long	0xc1c
	.uleb128 0x6
	.byte	0x8
	.long	0xa38
	.uleb128 0x6
	.byte	0x8
	.long	0xac9
	.uleb128 0x6
	.byte	0x8
	.long	0xd19
	.uleb128 0x6
	.byte	0x8
	.long	0x840
	.uleb128 0x6
	.byte	0x8
	.long	0x51e
	.uleb128 0x6
	.byte	0x8
	.long	0x679
	.uleb128 0x10
	.long	.LASF233
	.byte	0xc
	.value	0x150
	.long	0xf84
	.uleb128 0x6
	.byte	0x8
	.long	0x1a6
	.uleb128 0x16
	.long	0x1123
	.uleb128 0x17
	.long	0x1123
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x559
	.uleb128 0x6
	.byte	0x8
	.long	0x1118
	.uleb128 0x6
	.byte	0x8
	.long	0x720
	.uleb128 0x6
	.byte	0x8
	.long	0x4e3
	.uleb128 0x1a
	.byte	0x8
	.byte	0xc
	.value	0x184
	.long	0x115d
	.uleb128 0x15
	.long	.LASF234
	.byte	0xc
	.value	0x185
	.long	0x115d
	.uleb128 0x15
	.long	.LASF235
	.byte	0xc
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x162
	.uleb128 0x6
	.byte	0x8
	.long	0xfe8
	.uleb128 0x6
	.byte	0x8
	.long	0x481
	.uleb128 0x6
	.byte	0x8
	.long	0x766
	.uleb128 0x5
	.long	.LASF236
	.byte	0x15
	.byte	0x13
	.long	0x4e3
	.uleb128 0xd
	.string	"PAD"
	.byte	0x15
	.byte	0x14
	.long	0x4e3
	.uleb128 0x5
	.long	.LASF237
	.byte	0x15
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1175
	.uleb128 0x1b
	.long	0x1112
	.uleb128 0x6
	.byte	0x8
	.long	0x119c
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0x6
	.byte	0x8
	.long	0x594
	.uleb128 0xc
	.long	.LASF238
	.byte	0x40
	.byte	0xb
	.byte	0x70
	.long	0x122a
	.uleb128 0x1c
	.string	"cv"
	.byte	0xb
	.byte	0x71
	.long	0x1123
	.byte	0
	.uleb128 0x1c
	.string	"gv"
	.byte	0xb
	.byte	0x72
	.long	0x112f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF239
	.byte	0xb
	.byte	0x73
	.long	0x112f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF240
	.byte	0xb
	.byte	0x75
	.long	0x1135
	.byte	0x18
	.uleb128 0x8
	.long	.LASF241
	.byte	0xb
	.byte	0x77
	.long	0x1135
	.byte	0x20
	.uleb128 0x8
	.long	.LASF242
	.byte	0xb
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF243
	.byte	0xb
	.byte	0x79
	.long	0xf7a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF244
	.byte	0xb
	.byte	0x7a
	.long	0xf7a
	.byte	0x31
	.uleb128 0x8
	.long	.LASF245
	.byte	0xb
	.byte	0x7b
	.long	0x122a
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1180
	.uleb128 0xc
	.long	.LASF246
	.byte	0x28
	.byte	0xb
	.byte	0xd3
	.long	0x1284
	.uleb128 0x8
	.long	.LASF247
	.byte	0xb
	.byte	0xd4
	.long	0xf8f
	.byte	0
	.uleb128 0x8
	.long	.LASF248
	.byte	0xb
	.byte	0xd5
	.long	0xf8f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF249
	.byte	0xb
	.byte	0xd6
	.long	0xfc2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF250
	.byte	0xb
	.byte	0xd7
	.long	0x1112
	.byte	0x10
	.uleb128 0x8
	.long	.LASF251
	.byte	0xb
	.byte	0xd8
	.long	0xfc2
	.byte	0x18
	.uleb128 0x1c
	.string	"cv"
	.byte	0xb
	.byte	0xd9
	.long	0x1123
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	.LASF252
	.byte	0x58
	.byte	0xb
	.byte	0xf0
	.long	0x1316
	.uleb128 0x8
	.long	.LASF253
	.byte	0xb
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF254
	.byte	0xb
	.byte	0xf2
	.long	0xf8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF255
	.byte	0xb
	.byte	0xf3
	.long	0x1112
	.byte	0x10
	.uleb128 0x8
	.long	.LASF256
	.byte	0xb
	.byte	0xf4
	.long	0x1112
	.byte	0x18
	.uleb128 0x8
	.long	.LASF257
	.byte	0xb
	.byte	0xf5
	.long	0x1112
	.byte	0x20
	.uleb128 0x8
	.long	.LASF258
	.byte	0xb
	.byte	0xfa
	.long	0x1316
	.byte	0x28
	.uleb128 0x8
	.long	.LASF259
	.byte	0xb
	.byte	0xfc
	.long	0xfc2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF260
	.byte	0xb
	.byte	0xfd
	.long	0xfc2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF261
	.byte	0xb
	.byte	0xfe
	.long	0x1135
	.byte	0x40
	.uleb128 0x8
	.long	.LASF262
	.byte	0xb
	.byte	0xff
	.long	0x172
	.byte	0x48
	.uleb128 0x12
	.long	.LASF263
	.byte	0xb
	.value	0x100
	.long	0x172
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfc2
	.uleb128 0x1a
	.byte	0x58
	.byte	0xb
	.value	0x139
	.long	0x134a
	.uleb128 0x15
	.long	.LASF264
	.byte	0xb
	.value	0x13a
	.long	0x11b3
	.uleb128 0x15
	.long	.LASF265
	.byte	0xb
	.value	0x13b
	.long	0x1230
	.uleb128 0x15
	.long	.LASF266
	.byte	0xb
	.value	0x13c
	.long	0x1284
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0x13
	.long	.LASF267
	.byte	0x58
	.byte	0xb
	.value	0x16e
	.long	0x1414
	.uleb128 0x12
	.long	.LASF268
	.byte	0xb
	.value	0x16f
	.long	0xf8f
	.byte	0
	.uleb128 0x12
	.long	.LASF269
	.byte	0xb
	.value	0x170
	.long	0xf8f
	.byte	0x4
	.uleb128 0x12
	.long	.LASF270
	.byte	0xb
	.value	0x171
	.long	0xf8f
	.byte	0x8
	.uleb128 0x12
	.long	.LASF271
	.byte	0xb
	.value	0x172
	.long	0xf8f
	.byte	0xc
	.uleb128 0x12
	.long	.LASF272
	.byte	0xb
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF273
	.byte	0xb
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0x12
	.long	.LASF274
	.byte	0xb
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0x12
	.long	.LASF275
	.byte	0xb
	.value	0x176
	.long	0xfc2
	.byte	0x20
	.uleb128 0x12
	.long	.LASF276
	.byte	0xb
	.value	0x177
	.long	0xfc2
	.byte	0x28
	.uleb128 0x12
	.long	.LASF277
	.byte	0xb
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0x12
	.long	.LASF278
	.byte	0xb
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0x12
	.long	.LASF279
	.byte	0xb
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0x12
	.long	.LASF280
	.byte	0xb
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0x12
	.long	.LASF281
	.byte	0xb
	.value	0x17c
	.long	0x11ad
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.byte	0x88
	.byte	0xb
	.value	0x1a4
	.long	0x1436
	.uleb128 0x15
	.long	.LASF282
	.byte	0xb
	.value	0x1a5
	.long	0x7ca
	.uleb128 0x15
	.long	.LASF283
	.byte	0xb
	.value	0x1a6
	.long	0x1350
	.byte	0
	.uleb128 0x13
	.long	.LASF284
	.byte	0x38
	.byte	0xb
	.value	0x20c
	.long	0x14ac
	.uleb128 0x12
	.long	.LASF285
	.byte	0xb
	.value	0x20d
	.long	0x1135
	.byte	0
	.uleb128 0x12
	.long	.LASF286
	.byte	0xb
	.value	0x20e
	.long	0x14ac
	.byte	0x8
	.uleb128 0x12
	.long	.LASF287
	.byte	0xb
	.value	0x20f
	.long	0xf8f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF288
	.byte	0xb
	.value	0x210
	.long	0xf8f
	.byte	0x14
	.uleb128 0x12
	.long	.LASF289
	.byte	0xb
	.value	0x211
	.long	0xf8f
	.byte	0x18
	.uleb128 0x12
	.long	.LASF290
	.byte	0xb
	.value	0x212
	.long	0x14b2
	.byte	0x20
	.uleb128 0x12
	.long	.LASF291
	.byte	0xb
	.value	0x213
	.long	0x14b2
	.byte	0x28
	.uleb128 0x12
	.long	.LASF292
	.byte	0xb
	.value	0x214
	.long	0xf8f
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x796
	.uleb128 0x6
	.byte	0x8
	.long	0x1436
	.uleb128 0x10
	.long	.LASF293
	.byte	0xb
	.value	0x219
	.long	0x1436
	.uleb128 0xd
	.string	"HE"
	.byte	0x11
	.byte	0xc
	.long	0x14ce
	.uleb128 0x11
	.string	"he"
	.byte	0x18
	.byte	0x11
	.byte	0x10
	.long	0x14fe
	.uleb128 0x8
	.long	.LASF294
	.byte	0x11
	.byte	0x11
	.long	0x153a
	.byte	0
	.uleb128 0x8
	.long	.LASF295
	.byte	0x11
	.byte	0x12
	.long	0x1540
	.byte	0x8
	.uleb128 0x8
	.long	.LASF296
	.byte	0x11
	.byte	0x13
	.long	0xfc2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"HEK"
	.byte	0x11
	.byte	0xd
	.long	0x1509
	.uleb128 0x11
	.string	"hek"
	.byte	0xc
	.byte	0x11
	.byte	0x17
	.long	0x153a
	.uleb128 0x8
	.long	.LASF297
	.byte	0x11
	.byte	0x18
	.long	0xf9a
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x11
	.byte	0x19
	.long	0xf8f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF299
	.byte	0x11
	.byte	0x1a
	.long	0xfc8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14c4
	.uleb128 0x6
	.byte	0x8
	.long	0x14fe
	.uleb128 0x1d
	.long	0x57
	.long	0x155a
	.uleb128 0x17
	.long	0xfc2
	.uleb128 0x17
	.long	0x10f4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1546
	.uleb128 0x1d
	.long	0xf9a
	.long	0x1574
	.uleb128 0x17
	.long	0xfc2
	.uleb128 0x17
	.long	0x10f4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1560
	.uleb128 0x1d
	.long	0x57
	.long	0x159d
	.uleb128 0x17
	.long	0xfc2
	.uleb128 0x17
	.long	0x10f4
	.uleb128 0x17
	.long	0xfc2
	.uleb128 0x17
	.long	0xda
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x157a
	.uleb128 0x1d
	.long	0x57
	.long	0x15b7
	.uleb128 0x17
	.long	0x10f4
	.uleb128 0x17
	.long	0x15b7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf39
	.uleb128 0x6
	.byte	0x8
	.long	0x15a3
	.uleb128 0x6
	.byte	0x8
	.long	0xe5e
	.uleb128 0xc
	.long	.LASF300
	.byte	0xd8
	.byte	0x16
	.byte	0xe6
	.long	0x1607
	.uleb128 0x8
	.long	.LASF301
	.byte	0x16
	.byte	0xf9
	.long	0x141
	.byte	0
	.uleb128 0x8
	.long	.LASF302
	.byte	0x16
	.byte	0xfa
	.long	0x1607
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF303
	.byte	0x16
	.byte	0xff
	.long	0x57
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF304
	.byte	0x16
	.value	0x100
	.long	0x7f
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15c9
	.uleb128 0x10
	.long	.LASF305
	.byte	0x16
	.value	0x107
	.long	0x15c9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF306
	.uleb128 0x10
	.long	.LASF307
	.byte	0x9
	.value	0xcc1
	.long	0x162c
	.uleb128 0x6
	.byte	0x8
	.long	0x1632
	.uleb128 0x1b
	.long	0x57
	.uleb128 0x1e
	.byte	0x4
	.byte	0x9
	.value	0xfb1
	.long	0x17d6
	.uleb128 0x19
	.long	.LASF308
	.sleb128 0
	.uleb128 0x19
	.long	.LASF309
	.sleb128 1
	.uleb128 0x19
	.long	.LASF310
	.sleb128 2
	.uleb128 0x19
	.long	.LASF311
	.sleb128 3
	.uleb128 0x19
	.long	.LASF312
	.sleb128 4
	.uleb128 0x19
	.long	.LASF313
	.sleb128 5
	.uleb128 0x19
	.long	.LASF314
	.sleb128 6
	.uleb128 0x19
	.long	.LASF315
	.sleb128 7
	.uleb128 0x19
	.long	.LASF316
	.sleb128 8
	.uleb128 0x19
	.long	.LASF317
	.sleb128 9
	.uleb128 0x19
	.long	.LASF318
	.sleb128 10
	.uleb128 0x19
	.long	.LASF319
	.sleb128 11
	.uleb128 0x19
	.long	.LASF320
	.sleb128 12
	.uleb128 0x19
	.long	.LASF321
	.sleb128 13
	.uleb128 0x19
	.long	.LASF322
	.sleb128 14
	.uleb128 0x19
	.long	.LASF323
	.sleb128 15
	.uleb128 0x19
	.long	.LASF324
	.sleb128 16
	.uleb128 0x19
	.long	.LASF325
	.sleb128 17
	.uleb128 0x19
	.long	.LASF326
	.sleb128 18
	.uleb128 0x19
	.long	.LASF327
	.sleb128 19
	.uleb128 0x19
	.long	.LASF328
	.sleb128 20
	.uleb128 0x19
	.long	.LASF329
	.sleb128 21
	.uleb128 0x19
	.long	.LASF330
	.sleb128 22
	.uleb128 0x19
	.long	.LASF331
	.sleb128 23
	.uleb128 0x19
	.long	.LASF332
	.sleb128 24
	.uleb128 0x19
	.long	.LASF333
	.sleb128 25
	.uleb128 0x19
	.long	.LASF334
	.sleb128 26
	.uleb128 0x19
	.long	.LASF335
	.sleb128 27
	.uleb128 0x19
	.long	.LASF336
	.sleb128 28
	.uleb128 0x19
	.long	.LASF337
	.sleb128 29
	.uleb128 0x19
	.long	.LASF338
	.sleb128 30
	.uleb128 0x19
	.long	.LASF339
	.sleb128 31
	.uleb128 0x19
	.long	.LASF340
	.sleb128 32
	.uleb128 0x19
	.long	.LASF341
	.sleb128 33
	.uleb128 0x19
	.long	.LASF342
	.sleb128 34
	.uleb128 0x19
	.long	.LASF343
	.sleb128 35
	.uleb128 0x19
	.long	.LASF344
	.sleb128 36
	.uleb128 0x19
	.long	.LASF345
	.sleb128 37
	.uleb128 0x19
	.long	.LASF346
	.sleb128 38
	.uleb128 0x19
	.long	.LASF347
	.sleb128 39
	.uleb128 0x19
	.long	.LASF348
	.sleb128 40
	.uleb128 0x19
	.long	.LASF349
	.sleb128 41
	.uleb128 0x19
	.long	.LASF350
	.sleb128 42
	.uleb128 0x19
	.long	.LASF351
	.sleb128 43
	.uleb128 0x19
	.long	.LASF352
	.sleb128 44
	.uleb128 0x19
	.long	.LASF353
	.sleb128 45
	.uleb128 0x19
	.long	.LASF354
	.sleb128 46
	.uleb128 0x19
	.long	.LASF355
	.sleb128 47
	.uleb128 0x19
	.long	.LASF356
	.sleb128 48
	.uleb128 0x19
	.long	.LASF357
	.sleb128 49
	.uleb128 0x19
	.long	.LASF358
	.sleb128 50
	.uleb128 0x19
	.long	.LASF359
	.sleb128 51
	.uleb128 0x19
	.long	.LASF360
	.sleb128 52
	.uleb128 0x19
	.long	.LASF361
	.sleb128 53
	.uleb128 0x19
	.long	.LASF362
	.sleb128 54
	.uleb128 0x19
	.long	.LASF363
	.sleb128 55
	.uleb128 0x19
	.long	.LASF364
	.sleb128 56
	.uleb128 0x19
	.long	.LASF365
	.sleb128 57
	.uleb128 0x19
	.long	.LASF366
	.sleb128 58
	.uleb128 0x19
	.long	.LASF367
	.sleb128 59
	.uleb128 0x19
	.long	.LASF368
	.sleb128 60
	.uleb128 0x19
	.long	.LASF369
	.sleb128 61
	.uleb128 0x19
	.long	.LASF370
	.sleb128 62
	.uleb128 0x19
	.long	.LASF371
	.sleb128 63
	.uleb128 0x19
	.long	.LASF372
	.sleb128 64
	.uleb128 0x19
	.long	.LASF373
	.sleb128 65
	.uleb128 0x19
	.long	.LASF374
	.sleb128 66
	.byte	0
	.uleb128 0x1f
	.long	.LASF375
	.value	0x230
	.byte	0x9
	.value	0x1009
	.long	0x1827
	.uleb128 0x12
	.long	.LASF376
	.byte	0x9
	.value	0x100a
	.long	0xf9a
	.byte	0
	.uleb128 0x12
	.long	.LASF377
	.byte	0x9
	.value	0x100b
	.long	0x5e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF205
	.byte	0x9
	.value	0x100c
	.long	0xf9a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF378
	.byte	0x9
	.value	0x100d
	.long	0x1827
	.byte	0x18
	.uleb128 0x20
	.long	.LASF379
	.byte	0x9
	.value	0x100e
	.long	0x5e
	.value	0x228
	.byte	0
	.uleb128 0x9
	.long	0x1123
	.long	0x1837
	.uleb128 0xa
	.long	0x65
	.byte	0x41
	.byte	0
	.uleb128 0xf
	.string	"AMT"
	.byte	0x9
	.value	0x1015
	.long	0x17d6
	.uleb128 0x21
	.long	.LASF380
	.byte	0x1
	.byte	0x26
	.long	0x112f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1871
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x26
	.long	0x112f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	.LASF381
	.byte	0x1
	.byte	0x30
	.long	0x112f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x189f
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x30
	.long	0x112f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	.LASF382
	.byte	0x1
	.byte	0x3a
	.long	0x112f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x18cd
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x3a
	.long	0x112f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	.LASF383
	.byte	0x1
	.byte	0x4a
	.long	0x112f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1939
	.uleb128 0x23
	.long	.LASF384
	.byte	0x1
	.byte	0x4a
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x24
	.long	.LASF385
	.byte	0x1
	.byte	0x4c
	.long	0x152
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x24
	.long	.LASF386
	.byte	0x1
	.byte	0x4d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x24
	.long	.LASF387
	.byte	0x1
	.byte	0x4e
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.string	"gv"
	.byte	0x1
	.byte	0x4f
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x26
	.long	.LASF436
	.byte	0x1
	.byte	0x6a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x19c7
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x6a
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF388
	.byte	0x1
	.byte	0x6a
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF384
	.byte	0x1
	.byte	0x6a
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0x6a
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF389
	.byte	0x1
	.byte	0x6a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.string	"gp"
	.byte	0x1
	.byte	0x6c
	.long	0x1100
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF390
	.byte	0x1
	.byte	0x6d
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x24
	.long	.LASF391
	.byte	0x1
	.byte	0x6e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF418
	.byte	0x1
	.byte	0xa1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a00
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0xa1
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF392
	.byte	0x1
	.byte	0xa1
	.long	0xf8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.long	.LASF393
	.byte	0x1
	.byte	0xc6
	.long	0x112f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b8e
	.uleb128 0x23
	.long	.LASF388
	.byte	0x1
	.byte	0xc6
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF384
	.byte	0x1
	.byte	0xc6
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xc6
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF394
	.byte	0x1
	.byte	0xc6
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x25
	.string	"av"
	.byte	0x1
	.byte	0xc8
	.long	0x1135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF395
	.byte	0x1
	.byte	0xc9
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"gv"
	.byte	0x1
	.byte	0xca
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"gvp"
	.byte	0x1
	.byte	0xcb
	.long	0x1b8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"cv"
	.byte	0x1
	.byte	0xcc
	.long	0x1123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF429
	.byte	0x1
	.value	0x12a
	.quad	.L89
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1b07
	.uleb128 0x24
	.long	.LASF396
	.byte	0x1
	.byte	0xf8
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF397
	.byte	0x1
	.byte	0xf9
	.long	0x19a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x24
	.long	.LASF398
	.byte	0x1
	.byte	0xfc
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1b6c
	.uleb128 0x2b
	.string	"svp"
	.byte	0x1
	.value	0x10e
	.long	0x1316
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF399
	.byte	0x1
	.value	0x110
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x112
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF398
	.byte	0x1
	.value	0x113
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2c
	.long	.LASF400
	.byte	0x1
	.value	0x124
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x112f
	.uleb128 0x2d
	.long	.LASF401
	.byte	0x1
	.value	0x154
	.long	0x112f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c56
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x154
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x154
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x154
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF394
	.byte	0x1
	.value	0x154
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x156
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2c
	.long	.LASF402
	.byte	0x1
	.value	0x159
	.long	0x1c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF403
	.byte	0x1
	.value	0x15a
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x15b
	.long	0x1123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"gvp"
	.byte	0x1
	.value	0x15c
	.long	0x1b8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x7f
	.long	0x1c66
	.uleb128 0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x2d
	.long	.LASF404
	.byte	0x1
	.value	0x17b
	.long	0x112f
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca7
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x17b
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x17b
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF405
	.byte	0x1
	.value	0x19d
	.long	0x112f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dce
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x19d
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x19d
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF402
	.byte	0x1
	.value	0x19d
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF406
	.byte	0x1
	.value	0x19f
	.long	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF407
	.byte	0x1
	.value	0x1a0
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x1a1
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF408
	.byte	0x1
	.value	0x1a2
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1d7c
	.uleb128 0x2c
	.long	.LASF409
	.byte	0x1
	.value	0x1ae
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2c
	.long	.LASF410
	.byte	0x1
	.value	0x1b4
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1d1
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2c
	.long	.LASF411
	.byte	0x1
	.value	0x1d3
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x1d4
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF413
	.byte	0x1
	.value	0x1e8
	.long	0x112f
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eae
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x1e8
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x1e8
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x1e8
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2e
	.long	.LASF414
	.byte	0x1
	.value	0x1e8
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2c
	.long	.LASF402
	.byte	0x1
	.value	0x1ea
	.long	0x1c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF403
	.byte	0x1
	.value	0x1eb
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x1ec
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1ed
	.long	0x1123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF415
	.byte	0x1
	.value	0x1ee
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF416
	.byte	0x1
	.value	0x1ef
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF417
	.byte	0x1
	.value	0x1f0
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF396
	.byte	0x1
	.value	0x1f1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x30
	.long	.LASF419
	.byte	0x1
	.value	0x23b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f09
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x23b
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x1
	.value	0x23d
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x240
	.long	0x1316
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF420
	.byte	0x1
	.value	0x25a
	.long	0x10fa
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4a
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x25a
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF421
	.byte	0x1
	.value	0x25a
	.long	0xf8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF422
	.byte	0x1
	.value	0x26c
	.long	0x10fa
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fdd
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x26c
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2e
	.long	.LASF423
	.byte	0x1
	.value	0x26c
	.long	0xf9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2e
	.long	.LASF421
	.byte	0x1
	.value	0x26c
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2c
	.long	.LASF385
	.byte	0x1
	.value	0x26e
	.long	0x152
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.long	.LASF386
	.byte	0x1
	.value	0x26f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x1
	.value	0x270
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x271
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x2d
	.long	.LASF425
	.byte	0x1
	.value	0x292
	.long	0x10fa
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x203a
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x292
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF421
	.byte	0x1
	.value	0x292
	.long	0xf8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x294
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x295
	.long	0x19a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF426
	.byte	0x1
	.value	0x29c
	.long	0x112f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x231f
	.uleb128 0x2e
	.long	.LASF427
	.byte	0x1
	.value	0x29c
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2f
	.string	"add"
	.byte	0x1
	.value	0x29c
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x2e
	.long	.LASF392
	.byte	0x1
	.value	0x29c
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2c
	.long	.LASF384
	.byte	0x1
	.value	0x29e
	.long	0xda
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x29f
	.long	0x112f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"gvp"
	.byte	0x1
	.value	0x2a0
	.long	0x1b8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x2a1
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2c
	.long	.LASF428
	.byte	0x1
	.value	0x2a2
	.long	0xda
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x1
	.value	0x2a3
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x28
	.long	.LASF430
	.byte	0x1
	.value	0x436
	.quad	.L302
	.uleb128 0x28
	.long	.LASF431
	.byte	0x1
	.value	0x41a
	.quad	.L305
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x213b
	.uleb128 0x2c
	.long	.LASF385
	.byte	0x1
	.value	0x2b3
	.long	0x152
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2c
	.long	.LASF386
	.byte	0x1
	.value	0x2b4
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.byte	0
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x2161
	.uleb128 0x2c
	.long	.LASF432
	.byte	0x1
	.value	0x2e0
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -441
	.byte	0
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2185
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.value	0x328
	.long	0xfc2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x228e
	.uleb128 0x2c
	.long	.LASF433
	.byte	0x1
	.value	0x360
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x21f1
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x36d
	.long	0x1135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2c
	.long	.LASF434
	.byte	0x1
	.value	0x374
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x2216
	.uleb128 0x2b
	.string	"hv"
	.byte	0x1
	.value	0x384
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x226b
	.uleb128 0x2b
	.string	"hv"
	.byte	0x1
	.value	0x38b
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x38c
	.long	0xf8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2a
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2c
	.long	.LASF435
	.byte	0x1
	.value	0x396
	.long	0x1316
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x3c7
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x22b3
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x3fa
	.long	0x1135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x22d8
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x40b
	.long	0x1135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x22fd
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x443
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x2a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x454
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF437
	.byte	0x1
	.value	0x45f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2395
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x45f
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x45f
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF438
	.byte	0x1
	.value	0x45f
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF439
	.byte	0x1
	.value	0x45f
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF384
	.byte	0x1
	.value	0x461
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"hv"
	.byte	0x1
	.value	0x462
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF440
	.byte	0x1
	.value	0x475
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x23df
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x475
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x475
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF438
	.byte	0x1
	.value	0x475
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF441
	.byte	0x1
	.value	0x47b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2447
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x47b
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x47b
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF438
	.byte	0x1
	.value	0x47b
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF439
	.byte	0x1
	.value	0x47b
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"egv"
	.byte	0x1
	.value	0x47d
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF442
	.byte	0x1
	.value	0x484
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2491
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x484
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x484
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF438
	.byte	0x1
	.value	0x484
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF443
	.byte	0x1
	.value	0x48b
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x24cc
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x48b
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x48b
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF444
	.byte	0x1
	.value	0x492
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2507
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x492
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x492
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF445
	.byte	0x1
	.value	0x498
	.long	0x2547
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2547
	.uleb128 0x2b
	.string	"io"
	.byte	0x1
	.value	0x49a
	.long	0x2547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF446
	.byte	0x1
	.value	0x49b
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x75b
	.uleb128 0x31
	.long	.LASF447
	.byte	0x1
	.value	0x4ad
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d2
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x4ad
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF448
	.byte	0x1
	.value	0x4af
	.long	0x153a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4b0
	.long	0xf8f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x4b1
	.long	0x112f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"hv"
	.byte	0x1
	.value	0x4b2
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2c
	.long	.LASF449
	.byte	0x1
	.value	0x4bf
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF450
	.byte	0x1
	.value	0x4e0
	.long	0x112f
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2604
	.uleb128 0x2e
	.long	.LASF451
	.byte	0x1
	.value	0x4e0
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF452
	.byte	0x1
	.value	0x4e9
	.long	0x1100
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2635
	.uleb128 0x2f
	.string	"gp"
	.byte	0x1
	.value	0x4e9
	.long	0x1100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF453
	.byte	0x1
	.value	0x4fe
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2670
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x4fe
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"gp"
	.byte	0x1
	.value	0x500
	.long	0x1100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF454
	.byte	0x1
	.value	0x527
	.long	0x57
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x26fd
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x527
	.long	0xfc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"mg"
	.byte	0x1
	.value	0x527
	.long	0x10f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF455
	.byte	0x1
	.value	0x529
	.long	0x26fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x52b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x52d
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1837
	.uleb128 0x2d
	.long	.LASF456
	.byte	0x1
	.value	0x53a
	.long	0x7f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2875
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x53a
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x53c
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x53d
	.long	0x1123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x53e
	.long	0x10f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x2c
	.long	.LASF455
	.byte	0x1
	.value	0x53f
	.long	0x26fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x2b
	.string	"amt"
	.byte	0x1
	.value	0x540
	.long	0x1837
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2c
	.long	.LASF457
	.byte	0x1
	.value	0x550
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x2c
	.long	.LASF458
	.byte	0x1
	.value	0x550
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x551
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x2b
	.string	"lim"
	.byte	0x1
	.value	0x551
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x552
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x2a
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2c
	.long	.LASF459
	.byte	0x1
	.value	0x565
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2b
	.string	"cp"
	.byte	0x1
	.value	0x567
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x568
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2a
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2b
	.string	"ngv"
	.byte	0x1
	.value	0x57e
	.long	0x112f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x2a
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2c
	.long	.LASF460
	.byte	0x1
	.value	0x588
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x2c
	.long	.LASF384
	.byte	0x1
	.value	0x589
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF461
	.byte	0x1
	.value	0x5b1
	.long	0x1123
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2911
	.uleb128 0x2e
	.long	.LASF388
	.byte	0x1
	.value	0x5b1
	.long	0x10fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x5b1
	.long	0xf8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5b3
	.long	0x10f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF455
	.byte	0x1
	.value	0x5b4
	.long	0x26fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x5b5
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF462
	.byte	0x1
	.value	0x5bb
	.quad	.L461
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x5ca
	.long	0x112f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF463
	.byte	0x1
	.value	0x5d7
	.long	0xfc2
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c47
	.uleb128 0x2e
	.long	.LASF464
	.byte	0x1
	.value	0x5d7
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2e
	.long	.LASF465
	.byte	0x1
	.value	0x5d7
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2e
	.long	.LASF414
	.byte	0x1
	.value	0x5d7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2e
	.long	.LASF205
	.byte	0x1
	.value	0x5d7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5d9
	.long	0x10f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x5da
	.long	0x1123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.string	"cvp"
	.byte	0x1
	.value	0x5db
	.long	0x2c47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.long	.LASF466
	.byte	0x1
	.value	0x5db
	.long	0x2c47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.long	.LASF455
	.byte	0x1
	.value	0x5dc
	.long	0x26fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF467
	.byte	0x1
	.value	0x5dc
	.long	0x26fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.string	"off"
	.byte	0x1
	.value	0x5dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2c
	.long	.LASF468
	.byte	0x1
	.value	0x5dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2b
	.string	"lr"
	.byte	0x1
	.value	0x5dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2c
	.long	.LASF469
	.byte	0x1
	.value	0x5dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2c
	.long	.LASF470
	.byte	0x1
	.value	0x5dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2c
	.long	.LASF471
	.byte	0x1
	.value	0x5de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2c
	.long	.LASF472
	.byte	0x1
	.value	0x5de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.long	.LASF473
	.byte	0x1
	.value	0x5de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x1
	.value	0x5e2
	.long	0x10fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF474
	.byte	0x1
	.value	0x683
	.quad	.L526
	.uleb128 0x32
	.long	.Ldebug_ranges0+0
	.long	0x2b30
	.uleb128 0x2c
	.long	.LASF475
	.byte	0x1
	.value	0x5f4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x2ad1
	.uleb128 0x2c
	.long	.LASF476
	.byte	0x1
	.value	0x61c
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2c
	.long	.LASF477
	.byte	0x1
	.value	0x622
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0x62c
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x2b0c
	.uleb128 0x2c
	.long	.LASF479
	.byte	0x1
	.value	0x62e
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2a
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2c
	.long	.LASF479
	.byte	0x1
	.value	0x632
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x2b56
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0x693
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x29
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x2b7c
	.uleb128 0x2c
	.long	.LASF476
	.byte	0x1
	.value	0x6db
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x6dd
	.long	0x1316
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF480
	.byte	0x1
	.value	0x6de
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0x6df
	.long	0xfc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF481
	.byte	0x1
	.value	0x6e0
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -273
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x2bf0
	.uleb128 0x2c
	.long	.LASF482
	.byte	0x1
	.value	0x6e8
	.long	0x2c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x2c23
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x702
	.long	0x1316
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF483
	.byte	0x1
	.value	0x702
	.long	0x2c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2a
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2b
	.string	"ans"
	.byte	0x1
	.value	0x706
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1123
	.uleb128 0x6
	.byte	0x8
	.long	0x14b8
	.uleb128 0x2d
	.long	.LASF484
	.byte	0x1
	.value	0x73e
	.long	0x7f
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cf5
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.value	0x73e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x73e
	.long	0x19a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF205
	.byte	0x1
	.value	0x73e
	.long	0xf9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"yes"
	.byte	0x1
	.value	0x7ac
	.quad	.L639
	.uleb128 0x2a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2c
	.long	.LASF485
	.byte	0x1
	.value	0x741
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x76e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x79
	.long	0x2d00
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.long	.LASF486
	.byte	0x9
	.value	0xd14
	.long	0x2cf5
	.uleb128 0x37
	.long	.LASF487
	.byte	0x17
	.byte	0x1f
	.long	0xfc2
	.uleb128 0x37
	.long	.LASF488
	.byte	0x17
	.byte	0x34
	.long	0xf7a
	.uleb128 0x37
	.long	.LASF489
	.byte	0x17
	.byte	0x37
	.long	0x7f
	.uleb128 0x37
	.long	.LASF490
	.byte	0x17
	.byte	0x3b
	.long	0xf9a
	.uleb128 0x37
	.long	.LASF491
	.byte	0x17
	.byte	0x43
	.long	0xfc2
	.uleb128 0x37
	.long	.LASF492
	.byte	0x17
	.byte	0x51
	.long	0x112f
	.uleb128 0x37
	.long	.LASF493
	.byte	0x17
	.byte	0x81
	.long	0x10fa
	.uleb128 0x37
	.long	.LASF494
	.byte	0x17
	.byte	0x89
	.long	0xf9a
	.uleb128 0x37
	.long	.LASF495
	.byte	0x17
	.byte	0x98
	.long	0x7f
	.uleb128 0x37
	.long	.LASF496
	.byte	0x17
	.byte	0xac
	.long	0xf8f
	.uleb128 0x37
	.long	.LASF497
	.byte	0x17
	.byte	0xcf
	.long	0x21d
	.uleb128 0x37
	.long	.LASF498
	.byte	0x17
	.byte	0xd1
	.long	0x1123
	.uleb128 0x36
	.long	.LASF499
	.byte	0x17
	.value	0x112
	.long	0x1620
	.uleb128 0x36
	.long	.LASF500
	.byte	0x17
	.value	0x125
	.long	0x4a8
	.uleb128 0x36
	.long	.LASF501
	.byte	0x17
	.value	0x126
	.long	0x4a8
	.uleb128 0x36
	.long	.LASF502
	.byte	0x17
	.value	0x127
	.long	0x4a8
	.uleb128 0x36
	.long	.LASF503
	.byte	0x17
	.value	0x162
	.long	0xf9a
	.uleb128 0x36
	.long	.LASF504
	.byte	0x17
	.value	0x166
	.long	0x5e
	.uleb128 0x36
	.long	.LASF505
	.byte	0x17
	.value	0x1b7
	.long	0x1316
	.uleb128 0x36
	.long	.LASF506
	.byte	0x17
	.value	0x1b8
	.long	0x1316
	.uleb128 0x36
	.long	.LASF507
	.byte	0x17
	.value	0x1d0
	.long	0x10fa
	.uleb128 0x36
	.long	.LASF508
	.byte	0x17
	.value	0x1e1
	.long	0x14c
	.uleb128 0x36
	.long	.LASF509
	.byte	0x17
	.value	0x21c
	.long	0x10fa
	.uleb128 0x37
	.long	.LASF510
	.byte	0x18
	.byte	0x22
	.long	0x1316
	.uleb128 0x37
	.long	.LASF511
	.byte	0x18
	.byte	0x26
	.long	0x1112
	.uleb128 0x37
	.long	.LASF512
	.byte	0x18
	.byte	0x2a
	.long	0x1316
	.uleb128 0x37
	.long	.LASF513
	.byte	0x18
	.byte	0x2b
	.long	0x1316
	.uleb128 0x37
	.long	.LASF514
	.byte	0x18
	.byte	0x43
	.long	0xfc2
	.uleb128 0x37
	.long	.LASF515
	.byte	0x18
	.byte	0x44
	.long	0x2e56
	.uleb128 0x6
	.byte	0x8
	.long	0x8de
	.uleb128 0x37
	.long	.LASF516
	.byte	0x18
	.byte	0x76
	.long	0x112f
	.uleb128 0x37
	.long	.LASF517
	.byte	0x18
	.byte	0x77
	.long	0x79
	.uleb128 0x37
	.long	.LASF518
	.byte	0x18
	.byte	0x7d
	.long	0x10fa
	.uleb128 0x37
	.long	.LASF519
	.byte	0x18
	.byte	0x7e
	.long	0x10fa
	.uleb128 0x37
	.long	.LASF520
	.byte	0x18
	.byte	0x81
	.long	0x2e93
	.uleb128 0x38
	.long	0x134a
	.uleb128 0x37
	.long	.LASF521
	.byte	0x18
	.byte	0x87
	.long	0x1135
	.uleb128 0x37
	.long	.LASF522
	.byte	0x18
	.byte	0x88
	.long	0x2c4d
	.uleb128 0x37
	.long	.LASF523
	.byte	0x18
	.byte	0x8b
	.long	0x2eb9
	.uleb128 0x6
	.byte	0x8
	.long	0x160d
	.uleb128 0x9
	.long	0xda
	.long	0x2ecf
	.uleb128 0xa
	.long	0x65
	.byte	0x41
	.byte	0
	.uleb128 0x36
	.long	.LASF524
	.byte	0x9
	.value	0x1004
	.long	0x2ebf
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF497:
	.string	"PL_compiling"
.LASF66:
	.string	"precomp"
.LASF98:
	.string	"blku_oldretsp"
.LASF370:
	.string	"to_cv_amg"
.LASF361:
	.string	"repeat_ass_amg"
.LASF329:
	.string	"rshift_ass_amg"
.LASF461:
	.string	"Perl_gv_handler"
.LASF290:
	.string	"si_prev"
.LASF378:
	.string	"table"
.LASF428:
	.string	"namend"
.LASF523:
	.string	"PL_top_env"
.LASF19:
	.string	"__saved_mask"
.LASF24:
	.string	"op_next"
.LASF235:
	.string	"xiou_any"
.LASF476:
	.string	"tmpRef"
.LASF95:
	.string	"block"
.LASF148:
	.string	"xpvgv"
.LASF170:
	.string	"xio_ifp"
.LASF39:
	.string	"cop_io"
.LASF284:
	.string	"stackinfo"
.LASF331:
	.string	"band_ass_amg"
.LASF338:
	.string	"gt_amg"
.LASF421:
	.string	"create"
.LASF142:
	.string	"xhv_keys"
.LASF185:
	.string	"xio_flags"
.LASF189:
	.string	"svt_set"
.LASF138:
	.string	"xpvhv"
.LASF363:
	.string	"concat_ass_amg"
.LASF527:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF84:
	.string	"gp_hv"
.LASF169:
	.string	"xpvio"
.LASF119:
	.string	"xpviv"
.LASF355:
	.string	"cos_amg"
.LASF276:
	.string	"sbu_targ"
.LASF482:
	.string	"next"
.LASF157:
	.string	"xcv_start"
.LASF518:
	.string	"PL_defstash"
.LASF81:
	.string	"gp_io"
.LASF85:
	.string	"gp_egv"
.LASF493:
	.string	"PL_debstash"
.LASF268:
	.string	"sbu_iters"
.LASF297:
	.string	"hek_hash"
.LASF342:
	.string	"ncmp_amg"
.LASF37:
	.string	"cop_line"
.LASF156:
	.string	"xcv_stash"
.LASF379:
	.string	"fallback"
.LASF420:
	.string	"Perl_gv_stashpv"
.LASF358:
	.string	"log_amg"
.LASF161:
	.string	"xcv_gv"
.LASF291:
	.string	"si_next"
.LASF116:
	.string	"xpv_cur"
.LASF109:
	.string	"mg_type"
.LASF341:
	.string	"ne_amg"
.LASF115:
	.string	"xpv_pv"
.LASF17:
	.string	"__jmpbuf"
.LASF526:
	.string	"gv.c"
.LASF125:
	.string	"xpvmg"
.LASF275:
	.string	"sbu_dstr"
.LASF340:
	.string	"eq_amg"
.LASF405:
	.string	"Perl_gv_fetchmethod_autoload"
.LASF443:
	.string	"Perl_gv_fullname"
.LASF398:
	.string	"basestash"
.LASF233:
	.string	"cv_flags_t"
.LASF89:
	.string	"gp_line"
.LASF400:
	.string	"lastchance"
.LASF267:
	.string	"subst"
.LASF175:
	.string	"xio_page_len"
.LASF337:
	.string	"le_amg"
.LASF425:
	.string	"Perl_gv_stashsv"
.LASF122:
	.string	"xpvnv"
.LASF149:
	.string	"xgv_gp"
.LASF408:
	.string	"ostash"
.LASF474:
	.string	"not_found"
.LASF18:
	.string	"__mask_was_saved"
.LASF108:
	.string	"mg_private"
.LASF432:
	.string	"global"
.LASF367:
	.string	"to_av_amg"
.LASF274:
	.string	"sbu_orig"
.LASF426:
	.string	"Perl_gv_fetchpv"
.LASF12:
	.string	"__sigset_t"
.LASF135:
	.string	"xav_arylen"
.LASF78:
	.string	"program"
.LASF158:
	.string	"xcv_root"
.LASF247:
	.string	"old_in_eval"
.LASF295:
	.string	"hent_hek"
.LASF107:
	.string	"mg_virtual"
.LASF357:
	.string	"exp_amg"
.LASF364:
	.string	"copy_amg"
.LASF491:
	.string	"PL_formfeed"
.LASF35:
	.string	"cop_seq"
.LASF447:
	.string	"Perl_gv_check"
.LASF487:
	.string	"PL_patchlevel"
.LASF59:
	.string	"sv_flags"
.LASF330:
	.string	"band_amg"
.LASF312:
	.string	"string_amg"
.LASF56:
	.string	"broiled"
.LASF180:
	.string	"xio_fmt_gv"
.LASF434:
	.string	"pname"
.LASF471:
	.string	"postpr"
.LASF88:
	.string	"gp_flags"
.LASF94:
	.string	"cx_u"
.LASF498:
	.string	"PL_compcv"
.LASF80:
	.string	"gp_refcnt"
.LASF258:
	.string	"itervar"
.LASF74:
	.string	"nparens"
.LASF213:
	.string	"type"
.LASF499:
	.string	"PL_runops"
.LASF396:
	.string	"packname"
.LASF90:
	.string	"gp_file"
.LASF174:
	.string	"xio_page"
.LASF436:
	.string	"Perl_gv_init"
.LASF164:
	.string	"xcv_padlist"
.LASF411:
	.string	"stubgv"
.LASF23:
	.string	"__jmp_buf_tag"
.LASF266:
	.string	"blku_loop"
.LASF375:
	.string	"am_table"
.LASF311:
	.string	"nomethod_amg"
.LASF79:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF211:
	.string	"PerlIO"
.LASF277:
	.string	"sbu_s"
.LASF423:
	.string	"namelen"
.LASF489:
	.string	"PL_sawampersand"
.LASF303:
	.string	"je_ret"
.LASF306:
	.string	"float"
.LASF259:
	.string	"itersave"
.LASF460:
	.string	"gvsv"
.LASF469:
	.string	"assign"
.LASF57:
	.string	"sv_any"
.LASF407:
	.string	"nsplit"
.LASF246:
	.string	"block_eval"
.LASF344:
	.string	"slt_amg"
.LASF77:
	.string	"reganch"
.LASF204:
	.string	"stashes"
.LASF444:
	.string	"Perl_gv_efullname"
.LASF63:
	.string	"endp"
.LASF302:
	.string	"je_prev"
.LASF399:
	.string	"items"
.LASF517:
	.string	"PL_chopset"
.LASF435:
	.string	"init"
.LASF11:
	.string	"size_t"
.LASF453:
	.string	"Perl_gp_free"
.LASF451:
	.string	"pack"
.LASF230:
	.string	"SVt_PVGV"
.LASF265:
	.string	"blku_eval"
.LASF485:
	.string	"name1"
.LASF433:
	.string	"name2"
.LASF70:
	.string	"sublen"
.LASF131:
	.string	"xav_fill"
.LASF310:
	.string	"bool__amg"
.LASF106:
	.string	"mg_moremagic"
.LASF279:
	.string	"sbu_strend"
.LASF36:
	.string	"cop_arybase"
.LASF377:
	.string	"was_ok_am"
.LASF288:
	.string	"si_cxmax"
.LASF112:
	.string	"mg_ptr"
.LASF334:
	.string	"bxor_amg"
.LASF466:
	.string	"ocvp"
.LASF442:
	.string	"Perl_gv_efullname3"
.LASF441:
	.string	"Perl_gv_efullname4"
.LASF263:
	.string	"itermax"
.LASF183:
	.string	"xio_subprocess"
.LASF468:
	.string	"off1"
.LASF68:
	.string	"subbeg"
.LASF62:
	.string	"startp"
.LASF465:
	.string	"right"
.LASF368:
	.string	"to_hv_amg"
.LASF472:
	.string	"force_cpy"
.LASF446:
	.string	"iogv"
.LASF525:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF392:
	.string	"sv_type"
.LASF369:
	.string	"to_gv_amg"
.LASF61:
	.string	"regexp"
.LASF495:
	.string	"PL_tainting"
.LASF60:
	.string	"REGEXP"
.LASF58:
	.string	"sv_refcnt"
.LASF190:
	.string	"svt_len"
.LASF374:
	.string	"max_amg_code"
.LASF214:
	.string	"next_off"
.LASF244:
	.string	"lval"
.LASF30:
	.string	"op_flags"
.LASF480:
	.string	"myop"
.LASF38:
	.string	"cop_warnings"
.LASF293:
	.string	"PERL_SI"
.LASF65:
	.string	"substrs"
.LASF100:
	.string	"blku_oldscopesp"
.LASF227:
	.string	"SVt_PVAV"
.LASF470:
	.string	"notfound"
.LASF287:
	.string	"si_cxix"
.LASF139:
	.string	"xhv_array"
.LASF325:
	.string	"pow_ass_amg"
.LASF69:
	.string	"offsets"
.LASF422:
	.string	"Perl_gv_stashpvn"
.LASF510:
	.string	"PL_stack_sp"
.LASF181:
	.string	"xio_bottom_name"
.LASF449:
	.string	"file"
.LASF225:
	.string	"SVt_PVBM"
.LASF308:
	.string	"fallback_amg"
.LASF479:
	.string	"lessp"
.LASF104:
	.string	"MAGIC"
.LASF390:
	.string	"doproto"
.LASF32:
	.string	"cop_label"
.LASF110:
	.string	"mg_flags"
.LASF251:
	.string	"cur_text"
.LASF128:
	.string	"XPVAV"
.LASF229:
	.string	"SVt_PVCV"
.LASF73:
	.string	"prelen"
.LASF520:
	.string	"PL_curcop"
.LASF27:
	.string	"op_targ"
.LASF182:
	.string	"xio_bottom_gv"
.LASF492:
	.string	"PL_stderrgv"
.LASF385:
	.string	"smallbuf"
.LASF397:
	.string	"packlen"
.LASF99:
	.string	"blku_oldmarksp"
.LASF75:
	.string	"lastparen"
.LASF333:
	.string	"bor_ass_amg"
.LASF154:
	.string	"XPVCV"
.LASF261:
	.string	"iterary"
.LASF9:
	.string	"__ssize_t"
.LASF216:
	.string	"reg_data"
.LASF179:
	.string	"xio_fmt_name"
.LASF296:
	.string	"hent_val"
.LASF304:
	.string	"je_mustcatch"
.LASF123:
	.string	"xnv_nv"
.LASF294:
	.string	"hent_next"
.LASF328:
	.string	"rshift_amg"
.LASF192:
	.string	"svt_free"
.LASF52:
	.string	"op_pmdynflags"
.LASF371:
	.string	"iter_amg"
.LASF16:
	.string	"__val"
.LASF231:
	.string	"SVt_PVFM"
.LASF203:
	.string	"clone_params"
.LASF503:
	.string	"PL_hints"
.LASF380:
	.string	"Perl_gv_AVadd"
.LASF335:
	.string	"bxor_ass_amg"
.LASF281:
	.string	"sbu_rx"
.LASF278:
	.string	"sbu_m"
.LASF165:
	.string	"xcv_outside"
.LASF236:
	.string	"PADLIST"
.LASF201:
	.string	"any_dxptr"
.LASF153:
	.string	"xgv_flags"
.LASF105:
	.string	"magic"
.LASF502:
	.string	"PL_sv_yes"
.LASF394:
	.string	"level"
.LASF384:
	.string	"name"
.LASF228:
	.string	"SVt_PVHV"
.LASF217:
	.string	"SVt_NULL"
.LASF383:
	.string	"Perl_gv_fetchfile"
.LASF440:
	.string	"Perl_gv_fullname3"
.LASF437:
	.string	"Perl_gv_fullname4"
.LASF462:
	.string	"do_update"
.LASF187:
	.string	"mgvtbl"
.LASF455:
	.string	"amtp"
.LASF494:
	.string	"PL_sub_generation"
.LASF147:
	.string	"XPVGV"
.LASF186:
	.string	"MGVTBL"
.LASF283:
	.string	"cx_subst"
.LASF402:
	.string	"autoload"
.LASF232:
	.string	"SVt_PVIO"
.LASF222:
	.string	"SVt_PVIV"
.LASF71:
	.string	"refcnt"
.LASF273:
	.string	"sbu_rxtainted"
.LASF339:
	.string	"ge_amg"
.LASF137:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF48:
	.string	"op_pmnext"
.LASF159:
	.string	"xcv_xsub"
.LASF243:
	.string	"hasargs"
.LASF31:
	.string	"op_private"
.LASF353:
	.string	"dec_amg"
.LASF514:
	.string	"PL_Sv"
.LASF195:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF512:
	.string	"PL_stack_base"
.LASF387:
	.string	"tmplen"
.LASF168:
	.string	"XPVIO"
.LASF118:
	.string	"XPVIV"
.LASF134:
	.string	"xav_alloc"
.LASF271:
	.string	"sbu_oldsave"
.LASF141:
	.string	"xhv_max"
.LASF20:
	.string	"sigjmp_buf"
.LASF72:
	.string	"minlen"
.LASF323:
	.string	"modulo_ass_amg"
.LASF348:
	.string	"seq_amg"
.LASF127:
	.string	"xmg_stash"
.LASF270:
	.string	"sbu_rflags"
.LASF388:
	.string	"stash"
.LASF64:
	.string	"regstclass"
.LASF144:
	.string	"xhv_eiter"
.LASF226:
	.string	"SVt_PVLV"
.LASF215:
	.string	"reg_substr_data"
.LASF345:
	.string	"sle_amg"
.LASF240:
	.string	"savearray"
.LASF260:
	.string	"iterlval"
.LASF506:
	.string	"PL_psig_name"
.LASF314:
	.string	"add_amg"
.LASF513:
	.string	"PL_stack_max"
.LASF496:
	.string	"PL_gensym"
.LASF401:
	.string	"Perl_gv_fetchmeth_autoload"
.LASF427:
	.string	"nambeg"
.LASF103:
	.string	"blk_u"
.LASF224:
	.string	"SVt_PVMG"
.LASF133:
	.string	"xof_off"
.LASF458:
	.string	"have_ovl"
.LASF317:
	.string	"subtr_ass_amg"
.LASF151:
	.string	"xgv_namelen"
.LASF391:
	.string	"proto"
.LASF43:
	.string	"op_last"
.LASF209:
	.string	"__dirstream"
.LASF419:
	.string	"S_require_errno"
.LASF198:
	.string	"any_long"
.LASF29:
	.string	"op_seq"
.LASF350:
	.string	"not_amg"
.LASF521:
	.string	"PL_curstack"
.LASF40:
	.string	"BINOP"
.LASF223:
	.string	"SVt_PVNV"
.LASF44:
	.string	"PMOP"
.LASF382:
	.string	"Perl_gv_IOadd"
.LASF318:
	.string	"mult_amg"
.LASF76:
	.string	"lastcloseparen"
.LASF124:
	.string	"XPVMG"
.LASF309:
	.string	"abs_amg"
.LASF269:
	.string	"sbu_maxiters"
.LASF511:
	.string	"PL_op"
.LASF184:
	.string	"xio_type"
.LASF6:
	.string	"long int"
.LASF191:
	.string	"svt_clear"
.LASF171:
	.string	"xio_ofp"
.LASF152:
	.string	"xgv_stash"
.LASF248:
	.string	"old_op_type"
.LASF46:
	.string	"op_pmreplroot"
.LASF163:
	.string	"xcv_depth"
.LASF87:
	.string	"gp_cvgen"
.LASF393:
	.string	"Perl_gv_fetchmeth"
.LASF121:
	.string	"XPVNV"
.LASF484:
	.string	"Perl_is_gv_magical"
.LASF143:
	.string	"xhv_riter"
.LASF102:
	.string	"blku_gimme"
.LASF253:
	.string	"label"
.LASF92:
	.string	"context"
.LASF239:
	.string	"dfoutgv"
.LASF343:
	.string	"scmp_amg"
.LASF501:
	.string	"PL_sv_no"
.LASF450:
	.string	"Perl_newGVgen"
.LASF477:
	.string	"newref"
.LASF410:
	.string	"tmpstr"
.LASF47:
	.string	"op_pmreplstart"
.LASF218:
	.string	"SVt_IV"
.LASF212:
	.string	"regnode"
.LASF256:
	.string	"next_op"
.LASF25:
	.string	"op_sibling"
.LASF172:
	.string	"xio_dirpu"
.LASF197:
	.string	"any_iv"
.LASF145:
	.string	"xhv_pmroot"
.LASF327:
	.string	"lshift_ass_amg"
.LASF376:
	.string	"was_ok_sub"
.LASF490:
	.string	"PL_perldb"
.LASF3:
	.string	"long unsigned int"
.LASF45:
	.string	"pmop"
.LASF381:
	.string	"Perl_gv_HVadd"
.LASF448:
	.string	"entry"
.LASF272:
	.string	"sbu_once"
.LASF372:
	.string	"int_amg"
.LASF54:
	.string	"PerlInterpreter"
.LASF313:
	.string	"numer_amg"
.LASF322:
	.string	"modulo_amg"
.LASF359:
	.string	"sqrt_amg"
.LASF507:
	.string	"PL_nullstash"
.LASF362:
	.string	"concat_amg"
.LASF8:
	.string	"char"
.LASF241:
	.string	"argarray"
.LASF41:
	.string	"binop"
.LASF445:
	.string	"Perl_newIO"
.LASF177:
	.string	"xio_top_name"
.LASF486:
	.string	"PL_sig_name"
.LASF113:
	.string	"mg_len"
.LASF234:
	.string	"xiou_dirp"
.LASF150:
	.string	"xgv_name"
.LASF406:
	.string	"nend"
.LASF321:
	.string	"div_ass_amg"
.LASF238:
	.string	"block_sub"
.LASF173:
	.string	"xio_lines"
.LASF286:
	.string	"si_cxstack"
.LASF117:
	.string	"xpv_len"
.LASF429:
	.string	"gotcha"
.LASF28:
	.string	"op_type"
.LASF395:
	.string	"topgv"
.LASF22:
	.string	"STRLEN"
.LASF249:
	.string	"old_namesv"
.LASF219:
	.string	"SVt_NV"
.LASF299:
	.string	"hek_key"
.LASF373:
	.string	"DESTROY_amg"
.LASF162:
	.string	"xcv_file"
.LASF206:
	.string	"proto_perl"
.LASF250:
	.string	"old_eval_root"
.LASF500:
	.string	"PL_sv_undef"
.LASF424:
	.string	"tmpgv"
.LASF354:
	.string	"atan2_amg"
.LASF237:
	.string	"PADOFFSET"
.LASF50:
	.string	"op_pmflags"
.LASF264:
	.string	"blku_sub"
.LASF55:
	.string	"interpreter"
.LASF101:
	.string	"blku_oldpm"
.LASF347:
	.string	"sge_amg"
.LASF42:
	.string	"op_first"
.LASF21:
	.string	"double"
.LASF516:
	.string	"PL_defoutgv"
.LASF51:
	.string	"op_pmpermflags"
.LASF114:
	.string	"xrv_rv"
.LASF132:
	.string	"xav_max"
.LASF509:
	.string	"PL_stashcache"
.LASF409:
	.string	"origname"
.LASF10:
	.string	"ssize_t"
.LASF26:
	.string	"op_ppaddr"
.LASF351:
	.string	"compl_amg"
.LASF196:
	.string	"any_i32"
.LASF352:
	.string	"inc_amg"
.LASF365:
	.string	"neg_amg"
.LASF416:
	.string	"vargv"
.LASF221:
	.string	"SVt_PV"
.LASF34:
	.string	"cop_filegv"
.LASF199:
	.string	"any_bool"
.LASF167:
	.string	"xcv_outside_seq"
.LASF67:
	.string	"data"
.LASF289:
	.string	"si_type"
.LASF130:
	.string	"xav_array"
.LASF220:
	.string	"SVt_RV"
.LASF488:
	.string	"PL_dowarn"
.LASF202:
	.string	"CLONE_PARAMS"
.LASF254:
	.string	"resetsp"
.LASF91:
	.string	"PERL_CONTEXT"
.LASF389:
	.string	"multi"
.LASF140:
	.string	"xhv_fill"
.LASF120:
	.string	"xiv_iv"
.LASF415:
	.string	"varstash"
.LASF452:
	.string	"Perl_gp_ref"
.LASF457:
	.string	"filled"
.LASF464:
	.string	"left"
.LASF307:
	.string	"runops_proc_t"
.LASF96:
	.string	"blku_oldsp"
.LASF326:
	.string	"lshift_amg"
.LASF360:
	.string	"repeat_amg"
.LASF319:
	.string	"mult_ass_amg"
.LASF255:
	.string	"redo_op"
.LASF403:
	.string	"autolen"
.LASF298:
	.string	"hek_len"
.LASF386:
	.string	"tmpbuf"
.LASF430:
	.string	"magicalize"
.LASF13:
	.string	"long long unsigned int"
.LASF336:
	.string	"lt_amg"
.LASF257:
	.string	"last_op"
.LASF300:
	.string	"jmpenv"
.LASF481:
	.string	"oldcatch"
.LASF305:
	.string	"JMPENV"
.LASF194:
	.string	"svt_dup"
.LASF519:
	.string	"PL_curstash"
.LASF292:
	.string	"si_markoff"
.LASF178:
	.string	"xio_top_gv"
.LASF320:
	.string	"div_amg"
.LASF504:
	.string	"PL_amagic_generation"
.LASF316:
	.string	"subtr_amg"
.LASF280:
	.string	"sbu_rxres"
.LASF522:
	.string	"PL_curstackinfo"
.LASF418:
	.string	"S_gv_init_sv"
.LASF467:
	.string	"oamtp"
.LASF463:
	.string	"Perl_amagic_call"
.LASF53:
	.string	"op_pmstash"
.LASF188:
	.string	"svt_get"
.LASF82:
	.string	"gp_form"
.LASF97:
	.string	"blku_oldcop"
.LASF33:
	.string	"cop_stash"
.LASF14:
	.string	"long long int"
.LASF207:
	.string	"line_t"
.LASF146:
	.string	"xhv_name"
.LASF285:
	.string	"si_stack"
.LASF193:
	.string	"svt_copy"
.LASF438:
	.string	"prefix"
.LASF93:
	.string	"cx_type"
.LASF136:
	.string	"xav_flags"
.LASF459:
	.string	"cooky"
.LASF262:
	.string	"iterix"
.LASF126:
	.string	"xmg_magic"
.LASF111:
	.string	"mg_obj"
.LASF483:
	.string	"prev"
.LASF475:
	.string	"logic"
.LASF200:
	.string	"any_dptr"
.LASF366:
	.string	"to_sv_amg"
.LASF508:
	.string	"PL_psig_pend"
.LASF129:
	.string	"xpvav"
.LASF49:
	.string	"op_pmregexp"
.LASF456:
	.string	"Perl_Gv_AMupdate"
.LASF431:
	.string	"ro_magicalize"
.LASF439:
	.string	"keepmain"
.LASF473:
	.string	"assignshift"
.LASF160:
	.string	"xcv_xsubany"
.LASF176:
	.string	"xio_lines_left"
.LASF83:
	.string	"gp_av"
.LASF404:
	.string	"Perl_gv_fetchmethod"
.LASF412:
	.string	"autogv"
.LASF454:
	.string	"Perl_magic_freeovrld"
.LASF252:
	.string	"block_loop"
.LASF346:
	.string	"sgt_amg"
.LASF324:
	.string	"pow_amg"
.LASF301:
	.string	"je_buf"
.LASF515:
	.string	"PL_Xpv"
.LASF166:
	.string	"xcv_flags"
.LASF414:
	.string	"method"
.LASF2:
	.string	"unsigned int"
.LASF155:
	.string	"xpvcv"
.LASF245:
	.string	"oldcomppad"
.LASF210:
	.string	"_PerlIO"
.LASF332:
	.string	"bor_amg"
.LASF413:
	.string	"Perl_gv_autoload4"
.LASF349:
	.string	"sne_amg"
.LASF5:
	.string	"short int"
.LASF86:
	.string	"gp_cv"
.LASF417:
	.string	"varsv"
.LASF15:
	.string	"__jmp_buf"
.LASF242:
	.string	"olddepth"
.LASF315:
	.string	"add_ass_amg"
.LASF524:
	.string	"PL_AMG_names"
.LASF282:
	.string	"cx_blk"
.LASF356:
	.string	"sin_amg"
.LASF208:
	.string	"PerlIOl"
.LASF205:
	.string	"flags"
.LASF478:
	.string	"nullsv"
.LASF505:
	.string	"PL_psig_ptr"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
