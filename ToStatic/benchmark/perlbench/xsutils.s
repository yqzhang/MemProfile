	.file	"xsutils.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 xsutils.c
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
	.string	"xsutils.c"
.LC1:
	.string	"attributes::bootstrap"
	.text
	.globl	Perl_boot_core_xsutils
	.type	Perl_boot_core_xsutils, @function
Perl_boot_core_xsutils:
.LFB2:
	.file 1 "xsutils.c"
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 49 0
	movq	$.LC0, -8(%rbp)	#, file
	.loc 1 51 0
	movq	-8(%rbp), %rax	# file, tmp59
	movq	%rax, %rdx	# tmp59,
	movl	$XS_attributes_bootstrap, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newXS	#
	.loc 1 52 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_boot_core_xsutils, .-Perl_boot_core_xsutils
	.section	.rodata
.LC2:
	.string	"lvalue"
.LC3:
	.string	"locked"
.LC4:
	.string	"method"
.LC5:
	.string	"share"
	.align 8
.LC6:
	.string	"A variable may not be unshared"
.LC7:
	.string	"uniqu"
	.text
	.type	modify_SV_attributes, @function
modify_SV_attributes:
.LFB3:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# retlist, retlist
	movq	%rdx, -56(%rbp)	# attrlist, attrlist
	movl	%ecx, -60(%rbp)	# numattrs, numattrs
	.loc 1 65 0
	movl	$0, -28(%rbp)	#, nret
	jmp	.L3	#
.L35:
	.loc 1 66 0
	movq	-8(%rbp), %rax	# attr, tmp129
	movl	12(%rax), %eax	# attr_15->sv_flags, D.11000
	andl	$262144, %eax	#, D.11000
	testl	%eax, %eax	# D.11000
	je	.L4	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# attr, tmp130
	movq	(%rax), %rax	# attr_15->sv_any, D.11001
	movq	8(%rax), %rax	# MEM[(struct XPV *)_18].xpv_cur, len.1
	movq	%rax, -24(%rbp)	# len.1, len
	movq	-8(%rbp), %rax	# attr, tmp131
	movq	(%rax), %rax	# attr_15->sv_any, D.11001
	movq	(%rax), %rax	# MEM[(struct XPV *)_20].xpv_pv, iftmp.0
	jmp	.L5	#
.L4:
	.loc 1 66 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp132
	movq	-8(%rbp), %rax	# attr, tmp133
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	Perl_sv_2pv_flags	#
.L5:
	.loc 1 66 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.0, name
	.loc 1 67 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# name, tmp134
	movzbl	(%rax), %eax	# *name_23, D.11002
	cmpb	$45, %al	#, D.11002
	sete	%al	#, D.11003
	movb	%al, -29(%rbp)	# D.11003, negated
	cmpb	$0, -29(%rbp)	#, negated
	je	.L6	#,
	.loc 1 68 0
	addq	$1, -16(%rbp)	#, name
	.loc 1 69 0
	movq	-24(%rbp), %rax	# len, len.2
	subq	$1, %rax	#, len.3
	movq	%rax, -24(%rbp)	# len.3, len
.L6:
	.loc 1 71 0
	movq	-40(%rbp), %rax	# sv, tmp135
	movl	12(%rax), %eax	# sv_30(D)->sv_flags, D.11000
	movzbl	%al, %eax	# D.11000, D.11000
	cmpl	$12, %eax	#, D.11000
	jne	.L37	#,
	.loc 1 73 0
	movq	-24(%rbp), %rax	# len, len.4
	cmpl	$6, %eax	#, D.11004
	je	.L10	#,
	.loc 1 119 0
	jmp	.L25	#
.L10:
	.loc 1 86 0
	movq	-16(%rbp), %rax	# name, tmp136
	addq	$3, %rax	#, D.11005
	movzbl	(%rax), %eax	# *_35, D.11002
	movsbl	%al, %eax	# D.11002, D.11004
	cmpl	$107, %eax	#, D.11004
	je	.L12	#,
	cmpl	$108, %eax	#, D.11004
	je	.L13	#,
	cmpl	$104, %eax	#, D.11004
	je	.L14	#,
	.loc 1 117 0
	jmp	.L38	#
.L13:
	.loc 1 89 0
	movq	-16(%rbp), %rax	# name, tmp137
	movl	$6, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	memcmp	#
	testl	%eax, %eax	# D.11004
	jne	.L15	#,
	.loc 1 90 0
	cmpb	$0, -29(%rbp)	#, negated
	je	.L16	#,
	.loc 1 91 0
	movq	-40(%rbp), %rax	# sv, tmp138
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp139
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _40->xcv_flags, D.11007
	andb	$254, %dh	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _39->xcv_flags
	.loc 1 94 0
	jmp	.L18	#
.L16:
	.loc 1 93 0
	movq	-40(%rbp), %rax	# sv, tmp140
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp141
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _44->xcv_flags, D.11007
	orb	$1, %dh	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _43->xcv_flags
	.loc 1 94 0
	jmp	.L18	#
.L15:
	.loc 1 96 0
	jmp	.L11	#
.L12:
	.loc 1 99 0
	movq	-16(%rbp), %rax	# name, tmp142
	movl	$6, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	memcmp	#
	testl	%eax, %eax	# D.11004
	jne	.L19	#,
	.loc 1 100 0
	cmpb	$0, -29(%rbp)	#, negated
	je	.L20	#,
	.loc 1 101 0
	movq	-40(%rbp), %rax	# sv, tmp143
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp144
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _49->xcv_flags, D.11007
	andb	$127, %dl	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _48->xcv_flags
	.loc 1 104 0
	jmp	.L18	#
.L20:
	.loc 1 103 0
	movq	-40(%rbp), %rax	# sv, tmp145
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp146
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _53->xcv_flags, D.11007
	orb	$-128, %dl	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _52->xcv_flags
	.loc 1 104 0
	jmp	.L18	#
.L19:
	.loc 1 106 0
	jmp	.L11	#
.L14:
	.loc 1 108 0
	movq	-16(%rbp), %rax	# name, tmp147
	movl	$6, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp147,
	call	memcmp	#
	testl	%eax, %eax	# D.11004
	jne	.L22	#,
	.loc 1 109 0
	cmpb	$0, -29(%rbp)	#, negated
	je	.L23	#,
	.loc 1 110 0
	movq	-40(%rbp), %rax	# sv, tmp148
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp149
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _58->xcv_flags, D.11007
	andl	$-65, %edx	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _57->xcv_flags
	.loc 1 113 0
	jmp	.L18	#
.L23:
	.loc 1 112 0
	movq	-40(%rbp), %rax	# sv, tmp150
	movq	(%rax), %rax	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movq	-40(%rbp), %rdx	# sv, tmp151
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_30(D)].sv_any, D.11006
	movzwl	136(%rdx), %edx	# _62->xcv_flags, D.11007
	orl	$64, %edx	#, D.11007
	movw	%dx, 136(%rax)	# D.11007, _61->xcv_flags
	.loc 1 113 0
	jmp	.L18	#
.L22:
	.loc 1 115 0
	nop
.L11:
.L38:
	.loc 1 117 0
	nop
	.loc 1 119 0
	jmp	.L25	#
.L37:
	.loc 1 121 0
	movq	-24(%rbp), %rax	# len, len.5
	cmpl	$6, %eax	#, D.11004
	je	.L27	#,
	.loc 1 145 0
	jmp	.L39	#
.L27:
	.loc 1 123 0
	movq	-16(%rbp), %rax	# name, tmp152
	addq	$5, %rax	#, D.11005
	movzbl	(%rax), %eax	# *_67, D.11002
	movsbl	%al, %eax	# D.11002, D.11004
	cmpl	$100, %eax	#, D.11004
	je	.L28	#,
	cmpl	$101, %eax	#, D.11004
	je	.L29	#,
	.loc 1 145 0
	jmp	.L39	#
.L28:
	.loc 1 125 0
	movq	-16(%rbp), %rax	# name, tmp153
	movl	$5, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	memcmp	#
	testl	%eax, %eax	# D.11004
	jne	.L30	#,
	.loc 1 126 0
	cmpb	$0, -29(%rbp)	#, negated
	je	.L31	#,
	.loc 1 127 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L31:
	.loc 1 128 0
	movq	PL_sharehook(%rip), %rax	# PL_sharehook, PL_sharehook.6
	movq	-40(%rbp), %rdx	# sv, tmp154
	movq	%rdx, %rdi	# tmp154,
	call	*%rax	# PL_sharehook.6
	.loc 1 129 0
	jmp	.L18	#
.L30:
	.loc 1 131 0
	jmp	.L26	#
.L29:
	.loc 1 133 0
	movq	-16(%rbp), %rax	# name, tmp155
	movl	$5, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	memcmp	#
	testl	%eax, %eax	# D.11004
	jne	.L26	#,
	.loc 1 134 0
	movq	-40(%rbp), %rax	# sv, tmp156
	movl	12(%rax), %eax	# sv_30(D)->sv_flags, D.11000
	movzbl	%al, %eax	# D.11000, D.11000
	cmpl	$13, %eax	#, D.11000
	jne	.L32	#,
	.loc 1 135 0
	cmpb	$0, -29(%rbp)	#, negated
	je	.L33	#,
	.loc 1 136 0
	movq	-40(%rbp), %rax	# sv, tmp157
	movq	(%rax), %rax	# sv_30(D)->sv_any, D.11001
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_75].xgv_gp, D.11008
	movq	-40(%rbp), %rdx	# sv, tmp158
	movq	(%rdx), %rdx	# sv_30(D)->sv_any, D.11001
	movq	56(%rdx), %rdx	# MEM[(struct XPVGV *)_77].xgv_gp, D.11008
	movl	68(%rdx), %edx	# _78->gp_flags, D.11000
	andl	$-2, %edx	#, D.11000
	movl	%edx, 68(%rax)	# D.11000, _76->gp_flags
	jmp	.L32	#
