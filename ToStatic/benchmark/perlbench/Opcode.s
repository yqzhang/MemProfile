	.file	"Opcode.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Opcode.c
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
	.local	my_cxt
	.comm	my_cxt,32,32
	.section	.rodata
.LC0:
	.string	":none"
.LC1:
	.string	":all"
	.text
	.type	op_names_init, @function
op_names_init:
.LFB2:
	.file 1 "Opcode.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 59 0
	call	Perl_newHV	#
	movq	%rax, my_cxt(%rip)	# D.12085, my_cxt.x_op_named_bits
	.loc 1 60 0
	call	Perl_get_op_names	#
	movq	%rax, -24(%rbp)	# tmp105, op_names
	.loc 1 61 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L2	#
.L3:
.LBB2:
	.loc 1 63 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp106
	cltq
	movq	%rax, %rdi	# D.12086,
	call	Perl_newSViv	#
	movq	%rax, -16(%rbp)	# tmp107, sv
	.loc 1 64 0 discriminator 2
	movq	-16(%rbp), %rax	# sv, tmp108
	movl	12(%rax), %eax	# sv_10->sv_flags, D.12087
	orl	$8388608, %eax	#, D.12087
	movl	%eax, %edx	# D.12087, D.12087
	movq	-16(%rbp), %rax	# sv, tmp109
	movl	%edx, 12(%rax)	# D.12087, sv_10->sv_flags
	.loc 1 65 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12088
	movq	-24(%rbp), %rax	# op_names, tmp111
	addq	%rdx, %rax	# D.12088, D.12089
	movq	(%rax), %rax	# *_15, D.12090
	movq	%rax, %rdi	# D.12090,
	call	strlen	#
	movl	%eax, %edx	# D.12088, D.12091
	movl	-36(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12088
	movq	-24(%rbp), %rax	# op_names, tmp113
	addq	%rcx, %rax	# D.12088, D.12089
	movq	(%rax), %rsi	# *_21, D.12090
	movq	my_cxt(%rip), %rax	# my_cxt.x_op_named_bits, D.12085
	movq	-16(%rbp), %rcx	# sv, tmp114
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# D.12085,
	call	Perl_hv_store	#
.LBE2:
	.loc 1 61 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L2:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.0
	cmpl	%eax, -36(%rbp)	# PL_maxo.0, i
	jl	.L3	#,
	.loc 1 68 0 is_stmt 1
	movl	$0, %edi	#,
	call	new_opset	#
	movq	%rax, %rdi	# D.12092,
	call	Perl_sv_2mortal	#
	movq	%rax, %rdx	# D.12092,
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	put_op_bitspec	#
	.loc 1 70 0
	movl	$0, %edi	#,
	call	new_opset	#
	movq	%rax, my_cxt+8(%rip)	# D.12092, my_cxt.x_opset_all
	.loc 1 71 0
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12092
	movl	12(%rax), %eax	# _28->sv_flags, D.12087
	andl	$262144, %eax	#, D.12087
	testl	%eax, %eax	# D.12087
	je	.L4	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12092
	movq	(%rax), %rax	# _31->sv_any, D.12093
	movq	8(%rax), %rax	# MEM[(struct XPV *)_32].xpv_cur, len.2
	movq	%rax, -32(%rbp)	# len.2, len
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12092
	movq	(%rax), %rax	# _34->sv_any, D.12093
	movq	(%rax), %rax	# MEM[(struct XPV *)_35].xpv_pv, iftmp.1
	jmp	.L5	#
.L4:
	.loc 1 71 0 discriminator 2
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12092
	leaq	-32(%rbp), %rcx	#, tmp115
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# D.12092,
	call	Perl_sv_2pv_flags	#
.L5:
	.loc 1 71 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.1, bitmap
	.loc 1 72 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# len, len.3
	subl	$1, %eax	#, D.12094
	movl	%eax, -36(%rbp)	# D.12094, i
	.loc 1 73 0 discriminator 3
	jmp	.L6	#
.L7:
	.loc 1 74 0
	movl	-36(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, D.12095
	movq	-8(%rbp), %rax	# bitmap, tmp117
	addq	%rdx, %rax	# D.12095, D.12090
	movb	$-1, (%rax)	#, *_47
.L6:
	.loc 1 73 0 discriminator 1
	movl	-36(%rbp), %eax	# i, i.4
	leal	-1(%rax), %edx	#, tmp118
	movl	%edx, -36(%rbp)	# tmp118, i
	testl	%eax, %eax	# i.4
	jg	.L7	#,
	.loc 1 76 0
	movq	-32(%rbp), %rax	# len, len.5
	leaq	-1(%rax), %rdx	#, D.12095
	movq	-8(%rbp), %rax	# bitmap, tmp119
	addq	%rax, %rdx	# tmp119, D.12090
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.7
	andl	$7, %eax	#, D.12091
	testl	%eax, %eax	# D.12091
	je	.L8	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.8
	andl	$7, %eax	#, D.12091
	movl	$255, %esi	#, tmp120
	movl	%eax, %ecx	# D.12091, tmp123
	sall	%cl, %esi	# tmp123, D.12091
	movl	%esi, %eax	# D.12091, D.12091
	notl	%eax	# iftmp.6
	jmp	.L9	#
.L8:
	.loc 1 76 0 discriminator 2
	movl	$-1, %eax	#, iftmp.6
.L9:
	.loc 1 76 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.6, *_50
	.loc 1 77 0 is_stmt 1 discriminator 3
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12092
	movq	%rax, %rdx	# D.12092,
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	put_op_bitspec	#
	.loc 1 78 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	op_names_init, .-op_names_init
	.section	.rodata
	.align 8
.LC2:
	.string	"Opcode tag \"%s\" already defined"
	.text
	.type	put_op_bitspec, @function
put_op_bitspec:
.LFB3:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# optag, optag
	movq	%rsi, -32(%rbp)	# len, len
	movq	%rdx, -40(%rbp)	# mask, mask
	.loc 1 92 0
	movq	-40(%rbp), %rax	# mask, tmp69
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	verify_opset	#
	.loc 1 93 0
	cmpq	$0, -32(%rbp)	#, len
	jne	.L11	#,
	.loc 1 94 0
	movq	-24(%rbp), %rax	# optag, tmp70
	movq	%rax, %rdi	# tmp70,
	call	strlen	#
	movq	%rax, -32(%rbp)	# tmp71, len
.L11:
	.loc 1 95 0
	movq	-32(%rbp), %rax	# len, tmp72
	movl	%eax, %edx	# tmp72, D.12099
	movq	my_cxt(%rip), %rax	# my_cxt.x_op_named_bits, D.12100
	movq	-24(%rbp), %rsi	# optag, tmp73
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.12100,
	call	Perl_hv_fetch	#
	movq	%rax, -8(%rbp)	# tmp74, svp
	.loc 1 96 0
	movq	-8(%rbp), %rax	# svp, tmp75
	movq	(%rax), %rax	# *svp_8, D.12101
	movl	12(%rax), %eax	# _9->sv_flags, D.12102
	andl	$118423552, %eax	#, D.12102
	testl	%eax, %eax	# D.12102
	je	.L12	#,
	.loc 1 97 0
	movq	-24(%rbp), %rax	# optag, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L12:
	.loc 1 98 0
	movq	-8(%rbp), %rax	# svp, tmp77
	movq	(%rax), %rax	# *svp_8, D.12101
	movq	-40(%rbp), %rcx	# mask, tmp78
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.12101,
	call	Perl_sv_setsv_flags	#
	.loc 1 99 0
	movq	-8(%rbp), %rax	# svp, tmp79
	movq	(%rax), %rax	# *svp_8, D.12101
	movq	-8(%rbp), %rdx	# svp, tmp80
	movq	(%rdx), %rdx	# *svp_8, D.12101
	movl	12(%rdx), %edx	# _14->sv_flags, D.12102
	orl	$8388608, %edx	#, D.12102
	movl	%edx, 12(%rax)	# D.12102, _13->sv_flags
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	put_op_bitspec, .-put_op_bitspec
	.section	.rodata
.LC3:
	.string	"Unknown operator tag \"%s\""
	.align 8
.LC4:
	.string	"Can't negate operators here (\"%s\")"
.LC5:
	.string	"Unknown operator name \"%s\""
.LC6:
	.string	"Unknown operator prefix \"%s\""
	.text
	.type	get_op_bitspec, @function
get_op_bitspec:
.LFB4:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# opname, opname
	movq	%rsi, -32(%rbp)	# len, len
	movl	%edx, -36(%rbp)	# fatal, fatal
	.loc 1 115 0
	cmpq	$0, -32(%rbp)	#, len
	jne	.L14	#,
	.loc 1 116 0
	movq	-24(%rbp), %rax	# opname, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	movq	%rax, -32(%rbp)	# tmp73, len
.L14:
	.loc 1 117 0
	movq	-32(%rbp), %rax	# len, tmp74
	movl	%eax, %edx	# tmp74, D.12105
	movq	my_cxt(%rip), %rax	# my_cxt.x_op_named_bits, D.12106
	movq	-24(%rbp), %rsi	# opname, tmp75
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.12106,
	call	Perl_hv_fetch	#
	movq	%rax, -8(%rbp)	# tmp76, svp
	.loc 1 118 0
	cmpq	$0, -8(%rbp)	#, svp
	je	.L15	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# svp, tmp77
	movq	(%rax), %rax	# *svp_8, D.12104
	movl	12(%rax), %eax	# _9->sv_flags, D.12107
	andl	$118423552, %eax	#, D.12107
	testl	%eax, %eax	# D.12107
	jne	.L16	#,
.L15:
	.loc 1 119 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, fatal
	jne	.L17	#,
	.loc 1 120 0
	movl	$0, %eax	#, D.12104
	jmp	.L18	#
.L17:
	.loc 1 121 0
	movq	-24(%rbp), %rax	# opname, tmp78
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$58, %al	#, D.12108
	jne	.L19	#,
	.loc 1 122 0
	movq	-24(%rbp), %rax	# opname, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L19:
	.loc 1 123 0
	movq	-24(%rbp), %rax	# opname, tmp80
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$33, %al	#, D.12108
	jne	.L20	#,
	.loc 1 124 0
	movq	-24(%rbp), %rax	# opname, tmp81
	movq	%rax, %rsi	# tmp81,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L20:
	.loc 1 125 0
	movq	-24(%rbp), %rax	# opname, tmp82
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$64, %al	#, D.12108
	jle	.L21	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# opname, tmp83
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$90, %al	#, D.12108
	jle	.L22	#,
.L21:
	.loc 1 125 0 discriminator 2
	movq	-24(%rbp), %rax	# opname, tmp84
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$96, %al	#, D.12108
	jle	.L23	#,
	.loc 1 125 0 discriminator 1
	movq	-24(%rbp), %rax	# opname, tmp85
	movzbl	(%rax), %eax	# *opname_4(D), D.12108
	cmpb	$122, %al	#, D.12108
	jg	.L23	#,
.L22:
	.loc 1 126 0 is_stmt 1
	movq	-24(%rbp), %rax	# opname, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L23:
	.loc 1 127 0
	movq	-24(%rbp), %rax	# opname, tmp87
	movq	%rax, %rsi	# tmp87,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L16:
	.loc 1 129 0
	movq	-8(%rbp), %rax	# svp, tmp88
	movq	(%rax), %rax	# *svp_8, D.12104
.L18:
	.loc 1 130 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_op_bitspec, .-get_op_bitspec
	.type	new_opset, @function
new_opset:
.LFB5:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# old_opset, old_opset
	.loc 1 140 0
	cmpq	$0, -24(%rbp)	#, old_opset
	je	.L25	#,
	.loc 1 141 0
	movq	-24(%rbp), %rax	# old_opset, tmp75
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	verify_opset	#
	.loc 1 142 0
	movq	-24(%rbp), %rax	# old_opset, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_newSVsv	#
	movq	%rax, -8(%rbp)	# tmp77, opset
	jmp	.L26	#
.L25:
	.loc 1 145 0
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12113
	movq	%rax, %rdi	# D.12114,
	call	Perl_newSV	#
	movq	%rax, -8(%rbp)	# tmp78, opset
	.loc 1 146 0
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12113
	addq	$1, %rax	#, D.12113
	movq	%rax, %rdx	# D.12113, D.12114
	movq	-8(%rbp), %rax	# opset, tmp79
	movq	(%rax), %rax	# opset_6->sv_any, D.12115
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, D.12116
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12116,
	call	memset	#
	.loc 1 147 0
	movq	-8(%rbp), %rax	# opset, tmp80
	movq	(%rax), %rax	# opset_6->sv_any, D.12115
	movq	my_cxt+16(%rip), %rdx	# my_cxt.x_opset_len, D.12113
	movq	%rdx, 8(%rax)	# D.12114, MEM[(struct XPV *)_12].xpv_cur
	.loc 1 148 0
	movq	-8(%rbp), %rax	# opset, tmp81
	movl	12(%rax), %eax	# opset_6->sv_flags, D.12117
	andl	$1223753727, %eax	#, D.12117
	movl	%eax, %edx	# D.12117, D.12117
	movq	-8(%rbp), %rax	# opset, tmp82
	movl	%edx, 12(%rax)	# D.12117, opset_6->sv_flags
	movq	-8(%rbp), %rax	# opset, tmp83
	movl	12(%rax), %eax	# opset_6->sv_flags, D.12117
	orl	$67371008, %eax	#, D.12117
	movl	%eax, %edx	# D.12117, D.12117
	movq	-8(%rbp), %rax	# opset, tmp84
	movl	%edx, 12(%rax)	# D.12117, opset_6->sv_flags
.L26:
	.loc 1 151 0
	movq	-8(%rbp), %rax	# opset, D.12118
	.loc 1 152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	new_opset, .-new_opset
	.section	.rodata
.LC7:
	.string	"undefined"
.LC8:
	.string	"wrong type"
.LC9:
	.string	"wrong size"
.LC10:
	.string	"Invalid opset: %s"
	.text
	.type	verify_opset, @function
verify_opset:
.LFB6:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# opset, opset
	movl	%esi, -28(%rbp)	# fatal, fatal
	.loc 1 158 0
	movq	$0, -8(%rbp)	#, err
	.loc 1 161 0
	movq	-24(%rbp), %rax	# opset, tmp70
	movl	12(%rax), %eax	# opset_3(D)->sv_flags, D.12119
	andl	$118423552, %eax	#, D.12119
	testl	%eax, %eax	# D.12119
	jne	.L29	#,
	.loc 1 161 0 is_stmt 0 discriminator 1
	movq	$.LC7, -8(%rbp)	#, err
	jmp	.L30	#
.L29:
	.loc 1 162 0 is_stmt 1
	movq	-24(%rbp), %rax	# opset, tmp71
	movl	12(%rax), %eax	# opset_3(D)->sv_flags, D.12119
	andl	$262144, %eax	#, D.12119
	testl	%eax, %eax	# D.12119
	jne	.L31	#,
	.loc 1 162 0 is_stmt 0 discriminator 1
	movq	$.LC8, -8(%rbp)	#, err
	jmp	.L30	#
.L31:
	.loc 1 163 0 is_stmt 1
	movq	-24(%rbp), %rax	# opset, tmp72
	movq	(%rax), %rax	# opset_3(D)->sv_any, D.12120
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_10].xpv_cur, D.12121
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12122
	cmpq	%rax, %rdx	# D.12121, D.12121
	je	.L30	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	$.LC9, -8(%rbp)	#, err
.L30:
	.loc 1 164 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, err
	je	.L32	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, fatal
	je	.L32	#,
	.loc 1 165 0 is_stmt 1
	movq	-8(%rbp), %rax	# err, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L32:
	.loc 1 167 0
	cmpq	$0, -8(%rbp)	#, err
	sete	%al	#, D.12123
	movzbl	%al, %eax	# D.12123, D.12124
	.loc 1 168 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	verify_opset, .-verify_opset
	.section	.rodata
	.align 8
.LC11:
	.string	"panic: opcode \"%s\" value %d is invalid"
.LC12:
	.string	"on"
.LC13:
	.string	"off"
	.align 8
.LC14:
	.string	"set_opset_bits bit %2d (off=%d, bit=%d) %s %s\n"
.LC15:
	.string	"set_opset_bits opset %s %s\n"
	.align 8
.LC16:
	.string	"panic: invalid bitspec for \"%s\" (type %u)"
	.text
	.type	set_opset_bits, @function
set_opset_bits:
.LFB7:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# bitmap, bitmap
	movq	%rsi, -48(%rbp)	# bitspec, bitspec
	movl	%edx, -52(%rbp)	# on, on
	movq	%rcx, -64(%rbp)	# opname, opname
	.loc 1 176 0
	movq	-48(%rbp), %rax	# bitspec, tmp128
	movl	12(%rax), %eax	# bitspec_5(D)->sv_flags, D.12129
	andl	$65536, %eax	#, D.12129
	testl	%eax, %eax	# D.12129
	je	.L35	#,
.LBB3:
	.loc 1 177 0
	movq	-48(%rbp), %rax	# bitspec, tmp129
	movl	12(%rax), %eax	# bitspec_5(D)->sv_flags, D.12129
	andl	$65536, %eax	#, D.12129
	testl	%eax, %eax	# D.12129
	je	.L36	#,
	.loc 1 177 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# bitspec, tmp130
	movq	(%rax), %rax	# bitspec_5(D)->sv_any, D.12130
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_10].xiv_iv, D.12131
	jmp	.L37	#
.L36:
	.loc 1 177 0 discriminator 2
	movq	-48(%rbp), %rax	# bitspec, tmp131
	movq	%rax, %rdi	# tmp131,
	call	Perl_sv_2iv	#
.L37:
	.loc 1 177 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.9, myopcode
	.loc 1 178 0 is_stmt 1 discriminator 3
	movl	-28(%rbp), %eax	# myopcode, tmp135
	sarl	$3, %eax	#, tmp134
	movl	%eax, -24(%rbp)	# tmp134, offset
	.loc 1 179 0 discriminator 3
	movl	-28(%rbp), %eax	# myopcode, tmp139
	andl	$7, %eax	#, tmp138
	movl	%eax, -20(%rbp)	# tmp138, bit
	.loc 1 180 0 discriminator 3
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.10
	cmpl	%eax, -28(%rbp)	# PL_maxo.10, myopcode
	jge	.L38	#,
	.loc 1 180 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, myopcode
	jns	.L39	#,
.L38:
	.loc 1 181 0 is_stmt 1
	movl	-28(%rbp), %edx	# myopcode, tmp140
	movq	-64(%rbp), %rax	# opname, tmp141
	movq	%rax, %rsi	# tmp141,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L39:
	.loc 1 182 0
	movl	my_cxt+24(%rip), %eax	# my_cxt.x_opcode_debug, D.12132
	cmpl	$1, %eax	#, D.12132
	jle	.L40	#,
	.loc 1 183 0
	cmpl	$0, -52(%rbp)	#, on
	je	.L41	#,
	.loc 1 183 0 is_stmt 0 discriminator 1
	movl	$.LC12, %eax	#, iftmp.11
	jmp	.L42	#
.L41:
	.loc 1 183 0 discriminator 2
	movl	$.LC13, %eax	#, iftmp.11
.L42:
	.loc 1 183 0 discriminator 3
	movq	-64(%rbp), %rdi	# opname, tmp142
	movl	-20(%rbp), %ecx	# bit, tmp143
	movl	-24(%rbp), %edx	# offset, tmp144
	movl	-28(%rbp), %esi	# myopcode, tmp145
	movq	%rax, %r9	# iftmp.11,
	movq	%rdi, %r8	# tmp142,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L40:
	.loc 1 185 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, on
	je	.L43	#,
	.loc 1 186 0
	movl	-24(%rbp), %eax	# offset, tmp146
	movslq	%eax, %rdx	# tmp146, D.12133
	movq	-40(%rbp), %rax	# bitmap, tmp147
	addq	%rax, %rdx	# tmp147, D.12134
	movl	-24(%rbp), %eax	# offset, tmp148
	movslq	%eax, %rcx	# tmp148, D.12133
	movq	-40(%rbp), %rax	# bitmap, tmp149
	addq	%rcx, %rax	# D.12133, D.12134
	movzbl	(%rax), %esi	# *_28, D.12135
	movl	-20(%rbp), %eax	# bit, tmp150
	movl	$1, %edi	#, tmp151
	movl	%eax, %ecx	# tmp150, tmp175
	sall	%cl, %edi	# tmp175, D.12132
	movl	%edi, %eax	# D.12132, D.12132
	orl	%esi, %eax	# D.12135, D.12135
	movb	%al, (%rdx)	# D.12135, *_26
	jmp	.L34	#
.L43:
	.loc 1 188 0
	movl	-24(%rbp), %eax	# offset, tmp152
	movslq	%eax, %rdx	# tmp152, D.12133
	movq	-40(%rbp), %rax	# bitmap, tmp153
	addq	%rax, %rdx	# tmp153, D.12134
	movl	-24(%rbp), %eax	# offset, tmp154
	movslq	%eax, %rcx	# tmp154, D.12133
	movq	-40(%rbp), %rax	# bitmap, tmp155
	addq	%rcx, %rax	# D.12133, D.12134
	movzbl	(%rax), %esi	# *_36, D.12135
	movl	-20(%rbp), %eax	# bit, tmp156
	movl	$1, %edi	#, tmp157
	movl	%eax, %ecx	# tmp156, tmp177
	sall	%cl, %edi	# tmp177, D.12132
	movl	%edi, %eax	# D.12132, D.12132
	notl	%eax	# D.12135
	andl	%esi, %eax	# D.12135, D.12135
	movb	%al, (%rdx)	# D.12135, *_34
