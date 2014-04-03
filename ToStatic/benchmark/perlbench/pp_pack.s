	.file	"pp_pack.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pp_pack.c
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
	.string	"0000"
.LC1:
	.string	"0000000000"
	.text
	.type	S_mul128, @function
S_mul128:
.LFB2:
	.file 1 "pp_pack.c"
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	movl	%esi, %eax	# m, tmp89
	movb	%al, -60(%rbp)	# tmp89, m
	.loc 1 102 0
	movq	-56(%rbp), %rax	# sv, tmp90
	movl	12(%rax), %eax	# sv_8(D)->sv_flags, D.13959
	andl	$262144, %eax	#, D.13959
	testl	%eax, %eax	# D.13959
	je	.L2	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp91
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.13960
	movq	8(%rax), %rax	# MEM[(struct XPV *)_11].xpv_cur, len.1
	movq	%rax, -32(%rbp)	# len.1, len
	movq	-56(%rbp), %rax	# sv, tmp92
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.13960
	movq	(%rax), %rax	# MEM[(struct XPV *)_13].xpv_pv, iftmp.0
	jmp	.L3	#
.L2:
	.loc 1 102 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp93
	movq	-56(%rbp), %rax	# sv, tmp94
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_2pv_flags	#
.L3:
	.loc 1 102 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.0, s
	.loc 1 104 0 is_stmt 1 discriminator 3
	movl	$0, -36(%rbp)	#, i
	.loc 1 106 0 discriminator 3
	movq	-24(%rbp), %rax	# s, tmp95
	movl	$4, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strncmp	#
	testl	%eax, %eax	# D.13961
	je	.L4	#,
.LBB2:
	.loc 1 107 0
	movl	$10, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -8(%rbp)	# tmp96, tmpNew
	.loc 1 109 0
	movq	-56(%rbp), %rcx	# sv, tmp97
	movq	-8(%rbp), %rax	# tmpNew, tmp98
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	Perl_sv_catsv_flags	#
	.loc 1 110 0
	movq	-56(%rbp), %rax	# sv, tmp99
	movq	%rax, %rdi	# tmp99,
	call	Perl_sv_free	#
	.loc 1 111 0
	movq	-8(%rbp), %rax	# tmpNew, tmp100
	movq	%rax, -56(%rbp)	# tmp100, sv
	.loc 1 112 0
	movq	-56(%rbp), %rax	# sv, tmp101
	movl	12(%rax), %eax	# sv_20->sv_flags, D.13959
	andl	$262144, %eax	#, D.13959
	testl	%eax, %eax	# D.13959
	je	.L5	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp102
	movq	(%rax), %rax	# sv_20->sv_any, D.13960
	movq	8(%rax), %rax	# MEM[(struct XPV *)_23].xpv_cur, len.3
	movq	%rax, -32(%rbp)	# len.3, len
	movq	-56(%rbp), %rax	# sv, tmp103
	movq	(%rax), %rax	# sv_20->sv_any, D.13960
	movq	(%rax), %rax	# MEM[(struct XPV *)_25].xpv_pv, iftmp.2
	jmp	.L6	#
.L5:
	.loc 1 112 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp104
	movq	-56(%rbp), %rax	# sv, tmp105
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	Perl_sv_2pv_flags	#
.L6:
	.loc 1 112 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.2, s
.L4:
.LBE2:
	.loc 1 114 0 is_stmt 1
	movq	-32(%rbp), %rax	# len, len.4
	leaq	-1(%rax), %rdx	#, D.13962
	movq	-24(%rbp), %rax	# s, tmp109
	addq	%rdx, %rax	# D.13962, tmp108
	movq	%rax, -16(%rbp)	# tmp108, t
	.loc 1 115 0
	jmp	.L7	#
.L8:
	.loc 1 116 0
	subq	$1, -16(%rbp)	#, t
.L7:
	.loc 1 115 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp110
	movzbl	(%rax), %eax	# *t_4, D.13963
	testb	%al, %al	# D.13963
	je	.L8	#,
	.loc 1 117 0
	jmp	.L9	#
.L10:
	.loc 1 118 0
	movq	-16(%rbp), %rax	# t, tmp111
	movzbl	(%rax), %eax	# *t_5, D.13963
	movsbl	%al, %eax	# D.13963, D.13961
	subl	$48, %eax	#, D.13961
	sall	$7, %eax	#, D.13961
	movl	%eax, %edx	# D.13961, D.13961
	movzbl	-60(%rbp), %eax	# m, D.13961
	addl	%edx, %eax	# D.13961, D.13961
	movl	%eax, -36(%rbp)	# D.13961, i
	.loc 1 119 0
	movq	-16(%rbp), %rcx	# t, t.5
	leaq	-1(%rcx), %rax	#, tmp112
	movq	%rax, -16(%rbp)	# tmp112, t
	movl	-36(%rbp), %esi	# i, tmp113
	movl	$-858993459, %edx	#, tmp115
	movl	%esi, %eax	# tmp113, tmp123
	mull	%edx	# tmp115
	shrl	$3, %edx	#, D.13959
	movl	%edx, %eax	# D.13959, tmp116
	sall	$2, %eax	#, tmp116
	addl	%edx, %eax	# D.13959, tmp116
	addl	%eax, %eax	# tmp117
	subl	%eax, %esi	# tmp116, D.13959
	movl	%esi, %edx	# D.13959, D.13959
	movl	%edx, %eax	# D.13959, D.13964
	addl	$48, %eax	#, D.13964
	movb	%al, (%rcx)	# D.13963, *t.5_42
	.loc 1 120 0
	movl	-36(%rbp), %eax	# i, tmp118
	movl	$-858993459, %edx	#, tmp120
	mull	%edx	# tmp120
	movl	%edx, %eax	# tmp119, D.13959
	shrl	$3, %eax	#, D.13959
	movb	%al, -60(%rbp)	# D.13959, m
.L9:
	.loc 1 117 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp121
	cmpq	-24(%rbp), %rax	# s, tmp121
	ja	.L10	#,
	.loc 1 122 0
	movq	-56(%rbp), %rax	# sv, D.13965
	.loc 1 123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_mul128, .-S_mul128
	.globl	size_normal
	.data
	.align 32
	.type	size_normal, @object
	.size	size_normal, 53
size_normal:
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	4
	.byte	8
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	8
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	8
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	-120
	.byte	8
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	-127
	.globl	size_shrieking
	.align 32
	.type	size_shrieking, @object
	.size	size_shrieking, 46
size_shrieking:
	.byte	4
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.globl	packsize
	.align 32
	.type	packsize, @object
	.size	packsize, 32
packsize:
# array:
	.quad	size_normal
# first:
	.long	67
# size:
	.long	53
# array:
	.quad	size_shrieking
# first:
	.long	73
# size:
	.long	46
	.section	.rodata
.LC2:
	.string	"pack"
.LC3:
	.string	"unpack"
	.align 8
.LC4:
	.string	"Within []-length '*' not allowed in %s"
.LC5:
	.string	"Invalid type '%c' in %s"
	.align 8
.LC6:
	.string	"Within []-length '%c' not allowed in %s"
.LC7:
	.string	"'X' outside of string in %s"
	.text
	.type	S_measure_struct, @function
S_measure_struct:
.LFB3:
	.loc 1 490 0
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
	subq	$80, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# symptr, symptr
	.loc 1 491 0
	movl	$0, %r12d	#, len
	.loc 1 492 0
	movl	$0, %r14d	#, total
	.loc 1 497 0
	jmp	.L13	#
.L50:
.LBB3:
	.loc 1 498 0
	movl	32(%rbx), %eax	# symptr_17(D)->code, D.13969
	andl	$256, %eax	#, D.13969
	.loc 1 499 0
	testl	%eax, %eax	# D.13969
	setne	%al	#, D.13970
	.loc 1 498 0
	movzbl	%al, %eax	# D.13970, tmp100
	movl	%eax, -108(%rbp)	# tmp100, which
	.loc 1 501 0
	movl	32(%rbx), %eax	# symptr_17(D)->code, D.13969
	movzbl	%al, %edx	# D.13969, D.13969
	movl	-108(%rbp), %eax	# which, tmp102
	cltq
	salq	$4, %rax	#, tmp103
	addq	$packsize, %rax	#, tmp104
	movl	8(%rax), %eax	# packsize[which_22].first, D.13969
	.loc 1 500 0
	subl	%eax, %edx	# D.13969, tmp105
	movl	%edx, %eax	# tmp105, tmp105
	movl	%eax, -104(%rbp)	# tmp105, offset
	.loc 1 503 0
	movl	40(%rbx), %eax	# symptr_17(D)->howlen, D.13971
	cmpl	$1, %eax	#, D.13971
	jbe	.L15	#,
	cmpl	$2, %eax	#, D.13971
	je	.L16	#,
	jmp	.L14	#
.L15:
	.loc 1 506 0
	movl	36(%rbx), %r12d	# symptr_17(D)->length, len
	.loc 1 507 0
	jmp	.L14	#
.L16:
	.loc 1 510 0
	movl	48(%rbx), %eax	# symptr_17(D)->flags, D.13972
	andl	$1, %eax	#, D.13972
	.loc 1 509 0
	testl	%eax, %eax	# D.13972
	je	.L17	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.6
	jmp	.L18	#
.L17:
	.loc 1 509 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.6
.L18:
	.loc 1 509 0 discriminator 3
	movq	%rax, %rsi	# iftmp.6,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 511 0 is_stmt 1 discriminator 3
	nop
.L14:
	.loc 1 514 0
	cmpl	$0, -104(%rbp)	#, offset
	js	.L19	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# which, tmp107
	cltq
	salq	$4, %rax	#, tmp108
	addq	$packsize, %rax	#, tmp109
	movl	12(%rax), %eax	# packsize[which_22].size, D.13969
	cmpl	-104(%rbp), %eax	# offset, D.13969
	jle	.L19	#,
	.loc 1 515 0 is_stmt 1
	movl	-108(%rbp), %eax	# which, tmp111
	cltq
	salq	$4, %rax	#, tmp112
	addq	$packsize, %rax	#, tmp113
	movq	(%rax), %rdx	# packsize[which_22].array, D.13973
	movl	-104(%rbp), %eax	# offset, tmp114
	cltq
	addq	%rdx, %rax	# D.13973, D.13973
	movzbl	(%rax), %eax	# *_36, D.13975
	movzbl	%al, %eax	# D.13975, D.13969
	andl	$63, %eax	#, size
	movl	%eax, %r13d	# size, size
	jmp	.L20	#
.L19:
	.loc 1 517 0
	movl	$0, %r13d	#, size
.L20:
	.loc 1 519 0
	testl	%r13d, %r13d	# size
	jne	.L21	#,
	.loc 1 521 0
	movl	32(%rbx), %eax	# symptr_17(D)->code, D.13969
	cmpl	$88, %eax	#, D.13969
	je	.L23	#,
	cmpl	$88, %eax	#, D.13969
	jg	.L24	#,
	cmpl	$65, %eax	#, D.13969
	je	.L25	#,
	cmpl	$65, %eax	#, D.13969
	jg	.L26	#,
	cmpl	$40, %eax	#, D.13969
	je	.L27	#,
	cmpl	$40, %eax	#, D.13969
	jg	.L28	#,
	cmpl	$37, %eax	#, D.13969
	je	.L29	#,
	jmp	.L22	#
.L28:
	cmpl	$47, %eax	#, D.13969
	je	.L30	#,
	cmpl	$64, %eax	#, D.13969
	je	.L30	#,
	jmp	.L22	#
.L26:
	cmpl	$72, %eax	#, D.13969
	je	.L31	#,
	cmpl	$72, %eax	#, D.13969
	jg	.L32	#,
	cmpl	$66, %eax	#, D.13969
	je	.L33	#,
	cmpl	$67, %eax	#, D.13969
	je	.L25	#,
	jmp	.L22	#
.L32:
	cmpl	$80, %eax	#, D.13969
	je	.L34	#,
	cmpl	$85, %eax	#, D.13969
	je	.L30	#,
	jmp	.L22	#
.L24:
	cmpl	$104, %eax	#, D.13969
	je	.L31	#,
	cmpl	$104, %eax	#, D.13969
	jg	.L35	#,
	cmpl	$97, %eax	#, D.13969
	je	.L25	#,
	cmpl	$97, %eax	#, D.13969
	jg	.L36	#,
	cmpl	$90, %eax	#, D.13969
	je	.L25	#,
	jmp	.L22	#
.L36:
	cmpl	$98, %eax	#, D.13969
	je	.L33	#,
	cmpl	$99, %eax	#, D.13969
	je	.L25	#,
	jmp	.L22	#
.L35:
	cmpl	$120, %eax	#, D.13969
	je	.L25	#,
	cmpl	$120, %eax	#, D.13969
	jg	.L37	#,
	cmpl	$117, %eax	#, D.13969
	je	.L30	#,
	cmpl	$119, %eax	#, D.13969
	je	.L30	#,
	jmp	.L22	#
.L37:
	cmpl	$344, %eax	#, D.13969
	je	.L38	#,
	cmpl	$376, %eax	#, D.13969
	je	.L39	#,
.L22:
	.loc 1 525 0
	movl	48(%rbx), %eax	# symptr_17(D)->flags, D.13972
	andl	$1, %eax	#, D.13972
	.loc 1 523 0
	testl	%eax, %eax	# D.13972
	je	.L40	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.7
	jmp	.L41	#
.L40:
	.loc 1 523 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.7
.L41:
	.loc 1 524 0 is_stmt 1 discriminator 3
	movl	32(%rbx), %edx	# symptr_17(D)->code, D.13969
	.loc 1 523 0 discriminator 3
	movzbl	%dl, %ecx	# D.13969, D.13969
	movq	%rax, %rdx	# iftmp.7,
	movl	%ecx, %esi	# D.13969,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L30:
	.loc 1 533 0
	movl	48(%rbx), %eax	# symptr_17(D)->flags, D.13972
	andl	$1, %eax	#, D.13972
	.loc 1 531 0
	testl	%eax, %eax	# D.13972
	je	.L42	#,
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.8
	jmp	.L43	#
.L42:
	.loc 1 531 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.8
.L43:
	.loc 1 531 0 discriminator 3
	movl	32(%rbx), %ecx	# symptr_17(D)->code, D.13969
	movq	%rax, %rdx	# iftmp.8,
	movl	%ecx, %esi	# D.13969,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L29:
	.loc 1 535 0 is_stmt 1
	movl	$0, %r13d	#, size
	.loc 1 536 0
	jmp	.L21	#
.L27:
.LBB4:
	.loc 1 539 0
	movq	(%rbx), %rax	# *symptr_17(D), tmp115
	movq	%rax, -96(%rbp)	# tmp115, savsym
	movq	8(%rbx), %rax	# *symptr_17(D), tmp116
	movq	%rax, -88(%rbp)	# tmp116, savsym
	movq	16(%rbx), %rax	# *symptr_17(D), tmp117
	movq	%rax, -80(%rbp)	# tmp117, savsym
	movq	24(%rbx), %rax	# *symptr_17(D), tmp118
	movq	%rax, -72(%rbp)	# tmp118, savsym
	movq	32(%rbx), %rax	# *symptr_17(D), tmp119
	movq	%rax, -64(%rbp)	# tmp119, savsym
	movq	40(%rbx), %rax	# *symptr_17(D), tmp120
	movq	%rax, -56(%rbp)	# tmp120, savsym
	movq	48(%rbx), %rax	# *symptr_17(D), tmp121
	movq	%rax, -48(%rbp)	# tmp121, savsym
	.loc 1 540 0
	movq	-80(%rbp), %rax	# savsym.grpbeg, D.13976
	movq	%rax, (%rbx)	# D.13976, symptr_17(D)->patptr
	.loc 1 541 0
	movq	-72(%rbp), %rax	# savsym.grpend, D.13976
	movq	%rax, 8(%rbx)	# D.13976, symptr_17(D)->patend
	.loc 1 546 0
	movq	%rbx, %rdi	# symptr,
	call	S_measure_struct	#
	movl	%eax, %r13d	#, size
	.loc 1 547 0
	movq	-96(%rbp), %rax	# savsym, tmp122
	movq	%rax, (%rbx)	# tmp122, *symptr_17(D)
	movq	-88(%rbp), %rax	# savsym, tmp123
	movq	%rax, 8(%rbx)	# tmp123, *symptr_17(D)
	movq	-80(%rbp), %rax	# savsym, tmp124
	movq	%rax, 16(%rbx)	# tmp124, *symptr_17(D)
	movq	-72(%rbp), %rax	# savsym, tmp125
	movq	%rax, 24(%rbx)	# tmp125, *symptr_17(D)
	movq	-64(%rbp), %rax	# savsym, tmp126
	movq	%rax, 32(%rbx)	# tmp126, *symptr_17(D)
	movq	-56(%rbp), %rax	# savsym, tmp127
	movq	%rax, 40(%rbx)	# tmp127, *symptr_17(D)
	movq	-48(%rbp), %rax	# savsym, tmp128
	movq	%rax, 48(%rbx)	# tmp128, *symptr_17(D)
	.loc 1 548 0
	nop
	jmp	.L21	#
.L38:
.LBE4:
	.loc 1 553 0
	testl	%r12d, %r12d	# len
	jne	.L44	#,
	.loc 1 554 0
	movl	$1, %r12d	#, len
.L44:
	.loc 1 555 0
	movl	%r14d, %eax	# total, tmp131
	cltd
	idivl	%r12d	# len
	movl	%edx, %r12d	# tmp130, len
.L23:
	.loc 1 558 0
	movl	$-1, %r13d	#, size
	.loc 1 559 0
	cmpl	%r12d, %r14d	# len, total
	jge	.L45	#,
	.loc 1 561 0
	movl	48(%rbx), %eax	# symptr_17(D)->flags, D.13972
	andl	$1, %eax	#, D.13972
	.loc 1 560 0
	testl	%eax, %eax	# D.13972
	je	.L46	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.9
	jmp	.L47	#
.L46:
	.loc 1 560 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.9
.L47:
	.loc 1 560 0 discriminator 3
	movq	%rax, %rsi	# iftmp.9,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 562 0 is_stmt 1 discriminator 3
	jmp	.L21	#
.L45:
	.loc 1 562 0 is_stmt 0
	jmp	.L21	#
.L39:
	.loc 1 564 0 is_stmt 1
	testl	%r12d, %r12d	# len
	jne	.L48	#,
	.loc 1 565 0
	movl	$1, %r12d	#, len
.L48:
	.loc 1 566 0
	movl	%r14d, %eax	# total, tmp133
	cltd
	idivl	%r12d	# len
	movl	%edx, -100(%rbp)	# tmp132, star
	.loc 1 567 0
	cmpl	$0, -100(%rbp)	#, star
	je	.L49	#,
	.loc 1 568 0
	subl	-100(%rbp), %r12d	# star, len
	jmp	.L25	#
.L49:
	.loc 1 570 0
	movl	$0, %r12d	#, len
.L25:
	.loc 1 578 0
	movl	$1, %r13d	#, size
	.loc 1 579 0
	jmp	.L21	#
.L33:
	.loc 1 582 0
	leal	7(%r12), %eax	#, D.13969
	leal	7(%rax), %edx	#, tmp135
	testl	%eax, %eax	# tmp134
	cmovs	%edx, %eax	# tmp135,, tmp134
	sarl	$3, %eax	#, tmp136
	movl	%eax, %r12d	# tmp136, len
	.loc 1 583 0
	movl	$1, %r13d	#, size
	.loc 1 584 0
	jmp	.L21	#
.L31:
	.loc 1 587 0
	leal	1(%r12), %eax	#, D.13969
	movl	%eax, %edx	# D.13969, tmp137
	shrl	$31, %edx	#, tmp137
	addl	%edx, %eax	# tmp137, tmp138
	sarl	%eax	# tmp139
	movl	%eax, %r12d	# tmp139, len
	.loc 1 588 0
	movl	$1, %r13d	#, size
	.loc 1 589 0
	jmp	.L21	#
.L34:
	.loc 1 592 0
	movl	$1, %r12d	#, len
	.loc 1 593 0
	movl	$8, %r13d	#, size
	.loc 1 594 0
	nop
.L21:
	.loc 1 597 0
	movl	%r13d, %eax	# size, D.13969
	imull	%r12d, %eax	# len, D.13969
	addl	%eax, %r14d	# D.13969, total
.L13:
.LBE3:
	.loc 1 497 0 discriminator 1
	movq	%rbx, %rdi	# symptr,
	call	S_next_symbol	#
	testb	%al, %al	# D.13968
	jne	.L50	#,
	.loc 1 599 0
	movl	%r14d, %eax	# total, D.13977
	.loc 1 600 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	S_measure_struct, .-S_measure_struct
	.section	.rodata
	.align 8
.LC8:
	.string	"No group ending character '%c' found in template"
	.text
	.type	S_group_end, @function
S_group_end:
.LFB4:
	.loc 1 608 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rax	# patptr, patptr
	movq	%rsi, %rbx	# patend, patend
	movb	%dl, -36(%rbp)	# tmp68, ender
	.loc 1 609 0
	jmp	.L53	#
.L63:
.LBB5:
	.loc 1 610 0
	movq	%rax, %rdx	# patptr, patptr.10
	leaq	1(%rdx), %rax	#, patptr
	movzbl	(%rdx), %edx	# *patptr.10_6, tmp69
	movb	%dl, -17(%rbp)	# tmp69, c
	.loc 1 612 0
	cmpb	$32, -17(%rbp)	#, c
	je	.L54	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	cmpb	$9, -17(%rbp)	#, c
	je	.L54	#,
	cmpb	$10, -17(%rbp)	#, c
	je	.L54	#,
	cmpb	$13, -17(%rbp)	#, c
	je	.L54	#,
	cmpb	$12, -17(%rbp)	#, c
	jne	.L55	#,
.L54:
	.loc 1 613 0 is_stmt 1
	jmp	.L53	#
.L55:
	.loc 1 614 0
	movzbl	-17(%rbp), %edx	# c, tmp70
	cmpb	-36(%rbp), %dl	# ender, tmp70
	jne	.L56	#,
	.loc 1 615 0
	subq	$1, %rax	#, D.13991
	jmp	.L57	#
.L56:
	.loc 1 616 0
	cmpb	$35, -17(%rbp)	#, c
	jne	.L58	#,
	.loc 1 617 0
	jmp	.L59	#
.L61:
	.loc 1 618 0
	addq	$1, %rax	#, patptr
.L59:
	.loc 1 617 0 discriminator 1
	cmpq	%rbx, %rax	# patend, patptr
	jae	.L60	#,
	.loc 1 617 0 is_stmt 0 discriminator 2
	movzbl	(%rax), %edx	# *patptr_1, D.13992
	cmpb	$10, %dl	#, D.13992
	jne	.L61	#,
.L60:
	.loc 1 619 0 is_stmt 1
	jmp	.L53	#
.L58:
	.loc 1 620 0
	cmpb	$40, -17(%rbp)	#, c
	jne	.L62	#,
	.loc 1 621 0
	movl	$41, %edx	#,
	movq	%rbx, %rsi	# patend,
	movq	%rax, %rdi	# patptr,
	call	S_group_end	#
	addq	$1, %rax	#, patptr
	jmp	.L53	#
.L62:
	.loc 1 622 0
	cmpb	$91, -17(%rbp)	#, c
	jne	.L53	#,
	.loc 1 623 0
	movl	$93, %edx	#,
	movq	%rbx, %rsi	# patend,
	movq	%rax, %rdi	# patptr,
	call	S_group_end	#
	addq	$1, %rax	#, patptr
.L53:
.LBE5:
	.loc 1 609 0 discriminator 1
	cmpq	%rbx, %rax	# patend, patptr
	jb	.L63	#,
	.loc 1 625 0
	movsbl	-36(%rbp), %eax	# ender, D.13993
	movl	%eax, %esi	# D.13993,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 627 0
	movl	$0, %eax	#, D.13991
.L57:
	.loc 1 628 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	S_group_end, .-S_group_end
	.section	.rodata
	.align 8
.LC9:
	.string	"pack/unpack repeat count overflow"
	.text
	.type	S_get_num, @function
S_get_num:
.LFB5:
	.loc 1 637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# patptr, patptr
	movq	%rsi, -40(%rbp)	# lenptr, lenptr
	.loc 1 638 0
	movq	%rbx, %rax	# patptr, patptr.11
	leaq	1(%rax), %rbx	#, patptr
	movzbl	(%rax), %eax	# *patptr.11_4, D.13995
	movsbl	%al, %eax	# D.13995, D.13996
	subl	$48, %eax	#, tmp72
	movl	%eax, -20(%rbp)	# tmp72, len
	.loc 1 639 0
	jmp	.L65	#
.L68:
	.loc 1 640 0
	cmpl	$214748363, -20(%rbp)	#, len
	jle	.L66	#,
	.loc 1 641 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L66:
	.loc 1 642 0
	movl	-20(%rbp), %edx	# len, tmp73
	movl	%edx, %eax	# tmp73, tmp74
	sall	$2, %eax	#, tmp74
	addl	%edx, %eax	# tmp73, tmp74
	addl	%eax, %eax	# tmp75
	movl	%eax, %edx	# tmp74, D.13996
	movq	%rbx, %rax	# patptr, patptr.12
	leaq	1(%rax), %rbx	#, patptr
	movzbl	(%rax), %eax	# *patptr.12_12, D.13995
	movsbl	%al, %eax	# D.13995, D.13996
	subl	$48, %eax	#, D.13996
	addl	%edx, %eax	# D.13996, tmp76
	movl	%eax, -20(%rbp)	# tmp76, len
.L65:
	.loc 1 639 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_1, D.13995
	cmpb	$47, %al	#, D.13995
	jle	.L67	#,
	.loc 1 639 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *patptr_1, D.13995
	cmpb	$57, %al	#, D.13995
	jle	.L68	#,
.L67:
	.loc 1 644 0 is_stmt 1
	movq	-40(%rbp), %rax	# lenptr, tmp77
	movl	-20(%rbp), %edx	# len, tmp78
	movl	%edx, (%rax)	# tmp78, *lenptr_18(D)
	.loc 1 645 0
	movq	%rbx, %rax	# patptr, D.13997
	.loc 1 646 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	S_get_num, .-S_get_num
	.section	.rodata
.LC10:
	.string	"Invalid type ',' in %s"
	.align 8
.LC11:
	.string	"()-group starts with a count in %s"
	.align 8
.LC12:
	.string	"Too deeply nested ()-groups in %s"
.LC13:
	.string	"sSiIlLxX"
	.align 8
.LC14:
	.string	"'%c' allowed only after types %s in %s"
	.align 8
.LC15:
	.string	"Duplicate modifier '%c' after '%c' in %s"
.LC16:
	.string	"Malformed integer in [] in %s"
	.align 8
.LC17:
	.string	"'/' does not take a repeat count in %s"
	.text
	.type	S_next_symbol, @function
S_next_symbol:
.LFB6:
	.loc 1 653 0
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
	movq	%rdi, %r12	# symptr, symptr
	.loc 1 654 0
	movq	(%r12), %rbx	# symptr_25(D)->patptr, patptr
	.loc 1 655 0
	movq	8(%r12), %r13	# symptr_25(D)->patend, patend
	.loc 1 657 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$-5, %eax	#, D.14000
	movl	%eax, 48(%r12)	# D.14000, symptr_25(D)->flags
	.loc 1 659 0
	jmp	.L71	#
.L135:
	.loc 1 660 0
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$32, %al	#, D.13999
	je	.L72	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$9, %al	#, D.13999
	je	.L72	#,
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$10, %al	#, D.13999
	je	.L72	#,
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$13, %al	#, D.13999
	je	.L72	#,
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$12, %al	#, D.13999
	jne	.L73	#,
.L72:
	.loc 1 661 0 is_stmt 1
	addq	$1, %rbx	#, patptr
	jmp	.L71	#
.L73:
	.loc 1 662 0
	movzbl	(%rbx), %eax	# *patptr_12, D.13999
	cmpb	$35, %al	#, D.13999
	jne	.L74	#,
	.loc 1 663 0
	addq	$1, %rbx	#, patptr
	.loc 1 664 0
	jmp	.L75	#
.L77:
	.loc 1 665 0
	addq	$1, %rbx	#, patptr
.L75:
	.loc 1 664 0 discriminator 1
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L76	#,
	.loc 1 664 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *patptr_1, D.13999
	cmpb	$10, %al	#, D.13999
	jne	.L77	#,
.L76:
	.loc 1 666 0 is_stmt 1
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L71	#,
	.loc 1 667 0
	addq	$1, %rbx	#, patptr
	jmp	.L71	#
.L74:
.LBB6:
	.loc 1 670 0
	movq	%rbx, %rax	# patptr, patptr.13
	leaq	1(%rax), %rbx	#, patptr
	movzbl	(%rax), %eax	# *patptr.13_40, D.13999
	movsbl	%al, %eax	# D.13999, D.14001
	andl	$255, %eax	#, tmp184
	movl	%eax, -124(%rbp)	# tmp184, code
	.loc 1 671 0
	movl	$0, -116(%rbp)	#, inherited_modifiers
	.loc 1 673 0
	cmpl	$44, -124(%rbp)	#, code
	jne	.L79	#,
	.loc 1 674 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$2, %eax	#, D.14000
	testl	%eax, %eax	# D.14000
	jne	.L80	#,
	.loc 1 674 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.14
	movq	80(%rax), %rax	# PL_curcop.14_48->cop_warnings, D.14002
	testq	%rax, %rax	# D.14002
	je	.L81	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.15
	movq	80(%rax), %rax	# PL_curcop.15_50->cop_warnings, D.14002
	cmpq	$32, %rax	#, D.14002
	je	.L81	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.16
	movq	80(%rax), %rax	# PL_curcop.16_52->cop_warnings, D.14002
	cmpq	$16, %rax	#, D.14002
	je	.L82	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.17
	movq	80(%rax), %rax	# PL_curcop.17_54->cop_warnings, D.14002
	movq	(%rax), %rax	# _55->sv_any, D.14003
	movq	(%rax), %rax	# MEM[(struct XPV *)_56].xpv_pv, D.14004
	addq	$10, %rax	#, D.14004
	movzbl	(%rax), %eax	# *_58, D.13999
	movsbl	%al, %eax	# D.13999, D.14001
	andl	$16, %eax	#, D.14001
	testl	%eax, %eax	# D.14001
	jne	.L82	#,
.L81:
	.loc 1 674 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.18
	movq	80(%rax), %rax	# PL_curcop.18_62->cop_warnings, D.14002
	testq	%rax, %rax	# D.14002
	jne	.L80	#,
	.loc 1 674 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.19
	movzbl	%al, %eax	# PL_dowarn.19, D.14001
	andl	$1, %eax	#, D.14001
	testl	%eax, %eax	# D.14001
	je	.L80	#,
.L82:
	.loc 1 675 0 is_stmt 1
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	orl	$2, %eax	#, D.14000
	movl	%eax, 48(%r12)	# D.14000, symptr_25(D)->flags
	.loc 1 678 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 676 0
	testl	%eax, %eax	# D.14000
	je	.L83	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.20
	jmp	.L84	#
.L83:
	.loc 1 676 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.20
.L84:
	.loc 1 676 0 discriminator 3
	movq	%rax, %rdx	# iftmp.20,
	movl	$.LC10, %esi	#,
	movl	$42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 680 0 is_stmt 1 discriminator 3
	jmp	.L71	#
.L80:
	.loc 1 680 0 is_stmt 0
	jmp	.L71	#
.L79:
	.loc 1 684 0 is_stmt 1
	cmpl	$40, -124(%rbp)	#, code
	jne	.L136	#,
	.loc 1 685 0
	movzbl	(%rbx), %eax	# *patptr_41, D.13999
	cmpb	$47, %al	#, D.13999
	jle	.L86	#,
	.loc 1 685 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_41, D.13999
	cmpb	$57, %al	#, D.13999
	jle	.L87	#,
.L86:
	.loc 1 685 0 discriminator 2
	movzbl	(%rbx), %eax	# *patptr_41, D.13999
	cmpb	$42, %al	#, D.13999
	je	.L87	#,
	.loc 1 685 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_41, D.13999
	cmpb	$91, %al	#, D.13999
	jne	.L88	#,
.L87:
	.loc 1 687 0 is_stmt 1
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 686 0
	testl	%eax, %eax	# D.14000
	je	.L89	#,
	.loc 1 686 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.21
	jmp	.L90	#
.L89:
	.loc 1 686 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.21
.L90:
	.loc 1 686 0 discriminator 3
	movq	%rax, %rsi	# iftmp.21,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L88:
	.loc 1 688 0 is_stmt 1
	movq	%rbx, 16(%r12)	# patptr, symptr_25(D)->grpbeg
	.loc 1 689 0
	movl	$41, %edx	#,
	movq	%r13, %rsi	# patend,
	movq	%rbx, %rdi	# patptr,
	call	S_group_end	#
	movq	%rax, 24(%r12)	# D.14004, symptr_25(D)->grpend
	movq	24(%r12), %rax	# symptr_25(D)->grpend, D.14004
	leaq	1(%rax), %rbx	#, patptr
	.loc 1 690 0
	movl	44(%r12), %eax	# symptr_25(D)->level, D.14001
	cmpl	$99, %eax	#, D.14001
	jle	.L136	#,
	.loc 1 692 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 691 0
	testl	%eax, %eax	# D.14000
	je	.L91	#,
	.loc 1 691 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.22
	jmp	.L92	#
.L91:
	.loc 1 691 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.22
.L92:
	.loc 1 691 0 discriminator 3
	movq	%rax, %rsi	# iftmp.22,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 702 0 is_stmt 1 discriminator 3
	jmp	.L93	#
.L136:
	.loc 1 702 0 is_stmt 0
	jmp	.L93	#
.L107:
.LBB7:
	.loc 1 704 0 is_stmt 1
	movl	$0, -120(%rbp)	#, modifier
	.loc 1 705 0
	movzbl	(%rbx), %eax	# *patptr_4, D.13999
	movsbl	%al, %eax	# D.13999, D.14001
	cmpl	$33, %eax	#, D.14001
	je	.L95	#,
	.loc 1 721 0
	jmp	.L96	#
.L95:
	.loc 1 707 0
	movl	$256, -120(%rbp)	#, modifier
	.loc 1 708 0
	movq	$.LC13, -112(%rbp)	#, allowed
	.loc 1 709 0
	nop
.L96:
	.loc 1 724 0
	cmpl	$0, -120(%rbp)	#, modifier
	jne	.L97	#,
	.loc 1 725 0
	jmp	.L98	#
.L97:
	.loc 1 727 0
	movl	-124(%rbp), %eax	# code, tmp185
	movzbl	%al, %edx	# tmp185, D.14001
	movq	-112(%rbp), %rax	# allowed, tmp186
	movl	%edx, %esi	# D.14001,
	movq	%rax, %rdi	# tmp186,
	call	strchr	#
	testq	%rax, %rax	# D.14004
	jne	.L137	#,
	.loc 1 729 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 728 0
	testl	%eax, %eax	# D.14000
	je	.L100	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.23
	jmp	.L101	#
.L100:
	.loc 1 728 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.23
.L101:
	.loc 1 728 0 discriminator 3
	movzbl	(%rbx), %edx	# *patptr_4, D.13999
	movsbl	%dl, %esi	# D.13999, D.14001
	movq	-112(%rbp), %rdx	# allowed, tmp187
	movq	%rax, %rcx	# iftmp.23,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L137:
	.loc 1 740 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.26
	movq	80(%rax), %rax	# PL_curcop.26_103->cop_warnings, D.14002
	testq	%rax, %rax	# D.14002
	je	.L102	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.27
	movq	80(%rax), %rax	# PL_curcop.27_105->cop_warnings, D.14002
	cmpq	$32, %rax	#, D.14002
	je	.L102	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.28
	movq	80(%rax), %rax	# PL_curcop.28_107->cop_warnings, D.14002
	cmpq	$16, %rax	#, D.14002
	je	.L103	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.29
	movq	80(%rax), %rax	# PL_curcop.29_109->cop_warnings, D.14002
	movq	(%rax), %rax	# _110->sv_any, D.14003
	movq	(%rax), %rax	# MEM[(struct XPV *)_111].xpv_pv, D.14004
	addq	$10, %rax	#, D.14004
	movzbl	(%rax), %eax	# *_113, D.13999
	movsbl	%al, %eax	# D.13999, D.14001
	andl	$16, %eax	#, D.14001
	testl	%eax, %eax	# D.14001
	jne	.L103	#,
.L102:
	.loc 1 740 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.30
	movq	80(%rax), %rax	# PL_curcop.30_117->cop_warnings, D.14002
	testq	%rax, %rax	# D.14002
	jne	.L104	#,
	.loc 1 740 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.31
	movzbl	%al, %eax	# PL_dowarn.31, D.14001
	andl	$1, %eax	#, D.14001
	testl	%eax, %eax	# D.14001
	je	.L104	#,
.L103:
	.loc 1 741 0 is_stmt 1
	movl	-120(%rbp), %eax	# modifier, tmp188
	movl	-124(%rbp), %edx	# code, tmp189
	andl	%edx, %eax	# tmp189, D.14001
	testl	%eax, %eax	# D.14001
	je	.L104	#,
	.loc 1 745 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 742 0
	testl	%eax, %eax	# D.14000
	je	.L105	#,
	.loc 1 742 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.32
	jmp	.L106	#
.L105:
	.loc 1 742 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.32
.L106:
	.loc 1 742 0 discriminator 3
	movl	-124(%rbp), %edx	# code, tmp190
	movzbl	%dl, %ecx	# tmp190, D.14001
	.loc 1 744 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %edx	# *patptr_4, D.13999
	.loc 1 742 0 discriminator 3
	movsbl	%dl, %edx	# D.13999, D.14001
	movq	%rax, %r8	# iftmp.32,
	movl	$.LC15, %esi	#,
	movl	$42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L104:
	.loc 1 748 0
	movl	-120(%rbp), %eax	# modifier, tmp191
	orl	%eax, -124(%rbp)	# tmp191, code
	.loc 1 749 0
	addq	$1, %rbx	#, patptr
.L93:
.LBE7:
	.loc 1 702 0 discriminator 1
	cmpq	%r13, %rbx	# patend, patptr
	jb	.L107	#,
.L98:
	.loc 1 753 0
	movl	-124(%rbp), %eax	# code, code.33
	orl	-116(%rbp), %eax	# inherited_modifiers, D.14000
	movl	%eax, -124(%rbp)	# D.14000, code
	.loc 1 756 0
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L108	#,
	.loc 1 757 0
	movzbl	(%rbx), %eax	# *patptr_4, D.13999
	cmpb	$47, %al	#, D.13999
	jle	.L109	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_4, D.13999
	cmpb	$57, %al	#, D.13999
	jg	.L109	#,
	.loc 1 758 0 is_stmt 1
	leaq	36(%r12), %rax	#, D.14005
	movq	%rax, %rsi	# D.14005,
	movq	%rbx, %rdi	# patptr,
	call	S_get_num	#
	movq	%rax, %rbx	#, patptr
	.loc 1 759 0
	movl	$1, 40(%r12)	#, symptr_25(D)->howlen
	jmp	.L110	#
.L109:
	.loc 1 761 0
	movzbl	(%rbx), %eax	# *patptr_4, D.13999
	cmpb	$42, %al	#, D.13999
	jne	.L111	#,
	.loc 1 762 0
	addq	$1, %rbx	#, patptr
	.loc 1 763 0
	movl	$2, 40(%r12)	#, symptr_25(D)->howlen
	jmp	.L110	#
.L111:
	.loc 1 765 0
	movzbl	(%rbx), %eax	# *patptr_4, D.13999
	cmpb	$91, %al	#, D.13999
	jne	.L112	#,
.LBB8:
	.loc 1 766 0
	addq	$1, %rbx	#, patptr
	movq	%rbx, -104(%rbp)	# patptr, lenptr
	.loc 1 767 0
	movl	$1, 40(%r12)	#, symptr_25(D)->howlen
	.loc 1 768 0
	movl	$93, %edx	#,
	movq	%r13, %rsi	# patend,
	movq	%rbx, %rdi	# patptr,
	call	S_group_end	#
	leaq	1(%rax), %rbx	#, patptr
	.loc 1 770 0
	movq	-104(%rbp), %rax	# lenptr, tmp192
	movzbl	(%rax), %eax	# *lenptr_143, D.13999
	cmpb	$47, %al	#, D.13999
	jle	.L113	#,
	.loc 1 770 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# lenptr, tmp193
	movzbl	(%rax), %eax	# *lenptr_143, D.13999
	cmpb	$57, %al	#, D.13999
	jg	.L113	#,
	.loc 1 771 0 is_stmt 1
	leaq	36(%r12), %rdx	#, D.14005
	movq	-104(%rbp), %rax	# lenptr, tmp194
	movq	%rdx, %rsi	# D.14005,
	movq	%rax, %rdi	# tmp194,
	call	S_get_num	#
	movq	%rax, -104(%rbp)	# tmp195, lenptr
	.loc 1 772 0
	movq	-104(%rbp), %rax	# lenptr, tmp196
	movzbl	(%rax), %eax	# *lenptr_149, D.13999
	cmpb	$93, %al	#, D.13999
	je	.L114	#,
	.loc 1 774 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 773 0
	testl	%eax, %eax	# D.14000
	je	.L115	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.34
	jmp	.L116	#
.L115:
	.loc 1 773 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.34
.L116:
	.loc 1 773 0 discriminator 3
	movq	%rax, %rsi	# iftmp.34,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 772 0 is_stmt 1 discriminator 3
	jmp	.L117	#
.L114:
	.loc 1 772 0 is_stmt 0 discriminator 1
	jmp	.L117	#
.L113:
.LBB9:
	.loc 1 776 0 is_stmt 1
	movq	(%r12), %rax	# *symptr_25(D), tmp197
	movq	%rax, -96(%rbp)	# tmp197, savsym
	movq	8(%r12), %rax	# *symptr_25(D), tmp198
	movq	%rax, -88(%rbp)	# tmp198, savsym
	movq	16(%r12), %rax	# *symptr_25(D), tmp199
	movq	%rax, -80(%rbp)	# tmp199, savsym
	movq	24(%r12), %rax	# *symptr_25(D), tmp200
	movq	%rax, -72(%rbp)	# tmp200, savsym
	movq	32(%r12), %rax	# *symptr_25(D), tmp201
	movq	%rax, -64(%rbp)	# tmp201, savsym
	movq	40(%r12), %rax	# *symptr_25(D), tmp202
	movq	%rax, -56(%rbp)	# tmp202, savsym
	movq	48(%r12), %rax	# *symptr_25(D), tmp203
	movq	%rax, -48(%rbp)	# tmp203, savsym
	.loc 1 777 0
	leaq	-1(%rbx), %rax	#, D.14004
	movq	%rax, 8(%r12)	# D.14004, symptr_25(D)->patend
	.loc 1 778 0
	movq	-104(%rbp), %rax	# lenptr, tmp204
	movq	%rax, (%r12)	# tmp204, symptr_25(D)->patptr
	.loc 1 779 0
	movq	%r12, %rdi	# symptr,
	call	S_measure_struct	#
	movl	%eax, -60(%rbp)	# D.14001, savsym.length
	.loc 1 780 0
	movq	-96(%rbp), %rax	# savsym, tmp205
	movq	%rax, (%r12)	# tmp205, *symptr_25(D)
	movq	-88(%rbp), %rax	# savsym, tmp206
	movq	%rax, 8(%r12)	# tmp206, *symptr_25(D)
	movq	-80(%rbp), %rax	# savsym, tmp207
	movq	%rax, 16(%r12)	# tmp207, *symptr_25(D)
	movq	-72(%rbp), %rax	# savsym, tmp208
	movq	%rax, 24(%r12)	# tmp208, *symptr_25(D)
	movq	-64(%rbp), %rax	# savsym, tmp209
	movq	%rax, 32(%r12)	# tmp209, *symptr_25(D)
	movq	-56(%rbp), %rax	# savsym, tmp210
	movq	%rax, 40(%r12)	# tmp210, *symptr_25(D)
	movq	-48(%rbp), %rax	# savsym, tmp211
	movq	%rax, 48(%r12)	# tmp211, *symptr_25(D)
.LBE9:
.LBE8:
	jmp	.L110	#
.L117:
	jmp	.L110	#
.L112:
	.loc 1 783 0
	movl	$0, 40(%r12)	#, symptr_25(D)->howlen
	.loc 1 784 0
	movl	$1, 36(%r12)	#, symptr_25(D)->length
	.loc 1 788 0
	jmp	.L118	#
.L110:
	jmp	.L118	#
.L132:
	.loc 1 789 0
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$32, %al	#, D.13999
	je	.L119	#,
	.loc 1 789 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$9, %al	#, D.13999
	je	.L119	#,
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$10, %al	#, D.13999
	je	.L119	#,
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$13, %al	#, D.13999
	je	.L119	#,
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$12, %al	#, D.13999
	jne	.L120	#,
.L119:
	.loc 1 790 0 is_stmt 1
	addq	$1, %rbx	#, patptr
	jmp	.L118	#
.L120:
	.loc 1 791 0
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$35, %al	#, D.13999
	jne	.L121	#,
	.loc 1 792 0
	addq	$1, %rbx	#, patptr
	.loc 1 793 0
	jmp	.L122	#
.L124:
	.loc 1 794 0
	addq	$1, %rbx	#, patptr
.L122:
	.loc 1 793 0 discriminator 1
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L123	#,
	.loc 1 793 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *patptr_6, D.13999
	cmpb	$10, %al	#, D.13999
	jne	.L124	#,
.L123:
	.loc 1 795 0 is_stmt 1
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L118	#,
	.loc 1 796 0
	addq	$1, %rbx	#, patptr
	jmp	.L118	#
.L121:
	.loc 1 798 0
	movzbl	(%rbx), %eax	# *patptr_9, D.13999
	cmpb	$47, %al	#, D.13999
	jne	.L126	#,
	.loc 1 799 0
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	orl	$4, %eax	#, D.14000
	movl	%eax, 48(%r12)	# D.14000, symptr_25(D)->flags
	.loc 1 800 0
	addq	$1, %rbx	#, patptr
	.loc 1 801 0
	cmpq	%r13, %rbx	# patend, patptr
	jae	.L126	#,
	.loc 1 802 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_170, D.13999
	.loc 1 801 0 discriminator 1
	cmpb	$47, %al	#, D.13999
	jle	.L127	#,
	.loc 1 802 0
	movzbl	(%rbx), %eax	# *patptr_170, D.13999
	cmpb	$57, %al	#, D.13999
	jle	.L128	#,
.L127:
	.loc 1 802 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *patptr_170, D.13999
	cmpb	$42, %al	#, D.13999
	je	.L128	#,
	movzbl	(%rbx), %eax	# *patptr_170, D.13999
	cmpb	$91, %al	#, D.13999
	jne	.L126	#,
.L128:
	.loc 1 804 0 is_stmt 1
	movl	48(%r12), %eax	# symptr_25(D)->flags, D.14000
	andl	$1, %eax	#, D.14000
	.loc 1 803 0
	testl	%eax, %eax	# D.14000
	je	.L129	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	movl	$.LC2, %eax	#, iftmp.35
	jmp	.L130	#
.L129:
	.loc 1 803 0 discriminator 2
	movl	$.LC3, %eax	#, iftmp.35
.L130:
	.loc 1 803 0 discriminator 3
	movq	%rax, %rsi	# iftmp.35,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 806 0 is_stmt 1 discriminator 3
	jmp	.L131	#
.L126:
	.loc 1 806 0 is_stmt 0
	jmp	.L131	#
.L118:
	.loc 1 788 0 is_stmt 1 discriminator 1
	cmpq	%r13, %rbx	# patend, patptr
	jb	.L132	#,
	jmp	.L133	#
.L131:
	jmp	.L133	#
.L108:
	.loc 1 811 0
	movl	$0, 40(%r12)	#, symptr_25(D)->howlen
	.loc 1 812 0
	movl	$1, 36(%r12)	#, symptr_25(D)->length
.L133:
	.loc 1 815 0
	movl	-124(%rbp), %eax	# code, tmp212
	movl	%eax, 32(%r12)	# tmp212, symptr_25(D)->code
	.loc 1 816 0
	movq	%rbx, (%r12)	# patptr, symptr_25(D)->patptr
	.loc 1 817 0
	movl	$1, %eax	#, D.13999
	jmp	.L134	#
.L71:
.LBE6:
	.loc 1 659 0 discriminator 1
	cmpq	%r13, %rbx	# patend, patptr
	jb	.L135	#,
	.loc 1 820 0
	movq	%rbx, (%r12)	# patptr, symptr_25(D)->patptr
	.loc 1 821 0
	movl	$0, %eax	#, D.13999
.L134:
	.loc 1 822 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	S_next_symbol, .-S_next_symbol
	.globl	Perl_unpack_str
	.type	Perl_unpack_str, @function
Perl_unpack_str:
.LFB7:
	.loc 1 834 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# pat, pat
	movq	%rsi, %r11	# patend, patend
	movq	%rdx, %r10	# s, s
	movq	%rcx, -80(%rbp)	# strbeg, strbeg
	movq	%r8, -88(%rbp)	# strend, strend
	movq	%r9, -96(%rbp)	# new_s, new_s
	.loc 1 835 0
	leaq	-64(%rbp), %rsi	#, tmp63
	movl	$0, %eax	#, tmp64
	movl	$7, %edx	#, tmp65
	movq	%rsi, %rdi	# tmp63, tmp63
	movq	%rdx, %rcx	# tmp65, tmp65
	rep stosq
	.loc 1 836 0
	movq	-72(%rbp), %rax	# pat, tmp66
	movq	%rax, -64(%rbp)	# tmp66, sym.patptr
	.loc 1 837 0
	movq	%r11, -56(%rbp)	# patend, sym.patend
	.loc 1 838 0
	movl	24(%rbp), %eax	# flags, tmp67
	movl	%eax, -16(%rbp)	# tmp67, sym.flags
	.loc 1 840 0
	movq	-88(%rbp), %rdx	# strend, tmp68
	leaq	-64(%rbp), %rax	#, tmp69
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp68,
	movq	%r10, %rdx	# s,
	movq	%r10, %rsi	# s,
	movq	%rax, %rdi	# tmp69,
	call	S_unpack_rec	#
	.loc 1 841 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_unpack_str, .-Perl_unpack_str
	.globl	Perl_unpackstring
	.type	Perl_unpackstring, @function
Perl_unpackstring:
.LFB8:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# pat, pat
	movq	%rsi, %r10	# patend, patend
	movq	%rdx, %r9	# s, s
	movq	%rcx, -80(%rbp)	# strend, strend
	movl	%r8d, -84(%rbp)	# flags, flags
	.loc 1 855 0
	leaq	-64(%rbp), %rsi	#, tmp63
	movl	$0, %eax	#, tmp64
	movl	$7, %edx	#, tmp65
	movq	%rsi, %rdi	# tmp63, tmp63
	movq	%rdx, %rcx	# tmp65, tmp65
	rep stosq
	.loc 1 856 0
	movq	-72(%rbp), %rax	# pat, tmp66
	movq	%rax, -64(%rbp)	# tmp66, sym.patptr
	.loc 1 857 0
	movq	%r10, -56(%rbp)	# patend, sym.patend
	.loc 1 858 0
	movl	-84(%rbp), %eax	# flags, tmp67
	movl	%eax, -16(%rbp)	# tmp67, sym.flags
	.loc 1 860 0
	movq	-80(%rbp), %rdx	# strend, tmp68
	leaq	-64(%rbp), %rax	#, tmp69
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp68,
	movq	%r9, %rdx	# s,
	movq	%r9, %rsi	# s,
	movq	%rax, %rdi	# tmp69,
	call	S_unpack_rec	#
	.loc 1 861 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_unpackstring, .-Perl_unpackstring
	.section	.rodata
.LC19:
	.string	"Invalid type '%c' in unpack"
	.align 8
.LC20:
	.string	"'@' outside of string in unpack"
	.align 8
.LC21:
	.string	"'X' outside of string in unpack"
	.align 8
.LC22:
	.string	"'x' outside of string in unpack"
	.align 8
.LC23:
	.string	"'/' must follow a numeric type in unpack"
.LC24:
	.string	"%.*lu"
	.align 8
.LC25:
	.string	"Unterminated compressed integer in unpack"
	.align 8
.LC26:
	.string	"'P' must have an explicit size in unpack"
.LC27:
	.string	"fFdD"
.LC28:
	.string	"cCsSiIlLnNUvVqQjJ"
	.align 8
.LC30:
	.string	"Count after length/code in unpack"
	.align 8
.LC31:
	.string	"length/code after end of string in unpack"
.LC32:
	.string	"Negative '/' count in unpack"
	.align 8
.LC33:
	.string	"Code missing after '/' in unpack"
	.text
	.type	S_unpack_rec, @function
S_unpack_rec:
.LFB9:
	.loc 1 866 0
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
	subq	$360, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %r14	# symptr, symptr
	movq	%rsi, %rbx	# s, s
	movq	%rdx, -376(%rbp)	# strbeg, strbeg
	movq	%rcx, -384(%rbp)	# strend, strend
	movq	%r8, -392(%rbp)	# new_s, new_s
	.loc 1 866 0
	movq	%fs:40, %rax	#, tmp990
	movq	%rax, -56(%rbp)	# tmp990, D.14038
	xorl	%eax, %eax	# tmp990
	.loc 1 867 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 869 0
	movl	$0, %r12d	#, len
	.loc 1 870 0
	movl	$0, %r15d	#, bits
	.loc 1 873 0
	movq	%r13, %rdx	# sp, sp.36
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.37
	subq	%rax, %rdx	# PL_stack_base.38, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sarq	$3, %rax	#, tmp751
	movl	%eax, -308(%rbp)	# D.14016, start_sp_offset
	.loc 1 905 0
	movl	$0, -336(%rbp)	#, checksum
	.loc 1 906 0
	movq	$0, -192(%rbp)	#, cuv
	.loc 1 907 0
	movl	$0, %eax	#, tmp752
	movq	%rax, -184(%rbp)	# tmp752, cdouble
	.loc 1 908 0
	movl	$64, -304(%rbp)	#, bits_in_uv
	.loc 1 909 0
	movq	%rbx, -160(%rbp)	# s, strrelbeg
	.loc 1 910 0
	movb	$0, -367(%rbp)	#, beyond
	.loc 1 912 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	andl	$16, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	setne	%al	#, D.14018
	movb	%al, -366(%rbp)	# D.14018, unpack_only_one
	.loc 1 914 0
	jmp	.L143	#
.L424:
	.loc 1 915 0
	movl	32(%r14), %eax	# symptr_260(D)->code, tmp753
	movl	%eax, -340(%rbp)	# tmp753, datumtype
	.loc 1 919 0
	cmpb	$0, -366(%rbp)	#, unpack_only_one
	je	.L144	#,
	.loc 1 920 0
	movq	%r13, %rdx	# sp, sp.39
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.40
	subq	%rax, %rdx	# PL_stack_base.41, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sarq	$3, %rax	#, tmp754
	movq	%rax, %rdx	# tmp754, D.14016
	movl	-308(%rbp), %eax	# start_sp_offset, tmp755
	addl	$1, %eax	#, D.14020
	cltq
	cmpq	%rax, %rdx	# D.14016, D.14016
	jne	.L144	#,
	.loc 1 921 0
	cmpl	$47, -340(%rbp)	#, datumtype
	je	.L144	#,
	.loc 1 922 0
	jmp	.L145	#
.L144:
	.loc 1 924 0
	movl	40(%r14), %eax	# symptr_260(D)->howlen, tmp756
	movl	%eax, -300(%rbp)	# tmp756, howlen
	movl	-300(%rbp), %eax	# howlen, howlen
	cmpl	$1, %eax	#, howlen
	jbe	.L147	#,
	cmpl	$2, %eax	#, howlen
	je	.L148	#,
	jmp	.L146	#
.L147:
	.loc 1 927 0
	movl	36(%r14), %r12d	# symptr_260(D)->length, len
	.loc 1 928 0
	jmp	.L146	#
.L148:
	.loc 1 930 0
	movq	-384(%rbp), %rdx	# strend, strend.42
	movq	-376(%rbp), %rax	# strbeg, strbeg.43
	subq	%rax, %rdx	# strbeg.43, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	movl	%eax, %r12d	# D.14016, len
	.loc 1 931 0
	nop
.L146:
	.loc 1 934 0
	movb	$1, -368(%rbp)	#, explicit_length
.L149:
	.loc 1 936 0
	cmpq	-384(%rbp), %rbx	# strend, s
	setae	%al	#, D.14018
	movb	%al, -367(%rbp)	# D.14018, beyond
.LBB10:
	.loc 1 938 0
	movl	32(%r14), %eax	# symptr_260(D)->code, D.14020
	andl	$256, %eax	#, D.14020
	.loc 1 939 0
	testl	%eax, %eax	# D.14020
	setne	%al	#, D.14018
	.loc 1 938 0
	movzbl	%al, %eax	# D.14018, tmp758
	movl	%eax, -296(%rbp)	# tmp758, which
	.loc 1 940 0
	movl	-340(%rbp), %eax	# datumtype, tmp762
	movzbl	%al, %eax	# tmp762, tmp761
	movl	%eax, -292(%rbp)	# tmp761, rawtype
	.loc 1 941 0
	movl	-296(%rbp), %eax	# which, tmp764
	cltq
	salq	$4, %rax	#, tmp765
	addq	$packsize, %rax	#, tmp766
	movl	8(%rax), %eax	# packsize[which_288].first, D.14020
	movl	-292(%rbp), %edx	# rawtype, tmp770
	subl	%eax, %edx	# D.14020, tmp769
	movl	%edx, %eax	# tmp769, tmp769
	movl	%eax, -288(%rbp)	# tmp769, offset
	.loc 1 943 0
	cmpl	$0, -288(%rbp)	#, offset
	js	.L150	#,
	.loc 1 943 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# which, tmp772
	cltq
	salq	$4, %rax	#, tmp773
	addq	$packsize, %rax	#, tmp774
	movl	12(%rax), %eax	# packsize[which_288].size, D.14020
	cmpl	-288(%rbp), %eax	# offset, D.14020
	jle	.L150	#,
.LBB11:
	.loc 1 945 0 is_stmt 1
	movl	-296(%rbp), %eax	# which, tmp776
	cltq
	salq	$4, %rax	#, tmp777
	addq	$packsize, %rax	#, tmp778
	movq	(%rax), %rdx	# packsize[which_288].array, D.14021
	movl	-288(%rbp), %eax	# offset, tmp779
	cltq
	addq	%rdx, %rax	# D.14021, D.14021
	movzbl	(%rax), %eax	# *_295, tmp780
	movb	%al, -365(%rbp)	# tmp780, data
	.loc 1 947 0
	cmpb	$0, -365(%rbp)	#, data
	je	.L150	#,
.LBB12:
	.loc 1 949 0
	movzbl	-365(%rbp), %eax	# data, D.14016
	andl	$63, %eax	#, tmp781
	movq	%rax, -152(%rbp)	# tmp781, size
	.loc 1 950 0
	movq	-384(%rbp), %rdx	# strend, strend.44
	movq	%rbx, %rax	# s, s.45
	subq	%rax, %rdx	# s.45, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cqto
	idivq	-152(%rbp)	# size
	movq	%rax, -144(%rbp)	# tmp783, howmany
	.loc 1 951 0
	movslq	%r12d, %rax	# len, D.14016
	cmpq	-144(%rbp), %rax	# howmany, D.14016
	jle	.L151	#,
	.loc 1 952 0
	movq	-144(%rbp), %rax	# howmany, tmp785
	movl	%eax, %r12d	# tmp785, len
.L151:
	.loc 1 962 0
	cmpl	$0, -336(%rbp)	#, checksum
	je	.L152	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movzbl	-365(%rbp), %eax	# data, data.46
	testb	%al, %al	# data.46
	jns	.L150	#,
.L152:
	.loc 1 963 0 is_stmt 1
	testl	%r12d, %r12d	# len
	je	.L153	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	cmpb	$0, -366(%rbp)	#, unpack_only_one
	je	.L153	#,
	cmpl	$112, -292(%rbp)	#, rawtype
	je	.L153	#,
	.loc 1 965 0 is_stmt 1
	movl	$1, %r12d	#, len
.L153:
	.loc 1 966 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.47
	movq	%rax, %rdx	# PL_stack_max.47, PL_stack_max.48
	movq	%r13, %rax	# sp, sp.49
	subq	%rax, %rdx	# sp.49, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sarq	$3, %rax	#, tmp786
	movq	%rax, %rdx	# tmp786, D.14016
	movslq	%r12d, %rax	# len, D.14016
	cmpq	%rax, %rdx	# D.14016, D.14016
	jge	.L154	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	movl	%r12d, %edx	# len,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L154:
	.loc 1 967 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.50
	leal	(%rax,%r12), %edx	#, D.14020
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.51
	cmpl	%eax, %edx	# PL_tmps_max.51, D.14020
	jl	.L150	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movl	%r12d, %edi	# len,
	call	Perl_tmps_grow	#
.L150:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 972 0 is_stmt 1
	movl	-340(%rbp), %eax	# datumtype, tmp788
	subl	$37, %eax	#, tmp787
	cmpl	$339, %eax	#, tmp787
	ja	.L155	#,
	movl	%eax, %eax	# tmp787, tmp789
	movq	.L157(,%rax,8), %rax	#, tmp790
	jmp	*%rax	# tmp790
	.section	.rodata
	.align 8
	.align 4
.L157:
	.quad	.L156
	.quad	.L155
	.quad	.L155
	.quad	.L158
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L159
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L160
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.quad	.L155
	.quad	.L155
	.quad	.L428
	.quad	.L155
	.quad	.L165
	.quad	.L429
	.quad	.L430
	.quad	.L155
	.quad	.L431
	.quad	.L155
	.quad	.L431
	.quad	.L155
	.quad	.L169
	.quad	.L432
	.quad	.L155
	.quad	.L433
	.quad	.L155
	.quad	.L172
	.quad	.L431
	.quad	.L155
	.quad	.L173
	.quad	.L155
	.quad	.L161
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L161
	.quad	.L162
	.quad	.L434
	.quad	.L435
	.quad	.L155
	.quad	.L436
	.quad	.L155
	.quad	.L165
	.quad	.L437
	.quad	.L438
	.quad	.L155
	.quad	.L439
	.quad	.L155
	.quad	.L433
	.quad	.L155
	.quad	.L440
	.quad	.L441
	.quad	.L155
	.quad	.L442
	.quad	.L155
	.quad	.L183
	.quad	.L433
	.quad	.L184
	.quad	.L185
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L429
	.quad	.L155
	.quad	.L155
	.quad	.L443
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L433
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L187
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L437
	.quad	.L155
	.quad	.L155
	.quad	.L444
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L442
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L189
	.text
.L155:
	.loc 1 974 0
	movl	-340(%rbp), %eax	# datumtype, tmp791
	movzbl	%al, %eax	# tmp791, D.14020
	movl	%eax, %esi	# D.14020,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L156:
	.loc 1 977 0
	cmpl	$0, -300(%rbp)	#, howlen
	jne	.L190	#,
	.loc 1 978 0
	movl	$16, %r12d	#, len
.L190:
	.loc 1 979 0
	movl	%r12d, -336(%rbp)	# len, checksum
	.loc 1 980 0
	movq	$0, -192(%rbp)	#, cuv
	.loc 1 981 0
	movl	$0, %eax	#, tmp792
	movq	%rax, -184(%rbp)	# tmp792, cdouble
	.loc 1 982 0
	jmp	.L143	#
.L158:
.LBB13:
	.loc 1 986 0
	movq	%rbx, -208(%rbp)	# s, ss
	.loc 1 987 0
	movq	(%r14), %rax	# *symptr_260(D), tmp793
	movq	%rax, -128(%rbp)	# tmp793, savsym
	movq	8(%r14), %rax	# *symptr_260(D), tmp794
	movq	%rax, -120(%rbp)	# tmp794, savsym
	movq	16(%r14), %rax	# *symptr_260(D), tmp795
	movq	%rax, -112(%rbp)	# tmp795, savsym
	movq	24(%r14), %rax	# *symptr_260(D), tmp796
	movq	%rax, -104(%rbp)	# tmp796, savsym
	movq	32(%r14), %rax	# *symptr_260(D), tmp797
	movq	%rax, -96(%rbp)	# tmp797, savsym
	movq	40(%r14), %rax	# *symptr_260(D), tmp798
	movq	%rax, -88(%rbp)	# tmp798, savsym
	movq	48(%r14), %rax	# *symptr_260(D), tmp799
	movq	%rax, -80(%rbp)	# tmp799, savsym
	.loc 1 988 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	notl	%eax	# D.14017
	movl	%eax, %edx	# D.14017, D.14017
	movl	-340(%rbp), %eax	# datumtype, datumtype.52
	andl	%edx, %eax	# D.14017, D.14017
	movb	$0, %al	#, tmp800
	movl	%eax, -284(%rbp)	# tmp800, group_modifiers
	.loc 1 989 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	orl	-284(%rbp), %eax	# group_modifiers, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
	.loc 1 990 0
	movq	-104(%rbp), %rax	# savsym.grpend, D.14023
	movq	%rax, 8(%r14)	# D.14023, symptr_260(D)->patend
	.loc 1 991 0
	movl	44(%r14), %eax	# symptr_260(D)->level, D.14020
	addl	$1, %eax	#, D.14020
	movl	%eax, 44(%r14)	# D.14020, symptr_260(D)->level
	.loc 1 992 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 993 0
	jmp	.L191	#
.L195:
	.loc 1 994 0
	movq	-112(%rbp), %rax	# savsym.grpbeg, D.14023
	movq	%rax, (%r14)	# D.14023, symptr_260(D)->patptr
	.loc 1 995 0
	movq	-208(%rbp), %rax	# ss, ss.53
	leaq	-208(%rbp), %rsi	#, tmp801
	movq	-384(%rbp), %rcx	# strend, tmp802
	movq	-376(%rbp), %rdx	# strbeg, tmp803
	movq	%rsi, %r8	# tmp801,
	movq	%rax, %rsi	# ss.53,
	movq	%r14, %rdi	# symptr,
	call	S_unpack_rec	#
	.loc 1 996 0
	movl	-80(%rbp), %eax	# savsym.flags, D.14017
	andl	$8, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	je	.L192	#,
	.loc 1 997 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	orl	$8, %eax	#, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
	jmp	.L193	#
.L192:
	.loc 1 999 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	andl	$-9, %eax	#, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
.L193:
	.loc 1 1000 0
	movq	-208(%rbp), %rax	# ss, ss.54
	cmpq	-384(%rbp), %rax	# strend, ss.54
	jne	.L191	#,
	.loc 1 1000 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# savsym.howlen, D.14024
	cmpl	$2, %eax	#, D.14024
	jne	.L191	#,
	.loc 1 1001 0 is_stmt 1
	jmp	.L194	#
.L191:
	.loc 1 993 0 discriminator 1
	movl	%r12d, %eax	# len, len.55
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.55
	jne	.L195	#,
.L194:
	.loc 1 1003 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 1004 0
	movq	-208(%rbp), %rbx	# ss, s
	.loc 1 1005 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	movl	-284(%rbp), %edx	# group_modifiers, tmp804
	notl	%edx	# D.14017
	andl	%edx, %eax	# D.14017, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
	.loc 1 1006 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	movl	%eax, -80(%rbp)	# D.14017, savsym.flags
	.loc 1 1007 0
	movq	-128(%rbp), %rax	# savsym, tmp805
	movq	%rax, (%r14)	# tmp805, *symptr_260(D)
	movq	-120(%rbp), %rax	# savsym, tmp806
	movq	%rax, 8(%r14)	# tmp806, *symptr_260(D)
	movq	-112(%rbp), %rax	# savsym, tmp807
	movq	%rax, 16(%r14)	# tmp807, *symptr_260(D)
	movq	-104(%rbp), %rax	# savsym, tmp808
	movq	%rax, 24(%r14)	# tmp808, *symptr_260(D)
	movq	-96(%rbp), %rax	# savsym, tmp809
	movq	%rax, 32(%r14)	# tmp809, *symptr_260(D)
	movq	-88(%rbp), %rax	# savsym, tmp810
	movq	%rax, 40(%r14)	# tmp810, *symptr_260(D)
	movq	-80(%rbp), %rax	# savsym, tmp811
	movq	%rax, 48(%r14)	# tmp811, *symptr_260(D)
	.loc 1 1008 0
	nop
	jmp	.L196	#
.L160:
.LBE13:
	.loc 1 1011 0
	movslq	%r12d, %rax	# len, D.14016
	movq	-384(%rbp), %rcx	# strend, strend.56
	movq	-160(%rbp), %rdx	# strrelbeg, strrelbeg.57
	subq	%rdx, %rcx	# strrelbeg.57, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L197	#,
	.loc 1 1012 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L197:
	.loc 1 1013 0
	movslq	%r12d, %rdx	# len, D.14022
	movq	-160(%rbp), %rax	# strrelbeg, tmp812
	leaq	(%rdx,%rax), %rbx	#, s
	.loc 1 1014 0
	jmp	.L196	#
.L187:
	.loc 1 1016 0
	testl	%r12d, %r12d	# len
	jne	.L198	#,
	.loc 1 1017 0
	movl	$1, %r12d	#, len
.L198:
	.loc 1 1018 0
	movq	%rbx, %rdx	# s, s.58
	movq	-376(%rbp), %rax	# strbeg, strbeg.59
	subq	%rax, %rdx	# strbeg.59, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	movslq	%r12d, %rcx	# len, D.14016
	cqto
	idivq	%rcx	# D.14016
	movq	%rdx, %rax	# tmp813, D.14016
	movl	%eax, %r12d	# D.14016, len
.L173:
	.loc 1 1021 0
	movslq	%r12d, %rax	# len, D.14016
	movq	%rbx, %rcx	# s, s.60
	movq	-376(%rbp), %rdx	# strbeg, strbeg.61
	subq	%rdx, %rcx	# strbeg.61, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L199	#,
	.loc 1 1022 0
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L199:
	.loc 1 1023 0
	movslq	%r12d, %rax	# len, D.14022
	negq	%rax	# D.14022
	addq	%rax, %rbx	# D.14022, s
	.loc 1 1024 0
	jmp	.L196	#
.L189:
	.loc 1 1026 0
	testl	%r12d, %r12d	# len
	jne	.L200	#,
	.loc 1 1027 0
	movl	$1, %r12d	#, len
.L200:
	.loc 1 1028 0
	movq	%rbx, %rdx	# s, s.62
	movq	-376(%rbp), %rax	# strbeg, strbeg.63
	subq	%rax, %rdx	# strbeg.63, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	movslq	%r12d, %rcx	# len, D.14016
	cqto
	idivq	%rcx	# D.14016
	movq	%rdx, %rax	# tmp815, D.14016
	movl	%eax, -352(%rbp)	# aint.64, aint
	.loc 1 1029 0
	movl	-352(%rbp), %eax	# aint, aint.65
	testl	%eax, %eax	# aint.65
	je	.L201	#,
	.loc 1 1030 0
	movl	-352(%rbp), %eax	# aint, aint.66
	subl	%eax, %r12d	# aint.66, len
	jmp	.L185	#
.L201:
	.loc 1 1032 0
	movl	$0, %r12d	#, len
.L185:
	.loc 1 1035 0
	movslq	%r12d, %rax	# len, D.14016
	movq	-384(%rbp), %rcx	# strend, strend.67
	movq	%rbx, %rdx	# s, s.68
	subq	%rdx, %rcx	# s.68, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L202	#,
	.loc 1 1036 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L202:
	.loc 1 1037 0
	movslq	%r12d, %rax	# len, D.14022
	addq	%rax, %rbx	# D.14022, s
	.loc 1 1038 0
	jmp	.L196	#
.L159:
	.loc 1 1040 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1041 0
	jmp	.L196	#
.L161:
	.loc 1 1045 0
	movslq	%r12d, %rax	# len, D.14016
	movq	-384(%rbp), %rcx	# strend, strend.69
	movq	%rbx, %rdx	# s, s.70
	subq	%rdx, %rcx	# s.70, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L203	#,
	.loc 1 1046 0
	movq	-384(%rbp), %rdx	# strend, strend.71
	movq	%rbx, %rax	# s, s.72
	subq	%rax, %rdx	# s.72, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	movl	%eax, %r12d	# D.14016, len
.L203:
	.loc 1 1047 0
	cmpl	$0, -336(%rbp)	#, checksum
	je	.L204	#,
	.loc 1 1048 0
	jmp	.L205	#
.L204:
	.loc 1 1049 0
	movslq	%r12d, %rax	# len, D.14025
	movq	%rax, %rsi	# D.14025,
	movq	%rbx, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, -200(%rbp)	# tmp817, sv
	.loc 1 1050 0
	testl	%r12d, %r12d	# len
	jle	.L206	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	cmpl	$65, -340(%rbp)	#, datumtype
	je	.L207	#,
	cmpl	$90, -340(%rbp)	#, datumtype
	jne	.L206	#,
.L207:
	.loc 1 1051 0 is_stmt 1
	movq	%rbx, -248(%rbp)	# s, aptr
	.loc 1 1052 0
	cmpl	$90, -340(%rbp)	#, datumtype
	jne	.L208	#,
	.loc 1 1053 0
	movq	-200(%rbp), %rax	# sv, tmp818
	movq	(%rax), %rax	# sv_396->sv_any, D.14026
	movq	(%rax), %rbx	# MEM[(struct XPV *)_397].xpv_pv, s
	.loc 1 1054 0
	jmp	.L209	#
.L210:
	.loc 1 1055 0
	addq	$1, %rbx	#, s
.L209:
	.loc 1 1054 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_2, D.14019
	testb	%al, %al	# D.14019
	jne	.L210	#,
	.loc 1 1056 0
	cmpl	$2, -300(%rbp)	#, howlen
	jne	.L212	#,
	.loc 1 1057 0
	movq	%rbx, %rdx	# s, s.73
	movq	-200(%rbp), %rax	# sv, tmp819
	movq	(%rax), %rax	# sv_396->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_402].xpv_pv, D.14023
	subq	%rax, %rdx	# D.14016, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	addl	$1, %eax	#, D.14027
	movl	%eax, %r12d	# D.14027, len
	jmp	.L212	#
.L208:
	.loc 1 1060 0
	movq	-200(%rbp), %rax	# sv, tmp820
	movq	(%rax), %rax	# sv_396->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_409].xpv_pv, D.14023
	movslq	%r12d, %rdx	# len, D.14022
	subq	$1, %rdx	#, D.14022
	leaq	(%rax,%rdx), %rbx	#, s
	.loc 1 1061 0
	jmp	.L213	#
.L215:
	.loc 1 1062 0
	subq	$1, %rbx	#, s
.L213:
	.loc 1 1061 0 discriminator 1
	movq	-200(%rbp), %rax	# sv, tmp821
	movq	(%rax), %rax	# sv_396->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_414].xpv_pv, D.14023
	cmpq	%rbx, %rax	# s, D.14023
	ja	.L214	#,
	.loc 1 1061 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_3, D.14019
	testb	%al, %al	# D.14019
	je	.L215	#,
	.loc 1 1061 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_3, D.14019
	cmpb	$32, %al	#, D.14019
	je	.L215	#,
	movzbl	(%rbx), %eax	# *s_3, D.14019
	cmpb	$9, %al	#, D.14019
	je	.L215	#,
	movzbl	(%rbx), %eax	# *s_3, D.14019
	cmpb	$10, %al	#, D.14019
	je	.L215	#,
	movzbl	(%rbx), %eax	# *s_3, D.14019
	cmpb	$13, %al	#, D.14019
	je	.L215	#,
	movzbl	(%rbx), %eax	# *s_3, D.14019
	cmpb	$12, %al	#, D.14019
	je	.L215	#,
.L214:
	.loc 1 1063 0 is_stmt 1
	addq	$1, %rbx	#, s
	movb	$0, (%rbx)	#, *s_423
.L212:
	.loc 1 1065 0
	movq	-200(%rbp), %rax	# sv, tmp822
	movq	(%rax), %rax	# sv_396->sv_any, D.14026
	movq	%rbx, %rcx	# s, s.74
	movq	-200(%rbp), %rdx	# sv, tmp823
	movq	(%rdx), %rdx	# sv_396->sv_any, D.14026
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_426].xpv_pv, D.14023
	subq	%rdx, %rcx	# D.14016, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	movq	%rdx, 8(%rax)	# D.14025, MEM[(struct XPV *)_424].xpv_cur
	.loc 1 1066 0
	movq	-248(%rbp), %rbx	# aptr, s
.L206:
	.loc 1 1068 0
	movslq	%r12d, %rax	# len, D.14022
	addq	%rax, %rbx	# D.14022, s
.LBB14:
	.loc 1 1069 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.75
	movq	%rax, %rdx	# PL_stack_max.75, PL_stack_max.76
	movq	%r13, %rax	# sp, sp.77
	subq	%rax, %rdx	# sp.77, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L216	#,
	.loc 1 1069 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L216:
	.loc 1 1069 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp824
	movq	%rax, %rdi	# tmp824,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_439
.LBE14:
	.loc 1 1070 0 is_stmt 1 discriminator 2
	jmp	.L196	#
.L162:
	.loc 1 1073 0
	cmpl	$2, -300(%rbp)	#, howlen
	je	.L217	#,
	.loc 1 1073 0 is_stmt 0 discriminator 1
	movslq	%r12d, %rax	# len, D.14016
	movq	-384(%rbp), %rcx	# strend, strend.78
	movq	%rbx, %rdx	# s, s.79
	subq	%rdx, %rcx	# s.79, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	salq	$3, %rdx	#, D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L218	#,
.L217:
	.loc 1 1074 0 is_stmt 1
	movq	-384(%rbp), %rdx	# strend, strend.80
	movq	%rbx, %rax	# s, s.81
	subq	%rax, %rdx	# s.81, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sall	$3, %eax	#, D.14027
	movl	%eax, %r12d	# D.14027, len
.L218:
	.loc 1 1075 0
	cmpl	$0, -336(%rbp)	#, checksum
	je	.L219	#,
	.loc 1 1076 0
	movq	PL_bitcount(%rip), %rax	# PL_bitcount, PL_bitcount.82
	testq	%rax, %rax	# PL_bitcount.82
	jne	.L220	#,
	.loc 1 1077 0
	movl	$256, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_bitcount(%rip)	# PL_bitcount.83, PL_bitcount
	movq	PL_bitcount(%rip), %rax	# PL_bitcount, PL_bitcount.84
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_bitcount.84,
	call	memset	#
	.loc 1 1078 0
	movl	$1, %r15d	#, bits
	jmp	.L221	#
.L230:
	.loc 1 1079 0
	movl	%r15d, %eax	# bits, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L222	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.85
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.85, D.14023
	movzbl	(%rax), %edx	# *_460, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_460
.L222:
	.loc 1 1080 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$2, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L223	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.86
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.86, D.14023
	movzbl	(%rax), %edx	# *_467, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_467
.L223:
	.loc 1 1081 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$4, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L224	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.87
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.87, D.14023
	movzbl	(%rax), %edx	# *_474, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_474
.L224:
	.loc 1 1082 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$8, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L225	#,
	.loc 1 1082 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.88
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.88, D.14023
	movzbl	(%rax), %edx	# *_481, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_481
.L225:
	.loc 1 1083 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$16, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L226	#,
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.89
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.89, D.14023
	movzbl	(%rax), %edx	# *_488, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_488
.L226:
	.loc 1 1084 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$32, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L227	#,
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.90
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.90, D.14023
	movzbl	(%rax), %edx	# *_495, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_495
.L227:
	.loc 1 1085 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$64, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L228	#,
	.loc 1 1085 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.91
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.91, D.14023
	movzbl	(%rax), %edx	# *_502, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_502
.L228:
	.loc 1 1086 0 is_stmt 1
	movl	%r15d, %eax	# bits, D.14020
	andl	$128, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L229	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.92
	movslq	%r15d, %rax	# bits, D.14022
	addq	%rdx, %rax	# PL_bitcount.92, D.14023
	movzbl	(%rax), %edx	# *_509, D.14019
	addl	$1, %edx	#, D.14019
	movb	%dl, (%rax)	# D.14019, *_509
.L229:
	.loc 1 1078 0 is_stmt 1
	addl	$1, %r15d	#, bits
.L221:
	.loc 1 1078 0 is_stmt 0 discriminator 1
	cmpl	$255, %r15d	#, bits
	jle	.L230	#,
.L220:
	.loc 1 1089 0 is_stmt 1
	jmp	.L231	#
.L232:
	.loc 1 1090 0
	movq	PL_bitcount(%rip), %rdx	# PL_bitcount, PL_bitcount.93
	movq	%rbx, %rax	# s, s.94
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(unsigned char *)s.94_515], D.14029
	movzbl	%al, %eax	# D.14029, D.14022
	addq	%rdx, %rax	# PL_bitcount.93, D.14023
	movzbl	(%rax), %eax	# *_519, D.14019
	movsbq	%al, %rax	# D.14019, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
	.loc 1 1091 0
	subl	$8, %r12d	#, len
.L231:
	.loc 1 1089 0 discriminator 1
	cmpl	$7, %r12d	#, len
	jg	.L232	#,
	.loc 1 1093 0
	testl	%r12d, %r12d	# len
	je	.L233	#,
	.loc 1 1094 0
	movq	%rbx, %rax	# s, s.95
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.95_524, D.14019
	movsbl	%al, %r15d	# D.14019, bits
	.loc 1 1095 0
	cmpl	$98, -340(%rbp)	#, datumtype
	jne	.L234	#,
	.loc 1 1096 0
	jmp	.L235	#
.L237:
	.loc 1 1097 0
	movl	%r15d, %eax	# bits, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L236	#,
	.loc 1 1097 0 is_stmt 0 discriminator 1
	addq	$1, -192(%rbp)	#, cuv
.L236:
	.loc 1 1098 0 is_stmt 1
	sarl	%r15d	# bits
.L235:
	.loc 1 1096 0 discriminator 1
	movl	%r12d, %eax	# len, len.96
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.96
	jg	.L237	#,
	.loc 1 1108 0
	jmp	.L196	#
.L234:
	.loc 1 1102 0
	jmp	.L238	#
.L240:
	.loc 1 1103 0
	movl	%r15d, %eax	# bits, D.14020
	andl	$128, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L239	#,
	.loc 1 1103 0 is_stmt 0 discriminator 1
	addq	$1, -192(%rbp)	#, cuv
.L239:
	.loc 1 1104 0 is_stmt 1
	addl	%r15d, %r15d	# bits
.L238:
	.loc 1 1102 0 discriminator 1
	movl	%r12d, %eax	# len, len.97
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.97
	jg	.L240	#,
.L233:
	.loc 1 1108 0
	jmp	.L196	#
.L219:
	.loc 1 1110 0
	leal	1(%r12), %eax	#, D.14020
	cltq
	movq	%rax, %rdi	# D.14025,
	call	Perl_newSV	#
	movq	%rax, -200(%rbp)	# tmp825, sv
	.loc 1 1111 0
	movq	-200(%rbp), %rax	# sv, tmp826
	movq	(%rax), %rax	# sv_540->sv_any, D.14026
	movslq	%r12d, %rdx	# len, D.14025
	movq	%rdx, 8(%rax)	# D.14025, MEM[(struct XPV *)_541].xpv_cur
	.loc 1 1112 0
	movq	-200(%rbp), %rax	# sv, tmp827
	movl	12(%rax), %eax	# sv_540->sv_flags, D.14017
	orl	$67371008, %eax	#, D.14017
	movl	%eax, %edx	# D.14017, D.14017
	movq	-200(%rbp), %rax	# sv, tmp828
	movl	%edx, 12(%rax)	# D.14017, sv_540->sv_flags
	.loc 1 1113 0
	movq	-200(%rbp), %rax	# sv, tmp829
	movq	(%rax), %rax	# sv_540->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_545].xpv_pv, str
	movq	%rax, %rsi	# str, str
	.loc 1 1114 0
	cmpl	$98, -340(%rbp)	#, datumtype
	jne	.L241	#,
	.loc 1 1115 0
	movl	%r12d, -352(%rbp)	# len, aint
	.loc 1 1116 0
	movl	$0, %r12d	#, len
	jmp	.L242	#
.L245:
	.loc 1 1117 0
	movl	%r12d, %eax	# len, D.14020
	andl	$7, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L243	#,
	.loc 1 1118 0
	sarl	%r15d	# bits
	jmp	.L244	#
.L243:
	.loc 1 1120 0
	movq	%rbx, %rax	# s, s.98
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.98_551, D.14019
	movsbl	%al, %r15d	# D.14019, bits
.L244:
	.loc 1 1121 0
	movq	%rsi, %rax	# str, str.99
	leaq	1(%rax), %rsi	#, str
	movl	%r15d, %edx	# bits, D.14030
	andl	$1, %edx	#, D.14030
	addl	$48, %edx	#, D.14030
	movb	%dl, (%rax)	# D.14019, *str.99_555
	.loc 1 1116 0
	addl	$1, %r12d	#, len
.L242:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# aint, aint.100
	cmpl	%eax, %r12d	# aint.100, len
	jl	.L245	#,
	jmp	.L246	#
.L241:
	.loc 1 1125 0 is_stmt 1
	movl	%r12d, -352(%rbp)	# len, aint
	.loc 1 1126 0
	movl	$0, %r12d	#, len
	jmp	.L247	#
.L252:
	.loc 1 1127 0
	movl	%r12d, %eax	# len, D.14020
	andl	$7, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L248	#,
	.loc 1 1128 0
	addl	%r15d, %r15d	# bits
	jmp	.L249	#
.L248:
	.loc 1 1130 0
	movq	%rbx, %rax	# s, s.101
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.101_566, D.14019
	movsbl	%al, %r15d	# D.14019, bits
.L249:
	.loc 1 1131 0
	movq	%rsi, %rax	# str, str.102
	leaq	1(%rax), %rsi	#, str
	movl	%r15d, %edx	# bits, D.14020
	andl	$128, %edx	#, D.14020
	testl	%edx, %edx	# D.14020
	je	.L250	#,
	.loc 1 1131 0 is_stmt 0 discriminator 1
	movl	$49, %edx	#, iftmp.103
	jmp	.L251	#
.L250:
	.loc 1 1131 0 discriminator 2
	movl	$48, %edx	#, iftmp.103
.L251:
	.loc 1 1131 0 discriminator 3
	movb	%dl, (%rax)	# iftmp.103, *str.102_570
	.loc 1 1126 0 is_stmt 1 discriminator 3
	addl	$1, %r12d	#, len
.L247:
	.loc 1 1126 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# aint, aint.104
	cmpl	%eax, %r12d	# aint.104, len
	jl	.L252	#,
.L246:
	.loc 1 1134 0 is_stmt 1
	movq	%rsi, %rax	# str, str
	movb	$0, (%rax)	#, *str_164
.LBB15:
	.loc 1 1135 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.105
	movq	%rax, %rdx	# PL_stack_max.105, PL_stack_max.106
	movq	%r13, %rax	# sp, sp.107
	subq	%rax, %rdx	# sp.107, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L253	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L253:
	.loc 1 1135 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp830
	movq	%rax, %rdi	# tmp830,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_581
.LBE15:
	.loc 1 1136 0 is_stmt 1 discriminator 2
	jmp	.L196	#
.L165:
	.loc 1 1139 0
	cmpl	$2, -300(%rbp)	#, howlen
	je	.L254	#,
	.loc 1 1139 0 is_stmt 0 discriminator 1
	movslq	%r12d, %rax	# len, D.14016
	movq	-384(%rbp), %rcx	# strend, strend.108
	movq	%rbx, %rdx	# s, s.109
	subq	%rdx, %rcx	# s.109, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	addq	%rdx, %rdx	# D.14016
	cmpq	%rdx, %rax	# D.14016, D.14016
	jle	.L255	#,
.L254:
	.loc 1 1140 0 is_stmt 1
	movq	-384(%rbp), %rdx	# strend, strend.110
	movq	%rbx, %rax	# s, s.111
	subq	%rax, %rdx	# s.111, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	addl	%eax, %eax	# D.14027
	movl	%eax, %r12d	# D.14027, len
.L255:
	.loc 1 1141 0
	leal	1(%r12), %eax	#, D.14020
	cltq
	movq	%rax, %rdi	# D.14025,
	call	Perl_newSV	#
	movq	%rax, -200(%rbp)	# tmp831, sv
	.loc 1 1142 0
	movq	-200(%rbp), %rax	# sv, tmp832
	movq	(%rax), %rax	# sv_597->sv_any, D.14026
	movslq	%r12d, %rdx	# len, D.14025
	movq	%rdx, 8(%rax)	# D.14025, MEM[(struct XPV *)_598].xpv_cur
	.loc 1 1143 0
	movq	-200(%rbp), %rax	# sv, tmp833
	movl	12(%rax), %eax	# sv_597->sv_flags, D.14017
	orl	$67371008, %eax	#, D.14017
	movl	%eax, %edx	# D.14017, D.14017
	movq	-200(%rbp), %rax	# sv, tmp834
	movl	%edx, 12(%rax)	# D.14017, sv_597->sv_flags
	.loc 1 1144 0
	movq	-200(%rbp), %rax	# sv, tmp835
	movq	(%rax), %rax	# sv_597->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_602].xpv_pv, str
	movq	%rax, %rsi	# str, str
	.loc 1 1145 0
	cmpl	$104, -340(%rbp)	#, datumtype
	jne	.L256	#,
	.loc 1 1146 0
	movl	%r12d, -352(%rbp)	# len, aint
	.loc 1 1147 0
	movl	$0, %r12d	#, len
	jmp	.L257	#
.L260:
	.loc 1 1148 0
	movl	%r12d, %eax	# len, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L258	#,
	.loc 1 1149 0
	sarl	$4, %r15d	#, bits
	jmp	.L259	#
.L258:
	.loc 1 1151 0
	movq	%rbx, %rax	# s, s.112
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.112_608, D.14019
	movsbl	%al, %r15d	# D.14019, bits
.L259:
	.loc 1 1152 0
	movq	%rsi, %rax	# str, str.113
	leaq	1(%rax), %rsi	#, str
	movq	PL_hexdigit(%rip), %rdx	# PL_hexdigit, PL_hexdigit.114
	movslq	%r15d, %rcx	# bits, D.14022
	andl	$15, %ecx	#, D.14022
	addq	%rcx, %rdx	# D.14022, D.14031
	movzbl	(%rdx), %edx	# *_617, D.14019
	movb	%dl, (%rax)	# D.14019, *str.113_612
	.loc 1 1147 0
	addl	$1, %r12d	#, len
.L257:
	.loc 1 1147 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# aint, aint.115
	cmpl	%eax, %r12d	# aint.115, len
	jl	.L260	#,
	jmp	.L261	#
.L256:
	.loc 1 1156 0 is_stmt 1
	movl	%r12d, -352(%rbp)	# len, aint
	.loc 1 1157 0
	movl	$0, %r12d	#, len
	jmp	.L262	#
.L265:
	.loc 1 1158 0
	movl	%r12d, %eax	# len, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L263	#,
	.loc 1 1159 0
	sall	$4, %r15d	#, bits
	jmp	.L264	#
.L263:
	.loc 1 1161 0
	movq	%rbx, %rax	# s, s.116
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.116_624, D.14019
	movsbl	%al, %r15d	# D.14019, bits
.L264:
	.loc 1 1162 0
	movq	%rsi, %rax	# str, str.117
	leaq	1(%rax), %rsi	#, str
	movq	PL_hexdigit(%rip), %rdx	# PL_hexdigit, PL_hexdigit.118
	movl	%r15d, %ecx	# bits, D.14020
	sarl	$4, %ecx	#, D.14020
	movslq	%ecx, %rcx	# D.14020, D.14022
	andl	$15, %ecx	#, D.14022
	addq	%rcx, %rdx	# D.14022, D.14031
	movzbl	(%rdx), %edx	# *_634, D.14019
	movb	%dl, (%rax)	# D.14019, *str.117_628
	.loc 1 1157 0
	addl	$1, %r12d	#, len
.L262:
	.loc 1 1157 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# aint, aint.119
	cmpl	%eax, %r12d	# aint.119, len
	jl	.L265	#,
.L261:
	.loc 1 1165 0 is_stmt 1
	movq	%rsi, %rax	# str, str
	movb	$0, (%rax)	#, *str_167
.LBB16:
	.loc 1 1166 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.120
	movq	%rax, %rdx	# PL_stack_max.120, PL_stack_max.121
	movq	%r13, %rax	# sp, sp.122
	subq	%rax, %rdx	# sp.122, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L266	#,
	.loc 1 1166 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L266:
	.loc 1 1166 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp836
	movq	%rax, %rdi	# tmp836,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_642
.LBE16:
	.loc 1 1167 0 is_stmt 1 discriminator 2
	jmp	.L196	#
.L271:
	.loc 1 1170 0
	movq	%rbx, %rax	# s, s.123
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.123_647, D.14019
	movsbl	%al, %eax	# D.14019, aint.124
	movl	%eax, -352(%rbp)	# aint.124, aint
	.loc 1 1171 0
	movl	-352(%rbp), %eax	# aint, aint.125
	cmpl	$127, %eax	#, aint.125
	jle	.L268	#,
	.loc 1 1172 0
	movl	-352(%rbp), %eax	# aint, aint.126
	subl	$256, %eax	#, aint.127
	movl	%eax, -352(%rbp)	# aint.127, aint
.L268:
	.loc 1 1173 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L269	#,
	.loc 1 1174 0
	addq	$8, %r13	#, sp
	movl	-352(%rbp), %eax	# aint, aint.128
	cltq
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_654
	jmp	.L267	#
.L269:
	.loc 1 1176 0
	movl	-336(%rbp), %eax	# checksum, tmp837
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp837
	jle	.L270	#,
	.loc 1 1177 0
	movl	-352(%rbp), %eax	# aint, aint.129
	cvtsi2sd	%eax, %xmm0	# aint.129, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp839
	addsd	%xmm1, %xmm0	# tmp839, tmp838
	movsd	%xmm0, -184(%rbp)	# tmp838, cdouble
	jmp	.L267	#
.L270:
	.loc 1 1179 0
	movl	-352(%rbp), %eax	# aint, aint.130
	cltq
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L267	#
.L434:
	.loc 1 1169 0
	nop
.L267:
	.loc 1 1169 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.131
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.131
	jg	.L271	#,
	.loc 1 1181 0 is_stmt 1
	jmp	.L196	#
.L163:
	.loc 1 1184 0
	testl	%r12d, %r12d	# len
	jne	.L272	#,
	.loc 1 1185 0
	cmpb	$0, -368(%rbp)	#, explicit_length
	je	.L273	#,
	.loc 1 1186 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	andl	$-9, %eax	#, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
	.loc 1 1187 0
	jmp	.L196	#
.L273:
	jmp	.L196	#
.L272:
	.loc 1 1189 0
	cmpl	$0, -336(%rbp)	#, checksum
	je	.L274	#,
.L205:
	.loc 1 1191 0
	jmp	.L275	#
.L279:
	.loc 1 1192 0
	movq	%rbx, %rax	# s, s.132
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.132_730, D.14019
	movsbl	%al, %eax	# D.14019, D.14017
	movzbl	%al, %eax	# D.14017, auint.133
	movl	%eax, -348(%rbp)	# auint.133, auint
	.loc 1 1193 0
	movl	-336(%rbp), %eax	# checksum, tmp840
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp840
	jle	.L276	#,
	.loc 1 1194 0
	movl	-348(%rbp), %eax	# auint, auint.134
	movl	%eax, %eax	# auint.134, tmp841
	testq	%rax, %rax	# tmp841
	js	.L277	#,
	cvtsi2sdq	%rax, %xmm0	# tmp841, D.14032
	jmp	.L278	#
.L277:
	movq	%rax, %rdx	# tmp841, tmp843
	shrq	%rdx	# tmp843
	andl	$1, %eax	#, tmp844
	orq	%rax, %rdx	# tmp844, tmp843
	cvtsi2sdq	%rdx, %xmm0	# tmp843, tmp842
	addsd	%xmm0, %xmm0	# tmp842, D.14032
.L278:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp846
	addsd	%xmm1, %xmm0	# tmp846, tmp845
	movsd	%xmm0, -184(%rbp)	# tmp845, cdouble
	jmp	.L275	#
.L276:
	.loc 1 1196 0
	movl	-348(%rbp), %eax	# auint, auint.135
	movl	%eax, %eax	# auint.135, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
.L275:
	.loc 1 1191 0 discriminator 1
	movl	%r12d, %eax	# len, len.136
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.136
	jg	.L279	#,
	.loc 1 1205 0
	jmp	.L196	#
.L274:
	.loc 1 1200 0
	jmp	.L281	#
.L282:
	.loc 1 1201 0
	movq	%rbx, %rax	# s, s.137
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.137_718, D.14019
	movsbl	%al, %eax	# D.14019, D.14017
	movzbl	%al, %eax	# D.14017, auint.138
	movl	%eax, -348(%rbp)	# auint.138, auint
	.loc 1 1202 0
	addq	$8, %r13	#, sp
	movl	-348(%rbp), %eax	# auint, auint.139
	movl	%eax, %eax	# auint.139, D.14016
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_723
.L281:
	.loc 1 1200 0 discriminator 1
	movl	%r12d, %eax	# len, len.140
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.140
	jg	.L282	#,
	.loc 1 1205 0
	jmp	.L196	#
.L172:
	.loc 1 1207 0
	testl	%r12d, %r12d	# len
	jne	.L283	#,
	.loc 1 1208 0
	cmpb	$0, -368(%rbp)	#, explicit_length
	je	.L284	#,
	.loc 1 1209 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	orl	$8, %eax	#, D.14017
	movl	%eax, 48(%r14)	# D.14017, symptr_260(D)->flags
	.loc 1 1210 0
	jmp	.L196	#
.L284:
	jmp	.L196	#
.L283:
	.loc 1 1212 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	andl	$8, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	jne	.L285	#,
	.loc 1 1213 0
	jmp	.L163	#
.L285:
	.loc 1 1214 0
	jmp	.L286	#
.L297:
.LBB17:
	.loc 1 1216 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.142
	movq	80(%rax), %rax	# PL_curcop.142_671->cop_warnings, D.14028
	testq	%rax, %rax	# D.14028
	je	.L287	#,
	.loc 1 1216 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.143
	movq	80(%rax), %rax	# PL_curcop.143_673->cop_warnings, D.14028
	cmpq	$32, %rax	#, D.14028
	je	.L287	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.144
	movq	80(%rax), %rax	# PL_curcop.144_675->cop_warnings, D.14028
	cmpq	$16, %rax	#, D.14028
	je	.L288	#,
	.loc 1 1216 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.145
	movq	80(%rax), %rax	# PL_curcop.145_677->cop_warnings, D.14028
	movq	(%rax), %rax	# _678->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_679].xpv_pv, D.14023
	addq	$11, %rax	#, D.14023
	movzbl	(%rax), %eax	# *_681, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	jne	.L288	#,
.L287:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.146
	movq	80(%rax), %rax	# PL_curcop.146_685->cop_warnings, D.14028
	testq	%rax, %rax	# D.14028
	jne	.L289	#,
	.loc 1 1216 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.147
	movzbl	%al, %eax	# PL_dowarn.147, D.14020
	andl	$1, %eax	#, D.14020
	testl	%eax, %eax	# D.14020
	je	.L289	#,
.L288:
	movl	$0, %eax	#, iftmp.141
	jmp	.L290	#
.L289:
	.loc 1 1216 0 discriminator 2
	movl	$105, %eax	#, iftmp.141
.L290:
	.loc 1 1216 0 discriminator 3
	movq	-384(%rbp), %rcx	# strend, strend.148
	movq	%rbx, %rdx	# s, s.149
	subq	%rdx, %rcx	# s.149, D.14016
	movq	%rcx, %rdx	# D.14016, D.14016
	movq	%rdx, %rsi	# D.14016, D.14025
	leaq	-128(%rbp), %rdx	#, tmp847
	movl	%eax, %ecx	# iftmp.141,
	movq	%rbx, %rdi	# s,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -348(%rbp)	# auint.150, auint
	.loc 1 1217 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# alen, alen.151
	movq	%rax, -264(%rbp)	# alen.152, along
	.loc 1 1218 0 discriminator 3
	movq	-264(%rbp), %rax	# along, along.153
	addq	%rax, %rbx	# along.154, s
	.loc 1 1219 0 discriminator 3
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L291	#,
	.loc 1 1220 0
	addq	$8, %r13	#, sp
	movl	-348(%rbp), %eax	# auint, auint.155
	movl	%eax, %eax	# auint.155, D.14025
	movq	%rax, %rdi	# D.14025,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_703
	jmp	.L286	#
.L291:
	.loc 1 1222 0
	movl	-336(%rbp), %eax	# checksum, tmp848
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp848
	jle	.L293	#,
	.loc 1 1223 0
	movl	-348(%rbp), %eax	# auint, auint.156
	movl	%eax, %eax	# auint.156, tmp849
	testq	%rax, %rax	# tmp849
	js	.L294	#,
	cvtsi2sdq	%rax, %xmm0	# tmp849, D.14032
	jmp	.L295	#
.L294:
	movq	%rax, %rdx	# tmp849, tmp851
	shrq	%rdx	# tmp851
	andl	$1, %eax	#, tmp852
	orq	%rax, %rdx	# tmp852, tmp851
	cvtsi2sdq	%rdx, %xmm0	# tmp851, tmp850
	addsd	%xmm0, %xmm0	# tmp850, D.14032
.L295:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp854
	addsd	%xmm1, %xmm0	# tmp854, tmp853
	movsd	%xmm0, -184(%rbp)	# tmp853, cdouble
	jmp	.L286	#
.L293:
	.loc 1 1225 0
	movl	-348(%rbp), %eax	# auint, auint.157
	movl	%eax, %eax	# auint.157, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
.L286:
.LBE17:
	.loc 1 1214 0 discriminator 1
	movl	%r12d, %eax	# len, len.158
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.158
	jle	.L296	#,
	.loc 1 1214 0 is_stmt 0 discriminator 2
	cmpq	-384(%rbp), %rbx	# strend, s
	jb	.L297	#,
.L296:
	.loc 1 1227 0 is_stmt 1
	jmp	.L196	#
.L301:
	.loc 1 1248 0
	movzwl	(%rbx), %eax	# MEM[(char * {ref-all})s_23], D.14033
	movw	%ax, -364(%rbp)	# D.14033, MEM[(char * {ref-all})&ai16]
	.loc 1 1254 0
	addq	$2, %rbx	#, s
	.loc 1 1255 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L299	#,
	.loc 1 1256 0
	addq	$8, %r13	#, sp
	movzwl	-364(%rbp), %eax	# ai16, ai16.159
	movswq	%ax, %rax	# ai16.159, D.14016
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_745
	jmp	.L298	#
.L299:
	.loc 1 1258 0
	movl	-336(%rbp), %eax	# checksum, tmp855
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp855
	jle	.L300	#,
	.loc 1 1259 0
	movzwl	-364(%rbp), %eax	# ai16, ai16.160
	cwtl
	cvtsi2sd	%eax, %xmm0	# tmp856, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp858
	addsd	%xmm1, %xmm0	# tmp858, tmp857
	movsd	%xmm0, -184(%rbp)	# tmp857, cdouble
	jmp	.L298	#
.L300:
	.loc 1 1261 0
	movzwl	-364(%rbp), %eax	# ai16, ai16.161
	movswq	%ax, %rax	# ai16.161, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L298	#
.L442:
	.loc 1 1247 0
	nop
.L298:
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.162
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.162
	jg	.L301	#,
	.loc 1 1263 0 is_stmt 1
	jmp	.L196	#
.L307:
	.loc 1 1286 0
	movzwl	(%rbx), %eax	# MEM[(char * {ref-all})s_24], D.14034
	movw	%ax, -362(%rbp)	# D.14034, MEM[(char * {ref-all})&au16]
	.loc 1 1288 0
	addq	$2, %rbx	#, s
	.loc 1 1290 0
	cmpl	$110, -340(%rbp)	#, datumtype
	jne	.L303	#,
	.loc 1 1291 0
	movzwl	-362(%rbp), %eax	# au16, au16.163
	cwtl
	movl	%eax, %edi	# D.14020,
	call	Perl_my_swap	#
	movw	%ax, -362(%rbp)	# au16.165, au16
.L303:
	.loc 1 1294 0
	cmpl	$118, -340(%rbp)	#, datumtype
	jne	.L304	#,
	.loc 1 1295 0
	movzwl	-362(%rbp), %eax	# au16, au16.166
	cwtl
	movl	%eax, %edi	# D.14020,
	call	vtohs	#
	movw	%ax, -362(%rbp)	# au16.168, au16
.L304:
	.loc 1 1297 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L305	#,
	.loc 1 1298 0
	addq	$8, %r13	#, sp
	movzwl	-362(%rbp), %eax	# au16, au16.169
	movzwl	%ax, %eax	# au16.169, D.14016
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_770
	jmp	.L302	#
.L305:
	.loc 1 1300 0
	movl	-336(%rbp), %eax	# checksum, tmp859
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp859
	jle	.L306	#,
	.loc 1 1301 0
	movzwl	-362(%rbp), %eax	# au16, au16.170
	movzwl	%ax, %eax	# au16.170, tmp860
	cvtsi2sd	%eax, %xmm0	# tmp860, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp862
	addsd	%xmm1, %xmm0	# tmp862, tmp861
	movsd	%xmm0, -184(%rbp)	# tmp861, cdouble
	jmp	.L302	#
.L306:
	.loc 1 1303 0
	movzwl	-362(%rbp), %eax	# au16, au16.171
	movzwl	%ax, %eax	# au16.171, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L302	#
.L433:
	.loc 1 1285 0
	nop
.L302:
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.172
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.172
	jg	.L307	#,
	.loc 1 1305 0 is_stmt 1
	jmp	.L196	#
.L311:
	.loc 1 1333 0
	movl	(%rbx), %eax	# MEM[(char * {ref-all})s_25], D.14020
	movl	%eax, -352(%rbp)	# D.14020, MEM[(char * {ref-all})&aint]
	.loc 1 1335 0
	addq	$4, %rbx	#, s
	.loc 1 1336 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L309	#,
	.loc 1 1337 0
	addq	$8, %r13	#, sp
	movl	-352(%rbp), %eax	# aint, aint.173
	cltq
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_785
	jmp	.L308	#
.L309:
	.loc 1 1339 0
	movl	-336(%rbp), %eax	# checksum, tmp863
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp863
	jle	.L310	#,
	.loc 1 1340 0
	movl	-352(%rbp), %eax	# aint, aint.174
	cvtsi2sd	%eax, %xmm0	# aint.174, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp865
	addsd	%xmm1, %xmm0	# tmp865, tmp864
	movsd	%xmm0, -184(%rbp)	# tmp864, cdouble
	jmp	.L308	#
.L310:
	.loc 1 1342 0
	movl	-352(%rbp), %eax	# aint, aint.175
	cltq
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L308	#
.L437:
	.loc 1 1332 0
	nop
.L308:
	.loc 1 1332 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.176
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.176
	jg	.L311	#,
	.loc 1 1344 0 is_stmt 1
	jmp	.L196	#
.L317:
	.loc 1 1348 0
	movl	(%rbx), %eax	# MEM[(char * {ref-all})s_26], D.14017
	movl	%eax, -348(%rbp)	# D.14017, MEM[(char * {ref-all})&auint]
	.loc 1 1350 0
	addq	$4, %rbx	#, s
	.loc 1 1351 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L313	#,
	.loc 1 1352 0
	addq	$8, %r13	#, sp
	movl	-348(%rbp), %eax	# auint, auint.177
	movl	%eax, %eax	# auint.177, D.14025
	movq	%rax, %rdi	# D.14025,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_800
	jmp	.L312	#
.L313:
	.loc 1 1354 0
	movl	-336(%rbp), %eax	# checksum, tmp866
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp866
	jle	.L314	#,
	.loc 1 1355 0
	movl	-348(%rbp), %eax	# auint, auint.178
	movl	%eax, %eax	# auint.178, tmp867
	testq	%rax, %rax	# tmp867
	js	.L315	#,
	cvtsi2sdq	%rax, %xmm0	# tmp867, D.14032
	jmp	.L316	#
.L315:
	movq	%rax, %rdx	# tmp867, tmp869
	shrq	%rdx	# tmp869
	andl	$1, %eax	#, tmp870
	orq	%rax, %rdx	# tmp870, tmp869
	cvtsi2sdq	%rdx, %xmm0	# tmp869, tmp868
	addsd	%xmm0, %xmm0	# tmp868, D.14032
.L316:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp872
	addsd	%xmm1, %xmm0	# tmp872, tmp871
	movsd	%xmm0, -184(%rbp)	# tmp871, cdouble
	jmp	.L312	#
.L314:
	.loc 1 1357 0
	movl	-348(%rbp), %eax	# auint, auint.179
	movl	%eax, %eax	# auint.179, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L312	#
.L429:
	.loc 1 1347 0
	nop
.L312:
	.loc 1 1347 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.180
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.180
	jg	.L317	#,
	.loc 1 1359 0 is_stmt 1
	jmp	.L196	#
.L321:
	.loc 1 1362 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_27], D.14016
	movq	%rax, -232(%rbp)	# D.14016, MEM[(char * {ref-all})&aiv]
	.loc 1 1370 0
	addq	$8, %rbx	#, s
	.loc 1 1371 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L319	#,
	.loc 1 1372 0
	addq	$8, %r13	#, sp
	movq	-232(%rbp), %rax	# aiv, aiv.181
	movq	%rax, %rdi	# aiv.181,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_815
	jmp	.L318	#
.L319:
	.loc 1 1374 0
	movl	-336(%rbp), %eax	# checksum, tmp873
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp873
	jle	.L320	#,
	.loc 1 1375 0
	movq	-232(%rbp), %rax	# aiv, aiv.182
	cvtsi2sdq	%rax, %xmm0	# aiv.182, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp875
	addsd	%xmm1, %xmm0	# tmp875, tmp874
	movsd	%xmm0, -184(%rbp)	# tmp874, cdouble
	jmp	.L318	#
.L320:
	.loc 1 1377 0
	movq	-232(%rbp), %rax	# aiv, aiv.183
	addq	%rax, -192(%rbp)	# aiv.184, cuv
	jmp	.L318	#
.L438:
	.loc 1 1361 0
	nop
.L318:
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.185
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.185
	jg	.L321	#,
	.loc 1 1379 0 is_stmt 1
	jmp	.L196	#
.L327:
	.loc 1 1382 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_28], D.14025
	movq	%rax, -224(%rbp)	# D.14025, MEM[(char * {ref-all})&auv]
	.loc 1 1390 0
	addq	$8, %rbx	#, s
	.loc 1 1391 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L323	#,
	.loc 1 1392 0
	addq	$8, %r13	#, sp
	movq	-224(%rbp), %rax	# auv, auv.186
	movq	%rax, %rdi	# auv.186,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_829
	jmp	.L322	#
.L323:
	.loc 1 1394 0
	movl	-336(%rbp), %eax	# checksum, tmp876
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp876
	jle	.L324	#,
	.loc 1 1395 0
	movq	-224(%rbp), %rax	# auv, auv.187
	testq	%rax, %rax	# auv.187
	js	.L325	#,
	cvtsi2sdq	%rax, %xmm0	# auv.187, D.14032
	jmp	.L326	#
.L325:
	movq	%rax, %rdx	# auv.187, tmp878
	shrq	%rdx	# tmp878
	andl	$1, %eax	#, tmp879
	orq	%rax, %rdx	# tmp879, tmp878
	cvtsi2sdq	%rdx, %xmm0	# tmp878, tmp877
	addsd	%xmm0, %xmm0	# tmp877, D.14032
.L326:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp881
	addsd	%xmm1, %xmm0	# tmp881, tmp880
	movsd	%xmm0, -184(%rbp)	# tmp880, cdouble
	jmp	.L322	#
.L324:
	.loc 1 1397 0
	movq	-224(%rbp), %rax	# auv, auv.188
	addq	%rax, -192(%rbp)	# auv.188, cuv
	jmp	.L322	#
.L430:
	.loc 1 1381 0
	nop
.L322:
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.189
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.189
	jg	.L327	#,
	.loc 1 1399 0 is_stmt 1
	jmp	.L196	#
.L331:
	.loc 1 1403 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_29], D.14016
	movq	%rax, -264(%rbp)	# D.14016, MEM[(char * {ref-all})&along]
	.loc 1 1405 0
	addq	$8, %rbx	#, s
	.loc 1 1406 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L329	#,
	.loc 1 1407 0
	addq	$8, %r13	#, sp
	movq	-264(%rbp), %rax	# along, along.190
	movq	%rax, %rdi	# along.190,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_842
	jmp	.L328	#
.L329:
	.loc 1 1409 0
	movl	-336(%rbp), %eax	# checksum, tmp882
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp882
	jle	.L330	#,
	.loc 1 1410 0
	movq	-264(%rbp), %rax	# along, along.191
	cvtsi2sdq	%rax, %xmm0	# along.191, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp884
	addsd	%xmm1, %xmm0	# tmp884, tmp883
	movsd	%xmm0, -184(%rbp)	# tmp883, cdouble
	jmp	.L328	#
.L330:
	.loc 1 1412 0
	movq	-264(%rbp), %rax	# along, along.192
	addq	%rax, -192(%rbp)	# along.193, cuv
	jmp	.L328	#
.L444:
	.loc 1 1402 0
	nop
.L328:
	.loc 1 1402 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.194
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.194
	jg	.L331	#,
	.loc 1 1414 0 is_stmt 1
	jmp	.L196	#
.L335:
	.loc 1 1420 0
	movl	(%rbx), %eax	# MEM[(char * {ref-all})s_30], D.14020
	movl	%eax, -360(%rbp)	# D.14020, MEM[(char * {ref-all})&ai32]
	.loc 1 1426 0
	addq	$4, %rbx	#, s
	.loc 1 1427 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L333	#,
	.loc 1 1428 0
	addq	$8, %r13	#, sp
	movl	-360(%rbp), %eax	# ai32, ai32.195
	cltq
	movq	%rax, %rdi	# D.14016,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_856
	jmp	.L332	#
.L333:
	.loc 1 1430 0
	movl	-336(%rbp), %eax	# checksum, tmp885
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp885
	jle	.L334	#,
	.loc 1 1431 0
	movl	-360(%rbp), %eax	# ai32, ai32.196
	cvtsi2sd	%eax, %xmm0	# ai32.196, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp887
	addsd	%xmm1, %xmm0	# tmp887, tmp886
	movsd	%xmm0, -184(%rbp)	# tmp886, cdouble
	jmp	.L332	#
.L334:
	.loc 1 1433 0
	movl	-360(%rbp), %eax	# ai32, ai32.197
	cltq
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L332	#
.L439:
	.loc 1 1419 0
	nop
.L332:
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.198
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.198
	jg	.L335	#,
	.loc 1 1435 0 is_stmt 1
	jmp	.L196	#
.L341:
	.loc 1 1439 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_31], D.14025
	movq	%rax, -256(%rbp)	# D.14025, MEM[(char * {ref-all})&aulong]
	.loc 1 1441 0
	addq	$8, %rbx	#, s
	.loc 1 1442 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L337	#,
	.loc 1 1443 0
	addq	$8, %r13	#, sp
	movq	-256(%rbp), %rax	# aulong, aulong.199
	movq	%rax, %rdi	# aulong.199,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_871
	jmp	.L336	#
.L337:
	.loc 1 1445 0
	movl	-336(%rbp), %eax	# checksum, tmp888
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp888
	jle	.L338	#,
	.loc 1 1446 0
	movq	-256(%rbp), %rax	# aulong, aulong.200
	testq	%rax, %rax	# aulong.200
	js	.L339	#,
	cvtsi2sdq	%rax, %xmm0	# aulong.200, D.14032
	jmp	.L340	#
.L339:
	movq	%rax, %rdx	# aulong.200, tmp890
	shrq	%rdx	# tmp890
	andl	$1, %eax	#, tmp891
	orq	%rax, %rdx	# tmp891, tmp890
	cvtsi2sdq	%rdx, %xmm0	# tmp890, tmp889
	addsd	%xmm0, %xmm0	# tmp889, D.14032
.L340:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp893
	addsd	%xmm1, %xmm0	# tmp893, tmp892
	movsd	%xmm0, -184(%rbp)	# tmp892, cdouble
	jmp	.L336	#
.L338:
	.loc 1 1448 0
	movq	-256(%rbp), %rax	# aulong, aulong.201
	addq	%rax, -192(%rbp)	# aulong.201, cuv
	jmp	.L336	#
.L443:
	.loc 1 1438 0
	nop
.L336:
	.loc 1 1438 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.202
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.202
	jg	.L341	#,
	.loc 1 1450 0 is_stmt 1
	jmp	.L196	#
.L349:
	.loc 1 1458 0
	movl	(%rbx), %eax	# MEM[(char * {ref-all})s_32], D.14017
	movl	%eax, -356(%rbp)	# D.14017, MEM[(char * {ref-all})&au32]
	.loc 1 1460 0
	addq	$4, %rbx	#, s
	.loc 1 1462 0
	cmpl	$78, -340(%rbp)	#, datumtype
	jne	.L343	#,
	.loc 1 1463 0
	movl	-356(%rbp), %eax	# au32, au32.203
	movl	%eax, %eax	# au32.203, D.14016
	movq	%rax, %rdi	# D.14016,
	call	Perl_my_ntohl	#
	movl	%eax, -356(%rbp)	# au32.204, au32
.L343:
	.loc 1 1466 0
	cmpl	$86, -340(%rbp)	#, datumtype
	jne	.L344	#,
	.loc 1 1467 0
	movl	-356(%rbp), %eax	# au32, au32.205
	movl	%eax, %eax	# au32.205, D.14016
	movq	%rax, %rdi	# D.14016,
	call	vtohl	#
	movl	%eax, -356(%rbp)	# au32.206, au32
.L344:
	.loc 1 1469 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L345	#,
	.loc 1 1470 0
	addq	$8, %r13	#, sp
	movl	-356(%rbp), %eax	# au32, au32.207
	movl	%eax, %eax	# au32.207, D.14025
	movq	%rax, %rdi	# D.14025,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_892
	jmp	.L342	#
.L345:
	.loc 1 1472 0
	movl	-336(%rbp), %eax	# checksum, tmp894
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp894
	jle	.L346	#,
	.loc 1 1473 0
	movl	-356(%rbp), %eax	# au32, au32.208
	movl	%eax, %eax	# au32.208, tmp895
	testq	%rax, %rax	# tmp895
	js	.L347	#,
	cvtsi2sdq	%rax, %xmm0	# tmp895, D.14032
	jmp	.L348	#
.L347:
	movq	%rax, %rdx	# tmp895, tmp897
	shrq	%rdx	# tmp897
	andl	$1, %eax	#, tmp898
	orq	%rax, %rdx	# tmp898, tmp897
	cvtsi2sdq	%rdx, %xmm0	# tmp897, tmp896
	addsd	%xmm0, %xmm0	# tmp896, D.14032
.L348:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp900
	addsd	%xmm1, %xmm0	# tmp900, tmp899
	movsd	%xmm0, -184(%rbp)	# tmp899, cdouble
	jmp	.L342	#
.L346:
	.loc 1 1475 0
	movl	-356(%rbp), %eax	# au32, au32.209
	movl	%eax, %eax	# au32.209, D.14025
	addq	%rax, -192(%rbp)	# D.14025, cuv
	jmp	.L342	#
.L431:
	.loc 1 1457 0
	nop
.L342:
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.210
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.210
	jg	.L349	#,
	.loc 1 1477 0 is_stmt 1
	jmp	.L196	#
.L351:
	.loc 1 1505 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_33], D.14023
	movq	%rax, -248(%rbp)	# D.14023, MEM[(char * {ref-all})&aptr]
	.loc 1 1507 0
	addq	$8, %rbx	#, s
	.loc 1 1509 0
	addq	$8, %r13	#, sp
	movq	-248(%rbp), %rax	# aptr, aptr.211
	movl	$0, %esi	#,
	movq	%rax, %rdi	# aptr.211,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_907
	jmp	.L350	#
.L440:
	.loc 1 1503 0
	nop
.L350:
	.loc 1 1503 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.212
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.212
	jg	.L351	#,
	.loc 1 1511 0 is_stmt 1
	jmp	.L196	#
.L184:
.LBB18:
	.loc 1 1514 0
	movq	$0, -176(%rbp)	#, auv
	.loc 1 1515 0
	movl	$0, -332(%rbp)	#, bytes
	.loc 1 1517 0
	jmp	.L352	#
.L362:
	.loc 1 1518 0
	movq	-176(%rbp), %rax	# auv, tmp901
	salq	$7, %rax	#, D.14025
	movq	%rax, %rdx	# D.14025, D.14025
	movzbl	(%rbx), %eax	# *s_36, D.14019
	movsbq	%al, %rax	# D.14019, D.14025
	andl	$127, %eax	#, D.14025
	orq	%rdx, %rax	# D.14025, tmp902
	movq	%rax, -176(%rbp)	# tmp902, auv
	.loc 1 1520 0
	movq	%rbx, %rax	# s, s.213
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.213_918, D.14019
	testb	%al, %al	# D.14019
	js	.L353	#,
	.loc 1 1521 0
	movl	$0, -332(%rbp)	#, bytes
	.loc 1 1522 0
	addq	$8, %r13	#, sp
	movq	-176(%rbp), %rax	# auv, tmp903
	movq	%rax, %rdi	# tmp903,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_922
	.loc 1 1523 0
	subl	$1, %r12d	#, len
	.loc 1 1524 0
	movq	$0, -176(%rbp)	#, auv
	jmp	.L352	#
.L353:
	.loc 1 1526 0
	addl	$1, -332(%rbp)	#, bytes
	cmpl	$7, -332(%rbp)	#, bytes
	jbe	.L352	#,
.LBB19:
	.loc 1 1530 0
	movq	-176(%rbp), %rax	# auv, tmp904
	movq	%rax, %rdx	# tmp904,
	movl	$20, %esi	#,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, -200(%rbp)	# tmp905, sv
	.loc 1 1531 0
	jmp	.L354	#
.L356:
	.loc 1 1532 0
	movzbl	(%rbx), %eax	# *s_34, D.14019
	movzbl	%al, %eax	# D.14029, D.14020
	andl	$127, %eax	#, D.14020
	movl	%eax, %edx	# D.14020, D.14020
	movq	-200(%rbp), %rax	# sv, tmp906
	movl	%edx, %esi	# D.14020,
	movq	%rax, %rdi	# tmp906,
	call	S_mul128	#
	movq	%rax, -200(%rbp)	# tmp907, sv
	.loc 1 1533 0
	movq	%rbx, %rax	# s, s.214
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.214_934, D.14019
	testb	%al, %al	# D.14019
	js	.L354	#,
	.loc 1 1534 0
	movl	$0, -332(%rbp)	#, bytes
	.loc 1 1535 0
	jmp	.L355	#
.L354:
	.loc 1 1531 0 discriminator 1
	cmpq	-384(%rbp), %rbx	# strend, s
	jb	.L356	#,
.L355:
	.loc 1 1538 0
	movq	-200(%rbp), %rax	# sv, tmp908
	movl	12(%rax), %eax	# sv_169->sv_flags, D.14017
	andl	$262144, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	je	.L357	#,
	.loc 1 1538 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# sv, tmp909
	movq	(%rax), %rax	# sv_169->sv_any, D.14026
	movq	8(%rax), %rax	# MEM[(struct XPV *)_940].xpv_cur, n_a.216
	movq	%rax, -128(%rbp)	# n_a.216, n_a
	movq	-200(%rbp), %rax	# sv, tmp910
	movq	(%rax), %rax	# sv_169->sv_any, D.14026
	movq	(%rax), %rax	# MEM[(struct XPV *)_942].xpv_pv, iftmp.215
	jmp	.L358	#
.L357:
	.loc 1 1538 0 discriminator 2
	leaq	-128(%rbp), %rcx	#, tmp911
	movq	-200(%rbp), %rax	# sv, tmp912
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp911,
	movq	%rax, %rdi	# tmp912,
	call	Perl_sv_2pv_flags	#
.L358:
	.loc 1 1538 0 discriminator 3
	movq	%rax, -168(%rbp)	# iftmp.215, t
	.loc 1 1539 0 is_stmt 1 discriminator 3
	jmp	.L359	#
.L360:
	.loc 1 1540 0
	addq	$1, -168(%rbp)	#, t
.L359:
	.loc 1 1539 0 discriminator 1
	movq	-168(%rbp), %rax	# t, tmp913
	movzbl	(%rax), %eax	# *t_234, D.14019
	cmpb	$48, %al	#, D.14019
	je	.L360	#,
	.loc 1 1541 0
	movq	-168(%rbp), %rdx	# t, tmp914
	movq	-200(%rbp), %rax	# sv, tmp915
	movq	%rdx, %rsi	# tmp914,
	movq	%rax, %rdi	# tmp915,
	call	Perl_sv_chop	#
	.loc 1 1542 0
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp916
	movq	%rax, %rdi	# tmp916,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_948
	.loc 1 1543 0
	subl	$1, %r12d	#, len
	.loc 1 1544 0
	movq	$0, -176(%rbp)	#, auv
.L352:
.LBE19:
	.loc 1 1517 0 discriminator 1
	testl	%r12d, %r12d	# len
	jle	.L361	#,
	.loc 1 1517 0 is_stmt 0 discriminator 2
	cmpq	-384(%rbp), %rbx	# strend, s
	jb	.L362	#,
.L361:
	.loc 1 1547 0 is_stmt 1
	cmpq	-384(%rbp), %rbx	# strend, s
	jb	.L363	#,
	.loc 1 1547 0 is_stmt 0 discriminator 1
	cmpl	$0, -332(%rbp)	#, bytes
	je	.L363	#,
	.loc 1 1548 0 is_stmt 1
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE18:
	.loc 1 1550 0
	jmp	.L196	#
.L363:
	jmp	.L196	#
.L169:
	.loc 1 1552 0
	movl	40(%r14), %eax	# symptr_260(D)->howlen, D.14024
	cmpl	$2, %eax	#, D.14024
	jne	.L364	#,
	.loc 1 1553 0
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L364:
	.loc 1 1554 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.217
	movq	%rax, %rdx	# PL_stack_max.217, PL_stack_max.218
	movq	%r13, %rax	# sp, sp.219
	subq	%rax, %rdx	# sp.219, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L365	#,
	.loc 1 1554 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L365:
	.loc 1 1555 0 is_stmt 1
	movq	-384(%rbp), %rdx	# strend, strend.220
	movq	%rbx, %rax	# s, s.221
	subq	%rax, %rdx	# s.221, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14025
	ja	.L366	#,
	.loc 1 1556 0
	jmp	.L196	#
.L366:
	.loc 1 1558 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_1], D.14023
	movq	%rax, -248(%rbp)	# D.14023, MEM[(char * {ref-all})&aptr]
	.loc 1 1560 0
	addq	$8, %rbx	#, s
	.loc 1 1563 0
	addq	$8, %r13	#, sp
	movslq	%r12d, %rdx	# len, D.14025
	movq	-248(%rbp), %rax	# aptr, aptr.222
	movq	%rdx, %rsi	# D.14025,
	movq	%rax, %rdi	# aptr.222,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_964
	.loc 1 1564 0
	jmp	.L196	#
.L370:
	.loc 1 1569 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_37], D.14016
	movq	%rax, -280(%rbp)	# D.14016, MEM[(char * {ref-all})&aquad]
	.loc 1 1571 0
	addq	$8, %rbx	#, s
	.loc 1 1572 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L368	#,
	.loc 1 1573 0
	addq	$8, %r13	#, sp
	movq	-280(%rbp), %rax	# aquad, aquad.223
	movq	%rax, %rdi	# aquad.223,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_973
	jmp	.L367	#
.L368:
	.loc 1 1576 0
	movl	-336(%rbp), %eax	# checksum, tmp917
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp917
	jle	.L369	#,
	.loc 1 1577 0
	movq	-280(%rbp), %rax	# aquad, aquad.224
	cvtsi2sdq	%rax, %xmm0	# aquad.224, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp919
	addsd	%xmm1, %xmm0	# tmp919, tmp918
	movsd	%xmm0, -184(%rbp)	# tmp918, cdouble
	jmp	.L367	#
.L369:
	.loc 1 1579 0
	movq	-280(%rbp), %rax	# aquad, aquad.225
	addq	%rax, -192(%rbp)	# aquad.226, cuv
	jmp	.L367	#
.L441:
	.loc 1 1567 0
	nop
.L367:
	.loc 1 1567 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.227
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.227
	jg	.L370	#,
	.loc 1 1581 0 is_stmt 1
	jmp	.L196	#
.L376:
	.loc 1 1585 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_38], D.14025
	movq	%rax, -272(%rbp)	# D.14025, MEM[(char * {ref-all})&auquad]
	.loc 1 1587 0
	addq	$8, %rbx	#, s
	.loc 1 1588 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L372	#,
	.loc 1 1589 0
	addq	$8, %r13	#, sp
	movq	-272(%rbp), %rax	# auquad, auquad.228
	movq	%rax, %rdi	# auquad.228,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_987
	jmp	.L371	#
.L372:
	.loc 1 1592 0
	movl	-336(%rbp), %eax	# checksum, tmp920
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp920
	jle	.L373	#,
	.loc 1 1593 0
	movq	-272(%rbp), %rax	# auquad, auquad.229
	testq	%rax, %rax	# auquad.229
	js	.L374	#,
	cvtsi2sdq	%rax, %xmm0	# auquad.229, D.14032
	jmp	.L375	#
.L374:
	movq	%rax, %rdx	# auquad.229, tmp922
	shrq	%rdx	# tmp922
	andl	$1, %eax	#, tmp923
	orq	%rax, %rdx	# tmp923, tmp922
	cvtsi2sdq	%rdx, %xmm0	# tmp922, tmp921
	addsd	%xmm0, %xmm0	# tmp921, D.14032
.L375:
	movsd	-184(%rbp), %xmm1	# cdouble, tmp925
	addsd	%xmm1, %xmm0	# tmp925, tmp924
	movsd	%xmm0, -184(%rbp)	# tmp924, cdouble
	jmp	.L371	#
.L373:
	.loc 1 1595 0
	movq	-272(%rbp), %rax	# auquad, auquad.230
	addq	%rax, -192(%rbp)	# auquad.230, cuv
	jmp	.L371	#
.L432:
	.loc 1 1583 0
	nop
.L371:
	.loc 1 1583 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.231
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.231
	jg	.L376	#,
	.loc 1 1597 0 is_stmt 1
	jmp	.L196	#
.L379:
	.loc 1 1602 0
	movl	(%rbx), %eax	# MEM[(char * {ref-all})s_39], D.14035
	movl	%eax, -344(%rbp)	# D.14035, MEM[(char * {ref-all})&afloat]
	.loc 1 1604 0
	addq	$4, %rbx	#, s
	.loc 1 1605 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L378	#,
	.loc 1 1606 0
	addq	$8, %r13	#, sp
	movss	-344(%rbp), %xmm0	# afloat, afloat.232
	unpcklps	%xmm0, %xmm0	# afloat.232, afloat.232
	cvtps2pd	%xmm0, %xmm0	# afloat.232, D.14032
	call	Perl_newSVnv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_1000
	jmp	.L377	#
.L378:
	.loc 1 1609 0
	movss	-344(%rbp), %xmm0	# afloat, afloat.233
	unpcklps	%xmm0, %xmm0	# afloat.233, afloat.233
	cvtps2pd	%xmm0, %xmm0	# afloat.233, D.14032
	movsd	-184(%rbp), %xmm1	# cdouble, tmp927
	addsd	%xmm1, %xmm0	# tmp927, tmp926
	movsd	%xmm0, -184(%rbp)	# tmp926, cdouble
	jmp	.L377	#
.L436:
	.loc 1 1601 0
	nop
.L377:
	.loc 1 1601 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.234
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.234
	jg	.L379	#,
	.loc 1 1612 0 is_stmt 1
	jmp	.L196	#
.L382:
	.loc 1 1615 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_40], D.14032
	movq	%rax, -240(%rbp)	# D.14032, MEM[(char * {ref-all})&adouble]
	.loc 1 1617 0
	addq	$8, %rbx	#, s
	.loc 1 1618 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L381	#,
	.loc 1 1619 0
	addq	$8, %r13	#, sp
	movq	-240(%rbp), %rax	# adouble, adouble.235
	movq	%rax, -400(%rbp)	# adouble.235, %sfp
	movsd	-400(%rbp), %xmm0	# %sfp,
	call	Perl_newSVnv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_1012
	jmp	.L380	#
.L381:
	.loc 1 1622 0
	movsd	-240(%rbp), %xmm0	# adouble, adouble.236
	movsd	-184(%rbp), %xmm1	# cdouble, tmp929
	addsd	%xmm1, %xmm0	# tmp929, tmp928
	movsd	%xmm0, -184(%rbp)	# tmp928, cdouble
	jmp	.L380	#
.L435:
	.loc 1 1614 0
	nop
.L380:
	.loc 1 1614 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.237
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.237
	jg	.L382	#,
	.loc 1 1625 0 is_stmt 1
	jmp	.L196	#
.L385:
	.loc 1 1628 0
	movq	(%rbx), %rax	# MEM[(char * {ref-all})s_41], D.14032
	movq	%rax, -216(%rbp)	# D.14032, MEM[(char * {ref-all})&anv]
	.loc 1 1630 0
	addq	$8, %rbx	#, s
	.loc 1 1631 0
	cmpl	$0, -336(%rbp)	#, checksum
	jne	.L384	#,
	.loc 1 1632 0
	addq	$8, %r13	#, sp
	movq	-216(%rbp), %rax	# anv, anv.238
	movq	%rax, -400(%rbp)	# anv.238, %sfp
	movsd	-400(%rbp), %xmm0	# %sfp,
	call	Perl_newSVnv	#
	movq	%rax, %rdi	# D.14028,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_1022
	jmp	.L383	#
.L384:
	.loc 1 1635 0
	movsd	-216(%rbp), %xmm0	# anv, anv.239
	movsd	-184(%rbp), %xmm1	# cdouble, tmp931
	addsd	%xmm1, %xmm0	# tmp931, tmp930
	movsd	%xmm0, -184(%rbp)	# tmp930, cdouble
	jmp	.L383	#
.L428:
	.loc 1 1627 0
	nop
.L383:
	.loc 1 1627 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# len, len.240
	leal	-1(%rax), %r12d	#, len
	testl	%eax, %eax	# len.240
	jg	.L385	#,
	.loc 1 1638 0 is_stmt 1
	jmp	.L196	#
.L183:
	.loc 1 1659 0
	movzbl	PL_uudmap+77(%rip), %eax	# PL_uudmap, D.14019
	testb	%al, %al	# D.14019
	jne	.L386	#,
.LBB20:
	.loc 1 1662 0
	movl	$0, -328(%rbp)	#, i
	jmp	.L387	#
.L388:
	.loc 1 1663 0 discriminator 2
	movl	-328(%rbp), %eax	# i, tmp933
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14019
	movzbl	%al, %eax	# D.14029, D.14020
	movl	-328(%rbp), %edx	# i, tmp934
	cltq
	movb	%dl, PL_uudmap(%rax)	# D.14019, PL_uudmap
	.loc 1 1662 0 discriminator 2
	addl	$1, -328(%rbp)	#, i
.L387:
	.loc 1 1662 0 is_stmt 0 discriminator 1
	movl	-328(%rbp), %eax	# i, i.241
	cmpl	$64, %eax	#, i.241
	jbe	.L388	#,
	.loc 1 1668 0 is_stmt 1
	movb	$0, PL_uudmap+32(%rip)	#, PL_uudmap
.L386:
.LBE20:
	.loc 1 1671 0
	movq	-384(%rbp), %rdx	# strend, strend.242
	movq	%rbx, %rax	# s, s.243
	subq	%rax, %rdx	# s.243, D.14016
	movq	%rdx, %rax	# D.14016, tmp936
	addq	%rax, %rax	# tmp936
	addq	%rdx, %rax	# D.14016, D.14016
	leaq	3(%rax), %rdx	#, tmp938
	testq	%rax, %rax	# tmp937
	cmovs	%rdx, %rax	# tmp938,, tmp937
	sarq	$2, %rax	#, tmp939
	movq	%rax, -264(%rbp)	# along.244, along
	.loc 1 1672 0
	movq	-264(%rbp), %rax	# along, along.245
	movq	%rax, %rdi	# along.246,
	call	Perl_newSV	#
	movq	%rax, -200(%rbp)	# tmp940, sv
	.loc 1 1673 0
	movq	-264(%rbp), %rax	# along, along.247
	testq	%rax, %rax	# along.247
	je	.L389	#,
	.loc 1 1674 0
	movq	-200(%rbp), %rax	# sv, tmp941
	movl	12(%rax), %eax	# sv_1043->sv_flags, D.14017
	orl	$67371008, %eax	#, D.14017
	movl	%eax, %edx	# D.14017, D.14017
	movq	-200(%rbp), %rax	# sv, tmp942
	movl	%edx, 12(%rax)	# D.14017, sv_1043->sv_flags
	.loc 1 1675 0
	jmp	.L390	#
.L389:
	jmp	.L390	#
.L404:
.LBB21:
	.loc 1 1679 0
	movb	$0, -61(%rbp)	#, hunk
	.loc 1 1680 0
	movq	%rbx, %rax	# s, s.248
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s.248_1050], D.14029
	movzbl	%al, %eax	# D.14029, D.14020
	cltq
	movzbl	PL_uudmap(%rax), %eax	# PL_uudmap, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$63, %eax	#, len
	movl	%eax, %r12d	# len, len
	.loc 1 1681 0
	jmp	.L391	#
.L400:
	.loc 1 1682 0
	cmpq	-384(%rbp), %rbx	# strend, s
	jae	.L392	#,
	.loc 1 1682 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_46, D.14019
	cmpb	$31, %al	#, D.14019
	jle	.L392	#,
	movzbl	(%rbx), %eax	# *s_46, D.14019
	cmpb	$96, %al	#, D.14019
	jg	.L392	#,
	.loc 1 1683 0 is_stmt 1
	movq	%rbx, %rax	# s, s.249
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s.249_1059], D.14029
	movzbl	%al, %eax	# D.14029, D.14020
	cltq
	movzbl	PL_uudmap(%rax), %eax	# PL_uudmap, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$63, %eax	#, tmp945
	movl	%eax, -324(%rbp)	# tmp945, a
	jmp	.L393	#
.L392:
	.loc 1 1685 0
	movl	$0, -324(%rbp)	#, a
.L393:
	.loc 1 1686 0
	cmpq	-384(%rbp), %rbx	# strend, s
	jae	.L394	#,
	.loc 1 1686 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_42, D.14019
	cmpb	$31, %al	#, D.14019
	jle	.L394	#,
	movzbl	(%rbx), %eax	# *s_42, D.14019
	cmpb	$96, %al	#, D.14019
	jg	.L394	#,
	.loc 1 1687 0 is_stmt 1
	movq	%rbx, %rax	# s, s.250
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s.250_1069], D.14029
	movzbl	%al, %eax	# D.14029, D.14020
	cltq
	movzbl	PL_uudmap(%rax), %eax	# PL_uudmap, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$63, %eax	#, tmp947
	movl	%eax, -320(%rbp)	# tmp947, b
	jmp	.L395	#
.L394:
	.loc 1 1689 0
	movl	$0, -320(%rbp)	#, b
.L395:
	.loc 1 1690 0
	cmpq	-384(%rbp), %rbx	# strend, s
	jae	.L396	#,
	.loc 1 1690 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_43, D.14019
	cmpb	$31, %al	#, D.14019
	jle	.L396	#,
	movzbl	(%rbx), %eax	# *s_43, D.14019
	cmpb	$96, %al	#, D.14019
	jg	.L396	#,
	.loc 1 1691 0 is_stmt 1
	movq	%rbx, %rax	# s, s.251
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s.251_1079], D.14029
	movzbl	%al, %eax	# D.14029, D.14020
	cltq
	movzbl	PL_uudmap(%rax), %eax	# PL_uudmap, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$63, %eax	#, tmp949
	movl	%eax, -316(%rbp)	# tmp949, c
	jmp	.L397	#
.L396:
	.loc 1 1693 0
	movl	$0, -316(%rbp)	#, c
.L397:
	.loc 1 1694 0
	cmpq	-384(%rbp), %rbx	# strend, s
	jae	.L398	#,
	.loc 1 1694 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_44, D.14019
	cmpb	$31, %al	#, D.14019
	jle	.L398	#,
	movzbl	(%rbx), %eax	# *s_44, D.14019
	cmpb	$96, %al	#, D.14019
	jg	.L398	#,
	.loc 1 1695 0 is_stmt 1
	movq	%rbx, %rax	# s, s.252
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s.252_1089], D.14029
	movzbl	%al, %eax	# D.14029, D.14020
	cltq
	movzbl	PL_uudmap(%rax), %eax	# PL_uudmap, D.14019
	movsbl	%al, %eax	# D.14019, D.14020
	andl	$63, %eax	#, tmp951
	movl	%eax, -312(%rbp)	# tmp951, d
	jmp	.L399	#
.L398:
	.loc 1 1697 0
	movl	$0, -312(%rbp)	#, d
.L399:
	.loc 1 1698 0
	movl	-324(%rbp), %eax	# a, tmp952
	sall	$2, %eax	#, D.14020
	movl	%eax, %edx	# D.14020, D.14019
	movl	-320(%rbp), %eax	# b, tmp953
	sarl	$4, %eax	#, D.14020
	orl	%edx, %eax	# D.14019, D.14019
	movb	%al, -64(%rbp)	# D.14019, hunk
	.loc 1 1699 0
	movl	-320(%rbp), %eax	# b, tmp954
	sall	$4, %eax	#, D.14020
	movl	%eax, %edx	# D.14020, D.14019
	movl	-316(%rbp), %eax	# c, tmp955
	sarl	$2, %eax	#, D.14020
	orl	%edx, %eax	# D.14019, D.14019
	movb	%al, -63(%rbp)	# D.14019, hunk
	.loc 1 1700 0
	movl	-316(%rbp), %eax	# c, tmp956
	sall	$6, %eax	#, D.14020
	movl	%eax, %edx	# D.14020, D.14019
	movl	-312(%rbp), %eax	# d, tmp957
	orl	%edx, %eax	# D.14019, D.14019
	movb	%al, -62(%rbp)	# D.14019, hunk
	.loc 1 1701 0
	movl	$3, %eax	#, tmp958
	cmpl	$3, %r12d	#, len
	cmovle	%r12d, %eax	# len,, D.14020
	movslq	%eax, %rdx	# D.14020, D.14025
	leaq	-64(%rbp), %rsi	#, tmp959
	movq	-200(%rbp), %rax	# sv, tmp960
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp960,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1702 0
	subl	$3, %r12d	#, len
.L391:
	.loc 1 1681 0 discriminator 1
	testl	%r12d, %r12d	# len
	jg	.L400	#,
	.loc 1 1704 0
	movzbl	(%rbx), %eax	# *s_46, D.14019
	cmpb	$10, %al	#, D.14019
	jne	.L401	#,
	.loc 1 1705 0
	addq	$1, %rbx	#, s
	jmp	.L390	#
.L401:
	.loc 1 1707 0
	leaq	1(%rbx), %rax	#, D.14023
	cmpq	-384(%rbp), %rax	# strend, D.14023
	jae	.L390	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.14023
	movzbl	(%rax), %eax	# *_1117, D.14019
	cmpb	$10, %al	#, D.14019
	jne	.L390	#,
	.loc 1 1708 0 is_stmt 1
	addq	$2, %rbx	#, s
.L390:
.LBE21:
	.loc 1 1675 0 discriminator 1
	cmpq	-384(%rbp), %rbx	# strend, s
	jae	.L403	#,
	.loc 1 1675 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_48, D.14019
	cmpb	$32, %al	#, D.14019
	jle	.L403	#,
	.loc 1 1675 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_48, D.14019
	cmpb	$31, %al	#, D.14019
	jle	.L403	#,
	movzbl	(%rbx), %eax	# *s_48, D.14019
	cmpb	$96, %al	#, D.14019
	jle	.L404	#,
.L403:
.LBB22:
	.loc 1 1710 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.253
	movq	%rax, %rdx	# PL_stack_max.253, PL_stack_max.254
	movq	%r13, %rax	# sp, sp.255
	subq	%rax, %rdx	# sp.255, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L405	#,
	.loc 1 1710 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L405:
	.loc 1 1710 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp961
	movq	%rax, %rdi	# tmp961,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_1125
.LBE22:
	.loc 1 1711 0 is_stmt 1 discriminator 2
	nop
.L196:
	.loc 1 1714 0
	cmpl	$0, -336(%rbp)	#, checksum
	je	.L406	#,
	.loc 1 1715 0
	movl	-340(%rbp), %eax	# datumtype, tmp962
	movzbl	%al, %eax	# tmp962, D.14020
	movl	%eax, %esi	# D.14020,
	movl	$.LC27, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.14023
	jne	.L407	#,
	.loc 1 1715 0 is_stmt 0 discriminator 1
	movl	-336(%rbp), %eax	# checksum, tmp963
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp963
	jle	.L408	#,
	.loc 1 1717 0 is_stmt 1
	movl	-340(%rbp), %eax	# datumtype, tmp964
	movzbl	%al, %eax	# tmp964, D.14020
	movl	%eax, %esi	# D.14020,
	movl	$.LC28, %edi	#,
	call	strchr	#
	.loc 1 1716 0
	testq	%rax, %rax	# D.14023
	je	.L408	#,
.L407:
.LBB23:
	.loc 1 1720 0
	movl	-336(%rbp), %eax	# checksum, tmp965
	andl	$15, %eax	#, D.14020
	movl	$1, %edx	#, tmp966
	movl	%eax, %ecx	# D.14020, tmp1059
	sall	%cl, %edx	# tmp1059, D.14020
	movl	%edx, %eax	# D.14020, D.14020
	cvtsi2sd	%eax, %xmm0	# D.14020, adouble.256
	movsd	%xmm0, -240(%rbp)	# adouble.256, adouble
	.loc 1 1721 0
	jmp	.L409	#
.L410:
	.loc 1 1722 0
	subl	$16, -336(%rbp)	#, checksum
	.loc 1 1723 0
	movsd	-240(%rbp), %xmm1	# adouble, adouble.257
	movsd	.LC29(%rip), %xmm0	#, tmp967
	mulsd	%xmm1, %xmm0	# adouble.257, adouble.258
	movsd	%xmm0, -240(%rbp)	# adouble.258, adouble
.L409:
	.loc 1 1721 0 discriminator 1
	cmpl	$15, -336(%rbp)	#, checksum
	jg	.L410	#,
	.loc 1 1725 0
	jmp	.L411	#
.L412:
	.loc 1 1726 0
	movsd	-240(%rbp), %xmm0	# adouble, adouble.259
	movsd	-184(%rbp), %xmm1	# cdouble, tmp969
	addsd	%xmm1, %xmm0	# tmp969, tmp968
	movsd	%xmm0, -184(%rbp)	# tmp968, cdouble
.L411:
	.loc 1 1725 0 discriminator 1
	xorpd	%xmm0, %xmm0	# tmp970
	ucomisd	-184(%rbp), %xmm0	# cdouble, tmp970
	ja	.L412	#,
	.loc 1 1727 0
	movsd	-240(%rbp), %xmm1	# adouble, adouble.260
	movsd	-184(%rbp), %xmm0	# cdouble, tmp971
	divsd	%xmm1, %xmm0	# adouble.260, D.14032
	leaq	-128(%rbp), %rax	#, tmp972
	movq	%rax, %rdi	# tmp972,
	call	modf	#
	movsd	-240(%rbp), %xmm1	# adouble, adouble.261
	mulsd	%xmm1, %xmm0	# adouble.261, tmp973
	movsd	%xmm0, -184(%rbp)	# tmp973, cdouble
	.loc 1 1728 0
	movq	-184(%rbp), %rax	# cdouble, tmp974
	movq	%rax, -400(%rbp)	# tmp974, %sfp
	movsd	-400(%rbp), %xmm0	# %sfp,
	call	Perl_newSVnv	#
	movq	%rax, -200(%rbp)	# tmp975, sv
.LBE23:
	.loc 1 1717 0
	jmp	.L413	#
.L408:
	.loc 1 1731 0
	movl	-336(%rbp), %eax	# checksum, tmp976
	cmpl	-304(%rbp), %eax	# bits_in_uv, tmp976
	jge	.L414	#,
.LBB24:
	.loc 1 1732 0
	movl	-336(%rbp), %eax	# checksum, tmp977
	movl	$1, %edx	#, tmp978
	movl	%eax, %ecx	# tmp977, tmp1062
	salq	%cl, %rdx	# tmp1062, D.14025
	movq	%rdx, %rax	# D.14025, D.14025
	subq	$1, %rax	#, tmp979
	movq	%rax, -136(%rbp)	# tmp979, mask
	.loc 1 1733 0
	movq	-136(%rbp), %rax	# mask, tmp980
	andq	%rax, -192(%rbp)	# tmp980, cuv
.L414:
.LBE24:
	.loc 1 1735 0
	movq	-192(%rbp), %rax	# cuv, tmp981
	movq	%rax, %rdi	# tmp981,
	call	Perl_newSVuv	#
	movq	%rax, -200(%rbp)	# tmp982, sv
.L413:
.LBB25:
	.loc 1 1737 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.262
	movq	%rax, %rdx	# PL_stack_max.262, PL_stack_max.263
	movq	%r13, %rax	# sp, sp.264
	subq	%rax, %rdx	# sp.264, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	cmpq	$7, %rax	#, D.14016
	jg	.L415	#,
	.loc 1 1737 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L415:
	.loc 1 1737 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-200(%rbp), %rax	# sv, tmp983
	movq	%rax, %rdi	# tmp983,
	call	Perl_sv_2mortal	#
	movq	%rax, 0(%r13)	# D.14028, *sp_1155
.LBE25:
	.loc 1 1738 0 is_stmt 1 discriminator 2
	movl	$0, -336(%rbp)	#, checksum
.L406:
	.loc 1 1741 0
	movl	48(%r14), %eax	# symptr_260(D)->flags, D.14017
	andl	$4, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	je	.L143	#,
	.loc 1 1742 0
	movq	%r13, %rdx	# sp, sp.265
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.266
	subq	%rax, %rdx	# PL_stack_base.267, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sarq	$3, %rax	#, tmp984
	movq	%rax, %rdx	# tmp984, D.14016
	movl	-308(%rbp), %eax	# start_sp_offset, tmp985
	cltq
	subq	%rax, %rdx	# D.14016, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	testq	%rax, %rax	# D.14016
	jg	.L416	#,
	.loc 1 1743 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L416:
	.loc 1 1744 0
	movq	%r14, %rdi	# symptr,
	call	S_next_symbol	#
	testb	%al, %al	# D.14019
	je	.L417	#,
	.loc 1 1745 0
	movl	40(%r14), %eax	# symptr_260(D)->howlen, D.14024
	cmpl	$1, %eax	#, D.14024
	jne	.L418	#,
	.loc 1 1746 0
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L418:
	.loc 1 1747 0
	cmpb	$0, -367(%rbp)	#, beyond
	je	.L419	#,
	.loc 1 1749 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L423	#
.L419:
	.loc 1 1752 0
	movq	%r13, %rax	# sp, sp.268
	leaq	-8(%rax), %r13	#, sp
	movq	(%rax), %rax	# *sp.268_1170, PL_Sv.269
	movq	%rax, PL_Sv(%rip)	# PL_Sv.269, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.271
	movl	12(%rax), %eax	# PL_Sv.271_1173->sv_flags, D.14017
	andl	$65536, %eax	#, D.14017
	testl	%eax, %eax	# D.14017
	je	.L421	#,
	.loc 1 1752 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.272
	movq	(%rax), %rax	# PL_Sv.272_1176->sv_any, D.14026
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1177].xiv_iv, D.14016
	jmp	.L422	#
.L421:
	.loc 1 1752 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.273
	movq	%rax, %rdi	# PL_Sv.273,
	call	Perl_sv_2iv	#
.L422:
	.loc 1 1752 0 discriminator 3
	movl	%eax, %r12d	# iftmp.270, len
	.loc 1 1753 0 is_stmt 1 discriminator 3
	testl	%r12d, %r12d	# len
	jns	.L423	#,
	.loc 1 1754 0
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L423	#
.L417:
	.loc 1 1757 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L423:
	.loc 1 1759 0
	movl	32(%r14), %eax	# symptr_260(D)->code, tmp986
	movl	%eax, -340(%rbp)	# tmp986, datumtype
	.loc 1 1760 0
	movb	$0, -368(%rbp)	#, explicit_length
	.loc 1 1761 0
	jmp	.L149	#
.L143:
	.loc 1 914 0 discriminator 1
	movq	%r14, %rdi	# symptr,
	call	S_next_symbol	#
	testb	%al, %al	# D.14019
	jne	.L424	#,
.L145:
	.loc 1 1765 0
	cmpq	$0, -392(%rbp)	#, new_s
	je	.L425	#,
	.loc 1 1766 0
	movq	-392(%rbp), %rax	# new_s, tmp987
	movq	%rbx, (%rax)	# s, *new_s_1186(D)
.L425:
	.loc 1 1767 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1768 0
	movq	%r13, %rdx	# sp, sp.274
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.275
	subq	%rax, %rdx	# PL_stack_base.276, D.14016
	movq	%rdx, %rax	# D.14016, D.14016
	sarq	$3, %rax	#, tmp988
	movl	%eax, %edx	# D.14016, D.14027
	movl	-308(%rbp), %eax	# start_sp_offset, start_sp_offset.277
	subl	%eax, %edx	# start_sp_offset.277, D.14027
	movl	%edx, %eax	# D.14027, D.14027
	.loc 1 1769 0
	movq	-56(%rbp), %rsi	# D.14038, tmp991
	xorq	%fs:40, %rsi	#, tmp991
	je	.L427	#,
	call	__stack_chk_fail	#
.L427:
	addq	$360, %rsp	#,
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
	.size	S_unpack_rec, .-S_unpack_rec
	.globl	Perl_pp_unpack
	.type	Perl_pp_unpack, @function
Perl_pp_unpack:
.LFB10:
	.loc 1 1772 0
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
	.loc 1 1773 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1774 0
	movq	%rbx, %rax	# sp, sp.278
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.278_10, tmp108
	movq	%rax, -56(%rbp)	# tmp108, right
	movq	%rbx, %rax	# sp, sp.279
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.279_13, tmp109
	movq	%rax, -48(%rbp)	# tmp109, left
	.loc 1 1775 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.281
	movzbl	36(%rax), %eax	# PL_op.281_16->op_flags, D.14058
	movzbl	%al, %eax	# D.14058, D.14059
	andl	$3, %eax	#, D.14059
	cmpl	$1, %eax	#, D.14059
	je	.L446	#,
	.loc 1 1775 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.283
	movzbl	36(%rax), %eax	# PL_op.283_20->op_flags, D.14058
	movzbl	%al, %eax	# D.14058, D.14059
	andl	$3, %eax	#, D.14059
	cmpl	$2, %eax	#, D.14059
	je	.L447	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.285
	movzbl	36(%rax), %eax	# PL_op.285_24->op_flags, D.14058
	movzbl	%al, %eax	# D.14058, D.14059
	andl	$3, %eax	#, D.14059
	cmpl	$3, %eax	#, D.14059
	je	.L448	#,
	call	Perl_block_gimme	#
	jmp	.L451	#
.L448:
	.loc 1 1775 0 discriminator 2
	movl	$1, %eax	#, iftmp.284
	jmp	.L451	#
.L447:
	movl	$0, %eax	#, iftmp.282
	jmp	.L451	#
.L446:
	movl	$128, %eax	#, iftmp.280
.L451:
	.loc 1 1775 0 discriminator 3
	movl	%eax, -76(%rbp)	# iftmp.280, gimme
	.loc 1 1778 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# left, tmp110
	movl	12(%rax), %eax	# left_15->sv_flags, D.14060
	andl	$262144, %eax	#, D.14060
	testl	%eax, %eax	# D.14060
	je	.L452	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# left, tmp111
	movq	(%rax), %rax	# left_15->sv_any, D.14061
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, llen.287
	movq	%rax, -72(%rbp)	# llen.287, llen
	movq	-48(%rbp), %rax	# left, tmp112
	movq	(%rax), %rax	# left_15->sv_any, D.14061
	movq	(%rax), %rax	# MEM[(struct XPV *)_39].xpv_pv, iftmp.286
	jmp	.L453	#
.L452:
	.loc 1 1778 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp113
	movq	-48(%rbp), %rax	# left, tmp114
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	Perl_sv_2pv_flags	#
.L453:
	.loc 1 1778 0 discriminator 3
	movq	%rax, %r12	# iftmp.286, pat
	.loc 1 1785 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# right, tmp115
	movl	12(%rax), %eax	# right_12->sv_flags, D.14060
	andl	$262144, %eax	#, D.14060
	testl	%eax, %eax	# D.14060
	je	.L454	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# right, tmp116
	movq	(%rax), %rax	# right_12->sv_any, D.14061
	movq	8(%rax), %rax	# MEM[(struct XPV *)_45].xpv_cur, rlen.289
	movq	%rax, -64(%rbp)	# rlen.289, rlen
	movq	-56(%rbp), %rax	# right, tmp117
	movq	(%rax), %rax	# right_12->sv_any, D.14061
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, iftmp.288
	jmp	.L455	#
.L454:
	.loc 1 1785 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp118
	movq	-56(%rbp), %rax	# right, tmp119
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	Perl_sv_2pv_flags	#
.L455:
	.loc 1 1785 0 discriminator 3
	movq	%rax, %r13	# iftmp.288, s
	.loc 1 1787 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# rlen, rlen.290
	addq	%r13, %rax	# s, tmp120
	movq	%rax, -40(%rbp)	# tmp120, strend
	.loc 1 1788 0 discriminator 3
	movq	-72(%rbp), %rax	# llen, llen.291
	leaq	(%r12,%rax), %r14	#, patend
	.loc 1 1791 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1793 0 discriminator 3
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L456	#,
	.loc 1 1793 0 is_stmt 0 discriminator 1
	movl	$16, %edx	#, iftmp.292
	jmp	.L457	#
.L456:
	.loc 1 1793 0 discriminator 2
	movl	$0, %edx	#, iftmp.292
.L457:
	.loc 1 1794 0 is_stmt 1
	movq	-56(%rbp), %rax	# right, tmp121
	movl	12(%rax), %eax	# right_12->sv_flags, D.14060
	andl	$536870912, %eax	#, D.14060
	testl	%eax, %eax	# D.14060
	je	.L458	#,
	.loc 1 1794 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.294
	movzbl	37(%rax), %eax	# PL_curcop.294_59->op_private, D.14058
	movzbl	%al, %eax	# D.14058, D.14059
	andl	$8, %eax	#, D.14059
	testl	%eax, %eax	# D.14059
	jne	.L458	#,
	movl	$8, %eax	#, iftmp.293
	jmp	.L459	#
.L458:
	.loc 1 1794 0 discriminator 2
	movl	$0, %eax	#, iftmp.293
.L459:
	.loc 1 1794 0 discriminator 3
	orl	%edx, %eax	# iftmp.292, D.14059
	.loc 1 1792 0 is_stmt 1 discriminator 3
	movl	%eax, %edx	# D.14059, D.14060
	movq	-40(%rbp), %rax	# strend, tmp122
	movl	%edx, %r8d	# D.14060,
	movq	%rax, %rcx	# tmp122,
	movq	%r13, %rdx	# s,
	movq	%r14, %rsi	# patend,
	movq	%r12, %rdi	# pat,
	call	Perl_unpackstring	#
	movl	%eax, %r12d	#, cnt
	.loc 1 1796 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1797 0 discriminator 3
	testl	%r12d, %r12d	# cnt
	jne	.L460	#,
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L460	#,
	.loc 1 1798 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_69
.L460:
	.loc 1 1799 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.295
	movq	(%rax), %rax	# PL_op.295_70->op_next, D.14062
	.loc 1 1800 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_pp_unpack, .-Perl_pp_unpack
	.section	.rodata
.LC34:
	.string	"\n"
	.text
	.type	S_doencodes, @function
S_doencodes:
.LFB11:
	.loc 1 1804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %r13	# sv, sv
	movq	%rsi, %rbx	# s, s
	movl	%edx, %r12d	# len, len
	.loc 1 1804 0
	movq	%fs:40, %rax	#, tmp133
	movq	%rax, -40(%rbp)	# tmp133, D.14068
	xorl	%eax, %eax	# tmp133
	.loc 1 1807 0
	movslq	%r12d, %rax	# len, tmp121
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -48(%rbp)	# D.14063, hunk
	.loc 1 1808 0
	leaq	-48(%rbp), %rax	#, tmp122
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp122,
	movq	%r13, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1809 0
	movb	$0, -44(%rbp)	#, hunk
	.loc 1 1810 0
	jmp	.L463	#
.L464:
	.loc 1 1811 0
	movzbl	(%rbx), %eax	# *s_1, D.14063
	shrb	$2, %al	#, D.14064
	movsbl	%al, %eax	# D.14065, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -48(%rbp)	# D.14063, hunk
	.loc 1 1812 0
	movzbl	(%rbx), %eax	# *s_1, D.14063
	movsbl	%al, %eax	# D.14063, D.14066
	sall	$4, %eax	#, D.14066
	andl	$48, %eax	#, D.14066
	movl	%eax, %edx	# D.14066, D.14066
	leaq	1(%rbx), %rax	#, D.14067
	movzbl	(%rax), %eax	# *_18, D.14063
	sarb	$4, %al	#, D.14065
	movsbl	%al, %eax	# D.14065, D.14066
	andl	$15, %eax	#, D.14066
	orl	%edx, %eax	# D.14066, D.14066
	andl	$63, %eax	#, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -47(%rbp)	# D.14063, hunk
	.loc 1 1813 0
	leaq	1(%rbx), %rax	#, D.14067
	movzbl	(%rax), %eax	# *_26, D.14063
	movsbl	%al, %eax	# D.14063, D.14066
	sall	$2, %eax	#, D.14066
	andl	$60, %eax	#, D.14066
	movl	%eax, %edx	# D.14066, D.14066
	leaq	2(%rbx), %rax	#, D.14067
	movzbl	(%rax), %eax	# *_31, D.14063
	sarb	$6, %al	#, D.14065
	movsbl	%al, %eax	# D.14065, D.14066
	andl	$3, %eax	#, D.14066
	orl	%edx, %eax	# D.14066, D.14066
	andl	$63, %eax	#, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -46(%rbp)	# D.14063, hunk
	.loc 1 1814 0
	leaq	2(%rbx), %rax	#, D.14067
	movzbl	(%rax), %eax	# *_39, D.14063
	movsbl	%al, %eax	# D.14063, D.14066
	andl	$63, %eax	#, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -45(%rbp)	# D.14063, hunk
	.loc 1 1815 0
	leaq	-48(%rbp), %rax	#, tmp127
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp127,
	movq	%r13, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1816 0
	addq	$3, %rbx	#, s
	.loc 1 1817 0
	subl	$3, %r12d	#, len
.L463:
	.loc 1 1810 0 discriminator 1
	cmpl	$2, %r12d	#, len
	jg	.L464	#,
	.loc 1 1819 0
	testl	%r12d, %r12d	# len
	jle	.L465	#,
.LBB26:
	.loc 1 1820 0
	cmpl	$1, %r12d	#, len
	jle	.L466	#,
	.loc 1 1820 0 is_stmt 0 discriminator 1
	movzbl	1(%rbx), %eax	# MEM[(char *)s_1 + 1B], iftmp.296
	jmp	.L467	#
.L466:
	.loc 1 1820 0 discriminator 2
	movl	$0, %eax	#, iftmp.296
.L467:
	.loc 1 1820 0 discriminator 3
	movb	%al, -49(%rbp)	# iftmp.296, r
	.loc 1 1821 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %eax	# *s_1, D.14063
	shrb	$2, %al	#, D.14064
	movsbl	%al, %eax	# D.14065, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -48(%rbp)	# D.14063, hunk
	.loc 1 1822 0 discriminator 3
	movzbl	(%rbx), %eax	# *s_1, D.14063
	movsbl	%al, %eax	# D.14063, D.14066
	sall	$4, %eax	#, D.14066
	andl	$48, %eax	#, D.14066
	movl	%eax, %edx	# D.14066, D.14066
	movzbl	-49(%rbp), %eax	# r, tmp129
	sarb	$4, %al	#, D.14065
	movsbl	%al, %eax	# D.14065, D.14066
	andl	$15, %eax	#, D.14066
	orl	%edx, %eax	# D.14066, D.14066
	andl	$63, %eax	#, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -47(%rbp)	# D.14063, hunk
	.loc 1 1823 0 discriminator 3
	movsbl	-49(%rbp), %eax	# r, D.14066
	sall	$2, %eax	#, D.14066
	andl	$60, %eax	#, D.14066
	cltq
	movzbl	PL_uuemap(%rax), %eax	# PL_uuemap, D.14063
	movb	%al, -46(%rbp)	# D.14063, hunk
	.loc 1 1824 0 discriminator 3
	movzbl	PL_uuemap(%rip), %eax	# PL_uuemap, D.14063
	movb	%al, -45(%rbp)	# D.14063, hunk
	.loc 1 1825 0 discriminator 3
	leaq	-48(%rbp), %rax	#, tmp132
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp132,
	movq	%r13, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
.L465:
.LBE26:
	.loc 1 1827 0
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC34, %esi	#,
	movq	%r13, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1828 0
	movq	-40(%rbp), %rax	# D.14068, tmp134
	xorq	%fs:40, %rax	#, tmp134
	je	.L468	#,
	call	__stack_chk_fail	#
.L468:
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	S_doencodes, .-S_doencodes
	.type	S_is_an_int, @function
S_is_an_int:
.LFB12:
	.loc 1 1832 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# s, s
	movq	%rsi, -64(%rbp)	# l, l
	.loc 1 1834 0
	movq	-64(%rbp), %rdx	# l, tmp78
	movq	-56(%rbp), %rax	# s, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Perl_newSVpvn	#
	movq	%rax, -16(%rbp)	# tmp80, result
	.loc 1 1835 0
	movq	-16(%rbp), %rax	# result, tmp81
	movl	12(%rax), %eax	# result_13->sv_flags, D.14071
	andl	$262144, %eax	#, D.14071
	testl	%eax, %eax	# D.14071
	je	.L470	#,
	.loc 1 1835 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# result, tmp82
	movq	(%rax), %rax	# result_13->sv_any, D.14072
	movq	8(%rax), %rax	# MEM[(struct XPV *)_16].xpv_cur, n_a.298
	movq	%rax, -32(%rbp)	# n_a.298, n_a
	movq	-16(%rbp), %rax	# result, tmp83
	movq	(%rax), %rax	# result_13->sv_any, D.14072
	movq	(%rax), %rax	# MEM[(struct XPV *)_18].xpv_pv, iftmp.297
	jmp	.L471	#
.L470:
	.loc 1 1835 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp84
	movq	-16(%rbp), %rax	# result, tmp85
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_2pv_flags	#
.L471:
	.loc 1 1835 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.297, result_c
	.loc 1 1836 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# result_c, tmp86
	movq	%rax, -24(%rbp)	# tmp86, out
	.loc 1 1837 0 discriminator 3
	movb	$1, -34(%rbp)	#, skip
	.loc 1 1838 0 discriminator 3
	movb	$0, -33(%rbp)	#, ignore
	.loc 1 1840 0 discriminator 3
	jmp	.L472	#
.L483:
	.loc 1 1841 0
	movq	-56(%rbp), %rax	# s, tmp87
	movzbl	(%rax), %eax	# *s_1, D.14073
	movsbl	%al, %eax	# D.14073, D.14074
	subl	$32, %eax	#, tmp88
	cmpl	$25, %eax	#, tmp88
	ja	.L473	#,
	movl	%eax, %eax	# tmp88, tmp89
	movq	.L475(,%rax,8), %rax	#, tmp90
	jmp	*%rax	# tmp90
	.section	.rodata
	.align 8
	.align 4
.L475:
	.quad	.L485
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L473
	.quad	.L476
	.quad	.L473
	.quad	.L473
	.quad	.L477
	.quad	.L473
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.text
.L476:
	.loc 1 1845 0
	cmpb	$0, -34(%rbp)	#, skip
	jne	.L480	#,
	.loc 1 1846 0
	movq	-16(%rbp), %rax	# result, tmp91
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_free	#
	.loc 1 1847 0
	movl	$0, %eax	#, D.14070
	jmp	.L484	#
.L480:
	.loc 1 1849 0
	jmp	.L479	#
.L478:
	.loc 1 1860 0
	movb	$0, -34(%rbp)	#, skip
	.loc 1 1861 0
	cmpb	$0, -33(%rbp)	#, ignore
	jne	.L482	#,
	.loc 1 1862 0
	movq	-24(%rbp), %rax	# out, out.299
	leaq	1(%rax), %rdx	#, tmp92
	movq	%rdx, -24(%rbp)	# tmp92, out
	movq	-56(%rbp), %rdx	# s, tmp93
	movzbl	(%rdx), %edx	# *s_1, D.14073
	movb	%dl, (%rax)	# D.14073, *out.299_30
	.loc 1 1864 0
	jmp	.L479	#
.L482:
	jmp	.L479	#
.L477:
	.loc 1 1866 0
	movb	$1, -33(%rbp)	#, ignore
	.loc 1 1867 0
	jmp	.L479	#
.L473:
	.loc 1 1869 0
	movq	-16(%rbp), %rax	# result, tmp94
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_free	#
	.loc 1 1870 0
	movl	$0, %eax	#, D.14070
	jmp	.L484	#
.L485:
	.loc 1 1843 0
	nop
.L479:
	.loc 1 1872 0
	addq	$1, -56(%rbp)	#, s
.L472:
	.loc 1 1840 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp95
	movzbl	(%rax), %eax	# *s_1, D.14073
	testb	%al, %al	# D.14073
	jne	.L483	#,
	.loc 1 1874 0
	movq	-24(%rbp), %rax	# out, out.300
	leaq	1(%rax), %rdx	#, tmp96
	movq	%rdx, -24(%rbp)	# tmp96, out
	movb	$0, (%rax)	#, *out.300_36
	.loc 1 1875 0
	movq	-16(%rbp), %rax	# result, tmp97
	movq	(%rax), %rax	# result_13->sv_any, D.14072
	movq	-24(%rbp), %rcx	# out, out.301
	movq	-8(%rbp), %rdx	# result_c, result_c.302
	subq	%rdx, %rcx	# result_c.302, D.14075
	movq	%rcx, %rdx	# D.14075, D.14075
	movq	%rdx, 8(%rax)	# D.14076, MEM[(struct XPV *)_38].xpv_cur
	.loc 1 1876 0
	movq	-16(%rbp), %rax	# result, D.14070
.L484:
	.loc 1 1877 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	S_is_an_int, .-S_is_an_int
	.type	S_div128, @function
S_div128:
.LFB13:
	.loc 1 1882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pnum, pnum
	movq	%rsi, -64(%rbp)	# done, done
	.loc 1 1884 0
	movq	-56(%rbp), %rax	# pnum, tmp82
	movl	12(%rax), %eax	# pnum_4(D)->sv_flags, D.14077
	andl	$262144, %eax	#, D.14077
	testl	%eax, %eax	# D.14077
	je	.L487	#,
	.loc 1 1884 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pnum, tmp83
	movq	(%rax), %rax	# pnum_4(D)->sv_any, D.14078
	movq	8(%rax), %rax	# MEM[(struct XPV *)_7].xpv_cur, len.304
	movq	%rax, -24(%rbp)	# len.304, len
	movq	-56(%rbp), %rax	# pnum, tmp84
	movq	(%rax), %rax	# pnum_4(D)->sv_any, D.14078
	movq	(%rax), %rax	# MEM[(struct XPV *)_9].xpv_pv, iftmp.303
	jmp	.L488	#
.L487:
	.loc 1 1884 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp85
	movq	-56(%rbp), %rax	# pnum, tmp86
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_2pv_flags	#
.L488:
	.loc 1 1884 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.303, s
	.loc 1 1885 0 is_stmt 1 discriminator 3
	movl	$0, -36(%rbp)	#, m
	.loc 1 1886 0 discriminator 3
	movl	$0, -32(%rbp)	#, r
	.loc 1 1887 0 discriminator 3
	movq	-8(%rbp), %rax	# s, tmp87
	movq	%rax, -16(%rbp)	# tmp87, t
	.loc 1 1889 0 discriminator 3
	movq	-64(%rbp), %rax	# done, tmp88
	movb	$1, (%rax)	#, *done_16(D)
	.loc 1 1890 0 discriminator 3
	jmp	.L489	#
.L491:
.LBB27:
	.loc 1 1893 0
	movl	-36(%rbp), %edx	# m, tmp89
	movl	%edx, %eax	# tmp89, tmp90
	sall	$2, %eax	#, tmp90
	addl	%edx, %eax	# tmp89, tmp90
	addl	%eax, %eax	# tmp91
	movl	%eax, %edx	# tmp90, D.14080
	movq	-16(%rbp), %rax	# t, tmp92
	movzbl	(%rax), %eax	# *t_2, D.14079
	movsbl	%al, %eax	# D.14079, D.14080
	subl	$48, %eax	#, D.14080
	addl	%edx, %eax	# D.14080, tmp93
	movl	%eax, -28(%rbp)	# tmp93, i
	.loc 1 1894 0
	movl	-28(%rbp), %eax	# i, tmp97
	andl	$127, %eax	#, tmp96
	movl	%eax, -36(%rbp)	# tmp96, m
	.loc 1 1895 0
	movl	-28(%rbp), %eax	# i, tmp101
	sarl	$7, %eax	#, tmp100
	movl	%eax, -32(%rbp)	# tmp100, r
	.loc 1 1896 0
	cmpl	$0, -32(%rbp)	#, r
	je	.L490	#,
	.loc 1 1897 0
	movq	-64(%rbp), %rax	# done, tmp102
	movb	$0, (%rax)	#, *done_16(D)
.L490:
	.loc 1 1899 0
	movq	-16(%rbp), %rax	# t, t.305
	leaq	1(%rax), %rdx	#, tmp103
	movq	%rdx, -16(%rbp)	# tmp103, t
	movl	-32(%rbp), %edx	# r, tmp104
	addl	$48, %edx	#, D.14081
	movb	%dl, (%rax)	# D.14079, *t.305_25
.L489:
.LBE27:
	.loc 1 1890 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp105
	movzbl	(%rax), %eax	# *t_2, D.14079
	testb	%al, %al	# D.14079
	jne	.L491	#,
	.loc 1 1901 0
	movq	-16(%rbp), %rax	# t, t.306
	leaq	1(%rax), %rdx	#, tmp106
	movq	%rdx, -16(%rbp)	# tmp106, t
	movb	$0, (%rax)	#, *t.306_30
	.loc 1 1902 0
	movq	-56(%rbp), %rax	# pnum, tmp107
	movq	(%rax), %rax	# pnum_4(D)->sv_any, D.14078
	movq	-16(%rbp), %rcx	# t, t.307
	movq	-8(%rbp), %rdx	# s, s.308
	subq	%rdx, %rcx	# s.308, D.14082
	movq	%rcx, %rdx	# D.14082, D.14082
	movq	%rdx, 8(%rax)	# D.14083, MEM[(struct XPV *)_32].xpv_cur
	.loc 1 1903 0
	movl	-36(%rbp), %eax	# m, D.14080
	.loc 1 1904 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	S_div128, .-S_div128
	.globl	Perl_pack_cat
	.type	Perl_pack_cat, @function
Perl_pack_cat:
.LFB14:
	.loc 1 1919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# cat, cat
	movq	%rsi, -80(%rbp)	# pat, pat
	movq	%rdx, %r10	# patend, patend
	movq	%rcx, %r11	# beglist, beglist
	movq	%r8, -88(%rbp)	# endlist, endlist
	movq	%r9, -96(%rbp)	# next_in_list, next_in_list
	.loc 1 1920 0
	leaq	-64(%rbp), %rsi	#, tmp61
	movl	$0, %eax	#, tmp62
	movl	$7, %edx	#, tmp63
	movq	%rsi, %rdi	# tmp61, tmp61
	movq	%rdx, %rcx	# tmp63, tmp63
	rep stosq
	.loc 1 1921 0
	movq	-80(%rbp), %rax	# pat, tmp64
	movq	%rax, -64(%rbp)	# tmp64, sym.patptr
	.loc 1 1922 0
	movq	%r10, -56(%rbp)	# patend, sym.patend
	.loc 1 1923 0
	movl	$1, -16(%rbp)	#, sym.flags
	.loc 1 1925 0
	movq	-88(%rbp), %rdx	# endlist, tmp65
	leaq	-64(%rbp), %rsi	#, tmp66
	movq	-72(%rbp), %rax	# cat, tmp67
	movq	%rdx, %rcx	# tmp65,
	movq	%r11, %rdx	# beglist,
	movq	%rax, %rdi	# tmp67,
	call	S_pack_rec	#
	.loc 1 1926 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_pack_cat, .-Perl_pack_cat
	.globl	Perl_packlist
	.type	Perl_packlist, @function
Perl_packlist:
.LFB15:
	.loc 1 1939 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# cat, cat
	movq	%rsi, -80(%rbp)	# pat, pat
	movq	%rdx, %r9	# patend, patend
	movq	%rcx, %r10	# beglist, beglist
	movq	%r8, -88(%rbp)	# endlist, endlist
	.loc 1 1940 0
	leaq	-64(%rbp), %rsi	#, tmp61
	movl	$0, %eax	#, tmp62
	movl	$7, %edx	#, tmp63
	movq	%rsi, %rdi	# tmp61, tmp61
	movq	%rdx, %rcx	# tmp63, tmp63
	rep stosq
	.loc 1 1941 0
	movq	-80(%rbp), %rax	# pat, tmp64
	movq	%rax, -64(%rbp)	# tmp64, sym.patptr
	.loc 1 1942 0
	movq	%r9, -56(%rbp)	# patend, sym.patend
	.loc 1 1943 0
	movl	$1, -16(%rbp)	#, sym.flags
	.loc 1 1945 0
	movq	-88(%rbp), %rdx	# endlist, tmp65
	leaq	-64(%rbp), %rsi	#, tmp66
	movq	-72(%rbp), %rax	# cat, tmp67
	movq	%rdx, %rcx	# tmp65,
	movq	%r10, %rdx	# beglist,
	movq	%rax, %rdi	# tmp67,
	call	S_pack_rec	#
	.loc 1 1946 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_packlist, .-Perl_packlist
	.section	.rodata
.LC35:
	.string	"@Xxu"
.LC36:
	.string	"aAZ"
	.align 8
.LC37:
	.string	"'/' must be followed by 'a*', 'A*' or 'Z*' in pack"
	.align 8
.LC38:
	.string	"Code missing after '/' in pack"
.LC39:
	.string	"Invalid type '%c' in pack"
.LC40:
	.string	"'%%' may not be used in pack"
.LC41:
	.string	"'X' outside of string in pack"
	.align 8
.LC42:
	.string	"Character in 'C' format wrapped in pack"
	.align 8
.LC43:
	.string	"Character in 'c' format wrapped in pack"
	.align 8
.LC44:
	.string	"Cannot compress negative numbers in pack"
	.align 8
.LC46:
	.string	"Can only compress unsigned integers in pack"
	.align 8
.LC48:
	.string	"Cannot compress integer in pack"
	.align 8
.LC49:
	.string	"Attempt to pack pointer to temporary value"
	.text
	.type	S_pack_rec, @function
S_pack_rec:
.LFB16:
	.loc 1 1952 0
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
	subq	$600, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -616(%rbp)	# cat, cat
	movq	%rsi, %r14	# symptr, symptr
	movq	%rdx, %r13	# beglist, beglist
	movq	%rcx, -624(%rbp)	# endlist, endlist
	.loc 1 1952 0
	movq	%fs:40, %rax	#, tmp1219
	movq	%rax, -56(%rbp)	# tmp1219, D.14101
	xorl	%eax, %eax	# tmp1219
	.loc 1 1955 0
	movl	$0, %ebx	#, len
	.loc 1 1992 0
	movq	-616(%rbp), %rax	# cat, tmp868
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_298].xpv_cur, D.14085
	movl	%eax, -568(%rbp)	# D.14085, strrelbeg
	.loc 1 1995 0
	movq	-624(%rbp), %rdx	# endlist, endlist.309
	movq	%r13, %rax	# beglist, beglist.310
	subq	%rax, %rdx	# beglist.310, D.14086
	movq	%rdx, %rax	# D.14086, D.14086
	sarq	$3, %rax	#, tmp869
	movl	%eax, %r12d	# D.14086, items
	.loc 1 1996 0
	movq	%r14, %rdi	# symptr,
	call	S_next_symbol	#
	movb	%al, -597(%rbp)	# tmp870, found
	.loc 1 1999 0
	movl	44(%r14), %eax	# symptr_308(D)->level, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L496	#,
	.loc 1 1999 0 is_stmt 0 discriminator 1
	cmpb	$0, -597(%rbp)	#, found
	je	.L496	#,
	movl	32(%r14), %eax	# symptr_308(D)->code, D.14087
	cmpl	$85, %eax	#, D.14087
	jne	.L496	#,
	.loc 1 2000 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp871
	movl	12(%rax), %eax	# cat_297(D)->sv_flags, D.14088
	orl	$536870912, %eax	#, D.14088
	movl	%eax, %edx	# D.14088, D.14088
	movq	-616(%rbp), %rax	# cat, tmp872
	movl	%edx, 12(%rax)	# D.14088, cat_297(D)->sv_flags
	.loc 1 2004 0
	jmp	.L497	#
.L496:
	jmp	.L497	#
.L878:
.LBB28:
	.loc 1 2005 0
	movq	$0, -464(%rbp)	#, lengthcode
	.loc 1 2008 0
	movl	32(%r14), %eax	# symptr_308(D)->code, tmp873
	movl	%eax, -564(%rbp)	# tmp873, datumtype
	.loc 1 2011 0
	movl	40(%r14), %eax	# symptr_308(D)->howlen, tmp874
	movl	%eax, -560(%rbp)	# tmp874, howlen
	movl	-560(%rbp), %eax	# howlen, howlen
	cmpl	$1, %eax	#, howlen
	jbe	.L499	#,
	cmpl	$2, %eax	#, howlen
	je	.L500	#,
	jmp	.L498	#
.L499:
	.loc 1 2014 0
	movl	36(%r14), %ebx	# symptr_308(D)->length, len
	.loc 1 2015 0
	jmp	.L498	#
.L500:
	.loc 1 2017 0
	movl	-564(%rbp), %eax	# datumtype, tmp876
	movzbl	%al, %eax	# tmp876, D.14087
	movl	%eax, %esi	# D.14087,
	movl	$.LC35, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.14089
	jne	.L501	#,
	.loc 1 2017 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, iftmp.311
	jmp	.L502	#
.L501:
	.loc 1 2017 0 discriminator 2
	movl	$0, %eax	#, iftmp.311
.L502:
	.loc 1 2017 0 discriminator 3
	movl	%eax, %ebx	# iftmp.311, len
	.loc 1 2018 0 is_stmt 1 discriminator 3
	nop
.L498:
	.loc 1 2022 0
	movq	(%r14), %rax	# *symptr_308(D), tmp877
	movq	%rax, -352(%rbp)	# tmp877, lookahead
	movq	8(%r14), %rax	# *symptr_308(D), tmp878
	movq	%rax, -344(%rbp)	# tmp878, lookahead
	movq	16(%r14), %rax	# *symptr_308(D), tmp879
	movq	%rax, -336(%rbp)	# tmp879, lookahead
	movq	24(%r14), %rax	# *symptr_308(D), tmp880
	movq	%rax, -328(%rbp)	# tmp880, lookahead
	movq	32(%r14), %rax	# *symptr_308(D), tmp881
	movq	%rax, -320(%rbp)	# tmp881, lookahead
	movq	40(%r14), %rax	# *symptr_308(D), tmp882
	movq	%rax, -312(%rbp)	# tmp882, lookahead
	movq	48(%r14), %rax	# *symptr_308(D), tmp883
	movq	%rax, -304(%rbp)	# tmp883, lookahead
	.loc 1 2023 0
	leaq	-352(%rbp), %rax	#, tmp884
	movq	%rax, %rdi	# tmp884,
	call	S_next_symbol	#
	movb	%al, -597(%rbp)	# tmp885, found
	.loc 1 2024 0
	movl	48(%r14), %eax	# symptr_308(D)->flags, D.14088
	andl	$4, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L503	#,
	.loc 1 2025 0
	cmpb	$0, -597(%rbp)	#, found
	je	.L504	#,
	.loc 1 2026 0
	movl	-320(%rbp), %eax	# lookahead.code, D.14087
	movl	%eax, %esi	# D.14087,
	movl	$.LC36, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.14089
	je	.L505	#,
	.loc 1 2027 0 discriminator 1
	movl	-312(%rbp), %eax	# lookahead.howlen, D.14090
	.loc 1 2026 0 discriminator 1
	cmpl	$2, %eax	#, D.14090
	je	.L506	#,
.L505:
	.loc 1 2028 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L506:
	.loc 1 2029 0
	testl	%r12d, %r12d	# items
	jle	.L507	#,
	.loc 1 2029 0 is_stmt 0 discriminator 1
	movq	0(%r13), %rax	# *beglist_81, iftmp.312
	jmp	.L508	#
.L507:
	.loc 1 2029 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.312
.L508:
	.loc 1 2029 0 discriminator 3
	movq	%rax, %rdi	# iftmp.312,
	call	Perl_sv_len	#
	movq	%rax, %rdx	#, D.14085
	.loc 1 2031 0 is_stmt 1 discriminator 3
	movl	-320(%rbp), %eax	# lookahead.code, D.14087
	cmpl	$90, %eax	#, D.14087
	jne	.L509	#,
	.loc 1 2031 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.313
	jmp	.L510	#
.L509:
	.loc 1 2031 0 discriminator 2
	movl	$0, %eax	#, iftmp.313
.L510:
	.loc 1 2031 0 discriminator 1
	addq	%rdx, %rax	# D.14085, D.14085
	.loc 1 2029 0 is_stmt 1 discriminator 1
	movq	%rax, %rdi	# D.14086,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.14091,
	call	Perl_sv_2mortal	#
	movq	%rax, -464(%rbp)	# tmp886, lengthcode
	jmp	.L503	#
.L504:
	.loc 1 2033 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L503:
	.loc 1 2037 0
	movl	-564(%rbp), %eax	# datumtype, tmp888
	subl	$37, %eax	#, tmp887
	cmpl	$339, %eax	#, tmp887
	ja	.L511	#,
	movl	%eax, %eax	# tmp887, tmp889
	movq	.L513(,%rax,8), %rax	#, tmp890
	jmp	*%rax	# tmp890
	.section	.rodata
	.align 8
	.align 4
.L513:
	.quad	.L512
	.quad	.L511
	.quad	.L511
	.quad	.L514
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L515
	.quad	.L516
	.quad	.L517
	.quad	.L883
	.quad	.L511
	.quad	.L511
	.quad	.L519
	.quad	.L511
	.quad	.L520
	.quad	.L884
	.quad	.L885
	.quad	.L511
	.quad	.L886
	.quad	.L511
	.quad	.L887
	.quad	.L511
	.quad	.L525
	.quad	.L888
	.quad	.L511
	.quad	.L889
	.quad	.L511
	.quad	.L890
	.quad	.L891
	.quad	.L511
	.quad	.L530
	.quad	.L511
	.quad	.L516
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L516
	.quad	.L517
	.quad	.L883
	.quad	.L892
	.quad	.L511
	.quad	.L893
	.quad	.L511
	.quad	.L520
	.quad	.L894
	.quad	.L895
	.quad	.L511
	.quad	.L896
	.quad	.L511
	.quad	.L897
	.quad	.L511
	.quad	.L898
	.quad	.L899
	.quad	.L511
	.quad	.L900
	.quad	.L511
	.quad	.L540
	.quad	.L901
	.quad	.L902
	.quad	.L558
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L884
	.quad	.L511
	.quad	.L511
	.quad	.L903
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L889
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L545
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L894
	.quad	.L511
	.quad	.L511
	.quad	.L904
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L900
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L511
	.quad	.L547
	.text
.L511:
	.loc 1 2039 0
	movl	-564(%rbp), %eax	# datumtype, tmp891
	movzbl	%al, %eax	# tmp891, D.14087
	movl	%eax, %esi	# D.14087,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L512:
	.loc 1 2041 0
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L515:
	.loc 1 2043 0
	movl	-568(%rbp), %edx	# strrelbeg, strrelbeg.314
	movq	-616(%rbp), %rax	# cat, tmp892
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_341].xpv_cur, D.14085
	subl	%eax, %edx	# D.14092, D.14092
	movl	%ebx, %eax	# len, len.315
	addl	%edx, %eax	# D.14092, D.14092
	movl	%eax, %ebx	# D.14092, len
	.loc 1 2044 0
	testl	%ebx, %ebx	# len
	jle	.L548	#,
	.loc 1 2045 0
	jmp	.L543	#
.L548:
	.loc 1 2046 0
	negl	%ebx	# len
	.loc 1 2047 0
	testl	%ebx, %ebx	# len
	jle	.L549	#,
	.loc 1 2048 0
	jmp	.L530	#
.L549:
	.loc 1 2049 0
	jmp	.L550	#
.L514:
.LBB29:
	.loc 1 2052 0
	movq	(%r14), %rax	# *symptr_308(D), tmp893
	movq	%rax, -288(%rbp)	# tmp893, savsym
	movq	8(%r14), %rax	# *symptr_308(D), tmp894
	movq	%rax, -280(%rbp)	# tmp894, savsym
	movq	16(%r14), %rax	# *symptr_308(D), tmp895
	movq	%rax, -272(%rbp)	# tmp895, savsym
	movq	24(%r14), %rax	# *symptr_308(D), tmp896
	movq	%rax, -264(%rbp)	# tmp896, savsym
	movq	32(%r14), %rax	# *symptr_308(D), tmp897
	movq	%rax, -256(%rbp)	# tmp897, savsym
	movq	40(%r14), %rax	# *symptr_308(D), tmp898
	movq	%rax, -248(%rbp)	# tmp898, savsym
	movq	48(%r14), %rax	# *symptr_308(D), tmp899
	movq	%rax, -240(%rbp)	# tmp899, savsym
	.loc 1 2053 0
	movl	48(%r14), %eax	# symptr_308(D)->flags, D.14088
	notl	%eax	# D.14088
	movl	%eax, %edx	# D.14088, D.14088
	movl	-564(%rbp), %eax	# datumtype, datumtype.316
	andl	%edx, %eax	# D.14088, D.14088
	movb	$0, %al	#, tmp900
	movl	%eax, -556(%rbp)	# tmp900, group_modifiers
	.loc 1 2054 0
	movl	48(%r14), %eax	# symptr_308(D)->flags, D.14088
	orl	-556(%rbp), %eax	# group_modifiers, D.14088
	movl	%eax, 48(%r14)	# D.14088, symptr_308(D)->flags
	.loc 1 2055 0
	movq	-264(%rbp), %rax	# savsym.grpend, D.14089
	movq	%rax, 8(%r14)	# D.14089, symptr_308(D)->patend
	.loc 1 2056 0
	movl	44(%r14), %eax	# symptr_308(D)->level, D.14087
	addl	$1, %eax	#, D.14087
	movl	%eax, 44(%r14)	# D.14087, symptr_308(D)->level
	.loc 1 2057 0
	jmp	.L551	#
.L553:
	.loc 1 2058 0
	movq	-272(%rbp), %rax	# savsym.grpbeg, D.14089
	movq	%rax, (%r14)	# D.14089, symptr_308(D)->patptr
	.loc 1 2059 0
	movq	-624(%rbp), %rdx	# endlist, tmp901
	movq	-616(%rbp), %rax	# cat, tmp902
	movq	%rdx, %rcx	# tmp901,
	movq	%r13, %rdx	# beglist,
	movq	%r14, %rsi	# symptr,
	movq	%rax, %rdi	# tmp902,
	call	S_pack_rec	#
	movq	%rax, %r13	#, beglist
	.loc 1 2060 0
	movl	-248(%rbp), %eax	# savsym.howlen, D.14090
	cmpl	$2, %eax	#, D.14090
	jne	.L551	#,
	.loc 1 2060 0 is_stmt 0 discriminator 1
	cmpq	-624(%rbp), %r13	# endlist, beglist
	jne	.L551	#,
	.loc 1 2061 0 is_stmt 1
	jmp	.L552	#
.L551:
	.loc 1 2057 0 discriminator 1
	movl	%ebx, %eax	# len, len.317
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.317
	jne	.L553	#,
.L552:
	.loc 1 2063 0
	movl	48(%r14), %eax	# symptr_308(D)->flags, D.14088
	movl	-556(%rbp), %edx	# group_modifiers, tmp903
	notl	%edx	# D.14088
	andl	%edx, %eax	# D.14088, D.14088
	movl	%eax, 48(%r14)	# D.14088, symptr_308(D)->flags
	.loc 1 2064 0
	movl	48(%r14), %eax	# symptr_308(D)->flags, D.14088
	movl	%eax, -304(%rbp)	# D.14088, lookahead.flags
	.loc 1 2065 0
	movq	-288(%rbp), %rax	# savsym, tmp904
	movq	%rax, (%r14)	# tmp904, *symptr_308(D)
	movq	-280(%rbp), %rax	# savsym, tmp905
	movq	%rax, 8(%r14)	# tmp905, *symptr_308(D)
	movq	-272(%rbp), %rax	# savsym, tmp906
	movq	%rax, 16(%r14)	# tmp906, *symptr_308(D)
	movq	-264(%rbp), %rax	# savsym, tmp907
	movq	%rax, 24(%r14)	# tmp907, *symptr_308(D)
	movq	-256(%rbp), %rax	# savsym, tmp908
	movq	%rax, 32(%r14)	# tmp908, *symptr_308(D)
	movq	-248(%rbp), %rax	# savsym, tmp909
	movq	%rax, 40(%r14)	# tmp909, *symptr_308(D)
	movq	-240(%rbp), %rax	# savsym, tmp910
	movq	%rax, 48(%r14)	# tmp910, *symptr_308(D)
	.loc 1 2066 0
	nop
	jmp	.L550	#
.L545:
.LBE29:
	.loc 1 2069 0
	testl	%ebx, %ebx	# len
	jne	.L554	#,
	.loc 1 2070 0
	movl	$1, %ebx	#, len
.L554:
	.loc 1 2071 0
	movq	-616(%rbp), %rax	# cat, tmp911
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_369].xpv_cur, D.14085
	movslq	%ebx, %rcx	# len, D.14085
	movl	$0, %edx	#, tmp912
	divq	%rcx	# D.14085
	movq	%rdx, %rax	# tmp912, D.14085
	movl	%eax, %ebx	# D.14085, len
.L530:
	.loc 1 2075 0
	movq	-616(%rbp), %rax	# cat, tmp914
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_374].xpv_cur, D.14085
	cmpl	%ebx, %eax	# len, D.14087
	jge	.L555	#,
	.loc 1 2076 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L555:
	.loc 1 2077 0
	movq	-616(%rbp), %rax	# cat, tmp915
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	-616(%rbp), %rdx	# cat, tmp916
	movq	(%rdx), %rdx	# cat_297(D)->sv_any, D.14084
	movq	8(%rdx), %rcx	# MEM[(struct XPV *)_378].xpv_cur, D.14085
	movslq	%ebx, %rdx	# len, D.14085
	subq	%rdx, %rcx	# D.14085, D.14085
	movq	%rcx, %rdx	# D.14085, D.14085
	movq	%rdx, 8(%rax)	# D.14085, MEM[(struct XPV *)_377].xpv_cur
	.loc 1 2078 0
	movq	-616(%rbp), %rax	# cat, tmp917
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_382].xpv_pv, D.14089
	movq	-616(%rbp), %rax	# cat, tmp918
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_384].xpv_cur, D.14085
	addq	%rdx, %rax	# D.14089, D.14089
	movb	$0, (%rax)	#, *_386
	.loc 1 2079 0
	jmp	.L550	#
.L547:
	.loc 1 2081 0
	testl	%ebx, %ebx	# len
	jne	.L556	#,
	.loc 1 2082 0
	movl	$1, %ebx	#, len
.L556:
	.loc 1 2083 0
	movq	-616(%rbp), %rax	# cat, tmp919
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_388].xpv_cur, D.14085
	movslq	%ebx, %rcx	# len, D.14085
	movl	$0, %edx	#, tmp920
	divq	%rcx	# D.14085
	movq	%rdx, %rax	# tmp920, D.14085
	movl	%eax, -584(%rbp)	# aint.318, aint
	.loc 1 2084 0
	movl	-584(%rbp), %eax	# aint, aint.319
	testl	%eax, %eax	# aint.319
	je	.L557	#,
	.loc 1 2085 0
	movl	-584(%rbp), %eax	# aint, aint.320
	subl	%eax, %ebx	# aint.320, len
	jmp	.L543	#
.L557:
	.loc 1 2087 0
	movl	$0, %ebx	#, len
	.loc 1 2092 0
	jmp	.L558	#
.L543:
	jmp	.L558	#
.L559:
	.loc 1 2093 0
	movq	-616(%rbp), %rax	# cat, tmp922
	movl	$2, %ecx	#,
	movl	$10, %edx	#,
	movl	$null10.10789, %esi	#,
	movq	%rax, %rdi	# tmp922,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2094 0
	subl	$10, %ebx	#, len
.L558:
	.loc 1 2092 0 discriminator 1
	cmpl	$9, %ebx	#, len
	jg	.L559	#,
	.loc 1 2096 0
	movslq	%ebx, %rdx	# len, D.14085
	movq	-616(%rbp), %rax	# cat, tmp923
	movl	$2, %ecx	#,
	movl	$null10.10789, %esi	#,
	movq	%rax, %rdi	# tmp923,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2097 0
	jmp	.L550	#
.L516:
	.loc 1 2101 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L560	#,
	.loc 1 2101 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.323
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.323
	jle	.L561	#,
	movq	%r13, %rax	# beglist, beglist.324
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.324_401, iftmp.322
	jmp	.L563	#
.L561:
	.loc 1 2101 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.322
	jmp	.L563	#
.L560:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.321
.L563:
	.loc 1 2101 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.321, fromstr
	.loc 1 2102 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp924
	movl	12(%rax), %eax	# fromstr_407->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L564	#,
	.loc 1 2102 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp925
	movq	(%rax), %rax	# fromstr_407->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_410].xpv_cur, fromlen.326
	movq	%rax, -544(%rbp)	# fromlen.326, fromlen
	movq	-416(%rbp), %rax	# fromstr, tmp926
	movq	(%rax), %rax	# fromstr_407->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_412].xpv_pv, iftmp.325
	jmp	.L565	#
.L564:
	.loc 1 2102 0 discriminator 2
	leaq	-544(%rbp), %rcx	#, tmp927
	movq	-416(%rbp), %rax	# fromstr, tmp928
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp927,
	movq	%rax, %rdi	# tmp928,
	call	Perl_sv_2pv_flags	#
.L565:
	.loc 1 2102 0 discriminator 3
	movq	%rax, -504(%rbp)	# iftmp.325, aptr
	.loc 1 2103 0 is_stmt 1 discriminator 3
	cmpl	$2, -560(%rbp)	#, howlen
	jne	.L566	#,
	.loc 1 2104 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.327
	movl	%eax, %ebx	# fromlen.327, len
	.loc 1 2105 0
	cmpl	$90, -564(%rbp)	#, datumtype
	jne	.L566	#,
	.loc 1 2106 0
	addl	$1, %ebx	#, len
.L566:
	.loc 1 2108 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.328
	cmpl	%ebx, %eax	# len, D.14087
	jl	.L567	#,
	.loc 1 2109 0
	movslq	%ebx, %rdx	# len, D.14085
	movq	-504(%rbp), %rsi	# aptr, aptr.329
	movq	-616(%rbp), %rax	# cat, tmp929
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp929,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2110 0
	cmpl	$90, -564(%rbp)	#, datumtype
	jne	.L569	#,
	.loc 1 2110 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# len
	jle	.L569	#,
	.loc 1 2111 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp930
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_422].xpv_pv, D.14089
	movq	-616(%rbp), %rax	# cat, tmp931
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_424].xpv_cur, D.14085
	subq	$1, %rax	#, D.14093
	addq	%rdx, %rax	# D.14089, D.14089
	movb	$0, (%rax)	#, *_427
	.loc 1 2131 0
	jmp	.L550	#
.L567:
	.loc 1 2114 0
	movq	-544(%rbp), %rdx	# fromlen, fromlen.330
	movq	-504(%rbp), %rsi	# aptr, aptr.331
	movq	-616(%rbp), %rax	# cat, tmp932
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp932,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2115 0
	movl	%ebx, %edx	# len, len.332
	movq	-544(%rbp), %rax	# fromlen, fromlen.333
	subl	%eax, %edx	# D.14092, D.14092
	movl	%edx, %eax	# D.14092, D.14092
	movl	%eax, %ebx	# D.14092, len
	.loc 1 2116 0
	cmpl	$65, -564(%rbp)	#, datumtype
	jne	.L570	#,
	.loc 1 2117 0
	jmp	.L571	#
.L572:
	.loc 1 2118 0
	movq	space10.10790(%rip), %rsi	# space10, space10.334
	movq	-616(%rbp), %rax	# cat, tmp933
	movl	$2, %ecx	#,
	movl	$10, %edx	#,
	movq	%rax, %rdi	# tmp933,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2119 0
	subl	$10, %ebx	#, len
.L571:
	.loc 1 2117 0 discriminator 1
	cmpl	$9, %ebx	#, len
	jg	.L572	#,
	.loc 1 2121 0
	movslq	%ebx, %rdx	# len, D.14085
	movq	space10.10790(%rip), %rsi	# space10, space10.335
	movq	-616(%rbp), %rax	# cat, tmp934
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp934,
	call	Perl_sv_catpvn_flags	#
	jmp	.L569	#
.L570:
	.loc 1 2124 0
	jmp	.L573	#
.L574:
	.loc 1 2125 0
	movq	-616(%rbp), %rax	# cat, tmp935
	movl	$2, %ecx	#,
	movl	$10, %edx	#,
	movl	$null10.10789, %esi	#,
	movq	%rax, %rdi	# tmp935,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2126 0
	subl	$10, %ebx	#, len
.L573:
	.loc 1 2124 0 discriminator 1
	cmpl	$9, %ebx	#, len
	jg	.L574	#,
	.loc 1 2128 0
	movslq	%ebx, %rdx	# len, D.14085
	movq	-616(%rbp), %rax	# cat, tmp936
	movl	$2, %ecx	#,
	movl	$null10.10789, %esi	#,
	movq	%rax, %rdi	# tmp936,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2131 0
	jmp	.L550	#
.L569:
	jmp	.L550	#
.L517:
.LBB30:
	.loc 1 2138 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L575	#,
	.loc 1 2138 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.338
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.338
	jle	.L576	#,
	movq	%r13, %rax	# beglist, beglist.339
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.339_443, iftmp.337
	jmp	.L578	#
.L576:
	.loc 1 2138 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.337
	jmp	.L578	#
.L575:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.336
.L578:
	.loc 1 2138 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.336, fromstr
	.loc 1 2139 0 is_stmt 1 discriminator 3
	movl	%r12d, -552(%rbp)	# items, saveitems
	.loc 1 2140 0 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp937
	movl	12(%rax), %eax	# fromstr_449->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L579	#,
	.loc 1 2140 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp938
	movq	(%rax), %rax	# fromstr_449->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_453].xpv_cur, fromlen.341
	movq	%rax, -544(%rbp)	# fromlen.341, fromlen
	movq	-416(%rbp), %rax	# fromstr, tmp939
	movq	(%rax), %rax	# fromstr_449->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_455].xpv_pv, iftmp.340
	jmp	.L580	#
.L579:
	.loc 1 2140 0 discriminator 2
	leaq	-544(%rbp), %rcx	#, tmp940
	movq	-416(%rbp), %rax	# fromstr, tmp941
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp940,
	movq	%rax, %rdi	# tmp941,
	call	Perl_sv_2pv_flags	#
.L580:
	.loc 1 2140 0 discriminator 3
	movq	%rax, %r15	# iftmp.340, str
	.loc 1 2141 0 is_stmt 1 discriminator 3
	cmpl	$2, -560(%rbp)	#, howlen
	jne	.L581	#,
	.loc 1 2142 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.342
	movl	%eax, %ebx	# fromlen.342, len
.L581:
	.loc 1 2143 0
	movq	-616(%rbp), %rax	# cat, tmp942
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_461].xpv_cur, D.14085
	movl	%eax, -584(%rbp)	# aint.343, aint
	.loc 1 2144 0
	movq	-616(%rbp), %rax	# cat, tmp943
	movq	(%rax), %rdx	# cat_297(D)->sv_any, D.14084
	movq	-616(%rbp), %rax	# cat, tmp944
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_465].xpv_cur, D.14085
	leal	7(%rbx), %eax	#, D.14087
	leal	7(%rax), %esi	#, tmp946
	testl	%eax, %eax	# tmp945
	cmovs	%esi, %eax	# tmp946,, tmp945
	sarl	$3, %eax	#, tmp947
	cltq
	addq	%rcx, %rax	# D.14085, D.14085
	movq	%rax, 8(%rdx)	# D.14085, MEM[(struct XPV *)_464].xpv_cur
	.loc 1 2145 0
	movq	-616(%rbp), %rax	# cat, tmp948
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_471].xpv_len, D.14085
	movq	-616(%rbp), %rax	# cat, tmp949
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_473].xpv_cur, D.14085
	addq	$1, %rax	#, D.14085
	cmpq	%rax, %rdx	# D.14085, D.14085
	jae	.L583	#,
	.loc 1 2145 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# cat, tmp950
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_476].xpv_cur, D.14085
	leaq	1(%rax), %rdx	#, D.14085
	movq	-616(%rbp), %rax	# cat, tmp951
	movq	%rdx, %rsi	# D.14085,
	movq	%rax, %rdi	# tmp951,
	call	Perl_sv_grow	#
.L583:
	.loc 1 2146 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp953
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_482].xpv_pv, D.14089
	movl	-584(%rbp), %eax	# aint, aint.345
	cltq
	addq	%rdx, %rax	# D.14089, aptr.346
	movq	%rax, -504(%rbp)	# aptr.346, aptr
	.loc 1 2147 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.347
	cmpl	%ebx, %eax	# len, D.14087
	jge	.L584	#,
	.loc 1 2148 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.348
	movl	%eax, %ebx	# fromlen.348, len
.L584:
	.loc 1 2149 0
	movl	%ebx, -584(%rbp)	# len, aint
	.loc 1 2150 0
	movl	$0, %r12d	#, items
	.loc 1 2151 0
	cmpl	$66, -564(%rbp)	#, datumtype
	jne	.L585	#,
	.loc 1 2152 0
	movl	$0, %ebx	#, len
	jmp	.L586	#
.L588:
	.loc 1 2153 0
	movq	%r15, %rax	# str, str.349
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.349_496, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	orl	%eax, %r12d	# D.14087, items
	.loc 1 2154 0
	movl	%ebx, %eax	# len, D.14087
	andl	$7, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L587	#,
	.loc 1 2155 0
	addl	%r12d, %r12d	# items
	jmp	.L586	#
.L587:
	.loc 1 2157 0
	movq	-504(%rbp), %rax	# aptr, aptr.350
	leaq	1(%rax), %rdx	#, aptr.352
	movq	%rdx, -504(%rbp)	# aptr.352, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.351_505
	.loc 1 2158 0
	movl	$0, %r12d	#, items
.L586:
	.loc 1 2152 0 discriminator 1
	movl	%ebx, %eax	# len, len.353
	leal	1(%rax), %ebx	#, len
	movl	-584(%rbp), %edx	# aint, aint.354
	cmpl	%edx, %eax	# aint.354, len.353
	jl	.L588	#,
	jmp	.L589	#
.L585:
	.loc 1 2163 0
	movl	$0, %ebx	#, len
	jmp	.L590	#
.L593:
	.loc 1 2164 0
	movq	%r15, %rax	# str, str.355
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.355_513, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L591	#,
	.loc 1 2165 0
	orb	$-128, %r12b	#, items
.L591:
	.loc 1 2166 0
	movl	%ebx, %eax	# len, D.14087
	andl	$7, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L592	#,
	.loc 1 2167 0
	sarl	%r12d	# items
	jmp	.L590	#
.L592:
	.loc 1 2169 0
	movq	-504(%rbp), %rax	# aptr, aptr.356
	leaq	1(%rax), %rdx	#, aptr.358
	movq	%rdx, -504(%rbp)	# aptr.358, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.357_522
	.loc 1 2170 0
	movl	$0, %r12d	#, items
.L590:
	.loc 1 2163 0 discriminator 1
	movl	%ebx, %eax	# len, len.359
	leal	1(%rax), %ebx	#, len
	movl	-584(%rbp), %edx	# aint, aint.360
	cmpl	%edx, %eax	# aint.360, len.359
	jl	.L593	#,
.L589:
	.loc 1 2174 0
	movl	-584(%rbp), %eax	# aint, aint.361
	andl	$7, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L594	#,
	.loc 1 2175 0
	cmpl	$66, -564(%rbp)	#, datumtype
	jne	.L595	#,
	.loc 1 2176 0
	movl	-584(%rbp), %eax	# aint, aint.362
	notl	%eax	# D.14087
	andl	$7, %eax	#, D.14087
	movl	%eax, %ecx	# D.14087, tmp1231
	sall	%cl, %r12d	# tmp1231, items
	jmp	.L596	#
.L595:
	.loc 1 2178 0
	movl	-584(%rbp), %eax	# aint, aint.363
	notl	%eax	# D.14087
	andl	$7, %eax	#, D.14087
	movl	%eax, %ecx	# D.14087, tmp1232
	sarl	%cl, %r12d	# tmp1232, items
.L596:
	.loc 1 2179 0
	movq	-504(%rbp), %rax	# aptr, aptr.364
	leaq	1(%rax), %rdx	#, aptr.366
	movq	%rdx, -504(%rbp)	# aptr.366, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.365_537
.L594:
	.loc 1 2181 0
	movq	-616(%rbp), %rax	# cat, tmp954
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_540].xpv_pv, D.14089
	movq	-616(%rbp), %rax	# cat, tmp955
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_542].xpv_cur, D.14085
	leaq	(%rdx,%rax), %r15	#, str
	.loc 1 2182 0
	jmp	.L597	#
.L598:
	.loc 1 2183 0
	movq	-504(%rbp), %rax	# aptr, aptr.367
	leaq	1(%rax), %rdx	#, aptr.369
	movq	%rdx, -504(%rbp)	# aptr.369, aptr
	movb	$0, (%rax)	#, *aptr.368_547
.L597:
	.loc 1 2182 0 discriminator 1
	movq	-504(%rbp), %rax	# aptr, aptr.370
	cmpq	%r15, %rax	# str, aptr.370
	jbe	.L598	#,
	.loc 1 2185 0
	movl	-552(%rbp), %r12d	# saveitems, items
.LBE30:
	.loc 1 2187 0
	jmp	.L550	#
.L520:
.LBB31:
	.loc 1 2194 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L599	#,
	.loc 1 2194 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.373
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.373
	jle	.L600	#,
	movq	%r13, %rax	# beglist, beglist.374
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.374_552, iftmp.372
	jmp	.L602	#
.L600:
	.loc 1 2194 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.372
	jmp	.L602	#
.L599:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.371
.L602:
	.loc 1 2194 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.371, fromstr
	.loc 1 2195 0 is_stmt 1 discriminator 3
	movl	%r12d, -548(%rbp)	# items, saveitems
	.loc 1 2196 0 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp956
	movl	12(%rax), %eax	# fromstr_558->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L603	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp957
	movq	(%rax), %rax	# fromstr_558->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_562].xpv_cur, fromlen.376
	movq	%rax, -544(%rbp)	# fromlen.376, fromlen
	movq	-416(%rbp), %rax	# fromstr, tmp958
	movq	(%rax), %rax	# fromstr_558->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_564].xpv_pv, iftmp.375
	jmp	.L604	#
.L603:
	.loc 1 2196 0 discriminator 2
	leaq	-544(%rbp), %rcx	#, tmp959
	movq	-416(%rbp), %rax	# fromstr, tmp960
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp959,
	movq	%rax, %rdi	# tmp960,
	call	Perl_sv_2pv_flags	#
.L604:
	.loc 1 2196 0 discriminator 3
	movq	%rax, %r15	# iftmp.375, str
	.loc 1 2197 0 is_stmt 1 discriminator 3
	cmpl	$2, -560(%rbp)	#, howlen
	jne	.L605	#,
	.loc 1 2198 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.377
	movl	%eax, %ebx	# fromlen.377, len
.L605:
	.loc 1 2199 0
	movq	-616(%rbp), %rax	# cat, tmp961
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_570].xpv_cur, D.14085
	movl	%eax, -584(%rbp)	# aint.378, aint
	.loc 1 2200 0
	movq	-616(%rbp), %rax	# cat, tmp962
	movq	(%rax), %rdx	# cat_297(D)->sv_any, D.14084
	movq	-616(%rbp), %rax	# cat, tmp963
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_574].xpv_cur, D.14085
	leal	1(%rbx), %eax	#, D.14087
	movl	%eax, %esi	# D.14087, tmp964
	shrl	$31, %esi	#, tmp964
	addl	%esi, %eax	# tmp964, tmp965
	sarl	%eax	# tmp966
	cltq
	addq	%rcx, %rax	# D.14085, D.14085
	movq	%rax, 8(%rdx)	# D.14085, MEM[(struct XPV *)_573].xpv_cur
	.loc 1 2201 0
	movq	-616(%rbp), %rax	# cat, tmp967
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_580].xpv_len, D.14085
	movq	-616(%rbp), %rax	# cat, tmp968
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_582].xpv_cur, D.14085
	addq	$1, %rax	#, D.14085
	cmpq	%rax, %rdx	# D.14085, D.14085
	jae	.L607	#,
	.loc 1 2201 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# cat, tmp969
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_585].xpv_cur, D.14085
	leaq	1(%rax), %rdx	#, D.14085
	movq	-616(%rbp), %rax	# cat, tmp970
	movq	%rdx, %rsi	# D.14085,
	movq	%rax, %rdi	# tmp970,
	call	Perl_sv_grow	#
.L607:
	.loc 1 2202 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp972
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_591].xpv_pv, D.14089
	movl	-584(%rbp), %eax	# aint, aint.380
	cltq
	addq	%rdx, %rax	# D.14089, aptr.381
	movq	%rax, -504(%rbp)	# aptr.381, aptr
	.loc 1 2203 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.382
	cmpl	%ebx, %eax	# len, D.14087
	jge	.L608	#,
	.loc 1 2204 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.383
	movl	%eax, %ebx	# fromlen.383, len
.L608:
	.loc 1 2205 0
	movl	%ebx, -584(%rbp)	# len, aint
	.loc 1 2206 0
	movl	$0, %r12d	#, items
	.loc 1 2207 0
	cmpl	$72, -564(%rbp)	#, datumtype
	jne	.L609	#,
	.loc 1 2208 0
	movl	$0, %ebx	#, len
	jmp	.L610	#
.L616:
	.loc 1 2209 0
	movzbl	(%r15), %eax	# *str_197, D.14094
	cmpb	$64, %al	#, D.14094
	jle	.L611	#,
	.loc 1 2209 0 is_stmt 0 discriminator 1
	movzbl	(%r15), %eax	# *str_197, D.14094
	cmpb	$90, %al	#, D.14094
	jle	.L612	#,
.L611:
	.loc 1 2209 0 discriminator 2
	movzbl	(%r15), %eax	# *str_197, D.14094
	cmpb	$96, %al	#, D.14094
	jle	.L613	#,
	.loc 1 2209 0 discriminator 1
	movzbl	(%r15), %eax	# *str_197, D.14094
	cmpb	$122, %al	#, D.14094
	jg	.L613	#,
.L612:
	.loc 1 2210 0 is_stmt 1
	movq	%r15, %rax	# str, str.384
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.384_615, D.14094
	movsbl	%al, %eax	# D.14094, D.14092
	addl	$9, %eax	#, D.14092
	andl	$15, %eax	#, D.14087
	orl	%eax, %r12d	# D.14087, items
	jmp	.L614	#
.L613:
	.loc 1 2212 0
	movq	%r15, %rax	# str, str.385
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.385_609, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$15, %eax	#, D.14087
	orl	%eax, %r12d	# D.14087, items
.L614:
	.loc 1 2213 0
	movl	%ebx, %eax	# len, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L615	#,
	.loc 1 2214 0
	sall	$4, %r12d	#, items
	jmp	.L610	#
.L615:
	.loc 1 2216 0
	movq	-504(%rbp), %rax	# aptr, aptr.386
	leaq	1(%rax), %rdx	#, aptr.388
	movq	%rdx, -504(%rbp)	# aptr.388, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.387_626
	.loc 1 2217 0
	movl	$0, %r12d	#, items
.L610:
	.loc 1 2208 0 discriminator 1
	movl	%ebx, %eax	# len, len.389
	leal	1(%rax), %ebx	#, len
	movl	-584(%rbp), %edx	# aint, aint.390
	cmpl	%edx, %eax	# aint.390, len.389
	jl	.L616	#,
	jmp	.L617	#
.L609:
	.loc 1 2222 0
	movl	$0, %ebx	#, len
	jmp	.L618	#
.L624:
	.loc 1 2223 0
	movzbl	(%r15), %eax	# *str_199, D.14094
	cmpb	$64, %al	#, D.14094
	jle	.L619	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movzbl	(%r15), %eax	# *str_199, D.14094
	cmpb	$90, %al	#, D.14094
	jle	.L620	#,
.L619:
	.loc 1 2223 0 discriminator 2
	movzbl	(%r15), %eax	# *str_199, D.14094
	cmpb	$96, %al	#, D.14094
	jle	.L621	#,
	.loc 1 2223 0 discriminator 1
	movzbl	(%r15), %eax	# *str_199, D.14094
	cmpb	$122, %al	#, D.14094
	jg	.L621	#,
.L620:
	.loc 1 2224 0 is_stmt 1
	movq	%r15, %rax	# str, str.391
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.391_645, D.14094
	movsbl	%al, %eax	# D.14094, D.14092
	addl	$9, %eax	#, D.14092
	sall	$4, %eax	#, D.14087
	movzbl	%al, %eax	# D.14087, D.14087
	orl	%eax, %r12d	# D.14087, items
	jmp	.L622	#
.L621:
	.loc 1 2226 0
	movq	%r15, %rax	# str, str.392
	leaq	1(%rax), %r15	#, str
	movzbl	(%rax), %eax	# *str.392_638, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	sall	$4, %eax	#, D.14087
	movzbl	%al, %eax	# D.14087, D.14087
	orl	%eax, %r12d	# D.14087, items
.L622:
	.loc 1 2227 0
	movl	%ebx, %eax	# len, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L623	#,
	.loc 1 2228 0
	sarl	$4, %r12d	#, items
	jmp	.L618	#
.L623:
	.loc 1 2230 0
	movq	-504(%rbp), %rax	# aptr, aptr.393
	leaq	1(%rax), %rdx	#, aptr.395
	movq	%rdx, -504(%rbp)	# aptr.395, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.394_657
	.loc 1 2231 0
	movl	$0, %r12d	#, items
.L618:
	.loc 1 2222 0 discriminator 1
	movl	%ebx, %eax	# len, len.396
	leal	1(%rax), %ebx	#, len
	movl	-584(%rbp), %edx	# aint, aint.397
	cmpl	%edx, %eax	# aint.397, len.396
	jl	.L624	#,
.L617:
	.loc 1 2235 0
	movl	-584(%rbp), %eax	# aint, aint.398
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L625	#,
	.loc 1 2236 0
	movq	-504(%rbp), %rax	# aptr, aptr.399
	leaq	1(%rax), %rdx	#, aptr.401
	movq	%rdx, -504(%rbp)	# aptr.401, aptr
	movl	%r12d, %edx	# items, D.14094
	movb	%dl, (%rax)	# D.14094, *aptr.400_664
.L625:
	.loc 1 2237 0
	movq	-616(%rbp), %rax	# cat, tmp973
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_667].xpv_pv, D.14089
	movq	-616(%rbp), %rax	# cat, tmp974
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_669].xpv_cur, D.14085
	leaq	(%rdx,%rax), %r15	#, str
	.loc 1 2238 0
	jmp	.L626	#
.L627:
	.loc 1 2239 0
	movq	-504(%rbp), %rax	# aptr, aptr.402
	leaq	1(%rax), %rdx	#, aptr.404
	movq	%rdx, -504(%rbp)	# aptr.404, aptr
	movb	$0, (%rax)	#, *aptr.403_674
.L626:
	.loc 1 2238 0 discriminator 1
	movq	-504(%rbp), %rax	# aptr, aptr.405
	cmpq	%r15, %rax	# str, aptr.405
	jbe	.L627	#,
	.loc 1 2241 0
	movl	-548(%rbp), %r12d	# saveitems, items
.LBE31:
	.loc 1 2243 0
	jmp	.L550	#
.L647:
	.loc 1 2247 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L629	#,
	.loc 1 2247 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.408
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.408
	jle	.L630	#,
	movq	%r13, %rax	# beglist, beglist.409
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.409_681, iftmp.407
	jmp	.L632	#
.L630:
	.loc 1 2247 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.407
	jmp	.L632	#
.L629:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.406
.L632:
	.loc 1 2247 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.406, fromstr
	.loc 1 2248 0 is_stmt 1 discriminator 3
	movl	-564(%rbp), %eax	# datumtype, tmp975
	movzbl	%al, %eax	# tmp975, D.14087
	cmpl	$67, %eax	#, D.14087
	je	.L633	#,
	cmpl	$99, %eax	#, D.14087
	je	.L634	#,
	.loc 1 2248 0 is_stmt 0
	jmp	.L628	#
.L633:
	.loc 1 2250 0 is_stmt 1
	movq	-416(%rbp), %rax	# fromstr, tmp976
	movl	12(%rax), %eax	# fromstr_687->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L635	#,
	.loc 1 2250 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp977
	movq	(%rax), %rax	# fromstr_687->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_691].xiv_iv, D.14086
	jmp	.L636	#
.L635:
	.loc 1 2250 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp978
	movq	%rax, %rdi	# tmp978,
	call	Perl_sv_2iv	#
.L636:
	.loc 1 2250 0 discriminator 3
	movl	%eax, -584(%rbp)	# iftmp.410, aint
	.loc 1 2251 0 is_stmt 1 discriminator 3
	movl	-584(%rbp), %eax	# aint, aint.411
	testl	%eax, %eax	# aint.411
	js	.L637	#,
	.loc 1 2251 0 is_stmt 0 discriminator 2
	movl	-584(%rbp), %eax	# aint, aint.412
	cmpl	$255, %eax	#, aint.412
	jle	.L638	#,
.L637:
	.loc 1 2252 0 is_stmt 1 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.413
	movq	80(%rax), %rax	# PL_curcop.413_698->cop_warnings, D.14091
	.loc 1 2251 0 discriminator 1
	testq	%rax, %rax	# D.14091
	je	.L639	#,
	.loc 1 2252 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.414
	movq	80(%rax), %rax	# PL_curcop.414_700->cop_warnings, D.14091
	cmpq	$32, %rax	#, D.14091
	je	.L639	#,
	.loc 1 2252 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.415
	movq	80(%rax), %rax	# PL_curcop.415_702->cop_warnings, D.14091
	cmpq	$16, %rax	#, D.14091
	je	.L640	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.416
	movq	80(%rax), %rax	# PL_curcop.416_704->cop_warnings, D.14091
	movq	(%rax), %rax	# _705->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_706].xpv_pv, D.14089
	addq	$4, %rax	#, D.14089
	movzbl	(%rax), %eax	# *_708, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L640	#,
.L639:
	.loc 1 2252 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.417
	movq	80(%rax), %rax	# PL_curcop.417_712->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	jne	.L638	#,
	.loc 1 2252 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.418
	movzbl	%al, %eax	# PL_dowarn.418, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L638	#,
.L640:
	.loc 1 2253 0 is_stmt 1
	movl	$.LC42, %esi	#,
	movl	$16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L638:
	.loc 1 2255 0
	movl	-584(%rbp), %eax	# aint, aint.419
	movb	%al, -599(%rbp)	# achar.420, achar
	.loc 1 2256 0
	leaq	-599(%rbp), %rsi	#, tmp979
	movq	-616(%rbp), %rax	# cat, tmp980
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp980,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2257 0
	jmp	.L628	#
.L634:
	.loc 1 2259 0
	movq	-416(%rbp), %rax	# fromstr, tmp981
	movl	12(%rax), %eax	# fromstr_687->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L641	#,
	.loc 1 2259 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp982
	movq	(%rax), %rax	# fromstr_687->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_721].xiv_iv, D.14086
	jmp	.L642	#
.L641:
	.loc 1 2259 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp983
	movq	%rax, %rdi	# tmp983,
	call	Perl_sv_2iv	#
.L642:
	.loc 1 2259 0 discriminator 3
	movl	%eax, -584(%rbp)	# iftmp.421, aint
	.loc 1 2260 0 is_stmt 1 discriminator 3
	movl	-584(%rbp), %eax	# aint, aint.422
	cmpl	$-128, %eax	#, aint.422
	jl	.L643	#,
	.loc 1 2260 0 is_stmt 0 discriminator 2
	movl	-584(%rbp), %eax	# aint, aint.423
	cmpl	$127, %eax	#, aint.423
	jle	.L644	#,
.L643:
	.loc 1 2261 0 is_stmt 1 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.424
	movq	80(%rax), %rax	# PL_curcop.424_728->cop_warnings, D.14091
	.loc 1 2260 0 discriminator 1
	testq	%rax, %rax	# D.14091
	je	.L645	#,
	.loc 1 2261 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.425
	movq	80(%rax), %rax	# PL_curcop.425_730->cop_warnings, D.14091
	cmpq	$32, %rax	#, D.14091
	je	.L645	#,
	.loc 1 2261 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.426
	movq	80(%rax), %rax	# PL_curcop.426_732->cop_warnings, D.14091
	cmpq	$16, %rax	#, D.14091
	je	.L646	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.427
	movq	80(%rax), %rax	# PL_curcop.427_734->cop_warnings, D.14091
	movq	(%rax), %rax	# _735->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_736].xpv_pv, D.14089
	addq	$4, %rax	#, D.14089
	movzbl	(%rax), %eax	# *_738, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L646	#,
.L645:
	.loc 1 2261 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.428
	movq	80(%rax), %rax	# PL_curcop.428_742->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	jne	.L644	#,
	.loc 1 2261 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.429
	movzbl	%al, %eax	# PL_dowarn.429, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L644	#,
.L646:
	.loc 1 2262 0 is_stmt 1
	movl	$.LC43, %esi	#,
	movl	$16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L644:
	.loc 1 2264 0
	movl	-584(%rbp), %eax	# aint, aint.430
	movb	%al, -599(%rbp)	# achar.431, achar
	.loc 1 2265 0
	leaq	-599(%rbp), %rsi	#, tmp984
	movq	-616(%rbp), %rax	# cat, tmp985
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp985,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2266 0
	jmp	.L628	#
.L883:
	.loc 1 2246 0
	nop
.L628:
	.loc 1 2246 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.432
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.432
	jg	.L647	#,
	.loc 1 2269 0 is_stmt 1
	jmp	.L550	#
.L661:
	.loc 1 2272 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L649	#,
	.loc 1 2272 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.435
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.435
	jle	.L650	#,
	movq	%r13, %rax	# beglist, beglist.436
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.436_753, iftmp.434
	jmp	.L652	#
.L650:
	.loc 1 2272 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.434
	jmp	.L652	#
.L649:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.433
.L652:
	.loc 1 2272 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.433, fromstr
	.loc 1 2273 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp986
	movl	12(%rax), %eax	# fromstr_759->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L653	#,
	.loc 1 2273 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp987
	movq	(%rax), %rax	# fromstr_759->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_762].xuv_uv, D.14085
	jmp	.L654	#
.L653:
	.loc 1 2273 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp988
	movq	%rax, %rdi	# tmp988,
	call	Perl_sv_2uv	#
.L654:
	.loc 1 2273 0 discriminator 3
	movl	%eax, -580(%rbp)	# iftmp.437, auint
	.loc 1 2274 0 is_stmt 1 discriminator 3
	movq	-616(%rbp), %rax	# cat, tmp989
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_767].xpv_len, D.14085
	movq	-616(%rbp), %rax	# cat, tmp990
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_769].xpv_cur, D.14085
	addq	$14, %rax	#, D.14085
	cmpq	%rax, %rdx	# D.14085, D.14085
	jae	.L656	#,
	.loc 1 2274 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# cat, tmp991
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_772].xpv_cur, D.14085
	leaq	14(%rax), %rdx	#, D.14085
	movq	-616(%rbp), %rax	# cat, tmp992
	movq	%rdx, %rsi	# D.14085,
	movq	%rax, %rdi	# tmp992,
	call	Perl_sv_grow	#
.L656:
	.loc 1 2275 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp994
	movq	(%rax), %r15	# cat_297(D)->sv_any, D.14084
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.440
	movq	80(%rax), %rax	# PL_curcop.440_779->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	je	.L657	#,
	.loc 1 2275 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.441
	movq	80(%rax), %rax	# PL_curcop.441_781->cop_warnings, D.14091
	cmpq	$32, %rax	#, D.14091
	je	.L657	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.442
	movq	80(%rax), %rax	# PL_curcop.442_783->cop_warnings, D.14091
	cmpq	$16, %rax	#, D.14091
	je	.L658	#,
	.loc 1 2275 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.443
	movq	80(%rax), %rax	# PL_curcop.443_785->cop_warnings, D.14091
	movq	(%rax), %rax	# _786->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_787].xpv_pv, D.14089
	addq	$11, %rax	#, D.14089
	movzbl	(%rax), %eax	# *_789, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L658	#,
.L657:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.444
	movq	80(%rax), %rax	# PL_curcop.444_793->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	jne	.L659	#,
	.loc 1 2275 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.445
	movzbl	%al, %eax	# PL_dowarn.445, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L659	#,
.L658:
	movl	$0, %eax	#, iftmp.439
	jmp	.L660	#
.L659:
	.loc 1 2275 0 discriminator 2
	movl	$15, %eax	#, iftmp.439
.L660:
	.loc 1 2275 0 discriminator 3
	movl	-580(%rbp), %edx	# auint, auint.446
	movl	%edx, %ecx	# auint.446, D.14085
	movq	-616(%rbp), %rdx	# cat, tmp995
	movq	(%rdx), %rdx	# cat_297(D)->sv_any, D.14084
	movq	(%rdx), %rsi	# MEM[(struct XPV *)_802].xpv_pv, D.14089
	movq	-616(%rbp), %rdx	# cat, tmp996
	movq	(%rdx), %rdx	# cat_297(D)->sv_any, D.14084
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_804].xpv_cur, D.14085
	leaq	(%rsi,%rdx), %rdi	#, D.14095
	movq	%rax, %rdx	# iftmp.439,
	movq	%rcx, %rsi	# D.14085,
	call	Perl_uvchr_to_utf8_flags	#
	movq	%rax, %rdx	# D.14095, D.14086
	movq	-616(%rbp), %rax	# cat, tmp997
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_809].xpv_pv, D.14089
	subq	%rax, %rdx	# D.14086, D.14086
	movq	%rdx, %rax	# D.14086, D.14086
	movq	%rax, 8(%r15)	# D.14085, MEM[(struct XPV *)_778].xpv_cur
	jmp	.L648	#
.L890:
	.loc 1 2271 0 is_stmt 1
	nop
.L648:
	.loc 1 2271 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.447
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.447
	jg	.L661	#,
	.loc 1 2282 0 is_stmt 1
	movq	-616(%rbp), %rax	# cat, tmp998
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	(%rax), %rdx	# MEM[(struct XPV *)_814].xpv_pv, D.14089
	movq	-616(%rbp), %rax	# cat, tmp999
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_816].xpv_cur, D.14085
	addq	%rdx, %rax	# D.14089, D.14089
	movb	$0, (%rax)	#, *_818
	.loc 1 2283 0
	jmp	.L550	#
.L669:
	.loc 1 2287 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L663	#,
	.loc 1 2287 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.450
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.450
	jle	.L664	#,
	movq	%r13, %rax	# beglist, beglist.451
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.451_823, iftmp.449
	jmp	.L666	#
.L664:
	.loc 1 2287 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.449
	jmp	.L666	#
.L663:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.448
.L666:
	.loc 1 2287 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.448, fromstr
	.loc 1 2311 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1000
	movl	12(%rax), %eax	# fromstr_829->sv_flags, D.14088
	andl	$131072, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L667	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1001
	movq	(%rax), %rax	# fromstr_829->sv_any, D.14084
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_832].xnv_nv, iftmp.452
	jmp	.L668	#
.L667:
	.loc 1 2311 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1002
	movq	%rax, %rdi	# tmp1002,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, iftmp.452
.L668:
	.loc 1 2311 0 discriminator 3
	movq	%rax, -632(%rbp)	# iftmp.452, %sfp
	movsd	-632(%rbp), %xmm3	# %sfp, iftmp.452
	unpcklpd	%xmm3, %xmm3	# iftmp.452
	cvtpd2ps	%xmm3, %xmm0	# iftmp.452, afloat.453
	movss	%xmm0, -576(%rbp)	# afloat.453, afloat
	.loc 1 2315 0 is_stmt 1 discriminator 3
	leaq	-576(%rbp), %rsi	#, tmp1003
	movq	-616(%rbp), %rax	# cat, tmp1004
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1004,
	call	Perl_sv_catpvn_flags	#
	jmp	.L662	#
.L893:
	.loc 1 2286 0
	nop
.L662:
	.loc 1 2286 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.454
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.454
	jg	.L669	#,
	.loc 1 2317 0 is_stmt 1
	jmp	.L550	#
.L677:
	.loc 1 2320 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L671	#,
	.loc 1 2320 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.457
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.457
	jle	.L672	#,
	movq	%r13, %rax	# beglist, beglist.458
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.458_840, iftmp.456
	jmp	.L674	#
.L672:
	.loc 1 2320 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.456
	jmp	.L674	#
.L671:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.455
.L674:
	.loc 1 2320 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.455, fromstr
	.loc 1 2344 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1005
	movl	12(%rax), %eax	# fromstr_846->sv_flags, D.14088
	andl	$131072, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L675	#,
	.loc 1 2344 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1006
	movq	(%rax), %rax	# fromstr_846->sv_any, D.14084
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_849].xnv_nv, iftmp.459
	jmp	.L676	#
.L675:
	.loc 1 2344 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1007
	movq	%rax, %rdi	# tmp1007,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, iftmp.459
.L676:
	.loc 1 2344 0 discriminator 3
	movq	%rax, -496(%rbp)	# iftmp.459, adouble
	.loc 1 2348 0 is_stmt 1 discriminator 3
	leaq	-496(%rbp), %rsi	#, tmp1008
	movq	-616(%rbp), %rax	# cat, tmp1009
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1009,
	call	Perl_sv_catpvn_flags	#
	jmp	.L670	#
.L892:
	.loc 1 2319 0
	nop
.L670:
	.loc 1 2319 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.460
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.460
	jg	.L677	#,
	.loc 1 2350 0 is_stmt 1
	jmp	.L550	#
.L519:
	.loc 1 2352 0
	leaq	-472(%rbp), %rax	#, tmp1010
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1010,
	call	memset	#
	.loc 1 2353 0
	jmp	.L678	#
.L685:
	.loc 1 2354 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L679	#,
	.loc 1 2354 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.463
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.463
	jle	.L680	#,
	movq	%r13, %rax	# beglist, beglist.464
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.464_856, iftmp.462
	jmp	.L682	#
.L680:
	.loc 1 2354 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.462
	jmp	.L682	#
.L679:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.461
.L682:
	.loc 1 2354 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.461, fromstr
	.loc 1 2355 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1011
	movl	12(%rax), %eax	# fromstr_862->sv_flags, D.14088
	andl	$131072, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L683	#,
	.loc 1 2355 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1012
	movq	(%rax), %rax	# fromstr_862->sv_any, D.14084
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_865].xnv_nv, iftmp.465
	jmp	.L684	#
.L683:
	.loc 1 2355 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1013
	movq	%rax, %rdi	# tmp1013,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, iftmp.465
.L684:
	.loc 1 2355 0 discriminator 3
	movq	%rax, -472(%rbp)	# iftmp.465, anv
	.loc 1 2357 0 is_stmt 1 discriminator 3
	leaq	-472(%rbp), %rsi	#, tmp1014
	movq	-616(%rbp), %rax	# cat, tmp1015
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1015,
	call	Perl_sv_catpvn_flags	#
.L678:
	.loc 1 2353 0 discriminator 1
	movl	%ebx, %eax	# len, len.466
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.466
	jg	.L685	#,
	.loc 1 2359 0
	jmp	.L550	#
.L693:
	.loc 1 2377 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L687	#,
	.loc 1 2377 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.469
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.469
	jle	.L688	#,
	movq	%r13, %rax	# beglist, beglist.470
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.470_872, iftmp.468
	jmp	.L690	#
.L688:
	.loc 1 2377 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.468
	jmp	.L690	#
.L687:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.467
.L690:
	.loc 1 2377 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.467, fromstr
	.loc 1 2378 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1016
	movl	12(%rax), %eax	# fromstr_878->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L691	#,
	.loc 1 2378 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1017
	movq	(%rax), %rax	# fromstr_878->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_881].xiv_iv, D.14086
	jmp	.L692	#
.L691:
	.loc 1 2378 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1018
	movq	%rax, %rdi	# tmp1018,
	call	Perl_sv_2iv	#
.L692:
	.loc 1 2378 0 discriminator 3
	movw	%ax, -596(%rbp)	# iftmp.471, ai16
	.loc 1 2380 0 is_stmt 1 discriminator 3
	movzwl	-596(%rbp), %eax	# ai16, ai16.472
	cwtl
	movl	%eax, %edi	# D.14087,
	call	Perl_my_swap	#
	movw	%ax, -596(%rbp)	# ai16.473, ai16
	.loc 1 2382 0 discriminator 3
	leaq	-596(%rbp), %rsi	#, tmp1019
	movq	-616(%rbp), %rax	# cat, tmp1020
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp1020,
	call	Perl_sv_catpvn_flags	#
	jmp	.L686	#
.L897:
	.loc 1 2376 0
	nop
.L686:
	.loc 1 2376 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.474
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.474
	jg	.L693	#,
	.loc 1 2384 0 is_stmt 1
	jmp	.L550	#
.L701:
	.loc 1 2390 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L695	#,
	.loc 1 2390 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.477
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.477
	jle	.L696	#,
	movq	%r13, %rax	# beglist, beglist.478
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.478_893, iftmp.476
	jmp	.L698	#
.L696:
	.loc 1 2390 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.476
	jmp	.L698	#
.L695:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.475
.L698:
	.loc 1 2390 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.475, fromstr
	.loc 1 2391 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1021
	movl	12(%rax), %eax	# fromstr_899->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L699	#,
	.loc 1 2391 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1022
	movq	(%rax), %rax	# fromstr_899->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_902].xiv_iv, D.14086
	jmp	.L700	#
.L699:
	.loc 1 2391 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1023
	movq	%rax, %rdi	# tmp1023,
	call	Perl_sv_2iv	#
.L700:
	.loc 1 2391 0 discriminator 3
	movw	%ax, -596(%rbp)	# iftmp.479, ai16
	.loc 1 2393 0 is_stmt 1 discriminator 3
	movzwl	-596(%rbp), %eax	# ai16, ai16.480
	cwtl
	movl	%eax, %edi	# D.14087,
	call	htovs	#
	movw	%ax, -596(%rbp)	# ai16.481, ai16
	.loc 1 2395 0 discriminator 3
	leaq	-596(%rbp), %rsi	#, tmp1024
	movq	-616(%rbp), %rax	# cat, tmp1025
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp1025,
	call	Perl_sv_catpvn_flags	#
	jmp	.L694	#
.L901:
	.loc 1 2389 0
	nop
.L694:
	.loc 1 2389 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.482
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.482
	jg	.L701	#,
	.loc 1 2397 0 is_stmt 1
	jmp	.L550	#
.L709:
	.loc 1 2415 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L703	#,
	.loc 1 2415 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.485
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.485
	jle	.L704	#,
	movq	%r13, %rax	# beglist, beglist.486
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.486_914, iftmp.484
	jmp	.L706	#
.L704:
	.loc 1 2415 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.484
	jmp	.L706	#
.L703:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.483
.L706:
	.loc 1 2415 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.483, fromstr
	.loc 1 2416 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1026
	movl	12(%rax), %eax	# fromstr_920->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L707	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1027
	movq	(%rax), %rax	# fromstr_920->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_923].xuv_uv, D.14085
	jmp	.L708	#
.L707:
	.loc 1 2416 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1028
	movq	%rax, %rdi	# tmp1028,
	call	Perl_sv_2uv	#
.L708:
	.loc 1 2416 0 discriminator 3
	movw	%ax, -594(%rbp)	# iftmp.487, au16
	.loc 1 2418 0 is_stmt 1 discriminator 3
	leaq	-594(%rbp), %rsi	#, tmp1029
	movq	-616(%rbp), %rax	# cat, tmp1030
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp1030,
	call	Perl_sv_catpvn_flags	#
	jmp	.L702	#
.L889:
	.loc 1 2414 0
	nop
.L702:
	.loc 1 2414 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.488
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.488
	jg	.L709	#,
	.loc 1 2422 0 is_stmt 1
	jmp	.L550	#
.L717:
	.loc 1 2439 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L711	#,
	.loc 1 2439 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.491
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.491
	jle	.L712	#,
	movq	%r13, %rax	# beglist, beglist.492
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.492_932, iftmp.490
	jmp	.L714	#
.L712:
	.loc 1 2439 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.490
	jmp	.L714	#
.L711:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.489
.L714:
	.loc 1 2439 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.489, fromstr
	.loc 1 2440 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1031
	movl	12(%rax), %eax	# fromstr_938->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L715	#,
	.loc 1 2440 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1032
	movq	(%rax), %rax	# fromstr_938->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_941].xiv_iv, D.14086
	jmp	.L716	#
.L715:
	.loc 1 2440 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1033
	movq	%rax, %rdi	# tmp1033,
	call	Perl_sv_2iv	#
.L716:
	.loc 1 2440 0 discriminator 3
	movw	%ax, -596(%rbp)	# iftmp.493, ai16
	.loc 1 2442 0 is_stmt 1 discriminator 3
	leaq	-596(%rbp), %rsi	#, tmp1034
	movq	-616(%rbp), %rax	# cat, tmp1035
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp1035,
	call	Perl_sv_catpvn_flags	#
	jmp	.L710	#
.L900:
	.loc 1 2438 0
	nop
.L710:
	.loc 1 2438 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.494
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.494
	jg	.L717	#,
	.loc 1 2444 0 is_stmt 1
	jmp	.L550	#
.L725:
	.loc 1 2448 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L719	#,
	.loc 1 2448 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.497
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.497
	jle	.L720	#,
	movq	%r13, %rax	# beglist, beglist.498
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.498_950, iftmp.496
	jmp	.L722	#
.L720:
	.loc 1 2448 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.496
	jmp	.L722	#
.L719:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.495
.L722:
	.loc 1 2448 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.495, fromstr
	.loc 1 2449 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1036
	movl	12(%rax), %eax	# fromstr_956->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L723	#,
	.loc 1 2449 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1037
	movq	(%rax), %rax	# fromstr_956->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_959].xuv_uv, D.14085
	jmp	.L724	#
.L723:
	.loc 1 2449 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1038
	movq	%rax, %rdi	# tmp1038,
	call	Perl_sv_2uv	#
.L724:
	.loc 1 2449 0 discriminator 3
	movl	%eax, -580(%rbp)	# iftmp.499, auint
	.loc 1 2451 0 is_stmt 1 discriminator 3
	leaq	-580(%rbp), %rsi	#, tmp1039
	movq	-616(%rbp), %rax	# cat, tmp1040
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1040,
	call	Perl_sv_catpvn_flags	#
	jmp	.L718	#
.L884:
	.loc 1 2447 0
	nop
.L718:
	.loc 1 2447 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.500
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.500
	jg	.L725	#,
	.loc 1 2453 0 is_stmt 1
	jmp	.L550	#
.L733:
	.loc 1 2456 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L727	#,
	.loc 1 2456 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.503
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.503
	jle	.L728	#,
	movq	%r13, %rax	# beglist, beglist.504
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.504_968, iftmp.502
	jmp	.L730	#
.L728:
	.loc 1 2456 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.502
	jmp	.L730	#
.L727:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.501
.L730:
	.loc 1 2456 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.501, fromstr
	.loc 1 2457 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1041
	movl	12(%rax), %eax	# fromstr_974->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L731	#,
	.loc 1 2457 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1042
	movq	(%rax), %rax	# fromstr_974->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_977].xiv_iv, iftmp.505
	jmp	.L732	#
.L731:
	.loc 1 2457 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1043
	movq	%rax, %rdi	# tmp1043,
	call	Perl_sv_2iv	#
.L732:
	.loc 1 2457 0 discriminator 3
	movq	%rax, -488(%rbp)	# iftmp.505, aiv
	.loc 1 2465 0 is_stmt 1 discriminator 3
	leaq	-488(%rbp), %rsi	#, tmp1044
	movq	-616(%rbp), %rax	# cat, tmp1045
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1045,
	call	Perl_sv_catpvn_flags	#
	jmp	.L726	#
.L895:
	.loc 1 2455 0
	nop
.L726:
	.loc 1 2455 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.506
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.506
	jg	.L733	#,
	.loc 1 2467 0 is_stmt 1
	jmp	.L550	#
.L741:
	.loc 1 2470 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L735	#,
	.loc 1 2470 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.509
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.509
	jle	.L736	#,
	movq	%r13, %rax	# beglist, beglist.510
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.510_984, iftmp.508
	jmp	.L738	#
.L736:
	.loc 1 2470 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.508
	jmp	.L738	#
.L735:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.507
.L738:
	.loc 1 2470 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.507, fromstr
	.loc 1 2471 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1046
	movl	12(%rax), %eax	# fromstr_990->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L739	#,
	.loc 1 2471 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1047
	movq	(%rax), %rax	# fromstr_990->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_993].xuv_uv, iftmp.511
	jmp	.L740	#
.L739:
	.loc 1 2471 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1048
	movq	%rax, %rdi	# tmp1048,
	call	Perl_sv_2uv	#
.L740:
	.loc 1 2471 0 discriminator 3
	movq	%rax, -480(%rbp)	# iftmp.511, auv
	.loc 1 2479 0 is_stmt 1 discriminator 3
	leaq	-480(%rbp), %rsi	#, tmp1049
	movq	-616(%rbp), %rax	# cat, tmp1050
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1050,
	call	Perl_sv_catpvn_flags	#
	jmp	.L734	#
.L885:
	.loc 1 2469 0
	nop
.L734:
	.loc 1 2469 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.512
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.512
	jg	.L741	#,
	.loc 1 2481 0 is_stmt 1
	jmp	.L550	#
.L771:
	.loc 1 2484 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L743	#,
	.loc 1 2484 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.515
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.515
	jle	.L744	#,
	movq	%r13, %rax	# beglist, beglist.516
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.516_1000, iftmp.514
	jmp	.L746	#
.L744:
	.loc 1 2484 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.514
	jmp	.L746	#
.L743:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.513
.L746:
	.loc 1 2484 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.513, fromstr
	.loc 1 2485 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1051
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$131072, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L747	#,
	.loc 1 2485 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1052
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_1009].xnv_nv, iftmp.517
	jmp	.L748	#
.L747:
	.loc 1 2485 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1053
	movq	%rax, %rdi	# tmp1053,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, iftmp.517
.L748:
	.loc 1 2485 0 discriminator 3
	movq	%rax, -472(%rbp)	# iftmp.517, anv
	.loc 1 2487 0 is_stmt 1 discriminator 3
	movsd	-472(%rbp), %xmm1	# anv, anv.518
	xorpd	%xmm0, %xmm0	# tmp1054
	ucomisd	%xmm1, %xmm0	# anv.518, tmp1054
	jbe	.L749	#,
	.loc 1 2488 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L749:
	.loc 1 2495 0
	movq	-416(%rbp), %rax	# fromstr, tmp1055
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	jne	.L751	#,
	.loc 1 2495 0 is_stmt 0 discriminator 1
	movsd	-472(%rbp), %xmm1	# anv, anv.519
	movsd	.LC45(%rip), %xmm0	#, tmp1056
	ucomisd	%xmm1, %xmm0	# anv.519, tmp1056
	jbe	.L882	#,
.L751:
.LBB32:
	.loc 1 2498 0 is_stmt 1
	leaq	-224(%rbp), %rax	#, tmp1057
	addq	$10, %rax	#, tmp1058
	movq	%rax, -456(%rbp)	# tmp1058, in
	.loc 1 2499 0
	movq	-416(%rbp), %rax	# fromstr, tmp1059
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L754	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1060
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1109].xuv_uv, iftmp.520
	jmp	.L755	#
.L754:
	.loc 1 2499 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1061
	movq	%rax, %rdi	# tmp1061,
	call	Perl_sv_2uv	#
.L755:
	.loc 1 2499 0 discriminator 3
	movq	%rax, -448(%rbp)	# iftmp.520, auv
.L756:
	.loc 1 2502 0 is_stmt 1 discriminator 1
	subq	$1, -456(%rbp)	#, in
	movq	-448(%rbp), %rax	# auv, tmp1062
	orl	$-128, %eax	#, D.14098
	movl	%eax, %edx	# D.14098, D.14094
	movq	-456(%rbp), %rax	# in, tmp1063
	movb	%dl, (%rax)	# D.14094, *in_1113
	.loc 1 2503 0 discriminator 1
	shrq	$7, -448(%rbp)	#, auv
	.loc 1 2504 0 discriminator 1
	cmpq	$0, -448(%rbp)	#, auv
	jne	.L756	#,
	.loc 1 2505 0
	movzbl	-215(%rbp), %eax	# buf, D.14094
	andl	$127, %eax	#, D.14094
	movb	%al, -215(%rbp)	# D.14094, buf
	.loc 1 2506 0
	leaq	-224(%rbp), %rax	#, D.14086
	addq	$10, %rax	#, D.14086
	movq	-456(%rbp), %rdx	# in, in.521
	subq	%rdx, %rax	# in.521, D.14086
	movq	%rax, %rdx	# D.14086, D.14085
	movq	-456(%rbp), %rsi	# in, tmp1064
	movq	-616(%rbp), %rax	# cat, tmp1065
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1065,
	call	Perl_sv_catpvn_flags	#
.LBE32:
	.loc 1 2496 0
	jmp	.L742	#
.L882:
	.loc 1 2508 0
	movq	-416(%rbp), %rax	# fromstr, tmp1066
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$67108864, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L757	#,
.LBB33:
	.loc 1 2515 0
	movq	-416(%rbp), %rax	# fromstr, tmp1067
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L758	#,
	.loc 1 2515 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1068
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1020].xpv_cur, len.523
	movq	%rax, -288(%rbp)	# len.523, len
	movq	-416(%rbp), %rax	# fromstr, tmp1069
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1022].xpv_pv, iftmp.522
	jmp	.L759	#
.L758:
	.loc 1 2515 0 discriminator 2
	leaq	-288(%rbp), %rcx	#, tmp1070
	movq	-416(%rbp), %rax	# fromstr, tmp1071
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1070,
	movq	%rax, %rdi	# tmp1071,
	call	Perl_sv_2pv_flags	#
.L759:
	.loc 1 2515 0 discriminator 3
	movq	%rax, -408(%rbp)	# iftmp.522, from
	.loc 1 2516 0 is_stmt 1 discriminator 3
	movq	-288(%rbp), %rdx	# len, len.524
	movq	-408(%rbp), %rax	# from, tmp1072
	movq	%rdx, %rsi	# len.524,
	movq	%rax, %rdi	# tmp1072,
	call	S_is_an_int	#
	movq	%rax, -400(%rbp)	# tmp1073, norm
	cmpq	$0, -400(%rbp)	#, norm
	jne	.L760	#,
	.loc 1 2517 0
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L760:
	.loc 1 2519 0
	movq	-288(%rbp), %rax	# len, len.525
	movq	%rax, %rdi	# len.525,
	call	Perl_safesysmalloc	#
	movq	%rax, -392(%rbp)	# tmp1074, result
	.loc 1 2520 0
	movq	-288(%rbp), %rdx	# len, len.526
	movq	-392(%rbp), %rax	# result, tmp1078
	addq	%rdx, %rax	# len.526, tmp1077
	movq	%rax, -440(%rbp)	# tmp1077, in
	.loc 1 2521 0
	movb	$0, -598(%rbp)	#, done
	.loc 1 2522 0
	jmp	.L761	#
.L762:
	.loc 1 2523 0
	subq	$1, -440(%rbp)	#, in
	leaq	-598(%rbp), %rdx	#, tmp1079
	movq	-400(%rbp), %rax	# norm, tmp1080
	movq	%rdx, %rsi	# tmp1079,
	movq	%rax, %rdi	# tmp1080,
	call	S_div128	#
	orl	$-128, %eax	#, D.14094
	movl	%eax, %edx	# D.14094, D.14094
	movq	-440(%rbp), %rax	# in, tmp1081
	movb	%dl, (%rax)	# D.14094, *in_1033
.L761:
	.loc 1 2522 0 discriminator 1
	movzbl	-598(%rbp), %eax	# done, done.527
	testb	%al, %al	# done.527
	je	.L762	#,
	.loc 1 2524 0
	movq	-288(%rbp), %rax	# len, len.528
	leaq	-1(%rax), %rdx	#, D.14093
	movq	-392(%rbp), %rax	# result, tmp1082
	addq	%rdx, %rax	# D.14093, D.14089
	movq	-288(%rbp), %rdx	# len, len.529
	leaq	-1(%rdx), %rcx	#, D.14093
	movq	-392(%rbp), %rdx	# result, tmp1083
	addq	%rcx, %rdx	# D.14093, D.14089
	movzbl	(%rdx), %edx	# *_1042, D.14094
	andl	$127, %edx	#, D.14094
	movb	%dl, (%rax)	# D.14094, *_1039
	.loc 1 2525 0
	movq	-288(%rbp), %rdx	# len, len.530
	movq	-392(%rbp), %rax	# result, tmp1084
	addq	%rdx, %rax	# len.530, D.14089
	movq	%rax, %rdx	# D.14089, D.14086
	movq	-440(%rbp), %rax	# in, in.531
	subq	%rax, %rdx	# in.531, D.14086
	movq	%rdx, %rax	# D.14086, D.14086
	movq	%rax, %rdx	# D.14086, D.14085
	movq	-440(%rbp), %rsi	# in, tmp1085
	movq	-616(%rbp), %rax	# cat, tmp1086
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1086,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2526 0
	movq	-392(%rbp), %rax	# result, tmp1087
	movq	%rax, %rdi	# tmp1087,
	call	Perl_safesysfree	#
	.loc 1 2527 0
	movq	-400(%rbp), %rax	# norm, tmp1088
	movq	%rax, %rdi	# tmp1088,
	call	Perl_sv_free	#
.LBE33:
	jmp	.L742	#
.L757:
	.loc 1 2529 0
	movq	-416(%rbp), %rax	# fromstr, tmp1089
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$33554432, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L763	#,
.LBB34:
	.loc 1 2547 0
	leaq	-224(%rbp), %rax	#, tmp1090
	addq	$155, %rax	#, tmp1091
	movq	%rax, -432(%rbp)	# tmp1091, in
	.loc 1 2549 0
	movq	-472(%rbp), %rax	# anv, anv.532
	movq	%rax, -632(%rbp)	# anv.532, %sfp
	movsd	-632(%rbp), %xmm0	# %sfp,
	call	floor	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, anv.533
	movq	%rax, -472(%rbp)	# anv.533, anv
.L765:
.LBB35:
	.loc 1 2551 0
	movsd	-472(%rbp), %xmm0	# anv, anv.534
	movsd	.LC47(%rip), %xmm1	#, tmp1092
	divsd	%xmm1, %xmm0	# tmp1092, D.14096
	call	floor	#
	movsd	%xmm0, -632(%rbp)	#, %sfp
	movq	-632(%rbp), %rax	# %sfp, tmp1093
	movq	%rax, -384(%rbp)	# tmp1093, next
	.loc 1 2552 0
	leaq	-224(%rbp), %rax	#, tmp1094
	cmpq	%rax, -432(%rbp)	# tmp1094, in
	ja	.L764	#,
	.loc 1 2553 0
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L764:
	.loc 1 2554 0
	subq	$1, -432(%rbp)	#, in
	movsd	-472(%rbp), %xmm1	# anv, anv.535
	movsd	-384(%rbp), %xmm2	# next, tmp1095
	movsd	.LC47(%rip), %xmm0	#, tmp1096
	mulsd	%xmm2, %xmm0	# tmp1095, D.14096
	subsd	%xmm0, %xmm1	# D.14096, D.14096
	movapd	%xmm1, %xmm0	# D.14096, D.14096
	cvttsd2si	%xmm0, %eax	# D.14096, tmp1098
	orl	$-128, %eax	#, D.14097
	movl	%eax, %edx	# D.14097, D.14094
	movq	-432(%rbp), %rax	# in, tmp1099
	movb	%dl, (%rax)	# D.14094, *in_1059
	.loc 1 2555 0
	movq	-384(%rbp), %rax	# next, tmp1100
	movq	%rax, -472(%rbp)	# tmp1100, anv
.LBE35:
	.loc 1 2556 0
	movsd	-472(%rbp), %xmm0	# anv, anv.536
	xorpd	%xmm1, %xmm1	# tmp1101
	ucomisd	%xmm1, %xmm0	# tmp1101, anv.536
	ja	.L765	#,
	.loc 1 2557 0
	movzbl	-70(%rbp), %eax	# buf, D.14094
	andl	$127, %eax	#, D.14094
	movb	%al, -70(%rbp)	# D.14094, buf
	.loc 1 2558 0
	leaq	-224(%rbp), %rax	#, D.14086
	addq	$155, %rax	#, D.14086
	movq	-432(%rbp), %rdx	# in, in.537
	subq	%rdx, %rax	# in.537, D.14086
	movq	%rax, %rdx	# D.14086, D.14085
	movq	-432(%rbp), %rsi	# in, tmp1102
	movq	-616(%rbp), %rax	# cat, tmp1103
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1103,
	call	Perl_sv_catpvn_flags	#
.LBE34:
	jmp	.L742	#
.L763:
.LBB36:
	.loc 1 2567 0
	movq	-416(%rbp), %rax	# fromstr, tmp1104
	movl	12(%rax), %eax	# fromstr_1006->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L766	#,
	.loc 1 2567 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1105
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1075].xpv_cur, len.539
	movq	%rax, -288(%rbp)	# len.539, len
	movq	-416(%rbp), %rax	# fromstr, tmp1106
	movq	(%rax), %rax	# fromstr_1006->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1077].xpv_pv, iftmp.538
	jmp	.L767	#
.L766:
	.loc 1 2567 0 discriminator 2
	leaq	-288(%rbp), %rcx	#, tmp1107
	movq	-416(%rbp), %rax	# fromstr, tmp1108
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1107,
	movq	%rax, %rdi	# tmp1108,
	call	Perl_sv_2pv_flags	#
.L767:
	.loc 1 2567 0 discriminator 3
	movq	%rax, -376(%rbp)	# iftmp.538, from
	.loc 1 2568 0 is_stmt 1 discriminator 3
	movq	-288(%rbp), %rdx	# len, len.540
	movq	-376(%rbp), %rax	# from, tmp1109
	movq	%rdx, %rsi	# len.540,
	movq	%rax, %rdi	# tmp1109,
	call	S_is_an_int	#
	movq	%rax, -368(%rbp)	# tmp1110, norm
	cmpq	$0, -368(%rbp)	#, norm
	jne	.L768	#,
	.loc 1 2569 0
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L768:
	.loc 1 2571 0
	movq	-288(%rbp), %rax	# len, len.541
	movq	%rax, %rdi	# len.541,
	call	Perl_safesysmalloc	#
	movq	%rax, -360(%rbp)	# tmp1111, result
	.loc 1 2572 0
	movq	-288(%rbp), %rdx	# len, len.542
	movq	-360(%rbp), %rax	# result, tmp1115
	addq	%rdx, %rax	# len.542, tmp1114
	movq	%rax, -424(%rbp)	# tmp1114, in
	.loc 1 2573 0
	movb	$0, -598(%rbp)	#, done
	.loc 1 2574 0
	jmp	.L769	#
.L770:
	.loc 1 2575 0
	subq	$1, -424(%rbp)	#, in
	leaq	-598(%rbp), %rdx	#, tmp1116
	movq	-368(%rbp), %rax	# norm, tmp1117
	movq	%rdx, %rsi	# tmp1116,
	movq	%rax, %rdi	# tmp1117,
	call	S_div128	#
	orl	$-128, %eax	#, D.14094
	movl	%eax, %edx	# D.14094, D.14094
	movq	-424(%rbp), %rax	# in, tmp1118
	movb	%dl, (%rax)	# D.14094, *in_1088
.L769:
	.loc 1 2574 0 discriminator 1
	movzbl	-598(%rbp), %eax	# done, done.543
	testb	%al, %al	# done.543
	je	.L770	#,
	.loc 1 2576 0
	movq	-288(%rbp), %rax	# len, len.544
	leaq	-1(%rax), %rdx	#, D.14093
	movq	-360(%rbp), %rax	# result, tmp1119
	addq	%rdx, %rax	# D.14093, D.14089
	movq	-288(%rbp), %rdx	# len, len.545
	leaq	-1(%rdx), %rcx	#, D.14093
	movq	-360(%rbp), %rdx	# result, tmp1120
	addq	%rcx, %rdx	# D.14093, D.14089
	movzbl	(%rdx), %edx	# *_1097, D.14094
	andl	$127, %edx	#, D.14094
	movb	%dl, (%rax)	# D.14094, *_1094
	.loc 1 2577 0
	movq	-288(%rbp), %rdx	# len, len.546
	movq	-360(%rbp), %rax	# result, tmp1121
	addq	%rdx, %rax	# len.546, D.14089
	movq	%rax, %rdx	# D.14089, D.14086
	movq	-424(%rbp), %rax	# in, in.547
	subq	%rax, %rdx	# in.547, D.14086
	movq	%rdx, %rax	# D.14086, D.14086
	movq	%rax, %rdx	# D.14086, D.14085
	movq	-424(%rbp), %rsi	# in, tmp1122
	movq	-616(%rbp), %rax	# cat, tmp1123
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1123,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2578 0
	movq	-360(%rbp), %rax	# result, tmp1124
	movq	%rax, %rdi	# tmp1124,
	call	Perl_safesysfree	#
	.loc 1 2579 0
	movq	-368(%rbp), %rax	# norm, tmp1125
	movq	%rax, %rdi	# tmp1125,
	call	Perl_sv_free	#
	jmp	.L742	#
.L902:
.LBE36:
	.loc 1 2483 0
	nop
.L742:
	.loc 1 2483 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.548
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.548
	jg	.L771	#,
	.loc 1 2582 0 is_stmt 1
	jmp	.L550	#
.L779:
	.loc 1 2586 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L773	#,
	.loc 1 2586 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.551
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.551
	jle	.L774	#,
	movq	%r13, %rax	# beglist, beglist.552
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.552_1128, iftmp.550
	jmp	.L776	#
.L774:
	.loc 1 2586 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.550
	jmp	.L776	#
.L773:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.549
.L776:
	.loc 1 2586 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.549, fromstr
	.loc 1 2587 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1126
	movl	12(%rax), %eax	# fromstr_1134->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L777	#,
	.loc 1 2587 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1127
	movq	(%rax), %rax	# fromstr_1134->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1137].xiv_iv, D.14086
	jmp	.L778	#
.L777:
	.loc 1 2587 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1128
	movq	%rax, %rdi	# tmp1128,
	call	Perl_sv_2iv	#
.L778:
	.loc 1 2587 0 discriminator 3
	movl	%eax, -584(%rbp)	# iftmp.553, aint
	.loc 1 2589 0 is_stmt 1 discriminator 3
	leaq	-584(%rbp), %rsi	#, tmp1129
	movq	-616(%rbp), %rax	# cat, tmp1130
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1130,
	call	Perl_sv_catpvn_flags	#
	jmp	.L772	#
.L894:
	.loc 1 2585 0
	nop
.L772:
	.loc 1 2585 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.554
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.554
	jg	.L779	#,
	.loc 1 2591 0 is_stmt 1
	jmp	.L550	#
.L787:
	.loc 1 2597 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L781	#,
	.loc 1 2597 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.557
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.557
	jle	.L782	#,
	movq	%r13, %rax	# beglist, beglist.558
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.558_1146, iftmp.556
	jmp	.L784	#
.L782:
	.loc 1 2597 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.556
	jmp	.L784	#
.L781:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.555
.L784:
	.loc 1 2597 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.555, fromstr
	.loc 1 2598 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1131
	movl	12(%rax), %eax	# fromstr_1152->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L785	#,
	.loc 1 2598 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1132
	movq	(%rax), %rax	# fromstr_1152->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1155].xuv_uv, D.14085
	jmp	.L786	#
.L785:
	.loc 1 2598 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1133
	movq	%rax, %rdi	# tmp1133,
	call	Perl_sv_2uv	#
.L786:
	.loc 1 2598 0 discriminator 3
	movl	%eax, -588(%rbp)	# iftmp.559, au32
	.loc 1 2600 0 is_stmt 1 discriminator 3
	movl	-588(%rbp), %eax	# au32, au32.560
	movl	%eax, %eax	# au32.560, D.14086
	movq	%rax, %rdi	# D.14086,
	call	Perl_my_htonl	#
	movl	%eax, -588(%rbp)	# au32.561, au32
	.loc 1 2602 0 discriminator 3
	leaq	-588(%rbp), %rsi	#, tmp1134
	movq	-616(%rbp), %rax	# cat, tmp1135
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1135,
	call	Perl_sv_catpvn_flags	#
	jmp	.L780	#
.L887:
	.loc 1 2596 0
	nop
.L780:
	.loc 1 2596 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.562
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.562
	jg	.L787	#,
	.loc 1 2604 0 is_stmt 1
	jmp	.L550	#
.L795:
	.loc 1 2610 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L789	#,
	.loc 1 2610 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.565
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.565
	jle	.L790	#,
	movq	%r13, %rax	# beglist, beglist.566
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.566_1168, iftmp.564
	jmp	.L792	#
.L790:
	.loc 1 2610 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.564
	jmp	.L792	#
.L789:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.563
.L792:
	.loc 1 2610 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.563, fromstr
	.loc 1 2611 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1136
	movl	12(%rax), %eax	# fromstr_1174->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L793	#,
	.loc 1 2611 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1137
	movq	(%rax), %rax	# fromstr_1174->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1177].xuv_uv, D.14085
	jmp	.L794	#
.L793:
	.loc 1 2611 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1138
	movq	%rax, %rdi	# tmp1138,
	call	Perl_sv_2uv	#
.L794:
	.loc 1 2611 0 discriminator 3
	movl	%eax, -588(%rbp)	# iftmp.567, au32
	.loc 1 2613 0 is_stmt 1 discriminator 3
	movl	-588(%rbp), %eax	# au32, au32.568
	movl	%eax, %eax	# au32.568, D.14086
	movq	%rax, %rdi	# D.14086,
	call	htovl	#
	movl	%eax, -588(%rbp)	# au32.569, au32
	.loc 1 2615 0 discriminator 3
	leaq	-588(%rbp), %rsi	#, tmp1139
	movq	-616(%rbp), %rax	# cat, tmp1140
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1140,
	call	Perl_sv_catpvn_flags	#
	jmp	.L788	#
.L891:
	.loc 1 2609 0
	nop
.L788:
	.loc 1 2609 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.570
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.570
	jg	.L795	#,
	.loc 1 2617 0 is_stmt 1
	jmp	.L550	#
.L803:
	.loc 1 2622 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L797	#,
	.loc 1 2622 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.573
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.573
	jle	.L798	#,
	movq	%r13, %rax	# beglist, beglist.574
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.574_1190, iftmp.572
	jmp	.L800	#
.L798:
	.loc 1 2622 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.572
	jmp	.L800	#
.L797:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.571
.L800:
	.loc 1 2622 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.571, fromstr
	.loc 1 2623 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1141
	movl	12(%rax), %eax	# fromstr_1196->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L801	#,
	.loc 1 2623 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1142
	movq	(%rax), %rax	# fromstr_1196->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1199].xuv_uv, iftmp.575
	jmp	.L802	#
.L801:
	.loc 1 2623 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1143
	movq	%rax, %rdi	# tmp1143,
	call	Perl_sv_2uv	#
.L802:
	.loc 1 2623 0 discriminator 3
	movq	%rax, -512(%rbp)	# iftmp.575, aulong
	.loc 1 2625 0 is_stmt 1 discriminator 3
	leaq	-512(%rbp), %rsi	#, tmp1144
	movq	-616(%rbp), %rax	# cat, tmp1145
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1145,
	call	Perl_sv_catpvn_flags	#
	jmp	.L796	#
.L903:
	.loc 1 2621 0
	nop
.L796:
	.loc 1 2621 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.576
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.576
	jg	.L803	#,
	.loc 1 2628 0 is_stmt 1
	jmp	.L550	#
.L811:
	.loc 1 2635 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L805	#,
	.loc 1 2635 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.579
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.579
	jle	.L806	#,
	movq	%r13, %rax	# beglist, beglist.580
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.580_1206, iftmp.578
	jmp	.L808	#
.L806:
	.loc 1 2635 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.578
	jmp	.L808	#
.L805:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.577
.L808:
	.loc 1 2635 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.577, fromstr
	.loc 1 2636 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1146
	movl	12(%rax), %eax	# fromstr_1212->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L809	#,
	.loc 1 2636 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1147
	movq	(%rax), %rax	# fromstr_1212->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1215].xuv_uv, D.14085
	jmp	.L810	#
.L809:
	.loc 1 2636 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1148
	movq	%rax, %rdi	# tmp1148,
	call	Perl_sv_2uv	#
.L810:
	.loc 1 2636 0 discriminator 3
	movl	%eax, -588(%rbp)	# iftmp.581, au32
	.loc 1 2638 0 is_stmt 1 discriminator 3
	leaq	-588(%rbp), %rsi	#, tmp1149
	movq	-616(%rbp), %rax	# cat, tmp1150
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1150,
	call	Perl_sv_catpvn_flags	#
	jmp	.L804	#
.L886:
	.loc 1 2634 0
	nop
.L804:
	.loc 1 2634 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.582
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.582
	jg	.L811	#,
	.loc 1 2641 0 is_stmt 1
	jmp	.L550	#
.L819:
	.loc 1 2646 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L813	#,
	.loc 1 2646 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.585
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.585
	jle	.L814	#,
	movq	%r13, %rax	# beglist, beglist.586
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.586_1224, iftmp.584
	jmp	.L816	#
.L814:
	.loc 1 2646 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.584
	jmp	.L816	#
.L813:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.583
.L816:
	.loc 1 2646 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.583, fromstr
	.loc 1 2647 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1151
	movl	12(%rax), %eax	# fromstr_1230->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L817	#,
	.loc 1 2647 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1152
	movq	(%rax), %rax	# fromstr_1230->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1233].xiv_iv, iftmp.587
	jmp	.L818	#
.L817:
	.loc 1 2647 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1153
	movq	%rax, %rdi	# tmp1153,
	call	Perl_sv_2iv	#
.L818:
	.loc 1 2647 0 discriminator 3
	movq	%rax, -520(%rbp)	# iftmp.587, along
	.loc 1 2649 0 is_stmt 1 discriminator 3
	leaq	-520(%rbp), %rsi	#, tmp1154
	movq	-616(%rbp), %rax	# cat, tmp1155
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1155,
	call	Perl_sv_catpvn_flags	#
	jmp	.L812	#
.L904:
	.loc 1 2645 0
	nop
.L812:
	.loc 1 2645 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.588
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.588
	jg	.L819	#,
	.loc 1 2652 0 is_stmt 1
	jmp	.L550	#
.L827:
	.loc 1 2658 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L821	#,
	.loc 1 2658 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.591
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.591
	jle	.L822	#,
	movq	%r13, %rax	# beglist, beglist.592
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.592_1240, iftmp.590
	jmp	.L824	#
.L822:
	.loc 1 2658 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.590
	jmp	.L824	#
.L821:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.589
.L824:
	.loc 1 2658 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.589, fromstr
	.loc 1 2659 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1156
	movl	12(%rax), %eax	# fromstr_1246->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L825	#,
	.loc 1 2659 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1157
	movq	(%rax), %rax	# fromstr_1246->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1249].xiv_iv, D.14086
	jmp	.L826	#
.L825:
	.loc 1 2659 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1158
	movq	%rax, %rdi	# tmp1158,
	call	Perl_sv_2iv	#
.L826:
	.loc 1 2659 0 discriminator 3
	movl	%eax, -592(%rbp)	# iftmp.593, ai32
	.loc 1 2661 0 is_stmt 1 discriminator 3
	leaq	-592(%rbp), %rsi	#, tmp1159
	movq	-616(%rbp), %rax	# cat, tmp1160
	movl	$2, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp1160,
	call	Perl_sv_catpvn_flags	#
	jmp	.L820	#
.L896:
	.loc 1 2657 0
	nop
.L820:
	.loc 1 2657 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.594
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.594
	jg	.L827	#,
	.loc 1 2663 0 is_stmt 1
	jmp	.L550	#
.L835:
	.loc 1 2667 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L829	#,
	.loc 1 2667 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.597
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.597
	jle	.L830	#,
	movq	%r13, %rax	# beglist, beglist.598
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.598_1258, iftmp.596
	jmp	.L832	#
.L830:
	.loc 1 2667 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.596
	jmp	.L832	#
.L829:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.595
.L832:
	.loc 1 2667 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.595, fromstr
	.loc 1 2668 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1161
	movl	12(%rax), %eax	# fromstr_1264->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L833	#,
	.loc 1 2668 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1162
	movq	(%rax), %rax	# fromstr_1264->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_1267].xuv_uv, iftmp.599
	jmp	.L834	#
.L833:
	.loc 1 2668 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1163
	movq	%rax, %rdi	# tmp1163,
	call	Perl_sv_2uv	#
.L834:
	.loc 1 2668 0 discriminator 3
	movq	%rax, -528(%rbp)	# iftmp.599, auquad
	.loc 1 2670 0 is_stmt 1 discriminator 3
	leaq	-528(%rbp), %rsi	#, tmp1164
	movq	-616(%rbp), %rax	# cat, tmp1165
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1165,
	call	Perl_sv_catpvn_flags	#
	jmp	.L828	#
.L888:
	.loc 1 2666 0
	nop
.L828:
	.loc 1 2666 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.600
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.600
	jg	.L835	#,
	.loc 1 2672 0 is_stmt 1
	jmp	.L550	#
.L843:
	.loc 1 2675 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L837	#,
	.loc 1 2675 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.603
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.603
	jle	.L838	#,
	movq	%r13, %rax	# beglist, beglist.604
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.604_1274, iftmp.602
	jmp	.L840	#
.L838:
	.loc 1 2675 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.602
	jmp	.L840	#
.L837:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.601
.L840:
	.loc 1 2675 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.601, fromstr
	.loc 1 2676 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1166
	movl	12(%rax), %eax	# fromstr_1280->sv_flags, D.14088
	andl	$65536, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L841	#,
	.loc 1 2676 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1167
	movq	(%rax), %rax	# fromstr_1280->sv_any, D.14084
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1283].xiv_iv, iftmp.605
	jmp	.L842	#
.L841:
	.loc 1 2676 0 discriminator 2
	movq	-416(%rbp), %rax	# fromstr, tmp1168
	movq	%rax, %rdi	# tmp1168,
	call	Perl_sv_2iv	#
.L842:
	.loc 1 2676 0 discriminator 3
	movq	%rax, -536(%rbp)	# iftmp.605, aquad
	.loc 1 2678 0 is_stmt 1 discriminator 3
	leaq	-536(%rbp), %rsi	#, tmp1169
	movq	-616(%rbp), %rax	# cat, tmp1170
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1170,
	call	Perl_sv_catpvn_flags	#
	jmp	.L836	#
.L899:
	.loc 1 2674 0
	nop
.L836:
	.loc 1 2674 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.606
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.606
	jg	.L843	#,
	.loc 1 2680 0 is_stmt 1
	jmp	.L550	#
.L525:
	.loc 1 2683 0
	movl	$1, %ebx	#, len
	.loc 1 2686 0
	jmp	.L898	#
.L863:
	.loc 1 2687 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L845	#,
	.loc 1 2687 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.609
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.609
	jle	.L846	#,
	movq	%r13, %rax	# beglist, beglist.610
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.610_1291, iftmp.608
	jmp	.L848	#
.L846:
	.loc 1 2687 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.608
	jmp	.L848	#
.L845:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.607
.L848:
	.loc 1 2687 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.607, fromstr
	.loc 1 2688 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1171
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$8192, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L849	#,
	.loc 1 2688 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1172
	movq	%rax, %rdi	# tmp1172,
	call	Perl_mg_get	#
.L849:
	.loc 1 2689 0 is_stmt 1
	movq	-416(%rbp), %rax	# fromstr, tmp1173
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$118423552, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	jne	.L850	#,
	.loc 1 2689 0 is_stmt 0 discriminator 1
	movq	$0, -504(%rbp)	#, aptr
	jmp	.L851	#
.L850:
.LBB37:
	.loc 1 2697 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.611
	movq	80(%rax), %rax	# PL_curcop.611_1302->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	je	.L852	#,
	.loc 1 2697 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.612
	movq	80(%rax), %rax	# PL_curcop.612_1304->cop_warnings, D.14091
	cmpq	$32, %rax	#, D.14091
	je	.L852	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.613
	movq	80(%rax), %rax	# PL_curcop.613_1306->cop_warnings, D.14091
	cmpq	$16, %rax	#, D.14091
	je	.L853	#,
	.loc 1 2697 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.614
	movq	80(%rax), %rax	# PL_curcop.614_1308->cop_warnings, D.14091
	movq	(%rax), %rax	# _1309->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1310].xpv_pv, D.14089
	addq	$4, %rax	#, D.14089
	movzbl	(%rax), %eax	# *_1312, D.14094
	movsbl	%al, %eax	# D.14094, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	jne	.L853	#,
.L852:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.615
	movq	80(%rax), %rax	# PL_curcop.615_1316->cop_warnings, D.14091
	testq	%rax, %rax	# D.14091
	jne	.L854	#,
	.loc 1 2697 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.616
	movzbl	%al, %eax	# PL_dowarn.616, D.14087
	andl	$1, %eax	#, D.14087
	testl	%eax, %eax	# D.14087
	je	.L854	#,
.L853:
	movq	-416(%rbp), %rax	# fromstr, tmp1174
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$2048, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	jne	.L855	#,
	.loc 1 2698 0 is_stmt 1
	movq	-416(%rbp), %rax	# fromstr, tmp1175
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$512, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L854	#,
	.loc 1 2699 0
	movq	-416(%rbp), %rax	# fromstr, tmp1176
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$8388608, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	jne	.L854	#,
.L855:
	.loc 1 2701 0
	movl	$.LC49, %esi	#,
	movl	$16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L854:
	.loc 1 2704 0
	movq	-416(%rbp), %rax	# fromstr, tmp1177
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	jne	.L856	#,
	.loc 1 2704 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1178
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$196608, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L857	#,
.L856:
	.loc 1 2705 0 is_stmt 1
	movq	-416(%rbp), %rax	# fromstr, tmp1179
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L858	#,
	.loc 1 2705 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1180
	movq	(%rax), %rax	# fromstr_1297->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1340].xpv_cur, n_a.618
	movq	%rax, -288(%rbp)	# n_a.618, n_a
	movq	-416(%rbp), %rax	# fromstr, tmp1181
	movq	(%rax), %rax	# fromstr_1297->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1342].xpv_pv, iftmp.617
	jmp	.L859	#
.L858:
	.loc 1 2705 0 discriminator 2
	leaq	-288(%rbp), %rcx	#, tmp1182
	movq	-416(%rbp), %rax	# fromstr, tmp1183
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp1182,
	movq	%rax, %rdi	# tmp1183,
	call	Perl_sv_2pv_flags	#
.L859:
	.loc 1 2705 0 discriminator 3
	movq	%rax, -504(%rbp)	# iftmp.617, aptr
	jmp	.L851	#
.L857:
	.loc 1 2707 0 is_stmt 1
	movq	-416(%rbp), %rax	# fromstr, tmp1184
	movl	12(%rax), %eax	# fromstr_1297->sv_flags, D.14088
	andl	$10223616, %eax	#, D.14088
	cmpl	$262144, %eax	#, D.14088
	jne	.L861	#,
	.loc 1 2707 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1185
	movq	(%rax), %rax	# fromstr_1297->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1333].xpv_cur, n_a.620
	movq	%rax, -288(%rbp)	# n_a.620, n_a
	movq	-416(%rbp), %rax	# fromstr, tmp1186
	movq	(%rax), %rax	# fromstr_1297->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1335].xpv_pv, iftmp.619
	jmp	.L862	#
.L861:
	.loc 1 2707 0 discriminator 2
	leaq	-288(%rbp), %rcx	#, tmp1187
	movq	-416(%rbp), %rax	# fromstr, tmp1188
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp1187,
	movq	%rax, %rdi	# tmp1188,
	call	Perl_sv_pvn_force_flags	#
.L862:
	.loc 1 2707 0 discriminator 3
	movq	%rax, -504(%rbp)	# iftmp.619, aptr
.L851:
.LBE37:
	.loc 1 2710 0 is_stmt 1
	leaq	-504(%rbp), %rsi	#, tmp1189
	movq	-616(%rbp), %rax	# cat, tmp1190
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp1190,
	call	Perl_sv_catpvn_flags	#
	jmp	.L844	#
.L898:
	.loc 1 2686 0
	nop
.L844:
	.loc 1 2686 0 is_stmt 0 discriminator 1
	movl	%ebx, %eax	# len, len.621
	leal	-1(%rax), %ebx	#, len
	testl	%eax, %eax	# len.621
	jg	.L863	#,
	.loc 1 2712 0 is_stmt 1
	jmp	.L550	#
.L540:
	.loc 1 2714 0
	cmpq	$0, -464(%rbp)	#, lengthcode
	jne	.L864	#,
	.loc 1 2714 0 is_stmt 0 discriminator 1
	movl	%r12d, %eax	# items, items.624
	leal	-1(%rax), %r12d	#, items
	testl	%eax, %eax	# items.624
	jle	.L865	#,
	movq	%r13, %rax	# beglist, beglist.625
	leaq	8(%rax), %r13	#, beglist
	movq	(%rax), %rax	# *beglist.625_1347, iftmp.623
	jmp	.L867	#
.L865:
	.loc 1 2714 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.623
	jmp	.L867	#
.L864:
	movq	-464(%rbp), %rax	# lengthcode, iftmp.622
.L867:
	.loc 1 2714 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.622, fromstr
	.loc 1 2715 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# fromstr, tmp1191
	movl	12(%rax), %eax	# fromstr_1353->sv_flags, D.14088
	andl	$262144, %eax	#, D.14088
	testl	%eax, %eax	# D.14088
	je	.L868	#,
	.loc 1 2715 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# fromstr, tmp1192
	movq	(%rax), %rax	# fromstr_1353->sv_any, D.14084
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1356].xpv_cur, fromlen.627
	movq	%rax, -544(%rbp)	# fromlen.627, fromlen
	movq	-416(%rbp), %rax	# fromstr, tmp1193
	movq	(%rax), %rax	# fromstr_1353->sv_any, D.14084
	movq	(%rax), %rax	# MEM[(struct XPV *)_1358].xpv_pv, iftmp.626
	jmp	.L869	#
.L868:
	.loc 1 2715 0 discriminator 2
	leaq	-544(%rbp), %rcx	#, tmp1194
	movq	-416(%rbp), %rax	# fromstr, tmp1195
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1194,
	movq	%rax, %rdi	# tmp1195,
	call	Perl_sv_2pv_flags	#
.L869:
	.loc 1 2715 0 discriminator 3
	movq	%rax, -504(%rbp)	# iftmp.626, aptr
	.loc 1 2716 0 is_stmt 1 discriminator 3
	movq	-616(%rbp), %rax	# cat, tmp1196
	movq	(%rax), %rax	# cat_297(D)->sv_any, D.14084
	movq	16(%rax), %rcx	# MEM[(struct XPV *)_1361].xpv_len, D.14085
	movq	-544(%rbp), %rax	# fromlen, fromlen.629
	salq	$2, %rax	#, D.14085
	movabsq	$-6148914691236517205, %rdx	#, tmp1198
	mulq	%rdx	# tmp1198
	movq	%rdx, %rax	# tmp1197, D.14085
	shrq	%rax	# D.14085
	cmpq	%rax, %rcx	# D.14085, D.14085
	jae	.L871	#,
	.loc 1 2716 0 is_stmt 0 discriminator 1
	movq	-544(%rbp), %rax	# fromlen, fromlen.630
	salq	$2, %rax	#, D.14085
	movabsq	$-6148914691236517205, %rdx	#, tmp1200
	mulq	%rdx	# tmp1200
	shrq	%rdx	# D.14085
	movq	-616(%rbp), %rax	# cat, tmp1201
	movq	%rdx, %rsi	# D.14085,
	movq	%rax, %rdi	# tmp1201,
	call	Perl_sv_grow	#
.L871:
	.loc 1 2717 0 is_stmt 1
	cmpl	$2, %ebx	#, len
	jg	.L872	#,
	.loc 1 2718 0
	movl	$45, %ebx	#, len
	.loc 1 2721 0
	jmp	.L874	#
.L872:
	.loc 1 2720 0
	movl	$1431655766, %edx	#, tmp1204
	movl	%ebx, %eax	# len, tmp1222
	imull	%edx	# tmp1204
	movl	%ebx, %eax	# len, tmp1205
	sarl	$31, %eax	#, tmp1205
	subl	%eax, %edx	# tmp1205, D.14087
	movl	%edx, %eax	# D.14087, tmp1206
	addl	%eax, %eax	# tmp1206
	leal	(%rax,%rdx), %ebx	#, len
	.loc 1 2721 0
	jmp	.L874	#
.L877:
.LBB38:
	.loc 1 2724 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.631
	cmpl	%ebx, %eax	# len, D.14087
	jle	.L875	#,
	.loc 1 2725 0
	movl	%ebx, -572(%rbp)	# len, todo
	jmp	.L876	#
.L875:
	.loc 1 2727 0
	movq	-544(%rbp), %rax	# fromlen, fromlen.632
	movl	%eax, -572(%rbp)	# fromlen.632, todo
.L876:
	.loc 1 2728 0
	movq	-504(%rbp), %rcx	# aptr, aptr.633
	movl	-572(%rbp), %edx	# todo, tmp1207
	movq	-616(%rbp), %rax	# cat, tmp1208
	movq	%rcx, %rsi	# aptr.633,
	movq	%rax, %rdi	# tmp1208,
	call	S_doencodes	#
	.loc 1 2729 0
	movq	-544(%rbp), %rdx	# fromlen, fromlen.634
	movl	-572(%rbp), %eax	# todo, tmp1209
	cltq
	subq	%rax, %rdx	# D.14085, fromlen.635
	movq	%rdx, %rax	# fromlen.635, fromlen.635
	movq	%rax, -544(%rbp)	# fromlen.635, fromlen
	.loc 1 2730 0
	movq	-504(%rbp), %rdx	# aptr, aptr.636
	movl	-572(%rbp), %eax	# todo, tmp1210
	cltq
	addq	%rdx, %rax	# aptr.636, aptr.637
	movq	%rax, -504(%rbp)	# aptr.637, aptr
.L874:
.LBE38:
	.loc 1 2721 0 discriminator 1
	movq	-544(%rbp), %rax	# fromlen, fromlen.638
	testq	%rax, %rax	# fromlen.638
	jne	.L877	#,
	.loc 1 2732 0
	nop
.L550:
	.loc 1 2734 0
	movq	-352(%rbp), %rax	# lookahead, tmp1211
	movq	%rax, (%r14)	# tmp1211, *symptr_308(D)
	movq	-344(%rbp), %rax	# lookahead, tmp1212
	movq	%rax, 8(%r14)	# tmp1212, *symptr_308(D)
	movq	-336(%rbp), %rax	# lookahead, tmp1213
	movq	%rax, 16(%r14)	# tmp1213, *symptr_308(D)
	movq	-328(%rbp), %rax	# lookahead, tmp1214
	movq	%rax, 24(%r14)	# tmp1214, *symptr_308(D)
	movq	-320(%rbp), %rax	# lookahead, tmp1215
	movq	%rax, 32(%r14)	# tmp1215, *symptr_308(D)
	movq	-312(%rbp), %rax	# lookahead, tmp1216
	movq	%rax, 40(%r14)	# tmp1216, *symptr_308(D)
	movq	-304(%rbp), %rax	# lookahead, tmp1217
	movq	%rax, 48(%r14)	# tmp1217, *symptr_308(D)
.L497:
.LBE28:
	.loc 1 2004 0 discriminator 1
	cmpb	$0, -597(%rbp)	#, found
	jne	.L878	#,
	.loc 1 2736 0
	movq	%r13, %rax	# beglist, D.14099
	.loc 1 2737 0
	movq	-56(%rbp), %rcx	# D.14101, tmp1223
	xorq	%fs:40, %rcx	#, tmp1223
	je	.L880	#,
	call	__stack_chk_fail	#
.L880:
	addq	$600, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	S_pack_rec, .-S_pack_rec
	.section	.rodata
.LC50:
	.string	""
	.text
	.globl	Perl_pp_pack
	.type	Perl_pp_pack, @function
Perl_pp_pack:
.LFB17:
	.loc 1 2742 0
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
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 2743 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.639
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.640
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.642
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.642, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.641_5, D.14116
	cltq
	salq	$3, %rax	#, D.14117
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.643
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.644
	subq	%rax, %rdx	# PL_stack_base.645, D.14118
	movq	%rdx, %rax	# D.14118, D.14118
	sarq	$3, %rax	#, tmp102
	movl	%eax, -68(%rbp)	# D.14118, origmark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.646
	movq	PL_op(%rip), %rax	# PL_op, PL_op.647
	movq	24(%rax), %rax	# PL_op.647_18->op_targ, D.14117
	salq	$3, %rax	#, D.14117
	addq	%rdx, %rax	# PL_curpad.646, D.14119
	movq	(%rax), %rax	# *_21, tmp103
	movq	%rax, -56(%rbp)	# tmp103, targ
	.loc 1 2744 0
	movq	-56(%rbp), %r13	# targ, cat
	.loc 1 2746 0
	addq	$8, %rbx	#, mark
	movq	(%rbx), %rax	# *mark_24, PL_Sv.648
	movq	%rax, PL_Sv(%rip)	# PL_Sv.648, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.650
	movl	12(%rax), %eax	# PL_Sv.650_26->sv_flags, D.14120
	andl	$262144, %eax	#, D.14120
	testl	%eax, %eax	# D.14120
	je	.L906	#,
	.loc 1 2746 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.651
	movq	(%rax), %rax	# PL_Sv.651_29->sv_any, D.14121
	movq	8(%rax), %rax	# MEM[(struct XPV *)_30].xpv_cur, fromlen.652
	movq	%rax, -64(%rbp)	# fromlen.652, fromlen
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.653
	movq	(%rax), %rax	# PL_Sv.653_32->sv_any, D.14121
	movq	(%rax), %rax	# MEM[(struct XPV *)_33].xpv_pv, iftmp.649
	jmp	.L907	#
.L906:
	.loc 1 2746 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.654
	leaq	-64(%rbp), %rcx	#, tmp104
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# PL_Sv.654,
	call	Perl_sv_2pv_flags	#
.L907:
	.loc 1 2746 0 discriminator 3
	movq	%rax, %r14	# iftmp.649, pat
	.loc 1 2747 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# fromlen, fromlen.655
	leaq	(%r14,%rax), %r15	#, patend
	.loc 1 2749 0 discriminator 3
	addq	$8, %rbx	#, mark
	.loc 1 2750 0 discriminator 3
	movl	$0, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%r13, %rdi	# cat,
	call	Perl_sv_setpvn	#
	.loc 1 2752 0 discriminator 3
	leaq	8(%r12), %rax	#, D.14119
	movq	%rax, %r8	# D.14119,
	movq	%rbx, %rcx	# mark,
	movq	%r15, %rdx	# patend,
	movq	%r14, %rsi	# pat,
	movq	%r13, %rdi	# cat,
	call	Perl_packlist	#
	.loc 1 2754 0 discriminator 3
	movl	12(%r13), %eax	# cat_23->sv_flags, D.14120
	andl	$16384, %eax	#, D.14120
	testl	%eax, %eax	# D.14120
	je	.L908	#,
	.loc 1 2754 0 is_stmt 0 discriminator 1
	movq	%r13, %rdi	# cat,
	call	Perl_mg_set	#
.L908:
	.loc 1 2755 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.656
	movl	-68(%rbp), %edx	# origmark, tmp105
	movslq	%edx, %rdx	# tmp105, D.14117
	salq	$3, %rdx	#, D.14117
	leaq	(%rax,%rdx), %r12	#, sp
	.loc 1 2756 0
	addq	$8, %r12	#, sp
	movq	%r13, (%r12)	# cat, *sp_48
	.loc 1 2757 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.657
	movq	(%rax), %rax	# PL_op.657_49->op_next, D.14122
	.loc 1 2758 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_pp_pack, .-Perl_pp_pack
	.local	null10.10789
	.comm	null10.10789,10,1
	.section	.rodata
.LC51:
	.string	"          "
	.data
	.align 8
	.type	space10.10790, @object
	.size	space10.10790, 8
space10.10790:
	.quad	.LC51
	.section	.rodata
	.align 8
.LC29:
	.long	0
	.long	1089470464
	.align 8
.LC45:
	.long	0
	.long	1139802112
	.align 8
.LC47:
	.long	0
	.long	1080033280
	.text
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
	.file 21 "perlvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2651
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF408
	.byte	0x1
	.long	.LASF409
	.long	.LASF410
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
	.long	0x7f
	.long	0xac
	.uleb128 0x8
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x9
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0xc5
	.uleb128 0x9
	.long	0x7f
	.uleb128 0x7
	.long	0x7f
	.long	0xda
	.uleb128 0x8
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xe5
	.uleb128 0xb
	.long	.LASF186
	.uleb128 0xc
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xc
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xc
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0x10b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xd
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xc
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x129
	.uleb128 0xe
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x195
	.uleb128 0xf
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xe9a
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xe9a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xf1e
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xf08
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xd75
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xd75
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xd60
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xd60
	.byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x1a1
	.uleb128 0xe
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x26e
	.uleb128 0xf
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xe9a
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xe9a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xf1e
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xf08
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xd75
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xd75
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xd60
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xd60
	.byte	0x25
	.uleb128 0xf
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xf
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xe82
	.byte	0x30
	.uleb128 0xf
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xeb7
	.byte	0x38
	.uleb128 0xf
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xd8b
	.byte	0x40
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xd80
	.byte	0x44
	.uleb128 0xf
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xd96
	.byte	0x48
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xdb3
	.byte	0x50
	.uleb128 0xf
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xdb3
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x27a
	.uleb128 0x10
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x368
	.uleb128 0xf
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xe9a
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xe9a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xf1e
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xf08
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xd75
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xd75
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xd60
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xd60
	.byte	0x25
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xe9a
	.byte	0x28
	.uleb128 0x11
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xe9a
	.byte	0x30
	.uleb128 0x11
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xe9a
	.byte	0x38
	.uleb128 0x11
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xe9a
	.byte	0x40
	.uleb128 0x11
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xf24
	.byte	0x48
	.uleb128 0x11
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xf2a
	.byte	0x50
	.uleb128 0x11
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xd8b
	.byte	0x58
	.uleb128 0x11
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xd8b
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xd60
	.byte	0x60
	.uleb128 0x11
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xe82
	.byte	0x68
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x374
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x38f
	.uleb128 0x11
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x39a
	.uleb128 0xe
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3ca
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3d5
	.uleb128 0xe
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x405
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xe6a
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x410
	.uleb128 0xe
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x440
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xe70
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x44b
	.uleb128 0xe
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x47b
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xe64
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x487
	.uleb128 0x10
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x560
	.uleb128 0xf
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xe26
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xe26
	.byte	0x8
	.uleb128 0xf
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xe2c
	.byte	0x10
	.uleb128 0xf
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xe37
	.byte	0x18
	.uleb128 0xf
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xe42
	.byte	0x28
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xe48
	.byte	0x38
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xd80
	.byte	0x40
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xd80
	.byte	0x44
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xd80
	.byte	0x48
	.uleb128 0xf
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xd80
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xd8b
	.byte	0x50
	.uleb128 0xf
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xd8b
	.byte	0x54
	.uleb128 0xf
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xd8b
	.byte	0x58
	.uleb128 0xf
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xd8b
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xe4e
	.byte	0x60
	.byte	0
	.uleb128 0xc
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x56b
	.uleb128 0xe
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x607
	.uleb128 0xf
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xdb3
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xef7
	.byte	0x10
	.uleb128 0xf
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xeab
	.byte	0x18
	.uleb128 0xf
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xebd
	.byte	0x20
	.uleb128 0xf
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xe82
	.byte	0x28
	.uleb128 0xf
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xeb7
	.byte	0x30
	.uleb128 0xf
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xeab
	.byte	0x38
	.uleb128 0xf
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xd8b
	.byte	0x40
	.uleb128 0xf
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xd8b
	.byte	0x44
	.uleb128 0xf
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xd96
	.byte	0x48
	.uleb128 0xf
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x612
	.uleb128 0xe
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x642
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xe5e
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x672
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xe76
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xd8b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xd8b
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF81
	.byte	0x6
	.value	0x7f5
	.long	0x67e
	.uleb128 0x10
	.long	.LASF82
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6eb
	.uleb128 0xf
	.long	.LASF83
	.byte	0xc
	.byte	0x1b
	.long	0xe7c
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0x103b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xd75
	.byte	0x10
	.uleb128 0xf
	.long	.LASF86
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xf
	.long	.LASF87
	.byte	0xc
	.byte	0x1f
	.long	0xd60
	.byte	0x13
	.uleb128 0xf
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xdb3
	.byte	0x18
	.uleb128 0xf
	.long	.LASF89
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xf
	.long	.LASF90
	.byte	0xc
	.byte	0x22
	.long	0xd80
	.byte	0x28
	.byte	0
	.uleb128 0xc
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6f7
	.uleb128 0xe
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x728
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.byte	0xfb
	.long	0x112
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.byte	0xfc
	.long	0x112
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x6
	.value	0x7f8
	.long	0x734
	.uleb128 0x10
	.long	.LASF95
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x775
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x101
	.long	0x112
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x102
	.long	0x112
	.byte	0x10
	.uleb128 0x11
	.long	.LASF96
	.byte	0x9
	.value	0x103
	.long	0xea
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0x6
	.value	0x7f9
	.long	0x781
	.uleb128 0x12
	.long	.LASF98
	.byte	0x20
	.byte	0x9
	.value	0x106
	.long	0x7c3
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x107
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x108
	.long	0x112
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x109
	.long	0x112
	.byte	0x10
	.uleb128 0x11
	.long	.LASF99
	.byte	0x9
	.value	0x10a
	.long	0xf5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF100
	.byte	0x6
	.value	0x7fa
	.long	0x7cf
	.uleb128 0x12
	.long	.LASF101
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x81e
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x10f
	.long	0x112
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x110
	.long	0x112
	.byte	0x10
	.uleb128 0x11
	.long	.LASF96
	.byte	0x9
	.value	0x111
	.long	0xea
	.byte	0x18
	.uleb128 0x11
	.long	.LASF102
	.byte	0x9
	.value	0x112
	.long	0x100
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.long	.LASF103
	.byte	0x6
	.value	0x7fd
	.long	0x82a
	.uleb128 0x10
	.long	.LASF104
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x8af
	.uleb128 0xf
	.long	.LASF105
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xf
	.long	.LASF108
	.byte	0xd
	.byte	0xf
	.long	0xea
	.byte	0x18
	.uleb128 0xf
	.long	.LASF102
	.byte	0xd
	.byte	0x10
	.long	0x100
	.byte	0x20
	.uleb128 0xf
	.long	.LASF109
	.byte	0xd
	.byte	0x11
	.long	0xe7c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF110
	.byte	0xd
	.byte	0x12
	.long	0xe82
	.byte	0x30
	.uleb128 0xf
	.long	.LASF111
	.byte	0xd
	.byte	0x14
	.long	0xf30
	.byte	0x38
	.uleb128 0xf
	.long	.LASF112
	.byte	0xd
	.byte	0x15
	.long	0xdb3
	.byte	0x40
	.uleb128 0xf
	.long	.LASF113
	.byte	0xd
	.byte	0x16
	.long	0xd60
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.long	.LASF114
	.byte	0x6
	.value	0x7fe
	.long	0x8bb
	.uleb128 0x10
	.long	.LASF115
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x94c
	.uleb128 0xf
	.long	.LASF116
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF117
	.byte	0xe
	.byte	0x24
	.long	0x112
	.byte	0x8
	.uleb128 0xf
	.long	.LASF118
	.byte	0xe
	.byte	0x25
	.long	0x112
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0xe
	.byte	0x26
	.long	0xea
	.byte	0x18
	.uleb128 0xf
	.long	.LASF102
	.byte	0xe
	.byte	0x27
	.long	0x100
	.byte	0x20
	.uleb128 0xf
	.long	.LASF109
	.byte	0xe
	.byte	0x29
	.long	0xe7c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF110
	.byte	0xe
	.byte	0x2a
	.long	0xe82
	.byte	0x30
	.uleb128 0xf
	.long	.LASF120
	.byte	0xe
	.byte	0x2c
	.long	0xd80
	.byte	0x38
	.uleb128 0xf
	.long	.LASF121
	.byte	0xe
	.byte	0x2d
	.long	0xfb2
	.byte	0x40
	.uleb128 0xf
	.long	.LASF122
	.byte	0xe
	.byte	0x2e
	.long	0xf24
	.byte	0x48
	.uleb128 0xf
	.long	.LASF123
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF124
	.byte	0x6
	.value	0x7ff
	.long	0x958
	.uleb128 0x12
	.long	.LASF125
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa02
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x132
	.long	0x112
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x133
	.long	0x112
	.byte	0x10
	.uleb128 0x11
	.long	.LASF96
	.byte	0x9
	.value	0x134
	.long	0xea
	.byte	0x18
	.uleb128 0x11
	.long	.LASF102
	.byte	0x9
	.value	0x135
	.long	0x100
	.byte	0x20
	.uleb128 0x11
	.long	.LASF109
	.byte	0x9
	.value	0x136
	.long	0xe7c
	.byte	0x28
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x137
	.long	0xe82
	.byte	0x30
	.uleb128 0x11
	.long	.LASF126
	.byte	0x9
	.value	0x139
	.long	0xe88
	.byte	0x38
	.uleb128 0x11
	.long	.LASF127
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF128
	.byte	0x9
	.value	0x13b
	.long	0x112
	.byte	0x48
	.uleb128 0x11
	.long	.LASF129
	.byte	0x9
	.value	0x13c
	.long	0xe82
	.byte	0x50
	.uleb128 0x11
	.long	.LASF130
	.byte	0x9
	.value	0x13d
	.long	0xd60
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF131
	.byte	0x6
	.value	0x800
	.long	0xa0e
	.uleb128 0x10
	.long	.LASF132
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xaff
	.uleb128 0xf
	.long	.LASF91
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0xf
	.byte	0x10
	.long	0x112
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0xf
	.byte	0x11
	.long	0x112
	.byte	0x10
	.uleb128 0xf
	.long	.LASF108
	.byte	0xf
	.byte	0x12
	.long	0xea
	.byte	0x18
	.uleb128 0xf
	.long	.LASF102
	.byte	0xf
	.byte	0x13
	.long	0x100
	.byte	0x20
	.uleb128 0xf
	.long	.LASF109
	.byte	0xf
	.byte	0x14
	.long	0xe7c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF110
	.byte	0xf
	.byte	0x15
	.long	0xe82
	.byte	0x30
	.uleb128 0xf
	.long	.LASF133
	.byte	0xf
	.byte	0x17
	.long	0xe82
	.byte	0x38
	.uleb128 0xf
	.long	.LASF134
	.byte	0xf
	.byte	0x18
	.long	0xe9a
	.byte	0x40
	.uleb128 0xf
	.long	.LASF135
	.byte	0xf
	.byte	0x19
	.long	0xe9a
	.byte	0x48
	.uleb128 0xf
	.long	.LASF136
	.byte	0xf
	.byte	0x1a
	.long	0xeb1
	.byte	0x50
	.uleb128 0xf
	.long	.LASF137
	.byte	0xf
	.byte	0x1b
	.long	0xcb1
	.byte	0x58
	.uleb128 0xf
	.long	.LASF138
	.byte	0xf
	.byte	0x1c
	.long	0xeb7
	.byte	0x60
	.uleb128 0xf
	.long	.LASF139
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xf
	.long	.LASF140
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xf
	.long	.LASF141
	.byte	0xf
	.byte	0x1f
	.long	0xf13
	.byte	0x78
	.uleb128 0xf
	.long	.LASF142
	.byte	0xf
	.byte	0x20
	.long	0xeab
	.byte	0x80
	.uleb128 0xf
	.long	.LASF143
	.byte	0xf
	.byte	0x25
	.long	0xe8e
	.byte	0x88
	.uleb128 0xf
	.long	.LASF144
	.byte	0xf
	.byte	0x26
	.long	0xd8b
	.byte	0x8c
	.byte	0
	.uleb128 0xd
	.long	.LASF145
	.byte	0x6
	.value	0x803
	.long	0xb0b
	.uleb128 0x12
	.long	.LASF146
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xc44
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x172
	.long	0x112
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x173
	.long	0x112
	.byte	0x10
	.uleb128 0x11
	.long	.LASF96
	.byte	0x9
	.value	0x174
	.long	0xea
	.byte	0x18
	.uleb128 0x11
	.long	.LASF102
	.byte	0x9
	.value	0x175
	.long	0x100
	.byte	0x20
	.uleb128 0x11
	.long	.LASF109
	.byte	0x9
	.value	0x176
	.long	0xe7c
	.byte	0x28
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x177
	.long	0xe82
	.byte	0x30
	.uleb128 0x11
	.long	.LASF147
	.byte	0x9
	.value	0x179
	.long	0xeeb
	.byte	0x38
	.uleb128 0x11
	.long	.LASF148
	.byte	0x9
	.value	0x17a
	.long	0xeeb
	.byte	0x40
	.uleb128 0x11
	.long	.LASF149
	.byte	0x9
	.value	0x187
	.long	0xec3
	.byte	0x48
	.uleb128 0x11
	.long	.LASF150
	.byte	0x9
	.value	0x188
	.long	0xea
	.byte	0x50
	.uleb128 0x11
	.long	.LASF151
	.byte	0x9
	.value	0x189
	.long	0xea
	.byte	0x58
	.uleb128 0x11
	.long	.LASF152
	.byte	0x9
	.value	0x18a
	.long	0xea
	.byte	0x60
	.uleb128 0x11
	.long	.LASF153
	.byte	0x9
	.value	0x18b
	.long	0xea
	.byte	0x68
	.uleb128 0x11
	.long	.LASF154
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x11
	.long	.LASF155
	.byte	0x9
	.value	0x18d
	.long	0xeb7
	.byte	0x78
	.uleb128 0x11
	.long	.LASF156
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x11
	.long	.LASF157
	.byte	0x9
	.value	0x18f
	.long	0xeb7
	.byte	0x88
	.uleb128 0x11
	.long	.LASF158
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x11
	.long	.LASF159
	.byte	0x9
	.value	0x191
	.long	0xeb7
	.byte	0x98
	.uleb128 0x11
	.long	.LASF160
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF161
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF162
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x6
	.value	0x804
	.long	0xc50
	.uleb128 0x10
	.long	.LASF164
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xcb1
	.uleb128 0xf
	.long	.LASF165
	.byte	0xc
	.byte	0xf
	.long	0xfd2
	.byte	0
	.uleb128 0xf
	.long	.LASF166
	.byte	0xc
	.byte	0x10
	.long	0xfd2
	.byte	0x8
	.uleb128 0xf
	.long	.LASF167
	.byte	0xc
	.byte	0x11
	.long	0xfec
	.byte	0x10
	.uleb128 0xf
	.long	.LASF168
	.byte	0xc
	.byte	0x12
	.long	0xfd2
	.byte	0x18
	.uleb128 0xf
	.long	.LASF169
	.byte	0xc
	.byte	0x13
	.long	0xfd2
	.byte	0x20
	.uleb128 0xf
	.long	.LASF170
	.byte	0xc
	.byte	0x14
	.long	0x1015
	.byte	0x28
	.uleb128 0xf
	.long	.LASF171
	.byte	0xc
	.byte	0x16
	.long	0x1035
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xcbd
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xd1f
	.uleb128 0x14
	.long	.LASF172
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x14
	.long	.LASF173
	.byte	0x6
	.value	0x9f3
	.long	0xd80
	.uleb128 0x14
	.long	.LASF174
	.byte	0x6
	.value	0x9f4
	.long	0xea
	.uleb128 0x14
	.long	.LASF175
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF176
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x14
	.long	.LASF177
	.byte	0x6
	.value	0x9f7
	.long	0xdad
	.uleb128 0x14
	.long	.LASF178
	.byte	0x6
	.value	0x9f8
	.long	0xdad
	.byte	0
	.uleb128 0xd
	.long	.LASF179
	.byte	0x6
	.value	0x808
	.long	0xd2b
	.uleb128 0x12
	.long	.LASF180
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xd60
	.uleb128 0x11
	.long	.LASF181
	.byte	0x9
	.value	0x4ee
	.long	0xebd
	.byte	0
	.uleb128 0x11
	.long	.LASF182
	.byte	0x9
	.value	0x4ef
	.long	0xf5
	.byte	0x8
	.uleb128 0x11
	.long	.LASF183
	.byte	0x9
	.value	0x4f0
	.long	0xef1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0xa
	.string	"I16"
	.byte	0x10
	.byte	0x86
	.long	0x50
	.uleb128 0xa
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0xa
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0xa
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xd
	.long	.LASF184
	.byte	0x10
	.value	0x209
	.long	0xd8b
	.uleb128 0x15
	.long	0xdad
	.uleb128 0x16
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xda2
	.uleb128 0x6
	.byte	0x8
	.long	0x38f
	.uleb128 0x7
	.long	0x7f
	.long	0xdc9
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF185
	.byte	0x11
	.byte	0x63
	.long	0xdd4
	.uleb128 0xb
	.long	.LASF187
	.uleb128 0x5
	.long	.LASF188
	.byte	0x11
	.byte	0x65
	.long	0xde4
	.uleb128 0x6
	.byte	0x8
	.long	0xdc9
	.uleb128 0x10
	.long	.LASF189
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xe1b
	.uleb128 0xf
	.long	.LASF182
	.byte	0xa
	.byte	0x14
	.long	0xd60
	.byte	0
	.uleb128 0xf
	.long	.LASF190
	.byte	0xa
	.byte	0x15
	.long	0xd60
	.byte	0x1
	.uleb128 0xf
	.long	.LASF191
	.byte	0xa
	.byte	0x16
	.long	0xd75
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF189
	.byte	0xa
	.byte	0x19
	.long	0xdea
	.uleb128 0x6
	.byte	0x8
	.long	0xd80
	.uleb128 0x6
	.byte	0x8
	.long	0xe1b
	.uleb128 0xb
	.long	.LASF192
	.uleb128 0x6
	.byte	0x8
	.long	0xe32
	.uleb128 0xb
	.long	.LASF193
	.uleb128 0x6
	.byte	0x8
	.long	0xe3d
	.uleb128 0x6
	.byte	0x8
	.long	0xd8b
	.uleb128 0x7
	.long	0xe1b
	.long	0xe5e
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x94c
	.uleb128 0x6
	.byte	0x8
	.long	0xa02
	.uleb128 0x6
	.byte	0x8
	.long	0x81e
	.uleb128 0x6
	.byte	0x8
	.long	0x8af
	.uleb128 0x6
	.byte	0x8
	.long	0xaff
	.uleb128 0x6
	.byte	0x8
	.long	0x672
	.uleb128 0x6
	.byte	0x8
	.long	0x405
	.uleb128 0x6
	.byte	0x8
	.long	0x560
	.uleb128 0xd
	.long	.LASF194
	.byte	0x9
	.value	0x150
	.long	0xd75
	.uleb128 0x6
	.byte	0x8
	.long	0x11e
	.uleb128 0x15
	.long	0xeab
	.uleb128 0x16
	.long	0xeab
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x440
	.uleb128 0x6
	.byte	0x8
	.long	0xea0
	.uleb128 0x6
	.byte	0x8
	.long	0x607
	.uleb128 0x6
	.byte	0x8
	.long	0x3ca
	.uleb128 0x17
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xee5
	.uleb128 0x14
	.long	.LASF195
	.byte	0x9
	.value	0x185
	.long	0xee5
	.uleb128 0x14
	.long	.LASF196
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xda
	.uleb128 0x6
	.byte	0x8
	.long	0xdd9
	.uleb128 0x6
	.byte	0x8
	.long	0x368
	.uleb128 0x6
	.byte	0x8
	.long	0x642
	.uleb128 0x5
	.long	.LASF197
	.byte	0x12
	.byte	0x13
	.long	0x3ca
	.uleb128 0x5
	.long	.LASF198
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xefd
	.uleb128 0x18
	.long	0xe9a
	.uleb128 0x6
	.byte	0x8
	.long	0xf19
	.uleb128 0x6
	.byte	0x8
	.long	0x26e
	.uleb128 0x6
	.byte	0x8
	.long	0x47b
	.uleb128 0x6
	.byte	0x8
	.long	0xdb3
	.uleb128 0x6
	.byte	0x8
	.long	0x195
	.uleb128 0xa
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0xf46
	.uleb128 0xe
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0xf76
	.uleb128 0xf
	.long	.LASF199
	.byte	0xe
	.byte	0x11
	.long	0xfb2
	.byte	0
	.uleb128 0xf
	.long	.LASF200
	.byte	0xe
	.byte	0x12
	.long	0xfb8
	.byte	0x8
	.uleb128 0xf
	.long	.LASF201
	.byte	0xe
	.byte	0x13
	.long	0xdb3
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0xf81
	.uleb128 0xe
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0xfb2
	.uleb128 0xf
	.long	.LASF202
	.byte	0xe
	.byte	0x18
	.long	0xd8b
	.byte	0
	.uleb128 0xf
	.long	.LASF203
	.byte	0xe
	.byte	0x19
	.long	0xd80
	.byte	0x4
	.uleb128 0xf
	.long	.LASF204
	.byte	0xe
	.byte	0x1a
	.long	0xdb9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf3c
	.uleb128 0x6
	.byte	0x8
	.long	0xf76
	.uleb128 0x19
	.long	0x57
	.long	0xfd2
	.uleb128 0x16
	.long	0xdb3
	.uleb128 0x16
	.long	0xe7c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfbe
	.uleb128 0x19
	.long	0xd8b
	.long	0xfec
	.uleb128 0x16
	.long	0xdb3
	.uleb128 0x16
	.long	0xe7c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd8
	.uleb128 0x19
	.long	0x57
	.long	0x1015
	.uleb128 0x16
	.long	0xdb3
	.uleb128 0x16
	.long	0xe7c
	.uleb128 0x16
	.long	0xdb3
	.uleb128 0x16
	.long	0xbf
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xff2
	.uleb128 0x19
	.long	0x57
	.long	0x102f
	.uleb128 0x16
	.long	0xe7c
	.uleb128 0x16
	.long	0x102f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd1f
	.uleb128 0x6
	.byte	0x8
	.long	0x101b
	.uleb128 0x6
	.byte	0x8
	.long	0xc44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF205
	.uleb128 0x1a
	.byte	0x4
	.byte	0x6
	.value	0xec3
	.long	0x1064
	.uleb128 0x1b
	.long	.LASF206
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF207
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF208
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.long	.LASF209
	.byte	0x6
	.value	0xec7
	.long	0x1048
	.uleb128 0x1c
	.byte	0x38
	.byte	0x6
	.value	0xec9
	.long	0x10ef
	.uleb128 0x11
	.long	.LASF210
	.byte	0x6
	.value	0xeca
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF211
	.byte	0x6
	.value	0xecb
	.long	0x79
	.byte	0x8
	.uleb128 0x11
	.long	.LASF212
	.byte	0x6
	.value	0xecc
	.long	0x79
	.byte	0x10
	.uleb128 0x11
	.long	.LASF213
	.byte	0x6
	.value	0xecd
	.long	0x79
	.byte	0x18
	.uleb128 0x11
	.long	.LASF214
	.byte	0x6
	.value	0xece
	.long	0xd80
	.byte	0x20
	.uleb128 0x11
	.long	.LASF215
	.byte	0x6
	.value	0xecf
	.long	0xd80
	.byte	0x24
	.uleb128 0x11
	.long	.LASF216
	.byte	0x6
	.value	0xed0
	.long	0x1064
	.byte	0x28
	.uleb128 0x11
	.long	.LASF217
	.byte	0x6
	.value	0xed1
	.long	0x57
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF182
	.byte	0x6
	.value	0xed2
	.long	0xd8b
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF218
	.byte	0x6
	.value	0xed4
	.long	0x1070
	.uleb128 0x1a
	.byte	0x4
	.byte	0x6
	.value	0xfb1
	.long	0x129a
	.uleb128 0x1b
	.long	.LASF219
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF220
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF221
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF222
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF223
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF224
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF225
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF226
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF227
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF228
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF229
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF230
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF231
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF232
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF233
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF234
	.sleb128 15
	.uleb128 0x1b
	.long	.LASF235
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF236
	.sleb128 17
	.uleb128 0x1b
	.long	.LASF237
	.sleb128 18
	.uleb128 0x1b
	.long	.LASF238
	.sleb128 19
	.uleb128 0x1b
	.long	.LASF239
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF240
	.sleb128 21
	.uleb128 0x1b
	.long	.LASF241
	.sleb128 22
	.uleb128 0x1b
	.long	.LASF242
	.sleb128 23
	.uleb128 0x1b
	.long	.LASF243
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF244
	.sleb128 25
	.uleb128 0x1b
	.long	.LASF245
	.sleb128 26
	.uleb128 0x1b
	.long	.LASF246
	.sleb128 27
	.uleb128 0x1b
	.long	.LASF247
	.sleb128 28
	.uleb128 0x1b
	.long	.LASF248
	.sleb128 29
	.uleb128 0x1b
	.long	.LASF249
	.sleb128 30
	.uleb128 0x1b
	.long	.LASF250
	.sleb128 31
	.uleb128 0x1b
	.long	.LASF251
	.sleb128 32
	.uleb128 0x1b
	.long	.LASF252
	.sleb128 33
	.uleb128 0x1b
	.long	.LASF253
	.sleb128 34
	.uleb128 0x1b
	.long	.LASF254
	.sleb128 35
	.uleb128 0x1b
	.long	.LASF255
	.sleb128 36
	.uleb128 0x1b
	.long	.LASF256
	.sleb128 37
	.uleb128 0x1b
	.long	.LASF257
	.sleb128 38
	.uleb128 0x1b
	.long	.LASF258
	.sleb128 39
	.uleb128 0x1b
	.long	.LASF259
	.sleb128 40
	.uleb128 0x1b
	.long	.LASF260
	.sleb128 41
	.uleb128 0x1b
	.long	.LASF261
	.sleb128 42
	.uleb128 0x1b
	.long	.LASF262
	.sleb128 43
	.uleb128 0x1b
	.long	.LASF263
	.sleb128 44
	.uleb128 0x1b
	.long	.LASF264
	.sleb128 45
	.uleb128 0x1b
	.long	.LASF265
	.sleb128 46
	.uleb128 0x1b
	.long	.LASF266
	.sleb128 47
	.uleb128 0x1b
	.long	.LASF267
	.sleb128 48
	.uleb128 0x1b
	.long	.LASF268
	.sleb128 49
	.uleb128 0x1b
	.long	.LASF269
	.sleb128 50
	.uleb128 0x1b
	.long	.LASF270
	.sleb128 51
	.uleb128 0x1b
	.long	.LASF271
	.sleb128 52
	.uleb128 0x1b
	.long	.LASF272
	.sleb128 53
	.uleb128 0x1b
	.long	.LASF273
	.sleb128 54
	.uleb128 0x1b
	.long	.LASF274
	.sleb128 55
	.uleb128 0x1b
	.long	.LASF275
	.sleb128 56
	.uleb128 0x1b
	.long	.LASF276
	.sleb128 57
	.uleb128 0x1b
	.long	.LASF277
	.sleb128 58
	.uleb128 0x1b
	.long	.LASF278
	.sleb128 59
	.uleb128 0x1b
	.long	.LASF279
	.sleb128 60
	.uleb128 0x1b
	.long	.LASF280
	.sleb128 61
	.uleb128 0x1b
	.long	.LASF281
	.sleb128 62
	.uleb128 0x1b
	.long	.LASF282
	.sleb128 63
	.uleb128 0x1b
	.long	.LASF283
	.sleb128 64
	.uleb128 0x1b
	.long	.LASF284
	.sleb128 65
	.uleb128 0x1b
	.long	.LASF285
	.sleb128 66
	.byte	0
	.uleb128 0x12
	.long	.LASF286
	.byte	0x10
	.byte	0x1
	.value	0x117
	.long	0x12cf
	.uleb128 0x11
	.long	.LASF287
	.byte	0x1
	.value	0x118
	.long	0x12cf
	.byte	0
	.uleb128 0x11
	.long	.LASF288
	.byte	0x1
	.value	0x119
	.long	0x57
	.byte	0x8
	.uleb128 0x11
	.long	.LASF289
	.byte	0x1
	.value	0x11a
	.long	0x57
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12d5
	.uleb128 0x9
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF291
	.byte	0x1
	.byte	0x63
	.long	0xdb3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1369
	.uleb128 0x1e
	.string	"sv"
	.byte	0x1
	.byte	0x63
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x63
	.long	0xd60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x65
	.long	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x66
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.byte	0x67
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x68
	.long	0xd8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF290
	.byte	0x1
	.byte	0x6b
	.long	0xdb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF292
	.byte	0x1
	.value	0x1e9
	.long	0xd80
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1428
	.uleb128 0x23
	.long	.LASF293
	.byte	0x1
	.value	0x1e9
	.long	0x1428
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x1eb
	.long	0xd80
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF294
	.byte	0x1
	.value	0x1ec
	.long	0xd80
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x25
	.long	.LASF295
	.byte	0x1
	.value	0x1ed
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x25
	.long	.LASF289
	.byte	0x1
	.value	0x1ef
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.long	.LASF296
	.byte	0x1
	.value	0x1f2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x25
	.long	.LASF297
	.byte	0x1
	.value	0x1f4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.value	0x21b
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10ef
	.uleb128 0x22
	.long	.LASF299
	.byte	0x1
	.value	0x25f
	.long	0x79
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x149b
	.uleb128 0x23
	.long	.LASF210
	.byte	0x1
	.value	0x25f
	.long	0x79
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x25f
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF300
	.byte	0x1
	.value	0x25f
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.value	0x262
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF301
	.byte	0x1
	.value	0x27c
	.long	0x79
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ea
	.uleb128 0x23
	.long	.LASF210
	.byte	0x1
	.value	0x27c
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF302
	.byte	0x1
	.value	0x27c
	.long	0xe26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x27e
	.long	0xd80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF303
	.byte	0x1
	.value	0x28c
	.long	0x7f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x15e3
	.uleb128 0x23
	.long	.LASF293
	.byte	0x1
	.value	0x28c
	.long	0x1428
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF210
	.byte	0x1
	.value	0x28e
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF211
	.byte	0x1
	.value	0x28f
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.long	.LASF214
	.byte	0x1
	.value	0x29e
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x25
	.long	.LASF304
	.byte	0x1
	.value	0x29f
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x159d
	.uleb128 0x25
	.long	.LASF305
	.byte	0x1
	.value	0x2bf
	.long	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF306
	.byte	0x1
	.value	0x2c0
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x25
	.long	.LASF302
	.byte	0x1
	.value	0x2fe
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.value	0x308
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF311
	.byte	0x1
	.value	0x341
	.long	0xd80
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x168e
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x341
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x341
	.long	0x79
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x341
	.long	0x79
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.long	.LASF307
	.byte	0x1
	.value	0x341
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF308
	.byte	0x1
	.value	0x341
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF309
	.byte	0x1
	.value	0x341
	.long	0x168e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF310
	.byte	0x1
	.value	0x341
	.long	0xd80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF182
	.byte	0x1
	.value	0x341
	.long	0xd8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"sym"
	.byte	0x1
	.value	0x343
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x27
	.long	.LASF312
	.byte	0x1
	.value	0x355
	.long	0xd80
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1711
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x355
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x355
	.long	0x79
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x355
	.long	0x79
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x23
	.long	.LASF308
	.byte	0x1
	.value	0x355
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF182
	.byte	0x1
	.value	0x355
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.string	"sym"
	.byte	0x1
	.value	0x357
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.long	.LASF313
	.byte	0x1
	.value	0x361
	.long	0xd80
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd9
	.uleb128 0x23
	.long	.LASF293
	.byte	0x1
	.value	0x361
	.long	0x1428
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x361
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF307
	.byte	0x1
	.value	0x361
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x23
	.long	.LASF308
	.byte	0x1
	.value	0x361
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x23
	.long	.LASF309
	.byte	0x1
	.value	0x361
	.long	0x168e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x363
	.long	0xf30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0x364
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x365
	.long	0xd80
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF315
	.byte	0x1
	.value	0x366
	.long	0xd80
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.value	0x367
	.long	0x79
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x368
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x25
	.long	.LASF316
	.byte	0x1
	.value	0x369
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x25
	.long	.LASF216
	.byte	0x1
	.value	0x36a
	.long	0x1064
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x25
	.long	.LASF317
	.byte	0x1
	.value	0x36d
	.long	0xd6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x25
	.long	.LASF318
	.byte	0x1
	.value	0x36e
	.long	0xd75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -378
	.uleb128 0x25
	.long	.LASF319
	.byte	0x1
	.value	0x36f
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x25
	.long	.LASF320
	.byte	0x1
	.value	0x370
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x25
	.long	.LASF321
	.byte	0x1
	.value	0x372
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x25
	.long	.LASF322
	.byte	0x1
	.value	0x373
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.long	.LASF323
	.byte	0x1
	.value	0x379
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x25
	.long	.LASF324
	.byte	0x1
	.value	0x37a
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x25
	.long	.LASF325
	.byte	0x1
	.value	0x37b
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x25
	.long	.LASF326
	.byte	0x1
	.value	0x37d
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x25
	.long	.LASF327
	.byte	0x1
	.value	0x37f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x25
	.long	.LASF328
	.byte	0x1
	.value	0x380
	.long	0x1041
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x25
	.long	.LASF329
	.byte	0x1
	.value	0x381
	.long	0x10b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x24
	.string	"aiv"
	.byte	0x1
	.value	0x385
	.long	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.string	"auv"
	.byte	0x1
	.value	0x386
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.string	"anv"
	.byte	0x1
	.value	0x387
	.long	0x100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.long	.LASF330
	.byte	0x1
	.value	0x389
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x24
	.string	"cuv"
	.byte	0x1
	.value	0x38a
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x25
	.long	.LASF331
	.byte	0x1
	.value	0x38b
	.long	0x100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.long	.LASF332
	.byte	0x1
	.value	0x38c
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.long	.LASF333
	.byte	0x1
	.value	0x38d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF334
	.byte	0x1
	.value	0x38e
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -383
	.uleb128 0x25
	.long	.LASF335
	.byte	0x1
	.value	0x38f
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x25
	.long	.LASF336
	.byte	0x1
	.value	0x390
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -382
	.uleb128 0x29
	.long	.LASF337
	.byte	0x1
	.value	0x3a7
	.quad	.L149
	.uleb128 0x29
	.long	.LASF338
	.byte	0x1
	.value	0x4a6
	.quad	.L205
	.uleb128 0x29
	.long	.LASF339
	.byte	0x1
	.value	0x49f
	.quad	.L163
	.uleb128 0x26
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1a3d
	.uleb128 0x25
	.long	.LASF296
	.byte	0x1
	.value	0x3aa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x25
	.long	.LASF340
	.byte	0x1
	.value	0x3ac
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x25
	.long	.LASF297
	.byte	0x1
	.value	0x3ad
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x20
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.long	.LASF57
	.byte	0x1
	.value	0x3b1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -381
	.uleb128 0x20
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF289
	.byte	0x1
	.value	0x3b5
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.long	.LASF341
	.byte	0x1
	.value	0x3b6
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1a82
	.uleb128 0x24
	.string	"ss"
	.byte	0x1
	.value	0x3da
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.value	0x3db
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.long	.LASF342
	.byte	0x1
	.value	0x3dc
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1aa8
	.uleb128 0x25
	.long	.LASF343
	.byte	0x1
	.value	0x4bf
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x26
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1b0e
	.uleb128 0x24
	.string	"auv"
	.byte	0x1
	.value	0x5ea
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.long	.LASF344
	.byte	0x1
	.value	0x5eb
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x20
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.value	0x5f7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.string	"n_a"
	.byte	0x1
	.value	0x5f8
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1b32
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x67c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1b90
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x68c
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x68c
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.value	0x68c
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x24
	.string	"d"
	.byte	0x1
	.value	0x68c
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x25
	.long	.LASF345
	.byte	0x1
	.value	0x68d
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x26
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x1bb6
	.uleb128 0x25
	.long	.LASF346
	.byte	0x1
	.value	0x6b6
	.long	0x100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x20
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x25
	.long	.LASF347
	.byte	0x1
	.value	0x6c4
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF348
	.byte	0x1
	.value	0x6eb
	.long	0xe9a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c9d
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x6ed
	.long	0xf30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF349
	.byte	0x1
	.value	0x6ee
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF350
	.byte	0x1
	.value	0x6ee
	.long	0xdb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF351
	.byte	0x1
	.value	0x6ef
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.long	.LASF352
	.byte	0x1
	.value	0x6f0
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF353
	.byte	0x1
	.value	0x6f1
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0x6f2
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x6f9
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF308
	.byte	0x1
	.value	0x6fb
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF211
	.byte	0x1
	.value	0x6fc
	.long	0x79
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"cnt"
	.byte	0x1
	.value	0x6fd
	.long	0xd80
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2a
	.long	.LASF411
	.byte	0x1
	.value	0x70b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d12
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x70b
	.long	0xdb3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x70b
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x70b
	.long	0xd80
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF345
	.byte	0x1
	.value	0x70d
	.long	0x1d12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x24
	.string	"r"
	.byte	0x1
	.value	0x71c
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x7f
	.long	0x1d22
	.uleb128 0x8
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.long	.LASF354
	.byte	0x1
	.value	0x727
	.long	0xdb3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dbb
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x727
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"l"
	.byte	0x1
	.value	0x727
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"n_a"
	.byte	0x1
	.value	0x729
	.long	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF355
	.byte	0x1
	.value	0x72a
	.long	0xdb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF356
	.byte	0x1
	.value	0x72b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0x72c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF357
	.byte	0x1
	.value	0x72d
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x25
	.long	.LASF358
	.byte	0x1
	.value	0x72e
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x22
	.long	.LASF359
	.byte	0x1
	.value	0x759
	.long	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e60
	.uleb128 0x23
	.long	.LASF360
	.byte	0x1
	.value	0x759
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF361
	.byte	0x1
	.value	0x759
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x75b
	.long	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x75c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.value	0x75d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"r"
	.byte	0x1
	.value	0x75e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.value	0x75f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x763
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF365
	.byte	0x1
	.value	0x77e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1efa
	.uleb128 0x28
	.string	"cat"
	.byte	0x1
	.value	0x77e
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x77e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x77e
	.long	0x79
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.long	.LASF362
	.byte	0x1
	.value	0x77e
	.long	0xf30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x23
	.long	.LASF363
	.byte	0x1
	.value	0x77e
	.long	0xf30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF364
	.byte	0x1
	.value	0x77e
	.long	0x1efa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF182
	.byte	0x1
	.value	0x77e
	.long	0xd8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"sym"
	.byte	0x1
	.value	0x780
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf30
	.uleb128 0x2b
	.long	.LASF366
	.byte	0x1
	.value	0x792
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7b
	.uleb128 0x28
	.string	"cat"
	.byte	0x1
	.value	0x792
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x792
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x792
	.long	0x79
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x23
	.long	.LASF362
	.byte	0x1
	.value	0x792
	.long	0xf30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.long	.LASF363
	.byte	0x1
	.value	0x792
	.long	0xf30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"sym"
	.byte	0x1
	.value	0x794
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.long	.LASF367
	.byte	0x1
	.value	0x79f
	.long	0xf30
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2450
	.uleb128 0x28
	.string	"cat"
	.byte	0x1
	.value	0x79f
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x23
	.long	.LASF293
	.byte	0x1
	.value	0x79f
	.long	0x1428
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x23
	.long	.LASF362
	.byte	0x1
	.value	0x79f
	.long	0xf30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.long	.LASF363
	.byte	0x1
	.value	0x79f
	.long	0xf30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.long	.LASF368
	.byte	0x1
	.value	0x7a1
	.long	0xd80
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF369
	.byte	0x1
	.value	0x7a2
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x7a3
	.long	0xd80
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF370
	.byte	0x1
	.value	0x7a4
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x25
	.long	.LASF371
	.byte	0x1
	.value	0x7a6
	.long	0x2450
	.uleb128 0x9
	.byte	0x3
	.quad	null10.10789
	.uleb128 0x25
	.long	.LASF372
	.byte	0x1
	.value	0x7a7
	.long	0x79
	.uleb128 0x9
	.byte	0x3
	.quad	space10.10790
	.uleb128 0x25
	.long	.LASF373
	.byte	0x1
	.value	0x7a8
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -613
	.uleb128 0x25
	.long	.LASF374
	.byte	0x1
	.value	0x7ab
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -615
	.uleb128 0x25
	.long	.LASF317
	.byte	0x1
	.value	0x7ac
	.long	0xd6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x25
	.long	.LASF318
	.byte	0x1
	.value	0x7ad
	.long	0xd75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -610
	.uleb128 0x25
	.long	.LASF319
	.byte	0x1
	.value	0x7ae
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x25
	.long	.LASF320
	.byte	0x1
	.value	0x7af
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x25
	.long	.LASF321
	.byte	0x1
	.value	0x7b1
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x25
	.long	.LASF322
	.byte	0x1
	.value	0x7b2
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x25
	.long	.LASF323
	.byte	0x1
	.value	0x7b8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x25
	.long	.LASF324
	.byte	0x1
	.value	0x7b9
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x25
	.long	.LASF325
	.byte	0x1
	.value	0x7bb
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x25
	.long	.LASF326
	.byte	0x1
	.value	0x7bc
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x25
	.long	.LASF327
	.byte	0x1
	.value	0x7be
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x25
	.long	.LASF328
	.byte	0x1
	.value	0x7bf
	.long	0x1041
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x25
	.long	.LASF329
	.byte	0x1
	.value	0x7c0
	.long	0x10b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x24
	.string	"aiv"
	.byte	0x1
	.value	0x7c4
	.long	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x24
	.string	"auv"
	.byte	0x1
	.value	0x7c5
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x24
	.string	"anv"
	.byte	0x1
	.value	0x7c6
	.long	0x100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x25
	.long	.LASF333
	.byte	0x1
	.value	0x7c8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x25
	.long	.LASF375
	.byte	0x1
	.value	0x7c9
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x29
	.long	.LASF376
	.byte	0x1
	.value	0x82b
	.quad	.L543
	.uleb128 0x29
	.long	.LASF377
	.byte	0x1
	.value	0x81a
	.quad	.L530
	.uleb128 0x20
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x25
	.long	.LASF378
	.byte	0x1
	.value	0x7d5
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0x7d8
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x25
	.long	.LASF216
	.byte	0x1
	.value	0x7d9
	.long	0x1064
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x26
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2218
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.value	0x804
	.long	0x10ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.long	.LASF342
	.byte	0x1
	.value	0x805
	.long	0xd8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.byte	0
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x224c
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.value	0x857
	.long	0x79
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF379
	.byte	0x1
	.value	0x858
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x2280
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.value	0x88f
	.long	0x79
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF379
	.byte	0x1
	.value	0x890
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.uleb128 0x26
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x22c5
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x9c1
	.long	0x2450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x9c2
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x24
	.string	"auv"
	.byte	0x1
	.value	0x9c3
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.byte	0
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x233a
	.uleb128 0x25
	.long	.LASF380
	.byte	0x1
	.value	0x9cd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x25
	.long	.LASF355
	.byte	0x1
	.value	0x9cd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x9cd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.value	0x9ce
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x9cf
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.long	.LASF361
	.byte	0x1
	.value	0x9d0
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -614
	.byte	0
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2391
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x9ee
	.long	0x2460
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x9f3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x20
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x25
	.long	.LASF382
	.byte	0x1
	.value	0x9f7
	.long	0x100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x2406
	.uleb128 0x25
	.long	.LASF380
	.byte	0x1
	.value	0xa01
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.long	.LASF355
	.byte	0x1
	.value	0xa01
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0xa01
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.value	0xa02
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0xa03
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.long	.LASF361
	.byte	0x1
	.value	0xa04
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -614
	.byte	0
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x242c
	.uleb128 0x24
	.string	"n_a"
	.byte	0x1
	.value	0xa83
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x20
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x25
	.long	.LASF383
	.byte	0x1
	.value	0xaa2
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x7f
	.long	0x2460
	.uleb128 0x8
	.long	0x65
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.long	0x7f
	.long	0x2470
	.uleb128 0x8
	.long	0x65
	.byte	0x9a
	.byte	0
	.uleb128 0x27
	.long	.LASF384
	.byte	0x1
	.value	0xab5
	.long	0xe9a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2508
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0xab7
	.long	0xf30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF385
	.byte	0x1
	.value	0xab7
	.long	0xf30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF386
	.byte	0x1
	.value	0xab7
	.long	0xd80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	.LASF387
	.byte	0x1
	.value	0xab7
	.long	0xdb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"cat"
	.byte	0x1
	.value	0xab8
	.long	0xdb3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF369
	.byte	0x1
	.value	0xab9
	.long	0x112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0xaba
	.long	0x79
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x25
	.long	.LASF211
	.byte	0x1
	.value	0xabb
	.long	0x79
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x7
	.long	0x7f
	.long	0x2518
	.uleb128 0x8
	.long	0x65
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x6
	.value	0xd0c
	.long	0x2524
	.uleb128 0x9
	.long	0x2508
	.uleb128 0x2d
	.long	.LASF389
	.byte	0x13
	.byte	0x34
	.long	0xd60
	.uleb128 0x2c
	.long	.LASF390
	.byte	0x13
	.value	0x125
	.long	0x38f
	.uleb128 0x2c
	.long	.LASF391
	.byte	0x13
	.value	0x126
	.long	0x38f
	.uleb128 0x2c
	.long	.LASF392
	.byte	0x13
	.value	0x1a0
	.long	0xca
	.uleb128 0x2c
	.long	.LASF393
	.byte	0x13
	.value	0x1a1
	.long	0x79
	.uleb128 0x2d
	.long	.LASF394
	.byte	0x14
	.byte	0x22
	.long	0xf30
	.uleb128 0x2d
	.long	.LASF395
	.byte	0x14
	.byte	0x26
	.long	0xe9a
	.uleb128 0x2d
	.long	.LASF396
	.byte	0x14
	.byte	0x28
	.long	0xf30
	.uleb128 0x2d
	.long	.LASF397
	.byte	0x14
	.byte	0x2a
	.long	0xf30
	.uleb128 0x2d
	.long	.LASF398
	.byte	0x14
	.byte	0x2b
	.long	0xf30
	.uleb128 0x2d
	.long	.LASF399
	.byte	0x14
	.byte	0x37
	.long	0xd80
	.uleb128 0x2d
	.long	.LASF400
	.byte	0x14
	.byte	0x39
	.long	0xd80
	.uleb128 0x2d
	.long	.LASF401
	.byte	0x14
	.byte	0x3c
	.long	0xe26
	.uleb128 0x2d
	.long	.LASF402
	.byte	0x14
	.byte	0x43
	.long	0xdb3
	.uleb128 0x2d
	.long	.LASF403
	.byte	0x14
	.byte	0x81
	.long	0x25d2
	.uleb128 0x2e
	.long	0xf36
	.uleb128 0x2d
	.long	.LASF404
	.byte	0x15
	.byte	0x25
	.long	0xbf
	.uleb128 0x7
	.long	0x2d
	.long	0x25f2
	.uleb128 0x8
	.long	0x65
	.byte	0x34
	.byte	0
	.uleb128 0x2f
	.long	.LASF405
	.byte	0x1
	.value	0x124
	.long	0x25e2
	.uleb128 0x9
	.byte	0x3
	.quad	size_normal
	.uleb128 0x7
	.long	0x2d
	.long	0x2618
	.uleb128 0x8
	.long	0x65
	.byte	0x2d
	.byte	0
	.uleb128 0x2f
	.long	.LASF406
	.byte	0x1
	.value	0x158
	.long	0x2608
	.uleb128 0x9
	.byte	0x3
	.quad	size_shrieking
	.uleb128 0x7
	.long	0x129a
	.long	0x263e
	.uleb128 0x8
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.long	.LASF407
	.byte	0x1
	.value	0x17d
	.long	0x262e
	.uleb128 0x9
	.byte	0x3
	.quad	packsize
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF237:
	.string	"lshift_amg"
.LASF322:
	.string	"auquad"
.LASF336:
	.string	"unpack_only_one"
.LASF27:
	.string	"cop_seq"
.LASF158:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF312:
	.string	"Perl_unpackstring"
.LASF298:
	.string	"savsym"
.LASF17:
	.string	"op_sibling"
.LASF380:
	.string	"from"
.LASF311:
	.string	"Perl_unpack_str"
.LASF410:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF131:
	.string	"XPVCV"
.LASF398:
	.string	"PL_stack_max"
.LASF165:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF161:
	.string	"xio_type"
.LASF346:
	.string	"trouble"
.LASF392:
	.string	"PL_uudmap"
.LASF272:
	.string	"repeat_ass_amg"
.LASF132:
	.string	"xpvcv"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF182:
	.string	"flags"
.LASF117:
	.string	"xhv_fill"
.LASF80:
	.string	"gp_file"
.LASF290:
	.string	"tmpNew"
.LASF372:
	.string	"space10"
.LASF162:
	.string	"xio_flags"
.LASF286:
	.string	"packsize_t"
.LASF382:
	.string	"next"
.LASF383:
	.string	"todo"
.LASF406:
	.string	"size_shrieking"
.LASF253:
	.string	"ncmp_amg"
.LASF261:
	.string	"not_amg"
.LASF307:
	.string	"strbeg"
.LASF284:
	.string	"DESTROY_amg"
.LASF255:
	.string	"slt_amg"
.LASF343:
	.string	"alen"
.LASF189:
	.string	"regnode"
.LASF228:
	.string	"subtr_ass_amg"
.LASF176:
	.string	"any_bool"
.LASF403:
	.string	"PL_curcop"
.LASF152:
	.string	"xio_page_len"
.LASF39:
	.string	"op_pmregexp"
.LASF257:
	.string	"sgt_amg"
.LASF217:
	.string	"level"
.LASF243:
	.string	"bor_amg"
.LASF384:
	.string	"Perl_pp_pack"
.LASF56:
	.string	"precomp"
.LASF224:
	.string	"numer_amg"
.LASF113:
	.string	"xav_flags"
.LASF363:
	.string	"endlist"
.LASF326:
	.string	"aulong"
.LASF53:
	.string	"endp"
.LASF100:
	.string	"XPVNV"
.LASF213:
	.string	"grpend"
.LASF10:
	.string	"ssize_t"
.LASF369:
	.string	"fromlen"
.LASF187:
	.string	"_PerlIO"
.LASF402:
	.string	"PL_Sv"
.LASF373:
	.string	"found"
.LASF260:
	.string	"sne_amg"
.LASF235:
	.string	"pow_amg"
.LASF136:
	.string	"xcv_xsub"
.LASF339:
	.string	"unpack_C"
.LASF364:
	.string	"next_in_list"
.LASF227:
	.string	"subtr_amg"
.LASF262:
	.string	"compl_amg"
.LASF83:
	.string	"mg_moremagic"
.LASF334:
	.string	"beyond"
.LASF248:
	.string	"le_amg"
.LASF76:
	.string	"gp_cv"
.LASF318:
	.string	"au16"
.LASF282:
	.string	"iter_amg"
.LASF321:
	.string	"aquad"
.LASF188:
	.string	"PerlIO"
.LASF97:
	.string	"XPVUV"
.LASF221:
	.string	"bool__amg"
.LASF179:
	.string	"CLONE_PARAMS"
.LASF205:
	.string	"float"
.LASF119:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF399:
	.string	"PL_tmps_ix"
.LASF330:
	.string	"checksum"
.LASF234:
	.string	"modulo_ass_amg"
.LASF358:
	.string	"ignore"
.LASF300:
	.string	"ender"
.LASF164:
	.string	"mgvtbl"
.LASF139:
	.string	"xcv_file"
.LASF98:
	.string	"xpvuv"
.LASF231:
	.string	"div_amg"
.LASF242:
	.string	"band_ass_amg"
.LASF355:
	.string	"result"
.LASF12:
	.string	"long long unsigned int"
.LASF357:
	.string	"skip"
.LASF193:
	.string	"reg_data"
.LASF102:
	.string	"xnv_nv"
.LASF180:
	.string	"clone_params"
.LASF192:
	.string	"reg_substr_data"
.LASF185:
	.string	"PerlIOl"
.LASF85:
	.string	"mg_private"
.LASF96:
	.string	"xiv_iv"
.LASF8:
	.string	"char"
.LASF130:
	.string	"xgv_flags"
.LASF150:
	.string	"xio_lines"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF91:
	.string	"xpv_pv"
.LASF124:
	.string	"XPVGV"
.LASF295:
	.string	"star"
.LASF367:
	.string	"S_pack_rec"
.LASF345:
	.string	"hunk"
.LASF153:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF202:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF197:
	.string	"PADLIST"
.LASF313:
	.string	"S_unpack_rec"
.LASF341:
	.string	"howmany"
.LASF125:
	.string	"xpvgv"
.LASF184:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF90:
	.string	"mg_len"
.LASF208:
	.string	"e_star"
.LASF297:
	.string	"offset"
.LASF256:
	.string	"sle_amg"
.LASF337:
	.string	"redo_switch"
.LASF140:
	.string	"xcv_depth"
.LASF320:
	.string	"au32"
.LASF157:
	.string	"xio_fmt_gv"
.LASF396:
	.string	"PL_curpad"
.LASF204:
	.string	"hek_key"
.LASF359:
	.string	"S_div128"
.LASF270:
	.string	"sqrt_amg"
.LASF68:
	.string	"program"
.LASF258:
	.string	"sge_amg"
.LASF71:
	.string	"gp_io"
.LASF114:
	.string	"XPVHV"
.LASF122:
	.string	"xhv_pmroot"
.LASF280:
	.string	"to_gv_amg"
.LASF344:
	.string	"bytes"
.LASF279:
	.string	"to_hv_amg"
.LASF212:
	.string	"grpbeg"
.LASF391:
	.string	"PL_sv_no"
.LASF214:
	.string	"code"
.LASF149:
	.string	"xio_dirpu"
.LASF115:
	.string	"xpvhv"
.LASF371:
	.string	"null10"
.LASF241:
	.string	"band_amg"
.LASF36:
	.string	"op_pmreplroot"
.LASF148:
	.string	"xio_ofp"
.LASF206:
	.string	"e_no_len"
.LASF226:
	.string	"add_ass_amg"
.LASF42:
	.string	"op_pmdynflags"
.LASF170:
	.string	"svt_copy"
.LASF287:
	.string	"array"
.LASF93:
	.string	"xpv_len"
.LASF264:
	.string	"dec_amg"
.LASF207:
	.string	"e_number"
.LASF145:
	.string	"XPVIO"
.LASF174:
	.string	"any_iv"
.LASF181:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF94:
	.string	"XPVIV"
.LASF285:
	.string	"max_amg_code"
.LASF309:
	.string	"new_s"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF146:
	.string	"xpvio"
.LASF387:
	.string	"targ"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF397:
	.string	"PL_stack_base"
.LASF317:
	.string	"ai16"
.LASF95:
	.string	"xpviv"
.LASF400:
	.string	"PL_tmps_max"
.LASF352:
	.string	"llen"
.LASF390:
	.string	"PL_sv_undef"
.LASF333:
	.string	"strrelbeg"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF200:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF409:
	.string	"pp_pack.c"
.LASF239:
	.string	"rshift_amg"
.LASF365:
	.string	"Perl_pack_cat"
.LASF252:
	.string	"ne_amg"
.LASF315:
	.string	"bits"
.LASF58:
	.string	"subbeg"
.LASF244:
	.string	"bor_ass_amg"
.LASF183:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF269:
	.string	"log_amg"
.LASF199:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF349:
	.string	"right"
.LASF246:
	.string	"bxor_ass_amg"
.LASF116:
	.string	"xhv_array"
.LASF222:
	.string	"nomethod_amg"
.LASF154:
	.string	"xio_top_name"
.LASF275:
	.string	"copy_amg"
.LASF66:
	.string	"lastcloseparen"
.LASF323:
	.string	"aint"
.LASF14:
	.string	"double"
.LASF385:
	.string	"mark"
.LASF191:
	.string	"next_off"
.LASF310:
	.string	"ocnt"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF236:
	.string	"pow_ass_amg"
.LASF32:
	.string	"PMOP"
.LASF328:
	.string	"afloat"
.LASF15:
	.string	"STRLEN"
.LASF304:
	.string	"inherited_modifiers"
.LASF366:
	.string	"Perl_packlist"
.LASF342:
	.string	"group_modifiers"
.LASF348:
	.string	"Perl_pp_unpack"
.LASF289:
	.string	"size"
.LASF240:
	.string	"rshift_ass_amg"
.LASF89:
	.string	"mg_ptr"
.LASF138:
	.string	"xcv_gv"
.LASF329:
	.string	"adouble"
.LASF302:
	.string	"lenptr"
.LASF319:
	.string	"ai32"
.LASF389:
	.string	"PL_dowarn"
.LASF147:
	.string	"xio_ifp"
.LASF232:
	.string	"div_ass_amg"
.LASF347:
	.string	"mask"
.LASF210:
	.string	"patptr"
.LASF24:
	.string	"cop_label"
.LASF46:
	.string	"broiled"
.LASF351:
	.string	"gimme"
.LASF16:
	.string	"op_next"
.LASF273:
	.string	"concat_amg"
.LASF75:
	.string	"gp_egv"
.LASF18:
	.string	"op_ppaddr"
.LASF277:
	.string	"to_sv_amg"
.LASF52:
	.string	"startp"
.LASF250:
	.string	"ge_amg"
.LASF360:
	.string	"pnum"
.LASF356:
	.string	"result_c"
.LASF361:
	.string	"done"
.LASF368:
	.string	"items"
.LASF26:
	.string	"cop_filegv"
.LASF376:
	.string	"grow"
.LASF340:
	.string	"rawtype"
.LASF47:
	.string	"sv_any"
.LASF296:
	.string	"which"
.LASF306:
	.string	"modifier"
.LASF25:
	.string	"cop_stash"
.LASF219:
	.string	"fallback_amg"
.LASF43:
	.string	"op_pmstash"
.LASF388:
	.string	"PL_uuemap"
.LASF324:
	.string	"auint"
.LASF151:
	.string	"xio_page"
.LASF196:
	.string	"xiou_any"
.LASF292:
	.string	"S_measure_struct"
.LASF401:
	.string	"PL_markstack_ptr"
.LASF178:
	.string	"any_dxptr"
.LASF81:
	.string	"MAGIC"
.LASF381:
	.string	"norm"
.LASF276:
	.string	"neg_amg"
.LASF233:
	.string	"modulo_amg"
.LASF167:
	.string	"svt_len"
.LASF408:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF44:
	.string	"PerlInterpreter"
.LASF49:
	.string	"sv_flags"
.LASF332:
	.string	"bits_in_uv"
.LASF111:
	.string	"xav_alloc"
.LASF121:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF327:
	.string	"aptr"
.LASF238:
	.string	"lshift_ass_amg"
.LASF88:
	.string	"mg_obj"
.LASF123:
	.string	"xhv_name"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF134:
	.string	"xcv_start"
.LASF144:
	.string	"xcv_outside_seq"
.LASF105:
	.string	"xav_array"
.LASF303:
	.string	"S_next_symbol"
.LASF215:
	.string	"length"
.LASF160:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF108:
	.string	"xof_off"
.LASF301:
	.string	"S_get_num"
.LASF331:
	.string	"cdouble"
.LASF203:
	.string	"hek_len"
.LASF163:
	.string	"MGVTBL"
.LASF229:
	.string	"mult_amg"
.LASF28:
	.string	"cop_arybase"
.LASF61:
	.string	"refcnt"
.LASF278:
	.string	"to_av_amg"
.LASF283:
	.string	"int_amg"
.LASF112:
	.string	"xav_arylen"
.LASF375:
	.string	"lookahead"
.LASF133:
	.string	"xcv_stash"
.LASF128:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF135:
	.string	"xcv_root"
.LASF230:
	.string	"mult_ass_amg"
.LASF266:
	.string	"cos_amg"
.LASF51:
	.string	"regexp"
.LASF201:
	.string	"hent_val"
.LASF142:
	.string	"xcv_outside"
.LASF251:
	.string	"eq_amg"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF118:
	.string	"xhv_max"
.LASF137:
	.string	"xcv_xsubany"
.LASF141:
	.string	"xcv_padlist"
.LASF265:
	.string	"atan2_amg"
.LASF267:
	.string	"sin_amg"
.LASF109:
	.string	"xmg_magic"
.LASF101:
	.string	"xpvnv"
.LASF209:
	.string	"howlen_t"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF274:
	.string	"concat_ass_amg"
.LASF173:
	.string	"any_i32"
.LASF166:
	.string	"svt_set"
.LASF404:
	.string	"PL_hexdigit"
.LASF156:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF325:
	.string	"along"
.LASF353:
	.string	"rlen"
.LASF186:
	.string	"__dirstream"
.LASF175:
	.string	"any_long"
.LASF211:
	.string	"patend"
.LASF299:
	.string	"S_group_end"
.LASF33:
	.string	"pmop"
.LASF106:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF271:
	.string	"repeat_amg"
.LASF291:
	.string	"S_mul128"
.LASF411:
	.string	"S_doencodes"
.LASF305:
	.string	"allowed"
.LASF190:
	.string	"type"
.LASF218:
	.string	"tempsym_t"
.LASF0:
	.string	"unsigned char"
.LASF120:
	.string	"xhv_riter"
.LASF126:
	.string	"xgv_gp"
.LASF220:
	.string	"abs_amg"
.LASF38:
	.string	"op_pmnext"
.LASF225:
	.string	"add_amg"
.LASF308:
	.string	"strend"
.LASF314:
	.string	"datumtype"
.LASF168:
	.string	"svt_clear"
.LASF48:
	.string	"sv_refcnt"
.LASF254:
	.string	"scmp_amg"
.LASF288:
	.string	"first"
.LASF405:
	.string	"size_normal"
.LASF379:
	.string	"saveitems"
.LASF350:
	.string	"left"
.LASF99:
	.string	"xuv_uv"
.LASF50:
	.string	"REGEXP"
.LASF335:
	.string	"explicit_length"
.LASF143:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF259:
	.string	"seq_amg"
.LASF171:
	.string	"svt_dup"
.LASF159:
	.string	"xio_bottom_gv"
.LASF92:
	.string	"xpv_cur"
.LASF172:
	.string	"any_ptr"
.LASF103:
	.string	"XPVAV"
.LASF377:
	.string	"shrink"
.LASF281:
	.string	"to_cv_amg"
.LASF245:
	.string	"bxor_amg"
.LASF107:
	.string	"xav_max"
.LASF169:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF198:
	.string	"PADOFFSET"
.LASF386:
	.string	"origmark"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"op_pmpermflags"
.LASF370:
	.string	"fromstr"
.LASF104:
	.string	"xpvav"
.LASF110:
	.string	"xmg_stash"
.LASF393:
	.string	"PL_bitcount"
.LASF294:
	.string	"total"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF268:
	.string	"exp_amg"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF407:
	.string	"packsize"
.LASF129:
	.string	"xgv_stash"
.LASF194:
	.string	"cv_flags_t"
.LASF216:
	.string	"howlen"
.LASF223:
	.string	"string_amg"
.LASF338:
	.string	"uchar_checksum"
.LASF54:
	.string	"regstclass"
.LASF362:
	.string	"beglist"
.LASF155:
	.string	"xio_top_gv"
.LASF247:
	.string	"lt_amg"
.LASF378:
	.string	"lengthcode"
.LASF64:
	.string	"nparens"
.LASF293:
	.string	"symptr"
.LASF195:
	.string	"xiou_dirp"
.LASF394:
	.string	"PL_stack_sp"
.LASF263:
	.string	"inc_amg"
.LASF249:
	.string	"gt_amg"
.LASF374:
	.string	"achar"
.LASF316:
	.string	"start_sp_offset"
.LASF177:
	.string	"any_dptr"
.LASF395:
	.string	"PL_op"
.LASF127:
	.string	"xgv_name"
.LASF354:
	.string	"S_is_an_int"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