.L33:
	.loc 1 138 0
	movq	-40(%rbp), %rax	# sv, tmp159
	movq	(%rax), %rax	# sv_30(D)->sv_any, D.11001
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_81].xgv_gp, D.11008
	movq	-40(%rbp), %rdx	# sv, tmp160
	movq	(%rdx), %rdx	# sv_30(D)->sv_any, D.11001
	movq	56(%rdx), %rdx	# MEM[(struct XPVGV *)_83].xgv_gp, D.11008
	movl	68(%rdx), %edx	# _84->gp_flags, D.11000
	orl	$1, %edx	#, D.11000
	movl	%edx, 68(%rax)	# D.11000, _82->gp_flags
	.loc 1 141 0
	jmp	.L18	#
.L32:
	jmp	.L18	#
.L26:
.L39:
	.loc 1 145 0
	nop
.L25:
	.loc 1 148 0
	movq	-48(%rbp), %rax	# retlist, retlist.7
	leaq	8(%rax), %rdx	#, tmp161
	movq	%rdx, -48(%rbp)	# tmp161, retlist
	movq	-8(%rbp), %rdx	# attr, tmp162
	movq	%rdx, (%rax)	# tmp162, *retlist.7_87
	.loc 1 149 0
	addl	$1, -28(%rbp)	#, nret
.L18:
	.loc 1 65 0
	subl	$1, -60(%rbp)	#, numattrs
.L3:
	.loc 1 65 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, numattrs
	je	.L34	#,
	.loc 1 65 0 discriminator 2
	movq	-56(%rbp), %rax	# attrlist, attrlist.8
	leaq	8(%rax), %rdx	#, tmp163
	movq	%rdx, -56(%rbp)	# tmp163, attrlist
	movq	(%rax), %rax	# *attrlist.8_13, tmp164
	movq	%rax, -8(%rbp)	# tmp164, attr
	cmpq	$0, -8(%rbp)	#, attr
	jne	.L35	#,
.L34:
	.loc 1 152 0 is_stmt 1
	movl	-28(%rbp), %eax	# nret, D.11004
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	modify_SV_attributes, .-modify_SV_attributes
	.section	.rodata
	.align 8
.LC8:
	.string	"Usage: attributes::bootstrap $module"
.LC9:
	.string	"attributes::_warn_reserved"
.LC10:
	.string	""
.LC11:
	.string	"attributes::_modify_attrs"
.LC12:
	.string	"attributes::_guess_stash"
.LC13:
	.string	"$"
.LC14:
	.string	"attributes::_fetch_attrs"
.LC15:
	.string	"attributes::reftype"
	.text
	.globl	XS_attributes_bootstrap
	.type	XS_attributes_bootstrap, @function
XS_attributes_bootstrap:
.LFB4:
	.loc 1 160 0
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
	.loc 1 161 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.9
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.10
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.12
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.12, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.11_4, D.11015
	cltq
	salq	$3, %rax	#, D.11016
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.13
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.14
	subq	%rax, %rdx	# PL_stack_base.15, D.11017
	movq	%rdx, %rax	# D.11017, D.11017
	sarq	$3, %rax	#, tmp90
	addl	$1, %eax	#, D.11018
	movl	%eax, -40(%rbp)	# D.11018, ax
	movq	%r12, %rdx	# sp, sp.16
	movq	%rbx, %rax	# mark, mark.17
	subq	%rax, %rdx	# mark.17, D.11017
	movq	%rdx, %rax	# D.11017, D.11017
	sarq	$3, %rax	#, tmp91
	movl	%eax, -36(%rbp)	# D.11017, items
	.loc 1 162 0
	movq	$.LC0, -32(%rbp)	#, file
	.loc 1 164 0
	cmpl	$1, -36(%rbp)	#, items
	jle	.L41	#,
	.loc 1 165 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L41:
	.loc 1 167 0
	movq	-32(%rbp), %rax	# file, tmp92
	movq	%rax, %rdx	# tmp92,
	movl	$XS_attributes__warn_reserved, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_newXS	#
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.11019,
	call	Perl_sv_setpv	#
	.loc 1 168 0
	movq	-32(%rbp), %rax	# file, tmp93
	movq	%rax, %rdx	# tmp93,
	movl	$XS_attributes__modify_attrs, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_newXS	#
	.loc 1 169 0
	movq	-32(%rbp), %rax	# file, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$XS_attributes__guess_stash, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newXS	#
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.11019,
	call	Perl_sv_setpv	#
	.loc 1 170 0
	movq	-32(%rbp), %rax	# file, tmp95
	movq	%rax, %rdx	# tmp95,
	movl	$XS_attributes__fetch_attrs, %esi	#,
	movl	$.LC14, %edi	#,
	call	Perl_newXS	#
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.11019,
	call	Perl_sv_setpv	#
	.loc 1 171 0
	movq	-32(%rbp), %rax	# file, tmp96
	movq	%rax, %rdx	# tmp96,
	movl	$XS_attributes_reftype, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_newXS	#
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.11019,
	call	Perl_sv_setpv	#
.LBB2:
	.loc 1 173 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.18
	movl	-40(%rbp), %edx	# ax, tmp97
	movslq	%edx, %rcx	# tmp97, D.11020
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.19
	addq	%rcx, %rdx	# D.11020, D.11020
	salq	$3, %rdx	#, D.11020
	subq	$8, %rdx	#, D.11020
	addq	%rdx, %rax	# D.11020, PL_stack_sp.20
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.20, PL_stack_sp
	nop
.LBE2:
	.loc 1 174 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	XS_attributes_bootstrap, .-XS_attributes_bootstrap
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: attributes::_modify_attrs $reference, @attributes"
	.text
	.globl	XS_attributes__modify_attrs
	.type	XS_attributes__modify_attrs, @function
XS_attributes__modify_attrs:
.LFB5:
	.loc 1 177 0
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
	.loc 1 178 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.21
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.22
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.24
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.24, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.23_4, D.11029
	cltq
	salq	$3, %rax	#, D.11030
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.25
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.26
	subq	%rax, %rdx	# PL_stack_base.27, D.11031
	movq	%rdx, %rax	# D.11031, D.11031
	sarq	$3, %rax	#, tmp113
	addl	$1, %eax	#, D.11032
	movl	%eax, -56(%rbp)	# D.11032, ax
	movq	%r12, %rdx	# sp, sp.28
	movq	%rbx, %rax	# mark, mark.29
	subq	%rax, %rdx	# mark.29, D.11031
	movq	%rdx, %rax	# D.11031, D.11031
	sarq	$3, %rax	#, tmp114
	movl	%eax, -52(%rbp)	# D.11031, items
	.loc 1 181 0
	cmpl	$0, -52(%rbp)	#, items
	jg	.L44	#,
