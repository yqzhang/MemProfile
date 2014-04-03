	.file	"universal.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 universal.c
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
	.string	"UNIVERSAL"
	.align 8
.LC1:
	.string	"Recursive inheritance detected in package '%s'"
.LC2:
	.string	"::ISA::CACHE::"
.LC3:
	.string	"ISA"
	.align 8
.LC4:
	.string	"Can't locate package %_ for @%s::ISA"
	.text
	.type	S_isa_lookup, @function
S_isa_lookup:
.LFB2:
	.file 1 "universal.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# stash, stash
	movq	%rsi, -112(%rbp)	# name, name
	movq	%rdx, -120(%rbp)	# name_stash, name_stash
	movl	%ecx, -124(%rbp)	# len, len
	movl	%r8d, -128(%rbp)	# level, level
	.loc 1 41 0
	movq	$0, -80(%rbp)	#, hv
	.loc 1 42 0
	movq	$0, -72(%rbp)	#, subgen
	.loc 1 46 0
	cmpq	$0, -120(%rbp)	#, name_stash
	je	.L2	#,
	.loc 1 46 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# stash, tmp126
	cmpq	-120(%rbp), %rax	# name_stash, tmp126
	jne	.L2	#,
	.loc 1 47 0 is_stmt 1
	movl	$PL_sv_yes, %eax	#, D.12791
	jmp	.L3	#
.L2:
	.loc 1 49 0
	movq	-104(%rbp), %rax	# stash, tmp127
	movq	(%rax), %rax	# stash_13(D)->sv_any, D.12792
	movq	80(%rax), %rax	# _15->xhv_name, D.12793
	movq	-112(%rbp), %rdx	# name, tmp128
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.12793,
	call	strcmp	#
	testl	%eax, %eax	# D.12794
	jne	.L4	#,
	.loc 1 50 0
	movl	$PL_sv_yes, %eax	#, D.12791
	jmp	.L3	#
.L4:
	.loc 1 52 0
	movq	-112(%rbp), %rax	# name, tmp129
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	strcmp	#
	testl	%eax, %eax	# D.12794
	jne	.L5	#,
	.loc 1 53 0
	movl	$PL_sv_yes, %eax	#, D.12791
	jmp	.L3	#
.L5:
	.loc 1 55 0
	cmpl	$100, -128(%rbp)	#, level
	jle	.L6	#,
	.loc 1 57 0
	movq	-104(%rbp), %rax	# stash, tmp130
	movq	(%rax), %rax	# stash_13(D)->sv_any, D.12792
	.loc 1 56 0
	movq	80(%rax), %rax	# _23->xhv_name, D.12793
	movq	%rax, %rsi	# D.12793,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L6:
	.loc 1 59 0
	movq	-104(%rbp), %rax	# stash, tmp131
	movl	$0, %ecx	#,
	movl	$14, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	Perl_hv_fetch	#
	movq	%rax, -56(%rbp)	# tmp132, gvp
	.loc 1 61 0
	cmpq	$0, -56(%rbp)	#, gvp
	je	.L7	#,
	.loc 1 61 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gvp, tmp133
	movq	(%rax), %rax	# *gvp_25, tmp134
	movq	%rax, -48(%rbp)	# tmp134, gv
	cmpq	$PL_sv_undef, -48(%rbp)	#, gv
	je	.L7	#,
	movq	-48(%rbp), %rax	# gv, tmp135
	movq	(%rax), %rax	# gv_26->sv_any, D.12795
	movq	56(%rax), %rax	# _27->xgv_gp, D.12796
	movq	(%rax), %rax	# _28->gp_sv, tmp136
	movq	%rax, -72(%rbp)	# tmp136, subgen
	cmpq	$0, -72(%rbp)	#, subgen
	je	.L7	#,
	.loc 1 62 0 is_stmt 1
	movq	-48(%rbp), %rax	# gv, tmp137
	movq	(%rax), %rax	# gv_26->sv_any, D.12795
	movq	56(%rax), %rax	# _30->xgv_gp, D.12796
	movq	40(%rax), %rax	# _31->gp_hv, tmp138
	movq	%rax, -80(%rbp)	# tmp138, hv
	cmpq	$0, -80(%rbp)	#, hv
	je	.L7	#,
	.loc 1 64 0
	movq	-72(%rbp), %rax	# subgen, tmp139
	movl	12(%rax), %eax	# subgen_29->sv_flags, D.12797
	andl	$65536, %eax	#, D.12797
	testl	%eax, %eax	# D.12797
	je	.L8	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# subgen, tmp140
	movq	(%rax), %rax	# subgen_29->sv_any, D.12798
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_35].xiv_iv, iftmp.0
	jmp	.L9	#
.L8:
	.loc 1 64 0 discriminator 2
	movq	-72(%rbp), %rax	# subgen, tmp141
	movq	%rax, %rdi	# tmp141,
	call	Perl_sv_2iv	#
.L9:
	.loc 1 64 0 discriminator 3
	movl	PL_sub_generation(%rip), %edx	# PL_sub_generation, PL_sub_generation.1
	movl	%edx, %edx	# PL_sub_generation.1, D.12799
	cmpq	%rdx, %rax	# D.12799, iftmp.0
	jne	.L10	#,
.LBB2:
	.loc 1 66 0 is_stmt 1
	movl	-124(%rbp), %edx	# len, tmp142
	movq	-112(%rbp), %rsi	# name, tmp143
	movq	-80(%rbp), %rax	# hv, tmp144
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp144,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp145, svp
	.loc 1 67 0
	cmpq	$0, -40(%rbp)	#, svp
	je	.L11	#,
	.loc 1 67 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp146
	movq	(%rax), %rax	# *svp_41, tmp147
	movq	%rax, -32(%rbp)	# tmp147, sv
	cmpq	$PL_sv_undef, -32(%rbp)	#, sv
	je	.L11	#,
	.loc 1 70 0 is_stmt 1
	movq	-32(%rbp), %rax	# sv, D.12791
	jmp	.L3	#
.L11:
.LBE2:
	jmp	.L7	#
.L10:
	.loc 1 76 0
	movq	-80(%rbp), %rax	# hv, tmp148
	movq	%rax, %rdi	# tmp148,
	call	Perl_hv_clear	#
	.loc 1 77 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.2
	movl	%eax, %edx	# PL_sub_generation.2, D.12799
	movq	-72(%rbp), %rax	# subgen, tmp149
	movq	%rdx, %rsi	# D.12799,
	movq	%rax, %rdi	# tmp149,
	call	Perl_sv_setiv	#
.L7:
	.loc 1 81 0
	movq	-104(%rbp), %rax	# stash, tmp150
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	Perl_hv_fetch	#
	movq	%rax, -56(%rbp)	# tmp151, gvp
	.loc 1 83 0
	cmpq	$0, -56(%rbp)	#, gvp
	je	.L12	#,
	.loc 1 83 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gvp, tmp152
	movq	(%rax), %rax	# *gvp_46, tmp153
	movq	%rax, -48(%rbp)	# tmp153, gv
	cmpq	$PL_sv_undef, -48(%rbp)	#, gv
	je	.L12	#,
	movq	-48(%rbp), %rax	# gv, tmp154
	movq	(%rax), %rax	# gv_47->sv_any, D.12795
	movq	56(%rax), %rax	# _48->xgv_gp, D.12796
	movq	32(%rax), %rax	# _49->gp_av, tmp155
	movq	%rax, -24(%rbp)	# tmp155, av
	cmpq	$0, -24(%rbp)	#, av
	je	.L12	#,
	.loc 1 84 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, hv
	je	.L13	#,
	.loc 1 84 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, subgen
	jne	.L14	#,
.L13:
	.loc 1 85 0 is_stmt 1
	movq	-104(%rbp), %rax	# stash, tmp156
	movl	$1, %ecx	#,
	movl	$14, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	Perl_hv_fetch	#
	movq	%rax, -56(%rbp)	# tmp157, gvp
	.loc 1 87 0
	movq	-56(%rbp), %rax	# gvp, tmp158
	movq	(%rax), %rax	# *gvp_51, tmp159
	movq	%rax, -48(%rbp)	# tmp159, gv
	.loc 1 89 0
	movq	-48(%rbp), %rax	# gv, tmp160
	movl	12(%rax), %eax	# gv_52->sv_flags, D.12797
	movzbl	%al, %eax	# D.12797, D.12797
	cmpl	$13, %eax	#, D.12797
	je	.L15	#,
	.loc 1 90 0
	movq	-104(%rbp), %rsi	# stash, tmp161
	movq	-48(%rbp), %rax	# gv, tmp162
	movl	$1, %r8d	#,
	movl	$14, %ecx	#,
	movl	$.LC2, %edx	#,
	movq	%rax, %rdi	# tmp162,
	call	Perl_gv_init	#
.L15:
	.loc 1 92 0
	cmpq	$0, -80(%rbp)	#, hv
	jne	.L16	#,
	.loc 1 93 0
	movq	-48(%rbp), %rax	# gv, tmp163
	movq	(%rax), %rax	# gv_52->sv_any, D.12795
	movq	56(%rax), %rax	# _55->xgv_gp, D.12796
	movq	40(%rax), %rax	# _56->gp_hv, D.12800
	testq	%rax, %rax	# D.12800
	je	.L17	#,
	.loc 1 93 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp164
	movq	(%rax), %rax	# gv_52->sv_any, D.12795
	movq	56(%rax), %rax	# _58->xgv_gp, D.12796
	movq	40(%rax), %rax	# _59->gp_hv, iftmp.3
	jmp	.L18	#
.L17:
	.loc 1 93 0 discriminator 2
	movq	-48(%rbp), %rax	# gv, tmp165
	movq	%rax, %rdi	# tmp165,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _61->sv_any, D.12795
	movq	56(%rax), %rax	# _62->xgv_gp, D.12796
	movq	40(%rax), %rax	# _63->gp_hv, iftmp.3
.L18:
	.loc 1 93 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.3, hv
.L16:
	.loc 1 94 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, subgen
	jne	.L14	#,
	.loc 1 95 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.4
	movl	%eax, %eax	# PL_sub_generation.4, D.12799
	movq	%rax, %rdi	# D.12799,
	call	Perl_newSViv	#
	movq	%rax, -72(%rbp)	# tmp166, subgen
	.loc 1 96 0
	movq	-48(%rbp), %rax	# gv, tmp167
	movq	(%rax), %rax	# gv_52->sv_any, D.12795
	movq	56(%rax), %rax	# _69->xgv_gp, D.12796
	movq	-72(%rbp), %rdx	# subgen, tmp168
	movq	%rdx, (%rax)	# tmp168, _70->gp_sv
.L14:
	.loc 1 99 0
	cmpq	$0, -80(%rbp)	#, hv
	je	.L12	#,
.LBB3:
	.loc 1 100 0
	movq	-24(%rbp), %rax	# av, tmp169
	movq	(%rax), %rax	# av_50->sv_any, D.12802
	movq	(%rax), %rax	# _71->xav_array, tmp170
	movq	%rax, -64(%rbp)	# tmp170, svp
	.loc 1 102 0
	movq	-24(%rbp), %rax	# av, tmp171
	movq	(%rax), %rax	# av_50->sv_any, D.12802
	movq	8(%rax), %rax	# _73->xav_fill, D.12799
	addl	$1, %eax	#, D.12803
	movl	%eax, -84(%rbp)	# D.12803, items
	.loc 1 103 0
	jmp	.L19	#
.L24:
.LBB4:
	.loc 1 104 0
	movq	-64(%rbp), %rax	# svp, svp.5
	leaq	8(%rax), %rdx	#, tmp172
	movq	%rdx, -64(%rbp)	# tmp172, svp
	movq	(%rax), %rax	# *svp.5_80, tmp173
	movq	%rax, -16(%rbp)	# tmp173, sv
	.loc 1 105 0
	movq	-16(%rbp), %rax	# sv, tmp174
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	Perl_gv_stashsv	#
	movq	%rax, -8(%rbp)	# tmp175, basestash
	.loc 1 106 0
	cmpq	$0, -8(%rbp)	#, basestash
	jne	.L20	#,
	.loc 1 107 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.6
	movq	80(%rax), %rax	# PL_curcop.6_84->cop_warnings, D.12791
	testq	%rax, %rax	# D.12791
	je	.L21	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.7
	movq	80(%rax), %rax	# PL_curcop.7_86->cop_warnings, D.12791
	cmpq	$32, %rax	#, D.12791
	je	.L21	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.8
	movq	80(%rax), %rax	# PL_curcop.8_88->cop_warnings, D.12791
	cmpq	$16, %rax	#, D.12791
	je	.L22	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.9
	movq	80(%rax), %rax	# PL_curcop.9_90->cop_warnings, D.12791
	movq	(%rax), %rax	# _91->sv_any, D.12798
	movq	(%rax), %rax	# MEM[(struct XPV *)_92].xpv_pv, D.12793
	addq	$3, %rax	#, D.12793
	movzbl	(%rax), %eax	# *_94, D.12804
	movsbl	%al, %eax	# D.12804, D.12794
	andl	$1, %eax	#, D.12794
	testl	%eax, %eax	# D.12794
	jne	.L22	#,
.L21:
	.loc 1 107 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.10
	movq	80(%rax), %rax	# PL_curcop.10_98->cop_warnings, D.12791
	testq	%rax, %rax	# D.12791
	jne	.L23	#,
	.loc 1 107 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.11
	movzbl	%al, %eax	# PL_dowarn.11, D.12794
	andl	$1, %eax	#, D.12794
	testl	%eax, %eax	# D.12794
	je	.L23	#,
.L22:
	.loc 1 110 0 is_stmt 1
	movq	-104(%rbp), %rax	# stash, tmp176
	movq	(%rax), %rax	# stash_13(D)->sv_any, D.12792
	.loc 1 108 0
	movq	80(%rax), %rdx	# _103->xhv_name, D.12793
	movq	-16(%rbp), %rax	# sv, tmp177
	movq	%rdx, %rcx	# D.12793,
	movq	%rax, %rdx	# tmp177,
	movl	$.LC4, %esi	#,
	movl	$28, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 111 0
	jmp	.L19	#
.L23:
	jmp	.L19	#
.L20:
	.loc 1 113 0
	movl	-128(%rbp), %eax	# level, tmp178
	leal	1(%rax), %edi	#, D.12794
	movl	-124(%rbp), %ecx	# len, tmp179
	movq	-120(%rbp), %rdx	# name_stash, tmp180
	movq	-112(%rbp), %rsi	# name, tmp181
	movq	-8(%rbp), %rax	# basestash, tmp182
	movl	%edi, %r8d	# D.12794,
	movq	%rax, %rdi	# tmp182,
	call	S_isa_lookup	#
	cmpq	$PL_sv_yes, %rax	#, D.12791
	jne	.L19	#,
	.loc 1 115 0
	movl	-124(%rbp), %edx	# len, tmp183
	movq	-112(%rbp), %rsi	# name, tmp184
	movq	-80(%rbp), %rax	# hv, tmp185
	movl	$0, %r8d	#,
	movl	$PL_sv_yes, %ecx	#,
	movq	%rax, %rdi	# tmp185,
	call	Perl_hv_store	#
	.loc 1 116 0
	movl	$PL_sv_yes, %eax	#, D.12791
	jmp	.L3	#
.L19:
.LBE4:
	.loc 1 103 0 discriminator 1
	movl	-84(%rbp), %eax	# items, items.12
	leal	-1(%rax), %edx	#, tmp186
	movl	%edx, -84(%rbp)	# tmp186, items
	testl	%eax, %eax	# items.12
	jne	.L24	#,
	.loc 1 119 0
	movl	-124(%rbp), %edx	# len, tmp187
	movq	-112(%rbp), %rsi	# name, tmp188
	movq	-80(%rbp), %rax	# hv, tmp189
	movl	$0, %r8d	#,
	movl	$PL_sv_no, %ecx	#,
	movq	%rax, %rdi	# tmp189,
	call	Perl_hv_store	#
.L12:
.LBE3:
	.loc 1 122 0
	movl	$PL_sv_no, %eax	#, D.12791
.L3:
	.loc 1 123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_isa_lookup, .-S_isa_lookup
	.globl	Perl_sv_derived_from
	.type	Perl_sv_derived_from, @function
Perl_sv_derived_from:
.LFB3:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# name, name
	.loc 1 144 0
	movq	$0, -16(%rbp)	#, stash
	.loc 1 145 0
	movq	$0, -24(%rbp)	#, type
	.loc 1 147 0
	movq	-40(%rbp), %rax	# sv, tmp74
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.12810
	andl	$8192, %eax	#, D.12810
	testl	%eax, %eax	# D.12810
	je	.L26	#,
	.loc 1 148 0
	movq	-40(%rbp), %rax	# sv, tmp75
	movq	%rax, %rdi	# tmp75,
	call	Perl_mg_get	#
.L26:
	.loc 1 150 0
	movq	-40(%rbp), %rax	# sv, tmp76
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.12810
	andl	$524288, %eax	#, D.12810
	testl	%eax, %eax	# D.12810
	je	.L27	#,
	.loc 1 151 0
	movq	-40(%rbp), %rax	# sv, tmp77
	movq	(%rax), %rax	# sv_7(D)->sv_any, D.12811
	movq	(%rax), %rax	# MEM[(struct XRV *)_12].xrv_rv, tmp78
	movq	%rax, -40(%rbp)	# tmp78, sv
	.loc 1 152 0
	movq	-40(%rbp), %rax	# sv, tmp79
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	Perl_sv_reftype	#
	movq	%rax, -24(%rbp)	# tmp80, type
	.loc 1 153 0
	movq	-40(%rbp), %rax	# sv, tmp81
	movl	12(%rax), %eax	# sv_13->sv_flags, D.12810
	andl	$4096, %eax	#, D.12810
	testl	%eax, %eax	# D.12810
	je	.L29	#,
	.loc 1 154 0
	movq	-40(%rbp), %rax	# sv, tmp82
	movq	(%rax), %rax	# sv_13->sv_any, D.12811
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_17].xmg_stash, tmp83
	movq	%rax, -16(%rbp)	# tmp83, stash
	jmp	.L29	#
.L27:
	.loc 1 157 0
	movq	-40(%rbp), %rax	# sv, tmp84
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	Perl_gv_stashsv	#
	movq	%rax, -16(%rbp)	# tmp85, stash
.L29:
	.loc 1 160 0
	movq	-48(%rbp), %rax	# name, tmp86
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	Perl_gv_stashpv	#
	movq	%rax, -8(%rbp)	# tmp87, name_stash
	.loc 1 166 0
	cmpq	$0, -24(%rbp)	#, type
	je	.L30	#,
	.loc 1 162 0
	movq	-48(%rbp), %rdx	# name, tmp88
	movq	-24(%rbp), %rax	# type, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	strcmp	#
	testl	%eax, %eax	# D.12812
	je	.L31	#,
.L30:
	.loc 1 166 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, stash
	je	.L32	#,
	.loc 1 163 0
	movq	-48(%rbp), %rax	# name, tmp90
	movq	%rax, %rdi	# tmp90,
	call	strlen	#
	movl	%eax, %ecx	# D.12813, D.12812
	movq	-8(%rbp), %rdx	# name_stash, tmp91
	movq	-48(%rbp), %rsi	# name, tmp92
	movq	-16(%rbp), %rax	# stash, tmp93
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp93,
	call	S_isa_lookup	#
	cmpq	$PL_sv_yes, %rax	#, D.12814
	jne	.L32	#,
.L31:
	.loc 1 166 0
	movl	$1, %eax	#, iftmp.13
	jmp	.L33	#
.L32:
	.loc 1 166 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.13
.L33:
	.loc 1 167 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_sv_derived_from, .-Perl_sv_derived_from
	.section	.rodata
.LC5:
	.string	"universal.c"
.LC6:
	.string	"UNIVERSAL::isa"
.LC7:
	.string	"UNIVERSAL::can"
.LC8:
	.string	"UNIVERSAL::VERSION"
.LC9:
	.string	"utf8::is_utf8"
.LC10:
	.string	"utf8::valid"
.LC11:
	.string	"utf8::encode"
.LC12:
	.string	"utf8::decode"
.LC13:
	.string	"utf8::upgrade"
.LC14:
	.string	"utf8::downgrade"
.LC15:
	.string	"utf8::native_to_unicode"
.LC16:
	.string	"utf8::unicode_to_native"
.LC17:
	.string	"Internals::SvREADONLY"
.LC18:
	.string	"\\[$%@];$"
.LC19:
	.string	"Internals::SvREFCNT"
	.align 8
.LC20:
	.string	"Internals::hv_clear_placeholders"
.LC21:
	.string	"\\%"
.LC22:
	.string	"PerlIO::get_layers"
.LC23:
	.string	"*;@"
.LC24:
	.string	"Regexp::DESTROY"
.LC25:
	.string	"Internals::hash_seed"
.LC26:
	.string	""
.LC27:
	.string	"Internals::rehash_seed"
.LC28:
	.string	"Internals::HvREHASH"
	.text
	.globl	Perl_boot_core_UNIVERSAL
	.type	Perl_boot_core_UNIVERSAL, @function
Perl_boot_core_UNIVERSAL:
.LFB4:
	.loc 1 193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 194 0
	movq	$.LC5, -8(%rbp)	#, file
	.loc 1 196 0
	movq	-8(%rbp), %rax	# file, tmp66
	movq	%rax, %rdx	# tmp66,
	movl	$XS_UNIVERSAL_isa, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_newXS	#
	.loc 1 197 0
	movq	-8(%rbp), %rax	# file, tmp67
	movq	%rax, %rdx	# tmp67,
	movl	$XS_UNIVERSAL_can, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newXS	#
	.loc 1 198 0
	movq	-8(%rbp), %rax	# file, tmp68
	movq	%rax, %rdx	# tmp68,
	movl	$XS_UNIVERSAL_VERSION, %esi	#,
	movl	$.LC8, %edi	#,
	call	Perl_newXS	#
	.loc 1 199 0
	movq	-8(%rbp), %rax	# file, tmp69
	movq	%rax, %rdx	# tmp69,
	movl	$XS_utf8_is_utf8, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_newXS	#
	.loc 1 200 0
	movq	-8(%rbp), %rax	# file, tmp70
	movq	%rax, %rdx	# tmp70,
	movl	$XS_utf8_valid, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_newXS	#
	.loc 1 201 0
	movq	-8(%rbp), %rax	# file, tmp71
	movq	%rax, %rdx	# tmp71,
	movl	$XS_utf8_encode, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_newXS	#
	.loc 1 202 0
	movq	-8(%rbp), %rax	# file, tmp72
	movq	%rax, %rdx	# tmp72,
	movl	$XS_utf8_decode, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newXS	#
	.loc 1 203 0
	movq	-8(%rbp), %rax	# file, tmp73
	movq	%rax, %rdx	# tmp73,
	movl	$XS_utf8_upgrade, %esi	#,
	movl	$.LC13, %edi	#,
	call	Perl_newXS	#
	.loc 1 204 0
	movq	-8(%rbp), %rax	# file, tmp74
	movq	%rax, %rdx	# tmp74,
	movl	$XS_utf8_downgrade, %esi	#,
	movl	$.LC14, %edi	#,
	call	Perl_newXS	#
	.loc 1 205 0
	movq	-8(%rbp), %rax	# file, tmp75
	movq	%rax, %rdx	# tmp75,
	movl	$XS_utf8_native_to_unicode, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_newXS	#
	.loc 1 206 0
	movq	-8(%rbp), %rax	# file, tmp76
	movq	%rax, %rdx	# tmp76,
	movl	$XS_utf8_unicode_to_native, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_newXS	#
	.loc 1 207 0
	movq	-8(%rbp), %rax	# file, tmp77
	movq	%rax, %rdx	# tmp77,
	movl	$XS_Internals_SvREADONLY, %esi	#,
	movl	$.LC17, %edi	#,
	call	Perl_newXS	#
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 208 0
	movq	-8(%rbp), %rax	# file, tmp78
	movq	%rax, %rdx	# tmp78,
	movl	$XS_Internals_SvREFCNT, %esi	#,
	movl	$.LC19, %edi	#,
	call	Perl_newXS	#
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 209 0
	movq	-8(%rbp), %rax	# file, tmp79
	movq	%rax, %rdx	# tmp79,
	movl	$XS_Internals_hv_clear_placehold, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_newXS	#
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 211 0
	movq	-8(%rbp), %rax	# file, tmp80
	movq	%rax, %rdx	# tmp80,
	movl	$XS_PerlIO_get_layers, %esi	#,
	movl	$.LC22, %edi	#,
	call	Perl_newXS	#
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 213 0
	movq	-8(%rbp), %rax	# file, tmp81
	movq	%rax, %rdx	# tmp81,
	movl	$XS_Regexp_DESTROY, %esi	#,
	movl	$.LC24, %edi	#,
	call	Perl_newXS	#
	.loc 1 214 0
	movq	-8(%rbp), %rax	# file, tmp82
	movq	%rax, %rdx	# tmp82,
	movl	$XS_Internals_hash_seed, %esi	#,
	movl	$.LC25, %edi	#,
	call	Perl_newXS	#
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 215 0
	movq	-8(%rbp), %rax	# file, tmp83
	movq	%rax, %rdx	# tmp83,
	movl	$XS_Internals_rehash_seed, %esi	#,
	movl	$.LC27, %edi	#,
	call	Perl_newXS	#
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 216 0
	movq	-8(%rbp), %rax	# file, tmp84
	movq	%rax, %rdx	# tmp84,
	movl	$XS_Internals_HvREHASH, %esi	#,
	movl	$.LC28, %edi	#,
	call	Perl_newXS	#
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.12816,
	call	Perl_sv_setpv	#
	.loc 1 217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_boot_core_UNIVERSAL, .-Perl_boot_core_UNIVERSAL
	.section	.rodata
	.align 8
.LC29:
	.string	"Usage: UNIVERSAL::isa(reference, kind)"
	.text
	.globl	XS_UNIVERSAL_isa
	.type	XS_UNIVERSAL_isa, @function
XS_UNIVERSAL_isa:
.LFB5:
	.loc 1 221 0
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
	.loc 1 222 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.14
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.15
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.17
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.17, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.16_6, D.12841
	cltq
	salq	$3, %rax	#, D.12842
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.18
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.19
	subq	%rax, %rdx	# PL_stack_base.20, D.12843
	movq	%rdx, %rax	# D.12843, D.12843
	sarq	$3, %rax	#, tmp153
	addl	$1, %eax	#, D.12844
	movl	%eax, -64(%rbp)	# D.12844, ax
	movq	%r12, %rdx	# sp, sp.21
	movq	%rbx, %rax	# mark, mark.22
	subq	%rax, %rdx	# mark.22, D.12843
	movq	%rdx, %rax	# D.12843, D.12843
	sarq	$3, %rax	#, tmp154
	movl	%eax, -60(%rbp)	# D.12843, items
	.loc 1 227 0
	cmpl	$2, -60(%rbp)	#, items
	je	.L37	#,
	.loc 1 228 0
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L37:
	.loc 1 230 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.23
	movl	-64(%rbp), %edx	# ax, tmp155
	movslq	%edx, %rdx	# tmp155, D.12842
	salq	$3, %rdx	#, D.12842
	addq	%rdx, %rax	# D.12842, D.12845
	movq	(%rax), %rax	# *_28, tmp156
	movq	%rax, -48(%rbp)	# tmp156, sv
	.loc 1 232 0
	movq	-48(%rbp), %rax	# sv, tmp157
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$8192, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	je	.L38	#,
	.loc 1 233 0
	movq	-48(%rbp), %rax	# sv, tmp158
	movq	%rax, %rdi	# tmp158,
	call	Perl_mg_get	#
