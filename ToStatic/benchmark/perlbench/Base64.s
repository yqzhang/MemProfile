	.file	"Base64.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Base64.c
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
	.local	local_patches
	.comm	local_patches,16,16
	.data
	.align 32
	.type	basis_64, @object
	.size	basis_64, 65
basis_64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.align 32
	.type	index_64, @object
	.size	index_64, 256
index_64:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	62
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	63
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: MIME::Base64::encode_base64(sv, ...)"
.LC1:
	.string	"\n"
	.text
	.globl	XS_MIME__Base64_encode_base64
	.type	XS_MIME__Base64_encode_base64, @function
XS_MIME__Base64_encode_base64:
.LFB2:
	.file 1 "Base64.c"
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)	# cv, cv
	.loc 1 125 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.3
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.3, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.2_23, D.11259
	cltq
	salq	$3, %rax	#, D.11260
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.5
	subq	%rax, %rdx	# PL_stack_base.6, D.11261
	movq	%rdx, %rax	# D.11261, D.11261
	sarq	$3, %rax	#, tmp212
	addl	$1, %eax	#, D.11262
	movl	%eax, -128(%rbp)	# D.11262, ax
	movq	%r12, %rdx	# sp, sp.7
	movq	%rbx, %rax	# mark, mark.8
	subq	%rax, %rdx	# mark.8, D.11261
	movq	%rdx, %rax	# D.11261, D.11261
	sarq	$3, %rax	#, tmp213
	movl	%eax, -124(%rbp)	# D.11261, items
	.loc 1 126 0
	cmpl	$0, -124(%rbp)	#, items
	jg	.L2	#,
	.loc 1 127 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L2:
.LBB2:
	.loc 1 129 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.9
	movl	-128(%rbp), %edx	# ax, tmp214
	movslq	%edx, %rdx	# tmp214, D.11260
	salq	$3, %rdx	#, D.11260
	addq	%rdx, %rax	# D.11260, D.11263
	movq	(%rax), %rax	# *_45, tmp215
	movq	%rax, -56(%rbp)	# tmp215, sv
	.loc 1 144 0
	movq	-56(%rbp), %rax	# sv, tmp216
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	Perl_sv_utf8_downgrade	#
	.loc 1 146 0
	movq	-56(%rbp), %rax	# sv, tmp217
	movl	12(%rax), %eax	# sv_46->sv_flags, D.11264
	andl	$262144, %eax	#, D.11264
	testl	%eax, %eax	# D.11264
	je	.L3	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp218
	movq	(%rax), %rax	# sv_46->sv_any, D.11265
	movq	8(%rax), %rax	# MEM[(struct XPV *)_49].xpv_cur, rlen.11
	movq	%rax, -112(%rbp)	# rlen.11, rlen
	movq	-56(%rbp), %rax	# sv, tmp219
	movq	(%rax), %rax	# sv_46->sv_any, D.11265
	movq	(%rax), %rax	# MEM[(struct XPV *)_51].xpv_pv, iftmp.10
	jmp	.L4	#
.L3:
	.loc 1 146 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp220
	movq	-56(%rbp), %rax	# sv, tmp221
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	Perl_sv_2pv_flags	#
.L4:
	.loc 1 146 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.10, str
	.loc 1 147 0 is_stmt 1 discriminator 3
	movq	-112(%rbp), %rax	# rlen, rlen.12
	movq	%rax, -96(%rbp)	# rlen.12, len
	.loc 1 150 0 discriminator 3
	cmpl	$1, -124(%rbp)	#, items
	jle	.L5	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.13
	movl	-128(%rbp), %edx	# ax, tmp222
	movslq	%edx, %rdx	# tmp222, D.11266
	addq	$1, %rdx	#, D.11266
	salq	$3, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, D.11263
	movq	(%rax), %rax	# *_61, D.11267
	movl	12(%rax), %eax	# _62->sv_flags, D.11264
	andl	$118423552, %eax	#, D.11264
	testl	%eax, %eax	# D.11264
	je	.L5	#,
	.loc 1 151 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.15
	movl	-128(%rbp), %edx	# ax, tmp223
	movslq	%edx, %rdx	# tmp223, D.11266
	addq	$1, %rdx	#, D.11266
	salq	$3, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, D.11263
	movq	(%rax), %rax	# *_69, D.11267
	movl	12(%rax), %eax	# _70->sv_flags, D.11264
	andl	$262144, %eax	#, D.11264
	testl	%eax, %eax	# D.11264
	je	.L6	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.16
	movl	-128(%rbp), %edx	# ax, tmp224
	movslq	%edx, %rdx	# tmp224, D.11266
	addq	$1, %rdx	#, D.11266
	salq	$3, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, D.11263
	movq	(%rax), %rax	# *_77, D.11267
	movq	(%rax), %rax	# _78->sv_any, D.11265
	movq	8(%rax), %rax	# MEM[(struct XPV *)_79].xpv_cur, eollen.17
	movq	%rax, -120(%rbp)	# eollen.17, eollen
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.18
	movl	-128(%rbp), %edx	# ax, tmp225
	movslq	%edx, %rdx	# tmp225, D.11266
	addq	$1, %rdx	#, D.11266
	salq	$3, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, D.11263
	movq	(%rax), %rax	# *_85, D.11267
	movq	(%rax), %rax	# _86->sv_any, D.11265
	movq	(%rax), %rax	# MEM[(struct XPV *)_87].xpv_pv, iftmp.14
	jmp	.L7	#
.L6:
	.loc 1 151 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.19
	movl	-128(%rbp), %edx	# ax, tmp226
	movslq	%edx, %rdx	# tmp226, D.11266
	addq	$1, %rdx	#, D.11266
	salq	$3, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, D.11263
	movq	(%rax), %rax	# *_93, D.11267
	leaq	-120(%rbp), %rcx	#, tmp227
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# D.11267,
	call	Perl_sv_2pv_flags	#
.L7:
	.loc 1 151 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.14, eol
	jmp	.L8	#
.L5:
	.loc 1 153 0 is_stmt 1
	movq	$.LC1, -88(%rbp)	#, eol
	.loc 1 154 0
	movq	$1, -120(%rbp)	#, eollen
.L8:
	.loc 1 158 0
	movq	-96(%rbp), %rax	# len, tmp228
	leaq	2(%rax), %rcx	#, D.11261
	movabsq	$6148914691236517206, %rdx	#, tmp230
	movq	%rcx, %rax	# D.11261, tmp280
	imulq	%rdx	# tmp230
	movq	%rcx, %rax	# D.11261, tmp231
	sarq	$63, %rax	#, tmp231
	subq	%rax, %rdx	# tmp231, D.11261
	movq	%rdx, %rax	# D.11261, D.11261
	salq	$2, %rax	#, D.11261
	movq	%rax, -112(%rbp)	# rlen.20, rlen
	.loc 1 159 0
	movq	-112(%rbp), %rax	# rlen, rlen.21
	testq	%rax, %rax	# rlen.21
	je	.L9	#,
	.loc 1 161 0
	movq	-112(%rbp), %rax	# rlen, rlen.22
	subq	$1, %rax	#, D.11260
	movabsq	$-2912643801112034465, %rdx	#, tmp233
	mulq	%rdx	# tmp233
	movq	%rdx, %rax	# tmp232, D.11260
	shrq	$6, %rax	#, D.11260
	leaq	1(%rax), %rdx	#, D.11260
	movq	-120(%rbp), %rax	# eollen, eollen.23
	imulq	%rax, %rdx	# eollen.23, D.11260
	movq	-112(%rbp), %rax	# rlen, rlen.24
	addq	%rdx, %rax	# D.11260, rlen.25
	movq	%rax, -112(%rbp)	# rlen.25, rlen
.L9:
	.loc 1 165 0
	movq	-112(%rbp), %rax	# rlen, rlen.27
	testq	%rax, %rax	# rlen.27
	je	.L10	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# rlen, iftmp.26
	jmp	.L11	#
.L10:
	.loc 1 165 0 discriminator 2
	movl	$1, %eax	#, iftmp.26
.L11:
	.loc 1 165 0 discriminator 3
	movq	%rax, %rdi	# iftmp.26,
	call	Perl_newSV	#
	movq	%rax, -48(%rbp)	# tmp234, RETVAL
	.loc 1 166 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp235
	movl	12(%rax), %eax	# RETVAL_114->sv_flags, D.11264
	orl	$67371008, %eax	#, D.11264
	movl	%eax, %edx	# D.11264, D.11264
	movq	-48(%rbp), %rax	# RETVAL, tmp236
	movl	%edx, 12(%rax)	# D.11264, RETVAL_114->sv_flags
	.loc 1 167 0 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp237
	movq	(%rax), %rax	# RETVAL_114->sv_any, D.11265
	movq	-112(%rbp), %rdx	# rlen, rlen.28
	movq	%rdx, 8(%rax)	# rlen.28, MEM[(struct XPV *)_117].xpv_cur
	.loc 1 168 0 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp238
	movq	(%rax), %rax	# RETVAL_114->sv_any, D.11265
	movq	(%rax), %rax	# MEM[(struct XPV *)_119].xpv_pv, tmp239
	movq	%rax, -80(%rbp)	# tmp239, r
	.loc 1 171 0 discriminator 3
	movl	$0, -132(%rbp)	#, chunk
	jmp	.L12	#
.L21:
	.loc 1 172 0
	cmpl	$19, -132(%rbp)	#, chunk
	jne	.L13	#,
.LBB3:
	.loc 1 173 0
	movq	-88(%rbp), %rax	# eol, tmp240
	movq	%rax, -72(%rbp)	# tmp240, c
	.loc 1 174 0
	movq	-120(%rbp), %rdx	# eollen, eollen.29
	movq	-88(%rbp), %rax	# eol, tmp244
	addq	%rdx, %rax	# eollen.29, tmp243
	movq	%rax, -40(%rbp)	# tmp243, e
	.loc 1 175 0
	jmp	.L14	#
.L15:
	.loc 1 176 0
	movq	-80(%rbp), %rax	# r, r.30
	leaq	1(%rax), %rdx	#, tmp245
	movq	%rdx, -80(%rbp)	# tmp245, r
	movq	-72(%rbp), %rdx	# c, c.31
	leaq	1(%rdx), %rcx	#, tmp246
	movq	%rcx, -72(%rbp)	# tmp246, c
	movzbl	(%rdx), %edx	# *c.31_127, D.11268
	movb	%dl, (%rax)	# D.11268, *r.30_125
.L14:
	.loc 1 175 0 discriminator 1
	movq	-72(%rbp), %rax	# c, tmp247
	cmpq	-40(%rbp), %rax	# e, tmp247
	jb	.L15	#,
	.loc 1 177 0
	movl	$0, -132(%rbp)	#, chunk
.L13:
.LBE3:
	.loc 1 179 0
	movq	-104(%rbp), %rax	# str, str.32
	leaq	1(%rax), %rdx	#, tmp248
	movq	%rdx, -104(%rbp)	# tmp248, str
	movzbl	(%rax), %eax	# *str.32_131, D.11268
	movb	%al, -135(%rbp)	# D.11268, c1
	.loc 1 180 0
	cmpq	$1, -96(%rbp)	#, len
	jle	.L16	#,
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# str, str.34
	leaq	1(%rax), %rdx	#, tmp249
	movq	%rdx, -104(%rbp)	# tmp249, str
	movzbl	(%rax), %eax	# *str.34_135, D.11268
	jmp	.L17	#
.L16:
	.loc 1 180 0 discriminator 2
	movl	$0, %eax	#, iftmp.33
.L17:
	.loc 1 180 0 discriminator 3
	movb	%al, -134(%rbp)	# iftmp.33, c2
	.loc 1 181 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# r, r.35
	leaq	1(%rax), %rdx	#, tmp250
	movq	%rdx, -80(%rbp)	# tmp250, r
	movzbl	-135(%rbp), %edx	# c1, tmp251
	shrb	$2, %dl	#, D.11269
	movzbl	%dl, %edx	# D.11269, D.11259
	movslq	%edx, %rdx	# D.11259, tmp252
	movzbl	basis_64(%rdx), %edx	# basis_64, D.11268
	movb	%dl, (%rax)	# D.11268, *r.35_141
	.loc 1 182 0 discriminator 3
	movq	-80(%rbp), %rax	# r, r.36
	leaq	1(%rax), %rdx	#, tmp253
	movq	%rdx, -80(%rbp)	# tmp253, r
	movzbl	-135(%rbp), %edx	# c1, D.11259
	andl	$3, %edx	#, D.11259
	movl	%edx, %ecx	# D.11259, D.11259
	sall	$4, %ecx	#, D.11259
	movzbl	-134(%rbp), %edx	# c2, tmp254
	shrb	$4, %dl	#, D.11269
	movzbl	%dl, %edx	# D.11269, D.11259
	orl	%ecx, %edx	# D.11259, D.11259
	movslq	%edx, %rdx	# D.11259, tmp255
	movzbl	basis_64(%rdx), %edx	# basis_64, D.11268
	movb	%dl, (%rax)	# D.11268, *r.36_146
	.loc 1 183 0 discriminator 3
	cmpq	$2, -96(%rbp)	#, len
	jle	.L18	#,
	.loc 1 184 0
	movq	-104(%rbp), %rax	# str, str.37
	leaq	1(%rax), %rdx	#, tmp256
	movq	%rdx, -104(%rbp)	# tmp256, str
	movzbl	(%rax), %eax	# *str.37_155, D.11268
	movb	%al, -133(%rbp)	# D.11268, c3
	.loc 1 185 0
	movq	-80(%rbp), %rax	# r, r.38
	leaq	1(%rax), %rdx	#, tmp257
	movq	%rdx, -80(%rbp)	# tmp257, r
	movzbl	-134(%rbp), %edx	# c2, D.11259
	andl	$15, %edx	#, D.11259
	leal	0(,%rdx,4), %ecx	#, D.11259
	movzbl	-133(%rbp), %edx	# c3, tmp258
	shrb	$6, %dl	#, D.11269
	movzbl	%dl, %edx	# D.11269, D.11259
	orl	%ecx, %edx	# D.11259, D.11259
	movslq	%edx, %rdx	# D.11259, tmp259
	movzbl	basis_64(%rdx), %edx	# basis_64, D.11268
	movb	%dl, (%rax)	# D.11268, *r.38_159
	.loc 1 186 0
	movq	-80(%rbp), %rax	# r, r.39
	leaq	1(%rax), %rdx	#, tmp260
	movq	%rdx, -80(%rbp)	# tmp260, r
	movzbl	-133(%rbp), %edx	# c3, D.11259
	andl	$63, %edx	#, D.11259
	movslq	%edx, %rdx	# D.11259, tmp261
	movzbl	basis_64(%rdx), %edx	# basis_64, D.11268
	movb	%dl, (%rax)	# D.11268, *r.39_168
	jmp	.L19	#