.LBE3:
	jmp	.L34	#
.L35:
	.loc 1 190 0
	movq	-48(%rbp), %rax	# bitspec, tmp158
	movl	12(%rax), %eax	# bitspec_5(D)->sv_flags, D.12129
	andl	$262144, %eax	#, D.12129
	testl	%eax, %eax	# D.12129
	je	.L46	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# bitspec, tmp159
	movq	(%rax), %rax	# bitspec_5(D)->sv_any, D.12130
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_44].xpv_cur, D.12136
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12131
	cmpq	%rax, %rdx	# D.12136, D.12136
	jne	.L46	#,
.LBB4:
	.loc 1 193 0 is_stmt 1
	movq	-48(%rbp), %rax	# bitspec, tmp160
	movl	12(%rax), %eax	# bitspec_5(D)->sv_flags, D.12129
	andl	$262144, %eax	#, D.12129
	testl	%eax, %eax	# D.12129
	je	.L47	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# bitspec, tmp161
	movq	(%rax), %rax	# bitspec_5(D)->sv_any, D.12130
	movq	8(%rax), %rax	# MEM[(struct XPV *)_50].xpv_cur, len.13
	movq	%rax, -16(%rbp)	# len.13, len
	movq	-48(%rbp), %rax	# bitspec, tmp162
	movq	(%rax), %rax	# bitspec_5(D)->sv_any, D.12130
	movq	(%rax), %rax	# MEM[(struct XPV *)_52].xpv_pv, iftmp.12
	jmp	.L48	#
.L47:
	.loc 1 193 0 discriminator 2
	leaq	-16(%rbp), %rcx	#, tmp163
	movq	-48(%rbp), %rax	# bitspec, tmp164
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp163,
	movq	%rax, %rdi	# tmp164,
	call	Perl_sv_2pv_flags	#
.L48:
	.loc 1 193 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.12, specbits
	.loc 1 194 0 is_stmt 1 discriminator 3
	movl	my_cxt+24(%rip), %eax	# my_cxt.x_opcode_debug, D.12132
	cmpl	$1, %eax	#, D.12132
	jle	.L49	#,
	.loc 1 195 0
	cmpl	$0, -52(%rbp)	#, on
	je	.L50	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	$.LC12, %eax	#, iftmp.14
	jmp	.L51	#
.L50:
	.loc 1 195 0 discriminator 2
	movl	$.LC13, %eax	#, iftmp.14
.L51:
	.loc 1 195 0 discriminator 3
	movq	-64(%rbp), %rcx	# opname, tmp165
	movq	%rax, %rdx	# iftmp.14,
	movq	%rcx, %rsi	# tmp165,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L49:
	.loc 1 196 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, on
	je	.L52	#,
	.loc 1 197 0
	jmp	.L53	#
.L54:
	.loc 1 197 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rdx	# len, len.15
	movq	-40(%rbp), %rax	# bitmap, tmp166
	addq	%rax, %rdx	# tmp166, D.12134
	movq	-16(%rbp), %rcx	# len, len.16
	movq	-40(%rbp), %rax	# bitmap, tmp167
	addq	%rcx, %rax	# len.16, D.12134
	movzbl	(%rax), %ecx	# *_65, D.12135
	movq	-16(%rbp), %rsi	# len, len.17
	movq	-8(%rbp), %rax	# specbits, tmp168
	addq	%rsi, %rax	# len.17, D.12134
	movzbl	(%rax), %eax	# *_68, D.12135
	orl	%ecx, %eax	# D.12135, D.12137
	movb	%al, (%rdx)	# D.12137, *_63
.L53:
	.loc 1 197 0 discriminator 1
	movq	-16(%rbp), %rax	# len, len.18
	leaq	-1(%rax), %rdx	#, len.20
	movq	%rdx, -16(%rbp)	# len.20, len
	testq	%rax, %rax	# len.19
	jne	.L54	#,
.LBE4:
	.loc 1 190 0 is_stmt 1
	jmp	.L34	#
.L52:
.LBB5:
	.loc 1 199 0
	jmp	.L56	#
.L57:
	.loc 1 199 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rdx	# len, len.21
	movq	-40(%rbp), %rax	# bitmap, tmp169
	addq	%rdx, %rax	# len.21, D.12134
	movq	-16(%rbp), %rcx	# len, len.22
	movq	-40(%rbp), %rdx	# bitmap, tmp170
	addq	%rcx, %rdx	# len.22, D.12134
	movzbl	(%rdx), %edx	# *_77, D.12135
	movq	-16(%rbp), %rsi	# len, len.23
	movq	-8(%rbp), %rcx	# specbits, tmp171
	addq	%rsi, %rcx	# len.23, D.12134
	movzbl	(%rcx), %ecx	# *_80, D.12135
	notl	%ecx	# D.12135
	andl	%ecx, %edx	# D.12135, D.12135
	movb	%dl, (%rax)	# D.12135, *_75
.L56:
	.loc 1 199 0 discriminator 1
	movq	-16(%rbp), %rax	# len, len.24
	leaq	-1(%rax), %rdx	#, len.26
	movq	%rdx, -16(%rbp)	# len.26, len
	testq	%rax, %rax	# len.25
	jne	.L57	#,
.LBE5:
	.loc 1 190 0 is_stmt 1 discriminator 1
	jmp	.L34	#
.L46:
	.loc 1 203 0
	movq	-48(%rbp), %rax	# bitspec, tmp172
	movl	12(%rax), %eax	# bitspec_5(D)->sv_flags, D.12129
	.loc 1 202 0
	movzbl	%al, %edx	# D.12129, D.12129
	movq	-64(%rbp), %rax	# opname, tmp173
	movq	%rax, %rsi	# tmp173,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L34:
	.loc 1 204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_opset_bits, .-set_opset_bits
	.section	.rodata
	.align 8
.LC17:
	.string	"Can't add to uninitialised PL_op_mask"
	.text
	.type	opmask_add, @function
opmask_add:
.LFB8:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# opset, opset
	.loc 1 213 0
	movl	$0, -20(%rbp)	#, myopcode
	.loc 1 216 0
	movq	-40(%rbp), %rax	# opset, tmp87
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	verify_opset	#
	.loc 1 218 0
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.27
	testq	%rax, %rax	# PL_op_mask.27
	jne	.L59	#,
	.loc 1 219 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L59:
	.loc 1 223 0
	movq	-40(%rbp), %rax	# opset, tmp88
	movl	12(%rax), %eax	# opset_8(D)->sv_flags, D.12144
	andl	$262144, %eax	#, D.12144
	testl	%eax, %eax	# D.12144
	je	.L60	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# opset, tmp89
	movq	(%rax), %rax	# opset_8(D)->sv_any, D.12145
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, len.29
	movq	%rax, -16(%rbp)	# len.29, len
	movq	-40(%rbp), %rax	# opset, tmp90
	movq	(%rax), %rax	# opset_8(D)->sv_any, D.12145
	movq	(%rax), %rax	# MEM[(struct XPV *)_14].xpv_pv, iftmp.28
	jmp	.L61	#
.L60:
	.loc 1 223 0 discriminator 2
	leaq	-16(%rbp), %rcx	#, tmp91
	movq	-40(%rbp), %rax	# opset, tmp92
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	Perl_sv_2pv_flags	#
.L61:
	.loc 1 223 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.28, bitmask
	.loc 1 224 0 is_stmt 1 discriminator 3
	movl	$0, -28(%rbp)	#, i
	jmp	.L62	#
