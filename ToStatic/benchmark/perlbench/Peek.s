	.file	"Peek.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Peek.c -mtune=generic
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
	.globl	_runops_debug
	.type	_runops_debug, @function
_runops_debug:
.LFB2:
	.file 1 "Peek.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# flag, flag
	.loc 1 19 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.0
	cmpq	$Perl_runops_debug, %rax	#, PL_runops.0
	sete	%al	#, D.11631
	movb	%al, -1(%rbp)	# D.11631, d
	.loc 1 21 0
	cmpl	$0, -20(%rbp)	#, flag
	js	.L2	#,
	.loc 1 23 0
	cmpl	$0, -20(%rbp)	#, flag
	je	.L3	#,
	.loc 1 23 0 is_stmt 0 discriminator 1
	movl	$Perl_runops_debug, %eax	#, iftmp.1
	jmp	.L4	#
.L3:
	.loc 1 23 0 discriminator 2
	movl	$Perl_runops_standard, %eax	#, iftmp.1
.L4:
	.loc 1 23 0 discriminator 3
	movq	%rax, PL_runops(%rip)	# iftmp.1, PL_runops
.L2:
	.loc 1 24 0 is_stmt 1
	movzbl	-1(%rbp), %eax	# d, D.11632
	.loc 1 25 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_runops_debug, .-_runops_debug
	.section	.rodata
.LC0:
	.string	"GVGV::GV"
.LC1:
	.string	"  busy\n"
.LC2:
	.string	"    closure-template\n"
.LC3:
	.string	"     ref in args!\n"
	.align 8
.LC4:
	.string	"    level %i: refs: %i, strings: %i in %i,\targsarray: %i, argsstrings: %i\n"
	.align 8
.LC5:
	.string	"  total: refs: %i, strings: %i in %i,\targsarrays: %i, argsstrings: %i\n"
	.align 8
.LC6:
	.string	"total: refs: %i, strings: %i in %i\targsarray: %i, argsstrings: %i\n"
	.text
	.globl	DeadCode
	.type	DeadCode, @function
DeadCode:
.LFB3:
	.loc 1 29 0
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
	.loc 1 35 0
	call	Perl_newAV	#
	movq	%rax, %rdi	# D.11633,
	call	Perl_newRV_noinc	#
	movq	%rax, -72(%rbp)	# tmp223, ret
	.loc 1 37 0
	movl	$0, -160(%rbp)	#, tm
	movl	$0, -156(%rbp)	#, tref
	movl	$0, -152(%rbp)	#, ts
	movl	$0, -148(%rbp)	#, ta
	movl	$0, -144(%rbp)	#, tas
	.loc 1 39 0
	movq	PL_sv_arenaroot(%rip), %rax	# PL_sv_arenaroot, tmp224
	movq	%rax, -88(%rbp)	# tmp224, sva
	jmp	.L7	#
.L39:
	.loc 1 40 0
	movq	-88(%rbp), %rax	# sva, tmp225
	movl	8(%rax), %eax	# sva_1->sv_refcnt, D.11634
	movl	%eax, %eax	# D.11634, D.11635
	salq	$4, %rax	#, D.11635
	movq	%rax, %rdx	# D.11635, D.11635
	movq	-88(%rbp), %rax	# sva, tmp226
	leaq	(%rdx,%rax), %r12	#, svend
	.loc 1 41 0
	movq	-88(%rbp), %rax	# sva, tmp230
	addq	$16, %rax	#, tmp229
	movq	%rax, -80(%rbp)	# tmp229, sv
	jmp	.L8	#
.L38:
	.loc 1 42 0
	movq	-80(%rbp), %rax	# sv, tmp231
	movl	12(%rax), %eax	# sv_2->sv_flags, D.11634
	movzbl	%al, %eax	# D.11634, D.11634
	cmpl	$12, %eax	#, D.11634
	jne	.L9	#,
.LBB2:
	.loc 1 43 0
	movq	-80(%rbp), %rax	# sv, tmp232
	movq	%rax, -64(%rbp)	# tmp232, cv
	.loc 1 44 0
	movq	-64(%rbp), %rax	# cv, tmp233
	movq	(%rax), %rax	# cv_62->sv_any, D.11636
	movq	120(%rax), %rax	# _63->xcv_padlist, tmp234
	movq	%rax, -56(%rbp)	# tmp234, padlist
	.loc 1 47 0
	movl	$0, -140(%rbp)	#, i
	movl	$0, -128(%rbp)	#, totm
	movl	$0, -120(%rbp)	#, totref
	.loc 1 48 0
	movl	$0, -112(%rbp)	#, tots
	movl	$0, -108(%rbp)	#, tota
	movl	$0, -100(%rbp)	#, totas
	.loc 1 49 0
	movl	$0, -96(%rbp)	#, dumpit
	.loc 1 51 0
	movq	-80(%rbp), %rax	# sv, tmp235
	movq	(%rax), %rax	# sv_2->sv_any, D.11637
	movq	80(%rax), %rax	# MEM[(struct XPVCV *)_72].xcv_xsub, D.11638
	testq	%rax, %rax	# D.11638
	je	.L10	#,
	.loc 1 52 0
	jmp	.L9	#
.L10:
	.loc 1 54 0
	movq	-80(%rbp), %rax	# sv, tmp236
	movq	(%rax), %rax	# sv_2->sv_any, D.11637
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_74].xcv_gv, D.11639
	testq	%rax, %rax	# D.11639
	jne	.L11	#,
	.loc 1 55 0
	jmp	.L9	#
.L11:
	.loc 1 57 0
	movq	-64(%rbp), %rax	# cv, tmp237
	movq	(%rax), %rax	# cv_62->sv_any, D.11636
	movq	72(%rax), %rax	# _76->xcv_root, D.11640
	testq	%rax, %rax	# D.11640
	jne	.L12	#,
	.loc 1 59 0
	jmp	.L9	#
.L12:
	.loc 1 61 0
	movq	-80(%rbp), %rax	# sv, tmp238
	movq	(%rax), %rax	# sv_2->sv_any, D.11637
	movq	96(%rax), %rbx	# MEM[(struct XPVCV *)_78].xcv_gv, D.11639
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rcx	# D.11639,
	movl	$.LC0, %edx	#,
	movq	%rax, %rsi	# D.11641,
	movl	$0, %edi	#,
	call	Perl_do_gvgv_dump	#
	.loc 1 62 0
	movq	-64(%rbp), %rax	# cv, tmp239
	movq	(%rax), %rax	# cv_62->sv_any, D.11636
	movq	112(%rax), %rax	# _81->xcv_depth, D.11642
	testq	%rax, %rax	# D.11642
	je	.L13	#,
	.loc 1 63 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 64 0
	jmp	.L9	#
.L13:
	.loc 1 66 0
	movq	-56(%rbp), %rax	# padlist, tmp240
	movq	(%rax), %rax	# padlist_64->sv_any, D.11643
	movq	(%rax), %rax	# _84->xav_array, tmp241
	movq	%rax, -48(%rbp)	# tmp241, svp
	.loc 1 67 0
	jmp	.L14	#