.L45:
	.loc 1 183 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L44:
	.loc 1 187 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.30
	movl	-56(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.11030
	salq	$3, %rdx	#, D.11030
	addq	%rdx, %rax	# D.11030, D.11033
	movq	(%rax), %rax	# *_26, tmp116
	movq	%rax, -48(%rbp)	# tmp116, rv
	.loc 1 188 0
	movq	-48(%rbp), %rax	# rv, tmp117
	movl	12(%rax), %eax	# rv_27->sv_flags, D.11034
	andl	$118423552, %eax	#, D.11034
	testl	%eax, %eax	# D.11034
	je	.L45	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# rv, tmp118
	movl	12(%rax), %eax	# rv_27->sv_flags, D.11034
	andl	$524288, %eax	#, D.11034
	testl	%eax, %eax	# D.11034
	je	.L45	#,
	.loc 1 190 0 is_stmt 1
	movq	-48(%rbp), %rax	# rv, tmp119
	movq	(%rax), %rax	# rv_27->sv_any, D.11035
	movq	(%rax), %rax	# MEM[(struct XRV *)_32].xrv_rv, tmp120
	movq	%rax, -40(%rbp)	# tmp120, sv
	.loc 1 191 0
	cmpl	$1, -52(%rbp)	#, items
	jle	.L46	#,
.LBB3:
	.loc 1 192 0
	movl	-52(%rbp), %eax	# items, tmp121
	leal	-1(%rax), %ecx	#, D.11029
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.31
	movl	-56(%rbp), %edx	# ax, tmp122
	movslq	%edx, %rdx	# tmp122, D.11036
	addq	$1, %rdx	#, D.11036
	salq	$3, %rdx	#, D.11036
	addq	%rax, %rdx	# PL_stack_base.31, D.11033
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.32
	movl	-56(%rbp), %esi	# ax, tmp123
	movslq	%esi, %rsi	# tmp123, D.11030
	salq	$3, %rsi	#, D.11030
	addq	%rax, %rsi	# PL_stack_base.32, D.11033
	movq	-40(%rbp), %rax	# sv, tmp124
	movq	%rax, %rdi	# tmp124,
	call	modify_SV_attributes	#
	cltq
	movq	%rax, -32(%rbp)	# tmp125, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.33
	movl	-56(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rcx	# tmp126, D.11036
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.34
	addq	%rcx, %rdx	# D.11036, D.11036
	salq	$3, %rdx	#, D.11036
	subq	$8, %rdx	#, D.11036
	addq	%rdx, %rax	# D.11036, PL_stack_sp.35
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.35, PL_stack_sp
	jmp	.L43	#
.L46:
.LBE3:
.LBB4:
	.loc 1 194 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.36
	movl	-56(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rcx	# tmp127, D.11036
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.37
	addq	%rcx, %rdx	# D.11036, D.11036
	salq	$3, %rdx	#, D.11036
	subq	$8, %rdx	#, D.11036
	addq	%rdx, %rax	# D.11036, PL_stack_sp.38
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.38, PL_stack_sp
	nop
.L43:
.LBE4:
	.loc 1 195 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	XS_attributes__modify_attrs, .-XS_attributes__modify_attrs
	.section	.rodata
	.align 8
.LC17:
	.string	"Usage: attributes::_fetch_attrs $reference"
.LC18:
	.string	"unique"
	.text
	.globl	XS_attributes__fetch_attrs
	.type	XS_attributes__fetch_attrs, @function
XS_attributes__fetch_attrs:
.LFB6:
	.loc 1 198 0
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
	.loc 1 199 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.39
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.40
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.42
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.42, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.41_17, D.11038
	cltq
	salq	$3, %rax	#, D.11039
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.43
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.44
	subq	%rax, %rdx	# PL_stack_base.45, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	sarq	$3, %rax	#, tmp151
	addl	$1, %eax	#, D.11041
	movl	%eax, -40(%rbp)	# D.11041, ax
	movq	%rbx, %rdx	# sp, sp.46
	movq	%r12, %rax	# mark, mark.47
	subq	%rax, %rdx	# mark.47, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	sarq	$3, %rax	#, tmp152
	movl	%eax, -36(%rbp)	# D.11040, items
	.loc 1 203 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L49	#,
.L50:
	.loc 1 205 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L49:
	.loc 1 209 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.48
	movl	-40(%rbp), %edx	# ax, tmp153
	movslq	%edx, %rdx	# tmp153, D.11039
	salq	$3, %rdx	#, D.11039
	addq	%rdx, %rax	# D.11039, D.11042
	movq	(%rax), %rax	# *_39, tmp154
	movq	%rax, -32(%rbp)	# tmp154, rv
	.loc 1 210 0
	movl	-36(%rbp), %eax	# items, tmp155
	cltq
	salq	$3, %rax	#, D.11039
	negq	%rax	# D.11043
	addq	%rax, %rbx	# D.11043, sp
	.loc 1 211 0
	movq	-32(%rbp), %rax	# rv, tmp156
	movl	12(%rax), %eax	# rv_40->sv_flags, D.11044
	andl	$118423552, %eax	#, D.11044
	testl	%eax, %eax	# D.11044
	je	.L50	#,
	.loc 1 211 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# rv, tmp157
	movl	12(%rax), %eax	# rv_40->sv_flags, D.11044
	andl	$524288, %eax	#, D.11044
	testl	%eax, %eax	# D.11044
	je	.L50	#,
	.loc 1 213 0 is_stmt 1
	movq	-32(%rbp), %rax	# rv, tmp158
	movq	(%rax), %rax	# rv_40->sv_any, D.11045
	movq	(%rax), %rax	# MEM[(struct XRV *)_49].xrv_rv, tmp159
	movq	%rax, -24(%rbp)	# tmp159, sv
	.loc 1 215 0
	movq	-24(%rbp), %rax	# sv, tmp160
	movl	12(%rax), %eax	# sv_50->sv_flags, D.11044
	movzbl	%al, %eax	# D.11044, D.11044
	cmpl	$12, %eax	#, D.11044
	je	.L52	#,
	cmpl	$13, %eax	#, D.11044
	je	.L53	#,
	.loc 1 234 0
	jmp	.L62	#
.L52:
	.loc 1 217 0
	movq	-24(%rbp), %rax	# sv, tmp161
	movq	(%rax), %rax	# MEM[(struct CV *)sv_50].sv_any, D.11046
	movzwl	136(%rax), %eax	# _53->xcv_flags, tmp162
	movw	%ax, -42(%rbp)	# tmp162, cvflags
	.loc 1 218 0
	movzwl	-42(%rbp), %eax	# cvflags, D.11038
	andl	$128, %eax	#, D.11038
	testl	%eax, %eax	# D.11038
	je	.L54	#,
.LBB5:
	.loc 1 219 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.49
	movq	%rax, %rdx	# PL_stack_max.49, PL_stack_max.50
	movq	%rbx, %rax	# sp, sp.51
	subq	%rax, %rdx	# sp.51, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	cmpq	$7, %rax	#, D.11040
	jg	.L55	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L55:
	.loc 1 219 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.11047,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11047, *sp_62
.L54:
.LBE5:
	.loc 1 221 0 is_stmt 1
	movzwl	-42(%rbp), %eax	# cvflags, D.11038
	andl	$256, %eax	#, D.11038
	testl	%eax, %eax	# D.11038
	je	.L56	#,
.LBB6:
	.loc 1 222 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.52
	movq	%rax, %rdx	# PL_stack_max.52, PL_stack_max.53
	movq	%rbx, %rax	# sp, sp.54
	subq	%rax, %rdx	# sp.54, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	cmpq	$7, %rax	#, D.11040
	jg	.L57	#,
	.loc 1 222 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L57:
	.loc 1 222 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.11047,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11047, *sp_73
.L56:
.LBE6:
	.loc 1 224 0 is_stmt 1
	movzwl	-42(%rbp), %eax	# cvflags, D.11038
	andl	$64, %eax	#, D.11038
	testl	%eax, %eax	# D.11038
	je	.L58	#,
.LBB7:
	.loc 1 225 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.55
	movq	%rax, %rdx	# PL_stack_max.55, PL_stack_max.56
	movq	%rbx, %rax	# sp, sp.57
	subq	%rax, %rdx	# sp.57, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	cmpq	$7, %rax	#, D.11040
	jg	.L59	#,
	.loc 1 225 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L59:
	.loc 1 225 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC4, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.11047,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11047, *sp_84
.L58:
.LBE7:
	.loc 1 226 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp163
	movq	(%rax), %rax	# MEM[(struct CV *)sv_50].sv_any, D.11046
	movq	96(%rax), %rax	# _88->xcv_gv, D.11048
	movq	(%rax), %rax	# _89->sv_any, D.11049
	movq	56(%rax), %rax	# _90->xgv_gp, D.11050
	testq	%rax, %rax	# D.11050
	je	.L60	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp164
	movq	(%rax), %rax	# MEM[(struct CV *)sv_50].sv_any, D.11046
	movq	96(%rax), %rax	# _92->xcv_gv, D.11048
	movq	(%rax), %rax	# _93->sv_any, D.11049
	movq	56(%rax), %rax	# _94->xgv_gp, D.11050
	movl	68(%rax), %eax	# _95->gp_flags, D.11044
	andl	$1, %eax	#, D.11044
	testl	%eax, %eax	# D.11044
	je	.L60	#,
.LBB8:
	.loc 1 227 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.58
	movq	%rax, %rdx	# PL_stack_max.58, PL_stack_max.59
	movq	%rbx, %rax	# sp, sp.60
	subq	%rax, %rdx	# sp.60, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	cmpq	$7, %rax	#, D.11040
	jg	.L61	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L61:
	.loc 1 227 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.11047,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11047, *sp_103
.LBE8:
	.loc 1 228 0 is_stmt 1 discriminator 2
	jmp	.L62	#
.L60:
	.loc 1 228 0 is_stmt 0
	jmp	.L62	#
.L53:
	.loc 1 230 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp165
	movq	(%rax), %rax	# sv_50->sv_any, D.11045
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_107].xgv_gp, D.11050
	testq	%rax, %rax	# D.11050
	je	.L63	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp166
	movq	(%rax), %rax	# sv_50->sv_any, D.11045
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_109].xgv_gp, D.11050
	movl	68(%rax), %eax	# _110->gp_flags, D.11044
	andl	$1, %eax	#, D.11044
	testl	%eax, %eax	# D.11044
	je	.L63	#,
.LBB9:
	.loc 1 231 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.61
	movq	%rax, %rdx	# PL_stack_max.61, PL_stack_max.62
	movq	%rbx, %rax	# sp, sp.63
	subq	%rax, %rdx	# sp.63, D.11040
	movq	%rdx, %rax	# D.11040, D.11040
	cmpq	$7, %rax	#, D.11040
	jg	.L64	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L64:
	.loc 1 231 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.11047,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.11047, *sp_118
.LBE9:
	.loc 1 232 0 is_stmt 1 discriminator 2
	jmp	.L65	#
.L63:
.L65:
	.loc 1 232 0 is_stmt 0
	nop
.L62:
	.loc 1 237 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 238 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	XS_attributes__fetch_attrs, .-XS_attributes__fetch_attrs
	.section	.rodata
	.align 8
.LC19:
	.string	"Usage: attributes::_guess_stash $reference"
	.text
	.globl	XS_attributes__guess_stash
	.type	XS_attributes__guess_stash, @function
XS_attributes__guess_stash:
.LFB7:
	.loc 1 241 0
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
	.loc 1 242 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.64
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.65
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.67
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.67, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.66_10, D.11053
	cltq
	salq	$3, %rax	#, D.11054
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.68
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.69
	subq	%rax, %rdx	# PL_stack_base.70, D.11055
	movq	%rdx, %rax	# D.11055, D.11055
	sarq	$3, %rax	#, tmp159
	addl	$1, %eax	#, D.11056
	movl	%eax, -64(%rbp)	# D.11056, ax
	movq	%r12, %rdx	# sp, sp.71
	movq	%rbx, %rax	# mark, mark.72
	subq	%rax, %rdx	# mark.72, D.11055
	movq	%rdx, %rax	# D.11055, D.11055
	sarq	$3, %rax	#, tmp160
	movl	%eax, -60(%rbp)	# D.11055, items
	.loc 1 244 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.74
	movzbl	37(%rax), %eax	# PL_op.74_29->op_private, D.11057
	movzbl	%al, %eax	# D.11057, D.11053
	andl	$32, %eax	#, D.11053
	testl	%eax, %eax	# D.11053
	je	.L67	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.75
	movq	PL_op(%rip), %rax	# PL_op, PL_op.76
	movq	24(%rax), %rax	# PL_op.76_34->op_targ, D.11054
	salq	$3, %rax	#, D.11054
	addq	%rdx, %rax	# PL_curpad.75, D.11058
	movq	(%rax), %rax	# *_37, iftmp.73
	jmp	.L68	#
.L67:
	.loc 1 244 0 discriminator 2
	call	Perl_sv_newmortal	#
.L68:
	.loc 1 244 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.73, targ
	.loc 1 246 0 is_stmt 1 discriminator 3
	cmpl	$1, -60(%rbp)	#, items
	je	.L69	#,
.L70:
	.loc 1 248 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L69:
	.loc 1 252 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.77
	movl	-64(%rbp), %edx	# ax, tmp161
	movslq	%edx, %rdx	# tmp161, D.11054
	salq	$3, %rdx	#, D.11054
	addq	%rdx, %rax	# D.11054, D.11058
	movq	(%rax), %rax	# *_44, tmp162
	movq	%rax, -40(%rbp)	# tmp162, rv
	.loc 1 253 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.78
	movl	-64(%rbp), %edx	# ax, tmp163
	movslq	%edx, %rdx	# tmp163, D.11054
	salq	$3, %rdx	#, D.11054
	addq	%rax, %rdx	# PL_stack_base.78, D.11058
	movq	-48(%rbp), %rax	# targ, tmp164
	movq	%rax, (%rdx)	# tmp164, *_49
	.loc 1 254 0
	movq	-40(%rbp), %rax	# rv, tmp165
	movl	12(%rax), %eax	# rv_45->sv_flags, D.11059
	andl	$118423552, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L70	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# rv, tmp166
	movl	12(%rax), %eax	# rv_45->sv_flags, D.11059
	andl	$524288, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L70	#,
	.loc 1 256 0 is_stmt 1
	movq	-40(%rbp), %rax	# rv, tmp167
	movq	(%rax), %rax	# rv_45->sv_any, D.11060
	movq	(%rax), %rax	# MEM[(struct XRV *)_54].xrv_rv, tmp168
	movq	%rax, -32(%rbp)	# tmp168, sv
	.loc 1 258 0
	movq	-32(%rbp), %rax	# sv, tmp169
	movl	12(%rax), %eax	# sv_55->sv_flags, D.11059
	andl	$4096, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L71	#,
	.loc 1 259 0
	movq	-32(%rbp), %rax	# sv, tmp170
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_58].xmg_stash, D.11061
	movq	(%rax), %rax	# _59->sv_any, D.11062
	movq	80(%rax), %rdx	# _60->xhv_name, D.11063
	movq	-48(%rbp), %rax	# targ, tmp171
	movq	%rdx, %rsi	# D.11063,
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_setpv	#
	jmp	.L72	#
