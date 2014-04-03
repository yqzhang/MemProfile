	.file	"dump.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 dump.c -mtune=generic
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
	.globl	Perl_dump_indent
	.type	Perl_dump_indent, @function
Perl_dump_indent:
.LFB2:
	.file 1 "dump.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movl	%edi, -212(%rbp)	# level, level
	movq	%rsi, -224(%rbp)	# file, file
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L2	#,
	.loc 1 30 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L2:
	movq	%rdx, -232(%rbp)	# pat, pat
	.loc 1 32 0
	movl	$24, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp64
	movq	%rax, -192(%rbp)	# tmp64, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp65
	movq	%rax, -184(%rbp)	# tmp65, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 33 0
	leaq	-200(%rbp), %rcx	#, tmp60
	movq	-232(%rbp), %rdx	# pat, tmp61
	movq	-224(%rbp), %rsi	# file, tmp62
	movl	-212(%rbp), %eax	# level, tmp63
	movl	%eax, %edi	# tmp63,
	call	Perl_dump_vindent	#
	.loc 1 35 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_dump_indent, .-Perl_dump_indent
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*s"
	.text
	.globl	Perl_dump_vindent
	.type	Perl_dump_vindent, @function
Perl_dump_vindent:
.LFB3:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# level, level
	movq	%rsi, -16(%rbp)	# file, file
	movq	%rdx, -24(%rbp)	# pat, pat
	movq	%rcx, -32(%rbp)	# args, args
	.loc 1 40 0
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, PL_dumpindent.0
	imull	-4(%rbp), %eax	# level, D.13072
	movl	%eax, %edx	# D.13072, D.13072
	movq	-16(%rbp), %rax	# file, tmp61
	movl	$.LC0, %ecx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp61,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 41 0
	movq	-32(%rbp), %rdx	# args, tmp62
	movq	-24(%rbp), %rcx	# pat, tmp63
	movq	-16(%rbp), %rax	# file, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_vprintf	#
	.loc 1 42 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_dump_vindent, .-Perl_dump_vindent
	.globl	Perl_dump_all
	.type	Perl_dump_all, @function
Perl_dump_all:
.LFB4:
	.loc 1 46 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 47 0
	call	Perl_PerlIO_stderr	#
	movq	%rax, %rdi	# D.13075,
	call	Perl_PerlIO_setlinebuf	#
	.loc 1 48 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.1
	testq	%rax, %rax	# PL_main_root.1
	je	.L5	#,
	.loc 1 49 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, PL_main_root.2
	movq	%rax, %rdi	# PL_main_root.2,
	call	Perl_op_dump	#
.L5:
	.loc 1 50 0
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.3
	movq	%rax, %rdi	# PL_defstash.3,
	call	Perl_dump_packsubs	#
	.loc 1 51 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_dump_all, .-Perl_dump_all
	.globl	Perl_dump_packsubs
	.type	Perl_dump_packsubs, @function
Perl_dump_packsubs:
.LFB5:
	.loc 1 55 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# stash, stash
	.loc 1 59 0
	movq	-40(%rbp), %rax	# stash, tmp92
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13076
	movq	(%rax), %rax	# MEM[(struct HE * * *)_5], D.13078
	testq	%rax, %rax	# D.13078
	jne	.L7	#,
	.loc 1 60 0
	jmp	.L6	#
.L7:
	.loc 1 61 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L9	#
.L17:
	.loc 1 62 0
	movq	-40(%rbp), %rax	# stash, tmp93
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13076
	movq	(%rax), %rax	# MEM[(struct HE * * *)_12], D.13078
	movl	-28(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, D.13079
	salq	$3, %rdx	#, D.13079
	addq	%rdx, %rax	# D.13079, D.13078
	movq	(%rax), %rax	# *_16, tmp95
	movq	%rax, -24(%rbp)	# tmp95, entry
	jmp	.L10	#
.L16:
.LBB2:
	.loc 1 63 0
	movq	-24(%rbp), %rax	# entry, tmp96
	movq	16(%rax), %rax	# entry_2->hent_val, tmp97
	movq	%rax, -16(%rbp)	# tmp97, gv
	.loc 1 65 0
	movq	-16(%rbp), %rax	# gv, tmp98
	movl	12(%rax), %eax	# gv_18->sv_flags, D.13081
	movzbl	%al, %eax	# D.13081, D.13081
	cmpl	$13, %eax	#, D.13081
	jne	.L11	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gv, tmp99
	movq	(%rax), %rax	# gv_18->sv_any, D.13082
	movq	56(%rax), %rax	# _21->xgv_gp, D.13083
	testq	%rax, %rax	# D.13083
	jne	.L12	#,
.L11:
	.loc 1 66 0 is_stmt 1
	jmp	.L13	#
.L12:
	.loc 1 67 0
	movq	-16(%rbp), %rax	# gv, tmp100
	movq	(%rax), %rax	# gv_18->sv_any, D.13082
	movq	56(%rax), %rax	# _23->xgv_gp, D.13083
	movl	64(%rax), %eax	# _24->gp_cvgen, D.13081
	testl	%eax, %eax	# D.13081
	jne	.L14	#,
	.loc 1 67 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gv, tmp101
	movq	(%rax), %rax	# gv_18->sv_any, D.13082
	movq	56(%rax), %rax	# _26->xgv_gp, D.13083
	movq	56(%rax), %rax	# _27->gp_cv, D.13084
	testq	%rax, %rax	# D.13084
	je	.L14	#,
	.loc 1 68 0 is_stmt 1
	movq	-16(%rbp), %rax	# gv, tmp102
	movq	%rax, %rdi	# tmp102,
	call	Perl_dump_sub	#
.L14:
	.loc 1 69 0
	movq	-16(%rbp), %rax	# gv, tmp103
	movq	(%rax), %rax	# gv_18->sv_any, D.13082
	movq	56(%rax), %rax	# _29->xgv_gp, D.13083
	movq	24(%rax), %rax	# _30->gp_form, D.13084
	testq	%rax, %rax	# D.13084
	je	.L15	#,
	.loc 1 70 0
	movq	-16(%rbp), %rax	# gv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_dump_form	#
.L15:
	.loc 1 71 0
	movq	-24(%rbp), %rax	# entry, tmp105
	movq	8(%rax), %rdx	# entry_2->hent_hek, D.13085
	movq	-24(%rbp), %rax	# entry, tmp106
	movq	8(%rax), %rax	# entry_2->hent_hek, D.13085
	movl	4(%rax), %eax	# _33->hek_len, D.13080
	subl	$1, %eax	#, D.13080
	cltq
	movzbl	8(%rdx,%rax), %eax	# _32->hek_key, D.13086
	cmpb	$58, %al	#, D.13086
	jne	.L13	#,
	.loc 1 72 0
	movq	-16(%rbp), %rax	# gv, tmp108
	movq	(%rax), %rax	# gv_18->sv_any, D.13082
	movq	56(%rax), %rax	# _37->xgv_gp, D.13083
	movq	40(%rax), %rax	# _38->gp_hv, tmp109
	movq	%rax, -8(%rbp)	# tmp109, hv
	cmpq	$0, -8(%rbp)	#, hv
	je	.L13	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.4
	cmpq	%rax, -8(%rbp)	# PL_defstash.4, hv
	je	.L13	#,
	.loc 1 73 0 is_stmt 1
	movq	-8(%rbp), %rax	# hv, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_dump_packsubs	#
.L13:
.LBE2:
	.loc 1 62 0
	movq	-24(%rbp), %rax	# entry, tmp111
	movq	(%rax), %rax	# entry_2->hent_next, tmp112
	movq	%rax, -24(%rbp)	# tmp112, entry
.L10:
	.loc 1 62 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, entry
	jne	.L16	#,
	.loc 1 61 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L9:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# stash, tmp113
	movq	(%rax), %rax	# stash_3(D)->sv_any, D.13076
	movq	16(%rax), %rax	# _8->xhv_max, D.13079
	cmpl	-28(%rbp), %eax	# i, D.13080
	jge	.L17	#,
.L6:
	.loc 1 76 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_dump_packsubs, .-Perl_dump_packsubs
	.section	.rodata
.LC2:
	.string	"\nSUB %s = "
.LC3:
	.string	"(xsub 0x%lx %d)\n"
.LC4:
	.string	"<undef>\n"
	.text
	.globl	Perl_dump_sub
	.type	Perl_dump_sub, @function
Perl_dump_sub:
.LFB6:
	.loc 1 80 0
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
	movq	%rdi, -40(%rbp)	# gv, gv
	.loc 1 81 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp90, sv
	.loc 1 83 0
	movq	-40(%rbp), %rsi	# gv, tmp91
	movq	-24(%rbp), %rax	# sv, tmp92
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp92,
	call	Perl_gv_fullname4	#
	.loc 1 84 0
	movq	-24(%rbp), %rax	# sv, tmp93
	movq	(%rax), %rax	# sv_1->sv_any, D.13087
	movq	(%rax), %rbx	# MEM[(struct XPV *)_3].xpv_pv, D.13088
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rcx	# D.13088,
	movl	$.LC2, %edx	#,
	movq	%rax, %rsi	# D.13089,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 85 0
	movq	-40(%rbp), %rax	# gv, tmp94
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13090
	movq	56(%rax), %rax	# _6->xgv_gp, D.13091
	movq	56(%rax), %rax	# _7->gp_cv, D.13092
	movq	(%rax), %rax	# _8->sv_any, D.13093
	movq	80(%rax), %rax	# _9->xcv_xsub, D.13094
	testq	%rax, %rax	# D.13094
	je	.L19	#,
	.loc 1 88 0
	movq	-40(%rbp), %rax	# gv, tmp95
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13090
	movq	56(%rax), %rax	# _11->xgv_gp, D.13091
	movq	56(%rax), %rax	# _12->gp_cv, D.13092
	movq	(%rax), %rax	# _13->sv_any, D.13093
	.loc 1 86 0
	movl	88(%rax), %r12d	# _14->xcv_xsubany.any_i32, D.13095
	.loc 1 87 0
	movq	-40(%rbp), %rax	# gv, tmp96
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13090
	movq	56(%rax), %rax	# _16->xgv_gp, D.13091
	movq	56(%rax), %rax	# _17->gp_cv, D.13092
	movq	(%rax), %rax	# _18->sv_any, D.13093
	movq	80(%rax), %rax	# _19->xcv_xsub, D.13094
	.loc 1 86 0
	movq	%rax, %rbx	# D.13094, D.13096
	call	Perl_PerlIO_stderr	#
	movl	%r12d, %r8d	# D.13095,
	movq	%rbx, %rcx	# D.13096,
	movl	$.LC3, %edx	#,
	movq	%rax, %rsi	# D.13089,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L18	#
.L19:
	.loc 1 89 0
	movq	-40(%rbp), %rax	# gv, tmp97
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13090
	movq	56(%rax), %rax	# _23->xgv_gp, D.13091
	movq	56(%rax), %rax	# _24->gp_cv, D.13092
	movq	(%rax), %rax	# _25->sv_any, D.13093
	movq	72(%rax), %rax	# _26->xcv_root, D.13097
	testq	%rax, %rax	# D.13097
	je	.L21	#,
	.loc 1 90 0
	movq	-40(%rbp), %rax	# gv, tmp98
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13090
	movq	56(%rax), %rax	# _28->xgv_gp, D.13091
	movq	56(%rax), %rax	# _29->gp_cv, D.13092
	movq	(%rax), %rax	# _30->sv_any, D.13093
	movq	72(%rax), %rax	# _31->xcv_root, D.13097
	movq	%rax, %rdi	# D.13097,
	call	Perl_op_dump	#
	jmp	.L18	#
.L21:
	.loc 1 92 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC4, %edx	#,
	movq	%rax, %rsi	# D.13089,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L18:
	.loc 1 93 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_dump_sub, .-Perl_dump_sub
	.section	.rodata
.LC5:
	.string	"\nFORMAT %s = "
	.text
	.globl	Perl_dump_form
	.type	Perl_dump_form, @function
Perl_dump_form:
.LFB7:
	.loc 1 97 0
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
	.loc 1 98 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp73, sv
	.loc 1 100 0
	movq	-40(%rbp), %rsi	# gv, tmp74
	movq	-24(%rbp), %rax	# sv, tmp75
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp75,
	call	Perl_gv_fullname4	#
	.loc 1 101 0
	movq	-24(%rbp), %rax	# sv, tmp76
	movq	(%rax), %rax	# sv_1->sv_any, D.13101
	movq	(%rax), %rbx	# MEM[(struct XPV *)_3].xpv_pv, D.13102
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rcx	# D.13102,
	movl	$.LC5, %edx	#,
	movq	%rax, %rsi	# D.13103,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 102 0
	movq	-40(%rbp), %rax	# gv, tmp77
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13104
	movq	56(%rax), %rax	# _6->xgv_gp, D.13105
	movq	24(%rax), %rax	# _7->gp_form, D.13106
	movq	(%rax), %rax	# _8->sv_any, D.13107
	movq	72(%rax), %rax	# _9->xcv_root, D.13108
	testq	%rax, %rax	# D.13108
	je	.L23	#,
	.loc 1 103 0
	movq	-40(%rbp), %rax	# gv, tmp78
	movq	(%rax), %rax	# gv_2(D)->sv_any, D.13104
	movq	56(%rax), %rax	# _11->xgv_gp, D.13105
	movq	24(%rax), %rax	# _12->gp_form, D.13106
	movq	(%rax), %rax	# _13->sv_any, D.13107
	movq	72(%rax), %rax	# _14->xcv_root, D.13108
	movq	%rax, %rdi	# D.13108,
	call	Perl_op_dump	#
	jmp	.L22	#
.L23:
	.loc 1 105 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC4, %edx	#,
	movq	%rax, %rsi	# D.13103,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L22:
	.loc 1 106 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_dump_form, .-Perl_dump_form
	.globl	Perl_dump_eval
	.type	Perl_dump_eval, @function
Perl_dump_eval:
.LFB8:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 111 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.5
	movq	%rax, %rdi	# PL_eval_root.5,
	call	Perl_op_dump	#
	.loc 1 112 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_dump_eval, .-Perl_dump_eval
	.section	.rodata
.LC6:
	.string	"\""
.LC7:
	.string	"\\t"
.LC8:
	.string	"\\n"
.LC9:
	.string	"\\r"
.LC10:
	.string	"\\f"
.LC11:
	.string	"\\\""
.LC12:
	.string	"\\\\"
.LC13:
	.string	"\\%03o"
.LC14:
	.string	"\\%o"
.LC15:
	.string	"..."
.LC16:
	.string	"\\0"
	.text
	.globl	Perl_pv_display
	.type	Perl_pv_display, @function
Perl_pv_display:
.LFB9:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# dsv, dsv
	movq	%rsi, -32(%rbp)	# pv, pv
	movq	%rdx, -40(%rbp)	# cur, cur
	movq	%rcx, -48(%rbp)	# len, len
	movq	%r8, -56(%rbp)	# pvlim, pvlim
	.loc 1 117 0
	movl	$0, -8(%rbp)	#, truncated
	.loc 1 118 0
	movq	-48(%rbp), %rax	# len, tmp83
	cmpq	-40(%rbp), %rax	# cur, tmp83
	jbe	.L27	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cur, tmp84
	movq	-32(%rbp), %rdx	# pv, tmp85
	addq	%rdx, %rax	# tmp85, D.13110
	movzbl	(%rax), %eax	# *_9, D.13111
	testb	%al, %al	# D.13111
	jne	.L27	#,
	.loc 1 118 0 discriminator 3
	movl	$1, %eax	#, iftmp.6
	jmp	.L28	#
.L27:
	.loc 1 118 0 discriminator 2
	movl	$0, %eax	#, iftmp.6
.L28:
	.loc 1 118 0 discriminator 4
	movl	%eax, -4(%rbp)	# iftmp.6, nul_terminated
	.loc 1 120 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# dsv, tmp86
	movl	$1, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_setpvn	#
	.loc 1 121 0 discriminator 4
	jmp	.L29	#
.L45:
	.loc 1 122 0
	cmpq	$0, -56(%rbp)	#, pvlim
	je	.L30	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# dsv, tmp87
	movq	(%rax), %rax	# dsv_14(D)->sv_any, D.13112
	movq	8(%rax), %rax	# MEM[(struct XPV *)_18].xpv_cur, D.13113
	cmpq	-56(%rbp), %rax	# pvlim, D.13113
	jb	.L30	#,
	.loc 1 123 0 is_stmt 1
	addl	$1, -8(%rbp)	#, truncated
	.loc 1 124 0
	jmp	.L31	#
.L30:
	.loc 1 126 0
	movq	-32(%rbp), %rax	# pv, tmp88
	movzbl	(%rax), %eax	# *pv_1, D.13111
	movsbl	%al, %eax	# D.13111, D.13114
	cmpl	$12, %eax	#, D.13114
	je	.L33	#,
	cmpl	$12, %eax	#, D.13114
	jg	.L34	#,
	cmpl	$9, %eax	#, D.13114
	je	.L35	#,
	cmpl	$10, %eax	#, D.13114
	je	.L36	#,
	jmp	.L32	#
.L34:
	cmpl	$34, %eax	#, D.13114
	je	.L37	#,
	cmpl	$92, %eax	#, D.13114
	je	.L38	#,
	cmpl	$13, %eax	#, D.13114
	je	.L39	#,
	jmp	.L32	#
.L35:
	.loc 1 127 0
	movq	-24(%rbp), %rax	# dsv, tmp89
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L36:
	.loc 1 128 0
	movq	-24(%rbp), %rax	# dsv, tmp90
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L39:
	.loc 1 129 0
	movq	-24(%rbp), %rax	# dsv, tmp91
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L33:
	.loc 1 130 0
	movq	-24(%rbp), %rax	# dsv, tmp92
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L37:
	.loc 1 131 0
	movq	-24(%rbp), %rax	# dsv, tmp93
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L38:
	.loc 1 132 0
	movq	-24(%rbp), %rax	# dsv, tmp94
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L32:
	.loc 1 134 0
	movq	-32(%rbp), %rax	# pv, tmp95
	movzbl	(%rax), %eax	# *pv_1, D.13111
	cmpb	$32, %al	#, D.13111
	jle	.L41	#,
	.loc 1 134 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pv, tmp96
	movzbl	(%rax), %eax	# *pv_1, D.13111
	cmpb	$127, %al	#, D.13111
	jne	.L42	#,
.L41:
	.loc 1 134 0 discriminator 2
	movq	-32(%rbp), %rax	# pv, tmp97
	movzbl	(%rax), %eax	# *pv_1, D.13111
	cmpb	$32, %al	#, D.13111
	jne	.L43	#,
.L42:
	.loc 1 135 0 is_stmt 1
	movq	-32(%rbp), %rsi	# pv, tmp98
	movq	-24(%rbp), %rax	# dsv, tmp99
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp99,
	call	Perl_sv_catpvn_flags	#
	jmp	.L40	#
.L43:
	.loc 1 136 0
	cmpq	$0, -40(%rbp)	#, cur
	je	.L44	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pv, tmp100
	addq	$1, %rax	#, D.13110
	movzbl	(%rax), %eax	# *_26, D.13111
	cmpb	$47, %al	#, D.13111
	jle	.L44	#,
	movq	-32(%rbp), %rax	# pv, tmp101
	addq	$1, %rax	#, D.13110
	movzbl	(%rax), %eax	# *_28, D.13111
	cmpb	$57, %al	#, D.13111
	jg	.L44	#,
	.loc 1 137 0 is_stmt 1
	movq	-32(%rbp), %rax	# pv, tmp102
	movzbl	(%rax), %eax	# *pv_1, D.13111
	movzbl	%al, %edx	# D.13115, D.13114
	movq	-24(%rbp), %rax	# dsv, tmp103
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L40	#
.L44:
	.loc 1 139 0
	movq	-32(%rbp), %rax	# pv, tmp104
	movzbl	(%rax), %eax	# *pv_1, D.13111
	movzbl	%al, %edx	# D.13115, D.13114
	movq	-24(%rbp), %rax	# dsv, tmp105
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L40:
	.loc 1 121 0
	addq	$1, -32(%rbp)	#, pv
.L29:
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cur, cur.7
	leaq	-1(%rax), %rdx	#, tmp106
	movq	%rdx, -40(%rbp)	# tmp106, cur
	testq	%rax, %rax	# cur.7
	jne	.L45	#,
.L31:
	.loc 1 142 0 is_stmt 1
	movq	-24(%rbp), %rax	# dsv, tmp107
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	Perl_sv_catpvn_flags	#
	.loc 1 143 0
	cmpl	$0, -8(%rbp)	#, truncated
	je	.L46	#,
	.loc 1 144 0
	movq	-24(%rbp), %rax	# dsv, tmp108
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_catpvn_flags	#
.L46:
	.loc 1 145 0
	cmpl	$0, -4(%rbp)	#, nul_terminated
	je	.L47	#,
	.loc 1 146 0
	movq	-24(%rbp), %rax	# dsv, tmp109
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_catpvn_flags	#
.L47:
	.loc 1 148 0
	movq	-24(%rbp), %rax	# dsv, tmp110
	movq	(%rax), %rax	# dsv_14(D)->sv_any, D.13112
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, D.13110
	.loc 1 149 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_pv_display, .-Perl_pv_display
	.section	.rodata
.LC17:
	.string	"VOID"
.LC18:
	.string	"WILD"
.LC19:
	.string	"SV_UNDEF"
.LC20:
	.string	"SV_NO"
.LC22:
	.string	"SV_YES"
.LC24:
	.string	"SV_PLACEHOLDER"
.LC25:
	.string	":"
.LC26:
	.string	"("
.LC27:
	.string	"T"
.LC28:
	.string	"<%lu%s>"
.LC29:
	.string	"<T>"
.LC30:
	.string	"\\"
.LC31:
	.string	"FREED"
.LC32:
	.string	"UNDEF"
.LC33:
	.string	"IV"
.LC34:
	.string	"NV"
.LC35:
	.string	"RV"
.LC36:
	.string	"PV"
.LC37:
	.string	"PVIV"
.LC38:
	.string	"PVNV"
.LC39:
	.string	"PVMG"
.LC40:
	.string	"PVLV"
.LC41:
	.string	"AV"
.LC42:
	.string	"HV"
.LC43:
	.string	"CV(%s)"
.LC44:
	.string	"CV()"
.LC45:
	.string	"GV"
.LC46:
	.string	"BM"
.LC47:
	.string	"FM"
.LC48:
	.string	"IO"
.LC49:
	.string	"(null)"
.LC50:
	.string	"[%s]"
.LC51:
	.string	"%s)"
.LC52:
	.string	" [UTF8 \"%s\"]"
.LC53:
	.string	"(%g)"
.LC54:
	.string	"(%lu)"
.LC55:
	.string	"(%ld)"
.LC56:
	.string	"()"
.LC57:
	.string	")"
	.text
	.globl	Perl_sv_peek
	.type	Perl_sv_peek, @function
Perl_sv_peek:
.LFB10:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	.loc 1 154 0
	call	Perl_sv_newmortal	#
	movq	%rax, -16(%rbp)	# tmp177, t
	.loc 1 156 0
	movl	$0, -36(%rbp)	#, unref
	.loc 1 158 0
	movq	-16(%rbp), %rax	# t, tmp178
	movl	$0, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp178,
	call	Perl_sv_setpvn	#
.L50:
	.loc 1 160 0
	cmpq	$0, -56(%rbp)	#, sv
	jne	.L51	#,
	.loc 1 161 0
	movq	-16(%rbp), %rax	# t, tmp179
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	Perl_sv_catpv	#
	.loc 1 162 0
	jmp	.L52	#
.L51:
	.loc 1 164 0
	cmpq	$1431655765, -56(%rbp)	#, sv
	je	.L53	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp180
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	movzbl	%al, %eax	# D.13128, D.13128
	cmpl	$85, %eax	#, D.13128
	jne	.L54	#,
.L53:
	.loc 1 165 0 is_stmt 1
	movq	-16(%rbp), %rax	# t, tmp181
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp181,
	call	Perl_sv_catpv	#
	.loc 1 166 0
	jmp	.L52	#
.L54:
	.loc 1 168 0
	cmpq	$PL_sv_undef, -56(%rbp)	#, sv
	je	.L55	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_no, -56(%rbp)	#, sv
	je	.L55	#,
	cmpq	$PL_sv_yes, -56(%rbp)	#, sv
	je	.L55	#,
	cmpq	$PL_sv_placeholder, -56(%rbp)	#, sv
	jne	.L56	#,
.L55:
	.loc 1 169 0 is_stmt 1
	cmpq	$PL_sv_undef, -56(%rbp)	#, sv
	jne	.L57	#,
	.loc 1 170 0
	movq	-16(%rbp), %rax	# t, tmp182
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	Perl_sv_catpv	#
	.loc 1 171 0
	movq	-56(%rbp), %rax	# sv, tmp183
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$120582144, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 173 0
	movq	-56(%rbp), %rax	# sv, tmp184
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$8388608, %eax	#, D.13128
	.loc 1 172 0
	testl	%eax, %eax	# D.13128
	je	.L58	#,
	.loc 1 174 0
	jmp	.L52	#
.L57:
	.loc 1 176 0
	cmpq	$PL_sv_no, -56(%rbp)	#, sv
	jne	.L59	#,
	.loc 1 177 0
	movq	-16(%rbp), %rax	# t, tmp185
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	Perl_sv_catpv	#
	.loc 1 178 0
	movq	-56(%rbp), %rax	# sv, tmp186
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$2682880, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 180 0
	movq	-56(%rbp), %rax	# sv, tmp187
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	notl	%eax	# D.13128
	andl	$109445120, %eax	#, D.13128
	.loc 1 179 0
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 182 0
	movq	-56(%rbp), %rax	# sv, tmp188
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	8(%rax), %rax	# MEM[(struct XPV *)_42].xpv_cur, D.13129
	.loc 1 181 0
	testq	%rax, %rax	# D.13129
	jne	.L58	#,
	.loc 1 183 0
	movq	-56(%rbp), %rax	# sv, tmp189
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_44].xnv_nv, D.13133
	.loc 1 182 0
	xorpd	%xmm1, %xmm1	# tmp190
	ucomisd	%xmm1, %xmm0	# tmp190, D.13133
	jp	.L58	#,
	xorpd	%xmm1, %xmm1	# tmp191
	ucomisd	%xmm1, %xmm0	# tmp191, D.13133
	jne	.L58	#,
	.loc 1 184 0
	jmp	.L52	#
.L59:
	.loc 1 186 0
	cmpq	$PL_sv_yes, -56(%rbp)	#, sv
	jne	.L61	#,
	.loc 1 187 0
	movq	-16(%rbp), %rax	# t, tmp192
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	Perl_sv_catpv	#
	.loc 1 188 0
	movq	-56(%rbp), %rax	# sv, tmp193
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$2682880, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 190 0
	movq	-56(%rbp), %rax	# sv, tmp194
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	notl	%eax	# D.13128
	andl	$109445120, %eax	#, D.13128
	.loc 1 189 0
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 192 0
	movq	-56(%rbp), %rax	# sv, tmp195
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	8(%rax), %rax	# MEM[(struct XPV *)_51].xpv_cur, D.13129
	.loc 1 191 0
	cmpq	$1, %rax	#, D.13129
	jne	.L58	#,
	.loc 1 193 0
	movq	-56(%rbp), %rax	# sv, tmp196
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rax	# MEM[(struct XPV *)_53].xpv_pv, D.13134
	.loc 1 192 0
	testq	%rax, %rax	# D.13134
	je	.L58	#,
	.loc 1 193 0
	movq	-56(%rbp), %rax	# sv, tmp197
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rax	# MEM[(struct XPV *)_55].xpv_pv, D.13134
	movzbl	(%rax), %eax	# *_56, D.13135
	cmpb	$49, %al	#, D.13135
	jne	.L58	#,
	.loc 1 194 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp198
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_58].xnv_nv, D.13133
	.loc 1 193 0 discriminator 1
	movsd	.LC23(%rip), %xmm1	#, tmp199
	ucomisd	%xmm1, %xmm0	# tmp199, D.13133
	jp	.L58	#,
	movsd	.LC23(%rip), %xmm1	#, tmp200
	ucomisd	%xmm1, %xmm0	# tmp200, D.13133
	jne	.L58	#,
	.loc 1 195 0
	jmp	.L52	#
.L61:
	.loc 1 198 0
	movq	-16(%rbp), %rax	# t, tmp201
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp201,
	call	Perl_sv_catpv	#
	.loc 1 199 0
	movq	-56(%rbp), %rax	# sv, tmp202
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$120582144, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	jne	.L58	#,
	.loc 1 201 0
	movq	-56(%rbp), %rax	# sv, tmp203
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$8388608, %eax	#, D.13128
	.loc 1 200 0
	testl	%eax, %eax	# D.13128
	je	.L58	#,
	.loc 1 202 0
	jmp	.L52	#
.L58:
	.loc 1 204 0
	movq	-16(%rbp), %rax	# t, tmp204
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	Perl_sv_catpv	#
	jmp	.L63	#
.L56:
	.loc 1 206 0
	movq	-56(%rbp), %rax	# sv, tmp205
	movl	8(%rax), %eax	# sv_1->sv_refcnt, D.13128
	testl	%eax, %eax	# D.13128
	jne	.L64	#,
	.loc 1 207 0
	movq	-16(%rbp), %rax	# t, tmp206
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	Perl_sv_catpv	#
	.loc 1 208 0
	addl	$1, -36(%rbp)	#, unref
	jmp	.L63	#
.L64:
	.loc 1 210 0
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.8
	andl	$262144, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L63	#,
.LBB3:
	.loc 1 211 0
	movl	$0, -32(%rbp)	#, is_tmp
	.loc 1 214 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, tmp207
	movl	%eax, -28(%rbp)	# tmp207, ix
	jmp	.L65	#
.L68:
	.loc 1 215 0
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.9
	movl	-28(%rbp), %edx	# ix, tmp208
	movslq	%edx, %rdx	# tmp208, D.13129
	salq	$3, %rdx	#, D.13129
	addq	%rdx, %rax	# D.13129, D.13130
	movq	(%rax), %rax	# *_24, D.13131
	cmpq	-56(%rbp), %rax	# sv, D.13131
	jne	.L66	#,
	.loc 1 216 0
	movl	$1, -32(%rbp)	#, is_tmp
	.loc 1 217 0
	jmp	.L67	#
.L66:
	.loc 1 214 0
	subl	$1, -28(%rbp)	#, ix
.L65:
	.loc 1 214 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, ix
	jns	.L68	#,
.L67:
	.loc 1 220 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp209
	movl	8(%rax), %eax	# sv_1->sv_refcnt, D.13128
	cmpl	$1, %eax	#, D.13128
	jbe	.L69	#,
	.loc 1 221 0
	cmpl	$0, -32(%rbp)	#, is_tmp
	je	.L70	#,
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	$.LC27, %eax	#, iftmp.10
	jmp	.L71	#
.L70:
	.loc 1 221 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.10
.L71:
	.loc 1 221 0 discriminator 1
	movq	-56(%rbp), %rdx	# sv, tmp210
	movl	8(%rdx), %edx	# sv_1->sv_refcnt, D.13128
	movl	%edx, %edx	# D.13128, D.13129
	movq	-16(%rbp), %rdi	# t, tmp211
	movq	%rax, %rcx	# iftmp.10,
	movl	$.LC28, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L63	#
.L69:
	.loc 1 223 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, is_tmp
	je	.L63	#,
	.loc 1 224 0
	movq	-16(%rbp), %rax	# t, tmp212
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	Perl_sv_catpv	#
.L63:
.LBE3:
	.loc 1 227 0
	movq	-56(%rbp), %rax	# sv, tmp213
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$524288, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L72	#,
	.loc 1 228 0
	movq	-16(%rbp), %rax	# t, tmp214
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	Perl_sv_catpv	#
	.loc 1 229 0
	movq	-16(%rbp), %rax	# t, tmp215
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_66].xpv_cur, D.13129
	movl	-36(%rbp), %eax	# unref, tmp216
	cltq
	addq	%rdx, %rax	# D.13129, D.13129
	cmpq	$10, %rax	#, D.13129
	jbe	.L73	#,
	.loc 1 230 0
	movq	-16(%rbp), %rax	# t, tmp217
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movl	-36(%rbp), %edx	# unref, tmp218
	addl	$3, %edx	#, D.13136
	movslq	%edx, %rdx	# D.13136, D.13129
	movq	%rdx, 8(%rax)	# D.13129, MEM[(struct XPV *)_70].xpv_cur
	.loc 1 231 0
	movq	-16(%rbp), %rax	# t, tmp219
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movq	(%rax), %rdx	# MEM[(struct XPV *)_73].xpv_pv, D.13134
	movq	-16(%rbp), %rax	# t, tmp220
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movq	8(%rax), %rax	# MEM[(struct XPV *)_75].xpv_cur, D.13129
	addq	%rdx, %rax	# D.13134, D.13134
	movb	$0, (%rax)	#, *_77
	.loc 1 232 0
	movq	-16(%rbp), %rax	# t, tmp221
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	Perl_sv_catpv	#
	.loc 1 233 0
	jmp	.L52	#
.L73:
	.loc 1 235 0
	movq	-56(%rbp), %rax	# sv, tmp222
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rax	# MEM[(struct XRV *)_78].xrv_rv, tmp223
	movq	%rax, -56(%rbp)	# tmp223, sv
	.loc 1 236 0
	jmp	.L50	#
.L72:
	.loc 1 238 0
	movq	-56(%rbp), %rax	# sv, tmp224
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	movzbl	%al, %eax	# D.13128, D.13128
	cmpl	$15, %eax	#, D.13128
	ja	.L74	#,
	movl	%eax, %eax	# D.13128, tmp225
	movq	.L76(,%rax,8), %rax	#, tmp226
	jmp	*%rax	# tmp226
	.section	.rodata
	.align 8
	.align 4
.L76:
	.quad	.L75
	.quad	.L77
	.quad	.L78
	.quad	.L79
	.quad	.L80
	.quad	.L81
	.quad	.L82
	.quad	.L83
	.quad	.L84
	.quad	.L85
	.quad	.L86
	.quad	.L87
	.quad	.L88
	.quad	.L89
	.quad	.L90
	.quad	.L91
	.text
.L74:
	.loc 1 240 0
	movq	-16(%rbp), %rax	# t, tmp227
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_catpv	#
	.loc 1 241 0
	jmp	.L52	#
.L75:
	.loc 1 244 0
	movq	-16(%rbp), %rax	# t, tmp228
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	Perl_sv_catpv	#
	.loc 1 245 0
	jmp	.L52	#
.L77:
	.loc 1 247 0
	movq	-16(%rbp), %rax	# t, tmp229
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	Perl_sv_catpv	#
	.loc 1 248 0
	jmp	.L92	#
.L78:
	.loc 1 250 0
	movq	-16(%rbp), %rax	# t, tmp230
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	Perl_sv_catpv	#
	.loc 1 251 0
	jmp	.L92	#
.L79:
	.loc 1 253 0
	movq	-16(%rbp), %rax	# t, tmp231
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	Perl_sv_catpv	#
	.loc 1 254 0
	jmp	.L92	#
.L80:
	.loc 1 256 0
	movq	-16(%rbp), %rax	# t, tmp232
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	Perl_sv_catpv	#
	.loc 1 257 0
	jmp	.L92	#
.L81:
	.loc 1 259 0
	movq	-16(%rbp), %rax	# t, tmp233
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	Perl_sv_catpv	#
	.loc 1 260 0
	jmp	.L92	#
.L82:
	.loc 1 262 0
	movq	-16(%rbp), %rax	# t, tmp234
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	Perl_sv_catpv	#
	.loc 1 263 0
	jmp	.L92	#
.L83:
	.loc 1 265 0
	movq	-16(%rbp), %rax	# t, tmp235
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	Perl_sv_catpv	#
	.loc 1 266 0
	jmp	.L92	#
.L85:
	.loc 1 268 0
	movq	-16(%rbp), %rax	# t, tmp236
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	Perl_sv_catpv	#
	.loc 1 269 0
	jmp	.L92	#
.L86:
	.loc 1 271 0
	movq	-16(%rbp), %rax	# t, tmp237
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	Perl_sv_catpv	#
	.loc 1 272 0
	jmp	.L92	#
.L87:
	.loc 1 274 0
	movq	-16(%rbp), %rax	# t, tmp238
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	Perl_sv_catpv	#
	.loc 1 275 0
	jmp	.L92	#
.L88:
	.loc 1 277 0
	movq	-56(%rbp), %rax	# sv, tmp239
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_82].xcv_gv, D.13137
	testq	%rax, %rax	# D.13137
	je	.L93	#,
	.loc 1 278 0
	movq	-56(%rbp), %rax	# sv, tmp240
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	96(%rax), %rax	# MEM[(struct XPVCV *)_84].xcv_gv, D.13137
	movq	(%rax), %rax	# _85->sv_any, D.13138
	movq	64(%rax), %rdx	# _86->xgv_name, D.13134
	movq	-16(%rbp), %rax	# t, tmp241
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp241,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 281 0
	jmp	.L52	#
.L93:
	.loc 1 280 0
	movq	-16(%rbp), %rax	# t, tmp242
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	Perl_sv_catpv	#
	.loc 1 281 0
	jmp	.L52	#
.L89:
	.loc 1 283 0
	movq	-16(%rbp), %rax	# t, tmp243
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	Perl_sv_catpv	#
	.loc 1 284 0
	jmp	.L92	#
.L84:
	.loc 1 286 0
	movq	-16(%rbp), %rax	# t, tmp244
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp244,
	call	Perl_sv_catpv	#
	.loc 1 287 0
	jmp	.L92	#
.L90:
	.loc 1 289 0
	movq	-16(%rbp), %rax	# t, tmp245
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	Perl_sv_catpv	#
	.loc 1 290 0
	jmp	.L92	#
.L91:
	.loc 1 292 0
	movq	-16(%rbp), %rax	# t, tmp246
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	Perl_sv_catpv	#
	.loc 1 293 0
	nop
.L92:
	.loc 1 296 0
	movq	-56(%rbp), %rax	# sv, tmp247
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$67108864, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L95	#,
	.loc 1 297 0
	movq	-56(%rbp), %rax	# sv, tmp248
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rax	# MEM[(struct XPV *)_90].xpv_pv, D.13134
	testq	%rax, %rax	# D.13134
	jne	.L96	#,
	.loc 1 298 0
	movq	-16(%rbp), %rax	# t, tmp249
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp249,
	call	Perl_sv_catpv	#
	jmp	.L52	#
.L96:
.LBB4:
	.loc 1 300 0
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -8(%rbp)	# tmp250, tmp
	.loc 1 301 0
	movq	-16(%rbp), %rax	# t, tmp251
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp251,
	call	Perl_sv_catpv	#
	.loc 1 302 0
	movq	-56(%rbp), %rax	# sv, tmp252
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$2097152, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L98	#,
	.loc 1 303 0
	movq	-56(%rbp), %rax	# sv, tmp253
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_95].xiv_iv, D.13139
	movq	%rax, %rdx	# D.13139, D.13129
	movq	-56(%rbp), %rax	# sv, tmp254
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rcx	# MEM[(struct XPV *)_98].xpv_pv, D.13134
	movq	-56(%rbp), %rax	# sv, tmp255
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_100].xiv_iv, D.13139
	negq	%rax	# D.13140
	leaq	(%rcx,%rax), %rsi	#, D.13134
	movq	-8(%rbp), %rax	# tmp, tmp256
	movl	$127, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp256,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13134
	movq	-16(%rbp), %rax	# t, tmp257
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp257,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L98:
	.loc 1 304 0
	movq	-56(%rbp), %rax	# sv, tmp258
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	16(%rax), %rcx	# MEM[(struct XPV *)_106].xpv_len, D.13129
	movq	-56(%rbp), %rax	# sv, tmp259
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_108].xpv_cur, D.13129
	movq	-56(%rbp), %rax	# sv, tmp260
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	(%rax), %rsi	# MEM[(struct XPV *)_110].xpv_pv, D.13134
	movq	-8(%rbp), %rax	# tmp, tmp261
	movl	$127, %r8d	#,
	movq	%rax, %rdi	# tmp261,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13134
	movq	-16(%rbp), %rax	# t, tmp262
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp262,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 305 0
	movq	-56(%rbp), %rax	# sv, tmp263
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$536870912, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L99	#,
	.loc 1 307 0
	movq	-56(%rbp), %rax	# sv, tmp264
	movq	%rax, %rdi	# tmp264,
	call	Perl_sv_len_utf8	#
	.loc 1 306 0
	leaq	0(,%rax,8), %rdx	#, D.13129
	movq	-56(%rbp), %rsi	# sv, tmp265
	movq	-8(%rbp), %rax	# tmp, tmp266
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp266,
	call	Perl_sv_uni_display	#
	movq	%rax, %rdx	#, D.13134
	movq	-16(%rbp), %rax	# t, tmp267
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp267,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L99:
	.loc 1 309 0
	movq	-8(%rbp), %rax	# tmp, tmp268
	movq	%rax, %rdi	# tmp268,
	call	Perl_sv_free	#
	jmp	.L52	#
.L95:
.LBE4:
	.loc 1 312 0
	movq	-56(%rbp), %rax	# sv, tmp269
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$33554432, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L100	#,
	.loc 1 314 0
	movq	-56(%rbp), %rax	# sv, tmp270
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_120].xnv_nv, D.13133
	movq	-16(%rbp), %rdx	# t, tmp271
	movq	%rax, -64(%rbp)	# D.13133, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	movl	$.LC53, %esi	#,
	movq	%rdx, %rdi	# tmp271,
	movl	$1, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L52	#
.L100:
	.loc 1 317 0
	movq	-56(%rbp), %rax	# sv, tmp272
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	andl	$16777216, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L101	#,
	.loc 1 318 0
	movq	-56(%rbp), %rax	# sv, tmp273
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13128
	testl	%eax, %eax	# D.13141
	jns	.L102	#,
	.loc 1 319 0
	movq	-56(%rbp), %rax	# sv, tmp274
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	24(%rax), %rdx	# MEM[(struct XPVUV *)_126].xuv_uv, D.13129
	movq	-16(%rbp), %rax	# t, tmp275
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp275,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L52	#
.L102:
	.loc 1 321 0
	movq	-56(%rbp), %rax	# sv, tmp276
	movq	(%rax), %rax	# sv_1->sv_any, D.13132
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_128].xiv_iv, D.13139
	movq	-16(%rbp), %rax	# t, tmp277
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp277,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L52	#
.L101:
	.loc 1 324 0
	movq	-16(%rbp), %rax	# t, tmp278
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp278,
	call	Perl_sv_catpv	#
.L52:
	.loc 1 327 0
	cmpl	$0, -36(%rbp)	#, unref
	je	.L104	#,
	.loc 1 328 0
	jmp	.L105	#
.L106:
	.loc 1 329 0
	movq	-16(%rbp), %rax	# t, tmp279
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	Perl_sv_catpv	#
.L105:
	.loc 1 328 0 discriminator 1
	movl	-36(%rbp), %eax	# unref, unref.11
	leal	-1(%rax), %edx	#, tmp280
	movl	%edx, -36(%rbp)	# tmp280, unref
	testl	%eax, %eax	# unref.11
	jne	.L106	#,
.L104:
	.loc 1 331 0
	movq	-16(%rbp), %rax	# t, tmp281
	movl	12(%rax), %eax	# t_10->sv_flags, D.13128
	andl	$262144, %eax	#, D.13128
	testl	%eax, %eax	# D.13128
	je	.L107	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp282
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movq	8(%rax), %rax	# MEM[(struct XPV *)_134].xpv_cur, n_a.13
	movq	%rax, -24(%rbp)	# n_a.13, n_a
	movq	-16(%rbp), %rax	# t, tmp283
	movq	(%rax), %rax	# t_10->sv_any, D.13132
	movq	(%rax), %rax	# MEM[(struct XPV *)_136].xpv_pv, iftmp.12
	jmp	.L108	#
.L107:
	.loc 1 331 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp284
	movq	-16(%rbp), %rax	# t, tmp285
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp284,
	movq	%rax, %rdi	# tmp285,
	call	Perl_sv_2pv_flags	#
.L108:
	.loc 1 332 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_sv_peek, .-Perl_sv_peek
	.section	.rodata
.LC58:
	.string	"{}\n"
.LC59:
	.string	"{\n"
.LC60:
	.string	" (RUNTIME)"
.LC61:
	.string	"PMf_PRE %c%s%c%s\n"
.LC62:
	.string	"PMf_PRE (RUNTIME)\n"
.LC63:
	.string	"PMf_REPL = "
.LC64:
	.string	",USED"
.LC65:
	.string	",TAINTED"
.LC66:
	.string	",ONCE"
.LC67:
	.string	",SCANFIRST"
.LC68:
	.string	",ALL"
.LC69:
	.string	",SKIPWHITE"
.LC70:
	.string	",CONST"
.LC71:
	.string	",KEEP"
.LC72:
	.string	",GLOBAL"
.LC73:
	.string	",CONTINUE"
.LC74:
	.string	",RETAINT"
.LC75:
	.string	",EVAL"
.LC76:
	.string	"PMFLAGS = (%s)\n"
.LC77:
	.string	"}\n"
	.text
	.globl	Perl_do_pmop_dump
	.type	Perl_do_pmop_dump, @function
Perl_do_pmop_dump:
.LFB11:
	.loc 1 336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# level, level
	movq	%rsi, -32(%rbp)	# file, file
	movq	%rdx, -40(%rbp)	# pm, pm
	.loc 1 339 0
	cmpq	$0, -40(%rbp)	#, pm
	jne	.L113	#,
	.loc 1 340 0
	movq	-32(%rbp), %rcx	# file, tmp120
	movl	-20(%rbp), %eax	# level, tmp121
	movl	$.LC58, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movl	%eax, %edi	# tmp121,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 341 0
	jmp	.L112	#
.L113:
	.loc 1 343 0
	movq	-32(%rbp), %rcx	# file, tmp122
	movl	-20(%rbp), %eax	# level, tmp123
	movl	$.LC59, %edx	#,
	movq	%rcx, %rsi	# tmp122,
	movl	%eax, %edi	# tmp123,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 344 0
	addl	$1, -20(%rbp)	#, level
	.loc 1 345 0
	movq	-40(%rbp), %rax	# pm, tmp124
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$2, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L115	#,
	.loc 1 346 0
	movb	$63, -9(%rbp)	#, ch
	jmp	.L116	#
.L115:
	.loc 1 348 0
	movb	$47, -9(%rbp)	#, ch
.L116:
	.loc 1 349 0
	movq	-40(%rbp), %rax	# pm, tmp125
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	testq	%rax, %rax	# D.13183
	je	.L117	#,
	.loc 1 352 0
	movq	-40(%rbp), %rax	# pm, tmp126
	movzbl	37(%rax), %eax	# pm_4(D)->op_private, D.13184
	movzbl	%al, %eax	# D.13184, D.13185
	andl	$64, %eax	#, D.13185
	.loc 1 350 0
	testl	%eax, %eax	# D.13185
	je	.L118	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movl	$.LC60, %eax	#, iftmp.14
	jmp	.L119	#
.L118:
	.loc 1 350 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.14
.L119:
	.loc 1 350 0 discriminator 1
	movsbl	-9(%rbp), %r8d	# ch, D.13185
	.loc 1 351 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rdx	# pm, tmp127
	movq	80(%rdx), %rdx	# pm_4(D)->op_pmregexp, D.13183
	.loc 1 350 0 discriminator 1
	movq	32(%rdx), %rcx	# _19->precomp, D.13186
	movsbl	-9(%rbp), %edx	# ch, D.13185
	movq	-32(%rbp), %rsi	# file, tmp128
	movl	-20(%rbp), %edi	# level, tmp129
	movq	%rax, (%rsp)	# iftmp.14,
	movl	%r8d, %r9d	# D.13185,
	movq	%rcx, %r8	# D.13186,
	movl	%edx, %ecx	# D.13185,
	movl	$.LC61, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L120	#
.L117:
	.loc 1 354 0
	movq	-32(%rbp), %rcx	# file, tmp130
	movl	-20(%rbp), %eax	# level, tmp131
	movl	$.LC62, %edx	#,
	movq	%rcx, %rsi	# tmp130,
	movl	%eax, %edi	# tmp131,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L120:
	.loc 1 355 0
	movq	-40(%rbp), %rax	# pm, tmp132
	movzwl	32(%rax), %eax	# pm_4(D)->op_type, D.13187
	cmpw	$13, %ax	#, D.13187
	je	.L121	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pm, tmp133
	movq	56(%rax), %rax	# pm_4(D)->op_pmreplroot, D.13188
	testq	%rax, %rax	# D.13188
	je	.L121	#,
	.loc 1 356 0 is_stmt 1
	movq	-32(%rbp), %rcx	# file, tmp134
	movl	-20(%rbp), %eax	# level, tmp135
	movl	$.LC63, %edx	#,
	movq	%rcx, %rsi	# tmp134,
	movl	%eax, %edi	# tmp135,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 357 0
	movq	-40(%rbp), %rax	# pm, tmp136
	movq	56(%rax), %rax	# pm_4(D)->op_pmreplroot, D.13188
	movq	%rax, %rdi	# D.13188,
	call	Perl_op_dump	#
.L121:
	.loc 1 359 0
	movq	-40(%rbp), %rax	# pm, tmp137
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	testl	%eax, %eax	# D.13182
	jne	.L122	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pm, tmp138
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	testq	%rax, %rax	# D.13183
	je	.L123	#,
	movq	-40(%rbp), %rax	# pm, tmp139
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	movq	24(%rax), %rax	# _27->substrs, D.13189
	movq	56(%rax), %rax	# _28->data[2].substr, D.13190
	testq	%rax, %rax	# D.13190
	je	.L123	#,
.L122:
.LBB5:
	.loc 1 360 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -8(%rbp)	# tmp140, tmpsv
	.loc 1 361 0
	movq	-40(%rbp), %rax	# pm, tmp141
	movzbl	96(%rax), %eax	# pm_4(D)->op_pmdynflags, D.13184
	movzbl	%al, %eax	# D.13184, D.13185
	andl	$1, %eax	#, D.13185
	testl	%eax, %eax	# D.13185
	je	.L124	#,
	.loc 1 362 0
	movq	-8(%rbp), %rax	# tmpsv, tmp142
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	Perl_sv_catpv	#
.L124:
	.loc 1 363 0
	movq	-40(%rbp), %rax	# pm, tmp143
	movzbl	96(%rax), %eax	# pm_4(D)->op_pmdynflags, D.13184
	movzbl	%al, %eax	# D.13184, D.13185
	andl	$2, %eax	#, D.13185
	testl	%eax, %eax	# D.13185
	je	.L125	#,
	.loc 1 364 0
	movq	-8(%rbp), %rax	# tmpsv, tmp144
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	Perl_sv_catpv	#
.L125:
	.loc 1 365 0
	movq	-40(%rbp), %rax	# pm, tmp145
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$2, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L126	#,
	.loc 1 366 0
	movq	-8(%rbp), %rax	# tmpsv, tmp146
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	Perl_sv_catpv	#
.L126:
	.loc 1 367 0
	movq	-40(%rbp), %rax	# pm, tmp147
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	testq	%rax, %rax	# D.13183
	je	.L127	#,
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pm, tmp148
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	movq	24(%rax), %rax	# _40->substrs, D.13189
	movq	56(%rax), %rax	# _41->data[2].substr, D.13190
	testq	%rax, %rax	# D.13190
	je	.L127	#,
	.loc 1 368 0 is_stmt 1
	movq	-40(%rbp), %rax	# pm, tmp149
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	movl	92(%rax), %eax	# _43->reganch, D.13182
	andl	$64, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	jne	.L127	#,
	.loc 1 369 0
	movq	-8(%rbp), %rax	# tmpsv, tmp150
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	Perl_sv_catpv	#
.L127:
	.loc 1 370 0
	movq	-40(%rbp), %rax	# pm, tmp151
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	testq	%rax, %rax	# D.13183
	je	.L128	#,
	.loc 1 370 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pm, tmp152
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	movq	24(%rax), %rax	# _47->substrs, D.13189
	movq	56(%rax), %rax	# _48->data[2].substr, D.13190
	testq	%rax, %rax	# D.13190
	je	.L128	#,
	.loc 1 371 0 is_stmt 1
	movq	-40(%rbp), %rax	# pm, tmp153
	movq	80(%rax), %rax	# pm_4(D)->op_pmregexp, D.13183
	movl	92(%rax), %eax	# _50->reganch, D.13182
	andl	$256, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L128	#,
	.loc 1 372 0
	movq	-8(%rbp), %rax	# tmpsv, tmp154
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_catpv	#
.L128:
	.loc 1 373 0
	movq	-40(%rbp), %rax	# pm, tmp155
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$16, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L129	#,
	.loc 1 374 0
	movq	-8(%rbp), %rax	# tmpsv, tmp156
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	Perl_sv_catpv	#
.L129:
	.loc 1 375 0
	movq	-40(%rbp), %rax	# pm, tmp157
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$64, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L130	#,
	.loc 1 376 0
	movq	-8(%rbp), %rax	# tmpsv, tmp158
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	Perl_sv_catpv	#
.L130:
	.loc 1 377 0
	movq	-40(%rbp), %rax	# pm, tmp159
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$128, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L131	#,
	.loc 1 378 0
	movq	-8(%rbp), %rax	# tmpsv, tmp160
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	Perl_sv_catpv	#
.L131:
	.loc 1 379 0
	movq	-40(%rbp), %rax	# pm, tmp161
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$256, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L132	#,
	.loc 1 380 0
	movq	-8(%rbp), %rax	# tmpsv, tmp162
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	Perl_sv_catpv	#
.L132:
	.loc 1 381 0
	movq	-40(%rbp), %rax	# pm, tmp163
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$512, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L133	#,
	.loc 1 382 0
	movq	-8(%rbp), %rax	# tmpsv, tmp164
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	Perl_sv_catpv	#
.L133:
	.loc 1 383 0
	movq	-40(%rbp), %rax	# pm, tmp165
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$1, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L134	#,
	.loc 1 384 0
	movq	-8(%rbp), %rax	# tmpsv, tmp166
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	Perl_sv_catpv	#
.L134:
	.loc 1 385 0
	movq	-40(%rbp), %rax	# pm, tmp167
	movl	88(%rax), %eax	# pm_4(D)->op_pmflags, D.13182
	andl	$1024, %eax	#, D.13182
	testl	%eax, %eax	# D.13182
	je	.L135	#,
	.loc 1 386 0
	movq	-8(%rbp), %rax	# tmpsv, tmp168
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	Perl_sv_catpv	#
.L135:
	.loc 1 387 0
	movq	-8(%rbp), %rax	# tmpsv, tmp169
	movq	(%rax), %rax	# tmpsv_30->sv_any, D.13191
	movq	8(%rax), %rax	# MEM[(struct XPV *)_67].xpv_cur, D.13192
	testq	%rax, %rax	# D.13192
	je	.L136	#,
	.loc 1 387 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmpsv, tmp170
	movq	(%rax), %rax	# tmpsv_30->sv_any, D.13191
	movq	(%rax), %rax	# MEM[(struct XPV *)_69].xpv_pv, D.13186
	addq	$1, %rax	#, iftmp.15
	jmp	.L137	#
.L136:
	.loc 1 387 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.15
.L137:
	.loc 1 387 0 discriminator 3
	movq	-32(%rbp), %rsi	# file, tmp171
	movl	-20(%rbp), %edi	# level, tmp172
	movq	%rax, %rcx	# iftmp.15,
	movl	$.LC76, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 388 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# tmpsv, tmp173
	movq	%rax, %rdi	# tmp173,
	call	Perl_sv_free	#
.L123:
.LBE5:
	.loc 1 391 0
	movl	-20(%rbp), %eax	# level, tmp174
	leal	-1(%rax), %ecx	#, D.13185
	movq	-32(%rbp), %rax	# file, tmp175
	movl	$.LC77, %edx	#,
	movq	%rax, %rsi	# tmp175,
	movl	%ecx, %edi	# D.13185,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L112:
	.loc 1 392 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_do_pmop_dump, .-Perl_do_pmop_dump
	.globl	Perl_pmop_dump
	.type	Perl_pmop_dump, @function
Perl_pmop_dump:
.LFB12:
	.loc 1 396 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pm, pm
	.loc 1 397 0
	call	Perl_PerlIO_stderr	#
	movq	-8(%rbp), %rdx	# pm, tmp60
	movq	%rax, %rsi	# D.13213,
	movl	$0, %edi	#,
	call	Perl_do_pmop_dump	#
	.loc 1 398 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_pmop_dump, .-Perl_pmop_dump
	.section	.rodata
.LC78:
	.string	"%-4d"
.LC79:
	.string	"    "
.LC80:
	.string	"%*sTYPE = %s  ===> "
.LC81:
	.string	"%d\n"
.LC82:
	.string	"(%d)\n"
.LC83:
	.string	"DONE\n"
.LC84:
	.string	"  (was %s)\n"
.LC85:
	.string	"LINE = %lu\n"
.LC86:
	.string	"PACKAGE = \"%s\"\n"
.LC87:
	.string	"LABEL = \"%s\"\n"
.LC88:
	.string	"TARG = %ld\n"
.LC89:
	.string	",VOID"
.LC90:
	.string	",SCALAR"
.LC91:
	.string	",LIST"
.LC92:
	.string	",UNKNOWN"
.LC93:
	.string	",KIDS"
.LC94:
	.string	",PARENS"
.LC95:
	.string	",STACKED"
.LC96:
	.string	",REF"
.LC97:
	.string	",MOD"
.LC98:
	.string	",SPECIAL"
.LC99:
	.string	"FLAGS = (%s)\n"
.LC100:
	.string	",TARGET_MY"
.LC101:
	.string	",REFCOUNTED"
.LC102:
	.string	",COMMON"
.LC103:
	.string	",HASH"
.LC104:
	.string	",BACKWARDS"
.LC105:
	.string	",SQUASH"
.LC106:
	.string	",DELETE"
.LC107:
	.string	",COMPLEMENT"
.LC108:
	.string	",IDENTICAL"
.LC109:
	.string	",GROWS"
.LC110:
	.string	",DOLIST"
.LC111:
	.string	",AMPER"
.LC112:
	.string	",DB"
.LC113:
	.string	",HASTARG"
.LC114:
	.string	",NOPAREN"
.LC115:
	.string	",INARGS"
.LC116:
	.string	",NOMOD"
.LC117:
	.string	",SV"
.LC118:
	.string	",AV"
.LC119:
	.string	",HV"
.LC120:
	.string	",MAYBE_LVSUB"
.LC121:
	.string	",LVAL_DEFER"
.LC122:
	.string	",STRICT_REFS"
.LC123:
	.string	",OUR_INTRO"
.LC124:
	.string	",BARE"
.LC125:
	.string	",STRICT"
.LC126:
	.string	",ARYBASE"
.LC127:
	.string	",WARNING"
.LC128:
	.string	",ENTERED"
.LC129:
	.string	",LINENUM"
.LC130:
	.string	",INTRO"
.LC131:
	.string	",EARLY_CV"
.LC132:
	.string	",GUESSED"
.LC133:
	.string	",SLICE"
.LC134:
	.string	",EXISTS_SUB"
.LC135:
	.string	",NUMERIC"
.LC136:
	.string	",INTEGER"
.LC137:
	.string	",REVERSE"
.LC138:
	.string	",SVREF"
.LC139:
	.string	",IN_RAW"
.LC140:
	.string	",IN_CRLF"
.LC141:
	.string	",OUT_RAW"
.LC142:
	.string	",OUT_CRLF"
.LC143:
	.string	",EXIT_VMSISH"
.LC144:
	.string	",HUSH_VMSISH"
.LC145:
	.string	",FT_ACCESS"
.LC146:
	.string	"PRIVATE = (%s)\n"
.LC147:
	.string	"SV = %s\n"
.LC148:
	.string	"REDO ===> "
.LC149:
	.string	"NEXT ===> "
.LC150:
	.string	"LAST ===> "
.LC151:
	.string	"OTHER ===> "
.LC152:
	.string	"REFCNT = %lu\n"
	.text
	.globl	Perl_do_op_dump
	.type	Perl_do_op_dump, @function
Perl_do_op_dump:
.LFB13:
	.loc 1 402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# level, level
	movq	%rsi, -48(%rbp)	# file, file
	movq	%rdx, -56(%rbp)	# o, o
	.loc 1 403 0
	movq	-48(%rbp), %rcx	# file, tmp351
	movl	-36(%rbp), %eax	# level, tmp352
	movl	$.LC59, %edx	#,
	movq	%rcx, %rsi	# tmp351,
	movl	%eax, %edi	# tmp352,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 404 0
	addl	$1, -36(%rbp)	#, level
	.loc 1 405 0
	movq	-56(%rbp), %rax	# o, tmp353
	movzwl	34(%rax), %eax	# o_9(D)->op_seq, D.13214
	testw	%ax, %ax	# D.13214
	je	.L140	#,
	.loc 1 406 0
	movq	-56(%rbp), %rax	# o, tmp354
	movzwl	34(%rax), %eax	# o_9(D)->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp355
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp355,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L141	#
.L140:
	.loc 1 408 0
	movq	-48(%rbp), %rax	# file, tmp356
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp356,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L141:
	.loc 1 411 0
	movq	-56(%rbp), %rax	# o, tmp357
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 409 0
	cmpw	$351, %ax	#, D.13214
	jne	.L142	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp358
	movq	%rax, %rdi	# tmp358,
	call	Perl_custom_op_name	#
	jmp	.L143	#
.L142:
	.loc 1 411 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# o, tmp359
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	movzwl	%ax, %eax	# D.13214, D.13215
	.loc 1 409 0 discriminator 2
	cltq
	movq	PL_op_name(,%rax,8), %rax	# PL_op_name, iftmp.16
.L143:
	.loc 1 411 0
	movl	PL_dumpindent(%rip), %edx	# PL_dumpindent, PL_dumpindent.17
	imull	-36(%rbp), %edx	# level, D.13215
	.loc 1 409 0
	subl	$4, %edx	#, D.13215
	movq	-48(%rbp), %rdi	# file, tmp361
	movq	%rax, %r8	# iftmp.16,
	movl	$.LC0, %ecx	#,
	movl	$.LC80, %esi	#,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 412 0
	movq	-56(%rbp), %rax	# o, tmp362
	movq	(%rax), %rax	# o_9(D)->op_next, D.13216
	testq	%rax, %rax	# D.13216
	je	.L144	#,
	.loc 1 413 0
	movq	-56(%rbp), %rax	# o, tmp363
	movzwl	34(%rax), %eax	# o_9(D)->op_seq, D.13214
	testw	%ax, %ax	# D.13214
	je	.L145	#,
	.loc 1 414 0
	movq	-56(%rbp), %rax	# o, tmp364
	movq	(%rax), %rax	# o_9(D)->op_next, D.13216
	movzwl	34(%rax), %eax	# _23->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp365
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp365,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L147	#
.L145:
	.loc 1 416 0
	movq	-56(%rbp), %rax	# o, tmp366
	movq	(%rax), %rax	# o_9(D)->op_next, D.13216
	movzwl	34(%rax), %eax	# _26->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp367
	movl	$.LC82, %esi	#,
	movq	%rax, %rdi	# tmp367,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L147	#
.L144:
	.loc 1 419 0
	movq	-48(%rbp), %rax	# file, tmp368
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp368,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L147:
	.loc 1 420 0
	movq	-56(%rbp), %rax	# o, tmp369
	movq	24(%rax), %rax	# o_9(D)->op_targ, D.13217
	testq	%rax, %rax	# D.13217
	je	.L148	#,
	.loc 1 421 0
	movq	-56(%rbp), %rax	# o, tmp370
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	testw	%ax, %ax	# D.13214
	jne	.L149	#,
	.loc 1 423 0
	movq	-56(%rbp), %rax	# o, tmp371
	movq	24(%rax), %rax	# o_9(D)->op_targ, D.13217
	movq	PL_op_name(,%rax,8), %rdx	# PL_op_name, D.13218
	movq	-48(%rbp), %rsi	# file, tmp372
	movl	-36(%rbp), %eax	# level, tmp373
	movq	%rdx, %rcx	# D.13218,
	movl	$.LC84, %edx	#,
	movl	%eax, %edi	# tmp373,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 424 0
	movq	-56(%rbp), %rax	# o, tmp374
	movq	24(%rax), %rax	# o_9(D)->op_targ, D.13217
	cmpq	$174, %rax	#, D.13217
	jne	.L148	#,
	.loc 1 426 0
	movq	-56(%rbp), %rax	# o, tmp375
	movl	72(%rax), %eax	# MEM[(struct COP *)o_9(D)].cop_line, D.13219
	testl	%eax, %eax	# D.13219
	je	.L151	#,
	.loc 1 428 0
	movq	-56(%rbp), %rax	# o, tmp376
	movl	72(%rax), %eax	# MEM[(struct COP *)o_9(D)].cop_line, D.13219
	.loc 1 427 0
	movl	%eax, %edx	# D.13219, D.13217
	movq	-48(%rbp), %rsi	# file, tmp377
	movl	-36(%rbp), %eax	# level, tmp378
	movq	%rdx, %rcx	# D.13217,
	movl	$.LC85, %edx	#,
	movl	%eax, %edi	# tmp378,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L151:
	.loc 1 429 0
	movq	-56(%rbp), %rax	# o, tmp379
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	testq	%rax, %rax	# D.13220
	je	.L152	#,
	.loc 1 429 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp380
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	movq	(%rax), %rax	# _38->sv_any, D.13221
	movq	80(%rax), %rax	# _39->xhv_name, D.13218
	testq	%rax, %rax	# D.13218
	je	.L152	#,
	.loc 1 431 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp381
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	.loc 1 430 0
	testq	%rax, %rax	# D.13220
	je	.L153	#,
	.loc 1 431 0
	movq	-56(%rbp), %rax	# o, tmp382
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	movq	(%rax), %rax	# _42->sv_any, D.13221
	.loc 1 430 0
	movq	80(%rax), %rax	# _43->xhv_name, iftmp.18
	jmp	.L154	#
.L153:
	.loc 1 430 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.18
.L154:
	.loc 1 430 0 discriminator 2
	movq	-48(%rbp), %rsi	# file, tmp383
	movl	-36(%rbp), %edi	# level, tmp384
	movq	%rax, %rcx	# iftmp.18,
	movl	$.LC86, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L152:
	.loc 1 432 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp385
	movq	40(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_label, D.13218
	testq	%rax, %rax	# D.13218
	je	.L148	#,
	.loc 1 433 0
	movq	-56(%rbp), %rax	# o, tmp386
	movq	40(%rax), %rdx	# MEM[(struct COP *)o_9(D)].cop_label, D.13218
	movq	-48(%rbp), %rsi	# file, tmp387
	movl	-36(%rbp), %eax	# level, tmp388
	movq	%rdx, %rcx	# D.13218,
	movl	$.LC87, %edx	#,
	movl	%eax, %edi	# tmp388,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L148	#
.L149:
	.loc 1 438 0
	movq	-56(%rbp), %rax	# o, tmp389
	movq	24(%rax), %rax	# o_9(D)->op_targ, D.13217
	movq	%rax, %rdx	# D.13217, D.13222
	movq	-48(%rbp), %rsi	# file, tmp390
	movl	-36(%rbp), %eax	# level, tmp391
	movq	%rdx, %rcx	# D.13222,
	movl	$.LC88, %edx	#,
	movl	%eax, %edi	# tmp391,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L148:
	.loc 1 443 0
	movq	-56(%rbp), %rax	# o, tmp392
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	testb	%al, %al	# D.13223
	je	.L155	#,
.LBB6:
	.loc 1 444 0
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -16(%rbp)	# tmp393, tmpsv
	.loc 1 445 0
	movq	-56(%rbp), %rax	# o, tmp394
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$3, %eax	#, D.13215
	cmpl	$2, %eax	#, D.13215
	je	.L157	#,
	cmpl	$3, %eax	#, D.13215
	je	.L158	#,
	cmpl	$1, %eax	#, D.13215
	jne	.L281	#,
	.loc 1 447 0
	movq	-16(%rbp), %rax	# tmpsv, tmp395
	movl	$.LC89, %esi	#,
	movq	%rax, %rdi	# tmp395,
	call	Perl_sv_catpv	#
	.loc 1 448 0
	jmp	.L160	#
.L157:
	.loc 1 450 0
	movq	-16(%rbp), %rax	# tmpsv, tmp396
	movl	$.LC90, %esi	#,
	movq	%rax, %rdi	# tmp396,
	call	Perl_sv_catpv	#
	.loc 1 451 0
	jmp	.L160	#
.L158:
	.loc 1 453 0
	movq	-16(%rbp), %rax	# tmpsv, tmp397
	movl	$.LC91, %esi	#,
	movq	%rax, %rdi	# tmp397,
	call	Perl_sv_catpv	#
	.loc 1 454 0
	jmp	.L160	#
.L281:
	.loc 1 456 0
	movq	-16(%rbp), %rax	# tmpsv, tmp398
	movl	$.LC92, %esi	#,
	movq	%rax, %rdi	# tmp398,
	call	Perl_sv_catpv	#
	.loc 1 457 0
	nop
.L160:
	.loc 1 459 0
	movq	-56(%rbp), %rax	# o, tmp399
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$4, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L161	#,
	.loc 1 460 0
	movq	-16(%rbp), %rax	# tmpsv, tmp400
	movl	$.LC93, %esi	#,
	movq	%rax, %rdi	# tmp400,
	call	Perl_sv_catpv	#
.L161:
	.loc 1 461 0
	movq	-56(%rbp), %rax	# o, tmp401
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$8, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L162	#,
	.loc 1 462 0
	movq	-16(%rbp), %rax	# tmpsv, tmp402
	movl	$.LC94, %esi	#,
	movq	%rax, %rdi	# tmp402,
	call	Perl_sv_catpv	#
.L162:
	.loc 1 463 0
	movq	-56(%rbp), %rax	# o, tmp403
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L163	#,
	.loc 1 464 0
	movq	-16(%rbp), %rax	# tmpsv, tmp404
	movl	$.LC95, %esi	#,
	movq	%rax, %rdi	# tmp404,
	call	Perl_sv_catpv	#
.L163:
	.loc 1 465 0
	movq	-56(%rbp), %rax	# o, tmp405
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L164	#,
	.loc 1 466 0
	movq	-16(%rbp), %rax	# tmpsv, tmp406
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp406,
	call	Perl_sv_catpv	#
.L164:
	.loc 1 467 0
	movq	-56(%rbp), %rax	# o, tmp407
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L165	#,
	.loc 1 468 0
	movq	-16(%rbp), %rax	# tmpsv, tmp408
	movl	$.LC97, %esi	#,
	movq	%rax, %rdi	# tmp408,
	call	Perl_sv_catpv	#
.L165:
	.loc 1 469 0
	movq	-56(%rbp), %rax	# o, tmp409
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	testb	%al, %al	# D.13224
	jns	.L166	#,
	.loc 1 470 0
	movq	-16(%rbp), %rax	# tmpsv, tmp410
	movl	$.LC98, %esi	#,
	movq	%rax, %rdi	# tmp410,
	call	Perl_sv_catpv	#
.L166:
	.loc 1 471 0
	movq	-16(%rbp), %rax	# tmpsv, tmp411
	movq	(%rax), %rax	# tmpsv_51->sv_any, D.13225
	movq	8(%rax), %rax	# MEM[(struct XPV *)_72].xpv_cur, D.13217
	testq	%rax, %rax	# D.13217
	je	.L167	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tmpsv, tmp412
	movq	(%rax), %rax	# tmpsv_51->sv_any, D.13225
	movq	(%rax), %rax	# MEM[(struct XPV *)_74].xpv_pv, D.13218
	addq	$1, %rax	#, iftmp.19
	jmp	.L168	#
.L167:
	.loc 1 471 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.19
.L168:
	.loc 1 471 0 discriminator 3
	movq	-48(%rbp), %rsi	# file, tmp413
	movl	-36(%rbp), %edi	# level, tmp414
	movq	%rax, %rcx	# iftmp.19,
	movl	$.LC99, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 472 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# tmpsv, tmp415
	movq	%rax, %rdi	# tmp415,
	call	Perl_sv_free	#
.L155:
.LBE6:
	.loc 1 474 0
	movq	-56(%rbp), %rax	# o, tmp416
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13223
	je	.L169	#,
.LBB7:
	.loc 1 475 0
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -8(%rbp)	# tmp417, tmpsv
	.loc 1 476 0
	movq	-56(%rbp), %rax	# o, tmp418
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	movzwl	%ax, %eax	# D.13214, D.13215
	cltq
	movl	PL_opargs(,%rax,4), %eax	# PL_opargs, D.13219
	andl	$256, %eax	#, D.13219
	testl	%eax, %eax	# D.13219
	je	.L170	#,
	.loc 1 477 0
	movq	-56(%rbp), %rax	# o, tmp420
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 478 0
	movq	-8(%rbp), %rax	# tmpsv, tmp421
	movl	$.LC100, %esi	#,
	movq	%rax, %rdi	# tmp421,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L170:
	.loc 1 480 0
	movq	-56(%rbp), %rax	# o, tmp422
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$167, %ax	#, D.13214
	je	.L173	#,
	.loc 1 481 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp423
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 480 0 discriminator 1
	cmpw	$178, %ax	#, D.13214
	je	.L173	#,
	.loc 1 482 0
	movq	-56(%rbp), %rax	# o, tmp424
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 481 0
	cmpw	$168, %ax	#, D.13214
	je	.L173	#,
	.loc 1 483 0
	movq	-56(%rbp), %rax	# o, tmp425
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 482 0
	cmpw	$207, %ax	#, D.13214
	jne	.L174	#,
.L173:
	.loc 1 484 0
	movq	-56(%rbp), %rax	# o, tmp426
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L175	#,
	.loc 1 485 0
	movq	-8(%rbp), %rax	# tmpsv, tmp427
	movl	$.LC101, %esi	#,
	movq	%rax, %rdi	# tmp427,
	call	Perl_sv_catpv	#
	.loc 1 484 0
	jmp	.L172	#
.L175:
	.loc 1 484 0 is_stmt 0 discriminator 1
	jmp	.L172	#
.L174:
	.loc 1 487 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp428
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$37, %ax	#, D.13214
	jne	.L176	#,
	.loc 1 488 0
	movq	-56(%rbp), %rax	# o, tmp429
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L177	#,
	.loc 1 489 0
	movq	-8(%rbp), %rax	# tmpsv, tmp430
	movl	$.LC102, %esi	#,
	movq	%rax, %rdi	# tmp430,
	call	Perl_sv_catpv	#
.L177:
	.loc 1 490 0
	movq	-56(%rbp), %rax	# o, tmp431
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 491 0
	movq	-8(%rbp), %rax	# tmpsv, tmp432
	movl	$.LC103, %esi	#,
	movq	%rax, %rdi	# tmp432,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L176:
	.loc 1 493 0
	movq	-56(%rbp), %rax	# o, tmp433
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$36, %ax	#, D.13214
	jne	.L179	#,
	.loc 1 494 0
	movq	-56(%rbp), %rax	# o, tmp434
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 495 0
	movq	-8(%rbp), %rax	# tmpsv, tmp435
	movl	$.LC104, %esi	#,
	movq	%rax, %rdi	# tmp435,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L179:
	.loc 1 497 0
	movq	-56(%rbp), %rax	# o, tmp436
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$35, %ax	#, D.13214
	jne	.L181	#,
	.loc 1 498 0
	movq	-56(%rbp), %rax	# o, tmp437
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$8, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L182	#,
	.loc 1 499 0
	movq	-8(%rbp), %rax	# tmpsv, tmp438
	movl	$.LC105, %esi	#,
	movq	%rax, %rdi	# tmp438,
	call	Perl_sv_catpv	#
.L182:
	.loc 1 500 0
	movq	-56(%rbp), %rax	# o, tmp439
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L183	#,
	.loc 1 501 0
	movq	-8(%rbp), %rax	# tmpsv, tmp440
	movl	$.LC106, %esi	#,
	movq	%rax, %rdi	# tmp440,
	call	Perl_sv_catpv	#
.L183:
	.loc 1 502 0
	movq	-56(%rbp), %rax	# o, tmp441
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L184	#,
	.loc 1 503 0
	movq	-8(%rbp), %rax	# tmpsv, tmp442
	movl	$.LC107, %esi	#,
	movq	%rax, %rdi	# tmp442,
	call	Perl_sv_catpv	#
.L184:
	.loc 1 504 0
	movq	-56(%rbp), %rax	# o, tmp443
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$4, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L185	#,
	.loc 1 505 0
	movq	-8(%rbp), %rax	# tmpsv, tmp444
	movl	$.LC108, %esi	#,
	movq	%rax, %rdi	# tmp444,
	call	Perl_sv_catpv	#
.L185:
	.loc 1 506 0
	movq	-56(%rbp), %rax	# o, tmp445
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 507 0
	movq	-8(%rbp), %rax	# tmpsv, tmp446
	movl	$.LC109, %esi	#,
	movq	%rax, %rdi	# tmp446,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L181:
	.loc 1 509 0
	movq	-56(%rbp), %rax	# o, tmp447
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$61, %ax	#, D.13214
	jne	.L187	#,
	.loc 1 510 0
	movq	-56(%rbp), %rax	# o, tmp448
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 511 0
	movq	-8(%rbp), %rax	# tmpsv, tmp449
	movl	$.LC110, %esi	#,
	movq	%rax, %rdi	# tmp449,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L187:
	.loc 1 513 0
	movq	-56(%rbp), %rax	# o, tmp450
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$166, %ax	#, D.13214
	je	.L189	#,
	.loc 1 514 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp451
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 513 0 discriminator 1
	cmpw	$15, %ax	#, D.13214
	je	.L189	#,
	.loc 1 515 0
	movq	-56(%rbp), %rax	# o, tmp452
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 514 0
	cmpw	$6, %ax	#, D.13214
	je	.L189	#,
	.loc 1 516 0
	movq	-56(%rbp), %rax	# o, tmp453
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 515 0
	cmpw	$125, %ax	#, D.13214
	je	.L189	#,
	.loc 1 517 0
	movq	-56(%rbp), %rax	# o, tmp454
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 516 0
	cmpw	$134, %ax	#, D.13214
	je	.L189	#,
	.loc 1 518 0
	movq	-56(%rbp), %rax	# o, tmp455
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 517 0
	cmpw	$14, %ax	#, D.13214
	je	.L189	#,
	.loc 1 519 0
	movq	-56(%rbp), %rax	# o, tmp456
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 518 0
	cmpw	$127, %ax	#, D.13214
	je	.L189	#,
	.loc 1 520 0
	movq	-56(%rbp), %rax	# o, tmp457
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	.loc 1 519 0
	cmpw	$135, %ax	#, D.13214
	jne	.L190	#,
.L189:
	.loc 1 522 0
	movq	-56(%rbp), %rax	# o, tmp458
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$166, %ax	#, D.13214
	jne	.L191	#,
	.loc 1 523 0
	movq	-56(%rbp), %rax	# o, tmp459
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$8, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L192	#,
	.loc 1 524 0
	movq	-8(%rbp), %rax	# tmpsv, tmp460
	movl	$.LC111, %esi	#,
	movq	%rax, %rdi	# tmp460,
	call	Perl_sv_catpv	#
.L192:
	.loc 1 525 0
	movq	-56(%rbp), %rax	# o, tmp461
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L193	#,
	.loc 1 526 0
	movq	-8(%rbp), %rax	# tmpsv, tmp462
	movl	$.LC112, %esi	#,
	movq	%rax, %rdi	# tmp462,
	call	Perl_sv_catpv	#
.L193:
	.loc 1 527 0
	movq	-56(%rbp), %rax	# o, tmp463
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L194	#,
	.loc 1 528 0
	movq	-8(%rbp), %rax	# tmpsv, tmp464
	movl	$.LC113, %esi	#,
	movq	%rax, %rdi	# tmp464,
	call	Perl_sv_catpv	#
.L194:
	.loc 1 529 0
	movq	-56(%rbp), %rax	# o, tmp465
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L195	#,
	.loc 1 530 0
	movq	-8(%rbp), %rax	# tmpsv, tmp466
	movl	$.LC114, %esi	#,
	movq	%rax, %rdi	# tmp466,
	call	Perl_sv_catpv	#
.L195:
	.loc 1 531 0
	movq	-56(%rbp), %rax	# o, tmp467
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$4, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L196	#,
	.loc 1 532 0
	movq	-8(%rbp), %rax	# tmpsv, tmp468
	movl	$.LC115, %esi	#,
	movq	%rax, %rdi	# tmp468,
	call	Perl_sv_catpv	#
.L196:
	.loc 1 533 0
	movq	-56(%rbp), %rax	# o, tmp469
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L198	#,
	.loc 1 534 0
	movq	-8(%rbp), %rax	# tmpsv, tmp470
	movl	$.LC116, %esi	#,
	movq	%rax, %rdi	# tmp470,
	call	Perl_sv_catpv	#
	jmp	.L198	#
.L191:
	.loc 1 537 0
	movq	-56(%rbp), %rax	# o, tmp471
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$96, %eax	#, D.13215
	cmpl	$64, %eax	#, D.13215
	je	.L200	#,
	cmpl	$96, %eax	#, D.13215
	je	.L201	#,
	cmpl	$32, %eax	#, D.13215
	je	.L202	#,
	jmp	.L199	#
.L201:
	.loc 1 539 0
	movq	-8(%rbp), %rax	# tmpsv, tmp472
	movl	$.LC117, %esi	#,
	movq	%rax, %rdi	# tmp472,
	call	Perl_sv_catpv	#
	.loc 1 540 0
	jmp	.L199	#
.L202:
	.loc 1 542 0
	movq	-8(%rbp), %rax	# tmpsv, tmp473
	movl	$.LC118, %esi	#,
	movq	%rax, %rdi	# tmp473,
	call	Perl_sv_catpv	#
	.loc 1 543 0
	jmp	.L199	#
.L200:
	.loc 1 545 0
	movq	-8(%rbp), %rax	# tmpsv, tmp474
	movl	$.LC119, %esi	#,
	movq	%rax, %rdi	# tmp474,
	call	Perl_sv_catpv	#
	.loc 1 546 0
	nop
.L199:
	.loc 1 548 0
	movq	-56(%rbp), %rax	# o, tmp475
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$8, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L198	#,
	.loc 1 549 0
	movq	-8(%rbp), %rax	# tmpsv, tmp476
	movl	$.LC120, %esi	#,
	movq	%rax, %rdi	# tmp476,
	call	Perl_sv_catpv	#
.L198:
	.loc 1 551 0
	movq	-56(%rbp), %rax	# o, tmp477
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$127, %ax	#, D.13214
	je	.L203	#,
	.loc 1 551 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp478
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$135, %ax	#, D.13214
	jne	.L204	#,
.L203:
	.loc 1 552 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp479
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L205	#,
	.loc 1 553 0
	movq	-8(%rbp), %rax	# tmpsv, tmp480
	movl	$.LC121, %esi	#,
	movq	%rax, %rdi	# tmp480,
	call	Perl_sv_catpv	#
	.loc 1 552 0
	jmp	.L206	#
.L205:
	.loc 1 552 0 is_stmt 0 discriminator 1
	jmp	.L206	#
.L204:
	.loc 1 556 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp481
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$2, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L207	#,
	.loc 1 557 0
	movq	-8(%rbp), %rax	# tmpsv, tmp482
	movl	$.LC122, %esi	#,
	movq	%rax, %rdi	# tmp482,
	call	Perl_sv_catpv	#
.L207:
	.loc 1 558 0
	movq	-56(%rbp), %rax	# o, tmp483
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L206	#,
	.loc 1 559 0
	movq	-8(%rbp), %rax	# tmpsv, tmp484
	movl	$.LC123, %esi	#,
	movq	%rax, %rdi	# tmp484,
	call	Perl_sv_catpv	#
	.loc 1 551 0
	jmp	.L172	#
.L206:
	jmp	.L172	#
.L190:
	.loc 1 562 0
	movq	-56(%rbp), %rax	# o, tmp485
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$5, %ax	#, D.13214
	jne	.L208	#,
	.loc 1 563 0
	movq	-56(%rbp), %rax	# o, tmp486
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L209	#,
	.loc 1 564 0
	movq	-8(%rbp), %rax	# tmpsv, tmp487
	movl	$.LC124, %esi	#,
	movq	%rax, %rdi	# tmp487,
	call	Perl_sv_catpv	#
.L209:
	.loc 1 565 0
	movq	-56(%rbp), %rax	# o, tmp488
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$8, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L210	#,
	.loc 1 566 0
	movq	-8(%rbp), %rax	# tmpsv, tmp489
	movl	$.LC125, %esi	#,
	movq	%rax, %rdi	# tmp489,
	call	Perl_sv_catpv	#
.L210:
	.loc 1 567 0
	movq	-56(%rbp), %rax	# o, tmp490
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L211	#,
	.loc 1 568 0
	movq	-8(%rbp), %rax	# tmpsv, tmp491
	movl	$.LC126, %esi	#,
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_catpv	#
.L211:
	.loc 1 569 0
	movq	-56(%rbp), %rax	# o, tmp492
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L212	#,
	.loc 1 570 0
	movq	-8(%rbp), %rax	# tmpsv, tmp493
	movl	$.LC127, %esi	#,
	movq	%rax, %rdi	# tmp493,
	call	Perl_sv_catpv	#
.L212:
	.loc 1 571 0
	movq	-56(%rbp), %rax	# o, tmp494
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 572 0
	movq	-8(%rbp), %rax	# tmpsv, tmp495
	movl	$.LC128, %esi	#,
	movq	%rax, %rdi	# tmp495,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L208:
	.loc 1 574 0
	movq	-56(%rbp), %rax	# o, tmp496
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$157, %ax	#, D.13214
	jne	.L214	#,
	.loc 1 575 0
	movq	-56(%rbp), %rax	# o, tmp497
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 576 0
	movq	-8(%rbp), %rax	# tmpsv, tmp498
	movl	$.LC129, %esi	#,
	movq	%rax, %rdi	# tmp498,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L214:
	.loc 1 578 0
	movq	-56(%rbp), %rax	# o, tmp499
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$158, %ax	#, D.13214
	jne	.L216	#,
	.loc 1 579 0
	movq	-56(%rbp), %rax	# o, tmp500
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 580 0
	movq	-8(%rbp), %rax	# tmpsv, tmp501
	movl	$.LC129, %esi	#,
	movq	%rax, %rdi	# tmp501,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L216:
	.loc 1 582 0
	movq	-56(%rbp), %rax	# o, tmp502
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$17, %ax	#, D.13214
	jne	.L218	#,
	.loc 1 583 0
	movq	-56(%rbp), %rax	# o, tmp503
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L172	#,
	.loc 1 584 0
	movq	-8(%rbp), %rax	# tmpsv, tmp504
	movl	$.LC130, %esi	#,
	movq	%rax, %rdi	# tmp504,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L218:
	.loc 1 586 0
	movq	-56(%rbp), %rax	# o, tmp505
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$7, %ax	#, D.13214
	jne	.L220	#,
	.loc 1 587 0
	movq	-56(%rbp), %rax	# o, tmp506
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 588 0
	movq	-8(%rbp), %rax	# tmpsv, tmp507
	movl	$.LC131, %esi	#,
	movq	%rax, %rdi	# tmp507,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L220:
	.loc 1 590 0
	movq	-56(%rbp), %rax	# o, tmp508
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$141, %ax	#, D.13214
	jne	.L222	#,
	.loc 1 591 0
	movq	-56(%rbp), %rax	# o, tmp509
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 592 0
	movq	-8(%rbp), %rax	# tmpsv, tmp510
	movl	$.LC132, %esi	#,
	movq	%rax, %rdi	# tmp510,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L222:
	.loc 1 594 0
	movq	-56(%rbp), %rax	# o, tmp511
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$132, %ax	#, D.13214
	jne	.L224	#,
	.loc 1 595 0
	movq	-56(%rbp), %rax	# o, tmp512
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 596 0
	movq	-8(%rbp), %rax	# tmpsv, tmp513
	movl	$.LC133, %esi	#,
	movq	%rax, %rdi	# tmp513,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L224:
	.loc 1 598 0
	movq	-56(%rbp), %rax	# o, tmp514
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$133, %ax	#, D.13214
	jne	.L226	#,
	.loc 1 599 0
	movq	-56(%rbp), %rax	# o, tmp515
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 600 0
	movq	-8(%rbp), %rax	# tmpsv, tmp516
	movl	$.LC134, %esi	#,
	movq	%rax, %rdi	# tmp516,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L226:
	.loc 1 602 0
	movq	-56(%rbp), %rax	# o, tmp517
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$150, %ax	#, D.13214
	jne	.L228	#,
	.loc 1 603 0
	movq	-56(%rbp), %rax	# o, tmp518
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$1, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L229	#,
	.loc 1 604 0
	movq	-8(%rbp), %rax	# tmpsv, tmp519
	movl	$.LC135, %esi	#,
	movq	%rax, %rdi	# tmp519,
	call	Perl_sv_catpv	#
.L229:
	.loc 1 605 0
	movq	-56(%rbp), %rax	# o, tmp520
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$2, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L230	#,
	.loc 1 606 0
	movq	-8(%rbp), %rax	# tmpsv, tmp521
	movl	$.LC136, %esi	#,
	movq	%rax, %rdi	# tmp521,
	call	Perl_sv_catpv	#
.L230:
	.loc 1 607 0
	movq	-56(%rbp), %rax	# o, tmp522
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$4, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 608 0
	movq	-8(%rbp), %rax	# tmpsv, tmp523
	movl	$.LC137, %esi	#,
	movq	%rax, %rdi	# tmp523,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L228:
	.loc 1 610 0
	movq	-56(%rbp), %rax	# o, tmp524
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$348, %ax	#, D.13214
	jne	.L232	#,
	.loc 1 611 0
	movq	-56(%rbp), %rax	# o, tmp525
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 612 0
	movq	-8(%rbp), %rax	# tmpsv, tmp526
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# tmp526,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L232:
	.loc 1 614 0
	movq	-56(%rbp), %rax	# o, tmp527
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$191, %ax	#, D.13214
	je	.L234	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp528
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$24, %ax	#, D.13214
	jne	.L235	#,
.L234:
	.loc 1 615 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp529
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$16, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L236	#,
	.loc 1 616 0
	movq	-8(%rbp), %rax	# tmpsv, tmp530
	movl	$.LC139, %esi	#,
	movq	%rax, %rdi	# tmp530,
	call	Perl_sv_catpv	#
.L236:
	.loc 1 617 0
	movq	-56(%rbp), %rax	# o, tmp531
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L237	#,
	.loc 1 618 0
	movq	-8(%rbp), %rax	# tmpsv, tmp532
	movl	$.LC140, %esi	#,
	movq	%rax, %rdi	# tmp532,
	call	Perl_sv_catpv	#
.L237:
	.loc 1 619 0
	movq	-56(%rbp), %rax	# o, tmp533
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L238	#,
	.loc 1 620 0
	movq	-8(%rbp), %rax	# tmpsv, tmp534
	movl	$.LC141, %esi	#,
	movq	%rax, %rdi	# tmp534,
	call	Perl_sv_catpv	#
.L238:
	.loc 1 621 0
	movq	-56(%rbp), %rax	# o, tmp535
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L239	#,
	.loc 1 622 0
	movq	-8(%rbp), %rax	# tmpsv, tmp536
	movl	$.LC142, %esi	#,
	movq	%rax, %rdi	# tmp536,
	call	Perl_sv_catpv	#
	.loc 1 621 0
	jmp	.L172	#
.L239:
	.loc 1 621 0 is_stmt 0 discriminator 1
	jmp	.L172	#
.L235:
	.loc 1 624 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp537
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$190, %ax	#, D.13214
	jne	.L240	#,
	.loc 1 625 0
	movq	-56(%rbp), %rax	# o, tmp538
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L241	#,
	.loc 1 626 0
	movq	-8(%rbp), %rax	# tmpsv, tmp539
	movl	$.LC143, %esi	#,
	movq	%rax, %rdi	# tmp539,
	call	Perl_sv_catpv	#
.L241:
	.loc 1 627 0
	movq	-56(%rbp), %rax	# o, tmp540
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 628 0
	movq	-8(%rbp), %rax	# tmpsv, tmp541
	movl	$.LC144, %esi	#,
	movq	%rax, %rdi	# tmp541,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L240:
	.loc 1 630 0
	movq	-56(%rbp), %rax	# o, tmp542
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$171, %ax	#, D.13214
	jne	.L243	#,
	.loc 1 631 0
	movq	-56(%rbp), %rax	# o, tmp543
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 632 0
	movq	-8(%rbp), %rax	# tmpsv, tmp544
	movl	$.LC144, %esi	#,
	movq	%rax, %rdi	# tmp544,
	call	Perl_sv_catpv	#
	jmp	.L172	#
.L243:
	.loc 1 634 0
	movq	-56(%rbp), %rax	# o, tmp545
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$236, %ax	#, D.13214
	je	.L245	#,
	.loc 1 634 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp546
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$237, %ax	#, D.13214
	je	.L245	#,
	movq	-56(%rbp), %rax	# o, tmp547
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$238, %ax	#, D.13214
	je	.L245	#,
	movq	-56(%rbp), %rax	# o, tmp548
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$239, %ax	#, D.13214
	je	.L245	#,
	movq	-56(%rbp), %rax	# o, tmp549
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$240, %ax	#, D.13214
	je	.L245	#,
	movq	-56(%rbp), %rax	# o, tmp550
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	cmpw	$241, %ax	#, D.13214
	jne	.L172	#,
.L245:
	.loc 1 635 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp551
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$2, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L172	#,
	.loc 1 636 0
	movq	-8(%rbp), %rax	# tmpsv, tmp552
	movl	$.LC145, %esi	#,
	movq	%rax, %rdi	# tmp552,
	call	Perl_sv_catpv	#
.L172:
	.loc 1 638 0
	movq	-56(%rbp), %rax	# o, tmp553
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$32, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L246	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp554
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	testb	%al, %al	# D.13224
	jns	.L246	#,
	.loc 1 639 0 is_stmt 1
	movq	-8(%rbp), %rax	# tmpsv, tmp555
	movl	$.LC130, %esi	#,
	movq	%rax, %rdi	# tmp555,
	call	Perl_sv_catpv	#
.L246:
	.loc 1 640 0
	movq	-8(%rbp), %rax	# tmpsv, tmp556
	movq	(%rax), %rax	# tmpsv_79->sv_any, D.13225
	movq	8(%rax), %rax	# MEM[(struct XPV *)_261].xpv_cur, D.13217
	testq	%rax, %rax	# D.13217
	je	.L247	#,
	.loc 1 641 0
	movq	-8(%rbp), %rax	# tmpsv, tmp557
	movq	(%rax), %rax	# tmpsv_79->sv_any, D.13225
	movq	(%rax), %rax	# MEM[(struct XPV *)_263].xpv_pv, D.13218
	leaq	1(%rax), %rdx	#, D.13218
	movq	-48(%rbp), %rsi	# file, tmp558
	movl	-36(%rbp), %eax	# level, tmp559
	movq	%rdx, %rcx	# D.13218,
	movl	$.LC146, %edx	#,
	movl	%eax, %edi	# tmp559,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L247:
	.loc 1 642 0
	movq	-8(%rbp), %rax	# tmpsv, tmp560
	movq	%rax, %rdi	# tmp560,
	call	Perl_sv_free	#
.L169:
.LBE7:
	.loc 1 645 0
	movq	-56(%rbp), %rax	# o, tmp561
	movzwl	32(%rax), %eax	# o_9(D)->op_type, D.13214
	movzwl	%ax, %eax	# D.13214, D.13215
	cmpl	$160, %eax	#, D.13215
	jg	.L249	#,
	cmpl	$159, %eax	#, D.13215
	jge	.L250	#,
	cmpl	$33, %eax	#, D.13215
	jg	.L251	#,
	cmpl	$31, %eax	#, D.13215
	jge	.L252	#,
	cmpl	$7, %eax	#, D.13215
	jg	.L253	#,
	cmpl	$6, %eax	#, D.13215
	jge	.L282	#,
	cmpl	$5, %eax	#, D.13215
	je	.L255	#,
	.loc 1 733 0
	jmp	.L283	#
.L253:
	.loc 1 645 0
	cmpl	$13, %eax	#, D.13215
	je	.L252	#,
	.loc 1 733 0
	jmp	.L283	#
.L251:
	.loc 1 645 0
	cmpl	$153, %eax	#, D.13215
	je	.L250	#,
	cmpl	$153, %eax	#, D.13215
	jg	.L256	#,
	cmpl	$126, %eax	#, D.13215
	je	.L282	#,
	.loc 1 733 0
	jmp	.L283	#
.L256:
	.loc 1 645 0
	subl	$155, %eax	#, tmp562
	cmpl	$1, %eax	#, tmp562
	ja	.L283	#,
	jmp	.L250	#
.L249:
	cmpl	$179, %eax	#, D.13215
	jg	.L257	#,
	cmpl	$178, %eax	#, D.13215
	jge	.L258	#,
	cmpl	$168, %eax	#, D.13215
	jg	.L259	#,
	cmpl	$167, %eax	#, D.13215
	jge	.L258	#,
	cmpl	$162, %eax	#, D.13215
	je	.L250	#,
	.loc 1 733 0
	jmp	.L283	#
.L259:
	.loc 1 645 0
	subl	$174, %eax	#, tmp563
	cmpl	$1, %eax	#, tmp563
	ja	.L283	#,
	jmp	.L260	#
.L257:
	cmpl	$312, %eax	#, D.13215
	je	.L258	#,
	cmpl	$312, %eax	#, D.13215
	jg	.L261	#,
	cmpl	$182, %eax	#, D.13215
	je	.L262	#,
	cmpl	$207, %eax	#, D.13215
	je	.L258	#,
	.loc 1 733 0
	jmp	.L283	#
.L261:
	.loc 1 645 0
	cmpl	$349, %eax	#, D.13215
	je	.L260	#,
	cmpl	$350, %eax	#, D.13215
	je	.L255	#,
	.loc 1 733 0
	jmp	.L283	#
.L255:
	.loc 1 672 0
	movq	-56(%rbp), %rax	# o, tmp564
	movq	40(%rax), %rax	# MEM[(struct SVOP *)o_9(D)].op_sv, D.13226
	movq	%rax, %rdi	# D.13226,
	call	Perl_sv_peek	#
	movq	%rax, %rdx	#, D.13218
	movq	-48(%rbp), %rsi	# file, tmp565
	movl	-36(%rbp), %eax	# level, tmp566
	movq	%rdx, %rcx	# D.13218,
	movl	$.LC147, %edx	#,
	movl	%eax, %edi	# tmp566,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 674 0
	jmp	.L263	#
.L260:
	.loc 1 678 0
	movq	-56(%rbp), %rax	# o, tmp567
	movl	72(%rax), %eax	# MEM[(struct COP *)o_9(D)].cop_line, D.13219
	testl	%eax, %eax	# D.13219
	je	.L264	#,
	.loc 1 680 0
	movq	-56(%rbp), %rax	# o, tmp568
	movl	72(%rax), %eax	# MEM[(struct COP *)o_9(D)].cop_line, D.13219
	.loc 1 679 0
	movl	%eax, %edx	# D.13219, D.13217
	movq	-48(%rbp), %rsi	# file, tmp569
	movl	-36(%rbp), %eax	# level, tmp570
	movq	%rdx, %rcx	# D.13217,
	movl	$.LC85, %edx	#,
	movl	%eax, %edi	# tmp570,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L264:
	.loc 1 681 0
	movq	-56(%rbp), %rax	# o, tmp571
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	testq	%rax, %rax	# D.13220
	je	.L265	#,
	.loc 1 681 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp572
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	movq	(%rax), %rax	# _274->sv_any, D.13221
	movq	80(%rax), %rax	# _275->xhv_name, D.13218
	testq	%rax, %rax	# D.13218
	je	.L265	#,
	.loc 1 683 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp573
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	.loc 1 682 0
	testq	%rax, %rax	# D.13220
	je	.L266	#,
	.loc 1 683 0
	movq	-56(%rbp), %rax	# o, tmp574
	movq	48(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_stash, D.13220
	movq	(%rax), %rax	# _278->sv_any, D.13221
	.loc 1 682 0
	movq	80(%rax), %rax	# _279->xhv_name, iftmp.22
	jmp	.L267	#
.L266:
	.loc 1 682 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.22
.L267:
	.loc 1 682 0 discriminator 2
	movq	-48(%rbp), %rsi	# file, tmp575
	movl	-36(%rbp), %edi	# level, tmp576
	movq	%rax, %rcx	# iftmp.22,
	movl	$.LC86, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L265:
	.loc 1 684 0 is_stmt 1
	movq	-56(%rbp), %rax	# o, tmp577
	movq	40(%rax), %rax	# MEM[(struct COP *)o_9(D)].cop_label, D.13218
	testq	%rax, %rax	# D.13218
	je	.L268	#,
	.loc 1 685 0
	movq	-56(%rbp), %rax	# o, tmp578
	movq	40(%rax), %rdx	# MEM[(struct COP *)o_9(D)].cop_label, D.13218
	movq	-48(%rbp), %rsi	# file, tmp579
	movl	-36(%rbp), %eax	# level, tmp580
	movq	%rdx, %rcx	# D.13218,
	movl	$.LC87, %edx	#,
	movl	%eax, %edi	# tmp580,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 687 0
	jmp	.L263	#
.L268:
	jmp	.L263	#
.L262:
	.loc 1 689 0
	movq	-48(%rbp), %rcx	# file, tmp581
	movl	-36(%rbp), %eax	# level, tmp582
	movl	$.LC148, %edx	#,
	movq	%rcx, %rsi	# tmp581,
	movl	%eax, %edi	# tmp582,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 690 0
	movq	-56(%rbp), %rax	# o, tmp583
	movq	56(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_redoop, D.13216
	testq	%rax, %rax	# D.13216
	je	.L269	#,
	.loc 1 691 0
	movq	-56(%rbp), %rax	# o, tmp584
	movq	56(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_redoop, D.13216
	movzwl	34(%rax), %eax	# _285->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp585
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp585,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L270	#
.L269:
	.loc 1 693 0
	movq	-48(%rbp), %rax	# file, tmp586
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp586,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L270:
	.loc 1 694 0
	movq	-48(%rbp), %rcx	# file, tmp587
	movl	-36(%rbp), %eax	# level, tmp588
	movl	$.LC149, %edx	#,
	movq	%rcx, %rsi	# tmp587,
	movl	%eax, %edi	# tmp588,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 695 0
	movq	-56(%rbp), %rax	# o, tmp589
	movq	64(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_nextop, D.13216
	testq	%rax, %rax	# D.13216
	je	.L271	#,
	.loc 1 696 0
	movq	-56(%rbp), %rax	# o, tmp590
	movq	64(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_nextop, D.13216
	movzwl	34(%rax), %eax	# _289->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp591
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp591,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L272	#
.L271:
	.loc 1 698 0
	movq	-48(%rbp), %rax	# file, tmp592
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp592,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L272:
	.loc 1 699 0
	movq	-48(%rbp), %rcx	# file, tmp593
	movl	-36(%rbp), %eax	# level, tmp594
	movl	$.LC150, %edx	#,
	movq	%rcx, %rsi	# tmp593,
	movl	%eax, %edi	# tmp594,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 700 0
	movq	-56(%rbp), %rax	# o, tmp595
	movq	72(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_lastop, D.13216
	testq	%rax, %rax	# D.13216
	je	.L273	#,
	.loc 1 701 0
	movq	-56(%rbp), %rax	# o, tmp596
	movq	72(%rax), %rax	# MEM[(struct LOOP *)o_9(D)].op_lastop, D.13216
	movzwl	34(%rax), %eax	# _293->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp597
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp597,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 704 0
	jmp	.L263	#
.L273:
	.loc 1 703 0
	movq	-48(%rbp), %rax	# file, tmp598
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp598,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 704 0
	jmp	.L263	#
.L250:
	.loc 1 711 0
	movq	-48(%rbp), %rcx	# file, tmp599
	movl	-36(%rbp), %eax	# level, tmp600
	movl	$.LC151, %edx	#,
	movq	%rcx, %rsi	# tmp599,
	movl	%eax, %edi	# tmp600,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 712 0
	movq	-56(%rbp), %rax	# o, tmp601
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)o_9(D)].op_other, D.13216
	testq	%rax, %rax	# D.13216
	je	.L275	#,
	.loc 1 713 0
	movq	-56(%rbp), %rax	# o, tmp602
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)o_9(D)].op_other, D.13216
	movzwl	34(%rax), %eax	# _297->op_seq, D.13214
	movzwl	%ax, %edx	# D.13214, D.13215
	movq	-48(%rbp), %rax	# file, tmp603
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp603,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 716 0
	jmp	.L263	#
.L275:
	.loc 1 715 0
	movq	-48(%rbp), %rax	# file, tmp604
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp604,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 716 0
	jmp	.L263	#
.L252:
	.loc 1 721 0
	movq	-56(%rbp), %rdx	# o, tmp605
	movq	-48(%rbp), %rcx	# file, tmp606
	movl	-36(%rbp), %eax	# level, tmp607
	movq	%rcx, %rsi	# tmp606,
	movl	%eax, %edi	# tmp607,
	call	Perl_do_pmop_dump	#
	.loc 1 722 0
	jmp	.L263	#
.L258:
	.loc 1 729 0
	movq	-56(%rbp), %rax	# o, tmp608
	movzbl	37(%rax), %eax	# o_9(D)->op_private, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$64, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L277	#,
	.loc 1 730 0
	movq	-56(%rbp), %rax	# o, tmp609
	movq	24(%rax), %rdx	# o_9(D)->op_targ, D.13217
	movq	-48(%rbp), %rsi	# file, tmp610
	movl	-36(%rbp), %eax	# level, tmp611
	movq	%rdx, %rcx	# D.13217,
	movl	$.LC152, %edx	#,
	movl	%eax, %edi	# tmp611,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 731 0
	jmp	.L263	#
.L277:
	jmp	.L263	#
.L282:
	.loc 1 666 0
	nop
	jmp	.L263	#
.L283:
	.loc 1 733 0
	nop
.L263:
	.loc 1 735 0
	movq	-56(%rbp), %rax	# o, tmp612
	movzbl	36(%rax), %eax	# o_9(D)->op_flags, D.13223
	movzbl	%al, %eax	# D.13223, D.13215
	andl	$4, %eax	#, D.13215
	testl	%eax, %eax	# D.13215
	je	.L278	#,
.LBB8:
	.loc 1 737 0
	movq	-56(%rbp), %rax	# o, tmp613
	movq	40(%rax), %rax	# MEM[(struct UNOP *)o_9(D)].op_first, tmp614
	movq	%rax, -24(%rbp)	# tmp614, kid
	jmp	.L279	#
.L280:
	.loc 1 738 0 discriminator 2
	movq	-24(%rbp), %rdx	# kid, tmp615
	movq	-48(%rbp), %rcx	# file, tmp616
	movl	-36(%rbp), %eax	# level, tmp617
	movq	%rcx, %rsi	# tmp616,
	movl	%eax, %edi	# tmp617,
	call	Perl_do_op_dump	#
	.loc 1 737 0 discriminator 2
	movq	-24(%rbp), %rax	# kid, tmp618
	movq	8(%rax), %rax	# kid_1->op_sibling, tmp619
	movq	%rax, -24(%rbp)	# tmp619, kid
.L279:
	.loc 1 737 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, kid
	jne	.L280	#,
.L278:
.LBE8:
	.loc 1 740 0 is_stmt 1
	movl	-36(%rbp), %eax	# level, tmp620
	leal	-1(%rax), %ecx	#, D.13215
	movq	-48(%rbp), %rax	# file, tmp621
	movl	$.LC77, %edx	#,
	movq	%rax, %rsi	# tmp621,
	movl	%ecx, %edi	# D.13215,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 741 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_do_op_dump, .-Perl_do_op_dump
	.globl	Perl_op_dump
	.type	Perl_op_dump, @function
Perl_op_dump:
.LFB14:
	.loc 1 745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# o, o
	.loc 1 746 0
	call	Perl_PerlIO_stderr	#
	movq	-8(%rbp), %rdx	# o, tmp60
	movq	%rax, %rsi	# D.13309,
	movl	$0, %edi	#,
	call	Perl_do_op_dump	#
	.loc 1 747 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_op_dump, .-Perl_op_dump
	.section	.rodata
.LC153:
	.string	"GV_NAME = %s"
.LC154:
	.string	"-> %s"
	.text
	.globl	Perl_gv_dump
	.type	Perl_gv_dump, @function
Perl_gv_dump:
.LFB15:
	.loc 1 751 0
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
	.loc 1 754 0
	cmpq	$0, -40(%rbp)	#, gv
	jne	.L286	#,
	.loc 1 755 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# D.13310,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 756 0
	jmp	.L285	#
.L286:
	.loc 1 758 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp75, sv
	.loc 1 759 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# D.13310,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 760 0
	movq	-40(%rbp), %rsi	# gv, tmp76
	movq	-24(%rbp), %rax	# sv, tmp77
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp77,
	call	Perl_gv_fullname4	#
	.loc 1 761 0
	movq	-24(%rbp), %rax	# sv, tmp78
	movq	(%rax), %rax	# sv_3->sv_any, D.13311
	movq	(%rax), %rbx	# MEM[(struct XPV *)_5].xpv_pv, D.13312
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rcx	# D.13312,
	movl	$.LC153, %edx	#,
	movq	%rax, %rsi	# D.13310,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 762 0
	movq	-40(%rbp), %rax	# gv, tmp79
	movq	(%rax), %rax	# gv_1(D)->sv_any, D.13313
	movq	56(%rax), %rax	# _8->xgv_gp, D.13314
	movq	48(%rax), %rax	# _9->gp_egv, D.13315
	cmpq	-40(%rbp), %rax	# gv, D.13315
	je	.L288	#,
	.loc 1 763 0
	movq	-40(%rbp), %rax	# gv, tmp80
	movq	(%rax), %rax	# gv_1(D)->sv_any, D.13313
	movq	56(%rax), %rax	# _11->xgv_gp, D.13314
	movq	48(%rax), %rsi	# _12->gp_egv, D.13315
	movq	-24(%rbp), %rax	# sv, tmp81
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp81,
	call	Perl_gv_efullname4	#
	.loc 1 764 0
	movq	-24(%rbp), %rax	# sv, tmp82
	movq	(%rax), %rax	# sv_3->sv_any, D.13311
	movq	(%rax), %rbx	# MEM[(struct XPV *)_14].xpv_pv, D.13312
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rcx	# D.13312,
	movl	$.LC154, %edx	#,
	movq	%rax, %rsi	# D.13310,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L288:
	.loc 1 766 0
	call	Perl_PerlIO_stderr	#
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.13310,
	call	PerlIO_putc	#
	.loc 1 767 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC77, %edx	#,
	movq	%rax, %rsi	# D.13310,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L285:
	.loc 1 768 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_gv_dump, .-Perl_gv_dump
	.section	.rodata
.LC155:
	.string	"sv(\\0)"
.LC156:
	.string	"arylen(#)"
.LC157:
	.string	"glob(*)"
.LC158:
	.string	"pos(.)"
.LC159:
	.string	"backref(<)"
.LC160:
	.string	"overload(A)"
.LC161:
	.string	"bm(B)"
.LC162:
	.string	"regdata(D)"
.LC163:
	.string	"env(E)"
.LC164:
	.string	"isa(I)"
.LC165:
	.string	"dbfile(L)"
.LC166:
	.string	"shared(N)"
.LC167:
	.string	"tied(P)"
.LC168:
	.string	"sig(S)"
.LC169:
	.string	"uvar(U)"
.LC170:
	.string	"overload_elem(a)"
.LC171:
	.string	"overload_table(c)"
.LC172:
	.string	"regdatum(d)"
.LC173:
	.string	"envelem(e)"
.LC174:
	.string	"fm(f)"
.LC175:
	.string	"regex_global(g)"
.LC176:
	.string	"isaelem(i)"
.LC177:
	.string	"nkeys(k)"
.LC178:
	.string	"dbline(l)"
.LC179:
	.string	"mutex(m)"
.LC180:
	.string	"shared_scalar(n)"
.LC181:
	.string	"collxfrm(o)"
.LC182:
	.string	"tiedelem(p)"
.LC183:
	.string	"tiedscalar(q)"
.LC184:
	.string	"qr(r)"
.LC185:
	.string	"sigelem(s)"
.LC186:
	.string	"taint(t)"
.LC187:
	.string	"uvar_elem(v)"
.LC188:
	.string	"vec(v)"
.LC189:
	.string	"v-string(V)"
.LC190:
	.string	"utf8(w)"
.LC191:
	.string	"substr(x)"
.LC192:
	.string	"defelem(y)"
.LC193:
	.string	"ext(~)"
	.data
	.align 32
	.type	magic_names, @object
	.size	magic_names, 640
magic_names:
# type:
	.byte	0
# name:
	.zero	7
	.quad	.LC155
# type:
	.byte	35
# name:
	.zero	7
	.quad	.LC156
# type:
	.byte	42
# name:
	.zero	7
	.quad	.LC157
# type:
	.byte	46
# name:
	.zero	7
	.quad	.LC158
# type:
	.byte	60
# name:
	.zero	7
	.quad	.LC159
# type:
	.byte	65
# name:
	.zero	7
	.quad	.LC160
# type:
	.byte	66
# name:
	.zero	7
	.quad	.LC161
# type:
	.byte	68
# name:
	.zero	7
	.quad	.LC162
# type:
	.byte	69
# name:
	.zero	7
	.quad	.LC163
# type:
	.byte	73
# name:
	.zero	7
	.quad	.LC164
# type:
	.byte	76
# name:
	.zero	7
	.quad	.LC165
# type:
	.byte	78
# name:
	.zero	7
	.quad	.LC166
# type:
	.byte	80
# name:
	.zero	7
	.quad	.LC167
# type:
	.byte	83
# name:
	.zero	7
	.quad	.LC168
# type:
	.byte	85
# name:
	.zero	7
	.quad	.LC169
# type:
	.byte	97
# name:
	.zero	7
	.quad	.LC170
# type:
	.byte	99
# name:
	.zero	7
	.quad	.LC171
# type:
	.byte	100
# name:
	.zero	7
	.quad	.LC172
# type:
	.byte	101
# name:
	.zero	7
	.quad	.LC173
# type:
	.byte	102
# name:
	.zero	7
	.quad	.LC174
# type:
	.byte	103
# name:
	.zero	7
	.quad	.LC175
# type:
	.byte	105
# name:
	.zero	7
	.quad	.LC176
# type:
	.byte	107
# name:
	.zero	7
	.quad	.LC177
# type:
	.byte	108
# name:
	.zero	7
	.quad	.LC178
# type:
	.byte	109
# name:
	.zero	7
	.quad	.LC179
# type:
	.byte	110
# name:
	.zero	7
	.quad	.LC180
# type:
	.byte	111
# name:
	.zero	7
	.quad	.LC181
# type:
	.byte	112
# name:
	.zero	7
	.quad	.LC182
# type:
	.byte	113
# name:
	.zero	7
	.quad	.LC183
# type:
	.byte	114
# name:
	.zero	7
	.quad	.LC184
# type:
	.byte	115
# name:
	.zero	7
	.quad	.LC185
# type:
	.byte	116
# name:
	.zero	7
	.quad	.LC186
# type:
	.byte	117
# name:
	.zero	7
	.quad	.LC187
# type:
	.byte	118
# name:
	.zero	7
	.quad	.LC188
# type:
	.byte	86
# name:
	.zero	7
	.quad	.LC189
# type:
	.byte	119
# name:
	.zero	7
	.quad	.LC190
# type:
	.byte	120
# name:
	.zero	7
	.quad	.LC191
# type:
	.byte	121
# name:
	.zero	7
	.quad	.LC192
# type:
	.byte	126
# name:
	.zero	7
	.quad	.LC193
# type:
	.byte	0
# name:
	.zero	7
	.quad	0
	.section	.rodata
.LC194:
	.string	"  MAGIC = 0x%lx\n"
.LC195:
	.string	"sv"
.LC196:
	.string	"env"
.LC197:
	.string	"envelem"
.LC198:
	.string	"sig"
.LC199:
	.string	"sigelem"
.LC200:
	.string	"pack"
.LC201:
	.string	"packelem"
.LC202:
	.string	"dbline"
.LC203:
	.string	"isa"
.LC204:
	.string	"arylen"
.LC205:
	.string	"glob"
.LC206:
	.string	"mglob"
.LC207:
	.string	"nkeys"
.LC208:
	.string	"taint"
.LC209:
	.string	"substr"
.LC210:
	.string	"vec"
.LC211:
	.string	"pos"
.LC212:
	.string	"bm"
.LC213:
	.string	"fm"
.LC214:
	.string	"uvar"
.LC215:
	.string	"defelem"
.LC216:
	.string	"amagic"
.LC217:
	.string	"amagicelem"
.LC218:
	.string	"backref"
.LC219:
	.string	"utf8"
.LC220:
	.string	"    MG_VIRTUAL = &PL_vtbl_%s\n"
.LC221:
	.string	"    MG_VIRTUAL = 0x%lx\n"
.LC222:
	.string	"    MG_VIRTUAL = 0\n"
.LC223:
	.string	"    MG_PRIVATE = %d\n"
.LC224:
	.string	"    MG_TYPE = PERL_MAGIC_%s\n"
.LC225:
	.string	"    MG_TYPE = UNKNOWN(\\%o)\n"
.LC226:
	.string	"    MG_FLAGS = 0x%02X\n"
.LC227:
	.string	"      TAINTEDDIR\n"
.LC228:
	.string	"      REFCOUNTED\n"
.LC229:
	.string	"      GSKIP\n"
.LC230:
	.string	"      MINMATCH\n"
.LC231:
	.string	"    MG_OBJ = 0x%lx\n"
.LC232:
	.string	"    MG_LEN = %ld\n"
.LC233:
	.string	"    MG_PTR = 0x%lx"
.LC234:
	.string	" %s"
.LC235:
	.string	" => HEf_SVKEY\n"
.LC236:
	.string	" ???? - please notify IZ"
.LC237:
	.string	"      %2ld: %lu -> %lu\n"
	.text
	.globl	Perl_do_magic_dump
	.type	Perl_do_magic_dump, @function
Perl_do_magic_dump:
.LFB16:
	.loc 1 821 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -68(%rbp)	# level, level
	movq	%rsi, -80(%rbp)	# file, file
	movq	%rdx, -88(%rbp)	# mg, mg
	movl	%ecx, -72(%rbp)	# nest, nest
	movl	%r8d, -92(%rbp)	# maxnest, maxnest
	movl	%r9d, %eax	# dumpops, tmp124
	movb	%al, -96(%rbp)	# tmp124, dumpops
	.loc 1 822 0
	jmp	.L290	#
.L341:
	.loc 1 823 0
	movq	-88(%rbp), %rdx	# mg, mg.23
	movq	-80(%rbp), %rsi	# file, tmp125
	movl	-68(%rbp), %eax	# level, tmp126
	movq	%rdx, %rcx	# mg.23,
	movl	$.LC194, %edx	#,
	movl	%eax, %edi	# tmp126,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 825 0
	movq	-88(%rbp), %rax	# mg, tmp127
	movq	8(%rax), %rax	# mg_1->mg_virtual, D.13357
	testq	%rax, %rax	# D.13357
	je	.L291	#,
.LBB9:
	.loc 1 826 0
	movq	-88(%rbp), %rax	# mg, tmp128
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp129
	movq	%rax, -24(%rbp)	# tmp129, v
	.loc 1 827 0
	movq	$0, -48(%rbp)	#, s
	.loc 1 828 0
	cmpq	$PL_vtbl_sv, -24(%rbp)	#, v
	jne	.L292	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movq	$.LC195, -48(%rbp)	#, s
	jmp	.L293	#
.L292:
	.loc 1 829 0 is_stmt 1
	cmpq	$PL_vtbl_env, -24(%rbp)	#, v
	jne	.L294	#,
	.loc 1 829 0 is_stmt 0 discriminator 1
	movq	$.LC196, -48(%rbp)	#, s
	jmp	.L293	#
.L294:
	.loc 1 830 0 is_stmt 1
	cmpq	$PL_vtbl_envelem, -24(%rbp)	#, v
	jne	.L295	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	movq	$.LC197, -48(%rbp)	#, s
	jmp	.L293	#
.L295:
	.loc 1 831 0 is_stmt 1
	cmpq	$PL_vtbl_sig, -24(%rbp)	#, v
	jne	.L296	#,
	.loc 1 831 0 is_stmt 0 discriminator 1
	movq	$.LC198, -48(%rbp)	#, s
	jmp	.L293	#
.L296:
	.loc 1 832 0 is_stmt 1
	cmpq	$PL_vtbl_sigelem, -24(%rbp)	#, v
	jne	.L297	#,
	.loc 1 832 0 is_stmt 0 discriminator 1
	movq	$.LC199, -48(%rbp)	#, s
	jmp	.L293	#
.L297:
	.loc 1 833 0 is_stmt 1
	cmpq	$PL_vtbl_pack, -24(%rbp)	#, v
	jne	.L298	#,
	.loc 1 833 0 is_stmt 0 discriminator 1
	movq	$.LC200, -48(%rbp)	#, s
	jmp	.L293	#
.L298:
	.loc 1 834 0 is_stmt 1
	cmpq	$PL_vtbl_packelem, -24(%rbp)	#, v
	jne	.L299	#,
	.loc 1 834 0 is_stmt 0 discriminator 1
	movq	$.LC201, -48(%rbp)	#, s
	jmp	.L293	#
.L299:
	.loc 1 835 0 is_stmt 1
	cmpq	$PL_vtbl_dbline, -24(%rbp)	#, v
	jne	.L300	#,
	.loc 1 835 0 is_stmt 0 discriminator 1
	movq	$.LC202, -48(%rbp)	#, s
	jmp	.L293	#
.L300:
	.loc 1 836 0 is_stmt 1
	cmpq	$PL_vtbl_isa, -24(%rbp)	#, v
	jne	.L301	#,
	.loc 1 836 0 is_stmt 0 discriminator 1
	movq	$.LC203, -48(%rbp)	#, s
	jmp	.L293	#
.L301:
	.loc 1 837 0 is_stmt 1
	cmpq	$PL_vtbl_arylen, -24(%rbp)	#, v
	jne	.L302	#,
	.loc 1 837 0 is_stmt 0 discriminator 1
	movq	$.LC204, -48(%rbp)	#, s
	jmp	.L293	#
.L302:
	.loc 1 838 0 is_stmt 1
	cmpq	$PL_vtbl_glob, -24(%rbp)	#, v
	jne	.L303	#,
	.loc 1 838 0 is_stmt 0 discriminator 1
	movq	$.LC205, -48(%rbp)	#, s
	jmp	.L293	#
.L303:
	.loc 1 839 0 is_stmt 1
	cmpq	$PL_vtbl_mglob, -24(%rbp)	#, v
	jne	.L304	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	movq	$.LC206, -48(%rbp)	#, s
	jmp	.L293	#
.L304:
	.loc 1 840 0 is_stmt 1
	cmpq	$PL_vtbl_nkeys, -24(%rbp)	#, v
	jne	.L305	#,
	.loc 1 840 0 is_stmt 0 discriminator 1
	movq	$.LC207, -48(%rbp)	#, s
	jmp	.L293	#
.L305:
	.loc 1 841 0 is_stmt 1
	cmpq	$PL_vtbl_taint, -24(%rbp)	#, v
	jne	.L306	#,
	.loc 1 841 0 is_stmt 0 discriminator 1
	movq	$.LC208, -48(%rbp)	#, s
	jmp	.L293	#
.L306:
	.loc 1 842 0 is_stmt 1
	cmpq	$PL_vtbl_substr, -24(%rbp)	#, v
	jne	.L307	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	movq	$.LC209, -48(%rbp)	#, s
	jmp	.L293	#
.L307:
	.loc 1 843 0 is_stmt 1
	cmpq	$PL_vtbl_vec, -24(%rbp)	#, v
	jne	.L308	#,
	.loc 1 843 0 is_stmt 0 discriminator 1
	movq	$.LC210, -48(%rbp)	#, s
	jmp	.L293	#
.L308:
	.loc 1 844 0 is_stmt 1
	cmpq	$PL_vtbl_pos, -24(%rbp)	#, v
	jne	.L309	#,
	.loc 1 844 0 is_stmt 0 discriminator 1
	movq	$.LC211, -48(%rbp)	#, s
	jmp	.L293	#
.L309:
	.loc 1 845 0 is_stmt 1
	cmpq	$PL_vtbl_bm, -24(%rbp)	#, v
	jne	.L310	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	movq	$.LC212, -48(%rbp)	#, s
	jmp	.L293	#
.L310:
	.loc 1 846 0 is_stmt 1
	cmpq	$PL_vtbl_fm, -24(%rbp)	#, v
	jne	.L311	#,
	.loc 1 846 0 is_stmt 0 discriminator 1
	movq	$.LC213, -48(%rbp)	#, s
	jmp	.L293	#
.L311:
	.loc 1 847 0 is_stmt 1
	cmpq	$PL_vtbl_uvar, -24(%rbp)	#, v
	jne	.L312	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movq	$.LC214, -48(%rbp)	#, s
	jmp	.L293	#
.L312:
	.loc 1 848 0 is_stmt 1
	cmpq	$PL_vtbl_defelem, -24(%rbp)	#, v
	jne	.L313	#,
	.loc 1 848 0 is_stmt 0 discriminator 1
	movq	$.LC215, -48(%rbp)	#, s
	jmp	.L293	#
.L313:
	.loc 1 852 0 is_stmt 1
	cmpq	$PL_vtbl_amagic, -24(%rbp)	#, v
	jne	.L314	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	movq	$.LC216, -48(%rbp)	#, s
	jmp	.L293	#
.L314:
	.loc 1 853 0 is_stmt 1
	cmpq	$PL_vtbl_amagicelem, -24(%rbp)	#, v
	jne	.L315	#,
	.loc 1 853 0 is_stmt 0 discriminator 1
	movq	$.LC217, -48(%rbp)	#, s
	jmp	.L293	#
.L315:
	.loc 1 854 0 is_stmt 1
	cmpq	$PL_vtbl_backref, -24(%rbp)	#, v
	jne	.L316	#,
	.loc 1 854 0 is_stmt 0 discriminator 1
	movq	$.LC218, -48(%rbp)	#, s
	jmp	.L293	#
.L316:
	.loc 1 855 0 is_stmt 1
	cmpq	$PL_vtbl_utf8, -24(%rbp)	#, v
	jne	.L293	#,
	.loc 1 855 0 is_stmt 0 discriminator 1
	movq	$.LC219, -48(%rbp)	#, s
.L293:
	.loc 1 856 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, s
	je	.L317	#,
	.loc 1 857 0
	movq	-48(%rbp), %rdx	# s, tmp130
	movq	-80(%rbp), %rsi	# file, tmp131
	movl	-68(%rbp), %eax	# level, tmp132
	movq	%rdx, %rcx	# tmp130,
	movl	$.LC220, %edx	#,
	movl	%eax, %edi	# tmp132,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L319	#
.L317:
	.loc 1 859 0
	movq	-24(%rbp), %rdx	# v, v.24
	movq	-80(%rbp), %rsi	# file, tmp133
	movl	-68(%rbp), %eax	# level, tmp134
	movq	%rdx, %rcx	# v.24,
	movl	$.LC221, %edx	#,
	movl	%eax, %edi	# tmp134,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.LBE9:
	jmp	.L319	#
.L291:
	.loc 1 862 0
	movq	-80(%rbp), %rcx	# file, tmp135
	movl	-68(%rbp), %eax	# level, tmp136
	movl	$.LC222, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movl	%eax, %edi	# tmp136,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L319:
	.loc 1 864 0
	movq	-88(%rbp), %rax	# mg, tmp137
	movzwl	16(%rax), %eax	# mg_1->mg_private, D.13358
	testw	%ax, %ax	# D.13358
	je	.L320	#,
	.loc 1 865 0
	movq	-88(%rbp), %rax	# mg, tmp138
	movzwl	16(%rax), %eax	# mg_1->mg_private, D.13358
	movzwl	%ax, %edx	# D.13358, D.13359
	movq	-80(%rbp), %rsi	# file, tmp139
	movl	-68(%rbp), %eax	# level, tmp140
	movl	%edx, %ecx	# D.13359,
	movl	$.LC223, %edx	#,
	movl	%eax, %edi	# tmp140,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L320:
.LBB10:
	.loc 1 869 0
	movq	$0, -40(%rbp)	#, name
	.loc 1 870 0
	movl	$0, -52(%rbp)	#, n
	jmp	.L321	#
.L324:
	.loc 1 871 0
	movq	-88(%rbp), %rax	# mg, tmp141
	movzbl	18(%rax), %edx	# mg_1->mg_type, D.13361
	movl	-52(%rbp), %eax	# n, tmp143
	cltq
	salq	$4, %rax	#, tmp144
	addq	$magic_names, %rax	#, tmp145
	movzbl	(%rax), %eax	# magic_names[n_3].type, D.13361
	cmpb	%al, %dl	# D.13361, D.13361
	jne	.L322	#,
	.loc 1 872 0
	movl	-52(%rbp), %eax	# n, tmp147
	cltq
	salq	$4, %rax	#, tmp148
	addq	$magic_names, %rax	#, tmp149
	movq	8(%rax), %rax	# magic_names[n_3].name, tmp150
	movq	%rax, -40(%rbp)	# tmp150, name
	.loc 1 873 0
	jmp	.L323	#
.L322:
	.loc 1 870 0
	addl	$1, -52(%rbp)	#, n
.L321:
	.loc 1 870 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# n, tmp152
	cltq
	salq	$4, %rax	#, tmp153
	addq	$magic_names, %rax	#, tmp154
	movq	8(%rax), %rax	# magic_names[n_3].name, D.13360
	testq	%rax, %rax	# D.13360
	jne	.L324	#,
.L323:
	.loc 1 876 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, name
	je	.L325	#,
	.loc 1 877 0
	movq	-40(%rbp), %rdx	# name, tmp155
	movq	-80(%rbp), %rsi	# file, tmp156
	movl	-68(%rbp), %eax	# level, tmp157
	movq	%rdx, %rcx	# tmp155,
	movl	$.LC224, %edx	#,
	movl	%eax, %edi	# tmp157,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L326	#
.L325:
	.loc 1 881 0
	movq	-88(%rbp), %rax	# mg, tmp158
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.13361
	.loc 1 880 0
	movsbl	%al, %edx	# D.13361, D.13359
	movq	-80(%rbp), %rsi	# file, tmp159
	movl	-68(%rbp), %eax	# level, tmp160
	movl	%edx, %ecx	# D.13359,
	movl	$.LC225, %edx	#,
	movl	%eax, %edi	# tmp160,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L326:
.LBE10:
	.loc 1 884 0
	movq	-88(%rbp), %rax	# mg, tmp161
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	testb	%al, %al	# D.13362
	je	.L327	#,
	.loc 1 885 0
	movq	-88(%rbp), %rax	# mg, tmp162
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %edx	# D.13362, D.13359
	movq	-80(%rbp), %rsi	# file, tmp163
	movl	-68(%rbp), %eax	# level, tmp164
	movl	%edx, %ecx	# D.13359,
	movl	$.LC226, %edx	#,
	movl	%eax, %edi	# tmp164,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 886 0
	movq	-88(%rbp), %rax	# mg, tmp165
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.13361
	cmpb	$101, %al	#, D.13361
	jne	.L328	#,
	.loc 1 887 0 discriminator 1
	movq	-88(%rbp), %rax	# mg, tmp166
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13359
	andl	$1, %eax	#, D.13359
	.loc 1 886 0 discriminator 1
	testl	%eax, %eax	# D.13359
	je	.L328	#,
	.loc 1 888 0
	movq	-80(%rbp), %rcx	# file, tmp167
	movl	-68(%rbp), %eax	# level, tmp168
	movl	$.LC227, %edx	#,
	movq	%rcx, %rsi	# tmp167,
	movl	%eax, %edi	# tmp168,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L328:
	.loc 1 889 0
	movq	-88(%rbp), %rax	# mg, tmp169
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13359
	andl	$2, %eax	#, D.13359
	testl	%eax, %eax	# D.13359
	je	.L329	#,
	.loc 1 890 0
	movq	-80(%rbp), %rcx	# file, tmp170
	movl	-68(%rbp), %eax	# level, tmp171
	movl	$.LC228, %edx	#,
	movq	%rcx, %rsi	# tmp170,
	movl	%eax, %edi	# tmp171,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L329:
	.loc 1 891 0
	movq	-88(%rbp), %rax	# mg, tmp172
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13359
	andl	$4, %eax	#, D.13359
	testl	%eax, %eax	# D.13359
	je	.L330	#,
	.loc 1 892 0
	movq	-80(%rbp), %rcx	# file, tmp173
	movl	-68(%rbp), %eax	# level, tmp174
	movl	$.LC229, %edx	#,
	movq	%rcx, %rsi	# tmp173,
	movl	%eax, %edi	# tmp174,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L330:
	.loc 1 893 0
	movq	-88(%rbp), %rax	# mg, tmp175
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.13361
	cmpb	$103, %al	#, D.13361
	jne	.L327	#,
	.loc 1 894 0 discriminator 1
	movq	-88(%rbp), %rax	# mg, tmp176
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13359
	andl	$1, %eax	#, D.13359
	.loc 1 893 0 discriminator 1
	testl	%eax, %eax	# D.13359
	je	.L327	#,
	.loc 1 895 0
	movq	-80(%rbp), %rcx	# file, tmp177
	movl	-68(%rbp), %eax	# level, tmp178
	movl	$.LC230, %edx	#,
	movq	%rcx, %rsi	# tmp177,
	movl	%eax, %edi	# tmp178,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L327:
	.loc 1 897 0
	movq	-88(%rbp), %rax	# mg, tmp179
	movq	24(%rax), %rax	# mg_1->mg_obj, D.13363
	testq	%rax, %rax	# D.13363
	je	.L331	#,
	.loc 1 898 0
	movq	-88(%rbp), %rax	# mg, tmp180
	movq	24(%rax), %rax	# mg_1->mg_obj, D.13363
	movq	%rax, %rdx	# D.13363, D.13364
	movq	-80(%rbp), %rsi	# file, tmp181
	movl	-68(%rbp), %eax	# level, tmp182
	movq	%rdx, %rcx	# D.13364,
	movl	$.LC231, %edx	#,
	movl	%eax, %edi	# tmp182,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 899 0
	movq	-88(%rbp), %rax	# mg, tmp183
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13359
	andl	$2, %eax	#, D.13359
	testl	%eax, %eax	# D.13359
	je	.L331	#,
	.loc 1 900 0
	movsbl	-96(%rbp), %r9d	# dumpops, D.13359
	movl	-72(%rbp), %eax	# nest, tmp184
	leal	1(%rax), %esi	#, D.13359
	movq	-88(%rbp), %rax	# mg, tmp185
	movq	24(%rax), %rdx	# mg_1->mg_obj, D.13363
	movl	-68(%rbp), %eax	# level, tmp186
	leal	2(%rax), %edi	#, D.13359
	movl	-92(%rbp), %r8d	# maxnest, tmp187
	movq	-80(%rbp), %rax	# file, tmp188
	movq	16(%rbp), %rcx	# pvlim, tmp189
	movq	%rcx, (%rsp)	# tmp189,
	movl	%esi, %ecx	# D.13359,
	movq	%rax, %rsi	# tmp188,
	call	Perl_do_sv_dump	#
.L331:
	.loc 1 902 0
	movq	-88(%rbp), %rax	# mg, tmp190
	movl	40(%rax), %eax	# mg_1->mg_len, D.13359
	testl	%eax, %eax	# D.13359
	je	.L332	#,
	.loc 1 903 0
	movq	-88(%rbp), %rax	# mg, tmp191
	movl	40(%rax), %eax	# mg_1->mg_len, D.13359
	movslq	%eax, %rdx	# D.13359, D.13365
	movq	-80(%rbp), %rsi	# file, tmp192
	movl	-68(%rbp), %eax	# level, tmp193
	movq	%rdx, %rcx	# D.13365,
	movl	$.LC232, %edx	#,
	movl	%eax, %edi	# tmp193,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L332:
	.loc 1 904 0
	movq	-88(%rbp), %rax	# mg, tmp194
	movq	32(%rax), %rax	# mg_1->mg_ptr, D.13360
	testq	%rax, %rax	# D.13360
	je	.L333	#,
	.loc 1 905 0
	movq	-88(%rbp), %rax	# mg, tmp195
	movq	32(%rax), %rax	# mg_1->mg_ptr, D.13360
	movq	%rax, %rdx	# D.13360, D.13364
	movq	-80(%rbp), %rsi	# file, tmp196
	movl	-68(%rbp), %eax	# level, tmp197
	movq	%rdx, %rcx	# D.13364,
	movl	$.LC233, %edx	#,
	movl	%eax, %edi	# tmp197,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 906 0
	movq	-88(%rbp), %rax	# mg, tmp198
	movl	40(%rax), %eax	# mg_1->mg_len, D.13359
	testl	%eax, %eax	# D.13359
	js	.L334	#,
	.loc 1 907 0
	movq	-88(%rbp), %rax	# mg, tmp199
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.13361
	cmpb	$119, %al	#, D.13361
	je	.L336	#,
.LBB11:
	.loc 1 908 0
	movl	$0, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -16(%rbp)	# tmp200, sv
	.loc 1 909 0
	movq	-88(%rbp), %rax	# mg, tmp201
	movl	40(%rax), %eax	# mg_1->mg_len, D.13359
	movslq	%eax, %rdx	# D.13359, D.13364
	movq	-88(%rbp), %rax	# mg, tmp202
	movq	32(%rax), %rsi	# mg_1->mg_ptr, D.13360
	movq	-16(%rbp), %rax	# sv, tmp203
	movq	16(%rbp), %r8	# pvlim,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp203,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13360
	movq	-80(%rbp), %rax	# file, tmp204
	movl	$.LC234, %esi	#,
	movq	%rax, %rdi	# tmp204,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 910 0
	movq	-16(%rbp), %rax	# sv, tmp205
	movq	%rax, %rdi	# tmp205,
	call	Perl_sv_free	#
	jmp	.L336	#
.L334:
.LBE11:
	.loc 1 913 0
	movq	-88(%rbp), %rax	# mg, tmp206
	movl	40(%rax), %eax	# mg_1->mg_len, D.13359
	cmpl	$-2, %eax	#, D.13359
	jne	.L337	#,
	.loc 1 914 0
	movq	-80(%rbp), %rax	# file, tmp207
	movl	$.LC235, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	PerlIO_puts	#
	.loc 1 915 0
	movsbl	-96(%rbp), %r9d	# dumpops, D.13359
	movl	-72(%rbp), %eax	# nest, tmp208
	leal	1(%rax), %esi	#, D.13359
	movq	-88(%rbp), %rax	# mg, tmp209
	movq	32(%rax), %rdx	# mg_1->mg_ptr, D.13360
	movl	-68(%rbp), %eax	# level, tmp210
	leal	2(%rax), %edi	#, D.13359
	movl	-92(%rbp), %r8d	# maxnest, tmp211
	movq	-80(%rbp), %rax	# file, tmp212
	movq	16(%rbp), %rcx	# pvlim, tmp213
	movq	%rcx, (%rsp)	# tmp213,
	movl	%esi, %ecx	# D.13359,
	movq	%rax, %rsi	# tmp212,
	call	Perl_do_sv_dump	#
	.loc 1 916 0
	jmp	.L338	#
.L337:
	.loc 1 919 0
	movq	-80(%rbp), %rax	# file, tmp214
	movl	$.LC236, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	PerlIO_puts	#
.L336:
	.loc 1 920 0
	movq	-80(%rbp), %rax	# file, tmp215
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	PerlIO_putc	#
.L333:
	.loc 1 922 0
	movq	-88(%rbp), %rax	# mg, tmp216
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.13361
	cmpb	$119, %al	#, D.13361
	jne	.L338	#,
.LBB12:
	.loc 1 923 0
	movq	-88(%rbp), %rax	# mg, tmp217
	movq	32(%rax), %rax	# mg_1->mg_ptr, tmp218
	movq	%rax, -8(%rbp)	# tmp218, cache
	.loc 1 924 0
	cmpq	$0, -8(%rbp)	#, cache
	je	.L338	#,
.LBB13:
	.loc 1 926 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L339	#
.L340:
	.loc 1 931 0 discriminator 2
	movq	-32(%rbp), %rax	# i, tmp219
	salq	$4, %rax	#, D.13365
	leaq	8(%rax), %rdx	#, D.13366
	movq	-8(%rbp), %rax	# cache, tmp220
	addq	%rdx, %rax	# D.13366, D.13367
	.loc 1 927 0 discriminator 2
	movq	(%rax), %rdi	# *_106, D.13364
	.loc 1 930 0 discriminator 2
	movq	-32(%rbp), %rax	# i, tmp221
	salq	$4, %rax	#, D.13365
	movq	%rax, %rdx	# D.13365, D.13366
	movq	-8(%rbp), %rax	# cache, tmp222
	addq	%rdx, %rax	# D.13366, D.13367
	.loc 1 927 0 discriminator 2
	movq	(%rax), %rcx	# *_110, D.13364
	movq	-32(%rbp), %rdx	# i, tmp223
	movq	-80(%rbp), %rsi	# file, tmp224
	movl	-68(%rbp), %eax	# level, tmp225
	movq	%rdi, %r9	# D.13364,
	movq	%rcx, %r8	# D.13364,
	movq	%rdx, %rcx	# tmp223,
	movl	$.LC237, %edx	#,
	movl	%eax, %edi	# tmp225,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 926 0 discriminator 2
	addq	$1, -32(%rbp)	#, i
.L339:
	.loc 1 926 0 is_stmt 0 discriminator 1
	cmpq	$1, -32(%rbp)	#, i
	jle	.L340	#,
.L338:
.LBE13:
.LBE12:
	.loc 1 822 0 is_stmt 1
	movq	-88(%rbp), %rax	# mg, tmp226
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp227
	movq	%rax, -88(%rbp)	# tmp227, mg
.L290:
	.loc 1 822 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, mg
	jne	.L341	#,
	.loc 1 935 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_do_magic_dump, .-Perl_do_magic_dump
	.globl	Perl_magic_dump
	.type	Perl_magic_dump, @function
Perl_magic_dump:
.LFB17:
	.loc 1 939 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mg, mg
	.loc 1 940 0
	call	Perl_PerlIO_stderr	#
	movq	-8(%rbp), %rdx	# mg, tmp60
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.13412,
	movl	$0, %edi	#,
	call	Perl_do_magic_dump	#
	.loc 1 941 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_magic_dump, .-Perl_magic_dump
	.section	.rodata
.LC238:
	.string	"%s = 0x%lx"
.LC239:
	.string	"\t\"%s\"\n"
	.text
	.globl	Perl_do_hv_dump
	.type	Perl_do_hv_dump, @function
Perl_do_hv_dump:
.LFB18:
	.loc 1 945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# level, level
	movq	%rsi, -16(%rbp)	# file, file
	movq	%rdx, -24(%rbp)	# name, name
	movq	%rcx, -32(%rbp)	# sv, sv
	.loc 1 946 0
	movq	-32(%rbp), %rcx	# sv, sv.25
	movq	-24(%rbp), %rdx	# name, tmp64
	movq	-16(%rbp), %rsi	# file, tmp65
	movl	-4(%rbp), %eax	# level, tmp66
	movq	%rcx, %r8	# sv.25,
	movq	%rdx, %rcx	# tmp64,
	movl	$.LC238, %edx	#,
	movl	%eax, %edi	# tmp66,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 947 0
	cmpq	$0, -32(%rbp)	#, sv
	je	.L344	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp67
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13413
	movq	80(%rax), %rax	# _6->xhv_name, D.13414
	testq	%rax, %rax	# D.13414
	je	.L344	#,
	.loc 1 948 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp68
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13413
	movq	80(%rax), %rdx	# _8->xhv_name, D.13414
	movq	-16(%rbp), %rax	# file, tmp69
	movl	$.LC239, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L343	#
.L344:
	.loc 1 950 0
	movq	-16(%rbp), %rax	# file, tmp70
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	PerlIO_putc	#
.L343:
	.loc 1 951 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_do_hv_dump, .-Perl_do_hv_dump
	.globl	Perl_do_gv_dump
	.type	Perl_do_gv_dump, @function
Perl_do_gv_dump:
.LFB19:
	.loc 1 955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# level, level
	movq	%rsi, -16(%rbp)	# file, file
	movq	%rdx, -24(%rbp)	# name, name
	movq	%rcx, -32(%rbp)	# sv, sv
	.loc 1 956 0
	movq	-32(%rbp), %rcx	# sv, sv.26
	movq	-24(%rbp), %rdx	# name, tmp64
	movq	-16(%rbp), %rsi	# file, tmp65
	movl	-4(%rbp), %eax	# level, tmp66
	movq	%rcx, %r8	# sv.26,
	movq	%rdx, %rcx	# tmp64,
	movl	$.LC238, %edx	#,
	movl	%eax, %edi	# tmp66,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 957 0
	cmpq	$0, -32(%rbp)	#, sv
	je	.L347	#,
	.loc 1 957 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp67
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13417
	movq	64(%rax), %rax	# _6->xgv_name, D.13418
	testq	%rax, %rax	# D.13418
	je	.L347	#,
	.loc 1 958 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp68
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13417
	movq	64(%rax), %rdx	# _8->xgv_name, D.13418
	movq	-16(%rbp), %rax	# file, tmp69
	movl	$.LC239, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L346	#
.L347:
	.loc 1 960 0
	movq	-16(%rbp), %rax	# file, tmp70
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	PerlIO_putc	#
.L346:
	.loc 1 961 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_do_gv_dump, .-Perl_do_gv_dump
	.section	.rodata
.LC240:
	.string	"\t\""
.LC241:
	.string	"%s\" :: \""
.LC242:
	.string	"%s\"\n"
	.text
	.globl	Perl_do_gvgv_dump
	.type	Perl_do_gvgv_dump, @function
Perl_do_gvgv_dump:
.LFB20:
	.loc 1 965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# level, level
	movq	%rsi, -16(%rbp)	# file, file
	movq	%rdx, -24(%rbp)	# name, name
	movq	%rcx, -32(%rbp)	# sv, sv
	.loc 1 966 0
	movq	-32(%rbp), %rcx	# sv, sv.27
	movq	-24(%rbp), %rdx	# name, tmp74
	movq	-16(%rbp), %rsi	# file, tmp75
	movl	-4(%rbp), %eax	# level, tmp76
	movq	%rcx, %r8	# sv.27,
	movq	%rdx, %rcx	# tmp74,
	movl	$.LC238, %edx	#,
	movl	%eax, %edi	# tmp76,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 967 0
	cmpq	$0, -32(%rbp)	#, sv
	je	.L350	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp77
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13419
	movq	64(%rax), %rax	# _6->xgv_name, D.13420
	testq	%rax, %rax	# D.13420
	je	.L350	#,
	.loc 1 968 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp78
	movl	$.LC240, %esi	#,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 969 0
	movq	-32(%rbp), %rax	# sv, tmp79
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13419
	movq	80(%rax), %rax	# _8->xgv_stash, D.13421
	testq	%rax, %rax	# D.13421
	je	.L351	#,
	.loc 1 969 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sv, tmp80
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13419
	movq	80(%rax), %rax	# _10->xgv_stash, D.13421
	movq	(%rax), %rax	# _11->sv_any, D.13422
	movq	80(%rax), %rax	# _12->xhv_name, D.13420
	testq	%rax, %rax	# D.13420
	je	.L351	#,
	.loc 1 970 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, tmp81
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13419
	movq	80(%rax), %rax	# _14->xgv_stash, D.13421
	movq	(%rax), %rax	# _15->sv_any, D.13422
	movq	80(%rax), %rdx	# _16->xhv_name, D.13420
	movq	-16(%rbp), %rax	# file, tmp82
	movl	$.LC241, %esi	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L351:
	.loc 1 971 0
	movq	-32(%rbp), %rax	# sv, tmp83
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.13419
	movq	64(%rax), %rdx	# _18->xgv_name, D.13420
	movq	-16(%rbp), %rax	# file, tmp84
	movl	$.LC242, %esi	#,
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	jmp	.L349	#
.L350:
	.loc 1 974 0
	movq	-16(%rbp), %rax	# file, tmp85
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	PerlIO_putc	#
.L349:
	.loc 1 975 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_do_gvgv_dump, .-Perl_do_gvgv_dump
	.section	.rodata
.LC243:
	.string	"SV = 0\n"
	.align 8
.LC244:
	.string	"(0x%lx) at 0x%lx\n%*s  REFCNT = %ld\n%*s  FLAGS = ("
.LC245:
	.string	"PADBUSY,"
.LC246:
	.string	"PADTMP,"
.LC247:
	.string	"PADMY,"
.LC248:
	.string	"TEMP,"
.LC249:
	.string	"OBJECT,"
.LC250:
	.string	"GMG,"
.LC251:
	.string	"SMG,"
.LC252:
	.string	"RMG,"
.LC253:
	.string	"IOK,"
.LC254:
	.string	"NOK,"
.LC255:
	.string	"POK,"
.LC256:
	.string	"ROK,"
.LC257:
	.string	"WEAKREF,"
.LC258:
	.string	"OOK,"
.LC259:
	.string	"FAKE,"
.LC260:
	.string	"READONLY,"
.LC261:
	.string	"OVERLOAD,"
.LC262:
	.string	"pIOK,"
.LC263:
	.string	"pNOK,"
.LC264:
	.string	"pPOK,"
.LC265:
	.string	"SCREAM,"
.LC266:
	.string	"ANON,"
.LC267:
	.string	"UNIQUE,"
.LC268:
	.string	"CLONE,"
.LC269:
	.string	"CLONED,"
.LC270:
	.string	"CONST,"
.LC271:
	.string	"NODEBUG,"
.LC272:
	.string	"COMPILED,"
.LC273:
	.string	"LVALUE,"
.LC274:
	.string	"METHOD,"
.LC275:
	.string	"LOCKED,"
.LC276:
	.string	"WEAKOUTSIDE,"
.LC277:
	.string	"SHAREKEYS,"
.LC278:
	.string	"LAZYDEL,"
.LC279:
	.string	"HASKFLAGS,"
.LC280:
	.string	"REHASH,"
.LC281:
	.string	"CLONEABLE,"
.LC282:
	.string	"INTRO,"
.LC283:
	.string	"MULTI,"
.LC284:
	.string	"ASSUMECV,"
.LC285:
	.string	"IN_PAD,"
.LC286:
	.string	"OUR,"
.LC287:
	.string	"IMPORT"
.LC288:
	.string	"ALL,"
.LC289:
	.string	" SV"
.LC290:
	.string	" AV"
.LC291:
	.string	" HV"
.LC292:
	.string	" CV"
.LC293:
	.string	" ),"
.LC294:
	.string	"EVALED,"
.LC295:
	.string	"IsUV,"
.LC296:
	.string	"TAIL,"
.LC297:
	.string	"VALID,"
.LC298:
	.string	"TYPED,"
.LC299:
	.string	"UTF8"
.LC300:
	.string	"SV = "
.LC301:
	.string	"NULL%s\n"
.LC302:
	.string	"IV%s\n"
.LC303:
	.string	"NV%s\n"
.LC304:
	.string	"RV%s\n"
.LC305:
	.string	"PV%s\n"
.LC306:
	.string	"PVIV%s\n"
.LC307:
	.string	"PVNV%s\n"
.LC308:
	.string	"PVBM%s\n"
.LC309:
	.string	"PVMG%s\n"
.LC310:
	.string	"PVLV%s\n"
.LC311:
	.string	"PVAV%s\n"
.LC312:
	.string	"PVHV%s\n"
.LC313:
	.string	"PVCV%s\n"
.LC314:
	.string	"PVGV%s\n"
.LC315:
	.string	"PVFM%s\n"
.LC316:
	.string	"PVIO%s\n"
.LC317:
	.string	"UNKNOWN(0x%lx) %s\n"
.LC318:
	.string	"  UV = %lu"
.LC319:
	.string	"  IV = %ld"
.LC320:
	.string	"  (OFFSET)"
.LC321:
	.string	"  NV = %.*g\n"
.LC322:
	.string	"  RV = 0x%lx\n"
.LC323:
	.string	"  PV = 0x%lx "
.LC324:
	.string	"( %s . ) "
.LC325:
	.string	"%s"
.LC326:
	.string	"\n"
.LC327:
	.string	"  CUR = %ld\n"
.LC328:
	.string	"  LEN = %ld\n"
.LC329:
	.string	"  PV = 0\n"
.LC330:
	.string	"  STASH"
.LC331:
	.string	"  TYPE = %c\n"
.LC332:
	.string	"  TARGOFF = %ld\n"
.LC333:
	.string	"  TARGLEN = %ld\n"
.LC334:
	.string	"  TARG = 0x%lx\n"
.LC335:
	.string	"  ARRAY = 0x%lx"
.LC336:
	.string	" (offset=%ld)\n"
.LC337:
	.string	"  ALLOC = 0x%lx\n"
.LC338:
	.string	"  FILL = %ld\n"
.LC339:
	.string	"  MAX = %ld\n"
.LC340:
	.string	"  ARYLEN = 0x%lx\n"
.LC341:
	.string	",REAL"
.LC342:
	.string	",REIFY"
.LC343:
	.string	",REUSED"
.LC344:
	.string	"  FLAGS = (%s)\n"
.LC345:
	.string	"Elt No. %ld\n"
.LC346:
	.string	"  ("
.LC347:
	.string	"+"
.LC348:
	.string	"%d%s:%d"
.LC349:
	.string	", "
.LC351:
	.string	"  hash quality = %.1f%%"
.LC352:
	.string	"  KEYS = %ld\n"
.LC353:
	.string	"  RITER = %ld\n"
.LC354:
	.string	"  EITER = 0x%lx\n"
.LC355:
	.string	"  PMROOT = 0x%lx\n"
.LC356:
	.string	"  NAME = \"%s\"\n"
.LC357:
	.string	"Elt %s "
.LC358:
	.string	"[UTF8 \"%s\"] "
.LC359:
	.string	"[REHASH] "
.LC360:
	.string	"HASH = 0x%lx\n"
.LC361:
	.string	"  PROTOTYPE = \"%s\"\n"
.LC362:
	.string	"  COMP_STASH"
.LC363:
	.string	"  START = 0x%lx ===> %ld\n"
.LC364:
	.string	"  ROOT = 0x%lx\n"
.LC365:
	.string	"  XSUB = 0x%lx\n"
.LC366:
	.string	"  XSUBANY = %ld\n"
.LC367:
	.string	"  GVGV::GV"
.LC368:
	.string	"  FILE = \"%s\"\n"
.LC369:
	.string	"  DEPTH = %ld\n"
.LC370:
	.string	"  FLAGS = 0x%lx\n"
.LC371:
	.string	"  OUTSIDE_SEQ = %lu\n"
.LC372:
	.string	"  LINES = %ld\n"
.LC373:
	.string	"  PADLIST = 0x%lx\n"
.LC374:
	.string	"UNDEFINED"
.LC375:
	.string	"UNIQUE"
.LC376:
	.string	"MAIN"
.LC377:
	.string	"ANON"
.LC378:
	.string	"null"
.LC379:
	.string	"  OUTSIDE = 0x%lx (%s)\n"
.LC380:
	.string	"  NAMELEN = %ld\n"
.LC381:
	.string	"  GvSTASH"
.LC382:
	.string	"  GP = 0x%lx\n"
.LC383:
	.string	"    SV = 0x%lx\n"
.LC384:
	.string	"    REFCNT = %ld\n"
.LC385:
	.string	"    IO = 0x%lx\n"
.LC386:
	.string	"    FORM = 0x%lx  \n"
.LC387:
	.string	"    AV = 0x%lx\n"
.LC388:
	.string	"    HV = 0x%lx\n"
.LC389:
	.string	"    CV = 0x%lx\n"
.LC390:
	.string	"    CVGEN = 0x%lx\n"
.LC391:
	.string	"    GPFLAGS = 0x%lx\n"
.LC392:
	.string	"    LINE = %ld\n"
.LC393:
	.string	"    FILE = \"%s\"\n"
.LC394:
	.string	"    FLAGS = 0x%lx\n"
.LC395:
	.string	"    EGV"
.LC396:
	.string	"  IFP = 0x%lx\n"
.LC397:
	.string	"  OFP = 0x%lx\n"
.LC398:
	.string	"  DIRP = 0x%lx\n"
.LC399:
	.string	"  PAGE = %ld\n"
.LC400:
	.string	"  PAGE_LEN = %ld\n"
.LC401:
	.string	"  LINES_LEFT = %ld\n"
.LC402:
	.string	"  TOP_NAME = \"%s\"\n"
.LC403:
	.string	"  TOP_GV"
.LC404:
	.string	"  FMT_NAME = \"%s\"\n"
.LC405:
	.string	"  FMT_GV"
.LC406:
	.string	"  BOTTOM_NAME = \"%s\"\n"
.LC407:
	.string	"  BOTTOM_GV"
.LC408:
	.string	"  SUBPROCESS = %ld\n"
.LC409:
	.string	"  TYPE = '%c'\n"
.LC410:
	.string	"  TYPE = '\\%o'\n"
	.text
	.globl	Perl_do_sv_dump
	.type	Perl_do_sv_dump, @function
Perl_do_sv_dump:
.LFB21:
	.loc 1 979 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1008, %rsp	#,
	movl	%edi, -948(%rbp)	# level, level
	movq	%rsi, -960(%rbp)	# file, file
	movq	%rdx, -968(%rbp)	# sv, sv
	movl	%ecx, -952(%rbp)	# nest, nest
	movl	%r8d, -972(%rbp)	# maxnest, maxnest
	movl	%r9d, %eax	# dumpops, tmp651
	movb	%al, -976(%rbp)	# tmp651, dumpops
	.loc 1 985 0
	cmpq	$0, -968(%rbp)	#, sv
	jne	.L354	#,
	.loc 1 986 0
	movq	-960(%rbp), %rcx	# file, tmp652
	movl	-948(%rbp), %eax	# level, tmp653
	movl	$.LC243, %edx	#,
	movq	%rcx, %rsi	# tmp652,
	movl	%eax, %edi	# tmp653,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 987 0
	jmp	.L353	#
.L354:
	.loc 1 990 0
	movq	-968(%rbp), %rax	# sv, tmp654
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, tmp655
	movl	%eax, -908(%rbp)	# tmp655, flags
	.loc 1 991 0
	movq	-968(%rbp), %rax	# sv, tmp656
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$255, %eax	#, tmp657
	movl	%eax, -904(%rbp)	# tmp657, type
	.loc 1 993 0
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, PL_dumpindent.28
	imull	-948(%rbp), %eax	# level, D.13427
	movl	%eax, %esi	# D.13427, D.13427
	.loc 1 996 0
	movq	-968(%rbp), %rax	# sv, tmp658
	movl	8(%rax), %eax	# sv_23(D)->sv_refcnt, D.13426
	.loc 1 993 0
	movl	%eax, %edi	# D.13426, D.13428
	movl	PL_dumpindent(%rip), %eax	# PL_dumpindent, PL_dumpindent.29
	imull	-948(%rbp), %eax	# level, D.13427
	movl	%eax, %ecx	# D.13427, D.13427
	movq	-968(%rbp), %rdx	# sv, sv.30
	.loc 1 995 0
	movq	-968(%rbp), %rax	# sv, tmp659
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	.loc 1 993 0
	movq	$.LC0, 8(%rsp)	#,
	movl	%esi, (%rsp)	# D.13427,
	movq	%rdi, %r9	# D.13428,
	movl	$.LC0, %r8d	#,
	movq	%rax, %rsi	# D.13430,
	movl	$.LC244, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, -880(%rbp)	# tmp660, d
	.loc 1 999 0
	movl	-908(%rbp), %eax	# flags, tmp661
	andl	$256, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L356	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp662
	movl	$.LC245, %esi	#,
	movq	%rax, %rdi	# tmp662,
	call	Perl_sv_catpv	#
.L356:
	.loc 1 1000 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp663
	andl	$512, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L357	#,
	.loc 1 1000 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp664
	movl	$.LC246, %esi	#,
	movq	%rax, %rdi	# tmp664,
	call	Perl_sv_catpv	#
.L357:
	.loc 1 1001 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp665
	andl	$1024, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L358	#,
	.loc 1 1001 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp666
	movl	$.LC247, %esi	#,
	movq	%rax, %rdi	# tmp666,
	call	Perl_sv_catpv	#
.L358:
	.loc 1 1002 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp667
	andl	$2048, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L359	#,
	.loc 1 1002 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp668
	movl	$.LC248, %esi	#,
	movq	%rax, %rdi	# tmp668,
	call	Perl_sv_catpv	#
.L359:
	.loc 1 1003 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp669
	andl	$4096, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L360	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp670
	movl	$.LC249, %esi	#,
	movq	%rax, %rdi	# tmp670,
	call	Perl_sv_catpv	#
.L360:
	.loc 1 1004 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp671
	andl	$8192, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L361	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp672
	movl	$.LC250, %esi	#,
	movq	%rax, %rdi	# tmp672,
	call	Perl_sv_catpv	#
.L361:
	.loc 1 1005 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp673
	andl	$16384, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L362	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp674
	movl	$.LC251, %esi	#,
	movq	%rax, %rdi	# tmp674,
	call	Perl_sv_catpv	#
.L362:
	.loc 1 1006 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp675
	andl	$32768, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L363	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp676
	movl	$.LC252, %esi	#,
	movq	%rax, %rdi	# tmp676,
	call	Perl_sv_catpv	#
.L363:
	.loc 1 1008 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp677
	andl	$65536, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L364	#,
	.loc 1 1008 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp678
	movl	$.LC253, %esi	#,
	movq	%rax, %rdi	# tmp678,
	call	Perl_sv_catpv	#
.L364:
	.loc 1 1009 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp679
	andl	$131072, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L365	#,
	.loc 1 1009 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp680
	movl	$.LC254, %esi	#,
	movq	%rax, %rdi	# tmp680,
	call	Perl_sv_catpv	#
.L365:
	.loc 1 1010 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp681
	andl	$262144, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L366	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp682
	movl	$.LC255, %esi	#,
	movq	%rax, %rdi	# tmp682,
	call	Perl_sv_catpv	#
.L366:
	.loc 1 1011 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp683
	andl	$524288, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L367	#,
	.loc 1 1012 0
	movq	-880(%rbp), %rax	# d, tmp684
	movl	$.LC256, %esi	#,
	movq	%rax, %rdi	# tmp684,
	call	Perl_sv_catpv	#
	.loc 1 1013 0
	movq	-968(%rbp), %rax	# sv, tmp685
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$-2146959360, %eax	#, D.13426
	cmpl	$-2146959360, %eax	#, D.13426
	jne	.L367	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp686
	movl	$.LC257, %esi	#,
	movq	%rax, %rdi	# tmp686,
	call	Perl_sv_catpv	#
.L367:
	.loc 1 1015 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp687
	andl	$2097152, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L368	#,
	.loc 1 1015 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp688
	movl	$.LC258, %esi	#,
	movq	%rax, %rdi	# tmp688,
	call	Perl_sv_catpv	#
.L368:
	.loc 1 1016 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp689
	andl	$1048576, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L369	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp690
	movl	$.LC259, %esi	#,
	movq	%rax, %rdi	# tmp690,
	call	Perl_sv_catpv	#
.L369:
	.loc 1 1017 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp691
	andl	$8388608, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L370	#,
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp692
	movl	$.LC260, %esi	#,
	movq	%rax, %rdi	# tmp692,
	call	Perl_sv_catpv	#
.L370:
	.loc 1 1019 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp693
	andl	$268435456, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L371	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	cmpl	$11, -904(%rbp)	#, type
	je	.L371	#,
	.loc 1 1020 0 is_stmt 1
	movq	-880(%rbp), %rax	# d, tmp694
	movl	$.LC261, %esi	#,
	movq	%rax, %rdi	# tmp694,
	call	Perl_sv_catpv	#
.L371:
	.loc 1 1021 0
	movl	-908(%rbp), %eax	# flags, tmp695
	andl	$16777216, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L372	#,
	.loc 1 1021 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp696
	movl	$.LC262, %esi	#,
	movq	%rax, %rdi	# tmp696,
	call	Perl_sv_catpv	#
.L372:
	.loc 1 1022 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp697
	andl	$33554432, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L373	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp698
	movl	$.LC263, %esi	#,
	movq	%rax, %rdi	# tmp698,
	call	Perl_sv_catpv	#
.L373:
	.loc 1 1023 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp699
	andl	$67108864, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L374	#,
	.loc 1 1023 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp700
	movl	$.LC264, %esi	#,
	movq	%rax, %rdi	# tmp700,
	call	Perl_sv_catpv	#
.L374:
	.loc 1 1024 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp701
	andl	$134217728, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L375	#,
	.loc 1 1024 0 is_stmt 0 discriminator 1
	cmpl	$11, -904(%rbp)	#, type
	je	.L375	#,
	.loc 1 1025 0 is_stmt 1
	movq	-880(%rbp), %rax	# d, tmp702
	movl	$.LC265, %esi	#,
	movq	%rax, %rdi	# tmp702,
	call	Perl_sv_catpv	#
.L375:
	.loc 1 1027 0
	movl	-904(%rbp), %eax	# type, tmp704
	subl	$7, %eax	#, tmp703
	cmpl	$7, %eax	#, tmp703
	ja	.L376	#,
	movl	%eax, %eax	# tmp703, tmp705
	movq	.L378(,%rax,8), %rax	#, tmp706
	jmp	*%rax	# tmp706
	.section	.rodata
	.align 8
	.align 4
.L378:
	.quad	.L377
	.quad	.L379
	.quad	.L376
	.quad	.L376
	.quad	.L380
	.quad	.L381
	.quad	.L382
	.quad	.L381
	.text
.L381:
	.loc 1 1030 0
	movq	-968(%rbp), %rax	# sv, tmp707
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_61].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$4, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L383	#,
	.loc 1 1030 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp708
	movl	$.LC266, %esi	#,
	movq	%rax, %rdi	# tmp708,
	call	Perl_sv_catpv	#
.L383:
	.loc 1 1031 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp709
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_65].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$16, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L384	#,
	.loc 1 1031 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp710
	movl	$.LC267, %esi	#,
	movq	%rax, %rdi	# tmp710,
	call	Perl_sv_catpv	#
.L384:
	.loc 1 1032 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp711
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_69].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$1, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L385	#,
	.loc 1 1032 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp712
	movl	$.LC268, %esi	#,
	movq	%rax, %rdi	# tmp712,
	call	Perl_sv_catpv	#
.L385:
	.loc 1 1033 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp713
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_73].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$2, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L386	#,
	.loc 1 1033 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp714
	movl	$.LC269, %esi	#,
	movq	%rax, %rdi	# tmp714,
	call	Perl_sv_catpv	#
.L386:
	.loc 1 1034 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp715
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_77].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$512, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L387	#,
	.loc 1 1034 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp716
	movl	$.LC270, %esi	#,
	movq	%rax, %rdi	# tmp716,
	call	Perl_sv_catpv	#
.L387:
	.loc 1 1035 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp717
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_81].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$32, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L388	#,
	.loc 1 1035 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp718
	movl	$.LC271, %esi	#,
	movq	%rax, %rdi	# tmp718,
	call	Perl_sv_catpv	#
.L388:
	.loc 1 1036 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp719
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	testl	%eax, %eax	# D.13432
	jns	.L389	#,
	.loc 1 1036 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp720
	movl	$.LC272, %esi	#,
	movq	%rax, %rdi	# tmp720,
	call	Perl_sv_catpv	#
.L389:
	.loc 1 1037 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp721
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_87].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$256, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L390	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp722
	movl	$.LC273, %esi	#,
	movq	%rax, %rdi	# tmp722,
	call	Perl_sv_catpv	#
.L390:
	.loc 1 1038 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp723
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_91].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$64, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L391	#,
	.loc 1 1038 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp724
	movl	$.LC274, %esi	#,
	movq	%rax, %rdi	# tmp724,
	call	Perl_sv_catpv	#
.L391:
	.loc 1 1039 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp725
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_95].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$128, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L392	#,
	.loc 1 1039 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp726
	movl	$.LC275, %esi	#,
	movq	%rax, %rdi	# tmp726,
	call	Perl_sv_catpv	#
.L392:
	.loc 1 1040 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp727
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_99].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$1024, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L393	#,
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp728
	movl	$.LC276, %esi	#,
	movq	%rax, %rdi	# tmp728,
	call	Perl_sv_catpv	#
	.loc 1 1041 0 is_stmt 1 discriminator 1
	jmp	.L394	#
.L393:
	.loc 1 1041 0 is_stmt 0
	jmp	.L394	#
.L380:
	.loc 1 1043 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp729
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$536870912, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L395	#,
	.loc 1 1043 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp730
	movl	$.LC277, %esi	#,
	movq	%rax, %rdi	# tmp730,
	call	Perl_sv_catpv	#
.L395:
	.loc 1 1044 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp731
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$1073741824, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L396	#,
	.loc 1 1044 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp732
	movl	$.LC278, %esi	#,
	movq	%rax, %rdi	# tmp732,
	call	Perl_sv_catpv	#
.L396:
	.loc 1 1045 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp733
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	testl	%eax, %eax	# D.13432
	jns	.L397	#,
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp734
	movl	$.LC279, %esi	#,
	movq	%rax, %rdi	# tmp734,
	call	Perl_sv_catpv	#
.L397:
	.loc 1 1046 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp735
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$268435456, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L398	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp736
	movl	$.LC280, %esi	#,
	movq	%rax, %rdi	# tmp736,
	call	Perl_sv_catpv	#
.L398:
	.loc 1 1047 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp737
	andl	$134217728, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L399	#,
	.loc 1 1047 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp738
	movl	$.LC281, %esi	#,
	movq	%rax, %rdi	# tmp738,
	call	Perl_sv_catpv	#
	.loc 1 1048 0 is_stmt 1 discriminator 1
	jmp	.L394	#
.L399:
	.loc 1 1048 0 is_stmt 0
	jmp	.L394	#
.L382:
	.loc 1 1050 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp739
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_112].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$1, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L400	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp740
	movl	$.LC282, %esi	#,
	movq	%rax, %rdi	# tmp740,
	call	Perl_sv_catpv	#
.L400:
	.loc 1 1051 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp741
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_116].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$2, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L401	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp742
	movl	$.LC283, %esi	#,
	movq	%rax, %rdi	# tmp742,
	call	Perl_sv_catpv	#
.L401:
	.loc 1 1052 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp743
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_120].xgv_gp, D.13434
	testq	%rax, %rax	# D.13434
	je	.L402	#,
	.loc 1 1052 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp744
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_122].xgv_gp, D.13434
	movl	68(%rax), %eax	# _123->gp_flags, D.13426
	andl	$1, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L402	#,
	movq	-880(%rbp), %rax	# d, tmp745
	movl	$.LC267, %esi	#,
	movq	%rax, %rdi	# tmp745,
	call	Perl_sv_catpv	#
.L402:
	.loc 1 1053 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp746
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_126].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$4, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L403	#,
	.loc 1 1053 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp747
	movl	$.LC284, %esi	#,
	movq	%rax, %rdi	# tmp747,
	call	Perl_sv_catpv	#
.L403:
	.loc 1 1054 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp748
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_130].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$8, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L404	#,
	.loc 1 1054 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp749
	movl	$.LC285, %esi	#,
	movq	%rax, %rdi	# tmp749,
	call	Perl_sv_catpv	#
.L404:
	.loc 1 1055 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, flags.31
	testl	%eax, %eax	# flags.31
	jns	.L405	#,
	.loc 1 1055 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp750
	movl	$.LC286, %esi	#,
	movq	%rax, %rdi	# tmp750,
	call	Perl_sv_catpv	#
.L405:
	.loc 1 1056 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp751
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_135].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$240, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L376	#,
	.loc 1 1057 0
	movq	-880(%rbp), %rax	# d, tmp752
	movl	$.LC287, %esi	#,
	movq	%rax, %rdi	# tmp752,
	call	Perl_sv_catpv	#
	.loc 1 1058 0
	movq	-968(%rbp), %rax	# sv, tmp753
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_139].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$240, %eax	#, D.13427
	cmpl	$240, %eax	#, D.13427
	jne	.L406	#,
	.loc 1 1059 0
	movq	-880(%rbp), %rax	# d, tmp754
	movl	$.LC288, %esi	#,
	movq	%rax, %rdi	# tmp754,
	call	Perl_sv_catpv	#
	jmp	.L376	#
.L406:
	.loc 1 1061 0
	movq	-880(%rbp), %rax	# d, tmp755
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp755,
	call	Perl_sv_catpv	#
	.loc 1 1062 0
	movq	-968(%rbp), %rax	# sv, tmp756
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_143].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$16, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L407	#,
	.loc 1 1062 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp757
	movl	$.LC289, %esi	#,
	movq	%rax, %rdi	# tmp757,
	call	Perl_sv_catpv	#
.L407:
	.loc 1 1063 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp758
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_147].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$32, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L408	#,
	.loc 1 1063 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp759
	movl	$.LC290, %esi	#,
	movq	%rax, %rdi	# tmp759,
	call	Perl_sv_catpv	#
.L408:
	.loc 1 1064 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp760
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_151].xgv_flags, D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$64, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L409	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp761
	movl	$.LC291, %esi	#,
	movq	%rax, %rdi	# tmp761,
	call	Perl_sv_catpv	#
.L409:
	.loc 1 1065 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp762
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_155].xgv_flags, D.13433
	testb	%al, %al	# D.13435
	jns	.L410	#,
	.loc 1 1065 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp763
	movl	$.LC292, %esi	#,
	movq	%rax, %rdi	# tmp763,
	call	Perl_sv_catpv	#
.L410:
	.loc 1 1066 0 is_stmt 1
	movq	-880(%rbp), %rax	# d, tmp764
	movl	$.LC293, %esi	#,
	movq	%rax, %rdi	# tmp764,
	call	Perl_sv_catpv	#
.L376:
	.loc 1 1071 0
	movq	-968(%rbp), %rax	# sv, tmp765
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$1073741824, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L411	#,
	.loc 1 1071 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp766
	movl	$.LC294, %esi	#,
	movq	%rax, %rdi	# tmp766,
	call	Perl_sv_catpv	#
.L411:
	.loc 1 1072 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp767
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	testl	%eax, %eax	# D.13432
	jns	.L412	#,
	.loc 1 1072 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp768
	movl	$.LC295, %esi	#,
	movq	%rax, %rdi	# tmp768,
	call	Perl_sv_catpv	#
	.loc 1 1073 0 is_stmt 1 discriminator 1
	jmp	.L394	#
.L412:
	.loc 1 1073 0 is_stmt 0
	jmp	.L394	#
.L379:
	.loc 1 1075 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp769
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$1073741824, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L413	#,
	.loc 1 1075 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp770
	movl	$.LC296, %esi	#,
	movq	%rax, %rdi	# tmp770,
	call	Perl_sv_catpv	#
.L413:
	.loc 1 1076 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp771
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	testl	%eax, %eax	# D.13432
	jns	.L414	#,
	.loc 1 1076 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp772
	movl	$.LC297, %esi	#,
	movq	%rax, %rdi	# tmp772,
	call	Perl_sv_catpv	#
	.loc 1 1077 0 is_stmt 1 discriminator 1
	jmp	.L394	#
.L414:
	.loc 1 1077 0 is_stmt 0
	jmp	.L394	#
.L377:
	.loc 1 1079 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp773
	andl	$1073741824, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L415	#,
	.loc 1 1080 0
	movq	-880(%rbp), %rax	# d, tmp774
	movl	$.LC298, %esi	#,
	movq	%rax, %rdi	# tmp774,
	call	Perl_sv_catpv	#
	.loc 1 1081 0
	jmp	.L527	#
.L415:
.L527:
	nop
.L394:
	.loc 1 1084 0
	cmpl	$11, -904(%rbp)	#, type
	je	.L416	#,
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp775
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$536870912, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L416	#,
	.loc 1 1085 0 is_stmt 1
	movq	-880(%rbp), %rax	# d, tmp776
	movl	$.LC299, %esi	#,
	movq	%rax, %rdi	# tmp776,
	call	Perl_sv_catpv	#
.L416:
	.loc 1 1087 0
	movq	-880(%rbp), %rax	# d, tmp777
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	(%rax), %rdx	# MEM[(struct XPV *)_169].xpv_pv, D.13436
	movq	-880(%rbp), %rax	# d, tmp778
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	8(%rax), %rax	# MEM[(struct XPV *)_171].xpv_cur, D.13430
	subq	$1, %rax	#, D.13437
	addq	%rdx, %rax	# D.13436, D.13436
	movzbl	(%rax), %eax	# *_174, D.13438
	cmpb	$44, %al	#, D.13438
	jne	.L417	#,
	.loc 1 1088 0
	movq	-880(%rbp), %rax	# d, tmp779
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	(%rax), %rdx	# MEM[(struct XPV *)_176].xpv_pv, D.13436
	movq	-880(%rbp), %rax	# d, tmp780
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_178].xpv_cur, D.13430
	subq	$1, %rcx	#, D.13430
	movq	%rcx, 8(%rax)	# D.13430, MEM[(struct XPV *)_178].xpv_cur
	movq	8(%rax), %rax	# MEM[(struct XPV *)_178].xpv_cur, D.13430
	addq	%rdx, %rax	# D.13436, D.13436
	movb	$0, (%rax)	#, *_182
.L417:
	.loc 1 1089 0
	movq	-880(%rbp), %rax	# d, tmp781
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp781,
	call	Perl_sv_catpv	#
	.loc 1 1090 0
	movq	-880(%rbp), %rax	# d, tmp782
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_183].xpv_pv, tmp783
	movq	%rax, -872(%rbp)	# tmp783, s
	.loc 1 1092 0
	movq	-960(%rbp), %rcx	# file, tmp784
	movl	-948(%rbp), %eax	# level, tmp785
	movl	$.LC300, %edx	#,
	movq	%rcx, %rsi	# tmp784,
	movl	%eax, %edi	# tmp785,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1093 0
	cmpl	$15, -904(%rbp)	#, type
	ja	.L418	#,
	movl	-904(%rbp), %eax	# type, tmp786
	movq	.L420(,%rax,8), %rax	#, tmp787
	jmp	*%rax	# tmp787
	.section	.rodata
	.align 8
	.align 4
.L420:
	.quad	.L419
	.quad	.L421
	.quad	.L422
	.quad	.L423
	.quad	.L424
	.quad	.L425
	.quad	.L426
	.quad	.L427
	.quad	.L428
	.quad	.L429
	.quad	.L430
	.quad	.L431
	.quad	.L432
	.quad	.L433
	.quad	.L434
	.quad	.L435
	.text
.L419:
	.loc 1 1095 0
	movq	-872(%rbp), %rdx	# s, tmp788
	movq	-960(%rbp), %rax	# file, tmp789
	movl	$.LC301, %esi	#,
	movq	%rax, %rdi	# tmp789,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1096 0
	movq	-880(%rbp), %rax	# d, tmp790
	movq	%rax, %rdi	# tmp790,
	call	Perl_sv_free	#
	.loc 1 1097 0
	jmp	.L353	#
.L421:
	.loc 1 1099 0
	movq	-872(%rbp), %rdx	# s, tmp791
	movq	-960(%rbp), %rax	# file, tmp792
	movl	$.LC302, %esi	#,
	movq	%rax, %rdi	# tmp792,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1100 0
	jmp	.L436	#
.L422:
	.loc 1 1102 0
	movq	-872(%rbp), %rdx	# s, tmp793
	movq	-960(%rbp), %rax	# file, tmp794
	movl	$.LC303, %esi	#,
	movq	%rax, %rdi	# tmp794,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1103 0
	jmp	.L436	#
.L423:
	.loc 1 1105 0
	movq	-872(%rbp), %rdx	# s, tmp795
	movq	-960(%rbp), %rax	# file, tmp796
	movl	$.LC304, %esi	#,
	movq	%rax, %rdi	# tmp796,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1106 0
	jmp	.L436	#
.L424:
	.loc 1 1108 0
	movq	-872(%rbp), %rdx	# s, tmp797
	movq	-960(%rbp), %rax	# file, tmp798
	movl	$.LC305, %esi	#,
	movq	%rax, %rdi	# tmp798,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1109 0
	jmp	.L436	#
.L425:
	.loc 1 1111 0
	movq	-872(%rbp), %rdx	# s, tmp799
	movq	-960(%rbp), %rax	# file, tmp800
	movl	$.LC306, %esi	#,
	movq	%rax, %rdi	# tmp800,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1112 0
	jmp	.L436	#
.L426:
	.loc 1 1114 0
	movq	-872(%rbp), %rdx	# s, tmp801
	movq	-960(%rbp), %rax	# file, tmp802
	movl	$.LC307, %esi	#,
	movq	%rax, %rdi	# tmp802,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1115 0
	jmp	.L436	#
.L428:
	.loc 1 1117 0
	movq	-872(%rbp), %rdx	# s, tmp803
	movq	-960(%rbp), %rax	# file, tmp804
	movl	$.LC308, %esi	#,
	movq	%rax, %rdi	# tmp804,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1118 0
	jmp	.L436	#
.L427:
	.loc 1 1120 0
	movq	-872(%rbp), %rdx	# s, tmp805
	movq	-960(%rbp), %rax	# file, tmp806
	movl	$.LC309, %esi	#,
	movq	%rax, %rdi	# tmp806,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1121 0
	jmp	.L436	#
.L429:
	.loc 1 1123 0
	movq	-872(%rbp), %rdx	# s, tmp807
	movq	-960(%rbp), %rax	# file, tmp808
	movl	$.LC310, %esi	#,
	movq	%rax, %rdi	# tmp808,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1124 0
	jmp	.L436	#
.L430:
	.loc 1 1126 0
	movq	-872(%rbp), %rdx	# s, tmp809
	movq	-960(%rbp), %rax	# file, tmp810
	movl	$.LC311, %esi	#,
	movq	%rax, %rdi	# tmp810,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1127 0
	jmp	.L436	#
.L431:
	.loc 1 1129 0
	movq	-872(%rbp), %rdx	# s, tmp811
	movq	-960(%rbp), %rax	# file, tmp812
	movl	$.LC312, %esi	#,
	movq	%rax, %rdi	# tmp812,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1130 0
	jmp	.L436	#
.L432:
	.loc 1 1132 0
	movq	-872(%rbp), %rdx	# s, tmp813
	movq	-960(%rbp), %rax	# file, tmp814
	movl	$.LC313, %esi	#,
	movq	%rax, %rdi	# tmp814,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1133 0
	jmp	.L436	#
.L433:
	.loc 1 1135 0
	movq	-872(%rbp), %rdx	# s, tmp815
	movq	-960(%rbp), %rax	# file, tmp816
	movl	$.LC314, %esi	#,
	movq	%rax, %rdi	# tmp816,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1136 0
	jmp	.L436	#
.L434:
	.loc 1 1138 0
	movq	-872(%rbp), %rdx	# s, tmp817
	movq	-960(%rbp), %rax	# file, tmp818
	movl	$.LC315, %esi	#,
	movq	%rax, %rdi	# tmp818,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1139 0
	jmp	.L436	#
.L435:
	.loc 1 1141 0
	movq	-872(%rbp), %rdx	# s, tmp819
	movq	-960(%rbp), %rax	# file, tmp820
	movl	$.LC316, %esi	#,
	movq	%rax, %rdi	# tmp820,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1142 0
	jmp	.L436	#
.L418:
	.loc 1 1144 0
	movl	-904(%rbp), %edx	# type, D.13430
	movq	-872(%rbp), %rcx	# s, tmp821
	movq	-960(%rbp), %rax	# file, tmp822
	movl	$.LC317, %esi	#,
	movq	%rax, %rdi	# tmp822,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1145 0
	movq	-880(%rbp), %rax	# d, tmp823
	movq	%rax, %rdi	# tmp823,
	call	Perl_sv_free	#
	.loc 1 1146 0
	jmp	.L353	#
.L436:
	.loc 1 1148 0
	cmpl	$4, -904(%rbp)	#, type
	ja	.L437	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	cmpl	$1, -904(%rbp)	#, type
	jne	.L438	#,
.L437:
	.loc 1 1149 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp824
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	testl	%eax, %eax	# D.13432
	jns	.L439	#,
	.loc 1 1150 0
	movq	-968(%rbp), %rax	# sv, tmp825
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rdx	# MEM[(struct XPVUV *)_188].xuv_uv, D.13430
	movq	-960(%rbp), %rsi	# file, tmp826
	movl	-948(%rbp), %eax	# level, tmp827
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC318, %edx	#,
	movl	%eax, %edi	# tmp827,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L440	#
.L439:
	.loc 1 1152 0
	movq	-968(%rbp), %rax	# sv, tmp828
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_190].xiv_iv, D.13428
	movq	-960(%rbp), %rsi	# file, tmp829
	movl	-948(%rbp), %eax	# level, tmp830
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC319, %edx	#,
	movl	%eax, %edi	# tmp830,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L440:
	.loc 1 1153 0
	movq	-968(%rbp), %rax	# sv, tmp831
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$2097152, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L441	#,
	.loc 1 1154 0
	movq	-960(%rbp), %rax	# file, tmp832
	movl	$.LC320, %esi	#,
	movq	%rax, %rdi	# tmp832,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L441:
	.loc 1 1155 0
	movq	-960(%rbp), %rax	# file, tmp833
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp833,
	call	PerlIO_putc	#
.L438:
	.loc 1 1157 0
	cmpl	$5, -904(%rbp)	#, type
	ja	.L442	#,
	.loc 1 1157 0 is_stmt 0 discriminator 1
	cmpl	$2, -904(%rbp)	#, type
	jne	.L443	#,
.L442:
	.loc 1 1163 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp834
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_194].xnv_nv, D.13439
	movq	-960(%rbp), %rsi	# file, tmp835
	movl	-948(%rbp), %edi	# level, tmp836
	movq	%rax, -984(%rbp)	# D.13439, %sfp
	movsd	-984(%rbp), %xmm0	# %sfp,
	movl	$15, %ecx	#,
	movl	$.LC321, %edx	#,
	movl	$1, %eax	#,
	call	Perl_dump_indent	#
.L443:
	.loc 1 1167 0
	movq	-968(%rbp), %rax	# sv, tmp837
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$524288, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L444	#,
	.loc 1 1168 0
	movq	-968(%rbp), %rax	# sv, tmp838
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XRV *)_198].xrv_rv, D.13440
	movq	%rax, %rdx	# D.13440, D.13430
	movq	-960(%rbp), %rsi	# file, tmp839
	movl	-948(%rbp), %eax	# level, tmp840
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC322, %edx	#,
	movl	%eax, %edi	# tmp840,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1169 0
	movl	-952(%rbp), %eax	# nest, tmp841
	cmpl	-972(%rbp), %eax	# maxnest, tmp841
	jge	.L444	#,
	.loc 1 1170 0
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movl	-952(%rbp), %eax	# nest, tmp842
	leal	1(%rax), %esi	#, D.13427
	movq	-968(%rbp), %rax	# sv, tmp843
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rdx	# MEM[(struct XRV *)_206].xrv_rv, D.13440
	movl	-948(%rbp), %eax	# level, tmp844
	leal	1(%rax), %edi	#, D.13427
	movl	-972(%rbp), %r8d	# maxnest, tmp845
	movq	-960(%rbp), %rax	# file, tmp846
	movq	16(%rbp), %rcx	# pvlim, tmp847
	movq	%rcx, (%rsp)	# tmp847,
	movl	%esi, %ecx	# D.13427,
	movq	%rax, %rsi	# tmp846,
	call	Perl_do_sv_dump	#
.L444:
	.loc 1 1172 0
	cmpl	$3, -904(%rbp)	#, type
	ja	.L445	#,
	.loc 1 1173 0
	movq	-880(%rbp), %rax	# d, tmp848
	movq	%rax, %rdi	# tmp848,
	call	Perl_sv_free	#
	.loc 1 1174 0
	jmp	.L353	#
.L445:
	.loc 1 1176 0
	cmpl	$9, -904(%rbp)	#, type
	ja	.L446	#,
	.loc 1 1177 0
	movq	-968(%rbp), %rax	# sv, tmp849
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_210].xpv_pv, D.13436
	testq	%rax, %rax	# D.13436
	je	.L447	#,
	.loc 1 1178 0
	movq	-968(%rbp), %rax	# sv, tmp850
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_212].xpv_pv, D.13436
	movq	%rax, %rdx	# D.13436, D.13430
	movq	-960(%rbp), %rsi	# file, tmp851
	movl	-948(%rbp), %eax	# level, tmp852
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC323, %edx	#,
	movl	%eax, %edi	# tmp852,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1179 0
	movq	-968(%rbp), %rax	# sv, tmp853
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$2097152, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L448	#,
	.loc 1 1180 0
	movq	-968(%rbp), %rax	# sv, tmp854
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_217].xiv_iv, D.13428
	movq	%rax, %rdx	# D.13428, D.13430
	movq	-968(%rbp), %rax	# sv, tmp855
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rcx	# MEM[(struct XPV *)_220].xpv_pv, D.13436
	movq	-968(%rbp), %rax	# sv, tmp856
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_222].xiv_iv, D.13428
	negq	%rax	# D.13437
	leaq	(%rcx,%rax), %rsi	#, D.13436
	movq	-880(%rbp), %rax	# d, tmp857
	movq	16(%rbp), %r8	# pvlim,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp857,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13436
	movq	-960(%rbp), %rax	# file, tmp858
	movl	$.LC324, %esi	#,
	movq	%rax, %rdi	# tmp858,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L448:
	.loc 1 1181 0
	movq	-968(%rbp), %rax	# sv, tmp859
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	16(%rax), %rcx	# MEM[(struct XPV *)_228].xpv_len, D.13430
	movq	-968(%rbp), %rax	# sv, tmp860
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_230].xpv_cur, D.13430
	movq	-968(%rbp), %rax	# sv, tmp861
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rsi	# MEM[(struct XPV *)_232].xpv_pv, D.13436
	movq	-880(%rbp), %rax	# d, tmp862
	movq	16(%rbp), %r8	# pvlim,
	movq	%rax, %rdi	# tmp862,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13436
	movq	-960(%rbp), %rax	# file, tmp863
	movl	$.LC325, %esi	#,
	movq	%rax, %rdi	# tmp863,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1182 0
	movq	-968(%rbp), %rax	# sv, tmp864
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$536870912, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L449	#,
	.loc 1 1183 0
	movq	-968(%rbp), %rax	# sv, tmp865
	movq	%rax, %rdi	# tmp865,
	call	Perl_sv_len_utf8	#
	leaq	0(,%rax,8), %rdx	#, D.13430
	movq	-968(%rbp), %rsi	# sv, tmp866
	movq	-880(%rbp), %rax	# d, tmp867
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp867,
	call	Perl_sv_uni_display	#
	movq	%rax, %rdx	#, D.13436
	movq	-960(%rbp), %rax	# file, tmp868
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp868,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L449:
	.loc 1 1184 0
	movq	-960(%rbp), %rax	# file, tmp869
	movl	$.LC326, %esi	#,
	movq	%rax, %rdi	# tmp869,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1185 0
	movq	-968(%rbp), %rax	# sv, tmp870
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	8(%rax), %rax	# MEM[(struct XPV *)_240].xpv_cur, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp871
	movl	-948(%rbp), %eax	# level, tmp872
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC327, %edx	#,
	movl	%eax, %edi	# tmp872,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1186 0
	movq	-968(%rbp), %rax	# sv, tmp873
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	16(%rax), %rax	# MEM[(struct XPV *)_243].xpv_len, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp874
	movl	-948(%rbp), %eax	# level, tmp875
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC328, %edx	#,
	movl	%eax, %edi	# tmp875,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L446	#
.L447:
	.loc 1 1189 0
	movq	-960(%rbp), %rcx	# file, tmp876
	movl	-948(%rbp), %eax	# level, tmp877
	movl	$.LC329, %edx	#,
	movq	%rcx, %rsi	# tmp876,
	movl	%eax, %edi	# tmp877,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L446:
	.loc 1 1191 0
	cmpl	$6, -904(%rbp)	#, type
	jbe	.L450	#,
	.loc 1 1192 0
	movq	-968(%rbp), %rax	# sv, tmp878
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_246].xmg_magic, D.13441
	testq	%rax, %rax	# D.13441
	je	.L451	#,
	.loc 1 1193 0
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movq	-968(%rbp), %rax	# sv, tmp879
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	40(%rax), %rdx	# MEM[(struct XPVMG *)_249].xmg_magic, D.13441
	movl	-972(%rbp), %r8d	# maxnest, tmp880
	movl	-952(%rbp), %ecx	# nest, tmp881
	movq	-960(%rbp), %rsi	# file, tmp882
	movl	-948(%rbp), %eax	# level, tmp883
	movq	16(%rbp), %rdi	# pvlim, tmp884
	movq	%rdi, (%rsp)	# tmp884,
	movl	%eax, %edi	# tmp883,
	call	Perl_do_magic_dump	#
.L451:
	.loc 1 1194 0
	movq	-968(%rbp), %rax	# sv, tmp885
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_251].xmg_stash, D.13442
	testq	%rax, %rax	# D.13442
	je	.L450	#,
	.loc 1 1195 0
	movq	-968(%rbp), %rax	# sv, tmp886
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	48(%rax), %rdx	# MEM[(struct XPVMG *)_253].xmg_stash, D.13442
	movq	-960(%rbp), %rsi	# file, tmp887
	movl	-948(%rbp), %eax	# level, tmp888
	movq	%rdx, %rcx	# D.13442,
	movl	$.LC330, %edx	#,
	movl	%eax, %edi	# tmp888,
	call	Perl_do_hv_dump	#
.L450:
	.loc 1 1197 0
	movl	-904(%rbp), %eax	# type, tmp890
	subl	$9, %eax	#, tmp889
	cmpl	$6, %eax	#, tmp889
	ja	.L452	#,
	movl	%eax, %eax	# tmp889, tmp891
	movq	.L454(,%rax,8), %rax	#, tmp892
	jmp	*%rax	# tmp892
	.section	.rodata
	.align 8
	.align 4
.L454:
	.quad	.L453
	.quad	.L455
	.quad	.L456
	.quad	.L457
	.quad	.L458
	.quad	.L459
	.quad	.L460
	.text
.L453:
	.loc 1 1199 0
	movq	-968(%rbp), %rax	# sv, tmp893
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	80(%rax), %eax	# MEM[(struct XPVLV *)_255].xlv_type, D.13438
	movsbl	%al, %edx	# D.13438, D.13427
	movq	-960(%rbp), %rsi	# file, tmp894
	movl	-948(%rbp), %eax	# level, tmp895
	movl	%edx, %ecx	# D.13427,
	movl	$.LC331, %edx	#,
	movl	%eax, %edi	# tmp895,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1200 0
	movq	-968(%rbp), %rax	# sv, tmp896
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_258].xlv_targoff, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp897
	movl	-948(%rbp), %eax	# level, tmp898
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC332, %edx	#,
	movl	%eax, %edi	# tmp898,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1201 0
	movq	-968(%rbp), %rax	# sv, tmp899
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_261].xlv_targlen, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp900
	movl	-948(%rbp), %eax	# level, tmp901
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC333, %edx	#,
	movl	%eax, %edi	# tmp901,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1202 0
	movq	-968(%rbp), %rax	# sv, tmp902
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_264].xlv_targ, D.13440
	movq	%rax, %rdx	# D.13440, D.13430
	movq	-960(%rbp), %rsi	# file, tmp903
	movl	-948(%rbp), %eax	# level, tmp904
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC334, %edx	#,
	movl	%eax, %edi	# tmp904,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1203 0
	movq	-968(%rbp), %rax	# sv, tmp905
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	80(%rax), %eax	# MEM[(struct XPVLV *)_267].xlv_type, D.13438
	cmpb	$116, %al	#, D.13438
	je	.L461	#,
	.loc 1 1203 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp906
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	80(%rax), %eax	# MEM[(struct XPVLV *)_269].xlv_type, D.13438
	cmpb	$84, %al	#, D.13438
	je	.L461	#,
	.loc 1 1204 0 is_stmt 1
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movl	-952(%rbp), %eax	# nest, tmp907
	leal	1(%rax), %esi	#, D.13427
	movq	-968(%rbp), %rax	# sv, tmp908
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rdx	# MEM[(struct XPVLV *)_273].xlv_targ, D.13440
	movl	-948(%rbp), %eax	# level, tmp909
	leal	1(%rax), %edi	#, D.13427
	movl	-972(%rbp), %r8d	# maxnest, tmp910
	movq	-960(%rbp), %rax	# file, tmp911
	movq	16(%rbp), %rcx	# pvlim, tmp912
	movq	%rcx, (%rsp)	# tmp912,
	movl	%esi, %ecx	# D.13427,
	movq	%rax, %rsi	# tmp911,
	call	Perl_do_sv_dump	#
	.loc 1 1206 0
	jmp	.L452	#
.L461:
	jmp	.L452	#
.L455:
	.loc 1 1208 0
	movq	-968(%rbp), %rax	# sv, tmp913
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPVAV *)_276].xav_array, D.13436
	movq	%rax, %rdx	# D.13436, D.13430
	movq	-960(%rbp), %rsi	# file, tmp914
	movl	-948(%rbp), %eax	# level, tmp915
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC335, %edx	#,
	movl	%eax, %edi	# tmp915,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1209 0
	movq	-968(%rbp), %rax	# sv, tmp916
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rdx	# MEM[(struct XPVAV *)_279].xav_array, D.13436
	movq	-968(%rbp), %rax	# sv, tmp917
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVAV *)_281].xav_alloc, D.13443
	cmpq	%rax, %rdx	# D.13443, D.13436
	je	.L462	#,
	.loc 1 1210 0
	movq	-968(%rbp), %rax	# sv, tmp918
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPVAV *)_283].xav_array, D.13436
	movq	%rax, %rdx	# D.13436, D.13428
	movq	-968(%rbp), %rax	# sv, tmp919
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVAV *)_286].xav_alloc, D.13443
	subq	%rax, %rdx	# D.13428, D.13428
	movq	%rdx, %rax	# D.13428, D.13428
	sarq	$3, %rax	#, tmp920
	movq	%rax, %rdx	# tmp920, D.13428
	movq	-960(%rbp), %rax	# file, tmp921
	movl	$.LC336, %esi	#,
	movq	%rax, %rdi	# tmp921,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1211 0
	movq	-968(%rbp), %rax	# sv, tmp922
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVAV *)_291].xav_alloc, D.13443
	movq	%rax, %rdx	# D.13443, D.13430
	movq	-960(%rbp), %rsi	# file, tmp923
	movl	-948(%rbp), %eax	# level, tmp924
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC337, %edx	#,
	movl	%eax, %edi	# tmp924,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L463	#
.L462:
	.loc 1 1214 0
	movq	-960(%rbp), %rax	# file, tmp925
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp925,
	call	PerlIO_putc	#
.L463:
	.loc 1 1215 0
	movq	-968(%rbp), %rax	# sv, tmp926
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	8(%rax), %rdx	# MEM[(struct XPVAV *)_294].xav_fill, D.13428
	movq	-960(%rbp), %rsi	# file, tmp927
	movl	-948(%rbp), %eax	# level, tmp928
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC338, %edx	#,
	movl	%eax, %edi	# tmp928,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1216 0
	movq	-968(%rbp), %rax	# sv, tmp929
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	16(%rax), %rdx	# MEM[(struct XPVAV *)_296].xav_max, D.13428
	movq	-960(%rbp), %rsi	# file, tmp930
	movl	-948(%rbp), %eax	# level, tmp931
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC339, %edx	#,
	movl	%eax, %edi	# tmp931,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1217 0
	movq	-968(%rbp), %rax	# sv, tmp932
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVAV *)_298].xav_arylen, D.13440
	movq	%rax, %rdx	# D.13440, D.13430
	movq	-960(%rbp), %rsi	# file, tmp933
	movl	-948(%rbp), %eax	# level, tmp934
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC340, %edx	#,
	movl	%eax, %edi	# tmp934,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1218 0
	movq	-968(%rbp), %rax	# sv, tmp935
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	72(%rax), %eax	# MEM[(struct XPVAV *)_301].xav_flags, D.13433
	movzbl	%al, %eax	# D.13433, tmp936
	movl	%eax, -908(%rbp)	# tmp936, flags
	.loc 1 1219 0
	movq	-880(%rbp), %rax	# d, tmp937
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp937,
	call	Perl_sv_setpv	#
	.loc 1 1220 0
	movl	-908(%rbp), %eax	# flags, tmp938
	andl	$1, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L464	#,
	.loc 1 1220 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp939
	movl	$.LC341, %esi	#,
	movq	%rax, %rdi	# tmp939,
	call	Perl_sv_catpv	#
.L464:
	.loc 1 1221 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp940
	andl	$2, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L465	#,
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp941
	movl	$.LC342, %esi	#,
	movq	%rax, %rdi	# tmp941,
	call	Perl_sv_catpv	#
.L465:
	.loc 1 1222 0 is_stmt 1
	movl	-908(%rbp), %eax	# flags, tmp942
	andl	$4, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L466	#,
	.loc 1 1222 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp943
	movl	$.LC343, %esi	#,
	movq	%rax, %rdi	# tmp943,
	call	Perl_sv_catpv	#
.L466:
	.loc 1 1223 0 is_stmt 1
	movq	-880(%rbp), %rax	# d, tmp944
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	8(%rax), %rax	# MEM[(struct XPV *)_307].xpv_cur, D.13430
	testq	%rax, %rax	# D.13430
	je	.L467	#,
	.loc 1 1223 0 is_stmt 0 discriminator 1
	movq	-880(%rbp), %rax	# d, tmp945
	movq	(%rax), %rax	# d_38->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_309].xpv_pv, D.13436
	addq	$1, %rax	#, iftmp.32
	jmp	.L468	#
.L467:
	.loc 1 1223 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.32
.L468:
	.loc 1 1223 0 discriminator 3
	movq	-960(%rbp), %rsi	# file, tmp946
	movl	-948(%rbp), %edi	# level, tmp947
	movq	%rax, %rcx	# iftmp.32,
	movl	$.LC344, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1224 0 is_stmt 1 discriminator 3
	movl	-952(%rbp), %eax	# nest, tmp948
	cmpl	-972(%rbp), %eax	# maxnest, tmp948
	jge	.L469	#,
	.loc 1 1224 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp949
	movq	%rax, %rdi	# tmp949,
	call	Perl_av_len	#
	testl	%eax, %eax	# D.13427
	js	.L469	#,
.LBB14:
	.loc 1 1226 0 is_stmt 1
	movl	$0, -936(%rbp)	#, count
	jmp	.L470	#
.L472:
.LBB15:
	.loc 1 1227 0
	movl	-936(%rbp), %ecx	# count, tmp950
	movq	-968(%rbp), %rax	# sv, tmp951
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp950,
	movq	%rax, %rdi	# tmp951,
	call	Perl_av_fetch	#
	movq	%rax, -864(%rbp)	# tmp952, elt
	.loc 1 1229 0
	movl	-936(%rbp), %eax	# count, tmp953
	movslq	%eax, %rdx	# tmp953, D.13428
	movl	-948(%rbp), %eax	# level, tmp954
	leal	1(%rax), %edi	#, D.13427
	movq	-960(%rbp), %rax	# file, tmp955
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC345, %edx	#,
	movq	%rax, %rsi	# tmp955,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1230 0
	cmpq	$0, -864(%rbp)	#, elt
	je	.L471	#,
	.loc 1 1231 0
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movl	-952(%rbp), %eax	# nest, tmp956
	leal	1(%rax), %esi	#, D.13427
	movq	-864(%rbp), %rax	# elt, tmp957
	movq	(%rax), %rdx	# *elt_316, D.13440
	movl	-948(%rbp), %eax	# level, tmp958
	leal	1(%rax), %edi	#, D.13427
	movl	-972(%rbp), %r8d	# maxnest, tmp959
	movq	-960(%rbp), %rax	# file, tmp960
	movq	16(%rbp), %rcx	# pvlim, tmp961
	movq	%rcx, (%rsp)	# tmp961,
	movl	%esi, %ecx	# D.13427,
	movq	%rax, %rsi	# tmp960,
	call	Perl_do_sv_dump	#
.L471:
.LBE15:
	.loc 1 1226 0
	addl	$1, -936(%rbp)	#, count
.L470:
	.loc 1 1226 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp962
	movq	%rax, %rdi	# tmp962,
	call	Perl_av_len	#
	cmpl	-936(%rbp), %eax	# count, D.13427
	jl	.L469	#,
	.loc 1 1226 0 discriminator 2
	movl	-936(%rbp), %eax	# count, tmp963
	cmpl	-972(%rbp), %eax	# maxnest, tmp963
	jl	.L472	#,
.L469:
.LBE14:
	.loc 1 1234 0 is_stmt 1
	jmp	.L452	#
.L456:
	.loc 1 1236 0
	movq	-968(%rbp), %rax	# sv, tmp964
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct HE * * *)_325], D.13445
	movq	%rax, %rdx	# D.13445, D.13430
	movq	-960(%rbp), %rsi	# file, tmp965
	movl	-948(%rbp), %eax	# level, tmp966
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC335, %edx	#,
	movl	%eax, %edi	# tmp966,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1237 0
	movq	-968(%rbp), %rax	# sv, tmp967
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct HE * * *)_329], D.13445
	testq	%rax, %rax	# D.13445
	je	.L473	#,
	.loc 1 1237 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp968
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rdx	# MEM[(struct XPVHV *)_331].xhv_keys, D.13428
	movq	-968(%rbp), %rax	# sv, tmp969
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movsd	32(%rax), %xmm0	# MEM[(struct XPVHV *)_333].xnv_nv, D.13439
	cvttsd2siq	%xmm0, %rax	# D.13439, D.13428
	cmpq	%rax, %rdx	# D.13428, D.13428
	je	.L473	#,
.LBB16:
	.loc 1 1242 0 is_stmt 1
	movl	$0, -928(%rbp)	#, max
	.loc 1 1243 0
	movl	$2, -924(%rbp)	#, pow2
	movq	-968(%rbp), %rax	# sv, tmp970
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rax	# MEM[(struct XPVHV *)_338].xhv_keys, D.13428
	movl	%eax, %edx	# D.13428, D.13426
	movq	-968(%rbp), %rax	# sv, tmp971
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movsd	32(%rax), %xmm0	# MEM[(struct XPVHV *)_341].xnv_nv, D.13439
	cvttsd2siq	%xmm0, %rax	# D.13439, D.13428
	subl	%eax, %edx	# D.13426, tmp972
	movl	%edx, %eax	# tmp972, tmp972
	movl	%eax, -920(%rbp)	# tmp972, keys
	.loc 1 1244 0
	movl	$0, %eax	#, tmp973
	movq	%rax, -896(%rbp)	# tmp973, sum
	.loc 1 1246 0
	movq	-960(%rbp), %rax	# file, tmp974
	movl	$.LC346, %esi	#,
	movq	%rax, %rdi	# tmp974,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1247 0
	leaq	-800(%rbp), %rax	#, tmp975
	movl	$800, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp975,
	call	memset	#
	.loc 1 1248 0
	movl	$0, -932(%rbp)	#, i
	jmp	.L474	#
.L479:
.LBB17:
	.loc 1 1249 0
	movl	$0, -916(%rbp)	#, count
	.loc 1 1250 0
	movq	-968(%rbp), %rax	# sv, tmp976
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct HE * * *)_353], D.13445
	movl	-932(%rbp), %edx	# i, tmp977
	movslq	%edx, %rdx	# tmp977, D.13430
	salq	$3, %rdx	#, D.13430
	addq	%rdx, %rax	# D.13430, D.13445
	movq	(%rax), %rax	# *_357, tmp978
	movq	%rax, -888(%rbp)	# tmp978, h
	jmp	.L475	#
.L476:
	.loc 1 1251 0 discriminator 2
	addl	$1, -916(%rbp)	#, count
	.loc 1 1250 0 discriminator 2
	movq	-888(%rbp), %rax	# h, tmp979
	movq	(%rax), %rax	# h_10->hent_next, tmp980
	movq	%rax, -888(%rbp)	# tmp980, h
.L475:
	.loc 1 1250 0 is_stmt 0 discriminator 1
	cmpq	$0, -888(%rbp)	#, h
	jne	.L476	#,
	.loc 1 1252 0 is_stmt 1
	movl	-916(%rbp), %eax	# count, count.33
	cmpl	$199, %eax	#, count.33
	jbe	.L477	#,
	.loc 1 1253 0
	movl	$199, -916(%rbp)	#, count
.L477:
	.loc 1 1254 0
	movl	-916(%rbp), %eax	# count, tmp982
	cltq
	movl	-800(%rbp,%rax,4), %eax	# freq, D.13427
	leal	1(%rax), %edx	#, D.13427
	movl	-916(%rbp), %eax	# count, tmp984
	cltq
	movl	%edx, -800(%rbp,%rax,4)	# D.13427, freq
	.loc 1 1255 0
	movl	-928(%rbp), %eax	# max, tmp985
	cmpl	-916(%rbp), %eax	# count, tmp985
	jge	.L478	#,
	.loc 1 1256 0
	movl	-916(%rbp), %eax	# count, tmp986
	movl	%eax, -928(%rbp)	# tmp986, max
.L478:
.LBE17:
	.loc 1 1248 0
	addl	$1, -932(%rbp)	#, i
.L474:
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movl	-932(%rbp), %eax	# i, tmp987
	movslq	%eax, %rdx	# tmp987, D.13430
	movq	-968(%rbp), %rax	# sv, tmp988
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	16(%rax), %rax	# MEM[(struct XPVHV *)_349].xhv_max, D.13430
	cmpq	%rax, %rdx	# D.13430, D.13430
	jbe	.L479	#,
	.loc 1 1258 0 is_stmt 1
	movl	$0, -932(%rbp)	#, i
	jmp	.L480	#
.L484:
	.loc 1 1259 0
	movl	-932(%rbp), %eax	# i, tmp990
	cltq
	movl	-800(%rbp,%rax,4), %eax	# freq, D.13427
	testl	%eax, %eax	# D.13427
	je	.L481	#,
	.loc 1 1260 0
	movl	-932(%rbp), %eax	# i, tmp992
	cltq
	movl	-800(%rbp,%rax,4), %ecx	# freq, D.13427
	cmpl	$199, -932(%rbp)	#, i
	jne	.L482	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	movl	$.LC347, %eax	#, iftmp.34
	jmp	.L483	#
.L482:
	.loc 1 1260 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.34
.L483:
	.loc 1 1260 0 discriminator 3
	movl	-932(%rbp), %edx	# i, tmp993
	movq	-960(%rbp), %rdi	# file, tmp994
	movl	%ecx, %r8d	# D.13427,
	movq	%rax, %rcx	# iftmp.34,
	movl	$.LC348, %esi	#,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1263 0 is_stmt 1 discriminator 3
	movl	-932(%rbp), %eax	# i, tmp995
	cmpl	-928(%rbp), %eax	# max, tmp995
	je	.L481	#,
	.loc 1 1264 0
	movq	-960(%rbp), %rax	# file, tmp996
	movl	$.LC349, %esi	#,
	movq	%rax, %rdi	# tmp996,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L481:
	.loc 1 1258 0
	addl	$1, -932(%rbp)	#, i
.L480:
	.loc 1 1258 0 is_stmt 0 discriminator 1
	movl	-932(%rbp), %eax	# i, tmp997
	cmpl	-928(%rbp), %eax	# max, tmp997
	jle	.L484	#,
	.loc 1 1267 0 is_stmt 1
	movq	-960(%rbp), %rax	# file, tmp998
	movl	$41, %esi	#,
	movq	%rax, %rdi	# tmp998,
	call	PerlIO_putc	#
	.loc 1 1279 0
	movl	-928(%rbp), %eax	# max, tmp999
	movl	%eax, -932(%rbp)	# tmp999, i
	jmp	.L485	#
.L486:
	.loc 1 1280 0 discriminator 2
	movl	-932(%rbp), %eax	# i, tmp1001
	cltq
	movl	-800(%rbp,%rax,4), %eax	# freq, D.13427
	imull	-932(%rbp), %eax	# i, D.13427
	imull	-932(%rbp), %eax	# i, D.13427
	cvtsi2sd	%eax, %xmm0	# D.13427, D.13439
	movsd	-896(%rbp), %xmm1	# sum, tmp1003
	addsd	%xmm1, %xmm0	# tmp1003, tmp1002
	movsd	%xmm0, -896(%rbp)	# tmp1002, sum
	.loc 1 1279 0 discriminator 2
	subl	$1, -932(%rbp)	#, i
.L485:
	.loc 1 1279 0 is_stmt 0 discriminator 1
	cmpl	$0, -932(%rbp)	#, i
	jg	.L486	#,
	.loc 1 1282 0 is_stmt 1
	jmp	.L487	#
.L488:
	.loc 1 1283 0
	sall	-924(%rbp)	# pow2
.L487:
	.loc 1 1282 0 discriminator 1
	shrl	-920(%rbp)	# keys
	cmpl	$0, -920(%rbp)	#, keys
	jne	.L488	#,
	.loc 1 1284 0
	movq	-968(%rbp), %rax	# sv, tmp1004
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rdx	# MEM[(struct XPVHV *)_382].xhv_keys, D.13428
	movq	-968(%rbp), %rax	# sv, tmp1005
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movsd	32(%rax), %xmm0	# MEM[(struct XPVHV *)_384].xnv_nv, D.13439
	cvttsd2siq	%xmm0, %rax	# D.13439, D.13428
	subq	%rax, %rdx	# D.13428, D.13428
	movq	%rdx, %rax	# D.13428, D.13428
	cvtsi2sdq	%rax, %xmm0	# D.13428, tmp1006
	movsd	%xmm0, -856(%rbp)	# tmp1006, theoret
	.loc 1 1285 0
	movsd	-856(%rbp), %xmm0	# theoret, tmp1007
	movsd	.LC23(%rip), %xmm1	#, tmp1008
	subsd	%xmm1, %xmm0	# tmp1008, D.13439
	movapd	%xmm0, %xmm1	# D.13439, D.13439
	mulsd	-856(%rbp), %xmm1	# theoret, D.13439
	movl	-924(%rbp), %eax	# pow2, tmp1009
	testq	%rax, %rax	# tmp1009
	js	.L489	#,
	cvtsi2sdq	%rax, %xmm0	# tmp1009, D.13439
	jmp	.L490	#
.L489:
	movq	%rax, %rdx	# tmp1009, tmp1011
	shrq	%rdx	# tmp1011
	andl	$1, %eax	#, tmp1012
	orq	%rax, %rdx	# tmp1012, tmp1011
	cvtsi2sdq	%rdx, %xmm0	# tmp1011, tmp1010
	addsd	%xmm0, %xmm0	# tmp1010, D.13439
.L490:
	divsd	%xmm0, %xmm1	# D.13439, D.13439
	movapd	%xmm1, %xmm0	# D.13439, D.13439
	movsd	-856(%rbp), %xmm1	# theoret, tmp1014
	addsd	%xmm1, %xmm0	# tmp1014, tmp1013
	movsd	%xmm0, -856(%rbp)	# tmp1013, theoret
	.loc 1 1286 0
	movq	-960(%rbp), %rax	# file, tmp1015
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp1015,
	call	PerlIO_putc	#
	.loc 1 1287 0
	movsd	-856(%rbp), %xmm0	# theoret, tmp1016
	divsd	-896(%rbp), %xmm0	# sum, D.13439
	movsd	.LC350(%rip), %xmm1	#, tmp1017
	mulsd	%xmm1, %xmm0	# tmp1017, D.13439
	movq	-960(%rbp), %rcx	# file, tmp1018
	movl	-948(%rbp), %eax	# level, tmp1019
	movl	$.LC351, %edx	#,
	movq	%rcx, %rsi	# tmp1018,
	movl	%eax, %edi	# tmp1019,
	movl	$1, %eax	#,
	call	Perl_dump_indent	#
.L473:
.LBE16:
	.loc 1 1289 0
	movq	-960(%rbp), %rax	# file, tmp1020
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp1020,
	call	PerlIO_putc	#
	.loc 1 1290 0
	movq	-968(%rbp), %rax	# sv, tmp1021
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	24(%rax), %rdx	# MEM[(struct XPVHV *)_396].xhv_keys, D.13428
	movq	-968(%rbp), %rax	# sv, tmp1022
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movsd	32(%rax), %xmm0	# MEM[(struct XPVHV *)_398].xnv_nv, D.13439
	cvttsd2siq	%xmm0, %rax	# D.13439, D.13428
	subq	%rax, %rdx	# D.13428, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1023
	movl	-948(%rbp), %eax	# level, tmp1024
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC352, %edx	#,
	movl	%eax, %edi	# tmp1024,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1291 0
	movq	-968(%rbp), %rax	# sv, tmp1025
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	8(%rax), %rax	# MEM[(struct XPVHV *)_402].xhv_fill, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1026
	movl	-948(%rbp), %eax	# level, tmp1027
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC338, %edx	#,
	movl	%eax, %edi	# tmp1027,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1292 0
	movq	-968(%rbp), %rax	# sv, tmp1028
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	16(%rax), %rax	# MEM[(struct XPVHV *)_405].xhv_max, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1029
	movl	-948(%rbp), %eax	# level, tmp1030
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC339, %edx	#,
	movl	%eax, %edi	# tmp1030,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1293 0
	movq	-968(%rbp), %rax	# sv, tmp1031
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movl	56(%rax), %eax	# MEM[(struct XPVHV *)_408].xhv_riter, D.13427
	movslq	%eax, %rdx	# D.13427, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1032
	movl	-948(%rbp), %eax	# level, tmp1033
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC353, %edx	#,
	movl	%eax, %edi	# tmp1033,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1294 0
	movq	-968(%rbp), %rax	# sv, tmp1034
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVHV *)_411].xhv_eiter, D.13446
	movq	%rax, %rdx	# D.13446, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1035
	movl	-948(%rbp), %eax	# level, tmp1036
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC354, %edx	#,
	movl	%eax, %edi	# tmp1036,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1295 0
	movq	-968(%rbp), %rax	# sv, tmp1037
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVHV *)_414].xhv_pmroot, D.13447
	testq	%rax, %rax	# D.13447
	je	.L491	#,
	.loc 1 1296 0
	movq	-968(%rbp), %rax	# sv, tmp1038
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVHV *)_416].xhv_pmroot, D.13447
	movq	%rax, %rdx	# D.13447, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1039
	movl	-948(%rbp), %eax	# level, tmp1040
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC355, %edx	#,
	movl	%eax, %edi	# tmp1040,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L491:
	.loc 1 1297 0
	movq	-968(%rbp), %rax	# sv, tmp1041
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	80(%rax), %rax	# MEM[(struct XPVHV *)_419].xhv_name, D.13436
	testq	%rax, %rax	# D.13436
	je	.L492	#,
	.loc 1 1298 0
	movq	-968(%rbp), %rax	# sv, tmp1042
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	80(%rax), %rdx	# MEM[(struct XPVHV *)_421].xhv_name, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1043
	movl	-948(%rbp), %eax	# level, tmp1044
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC356, %edx	#,
	movl	%eax, %edi	# tmp1044,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L492:
	.loc 1 1299 0
	movl	-952(%rbp), %eax	# nest, tmp1045
	cmpl	-972(%rbp), %eax	# maxnest, tmp1045
	jge	.L493	#,
	.loc 1 1299 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp1046
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVHV *)_423].xhv_eiter, D.13446
	testq	%rax, %rax	# D.13446
	jne	.L493	#,
.LBB18:
	.loc 1 1301 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp1047
	movq	%rax, -848(%rbp)	# tmp1047, hv
	.loc 1 1302 0
	movl	-952(%rbp), %eax	# nest, tmp1052
	movl	-972(%rbp), %edx	# maxnest, tmp1053
	subl	%eax, %edx	# tmp1052, tmp1051
	movl	%edx, %eax	# tmp1051, tmp1051
	movl	%eax, -912(%rbp)	# tmp1051, count
	.loc 1 1304 0
	movq	-848(%rbp), %rax	# hv, tmp1054
	movq	%rax, %rdi	# tmp1054,
	call	Perl_hv_iterinit	#
	.loc 1 1305 0
	jmp	.L494	#
.L500:
.LBB19:
	.loc 1 1310 0
	movq	-840(%rbp), %rax	# he, tmp1055
	movq	8(%rax), %rax	# he_427->hent_hek, D.13448
	movl	(%rax), %eax	# _430->hek_hash, tmp1056
	movl	%eax, -900(%rbp)	# tmp1056, hash
	.loc 1 1312 0
	movq	-840(%rbp), %rax	# he, tmp1057
	movq	%rax, %rdi	# tmp1057,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -832(%rbp)	# tmp1058, keysv
	.loc 1 1313 0
	movq	-832(%rbp), %rax	# keysv, tmp1059
	movl	12(%rax), %eax	# keysv_432->sv_flags, D.13426
	andl	$262144, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L495	#,
	.loc 1 1313 0 is_stmt 0 discriminator 1
	movq	-832(%rbp), %rax	# keysv, tmp1060
	movq	(%rax), %rax	# keysv_432->sv_any, D.13429
	movq	8(%rax), %rax	# MEM[(struct XPV *)_435].xpv_cur, len.36
	movq	%rax, -800(%rbp)	# len.36, len
	movq	-832(%rbp), %rax	# keysv, tmp1061
	movq	(%rax), %rax	# keysv_432->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_437].xpv_pv, iftmp.35
	jmp	.L496	#
.L495:
	.loc 1 1313 0 discriminator 2
	leaq	-800(%rbp), %rcx	#, tmp1062
	movq	-832(%rbp), %rax	# keysv, tmp1063
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1062,
	movq	%rax, %rdi	# tmp1063,
	call	Perl_sv_2pv_flags	#
.L496:
	.loc 1 1313 0 discriminator 3
	movq	%rax, -824(%rbp)	# iftmp.35, keypv
	.loc 1 1314 0 is_stmt 1 discriminator 3
	movq	-840(%rbp), %rdx	# he, tmp1064
	movq	-848(%rbp), %rax	# hv, tmp1065
	movq	%rdx, %rsi	# tmp1064,
	movq	%rax, %rdi	# tmp1065,
	call	Perl_hv_iterval	#
	movq	%rax, -816(%rbp)	# tmp1066, elt
	.loc 1 1315 0 discriminator 3
	movq	-800(%rbp), %rdx	# len, len.37
	movq	-824(%rbp), %rsi	# keypv, tmp1067
	movq	-880(%rbp), %rax	# d, tmp1068
	movq	16(%rbp), %r8	# pvlim,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp1068,
	call	Perl_pv_display	#
	movq	%rax, %rdx	#, D.13436
	movl	-948(%rbp), %eax	# level, tmp1069
	leal	1(%rax), %edi	#, D.13427
	movq	-960(%rbp), %rax	# file, tmp1070
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC357, %edx	#,
	movq	%rax, %rsi	# tmp1070,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1316 0 discriminator 3
	movq	-832(%rbp), %rax	# keysv, tmp1071
	movl	12(%rax), %eax	# keysv_432->sv_flags, D.13426
	andl	$536870912, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L497	#,
	.loc 1 1317 0
	movq	-832(%rbp), %rax	# keysv, tmp1072
	movq	%rax, %rdi	# tmp1072,
	call	Perl_sv_len_utf8	#
	leaq	0(,%rax,8), %rdx	#, D.13430
	movq	-832(%rbp), %rsi	# keysv, tmp1073
	movq	-880(%rbp), %rax	# d, tmp1074
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp1074,
	call	Perl_sv_uni_display	#
	movq	%rax, %rdx	#, D.13436
	movq	-960(%rbp), %rax	# file, tmp1075
	movl	$.LC358, %esi	#,
	movq	%rax, %rdi	# tmp1075,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L497:
	.loc 1 1318 0
	movq	-840(%rbp), %rax	# he, tmp1076
	movq	8(%rax), %rdx	# he_427->hent_hek, D.13448
	movq	-840(%rbp), %rax	# he, tmp1077
	movq	8(%rax), %rax	# he_427->hent_hek, D.13448
	movl	4(%rax), %eax	# _451->hek_len, D.13427
	cltq
	addq	$1, %rax	#, D.13437
	addq	%rdx, %rax	# D.13448, tmp1078
	addq	$8, %rax	#, D.13436
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_455], D.13433
	movzbl	%al, %eax	# D.13433, D.13427
	andl	$4, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L498	#,
	.loc 1 1319 0
	movq	-960(%rbp), %rax	# file, tmp1079
	movl	$.LC359, %esi	#,
	movq	%rax, %rdi	# tmp1079,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L498:
	.loc 1 1320 0
	movl	-900(%rbp), %edx	# hash, D.13430
	movq	-960(%rbp), %rax	# file, tmp1080
	movl	$.LC360, %esi	#,
	movq	%rax, %rdi	# tmp1080,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1321 0
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movl	-952(%rbp), %eax	# nest, tmp1081
	leal	1(%rax), %esi	#, D.13427
	movl	-948(%rbp), %eax	# level, tmp1082
	leal	1(%rax), %edi	#, D.13427
	movl	-972(%rbp), %r8d	# maxnest, tmp1083
	movq	-816(%rbp), %rdx	# elt, tmp1084
	movq	-960(%rbp), %rax	# file, tmp1085
	movq	16(%rbp), %rcx	# pvlim, tmp1086
	movq	%rcx, (%rsp)	# tmp1086,
	movl	%esi, %ecx	# D.13427,
	movq	%rax, %rsi	# tmp1085,
	call	Perl_do_sv_dump	#
.L494:
.LBE19:
	.loc 1 1305 0 discriminator 1
	movq	-848(%rbp), %rax	# hv, tmp1087
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp1087,
	call	Perl_hv_iternext_flags	#
	movq	%rax, -840(%rbp)	# tmp1088, he
	cmpq	$0, -840(%rbp)	#, he
	je	.L499	#,
	.loc 1 1306 0
	movl	-912(%rbp), %eax	# count, count.38
	leal	-1(%rax), %edx	#, tmp1089
	movl	%edx, -912(%rbp)	# tmp1089, count
	testl	%eax, %eax	# count.38
	jne	.L500	#,
.L499:
	.loc 1 1323 0
	movq	-848(%rbp), %rax	# hv, tmp1090
	movq	%rax, %rdi	# tmp1090,
	call	Perl_hv_iterinit	#
.LBE18:
	.loc 1 1325 0
	jmp	.L452	#
.L493:
	jmp	.L452	#
.L457:
	.loc 1 1327 0
	movq	-968(%rbp), %rax	# sv, tmp1091
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$262144, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L459	#,
	.loc 1 1328 0
	movq	-968(%rbp), %rax	# sv, tmp1092
	movl	12(%rax), %eax	# sv_23(D)->sv_flags, D.13426
	andl	$262144, %eax	#, D.13426
	testl	%eax, %eax	# D.13426
	je	.L501	#,
	.loc 1 1328 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp1093
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	(%rax), %rax	# MEM[(struct XPV *)_467].xpv_pv, iftmp.39
	jmp	.L502	#
.L501:
	.loc 1 1328 0 discriminator 2
	movq	-968(%rbp), %rax	# sv, tmp1094
	movq	%rax, %rdi	# tmp1094,
	call	Perl_sv_2pv_nolen	#
.L502:
	.loc 1 1328 0 discriminator 3
	movq	-960(%rbp), %rsi	# file, tmp1095
	movl	-948(%rbp), %edi	# level, tmp1096
	movq	%rax, %rcx	# iftmp.39,
	movl	$.LC361, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L459:
	.loc 1 1331 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp1097
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rdx	# MEM[(struct XPVCV *)_470].xcv_stash, D.13442
	movq	-960(%rbp), %rsi	# file, tmp1098
	movl	-948(%rbp), %eax	# level, tmp1099
	movq	%rdx, %rcx	# D.13442,
	movl	$.LC362, %edx	#,
	movl	%eax, %edi	# tmp1099,
	call	Perl_do_hv_dump	#
	.loc 1 1332 0
	movq	-968(%rbp), %rax	# sv, tmp1100
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVCV *)_472].xcv_start, D.13449
	testq	%rax, %rax	# D.13449
	je	.L503	#,
	.loc 1 1333 0
	movq	-968(%rbp), %rax	# sv, tmp1101
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVCV *)_474].xcv_start, D.13449
	movzwl	34(%rax), %eax	# _475->op_seq, D.13431
	movzwl	%ax, %ecx	# D.13431, D.13428
	movq	-968(%rbp), %rax	# sv, tmp1102
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVCV *)_478].xcv_start, D.13449
	movq	%rax, %rdx	# D.13449, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1103
	movl	-948(%rbp), %eax	# level, tmp1104
	movq	%rcx, %r8	# D.13428,
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC363, %edx	#,
	movl	%eax, %edi	# tmp1104,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L503:
	.loc 1 1334 0
	movq	-968(%rbp), %rax	# sv, tmp1105
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVCV *)_481].xcv_root, D.13449
	movq	%rax, %rdx	# D.13449, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1106
	movl	-948(%rbp), %eax	# level, tmp1107
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC364, %edx	#,
	movl	%eax, %edi	# tmp1107,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1335 0
	movq	-968(%rbp), %rax	# sv, tmp1108
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVCV *)_484].xcv_root, D.13449
	testq	%rax, %rax	# D.13449
	je	.L504	#,
	.loc 1 1335 0 is_stmt 0 discriminator 1
	cmpb	$0, -976(%rbp)	#, dumpops
	je	.L504	#,
	.loc 1 1336 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp1109
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rdx	# MEM[(struct XPVCV *)_486].xcv_root, D.13449
	movl	-948(%rbp), %eax	# level, tmp1110
	leal	1(%rax), %ecx	#, D.13427
	movq	-960(%rbp), %rax	# file, tmp1111
	movq	%rax, %rsi	# tmp1111,
	movl	%ecx, %edi	# D.13427,
	call	Perl_do_op_dump	#
.L504:
	.loc 1 1337 0
	movq	-968(%rbp), %rax	# sv, tmp1112
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	80(%rax), %rax	# MEM[(struct XPVCV *)_489].xcv_xsub, D.13450
	movq	%rax, %rdx	# D.13450, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1113
	movl	-948(%rbp), %eax	# level, tmp1114
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC365, %edx	#,
	movl	%eax, %edi	# tmp1114,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1338 0
	movq	-968(%rbp), %rax	# sv, tmp1115
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movl	88(%rax), %eax	# MEM[(struct XPVCV *)_492].xcv_xsubany.any_i32, D.13427
	movslq	%eax, %rdx	# D.13427, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1116
	movl	-948(%rbp), %eax	# level, tmp1117
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC366, %edx	#,
	movl	%eax, %edi	# tmp1117,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1339 0
	movq	-968(%rbp), %rax	# sv, tmp1118
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	96(%rax), %rdx	# MEM[(struct XPVCV *)_495].xcv_gv, D.13451
	movq	-960(%rbp), %rsi	# file, tmp1119
	movl	-948(%rbp), %eax	# level, tmp1120
	movq	%rdx, %rcx	# D.13451,
	movl	$.LC367, %edx	#,
	movl	%eax, %edi	# tmp1120,
	call	Perl_do_gvgv_dump	#
	.loc 1 1340 0
	movq	-968(%rbp), %rax	# sv, tmp1121
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	104(%rax), %rdx	# MEM[(struct XPVCV *)_497].xcv_file, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1122
	movl	-948(%rbp), %eax	# level, tmp1123
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC368, %edx	#,
	movl	%eax, %edi	# tmp1123,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1341 0
	movq	-968(%rbp), %rax	# sv, tmp1124
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	112(%rax), %rdx	# MEM[(struct XPVCV *)_499].xcv_depth, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1125
	movl	-948(%rbp), %eax	# level, tmp1126
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC369, %edx	#,
	movl	%eax, %edi	# tmp1126,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1346 0
	movq	-968(%rbp), %rax	# sv, tmp1127
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_501].xcv_flags, D.13431
	movzwl	%ax, %edx	# D.13431, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1128
	movl	-948(%rbp), %eax	# level, tmp1129
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC370, %edx	#,
	movl	%eax, %edi	# tmp1129,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1347 0
	movq	-968(%rbp), %rax	# sv, tmp1130
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movl	140(%rax), %eax	# MEM[(struct XPVCV *)_504].xcv_outside_seq, D.13426
	movl	%eax, %edx	# D.13426, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1131
	movl	-948(%rbp), %eax	# level, tmp1132
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC371, %edx	#,
	movl	%eax, %edi	# tmp1132,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1348 0
	cmpl	$14, -904(%rbp)	#, type
	jne	.L505	#,
	.loc 1 1349 0
	movq	-968(%rbp), %rax	# sv, tmp1133
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	144(%rax), %rdx	# MEM[(struct XPVFM *)_507].xfm_lines, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1134
	movl	-948(%rbp), %eax	# level, tmp1135
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC372, %edx	#,
	movl	%eax, %edi	# tmp1135,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L505:
	.loc 1 1350 0
	movq	-968(%rbp), %rax	# sv, tmp1136
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	120(%rax), %rax	# MEM[(struct XPVCV *)_509].xcv_padlist, D.13452
	movq	%rax, %rdx	# D.13452, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1137
	movl	-948(%rbp), %eax	# level, tmp1138
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC373, %edx	#,
	movl	%eax, %edi	# tmp1138,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1351 0
	movl	-952(%rbp), %eax	# nest, tmp1139
	cmpl	-972(%rbp), %eax	# maxnest, tmp1139
	jge	.L506	#,
	.loc 1 1352 0
	movq	-968(%rbp), %rax	# sv, tmp1140
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	120(%rax), %rdx	# MEM[(struct XPVCV *)_512].xcv_padlist, D.13452
	movl	-948(%rbp), %eax	# level, tmp1141
	leal	1(%rax), %edi	#, D.13427
	movq	-960(%rbp), %rax	# file, tmp1142
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp1142,
	call	Perl_do_dump_pad	#
.L506:
.LBB20:
	.loc 1 1355 0
	movq	-968(%rbp), %rax	# sv, tmp1143
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	128(%rax), %rax	# MEM[(struct XPVCV *)_515].xcv_outside, tmp1144
	movq	%rax, -808(%rbp)	# tmp1144, outside
	.loc 1 1356 0
	cmpq	$0, -808(%rbp)	#, outside
	je	.L507	#,
	.loc 1 1359 0
	movq	-808(%rbp), %rax	# outside, tmp1145
	movq	(%rax), %rax	# outside_516->sv_any, D.13453
	movzwl	136(%rax), %eax	# _517->xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$4, %eax	#, D.13427
	.loc 1 1360 0
	testl	%eax, %eax	# D.13427
	jne	.L508	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, PL_main_cv.43
	.loc 1 1361 0 is_stmt 1 discriminator 1
	cmpq	%rax, -808(%rbp)	# PL_main_cv.43, outside
	je	.L509	#,
	movq	-808(%rbp), %rax	# outside, tmp1146
	movq	(%rax), %rax	# outside_516->sv_any, D.13453
	movzwl	136(%rax), %eax	# _522->xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$16, %eax	#, D.13427
	.loc 1 1362 0 discriminator 1
	testl	%eax, %eax	# D.13427
	jne	.L510	#,
	movq	-808(%rbp), %rax	# outside, tmp1147
	movq	(%rax), %rax	# outside_516->sv_any, D.13453
	movq	96(%rax), %rax	# _526->xcv_gv, D.13451
	testq	%rax, %rax	# D.13451
	je	.L511	#,
	movq	-808(%rbp), %rax	# outside, tmp1148
	movq	(%rax), %rax	# outside_516->sv_any, D.13453
	movq	96(%rax), %rax	# _528->xcv_gv, D.13451
	movq	(%rax), %rax	# _529->sv_any, D.13454
	movq	64(%rax), %rax	# _530->xgv_name, iftmp.45
	jmp	.L516	#
.L511:
	.loc 1 1362 0 is_stmt 0 discriminator 2
	movl	$.LC374, %eax	#, iftmp.45
	jmp	.L516	#
.L510:
	movl	$.LC375, %eax	#, iftmp.44
	jmp	.L516	#
.L509:
	.loc 1 1361 0 is_stmt 1 discriminator 2
	movl	$.LC376, %eax	#, iftmp.42
	jmp	.L516	#
.L508:
	.loc 1 1360 0 discriminator 2
	movl	$.LC377, %eax	#, iftmp.41
	jmp	.L516	#
.L507:
	.loc 1 1356 0 discriminator 1
	movl	$.LC378, %eax	#, iftmp.40
.L516:
	.loc 1 1356 0 is_stmt 0 discriminator 2
	movq	-808(%rbp), %rdx	# outside, outside.46
	movq	-960(%rbp), %rsi	# file, tmp1149
	movl	-948(%rbp), %edi	# level, tmp1150
	movq	%rax, %r8	# iftmp.40,
	movq	%rdx, %rcx	# outside.46,
	movl	$.LC379, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.LBE20:
	.loc 1 1364 0 is_stmt 1 discriminator 2
	movl	-952(%rbp), %eax	# nest, tmp1151
	cmpl	-972(%rbp), %eax	# maxnest, tmp1151
	jge	.L517	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp1152
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_542].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$1, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	jne	.L518	#,
	movq	-968(%rbp), %rax	# sv, tmp1153
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_546].xcv_flags, D.13431
	movzwl	%ax, %eax	# D.13431, D.13427
	andl	$2, %eax	#, D.13427
	testl	%eax, %eax	# D.13427
	je	.L517	#,
.L518:
	.loc 1 1365 0 is_stmt 1
	movsbl	-976(%rbp), %r9d	# dumpops, D.13427
	movl	-952(%rbp), %eax	# nest, tmp1154
	leal	1(%rax), %esi	#, D.13427
	movq	-968(%rbp), %rax	# sv, tmp1155
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	128(%rax), %rdx	# MEM[(struct XPVCV *)_552].xcv_outside, D.13455
	movl	-948(%rbp), %eax	# level, tmp1156
	leal	1(%rax), %edi	#, D.13427
	movl	-972(%rbp), %r8d	# maxnest, tmp1157
	movq	-960(%rbp), %rax	# file, tmp1158
	movq	16(%rbp), %rcx	# pvlim, tmp1159
	movq	%rcx, (%rsp)	# tmp1159,
	movl	%esi, %ecx	# D.13427,
	movq	%rax, %rsi	# tmp1158,
	call	Perl_do_sv_dump	#
	.loc 1 1366 0
	jmp	.L452	#
.L517:
	jmp	.L452	#
.L458:
	.loc 1 1368 0
	movq	-968(%rbp), %rax	# sv, tmp1160
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rdx	# MEM[(struct XPVGV *)_555].xgv_name, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1161
	movl	-948(%rbp), %eax	# level, tmp1162
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC356, %edx	#,
	movl	%eax, %edi	# tmp1162,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1369 0
	movq	-968(%rbp), %rax	# sv, tmp1163
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVGV *)_557].xgv_namelen, D.13430
	movq	%rax, %rdx	# D.13430, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1164
	movl	-948(%rbp), %eax	# level, tmp1165
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC380, %edx	#,
	movl	%eax, %edi	# tmp1165,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1370 0
	movq	-968(%rbp), %rax	# sv, tmp1166
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	80(%rax), %rdx	# MEM[(struct XPVGV *)_560].xgv_stash, D.13442
	movq	-960(%rbp), %rsi	# file, tmp1167
	movl	-948(%rbp), %eax	# level, tmp1168
	movq	%rdx, %rcx	# D.13442,
	movl	$.LC381, %edx	#,
	movl	%eax, %edi	# tmp1168,
	call	Perl_do_hv_dump	#
	.loc 1 1371 0
	movq	-968(%rbp), %rax	# sv, tmp1169
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_562].xgv_gp, D.13434
	movq	%rax, %rdx	# D.13434, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1170
	movl	-948(%rbp), %eax	# level, tmp1171
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC382, %edx	#,
	movl	%eax, %edi	# tmp1171,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1372 0
	movq	-968(%rbp), %rax	# sv, tmp1172
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_565].xgv_gp, D.13434
	testq	%rax, %rax	# D.13434
	jne	.L519	#,
	.loc 1 1373 0
	jmp	.L452	#
.L519:
	.loc 1 1374 0
	movq	-968(%rbp), %rax	# sv, tmp1173
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_567].xgv_gp, D.13434
	movq	(%rax), %rax	# _568->gp_sv, D.13440
	movq	%rax, %rdx	# D.13440, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1174
	movl	-948(%rbp), %eax	# level, tmp1175
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC383, %edx	#,
	movl	%eax, %edi	# tmp1175,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1375 0
	movq	-968(%rbp), %rax	# sv, tmp1176
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_571].xgv_gp, D.13434
	movl	8(%rax), %eax	# _572->gp_refcnt, D.13426
	movl	%eax, %edx	# D.13426, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1177
	movl	-948(%rbp), %eax	# level, tmp1178
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC384, %edx	#,
	movl	%eax, %edi	# tmp1178,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1376 0
	movq	-968(%rbp), %rax	# sv, tmp1179
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_575].xgv_gp, D.13434
	movq	16(%rax), %rax	# _576->gp_io, D.13456
	movq	%rax, %rdx	# D.13456, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1180
	movl	-948(%rbp), %eax	# level, tmp1181
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC385, %edx	#,
	movl	%eax, %edi	# tmp1181,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1377 0
	movq	-968(%rbp), %rax	# sv, tmp1182
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_579].xgv_gp, D.13434
	movq	24(%rax), %rax	# _580->gp_form, D.13455
	movq	%rax, %rdx	# D.13455, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1183
	movl	-948(%rbp), %eax	# level, tmp1184
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC386, %edx	#,
	movl	%eax, %edi	# tmp1184,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1378 0
	movq	-968(%rbp), %rax	# sv, tmp1185
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_583].xgv_gp, D.13434
	movq	32(%rax), %rax	# _584->gp_av, D.13457
	movq	%rax, %rdx	# D.13457, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1186
	movl	-948(%rbp), %eax	# level, tmp1187
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC387, %edx	#,
	movl	%eax, %edi	# tmp1187,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1379 0
	movq	-968(%rbp), %rax	# sv, tmp1188
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_587].xgv_gp, D.13434
	movq	40(%rax), %rax	# _588->gp_hv, D.13442
	movq	%rax, %rdx	# D.13442, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1189
	movl	-948(%rbp), %eax	# level, tmp1190
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC388, %edx	#,
	movl	%eax, %edi	# tmp1190,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1380 0
	movq	-968(%rbp), %rax	# sv, tmp1191
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_591].xgv_gp, D.13434
	movq	56(%rax), %rax	# _592->gp_cv, D.13455
	movq	%rax, %rdx	# D.13455, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1192
	movl	-948(%rbp), %eax	# level, tmp1193
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC389, %edx	#,
	movl	%eax, %edi	# tmp1193,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1381 0
	movq	-968(%rbp), %rax	# sv, tmp1194
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_595].xgv_gp, D.13434
	movl	64(%rax), %eax	# _596->gp_cvgen, D.13426
	movl	%eax, %edx	# D.13426, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1195
	movl	-948(%rbp), %eax	# level, tmp1196
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC390, %edx	#,
	movl	%eax, %edi	# tmp1196,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1382 0
	movq	-968(%rbp), %rax	# sv, tmp1197
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_599].xgv_gp, D.13434
	movl	68(%rax), %eax	# _600->gp_flags, D.13426
	movl	%eax, %edx	# D.13426, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1198
	movl	-948(%rbp), %eax	# level, tmp1199
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC391, %edx	#,
	movl	%eax, %edi	# tmp1199,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1383 0
	movq	-968(%rbp), %rax	# sv, tmp1200
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_603].xgv_gp, D.13434
	movl	72(%rax), %eax	# _604->gp_line, D.13426
	movl	%eax, %edx	# D.13426, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1201
	movl	-948(%rbp), %eax	# level, tmp1202
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC392, %edx	#,
	movl	%eax, %edi	# tmp1202,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1384 0
	movq	-968(%rbp), %rax	# sv, tmp1203
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_607].xgv_gp, D.13434
	movq	80(%rax), %rdx	# _608->gp_file, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1204
	movl	-948(%rbp), %eax	# level, tmp1205
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC393, %edx	#,
	movl	%eax, %edi	# tmp1205,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1385 0
	movq	-968(%rbp), %rax	# sv, tmp1206
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	88(%rax), %eax	# MEM[(struct XPVGV *)_610].xgv_flags, D.13433
	movzbl	%al, %edx	# D.13433, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1207
	movl	-948(%rbp), %eax	# level, tmp1208
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC394, %edx	#,
	movl	%eax, %edi	# tmp1208,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1386 0
	movq	-968(%rbp), %rax	# sv, tmp1209
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_613].xgv_gp, D.13434
	movq	48(%rax), %rdx	# _614->gp_egv, D.13451
	movq	-960(%rbp), %rsi	# file, tmp1210
	movl	-948(%rbp), %eax	# level, tmp1211
	movq	%rdx, %rcx	# D.13451,
	movl	$.LC395, %edx	#,
	movl	%eax, %edi	# tmp1211,
	call	Perl_do_gv_dump	#
	.loc 1 1387 0
	jmp	.L452	#
.L460:
	.loc 1 1389 0
	movq	-968(%rbp), %rax	# sv, tmp1212
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	56(%rax), %rax	# MEM[(struct XPVIO *)_616].xio_ifp, D.13458
	movq	%rax, %rdx	# D.13458, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1213
	movl	-948(%rbp), %eax	# level, tmp1214
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC396, %edx	#,
	movl	%eax, %edi	# tmp1214,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1390 0
	movq	-968(%rbp), %rax	# sv, tmp1215
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	64(%rax), %rax	# MEM[(struct XPVIO *)_619].xio_ofp, D.13458
	movq	%rax, %rdx	# D.13458, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1216
	movl	-948(%rbp), %eax	# level, tmp1217
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC397, %edx	#,
	movl	%eax, %edi	# tmp1217,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1391 0
	movq	-968(%rbp), %rax	# sv, tmp1218
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	72(%rax), %rax	# MEM[(struct XPVIO *)_622].xio_dirpu.xiou_dirp, D.13459
	movq	%rax, %rdx	# D.13459, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1219
	movl	-948(%rbp), %eax	# level, tmp1220
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC398, %edx	#,
	movl	%eax, %edi	# tmp1220,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1392 0
	movq	-968(%rbp), %rax	# sv, tmp1221
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	80(%rax), %rdx	# MEM[(struct XPVIO *)_625].xio_lines, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1222
	movl	-948(%rbp), %eax	# level, tmp1223
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC372, %edx	#,
	movl	%eax, %edi	# tmp1223,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1393 0
	movq	-968(%rbp), %rax	# sv, tmp1224
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	88(%rax), %rdx	# MEM[(struct XPVIO *)_627].xio_page, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1225
	movl	-948(%rbp), %eax	# level, tmp1226
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC399, %edx	#,
	movl	%eax, %edi	# tmp1226,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1394 0
	movq	-968(%rbp), %rax	# sv, tmp1227
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	96(%rax), %rdx	# MEM[(struct XPVIO *)_629].xio_page_len, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1228
	movl	-948(%rbp), %eax	# level, tmp1229
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC400, %edx	#,
	movl	%eax, %edi	# tmp1229,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1395 0
	movq	-968(%rbp), %rax	# sv, tmp1230
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	104(%rax), %rdx	# MEM[(struct XPVIO *)_631].xio_lines_left, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1231
	movl	-948(%rbp), %eax	# level, tmp1232
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC401, %edx	#,
	movl	%eax, %edi	# tmp1232,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1396 0
	movq	-968(%rbp), %rax	# sv, tmp1233
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	112(%rax), %rax	# MEM[(struct XPVIO *)_633].xio_top_name, D.13436
	testq	%rax, %rax	# D.13436
	je	.L520	#,
	.loc 1 1397 0
	movq	-968(%rbp), %rax	# sv, tmp1234
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	112(%rax), %rdx	# MEM[(struct XPVIO *)_635].xio_top_name, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1235
	movl	-948(%rbp), %eax	# level, tmp1236
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC402, %edx	#,
	movl	%eax, %edi	# tmp1236,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L520:
	.loc 1 1398 0
	movq	-968(%rbp), %rax	# sv, tmp1237
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	120(%rax), %rdx	# MEM[(struct XPVIO *)_637].xio_top_gv, D.13451
	movq	-960(%rbp), %rsi	# file, tmp1238
	movl	-948(%rbp), %eax	# level, tmp1239
	movq	%rdx, %rcx	# D.13451,
	movl	$.LC403, %edx	#,
	movl	%eax, %edi	# tmp1239,
	call	Perl_do_gv_dump	#
	.loc 1 1399 0
	movq	-968(%rbp), %rax	# sv, tmp1240
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	128(%rax), %rax	# MEM[(struct XPVIO *)_639].xio_fmt_name, D.13436
	testq	%rax, %rax	# D.13436
	je	.L521	#,
	.loc 1 1400 0
	movq	-968(%rbp), %rax	# sv, tmp1241
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	128(%rax), %rdx	# MEM[(struct XPVIO *)_641].xio_fmt_name, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1242
	movl	-948(%rbp), %eax	# level, tmp1243
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC404, %edx	#,
	movl	%eax, %edi	# tmp1243,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L521:
	.loc 1 1401 0
	movq	-968(%rbp), %rax	# sv, tmp1244
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	136(%rax), %rdx	# MEM[(struct XPVIO *)_643].xio_fmt_gv, D.13451
	movq	-960(%rbp), %rsi	# file, tmp1245
	movl	-948(%rbp), %eax	# level, tmp1246
	movq	%rdx, %rcx	# D.13451,
	movl	$.LC405, %edx	#,
	movl	%eax, %edi	# tmp1246,
	call	Perl_do_gv_dump	#
	.loc 1 1402 0
	movq	-968(%rbp), %rax	# sv, tmp1247
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	144(%rax), %rax	# MEM[(struct XPVIO *)_645].xio_bottom_name, D.13436
	testq	%rax, %rax	# D.13436
	je	.L522	#,
	.loc 1 1403 0
	movq	-968(%rbp), %rax	# sv, tmp1248
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	144(%rax), %rdx	# MEM[(struct XPVIO *)_647].xio_bottom_name, D.13436
	movq	-960(%rbp), %rsi	# file, tmp1249
	movl	-948(%rbp), %eax	# level, tmp1250
	movq	%rdx, %rcx	# D.13436,
	movl	$.LC406, %edx	#,
	movl	%eax, %edi	# tmp1250,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L522:
	.loc 1 1404 0
	movq	-968(%rbp), %rax	# sv, tmp1251
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movq	152(%rax), %rdx	# MEM[(struct XPVIO *)_649].xio_bottom_gv, D.13451
	movq	-960(%rbp), %rsi	# file, tmp1252
	movl	-948(%rbp), %eax	# level, tmp1253
	movq	%rdx, %rcx	# D.13451,
	movl	$.LC407, %edx	#,
	movl	%eax, %edi	# tmp1253,
	call	Perl_do_gv_dump	#
	.loc 1 1405 0
	movq	-968(%rbp), %rax	# sv, tmp1254
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzwl	160(%rax), %eax	# MEM[(struct XPVIO *)_651].xio_subprocess, D.13460
	movswq	%ax, %rdx	# D.13460, D.13428
	movq	-960(%rbp), %rsi	# file, tmp1255
	movl	-948(%rbp), %eax	# level, tmp1256
	movq	%rdx, %rcx	# D.13428,
	movl	$.LC408, %edx	#,
	movl	%eax, %edi	# tmp1256,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1406 0
	movq	-968(%rbp), %rax	# sv, tmp1257
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	162(%rax), %eax	# MEM[(struct XPVIO *)_654].xio_type, D.13438
	cmpb	$32, %al	#, D.13438
	jle	.L523	#,
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movq	-968(%rbp), %rax	# sv, tmp1258
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	162(%rax), %eax	# MEM[(struct XPVIO *)_656].xio_type, D.13438
	cmpb	$127, %al	#, D.13438
	jne	.L524	#,
.L523:
	.loc 1 1406 0 discriminator 2
	movq	-968(%rbp), %rax	# sv, tmp1259
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	162(%rax), %eax	# MEM[(struct XPVIO *)_658].xio_type, D.13438
	cmpb	$32, %al	#, D.13438
	jne	.L525	#,
.L524:
	.loc 1 1407 0 is_stmt 1
	movq	-968(%rbp), %rax	# sv, tmp1260
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	162(%rax), %eax	# MEM[(struct XPVIO *)_663].xio_type, D.13438
	movsbl	%al, %edx	# D.13438, D.13427
	movq	-960(%rbp), %rsi	# file, tmp1261
	movl	-948(%rbp), %eax	# level, tmp1262
	movl	%edx, %ecx	# D.13427,
	movl	$.LC409, %edx	#,
	movl	%eax, %edi	# tmp1262,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L526	#
.L525:
	.loc 1 1409 0
	movq	-968(%rbp), %rax	# sv, tmp1263
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	162(%rax), %eax	# MEM[(struct XPVIO *)_660].xio_type, D.13438
	movsbl	%al, %edx	# D.13438, D.13427
	movq	-960(%rbp), %rsi	# file, tmp1264
	movl	-948(%rbp), %eax	# level, tmp1265
	movl	%edx, %ecx	# D.13427,
	movl	$.LC410, %edx	#,
	movl	%eax, %edi	# tmp1265,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L526:
	.loc 1 1410 0
	movq	-968(%rbp), %rax	# sv, tmp1266
	movq	(%rax), %rax	# sv_23(D)->sv_any, D.13429
	movzbl	163(%rax), %eax	# MEM[(struct XPVIO *)_666].xio_flags, D.13438
	movsbq	%al, %rdx	# D.13438, D.13430
	movq	-960(%rbp), %rsi	# file, tmp1267
	movl	-948(%rbp), %eax	# level, tmp1268
	movq	%rdx, %rcx	# D.13430,
	movl	$.LC370, %edx	#,
	movl	%eax, %edi	# tmp1268,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1411 0
	nop
.L452:
	.loc 1 1413 0
	movq	-880(%rbp), %rax	# d, tmp1269
	movq	%rax, %rdi	# tmp1269,
	call	Perl_sv_free	#
.L353:
	.loc 1 1414 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_do_sv_dump, .-Perl_do_sv_dump
	.globl	Perl_sv_dump
	.type	Perl_sv_dump, @function
Perl_sv_dump:
.LFB22:
	.loc 1 1418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 1419 0
	call	Perl_PerlIO_stderr	#
	movq	-8(%rbp), %rdx	# sv, tmp60
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.13629,
	movl	$0, %edi	#,
	call	Perl_do_sv_dump	#
	.loc 1 1420 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_sv_dump, .-Perl_sv_dump
	.section	.rodata
.LC411:
	.string	"NULL OP IN RUN"
	.align 8
.LC412:
	.string	"WARNING: %lx changed from %lx to %lx\n"
	.text
	.globl	Perl_runops_debug
	.type	Perl_runops_debug, @function
Perl_runops_debug:
.LFB23:
	.loc 1 1424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 1425 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.47
	testq	%rax, %rax	# PL_op.47
	jne	.L530	#,
	.loc 1 1426 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.48
	movq	80(%rax), %rax	# PL_curcop.48_3->cop_warnings, D.13631
	testq	%rax, %rax	# D.13631
	je	.L531	#,
	.loc 1 1426 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.49
	movq	80(%rax), %rax	# PL_curcop.49_5->cop_warnings, D.13631
	cmpq	$16, %rax	#, D.13631
	je	.L531	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.50
	movq	80(%rax), %rax	# PL_curcop.50_7->cop_warnings, D.13631
	cmpq	$32, %rax	#, D.13631
	je	.L532	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.51
	movq	80(%rax), %rax	# PL_curcop.51_9->cop_warnings, D.13631
	movq	(%rax), %rax	# _10->sv_any, D.13632
	movq	(%rax), %rax	# MEM[(struct XPV *)_11].xpv_pv, D.13633
	addq	$5, %rax	#, D.13633
	movzbl	(%rax), %eax	# *_13, D.13634
	movsbl	%al, %eax	# D.13634, D.13630
	andl	$16, %eax	#, D.13630
	testl	%eax, %eax	# D.13630
	je	.L532	#,
.L531:
	.loc 1 1427 0 is_stmt 1
	movl	$.LC411, %esi	#,
	movl	$22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L532:
	.loc 1 1428 0
	movl	$0, %eax	#, D.13630
	jmp	.L533	#
.L530:
	.loc 1 1432 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.52
	testl	%eax, %eax	# PL_sig_pending.52
	je	.L534	#,
	.loc 1 1432 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L534:
	.loc 1 1433 0 is_stmt 1
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.53
	testl	%eax, %eax	# PL_debug.53
	je	.L535	#,
	.loc 1 1434 0
	movq	PL_watchaddr(%rip), %rax	# PL_watchaddr, PL_watchaddr.54
	testq	%rax, %rax	# PL_watchaddr.54
	je	.L536	#,
	.loc 1 1434 0 is_stmt 0 discriminator 1
	movq	PL_watchaddr(%rip), %rax	# PL_watchaddr, PL_watchaddr.55
	movq	(%rax), %rdx	# *PL_watchaddr.55_21, D.13633
	movq	PL_watchok(%rip), %rax	# PL_watchok, PL_watchok.56
	cmpq	%rax, %rdx	# PL_watchok.56, D.13633
	je	.L536	#,
	.loc 1 1438 0 is_stmt 1
	movq	PL_watchaddr(%rip), %rax	# PL_watchaddr, PL_watchaddr.57
	movq	(%rax), %rax	# *PL_watchaddr.57_24, D.13633
	.loc 1 1435 0
	movq	%rax, %r13	# D.13633, D.13635
	movq	PL_watchok(%rip), %rax	# PL_watchok, PL_watchok.58
	movq	%rax, %r12	# PL_watchok.58, PL_watchok.59
	movq	PL_watchaddr(%rip), %rax	# PL_watchaddr, PL_watchaddr.60
	movq	%rax, %rbx	# PL_watchaddr.60, PL_watchaddr.61
	call	Perl_PerlIO_stderr	#
	movq	%r13, %r8	# D.13635,
	movq	%r12, %rcx	# PL_watchok.59,
	movq	%rbx, %rdx	# PL_watchaddr.61,
	movl	$.LC412, %esi	#,
	movq	%rax, %rdi	# D.13636,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L536:
	.loc 1 1439 0
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.62
	andl	$2, %eax	#, D.13637
	testl	%eax, %eax	# D.13637
	je	.L537	#,
	.loc 1 1440 0
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.63
	andl	$1048576, %eax	#, D.13637
	testl	%eax, %eax	# D.13637
	je	.L538	#,
	.loc 1 1441 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC326, %esi	#,
	movq	%rax, %rdi	# D.13636,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1442 0
	call	Perl_deb_stack_all	#
	jmp	.L537	#
.L538:
	.loc 1 1445 0
	call	Perl_debstack	#
.L537:
	.loc 1 1449 0
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.64
	andl	$8, %eax	#, D.13637
	testl	%eax, %eax	# D.13637
	je	.L539	#,
	.loc 1 1449 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.65
	movq	%rax, %rdi	# PL_op.65,
	call	Perl_debop	#
.L539:
	.loc 1 1450 0 is_stmt 1
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.66
	andl	$64, %eax	#, D.13637
	testl	%eax, %eax	# D.13637
	je	.L535	#,
	.loc 1 1450 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.67
	movq	%rax, %rdi	# PL_op.67,
	call	S_debprof	#
.L535:
	.loc 1 1452 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.68
	movq	16(%rax), %rax	# PL_op.68_43->op_ppaddr, D.13638
	call	*%rax	# D.13638
	movq	%rax, PL_op(%rip)	# PL_op.69, PL_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.70
	testq	%rax, %rax	# PL_op.70
	jne	.L530	#,
	.loc 1 1454 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1455 0
	movl	$0, %eax	#, D.13630
.L533:
	.loc 1 1456 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_runops_debug, .-Perl_runops_debug
	.section	.rodata
.LC413:
	.string	"(%s)"
.LC414:
	.string	"(NULL)"
.LC415:
	.string	"[%lu]"
	.text
	.globl	Perl_debop
	.type	Perl_debop, @function
Perl_debop:
.LFB24:
	.loc 1 1460 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# o, o
	.loc 1 1465 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.71
	movq	48(%rax), %rdx	# PL_curcop.71_6->cop_stash, D.13642
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.72
	cmpq	%rax, %rdx	# PL_debstash.72, D.13642
	jne	.L541	#,
	.loc 1 1465 0 is_stmt 0 discriminator 1
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.73
	andl	$524288, %eax	#, D.13643
	testl	%eax, %eax	# D.13643
	jne	.L541	#,
	.loc 1 1466 0 is_stmt 1
	movl	$0, %eax	#, D.13641
	jmp	.L542	#
.L541:
	.loc 1 1468 0
	movq	-56(%rbp), %rax	# o, tmp98
	movzwl	32(%rax), %eax	# o_12(D)->op_type, D.13644
	cmpw	$351, %ax	#, D.13644
	jne	.L543	#,
	.loc 1 1468 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# o, tmp99
	movq	%rax, %rdi	# tmp99,
	call	Perl_custom_op_name	#
	jmp	.L544	#
.L543:
	.loc 1 1468 0 discriminator 2
	movq	-56(%rbp), %rax	# o, tmp100
	movzwl	32(%rax), %eax	# o_12(D)->op_type, D.13644
	movzwl	%ax, %eax	# D.13644, D.13645
	cltq
	movq	PL_op_name(,%rax,8), %rax	# PL_op_name, iftmp.74
.L544:
	.loc 1 1468 0 discriminator 3
	movq	%rax, %rsi	# iftmp.74,
	movl	$.LC325, %edi	#,
	movl	$0, %eax	#,
	call	Perl_deb	#
	.loc 1 1469 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# o, tmp102
	movzwl	32(%rax), %eax	# o_12(D)->op_type, D.13644
	movzwl	%ax, %eax	# D.13644, D.13645
	subl	$5, %eax	#, tmp103
	cmpl	$6, %eax	#, tmp103
	ja	.L561	#,
	movl	%eax, %eax	# tmp103, tmp104
	movq	.L547(,%rax,8), %rax	#, tmp105
	jmp	*%rax	# tmp105
	.section	.rodata
	.align 8
	.align 4
.L547:
	.quad	.L546
	.quad	.L548
	.quad	.L548
	.quad	.L561
	.quad	.L549
	.quad	.L549
	.quad	.L549
	.text
.L546:
	.loc 1 1471 0
	movq	-56(%rbp), %rax	# o, tmp106
	movq	40(%rax), %rax	# MEM[(struct SVOP *)o_12(D)].op_sv, D.13646
	movq	%rax, %rdi	# D.13646,
	call	Perl_sv_peek	#
	movq	%rax, %rbx	#, D.13647
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rdx	# D.13647,
	movl	$.LC413, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1472 0
	jmp	.L550	#
.L548:
	.loc 1 1475 0
	movq	-56(%rbp), %rax	# o, tmp107
	movq	40(%rax), %rax	# MEM[(struct SVOP *)o_12(D)].op_sv, D.13646
	testq	%rax, %rax	# D.13646
	je	.L551	#,
	.loc 1 1476 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -48(%rbp)	# tmp108, sv
	.loc 1 1477 0
	movq	-56(%rbp), %rax	# o, tmp109
	movq	40(%rax), %rsi	# MEM[(struct SVOP *)o_12(D)].op_sv, D.13646
	movq	-48(%rbp), %rax	# sv, tmp110
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp110,
	call	Perl_gv_fullname4	#
	.loc 1 1478 0
	movq	-48(%rbp), %rax	# sv, tmp111
	movl	12(%rax), %eax	# sv_24->sv_flags, D.13643
	andl	$262144, %eax	#, D.13643
	testl	%eax, %eax	# D.13643
	je	.L552	#,
	.loc 1 1478 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp112
	movq	(%rax), %rax	# sv_24->sv_any, D.13649
	movq	(%rax), %rbx	# MEM[(struct XPV *)_28].xpv_pv, iftmp.75
	jmp	.L553	#
.L552:
	.loc 1 1478 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp113
	movq	%rax, %rdi	# tmp113,
	call	Perl_sv_2pv_nolen	#
	movq	%rax, %rbx	#, iftmp.75
.L553:
	.loc 1 1478 0 discriminator 1
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rdx	# iftmp.75,
	movl	$.LC413, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1479 0 is_stmt 1 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_sv_free	#
	.loc 1 1483 0 discriminator 1
	jmp	.L550	#
.L551:
	.loc 1 1482 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC414, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1483 0
	jmp	.L550	#
.L549:
	.loc 1 1488 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.76
	movl	16(%rax), %eax	# PL_curstackinfo.76_33->si_cxix, D.13645
	movl	%eax, %edi	# D.13645,
	call	S_deb_curcv	#
	movq	%rax, -40(%rbp)	# tmp115, cv
	.loc 1 1489 0
	cmpq	$0, -40(%rbp)	#, cv
	je	.L555	#,
	.loc 1 1490 0
	movq	-40(%rbp), %rax	# cv, tmp116
	movq	(%rax), %rax	# cv_35->sv_any, D.13650
	movq	120(%rax), %rax	# _36->xcv_padlist, tmp117
	movq	%rax, -32(%rbp)	# tmp117, padlist
	.loc 1 1491 0
	movq	-32(%rbp), %rax	# padlist, tmp118
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_38, tmp119
	movq	%rax, -24(%rbp)	# tmp119, comppad
	.loc 1 1492 0
	movq	-56(%rbp), %rax	# o, tmp120
	movq	24(%rax), %rax	# o_12(D)->op_targ, D.13652
	movl	%eax, %ecx	# D.13652, D.13645
	movq	-24(%rbp), %rax	# comppad, tmp121
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.13645,
	movq	%rax, %rdi	# tmp121,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_42, tmp122
	movq	%rax, -48(%rbp)	# tmp122, sv
	jmp	.L556	#
.L555:
	.loc 1 1494 0
	movq	$0, -48(%rbp)	#, sv
.L556:
	.loc 1 1495 0
	cmpq	$0, -48(%rbp)	#, sv
	je	.L557	#,
	.loc 1 1496 0
	movq	-48(%rbp), %rax	# sv, tmp123
	movl	12(%rax), %eax	# sv_1->sv_flags, D.13643
	andl	$262144, %eax	#, D.13643
	testl	%eax, %eax	# D.13643
	je	.L558	#,
	.loc 1 1496 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp124
	movq	(%rax), %rax	# sv_1->sv_any, D.13649
	movq	(%rax), %rbx	# MEM[(struct XPV *)_47].xpv_pv, iftmp.77
	jmp	.L559	#
.L558:
	.loc 1 1496 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_sv_2pv_nolen	#
	movq	%rax, %rbx	#, iftmp.77
.L559:
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rdx	# iftmp.77,
	movl	$.LC413, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1499 0 is_stmt 1 discriminator 2
	jmp	.L550	#
.L557:
	.loc 1 1498 0
	movq	-56(%rbp), %rax	# o, tmp126
	movq	24(%rax), %rbx	# o_12(D)->op_targ, D.13652
	call	Perl_PerlIO_stderr	#
	movq	%rbx, %rdx	# D.13652,
	movl	$.LC415, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1499 0
	jmp	.L550	#
.L561:
	.loc 1 1501 0
	nop
.L550:
	.loc 1 1503 0
	call	Perl_PerlIO_stderr	#
	movl	$.LC326, %esi	#,
	movq	%rax, %rdi	# D.13648,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1504 0
	movl	$0, %eax	#, D.13641
.L542:
	.loc 1 1505 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_debop, .-Perl_debop
	.type	S_deb_curcv, @function
S_deb_curcv:
.LFB25:
	.loc 1 1509 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# ix, ix
	.loc 1 1510 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.78
	movq	8(%rax), %rcx	# PL_curstackinfo.78_2->si_cxstack, D.13657
	movl	-20(%rbp), %eax	# ix, tmp76
	movslq	%eax, %rdx	# tmp76, D.13658
	movq	%rdx, %rax	# D.13658, tmp77
	salq	$3, %rax	#, tmp77
	addq	%rdx, %rax	# D.13658, tmp77
	salq	$4, %rax	#, tmp78
	addq	%rcx, %rax	# D.13657, tmp79
	movq	%rax, -8(%rbp)	# tmp79, cx
	.loc 1 1511 0
	movq	-8(%rbp), %rax	# cx, tmp80
	movl	(%rax), %eax	# cx_7->cx_type, D.13659
	movzbl	%al, %eax	# D.13659, D.13659
	cmpl	$1, %eax	#, D.13659
	je	.L563	#,
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cx, tmp81
	movl	(%rax), %eax	# cx_7->cx_type, D.13659
	movzbl	%al, %eax	# D.13659, D.13659
	cmpl	$6, %eax	#, D.13659
	jne	.L564	#,
.L563:
	.loc 1 1512 0 is_stmt 1
	movq	-8(%rbp), %rax	# cx, tmp82
	movq	56(%rax), %rax	# cx_7->cx_u.cx_blk.blk_u.blku_sub.cv, D.13656
	jmp	.L565	#
.L564:
	.loc 1 1513 0
	movq	-8(%rbp), %rax	# cx, tmp83
	movl	(%rax), %eax	# cx_7->cx_type, D.13659
	movzbl	%al, %eax	# D.13659, D.13659
	cmpl	$2, %eax	#, D.13659
	jne	.L566	#,
	.loc 1 1513 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cx, tmp84
	movl	(%rax), %eax	# cx_7->cx_type, D.13659
	andl	$514, %eax	#, D.13659
	cmpl	$514, %eax	#, D.13659
	je	.L566	#,
	.loc 1 1514 0 is_stmt 1
	movq	PL_compcv(%rip), %rax	# PL_compcv, D.13656
	jmp	.L565	#
.L566:
	.loc 1 1515 0
	cmpl	$0, -20(%rbp)	#, ix
	jne	.L567	#,
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.79
	movl	24(%rax), %eax	# PL_curstackinfo.79_17->si_type, D.13660
	cmpl	$1, %eax	#, D.13660
	jne	.L567	#,
	.loc 1 1516 0 is_stmt 1
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, D.13656
	jmp	.L565	#
.L567:
	.loc 1 1517 0
	cmpl	$0, -20(%rbp)	#, ix
	jg	.L568	#,
	.loc 1 1518 0
	movl	$0, %eax	#, D.13656
	jmp	.L565	#
.L568:
	.loc 1 1520 0
	movl	-20(%rbp), %eax	# ix, tmp85
	subl	$1, %eax	#, D.13660
	movl	%eax, %edi	# D.13660,
	call	S_deb_curcv	#
.L565:
	.loc 1 1521 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	S_deb_curcv, .-S_deb_curcv
	.section	.rodata
	.align 8
.LC416:
	.string	"WATCHING, %lx is currently %lx\n"
	.text
	.globl	Perl_watch
	.type	Perl_watch, @function
Perl_watch:
.LFB26:
	.loc 1 1525 0
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
	movq	%rdi, -24(%rbp)	# addr, addr
	.loc 1 1526 0
	movq	-24(%rbp), %rax	# addr, tmp65
	movq	%rax, PL_watchaddr(%rip)	# tmp65, PL_watchaddr
	.loc 1 1527 0
	movq	-24(%rbp), %rax	# addr, tmp66
	movq	(%rax), %rax	# *addr_1(D), PL_watchok.80
	movq	%rax, PL_watchok(%rip)	# PL_watchok.80, PL_watchok
	.loc 1 1528 0
	movq	PL_watchok(%rip), %rax	# PL_watchok, PL_watchok.81
	movq	%rax, %r12	# PL_watchok.81, PL_watchok.82
	movq	PL_watchaddr(%rip), %rax	# PL_watchaddr, PL_watchaddr.83
	movq	%rax, %rbx	# PL_watchaddr.83, PL_watchaddr.84
	call	Perl_PerlIO_stderr	#
	movq	%r12, %rcx	# PL_watchok.82,
	movq	%rbx, %rdx	# PL_watchaddr.84,
	movl	$.LC416, %esi	#,
	movq	%rax, %rdi	# D.13661,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 1530 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_watch, .-Perl_watch
	.type	S_debprof, @function
S_debprof:
.LFB27:
	.loc 1 1534 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# o, o
	.loc 1 1535 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.85
	movq	48(%rax), %rdx	# PL_curcop.85_1->cop_stash, D.13663
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.86
	cmpq	%rax, %rdx	# PL_debstash.86, D.13663
	jne	.L571	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.87
	andl	$524288, %eax	#, D.13664
	testl	%eax, %eax	# D.13664
	jne	.L571	#,
	.loc 1 1536 0 is_stmt 1
	jmp	.L570	#
.L571:
	.loc 1 1537 0
	movq	PL_profiledata(%rip), %rax	# PL_profiledata, PL_profiledata.88
	testq	%rax, %rax	# PL_profiledata.88
	jne	.L573	#,
	.loc 1 1538 0
	movl	$1408, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_profiledata(%rip)	# PL_profiledata.89, PL_profiledata
	movq	PL_profiledata(%rip), %rax	# PL_profiledata, PL_profiledata.90
	movl	$1408, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_profiledata.90,
	call	memset	#
.L573:
	.loc 1 1539 0
	movq	PL_profiledata(%rip), %rdx	# PL_profiledata, PL_profiledata.91
	movq	-8(%rbp), %rax	# o, tmp74
	movzwl	32(%rax), %eax	# o_10(D)->op_type, D.13665
	movzwl	%ax, %eax	# D.13665, D.13666
	salq	$2, %rax	#, D.13666
	addq	%rdx, %rax	# PL_profiledata.91, D.13667
	movl	(%rax), %edx	# *_14, D.13664
	addl	$1, %edx	#, D.13664
	movl	%edx, (%rax)	# D.13664, *_14
.L570:
	.loc 1 1540 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	S_debprof, .-S_debprof
	.section	.rodata
.LC417:
	.string	"%5lu %s\n"
	.text
	.globl	Perl_debprofdump
	.type	Perl_debprofdump, @function
Perl_debprofdump:
.LFB28:
	.loc 1 1544 0
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
	.loc 1 1546 0
	movq	PL_profiledata(%rip), %rax	# PL_profiledata, PL_profiledata.92
	testq	%rax, %rax	# PL_profiledata.92
	jne	.L575	#,
	.loc 1 1547 0
	jmp	.L574	#
.L575:
	.loc 1 1548 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L577	#
.L579:
	.loc 1 1549 0
	movq	PL_profiledata(%rip), %rax	# PL_profiledata, PL_profiledata.93
	movl	-20(%rbp), %edx	# i, D.13668
	salq	$2, %rdx	#, D.13668
	addq	%rdx, %rax	# D.13668, D.13669
	movl	(%rax), %eax	# *_7, D.13670
	testl	%eax, %eax	# D.13670
	je	.L578	#,
	.loc 1 1550 0
	movl	-20(%rbp), %eax	# i, tmp73
	movq	PL_op_name(,%rax,8), %r12	# PL_op_name, D.13671
	.loc 1 1551 0
	movq	PL_profiledata(%rip), %rax	# PL_profiledata, PL_profiledata.94
	movl	-20(%rbp), %edx	# i, D.13668
	salq	$2, %rdx	#, D.13668
	addq	%rdx, %rax	# D.13668, D.13669
	movl	(%rax), %eax	# *_13, D.13670
	.loc 1 1550 0
	movl	%eax, %ebx	# D.13670, D.13668
	call	Perl_PerlIO_stderr	#
	movq	%r12, %rcx	# D.13671,
	movq	%rbx, %rdx	# D.13668,
	movl	$.LC417, %esi	#,
	movq	%rax, %rdi	# D.13672,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
.L578:
	.loc 1 1548 0
	addl	$1, -20(%rbp)	#, i
.L577:
	.loc 1 1548 0 is_stmt 0 discriminator 1
	cmpl	$351, -20(%rbp)	#, i
	jbe	.L579	#,
.L574:
	.loc 1 1554 0 is_stmt 1
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_debprofdump, .-Perl_debprofdump
	.section	.rodata
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.align 8
.LC350:
	.long	0
	.long	1079574528
	.text
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
	.file 20 "regcomp.h"
	.file 21 "pad.h"
	.file 22 "opcode.h"
	.file 23 "intrpvar.h"
	.file 24 "thrdvar.h"
	.file 25 "perlvars.h"
	.file 26 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x335e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF853
	.byte	0x1
	.long	.LASF854
	.long	.LASF855
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
	.long	.LASF231
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
	.long	0x14ef
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xe3
	.long	0x14ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xe3
	.long	0x1ef2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xe3
	.long	0x1568
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xe3
	.long	0x131b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xe3
	.long	0x131b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xe3
	.long	0x1311
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xe3
	.long	0x1311
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
	.long	0x14ef
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xa
	.byte	0x11
	.long	0x14ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0xa
	.byte	0x11
	.long	0x1ef2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0xa
	.byte	0x11
	.long	0x1568
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0xa
	.byte	0x11
	.long	0x131b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0xa
	.byte	0x11
	.long	0x131b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0xa
	.byte	0x11
	.long	0x1311
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0xa
	.byte	0x11
	.long	0x1311
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
	.long	0x14d7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF33
	.byte	0xa
	.byte	0x18
	.long	0x150c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF34
	.byte	0xa
	.byte	0x1a
	.long	0x1331
	.byte	0x40
	.uleb128 0xa
	.long	.LASF35
	.byte	0xa
	.byte	0x1b
	.long	0x1326
	.byte	0x44
	.uleb128 0xa
	.long	.LASF36
	.byte	0xa
	.byte	0x1c
	.long	0x133c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF37
	.byte	0xa
	.byte	0x1d
	.long	0x1359
	.byte	0x50
	.uleb128 0xa
	.long	.LASF38
	.byte	0xa
	.byte	0x1e
	.long	0x1359
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x8
	.value	0x7d7
	.long	0x2b8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x30
	.byte	0x9
	.byte	0xe6
	.long	0x331
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0xe7
	.long	0x14ef
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xe7
	.long	0x14ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xe7
	.long	0x1ef2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xe7
	.long	0x1568
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xe7
	.long	0x131b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xe7
	.long	0x131b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xe7
	.long	0x1311
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xe7
	.long	0x1311
	.byte	0x25
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.byte	0xe8
	.long	0x14ef
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF42
	.byte	0x8
	.value	0x7da
	.long	0x33d
	.uleb128 0x9
	.long	.LASF43
	.byte	0x38
	.byte	0x9
	.byte	0xf1
	.long	0x3c2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0xf2
	.long	0x14ef
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xf2
	.long	0x14ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xf2
	.long	0x1ef2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xf2
	.long	0x1568
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xf2
	.long	0x131b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xf2
	.long	0x131b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xf2
	.long	0x1311
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xf2
	.long	0x1311
	.byte	0x25
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.byte	0xf3
	.long	0x14ef
	.byte	0x28
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0xf4
	.long	0x14ef
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x8
	.value	0x7db
	.long	0x3ce
	.uleb128 0x9
	.long	.LASF46
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x4bc
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0xfe
	.long	0x14ef
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xfe
	.long	0x14ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xfe
	.long	0x1ef2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xfe
	.long	0x1568
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xfe
	.long	0x131b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xfe
	.long	0x131b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xfe
	.long	0x1311
	.byte	0x24
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xfe
	.long	0x1311
	.byte	0x25
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.byte	0xff
	.long	0x14ef
	.byte	0x28
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.value	0x100
	.long	0x14ef
	.byte	0x30
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.value	0x101
	.long	0x14ef
	.byte	0x38
	.uleb128 0x11
	.long	.LASF49
	.byte	0x9
	.value	0x102
	.long	0x14ef
	.byte	0x40
	.uleb128 0x11
	.long	.LASF50
	.byte	0x9
	.value	0x103
	.long	0x1ef8
	.byte	0x48
	.uleb128 0x11
	.long	.LASF51
	.byte	0x9
	.value	0x107
	.long	0x1efe
	.byte	0x50
	.uleb128 0x11
	.long	.LASF52
	.byte	0x9
	.value	0x109
	.long	0x1331
	.byte	0x58
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x10a
	.long	0x1331
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF54
	.byte	0x9
	.value	0x10b
	.long	0x1311
	.byte	0x60
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x10f
	.long	0x14d7
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x8
	.value	0x7dc
	.long	0x4c8
	.uleb128 0x12
	.long	.LASF57
	.byte	0x30
	.byte	0x9
	.value	0x14c
	.long	0x54b
	.uleb128 0x11
	.long	.LASF23
	.byte	0x9
	.value	0x14d
	.long	0x14ef
	.byte	0
	.uleb128 0x11
	.long	.LASF24
	.byte	0x9
	.value	0x14d
	.long	0x14ef
	.byte	0x8
	.uleb128 0x11
	.long	.LASF25
	.byte	0x9
	.value	0x14d
	.long	0x1ef2
	.byte	0x10
	.uleb128 0x11
	.long	.LASF26
	.byte	0x9
	.value	0x14d
	.long	0x1568
	.byte	0x18
	.uleb128 0x11
	.long	.LASF27
	.byte	0x9
	.value	0x14d
	.long	0x131b
	.byte	0x20
	.uleb128 0x11
	.long	.LASF28
	.byte	0x9
	.value	0x14d
	.long	0x131b
	.byte	0x22
	.uleb128 0x11
	.long	.LASF29
	.byte	0x9
	.value	0x14d
	.long	0x1311
	.byte	0x24
	.uleb128 0x11
	.long	.LASF30
	.byte	0x9
	.value	0x14d
	.long	0x1311
	.byte	0x25
	.uleb128 0x11
	.long	.LASF58
	.byte	0x9
	.value	0x14e
	.long	0x1359
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.value	0x7df
	.long	0x557
	.uleb128 0x12
	.long	.LASF60
	.byte	0x50
	.byte	0x9
	.value	0x15b
	.long	0x60e
	.uleb128 0x11
	.long	.LASF23
	.byte	0x9
	.value	0x15c
	.long	0x14ef
	.byte	0
	.uleb128 0x11
	.long	.LASF24
	.byte	0x9
	.value	0x15c
	.long	0x14ef
	.byte	0x8
	.uleb128 0x11
	.long	.LASF25
	.byte	0x9
	.value	0x15c
	.long	0x1ef2
	.byte	0x10
	.uleb128 0x11
	.long	.LASF26
	.byte	0x9
	.value	0x15c
	.long	0x1568
	.byte	0x18
	.uleb128 0x11
	.long	.LASF27
	.byte	0x9
	.value	0x15c
	.long	0x131b
	.byte	0x20
	.uleb128 0x11
	.long	.LASF28
	.byte	0x9
	.value	0x15c
	.long	0x131b
	.byte	0x22
	.uleb128 0x11
	.long	.LASF29
	.byte	0x9
	.value	0x15c
	.long	0x1311
	.byte	0x24
	.uleb128 0x11
	.long	.LASF30
	.byte	0x9
	.value	0x15c
	.long	0x1311
	.byte	0x25
	.uleb128 0x11
	.long	.LASF41
	.byte	0x9
	.value	0x15d
	.long	0x14ef
	.byte	0x28
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.value	0x15e
	.long	0x14ef
	.byte	0x30
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.value	0x15f
	.long	0x14ef
	.byte	0x38
	.uleb128 0x11
	.long	.LASF62
	.byte	0x9
	.value	0x160
	.long	0x14ef
	.byte	0x40
	.uleb128 0x11
	.long	.LASF63
	.byte	0x9
	.value	0x161
	.long	0x14ef
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x8
	.value	0x7e1
	.long	0x61a
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x635
	.uleb128 0x11
	.long	.LASF66
	.byte	0x8
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x640
	.uleb128 0x10
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x670
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x45
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x46
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x67b
	.uleb128 0x10
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x6ab
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x56
	.long	0x14bf
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x57
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x58
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x6b6
	.uleb128 0x10
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x6e6
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x5c
	.long	0x14c5
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x5d
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x5e
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x6f1
	.uleb128 0x10
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x721
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x50
	.long	0x14b9
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x51
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x52
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x7ee
	.long	0x72d
	.uleb128 0x9
	.long	.LASF71
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x806
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0x20
	.long	0x13cc
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x21
	.long	0x13cc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0x22
	.long	0x13d2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0x23
	.long	0x13f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0x25
	.long	0x142e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF78
	.byte	0xc
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xa
	.long	.LASF79
	.byte	0xc
	.byte	0x28
	.long	0x1434
	.byte	0x38
	.uleb128 0xa
	.long	.LASF80
	.byte	0xc
	.byte	0x29
	.long	0x1326
	.byte	0x40
	.uleb128 0xa
	.long	.LASF81
	.byte	0xc
	.byte	0x2a
	.long	0x1326
	.byte	0x44
	.uleb128 0xa
	.long	.LASF82
	.byte	0xc
	.byte	0x2b
	.long	0x1326
	.byte	0x48
	.uleb128 0xa
	.long	.LASF83
	.byte	0xc
	.byte	0x2c
	.long	0x1326
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF84
	.byte	0xc
	.byte	0x2d
	.long	0x1331
	.byte	0x50
	.uleb128 0xa
	.long	.LASF85
	.byte	0xc
	.byte	0x2e
	.long	0x1331
	.byte	0x54
	.uleb128 0xa
	.long	.LASF86
	.byte	0xc
	.byte	0x2f
	.long	0x1331
	.byte	0x58
	.uleb128 0xa
	.long	.LASF87
	.byte	0xc
	.byte	0x30
	.long	0x1331
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF88
	.byte	0xc
	.byte	0x32
	.long	0x143a
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x811
	.uleb128 0x10
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x8ad
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0xc
	.long	0x1359
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0xd
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0xd
	.byte	0xe
	.long	0x154c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF92
	.byte	0xd
	.byte	0xf
	.long	0x1500
	.byte	0x18
	.uleb128 0xa
	.long	.LASF93
	.byte	0xd
	.byte	0x10
	.long	0x1512
	.byte	0x20
	.uleb128 0xa
	.long	.LASF94
	.byte	0xd
	.byte	0x11
	.long	0x14d7
	.byte	0x28
	.uleb128 0xa
	.long	.LASF95
	.byte	0xd
	.byte	0x12
	.long	0x150c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF96
	.byte	0xd
	.byte	0x13
	.long	0x1500
	.byte	0x38
	.uleb128 0xa
	.long	.LASF97
	.byte	0xd
	.byte	0x14
	.long	0x1331
	.byte	0x40
	.uleb128 0xa
	.long	.LASF98
	.byte	0xd
	.byte	0x15
	.long	0x1331
	.byte	0x44
	.uleb128 0xa
	.long	.LASF99
	.byte	0xd
	.byte	0x16
	.long	0x133c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF100
	.byte	0xd
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x8b8
	.uleb128 0x10
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x8e8
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x4a
	.long	0x14b3
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x4b
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x4c
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x918
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x62
	.long	0x14cb
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x63
	.long	0x1331
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x64
	.long	0x1331
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF101
	.byte	0x8
	.value	0x7f2
	.long	0x924
	.uleb128 0x12
	.long	.LASF102
	.byte	0x90
	.byte	0xa
	.value	0x1a2
	.long	0x94c
	.uleb128 0x11
	.long	.LASF103
	.byte	0xa
	.value	0x1a3
	.long	0x1331
	.byte	0
	.uleb128 0x11
	.long	.LASF104
	.byte	0xa
	.value	0x1a7
	.long	0x2165
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF105
	.byte	0x88
	.byte	0xa
	.value	0x130
	.long	0x9c2
	.uleb128 0x11
	.long	.LASF106
	.byte	0xa
	.value	0x131
	.long	0x1326
	.byte	0
	.uleb128 0x11
	.long	.LASF107
	.byte	0xa
	.value	0x132
	.long	0x209b
	.byte	0x8
	.uleb128 0x11
	.long	.LASF108
	.byte	0xa
	.value	0x133
	.long	0x1326
	.byte	0x10
	.uleb128 0x11
	.long	.LASF109
	.byte	0xa
	.value	0x134
	.long	0x1326
	.byte	0x14
	.uleb128 0x11
	.long	.LASF110
	.byte	0xa
	.value	0x135
	.long	0x1326
	.byte	0x18
	.uleb128 0x11
	.long	.LASF111
	.byte	0xa
	.value	0x136
	.long	0x1ef8
	.byte	0x20
	.uleb128 0x11
	.long	.LASF112
	.byte	0xa
	.value	0x137
	.long	0x1311
	.byte	0x28
	.uleb128 0x11
	.long	.LASF113
	.byte	0xa
	.value	0x13d
	.long	0x206d
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x7f5
	.long	0x9ce
	.uleb128 0x9
	.long	.LASF115
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0xa3b
	.uleb128 0xa
	.long	.LASF116
	.byte	0xe
	.byte	0x1b
	.long	0x14d1
	.byte	0
	.uleb128 0xa
	.long	.LASF117
	.byte	0xe
	.byte	0x1c
	.long	0x2314
	.byte	0x8
	.uleb128 0xa
	.long	.LASF118
	.byte	0xe
	.byte	0x1d
	.long	0x131b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF119
	.byte	0xe
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xa
	.long	.LASF120
	.byte	0xe
	.byte	0x1f
	.long	0x1311
	.byte	0x13
	.uleb128 0xa
	.long	.LASF121
	.byte	0xe
	.byte	0x20
	.long	0x1359
	.byte	0x18
	.uleb128 0xa
	.long	.LASF122
	.byte	0xe
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xa
	.long	.LASF123
	.byte	0xe
	.byte	0x22
	.long	0x1326
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0xa47
	.uleb128 0x10
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0xa60
	.uleb128 0xa
	.long	.LASF124
	.byte	0xb
	.byte	0xf6
	.long	0x1359
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0xa6c
	.uleb128 0x10
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0xa9d
	.uleb128 0xa
	.long	.LASF125
	.byte	0xb
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF126
	.byte	0xb
	.byte	0xfb
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF127
	.byte	0xb
	.byte	0xfc
	.long	0x150
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF128
	.byte	0x8
	.value	0x7f8
	.long	0xaa9
	.uleb128 0x9
	.long	.LASF129
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0xaea
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x101
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x102
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x103
	.long	0x128
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF131
	.byte	0x8
	.value	0x7f9
	.long	0xaf6
	.uleb128 0x12
	.long	.LASF132
	.byte	0x20
	.byte	0xb
	.value	0x106
	.long	0xb38
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x107
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x108
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x109
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF133
	.byte	0xb
	.value	0x10a
	.long	0x133
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.value	0x7fa
	.long	0xb44
	.uleb128 0x12
	.long	.LASF135
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0xb93
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x10f
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x110
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x111
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x112
	.long	0x13e
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x7fb
	.long	0xb9f
	.uleb128 0x12
	.long	.LASF138
	.byte	0x38
	.byte	0xb
	.value	0x116
	.long	0xc08
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x118
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x119
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x11a
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x11b
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x11c
	.long	0x14d1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF140
	.byte	0xb
	.value	0x11d
	.long	0x14d7
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x7fc
	.long	0xc14
	.uleb128 0x12
	.long	.LASF142
	.byte	0x58
	.byte	0xb
	.value	0x120
	.long	0xcb1
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x121
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x122
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x123
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x124
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x125
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x126
	.long	0x14d1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF140
	.byte	0xb
	.value	0x127
	.long	0x14d7
	.byte	0x30
	.uleb128 0x11
	.long	.LASF143
	.byte	0xb
	.value	0x129
	.long	0x150
	.byte	0x38
	.uleb128 0x11
	.long	.LASF144
	.byte	0xb
	.value	0x12a
	.long	0x150
	.byte	0x40
	.uleb128 0x11
	.long	.LASF145
	.byte	0xb
	.value	0x12b
	.long	0x1359
	.byte	0x48
	.uleb128 0x11
	.long	.LASF146
	.byte	0xb
	.value	0x12c
	.long	0x7f
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x7fd
	.long	0xcbd
	.uleb128 0x9
	.long	.LASF148
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0xd42
	.uleb128 0xa
	.long	.LASF149
	.byte	0xf
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF150
	.byte	0xf
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xa
	.long	.LASF151
	.byte	0xf
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xa
	.long	.LASF152
	.byte	0xf
	.byte	0xf
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF136
	.byte	0xf
	.byte	0x10
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF139
	.byte	0xf
	.byte	0x11
	.long	0x14d1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF140
	.byte	0xf
	.byte	0x12
	.long	0x14d7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF153
	.byte	0xf
	.byte	0x14
	.long	0x2067
	.byte	0x38
	.uleb128 0xa
	.long	.LASF154
	.byte	0xf
	.byte	0x15
	.long	0x1359
	.byte	0x40
	.uleb128 0xa
	.long	.LASF155
	.byte	0xf
	.byte	0x16
	.long	0x1311
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF156
	.byte	0x8
	.value	0x7fe
	.long	0xd4e
	.uleb128 0x9
	.long	.LASF157
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0xddf
	.uleb128 0xa
	.long	.LASF158
	.byte	0x10
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF159
	.byte	0x10
	.byte	0x24
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF160
	.byte	0x10
	.byte	0x25
	.long	0x150
	.byte	0x10
	.uleb128 0xa
	.long	.LASF161
	.byte	0x10
	.byte	0x26
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF136
	.byte	0x10
	.byte	0x27
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF139
	.byte	0x10
	.byte	0x29
	.long	0x14d1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF140
	.byte	0x10
	.byte	0x2a
	.long	0x14d7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF162
	.byte	0x10
	.byte	0x2c
	.long	0x1326
	.byte	0x38
	.uleb128 0xa
	.long	.LASF163
	.byte	0x10
	.byte	0x2d
	.long	0x228b
	.byte	0x40
	.uleb128 0xa
	.long	.LASF164
	.byte	0x10
	.byte	0x2e
	.long	0x1ef8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF165
	.byte	0x10
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF166
	.byte	0x8
	.value	0x7ff
	.long	0xdeb
	.uleb128 0x12
	.long	.LASF167
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xe95
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x132
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x133
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x134
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x135
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x136
	.long	0x14d1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF140
	.byte	0xb
	.value	0x137
	.long	0x14d7
	.byte	0x30
	.uleb128 0x11
	.long	.LASF168
	.byte	0xb
	.value	0x139
	.long	0x14dd
	.byte	0x38
	.uleb128 0x11
	.long	.LASF169
	.byte	0xb
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF170
	.byte	0xb
	.value	0x13b
	.long	0x150
	.byte	0x48
	.uleb128 0x11
	.long	.LASF171
	.byte	0xb
	.value	0x13c
	.long	0x14d7
	.byte	0x50
	.uleb128 0x11
	.long	.LASF172
	.byte	0xb
	.value	0x13d
	.long	0x1311
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF173
	.byte	0x8
	.value	0x800
	.long	0xea1
	.uleb128 0x9
	.long	.LASF174
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0xf92
	.uleb128 0xa
	.long	.LASF125
	.byte	0x11
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF126
	.byte	0x11
	.byte	0x10
	.long	0x150
	.byte	0x8
	.uleb128 0xa
	.long	.LASF127
	.byte	0x11
	.byte	0x11
	.long	0x150
	.byte	0x10
	.uleb128 0xa
	.long	.LASF152
	.byte	0x11
	.byte	0x12
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF136
	.byte	0x11
	.byte	0x13
	.long	0x13e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF139
	.byte	0x11
	.byte	0x14
	.long	0x14d1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF140
	.byte	0x11
	.byte	0x15
	.long	0x14d7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF175
	.byte	0x11
	.byte	0x17
	.long	0x14d7
	.byte	0x38
	.uleb128 0xa
	.long	.LASF176
	.byte	0x11
	.byte	0x18
	.long	0x14ef
	.byte	0x40
	.uleb128 0xa
	.long	.LASF177
	.byte	0x11
	.byte	0x19
	.long	0x14ef
	.byte	0x48
	.uleb128 0xa
	.long	.LASF178
	.byte	0x11
	.byte	0x1a
	.long	0x1506
	.byte	0x50
	.uleb128 0xa
	.long	.LASF179
	.byte	0x11
	.byte	0x1b
	.long	0x1262
	.byte	0x58
	.uleb128 0xa
	.long	.LASF180
	.byte	0x11
	.byte	0x1c
	.long	0x150c
	.byte	0x60
	.uleb128 0xa
	.long	.LASF181
	.byte	0x11
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xa
	.long	.LASF182
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF183
	.byte	0x11
	.byte	0x1f
	.long	0x1573
	.byte	0x78
	.uleb128 0xa
	.long	.LASF184
	.byte	0x11
	.byte	0x20
	.long	0x1500
	.byte	0x80
	.uleb128 0xa
	.long	.LASF185
	.byte	0x11
	.byte	0x25
	.long	0x14e3
	.byte	0x88
	.uleb128 0xa
	.long	.LASF186
	.byte	0x11
	.byte	0x26
	.long	0x1331
	.byte	0x8c
	.byte	0
	.uleb128 0xf
	.long	.LASF187
	.byte	0x8
	.value	0x802
	.long	0xf9e
	.uleb128 0x12
	.long	.LASF188
	.byte	0x98
	.byte	0xb
	.value	0x152
	.long	0x10b0
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x153
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x154
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x155
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x156
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x157
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x158
	.long	0x14d1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF140
	.byte	0xb
	.value	0x159
	.long	0x14d7
	.byte	0x30
	.uleb128 0x11
	.long	.LASF175
	.byte	0xb
	.value	0x15b
	.long	0x14d7
	.byte	0x38
	.uleb128 0x11
	.long	.LASF176
	.byte	0xb
	.value	0x15c
	.long	0x14ef
	.byte	0x40
	.uleb128 0x11
	.long	.LASF177
	.byte	0xb
	.value	0x15d
	.long	0x14ef
	.byte	0x48
	.uleb128 0x11
	.long	.LASF178
	.byte	0xb
	.value	0x15e
	.long	0x1506
	.byte	0x50
	.uleb128 0x11
	.long	.LASF179
	.byte	0xb
	.value	0x15f
	.long	0x1262
	.byte	0x58
	.uleb128 0x11
	.long	.LASF180
	.byte	0xb
	.value	0x160
	.long	0x150c
	.byte	0x60
	.uleb128 0x11
	.long	.LASF181
	.byte	0xb
	.value	0x161
	.long	0x79
	.byte	0x68
	.uleb128 0x11
	.long	.LASF182
	.byte	0xb
	.value	0x162
	.long	0x5e
	.byte	0x70
	.uleb128 0x11
	.long	.LASF183
	.byte	0xb
	.value	0x163
	.long	0x1512
	.byte	0x78
	.uleb128 0x11
	.long	.LASF184
	.byte	0xb
	.value	0x164
	.long	0x1500
	.byte	0x80
	.uleb128 0x11
	.long	.LASF185
	.byte	0xb
	.value	0x169
	.long	0x14e3
	.byte	0x88
	.uleb128 0x11
	.long	.LASF186
	.byte	0xb
	.value	0x16a
	.long	0x1331
	.byte	0x8c
	.uleb128 0x11
	.long	.LASF189
	.byte	0xb
	.value	0x16d
	.long	0x128
	.byte	0x90
	.byte	0
	.uleb128 0xf
	.long	.LASF190
	.byte	0x8
	.value	0x803
	.long	0x10bc
	.uleb128 0x12
	.long	.LASF191
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0x11f5
	.uleb128 0x11
	.long	.LASF125
	.byte	0xb
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xb
	.value	0x172
	.long	0x150
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0xb
	.value	0x173
	.long	0x150
	.byte	0x10
	.uleb128 0x11
	.long	.LASF130
	.byte	0xb
	.value	0x174
	.long	0x128
	.byte	0x18
	.uleb128 0x11
	.long	.LASF136
	.byte	0xb
	.value	0x175
	.long	0x13e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF139
	.byte	0xb
	.value	0x176
	.long	0x14d1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF140
	.byte	0xb
	.value	0x177
	.long	0x14d7
	.byte	0x30
	.uleb128 0x11
	.long	.LASF192
	.byte	0xb
	.value	0x179
	.long	0x1540
	.byte	0x38
	.uleb128 0x11
	.long	.LASF193
	.byte	0xb
	.value	0x17a
	.long	0x1540
	.byte	0x40
	.uleb128 0x11
	.long	.LASF194
	.byte	0xb
	.value	0x187
	.long	0x1518
	.byte	0x48
	.uleb128 0x11
	.long	.LASF195
	.byte	0xb
	.value	0x188
	.long	0x128
	.byte	0x50
	.uleb128 0x11
	.long	.LASF196
	.byte	0xb
	.value	0x189
	.long	0x128
	.byte	0x58
	.uleb128 0x11
	.long	.LASF197
	.byte	0xb
	.value	0x18a
	.long	0x128
	.byte	0x60
	.uleb128 0x11
	.long	.LASF198
	.byte	0xb
	.value	0x18b
	.long	0x128
	.byte	0x68
	.uleb128 0x11
	.long	.LASF199
	.byte	0xb
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x11
	.long	.LASF200
	.byte	0xb
	.value	0x18d
	.long	0x150c
	.byte	0x78
	.uleb128 0x11
	.long	.LASF201
	.byte	0xb
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x11
	.long	.LASF202
	.byte	0xb
	.value	0x18f
	.long	0x150c
	.byte	0x88
	.uleb128 0x11
	.long	.LASF203
	.byte	0xb
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x11
	.long	.LASF204
	.byte	0xb
	.value	0x191
	.long	0x150c
	.byte	0x98
	.uleb128 0x11
	.long	.LASF205
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF206
	.byte	0xb
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF207
	.byte	0xb
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xf
	.long	.LASF208
	.byte	0x8
	.value	0x804
	.long	0x1201
	.uleb128 0x9
	.long	.LASF209
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0x1262
	.uleb128 0xa
	.long	.LASF210
	.byte	0xe
	.byte	0xf
	.long	0x22ab
	.byte	0
	.uleb128 0xa
	.long	.LASF211
	.byte	0xe
	.byte	0x10
	.long	0x22ab
	.byte	0x8
	.uleb128 0xa
	.long	.LASF212
	.byte	0xe
	.byte	0x11
	.long	0x22c5
	.byte	0x10
	.uleb128 0xa
	.long	.LASF213
	.byte	0xe
	.byte	0x12
	.long	0x22ab
	.byte	0x18
	.uleb128 0xa
	.long	.LASF214
	.byte	0xe
	.byte	0x13
	.long	0x22ab
	.byte	0x20
	.uleb128 0xa
	.long	.LASF215
	.byte	0xe
	.byte	0x14
	.long	0x22ee
	.byte	0x28
	.uleb128 0xa
	.long	.LASF216
	.byte	0xe
	.byte	0x16
	.long	0x230e
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0x126e
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0x12d0
	.uleb128 0x14
	.long	.LASF217
	.byte	0x8
	.value	0x9f2
	.long	0x6c
	.uleb128 0x14
	.long	.LASF218
	.byte	0x8
	.value	0x9f3
	.long	0x1326
	.uleb128 0x14
	.long	.LASF219
	.byte	0x8
	.value	0x9f4
	.long	0x128
	.uleb128 0x14
	.long	.LASF220
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF221
	.byte	0x8
	.value	0x9f6
	.long	0x7f
	.uleb128 0x14
	.long	.LASF222
	.byte	0x8
	.value	0x9f7
	.long	0x1353
	.uleb128 0x14
	.long	.LASF223
	.byte	0x8
	.value	0x9f8
	.long	0x1353
	.byte	0
	.uleb128 0xf
	.long	.LASF224
	.byte	0x8
	.value	0x808
	.long	0x12dc
	.uleb128 0x12
	.long	.LASF225
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0x1311
	.uleb128 0x11
	.long	.LASF226
	.byte	0xb
	.value	0x4ee
	.long	0x1512
	.byte	0
	.uleb128 0x11
	.long	.LASF227
	.byte	0xb
	.value	0x4ef
	.long	0x133
	.byte	0x8
	.uleb128 0x11
	.long	.LASF228
	.byte	0xb
	.value	0x4f0
	.long	0x1546
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
	.long	.LASF229
	.byte	0x12
	.value	0x209
	.long	0x1331
	.uleb128 0x15
	.long	0x1353
	.uleb128 0x16
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1348
	.uleb128 0x6
	.byte	0x8
	.long	0x635
	.uleb128 0x7
	.long	0x7f
	.long	0x136f
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF230
	.byte	0x13
	.byte	0x63
	.long	0x137a
	.uleb128 0xd
	.long	.LASF232
	.uleb128 0x5
	.long	.LASF233
	.byte	0x13
	.byte	0x65
	.long	0x138a
	.uleb128 0x6
	.byte	0x8
	.long	0x136f
	.uleb128 0x9
	.long	.LASF234
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0x13c1
	.uleb128 0xa
	.long	.LASF227
	.byte	0xc
	.byte	0x14
	.long	0x1311
	.byte	0
	.uleb128 0xa
	.long	.LASF235
	.byte	0xc
	.byte	0x15
	.long	0x1311
	.byte	0x1
	.uleb128 0xa
	.long	.LASF236
	.byte	0xc
	.byte	0x16
	.long	0x131b
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF234
	.byte	0xc
	.byte	0x19
	.long	0x1390
	.uleb128 0x6
	.byte	0x8
	.long	0x1326
	.uleb128 0x6
	.byte	0x8
	.long	0x13c1
	.uleb128 0x12
	.long	.LASF237
	.byte	0x48
	.byte	0x14
	.value	0x18a
	.long	0x13f3
	.uleb128 0x11
	.long	.LASF77
	.byte	0x14
	.value	0x18b
	.long	0x251e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13d8
	.uleb128 0x12
	.long	.LASF238
	.byte	0x18
	.byte	0x14
	.value	0x17d
	.long	0x142e
	.uleb128 0x11
	.long	.LASF239
	.byte	0x14
	.value	0x17e
	.long	0x1331
	.byte	0
	.uleb128 0x11
	.long	.LASF240
	.byte	0x14
	.value	0x17f
	.long	0x24c6
	.byte	0x8
	.uleb128 0x11
	.long	.LASF77
	.byte	0x14
	.value	0x180
	.long	0x24cc
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13f9
	.uleb128 0x6
	.byte	0x8
	.long	0x1331
	.uleb128 0x7
	.long	0x13c1
	.long	0x144a
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x14b3
	.uleb128 0x18
	.long	.LASF241
	.sleb128 0
	.uleb128 0x18
	.long	.LASF242
	.sleb128 1
	.uleb128 0x18
	.long	.LASF243
	.sleb128 2
	.uleb128 0x18
	.long	.LASF244
	.sleb128 3
	.uleb128 0x18
	.long	.LASF245
	.sleb128 4
	.uleb128 0x18
	.long	.LASF246
	.sleb128 5
	.uleb128 0x18
	.long	.LASF247
	.sleb128 6
	.uleb128 0x18
	.long	.LASF248
	.sleb128 7
	.uleb128 0x18
	.long	.LASF249
	.sleb128 8
	.uleb128 0x18
	.long	.LASF250
	.sleb128 9
	.uleb128 0x18
	.long	.LASF251
	.sleb128 10
	.uleb128 0x18
	.long	.LASF252
	.sleb128 11
	.uleb128 0x18
	.long	.LASF253
	.sleb128 12
	.uleb128 0x18
	.long	.LASF254
	.sleb128 13
	.uleb128 0x18
	.long	.LASF255
	.sleb128 14
	.uleb128 0x18
	.long	.LASF256
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xddf
	.uleb128 0x6
	.byte	0x8
	.long	0xe95
	.uleb128 0x6
	.byte	0x8
	.long	0xcb1
	.uleb128 0x6
	.byte	0x8
	.long	0xd42
	.uleb128 0x6
	.byte	0x8
	.long	0x10b0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c2
	.uleb128 0x6
	.byte	0x8
	.long	0x6ab
	.uleb128 0x6
	.byte	0x8
	.long	0x806
	.uleb128 0xf
	.long	.LASF257
	.byte	0xb
	.value	0x150
	.long	0x131b
	.uleb128 0x6
	.byte	0x8
	.long	0x15c
	.uleb128 0x15
	.long	0x1500
	.uleb128 0x16
	.long	0x1500
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e6
	.uleb128 0x6
	.byte	0x8
	.long	0x14f5
	.uleb128 0x6
	.byte	0x8
	.long	0x8ad
	.uleb128 0x6
	.byte	0x8
	.long	0x670
	.uleb128 0x19
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x153a
	.uleb128 0x14
	.long	.LASF258
	.byte	0xb
	.value	0x185
	.long	0x153a
	.uleb128 0x14
	.long	.LASF259
	.byte	0xb
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x118
	.uleb128 0x6
	.byte	0x8
	.long	0x137f
	.uleb128 0x6
	.byte	0x8
	.long	0x60e
	.uleb128 0x6
	.byte	0x8
	.long	0x8e8
	.uleb128 0x5
	.long	.LASF260
	.byte	0x15
	.byte	0x13
	.long	0x670
	.uleb128 0xc
	.string	"PAD"
	.byte	0x15
	.byte	0x14
	.long	0x670
	.uleb128 0x5
	.long	.LASF261
	.byte	0x15
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1552
	.uleb128 0x1a
	.long	.LASF856
	.byte	0x4
	.byte	0x1a
	.byte	0xf
	.long	0x1eed
	.uleb128 0x18
	.long	.LASF262
	.sleb128 0
	.uleb128 0x18
	.long	.LASF263
	.sleb128 1
	.uleb128 0x18
	.long	.LASF264
	.sleb128 2
	.uleb128 0x18
	.long	.LASF265
	.sleb128 3
	.uleb128 0x18
	.long	.LASF266
	.sleb128 4
	.uleb128 0x18
	.long	.LASF267
	.sleb128 5
	.uleb128 0x18
	.long	.LASF268
	.sleb128 6
	.uleb128 0x18
	.long	.LASF269
	.sleb128 7
	.uleb128 0x18
	.long	.LASF270
	.sleb128 8
	.uleb128 0x18
	.long	.LASF271
	.sleb128 9
	.uleb128 0x18
	.long	.LASF272
	.sleb128 10
	.uleb128 0x18
	.long	.LASF273
	.sleb128 11
	.uleb128 0x18
	.long	.LASF274
	.sleb128 12
	.uleb128 0x18
	.long	.LASF275
	.sleb128 13
	.uleb128 0x18
	.long	.LASF276
	.sleb128 14
	.uleb128 0x18
	.long	.LASF277
	.sleb128 15
	.uleb128 0x18
	.long	.LASF278
	.sleb128 16
	.uleb128 0x18
	.long	.LASF279
	.sleb128 17
	.uleb128 0x18
	.long	.LASF280
	.sleb128 18
	.uleb128 0x18
	.long	.LASF281
	.sleb128 19
	.uleb128 0x18
	.long	.LASF282
	.sleb128 20
	.uleb128 0x18
	.long	.LASF283
	.sleb128 21
	.uleb128 0x18
	.long	.LASF284
	.sleb128 22
	.uleb128 0x18
	.long	.LASF285
	.sleb128 23
	.uleb128 0x18
	.long	.LASF286
	.sleb128 24
	.uleb128 0x18
	.long	.LASF287
	.sleb128 25
	.uleb128 0x18
	.long	.LASF288
	.sleb128 26
	.uleb128 0x18
	.long	.LASF289
	.sleb128 27
	.uleb128 0x18
	.long	.LASF290
	.sleb128 28
	.uleb128 0x18
	.long	.LASF291
	.sleb128 29
	.uleb128 0x18
	.long	.LASF292
	.sleb128 30
	.uleb128 0x18
	.long	.LASF293
	.sleb128 31
	.uleb128 0x18
	.long	.LASF294
	.sleb128 32
	.uleb128 0x18
	.long	.LASF295
	.sleb128 33
	.uleb128 0x18
	.long	.LASF296
	.sleb128 34
	.uleb128 0x18
	.long	.LASF297
	.sleb128 35
	.uleb128 0x18
	.long	.LASF298
	.sleb128 36
	.uleb128 0x18
	.long	.LASF299
	.sleb128 37
	.uleb128 0x18
	.long	.LASF300
	.sleb128 38
	.uleb128 0x18
	.long	.LASF301
	.sleb128 39
	.uleb128 0x18
	.long	.LASF302
	.sleb128 40
	.uleb128 0x18
	.long	.LASF303
	.sleb128 41
	.uleb128 0x18
	.long	.LASF304
	.sleb128 42
	.uleb128 0x18
	.long	.LASF305
	.sleb128 43
	.uleb128 0x18
	.long	.LASF306
	.sleb128 44
	.uleb128 0x18
	.long	.LASF307
	.sleb128 45
	.uleb128 0x18
	.long	.LASF308
	.sleb128 46
	.uleb128 0x18
	.long	.LASF309
	.sleb128 47
	.uleb128 0x18
	.long	.LASF310
	.sleb128 48
	.uleb128 0x18
	.long	.LASF311
	.sleb128 49
	.uleb128 0x18
	.long	.LASF312
	.sleb128 50
	.uleb128 0x18
	.long	.LASF313
	.sleb128 51
	.uleb128 0x18
	.long	.LASF314
	.sleb128 52
	.uleb128 0x18
	.long	.LASF315
	.sleb128 53
	.uleb128 0x18
	.long	.LASF316
	.sleb128 54
	.uleb128 0x18
	.long	.LASF317
	.sleb128 55
	.uleb128 0x18
	.long	.LASF318
	.sleb128 56
	.uleb128 0x18
	.long	.LASF319
	.sleb128 57
	.uleb128 0x18
	.long	.LASF320
	.sleb128 58
	.uleb128 0x18
	.long	.LASF321
	.sleb128 59
	.uleb128 0x18
	.long	.LASF322
	.sleb128 60
	.uleb128 0x18
	.long	.LASF323
	.sleb128 61
	.uleb128 0x18
	.long	.LASF324
	.sleb128 62
	.uleb128 0x18
	.long	.LASF325
	.sleb128 63
	.uleb128 0x18
	.long	.LASF326
	.sleb128 64
	.uleb128 0x18
	.long	.LASF327
	.sleb128 65
	.uleb128 0x18
	.long	.LASF328
	.sleb128 66
	.uleb128 0x18
	.long	.LASF329
	.sleb128 67
	.uleb128 0x18
	.long	.LASF330
	.sleb128 68
	.uleb128 0x18
	.long	.LASF331
	.sleb128 69
	.uleb128 0x18
	.long	.LASF332
	.sleb128 70
	.uleb128 0x18
	.long	.LASF333
	.sleb128 71
	.uleb128 0x18
	.long	.LASF334
	.sleb128 72
	.uleb128 0x18
	.long	.LASF335
	.sleb128 73
	.uleb128 0x18
	.long	.LASF336
	.sleb128 74
	.uleb128 0x18
	.long	.LASF337
	.sleb128 75
	.uleb128 0x18
	.long	.LASF338
	.sleb128 76
	.uleb128 0x18
	.long	.LASF339
	.sleb128 77
	.uleb128 0x18
	.long	.LASF340
	.sleb128 78
	.uleb128 0x18
	.long	.LASF341
	.sleb128 79
	.uleb128 0x18
	.long	.LASF342
	.sleb128 80
	.uleb128 0x18
	.long	.LASF343
	.sleb128 81
	.uleb128 0x18
	.long	.LASF344
	.sleb128 82
	.uleb128 0x18
	.long	.LASF345
	.sleb128 83
	.uleb128 0x18
	.long	.LASF346
	.sleb128 84
	.uleb128 0x18
	.long	.LASF347
	.sleb128 85
	.uleb128 0x18
	.long	.LASF348
	.sleb128 86
	.uleb128 0x18
	.long	.LASF349
	.sleb128 87
	.uleb128 0x18
	.long	.LASF350
	.sleb128 88
	.uleb128 0x18
	.long	.LASF351
	.sleb128 89
	.uleb128 0x18
	.long	.LASF352
	.sleb128 90
	.uleb128 0x18
	.long	.LASF353
	.sleb128 91
	.uleb128 0x18
	.long	.LASF354
	.sleb128 92
	.uleb128 0x18
	.long	.LASF355
	.sleb128 93
	.uleb128 0x18
	.long	.LASF356
	.sleb128 94
	.uleb128 0x18
	.long	.LASF357
	.sleb128 95
	.uleb128 0x18
	.long	.LASF358
	.sleb128 96
	.uleb128 0x18
	.long	.LASF359
	.sleb128 97
	.uleb128 0x18
	.long	.LASF360
	.sleb128 98
	.uleb128 0x18
	.long	.LASF361
	.sleb128 99
	.uleb128 0x18
	.long	.LASF362
	.sleb128 100
	.uleb128 0x18
	.long	.LASF363
	.sleb128 101
	.uleb128 0x18
	.long	.LASF364
	.sleb128 102
	.uleb128 0x18
	.long	.LASF365
	.sleb128 103
	.uleb128 0x18
	.long	.LASF366
	.sleb128 104
	.uleb128 0x18
	.long	.LASF367
	.sleb128 105
	.uleb128 0x18
	.long	.LASF368
	.sleb128 106
	.uleb128 0x18
	.long	.LASF369
	.sleb128 107
	.uleb128 0x18
	.long	.LASF370
	.sleb128 108
	.uleb128 0x18
	.long	.LASF371
	.sleb128 109
	.uleb128 0x18
	.long	.LASF372
	.sleb128 110
	.uleb128 0x18
	.long	.LASF373
	.sleb128 111
	.uleb128 0x18
	.long	.LASF374
	.sleb128 112
	.uleb128 0x18
	.long	.LASF375
	.sleb128 113
	.uleb128 0x18
	.long	.LASF376
	.sleb128 114
	.uleb128 0x18
	.long	.LASF377
	.sleb128 115
	.uleb128 0x18
	.long	.LASF378
	.sleb128 116
	.uleb128 0x18
	.long	.LASF379
	.sleb128 117
	.uleb128 0x18
	.long	.LASF380
	.sleb128 118
	.uleb128 0x18
	.long	.LASF381
	.sleb128 119
	.uleb128 0x18
	.long	.LASF382
	.sleb128 120
	.uleb128 0x18
	.long	.LASF383
	.sleb128 121
	.uleb128 0x18
	.long	.LASF384
	.sleb128 122
	.uleb128 0x18
	.long	.LASF385
	.sleb128 123
	.uleb128 0x18
	.long	.LASF386
	.sleb128 124
	.uleb128 0x18
	.long	.LASF387
	.sleb128 125
	.uleb128 0x18
	.long	.LASF388
	.sleb128 126
	.uleb128 0x18
	.long	.LASF389
	.sleb128 127
	.uleb128 0x18
	.long	.LASF390
	.sleb128 128
	.uleb128 0x18
	.long	.LASF391
	.sleb128 129
	.uleb128 0x18
	.long	.LASF392
	.sleb128 130
	.uleb128 0x18
	.long	.LASF393
	.sleb128 131
	.uleb128 0x18
	.long	.LASF394
	.sleb128 132
	.uleb128 0x18
	.long	.LASF395
	.sleb128 133
	.uleb128 0x18
	.long	.LASF396
	.sleb128 134
	.uleb128 0x18
	.long	.LASF397
	.sleb128 135
	.uleb128 0x18
	.long	.LASF398
	.sleb128 136
	.uleb128 0x18
	.long	.LASF399
	.sleb128 137
	.uleb128 0x18
	.long	.LASF400
	.sleb128 138
	.uleb128 0x18
	.long	.LASF401
	.sleb128 139
	.uleb128 0x18
	.long	.LASF402
	.sleb128 140
	.uleb128 0x18
	.long	.LASF403
	.sleb128 141
	.uleb128 0x18
	.long	.LASF404
	.sleb128 142
	.uleb128 0x18
	.long	.LASF405
	.sleb128 143
	.uleb128 0x18
	.long	.LASF406
	.sleb128 144
	.uleb128 0x18
	.long	.LASF407
	.sleb128 145
	.uleb128 0x18
	.long	.LASF408
	.sleb128 146
	.uleb128 0x18
	.long	.LASF409
	.sleb128 147
	.uleb128 0x18
	.long	.LASF410
	.sleb128 148
	.uleb128 0x18
	.long	.LASF411
	.sleb128 149
	.uleb128 0x18
	.long	.LASF412
	.sleb128 150
	.uleb128 0x18
	.long	.LASF413
	.sleb128 151
	.uleb128 0x18
	.long	.LASF414
	.sleb128 152
	.uleb128 0x18
	.long	.LASF415
	.sleb128 153
	.uleb128 0x18
	.long	.LASF416
	.sleb128 154
	.uleb128 0x18
	.long	.LASF417
	.sleb128 155
	.uleb128 0x18
	.long	.LASF418
	.sleb128 156
	.uleb128 0x18
	.long	.LASF419
	.sleb128 157
	.uleb128 0x18
	.long	.LASF420
	.sleb128 158
	.uleb128 0x18
	.long	.LASF421
	.sleb128 159
	.uleb128 0x18
	.long	.LASF422
	.sleb128 160
	.uleb128 0x18
	.long	.LASF423
	.sleb128 161
	.uleb128 0x18
	.long	.LASF424
	.sleb128 162
	.uleb128 0x18
	.long	.LASF425
	.sleb128 163
	.uleb128 0x18
	.long	.LASF426
	.sleb128 164
	.uleb128 0x18
	.long	.LASF427
	.sleb128 165
	.uleb128 0x18
	.long	.LASF428
	.sleb128 166
	.uleb128 0x18
	.long	.LASF429
	.sleb128 167
	.uleb128 0x18
	.long	.LASF430
	.sleb128 168
	.uleb128 0x18
	.long	.LASF431
	.sleb128 169
	.uleb128 0x18
	.long	.LASF432
	.sleb128 170
	.uleb128 0x18
	.long	.LASF433
	.sleb128 171
	.uleb128 0x18
	.long	.LASF434
	.sleb128 172
	.uleb128 0x18
	.long	.LASF435
	.sleb128 173
	.uleb128 0x18
	.long	.LASF436
	.sleb128 174
	.uleb128 0x18
	.long	.LASF437
	.sleb128 175
	.uleb128 0x18
	.long	.LASF438
	.sleb128 176
	.uleb128 0x18
	.long	.LASF439
	.sleb128 177
	.uleb128 0x18
	.long	.LASF440
	.sleb128 178
	.uleb128 0x18
	.long	.LASF441
	.sleb128 179
	.uleb128 0x18
	.long	.LASF442
	.sleb128 180
	.uleb128 0x18
	.long	.LASF443
	.sleb128 181
	.uleb128 0x18
	.long	.LASF444
	.sleb128 182
	.uleb128 0x18
	.long	.LASF445
	.sleb128 183
	.uleb128 0x18
	.long	.LASF446
	.sleb128 184
	.uleb128 0x18
	.long	.LASF447
	.sleb128 185
	.uleb128 0x18
	.long	.LASF448
	.sleb128 186
	.uleb128 0x18
	.long	.LASF449
	.sleb128 187
	.uleb128 0x18
	.long	.LASF450
	.sleb128 188
	.uleb128 0x18
	.long	.LASF451
	.sleb128 189
	.uleb128 0x18
	.long	.LASF452
	.sleb128 190
	.uleb128 0x18
	.long	.LASF453
	.sleb128 191
	.uleb128 0x18
	.long	.LASF454
	.sleb128 192
	.uleb128 0x18
	.long	.LASF455
	.sleb128 193
	.uleb128 0x18
	.long	.LASF456
	.sleb128 194
	.uleb128 0x18
	.long	.LASF457
	.sleb128 195
	.uleb128 0x18
	.long	.LASF458
	.sleb128 196
	.uleb128 0x18
	.long	.LASF459
	.sleb128 197
	.uleb128 0x18
	.long	.LASF460
	.sleb128 198
	.uleb128 0x18
	.long	.LASF461
	.sleb128 199
	.uleb128 0x18
	.long	.LASF462
	.sleb128 200
	.uleb128 0x18
	.long	.LASF463
	.sleb128 201
	.uleb128 0x18
	.long	.LASF464
	.sleb128 202
	.uleb128 0x18
	.long	.LASF465
	.sleb128 203
	.uleb128 0x18
	.long	.LASF466
	.sleb128 204
	.uleb128 0x18
	.long	.LASF467
	.sleb128 205
	.uleb128 0x18
	.long	.LASF468
	.sleb128 206
	.uleb128 0x18
	.long	.LASF469
	.sleb128 207
	.uleb128 0x18
	.long	.LASF470
	.sleb128 208
	.uleb128 0x18
	.long	.LASF471
	.sleb128 209
	.uleb128 0x18
	.long	.LASF472
	.sleb128 210
	.uleb128 0x18
	.long	.LASF473
	.sleb128 211
	.uleb128 0x18
	.long	.LASF474
	.sleb128 212
	.uleb128 0x18
	.long	.LASF475
	.sleb128 213
	.uleb128 0x18
	.long	.LASF476
	.sleb128 214
	.uleb128 0x18
	.long	.LASF477
	.sleb128 215
	.uleb128 0x18
	.long	.LASF478
	.sleb128 216
	.uleb128 0x18
	.long	.LASF479
	.sleb128 217
	.uleb128 0x18
	.long	.LASF480
	.sleb128 218
	.uleb128 0x18
	.long	.LASF481
	.sleb128 219
	.uleb128 0x18
	.long	.LASF482
	.sleb128 220
	.uleb128 0x18
	.long	.LASF483
	.sleb128 221
	.uleb128 0x18
	.long	.LASF484
	.sleb128 222
	.uleb128 0x18
	.long	.LASF485
	.sleb128 223
	.uleb128 0x18
	.long	.LASF486
	.sleb128 224
	.uleb128 0x18
	.long	.LASF487
	.sleb128 225
	.uleb128 0x18
	.long	.LASF488
	.sleb128 226
	.uleb128 0x18
	.long	.LASF489
	.sleb128 227
	.uleb128 0x18
	.long	.LASF490
	.sleb128 228
	.uleb128 0x18
	.long	.LASF491
	.sleb128 229
	.uleb128 0x18
	.long	.LASF492
	.sleb128 230
	.uleb128 0x18
	.long	.LASF493
	.sleb128 231
	.uleb128 0x18
	.long	.LASF494
	.sleb128 232
	.uleb128 0x18
	.long	.LASF495
	.sleb128 233
	.uleb128 0x18
	.long	.LASF496
	.sleb128 234
	.uleb128 0x18
	.long	.LASF497
	.sleb128 235
	.uleb128 0x18
	.long	.LASF498
	.sleb128 236
	.uleb128 0x18
	.long	.LASF499
	.sleb128 237
	.uleb128 0x18
	.long	.LASF500
	.sleb128 238
	.uleb128 0x18
	.long	.LASF501
	.sleb128 239
	.uleb128 0x18
	.long	.LASF502
	.sleb128 240
	.uleb128 0x18
	.long	.LASF503
	.sleb128 241
	.uleb128 0x18
	.long	.LASF504
	.sleb128 242
	.uleb128 0x18
	.long	.LASF505
	.sleb128 243
	.uleb128 0x18
	.long	.LASF506
	.sleb128 244
	.uleb128 0x18
	.long	.LASF507
	.sleb128 245
	.uleb128 0x18
	.long	.LASF508
	.sleb128 246
	.uleb128 0x18
	.long	.LASF509
	.sleb128 247
	.uleb128 0x18
	.long	.LASF510
	.sleb128 248
	.uleb128 0x18
	.long	.LASF511
	.sleb128 249
	.uleb128 0x18
	.long	.LASF512
	.sleb128 250
	.uleb128 0x18
	.long	.LASF513
	.sleb128 251
	.uleb128 0x18
	.long	.LASF514
	.sleb128 252
	.uleb128 0x18
	.long	.LASF515
	.sleb128 253
	.uleb128 0x18
	.long	.LASF516
	.sleb128 254
	.uleb128 0x18
	.long	.LASF517
	.sleb128 255
	.uleb128 0x18
	.long	.LASF518
	.sleb128 256
	.uleb128 0x18
	.long	.LASF519
	.sleb128 257
	.uleb128 0x18
	.long	.LASF520
	.sleb128 258
	.uleb128 0x18
	.long	.LASF521
	.sleb128 259
	.uleb128 0x18
	.long	.LASF522
	.sleb128 260
	.uleb128 0x18
	.long	.LASF523
	.sleb128 261
	.uleb128 0x18
	.long	.LASF524
	.sleb128 262
	.uleb128 0x18
	.long	.LASF525
	.sleb128 263
	.uleb128 0x18
	.long	.LASF526
	.sleb128 264
	.uleb128 0x18
	.long	.LASF527
	.sleb128 265
	.uleb128 0x18
	.long	.LASF528
	.sleb128 266
	.uleb128 0x18
	.long	.LASF529
	.sleb128 267
	.uleb128 0x18
	.long	.LASF530
	.sleb128 268
	.uleb128 0x18
	.long	.LASF531
	.sleb128 269
	.uleb128 0x18
	.long	.LASF532
	.sleb128 270
	.uleb128 0x18
	.long	.LASF533
	.sleb128 271
	.uleb128 0x18
	.long	.LASF534
	.sleb128 272
	.uleb128 0x18
	.long	.LASF535
	.sleb128 273
	.uleb128 0x18
	.long	.LASF536
	.sleb128 274
	.uleb128 0x18
	.long	.LASF537
	.sleb128 275
	.uleb128 0x18
	.long	.LASF538
	.sleb128 276
	.uleb128 0x18
	.long	.LASF539
	.sleb128 277
	.uleb128 0x18
	.long	.LASF540
	.sleb128 278
	.uleb128 0x18
	.long	.LASF541
	.sleb128 279
	.uleb128 0x18
	.long	.LASF542
	.sleb128 280
	.uleb128 0x18
	.long	.LASF543
	.sleb128 281
	.uleb128 0x18
	.long	.LASF544
	.sleb128 282
	.uleb128 0x18
	.long	.LASF545
	.sleb128 283
	.uleb128 0x18
	.long	.LASF546
	.sleb128 284
	.uleb128 0x18
	.long	.LASF547
	.sleb128 285
	.uleb128 0x18
	.long	.LASF548
	.sleb128 286
	.uleb128 0x18
	.long	.LASF549
	.sleb128 287
	.uleb128 0x18
	.long	.LASF550
	.sleb128 288
	.uleb128 0x18
	.long	.LASF551
	.sleb128 289
	.uleb128 0x18
	.long	.LASF552
	.sleb128 290
	.uleb128 0x18
	.long	.LASF553
	.sleb128 291
	.uleb128 0x18
	.long	.LASF554
	.sleb128 292
	.uleb128 0x18
	.long	.LASF555
	.sleb128 293
	.uleb128 0x18
	.long	.LASF556
	.sleb128 294
	.uleb128 0x18
	.long	.LASF557
	.sleb128 295
	.uleb128 0x18
	.long	.LASF558
	.sleb128 296
	.uleb128 0x18
	.long	.LASF559
	.sleb128 297
	.uleb128 0x18
	.long	.LASF560
	.sleb128 298
	.uleb128 0x18
	.long	.LASF561
	.sleb128 299
	.uleb128 0x18
	.long	.LASF562
	.sleb128 300
	.uleb128 0x18
	.long	.LASF563
	.sleb128 301
	.uleb128 0x18
	.long	.LASF564
	.sleb128 302
	.uleb128 0x18
	.long	.LASF565
	.sleb128 303
	.uleb128 0x18
	.long	.LASF566
	.sleb128 304
	.uleb128 0x18
	.long	.LASF567
	.sleb128 305
	.uleb128 0x18
	.long	.LASF568
	.sleb128 306
	.uleb128 0x18
	.long	.LASF569
	.sleb128 307
	.uleb128 0x18
	.long	.LASF570
	.sleb128 308
	.uleb128 0x18
	.long	.LASF571
	.sleb128 309
	.uleb128 0x18
	.long	.LASF572
	.sleb128 310
	.uleb128 0x18
	.long	.LASF573
	.sleb128 311
	.uleb128 0x18
	.long	.LASF574
	.sleb128 312
	.uleb128 0x18
	.long	.LASF575
	.sleb128 313
	.uleb128 0x18
	.long	.LASF576
	.sleb128 314
	.uleb128 0x18
	.long	.LASF577
	.sleb128 315
	.uleb128 0x18
	.long	.LASF578
	.sleb128 316
	.uleb128 0x18
	.long	.LASF579
	.sleb128 317
	.uleb128 0x18
	.long	.LASF580
	.sleb128 318
	.uleb128 0x18
	.long	.LASF581
	.sleb128 319
	.uleb128 0x18
	.long	.LASF582
	.sleb128 320
	.uleb128 0x18
	.long	.LASF583
	.sleb128 321
	.uleb128 0x18
	.long	.LASF584
	.sleb128 322
	.uleb128 0x18
	.long	.LASF585
	.sleb128 323
	.uleb128 0x18
	.long	.LASF586
	.sleb128 324
	.uleb128 0x18
	.long	.LASF587
	.sleb128 325
	.uleb128 0x18
	.long	.LASF588
	.sleb128 326
	.uleb128 0x18
	.long	.LASF589
	.sleb128 327
	.uleb128 0x18
	.long	.LASF590
	.sleb128 328
	.uleb128 0x18
	.long	.LASF591
	.sleb128 329
	.uleb128 0x18
	.long	.LASF592
	.sleb128 330
	.uleb128 0x18
	.long	.LASF593
	.sleb128 331
	.uleb128 0x18
	.long	.LASF594
	.sleb128 332
	.uleb128 0x18
	.long	.LASF595
	.sleb128 333
	.uleb128 0x18
	.long	.LASF596
	.sleb128 334
	.uleb128 0x18
	.long	.LASF597
	.sleb128 335
	.uleb128 0x18
	.long	.LASF598
	.sleb128 336
	.uleb128 0x18
	.long	.LASF599
	.sleb128 337
	.uleb128 0x18
	.long	.LASF600
	.sleb128 338
	.uleb128 0x18
	.long	.LASF601
	.sleb128 339
	.uleb128 0x18
	.long	.LASF602
	.sleb128 340
	.uleb128 0x18
	.long	.LASF603
	.sleb128 341
	.uleb128 0x18
	.long	.LASF604
	.sleb128 342
	.uleb128 0x18
	.long	.LASF605
	.sleb128 343
	.uleb128 0x18
	.long	.LASF606
	.sleb128 344
	.uleb128 0x18
	.long	.LASF607
	.sleb128 345
	.uleb128 0x18
	.long	.LASF608
	.sleb128 346
	.uleb128 0x18
	.long	.LASF609
	.sleb128 347
	.uleb128 0x18
	.long	.LASF610
	.sleb128 348
	.uleb128 0x18
	.long	.LASF611
	.sleb128 349
	.uleb128 0x18
	.long	.LASF612
	.sleb128 350
	.uleb128 0x18
	.long	.LASF613
	.sleb128 351
	.uleb128 0x18
	.long	.LASF614
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0x14ef
	.uleb128 0x6
	.byte	0x8
	.long	0x1eed
	.uleb128 0x6
	.byte	0x8
	.long	0x3c2
	.uleb128 0x6
	.byte	0x8
	.long	0x721
	.uleb128 0x9
	.long	.LASF615
	.byte	0x40
	.byte	0xa
	.byte	0x70
	.long	0x1f7b
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0x71
	.long	0x1500
	.byte	0
	.uleb128 0x1c
	.string	"gv"
	.byte	0xa
	.byte	0x72
	.long	0x150c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF616
	.byte	0xa
	.byte	0x73
	.long	0x150c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF617
	.byte	0xa
	.byte	0x75
	.long	0x1512
	.byte	0x18
	.uleb128 0xa
	.long	.LASF618
	.byte	0xa
	.byte	0x77
	.long	0x1512
	.byte	0x20
	.uleb128 0xa
	.long	.LASF619
	.byte	0xa
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF620
	.byte	0xa
	.byte	0x79
	.long	0x1311
	.byte	0x30
	.uleb128 0xa
	.long	.LASF621
	.byte	0xa
	.byte	0x7a
	.long	0x1311
	.byte	0x31
	.uleb128 0xa
	.long	.LASF622
	.byte	0xa
	.byte	0x7b
	.long	0x1f7b
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x155d
	.uleb128 0x9
	.long	.LASF623
	.byte	0x28
	.byte	0xa
	.byte	0xd3
	.long	0x1fd5
	.uleb128 0xa
	.long	.LASF624
	.byte	0xa
	.byte	0xd4
	.long	0x1326
	.byte	0
	.uleb128 0xa
	.long	.LASF625
	.byte	0xa
	.byte	0xd5
	.long	0x1326
	.byte	0x4
	.uleb128 0xa
	.long	.LASF626
	.byte	0xa
	.byte	0xd6
	.long	0x1359
	.byte	0x8
	.uleb128 0xa
	.long	.LASF627
	.byte	0xa
	.byte	0xd7
	.long	0x14ef
	.byte	0x10
	.uleb128 0xa
	.long	.LASF628
	.byte	0xa
	.byte	0xd8
	.long	0x1359
	.byte	0x18
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0xd9
	.long	0x1500
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.long	.LASF629
	.byte	0x58
	.byte	0xa
	.byte	0xf0
	.long	0x2067
	.uleb128 0xa
	.long	.LASF630
	.byte	0xa
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF631
	.byte	0xa
	.byte	0xf2
	.long	0x1326
	.byte	0x8
	.uleb128 0xa
	.long	.LASF632
	.byte	0xa
	.byte	0xf3
	.long	0x14ef
	.byte	0x10
	.uleb128 0xa
	.long	.LASF633
	.byte	0xa
	.byte	0xf4
	.long	0x14ef
	.byte	0x18
	.uleb128 0xa
	.long	.LASF634
	.byte	0xa
	.byte	0xf5
	.long	0x14ef
	.byte	0x20
	.uleb128 0xa
	.long	.LASF635
	.byte	0xa
	.byte	0xfa
	.long	0x2067
	.byte	0x28
	.uleb128 0xa
	.long	.LASF636
	.byte	0xa
	.byte	0xfc
	.long	0x1359
	.byte	0x30
	.uleb128 0xa
	.long	.LASF637
	.byte	0xa
	.byte	0xfd
	.long	0x1359
	.byte	0x38
	.uleb128 0xa
	.long	.LASF638
	.byte	0xa
	.byte	0xfe
	.long	0x1512
	.byte	0x40
	.uleb128 0xa
	.long	.LASF639
	.byte	0xa
	.byte	0xff
	.long	0x128
	.byte	0x48
	.uleb128 0x11
	.long	.LASF640
	.byte	0xa
	.value	0x100
	.long	0x128
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1359
	.uleb128 0x19
	.byte	0x58
	.byte	0xa
	.value	0x139
	.long	0x209b
	.uleb128 0x14
	.long	.LASF641
	.byte	0xa
	.value	0x13a
	.long	0x1f04
	.uleb128 0x14
	.long	.LASF642
	.byte	0xa
	.value	0x13b
	.long	0x1f81
	.uleb128 0x14
	.long	.LASF643
	.byte	0xa
	.value	0x13c
	.long	0x1fd5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1d3
	.uleb128 0x12
	.long	.LASF644
	.byte	0x58
	.byte	0xa
	.value	0x16e
	.long	0x2165
	.uleb128 0x11
	.long	.LASF645
	.byte	0xa
	.value	0x16f
	.long	0x1326
	.byte	0
	.uleb128 0x11
	.long	.LASF646
	.byte	0xa
	.value	0x170
	.long	0x1326
	.byte	0x4
	.uleb128 0x11
	.long	.LASF647
	.byte	0xa
	.value	0x171
	.long	0x1326
	.byte	0x8
	.uleb128 0x11
	.long	.LASF648
	.byte	0xa
	.value	0x172
	.long	0x1326
	.byte	0xc
	.uleb128 0x11
	.long	.LASF649
	.byte	0xa
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF650
	.byte	0xa
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0x11
	.long	.LASF651
	.byte	0xa
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0x11
	.long	.LASF652
	.byte	0xa
	.value	0x176
	.long	0x1359
	.byte	0x20
	.uleb128 0x11
	.long	.LASF653
	.byte	0xa
	.value	0x177
	.long	0x1359
	.byte	0x28
	.uleb128 0x11
	.long	.LASF654
	.byte	0xa
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0x11
	.long	.LASF655
	.byte	0xa
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0x11
	.long	.LASF656
	.byte	0xa
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF657
	.byte	0xa
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0x11
	.long	.LASF658
	.byte	0xa
	.value	0x17c
	.long	0x1efe
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0xa
	.value	0x1a4
	.long	0x2187
	.uleb128 0x14
	.long	.LASF659
	.byte	0xa
	.value	0x1a5
	.long	0x94c
	.uleb128 0x14
	.long	.LASF660
	.byte	0xa
	.value	0x1a6
	.long	0x20a1
	.byte	0
	.uleb128 0x12
	.long	.LASF661
	.byte	0x38
	.byte	0xa
	.value	0x20c
	.long	0x21fd
	.uleb128 0x11
	.long	.LASF662
	.byte	0xa
	.value	0x20d
	.long	0x1512
	.byte	0
	.uleb128 0x11
	.long	.LASF663
	.byte	0xa
	.value	0x20e
	.long	0x21fd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF664
	.byte	0xa
	.value	0x20f
	.long	0x1326
	.byte	0x10
	.uleb128 0x11
	.long	.LASF665
	.byte	0xa
	.value	0x210
	.long	0x1326
	.byte	0x14
	.uleb128 0x11
	.long	.LASF666
	.byte	0xa
	.value	0x211
	.long	0x1326
	.byte	0x18
	.uleb128 0x11
	.long	.LASF667
	.byte	0xa
	.value	0x212
	.long	0x2203
	.byte	0x20
	.uleb128 0x11
	.long	.LASF668
	.byte	0xa
	.value	0x213
	.long	0x2203
	.byte	0x28
	.uleb128 0x11
	.long	.LASF669
	.byte	0xa
	.value	0x214
	.long	0x1326
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x918
	.uleb128 0x6
	.byte	0x8
	.long	0x2187
	.uleb128 0xf
	.long	.LASF670
	.byte	0xa
	.value	0x219
	.long	0x2187
	.uleb128 0xc
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x221f
	.uleb128 0x10
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x224f
	.uleb128 0xa
	.long	.LASF671
	.byte	0x10
	.byte	0x11
	.long	0x228b
	.byte	0
	.uleb128 0xa
	.long	.LASF672
	.byte	0x10
	.byte	0x12
	.long	0x2291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF673
	.byte	0x10
	.byte	0x13
	.long	0x1359
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x225a
	.uleb128 0x10
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x228b
	.uleb128 0xa
	.long	.LASF674
	.byte	0x10
	.byte	0x18
	.long	0x1331
	.byte	0
	.uleb128 0xa
	.long	.LASF675
	.byte	0x10
	.byte	0x19
	.long	0x1326
	.byte	0x4
	.uleb128 0xa
	.long	.LASF676
	.byte	0x10
	.byte	0x1a
	.long	0x135f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2215
	.uleb128 0x6
	.byte	0x8
	.long	0x224f
	.uleb128 0x1d
	.long	0x57
	.long	0x22ab
	.uleb128 0x16
	.long	0x1359
	.uleb128 0x16
	.long	0x14d1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2297
	.uleb128 0x1d
	.long	0x1331
	.long	0x22c5
	.uleb128 0x16
	.long	0x1359
	.uleb128 0x16
	.long	0x14d1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b1
	.uleb128 0x1d
	.long	0x57
	.long	0x22ee
	.uleb128 0x16
	.long	0x1359
	.uleb128 0x16
	.long	0x14d1
	.uleb128 0x16
	.long	0x1359
	.uleb128 0x16
	.long	0x10d
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22cb
	.uleb128 0x1d
	.long	0x57
	.long	0x2308
	.uleb128 0x16
	.long	0x14d1
	.uleb128 0x16
	.long	0x2308
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12d0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f4
	.uleb128 0x6
	.byte	0x8
	.long	0x11f5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF677
	.uleb128 0x1e
	.byte	0x4
	.byte	0x8
	.value	0xfb1
	.long	0x24c0
	.uleb128 0x18
	.long	.LASF678
	.sleb128 0
	.uleb128 0x18
	.long	.LASF679
	.sleb128 1
	.uleb128 0x18
	.long	.LASF680
	.sleb128 2
	.uleb128 0x18
	.long	.LASF681
	.sleb128 3
	.uleb128 0x18
	.long	.LASF682
	.sleb128 4
	.uleb128 0x18
	.long	.LASF683
	.sleb128 5
	.uleb128 0x18
	.long	.LASF684
	.sleb128 6
	.uleb128 0x18
	.long	.LASF685
	.sleb128 7
	.uleb128 0x18
	.long	.LASF686
	.sleb128 8
	.uleb128 0x18
	.long	.LASF687
	.sleb128 9
	.uleb128 0x18
	.long	.LASF688
	.sleb128 10
	.uleb128 0x18
	.long	.LASF689
	.sleb128 11
	.uleb128 0x18
	.long	.LASF690
	.sleb128 12
	.uleb128 0x18
	.long	.LASF691
	.sleb128 13
	.uleb128 0x18
	.long	.LASF692
	.sleb128 14
	.uleb128 0x18
	.long	.LASF693
	.sleb128 15
	.uleb128 0x18
	.long	.LASF694
	.sleb128 16
	.uleb128 0x18
	.long	.LASF695
	.sleb128 17
	.uleb128 0x18
	.long	.LASF696
	.sleb128 18
	.uleb128 0x18
	.long	.LASF697
	.sleb128 19
	.uleb128 0x18
	.long	.LASF698
	.sleb128 20
	.uleb128 0x18
	.long	.LASF699
	.sleb128 21
	.uleb128 0x18
	.long	.LASF700
	.sleb128 22
	.uleb128 0x18
	.long	.LASF701
	.sleb128 23
	.uleb128 0x18
	.long	.LASF702
	.sleb128 24
	.uleb128 0x18
	.long	.LASF703
	.sleb128 25
	.uleb128 0x18
	.long	.LASF704
	.sleb128 26
	.uleb128 0x18
	.long	.LASF705
	.sleb128 27
	.uleb128 0x18
	.long	.LASF706
	.sleb128 28
	.uleb128 0x18
	.long	.LASF707
	.sleb128 29
	.uleb128 0x18
	.long	.LASF708
	.sleb128 30
	.uleb128 0x18
	.long	.LASF709
	.sleb128 31
	.uleb128 0x18
	.long	.LASF710
	.sleb128 32
	.uleb128 0x18
	.long	.LASF711
	.sleb128 33
	.uleb128 0x18
	.long	.LASF712
	.sleb128 34
	.uleb128 0x18
	.long	.LASF713
	.sleb128 35
	.uleb128 0x18
	.long	.LASF714
	.sleb128 36
	.uleb128 0x18
	.long	.LASF715
	.sleb128 37
	.uleb128 0x18
	.long	.LASF716
	.sleb128 38
	.uleb128 0x18
	.long	.LASF717
	.sleb128 39
	.uleb128 0x18
	.long	.LASF718
	.sleb128 40
	.uleb128 0x18
	.long	.LASF719
	.sleb128 41
	.uleb128 0x18
	.long	.LASF720
	.sleb128 42
	.uleb128 0x18
	.long	.LASF721
	.sleb128 43
	.uleb128 0x18
	.long	.LASF722
	.sleb128 44
	.uleb128 0x18
	.long	.LASF723
	.sleb128 45
	.uleb128 0x18
	.long	.LASF724
	.sleb128 46
	.uleb128 0x18
	.long	.LASF725
	.sleb128 47
	.uleb128 0x18
	.long	.LASF726
	.sleb128 48
	.uleb128 0x18
	.long	.LASF727
	.sleb128 49
	.uleb128 0x18
	.long	.LASF728
	.sleb128 50
	.uleb128 0x18
	.long	.LASF729
	.sleb128 51
	.uleb128 0x18
	.long	.LASF730
	.sleb128 52
	.uleb128 0x18
	.long	.LASF731
	.sleb128 53
	.uleb128 0x18
	.long	.LASF732
	.sleb128 54
	.uleb128 0x18
	.long	.LASF733
	.sleb128 55
	.uleb128 0x18
	.long	.LASF734
	.sleb128 56
	.uleb128 0x18
	.long	.LASF735
	.sleb128 57
	.uleb128 0x18
	.long	.LASF736
	.sleb128 58
	.uleb128 0x18
	.long	.LASF737
	.sleb128 59
	.uleb128 0x18
	.long	.LASF738
	.sleb128 60
	.uleb128 0x18
	.long	.LASF739
	.sleb128 61
	.uleb128 0x18
	.long	.LASF740
	.sleb128 62
	.uleb128 0x18
	.long	.LASF741
	.sleb128 63
	.uleb128 0x18
	.long	.LASF742
	.sleb128 64
	.uleb128 0x18
	.long	.LASF743
	.sleb128 65
	.uleb128 0x18
	.long	.LASF744
	.sleb128 66
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x6
	.byte	0x8
	.long	0x1311
	.uleb128 0x7
	.long	0x6c
	.long	0x24dc
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF745
	.byte	0x18
	.byte	0x14
	.value	0x183
	.long	0x251e
	.uleb128 0x11
	.long	.LASF746
	.byte	0x14
	.value	0x184
	.long	0x1326
	.byte	0
	.uleb128 0x11
	.long	.LASF747
	.byte	0x14
	.value	0x185
	.long	0x1326
	.byte	0x4
	.uleb128 0x11
	.long	.LASF748
	.byte	0x14
	.value	0x186
	.long	0x1359
	.byte	0x8
	.uleb128 0x11
	.long	.LASF749
	.byte	0x14
	.value	0x187
	.long	0x1359
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x24dc
	.long	0x252e
	.uleb128 0x8
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x1
	.value	0x307
	.long	0x2552
	.uleb128 0x11
	.long	.LASF235
	.byte	0x1
	.value	0x307
	.long	0x7f
	.byte	0
	.uleb128 0x11
	.long	.LASF750
	.byte	0x1
	.value	0x307
	.long	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	.LASF753
	.byte	0x1
	.byte	0x1d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x25ad
	.uleb128 0x21
	.long	.LASF751
	.byte	0x1
	.byte	0x1d
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x21
	.long	.LASF752
	.byte	0x1
	.byte	0x1d
	.long	0x1540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.string	"pat"
	.byte	0x1
	.byte	0x1d
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x23
	.uleb128 0x24
	.long	.LASF755
	.byte	0x1
	.byte	0x1f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x20
	.long	.LASF754
	.byte	0x1
	.byte	0x26
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2603
	.uleb128 0x21
	.long	.LASF751
	.byte	0x1
	.byte	0x26
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF752
	.byte	0x1
	.byte	0x26
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"pat"
	.byte	0x1
	.byte	0x26
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF755
	.byte	0x1
	.byte	0x26
	.long	0x2603
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x102
	.uleb128 0x25
	.long	.LASF761
	.byte	0x1
	.byte	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF756
	.byte	0x1
	.byte	0x36
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2694
	.uleb128 0x21
	.long	.LASF757
	.byte	0x1
	.byte	0x36
	.long	0x14d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF758
	.byte	0x1
	.byte	0x39
	.long	0x228b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.string	"gv"
	.byte	0x1
	.byte	0x3f
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.byte	0x40
	.long	0x14d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF759
	.byte	0x1
	.byte	0x4f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x26cc
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x4f
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.byte	0x51
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF760
	.byte	0x1
	.byte	0x60
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2704
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x60
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.byte	0x62
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.byte	0x6d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF766
	.byte	0x1
	.byte	0x73
	.long	0x79
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a1
	.uleb128 0x22
	.string	"dsv"
	.byte	0x1
	.byte	0x73
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"pv"
	.byte	0x1
	.byte	0x73
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"cur"
	.byte	0x1
	.byte	0x73
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0x73
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF763
	.byte	0x1
	.byte	0x73
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF764
	.byte	0x1
	.byte	0x75
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF765
	.byte	0x1
	.byte	0x76
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF767
	.byte	0x1
	.byte	0x98
	.long	0x79
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x286a
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.byte	0x98
	.long	0x1359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.byte	0x9a
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"n_a"
	.byte	0x1
	.byte	0x9b
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF768
	.byte	0x1
	.byte	0x9c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF769
	.byte	0x1
	.byte	0x9f
	.quad	.L50
	.uleb128 0x2a
	.long	.LASF770
	.byte	0x1
	.value	0x146
	.quad	.L52
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x2848
	.uleb128 0x24
	.long	.LASF771
	.byte	0x1
	.byte	0xd3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.byte	0xd4
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2c
	.string	"tmp"
	.byte	0x1
	.value	0x12c
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF772
	.byte	0x1
	.value	0x14f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x28e4
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x14f
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x14f
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"pm"
	.byte	0x1
	.value	0x14f
	.long	0x1ef8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"ch"
	.byte	0x1
	.value	0x151
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x168
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF774
	.byte	0x1
	.value	0x18b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2911
	.uleb128 0x2f
	.string	"pm"
	.byte	0x1
	.value	0x18b
	.long	0x1ef8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF775
	.byte	0x1
	.value	0x191
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x29c7
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x191
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x191
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"o"
	.byte	0x1
	.value	0x191
	.long	0x14ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x2980
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x1bc
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x29a5
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x1db
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2c
	.string	"kid"
	.byte	0x1
	.value	0x2e0
	.long	0x14ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF776
	.byte	0x1
	.value	0x2e8
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f3
	.uleb128 0x2f
	.string	"o"
	.byte	0x1
	.value	0x2e8
	.long	0x14ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x2ee
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a2e
	.uleb128 0x2f
	.string	"gv"
	.byte	0x1
	.value	0x2ee
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x2f0
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF778
	.byte	0x1
	.value	0x334
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b82
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x334
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x334
	.long	0x1540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"mg"
	.byte	0x1
	.value	0x334
	.long	0x14d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF779
	.byte	0x1
	.value	0x334
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF780
	.byte	0x1
	.value	0x334
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF781
	.byte	0x1
	.value	0x334
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF763
	.byte	0x1
	.value	0x334
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2aea
	.uleb128 0x2c
	.string	"v"
	.byte	0x1
	.value	0x33a
	.long	0x2314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x33b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x2b1d
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x364
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF750
	.byte	0x1
	.value	0x365
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x2b41
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x38c
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x30
	.long	.LASF782
	.byte	0x1
	.value	0x39b
	.long	0x2b82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x39d
	.long	0x128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x150
	.uleb128 0x2d
	.long	.LASF783
	.byte	0x1
	.value	0x3aa
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bb5
	.uleb128 0x2f
	.string	"mg"
	.byte	0x1
	.value	0x3aa
	.long	0x14d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF784
	.byte	0x1
	.value	0x3b0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c0f
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x3b0
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x3b0
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF750
	.byte	0x1
	.value	0x3b0
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x3b0
	.long	0x14d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF785
	.byte	0x1
	.value	0x3ba
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c69
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x3ba
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x3ba
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF750
	.byte	0x1
	.value	0x3ba
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x3ba
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF786
	.byte	0x1
	.value	0x3c4
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc3
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x3c4
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x3c4
	.long	0x1540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF750
	.byte	0x1
	.value	0x3c4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x3c4
	.long	0x150c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF787
	.byte	0x1
	.value	0x3d2
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f50
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x3d2
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -964
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x3d2
	.long	0x1540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x3d2
	.long	0x1359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.uleb128 0x2e
	.long	.LASF779
	.byte	0x1
	.value	0x3d2
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.uleb128 0x2e
	.long	.LASF780
	.byte	0x1
	.value	0x3d2
	.long	0x1326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -988
	.uleb128 0x2e
	.long	.LASF781
	.byte	0x1
	.value	0x3d2
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x2e
	.long	.LASF763
	.byte	0x1
	.value	0x3d2
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x3d4
	.long	0x1359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x3d5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x30
	.long	.LASF227
	.byte	0x1
	.value	0x3d6
	.long	0x1331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -924
	.uleb128 0x30
	.long	.LASF235
	.byte	0x1
	.value	0x3d7
	.long	0x1331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x2dd3
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x4c9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2c
	.string	"elt"
	.byte	0x1
	.value	0x4cb
	.long	0x2067
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2e87
	.uleb128 0x30
	.long	.LASF788
	.byte	0x1
	.value	0x4d7
	.long	0x2f50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x4d9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -948
	.uleb128 0x2c
	.string	"max"
	.byte	0x1
	.value	0x4da
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x30
	.long	.LASF789
	.byte	0x1
	.value	0x4db
	.long	0x1331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x30
	.long	.LASF790
	.byte	0x1
	.value	0x4db
	.long	0x1331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x30
	.long	.LASF791
	.byte	0x1
	.value	0x4dc
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x2c
	.string	"sum"
	.byte	0x1
	.value	0x4dc
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x4e1
	.long	0x228b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x4e1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2f2d
	.uleb128 0x2c
	.string	"he"
	.byte	0x1
	.value	0x514
	.long	0x228b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x515
	.long	0x14d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x516
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2c
	.string	"elt"
	.byte	0x1
	.value	0x51b
	.long	0x1359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x30
	.long	.LASF792
	.byte	0x1
	.value	0x51b
	.long	0x1359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x30
	.long	.LASF793
	.byte	0x1
	.value	0x51c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x51d
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x30
	.long	.LASF794
	.byte	0x1
	.value	0x51e
	.long	0x1331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -916
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x30
	.long	.LASF795
	.byte	0x1
	.value	0x54b
	.long	0x1500
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x57
	.long	0x2f60
	.uleb128 0x8
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0x2d
	.long	.LASF796
	.byte	0x1
	.value	0x589
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f8d
	.uleb128 0x2f
	.string	"sv"
	.byte	0x1
	.value	0x589
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF857
	.byte	0x1
	.value	0x58f
	.long	0x57
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF797
	.byte	0x1
	.value	0x5b3
	.long	0x1326
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3016
	.uleb128 0x2f
	.string	"o"
	.byte	0x1
	.value	0x5b3
	.long	0x14ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF798
	.byte	0x1
	.value	0x5b5
	.long	0x1512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF799
	.byte	0x1
	.value	0x5b5
	.long	0x1512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"cv"
	.byte	0x1
	.value	0x5b6
	.long	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x5b7
	.long	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x33
	.long	.LASF858
	.byte	0x1
	.value	0x5e4
	.long	0x1500
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3055
	.uleb128 0x2f
	.string	"ix"
	.byte	0x1
	.value	0x5e4
	.long	0x1326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"cx"
	.byte	0x1
	.value	0x5e6
	.long	0x21fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF800
	.byte	0x1
	.value	0x5f4
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3083
	.uleb128 0x2e
	.long	.LASF801
	.byte	0x1
	.value	0x5f4
	.long	0x24c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF859
	.byte	0x1
	.value	0x5fd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x30af
	.uleb128 0x2f
	.string	"o"
	.byte	0x1
	.value	0x5fd
	.long	0x14ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF802
	.byte	0x1
	.value	0x607
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x30db
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x609
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x7
	.long	0x252e
	.long	0x30eb
	.uleb128 0x8
	.long	0x65
	.byte	0x27
	.byte	0
	.uleb128 0x30
	.long	.LASF803
	.byte	0x1
	.value	0x307
	.long	0x30db
	.uleb128 0x9
	.byte	0x3
	.quad	magic_names
	.uleb128 0x7
	.long	0x79
	.long	0x310c
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.long	.LASF804
	.byte	0x16
	.byte	0x1e
	.long	0x3101
	.uleb128 0x7
	.long	0x1331
	.long	0x3122
	.uleb128 0x35
	.byte	0
	.uleb128 0x37
	.long	.LASF805
	.byte	0x16
	.value	0x5be
	.long	0x3117
	.uleb128 0x36
	.long	.LASF806
	.byte	0x17
	.byte	0x81
	.long	0x14d7
	.uleb128 0x36
	.long	.LASF807
	.byte	0x17
	.byte	0x9c
	.long	0x1500
	.uleb128 0x36
	.long	.LASF808
	.byte	0x17
	.byte	0x9d
	.long	0x14ef
	.uleb128 0x36
	.long	.LASF809
	.byte	0x17
	.byte	0x9f
	.long	0x14ef
	.uleb128 0x36
	.long	.LASF810
	.byte	0x17
	.byte	0xcb
	.long	0x1434
	.uleb128 0x36
	.long	.LASF811
	.byte	0x17
	.byte	0xd1
	.long	0x1500
	.uleb128 0x37
	.long	.LASF812
	.byte	0x17
	.value	0x125
	.long	0x635
	.uleb128 0x37
	.long	.LASF813
	.byte	0x17
	.value	0x126
	.long	0x635
	.uleb128 0x37
	.long	.LASF814
	.byte	0x17
	.value	0x127
	.long	0x635
	.uleb128 0x37
	.long	.LASF815
	.byte	0x17
	.value	0x164
	.long	0x31a0
	.uleb128 0x38
	.long	0x1331
	.uleb128 0x37
	.long	.LASF816
	.byte	0x17
	.value	0x1e2
	.long	0x57
	.uleb128 0x36
	.long	.LASF817
	.byte	0x18
	.byte	0x26
	.long	0x14ef
	.uleb128 0x36
	.long	.LASF818
	.byte	0x18
	.byte	0x36
	.long	0x2067
	.uleb128 0x36
	.long	.LASF819
	.byte	0x18
	.byte	0x37
	.long	0x1326
	.uleb128 0x36
	.long	.LASF820
	.byte	0x18
	.byte	0x5f
	.long	0x7f
	.uleb128 0x36
	.long	.LASF821
	.byte	0x18
	.byte	0x7d
	.long	0x14d7
	.uleb128 0x36
	.long	.LASF822
	.byte	0x18
	.byte	0x81
	.long	0x31f3
	.uleb128 0x38
	.long	0x209b
	.uleb128 0x36
	.long	.LASF823
	.byte	0x18
	.byte	0x88
	.long	0x3203
	.uleb128 0x6
	.byte	0x8
	.long	0x2209
	.uleb128 0x36
	.long	.LASF824
	.byte	0x18
	.byte	0x9a
	.long	0x1326
	.uleb128 0x36
	.long	.LASF825
	.byte	0x18
	.byte	0xf3
	.long	0x24c0
	.uleb128 0x36
	.long	.LASF826
	.byte	0x18
	.byte	0xf4
	.long	0x79
	.uleb128 0x36
	.long	.LASF827
	.byte	0x19
	.byte	0x42
	.long	0x635
	.uleb128 0x37
	.long	.LASF828
	.byte	0x8
	.value	0xf85
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF829
	.byte	0x8
	.value	0xf86
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF830
	.byte	0x8
	.value	0xf87
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF831
	.byte	0x8
	.value	0xf88
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF832
	.byte	0x8
	.value	0xf89
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF833
	.byte	0x8
	.value	0xf8a
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF834
	.byte	0x8
	.value	0xf8b
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF835
	.byte	0x8
	.value	0xf8c
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF836
	.byte	0x8
	.value	0xf8d
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF837
	.byte	0x8
	.value	0xf8f
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF838
	.byte	0x8
	.value	0xf90
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF839
	.byte	0x8
	.value	0xf91
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF840
	.byte	0x8
	.value	0xf92
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF841
	.byte	0x8
	.value	0xf93
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF842
	.byte	0x8
	.value	0xf94
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF843
	.byte	0x8
	.value	0xf95
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF844
	.byte	0x8
	.value	0xf96
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF845
	.byte	0x8
	.value	0xf97
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF846
	.byte	0x8
	.value	0xf98
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF847
	.byte	0x8
	.value	0xf99
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF848
	.byte	0x8
	.value	0xfa0
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF849
	.byte	0x8
	.value	0xfa9
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF850
	.byte	0x8
	.value	0xfaa
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF851
	.byte	0x8
	.value	0xfac
	.long	0x11f5
	.uleb128 0x37
	.long	.LASF852
	.byte	0x8
	.value	0xfad
	.long	0x11f5
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF596:
	.string	"OP_ESERVENT"
.LASF521:
	.string	"OP_FTSVTX"
.LASF76:
	.string	"precomp"
.LASF474:
	.string	"OP_SYSREAD"
.LASF108:
	.string	"blku_oldretsp"
.LASF491:
	.string	"OP_SHUTDOWN"
.LASF731:
	.string	"repeat_ass_amg"
.LASF699:
	.string	"rshift_ass_amg"
.LASF760:
	.string	"Perl_dump_form"
.LASF567:
	.string	"OP_MSGRCV"
.LASF667:
	.string	"si_prev"
.LASF188:
	.string	"xpvfm"
.LASF609:
	.string	"OP_LOCK"
.LASF614:
	.string	"OP_max"
.LASF23:
	.string	"op_next"
.LASF259:
	.string	"xiou_any"
.LASF525:
	.string	"OP_CHDIR"
.LASF439:
	.string	"OP_ENTER"
.LASF290:
	.string	"OP_REGCMAYBE"
.LASF105:
	.string	"block"
.LASF420:
	.string	"OP_FLOP"
.LASF458:
	.string	"OP_BINMODE"
.LASF836:
	.string	"PL_vtbl_isa"
.LASF167:
	.string	"xpvgv"
.LASF43:
	.string	"logop"
.LASF747:
	.string	"max_offset"
.LASF192:
	.string	"xio_ifp"
.LASF350:
	.string	"OP_SEQ"
.LASF38:
	.string	"cop_io"
.LASF661:
	.string	"stackinfo"
.LASF701:
	.string	"band_ass_amg"
.LASF708:
	.string	"gt_amg"
.LASF765:
	.string	"nul_terminated"
.LASF512:
	.string	"OP_FTSOCK"
.LASF161:
	.string	"xhv_keys"
.LASF207:
	.string	"xio_flags"
.LASF588:
	.string	"OP_GSERVENT"
.LASF211:
	.string	"svt_set"
.LASF157:
	.string	"xpvhv"
.LASF733:
	.string	"concat_ass_amg"
.LASF849:
	.string	"PL_vtbl_amagic"
.LASF756:
	.string	"Perl_dump_packsubs"
.LASF855:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF479:
	.string	"OP_TELL"
.LASF551:
	.string	"OP_SETPGRP"
.LASF844:
	.string	"PL_vtbl_pos"
.LASF790:
	.string	"keys"
.LASF506:
	.string	"OP_FTROWNED"
.LASF94:
	.string	"gp_hv"
.LASF191:
	.string	"xpvio"
.LASF495:
	.string	"OP_GETPEERNAME"
.LASF349:
	.string	"OP_SGE"
.LASF129:
	.string	"xpviv"
.LASF725:
	.string	"cos_amg"
.LASF653:
	.string	"sbu_targ"
.LASF17:
	.string	"overflow_arg_area"
.LASF489:
	.string	"OP_LISTEN"
.LASF347:
	.string	"OP_SGT"
.LASF842:
	.string	"PL_vtbl_substr"
.LASF561:
	.string	"OP_SHMCTL"
.LASF319:
	.string	"OP_DIVIDE"
.LASF18:
	.string	"reg_save_area"
.LASF176:
	.string	"xcv_start"
.LASF799:
	.string	"comppad"
.LASF91:
	.string	"gp_io"
.LASF95:
	.string	"gp_egv"
.LASF806:
	.string	"PL_debstash"
.LASF645:
	.string	"sbu_iters"
.LASF364:
	.string	"OP_SRAND"
.LASF674:
	.string	"hek_hash"
.LASF712:
	.string	"ncmp_amg"
.LASF36:
	.string	"cop_line"
.LASF175:
	.string	"xcv_stash"
.LASF330:
	.string	"OP_LEFT_SHIFT"
.LASF820:
	.string	"PL_tainted"
.LASF597:
	.string	"OP_GPWNAM"
.LASF728:
	.string	"log_amg"
.LASF180:
	.string	"xcv_gv"
.LASF460:
	.string	"OP_UNTIE"
.LASF361:
	.string	"OP_SIN"
.LASF668:
	.string	"si_next"
.LASF548:
	.string	"OP_KILL"
.LASF126:
	.string	"xpv_cur"
.LASF288:
	.string	"OP_READLINE"
.LASF301:
	.string	"OP_SCHOP"
.LASF119:
	.string	"mg_type"
.LASF534:
	.string	"OP_READLINK"
.LASF39:
	.string	"UNOP"
.LASF63:
	.string	"op_lastop"
.LASF142:
	.string	"xpvlv"
.LASF125:
	.string	"xpv_pv"
.LASF856:
	.string	"opcode"
.LASF805:
	.string	"PL_opargs"
.LASF427:
	.string	"OP_METHOD"
.LASF304:
	.string	"OP_DEFINED"
.LASF138:
	.string	"xpvmg"
.LASF652:
	.string	"sbu_dstr"
.LASF710:
	.string	"eq_amg"
.LASF854:
	.string	"dump.c"
.LASF542:
	.string	"OP_CLOSEDIR"
.LASF569:
	.string	"OP_SEMCTL"
.LASF445:
	.string	"OP_LEAVELOOP"
.LASF536:
	.string	"OP_RMDIR"
.LASF44:
	.string	"op_other"
.LASF475:
	.string	"OP_SYSWRITE"
.LASF257:
	.string	"cv_flags_t"
.LASF99:
	.string	"gp_line"
.LASF606:
	.string	"OP_EGRENT"
.LASF644:
	.string	"subst"
.LASF783:
	.string	"Perl_magic_dump"
.LASF197:
	.string	"xio_page_len"
.LASF303:
	.string	"OP_SCHOMP"
.LASF707:
	.string	"le_amg"
.LASF815:
	.string	"PL_debug"
.LASF469:
	.string	"OP_LEAVEWRITE"
.LASF348:
	.string	"OP_SLE"
.LASF135:
	.string	"xpvnv"
.LASF168:
	.string	"xgv_gp"
.LASF22:
	.string	"__va_list_tag"
.LASF346:
	.string	"OP_SLT"
.LASF402:
	.string	"OP_JOIN"
.LASF118:
	.string	"mg_private"
.LASF302:
	.string	"OP_CHOMP"
.LASF737:
	.string	"to_av_amg"
.LASF651:
	.string	"sbu_orig"
.LASF395:
	.string	"OP_EXISTS"
.LASF154:
	.string	"xav_arylen"
.LASF88:
	.string	"program"
.LASF788:
	.string	"freq"
.LASF177:
	.string	"xcv_root"
.LASF624:
	.string	"old_in_eval"
.LASF672:
	.string	"hent_hek"
.LASF117:
	.string	"mg_virtual"
.LASF444:
	.string	"OP_ENTERLOOP"
.LASF263:
	.string	"OP_STUB"
.LASF145:
	.string	"xlv_targ"
.LASF727:
	.string	"exp_amg"
.LASF734:
	.string	"copy_amg"
.LASF798:
	.string	"padlist"
.LASF34:
	.string	"cop_seq"
.LASF454:
	.string	"OP_CLOSE"
.LASF744:
	.string	"max_amg_code"
.LASF351:
	.string	"OP_SNE"
.LASF69:
	.string	"sv_flags"
.LASF700:
	.string	"band_amg"
.LASF558:
	.string	"OP_ALARM"
.LASF339:
	.string	"OP_I_GE"
.LASF682:
	.string	"string_amg"
.LASF335:
	.string	"OP_I_GT"
.LASF66:
	.string	"broiled"
.LASF202:
	.string	"xio_fmt_gv"
.LASF824:
	.string	"PL_dumpindent"
.LASF459:
	.string	"OP_TIE"
.LASF292:
	.string	"OP_REGCOMP"
.LASF98:
	.string	"gp_flags"
.LASF104:
	.string	"cx_u"
.LASF300:
	.string	"OP_CHOP"
.LASF828:
	.string	"PL_vtbl_sv"
.LASF90:
	.string	"gp_refcnt"
.LASF635:
	.string	"itervar"
.LASF84:
	.string	"nparens"
.LASF574:
	.string	"OP_LEAVEEVAL"
.LASF235:
	.string	"type"
.LASF838:
	.string	"PL_vtbl_glob"
.LASF463:
	.string	"OP_DBMCLOSE"
.LASF317:
	.string	"OP_MULTIPLY"
.LASF426:
	.string	"OP_ORASSIGN"
.LASF100:
	.string	"gp_file"
.LASF492:
	.string	"OP_GSOCKOPT"
.LASF196:
	.string	"xio_page"
.LASF590:
	.string	"OP_SNETENT"
.LASF432:
	.string	"OP_WARN"
.LASF560:
	.string	"OP_SHMGET"
.LASF368:
	.string	"OP_INT"
.LASF582:
	.string	"OP_GNETENT"
.LASF549:
	.string	"OP_GETPPID"
.LASF372:
	.string	"OP_LENGTH"
.LASF293:
	.string	"OP_MATCH"
.LASF183:
	.string	"xcv_padlist"
.LASF517:
	.string	"OP_FTPIPE"
.LASF781:
	.string	"dumpops"
.LASF14:
	.string	"__gnuc_va_list"
.LASF748:
	.string	"substr"
.LASF643:
	.string	"blku_loop"
.LASF681:
	.string	"nomethod_amg"
.LASF356:
	.string	"OP_NEGATE"
.LASF89:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF413:
	.string	"OP_REVERSE"
.LASF595:
	.string	"OP_EPROTOENT"
.LASF371:
	.string	"OP_ABS"
.LASF233:
	.string	"PerlIO"
.LASF654:
	.string	"sbu_s"
.LASF831:
	.string	"PL_vtbl_sig"
.LASF585:
	.string	"OP_GPROTOENT"
.LASF677:
	.string	"float"
.LASF821:
	.string	"PL_defstash"
.LASF636:
	.string	"itersave"
.LASF132:
	.string	"xpvuv"
.LASF67:
	.string	"sv_any"
.LASF406:
	.string	"OP_ANONHASH"
.LASF337:
	.string	"OP_I_LE"
.LASF605:
	.string	"OP_SGRENT"
.LASF623:
	.string	"block_eval"
.LASF333:
	.string	"OP_I_LT"
.LASF714:
	.string	"slt_amg"
.LASF424:
	.string	"OP_COND_EXPR"
.LASF518:
	.string	"OP_FTLINK"
.LASF87:
	.string	"reganch"
.LASF226:
	.string	"stashes"
.LASF452:
	.string	"OP_EXIT"
.LASF73:
	.string	"endp"
.LASF324:
	.string	"OP_ADD"
.LASF568:
	.string	"OP_SEMGET"
.LASF295:
	.string	"OP_SUBST"
.LASF418:
	.string	"OP_RANGE"
.LASF264:
	.string	"OP_SCALAR"
.LASF808:
	.string	"PL_main_root"
.LASF591:
	.string	"OP_SPROTOENT"
.LASF566:
	.string	"OP_MSGSND"
.LASF835:
	.string	"PL_vtbl_dbline"
.LASF391:
	.string	"OP_EACH"
.LASF563:
	.string	"OP_SHMWRITE"
.LASF392:
	.string	"OP_VALUES"
.LASF414:
	.string	"OP_GREPSTART"
.LASF11:
	.string	"size_t"
.LASF281:
	.string	"OP_PROTOTYPE"
.LASF787:
	.string	"Perl_do_sv_dump"
.LASF144:
	.string	"xlv_targlen"
.LASF343:
	.string	"OP_I_NE"
.LASF785:
	.string	"Perl_do_gv_dump"
.LASF286:
	.string	"OP_BACKTICK"
.LASF834:
	.string	"PL_vtbl_packelem"
.LASF425:
	.string	"OP_ANDASSIGN"
.LASF254:
	.string	"SVt_PVGV"
.LASF642:
	.string	"blku_eval"
.LASF80:
	.string	"sublen"
.LASF440:
	.string	"OP_LEAVE"
.LASF150:
	.string	"xav_fill"
.LASF526:
	.string	"OP_CHOWN"
.LASF680:
	.string	"bool__amg"
.LASF633:
	.string	"next_op"
.LASF500:
	.string	"OP_FTREXEC"
.LASF116:
	.string	"mg_moremagic"
.LASF531:
	.string	"OP_RENAME"
.LASF656:
	.string	"sbu_strend"
.LASF35:
	.string	"cop_arybase"
.LASF19:
	.string	"va_list"
.LASF374:
	.string	"OP_VEC"
.LASF665:
	.string	"si_cxmax"
.LASF467:
	.string	"OP_READ"
.LASF435:
	.string	"OP_LINESEQ"
.LASF122:
	.string	"mg_ptr"
.LASF461:
	.string	"OP_TIED"
.LASF312:
	.string	"OP_POSTINC"
.LASF810:
	.string	"PL_profiledata"
.LASF640:
	.string	"itermax"
.LASF399:
	.string	"OP_UNPACK"
.LASF556:
	.string	"OP_LOCALTIME"
.LASF205:
	.string	"xio_subprocess"
.LASF749:
	.string	"utf8_substr"
.LASF515:
	.string	"OP_FTFILE"
.LASF78:
	.string	"subbeg"
.LASF72:
	.string	"startp"
.LASF738:
	.string	"to_hv_amg"
.LASF758:
	.string	"entry"
.LASF602:
	.string	"OP_GGRNAM"
.LASF772:
	.string	"Perl_do_pmop_dump"
.LASF853:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF326:
	.string	"OP_SUBTRACT"
.LASF502:
	.string	"OP_FTEWRITE"
.LASF739:
	.string	"to_gv_amg"
.LASF528:
	.string	"OP_UNLINK"
.LASF71:
	.string	"regexp"
.LASF611:
	.string	"OP_SETSTATE"
.LASF448:
	.string	"OP_NEXT"
.LASF483:
	.string	"OP_IOCTL"
.LASF851:
	.string	"PL_vtbl_backref"
.LASF70:
	.string	"REGEXP"
.LASF68:
	.string	"sv_refcnt"
.LASF443:
	.string	"OP_ITER"
.LASF520:
	.string	"OP_FTSGID"
.LASF275:
	.string	"OP_PUSHRE"
.LASF693:
	.string	"modulo_ass_amg"
.LASF273:
	.string	"OP_PADHV"
.LASF543:
	.string	"OP_FORK"
.LASF212:
	.string	"svt_len"
.LASF246:
	.string	"SVt_PVIV"
.LASF236:
	.string	"next_off"
.LASF437:
	.string	"OP_DBSTATE"
.LASF29:
	.string	"op_flags"
.LASF780:
	.string	"maxnest"
.LASF832:
	.string	"PL_vtbl_sigelem"
.LASF801:
	.string	"addr"
.LASF37:
	.string	"cop_warnings"
.LASF670:
	.string	"PERL_SI"
.LASF75:
	.string	"substrs"
.LASF598:
	.string	"OP_GPWUID"
.LASF774:
	.string	"Perl_pmop_dump"
.LASF306:
	.string	"OP_STUDY"
.LASF373:
	.string	"OP_SUBSTR"
.LASF110:
	.string	"blku_oldscopesp"
.LASF251:
	.string	"SVt_PVAV"
.LASF579:
	.string	"OP_GHOSTENT"
.LASF664:
	.string	"si_cxix"
.LASF158:
	.string	"xhv_array"
.LASF581:
	.string	"OP_GNBYADDR"
.LASF695:
	.string	"pow_ass_amg"
.LASF79:
	.string	"offsets"
.LASF718:
	.string	"seq_amg"
.LASF407:
	.string	"OP_SPLICE"
.LASF352:
	.string	"OP_SCMP"
.LASF539:
	.string	"OP_TELLDIR"
.LASF203:
	.string	"xio_bottom_name"
.LASF353:
	.string	"OP_BIT_AND"
.LASF752:
	.string	"file"
.LASF249:
	.string	"SVt_PVBM"
.LASF802:
	.string	"Perl_debprofdump"
.LASF678:
	.string	"fallback_amg"
.LASF812:
	.string	"PL_sv_undef"
.LASF114:
	.string	"MAGIC"
.LASF840:
	.string	"PL_vtbl_nkeys"
.LASF31:
	.string	"cop_label"
.LASF120:
	.string	"mg_flags"
.LASF628:
	.string	"cur_text"
.LASF147:
	.string	"XPVAV"
.LASF57:
	.string	"svop"
.LASF253:
	.string	"SVt_PVCV"
.LASF309:
	.string	"OP_I_PREINC"
.LASF83:
	.string	"prelen"
.LASF822:
	.string	"PL_curcop"
.LASF415:
	.string	"OP_GREPWHILE"
.LASF449:
	.string	"OP_REDO"
.LASF26:
	.string	"op_targ"
.LASF308:
	.string	"OP_PREINC"
.LASF61:
	.string	"op_redoop"
.LASF204:
	.string	"xio_bottom_gv"
.LASF305:
	.string	"OP_UNDEF"
.LASF358:
	.string	"OP_NOT"
.LASF456:
	.string	"OP_FILENO"
.LASF109:
	.string	"blku_oldmarksp"
.LASF421:
	.string	"OP_AND"
.LASF573:
	.string	"OP_ENTEREVAL"
.LASF804:
	.string	"PL_op_name"
.LASF85:
	.string	"lastparen"
.LASF703:
	.string	"bor_ass_amg"
.LASF173:
	.string	"XPVCV"
.LASF638:
	.string	"iterary"
.LASF355:
	.string	"OP_BIT_OR"
.LASF786:
	.string	"Perl_do_gvgv_dump"
.LASF490:
	.string	"OP_ACCEPT"
.LASF462:
	.string	"OP_DBMOPEN"
.LASF607:
	.string	"OP_GETLOGIN"
.LASF9:
	.string	"__ssize_t"
.LASF238:
	.string	"reg_data"
.LASF201:
	.string	"xio_fmt_name"
.LASF673:
	.string	"hent_val"
.LASF438:
	.string	"OP_UNSTACK"
.LASF136:
	.string	"xnv_nv"
.LASF671:
	.string	"hent_next"
.LASF480:
	.string	"OP_SEEK"
.LASF698:
	.string	"rshift_amg"
.LASF146:
	.string	"xlv_type"
.LASF214:
	.string	"svt_free"
.LASF54:
	.string	"op_pmdynflags"
.LASF741:
	.string	"iter_amg"
.LASF716:
	.string	"sgt_amg"
.LASF255:
	.string	"SVt_PVFM"
.LASF410:
	.string	"OP_SHIFT"
.LASF436:
	.string	"OP_NEXTSTATE"
.LASF225:
	.string	"clone_params"
.LASF843:
	.string	"PL_vtbl_vec"
.LASF604:
	.string	"OP_GGRENT"
.LASF705:
	.string	"bxor_ass_amg"
.LASF345:
	.string	"OP_I_NCMP"
.LASF323:
	.string	"OP_REPEAT"
.LASF383:
	.string	"OP_LCFIRST"
.LASF764:
	.string	"truncated"
.LASF522:
	.string	"OP_FTTTY"
.LASF328:
	.string	"OP_CONCAT"
.LASF471:
	.string	"OP_PRINT"
.LASF655:
	.string	"sbu_m"
.LASF184:
	.string	"xcv_outside"
.LASF260:
	.string	"PADLIST"
.LASF223:
	.string	"any_dxptr"
.LASF411:
	.string	"OP_UNSHIFT"
.LASF172:
	.string	"xgv_flags"
.LASF115:
	.string	"magic"
.LASF187:
	.string	"XPVFM"
.LASF554:
	.string	"OP_TIME"
.LASF503:
	.string	"OP_FTEEXEC"
.LASF814:
	.string	"PL_sv_yes"
.LASF600:
	.string	"OP_SPWENT"
.LASF505:
	.string	"OP_FTEOWNED"
.LASF320:
	.string	"OP_I_DIVIDE"
.LASF341:
	.string	"OP_I_EQ"
.LASF252:
	.string	"SVt_PVHV"
.LASF830:
	.string	"PL_vtbl_envelem"
.LASF241:
	.string	"SVt_NULL"
.LASF816:
	.string	"PL_sig_pending"
.LASF571:
	.string	"OP_REQUIRE"
.LASF209:
	.string	"mgvtbl"
.LASF287:
	.string	"OP_GLOB"
.LASF540:
	.string	"OP_SEEKDIR"
.LASF166:
	.string	"XPVGV"
.LASF784:
	.string	"Perl_do_hv_dump"
.LASF470:
	.string	"OP_PRTF"
.LASF658:
	.string	"sbu_rx"
.LASF208:
	.string	"MGVTBL"
.LASF580:
	.string	"OP_GNBYNAME"
.LASF660:
	.string	"cx_subst"
.LASF16:
	.string	"fp_offset"
.LASF659:
	.string	"cx_blk"
.LASF256:
	.string	"SVt_PVIO"
.LASF15:
	.string	"gp_offset"
.LASF366:
	.string	"OP_LOG"
.LASF81:
	.string	"refcnt"
.LASF313:
	.string	"OP_I_POSTINC"
.LASF740:
	.string	"to_cv_amg"
.LASF650:
	.string	"sbu_rxtainted"
.LASF532:
	.string	"OP_LINK"
.LASF416:
	.string	"OP_MAPSTART"
.LASF709:
	.string	"ge_amg"
.LASF156:
	.string	"XPVHV"
.LASF431:
	.string	"OP_CALLER"
.LASF7:
	.string	"sizetype"
.LASF340:
	.string	"OP_EQ"
.LASF267:
	.string	"OP_CONST"
.LASF751:
	.string	"level"
.LASF50:
	.string	"op_pmnext"
.LASF552:
	.string	"OP_GETPRIORITY"
.LASF488:
	.string	"OP_CONNECT"
.LASF178:
	.string	"xcv_xsub"
.LASF555:
	.string	"OP_TMS"
.LASF620:
	.string	"hasargs"
.LASF430:
	.string	"OP_LEAVESUBLV"
.LASF494:
	.string	"OP_GETSOCKNAME"
.LASF30:
	.string	"op_private"
.LASF270:
	.string	"OP_GELEM"
.LASF380:
	.string	"OP_CHR"
.LASF723:
	.string	"dec_amg"
.LASF796:
	.string	"Perl_sv_dump"
.LASF217:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF329:
	.string	"OP_STRINGIFY"
.LASF547:
	.string	"OP_EXEC"
.LASF327:
	.string	"OP_I_SUBTRACT"
.LASF190:
	.string	"XPVIO"
.LASF777:
	.string	"Perl_gv_dump"
.LASF128:
	.string	"XPVIV"
.LASF153:
	.string	"xav_alloc"
.LASF268:
	.string	"OP_GVSV"
.LASF648:
	.string	"sbu_oldsave"
.LASF160:
	.string	"xhv_max"
.LASF82:
	.string	"minlen"
.LASF299:
	.string	"OP_AASSIGN"
.LASF239:
	.string	"count"
.LASF473:
	.string	"OP_SYSSEEK"
.LASF140:
	.string	"xmg_stash"
.LASF570:
	.string	"OP_SEMOP"
.LASF647:
	.string	"sbu_rflags"
.LASF757:
	.string	"stash"
.LASF74:
	.string	"regstclass"
.LASF338:
	.string	"OP_GE"
.LASF163:
	.string	"xhv_eiter"
.LASF404:
	.string	"OP_LSLICE"
.LASF468:
	.string	"OP_ENTERWRITE"
.LASF334:
	.string	"OP_GT"
.LASF269:
	.string	"OP_GV"
.LASF496:
	.string	"OP_LSTAT"
.LASF465:
	.string	"OP_SELECT"
.LASF559:
	.string	"OP_SLEEP"
.LASF250:
	.string	"SVt_PVLV"
.LASF237:
	.string	"reg_substr_data"
.LASF715:
	.string	"sle_amg"
.LASF621:
	.string	"lval"
.LASF617:
	.string	"savearray"
.LASF637:
	.string	"iterlval"
.LASF852:
	.string	"PL_vtbl_utf8"
.LASF641:
	.string	"blku_sub"
.LASF684:
	.string	"add_amg"
.LASF266:
	.string	"OP_WANTARRAY"
.LASF331:
	.string	"OP_RIGHT_SHIFT"
.LASF586:
	.string	"OP_GSBYNAME"
.LASF113:
	.string	"blk_u"
.LASF248:
	.string	"SVt_PVMG"
.LASF152:
	.string	"xof_off"
.LASF553:
	.string	"OP_SETPRIORITY"
.LASF687:
	.string	"subtr_ass_amg"
.LASF791:
	.string	"theoret"
.LASF603:
	.string	"OP_GGRGID"
.LASF170:
	.string	"xgv_namelen"
.LASF47:
	.string	"op_last"
.LASF272:
	.string	"OP_PADAV"
.LASF809:
	.string	"PL_eval_root"
.LASF231:
	.string	"__dirstream"
.LASF400:
	.string	"OP_PACK"
.LASF220:
	.string	"any_long"
.LASF141:
	.string	"XPVLV"
.LASF453:
	.string	"OP_OPEN"
.LASF819:
	.string	"PL_tmps_ix"
.LASF28:
	.string	"op_seq"
.LASF720:
	.string	"not_amg"
.LASF584:
	.string	"OP_GPBYNUMBER"
.LASF826:
	.string	"PL_watchok"
.LASF143:
	.string	"xlv_targoff"
.LASF247:
	.string	"SVt_PVNV"
.LASF45:
	.string	"PMOP"
.LASF387:
	.string	"OP_RV2AV"
.LASF535:
	.string	"OP_MKDIR"
.LASF476:
	.string	"OP_SEND"
.LASF514:
	.string	"OP_FTBLK"
.LASF86:
	.string	"lastcloseparen"
.LASF137:
	.string	"XPVMG"
.LASF679:
	.string	"abs_amg"
.LASF40:
	.string	"unop"
.LASF527:
	.string	"OP_CHROOT"
.LASF817:
	.string	"PL_op"
.LASF206:
	.string	"xio_type"
.LASF501:
	.string	"OP_FTEREAD"
.LASF745:
	.string	"reg_substr_datum"
.LASF6:
	.string	"long int"
.LASF213:
	.string	"svt_clear"
.LASF837:
	.string	"PL_vtbl_arylen"
.LASF193:
	.string	"xio_ofp"
.LASF171:
	.string	"xgv_stash"
.LASF370:
	.string	"OP_OCT"
.LASF625:
	.string	"old_op_type"
.LASF325:
	.string	"OP_I_ADD"
.LASF48:
	.string	"op_pmreplroot"
.LASF827:
	.string	"PL_sv_placeholder"
.LASF182:
	.string	"xcv_depth"
.LASF97:
	.string	"gp_cvgen"
.LASF134:
	.string	"XPVNV"
.LASF778:
	.string	"Perl_do_magic_dump"
.LASF162:
	.string	"xhv_riter"
.LASF112:
	.string	"blku_gimme"
.LASF630:
	.string	"label"
.LASF279:
	.string	"OP_RV2CV"
.LASF102:
	.string	"context"
.LASF616:
	.string	"dfoutgv"
.LASF713:
	.string	"scmp_amg"
.LASF513:
	.string	"OP_FTCHR"
.LASF813:
	.string	"PL_sv_no"
.LASF412:
	.string	"OP_SORT"
.LASF385:
	.string	"OP_LC"
.LASF336:
	.string	"OP_LE"
.LASF587:
	.string	"OP_GSBYPORT"
.LASF49:
	.string	"op_pmreplstart"
.LASF613:
	.string	"OP_CUSTOM"
.LASF332:
	.string	"OP_LT"
.LASF767:
	.string	"Perl_sv_peek"
.LASF354:
	.string	"OP_BIT_XOR"
.LASF433:
	.string	"OP_DIE"
.LASF296:
	.string	"OP_SUBSTCONT"
.LASF242:
	.string	"SVt_IV"
.LASF318:
	.string	"OP_I_MULTIPLY"
.LASF234:
	.string	"regnode"
.LASF688:
	.string	"mult_amg"
.LASF362:
	.string	"OP_COS"
.LASF775:
	.string	"Perl_do_op_dump"
.LASF24:
	.string	"op_sibling"
.LASF194:
	.string	"xio_dirpu"
.LASF793:
	.string	"keypv"
.LASF219:
	.string	"any_iv"
.LASF389:
	.string	"OP_AELEM"
.LASF164:
	.string	"xhv_pmroot"
.LASF697:
	.string	"lshift_ass_amg"
.LASF359:
	.string	"OP_COMPLEMENT"
.LASF434:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF46:
	.string	"pmop"
.LASF511:
	.string	"OP_FTCTIME"
.LASF417:
	.string	"OP_MAPWHILE"
.LASF509:
	.string	"OP_FTMTIME"
.LASF753:
	.string	"Perl_dump_indent"
.LASF401:
	.string	"OP_SPLIT"
.LASF649:
	.string	"sbu_once"
.LASF357:
	.string	"OP_I_NEGATE"
.LASF538:
	.string	"OP_READDIR"
.LASF742:
	.string	"int_amg"
.LASF64:
	.string	"PerlInterpreter"
.LASF683:
	.string	"numer_amg"
.LASF692:
	.string	"modulo_amg"
.LASF841:
	.string	"PL_vtbl_taint"
.LASF342:
	.string	"OP_NE"
.LASF729:
	.string	"sqrt_amg"
.LASF732:
	.string	"concat_amg"
.LASF578:
	.string	"OP_GHBYADDR"
.LASF839:
	.string	"PL_vtbl_mglob"
.LASF685:
	.string	"add_ass_amg"
.LASF8:
	.string	"char"
.LASF423:
	.string	"OP_XOR"
.LASF498:
	.string	"OP_FTRREAD"
.LASF618:
	.string	"argarray"
.LASF704:
	.string	"bxor_amg"
.LASF858:
	.string	"S_deb_curcv"
.LASF803:
	.string	"magic_names"
.LASF199:
	.string	"xio_top_name"
.LASF546:
	.string	"OP_SYSTEM"
.LASF123:
	.string	"mg_len"
.LASF472:
	.string	"OP_SYSOPEN"
.LASF258:
	.string	"xiou_dirp"
.LASF169:
	.string	"xgv_name"
.LASF289:
	.string	"OP_RCATLINE"
.LASF422:
	.string	"OP_OR"
.LASF314:
	.string	"OP_POSTDEC"
.LASF691:
	.string	"div_ass_amg"
.LASF615:
	.string	"block_sub"
.LASF482:
	.string	"OP_FCNTL"
.LASF833:
	.string	"PL_vtbl_pack"
.LASF847:
	.string	"PL_vtbl_uvar"
.LASF507:
	.string	"OP_FTZERO"
.LASF276:
	.string	"OP_RV2GV"
.LASF403:
	.string	"OP_LIST"
.LASF446:
	.string	"OP_RETURN"
.LASF766:
	.string	"Perl_pv_display"
.LASF195:
	.string	"xio_lines"
.LASF768:
	.string	"unref"
.LASF792:
	.string	"keysv"
.LASF794:
	.string	"hash"
.LASF504:
	.string	"OP_FTIS"
.LASF663:
	.string	"si_cxstack"
.LASF262:
	.string	"OP_NULL"
.LASF127:
	.string	"xpv_len"
.LASF770:
	.string	"finish"
.LASF27:
	.string	"op_type"
.LASF396:
	.string	"OP_RV2HV"
.LASF800:
	.string	"Perl_watch"
.LASF21:
	.string	"STRLEN"
.LASF519:
	.string	"OP_FTSUID"
.LASF811:
	.string	"PL_compcv"
.LASF294:
	.string	"OP_QR"
.LASF378:
	.string	"OP_FORMLINE"
.LASF626:
	.string	"old_namesv"
.LASF545:
	.string	"OP_WAITPID"
.LASF243:
	.string	"SVt_NV"
.LASF375:
	.string	"OP_INDEX"
.LASF363:
	.string	"OP_RAND"
.LASF376:
	.string	"OP_RINDEX"
.LASF676:
	.string	"hek_key"
.LASF593:
	.string	"OP_EHOSTENT"
.LASF322:
	.string	"OP_I_MODULO"
.LASF743:
	.string	"DESTROY_amg"
.LASF181:
	.string	"xcv_file"
.LASF859:
	.string	"S_debprof"
.LASF131:
	.string	"XPVUV"
.LASF228:
	.string	"proto_perl"
.LASF627:
	.string	"old_eval_root"
.LASF398:
	.string	"OP_HSLICE"
.LASF62:
	.string	"op_nextop"
.LASF321:
	.string	"OP_MODULO"
.LASF58:
	.string	"op_sv"
.LASF562:
	.string	"OP_SHMREAD"
.LASF516:
	.string	"OP_FTDIR"
.LASF592:
	.string	"OP_SSERVENT"
.LASF724:
	.string	"atan2_amg"
.LASF261:
	.string	"PADOFFSET"
.LASF746:
	.string	"min_offset"
.LASF52:
	.string	"op_pmflags"
.LASF240:
	.string	"what"
.LASF133:
	.string	"xuv_uv"
.LASF65:
	.string	"interpreter"
.LASF111:
	.string	"blku_oldpm"
.LASF717:
	.string	"sge_amg"
.LASF41:
	.string	"op_first"
.LASF20:
	.string	"double"
.LASF189:
	.string	"xfm_lines"
.LASF53:
	.string	"op_pmpermflags"
.LASF857:
	.string	"Perl_runops_debug"
.LASF124:
	.string	"xrv_rv"
.LASF151:
	.string	"xav_max"
.LASF10:
	.string	"ssize_t"
.LASF25:
	.string	"op_ppaddr"
.LASF610:
	.string	"OP_THREADSV"
.LASF721:
	.string	"compl_amg"
.LASF755:
	.string	"args"
.LASF218:
	.string	"any_i32"
.LASF722:
	.string	"inc_amg"
.LASF735:
	.string	"neg_amg"
.LASF245:
	.string	"SVt_PV"
.LASF33:
	.string	"cop_filegv"
.LASF221:
	.string	"any_bool"
.LASF408:
	.string	"OP_PUSH"
.LASF384:
	.string	"OP_UC"
.LASF186:
	.string	"xcv_outside_seq"
.LASF311:
	.string	"OP_I_PREDEC"
.LASF754:
	.string	"Perl_dump_vindent"
.LASF77:
	.string	"data"
.LASF487:
	.string	"OP_BIND"
.LASF594:
	.string	"OP_ENETENT"
.LASF541:
	.string	"OP_REWINDDIR"
.LASF666:
	.string	"si_type"
.LASF149:
	.string	"xav_array"
.LASF244:
	.string	"SVt_RV"
.LASF224:
	.string	"CLONE_PARAMS"
.LASF441:
	.string	"OP_SCOPE"
.LASF577:
	.string	"OP_GHBYNAME"
.LASF310:
	.string	"OP_PREDEC"
.LASF631:
	.string	"resetsp"
.LASF101:
	.string	"PERL_CONTEXT"
.LASF159:
	.string	"xhv_fill"
.LASF797:
	.string	"Perl_debop"
.LASF130:
	.string	"xiv_iv"
.LASF106:
	.string	"blku_oldsp"
.LASF696:
	.string	"lshift_amg"
.LASF544:
	.string	"OP_WAIT"
.LASF450:
	.string	"OP_DUMP"
.LASF730:
	.string	"repeat_amg"
.LASF759:
	.string	"Perl_dump_sub"
.LASF298:
	.string	"OP_SASSIGN"
.LASF807:
	.string	"PL_main_cv"
.LASF689:
	.string	"mult_ass_amg"
.LASF632:
	.string	"redo_op"
.LASF388:
	.string	"OP_AELEMFAST"
.LASF675:
	.string	"hek_len"
.LASF382:
	.string	"OP_UCFIRST"
.LASF533:
	.string	"OP_SYMLINK"
.LASF367:
	.string	"OP_SQRT"
.LASF565:
	.string	"OP_MSGCTL"
.LASF769:
	.string	"retry"
.LASF508:
	.string	"OP_FTSIZE"
.LASF12:
	.string	"long long unsigned int"
.LASF706:
	.string	"lt_amg"
.LASF478:
	.string	"OP_EOF"
.LASF634:
	.string	"last_op"
.LASF524:
	.string	"OP_FTBINARY"
.LASF497:
	.string	"OP_STAT"
.LASF397:
	.string	"OP_HELEM"
.LASF274:
	.string	"OP_PADANY"
.LASF278:
	.string	"OP_AV2ARYLEN"
.LASF484:
	.string	"OP_FLOCK"
.LASF379:
	.string	"OP_ORD"
.LASF216:
	.string	"svt_dup"
.LASF669:
	.string	"si_markoff"
.LASF265:
	.string	"OP_PUSHMARK"
.LASF763:
	.string	"pvlim"
.LASF59:
	.string	"LOOP"
.LASF572:
	.string	"OP_DOFILE"
.LASF200:
	.string	"xio_top_gv"
.LASF690:
	.string	"div_amg"
.LASF818:
	.string	"PL_tmps_stack"
.LASF795:
	.string	"outside"
.LASF394:
	.string	"OP_DELETE"
.LASF686:
	.string	"subtr_amg"
.LASF657:
	.string	"sbu_rxres"
.LASF823:
	.string	"PL_curstackinfo"
.LASF429:
	.string	"OP_LEAVESUB"
.LASF271:
	.string	"OP_PADSV"
.LASF283:
	.string	"OP_SREFGEN"
.LASF451:
	.string	"OP_GOTO"
.LASF750:
	.string	"name"
.LASF55:
	.string	"op_pmstash"
.LASF210:
	.string	"svt_get"
.LASF92:
	.string	"gp_form"
.LASF315:
	.string	"OP_I_POSTDEC"
.LASF277:
	.string	"OP_RV2SV"
.LASF107:
	.string	"blku_oldcop"
.LASF776:
	.string	"Perl_op_dump"
.LASF32:
	.string	"cop_stash"
.LASF285:
	.string	"OP_BLESS"
.LASF557:
	.string	"OP_GMTIME"
.LASF13:
	.string	"long long int"
.LASF229:
	.string	"line_t"
.LASF165:
	.string	"xhv_name"
.LASF523:
	.string	"OP_FTTEXT"
.LASF711:
	.string	"ne_amg"
.LASF662:
	.string	"si_stack"
.LASF510:
	.string	"OP_FTATIME"
.LASF215:
	.string	"svt_copy"
.LASF409:
	.string	"OP_POP"
.LASF307:
	.string	"OP_POS"
.LASF316:
	.string	"OP_POW"
.LASF442:
	.string	"OP_ENTERITER"
.LASF282:
	.string	"OP_REFGEN"
.LASF466:
	.string	"OP_GETC"
.LASF845:
	.string	"PL_vtbl_bm"
.LASF499:
	.string	"OP_FTRWRITE"
.LASF493:
	.string	"OP_SSOCKOPT"
.LASF103:
	.string	"cx_type"
.LASF56:
	.string	"SVOP"
.LASF155:
	.string	"xav_flags"
.LASF599:
	.string	"OP_GPWENT"
.LASF639:
	.string	"iterix"
.LASF589:
	.string	"OP_SHOSTENT"
.LASF60:
	.string	"loop"
.LASF447:
	.string	"OP_LAST"
.LASF139:
	.string	"xmg_magic"
.LASF393:
	.string	"OP_KEYS"
.LASF121:
	.string	"mg_obj"
.LASF576:
	.string	"OP_LEAVETRY"
.LASF222:
	.string	"any_dptr"
.LASF419:
	.string	"OP_FLIP"
.LASF736:
	.string	"to_sv_amg"
.LASF537:
	.string	"OP_OPEN_DIR"
.LASF148:
	.string	"xpvav"
.LASF761:
	.string	"Perl_dump_all"
.LASF51:
	.string	"op_pmregexp"
.LASF284:
	.string	"OP_REF"
.LASF486:
	.string	"OP_SOCKPAIR"
.LASF848:
	.string	"PL_vtbl_defelem"
.LASF583:
	.string	"OP_GPBYNAME"
.LASF179:
	.string	"xcv_xsubany"
.LASF850:
	.string	"PL_vtbl_amagicelem"
.LASF457:
	.string	"OP_UMASK"
.LASF198:
	.string	"xio_lines_left"
.LASF477:
	.string	"OP_RECV"
.LASF93:
	.string	"gp_av"
.LASF481:
	.string	"OP_TRUNCATE"
.LASF42:
	.string	"LOGOP"
.LASF455:
	.string	"OP_PIPE_OP"
.LASF601:
	.string	"OP_EPWENT"
.LASF782:
	.string	"cache"
.LASF629:
	.string	"block_loop"
.LASF280:
	.string	"OP_ANONCODE"
.LASF694:
	.string	"pow_amg"
.LASF297:
	.string	"OP_TRANS"
.LASF608:
	.string	"OP_SYSCALL"
.LASF185:
	.string	"xcv_flags"
.LASF612:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF646:
	.string	"sbu_maxiters"
.LASF174:
	.string	"xpvcv"
.LASF360:
	.string	"OP_ATAN2"
.LASF405:
	.string	"OP_ANONLIST"
.LASF825:
	.string	"PL_watchaddr"
.LASF485:
	.string	"OP_SOCKET"
.LASF789:
	.string	"pow2"
.LASF390:
	.string	"OP_ASLICE"
.LASF369:
	.string	"OP_HEX"
.LASF622:
	.string	"oldcomppad"
.LASF232:
	.string	"_PerlIO"
.LASF771:
	.string	"is_tmp"
.LASF762:
	.string	"Perl_dump_eval"
.LASF464:
	.string	"OP_SSELECT"
.LASF702:
	.string	"bor_amg"
.LASF719:
	.string	"sne_amg"
.LASF564:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF829:
	.string	"PL_vtbl_env"
.LASF96:
	.string	"gp_cv"
.LASF846:
	.string	"PL_vtbl_fm"
.LASF386:
	.string	"OP_QUOTEMETA"
.LASF550:
	.string	"OP_GETPGRP"
.LASF619:
	.string	"olddepth"
.LASF344:
	.string	"OP_NCMP"
.LASF575:
	.string	"OP_ENTERTRY"
.LASF529:
	.string	"OP_CHMOD"
.LASF779:
	.string	"nest"
.LASF365:
	.string	"OP_EXP"
.LASF381:
	.string	"OP_CRYPT"
.LASF530:
	.string	"OP_UTIME"
.LASF726:
	.string	"sin_amg"
.LASF230:
	.string	"PerlIOl"
.LASF428:
	.string	"OP_ENTERSUB"
.LASF227:
	.string	"flags"
.LASF377:
	.string	"OP_SPRINTF"
.LASF291:
	.string	"OP_REGCRESET"
.LASF773:
	.string	"tmpsv"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