.L67:
.LBB6:
	.loc 1 225 0
	movl	-28(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, D.12147
	movq	-8(%rbp), %rax	# bitmask, tmp94
	addq	%rdx, %rax	# D.12147, D.12148
	movzbl	(%rax), %eax	# *_22, D.12149
	cbtw
	movw	%ax, -30(%rbp)	# tmp95, bits
	.loc 1 226 0
	cmpw	$0, -30(%rbp)	#, bits
	jne	.L63	#,
	.loc 1 227 0
	addl	$8, -20(%rbp)	#, myopcode
	.loc 1 228 0
	jmp	.L64	#
.L63:
	.loc 1 230 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L65	#
.L66:
	.loc 1 231 0
	movq	PL_op_mask(%rip), %rcx	# PL_op_mask, PL_op_mask.30
	movl	-20(%rbp), %eax	# myopcode, myopcode.31
	leal	1(%rax), %edx	#, tmp96
	movl	%edx, -20(%rbp)	# tmp96, myopcode
	movslq	%eax, %rdx	# myopcode.32, D.12147
	leaq	(%rcx,%rdx), %rsi	#, D.12148
	movq	PL_op_mask(%rip), %rdx	# PL_op_mask, PL_op_mask.33
	cltq
	addq	%rdx, %rax	# PL_op_mask.33, D.12148
	movzbl	(%rax), %edi	# *_36, D.12149
	movzwl	-30(%rbp), %eax	# bits, tmp97
	movl	%eax, %r8d	# tmp97, D.12149
	movl	-24(%rbp), %eax	# j, j.34
	leal	1(%rax), %edx	#, tmp98
	movl	%edx, -24(%rbp)	# tmp98, j
	movl	$1, %edx	#, tmp99
	movl	%eax, %ecx	# j.34, tmp102
	sall	%cl, %edx	# tmp102, D.12150
	movl	%edx, %eax	# D.12150, D.12150
	andl	%r8d, %eax	# D.12149, D.12149
	orl	%edi, %eax	# D.12149, D.12149
	movb	%al, (%rsi)	# D.12149, *_33
.L65:
	.loc 1 230 0 discriminator 1
	cmpl	$7, -24(%rbp)	#, j
	jg	.L64	#,
	.loc 1 230 0 is_stmt 0 discriminator 2
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.35
	cmpl	%eax, -20(%rbp)	# PL_maxo.35, myopcode
	jl	.L66	#,
.L64:
.LBE6:
	.loc 1 224 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L62:
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, D.12146
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12146
	cmpq	%rax, %rdx	# D.12146, D.12146
	jl	.L67	#,
	.loc 1 233 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	opmask_add, .-opmask_add
	.section	.rodata
.LC18:
	.string	"PL_op_mask restored"
	.text
	.type	opmask_addlocal, @function
opmask_addlocal:
.LFB9:
	.loc 1 237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# opset, opset
	movq	%rsi, -32(%rbp)	# op_mask_buf, op_mask_buf
	.loc 1 238 0
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, tmp66
	movq	%rax, -8(%rbp)	# tmp66, orig_op_mask
	.loc 1 241 0
	movl	$PL_op_mask, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 245 0
	movl	my_cxt+24(%rip), %eax	# my_cxt.x_opcode_debug, D.12152
	cmpl	$1, %eax	#, D.12152
	jle	.L69	#,
	.loc 1 246 0
	movl	$.LC18, %esi	#,
	movl	$Perl_warn, %edi	#,
	call	Perl_save_destructor	#
.L69:
	.loc 1 247 0
	movq	-32(%rbp), %rax	# op_mask_buf, tmp67
	movq	%rax, PL_op_mask(%rip)	# tmp67, PL_op_mask
	.loc 1 248 0
	cmpq	$0, -8(%rbp)	#, orig_op_mask
	je	.L70	#,
	.loc 1 249 0
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.36
	movslq	%eax, %rdx	# PL_maxo.36, D.12153
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.37
	movq	-8(%rbp), %rcx	# orig_op_mask, tmp68
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_op_mask.37,
	call	memcpy	#
	jmp	.L71	#
.L70:
	.loc 1 251 0
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.38
	movslq	%eax, %rdx	# PL_maxo.38, D.12153
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.39
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_op_mask.39,
	call	memset	#
.L71:
	.loc 1 252 0
	movq	-24(%rbp), %rax	# opset, tmp69
	movq	%rax, %rdi	# tmp69,
	call	opmask_add	#
	.loc 1 253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	opmask_addlocal, .-opmask_addlocal
	.section	.rodata
	.align 8
.LC19:
	.string	"Usage: Opcode::_safe_pkg_prep(Package)"
.LC20:
	.string	"main"
.LC21:
	.string	"_"
	.text
	.globl	XS_Opcode__safe_pkg_prep
	.type	XS_Opcode__safe_pkg_prep, @function
XS_Opcode__safe_pkg_prep:
.LFB10:
	.loc 1 260 0
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
	.loc 1 261 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.40
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.41
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.43
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.43, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.42_5, D.12155
	cltq
	salq	$3, %rax	#, D.12156
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.44
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.45
	subq	%rax, %rdx	# PL_stack_base.46, D.12157
	movq	%rdx, %rax	# D.12157, D.12157
	sarq	$3, %rax	#, tmp117
	addl	$1, %eax	#, D.12158
	movl	%eax, -40(%rbp)	# D.12158, ax
	movq	%rbx, %rdx	# sp, sp.47
	movq	%r12, %rax	# mark, mark.48
	subq	%rax, %rdx	# mark.48, D.12157
	movq	%rdx, %rax	# D.12157, D.12157
	sarq	$3, %rax	#, tmp118
	movl	%eax, -36(%rbp)	# D.12157, items
	.loc 1 262 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L73	#,
	.loc 1 263 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L73:
	.loc 1 264 0
	movl	-36(%rbp), %eax	# items, tmp119
	cltq
	salq	$3, %rax	#, D.12156
	negq	%rax	# D.12159
	addq	%rax, %rbx	# D.12159, sp
.LBB7:
	.loc 1 266 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.50
	movl	-40(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.12156
	salq	$3, %rdx	#, D.12156
	addq	%rdx, %rax	# D.12156, D.12160
	movq	(%rax), %rax	# *_31, D.12161
	movl	12(%rax), %eax	# _32->sv_flags, D.12162
	andl	$262144, %eax	#, D.12162
	testl	%eax, %eax	# D.12162
	je	.L74	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.51
	movl	-40(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.12156
	salq	$3, %rdx	#, D.12156
	addq	%rdx, %rax	# D.12156, D.12160
	movq	(%rax), %rax	# *_38, D.12161
	movq	(%rax), %rax	# _39->sv_any, D.12163
	movq	(%rax), %rax	# MEM[(struct XPV *)_40].xpv_pv, iftmp.49
	jmp	.L75	#
.L74:
	.loc 1 266 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.52
	movl	-40(%rbp), %edx	# ax, tmp122
	movslq	%edx, %rdx	# tmp122, D.12156
	salq	$3, %rdx	#, D.12156
	addq	%rdx, %rax	# D.12156, D.12160
	movq	(%rax), %rax	# *_45, D.12161
	movq	%rax, %rdi	# D.12161,
	call	Perl_sv_2pv_nolen	#
.L75:
	.loc 1 266 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.49, Package
	.loc 1 269 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 271 0 discriminator 3
	movq	-32(%rbp), %rax	# Package, tmp123
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp124, hv
	.loc 1 273 0 discriminator 3
	movq	-24(%rbp), %rax	# hv, tmp125
	movq	(%rax), %rax	# hv_49->sv_any, D.12164
	movq	80(%rax), %rax	# _50->xhv_name, D.12165
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# D.12165,
	call	strcmp	#
	testl	%eax, %eax	# D.12155
	je	.L76	#,
	.loc 1 274 0
	movq	-24(%rbp), %rax	# hv, tmp126
	movq	(%rax), %rax	# hv_49->sv_any, D.12164
	movq	80(%rax), %rax	# _53->xhv_name, D.12165
	movq	%rax, %rdi	# D.12165,
	call	Perl_safesysfree	#
	.loc 1 275 0
	movq	-24(%rbp), %rax	# hv, tmp127
	movq	(%rax), %r12	# hv_49->sv_any, D.12164
	movl	$.LC20, %edi	#,
	call	Perl_savepv	#
	movq	%rax, 80(%r12)	# D.12165, _55->xhv_name
	.loc 1 276 0
	movq	PL_defgv(%rip), %rdx	# PL_defgv, PL_defgv.53
	movq	-24(%rbp), %rax	# hv, tmp128
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# PL_defgv.53,
	movl	$1, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	Perl_hv_store	#
	.loc 1 277 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.54
	movq	%rax, PL_Sv(%rip)	# PL_defgv.54, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.56
	testq	%rax, %rax	# PL_Sv.56
	je	.L76	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.57
	movl	8(%rax), %edx	# PL_Sv.57_60->sv_refcnt, D.12162
	addl	$1, %edx	#, D.12162
	movl	%edx, 8(%rax)	# D.12162, PL_Sv.57_60->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.57_60->sv_refcnt, D.12162
	testl	%eax, %eax	# D.12162
	je	.L76	#,
	.loc 1 277 0
	nop
.L76:
	.loc 1 279 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 281 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 282 0
	nop
.LBE7:
	.loc 1 284 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	XS_Opcode__safe_pkg_prep, .-XS_Opcode__safe_pkg_prep
	.section	.rodata
	.align 8
.LC22:
	.string	"Usage: Opcode::_safe_call_sv(Package, mask, codesv)"
.LC23:
	.string	"main::"
.LC24:
	.string	"INC"
	.text
	.globl	XS_Opcode__safe_call_sv
	.type	XS_Opcode__safe_call_sv, @function
XS_Opcode__safe_call_sv:
.LFB11:
	.loc 1 288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$528, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -536(%rbp)	# cv, cv
	.loc 1 288 0
	movq	%fs:40, %rax	#, tmp189
	movq	%rax, -24(%rbp)	# tmp189, D.12185
	xorl	%eax, %eax	# tmp189
	.loc 1 289 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.58
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.59
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.61
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.61, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.60_7, D.12169
	cltq
	salq	$3, %rax	#, D.12170
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.62
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.63
	subq	%rax, %rdx	# PL_stack_base.64, D.12171
	movq	%rdx, %rax	# D.12171, D.12171
	sarq	$3, %rax	#, tmp169
	addl	$1, %eax	#, D.12172
	movl	%eax, -528(%rbp)	# D.12172, ax
	movq	%rbx, %rdx	# sp, sp.65
	movq	%r12, %rax	# mark, mark.66
	subq	%rax, %rdx	# mark.66, D.12171
	movq	%rdx, %rax	# D.12171, D.12171
	sarq	$3, %rax	#, tmp170
	movl	%eax, -524(%rbp)	# D.12171, items
	.loc 1 290 0
	cmpl	$3, -524(%rbp)	#, items
	je	.L80	#,
	.loc 1 291 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L80:
	.loc 1 292 0
	movl	-524(%rbp), %eax	# items, tmp171
	cltq
	salq	$3, %rax	#, D.12170
	negq	%rax	# D.12173
	addq	%rax, %rbx	# D.12173, sp
.LBB8:
	.loc 1 294 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.68
	movl	-528(%rbp), %edx	# ax, tmp172
	movslq	%edx, %rdx	# tmp172, D.12170
	salq	$3, %rdx	#, D.12170
	addq	%rdx, %rax	# D.12170, D.12174
	movq	(%rax), %rax	# *_33, D.12175
	movl	12(%rax), %eax	# _34->sv_flags, D.12176
	andl	$262144, %eax	#, D.12176
	testl	%eax, %eax	# D.12176
	je	.L81	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.69
	movl	-528(%rbp), %edx	# ax, tmp173
	movslq	%edx, %rdx	# tmp173, D.12170
	salq	$3, %rdx	#, D.12170
	addq	%rdx, %rax	# D.12170, D.12174
	movq	(%rax), %rax	# *_40, D.12175
	movq	(%rax), %rax	# _41->sv_any, D.12177
	movq	(%rax), %rax	# MEM[(struct XPV *)_42].xpv_pv, iftmp.67
	jmp	.L82	#
.L81:
	.loc 1 294 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.70
	movl	-528(%rbp), %edx	# ax, tmp174
	movslq	%edx, %rdx	# tmp174, D.12170
	salq	$3, %rdx	#, D.12170
	addq	%rdx, %rax	# D.12170, D.12174
	movq	(%rax), %rax	# *_47, D.12175
	movq	%rax, %rdi	# D.12175,
	call	Perl_sv_2pv_nolen	#
.L82:
	.loc 1 294 0 discriminator 3
	movq	%rax, -520(%rbp)	# iftmp.67, Package
	.loc 1 295 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.71
	movl	-528(%rbp), %edx	# ax, tmp175
	movslq	%edx, %rdx	# tmp175, D.12173
	addq	$1, %rdx	#, D.12173
	salq	$3, %rdx	#, D.12173
	addq	%rdx, %rax	# D.12173, D.12174
	movq	(%rax), %rax	# *_55, tmp176
	movq	%rax, -512(%rbp)	# tmp176, mask
	.loc 1 296 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	movl	-528(%rbp), %edx	# ax, tmp177
	movslq	%edx, %rdx	# tmp177, D.12173
	addq	$2, %rdx	#, D.12173
	salq	$3, %rdx	#, D.12173
	addq	%rdx, %rax	# D.12173, D.12174
	movq	(%rax), %rax	# *_61, tmp178
	movq	%rax, -504(%rbp)	# tmp178, codesv
	.loc 1 302 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 304 0 discriminator 3
	leaq	-480(%rbp), %rdx	#, tmp179
	movq	-512(%rbp), %rax	# mask, tmp180
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	opmask_addlocal	#
	.loc 1 306 0 discriminator 3
	movl	$PL_endav, %edi	#,
	call	Perl_save_aptr	#
	.loc 1 307 0 discriminator 3
	call	Perl_newAV	#
	movq	%rax, %rdi	# D.12178,
	call	Perl_sv_2mortal	#
	movq	%rax, PL_endav(%rip)	# PL_endav.73, PL_endav
	.loc 1 309 0 discriminator 3
	movl	$PL_defstash, %edi	#,
	call	Perl_save_hptr	#
	.loc 1 311 0 discriminator 3
	movq	-520(%rbp), %rax	# Package, tmp181
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp181,
	call	Perl_gv_stashpv	#
	movq	%rax, PL_defstash(%rip)	# PL_defstash.74, PL_defstash
	.loc 1 313 0 discriminator 3
	movl	$PL_curstash, %edi	#,
	call	Perl_save_hptr	#
	.loc 1 314 0 discriminator 3
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.75
	movq	%rax, PL_curstash(%rip)	# PL_defstash.75, PL_curstash
	.loc 1 319 0 discriminator 3
	movl	$11, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC23, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -496(%rbp)	# tmp182, gv
	.loc 1 320 0 discriminator 3
	movq	-496(%rbp), %rax	# gv, tmp183
	movq	(%rax), %rax	# gv_67->sv_any, D.12179
	movq	56(%rax), %rax	# _68->xgv_gp, D.12180
	movq	40(%rax), %rax	# _69->gp_hv, D.12181
	movq	%rax, %rdi	# D.12181,
	call	Perl_sv_free	#
	.loc 1 321 0 discriminator 3
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.76
	movq	%rax, PL_Sv(%rip)	# PL_defstash.76, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.78
	testq	%rax, %rax	# PL_Sv.78
	je	.L84	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.79
	movl	8(%rax), %edx	# PL_Sv.79_73->sv_refcnt, D.12176
	addl	$1, %edx	#, D.12176
	movl	%edx, 8(%rax)	# D.12176, PL_Sv.79_73->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.79_73->sv_refcnt, D.12176
	testl	%eax, %eax	# D.12176
	je	.L84	#,
	.loc 1 321 0
	nop
.L84:
	.loc 1 321 0 discriminator 4
	movq	-496(%rbp), %rax	# gv, tmp184
	movq	(%rax), %rax	# gv_67->sv_any, D.12179
	movq	56(%rax), %rax	# _79->xgv_gp, D.12180
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.80
	movq	%rdx, 40(%rax)	# PL_Sv.80, _80->gp_hv
	.loc 1 324 0 is_stmt 1 discriminator 4
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.81
	movq	%rax, %rdi	# PL_incgv.81,
	call	Perl_save_hash	#
	movq	%rax, -488(%rbp)	# tmp185, dummy_hv
	.loc 1 325 0 discriminator 4
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC24, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.12182,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _85->sv_any, D.12179
	movq	56(%rax), %rax	# _86->xgv_gp, D.12180
	movq	40(%rax), %rax	# _87->gp_hv, PL_Sv.82
	movq	%rax, PL_Sv(%rip)	# PL_Sv.82, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.84
	testq	%rax, %rax	# PL_Sv.84
	je	.L86	#,
	.loc 1 325 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.85
	movl	8(%rax), %edx	# PL_Sv.85_90->sv_refcnt, D.12176
	addl	$1, %edx	#, D.12176
	movl	%edx, 8(%rax)	# D.12176, PL_Sv.85_90->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.85_90->sv_refcnt, D.12176
	testl	%eax, %eax	# D.12176
	je	.L86	#,
	.loc 1 325 0
	nop
.L86:
	.loc 1 325 0 discriminator 4
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.86
	movq	(%rax), %rax	# PL_incgv.86_96->sv_any, D.12179
	movq	56(%rax), %rax	# _97->xgv_gp, D.12180
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.87
	movq	%rdx, 40(%rax)	# PL_Sv.87, _98->gp_hv
.LBB9:
	.loc 1 327 0 is_stmt 1 discriminator 4
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.88
	addq	$4, %rax	#, PL_markstack_ptr.89
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.89, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.90
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.91
	cmpq	%rax, %rdx	# PL_markstack_max.91, PL_markstack_ptr.90
	jne	.L87	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L87:
	.loc 1 327 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.92
	movq	%rbx, %rcx	# sp, sp.93
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.94
	subq	%rdx, %rcx	# PL_stack_base.95, D.12171
	movq	%rcx, %rdx	# D.12171, D.12171
	sarq	$3, %rdx	#, tmp186
	movl	%edx, (%rax)	# D.12169, *PL_markstack_ptr.92_104
.LBE9:
	.loc 1 328 0 is_stmt 1 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.97
	movzbl	36(%rax), %eax	# PL_op.97_112->op_flags, D.12184
	movzbl	%al, %eax	# D.12184, D.12169
	andl	$3, %eax	#, D.12169
	testl	%eax, %eax	# D.12169
	je	.L88	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.99
	movzbl	36(%rax), %eax	# PL_op.99_116->op_flags, D.12184
	movzbl	%al, %eax	# D.12184, D.12169
	andl	$3, %eax	#, D.12169
	cmpl	$3, %eax	#, D.12169
	jne	.L89	#,
	movl	$21, %eax	#, iftmp.98
	jmp	.L91	#
.L89:
	.loc 1 328 0 discriminator 2
	movl	$20, %eax	#, iftmp.98
	jmp	.L91	#
.L88:
	call	Perl_dowantarray	#
	orl	$20, %eax	#, iftmp.96
.L91:
	.loc 1 328 0 discriminator 3
	movq	-504(%rbp), %rdx	# codesv, tmp187
	movl	%eax, %esi	# iftmp.96,
	movq	%rdx, %rdi	# tmp187,
	call	Perl_call_sv	#
	.loc 1 329 0 is_stmt 1 discriminator 3
	movq	-488(%rbp), %rax	# dummy_hv, tmp188
	movq	%rax, %rdi	# tmp188,
	call	Perl_sv_free	#
	.loc 1 330 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 331 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 333 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 334 0 discriminator 3
	nop
.LBE8:
	.loc 1 336 0 discriminator 3
	movq	-24(%rbp), %rax	# D.12185, tmp190
	xorq	%fs:40, %rax	#, tmp190
	je	.L93	#,
	.loc 1 336 0 is_stmt 0
	call	__stack_chk_fail	#
.L93:
	addq	$528, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	XS_Opcode__safe_call_sv, .-XS_Opcode__safe_call_sv
	.section	.rodata
	.align 8
.LC25:
	.string	"Usage: Opcode::verify_opset(opset, fatal = 0)"
	.text
	.globl	XS_Opcode_verify_opset
	.type	XS_Opcode_verify_opset, @function
XS_Opcode_verify_opset:
.LFB12:
	.loc 1 340 0 is_stmt 1
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
	.loc 1 341 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.100
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.101
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.103
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.103, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.102_7, D.12191
	cltq
	salq	$3, %rax	#, D.12192
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.104
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.105
	subq	%rax, %rdx	# PL_stack_base.106, D.12193
	movq	%rdx, %rax	# D.12193, D.12193
	sarq	$3, %rax	#, tmp132
	addl	$1, %eax	#, D.12194
	movl	%eax, -52(%rbp)	# D.12194, ax
	movq	%rbx, %rdx	# sp, sp.107
	movq	%r12, %rax	# mark, mark.108
	subq	%rax, %rdx	# mark.108, D.12193
	movq	%rdx, %rax	# D.12193, D.12193
	sarq	$3, %rax	#, tmp133
	movl	%eax, -48(%rbp)	# D.12193, items
	.loc 1 342 0
	cmpl	$0, -48(%rbp)	#, items
	jle	.L95	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	cmpl	$2, -48(%rbp)	#, items
	jle	.L96	#,
.L95:
	.loc 1 343 0 is_stmt 1
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L96:
.LBB10:
	.loc 1 345 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.109
	movl	-52(%rbp), %edx	# ax, tmp134
	movslq	%edx, %rdx	# tmp134, D.12192
	salq	$3, %rdx	#, D.12192
	addq	%rdx, %rax	# D.12192, D.12195
	movq	(%rax), %rax	# *_29, tmp135
	movq	%rax, -40(%rbp)	# tmp135, opset
	.loc 1 348 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.111
	movzbl	37(%rax), %eax	# PL_op.111_31->op_private, D.12196
	movzbl	%al, %eax	# D.12196, D.12191
	andl	$32, %eax	#, D.12191
	testl	%eax, %eax	# D.12191
	je	.L97	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.112
	movq	PL_op(%rip), %rax	# PL_op, PL_op.113
	movq	24(%rax), %rax	# PL_op.113_36->op_targ, D.12192
	salq	$3, %rax	#, D.12192
	addq	%rdx, %rax	# PL_curpad.112, D.12195
	movq	(%rax), %rax	# *_39, iftmp.110
	jmp	.L98	#
.L97:
	.loc 1 348 0 discriminator 2
	call	Perl_sv_newmortal	#
.L98:
	.loc 1 348 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.110, targ
	.loc 1 350 0 is_stmt 1 discriminator 3
	cmpl	$1, -48(%rbp)	#, items
	jg	.L99	#,
	.loc 1 351 0
	movl	$0, -56(%rbp)	#, fatal
	jmp	.L100	#
.L99:
	.loc 1 353 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.115
	movl	-52(%rbp), %edx	# ax, tmp136
	movslq	%edx, %rdx	# tmp136, D.12197
	addq	$1, %rdx	#, D.12197
	salq	$3, %rdx	#, D.12197
	addq	%rdx, %rax	# D.12197, D.12195
	movq	(%rax), %rax	# *_48, D.12198
	movl	12(%rax), %eax	# _49->sv_flags, D.12199
	andl	$65536, %eax	#, D.12199
	testl	%eax, %eax	# D.12199
	je	.L101	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.116
	movl	-52(%rbp), %edx	# ax, tmp137
	movslq	%edx, %rdx	# tmp137, D.12197
	addq	$1, %rdx	#, D.12197
	salq	$3, %rdx	#, D.12197
	addq	%rdx, %rax	# D.12197, D.12195
	movq	(%rax), %rax	# *_56, D.12198
	movq	(%rax), %rax	# _57->sv_any, D.12200
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_58].xiv_iv, D.12193
	jmp	.L102	#
.L101:
	.loc 1 353 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.117
	movl	-52(%rbp), %edx	# ax, tmp138
	movslq	%edx, %rdx	# tmp138, D.12197
	addq	$1, %rdx	#, D.12197
	salq	$3, %rdx	#, D.12197
	addq	%rdx, %rax	# D.12197, D.12195
	movq	(%rax), %rax	# *_65, D.12198
	movq	%rax, %rdi	# D.12198,
	call	Perl_sv_2iv	#
.L102:
	.loc 1 353 0 discriminator 3
	movl	%eax, -56(%rbp)	# iftmp.114, fatal
.L100:
	.loc 1 356 0 is_stmt 1
	movl	-56(%rbp), %edx	# fatal, tmp139
	movq	-40(%rbp), %rax	# opset, tmp140
	movl	%edx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	verify_opset	#
	movl	%eax, -44(%rbp)	# tmp141, RETVAL
	.loc 1 358 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.118
	movl	-52(%rbp), %edx	# ax, tmp142
	movslq	%edx, %rdx	# tmp142, D.12192
	salq	$3, %rdx	#, D.12192
	subq	$8, %rdx	#, D.12197
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB11:
	movl	-44(%rbp), %eax	# RETVAL, tmp143
	movslq	%eax, %rdx	# tmp143, D.12193
	movq	-32(%rbp), %rax	# targ, tmp144
	movq	%rdx, %rsi	# D.12193,
	movq	%rax, %rdi	# tmp144,
	call	Perl_sv_setiv	#
.LBB12:
	movq	-32(%rbp), %rax	# targ, tmp145
	movl	12(%rax), %eax	# targ_42->sv_flags, D.12199
	andl	$16384, %eax	#, D.12199
	testl	%eax, %eax	# D.12199
	je	.L103	#,
	.loc 1 358 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp146
	movq	%rax, %rdi	# tmp146,
	call	Perl_mg_set	#
.L103:
	.loc 1 358 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp147
	movq	%rax, (%rbx)	# tmp147, *sp_79
.LBE12:
.LBE11:
.LBE10:
.LBB13:
	.loc 1 360 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.119
	movl	-52(%rbp), %edx	# ax, tmp148
	movslq	%edx, %rcx	# tmp148, D.12197
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.120
	addq	%rcx, %rdx	# D.12197, D.12197
	salq	$3, %rdx	#, D.12197
	subq	$8, %rdx	#, D.12197
	addq	%rdx, %rax	# D.12197, PL_stack_sp.121
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.121, PL_stack_sp
	nop
.LBE13:
	.loc 1 361 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	XS_Opcode_verify_opset, .-XS_Opcode_verify_opset
	.section	.rodata
	.align 8
.LC26:
	.string	"Usage: Opcode::invert_opset(opset)"
	.text
	.globl	XS_Opcode_invert_opset
	.type	XS_Opcode_invert_opset, @function
XS_Opcode_invert_opset:
.LFB13:
	.loc 1 365 0
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
	.loc 1 366 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.122
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.123
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.125
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.125, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.124_5, D.12202
	cltq
	salq	$3, %rax	#, D.12203
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.126
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.127
	subq	%rax, %rdx	# PL_stack_base.128, D.12204
	movq	%rdx, %rax	# D.12204, D.12204
	sarq	$3, %rax	#, tmp119
	addl	$1, %eax	#, D.12205
	movl	%eax, -56(%rbp)	# D.12205, ax
	movq	%r12, %rdx	# sp, sp.129
	movq	%rbx, %rax	# mark, mark.130
	subq	%rax, %rdx	# mark.130, D.12204
	movq	%rdx, %rax	# D.12204, D.12204
	sarq	$3, %rax	#, tmp120
	movl	%eax, -52(%rbp)	# D.12204, items
	.loc 1 367 0
	cmpl	$1, -52(%rbp)	#, items
	je	.L106	#,
	.loc 1 368 0
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L106:
.LBB14:
	.loc 1 370 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.131
	movl	-56(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.12203
	salq	$3, %rdx	#, D.12203
	addq	%rdx, %rax	# D.12203, D.12206
	movq	(%rax), %rax	# *_27, tmp122
	movq	%rax, -40(%rbp)	# tmp122, opset
.LBB15:
	.loc 1 375 0
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12204
	movq	%rax, -48(%rbp)	# D.12204, len
	.loc 1 377 0
	movq	-40(%rbp), %rax	# opset, tmp123
	movq	%rax, %rdi	# tmp123,
	call	new_opset	#
	movq	%rax, %rdi	# D.12207,
	call	Perl_sv_2mortal	#
	movq	%rax, -40(%rbp)	# tmp124, opset
	.loc 1 378 0
	movq	-40(%rbp), %rax	# opset, tmp125
	movq	(%rax), %rax	# opset_32->sv_any, D.12208
	movq	(%rax), %rax	# MEM[(struct XPV *)_33].xpv_pv, tmp126
	movq	%rax, -32(%rbp)	# tmp126, bitmap
	.loc 1 379 0
	jmp	.L107	#
.L108:
	.loc 1 380 0
	movq	-48(%rbp), %rax	# len, tmp127
	movq	-32(%rbp), %rdx	# bitmap, tmp128
	addq	%rdx, %rax	# tmp128, D.12209
	movq	-48(%rbp), %rdx	# len, tmp129
	movq	-32(%rbp), %rcx	# bitmap, tmp130
	addq	%rcx, %rdx	# tmp130, D.12209
	movzbl	(%rdx), %edx	# *_38, D.12210
	notl	%edx	# D.12210
	movb	%dl, (%rax)	# D.12210, *_37
.L107:
	.loc 1 379 0 discriminator 1
	movq	-48(%rbp), %rax	# len, len.132
	leaq	-1(%rax), %rdx	#, tmp131
	movq	%rdx, -48(%rbp)	# tmp131, len
	testq	%rax, %rax	# len.132
	jne	.L108	#,
	.loc 1 382 0
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.133
	andl	$7, %eax	#, D.12202
	testl	%eax, %eax	# D.12202
	je	.L109	#,
	.loc 1 383 0
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12204
	leaq	-1(%rax), %rdx	#, D.12211
	movq	-32(%rbp), %rax	# bitmap, tmp132
	addq	%rdx, %rax	# D.12211, D.12209
	movq	my_cxt+16(%rip), %rdx	# my_cxt.x_opset_len, D.12204
	leaq	-1(%rdx), %rcx	#, D.12211
	movq	-32(%rbp), %rdx	# bitmap, tmp133
	addq	%rcx, %rdx	# D.12211, D.12209
	movzbl	(%rdx), %edx	# *_50, D.12210
	movl	PL_maxo(%rip), %ecx	# PL_maxo, PL_maxo.134
	andl	$7, %ecx	#, D.12202
	movl	$255, %esi	#, tmp134
	sall	%cl, %esi	# D.12202, D.12202
	movl	%esi, %ecx	# D.12202, D.12202
	notl	%ecx	# D.12210
	andl	%ecx, %edx	# D.12210, D.12210
	movb	%dl, (%rax)	# D.12210, *_46
.L109:
.LBE15:
	.loc 1 385 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.135
	movl	-56(%rbp), %edx	# ax, tmp135
	movslq	%edx, %rdx	# tmp135, D.12203
	salq	$3, %rdx	#, D.12203
	addq	%rax, %rdx	# PL_stack_base.135, D.12206
	movq	-40(%rbp), %rax	# opset, tmp136
	movq	%rax, (%rdx)	# tmp136, *_61
.LBE14:
.LBB16:
	.loc 1 388 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.136
	movl	-56(%rbp), %edx	# ax, tmp137
	movslq	%edx, %rcx	# tmp137, D.12211
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.137
	addq	%rcx, %rdx	# D.12211, D.12211
	salq	$3, %rdx	#, D.12211
	subq	$8, %rdx	#, D.12211
	addq	%rdx, %rax	# D.12211, PL_stack_sp.138
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.138, PL_stack_sp
	nop
.LBE16:
	.loc 1 389 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	XS_Opcode_invert_opset, .-XS_Opcode_invert_opset
	.section	.rodata
	.align 8
.LC27:
	.string	"Usage: Opcode::opset_to_ops(opset, desc = 0)"
	.text
	.globl	XS_Opcode_opset_to_ops
	.type	XS_Opcode_opset_to_ops, @function
XS_Opcode_opset_to_ops:
.LFB14:
	.loc 1 393 0
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
	.loc 1 394 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.139
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.140
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.142
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.142, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.141_16, D.12213
	cltq
	salq	$3, %rax	#, D.12214
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.143
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.144
	subq	%rax, %rdx	# PL_stack_base.145, D.12215
	movq	%rdx, %rax	# D.12215, D.12215
	sarq	$3, %rax	#, tmp137
	addl	$1, %eax	#, D.12216
	movl	%eax, -56(%rbp)	# D.12216, ax
	movq	%rbx, %rdx	# sp, sp.146
	movq	%r12, %rax	# mark, mark.147
	subq	%rax, %rdx	# mark.147, D.12215
	movq	%rdx, %rax	# D.12215, D.12215
	sarq	$3, %rax	#, tmp138
	movl	%eax, -52(%rbp)	# D.12215, items
	.loc 1 395 0
	cmpl	$0, -52(%rbp)	#, items
	jle	.L112	#,
	.loc 1 395 0 is_stmt 0 discriminator 1
	cmpl	$2, -52(%rbp)	#, items
	jle	.L113	#,
.L112:
	.loc 1 396 0 is_stmt 1
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L113:
	.loc 1 397 0
	movl	-52(%rbp), %eax	# items, tmp139
	cltq
	salq	$3, %rax	#, D.12214
	negq	%rax	# D.12217
	addq	%rax, %rbx	# D.12217, sp
.LBB17:
	.loc 1 399 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.148
	movl	-56(%rbp), %edx	# ax, tmp140
	movslq	%edx, %rdx	# tmp140, D.12214
	salq	$3, %rdx	#, D.12214
	addq	%rdx, %rax	# D.12214, D.12218
	movq	(%rax), %rax	# *_42, tmp141
	movq	%rax, -40(%rbp)	# tmp141, opset
	.loc 1 402 0
	cmpl	$1, -52(%rbp)	#, items
	jg	.L114	#,
	.loc 1 403 0
	movl	$0, -72(%rbp)	#, desc
	jmp	.L115	#
.L114:
	.loc 1 405 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.150
	movl	-56(%rbp), %edx	# ax, tmp142
	movslq	%edx, %rdx	# tmp142, D.12217
	addq	$1, %rdx	#, D.12217
	salq	$3, %rdx	#, D.12217
	addq	%rdx, %rax	# D.12217, D.12218
	movq	(%rax), %rax	# *_49, D.12219
	movl	12(%rax), %eax	# _50->sv_flags, D.12220
	andl	$65536, %eax	#, D.12220
	testl	%eax, %eax	# D.12220
	je	.L116	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.151
	movl	-56(%rbp), %edx	# ax, tmp143
	movslq	%edx, %rdx	# tmp143, D.12217
	addq	$1, %rdx	#, D.12217
	salq	$3, %rdx	#, D.12217
	addq	%rdx, %rax	# D.12217, D.12218
	movq	(%rax), %rax	# *_57, D.12219
	movq	(%rax), %rax	# _58->sv_any, D.12221
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_59].xiv_iv, D.12215
	jmp	.L117	#
.L116:
	.loc 1 405 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.152
	movl	-56(%rbp), %edx	# ax, tmp144
	movslq	%edx, %rdx	# tmp144, D.12217
	addq	$1, %rdx	#, D.12217
	salq	$3, %rdx	#, D.12217
	addq	%rdx, %rax	# D.12217, D.12218
	movq	(%rax), %rax	# *_66, D.12219
	movq	%rax, %rdi	# D.12219,
	call	Perl_sv_2iv	#
.L117:
	.loc 1 405 0 discriminator 3
	movl	%eax, -72(%rbp)	# iftmp.149, desc
.L115:
.LBB18:
	.loc 1 411 0 is_stmt 1
	movq	-40(%rbp), %rax	# opset, tmp145
	movl	12(%rax), %eax	# opset_43->sv_flags, D.12220
	andl	$262144, %eax	#, D.12220
	testl	%eax, %eax	# D.12220
	je	.L118	#,
	.loc 1 411 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# opset, tmp146
	movq	(%rax), %rax	# opset_43->sv_any, D.12221
	movq	8(%rax), %rax	# MEM[(struct XPV *)_73].xpv_cur, len.154
	movq	%rax, -48(%rbp)	# len.154, len
	movq	-40(%rbp), %rax	# opset, tmp147
	movq	(%rax), %rax	# opset_43->sv_any, D.12221
	movq	(%rax), %rax	# MEM[(struct XPV *)_75].xpv_pv, iftmp.153
	jmp	.L119	#
.L118:
	.loc 1 411 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp148
	movq	-40(%rbp), %rax	# opset, tmp149
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	Perl_sv_2pv_flags	#
.L119:
	.loc 1 411 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.153, bitmap
	.loc 1 412 0 is_stmt 1 discriminator 3
	cmpl	$0, -72(%rbp)	#, desc
	je	.L120	#,
	.loc 1 412 0 is_stmt 0 discriminator 1
	call	Perl_get_op_descs	#
	jmp	.L121	#
.L120:
	.loc 1 412 0 discriminator 2
	call	Perl_get_op_names	#
.L121:
	.loc 1 412 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.155, names
	.loc 1 415 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# opset, tmp150
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	verify_opset	#
	.loc 1 416 0 discriminator 3
	movl	$0, -60(%rbp)	#, myopcode
	movl	$0, -68(%rbp)	#, i
	jmp	.L122	#
.L128:
.LBB19:
	.loc 1 417 0
	movl	-68(%rbp), %eax	# i, tmp151
	movslq	%eax, %rdx	# tmp151, D.12217
	movq	-32(%rbp), %rax	# bitmap, tmp152
	addq	%rdx, %rax	# D.12217, D.12222
	movzbl	(%rax), %eax	# *_87, D.12223
	cbtw
	movw	%ax, -74(%rbp)	# tmp153, bits
	.loc 1 418 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L123	#
.L127:
	.loc 1 419 0
	movzwl	-74(%rbp), %edx	# bits, D.12213
	movl	-64(%rbp), %eax	# j, tmp154
	movl	%eax, %ecx	# tmp154, tmp161
	sarl	%cl, %edx	# tmp161, D.12213
	movl	%edx, %eax	# D.12213, D.12213
	andl	$1, %eax	#, D.12213
	testl	%eax, %eax	# D.12213
	je	.L124	#,
.LBB20:
	.loc 1 420 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.156
	movq	%rax, %rdx	# PL_stack_max.156, PL_stack_max.157
	movq	%rbx, %rax	# sp, sp.158
	subq	%rax, %rdx	# sp.158, D.12215
	movq	%rdx, %rax	# D.12215, D.12215
	cmpq	$7, %rax	#, D.12215
	jg	.L125	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L125:
	.loc 1 420 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-60(%rbp), %eax	# myopcode, tmp155
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12214
	movq	-24(%rbp), %rax	# names, tmp156
	addq	%rdx, %rax	# D.12214, D.12224
	movq	(%rax), %rax	# *_103, D.12222
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12222,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.12219,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12219, *sp_100
.L124:
.LBE20:
	.loc 1 418 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
	addl	$1, -60(%rbp)	#, myopcode
.L123:
	.loc 1 418 0 is_stmt 0 discriminator 1
	cmpl	$7, -64(%rbp)	#, j
	jg	.L126	#,
	.loc 1 418 0 discriminator 2
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.159
	cmpl	%eax, -60(%rbp)	# PL_maxo.159, myopcode
	jl	.L127	#,
.L126:
.LBE19:
	.loc 1 416 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L122:
	.loc 1 416 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp157
	movslq	%eax, %rdx	# tmp157, D.12215
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12215
	cmpq	%rax, %rdx	# D.12215, D.12215
	jl	.L128	#,
.LBE18:
	.loc 1 425 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 426 0
	nop
.LBE17:
	.loc 1 428 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	XS_Opcode_opset_to_ops, .-XS_Opcode_opset_to_ops
	.section	.rodata
.LC28:
	.string	"(opset)"
	.text
	.globl	XS_Opcode_opset
	.type	XS_Opcode_opset, @function
XS_Opcode_opset:
.LFB15:
	.loc 1 432 0
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
	.loc 1 433 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.160
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.161
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.163
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.163, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.162_11, D.12226
	cltq
	salq	$3, %rax	#, D.12227
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.164
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.165
	subq	%rax, %rdx	# PL_stack_base.166, D.12228
	movq	%rdx, %rax	# D.12228, D.12228
	sarq	$3, %rax	#, tmp139
	addl	$1, %eax	#, D.12229
	movl	%eax, -80(%rbp)	# D.12229, ax
	movq	%r12, %rdx	# sp, sp.167
	movq	%rbx, %rax	# mark, mark.168
	subq	%rax, %rdx	# mark.168, D.12228
	movq	%rdx, %rax	# D.12228, D.12228
	sarq	$3, %rax	#, tmp140
	movl	%eax, -76(%rbp)	# D.12228, items
.LBB21:
	.loc 1 441 0
	movl	$0, %edi	#,
	call	new_opset	#
	movq	%rax, %rdi	# D.12230,
	call	Perl_sv_2mortal	#
	movq	%rax, -40(%rbp)	# tmp141, opset
	.loc 1 442 0
	movq	-40(%rbp), %rax	# opset, tmp142
	movq	(%rax), %rax	# opset_31->sv_any, D.12231
	movq	(%rax), %rax	# MEM[(struct XPV *)_32].xpv_pv, tmp143
	movq	%rax, -32(%rbp)	# tmp143, bitmap
	.loc 1 443 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L131	#
.L137:
.LBB22:
	.loc 1 445 0
	movq	$1, -56(%rbp)	#, on
	.loc 1 446 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.169
	movl	-84(%rbp), %edx	# i, tmp144
	movl	-80(%rbp), %ecx	# ax, tmp145
	addl	%ecx, %edx	# tmp145, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_40, D.12230
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12230,
	call	verify_opset	#
	testl	%eax, %eax	# D.12226
	je	.L132	#,
	.loc 1 447 0
	movq	$.LC28, -48(%rbp)	#, opname
	.loc 1 448 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.170
	movl	-84(%rbp), %edx	# i, tmp146
	movl	-80(%rbp), %ecx	# ax, tmp147
	addl	%ecx, %edx	# tmp147, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_48, tmp148
	movq	%rax, -64(%rbp)	# tmp148, bitspec
	jmp	.L133	#
.L132:
	.loc 1 451 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.172
	movl	-84(%rbp), %edx	# i, tmp149
	movl	-80(%rbp), %ecx	# ax, tmp150
	addl	%ecx, %edx	# tmp150, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_54, D.12230
	movl	12(%rax), %eax	# _55->sv_flags, D.12233
	andl	$262144, %eax	#, D.12233
	testl	%eax, %eax	# D.12233
	je	.L134	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.173
	movl	-84(%rbp), %edx	# i, tmp151
	movl	-80(%rbp), %ecx	# ax, tmp152
	addl	%ecx, %edx	# tmp152, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_62, D.12230
	movq	(%rax), %rax	# _63->sv_any, D.12231
	movq	8(%rax), %rax	# MEM[(struct XPV *)_64].xpv_cur, len.174
	movq	%rax, -72(%rbp)	# len.174, len
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.175
	movl	-84(%rbp), %edx	# i, tmp153
	movl	-80(%rbp), %ecx	# ax, tmp154
	addl	%ecx, %edx	# tmp154, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_70, D.12230
	movq	(%rax), %rax	# _71->sv_any, D.12231
	movq	(%rax), %rax	# MEM[(struct XPV *)_72].xpv_pv, iftmp.171
	jmp	.L135	#
.L134:
	.loc 1 451 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.176
	movl	-84(%rbp), %edx	# i, tmp155
	movl	-80(%rbp), %ecx	# ax, tmp156
	addl	%ecx, %edx	# tmp156, D.12226
	movslq	%edx, %rdx	# D.12226, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rdx, %rax	# D.12227, D.12232
	movq	(%rax), %rax	# *_78, D.12230
	leaq	-72(%rbp), %rcx	#, tmp157
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.12230,
	call	Perl_sv_2pv_flags	#
.L135:
	.loc 1 451 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.171, opname
	.loc 1 452 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# opname, tmp158
	movzbl	(%rax), %eax	# *opname_81, D.12234
	cmpb	$33, %al	#, D.12234
	jne	.L136	#,
	.loc 1 452 0 is_stmt 0 discriminator 1
	movq	$0, -56(%rbp)	#, on
	addq	$1, -48(%rbp)	#, opname
	movq	-72(%rbp), %rax	# len, len.177
	subq	$1, %rax	#, len.178
	movq	%rax, -72(%rbp)	# len.178, len
.L136:
	.loc 1 453 0 is_stmt 1
	movq	-72(%rbp), %rcx	# len, len.179
	movq	-48(%rbp), %rax	# opname, tmp159
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# len.179,
	movq	%rax, %rdi	# tmp159,
	call	get_op_bitspec	#
	movq	%rax, -64(%rbp)	# tmp160, bitspec
.L133:
	.loc 1 455 0
	movq	-56(%rbp), %rax	# on, tmp161
	movl	%eax, %edx	# tmp161, D.12226
	movq	-48(%rbp), %rcx	# opname, tmp162
	movq	-64(%rbp), %rsi	# bitspec, tmp163
	movq	-32(%rbp), %rax	# bitmap, tmp164
	movq	%rax, %rdi	# tmp164,
	call	set_opset_bits	#
.LBE22:
	.loc 1 443 0
	addl	$1, -84(%rbp)	#, i
.L131:
	.loc 1 443 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp165
	cmpl	-76(%rbp), %eax	# items, tmp165
	jl	.L137	#,
	.loc 1 457 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.180
	movl	-80(%rbp), %edx	# ax, tmp166
	movslq	%edx, %rdx	# tmp166, D.12227
	salq	$3, %rdx	#, D.12227
	addq	%rax, %rdx	# PL_stack_base.180, D.12232
	movq	-40(%rbp), %rax	# opset, tmp167
	movq	%rax, (%rdx)	# tmp167, *_94
.LBE21:
.LBB23:
	.loc 1 460 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.181
	movl	-80(%rbp), %edx	# ax, tmp168
	movslq	%edx, %rcx	# tmp168, D.12235
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.182
	addq	%rcx, %rdx	# D.12235, D.12235
	salq	$3, %rdx	#, D.12235
	subq	$8, %rdx	#, D.12235
	addq	%rdx, %rax	# D.12235, PL_stack_sp.183
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.183, PL_stack_sp
	nop
.LBE23:
	.loc 1 461 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	XS_Opcode_opset, .-XS_Opcode_opset
	.section	.rodata
.LC29:
	.string	"Usage: %s(safe, ...)"
.LC30:
	.string	"Not a Safe object"
.LC31:
	.string	"Mask"
	.text
	.globl	XS_Opcode_permit_only
	.type	XS_Opcode_permit_only, @function
XS_Opcode_permit_only:
.LFB16:
	.loc 1 467 0
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
	.loc 1 468 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.184
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.185
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.187
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.187, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.186_13, D.12237
	cltq
	salq	$3, %rax	#, D.12238
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.188
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.189
	subq	%rax, %rdx	# PL_stack_base.190, D.12239
	movq	%rdx, %rax	# D.12239, D.12239
	sarq	$3, %rax	#, tmp164
	addl	$1, %eax	#, D.12240
	movl	%eax, -84(%rbp)	# D.12240, ax
	movq	%r12, %rdx	# sp, sp.191
	movq	%rbx, %rax	# mark, mark.192
	subq	%rax, %rdx	# mark.192, D.12239
	movq	%rdx, %rax	# D.12239, D.12239
	sarq	$3, %rax	#, tmp165
	movl	%eax, -80(%rbp)	# D.12239, items
	.loc 1 469 0
	movq	-104(%rbp), %rax	# cv, tmp166
	movq	(%rax), %rax	# cv_32(D)->sv_any, D.12241
	movl	88(%rax), %eax	# _33->xcv_xsubany.any_i32, tmp167
	movl	%eax, -76(%rbp)	# tmp167, ix
	.loc 1 470 0
	cmpl	$0, -80(%rbp)	#, items
	jg	.L140	#,
	.loc 1 471 0
	movq	-104(%rbp), %rax	# cv, tmp168
	movq	(%rax), %rax	# cv_32(D)->sv_any, D.12241
	movq	96(%rax), %rax	# _35->xcv_gv, D.12242
	movq	(%rax), %rax	# _36->sv_any, D.12243
	movq	64(%rax), %rax	# _37->xgv_name, D.12244
	movq	%rax, %rsi	# D.12244,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L140:
.LBB24:
	.loc 1 473 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.193
	movl	-84(%rbp), %edx	# ax, tmp169
	movslq	%edx, %rdx	# tmp169, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_42, tmp170
	movq	%rax, -48(%rbp)	# tmp170, safe
	.loc 1 481 0
	movq	-48(%rbp), %rax	# safe, tmp171
	movl	12(%rax), %eax	# safe_43->sv_flags, D.12246
	andl	$524288, %eax	#, D.12246
	testl	%eax, %eax	# D.12246
	je	.L141	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# safe, tmp172
	movq	(%rax), %rax	# safe_43->sv_any, D.12247
	movq	(%rax), %rax	# MEM[(struct XRV *)_46].xrv_rv, D.12248
	movl	12(%rax), %eax	# _47->sv_flags, D.12246
	andl	$4096, %eax	#, D.12246
	testl	%eax, %eax	# D.12246
	je	.L141	#,
	movq	-48(%rbp), %rax	# safe, tmp173
	movq	(%rax), %rax	# safe_43->sv_any, D.12247
	movq	(%rax), %rax	# MEM[(struct XRV *)_50].xrv_rv, D.12248
	movl	12(%rax), %eax	# _51->sv_flags, D.12246
	movzbl	%al, %eax	# D.12246, D.12246
	cmpl	$11, %eax	#, D.12246
	je	.L142	#,
.L141:
	.loc 1 482 0 is_stmt 1
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L142:
	.loc 1 483 0
	movq	-48(%rbp), %rax	# safe, tmp174
	movq	(%rax), %rax	# safe_43->sv_any, D.12247
	movq	(%rax), %rax	# MEM[(struct XRV *)_54].xrv_rv, D.12248
	movl	$1, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# D.12248,
	call	Perl_hv_fetch	#
	movq	(%rax), %rax	# *_56, tmp175
	movq	%rax, -40(%rbp)	# tmp175, mask
	.loc 1 484 0
	cmpl	$0, -76(%rbp)	#, ix
	je	.L143	#,
	.loc 1 484 0 is_stmt 0 discriminator 1
	cmpl	$2, -76(%rbp)	#, ix
	jne	.L144	#,
.L143:
	.loc 1 485 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, ix
	je	.L145	#,
	.loc 1 485 0 is_stmt 0 discriminator 2
	cmpl	$1, -76(%rbp)	#, ix
	jne	.L146	#,
.L145:
	.loc 1 485 0 discriminator 1
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, iftmp.194
	jmp	.L147	#
.L146:
	movl	$0, %eax	#, iftmp.194
.L147:
	.loc 1 485 0 discriminator 3
	movq	%rax, %rdi	# iftmp.194,
	call	new_opset	#
	movq	%rax, %rdi	# D.12248,
	call	Perl_sv_2mortal	#
	movq	%rax, %rcx	#, D.12248
	movq	-40(%rbp), %rax	# mask, tmp176
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.12248,
	movq	%rax, %rdi	# tmp176,
	call	Perl_sv_setsv_flags	#
	jmp	.L148	#
.L144:
	.loc 1 487 0 is_stmt 1
	movq	-40(%rbp), %rax	# mask, tmp177
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	verify_opset	#
.L148:
	.loc 1 488 0
	movq	-40(%rbp), %rax	# mask, tmp178
	movq	(%rax), %rax	# mask_57->sv_any, D.12247
	movq	(%rax), %rax	# MEM[(struct XPV *)_62].xpv_pv, tmp179
	movq	%rax, -32(%rbp)	# tmp179, bitmap
	.loc 1 489 0
	movl	$1, -92(%rbp)	#, i
	jmp	.L149	#
.L157:
	.loc 1 490 0
	cmpl	$0, -76(%rbp)	#, ix
	je	.L150	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	cmpl	$1, -76(%rbp)	#, ix
	je	.L150	#,
	.loc 1 490 0 discriminator 3
	movl	$1, %eax	#, iftmp.195
	jmp	.L151	#
.L150:
	.loc 1 490 0 discriminator 2
	movl	$0, %eax	#, iftmp.195
.L151:
	.loc 1 490 0 discriminator 4
	movl	%eax, -88(%rbp)	# iftmp.195, on
	.loc 1 491 0 is_stmt 1 discriminator 4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.196
	movl	-92(%rbp), %edx	# i, tmp180
	movl	-84(%rbp), %ecx	# ax, tmp181
	addl	%ecx, %edx	# tmp181, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_72, D.12248
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12248,
	call	verify_opset	#
	testl	%eax, %eax	# D.12237
	je	.L152	#,
	.loc 1 492 0
	movq	$.LC28, -56(%rbp)	#, opname
	.loc 1 493 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.197
	movl	-92(%rbp), %edx	# i, tmp182
	movl	-84(%rbp), %ecx	# ax, tmp183
	addl	%ecx, %edx	# tmp183, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_80, tmp184
	movq	%rax, -64(%rbp)	# tmp184, bitspec
	jmp	.L153	#
.L152:
	.loc 1 496 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.199
	movl	-92(%rbp), %edx	# i, tmp185
	movl	-84(%rbp), %ecx	# ax, tmp186
	addl	%ecx, %edx	# tmp186, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_86, D.12248
	movl	12(%rax), %eax	# _87->sv_flags, D.12246
	andl	$262144, %eax	#, D.12246
	testl	%eax, %eax	# D.12246
	je	.L154	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.200
	movl	-92(%rbp), %edx	# i, tmp187
	movl	-84(%rbp), %ecx	# ax, tmp188
	addl	%ecx, %edx	# tmp188, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_94, D.12248
	movq	(%rax), %rax	# _95->sv_any, D.12247
	movq	8(%rax), %rax	# MEM[(struct XPV *)_96].xpv_cur, len.201
	movq	%rax, -72(%rbp)	# len.201, len
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.202
	movl	-92(%rbp), %edx	# i, tmp189
	movl	-84(%rbp), %ecx	# ax, tmp190
	addl	%ecx, %edx	# tmp190, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_102, D.12248
	movq	(%rax), %rax	# _103->sv_any, D.12247
	movq	(%rax), %rax	# MEM[(struct XPV *)_104].xpv_pv, iftmp.198
	jmp	.L155	#
.L154:
	.loc 1 496 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.203
	movl	-92(%rbp), %edx	# i, tmp191
	movl	-84(%rbp), %ecx	# ax, tmp192
	addl	%ecx, %edx	# tmp192, D.12237
	movslq	%edx, %rdx	# D.12237, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	(%rax), %rax	# *_110, D.12248
	leaq	-72(%rbp), %rcx	#, tmp193
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp193,
	movq	%rax, %rdi	# D.12248,
	call	Perl_sv_2pv_flags	#
.L155:
	.loc 1 496 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.198, opname
	.loc 1 498 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# opname, tmp194
	movzbl	(%rax), %eax	# *opname_113, D.12249
	cmpb	$33, %al	#, D.12249
	jne	.L156	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, on
	sete	%al	#, D.12250
	movzbl	%al, %eax	# D.12250, tmp195
	movl	%eax, -88(%rbp)	# tmp195, on
	addq	$1, -56(%rbp)	#, opname
	movq	-72(%rbp), %rax	# len, len.204
	subq	$1, %rax	#, len.205
	movq	%rax, -72(%rbp)	# len.205, len
.L156:
	.loc 1 499 0 is_stmt 1
	movq	-72(%rbp), %rcx	# len, len.206
	movq	-56(%rbp), %rax	# opname, tmp196
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# len.206,
	movq	%rax, %rdi	# tmp196,
	call	get_op_bitspec	#
	movq	%rax, -64(%rbp)	# tmp197, bitspec
.L153:
	.loc 1 501 0
	movq	-56(%rbp), %rcx	# opname, tmp198
	movl	-88(%rbp), %edx	# on, tmp199
	movq	-64(%rbp), %rsi	# bitspec, tmp200
	movq	-32(%rbp), %rax	# bitmap, tmp201
	movq	%rax, %rdi	# tmp201,
	call	set_opset_bits	#
	.loc 1 489 0
	addl	$1, -92(%rbp)	#, i
.L149:
	.loc 1 489 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp202
	cmpl	-80(%rbp), %eax	# items, tmp202
	jl	.L157	#,
	.loc 1 503 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.207
	movl	-84(%rbp), %edx	# ax, tmp203
	movslq	%edx, %rdx	# tmp203, D.12238
	salq	$3, %rdx	#, D.12238
	addq	%rdx, %rax	# D.12238, D.12245
	movq	$PL_sv_yes, (%rax)	#, *_126
.LBE24:
.LBB25:
	.loc 1 506 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.208
	movl	-84(%rbp), %edx	# ax, tmp204
	movslq	%edx, %rcx	# tmp204, D.12251
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.209
	addq	%rcx, %rdx	# D.12251, D.12251
	salq	$3, %rdx	#, D.12251
	subq	$8, %rdx	#, D.12251
	addq	%rdx, %rax	# D.12251, PL_stack_sp.210
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.210, PL_stack_sp
	nop
.LBE25:
	.loc 1 507 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	XS_Opcode_permit_only, .-XS_Opcode_permit_only
	.section	.rodata
	.align 8
.LC32:
	.string	"panic: opcode %d (%s) out of range"
	.text
	.globl	XS_Opcode_opdesc
	.type	XS_Opcode_opdesc, @function
XS_Opcode_opdesc:
.LFB17:
	.loc 1 511 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)	# cv, cv
	.loc 1 512 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.211
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.212
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.214
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.214, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.213_19, D.12255
	cltq
	salq	$3, %rax	#, D.12256
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.215
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.216
	subq	%rax, %rdx	# PL_stack_base.217, D.12257
	movq	%rdx, %rax	# D.12257, D.12257
	sarq	$3, %rax	#, tmp168
	addl	$1, %eax	#, D.12258
	movl	%eax, -80(%rbp)	# D.12258, ax
	movq	%rbx, %rdx	# sp, sp.218
	movq	%r12, %rax	# mark, mark.219
	subq	%rax, %rdx	# mark.219, D.12257
	movq	%rdx, %rax	# D.12257, D.12257
	sarq	$3, %rax	#, tmp169
	movl	%eax, -76(%rbp)	# D.12257, items
	.loc 1 514 0
	movl	-76(%rbp), %eax	# items, tmp170
	cltq
	salq	$3, %rax	#, D.12256
	negq	%rax	# D.12259
	addq	%rax, %rbx	# D.12259, sp
.LBB26:
	.loc 1 520 0
	call	Perl_get_op_descs	#
	movq	%rax, -56(%rbp)	# tmp171, op_desc
	.loc 1 525 0
	movl	-76(%rbp), %eax	# items, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.220
	movl	-80(%rbp), %ecx	# ax, tmp173
	movslq	%ecx, %rcx	# tmp173, D.12256
	salq	$3, %rcx	#, D.12256
	addq	%rcx, %rax	# D.12256, D.12260
	movq	%rdx, %rsi	# D.12256,
	movq	%rax, %rdi	# D.12260,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.12261,
	call	Perl_sv_2mortal	#
	movq	(%rax), %rax	# _50->sv_any, D.12262
	movq	(%rax), %rax	# MEM[(struct XPV *)_51].xpv_pv, tmp174
	movq	%rax, -48(%rbp)	# tmp174, args
	.loc 1 526 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L160	#
.L180:
.LBB27:
	.loc 1 527 0
	movl	-96(%rbp), %eax	# i, tmp175
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-48(%rbp), %rax	# args, tmp176
	addq	%rdx, %rax	# D.12256, D.12263
	movq	(%rax), %rax	# *_56, D.12261
	movl	12(%rax), %eax	# _57->sv_flags, D.12264
	andl	$262144, %eax	#, D.12264
	testl	%eax, %eax	# D.12264
	je	.L161	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp177
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-48(%rbp), %rax	# args, tmp178
	addq	%rdx, %rax	# D.12256, D.12263
	movq	(%rax), %rax	# *_62, D.12261
	movq	(%rax), %rax	# _63->sv_any, D.12262
	movq	8(%rax), %rax	# MEM[(struct XPV *)_64].xpv_cur, len.222
	movq	%rax, -72(%rbp)	# len.222, len
	movl	-96(%rbp), %eax	# i, tmp179
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-48(%rbp), %rax	# args, tmp180
	addq	%rdx, %rax	# D.12256, D.12263
	movq	(%rax), %rax	# *_68, D.12261
	movq	(%rax), %rax	# _69->sv_any, D.12262
	movq	(%rax), %rax	# MEM[(struct XPV *)_70].xpv_pv, iftmp.221
	jmp	.L162	#
.L161:
	.loc 1 527 0 discriminator 2
	movl	-96(%rbp), %eax	# i, tmp181
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-48(%rbp), %rax	# args, tmp182
	addq	%rdx, %rax	# D.12256, D.12263
	movq	(%rax), %rax	# *_74, D.12261
	leaq	-72(%rbp), %rcx	#, tmp183
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp183,
	movq	%rax, %rdi	# D.12261,
	call	Perl_sv_2pv_flags	#
.L162:
	.loc 1 527 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.221, opname
	.loc 1 528 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rcx	# len, len.223
	movq	-40(%rbp), %rax	# opname, tmp184
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# len.223,
	movq	%rax, %rdi	# tmp184,
	call	get_op_bitspec	#
	movq	%rax, -32(%rbp)	# tmp185, bitspec
	.loc 1 529 0 discriminator 3
	movq	-32(%rbp), %rax	# bitspec, tmp186
	movl	12(%rax), %eax	# bitspec_79->sv_flags, D.12264
	andl	$65536, %eax	#, D.12264
	testl	%eax, %eax	# D.12264
	je	.L163	#,
	.loc 1 530 0
	movq	-32(%rbp), %rax	# bitspec, tmp187
	movl	12(%rax), %eax	# bitspec_79->sv_flags, D.12264
	andl	$65536, %eax	#, D.12264
	testl	%eax, %eax	# D.12264
	je	.L164	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# bitspec, tmp188
	movq	(%rax), %rax	# bitspec_79->sv_any, D.12262
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_84].xiv_iv, D.12257
	jmp	.L165	#