.L18:
	.loc 1 187 0
	cmpq	$2, -96(%rbp)	#, len
	jne	.L20	#,
	.loc 1 188 0
	movq	-80(%rbp), %rax	# r, r.40
	leaq	1(%rax), %rdx	#, tmp262
	movq	%rdx, -80(%rbp)	# tmp262, r
	movzbl	-134(%rbp), %edx	# c2, D.11259
	andl	$15, %edx	#, D.11259
	sall	$2, %edx	#, D.11259
	movslq	%edx, %rdx	# D.11259, tmp263
	movzbl	basis_64(%rdx), %edx	# basis_64, D.11268
	movb	%dl, (%rax)	# D.11268, *r.40_173
	.loc 1 189 0
	movq	-80(%rbp), %rax	# r, r.41
	leaq	1(%rax), %rdx	#, tmp264
	movq	%rdx, -80(%rbp)	# tmp264, r
	movb	$61, (%rax)	#, *r.41_179
	jmp	.L19	#
.L20:
	.loc 1 191 0
	movq	-80(%rbp), %rax	# r, r.42
	leaq	1(%rax), %rdx	#, tmp265
	movq	%rdx, -80(%rbp)	# tmp265, r
	movb	$61, (%rax)	#, *r.42_181
	.loc 1 192 0
	movq	-80(%rbp), %rax	# r, r.43
	leaq	1(%rax), %rdx	#, tmp266
	movq	%rdx, -80(%rbp)	# tmp266, r
	movb	$61, (%rax)	#, *r.43_183
.L19:
	.loc 1 171 0
	subq	$3, -96(%rbp)	#, len
	addl	$1, -132(%rbp)	#, chunk
.L12:
	.loc 1 171 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, len
	jg	.L21	#,
	.loc 1 195 0 is_stmt 1
	movq	-112(%rbp), %rax	# rlen, rlen.44
	testq	%rax, %rax	# rlen.44
	je	.L22	#,
.LBB4:
	.loc 1 197 0
	movq	-88(%rbp), %rax	# eol, tmp267
	movq	%rax, -64(%rbp)	# tmp267, c
	.loc 1 198 0
	movq	-120(%rbp), %rdx	# eollen, eollen.45
	movq	-88(%rbp), %rax	# eol, tmp271
	addq	%rdx, %rax	# eollen.45, tmp270
	movq	%rax, -32(%rbp)	# tmp270, e
	.loc 1 199 0
	jmp	.L23	#
.L24:
	.loc 1 200 0
	movq	-80(%rbp), %rax	# r, r.46
	leaq	1(%rax), %rdx	#, tmp272
	movq	%rdx, -80(%rbp)	# tmp272, r
	movq	-64(%rbp), %rdx	# c, c.47
	leaq	1(%rdx), %rcx	#, tmp273
	movq	%rcx, -64(%rbp)	# tmp273, c
	movzbl	(%rdx), %edx	# *c.47_193, D.11268
	movb	%dl, (%rax)	# D.11268, *r.46_191
.L23:
	.loc 1 199 0 discriminator 1
	movq	-64(%rbp), %rax	# c, tmp274
	cmpq	-32(%rbp), %rax	# e, tmp274
	jb	.L24	#,
.L22:
.LBE4:
	.loc 1 202 0
	movq	-80(%rbp), %rax	# r, tmp275
	movb	$0, (%rax)	#, *r_11
	.loc 1 205 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.48
	movl	-128(%rbp), %edx	# ax, tmp276
	movslq	%edx, %rdx	# tmp276, D.11260
	salq	$3, %rdx	#, D.11260
	addq	%rax, %rdx	# PL_stack_base.48, D.11263
	movq	-48(%rbp), %rax	# RETVAL, tmp277
	movq	%rax, (%rdx)	# tmp277, *_199
	.loc 1 206 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.49
	movl	-128(%rbp), %edx	# ax, tmp278
	movslq	%edx, %rdx	# tmp278, D.11260
	salq	$3, %rdx	#, D.11260
	addq	%rdx, %rax	# D.11260, D.11263
	movq	(%rax), %rax	# *_203, D.11267
	movq	%rax, %rdi	# D.11267,
	call	Perl_sv_2mortal	#
.LBE2:
.LBB5:
	.loc 1 208 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.50
	movl	-128(%rbp), %edx	# ax, tmp279
	movslq	%edx, %rcx	# tmp279, D.11266
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.51
	addq	%rcx, %rdx	# D.11266, D.11266
	salq	$3, %rdx	#, D.11266
	subq	$8, %rdx	#, D.11266
	addq	%rdx, %rax	# D.11266, PL_stack_sp.52
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.52, PL_stack_sp
	nop
.LBE5:
	.loc 1 209 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	XS_MIME__Base64_encode_base64, .-XS_MIME__Base64_encode_base64
	.section	.rodata
	.align 8
.LC2:
	.string	"Usage: MIME::Base64::decode_base64(sv)"
.LC3:
	.string	"Premature end of base64 data"
	.align 8
.LC4:
	.string	"Premature padding of base64 data"
	.text
	.globl	XS_MIME__Base64_decode_base64
	.type	XS_MIME__Base64_decode_base64, @function
XS_MIME__Base64_decode_base64:
.LFB3:
	.loc 1 213 0
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
	.loc 1 213 0
	movq	%fs:40, %rax	#, tmp196
	movq	%rax, -24(%rbp)	# tmp196, D.11284
	xorl	%eax, %eax	# tmp196
	.loc 1 214 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.53
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.54
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.56
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.56, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.55_12, D.11272
	cltq
	salq	$3, %rax	#, D.11273
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.57
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.58
	subq	%rax, %rdx	# PL_stack_base.59, D.11274
	movq	%rdx, %rax	# D.11274, D.11274
	sarq	$3, %rax	#, tmp164
	addl	$1, %eax	#, D.11275
	movl	%eax, -96(%rbp)	# D.11275, ax
	movq	%r12, %rdx	# sp, sp.60
	movq	%rbx, %rax	# mark, mark.61
	subq	%rax, %rdx	# mark.61, D.11274
	movq	%rdx, %rax	# D.11274, D.11274
	sarq	$3, %rax	#, tmp165
	movl	%eax, -92(%rbp)	# D.11274, items
	.loc 1 215 0
	cmpl	$1, -92(%rbp)	#, items
	je	.L27	#,
	.loc 1 216 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L27:
.LBB6:
	.loc 1 218 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.62
	movl	-96(%rbp), %edx	# ax, tmp166
	movslq	%edx, %rdx	# tmp166, D.11273
	salq	$3, %rdx	#, D.11273
	addq	%rdx, %rax	# D.11273, D.11276
	movq	(%rax), %rax	# *_34, tmp167
	movq	%rax, -72(%rbp)	# tmp167, sv
	.loc 1 221 0
	movq	-72(%rbp), %rax	# sv, tmp168
	movl	12(%rax), %eax	# sv_35->sv_flags, D.11277
	andl	$537133056, %eax	#, D.11277
	cmpl	$262144, %eax	#, D.11277
	jne	.L28	#,
	.loc 1 221 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp169
	movq	(%rax), %rax	# sv_35->sv_any, D.11278
	movq	8(%rax), %rax	# MEM[(struct XPV *)_38].xpv_cur, len.64
	movq	%rax, -88(%rbp)	# len.64, len
	movq	-72(%rbp), %rax	# sv, tmp170
	movq	(%rax), %rax	# sv_35->sv_any, D.11278
	movq	(%rax), %rax	# MEM[(struct XPV *)_40].xpv_pv, iftmp.63
	jmp	.L29	#
.L28:
	.loc 1 221 0 discriminator 2
	leaq	-88(%rbp), %rdx	#, tmp171
	movq	-72(%rbp), %rax	# sv, tmp172
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	Perl_sv_2pvbyte	#
.L29:
	.loc 1 221 0 discriminator 3
	movq	%rax, %rbx	# iftmp.63, str
	.loc 1 222 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# len, len.65
	addq	%rbx, %rax	# str, tmp173
	movq	%rax, -64(%rbp)	# tmp173, end
.LBB7:
	.loc 1 231 0 discriminator 3
	movq	-88(%rbp), %rdx	# len, len.66
	movq	%rdx, %rax	# len.66, tmp174
	addq	%rax, %rax	# tmp174
	addq	%rdx, %rax	# len.66, D.11273
	shrq	$2, %rax	#, tmp175
	movq	%rax, -56(%rbp)	# tmp175, rlen
	.loc 1 232 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, rlen
	je	.L30	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rlen, iftmp.67
	jmp	.L31	#
.L30:
	.loc 1 232 0 discriminator 2
	movl	$1, %eax	#, iftmp.67
.L31:
	.loc 1 232 0 discriminator 3
	movq	%rax, %rdi	# iftmp.67,
	call	Perl_newSV	#
	movq	%rax, -48(%rbp)	# tmp176, RETVAL
.LBE7:
	.loc 1 234 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp177
	movl	12(%rax), %eax	# RETVAL_51->sv_flags, D.11277
	orl	$67371008, %eax	#, D.11277
	movl	%eax, %edx	# D.11277, D.11277
	movq	-48(%rbp), %rax	# RETVAL, tmp178
	movl	%edx, 12(%rax)	# D.11277, RETVAL_51->sv_flags
	.loc 1 235 0 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp179
	movq	(%rax), %rax	# RETVAL_51->sv_any, D.11278
	movq	(%rax), %rax	# MEM[(struct XPV *)_54].xpv_pv, tmp180
	movq	%rax, -80(%rbp)	# tmp180, r
	.loc 1 237 0 discriminator 3
	jmp	.L32	#
.L47:
.LBB8:
	.loc 1 238 0
	movl	$0, -100(%rbp)	#, i
.L41:
.LBB9:
	.loc 1 240 0
	movq	%rbx, %rax	# str, str.68
	leaq	1(%rax), %rbx	#, str
	movzbl	(%rax), %eax	# *str.68_57, D.11279
	movzbl	%al, %eax	# D.11279, D.11272
	cltq
	movzbl	index_64(%rax), %eax	# index_64, tmp182
	movb	%al, -101(%rbp)	# tmp182, uc
	.loc 1 241 0
	cmpb	$-1, -101(%rbp)	#, uc
	je	.L33	#,
	.loc 1 242 0
	movl	-100(%rbp), %eax	# i, i.69
	leal	1(%rax), %edx	#, tmp183
	movl	%edx, -100(%rbp)	# tmp183, i
	cltq
	movzbl	-101(%rbp), %edx	# uc, tmp185
	movb	%dl, -32(%rbp,%rax)	# tmp185, c
.L33:
	.loc 1 244 0
	cmpq	-64(%rbp), %rbx	# end, str
	jne	.L34	#,
	.loc 1 245 0
	cmpl	$3, -100(%rbp)	#, i
	jg	.L35	#,
	.loc 1 246 0
	cmpl	$0, -100(%rbp)	#, i
	je	.L36	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.70
	movzbl	%al, %eax	# PL_dowarn.70, D.11272
	andl	$1, %eax	#, D.11272
	testl	%eax, %eax	# D.11272
	je	.L36	#,
	.loc 1 247 0 is_stmt 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L36:
	.loc 1 248 0
	cmpl	$1, -100(%rbp)	#, i
	jg	.L37	#,
	.loc 1 248 0 is_stmt 0 discriminator 1
	jmp	.L38	#
.L37:
	.loc 1 249 0 is_stmt 1
	cmpl	$2, -100(%rbp)	#, i
	jne	.L39	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	movb	$-2, -30(%rbp)	#, c
.L39:
	.loc 1 250 0 is_stmt 1
	movb	$-2, -29(%rbp)	#, c
	.loc 1 252 0
	jmp	.L40	#
.L35:
	jmp	.L40	#
.L34:
.LBE9:
	.loc 1 254 0
	cmpl	$3, -100(%rbp)	#, i
	jle	.L41	#,
.L40:
	.loc 1 256 0
	movzbl	-32(%rbp), %eax	# c, D.11279
	cmpb	$-2, %al	#, D.11279
	je	.L42	#,
	.loc 1 256 0 is_stmt 0 discriminator 1
	movzbl	-31(%rbp), %eax	# c, D.11279
	cmpb	$-2, %al	#, D.11279
	jne	.L43	#,
.L42:
	.loc 1 257 0 is_stmt 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.71
	movzbl	%al, %eax	# PL_dowarn.71, D.11272
	andl	$1, %eax	#, D.11272
	testl	%eax, %eax	# D.11272
	je	.L44	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 258 0 is_stmt 1 discriminator 1
	jmp	.L38	#
.L44:
	.loc 1 258 0 is_stmt 0
	jmp	.L38	#
.L43:
	.loc 1 262 0 is_stmt 1
	movq	-80(%rbp), %rax	# r, r.72
	leaq	1(%rax), %rdx	#, tmp186
	movq	%rdx, -80(%rbp)	# tmp186, r
	movzbl	-32(%rbp), %edx	# c, D.11279
	movzbl	%dl, %edx	# D.11279, D.11272
	sall	$2, %edx	#, D.11272
	movl	%edx, %ecx	# D.11272, D.11280
	movzbl	-31(%rbp), %edx	# c, D.11279
	movzbl	%dl, %edx	# D.11279, D.11272
	andl	$48, %edx	#, D.11272
	sarl	$4, %edx	#, D.11272
	orl	%ecx, %edx	# D.11280, D.11280
	movb	%dl, (%rax)	# D.11280, *r.72_69
	.loc 1 264 0
	movzbl	-30(%rbp), %eax	# c, D.11279
	cmpb	$-2, %al	#, D.11279
	jne	.L45	#,
	.loc 1 265 0
	jmp	.L38	#