.L38:
	.loc 1 235 0
	movq	-48(%rbp), %rax	# sv, tmp159
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$118423552, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	je	.L39	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp160
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$524288, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	jne	.L40	#,
	movq	-48(%rbp), %rax	# sv, tmp161
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$262144, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	je	.L41	#,
	.loc 1 235 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp162
	movq	(%rax), %rax	# sv_29->sv_any, D.12847
	movq	8(%rax), %rax	# MEM[(struct XPV *)_38].xpv_cur, D.12842
	testq	%rax, %rax	# D.12842
	jne	.L40	#,
.L41:
	.loc 1 236 0 is_stmt 1 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp163
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$8192, %eax	#, D.12846
	.loc 1 235 0 discriminator 1
	testl	%eax, %eax	# D.12846
	je	.L39	#,
	.loc 1 236 0
	movq	-48(%rbp), %rax	# sv, tmp164
	movl	12(%rax), %eax	# sv_29->sv_flags, D.12846
	andl	$67108864, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	je	.L39	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp165
	movq	(%rax), %rax	# sv_29->sv_any, D.12847
	movq	8(%rax), %rax	# MEM[(struct XPV *)_44].xpv_cur, D.12842
	testq	%rax, %rax	# D.12842
	jne	.L40	#,
.L39:
.LBB5:
	.loc 1 237 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.24
	movl	-64(%rbp), %edx	# ax, tmp166
	movslq	%edx, %rdx	# tmp166, D.12842
	salq	$3, %rdx	#, D.12842
	addq	%rdx, %rax	# D.12842, D.12845
	movq	$PL_sv_undef, (%rax)	#, *_96
.LBB6:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.25
	movl	-64(%rbp), %edx	# ax, tmp167
	movslq	%edx, %rcx	# tmp167, D.12848
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.26
	addq	%rcx, %rdx	# D.12848, D.12848
	salq	$3, %rdx	#, D.12848
	subq	$8, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, PL_stack_sp.27
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.27, PL_stack_sp
	jmp	.L36	#
.L40:
.LBE6:
.LBE5:
	.loc 1 239 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.29
	movl	-64(%rbp), %edx	# ax, tmp168
	movslq	%edx, %rdx	# tmp168, D.12848
	addq	$1, %rdx	#, D.12848
	salq	$3, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, D.12845
	movq	(%rax), %rax	# *_50, D.12849
	movl	12(%rax), %eax	# _51->sv_flags, D.12846
	andl	$262144, %eax	#, D.12846
	testl	%eax, %eax	# D.12846
	je	.L43	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.30
	movl	-64(%rbp), %edx	# ax, tmp169
	movslq	%edx, %rdx	# tmp169, D.12848
	addq	$1, %rdx	#, D.12848
	salq	$3, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, D.12845
	movq	(%rax), %rax	# *_58, D.12849
	movq	(%rax), %rax	# _59->sv_any, D.12847
	movq	8(%rax), %rax	# MEM[(struct XPV *)_60].xpv_cur, n_a.31
	movq	%rax, -56(%rbp)	# n_a.31, n_a
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.32
	movl	-64(%rbp), %edx	# ax, tmp170
	movslq	%edx, %rdx	# tmp170, D.12848
	addq	$1, %rdx	#, D.12848
	salq	$3, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, D.12845
	movq	(%rax), %rax	# *_66, D.12849
	movq	(%rax), %rax	# _67->sv_any, D.12847
	movq	(%rax), %rax	# MEM[(struct XPV *)_68].xpv_pv, iftmp.28
	jmp	.L44	#
.L43:
	.loc 1 239 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.33
	movl	-64(%rbp), %edx	# ax, tmp171
	movslq	%edx, %rdx	# tmp171, D.12848
	addq	$1, %rdx	#, D.12848
	salq	$3, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, D.12845
	movq	(%rax), %rax	# *_74, D.12849
	leaq	-56(%rbp), %rcx	#, tmp172
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp172,
	movq	%rax, %rdi	# D.12849,
	call	Perl_sv_2pv_flags	#
.L44:
	.loc 1 239 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.28, name
	.loc 1 241 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.34
	movl	-64(%rbp), %edx	# ax, tmp173
	movslq	%edx, %rdx	# tmp173, D.12842
	salq	$3, %rdx	#, D.12842
	leaq	(%rax,%rdx), %rbx	#, D.12845
	movq	-40(%rbp), %rdx	# name, tmp174
	movq	-48(%rbp), %rax	# sv, tmp175
	movq	%rdx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	Perl_sv_derived_from	#
	testb	%al, %al	# D.12850
	je	.L45	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.35
	jmp	.L46	#
.L45:
	.loc 1 241 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.35
.L46:
	.loc 1 241 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.35, *_81
.LBB7:
	.loc 1 242 0 is_stmt 1 discriminator 3
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.36
	movl	-64(%rbp), %edx	# ax, tmp176
	movslq	%edx, %rcx	# tmp176, D.12848
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.37
	addq	%rcx, %rdx	# D.12848, D.12848
	salq	$3, %rdx	#, D.12848
	subq	$8, %rdx	#, D.12848
	addq	%rdx, %rax	# D.12848, PL_stack_sp.38
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.38, PL_stack_sp
	nop
.L36:
.LBE7:
	.loc 1 243 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	XS_UNIVERSAL_isa, .-XS_UNIVERSAL_isa
	.section	.rodata
	.align 8
.LC30:
	.string	"Usage: UNIVERSAL::can(object-ref, method)"
	.text
	.globl	XS_UNIVERSAL_can
	.type	XS_UNIVERSAL_can, @function
XS_UNIVERSAL_can:
.LFB6:
	.loc 1 246 0
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
	.loc 1 247 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.39
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.40
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.42
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.42, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.41_8, D.12852
	cltq
	salq	$3, %rax	#, D.12853
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.43
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.44
	subq	%rax, %rdx	# PL_stack_base.45, D.12854
	movq	%rdx, %rax	# D.12854, D.12854
	sarq	$3, %rax	#, tmp163
	addl	$1, %eax	#, D.12855
	movl	%eax, -88(%rbp)	# D.12855, ax
	movq	%r12, %rdx	# sp, sp.46
	movq	%rbx, %rax	# mark, mark.47
	subq	%rax, %rdx	# mark.47, D.12854
	movq	%rdx, %rax	# D.12854, D.12854
	sarq	$3, %rax	#, tmp164
	movl	%eax, -84(%rbp)	# D.12854, items
	.loc 1 251 0
	movq	$0, -64(%rbp)	#, pkg
	.loc 1 254 0
	cmpl	$2, -84(%rbp)	#, items
	je	.L49	#,
	.loc 1 255 0
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L49:
	.loc 1 257 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.48
	movl	-88(%rbp), %edx	# ax, tmp165
	movslq	%edx, %rdx	# tmp165, D.12853
	salq	$3, %rdx	#, D.12853
	addq	%rdx, %rax	# D.12853, D.12856
	movq	(%rax), %rax	# *_31, tmp166
	movq	%rax, -56(%rbp)	# tmp166, sv
	.loc 1 259 0
	movq	-56(%rbp), %rax	# sv, tmp167
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$8192, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L50	#,
	.loc 1 260 0
	movq	-56(%rbp), %rax	# sv, tmp168
	movq	%rax, %rdi	# tmp168,
	call	Perl_mg_get	#
.L50:
	.loc 1 262 0
	movq	-56(%rbp), %rax	# sv, tmp169
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$118423552, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L51	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp170
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$524288, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	jne	.L52	#,
	movq	-56(%rbp), %rax	# sv, tmp171
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$262144, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L53	#,
	.loc 1 262 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp172
	movq	(%rax), %rax	# sv_32->sv_any, D.12858
	movq	8(%rax), %rax	# MEM[(struct XPV *)_41].xpv_cur, D.12853
	testq	%rax, %rax	# D.12853
	jne	.L52	#,
.L53:
	.loc 1 263 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp173
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$8192, %eax	#, D.12857
	.loc 1 262 0 discriminator 1
	testl	%eax, %eax	# D.12857
	je	.L51	#,
	.loc 1 263 0
	movq	-56(%rbp), %rax	# sv, tmp174
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$67108864, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L51	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp175
	movq	(%rax), %rax	# sv_32->sv_any, D.12858
	movq	8(%rax), %rax	# MEM[(struct XPV *)_47].xpv_cur, D.12853
	testq	%rax, %rax	# D.12853
	jne	.L52	#,
.L51:
.LBB8:
	.loc 1 264 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.49
	movl	-88(%rbp), %edx	# ax, tmp176
	movslq	%edx, %rdx	# tmp176, D.12853
	salq	$3, %rdx	#, D.12853
	addq	%rdx, %rax	# D.12853, D.12856
	movq	$PL_sv_undef, (%rax)	#, *_114
.LBB9:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.50
	movl	-88(%rbp), %edx	# ax, tmp177
	movslq	%edx, %rcx	# tmp177, D.12859
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.51
	addq	%rcx, %rdx	# D.12859, D.12859
	salq	$3, %rdx	#, D.12859
	subq	$8, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, PL_stack_sp.52
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.52, PL_stack_sp
	jmp	.L48	#
.L52:
.LBE9:
.LBE8:
	.loc 1 266 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.54
	movl	-88(%rbp), %edx	# ax, tmp178
	movslq	%edx, %rdx	# tmp178, D.12859
	addq	$1, %rdx	#, D.12859
	salq	$3, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, D.12856
	movq	(%rax), %rax	# *_53, D.12860
	movl	12(%rax), %eax	# _54->sv_flags, D.12857
	andl	$262144, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L55	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.55
	movl	-88(%rbp), %edx	# ax, tmp179
	movslq	%edx, %rdx	# tmp179, D.12859
	addq	$1, %rdx	#, D.12859
	salq	$3, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, D.12856
	movq	(%rax), %rax	# *_61, D.12860
	movq	(%rax), %rax	# _62->sv_any, D.12858
	movq	8(%rax), %rax	# MEM[(struct XPV *)_63].xpv_cur, n_a.56
	movq	%rax, -80(%rbp)	# n_a.56, n_a
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.57
	movl	-88(%rbp), %edx	# ax, tmp180
	movslq	%edx, %rdx	# tmp180, D.12859
	addq	$1, %rdx	#, D.12859
	salq	$3, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, D.12856
	movq	(%rax), %rax	# *_69, D.12860
	movq	(%rax), %rax	# _70->sv_any, D.12858
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, iftmp.53
	jmp	.L56	#
.L55:
	.loc 1 266 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.58
	movl	-88(%rbp), %edx	# ax, tmp181
	movslq	%edx, %rdx	# tmp181, D.12859
	addq	$1, %rdx	#, D.12859
	salq	$3, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, D.12856
	movq	(%rax), %rax	# *_77, D.12860
	leaq	-80(%rbp), %rcx	#, tmp182
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp182,
	movq	%rax, %rdi	# D.12860,
	call	Perl_sv_2pv_flags	#
.L56:
	.loc 1 266 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.53, name
	.loc 1 267 0 is_stmt 1 discriminator 3
	movq	$PL_sv_undef, -72(%rbp)	#, rv
	.loc 1 269 0 discriminator 3
	movq	-56(%rbp), %rax	# sv, tmp183
	movl	12(%rax), %eax	# sv_32->sv_flags, D.12857
	andl	$524288, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L57	#,
	.loc 1 270 0
	movq	-56(%rbp), %rax	# sv, tmp184
	movq	(%rax), %rax	# sv_32->sv_any, D.12858
	movq	(%rax), %rax	# MEM[(struct XRV *)_84].xrv_rv, tmp185
	movq	%rax, -56(%rbp)	# tmp185, sv
	.loc 1 271 0
	movq	-56(%rbp), %rax	# sv, tmp186
	movl	12(%rax), %eax	# sv_85->sv_flags, D.12857
	andl	$4096, %eax	#, D.12857
	testl	%eax, %eax	# D.12857
	je	.L59	#,
	.loc 1 272 0
	movq	-56(%rbp), %rax	# sv, tmp187
	movq	(%rax), %rax	# sv_85->sv_any, D.12858
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_88].xmg_stash, tmp188
	movq	%rax, -64(%rbp)	# tmp188, pkg
	jmp	.L59	#
.L57:
	.loc 1 275 0
	movq	-56(%rbp), %rax	# sv, tmp189
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	Perl_gv_stashsv	#
	movq	%rax, -64(%rbp)	# tmp190, pkg
.L59:
	.loc 1 278 0
	cmpq	$0, -64(%rbp)	#, pkg
	je	.L60	#,
.LBB10:
	.loc 1 279 0
	movq	-48(%rbp), %rcx	# name, tmp191
	movq	-64(%rbp), %rax	# pkg, tmp192
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	Perl_gv_fetchmethod_autoload	#
	movq	%rax, -40(%rbp)	# tmp193, gv
	.loc 1 280 0
	cmpq	$0, -40(%rbp)	#, gv
	je	.L60	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp194
	movl	12(%rax), %eax	# gv_91->sv_flags, D.12857
	movzbl	%al, %eax	# D.12857, D.12857
	cmpl	$13, %eax	#, D.12857
	jne	.L60	#,
	.loc 1 281 0 is_stmt 1
	movq	-40(%rbp), %rax	# gv, tmp195
	movq	(%rax), %rax	# gv_91->sv_any, D.12861
	movq	56(%rax), %rax	# _94->xgv_gp, D.12862
	movq	56(%rax), %rax	# _95->gp_cv, D.12863
	movq	%rax, %rdi	# D.12863,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.12860,
	call	Perl_sv_2mortal	#
	movq	%rax, -72(%rbp)	# tmp196, rv
.L60:
.LBE10:
	.loc 1 284 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.59
	movl	-88(%rbp), %edx	# ax, tmp197
	movslq	%edx, %rdx	# tmp197, D.12853
	salq	$3, %rdx	#, D.12853
	addq	%rax, %rdx	# PL_stack_base.59, D.12856
	movq	-72(%rbp), %rax	# rv, tmp198
	movq	%rax, (%rdx)	# tmp198, *_102
.LBB11:
	.loc 1 285 0
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.60
	movl	-88(%rbp), %edx	# ax, tmp199
	movslq	%edx, %rcx	# tmp199, D.12859
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.61
	addq	%rcx, %rdx	# D.12859, D.12859
	salq	$3, %rdx	#, D.12859
	subq	$8, %rdx	#, D.12859
	addq	%rdx, %rax	# D.12859, PL_stack_sp.62
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.62, PL_stack_sp
	nop
.L48:
.LBE11:
	.loc 1 286 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	XS_UNIVERSAL_can, .-XS_UNIVERSAL_can
	.section	.rodata
	.align 8
.LC31:
	.string	"Cannot find version of an unblessed reference"
.LC32:
	.string	"VERSION"
.LC33:
	.string	"(undef)"
	.align 8
.LC34:
	.string	"%s does not define $%s::VERSION--version check failed"
	.align 8
.LC35:
	.string	"%s defines neither package nor VERSION--version check failed"
	.align 8
.LC36:
	.string	"%s v%vd required--this is only v%vd"
	.align 8
.LC37:
	.string	"%s version %s required--this is only version %s"
	.text
	.globl	XS_UNIVERSAL_VERSION
	.type	XS_UNIVERSAL_VERSION, @function
XS_UNIVERSAL_VERSION:
.LFB7:
	.loc 1 289 0
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
	movq	%rdi, -136(%rbp)	# cv, cv
	.loc 1 290 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.63
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.64
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.66
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.66, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.65_16, D.12865
	cltq
	salq	$3, %rax	#, D.12866
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.67
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.68
	subq	%rax, %rdx	# PL_stack_base.69, D.12867
	movq	%rdx, %rax	# D.12867, D.12867
	sarq	$3, %rax	#, tmp216
	addl	$1, %eax	#, D.12868
	movl	%eax, -120(%rbp)	# D.12868, ax
	movq	%r12, %rdx	# sp, sp.70
	movq	%rbx, %rax	# mark, mark.71
	subq	%rax, %rdx	# mark.71, D.12867
	movq	%rdx, %rax	# D.12867, D.12867
	sarq	$3, %rax	#, tmp217
	movl	%eax, -116(%rbp)	# D.12867, items
	.loc 1 297 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	movl	-120(%rbp), %edx	# ax, tmp218
	movslq	%edx, %rdx	# tmp218, D.12866
	salq	$3, %rdx	#, D.12866
	addq	%rdx, %rax	# D.12866, D.12869
	movq	(%rax), %rax	# *_38, D.12870
	movl	12(%rax), %eax	# _39->sv_flags, D.12871
	andl	$524288, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L63	#,
	.loc 1 298 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.73
	movl	-120(%rbp), %edx	# ax, tmp219
	movslq	%edx, %rdx	# tmp219, D.12866
	salq	$3, %rdx	#, D.12866
	addq	%rdx, %rax	# D.12866, D.12869
	movq	(%rax), %rax	# *_45, D.12870
	movq	(%rax), %rax	# _46->sv_any, D.12872
	movq	(%rax), %rax	# MEM[(struct XRV *)_47].xrv_rv, tmp220
	movq	%rax, -96(%rbp)	# tmp220, sv
	.loc 1 299 0
	movq	-96(%rbp), %rax	# sv, tmp221
	movl	12(%rax), %eax	# sv_48->sv_flags, D.12871
	andl	$4096, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	jne	.L64	#,
	.loc 1 300 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L64:
	.loc 1 301 0
	movq	-96(%rbp), %rax	# sv, tmp222
	movq	(%rax), %rax	# sv_48->sv_any, D.12872
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_51].xmg_stash, tmp223
	movq	%rax, -104(%rbp)	# tmp223, pkg
	jmp	.L65	#
.L63:
	.loc 1 304 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.74
	movl	-120(%rbp), %edx	# ax, tmp224
	movslq	%edx, %rdx	# tmp224, D.12866
	salq	$3, %rdx	#, D.12866
	addq	%rdx, %rax	# D.12866, D.12869
	movq	(%rax), %rax	# *_56, D.12870
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12870,
	call	Perl_gv_stashsv	#
	movq	%rax, -104(%rbp)	# tmp225, pkg
.L65:
	.loc 1 307 0
	cmpq	$0, -104(%rbp)	#, pkg
	je	.L66	#,
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# pkg, tmp226
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	Perl_hv_fetch	#
	jmp	.L67	#
.L66:
	.loc 1 307 0 discriminator 2
	movl	$0, %eax	#, iftmp.75
.L67:
	.loc 1 307 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.75, gvp
	.loc 1 309 0 is_stmt 1 discriminator 3
	cmpq	$0, -72(%rbp)	#, gvp
	je	.L68	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gvp, tmp227
	movq	(%rax), %rax	# *gvp_61, tmp228
	movq	%rax, -64(%rbp)	# tmp228, gv
	movq	-64(%rbp), %rax	# gv, tmp229
	movl	12(%rax), %eax	# gv_62->sv_flags, D.12871
	movzbl	%al, %eax	# D.12871, D.12871
	cmpl	$13, %eax	#, D.12871
	jne	.L68	#,
	movq	-64(%rbp), %rax	# gv, tmp230
	movq	(%rax), %rax	# gv_62->sv_any, D.12873
	movq	56(%rax), %rax	# _65->xgv_gp, D.12874
	movq	(%rax), %rax	# _66->gp_sv, tmp231
	movq	%rax, -96(%rbp)	# tmp231, sv
	movq	-96(%rbp), %rax	# sv, tmp232
	movl	12(%rax), %eax	# sv_67->sv_flags, D.12871
	andl	$118423552, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L68	#,
.LBB12:
	.loc 1 310 0 is_stmt 1 discriminator 1
	call	Perl_sv_newmortal	#
	movq	%rax, -56(%rbp)	# tmp233, nsv
	.loc 1 311 0 discriminator 1
	movq	-96(%rbp), %rcx	# sv, tmp234
	movq	-56(%rbp), %rax	# nsv, tmp235
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
	call	Perl_sv_setsv_flags	#
	.loc 1 312 0 discriminator 1
	movq	-56(%rbp), %rax	# nsv, tmp236
	movq	%rax, -96(%rbp)	# tmp236, sv
	.loc 1 313 0 discriminator 1
	movq	$0, -88(%rbp)	#, undef
.LBE12:
	.loc 1 309 0 discriminator 1
	jmp	.L69	#
.L68:
	.loc 1 316 0
	movq	$PL_sv_undef, -96(%rbp)	#, sv
	.loc 1 317 0
	movq	$.LC33, -88(%rbp)	#, undef
.L69:
	.loc 1 320 0
	cmpl	$1, -116(%rbp)	#, items
	jle	.L70	#,
.LBB13:
	.loc 1 322 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.76
	movl	-120(%rbp), %edx	# ax, tmp237
	movslq	%edx, %rdx	# tmp237, D.12875
	addq	$1, %rdx	#, D.12875
	salq	$3, %rdx	#, D.12875
	addq	%rdx, %rax	# D.12875, D.12869
	movq	(%rax), %rax	# *_79, tmp238
	movq	%rax, -80(%rbp)	# tmp238, req
	.loc 1 324 0
	cmpq	$0, -88(%rbp)	#, undef
	je	.L71	#,
	.loc 1 325 0
	cmpq	$0, -104(%rbp)	#, pkg
	je	.L72	#,
	.loc 1 328 0
	movq	-104(%rbp), %rax	# pkg, tmp239
	movq	(%rax), %rax	# pkg_1->sv_any, D.12876
	.loc 1 326 0
	movq	80(%rax), %rdx	# _81->xhv_name, D.12877
	.loc 1 328 0
	movq	-104(%rbp), %rax	# pkg, tmp240
	movq	(%rax), %rax	# pkg_1->sv_any, D.12876
	.loc 1 326 0
	movq	80(%rax), %rax	# _83->xhv_name, D.12877
	movq	%rax, %rsi	# D.12877,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L71	#
.L72:
.LBB14:
	.loc 1 330 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.77
	movl	-120(%rbp), %edx	# ax, tmp241
	movslq	%edx, %rdx	# tmp241, D.12866
	salq	$3, %rdx	#, D.12866
	addq	%rdx, %rax	# D.12866, D.12869
	movq	(%rax), %rax	# *_88, PL_Sv.78
	movq	%rax, PL_Sv(%rip)	# PL_Sv.78, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.80
	movl	12(%rax), %eax	# PL_Sv.80_90->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L73	#,
	.loc 1 330 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.81
	movq	(%rax), %rax	# PL_Sv.81_93->sv_any, D.12872
	movq	8(%rax), %rax	# MEM[(struct XPV *)_94].xpv_cur, len.82
	movq	%rax, -112(%rbp)	# len.82, len
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.83
	movq	(%rax), %rax	# PL_Sv.83_96->sv_any, D.12872
	movq	(%rax), %rax	# MEM[(struct XPV *)_97].xpv_pv, iftmp.79
	jmp	.L74	#
.L73:
	.loc 1 330 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.84
	leaq	-112(%rbp), %rcx	#, tmp242
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp242,
	movq	%rax, %rdi	# PL_Sv.84,
	call	Perl_sv_2pv_flags	#
.L74:
	.loc 1 330 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.79, str
	.loc 1 332 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# str, tmp243
	movq	%rax, %rsi	# tmp243,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L71:
.LBE14:
	.loc 1 336 0
	movq	-96(%rbp), %rax	# sv, tmp244
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	andl	$196608, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	jne	.L75	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# sv, tmp245
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L75	#,
.LBB15:
	.loc 1 337 0 is_stmt 1
	movq	-96(%rbp), %rax	# sv, tmp246
	movq	%rax, PL_Sv(%rip)	# tmp246, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.86
	movl	12(%rax), %eax	# PL_Sv.86_106->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L76	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.87
	movq	(%rax), %rax	# PL_Sv.87_109->sv_any, D.12872
	movq	8(%rax), %rax	# MEM[(struct XPV *)_110].xpv_cur, len.88
	movq	%rax, -112(%rbp)	# len.88, len
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.89
	movq	(%rax), %rax	# PL_Sv.89_112->sv_any, D.12872
	movq	(%rax), %rax	# MEM[(struct XPV *)_113].xpv_pv, iftmp.85
	jmp	.L77	#
.L76:
	.loc 1 337 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.90
	leaq	-112(%rbp), %rcx	#, tmp247
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp247,
	movq	%rax, %rdi	# PL_Sv.90,
	call	Perl_sv_2pv_flags	#
.L77:
	.loc 1 337 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.85, str
	.loc 1 338 0 is_stmt 1 discriminator 3
	jmp	.L78	#
.L81:
	.loc 1 339 0
	movq	-112(%rbp), %rax	# len, len.91
	subq	$1, %rax	#, len.92
	movq	%rax, -112(%rbp)	# len.92, len
	.loc 1 341 0
	movq	-112(%rbp), %rdx	# len, len.93
	movq	-40(%rbp), %rax	# str, tmp248
	addq	%rdx, %rax	# len.93, D.12877
	movzbl	(%rax), %eax	# *_122, D.12878
	cmpb	$47, %al	#, D.12878
	jle	.L79	#,
	.loc 1 341 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rdx	# len, len.94
	movq	-40(%rbp), %rax	# str, tmp249
	addq	%rdx, %rax	# len.94, D.12877
	movzbl	(%rax), %eax	# *_125, D.12878
	cmpb	$57, %al	#, D.12878
	jle	.L78	#,
.L79:
	.loc 1 341 0 discriminator 1
	movq	-112(%rbp), %rdx	# len, len.95
	movq	-40(%rbp), %rax	# str, tmp250
	addq	%rdx, %rax	# len.95, D.12877
	movzbl	(%rax), %eax	# *_128, D.12878
	cmpb	$46, %al	#, D.12878
	je	.L78	#,
	movq	-112(%rbp), %rdx	# len, len.96
	movq	-40(%rbp), %rax	# str, tmp251
	addq	%rdx, %rax	# len.96, D.12877
	movzbl	(%rax), %eax	# *_131, D.12878
	cmpb	$95, %al	#, D.12878
	je	.L78	#,
	.loc 1 342 0 is_stmt 1
	jmp	.L80	#
.L78:
	.loc 1 338 0 discriminator 1
	movq	-112(%rbp), %rax	# len, len.97
	testq	%rax, %rax	# len.97
	jne	.L81	#,