.L164:
	.loc 1 530 0 discriminator 2
	movq	-32(%rbp), %rax	# bitspec, tmp189
	movq	%rax, %rdi	# tmp189,
	call	Perl_sv_2iv	#
.L165:
	.loc 1 530 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.224, myopcode
	.loc 1 531 0 is_stmt 1 discriminator 3
	cmpl	$0, -92(%rbp)	#, myopcode
	js	.L166	#,
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.225
	cmpl	%eax, -92(%rbp)	# PL_maxo.225, myopcode
	jl	.L167	#,
.L166:
	.loc 1 532 0 is_stmt 1
	movq	-40(%rbp), %rdx	# opname, tmp190
	movl	-92(%rbp), %eax	# myopcode, tmp191
	movl	%eax, %esi	# tmp191,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L167:
.LBB28:
	.loc 1 533 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.226
	movq	%rax, %rdx	# PL_stack_max.226, PL_stack_max.227
	movq	%rbx, %rax	# sp, sp.228
	subq	%rax, %rdx	# sp.228, D.12257
	movq	%rdx, %rax	# D.12257, D.12257
	cmpq	$7, %rax	#, D.12257
	jg	.L168	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L168:
	.loc 1 533 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-92(%rbp), %eax	# myopcode, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-56(%rbp), %rax	# op_desc, tmp193
	addq	%rdx, %rax	# D.12256, D.12265
	movq	(%rax), %rax	# *_99, D.12266
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12266,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.12261,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12261, *sp_96
.LBE28:
	jmp	.L169	#