.L45:
	.loc 1 266 0
	movq	-80(%rbp), %rax	# r, r.73
	leaq	1(%rax), %rdx	#, tmp187
	movq	%rdx, -80(%rbp)	# tmp187, r
	movzbl	-31(%rbp), %edx	# c, D.11279
	movzbl	%dl, %edx	# D.11279, D.11272
	sall	$4, %edx	#, D.11272
	movl	%edx, %ecx	# D.11272, D.11280
	movzbl	-30(%rbp), %edx	# c, D.11279
	movzbl	%dl, %edx	# D.11279, D.11272
	andl	$60, %edx	#, D.11272
	sarl	$2, %edx	#, D.11272
	orl	%ecx, %edx	# D.11280, D.11280
	movb	%dl, (%rax)	# D.11280, *r.73_82
	.loc 1 268 0
	movzbl	-29(%rbp), %eax	# c, D.11279
	cmpb	$-2, %al	#, D.11279
	jne	.L46	#,
	.loc 1 269 0
	jmp	.L38	#
.L46:
	.loc 1 270 0
	movq	-80(%rbp), %rax	# r, r.74
	leaq	1(%rax), %rdx	#, tmp188
	movq	%rdx, -80(%rbp)	# tmp188, r
	movzbl	-30(%rbp), %edx	# c, D.11279
	movzbl	%dl, %edx	# D.11279, D.11272
	sall	$6, %edx	#, D.11272
	movl	%edx, %ecx	# D.11272, D.11280
	movzbl	-29(%rbp), %edx	# c, D.11279
	orl	%ecx, %edx	# D.11280, D.11280
	movb	%dl, (%rax)	# D.11280, *r.74_95
.L32:
.LBE8:
	.loc 1 237 0 discriminator 1
	cmpq	-64(%rbp), %rbx	# end, str
	jb	.L47	#,
.L38:
	.loc 1 274 0
	movq	-48(%rbp), %rax	# RETVAL, tmp189
	movq	(%rax), %rax	# RETVAL_51->sv_any, D.11278
	movq	-80(%rbp), %rcx	# r, r.75
	movq	-48(%rbp), %rdx	# RETVAL, tmp190
	movq	(%rdx), %rdx	# RETVAL_51->sv_any, D.11278
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_109].xpv_pv, D.11281
	subq	%rdx, %rcx	# D.11274, D.11274
	movq	%rcx, %rdx	# D.11274, D.11274
	movq	%rdx, 8(%rax)	# D.11273, MEM[(struct XPV *)_107].xpv_cur
	.loc 1 275 0
	movq	-80(%rbp), %rax	# r, tmp191
	movb	$0, (%rax)	#, *r_4
	.loc 1 278 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.76
	movl	-96(%rbp), %edx	# ax, tmp192
	movslq	%edx, %rdx	# tmp192, D.11273
	salq	$3, %rdx	#, D.11273
	addq	%rax, %rdx	# PL_stack_base.76, D.11276
	movq	-48(%rbp), %rax	# RETVAL, tmp193
	movq	%rax, (%rdx)	# tmp193, *_117
	.loc 1 279 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.77
	movl	-96(%rbp), %edx	# ax, tmp194
	movslq	%edx, %rdx	# tmp194, D.11273
	salq	$3, %rdx	#, D.11273
	addq	%rdx, %rax	# D.11273, D.11276
	movq	(%rax), %rax	# *_121, D.11282
	movq	%rax, %rdi	# D.11282,
	call	Perl_sv_2mortal	#
.LBE6:
.LBB10:
	.loc 1 281 0
	movq	$1, -40(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.78
	movl	-96(%rbp), %edx	# ax, tmp195
	movslq	%edx, %rcx	# tmp195, D.11283
	movq	-40(%rbp), %rdx	# tmpXSoff, tmpXSoff.79
	addq	%rcx, %rdx	# D.11283, D.11283
	salq	$3, %rdx	#, D.11283
	subq	$8, %rdx	#, D.11283
	addq	%rdx, %rax	# D.11283, PL_stack_sp.80
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.80, PL_stack_sp
	nop
.LBE10:
	.loc 1 282 0
	movq	-24(%rbp), %rax	# D.11284, tmp197
	xorq	%fs:40, %rax	#, tmp197
	je	.L49	#,
	call	__stack_chk_fail	#
.L49:
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	XS_MIME__Base64_decode_base64, .-XS_MIME__Base64_decode_base64
	.section	.rodata
	.align 8
.LC5:
	.string	"Usage: MIME::QuotedPrint::encode_qp(sv, ...)"
.LC7:
	.string	""
.LC8:
	.string	"="
.LC9:
	.string	"=%02X"
	.text
	.globl	XS_MIME__QuotedPrint_encode_qp
	.type	XS_MIME__QuotedPrint_encode_qp, @function
XS_MIME__QuotedPrint_encode_qp:
.LFB4:
	.loc 1 287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$160, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -168(%rbp)	# cv, cv
	.loc 1 288 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.81
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.82
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.84
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.84, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.83_27, D.11290
	cltq
	salq	$3, %rax	#, D.11291
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.85
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.86
	subq	%rax, %rdx	# PL_stack_base.87, D.11292
	movq	%rdx, %rax	# D.11292, D.11292
	sarq	$3, %rax	#, tmp270
	addl	$1, %eax	#, D.11293
	movl	%eax, -148(%rbp)	# D.11293, ax
	movq	%r12, %rdx	# sp, sp.88
	movq	%rbx, %rax	# mark, mark.89
	subq	%rax, %rdx	# mark.89, D.11292
	movq	%rdx, %rax	# D.11292, D.11292
	sarq	$3, %rax	#, tmp271
	movl	%eax, -144(%rbp)	# D.11292, items
	.loc 1 289 0
	cmpl	$0, -144(%rbp)	#, items
	jg	.L51	#,
	.loc 1 290 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L51:
.LBB11:
	.loc 1 292 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.90
	movl	-148(%rbp), %edx	# ax, tmp272
	movslq	%edx, %rdx	# tmp272, D.11291
	salq	$3, %rdx	#, D.11291
	addq	%rdx, %rax	# D.11291, D.11294
	movq	(%rax), %rax	# *_49, tmp273
	movq	%rax, -72(%rbp)	# tmp273, sv
	.loc 1 309 0
	movq	-72(%rbp), %rax	# sv, tmp274
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp274,
	call	Perl_sv_utf8_downgrade	#
	.loc 1 312 0
	cmpl	$1, -144(%rbp)	#, items
	jle	.L52	#,
	.loc 1 312 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.91
	movl	-148(%rbp), %edx	# ax, tmp275
	movslq	%edx, %rdx	# tmp275, D.11295
	addq	$1, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_55, D.11296
	movl	12(%rax), %eax	# _56->sv_flags, D.11297
	andl	$118423552, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L52	#,
	.loc 1 313 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.93
	movl	-148(%rbp), %edx	# ax, tmp276
	movslq	%edx, %rdx	# tmp276, D.11295
	addq	$1, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_63, D.11296
	movl	12(%rax), %eax	# _64->sv_flags, D.11297
	andl	$262144, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L53	#,
	.loc 1 313 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.94
	movl	-148(%rbp), %edx	# ax, tmp277
	movslq	%edx, %rdx	# tmp277, D.11295
	addq	$1, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_71, D.11296
	movq	(%rax), %rax	# _72->sv_any, D.11298
	movq	8(%rax), %rax	# MEM[(struct XPV *)_73].xpv_cur, eol_len.95
	movq	%rax, -136(%rbp)	# eol_len.95, eol_len
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.96
	movl	-148(%rbp), %edx	# ax, tmp278
	movslq	%edx, %rdx	# tmp278, D.11295
	addq	$1, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_79, D.11296
	movq	(%rax), %rax	# _80->sv_any, D.11298
	movq	(%rax), %rax	# MEM[(struct XPV *)_81].xpv_pv, iftmp.92
	jmp	.L54	#
.L53:
	.loc 1 313 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.97
	movl	-148(%rbp), %edx	# ax, tmp279
	movslq	%edx, %rdx	# tmp279, D.11295
	addq	$1, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_87, D.11296
	leaq	-136(%rbp), %rcx	#, tmp280
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp280,
	movq	%rax, %rdi	# D.11296,
	call	Perl_sv_2pv_flags	#
.L54:
	.loc 1 313 0 discriminator 3
	movq	%rax, -120(%rbp)	# iftmp.92, eol
	jmp	.L55	#
.L52:
	.loc 1 315 0 is_stmt 1
	movq	$.LC1, -120(%rbp)	#, eol
	.loc 1 316 0
	movq	$1, -136(%rbp)	#, eol_len
.L55:
	.loc 1 319 0
	cmpl	$2, -144(%rbp)	#, items
	jle	.L56	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.99
	movl	-148(%rbp), %edx	# ax, tmp281
	movslq	%edx, %rdx	# tmp281, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_96, D.11296
	testq	%rax, %rax	# D.11296
	je	.L56	#,
	.loc 1 319 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.100
	movl	-148(%rbp), %edx	# ax, tmp282
	movslq	%edx, %rdx	# tmp282, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_102, D.11296
	movl	12(%rax), %eax	# _103->sv_flags, D.11297
	andl	$262144, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L57	#,
	.loc 1 319 0 discriminator 5
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.102
	movl	-148(%rbp), %edx	# ax, tmp283
	movslq	%edx, %rdx	# tmp283, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_110, D.11296
	movq	(%rax), %rax	# _111->sv_any, PL_Xpv.103
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.103, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.104
	testq	%rax, %rax	# PL_Xpv.104
	je	.L58	#,
	.loc 1 319 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.105
	movq	8(%rax), %rax	# PL_Xpv.105_114->xpv_cur, D.11291
	cmpq	$1, %rax	#, D.11291
	ja	.L59	#,
	.loc 1 319 0 discriminator 10
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.106
	movq	8(%rax), %rax	# PL_Xpv.106_116->xpv_cur, D.11291
	testq	%rax, %rax	# D.11291
	je	.L58	#,
	.loc 1 319 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.107
	movq	(%rax), %rax	# PL_Xpv.107_118->xpv_pv, D.11299
	movzbl	(%rax), %eax	# *_119, D.11300
	cmpb	$48, %al	#, D.11300
	je	.L58	#,
.L59:
	.loc 1 319 0 discriminator 9
	movl	$1, %eax	#, iftmp.101
	jmp	.L60	#
.L58:
	.loc 1 319 0 discriminator 8
	movl	$0, %eax	#, iftmp.101
.L60:
	.loc 1 319 0 discriminator 11
	andl	$1, %eax	#, D.11301
	testb	%al, %al	# D.11301
	jne	.L61	#,
	jmp	.L56	#
.L57:
	.loc 1 319 0 discriminator 6
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.108
	movl	-148(%rbp), %edx	# ax, tmp284
	movslq	%edx, %rdx	# tmp284, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_128, D.11296
	movl	12(%rax), %eax	# _129->sv_flags, D.11297
	andl	$65536, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L62	#,
	.loc 1 319 0 discriminator 12
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.109
	movl	-148(%rbp), %edx	# ax, tmp285
	movslq	%edx, %rdx	# tmp285, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_136, D.11296
	movq	(%rax), %rax	# _137->sv_any, D.11298
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_138].xiv_iv, D.11292
	testq	%rax, %rax	# D.11292
	jne	.L61	#,
	jmp	.L56	#
.L62:
	.loc 1 319 0 discriminator 13
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.110
	movl	-148(%rbp), %edx	# ax, tmp286
	movslq	%edx, %rdx	# tmp286, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_144, D.11296
	movl	12(%rax), %eax	# _145->sv_flags, D.11297
	andl	$131072, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L63	#,
	.loc 1 319 0 discriminator 14
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.111
	movl	-148(%rbp), %edx	# ax, tmp287
	movslq	%edx, %rdx	# tmp287, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_152, D.11296
	movq	(%rax), %rax	# _153->sv_any, D.11298
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_154].xnv_nv, D.11302
	xorpd	%xmm1, %xmm1	# tmp288
	ucomisd	%xmm1, %xmm0	# tmp288, D.11302
	jp	.L61	#,
	xorpd	%xmm1, %xmm1	# tmp289
	ucomisd	%xmm1, %xmm0	# tmp289, D.11302
	jne	.L61	#,
	jmp	.L56	#
.L63:
	.loc 1 319 0 discriminator 15
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.112
	movl	-148(%rbp), %edx	# ax, tmp290
	movslq	%edx, %rdx	# tmp290, D.11295
	addq	$2, %rdx	#, D.11295
	salq	$3, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, D.11294
	movq	(%rax), %rax	# *_160, D.11296
	movq	%rax, %rdi	# D.11296,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.11300
	je	.L56	#,
.L61:
	.loc 1 319 0 discriminator 16
	movl	$1, %eax	#, iftmp.98
	jmp	.L64	#
.L56:
	.loc 1 319 0 discriminator 2
	movl	$0, %eax	#, iftmp.98
.L64:
	.loc 1 319 0 discriminator 17
	movl	%eax, -140(%rbp)	# iftmp.98, binary
	.loc 1 321 0 is_stmt 1 discriminator 17
	movq	-72(%rbp), %rax	# sv, tmp291
	movl	12(%rax), %eax	# sv_50->sv_flags, D.11297
	andl	$262144, %eax	#, D.11297
	testl	%eax, %eax	# D.11297
	je	.L65	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp292
	movq	(%rax), %rax	# sv_50->sv_any, D.11298
	movq	8(%rax), %rax	# MEM[(struct XPV *)_168].xpv_cur, Perl_sv_len.114
	movq	%rax, -128(%rbp)	# Perl_sv_len.114, Perl_sv_len
	movq	-72(%rbp), %rax	# sv, tmp293
	movq	(%rax), %rax	# sv_50->sv_any, D.11298
	movq	(%rax), %rax	# MEM[(struct XPV *)_170].xpv_pv, iftmp.113
	jmp	.L66	#