.L80:
	.loc 1 344 0
	movq	-112(%rbp), %rax	# len, len.98
	testq	%rax, %rax	# len.98
	je	.L75	#,
	.loc 1 345 0
	movq	-80(%rbp), %rax	# req, tmp252
	movl	12(%rax), %eax	# req_80->sv_flags, D.12871
	andl	$131072, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L82	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# req, tmp253
	movl	12(%rax), %eax	# req_80->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L82	#,
	.loc 1 348 0 is_stmt 1
	movq	-96(%rbp), %rdx	# sv, tmp254
	movq	-80(%rbp), %rax	# req, tmp255
	movq	%rdx, %rsi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	Perl_sv_cmp	#
	cmpl	$1, %eax	#, D.12865
	jne	.L83	#,
	.loc 1 351 0
	movq	-104(%rbp), %rax	# pkg, tmp256
	movq	(%rax), %rax	# pkg_1->sv_any, D.12876
	.loc 1 349 0
	movq	80(%rax), %rax	# _139->xhv_name, D.12877
	movq	-96(%rbp), %rcx	# sv, tmp257
	movq	-80(%rbp), %rdx	# req, tmp258
	movq	%rax, %rsi	# D.12877,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 353 0
	jmp	.L70	#
.L83:
	jmp	.L70	#
.L82:
	.loc 1 357 0
	movq	-96(%rbp), %rax	# sv, tmp259
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	movzbl	%al, %eax	# D.12871, D.12871
	cmpl	$5, %eax	#, D.12871
	ja	.L85	#,
	.loc 1 357 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# sv, tmp260
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.12878
	je	.L87	#,
.L85:
	.loc 1 357 0 discriminator 1
	nop
.L87:
	.loc 1 358 0 is_stmt 1
	movq	-96(%rbp), %rax	# sv, tmp261
	movq	(%rax), %rbx	# sv_2->sv_any, D.12872
	movq	-96(%rbp), %rax	# sv, tmp262
	movq	%rax, %rdi	# tmp262,
	call	Perl_str_to_version	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rax	# %sfp, D.12879
	movq	%rax, 32(%rbx)	# D.12879, MEM[(struct XPVNV *)_146].xnv_nv
	.loc 1 359 0
	movq	-96(%rbp), %rax	# sv, tmp263
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	andl	$-67371009, %eax	#, D.12871
	movl	%eax, %edx	# D.12871, D.12871
	movq	-96(%rbp), %rax	# sv, tmp264
	movl	%edx, 12(%rax)	# D.12871, sv_2->sv_flags
	.loc 1 360 0
	movq	-96(%rbp), %rax	# sv, tmp265
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	orl	$33685504, %eax	#, D.12871
	movl	%eax, %edx	# D.12871, D.12871
	movq	-96(%rbp), %rax	# sv, tmp266
	movl	%edx, 12(%rax)	# D.12871, sv_2->sv_flags
.L75:
.LBE15:
	.loc 1 366 0
	movq	-80(%rbp), %rax	# req, tmp267
	movl	12(%rax), %eax	# req_80->sv_flags, D.12871
	andl	$131072, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L88	#,
	.loc 1 366 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# req, tmp268
	movl	12(%rax), %eax	# req_80->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L88	#,
.LBB16:
	.loc 1 367 0 is_stmt 1
	movq	-80(%rbp), %rax	# req, tmp269
	movl	12(%rax), %eax	# req_80->sv_flags, D.12871
	andl	$131072, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L89	#,
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# req, tmp270
	movq	(%rax), %rax	# req_80->sv_any, D.12872
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_158].xnv_nv, iftmp.100
	jmp	.L90	#
.L89:
	.loc 1 367 0 discriminator 2
	movq	-80(%rbp), %rax	# req, tmp271
	movq	%rax, %rdi	# tmp271,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rax	# %sfp, iftmp.100
.L90:
	.loc 1 367 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.100, n
	.loc 1 368 0 is_stmt 1 discriminator 3
	call	Perl_sv_newmortal	#
	movq	%rax, -80(%rbp)	# tmp272, req
	.loc 1 369 0 discriminator 3
	movq	-32(%rbp), %rax	# n, tmp273
	movq	-80(%rbp), %rdx	# req, tmp274
	movq	%rax, -144(%rbp)	# tmp273, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp274,
	call	Perl_sv_setnv	#
.L88:
.LBE16:
	.loc 1 372 0
	movq	-80(%rbp), %rax	# req, tmp275
	movl	12(%rax), %eax	# req_4->sv_flags, D.12871
	andl	$131072, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L91	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# req, tmp276
	movq	(%rax), %rax	# req_4->sv_any, D.12872
	movq	32(%rax), %rbx	# MEM[(struct XPVNV *)_165].xnv_nv, iftmp.101
	jmp	.L92	#
.L91:
	.loc 1 372 0 discriminator 2
	movq	-80(%rbp), %rax	# req, tmp277
	movq	%rax, %rdi	# tmp277,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rbx	# %sfp, iftmp.101
.L92:
	.loc 1 372 0 discriminator 3
	movq	-96(%rbp), %rax	# sv, tmp278
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	andl	$131072, %eax	#, D.12871
	testl	%eax, %eax	# D.12871
	je	.L93	#,
	.loc 1 372 0 discriminator 1
	movq	-96(%rbp), %rax	# sv, tmp279
	movq	(%rax), %rax	# sv_2->sv_any, D.12872
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_170].xnv_nv, iftmp.102
	jmp	.L94	#
.L93:
	.loc 1 372 0 discriminator 2
	movq	-96(%rbp), %rax	# sv, tmp280
	movq	%rax, %rdi	# tmp280,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rax	# %sfp, iftmp.102
.L94:
	.loc 1 372 0 discriminator 3
	movq	%rbx, -144(%rbp)	# iftmp.101, %sfp
	movsd	-144(%rbp), %xmm1	# %sfp, iftmp.101
	movq	%rax, -144(%rbp)	# iftmp.102, %sfp
	movsd	-144(%rbp), %xmm2	# %sfp, iftmp.102
	ucomisd	%xmm2, %xmm1	# iftmp.102, iftmp.101
	ja	.L102	#,
	jmp	.L70	#
.L102:
	.loc 1 374 0 is_stmt 1
	movq	-96(%rbp), %rax	# sv, tmp281
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	.loc 1 373 0
	testl	%eax, %eax	# D.12871
	je	.L97	#,
	.loc 1 374 0
	movq	-96(%rbp), %rax	# sv, tmp282
	movq	(%rax), %rax	# sv_2->sv_any, D.12872
	.loc 1 373 0
	movq	(%rax), %rbx	# MEM[(struct XPV *)_175].xpv_pv, iftmp.103
	jmp	.L98	#
.L97:
	.loc 1 373 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# sv, tmp283
	movq	%rax, %rdi	# tmp283,
	call	Perl_sv_2pv_nolen	#
	movq	%rax, %rbx	#, iftmp.103
.L98:
	.loc 1 374 0 is_stmt 1 discriminator 2
	movq	-80(%rbp), %rax	# req, tmp284
	movl	12(%rax), %eax	# req_4->sv_flags, D.12871
	andl	$262144, %eax	#, D.12871
	.loc 1 373 0 discriminator 2
	testl	%eax, %eax	# D.12871
	je	.L99	#,
	.loc 1 374 0
	movq	-80(%rbp), %rax	# req, tmp285
	movq	(%rax), %rax	# req_4->sv_any, D.12872
	.loc 1 373 0
	movq	(%rax), %rax	# MEM[(struct XPV *)_180].xpv_pv, iftmp.104
	jmp	.L100	#
.L99:
	.loc 1 373 0 is_stmt 0 discriminator 3
	movq	-80(%rbp), %rax	# req, tmp286
	movq	%rax, %rdi	# tmp286,
	call	Perl_sv_2pv_nolen	#
.L100:
	.loc 1 374 0 is_stmt 1 discriminator 4
	movq	-104(%rbp), %rdx	# pkg, tmp287
	movq	(%rdx), %rdx	# pkg_1->sv_any, D.12876
	.loc 1 373 0 discriminator 4
	movq	80(%rdx), %rsi	# _183->xhv_name, D.12877
	movq	%rbx, %rcx	# iftmp.103,
	movq	%rax, %rdx	# iftmp.104,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L70:
.LBE13:
	.loc 1 378 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.105
	movl	-120(%rbp), %edx	# ax, tmp288
	movslq	%edx, %rdx	# tmp288, D.12866
	salq	$3, %rdx	#, D.12866
	addq	%rax, %rdx	# PL_stack_base.105, D.12869
	movq	-96(%rbp), %rax	# sv, tmp289
	movq	%rax, (%rdx)	# tmp289, *_188
.LBB17:
	.loc 1 380 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.106
	movl	-120(%rbp), %edx	# ax, tmp290
	movslq	%edx, %rcx	# tmp290, D.12875
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.107
	addq	%rcx, %rdx	# D.12875, D.12875
	salq	$3, %rdx	#, D.12875
	subq	$8, %rdx	#, D.12875
	addq	%rdx, %rax	# D.12875, PL_stack_sp.108
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.108, PL_stack_sp
	nop
.LBE17:
	.loc 1 381 0
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	XS_UNIVERSAL_VERSION, .-XS_UNIVERSAL_VERSION
	.section	.rodata
.LC38:
	.string	"Usage: utf8::is_utf8(sv)"
	.text
	.globl	XS_utf8_is_utf8
	.type	XS_utf8_is_utf8, @function
XS_utf8_is_utf8:
.LFB8:
	.loc 1 384 0
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
	.loc 1 385 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.109
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.110
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.112
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.112, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.111_4, D.12888
	cltq
	salq	$3, %rax	#, D.12889
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.113
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.114
	subq	%rax, %rdx	# PL_stack_base.115, D.12890
	movq	%rdx, %rax	# D.12890, D.12890
	sarq	$3, %rax	#, tmp107
	addl	$1, %eax	#, D.12891
	movl	%eax, -48(%rbp)	# D.12891, ax
	movq	%r12, %rdx	# sp, sp.116
	movq	%rbx, %rax	# mark, mark.117
	subq	%rax, %rdx	# mark.117, D.12890
	movq	%rdx, %rax	# D.12890, D.12890
	sarq	$3, %rax	#, tmp108
	movl	%eax, -44(%rbp)	# D.12890, items
	.loc 1 386 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L104	#,
	.loc 1 387 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L104:
.LBB18:
	.loc 1 389 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.118
	movl	-48(%rbp), %edx	# ax, tmp109
	movslq	%edx, %rdx	# tmp109, D.12889
	salq	$3, %rdx	#, D.12889
	addq	%rdx, %rax	# D.12889, D.12892
	movq	(%rax), %rax	# *_26, tmp110
	movq	%rax, -40(%rbp)	# tmp110, sv
	.loc 1 391 0
	movq	-40(%rbp), %rax	# sv, tmp111
	movl	12(%rax), %eax	# sv_27->sv_flags, D.12893
	andl	$536870912, %eax	#, D.12893
	testl	%eax, %eax	# D.12893
	je	.L105	#,
.LBB19:
	.loc 1 392 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.119
	movl	-48(%rbp), %edx	# ax, tmp112
	movslq	%edx, %rdx	# tmp112, D.12889
	salq	$3, %rdx	#, D.12889
	addq	%rdx, %rax	# D.12889, D.12892
	movq	$PL_sv_yes, (%rax)	#, *_33
.LBB20:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.120
	movl	-48(%rbp), %edx	# ax, tmp113
	movslq	%edx, %rcx	# tmp113, D.12894
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.121
	addq	%rcx, %rdx	# D.12894, D.12894
	salq	$3, %rdx	#, D.12894
	subq	$8, %rdx	#, D.12894
	addq	%rdx, %rax	# D.12894, PL_stack_sp.122
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.122, PL_stack_sp
	jmp	.L103	#