.L163:
	.loc 1 535 0 is_stmt 1
	movq	-32(%rbp), %rax	# bitspec, tmp194
	movl	12(%rax), %eax	# bitspec_79->sv_flags, D.12264
	andl	$262144, %eax	#, D.12264
	testl	%eax, %eax	# D.12264
	je	.L170	#,
	.loc 1 535 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# bitspec, tmp195
	movq	(%rax), %rax	# bitspec_79->sv_any, D.12262
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_106].xpv_cur, D.12256
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12257
	cmpq	%rax, %rdx	# D.12256, D.12256
	jne	.L170	#,
.LBB29:
	.loc 1 538 0 is_stmt 1
	movq	-32(%rbp), %rax	# bitspec, tmp196
	movl	12(%rax), %eax	# bitspec_79->sv_flags, D.12264
	andl	$262144, %eax	#, D.12264
	testl	%eax, %eax	# D.12264
	je	.L171	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# bitspec, tmp197
	movq	(%rax), %rax	# bitspec_79->sv_any, D.12262
	movq	8(%rax), %rax	# MEM[(struct XPV *)_112].xpv_cur, n_a.230
	movq	%rax, -64(%rbp)	# n_a.230, n_a
	movq	-32(%rbp), %rax	# bitspec, tmp198
	movq	(%rax), %rax	# bitspec_79->sv_any, D.12262
	movq	(%rax), %rax	# MEM[(struct XPV *)_114].xpv_pv, iftmp.229
	jmp	.L172	#
.L171:
	.loc 1 538 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp199
	movq	-32(%rbp), %rax	# bitspec, tmp200
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	Perl_sv_2pv_flags	#
.L172:
	.loc 1 538 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.229, bitmap
	.loc 1 539 0 is_stmt 1 discriminator 3
	movl	$0, -92(%rbp)	#, myopcode
	.loc 1 540 0 discriminator 3
	movl	$0, -88(%rbp)	#, b
	jmp	.L173	#
.L179:
.LBB30:
	.loc 1 541 0
	movl	-88(%rbp), %eax	# b, tmp201
	movslq	%eax, %rdx	# tmp201, D.12259
	movq	-24(%rbp), %rax	# bitmap, tmp202
	addq	%rdx, %rax	# D.12259, D.12266
	movzbl	(%rax), %eax	# *_123, D.12267
	cbtw
	movw	%ax, -98(%rbp)	# tmp203, bits
	.loc 1 542 0
	movl	$0, -84(%rbp)	#, j
	jmp	.L174	#
.L178:
	.loc 1 543 0
	movzwl	-98(%rbp), %edx	# bits, D.12255
	movl	-84(%rbp), %eax	# j, tmp204
	movl	%eax, %ecx	# tmp204, tmp215
	sarl	%cl, %edx	# tmp215, D.12255
	movl	%edx, %eax	# D.12255, D.12255
	andl	$1, %eax	#, D.12255
	testl	%eax, %eax	# D.12255
	je	.L175	#,
.LBB31:
	.loc 1 544 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.231
	movq	%rax, %rdx	# PL_stack_max.231, PL_stack_max.232
	movq	%rbx, %rax	# sp, sp.233
	subq	%rax, %rdx	# sp.233, D.12257
	movq	%rdx, %rax	# D.12257, D.12257
	cmpq	$7, %rax	#, D.12257
	jg	.L176	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L176:
	.loc 1 544 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-92(%rbp), %eax	# myopcode, tmp205
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12256
	movq	-56(%rbp), %rax	# op_desc, tmp206
	addq	%rdx, %rax	# D.12256, D.12265
	movq	(%rax), %rax	# *_139, D.12266
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12266,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.12261,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12261, *sp_136
.L175:
.LBE31:
	.loc 1 542 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
	addl	$1, -92(%rbp)	#, myopcode
.L174:
	.loc 1 542 0 is_stmt 0 discriminator 1
	cmpl	$7, -84(%rbp)	#, j
	jg	.L177	#,
	.loc 1 542 0 discriminator 2
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.234
	cmpl	%eax, -92(%rbp)	# PL_maxo.234, myopcode
	jl	.L178	#,
.L177:
.LBE30:
	.loc 1 540 0 is_stmt 1
	addl	$1, -88(%rbp)	#, b
.L173:
	.loc 1 540 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# b, tmp207
	movslq	%eax, %rdx	# tmp207, D.12257
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12257
	cmpq	%rax, %rdx	# D.12257, D.12257
	jl	.L179	#,
.LBE29:
	.loc 1 535 0 is_stmt 1
	jmp	.L169	#
.L170:
	.loc 1 549 0
	movq	-32(%rbp), %rax	# bitspec, tmp208
	movl	12(%rax), %eax	# bitspec_79->sv_flags, D.12264
	.loc 1 548 0
	movzbl	%al, %edx	# D.12264, D.12264
	movq	-40(%rbp), %rax	# opname, tmp209
	movq	%rax, %rsi	# tmp209,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L169:
.LBE27:
	.loc 1 526 0
	addl	$1, -96(%rbp)	#, i
.L160:
	.loc 1 526 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp210
	cmpl	-76(%rbp), %eax	# items, tmp210
	jl	.L180	#,
	.loc 1 552 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 553 0
	nop
.LBE26:
	.loc 1 555 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	XS_Opcode_opdesc, .-XS_Opcode_opdesc
	.section	.rodata
	.align 8
.LC33:
	.string	"Usage: Opcode::define_optag(optagsv, mask)"
	.text
	.globl	XS_Opcode_define_optag
	.type	XS_Opcode_define_optag, @function
XS_Opcode_define_optag:
.LFB18:
	.loc 1 559 0
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
	.loc 1 560 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.235
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.236
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.238
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.238, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.237_5, D.12269
	cltq
	salq	$3, %rax	#, D.12270
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.239
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.240
	subq	%rax, %rdx	# PL_stack_base.241, D.12271
	movq	%rdx, %rax	# D.12271, D.12271
	sarq	$3, %rax	#, tmp106
	addl	$1, %eax	#, D.12272
	movl	%eax, -64(%rbp)	# D.12272, ax
	movq	%r12, %rdx	# sp, sp.242
	movq	%rbx, %rax	# mark, mark.243
	subq	%rax, %rdx	# mark.243, D.12271
	movq	%rdx, %rax	# D.12271, D.12271
	sarq	$3, %rax	#, tmp107
	movl	%eax, -60(%rbp)	# D.12271, items
	.loc 1 561 0
	cmpl	$2, -60(%rbp)	#, items
	je	.L183	#,
	.loc 1 562 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L183:
