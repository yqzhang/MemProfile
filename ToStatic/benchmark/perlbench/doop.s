	.file	"doop.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 doop.c -mtune=generic
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
	.string	"panic: do_trans_simple line %d"
	.text
	.type	S_do_trans_simple, @function
S_do_trans_simple:
.LFB2:
	.file 1 "doop.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# sv, sv
	.loc 1 35 0
	movl	$0, -76(%rbp)	#, matches
	.loc 1 36 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.0
	movzbl	37(%rax), %eax	# PL_op.0_13->op_private, D.13537
	movzbl	%al, %eax	# D.13537, D.13538
	andl	$64, %eax	#, tmp111
	movl	%eax, -72(%rbp)	# tmp111, grows
	.loc 1 41 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1_17].op_pv, tmp112
	movq	%rax, -32(%rbp)	# tmp112, tbl
	.loc 1 42 0
	cmpq	$0, -32(%rbp)	#, tbl
	jne	.L2	#,
	.loc 1 43 0
	movl	$43, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L2:
	.loc 1 45 0
	movq	-88(%rbp), %rax	# sv, tmp113
	movl	12(%rax), %eax	# sv_19(D)->sv_flags, D.13539
	andl	$262144, %eax	#, D.13539
	testl	%eax, %eax	# D.13539
	je	.L3	#,
	.loc 1 45 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp114
	movq	(%rax), %rax	# sv_19(D)->sv_any, D.13540
	movq	8(%rax), %rax	# MEM[(struct XPV *)_22].xpv_cur, len.3
	movq	%rax, -64(%rbp)	# len.3, len
	movq	-88(%rbp), %rax	# sv, tmp115
	movq	(%rax), %rax	# sv_19(D)->sv_any, D.13540
	movq	(%rax), %rax	# MEM[(struct XPV *)_24].xpv_pv, iftmp.2
	jmp	.L4	#
.L3:
	.loc 1 45 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp116
	movq	-88(%rbp), %rax	# sv, tmp117
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	Perl_sv_2pv_flags	#
.L4:
	.loc 1 45 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.2, s
	.loc 1 46 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rdx	# len, len.4
	movq	-48(%rbp), %rax	# s, tmp121
	addq	%rdx, %rax	# len.4, tmp120
	movq	%rax, -24(%rbp)	# tmp120, send
	.loc 1 49 0 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp122
	movl	12(%rax), %eax	# sv_19(D)->sv_flags, D.13539
	andl	$536870912, %eax	#, D.13539
	testl	%eax, %eax	# D.13539
	jne	.L5	#,
	.loc 1 50 0
	jmp	.L6	#
.L8:
	.loc 1 51 0
	movq	-48(%rbp), %rax	# s, tmp123
	movzbl	(%rax), %eax	# *s_1, D.13537
	movzbl	%al, %eax	# D.13537, D.13541
	leaq	(%rax,%rax), %rdx	#, D.13541
	movq	-32(%rbp), %rax	# tbl, tmp124
	addq	%rdx, %rax	# D.13541, D.13542
	movzwl	(%rax), %eax	# *_35, D.13543
	cwtl
	movl	%eax, -68(%rbp)	# tmp125, ch
	cmpl	$0, -68(%rbp)	#, ch
	js	.L7	#,
	.loc 1 52 0
	addl	$1, -76(%rbp)	#, matches
	.loc 1 53 0
	movq	-48(%rbp), %rax	# s, s.5
	leaq	1(%rax), %rdx	#, tmp126
	movq	%rdx, -48(%rbp)	# tmp126, s
	movl	-68(%rbp), %edx	# ch, tmp127
	movb	%dl, (%rax)	# D.13537, *s.5_39
	jmp	.L6	#
.L7:
	.loc 1 56 0
	addq	$1, -48(%rbp)	#, s
.L6:
	.loc 1 50 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp128
	cmpq	-24(%rbp), %rax	# send, tmp128
	jb	.L8	#,
	.loc 1 58 0
	movq	-88(%rbp), %rax	# sv, tmp129
	movl	12(%rax), %eax	# sv_19(D)->sv_flags, D.13539
	andl	$16384, %eax	#, D.13539
	testl	%eax, %eax	# D.13539
	je	.L9	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_mg_set	#
.L9:
	.loc 1 59 0 is_stmt 1
	movl	-76(%rbp), %eax	# matches, D.13536
	jmp	.L20	#
.L5:
	.loc 1 63 0
	cmpl	$0, -72(%rbp)	#, grows
	je	.L11	#,
	.loc 1 64 0
	movq	-64(%rbp), %rax	# len, len.6
	addq	%rax, %rax	# D.13541
	addq	$1, %rax	#, D.13541
	movq	%rax, %rdi	# D.13541,
	call	Perl_safesysmalloc	#
	movq	%rax, -40(%rbp)	# tmp131, d
	jmp	.L12	#
.L11:
	.loc 1 66 0
	movq	-48(%rbp), %rax	# s, tmp132
	movq	%rax, -40(%rbp)	# tmp132, d
.L12:
	.loc 1 67 0
	movq	-40(%rbp), %rax	# d, tmp133
	movq	%rax, -16(%rbp)	# tmp133, dstart
	.loc 1 68 0
	jmp	.L13	#
.L16:
.LBB2:
	.loc 1 73 0
	movq	-24(%rbp), %rdx	# send, send.7
	movq	-48(%rbp), %rax	# s, s.8
	subq	%rax, %rdx	# s.8, D.13544
	movq	%rdx, %rax	# D.13544, D.13544
	movq	%rax, %rsi	# D.13544, D.13541
	leaq	-56(%rbp), %rdx	#, tmp134
	movq	-48(%rbp), %rax	# s, tmp135
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp135,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -8(%rbp)	# tmp136, c
	.loc 1 74 0
	cmpq	$255, -8(%rbp)	#, c
	ja	.L14	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, tmp137
	leaq	(%rax,%rax), %rdx	#, D.13541
	movq	-32(%rbp), %rax	# tbl, tmp138
	addq	%rdx, %rax	# D.13541, D.13542
	movzwl	(%rax), %eax	# *_58, D.13543
	cwtl
	movl	%eax, -68(%rbp)	# tmp139, ch
	cmpl	$0, -68(%rbp)	#, ch
	js	.L14	#,
	.loc 1 75 0 is_stmt 1
	addl	$1, -76(%rbp)	#, matches
	.loc 1 76 0
	movl	-68(%rbp), %eax	# ch, tmp140
	movslq	%eax, %rdx	# tmp140, D.13541
	movq	-40(%rbp), %rax	# d, tmp141
	movq	%rdx, %rsi	# D.13541,
	movq	%rax, %rdi	# tmp141,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -40(%rbp)	# tmp142, d
	.loc 1 77 0
	movq	-56(%rbp), %rax	# ulen, ulen.9
	addq	%rax, -48(%rbp)	# ulen.9, s
	jmp	.L13	#
.L14:
	.loc 1 80 0
	movq	-56(%rbp), %rdx	# ulen, ulen.10
	movq	-48(%rbp), %rcx	# s, tmp143
	movq	-40(%rbp), %rax	# d, tmp144
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	memmove	#
	.loc 1 81 0
	movq	-56(%rbp), %rax	# ulen, ulen.11
	addq	%rax, -40(%rbp)	# ulen.11, d
	.loc 1 82 0
	movq	-56(%rbp), %rax	# ulen, ulen.12
	addq	%rax, -48(%rbp)	# ulen.12, s
.L13:
.LBE2:
	.loc 1 68 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp145
	cmpq	-24(%rbp), %rax	# send, tmp145
	jb	.L16	#,
	.loc 1 85 0
	cmpl	$0, -72(%rbp)	#, grows
	je	.L17	#,
	.loc 1 86 0
	movq	-40(%rbp), %rdx	# d, d.13
	movq	-16(%rbp), %rax	# dstart, dstart.14
	subq	%rax, %rdx	# dstart.14, D.13544
	movq	%rdx, %rax	# D.13544, D.13544
	movq	%rax, %rdx	# D.13544, D.13541
	movq	-16(%rbp), %rcx	# dstart, tmp146
	movq	-88(%rbp), %rax	# sv, tmp147
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	Perl_sv_setpvn	#
	.loc 1 87 0
	movq	-16(%rbp), %rax	# dstart, tmp148
	movq	%rax, %rdi	# tmp148,
	call	Perl_safesysfree	#
	jmp	.L18	#
.L17:
	.loc 1 90 0
	movq	-40(%rbp), %rax	# d, tmp149
	movb	$0, (%rax)	#, *d_6
	.loc 1 91 0
	movq	-88(%rbp), %rax	# sv, tmp150
	movq	(%rax), %rax	# sv_19(D)->sv_any, D.13540
	movq	-40(%rbp), %rcx	# d, d.15
	movq	-16(%rbp), %rdx	# dstart, dstart.16
	subq	%rdx, %rcx	# dstart.16, D.13544
	movq	%rcx, %rdx	# D.13544, D.13544
	movq	%rdx, 8(%rax)	# D.13541, MEM[(struct XPV *)_75].xpv_cur
.L18:
	.loc 1 93 0
	movq	-88(%rbp), %rax	# sv, tmp151
	movl	12(%rax), %eax	# sv_19(D)->sv_flags, D.13539
	orl	$536870912, %eax	#, D.13539
	movl	%eax, %edx	# D.13539, D.13539
	movq	-88(%rbp), %rax	# sv, tmp152
	movl	%edx, 12(%rax)	# D.13539, sv_19(D)->sv_flags
	.loc 1 94 0
	movq	-88(%rbp), %rax	# sv, tmp153
	movl	12(%rax), %eax	# sv_19(D)->sv_flags, D.13539
	andl	$16384, %eax	#, D.13539
	testl	%eax, %eax	# D.13539
	je	.L19	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_mg_set	#
.L19:
	.loc 1 95 0 is_stmt 1
	movl	-76(%rbp), %eax	# matches, D.13536
.L20:
	.loc 1 96 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_do_trans_simple, .-S_do_trans_simple
	.section	.rodata
.LC1:
	.string	"panic: do_trans_count line %d"
	.text
	.type	S_do_trans_count, @function
S_do_trans_count:
.LFB3:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# sv, sv
	.loc 1 103 0
	movl	$0, -56(%rbp)	#, matches
	.loc 1 106 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.17
	movzbl	37(%rax), %eax	# PL_op.17_10->op_private, D.13546
	movzbl	%al, %eax	# D.13546, D.13547
	andl	$32, %eax	#, tmp88
	movl	%eax, -52(%rbp)	# tmp88, complement
	.loc 1 108 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.18
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.18_14].op_pv, tmp89
	movq	%rax, -24(%rbp)	# tmp89, tbl
	.loc 1 109 0
	cmpq	$0, -24(%rbp)	#, tbl
	jne	.L22	#,
	.loc 1 110 0
	movl	$110, %esi	#,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L22:
	.loc 1 112 0
	movq	-72(%rbp), %rax	# sv, tmp90
	movl	12(%rax), %eax	# sv_16(D)->sv_flags, D.13548
	andl	$262144, %eax	#, D.13548
	testl	%eax, %eax	# D.13548
	je	.L23	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp91
	movq	(%rax), %rax	# sv_16(D)->sv_any, D.13549
	movq	8(%rax), %rax	# MEM[(struct XPV *)_19].xpv_cur, len.20
	movq	%rax, -48(%rbp)	# len.20, len
	movq	-72(%rbp), %rax	# sv, tmp92
	movq	(%rax), %rax	# sv_16(D)->sv_any, D.13549
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, iftmp.19
	jmp	.L24	#
.L23:
	.loc 1 112 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp93
	movq	-72(%rbp), %rax	# sv, tmp94
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_2pv_flags	#
.L24:
	.loc 1 112 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.19, s
	.loc 1 113 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rdx	# len, len.21
	movq	-32(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# len.21, tmp97
	movq	%rax, -16(%rbp)	# tmp97, send
	.loc 1 115 0 discriminator 3
	movq	-72(%rbp), %rax	# sv, tmp99
	movl	12(%rax), %eax	# sv_16(D)->sv_flags, D.13548
	andl	$536870912, %eax	#, D.13548
	testl	%eax, %eax	# D.13548
	jne	.L25	#,
	.loc 1 116 0
	jmp	.L26	#
.L27:
	.loc 1 117 0
	movq	-32(%rbp), %rax	# s, s.22
	leaq	1(%rax), %rdx	#, tmp100
	movq	%rdx, -32(%rbp)	# tmp100, s
	movzbl	(%rax), %eax	# *s.22_29, D.13546
	movzbl	%al, %eax	# D.13546, D.13550
	leaq	(%rax,%rax), %rdx	#, D.13550
	movq	-24(%rbp), %rax	# tbl, tmp101
	addq	%rdx, %rax	# D.13550, D.13551
	movzwl	(%rax), %eax	# *_34, D.13552
	testw	%ax, %ax	# D.13552
	js	.L26	#,
	.loc 1 118 0
	addl	$1, -56(%rbp)	#, matches
.L26:
	.loc 1 116 0 discriminator 1
	movq	-32(%rbp), %rax	# s, tmp102
	cmpq	-16(%rbp), %rax	# send, tmp102
	jb	.L27	#,
	jmp	.L28	#
.L25:
	.loc 1 121 0
	jmp	.L29	#
.L33:
.LBB3:
	.loc 1 124 0
	movq	-16(%rbp), %rdx	# send, send.23
	movq	-32(%rbp), %rax	# s, s.24
	subq	%rax, %rdx	# s.24, D.13553
	movq	%rdx, %rax	# D.13553, D.13553
	movq	%rax, %rsi	# D.13553, D.13550
	leaq	-40(%rbp), %rdx	#, tmp103
	movq	-32(%rbp), %rax	# s, tmp104
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp104,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -8(%rbp)	# tmp105, c
	.loc 1 125 0
	cmpq	$255, -8(%rbp)	#, c
	ja	.L30	#,
	.loc 1 126 0
	movq	-8(%rbp), %rax	# c, tmp106
	leaq	(%rax,%rax), %rdx	#, D.13550
	movq	-24(%rbp), %rax	# tbl, tmp107
	addq	%rdx, %rax	# D.13550, D.13551
	movzwl	(%rax), %eax	# *_43, D.13552
	testw	%ax, %ax	# D.13552
	js	.L32	#,
	.loc 1 127 0
	addl	$1, -56(%rbp)	#, matches
	jmp	.L32	#
.L30:
	.loc 1 128 0
	cmpl	$0, -52(%rbp)	#, complement
	je	.L32	#,
	.loc 1 129 0
	addl	$1, -56(%rbp)	#, matches
.L32:
	.loc 1 130 0 discriminator 1
	movq	-40(%rbp), %rax	# ulen, ulen.25
	addq	%rax, -32(%rbp)	# ulen.25, s
.L29:
.LBE3:
	.loc 1 121 0 discriminator 1
	movq	-32(%rbp), %rax	# s, tmp108
	cmpq	-16(%rbp), %rax	# send, tmp108
	jb	.L33	#,
.L28:
	.loc 1 133 0
	movl	-56(%rbp), %eax	# matches, D.13554
	.loc 1 134 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	S_do_trans_count, .-S_do_trans_count
	.section	.rodata
	.align 8
.LC2:
	.string	"panic: do_trans_complex line %d"
	.text
	.type	S_do_trans_complex, @function
S_do_trans_complex:
.LFB4:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# sv, sv
	.loc 1 144 0
	movl	$0, -120(%rbp)	#, matches
	.loc 1 145 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.26
	movzbl	37(%rax), %eax	# PL_op.26_47->op_private, D.13556
	movzbl	%al, %eax	# D.13556, D.13557
	andl	$64, %eax	#, tmp177
	movl	%eax, -116(%rbp)	# tmp177, grows
	.loc 1 146 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.27
	movzbl	37(%rax), %eax	# PL_op.27_51->op_private, D.13556
	movzbl	%al, %eax	# D.13556, D.13557
	andl	$32, %eax	#, tmp178
	movl	%eax, -112(%rbp)	# tmp178, complement
	.loc 1 147 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.28
	movzbl	37(%rax), %eax	# PL_op.28_55->op_private, D.13556
	movzbl	%al, %eax	# D.13556, D.13557
	andl	$16, %eax	#, tmp179
	movl	%eax, -108(%rbp)	# tmp179, del
	.loc 1 148 0
	movq	$0, -64(%rbp)	#, rlen
	.loc 1 152 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.29
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.29_60].op_pv, tmp180
	movq	%rax, -40(%rbp)	# tmp180, tbl
	.loc 1 153 0
	cmpq	$0, -40(%rbp)	#, tbl
	jne	.L36	#,
	.loc 1 154 0
	movl	$154, %esi	#,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L36:
	.loc 1 156 0
	movq	-136(%rbp), %rax	# sv, tmp181
	movl	12(%rax), %eax	# sv_62(D)->sv_flags, D.13558
	andl	$262144, %eax	#, D.13558
	testl	%eax, %eax	# D.13558
	je	.L37	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# sv, tmp182
	movq	(%rax), %rax	# sv_62(D)->sv_any, D.13559
	movq	8(%rax), %rax	# MEM[(struct XPV *)_65].xpv_cur, len.31
	movq	%rax, -96(%rbp)	# len.31, len
	movq	-136(%rbp), %rax	# sv, tmp183
	movq	(%rax), %rax	# sv_62(D)->sv_any, D.13559
	movq	(%rax), %rax	# MEM[(struct XPV *)_67].xpv_pv, iftmp.30
	jmp	.L38	#
.L37:
	.loc 1 156 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp184
	movq	-136(%rbp), %rax	# sv, tmp185
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	Perl_sv_2pv_flags	#
.L38:
	.loc 1 156 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.30, s
	.loc 1 157 0 is_stmt 1 discriminator 3
	movq	-136(%rbp), %rax	# sv, tmp186
	movl	12(%rax), %eax	# sv_62(D)->sv_flags, D.13558
	andl	$536870912, %eax	#, tmp187
	movl	%eax, -104(%rbp)	# tmp187, isutf8
	.loc 1 158 0 discriminator 3
	movq	-96(%rbp), %rdx	# len, len.32
	movq	-80(%rbp), %rax	# s, tmp191
	addq	%rdx, %rax	# len.32, tmp190
	movq	%rax, -32(%rbp)	# tmp190, send
	.loc 1 160 0 discriminator 3
	cmpl	$0, -104(%rbp)	#, isutf8
	jne	.L39	#,
	.loc 1 161 0
	movq	-80(%rbp), %rax	# s, tmp192
	movq	%rax, -72(%rbp)	# tmp192, d
	movq	-72(%rbp), %rax	# d, tmp193
	movq	%rax, -24(%rbp)	# tmp193, dstart
	.loc 1 162 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.33
	movzbl	37(%rax), %eax	# PL_op.33_78->op_private, D.13556
	movzbl	%al, %eax	# D.13556, D.13557
	andl	$8, %eax	#, D.13557
	testl	%eax, %eax	# D.13557
	je	.L40	#,
.LBB4:
	.loc 1 163 0
	movq	-32(%rbp), %rax	# send, tmp194
	movq	%rax, -56(%rbp)	# tmp194, p
	.loc 1 164 0
	jmp	.L41	#
.L47:
	.loc 1 165 0
	movq	-80(%rbp), %rax	# s, tmp195
	movzbl	(%rax), %eax	# *s_1, D.13556
	movzbl	%al, %eax	# D.13556, D.13560
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp196
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_86, D.13562
	cwtl
	movl	%eax, -100(%rbp)	# tmp197, ch
	cmpl	$0, -100(%rbp)	#, ch
	js	.L42	#,
	.loc 1 166 0
	movl	-100(%rbp), %eax	# ch, tmp198
	movl	%eax, %edx	# tmp198, D.13556
	movq	-72(%rbp), %rax	# d, tmp199
	movb	%dl, (%rax)	# D.13556, *d_8
	.loc 1 167 0
	addl	$1, -120(%rbp)	#, matches
	.loc 1 168 0
	movq	-72(%rbp), %rax	# d, tmp200
	subq	$1, %rax	#, D.13563
	cmpq	-56(%rbp), %rax	# p, D.13563
	jne	.L43	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp201
	movzbl	(%rax), %edx	# *p_38, D.13556
	movq	-72(%rbp), %rax	# d, tmp202
	movzbl	(%rax), %eax	# *d_8, D.13556
	cmpb	%al, %dl	# D.13556, D.13556
	je	.L45	#,
.L43:
	.loc 1 169 0 is_stmt 1
	movq	-72(%rbp), %rax	# d, d.34
	leaq	1(%rax), %rdx	#, tmp203
	movq	%rdx, -72(%rbp)	# tmp203, d
	movq	%rax, -56(%rbp)	# d.34, p
	jmp	.L45	#
.L42:
	.loc 1 171 0
	cmpl	$-1, -100(%rbp)	#, ch
	jne	.L46	#,
	.loc 1 172 0
	movq	-72(%rbp), %rax	# d, d.35
	leaq	1(%rax), %rdx	#, tmp204
	movq	%rdx, -72(%rbp)	# tmp204, d
	movq	-80(%rbp), %rdx	# s, tmp205
	movzbl	(%rdx), %edx	# *s_1, D.13556
	movb	%dl, (%rax)	# D.13556, *d.35_97
	jmp	.L45	#
.L46:
	.loc 1 173 0
	cmpl	$-2, -100(%rbp)	#, ch
	jne	.L45	#,
	.loc 1 174 0
	addl	$1, -120(%rbp)	#, matches
.L45:
	.loc 1 175 0
	addq	$1, -80(%rbp)	#, s
.L41:
	.loc 1 164 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp206
	cmpq	-32(%rbp), %rax	# send, tmp206
	jb	.L47	#,
.LBE4:
	jmp	.L48	#
.L40:
	.loc 1 179 0
	jmp	.L49	#
.L53:
	.loc 1 180 0
	movq	-80(%rbp), %rax	# s, tmp207
	movzbl	(%rax), %eax	# *s_2, D.13556
	movzbl	%al, %eax	# D.13556, D.13560
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp208
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_105, D.13562
	cwtl
	movl	%eax, -100(%rbp)	# tmp209, ch
	cmpl	$0, -100(%rbp)	#, ch
	js	.L50	#,
	.loc 1 181 0
	addl	$1, -120(%rbp)	#, matches
	.loc 1 182 0
	movq	-72(%rbp), %rax	# d, d.36
	leaq	1(%rax), %rdx	#, tmp210
	movq	%rdx, -72(%rbp)	# tmp210, d
	movl	-100(%rbp), %edx	# ch, tmp211
	movb	%dl, (%rax)	# D.13556, *d.36_109
	jmp	.L51	#
.L50:
	.loc 1 184 0
	cmpl	$-1, -100(%rbp)	#, ch
	jne	.L52	#,
	.loc 1 185 0
	movq	-72(%rbp), %rax	# d, d.37
	leaq	1(%rax), %rdx	#, tmp212
	movq	%rdx, -72(%rbp)	# tmp212, d
	movq	-80(%rbp), %rdx	# s, tmp213
	movzbl	(%rdx), %edx	# *s_2, D.13556
	movb	%dl, (%rax)	# D.13556, *d.37_112
	jmp	.L51	#
.L52:
	.loc 1 186 0
	cmpl	$-2, -100(%rbp)	#, ch
	jne	.L51	#,
	.loc 1 187 0
	addl	$1, -120(%rbp)	#, matches
.L51:
	.loc 1 188 0
	addq	$1, -80(%rbp)	#, s
.L49:
	.loc 1 179 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp214
	cmpq	-32(%rbp), %rax	# send, tmp214
	jb	.L53	#,
.L48:
	.loc 1 191 0 discriminator 1
	movq	-72(%rbp), %rax	# d, tmp215
	movb	$0, (%rax)	#, *d_11
	.loc 1 192 0 discriminator 1
	movq	-136(%rbp), %rax	# sv, tmp216
	movq	(%rax), %rax	# sv_62(D)->sv_any, D.13559
	movq	-72(%rbp), %rcx	# d, d.38
	movq	-24(%rbp), %rdx	# dstart, dstart.39
	subq	%rdx, %rcx	# dstart.39, D.13564
	movq	%rcx, %rdx	# D.13564, D.13564
	movq	%rdx, 8(%rax)	# D.13560, MEM[(struct XPV *)_117].xpv_cur
	jmp	.L54	#
.L39:
	.loc 1 195 0
	cmpl	$0, -116(%rbp)	#, grows
	je	.L55	#,
	.loc 1 196 0
	movq	-96(%rbp), %rax	# len, len.40
	addq	%rax, %rax	# D.13560
	addq	$1, %rax	#, D.13560
	movq	%rax, %rdi	# D.13560,
	call	Perl_safesysmalloc	#
	movq	%rax, -72(%rbp)	# tmp217, d
	jmp	.L56	#
.L55:
	.loc 1 198 0
	movq	-80(%rbp), %rax	# s, tmp218
	movq	%rax, -72(%rbp)	# tmp218, d
.L56:
	.loc 1 199 0
	movq	-72(%rbp), %rax	# d, tmp219
	movq	%rax, -24(%rbp)	# tmp219, dstart
	.loc 1 200 0
	cmpl	$0, -112(%rbp)	#, complement
	je	.L57	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, del
	jne	.L57	#,
	.loc 1 201 0 is_stmt 1
	movq	-40(%rbp), %rax	# tbl, tmp220
	addq	$512, %rax	#, D.13561
	movzwl	(%rax), %eax	# *_128, D.13562
	movswq	%ax, %rax	# D.13562, tmp221
	movq	%rax, -64(%rbp)	# tmp221, rlen
.L57:
	.loc 1 207 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.41
	movzbl	37(%rax), %eax	# PL_op.41_131->op_private, D.13556
	movzbl	%al, %eax	# D.13556, D.13557
	andl	$8, %eax	#, D.13557
	testl	%eax, %eax	# D.13557
	je	.L58	#,
.LBB5:
	.loc 1 208 0
	movl	$4277009102, %eax	#, tmp285
	movq	%rax, -48(%rbp)	# tmp285, pch
	.loc 1 209 0
	jmp	.L59	#
.L72:
.LBB6:
	.loc 1 211 0
	leaq	-88(%rbp), %rdx	#, tmp222
	movq	-80(%rbp), %rax	# s, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -16(%rbp)	# tmp224, comp
	.loc 1 213 0
	cmpq	$255, -16(%rbp)	#, comp
	jbe	.L60	#,
	.loc 1 214 0
	cmpl	$0, -112(%rbp)	#, complement
	jne	.L61	#,
	.loc 1 215 0
	movq	-88(%rbp), %rdx	# len, len.42
	movq	-80(%rbp), %rcx	# s, tmp225
	movq	-72(%rbp), %rax	# d, tmp226
	movq	%rcx, %rsi	# tmp225,
	movq	%rax, %rdi	# tmp226,
	call	memcpy	#
	.loc 1 216 0
	movq	-88(%rbp), %rax	# len, len.43
	addq	%rax, -72(%rbp)	# len.43, d
	jmp	.L62	#
.L61:
	.loc 1 219 0
	addl	$1, -120(%rbp)	#, matches
	.loc 1 220 0
	cmpl	$0, -108(%rbp)	#, del
	jne	.L62	#,
	.loc 1 221 0
	cmpq	$0, -64(%rbp)	#, rlen
	je	.L63	#,
	.loc 1 222 0 discriminator 1
	movq	-16(%rbp), %rax	# comp, tmp227
	subq	$256, %rax	#, D.13560
	.loc 1 221 0 discriminator 1
	cmpq	-64(%rbp), %rax	# rlen, D.13560
	jae	.L64	#,
	.loc 1 223 0
	movq	-16(%rbp), %rax	# comp, tmp228
	addq	$1, %rax	#, D.13565
	leaq	(%rax,%rax), %rdx	#, D.13565
	movq	-40(%rbp), %rax	# tbl, tmp229
	addq	%rdx, %rax	# D.13565, D.13561
	movzwl	(%rax), %eax	# *_144, D.13562
	.loc 1 221 0
	cwtl
	jmp	.L66	#
.L64:
	.loc 1 223 0 discriminator 3
	movq	-64(%rbp), %rax	# rlen, tmp230
	addq	$256, %rax	#, D.13560
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp231
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_149, D.13562
	.loc 1 221 0 discriminator 3
	cwtl
	jmp	.L66	#
.L63:
	.loc 1 221 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# comp, tmp232
.L66:
	.loc 1 221 0 discriminator 4
	movl	%eax, -100(%rbp)	# iftmp.44, ch
	.loc 1 224 0 is_stmt 1 discriminator 4
	movl	-100(%rbp), %eax	# ch, tmp233
	cltq
	cmpq	-48(%rbp), %rax	# pch, D.13560
	je	.L67	#,
	.loc 1 225 0
	movl	-100(%rbp), %eax	# ch, tmp234
	movslq	%eax, %rdx	# tmp234, D.13560
	movq	-72(%rbp), %rax	# d, tmp235
	movq	%rdx, %rsi	# D.13560,
	movq	%rax, %rdi	# tmp235,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -72(%rbp)	# tmp236, d
	.loc 1 226 0
	movl	-100(%rbp), %eax	# ch, tmp238
	cltq
	movq	%rax, -48(%rbp)	# tmp237, pch
.L67:
	.loc 1 228 0
	movq	-88(%rbp), %rax	# len, len.46
	addq	%rax, -80(%rbp)	# len.46, s
	.loc 1 229 0
	jmp	.L59	#
.L60:
	.loc 1 233 0
	movq	-16(%rbp), %rax	# comp, tmp239
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp240
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_162, D.13562
	cwtl
	movl	%eax, -100(%rbp)	# tmp241, ch
	cmpl	$0, -100(%rbp)	#, ch
	js	.L69	#,
	.loc 1 234 0
	addl	$1, -120(%rbp)	#, matches
	.loc 1 235 0
	movl	-100(%rbp), %eax	# ch, tmp242
	cltq
	cmpq	-48(%rbp), %rax	# pch, D.13560
	je	.L70	#,
	.loc 1 236 0
	movl	-100(%rbp), %eax	# ch, tmp243
	movslq	%eax, %rdx	# tmp243, D.13560
	movq	-72(%rbp), %rax	# d, tmp244
	movq	%rdx, %rsi	# D.13560,
	movq	%rax, %rdi	# tmp244,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -72(%rbp)	# tmp245, d
	.loc 1 237 0
	movl	-100(%rbp), %eax	# ch, tmp247
	cltq
	movq	%rax, -48(%rbp)	# tmp246, pch
.L70:
	.loc 1 239 0
	movq	-88(%rbp), %rax	# len, len.47
	addq	%rax, -80(%rbp)	# len.47, s
	.loc 1 240 0
	jmp	.L59	#
.L69:
	.loc 1 242 0
	cmpl	$-1, -100(%rbp)	#, ch
	jne	.L71	#,
	.loc 1 243 0
	movq	-88(%rbp), %rdx	# len, len.48
	movq	-80(%rbp), %rcx	# s, tmp248
	movq	-72(%rbp), %rax	# d, tmp249
	movq	%rcx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	memcpy	#
	.loc 1 244 0
	movq	-88(%rbp), %rax	# len, len.49
	addq	%rax, -72(%rbp)	# len.49, d
	jmp	.L62	#
.L71:
	.loc 1 246 0
	cmpl	$-2, -100(%rbp)	#, ch
	jne	.L62	#,
	.loc 1 247 0
	addl	$1, -120(%rbp)	#, matches
.L62:
	.loc 1 248 0 discriminator 3
	movq	-88(%rbp), %rax	# len, len.50
	addq	%rax, -80(%rbp)	# len.50, s
	.loc 1 249 0 discriminator 3
	movl	$4277009102, %eax	#, tmp286
	movq	%rax, -48(%rbp)	# tmp286, pch
.L59:
.LBE6:
	.loc 1 209 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp250
	cmpq	-32(%rbp), %rax	# send, tmp250
	jb	.L72	#,
.LBE5:
	jmp	.L73	#
.L58:
	.loc 1 253 0
	jmp	.L74	#
.L82:
.LBB7:
	.loc 1 255 0
	leaq	-88(%rbp), %rdx	#, tmp251
	movq	-80(%rbp), %rax	# s, tmp252
	movq	%rdx, %rsi	# tmp251,
	movq	%rax, %rdi	# tmp252,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -8(%rbp)	# tmp253, comp
	.loc 1 256 0
	cmpq	$255, -8(%rbp)	#, comp
	jbe	.L75	#,
	.loc 1 257 0
	cmpl	$0, -112(%rbp)	#, complement
	jne	.L76	#,
	.loc 1 258 0
	movq	-88(%rbp), %rdx	# len, len.51
	movq	-80(%rbp), %rcx	# s, tmp254
	movq	-72(%rbp), %rax	# d, tmp255
	movq	%rcx, %rsi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	memmove	#
	.loc 1 259 0
	movq	-88(%rbp), %rax	# len, len.52
	addq	%rax, -72(%rbp)	# len.52, d
	jmp	.L79	#
.L76:
	.loc 1 262 0
	addl	$1, -120(%rbp)	#, matches
	.loc 1 263 0
	cmpl	$0, -108(%rbp)	#, del
	jne	.L79	#,
	.loc 1 264 0
	movq	-8(%rbp), %rax	# comp, tmp256
	subq	$256, %rax	#, D.13560
	cmpq	-64(%rbp), %rax	# rlen, D.13560
	jae	.L78	#,
	.loc 1 265 0
	movq	-8(%rbp), %rax	# comp, tmp257
	addq	$1, %rax	#, D.13565
	leaq	(%rax,%rax), %rdx	#, D.13565
	movq	-40(%rbp), %rax	# tbl, tmp258
	addq	%rdx, %rax	# D.13565, D.13561
	movzwl	(%rax), %eax	# *_187, D.13562
	movswq	%ax, %rdx	# D.13562, D.13560
	movq	-72(%rbp), %rax	# d, tmp259
	movq	%rdx, %rsi	# D.13560,
	movq	%rax, %rdi	# tmp259,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -72(%rbp)	# tmp260, d
	jmp	.L79	#
.L78:
	.loc 1 267 0
	movq	-64(%rbp), %rax	# rlen, tmp261
	addq	$256, %rax	#, D.13560
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp262
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_193, D.13562
	movswq	%ax, %rdx	# D.13562, D.13560
	movq	-72(%rbp), %rax	# d, tmp263
	movq	%rdx, %rsi	# D.13560,
	movq	%rax, %rdi	# tmp263,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -72(%rbp)	# tmp264, d
	jmp	.L79	#
.L75:
	.loc 1 271 0
	movq	-8(%rbp), %rax	# comp, tmp265
	leaq	(%rax,%rax), %rdx	#, D.13560
	movq	-40(%rbp), %rax	# tbl, tmp266
	addq	%rdx, %rax	# D.13560, D.13561
	movzwl	(%rax), %eax	# *_198, D.13562
	cwtl
	movl	%eax, -100(%rbp)	# tmp267, ch
	cmpl	$0, -100(%rbp)	#, ch
	js	.L80	#,
	.loc 1 272 0
	movl	-100(%rbp), %eax	# ch, tmp268
	movslq	%eax, %rdx	# tmp268, D.13560
	movq	-72(%rbp), %rax	# d, tmp269
	movq	%rdx, %rsi	# D.13560,
	movq	%rax, %rdi	# tmp269,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -72(%rbp)	# tmp270, d
	.loc 1 273 0
	addl	$1, -120(%rbp)	#, matches
	jmp	.L79	#
.L80:
	.loc 1 275 0
	cmpl	$-1, -100(%rbp)	#, ch
	jne	.L81	#,
	.loc 1 276 0
	movq	-88(%rbp), %rdx	# len, len.53
	movq	-80(%rbp), %rcx	# s, tmp271
	movq	-72(%rbp), %rax	# d, tmp272
	movq	%rcx, %rsi	# tmp271,
	movq	%rax, %rdi	# tmp272,
	call	memcpy	#
	.loc 1 277 0
	movq	-88(%rbp), %rax	# len, len.54
	addq	%rax, -72(%rbp)	# len.54, d
	jmp	.L79	#
.L81:
	.loc 1 279 0
	cmpl	$-2, -100(%rbp)	#, ch
	jne	.L79	#,
	.loc 1 280 0
	addl	$1, -120(%rbp)	#, matches
.L79:
	.loc 1 281 0 discriminator 2
	movq	-88(%rbp), %rax	# len, len.55
	addq	%rax, -80(%rbp)	# len.55, s
.L74:
.LBE7:
	.loc 1 253 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp273
	cmpq	-32(%rbp), %rax	# send, tmp273
	jb	.L82	#,
.L73:
	.loc 1 284 0
	cmpl	$0, -116(%rbp)	#, grows
	je	.L83	#,
	.loc 1 285 0
	movq	-72(%rbp), %rdx	# d, d.56
	movq	-24(%rbp), %rax	# dstart, dstart.57
	subq	%rax, %rdx	# dstart.57, D.13564
	movq	%rdx, %rax	# D.13564, D.13564
	movq	%rax, %rdx	# D.13564, D.13560
	movq	-24(%rbp), %rcx	# dstart, tmp274
	movq	-136(%rbp), %rax	# sv, tmp275
	movq	%rcx, %rsi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	Perl_sv_setpvn	#
	.loc 1 286 0
	movq	-24(%rbp), %rax	# dstart, tmp276
	movq	%rax, %rdi	# tmp276,
	call	Perl_safesysfree	#
	jmp	.L84	#
.L83:
	.loc 1 289 0
	movq	-72(%rbp), %rax	# d, tmp277
	movb	$0, (%rax)	#, *d_21
	.loc 1 290 0
	movq	-136(%rbp), %rax	# sv, tmp278
	movq	(%rax), %rax	# sv_62(D)->sv_any, D.13559
	movq	-72(%rbp), %rcx	# d, d.58
	movq	-24(%rbp), %rdx	# dstart, dstart.59
	subq	%rdx, %rcx	# dstart.59, D.13564
	movq	%rcx, %rdx	# D.13564, D.13564
	movq	%rdx, 8(%rax)	# D.13560, MEM[(struct XPV *)_214].xpv_cur
.L84:
	.loc 1 292 0
	movq	-136(%rbp), %rax	# sv, tmp279
	movl	12(%rax), %eax	# sv_62(D)->sv_flags, D.13558
	orl	$536870912, %eax	#, D.13558
	movl	%eax, %edx	# D.13558, D.13558
	movq	-136(%rbp), %rax	# sv, tmp280
	movl	%edx, 12(%rax)	# D.13558, sv_62(D)->sv_flags
.L54:
	.loc 1 294 0
	movq	-136(%rbp), %rax	# sv, tmp281
	movl	12(%rax), %eax	# sv_62(D)->sv_flags, D.13558
	andl	$16384, %eax	#, D.13558
	testl	%eax, %eax	# D.13558
	je	.L85	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# sv, tmp282
	movq	%rax, %rdi	# tmp282,
	call	Perl_mg_set	#
.L85:
	.loc 1 295 0 is_stmt 1
	movl	-120(%rbp), %eax	# matches, D.13566
	.loc 1 296 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	S_do_trans_complex, .-S_do_trans_complex
	.section	.rodata
.LC3:
	.string	"NONE"
.LC4:
	.string	"FINAL"
	.align 8
.LC5:
	.string	"panic: do_trans_simple_utf8 line %d"
	.text
	.type	S_do_trans_simple_utf8, @function
S_do_trans_simple_utf8:
.LFB5:
	.loc 1 300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -184(%rbp)	# sv, sv
	.loc 1 306 0
	movl	$0, -164(%rbp)	#, matches
	.loc 1 307 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.60
	movzbl	37(%rax), %eax	# PL_op.60_23->op_private, D.13569
	movzbl	%al, %eax	# D.13569, D.13570
	andl	$64, %eax	#, tmp141
	movl	%eax, -160(%rbp)	# tmp141, grows
	.loc 1 310 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.61
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.61_27].op_sv, tmp142
	movq	%rax, -88(%rbp)	# tmp142, rv
	.loc 1 311 0
	movq	-88(%rbp), %rax	# rv, tmp143
	movq	(%rax), %rax	# rv_28->sv_any, D.13571
	movq	(%rax), %rax	# MEM[(struct XRV *)_29].xrv_rv, tmp144
	movq	%rax, -80(%rbp)	# tmp144, hv
	.loc 1 312 0
	movq	-80(%rbp), %rax	# hv, tmp145
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp146, svp
	.loc 1 313 0
	cmpq	$0, -72(%rbp)	#, svp
	je	.L88	#,
	.loc 1 313 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# svp, tmp147
	movq	(%rax), %rax	# *svp_31, D.13572
	movl	12(%rax), %eax	# _32->sv_flags, D.13573
	andl	$65536, %eax	#, D.13573
	testl	%eax, %eax	# D.13573
	je	.L89	#,
	movq	-72(%rbp), %rax	# svp, tmp148
	movq	(%rax), %rax	# *svp_31, D.13572
	movq	(%rax), %rax	# _35->sv_any, D.13571
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_36].xuv_uv, iftmp.63
	jmp	.L91	#
.L89:
	.loc 1 313 0 discriminator 2
	movq	-72(%rbp), %rax	# svp, tmp149
	movq	(%rax), %rax	# *svp_31, D.13572
	movq	%rax, %rdi	# D.13572,
	call	Perl_sv_2uv	#
	jmp	.L91	#
.L88:
	movl	$2147483647, %eax	#, iftmp.62
.L91:
	.loc 1 313 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.62, none
	.loc 1 314 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# none, tmp153
	addq	$1, %rax	#, tmp152
	movq	%rax, -56(%rbp)	# tmp152, extra
	.loc 1 315 0 discriminator 3
	movq	$0, -104(%rbp)	#, final
	.loc 1 318 0 discriminator 3
	movb	$0, -166(%rbp)	#, hibit
	.loc 1 320 0 discriminator 3
	movq	-184(%rbp), %rax	# sv, tmp154
	movl	12(%rax), %eax	# sv_46(D)->sv_flags, D.13573
	andl	$262144, %eax	#, D.13573
	testl	%eax, %eax	# D.13573
	je	.L92	#,
	.loc 1 320 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# sv, tmp155
	movq	(%rax), %rax	# sv_46(D)->sv_any, D.13571
	movq	8(%rax), %rax	# MEM[(struct XPV *)_49].xpv_cur, len.65
	movq	%rax, -144(%rbp)	# len.65, len
	movq	-184(%rbp), %rax	# sv, tmp156
	movq	(%rax), %rax	# sv_46(D)->sv_any, D.13571
	movq	(%rax), %rax	# MEM[(struct XPV *)_51].xpv_pv, iftmp.64
	jmp	.L93	#
.L92:
	.loc 1 320 0 discriminator 2
	leaq	-144(%rbp), %rcx	#, tmp157
	movq	-184(%rbp), %rax	# sv, tmp158
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	Perl_sv_2pv_flags	#
.L93:
	.loc 1 320 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.64, s
	.loc 1 321 0 is_stmt 1 discriminator 3
	movq	-184(%rbp), %rax	# sv, tmp159
	movl	12(%rax), %eax	# sv_46(D)->sv_flags, D.13573
	andl	$536870912, %eax	#, tmp160
	movl	%eax, -156(%rbp)	# tmp160, isutf8
	.loc 1 322 0 discriminator 3
	cmpl	$0, -156(%rbp)	#, isutf8
	jne	.L94	#,
.LBB8:
	.loc 1 323 0
	movq	-136(%rbp), %rax	# s, tmp161
	movq	%rax, -96(%rbp)	# tmp161, t
	movq	-144(%rbp), %rdx	# len, len.66
	movq	-136(%rbp), %rax	# s, tmp165
	addq	%rdx, %rax	# len.66, tmp164
	movq	%rax, -48(%rbp)	# tmp164, e
	.loc 1 324 0
	jmp	.L95	#
.L97:
.LBB9:
	.loc 1 325 0
	movq	-96(%rbp), %rax	# t, t.67
	leaq	1(%rax), %rdx	#, tmp166
	movq	%rdx, -96(%rbp)	# tmp166, t
	movzbl	(%rax), %eax	# *t.67_61, tmp167
	movb	%al, -165(%rbp)	# tmp167, ch
	.loc 1 326 0
	movzbl	-165(%rbp), %eax	# ch, ch.68
	shrb	$7, %al	#, D.13574
	movb	%al, -166(%rbp)	# D.13574, hibit
	cmpb	$0, -166(%rbp)	#, hibit
	je	.L95	#,
	.loc 1 327 0
	jmp	.L96	#
.L95:
.LBE9:
	.loc 1 324 0 discriminator 1
	movq	-96(%rbp), %rax	# t, tmp168
	cmpq	-48(%rbp), %rax	# e, tmp168
	jb	.L97	#,
.L96:
	.loc 1 329 0
	cmpb	$0, -166(%rbp)	#, hibit
	je	.L94	#,
	.loc 1 330 0
	leaq	-144(%rbp), %rdx	#, tmp169
	movq	-136(%rbp), %rax	# s, tmp170
	movq	%rdx, %rsi	# tmp169,
	movq	%rax, %rdi	# tmp170,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -136(%rbp)	# tmp171, s
.L94:
.LBE8:
	.loc 1 332 0
	movq	-144(%rbp), %rdx	# len, len.69
	movq	-136(%rbp), %rax	# s, tmp175
	addq	%rdx, %rax	# len.69, tmp174
	movq	%rax, -40(%rbp)	# tmp174, send
	.loc 1 333 0
	movq	-136(%rbp), %rax	# s, tmp176
	movq	%rax, -32(%rbp)	# tmp176, start
	.loc 1 335 0
	movq	-80(%rbp), %rax	# hv, tmp177
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp178, svp
	.loc 1 336 0
	cmpq	$0, -72(%rbp)	#, svp
	je	.L98	#,
	.loc 1 337 0
	movq	-72(%rbp), %rax	# svp, tmp179
	movq	(%rax), %rax	# *svp_71, D.13572
	movl	12(%rax), %eax	# _72->sv_flags, D.13573
	andl	$65536, %eax	#, D.13573
	testl	%eax, %eax	# D.13573
	je	.L99	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# svp, tmp180
	movq	(%rax), %rax	# *svp_71, D.13572
	movq	(%rax), %rax	# _75->sv_any, D.13571
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_76].xuv_uv, iftmp.70
	jmp	.L100	#
.L99:
	.loc 1 337 0 discriminator 2
	movq	-72(%rbp), %rax	# svp, tmp181
	movq	(%rax), %rax	# *svp_71, D.13572
	movq	%rax, %rdi	# D.13572,
	call	Perl_sv_2uv	#
.L100:
	.loc 1 337 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.70, final
.L98:
	.loc 1 339 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, grows
	je	.L101	#,
	.loc 1 341 0
	movq	-144(%rbp), %rdx	# len, len.71
	movq	%rdx, %rax	# len.71, tmp182
	addq	%rax, %rax	# tmp182
	addq	%rdx, %rax	# len.71, D.13575
	addq	$13, %rax	#, D.13575
	movq	%rax, %rdi	# D.13575,
	call	Perl_safesysmalloc	#
	movq	%rax, -128(%rbp)	# tmp183, d
	.loc 1 342 0
	movq	-144(%rbp), %rdx	# len, len.72
	movq	%rdx, %rax	# len.72, tmp184
	addq	%rax, %rax	# tmp184
	addq	%rax, %rdx	# tmp184, D.13575
	movq	-128(%rbp), %rax	# d, tmp188
	addq	%rdx, %rax	# D.13575, tmp187
	movq	%rax, -112(%rbp)	# tmp187, dend
	.loc 1 343 0
	movq	-128(%rbp), %rax	# d, tmp189
	movq	%rax, -120(%rbp)	# tmp189, dstart
	.loc 1 350 0
	jmp	.L103	#
.L101:
	.loc 1 346 0
	movq	-136(%rbp), %rax	# s, tmp190
	movq	%rax, -128(%rbp)	# tmp190, d
	movq	-128(%rbp), %rax	# d, tmp191
	movq	%rax, -120(%rbp)	# tmp191, dstart
	.loc 1 347 0
	movq	-144(%rbp), %rdx	# len, len.73
	movq	-128(%rbp), %rax	# d, tmp195
	addq	%rdx, %rax	# len.73, tmp194
	movq	%rax, -112(%rbp)	# tmp194, dend
	.loc 1 350 0
	jmp	.L103	#
.L109:
	.loc 1 351 0
	movq	-136(%rbp), %rcx	# s, tmp196
	movq	-88(%rbp), %rax	# rv, tmp197
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	Perl_swash_fetch	#
	movq	%rax, -24(%rbp)	# tmp198, uv
	movq	-24(%rbp), %rax	# uv, tmp199
	cmpq	-64(%rbp), %rax	# none, tmp199
	jae	.L104	#,
	.loc 1 352 0
	movq	-136(%rbp), %rax	# s, tmp200
	movzbl	(%rax), %eax	# *s_3, D.13569
	movzbl	%al, %eax	# D.13569, D.13570
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13569
	movzbl	%al, %eax	# D.13569, D.13576
	addq	%rax, -136(%rbp)	# D.13576, s
	.loc 1 353 0
	addl	$1, -164(%rbp)	#, matches
	.loc 1 354 0
	movq	-24(%rbp), %rdx	# uv, tmp202
	movq	-128(%rbp), %rax	# d, tmp203
	movq	%rdx, %rsi	# tmp202,
	movq	%rax, %rdi	# tmp203,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -128(%rbp)	# tmp204, d
	jmp	.L105	#
.L104:
	.loc 1 356 0
	movq	-24(%rbp), %rax	# uv, tmp205
	cmpq	-64(%rbp), %rax	# none, tmp205
	jne	.L106	#,
.LBB10:
	.loc 1 357 0
	movq	-136(%rbp), %rax	# s, tmp206
	movzbl	(%rax), %eax	# *s_3, D.13569
	movzbl	%al, %eax	# D.13569, D.13570
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13569
	movzbl	%al, %eax	# D.13569, tmp208
	movl	%eax, -152(%rbp)	# tmp208, i
	.loc 1 358 0
	movl	-152(%rbp), %eax	# i, tmp209
	movslq	%eax, %rdx	# tmp209, D.13575
	movq	-136(%rbp), %rcx	# s, tmp210
	movq	-128(%rbp), %rax	# d, tmp211
	movq	%rcx, %rsi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	memmove	#
	.loc 1 359 0
	movl	-152(%rbp), %eax	# i, tmp212
	cltq
	addq	%rax, -128(%rbp)	# D.13576, d
	.loc 1 360 0
	movl	-152(%rbp), %eax	# i, tmp213
	cltq
	addq	%rax, -136(%rbp)	# D.13576, s
.LBE10:
	jmp	.L105	#
.L106:
	.loc 1 362 0
	movq	-24(%rbp), %rax	# uv, tmp214
	cmpq	-56(%rbp), %rax	# extra, tmp214
	jne	.L107	#,
.LBB11:
	.loc 1 363 0
	movq	-136(%rbp), %rax	# s, tmp215
	movzbl	(%rax), %eax	# *s_3, D.13569
	movzbl	%al, %eax	# D.13569, D.13570
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13569
	movzbl	%al, %eax	# D.13569, tmp217
	movl	%eax, -148(%rbp)	# tmp217, i
	.loc 1 364 0
	movl	-148(%rbp), %eax	# i, tmp218
	cltq
	addq	%rax, -136(%rbp)	# D.13576, s
	.loc 1 365 0
	addl	$1, -164(%rbp)	#, matches
	.loc 1 366 0
	movq	-104(%rbp), %rdx	# final, tmp219
	movq	-128(%rbp), %rax	# d, tmp220
	movq	%rdx, %rsi	# tmp219,
	movq	%rax, %rdi	# tmp220,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -128(%rbp)	# tmp221, d
.LBE11:
	jmp	.L105	#
.L107:
	.loc 1 369 0
	movq	-136(%rbp), %rax	# s, tmp222
	movzbl	(%rax), %eax	# *s_3, D.13569
	movzbl	%al, %eax	# D.13569, D.13570
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13569
	movzbl	%al, %eax	# D.13569, D.13576
	addq	%rax, -136(%rbp)	# D.13576, s
.L105:
	.loc 1 371 0
	movq	-128(%rbp), %rax	# d, tmp224
	cmpq	-112(%rbp), %rax	# dend, tmp224
	jbe	.L103	#,
.LBB12:
	.loc 1 372 0
	movq	-128(%rbp), %rdx	# d, d.74
	movq	-120(%rbp), %rax	# dstart, dstart.75
	subq	%rax, %rdx	# dstart.75, D.13577
	movq	%rdx, %rax	# D.13577, D.13577
	movq	%rax, -16(%rbp)	# D.13577, clen
	.loc 1 373 0
	movq	-112(%rbp), %rdx	# dend, dend.76
	movq	-120(%rbp), %rax	# dstart, dstart.77
	subq	%rax, %rdx	# dstart.77, D.13577
	movq	%rdx, %rax	# D.13577, D.13577
	movq	%rax, %rdx	# D.13577, D.13575
	movq	-144(%rbp), %rax	# len, len.78
	addq	%rdx, %rax	# D.13575, D.13575
	addq	$13, %rax	#, tmp225
	movq	%rax, -8(%rbp)	# tmp225, nlen
	.loc 1 374 0
	cmpl	$0, -160(%rbp)	#, grows
	jne	.L108	#,
	.loc 1 375 0
	movl	$375, %esi	#,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L108:
	.loc 1 376 0
	movq	-8(%rbp), %rax	# nlen, tmp226
	leaq	13(%rax), %rdx	#, D.13575
	movq	-120(%rbp), %rax	# dstart, tmp227
	movq	%rdx, %rsi	# D.13575,
	movq	%rax, %rdi	# tmp227,
	call	Perl_safesysrealloc	#
	movq	%rax, -120(%rbp)	# tmp228, dstart
	.loc 1 377 0
	movq	-16(%rbp), %rax	# clen, tmp233
	movq	-120(%rbp), %rdx	# dstart, tmp234
	addq	%rdx, %rax	# tmp234, tmp232
	movq	%rax, -128(%rbp)	# tmp232, d
	.loc 1 378 0
	movq	-8(%rbp), %rax	# nlen, tmp239
	movq	-120(%rbp), %rdx	# dstart, tmp240
	addq	%rdx, %rax	# tmp240, tmp238
	movq	%rax, -112(%rbp)	# tmp238, dend
.L103:
.LBE12:
	.loc 1 350 0 discriminator 1
	movq	-136(%rbp), %rax	# s, tmp241
	cmpq	-40(%rbp), %rax	# send, tmp241
	jb	.L109	#,
	.loc 1 381 0
	cmpl	$0, -160(%rbp)	#, grows
	jne	.L110	#,
	.loc 1 381 0 is_stmt 0 discriminator 1
	cmpb	$0, -166(%rbp)	#, hibit
	je	.L111	#,
.L110:
	.loc 1 382 0 is_stmt 1
	movq	-128(%rbp), %rdx	# d, d.79
	movq	-120(%rbp), %rax	# dstart, dstart.80
	subq	%rax, %rdx	# dstart.80, D.13577
	movq	%rdx, %rax	# D.13577, D.13577
	movq	%rax, %rdx	# D.13577, D.13575
	movq	-120(%rbp), %rcx	# dstart, tmp242
	movq	-184(%rbp), %rax	# sv, tmp243
	movq	%rcx, %rsi	# tmp242,
	movq	%rax, %rdi	# tmp243,
	call	Perl_sv_setpvn	#
	.loc 1 383 0
	movq	-120(%rbp), %rax	# dstart, tmp244
	movq	%rax, %rdi	# tmp244,
	call	Perl_safesysfree	#
	.loc 1 384 0
	cmpl	$0, -160(%rbp)	#, grows
	je	.L112	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	cmpb	$0, -166(%rbp)	#, hibit
	je	.L112	#,
	.loc 1 385 0 is_stmt 1
	movq	-32(%rbp), %rax	# start, tmp245
	movq	%rax, %rdi	# tmp245,
	call	Perl_safesysfree	#
	.loc 1 384 0
	jmp	.L113	#
.L112:
	.loc 1 384 0 is_stmt 0 discriminator 2
	jmp	.L113	#
.L111:
	.loc 1 388 0 is_stmt 1
	movq	-128(%rbp), %rax	# d, tmp246
	movb	$0, (%rax)	#, *d_6
	.loc 1 389 0
	movq	-184(%rbp), %rax	# sv, tmp247
	movq	(%rax), %rax	# sv_46(D)->sv_any, D.13571
	movq	-128(%rbp), %rcx	# d, d.81
	movq	-120(%rbp), %rdx	# dstart, dstart.82
	subq	%rdx, %rcx	# dstart.82, D.13577
	movq	%rcx, %rdx	# D.13577, D.13577
	movq	%rdx, 8(%rax)	# D.13575, MEM[(struct XPV *)_138].xpv_cur
.L113:
	.loc 1 391 0
	movq	-184(%rbp), %rax	# sv, tmp248
	movl	12(%rax), %eax	# sv_46(D)->sv_flags, D.13573
	andl	$16384, %eax	#, D.13573
	testl	%eax, %eax	# D.13573
	je	.L114	#,
	.loc 1 391 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# sv, tmp249
	movq	%rax, %rdi	# tmp249,
	call	Perl_mg_set	#
.L114:
	.loc 1 392 0 is_stmt 1
	movq	-184(%rbp), %rax	# sv, tmp250
	movl	12(%rax), %eax	# sv_46(D)->sv_flags, D.13573
	orl	$536870912, %eax	#, D.13573
	movl	%eax, %edx	# D.13573, D.13573
	movq	-184(%rbp), %rax	# sv, tmp251
	movl	%edx, 12(%rax)	# D.13573, sv_46(D)->sv_flags
	.loc 1 394 0
	movl	-164(%rbp), %eax	# matches, D.13578
	.loc 1 395 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	S_do_trans_simple_utf8, .-S_do_trans_simple_utf8
	.type	S_do_trans_count_utf8, @function
S_do_trans_count_utf8:
.LFB6:
	.loc 1 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# sv, sv
	.loc 1 401 0
	movq	$0, -80(%rbp)	#, start
	.loc 1 402 0
	movl	$0, -100(%rbp)	#, matches
	.loc 1 405 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.83
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.83_15].op_sv, tmp88
	movq	%rax, -64(%rbp)	# tmp88, rv
	.loc 1 406 0
	movq	-64(%rbp), %rax	# rv, tmp89
	movq	(%rax), %rax	# rv_16->sv_any, D.13582
	movq	(%rax), %rax	# MEM[(struct XRV *)_17].xrv_rv, tmp90
	movq	%rax, -56(%rbp)	# tmp90, hv
	.loc 1 407 0
	movq	-56(%rbp), %rax	# hv, tmp91
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	Perl_hv_fetch	#
	movq	%rax, -48(%rbp)	# tmp92, svp
	.loc 1 408 0
	cmpq	$0, -48(%rbp)	#, svp
	je	.L117	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# svp, tmp93
	movq	(%rax), %rax	# *svp_19, D.13583
	movl	12(%rax), %eax	# _20->sv_flags, D.13584
	andl	$65536, %eax	#, D.13584
	testl	%eax, %eax	# D.13584
	je	.L118	#,
	movq	-48(%rbp), %rax	# svp, tmp94
	movq	(%rax), %rax	# *svp_19, D.13583
	movq	(%rax), %rax	# _23->sv_any, D.13582
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_24].xuv_uv, iftmp.85
	jmp	.L120	#
.L118:
	.loc 1 408 0 discriminator 2
	movq	-48(%rbp), %rax	# svp, tmp95
	movq	(%rax), %rax	# *svp_19, D.13583
	movq	%rax, %rdi	# D.13583,
	call	Perl_sv_2uv	#
	jmp	.L120	#
.L117:
	movl	$2147483647, %eax	#, iftmp.84
.L120:
	.loc 1 408 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.84, none
	.loc 1 409 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# none, tmp99
	addq	$1, %rax	#, tmp98
	movq	%rax, -32(%rbp)	# tmp98, extra
	.loc 1 411 0 discriminator 3
	movb	$0, -102(%rbp)	#, hibit
	.loc 1 413 0 discriminator 3
	movq	-120(%rbp), %rax	# sv, tmp100
	movl	12(%rax), %eax	# sv_33(D)->sv_flags, D.13584
	andl	$262144, %eax	#, D.13584
	testl	%eax, %eax	# D.13584
	je	.L121	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# sv, tmp101
	movq	(%rax), %rax	# sv_33(D)->sv_any, D.13582
	movq	8(%rax), %rax	# MEM[(struct XPV *)_36].xpv_cur, len.87
	movq	%rax, -96(%rbp)	# len.87, len
	movq	-120(%rbp), %rax	# sv, tmp102
	movq	(%rax), %rax	# sv_33(D)->sv_any, D.13582
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, iftmp.86
	jmp	.L122	#
.L121:
	.loc 1 413 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp103
	movq	-120(%rbp), %rax	# sv, tmp104
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_2pv_flags	#
.L122:
	.loc 1 413 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.86, s
	.loc 1 414 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_33(D)->sv_flags, D.13584
	andl	$536870912, %eax	#, D.13584
	testl	%eax, %eax	# D.13584
	jne	.L123	#,
.LBB13:
	.loc 1 415 0
	movq	-88(%rbp), %rax	# s, tmp106
	movq	%rax, -72(%rbp)	# tmp106, t
	movq	-96(%rbp), %rdx	# len, len.88
	movq	-88(%rbp), %rax	# s, tmp110
	addq	%rdx, %rax	# len.88, tmp109
	movq	%rax, -24(%rbp)	# tmp109, e
	.loc 1 416 0
	jmp	.L124	#
.L126:
.LBB14:
	.loc 1 417 0
	movq	-72(%rbp), %rax	# t, t.89
	leaq	1(%rax), %rdx	#, tmp111
	movq	%rdx, -72(%rbp)	# tmp111, t
	movzbl	(%rax), %eax	# *t.89_47, tmp112
	movb	%al, -101(%rbp)	# tmp112, ch
	.loc 1 418 0
	movzbl	-101(%rbp), %eax	# ch, ch.90
	shrb	$7, %al	#, D.13585
	movb	%al, -102(%rbp)	# D.13585, hibit
	cmpb	$0, -102(%rbp)	#, hibit
	je	.L124	#,
	.loc 1 419 0
	jmp	.L125	#
.L124:
.LBE14:
	.loc 1 416 0 discriminator 1
	movq	-72(%rbp), %rax	# t, tmp113
	cmpq	-24(%rbp), %rax	# e, tmp113
	jb	.L126	#,
.L125:
	.loc 1 421 0
	cmpb	$0, -102(%rbp)	#, hibit
	je	.L123	#,
	.loc 1 422 0
	leaq	-96(%rbp), %rdx	#, tmp114
	movq	-88(%rbp), %rax	# s, tmp115
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -88(%rbp)	# tmp116, s
	movq	-88(%rbp), %rax	# s, tmp117
	movq	%rax, -80(%rbp)	# tmp117, start
.L123:
.LBE13:
	.loc 1 424 0
	movq	-96(%rbp), %rdx	# len, len.91
	movq	-88(%rbp), %rax	# s, tmp121
	addq	%rdx, %rax	# len.91, tmp120
	movq	%rax, -16(%rbp)	# tmp120, send
	.loc 1 426 0
	jmp	.L127	#
.L130:
	.loc 1 427 0
	movq	-88(%rbp), %rcx	# s, tmp122
	movq	-64(%rbp), %rax	# rv, tmp123
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	Perl_swash_fetch	#
	movq	%rax, -8(%rbp)	# tmp124, uv
	movq	-8(%rbp), %rax	# uv, tmp125
	cmpq	-40(%rbp), %rax	# none, tmp125
	jb	.L128	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# uv, tmp126
	cmpq	-32(%rbp), %rax	# extra, tmp126
	jne	.L129	#,
.L128:
	.loc 1 428 0 is_stmt 1
	addl	$1, -100(%rbp)	#, matches
.L129:
	.loc 1 429 0
	movq	-88(%rbp), %rax	# s, tmp127
	movzbl	(%rax), %eax	# *s_2, D.13586
	movzbl	%al, %eax	# D.13586, D.13587
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13586
	movzbl	%al, %eax	# D.13586, D.13588
	addq	%rax, -88(%rbp)	# D.13588, s
.L127:
	.loc 1 426 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp129
	cmpq	-16(%rbp), %rax	# send, tmp129
	jb	.L130	#,
	.loc 1 431 0
	cmpb	$0, -102(%rbp)	#, hibit
	je	.L131	#,
	.loc 1 432 0
	movq	-80(%rbp), %rax	# start, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_safesysfree	#
.L131:
	.loc 1 434 0
	movl	-100(%rbp), %eax	# matches, D.13589
	.loc 1 435 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	S_do_trans_count_utf8, .-S_do_trans_count_utf8
	.section	.rodata
	.align 8
.LC6:
	.string	"panic: do_trans_complex_utf8 line %d"
	.text
	.type	S_do_trans_complex_utf8, @function
S_do_trans_complex_utf8:
.LFB7:
	.loc 1 439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# sv, sv
	.loc 1 443 0
	movl	$0, -204(%rbp)	#, matches
	.loc 1 444 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.92
	movzbl	37(%rax), %eax	# PL_op.92_45->op_private, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	andl	$8, %eax	#, tmp178
	movl	%eax, -200(%rbp)	# tmp178, squash
	.loc 1 445 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.93
	movzbl	37(%rax), %eax	# PL_op.93_49->op_private, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	andl	$16, %eax	#, tmp179
	movl	%eax, -196(%rbp)	# tmp179, del
	.loc 1 446 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.94
	movzbl	37(%rax), %eax	# PL_op.94_53->op_private, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	andl	$64, %eax	#, tmp180
	movl	%eax, -192(%rbp)	# tmp180, grows
	.loc 1 447 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.95
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.95_57].op_sv, tmp181
	movq	%rax, -104(%rbp)	# tmp181, rv
	.loc 1 448 0
	movq	-104(%rbp), %rax	# rv, tmp182
	movq	(%rax), %rax	# rv_58->sv_any, D.13592
	movq	(%rax), %rax	# MEM[(struct XRV *)_59].xrv_rv, tmp183
	movq	%rax, -96(%rbp)	# tmp183, hv
	.loc 1 449 0
	movq	-96(%rbp), %rax	# hv, tmp184
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	Perl_hv_fetch	#
	movq	%rax, -88(%rbp)	# tmp185, svp
	.loc 1 450 0
	cmpq	$0, -88(%rbp)	#, svp
	je	.L134	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# svp, tmp186
	movq	(%rax), %rax	# *svp_61, D.13593
	movl	12(%rax), %eax	# _62->sv_flags, D.13594
	andl	$65536, %eax	#, D.13594
	testl	%eax, %eax	# D.13594
	je	.L135	#,
	movq	-88(%rbp), %rax	# svp, tmp187
	movq	(%rax), %rax	# *svp_61, D.13593
	movq	(%rax), %rax	# _65->sv_any, D.13592
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_66].xuv_uv, iftmp.97
	jmp	.L137	#
.L135:
	.loc 1 450 0 discriminator 2
	movq	-88(%rbp), %rax	# svp, tmp188
	movq	(%rax), %rax	# *svp_61, D.13593
	movq	%rax, %rdi	# D.13593,
	call	Perl_sv_2uv	#
	jmp	.L137	#
.L134:
	movl	$2147483647, %eax	#, iftmp.96
.L137:
	.loc 1 450 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.96, none
	.loc 1 451 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# none, tmp192
	addq	$1, %rax	#, tmp191
	movq	%rax, -72(%rbp)	# tmp191, extra
	.loc 1 452 0 discriminator 3
	movq	$0, -144(%rbp)	#, final
	.loc 1 453 0 discriminator 3
	movb	$0, -207(%rbp)	#, havefinal
	.loc 1 458 0 discriminator 3
	movb	$0, -206(%rbp)	#, hibit
	.loc 1 460 0 discriminator 3
	movq	-216(%rbp), %rax	# sv, tmp193
	movl	12(%rax), %eax	# sv_77(D)->sv_flags, D.13594
	andl	$262144, %eax	#, D.13594
	testl	%eax, %eax	# D.13594
	je	.L138	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# sv, tmp194
	movq	(%rax), %rax	# sv_77(D)->sv_any, D.13592
	movq	8(%rax), %rax	# MEM[(struct XPV *)_80].xpv_cur, len.99
	movq	%rax, -176(%rbp)	# len.99, len
	movq	-216(%rbp), %rax	# sv, tmp195
	movq	(%rax), %rax	# sv_77(D)->sv_any, D.13592
	movq	(%rax), %rax	# MEM[(struct XPV *)_82].xpv_pv, iftmp.98
	jmp	.L139	#
.L138:
	.loc 1 460 0 discriminator 2
	leaq	-176(%rbp), %rcx	#, tmp196
	movq	-216(%rbp), %rax	# sv, tmp197
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	Perl_sv_2pv_flags	#
.L139:
	.loc 1 460 0 discriminator 3
	movq	%rax, -160(%rbp)	# iftmp.98, s
	.loc 1 461 0 is_stmt 1 discriminator 3
	movq	-216(%rbp), %rax	# sv, tmp198
	movl	12(%rax), %eax	# sv_77(D)->sv_flags, D.13594
	andl	$536870912, %eax	#, tmp199
	movl	%eax, -188(%rbp)	# tmp199, isutf8
	.loc 1 462 0 discriminator 3
	cmpl	$0, -188(%rbp)	#, isutf8
	jne	.L140	#,
.LBB15:
	.loc 1 463 0
	movq	-160(%rbp), %rax	# s, tmp200
	movq	%rax, -120(%rbp)	# tmp200, t
	movq	-176(%rbp), %rdx	# len, len.100
	movq	-160(%rbp), %rax	# s, tmp204
	addq	%rdx, %rax	# len.100, tmp203
	movq	%rax, -64(%rbp)	# tmp203, e
	.loc 1 464 0
	jmp	.L141	#
.L143:
.LBB16:
	.loc 1 465 0
	movq	-120(%rbp), %rax	# t, t.101
	leaq	1(%rax), %rdx	#, tmp205
	movq	%rdx, -120(%rbp)	# tmp205, t
	movzbl	(%rax), %eax	# *t.101_92, tmp206
	movb	%al, -205(%rbp)	# tmp206, ch
	.loc 1 466 0
	movzbl	-205(%rbp), %eax	# ch, ch.102
	shrb	$7, %al	#, D.13595
	movb	%al, -206(%rbp)	# D.13595, hibit
	cmpb	$0, -206(%rbp)	#, hibit
	je	.L141	#,
	.loc 1 467 0
	jmp	.L142	#
.L141:
.LBE16:
	.loc 1 464 0 discriminator 1
	movq	-120(%rbp), %rax	# t, tmp207
	cmpq	-64(%rbp), %rax	# e, tmp207
	jb	.L143	#,
.L142:
	.loc 1 469 0
	cmpb	$0, -206(%rbp)	#, hibit
	je	.L140	#,
	.loc 1 470 0
	leaq	-176(%rbp), %rdx	#, tmp208
	movq	-160(%rbp), %rax	# s, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -160(%rbp)	# tmp210, s
.L140:
.LBE15:
	.loc 1 472 0
	movq	-176(%rbp), %rdx	# len, len.103
	movq	-160(%rbp), %rax	# s, tmp214
	addq	%rdx, %rax	# len.103, tmp213
	movq	%rax, -56(%rbp)	# tmp213, send
	.loc 1 473 0
	movq	-160(%rbp), %rax	# s, tmp215
	movq	%rax, -48(%rbp)	# tmp215, start
	.loc 1 475 0
	movq	-96(%rbp), %rax	# hv, tmp216
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	Perl_hv_fetch	#
	movq	%rax, -88(%rbp)	# tmp217, svp
	.loc 1 476 0
	cmpq	$0, -88(%rbp)	#, svp
	je	.L144	#,
	.loc 1 477 0
	movq	-88(%rbp), %rax	# svp, tmp218
	movq	(%rax), %rax	# *svp_102, D.13593
	movl	12(%rax), %eax	# _103->sv_flags, D.13594
	andl	$65536, %eax	#, D.13594
	testl	%eax, %eax	# D.13594
	je	.L145	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# svp, tmp219
	movq	(%rax), %rax	# *svp_102, D.13593
	movq	(%rax), %rax	# _106->sv_any, D.13592
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_107].xuv_uv, iftmp.104
	jmp	.L146	#
.L145:
	.loc 1 477 0 discriminator 2
	movq	-88(%rbp), %rax	# svp, tmp220
	movq	(%rax), %rax	# *svp_102, D.13593
	movq	%rax, %rdi	# D.13593,
	call	Perl_sv_2uv	#
.L146:
	.loc 1 477 0 discriminator 3
	movq	%rax, -144(%rbp)	# iftmp.104, final
	.loc 1 478 0 is_stmt 1 discriminator 3
	movb	$1, -207(%rbp)	#, havefinal
.L144:
	.loc 1 481 0
	cmpl	$0, -192(%rbp)	#, grows
	je	.L147	#,
	.loc 1 483 0
	movq	-176(%rbp), %rdx	# len, len.105
	movq	%rdx, %rax	# len.105, tmp221
	addq	%rax, %rax	# tmp221
	addq	%rdx, %rax	# len.105, D.13596
	addq	$13, %rax	#, D.13596
	movq	%rax, %rdi	# D.13596,
	call	Perl_safesysmalloc	#
	movq	%rax, -152(%rbp)	# tmp222, d
	.loc 1 484 0
	movq	-176(%rbp), %rdx	# len, len.106
	movq	%rdx, %rax	# len.106, tmp223
	addq	%rax, %rax	# tmp223
	addq	%rax, %rdx	# tmp223, D.13596
	movq	-152(%rbp), %rax	# d, tmp227
	addq	%rdx, %rax	# D.13596, tmp226
	movq	%rax, -128(%rbp)	# tmp226, dend
	.loc 1 485 0
	movq	-152(%rbp), %rax	# d, tmp228
	movq	%rax, -136(%rbp)	# tmp228, dstart
	jmp	.L148	#
.L147:
	.loc 1 488 0
	movq	-160(%rbp), %rax	# s, tmp229
	movq	%rax, -152(%rbp)	# tmp229, d
	movq	-152(%rbp), %rax	# d, tmp230
	movq	%rax, -136(%rbp)	# tmp230, dstart
	.loc 1 489 0
	movq	-176(%rbp), %rdx	# len, len.107
	movq	-152(%rbp), %rax	# d, tmp234
	addq	%rdx, %rax	# len.107, tmp233
	movq	%rax, -128(%rbp)	# tmp233, dend
.L148:
	.loc 1 492 0
	cmpl	$0, -200(%rbp)	#, squash
	je	.L149	#,
.LBB17:
	.loc 1 493 0
	movl	$4277009102, %eax	#, tmp345
	movq	%rax, -112(%rbp)	# tmp345, puv
	.loc 1 494 0
	jmp	.L150	#
.L161:
	.loc 1 495 0
	movq	-160(%rbp), %rcx	# s, tmp235
	movq	-104(%rbp), %rax	# rv, tmp236
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp235,
	movq	%rax, %rdi	# tmp236,
	call	Perl_swash_fetch	#
	movq	%rax, -40(%rbp)	# tmp237, uv
	.loc 1 497 0
	movq	-152(%rbp), %rax	# d, tmp238
	cmpq	-128(%rbp), %rax	# dend, tmp238
	jbe	.L151	#,
.LBB18:
	.loc 1 498 0
	movq	-152(%rbp), %rdx	# d, d.108
	movq	-136(%rbp), %rax	# dstart, dstart.109
	subq	%rax, %rdx	# dstart.109, D.13597
	movq	%rdx, %rax	# D.13597, D.13597
	movq	%rax, -32(%rbp)	# D.13597, clen
	.loc 1 499 0
	movq	-128(%rbp), %rdx	# dend, dend.110
	movq	-136(%rbp), %rax	# dstart, dstart.111
	subq	%rax, %rdx	# dstart.111, D.13597
	movq	%rdx, %rax	# D.13597, D.13597
	movq	%rax, %rdx	# D.13597, D.13596
	movq	-176(%rbp), %rax	# len, len.112
	addq	%rdx, %rax	# D.13596, D.13596
	addq	$13, %rax	#, tmp239
	movq	%rax, -24(%rbp)	# tmp239, nlen
	.loc 1 500 0
	cmpl	$0, -192(%rbp)	#, grows
	jne	.L152	#,
	.loc 1 501 0
	movl	$501, %esi	#,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L152:
	.loc 1 502 0
	movq	-24(%rbp), %rax	# nlen, tmp240
	leaq	13(%rax), %rdx	#, D.13596
	movq	-136(%rbp), %rax	# dstart, tmp241
	movq	%rdx, %rsi	# D.13596,
	movq	%rax, %rdi	# tmp241,
	call	Perl_safesysrealloc	#
	movq	%rax, -136(%rbp)	# tmp242, dstart
	.loc 1 503 0
	movq	-32(%rbp), %rax	# clen, tmp247
	movq	-136(%rbp), %rdx	# dstart, tmp248
	addq	%rdx, %rax	# tmp248, tmp246
	movq	%rax, -152(%rbp)	# tmp246, d
	.loc 1 504 0
	movq	-24(%rbp), %rax	# nlen, tmp253
	movq	-136(%rbp), %rdx	# dstart, tmp254
	addq	%rdx, %rax	# tmp254, tmp252
	movq	%rax, -128(%rbp)	# tmp252, dend
.L151:
.LBE18:
	.loc 1 506 0
	movq	-40(%rbp), %rax	# uv, tmp255
	cmpq	-80(%rbp), %rax	# none, tmp255
	jae	.L153	#,
	.loc 1 507 0
	addl	$1, -204(%rbp)	#, matches
	.loc 1 508 0
	movq	-160(%rbp), %rax	# s, tmp256
	movzbl	(%rax), %eax	# *s_3, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 509 0
	movq	-40(%rbp), %rax	# uv, tmp258
	cmpq	-112(%rbp), %rax	# puv, tmp258
	je	.L154	#,
	.loc 1 510 0
	movq	-40(%rbp), %rdx	# uv, tmp259
	movq	-152(%rbp), %rax	# d, tmp260
	movq	%rdx, %rsi	# tmp259,
	movq	%rax, %rdi	# tmp260,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -152(%rbp)	# tmp261, d
	.loc 1 511 0
	movq	-40(%rbp), %rax	# uv, tmp262
	movq	%rax, -112(%rbp)	# tmp262, puv
	.loc 1 513 0
	jmp	.L150	#
.L154:
	jmp	.L150	#
.L153:
	.loc 1 515 0
	movq	-40(%rbp), %rax	# uv, tmp263
	cmpq	-80(%rbp), %rax	# none, tmp263
	jne	.L155	#,
.LBB19:
	.loc 1 516 0
	movq	-160(%rbp), %rax	# s, tmp264
	movzbl	(%rax), %eax	# *s_3, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, tmp266
	movl	%eax, -184(%rbp)	# tmp266, i
	.loc 1 517 0
	movl	-184(%rbp), %eax	# i, tmp267
	movslq	%eax, %rdx	# tmp267, D.13596
	movq	-160(%rbp), %rcx	# s, tmp268
	movq	-152(%rbp), %rax	# d, tmp269
	movq	%rcx, %rsi	# tmp268,
	movq	%rax, %rdi	# tmp269,
	call	memmove	#
	.loc 1 518 0
	movl	-184(%rbp), %eax	# i, tmp270
	cltq
	addq	%rax, -152(%rbp)	# D.13598, d
	.loc 1 519 0
	movl	-184(%rbp), %eax	# i, tmp271
	cltq
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 520 0
	movl	$4277009102, %eax	#, tmp348
	movq	%rax, -112(%rbp)	# tmp348, puv
	.loc 1 521 0
	jmp	.L150	#
.L155:
.LBE19:
	.loc 1 523 0
	movq	-40(%rbp), %rax	# uv, tmp272
	cmpq	-72(%rbp), %rax	# extra, tmp272
	jne	.L156	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	cmpl	$0, -196(%rbp)	#, del
	jne	.L156	#,
	.loc 1 524 0 is_stmt 1
	addl	$1, -204(%rbp)	#, matches
	.loc 1 525 0
	cmpb	$0, -207(%rbp)	#, havefinal
	je	.L157	#,
	.loc 1 526 0
	movq	-160(%rbp), %rax	# s, tmp273
	movzbl	(%rax), %eax	# *s_3, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 527 0
	movq	-112(%rbp), %rax	# puv, tmp275
	cmpq	-144(%rbp), %rax	# final, tmp275
	je	.L159	#,
	.loc 1 528 0
	movq	-144(%rbp), %rdx	# final, tmp276
	movq	-152(%rbp), %rax	# d, tmp277
	movq	%rdx, %rsi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -152(%rbp)	# tmp278, d
	.loc 1 529 0
	movq	-144(%rbp), %rax	# final, tmp279
	movq	%rax, -112(%rbp)	# tmp279, puv
	.loc 1 542 0
	jmp	.L150	#
.L157:
.LBB20:
	.loc 1 534 0
	leaq	-168(%rbp), %rdx	#, tmp280
	movq	-160(%rbp), %rax	# s, tmp281
	movq	%rdx, %rsi	# tmp280,
	movq	%rax, %rdi	# tmp281,
	call	Perl_utf8_to_uvuni	#
	movq	%rax, -40(%rbp)	# tmp282, uv
	.loc 1 535 0
	movq	-40(%rbp), %rax	# uv, tmp283
	cmpq	-112(%rbp), %rax	# puv, tmp283
	je	.L160	#,
	.loc 1 536 0
	movq	-168(%rbp), %rdx	# len, len.113
	movq	-160(%rbp), %rcx	# s, tmp284
	movq	-152(%rbp), %rax	# d, tmp285
	movq	%rcx, %rsi	# tmp284,
	movq	%rax, %rdi	# tmp285,
	call	memmove	#
	.loc 1 537 0
	movq	-168(%rbp), %rax	# len, len.114
	addq	%rax, -152(%rbp)	# len.114, d
	.loc 1 538 0
	movq	-40(%rbp), %rax	# uv, tmp286
	movq	%rax, -112(%rbp)	# tmp286, puv
.L160:
	.loc 1 540 0
	movq	-168(%rbp), %rax	# len, len.115
	addq	%rax, -160(%rbp)	# len.115, s
.LBE20:
	.loc 1 542 0
	jmp	.L150	#
.L159:
	jmp	.L150	#
.L156:
	.loc 1 544 0
	addl	$1, -204(%rbp)	#, matches
	.loc 1 545 0
	movq	-160(%rbp), %rax	# s, tmp287
	movzbl	(%rax), %eax	# *s_3, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
.L150:
	.loc 1 494 0 discriminator 1
	movq	-160(%rbp), %rax	# s, tmp289
	cmpq	-56(%rbp), %rax	# send, tmp289
	jb	.L161	#,
.LBE17:
	jmp	.L162	#
.L149:
	.loc 1 549 0
	jmp	.L163	#
.L169:
	.loc 1 550 0
	movq	-160(%rbp), %rcx	# s, tmp290
	movq	-104(%rbp), %rax	# rv, tmp291
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp290,
	movq	%rax, %rdi	# tmp291,
	call	Perl_swash_fetch	#
	movq	%rax, -40(%rbp)	# tmp292, uv
	.loc 1 551 0
	movq	-152(%rbp), %rax	# d, tmp293
	cmpq	-128(%rbp), %rax	# dend, tmp293
	jbe	.L164	#,
.LBB21:
	.loc 1 552 0
	movq	-152(%rbp), %rdx	# d, d.116
	movq	-136(%rbp), %rax	# dstart, dstart.117
	subq	%rax, %rdx	# dstart.117, D.13597
	movq	%rdx, %rax	# D.13597, D.13597
	movq	%rax, -16(%rbp)	# D.13597, clen
	.loc 1 553 0
	movq	-128(%rbp), %rdx	# dend, dend.118
	movq	-136(%rbp), %rax	# dstart, dstart.119
	subq	%rax, %rdx	# dstart.119, D.13597
	movq	%rdx, %rax	# D.13597, D.13597
	movq	%rax, %rdx	# D.13597, D.13596
	movq	-176(%rbp), %rax	# len, len.120
	addq	%rdx, %rax	# D.13596, D.13596
	addq	$13, %rax	#, tmp294
	movq	%rax, -8(%rbp)	# tmp294, nlen
	.loc 1 554 0
	cmpl	$0, -192(%rbp)	#, grows
	jne	.L165	#,
	.loc 1 555 0
	movl	$555, %esi	#,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L165:
	.loc 1 556 0
	movq	-8(%rbp), %rax	# nlen, tmp295
	leaq	13(%rax), %rdx	#, D.13596
	movq	-136(%rbp), %rax	# dstart, tmp296
	movq	%rdx, %rsi	# D.13596,
	movq	%rax, %rdi	# tmp296,
	call	Perl_safesysrealloc	#
	movq	%rax, -136(%rbp)	# tmp297, dstart
	.loc 1 557 0
	movq	-16(%rbp), %rax	# clen, tmp302
	movq	-136(%rbp), %rdx	# dstart, tmp303
	addq	%rdx, %rax	# tmp303, tmp301
	movq	%rax, -152(%rbp)	# tmp301, d
	.loc 1 558 0
	movq	-8(%rbp), %rax	# nlen, tmp308
	movq	-136(%rbp), %rdx	# dstart, tmp309
	addq	%rdx, %rax	# tmp309, tmp307
	movq	%rax, -128(%rbp)	# tmp307, dend
.L164:
.LBE21:
	.loc 1 560 0
	movq	-40(%rbp), %rax	# uv, tmp310
	cmpq	-80(%rbp), %rax	# none, tmp310
	jae	.L166	#,
	.loc 1 561 0
	addl	$1, -204(%rbp)	#, matches
	.loc 1 562 0
	movq	-160(%rbp), %rax	# s, tmp311
	movzbl	(%rax), %eax	# *s_4, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 563 0
	movq	-40(%rbp), %rdx	# uv, tmp313
	movq	-152(%rbp), %rax	# d, tmp314
	movq	%rdx, %rsi	# tmp313,
	movq	%rax, %rdi	# tmp314,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -152(%rbp)	# tmp315, d
	.loc 1 564 0
	jmp	.L163	#
.L166:
	.loc 1 566 0
	movq	-40(%rbp), %rax	# uv, tmp316
	cmpq	-80(%rbp), %rax	# none, tmp316
	jne	.L167	#,
.LBB22:
	.loc 1 567 0
	movq	-160(%rbp), %rax	# s, tmp317
	movzbl	(%rax), %eax	# *s_4, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, tmp319
	movl	%eax, -180(%rbp)	# tmp319, i
	.loc 1 568 0
	movl	-180(%rbp), %eax	# i, tmp320
	movslq	%eax, %rdx	# tmp320, D.13596
	movq	-160(%rbp), %rcx	# s, tmp321
	movq	-152(%rbp), %rax	# d, tmp322
	movq	%rcx, %rsi	# tmp321,
	movq	%rax, %rdi	# tmp322,
	call	memmove	#
	.loc 1 569 0
	movl	-180(%rbp), %eax	# i, tmp323
	cltq
	addq	%rax, -152(%rbp)	# D.13598, d
	.loc 1 570 0
	movl	-180(%rbp), %eax	# i, tmp324
	cltq
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 571 0
	jmp	.L163	#
.L167:
.LBE22:
	.loc 1 573 0
	movq	-40(%rbp), %rax	# uv, tmp325
	cmpq	-72(%rbp), %rax	# extra, tmp325
	jne	.L168	#,
	.loc 1 573 0 is_stmt 0 discriminator 1
	cmpl	$0, -196(%rbp)	#, del
	jne	.L168	#,
	.loc 1 574 0 is_stmt 1
	addl	$1, -204(%rbp)	#, matches
	.loc 1 575 0
	movq	-160(%rbp), %rax	# s, tmp326
	movzbl	(%rax), %eax	# *s_4, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
	.loc 1 576 0
	movq	-144(%rbp), %rdx	# final, tmp328
	movq	-152(%rbp), %rax	# d, tmp329
	movq	%rdx, %rsi	# tmp328,
	movq	%rax, %rdi	# tmp329,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -152(%rbp)	# tmp330, d
	.loc 1 577 0
	jmp	.L163	#
.L168:
	.loc 1 579 0
	addl	$1, -204(%rbp)	#, matches
	.loc 1 580 0
	movq	-160(%rbp), %rax	# s, tmp331
	movzbl	(%rax), %eax	# *s_4, D.13590
	movzbl	%al, %eax	# D.13590, D.13591
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13590
	movzbl	%al, %eax	# D.13590, D.13598
	addq	%rax, -160(%rbp)	# D.13598, s
.L163:
	.loc 1 549 0 discriminator 1
	movq	-160(%rbp), %rax	# s, tmp333
	cmpq	-56(%rbp), %rax	# send, tmp333
	jb	.L169	#,
.L162:
	.loc 1 583 0
	cmpl	$0, -192(%rbp)	#, grows
	jne	.L170	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	cmpb	$0, -206(%rbp)	#, hibit
	je	.L171	#,
.L170:
	.loc 1 584 0 is_stmt 1
	movq	-152(%rbp), %rdx	# d, d.121
	movq	-136(%rbp), %rax	# dstart, dstart.122
	subq	%rax, %rdx	# dstart.122, D.13597
	movq	%rdx, %rax	# D.13597, D.13597
	movq	%rax, %rdx	# D.13597, D.13596
	movq	-136(%rbp), %rcx	# dstart, tmp334
	movq	-216(%rbp), %rax	# sv, tmp335
	movq	%rcx, %rsi	# tmp334,
	movq	%rax, %rdi	# tmp335,
	call	Perl_sv_setpvn	#
	.loc 1 585 0
	movq	-136(%rbp), %rax	# dstart, tmp336
	movq	%rax, %rdi	# tmp336,
	call	Perl_safesysfree	#
	.loc 1 586 0
	cmpl	$0, -192(%rbp)	#, grows
	je	.L172	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	cmpb	$0, -206(%rbp)	#, hibit
	je	.L172	#,
	.loc 1 587 0 is_stmt 1
	movq	-48(%rbp), %rax	# start, tmp337
	movq	%rax, %rdi	# tmp337,
	call	Perl_safesysfree	#
	.loc 1 586 0
	jmp	.L173	#
.L172:
	.loc 1 586 0 is_stmt 0 discriminator 2
	jmp	.L173	#
.L171:
	.loc 1 590 0 is_stmt 1
	movq	-152(%rbp), %rax	# d, tmp338
	movb	$0, (%rax)	#, *d_14
	.loc 1 591 0
	movq	-216(%rbp), %rax	# sv, tmp339
	movq	(%rax), %rax	# sv_77(D)->sv_any, D.13592
	movq	-152(%rbp), %rcx	# d, d.123
	movq	-136(%rbp), %rdx	# dstart, dstart.124
	subq	%rdx, %rcx	# dstart.124, D.13597
	movq	%rcx, %rdx	# D.13597, D.13597
	movq	%rdx, 8(%rax)	# D.13596, MEM[(struct XPV *)_226].xpv_cur
.L173:
	.loc 1 593 0
	movq	-216(%rbp), %rax	# sv, tmp340
	movl	12(%rax), %eax	# sv_77(D)->sv_flags, D.13594
	orl	$536870912, %eax	#, D.13594
	movl	%eax, %edx	# D.13594, D.13594
	movq	-216(%rbp), %rax	# sv, tmp341
	movl	%edx, 12(%rax)	# D.13594, sv_77(D)->sv_flags
	.loc 1 594 0
	movq	-216(%rbp), %rax	# sv, tmp342
	movl	12(%rax), %eax	# sv_77(D)->sv_flags, D.13594
	andl	$16384, %eax	#, D.13594
	testl	%eax, %eax	# D.13594
	je	.L174	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# sv, tmp343
	movq	%rax, %rdi	# tmp343,
	call	Perl_mg_set	#
.L174:
	.loc 1 596 0 is_stmt 1
	movl	-204(%rbp), %eax	# matches, D.13599
	.loc 1 597 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	S_do_trans_complex_utf8, .-S_do_trans_complex_utf8
	.globl	Perl_do_trans
	.type	Perl_do_trans, @function
Perl_do_trans:
.LFB8:
	.loc 1 601 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 603 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.125
	movzbl	37(%rax), %eax	# PL_op.125_2->op_private, D.13602
	movzbl	%al, %eax	# D.13602, D.13603
	andl	$3, %eax	#, tmp101
	movl	%eax, -12(%rbp)	# tmp101, hasutf
	.loc 1 606 0
	movq	-24(%rbp), %rax	# sv, tmp102
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$8388608, %eax	#, D.13604
	testl	%eax, %eax	# D.13604
	je	.L177	#,
	.loc 1 607 0
	movq	-24(%rbp), %rax	# sv, tmp103
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$1048576, %eax	#, D.13604
	testl	%eax, %eax	# D.13604
	je	.L178	#,
	.loc 1 608 0
	movq	-24(%rbp), %rax	# sv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_force_normal	#
.L178:
	.loc 1 609 0
	movq	-24(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$8388608, %eax	#, D.13604
	testl	%eax, %eax	# D.13604
	je	.L177	#,
	.loc 1 609 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.126
	movzbl	37(%rax), %eax	# PL_op.126_13->op_private, D.13602
	movzbl	%al, %eax	# D.13602, D.13603
	andl	$4, %eax	#, D.13603
	testl	%eax, %eax	# D.13603
	jne	.L177	#,
	.loc 1 610 0 is_stmt 1
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L177:
	.loc 1 612 0
	movq	-24(%rbp), %rax	# sv, tmp106
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$262144, %eax	#, D.13604
	testl	%eax, %eax	# D.13604
	je	.L179	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp107
	movq	(%rax), %rax	# sv_6(D)->sv_any, D.13605
	movq	8(%rax), %rax	# MEM[(struct XPV *)_19].xpv_cur, len.127
	movq	%rax, -8(%rbp)	# len.127, len
	jmp	.L180	#
.L179:
	.loc 1 612 0 discriminator 2
	leaq	-8(%rbp), %rcx	#, tmp109
	movq	-24(%rbp), %rax	# sv, tmp110
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_2pv_flags	#
.L180:
	.loc 1 613 0 is_stmt 1
	movq	-8(%rbp), %rax	# len, len.128
	testq	%rax, %rax	# len.128
	jne	.L181	#,
	.loc 1 614 0
	movl	$0, %eax	#, D.13601
	jmp	.L192	#
.L181:
	.loc 1 615 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.129
	movzbl	37(%rax), %eax	# PL_op.129_24->op_private, D.13602
	movzbl	%al, %eax	# D.13602, D.13603
	andl	$4, %eax	#, D.13603
	testl	%eax, %eax	# D.13603
	jne	.L183	#,
	.loc 1 616 0
	movq	-24(%rbp), %rax	# sv, tmp111
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$67108864, %eax	#, D.13604
	testl	%eax, %eax	# D.13604
	jne	.L184	#,
	.loc 1 617 0
	movq	-24(%rbp), %rax	# sv, tmp112
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$10223616, %eax	#, D.13604
	cmpl	$262144, %eax	#, D.13604
	jne	.L185	#,
	.loc 1 617 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp113
	movq	(%rax), %rax	# sv_6(D)->sv_any, D.13605
	movq	8(%rax), %rax	# MEM[(struct XPV *)_32].xpv_cur, len.130
	movq	%rax, -8(%rbp)	# len.130, len
	jmp	.L184	#
.L185:
	.loc 1 617 0 discriminator 2
	leaq	-8(%rbp), %rcx	#, tmp115
	movq	-24(%rbp), %rax	# sv, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_pvn_force_flags	#
.L184:
	.loc 1 618 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp117
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	andl	$1760624639, %eax	#, D.13604
	movl	%eax, %edx	# D.13604, D.13604
	movq	-24(%rbp), %rax	# sv, tmp118
	movl	%edx, 12(%rax)	# D.13604, sv_6(D)->sv_flags
	movq	-24(%rbp), %rax	# sv, tmp119
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.13604
	orl	$67371008, %eax	#, D.13604
	movl	%eax, %edx	# D.13604, D.13604
	movq	-24(%rbp), %rax	# sv, tmp120
	movl	%edx, 12(%rax)	# D.13604, sv_6(D)->sv_flags
.L183:
	.loc 1 623 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.131
	movzbl	37(%rax), %eax	# PL_op.131_39->op_private, D.13602
	movzbl	%al, %eax	# D.13602, D.13603
	movl	-12(%rbp), %edx	# hasutf, tmp121
	notl	%edx	# D.13603
	andl	%edx, %eax	# D.13603, D.13603
	andl	$63, %eax	#, D.13603
	cmpl	$4, %eax	#, D.13603
	je	.L187	#,
	cmpl	$36, %eax	#, D.13603
	je	.L187	#,
	testl	%eax, %eax	# D.13603
	jne	.L193	#,
	.loc 1 627 0
	cmpl	$0, -12(%rbp)	#, hasutf
	je	.L189	#,
	.loc 1 628 0
	movq	-24(%rbp), %rax	# sv, tmp122
	movq	%rax, %rdi	# tmp122,
	call	S_do_trans_simple_utf8	#
	jmp	.L192	#
.L189:
	.loc 1 630 0
	movq	-24(%rbp), %rax	# sv, tmp123
	movq	%rax, %rdi	# tmp123,
	call	S_do_trans_simple	#
	jmp	.L192	#
.L187:
	.loc 1 634 0
	cmpl	$0, -12(%rbp)	#, hasutf
	je	.L190	#,
	.loc 1 635 0
	movq	-24(%rbp), %rax	# sv, tmp124
	movq	%rax, %rdi	# tmp124,
	call	S_do_trans_count_utf8	#
	jmp	.L192	#
.L190:
	.loc 1 637 0
	movq	-24(%rbp), %rax	# sv, tmp125
	movq	%rax, %rdi	# tmp125,
	call	S_do_trans_count	#
	jmp	.L192	#
.L193:
	.loc 1 640 0
	cmpl	$0, -12(%rbp)	#, hasutf
	je	.L191	#,
	.loc 1 641 0
	movq	-24(%rbp), %rax	# sv, tmp126
	movq	%rax, %rdi	# tmp126,
	call	S_do_trans_complex_utf8	#
	jmp	.L192	#
.L191:
	.loc 1 643 0
	movq	-24(%rbp), %rax	# sv, tmp127
	movq	%rax, %rdi	# tmp127,
	call	S_do_trans_complex	#
.L192:
	.loc 1 645 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_do_trans, .-Perl_do_trans
	.section	.rodata
.LC7:
	.string	""
	.text
	.globl	Perl_do_join
	.type	Perl_do_join, @function
Perl_do_join:
.LFB9:
	.loc 1 649 0
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
	subq	$56, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %r12	# sv, sv
	movq	%rsi, -88(%rbp)	# del, del
	movq	%rdx, %rbx	# mark, mark
	movq	%rcx, %r15	# sp, sp
	.loc 1 650 0
	movq	%rbx, -56(%rbp)	# mark, oldmark
	.loc 1 651 0
	movq	%r15, %rdx	# sp, sp.132
	movq	%rbx, %rax	# mark, mark.133
	subq	%rax, %rdx	# mark.133, D.13606
	movq	%rdx, %rax	# D.13606, D.13606
	sarq	$3, %rax	#, tmp131
	movl	%eax, %r13d	# D.13606, items
	.loc 1 656 0
	movq	-88(%rbp), %rax	# del, tmp132
	movl	12(%rax), %eax	# del_21(D)->sv_flags, D.13607
	andl	$262144, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	je	.L195	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# del, tmp133
	movq	(%rax), %rax	# del_21(D)->sv_any, D.13608
	movq	8(%rax), %rax	# MEM[(struct XPV *)_24].xpv_cur, delimlen.134
	movq	%rax, -72(%rbp)	# delimlen.134, delimlen
	jmp	.L196	#
.L195:
	.loc 1 656 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp135
	movq	-88(%rbp), %rax	# del, tmp136
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	Perl_sv_2pv_flags	#
.L196:
	.loc 1 659 0 is_stmt 1
	addq	$8, %rbx	#, mark
	.loc 1 660 0
	testl	%r13d, %r13d	# items
	jle	.L197	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	leal	-1(%r13), %eax	#, D.13609
	movslq	%eax, %rdx	# D.13609, D.13610
	movq	-72(%rbp), %rax	# delimlen, delimlen.136
	imulq	%rdx, %rax	# D.13610, iftmp.135
	jmp	.L198	#
.L197:
	.loc 1 660 0 discriminator 2
	movl	$0, %eax	#, iftmp.135
.L198:
	.loc 1 660 0 discriminator 3
	movq	%rax, %r14	# iftmp.135, len
	.loc 1 661 0 is_stmt 1 discriminator 3
	movl	12(%r12), %eax	# sv_34(D)->sv_flags, D.13607
	movzbl	%al, %eax	# D.13607, D.13607
	cmpl	$3, %eax	#, D.13607
	ja	.L199	#,
	.loc 1 661 0 is_stmt 0 discriminator 2
	movl	$4, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.13611
	je	.L201	#,
.L199:
	.loc 1 661 0 discriminator 1
	nop
.L201:
	.loc 1 662 0 is_stmt 1
	movq	(%r12), %rax	# sv_34(D)->sv_any, D.13608
	movq	16(%rax), %rax	# MEM[(struct XPV *)_40].xpv_len, D.13610
	movslq	%r13d, %rdx	# items, D.13610
	addq	%r14, %rdx	# len, D.13610
	cmpq	%rdx, %rax	# D.13610, D.13610
	jae	.L202	#,
	.loc 1 663 0
	jmp	.L203	#
.L207:
	.loc 1 664 0
	movq	(%rbx), %rax	# *mark_1, D.13612
	testq	%rax, %rax	# D.13612
	je	.L204	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *mark_1, D.13612
	movl	12(%rax), %eax	# _47->sv_flags, D.13607
	andl	$268443648, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	jne	.L204	#,
	movq	(%rbx), %rax	# *mark_1, D.13612
	movl	12(%rax), %eax	# _50->sv_flags, D.13607
	andl	$118423552, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	je	.L204	#,
	.loc 1 665 0 is_stmt 1
	movq	(%rbx), %rax	# *mark_1, D.13612
	movl	12(%rax), %eax	# _53->sv_flags, D.13607
	andl	$262144, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	je	.L205	#,
	.loc 1 665 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *mark_1, D.13612
	movq	(%rax), %rax	# _56->sv_any, D.13608
	movq	8(%rax), %rax	# MEM[(struct XPV *)_57].xpv_cur, tmplen.139
	movq	%rax, -64(%rbp)	# tmplen.139, tmplen
	jmp	.L206	#
.L205:
	.loc 1 665 0 discriminator 2
	movq	(%rbx), %rax	# *mark_1, D.13612
	leaq	-64(%rbp), %rcx	#, tmp137
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp137,
	movq	%rax, %rdi	# D.13612,
	call	Perl_sv_2pv_flags	#
.L206:
	.loc 1 666 0 is_stmt 1
	movq	-64(%rbp), %rax	# tmplen, tmplen.140
	addq	%rax, %r14	# tmplen.140, len
.L204:
	.loc 1 668 0
	addq	$8, %rbx	#, mark
.L203:
	.loc 1 663 0 discriminator 1
	movl	%r13d, %eax	# items, items.141
	leal	-1(%rax), %r13d	#, items
	testl	%eax, %eax	# items.141
	jg	.L207	#,
	.loc 1 670 0
	movq	(%r12), %rax	# sv_34(D)->sv_any, D.13608
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_67].xpv_len, D.13610
	leaq	1(%r14), %rax	#, D.13610
	cmpq	%rax, %rdx	# D.13610, D.13610
	jae	.L209	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	leaq	1(%r14), %rax	#, D.13610
	movq	%rax, %rsi	# D.13610,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_grow	#
.L209:
	.loc 1 672 0 is_stmt 1
	movq	-56(%rbp), %rbx	# oldmark, mark
	.loc 1 673 0
	movq	%r15, %rdx	# sp, sp.143
	movq	%rbx, %rax	# mark, mark.144
	subq	%rax, %rdx	# mark.144, D.13606
	movq	%rdx, %rax	# D.13606, D.13606
	sarq	$3, %rax	#, tmp138
	movl	%eax, %r13d	# D.13606, items
	.loc 1 674 0
	addq	$8, %rbx	#, mark
.L202:
	.loc 1 677 0
	movl	$0, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setpvn	#
	.loc 1 679 0
	movl	12(%r12), %eax	# sv_34(D)->sv_flags, D.13607
	andl	$-536870913, %eax	#, D.13607
	movl	%eax, 12(%r12)	# D.13607, sv_34(D)->sv_flags
	.loc 1 681 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.145
	testb	%al, %al	# PL_tainting.145
	je	.L210	#,
	.loc 1 681 0 is_stmt 0 discriminator 1
	movl	12(%r12), %eax	# sv_34(D)->sv_flags, D.13607
	andl	$57344, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	je	.L210	#,
	.loc 1 682 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.146
	testb	%al, %al	# PL_tainting.146
	je	.L210	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# sv,
	call	Perl_sv_untaint	#
.L210:
	.loc 1 684 0 is_stmt 1
	movl	%r13d, %eax	# items, items.147
	leal	-1(%rax), %r13d	#, items
	testl	%eax, %eax	# items.147
	jle	.L211	#,
	.loc 1 685 0
	movq	(%rbx), %rax	# *mark_2, D.13612
	testq	%rax, %rax	# D.13612
	je	.L212	#,
	.loc 1 686 0
	movq	(%rbx), %rax	# *mark_2, D.13612
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.13612,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catsv_flags	#
.L212:
	.loc 1 687 0
	addq	$8, %rbx	#, mark
.L211:
	.loc 1 690 0
	movq	-72(%rbp), %rax	# delimlen, delimlen.148
	testq	%rax, %rax	# delimlen.148
	je	.L213	#,
	.loc 1 691 0
	jmp	.L214	#
.L215:
	.loc 1 692 0 discriminator 2
	movq	-88(%rbp), %rax	# del, tmp139
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp139,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catsv_flags	#
	.loc 1 693 0 discriminator 2
	movq	(%rbx), %rax	# *mark_4, D.13612
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.13612,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catsv_flags	#
	.loc 1 691 0 discriminator 2
	subl	$1, %r13d	#, items
	addq	$8, %rbx	#, mark
.L214:
	.loc 1 691 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# items
	jg	.L215	#,
	jmp	.L216	#
.L213:
	.loc 1 697 0 is_stmt 1
	jmp	.L217	#
.L218:
	.loc 1 698 0 discriminator 2
	movq	(%rbx), %rax	# *mark_5, D.13612
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.13612,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catsv_flags	#
	.loc 1 697 0 discriminator 2
	subl	$1, %r13d	#, items
	addq	$8, %rbx	#, mark
.L217:
	.loc 1 697 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# items
	jg	.L218	#,
.L216:
	.loc 1 700 0 is_stmt 1
	movl	12(%r12), %eax	# sv_34(D)->sv_flags, D.13607
	andl	$16384, %eax	#, D.13607
	testl	%eax, %eax	# D.13607
	je	.L194	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# sv,
	call	Perl_mg_set	#
.L194:
	.loc 1 701 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_do_join, .-Perl_do_join
	.globl	Perl_do_sprintf
	.type	Perl_do_sprintf, @function
Perl_do_sprintf:
.LFB10:
	.loc 1 705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movl	%esi, -44(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# sarg, sarg
	.loc 1 707 0
	movq	-56(%rbp), %rax	# sarg, tmp87
	movq	(%rax), %rax	# *sarg_2(D), D.13614
	movl	12(%rax), %eax	# _3->sv_flags, D.13615
	andl	$262144, %eax	#, D.13615
	testl	%eax, %eax	# D.13615
	je	.L221	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sarg, tmp88
	movq	(%rax), %rax	# *sarg_2(D), D.13614
	movq	(%rax), %rax	# _6->sv_any, D.13616
	movq	8(%rax), %rax	# MEM[(struct XPV *)_7].xpv_cur, patlen.150
	movq	%rax, -16(%rbp)	# patlen.150, patlen
	movq	-56(%rbp), %rax	# sarg, tmp89
	movq	(%rax), %rax	# *sarg_2(D), D.13614
	movq	(%rax), %rax	# _9->sv_any, D.13616
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, iftmp.149
	jmp	.L222	#
.L221:
	.loc 1 707 0 discriminator 2
	movq	-56(%rbp), %rax	# sarg, tmp90
	movq	(%rax), %rax	# *sarg_2(D), D.13614
	leaq	-16(%rbp), %rcx	#, tmp91
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.13614,
	call	Perl_sv_2pv_flags	#
.L222:
	.loc 1 707 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.149, pat
	.loc 1 708 0 is_stmt 1 discriminator 3
	movb	$0, -17(%rbp)	#, do_taint
	.loc 1 710 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp92
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.13615
	andl	$-536870913, %eax	#, D.13615
	movl	%eax, %edx	# D.13615, D.13615
	movq	-40(%rbp), %rax	# sv, tmp93
	movl	%edx, 12(%rax)	# D.13615, sv_15(D)->sv_flags
	.loc 1 711 0 discriminator 3
	movq	-56(%rbp), %rax	# sarg, tmp94
	movq	(%rax), %rax	# *sarg_2(D), D.13614
	movl	12(%rax), %eax	# _18->sv_flags, D.13615
	andl	$536870912, %eax	#, D.13615
	testl	%eax, %eax	# D.13615
	je	.L223	#,
	.loc 1 711 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.151
	movzbl	37(%rax), %eax	# PL_curcop.151_21->op_private, D.13617
	movzbl	%al, %eax	# D.13617, D.13618
	andl	$8, %eax	#, D.13618
	testl	%eax, %eax	# D.13618
	jne	.L223	#,
	.loc 1 712 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp95
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.13615
	orl	$536870912, %eax	#, D.13615
	movl	%eax, %edx	# D.13615, D.13615
	movq	-40(%rbp), %rax	# sv, tmp96
	movl	%edx, 12(%rax)	# D.13615, sv_15(D)->sv_flags
.L223:
	.loc 1 713 0
	movl	-44(%rbp), %eax	# len, tmp97
	leal	-1(%rax), %r8d	#, D.13618
	movq	-56(%rbp), %rax	# sarg, tmp98
	leaq	8(%rax), %rdi	#, D.13619
	movq	-16(%rbp), %rdx	# patlen, patlen.152
	movq	-8(%rbp), %rsi	# pat, tmp99
	movq	-40(%rbp), %rax	# sv, tmp100
	leaq	-17(%rbp), %rcx	#, tmp101
	movq	%rcx, (%rsp)	# tmp101,
	movl	%r8d, %r9d	# D.13618,
	movq	%rdi, %r8	# D.13619,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp100,
	call	Perl_sv_vsetpvfn	#
	.loc 1 714 0
	movq	-40(%rbp), %rax	# sv, tmp102
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.13615
	andl	$16384, %eax	#, D.13615
	testl	%eax, %eax	# D.13615
	je	.L224	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	Perl_mg_set	#
.L224:
	.loc 1 715 0 is_stmt 1
	movzbl	-17(%rbp), %eax	# do_taint, do_taint.153
	testb	%al, %al	# do_taint.153
	je	.L220	#,
	.loc 1 716 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.154
	testb	%al, %al	# PL_tainting.154
	je	.L220	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_taint	#
.L220:
	.loc 1 717 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_do_sprintf, .-Perl_do_sprintf
	.section	.rodata
.LC8:
	.string	"Illegal number of bits in vec"
	.align 8
.LC9:
	.string	"Bit vector size > 32 non-portable"
	.text
	.globl	Perl_do_vecget
	.type	Perl_do_vecget, @function
Perl_do_vecget:
.LFB11:
	.loc 1 722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movl	%esi, -44(%rbp)	# offset, offset
	movl	%edx, -48(%rbp)	# size, size
	.loc 1 724 0
	movq	-40(%rbp), %rax	# sv, tmp459
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.13621
	andl	$262144, %eax	#, D.13621
	testl	%eax, %eax	# D.13621
	je	.L227	#,
	.loc 1 724 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp460
	movq	(%rax), %rax	# sv_7(D)->sv_any, D.13622
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, srclen.156
	movq	%rax, -32(%rbp)	# srclen.156, srclen
	movq	-40(%rbp), %rax	# sv, tmp461
	movq	(%rax), %rax	# sv_7(D)->sv_any, D.13622
	movq	(%rax), %rax	# MEM[(struct XPV *)_12].xpv_pv, iftmp.155
	jmp	.L228	#
.L227:
	.loc 1 724 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp462
	movq	-40(%rbp), %rax	# sv, tmp463
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp462,
	movq	%rax, %rdi	# tmp463,
	call	Perl_sv_2pv_flags	#
.L228:
	.loc 1 724 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.155, s
	.loc 1 725 0 is_stmt 1 discriminator 3
	movq	$0, -24(%rbp)	#, retnum
	.loc 1 727 0 discriminator 3
	cmpl	$0, -44(%rbp)	#, offset
	jns	.L229	#,
	.loc 1 728 0
	movq	-24(%rbp), %rax	# retnum, D.13620
	jmp	.L263	#
.L229:
	.loc 1 729 0
	cmpl	$0, -48(%rbp)	#, size
	jle	.L231	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# size, tmp464
	subl	$1, %eax	#, D.13623
	andl	-48(%rbp), %eax	# size, D.13623
	testl	%eax, %eax	# D.13623
	je	.L232	#,
.L231:
	.loc 1 730 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L232:
	.loc 1 732 0
	movq	-40(%rbp), %rax	# sv, tmp465
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.13621
	andl	$536870912, %eax	#, D.13621
	testl	%eax, %eax	# D.13621
	je	.L233	#,
	.loc 1 733 0
	movq	-40(%rbp), %rax	# sv, tmp466
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp466,
	call	Perl_sv_utf8_downgrade	#
.L233:
	.loc 1 735 0
	movl	-44(%rbp), %eax	# offset, tmp468
	imull	-48(%rbp), %eax	# size, tmp467
	movl	%eax, -44(%rbp)	# tmp467, offset
	.loc 1 736 0
	movl	-48(%rbp), %eax	# size, tmp469
	movl	-44(%rbp), %edx	# offset, tmp470
	addl	%edx, %eax	# tmp470, D.13623
	addl	$7, %eax	#, D.13623
	leal	7(%rax), %edx	#, tmp472
	testl	%eax, %eax	# tmp471
	cmovs	%edx, %eax	# tmp472,, tmp471
	sarl	$3, %eax	#, tmp473
	cltq
	movq	%rax, -8(%rbp)	# tmp474, len
	.loc 1 737 0
	movq	-32(%rbp), %rax	# srclen, srclen.157
	cmpq	%rax, -8(%rbp)	# srclen.157, len
	jbe	.L234	#,
	.loc 1 738 0
	cmpl	$8, -48(%rbp)	#, size
	jg	.L235	#,
	.loc 1 739 0
	movq	$0, -24(%rbp)	#, retnum
	jmp	.L255	#
.L235:
	.loc 1 741 0
	sarl	$3, -44(%rbp)	#, offset
	.loc 1 742 0
	cmpl	$16, -48(%rbp)	#, size
	jne	.L237	#,
	.loc 1 743 0
	movl	-44(%rbp), %eax	# offset, tmp475
	movslq	%eax, %rdx	# tmp475, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.158
	cmpq	%rax, %rdx	# srclen.158, D.13624
	jb	.L238	#,
	.loc 1 744 0
	movq	$0, -24(%rbp)	#, retnum
	jmp	.L255	#
.L238:
	.loc 1 746 0
	movl	-44(%rbp), %eax	# offset, tmp476
	movslq	%eax, %rdx	# tmp476, D.13625
	movq	-16(%rbp), %rax	# s, tmp477
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_36, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$8, %rax	#, tmp478
	movq	%rax, -24(%rbp)	# tmp478, retnum
	jmp	.L255	#
.L237:
	.loc 1 748 0
	cmpl	$32, -48(%rbp)	#, size
	jne	.L240	#,
	.loc 1 749 0
	movl	-44(%rbp), %eax	# offset, tmp479
	movslq	%eax, %rdx	# tmp479, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.159
	cmpq	%rax, %rdx	# srclen.159, D.13624
	jb	.L241	#,
	.loc 1 750 0
	movq	$0, -24(%rbp)	#, retnum
	jmp	.L255	#
.L241:
	.loc 1 751 0
	movl	-44(%rbp), %eax	# offset, tmp480
	addl	$1, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.160
	cmpq	%rax, %rdx	# srclen.160, D.13624
	jb	.L243	#,
	.loc 1 753 0
	movl	-44(%rbp), %eax	# offset, tmp481
	movslq	%eax, %rdx	# tmp481, D.13625
	movq	-16(%rbp), %rax	# s, tmp482
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_47, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	.loc 1 752 0
	salq	$24, %rax	#, tmp483
	movq	%rax, -24(%rbp)	# tmp483, retnum
	jmp	.L255	#
.L243:
	.loc 1 754 0
	movl	-44(%rbp), %eax	# offset, tmp484
	addl	$2, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.161
	cmpq	%rax, %rdx	# srclen.161, D.13624
	jb	.L244	#,
	.loc 1 756 0
	movl	-44(%rbp), %eax	# offset, tmp485
	movslq	%eax, %rdx	# tmp485, D.13625
	movq	-16(%rbp), %rax	# s, tmp486
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_55, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 757 0
	movl	-44(%rbp), %eax	# offset, tmp487
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp488
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_61, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 755 0
	addq	%rdx, %rax	# D.13624, tmp489
	movq	%rax, -24(%rbp)	# tmp489, retnum
	jmp	.L255	#
.L244:
	.loc 1 760 0
	movl	-44(%rbp), %eax	# offset, tmp490
	movslq	%eax, %rdx	# tmp490, D.13625
	movq	-16(%rbp), %rax	# s, tmp491
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_67, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 761 0
	movl	-44(%rbp), %eax	# offset, tmp492
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp493
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_73, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 760 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 762 0
	movl	-44(%rbp), %eax	# offset, tmp494
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp495
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_80, D.13627
	movzbl	%al, %eax	# D.13627, D.13623
	sall	$8, %eax	#, D.13623
	.loc 1 761 0
	cltq
	.loc 1 759 0
	addq	%rdx, %rax	# D.13624, tmp496
	movq	%rax, -24(%rbp)	# tmp496, retnum
	jmp	.L255	#
.L240:
	.loc 1 765 0
	cmpl	$64, -48(%rbp)	#, size
	jne	.L255	#,
	.loc 1 766 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.162
	movq	80(%rax), %rax	# PL_curcop.162_86->cop_warnings, D.13628
	testq	%rax, %rax	# D.13628
	je	.L245	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.163
	movq	80(%rax), %rax	# PL_curcop.163_88->cop_warnings, D.13628
	cmpq	$32, %rax	#, D.13628
	je	.L245	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.164
	movq	80(%rax), %rax	# PL_curcop.164_90->cop_warnings, D.13628
	cmpq	$16, %rax	#, D.13628
	je	.L246	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.165
	movq	80(%rax), %rax	# PL_curcop.165_92->cop_warnings, D.13628
	movq	(%rax), %rax	# _93->sv_any, D.13622
	movq	(%rax), %rax	# MEM[(struct XPV *)_94].xpv_pv, D.13629
	addq	$4, %rax	#, D.13629
	movzbl	(%rax), %eax	# *_96, D.13630
	movsbl	%al, %eax	# D.13630, D.13623
	andl	$4, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	jne	.L246	#,
.L245:
	.loc 1 766 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.166
	movq	80(%rax), %rax	# PL_curcop.166_100->cop_warnings, D.13628
	testq	%rax, %rax	# D.13628
	jne	.L247	#,
	.loc 1 766 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.167
	movzbl	%al, %eax	# PL_dowarn.167, D.13623
	andl	$1, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L247	#,
.L246:
	.loc 1 767 0 is_stmt 1
	movl	$.LC9, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L247:
	.loc 1 769 0
	movl	-44(%rbp), %eax	# offset, tmp497
	movslq	%eax, %rdx	# tmp497, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.168
	cmpq	%rax, %rdx	# srclen.168, D.13624
	jb	.L248	#,
	.loc 1 770 0
	movq	$0, -24(%rbp)	#, retnum
	jmp	.L255	#
.L248:
	.loc 1 771 0
	movl	-44(%rbp), %eax	# offset, tmp498
	addl	$1, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.169
	cmpq	%rax, %rdx	# srclen.169, D.13624
	jb	.L249	#,
	.loc 1 773 0
	movl	-44(%rbp), %eax	# offset, tmp499
	movslq	%eax, %rdx	# tmp499, D.13625
	movq	-16(%rbp), %rax	# s, tmp500
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_112, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	.loc 1 772 0
	salq	$56, %rax	#, tmp501
	movq	%rax, -24(%rbp)	# tmp501, retnum
	jmp	.L255	#
.L249:
	.loc 1 774 0
	movl	-44(%rbp), %eax	# offset, tmp502
	addl	$2, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.170
	cmpq	%rax, %rdx	# srclen.170, D.13624
	jb	.L250	#,
	.loc 1 776 0
	movl	-44(%rbp), %eax	# offset, tmp503
	movslq	%eax, %rdx	# tmp503, D.13625
	movq	-16(%rbp), %rax	# s, tmp504
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_120, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 777 0
	movl	-44(%rbp), %eax	# offset, tmp505
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp506
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_126, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 775 0
	addq	%rdx, %rax	# D.13624, tmp507
	movq	%rax, -24(%rbp)	# tmp507, retnum
	jmp	.L255	#
.L250:
	.loc 1 778 0
	movl	-44(%rbp), %eax	# offset, tmp508
	addl	$3, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.171
	cmpq	%rax, %rdx	# srclen.171, D.13624
	jb	.L251	#,
	.loc 1 780 0
	movl	-44(%rbp), %eax	# offset, tmp509
	movslq	%eax, %rdx	# tmp509, D.13625
	movq	-16(%rbp), %rax	# s, tmp510
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_135, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 781 0
	movl	-44(%rbp), %eax	# offset, tmp511
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp512
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_141, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 780 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 782 0
	movl	-44(%rbp), %eax	# offset, tmp513
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp514
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_148, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 779 0
	addq	%rdx, %rax	# D.13624, tmp515
	movq	%rax, -24(%rbp)	# tmp515, retnum
	jmp	.L255	#
.L251:
	.loc 1 783 0
	movl	-44(%rbp), %eax	# offset, tmp516
	addl	$4, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.172
	cmpq	%rax, %rdx	# srclen.172, D.13624
	jb	.L252	#,
	.loc 1 785 0
	movl	-44(%rbp), %eax	# offset, tmp517
	movslq	%eax, %rdx	# tmp517, D.13625
	movq	-16(%rbp), %rax	# s, tmp518
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_157, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 786 0
	movl	-44(%rbp), %eax	# offset, tmp519
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp520
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_163, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 785 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 787 0
	movl	-44(%rbp), %eax	# offset, tmp521
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp522
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_170, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 786 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 788 0
	movl	-44(%rbp), %eax	# offset, tmp523
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp524
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_177, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$32, %rax	#, D.13624
	.loc 1 784 0
	addq	%rdx, %rax	# D.13624, tmp525
	movq	%rax, -24(%rbp)	# tmp525, retnum
	jmp	.L255	#
.L252:
	.loc 1 789 0
	movl	-44(%rbp), %eax	# offset, tmp526
	addl	$5, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.173
	cmpq	%rax, %rdx	# srclen.173, D.13624
	jb	.L253	#,
	.loc 1 791 0
	movl	-44(%rbp), %eax	# offset, tmp527
	movslq	%eax, %rdx	# tmp527, D.13625
	movq	-16(%rbp), %rax	# s, tmp528
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_186, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 792 0
	movl	-44(%rbp), %eax	# offset, tmp529
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp530
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_192, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 791 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 793 0
	movl	-44(%rbp), %eax	# offset, tmp531
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp532
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_199, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 792 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 794 0
	movl	-44(%rbp), %eax	# offset, tmp533
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp534
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_206, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$32, %rax	#, D.13624
	.loc 1 793 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 795 0
	movl	-44(%rbp), %eax	# offset, tmp535
	cltq
	leaq	4(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp536
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_213, D.13627
	movzbl	%al, %eax	# D.13627, D.13623
	sall	$24, %eax	#, D.13623
	.loc 1 794 0
	cltq
	.loc 1 790 0
	addq	%rdx, %rax	# D.13624, tmp537
	movq	%rax, -24(%rbp)	# tmp537, retnum
	jmp	.L255	#
.L253:
	.loc 1 796 0
	movl	-44(%rbp), %eax	# offset, tmp538
	addl	$6, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13624
	movq	-32(%rbp), %rax	# srclen, srclen.174
	cmpq	%rax, %rdx	# srclen.174, D.13624
	jb	.L254	#,
	.loc 1 798 0
	movl	-44(%rbp), %eax	# offset, tmp539
	movslq	%eax, %rdx	# tmp539, D.13625
	movq	-16(%rbp), %rax	# s, tmp540
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_223, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 799 0
	movl	-44(%rbp), %eax	# offset, tmp541
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp542
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_229, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 798 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 800 0
	movl	-44(%rbp), %eax	# offset, tmp543
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp544
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_236, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 799 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 801 0
	movl	-44(%rbp), %eax	# offset, tmp545
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp546
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_243, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$32, %rax	#, D.13624
	.loc 1 800 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 802 0
	movl	-44(%rbp), %eax	# offset, tmp547
	cltq
	leaq	4(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp548
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_250, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	.loc 1 801 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 803 0
	movl	-44(%rbp), %eax	# offset, tmp549
	cltq
	leaq	5(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp550
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_257, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 797 0
	addq	%rdx, %rax	# D.13624, tmp551
	movq	%rax, -24(%rbp)	# tmp551, retnum
	jmp	.L255	#
.L254:
	.loc 1 806 0
	movl	-44(%rbp), %eax	# offset, tmp552
	movslq	%eax, %rdx	# tmp552, D.13625
	movq	-16(%rbp), %rax	# s, tmp553
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_263, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 807 0
	movl	-44(%rbp), %eax	# offset, tmp554
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp555
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_269, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 806 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 808 0
	movl	-44(%rbp), %eax	# offset, tmp556
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp557
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_276, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 807 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 809 0
	movl	-44(%rbp), %eax	# offset, tmp558
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp559
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_283, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$32, %rax	#, D.13624
	.loc 1 808 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 810 0
	movl	-44(%rbp), %eax	# offset, tmp560
	cltq
	leaq	4(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp561
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_290, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	.loc 1 809 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 811 0
	movl	-44(%rbp), %eax	# offset, tmp562
	cltq
	leaq	5(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp563
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_297, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 810 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 812 0
	movl	-44(%rbp), %eax	# offset, tmp564
	cltq
	leaq	6(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp565
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_304, D.13627
	movzbl	%al, %eax	# D.13627, D.13623
	sall	$8, %eax	#, D.13623
	.loc 1 811 0
	cltq
	.loc 1 805 0
	addq	%rdx, %rax	# D.13624, tmp566
	movq	%rax, -24(%rbp)	# tmp566, retnum
	jmp	.L255	#
.L234:
	.loc 1 817 0
	cmpl	$7, -48(%rbp)	#, size
	jg	.L256	#,
	.loc 1 818 0
	movl	-44(%rbp), %eax	# offset, tmp567
	sarl	$3, %eax	#, D.13623
	movslq	%eax, %rdx	# D.13623, D.13625
	movq	-16(%rbp), %rax	# s, tmp568
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_312, D.13627
	movzbl	%al, %edx	# D.13627, D.13623
	movl	-44(%rbp), %eax	# offset, tmp569
	andl	$7, %eax	#, D.13623
	movl	%edx, %esi	# D.13623, D.13623
	movl	%eax, %ecx	# D.13623, tmp617
	sarl	%cl, %esi	# tmp617, D.13623
	movl	-48(%rbp), %eax	# size, tmp570
	movl	$1, %edx	#, tmp571
	movl	%eax, %ecx	# tmp570, tmp619
	sall	%cl, %edx	# tmp619, D.13623
	movl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	andl	%esi, %eax	# D.13623, D.13623
	cltq
	movq	%rax, -24(%rbp)	# tmp572, retnum
	jmp	.L255	#
.L256:
	.loc 1 820 0
	sarl	$3, -44(%rbp)	#, offset
	.loc 1 821 0
	cmpl	$8, -48(%rbp)	#, size
	jne	.L257	#,
	.loc 1 822 0
	movl	-44(%rbp), %eax	# offset, tmp573
	movslq	%eax, %rdx	# tmp573, D.13625
	movq	-16(%rbp), %rax	# s, tmp574
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_323, D.13627
	movzbl	%al, %eax	# D.13627, tmp575
	movq	%rax, -24(%rbp)	# tmp575, retnum
	jmp	.L255	#
.L257:
	.loc 1 823 0
	cmpl	$16, -48(%rbp)	#, size
	jne	.L258	#,
	.loc 1 825 0
	movl	-44(%rbp), %eax	# offset, tmp576
	movslq	%eax, %rdx	# tmp576, D.13625
	movq	-16(%rbp), %rax	# s, tmp577
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_327, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$8, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 826 0
	movl	-44(%rbp), %eax	# offset, tmp578
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp579
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_333, D.13627
	.loc 1 825 0
	movzbl	%al, %eax	# D.13627, D.13624
	.loc 1 824 0
	addq	%rdx, %rax	# D.13624, tmp580
	movq	%rax, -24(%rbp)	# tmp580, retnum
	jmp	.L255	#
.L258:
	.loc 1 827 0
	cmpl	$32, -48(%rbp)	#, size
	jne	.L259	#,
	.loc 1 829 0
	movl	-44(%rbp), %eax	# offset, tmp581
	movslq	%eax, %rdx	# tmp581, D.13625
	movq	-16(%rbp), %rax	# s, tmp582
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_338, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 830 0
	movl	-44(%rbp), %eax	# offset, tmp583
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp584
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_344, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 829 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 831 0
	movl	-44(%rbp), %eax	# offset, tmp585
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp586
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_351, D.13627
	movzbl	%al, %eax	# D.13627, D.13623
	sall	$8, %eax	#, D.13623
	.loc 1 830 0
	cltq
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 832 0
	movl	-44(%rbp), %eax	# offset, tmp587
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp588
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_359, D.13627
	.loc 1 831 0
	movzbl	%al, %eax	# D.13627, D.13624
	.loc 1 828 0
	addq	%rdx, %rax	# D.13624, tmp589
	movq	%rax, -24(%rbp)	# tmp589, retnum
	jmp	.L255	#
.L259:
	.loc 1 834 0
	cmpl	$64, -48(%rbp)	#, size
	jne	.L255	#,
	.loc 1 835 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.175
	movq	80(%rax), %rax	# PL_curcop.175_363->cop_warnings, D.13628
	testq	%rax, %rax	# D.13628
	je	.L260	#,
	.loc 1 835 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.176
	movq	80(%rax), %rax	# PL_curcop.176_365->cop_warnings, D.13628
	cmpq	$32, %rax	#, D.13628
	je	.L260	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.177
	movq	80(%rax), %rax	# PL_curcop.177_367->cop_warnings, D.13628
	cmpq	$16, %rax	#, D.13628
	je	.L261	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.178
	movq	80(%rax), %rax	# PL_curcop.178_369->cop_warnings, D.13628
	movq	(%rax), %rax	# _370->sv_any, D.13622
	movq	(%rax), %rax	# MEM[(struct XPV *)_371].xpv_pv, D.13629
	addq	$4, %rax	#, D.13629
	movzbl	(%rax), %eax	# *_373, D.13630
	movsbl	%al, %eax	# D.13630, D.13623
	andl	$4, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	jne	.L261	#,
.L260:
	.loc 1 835 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.179
	movq	80(%rax), %rax	# PL_curcop.179_377->cop_warnings, D.13628
	testq	%rax, %rax	# D.13628
	jne	.L262	#,
	.loc 1 835 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.180
	movzbl	%al, %eax	# PL_dowarn.180, D.13623
	andl	$1, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L262	#,
.L261:
	.loc 1 836 0 is_stmt 1
	movl	$.LC9, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L262:
	.loc 1 839 0
	movl	-44(%rbp), %eax	# offset, tmp590
	movslq	%eax, %rdx	# tmp590, D.13625
	movq	-16(%rbp), %rax	# s, tmp591
	addq	%rdx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_383, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$56, %rax	#, D.13624
	movq	%rax, %rdx	# D.13624, D.13624
	.loc 1 840 0
	movl	-44(%rbp), %eax	# offset, tmp592
	cltq
	leaq	1(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp593
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_389, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$48, %rax	#, D.13624
	.loc 1 839 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 841 0
	movl	-44(%rbp), %eax	# offset, tmp594
	cltq
	leaq	2(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp595
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_396, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$40, %rax	#, D.13624
	.loc 1 840 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 842 0
	movl	-44(%rbp), %eax	# offset, tmp596
	cltq
	leaq	3(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp597
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_403, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$32, %rax	#, D.13624
	.loc 1 841 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 843 0
	movl	-44(%rbp), %eax	# offset, tmp598
	cltq
	leaq	4(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp599
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_410, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$24, %rax	#, D.13624
	.loc 1 842 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 844 0
	movl	-44(%rbp), %eax	# offset, tmp600
	cltq
	leaq	5(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp601
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_417, D.13627
	movzbl	%al, %eax	# D.13627, D.13624
	salq	$16, %rax	#, D.13624
	.loc 1 843 0
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 845 0
	movl	-44(%rbp), %eax	# offset, tmp602
	cltq
	leaq	6(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp603
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_424, D.13627
	movzbl	%al, %eax	# D.13627, D.13623
	sall	$8, %eax	#, D.13623
	.loc 1 844 0
	cltq
	addq	%rax, %rdx	# D.13624, D.13624
	.loc 1 846 0
	movl	-44(%rbp), %eax	# offset, tmp604
	cltq
	leaq	7(%rax), %rcx	#, D.13625
	movq	-16(%rbp), %rax	# s, tmp605
	addq	%rcx, %rax	# D.13625, D.13626
	movzbl	(%rax), %eax	# *_432, D.13627
	.loc 1 845 0
	movzbl	%al, %eax	# D.13627, D.13624
	.loc 1 838 0
	addq	%rdx, %rax	# D.13624, tmp606
	movq	%rax, -24(%rbp)	# tmp606, retnum
.L255:
	.loc 1 851 0
	movq	-24(%rbp), %rax	# retnum, D.13620
.L263:
	.loc 1 852 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_do_vecget, .-Perl_do_vecget
	.section	.rodata
	.align 8
.LC10:
	.string	"Negative offset to vec in lvalue context"
	.text
	.globl	Perl_do_vecset
	.type	Perl_do_vecset, @function
Perl_do_vecset:
.LFB12:
	.loc 1 860 0
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
	movq	%rdi, -72(%rbp)	# sv, sv
	.loc 1 861 0
	movq	-72(%rbp), %rax	# sv, tmp211
	movq	(%rax), %rax	# sv_5(D)->sv_any, D.13633
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_6].xlv_targ, tmp212
	movq	%rax, -48(%rbp)	# tmp212, targ
	.loc 1 870 0
	cmpq	$0, -48(%rbp)	#, targ
	je	.L264	#,
	.loc 1 872 0
	movq	-48(%rbp), %rax	# targ, tmp213
	movl	12(%rax), %eax	# targ_7->sv_flags, D.13634
	andl	$10223616, %eax	#, D.13634
	cmpl	$262144, %eax	#, D.13634
	jne	.L267	#,
	.loc 1 872 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# targ, tmp214
	movq	(%rax), %rax	# targ_7->sv_any, D.13633
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, targlen.182
	movq	%rax, -56(%rbp)	# targlen.182, targlen
	movq	-48(%rbp), %rax	# targ, tmp215
	movq	(%rax), %rax	# targ_7->sv_any, D.13633
	movq	(%rax), %rax	# MEM[(struct XPV *)_12].xpv_pv, iftmp.181
	jmp	.L268	#
.L267:
	.loc 1 872 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp216
	movq	-48(%rbp), %rax	# targ, tmp217
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp216,
	movq	%rax, %rdi	# tmp217,
	call	Perl_sv_pvn_force_flags	#
.L268:
	.loc 1 872 0 discriminator 3
	movq	%rax, %r12	# iftmp.181, s
	.loc 1 873 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# targ, tmp218
	movl	12(%rax), %eax	# targ_7->sv_flags, D.13634
	andl	$536870912, %eax	#, D.13634
	testl	%eax, %eax	# D.13634
	je	.L269	#,
	.loc 1 878 0
	movq	-48(%rbp), %rax	# targ, tmp219
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	Perl_sv_utf8_downgrade	#
.L269:
	.loc 1 881 0
	movq	-48(%rbp), %rax	# targ, tmp220
	movl	12(%rax), %eax	# targ_7->sv_flags, D.13634
	andl	$1223753727, %eax	#, D.13634
	movl	%eax, %edx	# D.13634, D.13634
	movq	-48(%rbp), %rax	# targ, tmp221
	movl	%edx, 12(%rax)	# D.13634, targ_7->sv_flags
	movq	-48(%rbp), %rax	# targ, tmp222
	movl	12(%rax), %eax	# targ_7->sv_flags, D.13634
	orl	$67371008, %eax	#, D.13634
	movl	%eax, %edx	# D.13634, D.13634
	movq	-48(%rbp), %rax	# targ, tmp223
	movl	%edx, 12(%rax)	# D.13634, targ_7->sv_flags
	.loc 1 882 0
	movq	-72(%rbp), %rax	# sv, tmp224
	movl	12(%rax), %eax	# sv_5(D)->sv_flags, D.13634
	andl	$65536, %eax	#, D.13634
	testl	%eax, %eax	# D.13634
	je	.L270	#,
	.loc 1 882 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp225
	movq	(%rax), %rax	# sv_5(D)->sv_any, D.13633
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_24].xuv_uv, iftmp.183
	jmp	.L271	#
.L270:
	.loc 1 882 0 discriminator 2
	movq	-72(%rbp), %rax	# sv, tmp226
	movq	%rax, %rdi	# tmp226,
	call	Perl_sv_2uv	#
.L271:
	.loc 1 882 0 discriminator 3
	movq	%rax, %r13	# iftmp.183, lval
	.loc 1 883 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# sv, tmp227
	movq	(%rax), %rax	# sv_5(D)->sv_any, D.13633
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_28].xlv_targoff, D.13635
	movl	%eax, %ebx	# D.13635, offset
	.loc 1 884 0 discriminator 3
	testl	%ebx, %ebx	# offset
	jns	.L272	#,
	.loc 1 885 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L272:
	.loc 1 886 0
	movq	-72(%rbp), %rax	# sv, tmp228
	movq	(%rax), %rax	# sv_5(D)->sv_any, D.13633
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_31].xlv_targlen, D.13635
	movl	%eax, %r14d	# D.13635, size
	.loc 1 887 0
	testl	%r14d, %r14d	# size
	jle	.L273	#,
	.loc 1 887 0 is_stmt 0 discriminator 1
	leal	-1(%r14), %eax	#, D.13636
	andl	%r14d, %eax	# size, D.13636
	testl	%eax, %eax	# D.13636
	je	.L274	#,
.L273:
	.loc 1 888 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L274:
	.loc 1 890 0
	imull	%r14d, %ebx	# size, offset
	.loc 1 891 0
	leal	(%rbx,%r14), %eax	#, D.13636
	addl	$7, %eax	#, D.13636
	leal	7(%rax), %edx	#, tmp230
	testl	%eax, %eax	# tmp229
	cmovs	%edx, %eax	# tmp230,, tmp229
	sarl	$3, %eax	#, tmp231
	cltq
	movq	%rax, -40(%rbp)	# tmp232, len
	.loc 1 892 0
	movq	-56(%rbp), %rax	# targlen, targlen.184
	cmpq	%rax, -40(%rbp)	# targlen.184, len
	jbe	.L275	#,
	.loc 1 893 0
	movq	-48(%rbp), %rax	# targ, tmp233
	movq	(%rax), %rax	# targ_7->sv_any, D.13633
	movq	16(%rax), %rax	# MEM[(struct XPV *)_42].xpv_len, D.13635
	movq	-40(%rbp), %rdx	# len, tmp234
	addq	$1, %rdx	#, D.13635
	cmpq	%rdx, %rax	# D.13635, D.13635
	jae	.L276	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# len, tmp235
	leaq	1(%rax), %rdx	#, D.13635
	movq	-48(%rbp), %rax	# targ, tmp236
	movq	%rdx, %rsi	# D.13635,
	movq	%rax, %rdi	# tmp236,
	call	Perl_sv_grow	#
	jmp	.L277	#
.L276:
	.loc 1 893 0 discriminator 2
	movq	-48(%rbp), %rax	# targ, tmp237
	movq	(%rax), %rax	# targ_7->sv_any, D.13633
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, iftmp.185
.L277:
	.loc 1 893 0 discriminator 3
	movq	%rax, %r12	# iftmp.185, s
	.loc 1 894 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# targlen, targlen.186
	movq	-40(%rbp), %rdx	# len, tmp238
	subq	%rax, %rdx	# targlen.186, D.13635
	movq	%rdx, %rax	# D.13635, D.13635
	leaq	1(%rax), %rdx	#, D.13635
	movq	-56(%rbp), %rax	# targlen, targlen.187
	addq	%r12, %rax	# s, D.13633
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13633,
	call	memset	#
	.loc 1 895 0 discriminator 3
	movq	-48(%rbp), %rax	# targ, tmp239
	movq	(%rax), %rax	# targ_7->sv_any, D.13633
	movq	-40(%rbp), %rdx	# len, tmp240
	movq	%rdx, 8(%rax)	# tmp240, MEM[(struct XPV *)_55].xpv_cur
.L275:
	.loc 1 898 0
	cmpl	$7, %r14d	#, size
	jg	.L278	#,
	.loc 1 899 0
	movl	$1, %eax	#, tmp241
	movl	%r14d, %ecx	# size, tmp250
	sall	%cl, %eax	# tmp250, D.13636
	subl	$1, %eax	#, tmp242
	movl	%eax, -60(%rbp)	# tmp242, mask
	.loc 1 900 0
	movl	%ebx, %r14d	# offset, size
	andl	$7, %r14d	#, size
	.loc 1 901 0
	movl	-60(%rbp), %eax	# mask, tmp243
	cltq
	andq	%rax, %r13	# D.13635, lval
	.loc 1 902 0
	sarl	$3, %ebx	#, offset
	.loc 1 903 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movslq	%ebx, %rax	# offset, D.13637
	addq	%r12, %rax	# s, D.13638
	movzbl	(%rax), %eax	# *_65, D.13639
	movl	-60(%rbp), %esi	# mask, tmp244
	movl	%r14d, %ecx	# size, tmp253
	sall	%cl, %esi	# tmp253, D.13636
	movl	%esi, %ecx	# D.13636, D.13636
	notl	%ecx	# D.13640
	andl	%ecx, %eax	# D.13640, D.13640
	movb	%al, (%rdx)	# D.13639, *_63
	.loc 1 904 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movslq	%ebx, %rax	# offset, D.13637
	addq	%r12, %rax	# s, D.13638
	movzbl	(%rax), %esi	# *_76, D.13639
	movq	%r13, %rax	# lval, D.13635
	movl	%r14d, %ecx	# size, tmp255
	salq	%cl, %rax	# tmp255, D.13635
	orl	%esi, %eax	# D.13639, D.13639
	movb	%al, (%rdx)	# D.13639, *_74
	jmp	.L279	#
.L278:
	.loc 1 907 0
	sarl	$3, %ebx	#, offset
	.loc 1 908 0
	cmpl	$8, %r14d	#, size
	jne	.L280	#,
	.loc 1 909 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movl	%r13d, %eax	# lval, D.13639
	movb	%al, (%rdx)	# D.13639, *_83
	jmp	.L279	#
.L280:
	.loc 1 910 0
	cmpl	$16, %r14d	#, size
	jne	.L281	#,
	.loc 1 911 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$8, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_86
	.loc 1 912 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$1, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movl	%r13d, %eax	# lval, D.13639
	movb	%al, (%rdx)	# D.13639, *_91
	jmp	.L279	#
.L281:
	.loc 1 914 0
	cmpl	$32, %r14d	#, size
	jne	.L282	#,
	.loc 1 915 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$24, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_94
	.loc 1 916 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$1, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$16, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_99
	.loc 1 917 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$2, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$8, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_104
	.loc 1 918 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$3, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movl	%r13d, %eax	# lval, D.13639
	movb	%al, (%rdx)	# D.13639, *_109
	jmp	.L279	#
.L282:
	.loc 1 921 0
	cmpl	$64, %r14d	#, size
	jne	.L279	#,
	.loc 1 922 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.188
	movq	80(%rax), %rax	# PL_curcop.188_111->cop_warnings, D.13641
	testq	%rax, %rax	# D.13641
	je	.L283	#,
	.loc 1 922 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.189
	movq	80(%rax), %rax	# PL_curcop.189_113->cop_warnings, D.13641
	cmpq	$32, %rax	#, D.13641
	je	.L283	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.190
	movq	80(%rax), %rax	# PL_curcop.190_115->cop_warnings, D.13641
	cmpq	$16, %rax	#, D.13641
	je	.L284	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.191
	movq	80(%rax), %rax	# PL_curcop.191_117->cop_warnings, D.13641
	movq	(%rax), %rax	# _118->sv_any, D.13633
	movq	(%rax), %rax	# MEM[(struct XPV *)_119].xpv_pv, D.13642
	addq	$4, %rax	#, D.13642
	movzbl	(%rax), %eax	# *_121, D.13643
	movsbl	%al, %eax	# D.13643, D.13636
	andl	$4, %eax	#, D.13636
	testl	%eax, %eax	# D.13636
	jne	.L284	#,
.L283:
	.loc 1 922 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.192
	movq	80(%rax), %rax	# PL_curcop.192_125->cop_warnings, D.13641
	testq	%rax, %rax	# D.13641
	jne	.L285	#,
	.loc 1 922 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.193
	movzbl	%al, %eax	# PL_dowarn.193, D.13636
	andl	$1, %eax	#, D.13636
	testl	%eax, %eax	# D.13636
	je	.L285	#,
.L284:
	.loc 1 923 0 is_stmt 1
	movl	$.LC9, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L285:
	.loc 1 925 0
	movslq	%ebx, %rax	# offset, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$56, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_131
	.loc 1 926 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$1, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$48, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_136
	.loc 1 927 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$2, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$40, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_141
	.loc 1 928 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$3, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$32, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_146
	.loc 1 929 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$4, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$24, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_151
	.loc 1 930 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$5, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$16, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_156
	.loc 1 931 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$6, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movq	%r13, %rax	# lval, D.13635
	shrq	$8, %rax	#, D.13635
	movb	%al, (%rdx)	# D.13639, *_161
	.loc 1 932 0
	movslq	%ebx, %rax	# offset, D.13637
	addq	$7, %rax	#, D.13637
	leaq	(%r12,%rax), %rdx	#, D.13638
	movl	%r13d, %eax	# lval, D.13639
	movb	%al, (%rdx)	# D.13639, *_166
.L279:
	.loc 1 936 0
	movq	-48(%rbp), %rax	# targ, tmp245
	movl	12(%rax), %eax	# targ_7->sv_flags, D.13634
	andl	$16384, %eax	#, D.13634
	testl	%eax, %eax	# D.13634
	je	.L264	#,
	.loc 1 936 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# targ, tmp246
	movq	%rax, %rdi	# tmp246,
	call	Perl_mg_set	#
.L264:
	.loc 1 937 0 is_stmt 1
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_do_vecset, .-Perl_do_vecset
	.globl	Perl_do_chop
	.type	Perl_do_chop, @function
Perl_do_chop:
.LFB13:
	.loc 1 941 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %r12	# astr, astr
	movq	%rsi, %rbx	# sv, sv
	.loc 1 945 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	movzbl	%al, %eax	# D.13645, D.13645
	cmpl	$10, %eax	#, D.13645
	jne	.L288	#,
.LBB23:
	.loc 1 948 0
	movq	%rbx, -72(%rbp)	# sv, av
	.loc 1 949 0
	movq	-72(%rbp), %rax	# av, tmp130
	movl	12(%rax), %eax	# MEM[(struct SV *)av_10].sv_flags, D.13645
	andl	$32768, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L289	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp131
	movq	%rax, %rdi	# tmp131,
	call	Perl_mg_size	#
	jmp	.L290	#
.L289:
	.loc 1 949 0 discriminator 2
	movq	-72(%rbp), %rax	# av, tmp132
	movq	(%rax), %rax	# av_10->sv_any, D.13646
	movq	8(%rax), %rax	# _14->xav_fill, D.13647
.L290:
	.loc 1 949 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.194, max
	.loc 1 950 0 is_stmt 1 discriminator 3
	movl	$0, %r13d	#, i
	jmp	.L291	#
.L293:
	.loc 1 951 0
	movq	-72(%rbp), %rax	# av, tmp133
	movl	$0, %edx	#,
	movl	%r13d, %esi	# i,
	movq	%rax, %rdi	# tmp133,
	call	Perl_av_fetch	#
	movq	%rax, %rbx	#, sv
	.loc 1 952 0
	testq	%rbx, %rbx	# sv
	je	.L292	#,
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rbx	# MEM[(struct SV * *)sv_19], sv
	cmpq	$PL_sv_undef, %rbx	#, sv
	je	.L292	#,
	.loc 1 953 0 is_stmt 1
	movq	%rbx, %rsi	# sv,
	movq	%r12, %rdi	# astr,
	call	Perl_do_chop	#
.L292:
	.loc 1 950 0
	addl	$1, %r13d	#, i
.L291:
	.loc 1 950 0 is_stmt 0 discriminator 1
	cmpl	-92(%rbp), %r13d	# max, i
	jle	.L293	#,
	.loc 1 955 0 is_stmt 1
	jmp	.L287	#
.L288:
.LBE23:
	.loc 1 957 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	movzbl	%al, %eax	# D.13645, D.13645
	cmpl	$11, %eax	#, D.13645
	jne	.L295	#,
.LBB24:
	.loc 1 958 0
	movq	%rbx, -64(%rbp)	# sv, hv
	.loc 1 960 0
	movq	-64(%rbp), %rax	# hv, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Perl_hv_iterinit	#
	.loc 1 962 0
	jmp	.L296	#
.L297:
	.loc 1 963 0
	movq	-56(%rbp), %rdx	# entry, tmp135
	movq	-64(%rbp), %rax	# hv, tmp136
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	Perl_hv_iterval	#
	movq	%rax, %rsi	# D.13648,
	movq	%r12, %rdi	# astr,
	call	Perl_do_chop	#
.L296:
	.loc 1 962 0 discriminator 1
	movq	-64(%rbp), %rax	# hv, tmp137
	movq	%rax, %rdi	# tmp137,
	call	Perl_hv_iternext	#
	movq	%rax, -56(%rbp)	# tmp138, entry
	cmpq	$0, -56(%rbp)	#, entry
	jne	.L297	#,
	.loc 1 964 0
	jmp	.L287	#
.L295:
.LBE24:
	.loc 1 966 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$8388608, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L298	#,
	.loc 1 967 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$1048576, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L299	#,
	.loc 1 969 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_force_normal_flags	#
.L299:
	.loc 1 971 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$8388608, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L298	#,
	.loc 1 972 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L298:
	.loc 1 974 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$262144, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L300	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	8(%rax), %rax	# MEM[(struct XPV *)_36].xpv_cur, len.196
	movq	%rax, -88(%rbp)	# len.196, len
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, iftmp.195
	jmp	.L301	#
.L300:
	.loc 1 974 0 discriminator 2
	leaq	-88(%rbp), %rax	#, tmp139
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp139,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L301:
	.loc 1 974 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.195, s
	.loc 1 975 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# len, len.197
	testq	%rax, %rax	# len.197
	je	.L302	#,
	.loc 1 975 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$262144, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	jne	.L302	#,
	.loc 1 976 0 is_stmt 1
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$10223616, %eax	#, D.13645
	cmpl	$262144, %eax	#, D.13645
	jne	.L303	#,
	.loc 1 976 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	8(%rax), %rax	# MEM[(struct XPV *)_47].xpv_cur, len.199
	movq	%rax, -88(%rbp)	# len.199, len
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	(%rax), %rax	# MEM[(struct XPV *)_49].xpv_pv, iftmp.198
	jmp	.L304	#
.L303:
	.loc 1 976 0 discriminator 2
	leaq	-88(%rbp), %rax	#, tmp140
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp140,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_pvn_force_flags	#
.L304:
	.loc 1 976 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.198, s
.L302:
	.loc 1 977 0 is_stmt 1
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$536870912, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L305	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.200
	movzbl	37(%rax), %eax	# PL_curcop.200_55->op_private, D.13650
	movzbl	%al, %eax	# D.13650, D.13651
	andl	$8, %eax	#, D.13651
	testl	%eax, %eax	# D.13651
	jne	.L305	#,
	.loc 1 978 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, s
	je	.L306	#,
	.loc 1 978 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# len, len.201
	testq	%rax, %rax	# len.201
	je	.L306	#,
.LBB25:
	.loc 1 979 0 is_stmt 1
	movq	-88(%rbp), %rdx	# len, len.202
	movq	-80(%rbp), %rax	# s, tmp144
	addq	%rdx, %rax	# len.202, tmp143
	movq	%rax, -48(%rbp)	# tmp143, send
	.loc 1 980 0
	movq	-80(%rbp), %rax	# s, tmp145
	movq	%rax, -40(%rbp)	# tmp145, start
	.loc 1 981 0
	movq	-48(%rbp), %rax	# send, tmp149
	subq	$1, %rax	#, tmp148
	movq	%rax, -80(%rbp)	# tmp148, s
	.loc 1 982 0
	jmp	.L307	#
.L309:
	.loc 1 983 0
	subq	$1, -80(%rbp)	#, s
.L307:
	.loc 1 982 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp150
	cmpq	-40(%rbp), %rax	# start, tmp150
	jbe	.L308	#,
	.loc 1 982 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, tmp151
	movzbl	(%rax), %eax	# *s_2, D.13652
	testb	%al, %al	# D.13652
	jns	.L308	#,
	.loc 1 982 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp152
	movzbl	(%rax), %eax	# *s_2, D.13652
	cmpb	$-65, %al	#, D.13650
	jbe	.L309	#,
.L308:
	.loc 1 984 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, tmp153
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	Perl_utf8_to_uvchr	#
	testq	%rax, %rax	# D.13653
	je	.L310	#,
	.loc 1 985 0
	movq	-48(%rbp), %rdx	# send, send.203
	movq	-80(%rbp), %rax	# s, s.204
	subq	%rax, %rdx	# s.204, D.13647
	movq	%rdx, %rax	# D.13647, D.13647
	movq	%rax, %rdx	# D.13647, D.13653
	movq	-80(%rbp), %rax	# s, tmp154
	movq	%rax, %rsi	# tmp154,
	movq	%r12, %rdi	# astr,
	call	Perl_sv_setpvn	#
	.loc 1 986 0
	movq	-80(%rbp), %rax	# s, tmp155
	movb	$0, (%rax)	#, *s_2
	.loc 1 987 0
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	-80(%rbp), %rcx	# s, s.205
	movq	-40(%rbp), %rdx	# start, start.206
	subq	%rdx, %rcx	# start.206, D.13647
	movq	%rcx, %rdx	# D.13647, D.13647
	movq	%rdx, 8(%rax)	# D.13653, MEM[(struct XPV *)_73].xpv_cur
	.loc 1 988 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$2096955391, %eax	#, D.13645
	movl	%eax, 12(%rbx)	# D.13645, sv_7(D)->sv_flags
	.loc 1 989 0
	movl	12(%r12), %eax	# astr_21(D)->sv_flags, D.13645
	orl	$536870912, %eax	#, D.13645
	movl	%eax, 12(%r12)	# D.13645, astr_21(D)->sv_flags
.LBE25:
	.loc 1 978 0
	jmp	.L311	#
.L310:
	jmp	.L311	#
.L306:
	.loc 1 993 0
	movl	$0, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%r12, %rdi	# astr,
	call	Perl_sv_setpvn	#
	.loc 1 978 0
	jmp	.L312	#
.L311:
	.loc 1 978 0 is_stmt 0 discriminator 1
	jmp	.L312	#
.L305:
	.loc 1 995 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, s
	je	.L313	#,
	.loc 1 995 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# len, len.207
	testq	%rax, %rax	# len.207
	je	.L313	#,
	.loc 1 996 0 is_stmt 1
	movq	-88(%rbp), %rax	# len, len.208
	subq	$1, %rax	#, len.209
	movq	%rax, -88(%rbp)	# len.209, len
	movq	-88(%rbp), %rax	# len, len.210
	addq	%rax, -80(%rbp)	# len.210, s
	.loc 1 997 0
	movq	-80(%rbp), %rax	# s, tmp156
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp156,
	movq	%r12, %rdi	# astr,
	call	Perl_sv_setpvn	#
	.loc 1 998 0
	movq	-80(%rbp), %rax	# s, tmp157
	movb	$0, (%rax)	#, *s_86
	.loc 1 999 0
	movq	(%rbx), %rax	# sv_7(D)->sv_any, D.13649
	movq	-88(%rbp), %rdx	# len, len.211
	movq	%rdx, 8(%rax)	# len.211, MEM[(struct XPV *)_87].xpv_cur
	.loc 1 1000 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$-536870913, %eax	#, D.13645
	movl	%eax, 12(%rbx)	# D.13645, sv_7(D)->sv_flags
	.loc 1 1001 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$2096955391, %eax	#, D.13645
	movl	%eax, 12(%rbx)	# D.13645, sv_7(D)->sv_flags
	jmp	.L312	#
.L313:
	.loc 1 1004 0
	movl	$0, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%r12, %rdi	# astr,
	call	Perl_sv_setpvn	#
.L312:
	.loc 1 1005 0
	movl	12(%rbx), %eax	# sv_7(D)->sv_flags, D.13645
	andl	$16384, %eax	#, D.13645
	testl	%eax, %eax	# D.13645
	je	.L287	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_set	#
.L287:
	.loc 1 1006 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_do_chop, .-Perl_do_chop
	.globl	Perl_do_chomp
	.type	Perl_do_chomp, @function
Perl_do_chomp:
.LFB14:
	.loc 1 1010 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# sv, sv
	.loc 1 1015 0
	movq	$0, -88(%rbp)	#, temp_buffer
	.loc 1 1016 0
	movq	$0, -80(%rbp)	#, svrecode
	.loc 1 1018 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.212
	movl	12(%rax), %eax	# PL_rs.212_30->sv_flags, D.13655
	andl	$118423552, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	jne	.L317	#,
	.loc 1 1019 0
	movl	$0, %eax	#, D.13654
	jmp	.L362	#
.L317:
	.loc 1 1020 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.213
	movl	12(%rax), %eax	# PL_rs.213_34->sv_flags, D.13655
	andl	$524288, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L319	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.215
	movq	(%rax), %rax	# PL_rs.215_37->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XRV *)_38].xrv_rv, D.13657
	movl	12(%rax), %eax	# _39->sv_flags, D.13655
	andl	$65536, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L320	#,
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.216
	movq	(%rax), %rax	# PL_rs.216_42->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XRV *)_43].xrv_rv, D.13657
	movq	(%rax), %rax	# _44->sv_any, D.13656
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.13658
	testq	%rax, %rax	# D.13658
	setg	%al	#, iftmp.214
	jmp	.L321	#
.L320:
	.loc 1 1020 0 discriminator 2
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.217
	movq	(%rax), %rax	# PL_rs.217_48->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XRV *)_49].xrv_rv, D.13657
	movq	%rax, %rdi	# D.13657,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.13658
	setg	%al	#, iftmp.214
.L321:
	.loc 1 1020 0 discriminator 3
	testb	%al, %al	# iftmp.214
	je	.L319	#,
	.loc 1 1021 0 is_stmt 1
	movl	$0, %eax	#, D.13654
	jmp	.L362	#
.L319:
	.loc 1 1022 0
	movl	$0, %r12d	#, count
	.loc 1 1023 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	movzbl	%al, %eax	# D.13655, D.13655
	cmpl	$10, %eax	#, D.13655
	jne	.L322	#,
.LBB26:
	.loc 1 1026 0
	movq	%rbx, -56(%rbp)	# sv, av
	.loc 1 1027 0
	movq	-56(%rbp), %rax	# av, tmp196
	movl	12(%rax), %eax	# MEM[(struct SV *)av_58].sv_flags, D.13655
	andl	$32768, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L323	#,
	.loc 1 1027 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp197
	movq	%rax, %rdi	# tmp197,
	call	Perl_mg_size	#
	jmp	.L324	#
.L323:
	.loc 1 1027 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp198
	movq	(%rax), %rax	# av_58->sv_any, D.13659
	movq	8(%rax), %rax	# _62->xav_fill, D.13658
.L324:
	.loc 1 1027 0 discriminator 3
	movl	%eax, -116(%rbp)	# iftmp.218, max
	.loc 1 1028 0 is_stmt 1 discriminator 3
	movl	$0, %r13d	#, i
	jmp	.L325	#
.L327:
	.loc 1 1029 0
	movq	-56(%rbp), %rax	# av, tmp199
	movl	$0, %edx	#,
	movl	%r13d, %esi	# i,
	movq	%rax, %rdi	# tmp199,
	call	Perl_av_fetch	#
	movq	%rax, %rbx	#, sv
	.loc 1 1030 0
	testq	%rbx, %rbx	# sv
	je	.L326	#,
	.loc 1 1030 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rbx	# MEM[(struct SV * *)sv_67], sv
	cmpq	$PL_sv_undef, %rbx	#, sv
	je	.L326	#,
	.loc 1 1031 0 is_stmt 1
	movq	%rbx, %rdi	# sv,
	call	Perl_do_chomp	#
	addl	%eax, %r12d	# D.13660, count
.L326:
	.loc 1 1028 0
	addl	$1, %r13d	#, i
.L325:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	cmpl	-116(%rbp), %r13d	# max, i
	jle	.L327	#,
	.loc 1 1033 0 is_stmt 1
	movl	%r12d, %eax	# count, D.13654
	jmp	.L362	#
.L322:
.LBE26:
	.loc 1 1035 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	movzbl	%al, %eax	# D.13655, D.13655
	cmpl	$11, %eax	#, D.13655
	jne	.L328	#,
.LBB27:
	.loc 1 1036 0
	movq	%rbx, -48(%rbp)	# sv, hv
	.loc 1 1038 0
	movq	-48(%rbp), %rax	# hv, tmp200
	movq	%rax, %rdi	# tmp200,
	call	Perl_hv_iterinit	#
	.loc 1 1040 0
	jmp	.L329	#
.L330:
	.loc 1 1041 0
	movq	-40(%rbp), %rdx	# entry, tmp201
	movq	-48(%rbp), %rax	# hv, tmp202
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	Perl_hv_iterval	#
	movq	%rax, %rdi	# D.13657,
	call	Perl_do_chomp	#
	addl	%eax, %r12d	# D.13660, count
.L329:
	.loc 1 1040 0 discriminator 1
	movq	-48(%rbp), %rax	# hv, tmp203
	movq	%rax, %rdi	# tmp203,
	call	Perl_hv_iternext	#
	movq	%rax, -40(%rbp)	# tmp204, entry
	cmpq	$0, -40(%rbp)	#, entry
	jne	.L330	#,
	.loc 1 1042 0
	movl	%r12d, %eax	# count, D.13654
	jmp	.L362	#
.L328:
.LBE27:
	.loc 1 1044 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$8388608, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L331	#,
	.loc 1 1045 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$1048576, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L332	#,
	.loc 1 1047 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_force_normal_flags	#
.L332:
	.loc 1 1049 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$8388608, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L331	#,
	.loc 1 1050 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L331:
	.loc 1 1053 0
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.219
	testq	%rax, %rax	# PL_encoding.219
	je	.L333	#,
	.loc 1 1054 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$536870912, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	jne	.L333	#,
	.loc 1 1060 0
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.220
	movq	%rax, %rsi	# PL_encoding.220,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_recode_to_utf8	#
.L333:
	.loc 1 1064 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$262144, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L334	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_93].xpv_cur, len.222
	movq	%rax, -112(%rbp)	# len.222, len
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XPV *)_95].xpv_pv, iftmp.221
	jmp	.L335	#
.L334:
	.loc 1 1064 0 discriminator 2
	leaq	-112(%rbp), %rax	#, tmp205
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp205,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L335:
	.loc 1 1064 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.221, s
	.loc 1 1065 0 is_stmt 1 discriminator 3
	cmpq	$0, -96(%rbp)	#, s
	je	.L336	#,
	.loc 1 1065 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# len, len.223
	testq	%rax, %rax	# len.223
	je	.L336	#,
	.loc 1 1066 0 is_stmt 1
	movq	-112(%rbp), %rax	# len, len.224
	subq	$1, %rax	#, len.225
	movq	%rax, -112(%rbp)	# len.225, len
	movq	-112(%rbp), %rax	# len, len.226
	addq	%rax, -96(%rbp)	# len.226, s
	.loc 1 1067 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.227
	movl	12(%rax), %eax	# PL_rs.227_104->sv_flags, D.13655
	andl	$262144, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L337	#,
	.loc 1 1067 0 is_stmt 0 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.228
	movq	(%rax), %rax	# PL_rs.228_107->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_108].xpv_cur, D.13661
	testq	%rax, %rax	# D.13661
	jne	.L337	#,
	.loc 1 1068 0 is_stmt 1
	movq	-96(%rbp), %rax	# s, tmp206
	movzbl	(%rax), %eax	# *s_103, D.13662
	cmpb	$10, %al	#, D.13662
	je	.L338	#,
	.loc 1 1069 0
	jmp	.L336	#
.L338:
	.loc 1 1070 0
	addl	$1, %r12d	#, count
	.loc 1 1071 0
	jmp	.L339	#
.L341:
	.loc 1 1072 0
	movq	-112(%rbp), %rax	# len, len.229
	subq	$1, %rax	#, len.230
	movq	%rax, -112(%rbp)	# len.230, len
	.loc 1 1073 0
	subq	$1, -96(%rbp)	#, s
	.loc 1 1074 0
	addl	$1, %r12d	#, count
.L339:
	.loc 1 1071 0 discriminator 1
	movq	-112(%rbp), %rax	# len, len.231
	testq	%rax, %rax	# len.231
	je	.L340	#,
	.loc 1 1071 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# s, tmp207
	subq	$1, %rax	#, D.13663
	movzbl	(%rax), %eax	# *_113, D.13662
	cmpb	$10, %al	#, D.13662
	je	.L341	#,
.L340:
	.loc 1 1067 0 is_stmt 1
	jmp	.L342	#
.L337:
.LBB28:
	.loc 1 1079 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.233
	movl	12(%rax), %eax	# PL_rs.233_119->sv_flags, D.13655
	andl	$262144, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L343	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.234
	movq	(%rax), %rax	# PL_rs.234_122->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_123].xpv_cur, rslen.235
	movq	%rax, -104(%rbp)	# rslen.235, rslen
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.236
	movq	(%rax), %rax	# PL_rs.236_125->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XPV *)_126].xpv_pv, iftmp.232
	jmp	.L344	#
.L343:
	.loc 1 1079 0 discriminator 2
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.237
	leaq	-104(%rbp), %rcx	#, tmp208
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp208,
	movq	%rax, %rdi	# PL_rs.237,
	call	Perl_sv_2pv_flags	#
.L344:
	.loc 1 1079 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.232, rsptr
	.loc 1 1081 0 is_stmt 1 discriminator 3
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.239
	movl	12(%rax), %eax	# PL_rs.239_131->sv_flags, D.13655
	andl	$536870912, %eax	#, D.13655
	.loc 1 1083 0 discriminator 3
	testl	%eax, %eax	# D.13655
	je	.L345	#,
	.loc 1 1082 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.240
	.loc 1 1083 0
	movq	%rax, %rdi	# PL_rs.240,
	call	Perl_sv_len_utf8	#
	jmp	.L346	#
.L345:
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# rslen, iftmp.238
.L346:
	.loc 1 1081 0 is_stmt 1
	movq	%rax, -72(%rbp)	# iftmp.238, rs_charlen
	.loc 1 1085 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.241
	movl	12(%rax), %edx	# PL_rs.241_138->sv_flags, D.13655
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	xorl	%edx, %eax	# D.13655, D.13655
	andl	$536870912, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L347	#,
	.loc 1 1087 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.242
	movl	12(%rax), %eax	# PL_rs.242_143->sv_flags, D.13655
	andl	$536870912, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L348	#,
.LBB29:
	.loc 1 1089 0
	movb	$1, -117(%rbp)	#, is_utf8
	.loc 1 1090 0
	leaq	-117(%rbp), %rdx	#, tmp209
	leaq	-104(%rbp), %rcx	#, tmp210
	movq	-64(%rbp), %rax	# rsptr, tmp211
	movq	%rcx, %rsi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -88(%rbp)	# tmp212, temp_buffer
	.loc 1 1092 0
	movzbl	-117(%rbp), %eax	# is_utf8, is_utf8.243
	testb	%al, %al	# is_utf8.243
	je	.L349	#,
	.loc 1 1096 0
	movq	$0, -88(%rbp)	#, temp_buffer
.LBE29:
	jmp	.L336	#
.L349:
.LBB30:
	.loc 1 1099 0
	movq	-88(%rbp), %rax	# temp_buffer, tmp213
	movq	%rax, -64(%rbp)	# tmp213, rsptr
.LBE30:
	jmp	.L347	#
.L348:
	.loc 1 1101 0
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.244
	testq	%rax, %rax	# PL_encoding.244
	je	.L351	#,
	.loc 1 1104 0
	movq	-104(%rbp), %rdx	# rslen, rslen.245
	movq	-64(%rbp), %rax	# rsptr, tmp214
	movq	%rdx, %rsi	# rslen.245,
	movq	%rax, %rdi	# tmp214,
	call	Perl_newSVpvn	#
	movq	%rax, -80(%rbp)	# tmp215, svrecode
	.loc 1 1105 0
	movq	PL_encoding(%rip), %rdx	# PL_encoding, PL_encoding.246
	movq	-80(%rbp), %rax	# svrecode, tmp216
	movq	%rdx, %rsi	# PL_encoding.246,
	movq	%rax, %rdi	# tmp216,
	call	Perl_sv_recode_to_utf8	#
	.loc 1 1106 0
	movq	-80(%rbp), %rax	# svrecode, tmp217
	movl	12(%rax), %eax	# svrecode_152->sv_flags, D.13655
	andl	$262144, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L352	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# svrecode, tmp218
	movq	(%rax), %rax	# svrecode_152->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_156].xpv_cur, rslen.248
	movq	%rax, -104(%rbp)	# rslen.248, rslen
	movq	-80(%rbp), %rax	# svrecode, tmp219
	movq	(%rax), %rax	# svrecode_152->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XPV *)_158].xpv_pv, iftmp.247
	jmp	.L353	#
.L352:
	.loc 1 1106 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp220
	movq	-80(%rbp), %rax	# svrecode, tmp221
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	Perl_sv_2pv_flags	#
.L353:
	.loc 1 1106 0 discriminator 1
	movq	%rax, -64(%rbp)	# iftmp.247, rsptr
	.loc 1 1107 0 is_stmt 1 discriminator 1
	movq	-80(%rbp), %rax	# svrecode, tmp222
	movq	%rax, %rdi	# tmp222,
	call	Perl_sv_len_utf8	#
	movq	%rax, -72(%rbp)	# tmp223, rs_charlen
	jmp	.L347	#
.L351:
	.loc 1 1111 0
	leaq	-104(%rbp), %rdx	#, tmp224
	movq	-64(%rbp), %rax	# rsptr, tmp225
	movq	%rdx, %rsi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -88(%rbp)	# tmp226, temp_buffer
	.loc 1 1112 0
	movq	-88(%rbp), %rax	# temp_buffer, tmp227
	movq	%rax, -64(%rbp)	# tmp227, rsptr
.L347:
	.loc 1 1115 0
	movq	-104(%rbp), %rax	# rslen, rslen.249
	cmpq	$1, %rax	#, rslen.249
	jne	.L354	#,
	.loc 1 1116 0
	movq	-96(%rbp), %rax	# s, tmp228
	movzbl	(%rax), %edx	# *s_103, D.13662
	movq	-64(%rbp), %rax	# rsptr, tmp229
	movzbl	(%rax), %eax	# *rsptr_19, D.13662
	cmpb	%al, %dl	# D.13662, D.13662
	je	.L355	#,
	.loc 1 1117 0
	jmp	.L336	#
.L355:
	.loc 1 1118 0
	addl	$1, %r12d	#, count
	jmp	.L342	#
.L354:
	.loc 1 1121 0
	movq	-104(%rbp), %rax	# rslen, rslen.250
	leaq	-1(%rax), %rdx	#, D.13661
	movq	-112(%rbp), %rax	# len, len.251
	cmpq	%rax, %rdx	# len.251, D.13661
	jbe	.L357	#,
	.loc 1 1122 0
	jmp	.L336	#
.L357:
	.loc 1 1123 0
	movq	-112(%rbp), %rdx	# len, len.252
	movq	-104(%rbp), %rax	# rslen, rslen.253
	subq	%rax, %rdx	# rslen.253, D.13661
	movq	%rdx, %rax	# D.13661, D.13661
	addq	$1, %rax	#, len.254
	movq	%rax, -112(%rbp)	# len.254, len
	.loc 1 1124 0
	movq	-104(%rbp), %rax	# rslen, rslen.255
	movl	$1, %edx	#, tmp230
	subq	%rax, %rdx	# rslen.255, D.13664
	movq	%rdx, %rax	# D.13664, D.13664
	addq	%rax, -96(%rbp)	# D.13664, s
	.loc 1 1125 0
	movq	-104(%rbp), %rdx	# rslen, rslen.256
	movq	-64(%rbp), %rcx	# rsptr, tmp231
	movq	-96(%rbp), %rax	# s, tmp232
	movq	%rcx, %rsi	# tmp231,
	movq	%rax, %rdi	# tmp232,
	call	memcmp	#
	testl	%eax, %eax	# D.13660
	je	.L358	#,
	.loc 1 1126 0
	nop
	jmp	.L336	#
.L358:
	.loc 1 1127 0
	movq	-72(%rbp), %rax	# rs_charlen, tmp233
	movl	%eax, %edx	# tmp233, D.13665
	movl	%r12d, %eax	# count, count.257
	addl	%edx, %eax	# D.13665, D.13665
	movl	%eax, %r12d	# D.13665, count
.L342:
.LBE28:
	.loc 1 1130 0
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$10223616, %eax	#, D.13655
	cmpl	$262144, %eax	#, D.13655
	jne	.L359	#,
	.loc 1 1130 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_187].xpv_cur, n_a.259
	movq	%rax, -104(%rbp)	# n_a.259, n_a
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	(%rax), %rax	# MEM[(struct XPV *)_189].xpv_pv, iftmp.258
	jmp	.L360	#
.L359:
	.loc 1 1130 0 discriminator 2
	leaq	-104(%rbp), %rax	#, tmp234
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp234,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_pvn_force_flags	#
.L360:
	.loc 1 1130 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.258, s
	.loc 1 1131 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	-112(%rbp), %rdx	# len, len.260
	movq	%rdx, 8(%rax)	# len.260, MEM[(struct XPV *)_193].xpv_cur
	.loc 1 1132 0 discriminator 3
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	(%rax), %rdx	# MEM[(struct XPV *)_195].xpv_pv, D.13663
	movq	(%rbx), %rax	# sv_55(D)->sv_any, D.13656
	movq	8(%rax), %rax	# MEM[(struct XPV *)_197].xpv_cur, D.13661
	addq	%rdx, %rax	# D.13663, D.13663
	movb	$0, (%rax)	#, *_199
	.loc 1 1133 0 discriminator 3
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$2096955391, %eax	#, D.13655
	movl	%eax, 12(%rbx)	# D.13655, sv_55(D)->sv_flags
	.loc 1 1134 0 discriminator 3
	movl	12(%rbx), %eax	# sv_55(D)->sv_flags, D.13655
	andl	$16384, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L336	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_set	#
.L336:
	.loc 1 1138 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, svrecode
	je	.L361	#,
	.loc 1 1139 0
	movq	-80(%rbp), %rax	# svrecode, tmp235
	movq	%rax, %rdi	# tmp235,
	call	Perl_sv_free	#
.L361:
	.loc 1 1141 0
	movq	-88(%rbp), %rax	# temp_buffer, tmp236
	movq	%rax, %rdi	# tmp236,
	call	Perl_safesysfree	#
	.loc 1 1142 0
	movl	%r12d, %eax	# count, D.13654
.L362:
	.loc 1 1143 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_do_chomp, .-Perl_do_chomp
	.globl	Perl_do_vop
	.type	Perl_do_vop, @function
Perl_do_vop:
.LFB15:
	.loc 1 1147 0
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
	subq	$144, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -148(%rbp)	# optype, optype
	movq	%rsi, -160(%rbp)	# sv, sv
	movq	%rdx, -168(%rbp)	# left, left
	movq	%rcx, -176(%rbp)	# right, right
	.loc 1 1162 0
	movq	-168(%rbp), %rax	# left, tmp324
	movl	12(%rax), %eax	# left_65(D)->sv_flags, D.13667
	andl	$536870912, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	je	.L364	#,
	.loc 1 1162 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.262
	movzbl	37(%rax), %eax	# PL_curcop.262_68->op_private, D.13668
	movzbl	%al, %eax	# D.13668, D.13669
	andl	$8, %eax	#, D.13669
	testl	%eax, %eax	# D.13669
	jne	.L364	#,
	.loc 1 1162 0 discriminator 3
	movl	$1, %eax	#, iftmp.261
	jmp	.L365	#
.L364:
	.loc 1 1162 0 discriminator 2
	movl	$0, %eax	#, iftmp.261
.L365:
	.loc 1 1162 0 discriminator 4
	movb	%al, -134(%rbp)	# iftmp.261, left_utf
	.loc 1 1163 0 is_stmt 1 discriminator 4
	movq	-176(%rbp), %rax	# right, tmp325
	movl	12(%rax), %eax	# right_75(D)->sv_flags, D.13667
	andl	$536870912, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	je	.L366	#,
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.264
	movzbl	37(%rax), %eax	# PL_curcop.264_78->op_private, D.13668
	movzbl	%al, %eax	# D.13668, D.13669
	andl	$8, %eax	#, D.13669
	testl	%eax, %eax	# D.13669
	jne	.L366	#,
	.loc 1 1163 0 discriminator 3
	movl	$1, %eax	#, iftmp.263
	jmp	.L367	#
.L366:
	.loc 1 1163 0 discriminator 2
	movl	$0, %eax	#, iftmp.263
.L367:
	.loc 1 1163 0 discriminator 4
	movb	%al, -133(%rbp)	# iftmp.263, right_utf
	.loc 1 1164 0 is_stmt 1 discriminator 4
	movl	$0, -132(%rbp)	#, needlen
	.loc 1 1166 0 discriminator 4
	cmpb	$0, -134(%rbp)	#, left_utf
	je	.L368	#,
	.loc 1 1166 0 is_stmt 0 discriminator 1
	cmpb	$0, -133(%rbp)	#, right_utf
	jne	.L368	#,
	.loc 1 1167 0 is_stmt 1
	movq	-176(%rbp), %rax	# right, tmp326
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp326,
	call	Perl_sv_utf8_upgrade_flags	#
	jmp	.L369	#
.L368:
	.loc 1 1168 0
	cmpb	$0, -134(%rbp)	#, left_utf
	jne	.L369	#,
	.loc 1 1168 0 is_stmt 0 discriminator 1
	cmpb	$0, -133(%rbp)	#, right_utf
	je	.L369	#,
	.loc 1 1169 0 is_stmt 1
	movq	-168(%rbp), %rax	# left, tmp327
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp327,
	call	Perl_sv_utf8_upgrade_flags	#
.L369:
	.loc 1 1171 0
	movq	-160(%rbp), %rax	# sv, tmp328
	cmpq	-168(%rbp), %rax	# left, tmp328
	jne	.L370	#,
	.loc 1 1171 0 is_stmt 0 discriminator 1
	cmpl	$91, -148(%rbp)	#, optype
	je	.L371	#,
	movq	-160(%rbp), %rax	# sv, tmp329
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	andl	$118423552, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	jne	.L371	#,
	movq	-160(%rbp), %rax	# sv, tmp330
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	andl	$8192, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	jne	.L371	#,
.L370:
	.loc 1 1172 0 is_stmt 1
	movq	-160(%rbp), %rax	# sv, tmp331
	movl	$0, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp331,
	call	Perl_sv_setpvn	#
.L371:
	.loc 1 1173 0
	movq	-168(%rbp), %rax	# left, tmp332
	movl	12(%rax), %eax	# left_65(D)->sv_flags, D.13667
	andl	$262144, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	je	.L372	#,
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# left, tmp333
	movq	(%rax), %rax	# left_65(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_94].xpv_cur, leftlen.266
	movq	%rax, -120(%rbp)	# leftlen.266, leftlen
	movq	-168(%rbp), %rax	# left, tmp334
	movq	(%rax), %rax	# left_65(D)->sv_any, D.13670
	movq	(%rax), %rax	# MEM[(struct XPV *)_96].xpv_pv, iftmp.265
	jmp	.L373	#
.L372:
	.loc 1 1173 0 discriminator 2
	leaq	-120(%rbp), %rcx	#, tmp335
	movq	-168(%rbp), %rax	# left, tmp336
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp335,
	movq	%rax, %rdi	# tmp336,
	call	Perl_sv_2pv_flags	#
.L373:
	.loc 1 1173 0 discriminator 3
	movq	%rax, %r14	# iftmp.265, lc
	movq	%r14, -80(%rbp)	# lc, lsave
	.loc 1 1174 0 is_stmt 1 discriminator 3
	movq	-176(%rbp), %rax	# right, tmp337
	movl	12(%rax), %eax	# right_75(D)->sv_flags, D.13667
	andl	$262144, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	je	.L374	#,
	.loc 1 1174 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# right, tmp338
	movq	(%rax), %rax	# right_75(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_103].xpv_cur, rightlen.268
	movq	%rax, -112(%rbp)	# rightlen.268, rightlen
	movq	-176(%rbp), %rax	# right, tmp339
	movq	(%rax), %rax	# right_75(D)->sv_any, D.13670
	movq	(%rax), %rax	# MEM[(struct XPV *)_105].xpv_pv, iftmp.267
	jmp	.L375	#
.L374:
	.loc 1 1174 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp340
	movq	-176(%rbp), %rax	# right, tmp341
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp340,
	movq	%rax, %rdi	# tmp341,
	call	Perl_sv_2pv_flags	#
.L375:
	.loc 1 1174 0 discriminator 3
	movq	%rax, %r13	# iftmp.267, rc
	movq	%r13, -72(%rbp)	# rc, rsave
	.loc 1 1175 0 is_stmt 1 discriminator 3
	movq	-112(%rbp), %rdx	# rightlen, rightlen.269
	movq	-120(%rbp), %rax	# leftlen, leftlen.270
	cmpq	%rax, %rdx	# leftlen.270, rightlen.269
	cmovbe	%rdx, %rax	# rightlen.269,, D.13671
	movl	%eax, %ebx	# D.13671, len
	.loc 1 1176 0 discriminator 3
	movl	%ebx, -128(%rbp)	# len, lensave
	.loc 1 1177 0 discriminator 3
	cmpb	$0, -134(%rbp)	#, left_utf
	jne	.L376	#,
	.loc 1 1177 0 is_stmt 0 discriminator 2
	cmpb	$0, -133(%rbp)	#, right_utf
	je	.L377	#,
.L376:
	.loc 1 1177 0 discriminator 1
	movq	-160(%rbp), %rax	# sv, tmp342
	cmpq	-168(%rbp), %rax	# left, tmp342
	je	.L378	#,
	movq	-160(%rbp), %rax	# sv, tmp343
	cmpq	-176(%rbp), %rax	# right, tmp343
	jne	.L377	#,
.L378:
	.loc 1 1178 0 is_stmt 1
	cmpl	$91, -148(%rbp)	#, optype
	je	.L379	#,
	.loc 1 1178 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# leftlen, leftlen.272
	movl	%eax, %edx	# leftlen.272, D.13672
	movq	-112(%rbp), %rax	# rightlen, rightlen.273
	addl	%edx, %eax	# D.13672, D.13672
	jmp	.L380	#
.L379:
	.loc 1 1178 0 discriminator 2
	movl	%ebx, %eax	# len, iftmp.271
.L380:
	.loc 1 1178 0 discriminator 3
	movl	%eax, -132(%rbp)	# iftmp.271, needlen
	.loc 1 1179 0 is_stmt 1 discriminator 3
	movl	-132(%rbp), %eax	# needlen, tmp344
	addl	$1, %eax	#, D.13669
	cltq
	movq	%rax, %rdi	# D.13671,
	call	Perl_safesysmalloc	#
	movq	%rax, %r12	#, dc
	movl	-132(%rbp), %eax	# needlen, tmp345
	addl	$1, %eax	#, D.13669
	cltq
	movq	%rax, %rdx	# D.13671,
	movl	$0, %esi	#,
	movq	%r12, %rdi	# dc,
	call	memset	#
	jmp	.L381	#
.L377:
	.loc 1 1181 0
	movq	-160(%rbp), %rax	# sv, tmp346
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	andl	$118423552, %eax	#, D.13667
	testl	%eax, %eax	# D.13667
	jne	.L382	#,
	.loc 1 1181 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# sv, tmp347
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	movzbl	%al, %eax	# D.13667, D.13667
	cmpl	$7, %eax	#, D.13667
	jbe	.L383	#,
.L382:
.LBB31:
	.loc 1 1183 0 is_stmt 1
	movq	-160(%rbp), %rax	# sv, tmp348
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	andl	$10223616, %eax	#, D.13667
	cmpl	$262144, %eax	#, D.13667
	jne	.L384	#,
	.loc 1 1183 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# sv, tmp349
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_148].xpv_cur, n_a.275
	movq	%rax, -104(%rbp)	# n_a.275, n_a
	movq	-160(%rbp), %rax	# sv, tmp350
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %rax	# MEM[(struct XPV *)_150].xpv_pv, iftmp.274
	jmp	.L385	#
.L384:
	.loc 1 1183 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp351
	movq	-160(%rbp), %rax	# sv, tmp352
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp351,
	movq	%rax, %rdi	# tmp352,
	call	Perl_sv_pvn_force_flags	#
.L385:
	.loc 1 1183 0 discriminator 3
	movq	%rax, %r12	# iftmp.274, dc
	.loc 1 1184 0 is_stmt 1 discriminator 3
	movq	-160(%rbp), %rax	# sv, tmp353
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_154].xpv_cur, D.13671
	movslq	%ebx, %rax	# len, D.13671
	cmpq	%rax, %rdx	# D.13671, D.13671
	jae	.L386	#,
	.loc 1 1185 0
	movq	-160(%rbp), %rax	# sv, tmp354
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_157].xpv_len, D.13671
	leal	1(%rbx), %eax	#, D.13669
	cltq
	cmpq	%rax, %rdx	# D.13671, D.13671
	jae	.L387	#,
	.loc 1 1185 0 is_stmt 0 discriminator 1
	leal	1(%rbx), %eax	#, D.13669
	movslq	%eax, %rdx	# D.13669, D.13671
	movq	-160(%rbp), %rax	# sv, tmp355
	movq	%rdx, %rsi	# D.13671,
	movq	%rax, %rdi	# tmp355,
	call	Perl_sv_grow	#
	jmp	.L388	#
.L387:
	.loc 1 1185 0 discriminator 2
	movq	-160(%rbp), %rax	# sv, tmp356
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %rax	# MEM[(struct XPV *)_164].xpv_pv, iftmp.276
.L388:
	.loc 1 1185 0 discriminator 3
	movq	%rax, %r12	# iftmp.276, dc
	.loc 1 1186 0 is_stmt 1 discriminator 3
	movslq	%ebx, %rdx	# len, D.13671
	movq	-160(%rbp), %rax	# sv, tmp357
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_168].xpv_cur, D.13671
	subq	%rax, %rdx	# D.13671, D.13671
	movq	%rdx, %rax	# D.13671, D.13671
	leaq	1(%rax), %rdx	#, D.13671
	movq	-160(%rbp), %rax	# sv, tmp358
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_172].xpv_cur, D.13671
	addq	%r12, %rax	# dc, D.13670
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13670,
	call	memset	#
.L386:
	.loc 1 1188 0
	cmpl	$91, -148(%rbp)	#, optype
	je	.L389	#,
	.loc 1 1188 0 is_stmt 0 discriminator 1
	cmpb	$0, -134(%rbp)	#, left_utf
	jne	.L390	#,
	cmpb	$0, -133(%rbp)	#, right_utf
	je	.L389	#,
.L390:
	.loc 1 1189 0 is_stmt 1
	movq	-160(%rbp), %rax	# sv, tmp359
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	16(%rax), %rax	# MEM[(struct XPV *)_175].xpv_len, D.13671
	movq	-120(%rbp), %rcx	# leftlen, leftlen.278
	movq	-112(%rbp), %rdx	# rightlen, rightlen.279
	addq	%rcx, %rdx	# leftlen.278, D.13671
	addq	$1, %rdx	#, D.13671
	cmpq	%rdx, %rax	# D.13671, D.13671
	jae	.L391	#,
	.loc 1 1189 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rdx	# leftlen, leftlen.280
	movq	-112(%rbp), %rax	# rightlen, rightlen.281
	addq	%rdx, %rax	# leftlen.280, D.13671
	leaq	1(%rax), %rdx	#, D.13671
	movq	-160(%rbp), %rax	# sv, tmp360
	movq	%rdx, %rsi	# D.13671,
	movq	%rax, %rdi	# tmp360,
	call	Perl_sv_grow	#
	jmp	.L392	#
.L391:
	.loc 1 1189 0 discriminator 2
	movq	-160(%rbp), %rax	# sv, tmp361
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %rax	# MEM[(struct XPV *)_186].xpv_pv, iftmp.277
.L392:
	.loc 1 1189 0 discriminator 3
	movq	%rax, %r12	# iftmp.277, dc
.LBE31:
	.loc 1 1181 0 is_stmt 1 discriminator 3
	jmp	.L381	#
.L389:
	.loc 1 1181 0 is_stmt 0
	jmp	.L381	#
.L383:
	.loc 1 1192 0 is_stmt 1
	cmpl	$91, -148(%rbp)	#, optype
	je	.L393	#,
	.loc 1 1193 0
	movq	-112(%rbp), %rdx	# rightlen, rightlen.283
	movq	-120(%rbp), %rax	# leftlen, leftlen.284
	cmpq	%rax, %rdx	# leftlen.284, rightlen.283
	cmovae	%rdx, %rax	# rightlen.283,, D.13671
	jmp	.L394	#
.L393:
	.loc 1 1192 0 discriminator 1
	movl	%ebx, %eax	# len, iftmp.282
.L394:
	.loc 1 1192 0 is_stmt 0 discriminator 2
	movl	%eax, -132(%rbp)	# iftmp.282, needlen
	.loc 1 1194 0 is_stmt 1 discriminator 2
	movl	-132(%rbp), %eax	# needlen, tmp362
	addl	$1, %eax	#, D.13669
	cltq
	movq	%rax, %rdi	# D.13671,
	call	Perl_safesysmalloc	#
	movq	%rax, %r12	#, dc
	movl	-132(%rbp), %eax	# needlen, tmp363
	addl	$1, %eax	#, D.13669
	cltq
	movq	%rax, %rdx	# D.13671,
	movl	$0, %esi	#,
	movq	%r12, %rdi	# dc,
	call	memset	#
	.loc 1 1195 0 discriminator 2
	movl	-132(%rbp), %eax	# needlen, tmp364
	movslq	%eax, %rdx	# tmp364, D.13671
	movq	-160(%rbp), %rax	# sv, tmp365
	movq	%r12, %rsi	# dc,
	movq	%rax, %rdi	# tmp365,
	call	Perl_sv_usepvn	#
	.loc 1 1196 0 discriminator 2
	movq	-160(%rbp), %rax	# sv, tmp366
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %r12	# MEM[(struct XPV *)_144].xpv_pv, dc
.L381:
	.loc 1 1198 0
	movq	-160(%rbp), %rax	# sv, tmp367
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movslq	%ebx, %rdx	# len, D.13671
	movq	%rdx, 8(%rax)	# D.13671, MEM[(struct XPV *)_189].xpv_cur
	.loc 1 1199 0
	movq	-160(%rbp), %rax	# sv, tmp368
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	andl	$1223753727, %eax	#, D.13667
	movl	%eax, %edx	# D.13667, D.13667
	movq	-160(%rbp), %rax	# sv, tmp369
	movl	%edx, 12(%rax)	# D.13667, sv_86(D)->sv_flags
	movq	-160(%rbp), %rax	# sv, tmp370
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	orl	$67371008, %eax	#, D.13667
	movl	%eax, %edx	# D.13667, D.13667
	movq	-160(%rbp), %rax	# sv, tmp371
	movl	%edx, 12(%rax)	# D.13667, sv_86(D)->sv_flags
	.loc 1 1200 0
	cmpb	$0, -134(%rbp)	#, left_utf
	jne	.L395	#,
	.loc 1 1200 0 is_stmt 0 discriminator 1
	cmpb	$0, -133(%rbp)	#, right_utf
	je	.L396	#,
.L395:
.LBB32:
	.loc 1 1202 0 is_stmt 1
	movq	%r12, -64(%rbp)	# dc, dcsave
	.loc 1 1203 0
	movq	-120(%rbp), %rax	# leftlen, tmp372
	movq	%rax, -96(%rbp)	# tmp372, lulen
	.loc 1 1204 0
	movq	-112(%rbp), %rax	# rightlen, tmp373
	movq	%rax, -88(%rbp)	# tmp373, rulen
	.loc 1 1207 0
	movl	-148(%rbp), %eax	# optype, optype
	cmpl	$92, %eax	#, optype
	je	.L406	#,
	cmpl	$93, %eax	#, optype
	je	.L410	#,
	cmpl	$91, %eax	#, optype
	je	.L401	#,
	jmp	.L397	#
.L403:
	.loc 1 1210 0
	leaq	-104(%rbp), %rdx	#, tmp375
	movq	-96(%rbp), %rax	# lulen, tmp376
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp376,
	movq	%r14, %rdi	# lc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -56(%rbp)	# tmp377, luc
	.loc 1 1211 0
	movq	-104(%rbp), %rax	# ulen, ulen.285
	addq	%rax, %r14	# ulen.285, lc
	.loc 1 1212 0
	movq	-104(%rbp), %rax	# ulen, ulen.286
	subq	%rax, -96(%rbp)	# ulen.286, lulen
	.loc 1 1213 0
	leaq	-104(%rbp), %rdx	#, tmp378
	movq	-88(%rbp), %rax	# rulen, tmp379
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp379,
	movq	%r13, %rdi	# rc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -48(%rbp)	# tmp380, ruc
	.loc 1 1214 0
	movq	-104(%rbp), %rax	# ulen, ulen.287
	addq	%rax, %r13	# ulen.287, rc
	.loc 1 1215 0
	movq	-104(%rbp), %rax	# ulen, ulen.288
	subq	%rax, -88(%rbp)	# ulen.288, rulen
	.loc 1 1216 0
	movq	-48(%rbp), %rax	# ruc, tmp385
	movq	-56(%rbp), %rdx	# luc, tmp386
	andq	%rdx, %rax	# tmp386, tmp384
	movq	%rax, -40(%rbp)	# tmp384, duc
	.loc 1 1217 0
	movq	-40(%rbp), %rax	# duc, tmp387
	movq	%rax, %rsi	# tmp387,
	movq	%r12, %rdi	# dc,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %r12	#, dc
.L401:
	.loc 1 1209 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, lulen
	je	.L402	#,
	.loc 1 1209 0 is_stmt 0 discriminator 2
	cmpq	$0, -88(%rbp)	#, rulen
	jne	.L403	#,
.L402:
	.loc 1 1219 0 is_stmt 1
	movq	-160(%rbp), %rax	# sv, tmp388
	cmpq	-168(%rbp), %rax	# left, tmp388
	je	.L404	#,
	.loc 1 1219 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# sv, tmp389
	cmpq	-176(%rbp), %rax	# right, tmp389
	jne	.L405	#,
.L404:
	.loc 1 1220 0 is_stmt 1
	movl	-132(%rbp), %eax	# needlen, tmp390
	movslq	%eax, %rdx	# tmp390, D.13671
	movq	-64(%rbp), %rcx	# dcsave, tmp391
	movq	-160(%rbp), %rax	# sv, tmp392
	movq	%rcx, %rsi	# tmp391,
	movq	%rax, %rdi	# tmp392,
	call	Perl_sv_usepvn	#
.L405:
	.loc 1 1221 0
	movq	-160(%rbp), %rax	# sv, tmp393
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	%r12, %rcx	# dc, dc.289
	movq	-64(%rbp), %rdx	# dcsave, dcsave.290
	subq	%rdx, %rcx	# dcsave.290, D.13673
	movq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, 8(%rax)	# D.13671, MEM[(struct XPV *)_396].xpv_cur
	.loc 1 1222 0
	jmp	.L397	#
.L408:
	.loc 1 1225 0
	leaq	-104(%rbp), %rdx	#, tmp394
	movq	-96(%rbp), %rax	# lulen, tmp395
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp395,
	movq	%r14, %rdi	# lc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -56(%rbp)	# tmp396, luc
	.loc 1 1226 0
	movq	-104(%rbp), %rax	# ulen, ulen.291
	addq	%rax, %r14	# ulen.291, lc
	.loc 1 1227 0
	movq	-104(%rbp), %rax	# ulen, ulen.292
	subq	%rax, -96(%rbp)	# ulen.292, lulen
	.loc 1 1228 0
	leaq	-104(%rbp), %rdx	#, tmp397
	movq	-88(%rbp), %rax	# rulen, tmp398
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp398,
	movq	%r13, %rdi	# rc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -48(%rbp)	# tmp399, ruc
	.loc 1 1229 0
	movq	-104(%rbp), %rax	# ulen, ulen.293
	addq	%rax, %r13	# ulen.293, rc
	.loc 1 1230 0
	movq	-104(%rbp), %rax	# ulen, ulen.294
	subq	%rax, -88(%rbp)	# ulen.294, rulen
	.loc 1 1231 0
	movq	-48(%rbp), %rax	# ruc, tmp404
	movq	-56(%rbp), %rdx	# luc, tmp405
	xorq	%rdx, %rax	# tmp405, tmp403
	movq	%rax, -40(%rbp)	# tmp403, duc
	.loc 1 1232 0
	movq	-40(%rbp), %rax	# duc, tmp406
	movq	%rax, %rsi	# tmp406,
	movq	%r12, %rdi	# dc,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %r12	#, dc
.L406:
	.loc 1 1224 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, lulen
	je	.L407	#,
	.loc 1 1224 0 is_stmt 0 discriminator 2
	cmpq	$0, -88(%rbp)	#, rulen
	jne	.L408	#,
.L407:
	.loc 1 1234 0 is_stmt 1
	jmp	.L409	#
.L411:
	.loc 1 1237 0
	leaq	-104(%rbp), %rdx	#, tmp407
	movq	-96(%rbp), %rax	# lulen, tmp408
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp408,
	movq	%r14, %rdi	# lc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -56(%rbp)	# tmp409, luc
	.loc 1 1238 0
	movq	-104(%rbp), %rax	# ulen, ulen.295
	addq	%rax, %r14	# ulen.295, lc
	.loc 1 1239 0
	movq	-104(%rbp), %rax	# ulen, ulen.296
	subq	%rax, -96(%rbp)	# ulen.296, lulen
	.loc 1 1240 0
	leaq	-104(%rbp), %rdx	#, tmp410
	movq	-88(%rbp), %rax	# rulen, tmp411
	movl	$105, %ecx	#,
	movq	%rax, %rsi	# tmp411,
	movq	%r13, %rdi	# rc,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -48(%rbp)	# tmp412, ruc
	.loc 1 1241 0
	movq	-104(%rbp), %rax	# ulen, ulen.297
	addq	%rax, %r13	# ulen.297, rc
	.loc 1 1242 0
	movq	-104(%rbp), %rax	# ulen, ulen.298
	subq	%rax, -88(%rbp)	# ulen.298, rulen
	.loc 1 1243 0
	movq	-48(%rbp), %rax	# ruc, tmp417
	movq	-56(%rbp), %rdx	# luc, tmp418
	orq	%rdx, %rax	# tmp418, tmp416
	movq	%rax, -40(%rbp)	# tmp416, duc
	.loc 1 1244 0
	movq	-40(%rbp), %rax	# duc, tmp419
	movq	%rax, %rsi	# tmp419,
	movq	%r12, %rdi	# dc,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %r12	#, dc
.L410:
	.loc 1 1236 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, lulen
	je	.L409	#,
	.loc 1 1236 0 is_stmt 0 discriminator 2
	cmpq	$0, -88(%rbp)	#, rulen
	jne	.L411	#,
.L409:
	.loc 1 1247 0 is_stmt 1
	movq	-160(%rbp), %rax	# sv, tmp420
	cmpq	-168(%rbp), %rax	# left, tmp420
	je	.L412	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# sv, tmp421
	cmpq	-176(%rbp), %rax	# right, tmp421
	jne	.L413	#,
.L412:
	.loc 1 1248 0 is_stmt 1
	movl	-132(%rbp), %eax	# needlen, tmp422
	movslq	%eax, %rdx	# tmp422, D.13671
	movq	-64(%rbp), %rcx	# dcsave, tmp423
	movq	-160(%rbp), %rax	# sv, tmp424
	movq	%rcx, %rsi	# tmp423,
	movq	%rax, %rdi	# tmp424,
	call	Perl_sv_usepvn	#
.L413:
	.loc 1 1249 0
	movq	-160(%rbp), %rax	# sv, tmp425
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	%r12, %rcx	# dc, dc.299
	movq	-64(%rbp), %rdx	# dcsave, dcsave.300
	subq	%rdx, %rcx	# dcsave.300, D.13673
	movq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, 8(%rax)	# D.13671, MEM[(struct XPV *)_426].xpv_cur
	.loc 1 1250 0
	cmpq	$0, -88(%rbp)	#, rulen
	je	.L414	#,
	.loc 1 1251 0
	movq	-88(%rbp), %rdx	# rulen, tmp426
	movq	-160(%rbp), %rax	# sv, tmp427
	movl	$2, %ecx	#,
	movq	%r13, %rsi	# rc,
	movq	%rax, %rdi	# tmp427,
	call	Perl_sv_catpvn_flags	#
	jmp	.L415	#
.L414:
	.loc 1 1252 0
	cmpq	$0, -96(%rbp)	#, lulen
	je	.L416	#,
	.loc 1 1253 0
	movq	-96(%rbp), %rdx	# lulen, tmp428
	movq	-160(%rbp), %rax	# sv, tmp429
	movl	$2, %ecx	#,
	movq	%r14, %rsi	# lc,
	movq	%rax, %rdi	# tmp429,
	call	Perl_sv_catpvn_flags	#
	jmp	.L415	#
.L416:
	.loc 1 1255 0
	movq	-160(%rbp), %rax	# sv, tmp430
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %rdx	# MEM[(struct XPV *)_431].xpv_pv, D.13678
	movq	-160(%rbp), %rax	# sv, tmp431
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_433].xpv_cur, D.13671
	addq	%rdx, %rax	# D.13678, D.13678
	movb	$0, (%rax)	#, *_435
	.loc 1 1256 0
	jmp	.L443	#
.L415:
.L443:
	nop
.L397:
	.loc 1 1258 0
	movq	-160(%rbp), %rax	# sv, tmp432
	movl	12(%rax), %eax	# sv_86(D)->sv_flags, D.13667
	orl	$536870912, %eax	#, D.13667
	movl	%eax, %edx	# D.13667, D.13667
	movq	-160(%rbp), %rax	# sv, tmp433
	movl	%edx, 12(%rax)	# D.13667, sv_86(D)->sv_flags
	.loc 1 1259 0
	nop
	jmp	.L417	#
.L396:
.LBE32:
	.loc 1 1263 0
	movl	%ebx, %eax	# len, len.301
	cmpl	$31, %eax	#, len.301
	jbe	.L418	#,
	.loc 1 1264 0 discriminator 1
	movq	%r12, %rax	# dc, dc.302
	andl	$7, %eax	#, D.13671
	.loc 1 1263 0 discriminator 1
	testq	%rax, %rax	# D.13671
	jne	.L418	#,
	.loc 1 1265 0
	movq	%r14, %rax	# lc, lc.303
	andl	$7, %eax	#, D.13671
	.loc 1 1264 0
	testq	%rax, %rax	# D.13671
	jne	.L418	#,
	.loc 1 1266 0
	movq	%r13, %rax	# rc, rc.304
	andl	$7, %eax	#, D.13671
	.loc 1 1265 0
	testq	%rax, %rax	# D.13671
	jne	.L418	#,
.LBB33:
	.loc 1 1268 0
	movl	%ebx, %eax	# len, tmp434
	andl	$31, %eax	#, tmp434
	movl	%eax, -124(%rbp)	# tmp434, remainder
	.loc 1 1269 0
	movslq	%ebx, %rax	# len, D.13671
	shrq	$5, %rax	#, D.13671
	movl	%eax, %ebx	# D.13671, len
	.loc 1 1275 0
	movl	-148(%rbp), %eax	# optype, optype
	cmpl	$92, %eax	#, optype
	je	.L444	#,
	cmpl	$93, %eax	#, optype
	je	.L445	#,
	cmpl	$91, %eax	#, optype
	je	.L446	#,
	jmp	.L419	#
.L424:
	.loc 1 1278 0
	movq	%r12, %rax	# dl, dl.305
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.306
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.306_213, D.13673
	movq	%r13, %rdx	# rl, rl.307
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.307_216, D.13673
	andq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.305_211
	.loc 1 1279 0
	movq	%r12, %rax	# dl, dl.308
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.309
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.309_222, D.13673
	movq	%r13, %rdx	# rl, rl.310
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.310_225, D.13673
	andq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.308_220
	.loc 1 1280 0
	movq	%r12, %rax	# dl, dl.311
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.312
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.312_231, D.13673
	movq	%r13, %rdx	# rl, rl.313
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.313_234, D.13673
	andq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.311_229
	.loc 1 1281 0
	movq	%r12, %rax	# dl, dl.314
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.315
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.315_240, D.13673
	movq	%r13, %rdx	# rl, rl.316
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.316_243, D.13673
	andq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.314_238
	jmp	.L423	#
.L446:
	.loc 1 1277 0
	nop
.L423:
	.loc 1 1277 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.317
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.317
	jne	.L424	#,
	.loc 1 1283 0 is_stmt 1
	jmp	.L419	#
.L426:
	.loc 1 1286 0
	movq	%r12, %rax	# dl, dl.318
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.319
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.319_251, D.13673
	movq	%r13, %rdx	# rl, rl.320
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.320_254, D.13673
	xorq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.318_249
	.loc 1 1287 0
	movq	%r12, %rax	# dl, dl.321
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.322
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.322_260, D.13673
	movq	%r13, %rdx	# rl, rl.323
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.323_263, D.13673
	xorq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.321_258
	.loc 1 1288 0
	movq	%r12, %rax	# dl, dl.324
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.325
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.325_269, D.13673
	movq	%r13, %rdx	# rl, rl.326
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.326_272, D.13673
	xorq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.324_267
	.loc 1 1289 0
	movq	%r12, %rax	# dl, dl.327
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.328
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.328_278, D.13673
	movq	%r13, %rdx	# rl, rl.329
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.329_281, D.13673
	xorq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.327_276
	jmp	.L425	#
.L444:
	.loc 1 1285 0
	nop
.L425:
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.330
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.330
	jne	.L426	#,
	.loc 1 1291 0 is_stmt 1
	jmp	.L419	#
.L428:
	.loc 1 1294 0
	movq	%r12, %rax	# dl, dl.331
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.332
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.332_289, D.13673
	movq	%r13, %rdx	# rl, rl.333
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.333_292, D.13673
	orq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.331_287
	.loc 1 1295 0
	movq	%r12, %rax	# dl, dl.334
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.335
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.335_298, D.13673
	movq	%r13, %rdx	# rl, rl.336
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.336_301, D.13673
	orq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.334_296
	.loc 1 1296 0
	movq	%r12, %rax	# dl, dl.337
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.338
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.338_307, D.13673
	movq	%r13, %rdx	# rl, rl.339
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.339_310, D.13673
	orq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.337_305
	.loc 1 1297 0
	movq	%r12, %rax	# dl, dl.340
	leaq	8(%rax), %r12	#, dl
	movq	%r14, %rdx	# ll, ll.341
	leaq	8(%rdx), %r14	#, ll
	movq	(%rdx), %rcx	# *ll.341_316, D.13673
	movq	%r13, %rdx	# rl, rl.342
	leaq	8(%rdx), %r13	#, rl
	movq	(%rdx), %rdx	# *rl.342_319, D.13673
	orq	%rcx, %rdx	# D.13673, D.13673
	movq	%rdx, (%rax)	# D.13673, *dl.340_314
	jmp	.L427	#
.L445:
	.loc 1 1293 0
	nop
.L427:
	.loc 1 1293 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.343
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.343
	jne	.L428	#,
.L419:
	.loc 1 1305 0 is_stmt 1
	movl	-124(%rbp), %ebx	# remainder, len
.L418:
.LBE33:
	.loc 1 1309 0
	movl	-148(%rbp), %eax	# optype, optype
	cmpl	$92, %eax	#, optype
	je	.L447	#,
	cmpl	$93, %eax	#, optype
	je	.L448	#,
	cmpl	$91, %eax	#, optype
	je	.L449	#,
	jmp	.L417	#
.L433:
	.loc 1 1312 0
	movq	%r12, %rax	# dc, dc.344
	leaq	1(%rax), %r12	#, dc
	movq	%r14, %rdx	# lc, lc.345
	leaq	1(%rdx), %r14	#, lc
	movzbl	(%rdx), %ecx	# *lc.345_331, D.13674
	movq	%r13, %rdx	# rc, rc.346
	leaq	1(%rdx), %r13	#, rc
	movzbl	(%rdx), %edx	# *rc.346_334, D.13674
	andl	%ecx, %edx	# D.13674, D.13675
	movb	%dl, (%rax)	# D.13675, *dc.344_329
	jmp	.L432	#
.L449:
	.loc 1 1311 0
	nop
.L432:
	.loc 1 1311 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.347
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.347
	jne	.L433	#,
	.loc 1 1313 0 is_stmt 1
	jmp	.L417	#
.L435:
	.loc 1 1316 0
	movq	%r12, %rax	# dc, dc.348
	leaq	1(%rax), %r12	#, dc
	movq	%r14, %rdx	# lc, lc.349
	leaq	1(%rdx), %r14	#, lc
	movzbl	(%rdx), %ecx	# *lc.349_342, D.13674
	movq	%r13, %rdx	# rc, rc.350
	leaq	1(%rdx), %r13	#, rc
	movzbl	(%rdx), %edx	# *rc.350_345, D.13674
	xorl	%ecx, %edx	# D.13674, D.13675
	movb	%dl, (%rax)	# D.13675, *dc.348_340
	jmp	.L434	#
.L447:
	.loc 1 1315 0
	nop
.L434:
	.loc 1 1315 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.351
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.351
	jne	.L435	#,
	.loc 1 1317 0 is_stmt 1
	jmp	.L436	#
.L438:
	.loc 1 1320 0
	movq	%r12, %rax	# dc, dc.352
	leaq	1(%rax), %r12	#, dc
	movq	%r14, %rdx	# lc, lc.353
	leaq	1(%rdx), %r14	#, lc
	movzbl	(%rdx), %ecx	# *lc.353_353, D.13674
	movq	%r13, %rdx	# rc, rc.354
	leaq	1(%rdx), %r13	#, rc
	movzbl	(%rdx), %edx	# *rc.354_356, D.13674
	orl	%ecx, %edx	# D.13674, D.13675
	movb	%dl, (%rax)	# D.13675, *dc.352_351
	jmp	.L437	#
.L448:
	.loc 1 1319 0
	nop
.L437:
	.loc 1 1319 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.355
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.355
	jne	.L438	#,
.L436:
	.loc 1 1322 0 is_stmt 1
	movl	-128(%rbp), %ebx	# lensave, len
	.loc 1 1323 0
	movslq	%ebx, %rdx	# len, D.13671
	movq	-112(%rbp), %rax	# rightlen, rightlen.356
	cmpq	%rax, %rdx	# rightlen.356, D.13671
	jae	.L439	#,
	.loc 1 1324 0
	movq	-112(%rbp), %rdx	# rightlen, rightlen.357
	movslq	%ebx, %rax	# len, D.13671
	subq	%rax, %rdx	# D.13671, D.13671
	movslq	%ebx, %rcx	# len, D.13676
	movq	-72(%rbp), %rax	# rsave, tmp437
	leaq	(%rcx,%rax), %rsi	#, D.13677
	movq	-160(%rbp), %rax	# sv, tmp438
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp438,
	call	Perl_sv_catpvn_flags	#
	jmp	.L440	#
.L439:
	.loc 1 1325 0
	movslq	%ebx, %rdx	# len, D.13671
	movq	-120(%rbp), %rax	# leftlen, leftlen.358
	cmpq	%rax, %rdx	# leftlen.358, D.13671
	jae	.L441	#,
	.loc 1 1326 0
	movq	-120(%rbp), %rdx	# leftlen, leftlen.359
	movslq	%ebx, %rax	# len, D.13671
	subq	%rax, %rdx	# D.13671, D.13671
	movslq	%ebx, %rcx	# len, D.13676
	movq	-80(%rbp), %rax	# lsave, tmp439
	leaq	(%rcx,%rax), %rsi	#, D.13677
	movq	-160(%rbp), %rax	# sv, tmp440
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp440,
	call	Perl_sv_catpvn_flags	#
	jmp	.L440	#
.L441:
	.loc 1 1328 0
	movq	-160(%rbp), %rax	# sv, tmp441
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	(%rax), %rdx	# MEM[(struct XPV *)_375].xpv_pv, D.13678
	movq	-160(%rbp), %rax	# sv, tmp442
	movq	(%rax), %rax	# sv_86(D)->sv_any, D.13670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_377].xpv_cur, D.13671
	addq	%rdx, %rax	# D.13678, D.13678
	movb	$0, (%rax)	#, *_379
	.loc 1 1329 0
	jmp	.L450	#
.L440:
.L450:
	nop
.L417:
	.loc 1 1333 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.360
	testb	%al, %al	# PL_tainting.360
	je	.L363	#,
	.loc 1 1333 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.361
	testb	%al, %al	# PL_tainted.361
	je	.L363	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.362
	testb	%al, %al	# PL_tainting.362
	je	.L363	#,
	movq	-160(%rbp), %rax	# sv, tmp443
	movq	%rax, %rdi	# tmp443,
	call	Perl_sv_taint	#
.L363:
	.loc 1 1334 0 is_stmt 1
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_do_vop, .-Perl_do_vop
	.globl	Perl_do_kv
	.type	Perl_do_kv, @function
Perl_do_kv:
.LFB16:
	.loc 1 1338 0
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
	.loc 1 1339 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1340 0
	movq	%rbx, %rax	# sp, sp.363
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.363_18, tmp198
	movq	%rax, -64(%rbp)	# tmp198, hv
	.loc 1 1344 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.365
	movzbl	36(%rax), %eax	# PL_op.365_21->op_flags, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$3, %eax	#, D.13684
	cmpl	$1, %eax	#, D.13684
	je	.L452	#,
	.loc 1 1344 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.367
	movzbl	36(%rax), %eax	# PL_op.367_25->op_flags, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$3, %eax	#, D.13684
	cmpl	$2, %eax	#, D.13684
	je	.L453	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.369
	movzbl	36(%rax), %eax	# PL_op.369_29->op_flags, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$3, %eax	#, D.13684
	cmpl	$3, %eax	#, D.13684
	je	.L454	#,
	call	Perl_block_gimme	#
	jmp	.L457	#
.L454:
	.loc 1 1344 0 discriminator 2
	movl	$1, %eax	#, iftmp.368
	jmp	.L457	#
.L453:
	movl	$0, %eax	#, iftmp.366
	jmp	.L457	#
.L452:
	movl	$128, %eax	#, iftmp.364
.L457:
	.loc 1 1344 0 discriminator 3
	movl	%eax, -80(%rbp)	# iftmp.364, gimme
	.loc 1 1345 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.370
	movzwl	32(%rax), %eax	# PL_op.370_40->op_type, D.13685
	cmpw	$131, %ax	#, D.13685
	sete	%al	#, D.13686
	movzbl	%al, %eax	# D.13686, tmp199
	movl	%eax, -88(%rbp)	# tmp199, dokeys
	.loc 1 1346 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.371
	movzwl	32(%rax), %eax	# PL_op.371_44->op_type, D.13685
	cmpw	$130, %ax	#, D.13685
	sete	%al	#, D.13686
	movzbl	%al, %eax	# D.13686, tmp200
	movl	%eax, -84(%rbp)	# tmp200, dovalues
	.loc 1 1347 0 discriminator 3
	movq	-64(%rbp), %rax	# hv, tmp201
	movl	12(%rax), %eax	# hv_20->sv_flags, D.13687
	movzbl	%al, %eax	# D.13687, D.13687
	cmpl	$11, %eax	#, D.13687
	sete	%al	#, D.13686
	movzbl	%al, %eax	# D.13686, tmp202
	movl	%eax, -76(%rbp)	# tmp202, realhv
	.loc 1 1349 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.372
	movzwl	32(%rax), %eax	# PL_op.372_52->op_type, D.13685
	cmpw	$134, %ax	#, D.13685
	je	.L458	#,
	.loc 1 1349 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.373
	movzwl	32(%rax), %eax	# PL_op.373_54->op_type, D.13685
	cmpw	$11, %ax	#, D.13685
	jne	.L459	#,
.L458:
	.loc 1 1350 0 is_stmt 1
	movl	$1, -84(%rbp)	#, dovalues
	movl	-84(%rbp), %eax	# dovalues, tmp203
	movl	%eax, -88(%rbp)	# tmp203, dokeys
.L459:
	.loc 1 1352 0
	cmpq	$0, -64(%rbp)	#, hv
	jne	.L460	#,
	.loc 1 1353 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.374
	movzbl	36(%rax), %eax	# PL_op.374_58->op_flags, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$32, %eax	#, D.13684
	testl	%eax, %eax	# D.13684
	jne	.L461	#,
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.375
	movzbl	37(%rax), %eax	# PL_op.375_62->op_private, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$8, %eax	#, D.13684
	testl	%eax, %eax	# D.13684
	je	.L462	#,
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.13684
	je	.L462	#,
.L461:
.LBB34:
	.loc 1 1354 0 is_stmt 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.376
	movq	PL_op(%rip), %rax	# PL_op, PL_op.377
	movq	24(%rax), %rax	# PL_op.377_68->op_targ, D.13688
	salq	$3, %rax	#, D.13688
	addq	%rdx, %rax	# PL_curpad.376, D.13689
	movq	(%rax), %rax	# *_71, tmp204
	movq	%rax, -56(%rbp)	# tmp204, targ
	.loc 1 1355 0
	movq	-56(%rbp), %rax	# targ, tmp205
	movl	12(%rax), %eax	# targ_72->sv_flags, D.13687
	movzbl	%al, %eax	# D.13687, D.13687
	cmpl	$9, %eax	#, D.13687
	jne	.L463	#,
	.loc 1 1356 0
	movq	-56(%rbp), %rax	# targ, tmp206
	movq	(%rax), %rax	# targ_72->sv_any, D.13690
	movq	$0, 72(%rax)	#, MEM[(struct XPVLV *)_75].xlv_targ
.L463:
	.loc 1 1357 0
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp207
	movq	%rax, (%rbx)	# tmp207, *sp_76
.L462:
.LBE34:
	.loc 1 1359 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.378
	movq	(%rax), %rax	# PL_op.378_77->op_next, D.13682
	jmp	.L464	#
.L460:
	.loc 1 1362 0
	cmpl	$0, -76(%rbp)	#, realhv
	jne	.L465	#,
	.loc 1 1362 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# hv, tmp208
	movq	%rax, %rdi	# tmp208,
	call	Perl_avhv_keys	#
	jmp	.L466	#
.L465:
	.loc 1 1362 0 discriminator 2
	movq	-64(%rbp), %rax	# hv, iftmp.379
.L466:
	.loc 1 1362 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.379, keys
	.loc 1 1363 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# keys, tmp209
	movq	%rax, %rdi	# tmp209,
	call	Perl_hv_iterinit	#
	.loc 1 1365 0 discriminator 3
	cmpl	$128, -80(%rbp)	#, gimme
	jne	.L467	#,
	.loc 1 1366 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.380
	movq	(%rax), %rax	# PL_op.380_82->op_next, D.13682
	jmp	.L464	#
.L467:
	.loc 1 1368 0
	cmpl	$0, -80(%rbp)	#, gimme
	jne	.L468	#,
.LBB35:
	.loc 1 1370 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.381
	movq	PL_op(%rip), %rax	# PL_op, PL_op.382
	movq	24(%rax), %rax	# PL_op.382_85->op_targ, D.13688
	salq	$3, %rax	#, D.13688
	addq	%rdx, %rax	# PL_curpad.381, D.13689
	movq	(%rax), %rax	# *_88, tmp210
	movq	%rax, -40(%rbp)	# tmp210, targ
	.loc 1 1372 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.383
	movzbl	36(%rax), %eax	# PL_op.383_90->op_flags, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$32, %eax	#, D.13684
	testl	%eax, %eax	# D.13684
	jne	.L469	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.384
	movzbl	37(%rax), %eax	# PL_op.384_94->op_private, D.13683
	movzbl	%al, %eax	# D.13683, D.13684
	andl	$8, %eax	#, D.13684
	testl	%eax, %eax	# D.13684
	je	.L470	#,
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.13684
	je	.L470	#,
.L469:
	.loc 1 1373 0 is_stmt 1
	movq	-40(%rbp), %rax	# targ, tmp211
	movl	12(%rax), %eax	# targ_89->sv_flags, D.13687
	movzbl	%al, %eax	# D.13687, D.13687
	cmpl	$8, %eax	#, D.13687
	ja	.L471	#,
	.loc 1 1374 0
	movq	-40(%rbp), %rax	# targ, tmp212
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	Perl_sv_upgrade	#
	.loc 1 1375 0
	movq	-40(%rbp), %rax	# targ, tmp213
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp213,
	call	Perl_sv_magic	#
.L471:
	.loc 1 1377 0
	movq	-40(%rbp), %rax	# targ, tmp214
	movq	(%rax), %rax	# targ_89->sv_any, D.13690
	movb	$107, 80(%rax)	#, MEM[(struct XPVLV *)_119].xlv_type
	.loc 1 1378 0
	movq	-40(%rbp), %rax	# targ, tmp215
	movq	(%rax), %rax	# targ_89->sv_any, D.13690
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_120].xlv_targ, D.13696
	cmpq	-48(%rbp), %rax	# keys, D.13696
	je	.L472	#,
	.loc 1 1379 0
	movq	-40(%rbp), %rax	# targ, tmp216
	movq	(%rax), %rax	# targ_89->sv_any, D.13690
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_122].xlv_targ, D.13696
	testq	%rax, %rax	# D.13696
	je	.L473	#,
	.loc 1 1380 0
	movq	-40(%rbp), %rax	# targ, tmp217
	movq	(%rax), %rax	# targ_89->sv_any, D.13690
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_124].xlv_targ, D.13696
	movq	%rax, %rdi	# D.13696,
	call	Perl_sv_free	#
.L473:
	.loc 1 1381 0
	movq	-48(%rbp), %rax	# keys, tmp218
	movq	%rax, PL_Sv(%rip)	# tmp218, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.386
	testq	%rax, %rax	# PL_Sv.386
	je	.L475	#,
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.387
	movl	8(%rax), %edx	# PL_Sv.387_127->sv_refcnt, D.13687
	addl	$1, %edx	#, D.13687
	movl	%edx, 8(%rax)	# D.13687, PL_Sv.387_127->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.387_127->sv_refcnt, D.13687
	testl	%eax, %eax	# D.13687
	je	.L475	#,
	.loc 1 1381 0
	nop
.L475:
	.loc 1 1381 0 discriminator 4
	movq	-40(%rbp), %rax	# targ, tmp219
	movq	(%rax), %rax	# targ_89->sv_any, D.13690
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.388
	movq	%rdx, 72(%rax)	# PL_Sv.388, MEM[(struct XPVLV *)_133].xlv_targ
.L472:
	.loc 1 1383 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp220
	movq	%rax, (%rbx)	# tmp220, *sp_135
	.loc 1 1384 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.389
	movq	(%rax), %rax	# PL_op.389_136->op_next, D.13682
	jmp	.L464	#
.L470:
	.loc 1 1387 0
	movq	-48(%rbp), %rax	# keys, tmp221
	movl	12(%rax), %eax	# MEM[(struct SV *)keys_81].sv_flags, D.13687
	andl	$32768, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L476	#,
	.loc 1 1387 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# keys, tmp222
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13691
	jne	.L477	#,
.L476:
	.loc 1 1388 0 is_stmt 1
	movq	-48(%rbp), %rax	# keys, tmp223
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movq	24(%rax), %rdx	# _105->xhv_keys, D.13694
	movq	-48(%rbp), %rax	# keys, tmp224
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movsd	32(%rax), %xmm0	# _107->xnv_nv, D.13695
	cvttsd2siq	%xmm0, %rax	# D.13695, D.13694
	subq	%rax, %rdx	# D.13694, tmp225
	movq	%rdx, %rax	# tmp225, tmp225
	movq	%rax, -72(%rbp)	# tmp225, i
	jmp	.L478	#
.L477:
	.loc 1 1390 0
	movq	$0, -72(%rbp)	#, i
	.loc 1 1392 0
	jmp	.L479	#
.L480:
	.loc 1 1392 0 is_stmt 0 discriminator 2
	addq	$1, -72(%rbp)	#, i
.L479:
	.loc 1 1392 0 discriminator 1
	movq	-48(%rbp), %rax	# keys, tmp226
	movq	%rax, %rdi	# tmp226,
	call	Perl_hv_iternext	#
	testq	%rax, %rax	# D.13692
	jne	.L480	#,
.L478:
.LBB36:
	.loc 1 1394 0 is_stmt 1
	movq	-72(%rbp), %rdx	# i, tmp227
	movq	-40(%rbp), %rax	# targ, tmp228
	movq	%rdx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	Perl_sv_setiv	#
.LBB37:
	movq	-40(%rbp), %rax	# targ, tmp229
	movl	12(%rax), %eax	# targ_89->sv_flags, D.13687
	andl	$16384, %eax	#, D.13687
	testl	%eax, %eax	# D.13687
	je	.L481	#,
	.loc 1 1394 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp230
	movq	%rax, %rdi	# tmp230,
	call	Perl_mg_set	#
.L481:
	.loc 1 1394 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp231
	movq	%rax, (%rbx)	# tmp231, *sp_113
.LBE37:
.LBE36:
	.loc 1 1395 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.390
	movq	(%rax), %rax	# PL_op.390_115->op_next, D.13682
	jmp	.L464	#
.L468:
.LBE35:
	.loc 1 1398 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.391
	movq	%rax, %rdx	# PL_stack_max.391, PL_stack_max.392
	movq	%rbx, %rax	# sp, sp.393
	subq	%rax, %rdx	# sp.393, D.13694
	movq	%rdx, %rax	# D.13694, D.13694
	sarq	$3, %rax	#, tmp232
	movq	%rax, %rdx	# tmp232, D.13694
	movq	-48(%rbp), %rax	# keys, tmp233
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movq	24(%rax), %rcx	# _143->xhv_keys, D.13694
	movq	-48(%rbp), %rax	# keys, tmp234
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movsd	32(%rax), %xmm0	# _145->xnv_nv, D.13695
	cvttsd2siq	%xmm0, %rax	# D.13695, D.13694
	subq	%rax, %rcx	# D.13694, D.13694
	movq	%rcx, %rax	# D.13694, D.13694
	movl	%eax, %ecx	# D.13694, D.13697
	movl	-84(%rbp), %eax	# dovalues, tmp235
	movl	-88(%rbp), %esi	# dokeys, tmp236
	addl	%esi, %eax	# tmp236, D.13684
	imull	%ecx, %eax	# D.13697, D.13697
	cltq
	cmpq	%rax, %rdx	# D.13694, D.13694
	jge	.L482	#,
	.loc 1 1398 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# keys, tmp237
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movq	24(%rax), %rdx	# _155->xhv_keys, D.13694
	movq	-48(%rbp), %rax	# keys, tmp238
	movq	(%rax), %rax	# keys_81->sv_any, D.13693
	movsd	32(%rax), %xmm0	# _157->xnv_nv, D.13695
	cvttsd2siq	%xmm0, %rax	# D.13695, D.13694
	subq	%rax, %rdx	# D.13694, D.13694
	movq	%rdx, %rax	# D.13694, D.13694
	movl	%eax, %edx	# D.13694, D.13697
	movl	-84(%rbp), %eax	# dovalues, tmp239
	movl	-88(%rbp), %ecx	# dokeys, tmp240
	addl	%ecx, %eax	# tmp240, D.13684
	imull	%edx, %eax	# D.13697, D.13697
	movl	%eax, %edx	# D.13684,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L482:
	.loc 1 1400 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1401 0
	jmp	.L483	#
.L490:
	.loc 1 1402 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1403 0
	cmpl	$0, -88(%rbp)	#, dokeys
	je	.L484	#,
.LBB38:
	.loc 1 1404 0
	movq	%r12, %rdi	# entry,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -32(%rbp)	# tmp241, sv
.LBB39:
	.loc 1 1405 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.394
	movq	%rax, %rdx	# PL_stack_max.394, PL_stack_max.395
	movq	%rbx, %rax	# sp, sp.396
	subq	%rax, %rdx	# sp.396, D.13694
	movq	%rdx, %rax	# D.13694, D.13694
	cmpq	$7, %rax	#, D.13694
	jg	.L485	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L485:
	.loc 1 1405 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp242
	movq	%rax, (%rbx)	# tmp242, *sp_175
.L484:
.LBE39:
.LBE38:
	.loc 1 1407 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, dovalues
	je	.L486	#,
	.loc 1 1408 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1410 0
	cmpl	$0, -76(%rbp)	#, realhv
	je	.L487	#,
	.loc 1 1410 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# hv, tmp243
	movq	%r12, %rsi	# entry,
	movq	%rax, %rdi	# tmp243,
	call	Perl_hv_iterval	#
	jmp	.L488	#
.L487:
	.loc 1 1410 0 discriminator 2
	movq	-64(%rbp), %rax	# hv, tmp244
	movq	%r12, %rsi	# entry,
	movq	%rax, %rdi	# tmp244,
	call	Perl_avhv_iterval	#
.L488:
	.loc 1 1409 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.397, tmpstr
	.loc 1 1415 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB40:
	.loc 1 1416 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.398
	movq	%rax, %rdx	# PL_stack_max.398, PL_stack_max.399
	movq	%rbx, %rax	# sp, sp.400
	subq	%rax, %rdx	# sp.400, D.13694
	movq	%rdx, %rax	# D.13694, D.13694
	cmpq	$7, %rax	#, D.13694
	jg	.L489	#,
	.loc 1 1416 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L489:
	.loc 1 1416 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# tmpstr, tmp245
	movq	%rax, (%rbx)	# tmp245, *sp_186
.L486:
.LBE40:
	.loc 1 1418 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
.L483:
	.loc 1 1401 0 discriminator 1
	movq	-48(%rbp), %rax	# keys, tmp246
	movq	%rax, %rdi	# tmp246,
	call	Perl_hv_iternext	#
	movq	%rax, %r12	#, entry
	testq	%r12, %r12	# entry
	jne	.L490	#,
	.loc 1 1420 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.401
	movq	(%rax), %rax	# PL_op.401_188->op_next, D.13682
.L464:
	.loc 1 1421 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_do_kv, .-Perl_do_kv
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 6 "<built-in>"
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
	.file 21 "utf8.h"
	.file 22 "intrpvar.h"
	.file 23 "thrdvar.h"
	.file 24 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e38
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF692
	.byte	0x1
	.long	.LASF693
	.long	.LASF694
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
	.uleb128 0x5
	.long	.LASF14
	.byte	0x5
	.byte	0x28
	.long	0xb5
	.uleb128 0x7
	.long	0xc5
	.long	0xc5
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0x102
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0
	.long	0x3b
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0
	.long	0x3b
	.byte	0x4
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0
	.long	0x6c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF19
	.byte	0x5
	.byte	0x62
	.long	0xaa
	.uleb128 0x6
	.byte	0x8
	.long	0x113
	.uleb128 0xb
	.long	0x7f
	.uleb128 0xc
	.string	"DIR"
	.byte	0x7
	.byte	0x80
	.long	0x123
	.uleb128 0xd
	.long	.LASF204
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
	.long	0x149
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x8
	.value	0x7d3
	.long	0x91
	.uleb128 0xe
	.string	"OP"
	.byte	0x8
	.value	0x7d5
	.long	0x167
	.uleb128 0x10
	.string	"op"
	.byte	0x28
	.byte	0x9
	.byte	0xe2
	.long	0x1d3
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0xe3
	.long	0x10c7
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xe3
	.long	0x10c7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xe3
	.long	0x1abf
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xe3
	.long	0x1135
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xe3
	.long	0xf39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xe3
	.long	0xf39
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xe3
	.long	0xf2f
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xe3
	.long	0xf2f
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"COP"
	.byte	0x8
	.value	0x7d6
	.long	0x1df
	.uleb128 0x10
	.string	"cop"
	.byte	0x60
	.byte	0xa
	.byte	0x10
	.long	0x2ac
	.uleb128 0xa
	.long	.LASF23
	.byte	0xa
	.byte	0x11
	.long	0x10c7
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xa
	.byte	0x11
	.long	0x10c7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0xa
	.byte	0x11
	.long	0x1abf
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0xa
	.byte	0x11
	.long	0x1135
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0xa
	.byte	0x11
	.long	0xf39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0xa
	.byte	0x11
	.long	0xf39
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0xa
	.byte	0x11
	.long	0xf2f
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0xa
	.byte	0x11
	.long	0xf2f
	.byte	0x25
	.uleb128 0xa
	.long	.LASF31
	.byte	0xa
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xa
	.long	.LASF32
	.byte	0xa
	.byte	0x17
	.long	0x10af
	.byte	0x30
	.uleb128 0xa
	.long	.LASF33
	.byte	0xa
	.byte	0x18
	.long	0x10e4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF34
	.byte	0xa
	.byte	0x1a
	.long	0xf4f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF35
	.byte	0xa
	.byte	0x1b
	.long	0xf44
	.byte	0x44
	.uleb128 0xa
	.long	.LASF36
	.byte	0xa
	.byte	0x1c
	.long	0xf5a
	.byte	0x48
	.uleb128 0xa
	.long	.LASF37
	.byte	0xa
	.byte	0x1d
	.long	0xf77
	.byte	0x50
	.uleb128 0xa
	.long	.LASF38
	.byte	0xa
	.byte	0x1e
	.long	0xf77
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x8
	.value	0x7db
	.long	0x2b8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x3a6
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0xfe
	.long	0x10c7
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xfe
	.long	0x10c7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xfe
	.long	0x1abf
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xfe
	.long	0x1135
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xfe
	.long	0xf39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xfe
	.long	0xf39
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xfe
	.long	0xf2f
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xfe
	.long	0xf2f
	.byte	0x25
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.byte	0xff
	.long	0x10c7
	.byte	0x28
	.uleb128 0x11
	.long	.LASF42
	.byte	0x9
	.value	0x100
	.long	0x10c7
	.byte	0x30
	.uleb128 0x11
	.long	.LASF43
	.byte	0x9
	.value	0x101
	.long	0x10c7
	.byte	0x38
	.uleb128 0x11
	.long	.LASF44
	.byte	0x9
	.value	0x102
	.long	0x10c7
	.byte	0x40
	.uleb128 0x11
	.long	.LASF45
	.byte	0x9
	.value	0x103
	.long	0x1ac5
	.byte	0x48
	.uleb128 0x11
	.long	.LASF46
	.byte	0x9
	.value	0x107
	.long	0x1acb
	.byte	0x50
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.value	0x109
	.long	0xf4f
	.byte	0x58
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.value	0x10a
	.long	0xf4f
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF49
	.byte	0x9
	.value	0x10b
	.long	0xf2f
	.byte	0x60
	.uleb128 0x11
	.long	.LASF50
	.byte	0x9
	.value	0x10f
	.long	0x10af
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.value	0x7dc
	.long	0x3b2
	.uleb128 0x12
	.long	.LASF52
	.byte	0x30
	.byte	0x9
	.value	0x14c
	.long	0x435
	.uleb128 0x11
	.long	.LASF23
	.byte	0x9
	.value	0x14d
	.long	0x10c7
	.byte	0
	.uleb128 0x11
	.long	.LASF24
	.byte	0x9
	.value	0x14d
	.long	0x10c7
	.byte	0x8
	.uleb128 0x11
	.long	.LASF25
	.byte	0x9
	.value	0x14d
	.long	0x1abf
	.byte	0x10
	.uleb128 0x11
	.long	.LASF26
	.byte	0x9
	.value	0x14d
	.long	0x1135
	.byte	0x18
	.uleb128 0x11
	.long	.LASF27
	.byte	0x9
	.value	0x14d
	.long	0xf39
	.byte	0x20
	.uleb128 0x11
	.long	.LASF28
	.byte	0x9
	.value	0x14d
	.long	0xf39
	.byte	0x22
	.uleb128 0x11
	.long	.LASF29
	.byte	0x9
	.value	0x14d
	.long	0xf2f
	.byte	0x24
	.uleb128 0x11
	.long	.LASF30
	.byte	0x9
	.value	0x14d
	.long	0xf2f
	.byte	0x25
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x14e
	.long	0xf77
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.value	0x7de
	.long	0x441
	.uleb128 0x12
	.long	.LASF55
	.byte	0x30
	.byte	0x9
	.value	0x156
	.long	0x4c4
	.uleb128 0x11
	.long	.LASF23
	.byte	0x9
	.value	0x157
	.long	0x10c7
	.byte	0
	.uleb128 0x11
	.long	.LASF24
	.byte	0x9
	.value	0x157
	.long	0x10c7
	.byte	0x8
	.uleb128 0x11
	.long	.LASF25
	.byte	0x9
	.value	0x157
	.long	0x1abf
	.byte	0x10
	.uleb128 0x11
	.long	.LASF26
	.byte	0x9
	.value	0x157
	.long	0x1135
	.byte	0x18
	.uleb128 0x11
	.long	.LASF27
	.byte	0x9
	.value	0x157
	.long	0xf39
	.byte	0x20
	.uleb128 0x11
	.long	.LASF28
	.byte	0x9
	.value	0x157
	.long	0xf39
	.byte	0x22
	.uleb128 0x11
	.long	.LASF29
	.byte	0x9
	.value	0x157
	.long	0xf2f
	.byte	0x24
	.uleb128 0x11
	.long	.LASF30
	.byte	0x9
	.value	0x157
	.long	0xf2f
	.byte	0x25
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.value	0x158
	.long	0x79
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.value	0x7e1
	.long	0x4d0
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x4eb
	.uleb128 0x11
	.long	.LASF59
	.byte	0x8
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x4f6
	.uleb128 0x10
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x526
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x45
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x46
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x531
	.uleb128 0x10
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x561
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x56
	.long	0x1097
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x57
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x58
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x56c
	.uleb128 0x10
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x59c
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x5c
	.long	0x109d
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x5d
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x5e
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x5a7
	.uleb128 0x10
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x5d7
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x50
	.long	0x1091
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x51
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x52
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x8
	.value	0x7ee
	.long	0x5e3
	.uleb128 0x9
	.long	.LASF64
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x6bc
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x20
	.long	0xfea
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x21
	.long	0xfea
	.byte	0x8
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x22
	.long	0xff0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0x23
	.long	0xffb
	.byte	0x18
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xa
	.long	.LASF70
	.byte	0xc
	.byte	0x25
	.long	0x1006
	.byte	0x28
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0x28
	.long	0x100c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x29
	.long	0xf44
	.byte	0x40
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0x2a
	.long	0xf44
	.byte	0x44
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0x2b
	.long	0xf44
	.byte	0x48
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0x2c
	.long	0xf44
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0x2d
	.long	0xf4f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF78
	.byte	0xc
	.byte	0x2e
	.long	0xf4f
	.byte	0x54
	.uleb128 0xa
	.long	.LASF79
	.byte	0xc
	.byte	0x2f
	.long	0xf4f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF80
	.byte	0xc
	.byte	0x30
	.long	0xf4f
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF81
	.byte	0xc
	.byte	0x32
	.long	0x1012
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x6c7
	.uleb128 0x10
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x763
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd
	.byte	0xc
	.long	0xf77
	.byte	0
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0xd
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF84
	.byte	0xd
	.byte	0xe
	.long	0x1124
	.byte	0x10
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0xf
	.long	0x10d8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x10
	.long	0x10ea
	.byte	0x20
	.uleb128 0xa
	.long	.LASF87
	.byte	0xd
	.byte	0x11
	.long	0x10af
	.byte	0x28
	.uleb128 0xa
	.long	.LASF88
	.byte	0xd
	.byte	0x12
	.long	0x10e4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0x13
	.long	0x10d8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0x14
	.long	0xf4f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF91
	.byte	0xd
	.byte	0x15
	.long	0xf4f
	.byte	0x44
	.uleb128 0xa
	.long	.LASF92
	.byte	0xd
	.byte	0x16
	.long	0xf5a
	.byte	0x48
	.uleb128 0xa
	.long	.LASF93
	.byte	0xd
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x76e
	.uleb128 0x10
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x79e
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x4a
	.long	0x108b
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x4b
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x4c
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x7ce
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x62
	.long	0x10a3
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x63
	.long	0xf4f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x64
	.long	0xf4f
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF94
	.byte	0x8
	.value	0x7f5
	.long	0x7da
	.uleb128 0x9
	.long	.LASF95
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x847
	.uleb128 0xa
	.long	.LASF96
	.byte	0xe
	.byte	0x1b
	.long	0x10a9
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0xe
	.byte	0x1c
	.long	0x1bdc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0xe
	.byte	0x1d
	.long	0xf39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0xe
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xa
	.long	.LASF100
	.byte	0xe
	.byte	0x1f
	.long	0xf2f
	.byte	0x13
	.uleb128 0xa
	.long	.LASF101
	.byte	0xe
	.byte	0x20
	.long	0xf77
	.byte	0x18
	.uleb128 0xa
	.long	.LASF102
	.byte	0xe
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xa
	.long	.LASF103
	.byte	0xe
	.byte	0x22
	.long	0xf44
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0x853
	.uleb128 0x10
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0x86c
	.uleb128 0xa
	.long	.LASF104
	.byte	0xb
	.byte	0xf6
	.long	0xf77
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0x878
	.uleb128 0x10
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x8a9
	.uleb128 0xa
	.long	.LASF105
	.byte	0xb
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xb
	.byte	0xfb
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xb
	.byte	0xfc
	.long	0x150
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.byte	0x8
	.value	0x7f8
	.long	0x8b5
	.uleb128 0x9
	.long	.LASF109
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0x8f6
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x101
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x102
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0xb
	.value	0x103
	.long	0x128
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF111
	.byte	0x8
	.value	0x7f9
	.long	0x902
	.uleb128 0x12
	.long	.LASF112
	.byte	0x20
	.byte	0xb
	.value	0x106
	.long	0x944
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x107
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x108
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x109
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF113
	.byte	0xb
	.value	0x10a
	.long	0x133
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x7fc
	.long	0x950
	.uleb128 0x12
	.long	.LASF115
	.byte	0x58
	.byte	0xb
	.value	0x120
	.long	0x9ed
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x121
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x122
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x123
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0xb
	.value	0x124
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF116
	.byte	0xb
	.value	0x125
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF117
	.byte	0xb
	.value	0x126
	.long	0x10a9
	.byte	0x28
	.uleb128 0x11
	.long	.LASF118
	.byte	0xb
	.value	0x127
	.long	0x10af
	.byte	0x30
	.uleb128 0x11
	.long	.LASF119
	.byte	0xb
	.value	0x129
	.long	0x150
	.byte	0x38
	.uleb128 0x11
	.long	.LASF120
	.byte	0xb
	.value	0x12a
	.long	0x150
	.byte	0x40
	.uleb128 0x11
	.long	.LASF121
	.byte	0xb
	.value	0x12b
	.long	0xf77
	.byte	0x48
	.uleb128 0x11
	.long	.LASF122
	.byte	0xb
	.value	0x12c
	.long	0x7f
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF123
	.byte	0x8
	.value	0x7fd
	.long	0x9f9
	.uleb128 0x9
	.long	.LASF124
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0xa7e
	.uleb128 0xa
	.long	.LASF125
	.byte	0xf
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF126
	.byte	0xf
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xa
	.long	.LASF127
	.byte	0xf
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xa
	.long	.LASF128
	.byte	0xf
	.byte	0xf
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF116
	.byte	0xf
	.byte	0x10
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0xf
	.byte	0x11
	.long	0x10a9
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0xf
	.byte	0x12
	.long	0x10af
	.byte	0x30
	.uleb128 0xa
	.long	.LASF129
	.byte	0xf
	.byte	0x14
	.long	0x1ad1
	.byte	0x38
	.uleb128 0xa
	.long	.LASF130
	.byte	0xf
	.byte	0x15
	.long	0xf77
	.byte	0x40
	.uleb128 0xa
	.long	.LASF131
	.byte	0xf
	.byte	0x16
	.long	0xf2f
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF132
	.byte	0x8
	.value	0x7fe
	.long	0xa8a
	.uleb128 0x9
	.long	.LASF133
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0xb1b
	.uleb128 0xa
	.long	.LASF134
	.byte	0x10
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF135
	.byte	0x10
	.byte	0x24
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF136
	.byte	0x10
	.byte	0x25
	.long	0x150
	.byte	0x10
	.uleb128 0xa
	.long	.LASF137
	.byte	0x10
	.byte	0x26
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF116
	.byte	0x10
	.byte	0x27
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0x10
	.byte	0x29
	.long	0x10a9
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0x10
	.byte	0x2a
	.long	0x10af
	.byte	0x30
	.uleb128 0xa
	.long	.LASF138
	.byte	0x10
	.byte	0x2c
	.long	0xf44
	.byte	0x38
	.uleb128 0xa
	.long	.LASF139
	.byte	0x10
	.byte	0x2d
	.long	0x1b53
	.byte	0x40
	.uleb128 0xa
	.long	.LASF140
	.byte	0x10
	.byte	0x2e
	.long	0x1ac5
	.byte	0x48
	.uleb128 0xa
	.long	.LASF141
	.byte	0x10
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x7ff
	.long	0xb27
	.uleb128 0x12
	.long	.LASF143
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xbd1
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x132
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x133
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0xb
	.value	0x134
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF116
	.byte	0xb
	.value	0x135
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF117
	.byte	0xb
	.value	0x136
	.long	0x10a9
	.byte	0x28
	.uleb128 0x11
	.long	.LASF118
	.byte	0xb
	.value	0x137
	.long	0x10af
	.byte	0x30
	.uleb128 0x11
	.long	.LASF144
	.byte	0xb
	.value	0x139
	.long	0x10b5
	.byte	0x38
	.uleb128 0x11
	.long	.LASF145
	.byte	0xb
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF146
	.byte	0xb
	.value	0x13b
	.long	0x150
	.byte	0x48
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x13c
	.long	0x10af
	.byte	0x50
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x13d
	.long	0xf2f
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x800
	.long	0xbdd
	.uleb128 0x9
	.long	.LASF150
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0xcce
	.uleb128 0xa
	.long	.LASF105
	.byte	0x11
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x11
	.byte	0x10
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0x11
	.byte	0x11
	.long	0x150
	.byte	0x10
	.uleb128 0xa
	.long	.LASF128
	.byte	0x11
	.byte	0x12
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF116
	.byte	0x11
	.byte	0x13
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0x11
	.byte	0x14
	.long	0x10a9
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0x11
	.byte	0x15
	.long	0x10af
	.byte	0x30
	.uleb128 0xa
	.long	.LASF151
	.byte	0x11
	.byte	0x17
	.long	0x10af
	.byte	0x38
	.uleb128 0xa
	.long	.LASF152
	.byte	0x11
	.byte	0x18
	.long	0x10c7
	.byte	0x40
	.uleb128 0xa
	.long	.LASF153
	.byte	0x11
	.byte	0x19
	.long	0x10c7
	.byte	0x48
	.uleb128 0xa
	.long	.LASF154
	.byte	0x11
	.byte	0x1a
	.long	0x10de
	.byte	0x50
	.uleb128 0xa
	.long	.LASF155
	.byte	0x11
	.byte	0x1b
	.long	0xe80
	.byte	0x58
	.uleb128 0xa
	.long	.LASF156
	.byte	0x11
	.byte	0x1c
	.long	0x10e4
	.byte	0x60
	.uleb128 0xa
	.long	.LASF157
	.byte	0x11
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xa
	.long	.LASF158
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF159
	.byte	0x11
	.byte	0x1f
	.long	0x1140
	.byte	0x78
	.uleb128 0xa
	.long	.LASF160
	.byte	0x11
	.byte	0x20
	.long	0x10d8
	.byte	0x80
	.uleb128 0xa
	.long	.LASF161
	.byte	0x11
	.byte	0x25
	.long	0x10bb
	.byte	0x88
	.uleb128 0xa
	.long	.LASF162
	.byte	0x11
	.byte	0x26
	.long	0xf4f
	.byte	0x8c
	.byte	0
	.uleb128 0xf
	.long	.LASF163
	.byte	0x8
	.value	0x803
	.long	0xcda
	.uleb128 0x12
	.long	.LASF164
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xe13
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x172
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x173
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0xb
	.value	0x174
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF116
	.byte	0xb
	.value	0x175
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF117
	.byte	0xb
	.value	0x176
	.long	0x10a9
	.byte	0x28
	.uleb128 0x11
	.long	.LASF118
	.byte	0xb
	.value	0x177
	.long	0x10af
	.byte	0x30
	.uleb128 0x11
	.long	.LASF165
	.byte	0xb
	.value	0x179
	.long	0x1118
	.byte	0x38
	.uleb128 0x11
	.long	.LASF166
	.byte	0xb
	.value	0x17a
	.long	0x1118
	.byte	0x40
	.uleb128 0x11
	.long	.LASF167
	.byte	0xb
	.value	0x187
	.long	0x10f0
	.byte	0x48
	.uleb128 0x11
	.long	.LASF168
	.byte	0xb
	.value	0x188
	.long	0x128
	.byte	0x50
	.uleb128 0x11
	.long	.LASF169
	.byte	0xb
	.value	0x189
	.long	0x128
	.byte	0x58
	.uleb128 0x11
	.long	.LASF170
	.byte	0xb
	.value	0x18a
	.long	0x128
	.byte	0x60
	.uleb128 0x11
	.long	.LASF171
	.byte	0xb
	.value	0x18b
	.long	0x128
	.byte	0x68
	.uleb128 0x11
	.long	.LASF172
	.byte	0xb
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x11
	.long	.LASF173
	.byte	0xb
	.value	0x18d
	.long	0x10e4
	.byte	0x78
	.uleb128 0x11
	.long	.LASF174
	.byte	0xb
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x11
	.long	.LASF175
	.byte	0xb
	.value	0x18f
	.long	0x10e4
	.byte	0x88
	.uleb128 0x11
	.long	.LASF176
	.byte	0xb
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x11
	.long	.LASF177
	.byte	0xb
	.value	0x191
	.long	0x10e4
	.byte	0x98
	.uleb128 0x11
	.long	.LASF178
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF179
	.byte	0xb
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF180
	.byte	0xb
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xf
	.long	.LASF181
	.byte	0x8
	.value	0x804
	.long	0xe1f
	.uleb128 0x9
	.long	.LASF182
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xe80
	.uleb128 0xa
	.long	.LASF183
	.byte	0xe
	.byte	0xf
	.long	0x1b73
	.byte	0
	.uleb128 0xa
	.long	.LASF184
	.byte	0xe
	.byte	0x10
	.long	0x1b73
	.byte	0x8
	.uleb128 0xa
	.long	.LASF185
	.byte	0xe
	.byte	0x11
	.long	0x1b8d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF186
	.byte	0xe
	.byte	0x12
	.long	0x1b73
	.byte	0x18
	.uleb128 0xa
	.long	.LASF187
	.byte	0xe
	.byte	0x13
	.long	0x1b73
	.byte	0x20
	.uleb128 0xa
	.long	.LASF188
	.byte	0xe
	.byte	0x14
	.long	0x1bb6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF189
	.byte	0xe
	.byte	0x16
	.long	0x1bd6
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0xe8c
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0xeee
	.uleb128 0x14
	.long	.LASF190
	.byte	0x8
	.value	0x9f2
	.long	0x6c
	.uleb128 0x14
	.long	.LASF191
	.byte	0x8
	.value	0x9f3
	.long	0xf44
	.uleb128 0x14
	.long	.LASF192
	.byte	0x8
	.value	0x9f4
	.long	0x128
	.uleb128 0x14
	.long	.LASF193
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF194
	.byte	0x8
	.value	0x9f6
	.long	0x7f
	.uleb128 0x14
	.long	.LASF195
	.byte	0x8
	.value	0x9f7
	.long	0xf71
	.uleb128 0x14
	.long	.LASF196
	.byte	0x8
	.value	0x9f8
	.long	0xf71
	.byte	0
	.uleb128 0xf
	.long	.LASF197
	.byte	0x8
	.value	0x808
	.long	0xefa
	.uleb128 0x12
	.long	.LASF198
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0xf2f
	.uleb128 0x11
	.long	.LASF199
	.byte	0xb
	.value	0x4ee
	.long	0x10ea
	.byte	0
	.uleb128 0x11
	.long	.LASF200
	.byte	0xb
	.value	0x4ef
	.long	0x133
	.byte	0x8
	.uleb128 0x11
	.long	.LASF201
	.byte	0xb
	.value	0x4f0
	.long	0x111e
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
	.long	.LASF202
	.byte	0x12
	.value	0x209
	.long	0xf4f
	.uleb128 0x15
	.long	0xf71
	.uleb128 0x16
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf66
	.uleb128 0x6
	.byte	0x8
	.long	0x4eb
	.uleb128 0x7
	.long	0x7f
	.long	0xf8d
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF203
	.byte	0x13
	.byte	0x63
	.long	0xf98
	.uleb128 0xd
	.long	.LASF205
	.uleb128 0x5
	.long	.LASF206
	.byte	0x13
	.byte	0x65
	.long	0xfa8
	.uleb128 0x6
	.byte	0x8
	.long	0xf8d
	.uleb128 0x9
	.long	.LASF207
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0xfdf
	.uleb128 0xa
	.long	.LASF200
	.byte	0xc
	.byte	0x14
	.long	0xf2f
	.byte	0
	.uleb128 0xa
	.long	.LASF208
	.byte	0xc
	.byte	0x15
	.long	0xf2f
	.byte	0x1
	.uleb128 0xa
	.long	.LASF209
	.byte	0xc
	.byte	0x16
	.long	0xf39
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF207
	.byte	0xc
	.byte	0x19
	.long	0xfae
	.uleb128 0x6
	.byte	0x8
	.long	0xf44
	.uleb128 0x6
	.byte	0x8
	.long	0xfdf
	.uleb128 0xd
	.long	.LASF210
	.uleb128 0x6
	.byte	0x8
	.long	0xff6
	.uleb128 0xd
	.long	.LASF211
	.uleb128 0x6
	.byte	0x8
	.long	0x1001
	.uleb128 0x6
	.byte	0x8
	.long	0xf4f
	.uleb128 0x7
	.long	0xfdf
	.long	0x1022
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x108b
	.uleb128 0x18
	.long	.LASF212
	.sleb128 0
	.uleb128 0x18
	.long	.LASF213
	.sleb128 1
	.uleb128 0x18
	.long	.LASF214
	.sleb128 2
	.uleb128 0x18
	.long	.LASF215
	.sleb128 3
	.uleb128 0x18
	.long	.LASF216
	.sleb128 4
	.uleb128 0x18
	.long	.LASF217
	.sleb128 5
	.uleb128 0x18
	.long	.LASF218
	.sleb128 6
	.uleb128 0x18
	.long	.LASF219
	.sleb128 7
	.uleb128 0x18
	.long	.LASF220
	.sleb128 8
	.uleb128 0x18
	.long	.LASF221
	.sleb128 9
	.uleb128 0x18
	.long	.LASF222
	.sleb128 10
	.uleb128 0x18
	.long	.LASF223
	.sleb128 11
	.uleb128 0x18
	.long	.LASF224
	.sleb128 12
	.uleb128 0x18
	.long	.LASF225
	.sleb128 13
	.uleb128 0x18
	.long	.LASF226
	.sleb128 14
	.uleb128 0x18
	.long	.LASF227
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb1b
	.uleb128 0x6
	.byte	0x8
	.long	0xbd1
	.uleb128 0x6
	.byte	0x8
	.long	0x9ed
	.uleb128 0x6
	.byte	0x8
	.long	0xa7e
	.uleb128 0x6
	.byte	0x8
	.long	0xcce
	.uleb128 0x6
	.byte	0x8
	.long	0x7ce
	.uleb128 0x6
	.byte	0x8
	.long	0x561
	.uleb128 0x6
	.byte	0x8
	.long	0x6bc
	.uleb128 0xf
	.long	.LASF228
	.byte	0xb
	.value	0x150
	.long	0xf39
	.uleb128 0x6
	.byte	0x8
	.long	0x15c
	.uleb128 0x15
	.long	0x10d8
	.uleb128 0x16
	.long	0x10d8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59c
	.uleb128 0x6
	.byte	0x8
	.long	0x10cd
	.uleb128 0x6
	.byte	0x8
	.long	0x763
	.uleb128 0x6
	.byte	0x8
	.long	0x526
	.uleb128 0x19
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x1112
	.uleb128 0x14
	.long	.LASF229
	.byte	0xb
	.value	0x185
	.long	0x1112
	.uleb128 0x14
	.long	.LASF230
	.byte	0xb
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x118
	.uleb128 0x6
	.byte	0x8
	.long	0xf9d
	.uleb128 0x6
	.byte	0x8
	.long	0x4c4
	.uleb128 0x6
	.byte	0x8
	.long	0x79e
	.uleb128 0x5
	.long	.LASF231
	.byte	0x14
	.byte	0x13
	.long	0x526
	.uleb128 0x5
	.long	.LASF232
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x112a
	.uleb128 0x1a
	.long	.LASF695
	.byte	0x4
	.byte	0x18
	.byte	0xf
	.long	0x1aba
	.uleb128 0x18
	.long	.LASF233
	.sleb128 0
	.uleb128 0x18
	.long	.LASF234
	.sleb128 1
	.uleb128 0x18
	.long	.LASF235
	.sleb128 2
	.uleb128 0x18
	.long	.LASF236
	.sleb128 3
	.uleb128 0x18
	.long	.LASF237
	.sleb128 4
	.uleb128 0x18
	.long	.LASF238
	.sleb128 5
	.uleb128 0x18
	.long	.LASF239
	.sleb128 6
	.uleb128 0x18
	.long	.LASF240
	.sleb128 7
	.uleb128 0x18
	.long	.LASF241
	.sleb128 8
	.uleb128 0x18
	.long	.LASF242
	.sleb128 9
	.uleb128 0x18
	.long	.LASF243
	.sleb128 10
	.uleb128 0x18
	.long	.LASF244
	.sleb128 11
	.uleb128 0x18
	.long	.LASF245
	.sleb128 12
	.uleb128 0x18
	.long	.LASF246
	.sleb128 13
	.uleb128 0x18
	.long	.LASF247
	.sleb128 14
	.uleb128 0x18
	.long	.LASF248
	.sleb128 15
	.uleb128 0x18
	.long	.LASF249
	.sleb128 16
	.uleb128 0x18
	.long	.LASF250
	.sleb128 17
	.uleb128 0x18
	.long	.LASF251
	.sleb128 18
	.uleb128 0x18
	.long	.LASF252
	.sleb128 19
	.uleb128 0x18
	.long	.LASF253
	.sleb128 20
	.uleb128 0x18
	.long	.LASF254
	.sleb128 21
	.uleb128 0x18
	.long	.LASF255
	.sleb128 22
	.uleb128 0x18
	.long	.LASF256
	.sleb128 23
	.uleb128 0x18
	.long	.LASF257
	.sleb128 24
	.uleb128 0x18
	.long	.LASF258
	.sleb128 25
	.uleb128 0x18
	.long	.LASF259
	.sleb128 26
	.uleb128 0x18
	.long	.LASF260
	.sleb128 27
	.uleb128 0x18
	.long	.LASF261
	.sleb128 28
	.uleb128 0x18
	.long	.LASF262
	.sleb128 29
	.uleb128 0x18
	.long	.LASF263
	.sleb128 30
	.uleb128 0x18
	.long	.LASF264
	.sleb128 31
	.uleb128 0x18
	.long	.LASF265
	.sleb128 32
	.uleb128 0x18
	.long	.LASF266
	.sleb128 33
	.uleb128 0x18
	.long	.LASF267
	.sleb128 34
	.uleb128 0x18
	.long	.LASF268
	.sleb128 35
	.uleb128 0x18
	.long	.LASF269
	.sleb128 36
	.uleb128 0x18
	.long	.LASF270
	.sleb128 37
	.uleb128 0x18
	.long	.LASF271
	.sleb128 38
	.uleb128 0x18
	.long	.LASF272
	.sleb128 39
	.uleb128 0x18
	.long	.LASF273
	.sleb128 40
	.uleb128 0x18
	.long	.LASF274
	.sleb128 41
	.uleb128 0x18
	.long	.LASF275
	.sleb128 42
	.uleb128 0x18
	.long	.LASF276
	.sleb128 43
	.uleb128 0x18
	.long	.LASF277
	.sleb128 44
	.uleb128 0x18
	.long	.LASF278
	.sleb128 45
	.uleb128 0x18
	.long	.LASF279
	.sleb128 46
	.uleb128 0x18
	.long	.LASF280
	.sleb128 47
	.uleb128 0x18
	.long	.LASF281
	.sleb128 48
	.uleb128 0x18
	.long	.LASF282
	.sleb128 49
	.uleb128 0x18
	.long	.LASF283
	.sleb128 50
	.uleb128 0x18
	.long	.LASF284
	.sleb128 51
	.uleb128 0x18
	.long	.LASF285
	.sleb128 52
	.uleb128 0x18
	.long	.LASF286
	.sleb128 53
	.uleb128 0x18
	.long	.LASF287
	.sleb128 54
	.uleb128 0x18
	.long	.LASF288
	.sleb128 55
	.uleb128 0x18
	.long	.LASF289
	.sleb128 56
	.uleb128 0x18
	.long	.LASF290
	.sleb128 57
	.uleb128 0x18
	.long	.LASF291
	.sleb128 58
	.uleb128 0x18
	.long	.LASF292
	.sleb128 59
	.uleb128 0x18
	.long	.LASF293
	.sleb128 60
	.uleb128 0x18
	.long	.LASF294
	.sleb128 61
	.uleb128 0x18
	.long	.LASF295
	.sleb128 62
	.uleb128 0x18
	.long	.LASF296
	.sleb128 63
	.uleb128 0x18
	.long	.LASF297
	.sleb128 64
	.uleb128 0x18
	.long	.LASF298
	.sleb128 65
	.uleb128 0x18
	.long	.LASF299
	.sleb128 66
	.uleb128 0x18
	.long	.LASF300
	.sleb128 67
	.uleb128 0x18
	.long	.LASF301
	.sleb128 68
	.uleb128 0x18
	.long	.LASF302
	.sleb128 69
	.uleb128 0x18
	.long	.LASF303
	.sleb128 70
	.uleb128 0x18
	.long	.LASF304
	.sleb128 71
	.uleb128 0x18
	.long	.LASF305
	.sleb128 72
	.uleb128 0x18
	.long	.LASF306
	.sleb128 73
	.uleb128 0x18
	.long	.LASF307
	.sleb128 74
	.uleb128 0x18
	.long	.LASF308
	.sleb128 75
	.uleb128 0x18
	.long	.LASF309
	.sleb128 76
	.uleb128 0x18
	.long	.LASF310
	.sleb128 77
	.uleb128 0x18
	.long	.LASF311
	.sleb128 78
	.uleb128 0x18
	.long	.LASF312
	.sleb128 79
	.uleb128 0x18
	.long	.LASF313
	.sleb128 80
	.uleb128 0x18
	.long	.LASF314
	.sleb128 81
	.uleb128 0x18
	.long	.LASF315
	.sleb128 82
	.uleb128 0x18
	.long	.LASF316
	.sleb128 83
	.uleb128 0x18
	.long	.LASF317
	.sleb128 84
	.uleb128 0x18
	.long	.LASF318
	.sleb128 85
	.uleb128 0x18
	.long	.LASF319
	.sleb128 86
	.uleb128 0x18
	.long	.LASF320
	.sleb128 87
	.uleb128 0x18
	.long	.LASF321
	.sleb128 88
	.uleb128 0x18
	.long	.LASF322
	.sleb128 89
	.uleb128 0x18
	.long	.LASF323
	.sleb128 90
	.uleb128 0x18
	.long	.LASF324
	.sleb128 91
	.uleb128 0x18
	.long	.LASF325
	.sleb128 92
	.uleb128 0x18
	.long	.LASF326
	.sleb128 93
	.uleb128 0x18
	.long	.LASF327
	.sleb128 94
	.uleb128 0x18
	.long	.LASF328
	.sleb128 95
	.uleb128 0x18
	.long	.LASF329
	.sleb128 96
	.uleb128 0x18
	.long	.LASF330
	.sleb128 97
	.uleb128 0x18
	.long	.LASF331
	.sleb128 98
	.uleb128 0x18
	.long	.LASF332
	.sleb128 99
	.uleb128 0x18
	.long	.LASF333
	.sleb128 100
	.uleb128 0x18
	.long	.LASF334
	.sleb128 101
	.uleb128 0x18
	.long	.LASF335
	.sleb128 102
	.uleb128 0x18
	.long	.LASF336
	.sleb128 103
	.uleb128 0x18
	.long	.LASF337
	.sleb128 104
	.uleb128 0x18
	.long	.LASF338
	.sleb128 105
	.uleb128 0x18
	.long	.LASF339
	.sleb128 106
	.uleb128 0x18
	.long	.LASF340
	.sleb128 107
	.uleb128 0x18
	.long	.LASF341
	.sleb128 108
	.uleb128 0x18
	.long	.LASF342
	.sleb128 109
	.uleb128 0x18
	.long	.LASF343
	.sleb128 110
	.uleb128 0x18
	.long	.LASF344
	.sleb128 111
	.uleb128 0x18
	.long	.LASF345
	.sleb128 112
	.uleb128 0x18
	.long	.LASF346
	.sleb128 113
	.uleb128 0x18
	.long	.LASF347
	.sleb128 114
	.uleb128 0x18
	.long	.LASF348
	.sleb128 115
	.uleb128 0x18
	.long	.LASF349
	.sleb128 116
	.uleb128 0x18
	.long	.LASF350
	.sleb128 117
	.uleb128 0x18
	.long	.LASF351
	.sleb128 118
	.uleb128 0x18
	.long	.LASF352
	.sleb128 119
	.uleb128 0x18
	.long	.LASF353
	.sleb128 120
	.uleb128 0x18
	.long	.LASF354
	.sleb128 121
	.uleb128 0x18
	.long	.LASF355
	.sleb128 122
	.uleb128 0x18
	.long	.LASF356
	.sleb128 123
	.uleb128 0x18
	.long	.LASF357
	.sleb128 124
	.uleb128 0x18
	.long	.LASF358
	.sleb128 125
	.uleb128 0x18
	.long	.LASF359
	.sleb128 126
	.uleb128 0x18
	.long	.LASF360
	.sleb128 127
	.uleb128 0x18
	.long	.LASF361
	.sleb128 128
	.uleb128 0x18
	.long	.LASF362
	.sleb128 129
	.uleb128 0x18
	.long	.LASF363
	.sleb128 130
	.uleb128 0x18
	.long	.LASF364
	.sleb128 131
	.uleb128 0x18
	.long	.LASF365
	.sleb128 132
	.uleb128 0x18
	.long	.LASF366
	.sleb128 133
	.uleb128 0x18
	.long	.LASF367
	.sleb128 134
	.uleb128 0x18
	.long	.LASF368
	.sleb128 135
	.uleb128 0x18
	.long	.LASF369
	.sleb128 136
	.uleb128 0x18
	.long	.LASF370
	.sleb128 137
	.uleb128 0x18
	.long	.LASF371
	.sleb128 138
	.uleb128 0x18
	.long	.LASF372
	.sleb128 139
	.uleb128 0x18
	.long	.LASF373
	.sleb128 140
	.uleb128 0x18
	.long	.LASF374
	.sleb128 141
	.uleb128 0x18
	.long	.LASF375
	.sleb128 142
	.uleb128 0x18
	.long	.LASF376
	.sleb128 143
	.uleb128 0x18
	.long	.LASF377
	.sleb128 144
	.uleb128 0x18
	.long	.LASF378
	.sleb128 145
	.uleb128 0x18
	.long	.LASF379
	.sleb128 146
	.uleb128 0x18
	.long	.LASF380
	.sleb128 147
	.uleb128 0x18
	.long	.LASF381
	.sleb128 148
	.uleb128 0x18
	.long	.LASF382
	.sleb128 149
	.uleb128 0x18
	.long	.LASF383
	.sleb128 150
	.uleb128 0x18
	.long	.LASF384
	.sleb128 151
	.uleb128 0x18
	.long	.LASF385
	.sleb128 152
	.uleb128 0x18
	.long	.LASF386
	.sleb128 153
	.uleb128 0x18
	.long	.LASF387
	.sleb128 154
	.uleb128 0x18
	.long	.LASF388
	.sleb128 155
	.uleb128 0x18
	.long	.LASF389
	.sleb128 156
	.uleb128 0x18
	.long	.LASF390
	.sleb128 157
	.uleb128 0x18
	.long	.LASF391
	.sleb128 158
	.uleb128 0x18
	.long	.LASF392
	.sleb128 159
	.uleb128 0x18
	.long	.LASF393
	.sleb128 160
	.uleb128 0x18
	.long	.LASF394
	.sleb128 161
	.uleb128 0x18
	.long	.LASF395
	.sleb128 162
	.uleb128 0x18
	.long	.LASF396
	.sleb128 163
	.uleb128 0x18
	.long	.LASF397
	.sleb128 164
	.uleb128 0x18
	.long	.LASF398
	.sleb128 165
	.uleb128 0x18
	.long	.LASF399
	.sleb128 166
	.uleb128 0x18
	.long	.LASF400
	.sleb128 167
	.uleb128 0x18
	.long	.LASF401
	.sleb128 168
	.uleb128 0x18
	.long	.LASF402
	.sleb128 169
	.uleb128 0x18
	.long	.LASF403
	.sleb128 170
	.uleb128 0x18
	.long	.LASF404
	.sleb128 171
	.uleb128 0x18
	.long	.LASF405
	.sleb128 172
	.uleb128 0x18
	.long	.LASF406
	.sleb128 173
	.uleb128 0x18
	.long	.LASF407
	.sleb128 174
	.uleb128 0x18
	.long	.LASF408
	.sleb128 175
	.uleb128 0x18
	.long	.LASF409
	.sleb128 176
	.uleb128 0x18
	.long	.LASF410
	.sleb128 177
	.uleb128 0x18
	.long	.LASF411
	.sleb128 178
	.uleb128 0x18
	.long	.LASF412
	.sleb128 179
	.uleb128 0x18
	.long	.LASF413
	.sleb128 180
	.uleb128 0x18
	.long	.LASF414
	.sleb128 181
	.uleb128 0x18
	.long	.LASF415
	.sleb128 182
	.uleb128 0x18
	.long	.LASF416
	.sleb128 183
	.uleb128 0x18
	.long	.LASF417
	.sleb128 184
	.uleb128 0x18
	.long	.LASF418
	.sleb128 185
	.uleb128 0x18
	.long	.LASF419
	.sleb128 186
	.uleb128 0x18
	.long	.LASF420
	.sleb128 187
	.uleb128 0x18
	.long	.LASF421
	.sleb128 188
	.uleb128 0x18
	.long	.LASF422
	.sleb128 189
	.uleb128 0x18
	.long	.LASF423
	.sleb128 190
	.uleb128 0x18
	.long	.LASF424
	.sleb128 191
	.uleb128 0x18
	.long	.LASF425
	.sleb128 192
	.uleb128 0x18
	.long	.LASF426
	.sleb128 193
	.uleb128 0x18
	.long	.LASF427
	.sleb128 194
	.uleb128 0x18
	.long	.LASF428
	.sleb128 195
	.uleb128 0x18
	.long	.LASF429
	.sleb128 196
	.uleb128 0x18
	.long	.LASF430
	.sleb128 197
	.uleb128 0x18
	.long	.LASF431
	.sleb128 198
	.uleb128 0x18
	.long	.LASF432
	.sleb128 199
	.uleb128 0x18
	.long	.LASF433
	.sleb128 200
	.uleb128 0x18
	.long	.LASF434
	.sleb128 201
	.uleb128 0x18
	.long	.LASF435
	.sleb128 202
	.uleb128 0x18
	.long	.LASF436
	.sleb128 203
	.uleb128 0x18
	.long	.LASF437
	.sleb128 204
	.uleb128 0x18
	.long	.LASF438
	.sleb128 205
	.uleb128 0x18
	.long	.LASF439
	.sleb128 206
	.uleb128 0x18
	.long	.LASF440
	.sleb128 207
	.uleb128 0x18
	.long	.LASF441
	.sleb128 208
	.uleb128 0x18
	.long	.LASF442
	.sleb128 209
	.uleb128 0x18
	.long	.LASF443
	.sleb128 210
	.uleb128 0x18
	.long	.LASF444
	.sleb128 211
	.uleb128 0x18
	.long	.LASF445
	.sleb128 212
	.uleb128 0x18
	.long	.LASF446
	.sleb128 213
	.uleb128 0x18
	.long	.LASF447
	.sleb128 214
	.uleb128 0x18
	.long	.LASF448
	.sleb128 215
	.uleb128 0x18
	.long	.LASF449
	.sleb128 216
	.uleb128 0x18
	.long	.LASF450
	.sleb128 217
	.uleb128 0x18
	.long	.LASF451
	.sleb128 218
	.uleb128 0x18
	.long	.LASF452
	.sleb128 219
	.uleb128 0x18
	.long	.LASF453
	.sleb128 220
	.uleb128 0x18
	.long	.LASF454
	.sleb128 221
	.uleb128 0x18
	.long	.LASF455
	.sleb128 222
	.uleb128 0x18
	.long	.LASF456
	.sleb128 223
	.uleb128 0x18
	.long	.LASF457
	.sleb128 224
	.uleb128 0x18
	.long	.LASF458
	.sleb128 225
	.uleb128 0x18
	.long	.LASF459
	.sleb128 226
	.uleb128 0x18
	.long	.LASF460
	.sleb128 227
	.uleb128 0x18
	.long	.LASF461
	.sleb128 228
	.uleb128 0x18
	.long	.LASF462
	.sleb128 229
	.uleb128 0x18
	.long	.LASF463
	.sleb128 230
	.uleb128 0x18
	.long	.LASF464
	.sleb128 231
	.uleb128 0x18
	.long	.LASF465
	.sleb128 232
	.uleb128 0x18
	.long	.LASF466
	.sleb128 233
	.uleb128 0x18
	.long	.LASF467
	.sleb128 234
	.uleb128 0x18
	.long	.LASF468
	.sleb128 235
	.uleb128 0x18
	.long	.LASF469
	.sleb128 236
	.uleb128 0x18
	.long	.LASF470
	.sleb128 237
	.uleb128 0x18
	.long	.LASF471
	.sleb128 238
	.uleb128 0x18
	.long	.LASF472
	.sleb128 239
	.uleb128 0x18
	.long	.LASF473
	.sleb128 240
	.uleb128 0x18
	.long	.LASF474
	.sleb128 241
	.uleb128 0x18
	.long	.LASF475
	.sleb128 242
	.uleb128 0x18
	.long	.LASF476
	.sleb128 243
	.uleb128 0x18
	.long	.LASF477
	.sleb128 244
	.uleb128 0x18
	.long	.LASF478
	.sleb128 245
	.uleb128 0x18
	.long	.LASF479
	.sleb128 246
	.uleb128 0x18
	.long	.LASF480
	.sleb128 247
	.uleb128 0x18
	.long	.LASF481
	.sleb128 248
	.uleb128 0x18
	.long	.LASF482
	.sleb128 249
	.uleb128 0x18
	.long	.LASF483
	.sleb128 250
	.uleb128 0x18
	.long	.LASF484
	.sleb128 251
	.uleb128 0x18
	.long	.LASF485
	.sleb128 252
	.uleb128 0x18
	.long	.LASF486
	.sleb128 253
	.uleb128 0x18
	.long	.LASF487
	.sleb128 254
	.uleb128 0x18
	.long	.LASF488
	.sleb128 255
	.uleb128 0x18
	.long	.LASF489
	.sleb128 256
	.uleb128 0x18
	.long	.LASF490
	.sleb128 257
	.uleb128 0x18
	.long	.LASF491
	.sleb128 258
	.uleb128 0x18
	.long	.LASF492
	.sleb128 259
	.uleb128 0x18
	.long	.LASF493
	.sleb128 260
	.uleb128 0x18
	.long	.LASF494
	.sleb128 261
	.uleb128 0x18
	.long	.LASF495
	.sleb128 262
	.uleb128 0x18
	.long	.LASF496
	.sleb128 263
	.uleb128 0x18
	.long	.LASF497
	.sleb128 264
	.uleb128 0x18
	.long	.LASF498
	.sleb128 265
	.uleb128 0x18
	.long	.LASF499
	.sleb128 266
	.uleb128 0x18
	.long	.LASF500
	.sleb128 267
	.uleb128 0x18
	.long	.LASF501
	.sleb128 268
	.uleb128 0x18
	.long	.LASF502
	.sleb128 269
	.uleb128 0x18
	.long	.LASF503
	.sleb128 270
	.uleb128 0x18
	.long	.LASF504
	.sleb128 271
	.uleb128 0x18
	.long	.LASF505
	.sleb128 272
	.uleb128 0x18
	.long	.LASF506
	.sleb128 273
	.uleb128 0x18
	.long	.LASF507
	.sleb128 274
	.uleb128 0x18
	.long	.LASF508
	.sleb128 275
	.uleb128 0x18
	.long	.LASF509
	.sleb128 276
	.uleb128 0x18
	.long	.LASF510
	.sleb128 277
	.uleb128 0x18
	.long	.LASF511
	.sleb128 278
	.uleb128 0x18
	.long	.LASF512
	.sleb128 279
	.uleb128 0x18
	.long	.LASF513
	.sleb128 280
	.uleb128 0x18
	.long	.LASF514
	.sleb128 281
	.uleb128 0x18
	.long	.LASF515
	.sleb128 282
	.uleb128 0x18
	.long	.LASF516
	.sleb128 283
	.uleb128 0x18
	.long	.LASF517
	.sleb128 284
	.uleb128 0x18
	.long	.LASF518
	.sleb128 285
	.uleb128 0x18
	.long	.LASF519
	.sleb128 286
	.uleb128 0x18
	.long	.LASF520
	.sleb128 287
	.uleb128 0x18
	.long	.LASF521
	.sleb128 288
	.uleb128 0x18
	.long	.LASF522
	.sleb128 289
	.uleb128 0x18
	.long	.LASF523
	.sleb128 290
	.uleb128 0x18
	.long	.LASF524
	.sleb128 291
	.uleb128 0x18
	.long	.LASF525
	.sleb128 292
	.uleb128 0x18
	.long	.LASF526
	.sleb128 293
	.uleb128 0x18
	.long	.LASF527
	.sleb128 294
	.uleb128 0x18
	.long	.LASF528
	.sleb128 295
	.uleb128 0x18
	.long	.LASF529
	.sleb128 296
	.uleb128 0x18
	.long	.LASF530
	.sleb128 297
	.uleb128 0x18
	.long	.LASF531
	.sleb128 298
	.uleb128 0x18
	.long	.LASF532
	.sleb128 299
	.uleb128 0x18
	.long	.LASF533
	.sleb128 300
	.uleb128 0x18
	.long	.LASF534
	.sleb128 301
	.uleb128 0x18
	.long	.LASF535
	.sleb128 302
	.uleb128 0x18
	.long	.LASF536
	.sleb128 303
	.uleb128 0x18
	.long	.LASF537
	.sleb128 304
	.uleb128 0x18
	.long	.LASF538
	.sleb128 305
	.uleb128 0x18
	.long	.LASF539
	.sleb128 306
	.uleb128 0x18
	.long	.LASF540
	.sleb128 307
	.uleb128 0x18
	.long	.LASF541
	.sleb128 308
	.uleb128 0x18
	.long	.LASF542
	.sleb128 309
	.uleb128 0x18
	.long	.LASF543
	.sleb128 310
	.uleb128 0x18
	.long	.LASF544
	.sleb128 311
	.uleb128 0x18
	.long	.LASF545
	.sleb128 312
	.uleb128 0x18
	.long	.LASF546
	.sleb128 313
	.uleb128 0x18
	.long	.LASF547
	.sleb128 314
	.uleb128 0x18
	.long	.LASF548
	.sleb128 315
	.uleb128 0x18
	.long	.LASF549
	.sleb128 316
	.uleb128 0x18
	.long	.LASF550
	.sleb128 317
	.uleb128 0x18
	.long	.LASF551
	.sleb128 318
	.uleb128 0x18
	.long	.LASF552
	.sleb128 319
	.uleb128 0x18
	.long	.LASF553
	.sleb128 320
	.uleb128 0x18
	.long	.LASF554
	.sleb128 321
	.uleb128 0x18
	.long	.LASF555
	.sleb128 322
	.uleb128 0x18
	.long	.LASF556
	.sleb128 323
	.uleb128 0x18
	.long	.LASF557
	.sleb128 324
	.uleb128 0x18
	.long	.LASF558
	.sleb128 325
	.uleb128 0x18
	.long	.LASF559
	.sleb128 326
	.uleb128 0x18
	.long	.LASF560
	.sleb128 327
	.uleb128 0x18
	.long	.LASF561
	.sleb128 328
	.uleb128 0x18
	.long	.LASF562
	.sleb128 329
	.uleb128 0x18
	.long	.LASF563
	.sleb128 330
	.uleb128 0x18
	.long	.LASF564
	.sleb128 331
	.uleb128 0x18
	.long	.LASF565
	.sleb128 332
	.uleb128 0x18
	.long	.LASF566
	.sleb128 333
	.uleb128 0x18
	.long	.LASF567
	.sleb128 334
	.uleb128 0x18
	.long	.LASF568
	.sleb128 335
	.uleb128 0x18
	.long	.LASF569
	.sleb128 336
	.uleb128 0x18
	.long	.LASF570
	.sleb128 337
	.uleb128 0x18
	.long	.LASF571
	.sleb128 338
	.uleb128 0x18
	.long	.LASF572
	.sleb128 339
	.uleb128 0x18
	.long	.LASF573
	.sleb128 340
	.uleb128 0x18
	.long	.LASF574
	.sleb128 341
	.uleb128 0x18
	.long	.LASF575
	.sleb128 342
	.uleb128 0x18
	.long	.LASF576
	.sleb128 343
	.uleb128 0x18
	.long	.LASF577
	.sleb128 344
	.uleb128 0x18
	.long	.LASF578
	.sleb128 345
	.uleb128 0x18
	.long	.LASF579
	.sleb128 346
	.uleb128 0x18
	.long	.LASF580
	.sleb128 347
	.uleb128 0x18
	.long	.LASF581
	.sleb128 348
	.uleb128 0x18
	.long	.LASF582
	.sleb128 349
	.uleb128 0x18
	.long	.LASF583
	.sleb128 350
	.uleb128 0x18
	.long	.LASF584
	.sleb128 351
	.uleb128 0x18
	.long	.LASF585
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0x10c7
	.uleb128 0x6
	.byte	0x8
	.long	0x1aba
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0x6
	.byte	0x8
	.long	0x5d7
	.uleb128 0x6
	.byte	0x8
	.long	0xf77
	.uleb128 0x6
	.byte	0x8
	.long	0x1d3
	.uleb128 0xc
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x1ae7
	.uleb128 0x10
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x1b17
	.uleb128 0xa
	.long	.LASF586
	.byte	0x10
	.byte	0x11
	.long	0x1b53
	.byte	0
	.uleb128 0xa
	.long	.LASF587
	.byte	0x10
	.byte	0x12
	.long	0x1b59
	.byte	0x8
	.uleb128 0xa
	.long	.LASF588
	.byte	0x10
	.byte	0x13
	.long	0xf77
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x1b22
	.uleb128 0x10
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x1b53
	.uleb128 0xa
	.long	.LASF589
	.byte	0x10
	.byte	0x18
	.long	0xf4f
	.byte	0
	.uleb128 0xa
	.long	.LASF590
	.byte	0x10
	.byte	0x19
	.long	0xf44
	.byte	0x4
	.uleb128 0xa
	.long	.LASF591
	.byte	0x10
	.byte	0x1a
	.long	0xf7d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1add
	.uleb128 0x6
	.byte	0x8
	.long	0x1b17
	.uleb128 0x1c
	.long	0x57
	.long	0x1b73
	.uleb128 0x16
	.long	0xf77
	.uleb128 0x16
	.long	0x10a9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b5f
	.uleb128 0x1c
	.long	0xf4f
	.long	0x1b8d
	.uleb128 0x16
	.long	0xf77
	.uleb128 0x16
	.long	0x10a9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b79
	.uleb128 0x1c
	.long	0x57
	.long	0x1bb6
	.uleb128 0x16
	.long	0xf77
	.uleb128 0x16
	.long	0x10a9
	.uleb128 0x16
	.long	0xf77
	.uleb128 0x16
	.long	0x10d
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b93
	.uleb128 0x1c
	.long	0x57
	.long	0x1bd0
	.uleb128 0x16
	.long	0x10a9
	.uleb128 0x16
	.long	0x1bd0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeee
	.uleb128 0x6
	.byte	0x8
	.long	0x1bbc
	.uleb128 0x6
	.byte	0x8
	.long	0xe13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF592
	.uleb128 0x1d
	.long	.LASF598
	.byte	0x1
	.byte	0x1d
	.long	0xf44
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cc3
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0x1d
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.byte	0x20
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF593
	.byte	0x1
	.byte	0x21
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF594
	.byte	0x1
	.byte	0x22
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF595
	.byte	0x1
	.byte	0x23
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.long	.LASF596
	.byte	0x1
	.byte	0x24
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x25
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"tbl"
	.byte	0x1
	.byte	0x26
	.long	0x1cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"ch"
	.byte	0x1
	.byte	0x27
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x20
	.long	.LASF597
	.byte	0x1
	.byte	0x45
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x46
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf2f
	.uleb128 0x6
	.byte	0x8
	.long	0x50
	.uleb128 0x1d
	.long	.LASF599
	.byte	0x1
	.byte	0x63
	.long	0xf44
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d7f
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0x63
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x65
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF593
	.byte	0x1
	.byte	0x66
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF595
	.byte	0x1
	.byte	0x67
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x68
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"tbl"
	.byte	0x1
	.byte	0x69
	.long	0x1cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF600
	.byte	0x1
	.byte	0x6a
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x7a
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF597
	.byte	0x1
	.byte	0x7b
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF601
	.byte	0x1
	.byte	0x89
	.long	0xf44
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f0f
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0x89
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x8b
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF593
	.byte	0x1
	.byte	0x8c
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.byte	0x8d
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF594
	.byte	0x1
	.byte	0x8e
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF602
	.byte	0x1
	.byte	0x8f
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF595
	.byte	0x1
	.byte	0x90
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.long	.LASF596
	.byte	0x1
	.byte	0x91
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x20
	.long	.LASF600
	.byte	0x1
	.byte	0x92
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.string	"del"
	.byte	0x1
	.byte	0x93
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x94
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF603
	.byte	0x1
	.byte	0x94
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"tbl"
	.byte	0x1
	.byte	0x95
	.long	0x1cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"ch"
	.byte	0x1
	.byte	0x96
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1e8c
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1edf
	.uleb128 0x1f
	.string	"pch"
	.byte	0x1
	.byte	0xd0
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xd2
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF604
	.byte	0x1
	.byte	0xd3
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xfe
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF604
	.byte	0x1
	.byte	0xff
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF605
	.byte	0x1
	.value	0x12b
	.long	0xf44
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2121
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x12b
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x12d
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x12e
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"d"
	.byte	0x1
	.value	0x12f
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x130
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF594
	.byte	0x1
	.value	0x131
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x131
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF595
	.byte	0x1
	.value	0x132
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x26
	.long	.LASF596
	.byte	0x1
	.value	0x133
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x134
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.string	"rv"
	.byte	0x1
	.value	0x136
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x137
	.long	0x10af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"svp"
	.byte	0x1
	.value	0x138
	.long	0x1ad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x139
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x13a
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x13b
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"uv"
	.byte	0x1
	.value	0x13c
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x13d
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x13e
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -182
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x20a8
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x143
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x143
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x25
	.string	"ch"
	.byte	0x1
	.value	0x145
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x20cc
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x165
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x20f0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x16b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0x174
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF613
	.byte	0x1
	.value	0x175
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF614
	.byte	0x1
	.value	0x18e
	.long	0xf44
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2257
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x18e
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x190
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x191
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x191
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF595
	.byte	0x1
	.value	0x192
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x193
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"rv"
	.byte	0x1
	.value	0x195
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x196
	.long	0x10af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"svp"
	.byte	0x1
	.value	0x197
	.long	0x1ad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x198
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x199
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"uv"
	.byte	0x1
	.value	0x19a
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x19b
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x19f
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x19f
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x25
	.string	"ch"
	.byte	0x1
	.value	0x1a1
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF615
	.byte	0x1
	.value	0x1b6
	.long	0xf44
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2517
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x1b6
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x1b8
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x1b9
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x1b9
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"d"
	.byte	0x1
	.value	0x1ba
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF595
	.byte	0x1
	.value	0x1bb
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x26
	.long	.LASF616
	.byte	0x1
	.value	0x1bc
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x25
	.string	"del"
	.byte	0x1
	.value	0x1bd
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x26
	.long	.LASF596
	.byte	0x1
	.value	0x1be
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x25
	.string	"rv"
	.byte	0x1
	.value	0x1bf
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x1c0
	.long	0x10af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"svp"
	.byte	0x1
	.value	0x1c1
	.long	0x1ad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x1c2
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x1c3
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x1c4
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF617
	.byte	0x1
	.value	0x1c5
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -223
	.uleb128 0x25
	.string	"uv"
	.byte	0x1
	.value	0x1c6
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x1c7
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF594
	.byte	0x1
	.value	0x1c8
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x1c8
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x1c9
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x1ca
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -222
	.uleb128 0x22
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2422
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x1cf
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x1cf
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x25
	.string	"ch"
	.byte	0x1
	.value	0x1d1
	.long	0xf2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -221
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x24c2
	.uleb128 0x25
	.string	"puv"
	.byte	0x1
	.value	0x1ed
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x247b
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0x1f2
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF613
	.byte	0x1
	.value	0x1f3
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x249f
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x204
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x21
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x215
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x24f6
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0x228
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF613
	.byte	0x1
	.value	0x229
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x237
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF629
	.byte	0x1
	.value	0x258
	.long	0xf44
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2566
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x258
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x25a
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF618
	.byte	0x1
	.value	0x25b
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF624
	.byte	0x1
	.value	0x288
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2609
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x288
	.long	0xf77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"del"
	.byte	0x1
	.value	0x288
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF619
	.byte	0x1
	.value	0x288
	.long	0x1ad1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x288
	.long	0x1ad1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF620
	.byte	0x1
	.value	0x28a
	.long	0x1ad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x28b
	.long	0xf44
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x28c
	.long	0x150
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x28d
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x28e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.long	.LASF625
	.byte	0x1
	.value	0x2c0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2682
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x2c0
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x2c0
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF626
	.byte	0x1
	.value	0x2c0
	.long	0x1ad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF627
	.byte	0x1
	.value	0x2c2
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x2c3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF628
	.byte	0x1
	.value	0x2c4
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x27
	.long	.LASF630
	.byte	0x1
	.value	0x2d1
	.long	0x133
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x270b
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x2d1
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF631
	.byte	0x1
	.value	0x2d1
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF632
	.byte	0x1
	.value	0x2d1
	.long	0xf44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF633
	.byte	0x1
	.value	0x2d3
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x2d3
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x2d4
	.long	0x270b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF634
	.byte	0x1
	.value	0x2d5
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x28
	.long	.LASF635
	.byte	0x1
	.value	0x35b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b3
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x35b
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF636
	.byte	0x1
	.value	0x35d
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF631
	.byte	0x1
	.value	0x35e
	.long	0xf44
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF632
	.byte	0x1
	.value	0x35f
	.long	0xf44
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x360
	.long	0x270b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF637
	.byte	0x1
	.value	0x361
	.long	0x133
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF638
	.byte	0x1
	.value	0x362
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF639
	.byte	0x1
	.value	0x363
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x364
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x28
	.long	.LASF640
	.byte	0x1
	.value	0x3ac
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b1
	.uleb128 0x29
	.long	.LASF641
	.byte	0x1
	.value	0x3ac
	.long	0xf77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x3ac
	.long	0xf77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x3ae
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x3af
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x284b
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x3b2
	.long	0xf44
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"max"
	.byte	0x1
	.value	0x3b3
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.string	"av"
	.byte	0x1
	.value	0x3b4
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x22
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2880
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x3be
	.long	0x10af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF642
	.byte	0x1
	.value	0x3bf
	.long	0x1b53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x3d3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x3d4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF643
	.byte	0x1
	.value	0x3f1
	.long	0xf44
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a19
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x3f1
	.long	0xf77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF644
	.byte	0x1
	.value	0x3f3
	.long	0xf44
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x3f4
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.string	"n_a"
	.byte	0x1
	.value	0x3f5
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x3f6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF645
	.byte	0x1
	.value	0x3f7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF646
	.byte	0x1
	.value	0x3f8
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF663
	.byte	0x1
	.value	0x470
	.quad	.L336
	.uleb128 0x22
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x298d
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x400
	.long	0xf44
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"max"
	.byte	0x1
	.value	0x401
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.string	"av"
	.byte	0x1
	.value	0x402
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x29c0
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x40c
	.long	0x10af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF642
	.byte	0x1
	.value	0x40d
	.long	0x1b53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0x436
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF648
	.byte	0x1
	.value	0x436
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF649
	.byte	0x1
	.value	0x437
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.long	.LASF650
	.byte	0x1
	.value	0x441
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -133
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF651
	.byte	0x1
	.value	0x47a
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c4f
	.uleb128 0x29
	.long	.LASF652
	.byte	0x1
	.value	0x47a
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x47a
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	.LASF653
	.byte	0x1
	.value	0x47a
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF654
	.byte	0x1
	.value	0x47a
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.string	"dl"
	.byte	0x1
	.value	0x47d
	.long	0x2c4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"ll"
	.byte	0x1
	.value	0x47e
	.long	0x2c4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"rl"
	.byte	0x1
	.value	0x47f
	.long	0x2c4f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"dc"
	.byte	0x1
	.value	0x481
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF655
	.byte	0x1
	.value	0x482
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF656
	.byte	0x1
	.value	0x483
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.string	"lc"
	.byte	0x1
	.value	0x484
	.long	0x79
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"rc"
	.byte	0x1
	.value	0x485
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x486
	.long	0xf44
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF657
	.byte	0x1
	.value	0x487
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF658
	.byte	0x1
	.value	0x488
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF659
	.byte	0x1
	.value	0x489
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF660
	.byte	0x1
	.value	0x48a
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -150
	.uleb128 0x26
	.long	.LASF661
	.byte	0x1
	.value	0x48b
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x26
	.long	.LASF662
	.byte	0x1
	.value	0x48c
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF664
	.byte	0x1
	.value	0x4de
	.quad	.L409
	.uleb128 0x2a
	.long	.LASF665
	.byte	0x1
	.value	0x534
	.quad	.L417
	.uleb128 0x2a
	.long	.LASF666
	.byte	0x1
	.value	0x529
	.quad	.L436
	.uleb128 0x22
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x2ba8
	.uleb128 0x25
	.string	"n_a"
	.byte	0x1
	.value	0x49e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x22
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x2c2c
	.uleb128 0x25
	.string	"duc"
	.byte	0x1
	.value	0x4b1
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"luc"
	.byte	0x1
	.value	0x4b1
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"ruc"
	.byte	0x1
	.value	0x4b1
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF667
	.byte	0x1
	.value	0x4b2
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF668
	.byte	0x1
	.value	0x4b3
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF669
	.byte	0x1
	.value	0x4b4
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x4b5
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x21
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x26
	.long	.LASF670
	.byte	0x1
	.value	0x4f4
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e
	.uleb128 0x27
	.long	.LASF671
	.byte	0x1
	.value	0x539
	.long	0x10c7
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d79
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x53b
	.long	0x1ad1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x53c
	.long	0x10af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF672
	.byte	0x1
	.value	0x53d
	.long	0x10af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF642
	.byte	0x1
	.value	0x53e
	.long	0x1b53
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF673
	.byte	0x1
	.value	0x53f
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF674
	.byte	0x1
	.value	0x540
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF675
	.byte	0x1
	.value	0x541
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF676
	.byte	0x1
	.value	0x542
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF677
	.byte	0x1
	.value	0x543
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2d25
	.uleb128 0x26
	.long	.LASF636
	.byte	0x1
	.value	0x54a
	.long	0xf77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x2d58
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x559
	.long	0x128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF636
	.byte	0x1
	.value	0x55a
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x25
	.string	"sv"
	.byte	0x1
	.value	0x57c
	.long	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x2d
	.long	0x2d84
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.long	.LASF678
	.byte	0x15
	.byte	0x29
	.long	0x2d8f
	.uleb128 0xb
	.long	0x2d79
	.uleb128 0x7
	.long	0x7f
	.long	0x2d9f
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2e
	.long	.LASF679
	.byte	0x8
	.value	0xcf7
	.long	0x2dab
	.uleb128 0xb
	.long	0x2d94
	.uleb128 0x2d
	.long	.LASF680
	.byte	0x16
	.byte	0x34
	.long	0xf2f
	.uleb128 0x2d
	.long	.LASF681
	.byte	0x16
	.byte	0x98
	.long	0x7f
	.uleb128 0x2e
	.long	.LASF682
	.byte	0x16
	.value	0x125
	.long	0x4eb
	.uleb128 0x2e
	.long	.LASF683
	.byte	0x16
	.value	0x1ff
	.long	0xf77
	.uleb128 0x2d
	.long	.LASF684
	.byte	0x17
	.byte	0x22
	.long	0x1ad1
	.uleb128 0x2d
	.long	.LASF685
	.byte	0x17
	.byte	0x26
	.long	0x10c7
	.uleb128 0x2d
	.long	.LASF686
	.byte	0x17
	.byte	0x28
	.long	0x1ad1
	.uleb128 0x2d
	.long	.LASF687
	.byte	0x17
	.byte	0x2b
	.long	0x1ad1
	.uleb128 0x2d
	.long	.LASF688
	.byte	0x17
	.byte	0x43
	.long	0xf77
	.uleb128 0x2d
	.long	.LASF689
	.byte	0x17
	.byte	0x5f
	.long	0x7f
	.uleb128 0x2d
	.long	.LASF690
	.byte	0x17
	.byte	0x73
	.long	0xf77
	.uleb128 0x2d
	.long	.LASF691
	.byte	0x17
	.byte	0x81
	.long	0x2e36
	.uleb128 0x2f
	.long	0x1ad7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x20
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF567:
	.string	"OP_ESERVENT"
.LASF492:
	.string	"OP_FTSVTX"
.LASF69:
	.string	"precomp"
.LASF445:
	.string	"OP_SYSREAD"
.LASF462:
	.string	"OP_SHUTDOWN"
.LASF538:
	.string	"OP_MSGRCV"
.LASF580:
	.string	"OP_LOCK"
.LASF585:
	.string	"OP_max"
.LASF23:
	.string	"op_next"
.LASF230:
	.string	"xiou_any"
.LASF496:
	.string	"OP_CHDIR"
.LASF410:
	.string	"OP_ENTER"
.LASF261:
	.string	"OP_REGCMAYBE"
.LASF391:
	.string	"OP_FLOP"
.LASF429:
	.string	"OP_BINMODE"
.LASF143:
	.string	"xpvgv"
.LASF165:
	.string	"xio_ifp"
.LASF321:
	.string	"OP_SEQ"
.LASF38:
	.string	"cop_io"
.LASF483:
	.string	"OP_FTSOCK"
.LASF137:
	.string	"xhv_keys"
.LASF180:
	.string	"xio_flags"
.LASF559:
	.string	"OP_GSERVENT"
.LASF184:
	.string	"svt_set"
.LASF133:
	.string	"xpvhv"
.LASF694:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF450:
	.string	"OP_TELL"
.LASF522:
	.string	"OP_SETPGRP"
.LASF672:
	.string	"keys"
.LASF477:
	.string	"OP_FTROWNED"
.LASF87:
	.string	"gp_hv"
.LASF164:
	.string	"xpvio"
.LASF466:
	.string	"OP_GETPEERNAME"
.LASF320:
	.string	"OP_SGE"
.LASF109:
	.string	"xpviv"
.LASF17:
	.string	"overflow_arg_area"
.LASF460:
	.string	"OP_LISTEN"
.LASF318:
	.string	"OP_SGT"
.LASF532:
	.string	"OP_SHMCTL"
.LASF290:
	.string	"OP_DIVIDE"
.LASF18:
	.string	"reg_save_area"
.LASF152:
	.string	"xcv_start"
.LASF84:
	.string	"gp_io"
.LASF88:
	.string	"gp_egv"
.LASF607:
	.string	"dend"
.LASF335:
	.string	"OP_SRAND"
.LASF589:
	.string	"hek_hash"
.LASF36:
	.string	"cop_line"
.LASF151:
	.string	"xcv_stash"
.LASF301:
	.string	"OP_LEFT_SHIFT"
.LASF641:
	.string	"astr"
.LASF689:
	.string	"PL_tainted"
.LASF568:
	.string	"OP_GPWNAM"
.LASF431:
	.string	"OP_UNTIE"
.LASF332:
	.string	"OP_SIN"
.LASF519:
	.string	"OP_KILL"
.LASF619:
	.string	"mark"
.LASF106:
	.string	"xpv_cur"
.LASF259:
	.string	"OP_READLINE"
.LASF272:
	.string	"OP_SCHOP"
.LASF99:
	.string	"mg_type"
.LASF505:
	.string	"OP_READLINK"
.LASF396:
	.string	"OP_ANDASSIGN"
.LASF645:
	.string	"temp_buffer"
.LASF667:
	.string	"dcsave"
.LASF115:
	.string	"xpvlv"
.LASF105:
	.string	"xpv_pv"
.LASF638:
	.string	"mask"
.LASF695:
	.string	"opcode"
.LASF398:
	.string	"OP_METHOD"
.LASF275:
	.string	"OP_DEFINED"
.LASF513:
	.string	"OP_CLOSEDIR"
.LASF540:
	.string	"OP_SEMCTL"
.LASF416:
	.string	"OP_LEAVELOOP"
.LASF507:
	.string	"OP_RMDIR"
.LASF446:
	.string	"OP_SYSWRITE"
.LASF228:
	.string	"cv_flags_t"
.LASF92:
	.string	"gp_line"
.LASF577:
	.string	"OP_EGRENT"
.LASF170:
	.string	"xio_page_len"
.LASF274:
	.string	"OP_SCHOMP"
.LASF440:
	.string	"OP_LEAVEWRITE"
.LASF319:
	.string	"OP_SLE"
.LASF144:
	.string	"xgv_gp"
.LASF22:
	.string	"__va_list_tag"
.LASF317:
	.string	"OP_SLT"
.LASF373:
	.string	"OP_JOIN"
.LASF98:
	.string	"mg_private"
.LASF688:
	.string	"PL_Sv"
.LASF273:
	.string	"OP_CHOMP"
.LASF366:
	.string	"OP_EXISTS"
.LASF130:
	.string	"xav_arylen"
.LASF81:
	.string	"program"
.LASF153:
	.string	"xcv_root"
.LASF587:
	.string	"hent_hek"
.LASF683:
	.string	"PL_encoding"
.LASF97:
	.string	"mg_virtual"
.LASF415:
	.string	"OP_ENTERLOOP"
.LASF234:
	.string	"OP_STUB"
.LASF121:
	.string	"xlv_targ"
.LASF34:
	.string	"cop_seq"
.LASF425:
	.string	"OP_CLOSE"
.LASF646:
	.string	"svrecode"
.LASF322:
	.string	"OP_SNE"
.LASF62:
	.string	"sv_flags"
.LASF529:
	.string	"OP_ALARM"
.LASF310:
	.string	"OP_I_GE"
.LASF306:
	.string	"OP_I_GT"
.LASF59:
	.string	"broiled"
.LASF175:
	.string	"xio_fmt_gv"
.LASF678:
	.string	"PL_utf8skip"
.LASF430:
	.string	"OP_TIE"
.LASF263:
	.string	"OP_REGCOMP"
.LASF91:
	.string	"gp_flags"
.LASF271:
	.string	"OP_CHOP"
.LASF83:
	.string	"gp_refcnt"
.LASF77:
	.string	"nparens"
.LASF545:
	.string	"OP_LEAVEEVAL"
.LASF208:
	.string	"type"
.LASF434:
	.string	"OP_DBMCLOSE"
.LASF618:
	.string	"hasutf"
.LASF288:
	.string	"OP_MULTIPLY"
.LASF397:
	.string	"OP_ORASSIGN"
.LASF93:
	.string	"gp_file"
.LASF463:
	.string	"OP_GSOCKOPT"
.LASF169:
	.string	"xio_page"
.LASF561:
	.string	"OP_SNETENT"
.LASF403:
	.string	"OP_WARN"
.LASF531:
	.string	"OP_SHMGET"
.LASF693:
	.string	"doop.c"
.LASF339:
	.string	"OP_INT"
.LASF553:
	.string	"OP_GNETENT"
.LASF520:
	.string	"OP_GETPPID"
.LASF343:
	.string	"OP_LENGTH"
.LASF264:
	.string	"OP_MATCH"
.LASF159:
	.string	"xcv_padlist"
.LASF488:
	.string	"OP_FTPIPE"
.LASF14:
	.string	"__gnuc_va_list"
.LASF649:
	.string	"rsptr"
.LASF620:
	.string	"oldmark"
.LASF327:
	.string	"OP_NEGATE"
.LASF82:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF384:
	.string	"OP_REVERSE"
.LASF655:
	.string	"leftlen"
.LASF566:
	.string	"OP_EPROTOENT"
.LASF342:
	.string	"OP_ABS"
.LASF206:
	.string	"PerlIO"
.LASF668:
	.string	"lulen"
.LASF597:
	.string	"ulen"
.LASF556:
	.string	"OP_GPROTOENT"
.LASF592:
	.string	"float"
.LASF630:
	.string	"Perl_do_vecget"
.LASF112:
	.string	"xpvuv"
.LASF60:
	.string	"sv_any"
.LASF377:
	.string	"OP_ANONHASH"
.LASF308:
	.string	"OP_I_LE"
.LASF576:
	.string	"OP_SGRENT"
.LASF304:
	.string	"OP_I_LT"
.LASF676:
	.string	"dovalues"
.LASF395:
	.string	"OP_COND_EXPR"
.LASF489:
	.string	"OP_FTLINK"
.LASF80:
	.string	"reganch"
.LASF199:
	.string	"stashes"
.LASF423:
	.string	"OP_EXIT"
.LASF66:
	.string	"endp"
.LASF295:
	.string	"OP_ADD"
.LASF539:
	.string	"OP_SEMGET"
.LASF266:
	.string	"OP_SUBST"
.LASF389:
	.string	"OP_RANGE"
.LASF235:
	.string	"OP_SCALAR"
.LASF621:
	.string	"items"
.LASF562:
	.string	"OP_SPROTOENT"
.LASF537:
	.string	"OP_MSGSND"
.LASF362:
	.string	"OP_EACH"
.LASF534:
	.string	"OP_SHMWRITE"
.LASF363:
	.string	"OP_VALUES"
.LASF385:
	.string	"OP_GREPSTART"
.LASF11:
	.string	"size_t"
.LASF252:
	.string	"OP_PROTOTYPE"
.LASF614:
	.string	"S_do_trans_count_utf8"
.LASF120:
	.string	"xlv_targlen"
.LASF314:
	.string	"OP_I_NE"
.LASF257:
	.string	"OP_BACKTICK"
.LASF625:
	.string	"Perl_do_sprintf"
.LASF611:
	.string	"hibit"
.LASF225:
	.string	"SVt_PVGV"
.LASF73:
	.string	"sublen"
.LASF411:
	.string	"OP_LEAVE"
.LASF126:
	.string	"xav_fill"
.LASF497:
	.string	"OP_CHOWN"
.LASF471:
	.string	"OP_FTREXEC"
.LASF96:
	.string	"mg_moremagic"
.LASF502:
	.string	"OP_RENAME"
.LASF35:
	.string	"cop_arybase"
.LASF19:
	.string	"va_list"
.LASF345:
	.string	"OP_VEC"
.LASF438:
	.string	"OP_READ"
.LASF406:
	.string	"OP_LINESEQ"
.LASF102:
	.string	"mg_ptr"
.LASF432:
	.string	"OP_TIED"
.LASF283:
	.string	"OP_POSTINC"
.LASF661:
	.string	"right_utf"
.LASF627:
	.string	"patlen"
.LASF370:
	.string	"OP_UNPACK"
.LASF527:
	.string	"OP_LOCALTIME"
.LASF178:
	.string	"xio_subprocess"
.LASF486:
	.string	"OP_FTFILE"
.LASF71:
	.string	"subbeg"
.LASF65:
	.string	"startp"
.LASF654:
	.string	"right"
.LASF642:
	.string	"entry"
.LASF573:
	.string	"OP_GGRNAM"
.LASF692:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF297:
	.string	"OP_SUBTRACT"
.LASF473:
	.string	"OP_FTEWRITE"
.LASF499:
	.string	"OP_UNLINK"
.LASF64:
	.string	"regexp"
.LASF582:
	.string	"OP_SETSTATE"
.LASF419:
	.string	"OP_NEXT"
.LASF454:
	.string	"OP_IOCTL"
.LASF622:
	.string	"delimlen"
.LASF681:
	.string	"PL_tainting"
.LASF63:
	.string	"REGEXP"
.LASF61:
	.string	"sv_refcnt"
.LASF414:
	.string	"OP_ITER"
.LASF491:
	.string	"OP_FTSGID"
.LASF246:
	.string	"OP_PUSHRE"
.LASF244:
	.string	"OP_PADHV"
.LASF514:
	.string	"OP_FORK"
.LASF185:
	.string	"svt_len"
.LASF217:
	.string	"SVt_PVIV"
.LASF209:
	.string	"next_off"
.LASF408:
	.string	"OP_DBSTATE"
.LASF29:
	.string	"op_flags"
.LASF617:
	.string	"havefinal"
.LASF37:
	.string	"cop_warnings"
.LASF624:
	.string	"Perl_do_join"
.LASF68:
	.string	"substrs"
.LASF569:
	.string	"OP_GPWUID"
.LASF616:
	.string	"squash"
.LASF277:
	.string	"OP_STUDY"
.LASF344:
	.string	"OP_SUBSTR"
.LASF222:
	.string	"SVt_PVAV"
.LASF550:
	.string	"OP_GHOSTENT"
.LASF134:
	.string	"xhv_array"
.LASF552:
	.string	"OP_GNBYADDR"
.LASF72:
	.string	"offsets"
.LASF378:
	.string	"OP_SPLICE"
.LASF684:
	.string	"PL_stack_sp"
.LASF323:
	.string	"OP_SCMP"
.LASF510:
	.string	"OP_TELLDIR"
.LASF176:
	.string	"xio_bottom_name"
.LASF666:
	.string	"mop_up"
.LASF324:
	.string	"OP_BIT_AND"
.LASF220:
	.string	"SVt_PVBM"
.LASF682:
	.string	"PL_sv_undef"
.LASF94:
	.string	"MAGIC"
.LASF31:
	.string	"cop_label"
.LASF100:
	.string	"mg_flags"
.LASF123:
	.string	"XPVAV"
.LASF635:
	.string	"Perl_do_vecset"
.LASF52:
	.string	"svop"
.LASF224:
	.string	"SVt_PVCV"
.LASF280:
	.string	"OP_I_PREINC"
.LASF76:
	.string	"prelen"
.LASF640:
	.string	"Perl_do_chop"
.LASF386:
	.string	"OP_GREPWHILE"
.LASF420:
	.string	"OP_REDO"
.LASF26:
	.string	"op_targ"
.LASF279:
	.string	"OP_PREINC"
.LASF626:
	.string	"sarg"
.LASF177:
	.string	"xio_bottom_gv"
.LASF276:
	.string	"OP_UNDEF"
.LASF613:
	.string	"nlen"
.LASF329:
	.string	"OP_NOT"
.LASF427:
	.string	"OP_FILENO"
.LASF392:
	.string	"OP_AND"
.LASF601:
	.string	"S_do_trans_complex"
.LASF544:
	.string	"OP_ENTEREVAL"
.LASF78:
	.string	"lastparen"
.LASF149:
	.string	"XPVCV"
.LASF326:
	.string	"OP_BIT_OR"
.LASF461:
	.string	"OP_ACCEPT"
.LASF634:
	.string	"retnum"
.LASF686:
	.string	"PL_curpad"
.LASF433:
	.string	"OP_DBMOPEN"
.LASF578:
	.string	"OP_GETLOGIN"
.LASF9:
	.string	"__ssize_t"
.LASF211:
	.string	"reg_data"
.LASF174:
	.string	"xio_fmt_name"
.LASF588:
	.string	"hent_val"
.LASF409:
	.string	"OP_UNSTACK"
.LASF116:
	.string	"xnv_nv"
.LASF602:
	.string	"isutf8"
.LASF586:
	.string	"hent_next"
.LASF451:
	.string	"OP_SEEK"
.LASF122:
	.string	"xlv_type"
.LASF187:
	.string	"svt_free"
.LASF49:
	.string	"op_pmdynflags"
.LASF673:
	.string	"tmpstr"
.LASF226:
	.string	"SVt_PVFM"
.LASF675:
	.string	"dokeys"
.LASF381:
	.string	"OP_SHIFT"
.LASF407:
	.string	"OP_NEXTSTATE"
.LASF198:
	.string	"clone_params"
.LASF54:
	.string	"PVOP"
.LASF575:
	.string	"OP_GGRENT"
.LASF316:
	.string	"OP_I_NCMP"
.LASF294:
	.string	"OP_REPEAT"
.LASF354:
	.string	"OP_LCFIRST"
.LASF657:
	.string	"lensave"
.LASF493:
	.string	"OP_FTTTY"
.LASF652:
	.string	"optype"
.LASF299:
	.string	"OP_CONCAT"
.LASF442:
	.string	"OP_PRINT"
.LASF609:
	.string	"extra"
.LASF160:
	.string	"xcv_outside"
.LASF231:
	.string	"PADLIST"
.LASF196:
	.string	"any_dxptr"
.LASF382:
	.string	"OP_UNSHIFT"
.LASF148:
	.string	"xgv_flags"
.LASF95:
	.string	"magic"
.LASF658:
	.string	"lsave"
.LASF525:
	.string	"OP_TIME"
.LASF474:
	.string	"OP_FTEEXEC"
.LASF639:
	.string	"targlen"
.LASF571:
	.string	"OP_SPWENT"
.LASF476:
	.string	"OP_FTEOWNED"
.LASF291:
	.string	"OP_I_DIVIDE"
.LASF312:
	.string	"OP_I_EQ"
.LASF223:
	.string	"SVt_PVHV"
.LASF212:
	.string	"SVt_NULL"
.LASF542:
	.string	"OP_REQUIRE"
.LASF182:
	.string	"mgvtbl"
.LASF258:
	.string	"OP_GLOB"
.LASF511:
	.string	"OP_SEEKDIR"
.LASF142:
	.string	"XPVGV"
.LASF441:
	.string	"OP_PRTF"
.LASF181:
	.string	"MGVTBL"
.LASF551:
	.string	"OP_GNBYNAME"
.LASF16:
	.string	"fp_offset"
.LASF227:
	.string	"SVt_PVIO"
.LASF15:
	.string	"gp_offset"
.LASF337:
	.string	"OP_LOG"
.LASF74:
	.string	"refcnt"
.LASF284:
	.string	"OP_I_POSTINC"
.LASF503:
	.string	"OP_LINK"
.LASF387:
	.string	"OP_MAPSTART"
.LASF132:
	.string	"XPVHV"
.LASF402:
	.string	"OP_CALLER"
.LASF7:
	.string	"sizetype"
.LASF311:
	.string	"OP_EQ"
.LASF238:
	.string	"OP_CONST"
.LASF55:
	.string	"pvop"
.LASF45:
	.string	"op_pmnext"
.LASF523:
	.string	"OP_GETPRIORITY"
.LASF459:
	.string	"OP_CONNECT"
.LASF154:
	.string	"xcv_xsub"
.LASF526:
	.string	"OP_TMS"
.LASF401:
	.string	"OP_LEAVESUBLV"
.LASF465:
	.string	"OP_GETSOCKNAME"
.LASF30:
	.string	"op_private"
.LASF241:
	.string	"OP_GELEM"
.LASF351:
	.string	"OP_CHR"
.LASF190:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF300:
	.string	"OP_STRINGIFY"
.LASF623:
	.string	"tmplen"
.LASF518:
	.string	"OP_EXEC"
.LASF298:
	.string	"OP_I_SUBTRACT"
.LASF163:
	.string	"XPVIO"
.LASF606:
	.string	"start"
.LASF108:
	.string	"XPVIV"
.LASF129:
	.string	"xav_alloc"
.LASF239:
	.string	"OP_GVSV"
.LASF136:
	.string	"xhv_max"
.LASF75:
	.string	"minlen"
.LASF270:
	.string	"OP_AASSIGN"
.LASF604:
	.string	"comp"
.LASF644:
	.string	"count"
.LASF444:
	.string	"OP_SYSSEEK"
.LASF118:
	.string	"xmg_stash"
.LASF541:
	.string	"OP_SEMOP"
.LASF67:
	.string	"regstclass"
.LASF309:
	.string	"OP_GE"
.LASF139:
	.string	"xhv_eiter"
.LASF375:
	.string	"OP_LSLICE"
.LASF439:
	.string	"OP_ENTERWRITE"
.LASF669:
	.string	"rulen"
.LASF305:
	.string	"OP_GT"
.LASF240:
	.string	"OP_GV"
.LASF467:
	.string	"OP_LSTAT"
.LASF436:
	.string	"OP_SELECT"
.LASF530:
	.string	"OP_SLEEP"
.LASF628:
	.string	"do_taint"
.LASF221:
	.string	"SVt_PVLV"
.LASF210:
	.string	"reg_substr_data"
.LASF637:
	.string	"lval"
.LASF237:
	.string	"OP_WANTARRAY"
.LASF687:
	.string	"PL_stack_max"
.LASF302:
	.string	"OP_RIGHT_SHIFT"
.LASF557:
	.string	"OP_GSBYNAME"
.LASF219:
	.string	"SVt_PVMG"
.LASF128:
	.string	"xof_off"
.LASF524:
	.string	"OP_SETPRIORITY"
.LASF574:
	.string	"OP_GGRGID"
.LASF146:
	.string	"xgv_namelen"
.LASF42:
	.string	"op_last"
.LASF243:
	.string	"OP_PADAV"
.LASF204:
	.string	"__dirstream"
.LASF371:
	.string	"OP_PACK"
.LASF193:
	.string	"any_long"
.LASF114:
	.string	"XPVLV"
.LASF424:
	.string	"OP_OPEN"
.LASF28:
	.string	"op_seq"
.LASF555:
	.string	"OP_GPBYNUMBER"
.LASF647:
	.string	"rslen"
.LASF119:
	.string	"xlv_targoff"
.LASF218:
	.string	"SVt_PVNV"
.LASF39:
	.string	"PMOP"
.LASF358:
	.string	"OP_RV2AV"
.LASF506:
	.string	"OP_MKDIR"
.LASF447:
	.string	"OP_SEND"
.LASF485:
	.string	"OP_FTBLK"
.LASF79:
	.string	"lastcloseparen"
.LASF498:
	.string	"OP_CHROOT"
.LASF685:
	.string	"PL_op"
.LASF179:
	.string	"xio_type"
.LASF472:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF186:
	.string	"svt_clear"
.LASF166:
	.string	"xio_ofp"
.LASF147:
	.string	"xgv_stash"
.LASF341:
	.string	"OP_OCT"
.LASF296:
	.string	"OP_I_ADD"
.LASF43:
	.string	"op_pmreplroot"
.LASF671:
	.string	"Perl_do_kv"
.LASF158:
	.string	"xcv_depth"
.LASF90:
	.string	"gp_cvgen"
.LASF138:
	.string	"xhv_riter"
.LASF250:
	.string	"OP_RV2CV"
.LASF691:
	.string	"PL_curcop"
.LASF484:
	.string	"OP_FTCHR"
.LASF674:
	.string	"gimme"
.LASF662:
	.string	"needlen"
.LASF383:
	.string	"OP_SORT"
.LASF356:
	.string	"OP_LC"
.LASF307:
	.string	"OP_LE"
.LASF558:
	.string	"OP_GSBYPORT"
.LASF44:
	.string	"op_pmreplstart"
.LASF584:
	.string	"OP_CUSTOM"
.LASF303:
	.string	"OP_LT"
.LASF325:
	.string	"OP_BIT_XOR"
.LASF670:
	.string	"remainder"
.LASF404:
	.string	"OP_DIE"
.LASF267:
	.string	"OP_SUBSTCONT"
.LASF610:
	.string	"final"
.LASF213:
	.string	"SVt_IV"
.LASF289:
	.string	"OP_I_MULTIPLY"
.LASF207:
	.string	"regnode"
.LASF333:
	.string	"OP_COS"
.LASF24:
	.string	"op_sibling"
.LASF650:
	.string	"is_utf8"
.LASF651:
	.string	"Perl_do_vop"
.LASF594:
	.string	"dstart"
.LASF192:
	.string	"any_iv"
.LASF360:
	.string	"OP_AELEM"
.LASF690:
	.string	"PL_rs"
.LASF140:
	.string	"xhv_pmroot"
.LASF648:
	.string	"rs_charlen"
.LASF330:
	.string	"OP_COMPLEMENT"
.LASF405:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF40:
	.string	"pmop"
.LASF656:
	.string	"rightlen"
.LASF482:
	.string	"OP_FTCTIME"
.LASF388:
	.string	"OP_MAPWHILE"
.LASF480:
	.string	"OP_FTMTIME"
.LASF372:
	.string	"OP_SPLIT"
.LASF328:
	.string	"OP_I_NEGATE"
.LASF509:
	.string	"OP_READDIR"
.LASF57:
	.string	"PerlInterpreter"
.LASF313:
	.string	"OP_NE"
.LASF549:
	.string	"OP_GHBYADDR"
.LASF8:
	.string	"char"
.LASF394:
	.string	"OP_XOR"
.LASF469:
	.string	"OP_FTRREAD"
.LASF172:
	.string	"xio_top_name"
.LASF517:
	.string	"OP_SYSTEM"
.LASF103:
	.string	"mg_len"
.LASF443:
	.string	"OP_SYSOPEN"
.LASF229:
	.string	"xiou_dirp"
.LASF145:
	.string	"xgv_name"
.LASF260:
	.string	"OP_RCATLINE"
.LASF393:
	.string	"OP_OR"
.LASF285:
	.string	"OP_POSTDEC"
.LASF453:
	.string	"OP_FCNTL"
.LASF56:
	.string	"op_pv"
.LASF478:
	.string	"OP_FTZERO"
.LASF247:
	.string	"OP_RV2GV"
.LASF374:
	.string	"OP_LIST"
.LASF417:
	.string	"OP_RETURN"
.LASF168:
	.string	"xio_lines"
.LASF475:
	.string	"OP_FTIS"
.LASF233:
	.string	"OP_NULL"
.LASF107:
	.string	"xpv_len"
.LASF665:
	.string	"finish"
.LASF27:
	.string	"op_type"
.LASF367:
	.string	"OP_RV2HV"
.LASF21:
	.string	"STRLEN"
.LASF679:
	.string	"PL_no_modify"
.LASF490:
	.string	"OP_FTSUID"
.LASF265:
	.string	"OP_QR"
.LASF349:
	.string	"OP_FORMLINE"
.LASF598:
	.string	"S_do_trans_simple"
.LASF516:
	.string	"OP_WAITPID"
.LASF214:
	.string	"SVt_NV"
.LASF346:
	.string	"OP_INDEX"
.LASF334:
	.string	"OP_RAND"
.LASF347:
	.string	"OP_RINDEX"
.LASF591:
	.string	"hek_key"
.LASF564:
	.string	"OP_EHOSTENT"
.LASF293:
	.string	"OP_I_MODULO"
.LASF632:
	.string	"size"
.LASF157:
	.string	"xcv_file"
.LASF111:
	.string	"XPVUV"
.LASF201:
	.string	"proto_perl"
.LASF369:
	.string	"OP_HSLICE"
.LASF292:
	.string	"OP_MODULO"
.LASF53:
	.string	"op_sv"
.LASF533:
	.string	"OP_SHMREAD"
.LASF487:
	.string	"OP_FTDIR"
.LASF643:
	.string	"Perl_do_chomp"
.LASF593:
	.string	"send"
.LASF563:
	.string	"OP_SSERVENT"
.LASF612:
	.string	"clen"
.LASF232:
	.string	"PADOFFSET"
.LASF47:
	.string	"op_pmflags"
.LASF113:
	.string	"xuv_uv"
.LASF58:
	.string	"interpreter"
.LASF167:
	.string	"xio_dirpu"
.LASF615:
	.string	"S_do_trans_complex_utf8"
.LASF41:
	.string	"op_first"
.LASF20:
	.string	"double"
.LASF48:
	.string	"op_pmpermflags"
.LASF104:
	.string	"xrv_rv"
.LASF127:
	.string	"xav_max"
.LASF10:
	.string	"ssize_t"
.LASF25:
	.string	"op_ppaddr"
.LASF581:
	.string	"OP_THREADSV"
.LASF191:
	.string	"any_i32"
.LASF216:
	.string	"SVt_PV"
.LASF33:
	.string	"cop_filegv"
.LASF194:
	.string	"any_bool"
.LASF379:
	.string	"OP_PUSH"
.LASF355:
	.string	"OP_UC"
.LASF162:
	.string	"xcv_outside_seq"
.LASF282:
	.string	"OP_I_PREDEC"
.LASF70:
	.string	"data"
.LASF458:
	.string	"OP_BIND"
.LASF565:
	.string	"OP_ENETENT"
.LASF512:
	.string	"OP_REWINDDIR"
.LASF125:
	.string	"xav_array"
.LASF215:
	.string	"SVt_RV"
.LASF680:
	.string	"PL_dowarn"
.LASF197:
	.string	"CLONE_PARAMS"
.LASF412:
	.string	"OP_SCOPE"
.LASF548:
	.string	"OP_GHBYNAME"
.LASF664:
	.string	"mop_up_utf"
.LASF281:
	.string	"OP_PREDEC"
.LASF603:
	.string	"rlen"
.LASF135:
	.string	"xhv_fill"
.LASF110:
	.string	"xiv_iv"
.LASF659:
	.string	"rsave"
.LASF653:
	.string	"left"
.LASF515:
	.string	"OP_WAIT"
.LASF421:
	.string	"OP_DUMP"
.LASF596:
	.string	"grows"
.LASF269:
	.string	"OP_SASSIGN"
.LASF359:
	.string	"OP_AELEMFAST"
.LASF590:
	.string	"hek_len"
.LASF353:
	.string	"OP_UCFIRST"
.LASF504:
	.string	"OP_SYMLINK"
.LASF338:
	.string	"OP_SQRT"
.LASF536:
	.string	"OP_MSGCTL"
.LASF479:
	.string	"OP_FTSIZE"
.LASF12:
	.string	"long long unsigned int"
.LASF631:
	.string	"offset"
.LASF449:
	.string	"OP_EOF"
.LASF495:
	.string	"OP_FTBINARY"
.LASF468:
	.string	"OP_STAT"
.LASF368:
	.string	"OP_HELEM"
.LASF633:
	.string	"srclen"
.LASF245:
	.string	"OP_PADANY"
.LASF249:
	.string	"OP_AV2ARYLEN"
.LASF455:
	.string	"OP_FLOCK"
.LASF350:
	.string	"OP_ORD"
.LASF189:
	.string	"svt_dup"
.LASF236:
	.string	"OP_PUSHMARK"
.LASF543:
	.string	"OP_DOFILE"
.LASF173:
	.string	"xio_top_gv"
.LASF365:
	.string	"OP_DELETE"
.LASF608:
	.string	"none"
.LASF595:
	.string	"matches"
.LASF400:
	.string	"OP_LEAVESUB"
.LASF677:
	.string	"realhv"
.LASF242:
	.string	"OP_PADSV"
.LASF254:
	.string	"OP_SREFGEN"
.LASF422:
	.string	"OP_GOTO"
.LASF50:
	.string	"op_pmstash"
.LASF183:
	.string	"svt_get"
.LASF85:
	.string	"gp_form"
.LASF286:
	.string	"OP_I_POSTDEC"
.LASF248:
	.string	"OP_RV2SV"
.LASF156:
	.string	"xcv_gv"
.LASF32:
	.string	"cop_stash"
.LASF256:
	.string	"OP_BLESS"
.LASF528:
	.string	"OP_GMTIME"
.LASF13:
	.string	"long long int"
.LASF202:
	.string	"line_t"
.LASF663:
	.string	"nope"
.LASF141:
	.string	"xhv_name"
.LASF494:
	.string	"OP_FTTEXT"
.LASF599:
	.string	"S_do_trans_count"
.LASF481:
	.string	"OP_FTATIME"
.LASF188:
	.string	"svt_copy"
.LASF380:
	.string	"OP_POP"
.LASF278:
	.string	"OP_POS"
.LASF600:
	.string	"complement"
.LASF287:
	.string	"OP_POW"
.LASF413:
	.string	"OP_ENTERITER"
.LASF253:
	.string	"OP_REFGEN"
.LASF636:
	.string	"targ"
.LASF437:
	.string	"OP_GETC"
.LASF470:
	.string	"OP_FTRWRITE"
.LASF464:
	.string	"OP_SSOCKOPT"
.LASF51:
	.string	"SVOP"
.LASF131:
	.string	"xav_flags"
.LASF570:
	.string	"OP_GPWENT"
.LASF605:
	.string	"S_do_trans_simple_utf8"
.LASF560:
	.string	"OP_SHOSTENT"
.LASF418:
	.string	"OP_LAST"
.LASF117:
	.string	"xmg_magic"
.LASF364:
	.string	"OP_KEYS"
.LASF101:
	.string	"mg_obj"
.LASF547:
	.string	"OP_LEAVETRY"
.LASF195:
	.string	"any_dptr"
.LASF390:
	.string	"OP_FLIP"
.LASF508:
	.string	"OP_OPEN_DIR"
.LASF124:
	.string	"xpvav"
.LASF46:
	.string	"op_pmregexp"
.LASF255:
	.string	"OP_REF"
.LASF457:
	.string	"OP_SOCKPAIR"
.LASF554:
	.string	"OP_GPBYNAME"
.LASF155:
	.string	"xcv_xsubany"
.LASF428:
	.string	"OP_UMASK"
.LASF171:
	.string	"xio_lines_left"
.LASF448:
	.string	"OP_RECV"
.LASF86:
	.string	"gp_av"
.LASF452:
	.string	"OP_TRUNCATE"
.LASF426:
	.string	"OP_PIPE_OP"
.LASF572:
	.string	"OP_EPWENT"
.LASF660:
	.string	"left_utf"
.LASF251:
	.string	"OP_ANONCODE"
.LASF268:
	.string	"OP_TRANS"
.LASF579:
	.string	"OP_SYSCALL"
.LASF161:
	.string	"xcv_flags"
.LASF583:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF150:
	.string	"xpvcv"
.LASF331:
	.string	"OP_ATAN2"
.LASF376:
	.string	"OP_ANONLIST"
.LASF456:
	.string	"OP_SOCKET"
.LASF361:
	.string	"OP_ASLICE"
.LASF340:
	.string	"OP_HEX"
.LASF205:
	.string	"_PerlIO"
.LASF435:
	.string	"OP_SSELECT"
.LASF535:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF89:
	.string	"gp_cv"
.LASF629:
	.string	"Perl_do_trans"
.LASF357:
	.string	"OP_QUOTEMETA"
.LASF521:
	.string	"OP_GETPGRP"
.LASF315:
	.string	"OP_NCMP"
.LASF546:
	.string	"OP_ENTERTRY"
.LASF500:
	.string	"OP_CHMOD"
.LASF336:
	.string	"OP_EXP"
.LASF352:
	.string	"OP_CRYPT"
.LASF501:
	.string	"OP_UTIME"
.LASF203:
	.string	"PerlIOl"
.LASF399:
	.string	"OP_ENTERSUB"
.LASF200:
	.string	"flags"
.LASF348:
	.string	"OP_SPRINTF"
.LASF262:
	.string	"OP_REGCRESET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