.L105:
.LBE20:
.LBE19:
.LBB21:
	.loc 1 394 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.123
	movl	-48(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.12889
	salq	$3, %rdx	#, D.12889
	addq	%rdx, %rax	# D.12889, D.12892
	movq	$PL_sv_no, (%rax)	#, *_45
.LBB22:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.124
	movl	-48(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rcx	# tmp115, D.12894
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.125
	addq	%rcx, %rdx	# D.12894, D.12894
	salq	$3, %rdx	#, D.12894
	subq	$8, %rdx	#, D.12894
	addq	%rdx, %rax	# D.12894, PL_stack_sp.126
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.126, PL_stack_sp
	nop
.L103:
.LBE22:
.LBE21:
.LBE18:
	.loc 1 398 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_utf8_is_utf8, .-XS_utf8_is_utf8
	.section	.rodata
.LC39:
	.string	"Usage: utf8::valid(sv)"
	.text
	.globl	XS_utf8_valid
	.type	XS_utf8_valid, @function
XS_utf8_valid:
.LFB9:
	.loc 1 401 0
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
	.loc 1 402 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.130
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.131
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.133
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.133, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.132_5, D.12896
	cltq
	salq	$3, %rax	#, D.12897
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.134
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.135
	subq	%rax, %rdx	# PL_stack_base.136, D.12898
	movq	%rdx, %rax	# D.12898, D.12898
	sarq	$3, %rax	#, tmp115
	addl	$1, %eax	#, D.12899
	movl	%eax, -64(%rbp)	# D.12899, ax
	movq	%r12, %rdx	# sp, sp.137
	movq	%rbx, %rax	# mark, mark.138
	subq	%rax, %rdx	# mark.138, D.12898
	movq	%rdx, %rax	# D.12898, D.12898
	sarq	$3, %rax	#, tmp116
	movl	%eax, -60(%rbp)	# D.12898, items
	.loc 1 403 0
	cmpl	$1, -60(%rbp)	#, items
	je	.L108	#,
	.loc 1 404 0
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L108:
.LBB23:
	.loc 1 406 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.139
	movl	-64(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.12897
	salq	$3, %rdx	#, D.12897
	addq	%rdx, %rax	# D.12897, D.12900
	movq	(%rax), %rax	# *_27, tmp118
	movq	%rax, -48(%rbp)	# tmp118, sv
.LBB24:
	.loc 1 409 0
	movq	-48(%rbp), %rax	# sv, tmp119
	movl	12(%rax), %eax	# sv_28->sv_flags, D.12901
	andl	$262144, %eax	#, D.12901
	testl	%eax, %eax	# D.12901
	je	.L109	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp120
	movq	(%rax), %rax	# sv_28->sv_any, D.12902
	movq	8(%rax), %rax	# MEM[(struct XPV *)_31].xpv_cur, len.141
	movq	%rax, -56(%rbp)	# len.141, len
	movq	-48(%rbp), %rax	# sv, tmp121
	movq	(%rax), %rax	# sv_28->sv_any, D.12902
	movq	(%rax), %rax	# MEM[(struct XPV *)_33].xpv_pv, iftmp.140
	jmp	.L110	#
.L109:
	.loc 1 409 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp122
	movq	-48(%rbp), %rax	# sv, tmp123
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	Perl_sv_2pv_flags	#
.L110:
	.loc 1 409 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.140, s
	.loc 1 410 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# sv, tmp124
	movl	12(%rax), %eax	# sv_28->sv_flags, D.12901
	andl	$536870912, %eax	#, D.12901
	testl	%eax, %eax	# D.12901
	je	.L111	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rdx	# len, len.142
	movq	-40(%rbp), %rax	# s, tmp125
	movq	%rdx, %rsi	# len.142,
	movq	%rax, %rdi	# tmp125,
	call	Perl_is_utf8_string	#
	testb	%al, %al	# D.12903
	je	.L112	#,
.L111:
.LBB25:
	.loc 1 411 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.143
	movl	-64(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rdx	# tmp126, D.12897
	salq	$3, %rdx	#, D.12897
	addq	%rdx, %rax	# D.12897, D.12900
	movq	$PL_sv_yes, (%rax)	#, *_56
.LBB26:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.144
	movl	-64(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rcx	# tmp127, D.12904
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.145
	addq	%rcx, %rdx	# D.12904, D.12904
	salq	$3, %rdx	#, D.12904
	subq	$8, %rdx	#, D.12904
	addq	%rdx, %rax	# D.12904, PL_stack_sp.146
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.146, PL_stack_sp
	jmp	.L107	#
.L112:
.LBE26:
.LBE25:
.LBB27:
	.loc 1 413 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.147
	movl	-64(%rbp), %edx	# ax, tmp128
	movslq	%edx, %rdx	# tmp128, D.12897
	salq	$3, %rdx	#, D.12897
	addq	%rdx, %rax	# D.12897, D.12900
	movq	$PL_sv_no, (%rax)	#, *_44
.LBB28:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.148
	movl	-64(%rbp), %edx	# ax, tmp129
	movslq	%edx, %rcx	# tmp129, D.12904
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.149
	addq	%rcx, %rdx	# D.12904, D.12904
	salq	$3, %rdx	#, D.12904
	subq	$8, %rdx	#, D.12904
	addq	%rdx, %rax	# D.12904, PL_stack_sp.150
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.150, PL_stack_sp
	nop
.L107:
.LBE28:
.LBE27:
.LBE24:
.LBE23:
	.loc 1 417 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	XS_utf8_valid, .-XS_utf8_valid
	.section	.rodata
.LC40:
	.string	"Usage: utf8::encode(sv)"
	.text
	.globl	XS_utf8_encode
	.type	XS_utf8_encode, @function
XS_utf8_encode:
.LFB10:
	.loc 1 420 0
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
	.loc 1 421 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.154
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.155
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.157
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.157, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.156_4, D.12906
	cltq
	salq	$3, %rax	#, D.12907
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.158
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.159
	subq	%rax, %rdx	# PL_stack_base.160, D.12908
	movq	%rdx, %rax	# D.12908, D.12908
	sarq	$3, %rax	#, tmp90
	addl	$1, %eax	#, D.12909
	movl	%eax, -40(%rbp)	# D.12909, ax
	movq	%r12, %rdx	# sp, sp.161
	movq	%rbx, %rax	# mark, mark.162
	subq	%rax, %rdx	# mark.162, D.12908
	movq	%rdx, %rax	# D.12908, D.12908
	sarq	$3, %rax	#, tmp91
	movl	%eax, -36(%rbp)	# D.12908, items
	.loc 1 422 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L116	#,
	.loc 1 423 0
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L116:
.LBB29:
	.loc 1 425 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.163
	movl	-40(%rbp), %edx	# ax, tmp92
	movslq	%edx, %rdx	# tmp92, D.12907
	salq	$3, %rdx	#, D.12907
	addq	%rdx, %rax	# D.12907, D.12910
	movq	(%rax), %rax	# *_26, tmp93
	movq	%rax, -32(%rbp)	# tmp93, sv
	.loc 1 427 0
	movq	-32(%rbp), %rax	# sv, tmp94
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_utf8_encode	#
.LBE29:
.LBB30:
	.loc 1 429 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.164
	movl	-40(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rcx	# tmp95, D.12911
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.165
	addq	%rcx, %rdx	# D.12911, D.12911
	salq	$3, %rdx	#, D.12911
	subq	$8, %rdx	#, D.12911
	addq	%rdx, %rax	# D.12911, PL_stack_sp.166
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.166, PL_stack_sp
	nop
.LBE30:
	.loc 1 430 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	XS_utf8_encode, .-XS_utf8_encode
	.section	.rodata
.LC41:
	.string	"Usage: utf8::decode(sv)"
	.text
	.globl	XS_utf8_decode
	.type	XS_utf8_decode, @function
XS_utf8_decode:
.LFB11:
	.loc 1 433 0
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
	.loc 1 434 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.167
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.168
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.170
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.170, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.169_5, D.12913
	cltq
	salq	$3, %rax	#, D.12914
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.171
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.172
	subq	%rax, %rdx	# PL_stack_base.173, D.12915
	movq	%rdx, %rax	# D.12915, D.12915
	sarq	$3, %rax	#, tmp100
	addl	$1, %eax	#, D.12916
	movl	%eax, -40(%rbp)	# D.12916, ax
	movq	%r12, %rdx	# sp, sp.174
	movq	%rbx, %rax	# mark, mark.175
	subq	%rax, %rdx	# mark.175, D.12915
	movq	%rdx, %rax	# D.12915, D.12915
	sarq	$3, %rax	#, tmp101
	movl	%eax, -36(%rbp)	# D.12915, items
	.loc 1 435 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L119	#,
	.loc 1 436 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L119:
.LBB31:
	.loc 1 438 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.176
	movl	-40(%rbp), %edx	# ax, tmp102
	movslq	%edx, %rdx	# tmp102, D.12914
	salq	$3, %rdx	#, D.12914
	addq	%rdx, %rax	# D.12914, D.12917
	movq	(%rax), %rax	# *_27, tmp103
	movq	%rax, -32(%rbp)	# tmp103, sv
	.loc 1 441 0
	movq	-32(%rbp), %rax	# sv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_utf8_decode	#
	movb	%al, -41(%rbp)	# tmp105, RETVAL
	.loc 1 442 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.177
	movl	-40(%rbp), %edx	# ax, tmp106
	movslq	%edx, %rdx	# tmp106, D.12914
	salq	$3, %rdx	#, D.12914
	addq	%rax, %rdx	# PL_stack_base.177, D.12917
	cmpb	$0, -41(%rbp)	#, RETVAL
	je	.L120	#,
	.loc 1 442 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.178
	jmp	.L121	#
.L120:
	.loc 1 442 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.178
.L121:
	.loc 1 442 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.178, *_33
	.loc 1 443 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.179
	movl	-40(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.12914
	salq	$3, %rdx	#, D.12914
	addq	%rdx, %rax	# D.12914, D.12917
	movq	(%rax), %rax	# *_39, D.12918
	movq	%rax, %rdi	# D.12918,
	call	Perl_sv_2mortal	#
.LBE31:
.LBB32:
	.loc 1 445 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.180
	movl	-40(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.12919
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.181
	addq	%rcx, %rdx	# D.12919, D.12919
	salq	$3, %rdx	#, D.12919
	subq	$8, %rdx	#, D.12919
	addq	%rdx, %rax	# D.12919, PL_stack_sp.182
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.182, PL_stack_sp
	nop
.LBE32:
	.loc 1 446 0 discriminator 3
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	XS_utf8_decode, .-XS_utf8_decode
	.section	.rodata
.LC42:
	.string	"Usage: utf8::upgrade(sv)"
	.text
	.globl	XS_utf8_upgrade
	.type	XS_utf8_upgrade, @function
XS_utf8_upgrade:
.LFB12:
	.loc 1 449 0
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
	.loc 1 450 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.183
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.184
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.186
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.186, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.185_5, D.12921
	cltq
	salq	$3, %rax	#, D.12922
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.187
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.188
	subq	%rax, %rdx	# PL_stack_base.189, D.12923
	movq	%rdx, %rax	# D.12923, D.12923
	sarq	$3, %rax	#, tmp108
	addl	$1, %eax	#, D.12924
	movl	%eax, -56(%rbp)	# D.12924, ax
	movq	%rbx, %rdx	# sp, sp.190
	movq	%r12, %rax	# mark, mark.191
	subq	%rax, %rdx	# mark.191, D.12923
	movq	%rdx, %rax	# D.12923, D.12923
	sarq	$3, %rax	#, tmp109
	movl	%eax, -52(%rbp)	# D.12923, items
	.loc 1 451 0
	cmpl	$1, -52(%rbp)	#, items
	je	.L124	#,
	.loc 1 452 0
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L124:
.LBB33:
	.loc 1 454 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.192
	movl	-56(%rbp), %edx	# ax, tmp110
	movslq	%edx, %rdx	# tmp110, D.12922
	salq	$3, %rdx	#, D.12922
	addq	%rdx, %rax	# D.12922, D.12925
	movq	(%rax), %rax	# *_27, tmp111
	movq	%rax, -48(%rbp)	# tmp111, sv
	.loc 1 456 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.194
	movzbl	37(%rax), %eax	# PL_op.194_29->op_private, D.12926
	movzbl	%al, %eax	# D.12926, D.12921
	andl	$32, %eax	#, D.12921
	testl	%eax, %eax	# D.12921
	je	.L125	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.195
	movq	PL_op(%rip), %rax	# PL_op, PL_op.196
	movq	24(%rax), %rax	# PL_op.196_34->op_targ, D.12922
	salq	$3, %rax	#, D.12922
	addq	%rdx, %rax	# PL_curpad.195, D.12925
	movq	(%rax), %rax	# *_37, iftmp.193
	jmp	.L126	#
.L125:
	.loc 1 456 0 discriminator 2
	call	Perl_sv_newmortal	#
.L126:
	.loc 1 456 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.193, targ
	.loc 1 458 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# sv, tmp112
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	%rax, -32(%rbp)	# tmp113, RETVAL
	.loc 1 459 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.197
	movl	-56(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.12922
	salq	$3, %rdx	#, D.12922
	subq	$8, %rdx	#, D.12927
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB34:
	movq	-32(%rbp), %rdx	# RETVAL, RETVAL.198
	movq	-40(%rbp), %rax	# targ, tmp115
	movq	%rdx, %rsi	# RETVAL.198,
	movq	%rax, %rdi	# tmp115,
	call	Perl_sv_setiv	#
.LBB35:
	movq	-40(%rbp), %rax	# targ, tmp116
	movl	12(%rax), %eax	# targ_40->sv_flags, D.12928
	andl	$16384, %eax	#, D.12928
	testl	%eax, %eax	# D.12928
	je	.L127	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp117
	movq	%rax, %rdi	# tmp117,
	call	Perl_mg_set	#
.L127:
	.loc 1 459 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp118
	movq	%rax, (%rbx)	# tmp118, *sp_50
.LBE35:
.LBE34:
.LBE33:
.LBB36:
	.loc 1 461 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.199
	movl	-56(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rcx	# tmp119, D.12927
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.200
	addq	%rcx, %rdx	# D.12927, D.12927
	salq	$3, %rdx	#, D.12927
	subq	$8, %rdx	#, D.12927
	addq	%rdx, %rax	# D.12927, PL_stack_sp.201
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.201, PL_stack_sp
	nop
.LBE36:
	.loc 1 462 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	XS_utf8_upgrade, .-XS_utf8_upgrade
	.section	.rodata
	.align 8
.LC43:
	.string	"Usage: utf8::downgrade(sv, failok=0)"
	.text
	.globl	XS_utf8_downgrade
	.type	XS_utf8_downgrade, @function
XS_utf8_downgrade:
.LFB13:
	.loc 1 465 0
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
	.loc 1 466 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.202
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.203
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.205
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.205, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.204_7, D.12931
	cltq
	salq	$3, %rax	#, D.12932
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.206
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.207
	subq	%rax, %rdx	# PL_stack_base.208, D.12933
	movq	%rdx, %rax	# D.12933, D.12933
	sarq	$3, %rax	#, tmp125
	addl	$1, %eax	#, D.12934
	movl	%eax, -40(%rbp)	# D.12934, ax
	movq	%r12, %rdx	# sp, sp.209
	movq	%rbx, %rax	# mark, mark.210
	subq	%rax, %rdx	# mark.210, D.12933
	movq	%rdx, %rax	# D.12933, D.12933
	sarq	$3, %rax	#, tmp126
	movl	%eax, -36(%rbp)	# D.12933, items
	.loc 1 467 0
	cmpl	$0, -36(%rbp)	#, items
	jle	.L130	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	cmpl	$2, -36(%rbp)	#, items
	jle	.L131	#,
.L130:
	.loc 1 468 0 is_stmt 1
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L131:
.LBB37:
	.loc 1 470 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.211
	movl	-40(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rdx	# tmp127, D.12932
	salq	$3, %rdx	#, D.12932
	addq	%rdx, %rax	# D.12932, D.12935
	movq	(%rax), %rax	# *_29, tmp128
	movq	%rax, -32(%rbp)	# tmp128, sv
	.loc 1 474 0
	cmpl	$1, -36(%rbp)	#, items
	jg	.L132	#,
	.loc 1 475 0
	movb	$0, -42(%rbp)	#, failok
	jmp	.L133	#
.L132:
	.loc 1 477 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.213
	movl	-40(%rbp), %edx	# ax, tmp129
	movslq	%edx, %rdx	# tmp129, D.12936
	addq	$1, %rdx	#, D.12936
	salq	$3, %rdx	#, D.12936
	addq	%rdx, %rax	# D.12936, D.12935
	movq	(%rax), %rax	# *_36, D.12937
	movl	12(%rax), %eax	# _37->sv_flags, D.12938
	andl	$65536, %eax	#, D.12938
	testl	%eax, %eax	# D.12938
	je	.L134	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.214
	movl	-40(%rbp), %edx	# ax, tmp130
	movslq	%edx, %rdx	# tmp130, D.12936
	addq	$1, %rdx	#, D.12936
	salq	$3, %rdx	#, D.12936
	addq	%rdx, %rax	# D.12936, D.12935
	movq	(%rax), %rax	# *_44, D.12937
	movq	(%rax), %rax	# _45->sv_any, D.12939
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_46].xiv_iv, D.12933
	jmp	.L135	#
.L134:
	.loc 1 477 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.215
	movl	-40(%rbp), %edx	# ax, tmp131
	movslq	%edx, %rdx	# tmp131, D.12936
	addq	$1, %rdx	#, D.12936
	salq	$3, %rdx	#, D.12936
	addq	%rdx, %rax	# D.12936, D.12935
	movq	(%rax), %rax	# *_53, D.12937
	movq	%rax, %rdi	# D.12937,
	call	Perl_sv_2iv	#
.L135:
	.loc 1 477 0 discriminator 3
	movb	%al, -42(%rbp)	# iftmp.212, failok
.L133:
	.loc 1 480 0 is_stmt 1
	movsbl	-42(%rbp), %edx	# failok, D.12931
	movq	-32(%rbp), %rax	# sv, tmp132
	movl	%edx, %esi	# D.12931,
	movq	%rax, %rdi	# tmp132,
	call	Perl_sv_utf8_downgrade	#
	movb	%al, -41(%rbp)	# tmp133, RETVAL
	.loc 1 481 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.216
	movl	-40(%rbp), %edx	# ax, tmp134
	movslq	%edx, %rdx	# tmp134, D.12932
	salq	$3, %rdx	#, D.12932
	addq	%rax, %rdx	# PL_stack_base.216, D.12935
	cmpb	$0, -41(%rbp)	#, RETVAL
	je	.L136	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.217
	jmp	.L137	#
.L136:
	.loc 1 481 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.217
.L137:
	.loc 1 481 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.217, *_63
	.loc 1 482 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.218
	movl	-40(%rbp), %edx	# ax, tmp135
	movslq	%edx, %rdx	# tmp135, D.12932
	salq	$3, %rdx	#, D.12932
	addq	%rdx, %rax	# D.12932, D.12935
	movq	(%rax), %rax	# *_69, D.12937
	movq	%rax, %rdi	# D.12937,
	call	Perl_sv_2mortal	#
.LBE37:
.LBB38:
	.loc 1 484 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.219
	movl	-40(%rbp), %edx	# ax, tmp136
	movslq	%edx, %rcx	# tmp136, D.12936
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.220
	addq	%rcx, %rdx	# D.12936, D.12936
	salq	$3, %rdx	#, D.12936
	subq	$8, %rdx	#, D.12936
	addq	%rdx, %rax	# D.12936, PL_stack_sp.221
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.221, PL_stack_sp
	nop
.LBE38:
	.loc 1 485 0 discriminator 3
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	XS_utf8_downgrade, .-XS_utf8_downgrade
	.section	.rodata
	.align 8
.LC44:
	.string	"Usage: utf8::native_to_unicode(sv)"
	.text
	.globl	XS_utf8_native_to_unicode
	.type	XS_utf8_native_to_unicode, @function
XS_utf8_native_to_unicode:
.LFB14:
	.loc 1 488 0
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
	.loc 1 489 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.222
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.223
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.225
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.225, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.224_5, D.12941
	cltq
	salq	$3, %rax	#, D.12942
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.226
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.227
	subq	%rax, %rdx	# PL_stack_base.228, D.12943
	movq	%rdx, %rax	# D.12943, D.12943
	sarq	$3, %rax	#, tmp112
	addl	$1, %eax	#, D.12944
	movl	%eax, -40(%rbp)	# D.12944, ax
	movq	%r12, %rdx	# sp, sp.229
	movq	%rbx, %rax	# mark, mark.230
	subq	%rax, %rdx	# mark.230, D.12943
	movq	%rdx, %rax	# D.12943, D.12943
	sarq	$3, %rax	#, tmp113
	movl	%eax, -36(%rbp)	# D.12943, items
	.loc 1 490 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.232
	movl	-40(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12945
	movq	(%rax), %rax	# *_27, D.12946
	movl	12(%rax), %eax	# _28->sv_flags, D.12947
	andl	$65536, %eax	#, D.12947
	testl	%eax, %eax	# D.12947
	je	.L140	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.233
	movl	-40(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12945
	movq	(%rax), %rax	# *_34, D.12946
	movq	(%rax), %rax	# _35->sv_any, D.12948
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_36].xuv_uv, iftmp.231
	jmp	.L141	#
.L140:
	.loc 1 490 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.234
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12945
	movq	(%rax), %rax	# *_41, D.12946
	movq	%rax, %rdi	# D.12946,
	call	Perl_sv_2uv	#
.L141:
	.loc 1 490 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.231, uv
	.loc 1 492 0 is_stmt 1 discriminator 3
	cmpl	$1, -36(%rbp)	#, items
	jle	.L142	#,
	.loc 1 493 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L142:
	.loc 1 495 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.235
	movl	-40(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.12942
	salq	$3, %rdx	#, D.12942
	leaq	(%rax,%rdx), %rbx	#, D.12945
	movq	-32(%rbp), %rax	# uv, uv.236
	movq	%rax, %rdi	# uv.236,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12946,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12946, *_48
.LBB39:
	.loc 1 496 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.237
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rcx	# tmp118, D.12949
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.238
	addq	%rcx, %rdx	# D.12949, D.12949
	salq	$3, %rdx	#, D.12949
	subq	$8, %rdx	#, D.12949
	addq	%rdx, %rax	# D.12949, PL_stack_sp.239
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.239, PL_stack_sp
	nop
.LBE39:
	.loc 1 497 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	XS_utf8_native_to_unicode, .-XS_utf8_native_to_unicode
	.section	.rodata
	.align 8
.LC45:
	.string	"Usage: utf8::unicode_to_native(sv)"
	.text
	.globl	XS_utf8_unicode_to_native
	.type	XS_utf8_unicode_to_native, @function
XS_utf8_unicode_to_native:
.LFB15:
	.loc 1 500 0
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
	.loc 1 501 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.240
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.241
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.243
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.243, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.242_5, D.12951
	cltq
	salq	$3, %rax	#, D.12952
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.244
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.245
	subq	%rax, %rdx	# PL_stack_base.246, D.12953
	movq	%rdx, %rax	# D.12953, D.12953
	sarq	$3, %rax	#, tmp112
	addl	$1, %eax	#, D.12954
	movl	%eax, -40(%rbp)	# D.12954, ax
	movq	%r12, %rdx	# sp, sp.247
	movq	%rbx, %rax	# mark, mark.248
	subq	%rax, %rdx	# mark.248, D.12953
	movq	%rdx, %rax	# D.12953, D.12953
	sarq	$3, %rax	#, tmp113
	movl	%eax, -36(%rbp)	# D.12953, items
	.loc 1 502 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.250
	movl	-40(%rbp), %edx	# ax, tmp114
	movslq	%edx, %rdx	# tmp114, D.12952
	salq	$3, %rdx	#, D.12952
	addq	%rdx, %rax	# D.12952, D.12955
	movq	(%rax), %rax	# *_27, D.12956
	movl	12(%rax), %eax	# _28->sv_flags, D.12957
	andl	$65536, %eax	#, D.12957
	testl	%eax, %eax	# D.12957
	je	.L145	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.251
	movl	-40(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.12952
	salq	$3, %rdx	#, D.12952
	addq	%rdx, %rax	# D.12952, D.12955
	movq	(%rax), %rax	# *_34, D.12956
	movq	(%rax), %rax	# _35->sv_any, D.12958
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_36].xuv_uv, iftmp.249
	jmp	.L146	#
.L145:
	.loc 1 502 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.252
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rdx	# tmp116, D.12952
	salq	$3, %rdx	#, D.12952
	addq	%rdx, %rax	# D.12952, D.12955
	movq	(%rax), %rax	# *_41, D.12956
	movq	%rax, %rdi	# D.12956,
	call	Perl_sv_2uv	#
.L146:
	.loc 1 502 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.249, uv
	.loc 1 504 0 is_stmt 1 discriminator 3
	cmpl	$1, -36(%rbp)	#, items
	jle	.L147	#,
	.loc 1 505 0
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L147:
	.loc 1 507 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.253
	movl	-40(%rbp), %edx	# ax, tmp117
	movslq	%edx, %rdx	# tmp117, D.12952
	salq	$3, %rdx	#, D.12952
	leaq	(%rax,%rdx), %rbx	#, D.12955
	movq	-32(%rbp), %rax	# uv, uv.254
	movq	%rax, %rdi	# uv.254,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12956,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12956, *_48
.LBB40:
	.loc 1 508 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.255
	movl	-40(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rcx	# tmp118, D.12959
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.256
	addq	%rcx, %rdx	# D.12959, D.12959
	salq	$3, %rdx	#, D.12959
	subq	$8, %rdx	#, D.12959
	addq	%rdx, %rax	# D.12959, PL_stack_sp.257
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.257, PL_stack_sp
	nop
.LBE40:
	.loc 1 509 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	XS_utf8_unicode_to_native, .-XS_utf8_unicode_to_native
	.globl	XS_Internals_SvREADONLY
	.type	XS_Internals_SvREADONLY, @function
XS_Internals_SvREADONLY:
.LFB16:
	.loc 1 512 0
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
	.loc 1 513 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.258
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.259
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.261
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.261, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.260_9, D.12961
	cltq
	salq	$3, %rax	#, D.12962
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.262
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.263
	subq	%rax, %rdx	# PL_stack_base.264, D.12963
	movq	%rdx, %rax	# D.12963, D.12963
	sarq	$3, %rax	#, tmp219
	addl	$1, %eax	#, D.12964
	movl	%eax, -72(%rbp)	# D.12964, ax
	movq	%r12, %rdx	# sp, sp.265
	movq	%rbx, %rax	# mark, mark.266
	subq	%rax, %rdx	# mark.266, D.12963
	movq	%rdx, %rax	# D.12963, D.12963
	sarq	$3, %rax	#, tmp220
	movl	%eax, -68(%rbp)	# D.12963, items
	.loc 1 514 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.267
	movl	-72(%rbp), %edx	# ax, tmp221
	movslq	%edx, %rdx	# tmp221, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	(%rax), %rax	# *_31, D.12966
	movq	(%rax), %rax	# _32->sv_any, D.12967
	movq	(%rax), %rax	# MEM[(struct XRV *)_33].xrv_rv, tmp222
	movq	%rax, -64(%rbp)	# tmp222, sv
	.loc 1 515 0
	cmpl	$1, -68(%rbp)	#, items
	jne	.L150	#,
	.loc 1 516 0
	movq	-64(%rbp), %rax	# sv, tmp223
	movl	12(%rax), %eax	# sv_34->sv_flags, D.12968
	andl	$8388608, %eax	#, D.12968
	testl	%eax, %eax	# D.12968
	je	.L151	#,
.LBB41:
	.loc 1 517 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.268
	movl	-72(%rbp), %edx	# ax, tmp224
	movslq	%edx, %rdx	# tmp224, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	$PL_sv_yes, (%rax)	#, *_40
.LBB42:
	movq	$1, -56(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.269
	movl	-72(%rbp), %edx	# ax, tmp225
	movslq	%edx, %rcx	# tmp225, D.12969
	movq	-56(%rbp), %rdx	# tmpXSoff, tmpXSoff.270
	addq	%rcx, %rdx	# D.12969, D.12969
	salq	$3, %rdx	#, D.12969
	subq	$8, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, PL_stack_sp.271
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.271, PL_stack_sp
	jmp	.L149	#
.L151:
.LBE42:
.LBE41:
.LBB43:
	.loc 1 519 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.272
	movl	-72(%rbp), %edx	# ax, tmp226
	movslq	%edx, %rdx	# tmp226, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	$PL_sv_no, (%rax)	#, *_52
.LBB44:
	movq	$1, -48(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.273
	movl	-72(%rbp), %edx	# ax, tmp227
	movslq	%edx, %rcx	# tmp227, D.12969
	movq	-48(%rbp), %rdx	# tmpXSoff, tmpXSoff.274
	addq	%rcx, %rdx	# D.12969, D.12969
	salq	$3, %rdx	#, D.12969
	subq	$8, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, PL_stack_sp.275
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.275, PL_stack_sp
	jmp	.L149	#
.L150:
.LBE44:
.LBE43:
	.loc 1 521 0
	cmpl	$2, -68(%rbp)	#, items
	jne	.L153	#,
	.loc 1 522 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.277
	movl	-72(%rbp), %edx	# ax, tmp228
	movslq	%edx, %rdx	# tmp228, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_65, D.12966
	testq	%rax, %rax	# D.12966
	je	.L154	#,
	.loc 1 522 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.279
	movl	-72(%rbp), %edx	# ax, tmp229
	movslq	%edx, %rdx	# tmp229, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_71, D.12966
	movl	12(%rax), %eax	# _72->sv_flags, D.12968
	andl	$262144, %eax	#, D.12968
	testl	%eax, %eax	# D.12968
	je	.L155	#,
	.loc 1 522 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.281
	movl	-72(%rbp), %edx	# ax, tmp230
	movslq	%edx, %rdx	# tmp230, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_79, D.12966
	movq	(%rax), %rax	# _80->sv_any, PL_Xpv.282
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.282, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.283
	testq	%rax, %rax	# PL_Xpv.283
	je	.L156	#,
	.loc 1 522 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.284
	movq	8(%rax), %rax	# PL_Xpv.284_83->xpv_cur, D.12962
	cmpq	$1, %rax	#, D.12962
	ja	.L157	#,
	.loc 1 522 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.285
	movq	8(%rax), %rax	# PL_Xpv.285_85->xpv_cur, D.12962
	testq	%rax, %rax	# D.12962
	je	.L156	#,
	.loc 1 522 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.286
	movq	(%rax), %rax	# PL_Xpv.286_87->xpv_pv, D.12970
	movzbl	(%rax), %eax	# *_88, D.12971
	cmpb	$48, %al	#, D.12971
	je	.L156	#,
.L157:
	.loc 1 522 0 discriminator 7
	movl	$1, %eax	#, iftmp.280
	jmp	.L158	#
.L156:
	.loc 1 522 0 discriminator 6
	movl	$0, %eax	#, iftmp.280
.L158:
	.loc 1 522 0 discriminator 9
	andl	$1, %eax	#, iftmp.278
	jmp	.L164	#
.L155:
	.loc 1 522 0 discriminator 4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.288
	movl	-72(%rbp), %edx	# ax, tmp231
	movslq	%edx, %rdx	# tmp231, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_97, D.12966
	movl	12(%rax), %eax	# _98->sv_flags, D.12968
	andl	$65536, %eax	#, D.12968
	testl	%eax, %eax	# D.12968
	je	.L160	#,
	.loc 1 522 0 discriminator 10
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.289
	movl	-72(%rbp), %edx	# ax, tmp232
	movslq	%edx, %rdx	# tmp232, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_105, D.12966
	movq	(%rax), %rax	# _106->sv_any, D.12967
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_107].xiv_iv, D.12963
	testq	%rax, %rax	# D.12963
	setne	%al	#, iftmp.287
	jmp	.L164	#
.L160:
	.loc 1 522 0 discriminator 11
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.291
	movl	-72(%rbp), %edx	# ax, tmp233
	movslq	%edx, %rdx	# tmp233, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_114, D.12966
	movl	12(%rax), %eax	# _115->sv_flags, D.12968
	andl	$131072, %eax	#, D.12968
	testl	%eax, %eax	# D.12968
	je	.L162	#,
	.loc 1 522 0 discriminator 12
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.292
	movl	-72(%rbp), %edx	# ax, tmp234
	movslq	%edx, %rdx	# tmp234, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_122, D.12966
	movq	(%rax), %rax	# _123->sv_any, D.12967
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_124].xnv_nv, D.12972
	xorpd	%xmm1, %xmm1	# tmp236
	ucomisd	%xmm1, %xmm0	# tmp236, D.12972
	setp	%dl	#, tmp235
	movl	$1, %eax	#, tmp238
	xorpd	%xmm1, %xmm1	# tmp237
	ucomisd	%xmm1, %xmm0	# tmp237, D.12972
	cmove	%edx, %eax	# tmp235,, iftmp.290
	jmp	.L164	#
.L162:
	.loc 1 522 0 discriminator 13
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.293
	movl	-72(%rbp), %edx	# ax, tmp239
	movslq	%edx, %rdx	# tmp239, D.12969
	addq	$1, %rdx	#, D.12969
	salq	$3, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, D.12965
	movq	(%rax), %rax	# *_131, D.12966
	movq	%rax, %rdi	# D.12966,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12971
	setne	%al	#, iftmp.290
	jmp	.L164	#
.L154:
	.loc 1 522 0 discriminator 2
	movl	$0, %eax	#, iftmp.276
.L164:
	.loc 1 522 0 discriminator 16
	testb	%al, %al	# iftmp.276
	je	.L165	#,
	.loc 1 523 0 is_stmt 1
	movq	-64(%rbp), %rax	# sv, tmp240
	movl	12(%rax), %eax	# sv_34->sv_flags, D.12968
	orl	$8388608, %eax	#, D.12968
	movl	%eax, %edx	# D.12968, D.12968
	movq	-64(%rbp), %rax	# sv, tmp241
	movl	%edx, 12(%rax)	# D.12968, sv_34->sv_flags
.LBB45:
	.loc 1 524 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.294
	movl	-72(%rbp), %edx	# ax, tmp242
	movslq	%edx, %rdx	# tmp242, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	$PL_sv_yes, (%rax)	#, *_144
.LBB46:
	movq	$1, -40(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.295
	movl	-72(%rbp), %edx	# ax, tmp243
	movslq	%edx, %rcx	# tmp243, D.12969
	movq	-40(%rbp), %rdx	# tmpXSoff, tmpXSoff.296
	addq	%rcx, %rdx	# D.12969, D.12969
	salq	$3, %rdx	#, D.12969
	subq	$8, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, PL_stack_sp.297
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.297, PL_stack_sp
	jmp	.L149	#
.L165:
.LBE46:
.LBE45:
	.loc 1 528 0
	movq	-64(%rbp), %rax	# sv, tmp244
	movl	12(%rax), %eax	# sv_34->sv_flags, D.12968
	andl	$-8388609, %eax	#, D.12968
	movl	%eax, %edx	# D.12968, D.12968
	movq	-64(%rbp), %rax	# sv, tmp245
	movl	%edx, 12(%rax)	# D.12968, sv_34->sv_flags
.LBB47:
	.loc 1 529 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.298
	movl	-72(%rbp), %edx	# ax, tmp246
	movslq	%edx, %rdx	# tmp246, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	$PL_sv_no, (%rax)	#, *_158
.LBB48:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.299
	movl	-72(%rbp), %edx	# ax, tmp247
	movslq	%edx, %rcx	# tmp247, D.12969
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.300
	addq	%rcx, %rdx	# D.12969, D.12969
	salq	$3, %rdx	#, D.12969
	subq	$8, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, PL_stack_sp.301
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.301, PL_stack_sp
	jmp	.L149	#
.L153:
.LBE48:
.LBE47:
.LBB49:
	.loc 1 532 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.302
	movl	-72(%rbp), %edx	# ax, tmp248
	movslq	%edx, %rdx	# tmp248, D.12962
	salq	$3, %rdx	#, D.12962
	addq	%rdx, %rax	# D.12962, D.12965
	movq	$PL_sv_undef, (%rax)	#, *_170
.LBB50:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.303
	movl	-72(%rbp), %edx	# ax, tmp249
	movslq	%edx, %rcx	# tmp249, D.12969
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.304
	addq	%rcx, %rdx	# D.12969, D.12969
	salq	$3, %rdx	#, D.12969
	subq	$8, %rdx	#, D.12969
	addq	%rdx, %rax	# D.12969, PL_stack_sp.305
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.305, PL_stack_sp
	nop
.L149:
.LBE50:
.LBE49:
	.loc 1 533 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	XS_Internals_SvREADONLY, .-XS_Internals_SvREADONLY
	.globl	XS_Internals_SvREFCNT
	.type	XS_Internals_SvREFCNT, @function
XS_Internals_SvREFCNT:
.LFB17:
	.loc 1 536 0
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
	.loc 1 537 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.306
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.307
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.309
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.309, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.308_5, D.12973
	cltq
	salq	$3, %rax	#, D.12974
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.310
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.311
	subq	%rax, %rdx	# PL_stack_base.312, D.12975
	movq	%rdx, %rax	# D.12975, D.12975
	sarq	$3, %rax	#, tmp151
	addl	$1, %eax	#, D.12976
	movl	%eax, -56(%rbp)	# D.12976, ax
	movq	%r12, %rdx	# sp, sp.313
	movq	%rbx, %rax	# mark, mark.314
	subq	%rax, %rdx	# mark.314, D.12975
	movq	%rdx, %rax	# D.12975, D.12975
	sarq	$3, %rax	#, tmp152
	movl	%eax, -52(%rbp)	# D.12975, items
	.loc 1 538 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.315
	movl	-56(%rbp), %edx	# ax, tmp153
	movslq	%edx, %rdx	# tmp153, D.12974
	salq	$3, %rdx	#, D.12974
	addq	%rdx, %rax	# D.12974, D.12977
	movq	(%rax), %rax	# *_27, D.12978
	movq	(%rax), %rax	# _28->sv_any, D.12979
	movq	(%rax), %rax	# MEM[(struct XRV *)_29].xrv_rv, tmp154
	movq	%rax, -48(%rbp)	# tmp154, sv
	.loc 1 539 0
	cmpl	$1, -52(%rbp)	#, items
	jne	.L167	#,
.LBB51:
	.loc 1 540 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.316
	movl	-56(%rbp), %edx	# ax, tmp155
	movslq	%edx, %rdx	# tmp155, D.12974
	salq	$3, %rdx	#, D.12974
	leaq	(%rax,%rdx), %rbx	#, D.12977
	movq	-48(%rbp), %rax	# sv, tmp156
	movl	8(%rax), %eax	# sv_30->sv_refcnt, D.12980
	subl	$1, %eax	#, D.12980
	movl	%eax, %eax	# D.12980, D.12975
	movq	%rax, %rdi	# D.12975,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12978,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12978, *_34
.LBB52:
	movq	$1, -40(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.317
	movl	-56(%rbp), %edx	# ax, tmp157
	movslq	%edx, %rcx	# tmp157, D.12981
	movq	-40(%rbp), %rdx	# tmpXSoff, tmpXSoff.318
	addq	%rcx, %rdx	# D.12981, D.12981
	salq	$3, %rdx	#, D.12981
	subq	$8, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, PL_stack_sp.319
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.319, PL_stack_sp
	jmp	.L166	#
.L167:
.LBE52:
.LBE51:
	.loc 1 541 0
	cmpl	$2, -52(%rbp)	#, items
	jne	.L169	#,
	.loc 1 543 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.321
	movl	-56(%rbp), %edx	# ax, tmp158
	movslq	%edx, %rdx	# tmp158, D.12981
	addq	$1, %rdx	#, D.12981
	salq	$3, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, D.12977
	movq	(%rax), %rax	# *_52, D.12978
	movl	12(%rax), %eax	# _53->sv_flags, D.12980
	andl	$65536, %eax	#, D.12980
	testl	%eax, %eax	# D.12980
	je	.L170	#,
	.loc 1 543 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.322
	movl	-56(%rbp), %edx	# ax, tmp159
	movslq	%edx, %rdx	# tmp159, D.12981
	addq	$1, %rdx	#, D.12981
	salq	$3, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, D.12977
	movq	(%rax), %rax	# *_60, D.12978
	movq	(%rax), %rax	# _61->sv_any, D.12979
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_62].xiv_iv, D.12975
	jmp	.L171	#
.L170:
	.loc 1 543 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.323
	movl	-56(%rbp), %edx	# ax, tmp160
	movslq	%edx, %rdx	# tmp160, D.12981
	addq	$1, %rdx	#, D.12981
	salq	$3, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, D.12977
	movq	(%rax), %rax	# *_69, D.12978
	movq	%rax, %rdi	# D.12978,
	call	Perl_sv_2iv	#
.L171:
	.loc 1 543 0 discriminator 3
	movq	-48(%rbp), %rdx	# sv, tmp161
	movl	%eax, 8(%rdx)	# iftmp.320, sv_30->sv_refcnt
.LBB53:
	.loc 1 544 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.324
	movl	-56(%rbp), %edx	# ax, tmp162
	movslq	%edx, %rdx	# tmp162, D.12974
	salq	$3, %rdx	#, D.12974
	leaq	(%rax,%rdx), %rbx	#, D.12977
	movq	-48(%rbp), %rax	# sv, tmp163
	movl	8(%rax), %eax	# sv_30->sv_refcnt, D.12980
	movl	%eax, %eax	# D.12980, D.12975
	movq	%rax, %rdi	# D.12975,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12978,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12978, *_76
.LBB54:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.325
	movl	-56(%rbp), %edx	# ax, tmp164
	movslq	%edx, %rcx	# tmp164, D.12981
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.326
	addq	%rcx, %rdx	# D.12981, D.12981
	salq	$3, %rdx	#, D.12981
	subq	$8, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, PL_stack_sp.327
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.327, PL_stack_sp
	jmp	.L166	#
.L169:
.LBE54:
.LBE53:
.LBB55:
	.loc 1 546 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.328
	movl	-56(%rbp), %edx	# ax, tmp165
	movslq	%edx, %rdx	# tmp165, D.12974
	salq	$3, %rdx	#, D.12974
	addq	%rdx, %rax	# D.12974, D.12977
	movq	$PL_sv_undef, (%rax)	#, *_92
.LBB56:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.329
	movl	-56(%rbp), %edx	# ax, tmp166
	movslq	%edx, %rcx	# tmp166, D.12981
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.330
	addq	%rcx, %rdx	# D.12981, D.12981
	salq	$3, %rdx	#, D.12981
	subq	$8, %rdx	#, D.12981
	addq	%rdx, %rax	# D.12981, PL_stack_sp.331
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.331, PL_stack_sp
	nop
.L166:
.LBE56:
.LBE55:
	.loc 1 547 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	XS_Internals_SvREFCNT, .-XS_Internals_SvREFCNT
	.section	.rodata
	.align 8
.LC47:
	.string	"Usage: UNIVERSAL::hv_clear_placeholders(hv)"
	.text
	.globl	XS_Internals_hv_clear_placehold
	.type	XS_Internals_hv_clear_placehold, @function
XS_Internals_hv_clear_placehold:
.LFB18:
	.loc 1 550 0
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
	.loc 1 551 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.332
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.333
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.335
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.335, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.334_4, D.12982
	cltq
	salq	$3, %rax	#, D.12983
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.336
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.337
	subq	%rax, %rdx	# PL_stack_base.338, D.12984
	movq	%rdx, %rax	# D.12984, D.12984
	sarq	$3, %rax	#, tmp92
	addl	$1, %eax	#, D.12985
	movl	%eax, -40(%rbp)	# D.12985, ax
	movq	%r12, %rdx	# sp, sp.339
	movq	%rbx, %rax	# mark, mark.340
	subq	%rax, %rdx	# mark.340, D.12984
	movq	%rdx, %rax	# D.12984, D.12984
	sarq	$3, %rax	#, tmp93
	movl	%eax, -36(%rbp)	# D.12984, items
	.loc 1 552 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.341
	movl	-40(%rbp), %edx	# ax, tmp94
	movslq	%edx, %rdx	# tmp94, D.12983
	salq	$3, %rdx	#, D.12983
	addq	%rdx, %rax	# D.12983, D.12986
	movq	(%rax), %rax	# *_26, D.12987
	movq	(%rax), %rax	# _27->sv_any, D.12988
	movq	(%rax), %rax	# MEM[(struct XRV *)_28].xrv_rv, tmp95
	movq	%rax, -32(%rbp)	# tmp95, hv
	.loc 1 553 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L173	#,
	.loc 1 554 0
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L173:
	.loc 1 555 0
	movq	-32(%rbp), %rax	# hv, tmp96
	movq	%rax, %rdi	# tmp96,
	call	Perl_hv_clear_placeholders	#
.LBB57:
	.loc 1 556 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.342
	movl	-40(%rbp), %edx	# ax, tmp97
	movslq	%edx, %rcx	# tmp97, D.12989
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.343
	addq	%rcx, %rdx	# D.12989, D.12989
	salq	$3, %rdx	#, D.12989
	subq	$8, %rdx	#, D.12989
	addq	%rdx, %rax	# D.12989, PL_stack_sp.344
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.344, PL_stack_sp
	nop
.LBE57:
	.loc 1 557 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	XS_Internals_hv_clear_placehold, .-XS_Internals_hv_clear_placehold
	.globl	XS_Regexp_DESTROY
	.type	XS_Regexp_DESTROY, @function
XS_Regexp_DESTROY:
.LFB19:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cv, cv
	.loc 1 562 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	XS_Regexp_DESTROY, .-XS_Regexp_DESTROY
	.section	.rodata
	.align 8
.LC48:
	.string	"Usage: PerlIO_get_layers(filehandle[,args])"
.LC49:
	.string	"input"
.LC50:
	.string	"output"
.LC51:
	.string	"details"
	.align 8
.LC52:
	.string	"get_layers: unknown argument '%s'"
.LC53:
	.string	"%_(%_)"
.LC54:
	.string	"%_"
.LC55:
	.string	"utf8"
	.text
	.globl	XS_PerlIO_get_layers
	.type	XS_PerlIO_get_layers, @function
XS_PerlIO_get_layers:
.LFB20:
	.loc 1 565 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$176, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)	# cv, cv
	.loc 1 566 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.345
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.346
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.348
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.348, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.347_51, D.12991
	cltq
	salq	$3, %rax	#, D.12992
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.349
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.350
	subq	%rax, %rdx	# PL_stack_base.351, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	sarq	$3, %rax	#, tmp326
	addl	$1, %eax	#, D.12994
	movl	%eax, -156(%rbp)	# D.12994, ax
	movq	%rbx, %rdx	# sp, sp.352
	movq	%r12, %rax	# mark, mark.353
	subq	%rax, %rdx	# mark.353, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	sarq	$3, %rax	#, tmp327
	movl	%eax, -152(%rbp)	# D.12993, items
	.loc 1 567 0
	cmpl	$0, -152(%rbp)	#, items
	jle	.L177	#,
	.loc 1 567 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# items, items.354
	andl	$1, %eax	#, D.12994
	testl	%eax, %eax	# D.12994
	jne	.L178	#,
.L177:
	.loc 1 568 0 is_stmt 1
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L178:
.LBB58:
	.loc 1 574 0
	movb	$1, -169(%rbp)	#, input
	.loc 1 575 0
	movb	$0, -168(%rbp)	#, details
	.loc 1 577 0
	cmpl	$1, -152(%rbp)	#, items
	jle	.L179	#,
.LBB59:
	.loc 1 580 0
	leaq	16(%r12), %rax	#, tmp328
	movq	%rax, -128(%rbp)	# tmp328, svp
	jmp	.L180	#
.L224:
.LBB60:
	.loc 1 581 0
	movq	-128(%rbp), %rax	# svp, tmp329
	movq	%rax, -120(%rbp)	# tmp329, varp
	.loc 1 582 0
	movq	-128(%rbp), %rax	# svp, tmp333
	addq	$8, %rax	#, tmp332
	movq	%rax, -112(%rbp)	# tmp332, valp
	.loc 1 584 0
	movq	-120(%rbp), %rax	# varp, tmp334
	movq	(%rax), %rax	# *varp_75, D.12995
	movl	12(%rax), %eax	# _77->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L181	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# varp, tmp335
	movq	(%rax), %rax	# *varp_75, D.12995
	movq	(%rax), %rax	# _80->sv_any, D.12997
	movq	8(%rax), %rax	# MEM[(struct XPV *)_81].xpv_cur, klen.356
	movq	%rax, -144(%rbp)	# klen.356, klen
	movq	-120(%rbp), %rax	# varp, tmp336
	movq	(%rax), %rax	# *varp_75, D.12995
	movq	(%rax), %rax	# _83->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XPV *)_84].xpv_pv, iftmp.355
	jmp	.L182	#
.L181:
	.loc 1 584 0 discriminator 2
	movq	-120(%rbp), %rax	# varp, tmp337
	movq	(%rax), %rax	# *varp_75, D.12995
	leaq	-144(%rbp), %rcx	#, tmp338
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp338,
	movq	%rax, %rdi	# D.12995,
	call	Perl_sv_2pv_flags	#
.L182:
	.loc 1 584 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.355, key
	.loc 1 586 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# key, tmp339
	movzbl	(%rax), %eax	# *key_88, D.12998
	movsbl	%al, %eax	# D.12998, D.12991
	cmpl	$105, %eax	#, D.12991
	je	.L184	#,
	cmpl	$111, %eax	#, D.12991
	je	.L185	#,
	cmpl	$100, %eax	#, D.12991
	je	.L186	#,
	.loc 1 586 0 is_stmt 0
	jmp	.L183	#
.L184:
	.loc 1 588 0 is_stmt 1
	movq	-144(%rbp), %rax	# klen, klen.357
	cmpq	$5, %rax	#, klen.357
	jne	.L187	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# key, tmp340
	movl	$5, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp340,
	call	memcmp	#
	testl	%eax, %eax	# D.12991
	jne	.L187	#,
	.loc 1 589 0 is_stmt 1
	movq	-112(%rbp), %rax	# valp, tmp341
	movq	(%rax), %rax	# *valp_76, D.12995
	testq	%rax, %rax	# D.12995
	je	.L188	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# valp, tmp342
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _94->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L189	#,
	.loc 1 589 0 discriminator 3
	movq	-112(%rbp), %rax	# valp, tmp343
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _97->sv_any, PL_Xpv.361
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.361, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.362
	testq	%rax, %rax	# PL_Xpv.362
	je	.L190	#,
	.loc 1 589 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.363
	movq	8(%rax), %rax	# PL_Xpv.363_100->xpv_cur, D.12992
	cmpq	$1, %rax	#, D.12992
	ja	.L191	#,
	.loc 1 589 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.364
	movq	8(%rax), %rax	# PL_Xpv.364_102->xpv_cur, D.12992
	testq	%rax, %rax	# D.12992
	je	.L190	#,
	.loc 1 589 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.365
	movq	(%rax), %rax	# PL_Xpv.365_104->xpv_pv, D.12999
	movzbl	(%rax), %eax	# *_105, D.12998
	cmpb	$48, %al	#, D.12998
	je	.L190	#,
.L191:
	.loc 1 589 0 discriminator 3
	movl	$1, %eax	#, iftmp.360
	jmp	.L192	#
.L190:
	.loc 1 589 0 discriminator 2
	movl	$0, %eax	#, iftmp.360
.L192:
	jmp	.L198	#
.L189:
	.loc 1 589 0 discriminator 4
	movq	-112(%rbp), %rax	# valp, tmp344
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _110->sv_flags, D.12996
	andl	$65536, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L194	#,
	.loc 1 589 0 discriminator 5
	movq	-112(%rbp), %rax	# valp, tmp345
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _113->sv_any, D.12997
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_114].xiv_iv, D.12993
	testq	%rax, %rax	# D.12993
	setne	%al	#, D.13000
	jmp	.L198	#
.L194:
	.loc 1 589 0 discriminator 6
	movq	-112(%rbp), %rax	# valp, tmp346
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _118->sv_flags, D.12996
	andl	$131072, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L196	#,
	.loc 1 589 0 discriminator 7
	movq	-112(%rbp), %rax	# valp, tmp347
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _121->sv_any, D.12997
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_122].xnv_nv, D.13001
	xorpd	%xmm1, %xmm1	# tmp349
	ucomisd	%xmm1, %xmm0	# tmp349, D.13001
	setp	%dl	#, tmp348
	movl	$1, %eax	#, tmp351
	xorpd	%xmm1, %xmm1	# tmp350
	ucomisd	%xmm1, %xmm0	# tmp350, D.13001
	cmove	%edx, %eax	# tmp348,, D.13000
	jmp	.L198	#
.L196:
	.loc 1 589 0 discriminator 8
	movq	-112(%rbp), %rax	# valp, tmp352
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	%rax, %rdi	# D.12995,
	call	Perl_sv_2bool	#
	jmp	.L198	#
.L188:
	.loc 1 589 0 discriminator 2
	movl	$0, %eax	#, iftmp.358
.L198:
	.loc 1 589 0 discriminator 11
	movb	%al, -169(%rbp)	# iftmp.358, input
	.loc 1 590 0 is_stmt 1 discriminator 11
	jmp	.L199	#
.L187:
	.loc 1 592 0
	jmp	.L183	#
.L185:
	.loc 1 594 0
	movq	-144(%rbp), %rax	# klen, klen.368
	cmpq	$6, %rax	#, klen.368
	jne	.L200	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# key, tmp353
	movl	$6, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp353,
	call	memcmp	#
	testl	%eax, %eax	# D.12991
	jne	.L200	#,
	.loc 1 595 0 is_stmt 1
	movq	-112(%rbp), %rax	# valp, tmp354
	movq	(%rax), %rax	# *valp_76, D.12995
	testq	%rax, %rax	# D.12995
	je	.L201	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# valp, tmp355
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _136->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L202	#,
	.loc 1 595 0 discriminator 3
	movq	-112(%rbp), %rax	# valp, tmp356
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _139->sv_any, PL_Xpv.372
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.372, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.373
	testq	%rax, %rax	# PL_Xpv.373
	je	.L203	#,
	.loc 1 595 0 discriminator 2
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.374
	movq	8(%rax), %rax	# PL_Xpv.374_142->xpv_cur, D.12992
	cmpq	$1, %rax	#, D.12992
	ja	.L204	#,
	.loc 1 595 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.375
	movq	8(%rax), %rax	# PL_Xpv.375_144->xpv_cur, D.12992
	testq	%rax, %rax	# D.12992
	je	.L203	#,
	.loc 1 595 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.376
	movq	(%rax), %rax	# PL_Xpv.376_146->xpv_pv, D.12999
	movzbl	(%rax), %eax	# *_147, D.12998
	cmpb	$48, %al	#, D.12998
	jne	.L204	#,
.L203:
	movl	$1, %eax	#, iftmp.371
	jmp	.L205	#
.L204:
	.loc 1 595 0 discriminator 4
	movl	$0, %eax	#, iftmp.371
.L205:
	jmp	.L211	#
.L202:
	movq	-112(%rbp), %rax	# valp, tmp357
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _152->sv_flags, D.12996
	andl	$65536, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L207	#,
	.loc 1 595 0 discriminator 5
	movq	-112(%rbp), %rax	# valp, tmp358
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _155->sv_any, D.12997
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_156].xiv_iv, D.12993
	testq	%rax, %rax	# D.12993
	sete	%al	#, D.13000
	jmp	.L211	#
.L207:
	.loc 1 595 0 discriminator 6
	movq	-112(%rbp), %rax	# valp, tmp359
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _160->sv_flags, D.12996
	andl	$131072, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L209	#,
	.loc 1 595 0 discriminator 7
	movq	-112(%rbp), %rax	# valp, tmp360
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _163->sv_any, D.12997
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_164].xnv_nv, D.13001
	xorpd	%xmm1, %xmm1	# tmp362
	ucomisd	%xmm1, %xmm0	# tmp362, D.13001
	setnp	%dl	#, tmp361
	movl	$0, %eax	#, tmp364
	xorpd	%xmm1, %xmm1	# tmp363
	ucomisd	%xmm1, %xmm0	# tmp363, D.13001
	cmove	%edx, %eax	# tmp361,, D.13000
	jmp	.L211	#
.L209:
	.loc 1 595 0 discriminator 8
	movq	-112(%rbp), %rax	# valp, tmp365
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	%rax, %rdi	# D.12995,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12998
	sete	%al	#, D.13000
	jmp	.L211	#
.L201:
	.loc 1 595 0 discriminator 2
	movl	$1, %eax	#, iftmp.369
.L211:
	.loc 1 595 0 discriminator 11
	movb	%al, -169(%rbp)	# iftmp.369, input
	.loc 1 596 0 is_stmt 1 discriminator 11
	jmp	.L199	#
.L200:
	.loc 1 598 0
	jmp	.L183	#
.L186:
	.loc 1 600 0
	movq	-144(%rbp), %rax	# klen, klen.379
	cmpq	$7, %rax	#, klen.379
	jne	.L212	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# key, tmp366
	movl	$7, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	memcmp	#
	testl	%eax, %eax	# D.12991
	jne	.L212	#,
	.loc 1 601 0 is_stmt 1
	movq	-112(%rbp), %rax	# valp, tmp367
	movq	(%rax), %rax	# *valp_76, D.12995
	testq	%rax, %rax	# D.12995
	je	.L213	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# valp, tmp368
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _180->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L214	#,
	.loc 1 601 0 discriminator 3
	movq	-112(%rbp), %rax	# valp, tmp369
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _183->sv_any, PL_Xpv.383
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.383, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.384
	testq	%rax, %rax	# PL_Xpv.384
	je	.L215	#,
	.loc 1 601 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.385
	movq	8(%rax), %rax	# PL_Xpv.385_186->xpv_cur, D.12992
	cmpq	$1, %rax	#, D.12992
	ja	.L216	#,
	.loc 1 601 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.386
	movq	8(%rax), %rax	# PL_Xpv.386_188->xpv_cur, D.12992
	testq	%rax, %rax	# D.12992
	je	.L215	#,
	.loc 1 601 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.387
	movq	(%rax), %rax	# PL_Xpv.387_190->xpv_pv, D.12999
	movzbl	(%rax), %eax	# *_191, D.12998
	cmpb	$48, %al	#, D.12998
	je	.L215	#,
.L216:
	.loc 1 601 0 discriminator 3
	movl	$1, %eax	#, iftmp.382
	jmp	.L217	#
.L215:
	.loc 1 601 0 discriminator 2
	movl	$0, %eax	#, iftmp.382
.L217:
	jmp	.L223	#
.L214:
	.loc 1 601 0 discriminator 4
	movq	-112(%rbp), %rax	# valp, tmp370
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _196->sv_flags, D.12996
	andl	$65536, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L219	#,
	.loc 1 601 0 discriminator 5
	movq	-112(%rbp), %rax	# valp, tmp371
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _199->sv_any, D.12997
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_200].xiv_iv, D.12993
	testq	%rax, %rax	# D.12993
	setne	%al	#, D.13000
	jmp	.L223	#
.L219:
	.loc 1 601 0 discriminator 6
	movq	-112(%rbp), %rax	# valp, tmp372
	movq	(%rax), %rax	# *valp_76, D.12995
	movl	12(%rax), %eax	# _204->sv_flags, D.12996
	andl	$131072, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L221	#,
	.loc 1 601 0 discriminator 7
	movq	-112(%rbp), %rax	# valp, tmp373
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	(%rax), %rax	# _207->sv_any, D.12997
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_208].xnv_nv, D.13001
	xorpd	%xmm1, %xmm1	# tmp375
	ucomisd	%xmm1, %xmm0	# tmp375, D.13001
	setp	%dl	#, tmp374
	movl	$1, %eax	#, tmp377
	xorpd	%xmm1, %xmm1	# tmp376
	ucomisd	%xmm1, %xmm0	# tmp376, D.13001
	cmove	%edx, %eax	# tmp374,, D.13000
	jmp	.L223	#
.L221:
	.loc 1 601 0 discriminator 8
	movq	-112(%rbp), %rax	# valp, tmp378
	movq	(%rax), %rax	# *valp_76, D.12995
	movq	%rax, %rdi	# D.12995,
	call	Perl_sv_2bool	#
	jmp	.L223	#
.L213:
	.loc 1 601 0 discriminator 2
	movl	$0, %eax	#, iftmp.380
.L223:
	.loc 1 601 0 discriminator 11
	movb	%al, -168(%rbp)	# iftmp.380, details
	.loc 1 602 0 is_stmt 1 discriminator 11
	jmp	.L199	#
.L212:
	.loc 1 604 0
	nop
.L183:
	.loc 1 607 0
	movq	-104(%rbp), %rax	# key, tmp379
	movq	%rax, %rsi	# tmp379,
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L199:
.LBE60:
	.loc 1 580 0
	addq	$16, -128(%rbp)	#, svp
.L180:
	.loc 1 580 0 is_stmt 0 discriminator 1
	cmpq	%rbx, -128(%rbp)	# sp, svp
	jbe	.L224	#,
	.loc 1 613 0 is_stmt 1
	movl	-152(%rbp), %eax	# items, tmp380
	movslq	%eax, %rdx	# tmp380, D.13002
	movl	$0, %eax	#, tmp381
	subq	%rdx, %rax	# D.13002, tmp381
	salq	$3, %rax	#, tmp382
	addq	$8, %rax	#, D.13002
	addq	%rax, %rbx	# D.13002, sp
.L179:
.LBE59:
	.loc 1 616 0
	movq	%rbx, %rax	# sp, sp.390
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.390_224, tmp383
	movq	%rax, -96(%rbp)	# tmp383, sv
	.loc 1 617 0
	movq	-96(%rbp), %rax	# sv, tmp384
	movq	%rax, -136(%rbp)	# tmp384, gv
	.loc 1 619 0
	movq	-96(%rbp), %rax	# sv, tmp385
	movl	12(%rax), %eax	# sv_226->sv_flags, D.12996
	movzbl	%al, %eax	# D.12996, D.12996
	cmpl	$13, %eax	#, D.12996
	je	.L225	#,
	.loc 1 620 0
	movq	-96(%rbp), %rax	# sv, tmp386
	movl	12(%rax), %eax	# sv_226->sv_flags, D.12996
	andl	$524288, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L226	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# sv, tmp387
	movq	(%rax), %rax	# sv_226->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XRV *)_232].xrv_rv, D.12995
	movl	12(%rax), %eax	# _233->sv_flags, D.12996
	movzbl	%al, %eax	# D.12996, D.12996
	cmpl	$13, %eax	#, D.12996
	jne	.L226	#,
	.loc 1 621 0 is_stmt 1
	movq	-96(%rbp), %rax	# sv, tmp388
	movq	(%rax), %rax	# sv_226->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XRV *)_236].xrv_rv, tmp389
	movq	%rax, -136(%rbp)	# tmp389, gv
	jmp	.L225	#
.L226:
	.loc 1 623 0
	movq	-96(%rbp), %rax	# sv, tmp390
	movq	(%rax), %rax	# sv_226->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XPV *)_238].xpv_pv, D.12999
	movl	$15, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12999,
	call	Perl_gv_fetchpv	#
	movq	%rax, -136(%rbp)	# tmp391, gv
.L225:
	.loc 1 626 0
	cmpq	$0, -136(%rbp)	#, gv
	je	.L227	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, gv
	je	.L228	#,
	movq	-136(%rbp), %rax	# gv, tmp392
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_14].sv_flags, D.12996
	movzbl	%al, %eax	# D.12996, D.12996
	cmpl	$13, %eax	#, D.12996
	jne	.L228	#,
	movq	-136(%rbp), %rax	# gv, tmp393
	movq	(%rax), %rax	# gv_14->sv_any, D.13003
	movq	56(%rax), %rax	# _243->xgv_gp, D.13004
	testq	%rax, %rax	# D.13004
	je	.L228	#,
	movq	-136(%rbp), %rax	# gv, tmp394
	movq	(%rax), %rax	# gv_14->sv_any, D.13003
	movq	56(%rax), %rax	# _245->xgv_gp, D.13004
	movq	16(%rax), %rax	# _246->gp_io, iftmp.391
	jmp	.L229	#
.L228:
	.loc 1 626 0 discriminator 2
	movl	$0, %eax	#, iftmp.391
.L229:
	.loc 1 626 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.391, io
	cmpq	$0, -88(%rbp)	#, io
	je	.L227	#,
.LBB61:
	.loc 1 627 0 is_stmt 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.392
	movq	PL_op(%rip), %rax	# PL_op, PL_op.393
	movq	24(%rax), %rax	# PL_op.393_251->op_targ, D.12992
	salq	$3, %rax	#, D.12992
	addq	%rdx, %rax	# PL_curpad.392, D.13005
	movq	(%rax), %rax	# *_254, tmp395
	movq	%rax, -80(%rbp)	# tmp395, targ
	.loc 1 628 0
	cmpb	$0, -169(%rbp)	#, input
	je	.L230	#,
	.loc 1 629 0
	movq	-88(%rbp), %rax	# io, tmp396
	movq	(%rax), %rax	# io_249->sv_any, D.13006
	.loc 1 628 0
	movq	56(%rax), %rax	# _256->xio_ifp, iftmp.394
	jmp	.L231	#
.L230:
	.loc 1 629 0 discriminator 1
	movq	-88(%rbp), %rax	# io, tmp397
	movq	(%rax), %rax	# io_249->sv_any, D.13006
	.loc 1 628 0 discriminator 1
	movq	64(%rax), %rax	# _258->xio_ofp, iftmp.394
.L231:
	.loc 1 628 0 is_stmt 0 discriminator 2
	movq	%rax, %rdi	# iftmp.394,
	call	PerlIO_get_layers	#
	movq	%rax, -72(%rbp)	# tmp398, av
	.loc 1 631 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# av, tmp399
	movq	%rax, %rdi	# tmp399,
	call	Perl_av_len	#
	movl	%eax, -148(%rbp)	# tmp400, last
	.loc 1 632 0 discriminator 2
	movl	$0, -160(%rbp)	#, nitem
	.loc 1 634 0 discriminator 2
	movl	-148(%rbp), %eax	# last, tmp401
	movl	%eax, -164(%rbp)	# tmp401, i
	jmp	.L232	#
.L259:
.LBB62:
	.loc 1 640 0
	movl	-164(%rbp), %eax	# i, tmp402
	leal	-2(%rax), %ecx	#, D.12991
	movq	-72(%rbp), %rax	# av, tmp403
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12991,
	movq	%rax, %rdi	# tmp403,
	call	Perl_av_fetch	#
	movq	%rax, -64(%rbp)	# tmp404, namsvp
	.loc 1 641 0
	movl	-164(%rbp), %eax	# i, tmp405
	leal	-1(%rax), %ecx	#, D.12991
	movq	-72(%rbp), %rax	# av, tmp406
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12991,
	movq	%rax, %rdi	# tmp406,
	call	Perl_av_fetch	#
	movq	%rax, -56(%rbp)	# tmp407, argsvp
	.loc 1 642 0
	movl	-164(%rbp), %ecx	# i, tmp408
	movq	-72(%rbp), %rax	# av, tmp409
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp408,
	movq	%rax, %rdi	# tmp409,
	call	Perl_av_fetch	#
	movq	%rax, -48(%rbp)	# tmp410, flgsvp
	.loc 1 644 0
	cmpq	$0, -64(%rbp)	#, namsvp
	je	.L233	#,
	.loc 1 644 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# namsvp, tmp411
	movq	(%rax), %rax	# *namsvp_265, D.12995
	testq	%rax, %rax	# D.12995
	je	.L233	#,
	movq	-64(%rbp), %rax	# namsvp, tmp412
	movq	(%rax), %rax	# *namsvp_265, D.12995
	movl	12(%rax), %eax	# _270->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L233	#,
	.loc 1 644 0 discriminator 3
	movl	$1, %eax	#, iftmp.395
	jmp	.L234	#
.L233:
	.loc 1 644 0 discriminator 2
	movl	$0, %eax	#, iftmp.395
.L234:
	.loc 1 644 0 discriminator 4
	movb	%al, -167(%rbp)	# iftmp.395, namok
	.loc 1 645 0 is_stmt 1 discriminator 4
	cmpq	$0, -56(%rbp)	#, argsvp
	je	.L235	#,
	.loc 1 645 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# argsvp, tmp413
	movq	(%rax), %rax	# *argsvp_267, D.12995
	testq	%rax, %rax	# D.12995
	je	.L235	#,
	movq	-56(%rbp), %rax	# argsvp, tmp414
	movq	(%rax), %rax	# *argsvp_267, D.12995
	movl	12(%rax), %eax	# _277->sv_flags, D.12996
	andl	$262144, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L235	#,
	.loc 1 645 0 discriminator 3
	movl	$1, %eax	#, iftmp.396
	jmp	.L236	#
.L235:
	.loc 1 645 0 discriminator 2
	movl	$0, %eax	#, iftmp.396
.L236:
	.loc 1 645 0 discriminator 4
	movb	%al, -166(%rbp)	# iftmp.396, argok
	.loc 1 646 0 is_stmt 1 discriminator 4
	cmpq	$0, -48(%rbp)	#, flgsvp
	je	.L237	#,
	.loc 1 646 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# flgsvp, tmp415
	movq	(%rax), %rax	# *flgsvp_268, D.12995
	testq	%rax, %rax	# D.12995
	je	.L237	#,
	movq	-48(%rbp), %rax	# flgsvp, tmp416
	movq	(%rax), %rax	# *flgsvp_268, D.12995
	movl	12(%rax), %eax	# _284->sv_flags, D.12996
	andl	$65536, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L237	#,
	.loc 1 646 0 discriminator 3
	movl	$1, %eax	#, iftmp.397
	jmp	.L238	#
.L237:
	.loc 1 646 0 discriminator 2
	movl	$0, %eax	#, iftmp.397
.L238:
	.loc 1 646 0 discriminator 4
	movb	%al, -165(%rbp)	# iftmp.397, flgok
	.loc 1 648 0 is_stmt 1 discriminator 4
	cmpb	$0, -168(%rbp)	#, details
	je	.L239	#,
.LBB63:
	.loc 1 649 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.398
	movq	%rax, %rdx	# PL_stack_max.398, PL_stack_max.399
	movq	%rbx, %rax	# sp, sp.400
	subq	%rax, %rdx	# sp.400, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L240	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L240:
	.loc 1 649 0 discriminator 2
	addq	$8, %rbx	#, sp
	cmpb	$0, -167(%rbp)	#, namok
	je	.L241	#,
	.loc 1 649 0 discriminator 1
	movq	-64(%rbp), %rax	# namsvp, tmp417
	movq	(%rax), %rax	# *namsvp_265, D.12995
	movq	(%rax), %rax	# _296->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XPV *)_297].xpv_pv, D.12999
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12999,
	call	Perl_newSVpv	#
	jmp	.L242	#
.L241:
	.loc 1 649 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.401
.L242:
	.loc 1 649 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.401, *sp_295
.LBE63:
.LBB64:
	.loc 1 651 0 is_stmt 1 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.402
	movq	%rax, %rdx	# PL_stack_max.402, PL_stack_max.403
	movq	%rbx, %rax	# sp, sp.404
	subq	%rax, %rdx	# sp.404, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L243	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L243:
	.loc 1 651 0 discriminator 2
	addq	$8, %rbx	#, sp
	cmpb	$0, -166(%rbp)	#, argok
	je	.L244	#,
	.loc 1 651 0 discriminator 1
	movq	-56(%rbp), %rax	# argsvp, tmp418
	movq	(%rax), %rax	# *argsvp_267, D.12995
	movq	(%rax), %rax	# _308->sv_any, D.12997
	movq	(%rax), %rax	# MEM[(struct XPV *)_309].xpv_pv, D.12999
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12999,
	call	Perl_newSVpv	#
	jmp	.L245	#
.L244:
	.loc 1 651 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.405
.L245:
	.loc 1 651 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.405, *sp_307
.LBE64:
	.loc 1 653 0 is_stmt 1 discriminator 3
	cmpb	$0, -165(%rbp)	#, flgok
	je	.L246	#,
.LBB65:
	.loc 1 654 0
	movq	-48(%rbp), %rax	# flgsvp, tmp419
	movq	(%rax), %rax	# *flgsvp_268, D.12995
	movq	(%rax), %rax	# _314->sv_any, D.12997
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_315].xiv_iv, D.12993
	movq	-80(%rbp), %rax	# targ, tmp420
	movq	%rdx, %rsi	# D.12993,
	movq	%rax, %rdi	# tmp420,
	call	Perl_sv_setiv	#
.LBB66:
	movq	-80(%rbp), %rax	# targ, tmp421
	movl	12(%rax), %eax	# targ_255->sv_flags, D.12996
	andl	$16384, %eax	#, D.12996
	testl	%eax, %eax	# D.12996
	je	.L247	#,
	.loc 1 654 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# targ, tmp422
	movq	%rax, %rdi	# tmp422,
	call	Perl_mg_set	#
.L247:
.LBB67:
	.loc 1 654 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.406
	movq	%rax, %rdx	# PL_stack_max.406, PL_stack_max.407
	movq	%rbx, %rax	# sp, sp.408
	subq	%rax, %rdx	# sp.408, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L248	#,
	.loc 1 654 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L248:
	.loc 1 654 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-80(%rbp), %rax	# targ, tmp423
	movq	%rax, (%rbx)	# tmp423, *sp_324
.LBE67:
.LBE66:
.LBE65:
	jmp	.L249	#
.L246:
.LBB68:
	.loc 1 656 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.409
	movq	%rax, %rdx	# PL_stack_max.409, PL_stack_max.410
	movq	%rbx, %rax	# sp, sp.411
	subq	%rax, %rdx	# sp.411, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L250	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L250:
	.loc 1 656 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_331
.L249:
.LBE68:
	.loc 1 657 0 is_stmt 1 discriminator 1
	addl	$3, -160(%rbp)	#, nitem
	jmp	.L251	#
.L239:
	.loc 1 660 0
	cmpb	$0, -167(%rbp)	#, namok
	je	.L252	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	cmpb	$0, -166(%rbp)	#, argok
	je	.L252	#,
.LBB69:
	.loc 1 661 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.412
	movq	%rax, %rdx	# PL_stack_max.412, PL_stack_max.413
	movq	%rbx, %rax	# sp, sp.414
	subq	%rax, %rdx	# sp.414, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L253	#,
	.loc 1 661 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L253:
	.loc 1 661 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# argsvp, tmp424
	movq	(%rax), %rdx	# *argsvp_267, D.12995
	movq	-64(%rbp), %rax	# namsvp, tmp425
	movq	(%rax), %rax	# *namsvp_265, D.12995
	movq	%rax, %rsi	# D.12995,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, (%rbx)	# D.12995, *sp_339
.LBE69:
	jmp	.L254	#
.L252:
	.loc 1 663 0 is_stmt 1
	cmpb	$0, -167(%rbp)	#, namok
	je	.L255	#,
.LBB70:
	.loc 1 664 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.415
	movq	%rax, %rdx	# PL_stack_max.415, PL_stack_max.416
	movq	%rbx, %rax	# sp, sp.417
	subq	%rax, %rdx	# sp.417, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L256	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L256:
	.loc 1 664 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-64(%rbp), %rax	# namsvp, tmp426
	movq	(%rax), %rax	# *namsvp_265, D.12995
	movq	%rax, %rsi	# D.12995,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, (%rbx)	# D.12995, *sp_349
.LBE70:
	jmp	.L254	#
.L255:
.LBB71:
	.loc 1 666 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.418
	movq	%rax, %rdx	# PL_stack_max.418, PL_stack_max.419
	movq	%rbx, %rax	# sp, sp.420
	subq	%rax, %rdx	# sp.420, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L257	#,
	.loc 1 666 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L257:
	.loc 1 666 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_358
.L254:
.LBE71:
	.loc 1 667 0 is_stmt 1
	addl	$1, -160(%rbp)	#, nitem
	.loc 1 668 0
	cmpb	$0, -165(%rbp)	#, flgok
	je	.L251	#,
.LBB72:
	.loc 1 669 0
	movq	-48(%rbp), %rax	# flgsvp, tmp427
	movq	(%rax), %rax	# *flgsvp_268, D.12995
	movq	(%rax), %rax	# _361->sv_any, D.12997
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_362].xiv_iv, tmp428
	movq	%rax, -40(%rbp)	# tmp428, flags
	.loc 1 671 0
	movq	-40(%rbp), %rax	# flags, tmp429
	andl	$32768, %eax	#, D.12993
	testq	%rax, %rax	# D.12993
	je	.L251	#,
.LBB73:
	.loc 1 672 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.421
	movq	%rax, %rdx	# PL_stack_max.421, PL_stack_max.422
	movq	%rbx, %rax	# sp, sp.423
	subq	%rax, %rdx	# sp.423, D.12993
	movq	%rdx, %rax	# D.12993, D.12993
	cmpq	$7, %rax	#, D.12993
	jg	.L258	#,
	.loc 1 672 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L258:
	.loc 1 672 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$4, %esi	#,
	movl	$.LC55, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, (%rbx)	# D.12995, *sp_370
.LBE73:
	.loc 1 673 0 is_stmt 1 discriminator 2
	addl	$1, -160(%rbp)	#, nitem
.L251:
.LBE72:
.LBE62:
	.loc 1 634 0
	subl	$3, -164(%rbp)	#, i
.L232:
	.loc 1 634 0 is_stmt 0 discriminator 1
	cmpl	$0, -164(%rbp)	#, i
	jns	.L259	#,
	.loc 1 679 0 is_stmt 1
	movq	-72(%rbp), %rax	# av, tmp430
	movq	%rax, %rdi	# tmp430,
	call	Perl_sv_free	#
.LBB74:
	.loc 1 681 0
	movl	-160(%rbp), %eax	# nitem, tmp432
	cltq
	movq	%rax, -32(%rbp)	# tmp431, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.424
	movl	-156(%rbp), %edx	# ax, tmp433
	movslq	%edx, %rcx	# tmp433, D.13002
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.425
	addq	%rcx, %rdx	# D.13002, D.13002
	salq	$3, %rdx	#, D.13002
	subq	$8, %rdx	#, D.13002
	addq	%rdx, %rax	# D.13002, PL_stack_sp.426
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.426, PL_stack_sp
	jmp	.L176	#
.L227:
.LBE74:
.LBE61:
.LBE58:
.LBB75:
	.loc 1 686 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.427
	movl	-156(%rbp), %edx	# ax, tmp434
	movslq	%edx, %rcx	# tmp434, D.13002
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.428
	addq	%rcx, %rdx	# D.13002, D.13002
	salq	$3, %rdx	#, D.13002
	subq	$8, %rdx	#, D.13002
	addq	%rdx, %rax	# D.13002, PL_stack_sp.429
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.429, PL_stack_sp
	nop
.L176:
.LBE75:
	.loc 1 687 0
	addq	$176, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	XS_PerlIO_get_layers, .-XS_PerlIO_get_layers
	.globl	XS_Internals_hash_seed
	.type	XS_Internals_hash_seed, @function
XS_Internals_hash_seed:
.LFB21:
	.loc 1 690 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 693 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.430
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.431
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.433
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.433, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.432_3, D.13015
	cltq
	salq	$3, %rax	#, D.13016
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.434
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.435
	subq	%rax, %rdx	# PL_stack_base.436, D.13017
	movq	%rdx, %rax	# D.13017, D.13017
	sarq	$3, %rax	#, tmp87
	addl	$1, %eax	#, D.13018
	movl	%eax, -28(%rbp)	# D.13018, ax
.LBB76:
	.loc 1 694 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.437
	movl	-28(%rbp), %edx	# ax, tmp88
	movslq	%edx, %rdx	# tmp88, D.13016
	salq	$3, %rdx	#, D.13016
	leaq	(%rax,%rdx), %rbx	#, D.13019
	movl	$0, %edi	#,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.13020,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13020, *_20
.LBB77:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.438
	movl	-28(%rbp), %edx	# ax, tmp89
	movslq	%edx, %rcx	# tmp89, D.13021
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.439
	addq	%rcx, %rdx	# D.13021, D.13021
	salq	$3, %rdx	#, D.13021
	subq	$8, %rdx	#, D.13021
	addq	%rdx, %rax	# D.13021, PL_stack_sp.440
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.440, PL_stack_sp
	nop
.LBE77:
.LBE76:
	.loc 1 695 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	XS_Internals_hash_seed, .-XS_Internals_hash_seed
	.globl	XS_Internals_rehash_seed
	.type	XS_Internals_rehash_seed, @function
XS_Internals_rehash_seed:
.LFB22:
	.loc 1 698 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 701 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.441
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.442
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.444
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.444, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.443_3, D.13022
	cltq
	salq	$3, %rax	#, D.13023
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.445
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.446
	subq	%rax, %rdx	# PL_stack_base.447, D.13024
	movq	%rdx, %rax	# D.13024, D.13024
	sarq	$3, %rax	#, tmp88
	addl	$1, %eax	#, D.13025
	movl	%eax, -28(%rbp)	# D.13025, ax
.LBB78:
	.loc 1 702 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.448
	movl	-28(%rbp), %edx	# ax, tmp89
	movslq	%edx, %rdx	# tmp89, D.13023
	salq	$3, %rdx	#, D.13023
	leaq	(%rax,%rdx), %rbx	#, D.13026
	movq	PL_rehash_seed(%rip), %rax	# PL_rehash_seed, PL_rehash_seed.449
	movq	%rax, %rdi	# PL_rehash_seed.449,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.13027,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13027, *_20
.LBB79:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.450
	movl	-28(%rbp), %edx	# ax, tmp90
	movslq	%edx, %rcx	# tmp90, D.13028
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.451
	addq	%rcx, %rdx	# D.13028, D.13028
	salq	$3, %rdx	#, D.13028
	subq	$8, %rdx	#, D.13028
	addq	%rdx, %rax	# D.13028, PL_stack_sp.452
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.452, PL_stack_sp
	nop
.LBE79:
.LBE78:
	.loc 1 703 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	XS_Internals_rehash_seed, .-XS_Internals_rehash_seed
	.section	.rodata
.LC56:
	.string	"Internals::HvREHASH $hashref"
	.text
	.globl	XS_Internals_HvREHASH
	.type	XS_Internals_HvREHASH, @function
XS_Internals_HvREHASH:
.LFB23:
	.loc 1 706 0
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
	.loc 1 707 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.453
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.454
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.456
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.456, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.455_4, D.13029
	cltq
	salq	$3, %rax	#, D.13030
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.457
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.458
	subq	%rax, %rdx	# PL_stack_base.459, D.13031
	movq	%rdx, %rax	# D.13031, D.13031
	sarq	$3, %rax	#, tmp118
	addl	$1, %eax	#, D.13032
	movl	%eax, -48(%rbp)	# D.13032, ax
	movq	%r12, %rdx	# sp, sp.460
	movq	%rbx, %rax	# mark, mark.461
	subq	%rax, %rdx	# mark.461, D.13031
	movq	%rdx, %rax	# D.13031, D.13031
	sarq	$3, %rax	#, tmp119
	movl	%eax, -44(%rbp)	# D.13031, items
	.loc 1 708 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.462
	movl	-48(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.13030
	salq	$3, %rdx	#, D.13030
	addq	%rdx, %rax	# D.13030, D.13033
	movq	(%rax), %rax	# *_26, D.13034
	movl	12(%rax), %eax	# _27->sv_flags, D.13035
	andl	$524288, %eax	#, D.13035
	testl	%eax, %eax	# D.13035
	je	.L266	#,
.LBB80:
	.loc 1 709 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.463
	movl	-48(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rdx	# tmp121, D.13030
	salq	$3, %rdx	#, D.13030
	addq	%rdx, %rax	# D.13030, D.13033
	movq	(%rax), %rax	# *_33, D.13034
	movq	(%rax), %rax	# _34->sv_any, D.13036
	movq	(%rax), %rax	# MEM[(struct XRV *)_35].xrv_rv, tmp122
	movq	%rax, -40(%rbp)	# tmp122, hv
	.loc 1 710 0
	cmpl	$1, -44(%rbp)	#, items
	jne	.L266	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hv, tmp123
	movl	12(%rax), %eax	# hv_36->sv_flags, D.13035
	movzbl	%al, %eax	# D.13035, D.13035
	cmpl	$11, %eax	#, D.13035
	jne	.L266	#,
	.loc 1 711 0 is_stmt 1
	movq	-40(%rbp), %rax	# hv, tmp124
	movl	12(%rax), %eax	# hv_36->sv_flags, D.13035
	andl	$268435456, %eax	#, D.13035
	testl	%eax, %eax	# D.13035
	je	.L267	#,
.LBB81:
	.loc 1 712 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.464
	movl	-48(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.13030
	salq	$3, %rdx	#, D.13030
	addq	%rdx, %rax	# D.13030, D.13033
	movq	$PL_sv_yes, (%rax)	#, *_44
.LBB82:
	movq	$1, -32(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.465
	movl	-48(%rbp), %edx	# ax, tmp126
	movslq	%edx, %rcx	# tmp126, D.13037
	movq	-32(%rbp), %rdx	# tmpXSoff, tmpXSoff.466
	addq	%rcx, %rdx	# D.13037, D.13037
	salq	$3, %rdx	#, D.13037
	subq	$8, %rdx	#, D.13037
	addq	%rdx, %rax	# D.13037, PL_stack_sp.467
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.467, PL_stack_sp
	jmp	.L265	#
.L267:
.LBE82:
.LBE81:
.LBB83:
	.loc 1 714 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.468
	movl	-48(%rbp), %edx	# ax, tmp127
	movslq	%edx, %rdx	# tmp127, D.13030
	salq	$3, %rdx	#, D.13030
	addq	%rdx, %rax	# D.13030, D.13033
	movq	$PL_sv_no, (%rax)	#, *_56
.LBB84:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.469
	movl	-48(%rbp), %edx	# ax, tmp128
	movslq	%edx, %rcx	# tmp128, D.13037
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.470
	addq	%rcx, %rdx	# D.13037, D.13037
	salq	$3, %rdx	#, D.13037
	subq	$8, %rdx	#, D.13037
	addq	%rdx, %rax	# D.13037, PL_stack_sp.471
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.471, PL_stack_sp
	jmp	.L265	#
.L266:
.LBE84:
.LBE83:
.LBE80:
	.loc 1 717 0
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L265:
	.loc 1 718 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	XS_Internals_HvREHASH, .-XS_Internals_HvREHASH
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
	.file 18 "perliol.h"
	.file 19 "pad.h"
	.file 20 "intrpvar.h"
	.file 21 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2806
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF324
	.byte	0x1
	.long	.LASF325
	.long	.LASF326
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
	.long	.LASF8
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x56
	.long	0x65
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x6d
	.long	0x79
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.byte	0x8
	.long	0xc6
	.uleb128 0x7
	.long	0x8a
	.uleb128 0x6
	.byte	0x8
	.long	0xd1
	.uleb128 0x8
	.uleb128 0x9
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xdd
	.uleb128 0xa
	.long	.LASF228
	.uleb128 0xb
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xb
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xb
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0x103
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF17
	.byte	0x6
	.value	0x7d3
	.long	0xa7
	.uleb128 0xb
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x121
	.uleb128 0xd
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x18d
	.uleb128 0xe
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0x1172
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0x1172
	.byte	0x8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0x11f6
	.byte	0x10
	.uleb128 0xe
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0x11e0
	.byte	0x18
	.uleb128 0xe
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xe07
	.byte	0x20
	.uleb128 0xe
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xe07
	.byte	0x22
	.uleb128 0xe
	.long	.LASF24
	.byte	0x7
	.byte	0xe3
	.long	0xdfd
	.byte	0x24
	.uleb128 0xe
	.long	.LASF25
	.byte	0x7
	.byte	0xe3
	.long	0xdfd
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x199
	.uleb128 0xd
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x266
	.uleb128 0xe
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0x1172
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0x1172
	.byte	0x8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0x11f6
	.byte	0x10
	.uleb128 0xe
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0x11e0
	.byte	0x18
	.uleb128 0xe
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xe07
	.byte	0x20
	.uleb128 0xe
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xe07
	.byte	0x22
	.uleb128 0xe
	.long	.LASF24
	.byte	0x8
	.byte	0x11
	.long	0xdfd
	.byte	0x24
	.uleb128 0xe
	.long	.LASF25
	.byte	0x8
	.byte	0x11
	.long	0xdfd
	.byte	0x25
	.uleb128 0xe
	.long	.LASF26
	.byte	0x8
	.byte	0x12
	.long	0x84
	.byte	0x28
	.uleb128 0xe
	.long	.LASF27
	.byte	0x8
	.byte	0x17
	.long	0x115a
	.byte	0x30
	.uleb128 0xe
	.long	.LASF28
	.byte	0x8
	.byte	0x18
	.long	0x118f
	.byte	0x38
	.uleb128 0xe
	.long	.LASF29
	.byte	0x8
	.byte	0x1a
	.long	0xe1d
	.byte	0x40
	.uleb128 0xe
	.long	.LASF30
	.byte	0x8
	.byte	0x1b
	.long	0xe12
	.byte	0x44
	.uleb128 0xe
	.long	.LASF31
	.byte	0x8
	.byte	0x1c
	.long	0xe28
	.byte	0x48
	.uleb128 0xe
	.long	.LASF32
	.byte	0x8
	.byte	0x1d
	.long	0xe45
	.byte	0x50
	.uleb128 0xe
	.long	.LASF33
	.byte	0x8
	.byte	0x1e
	.long	0xe45
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.value	0x7db
	.long	0x272
	.uleb128 0xf
	.long	.LASF35
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x360
	.uleb128 0xe
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0x1172
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0x1172
	.byte	0x8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0x11f6
	.byte	0x10
	.uleb128 0xe
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0x11e0
	.byte	0x18
	.uleb128 0xe
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xe07
	.byte	0x20
	.uleb128 0xe
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xe07
	.byte	0x22
	.uleb128 0xe
	.long	.LASF24
	.byte	0x7
	.byte	0xfe
	.long	0xdfd
	.byte	0x24
	.uleb128 0xe
	.long	.LASF25
	.byte	0x7
	.byte	0xfe
	.long	0xdfd
	.byte	0x25
	.uleb128 0xe
	.long	.LASF36
	.byte	0x7
	.byte	0xff
	.long	0x1172
	.byte	0x28
	.uleb128 0x10
	.long	.LASF37
	.byte	0x7
	.value	0x100
	.long	0x1172
	.byte	0x30
	.uleb128 0x10
	.long	.LASF38
	.byte	0x7
	.value	0x101
	.long	0x1172
	.byte	0x38
	.uleb128 0x10
	.long	.LASF39
	.byte	0x7
	.value	0x102
	.long	0x1172
	.byte	0x40
	.uleb128 0x10
	.long	.LASF40
	.byte	0x7
	.value	0x103
	.long	0x11fc
	.byte	0x48
	.uleb128 0x10
	.long	.LASF41
	.byte	0x7
	.value	0x107
	.long	0x1202
	.byte	0x50
	.uleb128 0x10
	.long	.LASF42
	.byte	0x7
	.value	0x109
	.long	0xe1d
	.byte	0x58
	.uleb128 0x10
	.long	.LASF43
	.byte	0x7
	.value	0x10a
	.long	0xe1d
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF44
	.byte	0x7
	.value	0x10b
	.long	0xdfd
	.byte	0x60
	.uleb128 0x10
	.long	.LASF45
	.byte	0x7
	.value	0x10f
	.long	0x115a
	.byte	0x68
	.byte	0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.value	0x7e1
	.long	0x36c
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x387
	.uleb128 0x10
	.long	.LASF48
	.byte	0x6
	.value	0xea8
	.long	0x8a
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x392
	.uleb128 0xd
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3c2
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x44
	.long	0x77
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x45
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x46
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3cd
	.uleb128 0xd
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3fd
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x56
	.long	0x1142
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x57
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x58
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x408
	.uleb128 0xd
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x438
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x5c
	.long	0x1148
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x5d
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x5e
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x443
	.uleb128 0xd
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x473
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x50
	.long	0x113c
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x51
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x52
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x6
	.value	0x7ee
	.long	0x47f
	.uleb128 0xf
	.long	.LASF53
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x558
	.uleb128 0xe
	.long	.LASF54
	.byte	0xa
	.byte	0x20
	.long	0x1095
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0xa
	.byte	0x21
	.long	0x1095
	.byte	0x8
	.uleb128 0xe
	.long	.LASF56
	.byte	0xa
	.byte	0x22
	.long	0x109b
	.byte	0x10
	.uleb128 0xe
	.long	.LASF57
	.byte	0xa
	.byte	0x23
	.long	0x10a6
	.byte	0x18
	.uleb128 0xe
	.long	.LASF58
	.byte	0xa
	.byte	0x24
	.long	0x84
	.byte	0x20
	.uleb128 0xe
	.long	.LASF59
	.byte	0xa
	.byte	0x25
	.long	0x10b1
	.byte	0x28
	.uleb128 0xe
	.long	.LASF60
	.byte	0xa
	.byte	0x26
	.long	0x84
	.byte	0x30
	.uleb128 0xe
	.long	.LASF61
	.byte	0xa
	.byte	0x28
	.long	0x10b7
	.byte	0x38
	.uleb128 0xe
	.long	.LASF62
	.byte	0xa
	.byte	0x29
	.long	0xe12
	.byte	0x40
	.uleb128 0xe
	.long	.LASF63
	.byte	0xa
	.byte	0x2a
	.long	0xe12
	.byte	0x44
	.uleb128 0xe
	.long	.LASF64
	.byte	0xa
	.byte	0x2b
	.long	0xe12
	.byte	0x48
	.uleb128 0xe
	.long	.LASF65
	.byte	0xa
	.byte	0x2c
	.long	0xe12
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF66
	.byte	0xa
	.byte	0x2d
	.long	0xe1d
	.byte	0x50
	.uleb128 0xe
	.long	.LASF67
	.byte	0xa
	.byte	0x2e
	.long	0xe1d
	.byte	0x54
	.uleb128 0xe
	.long	.LASF68
	.byte	0xa
	.byte	0x2f
	.long	0xe1d
	.byte	0x58
	.uleb128 0xe
	.long	.LASF69
	.byte	0xa
	.byte	0x30
	.long	0xe1d
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF70
	.byte	0xa
	.byte	0x32
	.long	0x10bd
	.byte	0x60
	.byte	0
	.uleb128 0xb
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x563
	.uleb128 0xd
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5ff
	.uleb128 0xe
	.long	.LASF71
	.byte	0xb
	.byte	0xc
	.long	0xe45
	.byte	0
	.uleb128 0xe
	.long	.LASF72
	.byte	0xb
	.byte	0xd
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF73
	.byte	0xb
	.byte	0xe
	.long	0x11cf
	.byte	0x10
	.uleb128 0xe
	.long	.LASF74
	.byte	0xb
	.byte	0xf
	.long	0x1183
	.byte	0x18
	.uleb128 0xe
	.long	.LASF75
	.byte	0xb
	.byte	0x10
	.long	0x1195
	.byte	0x20
	.uleb128 0xe
	.long	.LASF76
	.byte	0xb
	.byte	0x11
	.long	0x115a
	.byte	0x28
	.uleb128 0xe
	.long	.LASF77
	.byte	0xb
	.byte	0x12
	.long	0x118f
	.byte	0x30
	.uleb128 0xe
	.long	.LASF78
	.byte	0xb
	.byte	0x13
	.long	0x1183
	.byte	0x38
	.uleb128 0xe
	.long	.LASF79
	.byte	0xb
	.byte	0x14
	.long	0xe1d
	.byte	0x40
	.uleb128 0xe
	.long	.LASF80
	.byte	0xb
	.byte	0x15
	.long	0xe1d
	.byte	0x44
	.uleb128 0xe
	.long	.LASF81
	.byte	0xb
	.byte	0x16
	.long	0xe28
	.byte	0x48
	.uleb128 0xe
	.long	.LASF82
	.byte	0xb
	.byte	0x17
	.long	0x84
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x60a
	.uleb128 0xd
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x63a
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x4a
	.long	0x1136
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x4b
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x4c
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"IO"
	.byte	0x6
	.value	0x7f1
	.long	0x645
	.uleb128 0xd
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x675
	.uleb128 0xe
	.long	.LASF49
	.byte	0x9
	.byte	0x62
	.long	0x114e
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x63
	.long	0xe1d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x64
	.long	0xe1d
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x6
	.value	0x7f5
	.long	0x681
	.uleb128 0xf
	.long	.LASF84
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6ee
	.uleb128 0xe
	.long	.LASF85
	.byte	0xc
	.byte	0x1b
	.long	0x1154
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0xc
	.byte	0x1c
	.long	0x1313
	.byte	0x8
	.uleb128 0xe
	.long	.LASF87
	.byte	0xc
	.byte	0x1d
	.long	0xe07
	.byte	0x10
	.uleb128 0xe
	.long	.LASF88
	.byte	0xc
	.byte	0x1e
	.long	0x8a
	.byte	0x12
	.uleb128 0xe
	.long	.LASF89
	.byte	0xc
	.byte	0x1f
	.long	0xdfd
	.byte	0x13
	.uleb128 0xe
	.long	.LASF90
	.byte	0xc
	.byte	0x20
	.long	0xe45
	.byte	0x18
	.uleb128 0xe
	.long	.LASF91
	.byte	0xc
	.byte	0x21
	.long	0x84
	.byte	0x20
	.uleb128 0xe
	.long	.LASF92
	.byte	0xc
	.byte	0x22
	.long	0xe12
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x6fa
	.uleb128 0xd
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x713
	.uleb128 0xe
	.long	.LASF93
	.byte	0x9
	.byte	0xf6
	.long	0xe45
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x71f
	.uleb128 0xd
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x750
	.uleb128 0xe
	.long	.LASF94
	.byte	0x9
	.byte	0xfa
	.long	0x84
	.byte	0
	.uleb128 0xe
	.long	.LASF95
	.byte	0x9
	.byte	0xfb
	.long	0x10a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF96
	.byte	0x9
	.byte	0xfc
	.long	0x10a
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF97
	.byte	0x6
	.value	0x7f8
	.long	0x75c
	.uleb128 0xf
	.long	.LASF98
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x79d
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x100
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x101
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x102
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.value	0x103
	.long	0xe2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	.LASF100
	.byte	0x6
	.value	0x7f9
	.long	0x7a9
	.uleb128 0x11
	.long	.LASF101
	.byte	0x20
	.byte	0x9
	.value	0x106
	.long	0x7eb
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x107
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x108
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x109
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF102
	.byte	0x9
	.value	0x10a
	.long	0xed
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	.LASF103
	.byte	0x6
	.value	0x7fa
	.long	0x7f7
	.uleb128 0x11
	.long	.LASF104
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x846
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x10e
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x10f
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x110
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.value	0x111
	.long	0xe2
	.byte	0x18
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.value	0x112
	.long	0xf8
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	.LASF106
	.byte	0x6
	.value	0x7fb
	.long	0x852
	.uleb128 0x11
	.long	.LASF107
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x8bb
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x117
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x118
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x119
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.value	0x11a
	.long	0xe2
	.byte	0x18
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.value	0x11b
	.long	0xf8
	.byte	0x20
	.uleb128 0x10
	.long	.LASF108
	.byte	0x9
	.value	0x11c
	.long	0x1154
	.byte	0x28
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.value	0x11d
	.long	0x115a
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.long	.LASF110
	.byte	0x6
	.value	0x7fd
	.long	0x8c7
	.uleb128 0xf
	.long	.LASF111
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x94c
	.uleb128 0xe
	.long	.LASF112
	.byte	0xd
	.byte	0xc
	.long	0x84
	.byte	0
	.uleb128 0xe
	.long	.LASF113
	.byte	0xd
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF114
	.byte	0xd
	.byte	0xe
	.long	0x9c
	.byte	0x10
	.uleb128 0xe
	.long	.LASF115
	.byte	0xd
	.byte	0xf
	.long	0xe2
	.byte	0x18
	.uleb128 0xe
	.long	.LASF105
	.byte	0xd
	.byte	0x10
	.long	0xf8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF108
	.byte	0xd
	.byte	0x11
	.long	0x1154
	.byte	0x28
	.uleb128 0xe
	.long	.LASF109
	.byte	0xd
	.byte	0x12
	.long	0x115a
	.byte	0x30
	.uleb128 0xe
	.long	.LASF116
	.byte	0xd
	.byte	0x14
	.long	0x1208
	.byte	0x38
	.uleb128 0xe
	.long	.LASF117
	.byte	0xd
	.byte	0x15
	.long	0xe45
	.byte	0x40
	.uleb128 0xe
	.long	.LASF118
	.byte	0xd
	.byte	0x16
	.long	0xdfd
	.byte	0x48
	.byte	0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x6
	.value	0x7fe
	.long	0x958
	.uleb128 0xf
	.long	.LASF120
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x9e9
	.uleb128 0xe
	.long	.LASF121
	.byte	0xe
	.byte	0x23
	.long	0x84
	.byte	0
	.uleb128 0xe
	.long	.LASF122
	.byte	0xe
	.byte	0x24
	.long	0x10a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF123
	.byte	0xe
	.byte	0x25
	.long	0x10a
	.byte	0x10
	.uleb128 0xe
	.long	.LASF124
	.byte	0xe
	.byte	0x26
	.long	0xe2
	.byte	0x18
	.uleb128 0xe
	.long	.LASF105
	.byte	0xe
	.byte	0x27
	.long	0xf8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF108
	.byte	0xe
	.byte	0x29
	.long	0x1154
	.byte	0x28
	.uleb128 0xe
	.long	.LASF109
	.byte	0xe
	.byte	0x2a
	.long	0x115a
	.byte	0x30
	.uleb128 0xe
	.long	.LASF125
	.byte	0xe
	.byte	0x2c
	.long	0xe12
	.byte	0x38
	.uleb128 0xe
	.long	.LASF126
	.byte	0xe
	.byte	0x2d
	.long	0x128a
	.byte	0x40
	.uleb128 0xe
	.long	.LASF127
	.byte	0xe
	.byte	0x2e
	.long	0x11fc
	.byte	0x48
	.uleb128 0xe
	.long	.LASF128
	.byte	0xe
	.byte	0x2f
	.long	0x84
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.long	.LASF129
	.byte	0x6
	.value	0x7ff
	.long	0x9f5
	.uleb128 0x11
	.long	.LASF130
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa9f
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x131
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x132
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x133
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.value	0x134
	.long	0xe2
	.byte	0x18
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.value	0x135
	.long	0xf8
	.byte	0x20
	.uleb128 0x10
	.long	.LASF108
	.byte	0x9
	.value	0x136
	.long	0x1154
	.byte	0x28
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.value	0x137
	.long	0x115a
	.byte	0x30
	.uleb128 0x10
	.long	.LASF131
	.byte	0x9
	.value	0x139
	.long	0x1160
	.byte	0x38
	.uleb128 0x10
	.long	.LASF132
	.byte	0x9
	.value	0x13a
	.long	0x84
	.byte	0x40
	.uleb128 0x10
	.long	.LASF133
	.byte	0x9
	.value	0x13b
	.long	0x10a
	.byte	0x48
	.uleb128 0x10
	.long	.LASF134
	.byte	0x9
	.value	0x13c
	.long	0x115a
	.byte	0x50
	.uleb128 0x10
	.long	.LASF135
	.byte	0x9
	.value	0x13d
	.long	0xdfd
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	.LASF136
	.byte	0x6
	.value	0x800
	.long	0xaab
	.uleb128 0xf
	.long	.LASF137
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xb9c
	.uleb128 0xe
	.long	.LASF94
	.byte	0xf
	.byte	0xf
	.long	0x84
	.byte	0
	.uleb128 0xe
	.long	.LASF95
	.byte	0xf
	.byte	0x10
	.long	0x10a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF96
	.byte	0xf
	.byte	0x11
	.long	0x10a
	.byte	0x10
	.uleb128 0xe
	.long	.LASF115
	.byte	0xf
	.byte	0x12
	.long	0xe2
	.byte	0x18
	.uleb128 0xe
	.long	.LASF105
	.byte	0xf
	.byte	0x13
	.long	0xf8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF108
	.byte	0xf
	.byte	0x14
	.long	0x1154
	.byte	0x28
	.uleb128 0xe
	.long	.LASF109
	.byte	0xf
	.byte	0x15
	.long	0x115a
	.byte	0x30
	.uleb128 0xe
	.long	.LASF138
	.byte	0xf
	.byte	0x17
	.long	0x115a
	.byte	0x38
	.uleb128 0xe
	.long	.LASF139
	.byte	0xf
	.byte	0x18
	.long	0x1172
	.byte	0x40
	.uleb128 0xe
	.long	.LASF140
	.byte	0xf
	.byte	0x19
	.long	0x1172
	.byte	0x48
	.uleb128 0xe
	.long	.LASF141
	.byte	0xf
	.byte	0x1a
	.long	0x1189
	.byte	0x50
	.uleb128 0xe
	.long	.LASF142
	.byte	0xf
	.byte	0x1b
	.long	0xd4e
	.byte	0x58
	.uleb128 0xe
	.long	.LASF143
	.byte	0xf
	.byte	0x1c
	.long	0x118f
	.byte	0x60
	.uleb128 0xe
	.long	.LASF144
	.byte	0xf
	.byte	0x1d
	.long	0x84
	.byte	0x68
	.uleb128 0xe
	.long	.LASF145
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xe
	.long	.LASF146
	.byte	0xf
	.byte	0x1f
	.long	0x11eb
	.byte	0x78
	.uleb128 0xe
	.long	.LASF147
	.byte	0xf
	.byte	0x20
	.long	0x1183
	.byte	0x80
	.uleb128 0xe
	.long	.LASF148
	.byte	0xf
	.byte	0x25
	.long	0x1166
	.byte	0x88
	.uleb128 0xe
	.long	.LASF149
	.byte	0xf
	.byte	0x26
	.long	0xe1d
	.byte	0x8c
	.byte	0
	.uleb128 0xc
	.long	.LASF150
	.byte	0x6
	.value	0x803
	.long	0xba8
	.uleb128 0x11
	.long	.LASF151
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xce1
	.uleb128 0x10
	.long	.LASF94
	.byte	0x9
	.value	0x171
	.long	0x84
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.value	0x172
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.value	0x173
	.long	0x10a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.value	0x174
	.long	0xe2
	.byte	0x18
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.value	0x175
	.long	0xf8
	.byte	0x20
	.uleb128 0x10
	.long	.LASF108
	.byte	0x9
	.value	0x176
	.long	0x1154
	.byte	0x28
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.value	0x177
	.long	0x115a
	.byte	0x30
	.uleb128 0x10
	.long	.LASF152
	.byte	0x9
	.value	0x179
	.long	0x11c3
	.byte	0x38
	.uleb128 0x10
	.long	.LASF153
	.byte	0x9
	.value	0x17a
	.long	0x11c3
	.byte	0x40
	.uleb128 0x10
	.long	.LASF154
	.byte	0x9
	.value	0x187
	.long	0x119b
	.byte	0x48
	.uleb128 0x10
	.long	.LASF155
	.byte	0x9
	.value	0x188
	.long	0xe2
	.byte	0x50
	.uleb128 0x10
	.long	.LASF156
	.byte	0x9
	.value	0x189
	.long	0xe2
	.byte	0x58
	.uleb128 0x10
	.long	.LASF157
	.byte	0x9
	.value	0x18a
	.long	0xe2
	.byte	0x60
	.uleb128 0x10
	.long	.LASF158
	.byte	0x9
	.value	0x18b
	.long	0xe2
	.byte	0x68
	.uleb128 0x10
	.long	.LASF159
	.byte	0x9
	.value	0x18c
	.long	0x84
	.byte	0x70
	.uleb128 0x10
	.long	.LASF160
	.byte	0x9
	.value	0x18d
	.long	0x118f
	.byte	0x78
	.uleb128 0x10
	.long	.LASF161
	.byte	0x9
	.value	0x18e
	.long	0x84
	.byte	0x80
	.uleb128 0x10
	.long	.LASF162
	.byte	0x9
	.value	0x18f
	.long	0x118f
	.byte	0x88
	.uleb128 0x10
	.long	.LASF163
	.byte	0x9
	.value	0x190
	.long	0x84
	.byte	0x90
	.uleb128 0x10
	.long	.LASF164
	.byte	0x9
	.value	0x191
	.long	0x118f
	.byte	0x98
	.uleb128 0x10
	.long	.LASF165
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF166
	.byte	0x9
	.value	0x193
	.long	0x8a
	.byte	0xa2
	.uleb128 0x10
	.long	.LASF167
	.byte	0x9
	.value	0x194
	.long	0x8a
	.byte	0xa3
	.byte	0
	.uleb128 0xc
	.long	.LASF168
	.byte	0x6
	.value	0x804
	.long	0xced
	.uleb128 0xf
	.long	.LASF169
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xd4e
	.uleb128 0xe
	.long	.LASF170
	.byte	0xc
	.byte	0xf
	.long	0x12aa
	.byte	0
	.uleb128 0xe
	.long	.LASF171
	.byte	0xc
	.byte	0x10
	.long	0x12aa
	.byte	0x8
	.uleb128 0xe
	.long	.LASF172
	.byte	0xc
	.byte	0x11
	.long	0x12c4
	.byte	0x10
	.uleb128 0xe
	.long	.LASF173
	.byte	0xc
	.byte	0x12
	.long	0x12aa
	.byte	0x18
	.uleb128 0xe
	.long	.LASF174
	.byte	0xc
	.byte	0x13
	.long	0x12aa
	.byte	0x20
	.uleb128 0xe
	.long	.LASF175
	.byte	0xc
	.byte	0x14
	.long	0x12ed
	.byte	0x28
	.uleb128 0xe
	.long	.LASF176
	.byte	0xc
	.byte	0x16
	.long	0x130d
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xd5a
	.uleb128 0x12
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xdbc
	.uleb128 0x13
	.long	.LASF177
	.byte	0x6
	.value	0x9f2
	.long	0x77
	.uleb128 0x13
	.long	.LASF178
	.byte	0x6
	.value	0x9f3
	.long	0xe12
	.uleb128 0x13
	.long	.LASF179
	.byte	0x6
	.value	0x9f4
	.long	0xe2
	.uleb128 0x13
	.long	.LASF180
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x13
	.long	.LASF181
	.byte	0x6
	.value	0x9f6
	.long	0x8a
	.uleb128 0x13
	.long	.LASF182
	.byte	0x6
	.value	0x9f7
	.long	0xe3f
	.uleb128 0x13
	.long	.LASF183
	.byte	0x6
	.value	0x9f8
	.long	0xe3f
	.byte	0
	.uleb128 0xc
	.long	.LASF184
	.byte	0x6
	.value	0x808
	.long	0xdc8
	.uleb128 0x11
	.long	.LASF185
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xdfd
	.uleb128 0x10
	.long	.LASF186
	.byte	0x9
	.value	0x4ee
	.long	0x1195
	.byte	0
	.uleb128 0x10
	.long	.LASF187
	.byte	0x9
	.value	0x4ef
	.long	0xed
	.byte	0x8
	.uleb128 0x10
	.long	.LASF188
	.byte	0x9
	.value	0x4f0
	.long	0x11c9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x9
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0x9
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0x9
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xc
	.long	.LASF189
	.byte	0x10
	.value	0x209
	.long	0xe1d
	.uleb128 0x14
	.long	0xe3f
	.uleb128 0x15
	.long	0x77
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe34
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0x16
	.long	0x8a
	.long	0xe5b
	.uleb128 0x17
	.long	0x70
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF190
	.byte	0x11
	.byte	0x63
	.long	0xe66
	.uleb128 0xf
	.long	.LASF191
	.byte	0x18
	.byte	0x12
	.byte	0x42
	.long	0xe97
	.uleb128 0xe
	.long	.LASF192
	.byte	0x12
	.byte	0x43
	.long	0x100a
	.byte	0
	.uleb128 0x18
	.string	"tab"
	.byte	0x12
	.byte	0x44
	.long	0x1341
	.byte	0x8
	.uleb128 0xe
	.long	.LASF187
	.byte	0x12
	.byte	0x45
	.long	0xe1d
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF193
	.byte	0x11
	.byte	0x64
	.long	0xea2
	.uleb128 0xf
	.long	.LASF194
	.byte	0xe0
	.byte	0x12
	.byte	0x10
	.long	0xfff
	.uleb128 0xe
	.long	.LASF195
	.byte	0x12
	.byte	0x11
	.long	0xa7
	.byte	0
	.uleb128 0xe
	.long	.LASF196
	.byte	0x12
	.byte	0x12
	.long	0x84
	.byte	0x8
	.uleb128 0xe
	.long	.LASF197
	.byte	0x12
	.byte	0x13
	.long	0xa7
	.byte	0x10
	.uleb128 0xe
	.long	.LASF198
	.byte	0x12
	.byte	0x14
	.long	0xe1d
	.byte	0x18
	.uleb128 0xe
	.long	.LASF199
	.byte	0x12
	.byte	0x15
	.long	0x1376
	.byte	0x20
	.uleb128 0xe
	.long	.LASF200
	.byte	0x12
	.byte	0x16
	.long	0x138b
	.byte	0x28
	.uleb128 0xe
	.long	.LASF201
	.byte	0x12
	.byte	0x17
	.long	0x13d3
	.byte	0x30
	.uleb128 0xe
	.long	.LASF202
	.byte	0x12
	.byte	0x1c
	.long	0x138b
	.byte	0x38
	.uleb128 0xe
	.long	.LASF203
	.byte	0x12
	.byte	0x1d
	.long	0x13f2
	.byte	0x40
	.uleb128 0xe
	.long	.LASF204
	.byte	0x12
	.byte	0x1e
	.long	0x138b
	.byte	0x48
	.uleb128 0x18
	.string	"Dup"
	.byte	0x12
	.byte	0x1f
	.long	0x1416
	.byte	0x50
	.uleb128 0xe
	.long	.LASF205
	.byte	0x12
	.byte	0x21
	.long	0x1435
	.byte	0x58
	.uleb128 0xe
	.long	.LASF206
	.byte	0x12
	.byte	0x22
	.long	0x1454
	.byte	0x60
	.uleb128 0xe
	.long	.LASF207
	.byte	0x12
	.byte	0x23
	.long	0x1454
	.byte	0x68
	.uleb128 0xe
	.long	.LASF208
	.byte	0x12
	.byte	0x24
	.long	0x1473
	.byte	0x70
	.uleb128 0xe
	.long	.LASF209
	.byte	0x12
	.byte	0x25
	.long	0x1488
	.byte	0x78
	.uleb128 0xe
	.long	.LASF210
	.byte	0x12
	.byte	0x26
	.long	0x138b
	.byte	0x80
	.uleb128 0xe
	.long	.LASF211
	.byte	0x12
	.byte	0x28
	.long	0x138b
	.byte	0x88
	.uleb128 0xe
	.long	.LASF212
	.byte	0x12
	.byte	0x29
	.long	0x138b
	.byte	0x90
	.uleb128 0x18
	.string	"Eof"
	.byte	0x12
	.byte	0x2a
	.long	0x138b
	.byte	0x98
	.uleb128 0xe
	.long	.LASF213
	.byte	0x12
	.byte	0x2b
	.long	0x138b
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF214
	.byte	0x12
	.byte	0x2c
	.long	0x1499
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF215
	.byte	0x12
	.byte	0x2d
	.long	0x1499
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF216
	.byte	0x12
	.byte	0x2f
	.long	0x14b4
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF217
	.byte	0x12
	.byte	0x30
	.long	0x14c9
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF218
	.byte	0x12
	.byte	0x31
	.long	0x14b4
	.byte	0xc8
	.uleb128 0xe
	.long	.LASF219
	.byte	0x12
	.byte	0x32
	.long	0x14de
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF220
	.byte	0x12
	.byte	0x33
	.long	0x14f9
	.byte	0xd8
	.byte	0
	.uleb128 0x4
	.long	.LASF221
	.byte	0x11
	.byte	0x65
	.long	0x100a
	.uleb128 0x6
	.byte	0x8
	.long	0xe5b
	.uleb128 0xc
	.long	.LASF222
	.byte	0x11
	.value	0x175
	.long	0x101c
	.uleb128 0xf
	.long	.LASF223
	.byte	0x20
	.byte	0x12
	.byte	0x9
	.long	0x1059
	.uleb128 0xe
	.long	.LASF63
	.byte	0x12
	.byte	0xa
	.long	0xe2
	.byte	0
	.uleb128 0x18
	.string	"cur"
	.byte	0x12
	.byte	0xb
	.long	0xe2
	.byte	0x8
	.uleb128 0x18
	.string	"len"
	.byte	0x12
	.byte	0xc
	.long	0xe2
	.byte	0x10
	.uleb128 0xe
	.long	.LASF224
	.byte	0x12
	.byte	0xd
	.long	0x1352
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF225
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0x108a
	.uleb128 0xe
	.long	.LASF187
	.byte	0xa
	.byte	0x14
	.long	0xdfd
	.byte	0
	.uleb128 0xe
	.long	.LASF226
	.byte	0xa
	.byte	0x15
	.long	0xdfd
	.byte	0x1
	.uleb128 0xe
	.long	.LASF227
	.byte	0xa
	.byte	0x16
	.long	0xe07
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF225
	.byte	0xa
	.byte	0x19
	.long	0x1059
	.uleb128 0x6
	.byte	0x8
	.long	0xe12
	.uleb128 0x6
	.byte	0x8
	.long	0x108a
	.uleb128 0xa
	.long	.LASF229
	.uleb128 0x6
	.byte	0x8
	.long	0x10a1
	.uleb128 0xa
	.long	.LASF230
	.uleb128 0x6
	.byte	0x8
	.long	0x10ac
	.uleb128 0x6
	.byte	0x8
	.long	0xe1d
	.uleb128 0x16
	.long	0x108a
	.long	0x10cd
	.uleb128 0x17
	.long	0x70
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0x1136
	.uleb128 0x1a
	.long	.LASF231
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF232
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF233
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF234
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF235
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF236
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF237
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF238
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF239
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF240
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF241
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF242
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF243
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF244
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF245
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF246
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e9
	.uleb128 0x6
	.byte	0x8
	.long	0xa9f
	.uleb128 0x6
	.byte	0x8
	.long	0x8bb
	.uleb128 0x6
	.byte	0x8
	.long	0x94c
	.uleb128 0x6
	.byte	0x8
	.long	0xb9c
	.uleb128 0x6
	.byte	0x8
	.long	0x675
	.uleb128 0x6
	.byte	0x8
	.long	0x3fd
	.uleb128 0x6
	.byte	0x8
	.long	0x558
	.uleb128 0xc
	.long	.LASF247
	.byte	0x9
	.value	0x150
	.long	0xe07
	.uleb128 0x6
	.byte	0x8
	.long	0x116
	.uleb128 0x14
	.long	0x1183
	.uleb128 0x15
	.long	0x1183
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x438
	.uleb128 0x6
	.byte	0x8
	.long	0x1178
	.uleb128 0x6
	.byte	0x8
	.long	0x5ff
	.uleb128 0x6
	.byte	0x8
	.long	0x3c2
	.uleb128 0x1b
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0x11bd
	.uleb128 0x13
	.long	.LASF248
	.byte	0x9
	.value	0x185
	.long	0x11bd
	.uleb128 0x13
	.long	.LASF249
	.byte	0x9
	.value	0x186
	.long	0x77
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd2
	.uleb128 0x6
	.byte	0x8
	.long	0xfff
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x6
	.byte	0x8
	.long	0x645
	.uleb128 0x4
	.long	.LASF250
	.byte	0x13
	.byte	0x13
	.long	0x3c2
	.uleb128 0x4
	.long	.LASF251
	.byte	0x13
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x11d5
	.uleb128 0x1c
	.long	0x1172
	.uleb128 0x6
	.byte	0x8
	.long	0x11f1
	.uleb128 0x6
	.byte	0x8
	.long	0x266
	.uleb128 0x6
	.byte	0x8
	.long	0x473
	.uleb128 0x6
	.byte	0x8
	.long	0xe45
	.uleb128 0x6
	.byte	0x8
	.long	0x18d
	.uleb128 0x9
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x121e
	.uleb128 0xd
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x124e
	.uleb128 0xe
	.long	.LASF252
	.byte	0xe
	.byte	0x11
	.long	0x128a
	.byte	0
	.uleb128 0xe
	.long	.LASF253
	.byte	0xe
	.byte	0x12
	.long	0x1290
	.byte	0x8
	.uleb128 0xe
	.long	.LASF254
	.byte	0xe
	.byte	0x13
	.long	0xe45
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x1259
	.uleb128 0xd
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x128a
	.uleb128 0xe
	.long	.LASF255
	.byte	0xe
	.byte	0x18
	.long	0xe1d
	.byte	0
	.uleb128 0xe
	.long	.LASF256
	.byte	0xe
	.byte	0x19
	.long	0xe12
	.byte	0x4
	.uleb128 0xe
	.long	.LASF257
	.byte	0xe
	.byte	0x1a
	.long	0xe4b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1214
	.uleb128 0x6
	.byte	0x8
	.long	0x124e
	.uleb128 0x1d
	.long	0x57
	.long	0x12aa
	.uleb128 0x15
	.long	0xe45
	.uleb128 0x15
	.long	0x1154
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1296
	.uleb128 0x1d
	.long	0xe1d
	.long	0x12c4
	.uleb128 0x15
	.long	0xe45
	.uleb128 0x15
	.long	0x1154
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12b0
	.uleb128 0x1d
	.long	0x57
	.long	0x12ed
	.uleb128 0x15
	.long	0xe45
	.uleb128 0x15
	.long	0x1154
	.uleb128 0x15
	.long	0xe45
	.uleb128 0x15
	.long	0xc0
	.uleb128 0x15
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12ca
	.uleb128 0x1d
	.long	0x57
	.long	0x1307
	.uleb128 0x15
	.long	0x1154
	.uleb128 0x15
	.long	0x1307
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdbc
	.uleb128 0x6
	.byte	0x8
	.long	0x12f3
	.uleb128 0x6
	.byte	0x8
	.long	0xce1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF258
	.uleb128 0x1e
	.byte	0x10
	.byte	0x12
	.byte	0x4
	.long	0x1341
	.uleb128 0xe
	.long	.LASF259
	.byte	0x12
	.byte	0x5
	.long	0x1341
	.byte	0
	.uleb128 0x18
	.string	"arg"
	.byte	0x12
	.byte	0x6
	.long	0xe45
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe97
	.uleb128 0x4
	.long	.LASF260
	.byte	0x12
	.byte	0x7
	.long	0x1320
	.uleb128 0x6
	.byte	0x8
	.long	0x1347
	.uleb128 0x1d
	.long	0xe2
	.long	0x1376
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0xc0
	.uleb128 0x15
	.long	0xe45
	.uleb128 0x15
	.long	0x1341
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1358
	.uleb128 0x1d
	.long	0xe2
	.long	0x138b
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x137c
	.uleb128 0x1d
	.long	0x11c3
	.long	0x13cd
	.uleb128 0x15
	.long	0x1341
	.uleb128 0x15
	.long	0x13cd
	.uleb128 0x15
	.long	0xe2
	.uleb128 0x15
	.long	0xc0
	.uleb128 0x15
	.long	0x57
	.uleb128 0x15
	.long	0x57
	.uleb128 0x15
	.long	0x57
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x57
	.uleb128 0x15
	.long	0x1208
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1010
	.uleb128 0x6
	.byte	0x8
	.long	0x1391
	.uleb128 0x1d
	.long	0xe45
	.long	0x13f2
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x1307
	.uleb128 0x15
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13d9
	.uleb128 0x1d
	.long	0x11c3
	.long	0x1416
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x1307
	.uleb128 0x15
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13f8
	.uleb128 0x1d
	.long	0x9c
	.long	0x1435
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x77
	.uleb128 0x15
	.long	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x141c
	.uleb128 0x1d
	.long	0x9c
	.long	0x1454
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0xcb
	.uleb128 0x15
	.long	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x143b
	.uleb128 0x1d
	.long	0xe2
	.long	0x1473
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x91
	.uleb128 0x15
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x145a
	.uleb128 0x1d
	.long	0x91
	.long	0x1488
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1479
	.uleb128 0x14
	.long	0x1499
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x148e
	.uleb128 0x1d
	.long	0x14ae
	.long	0x14ae
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49
	.uleb128 0x6
	.byte	0x8
	.long	0x149f
	.uleb128 0x1d
	.long	0xa7
	.long	0x14c9
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14ba
	.uleb128 0x1d
	.long	0x9c
	.long	0x14de
	.uleb128 0x15
	.long	0x11c3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14cf
	.uleb128 0x14
	.long	0x14f9
	.uleb128 0x15
	.long	0x11c3
	.uleb128 0x15
	.long	0x14ae
	.uleb128 0x15
	.long	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14e4
	.uleb128 0x1f
	.long	.LASF327
	.byte	0x1
	.byte	0x23
	.long	0xe45
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1640
	.uleb128 0x20
	.long	.LASF261
	.byte	0x1
	.byte	0x23
	.long	0x115a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF196
	.byte	0x1
	.byte	0x23
	.long	0xc0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF262
	.byte	0x1
	.byte	0x23
	.long	0x115a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x24
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.long	.LASF263
	.byte	0x1
	.byte	0x24
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.byte	0x26
	.long	0x1195
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.byte	0x27
	.long	0x118f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"gvp"
	.byte	0x1
	.byte	0x28
	.long	0x1640
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"hv"
	.byte	0x1
	.byte	0x29
	.long	0x115a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF264
	.byte	0x1
	.byte	0x2a
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x15e2
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.byte	0x41
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"svp"
	.byte	0x1
	.byte	0x42
	.long	0x1208
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.string	"svp"
	.byte	0x1
	.byte	0x64
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF265
	.byte	0x1
	.byte	0x66
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.byte	0x68
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF266
	.byte	0x1
	.byte	0x69
	.long	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x118f
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.byte	0x8a
	.long	0x8a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ad
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0x8a
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF196
	.byte	0x1
	.byte	0x8a
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF226
	.byte	0x1
	.byte	0x8c
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF261
	.byte	0x1
	.byte	0x8d
	.long	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF262
	.byte	0x1
	.byte	0x8e
	.long	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF268
	.byte	0x1
	.byte	0xc0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d9
	.uleb128 0x23
	.long	.LASF267
	.byte	0x1
	.byte	0xc2
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF269
	.byte	0x1
	.byte	0xdc
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x17a9
	.uleb128 0x21
	.string	"cv"
	.byte	0x1
	.byte	0xdc
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.byte	0xde
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF270
	.byte	0x1
	.byte	0xde
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.byte	0xde
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF265
	.byte	0x1
	.byte	0xde
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.byte	0xdf
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF196
	.byte	0x1
	.byte	0xe0
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"n_a"
	.byte	0x1
	.byte	0xe1
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1788
	.uleb128 0x23
	.long	.LASF271
	.byte	0x1
	.byte	0xed
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.long	.LASF271
	.byte	0x1
	.byte	0xf2
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF272
	.byte	0x1
	.byte	0xf5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x18bd
	.uleb128 0x21
	.string	"cv"
	.byte	0x1
	.byte	0xf5
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.byte	0xf7
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF270
	.byte	0x1
	.byte	0xf7
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.byte	0xf7
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF265
	.byte	0x1
	.byte	0xf7
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.byte	0xf8
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF196
	.byte	0x1
	.byte	0xf9
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.byte	0xfa
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"pkg"
	.byte	0x1
	.byte	0xfb
	.long	0x115a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"n_a"
	.byte	0x1
	.byte	0xfc
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1877
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x108
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x189b
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x117
	.long	0x118f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x11d
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x1
	.value	0x120
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a69
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x120
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x122
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x122
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x122
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x122
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.string	"pkg"
	.byte	0x1
	.value	0x123
	.long	0x115a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"gvp"
	.byte	0x1
	.value	0x124
	.long	0x1640
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x125
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x126
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF274
	.byte	0x1
	.value	0x127
	.long	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF291
	.byte	0x1
	.value	0x179
	.quad	.L70
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x19a8
	.uleb128 0x29
	.string	"nsv"
	.byte	0x1
	.value	0x136
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1a47
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x141
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"req"
	.byte	0x1
	.value	0x142
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1a02
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.value	0x14a
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1a27
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.value	0x151
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x16f
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x17c
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x1
	.value	0x17f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b35
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x17f
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x181
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x181
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x181
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x181
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x185
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1b12
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x188
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x18a
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x1
	.value	0x190
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c32
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x190
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x192
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x192
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x192
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x192
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x196
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x198
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x199
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1c0e
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x19b
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x19d
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF277
	.byte	0x1
	.value	0x1a3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cdd
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1a3
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1a5
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1a5
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1a5
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1a5
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1cbb
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1a9
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1ad
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x1
	.value	0x1b0
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d97
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1b0
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1b2
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1b2
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1b2
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1b2
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1d75
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1b6
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x1b7
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0x25
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1bd
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF280
	.byte	0x1
	.value	0x1c0
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e62
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1c0
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1c2
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1c2
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1c2
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1c2
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x1e40
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1c6
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x1c7
	.long	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF281
	.byte	0x1
	.value	0x1c8
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1cd
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF282
	.byte	0x1
	.value	0x1d0
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2b
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1d0
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1d2
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1d2
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1d2
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1d2
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x1f09
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1d6
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF283
	.byte	0x1
	.value	0x1d7
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x1d8
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0x25
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1e4
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF284
	.byte	0x1
	.value	0x1e7
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fc0
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1e7
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1e9
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1e9
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1e9
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1e9
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"uv"
	.byte	0x1
	.value	0x1ea
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1f0
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF285
	.byte	0x1
	.value	0x1f3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2055
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1f3
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x1f5
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x1f5
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x1f5
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x1f5
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"uv"
	.byte	0x1
	.value	0x1f6
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x1fc
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x1ff
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2182
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x1ff
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x201
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x201
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x201
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x201
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x202
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x20f1
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x205
	.long	0xe2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x2116
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x207
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x213b
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x20c
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x2160
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x211
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x214
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x1
	.value	0x217
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2263
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x217
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x219
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x219
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x219
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x219
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x21a
	.long	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x221c
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x21c
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x2241
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x220
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x222
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x1
	.value	0x225
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f8
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x225
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x227
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x227
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x227
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x227
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x228
	.long	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x22c
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.value	0x22f
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2325
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x22f
	.long	0x1183
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF290
	.byte	0x1
	.value	0x234
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x25af
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x234
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x236
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x236
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x236
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x236
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF292
	.byte	0x1
	.value	0x25e
	.quad	.L183
	.uleb128 0x24
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x258d
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x23b
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x23c
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.string	"io"
	.byte	0x1
	.value	0x23d
	.long	0x25af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF293
	.byte	0x1
	.value	0x23e
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -185
	.uleb128 0x28
	.long	.LASF294
	.byte	0x1
	.value	0x23f
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x2476
	.uleb128 0x29
	.string	"svp"
	.byte	0x1
	.value	0x242
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x28
	.long	.LASF295
	.byte	0x1
	.value	0x245
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF296
	.byte	0x1
	.value	0x246
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF297
	.byte	0x1
	.value	0x247
	.long	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x248
	.long	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x28
	.long	.LASF281
	.byte	0x1
	.value	0x273
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x274
	.long	0x1195
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x276
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x28
	.long	.LASF298
	.byte	0x1
	.value	0x277
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.long	.LASF299
	.byte	0x1
	.value	0x278
	.long	0xe12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x256a
	.uleb128 0x28
	.long	.LASF300
	.byte	0x1
	.value	0x27b
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF301
	.byte	0x1
	.value	0x27c
	.long	0x1208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF302
	.byte	0x1
	.value	0x27d
	.long	0x1208
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF303
	.byte	0x1
	.value	0x27e
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -183
	.uleb128 0x28
	.long	.LASF304
	.byte	0x1
	.value	0x27e
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -182
	.uleb128 0x28
	.long	.LASF305
	.byte	0x1
	.value	0x27e
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.uleb128 0x25
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x29d
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2a9
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2ae
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x63a
	.uleb128 0x2a
	.long	.LASF306
	.byte	0x1
	.value	0x2b1
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x261f
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x2b1
	.long	0x1183
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x2b5
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x2b5
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2b6
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x1
	.value	0x2b9
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2689
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x2b9
	.long	0x1183
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x2bd
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x2bd
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2be
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x2c1
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2755
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x2c1
	.long	0x1183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x2c3
	.long	0x1208
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x2c3
	.long	0x1208
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ax"
	.byte	0x1
	.value	0x2c3
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF265
	.byte	0x1
	.value	0x2c3
	.long	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x2c5
	.long	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.long	0x2732
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2c8
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x2ca
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF309
	.byte	0x14
	.byte	0x34
	.long	0xdfd
	.uleb128 0x2e
	.long	.LASF310
	.byte	0x14
	.byte	0x89
	.long	0xe1d
	.uleb128 0x2f
	.long	.LASF311
	.byte	0x14
	.value	0x125
	.long	0x387
	.uleb128 0x2f
	.long	.LASF312
	.byte	0x14
	.value	0x126
	.long	0x387
	.uleb128 0x2f
	.long	.LASF313
	.byte	0x14
	.value	0x127
	.long	0x387
	.uleb128 0x2f
	.long	.LASF314
	.byte	0x14
	.value	0x233
	.long	0xed
	.uleb128 0x2e
	.long	.LASF315
	.byte	0x15
	.byte	0x22
	.long	0x1208
	.uleb128 0x2e
	.long	.LASF316
	.byte	0x15
	.byte	0x26
	.long	0x1172
	.uleb128 0x2e
	.long	.LASF317
	.byte	0x15
	.byte	0x28
	.long	0x1208
	.uleb128 0x2e
	.long	.LASF318
	.byte	0x15
	.byte	0x2a
	.long	0x1208
	.uleb128 0x2e
	.long	.LASF319
	.byte	0x15
	.byte	0x2b
	.long	0x1208
	.uleb128 0x2e
	.long	.LASF320
	.byte	0x15
	.byte	0x3c
	.long	0x1095
	.uleb128 0x2e
	.long	.LASF321
	.byte	0x15
	.byte	0x43
	.long	0xe45
	.uleb128 0x2e
	.long	.LASF322
	.byte	0x15
	.byte	0x44
	.long	0x27f3
	.uleb128 0x6
	.byte	0x8
	.long	0x713
	.uleb128 0x2e
	.long	.LASF323
	.byte	0x15
	.byte	0x81
	.long	0x2804
	.uleb128 0x30
	.long	0x120e
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF157:
	.string	"xio_page_len"
.LASF29:
	.string	"cop_seq"
.LASF163:
	.string	"xio_bottom_name"
.LASF71:
	.string	"gp_sv"
.LASF200:
	.string	"Popped"
.LASF190:
	.string	"PerlIOl"
.LASF196:
	.string	"name"
.LASF326:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF136:
	.string	"XPVCV"
.LASF319:
	.string	"PL_stack_max"
.LASF276:
	.string	"XS_utf8_valid"
.LASF240:
	.string	"SVt_PVLV"
.LASF170:
	.string	"svt_get"
.LASF193:
	.string	"PerlIO_funcs"
.LASF212:
	.string	"Fill"
.LASF33:
	.string	"cop_io"
.LASF166:
	.string	"xio_type"
.LASF89:
	.string	"mg_flags"
.LASF21:
	.string	"op_targ"
.LASF187:
	.string	"flags"
.LASF278:
	.string	"XS_utf8_decode"
.LASF122:
	.string	"xhv_fill"
.LASF232:
	.string	"SVt_IV"
.LASF82:
	.string	"gp_file"
.LASF175:
	.string	"svt_copy"
.LASF167:
	.string	"xio_flags"
.LASF192:
	.string	"next"
.LASF238:
	.string	"SVt_PVMG"
.LASF202:
	.string	"Binmode"
.LASF273:
	.string	"XS_UNIVERSAL_VERSION"
.LASF248:
	.string	"xiou_dirp"
.LASF181:
	.string	"any_bool"
.LASF323:
	.string	"PL_curcop"
.LASF213:
	.string	"Error"
.LASF41:
	.string	"op_pmregexp"
.LASF250:
	.string	"PADLIST"
.LASF263:
	.string	"level"
.LASF58:
	.string	"precomp"
.LASF309:
	.string	"PL_dowarn"
.LASF118:
	.string	"xav_flags"
.LASF134:
	.string	"xgv_stash"
.LASF55:
	.string	"endp"
.LASF103:
	.string	"XPVNV"
.LASF259:
	.string	"funcs"
.LASF262:
	.string	"name_stash"
.LASF217:
	.string	"Get_bufsiz"
.LASF12:
	.string	"ssize_t"
.LASF304:
	.string	"argok"
.LASF191:
	.string	"_PerlIO"
.LASF321:
	.string	"PL_Sv"
.LASF237:
	.string	"SVt_PVNV"
.LASF141:
	.string	"xcv_xsub"
.LASF292:
	.string	"fail"
.LASF290:
	.string	"XS_PerlIO_get_layers"
.LASF85:
	.string	"mg_moremagic"
.LASF328:
	.string	"Perl_sv_derived_from"
.LASF303:
	.string	"namok"
.LASF78:
	.string	"gp_cv"
.LASF219:
	.string	"Get_cnt"
.LASF296:
	.string	"valp"
.LASF221:
	.string	"PerlIO"
.LASF275:
	.string	"XS_utf8_is_utf8"
.LASF100:
	.string	"XPVUV"
.LASF258:
	.string	"float"
.LASF124:
	.string	"xhv_keys"
.LASF57:
	.string	"substrs"
.LASF271:
	.string	"tmpXSoff"
.LASF169:
	.string	"mgvtbl"
.LASF144:
	.string	"xcv_file"
.LASF101:
	.string	"xpvuv"
.LASF314:
	.string	"PL_rehash_seed"
.LASF194:
	.string	"_PerlIO_funcs"
.LASF283:
	.string	"failok"
.LASF14:
	.string	"long long unsigned int"
.LASF318:
	.string	"PL_stack_base"
.LASF267:
	.string	"file"
.LASF52:
	.string	"REGEXP"
.LASF230:
	.string	"reg_data"
.LASF185:
	.string	"clone_params"
.LASF229:
	.string	"reg_substr_data"
.LASF308:
	.string	"XS_Internals_HvREHASH"
.LASF269:
	.string	"XS_UNIVERSAL_isa"
.LASF99:
	.string	"xiv_iv"
.LASF135:
	.string	"xgv_flags"
.LASF155:
	.string	"xio_lines"
.LASF209:
	.string	"Tell"
.LASF203:
	.string	"Getarg"
.LASF47:
	.string	"interpreter"
.LASF76:
	.string	"gp_hv"
.LASF94:
	.string	"xpv_pv"
.LASF129:
	.string	"XPVGV"
.LASF158:
	.string	"xio_lines_left"
.LASF25:
	.string	"op_private"
.LASF255:
	.string	"hek_hash"
.LASF31:
	.string	"cop_line"
.LASF241:
	.string	"SVt_PVAV"
.LASF130:
	.string	"xpvgv"
.LASF216:
	.string	"Get_base"
.LASF189:
	.string	"line_t"
.LASF13:
	.string	"size_t"
.LASF92:
	.string	"mg_len"
.LASF201:
	.string	"Open"
.LASF145:
	.string	"xcv_depth"
.LASF20:
	.string	"op_ppaddr"
.LASF162:
	.string	"xio_fmt_gv"
.LASF317:
	.string	"PL_curpad"
.LASF257:
	.string	"hek_key"
.LASF70:
	.string	"program"
.LASF73:
	.string	"gp_io"
.LASF127:
	.string	"xhv_pmroot"
.LASF223:
	.string	"PerlIO_list_s"
.LASF222:
	.string	"PerlIO_list_t"
.LASF119:
	.string	"XPVHV"
.LASF215:
	.string	"Setlinebuf"
.LASF293:
	.string	"input"
.LASF173:
	.string	"svt_clear"
.LASF239:
	.string	"SVt_PVBM"
.LASF312:
	.string	"PL_sv_no"
.LASF298:
	.string	"last"
.LASF154:
	.string	"xio_dirpu"
.LASF120:
	.string	"xpvhv"
.LASF38:
	.string	"op_pmreplroot"
.LASF15:
	.string	"long long int"
.LASF125:
	.string	"xhv_riter"
.LASF44:
	.string	"op_pmdynflags"
.LASF205:
	.string	"Read"
.LASF291:
	.string	"finish"
.LASF96:
	.string	"xpv_len"
.LASF10:
	.string	"char"
.LASF150:
	.string	"XPVIO"
.LASF179:
	.string	"any_iv"
.LASF186:
	.string	"stashes"
.LASF65:
	.string	"prelen"
.LASF97:
	.string	"XPVIV"
.LASF208:
	.string	"Seek"
.LASF72:
	.string	"gp_refcnt"
.LASF67:
	.string	"lastparen"
.LASF151:
	.string	"xpvio"
.LASF281:
	.string	"targ"
.LASF59:
	.string	"data"
.LASF22:
	.string	"op_type"
.LASF243:
	.string	"SVt_PVCV"
.LASF2:
	.string	"unsigned int"
.LASF98:
	.string	"xpviv"
.LASF311:
	.string	"PL_sv_undef"
.LASF62:
	.string	"sublen"
.LASF37:
	.string	"op_last"
.LASF253:
	.string	"hent_hek"
.LASF69:
	.string	"reganch"
.LASF225:
	.string	"regnode"
.LASF111:
	.string	"xpvav"
.LASF264:
	.string	"subgen"
.LASF231:
	.string	"SVt_NULL"
.LASF268:
	.string	"Perl_boot_core_UNIVERSAL"
.LASF199:
	.string	"Pushed"
.LASF60:
	.string	"subbeg"
.LASF19:
	.string	"op_sibling"
.LASF188:
	.string	"proto_perl"
.LASF84:
	.string	"magic"
.LASF252:
	.string	"hent_next"
.LASF302:
	.string	"flgsvp"
.LASF121:
	.string	"xhv_array"
.LASF307:
	.string	"XS_Internals_rehash_seed"
.LASF195:
	.string	"fsize"
.LASF287:
	.string	"XS_Internals_SvREFCNT"
.LASF159:
	.string	"xio_top_name"
.LASF68:
	.string	"lastcloseparen"
.LASF270:
	.string	"mark"
.LASF227:
	.string	"next_off"
.LASF86:
	.string	"mg_virtual"
.LASF32:
	.string	"cop_warnings"
.LASF286:
	.string	"XS_Internals_SvREADONLY"
.LASF34:
	.string	"PMOP"
.LASF17:
	.string	"STRLEN"
.LASF277:
	.string	"XS_utf8_encode"
.LASF197:
	.string	"size"
.LASF128:
	.string	"xhv_name"
.LASF91:
	.string	"mg_ptr"
.LASF313:
	.string	"PL_sv_yes"
.LASF143:
	.string	"xcv_gv"
.LASF152:
	.string	"xio_ifp"
.LASF26:
	.string	"cop_label"
.LASF48:
	.string	"broiled"
.LASF233:
	.string	"SVt_NV"
.LASF18:
	.string	"op_next"
.LASF198:
	.string	"kind"
.LASF77:
	.string	"gp_egv"
.LASF54:
	.string	"startp"
.LASF266:
	.string	"basestash"
.LASF265:
	.string	"items"
.LASF28:
	.string	"cop_filegv"
.LASF49:
	.string	"sv_any"
.LASF224:
	.string	"array"
.LASF27:
	.string	"cop_stash"
.LASF45:
	.string	"op_pmstash"
.LASF254:
	.string	"hent_val"
.LASF156:
	.string	"xio_page"
.LASF249:
	.string	"xiou_any"
.LASF322:
	.string	"PL_Xpv"
.LASF245:
	.string	"SVt_PVFM"
.LASF183:
	.string	"any_dxptr"
.LASF83:
	.string	"MAGIC"
.LASF172:
	.string	"svt_len"
.LASF324:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF51:
	.string	"sv_flags"
.LASF46:
	.string	"PerlInterpreter"
.LASF285:
	.string	"XS_utf8_unicode_to_native"
.LASF315:
	.string	"PL_stack_sp"
.LASF116:
	.string	"xav_alloc"
.LASF126:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF310:
	.string	"PL_sub_generation"
.LASF90:
	.string	"mg_obj"
.LASF74:
	.string	"gp_form"
.LASF36:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF139:
	.string	"xcv_start"
.LASF149:
	.string	"xcv_outside_seq"
.LASF300:
	.string	"namsvp"
.LASF112:
	.string	"xav_array"
.LASF107:
	.string	"xpvmg"
.LASF165:
	.string	"xio_subprocess"
.LASF61:
	.string	"offsets"
.LASF115:
	.string	"xof_off"
.LASF282:
	.string	"XS_utf8_downgrade"
.LASF244:
	.string	"SVt_PVGV"
.LASF235:
	.string	"SVt_PV"
.LASF272:
	.string	"XS_UNIVERSAL_can"
.LASF256:
	.string	"hek_len"
.LASF168:
	.string	"MGVTBL"
.LASF16:
	.string	"double"
.LASF137:
	.string	"xpvcv"
.LASF30:
	.string	"cop_arybase"
.LASF63:
	.string	"refcnt"
.LASF117:
	.string	"xav_arylen"
.LASF138:
	.string	"xcv_stash"
.LASF133:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF301:
	.string	"argsvp"
.LASF140:
	.string	"xcv_root"
.LASF220:
	.string	"Set_ptrcnt"
.LASF53:
	.string	"regexp"
.LASF218:
	.string	"Get_ptr"
.LASF147:
	.string	"xcv_outside"
.LASF294:
	.string	"details"
.LASF207:
	.string	"Write"
.LASF42:
	.string	"op_pmflags"
.LASF123:
	.string	"xhv_max"
.LASF146:
	.string	"xcv_padlist"
.LASF242:
	.string	"SVt_PVHV"
.LASF108:
	.string	"xmg_magic"
.LASF104:
	.string	"xpvnv"
.LASF325:
	.string	"universal.c"
.LASF214:
	.string	"Clearerr"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF178:
	.string	"any_i32"
.LASF171:
	.string	"svt_set"
.LASF184:
	.string	"CLONE_PARAMS"
.LASF161:
	.string	"xio_fmt_name"
.LASF23:
	.string	"op_seq"
.LASF228:
	.string	"__dirstream"
.LASF180:
	.string	"any_long"
.LASF284:
	.string	"XS_utf8_native_to_unicode"
.LASF261:
	.string	"stash"
.LASF35:
	.string	"pmop"
.LASF113:
	.string	"xav_fill"
.LASF39:
	.string	"op_pmreplstart"
.LASF260:
	.string	"PerlIO_pair_t"
.LASF226:
	.string	"type"
.LASF246:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF87:
	.string	"mg_private"
.LASF131:
	.string	"xgv_gp"
.LASF40:
	.string	"op_pmnext"
.LASF236:
	.string	"SVt_PVIV"
.LASF234:
	.string	"SVt_RV"
.LASF50:
	.string	"sv_refcnt"
.LASF105:
	.string	"xnv_nv"
.LASF297:
	.string	"klen"
.LASF206:
	.string	"Unread"
.LASF327:
	.string	"S_isa_lookup"
.LASF102:
	.string	"xuv_uv"
.LASF148:
	.string	"xcv_flags"
.LASF80:
	.string	"gp_flags"
.LASF24:
	.string	"op_flags"
.LASF88:
	.string	"mg_type"
.LASF210:
	.string	"Close"
.LASF176:
	.string	"svt_dup"
.LASF164:
	.string	"xio_bottom_gv"
.LASF95:
	.string	"xpv_cur"
.LASF177:
	.string	"any_ptr"
.LASF306:
	.string	"XS_Internals_hash_seed"
.LASF110:
	.string	"XPVAV"
.LASF8:
	.string	"__off_t"
.LASF288:
	.string	"XS_Internals_hv_clear_placehold"
.LASF114:
	.string	"xav_max"
.LASF174:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF251:
	.string	"PADOFFSET"
.LASF11:
	.string	"off_t"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"op_pmpermflags"
.LASF274:
	.string	"undef"
.LASF280:
	.string	"XS_utf8_upgrade"
.LASF109:
	.string	"xmg_stash"
.LASF211:
	.string	"Flush"
.LASF299:
	.string	"nitem"
.LASF75:
	.string	"gp_av"
.LASF79:
	.string	"gp_cvgen"
.LASF81:
	.string	"gp_line"
.LASF64:
	.string	"minlen"
.LASF93:
	.string	"xrv_rv"
.LASF142:
	.string	"xcv_xsubany"
.LASF247:
	.string	"cv_flags_t"
.LASF305:
	.string	"flgok"
.LASF153:
	.string	"xio_ofp"
.LASF295:
	.string	"varp"
.LASF289:
	.string	"XS_Regexp_DESTROY"
.LASF320:
	.string	"PL_markstack_ptr"
.LASF56:
	.string	"regstclass"
.LASF204:
	.string	"Fileno"
.LASF160:
	.string	"xio_top_gv"
.LASF66:
	.string	"nparens"
.LASF279:
	.string	"RETVAL"
.LASF106:
	.string	"XPVMG"
.LASF182:
	.string	"any_dptr"
.LASF316:
	.string	"PL_op"
.LASF132:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