.L71:
.LBB10:
	.loc 1 265 0
	movq	$0, -56(%rbp)	#, stash
	.loc 1 266 0
	movq	-32(%rbp), %rax	# sv, tmp172
	movl	12(%rax), %eax	# sv_55->sv_flags, D.11059
	movzbl	%al, %eax	# D.11059, D.11059
	cmpl	$12, %eax	#, D.11059
	je	.L74	#,
	cmpl	$13, %eax	#, D.11059
	je	.L75	#,
	cmpl	$7, %eax	#, D.11059
	je	.L76	#,
	.loc 1 282 0
	jmp	.L79	#
.L74:
	.loc 1 268 0
	movq	-32(%rbp), %rax	# sv, tmp173
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_65].xcv_gv, D.11064
	testq	%rax, %rax	# D.11064
	je	.L77	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp174
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_67].xcv_gv, D.11064
	movl	12(%rax), %eax	# _68->sv_flags, D.11059
	movzbl	%al, %eax	# D.11059, D.11059
	cmpl	$13, %eax	#, D.11059
	jne	.L77	#,
	movq	-32(%rbp), %rax	# sv, tmp175
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_71].xcv_gv, D.11064
	movq	(%rax), %rax	# _72->sv_any, D.11065
	movq	80(%rax), %rax	# _73->xgv_stash, D.11061
	testq	%rax, %rax	# D.11061
	je	.L77	#,
	.loc 1 269 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp176
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_75].xcv_gv, D.11064
	movq	(%rax), %rax	# _76->sv_any, D.11065
	movq	80(%rax), %rax	# _77->xgv_stash, tmp177
	movq	%rax, -56(%rbp)	# tmp177, stash
	jmp	.L78	#
.L77:
	.loc 1 270 0
	movq	-32(%rbp), %rax	# sv, tmp178
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	56(%rax), %rax	# MEM[(struct XPVCV *)_79].xcv_stash, D.11061
	testq	%rax, %rax	# D.11061
	je	.L78	#,
	.loc 1 271 0
	movq	-32(%rbp), %rax	# sv, tmp179
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	56(%rax), %rax	# MEM[(struct XPVCV *)_81].xcv_stash, tmp180
	movq	%rax, -56(%rbp)	# tmp180, stash
	.loc 1 272 0
	jmp	.L79	#
.L78:
	jmp	.L79	#
.L76:
	.loc 1 274 0
	movq	-32(%rbp), %rax	# sv, tmp181
	movl	12(%rax), %eax	# sv_55->sv_flags, D.11059
	andl	$1048576, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L79	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp182
	movl	12(%rax), %eax	# sv_55->sv_flags, D.11059
	andl	$32768, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L79	#,
	movq	-32(%rbp), %rax	# sv, tmp183
	movl	$42, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.11066
	je	.L79	#,
.L75:
	.loc 1 278 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp184
	movq	(%rax), %rax	# sv_55->sv_any, D.11060
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_88].xgv_gp, D.11067
	testq	%rax, %rax	# D.11067
	je	.L80	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp185
	movq	(%rax), %rax	# MEM[(struct GV *)sv_55].sv_any, D.11065
	movq	56(%rax), %rax	# _90->xgv_gp, D.11067
	movq	48(%rax), %rax	# _91->gp_egv, D.11064
	testq	%rax, %rax	# D.11064
	je	.L81	#,
	movq	-32(%rbp), %rax	# sv, tmp186
	movq	(%rax), %rax	# MEM[(struct GV *)sv_55].sv_any, D.11065
	movq	56(%rax), %rax	# _93->xgv_gp, D.11067
	movq	48(%rax), %rax	# _94->gp_egv, iftmp.79
	jmp	.L82	#
.L81:
	.loc 1 278 0 discriminator 2
	movq	-32(%rbp), %rax	# sv, iftmp.79
.L82:
	.loc 1 278 0 discriminator 3
	movq	(%rax), %rax	# iftmp.79_5->sv_any, D.11065
	movq	80(%rax), %rax	# _97->xgv_stash, D.11061
	testq	%rax, %rax	# D.11061
	je	.L80	#,
	.loc 1 279 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp187
	movq	(%rax), %rax	# MEM[(struct GV *)sv_55].sv_any, D.11065
	movq	56(%rax), %rax	# _99->xgv_gp, D.11067
	movq	48(%rax), %rax	# _100->gp_egv, D.11064
	testq	%rax, %rax	# D.11064
	je	.L83	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp188
	movq	(%rax), %rax	# MEM[(struct GV *)sv_55].sv_any, D.11065
	movq	56(%rax), %rax	# _102->xgv_gp, D.11067
	movq	48(%rax), %rax	# _103->gp_egv, iftmp.80
	jmp	.L84	#
.L83:
	.loc 1 279 0 discriminator 2
	movq	-32(%rbp), %rax	# sv, iftmp.80
.L84:
	.loc 1 279 0 discriminator 3
	movq	(%rax), %rax	# iftmp.80_6->sv_any, D.11065
	movq	80(%rax), %rax	# _106->xgv_stash, tmp189
	movq	%rax, -56(%rbp)	# tmp189, stash
	.loc 1 280 0 is_stmt 1 discriminator 3
	jmp	.L87	#
.L80:
.L87:
	.loc 1 280 0 is_stmt 0
	nop
.L79:
	.loc 1 284 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, stash
	je	.L72	#,
	.loc 1 285 0
	movq	-56(%rbp), %rax	# stash, tmp190
	movq	(%rax), %rax	# stash_3->sv_any, D.11062
	movq	80(%rax), %rdx	# _108->xhv_name, D.11063
	movq	-48(%rbp), %rax	# targ, tmp191
	movq	%rdx, %rsi	# D.11063,
	movq	%rax, %rdi	# tmp191,
	call	Perl_sv_setpv	#