.L65:
	.loc 1 321 0 discriminator 2
	leaq	-128(%rbp), %rcx	#, tmp294
	movq	-72(%rbp), %rax	# sv, tmp295
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp294,
	movq	%rax, %rdi	# tmp295,
	call	Perl_sv_2pv_flags	#
.L66:
	.loc 1 321 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.113, beg
	.loc 1 322 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rdx	# Perl_sv_len, Perl_sv_len.115
	movq	-64(%rbp), %rax	# beg, tmp299
	addq	%rdx, %rax	# Perl_sv_len.115, tmp298
	movq	%rax, -56(%rbp)	# tmp298, end
	.loc 1 324 0 discriminator 3
	movq	-128(%rbp), %rax	# Perl_sv_len, Perl_sv_len.116
	addq	$1, %rax	#, D.11291
	movq	%rax, %rdi	# D.11291,
	call	Perl_newSV	#
	movq	%rax, -48(%rbp)	# tmp300, RETVAL
	.loc 1 325 0 discriminator 3
	movq	-48(%rbp), %rax	# RETVAL, tmp301
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp301,
	call	Perl_sv_setpv	#
	.loc 1 326 0 discriminator 3
	movq	$0, -112(%rbp)	#, linelen
	.loc 1 328 0 discriminator 3
	movq	-64(%rbp), %rax	# beg, tmp302
	movq	%rax, -104(%rbp)	# tmp302, p
.L91:
	.loc 1 330 0
	movq	-104(%rbp), %rax	# p, tmp303
	movq	%rax, -96(%rbp)	# tmp303, p_beg
	.loc 1 333 0
	jmp	.L67	#
.L69:
	.loc 1 334 0
	addq	$1, -104(%rbp)	#, p
.L67:
	.loc 1 333 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp304
	cmpq	-56(%rbp), %rax	# end, tmp304
	jae	.L68	#,
	.loc 1 333 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# p, tmp305
	movzbl	(%rax), %eax	# *p_9, D.11300
	cmpb	$9, %al	#, D.11300
	je	.L69	#,
	.loc 1 333 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp306
	movzbl	(%rax), %eax	# *p_9, D.11300
	cmpb	$31, %al	#, D.11300
	jle	.L68	#,
	movq	-104(%rbp), %rax	# p, tmp307
	movzbl	(%rax), %eax	# *p_9, D.11300
	cmpb	$127, %al	#, D.11300
	je	.L68	#,
	movq	-104(%rbp), %rax	# p, tmp308
	movzbl	(%rax), %eax	# *p_9, D.11300
	cmpb	$61, %al	#, D.11300
	jne	.L69	#,
.L68:
	.loc 1 336 0 is_stmt 1
	movq	-104(%rbp), %rax	# p, tmp309
	cmpq	-56(%rbp), %rax	# end, tmp309
	je	.L70	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp310
	movzbl	(%rax), %eax	# *p_9, D.11300
	cmpb	$10, %al	#, D.11300
	jne	.L71	#,
.L70:
	.loc 1 338 0 is_stmt 1
	jmp	.L72	#
.L73:
	.loc 1 339 0
	subq	$1, -104(%rbp)	#, p
.L72:
	.loc 1 338 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp311
	cmpq	-96(%rbp), %rax	# p_beg, tmp311
	jbe	.L71	#,
	.loc 1 338 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# p, tmp312
	subq	$1, %rax	#, D.11299
	movzbl	(%rax), %eax	# *_188, D.11300
	cmpb	$9, %al	#, D.11300
	je	.L73	#,
	.loc 1 338 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp313
	subq	$1, %rax	#, D.11299
	movzbl	(%rax), %eax	# *_190, D.11300
	cmpb	$32, %al	#, D.11300
	je	.L73	#,
.L71:
	.loc 1 342 0 is_stmt 1
	movq	-104(%rbp), %rdx	# p, p.117
	movq	-96(%rbp), %rax	# p_beg, p_beg.118
	subq	%rax, %rdx	# p_beg.118, D.11292
	movq	%rdx, %rax	# D.11292, D.11292
	movq	%rax, -88(%rbp)	# D.11292, p_len
	.loc 1 343 0
	cmpq	$0, -88(%rbp)	#, p_len
	je	.L74	#,
	.loc 1 345 0
	movq	-136(%rbp), %rax	# eol_len, eol_len.119
	testq	%rax, %rax	# eol_len.119
	je	.L75	#,
.LBB12:
	.loc 1 346 0
	movq	-104(%rbp), %rax	# p, tmp314
	cmpq	-56(%rbp), %rax	# end, tmp314
	je	.L76	#,
	.loc 1 346 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp315
	movzbl	(%rax), %eax	# *p_11, D.11300
	cmpb	$10, %al	#, D.11300
	je	.L76	#,
	.loc 1 348 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax	# p, tmp316
	addq	$1, %rax	#, D.11299
	.loc 1 346 0 discriminator 1
	cmpq	-56(%rbp), %rax	# end, D.11299
	je	.L77	#,
	.loc 1 348 0
	movq	-104(%rbp), %rax	# p, tmp317
	addq	$1, %rax	#, D.11299
	movzbl	(%rax), %eax	# *_200, D.11300
	cmpb	$10, %al	#, D.11300
	jne	.L78	#,
.L77:
	.loc 1 346 0 discriminator 3
	movl	$73, %eax	#, iftmp.121
	jmp	.L80	#
.L78:
	.loc 1 346 0 is_stmt 0
	movl	$72, %eax	#, iftmp.121
	jmp	.L80	#
.L76:
	.loc 1 346 0 discriminator 2
	movl	$76, %eax	#, iftmp.120
.L80:
	.loc 1 346 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.120, max_last_line
	.loc 1 351 0 is_stmt 1 discriminator 5
	jmp	.L81	#
.L83:
.LBB13:
	.loc 1 352 0
	movl	$75, %eax	#, tmp321
	subq	-112(%rbp), %rax	# linelen, tmp320
	movq	%rax, -80(%rbp)	# tmp320, len
	.loc 1 353 0
	movq	-80(%rbp), %rax	# len, tmp322
	cmpq	-88(%rbp), %rax	# p_len, tmp322
	jbe	.L82	#,
	.loc 1 354 0
	movq	-88(%rbp), %rax	# p_len, tmp323
	movq	%rax, -80(%rbp)	# tmp323, len
.L82:
	.loc 1 355 0
	movq	-80(%rbp), %rdx	# len, tmp324
	movq	-96(%rbp), %rsi	# p_beg, tmp325
	movq	-48(%rbp), %rax	# RETVAL, tmp326
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp326,
	call	Perl_sv_catpvn_flags	#
	.loc 1 356 0
	movq	-80(%rbp), %rax	# len, tmp327
	addq	%rax, -96(%rbp)	# tmp327, p_beg
	.loc 1 357 0
	movq	-80(%rbp), %rax	# len, tmp328
	subq	%rax, -88(%rbp)	# tmp328, p_len
	.loc 1 358 0
	movq	-48(%rbp), %rax	# RETVAL, tmp329
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp329,
	call	Perl_sv_catpvn_flags	#
	.loc 1 359 0
	movq	-136(%rbp), %rdx	# eol_len, eol_len.122
	movq	-120(%rbp), %rsi	# eol, tmp330
	movq	-48(%rbp), %rax	# RETVAL, tmp331
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp331,
	call	Perl_sv_catpvn_flags	#
	.loc 1 360 0
	movq	$0, -112(%rbp)	#, linelen
.L81:
.LBE13:
	.loc 1 351 0 discriminator 1
	movq	-112(%rbp), %rax	# linelen, tmp332
	movq	-88(%rbp), %rdx	# p_len, tmp333
	addq	%rdx, %rax	# tmp333, D.11291
	cmpq	-40(%rbp), %rax	# max_last_line, D.11291
	ja	.L83	#,
.L75:
.LBE12:
	.loc 1 363 0
	cmpq	$0, -88(%rbp)	#, p_len
	je	.L74	#,
	.loc 1 364 0
	movq	-88(%rbp), %rdx	# p_len, tmp334
	movq	-96(%rbp), %rsi	# p_beg, tmp335
	movq	-48(%rbp), %rax	# RETVAL, tmp336
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp336,
	call	Perl_sv_catpvn_flags	#
	.loc 1 365 0
	movq	-88(%rbp), %rax	# p_len, tmp337
	addq	%rax, -112(%rbp)	# tmp337, linelen
.L74:
	.loc 1 369 0
	movq	-104(%rbp), %rax	# p, tmp338
	cmpq	-56(%rbp), %rax	# end, tmp338
	jne	.L84	#,
	.loc 1 370 0
	nop
	.loc 1 397 0
	movq	-48(%rbp), %rax	# RETVAL, tmp357
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	8(%rax), %rax	# MEM[(struct XPV *)_215].xpv_cur, D.11291
	testq	%rax, %rax	# D.11291
	je	.L92	#,
	jmp	.L94	#
.L84:
	.loc 1 372 0
	movq	-104(%rbp), %rax	# p, tmp339
	movzbl	(%rax), %eax	# *p_11, D.11300
	cmpb	$10, %al	#, D.11300
	jne	.L86	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# eol_len, eol_len.123
	testq	%rax, %rax	# eol_len.123
	je	.L86	#,
	cmpl	$0, -140(%rbp)	#, binary
	jne	.L86	#,
	.loc 1 373 0 is_stmt 1
	movq	-136(%rbp), %rdx	# eol_len, eol_len.124
	movq	-120(%rbp), %rsi	# eol, tmp340
	movq	-48(%rbp), %rax	# RETVAL, tmp341
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp341,
	call	Perl_sv_catpvn_flags	#
	.loc 1 374 0
	addq	$1, -104(%rbp)	#, p
	.loc 1 375 0
	movq	$0, -112(%rbp)	#, linelen
	jmp	.L87	#
.L86:
	.loc 1 380 0
	movq	-136(%rbp), %rax	# eol_len, eol_len.125
	testq	%rax, %rax	# eol_len.125
	je	.L88	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	cmpq	$72, -112(%rbp)	#, linelen
	jbe	.L88	#,
	.loc 1 381 0 is_stmt 1
	movq	-48(%rbp), %rax	# RETVAL, tmp342
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp342,
	call	Perl_sv_catpvn_flags	#
	.loc 1 382 0
	movq	-136(%rbp), %rdx	# eol_len, eol_len.126
	movq	-120(%rbp), %rsi	# eol, tmp343
	movq	-48(%rbp), %rax	# RETVAL, tmp344
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp344,
	call	Perl_sv_catpvn_flags	#
	.loc 1 383 0
	movq	$0, -112(%rbp)	#, linelen
.L88:
	.loc 1 385 0
	movq	-104(%rbp), %rax	# p, tmp345
	movzbl	(%rax), %eax	# *p_11, D.11300
	movzbl	%al, %edx	# D.11303, D.11290
	movq	-48(%rbp), %rax	# RETVAL, tmp346
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp346,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 386 0
	addq	$1, -104(%rbp)	#, p
	.loc 1 387 0
	addq	$3, -112(%rbp)	#, linelen
.L87:
	.loc 1 391 0
	movq	-48(%rbp), %rax	# RETVAL, tmp347
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	16(%rax), %rax	# MEM[(struct XPV *)_249].xpv_len, D.11291
	cmpq	$80, %rax	#, D.11291
	jbe	.L89	#,
	.loc 1 391 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# RETVAL, tmp348
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_251].xpv_len, D.11291
	movq	-48(%rbp), %rax	# RETVAL, tmp349
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	8(%rax), %rax	# MEM[(struct XPV *)_253].xpv_cur, D.11291
	subq	%rax, %rdx	# D.11291, D.11291
	movq	%rdx, %rax	# D.11291, D.11291
	cmpq	$2, %rax	#, D.11291
	ja	.L89	#,
.LBB14:
	.loc 1 392 0 is_stmt 1
	movq	-48(%rbp), %rax	# RETVAL, tmp350
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_256].xpv_cur, D.11291
	movq	-128(%rbp), %rax	# Perl_sv_len, Perl_sv_len.127
	imulq	%rdx, %rax	# D.11291, D.11291
	movq	-104(%rbp), %rcx	# p, p.128
	movq	-64(%rbp), %rdx	# beg, beg.129
	subq	%rdx, %rcx	# beg.129, D.11292
	movq	%rcx, %rdx	# D.11292, D.11292
	movq	%rdx, %rbx	# D.11292, D.11291
	movl	$0, %edx	#, tmp352
	divq	%rbx	# D.11291
	movq	%rax, -24(%rbp)	# tmp351, expected_len
	.loc 1 393 0
	movq	-48(%rbp), %rax	# RETVAL, tmp353
	movq	(%rax), %rax	# RETVAL_178->sv_any, D.11298
	movq	16(%rax), %rax	# MEM[(struct XPV *)_265].xpv_len, D.11291
	cmpq	-24(%rbp), %rax	# expected_len, D.11291
	jae	.L90	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# expected_len, tmp354
	movq	-48(%rbp), %rax	# RETVAL, tmp355
	movq	%rdx, %rsi	# tmp354,
	movq	%rax, %rdi	# tmp355,
	call	Perl_sv_grow	#
	jmp	.L89	#
.L90:
.LBE14:
	.loc 1 395 0 is_stmt 1 discriminator 2
	jmp	.L91	#
.L89:
	.loc 1 395 0 is_stmt 0
	jmp	.L91	#
.L94:
	.loc 1 397 0 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax	# eol_len, eol_len.131
	testq	%rax, %rax	# eol_len.131
	je	.L92	#,
	cmpq	$0, -112(%rbp)	#, linelen
	je	.L92	#,
	.loc 1 398 0
	movq	-48(%rbp), %rax	# RETVAL, tmp358
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp358,
	call	Perl_sv_catpvn_flags	#
	.loc 1 399 0
	movq	-136(%rbp), %rdx	# eol_len, eol_len.132
	movq	-120(%rbp), %rsi	# eol, tmp359
	movq	-48(%rbp), %rax	# RETVAL, tmp360
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp360,
	call	Perl_sv_catpvn_flags	#