.L34:
.LBB3:
	.loc 1 70 0
	movl	-140(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-48(%rbp), %rax	# svp, tmp243
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_96, D.11646
	movq	(%rax), %rax	# MEM[(struct AV *)_97].sv_any, D.11643
	movq	(%rax), %rax	# _98->xav_array, tmp244
	movq	%rax, -40(%rbp)	# tmp244, pad
	.loc 1 71 0
	movq	-40(%rbp), %rax	# pad, tmp245
	movq	(%rax), %rax	# *pad_99, tmp246
	movq	%rax, -32(%rbp)	# tmp246, argav
	.loc 1 72 0
	cmpq	$0, -32(%rbp)	#, argav
	je	.L15	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -32(%rbp)	#, argav
	jne	.L16	#,
.L15:
	.loc 1 73 0 is_stmt 1
	call	Perl_PerlIO_stderr	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 74 0
	jmp	.L14	#
.L16:
	.loc 1 76 0
	movq	-32(%rbp), %rax	# argav, tmp247
	movq	(%rax), %rax	# argav_100->sv_any, D.11643
	movq	(%rax), %rax	# _101->xav_array, tmp248
	movq	%rax, -24(%rbp)	# tmp248, args
	.loc 1 77 0
	movl	$0, -104(%rbp)	#, levelas
	movl	-104(%rbp), %eax	# levelas, tmp249
	movl	%eax, -124(%rbp)	# tmp249, levelref
	movl	-124(%rbp), %eax	# levelref, tmp250
	movl	%eax, -116(%rbp)	# tmp250, levels
	movl	-116(%rbp), %eax	# levels, tmp251
	movl	%eax, -132(%rbp)	# tmp251, levelm
	.loc 1 78 0
	movq	-32(%rbp), %rax	# argav, tmp252
	movq	(%rax), %rax	# argav_100->sv_any, D.11643
	movq	16(%rax), %rax	# _107->xav_max, D.11642
	addq	$1, %rax	#, D.11642
	sall	$3, %eax	#, D.11647
	movl	%eax, -92(%rbp)	# D.11647, levela
	.loc 1 79 0
	movq	-32(%rbp), %rax	# argav, tmp253
	movq	(%rax), %rax	# argav_100->sv_any, D.11643
	movzbl	72(%rax), %eax	# _113->xav_flags, D.11648
	movzbl	%al, %eax	# D.11648, D.11644
	andl	$1, %eax	#, D.11644
	testl	%eax, %eax	# D.11644
	je	.L17	#,
	.loc 1 80 0
	movl	$0, -136(%rbp)	#, j
	jmp	.L18	#
.L23:
	.loc 1 81 0
	movl	-136(%rbp), %eax	# j, tmp254
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-24(%rbp), %rax	# args, tmp255
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_127, D.11646
	movl	12(%rax), %eax	# _128->sv_flags, D.11634
	andl	$524288, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L19	#,
	.loc 1 82 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 83 0
	addl	$1, -124(%rbp)	#, levelref
	jmp	.L20	#
.L19:
	.loc 1 86 0
	movl	-136(%rbp), %eax	# j, tmp256
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-24(%rbp), %rax	# args, tmp257
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_135, D.11646
	movl	12(%rax), %eax	# _136->sv_flags, D.11634
	movzbl	%al, %eax	# D.11634, D.11634
	cmpl	$3, %eax	#, D.11634
	jbe	.L20	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp258
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-24(%rbp), %rax	# args, tmp259
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_141, D.11646
	movq	(%rax), %rax	# _142->sv_any, D.11637
	movq	16(%rax), %rax	# MEM[(struct XPV *)_143].xpv_len, D.11635
	testq	%rax, %rax	# D.11635
	je	.L20	#,
	.loc 1 87 0 is_stmt 1
	movl	-136(%rbp), %eax	# j, tmp260
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-24(%rbp), %rax	# args, tmp261
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_147, D.11646
	movq	(%rax), %rax	# _148->sv_any, D.11637
	movq	16(%rax), %rax	# MEM[(struct XPV *)_149].xpv_len, D.11635
	movl	-136(%rbp), %edx	# j, tmp262
	movslq	%edx, %rdx	# tmp262, D.11635
	leaq	0(,%rdx,8), %rcx	#, D.11635
	movq	-24(%rbp), %rdx	# args, tmp263
	addq	%rcx, %rdx	# D.11635, D.11645
	movq	(%rdx), %rdx	# *_153, D.11646
	movl	8(%rdx), %edx	# _154->sv_refcnt, D.11634
	movl	%edx, %ebx	# D.11634, D.11635
	movl	$0, %edx	#, tmp265
	divq	%rbx	# D.11635
	movl	%eax, %edx	# D.11635, D.11647
	movl	-104(%rbp), %eax	# levelas, levelas.2
	addl	%edx, %eax	# D.11647, D.11647
	movl	%eax, -104(%rbp)	# D.11647, levelas
.L20:
	.loc 1 80 0
	addl	$1, -136(%rbp)	#, j
.L18:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp266
	movslq	%eax, %rbx	# tmp266, D.11642
	movq	-32(%rbp), %rax	# argav, tmp267
	movl	12(%rax), %eax	# MEM[(struct SV *)argav_100].sv_flags, D.11634
	andl	$32768, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L21	#,
	movq	-32(%rbp), %rax	# argav, tmp268
	movq	%rax, %rdi	# tmp268,
	call	Perl_mg_size	#
	cltq
	jmp	.L22	#
.L21:
	.loc 1 80 0 discriminator 2
	movq	-32(%rbp), %rax	# argav, tmp269
	movq	(%rax), %rax	# argav_100->sv_any, D.11643
	movq	8(%rax), %rax	# _123->xav_fill, iftmp.3
.L22:
	.loc 1 80 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.3, D.11642
	jl	.L23	#,
.L17:
	.loc 1 91 0 is_stmt 1
	movl	$1, -136(%rbp)	#, j
	jmp	.L24	#
.L31:
	.loc 1 92 0
	movl	-136(%rbp), %eax	# j, tmp270
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp271
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_179, D.11646
	movl	12(%rax), %eax	# _180->sv_flags, D.11634
	andl	$524288, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L25	#,
	.loc 1 93 0
	addl	$1, -124(%rbp)	#, levelref
	.loc 1 94 0
	movl	-136(%rbp), %eax	# j, tmp272
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp273
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rbx	# *_186, D.11646
	call	Perl_PerlIO_stderr	#
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$4, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.11646,
	movq	%rax, %rsi	# D.11641,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
	.loc 1 95 0
	movl	$1, -96(%rbp)	#, dumpit
	jmp	.L26	#
.L25:
	.loc 1 98 0
	movl	-136(%rbp), %eax	# j, tmp274
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp275
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_192, D.11646
	movl	12(%rax), %eax	# _193->sv_flags, D.11634
	movzbl	%al, %eax	# D.11634, D.11634
	cmpl	$9, %eax	#, D.11634
	jbe	.L27	#,
	.loc 1 99 0
	movl	-136(%rbp), %eax	# j, tmp276
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp277
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_198, D.11646
	movl	12(%rax), %eax	# _199->sv_flags, D.11634
	andl	$1024, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	jne	.L26	#,
	.loc 1 100 0
	addl	$1, -124(%rbp)	#, levelref
	.loc 1 101 0
	movl	-136(%rbp), %eax	# j, tmp278
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp279
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rbx	# *_205, D.11646
	call	Perl_PerlIO_stderr	#
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$4, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.11646,
	movq	%rax, %rsi	# D.11641,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
	.loc 1 102 0
	movl	$1, -96(%rbp)	#, dumpit
	jmp	.L26	#
.L27:
	.loc 1 105 0
	movl	-136(%rbp), %eax	# j, tmp280
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp281
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_211, D.11646
	movl	12(%rax), %eax	# _212->sv_flags, D.11634
	movzbl	%al, %eax	# D.11634, D.11634
	cmpl	$3, %eax	#, D.11634
	jbe	.L26	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp282
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp283
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_217, D.11646
	movq	(%rax), %rax	# _218->sv_any, D.11637
	movq	16(%rax), %rax	# MEM[(struct XPV *)_219].xpv_len, D.11635
	testq	%rax, %rax	# D.11635
	je	.L26	#,
	.loc 1 106 0 is_stmt 1
	addl	$1, -116(%rbp)	#, levels
	.loc 1 107 0
	movl	-136(%rbp), %eax	# j, tmp284
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11635
	movq	-40(%rbp), %rax	# pad, tmp285
	addq	%rdx, %rax	# D.11635, D.11645
	movq	(%rax), %rax	# *_224, D.11646
	movq	(%rax), %rax	# _225->sv_any, D.11637
	movq	16(%rax), %rax	# MEM[(struct XPV *)_226].xpv_len, D.11635
	movl	-136(%rbp), %edx	# j, tmp286
	movslq	%edx, %rdx	# tmp286, D.11635
	leaq	0(,%rdx,8), %rcx	#, D.11635
	movq	-40(%rbp), %rdx	# pad, tmp287
	addq	%rcx, %rdx	# D.11635, D.11645
	movq	(%rdx), %rdx	# *_230, D.11646
	movl	8(%rdx), %edx	# _231->sv_refcnt, D.11634
	movl	%edx, %ebx	# D.11634, D.11635
	movl	$0, %edx	#, tmp289
	divq	%rbx	# D.11635
	movl	%eax, %edx	# D.11635, D.11647
	movl	-132(%rbp), %eax	# levelm, levelm.4
	addl	%edx, %eax	# D.11647, D.11647
	movl	%eax, -132(%rbp)	# D.11647, levelm
.L26:
	.loc 1 91 0
	addl	$1, -136(%rbp)	#, j
.L24:
	.loc 1 91 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp290
	movslq	%eax, %rbx	# tmp290, D.11642
	movq	-48(%rbp), %rax	# svp, tmp291
	addq	$8, %rax	#, D.11645
	movq	(%rax), %rax	# *_165, D.11646
	movl	12(%rax), %eax	# _166->sv_flags, D.11634
	andl	$32768, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L29	#,
	movq	-48(%rbp), %rax	# svp, tmp292
	addq	$8, %rax	#, D.11645
	movq	(%rax), %rax	# *_169, D.11646
	movq	%rax, %rdi	# D.11646,
	call	Perl_mg_size	#
	cltq
	jmp	.L30	#
.L29:
	.loc 1 91 0 discriminator 2
	movq	-48(%rbp), %rax	# svp, tmp293
	addq	$8, %rax	#, D.11645
	movq	(%rax), %rax	# *_173, D.11646
	movq	(%rax), %rax	# MEM[(struct AV *)_174].sv_any, D.11643
	movq	8(%rax), %rax	# _175->xav_fill, iftmp.5
.L30:
	.loc 1 91 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.5, D.11642
	jl	.L31	#,
	.loc 1 111 0 is_stmt 1
	call	Perl_PerlIO_stderr	#
	movl	-116(%rbp), %r8d	# levels, tmp294
	movl	-132(%rbp), %edi	# levelm, tmp295
	movl	-124(%rbp), %ecx	# levelref, tmp296
	movl	-140(%rbp), %edx	# i, tmp297
	movl	-104(%rbp), %esi	# levelas, tmp298
	movl	%esi, 8(%rsp)	# tmp298,
	movl	-92(%rbp), %esi	# levela, tmp299
	movl	%esi, (%rsp)	# tmp299,
	movl	%r8d, %r9d	# tmp294,
	movl	%edi, %r8d	# tmp295,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 113 0
	movl	-132(%rbp), %eax	# levelm, tmp300
	addl	%eax, -128(%rbp)	# tmp300, totm
	.loc 1 114 0
	movl	-92(%rbp), %eax	# levela, tmp301
	addl	%eax, -108(%rbp)	# tmp301, tota
	.loc 1 115 0
	movl	-104(%rbp), %eax	# levelas, tmp302
	addl	%eax, -100(%rbp)	# tmp302, totas
	.loc 1 116 0
	movl	-116(%rbp), %eax	# levels, tmp303
	addl	%eax, -112(%rbp)	# tmp303, tots
	.loc 1 117 0
	movl	-124(%rbp), %eax	# levelref, tmp304
	addl	%eax, -120(%rbp)	# tmp304, totref
	.loc 1 118 0
	cmpl	$0, -96(%rbp)	#, dumpit
	je	.L14	#,
	.loc 1 119 0
	call	Perl_PerlIO_stderr	#
	movq	-64(%rbp), %rdx	# cv, tmp305
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$2, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.11641,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
.L14:
.LBE3:
	.loc 1 67 0 discriminator 1
	addl	$1, -140(%rbp)	#, i
	movl	-140(%rbp), %eax	# i, tmp306
	movslq	%eax, %rbx	# tmp306, D.11642
	movq	-56(%rbp), %rax	# padlist, tmp307
	movl	12(%rax), %eax	# MEM[(struct SV *)padlist_64].sv_flags, D.11634
	andl	$32768, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L32	#,
	movq	-56(%rbp), %rax	# padlist, tmp308
	movq	%rax, %rdi	# tmp308,
	call	Perl_mg_size	#
	cltq
	jmp	.L33	#
.L32:
	.loc 1 67 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# padlist, tmp309
	movq	(%rax), %rax	# padlist_64->sv_any, D.11643
	movq	8(%rax), %rax	# _92->xav_fill, iftmp.6
.L33:
	.loc 1 67 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.6, D.11642
	jle	.L34	#,
	.loc 1 121 0 is_stmt 1
	movq	-56(%rbp), %rax	# padlist, tmp310
	movl	12(%rax), %eax	# MEM[(struct SV *)padlist_64].sv_flags, D.11634
	andl	$32768, %eax	#, D.11634
	testl	%eax, %eax	# D.11634
	je	.L35	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# padlist, tmp311
	movq	%rax, %rdi	# tmp311,
	call	Perl_mg_size	#
	cmpl	$1, %eax	#, D.11644
	setg	%al	#, iftmp.7
	jmp	.L36	#
.L35:
	.loc 1 121 0 discriminator 2
	movq	-56(%rbp), %rax	# padlist, tmp312
	movq	(%rax), %rax	# padlist_64->sv_any, D.11643
	movq	8(%rax), %rax	# _252->xav_fill, D.11642
	cmpq	$1, %rax	#, D.11642
	setg	%al	#, iftmp.7
.L36:
	.loc 1 121 0 discriminator 3
	testb	%al, %al	# iftmp.7
	je	.L37	#,
	.loc 1 122 0 is_stmt 1
	call	Perl_PerlIO_stderr	#
	movl	-108(%rbp), %r8d	# tota, tmp313
	movl	-112(%rbp), %edi	# tots, tmp314
	movl	-128(%rbp), %ecx	# totm, tmp315
	movl	-120(%rbp), %edx	# totref, tmp316
	movl	-100(%rbp), %esi	# totas, tmp317
	movl	%esi, (%rsp)	# tmp317,
	movl	%r8d, %r9d	# tmp313,
	movl	%edi, %r8d	# tmp314,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L37:
	.loc 1 125 0
	movl	-120(%rbp), %eax	# totref, tmp318
	addl	%eax, -156(%rbp)	# tmp318, tref
	.loc 1 126 0
	movl	-128(%rbp), %eax	# totm, tmp319
	addl	%eax, -160(%rbp)	# tmp319, tm
	.loc 1 127 0
	movl	-112(%rbp), %eax	# tots, tmp320
	addl	%eax, -152(%rbp)	# tmp320, ts
	.loc 1 128 0
	movl	-108(%rbp), %eax	# tota, tmp321
	addl	%eax, -148(%rbp)	# tmp321, ta
	.loc 1 129 0
	movl	-100(%rbp), %eax	# totas, tmp322
	addl	%eax, -144(%rbp)	# tmp322, tas
.L9:
.LBE2:
	.loc 1 41 0
	addq	$16, -80(%rbp)	#, sv
.L8:
	.loc 1 41 0 is_stmt 0 discriminator 1
	cmpq	%r12, -80(%rbp)	# svend, sv
	jb	.L38	#,
	.loc 1 39 0 is_stmt 1
	movq	-88(%rbp), %rax	# sva, tmp323
	movq	(%rax), %rax	# sva_1->sv_any, tmp324
	movq	%rax, -88(%rbp)	# tmp324, sva
.L7:
	.loc 1 39 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, sva
	jne	.L39	#,
	.loc 1 133 0 is_stmt 1
	call	Perl_PerlIO_stderr	#
	movl	-148(%rbp), %r8d	# ta, tmp325
	movl	-152(%rbp), %edi	# ts, tmp326
	movl	-160(%rbp), %ecx	# tm, tmp327
	movl	-156(%rbp), %edx	# tref, tmp328
	movl	-144(%rbp), %esi	# tas, tmp329
	movl	%esi, (%rsp)	# tmp329,
	movl	%r8d, %r9d	# tmp325,
	movl	%edi, %r8d	# tmp326,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.11641,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 135 0
	movq	-72(%rbp), %rax	# ret, D.11646
	.loc 1 137 0
	addq	$160, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	DeadCode, .-DeadCode
	.section	.rodata
	.align 8
.LC7:
	.string	"Cannot report mstats without Perl malloc"
	.text
	.globl	fill_mstats
	.type	fill_mstats, @function
fill_mstats:
.LFB4:
	.loc 1 307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movl	%esi, -12(%rbp)	# level, level
	.loc 1 308 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fill_mstats, .-fill_mstats
	.globl	mstats_fillhash
	.type	mstats_fillhash, @function
mstats_fillhash:
.LFB5:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movl	%esi, -12(%rbp)	# level, level
	.loc 1 313 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mstats_fillhash, .-mstats_fillhash
	.globl	mstats2hash
	.type	mstats2hash, @function
mstats2hash:
.LFB6:
	.loc 1 317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# rv, rv
	movl	%edx, -20(%rbp)	# level, level
	.loc 1 318 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 319 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mstats2hash, .-mstats2hash
	.section	.rodata
	.align 8
.LC8:
	.string	"Usage: Devel::Peek::mstat(str=\"Devel::Peek::mstat: \")"
.LC9:
	.string	"Devel::Peek::mstat: "
	.align 8
.LC10:
	.string	"%s: perl not compiled with DEBUGGING_MSTATS\n"
	.text
	.globl	XS_Devel__Peek_mstat
	.type	XS_Devel__Peek_mstat, @function
XS_Devel__Peek_mstat:
.LFB7:
	.loc 1 329 0
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
	.loc 1 330 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.8
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.9
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.11
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.11, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.10_6, D.11658
	cltq
	salq	$3, %rax	#, D.11659
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.12
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.13
	subq	%rax, %rdx	# PL_stack_base.14, D.11660
	movq	%rdx, %rax	# D.11660, D.11660
	sarq	$3, %rax	#, tmp106
	addl	$1, %eax	#, D.11661
	movl	%eax, -40(%rbp)	# D.11661, ax
	movq	%r12, %rdx	# sp, sp.15
	movq	%rbx, %rax	# mark, mark.16
	subq	%rax, %rdx	# mark.16, D.11660
	movq	%rdx, %rax	# D.11660, D.11660
	sarq	$3, %rax	#, tmp107
	movl	%eax, -36(%rbp)	# D.11660, items
	.loc 1 331 0
	cmpl	$0, -36(%rbp)	#, items
	js	.L45	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	cmpl	$1, -36(%rbp)	#, items
	jle	.L46	#,
.L45:
	.loc 1 332 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L46:
.LBB4:
	.loc 1 336 0
	cmpl	$0, -36(%rbp)	#, items
	jg	.L47	#,
	.loc 1 337 0
	movq	$.LC9, -32(%rbp)	#, str
	jmp	.L48	#
.L47:
	.loc 1 339 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.18
	movl	-40(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rdx	# tmp108, D.11659
	salq	$3, %rdx	#, D.11659
	addq	%rdx, %rax	# D.11659, D.11662
	movq	(%rax), %rax	# *_29, D.11663
	movl	12(%rax), %eax	# _30->sv_flags, D.11664
	andl	$262144, %eax	#, D.11664
	testl	%eax, %eax	# D.11664
	je	.L49	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.19
	movl	-40(%rbp), %edx	# ax, tmp109
	movslq	%edx, %rdx	# tmp109, D.11659
	salq	$3, %rdx	#, D.11659
	addq	%rdx, %rax	# D.11659, D.11662
	movq	(%rax), %rax	# *_36, D.11663
	movq	(%rax), %rax	# _37->sv_any, D.11665
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, iftmp.17
	jmp	.L50	#
.L49:
	.loc 1 339 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.20
	movl	-40(%rbp), %edx	# ax, tmp110
	movslq	%edx, %rdx	# tmp110, D.11659
	salq	$3, %rdx	#, D.11659
	addq	%rdx, %rax	# D.11659, D.11662
	movq	(%rax), %rax	# *_43, D.11663
	movq	%rax, %rdi	# D.11663,
	call	Perl_sv_2pv_nolen	#
.L50:
	.loc 1 339 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.17, str
.L48:
	.loc 1 342 0 is_stmt 1
	call	Perl_PerlIO_stderr	#
	movq	-32(%rbp), %rdx	# str, tmp111
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.11666,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.LBE4:
.LBB5:
	.loc 1 344 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.21
	movl	-40(%rbp), %edx	# ax, tmp112
	movslq	%edx, %rcx	# tmp112, D.11667
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.22
	addq	%rcx, %rdx	# D.11667, D.11667
	salq	$3, %rdx	#, D.11667
	subq	$8, %rdx	#, D.11667
	addq	%rdx, %rax	# D.11667, PL_stack_sp.23
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.23, PL_stack_sp
	nop
.LBE5:
	.loc 1 345 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	XS_Devel__Peek_mstat, .-XS_Devel__Peek_mstat
	.section	.rodata
	.align 8
.LC11:
	.string	"Usage: Devel::Peek::fill_mstats(sv, level= 0)"
	.text
	.globl	XS_Devel__Peek_fill_mstats
	.type	XS_Devel__Peek_fill_mstats, @function
XS_Devel__Peek_fill_mstats:
.LFB8:
	.loc 1 349 0
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
	.loc 1 350 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.24
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.25
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.27
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.27, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.26_6, D.11671
	cltq
	salq	$3, %rax	#, D.11672
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.28
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.29
	subq	%rax, %rdx	# PL_stack_base.30, D.11673
	movq	%rdx, %rax	# D.11673, D.11673
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.11674
	movl	%eax, -40(%rbp)	# D.11674, ax
	movq	%r12, %rdx	# sp, sp.31
	movq	%rbx, %rax	# mark, mark.32
	subq	%rax, %rdx	# mark.32, D.11673
	movq	%rdx, %rax	# D.11673, D.11673
	sarq	$3, %rax	#, tmp115
	movl	%eax, -36(%rbp)	# D.11673, items
	.loc 1 351 0
	cmpl	$0, -36(%rbp)	#, items
	jle	.L53	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpl	$2, -36(%rbp)	#, items
	jle	.L54	#,
.L53:
	.loc 1 352 0 is_stmt 1
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L54:
.LBB6:
	.loc 1 354 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.33
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11672
	salq	$3, %rdx	#, D.11672
	addq	%rdx, %rax	# D.11672, D.11675
	movq	(%rax), %rax	# *_28, tmp117
	movq	%rax, -32(%rbp)	# tmp117, sv
	.loc 1 357 0
	cmpl	$1, -36(%rbp)	#, items
	jg	.L55	#,
	.loc 1 358 0
	movl	$0, -44(%rbp)	#, level
	jmp	.L56	#
.L55:
	.loc 1 360 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.35
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.11676
	addq	$1, %rdx	#, D.11676
	salq	$3, %rdx	#, D.11676
	addq	%rdx, %rax	# D.11676, D.11675
	movq	(%rax), %rax	# *_35, D.11677
	movl	12(%rax), %eax	# _36->sv_flags, D.11678
	andl	$65536, %eax	#, D.11678
	testl	%eax, %eax	# D.11678
	je	.L57	#,
	.loc 1 360 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.36
	movl	-40(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11676
	addq	$1, %rdx	#, D.11676
	salq	$3, %rdx	#, D.11676
	addq	%rdx, %rax	# D.11676, D.11675
	movq	(%rax), %rax	# *_43, D.11677
	movq	(%rax), %rax	# _44->sv_any, D.11679
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.11673
	jmp	.L58	#
.L57:
	.loc 1 360 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.37
	movl	-40(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.11676
	addq	$1, %rdx	#, D.11676
	salq	$3, %rdx	#, D.11676
	addq	%rdx, %rax	# D.11676, D.11675
	movq	(%rax), %rax	# *_52, D.11677
	movq	%rax, %rdi	# D.11677,
	call	Perl_sv_2iv	#
.L58:
	.loc 1 360 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.34, level
.L56:
	.loc 1 363 0 is_stmt 1
	movl	-44(%rbp), %edx	# level, tmp121
	movq	-32(%rbp), %rax	# sv, tmp122
	movl	%edx, %esi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	fill_mstats	#
.LBE6:
.LBB7:
	.loc 1 365 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.38
	movl	-40(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rcx	# tmp123, D.11676
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.39
	addq	%rcx, %rdx	# D.11676, D.11676
	salq	$3, %rdx	#, D.11676
	subq	$8, %rdx	#, D.11676
	addq	%rdx, %rax	# D.11676, PL_stack_sp.40
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.40, PL_stack_sp
	nop
.LBE7:
	.loc 1 366 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_Devel__Peek_fill_mstats, .-XS_Devel__Peek_fill_mstats
	.section	.rodata
	.align 8
.LC12:
	.string	"Usage: Devel::Peek::mstats_fillhash(sv, level= 0)"
	.text
	.globl	XS_Devel__Peek_mstats_fillhash
	.type	XS_Devel__Peek_mstats_fillhash, @function
XS_Devel__Peek_mstats_fillhash:
.LFB9:
	.loc 1 370 0
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
	.loc 1 371 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.41
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.42
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.44
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.44, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.43_6, D.11681
	cltq
	salq	$3, %rax	#, D.11682
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.45
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.46
	subq	%rax, %rdx	# PL_stack_base.47, D.11683
	movq	%rdx, %rax	# D.11683, D.11683
	sarq	$3, %rax	#, tmp114
	addl	$1, %eax	#, D.11684
	movl	%eax, -40(%rbp)	# D.11684, ax
	movq	%r12, %rdx	# sp, sp.48
	movq	%rbx, %rax	# mark, mark.49
	subq	%rax, %rdx	# mark.49, D.11683
	movq	%rdx, %rax	# D.11683, D.11683
	sarq	$3, %rax	#, tmp115
	movl	%eax, -36(%rbp)	# D.11683, items
	.loc 1 372 0
	cmpl	$0, -36(%rbp)	#, items
	jle	.L61	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	cmpl	$2, -36(%rbp)	#, items
	jle	.L62	#,
.L61:
	.loc 1 373 0 is_stmt 1
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L62:
.LBB8:
	.loc 1 375 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.50
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.11682
	salq	$3, %rdx	#, D.11682
	addq	%rdx, %rax	# D.11682, D.11685
	movq	(%rax), %rax	# *_28, tmp117
	movq	%rax, -32(%rbp)	# tmp117, sv
	.loc 1 378 0
	cmpl	$1, -36(%rbp)	#, items
	jg	.L63	#,
	.loc 1 379 0
	movl	$0, -44(%rbp)	#, level
	jmp	.L64	#
.L63:
	.loc 1 381 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.52
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.11686
	addq	$1, %rdx	#, D.11686
	salq	$3, %rdx	#, D.11686
	addq	%rdx, %rax	# D.11686, D.11685
	movq	(%rax), %rax	# *_35, D.11687
	movl	12(%rax), %eax	# _36->sv_flags, D.11688
	andl	$65536, %eax	#, D.11688
	testl	%eax, %eax	# D.11688
	je	.L65	#,
	.loc 1 381 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.53
	movl	-40(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11686
	addq	$1, %rdx	#, D.11686
	salq	$3, %rdx	#, D.11686
	addq	%rdx, %rax	# D.11686, D.11685
	movq	(%rax), %rax	# *_43, D.11687
	movq	(%rax), %rax	# _44->sv_any, D.11689
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.11683
	jmp	.L66	#
.L65:
	.loc 1 381 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.54
	movl	-40(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.11686
	addq	$1, %rdx	#, D.11686
	salq	$3, %rdx	#, D.11686
	addq	%rdx, %rax	# D.11686, D.11685
	movq	(%rax), %rax	# *_52, D.11687
	movq	%rax, %rdi	# D.11687,
	call	Perl_sv_2iv	#
.L66:
	.loc 1 381 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.51, level
.L64:
	.loc 1 384 0 is_stmt 1
	movl	-44(%rbp), %edx	# level, tmp121
	movq	-32(%rbp), %rax	# sv, tmp122
	movl	%edx, %esi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	mstats_fillhash	#
.LBE8:
.LBB9:
	.loc 1 386 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.55
	movl	-40(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rcx	# tmp123, D.11686
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.56
	addq	%rcx, %rdx	# D.11686, D.11686
	salq	$3, %rdx	#, D.11686
	subq	$8, %rdx	#, D.11686
	addq	%rdx, %rax	# D.11686, PL_stack_sp.57
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.57, PL_stack_sp
	nop
.LBE9:
	.loc 1 387 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	XS_Devel__Peek_mstats_fillhash, .-XS_Devel__Peek_mstats_fillhash
	.section	.rodata
	.align 8
.LC13:
	.string	"Usage: Devel::Peek::mstats2hash(sv, rv, level= 0)"
	.text
	.globl	XS_Devel__Peek_mstats2hash
	.type	XS_Devel__Peek_mstats2hash, @function
XS_Devel__Peek_mstats2hash:
.LFB10:
	.loc 1 391 0
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
	.loc 1 392 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.58
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.59
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.61
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.61, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.60_6, D.11691
	cltq
	salq	$3, %rax	#, D.11692
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.62
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.63
	subq	%rax, %rdx	# PL_stack_base.64, D.11693
	movq	%rdx, %rax	# D.11693, D.11693
	sarq	$3, %rax	#, tmp119
	addl	$1, %eax	#, D.11694
	movl	%eax, -48(%rbp)	# D.11694, ax
	movq	%r12, %rdx	# sp, sp.65
	movq	%rbx, %rax	# mark, mark.66
	subq	%rax, %rdx	# mark.66, D.11693
	movq	%rdx, %rax	# D.11693, D.11693
	sarq	$3, %rax	#, tmp120
	movl	%eax, -44(%rbp)	# D.11693, items
	.loc 1 393 0
	cmpl	$1, -44(%rbp)	#, items
	jle	.L69	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, items
	jle	.L70	#,
.L69:
	.loc 1 394 0 is_stmt 1
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L70:
.LBB10:
	.loc 1 396 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.67
	movl	-48(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.11692
	salq	$3, %rdx	#, D.11692
	addq	%rdx, %rax	# D.11692, D.11695
	movq	(%rax), %rax	# *_28, tmp122
	movq	%rax, -40(%rbp)	# tmp122, sv
	.loc 1 397 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.68
	movl	-48(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rdx	# tmp123, D.11696
	addq	$1, %rdx	#, D.11696
	salq	$3, %rdx	#, D.11696
	addq	%rdx, %rax	# D.11696, D.11695
	movq	(%rax), %rax	# *_34, tmp124
	movq	%rax, -32(%rbp)	# tmp124, rv
	.loc 1 400 0
	cmpl	$2, -44(%rbp)	#, items
	jg	.L71	#,
	.loc 1 401 0
	movl	$0, -52(%rbp)	#, level
	jmp	.L72	#
.L71:
	.loc 1 403 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.70
	movl	-48(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.11696
	addq	$2, %rdx	#, D.11696
	salq	$3, %rdx	#, D.11696
	addq	%rdx, %rax	# D.11696, D.11695
	movq	(%rax), %rax	# *_41, D.11697
	movl	12(%rax), %eax	# _42->sv_flags, D.11698
	andl	$65536, %eax	#, D.11698
	testl	%eax, %eax	# D.11698
	je	.L73	#,
	.loc 1 403 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.71
	movl	-48(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rdx	# tmp126, D.11696
	addq	$2, %rdx	#, D.11696
	salq	$3, %rdx	#, D.11696
	addq	%rdx, %rax	# D.11696, D.11695
	movq	(%rax), %rax	# *_49, D.11697
	movq	(%rax), %rax	# _50->sv_any, D.11699
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_51].xiv_iv, D.11693
	jmp	.L74	#
.L73:
	.loc 1 403 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	movl	-48(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rdx	# tmp127, D.11696
	addq	$2, %rdx	#, D.11696
	salq	$3, %rdx	#, D.11696
	addq	%rdx, %rax	# D.11696, D.11695
	movq	(%rax), %rax	# *_58, D.11697
	movq	%rax, %rdi	# D.11697,
	call	Perl_sv_2iv	#
.L74:
	.loc 1 403 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.69, level
.L72:
	.loc 1 406 0 is_stmt 1
	movl	-52(%rbp), %edx	# level, tmp128
	movq	-32(%rbp), %rcx	# rv, tmp129
	movq	-40(%rbp), %rax	# sv, tmp130
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	mstats2hash	#
.LBE10:
.LBB11:
	.loc 1 408 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.73
	movl	-48(%rbp), %edx	# ax, tmp131
	movslq	%edx, %rcx	# tmp131, D.11696
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.74
	addq	%rcx, %rdx	# D.11696, D.11696
	salq	$3, %rdx	#, D.11696
	subq	$8, %rdx	#, D.11696
	addq	%rdx, %rax	# D.11696, PL_stack_sp.75
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.75, PL_stack_sp
	nop
.LBE11:
	.loc 1 409 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	XS_Devel__Peek_mstats2hash, .-XS_Devel__Peek_mstats2hash
	.section	.rodata
	.align 8
.LC14:
	.string	"Usage: Devel::Peek::Dump(sv, lim=4)"
.LC15:
	.string	"Devel::Peek::pv_limit"
.LC16:
	.string	"Devel::Peek::dump_ops"
	.text
	.globl	XS_Devel__Peek_Dump
	.type	XS_Devel__Peek_Dump, @function
XS_Devel__Peek_Dump:
.LFB11:
	.loc 1 413 0
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
	.loc 1 414 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.76
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.77
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.79
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.79, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.78_10, D.11701
	cltq
	salq	$3, %rax	#, D.11702
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.80
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.81
	subq	%rax, %rdx	# PL_stack_base.82, D.11703
	movq	%rdx, %rax	# D.11703, D.11703
	sarq	$3, %rax	#, tmp143
	addl	$1, %eax	#, D.11704
	movl	%eax, -60(%rbp)	# D.11704, ax
	movq	%rbx, %rdx	# sp, sp.83
	movq	%r12, %rax	# mark, mark.84
	subq	%rax, %rdx	# mark.84, D.11703
	movq	%rdx, %rax	# D.11703, D.11703
	sarq	$3, %rax	#, tmp144
	movl	%eax, -56(%rbp)	# D.11703, items
	.loc 1 415 0
	cmpl	$0, -56(%rbp)	#, items
	jle	.L77	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	cmpl	$2, -56(%rbp)	#, items
	jle	.L78	#,
.L77:
	.loc 1 416 0 is_stmt 1
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L78:
	.loc 1 417 0
	movl	-56(%rbp), %eax	# items, tmp145
	cltq
	salq	$3, %rax	#, D.11702
	negq	%rax	# D.11705
	addq	%rax, %rbx	# D.11705, sp
.LBB12:
	.loc 1 419 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.85
	movl	-60(%rbp), %edx	# ax, tmp146
	movslq	%edx, %rdx	# tmp146, D.11702
	salq	$3, %rdx	#, D.11702
	addq	%rdx, %rax	# D.11702, D.11706
	movq	(%rax), %rax	# *_36, tmp147
	movq	%rax, -48(%rbp)	# tmp147, sv
	.loc 1 422 0
	cmpl	$1, -56(%rbp)	#, items
	jg	.L79	#,
	.loc 1 423 0
	movl	$4, -64(%rbp)	#, lim
	jmp	.L80	#
.L79:
	.loc 1 425 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.87
	movl	-60(%rbp), %edx	# ax, tmp148
	movslq	%edx, %rdx	# tmp148, D.11705
	addq	$1, %rdx	#, D.11705
	salq	$3, %rdx	#, D.11705
	addq	%rdx, %rax	# D.11705, D.11706
	movq	(%rax), %rax	# *_43, D.11707
	movl	12(%rax), %eax	# _44->sv_flags, D.11708
	andl	$65536, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L81	#,
	.loc 1 425 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.88
	movl	-60(%rbp), %edx	# ax, tmp149
	movslq	%edx, %rdx	# tmp149, D.11705
	addq	$1, %rdx	#, D.11705
	salq	$3, %rdx	#, D.11705
	addq	%rdx, %rax	# D.11705, D.11706
	movq	(%rax), %rax	# *_51, D.11707
	movq	(%rax), %rax	# _52->sv_any, D.11709
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_53].xiv_iv, D.11703
	jmp	.L82	#
.L81:
	.loc 1 425 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.89
	movl	-60(%rbp), %edx	# ax, tmp150
	movslq	%edx, %rdx	# tmp150, D.11705
	addq	$1, %rdx	#, D.11705
	salq	$3, %rdx	#, D.11705
	addq	%rdx, %rax	# D.11705, D.11706
	movq	(%rax), %rax	# *_60, D.11707
	movq	%rax, %rdi	# D.11707,
	call	Perl_sv_2iv	#
.L82:
	.loc 1 425 0 discriminator 3
	movl	%eax, -64(%rbp)	# iftmp.86, lim
.L80:
.LBB13:
	.loc 1 429 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, -40(%rbp)	# tmp151, pv_lim_sv
	.loc 1 430 0
	cmpq	$0, -40(%rbp)	#, pv_lim_sv
	je	.L83	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pv_lim_sv, tmp152
	movl	12(%rax), %eax	# pv_lim_sv_65->sv_flags, D.11708
	andl	$65536, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L84	#,
	.loc 1 430 0 discriminator 3
	movq	-40(%rbp), %rax	# pv_lim_sv, tmp153
	movq	(%rax), %rax	# pv_lim_sv_65->sv_any, D.11709
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_68].xiv_iv, D.11703
	jmp	.L86	#
.L84:
	.loc 1 430 0 discriminator 4
	movq	-40(%rbp), %rax	# pv_lim_sv, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_2iv	#
	jmp	.L86	#
.L83:
	.loc 1 430 0 discriminator 2
	movl	$0, %eax	#, iftmp.90
.L86:
	.loc 1 430 0 discriminator 5
	movq	%rax, -32(%rbp)	# iftmp.90, pv_lim
	.loc 1 431 0 is_stmt 1 discriminator 5
	movl	$0, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, -24(%rbp)	# tmp155, dumpop
	.loc 1 432 0 discriminator 5
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, tmp156
	movl	%eax, -52(%rbp)	# tmp156, save_dumpindent
	.loc 1 433 0 discriminator 5
	movl	$2, PL_dumpindent(%rip)	#, PL_dumpindent
	.loc 1 435 0 discriminator 5
	cmpq	$0, -24(%rbp)	#, dumpop
	je	.L87	#,
	.loc 1 435 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, dumpop
	je	.L87	#,
	.loc 1 435 0 discriminator 3
	movq	-24(%rbp), %rax	# dumpop, tmp157
	movl	12(%rax), %eax	# dumpop_76->sv_flags, D.11708
	andl	$262144, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L88	#,
	.loc 1 435 0 discriminator 5
	movq	-24(%rbp), %rax	# dumpop, tmp158
	movq	(%rax), %rax	# dumpop_76->sv_any, PL_Xpv.94
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.94, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.95
	testq	%rax, %rax	# PL_Xpv.95
	je	.L89	#,
	.loc 1 435 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.96
	movq	8(%rax), %rax	# PL_Xpv.96_82->xpv_cur, D.11702
	cmpq	$1, %rax	#, D.11702
	ja	.L90	#,
	.loc 1 435 0 discriminator 10
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.97
	movq	8(%rax), %rax	# PL_Xpv.97_84->xpv_cur, D.11702
	testq	%rax, %rax	# D.11702
	je	.L89	#,
	.loc 1 435 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.98
	movq	(%rax), %rax	# PL_Xpv.98_86->xpv_pv, D.11710
	movzbl	(%rax), %eax	# *_87, D.11711
	cmpb	$48, %al	#, D.11711
	je	.L89	#,
.L90:
	.loc 1 435 0 discriminator 9
	movl	$1, %eax	#, iftmp.93
	jmp	.L91	#
.L89:
	.loc 1 435 0 discriminator 8
	movl	$0, %eax	#, iftmp.93
.L91:
	.loc 1 435 0 discriminator 11
	andl	$1, %eax	#, D.11712
	testb	%al, %al	# D.11712
	jne	.L92	#,
	jmp	.L87	#
.L88:
	.loc 1 435 0 discriminator 6
	movq	-24(%rbp), %rax	# dumpop, tmp159
	movl	12(%rax), %eax	# dumpop_76->sv_flags, D.11708
	andl	$65536, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L93	#,
	.loc 1 435 0 discriminator 12
	movq	-24(%rbp), %rax	# dumpop, tmp160
	movq	(%rax), %rax	# dumpop_76->sv_any, D.11709
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_94].xiv_iv, D.11703
	testq	%rax, %rax	# D.11703
	jne	.L92	#,
	jmp	.L87	#
.L93:
	.loc 1 435 0 discriminator 13
	movq	-24(%rbp), %rax	# dumpop, tmp161
	movl	12(%rax), %eax	# dumpop_76->sv_flags, D.11708
	andl	$131072, %eax	#, D.11708
	testl	%eax, %eax	# D.11708
	je	.L94	#,
	.loc 1 435 0 discriminator 14
	movq	-24(%rbp), %rax	# dumpop, tmp162
	movq	(%rax), %rax	# dumpop_76->sv_any, D.11709
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_98].xnv_nv, D.11713
	xorpd	%xmm1, %xmm1	# tmp163
	ucomisd	%xmm1, %xmm0	# tmp163, D.11713
	jp	.L92	#,
	xorpd	%xmm1, %xmm1	# tmp164
	ucomisd	%xmm1, %xmm0	# tmp164, D.11713
	jne	.L92	#,
	jmp	.L87	#
.L94:
	.loc 1 435 0 discriminator 15
	movq	-24(%rbp), %rax	# dumpop, tmp165
	movq	%rax, %rdi	# tmp165,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.11711
	je	.L87	#,
.L92:
	.loc 1 435 0 discriminator 16
	movl	$1, %eax	#, iftmp.92
	jmp	.L95	#
.L87:
	.loc 1 435 0 discriminator 2
	movl	$0, %eax	#, iftmp.92
.L95:
	.loc 1 434 0 is_stmt 1 discriminator 17
	movsbl	%al, %r12d	# D.11711, D.11701
	call	Perl_PerlIO_stderr	#
	movl	-64(%rbp), %esi	# lim, tmp166
	movq	-48(%rbp), %rdx	# sv, tmp167
	movq	-32(%rbp), %rcx	# pv_lim, tmp168
	movq	%rcx, (%rsp)	# tmp168,
	movl	%r12d, %r9d	# D.11701,
	movl	%esi, %r8d	# tmp166,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.11714,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
	.loc 1 436 0 discriminator 17
	movl	-52(%rbp), %eax	# save_dumpindent, tmp169
	movl	%eax, PL_dumpindent(%rip)	# tmp169, PL_dumpindent
.LBE13:
	.loc 1 439 0 discriminator 17
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 440 0 discriminator 17
	nop
.LBE12:
	.loc 1 442 0 discriminator 17
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	XS_Devel__Peek_Dump, .-XS_Devel__Peek_Dump
	.section	.rodata
	.align 8
.LC18:
	.string	"Usage: Devel::Peek::DumpArray(lim, ...)"
.LC19:
	.string	"Elt No. %ld  0x%lx\n"
	.text
	.globl	XS_Devel__Peek_DumpArray
	.type	XS_Devel__Peek_DumpArray, @function
XS_Devel__Peek_DumpArray:
.LFB12:
	.loc 1 446 0
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
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 1 447 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.99
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.100
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.102
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.102, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.101_10, D.11718
	cltq
	salq	$3, %rax	#, D.11719
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.103
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.104
	subq	%rax, %rdx	# PL_stack_base.105, D.11720
	movq	%rdx, %rax	# D.11720, D.11720
	sarq	$3, %rax	#, tmp154
	addl	$1, %eax	#, D.11721
	movl	%eax, -80(%rbp)	# D.11721, ax
	movq	%rbx, %rdx	# sp, sp.106
	movq	%r12, %rax	# mark, mark.107
	subq	%rax, %rdx	# mark.107, D.11720
	movq	%rdx, %rax	# D.11720, D.11720
	sarq	$3, %rax	#, tmp155
	movl	%eax, -76(%rbp)	# D.11720, items
	.loc 1 448 0
	cmpl	$0, -76(%rbp)	#, items
	jg	.L98	#,
	.loc 1 449 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L98:
	.loc 1 450 0
	movl	-76(%rbp), %eax	# items, tmp156
	cltq
	salq	$3, %rax	#, D.11719
	negq	%rax	# D.11722
	addq	%rax, %rbx	# D.11722, sp
.LBB14:
	.loc 1 452 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.109
	movl	-80(%rbp), %edx	# ax, tmp157
	movslq	%edx, %rdx	# tmp157, D.11719
	salq	$3, %rdx	#, D.11719
	addq	%rdx, %rax	# D.11719, D.11723
	movq	(%rax), %rax	# *_36, D.11724
	movl	12(%rax), %eax	# _37->sv_flags, D.11725
	andl	$65536, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	je	.L99	#,
	.loc 1 452 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.110
	movl	-80(%rbp), %edx	# ax, tmp158
	movslq	%edx, %rdx	# tmp158, D.11719
	salq	$3, %rdx	#, D.11719
	addq	%rdx, %rax	# D.11719, D.11723
	movq	(%rax), %rax	# *_43, D.11724
	movq	(%rax), %rax	# _44->sv_any, D.11726
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.11720
	jmp	.L100	#
.L99:
	.loc 1 452 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.111
	movl	-80(%rbp), %edx	# ax, tmp159
	movslq	%edx, %rdx	# tmp159, D.11719
	salq	$3, %rdx	#, D.11719
	addq	%rdx, %rax	# D.11719, D.11723
	movq	(%rax), %rax	# *_51, D.11724
	movq	%rax, %rdi	# D.11724,
	call	Perl_sv_2iv	#
.L100:
	.loc 1 452 0 discriminator 3
	movl	%eax, -72(%rbp)	# iftmp.108, lim
.LBB15:
	.loc 1 456 0 is_stmt 1 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, -56(%rbp)	# tmp160, pv_lim_sv
	.loc 1 457 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, pv_lim_sv
	je	.L101	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pv_lim_sv, tmp161
	movl	12(%rax), %eax	# pv_lim_sv_56->sv_flags, D.11725
	andl	$65536, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	je	.L102	#,
	.loc 1 457 0 discriminator 3
	movq	-56(%rbp), %rax	# pv_lim_sv, tmp162
	movq	(%rax), %rax	# pv_lim_sv_56->sv_any, D.11726
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_59].xiv_iv, D.11720
	jmp	.L104	#
.L102:
	.loc 1 457 0 discriminator 4
	movq	-56(%rbp), %rax	# pv_lim_sv, tmp163
	movq	%rax, %rdi	# tmp163,
	call	Perl_sv_2iv	#
	jmp	.L104	#
.L101:
	.loc 1 457 0 discriminator 2
	movl	$0, %eax	#, iftmp.112
.L104:
	.loc 1 457 0 discriminator 5
	movq	%rax, -48(%rbp)	# iftmp.112, pv_lim
	.loc 1 458 0 is_stmt 1 discriminator 5
	movl	$0, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, -40(%rbp)	# tmp164, dumpop
	.loc 1 459 0 discriminator 5
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, tmp165
	movl	%eax, -68(%rbp)	# tmp165, save_dumpindent
	.loc 1 460 0 discriminator 5
	movl	$2, PL_dumpindent(%rip)	#, PL_dumpindent
	.loc 1 462 0 discriminator 5
	movq	$1, -64(%rbp)	#, i
	jmp	.L105	#
.L115:
	.loc 1 463 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.114
	movl	-80(%rbp), %edx	# ax, tmp166
	movslq	%edx, %rcx	# tmp166, D.11720
	movq	-64(%rbp), %rdx	# i, tmp167
	addq	%rcx, %rdx	# D.11720, D.11720
	salq	$3, %rdx	#, D.11719
	addq	%rdx, %rax	# D.11719, D.11723
	movq	(%rax), %rax	# *_76, D.11724
	movq	%rax, %r12	# D.11724, D.11719
	movq	-64(%rbp), %rax	# i, tmp168
	leaq	-1(%rax), %r13	#, D.11720
	call	Perl_PerlIO_stderr	#
	movq	%r12, %rcx	# D.11719,
	movq	%r13, %rdx	# D.11720,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.11727,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 465 0
	cmpq	$0, -40(%rbp)	#, dumpop
	je	.L106	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, dumpop
	je	.L106	#,
	.loc 1 465 0 discriminator 3
	movq	-40(%rbp), %rax	# dumpop, tmp169
	movl	12(%rax), %eax	# dumpop_67->sv_flags, D.11725
	andl	$262144, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	je	.L107	#,
	.loc 1 465 0 discriminator 5
	movq	-40(%rbp), %rax	# dumpop, tmp170
	movq	(%rax), %rax	# dumpop_67->sv_any, PL_Xpv.117
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.117, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.118
	testq	%rax, %rax	# PL_Xpv.118
	je	.L108	#,
	.loc 1 465 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.119
	movq	8(%rax), %rax	# PL_Xpv.119_85->xpv_cur, D.11719
	cmpq	$1, %rax	#, D.11719
	ja	.L109	#,
	.loc 1 465 0 discriminator 10
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.120
	movq	8(%rax), %rax	# PL_Xpv.120_87->xpv_cur, D.11719
	testq	%rax, %rax	# D.11719
	je	.L108	#,
	.loc 1 465 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.121
	movq	(%rax), %rax	# PL_Xpv.121_89->xpv_pv, D.11728
	movzbl	(%rax), %eax	# *_90, D.11729
	cmpb	$48, %al	#, D.11729
	je	.L108	#,
.L109:
	.loc 1 465 0 discriminator 9
	movl	$1, %eax	#, iftmp.116
	jmp	.L110	#
.L108:
	.loc 1 465 0 discriminator 8
	movl	$0, %eax	#, iftmp.116
.L110:
	.loc 1 465 0 discriminator 11
	andl	$1, %eax	#, D.11730
	testb	%al, %al	# D.11730
	jne	.L111	#,
	jmp	.L106	#
.L107:
	.loc 1 465 0 discriminator 6
	movq	-40(%rbp), %rax	# dumpop, tmp171
	movl	12(%rax), %eax	# dumpop_67->sv_flags, D.11725
	andl	$65536, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	je	.L112	#,
	.loc 1 465 0 discriminator 12
	movq	-40(%rbp), %rax	# dumpop, tmp172
	movq	(%rax), %rax	# dumpop_67->sv_any, D.11726
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_97].xiv_iv, D.11720
	testq	%rax, %rax	# D.11720
	jne	.L111	#,
	jmp	.L106	#
.L112:
	.loc 1 465 0 discriminator 13
	movq	-40(%rbp), %rax	# dumpop, tmp173
	movl	12(%rax), %eax	# dumpop_67->sv_flags, D.11725
	andl	$131072, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	je	.L113	#,
	.loc 1 465 0 discriminator 14
	movq	-40(%rbp), %rax	# dumpop, tmp174
	movq	(%rax), %rax	# dumpop_67->sv_any, D.11726
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_101].xnv_nv, D.11731
	xorpd	%xmm1, %xmm1	# tmp175
	ucomisd	%xmm1, %xmm0	# tmp175, D.11731
	jp	.L111	#,
	xorpd	%xmm1, %xmm1	# tmp176
	ucomisd	%xmm1, %xmm0	# tmp176, D.11731
	jne	.L111	#,
	jmp	.L106	#
.L113:
	.loc 1 465 0 discriminator 15
	movq	-40(%rbp), %rax	# dumpop, tmp177
	movq	%rax, %rdi	# tmp177,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.11729
	je	.L106	#,
.L111:
	.loc 1 465 0 discriminator 16
	movl	$1, %eax	#, iftmp.115
	jmp	.L114	#
.L106:
	.loc 1 465 0 discriminator 2
	movl	$0, %eax	#, iftmp.115
.L114:
	.loc 1 464 0 is_stmt 1 discriminator 17
	movsbl	%al, %r13d	# D.11729, D.11718
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.122
	movl	-80(%rbp), %edx	# ax, tmp178
	movslq	%edx, %rcx	# tmp178, D.11720
	movq	-64(%rbp), %rdx	# i, tmp179
	addq	%rcx, %rdx	# D.11720, D.11720
	salq	$3, %rdx	#, D.11719
	addq	%rdx, %rax	# D.11719, D.11723
	movq	(%rax), %r12	# *_113, D.11724
	call	Perl_PerlIO_stderr	#
	movl	-72(%rbp), %ecx	# lim, tmp180
	movq	-48(%rbp), %rdx	# pv_lim, tmp181
	movq	%rdx, (%rsp)	# tmp181,
	movl	%r13d, %r9d	# D.11718,
	movl	%ecx, %r8d	# tmp180,
	movl	$0, %ecx	#,
	movq	%r12, %rdx	# D.11724,
	movq	%rax, %rsi	# D.11727,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
	.loc 1 462 0 discriminator 17
	addq	$1, -64(%rbp)	#, i
.L105:
	.loc 1 462 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# items, tmp182
	cltq
	cmpq	-64(%rbp), %rax	# i, D.11720
	jg	.L115	#,
	.loc 1 467 0 is_stmt 1
	movl	-68(%rbp), %eax	# save_dumpindent, tmp183
	movl	%eax, PL_dumpindent(%rip)	# tmp183, PL_dumpindent
.LBE15:
	.loc 1 470 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 471 0
	nop
.LBE14:
	.loc 1 473 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	XS_Devel__Peek_DumpArray, .-XS_Devel__Peek_DumpArray
	.section	.rodata
	.align 8
.LC20:
	.string	"Usage: Devel::Peek::DumpProg()"
.LC21:
	.string	"dumpindent is %d"
	.text
	.globl	XS_Devel__Peek_DumpProg
	.type	XS_Devel__Peek_DumpProg, @function
XS_Devel__Peek_DumpProg:
.LFB13:
	.loc 1 477 0
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
	.loc 1 478 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.123
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.124
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.126
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.126, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.125_4, D.11734
	cltq
	salq	$3, %rax	#, D.11735
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.127
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.128
	subq	%rax, %rdx	# PL_stack_base.129, D.11736
	movq	%rdx, %rax	# D.11736, D.11736
	sarq	$3, %rax	#, tmp85
	addl	$1, %eax	#, D.11737
	movl	%eax, -24(%rbp)	# D.11737, ax
	movq	%rbx, %rdx	# sp, sp.130
	movq	%r12, %rax	# mark, mark.131
	subq	%rax, %rdx	# mark.131, D.11736
	movq	%rdx, %rax	# D.11736, D.11736
	sarq	$3, %rax	#, tmp86
	movl	%eax, -20(%rbp)	# D.11736, items
	.loc 1 479 0
	cmpl	$0, -20(%rbp)	#, items
	je	.L121	#,
	.loc 1 480 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L121:
	.loc 1 482 0
	movl	-20(%rbp), %eax	# items, tmp87
	cltq
	salq	$3, %rax	#, D.11735
	negq	%rax	# D.11738
	addq	%rax, %rbx	# D.11738, sp
	.loc 1 486 0
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, PL_dumpindent.132
	movl	%eax, %esi	# PL_dumpindent.132,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 487 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.133
	testq	%rax, %rax	# PL_main_root.133
	je	.L119	#,
	.loc 1 488 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.134
	movq	%rax, %rdi	# PL_main_root.134,
	call	Perl_op_dump	#
.L119:
	.loc 1 491 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 492 0
	nop
	.loc 1 494 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	XS_Devel__Peek_DumpProg, .-XS_Devel__Peek_DumpProg
	.section	.rodata
	.align 8
.LC22:
	.string	"Usage: Devel::Peek::SvREFCNT(sv)"
	.text
	.globl	XS_Devel__Peek_SvREFCNT
	.type	XS_Devel__Peek_SvREFCNT, @function
XS_Devel__Peek_SvREFCNT:
.LFB14:
	.loc 1 498 0
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
	.loc 1 499 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.135
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.136
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.138
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.138, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.137_5, D.11741
	cltq
	salq	$3, %rax	#, D.11742
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.139
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.140
	subq	%rax, %rdx	# PL_stack_base.141, D.11743
	movq	%rdx, %rax	# D.11743, D.11743
	sarq	$3, %rax	#, tmp109
	addl	$1, %eax	#, D.11744
	movl	%eax, -52(%rbp)	# D.11744, ax
	movq	%rbx, %rdx	# sp, sp.142
	movq	%r12, %rax	# mark, mark.143
	subq	%rax, %rdx	# mark.143, D.11743
	movq	%rdx, %rax	# D.11743, D.11743
	sarq	$3, %rax	#, tmp110
	movl	%eax, -48(%rbp)	# D.11743, items
	.loc 1 500 0
	cmpl	$1, -48(%rbp)	#, items
	je	.L123	#,
	.loc 1 501 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L123:
.LBB16:
	.loc 1 503 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.144
	movl	-52(%rbp), %edx	# ax, tmp111
	movslq	%edx, %rdx	# tmp111, D.11742
	salq	$3, %rdx	#, D.11742
	addq	%rdx, %rax	# D.11742, D.11745
	movq	(%rax), %rax	# *_27, tmp112
	movq	%rax, -40(%rbp)	# tmp112, sv
	.loc 1 505 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.146
	movzbl	37(%rax), %eax	# PL_op.146_29->op_private, D.11746
	movzbl	%al, %eax	# D.11746, D.11741
	andl	$32, %eax	#, D.11741
	testl	%eax, %eax	# D.11741
	je	.L124	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.147
	movq	PL_op(%rip), %rax	# PL_op, PL_op.148
	movq	24(%rax), %rax	# PL_op.148_34->op_targ, D.11742
	salq	$3, %rax	#, D.11742
	addq	%rdx, %rax	# PL_curpad.147, D.11745
	movq	(%rax), %rax	# *_37, iftmp.145
	jmp	.L125	#
.L124:
	.loc 1 505 0 discriminator 2
	call	Perl_sv_newmortal	#
.L125:
	.loc 1 505 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.145, targ
	.loc 1 507 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp113
	movl	8(%rax), %eax	# sv_28->sv_refcnt, D.11747
	movl	%eax, -44(%rbp)	# D.11747, RETVAL
	.loc 1 508 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.149
	movl	-52(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.11742
	salq	$3, %rdx	#, D.11742
	subq	$8, %rdx	#, D.11748
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB17:
	movl	-44(%rbp), %eax	# RETVAL, tmp115
	movslq	%eax, %rdx	# tmp115, D.11743
	movq	-32(%rbp), %rax	# targ, tmp116
	movq	%rdx, %rsi	# D.11743,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_setiv	#
.LBB18:
	movq	-32(%rbp), %rax	# targ, tmp117
	movl	12(%rax), %eax	# targ_40->sv_flags, D.11747
	andl	$16384, %eax	#, D.11747
	testl	%eax, %eax	# D.11747
	je	.L126	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Perl_mg_set	#
.L126:
	.loc 1 508 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp119
	movq	%rax, (%rbx)	# tmp119, *sp_51
.LBE18:
.LBE17:
.LBE16:
.LBB19:
	.loc 1 510 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.150
	movl	-52(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rcx	# tmp120, D.11748
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.151
	addq	%rcx, %rdx	# D.11748, D.11748
	salq	$3, %rdx	#, D.11748
	subq	$8, %rdx	#, D.11748
	addq	%rdx, %rax	# D.11748, PL_stack_sp.152
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.152, PL_stack_sp
	nop
.LBE19:
	.loc 1 511 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	XS_Devel__Peek_SvREFCNT, .-XS_Devel__Peek_SvREFCNT
	.section	.rodata
	.align 8
.LC23:
	.string	"Usage: Devel::Peek::SvREFCNT_inc(sv)"
	.text
	.globl	XS_Devel__Peek_SvREFCNT_inc
	.type	XS_Devel__Peek_SvREFCNT_inc, @function
XS_Devel__Peek_SvREFCNT_inc:
.LFB15:
	.loc 1 515 0
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
	.loc 1 516 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.153
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.154
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.156
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.156, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.155_4, D.11751
	cltq
	salq	$3, %rax	#, D.11752
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.157
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.158
	subq	%rax, %rdx	# PL_stack_base.159, D.11753
	movq	%rdx, %rax	# D.11753, D.11753
	sarq	$3, %rax	#, tmp93
	addl	$1, %eax	#, D.11754
	movl	%eax, -40(%rbp)	# D.11754, ax
	movq	%rbx, %rdx	# sp, sp.160
	movq	%r12, %rax	# mark, mark.161
	subq	%rax, %rdx	# mark.161, D.11753
	movq	%rdx, %rax	# D.11753, D.11753
	sarq	$3, %rax	#, tmp94
	movl	%eax, -36(%rbp)	# D.11753, items
	.loc 1 517 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L129	#,
	.loc 1 518 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L129:
	.loc 1 519 0
	movl	-36(%rbp), %eax	# items, tmp95
	cltq
	salq	$3, %rax	#, D.11752
	negq	%rax	# D.11755
	addq	%rax, %rbx	# D.11755, sp
.LBB20:
	.loc 1 521 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.162
	movl	-40(%rbp), %edx	# ax, tmp96
	movslq	%edx, %rdx	# tmp96, D.11752
	salq	$3, %rdx	#, D.11752
	addq	%rdx, %rax	# D.11752, D.11756
	movq	(%rax), %rax	# *_30, tmp97
	movq	%rax, -32(%rbp)	# tmp97, sv
	.loc 1 525 0
	movq	-32(%rbp), %rax	# sv, tmp98
	movq	%rax, PL_Sv(%rip)	# tmp98, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.164
	testq	%rax, %rax	# PL_Sv.164
	je	.L131	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.165
	movl	8(%rax), %edx	# PL_Sv.165_33->sv_refcnt, D.11757
	addl	$1, %edx	#, D.11757
	movl	%edx, 8(%rax)	# D.11757, PL_Sv.165_33->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.165_33->sv_refcnt, D.11757
	testl	%eax, %eax	# D.11757
	je	.L131	#,
	.loc 1 525 0
	nop
.L131:
	.loc 1 525 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp99
	movq	%rax, -24(%rbp)	# tmp99, RETVAL
	.loc 1 526 0 is_stmt 1 discriminator 4
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# RETVAL, tmp100
	movq	%rax, (%rbx)	# tmp100, *sp_40
	.loc 1 529 0 discriminator 4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 530 0 discriminator 4
	nop
.LBE20:
	.loc 1 532 0 discriminator 4
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	XS_Devel__Peek_SvREFCNT_inc, .-XS_Devel__Peek_SvREFCNT_inc
	.section	.rodata
	.align 8
.LC24:
	.string	"Usage: Devel::Peek::SvREFCNT_dec(sv)"
	.text
	.globl	XS_Devel__Peek_SvREFCNT_dec
	.type	XS_Devel__Peek_SvREFCNT_dec, @function
XS_Devel__Peek_SvREFCNT_dec:
.LFB16:
	.loc 1 536 0
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
	.loc 1 537 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.166
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.167
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.169
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.169, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.168_4, D.11759
	cltq
	salq	$3, %rax	#, D.11760
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.170
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.171
	subq	%rax, %rdx	# PL_stack_base.172, D.11761
	movq	%rdx, %rax	# D.11761, D.11761
	sarq	$3, %rax	#, tmp86
	addl	$1, %eax	#, D.11762
	movl	%eax, -32(%rbp)	# D.11762, ax
	movq	%rbx, %rdx	# sp, sp.173
	movq	%r12, %rax	# mark, mark.174
	subq	%rax, %rdx	# mark.174, D.11761
	movq	%rdx, %rax	# D.11761, D.11761
	sarq	$3, %rax	#, tmp87
	movl	%eax, -28(%rbp)	# D.11761, items
	.loc 1 538 0
	cmpl	$1, -28(%rbp)	#, items
	je	.L134	#,
	.loc 1 539 0
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L134:
	.loc 1 540 0
	movl	-28(%rbp), %eax	# items, tmp88
	cltq
	salq	$3, %rax	#, D.11760
	negq	%rax	# D.11763
	addq	%rax, %rbx	# D.11763, sp
.LBB21:
	.loc 1 542 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.175
	movl	-32(%rbp), %edx	# ax, tmp89
	movslq	%edx, %rdx	# tmp89, D.11760
	salq	$3, %rdx	#, D.11760
	addq	%rdx, %rax	# D.11760, D.11764
	movq	(%rax), %rax	# *_30, tmp90
	movq	%rax, -24(%rbp)	# tmp90, sv
	.loc 1 545 0
	movq	-24(%rbp), %rax	# sv, tmp91
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_free	#
	.loc 1 546 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# sv, tmp92
	movq	%rax, (%rbx)	# tmp92, *sp_32
	.loc 1 549 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 550 0
	nop
.LBE21:
	.loc 1 552 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	XS_Devel__Peek_SvREFCNT_dec, .-XS_Devel__Peek_SvREFCNT_dec
	.section	.rodata
	.align 8
.LC25:
	.string	"Usage: Devel::Peek::DeadCode()"
	.text
	.globl	XS_Devel__Peek_DeadCode
	.type	XS_Devel__Peek_DeadCode, @function
XS_Devel__Peek_DeadCode:
.LFB17:
	.loc 1 556 0
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
	.loc 1 557 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.176
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.177
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.179
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.179, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.178_4, D.11766
	cltq
	salq	$3, %rax	#, D.11767
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.180
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.181
	subq	%rax, %rdx	# PL_stack_base.182, D.11768
	movq	%rdx, %rax	# D.11768, D.11768
	sarq	$3, %rax	#, tmp95
	addl	$1, %eax	#, D.11769
	movl	%eax, -40(%rbp)	# D.11769, ax
	movq	%r12, %rdx	# sp, sp.183
	movq	%rbx, %rax	# mark, mark.184
	subq	%rax, %rdx	# mark.184, D.11768
	movq	%rdx, %rax	# D.11768, D.11768
	sarq	$3, %rax	#, tmp96
	movl	%eax, -36(%rbp)	# D.11768, items
	.loc 1 558 0
	cmpl	$0, -36(%rbp)	#, items
	je	.L137	#,
	.loc 1 559 0
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L137:
.LBB22:
	.loc 1 563 0
	call	DeadCode	#
	movq	%rax, -32(%rbp)	# tmp97, RETVAL
	.loc 1 565 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.185
	movl	-40(%rbp), %edx	# ax, tmp98
	movslq	%edx, %rdx	# tmp98, D.11767
	salq	$3, %rdx	#, D.11767
	addq	%rax, %rdx	# PL_stack_base.185, D.11770
	movq	-32(%rbp), %rax	# RETVAL, tmp99
	movq	%rax, (%rdx)	# tmp99, *_27
	.loc 1 566 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.186
	movl	-40(%rbp), %edx	# ax, tmp100
	movslq	%edx, %rdx	# tmp100, D.11767
	salq	$3, %rdx	#, D.11767
	addq	%rdx, %rax	# D.11767, D.11770
	movq	(%rax), %rax	# *_31, D.11771
	movq	%rax, %rdi	# D.11771,
	call	Perl_sv_2mortal	#
.LBE22:
.LBB23:
	.loc 1 568 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.187
	movl	-40(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rcx	# tmp101, D.11772
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.188
	addq	%rcx, %rdx	# D.11772, D.11772
	salq	$3, %rdx	#, D.11772
	subq	$8, %rdx	#, D.11772
	addq	%rdx, %rax	# D.11772, PL_stack_sp.189
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.189, PL_stack_sp
	nop
.LBE23:
	.loc 1 569 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	XS_Devel__Peek_DeadCode, .-XS_Devel__Peek_DeadCode
	.section	.rodata
.LC26:
	.string	"Usage: Devel::Peek::CvGV(cv)"
	.text
	.globl	XS_Devel__Peek_CvGV
	.type	XS_Devel__Peek_CvGV, @function
XS_Devel__Peek_CvGV:
.LFB18:
	.loc 1 573 0
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
	.loc 1 574 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.190
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.191
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.193
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.193, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.192_5, D.11774
	cltq
	salq	$3, %rax	#, D.11775
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.194
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.195
	subq	%rax, %rdx	# PL_stack_base.196, D.11776
	movq	%rdx, %rax	# D.11776, D.11776
	sarq	$3, %rax	#, tmp117
	addl	$1, %eax	#, D.11777
	movl	%eax, -48(%rbp)	# D.11777, ax
	movq	%r12, %rdx	# sp, sp.197
	movq	%rbx, %rax	# mark, mark.198
	subq	%rax, %rdx	# mark.198, D.11776
	movq	%rdx, %rax	# D.11776, D.11776
	sarq	$3, %rax	#, tmp118
	movl	%eax, -44(%rbp)	# D.11776, items
	.loc 1 575 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L140	#,
	.loc 1 576 0
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L140:
.LBB24:
	.loc 1 578 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.199
	movl	-48(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11775
	salq	$3, %rdx	#, D.11775
	addq	%rdx, %rax	# D.11775, D.11778
	movq	(%rax), %rax	# *_27, tmp120
	movq	%rax, -40(%rbp)	# tmp120, cv
	.loc 1 581 0
	movq	-40(%rbp), %rax	# cv, tmp121
	movl	12(%rax), %eax	# cv_28->sv_flags, D.11779
	andl	$524288, %eax	#, D.11779
	testl	%eax, %eax	# D.11779
	je	.L141	#,
	.loc 1 581 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cv, tmp122
	movq	(%rax), %rax	# cv_28->sv_any, D.11780
	movq	(%rax), %rax	# MEM[(struct XRV *)_31].xrv_rv, D.11781
	movl	12(%rax), %eax	# _32->sv_flags, D.11779
	movzbl	%al, %eax	# D.11779, D.11779
	cmpl	$12, %eax	#, D.11779
	jne	.L141	#,
	movq	-40(%rbp), %rax	# cv, tmp123
	movq	(%rax), %rax	# cv_28->sv_any, D.11780
	movq	(%rax), %rax	# MEM[(struct XRV *)_35].xrv_rv, D.11781
	movq	(%rax), %rax	# MEM[(struct CV *)_36].sv_any, D.11782
	movq	96(%rax), %rax	# _37->xcv_gv, PL_Sv.201
	movq	%rax, PL_Sv(%rip)	# PL_Sv.201, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.203
	testq	%rax, %rax	# PL_Sv.203
	je	.L143	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.204
	movl	8(%rax), %edx	# PL_Sv.204_40->sv_refcnt, D.11779
	addl	$1, %edx	#, D.11779
	movl	%edx, 8(%rax)	# D.11779, PL_Sv.204_40->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.204_40->sv_refcnt, D.11779
	testl	%eax, %eax	# D.11779
	je	.L143	#,
	.loc 1 581 0
	nop
.L143:
	.loc 1 581 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, iftmp.200
	jmp	.L144	#
.L141:
	.loc 1 581 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.200
.L144:
	.loc 1 581 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.200, RETVAL
	.loc 1 582 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.205
	movl	-48(%rbp), %edx	# ax, tmp124
	movslq	%edx, %rdx	# tmp124, D.11775
	salq	$3, %rdx	#, D.11775
	addq	%rax, %rdx	# PL_stack_base.205, D.11778
	movq	-32(%rbp), %rax	# RETVAL, tmp125
	movq	%rax, (%rdx)	# tmp125, *_52
	.loc 1 583 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.206
	movl	-48(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rdx	# tmp126, D.11775
	salq	$3, %rdx	#, D.11775
	addq	%rdx, %rax	# D.11775, D.11778
	movq	(%rax), %rax	# *_56, D.11781
	movq	%rax, %rdi	# D.11781,
	call	Perl_sv_2mortal	#
.LBE24:
.LBB25:
	.loc 1 585 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.207
	movl	-48(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rcx	# tmp127, D.11783
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.208
	addq	%rcx, %rdx	# D.11783, D.11783
	salq	$3, %rdx	#, D.11783
	subq	$8, %rdx	#, D.11783
	addq	%rdx, %rax	# D.11783, PL_stack_sp.209
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.209, PL_stack_sp
	nop
.LBE25:
	.loc 1 586 0 discriminator 3
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	XS_Devel__Peek_CvGV, .-XS_Devel__Peek_CvGV
	.section	.rodata
	.align 8
.LC27:
	.string	"Usage: Devel::Peek::runops_debug(flag= -1)"
	.text
	.globl	XS_Devel__Peek_runops_debug
	.type	XS_Devel__Peek_runops_debug, @function
XS_Devel__Peek_runops_debug:
.LFB19:
	.loc 1 590 0
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
	.loc 1 591 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.210
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.211
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.213
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.213, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.212_7, D.11785
	cltq
	salq	$3, %rax	#, D.11786
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.214
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.215
	subq	%rax, %rdx	# PL_stack_base.216, D.11787
	movq	%rdx, %rax	# D.11787, D.11787
	sarq	$3, %rax	#, tmp117
	addl	$1, %eax	#, D.11788
	movl	%eax, -32(%rbp)	# D.11788, ax
	movq	%r12, %rdx	# sp, sp.217
	movq	%rbx, %rax	# mark, mark.218
	subq	%rax, %rdx	# mark.218, D.11787
	movq	%rdx, %rax	# D.11787, D.11787
	sarq	$3, %rax	#, tmp118
	movl	%eax, -28(%rbp)	# D.11787, items
	.loc 1 592 0
	cmpl	$0, -28(%rbp)	#, items
	js	.L147	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	cmpl	$1, -28(%rbp)	#, items
	jle	.L148	#,
.L147:
	.loc 1 593 0 is_stmt 1
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L148:
.LBB26:
	.loc 1 598 0
	cmpl	$0, -28(%rbp)	#, items
	jg	.L149	#,
	.loc 1 599 0
	movl	$-1, -36(%rbp)	#, flag
	jmp	.L150	#
.L149:
	.loc 1 601 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.220
	movl	-32(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.11786
	salq	$3, %rdx	#, D.11786
	addq	%rdx, %rax	# D.11786, D.11789
	movq	(%rax), %rax	# *_30, D.11790
	movl	12(%rax), %eax	# _31->sv_flags, D.11791
	andl	$65536, %eax	#, D.11791
	testl	%eax, %eax	# D.11791
	je	.L151	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.221
	movl	-32(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.11786
	salq	$3, %rdx	#, D.11786
	addq	%rdx, %rax	# D.11786, D.11789
	movq	(%rax), %rax	# *_37, D.11790
	movq	(%rax), %rax	# _38->sv_any, D.11792
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_39].xiv_iv, D.11787
	jmp	.L152	#
.L151:
	.loc 1 601 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.222
	movl	-32(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.11786
	salq	$3, %rdx	#, D.11786
	addq	%rdx, %rax	# D.11786, D.11789
	movq	(%rax), %rax	# *_45, D.11790
	movq	%rax, %rdi	# D.11790,
	call	Perl_sv_2iv	#
.L152:
	.loc 1 601 0 discriminator 3
	movl	%eax, -36(%rbp)	# iftmp.219, flag
.L150:
	.loc 1 604 0 is_stmt 1
	movl	-36(%rbp), %eax	# flag, tmp122
	movl	%eax, %edi	# tmp122,
	call	_runops_debug	#
	movb	%al, -37(%rbp)	# tmp123, RETVAL
	.loc 1 605 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.223
	movl	-32(%rbp), %edx	# ax, tmp124
	movslq	%edx, %rdx	# tmp124, D.11786
	salq	$3, %rdx	#, D.11786
	addq	%rax, %rdx	# PL_stack_base.223, D.11789
	cmpb	$0, -37(%rbp)	#, RETVAL
	je	.L153	#,
	.loc 1 605 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.224
	jmp	.L154	#
.L153:
	.loc 1 605 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.224
.L154:
	.loc 1 605 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.224, *_54
	.loc 1 606 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.225
	movl	-32(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.11786
	salq	$3, %rdx	#, D.11786
	addq	%rdx, %rax	# D.11786, D.11789
	movq	(%rax), %rax	# *_60, D.11790
	movq	%rax, %rdi	# D.11790,
	call	Perl_sv_2mortal	#
.LBE26:
.LBB27:
	.loc 1 608 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.226
	movl	-32(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rcx	# tmp126, D.11793
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.227
	addq	%rcx, %rdx	# D.11793, D.11793
	salq	$3, %rdx	#, D.11793
	subq	$8, %rdx	#, D.11793
	addq	%rdx, %rax	# D.11793, PL_stack_sp.228
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.228, PL_stack_sp
	nop
.LBE27:
	.loc 1 609 0 discriminator 3
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	XS_Devel__Peek_runops_debug, .-XS_Devel__Peek_runops_debug
	.section	.rodata
.LC28:
	.string	"Peek.c"
.LC29:
	.string	"Devel::Peek::mstat"
.LC30:
	.string	"Devel::Peek::fill_mstats"
.LC31:
	.string	"Devel::Peek::mstats_fillhash"
.LC32:
	.string	"\\%;$"
.LC33:
	.string	"Devel::Peek::mstats2hash"
.LC34:
	.string	"$\\%;$"
.LC35:
	.string	"Devel::Peek::Dump"
.LC36:
	.string	"Devel::Peek::DumpArray"
.LC37:
	.string	"Devel::Peek::DumpProg"
.LC38:
	.string	"Devel::Peek::SvREFCNT"
.LC39:
	.string	"Devel::Peek::SvREFCNT_inc"
.LC40:
	.string	"Devel::Peek::SvREFCNT_dec"
.LC41:
	.string	"Devel::Peek::DeadCode"
.LC42:
	.string	"Devel::Peek::CvGV"
.LC43:
	.string	"Devel::Peek::runops_debug"
	.text
	.globl	boot_Devel__Peek
	.type	boot_Devel__Peek, @function
boot_Devel__Peek:
.LFB20:
	.loc 1 616 0
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
	.loc 1 617 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.229
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.230
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.232
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.232, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.231_4, D.11795
	cltq
	salq	$3, %rax	#, D.11796
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.233
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.234
	subq	%rax, %rdx	# PL_stack_base.235, D.11797
	movq	%rdx, %rax	# D.11797, D.11797
	sarq	$3, %rax	#, tmp92
	addl	$1, %eax	#, D.11798
	movl	%eax, -40(%rbp)	# D.11798, ax
	movq	%r12, %rdx	# sp, sp.236
	movq	%rbx, %rax	# mark, mark.237
	subq	%rax, %rdx	# mark.237, D.11797
	movq	%rdx, %rax	# D.11797, D.11797
	sarq	$3, %rax	#, tmp93
	movl	%eax, -36(%rbp)	# D.11797, items
	.loc 1 618 0
	movq	$.LC28, -32(%rbp)	#, file
	.loc 1 622 0
	movq	-32(%rbp), %rax	# file, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$XS_Devel__Peek_mstat, %esi	#,
	movl	$.LC29, %edi	#,
	call	Perl_newXS	#
	.loc 1 623 0
	movq	-32(%rbp), %rax	# file, tmp95
	movq	%rax, %rdx	# tmp95,
	movl	$XS_Devel__Peek_fill_mstats, %esi	#,
	movl	$.LC30, %edi	#,
	call	Perl_newXS	#
	.loc 1 624 0
	movq	-32(%rbp), %rax	# file, tmp96
	movq	%rax, %rdx	# tmp96,
	movl	$XS_Devel__Peek_mstats_fillhash, %esi	#,
	movl	$.LC31, %edi	#,
	call	Perl_newXS	#
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# D.11799,
	call	Perl_sv_setpv	#
	.loc 1 625 0
	movq	-32(%rbp), %rax	# file, tmp97
	movq	%rax, %rdx	# tmp97,
	movl	$XS_Devel__Peek_mstats2hash, %esi	#,
	movl	$.LC33, %edi	#,
	call	Perl_newXS	#
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# D.11799,
	call	Perl_sv_setpv	#
	.loc 1 626 0
	movq	-32(%rbp), %rax	# file, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$XS_Devel__Peek_Dump, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_newXS	#
	.loc 1 627 0
	movq	-32(%rbp), %rax	# file, tmp99
	movq	%rax, %rdx	# tmp99,
	movl	$XS_Devel__Peek_DumpArray, %esi	#,
	movl	$.LC36, %edi	#,
	call	Perl_newXS	#
	.loc 1 628 0
	movq	-32(%rbp), %rax	# file, tmp100
	movq	%rax, %rdx	# tmp100,
	movl	$XS_Devel__Peek_DumpProg, %esi	#,
	movl	$.LC37, %edi	#,
	call	Perl_newXS	#
	.loc 1 629 0
	movq	-32(%rbp), %rax	# file, tmp101
	movq	%rax, %rdx	# tmp101,
	movl	$XS_Devel__Peek_SvREFCNT, %esi	#,
	movl	$.LC38, %edi	#,
	call	Perl_newXS	#
	.loc 1 630 0
	movq	-32(%rbp), %rax	# file, tmp102
	movq	%rax, %rdx	# tmp102,
	movl	$XS_Devel__Peek_SvREFCNT_inc, %esi	#,
	movl	$.LC39, %edi	#,
	call	Perl_newXS	#
	.loc 1 631 0
	movq	-32(%rbp), %rax	# file, tmp103
	movq	%rax, %rdx	# tmp103,
	movl	$XS_Devel__Peek_SvREFCNT_dec, %esi	#,
	movl	$.LC40, %edi	#,
	call	Perl_newXS	#
	.loc 1 632 0
	movq	-32(%rbp), %rax	# file, tmp104
	movq	%rax, %rdx	# tmp104,
	movl	$XS_Devel__Peek_DeadCode, %esi	#,
	movl	$.LC41, %edi	#,
	call	Perl_newXS	#
	.loc 1 633 0
	movq	-32(%rbp), %rax	# file, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$XS_Devel__Peek_CvGV, %esi	#,
	movl	$.LC42, %edi	#,
	call	Perl_newXS	#
	.loc 1 634 0
	movq	-32(%rbp), %rax	# file, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$XS_Devel__Peek_runops_debug, %esi	#,
	movl	$.LC43, %edi	#,
	call	Perl_newXS	#
.LBB28:
	.loc 1 635 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.238
	movl	-40(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.11796
	salq	$3, %rdx	#, D.11796
	addq	%rdx, %rax	# D.11796, D.11800
	movq	$PL_sv_yes, (%rax)	#, *_29
.LBB29:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.239
	movl	-40(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.11801
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.240
	addq	%rcx, %rdx	# D.11801, D.11801
	salq	$3, %rdx	#, D.11801
	subq	$8, %rdx	#, D.11801
	addq	%rdx, %rax	# D.11801, PL_stack_sp.241
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.241, PL_stack_sp
	nop
.LBE29:
.LBE28:
	.loc 1 636 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	boot_Devel__Peek, .-boot_Devel__Peek
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
	.long	0x1ccd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF275
	.byte	0x1
	.long	.LASF276
	.long	.LASF277
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
	.long	.LASF176
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
	.long	0xdd1
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xdd1
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xe55
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xe3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xc43
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xc43
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xc39
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xc39
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
	.long	0xdd1
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xdd1
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xe55
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xe3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xc43
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xc43
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xc39
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xc39
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xdd1
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xdd1
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xdd1
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xdd1
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xe5b
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xe61
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xc59
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xc59
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xc39
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xdb9
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
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xc59
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
	.long	0xda1
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xc59
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
	.long	0xda7
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xc59
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
	.long	0xd9b
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xc59
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
	.long	0xcf4
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xcf4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xcfa
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xd05
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
	.long	0xd10
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
	.long	0xd16
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xc4e
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xc4e
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xc4e
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xc4e
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xc59
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xc59
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xc59
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xc59
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xd1c
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
	.long	0xc81
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xe2e
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xde2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xdf4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xdb9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xdee
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xde2
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xc59
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xc59
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xc64
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
	.long	0xd95
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xc59
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
	.long	0xdad
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xc59
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xc59
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
	.long	0xdb3
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xf6c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xc43
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
	.long	0xc39
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xc81
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
	.long	0xc4e
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
	.long	0xc81
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
	.value	0x7fa
	.long	0x6a8
	.uleb128 0x10
	.long	.LASF91
	.byte	0x28
	.byte	0x8
	.value	0x10d
	.long	0x6f7
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x6
	.value	0x7fd
	.long	0x703
	.uleb128 0xe
	.long	.LASF94
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x788
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x11
	.long	0xdb3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xc
	.byte	0x12
	.long	0xdb9
	.byte	0x30
	.uleb128 0xd
	.long	.LASF101
	.byte	0xc
	.byte	0x14
	.long	0xe67
	.byte	0x38
	.uleb128 0xd
	.long	.LASF102
	.byte	0xc
	.byte	0x15
	.long	0xc81
	.byte	0x40
	.uleb128 0xd
	.long	.LASF103
	.byte	0xc
	.byte	0x16
	.long	0xc39
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x6
	.value	0x7fe
	.long	0x794
	.uleb128 0xe
	.long	.LASF105
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x825
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x29
	.long	0xdb3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0x2a
	.long	0xdb9
	.byte	0x30
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x2c
	.long	0xc4e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x2d
	.long	0xee3
	.byte	0x40
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0x2e
	.long	0xe5b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF113
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF114
	.byte	0x6
	.value	0x7ff
	.long	0x831
	.uleb128 0x10
	.long	.LASF115
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x8db
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
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x136
	.long	0xdb3
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0x8
	.value	0x137
	.long	0xdb9
	.byte	0x30
	.uleb128 0xf
	.long	.LASF116
	.byte	0x8
	.value	0x139
	.long	0xdbf
	.byte	0x38
	.uleb128 0xf
	.long	.LASF117
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF118
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF119
	.byte	0x8
	.value	0x13c
	.long	0xdb9
	.byte	0x50
	.uleb128 0xf
	.long	.LASF120
	.byte	0x8
	.value	0x13d
	.long	0xc39
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF121
	.byte	0x6
	.value	0x800
	.long	0x8e7
	.uleb128 0xe
	.long	.LASF122
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x9d8
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
	.long	.LASF98
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xe
	.byte	0x14
	.long	0xdb3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xe
	.byte	0x15
	.long	0xdb9
	.byte	0x30
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x17
	.long	0xdb9
	.byte	0x38
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x18
	.long	0xdd1
	.byte	0x40
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x19
	.long	0xdd1
	.byte	0x48
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1a
	.long	0xde8
	.byte	0x50
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x1b
	.long	0xb8a
	.byte	0x58
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x1c
	.long	0xdee
	.byte	0x60
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x1f
	.long	0xe4a
	.byte	0x78
	.uleb128 0xd
	.long	.LASF132
	.byte	0xe
	.byte	0x20
	.long	0xde2
	.byte	0x80
	.uleb128 0xd
	.long	.LASF133
	.byte	0xe
	.byte	0x25
	.long	0xdc5
	.byte	0x88
	.uleb128 0xd
	.long	.LASF134
	.byte	0xe
	.byte	0x26
	.long	0xc59
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF135
	.byte	0x6
	.value	0x803
	.long	0x9e4
	.uleb128 0x10
	.long	.LASF136
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xb1d
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
	.long	.LASF92
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x176
	.long	0xdb3
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0x8
	.value	0x177
	.long	0xdb9
	.byte	0x30
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x179
	.long	0xe22
	.byte	0x38
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x17a
	.long	0xe22
	.byte	0x40
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x187
	.long	0xdfa
	.byte	0x48
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x18d
	.long	0xdee
	.byte	0x78
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x18f
	.long	0xdee
	.byte	0x88
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x191
	.long	0xdee
	.byte	0x98
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF151
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF152
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0x6
	.value	0x804
	.long	0xb29
	.uleb128 0xe
	.long	.LASF154
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xb8a
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0xf
	.long	0xf03
	.byte	0
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x10
	.long	0xf03
	.byte	0x8
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.byte	0x11
	.long	0xf1d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF158
	.byte	0xb
	.byte	0x12
	.long	0xf03
	.byte	0x18
	.uleb128 0xd
	.long	.LASF159
	.byte	0xb
	.byte	0x13
	.long	0xf03
	.byte	0x20
	.uleb128 0xd
	.long	.LASF160
	.byte	0xb
	.byte	0x14
	.long	0xf46
	.byte	0x28
	.uleb128 0xd
	.long	.LASF161
	.byte	0xb
	.byte	0x16
	.long	0xf66
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xb96
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xbf8
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f3
	.long	0xc4e
	.uleb128 0x12
	.long	.LASF164
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF165
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF166
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF167
	.byte	0x6
	.value	0x9f7
	.long	0xc7b
	.uleb128 0x12
	.long	.LASF168
	.byte	0x6
	.value	0x9f8
	.long	0xc7b
	.byte	0
	.uleb128 0xb
	.long	.LASF169
	.byte	0x6
	.value	0x808
	.long	0xc04
	.uleb128 0x10
	.long	.LASF170
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xc39
	.uleb128 0xf
	.long	.LASF171
	.byte	0x8
	.value	0x4ee
	.long	0xdf4
	.byte	0
	.uleb128 0xf
	.long	.LASF172
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF173
	.byte	0x8
	.value	0x4f0
	.long	0xe28
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
	.long	.LASF174
	.byte	0xf
	.value	0x209
	.long	0xc59
	.uleb128 0x13
	.long	0xc7b
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc70
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xc97
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF175
	.byte	0x10
	.byte	0x63
	.long	0xca2
	.uleb128 0x9
	.long	.LASF177
	.uleb128 0x5
	.long	.LASF178
	.byte	0x10
	.byte	0x65
	.long	0xcb2
	.uleb128 0x6
	.byte	0x8
	.long	0xc97
	.uleb128 0xe
	.long	.LASF179
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xce9
	.uleb128 0xd
	.long	.LASF172
	.byte	0x9
	.byte	0x14
	.long	0xc39
	.byte	0
	.uleb128 0xd
	.long	.LASF180
	.byte	0x9
	.byte	0x15
	.long	0xc39
	.byte	0x1
	.uleb128 0xd
	.long	.LASF181
	.byte	0x9
	.byte	0x16
	.long	0xc43
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF179
	.byte	0x9
	.byte	0x19
	.long	0xcb8
	.uleb128 0x6
	.byte	0x8
	.long	0xc4e
	.uleb128 0x6
	.byte	0x8
	.long	0xce9
	.uleb128 0x9
	.long	.LASF182
	.uleb128 0x6
	.byte	0x8
	.long	0xd00
	.uleb128 0x9
	.long	.LASF183
	.uleb128 0x6
	.byte	0x8
	.long	0xd0b
	.uleb128 0x6
	.byte	0x8
	.long	0xc59
	.uleb128 0x15
	.long	0xce9
	.long	0xd2c
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.long	0xd95
	.uleb128 0x18
	.long	.LASF184
	.sleb128 0
	.uleb128 0x18
	.long	.LASF185
	.sleb128 1
	.uleb128 0x18
	.long	.LASF186
	.sleb128 2
	.uleb128 0x18
	.long	.LASF187
	.sleb128 3
	.uleb128 0x18
	.long	.LASF188
	.sleb128 4
	.uleb128 0x18
	.long	.LASF189
	.sleb128 5
	.uleb128 0x18
	.long	.LASF190
	.sleb128 6
	.uleb128 0x18
	.long	.LASF191
	.sleb128 7
	.uleb128 0x18
	.long	.LASF192
	.sleb128 8
	.uleb128 0x18
	.long	.LASF193
	.sleb128 9
	.uleb128 0x18
	.long	.LASF194
	.sleb128 10
	.uleb128 0x18
	.long	.LASF195
	.sleb128 11
	.uleb128 0x18
	.long	.LASF196
	.sleb128 12
	.uleb128 0x18
	.long	.LASF197
	.sleb128 13
	.uleb128 0x18
	.long	.LASF198
	.sleb128 14
	.uleb128 0x18
	.long	.LASF199
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x825
	.uleb128 0x6
	.byte	0x8
	.long	0x8db
	.uleb128 0x6
	.byte	0x8
	.long	0x6f7
	.uleb128 0x6
	.byte	0x8
	.long	0x788
	.uleb128 0x6
	.byte	0x8
	.long	0x9d8
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
	.long	.LASF200
	.byte	0x8
	.value	0x150
	.long	0xc43
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xde2
	.uleb128 0x14
	.long	0xde2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xdd7
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
	.long	0xe1c
	.uleb128 0x12
	.long	.LASF201
	.byte	0x8
	.value	0x185
	.long	0xe1c
	.uleb128 0x12
	.long	.LASF202
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xca7
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF203
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF204
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xe34
	.uleb128 0x1a
	.long	0xdd1
	.uleb128 0x6
	.byte	0x8
	.long	0xe50
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xc81
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xe77
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xea7
	.uleb128 0xd
	.long	.LASF205
	.byte	0xd
	.byte	0x11
	.long	0xee3
	.byte	0
	.uleb128 0xd
	.long	.LASF206
	.byte	0xd
	.byte	0x12
	.long	0xee9
	.byte	0x8
	.uleb128 0xd
	.long	.LASF207
	.byte	0xd
	.byte	0x13
	.long	0xc81
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xeb2
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xee3
	.uleb128 0xd
	.long	.LASF208
	.byte	0xd
	.byte	0x18
	.long	0xc59
	.byte	0
	.uleb128 0xd
	.long	.LASF209
	.byte	0xd
	.byte	0x19
	.long	0xc4e
	.byte	0x4
	.uleb128 0xd
	.long	.LASF210
	.byte	0xd
	.byte	0x1a
	.long	0xc87
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe6d
	.uleb128 0x6
	.byte	0x8
	.long	0xea7
	.uleb128 0x1b
	.long	0x57
	.long	0xf03
	.uleb128 0x14
	.long	0xc81
	.uleb128 0x14
	.long	0xdb3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeef
	.uleb128 0x1b
	.long	0xc59
	.long	0xf1d
	.uleb128 0x14
	.long	0xc81
	.uleb128 0x14
	.long	0xdb3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf09
	.uleb128 0x1b
	.long	0x57
	.long	0xf46
	.uleb128 0x14
	.long	0xc81
	.uleb128 0x14
	.long	0xdb3
	.uleb128 0x14
	.long	0xc81
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf23
	.uleb128 0x1b
	.long	0x57
	.long	0xf60
	.uleb128 0x14
	.long	0xdb3
	.uleb128 0x14
	.long	0xf60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbf8
	.uleb128 0x6
	.byte	0x8
	.long	0xf4c
	.uleb128 0x6
	.byte	0x8
	.long	0xb1d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF211
	.uleb128 0xb
	.long	.LASF212
	.byte	0x6
	.value	0xcc1
	.long	0xf85
	.uleb128 0x6
	.byte	0x8
	.long	0xf8b
	.uleb128 0x1a
	.long	0x57
	.uleb128 0x1c
	.long	.LASF213
	.byte	0x1
	.byte	0x10
	.long	0x7f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd7
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF260
	.byte	0x1
	.byte	0x12
	.long	0x57
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.byte	0x13
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x20
	.long	.LASF214
	.byte	0x1
	.byte	0x1c
	.long	0xc81
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x11b2
	.uleb128 0x1f
	.string	"sva"
	.byte	0x1
	.byte	0x21
	.long	0xc81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.string	"sv"
	.byte	0x1
	.byte	0x22
	.long	0xc81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.long	0xc81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF215
	.byte	0x1
	.byte	0x24
	.long	0xc81
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"tm"
	.byte	0x1
	.byte	0x25
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF216
	.byte	0x1
	.byte	0x25
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1f
	.string	"ts"
	.byte	0x1
	.byte	0x25
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.string	"ta"
	.byte	0x1
	.byte	0x25
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.string	"tas"
	.byte	0x1
	.byte	0x25
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0x2b
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF217
	.byte	0x1
	.byte	0x2c
	.long	0xdf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0x2c
	.long	0xdf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"svp"
	.byte	0x1
	.byte	0x2d
	.long	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"pad"
	.byte	0x1
	.byte	0x2e
	.long	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.long	.LASF219
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x21
	.long	.LASF220
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.long	.LASF221
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF223
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x21
	.long	.LASF224
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF225
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.long	.LASF226
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x21
	.long	.LASF227
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF228
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x21
	.long	.LASF229
	.byte	0x1
	.byte	0x31
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF230
	.byte	0x1
	.byte	0x44
	.long	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x132
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ee
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x132
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF232
	.byte	0x1
	.value	0x132
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.long	.LASF234
	.byte	0x1
	.value	0x137
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x122a
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x137
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF232
	.byte	0x1
	.value	0x137
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.value	0x13c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1274
	.uleb128 0x24
	.string	"sv"
	.byte	0x1
	.value	0x13c
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.value	0x13c
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF232
	.byte	0x1
	.value	0x13c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF236
	.byte	0x1
	.value	0x148
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1320
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x148
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x14a
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x14a
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x14a
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x14a
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x12fe
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x14e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x158
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF240
	.byte	0x1
	.value	0x15c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x13da
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x15c
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x15e
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x15e
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x15e
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x15e
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x13b8
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x162
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x163
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x16d
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x171
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1494
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x171
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x173
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x173
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x173
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x173
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1472
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x177
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x178
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x182
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF242
	.byte	0x1
	.value	0x186
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x155d
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x186
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x188
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x188
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x188
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x188
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x153b
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x18c
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"rv"
	.byte	0x1
	.value	0x18d
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x18e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x198
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF243
	.byte	0x1
	.value	0x19c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1644
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x19c
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x19e
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x19e
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x19e
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x19e
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x1a3
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"lim"
	.byte	0x1
	.value	0x1a4
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.long	.LASF244
	.byte	0x1
	.value	0x1ad
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF245
	.byte	0x1
	.value	0x1ae
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF246
	.byte	0x1
	.value	0x1af
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF247
	.byte	0x1
	.value	0x1b0
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF248
	.byte	0x1
	.value	0x1bd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x172c
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x1bd
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x1bf
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x1bf
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x1bf
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x1bf
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x26
	.string	"lim"
	.byte	0x1
	.value	0x1c4
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x1c7
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF244
	.byte	0x1
	.value	0x1c8
	.long	0xc81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF245
	.byte	0x1
	.value	0x1c9
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF246
	.byte	0x1
	.value	0x1ca
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF247
	.byte	0x1
	.value	0x1cb
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF249
	.byte	0x1
	.value	0x1dc
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1791
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x1dc
	.long	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x1de
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x1de
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x1de
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x1de
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF250
	.byte	0x1
	.value	0x1f1
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x185b
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x1f1
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x1f3
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x1f3
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x1f3
	.long	0xc4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x1f3
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1839
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x1f7
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF251
	.byte	0x1
	.value	0x1f8
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LASF252
	.byte	0x1
	.value	0x1f9
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x1fe
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x202
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f0
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x202
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x204
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x204
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x204
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x204
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x209
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF251
	.byte	0x1
	.value	0x20a
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.value	0x217
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1975
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x217
	.long	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x219
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x219
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x219
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x219
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x21e
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF255
	.byte	0x1
	.value	0x22b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a21
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x22b
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x22d
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x22d
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x22d
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x22d
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x19ff
	.uleb128 0x27
	.long	.LASF251
	.byte	0x1
	.value	0x231
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x238
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF256
	.byte	0x1
	.value	0x23c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1adb
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x23c
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x23e
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x23e
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x23e
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x23e
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1ab9
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x242
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF251
	.byte	0x1
	.value	0x243
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x249
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF257
	.byte	0x1
	.value	0x24d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b96
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x24d
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x24f
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x24f
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x24f
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x24f
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1b74
	.uleb128 0x27
	.long	.LASF251
	.byte	0x1
	.value	0x253
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x27
	.long	.LASF231
	.byte	0x1
	.value	0x254
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x22
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x260
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF258
	.byte	0x1
	.value	0x267
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c2c
	.uleb128 0x24
	.string	"cv"
	.byte	0x1
	.value	0x267
	.long	0xde2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"sp"
	.byte	0x1
	.value	0x269
	.long	0xe67
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x269
	.long	0xe67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ax"
	.byte	0x1
	.value	0x269
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF238
	.byte	0x1
	.value	0x269
	.long	0xc4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF259
	.byte	0x1
	.value	0x26a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x27
	.long	.LASF239
	.byte	0x1
	.value	0x27b
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF261
	.byte	0x12
	.byte	0x8f
	.long	0xc81
	.uleb128 0x1e
	.long	.LASF262
	.byte	0x12
	.byte	0x9d
	.long	0xdd1
	.uleb128 0x29
	.long	.LASF263
	.byte	0x12
	.value	0x112
	.long	0xf79
	.uleb128 0x29
	.long	.LASF264
	.byte	0x12
	.value	0x125
	.long	0x291
	.uleb128 0x29
	.long	.LASF265
	.byte	0x12
	.value	0x126
	.long	0x291
	.uleb128 0x29
	.long	.LASF266
	.byte	0x12
	.value	0x127
	.long	0x291
	.uleb128 0x1e
	.long	.LASF267
	.byte	0x13
	.byte	0x22
	.long	0xe67
	.uleb128 0x1e
	.long	.LASF268
	.byte	0x13
	.byte	0x26
	.long	0xdd1
	.uleb128 0x1e
	.long	.LASF269
	.byte	0x13
	.byte	0x28
	.long	0xe67
	.uleb128 0x1e
	.long	.LASF270
	.byte	0x13
	.byte	0x2a
	.long	0xe67
	.uleb128 0x1e
	.long	.LASF271
	.byte	0x13
	.byte	0x3c
	.long	0xcf4
	.uleb128 0x1e
	.long	.LASF272
	.byte	0x13
	.byte	0x43
	.long	0xc81
	.uleb128 0x1e
	.long	.LASF273
	.byte	0x13
	.byte	0x44
	.long	0x1cbf
	.uleb128 0x6
	.byte	0x8
	.long	0x612
	.uleb128 0x1e
	.long	.LASF274
	.byte	0x13
	.byte	0x9a
	.long	0xc4e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
.LASF223:
	.string	"levels"
.LASF142:
	.string	"xio_page_len"
.LASF240:
	.string	"XS_Devel__Peek_fill_mstats"
.LASF148:
	.string	"xio_bottom_name"
.LASF236:
	.string	"XS_Devel__Peek_mstat"
.LASF251:
	.string	"RETVAL"
.LASF17:
	.string	"op_sibling"
.LASF277:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF121:
	.string	"XPVCV"
.LASF193:
	.string	"SVt_PVLV"
.LASF155:
	.string	"svt_get"
.LASF244:
	.string	"pv_lim_sv"
.LASF151:
	.string	"xio_type"
.LASF122:
	.string	"xpvcv"
.LASF255:
	.string	"XS_Devel__Peek_DeadCode"
.LASF79:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF172:
	.string	"flags"
.LASF21:
	.string	"op_seq"
.LASF107:
	.string	"xhv_fill"
.LASF185:
	.string	"SVt_IV"
.LASF72:
	.string	"gp_file"
.LASF152:
	.string	"xio_flags"
.LASF258:
	.string	"boot_Devel__Peek"
.LASF191:
	.string	"SVt_PVMG"
.LASF201:
	.string	"xiou_dirp"
.LASF179:
	.string	"regnode"
.LASF166:
	.string	"any_bool"
.LASF31:
	.string	"op_pmregexp"
.LASF203:
	.string	"PADLIST"
.LASF232:
	.string	"level"
.LASF226:
	.string	"tota"
.LASF48:
	.string	"precomp"
.LASF103:
	.string	"xav_flags"
.LASF119:
	.string	"xgv_stash"
.LASF45:
	.string	"endp"
.LASF90:
	.string	"XPVNV"
.LASF253:
	.string	"XS_Devel__Peek_SvREFCNT_inc"
.LASF10:
	.string	"ssize_t"
.LASF177:
	.string	"_PerlIO"
.LASF272:
	.string	"PL_Sv"
.LASF190:
	.string	"SVt_PVNV"
.LASF126:
	.string	"xcv_xsub"
.LASF111:
	.string	"xhv_eiter"
.LASF221:
	.string	"levelref"
.LASF75:
	.string	"mg_moremagic"
.LASF68:
	.string	"gp_cv"
.LASF97:
	.string	"xav_max"
.LASF178:
	.string	"PerlIO"
.LASF211:
	.string	"float"
.LASF109:
	.string	"xhv_keys"
.LASF47:
	.string	"substrs"
.LASF239:
	.string	"tmpXSoff"
.LASF154:
	.string	"mgvtbl"
.LASF129:
	.string	"xcv_file"
.LASF128:
	.string	"xcv_gv"
.LASF233:
	.string	"fill_mstats"
.LASF12:
	.string	"long long unsigned int"
.LASF270:
	.string	"PL_stack_base"
.LASF259:
	.string	"file"
.LASF42:
	.string	"REGEXP"
.LASF218:
	.string	"argav"
.LASF183:
	.string	"reg_data"
.LASF170:
	.string	"clone_params"
.LASF182:
	.string	"reg_substr_data"
.LASF175:
	.string	"PerlIOl"
.LASF241:
	.string	"XS_Devel__Peek_mstats_fillhash"
.LASF77:
	.string	"mg_private"
.LASF89:
	.string	"xiv_iv"
.LASF120:
	.string	"xgv_flags"
.LASF140:
	.string	"xio_lines"
.LASF260:
	.string	"Perl___notused"
.LASF66:
	.string	"gp_hv"
.LASF84:
	.string	"xpv_pv"
.LASF114:
	.string	"XPVGV"
.LASF143:
	.string	"xio_lines_left"
.LASF61:
	.string	"gp_sv"
.LASF23:
	.string	"op_private"
.LASF208:
	.string	"hek_hash"
.LASF213:
	.string	"_runops_debug"
.LASF168:
	.string	"any_dxptr"
.LASF194:
	.string	"SVt_PVAV"
.LASF115:
	.string	"xpvgv"
.LASF174:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF82:
	.string	"mg_len"
.LASF80:
	.string	"mg_obj"
.LASF216:
	.string	"tref"
.LASF130:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF147:
	.string	"xio_fmt_gv"
.LASF269:
	.string	"PL_curpad"
.LASF210:
	.string	"hek_key"
.LASF60:
	.string	"program"
.LASF222:
	.string	"totref"
.LASF63:
	.string	"gp_io"
.LASF112:
	.string	"xhv_pmroot"
.LASF276:
	.string	"Peek.c"
.LASF104:
	.string	"XPVHV"
.LASF262:
	.string	"PL_main_root"
.LASF158:
	.string	"svt_clear"
.LASF192:
	.string	"SVt_PVBM"
.LASF265:
	.string	"PL_sv_no"
.LASF139:
	.string	"xio_dirpu"
.LASF105:
	.string	"xpvhv"
.LASF54:
	.string	"minlen"
.LASF243:
	.string	"XS_Devel__Peek_Dump"
.LASF28:
	.string	"op_pmreplroot"
.LASF34:
	.string	"op_pmdynflags"
.LASF160:
	.string	"svt_copy"
.LASF86:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF135:
	.string	"XPVIO"
.LASF164:
	.string	"any_iv"
.LASF171:
	.string	"stashes"
.LASF55:
	.string	"prelen"
.LASF87:
	.string	"XPVIV"
.LASF227:
	.string	"levelas"
.LASF248:
	.string	"XS_Devel__Peek_DumpArray"
.LASF57:
	.string	"lastparen"
.LASF136:
	.string	"xpvio"
.LASF252:
	.string	"targ"
.LASF49:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF196:
	.string	"SVt_PVCV"
.LASF88:
	.string	"xpviv"
.LASF264:
	.string	"PL_sv_undef"
.LASF52:
	.string	"sublen"
.LASF27:
	.string	"op_last"
.LASF206:
	.string	"hent_hek"
.LASF59:
	.string	"reganch"
.LASF184:
	.string	"SVt_NULL"
.LASF50:
	.string	"subbeg"
.LASF173:
	.string	"proto_perl"
.LASF74:
	.string	"magic"
.LASF205:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF106:
	.string	"xhv_array"
.LASF144:
	.string	"xio_top_name"
.LASF58:
	.string	"lastcloseparen"
.LASF237:
	.string	"mark"
.LASF181:
	.string	"next_off"
.LASF76:
	.string	"mg_virtual"
.LASF24:
	.string	"PMOP"
.LASF250:
	.string	"XS_Devel__Peek_SvREFCNT"
.LASF15:
	.string	"STRLEN"
.LASF249:
	.string	"XS_Devel__Peek_DumpProg"
.LASF113:
	.string	"xhv_name"
.LASF81:
	.string	"mg_ptr"
.LASF266:
	.string	"PL_sv_yes"
.LASF137:
	.string	"xio_ifp"
.LASF38:
	.string	"broiled"
.LASF186:
	.string	"SVt_NV"
.LASF16:
	.string	"op_next"
.LASF67:
	.string	"gp_egv"
.LASF44:
	.string	"startp"
.LASF242:
	.string	"XS_Devel__Peek_mstats2hash"
.LASF247:
	.string	"save_dumpindent"
.LASF238:
	.string	"items"
.LASF229:
	.string	"dumpit"
.LASF39:
	.string	"sv_any"
.LASF230:
	.string	"args"
.LASF35:
	.string	"op_pmstash"
.LASF141:
	.string	"xio_page"
.LASF202:
	.string	"xiou_any"
.LASF273:
	.string	"PL_Xpv"
.LASF198:
	.string	"SVt_PVFM"
.LASF29:
	.string	"op_pmreplstart"
.LASF73:
	.string	"MAGIC"
.LASF212:
	.string	"runops_proc_t"
.LASF157:
	.string	"svt_len"
.LASF275:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF41:
	.string	"sv_flags"
.LASF36:
	.string	"PerlInterpreter"
.LASF101:
	.string	"xav_alloc"
.LASF256:
	.string	"XS_Devel__Peek_CvGV"
.LASF5:
	.string	"short int"
.LASF217:
	.string	"padlist"
.LASF64:
	.string	"gp_form"
.LASF26:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF124:
	.string	"xcv_start"
.LASF134:
	.string	"xcv_outside_seq"
.LASF95:
	.string	"xav_array"
.LASF150:
	.string	"xio_subprocess"
.LASF215:
	.string	"svend"
.LASF51:
	.string	"offsets"
.LASF98:
	.string	"xof_off"
.LASF197:
	.string	"SVt_PVGV"
.LASF188:
	.string	"SVt_PV"
.LASF235:
	.string	"mstats2hash"
.LASF231:
	.string	"flag"
.LASF209:
	.string	"hek_len"
.LASF261:
	.string	"PL_sv_arenaroot"
.LASF153:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF53:
	.string	"refcnt"
.LASF102:
	.string	"xav_arylen"
.LASF123:
	.string	"xcv_stash"
.LASF214:
	.string	"DeadCode"
.LASF118:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF257:
	.string	"XS_Devel__Peek_runops_debug"
.LASF125:
	.string	"xcv_root"
.LASF43:
	.string	"regexp"
.LASF207:
	.string	"hent_val"
.LASF132:
	.string	"xcv_outside"
.LASF274:
	.string	"PL_dumpindent"
.LASF2:
	.string	"unsigned int"
.LASF32:
	.string	"op_pmflags"
.LASF108:
	.string	"xhv_max"
.LASF131:
	.string	"xcv_padlist"
.LASF234:
	.string	"mstats_fillhash"
.LASF195:
	.string	"SVt_PVHV"
.LASF99:
	.string	"xmg_magic"
.LASF91:
	.string	"xpvnv"
.LASF7:
	.string	"sizetype"
.LASF263:
	.string	"PL_runops"
.LASF3:
	.string	"long unsigned int"
.LASF163:
	.string	"any_i32"
.LASF156:
	.string	"svt_set"
.LASF169:
	.string	"CLONE_PARAMS"
.LASF146:
	.string	"xio_fmt_name"
.LASF254:
	.string	"XS_Devel__Peek_SvREFCNT_dec"
.LASF176:
	.string	"__dirstream"
.LASF165:
	.string	"any_long"
.LASF25:
	.string	"pmop"
.LASF96:
	.string	"xav_fill"
.LASF180:
	.string	"type"
.LASF245:
	.string	"pv_lim"
.LASF199:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF110:
	.string	"xhv_riter"
.LASF116:
	.string	"xgv_gp"
.LASF30:
	.string	"op_pmnext"
.LASF189:
	.string	"SVt_PVIV"
.LASF187:
	.string	"SVt_RV"
.LASF40:
	.string	"sv_refcnt"
.LASF92:
	.string	"xnv_nv"
.LASF133:
	.string	"xcv_flags"
.LASF70:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF78:
	.string	"mg_type"
.LASF161:
	.string	"svt_dup"
.LASF149:
	.string	"xio_bottom_gv"
.LASF85:
	.string	"xpv_cur"
.LASF162:
	.string	"any_ptr"
.LASF93:
	.string	"XPVAV"
.LASF159:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF204:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"op_pmpermflags"
.LASF117:
	.string	"xgv_name"
.LASF94:
	.string	"xpvav"
.LASF100:
	.string	"xmg_stash"
.LASF65:
	.string	"gp_av"
.LASF69:
	.string	"gp_cvgen"
.LASF71:
	.string	"gp_line"
.LASF228:
	.string	"totas"
.LASF83:
	.string	"xrv_rv"
.LASF127:
	.string	"xcv_xsubany"
.LASF62:
	.string	"gp_refcnt"
.LASF200:
	.string	"cv_flags_t"
.LASF138:
	.string	"xio_ofp"
.LASF271:
	.string	"PL_markstack_ptr"
.LASF46:
	.string	"regstclass"
.LASF145:
	.string	"xio_top_gv"
.LASF37:
	.string	"interpreter"
.LASF56:
	.string	"nparens"
.LASF220:
	.string	"totm"
.LASF225:
	.string	"levela"
.LASF267:
	.string	"PL_stack_sp"
.LASF224:
	.string	"tots"
.LASF167:
	.string	"any_dptr"
.LASF219:
	.string	"levelm"
.LASF246:
	.string	"dumpop"
.LASF268:
	.string	"PL_op"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