.L72:
.LBE10:
	.loc 1 288 0
	movq	-48(%rbp), %rax	# targ, tmp192
	movl	12(%rax), %eax	# targ_40->sv_flags, D.11059
	andl	$16384, %eax	#, D.11059
	testl	%eax, %eax	# D.11059
	je	.L85	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# targ, tmp193
	movq	%rax, %rdi	# tmp193,
	call	Perl_mg_set	#
.L85:
.LBB11:
	.loc 1 289 0 is_stmt 1
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.81
	movl	-64(%rbp), %edx	# ax, tmp194
	movslq	%edx, %rcx	# tmp194, D.11068
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.82
	addq	%rcx, %rdx	# D.11068, D.11068
	salq	$3, %rdx	#, D.11068
	subq	$8, %rdx	#, D.11068
	addq	%rdx, %rax	# D.11068, PL_stack_sp.83
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.83, PL_stack_sp
	nop
.LBE11:
	.loc 1 290 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	XS_attributes__guess_stash, .-XS_attributes__guess_stash
	.section	.rodata
	.align 8
.LC20:
	.string	"Usage: attributes::reftype $reference"
	.text
	.globl	XS_attributes_reftype
	.type	XS_attributes_reftype, @function
XS_attributes_reftype:
.LFB8:
	.loc 1 293 0
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
	.loc 1 294 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.84
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.85
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.87
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.87, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.86_5, D.11070
	cltq
	salq	$3, %rax	#, D.11071
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.88
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.89
	subq	%rax, %rdx	# PL_stack_base.90, D.11072
	movq	%rdx, %rax	# D.11072, D.11072
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.11073
	movl	%eax, -56(%rbp)	# D.11073, ax
	movq	%r12, %rdx	# sp, sp.91
	movq	%rbx, %rax	# mark, mark.92
	subq	%rax, %rdx	# mark.92, D.11072
	movq	%rdx, %rax	# D.11072, D.11072
	sarq	$3, %rax	#, tmp115
	movl	%eax, -52(%rbp)	# D.11072, items
	.loc 1 296 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.94
	movzbl	37(%rax), %eax	# PL_op.94_24->op_private, D.11074
	movzbl	%al, %eax	# D.11074, D.11070
	andl	$32, %eax	#, D.11070
	testl	%eax, %eax	# D.11070
	je	.L89	#,
	.loc 1 296 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.95
	movq	PL_op(%rip), %rax	# PL_op, PL_op.96
	movq	24(%rax), %rax	# PL_op.96_29->op_targ, D.11071
	salq	$3, %rax	#, D.11071
	addq	%rdx, %rax	# PL_curpad.95, D.11075
	movq	(%rax), %rax	# *_32, iftmp.93
	jmp	.L90	#
.L89:
	.loc 1 296 0 discriminator 2
	call	Perl_sv_newmortal	#
.L90:
	.loc 1 296 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.93, targ
	.loc 1 298 0 is_stmt 1 discriminator 3
	cmpl	$1, -52(%rbp)	#, items
	je	.L91	#,