.L92:
	.loc 1 403 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.133
	movl	-148(%rbp), %edx	# ax, tmp361
	movslq	%edx, %rdx	# tmp361, D.11291
	salq	$3, %rdx	#, D.11291
	addq	%rax, %rdx	# PL_stack_base.133, D.11294
	movq	-48(%rbp), %rax	# RETVAL, tmp362
	movq	%rax, (%rdx)	# tmp362, *_222
	.loc 1 404 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.134
	movl	-148(%rbp), %edx	# ax, tmp363
	movslq	%edx, %rdx	# tmp363, D.11291
	salq	$3, %rdx	#, D.11291
	addq	%rdx, %rax	# D.11291, D.11294
	movq	(%rax), %rax	# *_226, D.11296
	movq	%rax, %rdi	# D.11296,
	call	Perl_sv_2mortal	#
.LBE11:
.LBB15:
	.loc 1 406 0
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.135
	movl	-148(%rbp), %edx	# ax, tmp364
	movslq	%edx, %rcx	# tmp364, D.11295
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.136
	addq	%rcx, %rdx	# D.11295, D.11295
	salq	$3, %rdx	#, D.11295
	subq	$8, %rdx	#, D.11295
	addq	%rdx, %rax	# D.11295, PL_stack_sp.137
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.137, PL_stack_sp
	nop
.LBE15:
	.loc 1 407 0
	addq	$160, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	XS_MIME__QuotedPrint_encode_qp, .-XS_MIME__QuotedPrint_encode_qp
	.section	.rodata
	.align 8
.LC10:
	.string	"Usage: MIME::QuotedPrint::decode_qp(sv)"
	.text
	.globl	XS_MIME__QuotedPrint_decode_qp
	.type	XS_MIME__QuotedPrint_decode_qp, @function
XS_MIME__QuotedPrint_decode_qp:
.LFB5:
	.loc 1 411 0
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
	.loc 1 412 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.138
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.139
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.141
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.141, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.140_20, D.11309
	cltq
	salq	$3, %rax	#, D.11310
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.142
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.143
	subq	%rax, %rdx	# PL_stack_base.144, D.11311
	movq	%rdx, %rax	# D.11311, D.11311
	sarq	$3, %rax	#, tmp180
	addl	$1, %eax	#, D.11312
	movl	%eax, -96(%rbp)	# D.11312, ax
	movq	%r12, %rdx	# sp, sp.145
	movq	%rbx, %rax	# mark, mark.146
	subq	%rax, %rdx	# mark.146, D.11311
	movq	%rdx, %rax	# D.11311, D.11311
	sarq	$3, %rax	#, tmp181
	movl	%eax, -92(%rbp)	# D.11311, items
	.loc 1 413 0
	cmpl	$1, -92(%rbp)	#, items
	je	.L96	#,
	.loc 1 414 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L96:
.LBB16:
	.loc 1 416 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.147
	movl	-96(%rbp), %edx	# ax, tmp182
	movslq	%edx, %rdx	# tmp182, D.11310
	salq	$3, %rdx	#, D.11310
	addq	%rdx, %rax	# D.11310, D.11313
	movq	(%rax), %rax	# *_42, tmp183
	movq	%rax, -48(%rbp)	# tmp183, sv
	.loc 1 419 0
	movq	-48(%rbp), %rax	# sv, tmp184
	movl	12(%rax), %eax	# sv_43->sv_flags, D.11314
	andl	$537133056, %eax	#, D.11314
	cmpl	$262144, %eax	#, D.11314
	jne	.L97	#,
	.loc 1 419 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp185
	movq	(%rax), %rax	# sv_43->sv_any, D.11315
	movq	8(%rax), %rax	# MEM[(struct XPV *)_46].xpv_cur, len.149
	movq	%rax, -88(%rbp)	# len.149, len
	movq	-48(%rbp), %rax	# sv, tmp186
	movq	(%rax), %rax	# sv_43->sv_any, D.11315
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, iftmp.148
	jmp	.L98	#
.L97:
	.loc 1 419 0 discriminator 2
	leaq	-88(%rbp), %rdx	#, tmp187
	movq	-48(%rbp), %rax	# sv, tmp188
	movq	%rdx, %rsi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	Perl_sv_2pvbyte	#
.L98:
	.loc 1 419 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.148, str
	.loc 1 420 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rdx	# len, len.150
	movq	-80(%rbp), %rax	# str, tmp192
	addq	%rdx, %rax	# len.150, tmp191
	movq	%rax, -40(%rbp)	# tmp191, end
	.loc 1 422 0 discriminator 3
	movq	$0, -64(%rbp)	#, whitespace
	.loc 1 427 0 discriminator 3
	movq	-88(%rbp), %rax	# len, len.152
	testq	%rax, %rax	# len.152
	je	.L99	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# len, iftmp.151
	jmp	.L100	#
.L99:
	.loc 1 427 0 discriminator 2
	movl	$1, %eax	#, iftmp.151
.L100:
	.loc 1 427 0 discriminator 3
	movq	%rax, %rdi	# iftmp.151,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp193, RETVAL
	.loc 1 428 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# RETVAL, tmp194
	movl	12(%rax), %eax	# RETVAL_58->sv_flags, D.11314
	orl	$67371008, %eax	#, D.11314
	movl	%eax, %edx	# D.11314, D.11314
	movq	-32(%rbp), %rax	# RETVAL, tmp195
	movl	%edx, 12(%rax)	# D.11314, RETVAL_58->sv_flags
	.loc 1 429 0 discriminator 3
	movq	-32(%rbp), %rax	# RETVAL, tmp196
	movq	(%rax), %rax	# RETVAL_58->sv_any, D.11315
	movq	(%rax), %rax	# MEM[(struct XPV *)_61].xpv_pv, tmp197
	movq	%rax, -72(%rbp)	# tmp197, r
	.loc 1 430 0 discriminator 3
	jmp	.L101	#
.L124:
	.loc 1 431 0
	movq	-80(%rbp), %rax	# str, tmp198
	movzbl	(%rax), %eax	# *str_2, D.11316
	cmpb	$32, %al	#, D.11316
	je	.L102	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp199
	movzbl	(%rax), %eax	# *str_2, D.11316
	cmpb	$9, %al	#, D.11316
	jne	.L103	#,
.L102:
	.loc 1 432 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, whitespace
	jne	.L104	#,
	.loc 1 433 0
	movq	-80(%rbp), %rax	# str, tmp200
	movq	%rax, -64(%rbp)	# tmp200, whitespace
.L104:
	.loc 1 434 0
	addq	$1, -80(%rbp)	#, str
	jmp	.L101	#
.L103:
	.loc 1 436 0
	movq	-80(%rbp), %rax	# str, tmp201
	movzbl	(%rax), %eax	# *str_2, D.11316
	cmpb	$13, %al	#, D.11316
	jne	.L105	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp202
	addq	$1, %rax	#, D.11317
	cmpq	-40(%rbp), %rax	# end, D.11317
	jae	.L105	#,
	movq	-80(%rbp), %rax	# str, tmp203
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_67, D.11316
	cmpb	$10, %al	#, D.11316
	jne	.L105	#,
	.loc 1 437 0 is_stmt 1
	addq	$1, -80(%rbp)	#, str
	jmp	.L101	#
.L105:
	.loc 1 439 0
	movq	-80(%rbp), %rax	# str, tmp204
	movzbl	(%rax), %eax	# *str_2, D.11316
	cmpb	$10, %al	#, D.11316
	jne	.L106	#,
	.loc 1 440 0
	movq	$0, -64(%rbp)	#, whitespace
	.loc 1 441 0
	movq	-72(%rbp), %rax	# r, r.153
	leaq	1(%rax), %rdx	#, tmp205
	movq	%rdx, -72(%rbp)	# tmp205, r
	movq	-80(%rbp), %rdx	# str, str.154
	leaq	1(%rdx), %rcx	#, tmp206
	movq	%rcx, -80(%rbp)	# tmp206, str
	movzbl	(%rdx), %edx	# *str.154_74, D.11316
	movb	%dl, (%rax)	# D.11316, *r.153_72
	jmp	.L101	#
.L106:
	.loc 1 444 0
	cmpq	$0, -64(%rbp)	#, whitespace
	je	.L107	#,
	.loc 1 445 0
	jmp	.L108	#
.L109:
	.loc 1 446 0
	movq	-72(%rbp), %rax	# r, r.155
	leaq	1(%rax), %rdx	#, tmp207
	movq	%rdx, -72(%rbp)	# tmp207, r
	movq	-64(%rbp), %rdx	# whitespace, whitespace.156
	leaq	1(%rdx), %rcx	#, tmp208
	movq	%rcx, -64(%rbp)	# tmp208, whitespace
	movzbl	(%rdx), %edx	# *whitespace.156_79, D.11316
	movb	%dl, (%rax)	# D.11316, *r.155_77
.L108:
	.loc 1 445 0 discriminator 1
	movq	-64(%rbp), %rax	# whitespace, tmp209
	cmpq	-80(%rbp), %rax	# str, tmp209
	jb	.L109	#,
	.loc 1 448 0
	movq	$0, -64(%rbp)	#, whitespace
.L107:
	.loc 1 450 0
	movq	-80(%rbp), %rax	# str, tmp210
	movzbl	(%rax), %eax	# *str_2, D.11316
	cmpb	$61, %al	#, D.11316
	jne	.L110	#,
	.loc 1 451 0
	movq	-80(%rbp), %rax	# str, tmp211
	addq	$2, %rax	#, D.11317
	cmpq	-40(%rbp), %rax	# end, D.11317
	jae	.L111	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp212
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_85, D.11316
	cmpb	$47, %al	#, D.11316
	jle	.L112	#,
	movq	-80(%rbp), %rax	# str, tmp213
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_87, D.11316
	cmpb	$57, %al	#, D.11316
	jle	.L113	#,
.L112:
	.loc 1 451 0 discriminator 2
	movq	-80(%rbp), %rax	# str, tmp214
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_89, D.11316
	cmpb	$96, %al	#, D.11316
	jle	.L114	#,
	.loc 1 451 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp215
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_91, D.11316
	cmpb	$102, %al	#, D.11316
	jle	.L113	#,
.L114:
	.loc 1 451 0 discriminator 2
	movq	-80(%rbp), %rax	# str, tmp216
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_93, D.11316
	cmpb	$64, %al	#, D.11316
	jle	.L111	#,
	.loc 1 451 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp217
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_95, D.11316
	cmpb	$70, %al	#, D.11316
	jg	.L111	#,
.L113:
	movq	-80(%rbp), %rax	# str, tmp218
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_97, D.11316
	cmpb	$47, %al	#, D.11316
	jle	.L115	#,
	movq	-80(%rbp), %rax	# str, tmp219
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_99, D.11316
	cmpb	$57, %al	#, D.11316
	jle	.L116	#,
.L115:
	.loc 1 451 0 discriminator 2
	movq	-80(%rbp), %rax	# str, tmp220
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_101, D.11316
	cmpb	$96, %al	#, D.11316
	jle	.L117	#,
	.loc 1 451 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp221
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_103, D.11316
	cmpb	$102, %al	#, D.11316
	jle	.L116	#,
.L117:
	.loc 1 451 0 discriminator 2
	movq	-80(%rbp), %rax	# str, tmp222
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_105, D.11316
	cmpb	$64, %al	#, D.11316
	jle	.L111	#,
	.loc 1 451 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp223
	addq	$2, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_107, D.11316
	cmpb	$70, %al	#, D.11316
	jg	.L111	#,
.L116:
.LBB17:
	.loc 1 453 0 is_stmt 1 discriminator 1
	addq	$1, -80(%rbp)	#, str
	.loc 1 454 0 discriminator 1
	movq	-80(%rbp), %rax	# str, str.157
	leaq	1(%rax), %rdx	#, tmp224
	movq	%rdx, -80(%rbp)	# tmp224, str
	movzbl	(%rax), %eax	# *str.157_110, D.11316
	movb	%al, -112(%rbp)	# D.11316, buf
	.loc 1 455 0 discriminator 1
	movq	-80(%rbp), %rax	# str, str.158
	leaq	1(%rax), %rdx	#, tmp225
	movq	%rdx, -80(%rbp)	# tmp225, str
	movzbl	(%rax), %eax	# *str.158_113, D.11316
	movb	%al, -111(%rbp)	# D.11316, buf
	.loc 1 456 0 discriminator 1
	movb	$0, -110(%rbp)	#, buf
	.loc 1 457 0 discriminator 1
	movq	-72(%rbp), %rbx	# r, r.159
	leaq	1(%rbx), %rax	#, tmp226
	movq	%rax, -72(%rbp)	# tmp226, r
	leaq	-112(%rbp), %rax	#, tmp227
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	strtol	#
	movb	%al, (%rbx)	# D.11316, *r.159_116
.LBE17:
	.loc 1 451 0 discriminator 1
	jmp	.L118	#
.L111:
.LBB18:
	.loc 1 461 0
	movq	-80(%rbp), %rax	# str, tmp231
	addq	$1, %rax	#, tmp230
	movq	%rax, -56(%rbp)	# tmp230, p
	.loc 1 462 0
	jmp	.L119	#
.L121:
	.loc 1 463 0
	addq	$1, -56(%rbp)	#, p
.L119:
	.loc 1 462 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp232
	cmpq	-40(%rbp), %rax	# end, tmp232
	jae	.L120	#,
	.loc 1 462 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp233
	movzbl	(%rax), %eax	# *p_14, D.11316
	cmpb	$32, %al	#, D.11316
	je	.L121	#,
	.loc 1 462 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp234
	movzbl	(%rax), %eax	# *p_14, D.11316
	cmpb	$9, %al	#, D.11316
	je	.L121	#,
.L120:
	.loc 1 464 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp235
	cmpq	-40(%rbp), %rax	# end, tmp235
	jae	.L122	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp236
	movzbl	(%rax), %eax	# *p_14, D.11316
	cmpb	$10, %al	#, D.11316
	jne	.L122	#,
	.loc 1 465 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp240
	addq	$1, %rax	#, tmp239
	movq	%rax, -80(%rbp)	# tmp239, str
	jmp	.L118	#
