	.file	"perl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 perl.c -mtune=generic
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
	.local	local_patches
	.comm	local_patches,16,16
	.globl	perl_alloc
	.type	perl_alloc, @function
perl_alloc:
.LFB2:
	.file 1 "perl.c"
	.loc 1 200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 207 0
	movl	$1, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp62, my_perl
.LBB2:
	.loc 1 209 0
	movq	PL_curinterp(%rip), %rax	# PL_curinterp, PL_curinterp.0
	testq	%rax, %rax	# PL_curinterp.0
	jne	.L2	#,
	.loc 1 209 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# my_perl, tmp63
	movq	%rax, PL_curinterp(%rip)	# tmp63, PL_curinterp
.L2:
.LBE2:
	.loc 1 210 0 is_stmt 1
	movq	-8(%rbp), %rax	# my_perl, tmp64
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	memset	#
	.loc 1 211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	perl_alloc, .-perl_alloc
	.section	.rodata
.LC0:
	.string	"\n"
.LC2:
	.string	""
	.text
	.globl	perl_construct
	.type	perl_construct, @function
perl_construct:
.LFB3:
	.loc 1 224 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 235 0
	movl	PL_perl_destruct_level(%rip), %eax	# PL_perl_destruct_level, PL_perl_destruct_level.1
	testl	%eax, %eax	# PL_perl_destruct_level.1
	jle	.L5	#,
	.loc 1 236 0
	call	S_init_interp	#
.L5:
	.loc 1 239 0
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.2
	testq	%rax, %rax	# PL_linestr.2
	jne	.L6	#,
	.loc 1 265 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 267 0
	movl	$79, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_linestr(%rip)	# PL_linestr.3, PL_linestr
	.loc 1 268 0
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.4
	movl	$5, %esi	#,
	movq	%rax, %rdi	# PL_linestr.4,
	call	Perl_sv_upgrade	#
	.loc 1 270 0
	movl	PL_sv_undef+12(%rip), %eax	# PL_sv_undef.sv_flags, D.14609
	andl	$8388608, %eax	#, D.14609
	testl	%eax, %eax	# D.14609
	jne	.L7	#,
	.loc 1 274 0
	movl	PL_sv_undef+12(%rip), %eax	# PL_sv_undef.sv_flags, D.14609
	orl	$8388608, %eax	#, D.14609
	movl	%eax, PL_sv_undef+12(%rip)	# D.14609, PL_sv_undef.sv_flags
	.loc 1 275 0
	movl	$2147483647, PL_sv_undef+8(%rip)	#, PL_sv_undef.sv_refcnt
	.loc 1 277 0
	movq	PL_No(%rip), %rax	# PL_No, PL_No.5
	movq	%rax, %rsi	# PL_No.5,
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_setpv	#
	.loc 1 280 0
	movl	PL_sv_no+12(%rip), %eax	# PL_sv_no.sv_flags, D.14609
	andl	$65536, %eax	#, D.14609
	testl	%eax, %eax	# D.14609
	jne	.L9	#,
	.loc 1 280 0 is_stmt 0 discriminator 2
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_2iv	#
.L9:
	.loc 1 281 0 is_stmt 1
	movl	PL_sv_no+12(%rip), %eax	# PL_sv_no.sv_flags, D.14609
	andl	$131072, %eax	#, D.14609
	testl	%eax, %eax	# D.14609
	jne	.L11	#,
	.loc 1 281 0 is_stmt 0 discriminator 2
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_2nv	#
.L11:
	.loc 1 282 0 is_stmt 1
	movl	PL_sv_no+12(%rip), %eax	# PL_sv_no.sv_flags, D.14609
	orl	$8388608, %eax	#, D.14609
	movl	%eax, PL_sv_no+12(%rip)	# D.14609, PL_sv_no.sv_flags
	.loc 1 283 0
	movl	$2147483647, PL_sv_no+8(%rip)	#, PL_sv_no.sv_refcnt
	.loc 1 285 0
	movq	PL_Yes(%rip), %rax	# PL_Yes, PL_Yes.8
	movq	%rax, %rsi	# PL_Yes.8,
	movl	$PL_sv_yes, %edi	#,
	call	Perl_sv_setpv	#
	.loc 1 286 0
	movl	PL_sv_yes+12(%rip), %eax	# PL_sv_yes.sv_flags, D.14609
	andl	$65536, %eax	#, D.14609
	testl	%eax, %eax	# D.14609
	jne	.L13	#,
	.loc 1 286 0 is_stmt 0 discriminator 2
	movl	$PL_sv_yes, %edi	#,
	call	Perl_sv_2iv	#
.L13:
	.loc 1 287 0 is_stmt 1
	movl	PL_sv_yes+12(%rip), %eax	# PL_sv_yes.sv_flags, D.14609
	andl	$131072, %eax	#, D.14609
	testl	%eax, %eax	# D.14609
	jne	.L15	#,
	.loc 1 287 0 is_stmt 0 discriminator 2
	movl	$PL_sv_yes, %edi	#,
	call	Perl_sv_2nv	#
.L15:
	.loc 1 288 0 is_stmt 1
	movl	PL_sv_yes+12(%rip), %eax	# PL_sv_yes.sv_flags, D.14609
	orl	$8388608, %eax	#, D.14609
	movl	%eax, PL_sv_yes+12(%rip)	# D.14609, PL_sv_yes.sv_flags
	.loc 1 289 0
	movl	$2147483647, PL_sv_yes+8(%rip)	#, PL_sv_yes.sv_refcnt
	.loc 1 291 0
	movl	PL_sv_placeholder+12(%rip), %eax	# PL_sv_placeholder.sv_flags, D.14609
	orl	$8388608, %eax	#, D.14609
	movl	%eax, PL_sv_placeholder+12(%rip)	# D.14609, PL_sv_placeholder.sv_flags
	.loc 1 292 0
	movl	$2147483647, PL_sv_placeholder+8(%rip)	#, PL_sv_placeholder.sv_refcnt
.L7:
	.loc 1 295 0
	movq	$Perl_sighandler, PL_sighandlerp(%rip)	#, PL_sighandlerp
	.loc 1 296 0
	call	Perl_newHV	#
	movq	%rax, PL_pidstatus(%rip)	# PL_pidstatus.11, PL_pidstatus
.L6:
	.loc 1 299 0
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_rs(%rip)	# PL_rs.12, PL_rs
	.loc 1 301 0
	call	Perl_init_stacks	#
	.loc 1 303 0
	call	S_init_ids	#
	.loc 1 304 0
	movl	$11, PL_lex_state(%rip)	#, PL_lex_state
.LBB3:
	.loc 1 306 0
	movl	$216, %edx	#,
	movl	$0, %esi	#,
	movl	$PL_start_env, %edi	#,
	call	memset	#
	movl	$-1, PL_start_env+208(%rip)	#, PL_start_env.je_ret
	movb	$1, PL_start_env+212(%rip)	#, PL_start_env.je_mustcatch
	movq	$PL_start_env, PL_top_env(%rip)	#, PL_top_env
.LBE3:
	.loc 1 307 0
	movl	$0, PL_statusvalue(%rip)	#, PL_statusvalue
	.loc 1 309 0
	movl	$1, %edi	#,
	call	Perl_init_i18nl10n	#
.LBB4:
	.loc 1 314 0
	movl	$4, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_patchlevel(%rip)	# PL_patchlevel.13, PL_patchlevel
	.loc 1 315 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.15
	movl	12(%rax), %eax	# PL_patchlevel.15_41->sv_flags, D.14609
	movzbl	%al, %eax	# D.14609, D.14609
	cmpl	$5, %eax	#, D.14609
	ja	.L16	#,
	.loc 1 315 0 is_stmt 0 discriminator 2
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.16
	movl	$6, %esi	#,
	movq	%rax, %rdi	# PL_patchlevel.16,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14612
	je	.L18	#,
.L16:
	.loc 1 315 0 discriminator 1
	nop
.L18:
	.loc 1 318 0 is_stmt 1
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.21
	movq	(%rax), %rax	# PL_patchlevel.21_48->sv_any, D.14610
	movq	(%rax), %rax	# MEM[(struct XPV *)_49].xpv_pv, tmp147
	movq	%rax, -8(%rbp)	# tmp147, s
	.loc 1 320 0
	movq	-8(%rbp), %rax	# s, tmp148
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -8(%rbp)	# tmp149, s
	.loc 1 321 0
	movq	-8(%rbp), %rax	# s, tmp150
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -8(%rbp)	# tmp151, s
	.loc 1 322 0
	movq	-8(%rbp), %rax	# s, tmp152
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -8(%rbp)	# tmp153, s
	.loc 1 323 0
	movq	-8(%rbp), %rax	# s, tmp154
	movb	$0, (%rax)	#, *s_53
	.loc 1 324 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.22
	movq	(%rax), %rax	# PL_patchlevel.22_54->sv_any, D.14610
	movq	-8(%rbp), %rcx	# s, s.23
	movq	PL_patchlevel(%rip), %rdx	# PL_patchlevel, PL_patchlevel.24
	movq	(%rdx), %rdx	# PL_patchlevel.24_57->sv_any, D.14610
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_58].xpv_pv, D.14613
	subq	%rdx, %rcx	# D.14614, D.14614
	movq	%rcx, %rdx	# D.14614, D.14614
	movq	%rdx, 8(%rax)	# D.14615, MEM[(struct XPV *)_55].xpv_cur
	.loc 1 325 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.25
	movq	PL_patchlevel(%rip), %rdx	# PL_patchlevel, PL_patchlevel.26
	movl	12(%rdx), %edx	# PL_patchlevel.26_64->sv_flags, D.14609
	orl	$67371008, %edx	#, D.14609
	movl	%edx, 12(%rax)	# D.14609, PL_patchlevel.25_63->sv_flags
	.loc 1 326 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.27
	movq	(%rax), %rdx	# PL_patchlevel.27_67->sv_any, D.14610
	movabsq	$4617324533042155113, %rax	#, tmp155
	movq	%rax, 32(%rdx)	# tmp155, MEM[(struct XPVNV *)_68].xnv_nv
	.loc 1 329 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.28
	movq	PL_patchlevel(%rip), %rdx	# PL_patchlevel, PL_patchlevel.29
	movl	12(%rdx), %edx	# PL_patchlevel.29_70->sv_flags, D.14609
	orl	$33685504, %edx	#, D.14609
	movl	%edx, 12(%rax)	# D.14609, PL_patchlevel.28_69->sv_flags
	.loc 1 330 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.30
	movq	PL_patchlevel(%rip), %rdx	# PL_patchlevel, PL_patchlevel.31
	movl	12(%rdx), %edx	# PL_patchlevel.31_74->sv_flags, D.14609
	orl	$536870912, %edx	#, D.14609
	movl	%edx, 12(%rax)	# D.14609, PL_patchlevel.30_73->sv_flags
	.loc 1 331 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.32
	movq	PL_patchlevel(%rip), %rdx	# PL_patchlevel, PL_patchlevel.33
	movl	12(%rdx), %edx	# PL_patchlevel.33_78->sv_flags, D.14609
	orl	$8388608, %edx	#, D.14609
	movl	%edx, 12(%rax)	# D.14609, PL_patchlevel.32_77->sv_flags
.LBE4:
	.loc 1 335 0
	movq	$local_patches, PL_localpatches(%rip)	#, PL_localpatches
	.loc 1 342 0
	call	PerlIO_init	#
	.loc 1 344 0
	call	Perl_newAV	#
	movq	%rax, PL_fdpid(%rip)	# PL_fdpid.34, PL_fdpid
	.loc 1 345 0
	call	Perl_newHV	#
	movq	%rax, PL_modglobal(%rip)	# PL_modglobal.35, PL_modglobal
	.loc 1 346 0
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_errors(%rip)	# PL_errors.36, PL_errors
	.loc 1 347 0
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$PL_debug_pad, %edi	#,
	call	Perl_sv_setpvn	#
	.loc 1 348 0
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$PL_debug_pad+16, %edi	#,
	call	Perl_sv_setpvn	#
	.loc 1 349 0
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$PL_debug_pad+32, %edi	#,
	call	Perl_sv_setpvn	#
	.loc 1 362 0
	call	Perl_newHV	#
	movq	%rax, PL_strtab(%rip)	# PL_strtab.37, PL_strtab
	.loc 1 367 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.38
	movq	PL_strtab(%rip), %rdx	# PL_strtab, PL_strtab.39
	movl	12(%rdx), %edx	# PL_strtab.39_86->sv_flags, D.14609
	andl	$-536870913, %edx	#, D.14609
	movl	%edx, 12(%rax)	# D.14609, PL_strtab.38_85->sv_flags
	.loc 1 368 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.40
	movl	$512, %esi	#,
	movq	%rax, %rdi	# PL_strtab.40,
	call	Perl_hv_ksplit	#
	.loc 1 377 0
	movq	environ(%rip), %rax	# environ, environ.41
	movq	%rax, PL_origenviron(%rip)	# environ.41, PL_origenviron
	.loc 1 388 0
	movq	$60, PL_clocktick(%rip)	#, PL_clocktick
	.loc 1 390 0
	call	Perl_newHV	#
	movq	%rax, PL_stashcache(%rip)	# PL_stashcache.42, PL_stashcache
	.loc 1 392 0
	call	Perl_push_scope	#
	.loc 1 393 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	perl_construct, .-perl_construct
	.globl	Perl_nothreadhook
	.type	Perl_nothreadhook, @function
Perl_nothreadhook:
.LFB4:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 407 0
	movl	$0, %eax	#, D.14618
	.loc 1 408 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_nothreadhook, .-Perl_nothreadhook
	.section	.rodata
	.align 8
.LC3:
	.string	"Unbalanced scopes: %ld more ENTERs than LEAVEs\n"
	.align 8
.LC4:
	.string	"Unbalanced saves: %ld more saves than restores\n"
	.align 8
.LC5:
	.string	"Unbalanced tmps: %ld more allocs than frees\n"
	.align 8
.LC6:
	.string	"Unbalanced context: %ld more PUSHes than POPs\n"
	.align 8
.LC7:
	.string	"Unbalanced string table refcount: (%d) for \"%s\""
.LC8:
	.string	"Scalars leaked: %ld\n"
	.text
	.globl	perl_destruct
	.type	perl_destruct, @function
perl_destruct:
.LFB5:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	.loc 1 502 0
	movl	PL_perl_destruct_level(%rip), %eax	# PL_perl_destruct_level, PL_perl_destruct_level.43
	movl	%eax, -288(%rbp)	# PL_perl_destruct_level.43, destruct_level
	.loc 1 515 0
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.44
	movzbl	%al, %eax	# PL_exit_flags.44, D.14619
	andl	$2, %eax	#, D.14619
	testl	%eax, %eax	# D.14619
	je	.L22	#,
.LBB5:
	.loc 1 517 0
	movl	$0, -272(%rbp)	#, x
.LBB6:
	.loc 1 519 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.45
	movq	%rax, -24(%rbp)	# PL_top_env.45, cur_env.je_prev
	leaq	-224(%rbp), %rax	#, tmp336
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp336,
	call	__sigsetjmp	#
	movl	%eax, -16(%rbp)	# D.14619, cur_env.je_ret
	leaq	-224(%rbp), %rax	#, tmp337
	movq	%rax, PL_top_env(%rip)	# tmp337, PL_top_env
	movb	$0, -12(%rbp)	#, cur_env.je_mustcatch
	movl	-16(%rbp), %eax	# cur_env.je_ret, tmp338
	movl	%eax, -272(%rbp)	# tmp338, x
.LBE6:
	.loc 1 520 0
	movq	PL_endav(%rip), %rax	# PL_endav, PL_endav.46
	testq	%rax, %rax	# PL_endav.46
	je	.L23	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movzbl	PL_minus_c(%rip), %eax	# PL_minus_c, PL_minus_c.47
	testb	%al, %al	# PL_minus_c.47
	jne	.L23	#,
	.loc 1 521 0 is_stmt 1
	movq	PL_endav(%rip), %rdx	# PL_endav, PL_endav.48
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.49
	movq	%rdx, %rsi	# PL_endav.48,
	movl	%eax, %edi	# PL_scopestack_ix.49,
	call	Perl_call_list	#
.L23:
	.loc 1 522 0
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.50
	movq	%rax, PL_top_env(%rip)	# PL_top_env.50, PL_top_env
.L22:
.LBE5:
	.loc 1 524 0
	call	Perl_pop_scope	#
	.loc 1 525 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.51
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.52
	cmpl	%eax, %edx	# PL_tmps_floor.52, PL_tmps_ix.51
	jle	.L24	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L24:
	.loc 1 528 0 is_stmt 1
	call	Perl_my_fflush_all	#
	.loc 1 530 0
	movq	PL_threadhook(%rip), %rax	# PL_threadhook, PL_threadhook.53
	call	*%rax	# PL_threadhook.53
	testl	%eax, %eax	# D.14619
	je	.L25	#,
	.loc 1 532 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, D.14619
	jmp	.L26	#
.L25:
	.loc 1 538 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.54
	testq	%rax, %rax	# PL_main_root.54
	je	.L27	#,
	.loc 1 540 0
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.55
	movq	(%rax), %rax	# PL_main_cv.55_30->sv_any, D.14620
	movq	120(%rax), %rax	# _31->xcv_padlist, D.14621
	testq	%rax, %rax	# D.14621
	je	.L28	#,
	.loc 1 541 0
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.56
	movq	(%rax), %rax	# PL_main_cv.56_33->sv_any, D.14620
	movq	120(%rax), %rax	# _34->xcv_padlist, D.14621
	movq	(%rax), %rax	# _35->sv_any, D.14622
	movq	(%rax), %rax	# _36->xav_array, D.14623
	movq	8(%rax), %rax	# MEM[(struct SV * *)_37 + 8B], PL_comppad.57
	movq	%rax, PL_comppad(%rip)	# PL_comppad.57, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.58
	movq	(%rax), %rax	# PL_comppad.58_39->sv_any, D.14622
	movq	(%rax), %rax	# _40->xav_array, PL_curpad.59
	movq	%rax, PL_curpad(%rip)	# PL_curpad.59, PL_curpad
.L28:
	.loc 1 543 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.60
	movq	%rax, %rdi	# PL_main_root.60,
	call	Perl_op_free	#
	.loc 1 544 0
	movq	$0, PL_main_root(%rip)	#, PL_main_root
.L27:
	.loc 1 546 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 547 0
	movq	$0, PL_main_start(%rip)	#, PL_main_start
	.loc 1 548 0
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.61
	movq	%rax, %rdi	# PL_main_cv.61,
	call	Perl_sv_free	#
	.loc 1 549 0
	movq	$0, PL_main_cv(%rip)	#, PL_main_cv
	.loc 1 550 0
	movb	$1, PL_dirty(%rip)	#, PL_dirty
	.loc 1 557 0
	call	PerlIO_destruct	#
	.loc 1 559 0
	movl	PL_sv_objcount(%rip), %eax	# PL_sv_objcount, PL_sv_objcount.62
	testl	%eax, %eax	# PL_sv_objcount.62
	je	.L29	#,
	.loc 1 565 0
	call	Perl_sv_clean_objs	#
	.loc 1 566 0
	movl	$0, PL_sv_objcount(%rip)	#, PL_sv_objcount
.L29:
	.loc 1 570 0
	movq	PL_warnhook(%rip), %rax	# PL_warnhook, PL_warnhook.63
	movq	%rax, %rdi	# PL_warnhook.63,
	call	Perl_sv_free	#
	.loc 1 571 0
	movq	$0, PL_warnhook(%rip)	#, PL_warnhook
	.loc 1 572 0
	movq	PL_diehook(%rip), %rax	# PL_diehook, PL_diehook.64
	movq	%rax, %rdi	# PL_diehook.64,
	call	Perl_sv_free	#
	.loc 1 573 0
	movq	$0, PL_diehook(%rip)	#, PL_diehook
	.loc 1 576 0
	jmp	.L30	#
.L31:
	.loc 1 577 0
	movq	PL_exitlist(%rip), %rax	# PL_exitlist, PL_exitlist.65
	movl	PL_exitlistlen(%rip), %edx	# PL_exitlistlen, PL_exitlistlen.66
	movslq	%edx, %rdx	# PL_exitlistlen.66, D.14624
	salq	$4, %rdx	#, D.14624
	addq	%rdx, %rax	# D.14624, D.14625
	movq	(%rax), %rax	# _54->fn, D.14626
	movq	PL_exitlist(%rip), %rdx	# PL_exitlist, PL_exitlist.67
	movl	PL_exitlistlen(%rip), %ecx	# PL_exitlistlen, PL_exitlistlen.68
	movslq	%ecx, %rcx	# PL_exitlistlen.68, D.14624
	salq	$4, %rcx	#, D.14624
	addq	%rcx, %rdx	# D.14624, D.14625
	movq	8(%rdx), %rdx	# _60->ptr, D.14627
	movq	%rdx, %rdi	# D.14627,
	call	*%rax	# D.14626
.L30:
	.loc 1 576 0 discriminator 1
	movl	PL_exitlistlen(%rip), %eax	# PL_exitlistlen, PL_exitlistlen.69
	leal	-1(%rax), %edx	#, PL_exitlistlen.71
	movl	%edx, PL_exitlistlen(%rip)	# PL_exitlistlen.71, PL_exitlistlen
	testl	%eax, %eax	# PL_exitlistlen.70
	jg	.L31	#,
	.loc 1 579 0
	movq	PL_exitlist(%rip), %rax	# PL_exitlist, PL_exitlist.72
	movq	%rax, %rdi	# PL_exitlist.72,
	call	Perl_safesysfree	#
	.loc 1 581 0
	movq	$0, PL_exitlist(%rip)	#, PL_exitlist
	.loc 1 582 0
	movl	$0, PL_exitlistlen(%rip)	#, PL_exitlistlen
	.loc 1 584 0
	movl	-288(%rbp), %eax	# destruct_level, destruct_level.73
	testl	%eax, %eax	# destruct_level.73
	jne	.L32	#,
	.loc 1 590 0
	call	PerlIO_cleanup	#
	.loc 1 594 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, D.14619
	jmp	.L26	#
.L32:
	.loc 1 603 0
	movq	environ(%rip), %rdx	# environ, environ.74
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.75
	cmpq	%rax, %rdx	# PL_origenviron.75, environ.74
	je	.L33	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	movl	PL_use_safe_putenv(%rip), %eax	# PL_use_safe_putenv, PL_use_safe_putenv.76
	testl	%eax, %eax	# PL_use_safe_putenv.76
	jne	.L33	#,
.LBB7:
	.loc 1 612 0 is_stmt 1
	movl	$0, -284(%rbp)	#, i
	jmp	.L34	#
.L35:
	.loc 1 613 0 discriminator 2
	movq	environ(%rip), %rax	# environ, environ.77
	movl	-284(%rbp), %edx	# i, tmp339
	movslq	%edx, %rdx	# tmp339, D.14624
	salq	$3, %rdx	#, D.14624
	addq	%rdx, %rax	# D.14624, D.14628
	movq	(%rax), %rax	# *_77, D.14623
	movq	%rax, %rdi	# D.14623,
	call	Perl_safesysfree	#
	.loc 1 612 0 discriminator 2
	addl	$1, -284(%rbp)	#, i
.L34:
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.78
	movl	-284(%rbp), %edx	# i, tmp340
	movslq	%edx, %rdx	# tmp340, D.14624
	salq	$3, %rdx	#, D.14624
	addq	%rdx, %rax	# D.14624, D.14628
	movq	(%rax), %rax	# *_72, D.14623
	testq	%rax, %rax	# D.14623
	jne	.L35	#,
	.loc 1 616 0 is_stmt 1
	movq	environ(%rip), %rax	# environ, environ.79
	movq	%rax, %rdi	# environ.79,
	call	Perl_safesysfree	#
	.loc 1 618 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.80
	movq	%rax, environ(%rip)	# PL_origenviron.80, environ
.L33:
.LBE7:
	.loc 1 624 0
	movl	$0, %edi	#,
	call	Perl_setdefout	#
	.loc 1 659 0
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.81
	movq	%rax, %rdi	# PL_stashcache.81,
	call	Perl_sv_free	#
	.loc 1 660 0
	movq	$0, PL_stashcache(%rip)	#, PL_stashcache
	.loc 1 664 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.82
	testq	%rax, %rax	# PL_rsfp.82
	je	.L36	#,
	.loc 1 665 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.83
	movq	%rax, %rdi	# PL_rsfp.83,
	call	Perl_PerlIO_close	#
	.loc 1 666 0
	movq	$0, PL_rsfp(%rip)	#, PL_rsfp
.L36:
	.loc 1 670 0
	movq	PL_rsfp_filters(%rip), %rax	# PL_rsfp_filters, PL_rsfp_filters.84
	movq	%rax, %rdi	# PL_rsfp_filters.84,
	call	Perl_sv_free	#
	.loc 1 671 0
	movq	$0, PL_rsfp_filters(%rip)	#, PL_rsfp_filters
	.loc 1 674 0
	movb	$0, PL_preprocess(%rip)	#, PL_preprocess
	.loc 1 675 0
	movb	$0, PL_minus_n(%rip)	#, PL_minus_n
	.loc 1 676 0
	movb	$0, PL_minus_p(%rip)	#, PL_minus_p
	.loc 1 677 0
	movb	$0, PL_minus_l(%rip)	#, PL_minus_l
	.loc 1 678 0
	movb	$0, PL_minus_a(%rip)	#, PL_minus_a
	.loc 1 679 0
	movb	$0, PL_minus_F(%rip)	#, PL_minus_F
	.loc 1 680 0
	movb	$0, PL_doswitches(%rip)	#, PL_doswitches
	.loc 1 681 0
	movb	$0, PL_dowarn(%rip)	#, PL_dowarn
	.loc 1 682 0
	movb	$0, PL_doextract(%rip)	#, PL_doextract
	.loc 1 683 0
	movb	$0, PL_sawampersand(%rip)	#, PL_sawampersand
	.loc 1 684 0
	movb	$0, PL_unsafe(%rip)	#, PL_unsafe
	.loc 1 686 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.85
	movq	%rax, %rdi	# PL_inplace.85,
	call	Perl_safesysfree	#
	.loc 1 687 0
	movq	$0, PL_inplace(%rip)	#, PL_inplace
	.loc 1 688 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.86
	movq	%rax, %rdi	# PL_patchlevel.86,
	call	Perl_sv_free	#
	.loc 1 690 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.87
	testq	%rax, %rax	# PL_e_script.87
	je	.L37	#,
	.loc 1 691 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.88
	movq	%rax, %rdi	# PL_e_script.88,
	call	Perl_sv_free	#
	.loc 1 692 0
	movq	$0, PL_e_script(%rip)	#, PL_e_script
.L37:
	.loc 1 695 0
	movl	$0, PL_perldb(%rip)	#, PL_perldb
	.loc 1 699 0
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.89
	movq	%rax, %rdi	# PL_ofs_sv.89,
	call	Perl_sv_free	#
	.loc 1 700 0
	movq	$0, PL_ofs_sv(%rip)	#, PL_ofs_sv
	.loc 1 702 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.90
	movq	%rax, %rdi	# PL_ors_sv.90,
	call	Perl_sv_free	#
	.loc 1 703 0
	movq	$0, PL_ors_sv(%rip)	#, PL_ors_sv
	.loc 1 705 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.91
	movq	%rax, %rdi	# PL_rs.91,
	call	Perl_sv_free	#
	.loc 1 706 0
	movq	$0, PL_rs(%rip)	#, PL_rs
	.loc 1 708 0
	movl	$0, PL_multiline(%rip)	#, PL_multiline
	.loc 1 709 0
	movq	PL_osname(%rip), %rax	# PL_osname, PL_osname.92
	movq	%rax, %rdi	# PL_osname.92,
	call	Perl_safesysfree	#
	.loc 1 710 0
	movq	$0, PL_osname(%rip)	#, PL_osname
	.loc 1 712 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.93
	movq	%rax, %rdi	# PL_statname.93,
	call	Perl_sv_free	#
	.loc 1 713 0
	movq	$0, PL_statname(%rip)	#, PL_statname
	.loc 1 714 0
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 719 0
	movq	PL_lastscream(%rip), %rax	# PL_lastscream, PL_lastscream.94
	movq	%rax, %rdi	# PL_lastscream.94,
	call	Perl_sv_free	#
	.loc 1 720 0
	movq	$0, PL_lastscream(%rip)	#, PL_lastscream
	.loc 1 721 0
	movq	PL_screamfirst(%rip), %rax	# PL_screamfirst, PL_screamfirst.95
	movq	%rax, %rdi	# PL_screamfirst.95,
	call	Perl_safesysfree	#
	.loc 1 722 0
	movq	$0, PL_screamfirst(%rip)	#, PL_screamfirst
	.loc 1 723 0
	movq	PL_screamnext(%rip), %rax	# PL_screamnext, PL_screamnext.96
	movq	%rax, %rdi	# PL_screamnext.96,
	call	Perl_safesysfree	#
	.loc 1 724 0
	movq	$0, PL_screamnext(%rip)	#, PL_screamnext
	.loc 1 727 0
	movq	PL_efloatbuf(%rip), %rax	# PL_efloatbuf, PL_efloatbuf.97
	movq	%rax, %rdi	# PL_efloatbuf.97,
	call	Perl_safesysfree	#
	.loc 1 728 0
	movq	$0, PL_efloatbuf(%rip)	#, PL_efloatbuf
	.loc 1 729 0
	movq	$0, PL_efloatsize(%rip)	#, PL_efloatsize
	.loc 1 732 0
	movq	PL_beginav(%rip), %rax	# PL_beginav, PL_beginav.98
	movq	%rax, %rdi	# PL_beginav.98,
	call	Perl_sv_free	#
	.loc 1 733 0
	movq	PL_beginav_save(%rip), %rax	# PL_beginav_save, PL_beginav_save.99
	movq	%rax, %rdi	# PL_beginav_save.99,
	call	Perl_sv_free	#
	.loc 1 734 0
	movq	PL_endav(%rip), %rax	# PL_endav, PL_endav.100
	movq	%rax, %rdi	# PL_endav.100,
	call	Perl_sv_free	#
	.loc 1 735 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.101
	movq	%rax, %rdi	# PL_checkav.101,
	call	Perl_sv_free	#
	.loc 1 736 0
	movq	PL_checkav_save(%rip), %rax	# PL_checkav_save, PL_checkav_save.102
	movq	%rax, %rdi	# PL_checkav_save.102,
	call	Perl_sv_free	#
	.loc 1 737 0
	movq	PL_initav(%rip), %rax	# PL_initav, PL_initav.103
	movq	%rax, %rdi	# PL_initav.103,
	call	Perl_sv_free	#
	.loc 1 738 0
	movq	$0, PL_beginav(%rip)	#, PL_beginav
	.loc 1 739 0
	movq	$0, PL_beginav_save(%rip)	#, PL_beginav_save
	.loc 1 740 0
	movq	$0, PL_endav(%rip)	#, PL_endav
	.loc 1 741 0
	movq	$0, PL_checkav(%rip)	#, PL_checkav
	.loc 1 742 0
	movq	$0, PL_checkav_save(%rip)	#, PL_checkav_save
	.loc 1 743 0
	movq	$0, PL_initav(%rip)	#, PL_initav
	.loc 1 746 0
	movq	$0, PL_envgv(%rip)	#, PL_envgv
	.loc 1 747 0
	movq	$0, PL_incgv(%rip)	#, PL_incgv
	.loc 1 748 0
	movq	$0, PL_hintgv(%rip)	#, PL_hintgv
	.loc 1 749 0
	movq	$0, PL_errgv(%rip)	#, PL_errgv
	.loc 1 750 0
	movq	$0, PL_argvgv(%rip)	#, PL_argvgv
	.loc 1 751 0
	movq	$0, PL_argvoutgv(%rip)	#, PL_argvoutgv
	.loc 1 752 0
	movq	$0, PL_stdingv(%rip)	#, PL_stdingv
	.loc 1 753 0
	movq	$0, PL_stderrgv(%rip)	#, PL_stderrgv
	.loc 1 754 0
	movq	$0, PL_last_in_gv(%rip)	#, PL_last_in_gv
	.loc 1 755 0
	movq	$0, PL_replgv(%rip)	#, PL_replgv
	.loc 1 756 0
	movq	$0, PL_DBgv(%rip)	#, PL_DBgv
	.loc 1 757 0
	movq	$0, PL_DBline(%rip)	#, PL_DBline
	.loc 1 758 0
	movq	$0, PL_DBsub(%rip)	#, PL_DBsub
	.loc 1 759 0
	movq	$0, PL_DBsingle(%rip)	#, PL_DBsingle
	.loc 1 760 0
	movq	$0, PL_DBtrace(%rip)	#, PL_DBtrace
	.loc 1 761 0
	movq	$0, PL_DBsignal(%rip)	#, PL_DBsignal
	.loc 1 762 0
	movq	$0, PL_DBcv(%rip)	#, PL_DBcv
	.loc 1 763 0
	movq	$0, PL_dbargs(%rip)	#, PL_dbargs
	.loc 1 764 0
	movq	$0, PL_debstash(%rip)	#, PL_debstash
	.loc 1 766 0
	movq	PL_argvout_stack(%rip), %rax	# PL_argvout_stack, PL_argvout_stack.104
	movq	%rax, %rdi	# PL_argvout_stack.104,
	call	Perl_sv_free	#
	.loc 1 767 0
	movq	$0, PL_argvout_stack(%rip)	#, PL_argvout_stack
	.loc 1 769 0
	movq	PL_modglobal(%rip), %rax	# PL_modglobal, PL_modglobal.105
	movq	%rax, %rdi	# PL_modglobal.105,
	call	Perl_sv_free	#
	.loc 1 770 0
	movq	$0, PL_modglobal(%rip)	#, PL_modglobal
	.loc 1 771 0
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.106
	movq	%rax, %rdi	# PL_preambleav.106,
	call	Perl_sv_free	#
	.loc 1 772 0
	movq	$0, PL_preambleav(%rip)	#, PL_preambleav
	.loc 1 773 0
	movq	PL_subname(%rip), %rax	# PL_subname, PL_subname.107
	movq	%rax, %rdi	# PL_subname.107,
	call	Perl_sv_free	#
	.loc 1 774 0
	movq	$0, PL_subname(%rip)	#, PL_subname
	.loc 1 775 0
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.108
	movq	%rax, %rdi	# PL_linestr.108,
	call	Perl_sv_free	#
	.loc 1 776 0
	movq	$0, PL_linestr(%rip)	#, PL_linestr
	.loc 1 777 0
	movq	PL_pidstatus(%rip), %rax	# PL_pidstatus, PL_pidstatus.109
	movq	%rax, %rdi	# PL_pidstatus.109,
	call	Perl_sv_free	#
	.loc 1 778 0
	movq	$0, PL_pidstatus(%rip)	#, PL_pidstatus
	.loc 1 779 0
	movq	PL_toptarget(%rip), %rax	# PL_toptarget, PL_toptarget.110
	movq	%rax, %rdi	# PL_toptarget.110,
	call	Perl_sv_free	#
	.loc 1 780 0
	movq	$0, PL_toptarget(%rip)	#, PL_toptarget
	.loc 1 781 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.111
	movq	%rax, %rdi	# PL_bodytarget.111,
	call	Perl_sv_free	#
	.loc 1 782 0
	movq	$0, PL_bodytarget(%rip)	#, PL_bodytarget
	.loc 1 783 0
	movq	$0, PL_formtarget(%rip)	#, PL_formtarget
	.loc 1 799 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.112
	movq	%rax, %rdi	# PL_utf8_alnum.112,
	call	Perl_sv_free	#
	.loc 1 800 0
	movq	PL_utf8_alnumc(%rip), %rax	# PL_utf8_alnumc, PL_utf8_alnumc.113
	movq	%rax, %rdi	# PL_utf8_alnumc.113,
	call	Perl_sv_free	#
	.loc 1 801 0
	movq	PL_utf8_ascii(%rip), %rax	# PL_utf8_ascii, PL_utf8_ascii.114
	movq	%rax, %rdi	# PL_utf8_ascii.114,
	call	Perl_sv_free	#
	.loc 1 802 0
	movq	PL_utf8_alpha(%rip), %rax	# PL_utf8_alpha, PL_utf8_alpha.115
	movq	%rax, %rdi	# PL_utf8_alpha.115,
	call	Perl_sv_free	#
	.loc 1 803 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.116
	movq	%rax, %rdi	# PL_utf8_space.116,
	call	Perl_sv_free	#
	.loc 1 804 0
	movq	PL_utf8_cntrl(%rip), %rax	# PL_utf8_cntrl, PL_utf8_cntrl.117
	movq	%rax, %rdi	# PL_utf8_cntrl.117,
	call	Perl_sv_free	#
	.loc 1 805 0
	movq	PL_utf8_graph(%rip), %rax	# PL_utf8_graph, PL_utf8_graph.118
	movq	%rax, %rdi	# PL_utf8_graph.118,
	call	Perl_sv_free	#
	.loc 1 806 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.119
	movq	%rax, %rdi	# PL_utf8_digit.119,
	call	Perl_sv_free	#
	.loc 1 807 0
	movq	PL_utf8_upper(%rip), %rax	# PL_utf8_upper, PL_utf8_upper.120
	movq	%rax, %rdi	# PL_utf8_upper.120,
	call	Perl_sv_free	#
	.loc 1 808 0
	movq	PL_utf8_lower(%rip), %rax	# PL_utf8_lower, PL_utf8_lower.121
	movq	%rax, %rdi	# PL_utf8_lower.121,
	call	Perl_sv_free	#
	.loc 1 809 0
	movq	PL_utf8_print(%rip), %rax	# PL_utf8_print, PL_utf8_print.122
	movq	%rax, %rdi	# PL_utf8_print.122,
	call	Perl_sv_free	#
	.loc 1 810 0
	movq	PL_utf8_punct(%rip), %rax	# PL_utf8_punct, PL_utf8_punct.123
	movq	%rax, %rdi	# PL_utf8_punct.123,
	call	Perl_sv_free	#
	.loc 1 811 0
	movq	PL_utf8_xdigit(%rip), %rax	# PL_utf8_xdigit, PL_utf8_xdigit.124
	movq	%rax, %rdi	# PL_utf8_xdigit.124,
	call	Perl_sv_free	#
	.loc 1 812 0
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.125
	movq	%rax, %rdi	# PL_utf8_mark.125,
	call	Perl_sv_free	#
	.loc 1 813 0
	movq	PL_utf8_toupper(%rip), %rax	# PL_utf8_toupper, PL_utf8_toupper.126
	movq	%rax, %rdi	# PL_utf8_toupper.126,
	call	Perl_sv_free	#
	.loc 1 814 0
	movq	PL_utf8_totitle(%rip), %rax	# PL_utf8_totitle, PL_utf8_totitle.127
	movq	%rax, %rdi	# PL_utf8_totitle.127,
	call	Perl_sv_free	#
	.loc 1 815 0
	movq	PL_utf8_tolower(%rip), %rax	# PL_utf8_tolower, PL_utf8_tolower.128
	movq	%rax, %rdi	# PL_utf8_tolower.128,
	call	Perl_sv_free	#
	.loc 1 816 0
	movq	PL_utf8_tofold(%rip), %rax	# PL_utf8_tofold, PL_utf8_tofold.129
	movq	%rax, %rdi	# PL_utf8_tofold.129,
	call	Perl_sv_free	#
	.loc 1 817 0
	movq	PL_utf8_idstart(%rip), %rax	# PL_utf8_idstart, PL_utf8_idstart.130
	movq	%rax, %rdi	# PL_utf8_idstart.130,
	call	Perl_sv_free	#
	.loc 1 818 0
	movq	PL_utf8_idcont(%rip), %rax	# PL_utf8_idcont, PL_utf8_idcont.131
	movq	%rax, %rdi	# PL_utf8_idcont.131,
	call	Perl_sv_free	#
	.loc 1 819 0
	movq	$0, PL_utf8_alnum(%rip)	#, PL_utf8_alnum
	.loc 1 820 0
	movq	$0, PL_utf8_alnumc(%rip)	#, PL_utf8_alnumc
	.loc 1 821 0
	movq	$0, PL_utf8_ascii(%rip)	#, PL_utf8_ascii
	.loc 1 822 0
	movq	$0, PL_utf8_alpha(%rip)	#, PL_utf8_alpha
	.loc 1 823 0
	movq	$0, PL_utf8_space(%rip)	#, PL_utf8_space
	.loc 1 824 0
	movq	$0, PL_utf8_cntrl(%rip)	#, PL_utf8_cntrl
	.loc 1 825 0
	movq	$0, PL_utf8_graph(%rip)	#, PL_utf8_graph
	.loc 1 826 0
	movq	$0, PL_utf8_digit(%rip)	#, PL_utf8_digit
	.loc 1 827 0
	movq	$0, PL_utf8_upper(%rip)	#, PL_utf8_upper
	.loc 1 828 0
	movq	$0, PL_utf8_lower(%rip)	#, PL_utf8_lower
	.loc 1 829 0
	movq	$0, PL_utf8_print(%rip)	#, PL_utf8_print
	.loc 1 830 0
	movq	$0, PL_utf8_punct(%rip)	#, PL_utf8_punct
	.loc 1 831 0
	movq	$0, PL_utf8_xdigit(%rip)	#, PL_utf8_xdigit
	.loc 1 832 0
	movq	$0, PL_utf8_mark(%rip)	#, PL_utf8_mark
	.loc 1 833 0
	movq	$0, PL_utf8_toupper(%rip)	#, PL_utf8_toupper
	.loc 1 834 0
	movq	$0, PL_utf8_totitle(%rip)	#, PL_utf8_totitle
	.loc 1 835 0
	movq	$0, PL_utf8_tolower(%rip)	#, PL_utf8_tolower
	.loc 1 836 0
	movq	$0, PL_utf8_tofold(%rip)	#, PL_utf8_tofold
	.loc 1 837 0
	movq	$0, PL_utf8_idstart(%rip)	#, PL_utf8_idstart
	.loc 1 838 0
	movq	$0, PL_utf8_idcont(%rip)	#, PL_utf8_idcont
	.loc 1 840 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14629
	testq	%rax, %rax	# D.14629
	je	.L38	#,
	.loc 1 840 0 is_stmt 0 discriminator 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14629
	cmpq	$16, %rax	#, D.14629
	je	.L38	#,
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14629
	cmpq	$32, %rax	#, D.14629
	je	.L38	#,
	.loc 1 841 0 is_stmt 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14629
	movq	%rax, %rdi	# D.14629,
	call	Perl_sv_free	#
.L38:
	.loc 1 842 0
	movq	$0, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	.loc 1 843 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.14629
	testq	%rax, %rax	# D.14629
	je	.L39	#,
	.loc 1 844 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.14629
	movq	%rax, %rdi	# D.14629,
	call	Perl_sv_free	#
.L39:
	.loc 1 845 0
	movq	$0, PL_compiling+88(%rip)	#, PL_compiling.cop_io
	.loc 1 846 0
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.14630
	movq	%rax, %rdi	# D.14630,
	call	Perl_sv_free	#
	movq	$0, PL_compiling+56(%rip)	#, PL_compiling.cop_filegv
	.loc 1 851 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, tmp341
	movq	%rax, -248(%rbp)	# tmp341, hv
	.loc 1 852 0
	movq	$0, PL_defstash(%rip)	#, PL_defstash
	.loc 1 853 0
	movq	-248(%rbp), %rax	# hv, tmp342
	movq	%rax, %rdi	# tmp342,
	call	Perl_sv_free	#
	.loc 1 854 0
	movq	PL_curstname(%rip), %rax	# PL_curstname, PL_curstname.132
	movq	%rax, %rdi	# PL_curstname.132,
	call	Perl_sv_free	#
	.loc 1 855 0
	movq	$0, PL_curstname(%rip)	#, PL_curstname
	.loc 1 858 0
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.133
	movq	%rax, %rdi	# PL_errors.133,
	call	Perl_sv_free	#
	.loc 1 859 0
	movq	$0, PL_errors(%rip)	#, PL_errors
	.loc 1 861 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.134
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.135
	cmpl	%eax, %edx	# PL_tmps_floor.135, PL_tmps_ix.134
	jle	.L40	#,
	.loc 1 861 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L40:
	.loc 1 862 0 is_stmt 1
	movl	-288(%rbp), %eax	# destruct_level, destruct_level.136
	cmpl	$1, %eax	#, destruct_level.136
	jle	.L41	#,
	.loc 1 862 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.137
	movq	80(%rax), %rax	# PL_curcop.137_146->cop_warnings, D.14629
	testq	%rax, %rax	# D.14629
	je	.L42	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.138
	movq	80(%rax), %rax	# PL_curcop.138_148->cop_warnings, D.14629
	cmpq	$16, %rax	#, D.14629
	je	.L42	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.139
	movq	80(%rax), %rax	# PL_curcop.139_150->cop_warnings, D.14629
	cmpq	$32, %rax	#, D.14629
	je	.L41	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.140
	movq	80(%rax), %rax	# PL_curcop.140_152->cop_warnings, D.14629
	movq	(%rax), %rax	# _153->sv_any, D.14627
	movq	(%rax), %rax	# MEM[(struct XPV *)_154].xpv_pv, D.14623
	addq	$6, %rax	#, D.14623
	movzbl	(%rax), %eax	# *_156, D.14631
	movsbl	%al, %eax	# D.14631, D.14619
	andl	$1, %eax	#, D.14619
	testl	%eax, %eax	# D.14619
	je	.L41	#,
.L42:
	.loc 1 863 0 is_stmt 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.141
	testl	%eax, %eax	# PL_scopestack_ix.141
	je	.L43	#,
	.loc 1 864 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.142
	cltq
	movq	%rax, %rdx	# D.14632,
	movl	$.LC3, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L43:
	.loc 1 867 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.143
	testl	%eax, %eax	# PL_savestack_ix.143
	je	.L44	#,
	.loc 1 868 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.144
	cltq
	movq	%rax, %rdx	# D.14632,
	movl	$.LC4, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L44:
	.loc 1 871 0
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.145
	cmpl	$-1, %eax	#, PL_tmps_floor.145
	je	.L45	#,
	.loc 1 873 0
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.146
	cltq
	.loc 1 872 0
	addq	$1, %rax	#, D.14632
	movq	%rax, %rdx	# D.14632,
	movl	$.LC5, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L45:
	.loc 1 874 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.147
	movl	16(%rax), %eax	# PL_curstackinfo.147_170->si_cxix, D.14619
	cmpl	$-1, %eax	#, D.14619
	je	.L41	#,
	.loc 1 876 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.148
	movl	16(%rax), %eax	# PL_curstackinfo.148_172->si_cxix, D.14619
	cltq
	.loc 1 875 0
	addq	$1, %rax	#, D.14632
	movq	%rax, %rdx	# D.14632,
	movl	$.LC6, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L41:
	.loc 1 880 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.149
	movq	PL_fdpid(%rip), %rdx	# PL_fdpid, PL_fdpid.150
	movl	12(%rdx), %edx	# PL_fdpid.150_177->sv_flags, D.14633
	orb	$-1, %dl	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_fdpid.149_176->sv_flags
	.loc 1 881 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.151
	movq	PL_strtab(%rip), %rdx	# PL_strtab, PL_strtab.152
	movl	12(%rdx), %edx	# PL_strtab.152_181->sv_flags, D.14633
	orb	$-1, %dl	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_strtab.151_180->sv_flags
	.loc 1 884 0
	nop
.L47:
	.loc 1 884 0 is_stmt 0 discriminator 1
	movl	PL_sv_count(%rip), %eax	# PL_sv_count, PL_sv_count.153
	cmpl	$2, %eax	#, PL_sv_count.153
	jle	.L46	#,
	.loc 1 884 0 discriminator 2
	call	Perl_sv_clean_all	#
	testl	%eax, %eax	# D.14619
	jne	.L47	#,
.L46:
	.loc 1 887 0 is_stmt 1
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.154
	movq	PL_fdpid(%rip), %rdx	# PL_fdpid, PL_fdpid.155
	movl	12(%rdx), %edx	# PL_fdpid.155_187->sv_flags, D.14633
	movb	$0, %dl	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_fdpid.154_186->sv_flags
	.loc 1 888 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.156
	movq	PL_fdpid(%rip), %rdx	# PL_fdpid, PL_fdpid.157
	movl	12(%rdx), %edx	# PL_fdpid.157_191->sv_flags, D.14633
	orl	$10, %edx	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_fdpid.156_190->sv_flags
	.loc 1 889 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.158
	movq	PL_strtab(%rip), %rdx	# PL_strtab, PL_strtab.159
	movl	12(%rdx), %edx	# PL_strtab.159_195->sv_flags, D.14633
	movb	$0, %dl	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_strtab.158_194->sv_flags
	.loc 1 890 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.160
	movq	PL_strtab(%rip), %rdx	# PL_strtab, PL_strtab.161
	movl	12(%rdx), %edx	# PL_strtab.161_199->sv_flags, D.14633
	orl	$11, %edx	#, D.14633
	movl	%edx, 12(%rax)	# D.14633, PL_strtab.160_198->sv_flags
	.loc 1 892 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.162
	movq	(%rax), %rax	# PL_fdpid.162_202->sv_any, D.14622
	movq	PL_fdpid(%rip), %rdx	# PL_fdpid, PL_fdpid.163
	movq	(%rdx), %rdx	# PL_fdpid.163_204->sv_any, D.14622
	movzbl	72(%rdx), %edx	# _205->xav_flags, D.14634
	andl	$-2, %edx	#, D.14634
	movb	%dl, 72(%rax)	# D.14634, _203->xav_flags
	.loc 1 893 0
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.164
	movq	%rax, %rdi	# PL_fdpid.164,
	call	Perl_sv_free	#
	.loc 1 894 0
	movq	$0, PL_fdpid(%rip)	#, PL_fdpid
.LBB8:
	.loc 1 910 0
	movl	$0, -280(%rbp)	#, riter
	.loc 1 911 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.165
	movq	(%rax), %rax	# PL_strtab.165_210->sv_any, D.14635
	movq	16(%rax), %rax	# _211->xhv_max, D.14624
	movl	%eax, -268(%rbp)	# D.14624, max
	.loc 1 912 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.166
	movq	(%rax), %rax	# PL_strtab.166_214->sv_any, D.14635
	movq	(%rax), %rax	# _215->xhv_array, tmp343
	movq	%rax, -240(%rbp)	# tmp343, array
	.loc 1 913 0
	movq	-240(%rbp), %rax	# array, tmp344
	movq	(%rax), %rax	# *array_216, tmp345
	movq	%rax, -264(%rbp)	# tmp345, hent
.L53:
	.loc 1 915 0
	cmpq	$0, -264(%rbp)	#, hent
	je	.L48	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.167
	movq	80(%rax), %rax	# PL_curcop.167_218->cop_warnings, D.14629
	testq	%rax, %rax	# D.14629
	je	.L49	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.168
	movq	80(%rax), %rax	# PL_curcop.168_220->cop_warnings, D.14629
	cmpq	$16, %rax	#, D.14629
	je	.L49	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.169
	movq	80(%rax), %rax	# PL_curcop.169_222->cop_warnings, D.14629
	cmpq	$32, %rax	#, D.14629
	je	.L48	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.170
	movq	80(%rax), %rax	# PL_curcop.170_224->cop_warnings, D.14629
	movq	(%rax), %rax	# _225->sv_any, D.14627
	movq	(%rax), %rax	# MEM[(struct XPV *)_226].xpv_pv, D.14623
	addq	$6, %rax	#, D.14623
	movzbl	(%rax), %eax	# *_228, D.14631
	movsbl	%al, %eax	# D.14631, D.14619
	andl	$1, %eax	#, D.14619
	testl	%eax, %eax	# D.14619
	je	.L48	#,
.L49:
	.loc 1 918 0 is_stmt 1
	movq	-264(%rbp), %rax	# hent, tmp346
	movq	8(%rax), %rax	# hent_4->hent_hek, D.14636
	leaq	8(%rax), %rdx	#, D.14637
	movq	-264(%rbp), %rax	# hent, tmp347
	movq	16(%rax), %rax	# hent_4->hent_val, D.14629
	.loc 1 916 0
	sarq	$4, %rax	#, tmp348
	movq	%rdx, %rcx	# D.14637,
	movq	%rax, %rdx	# D.14632,
	movl	$.LC7, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 919 0
	movq	-264(%rbp), %rax	# hent, tmp349
	movq	$0, 16(%rax)	#, hent_4->hent_val
	.loc 1 920 0
	movq	-264(%rbp), %rax	# hent, tmp350
	movq	(%rax), %rax	# hent_4->hent_next, tmp351
	movq	%rax, -264(%rbp)	# tmp351, hent
.L48:
	.loc 1 922 0
	cmpq	$0, -264(%rbp)	#, hent
	jne	.L50	#,
	.loc 1 923 0
	addl	$1, -280(%rbp)	#, riter
	movl	-280(%rbp), %eax	# riter, tmp352
	cmpl	-268(%rbp), %eax	# max, tmp352
	jle	.L51	#,
	.loc 1 924 0
	nop
.LBE8:
	.loc 1 929 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.171
	movq	%rax, %rdi	# PL_strtab.171,
	call	Perl_sv_free	#
	.loc 1 939 0
	movl	$0, PL_sv_yes+8(%rip)	#, PL_sv_yes.sv_refcnt
	.loc 1 940 0
	movl	$PL_sv_yes, %edi	#,
	call	Perl_sv_clear	#
	.loc 1 941 0
	movq	$0, PL_sv_yes(%rip)	#, PL_sv_yes.sv_any
	.loc 1 942 0
	movl	$0, PL_sv_yes+12(%rip)	#, PL_sv_yes.sv_flags
	.loc 1 944 0
	movl	$0, PL_sv_no+8(%rip)	#, PL_sv_no.sv_refcnt
	.loc 1 945 0
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_clear	#
	.loc 1 946 0
	movq	$0, PL_sv_no(%rip)	#, PL_sv_no.sv_any
	.loc 1 947 0
	movl	$0, PL_sv_no+12(%rip)	#, PL_sv_no.sv_flags
.LBB9:
	.loc 1 951 0
	movl	$0, -276(%rbp)	#, i
	jmp	.L54	#
.L51:
.LBE9:
.LBB10:
	.loc 1 925 0
	movl	-280(%rbp), %eax	# riter, tmp353
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14624
	movq	-240(%rbp), %rax	# array, tmp354
	addq	%rdx, %rax	# D.14624, D.14638
	movq	(%rax), %rax	# *_302, tmp355
	movq	%rax, -264(%rbp)	# tmp355, hent
	.loc 1 927 0
	jmp	.L53	#
.L50:
	jmp	.L53	#
.L55:
.LBE10:
.LBB11:
	.loc 1 952 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp357
	cltq
	salq	$4, %rax	#, tmp358
	addq	$PL_debug_pad, %rax	#, tmp359
	movl	$0, 8(%rax)	#, PL_debug_pad.pad[i_7].sv_refcnt
	.loc 1 953 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp361
	cltq
	salq	$4, %rax	#, tmp362
	addq	$PL_debug_pad, %rax	#, D.14629
	movq	%rax, %rdi	# D.14629,
	call	Perl_sv_clear	#
	.loc 1 954 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp364
	cltq
	salq	$4, %rax	#, tmp365
	addq	$PL_debug_pad, %rax	#, tmp366
	movq	$0, (%rax)	#, PL_debug_pad.pad[i_7].sv_any
	.loc 1 955 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp368
	cltq
	salq	$4, %rax	#, tmp369
	addq	$PL_debug_pad, %rax	#, tmp370
	movl	$0, 12(%rax)	#, PL_debug_pad.pad[i_7].sv_flags
	.loc 1 951 0 discriminator 2
	addl	$1, -276(%rbp)	#, i
.L54:
	.loc 1 951 0 is_stmt 0 discriminator 1
	cmpl	$2, -276(%rbp)	#, i
	jle	.L55	#,
.LBE11:
	.loc 1 959 0 is_stmt 1
	movl	PL_sv_count(%rip), %eax	# PL_sv_count, PL_sv_count.172
	testl	%eax, %eax	# PL_sv_count.172
	je	.L56	#,
	.loc 1 959 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.173
	movq	80(%rax), %rax	# PL_curcop.173_244->cop_warnings, D.14629
	testq	%rax, %rax	# D.14629
	je	.L57	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.174
	movq	80(%rax), %rax	# PL_curcop.174_246->cop_warnings, D.14629
	cmpq	$16, %rax	#, D.14629
	je	.L57	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.175
	movq	80(%rax), %rax	# PL_curcop.175_248->cop_warnings, D.14629
	cmpq	$32, %rax	#, D.14629
	je	.L56	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.176
	movq	80(%rax), %rax	# PL_curcop.176_250->cop_warnings, D.14629
	movq	(%rax), %rax	# _251->sv_any, D.14627
	movq	(%rax), %rax	# MEM[(struct XPV *)_252].xpv_pv, D.14623
	addq	$6, %rax	#, D.14623
	movzbl	(%rax), %eax	# *_254, D.14631
	movsbl	%al, %eax	# D.14631, D.14619
	andl	$1, %eax	#, D.14619
	testl	%eax, %eax	# D.14619
	je	.L56	#,
.L57:
	.loc 1 960 0 is_stmt 1
	movl	PL_sv_count(%rip), %eax	# PL_sv_count, PL_sv_count.177
	cltq
	movq	%rax, %rdx	# D.14632,
	movl	$.LC8, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L56:
	.loc 1 981 0
	movl	$0, PL_sv_count(%rip)	#, PL_sv_count
	.loc 1 986 0
	call	PerlIO_cleanup	#
	.loc 1 993 0
	movl	$0, PL_sv_undef+8(%rip)	#, PL_sv_undef.sv_refcnt
	.loc 1 994 0
	movl	PL_sv_undef+12(%rip), %eax	# PL_sv_undef.sv_flags, D.14633
	andl	$-8388609, %eax	#, D.14633
	movl	%eax, PL_sv_undef+12(%rip)	# D.14633, PL_sv_undef.sv_flags
	.loc 1 996 0
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.178
	movq	%rax, %rdi	# PL_origfilename.178,
	call	Perl_safesysfree	#
	.loc 1 997 0
	movq	$0, PL_origfilename(%rip)	#, PL_origfilename
	.loc 1 998 0
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.179
	movq	%rax, %rdi	# PL_reg_start_tmp.179,
	call	Perl_safesysfree	#
	.loc 1 999 0
	movq	$0, PL_reg_start_tmp(%rip)	#, PL_reg_start_tmp
	.loc 1 1000 0
	movl	$0, PL_reg_start_tmpl(%rip)	#, PL_reg_start_tmpl
	.loc 1 1001 0
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.180
	testq	%rax, %rax	# PL_reg_curpm.180
	je	.L58	#,
	.loc 1 1002 0
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.181
	movq	%rax, %rdi	# PL_reg_curpm.181,
	call	Perl_safesysfree	#
.L58:
	.loc 1 1003 0
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.182
	movq	%rax, %rdi	# PL_reg_poscache.182,
	call	Perl_safesysfree	#
	.loc 1 1004 0
	call	Perl_free_tied_hv_pool	#
	.loc 1 1005 0
	movq	PL_op_mask(%rip), %rax	# PL_op_mask, PL_op_mask.183
	movq	%rax, %rdi	# PL_op_mask.183,
	call	Perl_safesysfree	#
	.loc 1 1006 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.184
	movq	%rax, %rdi	# PL_psig_ptr.184,
	call	Perl_safesysfree	#
	.loc 1 1007 0
	movq	$0, PL_psig_ptr(%rip)	#, PL_psig_ptr
	.loc 1 1008 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.185
	movq	%rax, %rdi	# PL_psig_name.185,
	call	Perl_safesysfree	#
	.loc 1 1009 0
	movq	$0, PL_psig_name(%rip)	#, PL_psig_name
	.loc 1 1010 0
	movq	PL_bitcount(%rip), %rax	# PL_bitcount, PL_bitcount.186
	movq	%rax, %rdi	# PL_bitcount.186,
	call	Perl_safesysfree	#
	.loc 1 1011 0
	movq	$0, PL_bitcount(%rip)	#, PL_bitcount
	.loc 1 1012 0
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.187
	movq	%rax, %rdi	# PL_psig_pend.187,
	call	Perl_safesysfree	#
	.loc 1 1013 0
	movq	$0, PL_psig_pend(%rip)	#, PL_psig_pend
	.loc 1 1014 0
	movq	$0, PL_formfeed(%rip)	#, PL_formfeed
	.loc 1 1015 0
	movq	PL_ofmt(%rip), %rax	# PL_ofmt, PL_ofmt.188
	movq	%rax, %rdi	# PL_ofmt.188,
	call	Perl_safesysfree	#
	.loc 1 1016 0
	movq	$0, PL_ofmt(%rip)	#, PL_ofmt
	.loc 1 1017 0
	call	S_nuke_stacks	#
	.loc 1 1018 0
	movb	$0, PL_tainting(%rip)	#, PL_tainting
	.loc 1 1019 0
	movb	$0, PL_taint_warn(%rip)	#, PL_taint_warn
	.loc 1 1020 0
	movl	$0, PL_hints(%rip)	#, PL_hints
	.loc 1 1021 0
	movl	$0, PL_debug(%rip)	#, PL_debug
	.loc 1 1046 0
	call	Perl_sv_free_arenas	#
	.loc 1 1050 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.189
	testq	%rax, %rax	# PL_mess_sv.189
	je	.L59	#,
	.loc 1 1052 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.190
	movl	12(%rax), %eax	# PL_mess_sv.190_274->sv_flags, D.14633
	movzbl	%al, %eax	# D.14633, D.14633
	cmpl	$6, %eax	#, D.14633
	jbe	.L60	#,
.LBB12:
	.loc 1 1055 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.191
	movq	(%rax), %rax	# PL_mess_sv.191_277->sv_any, D.14627
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_278].xmg_magic, tmp371
	movq	%rax, -256(%rbp)	# tmp371, mg
	jmp	.L61	#
.L63:
	.loc 1 1056 0
	movq	-256(%rbp), %rax	# mg, tmp372
	movq	(%rax), %rax	# mg_8->mg_moremagic, tmp373
	movq	%rax, -232(%rbp)	# tmp373, moremagic
	.loc 1 1057 0
	movq	-256(%rbp), %rax	# mg, tmp374
	movq	32(%rax), %rax	# mg_8->mg_ptr, D.14623
	testq	%rax, %rax	# D.14623
	je	.L62	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# mg, tmp375
	movzbl	18(%rax), %eax	# mg_8->mg_type, D.14631
	cmpb	$103, %al	#, D.14631
	je	.L62	#,
	.loc 1 1058 0 is_stmt 1
	movq	-256(%rbp), %rax	# mg, tmp376
	movl	40(%rax), %eax	# mg_8->mg_len, D.14619
	testl	%eax, %eax	# D.14619
	js	.L62	#,
	.loc 1 1059 0
	movq	-256(%rbp), %rax	# mg, tmp377
	movq	32(%rax), %rax	# mg_8->mg_ptr, D.14623
	movq	%rax, %rdi	# D.14623,
	call	Perl_safesysfree	#
.L62:
	.loc 1 1060 0
	movq	-256(%rbp), %rax	# mg, tmp378
	movq	%rax, %rdi	# tmp378,
	call	Perl_safesysfree	#
	.loc 1 1055 0
	movq	-232(%rbp), %rax	# moremagic, tmp379
	movq	%rax, -256(%rbp)	# tmp379, mg
.L61:
	.loc 1 1055 0 is_stmt 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, mg
	jne	.L63	#,
.L60:
.LBE12:
	.loc 1 1064 0 is_stmt 1
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.193
	movl	12(%rax), %eax	# PL_mess_sv.193_286->sv_flags, D.14633
	andl	$2097152, %eax	#, D.14633
	testl	%eax, %eax	# D.14633
	je	.L65	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.194
	movq	%rax, %rdi	# PL_mess_sv.194,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.14619
	je	.L65	#,
	.loc 1 1064 0
	nop
.L65:
	.loc 1 1065 0 is_stmt 1
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.195
	movq	(%rax), %rax	# PL_mess_sv.195_293->sv_any, D.14627
	movq	(%rax), %rax	# MEM[(struct XPV *)_294].xpv_pv, D.14623
	movq	%rax, %rdi	# D.14623,
	call	Perl_safesysfree	#
	.loc 1 1066 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.196
	movq	(%rax), %rax	# PL_mess_sv.196_296->sv_any, D.14627
	movq	%rax, %rdi	# D.14627,
	call	Perl_safesysfree	#
	.loc 1 1067 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.197
	movq	%rax, %rdi	# PL_mess_sv.197,
	call	Perl_safesysfree	#
	.loc 1 1068 0
	movq	$0, PL_mess_sv(%rip)	#, PL_mess_sv
.L59:
	.loc 1 1070 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, D.14619
.L26:
	.loc 1 1071 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	perl_destruct, .-perl_destruct
	.globl	perl_free
	.type	perl_free, @function
perl_free:
.LFB6:
	.loc 1 1083 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# my_perl, my_perl
	.loc 1 1101 0
	movq	%rax, %rdi	# my_perl,
	call	free	#
	.loc 1 1103 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	perl_free, .-perl_free
	.globl	Perl_call_atexit
	.type	Perl_call_atexit, @function
Perl_call_atexit:
.LFB7:
	.loc 1 1134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fn, fn
	movq	%rsi, -16(%rbp)	# ptr, ptr
	.loc 1 1135 0
	movl	PL_exitlistlen(%rip), %eax	# PL_exitlistlen, PL_exitlistlen.198
	addl	$1, %eax	#, D.14645
	cltq
	salq	$4, %rax	#, D.14646
	movq	%rax, %rdx	# D.14646, D.14646
	movq	PL_exitlist(%rip), %rax	# PL_exitlist, PL_exitlist.199
	movq	%rdx, %rsi	# D.14646,
	movq	%rax, %rdi	# PL_exitlist.199,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_exitlist(%rip)	# PL_exitlist.200, PL_exitlist
	.loc 1 1136 0
	movq	PL_exitlist(%rip), %rax	# PL_exitlist, PL_exitlist.201
	movl	PL_exitlistlen(%rip), %edx	# PL_exitlistlen, PL_exitlistlen.202
	movslq	%edx, %rdx	# PL_exitlistlen.202, D.14646
	salq	$4, %rdx	#, D.14646
	addq	%rax, %rdx	# PL_exitlist.201, D.14647
	movq	-8(%rbp), %rax	# fn, tmp77
	movq	%rax, (%rdx)	# tmp77, _11->fn
	.loc 1 1137 0
	movq	PL_exitlist(%rip), %rax	# PL_exitlist, PL_exitlist.203
	movl	PL_exitlistlen(%rip), %edx	# PL_exitlistlen, PL_exitlistlen.204
	movslq	%edx, %rdx	# PL_exitlistlen.204, D.14646
	salq	$4, %rdx	#, D.14646
	addq	%rax, %rdx	# PL_exitlist.203, D.14647
	movq	-16(%rbp), %rax	# ptr, tmp78
	movq	%rax, 8(%rdx)	# tmp78, _17->ptr
	.loc 1 1138 0
	movl	PL_exitlistlen(%rip), %eax	# PL_exitlistlen, PL_exitlistlen.205
	addl	$1, %eax	#, PL_exitlistlen.206
	movl	%eax, PL_exitlistlen(%rip)	# PL_exitlistlen.206, PL_exitlistlen
	.loc 1 1139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_call_atexit, .-Perl_call_atexit
	.section	.rodata
.LC9:
	.string	"NoNe  SuCh"
.LC10:
	.string	"panic: top_env\n"
	.text
	.globl	perl_parse
	.type	perl_parse, @function
perl_parse:
.LFB8:
	.loc 1 1151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rsi, -280(%rbp)	# xsinit, xsinit
	movl	%edx, -284(%rbp)	# argc, argc
	movq	%rcx, -296(%rbp)	# argv, argv
	movq	%r8, -304(%rbp)	# env, env
	.loc 1 1173 0
	movzbl	PL_rehash_seed_set(%rip), %eax	# PL_rehash_seed_set, PL_rehash_seed_set.207
	testb	%al, %al	# PL_rehash_seed_set.207
	jne	.L69	#,
	.loc 1 1174 0
	call	Perl_get_hash_seed	#
	movq	%rax, PL_rehash_seed(%rip)	# PL_rehash_seed.208, PL_rehash_seed
.L69:
	.loc 1 1190 0
	movl	-284(%rbp), %eax	# argc, tmp189
	movl	%eax, PL_origargc(%rip)	# tmp189, PL_origargc
	.loc 1 1191 0
	movq	-296(%rbp), %rax	# argv, tmp190
	movq	%rax, PL_origargv(%rip)	# tmp190, PL_origargv
.LBB13:
	.loc 1 1201 0
	movq	$0, -248(%rbp)	#, s
	.loc 1 1203 0
	movq	$-8, -240(%rbp)	#, mask
	.loc 1 1207 0
	cmpq	$-1, -240(%rbp)	#, mask
	je	.L70	#,
	.loc 1 1207 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# argv, tmp191
	movq	(%rax), %rax	# *argv_18(D), D.14649
	andq	-240(%rbp), %rax	# mask, D.14650
	movq	%rax, %rdx	# D.14650, D.14650
	movq	-296(%rbp), %rax	# argv, tmp192
	movq	(%rax), %rax	# *argv_18(D), D.14649
	cmpq	%rax, %rdx	# D.14650, D.14650
	jne	.L70	#,
	.loc 1 1207 0 discriminator 3
	movl	$1, %eax	#, iftmp.209
	jmp	.L71	#
.L70:
	.loc 1 1207 0 discriminator 2
	movl	$0, %eax	#, iftmp.209
.L71:
	.loc 1 1206 0 is_stmt 1
	cltq
	movq	%rax, -232(%rbp)	# tmp193, aligned
	.loc 1 1218 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.210
	testq	%rax, %rax	# PL_origargv.210
	je	.L72	#,
	.loc 1 1218 0 is_stmt 0 discriminator 1
	movl	PL_origargc(%rip), %eax	# PL_origargc, PL_origargc.211
	testl	%eax, %eax	# PL_origargc.211
	jle	.L72	#,
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.212
	movq	(%rax), %rax	# *PL_origargv.212_31, tmp194
	movq	%rax, -248(%rbp)	# tmp194, s
	cmpq	$0, -248(%rbp)	#, s
	je	.L72	#,
	.loc 1 1219 0 is_stmt 1
	jmp	.L73	#
.L74:
	.loc 1 1219 0 is_stmt 0 discriminator 2
	addq	$1, -248(%rbp)	#, s
.L73:
	.loc 1 1219 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp195
	movzbl	(%rax), %eax	# *s_2, D.14651
	testb	%al, %al	# D.14651
	jne	.L74	#,
	.loc 1 1220 0 is_stmt 1
	movl	$1, -256(%rbp)	#, i
	jmp	.L75	#
.L79:
	.loc 1 1221 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.213
	movl	-256(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_40, D.14649
	movq	-248(%rbp), %rdx	# s, tmp197
	addq	$1, %rdx	#, D.14649
	cmpq	%rdx, %rax	# D.14649, D.14649
	je	.L76	#,
	.loc 1 1226 0
	cmpq	$0, -232(%rbp)	#, aligned
	je	.L72	#,
	.loc 1 1228 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.214
	movl	-256(%rbp), %edx	# i, tmp198
	movslq	%edx, %rdx	# tmp198, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_46, D.14649
	.loc 1 1227 0
	cmpq	-248(%rbp), %rax	# s, D.14649
	jbe	.L72	#,
	.loc 1 1229 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.215
	movl	-256(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rdx	# *_51, D.14649
	.loc 1 1230 0
	movq	-248(%rbp), %rax	# s, tmp200
	addq	$8, %rax	#, D.14649
	andq	-240(%rbp), %rax	# mask, D.14650
	.loc 1 1228 0
	cmpq	%rax, %rdx	# D.14649, D.14649
	ja	.L72	#,
.L76:
	.loc 1 1233 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.216
	movl	-256(%rbp), %edx	# i, tmp201
	movslq	%edx, %rdx	# tmp201, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_60, tmp202
	movq	%rax, -248(%rbp)	# tmp202, s
	.loc 1 1234 0
	jmp	.L77	#
.L78:
	.loc 1 1234 0 is_stmt 0 discriminator 2
	addq	$1, -248(%rbp)	#, s
.L77:
	.loc 1 1234 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp203
	movzbl	(%rax), %eax	# *s_3, D.14651
	testb	%al, %al	# D.14651
	jne	.L78	#,
	.loc 1 1220 0 is_stmt 1
	addl	$1, -256(%rbp)	#, i
.L75:
	.loc 1 1220 0 is_stmt 0 discriminator 1
	movl	PL_origargc(%rip), %eax	# PL_origargc, PL_origargc.217
	cmpl	%eax, -256(%rbp)	# PL_origargc.217, i
	jl	.L79	#,
.L72:
	.loc 1 1241 0 is_stmt 1
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.218
	testq	%rax, %rax	# PL_origenviron.218
	je	.L80	#,
	.loc 1 1242 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.219
	movq	(%rax), %rax	# *PL_origenviron.219_66, D.14649
	movq	-248(%rbp), %rdx	# s, tmp204
	addq	$1, %rdx	#, D.14649
	cmpq	%rdx, %rax	# D.14649, D.14649
	je	.L81	#,
	.loc 1 1247 0
	cmpq	$0, -232(%rbp)	#, aligned
	je	.L80	#,
	.loc 1 1249 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.220
	movq	(%rax), %rax	# *PL_origenviron.220_69, D.14649
	.loc 1 1248 0
	cmpq	-248(%rbp), %rax	# s, D.14649
	jbe	.L80	#,
	.loc 1 1250 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.221
	movq	(%rax), %rdx	# *PL_origenviron.221_71, D.14649
	.loc 1 1251 0
	movq	-248(%rbp), %rax	# s, tmp205
	addq	$8, %rax	#, D.14649
	andq	-240(%rbp), %rax	# mask, D.14650
	.loc 1 1249 0
	cmpq	%rax, %rdx	# D.14649, D.14649
	ja	.L80	#,
.L81:
	.loc 1 1255 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.222
	movq	(%rax), %rax	# *PL_origenviron.222_77, tmp206
	movq	%rax, -248(%rbp)	# tmp206, s
	.loc 1 1256 0
	jmp	.L82	#
.L83:
	.loc 1 1256 0 is_stmt 0 discriminator 2
	addq	$1, -248(%rbp)	#, s
.L82:
	.loc 1 1256 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp207
	movzbl	(%rax), %eax	# *s_6, D.14651
	testb	%al, %al	# D.14651
	jne	.L83	#,
	.loc 1 1258 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_my_setenv	#
	.loc 1 1260 0
	movl	$1, -256(%rbp)	#, i
	jmp	.L84	#
.L88:
	.loc 1 1261 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.223
	movl	-256(%rbp), %edx	# i, tmp208
	movslq	%edx, %rdx	# tmp208, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_90, D.14649
	movq	-248(%rbp), %rdx	# s, tmp209
	addq	$1, %rdx	#, D.14649
	cmpq	%rdx, %rax	# D.14649, D.14649
	je	.L85	#,
	.loc 1 1262 0
	cmpq	$0, -232(%rbp)	#, aligned
	je	.L80	#,
	.loc 1 1264 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.224
	movl	-256(%rbp), %edx	# i, tmp210
	movslq	%edx, %rdx	# tmp210, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_96, D.14649
	.loc 1 1263 0
	cmpq	-248(%rbp), %rax	# s, D.14649
	jbe	.L80	#,
	.loc 1 1265 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.225
	movl	-256(%rbp), %edx	# i, tmp211
	movslq	%edx, %rdx	# tmp211, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rdx	# *_101, D.14649
	.loc 1 1266 0
	movq	-248(%rbp), %rax	# s, tmp212
	addq	$8, %rax	#, D.14649
	andq	-240(%rbp), %rax	# mask, D.14650
	.loc 1 1264 0
	cmpq	%rax, %rdx	# D.14649, D.14649
	ja	.L80	#,
.L85:
	.loc 1 1269 0
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.226
	movl	-256(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_110, tmp214
	movq	%rax, -248(%rbp)	# tmp214, s
	.loc 1 1270 0
	jmp	.L86	#
.L87:
	.loc 1 1270 0 is_stmt 0 discriminator 2
	addq	$1, -248(%rbp)	#, s
.L86:
	.loc 1 1270 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp215
	movzbl	(%rax), %eax	# *s_7, D.14651
	testb	%al, %al	# D.14651
	jne	.L87	#,
	.loc 1 1260 0 is_stmt 1
	addl	$1, -256(%rbp)	#, i
.L84:
	.loc 1 1260 0 is_stmt 0 discriminator 1
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.227
	movl	-256(%rbp), %edx	# i, tmp216
	movslq	%edx, %rdx	# tmp216, D.14650
	salq	$3, %rdx	#, D.14650
	addq	%rdx, %rax	# D.14650, D.14652
	movq	(%rax), %rax	# *_85, D.14649
	testq	%rax, %rax	# D.14649
	jne	.L88	#,
.L80:
	.loc 1 1277 0 is_stmt 1
	movq	-248(%rbp), %rdx	# s, s.228
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.229
	movq	(%rax), %rax	# *PL_origargv.229_116, D.14649
	subq	%rax, %rdx	# D.14653, D.14653
	movq	%rdx, %rax	# D.14653, D.14653
	movl	%eax, PL_origalen(%rip)	# PL_origalen.230, PL_origalen
.LBE13:
	.loc 1 1280 0
	movzbl	PL_do_undump(%rip), %eax	# PL_do_undump, PL_do_undump.231
	testb	%al, %al	# PL_do_undump.231
	je	.L89	#,
	.loc 1 1284 0
	movq	-296(%rbp), %rax	# argv, tmp217
	movq	(%rax), %rax	# *argv_18(D), D.14649
	movq	%rax, %rdi	# D.14649,
	call	Perl_savepv	#
	movq	%rax, PL_origfilename(%rip)	# PL_origfilename.232, PL_origfilename
	.loc 1 1285 0
	movb	$0, PL_do_undump(%rip)	#, PL_do_undump
	.loc 1 1286 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.233
	movl	$-1, 16(%rax)	#, PL_curstackinfo.233_124->si_cxix
	.loc 1 1287 0
	call	S_init_ids	#
	.loc 1 1288 0
	movq	-304(%rbp), %rdx	# env, tmp218
	movq	-296(%rbp), %rcx	# argv, tmp219
	movl	-284(%rbp), %eax	# argc, tmp220
	movq	%rcx, %rsi	# tmp219,
	movl	%eax, %edi	# tmp220,
	call	S_init_postdump_symbols	#
	.loc 1 1289 0
	movl	$0, %eax	#, D.14648
	jmp	.L105	#
.L89:
	.loc 1 1292 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.234
	testq	%rax, %rax	# PL_main_root.234
	je	.L91	#,
	.loc 1 1293 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.235
	movq	%rax, %rdi	# PL_main_root.235,
	call	Perl_op_free	#
	.loc 1 1294 0
	movq	$0, PL_main_root(%rip)	#, PL_main_root
.L91:
	.loc 1 1296 0
	movq	$0, PL_main_start(%rip)	#, PL_main_start
	.loc 1 1297 0
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.236
	movq	%rax, %rdi	# PL_main_cv.236,
	call	Perl_sv_free	#
	.loc 1 1298 0
	movq	$0, PL_main_cv(%rip)	#, PL_main_cv
	.loc 1 1300 0
	movl	$PL_basetime, %edi	#,
	call	time	#
	.loc 1 1301 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp221
	movl	%eax, -252(%rbp)	# tmp221, oldscope
	.loc 1 1302 0
	movb	$0, PL_dowarn(%rip)	#, PL_dowarn
.LBB14:
	.loc 1 1307 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.237
	movq	%rax, -24(%rbp)	# PL_top_env.237, cur_env.je_prev
	leaq	-224(%rbp), %rax	#, tmp222
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	__sigsetjmp	#
	movl	%eax, -16(%rbp)	# D.14648, cur_env.je_ret
	leaq	-224(%rbp), %rax	#, tmp223
	movq	%rax, PL_top_env(%rip)	# tmp223, PL_top_env
	movb	$0, -12(%rbp)	#, cur_env.je_mustcatch
	movl	-16(%rbp), %eax	# cur_env.je_ret, tmp224
	movl	%eax, -260(%rbp)	# tmp224, ret
.LBE14:
	.loc 1 1309 0
	movl	-260(%rbp), %eax	# ret, ret
	cmpl	$1, %eax	#, ret
	je	.L93	#,
	cmpl	$1, %eax	#, ret
	jg	.L94	#,
	testl	%eax, %eax	# ret
	je	.L95	#,
	jmp	.L92	#
.L94:
	cmpl	$2, %eax	#, ret
	je	.L106	#,
	cmpl	$3, %eax	#, ret
	je	.L97	#,
	jmp	.L92	#
.L95:
	.loc 1 1312 0
	movq	-280(%rbp), %rdx	# xsinit, tmp226
	movq	-304(%rbp), %rax	# env, tmp227
	movq	%rdx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	S_parse_body	#
	.loc 1 1314 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.238
	testq	%rax, %rax	# PL_checkav.238
	je	.L98	#,
	.loc 1 1315 0
	movq	PL_checkav(%rip), %rdx	# PL_checkav, PL_checkav.239
	movl	-252(%rbp), %eax	# oldscope, tmp228
	movq	%rdx, %rsi	# PL_checkav.239,
	movl	%eax, %edi	# tmp228,
	call	Perl_call_list	#
.L98:
	.loc 1 1316 0
	movl	$0, -260(%rbp)	#, ret
	.loc 1 1317 0
	jmp	.L92	#
.L93:
	.loc 1 1319 0
	movl	$1, PL_statusvalue(%rip)	#, PL_statusvalue
	.loc 1 1323 0
	jmp	.L106	#
.L100:
	.loc 1 1324 0
	call	Perl_pop_scope	#
	jmp	.L99	#
.L106:
	.loc 1 1323 0
	nop
.L99:
	.loc 1 1323 0 is_stmt 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.240
	cmpl	-252(%rbp), %eax	# oldscope, PL_scopestack_ix.240
	jg	.L100	#,
	.loc 1 1325 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.241
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.242
	cmpl	%eax, %edx	# PL_tmps_floor.242, PL_tmps_ix.241
	jle	.L101	#,
	.loc 1 1325 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L101:
	.loc 1 1326 0 is_stmt 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.243
	movq	%rax, PL_curstash(%rip)	# PL_defstash.243, PL_curstash
	.loc 1 1327 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.244
	testq	%rax, %rax	# PL_checkav.244
	je	.L102	#,
	.loc 1 1328 0
	movq	PL_checkav(%rip), %rdx	# PL_checkav, PL_checkav.245
	movl	-252(%rbp), %eax	# oldscope, tmp229
	movq	%rdx, %rsi	# PL_checkav.245,
	movl	%eax, %edi	# tmp229,
	call	Perl_call_list	#
.L102:
	.loc 1 1329 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, tmp230
	movl	%eax, -260(%rbp)	# tmp230, ret
	.loc 1 1330 0
	jmp	.L92	#
.L97:
	.loc 1 1332 0
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.247
	testq	%rax, %rax	# PL_stderrgv.247
	je	.L103	#,
	.loc 1 1332 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.248
	movl	12(%rax), %eax	# PL_stderrgv.248_147->sv_flags, D.14654
	movzbl	%al, %eax	# D.14654, D.14654
	cmpl	$13, %eax	#, D.14654
	jne	.L103	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.249
	movq	(%rax), %rax	# PL_stderrgv.249_150->sv_any, D.14655
	movq	56(%rax), %rax	# _151->xgv_gp, D.14656
	movq	16(%rax), %rax	# _152->gp_io, D.14657
	testq	%rax, %rax	# D.14657
	je	.L103	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.250
	movq	(%rax), %rax	# PL_stderrgv.250_154->sv_any, D.14655
	movq	56(%rax), %rax	# _155->xgv_gp, D.14656
	movq	16(%rax), %rax	# _156->gp_io, D.14657
	movq	(%rax), %rax	# _157->sv_any, D.14658
	movq	64(%rax), %rax	# _158->xio_ofp, D.14659
	testq	%rax, %rax	# D.14659
	je	.L103	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.251
	movq	(%rax), %rax	# PL_stderrgv.251_160->sv_any, D.14655
	movq	56(%rax), %rax	# _161->xgv_gp, D.14656
	movq	16(%rax), %rax	# _162->gp_io, D.14657
	movq	(%rax), %rax	# _163->sv_any, D.14658
	movq	64(%rax), %rax	# _164->xio_ofp, iftmp.246
	jmp	.L104	#
.L103:
	.loc 1 1332 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L104:
	.loc 1 1332 0 discriminator 3
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# iftmp.246,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1333 0 is_stmt 1 discriminator 3
	movl	$1, -260(%rbp)	#, ret
	.loc 1 1334 0 discriminator 3
	nop
.L92:
	.loc 1 1336 0
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.252
	movq	%rax, PL_top_env(%rip)	# PL_top_env.252, PL_top_env
	.loc 1 1337 0
	movl	-260(%rbp), %eax	# ret, D.14648
.L105:
	.loc 1 1338 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	perl_parse, .-perl_parse
	.section	.rodata
.LC11:
	.string	"-e"
.LC12:
	.string	"No code specified for -e"
.LC13:
	.string	"-I"
.LC14:
	.string	" "
.LC15:
	.string	"No directory specified for -I"
.LC16:
	.string	"-P"
.LC17:
	.string	"-S"
	.align 8
.LC18:
	.string	"use Config qw(myconfig config_vars)"
.LC19:
	.string	"print myconfig();"
	.align 8
.LC20:
	.string	"print \"\\nCharacteristics of this binary (from libperl): \\n\","
.LC21:
	.string	"\"  Compile-time options:"
.LC22:
	.string	"\\n                       "
.LC23:
	.string	"\\n\","
.LC24:
	.string	"SPEC CPU"
.LC25:
	.string	"\"  Built under %s\\n\""
.LC26:
	.string	"16:48:04"
.LC27:
	.string	"Apr  3 2014"
.LC28:
	.string	",\"  Compiled at %s %s\\n\""
	.align 8
.LC29:
	.string	"; $\"=\"\\n    \"; @env = map { \"$_=\\\"$ENV{$_}\\\"\" } sort grep {/^PERL/} keys %ENV; "
	.align 8
.LC30:
	.string	"print \"  \\%ENV:\\n    @env\\n\" if @env; print \"  \\@INC:\\n    @INC\\n\";"
.LC31:
	.string	"config_vars(qw("
.LC32:
	.string	"))"
.LC33:
	.string	"/dev/null"
.LC34:
	.string	"version"
.LC35:
	.string	"v"
.LC36:
	.string	"help"
.LC37:
	.string	"h"
	.align 8
.LC38:
	.string	"Unrecognized switch: -%s  (-h will show valid options)"
.LC39:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"@"
	.string	""
	.string	""
.LC40:
	.string	"-"
.LC41:
	.string	"Can't chdir to %s"
.LC42:
	.string	":utf8"
.LC43:
	.string	"\017PEN"
.LC44:
	.string	":utf8"
	.string	":utf8"
.LC45:
	.string	":utf8"
	.string	""
.LC46:
	.string	""
	.string	":utf8"
.LC47:
	.string	"%s had compilation errors.\n"
	.align 8
.LC48:
	.string	"Execution of %s aborted due to compilation errors.\n"
	.text
	.type	S_parse_body, @function
S_parse_body:
.LFB9:
	.loc 1 1353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)	# env, env
	movq	%rsi, -144(%rbp)	# xsinit, xsinit
	.loc 1 1354 0
	movl	PL_origargc(%rip), %eax	# PL_origargc, tmp248
	movl	%eax, -124(%rbp)	# tmp248, argc
	.loc 1 1355 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, tmp249
	movq	%rax, -112(%rbp)	# tmp249, argv
	.loc 1 1356 0
	movq	$0, -104(%rbp)	#, scriptname
	.loc 1 1357 0
	movb	$0, -127(%rbp)	#, dosearch
	.loc 1 1358 0
	movq	$.LC2, -80(%rbp)	#, validarg
	.loc 1 1361 0
	movq	$0, -96(%rbp)	#, cddir
	.loc 1 1362 0
	movb	$0, -126(%rbp)	#, minus_f
	.loc 1 1366 0
	movw	$0, PL_op_seqmax(%rip)	#, PL_op_seqmax
	.loc 1 1368 0
	movl	$-1, PL_fdscript(%rip)	#, PL_fdscript
	.loc 1 1369 0
	movl	$-1, PL_suidscript(%rip)	#, PL_suidscript
	.loc 1 1370 0
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.253
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# PL_linestr.253,
	call	Perl_sv_setpvn	#
	.loc 1 1371 0
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %r12	#, sv
	.loc 1 1372 0
	movq	%r12, %rdi	# sv,
	call	Perl_save_freesv	#
	.loc 1 1373 0
	call	S_init_main_stash	#
	.loc 1 1375 0
	subl	$1, -124(%rbp)	#, argc
	addq	$8, -112(%rbp)	#, argv
	jmp	.L108	#
.L149:
	.loc 1 1376 0
	movq	-112(%rbp), %rax	# argv, tmp250
	movq	(%rax), %rax	# *argv_10, D.14663
	movzbl	(%rax), %eax	# *_40, D.14664
	cmpb	$45, %al	#, D.14664
	jne	.L109	#,
	.loc 1 1376 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# argv, tmp251
	movq	(%rax), %rax	# *argv_10, D.14663
	addq	$1, %rax	#, D.14663
	movzbl	(%rax), %eax	# *_43, D.14664
	testb	%al, %al	# D.14664
	je	.L109	#,
	.loc 1 1390 0 is_stmt 1
	movq	-112(%rbp), %rax	# argv, tmp252
	movq	(%rax), %rax	# *argv_10, D.14663
	leaq	1(%rax), %rbx	#, s
.L110:
	.loc 1 1392 0
	movzbl	(%rbx), %eax	# *s_18, D.14664
	movsbl	%al, %eax	# D.14664, D.14665
	cmpl	$120, %eax	#, D.14665
	ja	.L111	#,
	movl	%eax, %eax	# D.14665, tmp253
	movq	.L113(,%rax,8), %rax	#, tmp254
	jmp	*%rax	# tmp254
	.section	.rodata
	.align 8
	.align 4
.L113:
	.quad	.L180
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L115
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L114
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L116
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L117
	.quad	.L111
	.quad	.L111
	.quad	.L118
	.quad	.L119
	.quad	.L114
	.quad	.L120
	.quad	.L114
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L114
	.quad	.L114
	.quad	.L121
	.quad	.L122
	.quad	.L111
	.quad	.L114
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L111
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L114
	.quad	.L123
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L124
	.text
.L114:
	.loc 1 1418 0
	movq	%rbx, %rdi	# s,
	call	Perl_moreswitches	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	je	.L125	#,
	.loc 1 1419 0
	jmp	.L110	#
.L125:
	.loc 1 1420 0
	jmp	.L126	#
.L123:
	.loc 1 1424 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.254
	testb	%al, %al	# PL_tainting.254
	jne	.L127	#,
	.loc 1 1425 0
	movb	$1, PL_taint_warn(%rip)	#, PL_taint_warn
	.loc 1 1426 0
	movb	$1, PL_tainting(%rip)	#, PL_tainting
.L127:
	.loc 1 1428 0
	addq	$1, %rbx	#, s
	.loc 1 1429 0
	jmp	.L110	#
.L119:
	.loc 1 1432 0
	movb	$1, PL_tainting(%rip)	#, PL_tainting
	.loc 1 1433 0
	movb	$0, PL_taint_warn(%rip)	#, PL_taint_warn
	.loc 1 1434 0
	addq	$1, %rbx	#, s
	.loc 1 1435 0
	jmp	.L110	#
.L121:
	.loc 1 1443 0
	movl	$.LC11, %edi	#,
	call	S_forbid_setid	#
	.loc 1 1444 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.255
	testq	%rax, %rax	# PL_e_script.255
	jne	.L128	#,
	.loc 1 1445 0
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_e_script(%rip)	# PL_e_script.256, PL_e_script
	.loc 1 1446 0
	movl	$0, %esi	#,
	movl	$read_e_script, %edi	#,
	call	Perl_filter_add	#
.L128:
	.loc 1 1448 0
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_55, D.14664
	testb	%al, %al	# D.14664
	je	.L129	#,
	.loc 1 1449 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.257
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# PL_e_script.257,
	call	Perl_sv_catpv	#
	jmp	.L130	#
.L129:
	.loc 1 1450 0
	movq	-112(%rbp), %rax	# argv, tmp255
	addq	$8, %rax	#, D.14666
	movq	(%rax), %rax	# *_58, D.14663
	testq	%rax, %rax	# D.14663
	je	.L131	#,
	.loc 1 1451 0
	movq	-112(%rbp), %rax	# argv, tmp256
	addq	$8, %rax	#, D.14666
	movq	(%rax), %rdx	# *_60, D.14663
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.258
	movq	%rdx, %rsi	# D.14663,
	movq	%rax, %rdi	# PL_e_script.258,
	call	Perl_sv_catpv	#
	.loc 1 1452 0
	subl	$1, -124(%rbp)	#, argc
	addq	$8, -112(%rbp)	#, argv
	jmp	.L130	#
.L131:
	.loc 1 1455 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L130:
	.loc 1 1456 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.259
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# PL_e_script.259,
	call	Perl_sv_catpv	#
	.loc 1 1457 0
	jmp	.L126	#
.L122:
	.loc 1 1460 0
	movb	$1, -126(%rbp)	#, minus_f
	.loc 1 1461 0
	addq	$1, %rbx	#, s
	.loc 1 1462 0
	jmp	.L110	#
.L116:
	.loc 1 1465 0
	movl	$.LC13, %edi	#,
	call	S_forbid_setid	#
	.loc 1 1466 0
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_68, D.14664
	testb	%al, %al	# D.14664
	jne	.L132	#,
	.loc 1 1466 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# argv, tmp257
	movq	8(%rax), %rbx	# MEM[(char * *)argv_10 + 8B], s
	testq	%rbx, %rbx	# s
	je	.L132	#,
	.loc 1 1467 0 is_stmt 1
	subl	$1, -124(%rbp)	#, argc
	addq	$8, -112(%rbp)	#, argv
.L132:
	.loc 1 1469 0
	testq	%rbx, %rbx	# s
	je	.L133	#,
	.loc 1 1469 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_19, D.14664
	testb	%al, %al	# D.14664
	je	.L133	#,
.LBB15:
	.loc 1 1471 0 is_stmt 1 discriminator 1
	movq	%rbx, %rdi	# s,
	call	strlen	#
	movq	%rax, -72(%rbp)	# tmp258, len
	.loc 1 1472 0 discriminator 1
	movq	-72(%rbp), %rax	# len, tmp259
	movl	%eax, %esi	# D.14665,
	movq	%rbx, %rdi	# s,
	call	Perl_savepvn	#
	movq	%rax, -64(%rbp)	# tmp260, p
	.loc 1 1473 0 discriminator 1
	movq	-64(%rbp), %rax	# p, tmp261
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	S_incpush	#
	.loc 1 1474 0 discriminator 1
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1475 0 discriminator 1
	movq	-72(%rbp), %rdx	# len, tmp262
	movq	-64(%rbp), %rax	# p, tmp263
	movl	$2, %ecx	#,
	movq	%rax, %rsi	# tmp263,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1476 0 discriminator 1
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1477 0 discriminator 1
	movq	-64(%rbp), %rax	# p, tmp264
	movq	%rax, %rdi	# tmp264,
	call	Perl_safesysfree	#
.LBE15:
	.loc 1 1469 0 discriminator 1
	nop
	.loc 1 1481 0 discriminator 1
	jmp	.L126	#
.L133:
	.loc 1 1480 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1481 0
	jmp	.L126	#
.L117:
	.loc 1 1483 0
	movl	$.LC16, %edi	#,
	call	S_forbid_setid	#
	.loc 1 1484 0
	movb	$1, PL_preprocess(%rip)	#, PL_preprocess
	.loc 1 1485 0
	addq	$1, %rbx	#, s
	.loc 1 1486 0
	jmp	.L110	#
.L118:
	.loc 1 1488 0
	movl	$.LC17, %edi	#,
	call	S_forbid_setid	#
	.loc 1 1489 0
	movb	$1, -127(%rbp)	#, dosearch
	.loc 1 1490 0
	addq	$1, %rbx	#, s
	.loc 1 1491 0
	jmp	.L110	#
.L120:
	.loc 1 1493 0
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.260
	testq	%rax, %rax	# PL_preambleav.260
	jne	.L135	#,
	.loc 1 1494 0
	call	Perl_newAV	#
	movq	%rax, PL_preambleav(%rip)	# PL_preambleav.261, PL_preambleav
.L135:
	.loc 1 1495 0
	movl	$0, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_newSVpv	#
	movq	%rax, %rdx	#, D.14667
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.262
	movq	%rdx, %rsi	# D.14667,
	movq	%rax, %rdi	# PL_preambleav.262,
	call	Perl_av_push	#
	.loc 1 1496 0
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_83, D.14664
	cmpb	$58, %al	#, D.14664
	je	.L136	#,
.LBB16:
	.loc 1 1499 0
	movl	$0, %esi	#,
	movl	$.LC19, %edi	#,
	call	Perl_newSVpv	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.263, PL_Sv
	.loc 1 1503 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.264
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# PL_Sv.264,
	call	Perl_sv_catpv	#
	.loc 1 1505 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.265
	movq	(%rax), %rax	# PL_Sv.265_87->sv_any, D.14668
	movq	8(%rax), %rax	# MEM[(struct XPV *)_88].xpv_cur, tmp265
	movq	%rax, -88(%rbp)	# tmp265, opts
	.loc 1 1507 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.266
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# PL_Sv.266,
	call	Perl_sv_catpv	#
	.loc 1 1545 0
	jmp	.L137	#
.L142:
.LBB17:
	.loc 1 1548 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.268
	movl	12(%rax), %eax	# PL_Sv.268_95->sv_flags, D.14670
	andl	$262144, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L138	#,
	.loc 1 1548 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.269
	movq	(%rax), %rax	# PL_Sv.269_98->sv_any, D.14668
	movq	(%rax), %rax	# MEM[(struct XPV *)_99].xpv_pv, iftmp.267
	jmp	.L139	#
.L138:
	.loc 1 1548 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.270
	movq	%rax, %rdi	# PL_Sv.270,
	call	Perl_sv_2pv_nolen	#
.L139:
	.loc 1 1548 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.267, pv
	.loc 1 1549 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# opts, tmp266
	leaq	76(%rax), %rdx	#, D.14671
	movq	-56(%rbp), %rax	# pv, tmp267
	addq	%rdx, %rax	# D.14671, D.14663
	movzbl	(%rax), %eax	# *_105, tmp268
	movb	%al, -125(%rbp)	# tmp268, c
	.loc 1 1550 0 discriminator 3
	movq	-88(%rbp), %rax	# opts, tmp269
	leaq	76(%rax), %rdx	#, D.14671
	movq	-56(%rbp), %rax	# pv, tmp270
	addq	%rdx, %rax	# D.14671, D.14663
	movb	$0, (%rax)	#, *_108
	.loc 1 1551 0 discriminator 3
	movq	-88(%rbp), %rax	# opts, tmp271
	leaq	26(%rax), %rdx	#, D.14671
	movq	-56(%rbp), %rax	# pv, tmp272
	addq	%rdx, %rax	# D.14671, D.14663
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.14663,
	call	strrchr	#
	movq	%rax, -48(%rbp)	# tmp273, space
	.loc 1 1552 0 discriminator 3
	movq	-88(%rbp), %rax	# opts, tmp274
	leaq	76(%rax), %rdx	#, D.14671
	movq	-56(%rbp), %rax	# pv, tmp275
	addq	%rax, %rdx	# tmp275, D.14663
	movzbl	-125(%rbp), %eax	# c, tmp276
	movb	%al, (%rdx)	# tmp276, *_113
	.loc 1 1553 0 discriminator 3
	cmpq	$0, -48(%rbp)	#, space
	jne	.L140	#,
	.loc 1 1553 0 is_stmt 0 discriminator 1
	jmp	.L141	#
.L140:
	.loc 1 1557 0 is_stmt 1
	movq	-48(%rbp), %rdx	# space, space.271
	movq	-56(%rbp), %rax	# pv, pv.272
	subq	%rax, %rdx	# pv.272, D.14672
	movq	%rdx, %rax	# D.14672, D.14672
	movq	%rax, -88(%rbp)	# D.14672, opts
	.loc 1 1558 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.273
	movq	-88(%rbp), %rsi	# opts, tmp277
	movl	$25, %r8d	#,
	movl	$.LC22, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# PL_Sv.273,
	call	Perl_sv_insert	#
.L137:
.LBE17:
	.loc 1 1545 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.274
	movq	(%rax), %rax	# PL_Sv.274_91->sv_any, D.14668
	movq	8(%rax), %rax	# MEM[(struct XPV *)_92].xpv_cur, D.14669
	movq	-88(%rbp), %rdx	# opts, tmp278
	addq	$76, %rdx	#, D.14669
	cmpq	%rdx, %rax	# D.14669, D.14669
	ja	.L142	#,
.L141:
	.loc 1 1562 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.275
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# PL_Sv.275,
	call	Perl_sv_catpv	#
	.loc 1 1575 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.280
	movl	$.LC24, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# PL_Sv.280,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 1578 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.281
	movl	$.LC26, %ecx	#,
	movl	$.LC27, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# PL_Sv.281,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 1583 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.282
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# PL_Sv.282,
	call	Perl_sv_catpv	#
	.loc 1 1590 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.283
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# PL_Sv.283,
	call	Perl_sv_catpv	#
.LBE16:
	jmp	.L143	#
.L136:
	.loc 1 1595 0
	movl	$0, %esi	#,
	movl	$.LC31, %edi	#,
	call	Perl_newSVpv	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.284, PL_Sv
	.loc 1 1596 0
	addq	$1, %rbx	#, s
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.285
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# PL_Sv.285,
	call	Perl_sv_catpv	#
	.loc 1 1597 0
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.286
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# PL_Sv.286,
	call	Perl_sv_catpv	#
	.loc 1 1598 0
	movq	%rbx, %rdi	# s,
	call	strlen	#
	addq	%rax, %rbx	# D.14669, s
.L143:
	.loc 1 1600 0
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.287
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.288
	movq	%rdx, %rsi	# PL_Sv.287,
	movq	%rax, %rdi	# PL_preambleav.288,
	call	Perl_av_push	#
	.loc 1 1601 0
	movq	$.LC33, -104(%rbp)	#, scriptname
	.loc 1 1602 0
	jmp	.L110	#
.L124:
	.loc 1 1604 0
	movb	$1, PL_doextract(%rip)	#, PL_doextract
	.loc 1 1605 0
	addq	$1, %rbx	#, s
	.loc 1 1606 0
	movzbl	(%rbx), %eax	# *s_133, D.14664
	testb	%al, %al	# D.14664
	je	.L144	#,
	.loc 1 1607 0
	movq	%rbx, -96(%rbp)	# s, cddir
	.loc 1 1608 0
	jmp	.L126	#
.L144:
	jmp	.L126	#
.L115:
	.loc 1 1612 0
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_136, D.14664
	testb	%al, %al	# D.14664
	je	.L145	#,
	.loc 1 1612 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_136, D.14664
	cmpb	$32, %al	#, D.14664
	je	.L145	#,
	movzbl	(%rbx), %eax	# *s_136, D.14664
	cmpb	$9, %al	#, D.14664
	je	.L145	#,
	movzbl	(%rbx), %eax	# *s_136, D.14664
	cmpb	$10, %al	#, D.14664
	je	.L145	#,
	movzbl	(%rbx), %eax	# *s_136, D.14664
	cmpb	$13, %al	#, D.14664
	je	.L145	#,
	movzbl	(%rbx), %eax	# *s_136, D.14664
	cmpb	$12, %al	#, D.14664
	jne	.L146	#,
.L145:
	.loc 1 1613 0 is_stmt 1
	subl	$1, -124(%rbp)	#, argc
	addq	$8, -112(%rbp)	#, argv
	.loc 1 1614 0
	jmp	.L109	#
.L146:
	.loc 1 1617 0
	movl	$.LC34, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.14665
	jne	.L147	#,
	.loc 1 1618 0
	movl	$.LC35, %ebx	#, s
	.loc 1 1619 0
	jmp	.L110	#
.L147:
	.loc 1 1621 0
	movl	$.LC36, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.14665
	jne	.L148	#,
	.loc 1 1622 0
	movl	$.LC37, %ebx	#, s
	.loc 1 1623 0
	jmp	.L110	#
.L148:
	.loc 1 1625 0
	subq	$1, %rbx	#, s
.L111:
	.loc 1 1628 0
	movq	%rbx, %rsi	# s,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L126	#
.L180:
	.loc 1 1610 0
	nop
.L126:
	.loc 1 1375 0
	subl	$1, -124(%rbp)	#, argc
	addq	$8, -112(%rbp)	#, argv
.L108:
	.loc 1 1375 0 is_stmt 0 discriminator 1
	cmpl	$0, -124(%rbp)	#, argc
	jg	.L149	#,
.L109:
	.loc 1 1698 0 is_stmt 1
	movzbl	PL_taint_warn(%rip), %eax	# PL_taint_warn, PL_taint_warn.289
	testb	%al, %al	# PL_taint_warn.289
	je	.L150	#,
	.loc 1 1698 0 is_stmt 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.290
	cmpb	$4, %al	#, PL_dowarn.290
	je	.L150	#,
	.loc 1 1699 0 is_stmt 1
	movl	$12, %esi	#,
	movl	$.LC39, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_compiling+80(%rip)	# D.14667, PL_compiling.cop_warnings
.L150:
	.loc 1 1702 0
	cmpq	$0, -104(%rbp)	#, scriptname
	jne	.L151	#,
	.loc 1 1703 0
	movq	-112(%rbp), %rax	# argv, tmp279
	movq	(%rax), %rax	# *argv_11, tmp280
	movq	%rax, -104(%rbp)	# tmp280, scriptname
.L151:
	.loc 1 1704 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.291
	testq	%rax, %rax	# PL_e_script.291
	je	.L152	#,
	.loc 1 1705 0
	addl	$1, -124(%rbp)	#, argc
	subq	$8, -112(%rbp)	#, argv
	.loc 1 1706 0
	movq	$.LC33, -104(%rbp)	#, scriptname
	jmp	.L153	#
.L152:
	.loc 1 1708 0
	cmpq	$0, -104(%rbp)	#, scriptname
	jne	.L153	#,
	.loc 1 1713 0
	movq	$.LC40, -104(%rbp)	#, scriptname
.L153:
	.loc 1 1716 0
	call	S_init_perllib	#
	.loc 1 1718 0
	movzbl	-127(%rbp), %eax	# dosearch, dosearch.292
	movsbl	%al, %ecx	# dosearch.292, D.14665
	movq	-104(%rbp), %rax	# scriptname, tmp281
	movq	%r12, %rdx	# sv,
	movl	%ecx, %esi	# D.14665,
	movq	%rax, %rdi	# tmp281,
	call	S_open_script	#
	.loc 1 1720 0
	movq	-104(%rbp), %rdx	# scriptname, tmp282
	movq	-80(%rbp), %rax	# validarg, tmp283
	movq	%rdx, %rsi	# tmp282,
	movq	%rax, %rdi	# tmp283,
	call	S_validate_suid	#
	.loc 1 1742 0
	movzbl	PL_doextract(%rip), %eax	# PL_doextract, PL_doextract.293
	testb	%al, %al	# PL_doextract.293
	je	.L154	#,
	.loc 1 1744 0
	call	S_find_beginning	#
	.loc 1 1745 0
	cmpq	$0, -96(%rbp)	#, cddir
	je	.L154	#,
	.loc 1 1745 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# cddir, tmp284
	movq	%rax, %rdi	# tmp284,
	call	chdir	#
	testl	%eax, %eax	# D.14665
	jns	.L154	#,
	.loc 1 1746 0 is_stmt 1
	movq	-96(%rbp), %rax	# cddir, tmp285
	movq	%rax, %rsi	# tmp285,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L154:
	.loc 1 1750 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_compcv(%rip)	# PL_compcv.294, PL_compcv
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.295
	movq	%rax, PL_main_cv(%rip)	# PL_compcv.295, PL_main_cv
	.loc 1 1751 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.296
	movl	$12, %esi	#,
	movq	%rax, %rdi	# PL_compcv.296,
	call	Perl_sv_upgrade	#
	.loc 1 1752 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.297
	movq	(%rax), %rax	# PL_compcv.297_168->sv_any, D.14673
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.298
	movq	(%rdx), %rdx	# PL_compcv.298_170->sv_any, D.14673
	movzwl	136(%rdx), %edx	# _171->xcv_flags, D.14674
	orl	$16, %edx	#, D.14674
	movw	%dx, 136(%rax)	# D.14674, _169->xcv_flags
	.loc 1 1754 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.299
	movq	(%rax), %rbx	# PL_compcv.299_174->sv_any, D.14673
	movl	$0, %edi	#,
	call	Perl_pad_new	#
	movq	%rax, 120(%rbx)	# D.14675, _175->xcv_padlist
	.loc 1 1761 0
	call	Perl_boot_core_PerlIO	#
	.loc 1 1762 0
	call	Perl_boot_core_UNIVERSAL	#
	.loc 1 1763 0
	call	Perl_boot_core_xsutils	#
	.loc 1 1765 0
	cmpq	$0, -144(%rbp)	#, xsinit
	je	.L155	#,
	.loc 1 1766 0
	movq	-144(%rbp), %rax	# xsinit, tmp286
	call	*%rax	# tmp286
.L155:
	.loc 1 1781 0
	call	S_init_predump_symbols	#
	.loc 1 1785 0
	movzbl	PL_do_undump(%rip), %eax	# PL_do_undump, PL_do_undump.300
	testb	%al, %al	# PL_do_undump.300
	jne	.L156	#,
	.loc 1 1786 0
	movq	-136(%rbp), %rdx	# env, tmp287
	movq	-112(%rbp), %rcx	# argv, tmp288
	movl	-124(%rbp), %eax	# argc, tmp289
	movq	%rcx, %rsi	# tmp288,
	movl	%eax, %edi	# tmp289,
	call	S_init_postdump_symbols	#
.L156:
	.loc 1 1792 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.301
	testl	%eax, %eax	# PL_unicode.301
	je	.L157	#,
	.loc 1 1794 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.302
	andl	$64, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L158	#,
	.loc 1 1794 0 is_stmt 0 discriminator 1
	movzbl	PL_utf8locale(%rip), %eax	# PL_utf8locale, PL_utf8locale.303
	testb	%al, %al	# PL_utf8locale.303
	je	.L157	#,
.L158:
.LBB18:
	.loc 1 1801 0 is_stmt 1
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.304
	andl	$1, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L159	#,
	.loc 1 1801 0 is_stmt 0 discriminator 1
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.305
	testq	%rax, %rax	# PL_stdingv.305
	je	.L159	#,
	.loc 1 1802 0 is_stmt 1
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.307
	testq	%rax, %rax	# PL_stdingv.307
	je	.L160	#,
	.loc 1 1802 0 is_stmt 0 discriminator 1
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.308
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_stdingv.308_188].sv_flags, D.14670
	movzbl	%al, %eax	# D.14670, D.14670
	cmpl	$13, %eax	#, D.14670
	jne	.L160	#,
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.309
	movq	(%rax), %rax	# PL_stdingv.309_191->sv_any, D.14676
	movq	56(%rax), %rax	# _192->xgv_gp, D.14677
	testq	%rax, %rax	# D.14677
	je	.L160	#,
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.310
	movq	(%rax), %rax	# PL_stdingv.310_194->sv_any, D.14676
	movq	56(%rax), %rax	# _195->xgv_gp, D.14677
	movq	16(%rax), %rax	# _196->gp_io, iftmp.306
	jmp	.L161	#
.L160:
	.loc 1 1802 0 discriminator 2
	movl	$0, %eax	#, iftmp.306
.L161:
	.loc 1 1802 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.306, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L159	#,
	.loc 1 1803 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp290
	movq	(%rax), %rax	# io_199->sv_any, D.14678
	movq	56(%rax), %rax	# _200->xio_ifp, tmp291
	movq	%rax, -32(%rbp)	# tmp291, fp
	.loc 1 1802 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, fp
	je	.L159	#,
	.loc 1 1804 0
	movq	-40(%rbp), %rax	# io, tmp292
	movq	(%rax), %rax	# io_199->sv_any, D.14678
	movzbl	162(%rax), %eax	# _202->xio_type, D.14664
	movsbl	%al, %esi	# D.14664, D.14665
	movq	-32(%rbp), %rax	# fp, tmp293
	movl	$.LC42, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp293,
	call	PerlIO_binmode	#
.L159:
	.loc 1 1805 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.311
	andl	$2, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L162	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.312
	testq	%rax, %rax	# PL_defoutgv.312
	je	.L162	#,
	.loc 1 1806 0 is_stmt 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.314
	testq	%rax, %rax	# PL_defoutgv.314
	je	.L163	#,
	.loc 1 1806 0 is_stmt 0 discriminator 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.315
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_defoutgv.315_209].sv_flags, D.14670
	movzbl	%al, %eax	# D.14670, D.14670
	cmpl	$13, %eax	#, D.14670
	jne	.L163	#,
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.316
	movq	(%rax), %rax	# PL_defoutgv.316_212->sv_any, D.14676
	movq	56(%rax), %rax	# _213->xgv_gp, D.14677
	testq	%rax, %rax	# D.14677
	je	.L163	#,
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.317
	movq	(%rax), %rax	# PL_defoutgv.317_215->sv_any, D.14676
	movq	56(%rax), %rax	# _216->xgv_gp, D.14677
	movq	16(%rax), %rax	# _217->gp_io, iftmp.313
	jmp	.L164	#
.L163:
	.loc 1 1806 0 discriminator 2
	movl	$0, %eax	#, iftmp.313
.L164:
	.loc 1 1806 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.313, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L162	#,
	.loc 1 1807 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp294
	movq	(%rax), %rax	# io_220->sv_any, D.14678
	movq	64(%rax), %rax	# _221->xio_ofp, tmp295
	movq	%rax, -32(%rbp)	# tmp295, fp
	.loc 1 1806 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, fp
	je	.L162	#,
	.loc 1 1808 0
	movq	-40(%rbp), %rax	# io, tmp296
	movq	(%rax), %rax	# io_220->sv_any, D.14678
	movzbl	162(%rax), %eax	# _223->xio_type, D.14664
	movsbl	%al, %esi	# D.14664, D.14665
	movq	-32(%rbp), %rax	# fp, tmp297
	movl	$.LC42, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp297,
	call	PerlIO_binmode	#
.L162:
	.loc 1 1809 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.318
	andl	$4, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L165	#,
	.loc 1 1809 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.319
	testq	%rax, %rax	# PL_stderrgv.319
	je	.L165	#,
	.loc 1 1810 0 is_stmt 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.321
	testq	%rax, %rax	# PL_stderrgv.321
	je	.L166	#,
	.loc 1 1810 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.322
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_stderrgv.322_230].sv_flags, D.14670
	movzbl	%al, %eax	# D.14670, D.14670
	cmpl	$13, %eax	#, D.14670
	jne	.L166	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.323
	movq	(%rax), %rax	# PL_stderrgv.323_233->sv_any, D.14676
	movq	56(%rax), %rax	# _234->xgv_gp, D.14677
	testq	%rax, %rax	# D.14677
	je	.L166	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.324
	movq	(%rax), %rax	# PL_stderrgv.324_236->sv_any, D.14676
	movq	56(%rax), %rax	# _237->xgv_gp, D.14677
	movq	16(%rax), %rax	# _238->gp_io, iftmp.320
	jmp	.L167	#
.L166:
	.loc 1 1810 0 discriminator 2
	movl	$0, %eax	#, iftmp.320
.L167:
	.loc 1 1810 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.320, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L165	#,
	.loc 1 1811 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp298
	movq	(%rax), %rax	# io_241->sv_any, D.14678
	movq	64(%rax), %rax	# _242->xio_ofp, tmp299
	movq	%rax, -32(%rbp)	# tmp299, fp
	.loc 1 1810 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, fp
	je	.L165	#,
	.loc 1 1812 0
	movq	-40(%rbp), %rax	# io, tmp300
	movq	(%rax), %rax	# io_241->sv_any, D.14678
	movzbl	162(%rax), %eax	# _244->xio_type, D.14664
	movsbl	%al, %esi	# D.14664, D.14665
	movq	-32(%rbp), %rax	# fp, tmp301
	movl	$.LC42, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp301,
	call	PerlIO_binmode	#
.L165:
	.loc 1 1813 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.325
	andl	$24, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L157	#,
	.loc 1 1814 0 discriminator 1
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC43, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _249->sv_any, D.14676
	movq	56(%rax), %rax	# _250->xgv_gp, D.14677
	movq	(%rax), %rax	# _251->gp_sv, tmp302
	movq	%rax, -24(%rbp)	# tmp302, sv
	.loc 1 1813 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, sv
	je	.L157	#,
.LBB19:
	.loc 1 1815 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.326
	andl	$8, %eax	#, tmp303
	movl	%eax, -120(%rbp)	# tmp303, in
	.loc 1 1816 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.327
	andl	$16, %eax	#, tmp304
	movl	%eax, -116(%rbp)	# tmp304, out
	.loc 1 1817 0
	cmpl	$0, -120(%rbp)	#, in
	je	.L168	#,
	.loc 1 1818 0
	cmpl	$0, -116(%rbp)	#, out
	je	.L169	#,
	.loc 1 1819 0
	movq	-24(%rbp), %rax	# sv, tmp305
	movl	$11, %edx	#,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp305,
	call	Perl_sv_setpvn	#
	jmp	.L171	#
.L169:
	.loc 1 1821 0
	movq	-24(%rbp), %rax	# sv, tmp306
	movl	$6, %edx	#,
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	Perl_sv_setpvn	#
	jmp	.L171	#
.L168:
	.loc 1 1823 0
	cmpl	$0, -116(%rbp)	#, out
	je	.L171	#,
	.loc 1 1824 0
	movq	-24(%rbp), %rax	# sv, tmp307
	movl	$6, %edx	#,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp307,
	call	Perl_sv_setpvn	#
.L171:
	.loc 1 1825 0
	movq	-24(%rbp), %rax	# sv, tmp308
	movl	12(%rax), %eax	# sv_252->sv_flags, D.14670
	andl	$16384, %eax	#, D.14670
	testl	%eax, %eax	# D.14670
	je	.L157	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp309
	movq	%rax, %rdi	# tmp309,
	call	Perl_mg_set	#
.L157:
.LBE19:
.LBE18:
	.loc 1 1841 0 is_stmt 1
	call	S_init_lexer	#
	.loc 1 1845 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_259
	.loc 1 1846 0
	movl	$0, PL_error_count(%rip)	#, PL_error_count
	.loc 1 1857 0
	call	Perl_yyparse	#
	testl	%eax, %eax	# D.14665
	jne	.L172	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movl	PL_error_count(%rip), %eax	# PL_error_count, PL_error_count.328
	testl	%eax, %eax	# PL_error_count.328
	je	.L173	#,
.L172:
	.loc 1 1858 0 is_stmt 1
	movzbl	PL_minus_c(%rip), %eax	# PL_minus_c, PL_minus_c.329
	testb	%al, %al	# PL_minus_c.329
	je	.L174	#,
	.loc 1 1859 0
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.330
	movq	%rax, %rsi	# PL_origfilename.330,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L173	#
.L174:
	.loc 1 1861 0
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.331
	movq	%rax, %rsi	# PL_origfilename.331,
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L173:
	.loc 1 1866 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.332
	movl	$0, 72(%rax)	#, PL_curcop.332_265->cop_line
	.loc 1 1867 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.333
	movq	%rax, PL_curstash(%rip)	# PL_defstash.333, PL_curstash
	.loc 1 1868 0
	movb	$0, PL_preprocess(%rip)	#, PL_preprocess
	.loc 1 1869 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.334
	testq	%rax, %rax	# PL_e_script.334
	je	.L175	#,
	.loc 1 1870 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.335
	movq	%rax, %rdi	# PL_e_script.335,
	call	Perl_sv_free	#
	.loc 1 1871 0
	movq	$0, PL_e_script(%rip)	#, PL_e_script
.L175:
	.loc 1 1874 0
	movzbl	PL_do_undump(%rip), %eax	# PL_do_undump, PL_do_undump.336
	testb	%al, %al	# PL_do_undump.336
	je	.L176	#,
	.loc 1 1875 0
	call	Perl_my_unexec	#
.L176:
	.loc 1 1877 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.337
	movzbl	%al, %eax	# PL_dowarn.337, D.14665
	andl	$9, %eax	#, D.14665
	testl	%eax, %eax	# D.14665
	je	.L177	#,
	.loc 1 1878 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.338
	addq	$56, %rax	#, D.14681
	movq	%rax, %rdi	# D.14681,
	call	Perl_save_sptr	#
	.loc 1 1879 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.339
	addq	$72, %rax	#, D.14682
	movq	%rax, %rdi	# D.14682,
	call	Perl_save_I32	#
	.loc 1 1880 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.340
	movq	%rax, %rdi	# PL_defstash.340,
	call	Perl_gv_check	#
.L177:
	.loc 1 1883 0
	call	Perl_pop_scope	#
	.loc 1 1884 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.341
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.342
	cmpl	%eax, %edx	# PL_tmps_floor.342, PL_tmps_ix.341
	jle	.L178	#,
	.loc 1 1884 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L178:
	.loc 1 1893 0 is_stmt 1
	call	Perl_push_scope	#
	.loc 1 1894 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 1895 0
	movl	$0, %eax	#, D.14668
	.loc 1 1896 0
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	S_parse_body, .-S_parse_body
	.section	.rodata
.LC49:
	.string	"panic: POPSTACK\n"
.LC50:
	.string	"panic: restartop\n"
	.text
	.globl	perl_run
	.type	perl_run, @function
perl_run:
.LFB10:
	.loc 1 1908 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1910 0
	movl	$0, -256(%rbp)	#, ret
	.loc 1 1916 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp151
	movl	%eax, -252(%rbp)	# tmp151, oldscope
.LBB20:
	.loc 1 1925 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.343
	movq	%rax, -40(%rbp)	# PL_top_env.343, cur_env.je_prev
	leaq	-240(%rbp), %rax	#, tmp152
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	__sigsetjmp	#
	movl	%eax, -32(%rbp)	# D.14721, cur_env.je_ret
	leaq	-240(%rbp), %rax	#, tmp153
	movq	%rax, PL_top_env(%rip)	# tmp153, PL_top_env
	movb	$0, -28(%rbp)	#, cur_env.je_mustcatch
	movl	-32(%rbp), %eax	# cur_env.je_ret, tmp154
	movl	%eax, -256(%rbp)	# tmp154, ret
.LBE20:
	.loc 1 1927 0
	movl	-256(%rbp), %eax	# ret, ret
	cmpl	$1, %eax	#, ret
	je	.L183	#,
	cmpl	$1, %eax	#, ret
	jg	.L184	#,
	testl	%eax, %eax	# ret
	je	.L185	#,
	jmp	.L182	#
.L184:
	cmpl	$2, %eax	#, ret
	je	.L202	#,
	cmpl	$3, %eax	#, ret
	je	.L187	#,
	jmp	.L182	#
.L183:
	.loc 1 1929 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.344
	movl	$-1, 16(%rax)	#, PL_curstackinfo.344_10->si_cxix
	.loc 1 1930 0
	nop
.L185:
	.loc 1 1934 0
	movl	-252(%rbp), %eax	# oldscope, tmp156
	movl	%eax, %edi	# tmp156,
	call	S_run_body	#
	.loc 1 1938 0
	jmp	.L202	#
.L189:
	.loc 1 1939 0
	call	Perl_pop_scope	#
	jmp	.L188	#
.L202:
	.loc 1 1938 0
	nop
.L188:
	.loc 1 1938 0 is_stmt 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.345
	cmpl	-252(%rbp), %eax	# oldscope, PL_scopestack_ix.345
	jg	.L189	#,
	.loc 1 1940 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.346
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.347
	cmpl	%eax, %edx	# PL_tmps_floor.347, PL_tmps_ix.346
	jle	.L190	#,
	.loc 1 1940 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L190:
	.loc 1 1941 0 is_stmt 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.348
	movq	%rax, PL_curstash(%rip)	# PL_defstash.348, PL_curstash
	.loc 1 1942 0
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.349
	movzbl	%al, %eax	# PL_exit_flags.349, D.14721
	andl	$2, %eax	#, D.14721
	testl	%eax, %eax	# D.14721
	jne	.L191	#,
	.loc 1 1942 0 is_stmt 0 discriminator 1
	movq	PL_endav(%rip), %rax	# PL_endav, PL_endav.350
	testq	%rax, %rax	# PL_endav.350
	je	.L191	#,
	.loc 1 1943 0 is_stmt 1
	movzbl	PL_minus_c(%rip), %eax	# PL_minus_c, PL_minus_c.351
	testb	%al, %al	# PL_minus_c.351
	jne	.L191	#,
	.loc 1 1944 0
	movq	PL_endav(%rip), %rdx	# PL_endav, PL_endav.352
	movl	-252(%rbp), %eax	# oldscope, tmp157
	movq	%rdx, %rsi	# PL_endav.352,
	movl	%eax, %edi	# tmp157,
	call	Perl_call_list	#
.L191:
	.loc 1 1951 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, tmp158
	movl	%eax, -256(%rbp)	# tmp158, ret
	.loc 1 1952 0
	jmp	.L182	#
.L187:
	.loc 1 1954 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.353
	testq	%rax, %rax	# PL_restartop.353
	je	.L192	#,
	.loc 1 1955 0
	jmp	.L193	#
.L197:
	.loc 1 1955 0 is_stmt 0 discriminator 2
	movl	$-1, %edi	#,
	call	Perl_dounwind	#
.LBB21:
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.354
	movq	32(%rax), %rax	# PL_curstackinfo.354_15->si_prev, tmp159
	movq	%rax, -248(%rbp)	# tmp159, prev
	cmpq	$0, -248(%rbp)	#, prev
	jne	.L194	#,
	.loc 1 1955 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.356
	testq	%rax, %rax	# PL_stderrgv.356
	je	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.357
	movl	12(%rax), %eax	# PL_stderrgv.357_18->sv_flags, D.14722
	movzbl	%al, %eax	# D.14722, D.14722
	cmpl	$13, %eax	#, D.14722
	jne	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.358
	movq	(%rax), %rax	# PL_stderrgv.358_21->sv_any, D.14723
	movq	56(%rax), %rax	# _22->xgv_gp, D.14724
	movq	16(%rax), %rax	# _23->gp_io, D.14725
	testq	%rax, %rax	# D.14725
	je	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.359
	movq	(%rax), %rax	# PL_stderrgv.359_25->sv_any, D.14723
	movq	56(%rax), %rax	# _26->xgv_gp, D.14724
	movq	16(%rax), %rax	# _27->gp_io, D.14725
	movq	(%rax), %rax	# _28->sv_any, D.14726
	movq	64(%rax), %rax	# _29->xio_ofp, D.14727
	testq	%rax, %rax	# D.14727
	je	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.360
	movq	(%rax), %rax	# PL_stderrgv.360_31->sv_any, D.14723
	movq	56(%rax), %rax	# _32->xgv_gp, D.14724
	movq	16(%rax), %rax	# _33->gp_io, D.14725
	movq	(%rax), %rax	# _34->sv_any, D.14726
	movq	64(%rax), %rax	# _35->xio_ofp, iftmp.355
	jmp	.L196	#
.L195:
	.loc 1 1955 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L196:
	.loc 1 1955 0 discriminator 3
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# iftmp.355,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L194:
.LBB22:
	.loc 1 1955 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.361
	movq	(%rax), %rax	# PL_curstack.361_38->sv_any, D.14728
	movq	%rbx, %rcx	# sp, sp.362
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.363
	subq	%rdx, %rcx	# PL_stack_base.364, D.14729
	movq	%rcx, %rdx	# D.14729, D.14729
	sarq	$3, %rdx	#, tmp160
	movq	%rdx, 8(%rax)	# D.14729, _39->xav_fill
	movq	-248(%rbp), %rax	# prev, tmp161
	movq	(%rax), %rax	# prev_16->si_stack, D.14730
	movq	(%rax), %rax	# _45->sv_any, D.14728
	movq	(%rax), %rax	# _46->xav_array, PL_stack_base.365
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.365, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.366
	movq	-248(%rbp), %rax	# prev, tmp162
	movq	(%rax), %rax	# prev_16->si_stack, D.14730
	movq	(%rax), %rax	# _49->sv_any, D.14728
	movq	16(%rax), %rax	# _50->xav_max, D.14729
	salq	$3, %rax	#, D.14731
	addq	%rdx, %rax	# PL_stack_base.366, PL_stack_max.367
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.367, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.368
	movq	-248(%rbp), %rax	# prev, tmp163
	movq	(%rax), %rax	# prev_16->si_stack, D.14730
	movq	(%rax), %rax	# _56->sv_any, D.14728
	movq	8(%rax), %rax	# _57->xav_fill, D.14729
	salq	$3, %rax	#, D.14731
	addq	%rdx, %rax	# PL_stack_base.368, PL_stack_sp.369
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.369, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-248(%rbp), %rax	# prev, tmp164
	movq	(%rax), %rax	# prev_16->si_stack, PL_curstack.370
	movq	%rax, PL_curstack(%rip)	# PL_curstack.370, PL_curstack
.LBE22:
	movq	-248(%rbp), %rax	# prev, tmp165
	movq	%rax, PL_curstackinfo(%rip)	# tmp165, PL_curstackinfo
.L193:
.LBE21:
	.loc 1 1955 0 discriminator 1
	movq	PL_curstack(%rip), %rdx	# PL_curstack, PL_curstack.371
	movq	PL_mainstack(%rip), %rax	# PL_mainstack, PL_mainstack.372
	cmpq	%rax, %rdx	# PL_mainstack.372, PL_curstack.371
	jne	.L197	#,
	.loc 1 1956 0 is_stmt 1
	jmp	.L185	#
.L192:
	.loc 1 1958 0
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.374
	testq	%rax, %rax	# PL_stderrgv.374
	je	.L198	#,
	.loc 1 1958 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.375
	movl	12(%rax), %eax	# PL_stderrgv.375_67->sv_flags, D.14722
	movzbl	%al, %eax	# D.14722, D.14722
	cmpl	$13, %eax	#, D.14722
	jne	.L198	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.376
	movq	(%rax), %rax	# PL_stderrgv.376_70->sv_any, D.14723
	movq	56(%rax), %rax	# _71->xgv_gp, D.14724
	movq	16(%rax), %rax	# _72->gp_io, D.14725
	testq	%rax, %rax	# D.14725
	je	.L198	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.377
	movq	(%rax), %rax	# PL_stderrgv.377_74->sv_any, D.14723
	movq	56(%rax), %rax	# _75->xgv_gp, D.14724
	movq	16(%rax), %rax	# _76->gp_io, D.14725
	movq	(%rax), %rax	# _77->sv_any, D.14726
	movq	64(%rax), %rax	# _78->xio_ofp, D.14727
	testq	%rax, %rax	# D.14727
	je	.L198	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.378
	movq	(%rax), %rax	# PL_stderrgv.378_80->sv_any, D.14723
	movq	56(%rax), %rax	# _81->xgv_gp, D.14724
	movq	16(%rax), %rax	# _82->gp_io, D.14725
	movq	(%rax), %rax	# _83->sv_any, D.14726
	movq	64(%rax), %rax	# _84->xio_ofp, iftmp.373
	jmp	.L199	#
.L198:
	.loc 1 1958 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L199:
	.loc 1 1958 0 discriminator 3
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# iftmp.373,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1959 0 is_stmt 1 discriminator 3
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.379
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.380
	cmpl	%eax, %edx	# PL_tmps_floor.380, PL_tmps_ix.379
	jle	.L200	#,
	.loc 1 1959 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L200:
	.loc 1 1960 0 is_stmt 1
	movl	$1, -256(%rbp)	#, ret
	.loc 1 1961 0
	nop
.L182:
	.loc 1 1964 0
	movq	-40(%rbp), %rax	# cur_env.je_prev, PL_top_env.381
	movq	%rax, PL_top_env(%rip)	# PL_top_env.381, PL_top_env
	.loc 1 1965 0
	movl	-256(%rbp), %eax	# ret, D.14721
	.loc 1 1966 0
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	perl_run, .-perl_run
	.section	.rodata
.LC51:
	.string	"%s syntax OK\n"
	.text
	.type	S_run_body, @function
S_run_body:
.LFB11:
	.loc 1 1981 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# oldscope, oldscope
	.loc 1 1985 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.382
	testq	%rax, %rax	# PL_restartop.382
	jne	.L204	#,
	.loc 1 1991 0
	movzbl	PL_minus_c(%rip), %eax	# PL_minus_c, PL_minus_c.383
	testb	%al, %al	# PL_minus_c.383
	je	.L205	#,
	.loc 1 1997 0
	movq	PL_origfilename(%rip), %rbx	# PL_origfilename, PL_origfilename.384
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.386
	testq	%rax, %rax	# PL_stderrgv.386
	je	.L206	#,
	.loc 1 1997 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.387
	movl	12(%rax), %eax	# PL_stderrgv.387_6->sv_flags, D.14736
	movzbl	%al, %eax	# D.14736, D.14736
	cmpl	$13, %eax	#, D.14736
	jne	.L206	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.388
	movq	(%rax), %rax	# PL_stderrgv.388_9->sv_any, D.14737
	movq	56(%rax), %rax	# _10->xgv_gp, D.14738
	movq	16(%rax), %rax	# _11->gp_io, D.14739
	testq	%rax, %rax	# D.14739
	je	.L206	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.389
	movq	(%rax), %rax	# PL_stderrgv.389_13->sv_any, D.14737
	movq	56(%rax), %rax	# _14->xgv_gp, D.14738
	movq	16(%rax), %rax	# _15->gp_io, D.14739
	movq	(%rax), %rax	# _16->sv_any, D.14740
	movq	64(%rax), %rax	# _17->xio_ofp, D.14741
	testq	%rax, %rax	# D.14741
	je	.L206	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.390
	movq	(%rax), %rax	# PL_stderrgv.390_19->sv_any, D.14737
	movq	56(%rax), %rax	# _20->xgv_gp, D.14738
	movq	16(%rax), %rax	# _21->gp_io, D.14739
	movq	(%rax), %rax	# _22->sv_any, D.14740
	movq	64(%rax), %rax	# _23->xio_ofp, iftmp.385
	jmp	.L207	#
.L206:
	.loc 1 1997 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L207:
	.loc 1 1997 0 discriminator 3
	movq	%rbx, %rdx	# PL_origfilename.384,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# iftmp.385,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1999 0 is_stmt 1 discriminator 3
	movl	$0, %edi	#,
	call	Perl_my_exit	#
.L205:
	.loc 1 2001 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.391
	testl	%eax, %eax	# PL_perldb.391
	je	.L208	#,
	.loc 1 2001 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.392
	andl	$32, %eax	#, D.14736
	testl	%eax, %eax	# D.14736
	je	.L208	#,
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.393
	testq	%rax, %rax	# PL_DBsingle.393
	je	.L208	#,
	.loc 1 2002 0 is_stmt 1
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.394
	movl	$1, %esi	#,
	movq	%rax, %rdi	# PL_DBsingle.394,
	call	Perl_sv_setiv	#
.L208:
	.loc 1 2003 0
	movq	PL_initav(%rip), %rax	# PL_initav, PL_initav.395
	testq	%rax, %rax	# PL_initav.395
	je	.L204	#,
	.loc 1 2004 0
	movq	PL_initav(%rip), %rdx	# PL_initav, PL_initav.396
	movl	-20(%rbp), %eax	# oldscope, tmp99
	movq	%rdx, %rsi	# PL_initav.396,
	movl	%eax, %edi	# tmp99,
	call	Perl_call_list	#
.L204:
	.loc 1 2009 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.397
	testq	%rax, %rax	# PL_restartop.397
	je	.L209	#,
	.loc 1 2010 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.398
	movq	%rax, PL_op(%rip)	# PL_restartop.398, PL_op
	.loc 1 2011 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 2012 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.399
	call	*%rax	# PL_runops.399
	jmp	.L210	#
.L209:
	.loc 1 2014 0
	movq	PL_main_start(%rip), %rax	# PL_main_start, PL_main_start.400
	testq	%rax, %rax	# PL_main_start.400
	je	.L210	#,
	.loc 1 2015 0
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.401
	movq	(%rax), %rax	# PL_main_cv.401_38->sv_any, D.14742
	movq	$1, 112(%rax)	#, _39->xcv_depth
	.loc 1 2016 0
	movq	PL_main_start(%rip), %rax	# PL_main_start, PL_main_start.402
	movq	%rax, PL_op(%rip)	# PL_main_start.402, PL_op
	.loc 1 2017 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.403
	call	*%rax	# PL_runops.403
.L210:
	.loc 1 2020 0
	movl	$0, %edi	#,
	call	Perl_my_exit	#
	.loc 1 2022 0
	movl	$0, %eax	#, D.14743
	.loc 1 2023 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	S_run_body, .-S_run_body
	.globl	Perl_get_sv
	.type	Perl_get_sv, @function
Perl_get_sv:
.LFB12:
	.loc 1 2039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# create, create
	.loc 1 2048 0
	movl	-28(%rbp), %ecx	# create, tmp63
	movq	-24(%rbp), %rax	# name, tmp64
	movl	$4, %edx	#,
	movl	%ecx, %esi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	Perl_gv_fetchpv	#
	movq	%rax, -8(%rbp)	# tmp65, gv
	.loc 1 2049 0
	cmpq	$0, -8(%rbp)	#, gv
	je	.L213	#,
	.loc 1 2050 0
	movq	-8(%rbp), %rax	# gv, tmp66
	movq	(%rax), %rax	# gv_4->sv_any, D.14746
	movq	56(%rax), %rax	# _5->xgv_gp, D.14747
	movq	(%rax), %rax	# _6->gp_sv, D.14745
	jmp	.L214	#
.L213:
	.loc 1 2051 0
	movl	$0, %eax	#, D.14745
.L214:
	.loc 1 2052 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_get_sv, .-Perl_get_sv
	.globl	Perl_get_av
	.type	Perl_get_av, @function
Perl_get_av:
.LFB13:
	.loc 1 2068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# create, create
	.loc 1 2069 0
	movl	-28(%rbp), %ecx	# create, tmp72
	movq	-24(%rbp), %rax	# name, tmp73
	movl	$10, %edx	#,
	movl	%ecx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	Perl_gv_fetchpv	#
	movq	%rax, -8(%rbp)	# tmp74, gv
	.loc 1 2070 0
	cmpl	$0, -28(%rbp)	#, create
	je	.L216	#,
	.loc 1 2071 0
	movq	-8(%rbp), %rax	# gv, tmp75
	movq	(%rax), %rax	# gv_5->sv_any, D.14749
	movq	56(%rax), %rax	# _6->xgv_gp, D.14750
	movq	32(%rax), %rax	# _7->gp_av, D.14748
	testq	%rax, %rax	# D.14748
	je	.L217	#,
	.loc 1 2071 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gv, tmp76
	movq	(%rax), %rax	# gv_5->sv_any, D.14749
	movq	56(%rax), %rax	# _9->xgv_gp, D.14750
	movq	32(%rax), %rax	# _10->gp_av, iftmp.404
	jmp	.L218	#
.L217:
	.loc 1 2071 0 discriminator 2
	movq	-8(%rbp), %rax	# gv, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _12->sv_any, D.14749
	movq	56(%rax), %rax	# _13->xgv_gp, D.14750
	movq	32(%rax), %rax	# _14->gp_av, iftmp.404
.L218:
	.loc 1 2071 0 discriminator 3
	jmp	.L219	#
.L216:
	.loc 1 2072 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, gv
	je	.L220	#,
	.loc 1 2073 0
	movq	-8(%rbp), %rax	# gv, tmp78
	movq	(%rax), %rax	# gv_5->sv_any, D.14749
	movq	56(%rax), %rax	# _17->xgv_gp, D.14750
	movq	32(%rax), %rax	# _18->gp_av, D.14748
	jmp	.L219	#
.L220:
	.loc 1 2074 0
	movl	$0, %eax	#, D.14748
.L219:
	.loc 1 2075 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_get_av, .-Perl_get_av
	.globl	Perl_get_hv
	.type	Perl_get_hv, @function
Perl_get_hv:
.LFB14:
	.loc 1 2091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# create, create
	.loc 1 2092 0
	movl	-28(%rbp), %ecx	# create, tmp72
	movq	-24(%rbp), %rax	# name, tmp73
	movl	$11, %edx	#,
	movl	%ecx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	Perl_gv_fetchpv	#
	movq	%rax, -8(%rbp)	# tmp74, gv
	.loc 1 2093 0
	cmpl	$0, -28(%rbp)	#, create
	je	.L222	#,
	.loc 1 2094 0
	movq	-8(%rbp), %rax	# gv, tmp75
	movq	(%rax), %rax	# gv_5->sv_any, D.14753
	movq	56(%rax), %rax	# _6->xgv_gp, D.14754
	movq	40(%rax), %rax	# _7->gp_hv, D.14752
	testq	%rax, %rax	# D.14752
	je	.L223	#,
	.loc 1 2094 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gv, tmp76
	movq	(%rax), %rax	# gv_5->sv_any, D.14753
	movq	56(%rax), %rax	# _9->xgv_gp, D.14754
	movq	40(%rax), %rax	# _10->gp_hv, iftmp.405
	jmp	.L224	#
.L223:
	.loc 1 2094 0 discriminator 2
	movq	-8(%rbp), %rax	# gv, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _12->sv_any, D.14753
	movq	56(%rax), %rax	# _13->xgv_gp, D.14754
	movq	40(%rax), %rax	# _14->gp_hv, iftmp.405
.L224:
	.loc 1 2094 0 discriminator 3
	jmp	.L225	#
.L222:
	.loc 1 2095 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, gv
	je	.L226	#,
	.loc 1 2096 0
	movq	-8(%rbp), %rax	# gv, tmp78
	movq	(%rax), %rax	# gv_5->sv_any, D.14753
	movq	56(%rax), %rax	# _17->xgv_gp, D.14754
	movq	40(%rax), %rax	# _18->gp_hv, D.14752
	jmp	.L225	#
.L226:
	.loc 1 2097 0
	movl	$0, %eax	#, D.14752
.L225:
	.loc 1 2098 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_get_hv, .-Perl_get_hv
	.globl	Perl_get_cv
	.type	Perl_get_cv, @function
Perl_get_cv:
.LFB15:
	.loc 1 2115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# name, name
	movl	%esi, -44(%rbp)	# create, create
	.loc 1 2116 0
	movl	-44(%rbp), %ecx	# create, tmp76
	movq	-40(%rbp), %rax	# name, tmp77
	movl	$12, %edx	#,
	movl	%ecx, %esi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp78, gv
	.loc 1 2121 0
	cmpl	$0, -44(%rbp)	#, create
	je	.L228	#,
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp79
	movq	(%rax), %rax	# gv_5->sv_any, D.14757
	movq	56(%rax), %rax	# _6->xgv_gp, D.14758
	movl	64(%rax), %eax	# _7->gp_cvgen, D.14759
	testl	%eax, %eax	# D.14759
	jne	.L229	#,
	movq	-24(%rbp), %rax	# gv, tmp80
	movq	(%rax), %rax	# gv_5->sv_any, D.14757
	movq	56(%rax), %rax	# _9->xgv_gp, D.14758
	movq	56(%rax), %rax	# _10->gp_cv, D.14756
	testq	%rax, %rax	# D.14756
	jne	.L228	#,
.L229:
	.loc 1 2122 0 is_stmt 1
	movq	-40(%rbp), %rax	# name, tmp81
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	Perl_newSVpv	#
	movq	%rax, %rdx	# D.14760,
	movl	$0, %esi	#,
	movl	$5, %edi	#,
	call	Perl_newSVOP	#
	movq	%rax, %rbx	#, D.14761
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	Perl_start_subparse	#
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# D.14761,
	movl	%eax, %edi	# D.14762,
	call	Perl_newSUB	#
	jmp	.L230	#
.L228:
	.loc 1 2126 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L231	#,
	.loc 1 2127 0
	movq	-24(%rbp), %rax	# gv, tmp82
	movq	(%rax), %rax	# gv_5->sv_any, D.14757
	movq	56(%rax), %rax	# _16->xgv_gp, D.14758
	movl	64(%rax), %eax	# _17->gp_cvgen, D.14759
	testl	%eax, %eax	# D.14759
	jne	.L232	#,
	.loc 1 2127 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp83
	movq	(%rax), %rax	# gv_5->sv_any, D.14757
	movq	56(%rax), %rax	# _19->xgv_gp, D.14758
	movq	56(%rax), %rax	# _20->gp_cv, iftmp.406
	jmp	.L233	#
.L232:
	.loc 1 2127 0 discriminator 2
	movl	$0, %eax	#, iftmp.406
.L233:
	.loc 1 2127 0 discriminator 3
	jmp	.L230	#
.L231:
	.loc 1 2128 0 is_stmt 1
	movl	$0, %eax	#, D.14756
.L230:
	.loc 1 2129 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_get_cv, .-Perl_get_cv
	.globl	Perl_call_argv
	.type	Perl_call_argv, @function
Perl_call_argv:
.LFB16:
	.loc 1 2149 0
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
	movq	%rdi, -24(%rbp)	# sub_name, sub_name
	movl	%esi, -28(%rbp)	# flags, flags
	movq	%rdx, %r12	# argv, argv
	.loc 1 2150 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB23:
	.loc 1 2152 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.407
	addq	$4, %rax	#, PL_markstack_ptr.408
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.408, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.409
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.410
	cmpq	%rax, %rdx	# PL_markstack_max.410, PL_markstack_ptr.409
	jne	.L235	#,
	.loc 1 2152 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L235:
	.loc 1 2152 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.411
	movq	%rbx, %rcx	# sp, sp.412
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.413
	subq	%rdx, %rcx	# PL_stack_base.414, D.14763
	movq	%rcx, %rdx	# D.14763, D.14763
	sarq	$3, %rdx	#, tmp84
	movl	%edx, (%rax)	# D.14764, *PL_markstack_ptr.411_9
.LBE23:
	.loc 1 2153 0 is_stmt 1 discriminator 2
	testq	%r12, %r12	# argv
	je	.L236	#,
	.loc 1 2154 0
	jmp	.L237	#
.L239:
.LBB24:
	.loc 1 2155 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.415
	movq	%rax, %rdx	# PL_stack_max.415, PL_stack_max.416
	movq	%rbx, %rax	# sp, sp.417
	subq	%rax, %rdx	# sp.417, D.14763
	movq	%rdx, %rax	# D.14763, D.14763
	cmpq	$7, %rax	#, D.14763
	jg	.L238	#,
	.loc 1 2155 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L238:
	.loc 1 2155 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	(%r12), %rax	# *argv_1, D.14766
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14766,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.14767,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.14767, *sp_24
.LBE24:
	.loc 1 2156 0 is_stmt 1 discriminator 2
	addq	$8, %r12	#, argv
.L237:
	.loc 1 2154 0 discriminator 1
	movq	(%r12), %rax	# *argv_1, D.14766
	testq	%rax, %rax	# D.14766
	jne	.L239	#,
	.loc 1 2158 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
.L236:
	.loc 1 2160 0
	movl	-28(%rbp), %edx	# flags, tmp85
	movq	-24(%rbp), %rax	# sub_name, tmp86
	movl	%edx, %esi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	Perl_call_pv	#
	.loc 1 2161 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_call_argv, .-Perl_call_argv
	.globl	Perl_call_pv
	.type	Perl_call_pv, @function
Perl_call_pv:
.LFB17:
	.loc 1 2175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sub_name, sub_name
	movl	%esi, -12(%rbp)	# flags, flags
	.loc 1 2176 0
	movq	-8(%rbp), %rax	# sub_name, tmp62
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	Perl_get_cv	#
	movl	-12(%rbp), %edx	# flags, tmp63
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# D.14768,
	call	Perl_call_sv	#
	.loc 1 2177 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_call_pv, .-Perl_call_pv
	.globl	Perl_call_method
	.type	Perl_call_method, @function
Perl_call_method:
.LFB18:
	.loc 1 2192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# methname, methname
	movl	%esi, -28(%rbp)	# flags, flags
	.loc 1 2193 0
	movl	-28(%rbp), %eax	# flags, tmp64
	orl	$64, %eax	#, D.14770
	movl	%eax, %ebx	# D.14770, D.14770
	movq	-24(%rbp), %rax	# methname, tmp65
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.14771,
	call	Perl_sv_2mortal	#
	movl	%ebx, %esi	# D.14770,
	movq	%rax, %rdi	# D.14771,
	call	Perl_call_sv	#
	.loc 1 2194 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_call_method, .-Perl_call_method
	.section	.rodata
.LC52:
	.string	"Callback called exit"
	.text
	.globl	Perl_call_sv
	.type	Perl_call_sv, @function
Perl_call_sv:
.LFB19:
	.loc 1 2209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$424, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -424(%rbp)	# sv, sv
	movl	%esi, -428(%rbp)	# flags, flags
	.loc 1 2210 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2214 0
	movl	$0, -404(%rbp)	#, retval
	.loc 1 2216 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.418
	movzbl	212(%rax), %eax	# PL_top_env.418_7->je_mustcatch, tmp266
	movb	%al, -405(%rbp)	# tmp266, oldcatch
	.loc 1 2218 0
	movq	PL_op(%rip), %rax	# PL_op, tmp267
	movq	%rax, -376(%rbp)	# tmp267, oldop
	.loc 1 2221 0
	movl	-428(%rbp), %eax	# flags, tmp268
	andl	$2, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	je	.L246	#,
	.loc 1 2222 0
	call	Perl_push_scope	#
	.loc 1 2223 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.419
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.419, PL_tmps_floor
.L246:
	.loc 1 2226 0
	leaq	-304(%rbp), %rax	#, tmp269
	movl	$56, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	memset	#
	.loc 1 2227 0
	movq	$0, -304(%rbp)	#, myop.op_next
	.loc 1 2228 0
	movl	-428(%rbp), %eax	# flags, tmp270
	andl	$8, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L247	#,
	.loc 1 2229 0
	movzbl	-268(%rbp), %eax	# myop.op_flags, D.14774
	orl	$64, %eax	#, D.14774
	movb	%al, -268(%rbp)	# D.14774, myop.op_flags
.L247:
	.loc 1 2230 0
	movzbl	-268(%rbp), %eax	# myop.op_flags, D.14774
	movl	%eax, %edx	# D.14774, D.14775
	movl	-428(%rbp), %eax	# flags, tmp271
	andl	$128, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L248	#,
	.loc 1 2231 0 discriminator 1
	movl	-428(%rbp), %eax	# flags, tmp272
	andl	$1, %eax	#, D.14773
	.loc 1 2230 0 discriminator 1
	testl	%eax, %eax	# D.14773
	je	.L249	#,
	.loc 1 2230 0 is_stmt 0 discriminator 3
	movl	$3, %eax	#, iftmp.421
	jmp	.L251	#
.L249:
	.loc 1 2230 0 discriminator 4
	movl	$2, %eax	#, iftmp.421
	jmp	.L251	#
.L248:
	.loc 1 2230 0 discriminator 2
	movl	$1, %eax	#, iftmp.420
.L251:
	.loc 1 2230 0 discriminator 5
	orl	%edx, %eax	# D.14775, D.14775
	movb	%al, -268(%rbp)	# D.14774, myop.op_flags
	.loc 1 2233 0 is_stmt 1 discriminator 5
	call	Perl_save_op	#
	.loc 1 2234 0 discriminator 5
	leaq	-304(%rbp), %rax	#, tmp273
	movq	%rax, PL_op(%rip)	# tmp273, PL_op
	.loc 1 2236 0 discriminator 5
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.422
	movq	%rax, %rdx	# PL_stack_max.422, PL_stack_max.423
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.424
	subq	%rax, %rdx	# PL_stack_sp.425, D.14776
	movq	%rdx, %rax	# D.14776, D.14776
	cmpq	$7, %rax	#, D.14776
	jg	.L252	#,
	.loc 1 2236 0 is_stmt 0 discriminator 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.426
	movl	$1, %edx	#,
	movq	%rax, %rsi	# PL_stack_sp.426,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L252:
	.loc 1 2237 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.427
	addq	$8, %rax	#, PL_stack_sp.428
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.428, PL_stack_sp
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.429
	movq	-424(%rbp), %rdx	# sv, tmp274
	movq	%rdx, (%rax)	# tmp274, *PL_stack_sp.429_35
	.loc 1 2238 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.430
	movl	(%rax), %eax	# *PL_markstack_ptr.430_37, tmp275
	movl	%eax, -400(%rbp)	# tmp275, oldmark
	.loc 1 2239 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp276
	movl	%eax, -396(%rbp)	# tmp276, oldscope
	.loc 1 2241 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.431
	testl	%eax, %eax	# PL_perldb.431
	je	.L253	#,
	.loc 1 2241 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.432
	andl	$1, %eax	#, D.14777
	testl	%eax, %eax	# D.14777
	je	.L253	#,
	movq	PL_curstash(%rip), %rdx	# PL_curstash, PL_curstash.433
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.434
	cmpq	%rax, %rdx	# PL_debstash.434, PL_curstash.433
	je	.L253	#,
	.loc 1 2243 0 is_stmt 1
	movq	PL_DBcv(%rip), %rax	# PL_DBcv, PL_DBcv.435
	testq	%rax, %rax	# PL_DBcv.435
	jne	.L254	#,
	.loc 1 2243 0 is_stmt 0 discriminator 1
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.436
	movq	(%rax), %rax	# PL_DBsub.436_46->sv_any, D.14778
	movq	56(%rax), %rax	# _47->xgv_gp, D.14779
	movq	56(%rax), %rax	# _48->gp_cv, PL_DBcv.437
	movq	%rax, PL_DBcv(%rip)	# PL_DBcv.437, PL_DBcv
	movq	PL_DBcv(%rip), %rax	# PL_DBcv, PL_DBcv.438
	testq	%rax, %rax	# PL_DBcv.438
	je	.L253	#,
.L254:
	.loc 1 2246 0 is_stmt 1
	movq	-424(%rbp), %rax	# sv, tmp277
	movl	12(%rax), %eax	# sv_36(D)->sv_flags, D.14777
	movzbl	%al, %eax	# D.14777, D.14777
	cmpl	$12, %eax	#, D.14777
	jne	.L255	#,
	.loc 1 2246 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# sv, tmp278
	movq	(%rax), %rax	# MEM[(struct CV *)sv_36(D)].sv_any, D.14780
	movq	56(%rax), %rdx	# _53->xcv_stash, D.14781
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.439
	cmpq	%rax, %rdx	# PL_debstash.439, D.14781
	je	.L253	#,
.L255:
	.loc 1 2247 0 is_stmt 1
	movl	-428(%rbp), %eax	# flags, tmp279
	andl	$32, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L253	#,
	.loc 1 2248 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.440
	movq	PL_op(%rip), %rdx	# PL_op, PL_op.441
	movzbl	37(%rdx), %edx	# PL_op.441_58->op_private, D.14774
	orl	$16, %edx	#, D.14774
	movb	%dl, 37(%rax)	# D.14774, PL_op.440_57->op_private
.L253:
	.loc 1 2250 0
	movl	-428(%rbp), %eax	# flags, tmp280
	andl	$64, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	je	.L256	#,
	.loc 1 2251 0
	leaq	-352(%rbp), %rax	#, tmp281
	movl	$48, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp281,
	call	memset	#
	.loc 1 2252 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.442
	movq	%rax, -352(%rbp)	# PL_op.442, method_op.op_next
	.loc 1 2253 0
	movq	PL_ppaddr+1320(%rip), %rax	# PL_ppaddr, D.14782
	movq	%rax, -336(%rbp)	# D.14782, method_op.op_ppaddr
	.loc 1 2254 0
	movq	PL_ppaddr+1328(%rip), %rax	# PL_ppaddr, D.14782
	movq	%rax, -288(%rbp)	# D.14782, myop.op_ppaddr
	.loc 1 2255 0
	leaq	-352(%rbp), %rax	#, tmp282
	movq	%rax, PL_op(%rip)	# tmp282, PL_op
.L256:
	.loc 1 2258 0
	movl	-428(%rbp), %eax	# flags, tmp283
	andl	$4, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L257	#,
	.loc 1 2259 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.443
	movb	$1, 212(%rax)	#, PL_top_env.443_66->je_mustcatch
	.loc 1 2260 0
	leaq	-304(%rbp), %rax	#, tmp284
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp284,
	call	S_call_body	#
	.loc 1 2261 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.444
	movq	%rax, %rdx	# PL_stack_sp.444, PL_stack_sp.445
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.446
	movl	-400(%rbp), %ecx	# oldmark, tmp285
	movslq	%ecx, %rcx	# tmp285, D.14783
	salq	$3, %rcx	#, D.14783
	addq	%rcx, %rax	# D.14783, D.14784
	subq	%rax, %rdx	# D.14776, D.14776
	movq	%rdx, %rax	# D.14776, D.14776
	sarq	$3, %rax	#, tmp286
	movl	%eax, -404(%rbp)	# retval.447, retval
	.loc 1 2262 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.448
	movzbl	-405(%rbp), %edx	# oldcatch, tmp287
	movb	%dl, 212(%rax)	# tmp287, PL_top_env.448_77->je_mustcatch
	jmp	.L258	#
.L257:
	.loc 1 2265 0
	leaq	-304(%rbp), %rax	#, tmp288
	movq	%rax, -256(%rbp)	# tmp288, myop.op_other
	.loc 1 2266 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.449
	subq	$4, %rax	#, PL_markstack_ptr.450
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.450, PL_markstack_ptr
.LBB25:
	.loc 1 2270 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.452
	movzbl	36(%rax), %eax	# PL_op.452_80->op_flags, D.14774
	movzbl	%al, %eax	# D.14774, D.14773
	andl	$3, %eax	#, D.14773
	cmpl	$1, %eax	#, D.14773
	je	.L259	#,
	.loc 1 2270 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.454
	movzbl	36(%rax), %eax	# PL_op.454_84->op_flags, D.14774
	movzbl	%al, %eax	# D.14774, D.14773
	andl	$3, %eax	#, D.14773
	cmpl	$2, %eax	#, D.14773
	je	.L260	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.456
	movzbl	36(%rax), %eax	# PL_op.456_88->op_flags, D.14774
	movzbl	%al, %eax	# D.14774, D.14773
	andl	$3, %eax	#, D.14773
	cmpl	$3, %eax	#, D.14773
	je	.L261	#,
	call	Perl_block_gimme	#
	jmp	.L264	#
.L261:
	.loc 1 2270 0 discriminator 2
	movl	$1, %eax	#, iftmp.455
	jmp	.L264	#
.L260:
	movl	$0, %eax	#, iftmp.453
	jmp	.L264	#
.L259:
	movl	$128, %eax	#, iftmp.451
.L264:
	.loc 1 2270 0 discriminator 3
	movl	%eax, -392(%rbp)	# iftmp.451, gimme
	.loc 1 2272 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 2273 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.457
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.457, PL_tmps_floor
	.loc 1 2275 0 discriminator 3
	movl	$0, %edi	#,
	call	Perl_push_return	#
	.loc 1 2276 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.459
	movl	16(%rax), %edx	# PL_curstackinfo.459_100->si_cxix, D.14773
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.460
	movl	20(%rax), %eax	# PL_curstackinfo.460_102->si_cxmax, D.14773
	cmpl	%eax, %edx	# D.14773, D.14773
	jge	.L265	#,
	.loc 1 2276 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.461
	movl	16(%rax), %edx	# PL_curstackinfo.461_104->si_cxix, D.14773
	addl	$1, %edx	#, D.14773
	movl	%edx, 16(%rax)	# D.14773, PL_curstackinfo.461_104->si_cxix
	jmp	.L266	#
.L265:
	.loc 1 2276 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.462
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.14773, PL_curstackinfo.462_108->si_cxix
.L266:
	.loc 1 2276 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.463
	movq	8(%rax), %rcx	# PL_curstackinfo.463_111->si_cxstack, D.14785
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.464
	movl	16(%rax), %eax	# PL_curstackinfo.464_113->si_cxix, D.14773
	movslq	%eax, %rdx	# D.14773, D.14783
	movq	%rdx, %rax	# D.14783, tmp289
	salq	$3, %rax	#, tmp289
	addq	%rdx, %rax	# D.14783, tmp289
	salq	$4, %rax	#, tmp290
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$514, (%rbx)	#, cx_117->cx_type
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.465
	movq	%rax, %rdx	# PL_stack_sp.465, PL_stack_sp.466
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.467
	subq	%rax, %rdx	# PL_stack_base.468, D.14776
	movq	%rdx, %rax	# D.14776, D.14776
	sarq	$3, %rax	#, tmp291
	movl	%eax, 8(%rbx)	# D.14773, cx_117->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.469
	movq	%rax, 16(%rbx)	# PL_curcop.469, cx_117->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.470
	movq	%rax, %rdx	# PL_markstack_ptr.470, PL_markstack_ptr.471
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.472
	subq	%rax, %rdx	# PL_markstack.473, D.14776
	movq	%rdx, %rax	# D.14776, D.14776
	sarq	$2, %rax	#, tmp292
	movl	%eax, 28(%rbx)	# D.14773, cx_117->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.474
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.474, cx_117->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.475
	movl	%eax, 24(%rbx)	# PL_retstack_ix.475, cx_117->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.476
	movq	%rax, 40(%rbx)	# PL_curpm.476, cx_117->cx_u.cx_blk.blku_oldpm
	movl	-392(%rbp), %eax	# gimme, tmp293
	movb	%al, 48(%rbx)	# D.14774, cx_117->cx_u.cx_blk.blku_gimme
.LBB26:
	.loc 1 2277 0 is_stmt 1 discriminator 3
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.477
	movl	%eax, 56(%rbx)	# PL_in_eval.477, cx_117->cx_u.cx_blk.blk_u.blku_eval.old_in_eval
	movq	PL_op(%rip), %rax	# PL_op, PL_op.478
	movzwl	32(%rax), %eax	# PL_op.478_138->op_type, D.14786
	movzwl	%ax, %eax	# D.14786, D.14773
	movl	%eax, 60(%rbx)	# D.14773, cx_117->cx_u.cx_blk.blk_u.blku_eval.old_op_type
	movq	$0, 64(%rbx)	#, cx_117->cx_u.cx_blk.blk_u.blku_eval.old_namesv
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.479
	movq	%rax, 72(%rbx)	# PL_eval_root.479, cx_117->cx_u.cx_blk.blk_u.blku_eval.old_eval_root
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.480
	movq	%rax, 80(%rbx)	# PL_linestr.480, cx_117->cx_u.cx_blk.blk_u.blku_eval.cur_text
	movq	$0, 88(%rbx)	#, cx_117->cx_u.cx_blk.blk_u.blku_eval.cv
.LBE26:
	.loc 1 2278 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.481
	movq	%rax, PL_eval_root(%rip)	# PL_op.481, PL_eval_root
	.loc 1 2280 0 discriminator 3
	movl	$1, PL_in_eval(%rip)	#, PL_in_eval
	.loc 1 2281 0 discriminator 3
	movl	-428(%rbp), %eax	# flags, tmp294
	andl	$16, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	je	.L267	#,
	.loc 1 2282 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.482
	orl	$4, %eax	#, PL_in_eval.483
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.483, PL_in_eval
	jmp	.L268	#
.L267:
	.loc 1 2284 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.484
	movq	(%rax), %rax	# PL_errgv.484_148->sv_any, D.14778
	movq	56(%rax), %rax	# _149->xgv_gp, D.14779
	movq	(%rax), %rax	# _150->gp_sv, D.14788
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.14788,
	call	Perl_sv_setpv	#
.L268:
.LBE25:
	.loc 1 2286 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.485
	addq	$4, %rax	#, PL_markstack_ptr.486
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.486, PL_markstack_ptr
.LBB27:
	.loc 1 2293 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.487
	movq	%rax, -40(%rbp)	# PL_top_env.487, cur_env.je_prev
	leaq	-240(%rbp), %rax	#, tmp295
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	__sigsetjmp	#
	movl	%eax, -32(%rbp)	# D.14773, cur_env.je_ret
	leaq	-240(%rbp), %rax	#, tmp296
	movq	%rax, PL_top_env(%rip)	# tmp296, PL_top_env
	movb	$0, -28(%rbp)	#, cur_env.je_mustcatch
	movl	-32(%rbp), %eax	# cur_env.je_ret, tmp297
	movl	%eax, -388(%rbp)	# tmp297, ret
.LBE27:
	.loc 1 2295 0
	movl	-388(%rbp), %eax	# ret, ret
	cmpl	$1, %eax	#, ret
	je	.L270	#,
	cmpl	$1, %eax	#, ret
	jg	.L271	#,
	testl	%eax, %eax	# ret
	je	.L272	#,
	jmp	.L269	#
.L271:
	cmpl	$2, %eax	#, ret
	je	.L273	#,
	cmpl	$3, %eax	#, ret
	je	.L274	#,
	jmp	.L269	#
.L272:
	.loc 1 2299 0
	leaq	-304(%rbp), %rax	#, tmp299
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp299,
	call	S_call_body	#
	.loc 1 2301 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.488
	movq	%rax, %rdx	# PL_stack_sp.488, PL_stack_sp.489
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.490
	movl	-400(%rbp), %ecx	# oldmark, tmp300
	movslq	%ecx, %rcx	# tmp300, D.14783
	salq	$3, %rcx	#, D.14783
	addq	%rcx, %rax	# D.14783, D.14784
	subq	%rax, %rdx	# D.14776, D.14776
	movq	%rdx, %rax	# D.14776, D.14776
	sarq	$3, %rax	#, tmp301
	movl	%eax, -404(%rbp)	# retval.491, retval
	.loc 1 2302 0
	movl	-428(%rbp), %eax	# flags, tmp302
	andl	$16, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L275	#,
	.loc 1 2303 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.492
	movq	(%rax), %rax	# PL_errgv.492_187->sv_any, D.14778
	movq	56(%rax), %rax	# _188->xgv_gp, D.14779
	movq	(%rax), %rax	# _189->gp_sv, D.14788
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.14788,
	call	Perl_sv_setpv	#
	.loc 1 2304 0
	jmp	.L269	#
.L275:
	jmp	.L269	#
.L270:
	.loc 1 2306 0
	movl	$1, PL_statusvalue(%rip)	#, PL_statusvalue
.L273:
	.loc 1 2310 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.493
	movq	%rax, PL_curstash(%rip)	# PL_defstash.493, PL_curstash
	.loc 1 2311 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.494
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.495
	cmpl	%eax, %edx	# PL_tmps_floor.495, PL_tmps_ix.494
	jle	.L276	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L276:
	.loc 1 2312 0 is_stmt 1
	movq	-40(%rbp), %rax	# cur_env.je_prev, PL_top_env.496
	movq	%rax, PL_top_env(%rip)	# PL_top_env.496, PL_top_env
	.loc 1 2313 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.497
	testl	%eax, %eax	# PL_statusvalue.497
	je	.L277	#,
	.loc 1 2313 0 is_stmt 0 discriminator 1
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.498
	movzbl	%al, %eax	# PL_exit_flags.498, D.14773
	andl	$1, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	jne	.L277	#,
	.loc 1 2314 0 is_stmt 1
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L277:
	.loc 1 2315 0
	call	S_my_exit_jump	#
.L274:
	.loc 1 2318 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.499
	testq	%rax, %rax	# PL_restartop.499
	je	.L278	#,
	.loc 1 2319 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.500
	movq	%rax, PL_op(%rip)	# PL_restartop.500, PL_op
	.loc 1 2320 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 2321 0
	jmp	.L272	#
.L278:
	.loc 1 2323 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.501
	movl	-400(%rbp), %edx	# oldmark, tmp303
	movslq	%edx, %rdx	# tmp303, D.14783
	salq	$3, %rdx	#, D.14783
	addq	%rdx, %rax	# D.14783, PL_stack_sp.502
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.502, PL_stack_sp
	.loc 1 2324 0
	movl	-428(%rbp), %eax	# flags, tmp304
	andl	$1, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	je	.L279	#,
	.loc 1 2325 0
	movl	$0, -404(%rbp)	#, retval
	.loc 1 2330 0
	jmp	.L286	#
.L279:
	.loc 1 2327 0
	movl	$1, -404(%rbp)	#, retval
	.loc 1 2328 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.503
	addq	$8, %rax	#, PL_stack_sp.504
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.504, PL_stack_sp
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.505
	movq	$PL_sv_undef, (%rax)	#, *PL_stack_sp.505_175
.L286:
	.loc 1 2330 0
	nop
.L269:
	.loc 1 2333 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.506
	cmpl	-396(%rbp), %eax	# oldscope, PL_scopestack_ix.506
	jle	.L281	#,
.LBB28:
	.loc 1 2340 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.507
	movq	8(%rax), %rsi	# PL_curstackinfo.507_192->si_cxstack, D.14785
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.508
	movl	16(%rax), %edx	# PL_curstackinfo.508_194->si_cxix, D.14773
	leal	-1(%rdx), %ecx	#, D.14773
	movl	%ecx, 16(%rax)	# D.14773, PL_curstackinfo.508_194->si_cxix
	movslq	%edx, %rdx	# D.14773, D.14783
	movq	%rdx, %rax	# D.14783, tmp305
	salq	$3, %rax	#, tmp305
	addq	%rdx, %rax	# D.14783, tmp305
	salq	$4, %rax	#, tmp306
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.509
	movl	8(%rbx), %edx	# cx_200->cx_u.cx_blk.blku_oldsp, D.14773
	movslq	%edx, %rdx	# D.14773, D.14783
	salq	$3, %rdx	#, D.14783
	addq	%rdx, %rax	# D.14783, tmp307
	movq	%rax, -368(%rbp)	# tmp307, newsp
	movq	16(%rbx), %rax	# cx_200->cx_u.cx_blk.blku_oldcop, PL_curcop.510
	movq	%rax, PL_curcop(%rip)	# PL_curcop.510, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.511
	movl	28(%rbx), %edx	# cx_200->cx_u.cx_blk.blku_oldmarksp, D.14773
	movslq	%edx, %rdx	# D.14773, D.14783
	salq	$2, %rdx	#, D.14783
	addq	%rdx, %rax	# D.14783, PL_markstack_ptr.512
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.512, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_200->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.513
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.513, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_200->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.514
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.514, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_200->cx_u.cx_blk.blku_oldpm, tmp308
	movq	%rax, -360(%rbp)	# tmp308, newpm
	movzbl	48(%rbx), %eax	# cx_200->cx_u.cx_blk.blku_gimme, D.14774
	movzbl	%al, %eax	# D.14774, tmp309
	movl	%eax, -384(%rbp)	# tmp309, gimme
.LBB29:
	.loc 1 2341 0
	movl	56(%rbx), %eax	# cx_200->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.515
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.515, PL_in_eval
	movl	60(%rbx), %eax	# cx_200->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp310
	movl	%eax, -380(%rbp)	# tmp310, optype
	movq	72(%rbx), %rax	# cx_200->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.516
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.516, PL_eval_root
	movq	64(%rbx), %rax	# cx_200->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.14788
	testq	%rax, %rax	# D.14788
	je	.L282	#,
	.loc 1 2341 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_200->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.14788
	movq	%rax, %rdi	# D.14788,
	call	Perl_sv_2mortal	#
.L282:
.LBE29:
	.loc 1 2342 0 is_stmt 1
	call	Perl_pop_return	#
	.loc 1 2343 0
	movq	-360(%rbp), %rax	# newpm, tmp311
	movq	%rax, PL_curpm(%rip)	# tmp311, PL_curpm
	.loc 1 2344 0
	call	Perl_pop_scope	#
.L281:
.LBE28:
	.loc 1 2346 0
	movq	-40(%rbp), %rax	# cur_env.je_prev, PL_top_env.517
	movq	%rax, PL_top_env(%rip)	# PL_top_env.517, PL_top_env
.L258:
	.loc 1 2349 0
	movl	-428(%rbp), %eax	# flags, tmp312
	andl	$2, %eax	#, D.14773
	testl	%eax, %eax	# D.14773
	je	.L283	#,
	.loc 1 2350 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.518
	movl	-400(%rbp), %edx	# oldmark, tmp313
	movslq	%edx, %rdx	# tmp313, D.14783
	salq	$3, %rdx	#, D.14783
	addq	%rdx, %rax	# D.14783, PL_stack_sp.519
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.519, PL_stack_sp
	.loc 1 2351 0
	movl	$0, -404(%rbp)	#, retval
	.loc 1 2352 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.520
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.521
	cmpl	%eax, %edx	# PL_tmps_floor.521, PL_tmps_ix.520
	jle	.L284	#,
	.loc 1 2352 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L284:
	.loc 1 2353 0 is_stmt 1
	call	Perl_pop_scope	#
.L283:
	.loc 1 2355 0
	movq	-376(%rbp), %rax	# oldop, tmp314
	movq	%rax, PL_op(%rip)	# tmp314, PL_op
	.loc 1 2356 0
	movl	-404(%rbp), %eax	# retval, D.14789
	.loc 1 2357 0
	addq	$424, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_call_sv, .-Perl_call_sv
	.type	S_call_body, @function
S_call_body:
.LFB20:
	.loc 1 2373 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# myop, myop
	movl	%esi, -12(%rbp)	# is_eval, is_eval
	.loc 1 2374 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.522
	cmpq	-8(%rbp), %rax	# myop, PL_op.522
	jne	.L288	#,
	.loc 1 2375 0
	cmpl	$0, -12(%rbp)	#, is_eval
	je	.L289	#,
	.loc 1 2376 0
	call	Perl_pp_entereval	#
	movq	%rax, PL_op(%rip)	# PL_op.523, PL_op
	jmp	.L288	#
.L289:
	.loc 1 2378 0
	call	Perl_pp_entersub	#
	movq	%rax, PL_op(%rip)	# PL_op.524, PL_op
.L288:
	.loc 1 2380 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.525
	testq	%rax, %rax	# PL_op.525
	je	.L287	#,
	.loc 1 2381 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.526
	call	*%rax	# PL_runops.526
.L287:
	.loc 1 2382 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	S_call_body, .-S_call_body
	.section	.rodata
.LC53:
	.string	"eval_sv()"
	.text
	.globl	Perl_eval_sv
	.type	Perl_eval_sv, @function
Perl_eval_sv:
.LFB21:
	.loc 1 2398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# sv, sv
	movl	%esi, -332(%rbp)	# flags, flags
	.loc 1 2399 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2401 0
	movq	%rbx, %rdx	# sp, sp.527
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.528
	subq	%rax, %rdx	# PL_stack_base.529, D.14792
	movq	%rdx, %rax	# D.14792, D.14792
	sarq	$3, %rax	#, tmp140
	movl	%eax, -312(%rbp)	# oldmark.530, oldmark
	.loc 1 2402 0
	movl	$0, -308(%rbp)	#, retval
	.loc 1 2405 0
	movq	PL_op(%rip), %rax	# PL_op, tmp141
	movq	%rax, -296(%rbp)	# tmp141, oldop
	.loc 1 2408 0
	movl	-332(%rbp), %eax	# flags, tmp142
	andl	$2, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	je	.L292	#,
	.loc 1 2409 0
	call	Perl_push_scope	#
	.loc 1 2410 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.531
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.531, PL_tmps_floor
.L292:
	.loc 1 2413 0
	call	Perl_save_op	#
	.loc 1 2414 0
	leaq	-288(%rbp), %rax	#, tmp143
	movq	%rax, PL_op(%rip)	# tmp143, PL_op
	.loc 1 2415 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.532
	movl	$48, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_op.532,
	call	memset	#
	.loc 1 2416 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.533
	movq	%rax, %rdx	# PL_stack_max.533, PL_stack_max.534
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.535
	subq	%rax, %rdx	# PL_stack_sp.536, D.14792
	movq	%rdx, %rax	# D.14792, D.14792
	cmpq	$7, %rax	#, D.14792
	jg	.L293	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.537
	movl	$1, %edx	#,
	movq	%rax, %rsi	# PL_stack_sp.537,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L293:
	.loc 1 2417 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.538
	addq	$8, %rax	#, PL_stack_sp.539
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.539, PL_stack_sp
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.540
	movq	-328(%rbp), %rdx	# sv, tmp144
	movq	%rdx, (%rax)	# tmp144, *PL_stack_sp.540_24
	.loc 1 2418 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp145
	movl	%eax, -304(%rbp)	# tmp145, oldscope
	.loc 1 2420 0
	movl	-332(%rbp), %eax	# flags, tmp146
	andl	$8, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	jne	.L294	#,
	.loc 1 2421 0
	movb	$64, -252(%rbp)	#, myop.op_flags
.L294:
	.loc 1 2422 0
	movq	$0, -288(%rbp)	#, myop.op_next
	.loc 1 2423 0
	movw	$311, -256(%rbp)	#, myop.op_type
	.loc 1 2424 0
	movzbl	-252(%rbp), %eax	# myop.op_flags, D.14794
	movl	%eax, %edx	# D.14794, D.14795
	movl	-332(%rbp), %eax	# flags, tmp147
	andl	$128, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	jne	.L295	#,
	.loc 1 2425 0 discriminator 1
	movl	-332(%rbp), %eax	# flags, tmp148
	andl	$1, %eax	#, D.14793
	.loc 1 2424 0 discriminator 1
	testl	%eax, %eax	# D.14793
	je	.L296	#,
	.loc 1 2424 0 is_stmt 0 discriminator 3
	movl	$3, %eax	#, iftmp.542
	jmp	.L298	#
.L296:
	.loc 1 2424 0 discriminator 4
	movl	$2, %eax	#, iftmp.542
	jmp	.L298	#
.L295:
	.loc 1 2424 0 discriminator 2
	movl	$1, %eax	#, iftmp.541
.L298:
	.loc 1 2424 0 discriminator 5
	orl	%edx, %eax	# D.14795, D.14795
	movb	%al, -252(%rbp)	# D.14794, myop.op_flags
	.loc 1 2427 0 is_stmt 1 discriminator 5
	movl	-332(%rbp), %eax	# flags, tmp149
	andl	$16, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	je	.L299	#,
	.loc 1 2428 0
	movzbl	-252(%rbp), %eax	# myop.op_flags, D.14794
	orl	$-128, %eax	#, D.14794
	movb	%al, -252(%rbp)	# D.14794, myop.op_flags
.L299:
	.loc 1 2437 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.543
	testb	%al, %al	# PL_tainting.543
	je	.L300	#,
	.loc 1 2437 0 is_stmt 0 discriminator 1
	movl	$.LC53, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L300:
.LBB30:
	.loc 1 2439 0 is_stmt 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.544
	movq	%rax, -40(%rbp)	# PL_top_env.544, cur_env.je_prev
	leaq	-240(%rbp), %rax	#, tmp150
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	__sigsetjmp	#
	movl	%eax, -32(%rbp)	# D.14793, cur_env.je_ret
	leaq	-240(%rbp), %rax	#, tmp151
	movq	%rax, PL_top_env(%rip)	# tmp151, PL_top_env
	movb	$0, -28(%rbp)	#, cur_env.je_mustcatch
	movl	-32(%rbp), %eax	# cur_env.je_ret, tmp152
	movl	%eax, -300(%rbp)	# tmp152, ret
.LBE30:
	.loc 1 2441 0
	movl	-300(%rbp), %eax	# ret, ret
	cmpl	$1, %eax	#, ret
	je	.L302	#,
	cmpl	$1, %eax	#, ret
	jg	.L303	#,
	testl	%eax, %eax	# ret
	je	.L304	#,
	jmp	.L301	#
.L303:
	cmpl	$2, %eax	#, ret
	je	.L305	#,
	cmpl	$3, %eax	#, ret
	je	.L306	#,
	jmp	.L301	#
.L304:
	.loc 1 2445 0
	leaq	-288(%rbp), %rax	#, tmp154
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	S_call_body	#
	.loc 1 2447 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.545
	movq	%rax, %rdx	# PL_stack_sp.545, PL_stack_sp.546
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.547
	movl	-312(%rbp), %ecx	# oldmark, oldmark.548
	movslq	%ecx, %rcx	# oldmark.548, D.14796
	salq	$3, %rcx	#, D.14796
	addq	%rcx, %rax	# D.14796, D.14797
	subq	%rax, %rdx	# D.14792, D.14792
	movq	%rdx, %rax	# D.14792, D.14792
	sarq	$3, %rax	#, tmp155
	movl	%eax, -308(%rbp)	# retval.549, retval
	.loc 1 2448 0
	movl	-332(%rbp), %eax	# flags, tmp156
	andl	$16, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	jne	.L307	#,
	.loc 1 2449 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.550
	movq	(%rax), %rax	# PL_errgv.550_77->sv_any, D.14798
	movq	56(%rax), %rax	# _78->xgv_gp, D.14799
	movq	(%rax), %rax	# _79->gp_sv, D.14800
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.14800,
	call	Perl_sv_setpv	#
	.loc 1 2450 0
	jmp	.L301	#
.L307:
	jmp	.L301	#
.L302:
	.loc 1 2452 0
	movl	$1, PL_statusvalue(%rip)	#, PL_statusvalue
.L305:
	.loc 1 2456 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.551
	movq	%rax, PL_curstash(%rip)	# PL_defstash.551, PL_curstash
	.loc 1 2457 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.552
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.553
	cmpl	%eax, %edx	# PL_tmps_floor.553, PL_tmps_ix.552
	jle	.L308	#,
	.loc 1 2457 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L308:
	.loc 1 2458 0 is_stmt 1
	movq	-40(%rbp), %rax	# cur_env.je_prev, PL_top_env.554
	movq	%rax, PL_top_env(%rip)	# PL_top_env.554, PL_top_env
	.loc 1 2459 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.555
	testl	%eax, %eax	# PL_statusvalue.555
	je	.L309	#,
	.loc 1 2459 0 is_stmt 0 discriminator 1
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.556
	movzbl	%al, %eax	# PL_exit_flags.556, D.14793
	andl	$1, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	jne	.L309	#,
	.loc 1 2460 0 is_stmt 1
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L309:
	.loc 1 2461 0
	call	S_my_exit_jump	#
.L306:
	.loc 1 2464 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.557
	testq	%rax, %rax	# PL_restartop.557
	je	.L310	#,
	.loc 1 2465 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.558
	movq	%rax, PL_op(%rip)	# PL_restartop.558, PL_op
	.loc 1 2466 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 2467 0
	jmp	.L304	#
.L310:
	.loc 1 2469 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.559
	movl	-312(%rbp), %edx	# oldmark, oldmark.560
	movslq	%edx, %rdx	# oldmark.560, D.14796
	salq	$3, %rdx	#, D.14796
	addq	%rdx, %rax	# D.14796, PL_stack_sp.561
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.561, PL_stack_sp
	.loc 1 2470 0
	movl	-332(%rbp), %eax	# flags, tmp157
	andl	$1, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	je	.L311	#,
	.loc 1 2471 0
	movl	$0, -308(%rbp)	#, retval
	.loc 1 2476 0
	jmp	.L316	#
.L311:
	.loc 1 2473 0
	movl	$1, -308(%rbp)	#, retval
	.loc 1 2474 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.562
	addq	$8, %rax	#, PL_stack_sp.563
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.563, PL_stack_sp
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.564
	movq	$PL_sv_undef, (%rax)	#, *PL_stack_sp.564_64
.L316:
	.loc 1 2476 0
	nop
.L301:
	.loc 1 2479 0
	movq	-40(%rbp), %rax	# cur_env.je_prev, PL_top_env.565
	movq	%rax, PL_top_env(%rip)	# PL_top_env.565, PL_top_env
	.loc 1 2480 0
	movl	-332(%rbp), %eax	# flags, tmp158
	andl	$2, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	je	.L313	#,
	.loc 1 2481 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.566
	movl	-312(%rbp), %edx	# oldmark, oldmark.567
	movslq	%edx, %rdx	# oldmark.567, D.14796
	salq	$3, %rdx	#, D.14796
	addq	%rdx, %rax	# D.14796, PL_stack_sp.568
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.568, PL_stack_sp
	.loc 1 2482 0
	movl	$0, -308(%rbp)	#, retval
	.loc 1 2483 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.569
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.570
	cmpl	%eax, %edx	# PL_tmps_floor.570, PL_tmps_ix.569
	jle	.L314	#,
	.loc 1 2483 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L314:
	.loc 1 2484 0 is_stmt 1
	call	Perl_pop_scope	#
.L313:
	.loc 1 2486 0
	movq	-296(%rbp), %rax	# oldop, tmp159
	movq	%rax, PL_op(%rip)	# tmp159, PL_op
	.loc 1 2487 0
	movl	-308(%rbp), %eax	# retval, D.14801
	.loc 1 2488 0
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_eval_sv, .-Perl_eval_sv
	.globl	Perl_eval_pv
	.type	Perl_eval_pv, @function
Perl_eval_pv:
.LFB22:
	.loc 1 2500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# p, p
	movl	%esi, -44(%rbp)	# croak_on_error, croak_on_error
	.loc 1 2501 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2502 0
	movq	-40(%rbp), %rax	# p, tmp134
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	Perl_newSVpv	#
	movq	%rax, -24(%rbp)	# tmp135, sv
	.loc 1 2504 0
	movq	-24(%rbp), %rax	# sv, tmp136
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	Perl_eval_sv	#
	.loc 1 2505 0
	movq	-24(%rbp), %rax	# sv, tmp137
	movq	%rax, %rdi	# tmp137,
	call	Perl_sv_free	#
	.loc 1 2507 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2508 0
	movq	%rbx, %rax	# sp, sp.571
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.571_11, tmp138
	movq	%rax, -24(%rbp)	# tmp138, sv
	.loc 1 2509 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2511 0
	cmpl	$0, -44(%rbp)	#, croak_on_error
	je	.L318	#,
	.loc 1 2511 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.573
	movq	(%rax), %rax	# PL_errgv.573_15->sv_any, D.14804
	movq	56(%rax), %rax	# _16->xgv_gp, D.14805
	movq	(%rax), %rax	# _17->gp_sv, D.14806
	testq	%rax, %rax	# D.14806
	je	.L319	#,
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.575
	movq	(%rax), %rax	# PL_errgv.575_19->sv_any, D.14804
	movq	56(%rax), %rax	# _20->xgv_gp, D.14805
	movq	(%rax), %rax	# _21->gp_sv, D.14806
	movl	12(%rax), %eax	# _22->sv_flags, D.14807
	andl	$262144, %eax	#, D.14807
	testl	%eax, %eax	# D.14807
	je	.L320	#,
	.loc 1 2511 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.577
	movq	(%rax), %rax	# PL_errgv.577_25->sv_any, D.14804
	movq	56(%rax), %rax	# _26->xgv_gp, D.14805
	movq	(%rax), %rax	# _27->gp_sv, D.14806
	movq	(%rax), %rax	# _28->sv_any, PL_Xpv.578
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.578, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.579
	testq	%rax, %rax	# PL_Xpv.579
	je	.L321	#,
	.loc 1 2511 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.580
	movq	8(%rax), %rax	# PL_Xpv.580_31->xpv_cur, D.14808
	cmpq	$1, %rax	#, D.14808
	ja	.L322	#,
	.loc 1 2511 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.581
	movq	8(%rax), %rax	# PL_Xpv.581_33->xpv_cur, D.14808
	testq	%rax, %rax	# D.14808
	je	.L321	#,
	.loc 1 2511 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.582
	movq	(%rax), %rax	# PL_Xpv.582_35->xpv_pv, D.14809
	movzbl	(%rax), %eax	# *_36, D.14810
	cmpb	$48, %al	#, D.14810
	je	.L321	#,
.L322:
	.loc 1 2511 0 discriminator 7
	movl	$1, %eax	#, iftmp.576
	jmp	.L323	#
.L321:
	.loc 1 2511 0 discriminator 6
	movl	$0, %eax	#, iftmp.576
.L323:
	.loc 1 2511 0 discriminator 9
	andl	$1, %eax	#, iftmp.574
	jmp	.L329	#
.L320:
	.loc 1 2511 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.584
	movq	(%rax), %rax	# PL_errgv.584_41->sv_any, D.14804
	movq	56(%rax), %rax	# _42->xgv_gp, D.14805
	movq	(%rax), %rax	# _43->gp_sv, D.14806
	movl	12(%rax), %eax	# _44->sv_flags, D.14807
	andl	$65536, %eax	#, D.14807
	testl	%eax, %eax	# D.14807
	je	.L325	#,
	.loc 1 2511 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.585
	movq	(%rax), %rax	# PL_errgv.585_47->sv_any, D.14804
	movq	56(%rax), %rax	# _48->xgv_gp, D.14805
	movq	(%rax), %rax	# _49->gp_sv, D.14806
	movq	(%rax), %rax	# _50->sv_any, D.14811
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_51].xiv_iv, D.14812
	testq	%rax, %rax	# D.14812
	setne	%al	#, iftmp.583
	jmp	.L329	#
.L325:
	.loc 1 2511 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.587
	movq	(%rax), %rax	# PL_errgv.587_54->sv_any, D.14804
	movq	56(%rax), %rax	# _55->xgv_gp, D.14805
	movq	(%rax), %rax	# _56->gp_sv, D.14806
	movl	12(%rax), %eax	# _57->sv_flags, D.14807
	andl	$131072, %eax	#, D.14807
	testl	%eax, %eax	# D.14807
	je	.L327	#,
	.loc 1 2511 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.588
	movq	(%rax), %rax	# PL_errgv.588_60->sv_any, D.14804
	movq	56(%rax), %rax	# _61->xgv_gp, D.14805
	movq	(%rax), %rax	# _62->gp_sv, D.14806
	movq	(%rax), %rax	# _63->sv_any, D.14811
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_64].xnv_nv, D.14813
	xorpd	%xmm1, %xmm1	# tmp140
	ucomisd	%xmm1, %xmm0	# tmp140, D.14813
	setp	%dl	#, tmp139
	movl	$1, %eax	#, tmp142
	xorpd	%xmm1, %xmm1	# tmp141
	ucomisd	%xmm1, %xmm0	# tmp141, D.14813
	cmove	%edx, %eax	# tmp139,, iftmp.586
	jmp	.L329	#
.L327:
	.loc 1 2511 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.589
	movq	(%rax), %rax	# PL_errgv.589_67->sv_any, D.14804
	movq	56(%rax), %rax	# _68->xgv_gp, D.14805
	movq	(%rax), %rax	# _69->gp_sv, D.14806
	movq	%rax, %rdi	# D.14806,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.14810
	setne	%al	#, iftmp.586
	jmp	.L329	#
.L319:
	.loc 1 2511 0 discriminator 2
	movl	$0, %eax	#, iftmp.572
.L329:
	.loc 1 2511 0 discriminator 16
	testb	%al, %al	# iftmp.572
	je	.L318	#,
.LBB31:
	.loc 1 2513 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.590
	movq	(%rax), %rax	# PL_errgv.590_77->sv_any, D.14804
	movq	56(%rax), %rax	# _78->xgv_gp, D.14805
	movq	(%rax), %rax	# _79->gp_sv, PL_Sv.591
	movq	%rax, PL_Sv(%rip)	# PL_Sv.591, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.593
	movl	12(%rax), %eax	# PL_Sv.593_81->sv_flags, D.14807
	andl	$262144, %eax	#, D.14807
	testl	%eax, %eax	# D.14807
	je	.L330	#,
	.loc 1 2513 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.594
	movq	(%rax), %rax	# PL_Sv.594_84->sv_any, D.14811
	movq	8(%rax), %rax	# MEM[(struct XPV *)_85].xpv_cur, n_a.595
	movq	%rax, -32(%rbp)	# n_a.595, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.596
	movq	(%rax), %rax	# PL_Sv.596_87->sv_any, D.14811
	movq	(%rax), %rax	# MEM[(struct XPV *)_88].xpv_pv, iftmp.592
	jmp	.L331	#
.L330:
	.loc 1 2513 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.597
	leaq	-32(%rbp), %rcx	#, tmp143
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# PL_Sv.597,
	call	Perl_sv_2pv_flags	#
.L331:
	.loc 1 2513 0 discriminator 1
	movq	%rax, %rdi	# iftmp.592,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L318:
.LBE31:
	.loc 1 2516 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.14806
	.loc 1 2517 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_eval_pv, .-Perl_eval_pv
	.section	.rodata
.LC55:
	.string	"require '"
.LC56:
	.string	"'"
	.text
	.globl	Perl_require_pv
	.type	Perl_require_pv, @function
Perl_require_pv:
.LFB23:
	.loc 1 2534 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pv, pv
	.loc 1 2536 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB32:
	.loc 1 2537 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.598
	movq	40(%rax), %rax	# PL_curstackinfo.598_4->si_next, tmp140
	movq	%rax, -40(%rbp)	# tmp140, next
	cmpq	$0, -40(%rbp)	#, next
	jne	.L334	#,
	.loc 1 2537 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -40(%rbp)	# tmp141, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.599
	movq	-40(%rbp), %rax	# next, tmp142
	movq	%rdx, 32(%rax)	# PL_curstackinfo.599, next_6->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.600
	movq	-40(%rbp), %rdx	# next, tmp143
	movq	%rdx, 40(%rax)	# tmp143, PL_curstackinfo.600_8->si_next
.L334:
	.loc 1 2537 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp144
	movl	$9, 24(%rax)	#, next_1->si_type
	movq	-40(%rbp), %rax	# next, tmp145
	movl	$-1, 16(%rax)	#, next_1->si_cxix
	movq	-40(%rbp), %rax	# next, tmp146
	movq	(%rax), %rax	# next_1->si_stack, D.14814
	movq	(%rax), %rax	# _9->sv_any, D.14815
	movq	$0, 8(%rax)	#, _10->xav_fill
.LBB33:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.601
	movq	(%rax), %rax	# PL_curstack.601_11->sv_any, D.14815
	movq	%rbx, %rcx	# sp, sp.602
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.603
	subq	%rdx, %rcx	# PL_stack_base.604, D.14816
	movq	%rcx, %rdx	# D.14816, D.14816
	sarq	$3, %rdx	#, tmp147
	movq	%rdx, 8(%rax)	# D.14816, _12->xav_fill
	movq	-40(%rbp), %rax	# next, tmp148
	movq	(%rax), %rax	# next_1->si_stack, D.14814
	movq	(%rax), %rax	# _18->sv_any, D.14815
	movq	(%rax), %rax	# _19->xav_array, PL_stack_base.605
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.605, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.606
	movq	-40(%rbp), %rax	# next, tmp149
	movq	(%rax), %rax	# next_1->si_stack, D.14814
	movq	(%rax), %rax	# _22->sv_any, D.14815
	movq	16(%rax), %rax	# _23->xav_max, D.14816
	salq	$3, %rax	#, D.14817
	addq	%rdx, %rax	# PL_stack_base.606, PL_stack_max.607
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.607, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.608
	movq	-40(%rbp), %rax	# next, tmp150
	movq	(%rax), %rax	# next_1->si_stack, D.14814
	movq	(%rax), %rax	# _29->sv_any, D.14815
	movq	8(%rax), %rax	# _30->xav_fill, D.14816
	salq	$3, %rax	#, D.14817
	addq	%rdx, %rax	# PL_stack_base.608, PL_stack_sp.609
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.609, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# next, tmp151
	movq	(%rax), %rax	# next_1->si_stack, PL_curstack.610
	movq	%rax, PL_curstack(%rip)	# PL_curstack.610, PL_curstack
.LBE33:
	movq	-40(%rbp), %rax	# next, tmp152
	movq	%rax, PL_curstackinfo(%rip)	# tmp152, PL_curstackinfo
.LBE32:
	.loc 1 2538 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2539 0 discriminator 2
	call	Perl_sv_newmortal	#
	movq	%rax, -32(%rbp)	# tmp153, sv
	.loc 1 2540 0 discriminator 2
	movq	-32(%rbp), %rax	# sv, tmp154
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_setpv	#
	.loc 1 2541 0 discriminator 2
	movq	-56(%rbp), %rdx	# pv, tmp155
	movq	-32(%rbp), %rax	# sv, tmp156
	movq	%rdx, %rsi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	Perl_sv_catpv	#
	.loc 1 2542 0 discriminator 2
	movq	-32(%rbp), %rax	# sv, tmp157
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	Perl_sv_catpv	#
	.loc 1 2543 0 discriminator 2
	movq	-32(%rbp), %rax	# sv, tmp158
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	Perl_eval_sv	#
	.loc 1 2544 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB34:
	.loc 1 2545 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.611
	movq	32(%rax), %rax	# PL_curstackinfo.611_42->si_prev, tmp159
	movq	%rax, -24(%rbp)	# tmp159, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L335	#,
	.loc 1 2545 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.613
	testq	%rax, %rax	# PL_stderrgv.613
	je	.L336	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.614
	movl	12(%rax), %eax	# PL_stderrgv.614_45->sv_flags, D.14818
	movzbl	%al, %eax	# D.14818, D.14818
	cmpl	$13, %eax	#, D.14818
	jne	.L336	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.615
	movq	(%rax), %rax	# PL_stderrgv.615_48->sv_any, D.14819
	movq	56(%rax), %rax	# _49->xgv_gp, D.14820
	movq	16(%rax), %rax	# _50->gp_io, D.14821
	testq	%rax, %rax	# D.14821
	je	.L336	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.616
	movq	(%rax), %rax	# PL_stderrgv.616_52->sv_any, D.14819
	movq	56(%rax), %rax	# _53->xgv_gp, D.14820
	movq	16(%rax), %rax	# _54->gp_io, D.14821
	movq	(%rax), %rax	# _55->sv_any, D.14822
	movq	64(%rax), %rax	# _56->xio_ofp, D.14823
	testq	%rax, %rax	# D.14823
	je	.L336	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.617
	movq	(%rax), %rax	# PL_stderrgv.617_58->sv_any, D.14819
	movq	56(%rax), %rax	# _59->xgv_gp, D.14820
	movq	16(%rax), %rax	# _60->gp_io, D.14821
	movq	(%rax), %rax	# _61->sv_any, D.14822
	movq	64(%rax), %rax	# _62->xio_ofp, iftmp.612
	jmp	.L337	#
.L336:
	.loc 1 2545 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L337:
	.loc 1 2545 0 discriminator 3
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# iftmp.612,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L335:
.LBB35:
	.loc 1 2545 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.618
	movq	(%rax), %rax	# PL_curstack.618_65->sv_any, D.14815
	movq	%rbx, %rcx	# sp, sp.619
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.620
	subq	%rdx, %rcx	# PL_stack_base.621, D.14816
	movq	%rcx, %rdx	# D.14816, D.14816
	sarq	$3, %rdx	#, tmp160
	movq	%rdx, 8(%rax)	# D.14816, _66->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp161
	movq	(%rax), %rax	# prev_43->si_stack, D.14814
	movq	(%rax), %rax	# _72->sv_any, D.14815
	movq	(%rax), %rax	# _73->xav_array, PL_stack_base.622
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.622, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.623
	movq	-24(%rbp), %rax	# prev, tmp162
	movq	(%rax), %rax	# prev_43->si_stack, D.14814
	movq	(%rax), %rax	# _76->sv_any, D.14815
	movq	16(%rax), %rax	# _77->xav_max, D.14816
	salq	$3, %rax	#, D.14817
	addq	%rdx, %rax	# PL_stack_base.623, PL_stack_max.624
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.624, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.625
	movq	-24(%rbp), %rax	# prev, tmp163
	movq	(%rax), %rax	# prev_43->si_stack, D.14814
	movq	(%rax), %rax	# _83->sv_any, D.14815
	movq	8(%rax), %rax	# _84->xav_fill, D.14816
	salq	$3, %rax	#, D.14817
	addq	%rdx, %rax	# PL_stack_base.625, PL_stack_sp.626
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.626, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp164
	movq	(%rax), %rax	# prev_43->si_stack, PL_curstack.627
	movq	%rax, PL_curstack(%rip)	# PL_curstack.627, PL_curstack
.LBE35:
	movq	-24(%rbp), %rax	# prev, tmp165
	movq	%rax, PL_curstackinfo(%rip)	# tmp165, PL_curstackinfo
.LBE34:
	.loc 1 2546 0 is_stmt 1 discriminator 2
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_require_pv, .-Perl_require_pv
	.globl	Perl_magicname
	.type	Perl_magicname, @function
Perl_magicname:
.LFB24:
	.loc 1 2550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# sym, sym
	movq	%rsi, -32(%rbp)	# name, name
	movl	%edx, -36(%rbp)	# namlen, namlen
	.loc 1 2553 0
	movq	-24(%rbp), %rax	# sym, tmp63
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rbx	#, gv
	testq	%rbx, %rbx	# gv
	je	.L338	#,
	.loc 1 2554 0
	movq	(%rbx), %rax	# gv_2->sv_any, D.14827
	movq	56(%rax), %rax	# _3->xgv_gp, D.14828
	movq	(%rax), %rax	# _4->gp_sv, D.14829
	movl	-36(%rbp), %ecx	# namlen, tmp64
	movq	-32(%rbp), %rdx	# name, tmp65
	movl	%ecx, %r8d	# tmp64,
	movq	%rdx, %rcx	# tmp65,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# gv,
	movq	%rax, %rdi	# D.14829,
	call	Perl_sv_magic	#
.L338:
	.loc 1 2555 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_magicname, .-Perl_magicname
	.section	.rodata
	.align 8
.LC57:
	.string	"\nUsage: %s [switches] [--] [programfile] [arguments]"
.LC58:
	.string	"\n  %s"
	.text
	.type	S_usage, @function
S_usage:
.LFB25:
	.loc 1 2559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# name, name
	.loc 1 2597 0
	movq	$usage_msg.10653, -24(%rbp)	#, p
	.loc 1 2599 0
	call	Perl_PerlIO_stdout	#
	movq	-40(%rbp), %rdx	# name, tmp64
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# D.14830,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 2602 0
	jmp	.L341	#
.L342:
	.loc 1 2603 0
	movq	-24(%rbp), %rax	# p, p.628
	leaq	8(%rax), %rdx	#, tmp65
	movq	%rdx, -24(%rbp)	# tmp65, p
	movq	(%rax), %rbx	# *p.628_6, D.14831
	call	Perl_PerlIO_stdout	#
	movq	%rbx, %rdx	# D.14831,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# D.14830,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L341:
	.loc 1 2602 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp66
	movq	(%rax), %rax	# *p_1, D.14831
	testq	%rax, %rax	# D.14831
	jne	.L342	#,
	.loc 1 2604 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	S_usage, .-S_usage
	.section	.rodata
.LC59:
	.string	"/"
.LC60:
	.string	"-d"
.LC61:
	.string	"1"
.LC62:
	.string	"PERL5DB_THREADED"
.LC63:
	.string	"use Devel::"
.LC64:
	.string	" split(/,/,q{"
.LC65:
	.string	"})"
.LC66:
	.string	"PERL5DB"
	.align 8
.LC67:
	.string	"Recompile perl with -DDEBUGGING to use -D switch (did you mean -d ?)\n"
.LC68:
	.string	"\n\n"
.LC69:
	.string	"-M"
.LC70:
	.string	"-m"
.LC71:
	.string	"use "
.LC72:
	.string	"no "
.LC73:
	.string	"Can't use '%c' after -mname"
.LC74:
	.string	" ()"
	.align 8
.LC75:
	.string	"Module name required with -%c option"
.LC76:
	.string	" split(/,/,q"
.LC77:
	.string	""
	.string	")"
.LC78:
	.string	"Missing argument to -%c"
.LC79:
	.string	"-s"
	.align 8
.LC80:
	.string	"\"-%c\" is on the #! line, it must also be used on the command line%s"
.LC81:
	.string	"spec-cpu"
	.align 8
.LC82:
	.string	"\nThis is perl, v%vd built for %s"
	.align 8
.LC83:
	.string	"\n\nCopyright 1987-2005, Larry Wall\n"
	.align 8
.LC84:
	.ascii	"\nPerl may be copied only under the terms of either the Arti"
	.ascii	"stic License or the\nGNU General Public License, which may b"
	.ascii	"e "
	.string	"found in the Perl 5 source kit.\n\nComplete documentation for Perl, including FAQ lists, should be found on\nthis system using `man perl' or `perldoc perl'.  If you have access to the\nInternet, point your browser at http://www.perl.org/, the Perl Home Page.\n\n"
	.align 8
.LC85:
	.string	"Can't emulate -%.1s on #! line"
	.text
	.globl	Perl_moreswitches
	.type	Perl_moreswitches, @function
Perl_moreswitches:
.LFB26:
	.loc 1 2682 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# s, s
	.loc 1 2686 0
	movq	-120(%rbp), %rax	# s, s.629
	movzbl	(%rax), %eax	# *s.629_31, D.14835
	movsbl	%al, %eax	# D.14835, D.14836
	cmpl	$119, %eax	#, D.14836
	ja	.L344	#,
	movl	%eax, %eax	# D.14836, tmp476
	movq	.L346(,%rax,8), %rax	#, tmp477
	jmp	*%rax	# tmp477
	.section	.rodata
	.align 8
	.align 4
.L346:
	.quad	.L497
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L497
	.quad	.L497
	.quad	.L344
	.quad	.L344
	.quad	.L497
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L347
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L347
	.quad	.L344
	.quad	.L344
	.quad	.L497
	.quad	.L344
	.quad	.L344
	.quad	.L348
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L349
	.quad	.L350
	.quad	.L344
	.quad	.L351
	.quad	.L344
	.quad	.L344
	.quad	.L352
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L353
	.quad	.L344
	.quad	.L344
	.quad	.L354
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L355
	.quad	.L356
	.quad	.L344
	.quad	.L357
	.quad	.L358
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L359
	.quad	.L344
	.quad	.L360
	.quad	.L361
	.quad	.L344
	.quad	.L344
	.quad	.L344
	.quad	.L362
	.quad	.L363
	.quad	.L344
	.quad	.L344
	.quad	.L364
	.quad	.L365
	.quad	.L366
	.quad	.L344
	.quad	.L367
	.quad	.L344
	.quad	.L344
	.quad	.L368
	.quad	.L369
	.quad	.L370
	.quad	.L371
	.quad	.L372
	.text
.L348:
.LBB36:
	.loc 1 2689 0
	movl	$0, -108(%rbp)	#, flags
	.loc 1 2691 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.630
	movq	%rax, %rdi	# PL_rs.630,
	call	Perl_sv_free	#
	.loc 1 2692 0
	movq	-120(%rbp), %rax	# s, s.631
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_36, D.14835
	cmpb	$120, %al	#, D.14835
	jne	.L373	#,
	.loc 1 2692 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.632
	addq	$2, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_39, D.14835
	testb	%al, %al	# D.14835
	je	.L373	#,
.LBB37:
	.loc 1 2696 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.633
	addq	$2, %rax	#, s.634
	movq	%rax, -120(%rbp)	# s.634, s
	movq	-120(%rbp), %rax	# s, tmp478
	movq	%rax, -88(%rbp)	# tmp478, e
	jmp	.L374	#
.L375:
	.loc 1 2696 0 is_stmt 0 discriminator 2
	addq	$1, -88(%rbp)	#, e
.L374:
	.loc 1 2696 0 discriminator 1
	movq	-88(%rbp), %rax	# e, tmp479
	movzbl	(%rax), %eax	# *e_2, D.14835
	testb	%al, %al	# D.14835
	jne	.L375	#,
	.loc 1 2697 0 is_stmt 1
	movq	-88(%rbp), %rdx	# e, e.635
	movq	-120(%rbp), %rax	# s, s.636
	subq	%rax, %rdx	# s.637, D.14837
	movq	%rdx, %rax	# D.14837, D.14837
	movq	%rax, -104(%rbp)	# numlen.638, numlen
	.loc 1 2698 0
	movl	$4, -108(%rbp)	#, flags
	.loc 1 2699 0
	movq	-120(%rbp), %rax	# s, s.639
	leaq	-108(%rbp), %rdx	#, tmp480
	leaq	-104(%rbp), %rsi	#, tmp481
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# s.639,
	call	Perl_grok_hex	#
	movl	%eax, %eax	# D.14839, tmp545
	movq	%rax, -96(%rbp)	# tmp545, rschar
	.loc 1 2700 0
	movq	-120(%rbp), %rdx	# s, s.640
	movq	-104(%rbp), %rax	# numlen, numlen.641
	addq	%rdx, %rax	# s.640, D.14834
	cmpq	-88(%rbp), %rax	# e, D.14834
	jae	.L376	#,
	.loc 1 2701 0
	movq	$0, -96(%rbp)	#, rschar
	.loc 1 2702 0
	movq	$0, -104(%rbp)	#, numlen
	.loc 1 2703 0
	movq	-120(%rbp), %rax	# s, s.642
	subq	$1, %rax	#, s.643
	movq	%rax, -120(%rbp)	# s.643, s
.L376:
	.loc 1 2705 0
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_rs(%rip)	# PL_rs.644, PL_rs
	.loc 1 2706 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.646
	movq	(%rax), %rax	# PL_rs.646_62->sv_any, D.14840
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_63].xpv_len, D.14838
	cmpq	$127, -96(%rbp)	#, rschar
	jbe	.L377	#,
	.loc 1 2706 0 is_stmt 0 discriminator 1
	cmpq	$2047, -96(%rbp)	#, rschar
	jbe	.L378	#,
	.loc 1 2706 0 discriminator 3
	cmpq	$65535, -96(%rbp)	#, rschar
	jbe	.L379	#,
	.loc 1 2706 0 discriminator 5
	cmpq	$2097151, -96(%rbp)	#, rschar
	jbe	.L380	#,
	.loc 1 2706 0 discriminator 7
	cmpq	$67108863, -96(%rbp)	#, rschar
	jbe	.L381	#,
	.loc 1 2706 0 discriminator 9
	cmpq	$2147483647, -96(%rbp)	#, rschar
	jbe	.L382	#,
	.loc 1 2706 0 discriminator 11
	movabsq	$68719476735, %rax	#, tmp482
	cmpq	%rax, -96(%rbp)	# tmp482, rschar
	ja	.L383	#,
	.loc 1 2706 0 discriminator 13
	movl	$8, %eax	#, iftmp.653
	jmp	.L390	#
.L383:
	.loc 1 2706 0 discriminator 14
	movl	$14, %eax	#, iftmp.653
	jmp	.L390	#
.L382:
	.loc 1 2706 0 discriminator 12
	movl	$7, %eax	#, iftmp.652
	jmp	.L390	#
.L381:
	.loc 1 2706 0 discriminator 10
	movl	$6, %eax	#, iftmp.651
	jmp	.L390	#
.L380:
	.loc 1 2706 0 discriminator 8
	movl	$5, %eax	#, iftmp.650
	jmp	.L390	#
.L379:
	.loc 1 2706 0 discriminator 6
	movl	$4, %eax	#, iftmp.649
	jmp	.L390	#
.L378:
	.loc 1 2706 0 discriminator 4
	movl	$3, %eax	#, iftmp.648
	jmp	.L390	#
.L377:
	.loc 1 2706 0 discriminator 2
	movl	$2, %eax	#, iftmp.647
.L390:
	.loc 1 2706 0 discriminator 15
	cmpq	%rax, %rdx	# iftmp.647, D.14838
	jae	.L406	#,
	.loc 1 2706 0 discriminator 1
	cmpq	$127, -96(%rbp)	#, rschar
	jbe	.L392	#,
	cmpq	$2047, -96(%rbp)	#, rschar
	jbe	.L393	#,
	cmpq	$65535, -96(%rbp)	#, rschar
	jbe	.L394	#,
	.loc 1 2706 0 discriminator 3
	cmpq	$2097151, -96(%rbp)	#, rschar
	jbe	.L395	#,
	.loc 1 2706 0 discriminator 5
	cmpq	$67108863, -96(%rbp)	#, rschar
	jbe	.L396	#,
	.loc 1 2706 0 discriminator 7
	cmpq	$2147483647, -96(%rbp)	#, rschar
	jbe	.L397	#,
	.loc 1 2706 0 discriminator 9
	movabsq	$68719476735, %rax	#, tmp483
	cmpq	%rax, -96(%rbp)	# tmp483, rschar
	ja	.L398	#,
	.loc 1 2706 0 discriminator 11
	movl	$8, %eax	#, iftmp.660
	jmp	.L405	#
.L398:
	.loc 1 2706 0 discriminator 12
	movl	$14, %eax	#, iftmp.660
	jmp	.L405	#
.L397:
	.loc 1 2706 0 discriminator 10
	movl	$7, %eax	#, iftmp.659
	jmp	.L405	#
.L396:
	.loc 1 2706 0 discriminator 8
	movl	$6, %eax	#, iftmp.658
	jmp	.L405	#
.L395:
	.loc 1 2706 0 discriminator 6
	movl	$5, %eax	#, iftmp.657
	jmp	.L405	#
.L394:
	.loc 1 2706 0 discriminator 4
	movl	$4, %eax	#, iftmp.656
	jmp	.L405	#
.L393:
	.loc 1 2706 0 discriminator 2
	movl	$3, %eax	#, iftmp.655
	jmp	.L405	#
.L392:
	movl	$2, %eax	#, iftmp.654
.L405:
	.loc 1 2706 0 discriminator 13
	movq	PL_rs(%rip), %rdx	# PL_rs, PL_rs.661
	movq	%rax, %rsi	# iftmp.654,
	movq	%rdx, %rdi	# PL_rs.661,
	call	Perl_sv_grow	#
.L406:
	.loc 1 2707 0 is_stmt 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.663
	movq	(%rax), %rax	# PL_rs.663_98->sv_any, D.14840
	movq	(%rax), %rax	# MEM[(struct XPV *)_99].xpv_pv, tmp484
	movq	%rax, -56(%rbp)	# tmp484, tmps
	.loc 1 2708 0
	movq	-96(%rbp), %rdx	# rschar, tmp485
	movq	-56(%rbp), %rax	# tmps, tmp486
	movq	%rdx, %rsi	# tmp485,
	movq	%rax, %rdi	# tmp486,
	call	Perl_uvuni_to_utf8	#
	.loc 1 2709 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.664
	movq	(%rax), %rdx	# PL_rs.664_101->sv_any, D.14840
	cmpq	$127, -96(%rbp)	#, rschar
	jbe	.L407	#,
	.loc 1 2709 0 is_stmt 0 discriminator 1
	cmpq	$2047, -96(%rbp)	#, rschar
	jbe	.L408	#,
	.loc 1 2709 0 discriminator 3
	cmpq	$65535, -96(%rbp)	#, rschar
	jbe	.L409	#,
	.loc 1 2709 0 discriminator 5
	cmpq	$2097151, -96(%rbp)	#, rschar
	jbe	.L410	#,
	.loc 1 2709 0 discriminator 7
	cmpq	$67108863, -96(%rbp)	#, rschar
	jbe	.L411	#,
	.loc 1 2709 0 discriminator 9
	cmpq	$2147483647, -96(%rbp)	#, rschar
	jbe	.L412	#,
	.loc 1 2709 0 discriminator 11
	movabsq	$68719476735, %rax	#, tmp487
	cmpq	%rax, -96(%rbp)	# tmp487, rschar
	ja	.L413	#,
	.loc 1 2709 0 discriminator 13
	movl	$7, %eax	#, iftmp.671
	jmp	.L420	#
.L413:
	.loc 1 2709 0 discriminator 14
	movl	$13, %eax	#, iftmp.671
	jmp	.L420	#
.L412:
	.loc 1 2709 0 discriminator 12
	movl	$6, %eax	#, iftmp.670
	jmp	.L420	#
.L411:
	.loc 1 2709 0 discriminator 10
	movl	$5, %eax	#, iftmp.669
	jmp	.L420	#
.L410:
	.loc 1 2709 0 discriminator 8
	movl	$4, %eax	#, iftmp.668
	jmp	.L420	#
.L409:
	.loc 1 2709 0 discriminator 6
	movl	$3, %eax	#, iftmp.667
	jmp	.L420	#
.L408:
	.loc 1 2709 0 discriminator 4
	movl	$2, %eax	#, iftmp.666
	jmp	.L420	#
.L407:
	.loc 1 2709 0 discriminator 2
	movl	$1, %eax	#, iftmp.665
.L420:
	.loc 1 2709 0 discriminator 15
	movq	%rax, 8(%rdx)	# iftmp.665, MEM[(struct XPV *)_102].xpv_cur
	.loc 1 2710 0 is_stmt 1 discriminator 15
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.672
	movq	PL_rs(%rip), %rdx	# PL_rs, PL_rs.673
	movl	12(%rdx), %edx	# PL_rs.673_118->sv_flags, D.14839
	orl	$536870912, %edx	#, D.14839
	movl	%edx, 12(%rax)	# D.14839, PL_rs.672_117->sv_flags
.LBE37:
	.loc 1 2692 0 discriminator 15
	jmp	.L421	#
.L373:
	.loc 1 2713 0
	movq	$4, -104(%rbp)	#, numlen
	.loc 1 2714 0
	movq	-120(%rbp), %rax	# s, s.674
	leaq	-108(%rbp), %rdx	#, tmp488
	leaq	-104(%rbp), %rsi	#, tmp489
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# s.674,
	call	Perl_grok_oct	#
	movl	%eax, %eax	# D.14839, tmp546
	movq	%rax, -96(%rbp)	# tmp546, rschar
	.loc 1 2715 0
	movq	-96(%rbp), %rax	# rschar, tmp490
	movb	$0, %al	#, D.14838
	testq	%rax, %rax	# D.14838
	je	.L422	#,
	.loc 1 2716 0
	movq	$PL_sv_undef, PL_rs(%rip)	#, PL_rs
	jmp	.L421	#
.L422:
	.loc 1 2717 0
	cmpq	$0, -96(%rbp)	#, rschar
	jne	.L423	#,
	.loc 1 2717 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# numlen, numlen.675
	cmpq	$1, %rax	#, numlen.675
	jbe	.L423	#,
	.loc 1 2718 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_rs(%rip)	# PL_rs.676, PL_rs
	jmp	.L421	#
.L423:
.LBB38:
	.loc 1 2720 0
	movq	-96(%rbp), %rax	# rschar, tmp491
	movb	%al, -109(%rbp)	# ch.677, ch
	.loc 1 2721 0
	leaq	-109(%rbp), %rax	#, tmp492
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp492,
	call	Perl_newSVpvn	#
	movq	%rax, PL_rs(%rip)	# PL_rs.678, PL_rs
.L421:
.LBE38:
	.loc 1 2724 0
	movq	PL_rs(%rip), %rbx	# PL_rs, PL_rs.679
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	Perl_get_sv	#
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# PL_rs.679,
	movq	%rax, %rdi	# D.14841,
	call	Perl_sv_setsv_flags	#
	.loc 1 2725 0
	movq	-120(%rbp), %rdx	# s, s.680
	movq	-104(%rbp), %rax	# numlen, numlen.681
	addq	%rdx, %rax	# s.680, D.14834
	jmp	.L496	#
.L349:
.LBE36:
	.loc 1 2728 0
	movq	-120(%rbp), %rax	# s, s.682
	addq	$1, %rax	#, s.683
	movq	%rax, -120(%rbp)	# s.683, s
	.loc 1 2729 0
	leaq	-120(%rbp), %rax	#, tmp493
	movq	%rax, %rdi	# tmp493,
	call	Perl_parse_unicode_opts	#
	movl	%eax, PL_unicode(%rip)	# PL_unicode.684, PL_unicode
	.loc 1 2730 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L351:
	.loc 1 2732 0
	movb	$1, PL_minus_F(%rip)	#, PL_minus_F
	.loc 1 2733 0
	movq	-120(%rbp), %rax	# s, s.685
	addq	$1, %rax	#, s.686
	movq	%rax, -120(%rbp)	# s.686, s
	movq	-120(%rbp), %rax	# s, s.687
	movq	%rax, PL_splitstr(%rip)	# s.687, PL_splitstr
	.loc 1 2734 0
	jmp	.L425	#
.L427:
	.loc 1 2734 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.688
	addq	$1, %rax	#, s.689
	movq	%rax, -120(%rbp)	# s.689, s
.L425:
	movq	-120(%rbp), %rax	# s, s.690
	movzbl	(%rax), %eax	# *s.690_142, D.14835
	testb	%al, %al	# D.14835
	je	.L426	#,
	.loc 1 2734 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.691
	movzbl	(%rax), %eax	# *s.691_144, D.14835
	cmpb	$32, %al	#, D.14835
	je	.L426	#,
	.loc 1 2734 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.692
	movzbl	(%rax), %eax	# *s.692_146, D.14835
	cmpb	$9, %al	#, D.14835
	je	.L426	#,
	movq	-120(%rbp), %rax	# s, s.693
	movzbl	(%rax), %eax	# *s.693_148, D.14835
	cmpb	$10, %al	#, D.14835
	je	.L426	#,
	movq	-120(%rbp), %rax	# s, s.694
	movzbl	(%rax), %eax	# *s.694_150, D.14835
	cmpb	$13, %al	#, D.14835
	je	.L426	#,
	movq	-120(%rbp), %rax	# s, s.695
	movzbl	(%rax), %eax	# *s.695_152, D.14835
	cmpb	$12, %al	#, D.14835
	jne	.L427	#,
.L426:
	.loc 1 2735 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.696
	movb	$0, (%rax)	#, *s.696_156
	.loc 1 2736 0
	movq	PL_splitstr(%rip), %rax	# PL_splitstr, PL_splitstr.697
	movq	%rax, %rdi	# PL_splitstr.697,
	call	Perl_savepv	#
	movq	%rax, PL_splitstr(%rip)	# PL_splitstr.698, PL_splitstr
	.loc 1 2737 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L359:
	.loc 1 2739 0
	movb	$1, PL_minus_a(%rip)	#, PL_minus_a
	.loc 1 2740 0
	movq	-120(%rbp), %rax	# s, s.699
	addq	$1, %rax	#, s.700
	movq	%rax, -120(%rbp)	# s.700, s
	.loc 1 2741 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L360:
	.loc 1 2743 0
	movb	$1, PL_minus_c(%rip)	#, PL_minus_c
	.loc 1 2744 0
	movq	-120(%rbp), %rax	# s, s.701
	addq	$1, %rax	#, s.702
	movq	%rax, -120(%rbp)	# s.702, s
	.loc 1 2745 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L361:
	.loc 1 2747 0
	movl	$.LC60, %edi	#,
	call	S_forbid_setid	#
	.loc 1 2748 0
	movq	-120(%rbp), %rax	# s, s.703
	addq	$1, %rax	#, s.704
	movq	%rax, -120(%rbp)	# s.704, s
	.loc 1 2751 0
	movq	-120(%rbp), %rax	# s, s.705
	movzbl	(%rax), %eax	# *s.705_168, D.14835
	cmpb	$116, %al	#, D.14835
	jne	.L428	#,
	.loc 1 2751 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.706
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_171, D.14835
	cmpb	$64, %al	#, D.14835
	jle	.L429	#,
	.loc 1 2751 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.707
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_174, D.14835
	cmpb	$90, %al	#, D.14835
	jle	.L428	#,
.L429:
	.loc 1 2751 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.708
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_177, D.14835
	cmpb	$96, %al	#, D.14835
	jle	.L430	#,
	.loc 1 2751 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.709
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_180, D.14835
	cmpb	$122, %al	#, D.14835
	jle	.L428	#,
.L430:
	.loc 1 2751 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.710
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_183, D.14835
	cmpb	$47, %al	#, D.14835
	jle	.L431	#,
	.loc 1 2751 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.711
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_186, D.14835
	cmpb	$57, %al	#, D.14835
	jle	.L428	#,
.L431:
	.loc 1 2751 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.712
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_189, D.14835
	cmpb	$95, %al	#, D.14835
	je	.L428	#,
	.loc 1 2752 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.713
	addq	$1, %rax	#, s.714
	movq	%rax, -120(%rbp)	# s.714, s
	.loc 1 2753 0
	movl	$.LC61, %esi	#,
	movl	$.LC62, %edi	#,
	call	Perl_my_setenv	#
.L428:
	.loc 1 2758 0
	movq	-120(%rbp), %rax	# s, s.715
	movzbl	(%rax), %eax	# *s.715_193, D.14835
	cmpb	$58, %al	#, D.14835
	je	.L432	#,
	.loc 1 2758 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.716
	movzbl	(%rax), %eax	# *s.716_195, D.14835
	cmpb	$61, %al	#, D.14835
	jne	.L433	#,
.L432:
.LBB39:
	.loc 1 2761 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC63, %edi	#,
	call	Perl_newSVpv	#
	movq	%rax, -48(%rbp)	# tmp494, sv
	.loc 1 2762 0
	movq	-120(%rbp), %rax	# s, s.717
	addq	$1, %rax	#, s.718
	movq	%rax, -120(%rbp)	# s.718, s
	movq	-120(%rbp), %rax	# s, tmp495
	movq	%rax, -40(%rbp)	# tmp495, start
	.loc 1 2764 0
	jmp	.L434	#
.L436:
	.loc 1 2764 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.719
	addq	$1, %rax	#, s.720
	movq	%rax, -120(%rbp)	# s.720, s
.L434:
	movq	-120(%rbp), %rax	# s, s.721
	movzbl	(%rax), %eax	# *s.721_201, D.14835
	cmpb	$64, %al	#, D.14835
	jle	.L435	#,
	.loc 1 2764 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.722
	movzbl	(%rax), %eax	# *s.722_203, D.14835
	cmpb	$90, %al	#, D.14835
	jle	.L436	#,
.L435:
	.loc 1 2764 0 discriminator 3
	movq	-120(%rbp), %rax	# s, s.723
	movzbl	(%rax), %eax	# *s.723_205, D.14835
	cmpb	$96, %al	#, D.14835
	jle	.L437	#,
	.loc 1 2764 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.724
	movzbl	(%rax), %eax	# *s.724_207, D.14835
	cmpb	$122, %al	#, D.14835
	jle	.L436	#,
.L437:
	.loc 1 2764 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.725
	movzbl	(%rax), %eax	# *s.725_209, D.14835
	cmpb	$47, %al	#, D.14835
	jle	.L438	#,
	.loc 1 2764 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.726
	movzbl	(%rax), %eax	# *s.726_211, D.14835
	cmpb	$57, %al	#, D.14835
	jle	.L436	#,
.L438:
	.loc 1 2764 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.727
	movzbl	(%rax), %eax	# *s.727_213, D.14835
	cmpb	$95, %al	#, D.14835
	je	.L436	#,
	.loc 1 2764 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.728
	movzbl	(%rax), %eax	# *s.728_215, D.14835
	cmpb	$58, %al	#, D.14835
	je	.L436	#,
	.loc 1 2765 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.729
	movzbl	(%rax), %eax	# *s.729_217, D.14835
	cmpb	$61, %al	#, D.14835
	je	.L439	#,
	.loc 1 2766 0
	movq	-40(%rbp), %rdx	# start, tmp496
	movq	-48(%rbp), %rax	# sv, tmp497
	movq	%rdx, %rsi	# tmp496,
	movq	%rax, %rdi	# tmp497,
	call	Perl_sv_catpv	#
	jmp	.L440	#
.L439:
	.loc 1 2768 0
	movq	-120(%rbp), %rax	# s, s.730
	movq	%rax, %rdx	# s.730, s.731
	movq	-40(%rbp), %rax	# start, start.732
	subq	%rax, %rdx	# start.732, D.14837
	movq	%rdx, %rax	# D.14837, D.14837
	movq	%rax, %rdx	# D.14837, D.14838
	movq	-40(%rbp), %rsi	# start, tmp498
	movq	-48(%rbp), %rax	# sv, tmp499
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp499,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2769 0
	movq	-48(%rbp), %rax	# sv, tmp500
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp500,
	call	Perl_sv_catpv	#
	.loc 1 2770 0
	movq	-120(%rbp), %rax	# s, s.733
	addq	$1, %rax	#, s.734
	movq	%rax, -120(%rbp)	# s.734, s
	movq	-120(%rbp), %rdx	# s, s.735
	movq	-48(%rbp), %rax	# sv, tmp501
	movq	%rdx, %rsi	# s.735,
	movq	%rax, %rdi	# tmp501,
	call	Perl_sv_catpv	#
	.loc 1 2771 0
	movq	-48(%rbp), %rax	# sv, tmp502
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp502,
	call	Perl_sv_catpv	#
.L440:
	.loc 1 2773 0
	movq	-120(%rbp), %rbx	# s, s.736
	movq	-120(%rbp), %rax	# s, s.737
	movq	%rax, %rdi	# s.737,
	call	strlen	#
	addq	%rbx, %rax	# s.736, s.738
	movq	%rax, -120(%rbp)	# s.738, s
	.loc 1 2774 0
	movq	-48(%rbp), %rax	# sv, tmp503
	movl	12(%rax), %eax	# sv_197->sv_flags, D.14839
	andl	$262144, %eax	#, D.14839
	testl	%eax, %eax	# D.14839
	je	.L441	#,
	.loc 1 2774 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp504
	movq	(%rax), %rax	# sv_197->sv_any, D.14840
	movq	8(%rax), %rax	# MEM[(struct XPV *)_233].xpv_cur, PL_na.740
	movq	%rax, PL_na(%rip)	# PL_na.740, PL_na
	movq	-48(%rbp), %rax	# sv, tmp505
	movq	(%rax), %rax	# sv_197->sv_any, D.14840
	movq	(%rax), %rax	# MEM[(struct XPV *)_235].xpv_pv, iftmp.739
	jmp	.L442	#
.L441:
	.loc 1 2774 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp506
	movl	$2, %edx	#,
	movl	$PL_na, %esi	#,
	movq	%rax, %rdi	# tmp506,
	call	Perl_sv_2pv_flags	#
.L442:
	.loc 1 2774 0 discriminator 3
	movq	%rax, %rsi	# iftmp.739,
	movl	$.LC66, %edi	#,
	call	Perl_my_setenv	#
.L433:
.LBE39:
	.loc 1 2776 0 is_stmt 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.741
	testl	%eax, %eax	# PL_perldb.741
	jne	.L443	#,
	.loc 1 2777 0
	movl	$831, PL_perldb(%rip)	#, PL_perldb
	.loc 1 2778 0
	call	Perl_init_debugger	#
.L443:
	.loc 1 2780 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L350:
	.loc 1 2788 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.742
	movq	80(%rax), %rax	# PL_curcop.742_242->cop_warnings, D.14841
	testq	%rax, %rax	# D.14841
	je	.L444	#,
	.loc 1 2788 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.743
	movq	80(%rax), %rax	# PL_curcop.743_244->cop_warnings, D.14841
	cmpq	$16, %rax	#, D.14841
	je	.L444	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.744
	movq	80(%rax), %rax	# PL_curcop.744_246->cop_warnings, D.14841
	cmpq	$32, %rax	#, D.14841
	je	.L445	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.745
	movq	80(%rax), %rax	# PL_curcop.745_248->cop_warnings, D.14841
	movq	(%rax), %rax	# _249->sv_any, D.14840
	movq	(%rax), %rax	# MEM[(struct XPV *)_250].xpv_pv, D.14834
	addq	$5, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_252, D.14835
	movsbl	%al, %eax	# D.14835, D.14836
	andl	$16, %eax	#, D.14836
	testl	%eax, %eax	# D.14836
	je	.L445	#,
.L444:
	.loc 1 2789 0 is_stmt 1
	movl	$.LC67, %esi	#,
	movl	$22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L445:
	.loc 1 2791 0
	movq	-120(%rbp), %rax	# s, s.746
	addq	$1, %rax	#, s.747
	movq	%rax, -120(%rbp)	# s.747, s
	jmp	.L446	#
.L448:
	.loc 1 2791 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.748
	addq	$1, %rax	#, s.749
	movq	%rax, -120(%rbp)	# s.749, s
.L446:
	movq	-120(%rbp), %rax	# s, s.750
	movzbl	(%rax), %eax	# *s.750_258, D.14835
	cmpb	$64, %al	#, D.14835
	jle	.L447	#,
	.loc 1 2791 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.751
	movzbl	(%rax), %eax	# *s.751_260, D.14835
	cmpb	$90, %al	#, D.14835
	jle	.L448	#,
.L447:
	.loc 1 2791 0 discriminator 3
	movq	-120(%rbp), %rax	# s, s.752
	movzbl	(%rax), %eax	# *s.752_262, D.14835
	cmpb	$96, %al	#, D.14835
	jle	.L449	#,
	.loc 1 2791 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.753
	movzbl	(%rax), %eax	# *s.753_264, D.14835
	cmpb	$122, %al	#, D.14835
	jle	.L448	#,
.L449:
	.loc 1 2791 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.754
	movzbl	(%rax), %eax	# *s.754_266, D.14835
	cmpb	$47, %al	#, D.14835
	jle	.L450	#,
	.loc 1 2791 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.755
	movzbl	(%rax), %eax	# *s.755_268, D.14835
	cmpb	$57, %al	#, D.14835
	jle	.L448	#,
.L450:
	.loc 1 2791 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.756
	movzbl	(%rax), %eax	# *s.756_270, D.14835
	cmpb	$95, %al	#, D.14835
	je	.L448	#,
	.loc 1 2794 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L362:
	.loc 1 2797 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.757
	movq	(%rax), %rax	# *PL_origargv.757_275, D.14834
	movq	%rax, %rdi	# D.14834,
	call	S_usage	#
	.loc 1 2798 0
	movl	$0, %edi	#,
	call	Perl_my_exit	#
.L363:
	.loc 1 2800 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.758
	testq	%rax, %rax	# PL_inplace.758
	je	.L451	#,
	.loc 1 2801 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.759
	movq	%rax, %rdi	# PL_inplace.759,
	call	Perl_safesysfree	#
.L451:
	.loc 1 2808 0
	movq	-120(%rbp), %rax	# s, s.760
	addq	$1, %rax	#, D.14842
	movq	%rax, %rdi	# D.14842,
	call	Perl_savepv	#
	movq	%rax, PL_inplace(%rip)	# PL_inplace.761, PL_inplace
	.loc 1 2810 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.762
	movq	%rax, -120(%rbp)	# PL_inplace.762, s
	jmp	.L452	#
.L454:
	.loc 1 2810 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.763
	addq	$1, %rax	#, s.764
	movq	%rax, -120(%rbp)	# s.764, s
.L452:
	movq	-120(%rbp), %rax	# s, s.765
	movzbl	(%rax), %eax	# *s.765_283, D.14835
	testb	%al, %al	# D.14835
	je	.L453	#,
	.loc 1 2810 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.766
	movzbl	(%rax), %eax	# *s.766_285, D.14835
	cmpb	$32, %al	#, D.14835
	je	.L453	#,
	.loc 1 2810 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.767
	movzbl	(%rax), %eax	# *s.767_287, D.14835
	cmpb	$9, %al	#, D.14835
	je	.L453	#,
	movq	-120(%rbp), %rax	# s, s.768
	movzbl	(%rax), %eax	# *s.768_289, D.14835
	cmpb	$10, %al	#, D.14835
	je	.L453	#,
	movq	-120(%rbp), %rax	# s, s.769
	movzbl	(%rax), %eax	# *s.769_291, D.14835
	cmpb	$13, %al	#, D.14835
	je	.L453	#,
	movq	-120(%rbp), %rax	# s, s.770
	movzbl	(%rax), %eax	# *s.770_293, D.14835
	cmpb	$12, %al	#, D.14835
	jne	.L454	#,
.L453:
	.loc 1 2811 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.771
	movzbl	(%rax), %eax	# *s.771_297, D.14835
	testb	%al, %al	# D.14835
	je	.L455	#,
	.loc 1 2812 0
	movq	-120(%rbp), %rax	# s, s.772
	leaq	1(%rax), %rdx	#, s.774
	movq	%rdx, -120(%rbp)	# s.774, s
	movb	$0, (%rax)	#, *s.773_300
	.loc 1 2813 0
	movq	-120(%rbp), %rax	# s, s.775
	movzbl	(%rax), %eax	# *s.775_302, D.14835
	cmpb	$45, %al	#, D.14835
	jne	.L455	#,
	.loc 1 2814 0
	movq	-120(%rbp), %rax	# s, s.776
	addq	$1, %rax	#, s.777
	movq	%rax, -120(%rbp)	# s.777, s
.L455:
	.loc 1 2816 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L352:
	.loc 1 2818 0
	movl	$.LC13, %edi	#,
	call	S_forbid_setid	#
	.loc 1 2819 0
	movq	-120(%rbp), %rax	# s, s.778
	addq	$1, %rax	#, s.779
	movq	%rax, -120(%rbp)	# s.779, s
	.loc 1 2820 0
	jmp	.L456	#
.L458:
	.loc 1 2821 0
	movq	-120(%rbp), %rax	# s, s.780
	addq	$1, %rax	#, s.781
	movq	%rax, -120(%rbp)	# s.781, s
.L456:
	.loc 1 2820 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.782
	movzbl	(%rax), %eax	# *s.782_309, D.14835
	testb	%al, %al	# D.14835
	je	.L457	#,
	.loc 1 2820 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.783
	movzbl	(%rax), %eax	# *s.783_311, D.14835
	cmpb	$32, %al	#, D.14835
	je	.L458	#,
	.loc 1 2820 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.784
	movzbl	(%rax), %eax	# *s.784_313, D.14835
	cmpb	$9, %al	#, D.14835
	je	.L458	#,
	movq	-120(%rbp), %rax	# s, s.785
	movzbl	(%rax), %eax	# *s.785_315, D.14835
	cmpb	$10, %al	#, D.14835
	je	.L458	#,
	movq	-120(%rbp), %rax	# s, s.786
	movzbl	(%rax), %eax	# *s.786_317, D.14835
	cmpb	$13, %al	#, D.14835
	je	.L458	#,
	movq	-120(%rbp), %rax	# s, s.787
	movzbl	(%rax), %eax	# *s.787_319, D.14835
	cmpb	$12, %al	#, D.14835
	je	.L458	#,
.L457:
	.loc 1 2822 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.788
	movzbl	(%rax), %eax	# *s.788_323, D.14835
	testb	%al, %al	# D.14835
	je	.L459	#,
.LBB40:
	.loc 1 2824 0
	movq	-120(%rbp), %rax	# s, tmp507
	movq	%rax, -72(%rbp)	# tmp507, p
.L466:
	.loc 1 2827 0
	movq	-72(%rbp), %rax	# p, tmp508
	movq	%rax, -80(%rbp)	# tmp508, e
	jmp	.L460	#
.L462:
	.loc 1 2827 0 is_stmt 0 discriminator 1
	addq	$1, -80(%rbp)	#, e
.L460:
	movq	-80(%rbp), %rax	# e, tmp509
	movzbl	(%rax), %eax	# *e_3, D.14835
	testb	%al, %al	# D.14835
	je	.L461	#,
	.loc 1 2827 0 discriminator 2
	movq	-80(%rbp), %rax	# e, tmp510
	movzbl	(%rax), %eax	# *e_3, D.14835
	cmpb	$32, %al	#, D.14835
	je	.L461	#,
	.loc 1 2827 0 discriminator 1
	movq	-80(%rbp), %rax	# e, tmp511
	movzbl	(%rax), %eax	# *e_3, D.14835
	cmpb	$9, %al	#, D.14835
	je	.L461	#,
	movq	-80(%rbp), %rax	# e, tmp512
	movzbl	(%rax), %eax	# *e_3, D.14835
	cmpb	$10, %al	#, D.14835
	je	.L461	#,
	movq	-80(%rbp), %rax	# e, tmp513
	movzbl	(%rax), %eax	# *e_3, D.14835
	cmpb	$13, %al	#, D.14835
	je	.L461	#,
	movq	-80(%rbp), %rax	# e, tmp514
	movzbl	(%rax), %eax	# *e_3, D.14835
	cmpb	$12, %al	#, D.14835
	jne	.L462	#,
.L461:
	.loc 1 2828 0 is_stmt 1
	movq	-80(%rbp), %rax	# e, tmp515
	movq	%rax, -72(%rbp)	# tmp515, p
	.loc 1 2829 0
	jmp	.L463	#
.L464:
	.loc 1 2830 0
	addq	$1, -72(%rbp)	#, p
.L463:
	.loc 1 2829 0 discriminator 1
	movq	-72(%rbp), %rax	# p, tmp516
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$32, %al	#, D.14835
	je	.L464	#,
	.loc 1 2829 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# p, tmp517
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$9, %al	#, D.14835
	je	.L464	#,
	.loc 1 2829 0 discriminator 1
	movq	-72(%rbp), %rax	# p, tmp518
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$10, %al	#, D.14835
	je	.L464	#,
	movq	-72(%rbp), %rax	# p, tmp519
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$13, %al	#, D.14835
	je	.L464	#,
	movq	-72(%rbp), %rax	# p, tmp520
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$12, %al	#, D.14835
	je	.L464	#,
	.loc 1 2831 0 is_stmt 1
	movq	-72(%rbp), %rax	# p, tmp521
	movzbl	(%rax), %eax	# *p_5, D.14835
	testb	%al, %al	# D.14835
	je	.L465	#,
	.loc 1 2831 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p, tmp522
	movzbl	(%rax), %eax	# *p_5, D.14835
	cmpb	$45, %al	#, D.14835
	jne	.L466	#,
.L465:
	.loc 1 2832 0 is_stmt 1
	movq	-80(%rbp), %rdx	# e, e.789
	movq	-120(%rbp), %rax	# s, s.790
	subq	%rax, %rdx	# s.791, D.14837
	movq	%rdx, %rax	# D.14837, D.14837
	movl	%eax, %edx	# D.14837, D.14836
	movq	-120(%rbp), %rax	# s, s.792
	movl	%edx, %esi	# D.14836,
	movq	%rax, %rdi	# s.792,
	call	Perl_savepvn	#
	movq	%rax, -80(%rbp)	# tmp523, e
	.loc 1 2833 0
	movq	-80(%rbp), %rax	# e, tmp524
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp524,
	call	S_incpush	#
	.loc 1 2834 0
	movq	-80(%rbp), %rax	# e, tmp525
	movq	%rax, %rdi	# tmp525,
	call	Perl_safesysfree	#
	.loc 1 2835 0
	movq	-72(%rbp), %rax	# p, tmp526
	movq	%rax, -120(%rbp)	# tmp526, s
	.loc 1 2836 0
	movq	-120(%rbp), %rax	# s, s.793
	movzbl	(%rax), %eax	# *s.793_349, D.14835
	cmpb	$45, %al	#, D.14835
	jne	.L467	#,
	.loc 1 2837 0
	movq	-120(%rbp), %rax	# s, s.794
	addq	$1, %rax	#, s.795
	movq	%rax, -120(%rbp)	# s.795, s
.LBE40:
	jmp	.L468	#
.L467:
	jmp	.L468	#
.L459:
	.loc 1 2840 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L468:
	.loc 1 2841 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L364:
	.loc 1 2843 0
	movb	$1, PL_minus_l(%rip)	#, PL_minus_l
	.loc 1 2844 0
	movq	-120(%rbp), %rax	# s, s.796
	addq	$1, %rax	#, s.797
	movq	%rax, -120(%rbp)	# s.797, s
	.loc 1 2845 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.798
	testq	%rax, %rax	# PL_ors_sv.798
	je	.L469	#,
	.loc 1 2846 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.799
	movq	%rax, %rdi	# PL_ors_sv.799,
	call	Perl_sv_free	#
	.loc 1 2847 0
	movq	$0, PL_ors_sv(%rip)	#, PL_ors_sv
.L469:
	.loc 1 2849 0
	movq	-120(%rbp), %rax	# s, s.800
	movzbl	(%rax), %eax	# *s.800_359, D.14835
	cmpb	$47, %al	#, D.14835
	jle	.L470	#,
	.loc 1 2849 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.801
	movzbl	(%rax), %eax	# *s.801_361, D.14835
	cmpb	$57, %al	#, D.14835
	jg	.L470	#,
.LBB41:
	.loc 1 2850 0 is_stmt 1
	movl	$0, -108(%rbp)	#, flags
	.loc 1 2851 0
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_ors_sv(%rip)	# PL_ors_sv.802, PL_ors_sv
	.loc 1 2852 0
	movq	-120(%rbp), %rax	# s, s.804
	movzbl	(%rax), %eax	# *s.804_364, D.14835
	cmpb	$48, %al	#, D.14835
	jne	.L471	#,
	.loc 1 2852 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.803
	jmp	.L472	#
.L471:
	.loc 1 2852 0 discriminator 2
	movl	$3, %eax	#, iftmp.803
.L472:
	.loc 1 2852 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.803, numlen
	.loc 1 2853 0 is_stmt 1 discriminator 3
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.805
	movq	(%rax), %rax	# PL_ors_sv.805_368->sv_any, D.14840
	movq	(%rax), %rbx	# MEM[(struct XPV *)_369].xpv_pv, D.14834
	movq	-120(%rbp), %rax	# s, s.806
	leaq	-108(%rbp), %rdx	#, tmp527
	leaq	-104(%rbp), %rsi	#, tmp528
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# s.806,
	call	Perl_grok_oct	#
	movb	%al, (%rbx)	# D.14835, *_370
	.loc 1 2854 0 discriminator 3
	movq	-120(%rbp), %rdx	# s, s.807
	movq	-104(%rbp), %rax	# numlen, numlen.808
	addq	%rdx, %rax	# s.807, s.809
	movq	%rax, -120(%rbp)	# s.809, s
.LBE41:
	.loc 1 2849 0 discriminator 3
	jmp	.L473	#
.L470:
	.loc 1 2857 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.810
	movl	12(%rax), %eax	# PL_rs.810_377->sv_flags, D.14839
	andl	$262144, %eax	#, D.14839
	testl	%eax, %eax	# D.14839
	je	.L474	#,
	.loc 1 2857 0 is_stmt 0 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.811
	movq	(%rax), %rax	# PL_rs.811_380->sv_any, D.14840
	movq	8(%rax), %rax	# MEM[(struct XPV *)_381].xpv_cur, D.14838
	testq	%rax, %rax	# D.14838
	jne	.L474	#,
	.loc 1 2858 0 is_stmt 1
	movl	$2, %esi	#,
	movl	$.LC68, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_ors_sv(%rip)	# PL_ors_sv.812, PL_ors_sv
	jmp	.L473	#
.L474:
	.loc 1 2861 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.813
	movq	%rax, %rdi	# PL_rs.813,
	call	Perl_newSVsv	#
	movq	%rax, PL_ors_sv(%rip)	# PL_ors_sv.814, PL_ors_sv
.L473:
	.loc 1 2864 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L353:
	.loc 1 2866 0
	movl	$.LC69, %edi	#,
	call	S_forbid_setid	#
.L365:
	.loc 1 2869 0
	movl	$.LC70, %edi	#,
	call	S_forbid_setid	#
	.loc 1 2870 0
	movq	-120(%rbp), %rax	# s, s.815
	addq	$1, %rax	#, s.816
	movq	%rax, -120(%rbp)	# s.816, s
	movq	-120(%rbp), %rax	# s, s.817
	movzbl	(%rax), %eax	# *s.817_389, D.14835
	testb	%al, %al	# D.14835
	je	.L475	#,
.LBB42:
	.loc 1 2873 0
	movq	$.LC71, -64(%rbp)	#, use
	.loc 1 2875 0
	movq	-120(%rbp), %rax	# s, s.818
	movzbl	(%rax), %eax	# *s.818_392, D.14835
	cmpb	$45, %al	#, D.14835
	jne	.L476	#,
	.loc 1 2875 0 is_stmt 0 discriminator 1
	movq	$.LC72, -64(%rbp)	#, use
	movq	-120(%rbp), %rax	# s, s.819
	addq	$1, %rax	#, s.820
	movq	%rax, -120(%rbp)	# s.820, s
.L476:
	.loc 1 2876 0 is_stmt 1
	movq	-64(%rbp), %rax	# use, tmp529
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp529,
	call	Perl_newSVpv	#
	movq	%rax, -32(%rbp)	# tmp530, sv
	.loc 1 2877 0
	movq	-120(%rbp), %rax	# s, tmp531
	movq	%rax, -24(%rbp)	# tmp531, start
	.loc 1 2879 0
	jmp	.L477	#
.L479:
	.loc 1 2879 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.821
	addq	$1, %rax	#, s.822
	movq	%rax, -120(%rbp)	# s.822, s
.L477:
	movq	-120(%rbp), %rax	# s, s.823
	movzbl	(%rax), %eax	# *s.823_399, D.14835
	cmpb	$64, %al	#, D.14835
	jle	.L478	#,
	.loc 1 2879 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.824
	movzbl	(%rax), %eax	# *s.824_401, D.14835
	cmpb	$90, %al	#, D.14835
	jle	.L479	#,
.L478:
	.loc 1 2879 0 discriminator 3
	movq	-120(%rbp), %rax	# s, s.825
	movzbl	(%rax), %eax	# *s.825_403, D.14835
	cmpb	$96, %al	#, D.14835
	jle	.L480	#,
	.loc 1 2879 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.826
	movzbl	(%rax), %eax	# *s.826_405, D.14835
	cmpb	$122, %al	#, D.14835
	jle	.L479	#,
.L480:
	.loc 1 2879 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.827
	movzbl	(%rax), %eax	# *s.827_407, D.14835
	cmpb	$47, %al	#, D.14835
	jle	.L481	#,
	.loc 1 2879 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.828
	movzbl	(%rax), %eax	# *s.828_409, D.14835
	cmpb	$57, %al	#, D.14835
	jle	.L479	#,
.L481:
	.loc 1 2879 0 discriminator 2
	movq	-120(%rbp), %rax	# s, s.829
	movzbl	(%rax), %eax	# *s.829_411, D.14835
	cmpb	$95, %al	#, D.14835
	je	.L479	#,
	.loc 1 2879 0 discriminator 1
	movq	-120(%rbp), %rax	# s, s.830
	movzbl	(%rax), %eax	# *s.830_413, D.14835
	cmpb	$58, %al	#, D.14835
	je	.L479	#,
	.loc 1 2880 0 is_stmt 1
	movq	-120(%rbp), %rax	# s, s.831
	movzbl	(%rax), %eax	# *s.831_415, D.14835
	cmpb	$61, %al	#, D.14835
	je	.L482	#,
	.loc 1 2881 0
	movq	-24(%rbp), %rdx	# start, tmp532
	movq	-32(%rbp), %rax	# sv, tmp533
	movq	%rdx, %rsi	# tmp532,
	movq	%rax, %rdi	# tmp533,
	call	Perl_sv_catpv	#
	.loc 1 2882 0
	movq	-24(%rbp), %rax	# start, tmp534
	subq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_417, D.14835
	cmpb	$109, %al	#, D.14835
	jne	.L485	#,
	.loc 1 2883 0
	movq	-120(%rbp), %rax	# s, s.832
	movzbl	(%rax), %eax	# *s.832_419, D.14835
	testb	%al, %al	# D.14835
	je	.L484	#,
	.loc 1 2884 0
	movq	-120(%rbp), %rax	# s, s.833
	movzbl	(%rax), %eax	# *s.833_421, D.14835
	movsbl	%al, %eax	# D.14835, D.14836
	movl	%eax, %esi	# D.14836,
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L484:
	.loc 1 2885 0
	movq	-32(%rbp), %rax	# sv, tmp535
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp535,
	call	Perl_sv_catpv	#
	jmp	.L485	#
.L482:
	.loc 1 2888 0
	movq	-120(%rbp), %rax	# s, s.834
	cmpq	-24(%rbp), %rax	# start, s.834
	jne	.L486	#,
	.loc 1 2890 0
	movq	-120(%rbp), %rax	# s, s.835
	subq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_426, D.14835
	.loc 1 2889 0
	movsbl	%al, %eax	# D.14835, D.14836
	movl	%eax, %esi	# D.14836,
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L486:
	.loc 1 2891 0
	movq	-120(%rbp), %rax	# s, s.836
	movq	%rax, %rdx	# s.836, s.837
	movq	-24(%rbp), %rax	# start, start.838
	subq	%rax, %rdx	# start.838, D.14837
	movq	%rdx, %rax	# D.14837, D.14837
	movq	%rax, %rdx	# D.14837, D.14838
	movq	-24(%rbp), %rsi	# start, tmp536
	movq	-32(%rbp), %rax	# sv, tmp537
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp537,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2892 0
	movq	-32(%rbp), %rax	# sv, tmp538
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp538,
	call	Perl_sv_catpv	#
	.loc 1 2893 0
	movq	-32(%rbp), %rax	# sv, tmp539
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp539,
	call	Perl_sv_catpvn_flags	#
	.loc 1 2894 0
	movq	-120(%rbp), %rax	# s, s.839
	addq	$1, %rax	#, s.840
	movq	%rax, -120(%rbp)	# s.840, s
	movq	-120(%rbp), %rdx	# s, s.841
	movq	-32(%rbp), %rax	# sv, tmp540
	movq	%rdx, %rsi	# s.841,
	movq	%rax, %rdi	# tmp540,
	call	Perl_sv_catpv	#
	.loc 1 2895 0
	movq	-32(%rbp), %rax	# sv, tmp541
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp541,
	call	Perl_sv_catpvn_flags	#
.L485:
	.loc 1 2897 0
	movq	-120(%rbp), %rbx	# s, s.842
	movq	-120(%rbp), %rax	# s, s.843
	movq	%rax, %rdi	# s.843,
	call	strlen	#
	addq	%rbx, %rax	# s.842, s.844
	movq	%rax, -120(%rbp)	# s.844, s
	.loc 1 2898 0
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.845
	testq	%rax, %rax	# PL_preambleav.845
	jne	.L487	#,
	.loc 1 2899 0
	call	Perl_newAV	#
	movq	%rax, PL_preambleav(%rip)	# PL_preambleav.846, PL_preambleav
.L487:
	.loc 1 2900 0
	movq	PL_preambleav(%rip), %rax	# PL_preambleav, PL_preambleav.847
	movq	-32(%rbp), %rdx	# sv, tmp542
	movq	%rdx, %rsi	# tmp542,
	movq	%rax, %rdi	# PL_preambleav.847,
	call	Perl_av_push	#
.LBE42:
	jmp	.L488	#
.L475:
	.loc 1 2903 0
	movq	-120(%rbp), %rax	# s, s.848
	subq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_447, D.14835
	movsbl	%al, %eax	# D.14835, D.14836
	movl	%eax, %esi	# D.14836,
	movl	$.LC78, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L488:
	.loc 1 2904 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L366:
	.loc 1 2906 0
	movb	$1, PL_minus_n(%rip)	#, PL_minus_n
	.loc 1 2907 0
	movq	-120(%rbp), %rax	# s, s.849
	addq	$1, %rax	#, s.850
	movq	%rax, -120(%rbp)	# s.850, s
	.loc 1 2908 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L367:
	.loc 1 2910 0
	movb	$1, PL_minus_p(%rip)	#, PL_minus_p
	.loc 1 2911 0
	movq	-120(%rbp), %rax	# s, s.851
	addq	$1, %rax	#, s.852
	movq	%rax, -120(%rbp)	# s.852, s
	.loc 1 2912 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L368:
	.loc 1 2914 0
	movl	$.LC79, %edi	#,
	call	S_forbid_setid	#
	.loc 1 2915 0
	movb	$1, PL_doswitches(%rip)	#, PL_doswitches
	.loc 1 2916 0
	movq	-120(%rbp), %rax	# s, s.853
	addq	$1, %rax	#, s.854
	movq	%rax, -120(%rbp)	# s.854, s
	.loc 1 2917 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L369:
	.loc 1 2919 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.855
	testb	%al, %al	# PL_tainting.855
	jne	.L489	#,
	.loc 1 2920 0
	movl	$.LC2, %edx	#,
	movl	$116, %esi	#,
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L489:
	.loc 1 2921 0
	movq	-120(%rbp), %rax	# s, s.856
	addq	$1, %rax	#, s.857
	movq	%rax, -120(%rbp)	# s.857, s
	.loc 1 2922 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L355:
	.loc 1 2924 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.858
	testb	%al, %al	# PL_tainting.858
	jne	.L490	#,
	.loc 1 2925 0
	movl	$.LC2, %edx	#,
	movl	$84, %esi	#,
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L490:
	.loc 1 2926 0
	movq	-120(%rbp), %rax	# s, s.859
	addq	$1, %rax	#, s.860
	movq	%rax, -120(%rbp)	# s.860, s
	.loc 1 2927 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L370:
	.loc 1 2932 0
	movb	$1, PL_do_undump(%rip)	#, PL_do_undump
	.loc 1 2933 0
	movq	-120(%rbp), %rax	# s, s.861
	addq	$1, %rax	#, s.862
	movq	%rax, -120(%rbp)	# s.862, s
	.loc 1 2934 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L356:
	.loc 1 2936 0
	movb	$1, PL_unsafe(%rip)	#, PL_unsafe
	.loc 1 2937 0
	movq	-120(%rbp), %rax	# s, s.863
	addq	$1, %rax	#, s.864
	movq	%rax, -120(%rbp)	# s.864, s
	.loc 1 2938 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L371:
	.loc 1 2941 0
	movq	PL_patchlevel(%rip), %rax	# PL_patchlevel, PL_patchlevel.865
	.loc 1 2942 0
	movl	$.LC81, %edx	#,
	movq	%rax, %rsi	# PL_patchlevel.865,
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	Perl_form	#
	movq	%rax, %rbx	#, D.14834
	.loc 1 2941 0
	call	Perl_PerlIO_stdout	#
	movq	%rbx, %rsi	# D.14834,
	movq	%rax, %rdi	# D.14843,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 2965 0
	call	Perl_PerlIO_stdout	#
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# D.14843,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 3030 0
	call	Perl_PerlIO_stdout	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.14843,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 3037 0
	movl	$0, %edi	#,
	call	Perl_my_exit	#
.L372:
	.loc 1 3039 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.866
	movzbl	%al, %eax	# PL_dowarn.866, D.14836
	andl	$6, %eax	#, D.14836
	testl	%eax, %eax	# D.14836
	jne	.L491	#,
	.loc 1 3040 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.867
	orl	$1, %eax	#, PL_dowarn.868
	movb	%al, PL_dowarn(%rip)	# PL_dowarn.868, PL_dowarn
.L491:
	.loc 1 3041 0
	movq	-120(%rbp), %rax	# s, s.869
	addq	$1, %rax	#, s.870
	movq	%rax, -120(%rbp)	# s.870, s
	.loc 1 3042 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L357:
	.loc 1 3044 0
	movb	$3, PL_dowarn(%rip)	#, PL_dowarn
	.loc 1 3045 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	testq	%rax, %rax	# D.14841
	je	.L492	#,
	.loc 1 3045 0 is_stmt 0 discriminator 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	cmpq	$16, %rax	#, D.14841
	je	.L492	#,
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	cmpq	$32, %rax	#, D.14841
	je	.L492	#,
	.loc 1 3046 0 is_stmt 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	movq	%rax, %rdi	# D.14841,
	call	Perl_sv_free	#
.L492:
	.loc 1 3047 0
	movq	$16, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	.loc 1 3048 0
	movq	-120(%rbp), %rax	# s, s.871
	addq	$1, %rax	#, s.872
	movq	%rax, -120(%rbp)	# s.872, s
	.loc 1 3049 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L358:
	.loc 1 3051 0
	movb	$4, PL_dowarn(%rip)	#, PL_dowarn
	.loc 1 3052 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	testq	%rax, %rax	# D.14841
	je	.L493	#,
	.loc 1 3052 0 is_stmt 0 discriminator 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	cmpq	$16, %rax	#, D.14841
	je	.L493	#,
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	cmpq	$32, %rax	#, D.14841
	je	.L493	#,
	.loc 1 3053 0 is_stmt 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.14841
	movq	%rax, %rdi	# D.14841,
	call	Perl_sv_free	#
.L493:
	.loc 1 3054 0
	movq	$32, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	.loc 1 3055 0
	movq	-120(%rbp), %rax	# s, s.873
	addq	$1, %rax	#, s.874
	movq	%rax, -120(%rbp)	# s.874, s
	.loc 1 3056 0
	movq	-120(%rbp), %rax	# s, D.14834
	jmp	.L496	#
.L347:
	.loc 1 3059 0
	movq	-120(%rbp), %rax	# s, s.875
	addq	$1, %rax	#, D.14834
	movzbl	(%rax), %eax	# *_502, D.14835
	cmpb	$45, %al	#, D.14835
	jne	.L494	#,
	.loc 1 3060 0
	movq	-120(%rbp), %rax	# s, s.876
	addq	$2, %rax	#, D.14834
	jmp	.L496	#
.L494:
	.loc 1 3061 0
	jmp	.L495	#
.L354:
	.loc 1 3075 0
	movzbl	PL_preprocess(%rip), %eax	# PL_preprocess, PL_preprocess.877
	testb	%al, %al	# PL_preprocess.877
	je	.L344	#,
	.loc 1 3076 0
	movq	-120(%rbp), %rax	# s, s.878
	addq	$1, %rax	#, D.14834
	jmp	.L496	#
.L344:
	.loc 1 3079 0
	movq	-120(%rbp), %rax	# s, s.879
	movq	%rax, %rsi	# s.879,
	movl	$.LC85, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L495	#
.L497:
	.loc 1 3069 0
	nop
.L495:
	.loc 1 3081 0
	movl	$0, %eax	#, D.14834
.L496:
	.loc 1 3082 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_moreswitches, .-Perl_moreswitches
	.globl	Perl_my_unexec
	.type	Perl_my_unexec, @function
Perl_my_unexec:
.LFB27:
	.loc 1 3091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3116 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_my_unexec, .-Perl_my_unexec
	.section	.rodata
.LC86:
	.string	"/bin/sh"
.LC87:
	.string	" \n-"
	.text
	.type	S_init_interp, @function
S_init_interp:
.LFB28:
	.loc 1 3121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.file 2 "intrpvar.h"
	.loc 2 33 0
	movq	$.LC14, PL_splitstr(%rip)	#, PL_splitstr
	.loc 2 63 0
	movl	$0, PL_perl_destruct_level(%rip)	#, PL_perl_destruct_level
	.loc 2 70 0
	movl	$2, PL_maxsysfd(%rip)	#, PL_maxsysfd
	.loc 2 137 0
	movl	$1, PL_sub_generation(%rip)	#, PL_sub_generation
	.loc 2 153 0
	movq	$0, PL_op_mask(%rip)	#, PL_op_mask
	.loc 2 163 0
	movq	$0, PL_curcopdb(%rip)	#, PL_curcopdb
	.loc 2 164 0
	movl	$-1, PL_copline(%rip)	#, PL_copline
	.loc 2 172 0
	movl	$0, PL_gensym(%rip)	#, PL_gensym
	.loc 2 175 0
	movl	$-1, PL_laststatval(%rip)	#, PL_laststatval
	.loc 2 176 0
	movl	$235, PL_laststype(%rip)	#, PL_laststype
	.loc 2 184 0
	movq	$0, PL_exitlist(%rip)	#, PL_exitlist
	.loc 2 186 0
	movl	$0, PL_exitlistlen(%rip)	#, PL_exitlistlen
	.loc 2 203 0
	movq	$0, PL_profiledata(%rip)	#, PL_profiledata
	.loc 2 204 0
	movq	$0, PL_rsfp(%rip)	#, PL_rsfp
	.loc 2 205 0
	movq	$0, PL_rsfp_filters(%rip)	#, PL_rsfp_filters
	.loc 2 221 0
	movl	$100, PL_generation(%rip)	#, PL_generation
	.loc 2 224 0
	movb	$0, PL_in_clean_objs(%rip)	#, PL_in_clean_objs
	.loc 2 225 0
	movb	$0, PL_in_clean_all(%rip)	#, PL_in_clean_all
	.loc 2 242 0
	movl	$0, PL_an(%rip)	#, PL_an
	.loc 2 243 0
	movl	$0, PL_cop_seqmax(%rip)	#, PL_cop_seqmax
	.loc 2 244 0
	movw	$0, PL_op_seqmax(%rip)	#, PL_op_seqmax
	.loc 2 245 0
	movl	$0, PL_evalseq(%rip)	#, PL_evalseq
	.loc 2 249 0
	movl	$352, PL_maxo(%rip)	#, PL_maxo
	.loc 2 253 0
	movq	$.LC86, PL_sh_path_compat(%rip)	#, PL_sh_path_compat
	.loc 2 274 0
	movq	$Perl_runops_standard, PL_runops(%rip)	#, PL_runops
	.loc 2 298 0
	movq	$.LC2, PL_cshname(%rip)	#, PL_cshname
	.loc 2 299 0
	movl	$0, PL_cshlen(%rip)	#, PL_cshlen
	.loc 2 328 0
	movl	$3, PL_expect(%rip)	#, PL_expect
	.loc 2 358 0
	movq	$0, PL_amagic_generation(%rip)	#, PL_amagic_generation
	.loc 2 414 0
	movl	$0, PL_glob_index(%rip)	#, PL_glob_index
	.loc 2 457 0
	movq	$0, PL_beginav_save(%rip)	#, PL_beginav_save
	.loc 2 482 0
	movl	$0, PL_sig_pending(%rip)	#, PL_sig_pending
	.loc 2 500 0
	movb	$0, PL_savebegin(%rip)	#, PL_savebegin
	.loc 2 506 0
	movq	$0, PL_perlio(%rip)	#, PL_perlio
	.loc 2 507 0
	movq	$0, PL_known_layers(%rip)	#, PL_known_layers
	.loc 2 508 0
	movq	$0, PL_def_layerlist(%rip)	#, PL_def_layerlist
	.loc 2 511 0
	movq	$0, PL_encoding(%rip)	#, PL_encoding
	.loc 2 530 0
	movq	$0, PL_checkav_save(%rip)	#, PL_checkav_save
	.loc 2 532 0
	movq	$0, PL_clocktick(%rip)	#, PL_clocktick
	.loc 2 534 0
	movl	$0, PL_in_load_module(%rip)	#, PL_in_load_module
	.loc 2 545 0
	movq	$Perl_sv_nosharing, PL_sharehook(%rip)	#, PL_sharehook
	.loc 2 546 0
	movq	$Perl_sv_nolocking, PL_lockhook(%rip)	#, PL_lockhook
	.loc 2 547 0
	movq	$Perl_sv_nounlocking, PL_unlockhook(%rip)	#, PL_unlockhook
	.loc 2 548 0
	movq	$Perl_nothreadhook, PL_threadhook(%rip)	#, PL_threadhook
	.loc 2 551 0
	movq	$Perl_runops_standard, PL_runops_std(%rip)	#, PL_runops_std
	.loc 2 552 0
	movq	$Perl_runops_debug, PL_runops_dbg(%rip)	#, PL_runops_dbg
	.loc 2 559 0
	movq	$0, PL_hash_seed(%rip)	#, PL_hash_seed
	.loc 2 561 0
	movb	$0, PL_hash_seed_set(%rip)	#, PL_hash_seed_set
	.loc 2 563 0
	movq	$0, PL_rehash_seed(%rip)	#, PL_rehash_seed
	.loc 2 565 0
	movb	$0, PL_rehash_seed_set(%rip)	#, PL_rehash_seed_set
	.loc 2 570 0
	movl	$-1, PL_fdscript(%rip)	#, PL_fdscript
	.loc 2 571 0
	movl	$-1, PL_suidscript(%rip)	#, PL_suidscript
	.file 3 "thrdvar.h"
	.loc 3 55 0
	movl	$-1, PL_tmps_ix(%rip)	#, PL_tmps_ix
	.loc 3 56 0
	movl	$-1, PL_tmps_floor(%rip)	#, PL_tmps_floor
	.loc 3 88 0
	movq	$0, PL_statname(%rip)	#, PL_statname
	.loc 3 119 0
	movq	$.LC87, PL_chopset(%rip)	#, PL_chopset
	.loc 3 129 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 3 132 0
	movb	$0, PL_dirty(%rip)	#, PL_dirty
	.loc 3 144 0
	movq	$0, PL_errors(%rip)	#, PL_errors
	.loc 3 154 0
	movl	$4, PL_dumpindent(%rip)	#, PL_dumpindent
	.loc 3 171 0
	movl	$-1, PL_maxscream(%rip)	#, PL_maxscream
	.loc 3 210 0
	movl	$0, PL_regindent(%rip)	#, PL_regindent
	.loc 3 218 0
	movq	$0, PL_reg_oldcurpm(%rip)	#, PL_reg_oldcurpm
	.loc 3 219 0
	movq	$0, PL_reg_curpm(%rip)	#, PL_reg_curpm
	.loc 3 224 0
	movq	$0, PL_reg_poscache(%rip)	#, PL_reg_poscache
	.loc 3 227 0
	movq	$Perl_peep, PL_peepp(%rip)	#, PL_peepp
	.loc 3 229 0
	movq	$Perl_pregcomp, PL_regcompp(%rip)	#, PL_regcompp
	.loc 3 231 0
	movq	$Perl_regexec_flags, PL_regexecp(%rip)	#, PL_regexecp
	.loc 3 233 0
	movq	$Perl_re_intuit_start, PL_regint_start(%rip)	#, PL_regint_start
	.loc 3 235 0
	movq	$Perl_re_intuit_string, PL_regint_string(%rip)	#, PL_regint_string
	.loc 3 237 0
	movq	$Perl_pregfree, PL_regfree(%rip)	#, PL_regfree
	.loc 3 240 0
	movl	$0, PL_reginterp_cnt(%rip)	#, PL_reginterp_cnt
	.loc 3 242 0
	movq	$0, PL_reg_starttry(%rip)	#, PL_reg_starttry
	.loc 3 243 0
	movq	$0, PL_watchaddr(%rip)	#, PL_watchaddr
	.loc 1 3161 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	S_init_interp, .-S_init_interp
	.section	.rodata
.LC88:
	.string	"main"
.LC89:
	.string	"main::"
.LC90:
	.string	"INC"
.LC91:
	.string	"\b"
.LC92:
	.string	"_"
.LC93:
	.string	"@"
.LC94:
	.string	"\022"
.LC95:
	.string	"%240s"
.LC96:
	.string	"DB::"
.LC97:
	.string	"CORE::GLOBAL::"
.LC98:
	.string	"<none>::"
	.text
	.type	S_init_main_stash, @function
S_init_main_stash:
.LFB29:
	.loc 1 3165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3168 0
	call	Perl_newHV	#
	movq	%rax, PL_defstash(%rip)	# PL_defstash.880, PL_defstash
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.881
	movq	%rax, PL_curstash(%rip)	# PL_defstash.881, PL_curstash
	.loc 1 3169 0
	movl	$4, %esi	#,
	movl	$.LC88, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_curstname(%rip)	# PL_curstname.882, PL_curstname
	.loc 1 3170 0
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC89, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp136, gv
	.loc 1 3171 0
	movq	-24(%rbp), %rax	# gv, tmp137
	movq	(%rax), %rax	# gv_4->sv_any, D.14874
	movq	56(%rax), %rax	# _5->xgv_gp, D.14875
	movq	40(%rax), %rax	# _6->gp_hv, D.14876
	movq	%rax, %rdi	# D.14876,
	call	Perl_sv_free	#
	.loc 1 3172 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.883
	movq	%rax, PL_Sv(%rip)	# PL_defstash.883, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.885
	testq	%rax, %rax	# PL_Sv.885
	je	.L502	#,
	.loc 1 3172 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.886
	movl	8(%rax), %edx	# PL_Sv.886_10->sv_refcnt, D.14877
	addl	$1, %edx	#, D.14877
	movl	%edx, 8(%rax)	# D.14877, PL_Sv.886_10->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.886_10->sv_refcnt, D.14877
	testl	%eax, %eax	# D.14877
	je	.L502	#,
	.loc 1 3172 0
	nop
.L502:
	.loc 1 3172 0 discriminator 4
	movq	-24(%rbp), %rax	# gv, tmp138
	movq	(%rax), %rax	# gv_4->sv_any, D.14874
	movq	56(%rax), %rax	# _16->xgv_gp, D.14875
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.887
	movq	%rdx, 40(%rax)	# PL_Sv.887, _17->gp_hv
	.loc 1 3173 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# gv, tmp139
	movl	12(%rax), %eax	# gv_4->sv_flags, D.14877
	orl	$8388608, %eax	#, D.14877
	movl	%eax, %edx	# D.14877, D.14877
	movq	-24(%rbp), %rax	# gv, tmp140
	movl	%edx, 12(%rax)	# D.14877, gv_4->sv_flags
	.loc 1 3174 0 discriminator 4
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.888
	movq	(%rax), %rbx	# PL_defstash.888_21->sv_any, D.14878
	movl	$.LC88, %edi	#,
	call	Perl_savepv	#
	movq	%rax, 80(%rbx)	# D.14879, _22->xhv_name
	.loc 1 3175 0 discriminator 4
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC90, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.14880,
	call	Perl_gv_AVadd	#
	movq	%rax, %rdi	# D.14880,
	call	Perl_gv_HVadd	#
	movq	%rax, PL_incgv(%rip)	# PL_incgv.889, PL_incgv
	.loc 1 3176 0 discriminator 4
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.890
	movq	(%rax), %rax	# PL_incgv.890_27->sv_any, D.14874
	movq	PL_incgv(%rip), %rdx	# PL_incgv, PL_incgv.891
	movq	(%rdx), %rdx	# PL_incgv.891_29->sv_any, D.14874
	movzbl	88(%rdx), %edx	# _30->xgv_flags, D.14881
	orl	$2, %edx	#, D.14881
	movb	%dl, 88(%rax)	# D.14881, _28->xgv_flags
	.loc 1 3177 0 discriminator 4
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC91, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_hintgv(%rip)	# PL_hintgv.892, PL_hintgv
	.loc 1 3178 0 discriminator 4
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.893
	movq	(%rax), %rax	# PL_hintgv.893_34->sv_any, D.14874
	movq	PL_hintgv(%rip), %rdx	# PL_hintgv, PL_hintgv.894
	movq	(%rdx), %rdx	# PL_hintgv.894_36->sv_any, D.14874
	movzbl	88(%rdx), %edx	# _37->xgv_flags, D.14881
	orl	$2, %edx	#, D.14881
	movb	%dl, 88(%rax)	# D.14881, _35->xgv_flags
	.loc 1 3179 0 discriminator 4
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC92, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_defgv(%rip)	# PL_defgv.895, PL_defgv
	.loc 1 3180 0 discriminator 4
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC93, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.14880,
	call	Perl_gv_HVadd	#
	movq	%rax, PL_errgv(%rip)	# PL_errgv.896, PL_errgv
	.loc 1 3181 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.897
	movq	(%rax), %rax	# PL_errgv.897_43->sv_any, D.14874
	movq	PL_errgv(%rip), %rdx	# PL_errgv, PL_errgv.898
	movq	(%rdx), %rdx	# PL_errgv.898_45->sv_any, D.14874
	movzbl	88(%rdx), %edx	# _46->xgv_flags, D.14881
	orl	$2, %edx	#, D.14881
	movb	%dl, 88(%rax)	# D.14881, _44->xgv_flags
	.loc 1 3182 0 discriminator 4
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC94, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_replgv(%rip)	# PL_replgv.899, PL_replgv
	.loc 1 3183 0 discriminator 4
	movq	PL_replgv(%rip), %rax	# PL_replgv, PL_replgv.900
	movq	(%rax), %rax	# PL_replgv.900_50->sv_any, D.14874
	movq	PL_replgv(%rip), %rdx	# PL_replgv, PL_replgv.901
	movq	(%rdx), %rdx	# PL_replgv.901_52->sv_any, D.14874
	movzbl	88(%rdx), %edx	# _53->xgv_flags, D.14881
	orl	$2, %edx	#, D.14881
	movb	%dl, 88(%rax)	# D.14881, _51->xgv_flags
	.loc 1 3184 0 discriminator 4
	movl	$.LC2, %esi	#,
	movl	$.LC95, %edi	#,
	movl	$0, %eax	#,
	call	Perl_form	#
	.loc 1 3185 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.902
	movq	(%rax), %rax	# PL_errgv.902_56->sv_any, D.14874
	movq	56(%rax), %rax	# _57->xgv_gp, D.14875
	movq	(%rax), %rax	# _58->gp_sv, D.14882
	movl	$240, %esi	#,
	movq	%rax, %rdi	# D.14882,
	call	Perl_sv_grow	#
	.loc 1 3186 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.903
	movq	(%rax), %rax	# PL_errgv.903_60->sv_any, D.14874
	movq	56(%rax), %rax	# _61->xgv_gp, D.14875
	movq	(%rax), %rax	# _62->gp_sv, D.14882
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.14882,
	call	Perl_sv_setpvn	#
	.loc 1 3187 0 discriminator 4
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.904
	movq	%rax, PL_curstash(%rip)	# PL_defstash.904, PL_curstash
	.loc 1 3188 0 discriminator 4
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.905
	movq	%rax, PL_compiling+48(%rip)	# PL_defstash.905, PL_compiling.cop_stash
	.loc 1 3189 0 discriminator 4
	movl	$11, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC96, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _66->sv_any, D.14874
	movq	56(%rax), %rax	# _67->xgv_gp, D.14875
	movq	40(%rax), %rax	# _68->gp_hv, PL_debstash.906
	movq	%rax, PL_debstash(%rip)	# PL_debstash.906, PL_debstash
	.loc 1 3190 0 discriminator 4
	movl	$11, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC97, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _70->sv_any, D.14874
	movq	56(%rax), %rax	# _71->xgv_gp, D.14875
	movq	40(%rax), %rax	# _72->gp_hv, PL_globalstash.907
	movq	%rax, PL_globalstash(%rip)	# PL_globalstash.907, PL_globalstash
	.loc 1 3191 0 discriminator 4
	movl	$11, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC98, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _74->sv_any, D.14874
	movq	56(%rax), %rax	# _75->xgv_gp, D.14875
	movq	40(%rax), %rax	# _76->gp_hv, PL_nullstash.908
	movq	%rax, PL_nullstash(%rip)	# PL_nullstash.908, PL_nullstash
	.loc 1 3193 0 discriminator 4
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	Perl_get_sv	#
	movl	$1, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.14882,
	call	Perl_sv_setpvn	#
	.loc 1 3194 0 discriminator 4
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	S_init_main_stash, .-S_init_main_stash
	.section	.rodata
.LC99:
	.string	"/dev/fd/"
	.align 8
.LC100:
	.string	"Wrong syntax (suid) fd script name \"%s\"\n"
	.align 8
.LC101:
	.string	"Missing (suid) fd script name\n"
.LC102:
	.string	"r"
.LC103:
	.string	"program input from stdin"
	.align 8
.LC104:
	.string	"Can't open perl script \"%s\": %s\n"
	.text
	.type	S_open_script, @function
S_open_script:
.LFB30:
	.loc 1 3199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# scriptname, scriptname
	movl	%esi, %eax	# dosearch, tmp127
	movq	%rdx, -40(%rbp)	# sv, sv
	movb	%al, -28(%rbp)	# tmp127, dosearch
	.loc 1 3207 0
	movl	$-1, PL_fdscript(%rip)	#, PL_fdscript
	.loc 1 3208 0
	movl	$-1, PL_suidscript(%rip)	#, PL_suidscript
	.loc 1 3210 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.909
	testq	%rax, %rax	# PL_e_script.909
	je	.L504	#,
	.loc 1 3211 0
	movl	$.LC11, %edi	#,
	call	Perl_savepv	#
	movq	%rax, PL_origfilename(%rip)	# PL_origfilename.910, PL_origfilename
	jmp	.L505	#
.L504:
	.loc 1 3215 0
	movsbl	-28(%rbp), %esi	# dosearch, D.14894
	movq	-24(%rbp), %rax	# scriptname, tmp128
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp128,
	call	Perl_find_script	#
	movq	%rax, -24(%rbp)	# tmp129, scriptname
	movq	-24(%rbp), %rax	# scriptname, tmp130
	movq	%rax, PL_origfilename(%rip)	# tmp130, PL_origfilename
	.loc 1 3217 0
	movq	-24(%rbp), %rax	# scriptname, tmp131
	movl	$8, %edx	#,
	movl	$.LC99, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	strncmp	#
	testl	%eax, %eax	# D.14894
	jne	.L505	#,
	.loc 1 3217 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# scriptname, tmp132
	addq	$8, %rax	#, D.14895
	movzbl	(%rax), %eax	# *_13, D.14896
	cmpb	$47, %al	#, D.14896
	jle	.L505	#,
	movq	-24(%rbp), %rax	# scriptname, tmp133
	addq	$8, %rax	#, D.14895
	movzbl	(%rax), %eax	# *_15, D.14896
	cmpb	$57, %al	#, D.14896
	jg	.L505	#,
.LBB43:
	.loc 1 3218 0 is_stmt 1
	movq	-24(%rbp), %rax	# scriptname, tmp137
	addq	$8, %rax	#, tmp136
	movq	%rax, -8(%rbp)	# tmp136, s
	.loc 1 3219 0
	movq	-8(%rbp), %rax	# s, tmp138
	movq	%rax, %rdi	# tmp138,
	call	atoi	#
	movl	%eax, PL_fdscript(%rip)	# PL_fdscript.911, PL_fdscript
	.loc 1 3220 0
	jmp	.L506	#
.L508:
	.loc 1 3221 0
	addq	$1, -8(%rbp)	#, s
.L506:
	.loc 1 3220 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp139
	movzbl	(%rax), %eax	# *s_3, D.14896
	cmpb	$47, %al	#, D.14896
	jle	.L507	#,
	.loc 1 3220 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp140
	movzbl	(%rax), %eax	# *s_3, D.14896
	cmpb	$57, %al	#, D.14896
	jle	.L508	#,
.L507:
	.loc 1 3222 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp141
	movzbl	(%rax), %eax	# *s_3, D.14896
	testb	%al, %al	# D.14896
	je	.L505	#,
	.loc 1 3232 0
	movl	$1, PL_suidscript(%rip)	#, PL_suidscript
	.loc 1 3237 0
	movq	-8(%rbp), %rax	# s, tmp142
	movzbl	(%rax), %eax	# *s_3, D.14896
	cmpb	$47, %al	#, D.14896
	je	.L509	#,
	.loc 1 3238 0
	movq	-8(%rbp), %rax	# s, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$.LC100, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L509:
	.loc 1 3240 0
	movq	-8(%rbp), %rax	# s, tmp144
	addq	$1, %rax	#, D.14895
	movzbl	(%rax), %eax	# *_24, D.14896
	testb	%al, %al	# D.14896
	jne	.L510	#,
	.loc 1 3241 0
	movl	$.LC101, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L510:
	.loc 1 3243 0
	movq	-8(%rbp), %rax	# s, tmp145
	addq	$1, %rax	#, D.14897
	movq	%rax, %rdi	# D.14897,
	call	Perl_savepv	#
	movq	%rax, -24(%rbp)	# tmp146, scriptname
	.loc 1 3244 0
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.912
	movq	%rax, %rdi	# PL_origfilename.912,
	call	Perl_safesysfree	#
	.loc 1 3245 0
	movq	-24(%rbp), %rax	# scriptname, tmp147
	movq	%rax, PL_origfilename(%rip)	# tmp147, PL_origfilename
.L505:
.LBE43:
	.loc 1 3250 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.913
	movq	56(%rax), %rax	# PL_curcop.913_29->cop_filegv, D.14898
	movq	%rax, %rdi	# D.14898,
	call	Perl_sv_free	#
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.914
	movq	$0, 56(%rax)	#, PL_curcop.914_31->cop_filegv
	.loc 1 3251 0
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.915
	movq	%rax, %rdi	# PL_origfilename.915,
	call	Perl_gv_fetchfile	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.916, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.918
	testq	%rax, %rax	# PL_Sv.918
	je	.L512	#,
	.loc 1 3251 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.919
	movl	8(%rax), %edx	# PL_Sv.919_35->sv_refcnt, D.14899
	addl	$1, %edx	#, D.14899
	movl	%edx, 8(%rax)	# D.14899, PL_Sv.919_35->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.919_35->sv_refcnt, D.14899
	testl	%eax, %eax	# D.14899
	je	.L512	#,
	.loc 1 3251 0
	nop
.L512:
	.loc 1 3251 0 discriminator 4
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.920
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.921
	movq	%rdx, 56(%rax)	# PL_Sv.921, PL_curcop.920_41->cop_filegv
	.loc 1 3252 0 is_stmt 1 discriminator 4
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.922
	movzbl	(%rax), %eax	# *PL_origfilename.922_43, D.14896
	cmpb	$45, %al	#, D.14896
	jne	.L513	#,
	.loc 1 3252 0 is_stmt 0 discriminator 1
	movq	PL_origfilename(%rip), %rax	# PL_origfilename, PL_origfilename.923
	addq	$1, %rax	#, D.14895
	movzbl	(%rax), %eax	# *_46, D.14896
	testb	%al, %al	# D.14896
	jne	.L513	#,
	.loc 1 3253 0 is_stmt 1
	movq	$.LC2, -24(%rbp)	#, scriptname
.L513:
	.loc 1 3254 0
	movl	PL_fdscript(%rip), %eax	# PL_fdscript, PL_fdscript.924
	testl	%eax, %eax	# PL_fdscript.924
	js	.L514	#,
	.loc 1 3255 0
	movl	PL_fdscript(%rip), %eax	# PL_fdscript, PL_fdscript.925
	movl	$.LC102, %esi	#,
	movl	%eax, %edi	# PL_fdscript.925,
	call	PerlIO_fdopen	#
	movq	%rax, PL_rsfp(%rip)	# PL_rsfp.926, PL_rsfp
	.loc 1 3257 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.927
	testq	%rax, %rax	# PL_rsfp.927
	je	.L516	#,
	.loc 1 3259 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.928
	movq	%rax, %rdi	# PL_rsfp.928,
	call	Perl_PerlIO_fileno	#
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.14894,
	movl	$0, %eax	#,
	call	fcntl	#
	jmp	.L516	#
.L514:
	.loc 1 3346 0
	movq	-24(%rbp), %rax	# scriptname, tmp148
	movzbl	(%rax), %eax	# *scriptname_2, D.14896
	testb	%al, %al	# D.14896
	jne	.L517	#,
	.loc 1 3347 0
	movl	$.LC103, %edi	#,
	call	S_forbid_setid	#
	.loc 1 3348 0
	call	Perl_PerlIO_stdin	#
	movq	%rax, PL_rsfp(%rip)	# PL_rsfp.929, PL_rsfp
	jmp	.L516	#
.L517:
	.loc 1 3351 0
	movq	-24(%rbp), %rax	# scriptname, tmp149
	movl	$.LC102, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	PerlIO_open	#
	movq	%rax, PL_rsfp(%rip)	# PL_rsfp.930, PL_rsfp
	.loc 1 3353 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.931
	testq	%rax, %rax	# PL_rsfp.931
	je	.L516	#,
	.loc 1 3355 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.932
	movq	%rax, %rdi	# PL_rsfp.932,
	call	Perl_PerlIO_fileno	#
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.14894,
	movl	$0, %eax	#,
	call	fcntl	#
.L516:
	.loc 1 3359 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.933
	testq	%rax, %rax	# PL_rsfp.933
	jne	.L503	#,
	.loc 1 3362 0
	call	__errno_location	#
	.loc 1 3361 0
	movl	(%rax), %eax	# *_62, D.14894
	movl	%eax, %edi	# D.14894,
	call	strerror	#
	movq	%rax, %rdx	#, D.14895
	.loc 1 3362 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.935
	movq	56(%rax), %rax	# PL_curcop.935_65->cop_filegv, D.14898
	.loc 1 3361 0
	testq	%rax, %rax	# D.14898
	je	.L519	#,
	.loc 1 3362 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.936
	movq	56(%rax), %rax	# PL_curcop.936_67->cop_filegv, D.14898
	movq	(%rax), %rax	# _68->sv_any, D.14901
	movq	56(%rax), %rax	# _69->xgv_gp, D.14902
	movq	(%rax), %rax	# _70->gp_sv, D.14903
	testq	%rax, %rax	# D.14903
	je	.L519	#,
	.loc 1 3362 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.938
	movq	56(%rax), %rax	# PL_curcop.938_72->cop_filegv, D.14898
	testq	%rax, %rax	# D.14898
	je	.L520	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.939
	movq	56(%rax), %rax	# PL_curcop.939_74->cop_filegv, D.14898
	movq	(%rax), %rax	# _75->sv_any, D.14901
	movq	56(%rax), %rax	# _76->xgv_gp, D.14902
	movq	(%rax), %rax	# _77->gp_sv, iftmp.937
	jmp	.L521	#
.L520:
	.loc 1 3362 0 discriminator 2
	movl	$0, %eax	#, iftmp.937
.L521:
	.loc 1 3362 0 discriminator 3
	movq	(%rax), %rax	# iftmp.937_5->sv_any, D.14904
	.loc 1 3361 0 is_stmt 1 discriminator 3
	movq	(%rax), %rax	# MEM[(struct XPV *)_80].xpv_pv, iftmp.934
	jmp	.L522	#
.L519:
	.loc 1 3361 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.934
.L522:
	.loc 1 3361 0 discriminator 2
	movq	%rax, %rsi	# iftmp.934,
	movl	$.LC104, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L503:
	.loc 1 3364 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	S_open_script, .-S_open_script
	.section	.rodata
	.align 8
.LC105:
	.string	"YOU HAVEN'T DISABLED SET-ID SCRIPTS IN THE KERNEL YET!\nFIX YOUR KERNEL, PUT A C WRAPPER AROUND THIS SCRIPT, OR USE -u AND UNDUMP!\n"
	.text
	.type	S_validate_suid, @function
S_validate_suid:
.LFB31:
	.loc 1 3503 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# validarg, validarg
	movq	%rsi, -16(%rbp)	# scriptname, scriptname
	.loc 1 3882 0
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.940
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.941
	cmpl	%eax, %edx	# PL_uid.941, PL_euid.940
	jne	.L524	#,
	.loc 1 3882 0 is_stmt 0 discriminator 1
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.942
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.943
	cmpl	%eax, %edx	# PL_gid.943, PL_egid.942
	je	.L523	#,
.L524:
	.loc 1 3884 0 is_stmt 1
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.944
	movq	%rax, %rdi	# PL_rsfp.944,
	call	Perl_PerlIO_fileno	#
	movl	$PL_statbuf, %esi	#,
	movl	%eax, %edi	# D.14911,
	call	fstat	#
	.loc 1 3885 0
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.945
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.946
	cmpl	%eax, %edx	# PL_uid.946, PL_euid.945
	je	.L526	#,
	.loc 1 3885 0 is_stmt 0 discriminator 1
	movl	PL_statbuf+28(%rip), %edx	# PL_statbuf.st_uid, D.14912
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.947
	cmpl	%eax, %edx	# PL_euid.947, D.14912
	jne	.L526	#,
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14912
	andl	$2048, %eax	#, D.14912
	testl	%eax, %eax	# D.14912
	jne	.L527	#,
.L526:
	.loc 1 3887 0 is_stmt 1
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.948
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.949
	.loc 1 3886 0
	cmpl	%eax, %edx	# PL_gid.949, PL_egid.948
	je	.L523	#,
	.loc 1 3887 0
	movl	PL_statbuf+32(%rip), %edx	# PL_statbuf.st_gid, D.14912
	movl	PL_egid(%rip), %eax	# PL_egid, PL_egid.950
	cmpl	%eax, %edx	# PL_egid.950, D.14912
	jne	.L523	#,
	.loc 1 3887 0 is_stmt 0 discriminator 1
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14912
	andl	$1024, %eax	#, D.14912
	testl	%eax, %eax	# D.14912
	je	.L523	#,
.L527:
	.loc 1 3889 0 is_stmt 1
	movzbl	PL_do_undump(%rip), %eax	# PL_do_undump, PL_do_undump.951
	testb	%al, %al	# PL_do_undump.951
	jne	.L523	#,
	.loc 1 3890 0
	movl	$.LC105, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L523:
	.loc 1 3896 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	S_validate_suid, .-S_validate_suid
	.section	.rodata
.LC106:
	.string	"-x"
	.align 8
.LC107:
	.string	"No Perl script found in input\n"
.LC108:
	.string	"perl"
.LC109:
	.string	"PERL"
	.text
	.type	S_find_beginning, @function
S_find_beginning:
.LFB32:
	.loc 1 3900 0
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
	.loc 1 3908 0
	movl	$.LC106, %edi	#,
	call	S_forbid_setid	#
	.loc 1 3929 0
	jmp	.L529	#
.L541:
	.loc 1 3930 0
	movq	PL_rsfp(%rip), %rcx	# PL_rsfp, PL_rsfp.952
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.953
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# PL_rsfp.952,
	movq	%rax, %rdi	# PL_linestr.953,
	call	Perl_sv_gets	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	jne	.L530	#,
	.loc 1 3931 0
	movl	$.LC107, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L530:
	.loc 1 3933 0
	movq	%rbx, %r12	# s, s2
	.loc 1 3934 0
	movzbl	(%rbx), %eax	# *s_9, D.14914
	cmpb	$35, %al	#, D.14914
	jne	.L529	#,
	.loc 1 3934 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_12, D.14914
	cmpb	$33, %al	#, D.14914
	jne	.L529	#,
	movl	$.LC108, %esi	#,
	movq	%rbx, %rdi	# s,
	call	Perl_instr	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	jne	.L531	#,
	movl	$.LC109, %esi	#,
	movq	%r12, %rdi	# s2,
	call	Perl_instr	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	je	.L529	#,
.L531:
	.loc 1 3935 0 is_stmt 1
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, PL_rsfp.954
	movl	$10, %esi	#,
	movq	%rax, %rdi	# PL_rsfp.954,
	call	PerlIO_ungetc	#
	.loc 1 3936 0
	movb	$0, PL_doextract(%rip)	#, PL_doextract
	.loc 1 3937 0
	jmp	.L532	#
.L534:
	.loc 1 3937 0 is_stmt 0 discriminator 1
	addq	$1, %rbx	#, s
.L532:
	movzbl	(%rbx), %eax	# *s_2, D.14914
	testb	%al, %al	# D.14914
	je	.L533	#,
	.loc 1 3937 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$32, %al	#, D.14914
	je	.L533	#,
	.loc 1 3937 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$9, %al	#, D.14914
	je	.L533	#,
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$10, %al	#, D.14914
	je	.L533	#,
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$13, %al	#, D.14914
	je	.L533	#,
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$12, %al	#, D.14914
	je	.L533	#,
	movzbl	(%rbx), %eax	# *s_2, D.14914
	cmpb	$35, %al	#, D.14914
	jne	.L534	#,
.L533:
	.loc 1 3938 0 is_stmt 1
	movq	%rbx, %r12	# s, s2
	.loc 1 3939 0
	jmp	.L535	#
.L536:
	.loc 1 3939 0 is_stmt 0 discriminator 2
	addq	$1, %rbx	#, s
.L535:
	.loc 1 3939 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_3, D.14914
	cmpb	$32, %al	#, D.14914
	je	.L536	#,
	.loc 1 3939 0 discriminator 3
	movzbl	(%rbx), %eax	# *s_3, D.14914
	cmpb	$9, %al	#, D.14914
	je	.L536	#,
	.loc 1 3940 0 is_stmt 1
	movq	%rbx, %rax	# s, s.955
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.955_28, D.14914
	cmpb	$45, %al	#, D.14914
	jne	.L529	#,
	.loc 1 3941 0
	jmp	.L537	#
.L539:
	.loc 1 3942 0 discriminator 1
	subq	$1, %r12	#, s2
.L537:
	.loc 1 3941 0 discriminator 1
	leaq	-1(%r12), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_31, D.14914
	cmpb	$47, %al	#, D.14914
	jle	.L538	#,
	.loc 1 3941 0 is_stmt 0 discriminator 2
	leaq	-1(%r12), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_33, D.14914
	cmpb	$57, %al	#, D.14914
	jle	.L539	#,
.L538:
	.loc 1 3941 0 discriminator 3
	leaq	-1(%r12), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_35, D.14914
	cmpb	$45, %al	#, D.14914
	je	.L539	#,
	.loc 1 3941 0 discriminator 1
	leaq	-1(%r12), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_37, D.14914
	cmpb	$46, %al	#, D.14914
	je	.L539	#,
	.loc 1 3942 0 is_stmt 1
	leaq	-1(%r12), %rax	#, D.14915
	movzbl	(%rax), %eax	# *_39, D.14914
	cmpb	$95, %al	#, D.14914
	je	.L539	#,
	.loc 1 3943 0
	leaq	-4(%r12), %rax	#, D.14916
	movl	$4, %edx	#,
	movl	$.LC108, %esi	#,
	movq	%rax, %rdi	# D.14916,
	call	strncmp	#
	testl	%eax, %eax	# D.14917
	jne	.L529	#,
.L540:
	.loc 1 3945 0 discriminator 1
	movq	%rbx, %rdi	# s,
	call	Perl_moreswitches	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	jne	.L540	#,
.L529:
	.loc 1 3929 0 discriminator 1
	movzbl	PL_doextract(%rip), %eax	# PL_doextract, PL_doextract.956
	testb	%al, %al	# PL_doextract.956
	jne	.L541	#,
	.loc 1 3964 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	S_find_beginning, .-S_find_beginning
	.type	S_init_ids, @function
S_init_ids:
.LFB33:
	.loc 1 3969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3970 0
	call	getuid	#
	movl	%eax, PL_uid(%rip)	# PL_uid.957, PL_uid
	.loc 1 3971 0
	call	geteuid	#
	movl	%eax, PL_euid(%rip)	# PL_euid.958, PL_euid
	.loc 1 3972 0
	call	getgid	#
	movl	%eax, PL_gid(%rip)	# PL_gid.959, PL_gid
	.loc 1 3973 0
	call	getegid	#
	movl	%eax, PL_egid(%rip)	# PL_egid.960, PL_egid
	.loc 1 3980 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.962
	testl	%eax, %eax	# PL_uid.962
	je	.L543	#,
	.loc 1 3980 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.963
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.964
	cmpl	%eax, %edx	# PL_uid.964, PL_euid.963
	jne	.L544	#,
	.loc 1 3980 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.965
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.966
	cmpl	%eax, %edx	# PL_gid.966, PL_egid.965
	je	.L543	#,
.L544:
	.loc 1 3980 0 discriminator 3
	movl	$1, %eax	#, iftmp.961
	jmp	.L545	#
.L543:
	.loc 1 3980 0 discriminator 2
	movl	$0, %eax	#, iftmp.961
.L545:
	.loc 1 3980 0 discriminator 5
	movl	%eax, %edx	# iftmp.961, D.14922
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.967
	orl	%edx, %eax	# D.14922, PL_tainting.968
	movb	%al, PL_tainting(%rip)	# PL_tainting.968, PL_tainting
	.loc 1 3990 0 is_stmt 1 discriminator 5
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	S_init_ids, .-S_init_ids
	.globl	Perl_doing_taint
	.type	Perl_doing_taint, @function
Perl_doing_taint:
.LFB34:
	.loc 1 3997 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# argc, argc
	movq	%rsi, -32(%rbp)	# argv, argv
	movq	%rdx, -40(%rbp)	# envp, envp
	.loc 1 4007 0
	call	getuid	#
	movl	%eax, -16(%rbp)	# D.14924, uid
	.loc 1 4008 0
	call	geteuid	#
	movl	%eax, -12(%rbp)	# D.14924, euid
	.loc 1 4009 0
	call	getgid	#
	movl	%eax, -8(%rbp)	# D.14924, gid
	.loc 1 4010 0
	call	getegid	#
	movl	%eax, -4(%rbp)	# D.14924, egid
	.loc 1 4016 0
	cmpl	$0, -16(%rbp)	#, uid
	je	.L547	#,
	.loc 1 4016 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# euid, tmp76
	cmpl	-16(%rbp), %eax	# uid, tmp76
	jne	.L548	#,
	movl	-4(%rbp), %eax	# egid, tmp77
	cmpl	-8(%rbp), %eax	# gid, tmp77
	je	.L547	#,
.L548:
	.loc 1 4017 0 is_stmt 1
	movl	$1, %eax	#, D.14923
	jmp	.L549	#
.L547:
	.loc 1 4022 0
	cmpl	$1, -20(%rbp)	#, argc
	jle	.L550	#,
	.loc 1 4022 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# argv, tmp78
	addq	$8, %rax	#, D.14925
	movq	(%rax), %rax	# *_13, D.14926
	movzbl	(%rax), %eax	# *_14, D.14923
	cmpb	$45, %al	#, D.14923
	jne	.L550	#,
	.loc 1 4023 0 is_stmt 1
	movq	-32(%rbp), %rax	# argv, tmp79
	addq	$8, %rax	#, D.14925
	movq	(%rax), %rax	# *_16, D.14926
	addq	$1, %rax	#, D.14926
	movzbl	(%rax), %eax	# *_18, D.14923
	cmpb	$116, %al	#, D.14923
	je	.L551	#,
	.loc 1 4023 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# argv, tmp80
	addq	$8, %rax	#, D.14925
	movq	(%rax), %rax	# *_20, D.14926
	addq	$1, %rax	#, D.14926
	movzbl	(%rax), %eax	# *_22, D.14923
	cmpb	$84, %al	#, D.14923
	jne	.L550	#,
.L551:
	.loc 1 4024 0 is_stmt 1
	movl	$1, %eax	#, D.14923
	jmp	.L549	#
.L550:
	.loc 1 4025 0
	movl	$0, %eax	#, D.14923
.L549:
	.loc 1 4026 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_doing_taint, .-Perl_doing_taint
	.section	.rodata
	.align 8
.LC110:
	.string	"No %s allowed with (suid) fdscript"
	.text
	.type	S_forbid_setid, @function
S_forbid_setid:
.LFB35:
	.loc 1 4030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 4059 0
	movl	PL_suidscript(%rip), %eax	# PL_suidscript, PL_suidscript.969
	testl	%eax, %eax	# PL_suidscript.969
	js	.L552	#,
	.loc 1 4060 0
	movq	-8(%rbp), %rax	# s, tmp60
	movq	%rax, %rsi	# tmp60,
	movl	$.LC110, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L552:
	.loc 1 4065 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	S_forbid_setid, .-S_forbid_setid
	.section	.rodata
.LC111:
	.string	"DB::args"
.LC112:
	.string	"DB::DB"
.LC113:
	.string	"DB::dbline"
.LC114:
	.string	"DB::sub"
.LC115:
	.string	"DB::single"
.LC116:
	.string	"DB::trace"
.LC117:
	.string	"DB::signal"
	.text
	.globl	Perl_init_debugger
	.type	Perl_init_debugger, @function
Perl_init_debugger:
.LFB36:
	.loc 1 4069 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4070 0
	movq	PL_curstash(%rip), %rax	# PL_curstash, tmp94
	movq	%rax, -8(%rbp)	# tmp94, ostash
	.loc 1 4072 0
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.970
	movq	%rax, PL_curstash(%rip)	# PL_debstash.970, PL_curstash
	.loc 1 4073 0
	movl	$10, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC111, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.14928,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _4->sv_any, D.14929
	movq	56(%rax), %rax	# _5->xgv_gp, D.14930
	movq	32(%rax), %rax	# _6->gp_av, PL_dbargs.971
	movq	%rax, PL_dbargs(%rip)	# PL_dbargs.971, PL_dbargs
	.loc 1 4074 0
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.972
	movq	(%rax), %rax	# PL_dbargs.972_8->sv_any, D.14931
	movq	PL_dbargs(%rip), %rdx	# PL_dbargs, PL_dbargs.973
	movq	(%rdx), %rdx	# PL_dbargs.973_10->sv_any, D.14931
	movzbl	72(%rdx), %edx	# _11->xav_flags, D.14932
	andl	$-2, %edx	#, D.14932
	movb	%dl, 72(%rax)	# D.14932, _9->xav_flags
	.loc 1 4075 0
	movl	$13, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC112, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_DBgv(%rip)	# PL_DBgv.974, PL_DBgv
	.loc 1 4076 0
	movl	$10, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC113, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_DBline(%rip)	# PL_DBline.975, PL_DBline
	.loc 1 4077 0
	movl	$11, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC114, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, %rdi	# D.14928,
	call	Perl_gv_HVadd	#
	movq	%rax, PL_DBsub(%rip)	# PL_DBsub.976, PL_DBsub
	.loc 1 4078 0
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.977
	movq	(%rax), %rax	# PL_DBsub.977_18->sv_any, D.14929
	movq	56(%rax), %rax	# _19->xgv_gp, D.14930
	movq	(%rax), %rax	# _20->gp_sv, D.14933
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14933,
	call	Perl_sv_upgrade	#
	.loc 1 4079 0
	movl	$4, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC115, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _22->sv_any, D.14929
	movq	56(%rax), %rax	# _23->xgv_gp, D.14930
	movq	(%rax), %rax	# _24->gp_sv, PL_DBsingle.978
	movq	%rax, PL_DBsingle(%rip)	# PL_DBsingle.978, PL_DBsingle
	.loc 1 4080 0
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.979
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_DBsingle.979,
	call	Perl_sv_setiv	#
	.loc 1 4081 0
	movl	$4, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC116, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _27->sv_any, D.14929
	movq	56(%rax), %rax	# _28->xgv_gp, D.14930
	movq	(%rax), %rax	# _29->gp_sv, PL_DBtrace.980
	movq	%rax, PL_DBtrace(%rip)	# PL_DBtrace.980, PL_DBtrace
	.loc 1 4082 0
	movq	PL_DBtrace(%rip), %rax	# PL_DBtrace, PL_DBtrace.981
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_DBtrace.981,
	call	Perl_sv_setiv	#
	.loc 1 4083 0
	movl	$4, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC117, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _32->sv_any, D.14929
	movq	56(%rax), %rax	# _33->xgv_gp, D.14930
	movq	(%rax), %rax	# _34->gp_sv, PL_DBsignal.982
	movq	%rax, PL_DBsignal(%rip)	# PL_DBsignal.982, PL_DBsignal
	.loc 1 4084 0
	movq	PL_DBsignal(%rip), %rax	# PL_DBsignal, PL_DBsignal.983
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_DBsignal.983,
	call	Perl_sv_setiv	#
	.loc 1 4085 0
	movq	-8(%rbp), %rax	# ostash, tmp95
	movq	%rax, PL_curstash(%rip)	# tmp95, PL_curstash
	.loc 1 4086 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_init_debugger, .-Perl_init_debugger
	.globl	Perl_init_stacks
	.type	Perl_init_stacks, @function
Perl_init_stacks:
.LFB37:
	.loc 1 4096 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4098 0
	movl	$55, %esi	#,
	movl	$128, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, PL_curstackinfo(%rip)	# PL_curstackinfo.984, PL_curstackinfo
	.loc 1 4100 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.985
	movl	$1, 24(%rax)	#, PL_curstackinfo.985_2->si_type
	.loc 1 4101 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.986
	movq	(%rax), %rax	# PL_curstackinfo.986_3->si_stack, PL_curstack.987
	movq	%rax, PL_curstack(%rip)	# PL_curstack.987, PL_curstack
	.loc 1 4102 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.988
	movq	%rax, PL_mainstack(%rip)	# PL_curstack.988, PL_mainstack
	.loc 1 4104 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.989
	movq	(%rax), %rax	# PL_curstack.989_6->sv_any, D.14941
	movq	(%rax), %rax	# _7->xav_array, PL_stack_base.990
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.990, PL_stack_base
	.loc 1 4105 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.991
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_base.991, PL_stack_sp
	.loc 1 4106 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.992
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.993
	movq	(%rax), %rax	# PL_curstack.993_11->sv_any, D.14941
	movq	16(%rax), %rax	# _12->xav_max, D.14942
	salq	$3, %rax	#, D.14943
	addq	%rdx, %rax	# PL_stack_base.992, PL_stack_max.994
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.994, PL_stack_max
	.loc 1 4108 0
	movl	$1024, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_tmps_stack(%rip)	# PL_tmps_stack.995, PL_tmps_stack
	.loc 1 4109 0
	movl	$-1, PL_tmps_floor(%rip)	#, PL_tmps_floor
	.loc 1 4110 0
	movl	$-1, PL_tmps_ix(%rip)	#, PL_tmps_ix
	.loc 1 4111 0
	movl	$128, PL_tmps_max(%rip)	#, PL_tmps_max
	.loc 1 4113 0
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_markstack(%rip)	# PL_markstack.996, PL_markstack
	.loc 1 4114 0
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.997
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack.997, PL_markstack_ptr
	.loc 1 4115 0
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.998
	subq	$-128, %rax	#, PL_markstack_max.999
	movq	%rax, PL_markstack_max(%rip)	# PL_markstack_max.999, PL_markstack_max
	.loc 1 4119 0
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_scopestack(%rip)	# PL_scopestack.1000, PL_scopestack
	.loc 1 4120 0
	movl	$0, PL_scopestack_ix(%rip)	#, PL_scopestack_ix
	.loc 1 4121 0
	movl	$32, PL_scopestack_max(%rip)	#, PL_scopestack_max
	.loc 1 4123 0
	movl	$1024, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_savestack(%rip)	# PL_savestack.1001, PL_savestack
	.loc 1 4124 0
	movl	$0, PL_savestack_ix(%rip)	#, PL_savestack_ix
	.loc 1 4125 0
	movl	$128, PL_savestack_max(%rip)	#, PL_savestack_max
	.loc 1 4127 0
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_retstack(%rip)	# PL_retstack.1002, PL_retstack
	.loc 1 4128 0
	movl	$0, PL_retstack_ix(%rip)	#, PL_retstack_ix
	.loc 1 4129 0
	movl	$16, PL_retstack_max(%rip)	#, PL_retstack_max
	.loc 1 4130 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_init_stacks, .-Perl_init_stacks
	.type	S_nuke_stacks, @function
S_nuke_stacks:
.LFB38:
	.loc 1 4136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4137 0
	jmp	.L557	#
.L558:
	.loc 1 4138 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1003
	movq	40(%rax), %rax	# PL_curstackinfo.1003_3->si_next, PL_curstackinfo.1004
	movq	%rax, PL_curstackinfo(%rip)	# PL_curstackinfo.1004, PL_curstackinfo
.L557:
	.loc 1 4137 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1005
	movq	40(%rax), %rax	# PL_curstackinfo.1005_1->si_next, D.14944
	testq	%rax, %rax	# D.14944
	jne	.L558	#,
	.loc 1 4139 0
	jmp	.L559	#
.L560:
.LBB44:
	.loc 1 4140 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1006
	movq	32(%rax), %rax	# PL_curstackinfo.1006_6->si_prev, tmp73
	movq	%rax, -8(%rbp)	# tmp73, p
	.loc 1 4142 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1007
	movq	8(%rax), %rax	# PL_curstackinfo.1007_8->si_cxstack, D.14945
	movq	%rax, %rdi	# D.14945,
	call	Perl_safesysfree	#
	.loc 1 4143 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1008
	movq	%rax, %rdi	# PL_curstackinfo.1008,
	call	Perl_safesysfree	#
	.loc 1 4144 0
	movq	-8(%rbp), %rax	# p, tmp74
	movq	%rax, PL_curstackinfo(%rip)	# tmp74, PL_curstackinfo
.L559:
.LBE44:
	.loc 1 4139 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1009
	testq	%rax, %rax	# PL_curstackinfo.1009
	jne	.L560	#,
	.loc 1 4146 0
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.1010
	movq	%rax, %rdi	# PL_tmps_stack.1010,
	call	Perl_safesysfree	#
	.loc 1 4147 0
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1011
	movq	%rax, %rdi	# PL_markstack.1011,
	call	Perl_safesysfree	#
	.loc 1 4148 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.1012
	movq	%rax, %rdi	# PL_scopestack.1012,
	call	Perl_safesysfree	#
	.loc 1 4149 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.1013
	movq	%rax, %rdi	# PL_savestack.1013,
	call	Perl_safesysfree	#
	.loc 1 4150 0
	movq	PL_retstack(%rip), %rax	# PL_retstack, PL_retstack.1014
	movq	%rax, %rdi	# PL_retstack.1014,
	call	Perl_safesysfree	#
	.loc 1 4151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	S_nuke_stacks, .-S_nuke_stacks
	.type	S_init_lexer, @function
S_init_lexer:
.LFB39:
	.loc 1 4155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4157 0
	movq	PL_rsfp(%rip), %rax	# PL_rsfp, tmp61
	movq	%rax, -8(%rbp)	# tmp61, tmpfp
	.loc 1 4158 0
	movq	$0, PL_rsfp(%rip)	#, PL_rsfp
	.loc 1 4159 0
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.1015
	movq	%rax, %rdi	# PL_linestr.1015,
	call	Perl_lex_start	#
	.loc 1 4160 0
	movq	-8(%rbp), %rax	# tmpfp, tmp62
	movq	%rax, PL_rsfp(%rip)	# tmp62, PL_rsfp
	.loc 1 4161 0
	movl	$4, %esi	#,
	movl	$.LC88, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_subname(%rip)	# PL_subname.1016, PL_subname
	.loc 1 4162 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	S_init_lexer, .-S_init_lexer
	.section	.rodata
.LC118:
	.string	"\""
.LC119:
	.string	"STDIN"
.LC120:
	.string	"stdin"
.LC121:
	.string	"STDOUT"
.LC122:
	.string	"stdout"
.LC123:
	.string	"STDERR"
.LC124:
	.string	"stderr"
	.text
	.type	S_init_predump_symbols, @function
S_init_predump_symbols:
.LFB40:
	.loc 1 4166 0
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
	.loc 1 4170 0
	movl	$1, %esi	#,
	movl	$.LC118, %edi	#,
	call	Perl_get_sv	#
	movl	$1, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# D.14946,
	call	Perl_sv_setpvn	#
	.loc 1 4171 0
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC119, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_stdingv(%rip)	# PL_stdingv.1017, PL_stdingv
	.loc 1 4172 0
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.1018
	movq	(%rax), %rax	# PL_stdingv.1018_3->sv_any, D.14947
	movq	PL_stdingv(%rip), %rdx	# PL_stdingv, PL_stdingv.1019
	movq	(%rdx), %rdx	# PL_stdingv.1019_5->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _6->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _4->xgv_flags
	.loc 1 4173 0
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, PL_stdingv.1020
	movq	(%rax), %rax	# PL_stdingv.1020_9->sv_any, D.14947
	movq	56(%rax), %rax	# _10->xgv_gp, D.14949
	movq	16(%rax), %rax	# _11->gp_io, tmp145
	movq	%rax, -32(%rbp)	# tmp145, io
	.loc 1 4174 0
	movq	-32(%rbp), %rax	# io, tmp146
	movq	(%rax), %rax	# io_12->sv_any, D.14950
	movb	$60, 162(%rax)	#, _13->xio_type
	.loc 1 4175 0
	movq	-32(%rbp), %rax	# io, tmp147
	movq	(%rax), %rbx	# io_12->sv_any, D.14950
	call	Perl_PerlIO_stdin	#
	movq	%rax, 56(%rbx)	# D.14951, _14->xio_ifp
	.loc 1 4176 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC120, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp148, tmpgv
	.loc 1 4177 0
	movq	-24(%rbp), %rax	# tmpgv, tmp149
	movq	(%rax), %rax	# tmpgv_16->sv_any, D.14947
	movq	-24(%rbp), %rdx	# tmpgv, tmp150
	movq	(%rdx), %rdx	# tmpgv_16->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _18->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _17->xgv_flags
	.loc 1 4178 0
	movq	-32(%rbp), %rax	# io, tmp151
	movq	%rax, PL_Sv(%rip)	# tmp151, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1022
	testq	%rax, %rax	# PL_Sv.1022
	je	.L564	#,
	.loc 1 4178 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1023
	movl	8(%rax), %edx	# PL_Sv.1023_22->sv_refcnt, D.14952
	addl	$1, %edx	#, D.14952
	movl	%edx, 8(%rax)	# D.14952, PL_Sv.1023_22->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1023_22->sv_refcnt, D.14952
	testl	%eax, %eax	# D.14952
	je	.L564	#,
	.loc 1 4178 0
	nop
.L564:
	.loc 1 4178 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp152
	movq	(%rax), %rax	# tmpgv_16->sv_any, D.14947
	movq	56(%rax), %rax	# _28->xgv_gp, D.14949
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1024
	movq	%rdx, 16(%rax)	# PL_Sv.1024, _29->gp_io
	.loc 1 4180 0 is_stmt 1 discriminator 4
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC121, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp153, tmpgv
	.loc 1 4181 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp154
	movq	(%rax), %rax	# tmpgv_31->sv_any, D.14947
	movq	-24(%rbp), %rdx	# tmpgv, tmp155
	movq	(%rdx), %rdx	# tmpgv_31->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _33->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _32->xgv_flags
	.loc 1 4182 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp156
	movq	(%rax), %rax	# tmpgv_31->sv_any, D.14947
	movq	56(%rax), %rax	# _36->xgv_gp, D.14949
	movq	16(%rax), %rax	# _37->gp_io, tmp157
	movq	%rax, -32(%rbp)	# tmp157, io
	.loc 1 4183 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp158
	movq	(%rax), %rax	# io_38->sv_any, D.14950
	movb	$62, 162(%rax)	#, _39->xio_type
	.loc 1 4184 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp159
	movq	(%rax), %r12	# io_38->sv_any, D.14950
	movq	-32(%rbp), %rax	# io, tmp160
	movq	(%rax), %rbx	# io_38->sv_any, D.14950
	call	Perl_PerlIO_stdout	#
	movq	%rax, 56(%rbx)	# D.14951, _41->xio_ifp
	movq	56(%rbx), %rax	# _41->xio_ifp, D.14951
	movq	%rax, 64(%r12)	# D.14951, _40->xio_ofp
	.loc 1 4185 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp161
	movq	%rax, %rdi	# tmp161,
	call	Perl_setdefout	#
	.loc 1 4186 0 discriminator 4
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC122, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp162, tmpgv
	.loc 1 4187 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp163
	movq	(%rax), %rax	# tmpgv_44->sv_any, D.14947
	movq	-24(%rbp), %rdx	# tmpgv, tmp164
	movq	(%rdx), %rdx	# tmpgv_44->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _46->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _45->xgv_flags
	.loc 1 4188 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp165
	movq	%rax, PL_Sv(%rip)	# tmp165, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1026
	testq	%rax, %rax	# PL_Sv.1026
	je	.L566	#,
	.loc 1 4188 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1027
	movl	8(%rax), %edx	# PL_Sv.1027_50->sv_refcnt, D.14952
	addl	$1, %edx	#, D.14952
	movl	%edx, 8(%rax)	# D.14952, PL_Sv.1027_50->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1027_50->sv_refcnt, D.14952
	testl	%eax, %eax	# D.14952
	je	.L566	#,
	.loc 1 4188 0
	nop
.L566:
	.loc 1 4188 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp166
	movq	(%rax), %rax	# tmpgv_44->sv_any, D.14947
	movq	56(%rax), %rax	# _56->xgv_gp, D.14949
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1028
	movq	%rdx, 16(%rax)	# PL_Sv.1028, _57->gp_io
	.loc 1 4190 0 is_stmt 1 discriminator 4
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC123, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_stderrgv(%rip)	# PL_stderrgv.1029, PL_stderrgv
	.loc 1 4191 0 discriminator 4
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1030
	movq	(%rax), %rax	# PL_stderrgv.1030_60->sv_any, D.14947
	movq	PL_stderrgv(%rip), %rdx	# PL_stderrgv, PL_stderrgv.1031
	movq	(%rdx), %rdx	# PL_stderrgv.1031_62->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _63->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _61->xgv_flags
	.loc 1 4192 0 discriminator 4
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1032
	movq	(%rax), %rax	# PL_stderrgv.1032_66->sv_any, D.14947
	movq	56(%rax), %rax	# _67->xgv_gp, D.14949
	movq	16(%rax), %rax	# _68->gp_io, tmp167
	movq	%rax, -32(%rbp)	# tmp167, io
	.loc 1 4193 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp168
	movq	(%rax), %rax	# io_69->sv_any, D.14950
	movb	$62, 162(%rax)	#, _70->xio_type
	.loc 1 4194 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp169
	movq	(%rax), %r12	# io_69->sv_any, D.14950
	movq	-32(%rbp), %rax	# io, tmp170
	movq	(%rax), %rbx	# io_69->sv_any, D.14950
	call	Perl_PerlIO_stderr	#
	movq	%rax, 56(%rbx)	# D.14951, _72->xio_ifp
	movq	56(%rbx), %rax	# _72->xio_ifp, D.14951
	movq	%rax, 64(%r12)	# D.14951, _71->xio_ofp
	.loc 1 4195 0 discriminator 4
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC124, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp171, tmpgv
	.loc 1 4196 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp172
	movq	(%rax), %rax	# tmpgv_75->sv_any, D.14947
	movq	-24(%rbp), %rdx	# tmpgv, tmp173
	movq	(%rdx), %rdx	# tmpgv_75->sv_any, D.14947
	movzbl	88(%rdx), %edx	# _77->xgv_flags, D.14948
	orl	$2, %edx	#, D.14948
	movb	%dl, 88(%rax)	# D.14948, _76->xgv_flags
	.loc 1 4197 0 discriminator 4
	movq	-32(%rbp), %rax	# io, tmp174
	movq	%rax, PL_Sv(%rip)	# tmp174, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1034
	testq	%rax, %rax	# PL_Sv.1034
	je	.L568	#,
	.loc 1 4197 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1035
	movl	8(%rax), %edx	# PL_Sv.1035_81->sv_refcnt, D.14952
	addl	$1, %edx	#, D.14952
	movl	%edx, 8(%rax)	# D.14952, PL_Sv.1035_81->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1035_81->sv_refcnt, D.14952
	testl	%eax, %eax	# D.14952
	je	.L568	#,
	.loc 1 4197 0
	nop
.L568:
	.loc 1 4197 0 discriminator 4
	movq	-24(%rbp), %rax	# tmpgv, tmp175
	movq	(%rax), %rax	# tmpgv_75->sv_any, D.14947
	movq	56(%rax), %rax	# _87->xgv_gp, D.14949
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1036
	movq	%rdx, 16(%rax)	# PL_Sv.1036, _88->gp_io
	.loc 1 4199 0 is_stmt 1 discriminator 4
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_statname(%rip)	# PL_statname.1037, PL_statname
	.loc 1 4201 0 discriminator 4
	movq	PL_osname(%rip), %rax	# PL_osname, PL_osname.1038
	testq	%rax, %rax	# PL_osname.1038
	je	.L569	#,
	.loc 1 4202 0
	movq	PL_osname(%rip), %rax	# PL_osname, PL_osname.1039
	movq	%rax, %rdi	# PL_osname.1039,
	call	Perl_safesysfree	#
.L569:
	.loc 1 4203 0
	movl	$.LC24, %edi	#,
	call	Perl_savepv	#
	movq	%rax, PL_osname(%rip)	# PL_osname.1040, PL_osname
	.loc 1 4204 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	S_init_predump_symbols, .-S_init_predump_symbols
	.section	.rodata
.LC125:
	.string	"ARGV"
	.text
	.globl	Perl_init_argv_symbols
	.type	Perl_init_argv_symbols, @function
Perl_init_argv_symbols:
.LFB41:
	.loc 1 4208 0
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
	movl	%edi, %r12d	# argc, argc
	movq	%rsi, %rbx	# argv, argv
	.loc 1 4210 0
	subl	$1, %r12d	#, argc
	addq	$8, %rbx	#, argv
	.loc 1 4211 0
	movzbl	PL_doswitches(%rip), %eax	# PL_doswitches, PL_doswitches.1041
	testb	%al, %al	# PL_doswitches.1041
	je	.L571	#,
	.loc 1 4212 0
	jmp	.L572	#
.L577:
	.loc 1 4213 0
	movq	(%rbx), %rax	# *argv_4, D.14960
	addq	$1, %rax	#, D.14960
	movzbl	(%rax), %eax	# *_17, D.14961
	testb	%al, %al	# D.14961
	jne	.L573	#,
	.loc 1 4214 0
	jmp	.L571	#
.L573:
	.loc 1 4215 0
	movq	(%rbx), %rax	# *argv_4, D.14960
	addq	$1, %rax	#, D.14960
	movzbl	(%rax), %eax	# *_20, D.14961
	cmpb	$45, %al	#, D.14961
	jne	.L574	#,
	.loc 1 4215 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *argv_4, D.14960
	addq	$2, %rax	#, D.14960
	movzbl	(%rax), %eax	# *_23, D.14961
	testb	%al, %al	# D.14961
	jne	.L574	#,
	.loc 1 4216 0 is_stmt 1
	subl	$1, %r12d	#, argc
	addq	$8, %rbx	#, argv
	.loc 1 4217 0
	jmp	.L571	#
.L574:
	.loc 1 4219 0
	movq	(%rbx), %rax	# *argv_4, D.14960
	movl	$61, %esi	#,
	movq	%rax, %rdi	# D.14960,
	call	strchr	#
	movq	%rax, -32(%rbp)	# tmp130, s
	cmpq	$0, -32(%rbp)	#, s
	je	.L575	#,
	.loc 1 4220 0
	movq	-32(%rbp), %rax	# s, s.1042
	leaq	1(%rax), %rdx	#, tmp131
	movq	%rdx, -32(%rbp)	# tmp131, s
	movb	$0, (%rax)	#, *s.1042_29
	.loc 1 4221 0
	movq	(%rbx), %rax	# *argv_4, D.14960
	addq	$1, %rax	#, D.14962
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _33->sv_any, D.14964
	movq	56(%rax), %rax	# _34->xgv_gp, D.14965
	movq	(%rax), %rax	# _35->gp_sv, D.14966
	movq	-32(%rbp), %rdx	# s, tmp132
	movq	%rdx, %rsi	# tmp132,
	movq	%rax, %rdi	# D.14966,
	call	Perl_sv_setpv	#
	jmp	.L576	#
.L575:
	.loc 1 4224 0
	movq	(%rbx), %rax	# *argv_4, D.14960
	addq	$1, %rax	#, D.14962
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _39->sv_any, D.14964
	movq	56(%rax), %rax	# _40->xgv_gp, D.14965
	movq	(%rax), %rax	# _41->gp_sv, D.14966
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14966,
	call	Perl_sv_setiv	#
.L576:
	.loc 1 4212 0
	subl	$1, %r12d	#, argc
	addq	$8, %rbx	#, argv
.L572:
	.loc 1 4212 0 is_stmt 0 discriminator 1
	testl	%r12d, %r12d	# argc
	jle	.L571	#,
	.loc 1 4212 0 discriminator 2
	movq	(%rbx), %rax	# *argv_4, D.14960
	movzbl	(%rax), %eax	# *_14, D.14961
	cmpb	$45, %al	#, D.14961
	je	.L577	#,
.L571:
	.loc 1 4227 0 is_stmt 1
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC125, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_argvgv(%rip)	# PL_argvgv.1043, PL_argvgv
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1044
	testq	%rax, %rax	# PL_argvgv.1044
	je	.L570	#,
	.loc 1 4228 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1045
	movq	(%rax), %rax	# PL_argvgv.1045_47->sv_any, D.14964
	movq	PL_argvgv(%rip), %rdx	# PL_argvgv, PL_argvgv.1046
	movq	(%rdx), %rdx	# PL_argvgv.1046_49->sv_any, D.14964
	movzbl	88(%rdx), %edx	# _50->xgv_flags, D.14967
	orl	$2, %edx	#, D.14967
	movb	%dl, 88(%rax)	# D.14967, _48->xgv_flags
	.loc 1 4229 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1047
	movq	%rax, %rdi	# PL_argvgv.1047,
	call	Perl_gv_AVadd	#
	.loc 1 4230 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1049
	movq	(%rax), %rax	# PL_argvgv.1049_54->sv_any, D.14964
	movq	56(%rax), %rax	# _55->xgv_gp, D.14965
	movq	32(%rax), %rax	# _56->gp_av, D.14968
	testq	%rax, %rax	# D.14968
	je	.L579	#,
	.loc 1 4230 0 is_stmt 0 discriminator 1
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1050
	movq	(%rax), %rax	# PL_argvgv.1050_58->sv_any, D.14964
	movq	56(%rax), %rax	# _59->xgv_gp, D.14965
	movq	32(%rax), %rax	# _60->gp_av, iftmp.1048
	jmp	.L580	#
.L579:
	.loc 1 4230 0 discriminator 2
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1051
	movq	%rax, %rdi	# PL_argvgv.1051,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _63->sv_any, D.14964
	movq	56(%rax), %rax	# _64->xgv_gp, D.14965
	movq	32(%rax), %rax	# _65->gp_av, iftmp.1048
.L580:
	.loc 1 4230 0 discriminator 3
	movq	%rax, %rdi	# iftmp.1048,
	call	Perl_av_clear	#
	.loc 1 4231 0 is_stmt 1 discriminator 3
	jmp	.L581	#
.L587:
.LBB45:
	.loc 1 4232 0
	movq	(%rbx), %rax	# *argv_6, D.14960
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14960,
	call	Perl_newSVpv	#
	movq	%rax, -24(%rbp)	# tmp133, sv
	.loc 1 4233 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1053
	movq	(%rax), %rax	# PL_argvgv.1053_69->sv_any, D.14964
	movq	56(%rax), %rax	# _70->xgv_gp, D.14965
	movq	32(%rax), %rax	# _71->gp_av, D.14968
	testq	%rax, %rax	# D.14968
	je	.L582	#,
	.loc 1 4233 0 is_stmt 0 discriminator 1
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1054
	movq	(%rax), %rax	# PL_argvgv.1054_73->sv_any, D.14964
	movq	56(%rax), %rax	# _74->xgv_gp, D.14965
	movq	32(%rax), %rax	# _75->gp_av, iftmp.1052
	jmp	.L583	#
.L582:
	.loc 1 4233 0 discriminator 2
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.1055
	movq	%rax, %rdi	# PL_argvgv.1055,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _78->sv_any, D.14964
	movq	56(%rax), %rax	# _79->xgv_gp, D.14965
	movq	32(%rax), %rax	# _80->gp_av, iftmp.1052
.L583:
	.loc 1 4233 0 discriminator 3
	movq	-24(%rbp), %rdx	# sv, tmp134
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# iftmp.1052,
	call	Perl_av_push	#
	.loc 1 4234 0 is_stmt 1 discriminator 3
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.1056
	andl	$64, %eax	#, D.14969
	testl	%eax, %eax	# D.14969
	je	.L584	#,
	.loc 1 4234 0 is_stmt 0 discriminator 1
	movzbl	PL_utf8locale(%rip), %eax	# PL_utf8locale, PL_utf8locale.1057
	testb	%al, %al	# PL_utf8locale.1057
	je	.L585	#,
.L584:
	.loc 1 4235 0 is_stmt 1
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.1058
	andl	$32, %eax	#, D.14969
	testl	%eax, %eax	# D.14969
	je	.L585	#,
	.loc 1 4236 0
	movq	-24(%rbp), %rax	# sv, tmp135
	movl	12(%rax), %eax	# sv_68->sv_flags, D.14969
	orl	$536870912, %eax	#, D.14969
	movl	%eax, %edx	# D.14969, D.14969
	movq	-24(%rbp), %rax	# sv, tmp136
	movl	%edx, 12(%rax)	# D.14969, sv_68->sv_flags
.L585:
	.loc 1 4238 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.1059
	andl	$128, %eax	#, D.14969
	testl	%eax, %eax	# D.14969
	je	.L586	#,
	.loc 1 4239 0
	movq	-24(%rbp), %rax	# sv, tmp137
	movq	%rax, %rdi	# tmp137,
	call	Perl_sv_utf8_decode	#
.L586:
.LBE45:
	.loc 1 4231 0
	subl	$1, %r12d	#, argc
	addq	$8, %rbx	#, argv
.L581:
	.loc 1 4231 0 is_stmt 0 discriminator 1
	testl	%r12d, %r12d	# argc
	jg	.L587	#,
.L570:
	.loc 1 4242 0 is_stmt 1
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_init_argv_symbols, .-Perl_init_argv_symbols
	.section	.rodata
.LC126:
	.string	"\030"
	.text
	.type	S_set_caret_X, @function
S_set_caret_X:
.LFB42:
	.loc 1 4280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4281 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC126, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -8(%rbp)	# tmp64, tmpgv
	.loc 1 4282 0
	cmpq	$0, -8(%rbp)	#, tmpgv
	je	.L588	#,
	.loc 1 4289 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.1060
	movq	(%rax), %rdx	# *PL_origargv.1060_2, D.14971
	movq	-8(%rbp), %rax	# tmpgv, tmp65
	movq	(%rax), %rax	# tmpgv_1->sv_any, D.14972
	movq	56(%rax), %rax	# _4->xgv_gp, D.14973
	movq	(%rax), %rax	# _5->gp_sv, D.14974
	movq	%rdx, %rsi	# D.14971,
	movq	%rax, %rdi	# D.14974,
	call	Perl_sv_setpv	#
.L588:
	.loc 1 4293 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	S_set_caret_X, .-S_set_caret_X
	.section	.rodata
.LC127:
	.string	"0"
.LC128:
	.string	"ENV"
.LC129:
	.string	"$"
.LC130:
	.string	"main::F"
.LC131:
	.string	"main::-"
.LC132:
	.string	"main::+"
	.text
	.type	S_init_postdump_symbols, @function
S_init_postdump_symbols:
.LFB43:
	.loc 1 4297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, %r12d	# argc, argc
	movq	%rsi, %r13	# argv, argv
	movq	%rdx, %rbx	# env, env
	.loc 1 4302 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_toptarget(%rip)	# PL_toptarget.1061, PL_toptarget
	.loc 1 4303 0
	movq	PL_toptarget(%rip), %rax	# PL_toptarget, PL_toptarget.1062
	movl	$14, %esi	#,
	movq	%rax, %rdi	# PL_toptarget.1062,
	call	Perl_sv_upgrade	#
	.loc 1 4304 0
	movq	PL_toptarget(%rip), %rax	# PL_toptarget, PL_toptarget.1063
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# PL_toptarget.1063,
	call	Perl_sv_setpvn	#
	.loc 1 4305 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_bodytarget(%rip)	# PL_bodytarget.1064, PL_bodytarget
	.loc 1 4306 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.1065
	movl	$14, %esi	#,
	movq	%rax, %rdi	# PL_bodytarget.1065,
	call	Perl_sv_upgrade	#
	.loc 1 4307 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.1066
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# PL_bodytarget.1066,
	call	Perl_sv_setpvn	#
	.loc 1 4308 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.1067
	movq	%rax, PL_formtarget(%rip)	# PL_bodytarget.1067, PL_formtarget
	.loc 1 4310 0
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 4312 0
	movq	%r13, %rsi	# argv,
	movl	%r12d, %edi	# argc,
	call	Perl_init_argv_symbols	#
	.loc 1 4314 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC127, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -64(%rbp)	# tmp136, tmpgv
	cmpq	$0, -64(%rbp)	#, tmpgv
	je	.L591	#,
	.loc 1 4319 0
	movq	PL_origfilename(%rip), %rdx	# PL_origfilename, PL_origfilename.1068
	movq	-64(%rbp), %rax	# tmpgv, tmp137
	movq	(%rax), %rax	# tmpgv_16->sv_any, D.14976
	movq	56(%rax), %rax	# _18->xgv_gp, D.14977
	movq	(%rax), %rax	# _19->gp_sv, D.14978
	movq	%rdx, %rsi	# PL_origfilename.1068,
	movq	%rax, %rdi	# D.14978,
	call	Perl_sv_setpv	#
	.loc 1 4320 0
	movl	$1, %edx	#,
	movl	$.LC127, %esi	#,
	movl	$.LC127, %edi	#,
	call	Perl_magicname	#
.L591:
	.loc 1 4323 0
	call	S_set_caret_X	#
	.loc 1 4324 0
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC128, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_envgv(%rip)	# PL_envgv.1069, PL_envgv
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1070
	testq	%rax, %rax	# PL_envgv.1070
	je	.L592	#,
.LBB46:
	.loc 1 4326 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1071
	movq	(%rax), %rax	# PL_envgv.1071_23->sv_any, D.14976
	movq	PL_envgv(%rip), %rdx	# PL_envgv, PL_envgv.1072
	movq	(%rdx), %rdx	# PL_envgv.1072_25->sv_any, D.14976
	movzbl	88(%rdx), %edx	# _26->xgv_flags, D.14979
	orl	$2, %edx	#, D.14979
	movb	%dl, 88(%rax)	# D.14979, _24->xgv_flags
	.loc 1 4327 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1074
	movq	(%rax), %rax	# PL_envgv.1074_29->sv_any, D.14976
	movq	56(%rax), %rax	# _30->xgv_gp, D.14977
	movq	40(%rax), %rax	# _31->gp_hv, D.14980
	testq	%rax, %rax	# D.14980
	je	.L593	#,
	.loc 1 4327 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1075
	movq	(%rax), %rax	# PL_envgv.1075_33->sv_any, D.14976
	movq	56(%rax), %rax	# _34->xgv_gp, D.14977
	movq	40(%rax), %rax	# _35->gp_hv, iftmp.1073
	jmp	.L594	#
.L593:
	.loc 1 4327 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1076
	movq	%rax, %rdi	# PL_envgv.1076,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _38->sv_any, D.14976
	movq	56(%rax), %rax	# _39->xgv_gp, D.14977
	movq	40(%rax), %rax	# _40->gp_hv, iftmp.1073
.L594:
	.loc 1 4327 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.1073, hv
	.loc 1 4328 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# hv, tmp138
	movl	$69, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	Perl_hv_magic	#
	.loc 1 4336 0 discriminator 3
	testq	%rbx, %rbx	# env
	jne	.L595	#,
	.loc 1 4337 0
	movq	environ(%rip), %rbx	# environ, env
.L595:
	.loc 1 4338 0
	movq	environ(%rip), %rax	# environ, environ.1077
	cmpq	%rax, %rbx	# environ.1077, env
	je	.L596	#,
	.loc 1 4344 0
	movq	environ(%rip), %rax	# environ, environ.1078
	movq	$0, (%rax)	#, *environ.1078_46
.L596:
	.loc 1 4346 0
	testq	%rbx, %rbx	# env
	je	.L592	#,
.LBB47:
	.loc 1 4347 0
	movq	environ(%rip), %rax	# environ, tmp139
	movq	%rax, -72(%rbp)	# tmp139, origenv
	.loc 1 4348 0
	jmp	.L597	#
.L602:
	.loc 1 4349 0
	movq	(%rbx), %rax	# *env_3, D.14982
	movl	$61, %esi	#,
	movq	%rax, %rdi	# D.14982,
	call	strchr	#
	movq	%rax, -48(%rbp)	# tmp140, s
	cmpq	$0, -48(%rbp)	#, s
	je	.L598	#,
	.loc 1 4349 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *env_3, D.14982
	cmpq	-48(%rbp), %rax	# s, D.14982
	jne	.L599	#,
.L598:
	.loc 1 4350 0 is_stmt 1
	jmp	.L600	#
.L599:
	.loc 1 4356 0
	movq	-48(%rbp), %rax	# s, tmp141
	addq	$1, %rax	#, D.14983
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14983,
	call	Perl_newSVpv	#
	movq	%rax, -40(%rbp)	# tmp142, sv
	.loc 1 4357 0
	movq	-48(%rbp), %rdx	# s, s.1079
	movq	(%rbx), %rax	# *env_3, D.14982
	subq	%rax, %rdx	# D.14984, D.14984
	movq	%rdx, %rax	# D.14984, D.14984
	movl	%eax, %edx	# D.14984, D.14985
	movq	(%rbx), %rsi	# *env_3, D.14982
	movq	-40(%rbp), %rcx	# sv, tmp143
	movq	-56(%rbp), %rax	# hv, tmp144
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp144,
	call	Perl_hv_store	#
	.loc 1 4358 0
	movq	environ(%rip), %rax	# environ, environ.1080
	cmpq	%rax, %rbx	# environ.1080, env
	je	.L601	#,
	.loc 1 4359 0
	movq	-40(%rbp), %rax	# sv, tmp145
	movq	%rax, %rdi	# tmp145,
	call	Perl_mg_set	#
.L601:
	.loc 1 4360 0
	movq	environ(%rip), %rax	# environ, environ.1081
	cmpq	%rax, -72(%rbp)	# environ.1081, origenv
	je	.L600	#,
	.loc 1 4362 0
	movq	environ(%rip), %rax	# environ, environ.1082
	movq	%rbx, %rcx	# env, env.1083
	movq	-72(%rbp), %rdx	# origenv, origenv.1084
	subq	%rdx, %rcx	# origenv.1084, D.14984
	movq	%rcx, %rdx	# D.14984, D.14984
	sarq	$3, %rdx	#, tmp146
	salq	$3, %rdx	#, D.14986
	leaq	(%rax,%rdx), %rbx	#, env
	.loc 1 4363 0
	movq	environ(%rip), %rax	# environ, tmp147
	movq	%rax, -72(%rbp)	# tmp147, origenv
.L600:
	.loc 1 4348 0
	addq	$8, %rbx	#, env
.L597:
	.loc 1 4348 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *env_3, D.14982
	testq	%rax, %rax	# D.14982
	jne	.L602	#,
.L592:
.LBE47:
.LBE46:
	.loc 1 4370 0 is_stmt 1
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 4371 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC129, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -64(%rbp)	# tmp148, tmpgv
	cmpq	$0, -64(%rbp)	#, tmpgv
	je	.L603	#,
	.loc 1 4372 0
	movq	-64(%rbp), %rax	# tmpgv, tmp149
	movq	(%rax), %rax	# tmpgv_72->sv_any, D.14976
	movq	56(%rax), %rax	# _73->xgv_gp, D.14977
	movq	(%rax), %rax	# _74->gp_sv, D.14978
	movq	-64(%rbp), %rdx	# tmpgv, tmp150
	movq	(%rdx), %rdx	# tmpgv_72->sv_any, D.14976
	movq	56(%rdx), %rdx	# _76->xgv_gp, D.14977
	movq	(%rdx), %rdx	# _77->gp_sv, D.14978
	movl	12(%rdx), %edx	# _78->sv_flags, D.14987
	andl	$-8388609, %edx	#, D.14987
	movl	%edx, 12(%rax)	# D.14987, _75->sv_flags
	.loc 1 4373 0
	call	getpid	#
	movslq	%eax, %rdx	# D.14985, D.14984
	movq	-64(%rbp), %rax	# tmpgv, tmp151
	movq	(%rax), %rax	# tmpgv_72->sv_any, D.14976
	movq	56(%rax), %rax	# _83->xgv_gp, D.14977
	movq	(%rax), %rax	# _84->gp_sv, D.14978
	movq	%rdx, %rsi	# D.14984,
	movq	%rax, %rdi	# D.14978,
	call	Perl_sv_setiv	#
	.loc 1 4374 0
	movq	-64(%rbp), %rax	# tmpgv, tmp152
	movq	(%rax), %rax	# tmpgv_72->sv_any, D.14976
	movq	56(%rax), %rax	# _86->xgv_gp, D.14977
	movq	(%rax), %rax	# _87->gp_sv, D.14978
	movq	-64(%rbp), %rdx	# tmpgv, tmp153
	movq	(%rdx), %rdx	# tmpgv_72->sv_any, D.14976
	movq	56(%rdx), %rdx	# _89->xgv_gp, D.14977
	movq	(%rdx), %rdx	# _90->gp_sv, D.14978
	movl	12(%rdx), %edx	# _91->sv_flags, D.14987
	orl	$8388608, %edx	#, D.14987
	movl	%edx, 12(%rax)	# D.14987, _88->sv_flags
.L603:
	.loc 1 4381 0
	movzbl	PL_minus_a(%rip), %eax	# PL_minus_a, PL_minus_a.1085
	testb	%al, %al	# PL_minus_a.1085
	je	.L604	#,
	.loc 1 4382 0
	movl	$3, %esi	#,
	movl	$.LC130, %edi	#,
	call	Perl_get_av	#
.L604:
	.loc 1 4385 0
	movl	$3, %esi	#,
	movl	$.LC131, %edi	#,
	call	Perl_get_av	#
	.loc 1 4386 0
	movl	$3, %esi	#,
	movl	$.LC132, %edi	#,
	call	Perl_get_av	#
	.loc 1 4387 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	S_init_postdump_symbols, .-S_init_postdump_symbols
	.section	.rodata
.LC133:
	.string	"lib"
.LC134:
	.string	"."
	.text
	.type	S_init_perllib, @function
S_init_perllib:
.LFB44:
	.loc 1 4391 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4393 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1086
	testb	%al, %al	# PL_tainting.1086
	jne	.L605	#,
	.loc 1 4396 0
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC133, %edi	#,
	call	S_incpush	#
	.loc 1 4397 0
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$.LC134, %edi	#,
	call	S_incpush	#
.L605:
	.loc 1 4509 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	S_init_perllib, .-S_init_perllib
	.type	S_incpush_if_exists, @function
S_incpush_if_exists:
.LFB45:
	.loc 1 4533 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# dir, dir
	.loc 1 4535 0
	movq	-152(%rbp), %rax	# dir, tmp78
	movq	(%rax), %rax	# dir_3(D)->sv_any, D.14996
	movq	(%rax), %rax	# MEM[(struct XPV *)_4].xpv_pv, D.14997
	leaq	-144(%rbp), %rdx	#, tmp79
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# D.14997,
	call	stat	#
	testl	%eax, %eax	# D.14998
	js	.L608	#,
	.loc 1 4536 0 discriminator 1
	movl	-120(%rbp), %eax	# tmpstatbuf.st_mode, D.14999
	andl	$61440, %eax	#, D.14999
	.loc 1 4535 0 discriminator 1
	cmpl	$16384, %eax	#, D.14999
	jne	.L608	#,
	.loc 1 4537 0
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1088
	movq	(%rax), %rax	# PL_incgv.1088_9->sv_any, D.15000
	movq	56(%rax), %rax	# _10->xgv_gp, D.15001
	movq	32(%rax), %rax	# _11->gp_av, D.15002
	testq	%rax, %rax	# D.15002
	je	.L609	#,
	.loc 1 4537 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1089
	movq	(%rax), %rax	# PL_incgv.1089_13->sv_any, D.15000
	movq	56(%rax), %rax	# _14->xgv_gp, D.15001
	movq	32(%rax), %rax	# _15->gp_av, iftmp.1087
	jmp	.L610	#
.L609:
	.loc 1 4537 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1090
	movq	%rax, %rdi	# PL_incgv.1090,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _18->sv_any, D.15000
	movq	56(%rax), %rax	# _19->xgv_gp, D.15001
	movq	32(%rax), %rax	# _20->gp_av, iftmp.1087
.L610:
	.loc 1 4537 0 discriminator 3
	movq	-152(%rbp), %rdx	# dir, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# iftmp.1087,
	call	Perl_av_push	#
	.loc 1 4538 0 is_stmt 1 discriminator 3
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -152(%rbp)	# tmp81, dir
.L608:
	.loc 1 4540 0
	movq	-152(%rbp), %rax	# dir, D.15004
	.loc 1 4541 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	S_incpush_if_exists, .-S_incpush_if_exists
	.section	.rodata
.LC135:
	.string	"%_/%d.%d.%d/%s"
.LC136:
	.string	"%_/%d.%d.%d"
.LC137:
	.string	"%_/%s"
	.text
	.type	S_incpush, @function
S_incpush:
.LFB46:
	.loc 1 4545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# p, p
	movl	%esi, -60(%rbp)	# addsubdirs, addsubdirs
	movl	%edx, -64(%rbp)	# addoldvers, addoldvers
	movl	%ecx, -68(%rbp)	# usesep, usesep
	.loc 1 4546 0
	movq	$0, -32(%rbp)	#, subdir
	.loc 1 4548 0
	cmpq	$0, -56(%rbp)	#, p
	je	.L613	#,
	.loc 1 4548 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp80
	movzbl	(%rax), %eax	# *p_14(D), D.15005
	testb	%al, %al	# D.15005
	jne	.L614	#,
.L613:
	.loc 1 4549 0 is_stmt 1
	jmp	.L612	#
.L614:
	.loc 1 4551 0
	cmpl	$0, -60(%rbp)	#, addsubdirs
	jne	.L616	#,
	.loc 1 4551 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, addoldvers
	je	.L617	#,
.L616:
	.loc 1 4552 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp81, subdir
	.loc 1 4556 0
	jmp	.L618	#
.L617:
	jmp	.L618	#
.L633:
.LBB48:
	.loc 1 4557 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -16(%rbp)	# tmp82, libdir
	.loc 1 4561 0
	cmpl	$0, -68(%rbp)	#, usesep
	je	.L619	#,
	.loc 1 4562 0
	jmp	.L620	#
.L621:
	.loc 1 4565 0
	addq	$1, -56(%rbp)	#, p
.L620:
	.loc 1 4562 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp83
	movzbl	(%rax), %eax	# *p_1, D.15005
	cmpb	$58, %al	#, D.15005
	je	.L621	#,
.L619:
	.loc 1 4569 0
	cmpl	$0, -68(%rbp)	#, usesep
	je	.L622	#,
	.loc 1 4569 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp84
	movl	$58, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp85, s
	cmpq	$0, -8(%rbp)	#, s
	je	.L622	#,
	.loc 1 4571 0 is_stmt 1
	movq	-8(%rbp), %rdx	# s, s.1091
	movq	-56(%rbp), %rax	# p, p.1092
	subq	%rax, %rdx	# p.1092, D.15006
	movq	%rdx, %rax	# D.15006, D.15006
	.loc 1 4570 0
	movq	%rax, %rdx	# D.15006, D.15007
	movq	-56(%rbp), %rcx	# p, tmp86
	movq	-16(%rbp), %rax	# libdir, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_setpvn	#
	.loc 1 4572 0
	movq	-8(%rbp), %rax	# s, tmp91
	addq	$1, %rax	#, tmp90
	movq	%rax, -56(%rbp)	# tmp90, p
	jmp	.L623	#
.L622:
	.loc 1 4575 0
	movq	-56(%rbp), %rdx	# p, tmp92
	movq	-16(%rbp), %rax	# libdir, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_setpv	#
	.loc 1 4576 0
	movq	$0, -56(%rbp)	#, p
.L623:
	.loc 1 4592 0
	cmpl	$0, -60(%rbp)	#, addsubdirs
	jne	.L624	#,
	.loc 1 4592 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, addoldvers
	je	.L625	#,
.L624:
.LBB49:
	.loc 1 4595 0 is_stmt 1
	movq	$0, -48(%rbp)	#, incverlist
	.loc 1 4612 0
	cmpl	$0, -60(%rbp)	#, addsubdirs
	je	.L626	#,
	.loc 1 4623 0
	movq	-16(%rbp), %rdx	# libdir, tmp94
	movq	-32(%rbp), %rax	# subdir, tmp95
	movq	$.LC81, (%rsp)	#,
	movl	$7, %r9d	#,
	movl	$8, %r8d	#,
	movl	$5, %ecx	#,
	movl	$.LC135, %esi	#,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 4627 0
	movq	-32(%rbp), %rax	# subdir, tmp96
	movq	%rax, %rdi	# tmp96,
	call	S_incpush_if_exists	#
	movq	%rax, -32(%rbp)	# tmp97, subdir
	.loc 1 4630 0
	movq	-16(%rbp), %rdx	# libdir, tmp98
	movq	-32(%rbp), %rax	# subdir, tmp99
	movl	$7, %r9d	#,
	movl	$8, %r8d	#,
	movl	$5, %ecx	#,
	movl	$.LC136, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 4633 0
	movq	-32(%rbp), %rax	# subdir, tmp100
	movq	%rax, %rdi	# tmp100,
	call	S_incpush_if_exists	#
	movq	%rax, -32(%rbp)	# tmp101, subdir
	.loc 1 4636 0
	movq	-16(%rbp), %rdx	# libdir, tmp102
	movq	-32(%rbp), %rax	# subdir, tmp103
	movl	$.LC81, %ecx	#,
	movl	$.LC137, %esi	#,
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 4637 0
	movq	-32(%rbp), %rax	# subdir, tmp104
	movq	%rax, %rdi	# tmp104,
	call	S_incpush_if_exists	#
	movq	%rax, -32(%rbp)	# tmp105, subdir
.L626:
	.loc 1 4642 0
	cmpl	$0, -64(%rbp)	#, addoldvers
	je	.L625	#,
	.loc 1 4643 0
	leaq	-48(%rbp), %rax	#, tmp106
	movq	%rax, -24(%rbp)	# tmp106, incver
	jmp	.L628	#
.L629:
	.loc 1 4645 0 discriminator 2
	movq	-24(%rbp), %rax	# incver, tmp107
	movq	(%rax), %rcx	# *incver_11, D.15008
	movq	-16(%rbp), %rdx	# libdir, tmp108
	movq	-32(%rbp), %rax	# subdir, tmp109
	movl	$.LC137, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 4646 0 discriminator 2
	movq	-32(%rbp), %rax	# subdir, tmp110
	movq	%rax, %rdi	# tmp110,
	call	S_incpush_if_exists	#
	movq	%rax, -32(%rbp)	# tmp111, subdir
	.loc 1 4643 0 discriminator 2
	addq	$8, -24(%rbp)	#, incver
.L628:
	.loc 1 4643 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# incver, tmp112
	movq	(%rax), %rax	# *incver_11, D.15008
	testq	%rax, %rax	# D.15008
	jne	.L629	#,
.L625:
.LBE49:
	.loc 1 4653 0 is_stmt 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1094
	movq	(%rax), %rax	# PL_incgv.1094_39->sv_any, D.15009
	movq	56(%rax), %rax	# _40->xgv_gp, D.15010
	movq	32(%rax), %rax	# _41->gp_av, D.15011
	testq	%rax, %rax	# D.15011
	je	.L630	#,
	.loc 1 4653 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1095
	movq	(%rax), %rax	# PL_incgv.1095_43->sv_any, D.15009
	movq	56(%rax), %rax	# _44->xgv_gp, D.15010
	movq	32(%rax), %rax	# _45->gp_av, iftmp.1093
	jmp	.L631	#
.L630:
	.loc 1 4653 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1096
	movq	%rax, %rdi	# PL_incgv.1096,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _48->sv_any, D.15009
	movq	56(%rax), %rax	# _49->xgv_gp, D.15010
	movq	32(%rax), %rax	# _50->gp_av, iftmp.1093
.L631:
	.loc 1 4653 0 discriminator 3
	movq	-16(%rbp), %rdx	# libdir, tmp113
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# iftmp.1093,
	call	Perl_av_push	#
.L618:
.LBE48:
	.loc 1 4556 0 is_stmt 1 discriminator 1
	cmpq	$0, -56(%rbp)	#, p
	je	.L632	#,
	.loc 1 4556 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp114
	movzbl	(%rax), %eax	# *p_4, D.15005
	testb	%al, %al	# D.15005
	jne	.L633	#,
.L632:
	.loc 1 4655 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, subdir
	je	.L612	#,
	.loc 1 4657 0
	movq	-32(%rbp), %rax	# subdir, tmp115
	movq	%rax, %rdi	# tmp115,
	call	Perl_sv_free	#
.L612:
	.loc 1 4659 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	S_incpush, .-S_incpush
	.section	.rodata
	.align 8
.LC138:
	.string	"BEGIN failed--compilation aborted"
.LC139:
	.string	"INIT"
.LC140:
	.string	"END"
.LC141:
	.string	"CHECK"
.LC142:
	.string	"%s failed--call queue aborted"
.LC143:
	.string	"%_"
	.text
	.globl	Perl_call_list
	.type	Perl_call_list, @function
Perl_call_list:
.LFB47:
	.loc 1 4743 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
	movl	%edi, -260(%rbp)	# oldscope, oldscope
	movq	%rsi, -272(%rbp)	# paramList, paramList
	.loc 1 4745 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1097
	movl	72(%rax), %eax	# PL_curcop.1097_7->cop_line, tmp140
	movl	%eax, -256(%rbp)	# tmp140, oldline
	.loc 1 4751 0
	jmp	.L635	#
.L675:
	.loc 1 4752 0
	movq	-272(%rbp), %rax	# paramList, tmp141
	movq	%rax, %rdi	# tmp141,
	call	Perl_av_shift	#
	movq	%rax, -240(%rbp)	# tmp142, cv
	.loc 1 4753 0
	movzbl	PL_savebegin(%rip), %eax	# PL_savebegin, PL_savebegin.1098
	testb	%al, %al	# PL_savebegin.1098
	je	.L636	#,
	.loc 1 4754 0
	movq	PL_beginav(%rip), %rax	# PL_beginav, PL_beginav.1099
	cmpq	%rax, -272(%rbp)	# PL_beginav.1099, paramList
	jne	.L637	#,
	.loc 1 4756 0
	movq	PL_beginav_save(%rip), %rax	# PL_beginav_save, PL_beginav_save.1100
	testq	%rax, %rax	# PL_beginav_save.1100
	jne	.L638	#,
	.loc 1 4757 0
	call	Perl_newAV	#
	movq	%rax, PL_beginav_save(%rip)	# PL_beginav_save.1101, PL_beginav_save
.L638:
	.loc 1 4758 0
	movq	PL_beginav_save(%rip), %rax	# PL_beginav_save, PL_beginav_save.1102
	movq	-240(%rbp), %rdx	# cv, tmp143
	movq	%rdx, %rsi	# tmp143,
	movq	%rax, %rdi	# PL_beginav_save.1102,
	call	Perl_av_push	#
	jmp	.L641	#
.L637:
	.loc 1 4760 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.1103
	cmpq	%rax, -272(%rbp)	# PL_checkav.1103, paramList
	jne	.L641	#,
	.loc 1 4762 0
	movq	PL_checkav_save(%rip), %rax	# PL_checkav_save, PL_checkav_save.1104
	testq	%rax, %rax	# PL_checkav_save.1104
	jne	.L640	#,
	.loc 1 4763 0
	call	Perl_newAV	#
	movq	%rax, PL_checkav_save(%rip)	# PL_checkav_save.1105, PL_checkav_save
.L640:
	.loc 1 4764 0
	movq	PL_checkav_save(%rip), %rax	# PL_checkav_save, PL_checkav_save.1106
	movq	-240(%rbp), %rdx	# cv, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# PL_checkav_save.1106,
	call	Perl_av_push	#
	jmp	.L641	#
.L636:
	.loc 1 4767 0
	movq	-240(%rbp), %rax	# cv, tmp145
	movq	%rax, %rdi	# tmp145,
	call	Perl_save_freesv	#
.L641:
.LBB50:
	.loc 1 4772 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1107
	movq	%rax, -24(%rbp)	# PL_top_env.1107, cur_env.je_prev
	leaq	-224(%rbp), %rax	#, tmp146
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	__sigsetjmp	#
	movl	%eax, -16(%rbp)	# D.15017, cur_env.je_ret
	leaq	-224(%rbp), %rax	#, tmp147
	movq	%rax, PL_top_env(%rip)	# tmp147, PL_top_env
	movb	$0, -12(%rbp)	#, cur_env.je_mustcatch
	movl	-16(%rbp), %eax	# cur_env.je_ret, tmp148
	movl	%eax, -252(%rbp)	# tmp148, ret
.LBE50:
	.loc 1 4774 0
	movl	-252(%rbp), %eax	# ret, ret
	cmpl	$1, %eax	#, ret
	je	.L643	#,
	cmpl	$1, %eax	#, ret
	jg	.L644	#,
	testl	%eax, %eax	# ret
	je	.L645	#,
	jmp	.L642	#
.L644:
	cmpl	$2, %eax	#, ret
	je	.L676	#,
	cmpl	$3, %eax	#, ret
	je	.L647	#,
	jmp	.L642	#
.L645:
	.loc 1 4777 0
	movq	-240(%rbp), %rax	# cv, tmp150
	movq	%rax, %rdi	# tmp150,
	call	S_call_list_body	#
	.loc 1 4779 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1108
	movq	(%rax), %rax	# PL_errgv.1108_31->sv_any, D.15020
	movq	56(%rax), %rax	# _32->xgv_gp, D.15021
	movq	(%rax), %rax	# _33->gp_sv, tmp151
	movq	%rax, -232(%rbp)	# tmp151, atsv
	.loc 1 4780 0
	movq	-232(%rbp), %rax	# atsv, tmp152
	movl	12(%rax), %eax	# atsv_34->sv_flags, D.15016
	andl	$262144, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	je	.L648	#,
	.loc 1 4780 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# atsv, tmp153
	movq	(%rax), %rax	# atsv_34->sv_any, D.15022
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, len.1109
	movq	%rax, -248(%rbp)	# len.1109, len
	jmp	.L649	#
.L648:
	.loc 1 4780 0 discriminator 2
	leaq	-248(%rbp), %rcx	#, tmp155
	movq	-232(%rbp), %rax	# atsv, tmp156
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	Perl_sv_2pv_flags	#
.L649:
	.loc 1 4781 0 is_stmt 1
	movq	-248(%rbp), %rax	# len, len.1110
	testq	%rax, %rax	# len.1110
	je	.L650	#,
	.loc 1 4782 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 4783 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1111
	movl	-256(%rbp), %edx	# oldline, tmp157
	movl	%edx, 72(%rax)	# tmp157, PL_curcop.1111_41->cop_line
	.loc 1 4784 0
	movq	PL_beginav(%rip), %rax	# PL_beginav, PL_beginav.1112
	cmpq	%rax, -272(%rbp)	# PL_beginav.1112, paramList
	jne	.L651	#,
	.loc 1 4785 0
	movq	-232(%rbp), %rax	# atsv, tmp158
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	Perl_sv_catpv	#
	.loc 1 4792 0
	jmp	.L657	#
.L651:
	.loc 1 4789 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.1114
	.loc 1 4787 0
	cmpq	%rax, -272(%rbp)	# PL_checkav.1114, paramList
	je	.L653	#,
	.loc 1 4790 0
	movq	PL_initav(%rip), %rax	# PL_initav, PL_initav.1116
	.loc 1 4791 0
	cmpq	%rax, -272(%rbp)	# PL_initav.1116, paramList
	jne	.L654	#,
	.loc 1 4791 0 is_stmt 0 discriminator 1
	movl	$.LC139, %eax	#, iftmp.1115
	jmp	.L656	#
.L654:
	.loc 1 4791 0 discriminator 2
	movl	$.LC140, %eax	#, iftmp.1115
	jmp	.L656	#
.L653:
	.loc 1 4787 0 is_stmt 1 discriminator 1
	movl	$.LC141, %eax	#, iftmp.1113
.L656:
	.loc 1 4787 0 is_stmt 0 discriminator 2
	movq	-232(%rbp), %rcx	# atsv, tmp159
	movq	%rax, %rdx	# iftmp.1113,
	movl	$.LC142, %esi	#,
	movq	%rcx, %rdi	# tmp159,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 4792 0 is_stmt 1 discriminator 2
	jmp	.L657	#
.L658:
	.loc 1 4793 0
	call	Perl_pop_scope	#
.L657:
	.loc 1 4792 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1117
	cmpl	-260(%rbp), %eax	# oldscope, PL_scopestack_ix.1117
	jg	.L658	#,
	.loc 1 4794 0
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.1118
	movq	%rax, PL_top_env(%rip)	# PL_top_env.1118, PL_top_env
	.loc 1 4795 0
	movq	-232(%rbp), %rax	# atsv, tmp160
	movq	%rax, %rsi	# tmp160,
	movl	$.LC143, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 4797 0
	jmp	.L642	#
.L650:
	jmp	.L642	#
.L643:
	.loc 1 4799 0
	movl	$1, PL_statusvalue(%rip)	#, PL_statusvalue
	.loc 1 4803 0
	jmp	.L676	#
.L660:
	.loc 1 4804 0
	call	Perl_pop_scope	#
	jmp	.L659	#
.L676:
	.loc 1 4803 0
	nop
.L659:
	.loc 1 4803 0 is_stmt 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1119
	cmpl	-260(%rbp), %eax	# oldscope, PL_scopestack_ix.1119
	jg	.L660	#,
	.loc 1 4805 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1120
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1121
	cmpl	%eax, %edx	# PL_tmps_floor.1121, PL_tmps_ix.1120
	jle	.L661	#,
	.loc 1 4805 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L661:
	.loc 1 4806 0 is_stmt 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.1122
	movq	%rax, PL_curstash(%rip)	# PL_defstash.1122, PL_curstash
	.loc 1 4807 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 4808 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1123
	movl	-256(%rbp), %edx	# oldline, tmp161
	movl	%edx, 72(%rax)	# tmp161, PL_curcop.1123_56->cop_line
	.loc 1 4809 0
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.1124
	movq	%rax, PL_top_env(%rip)	# PL_top_env.1124, PL_top_env
	.loc 1 4810 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1125
	testl	%eax, %eax	# PL_statusvalue.1125
	je	.L662	#,
	.loc 1 4810 0 is_stmt 0 discriminator 1
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.1126
	movzbl	%al, %eax	# PL_exit_flags.1126, D.15017
	andl	$1, %eax	#, D.15017
	testl	%eax, %eax	# D.15017
	jne	.L662	#,
	.loc 1 4811 0 is_stmt 1
	movq	PL_beginav(%rip), %rax	# PL_beginav, PL_beginav.1127
	cmpq	%rax, -272(%rbp)	# PL_beginav.1127, paramList
	jne	.L663	#,
	.loc 1 4812 0
	movl	$.LC138, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L662	#
.L663:
	.loc 1 4815 0
	movq	PL_checkav(%rip), %rax	# PL_checkav, PL_checkav.1129
	.loc 1 4814 0
	cmpq	%rax, -272(%rbp)	# PL_checkav.1129, paramList
	je	.L664	#,
	.loc 1 4816 0
	movq	PL_initav(%rip), %rax	# PL_initav, PL_initav.1131
	.loc 1 4817 0
	cmpq	%rax, -272(%rbp)	# PL_initav.1131, paramList
	jne	.L665	#,
	.loc 1 4817 0 is_stmt 0 discriminator 1
	movl	$.LC139, %eax	#, iftmp.1130
	jmp	.L667	#
.L665:
	.loc 1 4817 0 discriminator 2
	movl	$.LC140, %eax	#, iftmp.1130
	jmp	.L667	#
.L664:
	.loc 1 4814 0 is_stmt 1 discriminator 1
	movl	$.LC141, %eax	#, iftmp.1128
.L667:
	.loc 1 4814 0 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# iftmp.1128,
	movl	$.LC142, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L662:
	.loc 1 4819 0 is_stmt 1
	call	S_my_exit_jump	#
.L647:
	.loc 1 4822 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.1132
	testq	%rax, %rax	# PL_restartop.1132
	je	.L668	#,
	.loc 1 4823 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 4824 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1133
	movl	-256(%rbp), %edx	# oldline, tmp162
	movl	%edx, 72(%rax)	# tmp162, PL_curcop.1133_70->cop_line
.LBB51:
	.loc 1 4825 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1134
	movq	200(%rax), %rax	# PL_top_env.1134_71->je_prev, D.15023
	testq	%rax, %rax	# D.15023
	je	.L669	#,
	.loc 1 4825 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1135
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.15024,
	call	siglongjmp	#
.L669:
	.loc 1 4825 0 discriminator 2
	call	Perl_PerlIO_stderr	#
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.15025,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	exit	#
.L668:
.LBE51:
	.loc 1 4827 0 is_stmt 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1138
	testq	%rax, %rax	# PL_stderrgv.1138
	je	.L670	#,
	.loc 1 4827 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1139
	movl	12(%rax), %eax	# PL_stderrgv.1139_77->sv_flags, D.15016
	movzbl	%al, %eax	# D.15016, D.15016
	cmpl	$13, %eax	#, D.15016
	jne	.L670	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1140
	movq	(%rax), %rax	# PL_stderrgv.1140_80->sv_any, D.15020
	movq	56(%rax), %rax	# _81->xgv_gp, D.15021
	movq	16(%rax), %rax	# _82->gp_io, D.15026
	testq	%rax, %rax	# D.15026
	je	.L670	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1141
	movq	(%rax), %rax	# PL_stderrgv.1141_84->sv_any, D.15020
	movq	56(%rax), %rax	# _85->xgv_gp, D.15021
	movq	16(%rax), %rax	# _86->gp_io, D.15026
	movq	(%rax), %rax	# _87->sv_any, D.15027
	movq	64(%rax), %rax	# _88->xio_ofp, D.15025
	testq	%rax, %rax	# D.15025
	je	.L670	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1142
	movq	(%rax), %rax	# PL_stderrgv.1142_90->sv_any, D.15020
	movq	56(%rax), %rax	# _91->xgv_gp, D.15021
	movq	16(%rax), %rax	# _92->gp_io, D.15026
	movq	(%rax), %rax	# _93->sv_any, D.15027
	movq	64(%rax), %rax	# _94->xio_ofp, iftmp.1137
	jmp	.L671	#
.L670:
	.loc 1 4827 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L671:
	.loc 1 4827 0 discriminator 3
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# iftmp.1137,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 4828 0 is_stmt 1 discriminator 3
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1143
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1144
	cmpl	%eax, %edx	# PL_tmps_floor.1144, PL_tmps_ix.1143
	jle	.L672	#,
	.loc 1 4828 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
	.loc 1 4829 0 is_stmt 1 discriminator 1
	jmp	.L677	#
.L672:
.L677:
	.loc 1 4829 0 is_stmt 0
	nop
.L642:
	.loc 1 4831 0 is_stmt 1
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.1145
	movq	%rax, PL_top_env(%rip)	# PL_top_env.1145, PL_top_env
.L635:
	.loc 1 4751 0 discriminator 1
	movq	-272(%rbp), %rax	# paramList, tmp163
	movl	12(%rax), %eax	# MEM[(struct SV *)paramList_9(D)].sv_flags, D.15016
	andl	$32768, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	je	.L673	#,
	movq	-272(%rbp), %rax	# paramList, tmp164
	movq	%rax, %rdi	# tmp164,
	call	Perl_mg_size	#
	notl	%eax	# tmp165
	shrl	$31, %eax	#, tmp166
	jmp	.L674	#
.L673:
	.loc 1 4751 0 is_stmt 0 discriminator 2
	movq	-272(%rbp), %rax	# paramList, tmp167
	movq	(%rax), %rax	# paramList_9(D)->sv_any, D.15018
	movq	8(%rax), %rax	# _14->xav_fill, D.15019
	notq	%rax	# tmp168
	shrq	$63, %rax	#, tmp169
.L674:
	.loc 1 4751 0 discriminator 3
	testb	%al, %al	# iftmp.1146
	jne	.L675	#,
	.loc 1 4833 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_call_list, .-Perl_call_list
	.type	S_call_list_body, @function
S_call_list_body:
.LFB48:
	.loc 1 4846 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cv, cv
.LBB52:
	.loc 1 4847 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1147
	addq	$4, %rax	#, PL_markstack_ptr.1148
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1148, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1149
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1150
	cmpq	%rax, %rdx	# PL_markstack_max.1150, PL_markstack_ptr.1149
	jne	.L679	#,
	.loc 1 4847 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L679:
	.loc 1 4847 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1151
	movq	PL_stack_sp(%rip), %rdx	# PL_stack_sp, PL_stack_sp.1152
	movq	%rdx, %rcx	# PL_stack_sp.1152, PL_stack_sp.1153
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1154
	subq	%rdx, %rcx	# PL_stack_base.1155, D.15035
	movq	%rcx, %rdx	# D.15035, D.15035
	sarq	$3, %rdx	#, tmp74
	movl	%edx, (%rax)	# D.15036, *PL_markstack_ptr.1151_5
.LBE52:
	.loc 1 4848 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# cv, tmp75
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	Perl_call_sv	#
	.loc 1 4849 0 discriminator 2
	movl	$0, %eax	#, D.15038
	.loc 1 4850 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	S_call_list_body, .-S_call_list_body
	.globl	Perl_my_exit
	.type	Perl_my_exit, @function
Perl_my_exit:
.LFB49:
	.loc 1 4854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# status, status
	.loc 1 4857 0
	movl	-4(%rbp), %eax	# status, status
	testl	%eax, %eax	# status
	je	.L683	#,
	cmpl	$1, %eax	#, status
	je	.L684	#,
	jmp	.L687	#
.L683:
	.loc 1 4859 0
	movl	$0, PL_statusvalue(%rip)	#, PL_statusvalue
	.loc 1 4860 0
	jmp	.L685	#
.L684:
	.loc 1 4862 0
	movl	$1, PL_statusvalue(%rip)	#, PL_statusvalue
	.loc 1 4863 0
	jmp	.L685	#
.L687:
.LBB53:
	.loc 1 4865 0
	movl	-4(%rbp), %eax	# status, status.1156
	movl	%eax, PL_statusvalue(%rip)	# status.1156, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1157
	cmpl	$-1, %eax	#, PL_statusvalue.1157
	je	.L686	#,
	.loc 1 4865 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1158
	movzwl	%ax, %eax	# PL_statusvalue.1158, PL_statusvalue.1159
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1159, PL_statusvalue
.LBE53:
	.loc 1 4866 0 is_stmt 1 discriminator 1
	jmp	.L688	#
.L686:
.L688:
	.loc 1 4866 0 is_stmt 0
	nop
.L685:
	.loc 1 4868 0 is_stmt 1
	call	S_my_exit_jump	#
	.loc 1 4869 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_my_exit, .-Perl_my_exit
	.globl	Perl_my_failure_exit
	.type	Perl_my_failure_exit, @function
Perl_my_failure_exit:
.LFB50:
	.loc 1 4873 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4887 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_1, D.15040
	movzbl	%al, %eax	# D.15040, D.15040
	testl	%eax, %eax	# D.15040
	je	.L690	#,
.LBB54:
	.loc 1 4888 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_4, PL_statusvalue.1160
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1160, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1161
	cmpl	$-1, %eax	#, PL_statusvalue.1161
	je	.L691	#,
	.loc 1 4888 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1162
	movzwl	%ax, %eax	# PL_statusvalue.1162, PL_statusvalue.1163
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1163, PL_statusvalue
.LBE54:
	jmp	.L692	#
.L691:
	jmp	.L692	#
.L690:
	.loc 1 4890 0 is_stmt 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1164
	sarl	$8, %eax	#, tmp75
	movl	%eax, -4(%rbp)	# tmp75, exitstatus
	.loc 1 4891 0
	movl	-4(%rbp), %eax	# exitstatus, tmp76
	movzbl	%al, %eax	# tmp76, D.15040
	testl	%eax, %eax	# D.15040
	je	.L693	#,
.LBB55:
	.loc 1 4892 0
	movl	-4(%rbp), %eax	# exitstatus, tmp77
	movl	%eax, PL_statusvalue(%rip)	# tmp77, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1165
	cmpl	$-1, %eax	#, PL_statusvalue.1165
	je	.L694	#,
	.loc 1 4892 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1166
	movzwl	%ax, %eax	# PL_statusvalue.1166, PL_statusvalue.1167
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1167, PL_statusvalue
.LBE55:
	jmp	.L692	#
.L694:
	jmp	.L692	#
.L693:
.LBB56:
	.loc 1 4894 0 is_stmt 1
	movl	$255, PL_statusvalue(%rip)	#, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1168
	cmpl	$-1, %eax	#, PL_statusvalue.1168
	je	.L692	#,
	.loc 1 4894 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1169
	movzwl	%ax, %eax	# PL_statusvalue.1169, PL_statusvalue.1170
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1170, PL_statusvalue
.L692:
.LBE56:
	.loc 1 4897 0 is_stmt 1
	call	S_my_exit_jump	#
	.loc 1 4898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_my_failure_exit, .-Perl_my_failure_exit
	.type	S_my_exit_jump, @function
S_my_exit_jump:
.LFB51:
	.loc 1 4902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4907 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1171
	testq	%rax, %rax	# PL_e_script.1171
	je	.L696	#,
	.loc 1 4908 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1172
	movq	%rax, %rdi	# PL_e_script.1172,
	call	Perl_sv_free	#
	.loc 1 4909 0
	movq	$0, PL_e_script(%rip)	#, PL_e_script
	.loc 1 4912 0
	jmp	.L697	#
.L696:
	jmp	.L697	#
.L701:
	.loc 1 4912 0 is_stmt 0 discriminator 2
	movl	$-1, %edi	#,
	call	Perl_dounwind	#
.LBB57:
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1173
	movq	32(%rax), %rax	# PL_curstackinfo.1173_7->si_prev, tmp143
	movq	%rax, -32(%rbp)	# tmp143, prev
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L698	#,
	.loc 1 4912 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1175
	testq	%rax, %rax	# PL_stderrgv.1175
	je	.L699	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1176
	movl	12(%rax), %eax	# PL_stderrgv.1176_10->sv_flags, D.15041
	movzbl	%al, %eax	# D.15041, D.15041
	cmpl	$13, %eax	#, D.15041
	jne	.L699	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1177
	movq	(%rax), %rax	# PL_stderrgv.1177_13->sv_any, D.15042
	movq	56(%rax), %rax	# _14->xgv_gp, D.15043
	movq	16(%rax), %rax	# _15->gp_io, D.15044
	testq	%rax, %rax	# D.15044
	je	.L699	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1178
	movq	(%rax), %rax	# PL_stderrgv.1178_17->sv_any, D.15042
	movq	56(%rax), %rax	# _18->xgv_gp, D.15043
	movq	16(%rax), %rax	# _19->gp_io, D.15044
	movq	(%rax), %rax	# _20->sv_any, D.15045
	movq	64(%rax), %rax	# _21->xio_ofp, D.15046
	testq	%rax, %rax	# D.15046
	je	.L699	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1179
	movq	(%rax), %rax	# PL_stderrgv.1179_23->sv_any, D.15042
	movq	56(%rax), %rax	# _24->xgv_gp, D.15043
	movq	16(%rax), %rax	# _25->gp_io, D.15044
	movq	(%rax), %rax	# _26->sv_any, D.15045
	movq	64(%rax), %rax	# _27->xio_ofp, iftmp.1174
	jmp	.L700	#
.L699:
	.loc 1 4912 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L700:
	.loc 1 4912 0 discriminator 3
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# iftmp.1174,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L698:
.LBB58:
	.loc 1 4912 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.1180
	movq	(%rax), %rax	# PL_curstack.1180_30->sv_any, D.15047
	movq	%rbx, %rcx	# sp, sp.1181
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1182
	subq	%rdx, %rcx	# PL_stack_base.1183, D.15048
	movq	%rcx, %rdx	# D.15048, D.15048
	sarq	$3, %rdx	#, tmp144
	movq	%rdx, 8(%rax)	# D.15048, _31->xav_fill
	movq	-32(%rbp), %rax	# prev, tmp145
	movq	(%rax), %rax	# prev_8->si_stack, D.15049
	movq	(%rax), %rax	# _37->sv_any, D.15047
	movq	(%rax), %rax	# _38->xav_array, PL_stack_base.1184
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.1184, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1185
	movq	-32(%rbp), %rax	# prev, tmp146
	movq	(%rax), %rax	# prev_8->si_stack, D.15049
	movq	(%rax), %rax	# _41->sv_any, D.15047
	movq	16(%rax), %rax	# _42->xav_max, D.15048
	salq	$3, %rax	#, D.15050
	addq	%rdx, %rax	# PL_stack_base.1185, PL_stack_max.1186
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.1186, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1187
	movq	-32(%rbp), %rax	# prev, tmp147
	movq	(%rax), %rax	# prev_8->si_stack, D.15049
	movq	(%rax), %rax	# _48->sv_any, D.15047
	movq	8(%rax), %rax	# _49->xav_fill, D.15048
	salq	$3, %rax	#, D.15050
	addq	%rdx, %rax	# PL_stack_base.1187, PL_stack_sp.1188
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1188, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# prev, tmp148
	movq	(%rax), %rax	# prev_8->si_stack, PL_curstack.1189
	movq	%rax, PL_curstack(%rip)	# PL_curstack.1189, PL_curstack
.LBE58:
	movq	-32(%rbp), %rax	# prev, tmp149
	movq	%rax, PL_curstackinfo(%rip)	# tmp149, PL_curstackinfo
.L697:
.LBE57:
	.loc 1 4912 0 discriminator 1
	movq	PL_curstack(%rip), %rdx	# PL_curstack, PL_curstack.1190
	movq	PL_mainstack(%rip), %rax	# PL_mainstack, PL_mainstack.1191
	cmpq	%rax, %rdx	# PL_mainstack.1191, PL_curstack.1190
	jne	.L701	#,
	.loc 1 4913 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1192
	movl	16(%rax), %eax	# PL_curstackinfo.1192_58->si_cxix, D.15052
	testl	%eax, %eax	# D.15052
	js	.L702	#,
	.loc 1 4914 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1193
	movl	16(%rax), %eax	# PL_curstackinfo.1193_60->si_cxix, D.15052
	testl	%eax, %eax	# D.15052
	jle	.L703	#,
	.loc 1 4915 0
	movl	$0, %edi	#,
	call	Perl_dounwind	#
.L703:
	.loc 1 4916 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1194
	movq	8(%rax), %rsi	# PL_curstackinfo.1194_62->si_cxstack, D.15053
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1195
	movl	16(%rax), %edx	# PL_curstackinfo.1195_64->si_cxix, D.15052
	leal	-1(%rdx), %ecx	#, D.15052
	movl	%ecx, 16(%rax)	# D.15052, PL_curstackinfo.1195_64->si_cxix
	movslq	%edx, %rdx	# D.15052, D.15050
	movq	%rdx, %rax	# D.15050, tmp150
	salq	$3, %rax	#, tmp150
	addq	%rdx, %rax	# D.15050, tmp150
	salq	$4, %rax	#, tmp151
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1196
	movl	8(%rbx), %edx	# cx_70->cx_u.cx_blk.blku_oldsp, D.15052
	movslq	%edx, %rdx	# D.15052, D.15050
	salq	$3, %rdx	#, D.15050
	addq	%rdx, %rax	# D.15050, tmp152
	movq	%rax, -24(%rbp)	# tmp152, newsp
	movq	16(%rbx), %rax	# cx_70->cx_u.cx_blk.blku_oldcop, PL_curcop.1197
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1197, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1198
	movl	28(%rbx), %edx	# cx_70->cx_u.cx_blk.blku_oldmarksp, D.15052
	movslq	%edx, %rdx	# D.15052, D.15050
	salq	$2, %rdx	#, D.15050
	addq	%rdx, %rax	# D.15050, PL_markstack_ptr.1199
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1199, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_70->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1200
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1200, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_70->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1201
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1201, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_70->cx_u.cx_blk.blku_oldpm, PL_curpm.1202
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1202, PL_curpm
	movzbl	48(%rbx), %eax	# cx_70->cx_u.cx_blk.blku_gimme, D.15054
	movzbl	%al, %eax	# D.15054, tmp153
	movl	%eax, -36(%rbp)	# tmp153, gimme
	.loc 1 4917 0
	call	Perl_pop_scope	#
.L702:
.LBB59:
	.loc 1 4920 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1203
	movq	200(%rax), %rax	# PL_top_env.1203_87->je_prev, D.15055
	testq	%rax, %rax	# D.15055
	je	.L704	#,
	.loc 1 4920 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1204
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15056,
	call	siglongjmp	#
.L704:
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1205
	movl	%eax, %edi	# PL_statusvalue.1205,
	call	exit	#
.LBE59:
	.cfi_endproc
.LFE51:
	.size	S_my_exit_jump, .-S_my_exit_jump
	.type	read_e_script, @function
read_e_script:
.LFB52:
	.loc 1 4925 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# idx, idx
	movq	%rsi, -32(%rbp)	# buf_sv, buf_sv
	movl	%edx, -24(%rbp)	# maxlen, maxlen
	.loc 1 4927 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1206
	movq	(%rax), %rax	# PL_e_script.1206_3->sv_any, D.15058
	movq	(%rax), %rax	# MEM[(struct XPV *)_4].xpv_pv, tmp77
	movq	%rax, -16(%rbp)	# tmp77, p
	.loc 1 4928 0
	movq	-16(%rbp), %rax	# p, tmp78
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp79, nl
	.loc 1 4929 0
	cmpq	$0, -8(%rbp)	#, nl
	je	.L706	#,
	.loc 1 4929 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# nl, tmp80
	addq	$1, %rax	#, iftmp.1207
	jmp	.L707	#
.L706:
	.loc 1 4929 0 discriminator 2
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1208
	movq	(%rax), %rax	# PL_e_script.1208_8->sv_any, D.15058
	movq	(%rax), %rdx	# MEM[(struct XPV *)_9].xpv_pv, D.15059
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1209
	movq	(%rax), %rax	# PL_e_script.1209_11->sv_any, D.15058
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, D.15060
	addq	%rdx, %rax	# D.15059, iftmp.1207
.L707:
	.loc 1 4929 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.1207, nl
	.loc 1 4930 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rdx	# nl, nl.1210
	movq	-16(%rbp), %rax	# p, p.1211
	cmpq	%rax, %rdx	# p.1211, nl.1210
	jne	.L708	#,
	.loc 1 4931 0
	movl	$read_e_script, %edi	#,
	call	Perl_filter_del	#
	.loc 1 4932 0
	movl	$0, %eax	#, D.15057
	jmp	.L709	#
.L708:
	.loc 1 4934 0
	movq	-8(%rbp), %rdx	# nl, nl.1212
	movq	-16(%rbp), %rax	# p, p.1213
	subq	%rax, %rdx	# p.1213, D.15061
	movq	%rdx, %rax	# D.15061, D.15061
	movq	%rax, %rdx	# D.15061, D.15060
	movq	-16(%rbp), %rsi	# p, tmp81
	movq	-32(%rbp), %rax	# buf_sv, tmp82
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp82,
	call	Perl_sv_catpvn_flags	#
	.loc 1 4935 0
	movq	PL_e_script(%rip), %rax	# PL_e_script, PL_e_script.1214
	movq	-8(%rbp), %rdx	# nl, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# PL_e_script.1214,
	call	Perl_sv_chop	#
	.loc 1 4936 0
	movl	$1, %eax	#, D.15057
.L709:
	.loc 1 4937 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	read_e_script, .-read_e_script
	.section	.rodata
	.align 8
.LC144:
	.string	"-0[octal]       specify record separator (\\0, if no argument)"
	.align 8
.LC145:
	.string	"-a              autosplit mode with -n or -p (splits $_ into @F)"
	.align 8
.LC146:
	.string	"-C[number/list] enables the listed Unicode features"
	.align 8
.LC147:
	.string	"-c              check syntax only (runs BEGIN and CHECK blocks)"
	.align 8
.LC148:
	.string	"-d[:debugger]   run program under debugger"
	.align 8
.LC149:
	.string	"-D[number/list] set debugging flags (argument is a bit mask or alphabets)"
	.align 8
.LC150:
	.string	"-e program      one line of program (several -e's allowed, omit programfile)"
	.align 8
.LC151:
	.string	"-F/pattern/     split() pattern for -a switch (//'s are optional)"
	.align 8
.LC152:
	.string	"-i[extension]   edit <> files in place (makes backup if extension supplied)"
	.align 8
.LC153:
	.string	"-Idirectory     specify @INC/#include directory (several -I's allowed)"
	.align 8
.LC154:
	.string	"-l[octal]       enable line ending processing, specifies line terminator"
	.align 8
.LC155:
	.string	"-[mM][-]module  execute `use/no module...' before executing program"
	.align 8
.LC156:
	.string	"-n              assume 'while (<>) { ... }' loop around program"
	.align 8
.LC157:
	.string	"-p              assume loop like -n but print line also, like sed"
	.align 8
.LC158:
	.string	"-P              run program through C preprocessor before compilation"
	.align 8
.LC159:
	.string	"-s              enable rudimentary parsing for switches after programfile"
	.align 8
.LC160:
	.string	"-S              look for programfile using PATH environment variable"
	.align 8
.LC161:
	.string	"-t              enable tainting warnings"
	.align 8
.LC162:
	.string	"-T              enable tainting checks"
	.align 8
.LC163:
	.string	"-u              dump core after parsing program"
	.align 8
.LC164:
	.string	"-U              allow unsafe operations"
	.align 8
.LC165:
	.string	"-v              print version, subversion (includes VERY IMPORTANT perl info)"
	.align 8
.LC166:
	.string	"-V[:variable]   print configuration summary (or a single Config.pm variable)"
	.align 8
.LC167:
	.string	"-w              enable many useful warnings (RECOMMENDED)"
	.align 8
.LC168:
	.string	"-W              enable all warnings"
	.align 8
.LC169:
	.string	"-x[directory]   strip off text before #!perl line and perhaps cd to directory"
	.align 8
.LC170:
	.string	"-X              disable all warnings"
	.data
	.align 32
	.type	usage_msg.10653, @object
	.size	usage_msg.10653, 232
usage_msg.10653:
	.quad	.LC144
	.quad	.LC145
	.quad	.LC146
	.quad	.LC147
	.quad	.LC148
	.quad	.LC149
	.quad	.LC150
	.quad	.LC151
	.quad	.LC152
	.quad	.LC153
	.quad	.LC154
	.quad	.LC155
	.quad	.LC156
	.quad	.LC157
	.quad	.LC158
	.quad	.LC159
	.quad	.LC160
	.quad	.LC161
	.quad	.LC162
	.quad	.LC163
	.quad	.LC164
	.quad	.LC165
	.quad	.LC166
	.quad	.LC167
	.quad	.LC168
	.quad	.LC169
	.quad	.LC170
	.quad	.LC0
	.quad	0
	.text
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 10 "/usr/include/setjmp.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 12 "/usr/include/dirent.h"
	.file 13 "perl.h"
	.file 14 "op.h"
	.file 15 "cop.h"
	.file 16 "sv.h"
	.file 17 "regexp.h"
	.file 18 "gv.h"
	.file 19 "mg.h"
	.file 20 "av.h"
	.file 21 "hv.h"
	.file 22 "cv.h"
	.file 23 "handy.h"
	.file 24 "perlio.h"
	.file 25 "iperlsys.h"
	.file 26 "pad.h"
	.file 27 "scope.h"
	.file 28 "patchlevel.h"
	.file 29 "opcode.h"
	.file 30 "perlvars.h"
	.file 31 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x46b8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1161
	.byte	0x1
	.long	.LASF1162
	.long	.LASF1163
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
	.byte	0x4
	.byte	0x85
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0x4
	.byte	0x86
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.byte	0x87
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x88
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x8a
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x8b
	.long	0x42
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x8c
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x94
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0xb8
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x4
	.long	.LASF21
	.byte	0x5
	.byte	0x41
	.long	0x7b
	.uleb128 0x4
	.long	.LASF22
	.byte	0x5
	.byte	0x50
	.long	0x70
	.uleb128 0x4
	.long	.LASF23
	.byte	0x5
	.byte	0x6d
	.long	0xdc
	.uleb128 0x4
	.long	.LASF24
	.byte	0x6
	.byte	0x4b
	.long	0xb9
	.uleb128 0x4
	.long	.LASF25
	.byte	0x7
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.byte	0x80
	.byte	0x8
	.byte	0x1c
	.long	0x14b
	.uleb128 0x8
	.long	.LASF27
	.byte	0x8
	.byte	0x1e
	.long	0x14b
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x42
	.long	0x15b
	.uleb128 0xa
	.long	0xb2
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x8
	.byte	0x1f
	.long	0x136
	.uleb128 0xb
	.long	.LASF33
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x18b
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.byte	0x7a
	.long	0xb9
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.byte	0x7b
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF31
	.uleb128 0xc
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0x1a4
	.uleb128 0xd
	.long	0xf8
	.uleb128 0x4
	.long	.LASF32
	.byte	0x9
	.byte	0x1f
	.long	0x1b4
	.uleb128 0x9
	.long	0x5e
	.long	0x1c4
	.uleb128 0xa
	.long	0xb2
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0xc8
	.byte	0xa
	.byte	0x22
	.long	0x1f5
	.uleb128 0x8
	.long	.LASF35
	.byte	0xa
	.byte	0x28
	.long	0x1a9
	.byte	0
	.uleb128 0x8
	.long	.LASF36
	.byte	0xa
	.byte	0x29
	.long	0x57
	.byte	0x40
	.uleb128 0x8
	.long	.LASF37
	.byte	0xa
	.byte	0x2a
	.long	0x15b
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.long	0x1c4
	.long	0x205
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0xa
	.byte	0x63
	.long	0x1f5
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF39
	.byte	0x90
	.byte	0xb
	.byte	0x2e
	.long	0x2d7
	.uleb128 0x8
	.long	.LASF40
	.byte	0xb
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF41
	.byte	0xb
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF42
	.byte	0xb
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF43
	.byte	0xb
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF44
	.byte	0xb
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF45
	.byte	0xb
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF46
	.byte	0xb
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF47
	.byte	0xb
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF48
	.byte	0xb
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF49
	.byte	0xb
	.byte	0x4e
	.long	0xc6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF50
	.byte	0xb
	.byte	0x50
	.long	0xd1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF51
	.byte	0xb
	.byte	0x5b
	.long	0x166
	.byte	0x48
	.uleb128 0x8
	.long	.LASF52
	.byte	0xb
	.byte	0x5c
	.long	0x166
	.byte	0x58
	.uleb128 0x8
	.long	.LASF53
	.byte	0xb
	.byte	0x5d
	.long	0x166
	.byte	0x68
	.uleb128 0x8
	.long	.LASF54
	.byte	0xb
	.byte	0x6a
	.long	0x2d7
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0xe7
	.long	0x2e7
	.uleb128 0xa
	.long	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"DIR"
	.byte	0xc
	.byte	0x80
	.long	0x2f2
	.uleb128 0xf
	.long	.LASF244
	.uleb128 0x10
	.string	"IV"
	.byte	0xd
	.value	0x52b
	.long	0x5e
	.uleb128 0x10
	.string	"UV"
	.byte	0xd
	.value	0x52c
	.long	0x42
	.uleb128 0x10
	.string	"NV"
	.byte	0xd
	.value	0x5f3
	.long	0x318
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF55
	.uleb128 0x11
	.long	.LASF56
	.byte	0xd
	.value	0x7d3
	.long	0x12b
	.uleb128 0x10
	.string	"OP"
	.byte	0xd
	.value	0x7d5
	.long	0x336
	.uleb128 0x12
	.string	"op"
	.byte	0x28
	.byte	0xe
	.byte	0xe2
	.long	0x3a2
	.uleb128 0x8
	.long	.LASF57
	.byte	0xe
	.byte	0xe3
	.long	0x132f
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xe
	.byte	0xe3
	.long	0x132f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xe
	.byte	0xe3
	.long	0x1d32
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0xe
	.byte	0xe3
	.long	0x13a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF61
	.byte	0xe
	.byte	0xe3
	.long	0x1169
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0xe3
	.long	0x1169
	.byte	0x22
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0xe3
	.long	0x115f
	.byte	0x24
	.uleb128 0x8
	.long	.LASF64
	.byte	0xe
	.byte	0xe3
	.long	0x115f
	.byte	0x25
	.byte	0
	.uleb128 0x10
	.string	"COP"
	.byte	0xd
	.value	0x7d6
	.long	0x3ae
	.uleb128 0x12
	.string	"cop"
	.byte	0x60
	.byte	0xf
	.byte	0x10
	.long	0x47b
	.uleb128 0x8
	.long	.LASF57
	.byte	0xf
	.byte	0x11
	.long	0x132f
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xf
	.byte	0x11
	.long	0x132f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xf
	.byte	0x11
	.long	0x1d32
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0xf
	.byte	0x11
	.long	0x13a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF61
	.byte	0xf
	.byte	0x11
	.long	0x1169
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0xf
	.byte	0x11
	.long	0x1169
	.byte	0x22
	.uleb128 0x8
	.long	.LASF63
	.byte	0xf
	.byte	0x11
	.long	0x115f
	.byte	0x24
	.uleb128 0x8
	.long	.LASF64
	.byte	0xf
	.byte	0x11
	.long	0x115f
	.byte	0x25
	.uleb128 0x8
	.long	.LASF65
	.byte	0xf
	.byte	0x12
	.long	0xf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF66
	.byte	0xf
	.byte	0x17
	.long	0x1317
	.byte	0x30
	.uleb128 0x8
	.long	.LASF67
	.byte	0xf
	.byte	0x18
	.long	0x134c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF68
	.byte	0xf
	.byte	0x1a
	.long	0x117f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF69
	.byte	0xf
	.byte	0x1b
	.long	0x1174
	.byte	0x44
	.uleb128 0x8
	.long	.LASF70
	.byte	0xf
	.byte	0x1c
	.long	0x118a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF71
	.byte	0xf
	.byte	0x1d
	.long	0x11a7
	.byte	0x50
	.uleb128 0x8
	.long	.LASF72
	.byte	0xf
	.byte	0x1e
	.long	0x11a7
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x7d7
	.long	0x487
	.uleb128 0xb
	.long	.LASF74
	.byte	0x30
	.byte	0xe
	.byte	0xe6
	.long	0x500
	.uleb128 0x8
	.long	.LASF57
	.byte	0xe
	.byte	0xe7
	.long	0x132f
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xe
	.byte	0xe7
	.long	0x132f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xe
	.byte	0xe7
	.long	0x1d32
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0xe
	.byte	0xe7
	.long	0x13a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF61
	.byte	0xe
	.byte	0xe7
	.long	0x1169
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0xe7
	.long	0x1169
	.byte	0x22
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0xe7
	.long	0x115f
	.byte	0x24
	.uleb128 0x8
	.long	.LASF64
	.byte	0xe
	.byte	0xe7
	.long	0x115f
	.byte	0x25
	.uleb128 0x8
	.long	.LASF75
	.byte	0xe
	.byte	0xe8
	.long	0x132f
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0xd
	.value	0x7da
	.long	0x50c
	.uleb128 0xb
	.long	.LASF77
	.byte	0x38
	.byte	0xe
	.byte	0xf1
	.long	0x591
	.uleb128 0x8
	.long	.LASF57
	.byte	0xe
	.byte	0xf2
	.long	0x132f
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xe
	.byte	0xf2
	.long	0x132f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xe
	.byte	0xf2
	.long	0x1d32
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0xe
	.byte	0xf2
	.long	0x13a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF61
	.byte	0xe
	.byte	0xf2
	.long	0x1169
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0xf2
	.long	0x1169
	.byte	0x22
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0xf2
	.long	0x115f
	.byte	0x24
	.uleb128 0x8
	.long	.LASF64
	.byte	0xe
	.byte	0xf2
	.long	0x115f
	.byte	0x25
	.uleb128 0x8
	.long	.LASF75
	.byte	0xe
	.byte	0xf3
	.long	0x132f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF78
	.byte	0xe
	.byte	0xf4
	.long	0x132f
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF79
	.byte	0xd
	.value	0x7db
	.long	0x59d
	.uleb128 0xb
	.long	.LASF80
	.byte	0x70
	.byte	0xe
	.byte	0xfd
	.long	0x68b
	.uleb128 0x8
	.long	.LASF57
	.byte	0xe
	.byte	0xfe
	.long	0x132f
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0xe
	.byte	0xfe
	.long	0x132f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xe
	.byte	0xfe
	.long	0x1d32
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0xe
	.byte	0xfe
	.long	0x13a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF61
	.byte	0xe
	.byte	0xfe
	.long	0x1169
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0xfe
	.long	0x1169
	.byte	0x22
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0xfe
	.long	0x115f
	.byte	0x24
	.uleb128 0x8
	.long	.LASF64
	.byte	0xe
	.byte	0xfe
	.long	0x115f
	.byte	0x25
	.uleb128 0x8
	.long	.LASF75
	.byte	0xe
	.byte	0xff
	.long	0x132f
	.byte	0x28
	.uleb128 0x13
	.long	.LASF81
	.byte	0xe
	.value	0x100
	.long	0x132f
	.byte	0x30
	.uleb128 0x13
	.long	.LASF82
	.byte	0xe
	.value	0x101
	.long	0x132f
	.byte	0x38
	.uleb128 0x13
	.long	.LASF83
	.byte	0xe
	.value	0x102
	.long	0x132f
	.byte	0x40
	.uleb128 0x13
	.long	.LASF84
	.byte	0xe
	.value	0x103
	.long	0x1d38
	.byte	0x48
	.uleb128 0x13
	.long	.LASF85
	.byte	0xe
	.value	0x107
	.long	0x1d3e
	.byte	0x50
	.uleb128 0x13
	.long	.LASF86
	.byte	0xe
	.value	0x109
	.long	0x117f
	.byte	0x58
	.uleb128 0x13
	.long	.LASF87
	.byte	0xe
	.value	0x10a
	.long	0x117f
	.byte	0x5c
	.uleb128 0x13
	.long	.LASF88
	.byte	0xe
	.value	0x10b
	.long	0x115f
	.byte	0x60
	.uleb128 0x13
	.long	.LASF89
	.byte	0xe
	.value	0x10f
	.long	0x1317
	.byte	0x68
	.byte	0
	.uleb128 0x11
	.long	.LASF90
	.byte	0xd
	.value	0x7e1
	.long	0x697
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0xd
	.value	0xea7
	.long	0x6b2
	.uleb128 0x13
	.long	.LASF92
	.byte	0xd
	.value	0xea8
	.long	0xf8
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"SV"
	.byte	0xd
	.value	0x7ea
	.long	0x6bd
	.uleb128 0x12
	.string	"sv"
	.byte	0x10
	.byte	0x10
	.byte	0x43
	.long	0x6ed
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x44
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x45
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x46
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"AV"
	.byte	0xd
	.value	0x7eb
	.long	0x6f8
	.uleb128 0x12
	.string	"av"
	.byte	0x10
	.byte	0x10
	.byte	0x55
	.long	0x728
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x56
	.long	0x12ff
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x57
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x58
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"HV"
	.byte	0xd
	.value	0x7ec
	.long	0x733
	.uleb128 0x12
	.string	"hv"
	.byte	0x10
	.byte	0x10
	.byte	0x5b
	.long	0x763
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x5c
	.long	0x1305
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x5d
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x5e
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CV"
	.byte	0xd
	.value	0x7ed
	.long	0x76e
	.uleb128 0x12
	.string	"cv"
	.byte	0x10
	.byte	0x10
	.byte	0x4f
	.long	0x79e
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x50
	.long	0x12f9
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x51
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x52
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF96
	.byte	0xd
	.value	0x7ee
	.long	0x7aa
	.uleb128 0xb
	.long	.LASF97
	.byte	0x68
	.byte	0x11
	.byte	0x1f
	.long	0x883
	.uleb128 0x8
	.long	.LASF98
	.byte	0x11
	.byte	0x20
	.long	0x1247
	.byte	0
	.uleb128 0x8
	.long	.LASF99
	.byte	0x11
	.byte	0x21
	.long	0x1247
	.byte	0x8
	.uleb128 0x8
	.long	.LASF100
	.byte	0x11
	.byte	0x22
	.long	0x124d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF101
	.byte	0x11
	.byte	0x23
	.long	0x1258
	.byte	0x18
	.uleb128 0x8
	.long	.LASF102
	.byte	0x11
	.byte	0x24
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF103
	.byte	0x11
	.byte	0x25
	.long	0x1263
	.byte	0x28
	.uleb128 0x8
	.long	.LASF104
	.byte	0x11
	.byte	0x26
	.long	0xf2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF105
	.byte	0x11
	.byte	0x28
	.long	0x1269
	.byte	0x38
	.uleb128 0x8
	.long	.LASF106
	.byte	0x11
	.byte	0x29
	.long	0x1174
	.byte	0x40
	.uleb128 0x8
	.long	.LASF107
	.byte	0x11
	.byte	0x2a
	.long	0x1174
	.byte	0x44
	.uleb128 0x8
	.long	.LASF108
	.byte	0x11
	.byte	0x2b
	.long	0x1174
	.byte	0x48
	.uleb128 0x8
	.long	.LASF109
	.byte	0x11
	.byte	0x2c
	.long	0x1174
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF110
	.byte	0x11
	.byte	0x2d
	.long	0x117f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF111
	.byte	0x11
	.byte	0x2e
	.long	0x117f
	.byte	0x54
	.uleb128 0x8
	.long	.LASF112
	.byte	0x11
	.byte	0x2f
	.long	0x117f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF113
	.byte	0x11
	.byte	0x30
	.long	0x117f
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF114
	.byte	0x11
	.byte	0x32
	.long	0x126f
	.byte	0x60
	.byte	0
	.uleb128 0x10
	.string	"GP"
	.byte	0xd
	.value	0x7ef
	.long	0x88e
	.uleb128 0x12
	.string	"gp"
	.byte	0x58
	.byte	0x12
	.byte	0xb
	.long	0x92a
	.uleb128 0x8
	.long	.LASF115
	.byte	0x12
	.byte	0xc
	.long	0x11a7
	.byte	0
	.uleb128 0x8
	.long	.LASF116
	.byte	0x12
	.byte	0xd
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF117
	.byte	0x12
	.byte	0xe
	.long	0x138c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF118
	.byte	0x12
	.byte	0xf
	.long	0x1340
	.byte	0x18
	.uleb128 0x8
	.long	.LASF119
	.byte	0x12
	.byte	0x10
	.long	0x1352
	.byte	0x20
	.uleb128 0x8
	.long	.LASF120
	.byte	0x12
	.byte	0x11
	.long	0x1317
	.byte	0x28
	.uleb128 0x8
	.long	.LASF121
	.byte	0x12
	.byte	0x12
	.long	0x134c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF122
	.byte	0x12
	.byte	0x13
	.long	0x1340
	.byte	0x38
	.uleb128 0x8
	.long	.LASF123
	.byte	0x12
	.byte	0x14
	.long	0x117f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF124
	.byte	0x12
	.byte	0x15
	.long	0x117f
	.byte	0x44
	.uleb128 0x8
	.long	.LASF125
	.byte	0x12
	.byte	0x16
	.long	0x118a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF126
	.byte	0x12
	.byte	0x17
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.string	"GV"
	.byte	0xd
	.value	0x7f0
	.long	0x935
	.uleb128 0x12
	.string	"gv"
	.byte	0x10
	.byte	0x10
	.byte	0x49
	.long	0x965
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x4a
	.long	0x12f3
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x4b
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x4c
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"IO"
	.byte	0xd
	.value	0x7f1
	.long	0x970
	.uleb128 0x12
	.string	"io"
	.byte	0x10
	.byte	0x10
	.byte	0x61
	.long	0x9a0
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x62
	.long	0x130b
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x63
	.long	0x117f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x64
	.long	0x117f
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF127
	.byte	0xd
	.value	0x7f2
	.long	0x9ac
	.uleb128 0x14
	.long	.LASF128
	.byte	0x90
	.byte	0xf
	.value	0x1a2
	.long	0x9d4
	.uleb128 0x13
	.long	.LASF129
	.byte	0xf
	.value	0x1a3
	.long	0x117f
	.byte	0
	.uleb128 0x13
	.long	.LASF130
	.byte	0xf
	.value	0x1a7
	.long	0x1fa5
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF131
	.byte	0x88
	.byte	0xf
	.value	0x130
	.long	0xa4a
	.uleb128 0x13
	.long	.LASF132
	.byte	0xf
	.value	0x131
	.long	0x1174
	.byte	0
	.uleb128 0x13
	.long	.LASF133
	.byte	0xf
	.value	0x132
	.long	0x1edb
	.byte	0x8
	.uleb128 0x13
	.long	.LASF134
	.byte	0xf
	.value	0x133
	.long	0x1174
	.byte	0x10
	.uleb128 0x13
	.long	.LASF135
	.byte	0xf
	.value	0x134
	.long	0x1174
	.byte	0x14
	.uleb128 0x13
	.long	.LASF136
	.byte	0xf
	.value	0x135
	.long	0x1174
	.byte	0x18
	.uleb128 0x13
	.long	.LASF137
	.byte	0xf
	.value	0x136
	.long	0x1d38
	.byte	0x20
	.uleb128 0x13
	.long	.LASF138
	.byte	0xf
	.value	0x137
	.long	0x115f
	.byte	0x28
	.uleb128 0x13
	.long	.LASF139
	.byte	0xf
	.value	0x13d
	.long	0x1ead
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF140
	.byte	0xd
	.value	0x7f5
	.long	0xa56
	.uleb128 0xb
	.long	.LASF141
	.byte	0x30
	.byte	0x13
	.byte	0x1a
	.long	0xac3
	.uleb128 0x8
	.long	.LASF142
	.byte	0x13
	.byte	0x1b
	.long	0x1311
	.byte	0
	.uleb128 0x8
	.long	.LASF143
	.byte	0x13
	.byte	0x1c
	.long	0x2154
	.byte	0x8
	.uleb128 0x8
	.long	.LASF144
	.byte	0x13
	.byte	0x1d
	.long	0x1169
	.byte	0x10
	.uleb128 0x8
	.long	.LASF145
	.byte	0x13
	.byte	0x1e
	.long	0xf8
	.byte	0x12
	.uleb128 0x8
	.long	.LASF146
	.byte	0x13
	.byte	0x1f
	.long	0x115f
	.byte	0x13
	.uleb128 0x8
	.long	.LASF147
	.byte	0x13
	.byte	0x20
	.long	0x11a7
	.byte	0x18
	.uleb128 0x8
	.long	.LASF148
	.byte	0x13
	.byte	0x21
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x13
	.byte	0x22
	.long	0x1174
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.string	"XPV"
	.byte	0xd
	.value	0x7f7
	.long	0xacf
	.uleb128 0x12
	.string	"xpv"
	.byte	0x18
	.byte	0x10
	.byte	0xf9
	.long	0xb00
	.uleb128 0x8
	.long	.LASF150
	.byte	0x10
	.byte	0xfa
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF151
	.byte	0x10
	.byte	0xfb
	.long	0x31f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF152
	.byte	0x10
	.byte	0xfc
	.long	0x31f
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF153
	.byte	0xd
	.value	0x7f8
	.long	0xb0c
	.uleb128 0xb
	.long	.LASF154
	.byte	0x20
	.byte	0x10
	.byte	0xff
	.long	0xb4d
	.uleb128 0x13
	.long	.LASF150
	.byte	0x10
	.value	0x100
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x10
	.value	0x101
	.long	0x31f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF152
	.byte	0x10
	.value	0x102
	.long	0x31f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF155
	.byte	0x10
	.value	0x103
	.long	0x2f7
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF156
	.byte	0xd
	.value	0x7fa
	.long	0xb59
	.uleb128 0x14
	.long	.LASF157
	.byte	0x28
	.byte	0x10
	.value	0x10d
	.long	0xba8
	.uleb128 0x13
	.long	.LASF150
	.byte	0x10
	.value	0x10e
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x10
	.value	0x10f
	.long	0x31f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF152
	.byte	0x10
	.value	0x110
	.long	0x31f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF155
	.byte	0x10
	.value	0x111
	.long	0x2f7
	.byte	0x18
	.uleb128 0x13
	.long	.LASF158
	.byte	0x10
	.value	0x112
	.long	0x30d
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF159
	.byte	0xd
	.value	0x7fb
	.long	0xbb4
	.uleb128 0x14
	.long	.LASF160
	.byte	0x38
	.byte	0x10
	.value	0x116
	.long	0xc1d
	.uleb128 0x13
	.long	.LASF150
	.byte	0x10
	.value	0x117
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x10
	.value	0x118
	.long	0x31f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF152
	.byte	0x10
	.value	0x119
	.long	0x31f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF155
	.byte	0x10
	.value	0x11a
	.long	0x2f7
	.byte	0x18
	.uleb128 0x13
	.long	.LASF158
	.byte	0x10
	.value	0x11b
	.long	0x30d
	.byte	0x20
	.uleb128 0x13
	.long	.LASF161
	.byte	0x10
	.value	0x11c
	.long	0x1311
	.byte	0x28
	.uleb128 0x13
	.long	.LASF162
	.byte	0x10
	.value	0x11d
	.long	0x1317
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF163
	.byte	0xd
	.value	0x7fd
	.long	0xc29
	.uleb128 0xb
	.long	.LASF164
	.byte	0x50
	.byte	0x14
	.byte	0xb
	.long	0xcae
	.uleb128 0x8
	.long	.LASF165
	.byte	0x14
	.byte	0xc
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF166
	.byte	0x14
	.byte	0xd
	.long	0x115
	.byte	0x8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x14
	.byte	0xe
	.long	0x115
	.byte	0x10
	.uleb128 0x8
	.long	.LASF168
	.byte	0x14
	.byte	0xf
	.long	0x2f7
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x14
	.byte	0x10
	.long	0x30d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0x14
	.byte	0x11
	.long	0x1311
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0x14
	.byte	0x12
	.long	0x1317
	.byte	0x30
	.uleb128 0x8
	.long	.LASF169
	.byte	0x14
	.byte	0x14
	.long	0x1ea7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF170
	.byte	0x14
	.byte	0x15
	.long	0x11a7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF171
	.byte	0x14
	.byte	0x16
	.long	0x115f
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.long	.LASF172
	.byte	0xd
	.value	0x7fe
	.long	0xcba
	.uleb128 0xb
	.long	.LASF173
	.byte	0x58
	.byte	0x15
	.byte	0x22
	.long	0xd4b
	.uleb128 0x8
	.long	.LASF174
	.byte	0x15
	.byte	0x23
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x15
	.byte	0x24
	.long	0x31f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF176
	.byte	0x15
	.byte	0x25
	.long	0x31f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF177
	.byte	0x15
	.byte	0x26
	.long	0x2f7
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x15
	.byte	0x27
	.long	0x30d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0x15
	.byte	0x29
	.long	0x1311
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0x15
	.byte	0x2a
	.long	0x1317
	.byte	0x30
	.uleb128 0x8
	.long	.LASF178
	.byte	0x15
	.byte	0x2c
	.long	0x1174
	.byte	0x38
	.uleb128 0x8
	.long	.LASF179
	.byte	0x15
	.byte	0x2d
	.long	0x20cb
	.byte	0x40
	.uleb128 0x8
	.long	.LASF180
	.byte	0x15
	.byte	0x2e
	.long	0x1d38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF181
	.byte	0x15
	.byte	0x2f
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.long	.LASF182
	.byte	0xd
	.value	0x7ff
	.long	0xd57
	.uleb128 0x14
	.long	.LASF183
	.byte	0x60
	.byte	0x10
	.value	0x130
	.long	0xe01
	.uleb128 0x13
	.long	.LASF150
	.byte	0x10
	.value	0x131
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x10
	.value	0x132
	.long	0x31f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF152
	.byte	0x10
	.value	0x133
	.long	0x31f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF155
	.byte	0x10
	.value	0x134
	.long	0x2f7
	.byte	0x18
	.uleb128 0x13
	.long	.LASF158
	.byte	0x10
	.value	0x135
	.long	0x30d
	.byte	0x20
	.uleb128 0x13
	.long	.LASF161
	.byte	0x10
	.value	0x136
	.long	0x1311
	.byte	0x28
	.uleb128 0x13
	.long	.LASF162
	.byte	0x10
	.value	0x137
	.long	0x1317
	.byte	0x30
	.uleb128 0x13
	.long	.LASF184
	.byte	0x10
	.value	0x139
	.long	0x131d
	.byte	0x38
	.uleb128 0x13
	.long	.LASF185
	.byte	0x10
	.value	0x13a
	.long	0xf2
	.byte	0x40
	.uleb128 0x13
	.long	.LASF186
	.byte	0x10
	.value	0x13b
	.long	0x31f
	.byte	0x48
	.uleb128 0x13
	.long	.LASF187
	.byte	0x10
	.value	0x13c
	.long	0x1317
	.byte	0x50
	.uleb128 0x13
	.long	.LASF188
	.byte	0x10
	.value	0x13d
	.long	0x115f
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF189
	.byte	0xd
	.value	0x800
	.long	0xe0d
	.uleb128 0xb
	.long	.LASF190
	.byte	0x90
	.byte	0x16
	.byte	0xe
	.long	0xefe
	.uleb128 0x8
	.long	.LASF150
	.byte	0x16
	.byte	0xf
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF151
	.byte	0x16
	.byte	0x10
	.long	0x31f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF152
	.byte	0x16
	.byte	0x11
	.long	0x31f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF168
	.byte	0x16
	.byte	0x12
	.long	0x2f7
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x16
	.byte	0x13
	.long	0x30d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0x16
	.byte	0x14
	.long	0x1311
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0x16
	.byte	0x15
	.long	0x1317
	.byte	0x30
	.uleb128 0x8
	.long	.LASF191
	.byte	0x16
	.byte	0x17
	.long	0x1317
	.byte	0x38
	.uleb128 0x8
	.long	.LASF192
	.byte	0x16
	.byte	0x18
	.long	0x132f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF193
	.byte	0x16
	.byte	0x19
	.long	0x132f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF194
	.byte	0x16
	.byte	0x1a
	.long	0x1346
	.byte	0x50
	.uleb128 0x8
	.long	.LASF195
	.byte	0x16
	.byte	0x1b
	.long	0x10b0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF196
	.byte	0x16
	.byte	0x1c
	.long	0x134c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF197
	.byte	0x16
	.byte	0x1d
	.long	0xf2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF198
	.byte	0x16
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF199
	.byte	0x16
	.byte	0x1f
	.long	0x13b3
	.byte	0x78
	.uleb128 0x8
	.long	.LASF200
	.byte	0x16
	.byte	0x20
	.long	0x1340
	.byte	0x80
	.uleb128 0x8
	.long	.LASF201
	.byte	0x16
	.byte	0x25
	.long	0x1323
	.byte	0x88
	.uleb128 0x8
	.long	.LASF202
	.byte	0x16
	.byte	0x26
	.long	0x117f
	.byte	0x8c
	.byte	0
	.uleb128 0x11
	.long	.LASF203
	.byte	0xd
	.value	0x803
	.long	0xf0a
	.uleb128 0x14
	.long	.LASF204
	.byte	0xa8
	.byte	0x10
	.value	0x170
	.long	0x1043
	.uleb128 0x13
	.long	.LASF150
	.byte	0x10
	.value	0x171
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x10
	.value	0x172
	.long	0x31f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF152
	.byte	0x10
	.value	0x173
	.long	0x31f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF155
	.byte	0x10
	.value	0x174
	.long	0x2f7
	.byte	0x18
	.uleb128 0x13
	.long	.LASF158
	.byte	0x10
	.value	0x175
	.long	0x30d
	.byte	0x20
	.uleb128 0x13
	.long	.LASF161
	.byte	0x10
	.value	0x176
	.long	0x1311
	.byte	0x28
	.uleb128 0x13
	.long	.LASF162
	.byte	0x10
	.value	0x177
	.long	0x1317
	.byte	0x30
	.uleb128 0x13
	.long	.LASF205
	.byte	0x10
	.value	0x179
	.long	0x1380
	.byte	0x38
	.uleb128 0x13
	.long	.LASF206
	.byte	0x10
	.value	0x17a
	.long	0x1380
	.byte	0x40
	.uleb128 0x13
	.long	.LASF207
	.byte	0x10
	.value	0x187
	.long	0x1358
	.byte	0x48
	.uleb128 0x13
	.long	.LASF208
	.byte	0x10
	.value	0x188
	.long	0x2f7
	.byte	0x50
	.uleb128 0x13
	.long	.LASF209
	.byte	0x10
	.value	0x189
	.long	0x2f7
	.byte	0x58
	.uleb128 0x13
	.long	.LASF210
	.byte	0x10
	.value	0x18a
	.long	0x2f7
	.byte	0x60
	.uleb128 0x13
	.long	.LASF211
	.byte	0x10
	.value	0x18b
	.long	0x2f7
	.byte	0x68
	.uleb128 0x13
	.long	.LASF212
	.byte	0x10
	.value	0x18c
	.long	0xf2
	.byte	0x70
	.uleb128 0x13
	.long	.LASF213
	.byte	0x10
	.value	0x18d
	.long	0x134c
	.byte	0x78
	.uleb128 0x13
	.long	.LASF214
	.byte	0x10
	.value	0x18e
	.long	0xf2
	.byte	0x80
	.uleb128 0x13
	.long	.LASF215
	.byte	0x10
	.value	0x18f
	.long	0x134c
	.byte	0x88
	.uleb128 0x13
	.long	.LASF216
	.byte	0x10
	.value	0x190
	.long	0xf2
	.byte	0x90
	.uleb128 0x13
	.long	.LASF217
	.byte	0x10
	.value	0x191
	.long	0x134c
	.byte	0x98
	.uleb128 0x13
	.long	.LASF218
	.byte	0x10
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF219
	.byte	0x10
	.value	0x193
	.long	0xf8
	.byte	0xa2
	.uleb128 0x13
	.long	.LASF220
	.byte	0x10
	.value	0x194
	.long	0xf8
	.byte	0xa3
	.byte	0
	.uleb128 0x11
	.long	.LASF221
	.byte	0xd
	.value	0x804
	.long	0x104f
	.uleb128 0xb
	.long	.LASF222
	.byte	0x38
	.byte	0x13
	.byte	0xe
	.long	0x10b0
	.uleb128 0x8
	.long	.LASF223
	.byte	0x13
	.byte	0xf
	.long	0x20eb
	.byte	0
	.uleb128 0x8
	.long	.LASF224
	.byte	0x13
	.byte	0x10
	.long	0x20eb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF225
	.byte	0x13
	.byte	0x11
	.long	0x2105
	.byte	0x10
	.uleb128 0x8
	.long	.LASF226
	.byte	0x13
	.byte	0x12
	.long	0x20eb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF227
	.byte	0x13
	.byte	0x13
	.long	0x20eb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF228
	.byte	0x13
	.byte	0x14
	.long	0x212e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0x16
	.long	0x214e
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.string	"ANY"
	.byte	0xd
	.value	0x805
	.long	0x10bc
	.uleb128 0x15
	.string	"any"
	.byte	0x8
	.byte	0xd
	.value	0x9f1
	.long	0x111e
	.uleb128 0x16
	.long	.LASF230
	.byte	0xd
	.value	0x9f2
	.long	0xc4
	.uleb128 0x16
	.long	.LASF231
	.byte	0xd
	.value	0x9f3
	.long	0x1174
	.uleb128 0x16
	.long	.LASF232
	.byte	0xd
	.value	0x9f4
	.long	0x2f7
	.uleb128 0x16
	.long	.LASF233
	.byte	0xd
	.value	0x9f5
	.long	0x5e
	.uleb128 0x16
	.long	.LASF234
	.byte	0xd
	.value	0x9f6
	.long	0xf8
	.uleb128 0x16
	.long	.LASF235
	.byte	0xd
	.value	0x9f7
	.long	0x11a1
	.uleb128 0x16
	.long	.LASF236
	.byte	0xd
	.value	0x9f8
	.long	0x11a1
	.byte	0
	.uleb128 0x11
	.long	.LASF237
	.byte	0xd
	.value	0x808
	.long	0x112a
	.uleb128 0x14
	.long	.LASF238
	.byte	0x18
	.byte	0x10
	.value	0x4ed
	.long	0x115f
	.uleb128 0x13
	.long	.LASF239
	.byte	0x10
	.value	0x4ee
	.long	0x1352
	.byte	0
	.uleb128 0x13
	.long	.LASF240
	.byte	0x10
	.value	0x4ef
	.long	0x302
	.byte	0x8
	.uleb128 0x13
	.long	.LASF241
	.byte	0x10
	.value	0x4f0
	.long	0x1386
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"U8"
	.byte	0x17
	.byte	0x85
	.long	0x2d
	.uleb128 0xe
	.string	"U16"
	.byte	0x17
	.byte	0x87
	.long	0x34
	.uleb128 0xe
	.string	"I32"
	.byte	0x17
	.byte	0x88
	.long	0x57
	.uleb128 0xe
	.string	"U32"
	.byte	0x17
	.byte	0x89
	.long	0x3b
	.uleb128 0x11
	.long	.LASF242
	.byte	0x17
	.value	0x209
	.long	0x117f
	.uleb128 0x17
	.long	0x11a1
	.uleb128 0x18
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1196
	.uleb128 0x6
	.byte	0x8
	.long	0x6b2
	.uleb128 0x9
	.long	0xf8
	.long	0x11bd
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF243
	.byte	0x18
	.byte	0x63
	.long	0x11c8
	.uleb128 0xf
	.long	.LASF245
	.uleb128 0x4
	.long	.LASF246
	.byte	0x18
	.byte	0x65
	.long	0x11d8
	.uleb128 0x6
	.byte	0x8
	.long	0x11bd
	.uleb128 0x11
	.long	.LASF247
	.byte	0x18
	.value	0x175
	.long	0x11ea
	.uleb128 0xf
	.long	.LASF248
	.uleb128 0x4
	.long	.LASF249
	.byte	0x19
	.byte	0x36
	.long	0x11fa
	.uleb128 0x6
	.byte	0x8
	.long	0x1200
	.uleb128 0x17
	.long	0x120b
	.uleb128 0x18
	.long	0x57
	.byte	0
	.uleb128 0xb
	.long	.LASF250
	.byte	0x4
	.byte	0x11
	.byte	0x13
	.long	0x123c
	.uleb128 0x8
	.long	.LASF240
	.byte	0x11
	.byte	0x14
	.long	0x115f
	.byte	0
	.uleb128 0x8
	.long	.LASF251
	.byte	0x11
	.byte	0x15
	.long	0x115f
	.byte	0x1
	.uleb128 0x8
	.long	.LASF252
	.byte	0x11
	.byte	0x16
	.long	0x1169
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF250
	.byte	0x11
	.byte	0x19
	.long	0x120b
	.uleb128 0x6
	.byte	0x8
	.long	0x1174
	.uleb128 0x6
	.byte	0x8
	.long	0x123c
	.uleb128 0xf
	.long	.LASF253
	.uleb128 0x6
	.byte	0x8
	.long	0x1253
	.uleb128 0xf
	.long	.LASF254
	.uleb128 0x6
	.byte	0x8
	.long	0x125e
	.uleb128 0x6
	.byte	0x8
	.long	0x117f
	.uleb128 0x9
	.long	0x123c
	.long	0x127f
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF97
	.byte	0x11
	.byte	0x33
	.long	0x7aa
	.uleb128 0x19
	.byte	0x4
	.byte	0x10
	.byte	0x2e
	.long	0x12f3
	.uleb128 0x1a
	.long	.LASF255
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF256
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF257
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF258
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF259
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF260
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF261
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF262
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF263
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF264
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF265
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF266
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF267
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF268
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF269
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF270
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd4b
	.uleb128 0x6
	.byte	0x8
	.long	0xe01
	.uleb128 0x6
	.byte	0x8
	.long	0xc1d
	.uleb128 0x6
	.byte	0x8
	.long	0xcae
	.uleb128 0x6
	.byte	0x8
	.long	0xefe
	.uleb128 0x6
	.byte	0x8
	.long	0xa4a
	.uleb128 0x6
	.byte	0x8
	.long	0x728
	.uleb128 0x6
	.byte	0x8
	.long	0x883
	.uleb128 0x11
	.long	.LASF271
	.byte	0x10
	.value	0x150
	.long	0x1169
	.uleb128 0x6
	.byte	0x8
	.long	0x32b
	.uleb128 0x17
	.long	0x1340
	.uleb128 0x18
	.long	0x1340
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x763
	.uleb128 0x6
	.byte	0x8
	.long	0x1335
	.uleb128 0x6
	.byte	0x8
	.long	0x92a
	.uleb128 0x6
	.byte	0x8
	.long	0x6ed
	.uleb128 0x1b
	.byte	0x8
	.byte	0x10
	.value	0x184
	.long	0x137a
	.uleb128 0x16
	.long	.LASF272
	.byte	0x10
	.value	0x185
	.long	0x137a
	.uleb128 0x16
	.long	.LASF273
	.byte	0x10
	.value	0x186
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e7
	.uleb128 0x6
	.byte	0x8
	.long	0x11cd
	.uleb128 0x6
	.byte	0x8
	.long	0x68b
	.uleb128 0x6
	.byte	0x8
	.long	0x970
	.uleb128 0x4
	.long	.LASF274
	.byte	0x1a
	.byte	0x13
	.long	0x6ed
	.uleb128 0xe
	.string	"PAD"
	.byte	0x1a
	.byte	0x14
	.long	0x6ed
	.uleb128 0x4
	.long	.LASF275
	.byte	0x1a
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1392
	.uleb128 0x1c
	.long	.LASF1164
	.byte	0x4
	.byte	0x1f
	.byte	0xf
	.long	0x1d2d
	.uleb128 0x1a
	.long	.LASF276
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF277
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF278
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF279
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF280
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF281
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF282
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF283
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF284
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF285
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF286
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF287
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF288
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF289
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF290
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF291
	.sleb128 15
	.uleb128 0x1a
	.long	.LASF292
	.sleb128 16
	.uleb128 0x1a
	.long	.LASF293
	.sleb128 17
	.uleb128 0x1a
	.long	.LASF294
	.sleb128 18
	.uleb128 0x1a
	.long	.LASF295
	.sleb128 19
	.uleb128 0x1a
	.long	.LASF296
	.sleb128 20
	.uleb128 0x1a
	.long	.LASF297
	.sleb128 21
	.uleb128 0x1a
	.long	.LASF298
	.sleb128 22
	.uleb128 0x1a
	.long	.LASF299
	.sleb128 23
	.uleb128 0x1a
	.long	.LASF300
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF301
	.sleb128 25
	.uleb128 0x1a
	.long	.LASF302
	.sleb128 26
	.uleb128 0x1a
	.long	.LASF303
	.sleb128 27
	.uleb128 0x1a
	.long	.LASF304
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF305
	.sleb128 29
	.uleb128 0x1a
	.long	.LASF306
	.sleb128 30
	.uleb128 0x1a
	.long	.LASF307
	.sleb128 31
	.uleb128 0x1a
	.long	.LASF308
	.sleb128 32
	.uleb128 0x1a
	.long	.LASF309
	.sleb128 33
	.uleb128 0x1a
	.long	.LASF310
	.sleb128 34
	.uleb128 0x1a
	.long	.LASF311
	.sleb128 35
	.uleb128 0x1a
	.long	.LASF312
	.sleb128 36
	.uleb128 0x1a
	.long	.LASF313
	.sleb128 37
	.uleb128 0x1a
	.long	.LASF314
	.sleb128 38
	.uleb128 0x1a
	.long	.LASF315
	.sleb128 39
	.uleb128 0x1a
	.long	.LASF316
	.sleb128 40
	.uleb128 0x1a
	.long	.LASF317
	.sleb128 41
	.uleb128 0x1a
	.long	.LASF318
	.sleb128 42
	.uleb128 0x1a
	.long	.LASF319
	.sleb128 43
	.uleb128 0x1a
	.long	.LASF320
	.sleb128 44
	.uleb128 0x1a
	.long	.LASF321
	.sleb128 45
	.uleb128 0x1a
	.long	.LASF322
	.sleb128 46
	.uleb128 0x1a
	.long	.LASF323
	.sleb128 47
	.uleb128 0x1a
	.long	.LASF324
	.sleb128 48
	.uleb128 0x1a
	.long	.LASF325
	.sleb128 49
	.uleb128 0x1a
	.long	.LASF326
	.sleb128 50
	.uleb128 0x1a
	.long	.LASF327
	.sleb128 51
	.uleb128 0x1a
	.long	.LASF328
	.sleb128 52
	.uleb128 0x1a
	.long	.LASF329
	.sleb128 53
	.uleb128 0x1a
	.long	.LASF330
	.sleb128 54
	.uleb128 0x1a
	.long	.LASF331
	.sleb128 55
	.uleb128 0x1a
	.long	.LASF332
	.sleb128 56
	.uleb128 0x1a
	.long	.LASF333
	.sleb128 57
	.uleb128 0x1a
	.long	.LASF334
	.sleb128 58
	.uleb128 0x1a
	.long	.LASF335
	.sleb128 59
	.uleb128 0x1a
	.long	.LASF336
	.sleb128 60
	.uleb128 0x1a
	.long	.LASF337
	.sleb128 61
	.uleb128 0x1a
	.long	.LASF338
	.sleb128 62
	.uleb128 0x1a
	.long	.LASF339
	.sleb128 63
	.uleb128 0x1a
	.long	.LASF340
	.sleb128 64
	.uleb128 0x1a
	.long	.LASF341
	.sleb128 65
	.uleb128 0x1a
	.long	.LASF342
	.sleb128 66
	.uleb128 0x1a
	.long	.LASF343
	.sleb128 67
	.uleb128 0x1a
	.long	.LASF344
	.sleb128 68
	.uleb128 0x1a
	.long	.LASF345
	.sleb128 69
	.uleb128 0x1a
	.long	.LASF346
	.sleb128 70
	.uleb128 0x1a
	.long	.LASF347
	.sleb128 71
	.uleb128 0x1a
	.long	.LASF348
	.sleb128 72
	.uleb128 0x1a
	.long	.LASF349
	.sleb128 73
	.uleb128 0x1a
	.long	.LASF350
	.sleb128 74
	.uleb128 0x1a
	.long	.LASF351
	.sleb128 75
	.uleb128 0x1a
	.long	.LASF352
	.sleb128 76
	.uleb128 0x1a
	.long	.LASF353
	.sleb128 77
	.uleb128 0x1a
	.long	.LASF354
	.sleb128 78
	.uleb128 0x1a
	.long	.LASF355
	.sleb128 79
	.uleb128 0x1a
	.long	.LASF356
	.sleb128 80
	.uleb128 0x1a
	.long	.LASF357
	.sleb128 81
	.uleb128 0x1a
	.long	.LASF358
	.sleb128 82
	.uleb128 0x1a
	.long	.LASF359
	.sleb128 83
	.uleb128 0x1a
	.long	.LASF360
	.sleb128 84
	.uleb128 0x1a
	.long	.LASF361
	.sleb128 85
	.uleb128 0x1a
	.long	.LASF362
	.sleb128 86
	.uleb128 0x1a
	.long	.LASF363
	.sleb128 87
	.uleb128 0x1a
	.long	.LASF364
	.sleb128 88
	.uleb128 0x1a
	.long	.LASF365
	.sleb128 89
	.uleb128 0x1a
	.long	.LASF366
	.sleb128 90
	.uleb128 0x1a
	.long	.LASF367
	.sleb128 91
	.uleb128 0x1a
	.long	.LASF368
	.sleb128 92
	.uleb128 0x1a
	.long	.LASF369
	.sleb128 93
	.uleb128 0x1a
	.long	.LASF370
	.sleb128 94
	.uleb128 0x1a
	.long	.LASF371
	.sleb128 95
	.uleb128 0x1a
	.long	.LASF372
	.sleb128 96
	.uleb128 0x1a
	.long	.LASF373
	.sleb128 97
	.uleb128 0x1a
	.long	.LASF374
	.sleb128 98
	.uleb128 0x1a
	.long	.LASF375
	.sleb128 99
	.uleb128 0x1a
	.long	.LASF376
	.sleb128 100
	.uleb128 0x1a
	.long	.LASF377
	.sleb128 101
	.uleb128 0x1a
	.long	.LASF378
	.sleb128 102
	.uleb128 0x1a
	.long	.LASF379
	.sleb128 103
	.uleb128 0x1a
	.long	.LASF380
	.sleb128 104
	.uleb128 0x1a
	.long	.LASF381
	.sleb128 105
	.uleb128 0x1a
	.long	.LASF382
	.sleb128 106
	.uleb128 0x1a
	.long	.LASF383
	.sleb128 107
	.uleb128 0x1a
	.long	.LASF384
	.sleb128 108
	.uleb128 0x1a
	.long	.LASF385
	.sleb128 109
	.uleb128 0x1a
	.long	.LASF386
	.sleb128 110
	.uleb128 0x1a
	.long	.LASF387
	.sleb128 111
	.uleb128 0x1a
	.long	.LASF388
	.sleb128 112
	.uleb128 0x1a
	.long	.LASF389
	.sleb128 113
	.uleb128 0x1a
	.long	.LASF390
	.sleb128 114
	.uleb128 0x1a
	.long	.LASF391
	.sleb128 115
	.uleb128 0x1a
	.long	.LASF392
	.sleb128 116
	.uleb128 0x1a
	.long	.LASF393
	.sleb128 117
	.uleb128 0x1a
	.long	.LASF394
	.sleb128 118
	.uleb128 0x1a
	.long	.LASF395
	.sleb128 119
	.uleb128 0x1a
	.long	.LASF396
	.sleb128 120
	.uleb128 0x1a
	.long	.LASF397
	.sleb128 121
	.uleb128 0x1a
	.long	.LASF398
	.sleb128 122
	.uleb128 0x1a
	.long	.LASF399
	.sleb128 123
	.uleb128 0x1a
	.long	.LASF400
	.sleb128 124
	.uleb128 0x1a
	.long	.LASF401
	.sleb128 125
	.uleb128 0x1a
	.long	.LASF402
	.sleb128 126
	.uleb128 0x1a
	.long	.LASF403
	.sleb128 127
	.uleb128 0x1a
	.long	.LASF404
	.sleb128 128
	.uleb128 0x1a
	.long	.LASF405
	.sleb128 129
	.uleb128 0x1a
	.long	.LASF406
	.sleb128 130
	.uleb128 0x1a
	.long	.LASF407
	.sleb128 131
	.uleb128 0x1a
	.long	.LASF408
	.sleb128 132
	.uleb128 0x1a
	.long	.LASF409
	.sleb128 133
	.uleb128 0x1a
	.long	.LASF410
	.sleb128 134
	.uleb128 0x1a
	.long	.LASF411
	.sleb128 135
	.uleb128 0x1a
	.long	.LASF412
	.sleb128 136
	.uleb128 0x1a
	.long	.LASF413
	.sleb128 137
	.uleb128 0x1a
	.long	.LASF414
	.sleb128 138
	.uleb128 0x1a
	.long	.LASF415
	.sleb128 139
	.uleb128 0x1a
	.long	.LASF416
	.sleb128 140
	.uleb128 0x1a
	.long	.LASF417
	.sleb128 141
	.uleb128 0x1a
	.long	.LASF418
	.sleb128 142
	.uleb128 0x1a
	.long	.LASF419
	.sleb128 143
	.uleb128 0x1a
	.long	.LASF420
	.sleb128 144
	.uleb128 0x1a
	.long	.LASF421
	.sleb128 145
	.uleb128 0x1a
	.long	.LASF422
	.sleb128 146
	.uleb128 0x1a
	.long	.LASF423
	.sleb128 147
	.uleb128 0x1a
	.long	.LASF424
	.sleb128 148
	.uleb128 0x1a
	.long	.LASF425
	.sleb128 149
	.uleb128 0x1a
	.long	.LASF426
	.sleb128 150
	.uleb128 0x1a
	.long	.LASF427
	.sleb128 151
	.uleb128 0x1a
	.long	.LASF428
	.sleb128 152
	.uleb128 0x1a
	.long	.LASF429
	.sleb128 153
	.uleb128 0x1a
	.long	.LASF430
	.sleb128 154
	.uleb128 0x1a
	.long	.LASF431
	.sleb128 155
	.uleb128 0x1a
	.long	.LASF432
	.sleb128 156
	.uleb128 0x1a
	.long	.LASF433
	.sleb128 157
	.uleb128 0x1a
	.long	.LASF434
	.sleb128 158
	.uleb128 0x1a
	.long	.LASF435
	.sleb128 159
	.uleb128 0x1a
	.long	.LASF436
	.sleb128 160
	.uleb128 0x1a
	.long	.LASF437
	.sleb128 161
	.uleb128 0x1a
	.long	.LASF438
	.sleb128 162
	.uleb128 0x1a
	.long	.LASF439
	.sleb128 163
	.uleb128 0x1a
	.long	.LASF440
	.sleb128 164
	.uleb128 0x1a
	.long	.LASF441
	.sleb128 165
	.uleb128 0x1a
	.long	.LASF442
	.sleb128 166
	.uleb128 0x1a
	.long	.LASF443
	.sleb128 167
	.uleb128 0x1a
	.long	.LASF444
	.sleb128 168
	.uleb128 0x1a
	.long	.LASF445
	.sleb128 169
	.uleb128 0x1a
	.long	.LASF446
	.sleb128 170
	.uleb128 0x1a
	.long	.LASF447
	.sleb128 171
	.uleb128 0x1a
	.long	.LASF448
	.sleb128 172
	.uleb128 0x1a
	.long	.LASF449
	.sleb128 173
	.uleb128 0x1a
	.long	.LASF450
	.sleb128 174
	.uleb128 0x1a
	.long	.LASF451
	.sleb128 175
	.uleb128 0x1a
	.long	.LASF452
	.sleb128 176
	.uleb128 0x1a
	.long	.LASF453
	.sleb128 177
	.uleb128 0x1a
	.long	.LASF454
	.sleb128 178
	.uleb128 0x1a
	.long	.LASF455
	.sleb128 179
	.uleb128 0x1a
	.long	.LASF456
	.sleb128 180
	.uleb128 0x1a
	.long	.LASF457
	.sleb128 181
	.uleb128 0x1a
	.long	.LASF458
	.sleb128 182
	.uleb128 0x1a
	.long	.LASF459
	.sleb128 183
	.uleb128 0x1a
	.long	.LASF460
	.sleb128 184
	.uleb128 0x1a
	.long	.LASF461
	.sleb128 185
	.uleb128 0x1a
	.long	.LASF462
	.sleb128 186
	.uleb128 0x1a
	.long	.LASF463
	.sleb128 187
	.uleb128 0x1a
	.long	.LASF464
	.sleb128 188
	.uleb128 0x1a
	.long	.LASF465
	.sleb128 189
	.uleb128 0x1a
	.long	.LASF466
	.sleb128 190
	.uleb128 0x1a
	.long	.LASF467
	.sleb128 191
	.uleb128 0x1a
	.long	.LASF468
	.sleb128 192
	.uleb128 0x1a
	.long	.LASF469
	.sleb128 193
	.uleb128 0x1a
	.long	.LASF470
	.sleb128 194
	.uleb128 0x1a
	.long	.LASF471
	.sleb128 195
	.uleb128 0x1a
	.long	.LASF472
	.sleb128 196
	.uleb128 0x1a
	.long	.LASF473
	.sleb128 197
	.uleb128 0x1a
	.long	.LASF474
	.sleb128 198
	.uleb128 0x1a
	.long	.LASF475
	.sleb128 199
	.uleb128 0x1a
	.long	.LASF476
	.sleb128 200
	.uleb128 0x1a
	.long	.LASF477
	.sleb128 201
	.uleb128 0x1a
	.long	.LASF478
	.sleb128 202
	.uleb128 0x1a
	.long	.LASF479
	.sleb128 203
	.uleb128 0x1a
	.long	.LASF480
	.sleb128 204
	.uleb128 0x1a
	.long	.LASF481
	.sleb128 205
	.uleb128 0x1a
	.long	.LASF482
	.sleb128 206
	.uleb128 0x1a
	.long	.LASF483
	.sleb128 207
	.uleb128 0x1a
	.long	.LASF484
	.sleb128 208
	.uleb128 0x1a
	.long	.LASF485
	.sleb128 209
	.uleb128 0x1a
	.long	.LASF486
	.sleb128 210
	.uleb128 0x1a
	.long	.LASF487
	.sleb128 211
	.uleb128 0x1a
	.long	.LASF488
	.sleb128 212
	.uleb128 0x1a
	.long	.LASF489
	.sleb128 213
	.uleb128 0x1a
	.long	.LASF490
	.sleb128 214
	.uleb128 0x1a
	.long	.LASF491
	.sleb128 215
	.uleb128 0x1a
	.long	.LASF492
	.sleb128 216
	.uleb128 0x1a
	.long	.LASF493
	.sleb128 217
	.uleb128 0x1a
	.long	.LASF494
	.sleb128 218
	.uleb128 0x1a
	.long	.LASF495
	.sleb128 219
	.uleb128 0x1a
	.long	.LASF496
	.sleb128 220
	.uleb128 0x1a
	.long	.LASF497
	.sleb128 221
	.uleb128 0x1a
	.long	.LASF498
	.sleb128 222
	.uleb128 0x1a
	.long	.LASF499
	.sleb128 223
	.uleb128 0x1a
	.long	.LASF500
	.sleb128 224
	.uleb128 0x1a
	.long	.LASF501
	.sleb128 225
	.uleb128 0x1a
	.long	.LASF502
	.sleb128 226
	.uleb128 0x1a
	.long	.LASF503
	.sleb128 227
	.uleb128 0x1a
	.long	.LASF504
	.sleb128 228
	.uleb128 0x1a
	.long	.LASF505
	.sleb128 229
	.uleb128 0x1a
	.long	.LASF506
	.sleb128 230
	.uleb128 0x1a
	.long	.LASF507
	.sleb128 231
	.uleb128 0x1a
	.long	.LASF508
	.sleb128 232
	.uleb128 0x1a
	.long	.LASF509
	.sleb128 233
	.uleb128 0x1a
	.long	.LASF510
	.sleb128 234
	.uleb128 0x1a
	.long	.LASF511
	.sleb128 235
	.uleb128 0x1a
	.long	.LASF512
	.sleb128 236
	.uleb128 0x1a
	.long	.LASF513
	.sleb128 237
	.uleb128 0x1a
	.long	.LASF514
	.sleb128 238
	.uleb128 0x1a
	.long	.LASF515
	.sleb128 239
	.uleb128 0x1a
	.long	.LASF516
	.sleb128 240
	.uleb128 0x1a
	.long	.LASF517
	.sleb128 241
	.uleb128 0x1a
	.long	.LASF518
	.sleb128 242
	.uleb128 0x1a
	.long	.LASF519
	.sleb128 243
	.uleb128 0x1a
	.long	.LASF520
	.sleb128 244
	.uleb128 0x1a
	.long	.LASF521
	.sleb128 245
	.uleb128 0x1a
	.long	.LASF522
	.sleb128 246
	.uleb128 0x1a
	.long	.LASF523
	.sleb128 247
	.uleb128 0x1a
	.long	.LASF524
	.sleb128 248
	.uleb128 0x1a
	.long	.LASF525
	.sleb128 249
	.uleb128 0x1a
	.long	.LASF526
	.sleb128 250
	.uleb128 0x1a
	.long	.LASF527
	.sleb128 251
	.uleb128 0x1a
	.long	.LASF528
	.sleb128 252
	.uleb128 0x1a
	.long	.LASF529
	.sleb128 253
	.uleb128 0x1a
	.long	.LASF530
	.sleb128 254
	.uleb128 0x1a
	.long	.LASF531
	.sleb128 255
	.uleb128 0x1a
	.long	.LASF532
	.sleb128 256
	.uleb128 0x1a
	.long	.LASF533
	.sleb128 257
	.uleb128 0x1a
	.long	.LASF534
	.sleb128 258
	.uleb128 0x1a
	.long	.LASF535
	.sleb128 259
	.uleb128 0x1a
	.long	.LASF536
	.sleb128 260
	.uleb128 0x1a
	.long	.LASF537
	.sleb128 261
	.uleb128 0x1a
	.long	.LASF538
	.sleb128 262
	.uleb128 0x1a
	.long	.LASF539
	.sleb128 263
	.uleb128 0x1a
	.long	.LASF540
	.sleb128 264
	.uleb128 0x1a
	.long	.LASF541
	.sleb128 265
	.uleb128 0x1a
	.long	.LASF542
	.sleb128 266
	.uleb128 0x1a
	.long	.LASF543
	.sleb128 267
	.uleb128 0x1a
	.long	.LASF544
	.sleb128 268
	.uleb128 0x1a
	.long	.LASF545
	.sleb128 269
	.uleb128 0x1a
	.long	.LASF546
	.sleb128 270
	.uleb128 0x1a
	.long	.LASF547
	.sleb128 271
	.uleb128 0x1a
	.long	.LASF548
	.sleb128 272
	.uleb128 0x1a
	.long	.LASF549
	.sleb128 273
	.uleb128 0x1a
	.long	.LASF550
	.sleb128 274
	.uleb128 0x1a
	.long	.LASF551
	.sleb128 275
	.uleb128 0x1a
	.long	.LASF552
	.sleb128 276
	.uleb128 0x1a
	.long	.LASF553
	.sleb128 277
	.uleb128 0x1a
	.long	.LASF554
	.sleb128 278
	.uleb128 0x1a
	.long	.LASF555
	.sleb128 279
	.uleb128 0x1a
	.long	.LASF556
	.sleb128 280
	.uleb128 0x1a
	.long	.LASF557
	.sleb128 281
	.uleb128 0x1a
	.long	.LASF558
	.sleb128 282
	.uleb128 0x1a
	.long	.LASF559
	.sleb128 283
	.uleb128 0x1a
	.long	.LASF560
	.sleb128 284
	.uleb128 0x1a
	.long	.LASF561
	.sleb128 285
	.uleb128 0x1a
	.long	.LASF562
	.sleb128 286
	.uleb128 0x1a
	.long	.LASF563
	.sleb128 287
	.uleb128 0x1a
	.long	.LASF564
	.sleb128 288
	.uleb128 0x1a
	.long	.LASF565
	.sleb128 289
	.uleb128 0x1a
	.long	.LASF566
	.sleb128 290
	.uleb128 0x1a
	.long	.LASF567
	.sleb128 291
	.uleb128 0x1a
	.long	.LASF568
	.sleb128 292
	.uleb128 0x1a
	.long	.LASF569
	.sleb128 293
	.uleb128 0x1a
	.long	.LASF570
	.sleb128 294
	.uleb128 0x1a
	.long	.LASF571
	.sleb128 295
	.uleb128 0x1a
	.long	.LASF572
	.sleb128 296
	.uleb128 0x1a
	.long	.LASF573
	.sleb128 297
	.uleb128 0x1a
	.long	.LASF574
	.sleb128 298
	.uleb128 0x1a
	.long	.LASF575
	.sleb128 299
	.uleb128 0x1a
	.long	.LASF576
	.sleb128 300
	.uleb128 0x1a
	.long	.LASF577
	.sleb128 301
	.uleb128 0x1a
	.long	.LASF578
	.sleb128 302
	.uleb128 0x1a
	.long	.LASF579
	.sleb128 303
	.uleb128 0x1a
	.long	.LASF580
	.sleb128 304
	.uleb128 0x1a
	.long	.LASF581
	.sleb128 305
	.uleb128 0x1a
	.long	.LASF582
	.sleb128 306
	.uleb128 0x1a
	.long	.LASF583
	.sleb128 307
	.uleb128 0x1a
	.long	.LASF584
	.sleb128 308
	.uleb128 0x1a
	.long	.LASF585
	.sleb128 309
	.uleb128 0x1a
	.long	.LASF586
	.sleb128 310
	.uleb128 0x1a
	.long	.LASF587
	.sleb128 311
	.uleb128 0x1a
	.long	.LASF588
	.sleb128 312
	.uleb128 0x1a
	.long	.LASF589
	.sleb128 313
	.uleb128 0x1a
	.long	.LASF590
	.sleb128 314
	.uleb128 0x1a
	.long	.LASF591
	.sleb128 315
	.uleb128 0x1a
	.long	.LASF592
	.sleb128 316
	.uleb128 0x1a
	.long	.LASF593
	.sleb128 317
	.uleb128 0x1a
	.long	.LASF594
	.sleb128 318
	.uleb128 0x1a
	.long	.LASF595
	.sleb128 319
	.uleb128 0x1a
	.long	.LASF596
	.sleb128 320
	.uleb128 0x1a
	.long	.LASF597
	.sleb128 321
	.uleb128 0x1a
	.long	.LASF598
	.sleb128 322
	.uleb128 0x1a
	.long	.LASF599
	.sleb128 323
	.uleb128 0x1a
	.long	.LASF600
	.sleb128 324
	.uleb128 0x1a
	.long	.LASF601
	.sleb128 325
	.uleb128 0x1a
	.long	.LASF602
	.sleb128 326
	.uleb128 0x1a
	.long	.LASF603
	.sleb128 327
	.uleb128 0x1a
	.long	.LASF604
	.sleb128 328
	.uleb128 0x1a
	.long	.LASF605
	.sleb128 329
	.uleb128 0x1a
	.long	.LASF606
	.sleb128 330
	.uleb128 0x1a
	.long	.LASF607
	.sleb128 331
	.uleb128 0x1a
	.long	.LASF608
	.sleb128 332
	.uleb128 0x1a
	.long	.LASF609
	.sleb128 333
	.uleb128 0x1a
	.long	.LASF610
	.sleb128 334
	.uleb128 0x1a
	.long	.LASF611
	.sleb128 335
	.uleb128 0x1a
	.long	.LASF612
	.sleb128 336
	.uleb128 0x1a
	.long	.LASF613
	.sleb128 337
	.uleb128 0x1a
	.long	.LASF614
	.sleb128 338
	.uleb128 0x1a
	.long	.LASF615
	.sleb128 339
	.uleb128 0x1a
	.long	.LASF616
	.sleb128 340
	.uleb128 0x1a
	.long	.LASF617
	.sleb128 341
	.uleb128 0x1a
	.long	.LASF618
	.sleb128 342
	.uleb128 0x1a
	.long	.LASF619
	.sleb128 343
	.uleb128 0x1a
	.long	.LASF620
	.sleb128 344
	.uleb128 0x1a
	.long	.LASF621
	.sleb128 345
	.uleb128 0x1a
	.long	.LASF622
	.sleb128 346
	.uleb128 0x1a
	.long	.LASF623
	.sleb128 347
	.uleb128 0x1a
	.long	.LASF624
	.sleb128 348
	.uleb128 0x1a
	.long	.LASF625
	.sleb128 349
	.uleb128 0x1a
	.long	.LASF626
	.sleb128 350
	.uleb128 0x1a
	.long	.LASF627
	.sleb128 351
	.uleb128 0x1a
	.long	.LASF628
	.sleb128 352
	.byte	0
	.uleb128 0x1d
	.long	0x132f
	.uleb128 0x6
	.byte	0x8
	.long	0x1d2d
	.uleb128 0x6
	.byte	0x8
	.long	0x591
	.uleb128 0x6
	.byte	0x8
	.long	0x79e
	.uleb128 0xb
	.long	.LASF629
	.byte	0x40
	.byte	0xf
	.byte	0x70
	.long	0x1dbb
	.uleb128 0x1e
	.string	"cv"
	.byte	0xf
	.byte	0x71
	.long	0x1340
	.byte	0
	.uleb128 0x1e
	.string	"gv"
	.byte	0xf
	.byte	0x72
	.long	0x134c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF630
	.byte	0xf
	.byte	0x73
	.long	0x134c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF631
	.byte	0xf
	.byte	0x75
	.long	0x1352
	.byte	0x18
	.uleb128 0x8
	.long	.LASF632
	.byte	0xf
	.byte	0x77
	.long	0x1352
	.byte	0x20
	.uleb128 0x8
	.long	.LASF633
	.byte	0xf
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF634
	.byte	0xf
	.byte	0x79
	.long	0x115f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF635
	.byte	0xf
	.byte	0x7a
	.long	0x115f
	.byte	0x31
	.uleb128 0x8
	.long	.LASF636
	.byte	0xf
	.byte	0x7b
	.long	0x1dbb
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x139d
	.uleb128 0xb
	.long	.LASF637
	.byte	0x28
	.byte	0xf
	.byte	0xd3
	.long	0x1e15
	.uleb128 0x8
	.long	.LASF638
	.byte	0xf
	.byte	0xd4
	.long	0x1174
	.byte	0
	.uleb128 0x8
	.long	.LASF639
	.byte	0xf
	.byte	0xd5
	.long	0x1174
	.byte	0x4
	.uleb128 0x8
	.long	.LASF640
	.byte	0xf
	.byte	0xd6
	.long	0x11a7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF641
	.byte	0xf
	.byte	0xd7
	.long	0x132f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF642
	.byte	0xf
	.byte	0xd8
	.long	0x11a7
	.byte	0x18
	.uleb128 0x1e
	.string	"cv"
	.byte	0xf
	.byte	0xd9
	.long	0x1340
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF643
	.byte	0x58
	.byte	0xf
	.byte	0xf0
	.long	0x1ea7
	.uleb128 0x8
	.long	.LASF644
	.byte	0xf
	.byte	0xf1
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF645
	.byte	0xf
	.byte	0xf2
	.long	0x1174
	.byte	0x8
	.uleb128 0x8
	.long	.LASF646
	.byte	0xf
	.byte	0xf3
	.long	0x132f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF647
	.byte	0xf
	.byte	0xf4
	.long	0x132f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF648
	.byte	0xf
	.byte	0xf5
	.long	0x132f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF649
	.byte	0xf
	.byte	0xfa
	.long	0x1ea7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF650
	.byte	0xf
	.byte	0xfc
	.long	0x11a7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF651
	.byte	0xf
	.byte	0xfd
	.long	0x11a7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF652
	.byte	0xf
	.byte	0xfe
	.long	0x1352
	.byte	0x40
	.uleb128 0x8
	.long	.LASF653
	.byte	0xf
	.byte	0xff
	.long	0x2f7
	.byte	0x48
	.uleb128 0x13
	.long	.LASF654
	.byte	0xf
	.value	0x100
	.long	0x2f7
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11a7
	.uleb128 0x1b
	.byte	0x58
	.byte	0xf
	.value	0x139
	.long	0x1edb
	.uleb128 0x16
	.long	.LASF655
	.byte	0xf
	.value	0x13a
	.long	0x1d44
	.uleb128 0x16
	.long	.LASF656
	.byte	0xf
	.value	0x13b
	.long	0x1dc1
	.uleb128 0x16
	.long	.LASF657
	.byte	0xf
	.value	0x13c
	.long	0x1e15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a2
	.uleb128 0x14
	.long	.LASF658
	.byte	0x58
	.byte	0xf
	.value	0x16e
	.long	0x1fa5
	.uleb128 0x13
	.long	.LASF659
	.byte	0xf
	.value	0x16f
	.long	0x1174
	.byte	0
	.uleb128 0x13
	.long	.LASF660
	.byte	0xf
	.value	0x170
	.long	0x1174
	.byte	0x4
	.uleb128 0x13
	.long	.LASF661
	.byte	0xf
	.value	0x171
	.long	0x1174
	.byte	0x8
	.uleb128 0x13
	.long	.LASF662
	.byte	0xf
	.value	0x172
	.long	0x1174
	.byte	0xc
	.uleb128 0x13
	.long	.LASF663
	.byte	0xf
	.value	0x173
	.long	0xf8
	.byte	0x10
	.uleb128 0x13
	.long	.LASF664
	.byte	0xf
	.value	0x174
	.long	0xf8
	.byte	0x11
	.uleb128 0x13
	.long	.LASF665
	.byte	0xf
	.value	0x175
	.long	0xf2
	.byte	0x18
	.uleb128 0x13
	.long	.LASF666
	.byte	0xf
	.value	0x176
	.long	0x11a7
	.byte	0x20
	.uleb128 0x13
	.long	.LASF667
	.byte	0xf
	.value	0x177
	.long	0x11a7
	.byte	0x28
	.uleb128 0x13
	.long	.LASF668
	.byte	0xf
	.value	0x178
	.long	0xf2
	.byte	0x30
	.uleb128 0x13
	.long	.LASF669
	.byte	0xf
	.value	0x179
	.long	0xf2
	.byte	0x38
	.uleb128 0x13
	.long	.LASF670
	.byte	0xf
	.value	0x17a
	.long	0xf2
	.byte	0x40
	.uleb128 0x13
	.long	.LASF671
	.byte	0xf
	.value	0x17b
	.long	0xc4
	.byte	0x48
	.uleb128 0x13
	.long	.LASF672
	.byte	0xf
	.value	0x17c
	.long	0x1d3e
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.byte	0x88
	.byte	0xf
	.value	0x1a4
	.long	0x1fc7
	.uleb128 0x16
	.long	.LASF673
	.byte	0xf
	.value	0x1a5
	.long	0x9d4
	.uleb128 0x16
	.long	.LASF674
	.byte	0xf
	.value	0x1a6
	.long	0x1ee1
	.byte	0
	.uleb128 0x14
	.long	.LASF675
	.byte	0x38
	.byte	0xf
	.value	0x20c
	.long	0x203d
	.uleb128 0x13
	.long	.LASF676
	.byte	0xf
	.value	0x20d
	.long	0x1352
	.byte	0
	.uleb128 0x13
	.long	.LASF677
	.byte	0xf
	.value	0x20e
	.long	0x203d
	.byte	0x8
	.uleb128 0x13
	.long	.LASF678
	.byte	0xf
	.value	0x20f
	.long	0x1174
	.byte	0x10
	.uleb128 0x13
	.long	.LASF679
	.byte	0xf
	.value	0x210
	.long	0x1174
	.byte	0x14
	.uleb128 0x13
	.long	.LASF680
	.byte	0xf
	.value	0x211
	.long	0x1174
	.byte	0x18
	.uleb128 0x13
	.long	.LASF681
	.byte	0xf
	.value	0x212
	.long	0x2043
	.byte	0x20
	.uleb128 0x13
	.long	.LASF682
	.byte	0xf
	.value	0x213
	.long	0x2043
	.byte	0x28
	.uleb128 0x13
	.long	.LASF683
	.byte	0xf
	.value	0x214
	.long	0x1174
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a0
	.uleb128 0x6
	.byte	0x8
	.long	0x1fc7
	.uleb128 0x11
	.long	.LASF684
	.byte	0xf
	.value	0x219
	.long	0x1fc7
	.uleb128 0xe
	.string	"HE"
	.byte	0x15
	.byte	0xc
	.long	0x205f
	.uleb128 0x12
	.string	"he"
	.byte	0x18
	.byte	0x15
	.byte	0x10
	.long	0x208f
	.uleb128 0x8
	.long	.LASF685
	.byte	0x15
	.byte	0x11
	.long	0x20cb
	.byte	0
	.uleb128 0x8
	.long	.LASF686
	.byte	0x15
	.byte	0x12
	.long	0x20d1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF687
	.byte	0x15
	.byte	0x13
	.long	0x11a7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"HEK"
	.byte	0x15
	.byte	0xd
	.long	0x209a
	.uleb128 0x12
	.string	"hek"
	.byte	0xc
	.byte	0x15
	.byte	0x17
	.long	0x20cb
	.uleb128 0x8
	.long	.LASF688
	.byte	0x15
	.byte	0x18
	.long	0x117f
	.byte	0
	.uleb128 0x8
	.long	.LASF689
	.byte	0x15
	.byte	0x19
	.long	0x1174
	.byte	0x4
	.uleb128 0x8
	.long	.LASF690
	.byte	0x15
	.byte	0x1a
	.long	0x11ad
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2055
	.uleb128 0x6
	.byte	0x8
	.long	0x208f
	.uleb128 0x1f
	.long	0x57
	.long	0x20eb
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0x1311
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x20d7
	.uleb128 0x1f
	.long	0x117f
	.long	0x2105
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0x1311
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x20f1
	.uleb128 0x1f
	.long	0x57
	.long	0x212e
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0x1311
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0x19e
	.uleb128 0x18
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x210b
	.uleb128 0x1f
	.long	0x57
	.long	0x2148
	.uleb128 0x18
	.long	0x1311
	.uleb128 0x18
	.long	0x2148
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x111e
	.uleb128 0x6
	.byte	0x8
	.long	0x2134
	.uleb128 0x6
	.byte	0x8
	.long	0x1043
	.uleb128 0xb
	.long	.LASF691
	.byte	0xd8
	.byte	0x1b
	.byte	0xe6
	.long	0x2198
	.uleb128 0x8
	.long	.LASF692
	.byte	0x1b
	.byte	0xf9
	.long	0x205
	.byte	0
	.uleb128 0x8
	.long	.LASF693
	.byte	0x1b
	.byte	0xfa
	.long	0x2198
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF694
	.byte	0x1b
	.byte	0xff
	.long	0x57
	.byte	0xd0
	.uleb128 0x13
	.long	.LASF695
	.byte	0x1b
	.value	0x100
	.long	0xf8
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x215a
	.uleb128 0x11
	.long	.LASF696
	.byte	0x1b
	.value	0x107
	.long	0x215a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF697
	.uleb128 0x11
	.long	.LASF698
	.byte	0xd
	.value	0xcc1
	.long	0x21bd
	.uleb128 0x6
	.byte	0x8
	.long	0x21c3
	.uleb128 0x1d
	.long	0x57
	.uleb128 0x11
	.long	.LASF699
	.byte	0xd
	.value	0xcc2
	.long	0x21d4
	.uleb128 0x6
	.byte	0x8
	.long	0x21da
	.uleb128 0x17
	.long	0x21e5
	.uleb128 0x18
	.long	0x11a7
	.byte	0
	.uleb128 0x11
	.long	.LASF700
	.byte	0xd
	.value	0xcc3
	.long	0x21bd
	.uleb128 0x9
	.long	0x1d32
	.long	0x21fc
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.byte	0xd
	.value	0xdfd
	.long	0x2236
	.uleb128 0x1a
	.long	.LASF701
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF702
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF703
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF704
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF705
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF706
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF707
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF708
	.sleb128 7
	.byte	0
	.uleb128 0x14
	.long	.LASF709
	.byte	0x30
	.byte	0xd
	.value	0xe59
	.long	0x2251
	.uleb128 0x22
	.string	"pad"
	.byte	0xd
	.value	0xe5a
	.long	0x2251
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x6b2
	.long	0x2261
	.uleb128 0xa
	.long	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF710
	.byte	0xd
	.value	0xe61
	.long	0x226d
	.uleb128 0x6
	.byte	0x8
	.long	0x2273
	.uleb128 0x17
	.long	0x227e
	.uleb128 0x18
	.long	0x132f
	.byte	0
	.uleb128 0x11
	.long	.LASF711
	.byte	0xd
	.value	0xe62
	.long	0x228a
	.uleb128 0x6
	.byte	0x8
	.long	0x2290
	.uleb128 0x1f
	.long	0x22a9
	.long	0x22a9
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0x1d38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x127f
	.uleb128 0x11
	.long	.LASF712
	.byte	0xd
	.value	0xe63
	.long	0x22bb
	.uleb128 0x6
	.byte	0x8
	.long	0x22c1
	.uleb128 0x1f
	.long	0x1174
	.long	0x22f3
	.uleb128 0x18
	.long	0x22a9
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0x1174
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0xc4
	.uleb128 0x18
	.long	0x117f
	.byte	0
	.uleb128 0x11
	.long	.LASF713
	.byte	0xd
	.value	0xe66
	.long	0x22ff
	.uleb128 0x6
	.byte	0x8
	.long	0x2305
	.uleb128 0x1f
	.long	0xf2
	.long	0x232d
	.uleb128 0x18
	.long	0x22a9
	.uleb128 0x18
	.long	0x11a7
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0x117f
	.uleb128 0x18
	.long	0x232d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2333
	.uleb128 0xf
	.long	.LASF714
	.uleb128 0x11
	.long	.LASF715
	.byte	0xd
	.value	0xe6a
	.long	0x2344
	.uleb128 0x6
	.byte	0x8
	.long	0x234a
	.uleb128 0x1f
	.long	0x11a7
	.long	0x2359
	.uleb128 0x18
	.long	0x22a9
	.byte	0
	.uleb128 0x11
	.long	.LASF716
	.byte	0xd
	.value	0xe6b
	.long	0x2365
	.uleb128 0x6
	.byte	0x8
	.long	0x236b
	.uleb128 0x17
	.long	0x2376
	.uleb128 0x18
	.long	0x2376
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7aa
	.uleb128 0x11
	.long	.LASF717
	.byte	0xd
	.value	0xe71
	.long	0x2388
	.uleb128 0x6
	.byte	0x8
	.long	0x238e
	.uleb128 0x23
	.uleb128 0x11
	.long	.LASF718
	.byte	0xd
	.value	0xe72
	.long	0x11a1
	.uleb128 0x14
	.long	.LASF719
	.byte	0x10
	.byte	0xd
	.value	0xe7c
	.long	0x23c2
	.uleb128 0x22
	.string	"fn"
	.byte	0xd
	.value	0xe7d
	.long	0x11a1
	.byte	0
	.uleb128 0x22
	.string	"ptr"
	.byte	0xd
	.value	0xe7e
	.long	0xc4
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF720
	.byte	0xd
	.value	0xe7f
	.long	0x239b
	.uleb128 0x21
	.byte	0x4
	.byte	0xd
	.value	0xfb1
	.long	0x256d
	.uleb128 0x1a
	.long	.LASF721
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF722
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF723
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF724
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF725
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF726
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF727
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF728
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF729
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF730
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF731
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF732
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF733
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF734
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF735
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF736
	.sleb128 15
	.uleb128 0x1a
	.long	.LASF737
	.sleb128 16
	.uleb128 0x1a
	.long	.LASF738
	.sleb128 17
	.uleb128 0x1a
	.long	.LASF739
	.sleb128 18
	.uleb128 0x1a
	.long	.LASF740
	.sleb128 19
	.uleb128 0x1a
	.long	.LASF741
	.sleb128 20
	.uleb128 0x1a
	.long	.LASF742
	.sleb128 21
	.uleb128 0x1a
	.long	.LASF743
	.sleb128 22
	.uleb128 0x1a
	.long	.LASF744
	.sleb128 23
	.uleb128 0x1a
	.long	.LASF745
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF746
	.sleb128 25
	.uleb128 0x1a
	.long	.LASF747
	.sleb128 26
	.uleb128 0x1a
	.long	.LASF748
	.sleb128 27
	.uleb128 0x1a
	.long	.LASF749
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF750
	.sleb128 29
	.uleb128 0x1a
	.long	.LASF751
	.sleb128 30
	.uleb128 0x1a
	.long	.LASF752
	.sleb128 31
	.uleb128 0x1a
	.long	.LASF753
	.sleb128 32
	.uleb128 0x1a
	.long	.LASF754
	.sleb128 33
	.uleb128 0x1a
	.long	.LASF755
	.sleb128 34
	.uleb128 0x1a
	.long	.LASF756
	.sleb128 35
	.uleb128 0x1a
	.long	.LASF757
	.sleb128 36
	.uleb128 0x1a
	.long	.LASF758
	.sleb128 37
	.uleb128 0x1a
	.long	.LASF759
	.sleb128 38
	.uleb128 0x1a
	.long	.LASF760
	.sleb128 39
	.uleb128 0x1a
	.long	.LASF761
	.sleb128 40
	.uleb128 0x1a
	.long	.LASF762
	.sleb128 41
	.uleb128 0x1a
	.long	.LASF763
	.sleb128 42
	.uleb128 0x1a
	.long	.LASF764
	.sleb128 43
	.uleb128 0x1a
	.long	.LASF765
	.sleb128 44
	.uleb128 0x1a
	.long	.LASF766
	.sleb128 45
	.uleb128 0x1a
	.long	.LASF767
	.sleb128 46
	.uleb128 0x1a
	.long	.LASF768
	.sleb128 47
	.uleb128 0x1a
	.long	.LASF769
	.sleb128 48
	.uleb128 0x1a
	.long	.LASF770
	.sleb128 49
	.uleb128 0x1a
	.long	.LASF771
	.sleb128 50
	.uleb128 0x1a
	.long	.LASF772
	.sleb128 51
	.uleb128 0x1a
	.long	.LASF773
	.sleb128 52
	.uleb128 0x1a
	.long	.LASF774
	.sleb128 53
	.uleb128 0x1a
	.long	.LASF775
	.sleb128 54
	.uleb128 0x1a
	.long	.LASF776
	.sleb128 55
	.uleb128 0x1a
	.long	.LASF777
	.sleb128 56
	.uleb128 0x1a
	.long	.LASF778
	.sleb128 57
	.uleb128 0x1a
	.long	.LASF779
	.sleb128 58
	.uleb128 0x1a
	.long	.LASF780
	.sleb128 59
	.uleb128 0x1a
	.long	.LASF781
	.sleb128 60
	.uleb128 0x1a
	.long	.LASF782
	.sleb128 61
	.uleb128 0x1a
	.long	.LASF783
	.sleb128 62
	.uleb128 0x1a
	.long	.LASF784
	.sleb128 63
	.uleb128 0x1a
	.long	.LASF785
	.sleb128 64
	.uleb128 0x1a
	.long	.LASF786
	.sleb128 65
	.uleb128 0x1a
	.long	.LASF787
	.sleb128 66
	.byte	0
	.uleb128 0x24
	.long	.LASF789
	.byte	0x1
	.byte	0xc7
	.long	0x1386
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x259d
	.uleb128 0x25
	.long	.LASF788
	.byte	0x1
	.byte	0xc9
	.long	0x1386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF797
	.byte	0x1
	.byte	0xdf
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e7
	.uleb128 0x27
	.long	.LASF788
	.byte	0x1
	.byte	0xdf
	.long	0x1386
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0x25e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x115f
	.uleb128 0x2a
	.long	.LASF1165
	.byte	0x1
	.value	0x195
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF790
	.byte	0x1
	.value	0x1a3
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2746
	.uleb128 0x2c
	.long	.LASF788
	.byte	0x1
	.value	0x1a3
	.long	0x1386
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.long	.LASF791
	.byte	0x1
	.value	0x1a5
	.long	0x199
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x1a6
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x268e
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x204
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x205
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x26b2
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x262
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0
	.long	0x26fc
	.uleb128 0x2d
	.long	.LASF793
	.byte	0x1
	.value	0x389
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x29
	.string	"max"
	.byte	0x1
	.value	0x38a
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2d
	.long	.LASF794
	.byte	0x1
	.value	0x38b
	.long	0x20cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2d
	.long	.LASF795
	.byte	0x1
	.value	0x38c
	.long	0x2746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x30
	.long	0x2714
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x3b6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x28
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x41d
	.long	0x1311
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.long	.LASF796
	.byte	0x1
	.value	0x41e
	.long	0x1311
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x20cb
	.uleb128 0x30
	.long	.LASF798
	.byte	0x1
	.value	0x43a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2779
	.uleb128 0x2c
	.long	.LASF788
	.byte	0x1
	.value	0x43a
	.long	0x1386
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.long	.LASF799
	.byte	0x1
	.value	0x46d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b5
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x46d
	.long	0x238f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"ptr"
	.byte	0x1
	.value	0x46d
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF800
	.byte	0x1
	.value	0x47e
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a4
	.uleb128 0x2c
	.long	.LASF788
	.byte	0x1
	.value	0x47e
	.long	0x1386
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF801
	.byte	0x1
	.value	0x47e
	.long	0x237c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2c
	.long	.LASF802
	.byte	0x1
	.value	0x47e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2c
	.long	.LASF803
	.byte	0x1
	.value	0x47e
	.long	0x28a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x31
	.string	"env"
	.byte	0x1
	.value	0x47e
	.long	0x28a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2d
	.long	.LASF804
	.byte	0x1
	.value	0x480
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x481
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x482
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x4b1
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x4b2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.long	.LASF805
	.byte	0x1
	.value	0x4b3
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2d
	.long	.LASF806
	.byte	0x1
	.value	0x4b6
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf2
	.uleb128 0x32
	.long	.LASF819
	.byte	0x1
	.value	0x548
	.long	0xc4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a9b
	.uleb128 0x31
	.string	"env"
	.byte	0x1
	.value	0x548
	.long	0x28a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF801
	.byte	0x1
	.value	0x548
	.long	0x237c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF802
	.byte	0x1
	.value	0x54a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.long	.LASF803
	.byte	0x1
	.value	0x54b
	.long	0x28a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF807
	.byte	0x1
	.value	0x54c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF808
	.byte	0x1
	.value	0x54d
	.long	0x2a9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -143
	.uleb128 0x2d
	.long	.LASF809
	.byte	0x1
	.value	0x54e
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x54f
	.long	0x11a7
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x550
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF810
	.byte	0x1
	.value	0x551
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF811
	.byte	0x1
	.value	0x552
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -142
	.uleb128 0x33
	.long	.LASF812
	.byte	0x1
	.value	0x56f
	.quad	.L110
	.uleb128 0x33
	.long	.LASF813
	.byte	0x1
	.value	0x65f
	.quad	.L109
	.uleb128 0x2e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x29c9
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x5be
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x5bf
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2a2d
	.uleb128 0x2d
	.long	.LASF814
	.byte	0x1
	.value	0x5d9
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2d
	.long	.LASF815
	.byte	0x1
	.value	0x60c
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"pv"
	.byte	0x1
	.value	0x60c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.value	0x60d
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x29
	.string	"io"
	.byte	0x1
	.value	0x703
	.long	0x2aa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.value	0x704
	.long	0x1380
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x705
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x29
	.string	"in"
	.byte	0x1
	.value	0x717
	.long	0x117f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.string	"out"
	.byte	0x1
	.value	0x718
	.long	0x117f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xf8
	.uleb128 0x6
	.byte	0x8
	.long	0x965
	.uleb128 0x2b
	.long	.LASF816
	.byte	0x1
	.value	0x773
	.long	0x57
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b46
	.uleb128 0x2c
	.long	.LASF788
	.byte	0x1
	.value	0x773
	.long	0x1386
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.long	.LASF804
	.byte	0x1
	.value	0x775
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x776
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x777
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.long	.LASF817
	.byte	0x1
	.value	0x78d
	.quad	.L185
	.uleb128 0x28
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x7a3
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF818
	.byte	0x1
	.value	0x7a3
	.long	0x2b46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2049
	.uleb128 0x32
	.long	.LASF820
	.byte	0x1
	.value	0x7bc
	.long	0xc4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7e
	.uleb128 0x2c
	.long	.LASF804
	.byte	0x1
	.value	0x7bc
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF821
	.byte	0x1
	.value	0x7f6
	.long	0x11a7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bcd
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x7f6
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF823
	.byte	0x1
	.value	0x7f6
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x7f8
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF824
	.byte	0x1
	.value	0x813
	.long	0x1352
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c1c
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x813
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF823
	.byte	0x1
	.value	0x813
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x815
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF825
	.byte	0x1
	.value	0x82a
	.long	0x1317
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c6b
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x82a
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF823
	.byte	0x1
	.value	0x82a
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x82c
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF826
	.byte	0x1
	.value	0x842
	.long	0x1340
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cba
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x842
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF823
	.byte	0x1
	.value	0x842
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x844
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF827
	.byte	0x1
	.value	0x861
	.long	0x1174
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d16
	.uleb128 0x2c
	.long	.LASF828
	.byte	0x1
	.value	0x861
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x861
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF803
	.byte	0x1
	.value	0x861
	.long	0x28a4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x866
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2b
	.long	.LASF829
	.byte	0x1
	.value	0x87c
	.long	0x1174
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d57
	.uleb128 0x2c
	.long	.LASF828
	.byte	0x1
	.value	0x87c
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x87c
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF830
	.byte	0x1
	.value	0x88d
	.long	0x1174
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d98
	.uleb128 0x2c
	.long	.LASF831
	.byte	0x1
	.value	0x88d
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x88d
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.long	.LASF832
	.byte	0x1
	.value	0x89f
	.long	0x1174
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f19
	.uleb128 0x31
	.string	"sv"
	.byte	0x1
	.value	0x89f
	.long	0x11a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x89f
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x8a2
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF833
	.byte	0x1
	.value	0x8a3
	.long	0x500
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2d
	.long	.LASF834
	.byte	0x1
	.value	0x8a4
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2d
	.long	.LASF835
	.byte	0x1
	.value	0x8a5
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2d
	.long	.LASF836
	.byte	0x1
	.value	0x8a6
	.long	0x2f19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2d
	.long	.LASF804
	.byte	0x1
	.value	0x8a7
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x2d
	.long	.LASF837
	.byte	0x1
	.value	0x8a8
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -421
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x8a9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x2d
	.long	.LASF838
	.byte	0x1
	.value	0x8aa
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x8ab
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.long	.LASF817
	.byte	0x1
	.value	0x8fa
	.quad	.L272
	.uleb128 0x2e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x2eb9
	.uleb128 0x29
	.string	"cx"
	.byte	0x1
	.value	0x8dd
	.long	0x203d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF839
	.byte	0x1
	.value	0x8de
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.byte	0
	.uleb128 0x28
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2d
	.long	.LASF840
	.byte	0x1
	.value	0x91e
	.long	0x1ea7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2d
	.long	.LASF841
	.byte	0x1
	.value	0x91f
	.long	0x1d38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2d
	.long	.LASF839
	.byte	0x1
	.value	0x920
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x29
	.string	"cx"
	.byte	0x1
	.value	0x921
	.long	0x203d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF842
	.byte	0x1
	.value	0x922
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x1174
	.uleb128 0x34
	.long	.LASF851
	.byte	0x1
	.value	0x944
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f5b
	.uleb128 0x2c
	.long	.LASF833
	.byte	0x1
	.value	0x944
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF843
	.byte	0x1
	.value	0x944
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF844
	.byte	0x1
	.value	0x95b
	.long	0x1174
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x302a
	.uleb128 0x31
	.string	"sv"
	.byte	0x1
	.value	0x95b
	.long	0x11a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x95b
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x95f
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF833
	.byte	0x1
	.value	0x960
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2d
	.long	.LASF835
	.byte	0x1
	.value	0x961
	.long	0x2f19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2d
	.long	.LASF836
	.byte	0x1
	.value	0x962
	.long	0x2f19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2d
	.long	.LASF804
	.byte	0x1
	.value	0x963
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x964
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2d
	.long	.LASF838
	.byte	0x1
	.value	0x965
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x966
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.long	.LASF817
	.byte	0x1
	.value	0x98c
	.quad	.L304
	.byte	0
	.uleb128 0x2b
	.long	.LASF845
	.byte	0x1
	.value	0x9c3
	.long	0x11a7
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x30a5
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x9c3
	.long	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF846
	.byte	0x1
	.value	0x9c3
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x9c5
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x9c6
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x29
	.string	"n_a"
	.byte	0x1
	.value	0x9d0
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF847
	.byte	0x1
	.value	0x9e5
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3141
	.uleb128 0x31
	.string	"pv"
	.byte	0x1
	.value	0x9e5
	.long	0x19e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x9e7
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x9e8
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3112
	.uleb128 0x2d
	.long	.LASF848
	.byte	0x1
	.value	0x9e9
	.long	0x2b46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x28
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x9f1
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF818
	.byte	0x1
	.value	0x9f1
	.long	0x2b46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF849
	.byte	0x1
	.value	0x9f5
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x319a
	.uleb128 0x31
	.string	"sym"
	.byte	0x1
	.value	0x9f5
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x9f5
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF850
	.byte	0x1
	.value	0x9f5
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x9f7
	.long	0x134c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.long	.LASF852
	.byte	0x1
	.value	0x9fe
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x31eb
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0x9fe
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF853
	.byte	0x1
	.value	0xa03
	.long	0x31eb
	.uleb128 0x9
	.byte	0x3
	.quad	usage_msg.10653
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0xa25
	.long	0x28a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x31fb
	.uleb128 0xa
	.long	0xb2
	.byte	0x1c
	.byte	0
	.uleb128 0x2b
	.long	.LASF854
	.byte	0x1
	.value	0xa79
	.long	0xf2
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3391
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0xa79
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF855
	.byte	0x1
	.value	0xa7b
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF856
	.byte	0x1
	.value	0xa7c
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x32c6
	.uleb128 0x2d
	.long	.LASF240
	.byte	0x1
	.value	0xa81
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x32a4
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0xa85
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF857
	.byte	0x1
	.value	0xa86
	.long	0x25e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x28
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0xaa0
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -125
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x32f9
	.uleb128 0x2d
	.long	.LASF858
	.byte	0x1
	.value	0xac7
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0xac8
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x332b
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0xb07
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0xb07
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x3351
	.uleb128 0x2d
	.long	.LASF240
	.byte	0x1
	.value	0xb22
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x28
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2d
	.long	.LASF858
	.byte	0x1
	.value	0xb37
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0xb38
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"use"
	.byte	0x1
	.value	0xb39
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF876
	.byte	0x1
	.value	0xc12
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF867
	.byte	0x1
	.value	0xc30
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF859
	.byte	0x1
	.value	0xc5c
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x33f2
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0xc5e
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF860
	.byte	0x1
	.value	0xc7e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x348c
	.uleb128 0x2c
	.long	.LASF807
	.byte	0x1
	.value	0xc7e
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF808
	.byte	0x1
	.value	0xc7e
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"sv"
	.byte	0x1
	.value	0xc7e
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF861
	.byte	0x1
	.value	0xc81
	.long	0xf2
	.uleb128 0x37
	.long	.LASF862
	.byte	0x1
	.value	0xc82
	.long	0xf2
	.uleb128 0x37
	.long	.LASF863
	.byte	0x1
	.value	0xc83
	.long	0xf2
	.uleb128 0x37
	.long	.LASF864
	.byte	0x1
	.value	0xc84
	.long	0xf2
	.uleb128 0x28
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0xc92
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF865
	.byte	0x1
	.value	0xdae
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c9
	.uleb128 0x2c
	.long	.LASF809
	.byte	0x1
	.value	0xdae
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF807
	.byte	0x1
	.value	0xdae
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF866
	.byte	0x1
	.value	0xf3b
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3501
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0xf3d
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"s2"
	.byte	0x1
	.value	0xf3d
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x38
	.long	.LASF868
	.byte	0x1
	.value	0xf80
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF869
	.byte	0x1
	.value	0xf9c
	.long	0xf8
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x35a7
	.uleb128 0x2c
	.long	.LASF802
	.byte	0x1
	.value	0xf9c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF803
	.byte	0x1
	.value	0xf9c
	.long	0x28a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF870
	.byte	0x1
	.value	0xf9c
	.long	0x28a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"uid"
	.byte	0x1
	.value	0xfa7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF871
	.byte	0x1
	.value	0xfa8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"gid"
	.byte	0x1
	.value	0xfa9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF872
	.byte	0x1
	.value	0xfaa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF873
	.byte	0x1
	.value	0xfbd
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x35d3
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0xfbd
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF874
	.byte	0x1
	.value	0xfe4
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3601
	.uleb128 0x2d
	.long	.LASF875
	.byte	0x1
	.value	0xfe6
	.long	0x1317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF877
	.byte	0x1
	.value	0xfff
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF878
	.byte	0x1
	.value	0x1027
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3659
	.uleb128 0x28
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x102c
	.long	0x2b46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF879
	.byte	0x1
	.value	0x103a
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3687
	.uleb128 0x2d
	.long	.LASF880
	.byte	0x1
	.value	0x103c
	.long	0x1380
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF881
	.byte	0x1
	.value	0x1045
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c3
	.uleb128 0x2d
	.long	.LASF882
	.byte	0x1
	.value	0x1047
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"io"
	.byte	0x1
	.value	0x1048
	.long	0x2aa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.long	.LASF883
	.byte	0x1
	.value	0x106f
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x372b
	.uleb128 0x2c
	.long	.LASF802
	.byte	0x1
	.value	0x106f
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF803
	.byte	0x1
	.value	0x106f
	.long	0x28a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x1071
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1088
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF884
	.byte	0x1
	.value	0x10b8
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3759
	.uleb128 0x2d
	.long	.LASF882
	.byte	0x1
	.value	0x10b9
	.long	0x134c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF885
	.byte	0x1
	.value	0x10c8
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3810
	.uleb128 0x2c
	.long	.LASF802
	.byte	0x1
	.value	0x10c8
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF803
	.byte	0x1
	.value	0x10c8
	.long	0x28a4
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x31
	.string	"env"
	.byte	0x1
	.value	0x10c8
	.long	0x28a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x10ca
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x10cb
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF882
	.byte	0x1
	.value	0x10cc
	.long	0x134c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x10e5
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2d
	.long	.LASF886
	.byte	0x1
	.value	0x10fb
	.long	0x28a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF887
	.byte	0x1
	.value	0x1126
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3839
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x1128
	.long	0xf2
	.byte	0
	.uleb128 0x32
	.long	.LASF888
	.byte	0x1
	.value	0x11b4
	.long	0x11a7
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x387c
	.uleb128 0x31
	.string	"dir"
	.byte	0x1
	.value	0x11b4
	.long	0x11a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF889
	.byte	0x1
	.value	0x11b6
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.long	.LASF890
	.byte	0x1
	.value	0x11c0
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3946
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x11c0
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF891
	.byte	0x1
	.value	0x11c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF892
	.byte	0x1
	.value	0x11c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF893
	.byte	0x1
	.value	0x11c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF894
	.byte	0x1
	.value	0x11c2
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2d
	.long	.LASF895
	.byte	0x1
	.value	0x11cd
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x11ce
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2d
	.long	.LASF896
	.byte	0x1
	.value	0x11f3
	.long	0x3946
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF897
	.byte	0x1
	.value	0x11f4
	.long	0x3956
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x19e
	.long	0x3956
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19e
	.uleb128 0x30
	.long	.LASF898
	.byte	0x1
	.value	0x1286
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x39fa
	.uleb128 0x2c
	.long	.LASF804
	.byte	0x1
	.value	0x1286
	.long	0x1174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2c
	.long	.LASF899
	.byte	0x1
	.value	0x1286
	.long	0x1352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2d
	.long	.LASF900
	.byte	0x1
	.value	0x1288
	.long	0x11a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.long	.LASF901
	.byte	0x1
	.value	0x1289
	.long	0x118a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x128a
	.long	0x1340
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x128b
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x128c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0x128d
	.long	0x219e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x32
	.long	.LASF902
	.byte	0x1
	.value	0x12ed
	.long	0xc4
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2b
	.uleb128 0x31
	.string	"cv"
	.byte	0x1
	.value	0x12ed
	.long	0x1340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF903
	.byte	0x1
	.value	0x12f5
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a59
	.uleb128 0x2c
	.long	.LASF904
	.byte	0x1
	.value	0x12f5
	.long	0x117f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF905
	.byte	0x1
	.value	0x1308
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a87
	.uleb128 0x2d
	.long	.LASF906
	.byte	0x1
	.value	0x1316
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF907
	.byte	0x1
	.value	0x1325
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aff
	.uleb128 0x29
	.string	"cx"
	.byte	0x1
	.value	0x1327
	.long	0x203d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF839
	.byte	0x1
	.value	0x1328
	.long	0x1174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF840
	.byte	0x1
	.value	0x1329
	.long	0x1ea7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1330
	.long	0x1ea7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF818
	.byte	0x1
	.value	0x1330
	.long	0x2b46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF908
	.byte	0x1
	.value	0x133c
	.long	0x1174
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b6a
	.uleb128 0x31
	.string	"idx"
	.byte	0x1
	.value	0x133c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF909
	.byte	0x1
	.value	0x133c
	.long	0x11a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF910
	.byte	0x1
	.value	0x133c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x133e
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"nl"
	.byte	0x1
	.value	0x133e
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x3b7a
	.uleb128 0xa
	.long	0xb2
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.long	.LASF911
	.byte	0x1c
	.byte	0x79
	.long	0x3b6a
	.uleb128 0x9
	.byte	0x3
	.quad	local_patches
	.uleb128 0x3b
	.long	.LASF912
	.byte	0xd
	.value	0xcdd
	.long	0x28a4
	.uleb128 0x3b
	.long	.LASF913
	.byte	0x1d
	.value	0x2f1
	.long	0x21f1
	.uleb128 0x3c
	.long	.LASF914
	.byte	0x2
	.byte	0x14
	.long	0x57
	.uleb128 0x3c
	.long	.LASF915
	.byte	0x2
	.byte	0x15
	.long	0x28a4
	.uleb128 0x3c
	.long	.LASF916
	.byte	0x2
	.byte	0x16
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF917
	.byte	0x2
	.byte	0x17
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF918
	.byte	0x2
	.byte	0x18
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF919
	.byte	0x2
	.byte	0x19
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF920
	.byte	0x2
	.byte	0x1a
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF921
	.byte	0x2
	.byte	0x1b
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF922
	.byte	0x2
	.byte	0x1e
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF923
	.byte	0x2
	.byte	0x1f
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF924
	.byte	0x2
	.byte	0x20
	.long	0x28a4
	.uleb128 0x3c
	.long	.LASF925
	.byte	0x2
	.byte	0x21
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF926
	.byte	0x2
	.byte	0x22
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF927
	.byte	0x2
	.byte	0x23
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF928
	.byte	0x2
	.byte	0x24
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF929
	.byte	0x2
	.byte	0x25
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF930
	.byte	0x2
	.byte	0x26
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF931
	.byte	0x2
	.byte	0x27
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF932
	.byte	0x2
	.byte	0x28
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF933
	.byte	0x2
	.byte	0x34
	.long	0x115f
	.uleb128 0x3c
	.long	.LASF934
	.byte	0x2
	.byte	0x36
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF935
	.byte	0x2
	.byte	0x37
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF936
	.byte	0x2
	.byte	0x38
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF937
	.byte	0x2
	.byte	0x39
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF938
	.byte	0x2
	.byte	0x3a
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF939
	.byte	0x2
	.byte	0x3b
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF940
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x3c
	.long	.LASF941
	.byte	0x2
	.byte	0x42
	.long	0x120
	.uleb128 0x3c
	.long	.LASF942
	.byte	0x2
	.byte	0x43
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF943
	.byte	0x2
	.byte	0x46
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF944
	.byte	0x2
	.byte	0x48
	.long	0x57
	.uleb128 0x3c
	.long	.LASF945
	.byte	0x2
	.byte	0x49
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF946
	.byte	0x2
	.byte	0x4a
	.long	0x115f
	.uleb128 0x3c
	.long	.LASF947
	.byte	0x2
	.byte	0x50
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF948
	.byte	0x2
	.byte	0x51
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF949
	.byte	0x2
	.byte	0x52
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF950
	.byte	0x2
	.byte	0x53
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF951
	.byte	0x2
	.byte	0x54
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF952
	.byte	0x2
	.byte	0x55
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF953
	.byte	0x2
	.byte	0x5a
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF954
	.byte	0x2
	.byte	0x5d
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF955
	.byte	0x2
	.byte	0x60
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF956
	.byte	0x2
	.byte	0x61
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF957
	.byte	0x2
	.byte	0x79
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF958
	.byte	0x2
	.byte	0x7a
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF959
	.byte	0x2
	.byte	0x7b
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF960
	.byte	0x2
	.byte	0x7c
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF961
	.byte	0x2
	.byte	0x7e
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF962
	.byte	0x2
	.byte	0x81
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF963
	.byte	0x2
	.byte	0x82
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF964
	.byte	0x2
	.byte	0x83
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF965
	.byte	0x2
	.byte	0x84
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF966
	.byte	0x2
	.byte	0x85
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF967
	.byte	0x2
	.byte	0x86
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF968
	.byte	0x2
	.byte	0x87
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF969
	.byte	0x2
	.byte	0x88
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF970
	.byte	0x2
	.byte	0x89
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF971
	.byte	0x2
	.byte	0x8c
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF972
	.byte	0x2
	.byte	0x8d
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF973
	.byte	0x2
	.byte	0x95
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF974
	.byte	0x2
	.byte	0x98
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF975
	.byte	0x2
	.byte	0x99
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF976
	.byte	0x2
	.byte	0x9c
	.long	0x1340
	.uleb128 0x3c
	.long	.LASF977
	.byte	0x2
	.byte	0x9d
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF978
	.byte	0x2
	.byte	0x9e
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF979
	.byte	0x2
	.byte	0x9f
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF980
	.byte	0x2
	.byte	0xa3
	.long	0x1edb
	.uleb128 0x3c
	.long	.LASF981
	.byte	0x2
	.byte	0xa4
	.long	0x118a
	.uleb128 0x3c
	.long	.LASF982
	.byte	0x2
	.byte	0xac
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF983
	.byte	0x2
	.byte	0xae
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF984
	.byte	0x2
	.byte	0xaf
	.long	0x57
	.uleb128 0x3c
	.long	.LASF985
	.byte	0x2
	.byte	0xb0
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF986
	.byte	0x2
	.byte	0xb1
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF987
	.byte	0x2
	.byte	0xb4
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF988
	.byte	0x2
	.byte	0xb5
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF989
	.byte	0x2
	.byte	0xb8
	.long	0x3eeb
	.uleb128 0x6
	.byte	0x8
	.long	0x23c2
	.uleb128 0x3c
	.long	.LASF990
	.byte	0x2
	.byte	0xba
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF991
	.byte	0x2
	.byte	0xc8
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF992
	.byte	0x2
	.byte	0xcb
	.long	0x1269
	.uleb128 0x3c
	.long	.LASF993
	.byte	0x2
	.byte	0xcc
	.long	0x3f1d
	.uleb128 0xc
	.long	0x1380
	.uleb128 0x3c
	.long	.LASF994
	.byte	0x2
	.byte	0xcd
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF995
	.byte	0x2
	.byte	0xcf
	.long	0x3a2
	.uleb128 0x3c
	.long	.LASF996
	.byte	0x2
	.byte	0xd1
	.long	0x1340
	.uleb128 0x3c
	.long	.LASF997
	.byte	0x2
	.byte	0xdd
	.long	0x57
	.uleb128 0x3c
	.long	.LASF998
	.byte	0x2
	.byte	0xde
	.long	0x1340
	.uleb128 0x3c
	.long	.LASF999
	.byte	0x2
	.byte	0xe0
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1000
	.byte	0x2
	.byte	0xe1
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1001
	.byte	0x2
	.byte	0xed
	.long	0x10a
	.uleb128 0x3c
	.long	.LASF1002
	.byte	0x2
	.byte	0xee
	.long	0x10a
	.uleb128 0x3c
	.long	.LASF1003
	.byte	0x2
	.byte	0xef
	.long	0xff
	.uleb128 0x3c
	.long	.LASF1004
	.byte	0x2
	.byte	0xf0
	.long	0xff
	.uleb128 0x3c
	.long	.LASF1005
	.byte	0x2
	.byte	0xf2
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF1006
	.byte	0x2
	.byte	0xf3
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF1007
	.byte	0x2
	.byte	0xf4
	.long	0x1169
	.uleb128 0x3c
	.long	.LASF1008
	.byte	0x2
	.byte	0xf5
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF1009
	.byte	0x2
	.byte	0xf6
	.long	0x28a4
	.uleb128 0x3c
	.long	.LASF1010
	.byte	0x2
	.byte	0xf7
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF1011
	.byte	0x2
	.byte	0xf8
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF1012
	.byte	0x2
	.byte	0xf9
	.long	0x57
	.uleb128 0x3c
	.long	.LASF1013
	.byte	0x2
	.byte	0xfa
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1014
	.byte	0x2
	.byte	0xfd
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1015
	.byte	0x2
	.byte	0xff
	.long	0x11ef
	.uleb128 0x3b
	.long	.LASF1016
	.byte	0x2
	.value	0x112
	.long	0x21b1
	.uleb128 0x3b
	.long	.LASF1017
	.byte	0x2
	.value	0x125
	.long	0x6b2
	.uleb128 0x3b
	.long	.LASF1018
	.byte	0x2
	.value	0x126
	.long	0x6b2
	.uleb128 0x3b
	.long	.LASF1019
	.byte	0x2
	.value	0x127
	.long	0x6b2
	.uleb128 0x3b
	.long	.LASF1020
	.byte	0x2
	.value	0x12a
	.long	0xf2
	.uleb128 0x3b
	.long	.LASF1021
	.byte	0x2
	.value	0x12b
	.long	0x1174
	.uleb128 0x3b
	.long	.LASF1022
	.byte	0x2
	.value	0x12e
	.long	0x117f
	.uleb128 0x3b
	.long	.LASF1023
	.byte	0x2
	.value	0x143
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1024
	.byte	0x2
	.value	0x148
	.long	0x57
	.uleb128 0x3b
	.long	.LASF1025
	.byte	0x2
	.value	0x14f
	.long	0x1174
	.uleb128 0x3b
	.long	.LASF1026
	.byte	0x2
	.value	0x151
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1027
	.byte	0x2
	.value	0x162
	.long	0x117f
	.uleb128 0x3b
	.long	.LASF1028
	.byte	0x2
	.value	0x164
	.long	0x40b0
	.uleb128 0xc
	.long	0x117f
	.uleb128 0x3b
	.long	.LASF1029
	.byte	0x2
	.value	0x166
	.long	0x5e
	.uleb128 0x3b
	.long	.LASF1030
	.byte	0x2
	.value	0x17e
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1031
	.byte	0x2
	.value	0x17f
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1032
	.byte	0x2
	.value	0x180
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1033
	.byte	0x2
	.value	0x181
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1034
	.byte	0x2
	.value	0x182
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1035
	.byte	0x2
	.value	0x183
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1036
	.byte	0x2
	.value	0x184
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1037
	.byte	0x2
	.value	0x185
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1038
	.byte	0x2
	.value	0x186
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1039
	.byte	0x2
	.value	0x187
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1040
	.byte	0x2
	.value	0x188
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1041
	.byte	0x2
	.value	0x189
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1042
	.byte	0x2
	.value	0x18a
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1043
	.byte	0x2
	.value	0x18b
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1044
	.byte	0x2
	.value	0x18c
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1045
	.byte	0x2
	.value	0x18d
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1046
	.byte	0x2
	.value	0x18e
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1047
	.byte	0x2
	.value	0x18f
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1048
	.byte	0x2
	.value	0x19e
	.long	0x57
	.uleb128 0x3b
	.long	.LASF1049
	.byte	0x2
	.value	0x1a1
	.long	0xf2
	.uleb128 0x3b
	.long	.LASF1050
	.byte	0x2
	.value	0x1b7
	.long	0x1ea7
	.uleb128 0x3b
	.long	.LASF1051
	.byte	0x2
	.value	0x1b8
	.long	0x1ea7
	.uleb128 0x3b
	.long	.LASF1052
	.byte	0x2
	.value	0x1c9
	.long	0x1352
	.uleb128 0x3b
	.long	.LASF1053
	.byte	0x2
	.value	0x1d0
	.long	0x1317
	.uleb128 0x3b
	.long	.LASF1054
	.byte	0x2
	.value	0x1e1
	.long	0x210
	.uleb128 0x3b
	.long	.LASF1055
	.byte	0x2
	.value	0x1e2
	.long	0x57
	.uleb128 0x3b
	.long	.LASF1056
	.byte	0x2
	.value	0x1f4
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1057
	.byte	0x2
	.value	0x1fa
	.long	0x1380
	.uleb128 0x3b
	.long	.LASF1058
	.byte	0x2
	.value	0x1fb
	.long	0x421d
	.uleb128 0x6
	.byte	0x8
	.long	0x11de
	.uleb128 0x3b
	.long	.LASF1059
	.byte	0x2
	.value	0x1fc
	.long	0x421d
	.uleb128 0x3b
	.long	.LASF1060
	.byte	0x2
	.value	0x1ff
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1061
	.byte	0x2
	.value	0x201
	.long	0x2236
	.uleb128 0x3b
	.long	.LASF1062
	.byte	0x2
	.value	0x203
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1063
	.byte	0x2
	.value	0x20b
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1064
	.byte	0x2
	.value	0x20d
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1065
	.byte	0x2
	.value	0x20e
	.long	0x11a7
	.uleb128 0x3b
	.long	.LASF1066
	.byte	0x2
	.value	0x212
	.long	0x1352
	.uleb128 0x3b
	.long	.LASF1067
	.byte	0x2
	.value	0x214
	.long	0x5e
	.uleb128 0x3b
	.long	.LASF1068
	.byte	0x2
	.value	0x216
	.long	0x57
	.uleb128 0x3b
	.long	.LASF1069
	.byte	0x2
	.value	0x218
	.long	0x117f
	.uleb128 0x3b
	.long	.LASF1070
	.byte	0x2
	.value	0x21c
	.long	0x1317
	.uleb128 0x3b
	.long	.LASF1071
	.byte	0x2
	.value	0x221
	.long	0x21c8
	.uleb128 0x3b
	.long	.LASF1072
	.byte	0x2
	.value	0x222
	.long	0x21c8
	.uleb128 0x3b
	.long	.LASF1073
	.byte	0x2
	.value	0x223
	.long	0x21c8
	.uleb128 0x3b
	.long	.LASF1074
	.byte	0x2
	.value	0x224
	.long	0x21e5
	.uleb128 0x3b
	.long	.LASF1075
	.byte	0x2
	.value	0x227
	.long	0x21b1
	.uleb128 0x3b
	.long	.LASF1076
	.byte	0x2
	.value	0x228
	.long	0x21b1
	.uleb128 0x3b
	.long	.LASF1077
	.byte	0x2
	.value	0x22f
	.long	0x302
	.uleb128 0x3b
	.long	.LASF1078
	.byte	0x2
	.value	0x231
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1079
	.byte	0x2
	.value	0x233
	.long	0x302
	.uleb128 0x3b
	.long	.LASF1080
	.byte	0x2
	.value	0x235
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1081
	.byte	0x2
	.value	0x23a
	.long	0x57
	.uleb128 0x3b
	.long	.LASF1082
	.byte	0x2
	.value	0x23b
	.long	0x57
	.uleb128 0x3c
	.long	.LASF1083
	.byte	0x3
	.byte	0x22
	.long	0x1ea7
	.uleb128 0x3c
	.long	.LASF1084
	.byte	0x3
	.byte	0x26
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF1085
	.byte	0x3
	.byte	0x28
	.long	0x1ea7
	.uleb128 0x3c
	.long	.LASF1086
	.byte	0x3
	.byte	0x2a
	.long	0x1ea7
	.uleb128 0x3c
	.long	.LASF1087
	.byte	0x3
	.byte	0x2b
	.long	0x1ea7
	.uleb128 0x3c
	.long	.LASF1088
	.byte	0x3
	.byte	0x2d
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1089
	.byte	0x3
	.byte	0x2e
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1090
	.byte	0x3
	.byte	0x2f
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1091
	.byte	0x3
	.byte	0x31
	.long	0x43a6
	.uleb128 0x6
	.byte	0x8
	.long	0x10b0
	.uleb128 0x3c
	.long	.LASF1092
	.byte	0x3
	.byte	0x33
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1093
	.byte	0x3
	.byte	0x34
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1094
	.byte	0x3
	.byte	0x36
	.long	0x1ea7
	.uleb128 0x3c
	.long	.LASF1095
	.byte	0x3
	.byte	0x37
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1096
	.byte	0x3
	.byte	0x38
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1097
	.byte	0x3
	.byte	0x39
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1098
	.byte	0x3
	.byte	0x3b
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1099
	.byte	0x3
	.byte	0x3c
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1100
	.byte	0x3
	.byte	0x3d
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1101
	.byte	0x3
	.byte	0x3f
	.long	0x441a
	.uleb128 0x6
	.byte	0x8
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF1102
	.byte	0x3
	.byte	0x40
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1103
	.byte	0x3
	.byte	0x41
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1104
	.byte	0x3
	.byte	0x43
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1105
	.byte	0x3
	.byte	0x44
	.long	0x444c
	.uleb128 0x6
	.byte	0x8
	.long	0xac3
	.uleb128 0x3c
	.long	.LASF1106
	.byte	0x3
	.byte	0x51
	.long	0x31f
	.uleb128 0x3c
	.long	.LASF1107
	.byte	0x3
	.byte	0x55
	.long	0x216
	.uleb128 0x3c
	.long	.LASF1108
	.byte	0x3
	.byte	0x57
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF1109
	.byte	0x3
	.byte	0x58
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1110
	.byte	0x3
	.byte	0x5f
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1111
	.byte	0x3
	.byte	0x60
	.long	0x1d38
	.uleb128 0x3c
	.long	.LASF1112
	.byte	0x3
	.byte	0x73
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1113
	.byte	0x3
	.byte	0x74
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF1114
	.byte	0x3
	.byte	0x75
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1115
	.byte	0x3
	.byte	0x76
	.long	0x134c
	.uleb128 0x3c
	.long	.LASF1116
	.byte	0x3
	.byte	0x77
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1117
	.byte	0x3
	.byte	0x78
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1118
	.byte	0x3
	.byte	0x79
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1119
	.byte	0x3
	.byte	0x7a
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1120
	.byte	0x3
	.byte	0x7d
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF1121
	.byte	0x3
	.byte	0x7e
	.long	0x1317
	.uleb128 0x3c
	.long	.LASF1122
	.byte	0x3
	.byte	0x80
	.long	0x132f
	.uleb128 0x3c
	.long	.LASF1123
	.byte	0x3
	.byte	0x81
	.long	0x4518
	.uleb128 0xc
	.long	0x1edb
	.uleb128 0x3c
	.long	.LASF1124
	.byte	0x3
	.byte	0x82
	.long	0x199
	.uleb128 0x3c
	.long	.LASF1125
	.byte	0x3
	.byte	0x84
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1126
	.byte	0x3
	.byte	0x87
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF1127
	.byte	0x3
	.byte	0x88
	.long	0x2b46
	.uleb128 0x3c
	.long	.LASF1128
	.byte	0x3
	.byte	0x89
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF1129
	.byte	0x3
	.byte	0x8b
	.long	0x455f
	.uleb128 0x6
	.byte	0x8
	.long	0x219e
	.uleb128 0x3c
	.long	.LASF1130
	.byte	0x3
	.byte	0x8c
	.long	0x219e
	.uleb128 0x3c
	.long	.LASF1131
	.byte	0x3
	.byte	0x90
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1132
	.byte	0x3
	.byte	0x9a
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1133
	.byte	0x3
	.byte	0xa4
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1134
	.byte	0x3
	.byte	0xa5
	.long	0x31f
	.uleb128 0x3c
	.long	.LASF1135
	.byte	0x3
	.byte	0xa9
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1136
	.byte	0x3
	.byte	0xaa
	.long	0x1247
	.uleb128 0x3c
	.long	.LASF1137
	.byte	0x3
	.byte	0xab
	.long	0x1174
	.uleb128 0x3c
	.long	.LASF1138
	.byte	0x3
	.byte	0xac
	.long	0x11a7
	.uleb128 0x3c
	.long	.LASF1139
	.byte	0x3
	.byte	0xc9
	.long	0x28a4
	.uleb128 0x3c
	.long	.LASF1140
	.byte	0x3
	.byte	0xca
	.long	0x117f
	.uleb128 0x3c
	.long	.LASF1141
	.byte	0x3
	.byte	0xd2
	.long	0x57
	.uleb128 0x3c
	.long	.LASF1142
	.byte	0x3
	.byte	0xda
	.long	0x1d38
	.uleb128 0x3c
	.long	.LASF1143
	.byte	0x3
	.byte	0xdb
	.long	0x1d38
	.uleb128 0x3c
	.long	.LASF1144
	.byte	0x3
	.byte	0xe0
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1145
	.byte	0x3
	.byte	0xe3
	.long	0x2261
	.uleb128 0x3c
	.long	.LASF1146
	.byte	0x3
	.byte	0xe5
	.long	0x227e
	.uleb128 0x3c
	.long	.LASF1147
	.byte	0x3
	.byte	0xe7
	.long	0x22af
	.uleb128 0x3c
	.long	.LASF1148
	.byte	0x3
	.byte	0xe9
	.long	0x22f3
	.uleb128 0x3c
	.long	.LASF1149
	.byte	0x3
	.byte	0xeb
	.long	0x2338
	.uleb128 0x3c
	.long	.LASF1150
	.byte	0x3
	.byte	0xed
	.long	0x2359
	.uleb128 0x3c
	.long	.LASF1151
	.byte	0x3
	.byte	0xf0
	.long	0x57
	.uleb128 0x3c
	.long	.LASF1152
	.byte	0x3
	.byte	0xf2
	.long	0xf2
	.uleb128 0x3c
	.long	.LASF1153
	.byte	0x3
	.byte	0xf3
	.long	0x28a4
	.uleb128 0x3b
	.long	.LASF1154
	.byte	0x3
	.value	0x115
	.long	0x1352
	.uleb128 0x3c
	.long	.LASF1155
	.byte	0x1e
	.byte	0x1a
	.long	0x1386
	.uleb128 0x3c
	.long	.LASF1156
	.byte	0x1e
	.byte	0x23
	.long	0x19e
	.uleb128 0x3c
	.long	.LASF1157
	.byte	0x1e
	.byte	0x24
	.long	0x19e
	.uleb128 0x3c
	.long	.LASF1158
	.byte	0x1e
	.byte	0x29
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1159
	.byte	0x1e
	.byte	0x42
	.long	0x6b2
	.uleb128 0x3c
	.long	.LASF1160
	.byte	0x1e
	.byte	0x49
	.long	0x57
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x25
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF995:
	.string	"PL_compiling"
.LASF610:
	.string	"OP_ESERVENT"
.LASF535:
	.string	"OP_FTSVTX"
.LASF102:
	.string	"precomp"
.LASF888:
	.string	"S_incpush_if_exists"
.LASF488:
	.string	"OP_SYSREAD"
.LASF868:
	.string	"S_init_ids"
.LASF134:
	.string	"blku_oldretsp"
.LASF505:
	.string	"OP_SHUTDOWN"
.LASF774:
	.string	"repeat_ass_amg"
.LASF742:
	.string	"rshift_ass_amg"
.LASF581:
	.string	"OP_MSGRCV"
.LASF986:
	.string	"PL_mess_sv"
.LASF681:
	.string	"si_prev"
.LASF854:
	.string	"Perl_moreswitches"
.LASF1098:
	.string	"PL_markstack"
.LASF794:
	.string	"hent"
.LASF1111:
	.string	"PL_curpm"
.LASF623:
	.string	"OP_LOCK"
.LASF628:
	.string	"OP_max"
.LASF1129:
	.string	"PL_top_env"
.LASF37:
	.string	"__saved_mask"
.LASF21:
	.string	"gid_t"
.LASF273:
	.string	"xiou_any"
.LASF539:
	.string	"OP_CHDIR"
.LASF886:
	.string	"origenv"
.LASF126:
	.string	"gp_file"
.LASF453:
	.string	"OP_ENTER"
.LASF1114:
	.string	"PL_ofs_sv"
.LASF972:
	.string	"PL_sv_objcount"
.LASF1037:
	.string	"PL_utf8_digit"
.LASF1076:
	.string	"PL_runops_dbg"
.LASF871:
	.string	"euid"
.LASF304:
	.string	"OP_REGCMAYBE"
.LASF989:
	.string	"PL_exitlist"
.LASF131:
	.string	"block"
.LASF434:
	.string	"OP_FLOP"
.LASF472:
	.string	"OP_BINMODE"
.LASF183:
	.string	"xpvgv"
.LASF77:
	.string	"logop"
.LASF205:
	.string	"xio_ifp"
.LASF364:
	.string	"OP_SEQ"
.LASF72:
	.string	"cop_io"
.LASF675:
	.string	"stackinfo"
.LASF744:
	.string	"band_ass_amg"
.LASF751:
	.string	"gt_amg"
.LASF930:
	.string	"PL_minus_a"
.LASF823:
	.string	"create"
.LASF526:
	.string	"OP_FTSOCK"
.LASF177:
	.string	"xhv_keys"
.LASF857:
	.string	"tmps"
.LASF220:
	.string	"xio_flags"
.LASF602:
	.string	"OP_GSERVENT"
.LASF224:
	.string	"svt_set"
.LASF173:
	.string	"xpvhv"
.LASF776:
	.string	"concat_ass_amg"
.LASF1087:
	.string	"PL_stack_max"
.LASF1128:
	.string	"PL_mainstack"
.LASF898:
	.string	"Perl_call_list"
.LASF1163:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF493:
	.string	"OP_TELL"
.LASF565:
	.string	"OP_SETPGRP"
.LASF975:
	.string	"PL_op_mask"
.LASF1102:
	.string	"PL_retstack_ix"
.LASF520:
	.string	"OP_FTROWNED"
.LASF120:
	.string	"gp_hv"
.LASF248:
	.string	"PerlIO_list_s"
.LASF247:
	.string	"PerlIO_list_t"
.LASF204:
	.string	"xpvio"
.LASF509:
	.string	"OP_GETPEERNAME"
.LASF363:
	.string	"OP_SGE"
.LASF154:
	.string	"xpviv"
.LASF768:
	.string	"cos_amg"
.LASF1154:
	.string	"PL_comppad"
.LASF667:
	.string	"sbu_targ"
.LASF445:
	.string	"OP_CALLER"
.LASF24:
	.string	"time_t"
.LASF503:
	.string	"OP_LISTEN"
.LASF361:
	.string	"OP_SGT"
.LASF895:
	.string	"libdir"
.LASF575:
	.string	"OP_SHMCTL"
.LASF1057:
	.string	"PL_perlio"
.LASF848:
	.string	"next"
.LASF333:
	.string	"OP_DIVIDE"
.LASF1130:
	.string	"PL_start_env"
.LASF192:
	.string	"xcv_start"
.LASF905:
	.string	"Perl_my_failure_exit"
.LASF13:
	.string	"__off_t"
.LASF117:
	.string	"gp_io"
.LASF121:
	.string	"gp_egv"
.LASF962:
	.string	"PL_debstash"
.LASF48:
	.string	"st_size"
.LASF659:
	.string	"sbu_iters"
.LASF943:
	.string	"PL_maxsysfd"
.LASF378:
	.string	"OP_SRAND"
.LASF688:
	.string	"hek_hash"
.LASF755:
	.string	"ncmp_amg"
.LASF70:
	.string	"cop_line"
.LASF191:
	.string	"xcv_stash"
.LASF344:
	.string	"OP_LEFT_SHIFT"
.LASF1143:
	.string	"PL_reg_curpm"
.LASF885:
	.string	"S_init_postdump_symbols"
.LASF1047:
	.string	"PL_utf8_tofold"
.LASF1091:
	.string	"PL_savestack"
.LASF1110:
	.string	"PL_tainted"
.LASF611:
	.string	"OP_GPWNAM"
.LASF807:
	.string	"scriptname"
.LASF1010:
	.string	"PL_origalen"
.LASF771:
	.string	"log_amg"
.LASF958:
	.string	"PL_DBsingle"
.LASF196:
	.string	"xcv_gv"
.LASF474:
	.string	"OP_UNTIE"
.LASF1015:
	.string	"PL_sighandlerp"
.LASF375:
	.string	"OP_SIN"
.LASF712:
	.string	"regexec_t"
.LASF682:
	.string	"si_next"
.LASF562:
	.string	"OP_KILL"
.LASF151:
	.string	"xpv_cur"
.LASF1067:
	.string	"PL_clocktick"
.LASF1160:
	.string	"PL_use_safe_putenv"
.LASF302:
	.string	"OP_READLINE"
.LASF315:
	.string	"OP_SCHOP"
.LASF145:
	.string	"mg_type"
.LASF548:
	.string	"OP_READLINK"
.LASF73:
	.string	"UNOP"
.LASF439:
	.string	"OP_ANDASSIGN"
.LASF49:
	.string	"st_blksize"
.LASF1145:
	.string	"PL_peepp"
.LASF754:
	.string	"ne_amg"
.LASF150:
	.string	"xpv_pv"
.LASF35:
	.string	"__jmpbuf"
.LASF805:
	.string	"mask"
.LASF1164:
	.string	"opcode"
.LASF441:
	.string	"OP_METHOD"
.LASF1052:
	.string	"PL_beginav_save"
.LASF699:
	.string	"share_proc_t"
.LASF801:
	.string	"xsinit"
.LASF318:
	.string	"OP_DEFINED"
.LASF160:
	.string	"xpvmg"
.LASF666:
	.string	"sbu_dstr"
.LASF753:
	.string	"eq_amg"
.LASF45:
	.string	"st_gid"
.LASF978:
	.string	"PL_main_start"
.LASF556:
	.string	"OP_CLOSEDIR"
.LASF583:
	.string	"OP_SEMCTL"
.LASF459:
	.string	"OP_LEAVELOOP"
.LASF550:
	.string	"OP_RMDIR"
.LASF78:
	.string	"op_other"
.LASF489:
	.string	"OP_SYSWRITE"
.LASF271:
	.string	"cv_flags_t"
.LASF125:
	.string	"gp_line"
.LASF620:
	.string	"OP_EGRENT"
.LASF913:
	.string	"PL_ppaddr"
.LASF1081:
	.string	"PL_fdscript"
.LASF658:
	.string	"subst"
.LASF855:
	.string	"numlen"
.LASF19:
	.string	"__syscall_slong_t"
.LASF210:
	.string	"xio_page_len"
.LASF317:
	.string	"OP_SCHOMP"
.LASF990:
	.string	"PL_exitlistlen"
.LASF750:
	.string	"le_amg"
.LASF1028:
	.string	"PL_debug"
.LASF1030:
	.string	"PL_utf8_alnum"
.LASF483:
	.string	"OP_LEAVEWRITE"
.LASF42:
	.string	"st_nlink"
.LASF362:
	.string	"OP_SLE"
.LASF157:
	.string	"xpvnv"
.LASF184:
	.string	"xgv_gp"
.LASF875:
	.string	"ostash"
.LASF36:
	.string	"__mask_was_saved"
.LASF360:
	.string	"OP_SLT"
.LASF416:
	.string	"OP_JOIN"
.LASF144:
	.string	"mg_private"
.LASF841:
	.string	"newpm"
.LASF316:
	.string	"OP_CHOMP"
.LASF53:
	.string	"st_ctim"
.LASF967:
	.string	"PL_checkav"
.LASF780:
	.string	"to_av_amg"
.LASF665:
	.string	"sbu_orig"
.LASF845:
	.string	"Perl_eval_pv"
.LASF409:
	.string	"OP_EXISTS"
.LASF1034:
	.string	"PL_utf8_space"
.LASF26:
	.string	"__sigset_t"
.LASF170:
	.string	"xav_arylen"
.LASF114:
	.string	"program"
.LASF193:
	.string	"xcv_root"
.LASF997:
	.string	"PL_generation"
.LASF874:
	.string	"Perl_init_debugger"
.LASF638:
	.string	"old_in_eval"
.LASF249:
	.string	"Sighandler_t"
.LASF902:
	.string	"S_call_list_body"
.LASF143:
	.string	"mg_virtual"
.LASF1165:
	.string	"Perl_nothreadhook"
.LASF458:
	.string	"OP_ENTERLOOP"
.LASF277:
	.string	"OP_STUB"
.LASF941:
	.string	"PL_basetime"
.LASF770:
	.string	"exp_amg"
.LASF720:
	.string	"PerlExitListEntry"
.LASF945:
	.string	"PL_statusvalue"
.LASF900:
	.string	"atsv"
.LASF777:
	.string	"copy_amg"
.LASF942:
	.string	"PL_formfeed"
.LASF68:
	.string	"cop_seq"
.LASF468:
	.string	"OP_CLOSE"
.LASF846:
	.string	"croak_on_error"
.LASF365:
	.string	"OP_SNE"
.LASF95:
	.string	"sv_flags"
.LASF883:
	.string	"Perl_init_argv_symbols"
.LASF743:
	.string	"band_amg"
.LASF572:
	.string	"OP_ALARM"
.LASF353:
	.string	"OP_I_GE"
.LASF725:
	.string	"string_amg"
.LASF923:
	.string	"PL_patchlevel"
.LASF1117:
	.string	"PL_formtarget"
.LASF899:
	.string	"paramList"
.LASF349:
	.string	"OP_I_GT"
.LASF92:
	.string	"broiled"
.LASF215:
	.string	"xio_fmt_gv"
.LASF51:
	.string	"st_atim"
.LASF1132:
	.string	"PL_dumpindent"
.LASF956:
	.string	"PL_DBline"
.LASF473:
	.string	"OP_TIE"
.LASF306:
	.string	"OP_REGCOMP"
.LASF124:
	.string	"gp_flags"
.LASF130:
	.string	"cx_u"
.LASF314:
	.string	"OP_CHOP"
.LASF116:
	.string	"gp_refcnt"
.LASF649:
	.string	"itervar"
.LASF110:
	.string	"nparens"
.LASF588:
	.string	"OP_LEAVEEVAL"
.LASF251:
	.string	"type"
.LASF477:
	.string	"OP_DBMCLOSE"
.LASF865:
	.string	"S_validate_suid"
.LASF1016:
	.string	"PL_runops"
.LASF1031:
	.string	"PL_utf8_alnumc"
.LASF331:
	.string	"OP_MULTIPLY"
.LASF440:
	.string	"OP_ORASSIGN"
.LASF8:
	.string	"__uid_t"
.LASF506:
	.string	"OP_GSOCKOPT"
.LASF209:
	.string	"xio_page"
.LASF604:
	.string	"OP_SNETENT"
.LASF1002:
	.string	"PL_euid"
.LASF1059:
	.string	"PL_def_layerlist"
.LASF984:
	.string	"PL_laststatval"
.LASF1066:
	.string	"PL_checkav_save"
.LASF446:
	.string	"OP_WARN"
.LASF574:
	.string	"OP_SHMGET"
.LASF709:
	.string	"perl_debug_pad"
.LASF797:
	.string	"perl_construct"
.LASF1056:
	.string	"PL_savebegin"
.LASF382:
	.string	"OP_INT"
.LASF893:
	.string	"usesep"
.LASF596:
	.string	"OP_GNETENT"
.LASF798:
	.string	"perl_free"
.LASF793:
	.string	"riter"
.LASF563:
	.string	"OP_GETPPID"
.LASF960:
	.string	"PL_DBsignal"
.LASF908:
	.string	"read_e_script"
.LASF386:
	.string	"OP_LENGTH"
.LASF307:
	.string	"OP_MATCH"
.LASF199:
	.string	"xcv_padlist"
.LASF828:
	.string	"sub_name"
.LASF531:
	.string	"OP_FTPIPE"
.LASF460:
	.string	"OP_RETURN"
.LASF34:
	.string	"__jmp_buf_tag"
.LASF657:
	.string	"blku_loop"
.LASF869:
	.string	"Perl_doing_taint"
.LASF835:
	.string	"oldmark"
.LASF724:
	.string	"nomethod_amg"
.LASF370:
	.string	"OP_NEGATE"
.LASF1158:
	.string	"PL_do_undump"
.LASF115:
	.string	"gp_sv"
.LASF993:
	.string	"PL_rsfp"
.LASF0:
	.string	"unsigned char"
.LASF427:
	.string	"OP_REVERSE"
.LASF916:
	.string	"PL_envgv"
.LASF609:
	.string	"OP_EPROTOENT"
.LASF385:
	.string	"OP_ABS"
.LASF246:
	.string	"PerlIO"
.LASF1072:
	.string	"PL_lockhook"
.LASF853:
	.string	"usage_msg"
.LASF668:
	.string	"sbu_s"
.LASF17:
	.string	"__blkcnt_t"
.LASF599:
	.string	"OP_GPROTOENT"
.LASF706:
	.string	"XATTRBLOCK"
.LASF694:
	.string	"je_ret"
.LASF697:
	.string	"float"
.LASF963:
	.string	"PL_globalstash"
.LASF1120:
	.string	"PL_defstash"
.LASF650:
	.string	"itersave"
.LASF1032:
	.string	"PL_utf8_ascii"
.LASF1109:
	.string	"PL_statname"
.LASF57:
	.string	"op_next"
.LASF93:
	.string	"sv_any"
.LASF920:
	.string	"PL_diehook"
.LASF420:
	.string	"OP_ANONHASH"
.LASF351:
	.string	"OP_I_LE"
.LASF619:
	.string	"OP_SGRENT"
.LASF1035:
	.string	"PL_utf8_cntrl"
.LASF637:
	.string	"block_eval"
.LASF347:
	.string	"OP_I_LT"
.LASF757:
	.string	"slt_amg"
.LASF438:
	.string	"OP_COND_EXPR"
.LASF532:
	.string	"OP_FTLINK"
.LASF113:
	.string	"reganch"
.LASF998:
	.string	"PL_DBcv"
.LASF239:
	.string	"stashes"
.LASF1038:
	.string	"PL_utf8_upper"
.LASF909:
	.string	"buf_sv"
.LASF466:
	.string	"OP_EXIT"
.LASF99:
	.string	"endp"
.LASF338:
	.string	"OP_ADD"
.LASF582:
	.string	"OP_SEMGET"
.LASF309:
	.string	"OP_SUBST"
.LASF877:
	.string	"Perl_init_stacks"
.LASF432:
	.string	"OP_RANGE"
.LASF278:
	.string	"OP_SCALAR"
.LASF693:
	.string	"je_prev"
.LASF977:
	.string	"PL_main_root"
.LASF1116:
	.string	"PL_chopset"
.LASF1071:
	.string	"PL_sharehook"
.LASF605:
	.string	"OP_SPROTOENT"
.LASF580:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF405:
	.string	"OP_EACH"
.LASF577:
	.string	"OP_SHMWRITE"
.LASF406:
	.string	"OP_VALUES"
.LASF428:
	.string	"OP_GREPSTART"
.LASF25:
	.string	"size_t"
.LASF295:
	.string	"OP_PROTOTYPE"
.LASF824:
	.string	"Perl_get_av"
.LASF1103:
	.string	"PL_retstack_max"
.LASF357:
	.string	"OP_I_NE"
.LASF936:
	.string	"PL_unsafe"
.LASF1003:
	.string	"PL_gid"
.LASF1092:
	.string	"PL_savestack_ix"
.LASF708:
	.string	"XTERMBLOCK"
.LASF300:
	.string	"OP_BACKTICK"
.LASF549:
	.string	"OP_MKDIR"
.LASF949:
	.string	"PL_defgv"
.LASF268:
	.string	"SVt_PVGV"
.LASF866:
	.string	"S_find_beginning"
.LASF656:
	.string	"blku_eval"
.LASF1053:
	.string	"PL_nullstash"
.LASF1073:
	.string	"PL_unlockhook"
.LASF106:
	.string	"sublen"
.LASF1049:
	.string	"PL_bitcount"
.LASF1009:
	.string	"PL_origenviron"
.LASF1000:
	.string	"PL_in_clean_all"
.LASF454:
	.string	"OP_LEAVE"
.LASF166:
	.string	"xav_fill"
.LASF540:
	.string	"OP_CHOWN"
.LASF566:
	.string	"OP_GETPRIORITY"
.LASF647:
	.string	"next_op"
.LASF514:
	.string	"OP_FTREXEC"
.LASF142:
	.string	"mg_moremagic"
.LASF545:
	.string	"OP_RENAME"
.LASF670:
	.string	"sbu_strend"
.LASF715:
	.string	"re_intuit_string_t"
.LASF791:
	.string	"destruct_level"
.LASF69:
	.string	"cop_arybase"
.LASF1099:
	.string	"PL_markstack_ptr"
.LASF388:
	.string	"OP_VEC"
.LASF679:
	.string	"si_cxmax"
.LASF481:
	.string	"OP_READ"
.LASF449:
	.string	"OP_LINESEQ"
.LASF148:
	.string	"mg_ptr"
.LASF475:
	.string	"OP_TIED"
.LASF326:
	.string	"OP_POSTINC"
.LASF796:
	.string	"moremagic"
.LASF992:
	.string	"PL_profiledata"
.LASF654:
	.string	"itermax"
.LASF719:
	.string	"exitlistentry"
.LASF413:
	.string	"OP_UNPACK"
.LASF955:
	.string	"PL_DBgv"
.LASF570:
	.string	"OP_LOCALTIME"
.LASF218:
	.string	"xio_subprocess"
.LASF529:
	.string	"OP_FTFILE"
.LASF104:
	.string	"subbeg"
.LASF98:
	.string	"startp"
.LASF781:
	.string	"to_hv_amg"
.LASF867:
	.string	"S_init_interp"
.LASF1069:
	.string	"PL_unicode"
.LASF616:
	.string	"OP_GGRNAM"
.LASF1161:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF340:
	.string	"OP_SUBTRACT"
.LASF714:
	.string	"re_scream_pos_data_s"
.LASF827:
	.string	"Perl_call_argv"
.LASF516:
	.string	"OP_FTEWRITE"
.LASF782:
	.string	"to_gv_amg"
.LASF542:
	.string	"OP_UNLINK"
.LASF97:
	.string	"regexp"
.LASF625:
	.string	"OP_SETSTATE"
.LASF462:
	.string	"OP_NEXT"
.LASF497:
	.string	"OP_IOCTL"
.LASF974:
	.string	"PL_tainting"
.LASF983:
	.string	"PL_preambleav"
.LASF96:
	.string	"REGEXP"
.LASF94:
	.string	"sv_refcnt"
.LASF457:
	.string	"OP_ITER"
.LASF534:
	.string	"OP_FTSGID"
.LASF289:
	.string	"OP_PUSHRE"
.LASF287:
	.string	"OP_PADHV"
.LASF557:
	.string	"OP_FORK"
.LASF1024:
	.string	"PL_expect"
.LASF225:
	.string	"svt_len"
.LASF1157:
	.string	"PL_No"
.LASF1101:
	.string	"PL_retstack"
.LASF787:
	.string	"max_amg_code"
.LASF252:
	.string	"next_off"
.LASF451:
	.string	"OP_DBSTATE"
.LASF63:
	.string	"op_flags"
.LASF833:
	.string	"myop"
.LASF54:
	.string	"__unused"
.LASF71:
	.string	"cop_warnings"
.LASF684:
	.string	"PERL_SI"
.LASF876:
	.string	"Perl_my_unexec"
.LASF1005:
	.string	"PL_an"
.LASF101:
	.string	"substrs"
.LASF884:
	.string	"S_set_caret_X"
.LASF1044:
	.string	"PL_utf8_toupper"
.LASF1108:
	.string	"PL_statgv"
.LASF612:
	.string	"OP_GPWUID"
.LASF792:
	.string	"cur_env"
.LASF912:
	.string	"environ"
.LASF926:
	.string	"PL_preprocess"
.LASF320:
	.string	"OP_STUDY"
.LASF387:
	.string	"OP_SUBSTR"
.LASF136:
	.string	"blku_oldscopesp"
.LASF265:
	.string	"SVt_PVAV"
.LASF593:
	.string	"OP_GHOSTENT"
.LASF678:
	.string	"si_cxix"
.LASF971:
	.string	"PL_sv_count"
.LASF174:
	.string	"xhv_array"
.LASF595:
	.string	"OP_GNBYADDR"
.LASF738:
	.string	"pow_ass_amg"
.LASF922:
	.string	"PL_minus_c"
.LASF105:
	.string	"offsets"
.LASF761:
	.string	"seq_amg"
.LASF929:
	.string	"PL_minus_l"
.LASF927:
	.string	"PL_minus_n"
.LASF421:
	.string	"OP_SPLICE"
.LASF928:
	.string	"PL_minus_p"
.LASF1083:
	.string	"PL_stack_sp"
.LASF366:
	.string	"OP_SCMP"
.LASF553:
	.string	"OP_TELLDIR"
.LASF216:
	.string	"xio_bottom_name"
.LASF367:
	.string	"OP_BIT_AND"
.LASF897:
	.string	"incver"
.LASF263:
	.string	"SVt_PVBM"
.LASF862:
	.string	"code"
.LASF717:
	.string	"XSINIT_t"
.LASF919:
	.string	"PL_origfilename"
.LASF817:
	.string	"redo_body"
.LASF12:
	.string	"__nlink_t"
.LASF721:
	.string	"fallback_amg"
.LASF1017:
	.string	"PL_sv_undef"
.LASF41:
	.string	"st_ino"
.LASF43:
	.string	"st_mode"
.LASF968:
	.string	"PL_initav"
.LASF140:
	.string	"MAGIC"
.LASF65:
	.string	"cop_label"
.LASF1106:
	.string	"PL_na"
.LASF1118:
	.string	"PL_bodytarget"
.LASF146:
	.string	"mg_flags"
.LASF642:
	.string	"cur_text"
.LASF163:
	.string	"XPVAV"
.LASF921:
	.string	"PL_warnhook"
.LASF267:
	.string	"SVt_PVCV"
.LASF1013:
	.string	"PL_osname"
.LASF323:
	.string	"OP_I_PREINC"
.LASF109:
	.string	"prelen"
.LASF686:
	.string	"hent_hek"
.LASF1079:
	.string	"PL_rehash_seed"
.LASF429:
	.string	"OP_GREPWHILE"
.LASF463:
	.string	"OP_REDO"
.LASF991:
	.string	"PL_modglobal"
.LASF60:
	.string	"op_targ"
.LASF969:
	.string	"PL_strtab"
.LASF1137:
	.string	"PL_maxscream"
.LASF322:
	.string	"OP_PREINC"
.LASF1142:
	.string	"PL_reg_oldcurpm"
.LASF217:
	.string	"xio_bottom_gv"
.LASF948:
	.string	"PL_stderrgv"
.LASF319:
	.string	"OP_UNDEF"
.LASF372:
	.string	"OP_NOT"
.LASF470:
	.string	"OP_FILENO"
.LASF135:
	.string	"blku_oldmarksp"
.LASF435:
	.string	"OP_AND"
.LASF587:
	.string	"OP_ENTEREVAL"
.LASF789:
	.string	"perl_alloc"
.LASF966:
	.string	"PL_endav"
.LASF111:
	.string	"lastparen"
.LASF1078:
	.string	"PL_hash_seed_set"
.LASF973:
	.string	"PL_fdpid"
.LASF746:
	.string	"bor_ass_amg"
.LASF189:
	.string	"XPVCV"
.LASF957:
	.string	"PL_DBsub"
.LASF652:
	.string	"iterary"
.LASF1093:
	.string	"PL_savestack_max"
.LASF369:
	.string	"OP_BIT_OR"
.LASF504:
	.string	"OP_ACCEPT"
.LASF840:
	.string	"newsp"
.LASF1085:
	.string	"PL_curpad"
.LASF476:
	.string	"OP_DBMOPEN"
.LASF1135:
	.string	"PL_screamfirst"
.LASF621:
	.string	"OP_GETLOGIN"
.LASF18:
	.string	"__ssize_t"
.LASF896:
	.string	"incverlist"
.LASF254:
	.string	"reg_data"
.LASF214:
	.string	"xio_fmt_name"
.LASF687:
	.string	"hent_val"
.LASF452:
	.string	"OP_UNSTACK"
.LASF695:
	.string	"je_mustcatch"
.LASF158:
	.string	"xnv_nv"
.LASF33:
	.string	"timespec"
.LASF685:
	.string	"hent_next"
.LASF494:
	.string	"OP_SEEK"
.LASF741:
	.string	"rshift_amg"
.LASF227:
	.string	"svt_free"
.LASF1026:
	.string	"PL_subname"
.LASF830:
	.string	"Perl_call_method"
.LASF88:
	.string	"op_pmdynflags"
.LASF1075:
	.string	"PL_runops_std"
.LASF901:
	.string	"oldline"
.LASF784:
	.string	"iter_amg"
.LASF27:
	.string	"__val"
.LASF564:
	.string	"OP_GETPGRP"
.LASF269:
	.string	"SVt_PVFM"
.LASF424:
	.string	"OP_SHIFT"
.LASF954:
	.string	"PL_errgv"
.LASF450:
	.string	"OP_NEXTSTATE"
.LASF838:
	.string	"oldop"
.LASF238:
	.string	"clone_params"
.LASF1027:
	.string	"PL_hints"
.LASF618:
	.string	"OP_GGRENT"
.LASF748:
	.string	"bxor_ass_amg"
.LASF359:
	.string	"OP_I_NCMP"
.LASF337:
	.string	"OP_REPEAT"
.LASF863:
	.string	"cpp_discard_flag"
.LASF397:
	.string	"OP_LCFIRST"
.LASF536:
	.string	"OP_FTTTY"
.LASF950:
	.string	"PL_argvgv"
.LASF842:
	.string	"optype"
.LASF342:
	.string	"OP_CONCAT"
.LASF44:
	.string	"st_uid"
.LASF669:
	.string	"sbu_m"
.LASF200:
	.string	"xcv_outside"
.LASF274:
	.string	"PADLIST"
.LASF236:
	.string	"any_dxptr"
.LASF1077:
	.string	"PL_hash_seed"
.LASF1096:
	.string	"PL_tmps_floor"
.LASF425:
	.string	"OP_UNSHIFT"
.LASF188:
	.string	"xgv_flags"
.LASF141:
	.string	"magic"
.LASF568:
	.string	"OP_TIME"
.LASF517:
	.string	"OP_FTEEXEC"
.LASF1019:
	.string	"PL_sv_yes"
.LASF614:
	.string	"OP_SPWENT"
.LASF815:
	.string	"space"
.LASF519:
	.string	"OP_FTEOWNED"
.LASF334:
	.string	"OP_I_DIVIDE"
.LASF355:
	.string	"OP_I_EQ"
.LASF985:
	.string	"PL_laststype"
.LASF266:
	.string	"SVt_PVHV"
.LASF255:
	.string	"SVt_NULL"
.LASF1055:
	.string	"PL_sig_pending"
.LASF585:
	.string	"OP_REQUIRE"
.LASF222:
	.string	"mgvtbl"
.LASF301:
	.string	"OP_GLOB"
.LASF554:
	.string	"OP_SEEKDIR"
.LASF924:
	.string	"PL_localpatches"
.LASF182:
	.string	"XPVGV"
.LASF484:
	.string	"OP_PRTF"
.LASF672:
	.string	"sbu_rx"
.LASF221:
	.string	"MGVTBL"
.LASF594:
	.string	"OP_GNBYNAME"
.LASF674:
	.string	"cx_subst"
.LASF673:
	.string	"cx_blk"
.LASF270:
	.string	"SVt_PVIO"
.LASF15:
	.string	"__time_t"
.LASF1022:
	.string	"PL_lex_state"
.LASF812:
	.string	"reswitch"
.LASF1039:
	.string	"PL_utf8_lower"
.LASF260:
	.string	"SVt_PVIV"
.LASF380:
	.string	"OP_LOG"
.LASF107:
	.string	"refcnt"
.LASF810:
	.string	"cddir"
.LASF327:
	.string	"OP_I_POSTINC"
.LASF716:
	.string	"regfree_t"
.LASF783:
	.string	"to_cv_amg"
.LASF664:
	.string	"sbu_rxtainted"
.LASF1046:
	.string	"PL_utf8_tolower"
.LASF546:
	.string	"OP_LINK"
.LASF430:
	.string	"OP_MAPSTART"
.LASF752:
	.string	"ge_amg"
.LASF1139:
	.string	"PL_reg_start_tmp"
.LASF172:
	.string	"XPVHV"
.LASF14:
	.string	"sizetype"
.LASF354:
	.string	"OP_EQ"
.LASF281:
	.string	"OP_CONST"
.LASF84:
	.string	"op_pmnext"
.LASF167:
	.string	"xav_max"
.LASF502:
	.string	"OP_CONNECT"
.LASF194:
	.string	"xcv_xsub"
.LASF806:
	.string	"aligned"
.LASF569:
	.string	"OP_TMS"
.LASF634:
	.string	"hasargs"
.LASF444:
	.string	"OP_LEAVESUBLV"
.LASF508:
	.string	"OP_GETSOCKNAME"
.LASF64:
	.string	"op_private"
.LASF284:
	.string	"OP_GELEM"
.LASF394:
	.string	"OP_CHR"
.LASF766:
	.string	"dec_amg"
.LASF1104:
	.string	"PL_Sv"
.LASF230:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF718:
	.string	"ATEXIT_t"
.LASF343:
	.string	"OP_STRINGIFY"
.LASF561:
	.string	"OP_EXEC"
.LASF341:
	.string	"OP_I_SUBTRACT"
.LASF203:
	.string	"XPVIO"
.LASF16:
	.string	"__blksize_t"
.LASF153:
	.string	"XPVIV"
.LASF169:
	.string	"xav_alloc"
.LASF282:
	.string	"OP_GVSV"
.LASF662:
	.string	"sbu_oldsave"
.LASF176:
	.string	"xhv_max"
.LASF790:
	.string	"perl_destruct"
.LASF1149:
	.string	"PL_regint_string"
.LASF38:
	.string	"sigjmp_buf"
.LASF108:
	.string	"minlen"
.LASF904:
	.string	"status"
.LASF814:
	.string	"opts"
.LASF313:
	.string	"OP_AASSIGN"
.LASF1119:
	.string	"PL_toptarget"
.LASF804:
	.string	"oldscope"
.LASF487:
	.string	"OP_SYSSEEK"
.LASF713:
	.string	"re_intuit_start_t"
.LASF162:
	.string	"xmg_stash"
.LASF584:
	.string	"OP_SEMOP"
.LASF661:
	.string	"sbu_rflags"
.LASF935:
	.string	"PL_sawampersand"
.LASF1124:
	.string	"PL_in_eval"
.LASF100:
	.string	"regstclass"
.LASF352:
	.string	"OP_GE"
.LASF179:
	.string	"xhv_eiter"
.LASF418:
	.string	"OP_LSLICE"
.LASF482:
	.string	"OP_ENTERWRITE"
.LASF348:
	.string	"OP_GT"
.LASF283:
	.string	"OP_GV"
.LASF510:
	.string	"OP_LSTAT"
.LASF479:
	.string	"OP_SELECT"
.LASF573:
	.string	"OP_SLEEP"
.LASF264:
	.string	"SVt_PVLV"
.LASF843:
	.string	"is_eval"
.LASF253:
	.string	"reg_substr_data"
.LASF758:
	.string	"sle_amg"
.LASF635:
	.string	"lval"
.LASF631:
	.string	"savearray"
.LASF651:
	.string	"iterlval"
.LASF1051:
	.string	"PL_psig_name"
.LASF727:
	.string	"add_amg"
.LASF280:
	.string	"OP_WANTARRAY"
.LASF844:
	.string	"Perl_eval_sv"
.LASF982:
	.string	"PL_gensym"
.LASF1036:
	.string	"PL_utf8_graph"
.LASF887:
	.string	"S_init_perllib"
.LASF345:
	.string	"OP_RIGHT_SHIFT"
.LASF600:
	.string	"OP_GSBYNAME"
.LASF139:
	.string	"blk_u"
.LASF262:
	.string	"SVt_PVMG"
.LASF961:
	.string	"PL_dbargs"
.LASF168:
	.string	"xof_off"
.LASF567:
	.string	"OP_SETPRIORITY"
.LASF890:
	.string	"S_incpush"
.LASF879:
	.string	"S_init_lexer"
.LASF730:
	.string	"subtr_ass_amg"
.LASF994:
	.string	"PL_rsfp_filters"
.LASF617:
	.string	"OP_GGRGID"
.LASF186:
	.string	"xgv_namelen"
.LASF819:
	.string	"S_parse_body"
.LASF81:
	.string	"op_last"
.LASF286:
	.string	"OP_PADAV"
.LASF979:
	.string	"PL_eval_root"
.LASF244:
	.string	"__dirstream"
.LASF414:
	.string	"OP_PACK"
.LASF859:
	.string	"S_init_main_stash"
.LASF233:
	.string	"any_long"
.LASF809:
	.string	"validarg"
.LASF1011:
	.string	"PL_pidstatus"
.LASF467:
	.string	"OP_OPEN"
.LASF1065:
	.string	"PL_utf8_idcont"
.LASF1134:
	.string	"PL_efloatsize"
.LASF1095:
	.string	"PL_tmps_ix"
.LASF62:
	.string	"op_seq"
.LASF851:
	.string	"S_call_body"
.LASF763:
	.string	"not_amg"
.LASF1126:
	.string	"PL_curstack"
.LASF598:
	.string	"OP_GPBYNUMBER"
.LASF1086:
	.string	"PL_stack_base"
.LASF261:
	.string	"SVt_PVNV"
.LASF79:
	.string	"PMOP"
.LASF1042:
	.string	"PL_utf8_xdigit"
.LASF401:
	.string	"OP_RV2AV"
.LASF485:
	.string	"OP_PRINT"
.LASF894:
	.string	"subdir"
.LASF490:
	.string	"OP_SEND"
.LASF528:
	.string	"OP_FTBLK"
.LASF112:
	.string	"lastcloseparen"
.LASF159:
	.string	"XPVMG"
.LASF722:
	.string	"abs_amg"
.LASF74:
	.string	"unop"
.LASF541:
	.string	"OP_CHROOT"
.LASF1084:
	.string	"PL_op"
.LASF219:
	.string	"xio_type"
.LASF515:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF226:
	.string	"svt_clear"
.LASF981:
	.string	"PL_copline"
.LASF206:
	.string	"xio_ofp"
.LASF187:
	.string	"xgv_stash"
.LASF384:
	.string	"OP_OCT"
.LASF918:
	.string	"PL_hintgv"
.LASF639:
	.string	"old_op_type"
.LASF878:
	.string	"S_nuke_stacks"
.LASF339:
	.string	"OP_I_ADD"
.LASF82:
	.string	"op_pmreplroot"
.LASF1159:
	.string	"PL_sv_placeholder"
.LASF198:
	.string	"xcv_depth"
.LASF123:
	.string	"gp_cvgen"
.LASF826:
	.string	"Perl_get_cv"
.LASF156:
	.string	"XPVNV"
.LASF820:
	.string	"S_run_body"
.LASF178:
	.string	"xhv_riter"
.LASF138:
	.string	"blku_gimme"
.LASF644:
	.string	"label"
.LASF834:
	.string	"method_op"
.LASF1033:
	.string	"PL_utf8_alpha"
.LASF293:
	.string	"OP_RV2CV"
.LASF128:
	.string	"context"
.LASF630:
	.string	"dfoutgv"
.LASF947:
	.string	"PL_stdingv"
.LASF756:
	.string	"scmp_amg"
.LASF527:
	.string	"OP_FTCHR"
.LASF1018:
	.string	"PL_sv_no"
.LASF980:
	.string	"PL_curcopdb"
.LASF426:
	.string	"OP_SORT"
.LASF399:
	.string	"OP_LC"
.LASF350:
	.string	"OP_LE"
.LASF710:
	.string	"peep_t"
.LASF601:
	.string	"OP_GSBYPORT"
.LASF83:
	.string	"op_pmreplstart"
.LASF627:
	.string	"OP_CUSTOM"
.LASF346:
	.string	"OP_LT"
.LASF368:
	.string	"OP_BIT_XOR"
.LASF1148:
	.string	"PL_regint_start"
.LASF447:
	.string	"OP_DIE"
.LASF310:
	.string	"OP_SUBSTCONT"
.LASF1068:
	.string	"PL_in_load_module"
.LASF1089:
	.string	"PL_scopestack_ix"
.LASF256:
	.string	"SVt_IV"
.LASF332:
	.string	"OP_I_MULTIPLY"
.LASF250:
	.string	"regnode"
.LASF731:
	.string	"mult_amg"
.LASF376:
	.string	"OP_COS"
.LASF1141:
	.string	"PL_regindent"
.LASF1150:
	.string	"PL_regfree"
.LASF988:
	.string	"PL_ofmt"
.LASF58:
	.string	"op_sibling"
.LASF207:
	.string	"xio_dirpu"
.LASF1136:
	.string	"PL_screamnext"
.LASF850:
	.string	"namlen"
.LASF232:
	.string	"any_iv"
.LASF403:
	.string	"OP_AELEM"
.LASF1112:
	.string	"PL_rs"
.LASF180:
	.string	"xhv_pmroot"
.LASF740:
	.string	"lshift_ass_amg"
.LASF373:
	.string	"OP_COMPLEMENT"
.LASF448:
	.string	"OP_RESET"
.LASF939:
	.string	"PL_perldb"
.LASF3:
	.string	"long unsigned int"
.LASF80:
	.string	"pmop"
.LASF525:
	.string	"OP_FTCTIME"
.LASF431:
	.string	"OP_MAPWHILE"
.LASF523:
	.string	"OP_FTMTIME"
.LASF1152:
	.string	"PL_reg_starttry"
.LASF1131:
	.string	"PL_errors"
.LASF415:
	.string	"OP_SPLIT"
.LASF663:
	.string	"sbu_once"
.LASF371:
	.string	"OP_I_NEGATE"
.LASF552:
	.string	"OP_READDIR"
.LASF785:
	.string	"int_amg"
.LASF90:
	.string	"PerlInterpreter"
.LASF726:
	.string	"numer_amg"
.LASF735:
	.string	"modulo_amg"
.LASF356:
	.string	"OP_NE"
.LASF772:
	.string	"sqrt_amg"
.LASF872:
	.string	"egid"
.LASF775:
	.string	"concat_amg"
.LASF592:
	.string	"OP_GHBYADDR"
.LASF728:
	.string	"add_ass_amg"
.LASF20:
	.string	"char"
.LASF1025:
	.string	"PL_error_count"
.LASF1021:
	.string	"PL_cshlen"
.LASF437:
	.string	"OP_XOR"
.LASF512:
	.string	"OP_FTRREAD"
.LASF632:
	.string	"argarray"
.LASF747:
	.string	"bxor_amg"
.LASF925:
	.string	"PL_splitstr"
.LASF940:
	.string	"PL_perl_destruct_level"
.LASF212:
	.string	"xio_top_name"
.LASF560:
	.string	"OP_SYSTEM"
.LASF1113:
	.string	"PL_last_in_gv"
.LASF1043:
	.string	"PL_utf8_mark"
.LASF149:
	.string	"mg_len"
.LASF486:
	.string	"OP_SYSOPEN"
.LASF272:
	.string	"xiou_dirp"
.LASF185:
	.string	"xgv_name"
.LASF303:
	.string	"OP_RCATLINE"
.LASF436:
	.string	"OP_OR"
.LASF328:
	.string	"OP_POSTDEC"
.LASF734:
	.string	"div_ass_amg"
.LASF629:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF496:
	.string	"OP_FCNTL"
.LASF521:
	.string	"OP_FTZERO"
.LASF290:
	.string	"OP_RV2GV"
.LASF417:
	.string	"OP_LIST"
.LASF813:
	.string	"switch_end"
.LASF931:
	.string	"PL_minus_F"
.LASF208:
	.string	"xio_lines"
.LASF870:
	.string	"envp"
.LASF914:
	.string	"PL_origargc"
.LASF518:
	.string	"OP_FTIS"
.LASF825:
	.string	"Perl_get_hv"
.LASF677:
	.string	"si_cxstack"
.LASF276:
	.string	"OP_NULL"
.LASF152:
	.string	"xpv_len"
.LASF915:
	.string	"PL_origargv"
.LASF1107:
	.string	"PL_statbuf"
.LASF61:
	.string	"op_type"
.LASF410:
	.string	"OP_RV2HV"
.LASF1162:
	.string	"perl.c"
.LASF56:
	.string	"STRLEN"
.LASF1100:
	.string	"PL_markstack_max"
.LASF533:
	.string	"OP_FTSUID"
.LASF953:
	.string	"PL_replgv"
.LASF996:
	.string	"PL_compcv"
.LASF308:
	.string	"OP_QR"
.LASF392:
	.string	"OP_FORMLINE"
.LASF640:
	.string	"old_namesv"
.LASF856:
	.string	"rschar"
.LASF559:
	.string	"OP_WAITPID"
.LASF257:
	.string	"SVt_NV"
.LASF389:
	.string	"OP_INDEX"
.LASF377:
	.string	"OP_RAND"
.LASF880:
	.string	"tmpfp"
.LASF390:
	.string	"OP_RINDEX"
.LASF690:
	.string	"hek_key"
.LASF607:
	.string	"OP_EHOSTENT"
.LASF336:
	.string	"OP_I_MODULO"
.LASF786:
	.string	"DESTROY_amg"
.LASF197:
	.string	"xcv_file"
.LASF1006:
	.string	"PL_cop_seqmax"
.LASF1123:
	.string	"PL_curcop"
.LASF881:
	.string	"S_init_predump_symbols"
.LASF46:
	.string	"__pad0"
.LASF1147:
	.string	"PL_regexecp"
.LASF1060:
	.string	"PL_encoding"
.LASF241:
	.string	"proto_perl"
.LASF641:
	.string	"old_eval_root"
.LASF412:
	.string	"OP_HSLICE"
.LASF951:
	.string	"PL_argvoutgv"
.LASF335:
	.string	"OP_MODULO"
.LASF707:
	.string	"XATTRTERM"
.LASF576:
	.string	"OP_SHMREAD"
.LASF1090:
	.string	"PL_scopestack_max"
.LASF530:
	.string	"OP_FTDIR"
.LASF1012:
	.string	"PL_maxo"
.LASF882:
	.string	"tmpgv"
.LASF606:
	.string	"OP_SSERVENT"
.LASF767:
	.string	"atan2_amg"
.LASF860:
	.string	"S_open_script"
.LASF275:
	.string	"PADOFFSET"
.LASF892:
	.string	"addoldvers"
.LASF829:
	.string	"Perl_call_pv"
.LASF86:
	.string	"op_pmflags"
.LASF1146:
	.string	"PL_regcompp"
.LASF736:
	.string	"modulo_ass_amg"
.LASF655:
	.string	"blku_sub"
.LASF91:
	.string	"interpreter"
.LASF938:
	.string	"PL_e_script"
.LASF137:
	.string	"blku_oldpm"
.LASF944:
	.string	"PL_multiline"
.LASF760:
	.string	"sge_amg"
.LASF75:
	.string	"op_first"
.LASF55:
	.string	"double"
.LASF808:
	.string	"dosearch"
.LASF1115:
	.string	"PL_defoutgv"
.LASF87:
	.string	"op_pmpermflags"
.LASF47:
	.string	"st_rdev"
.LASF1070:
	.string	"PL_stashcache"
.LASF703:
	.string	"XREF"
.LASF802:
	.string	"argc"
.LASF40:
	.string	"st_dev"
.LASF1080:
	.string	"PL_rehash_seed_set"
.LASF23:
	.string	"ssize_t"
.LASF59:
	.string	"op_ppaddr"
.LASF624:
	.string	"OP_THREADSV"
.LASF932:
	.string	"PL_doswitches"
.LASF764:
	.string	"compl_amg"
.LASF700:
	.string	"thrhook_proc_t"
.LASF231:
	.string	"any_i32"
.LASF964:
	.string	"PL_curstname"
.LASF861:
	.string	"quote"
.LASF765:
	.string	"inc_amg"
.LASF778:
	.string	"neg_amg"
.LASF1144:
	.string	"PL_reg_poscache"
.LASF987:
	.string	"PL_ors_sv"
.LASF259:
	.string	"SVt_PV"
.LASF67:
	.string	"cop_filegv"
.LASF234:
	.string	"any_bool"
.LASF422:
	.string	"OP_PUSH"
.LASF1088:
	.string	"PL_scopestack"
.LASF398:
	.string	"OP_UC"
.LASF202:
	.string	"xcv_outside_seq"
.LASF325:
	.string	"OP_I_PREDEC"
.LASF103:
	.string	"data"
.LASF501:
	.string	"OP_BIND"
.LASF608:
	.string	"OP_ENETENT"
.LASF555:
	.string	"OP_REWINDDIR"
.LASF680:
	.string	"si_type"
.LASF165:
	.string	"xav_array"
.LASF258:
	.string	"SVt_RV"
.LASF933:
	.string	"PL_dowarn"
.LASF1058:
	.string	"PL_known_layers"
.LASF237:
	.string	"CLONE_PARAMS"
.LASF455:
	.string	"OP_SCOPE"
.LASF591:
	.string	"OP_GHBYNAME"
.LASF711:
	.string	"regcomp_t"
.LASF324:
	.string	"OP_PREDEC"
.LASF645:
	.string	"resetsp"
.LASF127:
	.string	"PERL_CONTEXT"
.LASF799:
	.string	"Perl_call_atexit"
.LASF1007:
	.string	"PL_op_seqmax"
.LASF965:
	.string	"PL_beginav"
.LASF946:
	.string	"PL_exit_flags"
.LASF175:
	.string	"xhv_fill"
.LASF155:
	.string	"xiv_iv"
.LASF1023:
	.string	"PL_linestr"
.LASF705:
	.string	"XBLOCK"
.LASF698:
	.string	"runops_proc_t"
.LASF132:
	.string	"blku_oldsp"
.LASF739:
	.string	"lshift_amg"
.LASF558:
	.string	"OP_WAIT"
.LASF464:
	.string	"OP_DUMP"
.LASF773:
	.string	"repeat_amg"
.LASF9:
	.string	"__gid_t"
.LASF312:
	.string	"OP_SASSIGN"
.LASF976:
	.string	"PL_main_cv"
.LASF1138:
	.string	"PL_lastscream"
.LASF732:
	.string	"mult_ass_amg"
.LASF646:
	.string	"redo_op"
.LASF402:
	.string	"OP_AELEMFAST"
.LASF1040:
	.string	"PL_utf8_print"
.LASF864:
	.string	"perl"
.LASF689:
	.string	"hek_len"
.LASF1082:
	.string	"PL_suidscript"
.LASF396:
	.string	"OP_UCFIRST"
.LASF547:
	.string	"OP_SYMLINK"
.LASF381:
	.string	"OP_SQRT"
.LASF579:
	.string	"OP_MSGCTL"
.LASF999:
	.string	"PL_in_clean_objs"
.LASF28:
	.string	"tv_sec"
.LASF970:
	.string	"PL_sub_generation"
.LASF811:
	.string	"minus_f"
.LASF522:
	.string	"OP_FTSIZE"
.LASF30:
	.string	"long long unsigned int"
.LASF749:
	.string	"lt_amg"
.LASF492:
	.string	"OP_EOF"
.LASF648:
	.string	"last_op"
.LASF1064:
	.string	"PL_utf8_idstart"
.LASF22:
	.string	"uid_t"
.LASF1063:
	.string	"PL_utf8locale"
.LASF538:
	.string	"OP_FTBINARY"
.LASF511:
	.string	"OP_STAT"
.LASF691:
	.string	"jmpenv"
.LASF788:
	.string	"my_perl"
.LASF1151:
	.string	"PL_reginterp_cnt"
.LASF411:
	.string	"OP_HELEM"
.LASF847:
	.string	"Perl_require_pv"
.LASF50:
	.string	"st_blocks"
.LASF837:
	.string	"oldcatch"
.LASF696:
	.string	"JMPENV"
.LASF288:
	.string	"OP_PADANY"
.LASF292:
	.string	"OP_AV2ARYLEN"
.LASF498:
	.string	"OP_FLOCK"
.LASF959:
	.string	"PL_DBtrace"
.LASF1004:
	.string	"PL_egid"
.LASF393:
	.string	"OP_ORD"
.LASF229:
	.string	"svt_dup"
.LASF1121:
	.string	"PL_curstash"
.LASF873:
	.string	"S_forbid_setid"
.LASF1125:
	.string	"PL_dirty"
.LASF683:
	.string	"si_markoff"
.LASF800:
	.string	"perl_parse"
.LASF1020:
	.string	"PL_cshname"
.LASF279:
	.string	"OP_PUSHMARK"
.LASF586:
	.string	"OP_DOFILE"
.LASF213:
	.string	"xio_top_gv"
.LASF733:
	.string	"div_amg"
.LASF910:
	.string	"maxlen"
.LASF1094:
	.string	"PL_tmps_stack"
.LASF906:
	.string	"exitstatus"
.LASF1029:
	.string	"PL_amagic_generation"
.LASF408:
	.string	"OP_DELETE"
.LASF795:
	.string	"array"
.LASF891:
	.string	"addsubdirs"
.LASF729:
	.string	"subtr_amg"
.LASF1097:
	.string	"PL_tmps_max"
.LASF671:
	.string	"sbu_rxres"
.LASF852:
	.string	"S_usage"
.LASF1127:
	.string	"PL_curstackinfo"
.LASF839:
	.string	"gimme"
.LASF443:
	.string	"OP_LEAVESUB"
.LASF1156:
	.string	"PL_Yes"
.LASF285:
	.string	"OP_PADSV"
.LASF934:
	.string	"PL_doextract"
.LASF297:
	.string	"OP_SREFGEN"
.LASF465:
	.string	"OP_GOTO"
.LASF816:
	.string	"perl_run"
.LASF1048:
	.string	"PL_glob_index"
.LASF822:
	.string	"name"
.LASF89:
	.string	"op_pmstash"
.LASF821:
	.string	"Perl_get_sv"
.LASF223:
	.string	"svt_get"
.LASF118:
	.string	"gp_form"
.LASF1041:
	.string	"PL_utf8_punct"
.LASF329:
	.string	"OP_I_POSTDEC"
.LASF849:
	.string	"Perl_magicname"
.LASF836:
	.string	"retval"
.LASF291:
	.string	"OP_RV2SV"
.LASF133:
	.string	"blku_oldcop"
.LASF66:
	.string	"cop_stash"
.LASF299:
	.string	"OP_BLESS"
.LASF571:
	.string	"OP_GMTIME"
.LASF31:
	.string	"long long int"
.LASF242:
	.string	"line_t"
.LASF181:
	.string	"xhv_name"
.LASF537:
	.string	"OP_FTTEXT"
.LASF676:
	.string	"si_stack"
.LASF524:
	.string	"OP_FTATIME"
.LASF228:
	.string	"svt_copy"
.LASF832:
	.string	"Perl_call_sv"
.LASF423:
	.string	"OP_POP"
.LASF1140:
	.string	"PL_reg_start_tmpl"
.LASF321:
	.string	"OP_POS"
.LASF330:
	.string	"OP_POW"
.LASF456:
	.string	"OP_ENTERITER"
.LASF296:
	.string	"OP_REFGEN"
.LASF29:
	.string	"tv_nsec"
.LASF704:
	.string	"XSTATE"
.LASF513:
	.string	"OP_FTRWRITE"
.LASF507:
	.string	"OP_SSOCKOPT"
.LASF129:
	.string	"cx_type"
.LASF171:
	.string	"xav_flags"
.LASF911:
	.string	"local_patches"
.LASF613:
	.string	"OP_GPWENT"
.LASF917:
	.string	"PL_incgv"
.LASF1014:
	.string	"PL_sh_path_compat"
.LASF903:
	.string	"Perl_my_exit"
.LASF653:
	.string	"iterix"
.LASF1062:
	.string	"PL_taint_warn"
.LASF603:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF461:
	.string	"OP_LAST"
.LASF161:
	.string	"xmg_magic"
.LASF407:
	.string	"OP_KEYS"
.LASF952:
	.string	"PL_argvout_stack"
.LASF147:
	.string	"mg_obj"
.LASF1061:
	.string	"PL_debug_pad"
.LASF818:
	.string	"prev"
.LASF590:
	.string	"OP_LEAVETRY"
.LASF235:
	.string	"any_dptr"
.LASF433:
	.string	"OP_FLIP"
.LASF779:
	.string	"to_sv_amg"
.LASF551:
	.string	"OP_OPEN_DIR"
.LASF164:
	.string	"xpvav"
.LASF85:
	.string	"op_pmregexp"
.LASF298:
	.string	"OP_REF"
.LASF500:
	.string	"OP_SOCKPAIR"
.LASF1008:
	.string	"PL_evalseq"
.LASF889:
	.string	"tmpstatbuf"
.LASF1054:
	.string	"PL_psig_pend"
.LASF480:
	.string	"OP_GETC"
.LASF597:
	.string	"OP_GPBYNAME"
.LASF195:
	.string	"xcv_xsubany"
.LASF907:
	.string	"S_my_exit_jump"
.LASF471:
	.string	"OP_UMASK"
.LASF211:
	.string	"xio_lines_left"
.LASF1122:
	.string	"PL_restartop"
.LASF491:
	.string	"OP_RECV"
.LASF119:
	.string	"gp_av"
.LASF723:
	.string	"bool__amg"
.LASF495:
	.string	"OP_TRUNCATE"
.LASF76:
	.string	"LOGOP"
.LASF469:
	.string	"OP_PIPE_OP"
.LASF615:
	.string	"OP_EPWENT"
.LASF937:
	.string	"PL_inplace"
.LASF1074:
	.string	"PL_threadhook"
.LASF1045:
	.string	"PL_utf8_totitle"
.LASF1133:
	.string	"PL_efloatbuf"
.LASF643:
	.string	"block_loop"
.LASF294:
	.string	"OP_ANONCODE"
.LASF759:
	.string	"sgt_amg"
.LASF737:
	.string	"pow_amg"
.LASF311:
	.string	"OP_TRANS"
.LASF692:
	.string	"je_buf"
.LASF1001:
	.string	"PL_uid"
.LASF701:
	.string	"XOPERATOR"
.LASF622:
	.string	"OP_SYSCALL"
.LASF1105:
	.string	"PL_Xpv"
.LASF201:
	.string	"xcv_flags"
.LASF626:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF660:
	.string	"sbu_maxiters"
.LASF190:
	.string	"xpvcv"
.LASF374:
	.string	"OP_ATAN2"
.LASF419:
	.string	"OP_ANONLIST"
.LASF1155:
	.string	"PL_curinterp"
.LASF1153:
	.string	"PL_watchaddr"
.LASF499:
	.string	"OP_SOCKET"
.LASF404:
	.string	"OP_ASLICE"
.LASF383:
	.string	"OP_HEX"
.LASF636:
	.string	"oldcomppad"
.LASF245:
	.string	"_PerlIO"
.LASF702:
	.string	"XTERM"
.LASF52:
	.string	"st_mtim"
.LASF478:
	.string	"OP_SSELECT"
.LASF745:
	.string	"bor_amg"
.LASF762:
	.string	"sne_amg"
.LASF578:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF122:
	.string	"gp_cv"
.LASF400:
	.string	"OP_QUOTEMETA"
.LASF32:
	.string	"__jmp_buf"
.LASF633:
	.string	"olddepth"
.LASF358:
	.string	"OP_NCMP"
.LASF589:
	.string	"OP_ENTERTRY"
.LASF543:
	.string	"OP_CHMOD"
.LASF803:
	.string	"argv"
.LASF379:
	.string	"OP_EXP"
.LASF831:
	.string	"methname"
.LASF395:
	.string	"OP_CRYPT"
.LASF544:
	.string	"OP_UTIME"
.LASF769:
	.string	"sin_amg"
.LASF39:
	.string	"stat"
.LASF243:
	.string	"PerlIOl"
.LASF442:
	.string	"OP_ENTERSUB"
.LASF240:
	.string	"flags"
.LASF391:
	.string	"OP_SPRINTF"
.LASF305:
	.string	"OP_REGCRESET"
.LASF858:
	.string	"start"
.LASF1050:
	.string	"PL_psig_ptr"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