.LBB32:
	.loc 1 564 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.244
	movl	-64(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rdx	# tmp108, D.12270
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12273
	movq	(%rax), %rax	# *_27, tmp109
	movq	%rax, -48(%rbp)	# tmp109, optagsv
	.loc 1 565 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.245
	movl	-64(%rbp), %edx	# ax, tmp110
	movslq	%edx, %rdx	# tmp110, D.12274
	addq	$1, %rdx	#, D.12274
	salq	$3, %rdx	#, D.12274
	addq	%rdx, %rax	# D.12274, D.12273
	movq	(%rax), %rax	# *_33, tmp111
	movq	%rax, -40(%rbp)	# tmp111, mask
	.loc 1 568 0
	movq	-48(%rbp), %rax	# optagsv, tmp112
	movl	12(%rax), %eax	# optagsv_28->sv_flags, D.12275
	andl	$262144, %eax	#, D.12275
	testl	%eax, %eax	# D.12275
	je	.L184	#,
	.loc 1 568 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optagsv, tmp113
	movq	(%rax), %rax	# optagsv_28->sv_any, D.12276
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, len.247
	movq	%rax, -56(%rbp)	# len.247, len
	movq	-48(%rbp), %rax	# optagsv, tmp114
	movq	(%rax), %rax	# optagsv_28->sv_any, D.12276
	movq	(%rax), %rax	# MEM[(struct XPV *)_39].xpv_pv, iftmp.246
	jmp	.L185	#
.L184:
	.loc 1 568 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp115
	movq	-48(%rbp), %rax	# optagsv, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_2pv_flags	#
.L185:
	.loc 1 568 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.246, optag
	.loc 1 570 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rcx	# len, len.248
	movq	-40(%rbp), %rdx	# mask, tmp117
	movq	-32(%rbp), %rax	# optag, tmp118
	movq	%rcx, %rsi	# len.248,
	movq	%rax, %rdi	# tmp118,
	call	put_op_bitspec	#
	.loc 1 571 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.249
	movl	-64(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.12270
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12273
	movq	$PL_sv_yes, (%rax)	#, *_47
.LBE32:
.LBB33:
	.loc 1 574 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.250
	movl	-64(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rcx	# tmp120, D.12274
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.251
	addq	%rcx, %rdx	# D.12274, D.12274
	salq	$3, %rdx	#, D.12274
	subq	$8, %rdx	#, D.12274
	addq	%rdx, %rax	# D.12274, PL_stack_sp.252
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.252, PL_stack_sp
	nop
.LBE33:
	.loc 1 575 0 discriminator 3
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	XS_Opcode_define_optag, .-XS_Opcode_define_optag
	.section	.rodata
.LC34:
	.string	"Usage: Opcode::empty_opset()"
	.text
	.globl	XS_Opcode_empty_opset
	.type	XS_Opcode_empty_opset, @function
XS_Opcode_empty_opset:
.LFB19:
	.loc 1 579 0
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
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 580 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.253
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.254
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.256
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.256, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.255_4, D.12278
	cltq
	salq	$3, %rax	#, D.12279
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.257
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.258
	subq	%rax, %rdx	# PL_stack_base.259, D.12280
	movq	%rdx, %rax	# D.12280, D.12280
	sarq	$3, %rax	#, tmp92
	addl	$1, %eax	#, D.12281
	movl	%eax, -32(%rbp)	# D.12281, ax
	movq	%r12, %rdx	# sp, sp.260
	movq	%rbx, %rax	# mark, mark.261
	subq	%rax, %rdx	# mark.261, D.12280
	movq	%rdx, %rax	# D.12280, D.12280
	sarq	$3, %rax	#, tmp93
	movl	%eax, -28(%rbp)	# D.12280, items
	.loc 1 581 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L188	#,
	.loc 1 582 0
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L188:
	.loc 1 585 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.262
	movl	-32(%rbp), %edx	# ax, tmp94
	movslq	%edx, %rdx	# tmp94, D.12279
	salq	$3, %rdx	#, D.12279
	leaq	(%rax,%rdx), %rbx	#, D.12282
	movl	$0, %edi	#,
	call	new_opset	#
	movq	%rax, %rdi	# D.12283,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12283, *_26
.LBB34:
	.loc 1 588 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.263
	movl	-32(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rcx	# tmp95, D.12284
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.264
	addq	%rcx, %rdx	# D.12284, D.12284
	salq	$3, %rdx	#, D.12284
	subq	$8, %rdx	#, D.12284
	addq	%rdx, %rax	# D.12284, PL_stack_sp.265
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.265, PL_stack_sp
	nop
.LBE34:
	.loc 1 589 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	XS_Opcode_empty_opset, .-XS_Opcode_empty_opset
	.section	.rodata
.LC35:
	.string	"Usage: Opcode::full_opset()"
	.text
	.globl	XS_Opcode_full_opset
	.type	XS_Opcode_full_opset, @function
XS_Opcode_full_opset:
.LFB20:
	.loc 1 593 0
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
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 594 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.266
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.267
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.269
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.269, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.268_4, D.12286
	cltq
	salq	$3, %rax	#, D.12287
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.270
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.271
	subq	%rax, %rdx	# PL_stack_base.272, D.12288
	movq	%rdx, %rax	# D.12288, D.12288
	sarq	$3, %rax	#, tmp93
	addl	$1, %eax	#, D.12289
	movl	%eax, -32(%rbp)	# D.12289, ax
	movq	%r12, %rdx	# sp, sp.273
	movq	%rbx, %rax	# mark, mark.274
	subq	%rax, %rdx	# mark.274, D.12288
	movq	%rdx, %rax	# D.12288, D.12288
	sarq	$3, %rax	#, tmp94
	movl	%eax, -28(%rbp)	# D.12288, items
	.loc 1 595 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L191	#,
	.loc 1 596 0
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L191:
.LBB35:
	.loc 1 600 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.275
	movl	-32(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rdx	# tmp95, D.12287
	salq	$3, %rdx	#, D.12287
	leaq	(%rax,%rdx), %rbx	#, D.12290
	movq	my_cxt+8(%rip), %rax	# my_cxt.x_opset_all, D.12291
	movq	%rax, %rdi	# D.12291,
	call	new_opset	#
	movq	%rax, %rdi	# D.12291,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12291, *_26
.LBE35:
.LBB36:
	.loc 1 603 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.276
	movl	-32(%rbp), %edx	# ax, tmp96
	movslq	%edx, %rcx	# tmp96, D.12292
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.277
	addq	%rcx, %rdx	# D.12292, D.12292
	salq	$3, %rdx	#, D.12292
	subq	$8, %rdx	#, D.12292
	addq	%rdx, %rax	# D.12292, PL_stack_sp.278
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.278, PL_stack_sp
	nop
.LBE36:
	.loc 1 604 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	XS_Opcode_full_opset, .-XS_Opcode_full_opset
	.section	.rodata
	.align 8
.LC36:
	.string	"Usage: Opcode::opmask_add(opset)"
	.text
	.globl	XS_Opcode_opmask_add
	.type	XS_Opcode_opmask_add, @function
XS_Opcode_opmask_add:
.LFB21:
	.loc 1 608 0
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
	.loc 1 609 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.279
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.280
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.282
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.282, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.281_4, D.12294
	cltq
	salq	$3, %rax	#, D.12295
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.283
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.284
	subq	%rax, %rdx	# PL_stack_base.285, D.12296
	movq	%rdx, %rax	# D.12296, D.12296
	sarq	$3, %rax	#, tmp97
	addl	$1, %eax	#, D.12297
	movl	%eax, -40(%rbp)	# D.12297, ax
	movq	%r12, %rdx	# sp, sp.286
	movq	%rbx, %rax	# mark, mark.287
	subq	%rax, %rdx	# mark.287, D.12296
	movq	%rdx, %rax	# D.12296, D.12296
	sarq	$3, %rax	#, tmp98
	movl	%eax, -36(%rbp)	# D.12296, items
	.loc 1 610 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L194	#,
	.loc 1 611 0
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L194:
.LBB37:
	.loc 1 613 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.288
	movl	-40(%rbp), %edx	# ax, tmp99
	movslq	%edx, %rdx	# tmp99, D.12295
	salq	$3, %rdx	#, D.12295
	addq	%rdx, %rax	# D.12295, D.12298
	movq	(%rax), %rax	# *_26, tmp100
	movq	%rax, -32(%rbp)	# tmp100, opset
	.loc 1 615 0
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.289
	testq	%rax, %rax	# PL_op_mask.289
	jne	.L195	#,
	.loc 1 616 0
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.290
	cltq
	movq	%rax, %rdi	# D.12295,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_op_mask(%rip)	# PL_op_mask.291, PL_op_mask
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.292
	movslq	%eax, %rdx	# PL_maxo.292, D.12295
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.293
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_op_mask.293,
	call	memset	#
.L195:
	.loc 1 619 0
	movq	-32(%rbp), %rax	# opset, tmp101
	movq	%rax, %rdi	# tmp101,
	call	opmask_add	#
.LBE37:
.LBB38:
	.loc 1 622 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.294
	movl	-40(%rbp), %edx	# ax, tmp102
	movslq	%edx, %rcx	# tmp102, D.12299
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.295
	addq	%rcx, %rdx	# D.12299, D.12299
	salq	$3, %rdx	#, D.12299
	subq	$8, %rdx	#, D.12299
	addq	%rdx, %rax	# D.12299, PL_stack_sp.296
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.296, PL_stack_sp
	nop
.LBE38:
	.loc 1 623 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	XS_Opcode_opmask_add, .-XS_Opcode_opmask_add
	.section	.rodata
.LC37:
	.string	"Usage: Opcode::opcodes()"
	.align 8
.LC38:
	.string	"opcodes in list context not yet implemented"
	.text
	.globl	XS_Opcode_opcodes
	.type	XS_Opcode_opcodes, @function
XS_Opcode_opcodes:
.LFB22:
	.loc 1 627 0
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
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 628 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.297
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.298
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.300
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.300, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.299_7, D.12301
	cltq
	salq	$3, %rax	#, D.12302
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.301
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.302
	subq	%rax, %rdx	# PL_stack_base.303, D.12303
	movq	%rdx, %rax	# D.12303, D.12303
	sarq	$3, %rax	#, tmp101
	addl	$1, %eax	#, D.12304
	movl	%eax, -24(%rbp)	# D.12304, ax
	movq	%rbx, %rdx	# sp, sp.304
	movq	%r12, %rax	# mark, mark.305
	subq	%rax, %rdx	# mark.305, D.12303
	movq	%rdx, %rax	# D.12303, D.12303
	sarq	$3, %rax	#, tmp102
	movl	%eax, -20(%rbp)	# D.12303, items
	.loc 1 629 0
	cmpl	$0, -20(%rbp)	#, items
	je	.L205	#,
	.loc 1 630 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L205:
	.loc 1 632 0
	movl	-20(%rbp), %eax	# items, tmp103
	cltq
	salq	$3, %rax	#, D.12302
	negq	%rax	# D.12305
	addq	%rax, %rbx	# D.12305, sp
	.loc 1 635 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.307
	movzbl	36(%rax), %eax	# PL_op.307_30->op_flags, D.12306
	movzbl	%al, %eax	# D.12306, D.12301
	andl	$3, %eax	#, D.12301
	testl	%eax, %eax	# D.12301
	je	.L199	#,
	.loc 1 635 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.308
	movzbl	36(%rax), %eax	# PL_op.308_34->op_flags, D.12306
	movzbl	%al, %eax	# D.12306, D.12301
	andl	$3, %eax	#, D.12301
	cmpl	$3, %eax	#, D.12301
	sete	%al	#, iftmp.306
	jmp	.L200	#
.L199:
	.loc 1 635 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.12301
	sete	%al	#, iftmp.306
.L200:
	.loc 1 635 0 discriminator 3
	testb	%al, %al	# iftmp.306
	je	.L201	#,
	.loc 1 636 0 is_stmt 1
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L202	#
.L201:
.LBB39:
	.loc 1 639 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.309
	movq	%rax, %rdx	# PL_stack_max.309, PL_stack_max.310
	movq	%rbx, %rax	# sp, sp.311
	subq	%rax, %rdx	# sp.311, D.12303
	movq	%rdx, %rax	# D.12303, D.12303
	cmpq	$7, %rax	#, D.12303
	jg	.L203	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L203:
	.loc 1 639 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.312
	cltq
	movq	%rax, %rdi	# D.12303,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12307,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12307, *sp_46
.L202:
.LBE39:
	.loc 1 642 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 643 0
	nop
	.loc 1 645 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	XS_Opcode_opcodes, .-XS_Opcode_opcodes
	.section	.rodata
.LC39:
	.string	"Usage: Opcode::opmask()"
	.text
	.globl	XS_Opcode_opmask
	.type	XS_Opcode_opmask, @function
XS_Opcode_opmask:
.LFB23:
	.loc 1 649 0
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
	.loc 1 650 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.313
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.314
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.316
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.316, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.315_5, D.12310
	cltq
	salq	$3, %rax	#, D.12311
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.317
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.318
	subq	%rax, %rdx	# PL_stack_base.319, D.12312
	movq	%rdx, %rax	# D.12312, D.12312
	sarq	$3, %rax	#, tmp115
	addl	$1, %eax	#, D.12313
	movl	%eax, -40(%rbp)	# D.12313, ax
	movq	%r12, %rdx	# sp, sp.320
	movq	%rbx, %rax	# mark, mark.321
	subq	%rax, %rdx	# mark.321, D.12312
	movq	%rdx, %rax	# D.12312, D.12312
	sarq	$3, %rax	#, tmp116
	movl	%eax, -36(%rbp)	# D.12312, items
	.loc 1 651 0
	cmpl	$0, -36(%rbp)	#, items
	je	.L207	#,
	.loc 1 652 0
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L207:
	.loc 1 655 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.322
	movl	-40(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.12311
	salq	$3, %rdx	#, D.12311
	leaq	(%rax,%rdx), %rbx	#, D.12314
	movl	$0, %edi	#,
	call	new_opset	#
	movq	%rax, %rdi	# D.12315,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12315, *_27
	.loc 1 656 0
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.323
	testq	%rax, %rax	# PL_op_mask.323
	je	.L208	#,
.LBB40:
	.loc 1 657 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.324
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.12311
	salq	$3, %rdx	#, D.12311
	addq	%rdx, %rax	# D.12311, D.12314
	movq	(%rax), %rax	# *_34, D.12315
	movq	(%rax), %rax	# _35->sv_any, D.12316
	movq	(%rax), %rax	# MEM[(struct XPV *)_36].xpv_pv, tmp119
	movq	%rax, -32(%rbp)	# tmp119, bitmap
	.loc 1 659 0
	movl	$0, -44(%rbp)	#, myopcode
	jmp	.L209	#
.L211:
	.loc 1 660 0
	movq	PL_op_mask(%rip), %rdx	# PL_op_mask, PL_op_mask.325
	movl	-44(%rbp), %eax	# myopcode, tmp120
	cltq
	addq	%rdx, %rax	# PL_op_mask.325, D.12318
	movzbl	(%rax), %eax	# *_42, D.12319
	testb	%al, %al	# D.12319
	je	.L210	#,
	.loc 1 661 0
	movl	-44(%rbp), %eax	# myopcode, tmp121
	sarl	$3, %eax	#, D.12310
	movslq	%eax, %rdx	# D.12310, D.12317
	movq	-32(%rbp), %rax	# bitmap, tmp122
	addq	%rax, %rdx	# tmp122, D.12318
	movl	-44(%rbp), %eax	# myopcode, tmp123
	sarl	$3, %eax	#, D.12310
	movslq	%eax, %rcx	# D.12310, D.12317
	movq	-32(%rbp), %rax	# bitmap, tmp124
	addq	%rcx, %rax	# D.12317, D.12318
	movzbl	(%rax), %esi	# *_49, D.12319
	movl	-44(%rbp), %eax	# myopcode, tmp125
	andl	$7, %eax	#, D.12310
	movl	$1, %edi	#, tmp126
	movl	%eax, %ecx	# D.12310, tmp131
	sall	%cl, %edi	# tmp131, D.12310
	movl	%edi, %eax	# D.12310, D.12310
	orl	%esi, %eax	# D.12319, D.12319
	movb	%al, (%rdx)	# D.12319, *_46
.L210:
	.loc 1 659 0
	addl	$1, -44(%rbp)	#, myopcode
.L209:
	.loc 1 659 0 is_stmt 0 discriminator 1
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.326
	cmpl	%eax, -44(%rbp)	# PL_maxo.326, myopcode
	jl	.L211	#,
.L208:
.LBE40:
.LBB41:
	.loc 1 666 0 is_stmt 1
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.327
	movl	-40(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rcx	# tmp127, D.12317
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.328
	addq	%rcx, %rdx	# D.12317, D.12317
	salq	$3, %rdx	#, D.12317
	subq	$8, %rdx	#, D.12317
	addq	%rdx, %rax	# D.12317, PL_stack_sp.329
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.329, PL_stack_sp
	nop
.LBE41:
	.loc 1 667 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	XS_Opcode_opmask, .-XS_Opcode_opmask
	.section	.rodata
.LC40:
	.string	"Opcode.c"
.LC41:
	.string	"Opcode::_safe_pkg_prep"
.LC42:
	.string	"$"
.LC43:
	.string	"Opcode::_safe_call_sv"
.LC44:
	.string	"$$$"
.LC45:
	.string	"Opcode::verify_opset"
.LC46:
	.string	"$;$"
.LC47:
	.string	"Opcode::invert_opset"
.LC48:
	.string	"Opcode::opset_to_ops"
.LC49:
	.string	"Opcode::opset"
.LC50:
	.string	";@"
.LC51:
	.string	"Opcode::permit_only"
.LC52:
	.string	"$;@"
.LC53:
	.string	"Opcode::deny"
.LC54:
	.string	"Opcode::deny_only"
.LC55:
	.string	"Opcode::permit"
.LC56:
	.string	"Opcode::opdesc"
.LC57:
	.string	"Opcode::define_optag"
.LC58:
	.string	"$$"
.LC59:
	.string	"Opcode::empty_opset"
.LC60:
	.string	""
.LC61:
	.string	"Opcode::full_opset"
.LC62:
	.string	"Opcode::opmask_add"
.LC63:
	.string	"Opcode::opcodes"
.LC64:
	.string	"Opcode::opmask"
.LC65:
	.string	"opset_len %ld\n"
	.text
	.globl	boot_Opcode
	.type	boot_Opcode, @function
boot_Opcode:
.LFB24:
	.loc 1 674 0
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
	.loc 1 675 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.330
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.331
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.333
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.333, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.332_4, D.12321
	cltq
	salq	$3, %rax	#, D.12322
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.334
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.335
	subq	%rax, %rdx	# PL_stack_base.336, D.12323
	movq	%rdx, %rax	# D.12323, D.12323
	sarq	$3, %rax	#, tmp113
	addl	$1, %eax	#, D.12324
	movl	%eax, -48(%rbp)	# D.12324, ax
	movq	%r12, %rdx	# sp, sp.337
	movq	%rbx, %rax	# mark, mark.338
	subq	%rax, %rdx	# mark.338, D.12323
	movq	%rdx, %rax	# D.12323, D.12323
	sarq	$3, %rax	#, tmp114
	movl	%eax, -44(%rbp)	# D.12323, items
	.loc 1 676 0
	movq	$.LC40, -40(%rbp)	#, file
.LBB42:
	.loc 1 683 0
	movq	-40(%rbp), %rax	# file, tmp115
	movq	%rax, %rdx	# tmp115,
	movl	$XS_Opcode__safe_pkg_prep, %esi	#,
	movl	$.LC41, %edi	#,
	call	Perl_newXS	#
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 684 0
	movq	-40(%rbp), %rax	# file, tmp116
	movq	%rax, %rdx	# tmp116,
	movl	$XS_Opcode__safe_call_sv, %esi	#,
	movl	$.LC43, %edi	#,
	call	Perl_newXS	#
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 685 0
	movq	-40(%rbp), %rax	# file, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$XS_Opcode_verify_opset, %esi	#,
	movl	$.LC45, %edi	#,
	call	Perl_newXS	#
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 686 0
	movq	-40(%rbp), %rax	# file, tmp118
	movq	%rax, %rdx	# tmp118,
	movl	$XS_Opcode_invert_opset, %esi	#,
	movl	$.LC47, %edi	#,
	call	Perl_newXS	#
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 687 0
	movq	-40(%rbp), %rax	# file, tmp119
	movq	%rax, %rdx	# tmp119,
	movl	$XS_Opcode_opset_to_ops, %esi	#,
	movl	$.LC48, %edi	#,
	call	Perl_newXS	#
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 688 0
	movq	-40(%rbp), %rax	# file, tmp120
	movq	%rax, %rdx	# tmp120,
	movl	$XS_Opcode_opset, %esi	#,
	movl	$.LC49, %edi	#,
	call	Perl_newXS	#
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 689 0
	movq	-40(%rbp), %rax	# file, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	$XS_Opcode_permit_only, %esi	#,
	movl	$.LC51, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp122, cv
	.loc 1 690 0
	movq	-32(%rbp), %rax	# cv, tmp123
	movq	(%rax), %rax	# cv_30->sv_any, D.12326
	movl	$0, 88(%rax)	#, _31->xcv_xsubany.any_i32
	.loc 1 691 0
	movq	-32(%rbp), %rax	# cv, tmp124
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	Perl_sv_setpv	#
	.loc 1 692 0
	movq	-40(%rbp), %rax	# file, tmp125
	movq	%rax, %rdx	# tmp125,
	movl	$XS_Opcode_permit_only, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp126, cv
	.loc 1 693 0
	movq	-32(%rbp), %rax	# cv, tmp127
	movq	(%rax), %rax	# cv_32->sv_any, D.12326
	movl	$3, 88(%rax)	#, _33->xcv_xsubany.any_i32
	.loc 1 694 0
	movq	-32(%rbp), %rax	# cv, tmp128
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	Perl_sv_setpv	#
	.loc 1 695 0
	movq	-40(%rbp), %rax	# file, tmp129
	movq	%rax, %rdx	# tmp129,
	movl	$XS_Opcode_permit_only, %esi	#,
	movl	$.LC54, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp130, cv
	.loc 1 696 0
	movq	-32(%rbp), %rax	# cv, tmp131
	movq	(%rax), %rax	# cv_34->sv_any, D.12326
	movl	$2, 88(%rax)	#, _35->xcv_xsubany.any_i32
	.loc 1 697 0
	movq	-32(%rbp), %rax	# cv, tmp132
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	Perl_sv_setpv	#
	.loc 1 698 0
	movq	-40(%rbp), %rax	# file, tmp133
	movq	%rax, %rdx	# tmp133,
	movl	$XS_Opcode_permit_only, %esi	#,
	movl	$.LC55, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp134, cv
	.loc 1 699 0
	movq	-32(%rbp), %rax	# cv, tmp135
	movq	(%rax), %rax	# cv_36->sv_any, D.12326
	movl	$1, 88(%rax)	#, _37->xcv_xsubany.any_i32
	.loc 1 700 0
	movq	-32(%rbp), %rax	# cv, tmp136
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	Perl_sv_setpv	#
	.loc 1 701 0
	movq	-40(%rbp), %rax	# file, tmp137
	movq	%rax, %rdx	# tmp137,
	movl	$XS_Opcode_opdesc, %esi	#,
	movl	$.LC56, %edi	#,
	call	Perl_newXS	#
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 702 0
	movq	-40(%rbp), %rax	# file, tmp138
	movq	%rax, %rdx	# tmp138,
	movl	$XS_Opcode_define_optag, %esi	#,
	movl	$.LC57, %edi	#,
	call	Perl_newXS	#
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 703 0
	movq	-40(%rbp), %rax	# file, tmp139
	movq	%rax, %rdx	# tmp139,
	movl	$XS_Opcode_empty_opset, %esi	#,
	movl	$.LC59, %edi	#,
	call	Perl_newXS	#
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 704 0
	movq	-40(%rbp), %rax	# file, tmp140
	movq	%rax, %rdx	# tmp140,
	movl	$XS_Opcode_full_opset, %esi	#,
	movl	$.LC61, %edi	#,
	call	Perl_newXS	#
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 705 0
	movq	-40(%rbp), %rax	# file, tmp141
	movq	%rax, %rdx	# tmp141,
	movl	$XS_Opcode_opmask_add, %esi	#,
	movl	$.LC62, %edi	#,
	call	Perl_newXS	#
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 706 0
	movq	-40(%rbp), %rax	# file, tmp142
	movq	%rax, %rdx	# tmp142,
	movl	$XS_Opcode_opcodes, %esi	#,
	movl	$.LC63, %edi	#,
	call	Perl_newXS	#
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
	.loc 1 707 0
	movq	-40(%rbp), %rax	# file, tmp143
	movq	%rax, %rdx	# tmp143,
	movl	$XS_Opcode_opmask, %esi	#,
	movl	$.LC64, %edi	#,
	call	Perl_newXS	#
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# D.12325,
	call	Perl_sv_setpv	#
.LBE42:
	.loc 1 716 0
	movl	PL_maxo(%rip), %eax	# PL_maxo, PL_maxo.339
	addl	$7, %eax	#, D.12321
	leal	7(%rax), %edx	#, tmp145
	testl	%eax, %eax	# tmp144
	cmovs	%edx, %eax	# tmp145,, tmp144
	sarl	$3, %eax	#, tmp146
	cltq
	movq	%rax, my_cxt+16(%rip)	# D.12323, my_cxt.x_opset_len
	.loc 1 717 0
	movl	my_cxt+24(%rip), %eax	# my_cxt.x_opcode_debug, D.12321
	testl	%eax, %eax	# D.12321
	jle	.L214	#,
	.loc 1 718 0
	movq	my_cxt+16(%rip), %rax	# my_cxt.x_opset_len, D.12323
	movq	%rax, %rsi	# D.12323,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L214:
	.loc 1 719 0
	call	op_names_init	#
.LBB43:
	.loc 1 726 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.340
	movl	-48(%rbp), %edx	# ax, tmp147
	movslq	%edx, %rdx	# tmp147, D.12322
	salq	$3, %rdx	#, D.12322
	addq	%rdx, %rax	# D.12322, D.12327
	movq	$PL_sv_yes, (%rax)	#, *_54
.LBB44:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.341
	movl	-48(%rbp), %edx	# ax, tmp148
	movslq	%edx, %rcx	# tmp148, D.12328
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.342
	addq	%rcx, %rdx	# D.12328, D.12328
	salq	$3, %rdx	#, D.12328
	subq	$8, %rdx	#, D.12328
	addq	%rdx, %rax	# D.12328, PL_stack_sp.343
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.343, PL_stack_sp
	nop
.LBE44:
.LBE43:
	.loc 1 727 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	boot_Opcode, .-boot_Opcode
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
	.file 18 "intrpvar.h"
	.file 19 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2231
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF355
	.byte	0x1
	.long	.LASF356
	.long	.LASF357
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
	.long	.LASF174
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
	.long	0xd76
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xd76
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xdfa
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xde4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xbe8
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xbe8
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xbde
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xbde
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
	.long	0xd76
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xd76
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xdfa
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xde4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xbe8
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xbe8
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xbde
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xbde
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xd76
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xd76
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xd76
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xd76
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xe00
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xe06
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xbfe
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xbfe
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xbde
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xd5e
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
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xbfe
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
	.long	0xd46
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xbfe
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
	.long	0xd4c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xbfe
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
	.long	0xd40
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xbfe
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
	.long	0xc99
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xc99
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xc9f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xcaa
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
	.long	0xcb5
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
	.long	0xcbb
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xbf3
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xbf3
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xbf3
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xbf3
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xbfe
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xbfe
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xbfe
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xbfe
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xcc1
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
	.long	0xc26
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xdd3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xd87
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xd99
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xd5e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xd93
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xd87
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xbfe
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xbfe
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xc09
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
	.long	0xd3a
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xbfe
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x8
	.byte	0x61
	.long	0x574
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x62
	.long	0xd52
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xbfe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xbfe
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.value	0x7f5
	.long	0x580
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xb
	.byte	0x1a
	.long	0x5ed
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0xd58
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xf11
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xbe8
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
	.long	0xbde
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xc26
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
	.long	0xbf3
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x5f9
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x8
	.byte	0xf5
	.long	0x612
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0xf6
	.long	0xc26
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x61e
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x8
	.byte	0xf9
	.long	0x64f
	.uleb128 0xd
	.long	.LASF84
	.byte	0x8
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0x8
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x6
	.value	0x7f8
	.long	0x65b
	.uleb128 0xe
	.long	.LASF88
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.long	0x69c
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x6
	.value	0x7fd
	.long	0x6a8
	.uleb128 0xe
	.long	.LASF91
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x72d
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0x11
	.long	0xd58
	.byte	0x28
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x12
	.long	0xd5e
	.byte	0x30
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x14
	.long	0xe0c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF100
	.byte	0xc
	.byte	0x15
	.long	0xc26
	.byte	0x40
	.uleb128 0xd
	.long	.LASF101
	.byte	0xc
	.byte	0x16
	.long	0xbde
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF102
	.byte	0x6
	.value	0x7fe
	.long	0x739
	.uleb128 0xe
	.long	.LASF103
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x7ca
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF96
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF97
	.byte	0xd
	.byte	0x29
	.long	0xd58
	.byte	0x28
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0x2a
	.long	0xd5e
	.byte	0x30
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x2c
	.long	0xbf3
	.byte	0x38
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x2d
	.long	0xe88
	.byte	0x40
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x2e
	.long	0xe00
	.byte	0x48
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF112
	.byte	0x6
	.value	0x7ff
	.long	0x7d6
	.uleb128 0x10
	.long	.LASF113
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x880
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF96
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.value	0x136
	.long	0xd58
	.byte	0x28
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x137
	.long	0xd5e
	.byte	0x30
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x139
	.long	0xd64
	.byte	0x38
	.uleb128 0xf
	.long	.LASF115
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF116
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF117
	.byte	0x8
	.value	0x13c
	.long	0xd5e
	.byte	0x50
	.uleb128 0xf
	.long	.LASF118
	.byte	0x8
	.value	0x13d
	.long	0xbde
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF119
	.byte	0x6
	.value	0x800
	.long	0x88c
	.uleb128 0xe
	.long	.LASF120
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x97d
	.uleb128 0xd
	.long	.LASF84
	.byte	0xe
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0xe
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0xe
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF95
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF96
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF97
	.byte	0xe
	.byte	0x14
	.long	0xd58
	.byte	0x28
	.uleb128 0xd
	.long	.LASF98
	.byte	0xe
	.byte	0x15
	.long	0xd5e
	.byte	0x30
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x17
	.long	0xd5e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x18
	.long	0xd76
	.byte	0x40
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x19
	.long	0xd76
	.byte	0x48
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x1a
	.long	0xd8d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x1b
	.long	0xb2f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1c
	.long	0xd93
	.byte	0x60
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x1f
	.long	0xdef
	.byte	0x78
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x20
	.long	0xd87
	.byte	0x80
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x25
	.long	0xd6a
	.byte	0x88
	.uleb128 0xd
	.long	.LASF132
	.byte	0xe
	.byte	0x26
	.long	0xbfe
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF133
	.byte	0x6
	.value	0x803
	.long	0x989
	.uleb128 0x10
	.long	.LASF134
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xac2
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF96
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.value	0x176
	.long	0xd58
	.byte	0x28
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x177
	.long	0xd5e
	.byte	0x30
	.uleb128 0xf
	.long	.LASF135
	.byte	0x8
	.value	0x179
	.long	0xdc7
	.byte	0x38
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x17a
	.long	0xdc7
	.byte	0x40
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x187
	.long	0xd9f
	.byte	0x48
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x18d
	.long	0xd93
	.byte	0x78
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x18f
	.long	0xd93
	.byte	0x88
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x191
	.long	0xd93
	.byte	0x98
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF151
	.byte	0x6
	.value	0x804
	.long	0xace
	.uleb128 0xe
	.long	.LASF152
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xb2f
	.uleb128 0xd
	.long	.LASF153
	.byte	0xb
	.byte	0xf
	.long	0xea8
	.byte	0
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0x10
	.long	0xea8
	.byte	0x8
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x11
	.long	0xec2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x12
	.long	0xea8
	.byte	0x18
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.byte	0x13
	.long	0xea8
	.byte	0x20
	.uleb128 0xd
	.long	.LASF158
	.byte	0xb
	.byte	0x14
	.long	0xeeb
	.byte	0x28
	.uleb128 0xd
	.long	.LASF159
	.byte	0xb
	.byte	0x16
	.long	0xf0b
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xb3b
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xb9d
	.uleb128 0x12
	.long	.LASF160
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF161
	.byte	0x6
	.value	0x9f3
	.long	0xbf3
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF164
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF165
	.byte	0x6
	.value	0x9f7
	.long	0xc20
	.uleb128 0x12
	.long	.LASF166
	.byte	0x6
	.value	0x9f8
	.long	0xc20
	.byte	0
	.uleb128 0xb
	.long	.LASF167
	.byte	0x6
	.value	0x808
	.long	0xba9
	.uleb128 0x10
	.long	.LASF168
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xbde
	.uleb128 0xf
	.long	.LASF169
	.byte	0x8
	.value	0x4ee
	.long	0xd99
	.byte	0
	.uleb128 0xf
	.long	.LASF170
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF171
	.byte	0x8
	.value	0x4f0
	.long	0xdcd
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
	.long	.LASF172
	.byte	0xf
	.value	0x209
	.long	0xbfe
	.uleb128 0x13
	.long	0xc20
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc15
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xc3c
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF173
	.byte	0x10
	.byte	0x63
	.long	0xc47
	.uleb128 0x9
	.long	.LASF175
	.uleb128 0x5
	.long	.LASF176
	.byte	0x10
	.byte	0x65
	.long	0xc57
	.uleb128 0x6
	.byte	0x8
	.long	0xc3c
	.uleb128 0xe
	.long	.LASF177
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xc8e
	.uleb128 0xd
	.long	.LASF170
	.byte	0x9
	.byte	0x14
	.long	0xbde
	.byte	0
	.uleb128 0xd
	.long	.LASF178
	.byte	0x9
	.byte	0x15
	.long	0xbde
	.byte	0x1
	.uleb128 0xd
	.long	.LASF179
	.byte	0x9
	.byte	0x16
	.long	0xbe8
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF177
	.byte	0x9
	.byte	0x19
	.long	0xc5d
	.uleb128 0x6
	.byte	0x8
	.long	0xbf3
	.uleb128 0x6
	.byte	0x8
	.long	0xc8e
	.uleb128 0x9
	.long	.LASF180
	.uleb128 0x6
	.byte	0x8
	.long	0xca5
	.uleb128 0x9
	.long	.LASF181
	.uleb128 0x6
	.byte	0x8
	.long	0xcb0
	.uleb128 0x6
	.byte	0x8
	.long	0xbfe
	.uleb128 0x15
	.long	0xc8e
	.long	0xcd1
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.long	0xd3a
	.uleb128 0x18
	.long	.LASF182
	.sleb128 0
	.uleb128 0x18
	.long	.LASF183
	.sleb128 1
	.uleb128 0x18
	.long	.LASF184
	.sleb128 2
	.uleb128 0x18
	.long	.LASF185
	.sleb128 3
	.uleb128 0x18
	.long	.LASF186
	.sleb128 4
	.uleb128 0x18
	.long	.LASF187
	.sleb128 5
	.uleb128 0x18
	.long	.LASF188
	.sleb128 6
	.uleb128 0x18
	.long	.LASF189
	.sleb128 7
	.uleb128 0x18
	.long	.LASF190
	.sleb128 8
	.uleb128 0x18
	.long	.LASF191
	.sleb128 9
	.uleb128 0x18
	.long	.LASF192
	.sleb128 10
	.uleb128 0x18
	.long	.LASF193
	.sleb128 11
	.uleb128 0x18
	.long	.LASF194
	.sleb128 12
	.uleb128 0x18
	.long	.LASF195
	.sleb128 13
	.uleb128 0x18
	.long	.LASF196
	.sleb128 14
	.uleb128 0x18
	.long	.LASF197
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7ca
	.uleb128 0x6
	.byte	0x8
	.long	0x880
	.uleb128 0x6
	.byte	0x8
	.long	0x69c
	.uleb128 0x6
	.byte	0x8
	.long	0x72d
	.uleb128 0x6
	.byte	0x8
	.long	0x97d
	.uleb128 0x6
	.byte	0x8
	.long	0x574
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x462
	.uleb128 0xb
	.long	.LASF198
	.byte	0x8
	.value	0x150
	.long	0xbe8
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xd87
	.uleb128 0x14
	.long	0xd87
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xd7c
	.uleb128 0x6
	.byte	0x8
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x2cc
	.uleb128 0x19
	.byte	0x8
	.byte	0x8
	.value	0x184
	.long	0xdc1
	.uleb128 0x12
	.long	.LASF199
	.byte	0x8
	.value	0x185
	.long	0xdc1
	.uleb128 0x12
	.long	.LASF200
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xc4c
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF201
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF202
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xdd9
	.uleb128 0x1a
	.long	0xd76
	.uleb128 0x6
	.byte	0x8
	.long	0xdf5
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xc26
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xe1c
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xe4c
	.uleb128 0xd
	.long	.LASF203
	.byte	0xd
	.byte	0x11
	.long	0xe88
	.byte	0
	.uleb128 0xd
	.long	.LASF204
	.byte	0xd
	.byte	0x12
	.long	0xe8e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF205
	.byte	0xd
	.byte	0x13
	.long	0xc26
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xe57
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xe88
	.uleb128 0xd
	.long	.LASF206
	.byte	0xd
	.byte	0x18
	.long	0xbfe
	.byte	0
	.uleb128 0xd
	.long	.LASF207
	.byte	0xd
	.byte	0x19
	.long	0xbf3
	.byte	0x4
	.uleb128 0xd
	.long	.LASF208
	.byte	0xd
	.byte	0x1a
	.long	0xc2c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe12
	.uleb128 0x6
	.byte	0x8
	.long	0xe4c
	.uleb128 0x1b
	.long	0x57
	.long	0xea8
	.uleb128 0x14
	.long	0xc26
	.uleb128 0x14
	.long	0xd58
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe94
	.uleb128 0x1b
	.long	0xbfe
	.long	0xec2
	.uleb128 0x14
	.long	0xc26
	.uleb128 0x14
	.long	0xd58
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeae
	.uleb128 0x1b
	.long	0x57
	.long	0xeeb
	.uleb128 0x14
	.long	0xc26
	.uleb128 0x14
	.long	0xd58
	.uleb128 0x14
	.long	0xc26
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec8
	.uleb128 0x1b
	.long	0x57
	.long	0xf05
	.uleb128 0x14
	.long	0xd58
	.uleb128 0x14
	.long	0xf05
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb9d
	.uleb128 0x6
	.byte	0x8
	.long	0xef1
	.uleb128 0x6
	.byte	0x8
	.long	0xac2
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF209
	.uleb128 0xb
	.long	.LASF210
	.byte	0x6
	.value	0xe6d
	.long	0xc20
	.uleb128 0x1c
	.byte	0x4
	.byte	0x6
	.value	0xfb1
	.long	0x10c9
	.uleb128 0x18
	.long	.LASF211
	.sleb128 0
	.uleb128 0x18
	.long	.LASF212
	.sleb128 1
	.uleb128 0x18
	.long	.LASF213
	.sleb128 2
	.uleb128 0x18
	.long	.LASF214
	.sleb128 3
	.uleb128 0x18
	.long	.LASF215
	.sleb128 4
	.uleb128 0x18
	.long	.LASF216
	.sleb128 5
	.uleb128 0x18
	.long	.LASF217
	.sleb128 6
	.uleb128 0x18
	.long	.LASF218
	.sleb128 7
	.uleb128 0x18
	.long	.LASF219
	.sleb128 8
	.uleb128 0x18
	.long	.LASF220
	.sleb128 9
	.uleb128 0x18
	.long	.LASF221
	.sleb128 10
	.uleb128 0x18
	.long	.LASF222
	.sleb128 11
	.uleb128 0x18
	.long	.LASF223
	.sleb128 12
	.uleb128 0x18
	.long	.LASF224
	.sleb128 13
	.uleb128 0x18
	.long	.LASF225
	.sleb128 14
	.uleb128 0x18
	.long	.LASF226
	.sleb128 15
	.uleb128 0x18
	.long	.LASF227
	.sleb128 16
	.uleb128 0x18
	.long	.LASF228
	.sleb128 17
	.uleb128 0x18
	.long	.LASF229
	.sleb128 18
	.uleb128 0x18
	.long	.LASF230
	.sleb128 19
	.uleb128 0x18
	.long	.LASF231
	.sleb128 20
	.uleb128 0x18
	.long	.LASF232
	.sleb128 21
	.uleb128 0x18
	.long	.LASF233
	.sleb128 22
	.uleb128 0x18
	.long	.LASF234
	.sleb128 23
	.uleb128 0x18
	.long	.LASF235
	.sleb128 24
	.uleb128 0x18
	.long	.LASF236
	.sleb128 25
	.uleb128 0x18
	.long	.LASF237
	.sleb128 26
	.uleb128 0x18
	.long	.LASF238
	.sleb128 27
	.uleb128 0x18
	.long	.LASF239
	.sleb128 28
	.uleb128 0x18
	.long	.LASF240
	.sleb128 29
	.uleb128 0x18
	.long	.LASF241
	.sleb128 30
	.uleb128 0x18
	.long	.LASF242
	.sleb128 31
	.uleb128 0x18
	.long	.LASF243
	.sleb128 32
	.uleb128 0x18
	.long	.LASF244
	.sleb128 33
	.uleb128 0x18
	.long	.LASF245
	.sleb128 34
	.uleb128 0x18
	.long	.LASF246
	.sleb128 35
	.uleb128 0x18
	.long	.LASF247
	.sleb128 36
	.uleb128 0x18
	.long	.LASF248
	.sleb128 37
	.uleb128 0x18
	.long	.LASF249
	.sleb128 38
	.uleb128 0x18
	.long	.LASF250
	.sleb128 39
	.uleb128 0x18
	.long	.LASF251
	.sleb128 40
	.uleb128 0x18
	.long	.LASF252
	.sleb128 41
	.uleb128 0x18
	.long	.LASF253
	.sleb128 42
	.uleb128 0x18
	.long	.LASF254
	.sleb128 43
	.uleb128 0x18
	.long	.LASF255
	.sleb128 44
	.uleb128 0x18
	.long	.LASF256
	.sleb128 45
	.uleb128 0x18
	.long	.LASF257
	.sleb128 46
	.uleb128 0x18
	.long	.LASF258
	.sleb128 47
	.uleb128 0x18
	.long	.LASF259
	.sleb128 48
	.uleb128 0x18
	.long	.LASF260
	.sleb128 49
	.uleb128 0x18
	.long	.LASF261
	.sleb128 50
	.uleb128 0x18
	.long	.LASF262
	.sleb128 51
	.uleb128 0x18
	.long	.LASF263
	.sleb128 52
	.uleb128 0x18
	.long	.LASF264
	.sleb128 53
	.uleb128 0x18
	.long	.LASF265
	.sleb128 54
	.uleb128 0x18
	.long	.LASF266
	.sleb128 55
	.uleb128 0x18
	.long	.LASF267
	.sleb128 56
	.uleb128 0x18
	.long	.LASF268
	.sleb128 57
	.uleb128 0x18
	.long	.LASF269
	.sleb128 58
	.uleb128 0x18
	.long	.LASF270
	.sleb128 59
	.uleb128 0x18
	.long	.LASF271
	.sleb128 60
	.uleb128 0x18
	.long	.LASF272
	.sleb128 61
	.uleb128 0x18
	.long	.LASF273
	.sleb128 62
	.uleb128 0x18
	.long	.LASF274
	.sleb128 63
	.uleb128 0x18
	.long	.LASF275
	.sleb128 64
	.uleb128 0x18
	.long	.LASF276
	.sleb128 65
	.uleb128 0x18
	.long	.LASF277
	.sleb128 66
	.byte	0
	.uleb128 0x1d
	.byte	0x20
	.byte	0x1
	.byte	0x15
	.long	0x1102
	.uleb128 0xd
	.long	.LASF278
	.byte	0x1
	.byte	0x16
	.long	0xd5e
	.byte	0
	.uleb128 0xd
	.long	.LASF279
	.byte	0x1
	.byte	0x17
	.long	0xc26
	.byte	0x8
	.uleb128 0xd
	.long	.LASF280
	.byte	0x1
	.byte	0x18
	.long	0xc5
	.byte	0x10
	.uleb128 0xd
	.long	.LASF281
	.byte	0x1
	.byte	0x19
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF282
	.byte	0x1
	.byte	0x1a
	.long	0x10c9
	.uleb128 0x1e
	.long	.LASF285
	.byte	0x1
	.byte	0x33
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x118b
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x36
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF283
	.byte	0x1
	.byte	0x37
	.long	0x118b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF284
	.byte	0x1
	.byte	0x38
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0x39
	.long	0x57
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"sv"
	.byte	0x1
	.byte	0x3e
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x1e
	.long	.LASF286
	.byte	0x1
	.byte	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f2
	.uleb128 0x23
	.long	.LASF287
	.byte	0x1
	.byte	0x57
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x57
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF288
	.byte	0x1
	.byte	0x57
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"svp"
	.byte	0x1
	.byte	0x59
	.long	0xe0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.byte	0
	.uleb128 0x25
	.long	.LASF292
	.byte	0x1
	.byte	0x6e
	.long	0xc26
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1257
	.uleb128 0x23
	.long	.LASF290
	.byte	0x1
	.byte	0x6e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x6e
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF291
	.byte	0x1
	.byte	0x6e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"svp"
	.byte	0x1
	.byte	0x70
	.long	0xe0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0x71
	.long	0x57
	.byte	0
	.uleb128 0x25
	.long	.LASF293
	.byte	0x1
	.byte	0x87
	.long	0xc26
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a0
	.uleb128 0x23
	.long	.LASF294
	.byte	0x1
	.byte	0x87
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF295
	.byte	0x1
	.byte	0x89
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0x8a
	.long	0x57
	.byte	0
	.uleb128 0x25
	.long	.LASF296
	.byte	0x1
	.byte	0x9c
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f7
	.uleb128 0x23
	.long	.LASF295
	.byte	0x1
	.byte	0x9c
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF291
	.byte	0x1
	.byte	0x9c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x9e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0x9f
	.long	0x57
	.byte	0
	.uleb128 0x1e
	.long	.LASF297
	.byte	0x1
	.byte	0xac
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x13bb
	.uleb128 0x23
	.long	.LASF284
	.byte	0x1
	.byte	0xac
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF298
	.byte	0x1
	.byte	0xac
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"on"
	.byte	0x1
	.byte	0xac
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF290
	.byte	0x1
	.byte	0xac
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0xae
	.long	0x57
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1398
	.uleb128 0x20
	.long	.LASF299
	.byte	0x1
	.byte	0xb1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF300
	.byte	0x1
	.byte	0xb2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"bit"
	.byte	0x1
	.byte	0xb3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xc0
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF301
	.byte	0x1
	.byte	0xc1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF302
	.byte	0x1
	.byte	0xd0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1454
	.uleb128 0x23
	.long	.LASF295
	.byte	0x1
	.byte	0xd0
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xd2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0xd2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF303
	.byte	0x1
	.byte	0xd3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xd4
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF299
	.byte	0x1
	.byte	0xd5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0xd6
	.long	0x57
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x20
	.long	.LASF304
	.byte	0x1
	.byte	0xe1
	.long	0xbe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF305
	.byte	0x1
	.byte	0xec
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a7
	.uleb128 0x23
	.long	.LASF295
	.byte	0x1
	.byte	0xec
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF306
	.byte	0x1
	.byte	0xec
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF307
	.byte	0x1
	.byte	0xee
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.byte	0xef
	.long	0x57
	.byte	0
	.uleb128 0x28
	.long	.LASF311
	.byte	0x1
	.value	0x103
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x153c
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x103
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x105
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x105
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x105
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x105
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.value	0x10a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"hv"
	.byte	0x1
	.value	0x10c
	.long	0xd5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF312
	.byte	0x1
	.value	0x11f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1615
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x11f
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x121
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x121
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x121
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x121
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.value	0x126
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2b
	.long	.LASF288
	.byte	0x1
	.value	0x127
	.long	0xc26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0x128
	.long	0xc26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2b
	.long	.LASF306
	.byte	0x1
	.value	0x12a
	.long	0x1615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2a
	.string	"gv"
	.byte	0x1
	.value	0x12b
	.long	0xd93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2b
	.long	.LASF314
	.byte	0x1
	.value	0x12c
	.long	0xd5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x1626
	.uleb128 0x2c
	.long	0x65
	.value	0x1c3
	.byte	0
	.uleb128 0x28
	.long	.LASF315
	.byte	0x1
	.value	0x153
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1701
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x153
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x155
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x155
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x155
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x155
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x16df
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1
	.value	0x159
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF291
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF316
	.byte	0x1
	.value	0x15b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF317
	.byte	0x1
	.value	0x15c
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x168
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF319
	.byte	0x1
	.value	0x16c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x17eb
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x16c
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x16e
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x16e
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x16e
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x16e
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x17c9
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1
	.value	0x172
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x175
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x176
	.long	0x57
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x177
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x184
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x188
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x191d
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x188
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x18a
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x18a
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x18a
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x18a
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1
	.value	0x18f
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF321
	.byte	0x1
	.value	0x190
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x199
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x19a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x19a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x1
	.value	0x19a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x19b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF322
	.byte	0x1
	.value	0x19c
	.long	0x118b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x19d
	.long	0x57
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2b
	.long	.LASF304
	.byte	0x1
	.value	0x1a1
	.long	0xbe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF323
	.byte	0x1
	.value	0x1af
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a38
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x1af
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x1b1
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x1b1
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x1b1
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x1b1
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1a16
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x1b4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.long	.LASF298
	.byte	0x1
	.value	0x1b5
	.long	0xc26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1
	.value	0x1b5
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x1b6
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x1b7
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"on"
	.byte	0x1
	.value	0x1b7
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2b
	.long	.LASF290
	.byte	0x1
	.value	0x1bc
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x1cc
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF324
	.byte	0x1
	.value	0x1d2
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6c
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x1d2
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x1d4
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x1d4
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x1d4
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x1d4
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.string	"ix"
	.byte	0x1
	.value	0x1d5
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1b4a
	.uleb128 0x2b
	.long	.LASF325
	.byte	0x1
	.value	0x1d9
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x1db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.string	"on"
	.byte	0x1
	.value	0x1db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF298
	.byte	0x1
	.value	0x1dc
	.long	0xc26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF288
	.byte	0x1
	.value	0x1dc
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x1dd
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF290
	.byte	0x1
	.value	0x1dd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x1de
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x1df
	.long	0x57
	.byte	0
	.uleb128 0x22
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x1fa
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF326
	.byte	0x1
	.value	0x1fe
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cde
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x1fe
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x200
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x200
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x200
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x200
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x205
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x1
	.value	0x205
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x206
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF327
	.byte	0x1
	.value	0x207
	.long	0xe0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF328
	.byte	0x1
	.value	0x208
	.long	0x118b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x209
	.long	0x57
	.uleb128 0x22
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2b
	.long	.LASF290
	.byte	0x1
	.value	0x20f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF298
	.byte	0x1
	.value	0x210
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x218
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x218
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.string	"n_a"
	.byte	0x1
	.value	0x219
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x21a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2b
	.long	.LASF304
	.byte	0x1
	.value	0x21d
	.long	0xbe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF329
	.byte	0x1
	.value	0x22e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dba
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x22e
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x230
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x230
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x230
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x230
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1d98
	.uleb128 0x2b
	.long	.LASF330
	.byte	0x1
	.value	0x234
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF288
	.byte	0x1
	.value	0x235
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x237
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF287
	.byte	0x1
	.value	0x238
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x23e
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF331
	.byte	0x1
	.value	0x242
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e40
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x242
	.long	0xd87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x244
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x244
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x244
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x244
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x24c
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF332
	.byte	0x1
	.value	0x250
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee8
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x250
	.long	0xd87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x252
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x252
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x252
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x252
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x1ec6
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x257
	.long	0x57
	.byte	0
	.uleb128 0x22
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x25b
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF333
	.byte	0x1
	.value	0x25f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f94
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x25f
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x261
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x261
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x261
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x261
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x1f72
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1
	.value	0x265
	.long	0xc26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x26e
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF334
	.byte	0x1
	.value	0x272
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff9
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x272
	.long	0xd87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x274
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x274
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x274
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x274
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF335
	.byte	0x1
	.value	0x288
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b4
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x288
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x28a
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x28a
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x28a
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x28a
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x2092
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1
	.value	0x291
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x1
	.value	0x292
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x22
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x29a
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF336
	.byte	0x1
	.value	0x2a1
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x216e
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x2a1
	.long	0xd87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x2a3
	.long	0xe0c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x1
	.value	0x2a3
	.long	0xe0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x2a3
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x2a3
	.long	0xbf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF337
	.byte	0x1
	.value	0x2a4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x214c
	.uleb128 0x2a
	.string	"cv"
	.byte	0x1
	.value	0x2a9
	.long	0xd87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x2d6
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF338
	.byte	0x1
	.byte	0x1c
	.long	0x1102
	.uleb128 0x9
	.byte	0x3
	.quad	my_cxt
	.uleb128 0x21
	.long	.LASF339
	.byte	0x12
	.byte	0x17
	.long	0xd93
	.uleb128 0x21
	.long	.LASF340
	.byte	0x12
	.byte	0x52
	.long	0xd93
	.uleb128 0x21
	.long	.LASF341
	.byte	0x12
	.byte	0x85
	.long	0xd99
	.uleb128 0x21
	.long	.LASF342
	.byte	0x12
	.byte	0x99
	.long	0x79
	.uleb128 0x21
	.long	.LASF343
	.byte	0x12
	.byte	0xf9
	.long	0x57
	.uleb128 0x2d
	.long	.LASF344
	.byte	0x12
	.value	0x127
	.long	0x291
	.uleb128 0x21
	.long	.LASF345
	.byte	0x13
	.byte	0x22
	.long	0xe0c
	.uleb128 0x21
	.long	.LASF346
	.byte	0x13
	.byte	0x26
	.long	0xd76
	.uleb128 0x21
	.long	.LASF347
	.byte	0x13
	.byte	0x28
	.long	0xe0c
	.uleb128 0x21
	.long	.LASF348
	.byte	0x13
	.byte	0x2a
	.long	0xe0c
	.uleb128 0x21
	.long	.LASF349
	.byte	0x13
	.byte	0x2b
	.long	0xe0c
	.uleb128 0x21
	.long	.LASF350
	.byte	0x13
	.byte	0x3c
	.long	0xc99
	.uleb128 0x21
	.long	.LASF351
	.byte	0x13
	.byte	0x3d
	.long	0xc99
	.uleb128 0x21
	.long	.LASF352
	.byte	0x13
	.byte	0x43
	.long	0xc26
	.uleb128 0x21
	.long	.LASF353
	.byte	0x13
	.byte	0x7d
	.long	0xd5e
	.uleb128 0x21
	.long	.LASF354
	.byte	0x13
	.byte	0x7e
	.long	0xd5e
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF140:
	.string	"xio_page_len"
.LASF229:
	.string	"lshift_amg"
.LASF263:
	.string	"repeat_amg"
.LASF146:
	.string	"xio_bottom_name"
.LASF61:
	.string	"gp_sv"
.LASF173:
	.string	"PerlIOl"
.LASF281:
	.string	"x_opcode_debug"
.LASF17:
	.string	"op_sibling"
.LASF357:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF119:
	.string	"XPVCV"
.LASF349:
	.string	"PL_stack_max"
.LASF191:
	.string	"SVt_PVLV"
.LASF153:
	.string	"svt_get"
.LASF332:
	.string	"XS_Opcode_full_opset"
.LASF149:
	.string	"xio_type"
.LASF334:
	.string	"XS_Opcode_opcodes"
.LASF264:
	.string	"repeat_ass_amg"
.LASF120:
	.string	"xpvcv"
.LASF79:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF170:
	.string	"flags"
.LASF297:
	.string	"set_opset_bits"
.LASF183:
	.string	"SVt_IV"
.LASF72:
	.string	"gp_file"
.LASF325:
	.string	"safe"
.LASF150:
	.string	"xio_flags"
.LASF312:
	.string	"XS_Opcode__safe_call_sv"
.LASF282:
	.string	"my_cxt_t"
.LASF245:
	.string	"ncmp_amg"
.LASF253:
	.string	"not_amg"
.LASF247:
	.string	"slt_amg"
.LASF199:
	.string	"xiou_dirp"
.LASF177:
	.string	"regnode"
.LASF220:
	.string	"subtr_ass_amg"
.LASF324:
	.string	"XS_Opcode_permit_only"
.LASF164:
	.string	"any_bool"
.LASF342:
	.string	"PL_op_mask"
.LASF31:
	.string	"op_pmregexp"
.LASF249:
	.string	"sgt_amg"
.LASF340:
	.string	"PL_defgv"
.LASF105:
	.string	"xhv_fill"
.LASF48:
	.string	"precomp"
.LASF216:
	.string	"numer_amg"
.LASF101:
	.string	"xav_flags"
.LASF117:
	.string	"xgv_stash"
.LASF45:
	.string	"endp"
.LASF10:
	.string	"ssize_t"
.LASF175:
	.string	"_PerlIO"
.LASF313:
	.string	"codesv"
.LASF352:
	.string	"PL_Sv"
.LASF188:
	.string	"SVt_PVNV"
.LASF252:
	.string	"sne_amg"
.LASF227:
	.string	"pow_amg"
.LASF124:
	.string	"xcv_xsub"
.LASF219:
	.string	"subtr_amg"
.LASF311:
	.string	"XS_Opcode__safe_pkg_prep"
.LASF254:
	.string	"compl_amg"
.LASF75:
	.string	"mg_moremagic"
.LASF240:
	.string	"le_amg"
.LASF68:
	.string	"gp_cv"
.LASF274:
	.string	"iter_amg"
.LASF176:
	.string	"PerlIO"
.LASF213:
	.string	"bool__amg"
.LASF209:
	.string	"float"
.LASF107:
	.string	"xhv_keys"
.LASF47:
	.string	"substrs"
.LASF112:
	.string	"XPVGV"
.LASF318:
	.string	"tmpXSoff"
.LASF333:
	.string	"XS_Opcode_opmask_add"
.LASF226:
	.string	"modulo_ass_amg"
.LASF259:
	.string	"sin_amg"
.LASF152:
	.string	"mgvtbl"
.LASF330:
	.string	"optagsv"
.LASF126:
	.string	"xcv_gv"
.LASF223:
	.string	"div_amg"
.LASF234:
	.string	"band_ass_amg"
.LASF12:
	.string	"long long unsigned int"
.LASF323:
	.string	"XS_Opcode_opset"
.LASF337:
	.string	"file"
.LASF42:
	.string	"REGEXP"
.LASF347:
	.string	"PL_curpad"
.LASF181:
	.string	"reg_data"
.LASF168:
	.string	"clone_params"
.LASF180:
	.string	"reg_substr_data"
.LASF189:
	.string	"SVt_PVMG"
.LASF77:
	.string	"mg_private"
.LASF283:
	.string	"op_names"
.LASF89:
	.string	"xiv_iv"
.LASF8:
	.string	"char"
.LASF118:
	.string	"xgv_flags"
.LASF303:
	.string	"bitmask"
.LASF138:
	.string	"xio_lines"
.LASF289:
	.string	"Perl___notused"
.LASF66:
	.string	"gp_hv"
.LASF84:
	.string	"xpv_pv"
.LASF155:
	.string	"svt_len"
.LASF329:
	.string	"XS_Opcode_define_optag"
.LASF141:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF206:
	.string	"hek_hash"
.LASF166:
	.string	"any_dxptr"
.LASF231:
	.string	"rshift_amg"
.LASF192:
	.string	"SVt_PVAV"
.LASF113:
	.string	"xpvgv"
.LASF343:
	.string	"PL_maxo"
.LASF127:
	.string	"xcv_file"
.LASF11:
	.string	"size_t"
.LASF82:
	.string	"mg_len"
.LASF300:
	.string	"offset"
.LASF248:
	.string	"sle_amg"
.LASF212:
	.string	"abs_amg"
.LASF128:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF145:
	.string	"xio_fmt_gv"
.LASF258:
	.string	"cos_amg"
.LASF208:
	.string	"hek_key"
.LASF262:
	.string	"sqrt_amg"
.LASF280:
	.string	"x_opset_len"
.LASF335:
	.string	"XS_Opcode_opmask"
.LASF60:
	.string	"program"
.LASF250:
	.string	"sge_amg"
.LASF63:
	.string	"gp_io"
.LASF110:
	.string	"xhv_pmroot"
.LASF272:
	.string	"to_gv_amg"
.LASF287:
	.string	"optag"
.LASF102:
	.string	"XPVHV"
.LASF156:
	.string	"svt_clear"
.LASF190:
	.string	"SVt_PVBM"
.LASF278:
	.string	"x_op_named_bits"
.LASF339:
	.string	"PL_incgv"
.LASF137:
	.string	"xio_dirpu"
.LASF103:
	.string	"xpvhv"
.LASF239:
	.string	"lt_amg"
.LASF233:
	.string	"band_amg"
.LASF28:
	.string	"op_pmreplroot"
.LASF338:
	.string	"my_cxt"
.LASF218:
	.string	"add_ass_amg"
.LASF293:
	.string	"new_opset"
.LASF158:
	.string	"svt_copy"
.LASF284:
	.string	"bitmap"
.LASF86:
	.string	"xpv_len"
.LASF256:
	.string	"dec_amg"
.LASF133:
	.string	"XPVIO"
.LASF162:
	.string	"any_iv"
.LASF169:
	.string	"stashes"
.LASF55:
	.string	"prelen"
.LASF87:
	.string	"XPVIV"
.LASF277:
	.string	"max_amg_code"
.LASF314:
	.string	"dummy_hv"
.LASF210:
	.string	"DESTRUCTORFUNC_NOCONTEXT_t"
.LASF279:
	.string	"x_opset_all"
.LASF62:
	.string	"gp_refcnt"
.LASF57:
	.string	"lastparen"
.LASF134:
	.string	"xpvio"
.LASF317:
	.string	"targ"
.LASF49:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF194:
	.string	"SVt_PVCV"
.LASF88:
	.string	"xpviv"
.LASF34:
	.string	"op_pmdynflags"
.LASF52:
	.string	"sublen"
.LASF27:
	.string	"op_last"
.LASF204:
	.string	"hent_hek"
.LASF59:
	.string	"reganch"
.LASF328:
	.string	"op_desc"
.LASF299:
	.string	"myopcode"
.LASF244:
	.string	"ne_amg"
.LASF304:
	.string	"bits"
.LASF50:
	.string	"subbeg"
.LASF354:
	.string	"PL_curstash"
.LASF236:
	.string	"bor_ass_amg"
.LASF171:
	.string	"proto_perl"
.LASF74:
	.string	"magic"
.LASF261:
	.string	"log_amg"
.LASF203:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF238:
	.string	"bxor_ass_amg"
.LASF104:
	.string	"xhv_array"
.LASF214:
	.string	"nomethod_amg"
.LASF201:
	.string	"PADLIST"
.LASF142:
	.string	"xio_top_name"
.LASF267:
	.string	"copy_amg"
.LASF58:
	.string	"lastcloseparen"
.LASF14:
	.string	"double"
.LASF308:
	.string	"mark"
.LASF179:
	.string	"next_off"
.LASF76:
	.string	"mg_virtual"
.LASF228:
	.string	"pow_ass_amg"
.LASF24:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF351:
	.string	"PL_markstack_max"
.LASF286:
	.string	"put_op_bitspec"
.LASF322:
	.string	"names"
.LASF232:
	.string	"rshift_ass_amg"
.LASF81:
	.string	"mg_ptr"
.LASF344:
	.string	"PL_sv_yes"
.LASF285:
	.string	"op_names_init"
.LASF135:
	.string	"xio_ifp"
.LASF224:
	.string	"div_ass_amg"
.LASF288:
	.string	"mask"
.LASF38:
	.string	"broiled"
.LASF184:
	.string	"SVt_NV"
.LASF3:
	.string	"long unsigned int"
.LASF217:
	.string	"add_amg"
.LASF16:
	.string	"op_next"
.LASF265:
	.string	"concat_amg"
.LASF67:
	.string	"gp_egv"
.LASF269:
	.string	"to_sv_amg"
.LASF44:
	.string	"startp"
.LASF353:
	.string	"PL_defstash"
.LASF242:
	.string	"ge_amg"
.LASF309:
	.string	"items"
.LASF302:
	.string	"opmask_add"
.LASF331:
	.string	"XS_Opcode_empty_opset"
.LASF39:
	.string	"sv_any"
.LASF327:
	.string	"args"
.LASF211:
	.string	"fallback_amg"
.LASF35:
	.string	"op_pmstash"
.LASF139:
	.string	"xio_page"
.LASF200:
	.string	"xiou_any"
.LASF196:
	.string	"SVt_PVFM"
.LASF315:
	.string	"XS_Opcode_verify_opset"
.LASF29:
	.string	"op_pmreplstart"
.LASF73:
	.string	"MAGIC"
.LASF225:
	.string	"modulo_amg"
.LASF336:
	.string	"boot_Opcode"
.LASF355:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF268:
	.string	"neg_amg"
.LASF41:
	.string	"sv_flags"
.LASF36:
	.string	"PerlInterpreter"
.LASF320:
	.string	"XS_Opcode_opset_to_ops"
.LASF99:
	.string	"xav_alloc"
.LASF172:
	.string	"line_t"
.LASF109:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF230:
	.string	"lshift_ass_amg"
.LASF80:
	.string	"mg_obj"
.LASF111:
	.string	"xhv_name"
.LASF64:
	.string	"gp_form"
.LASF26:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF122:
	.string	"xcv_start"
.LASF132:
	.string	"xcv_outside_seq"
.LASF92:
	.string	"xav_array"
.LASF148:
	.string	"xio_subprocess"
.LASF294:
	.string	"old_opset"
.LASF51:
	.string	"offsets"
.LASF95:
	.string	"xof_off"
.LASF195:
	.string	"SVt_PVGV"
.LASF186:
	.string	"SVt_PV"
.LASF356:
	.string	"Opcode.c"
.LASF207:
	.string	"hek_len"
.LASF151:
	.string	"MGVTBL"
.LASF221:
	.string	"mult_amg"
.LASF296:
	.string	"verify_opset"
.LASF326:
	.string	"XS_Opcode_opdesc"
.LASF53:
	.string	"refcnt"
.LASF270:
	.string	"to_av_amg"
.LASF275:
	.string	"int_amg"
.LASF100:
	.string	"xav_arylen"
.LASF121:
	.string	"xcv_stash"
.LASF305:
	.string	"opmask_addlocal"
.LASF116:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF123:
	.string	"xcv_root"
.LASF222:
	.string	"mult_ass_amg"
.LASF43:
	.string	"regexp"
.LASF205:
	.string	"hent_val"
.LASF130:
	.string	"xcv_outside"
.LASF243:
	.string	"eq_amg"
.LASF2:
	.string	"unsigned int"
.LASF32:
	.string	"op_pmflags"
.LASF106:
	.string	"xhv_max"
.LASF129:
	.string	"xcv_padlist"
.LASF257:
	.string	"atan2_amg"
.LASF193:
	.string	"SVt_PVHV"
.LASF97:
	.string	"xmg_magic"
.LASF341:
	.string	"PL_endav"
.LASF298:
	.string	"bitspec"
.LASF7:
	.string	"sizetype"
.LASF319:
	.string	"XS_Opcode_invert_opset"
.LASF266:
	.string	"concat_ass_amg"
.LASF161:
	.string	"any_i32"
.LASF154:
	.string	"svt_set"
.LASF167:
	.string	"CLONE_PARAMS"
.LASF144:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF174:
	.string	"__dirstream"
.LASF163:
	.string	"any_long"
.LASF310:
	.string	"Package"
.LASF25:
	.string	"pmop"
.LASF93:
	.string	"xav_fill"
.LASF295:
	.string	"opset"
.LASF301:
	.string	"specbits"
.LASF290:
	.string	"opname"
.LASF178:
	.string	"type"
.LASF197:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF108:
	.string	"xhv_riter"
.LASF114:
	.string	"xgv_gp"
.LASF30:
	.string	"op_pmnext"
.LASF187:
	.string	"SVt_PVIV"
.LASF185:
	.string	"SVt_RV"
.LASF291:
	.string	"fatal"
.LASF40:
	.string	"sv_refcnt"
.LASF348:
	.string	"PL_stack_base"
.LASF246:
	.string	"scmp_amg"
.LASF96:
	.string	"xnv_nv"
.LASF306:
	.string	"op_mask_buf"
.LASF292:
	.string	"get_op_bitspec"
.LASF182:
	.string	"SVt_NULL"
.LASF131:
	.string	"xcv_flags"
.LASF70:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF78:
	.string	"mg_type"
.LASF251:
	.string	"seq_amg"
.LASF159:
	.string	"svt_dup"
.LASF147:
	.string	"xio_bottom_gv"
.LASF85:
	.string	"xpv_cur"
.LASF160:
	.string	"any_ptr"
.LASF90:
	.string	"XPVAV"
.LASF273:
	.string	"to_cv_amg"
.LASF237:
	.string	"bxor_amg"
.LASF94:
	.string	"xav_max"
.LASF157:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF202:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"op_pmpermflags"
.LASF91:
	.string	"xpvav"
.LASF98:
	.string	"xmg_stash"
.LASF65:
	.string	"gp_av"
.LASF69:
	.string	"gp_cvgen"
.LASF260:
	.string	"exp_amg"
.LASF71:
	.string	"gp_line"
.LASF54:
	.string	"minlen"
.LASF83:
	.string	"xrv_rv"
.LASF125:
	.string	"xcv_xsubany"
.LASF198:
	.string	"cv_flags_t"
.LASF235:
	.string	"bor_amg"
.LASF307:
	.string	"orig_op_mask"
.LASF136:
	.string	"xio_ofp"
.LASF215:
	.string	"string_amg"
.LASF350:
	.string	"PL_markstack_ptr"
.LASF321:
	.string	"desc"
.LASF46:
	.string	"regstclass"
.LASF143:
	.string	"xio_top_gv"
.LASF37:
	.string	"interpreter"
.LASF56:
	.string	"nparens"
.LASF316:
	.string	"RETVAL"
.LASF345:
	.string	"PL_stack_sp"
.LASF255:
	.string	"inc_amg"
.LASF241:
	.string	"gt_amg"
.LASF276:
	.string	"DESTROY_amg"
.LASF271:
	.string	"to_hv_amg"
.LASF165:
	.string	"any_dptr"
.LASF346:
	.string	"PL_op"
.LASF115:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