.L122:
	.loc 1 466 0
	movq	-56(%rbp), %rax	# p, tmp241
	addq	$1, %rax	#, D.11317
	cmpq	-40(%rbp), %rax	# end, D.11317
	jae	.L123	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp242
	movzbl	(%rax), %eax	# *p_14, D.11316
	cmpb	$13, %al	#, D.11316
	jne	.L123	#,
	movq	-56(%rbp), %rax	# p, tmp243
	addq	$1, %rax	#, D.11318
	movzbl	(%rax), %eax	# *_128, D.11316
	cmpb	$10, %al	#, D.11316
	jne	.L123	#,
	.loc 1 467 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp247
	addq	$2, %rax	#, tmp246
	movq	%rax, -80(%rbp)	# tmp246, str
	jmp	.L118	#
.L123:
	.loc 1 469 0
	movq	-72(%rbp), %rax	# r, r.160
	leaq	1(%rax), %rdx	#, tmp248
	movq	%rdx, -72(%rbp)	# tmp248, r
	movq	-80(%rbp), %rdx	# str, str.161
	leaq	1(%rdx), %rcx	#, tmp249
	movq	%rcx, -80(%rbp)	# tmp249, str
	movzbl	(%rdx), %edx	# *str.161_133, D.11316
	movb	%dl, (%rax)	# D.11316, *r.160_131
.LBE18:
	jmp	.L101	#
.L118:
	jmp	.L101	#
.L110:
	.loc 1 473 0
	movq	-72(%rbp), %rax	# r, r.162
	leaq	1(%rax), %rdx	#, tmp250
	movq	%rdx, -72(%rbp)	# tmp250, r
	movq	-80(%rbp), %rdx	# str, str.163
	leaq	1(%rdx), %rcx	#, tmp251
	movq	%rcx, -80(%rbp)	# tmp251, str
	movzbl	(%rdx), %edx	# *str.163_138, D.11316
	movb	%dl, (%rax)	# D.11316, *r.162_136
.L101:
	.loc 1 430 0 discriminator 1
	movq	-80(%rbp), %rax	# str, tmp252
	cmpq	-40(%rbp), %rax	# end, tmp252
	jb	.L124	#,
	.loc 1 477 0
	cmpq	$0, -64(%rbp)	#, whitespace
	je	.L125	#,
	.loc 1 478 0
	jmp	.L126	#
.L127:
	.loc 1 479 0
	movq	-72(%rbp), %rax	# r, r.164
	leaq	1(%rax), %rdx	#, tmp253
	movq	%rdx, -72(%rbp)	# tmp253, r
	movq	-64(%rbp), %rdx	# whitespace, whitespace.165
	leaq	1(%rdx), %rcx	#, tmp254
	movq	%rcx, -64(%rbp)	# tmp254, whitespace
	movzbl	(%rdx), %edx	# *whitespace.165_145, D.11316
	movb	%dl, (%rax)	# D.11316, *r.164_143
.L126:
	.loc 1 478 0 discriminator 1
	movq	-64(%rbp), %rax	# whitespace, tmp255
	cmpq	-80(%rbp), %rax	# str, tmp255
	jb	.L127	#,
.L125:
	.loc 1 482 0
	movq	-72(%rbp), %rax	# r, tmp256
	movb	$0, (%rax)	#, *r_8
	.loc 1 483 0
	movq	-32(%rbp), %rax	# RETVAL, tmp257
	movq	(%rax), %rax	# RETVAL_58->sv_any, D.11315
	movq	-72(%rbp), %rcx	# r, r.166
	movq	-32(%rbp), %rdx	# RETVAL, tmp258
	movq	(%rdx), %rdx	# RETVAL_58->sv_any, D.11315
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_150].xpv_pv, D.11318
	subq	%rdx, %rcx	# D.11311, D.11311
	movq	%rcx, %rdx	# D.11311, D.11311
	movq	%rdx, 8(%rax)	# D.11310, MEM[(struct XPV *)_148].xpv_cur
	.loc 1 486 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.167
	movl	-96(%rbp), %edx	# ax, tmp259
	movslq	%edx, %rdx	# tmp259, D.11310
	salq	$3, %rdx	#, D.11310
	addq	%rax, %rdx	# PL_stack_base.167, D.11313
	movq	-32(%rbp), %rax	# RETVAL, tmp260
	movq	%rax, (%rdx)	# tmp260, *_158
	.loc 1 487 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.168
	movl	-96(%rbp), %edx	# ax, tmp261
	movslq	%edx, %rdx	# tmp261, D.11310
	salq	$3, %rdx	#, D.11310
	addq	%rdx, %rax	# D.11310, D.11313
	movq	(%rax), %rax	# *_162, D.11319
	movq	%rax, %rdi	# D.11319,
	call	Perl_sv_2mortal	#
.LBE16:
.LBB19:
	.loc 1 489 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.169
	movl	-96(%rbp), %edx	# ax, tmp262
	movslq	%edx, %rcx	# tmp262, D.11320
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.170
	addq	%rcx, %rdx	# D.11320, D.11320
	salq	$3, %rdx	#, D.11320
	subq	$8, %rdx	#, D.11320
	addq	%rdx, %rax	# D.11320, PL_stack_sp.171
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.171, PL_stack_sp
	nop
.LBE19:
	.loc 1 490 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	XS_MIME__QuotedPrint_decode_qp, .-XS_MIME__QuotedPrint_decode_qp
	.section	.rodata
.LC11:
	.string	"Base64.c"
.LC12:
	.string	"MIME::Base64::encode_base64"
.LC13:
	.string	"$;$"
.LC14:
	.string	"MIME::Base64::decode_base64"
.LC15:
	.string	"$"
.LC16:
	.string	"MIME::QuotedPrint::encode_qp"
.LC17:
	.string	"$;$$"
.LC18:
	.string	"MIME::QuotedPrint::decode_qp"
	.text
	.globl	boot_MIME__Base64
	.type	boot_MIME__Base64, @function
boot_MIME__Base64:
.LFB6:
	.loc 1 497 0
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
	.loc 1 498 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.172
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.173
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.175
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.175, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.174_4, D.11322
	cltq
	salq	$3, %rax	#, D.11323
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.176
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.177
	subq	%rax, %rdx	# PL_stack_base.178, D.11324
	movq	%rdx, %rax	# D.11324, D.11324
	sarq	$3, %rax	#, tmp94
	addl	$1, %eax	#, D.11325
	movl	%eax, -40(%rbp)	# D.11325, ax
	movq	%r12, %rdx	# sp, sp.179
	movq	%rbx, %rax	# mark, mark.180
	subq	%rax, %rdx	# mark.180, D.11324
	movq	%rdx, %rax	# D.11324, D.11324
	sarq	$3, %rax	#, tmp95
	movl	%eax, -36(%rbp)	# D.11324, items
	.loc 1 499 0
	movq	$.LC11, -32(%rbp)	#, file
	.loc 1 503 0
	movq	-32(%rbp), %rax	# file, tmp96
	movq	%rax, %rdx	# tmp96,
	movl	$XS_MIME__Base64_encode_base64, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newXS	#
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.11326,
	call	Perl_sv_setpv	#
	.loc 1 504 0
	movq	-32(%rbp), %rax	# file, tmp97
	movq	%rax, %rdx	# tmp97,
	movl	$XS_MIME__Base64_decode_base64, %esi	#,
	movl	$.LC14, %edi	#,
	call	Perl_newXS	#
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# D.11326,
	call	Perl_sv_setpv	#
	.loc 1 505 0
	movq	-32(%rbp), %rax	# file, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$XS_MIME__QuotedPrint_encode_qp, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_newXS	#
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# D.11326,
	call	Perl_sv_setpv	#
	.loc 1 506 0
	movq	-32(%rbp), %rax	# file, tmp99
	movq	%rax, %rdx	# tmp99,
	movl	$XS_MIME__QuotedPrint_decode_qp, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_newXS	#
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# D.11326,
	call	Perl_sv_setpv	#
.LBB20:
	.loc 1 507 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.181
	movl	-40(%rbp), %edx	# ax, tmp100
	movslq	%edx, %rdx	# tmp100, D.11323
	salq	$3, %rdx	#, D.11323
	addq	%rdx, %rax	# D.11323, D.11327
	movq	$PL_sv_yes, (%rax)	#, *_31