.L92:
	.loc 1 300 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L91:
	.loc 1 304 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.97
	movl	-56(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11071
	salq	$3, %rdx	#, D.11071
	addq	%rdx, %rax	# D.11071, D.11075
	movq	(%rax), %rax	# *_39, tmp117
	movq	%rax, -40(%rbp)	# tmp117, rv
	.loc 1 305 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.98
	movl	-56(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.11071
	salq	$3, %rdx	#, D.11071
	addq	%rax, %rdx	# PL_stack_base.98, D.11075
	movq	-48(%rbp), %rax	# targ, tmp119
	movq	%rax, (%rdx)	# tmp119, *_44
	.loc 1 306 0
	movq	-40(%rbp), %rax	# rv, tmp120
	movl	12(%rax), %eax	# rv_40->sv_flags, D.11076
	andl	$8192, %eax	#, D.11076
	testl	%eax, %eax	# D.11076
	je	.L93	#,
	.loc 1 307 0
	movq	-40(%rbp), %rax	# rv, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_mg_get	#
.L93:
	.loc 1 308 0
	movq	-40(%rbp), %rax	# rv, tmp122
	movl	12(%rax), %eax	# rv_40->sv_flags, D.11076
	andl	$118423552, %eax	#, D.11076
	testl	%eax, %eax	# D.11076
	je	.L92	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# rv, tmp123
	movl	12(%rax), %eax	# rv_40->sv_flags, D.11076
	andl	$524288, %eax	#, D.11076
	testl	%eax, %eax	# D.11076
	je	.L92	#,
	.loc 1 310 0 is_stmt 1
	movq	-40(%rbp), %rax	# rv, tmp124
	movq	(%rax), %rax	# rv_40->sv_any, D.11077
	movq	(%rax), %rax	# MEM[(struct XRV *)_51].xrv_rv, tmp125
	movq	%rax, -32(%rbp)	# tmp125, sv
	.loc 1 311 0
	movq	-32(%rbp), %rax	# sv, tmp126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	Perl_sv_reftype	#
	movq	%rax, %rdx	#, D.11078
	movq	-48(%rbp), %rax	# targ, tmp127
	movq	%rdx, %rsi	# D.11078,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_setpv	#
	.loc 1 312 0
	movq	-48(%rbp), %rax	# targ, tmp128
	movl	12(%rax), %eax	# targ_35->sv_flags, D.11076
	andl	$16384, %eax	#, D.11076
	testl	%eax, %eax	# D.11076
	je	.L94	#,
	.loc 1 312 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# targ, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_mg_set	#
.L94:
.LBB12:
	.loc 1 314 0 is_stmt 1
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.99
	movl	-56(%rbp), %edx	# ax, tmp130
	movslq	%edx, %rcx	# tmp130, D.11079
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.100
	addq	%rcx, %rdx	# D.11079, D.11079
	salq	$3, %rdx	#, D.11079
	subq	$8, %rdx	#, D.11079
	addq	%rdx, %rax	# D.11079, PL_stack_sp.101
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.101, PL_stack_sp
	nop
.LBE12:
	.loc 1 315 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_attributes_reftype, .-XS_attributes_reftype
	.section	.rodata
	.align 8
.LC21:
	.string	"Usage: attributes::_warn_reserved ()"
	.text
	.globl	XS_attributes__warn_reserved
	.type	XS_attributes__warn_reserved, @function
XS_attributes__warn_reserved:
.LFB9:
	.loc 1 318 0
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
	.loc 1 319 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.102
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.103
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.105
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.105, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.104_5, D.11081
	cltq
	salq	$3, %rax	#, D.11082
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.106
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.107
	subq	%rax, %rdx	# PL_stack_base.108, D.11083
	movq	%rdx, %rax	# D.11083, D.11083
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.11084
	movl	%eax, -32(%rbp)	# D.11084, ax
	movq	%rbx, %rdx	# sp, sp.109
	movq	%r12, %rax	# mark, mark.110
	subq	%rax, %rdx	# mark.110, D.11083
	movq	%rdx, %rax	# D.11083, D.11083
	sarq	$3, %rax	#, tmp115
	movl	%eax, -28(%rbp)	# D.11083, items
	.loc 1 321 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L97	#,
	.loc 1 322 0
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L97:
	.loc 1 326 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.111
	movq	%rax, %rdx	# PL_stack_max.111, PL_stack_max.112
	movq	%rbx, %rax	# sp, sp.113
	subq	%rax, %rdx	# sp.113, D.11083
	movq	%rdx, %rax	# D.11083, D.11083
	cmpq	$7, %rax	#, D.11083
	jg	.L98	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L98:
	.loc 1 327 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.114
	movl	-32(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11082
	salq	$3, %rdx	#, D.11082
	addq	%rax, %rdx	# PL_stack_base.114, D.11085
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.116
	movq	80(%rax), %rax	# PL_curcop.116_33->cop_warnings, D.11086
	testq	%rax, %rax	# D.11086
	je	.L99	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.117
	movq	80(%rax), %rax	# PL_curcop.117_35->cop_warnings, D.11086
	cmpq	$32, %rax	#, D.11086
	je	.L99	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.118
	movq	80(%rax), %rax	# PL_curcop.118_37->cop_warnings, D.11086
	cmpq	$16, %rax	#, D.11086
	je	.L100	#,
	.loc 1 327 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.119
	movq	80(%rax), %rax	# PL_curcop.119_39->cop_warnings, D.11086
	movq	(%rax), %rax	# _40->sv_any, D.11087
	movq	(%rax), %rax	# MEM[(struct XPV *)_41].xpv_pv, D.11088
	addq	$9, %rax	#, D.11088
	movzbl	(%rax), %eax	# *_43, D.11089
	movsbl	%al, %eax	# D.11089, D.11081
	andl	$4, %eax	#, D.11081
	testl	%eax, %eax	# D.11081
	jne	.L100	#,
.L99:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.120
	movq	80(%rax), %rax	# PL_curcop.120_47->cop_warnings, D.11086
	testq	%rax, %rax	# D.11086
	jne	.L101	#,
	.loc 1 327 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.121
	movzbl	%al, %eax	# PL_dowarn.121, D.11081
	andl	$1, %eax	#, D.11081
	testl	%eax, %eax	# D.11081
	je	.L101	#,
.L100:
	movl	$PL_sv_yes, %eax	#, iftmp.115
	jmp	.L102	#
.L101:
	.loc 1 327 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.115
.L102:
	.loc 1 327 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.115, *_32
.LBB13:
	.loc 1 329 0 is_stmt 1 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.122
	movl	-32(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rcx	# tmp117, D.11090
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.123
	addq	%rcx, %rdx	# D.11090, D.11090
	salq	$3, %rdx	#, D.11090
	subq	$8, %rdx	#, D.11090
	addq	%rdx, %rax	# D.11090, PL_stack_sp.124
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.124, PL_stack_sp
	nop
.LBE13:
	.loc 1 330 0 discriminator 3
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	XS_attributes__warn_reserved, .-XS_attributes__warn_reserved
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "pad.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15ab
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF252
	.byte	0x1
	.long	.LASF253
	.long	.LASF254
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
	.long	.LASF182
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
	.long	0xe77
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xe77
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xefb
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xee5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xce9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xce9
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xcdf
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xcdf
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x17c
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x249
	.uleb128 0xd
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xe77
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xe77
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xefb
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xee5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xce9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xce9
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xcdf
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xcdf
	.byte	0x25
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xe5f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xe94
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xcff
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xcf4
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xd0a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xd27
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xd27
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x255
	.uleb128 0xe
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x343
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xe77
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xe77
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xefb
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xee5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xce9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xce9
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xcdf
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xcdf
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xe77
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xe77
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xe77
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xe77
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xf01
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xf07
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xcff
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xcff
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xcdf
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xe5f
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x34f
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x36a
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x375
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3a5
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3b0
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3e0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xe47
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3eb
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x41b
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xe4d
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x426
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x456
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xe41
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x462
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x53b
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xd9a
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xd9a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xda0
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xdab
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xdb6
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xdbc
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xcf4
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xcf4
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xcf4
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xcf4
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xcff
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xcff
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xcff
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xcff
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xdc2
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x546
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5e2
	.uleb128 0xd
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xd27
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xed4
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xe88
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xe9a
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xe5f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xe94
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xe88
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xcff
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xcff
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xd0a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x5ed
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x61d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xe3b
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x64d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xe53
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xcff
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xcff
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f5
	.long	0x659
	.uleb128 0xe
	.long	.LASF82
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6c6
	.uleb128 0xd
	.long	.LASF83
	.byte	0xc
	.byte	0x1b
	.long	0xe59
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0x1018
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xce9
	.byte	0x10
	.uleb128 0xd
	.long	.LASF86
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0x1f
	.long	0xcdf
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xd27
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x22
	.long	0xcf4
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x6d2
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x6eb
	.uleb128 0xd
	.long	.LASF91
	.byte	0x9
	.byte	0xf6
	.long	0xd27
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6f7
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x728
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x6
	.value	0x7fb
	.long	0x734
	.uleb128 0x10
	.long	.LASF96
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x79d
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x118
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x119
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x11a
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF98
	.byte	0x9
	.value	0x11b
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x11c
	.long	0xe59
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x11d
	.long	0xe5f
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF101
	.byte	0x6
	.value	0x7fd
	.long	0x7a9
	.uleb128 0xe
	.long	.LASF102
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x82e
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x11
	.long	0xe59
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0x12
	.long	0xe5f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x14
	.long	0xf0d
	.byte	0x38
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x15
	.long	0xd27
	.byte	0x40
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x16
	.long	0xcdf
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF110
	.byte	0x6
	.value	0x7fe
	.long	0x83a
	.uleb128 0xe
	.long	.LASF111
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x8cb
	.uleb128 0xd
	.long	.LASF112
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF113
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF114
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF115
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF98
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xe
	.byte	0x29
	.long	0xe59
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xe
	.byte	0x2a
	.long	0xe5f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF116
	.byte	0xe
	.byte	0x2c
	.long	0xcf4
	.byte	0x38
	.uleb128 0xd
	.long	.LASF117
	.byte	0xe
	.byte	0x2d
	.long	0xf8f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0x2e
	.long	0xf01
	.byte	0x48
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x6
	.value	0x7ff
	.long	0x8d7
	.uleb128 0x10
	.long	.LASF121
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0x981
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF98
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x136
	.long	0xe59
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x137
	.long	0xe5f
	.byte	0x30
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x139
	.long	0xe65
	.byte	0x38
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF124
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF125
	.byte	0x9
	.value	0x13c
	.long	0xe5f
	.byte	0x50
	.uleb128 0xf
	.long	.LASF126
	.byte	0x9
	.value	0x13d
	.long	0xcdf
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF127
	.byte	0x6
	.value	0x800
	.long	0x98d
	.uleb128 0xe
	.long	.LASF128
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xa7e
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF106
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF98
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xf
	.byte	0x14
	.long	0xe59
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xf
	.byte	0x15
	.long	0xe5f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF129
	.byte	0xf
	.byte	0x17
	.long	0xe5f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF130
	.byte	0xf
	.byte	0x18
	.long	0xe77
	.byte	0x40
	.uleb128 0xd
	.long	.LASF131
	.byte	0xf
	.byte	0x19
	.long	0xe77
	.byte	0x48
	.uleb128 0xd
	.long	.LASF132
	.byte	0xf
	.byte	0x1a
	.long	0xe8e
	.byte	0x50
	.uleb128 0xd
	.long	.LASF133
	.byte	0xf
	.byte	0x1b
	.long	0xc30
	.byte	0x58
	.uleb128 0xd
	.long	.LASF134
	.byte	0xf
	.byte	0x1c
	.long	0xe94
	.byte	0x60
	.uleb128 0xd
	.long	.LASF135
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x1f
	.long	0xef0
	.byte	0x78
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x20
	.long	0xe88
	.byte	0x80
	.uleb128 0xd
	.long	.LASF139
	.byte	0xf
	.byte	0x25
	.long	0xe6b
	.byte	0x88
	.uleb128 0xd
	.long	.LASF140
	.byte	0xf
	.byte	0x26
	.long	0xcff
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x6
	.value	0x803
	.long	0xa8a
	.uleb128 0x10
	.long	.LASF142
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xbc3
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF98
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x176
	.long	0xe59
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x177
	.long	0xe5f
	.byte	0x30
	.uleb128 0xf
	.long	.LASF143
	.byte	0x9
	.value	0x179
	.long	0xec8
	.byte	0x38
	.uleb128 0xf
	.long	.LASF144
	.byte	0x9
	.value	0x17a
	.long	0xec8
	.byte	0x40
	.uleb128 0xf
	.long	.LASF145
	.byte	0x9
	.value	0x187
	.long	0xea0
	.byte	0x48
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x18d
	.long	0xe94
	.byte	0x78
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x18f
	.long	0xe94
	.byte	0x88
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x191
	.long	0xe94
	.byte	0x98
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF159
	.byte	0x6
	.value	0x804
	.long	0xbcf
	.uleb128 0xe
	.long	.LASF160
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xc30
	.uleb128 0xd
	.long	.LASF161
	.byte	0xc
	.byte	0xf
	.long	0xfaf
	.byte	0
	.uleb128 0xd
	.long	.LASF162
	.byte	0xc
	.byte	0x10
	.long	0xfaf
	.byte	0x8
	.uleb128 0xd
	.long	.LASF163
	.byte	0xc
	.byte	0x11
	.long	0xfc9
	.byte	0x10
	.uleb128 0xd
	.long	.LASF164
	.byte	0xc
	.byte	0x12
	.long	0xfaf
	.byte	0x18
	.uleb128 0xd
	.long	.LASF165
	.byte	0xc
	.byte	0x13
	.long	0xfaf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF166
	.byte	0xc
	.byte	0x14
	.long	0xff2
	.byte	0x28
	.uleb128 0xd
	.long	.LASF167
	.byte	0xc
	.byte	0x16
	.long	0x1012
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xc3c
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xc9e
	.uleb128 0x12
	.long	.LASF168
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF169
	.byte	0x6
	.value	0x9f3
	.long	0xcf4
	.uleb128 0x12
	.long	.LASF170
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF172
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF173
	.byte	0x6
	.value	0x9f7
	.long	0xd21
	.uleb128 0x12
	.long	.LASF174
	.byte	0x6
	.value	0x9f8
	.long	0xd21
	.byte	0
	.uleb128 0xb
	.long	.LASF175
	.byte	0x6
	.value	0x808
	.long	0xcaa
	.uleb128 0x10
	.long	.LASF176
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xcdf
	.uleb128 0xf
	.long	.LASF177
	.byte	0x9
	.value	0x4ee
	.long	0xe9a
	.byte	0
	.uleb128 0xf
	.long	.LASF178
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF179
	.byte	0x9
	.value	0x4f0
	.long	0xece
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF180
	.byte	0x10
	.value	0x209
	.long	0xcff
	.uleb128 0x13
	.long	0xd21
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd16
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xd3d
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF181
	.byte	0x11
	.byte	0x63
	.long	0xd48
	.uleb128 0x9
	.long	.LASF183
	.uleb128 0x5
	.long	.LASF184
	.byte	0x11
	.byte	0x65
	.long	0xd58
	.uleb128 0x6
	.byte	0x8
	.long	0xd3d
	.uleb128 0xe
	.long	.LASF185
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xd8f
	.uleb128 0xd
	.long	.LASF178
	.byte	0xa
	.byte	0x14
	.long	0xcdf
	.byte	0
	.uleb128 0xd
	.long	.LASF186
	.byte	0xa
	.byte	0x15
	.long	0xcdf
	.byte	0x1
	.uleb128 0xd
	.long	.LASF187
	.byte	0xa
	.byte	0x16
	.long	0xce9
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF185
	.byte	0xa
	.byte	0x19
	.long	0xd5e
	.uleb128 0x6
	.byte	0x8
	.long	0xcf4
	.uleb128 0x6
	.byte	0x8
	.long	0xd8f
	.uleb128 0x9
	.long	.LASF188
	.uleb128 0x6
	.byte	0x8
	.long	0xda6
	.uleb128 0x9
	.long	.LASF189
	.uleb128 0x6
	.byte	0x8
	.long	0xdb1
	.uleb128 0x6
	.byte	0x8
	.long	0xcff
	.uleb128 0x15
	.long	0xd8f
	.long	0xdd2
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xe3b
	.uleb128 0x18
	.long	.LASF190
	.sleb128 0
	.uleb128 0x18
	.long	.LASF191
	.sleb128 1
	.uleb128 0x18
	.long	.LASF192
	.sleb128 2
	.uleb128 0x18
	.long	.LASF193
	.sleb128 3
	.uleb128 0x18
	.long	.LASF194
	.sleb128 4
	.uleb128 0x18
	.long	.LASF195
	.sleb128 5
	.uleb128 0x18
	.long	.LASF196
	.sleb128 6
	.uleb128 0x18
	.long	.LASF197
	.sleb128 7
	.uleb128 0x18
	.long	.LASF198
	.sleb128 8
	.uleb128 0x18
	.long	.LASF199
	.sleb128 9
	.uleb128 0x18
	.long	.LASF200
	.sleb128 10
	.uleb128 0x18
	.long	.LASF201
	.sleb128 11
	.uleb128 0x18
	.long	.LASF202
	.sleb128 12
	.uleb128 0x18
	.long	.LASF203
	.sleb128 13
	.uleb128 0x18
	.long	.LASF204
	.sleb128 14
	.uleb128 0x18
	.long	.LASF205
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8cb
	.uleb128 0x6
	.byte	0x8
	.long	0x981
	.uleb128 0x6
	.byte	0x8
	.long	0x79d
	.uleb128 0x6
	.byte	0x8
	.long	0x82e
	.uleb128 0x6
	.byte	0x8
	.long	0xa7e
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0xb
	.long	.LASF206
	.byte	0x9
	.value	0x150
	.long	0xce9
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xe88
	.uleb128 0x14
	.long	0xe88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xe7d
	.uleb128 0x6
	.byte	0x8
	.long	0x5e2
	.uleb128 0x6
	.byte	0x8
	.long	0x3a5
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xec2
	.uleb128 0x12
	.long	.LASF207
	.byte	0x9
	.value	0x185
	.long	0xec2
	.uleb128 0x12
	.long	.LASF208
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xd4d
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF209
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF210
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xeda
	.uleb128 0x1a
	.long	0xe77
	.uleb128 0x6
	.byte	0x8
	.long	0xef6
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xd27
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0xf23
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0xf53
	.uleb128 0xd
	.long	.LASF211
	.byte	0xe
	.byte	0x11
	.long	0xf8f
	.byte	0
	.uleb128 0xd
	.long	.LASF212
	.byte	0xe
	.byte	0x12
	.long	0xf95
	.byte	0x8
	.uleb128 0xd
	.long	.LASF213
	.byte	0xe
	.byte	0x13
	.long	0xd27
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0xf5e
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0xf8f
	.uleb128 0xd
	.long	.LASF214
	.byte	0xe
	.byte	0x18
	.long	0xcff
	.byte	0
	.uleb128 0xd
	.long	.LASF215
	.byte	0xe
	.byte	0x19
	.long	0xcf4
	.byte	0x4
	.uleb128 0xd
	.long	.LASF216
	.byte	0xe
	.byte	0x1a
	.long	0xd2d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf19
	.uleb128 0x6
	.byte	0x8
	.long	0xf53
	.uleb128 0x1b
	.long	0x57
	.long	0xfaf
	.uleb128 0x14
	.long	0xd27
	.uleb128 0x14
	.long	0xe59
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf9b
	.uleb128 0x1b
	.long	0xcff
	.long	0xfc9
	.uleb128 0x14
	.long	0xd27
	.uleb128 0x14
	.long	0xe59
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfb5
	.uleb128 0x1b
	.long	0x57
	.long	0xff2
	.uleb128 0x14
	.long	0xd27
	.uleb128 0x14
	.long	0xe59
	.uleb128 0x14
	.long	0xd27
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfcf
	.uleb128 0x1b
	.long	0x57
	.long	0x100c
	.uleb128 0x14
	.long	0xe59
	.uleb128 0x14
	.long	0x100c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc9e
	.uleb128 0x6
	.byte	0x8
	.long	0xff8
	.uleb128 0x6
	.byte	0x8
	.long	0xbc3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF217
	.uleb128 0xb
	.long	.LASF218
	.byte	0x6
	.value	0xcc2
	.long	0x1031
	.uleb128 0x6
	.byte	0x8
	.long	0x1037
	.uleb128 0x13
	.long	0x1042
	.uleb128 0x14
	.long	0xd27
	.byte	0
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x1
	.byte	0x2f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x106e
	.uleb128 0x1d
	.long	.LASF222
	.byte	0x1
	.byte	0x31
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF255
	.byte	0x1
	.byte	0x39
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x110f
	.uleb128 0x1f
	.string	"sv"
	.byte	0x1
	.byte	0x39
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF219
	.byte	0x1
	.byte	0x39
	.long	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF220
	.byte	0x1
	.byte	0x39
	.long	0xf0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF221
	.byte	0x1
	.byte	0x39
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.long	.LASF223
	.byte	0x1
	.byte	0x3b
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF224
	.byte	0x1
	.byte	0x3c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF225
	.byte	0x1
	.byte	0x3e
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1d
	.long	.LASF226
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x1
	.byte	0x9f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x119d
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0x9f
	.long	0xe88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"sp"
	.byte	0x1
	.byte	0xa1
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0xa1
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"ax"
	.byte	0x1
	.byte	0xa1
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x1
	.byte	0xa1
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF222
	.byte	0x1
	.byte	0xa2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.byte	0xad
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF232
	.byte	0x1
	.byte	0xb0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x126c
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0xb0
	.long	0xe88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"sp"
	.byte	0x1
	.byte	0xb2
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0xb2
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"ax"
	.byte	0x1
	.byte	0xb2
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x1
	.byte	0xb2
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"rv"
	.byte	0x1
	.byte	0xb3
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0xb3
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.byte	0xb6
	.quad	.L45
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x124b
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.byte	0xc0
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.byte	0xc2
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF233
	.byte	0x1
	.byte	0xc5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1303
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0xc5
	.long	0xe88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"sp"
	.byte	0x1
	.byte	0xc7
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0xc7
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x21
	.string	"ax"
	.byte	0x1
	.byte	0xc7
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x1
	.byte	0xc7
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.string	"rv"
	.byte	0x1
	.byte	0xc8
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0xc8
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x1
	.byte	0xc9
	.long	0xe6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.byte	0xcc
	.quad	.L50
	.byte	0
	.uleb128 0x1c
	.long	.LASF236
	.byte	0x1
	.byte	0xf0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e3
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0xf0
	.long	0xe88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"sp"
	.byte	0x1
	.byte	0xf2
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0xf2
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"ax"
	.byte	0x1
	.byte	0xf2
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x1
	.byte	0xf2
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"rv"
	.byte	0x1
	.byte	0xf3
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0xf3
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF237
	.byte	0x1
	.byte	0xf4
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.byte	0xf7
	.quad	.L70
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x13c1
	.uleb128 0x25
	.long	.LASF238
	.byte	0x1
	.value	0x109
	.long	0xe5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.long	.LASF231
	.byte	0x1
	.value	0x121
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF239
	.byte	0x1
	.value	0x124
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a7
	.uleb128 0x27
	.string	"cv"
	.byte	0x1
	.value	0x124
	.long	0xe88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x126
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF229
	.byte	0x1
	.value	0x126
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ax"
	.byte	0x1
	.value	0x126
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF230
	.byte	0x1
	.value	0x126
	.long	0xcf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"rv"
	.byte	0x1
	.value	0x127
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x127
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF237
	.byte	0x1
	.value	0x128
	.long	0xd27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF235
	.byte	0x1
	.value	0x12b
	.quad	.L92
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF231
	.byte	0x1
	.value	0x13a
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.value	0x13d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x152d
	.uleb128 0x27
	.string	"cv"
	.byte	0x1
	.value	0x13d
	.long	0xe88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x13f
	.long	0xf0d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF229
	.byte	0x1
	.value	0x13f
	.long	0xf0d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"ax"
	.byte	0x1
	.value	0x13f
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF230
	.byte	0x1
	.value	0x13f
	.long	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x25
	.long	.LASF231
	.byte	0x1
	.value	0x149
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x13
	.byte	0x34
	.long	0xcdf
	.uleb128 0x2b
	.long	.LASF242
	.byte	0x13
	.value	0x126
	.long	0x36a
	.uleb128 0x2b
	.long	.LASF243
	.byte	0x13
	.value	0x127
	.long	0x36a
	.uleb128 0x2b
	.long	.LASF244
	.byte	0x13
	.value	0x221
	.long	0x1025
	.uleb128 0x2a
	.long	.LASF245
	.byte	0x14
	.byte	0x22
	.long	0xf0d
	.uleb128 0x2a
	.long	.LASF246
	.byte	0x14
	.byte	0x26
	.long	0xe77
	.uleb128 0x2a
	.long	.LASF247
	.byte	0x14
	.byte	0x28
	.long	0xf0d
	.uleb128 0x2a
	.long	.LASF248
	.byte	0x14
	.byte	0x2a
	.long	0xf0d
	.uleb128 0x2a
	.long	.LASF249
	.byte	0x14
	.byte	0x2b
	.long	0xf0d
	.uleb128 0x2a
	.long	.LASF250
	.byte	0x14
	.byte	0x3c
	.long	0xd9a
	.uleb128 0x2a
	.long	.LASF251
	.byte	0x14
	.byte	0x81
	.long	0x15a9
	.uleb128 0x2c
	.long	0xf13
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
.LASF148:
	.string	"xio_page_len"
.LASF27:
	.string	"cop_seq"
.LASF154:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF181:
	.string	"PerlIOl"
.LASF224:
	.string	"name"
.LASF254:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF127:
	.string	"XPVCV"
.LASF249:
	.string	"PL_stack_max"
.LASF199:
	.string	"SVt_PVLV"
.LASF161:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF157:
	.string	"xio_type"
.LASF128:
	.string	"xpvcv"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF178:
	.string	"flags"
.LASF113:
	.string	"xhv_fill"
.LASF191:
	.string	"SVt_IV"
.LASF80:
	.string	"gp_file"
.LASF158:
	.string	"xio_flags"
.LASF197:
	.string	"SVt_PVMG"
.LASF207:
	.string	"xiou_dirp"
.LASF185:
	.string	"regnode"
.LASF172:
	.string	"any_bool"
.LASF251:
	.string	"PL_curcop"
.LASF253:
	.string	"xsutils.c"
.LASF39:
	.string	"op_pmregexp"
.LASF209:
	.string	"PADLIST"
.LASF56:
	.string	"precomp"
.LASF241:
	.string	"PL_dowarn"
.LASF109:
	.string	"xav_flags"
.LASF125:
	.string	"xgv_stash"
.LASF53:
	.string	"endp"
.LASF10:
	.string	"ssize_t"
.LASF183:
	.string	"_PerlIO"
.LASF28:
	.string	"cop_arybase"
.LASF196:
	.string	"SVt_PVNV"
.LASF239:
	.string	"XS_attributes_reftype"
.LASF132:
	.string	"xcv_xsub"
.LASF83:
	.string	"mg_moremagic"
.LASF76:
	.string	"gp_cv"
.LASF236:
	.string	"XS_attributes__guess_stash"
.LASF105:
	.string	"xav_max"
.LASF184:
	.string	"PerlIO"
.LASF217:
	.string	"float"
.LASF115:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF231:
	.string	"tmpXSoff"
.LASF160:
	.string	"mgvtbl"
.LASF135:
	.string	"xcv_file"
.LASF134:
	.string	"xcv_gv"
.LASF220:
	.string	"attrlist"
.LASF12:
	.string	"long long unsigned int"
.LASF234:
	.string	"cvflags"
.LASF248:
	.string	"PL_stack_base"
.LASF222:
	.string	"file"
.LASF50:
	.string	"REGEXP"
.LASF189:
	.string	"reg_data"
.LASF176:
	.string	"clone_params"
.LASF188:
	.string	"reg_substr_data"
.LASF223:
	.string	"attr"
.LASF85:
	.string	"mg_private"
.LASF97:
	.string	"xiv_iv"
.LASF126:
	.string	"xgv_flags"
.LASF146:
	.string	"xio_lines"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF92:
	.string	"xpv_pv"
.LASF120:
	.string	"XPVGV"
.LASF227:
	.string	"Perl_boot_core_xsutils"
.LASF149:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF214:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF200:
	.string	"SVt_PVAV"
.LASF121:
	.string	"xpvgv"
.LASF180:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF90:
	.string	"mg_len"
.LASF88:
	.string	"mg_obj"
.LASF136:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF153:
	.string	"xio_fmt_gv"
.LASF247:
	.string	"PL_curpad"
.LASF216:
	.string	"hek_key"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF118:
	.string	"xhv_pmroot"
.LASF219:
	.string	"retlist"
.LASF221:
	.string	"numattrs"
.LASF110:
	.string	"XPVHV"
.LASF164:
	.string	"svt_clear"
.LASF198:
	.string	"SVt_PVBM"
.LASF242:
	.string	"PL_sv_no"
.LASF255:
	.string	"modify_SV_attributes"
.LASF145:
	.string	"xio_dirpu"
.LASF111:
	.string	"xpvhv"
.LASF36:
	.string	"op_pmreplroot"
.LASF42:
	.string	"op_pmdynflags"
.LASF166:
	.string	"svt_copy"
.LASF94:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF141:
	.string	"XPVIO"
.LASF170:
	.string	"any_iv"
.LASF177:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF142:
	.string	"xpvio"
.LASF237:
	.string	"targ"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF202:
	.string	"SVt_PVCV"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF212:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF190:
	.string	"SVt_NULL"
.LASF58:
	.string	"subbeg"
.LASF17:
	.string	"op_sibling"
.LASF179:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF211:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF112:
	.string	"xhv_array"
.LASF150:
	.string	"xio_top_name"
.LASF66:
	.string	"lastcloseparen"
.LASF229:
	.string	"mark"
.LASF187:
	.string	"next_off"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF32:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF119:
	.string	"xhv_name"
.LASF89:
	.string	"mg_ptr"
.LASF243:
	.string	"PL_sv_yes"
.LASF143:
	.string	"xio_ifp"
.LASF218:
	.string	"share_proc_t"
.LASF46:
	.string	"broiled"
.LASF192:
	.string	"SVt_NV"
.LASF16:
	.string	"op_next"
.LASF75:
	.string	"gp_egv"
.LASF52:
	.string	"startp"
.LASF228:
	.string	"XS_attributes_bootstrap"
.LASF230:
	.string	"items"
.LASF26:
	.string	"cop_filegv"
.LASF47:
	.string	"sv_any"
.LASF25:
	.string	"cop_stash"
.LASF43:
	.string	"op_pmstash"
.LASF147:
	.string	"xio_page"
.LASF208:
	.string	"xiou_any"
.LASF204:
	.string	"SVt_PVFM"
.LASF174:
	.string	"any_dxptr"
.LASF81:
	.string	"MAGIC"
.LASF163:
	.string	"svt_len"
.LASF252:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF107:
	.string	"xav_alloc"
.LASF117:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF130:
	.string	"xcv_start"
.LASF140:
	.string	"xcv_outside_seq"
.LASF103:
	.string	"xav_array"
.LASF96:
	.string	"xpvmg"
.LASF156:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF106:
	.string	"xof_off"
.LASF203:
	.string	"SVt_PVGV"
.LASF194:
	.string	"SVt_PV"
.LASF215:
	.string	"hek_len"
.LASF159:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF61:
	.string	"refcnt"
.LASF108:
	.string	"xav_arylen"
.LASF129:
	.string	"xcv_stash"
.LASF124:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF235:
	.string	"usage"
.LASF131:
	.string	"xcv_root"
.LASF51:
	.string	"regexp"
.LASF213:
	.string	"hent_val"
.LASF138:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF114:
	.string	"xhv_max"
.LASF137:
	.string	"xcv_padlist"
.LASF201:
	.string	"SVt_PVHV"
.LASF99:
	.string	"xmg_magic"
.LASF244:
	.string	"PL_sharehook"
.LASF233:
	.string	"XS_attributes__fetch_attrs"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF169:
	.string	"any_i32"
.LASF162:
	.string	"svt_set"
.LASF175:
	.string	"CLONE_PARAMS"
.LASF152:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF182:
	.string	"__dirstream"
.LASF171:
	.string	"any_long"
.LASF238:
	.string	"stash"
.LASF33:
	.string	"pmop"
.LASF104:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF225:
	.string	"negated"
.LASF186:
	.string	"type"
.LASF205:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF116:
	.string	"xhv_riter"
.LASF122:
	.string	"xgv_gp"
.LASF38:
	.string	"op_pmnext"
.LASF195:
	.string	"SVt_PVIV"
.LASF193:
	.string	"SVt_RV"
.LASF48:
	.string	"sv_refcnt"
.LASF98:
	.string	"xnv_nv"
.LASF232:
	.string	"XS_attributes__modify_attrs"
.LASF139:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF240:
	.string	"XS_attributes__warn_reserved"
.LASF167:
	.string	"svt_dup"
.LASF155:
	.string	"xio_bottom_gv"
.LASF24:
	.string	"cop_label"
.LASF93:
	.string	"xpv_cur"
.LASF168:
	.string	"any_ptr"
.LASF101:
	.string	"XPVAV"
.LASF165:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF210:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"op_pmpermflags"
.LASF102:
	.string	"xpvav"
.LASF100:
	.string	"xmg_stash"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF91:
	.string	"xrv_rv"
.LASF133:
	.string	"xcv_xsubany"
.LASF206:
	.string	"cv_flags_t"
.LASF144:
	.string	"xio_ofp"
.LASF250:
	.string	"PL_markstack_ptr"
.LASF54:
	.string	"regstclass"
.LASF151:
	.string	"xio_top_gv"
.LASF64:
	.string	"nparens"
.LASF95:
	.string	"XPVMG"
.LASF245:
	.string	"PL_stack_sp"
.LASF226:
	.string	"nret"
.LASF173:
	.string	"any_dptr"
.LASF246:
	.string	"PL_op"
.LASF123:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