.LBB21:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.182
	movl	-40(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rcx	# tmp101, D.11328
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.183
	addq	%rcx, %rdx	# D.11328, D.11328
	salq	$3, %rdx	#, D.11328
	subq	$8, %rdx	#, D.11328
	addq	%rdx, %rax	# D.11328, PL_stack_sp.184
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.184, PL_stack_sp
	nop
.LBE21:
.LBE20:
	.loc 1 508 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	boot_MIME__Base64, .-boot_MIME__Base64
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
	.file 18 "patchlevel.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1824
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF293
	.byte	0x1
	.long	.LASF294
	.long	.LASF295
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
	.long	.LASF175
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
	.long	0xd43
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xd43
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xdc7
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xdb1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xc1e
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xc1e
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xc14
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xc14
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
	.long	0xd43
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xd43
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xdc7
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xdb1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xc1e
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xc1e
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xc14
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xc14
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xd43
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xd43
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xd43
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xd43
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xdcd
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xdd3
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xc34
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xc34
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xc14
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xd2b
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
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xc34
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
	.long	0xd13
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xc34
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
	.long	0xd19
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xc34
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
	.long	0xd0d
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xc34
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
	.long	0xccf
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xccf
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xcd5
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xce0
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
	.long	0xceb
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
	.long	0xcf1
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xc29
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xc29
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xc29
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xc29
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xc34
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xc34
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xc34
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xc34
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xcf7
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
	.long	0xc5c
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xda0
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xd54
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xd66
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xd2b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xd60
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xd54
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xc34
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xc34
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xc3f
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
	.long	0xd07
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xc34
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
	.long	0xd1f
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xc34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xc34
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
	.long	0xd25
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xede
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xc1e
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
	.long	0xc14
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xc5c
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
	.long	0xc29
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x5f9
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x8
	.byte	0xf9
	.long	0x62a
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
	.long	0x636
	.uleb128 0xe
	.long	.LASF87
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.long	0x677
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
	.value	0x7fa
	.long	0x683
	.uleb128 0x10
	.long	.LASF90
	.byte	0x28
	.byte	0x8
	.value	0x10d
	.long	0x6d2
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x6
	.value	0x7fd
	.long	0x6de
	.uleb128 0xe
	.long	.LASF93
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x763
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x11
	.long	0xd25
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x12
	.long	0xd2b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF100
	.byte	0xc
	.byte	0x14
	.long	0xdd9
	.byte	0x38
	.uleb128 0xd
	.long	.LASF101
	.byte	0xc
	.byte	0x15
	.long	0xc5c
	.byte	0x40
	.uleb128 0xd
	.long	.LASF102
	.byte	0xc
	.byte	0x16
	.long	0xc14
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF103
	.byte	0x6
	.value	0x7fe
	.long	0x76f
	.uleb128 0xe
	.long	.LASF104
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x800
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF91
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0x29
	.long	0xd25
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x2a
	.long	0xd2b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x2c
	.long	0xc29
	.byte	0x38
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x2d
	.long	0xe55
	.byte	0x40
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x2e
	.long	0xdcd
	.byte	0x48
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF113
	.byte	0x6
	.value	0x7ff
	.long	0x80c
	.uleb128 0x10
	.long	.LASF114
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x8b6
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
	.long	.LASF91
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x136
	.long	0xd25
	.byte	0x28
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x137
	.long	0xd2b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF115
	.byte	0x8
	.value	0x139
	.long	0xd31
	.byte	0x38
	.uleb128 0xf
	.long	.LASF116
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF117
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF118
	.byte	0x8
	.value	0x13c
	.long	0xd2b
	.byte	0x50
	.uleb128 0xf
	.long	.LASF119
	.byte	0x8
	.value	0x13d
	.long	0xc14
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x6
	.value	0x800
	.long	0x8c2
	.uleb128 0xe
	.long	.LASF121
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x9b3
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
	.long	.LASF97
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF91
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xe
	.byte	0x14
	.long	0xd25
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xe
	.byte	0x15
	.long	0xd2b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x17
	.long	0xd2b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x18
	.long	0xd43
	.byte	0x40
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x19
	.long	0xd43
	.byte	0x48
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x1a
	.long	0xd5a
	.byte	0x50
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1b
	.long	0xb65
	.byte	0x58
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x1c
	.long	0xd60
	.byte	0x60
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x1f
	.long	0xdbc
	.byte	0x78
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x20
	.long	0xd54
	.byte	0x80
	.uleb128 0xd
	.long	.LASF132
	.byte	0xe
	.byte	0x25
	.long	0xd37
	.byte	0x88
	.uleb128 0xd
	.long	.LASF133
	.byte	0xe
	.byte	0x26
	.long	0xc34
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF134
	.byte	0x6
	.value	0x803
	.long	0x9bf
	.uleb128 0x10
	.long	.LASF135
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xaf8
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
	.long	.LASF91
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x176
	.long	0xd25
	.byte	0x28
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x177
	.long	0xd2b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x179
	.long	0xd94
	.byte	0x38
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x17a
	.long	0xd94
	.byte	0x40
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x187
	.long	0xd6c
	.byte	0x48
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x18d
	.long	0xd60
	.byte	0x78
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x18f
	.long	0xd60
	.byte	0x88
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.value	0x191
	.long	0xd60
	.byte	0x98
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF151
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF152
	.byte	0x6
	.value	0x804
	.long	0xb04
	.uleb128 0xe
	.long	.LASF153
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xb65
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0xf
	.long	0xe75
	.byte	0
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x10
	.long	0xe75
	.byte	0x8
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x11
	.long	0xe8f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.byte	0x12
	.long	0xe75
	.byte	0x18
	.uleb128 0xd
	.long	.LASF158
	.byte	0xb
	.byte	0x13
	.long	0xe75
	.byte	0x20
	.uleb128 0xd
	.long	.LASF159
	.byte	0xb
	.byte	0x14
	.long	0xeb8
	.byte	0x28
	.uleb128 0xd
	.long	.LASF160
	.byte	0xb
	.byte	0x16
	.long	0xed8
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xb71
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xbd3
	.uleb128 0x12
	.long	.LASF161
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f3
	.long	0xc29
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF164
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF165
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF166
	.byte	0x6
	.value	0x9f7
	.long	0xc56
	.uleb128 0x12
	.long	.LASF167
	.byte	0x6
	.value	0x9f8
	.long	0xc56
	.byte	0
	.uleb128 0xb
	.long	.LASF168
	.byte	0x6
	.value	0x808
	.long	0xbdf
	.uleb128 0x10
	.long	.LASF169
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xc14
	.uleb128 0xf
	.long	.LASF170
	.byte	0x8
	.value	0x4ee
	.long	0xd66
	.byte	0
	.uleb128 0xf
	.long	.LASF171
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF172
	.byte	0x8
	.value	0x4f0
	.long	0xd9a
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
	.long	.LASF173
	.byte	0xf
	.value	0x209
	.long	0xc34
	.uleb128 0x13
	.long	0xc56
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4b
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xc72
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF174
	.byte	0x10
	.byte	0x63
	.long	0xc7d
	.uleb128 0x9
	.long	.LASF176
	.uleb128 0x5
	.long	.LASF177
	.byte	0x10
	.byte	0x65
	.long	0xc8d
	.uleb128 0x6
	.byte	0x8
	.long	0xc72
	.uleb128 0xe
	.long	.LASF178
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xcc4
	.uleb128 0xd
	.long	.LASF171
	.byte	0x9
	.byte	0x14
	.long	0xc14
	.byte	0
	.uleb128 0xd
	.long	.LASF179
	.byte	0x9
	.byte	0x15
	.long	0xc14
	.byte	0x1
	.uleb128 0xd
	.long	.LASF180
	.byte	0x9
	.byte	0x16
	.long	0xc1e
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF178
	.byte	0x9
	.byte	0x19
	.long	0xc93
	.uleb128 0x6
	.byte	0x8
	.long	0xc29
	.uleb128 0x6
	.byte	0x8
	.long	0xcc4
	.uleb128 0x9
	.long	.LASF181
	.uleb128 0x6
	.byte	0x8
	.long	0xcdb
	.uleb128 0x9
	.long	.LASF182
	.uleb128 0x6
	.byte	0x8
	.long	0xce6
	.uleb128 0x6
	.byte	0x8
	.long	0xc34
	.uleb128 0x15
	.long	0xcc4
	.long	0xd07
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x800
	.uleb128 0x6
	.byte	0x8
	.long	0x8b6
	.uleb128 0x6
	.byte	0x8
	.long	0x6d2
	.uleb128 0x6
	.byte	0x8
	.long	0x763
	.uleb128 0x6
	.byte	0x8
	.long	0x9b3
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
	.long	.LASF183
	.byte	0x8
	.value	0x150
	.long	0xc1e
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xd54
	.uleb128 0x14
	.long	0xd54
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xd49
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
	.long	0xd8e
	.uleb128 0x12
	.long	.LASF184
	.byte	0x8
	.value	0x185
	.long	0xd8e
	.uleb128 0x12
	.long	.LASF185
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xc82
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF186
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF187
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xda6
	.uleb128 0x18
	.long	0xd43
	.uleb128 0x6
	.byte	0x8
	.long	0xdc2
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xc5c
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xde9
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xe19
	.uleb128 0xd
	.long	.LASF188
	.byte	0xd
	.byte	0x11
	.long	0xe55
	.byte	0
	.uleb128 0xd
	.long	.LASF189
	.byte	0xd
	.byte	0x12
	.long	0xe5b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF190
	.byte	0xd
	.byte	0x13
	.long	0xc5c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xe24
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xe55
	.uleb128 0xd
	.long	.LASF191
	.byte	0xd
	.byte	0x18
	.long	0xc34
	.byte	0
	.uleb128 0xd
	.long	.LASF192
	.byte	0xd
	.byte	0x19
	.long	0xc29
	.byte	0x4
	.uleb128 0xd
	.long	.LASF193
	.byte	0xd
	.byte	0x1a
	.long	0xc62
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xddf
	.uleb128 0x6
	.byte	0x8
	.long	0xe19
	.uleb128 0x19
	.long	0x57
	.long	0xe75
	.uleb128 0x14
	.long	0xc5c
	.uleb128 0x14
	.long	0xd25
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe61
	.uleb128 0x19
	.long	0xc34
	.long	0xe8f
	.uleb128 0x14
	.long	0xc5c
	.uleb128 0x14
	.long	0xd25
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe7b
	.uleb128 0x19
	.long	0x57
	.long	0xeb8
	.uleb128 0x14
	.long	0xc5c
	.uleb128 0x14
	.long	0xd25
	.uleb128 0x14
	.long	0xc5c
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe95
	.uleb128 0x19
	.long	0x57
	.long	0xed2
	.uleb128 0x14
	.long	0xd25
	.uleb128 0x14
	.long	0xed2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbd3
	.uleb128 0x6
	.byte	0x8
	.long	0xebe
	.uleb128 0x6
	.byte	0x8
	.long	0xaf8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF194
	.uleb128 0x1a
	.byte	0x4
	.byte	0x6
	.value	0xfb1
	.long	0x108a
	.uleb128 0x1b
	.long	.LASF195
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF196
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF197
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF198
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF199
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF200
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF201
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF202
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF203
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF204
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF205
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF206
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF207
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF208
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF209
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF210
	.sleb128 15
	.uleb128 0x1b
	.long	.LASF211
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF212
	.sleb128 17
	.uleb128 0x1b
	.long	.LASF213
	.sleb128 18
	.uleb128 0x1b
	.long	.LASF214
	.sleb128 19
	.uleb128 0x1b
	.long	.LASF215
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF216
	.sleb128 21
	.uleb128 0x1b
	.long	.LASF217
	.sleb128 22
	.uleb128 0x1b
	.long	.LASF218
	.sleb128 23
	.uleb128 0x1b
	.long	.LASF219
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF220
	.sleb128 25
	.uleb128 0x1b
	.long	.LASF221
	.sleb128 26
	.uleb128 0x1b
	.long	.LASF222
	.sleb128 27
	.uleb128 0x1b
	.long	.LASF223
	.sleb128 28
	.uleb128 0x1b
	.long	.LASF224
	.sleb128 29
	.uleb128 0x1b
	.long	.LASF225
	.sleb128 30
	.uleb128 0x1b
	.long	.LASF226
	.sleb128 31
	.uleb128 0x1b
	.long	.LASF227
	.sleb128 32
	.uleb128 0x1b
	.long	.LASF228
	.sleb128 33
	.uleb128 0x1b
	.long	.LASF229
	.sleb128 34
	.uleb128 0x1b
	.long	.LASF230
	.sleb128 35
	.uleb128 0x1b
	.long	.LASF231
	.sleb128 36
	.uleb128 0x1b
	.long	.LASF232
	.sleb128 37
	.uleb128 0x1b
	.long	.LASF233
	.sleb128 38
	.uleb128 0x1b
	.long	.LASF234
	.sleb128 39
	.uleb128 0x1b
	.long	.LASF235
	.sleb128 40
	.uleb128 0x1b
	.long	.LASF236
	.sleb128 41
	.uleb128 0x1b
	.long	.LASF237
	.sleb128 42
	.uleb128 0x1b
	.long	.LASF238
	.sleb128 43
	.uleb128 0x1b
	.long	.LASF239
	.sleb128 44
	.uleb128 0x1b
	.long	.LASF240
	.sleb128 45
	.uleb128 0x1b
	.long	.LASF241
	.sleb128 46
	.uleb128 0x1b
	.long	.LASF242
	.sleb128 47
	.uleb128 0x1b
	.long	.LASF243
	.sleb128 48
	.uleb128 0x1b
	.long	.LASF244
	.sleb128 49
	.uleb128 0x1b
	.long	.LASF245
	.sleb128 50
	.uleb128 0x1b
	.long	.LASF246
	.sleb128 51
	.uleb128 0x1b
	.long	.LASF247
	.sleb128 52
	.uleb128 0x1b
	.long	.LASF248
	.sleb128 53
	.uleb128 0x1b
	.long	.LASF249
	.sleb128 54
	.uleb128 0x1b
	.long	.LASF250
	.sleb128 55
	.uleb128 0x1b
	.long	.LASF251
	.sleb128 56
	.uleb128 0x1b
	.long	.LASF252
	.sleb128 57
	.uleb128 0x1b
	.long	.LASF253
	.sleb128 58
	.uleb128 0x1b
	.long	.LASF254
	.sleb128 59
	.uleb128 0x1b
	.long	.LASF255
	.sleb128 60
	.uleb128 0x1b
	.long	.LASF256
	.sleb128 61
	.uleb128 0x1b
	.long	.LASF257
	.sleb128 62
	.uleb128 0x1b
	.long	.LASF258
	.sleb128 63
	.uleb128 0x1b
	.long	.LASF259
	.sleb128 64
	.uleb128 0x1b
	.long	.LASF260
	.sleb128 65
	.uleb128 0x1b
	.long	.LASF261
	.sleb128 66
	.byte	0
	.uleb128 0x1c
	.long	.LASF269
	.byte	0x1
	.byte	0x7b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1229
	.uleb128 0x1d
	.string	"cv"
	.byte	0x1
	.byte	0x7b
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1e
	.string	"sp"
	.byte	0x1
	.byte	0x7d
	.long	0xdd9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x1
	.byte	0x7d
	.long	0xdd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"ax"
	.byte	0x1
	.byte	0x7d
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.long	.LASF263
	.byte	0x1
	.byte	0x7d
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1208
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0x81
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"str"
	.byte	0x1
	.byte	0x83
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x84
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"eol"
	.byte	0x1
	.byte	0x85
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF264
	.byte	0x1
	.byte	0x86
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0x87
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF265
	.byte	0x1
	.byte	0x88
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.string	"c1"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -151
	.uleb128 0x1e
	.string	"c2"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -150
	.uleb128 0x1e
	.string	"c3"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x1f
	.long	.LASF266
	.byte	0x1
	.byte	0x8a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1f
	.long	.LASF267
	.byte	0x1
	.byte	0x8d
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x11dc
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0xad
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0xae
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0xc5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0xc6
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1f
	.long	.LASF268
	.byte	0x1
	.byte	0xd0
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF270
	.byte	0x1
	.byte	0xd4
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1396
	.uleb128 0x1d
	.string	"cv"
	.byte	0x1
	.byte	0xd4
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.string	"sp"
	.byte	0x1
	.byte	0xd6
	.long	0xdd9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x1
	.byte	0xd6
	.long	0xdd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"ax"
	.byte	0x1
	.byte	0xd6
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF263
	.byte	0x1
	.byte	0xd6
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.long	.LASF296
	.byte	0x1
	.value	0x111
	.quad	.L38
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1374
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0xda
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xdc
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.string	"str"
	.byte	0x1
	.byte	0xdd
	.long	0x1396
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xde
	.long	0x139c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0xdf
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0xe0
	.long	0x13a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF267
	.byte	0x1
	.byte	0xe3
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1334
	.uleb128 0x1f
	.long	.LASF265
	.byte	0x1
	.byte	0xe7
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xee
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1e
	.string	"uc"
	.byte	0x1
	.byte	0xf0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.long	.LASF268
	.byte	0x1
	.value	0x119
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x6
	.byte	0x8
	.long	0x13a2
	.uleb128 0x7
	.long	0x2d
	.uleb128 0x15
	.long	0x2d
	.long	0x13b7
	.uleb128 0x16
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.long	.LASF271
	.byte	0x1
	.value	0x11e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x157a
	.uleb128 0x25
	.string	"cv"
	.byte	0x1
	.value	0x11e
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x120
	.long	0xdd9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF262
	.byte	0x1
	.value	0x120
	.long	0xdd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x120
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x23
	.long	.LASF263
	.byte	0x1
	.value	0x120
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1558
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x124
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"eol"
	.byte	0x1
	.value	0x126
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF272
	.byte	0x1
	.value	0x127
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF273
	.byte	0x1
	.value	0x128
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x23
	.long	.LASF274
	.byte	0x1
	.value	0x129
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF275
	.byte	0x1
	.value	0x12a
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.string	"beg"
	.byte	0x1
	.value	0x12b
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x12c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x12d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.long	.LASF276
	.byte	0x1
	.value	0x12e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF277
	.byte	0x1
	.value	0x12f
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF267
	.byte	0x1
	.value	0x132
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1536
	.uleb128 0x23
	.long	.LASF278
	.byte	0x1
	.value	0x15a
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x160
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x23
	.long	.LASF279
	.byte	0x1
	.value	0x188
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x23
	.long	.LASF268
	.byte	0x1
	.value	0x196
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF280
	.byte	0x1
	.value	0x19a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c9
	.uleb128 0x25
	.string	"cv"
	.byte	0x1
	.value	0x19a
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x19c
	.long	0xdd9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF262
	.byte	0x1
	.value	0x19c
	.long	0xdd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x19c
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF263
	.byte	0x1
	.value	0x19c
	.long	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x16a7
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x1a0
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x1a2
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x1a3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x1a4
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"r"
	.byte	0x1
	.value	0x1a5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF281
	.byte	0x1
	.value	0x1a6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF267
	.byte	0x1
	.value	0x1a9
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1686
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x1c4
	.long	0x16c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x21
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x1cd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x23
	.long	.LASF268
	.byte	0x1
	.value	0x1e9
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x16d9
	.uleb128 0x16
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.long	.LASF282
	.byte	0x1
	.value	0x1f0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x176f
	.uleb128 0x25
	.string	"cv"
	.byte	0x1
	.value	0x1f0
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x1f2
	.long	0xdd9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF262
	.byte	0x1
	.value	0x1f2
	.long	0xdd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x1f2
	.long	0xc29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF263
	.byte	0x1
	.value	0x1f2
	.long	0xc29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF283
	.byte	0x1
	.value	0x1f3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x23
	.long	.LASF268
	.byte	0x1
	.value	0x1fb
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x79
	.long	0x177f
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.long	.LASF284
	.byte	0x12
	.byte	0x79
	.long	0x176f
	.uleb128 0x9
	.byte	0x3
	.quad	local_patches
	.uleb128 0x15
	.long	0x7f
	.long	0x17a4
	.uleb128 0x16
	.long	0x65
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.long	.LASF285
	.byte	0x1
	.byte	0x44
	.long	0x1794
	.uleb128 0x9
	.byte	0x3
	.quad	basis_64
	.uleb128 0x15
	.long	0x2d
	.long	0x17c9
	.uleb128 0x16
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LASF286
	.byte	0x1
	.byte	0x4b
	.long	0x17b9
	.uleb128 0x9
	.byte	0x3
	.quad	index_64
	.uleb128 0x27
	.long	.LASF287
	.byte	0x13
	.byte	0x34
	.long	0xc14
	.uleb128 0x28
	.long	.LASF288
	.byte	0x13
	.value	0x127
	.long	0x291
	.uleb128 0x27
	.long	.LASF289
	.byte	0x14
	.byte	0x22
	.long	0xdd9
	.uleb128 0x27
	.long	.LASF290
	.byte	0x14
	.byte	0x2a
	.long	0xdd9
	.uleb128 0x27
	.long	.LASF291
	.byte	0x14
	.byte	0x3c
	.long	0xccf
	.uleb128 0x27
	.long	.LASF292
	.byte	0x14
	.byte	0x44
	.long	0x1821
	.uleb128 0x6
	.byte	0x8
	.long	0x5ed
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF141:
	.string	"xio_page_len"
.LASF213:
	.string	"lshift_amg"
.LASF247:
	.string	"repeat_amg"
.LASF147:
	.string	"xio_bottom_name"
.LASF61:
	.string	"gp_sv"
.LASF174:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF295:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF120:
	.string	"XPVCV"
.LASF8:
	.string	"char"
.LASF154:
	.string	"svt_get"
.LASF150:
	.string	"xio_type"
.LASF248:
	.string	"repeat_ass_amg"
.LASF121:
	.string	"xpvcv"
.LASF79:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF171:
	.string	"flags"
.LASF106:
	.string	"xhv_fill"
.LASF72:
	.string	"gp_file"
.LASF151:
	.string	"xio_flags"
.LASF229:
	.string	"ncmp_amg"
.LASF237:
	.string	"not_amg"
.LASF271:
	.string	"XS_MIME__QuotedPrint_encode_qp"
.LASF231:
	.string	"slt_amg"
.LASF184:
	.string	"xiou_dirp"
.LASF178:
	.string	"regnode"
.LASF165:
	.string	"any_bool"
.LASF31:
	.string	"op_pmregexp"
.LASF233:
	.string	"sgt_amg"
.LASF14:
	.string	"double"
.LASF219:
	.string	"bor_amg"
.LASF48:
	.string	"precomp"
.LASF102:
	.string	"xav_flags"
.LASF118:
	.string	"xgv_stash"
.LASF45:
	.string	"endp"
.LASF89:
	.string	"XPVNV"
.LASF10:
	.string	"ssize_t"
.LASF176:
	.string	"_PerlIO"
.LASF211:
	.string	"pow_amg"
.LASF125:
	.string	"xcv_xsub"
.LASF203:
	.string	"subtr_amg"
.LASF266:
	.string	"chunk"
.LASF238:
	.string	"compl_amg"
.LASF204:
	.string	"subtr_ass_amg"
.LASF75:
	.string	"mg_moremagic"
.LASF224:
	.string	"le_amg"
.LASF68:
	.string	"gp_cv"
.LASF258:
	.string	"iter_amg"
.LASF177:
	.string	"PerlIO"
.LASF197:
	.string	"bool__amg"
.LASF168:
	.string	"CLONE_PARAMS"
.LASF194:
	.string	"float"
.LASF108:
	.string	"xhv_keys"
.LASF47:
	.string	"substrs"
.LASF268:
	.string	"tmpXSoff"
.LASF210:
	.string	"modulo_ass_amg"
.LASF243:
	.string	"sin_amg"
.LASF153:
	.string	"mgvtbl"
.LASF128:
	.string	"xcv_file"
.LASF127:
	.string	"xcv_gv"
.LASF207:
	.string	"div_amg"
.LASF218:
	.string	"band_ass_amg"
.LASF12:
	.string	"long long unsigned int"
.LASF283:
	.string	"file"
.LASF42:
	.string	"REGEXP"
.LASF182:
	.string	"reg_data"
.LASF169:
	.string	"clone_params"
.LASF181:
	.string	"reg_substr_data"
.LASF77:
	.string	"mg_private"
.LASF88:
	.string	"xiv_iv"
.LASF119:
	.string	"xgv_flags"
.LASF139:
	.string	"xio_lines"
.LASF282:
	.string	"boot_MIME__Base64"
.LASF37:
	.string	"interpreter"
.LASF66:
	.string	"gp_hv"
.LASF83:
	.string	"xpv_pv"
.LASF113:
	.string	"XPVGV"
.LASF277:
	.string	"p_len"
.LASF142:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF191:
	.string	"hek_hash"
.LASF167:
	.string	"any_dxptr"
.LASF186:
	.string	"PADLIST"
.LASF114:
	.string	"xpvgv"
.LASF173:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF82:
	.string	"mg_len"
.LASF80:
	.string	"mg_obj"
.LASF232:
	.string	"sle_amg"
.LASF196:
	.string	"abs_amg"
.LASF129:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF146:
	.string	"xio_fmt_gv"
.LASF242:
	.string	"cos_amg"
.LASF193:
	.string	"hek_key"
.LASF246:
	.string	"sqrt_amg"
.LASF60:
	.string	"program"
.LASF234:
	.string	"sge_amg"
.LASF63:
	.string	"gp_io"
.LASF111:
	.string	"xhv_pmroot"
.LASF256:
	.string	"to_gv_amg"
.LASF103:
	.string	"XPVHV"
.LASF255:
	.string	"to_hv_amg"
.LASF157:
	.string	"svt_clear"
.LASF138:
	.string	"xio_dirpu"
.LASF104:
	.string	"xpvhv"
.LASF270:
	.string	"XS_MIME__Base64_decode_base64"
.LASF217:
	.string	"band_amg"
.LASF28:
	.string	"op_pmreplroot"
.LASF202:
	.string	"add_ass_amg"
.LASF34:
	.string	"op_pmdynflags"
.LASF159:
	.string	"svt_copy"
.LASF85:
	.string	"xpv_len"
.LASF240:
	.string	"dec_amg"
.LASF134:
	.string	"XPVIO"
.LASF163:
	.string	"any_iv"
.LASF170:
	.string	"stashes"
.LASF55:
	.string	"prelen"
.LASF86:
	.string	"XPVIV"
.LASF261:
	.string	"max_amg_code"
.LASF62:
	.string	"gp_refcnt"
.LASF57:
	.string	"lastparen"
.LASF135:
	.string	"xpvio"
.LASF49:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF290:
	.string	"PL_stack_base"
.LASF87:
	.string	"xpviv"
.LASF52:
	.string	"sublen"
.LASF27:
	.string	"op_last"
.LASF189:
	.string	"hent_hek"
.LASF59:
	.string	"reganch"
.LASF215:
	.string	"rshift_amg"
.LASF228:
	.string	"ne_amg"
.LASF50:
	.string	"subbeg"
.LASF220:
	.string	"bor_ass_amg"
.LASF172:
	.string	"proto_perl"
.LASF74:
	.string	"magic"
.LASF245:
	.string	"log_amg"
.LASF188:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF222:
	.string	"bxor_ass_amg"
.LASF105:
	.string	"xhv_array"
.LASF198:
	.string	"nomethod_amg"
.LASF143:
	.string	"xio_top_name"
.LASF251:
	.string	"copy_amg"
.LASF58:
	.string	"lastcloseparen"
.LASF262:
	.string	"mark"
.LASF180:
	.string	"next_off"
.LASF76:
	.string	"mg_virtual"
.LASF212:
	.string	"pow_ass_amg"
.LASF24:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF280:
	.string	"XS_MIME__QuotedPrint_decode_qp"
.LASF209:
	.string	"modulo_amg"
.LASF216:
	.string	"rshift_ass_amg"
.LASF81:
	.string	"mg_ptr"
.LASF288:
	.string	"PL_sv_yes"
.LASF287:
	.string	"PL_dowarn"
.LASF136:
	.string	"xio_ifp"
.LASF208:
	.string	"div_ass_amg"
.LASF38:
	.string	"broiled"
.LASF16:
	.string	"op_next"
.LASF249:
	.string	"concat_amg"
.LASF67:
	.string	"gp_egv"
.LASF253:
	.string	"to_sv_amg"
.LASF44:
	.string	"startp"
.LASF226:
	.string	"ge_amg"
.LASF263:
	.string	"items"
.LASF236:
	.string	"sne_amg"
.LASF39:
	.string	"sv_any"
.LASF195:
	.string	"fallback_amg"
.LASF35:
	.string	"op_pmstash"
.LASF140:
	.string	"xio_page"
.LASF185:
	.string	"xiou_any"
.LASF292:
	.string	"PL_Xpv"
.LASF29:
	.string	"op_pmreplstart"
.LASF73:
	.string	"MAGIC"
.LASF273:
	.string	"binary"
.LASF279:
	.string	"expected_len"
.LASF156:
	.string	"svt_len"
.LASF293:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF252:
	.string	"neg_amg"
.LASF41:
	.string	"sv_flags"
.LASF36:
	.string	"PerlInterpreter"
.LASF100:
	.string	"xav_alloc"
.LASF110:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF214:
	.string	"lshift_ass_amg"
.LASF112:
	.string	"xhv_name"
.LASF64:
	.string	"gp_form"
.LASF26:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF123:
	.string	"xcv_start"
.LASF133:
	.string	"xcv_outside_seq"
.LASF94:
	.string	"xav_array"
.LASF149:
	.string	"xio_subprocess"
.LASF51:
	.string	"offsets"
.LASF97:
	.string	"xof_off"
.LASF192:
	.string	"hek_len"
.LASF274:
	.string	"Perl_sv_len"
.LASF152:
	.string	"MGVTBL"
.LASF205:
	.string	"mult_amg"
.LASF53:
	.string	"refcnt"
.LASF278:
	.string	"max_last_line"
.LASF254:
	.string	"to_av_amg"
.LASF259:
	.string	"int_amg"
.LASF101:
	.string	"xav_arylen"
.LASF275:
	.string	"linelen"
.LASF122:
	.string	"xcv_stash"
.LASF117:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF124:
	.string	"xcv_root"
.LASF206:
	.string	"mult_ass_amg"
.LASF272:
	.string	"eol_len"
.LASF43:
	.string	"regexp"
.LASF190:
	.string	"hent_val"
.LASF131:
	.string	"xcv_outside"
.LASF276:
	.string	"p_beg"
.LASF227:
	.string	"eq_amg"
.LASF2:
	.string	"unsigned int"
.LASF32:
	.string	"op_pmflags"
.LASF107:
	.string	"xhv_max"
.LASF130:
	.string	"xcv_padlist"
.LASF241:
	.string	"atan2_amg"
.LASF98:
	.string	"xmg_magic"
.LASF90:
	.string	"xpvnv"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF250:
	.string	"concat_ass_amg"
.LASF286:
	.string	"index_64"
.LASF162:
	.string	"any_i32"
.LASF155:
	.string	"svt_set"
.LASF200:
	.string	"numer_amg"
.LASF145:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF265:
	.string	"rlen"
.LASF175:
	.string	"__dirstream"
.LASF164:
	.string	"any_long"
.LASF25:
	.string	"pmop"
.LASF95:
	.string	"xav_fill"
.LASF285:
	.string	"basis_64"
.LASF179:
	.string	"type"
.LASF0:
	.string	"unsigned char"
.LASF109:
	.string	"xhv_riter"
.LASF115:
	.string	"xgv_gp"
.LASF30:
	.string	"op_pmnext"
.LASF201:
	.string	"add_amg"
.LASF40:
	.string	"sv_refcnt"
.LASF284:
	.string	"local_patches"
.LASF230:
	.string	"scmp_amg"
.LASF91:
	.string	"xnv_nv"
.LASF132:
	.string	"xcv_flags"
.LASF70:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF78:
	.string	"mg_type"
.LASF235:
	.string	"seq_amg"
.LASF160:
	.string	"svt_dup"
.LASF148:
	.string	"xio_bottom_gv"
.LASF281:
	.string	"whitespace"
.LASF84:
	.string	"xpv_cur"
.LASF161:
	.string	"any_ptr"
.LASF92:
	.string	"XPVAV"
.LASF294:
	.string	"Base64.c"
.LASF257:
	.string	"to_cv_amg"
.LASF221:
	.string	"bxor_amg"
.LASF96:
	.string	"xav_max"
.LASF158:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF296:
	.string	"thats_it"
.LASF187:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"op_pmpermflags"
.LASF93:
	.string	"xpvav"
.LASF99:
	.string	"xmg_stash"
.LASF65:
	.string	"gp_av"
.LASF69:
	.string	"gp_cvgen"
.LASF244:
	.string	"exp_amg"
.LASF71:
	.string	"gp_line"
.LASF54:
	.string	"minlen"
.LASF264:
	.string	"eollen"
.LASF126:
	.string	"xcv_xsubany"
.LASF183:
	.string	"cv_flags_t"
.LASF137:
	.string	"xio_ofp"
.LASF199:
	.string	"string_amg"
.LASF291:
	.string	"PL_markstack_ptr"
.LASF46:
	.string	"regstclass"
.LASF144:
	.string	"xio_top_gv"
.LASF223:
	.string	"lt_amg"
.LASF56:
	.string	"nparens"
.LASF267:
	.string	"RETVAL"
.LASF269:
	.string	"XS_MIME__Base64_encode_base64"
.LASF289:
	.string	"PL_stack_sp"
.LASF239:
	.string	"inc_amg"
.LASF225:
	.string	"gt_amg"
.LASF260:
	.string	"DESTROY_amg"
.LASF166:
	.string	"any_dptr"
.LASF116:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
