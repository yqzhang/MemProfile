	.file	"mg.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 mg.c -mtune=generic
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
	.type	S_save_magic, @function
S_save_magic:
.LFB2:
	.file 1 "mg.c"
	.loc 1 90 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mgs_ix, mgs_ix
	movq	%rsi, -32(%rbp)	# sv, sv
	.loc 1 94 0
	movl	-20(%rbp), %eax	# mgs_ix, tmp75
	cltq
	movq	%rax, %rsi	# D.15529,
	movl	$restore_magic, %edi	#,
	call	Perl_save_destructor_x	#
	.loc 1 96 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.0
	movl	-20(%rbp), %eax	# mgs_ix, tmp76
	cltq
	addq	%rdx, %rax	# PL_savestack.0, tmp77
	movq	%rax, -8(%rbp)	# tmp77, mgs
	.loc 1 97 0
	movq	-8(%rbp), %rax	# mgs, tmp78
	movq	-32(%rbp), %rdx	# sv, tmp79
	movq	%rdx, (%rax)	# tmp79, mgs_6->mgs_sv
	.loc 1 98 0
	movq	-32(%rbp), %rax	# sv, tmp80
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.15531
	andl	$8445952, %eax	#, D.15531
	movl	%eax, %edx	# D.15531, D.15531
	movq	-8(%rbp), %rax	# mgs, tmp81
	movl	%edx, 8(%rax)	# D.15531, mgs_6->mgs_flags
	.loc 1 99 0
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.1
	movq	-8(%rbp), %rax	# mgs, tmp82
	movl	%edx, 12(%rax)	# PL_savestack_ix.1, mgs_6->mgs_ss_ix
	.loc 1 101 0
	movq	-32(%rbp), %rax	# sv, tmp83
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.15531
	andb	$31, %ah	#, D.15531
	movl	%eax, %edx	# D.15531, D.15531
	movq	-32(%rbp), %rax	# sv, tmp84
	movl	%edx, 12(%rax)	# D.15531, sv_7(D)->sv_flags
	.loc 1 102 0
	movq	-32(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.15531
	andl	$-8388609, %eax	#, D.15531
	movl	%eax, %edx	# D.15531, D.15531
	movq	-32(%rbp), %rax	# sv, tmp86
	movl	%edx, 12(%rax)	# D.15531, sv_7(D)->sv_flags
	.loc 1 103 0
	movq	-32(%rbp), %rax	# sv, tmp87
	movl	12(%rax), %edx	# sv_7(D)->sv_flags, D.15531
	movq	-32(%rbp), %rax	# sv, tmp88
	movl	12(%rax), %eax	# sv_7(D)->sv_flags, D.15531
	andl	$100663296, %eax	#, D.15531
	shrl	$8, %eax	#, D.15531
	orl	%eax, %edx	# D.15531, D.15531
	movq	-32(%rbp), %rax	# sv, tmp89
	movl	%edx, 12(%rax)	# D.15531, sv_7(D)->sv_flags
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_save_magic, .-S_save_magic
	.globl	Perl_mg_magical
	.type	Perl_mg_magical, @function
Perl_mg_magical:
.LFB3:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 118 0
	movq	-24(%rbp), %rax	# sv, tmp74
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15532
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_3].xmg_magic, tmp75
	movq	%rax, -16(%rbp)	# tmp75, mg
	jmp	.L3	#
.L8:
.LBB2:
	.loc 1 119 0
	movq	-16(%rbp), %rax	# mg, tmp76
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp77
	movq	%rax, -8(%rbp)	# tmp77, vtbl
	.loc 1 120 0
	cmpq	$0, -8(%rbp)	#, vtbl
	je	.L4	#,
	.loc 1 121 0
	movq	-8(%rbp), %rax	# vtbl, tmp78
	movq	(%rax), %rax	# vtbl_5->svt_get, D.15533
	testq	%rax, %rax	# D.15533
	je	.L5	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# mg, tmp79
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.15534
	movzbl	%al, %eax	# D.15534, D.15535
	andl	$4, %eax	#, D.15535
	testl	%eax, %eax	# D.15535
	jne	.L5	#,
	.loc 1 122 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp80
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15536
	orb	$32, %ah	#, D.15536
	movl	%eax, %edx	# D.15536, D.15536
	movq	-24(%rbp), %rax	# sv, tmp81
	movl	%edx, 12(%rax)	# D.15536, sv_2(D)->sv_flags
.L5:
	.loc 1 123 0
	movq	-8(%rbp), %rax	# vtbl, tmp82
	movq	8(%rax), %rax	# vtbl_5->svt_set, D.15533
	testq	%rax, %rax	# D.15533
	je	.L6	#,
	.loc 1 124 0
	movq	-24(%rbp), %rax	# sv, tmp83
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15536
	orb	$64, %ah	#, D.15536
	movl	%eax, %edx	# D.15536, D.15536
	movq	-24(%rbp), %rax	# sv, tmp84
	movl	%edx, 12(%rax)	# D.15536, sv_2(D)->sv_flags
.L6:
	.loc 1 125 0
	movq	-24(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15536
	andl	$24576, %eax	#, D.15536
	testl	%eax, %eax	# D.15536
	je	.L7	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# vtbl, tmp86
	movq	24(%rax), %rax	# vtbl_5->svt_clear, D.15533
	testq	%rax, %rax	# D.15533
	je	.L4	#,
.L7:
	.loc 1 126 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp87
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15536
	orb	$128, %ah	#, D.15536
	movl	%eax, %edx	# D.15536, D.15536
	movq	-24(%rbp), %rax	# sv, tmp88
	movl	%edx, 12(%rax)	# D.15536, sv_2(D)->sv_flags
.L4:
.LBE2:
	.loc 1 118 0
	movq	-16(%rbp), %rax	# mg, tmp89
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp90
	movq	%rax, -16(%rbp)	# tmp90, mg
.L3:
	.loc 1 118 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, mg
	jne	.L8	#,
	.loc 1 129 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_mg_magical, .-Perl_mg_magical
	.globl	Perl_mg_get
	.type	Perl_mg_get, @function
Perl_mg_get:
.LFB4:
	.loc 1 141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# sv, sv
	.loc 1 142 0
	movl	$0, -52(%rbp)	#, have_new
	.loc 1 144 0
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -48(%rbp)	# tmp98, mgs_ix
	.loc 1 145 0
	movq	-72(%rbp), %rax	# sv, tmp99
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15537
	andl	$2048, %eax	#, tmp100
	movl	%eax, -44(%rbp)	# tmp100, was_temp
	.loc 1 153 0
	movq	-72(%rbp), %rax	# sv, tmp101
	movq	%rax, PL_Sv(%rip)	# tmp101, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.3
	testq	%rax, %rax	# PL_Sv.3
	je	.L11	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.4
	movl	8(%rax), %edx	# PL_Sv.4_16->sv_refcnt, D.15537
	addl	$1, %edx	#, D.15537
	movl	%edx, 8(%rax)	# D.15537, PL_Sv.4_16->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.4_16->sv_refcnt, D.15537
	testl	%eax, %eax	# D.15537
	je	.L11	#,
	.loc 1 153 0
	nop
.L11:
	.loc 1 153 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.5
	movq	%rax, %rdi	# PL_Sv.5,
	call	Perl_sv_2mortal	#
	.loc 1 154 0 is_stmt 1 discriminator 4
	cmpl	$0, -44(%rbp)	#, was_temp
	jne	.L12	#,
	.loc 1 155 0
	movq	-72(%rbp), %rax	# sv, tmp102
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15537
	andb	$247, %ah	#, D.15537
	movl	%eax, %edx	# D.15537, D.15537
	movq	-72(%rbp), %rax	# sv, tmp103
	movl	%edx, 12(%rax)	# D.15537, sv_11(D)->sv_flags
.L12:
	.loc 1 158 0
	movq	-72(%rbp), %rdx	# sv, tmp104
	movl	-48(%rbp), %eax	# mgs_ix, tmp105
	movq	%rdx, %rsi	# tmp104,
	movl	%eax, %edi	# tmp105,
	call	S_save_magic	#
	.loc 1 164 0
	movq	-72(%rbp), %rax	# sv, tmp106
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.15539
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_25].xmg_magic, tmp107
	movq	%rax, -16(%rbp)	# tmp107, mg
	movq	-16(%rbp), %rax	# mg, tmp108
	movq	%rax, -32(%rbp)	# tmp108, head
	movq	-32(%rbp), %rax	# head, tmp109
	movq	%rax, -24(%rbp)	# tmp109, cur
	movq	-24(%rbp), %rax	# cur, tmp110
	movq	%rax, -40(%rbp)	# tmp110, newmg
	.loc 1 165 0
	jmp	.L13	#
.L18:
.LBB3:
	.loc 1 166 0
	movq	-16(%rbp), %rax	# mg, tmp111
	movq	8(%rax), %rax	# mg_8->mg_virtual, tmp112
	movq	%rax, -8(%rbp)	# tmp112, vtbl
	.loc 1 168 0
	movq	-16(%rbp), %rax	# mg, tmp113
	movzbl	19(%rax), %eax	# mg_8->mg_flags, D.15540
	movzbl	%al, %eax	# D.15540, D.15538
	andl	$4, %eax	#, D.15538
	testl	%eax, %eax	# D.15538
	jne	.L14	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, vtbl
	je	.L14	#,
	movq	-8(%rbp), %rax	# vtbl, tmp114
	movq	(%rax), %rax	# vtbl_30->svt_get, D.15541
	testq	%rax, %rax	# D.15541
	je	.L14	#,
	.loc 1 169 0 is_stmt 1
	movq	-8(%rbp), %rax	# vtbl, tmp115
	movq	(%rax), %rax	# vtbl_30->svt_get, D.15541
	movq	-16(%rbp), %rcx	# mg, tmp116
	movq	-72(%rbp), %rdx	# sv, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rdx, %rdi	# tmp117,
	call	*%rax	# D.15541
	.loc 1 173 0
	movq	-72(%rbp), %rax	# sv, tmp118
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.15539
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_36].xmg_magic, D.15542
	testq	%rax, %rax	# D.15542
	jne	.L15	#,
	.loc 1 174 0
	jmp	.L16	#
.L15:
	.loc 1 177 0
	movq	-16(%rbp), %rax	# mg, tmp119
	movzbl	19(%rax), %eax	# mg_8->mg_flags, D.15540
	movzbl	%al, %eax	# D.15540, D.15538
	andl	$4, %eax	#, D.15538
	testl	%eax, %eax	# D.15538
	je	.L14	#,
	.loc 1 178 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.6
	movl	-48(%rbp), %eax	# mgs_ix, tmp120
	cltq
	addq	%rdx, %rax	# PL_savestack.6, D.15544
	movl	$0, 8(%rax)	#, _43->mgs_flags
.L14:
	.loc 1 181 0
	movq	-16(%rbp), %rax	# mg, tmp121
	movq	(%rax), %rax	# mg_8->mg_moremagic, tmp122
	movq	%rax, -16(%rbp)	# tmp122, mg
	.loc 1 183 0
	cmpl	$0, -52(%rbp)	#, have_new
	je	.L17	#,
	.loc 1 186 0
	movq	-16(%rbp), %rax	# mg, tmp123
	cmpq	-32(%rbp), %rax	# head, tmp123
	jne	.L17	#,
	.loc 1 187 0
	movl	$0, -52(%rbp)	#, have_new
	.loc 1 188 0
	movq	-24(%rbp), %rax	# cur, tmp124
	movq	%rax, -16(%rbp)	# tmp124, mg
	.loc 1 189 0
	movq	-40(%rbp), %rax	# newmg, tmp125
	movq	%rax, -32(%rbp)	# tmp125, head
.L17:
	.loc 1 194 0
	cmpl	$0, -52(%rbp)	#, have_new
	jne	.L13	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp126
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.15539
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_48].xmg_magic, tmp127
	movq	%rax, -40(%rbp)	# tmp127, newmg
	movq	-40(%rbp), %rax	# newmg, tmp128
	cmpq	-32(%rbp), %rax	# head, tmp128
	je	.L13	#,
	.loc 1 195 0 is_stmt 1
	movl	$1, -52(%rbp)	#, have_new
	.loc 1 196 0
	movq	-16(%rbp), %rax	# mg, tmp129
	movq	%rax, -24(%rbp)	# tmp129, cur
	.loc 1 197 0
	movq	-40(%rbp), %rax	# newmg, tmp130
	movq	%rax, -16(%rbp)	# tmp130, mg
.L13:
.LBE3:
	.loc 1 165 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, mg
	jne	.L18	#,
.L16:
	.loc 1 201 0
	movl	-48(%rbp), %eax	# mgs_ix, tmp131
	cltq
	movq	%rax, %rdi	# D.15539,
	call	restore_magic	#
	.loc 1 203 0
	movq	-72(%rbp), %rax	# sv, tmp132
	movl	8(%rax), %eax	# sv_11(D)->sv_refcnt, D.15537
	cmpl	$1, %eax	#, D.15537
	jne	.L19	#,
	.loc 1 206 0
	movq	-72(%rbp), %rax	# sv, tmp133
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15537
	andl	$1223753727, %eax	#, D.15537
	movl	%eax, %edx	# D.15537, D.15537
	movq	-72(%rbp), %rax	# sv, tmp134
	movl	%edx, 12(%rax)	# D.15537, sv_11(D)->sv_flags
	movq	-72(%rbp), %rax	# sv, tmp135
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15537
	andl	$2097152, %eax	#, D.15537
	testl	%eax, %eax	# D.15537
	je	.L19	#,
	.loc 1 206 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp136
	movq	%rax, %rdi	# tmp136,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15538
	je	.L19	#,
	.loc 1 206 0
	nop
.L19:
	.loc 1 208 0 is_stmt 1
	movl	$0, %eax	#, D.15538
	.loc 1 209 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_mg_get, .-Perl_mg_get
	.globl	Perl_mg_set
	.type	Perl_mg_set, @function
Perl_mg_set:
.LFB5:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	.loc 1 226 0
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -28(%rbp)	# tmp74, mgs_ix
	.loc 1 227 0
	movq	-40(%rbp), %rdx	# sv, tmp75
	movl	-28(%rbp), %eax	# mgs_ix, tmp76
	movq	%rdx, %rsi	# tmp75,
	movl	%eax, %edi	# tmp76,
	call	S_save_magic	#
	.loc 1 229 0
	movq	-40(%rbp), %rax	# sv, tmp77
	movq	(%rax), %rax	# sv_3(D)->sv_any, D.15546
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_4].xmg_magic, tmp78
	movq	%rax, -24(%rbp)	# tmp78, mg
	jmp	.L23	#
.L26:
.LBB4:
	.loc 1 230 0
	movq	-24(%rbp), %rax	# mg, tmp79
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp80
	movq	%rax, -16(%rbp)	# tmp80, vtbl
	.loc 1 231 0
	movq	-24(%rbp), %rax	# mg, tmp81
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp82
	movq	%rax, -8(%rbp)	# tmp82, nextmg
	.loc 1 232 0
	movq	-24(%rbp), %rax	# mg, tmp83
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.15547
	movzbl	%al, %eax	# D.15547, D.15548
	andl	$4, %eax	#, D.15548
	testl	%eax, %eax	# D.15548
	je	.L24	#,
	.loc 1 233 0
	movq	-24(%rbp), %rax	# mg, tmp84
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.15547
	andl	$-5, %eax	#, D.15547
	movl	%eax, %edx	# D.15547, D.15547
	movq	-24(%rbp), %rax	# mg, tmp85
	movb	%dl, 19(%rax)	# D.15547, mg_1->mg_flags
	.loc 1 234 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.8
	movl	-28(%rbp), %eax	# mgs_ix, tmp86
	cltq
	addq	%rdx, %rax	# PL_savestack.8, D.15550
	movl	$0, 8(%rax)	#, _15->mgs_flags
.L24:
	.loc 1 236 0
	cmpq	$0, -16(%rbp)	#, vtbl
	je	.L25	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# vtbl, tmp87
	movq	8(%rax), %rax	# vtbl_6->svt_set, D.15551
	testq	%rax, %rax	# D.15551
	je	.L25	#,
	.loc 1 237 0 is_stmt 1
	movq	-16(%rbp), %rax	# vtbl, tmp88
	movq	8(%rax), %rax	# vtbl_6->svt_set, D.15551
	movq	-24(%rbp), %rcx	# mg, tmp89
	movq	-40(%rbp), %rdx	# sv, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rdx, %rdi	# tmp90,
	call	*%rax	# D.15551
.L25:
.LBE4:
	.loc 1 229 0
	movq	-8(%rbp), %rax	# nextmg, tmp91
	movq	%rax, -24(%rbp)	# tmp91, mg
.L23:
	.loc 1 229 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, mg
	jne	.L26	#,
	.loc 1 240 0 is_stmt 1
	movl	-28(%rbp), %eax	# mgs_ix, tmp92
	cltq
	movq	%rax, %rdi	# D.15546,
	call	restore_magic	#
	.loc 1 241 0
	movl	$0, %eax	#, D.15548
	.loc 1 242 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_mg_set, .-Perl_mg_set
	.globl	Perl_mg_length
	.type	Perl_mg_length, @function
Perl_mg_length:
.LFB6:
	.loc 1 254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	.loc 1 258 0
	movq	-56(%rbp), %rax	# sv, tmp90
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15554
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_5].xmg_magic, tmp91
	movq	%rax, -24(%rbp)	# tmp91, mg
	jmp	.L29	#
.L32:
.LBB5:
	.loc 1 259 0
	movq	-24(%rbp), %rax	# mg, tmp92
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp93
	movq	%rax, -16(%rbp)	# tmp93, vtbl
	.loc 1 260 0
	cmpq	$0, -16(%rbp)	#, vtbl
	je	.L30	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# vtbl, tmp94
	movq	16(%rax), %rax	# vtbl_7->svt_len, D.15555
	testq	%rax, %rax	# D.15555
	je	.L30	#,
.LBB6:
	.loc 1 263 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -36(%rbp)	# tmp95, mgs_ix
	.loc 1 264 0
	movq	-56(%rbp), %rdx	# sv, tmp96
	movl	-36(%rbp), %eax	# mgs_ix, tmp97
	movq	%rdx, %rsi	# tmp96,
	movl	%eax, %edi	# tmp97,
	call	S_save_magic	#
	.loc 1 266 0
	movq	-16(%rbp), %rax	# vtbl, tmp98
	movq	16(%rax), %rax	# vtbl_7->svt_len, D.15555
	movq	-24(%rbp), %rcx	# mg, tmp99
	movq	-56(%rbp), %rdx	# sv, tmp100
	movq	%rcx, %rsi	# tmp99,
	movq	%rdx, %rdi	# tmp100,
	call	*%rax	# D.15555
	movl	%eax, %eax	# D.15556, len.9
	movq	%rax, -32(%rbp)	# len.9, len
	.loc 1 267 0
	movl	-36(%rbp), %eax	# mgs_ix, tmp101
	cltq
	movq	%rax, %rdi	# D.15554,
	call	restore_magic	#
	.loc 1 268 0
	movq	-32(%rbp), %rax	# len, len.10
	jmp	.L38	#
.L30:
.LBE6:
.LBE5:
	.loc 1 258 0
	movq	-24(%rbp), %rax	# mg, tmp102
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp103
	movq	%rax, -24(%rbp)	# tmp103, mg
.L29:
	.loc 1 258 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, mg
	jne	.L32	#,
	.loc 1 272 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp104
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.15556
	andl	$536870912, %eax	#, D.15556
	testl	%eax, %eax	# D.15556
	je	.L33	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.11
	movzbl	37(%rax), %eax	# PL_curcop.11_20->op_private, D.15558
	movzbl	%al, %eax	# D.15558, D.15559
	andl	$8, %eax	#, D.15559
	testl	%eax, %eax	# D.15559
	jne	.L33	#,
.LBB7:
	.loc 1 274 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.15556
	andl	$262144, %eax	#, D.15556
	testl	%eax, %eax	# D.15556
	je	.L34	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp106
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15554
	movq	8(%rax), %rax	# MEM[(struct XPV *)_26].xpv_cur, len.13
	movq	%rax, -32(%rbp)	# len.13, len
	movq	-56(%rbp), %rax	# sv, tmp107
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15554
	movq	(%rax), %rax	# MEM[(struct XPV *)_28].xpv_pv, iftmp.12
	jmp	.L35	#
.L34:
	.loc 1 274 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp108
	movq	-56(%rbp), %rax	# sv, tmp109
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_2pv_flags	#
.L35:
	.loc 1 274 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.12, s
	.loc 1 275 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rdx	# len, len.14
	movq	-8(%rbp), %rax	# s, tmp110
	addq	%rax, %rdx	# tmp110, D.15560
	movq	-8(%rbp), %rax	# s, tmp111
	movq	%rdx, %rsi	# D.15560,
	movq	%rax, %rdi	# tmp111,
	call	Perl_utf8_length	#
	movq	%rax, -32(%rbp)	# len.15, len
.LBE7:
	.loc 1 273 0 discriminator 3
	jmp	.L36	#
.L33:
	.loc 1 278 0
	movq	-56(%rbp), %rax	# sv, tmp112
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.15556
	andl	$262144, %eax	#, D.15556
	testl	%eax, %eax	# D.15556
	je	.L37	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp113
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15554
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, len.16
	movq	%rax, -32(%rbp)	# len.16, len
	jmp	.L36	#
.L37:
	.loc 1 278 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp115
	movq	-56(%rbp), %rax	# sv, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_2pv_flags	#
.L36:
	.loc 1 279 0 is_stmt 1
	movq	-32(%rbp), %rax	# len, len.17
.L38:
	.loc 1 280 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_mg_length, .-Perl_mg_length
	.section	.rodata
.LC0:
	.string	"Size magic not implemented"
	.text
	.globl	Perl_mg_size
	.type	Perl_mg_size, @function
Perl_mg_size:
.LFB7:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	.loc 1 288 0
	movq	-40(%rbp), %rax	# sv, tmp71
	movq	(%rax), %rax	# sv_3(D)->sv_any, D.15562
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_4].xmg_magic, tmp72
	movq	%rax, -16(%rbp)	# tmp72, mg
	jmp	.L40	#
.L43:
.LBB8:
	.loc 1 289 0
	movq	-16(%rbp), %rax	# mg, tmp73
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp74
	movq	%rax, -8(%rbp)	# tmp74, vtbl
	.loc 1 290 0
	cmpq	$0, -8(%rbp)	#, vtbl
	je	.L41	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# vtbl, tmp75
	movq	16(%rax), %rax	# vtbl_6->svt_len, D.15563
	testq	%rax, %rax	# D.15563
	je	.L41	#,
.LBB9:
	.loc 1 293 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -24(%rbp)	# tmp76, mgs_ix
	.loc 1 294 0
	movq	-40(%rbp), %rdx	# sv, tmp77
	movl	-24(%rbp), %eax	# mgs_ix, tmp78
	movq	%rdx, %rsi	# tmp77,
	movl	%eax, %edi	# tmp78,
	call	S_save_magic	#
	.loc 1 296 0
	movq	-8(%rbp), %rax	# vtbl, tmp79
	movq	16(%rax), %rax	# vtbl_6->svt_len, D.15563
	movq	-16(%rbp), %rcx	# mg, tmp80
	movq	-40(%rbp), %rdx	# sv, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rdx, %rdi	# tmp81,
	call	*%rax	# D.15563
	movl	%eax, -20(%rbp)	# D.15564, len
	.loc 1 297 0
	movl	-24(%rbp), %eax	# mgs_ix, tmp82
	cltq
	movq	%rax, %rdi	# D.15562,
	call	restore_magic	#
	.loc 1 298 0
	movl	-20(%rbp), %eax	# len, D.15561
	jmp	.L42	#
.L41:
.LBE9:
.LBE8:
	.loc 1 288 0
	movq	-16(%rbp), %rax	# mg, tmp83
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp84
	movq	%rax, -16(%rbp)	# tmp84, mg
.L40:
	.loc 1 288 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, mg
	jne	.L43	#,
	.loc 1 302 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_3(D)->sv_flags, D.15564
	movzbl	%al, %eax	# D.15564, D.15564
	cmpl	$10, %eax	#, D.15564
	jne	.L46	#,
	.loc 1 304 0
	movq	-40(%rbp), %rax	# sv, tmp86
	movq	(%rax), %rax	# MEM[(struct AV *)sv_3(D)].sv_any, D.15566
	movq	8(%rax), %rax	# _18->xav_fill, D.15565
	movl	%eax, -20(%rbp)	# D.15565, len
	.loc 1 305 0
	movl	-20(%rbp), %eax	# len, D.15561
	jmp	.L42	#
.L46:
	.loc 1 309 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 310 0
	nop
	.loc 1 312 0
	movl	$0, %eax	#, D.15561
.L42:
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_mg_size, .-Perl_mg_size
	.globl	Perl_mg_clear
	.type	Perl_mg_clear, @function
Perl_mg_clear:
.LFB8:
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	.loc 1 329 0
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -20(%rbp)	# tmp66, mgs_ix
	.loc 1 330 0
	movq	-40(%rbp), %rdx	# sv, tmp67
	movl	-20(%rbp), %eax	# mgs_ix, tmp68
	movq	%rdx, %rsi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	S_save_magic	#
	.loc 1 332 0
	movq	-40(%rbp), %rax	# sv, tmp69
	movq	(%rax), %rax	# sv_3(D)->sv_any, D.15568
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_4].xmg_magic, tmp70
	movq	%rax, -16(%rbp)	# tmp70, mg
	jmp	.L48	#
.L50:
.LBB10:
	.loc 1 333 0
	movq	-16(%rbp), %rax	# mg, tmp71
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp72
	movq	%rax, -8(%rbp)	# tmp72, vtbl
	.loc 1 336 0
	cmpq	$0, -8(%rbp)	#, vtbl
	je	.L49	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# vtbl, tmp73
	movq	24(%rax), %rax	# vtbl_6->svt_clear, D.15569
	testq	%rax, %rax	# D.15569
	je	.L49	#,
	.loc 1 337 0 is_stmt 1
	movq	-8(%rbp), %rax	# vtbl, tmp74
	movq	24(%rax), %rax	# vtbl_6->svt_clear, D.15569
	movq	-16(%rbp), %rcx	# mg, tmp75
	movq	-40(%rbp), %rdx	# sv, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rdx, %rdi	# tmp76,
	call	*%rax	# D.15569
.L49:
.LBE10:
	.loc 1 332 0
	movq	-16(%rbp), %rax	# mg, tmp77
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp78
	movq	%rax, -16(%rbp)	# tmp78, mg
.L48:
	.loc 1 332 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, mg
	jne	.L50	#,
	.loc 1 340 0 is_stmt 1
	movl	-20(%rbp), %eax	# mgs_ix, tmp79
	cltq
	movq	%rax, %rdi	# D.15568,
	call	restore_magic	#
	.loc 1 341 0
	movl	$0, %eax	#, D.15571
	.loc 1 342 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_mg_clear, .-Perl_mg_clear
	.globl	Perl_mg_find
	.type	Perl_mg_find, @function
Perl_mg_find:
.LFB9:
	.loc 1 354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sv, sv
	movl	%esi, -28(%rbp)	# type, type
	.loc 1 356 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L53	#,
	.loc 1 357 0
	movl	$0, %eax	#, D.15572
	jmp	.L54	#
.L53:
	.loc 1 358 0
	movq	-24(%rbp), %rax	# sv, tmp64
	movq	(%rax), %rax	# sv_3(D)->sv_any, D.15573
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_5].xmg_magic, tmp65
	movq	%rax, -8(%rbp)	# tmp65, mg
	jmp	.L55	#
.L57:
	.loc 1 359 0
	movq	-8(%rbp), %rax	# mg, tmp66
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.15574
	movsbl	%al, %eax	# D.15574, D.15575
	cmpl	-28(%rbp), %eax	# type, D.15575
	jne	.L56	#,
	.loc 1 360 0
	movq	-8(%rbp), %rax	# mg, D.15572
	jmp	.L54	#
.L56:
	.loc 1 358 0
	movq	-8(%rbp), %rax	# mg, tmp67
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp68
	movq	%rax, -8(%rbp)	# tmp68, mg
.L55:
	.loc 1 358 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, mg
	jne	.L57	#,
	.loc 1 362 0 is_stmt 1
	movl	$0, %eax	#, D.15572
.L54:
	.loc 1 363 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_mg_find, .-Perl_mg_find
	.globl	Perl_mg_copy
	.type	Perl_mg_copy, @function
Perl_mg_copy:
.LFB10:
	.loc 1 375 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# nsv, nsv
	movq	%rdx, -72(%rbp)	# key, key
	movl	%ecx, -76(%rbp)	# klen, klen
	.loc 1 376 0
	movl	$0, -36(%rbp)	#, count
	.loc 1 378 0
	movq	-56(%rbp), %rax	# sv, tmp84
	movq	(%rax), %rax	# sv_9(D)->sv_any, D.15576
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_10].xmg_magic, tmp85
	movq	%rax, -32(%rbp)	# tmp85, mg
	jmp	.L59	#
.L71:
.LBB11:
	.loc 1 379 0
	movq	-32(%rbp), %rax	# mg, tmp86
	movq	8(%rax), %rax	# mg_3->mg_virtual, tmp87
	movq	%rax, -24(%rbp)	# tmp87, vtbl
	.loc 1 380 0
	movq	-32(%rbp), %rax	# mg, tmp88
	movzbl	19(%rax), %eax	# mg_3->mg_flags, D.15577
	movzbl	%al, %eax	# D.15577, D.15578
	andl	$8, %eax	#, D.15578
	testl	%eax, %eax	# D.15578
	je	.L60	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vtbl, tmp89
	movq	40(%rax), %rax	# vtbl_12->svt_copy, D.15579
	testq	%rax, %rax	# D.15579
	je	.L60	#,
	.loc 1 381 0 is_stmt 1
	movq	-24(%rbp), %rax	# vtbl, tmp90
	movq	40(%rax), %rax	# vtbl_12->svt_copy, D.15579
	movl	-76(%rbp), %r8d	# klen, tmp91
	movq	-72(%rbp), %rcx	# key, tmp92
	movq	-64(%rbp), %rdx	# nsv, tmp93
	movq	-32(%rbp), %rsi	# mg, tmp94
	movq	-56(%rbp), %rdi	# sv, tmp95
	call	*%rax	# D.15579
	addl	%eax, -36(%rbp)	# D.15578, count
	jmp	.L61	#
.L60:
	.loc 1 383 0
	movq	-32(%rbp), %rax	# mg, tmp96
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	cmpb	$64, %al	#, D.15580
	jle	.L61	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp97
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	cmpb	$90, %al	#, D.15580
	jg	.L61	#,
	.loc 1 388 0 is_stmt 1
	movq	-32(%rbp), %rax	# mg, tmp98
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	.loc 1 384 0
	cmpb	$64, %al	#, D.15580
	jle	.L62	#,
	.loc 1 388 0
	movq	-32(%rbp), %rax	# mg, tmp99
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	cmpb	$90, %al	#, D.15580
	jg	.L62	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp100
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	movsbl	%al, %eax	# D.15580, D.15578
	.loc 1 384 0 is_stmt 1 discriminator 1
	leal	32(%rax), %ebx	#, iftmp.18
	jmp	.L63	#
.L62:
	.loc 1 388 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp101
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	.loc 1 384 0 discriminator 1
	movsbl	%al, %ebx	# D.15580, iftmp.18
.L63:
	.loc 1 385 0 discriminator 2
	movq	-32(%rbp), %rax	# mg, tmp102
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	.loc 1 384 0 discriminator 2
	cmpb	$80, %al	#, D.15580
	jne	.L64	#,
	.loc 1 385 0
	movq	-32(%rbp), %rax	# mg, tmp103
	movq	24(%rax), %rax	# mg_3->mg_obj, D.15581
	testq	%rax, %rax	# D.15581
	je	.L65	#,
	.loc 1 385 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp104
	movq	24(%rax), %rax	# mg_3->mg_obj, iftmp.20
	jmp	.L67	#
.L65:
	.loc 1 385 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15581,
	call	Perl_sv_2mortal	#
	jmp	.L67	#
.L64:
	.loc 1 386 0 is_stmt 1
	movq	-32(%rbp), %rax	# mg, tmp106
	movzbl	18(%rax), %eax	# mg_3->mg_type, D.15580
	.loc 1 387 0
	cmpb	$68, %al	#, D.15580
	jne	.L68	#,
	.loc 1 386 0
	movq	-32(%rbp), %rax	# mg, tmp107
	movq	24(%rax), %rax	# mg_3->mg_obj, D.15581
	testq	%rax, %rax	# D.15581
	jne	.L69	#,
.L68:
	.loc 1 387 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp108
	movq	24(%rax), %rax	# mg_3->mg_obj, iftmp.21
	jmp	.L67	#
.L69:
	.loc 1 387 0 is_stmt 0
	movq	-56(%rbp), %rax	# sv, iftmp.21
.L67:
	.loc 1 384 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %ecx	# klen, tmp109
	movq	-72(%rbp), %rdx	# key, tmp110
	movq	-64(%rbp), %rdi	# nsv, tmp111
	movl	%ecx, %r8d	# tmp109,
	movq	%rdx, %rcx	# tmp110,
	movl	%ebx, %edx	# iftmp.18,
	movq	%rax, %rsi	# iftmp.19,
	call	Perl_sv_magic	#
	.loc 1 389 0 discriminator 3
	addl	$1, -36(%rbp)	#, count
.L61:
.LBE11:
	.loc 1 378 0
	movq	-32(%rbp), %rax	# mg, tmp112
	movq	(%rax), %rax	# mg_3->mg_moremagic, tmp113
	movq	%rax, -32(%rbp)	# tmp113, mg
.L59:
	.loc 1 378 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, mg
	jne	.L71	#,
	.loc 1 392 0 is_stmt 1
	movl	-36(%rbp), %eax	# count, D.15578
	.loc 1 393 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_mg_copy, .-Perl_mg_copy
	.globl	Perl_mg_free
	.type	Perl_mg_free, @function
Perl_mg_free:
.LFB11:
	.loc 1 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	.loc 1 408 0
	movq	-40(%rbp), %rax	# sv, tmp76
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15582
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_3].xmg_magic, tmp77
	movq	%rax, -24(%rbp)	# tmp77, mg
	jmp	.L74	#
.L80:
.LBB12:
	.loc 1 409 0
	movq	-24(%rbp), %rax	# mg, tmp78
	movq	8(%rax), %rax	# mg_1->mg_virtual, tmp79
	movq	%rax, -16(%rbp)	# tmp79, vtbl
	.loc 1 410 0
	movq	-24(%rbp), %rax	# mg, tmp80
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp81
	movq	%rax, -8(%rbp)	# tmp81, moremagic
	.loc 1 411 0
	cmpq	$0, -16(%rbp)	#, vtbl
	je	.L75	#,
	.loc 1 411 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# vtbl, tmp82
	movq	32(%rax), %rax	# vtbl_5->svt_free, D.15583
	testq	%rax, %rax	# D.15583
	je	.L75	#,
	.loc 1 412 0 is_stmt 1
	movq	-16(%rbp), %rax	# vtbl, tmp83
	movq	32(%rax), %rax	# vtbl_5->svt_free, D.15583
	movq	-24(%rbp), %rcx	# mg, tmp84
	movq	-40(%rbp), %rdx	# sv, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rdx, %rdi	# tmp85,
	call	*%rax	# D.15583
.L75:
	.loc 1 413 0
	movq	-24(%rbp), %rax	# mg, tmp86
	movq	32(%rax), %rax	# mg_1->mg_ptr, D.15584
	testq	%rax, %rax	# D.15584
	je	.L76	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp87
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.15585
	cmpb	$103, %al	#, D.15585
	je	.L76	#,
	.loc 1 414 0 is_stmt 1
	movq	-24(%rbp), %rax	# mg, tmp88
	movl	40(%rax), %eax	# mg_1->mg_len, D.15586
	testl	%eax, %eax	# D.15586
	jg	.L77	#,
	.loc 1 414 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp89
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.15585
	cmpb	$119, %al	#, D.15585
	jne	.L78	#,
.L77:
	.loc 1 415 0 is_stmt 1
	movq	-24(%rbp), %rax	# mg, tmp90
	movq	32(%rax), %rax	# mg_1->mg_ptr, D.15584
	movq	%rax, %rdi	# D.15584,
	call	Perl_safesysfree	#
	jmp	.L76	#
.L78:
	.loc 1 416 0
	movq	-24(%rbp), %rax	# mg, tmp91
	movl	40(%rax), %eax	# mg_1->mg_len, D.15586
	cmpl	$-2, %eax	#, D.15586
	jne	.L76	#,
	.loc 1 417 0
	movq	-24(%rbp), %rax	# mg, tmp92
	movq	32(%rax), %rax	# mg_1->mg_ptr, D.15584
	movq	%rax, %rdi	# D.15584,
	call	Perl_sv_free	#
.L76:
	.loc 1 419 0
	movq	-24(%rbp), %rax	# mg, tmp93
	movzbl	19(%rax), %eax	# mg_1->mg_flags, D.15587
	movzbl	%al, %eax	# D.15587, D.15586
	andl	$2, %eax	#, D.15586
	testl	%eax, %eax	# D.15586
	je	.L79	#,
	.loc 1 420 0
	movq	-24(%rbp), %rax	# mg, tmp94
	movq	24(%rax), %rax	# mg_1->mg_obj, D.15588
	movq	%rax, %rdi	# D.15588,
	call	Perl_sv_free	#
.L79:
	.loc 1 421 0
	movq	-24(%rbp), %rax	# mg, tmp95
	movq	%rax, %rdi	# tmp95,
	call	Perl_safesysfree	#
.LBE12:
	.loc 1 408 0
	movq	-8(%rbp), %rax	# moremagic, tmp96
	movq	%rax, -24(%rbp)	# tmp96, mg
.L74:
	.loc 1 408 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, mg
	jne	.L80	#,
	.loc 1 423 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp97
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15582
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_21].xmg_magic
	.loc 1 424 0
	movl	$0, %eax	#, D.15586
	.loc 1 425 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_mg_free, .-Perl_mg_free
	.globl	Perl_magic_regdata_cnt
	.type	Perl_magic_regdata_cnt, @function
Perl_magic_regdata_cnt:
.LFB12:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# sv, sv
	movq	%rsi, -24(%rbp)	# mg, mg
	.loc 1 434 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.22
	testq	%rax, %rax	# PL_curpm.22
	je	.L83	#,
	.loc 1 434 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.23
	movq	80(%rax), %rbx	# PL_curpm.23_3->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L83	#,
	.loc 1 435 0 is_stmt 1
	movq	-24(%rbp), %rax	# mg, tmp65
	movq	24(%rax), %rax	# mg_5(D)->mg_obj, D.15590
	testq	%rax, %rax	# D.15590
	je	.L84	#,
	.loc 1 436 0
	movl	80(%rbx), %eax	# rx_4->nparens, D.15589
	jmp	.L85	#
.L84:
	.loc 1 438 0
	movl	84(%rbx), %eax	# rx_4->lastparen, D.15589
	jmp	.L85	#
.L83:
	.loc 1 441 0
	movl	$-1, %eax	#, D.15589
.L85:
	.loc 1 442 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_magic_regdata_cnt, .-Perl_magic_regdata_cnt
	.globl	Perl_magic_regdatum_get
	.type	Perl_magic_regdatum_get, @function
Perl_magic_regdatum_get:
.LFB13:
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
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 453 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.24
	testq	%rax, %rax	# PL_curpm.24
	je	.L87	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.25
	movq	80(%rax), %rbx	# PL_curpm.25_5->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L87	#,
	.loc 1 454 0 is_stmt 1
	movq	-64(%rbp), %rax	# mg, tmp84
	movl	40(%rax), %r12d	# mg_7(D)->mg_len, paren
	.loc 1 455 0
	testl	%r12d, %r12d	# paren
	jns	.L88	#,
	.loc 1 456 0
	movl	$0, %eax	#, D.15591
	jmp	.L89	#
.L88:
	.loc 1 457 0
	movl	80(%rbx), %eax	# rx_6->nparens, D.15592
	cmpl	%r12d, %eax	# paren, D.15591
	jl	.L87	#,
	.loc 1 458 0 discriminator 1
	movq	(%rbx), %rax	# rx_6->startp, D.15593
	movslq	%r12d, %rdx	# paren, D.15594
	salq	$2, %rdx	#, D.15594
	addq	%rdx, %rax	# D.15594, D.15593
	movl	(%rax), %r13d	# *_15, s
	.loc 1 457 0 discriminator 1
	cmpl	$-1, %r13d	#, s
	je	.L87	#,
	.loc 1 459 0
	movq	8(%rbx), %rax	# rx_6->endp, D.15593
	movslq	%r12d, %rdx	# paren, D.15594
	salq	$2, %rdx	#, D.15594
	addq	%rdx, %rax	# D.15594, D.15593
	movl	(%rax), %eax	# *_20, tmp85
	movl	%eax, -44(%rbp)	# tmp85, t
	.loc 1 458 0
	cmpl	$-1, -44(%rbp)	#, t
	je	.L87	#,
	.loc 1 461 0
	movq	-64(%rbp), %rax	# mg, tmp86
	movq	24(%rax), %rax	# mg_7(D)->mg_obj, D.15595
	testq	%rax, %rax	# D.15595
	je	.L90	#,
	.loc 1 462 0
	movl	-44(%rbp), %r12d	# t, i
	jmp	.L91	#
.L90:
	.loc 1 464 0
	movl	%r13d, %r12d	# s, i
.L91:
	.loc 1 466 0
	testl	%r12d, %r12d	# i
	jle	.L92	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# rx_6->reganch, D.15592
	andl	$268435456, %eax	#, D.15592
	testl	%eax, %eax	# D.15592
	je	.L92	#,
.LBB13:
	.loc 1 467 0 is_stmt 1
	movq	48(%rbx), %rax	# rx_6->subbeg, tmp87
	movq	%rax, -40(%rbp)	# tmp87, b
	.loc 1 468 0
	cmpq	$0, -40(%rbp)	#, b
	je	.L92	#,
	.loc 1 469 0
	movslq	%r12d, %rdx	# i, D.15596
	movq	-40(%rbp), %rax	# b, tmp88
	addq	%rax, %rdx	# tmp88, D.15597
	movq	-40(%rbp), %rax	# b, tmp89
	movq	%rdx, %rsi	# D.15597,
	movq	%rax, %rdi	# tmp89,
	call	Perl_utf8_length	#
	movl	%eax, %r12d	# D.15594, i
.L92:
.LBE13:
	.loc 1 472 0
	movslq	%r12d, %rdx	# i, D.15598
	movq	-56(%rbp), %rax	# sv, tmp90
	movq	%rdx, %rsi	# D.15598,
	movq	%rax, %rdi	# tmp90,
	call	Perl_sv_setiv	#
.L87:
	.loc 1 475 0
	movl	$0, %eax	#, D.15591
.L89:
	.loc 1 476 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_magic_regdatum_get, .-Perl_magic_regdatum_get
	.globl	Perl_magic_regdatum_set
	.type	Perl_magic_regdatum_set, @function
Perl_magic_regdatum_set:
.LFB14:
	.loc 1 480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 481 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 483 0
	movl	$0, %eax	#, D.15599
	.loc 1 484 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_magic_regdatum_set, .-Perl_magic_regdatum_set
	.section	.rodata
.LC1:
	.string	"panic: magic_len: %ld"
	.text
	.globl	Perl_magic_len
	.type	Perl_magic_len, @function
Perl_magic_len:
.LFB15:
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
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 494 0
	movq	-64(%rbp), %rax	# mg, tmp155
	movq	32(%rax), %rax	# mg_9(D)->mg_ptr, D.15601
	movzbl	(%rax), %eax	# *_10, D.15602
	movsbl	%al, %eax	# D.15602, D.15603
	cmpl	$43, %eax	#, D.15603
	je	.L97	#,
	cmpl	$43, %eax	#, D.15603
	jg	.L98	#,
	cmpl	$38, %eax	#, D.15603
	je	.L99	#,
	cmpl	$39, %eax	#, D.15603
	je	.L100	#,
	cmpl	$14, %eax	#, D.15603
	je	.L101	#,
	jmp	.L96	#
.L98:
	cmpl	$49, %eax	#, D.15603
	jl	.L96	#,
	cmpl	$57, %eax	#, D.15603
	jle	.L99	#,
	cmpl	$96, %eax	#, D.15603
	je	.L102	#,
	jmp	.L96	#
.L99:
	.loc 1 497 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.26
	testq	%rax, %rax	# PL_curpm.26
	je	.L103	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.27
	movq	80(%rax), %rbx	# PL_curpm.27_14->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L103	#,
	.loc 1 499 0 is_stmt 1
	movq	-64(%rbp), %rax	# mg, tmp156
	movq	32(%rax), %rax	# mg_9(D)->mg_ptr, D.15601
	movq	%rax, %rdi	# D.15601,
	call	atoi	#
	movl	%eax, %r12d	#, paren
.L104:
	.loc 1 501 0
	movl	80(%rbx), %eax	# rx_4->nparens, D.15606
	cmpl	%r12d, %eax	# paren, D.15603
	jl	.L105	#,
	.loc 1 502 0 discriminator 1
	movq	(%rbx), %rax	# rx_4->startp, D.15607
	movslq	%r12d, %rdx	# paren, D.15608
	salq	$2, %rdx	#, D.15608
	addq	%rdx, %rax	# D.15608, D.15607
	movl	(%rax), %eax	# *_54, tmp157
	movl	%eax, -48(%rbp)	# tmp157, s1
	.loc 1 501 0 discriminator 1
	cmpl	$-1, -48(%rbp)	#, s1
	je	.L105	#,
	.loc 1 503 0
	movq	8(%rbx), %rax	# rx_4->endp, D.15607
	movslq	%r12d, %rdx	# paren, D.15608
	salq	$2, %rdx	#, D.15608
	addq	%rdx, %rax	# D.15608, D.15607
	movl	(%rax), %eax	# *_59, tmp158
	movl	%eax, -44(%rbp)	# tmp158, t1
	.loc 1 502 0
	cmpl	$-1, -44(%rbp)	#, t1
	je	.L105	#,
	.loc 1 505 0
	movl	-48(%rbp), %eax	# s1, tmp159
	movl	-44(%rbp), %edx	# t1, tmp160
	subl	%eax, %edx	# tmp159, i
	movl	%edx, %r12d	# i, i
.L106:
	.loc 1 507 0
	testl	%r12d, %r12d	# i
	jle	.L107	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# rx_5->reganch, D.15606
	andl	$268435456, %eax	#, D.15606
	testl	%eax, %eax	# D.15606
	je	.L107	#,
.LBB14:
	.loc 1 508 0 is_stmt 1
	movq	48(%rbx), %rdx	# rx_5->subbeg, D.15601
	movl	-48(%rbp), %eax	# s1, tmp161
	cltq
	addq	%rdx, %rax	# D.15601, tmp162
	movq	%rax, -32(%rbp)	# tmp162, s
	.loc 1 509 0
	movq	48(%rbx), %rdx	# rx_5->subbeg, D.15601
	movl	-44(%rbp), %eax	# t1, tmp163
	cltq
	addq	%rdx, %rax	# D.15601, tmp164
	movq	%rax, -24(%rbp)	# tmp164, send
	.loc 1 511 0
	movl	-48(%rbp), %eax	# s1, tmp165
	movl	-44(%rbp), %edx	# t1, tmp166
	subl	%eax, %edx	# tmp165, i
	movl	%edx, %r12d	# i, i
	.loc 1 512 0
	movslq	%r12d, %rdx	# i, D.15608
	movq	-32(%rbp), %rax	# s, tmp167
	movq	%rdx, %rsi	# D.15608,
	movq	%rax, %rdi	# tmp167,
	call	Perl_is_utf8_string	#
	testb	%al, %al	# D.15602
	je	.L107	#,
	.loc 1 513 0
	movq	-24(%rbp), %rdx	# send, tmp168
	movq	-32(%rbp), %rax	# s, tmp169
	movq	%rdx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	Perl_utf8_length	#
	movl	%eax, %r12d	# D.15608, i
.L107:
.LBE14:
	.loc 1 515 0
	testl	%r12d, %r12d	# i
	jns	.L108	#,
	.loc 1 516 0
	movslq	%r12d, %rax	# i, D.15610
	movq	%rax, %rsi	# D.15610,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L108:
	.loc 1 517 0
	movl	%r12d, %eax	# i, D.15600
	jmp	.L109	#
.L105:
	.loc 1 520 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.28
	movq	80(%rax), %rax	# PL_curcop.28_62->cop_warnings, D.15604
	testq	%rax, %rax	# D.15604
	je	.L110	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.29
	movq	80(%rax), %rax	# PL_curcop.29_64->cop_warnings, D.15604
	cmpq	$32, %rax	#, D.15604
	je	.L110	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.30
	movq	80(%rax), %rax	# PL_curcop.30_66->cop_warnings, D.15604
	cmpq	$16, %rax	#, D.15604
	je	.L111	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.31
	movq	80(%rax), %rax	# PL_curcop.31_68->cop_warnings, D.15604
	movq	(%rax), %rax	# _69->sv_any, D.15605
	movq	(%rax), %rax	# MEM[(struct XPV *)_70].xpv_pv, D.15601
	addq	$10, %rax	#, D.15601
	movzbl	(%rax), %eax	# *_72, D.15602
	movsbl	%al, %eax	# D.15602, D.15603
	andl	$4, %eax	#, D.15603
	testl	%eax, %eax	# D.15603
	jne	.L111	#,
.L110:
	.loc 1 520 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.32
	movq	80(%rax), %rax	# PL_curcop.32_76->cop_warnings, D.15604
	testq	%rax, %rax	# D.15604
	jne	.L112	#,
	.loc 1 520 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.33
	movzbl	%al, %eax	# PL_dowarn.33, D.15603
	andl	$1, %eax	#, D.15603
	testl	%eax, %eax	# D.15603
	je	.L112	#,
.L111:
	.loc 1 521 0 is_stmt 1
	call	Perl_report_uninit	#
	.loc 1 501 0
	jmp	.L113	#
.L112:
	jmp	.L113	#
.L103:
	.loc 1 525 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.34
	movq	80(%rax), %rax	# PL_curcop.34_18->cop_warnings, D.15604
	testq	%rax, %rax	# D.15604
	je	.L114	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.35
	movq	80(%rax), %rax	# PL_curcop.35_20->cop_warnings, D.15604
	cmpq	$32, %rax	#, D.15604
	je	.L114	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.36
	movq	80(%rax), %rax	# PL_curcop.36_22->cop_warnings, D.15604
	cmpq	$16, %rax	#, D.15604
	je	.L115	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.37
	movq	80(%rax), %rax	# PL_curcop.37_24->cop_warnings, D.15604
	movq	(%rax), %rax	# _25->sv_any, D.15605
	movq	(%rax), %rax	# MEM[(struct XPV *)_26].xpv_pv, D.15601
	addq	$10, %rax	#, D.15601
	movzbl	(%rax), %eax	# *_28, D.15602
	movsbl	%al, %eax	# D.15602, D.15603
	andl	$4, %eax	#, D.15603
	testl	%eax, %eax	# D.15603
	jne	.L115	#,
.L114:
	.loc 1 525 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.38
	movq	80(%rax), %rax	# PL_curcop.38_32->cop_warnings, D.15604
	testq	%rax, %rax	# D.15604
	jne	.L113	#,
	.loc 1 525 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.39
	movzbl	%al, %eax	# PL_dowarn.39, D.15603
	andl	$1, %eax	#, D.15603
	testl	%eax, %eax	# D.15603
	je	.L113	#,
.L115:
	.loc 1 526 0 is_stmt 1
	call	Perl_report_uninit	#
.L113:
	.loc 1 528 0
	movl	$0, %eax	#, D.15600
	jmp	.L109	#
.L97:
	.loc 1 530 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.40
	testq	%rax, %rax	# PL_curpm.40
	je	.L116	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.41
	movq	80(%rax), %rbx	# PL_curpm.41_38->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L116	#,
	.loc 1 531 0 is_stmt 1
	movl	84(%rbx), %eax	# rx_39->lastparen, D.15606
	movl	%eax, %r12d	# D.15606, paren
	.loc 1 532 0
	testl	%r12d, %r12d	# paren
	je	.L116	#,
	.loc 1 533 0
	jmp	.L104	#
.L116:
	.loc 1 535 0
	movl	$0, %eax	#, D.15600
	jmp	.L109	#
.L101:
	.loc 1 537 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.42
	testq	%rax, %rax	# PL_curpm.42
	je	.L117	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.43
	movq	80(%rax), %rbx	# PL_curpm.43_44->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L117	#,
	.loc 1 538 0 is_stmt 1
	movl	88(%rbx), %eax	# rx_45->lastcloseparen, D.15606
	movl	%eax, %r12d	# D.15606, paren
	.loc 1 539 0
	testl	%r12d, %r12d	# paren
	je	.L117	#,
	.loc 1 540 0
	jmp	.L104	#
.L117:
	.loc 1 542 0
	movl	$0, %eax	#, D.15600
	jmp	.L109	#
.L102:
	.loc 1 544 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.44
	testq	%rax, %rax	# PL_curpm.44
	je	.L118	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.45
	movq	80(%rax), %rbx	# PL_curpm.45_83->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L118	#,
	.loc 1 545 0 is_stmt 1
	movq	(%rbx), %rax	# rx_84->startp, D.15607
	movl	(%rax), %eax	# *_85, D.15603
	cmpl	$-1, %eax	#, D.15603
	je	.L118	#,
	.loc 1 546 0
	movq	(%rbx), %rax	# rx_84->startp, D.15607
	movl	(%rax), %r12d	# *_87, i
	.loc 1 547 0
	testl	%r12d, %r12d	# i
	jle	.L118	#,
	.loc 1 548 0
	movl	$0, -48(%rbp)	#, s1
	.loc 1 549 0
	movl	%r12d, -44(%rbp)	# i, t1
	.loc 1 550 0
	jmp	.L106	#
.L118:
	.loc 1 554 0
	movl	$0, %eax	#, D.15600
	jmp	.L109	#
.L100:
	.loc 1 556 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.46
	testq	%rax, %rax	# PL_curpm.46
	je	.L119	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.47
	movq	80(%rax), %rbx	# PL_curpm.47_93->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L119	#,
	.loc 1 557 0 is_stmt 1
	movq	8(%rbx), %rax	# rx_94->endp, D.15607
	movl	(%rax), %eax	# *_95, D.15603
	cmpl	$-1, %eax	#, D.15603
	je	.L119	#,
	.loc 1 558 0
	movl	64(%rbx), %edx	# rx_94->sublen, D.15603
	movq	8(%rbx), %rax	# rx_94->endp, D.15607
	movl	(%rax), %eax	# *_98, D.15603
	subl	%eax, %edx	# D.15603, i
	movl	%edx, %r12d	# i, i
	.loc 1 559 0
	testl	%r12d, %r12d	# i
	jle	.L119	#,
	.loc 1 560 0
	movq	8(%rbx), %rax	# rx_94->endp, D.15607
	movl	(%rax), %eax	# *_101, tmp170
	movl	%eax, -48(%rbp)	# tmp170, s1
	.loc 1 561 0
	movl	64(%rbx), %eax	# rx_94->sublen, tmp171
	movl	%eax, -44(%rbp)	# tmp171, t1
	.loc 1 562 0
	jmp	.L106	#
.L119:
	.loc 1 566 0
	movl	$0, %eax	#, D.15600
	jmp	.L109	#
.L96:
	.loc 1 568 0
	movq	-64(%rbp), %rdx	# mg, tmp172
	movq	-56(%rbp), %rax	# sv, tmp173
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	Perl_magic_get	#
	.loc 1 569 0
	movq	-56(%rbp), %rax	# sv, tmp174
	movl	12(%rax), %eax	# sv_120(D)->sv_flags, D.15606
	andl	$262144, %eax	#, D.15606
	testl	%eax, %eax	# D.15606
	jne	.L120	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp175
	movl	12(%rax), %eax	# sv_120(D)->sv_flags, D.15606
	andl	$196608, %eax	#, D.15606
	testl	%eax, %eax	# D.15606
	je	.L120	#,
.LBB15:
	.loc 1 571 0 is_stmt 1
	leaq	-40(%rbp), %rcx	#, tmp176
	movq	-56(%rbp), %rax	# sv, tmp177
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	Perl_sv_2pv_flags	#
.L120:
.LBE15:
	.loc 1 573 0
	movq	-56(%rbp), %rax	# sv, tmp178
	movl	12(%rax), %eax	# sv_120(D)->sv_flags, D.15606
	andl	$262144, %eax	#, D.15606
	testl	%eax, %eax	# D.15606
	je	.L121	#,
	.loc 1 574 0
	movq	-56(%rbp), %rax	# sv, tmp179
	movq	(%rax), %rax	# sv_120(D)->sv_any, D.15605
	movq	8(%rax), %rax	# MEM[(struct XPV *)_127].xpv_cur, D.15608
	jmp	.L109	#
.L121:
	.loc 1 575 0
	movl	$0, %eax	#, D.15600
.L109:
	.loc 1 576 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_magic_len, .-Perl_magic_len
	.section	.rodata
.LC2:
	.string	""
.LC3:
	.string	"NCODING"
.LC4:
	.string	"\017PEN"
.LC5:
	.string	"\024AINT"
.LC6:
	.string	"\025NICODE"
.LC7:
	.string	"\025TF8LOCALE"
.LC8:
	.string	"ARNING_BITS"
.LC9:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC10:
	.string	"warnings::Bits"
.LC11:
	.string	"all"
.LC12:
	.string	"UUUUUUUUUUUU"
.LC13:
	.string	"_TOP"
	.text
	.globl	Perl_magic_get
	.type	Perl_magic_get, @function
Perl_magic_get:
.LFB16:
	.loc 1 580 0
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
	movq	%rdi, -88(%rbp)	# sv, sv
	movq	%rsi, -96(%rbp)	# mg, mg
	.loc 1 582 0
	movl	$0, %r12d	#, s
	.loc 1 586 0
	movq	-96(%rbp), %rax	# mg, tmp355
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movzbl	(%rax), %eax	# *_17, D.15614
	movsbl	%al, %eax	# D.15614, D.15615
	cmpl	$126, %eax	#, D.15615
	ja	.L123	#,
	movl	%eax, %eax	# D.15615, tmp356
	movq	.L125(,%rax,8), %rax	#, tmp357
	jmp	*%rax	# tmp357
	.section	.rodata
	.align 8
	.align 4
.L125:
	.quad	.L123
	.quad	.L124
	.quad	.L123
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.quad	.L129
	.quad	.L123
	.quad	.L130
	.quad	.L131
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L132
	.quad	.L133
	.quad	.L134
	.quad	.L123
	.quad	.L123
	.quad	.L135
	.quad	.L136
	.quad	.L137
	.quad	.L123
	.quad	.L138
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L139
	.quad	.L123
	.quad	.L140
	.quad	.L123
	.quad	.L141
	.quad	.L142
	.quad	.L143
	.quad	.L144
	.quad	.L145
	.quad	.L123
	.quad	.L147
	.quad	.L123
	.quad	.L149
	.quad	.L150
	.quad	.L123
	.quad	.L123
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L142
	.quad	.L123
	.quad	.L123
	.quad	.L154
	.quad	.L155
	.quad	.L156
	.quad	.L157
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L158
	.quad	.L159
	.quad	.L123
	.quad	.L160
	.quad	.L123
	.quad	.L161
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L162
	.quad	.L123
	.quad	.L163
	.text
.L124:
	.loc 1 588 0
	movq	PL_bodytarget(%rip), %rcx	# PL_bodytarget, PL_bodytarget.48
	movq	-88(%rbp), %rax	# sv, tmp358
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# PL_bodytarget.48,
	movq	%rax, %rdi	# tmp358,
	call	Perl_sv_setsv_flags	#
	.loc 1 589 0
	jmp	.L123	#
.L126:
	.loc 1 591 0
	movzbl	PL_minus_c(%rip), %eax	# PL_minus_c, PL_minus_c.49
	movsbq	%al, %rdx	# PL_minus_c.49, D.15616
	movq	-88(%rbp), %rax	# sv, tmp359
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp359,
	call	Perl_sv_setiv	#
	.loc 1 592 0
	jmp	.L123	#
.L127:
	.loc 1 595 0
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.50
	movl	%eax, %eax	# PL_debug.50, D.15616
	andl	$2093055, %eax	#, D.15616
	movq	%rax, %rdx	# D.15616, D.15616
	movq	-88(%rbp), %rax	# sv, tmp360
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp360,
	call	Perl_sv_setiv	#
	.loc 1 599 0
	jmp	.L123	#
.L128:
	.loc 1 601 0
	movq	-96(%rbp), %rax	# mg, tmp361
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15613
	movzbl	(%rax), %eax	# *_28, D.15614
	testb	%al, %al	# D.15614
	jne	.L164	#,
.LBB16:
	.loc 1 651 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_30, tmp362
	movl	%eax, -80(%rbp)	# tmp362, saveerrno
	.loc 1 652 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_32, D.15615
	cvtsi2sd	%eax, %xmm0	# D.15615, D.15618
	movq	-88(%rbp), %rax	# sv, tmp363
	movq	%rax, %rdi	# tmp363,
	call	Perl_sv_setnv	#
	.loc 1 653 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_35, D.15615
	testl	%eax, %eax	# D.15615
	je	.L165	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_37, D.15615
	movl	%eax, %edi	# D.15615,
	call	strerror	#
	jmp	.L166	#
.L165:
	.loc 1 653 0 discriminator 2
	movl	$.LC2, %eax	#, iftmp.51
.L166:
	.loc 1 653 0 discriminator 1
	movq	-88(%rbp), %rdx	# sv, tmp364
	movq	%rax, %rsi	# iftmp.51,
	movq	%rdx, %rdi	# tmp364,
	call	Perl_sv_setpv	#
	.loc 1 654 0 is_stmt 1 discriminator 1
	call	__errno_location	#
	movl	-80(%rbp), %edx	# saveerrno, tmp365
	movl	%edx, (%rax)	# tmp365, *_41
.LBE16:
	.loc 1 660 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp366
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	orl	$33685504, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp367
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	jmp	.L167	#
.L164:
	.loc 1 662 0
	movq	-96(%rbp), %rax	# mg, tmp368
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15620
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.15620,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L167	#,
	.loc 1 663 0
	movq	PL_encoding(%rip), %rcx	# PL_encoding, PL_encoding.52
	movq	-88(%rbp), %rax	# sv, tmp369
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# PL_encoding.52,
	movq	%rax, %rdi	# tmp369,
	call	Perl_sv_setsv_flags	#
	.loc 1 664 0
	jmp	.L123	#
.L167:
	jmp	.L123	#
.L129:
	.loc 1 666 0
	movl	PL_maxsysfd(%rip), %eax	# PL_maxsysfd, PL_maxsysfd.53
	movslq	%eax, %rdx	# PL_maxsysfd.53, D.15616
	movq	-88(%rbp), %rax	# sv, tmp370
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp370,
	call	Perl_sv_setiv	#
	.loc 1 667 0
	jmp	.L123	#
.L130:
	.loc 1 669 0
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.54
	movl	%eax, %edx	# PL_hints.54, D.15616
	movq	-88(%rbp), %rax	# sv, tmp371
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp371,
	call	Perl_sv_setiv	#
	.loc 1 670 0
	jmp	.L123	#
.L131:
	.loc 1 672 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.55
	testq	%rax, %rax	# PL_inplace.55
	je	.L168	#,
	.loc 1 673 0
	movq	PL_inplace(%rip), %rdx	# PL_inplace, PL_inplace.56
	movq	-88(%rbp), %rax	# sv, tmp372
	movq	%rdx, %rsi	# PL_inplace.56,
	movq	%rax, %rdi	# tmp372,
	call	Perl_sv_setpv	#
	.loc 1 676 0
	jmp	.L123	#
.L168:
	.loc 1 675 0
	movq	-88(%rbp), %rax	# sv, tmp373
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp373,
	call	Perl_sv_setsv_flags	#
	.loc 1 676 0
	jmp	.L123	#
.L133:
	.loc 1 678 0
	movq	-96(%rbp), %rax	# mg, tmp374
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15613
	movzbl	(%rax), %eax	# *_55, D.15614
	testb	%al, %al	# D.15614
	jne	.L170	#,
	.loc 1 679 0
	movq	PL_osname(%rip), %rdx	# PL_osname, PL_osname.57
	movq	-88(%rbp), %rax	# sv, tmp375
	movq	%rdx, %rsi	# PL_osname.57,
	movq	%rax, %rdi	# tmp375,
	call	Perl_sv_setpv	#
	.loc 1 680 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.58
	testb	%al, %al	# PL_tainting.58
	je	.L172	#,
	.loc 1 680 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp376
	movq	%rax, %rdi	# tmp376,
	call	Perl_sv_untaint	#
	.loc 1 689 0 is_stmt 1 discriminator 1
	jmp	.L123	#
.L170:
	.loc 1 682 0
	movq	-96(%rbp), %rax	# mg, tmp377
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# D.15613,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L172	#,
	.loc 1 683 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.15621
	testq	%rax, %rax	# D.15621
	jne	.L173	#,
	.loc 1 684 0
	movq	-88(%rbp), %rax	# sv, tmp378
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp378,
	call	Perl_sv_setsv_flags	#
	jmp	.L172	#
.L173:
	.loc 1 686 0
	movq	PL_compiling+88(%rip), %rcx	# PL_compiling.cop_io, D.15621
	movq	-88(%rbp), %rax	# sv, tmp379
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15621,
	movq	%rax, %rdi	# tmp379,
	call	Perl_sv_setsv_flags	#
	.loc 1 689 0
	jmp	.L123	#
.L172:
	jmp	.L123	#
.L134:
	.loc 1 691 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.59
	movl	%eax, %edx	# PL_perldb.59, D.15616
	movq	-88(%rbp), %rax	# sv, tmp380
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp380,
	call	Perl_sv_setiv	#
	.loc 1 692 0
	jmp	.L123	#
.L135:
	.loc 1 694 0
	movq	-96(%rbp), %rax	# mg, tmp381
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15613
	movzbl	(%rax), %eax	# *_66, D.15614
	testb	%al, %al	# D.15614
	jne	.L174	#,
	.loc 1 695 0
	movl	PL_lex_state(%rip), %eax	# PL_lex_state, PL_lex_state.60
	cmpl	$11, %eax	#, PL_lex_state.60
	je	.L175	#,
	.loc 1 696 0
	movq	-88(%rbp), %rax	# sv, tmp382
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	andl	$1223753727, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp383
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	movq	-88(%rbp), %rax	# sv, tmp384
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	andl	$2097152, %eax	#, D.15619
	testl	%eax, %eax	# D.15619
	je	.L174	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp385
	movq	%rax, %rdi	# tmp385,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15615
	je	.L174	#,
	jmp	.L174	#
.L175:
	.loc 1 697 0 is_stmt 1
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.62
	testl	%eax, %eax	# PL_in_eval.62
	je	.L178	#,
	.loc 1 698 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.63
	andl	$-9, %eax	#, D.15615
	movslq	%eax, %rdx	# D.15615, D.15616
	movq	-88(%rbp), %rax	# sv, tmp386
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp386,
	call	Perl_sv_setiv	#
	jmp	.L174	#
.L178:
	.loc 1 700 0
	movq	-88(%rbp), %rax	# sv, tmp387
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp387,
	call	Perl_sv_setiv	#
	.loc 1 702 0
	jmp	.L123	#
.L174:
	jmp	.L123	#
.L136:
	.loc 1 704 0
	movq	-96(%rbp), %rax	# mg, tmp388
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15613
	movzbl	(%rax), %eax	# *_81, D.15614
	testb	%al, %al	# D.15614
	jne	.L179	#,
	.loc 1 708 0
	movq	PL_basetime(%rip), %rdx	# PL_basetime, PL_basetime.64
	movq	-88(%rbp), %rax	# sv, tmp389
	movq	%rdx, %rsi	# PL_basetime.64,
	movq	%rax, %rdi	# tmp389,
	call	Perl_sv_setiv	#
	jmp	.L180	#
.L179:
	.loc 1 711 0
	movq	-96(%rbp), %rax	# mg, tmp390
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.15613,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L180	#,
	.loc 1 713 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.66
	.loc 1 712 0
	testb	%al, %al	# PL_tainting.66
	je	.L181	#,
	.loc 1 713 0 discriminator 1
	movzbl	PL_taint_warn(%rip), %eax	# PL_taint_warn, PL_taint_warn.68
	.loc 1 712 0 discriminator 1
	testb	%al, %al	# PL_taint_warn.68
	jne	.L182	#,
	.loc 1 713 0
	movzbl	PL_unsafe(%rip), %eax	# PL_unsafe, PL_unsafe.69
	testb	%al, %al	# PL_unsafe.69
	je	.L183	#,
.L182:
	.loc 1 712 0 discriminator 3
	movq	$-1, %rax	#, iftmp.67
	jmp	.L184	#
.L183:
	.loc 1 712 0 is_stmt 0
	movl	$1, %eax	#, iftmp.67
.L184:
	jmp	.L185	#
.L181:
	.loc 1 712 0 discriminator 2
	movl	$0, %eax	#, iftmp.65
.L185:
	.loc 1 712 0 discriminator 5
	movq	-88(%rbp), %rdx	# sv, tmp391
	movq	%rax, %rsi	# iftmp.65,
	movq	%rdx, %rdi	# tmp391,
	call	Perl_sv_setiv	#
	.loc 1 715 0 is_stmt 1 discriminator 5
	jmp	.L123	#
.L180:
	.loc 1 715 0 is_stmt 0
	jmp	.L123	#
.L137:
	.loc 1 717 0 is_stmt 1
	movq	-96(%rbp), %rax	# mg, tmp392
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.15613,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L186	#,
	.loc 1 718 0
	movl	PL_unicode(%rip), %eax	# PL_unicode, PL_unicode.70
	movl	%eax, %edx	# PL_unicode.70, D.15622
	movq	-88(%rbp), %rax	# sv, tmp393
	movq	%rdx, %rsi	# D.15622,
	movq	%rax, %rdi	# tmp393,
	call	Perl_sv_setuv	#
	jmp	.L187	#
.L186:
	.loc 1 719 0
	movq	-96(%rbp), %rax	# mg, tmp394
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# D.15613,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L187	#,
	.loc 1 720 0
	movzbl	PL_utf8locale(%rip), %eax	# PL_utf8locale, PL_utf8locale.71
	movsbq	%al, %rdx	# PL_utf8locale.71, D.15622
	movq	-88(%rbp), %rax	# sv, tmp395
	movq	%rdx, %rsi	# D.15622,
	movq	%rax, %rdi	# tmp395,
	call	Perl_sv_setuv	#
	.loc 1 721 0
	jmp	.L123	#
.L187:
	jmp	.L123	#
.L138:
	.loc 1 723 0
	movq	-96(%rbp), %rax	# mg, tmp396
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15613
	movzbl	(%rax), %eax	# *_102, D.15614
	testb	%al, %al	# D.15614
	jne	.L188	#,
	.loc 1 724 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.72
	movzbl	%al, %eax	# PL_dowarn.72, D.15616
	andl	$1, %eax	#, D.15616
	movq	%rax, %rdx	# D.15616, D.15616
	movq	-88(%rbp), %rax	# sv, tmp397
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp397,
	call	Perl_sv_setiv	#
	jmp	.L189	#
.L188:
	.loc 1 725 0
	movq	-96(%rbp), %rax	# mg, tmp398
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	addq	$1, %rax	#, D.15620
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.15620,
	call	strcmp	#
	testl	%eax, %eax	# D.15615
	jne	.L189	#,
	.loc 1 726 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15621
	cmpq	$32, %rax	#, D.15621
	je	.L190	#,
	.loc 1 727 0 discriminator 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15621
	.loc 1 726 0 discriminator 1
	testq	%rax, %rax	# D.15621
	jne	.L191	#,
.L190:
	.loc 1 729 0
	movq	-88(%rbp), %rax	# sv, tmp399
	movl	$12, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp399,
	call	Perl_sv_setpvn	#
	jmp	.L192	#
.L191:
	.loc 1 731 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15621
	cmpq	$16, %rax	#, D.15621
	jne	.L193	#,
.LBB17:
	.loc 1 735 0
	movl	$0, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_get_hv	#
	movq	%rax, -64(%rbp)	# tmp400, bits
	.loc 1 736 0
	cmpq	$0, -64(%rbp)	#, bits
	je	.L194	#,
	.loc 1 736 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# bits, tmp401
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp401,
	call	Perl_hv_fetch	#
	movq	%rax, -56(%rbp)	# tmp402, bits_all
	cmpq	$0, -56(%rbp)	#, bits_all
	je	.L194	#,
	.loc 1 737 0 is_stmt 1
	movq	-56(%rbp), %rax	# bits_all, tmp403
	movq	(%rax), %rcx	# *bits_all_114, D.15621
	movq	-88(%rbp), %rax	# sv, tmp404
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15621,
	movq	%rax, %rdi	# tmp404,
	call	Perl_sv_setsv_flags	#
	jmp	.L192	#
.L194:
	.loc 1 740 0
	movq	-88(%rbp), %rax	# sv, tmp405
	movl	$12, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp405,
	call	Perl_sv_setpvn	#
.LBE17:
	jmp	.L192	#
.L193:
	.loc 1 744 0
	movq	PL_compiling+80(%rip), %rcx	# PL_compiling.cop_warnings, D.15621
	movq	-88(%rbp), %rax	# sv, tmp406
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15621,
	movq	%rax, %rdi	# tmp406,
	call	Perl_sv_setsv_flags	#
.L192:
	.loc 1 746 0
	movq	-88(%rbp), %rax	# sv, tmp407
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	andl	$1223753727, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp408
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	movq	-88(%rbp), %rax	# sv, tmp409
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	orl	$67371008, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp410
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	.loc 1 748 0
	jmp	.L123	#
.L189:
	jmp	.L123	#
.L142:
	.loc 1 751 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.73
	testq	%rax, %rax	# PL_curpm.73
	je	.L196	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.74
	movq	80(%rax), %rbx	# PL_curpm.74_122->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L196	#,
.LBB18:
	.loc 1 758 0 is_stmt 1
	movq	-96(%rbp), %rax	# mg, tmp411
	movq	32(%rax), %rax	# mg_16(D)->mg_ptr, D.15613
	movq	%rax, %rdi	# D.15613,
	call	atoi	#
	movl	%eax, %r12d	#, paren
.L197:
	.loc 1 760 0
	movl	80(%rbx), %eax	# rx_7->nparens, D.15619
	cmpl	%r12d, %eax	# paren, D.15615
	jl	.L196	#,
	.loc 1 761 0 discriminator 1
	movq	(%rbx), %rax	# rx_7->startp, D.15623
	movslq	%r12d, %rdx	# paren, D.15622
	salq	$2, %rdx	#, D.15622
	addq	%rdx, %rax	# D.15622, D.15623
	movl	(%rax), %eax	# *_141, tmp412
	movl	%eax, -76(%rbp)	# tmp412, s1
	.loc 1 760 0 discriminator 1
	cmpl	$-1, -76(%rbp)	#, s1
	je	.L196	#,
	.loc 1 762 0
	movq	8(%rbx), %rax	# rx_7->endp, D.15623
	movslq	%r12d, %rdx	# paren, D.15622
	salq	$2, %rdx	#, D.15622
	addq	%rdx, %rax	# D.15622, D.15623
	movl	(%rax), %eax	# *_146, tmp413
	movl	%eax, -72(%rbp)	# tmp413, t1
	.loc 1 761 0
	cmpl	$-1, -72(%rbp)	#, t1
	je	.L196	#,
	.loc 1 764 0
	movl	-76(%rbp), %eax	# s1, tmp414
	movl	-72(%rbp), %edx	# t1, tmp415
	subl	%eax, %edx	# tmp414, i
	movl	%edx, %r13d	# i, i
	.loc 1 765 0
	movq	48(%rbx), %rdx	# rx_7->subbeg, D.15613
	movl	-76(%rbp), %eax	# s1, tmp416
	cltq
	leaq	(%rdx,%rax), %r12	#, s
	.loc 1 766 0
	movq	48(%rbx), %rax	# rx_7->subbeg, D.15613
	testq	%rax, %rax	# D.15613
	jne	.L198	#,
	.loc 1 767 0
	jmp	.L123	#
.L198:
	.loc 1 770 0
	testl	%r13d, %r13d	# i
	js	.L196	#,
	.loc 1 771 0
	movslq	%r13d, %rdx	# i, D.15622
	movq	-88(%rbp), %rax	# sv, tmp417
	movq	%r12, %rsi	# s,
	movq	%rax, %rdi	# tmp417,
	call	Perl_sv_setpvn	#
	.loc 1 772 0
	movl	92(%rbx), %eax	# rx_8->reganch, D.15619
	andl	$268435456, %eax	#, D.15619
	testl	%eax, %eax	# D.15619
	je	.L199	#,
	.loc 1 772 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# i, D.15622
	movq	%rax, %rsi	# D.15622,
	movq	%r12, %rdi	# s,
	call	Perl_is_utf8_string	#
	testb	%al, %al	# D.15614
	je	.L199	#,
	.loc 1 773 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp418
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	orl	$536870912, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp419
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	jmp	.L200	#
.L199:
	.loc 1 775 0
	movq	-88(%rbp), %rax	# sv, tmp420
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	andl	$-536870913, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp421
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
.L200:
	.loc 1 776 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.75
	testb	%al, %al	# PL_tainting.75
	je	.L201	#,
	.loc 1 777 0
	movl	92(%rbx), %eax	# rx_8->reganch, D.15619
	andl	$524288, %eax	#, D.15619
	testl	%eax, %eax	# D.15619
	je	.L202	#,
.LBB19:
	.loc 1 778 0
	movq	-88(%rbp), %rax	# sv, tmp422
	movq	(%rax), %rax	# sv_21(D)->sv_any, D.15625
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_188].xmg_magic, tmp423
	movq	%rax, -48(%rbp)	# tmp423, mg
	.loc 1 780 0
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 781 0
	movq	-88(%rbp), %rax	# sv, tmp424
	movq	(%rax), %rax	# sv_21(D)->sv_any, D.15625
	movq	-48(%rbp), %rdx	# mg, tmp425
	movq	(%rdx), %rdx	# mg_189->mg_moremagic, D.15626
	movq	%rdx, 40(%rax)	# D.15626, MEM[(struct XPVMG *)_190].xmg_magic
	.loc 1 782 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.76
	testb	%al, %al	# PL_tainting.76
	je	.L203	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.77
	testb	%al, %al	# PL_tainted.77
	je	.L203	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.78
	testb	%al, %al	# PL_tainting.78
	je	.L203	#,
	movq	-88(%rbp), %rax	# sv, tmp426
	movq	%rax, %rdi	# tmp426,
	call	Perl_sv_taint	#
.L203:
	.loc 1 783 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp427
	movq	(%rax), %rax	# sv_21(D)->sv_any, D.15625
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_195].xmg_magic, tmp428
	movq	%rax, -40(%rbp)	# tmp428, mgt
	cmpq	$0, -40(%rbp)	#, mgt
	je	.L204	#,
	.loc 1 784 0
	movq	-48(%rbp), %rax	# mg, tmp429
	movq	-40(%rbp), %rdx	# mgt, tmp430
	movq	%rdx, (%rax)	# tmp430, mg_189->mg_moremagic
	.loc 1 785 0
	movq	-88(%rbp), %rax	# sv, tmp431
	movq	(%rax), %rax	# sv_21(D)->sv_any, D.15625
	movq	-48(%rbp), %rdx	# mg, tmp432
	movq	%rdx, 40(%rax)	# tmp432, MEM[(struct XPVMG *)_197].xmg_magic
.LBE19:
	jmp	.L201	#
.L204:
	jmp	.L201	#
.L202:
	.loc 1 788 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.79
	testb	%al, %al	# PL_tainting.79
	je	.L201	#,
	.loc 1 788 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp433
	movq	%rax, %rdi	# tmp433,
	call	Perl_sv_untaint	#
	.loc 1 790 0 is_stmt 1 discriminator 1
	jmp	.L123	#
.L201:
	.loc 1 790 0 is_stmt 0
	jmp	.L123	#
.L196:
.LBE18:
	.loc 1 794 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp434
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp434,
	call	Perl_sv_setsv_flags	#
	.loc 1 795 0
	jmp	.L123	#
.L147:
	.loc 1 797 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.80
	testq	%rax, %rax	# PL_curpm.80
	je	.L205	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.81
	movq	80(%rax), %rbx	# PL_curpm.81_127->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L205	#,
	.loc 1 798 0 is_stmt 1
	movl	84(%rbx), %eax	# rx_128->lastparen, D.15619
	movl	%eax, %r12d	# D.15619, paren
	.loc 1 799 0
	testl	%r12d, %r12d	# paren
	je	.L205	#,
	.loc 1 800 0
	jmp	.L197	#
.L205:
	.loc 1 802 0
	movq	-88(%rbp), %rax	# sv, tmp435
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp435,
	call	Perl_sv_setsv_flags	#
	.loc 1 803 0
	jmp	.L123	#
.L132:
	.loc 1 805 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.82
	testq	%rax, %rax	# PL_curpm.82
	je	.L206	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.83
	movq	80(%rax), %rbx	# PL_curpm.83_132->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L206	#,
	.loc 1 806 0 is_stmt 1
	movl	88(%rbx), %eax	# rx_133->lastcloseparen, D.15619
	movl	%eax, %r12d	# D.15619, paren
	.loc 1 807 0
	testl	%r12d, %r12d	# paren
	je	.L206	#,
	.loc 1 808 0
	jmp	.L197	#
.L206:
	.loc 1 810 0
	movq	-88(%rbp), %rax	# sv, tmp436
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp436,
	call	Perl_sv_setsv_flags	#
	.loc 1 811 0
	jmp	.L123	#
.L161:
	.loc 1 813 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.84
	testq	%rax, %rax	# PL_curpm.84
	je	.L207	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.85
	movq	80(%rax), %rbx	# PL_curpm.85_154->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L207	#,
	.loc 1 814 0 is_stmt 1
	movq	48(%rbx), %r12	# rx_155->subbeg, s
	testq	%r12, %r12	# s
	je	.L207	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# rx_155->startp, D.15623
	movl	(%rax), %eax	# *_157, D.15615
	cmpl	$-1, %eax	#, D.15615
	je	.L207	#,
	.loc 1 815 0 is_stmt 1
	movq	(%rbx), %rax	# rx_155->startp, D.15623
	movl	(%rax), %r13d	# *_159, i
	.loc 1 816 0
	jmp	.L198	#
.L207:
	.loc 1 819 0
	movq	-88(%rbp), %rax	# sv, tmp437
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp437,
	call	Perl_sv_setsv_flags	#
	.loc 1 820 0
	jmp	.L123	#
.L143:
	.loc 1 822 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.86
	testq	%rax, %rax	# PL_curpm.86
	je	.L208	#,
	.loc 1 822 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.87
	movq	80(%rax), %rbx	# PL_curpm.87_162->op_pmregexp, rx
	testq	%rbx, %rbx	# rx
	je	.L208	#,
	.loc 1 823 0 is_stmt 1
	movq	48(%rbx), %rax	# rx_163->subbeg, D.15613
	testq	%rax, %rax	# D.15613
	je	.L208	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# rx_163->endp, D.15623
	movl	(%rax), %eax	# *_165, D.15615
	cmpl	$-1, %eax	#, D.15615
	je	.L208	#,
	.loc 1 824 0 is_stmt 1
	movq	48(%rbx), %rdx	# rx_163->subbeg, D.15613
	movq	8(%rbx), %rax	# rx_163->endp, D.15623
	movl	(%rax), %eax	# *_168, D.15615
	cltq
	leaq	(%rdx,%rax), %r12	#, s
	.loc 1 825 0
	movl	64(%rbx), %edx	# rx_163->sublen, D.15615
	movq	8(%rbx), %rax	# rx_163->endp, D.15623
	movl	(%rax), %eax	# *_173, D.15615
	subl	%eax, %edx	# D.15615, i
	movl	%edx, %r13d	# i, i
	.loc 1 826 0
	jmp	.L198	#
.L208:
	.loc 1 829 0
	movq	-88(%rbp), %rax	# sv, tmp438
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp438,
	call	Perl_sv_setsv_flags	#
	.loc 1 830 0
	jmp	.L123	#
.L150:
	.loc 1 833 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.88
	testq	%rax, %rax	# PL_last_in_gv.88
	je	.L209	#,
	.loc 1 833 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.89
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.89_200].sv_flags, D.15619
	movzbl	%al, %eax	# D.15619, D.15619
	cmpl	$13, %eax	#, D.15619
	jne	.L209	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.90
	movq	(%rax), %rax	# PL_last_in_gv.90_203->sv_any, D.15627
	movq	56(%rax), %rax	# _204->xgv_gp, D.15628
	testq	%rax, %rax	# D.15628
	je	.L209	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.91
	movq	(%rax), %rax	# PL_last_in_gv.91_206->sv_any, D.15627
	movq	56(%rax), %rax	# _207->xgv_gp, D.15628
	movq	16(%rax), %rax	# _208->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L209	#,
	.loc 1 834 0 is_stmt 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.92
	movq	(%rax), %rax	# PL_last_in_gv.92_210->sv_any, D.15627
	movq	56(%rax), %rax	# _211->xgv_gp, D.15628
	movq	16(%rax), %rax	# _212->gp_io, D.15629
	movq	(%rax), %rax	# _213->sv_any, D.15630
	movq	80(%rax), %rdx	# _214->xio_lines, D.15616
	movq	-88(%rbp), %rax	# sv, tmp439
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp439,
	call	Perl_sv_setiv	#
	.loc 1 837 0
	jmp	.L123	#
.L209:
	jmp	.L123	#
.L157:
	.loc 1 840 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.93
	movslq	%eax, %rdx	# PL_statusvalue.93, D.15616
	movq	-88(%rbp), %rax	# sv, tmp440
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp440,
	call	Perl_sv_setiv	#
	.loc 1 846 0
	jmp	.L123	#
.L160:
	.loc 1 848 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.94
	movq	(%rax), %rax	# PL_defoutgv.94_218->sv_any, D.15627
	movq	56(%rax), %rax	# _219->xgv_gp, D.15628
	movq	16(%rax), %rax	# _220->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L210	#,
	.loc 1 849 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.95
	movq	(%rax), %rax	# PL_defoutgv.95_222->sv_any, D.15627
	movq	56(%rax), %rax	# _223->xgv_gp, D.15628
	movq	16(%rax), %rax	# _224->gp_io, D.15629
	movq	(%rax), %rax	# _225->sv_any, D.15630
	movq	112(%rax), %r12	# _226->xio_top_name, s
.L210:
	.loc 1 850 0
	testq	%r12, %r12	# s
	je	.L211	#,
	.loc 1 851 0
	movq	-88(%rbp), %rax	# sv, tmp441
	movq	%r12, %rsi	# s,
	movq	%rax, %rdi	# tmp441,
	call	Perl_sv_setpv	#
	.loc 1 856 0
	jmp	.L123	#
.L211:
	.loc 1 853 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.97
	movq	(%rax), %rax	# PL_defoutgv.97_228->sv_any, D.15627
	movq	56(%rax), %rax	# _229->xgv_gp, D.15628
	movq	48(%rax), %rax	# _230->gp_egv, D.15631
	testq	%rax, %rax	# D.15631
	je	.L213	#,
	.loc 1 853 0 is_stmt 0 discriminator 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.98
	movq	(%rax), %rax	# PL_defoutgv.98_232->sv_any, D.15627
	movq	56(%rax), %rax	# _233->xgv_gp, D.15628
	movq	48(%rax), %rax	# _234->gp_egv, iftmp.96
	jmp	.L214	#
.L213:
	.loc 1 853 0 discriminator 2
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, iftmp.96
.L214:
	.loc 1 853 0 discriminator 3
	movq	(%rax), %rax	# iftmp.96_12->sv_any, D.15627
	movq	64(%rax), %rdx	# _237->xgv_name, D.15613
	movq	-88(%rbp), %rax	# sv, tmp442
	movq	%rdx, %rsi	# D.15613,
	movq	%rax, %rdi	# tmp442,
	call	Perl_sv_setpv	#
	.loc 1 854 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp443
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp443,
	call	Perl_sv_catpv	#
	.loc 1 856 0 discriminator 3
	jmp	.L123	#
.L163:
	.loc 1 858 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.99
	movq	(%rax), %rax	# PL_defoutgv.99_239->sv_any, D.15627
	movq	56(%rax), %rax	# _240->xgv_gp, D.15628
	movq	16(%rax), %rax	# _241->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L215	#,
	.loc 1 859 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.100
	movq	(%rax), %rax	# PL_defoutgv.100_243->sv_any, D.15627
	movq	56(%rax), %rax	# _244->xgv_gp, D.15628
	movq	16(%rax), %rax	# _245->gp_io, D.15629
	movq	(%rax), %rax	# _246->sv_any, D.15630
	movq	128(%rax), %r12	# _247->xio_fmt_name, s
.L215:
	.loc 1 860 0
	testq	%r12, %r12	# s
	jne	.L216	#,
	.loc 1 861 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.102
	movq	(%rax), %rax	# PL_defoutgv.102_249->sv_any, D.15627
	movq	56(%rax), %rax	# _250->xgv_gp, D.15628
	movq	48(%rax), %rax	# _251->gp_egv, D.15631
	testq	%rax, %rax	# D.15631
	je	.L217	#,
	.loc 1 861 0 is_stmt 0 discriminator 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.103
	movq	(%rax), %rax	# PL_defoutgv.103_253->sv_any, D.15627
	movq	56(%rax), %rax	# _254->xgv_gp, D.15628
	movq	48(%rax), %rax	# _255->gp_egv, iftmp.101
	jmp	.L218	#
.L217:
	.loc 1 861 0 discriminator 2
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, iftmp.101
.L218:
	.loc 1 861 0 discriminator 3
	movq	(%rax), %rax	# iftmp.101_13->sv_any, D.15627
	movq	64(%rax), %r12	# _258->xgv_name, s
.L216:
	.loc 1 862 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp444
	movq	%r12, %rsi	# s,
	movq	%rax, %rdi	# tmp444,
	call	Perl_sv_setpv	#
	.loc 1 863 0
	jmp	.L123	#
.L155:
	.loc 1 866 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.104
	movq	(%rax), %rax	# PL_defoutgv.104_260->sv_any, D.15627
	movq	56(%rax), %rax	# _261->xgv_gp, D.15628
	movq	16(%rax), %rax	# _262->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L219	#,
	.loc 1 867 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.105
	movq	(%rax), %rax	# PL_defoutgv.105_264->sv_any, D.15627
	movq	56(%rax), %rax	# _265->xgv_gp, D.15628
	movq	16(%rax), %rax	# _266->gp_io, D.15629
	movq	(%rax), %rax	# _267->sv_any, D.15630
	movq	96(%rax), %rdx	# _268->xio_page_len, D.15616
	movq	-88(%rbp), %rax	# sv, tmp445
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp445,
	call	Perl_sv_setiv	#
	.loc 1 868 0
	jmp	.L123	#
.L219:
	jmp	.L123	#
.L149:
	.loc 1 870 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.106
	movq	(%rax), %rax	# PL_defoutgv.106_270->sv_any, D.15627
	movq	56(%rax), %rax	# _271->xgv_gp, D.15628
	movq	16(%rax), %rax	# _272->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L220	#,
	.loc 1 871 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.107
	movq	(%rax), %rax	# PL_defoutgv.107_274->sv_any, D.15627
	movq	56(%rax), %rax	# _275->xgv_gp, D.15628
	movq	16(%rax), %rax	# _276->gp_io, D.15629
	movq	(%rax), %rax	# _277->sv_any, D.15630
	movq	104(%rax), %rdx	# _278->xio_lines_left, D.15616
	movq	-88(%rbp), %rax	# sv, tmp446
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp446,
	call	Perl_sv_setiv	#
	.loc 1 872 0
	jmp	.L123	#
.L220:
	jmp	.L123	#
.L141:
	.loc 1 874 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.108
	movq	(%rax), %rax	# PL_defoutgv.108_280->sv_any, D.15627
	movq	56(%rax), %rax	# _281->xgv_gp, D.15628
	movq	16(%rax), %rax	# _282->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L221	#,
	.loc 1 875 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.109
	movq	(%rax), %rax	# PL_defoutgv.109_284->sv_any, D.15627
	movq	56(%rax), %rax	# _285->xgv_gp, D.15628
	movq	16(%rax), %rax	# _286->gp_io, D.15629
	movq	(%rax), %rax	# _287->sv_any, D.15630
	movq	88(%rax), %rdx	# _288->xio_page, D.15616
	movq	-88(%rbp), %rax	# sv, tmp447
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp447,
	call	Perl_sv_setiv	#
	.loc 1 876 0
	jmp	.L123	#
.L221:
	jmp	.L123	#
.L158:
.LBB20:
	.loc 1 883 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.110
	movl	68(%rax), %eax	# PL_curcop.110_290->cop_arybase, D.15615
	movslq	%eax, %rdx	# D.15615, D.15616
	movq	-88(%rbp), %rax	# sv, tmp448
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp448,
	call	Perl_sv_setiv	#
.LBE20:
	.loc 1 884 0
	jmp	.L123	#
.L162:
	.loc 1 886 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.111
	movq	(%rax), %rax	# PL_defoutgv.111_293->sv_any, D.15627
	movq	56(%rax), %rax	# _294->xgv_gp, D.15628
	movq	16(%rax), %rax	# _295->gp_io, D.15629
	testq	%rax, %rax	# D.15629
	je	.L222	#,
	.loc 1 887 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.112
	movq	(%rax), %rax	# PL_defoutgv.112_297->sv_any, D.15627
	movq	56(%rax), %rax	# _298->xgv_gp, D.15628
	movq	16(%rax), %rax	# _299->gp_io, D.15629
	movq	(%rax), %rax	# _300->sv_any, D.15630
	movzbl	163(%rax), %eax	# _301->xio_flags, D.15614
	movsbq	%al, %rax	# D.15614, D.15616
	andl	$4, %eax	#, D.15616
	testq	%rax, %rax	# D.15616
	setne	%al	#, D.15632
	movzbl	%al, %edx	# D.15632, D.15616
	movq	-88(%rbp), %rax	# sv, tmp449
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp449,
	call	Perl_sv_setiv	#
	.loc 1 888 0
	jmp	.L123	#
.L222:
	jmp	.L123	#
.L159:
	.loc 1 892 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.113
	testq	%rax, %rax	# PL_ors_sv.113
	je	.L223	#,
	.loc 1 893 0
	movq	PL_ors_sv(%rip), %rdx	# PL_ors_sv, PL_ors_sv.114
	movq	-88(%rbp), %rax	# sv, tmp450
	movq	%rdx, %rsi	# PL_ors_sv.114,
	movq	%rax, %rdi	# tmp450,
	call	Perl_sv_copypv	#
	.loc 1 894 0
	jmp	.L123	#
.L223:
	jmp	.L123	#
.L140:
	.loc 1 896 0
	movq	PL_ofmt(%rip), %rdx	# PL_ofmt, PL_ofmt.115
	movq	-88(%rbp), %rax	# sv, tmp451
	movq	%rdx, %rsi	# PL_ofmt.115,
	movq	%rax, %rdi	# tmp451,
	call	Perl_sv_setpv	#
	.loc 1 897 0
	jmp	.L123	#
.L139:
.LBB21:
	.loc 1 904 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_310, tmp452
	movl	%eax, -68(%rbp)	# tmp452, saveerrno
	.loc 1 905 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_312, D.15615
	cvtsi2sd	%eax, %xmm0	# D.15615, D.15618
	movq	-88(%rbp), %rax	# sv, tmp453
	movq	%rax, %rdi	# tmp453,
	call	Perl_sv_setnv	#
	.loc 1 911 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_315, D.15615
	testl	%eax, %eax	# D.15615
	je	.L224	#,
	.loc 1 911 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_317, D.15615
	movl	%eax, %edi	# D.15615,
	call	strerror	#
	jmp	.L225	#
.L224:
	.loc 1 911 0 discriminator 2
	movl	$.LC2, %eax	#, iftmp.116
.L225:
	.loc 1 911 0 discriminator 3
	movq	-88(%rbp), %rdx	# sv, tmp454
	movq	%rax, %rsi	# iftmp.116,
	movq	%rdx, %rdi	# tmp454,
	call	Perl_sv_setpv	#
	.loc 1 912 0 is_stmt 1 discriminator 3
	call	__errno_location	#
	movl	-68(%rbp), %edx	# saveerrno, tmp455
	movl	%edx, (%rax)	# tmp455, *_321
.LBE21:
	.loc 1 915 0 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp456
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	orl	$33685504, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp457
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	.loc 1 916 0 discriminator 3
	jmp	.L123	#
.L154:
	.loc 1 918 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.117
	movl	%eax, %edx	# PL_uid.117, D.15616
	movq	-88(%rbp), %rax	# sv, tmp458
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp458,
	call	Perl_sv_setiv	#
	.loc 1 919 0
	jmp	.L123	#
.L156:
	.loc 1 921 0
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.118
	movl	%eax, %edx	# PL_euid.118, D.15616
	movq	-88(%rbp), %rax	# sv, tmp459
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp459,
	call	Perl_sv_setiv	#
	.loc 1 922 0
	jmp	.L123	#
.L144:
	.loc 1 924 0
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.119
	movl	%eax, %edx	# PL_gid.119, D.15616
	movq	-88(%rbp), %rax	# sv, tmp460
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp460,
	call	Perl_sv_setiv	#
	.loc 1 928 0
	jmp	.L226	#
.L145:
	.loc 1 930 0
	movl	PL_egid(%rip), %eax	# PL_egid, PL_egid.120
	movl	%eax, %edx	# PL_egid.120, D.15616
	movq	-88(%rbp), %rax	# sv, tmp461
	movq	%rdx, %rsi	# D.15616,
	movq	%rax, %rdi	# tmp461,
	call	Perl_sv_setiv	#
.L226:
	.loc 1 943 0
	movq	-88(%rbp), %rax	# sv, tmp462
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	andl	$2097152, %eax	#, D.15619
	testl	%eax, %eax	# D.15619
	je	.L228	#,
	.loc 1 943 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp463
	movq	%rax, %rdi	# tmp463,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15615
	je	.L228	#,
	.loc 1 943 0
	nop
.L228:
	.loc 1 943 0 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp464
	movl	12(%rax), %eax	# sv_21(D)->sv_flags, D.15619
	orl	$16842752, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movq	-88(%rbp), %rax	# sv, tmp465
	movl	%edx, 12(%rax)	# D.15619, sv_21(D)->sv_flags
	.loc 1 944 0 is_stmt 1 discriminator 3
	nop
.L123:
	.loc 1 957 0
	movl	$0, %eax	#, D.15615
	.loc 1 958 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_magic_get, .-Perl_magic_get
	.globl	Perl_magic_getuvar
	.type	Perl_magic_getuvar, @function
Perl_magic_getuvar:
.LFB17:
	.loc 1 962 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 963 0
	movq	-32(%rbp), %rax	# mg, tmp64
	movq	32(%rax), %rax	# mg_1(D)->mg_ptr, tmp65
	movq	%rax, -8(%rbp)	# tmp65, uf
	.loc 1 965 0
	cmpq	$0, -8(%rbp)	#, uf
	je	.L231	#,
	.loc 1 965 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# uf, tmp66
	movq	(%rax), %rax	# uf_2->uf_val, D.15645
	testq	%rax, %rax	# D.15645
	je	.L231	#,
	.loc 1 966 0 is_stmt 1
	movq	-8(%rbp), %rax	# uf, tmp67
	movq	(%rax), %rax	# uf_2->uf_val, D.15645
	movq	-8(%rbp), %rdx	# uf, tmp68
	movq	16(%rdx), %rdx	# uf_2->uf_index, D.15646
	movq	-24(%rbp), %rcx	# sv, tmp69
	movq	%rcx, %rsi	# tmp69,
	movq	%rdx, %rdi	# D.15646,
	call	*%rax	# D.15645
.L231:
	.loc 1 967 0
	movl	$0, %eax	#, D.15647
	.loc 1 968 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_magic_getuvar, .-Perl_magic_getuvar
	.section	.rodata
.LC14:
	.string	"PATH"
	.text
	.globl	Perl_magic_setenv
	.type	Perl_magic_setenv, @function
Perl_magic_setenv:
.LFB18:
	.loc 1 972 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$488, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -488(%rbp)	# sv, sv
	movq	%rsi, -496(%rbp)	# mg, mg
	.loc 1 972 0
	movq	%fs:40, %rax	#, tmp124
	movq	%rax, -24(%rbp)	# tmp124, D.15654
	xorl	%eax, %eax	# tmp124
	.loc 1 977 0
	movq	-488(%rbp), %rax	# sv, tmp97
	movl	12(%rax), %eax	# sv_6(D)->sv_flags, D.15649
	andl	$262144, %eax	#, D.15649
	testl	%eax, %eax	# D.15649
	je	.L234	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movq	-488(%rbp), %rax	# sv, tmp98
	movq	(%rax), %rax	# sv_6(D)->sv_any, D.15650
	movq	8(%rax), %rax	# MEM[(struct XPV *)_9].xpv_cur, len.123
	movq	%rax, -464(%rbp)	# len.123, len
	movq	-488(%rbp), %rax	# sv, tmp99
	movq	(%rax), %rax	# sv_6(D)->sv_any, D.15650
	movq	(%rax), %rax	# MEM[(struct XPV *)_11].xpv_pv, iftmp.122
	jmp	.L235	#
.L234:
	.loc 1 977 0 discriminator 2
	leaq	-464(%rbp), %rcx	#, tmp100
	movq	-488(%rbp), %rax	# sv, tmp101
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	Perl_sv_2pv_flags	#
.L235:
	.loc 1 977 0 discriminator 3
	movq	%rax, %rbx	# iftmp.122, s
	.loc 1 978 0 is_stmt 1 discriminator 3
	movq	-496(%rbp), %rax	# mg, tmp102
	movl	40(%rax), %eax	# mg_15(D)->mg_len, D.15648
	cltq
	movq	%rax, -456(%rbp)	# klen.125, klen
	movq	-456(%rbp), %rax	# klen, klen.126
	cmpl	$-2, %eax	#, D.15648
	jne	.L236	#,
	.loc 1 978 0 is_stmt 0 discriminator 1
	movq	-496(%rbp), %rax	# mg, tmp103
	movq	32(%rax), %rax	# mg_15(D)->mg_ptr, D.15651
	movl	12(%rax), %eax	# MEM[(struct SV *)_20].sv_flags, D.15649
	andl	$262144, %eax	#, D.15649
	testl	%eax, %eax	# D.15649
	je	.L237	#,
	movq	-496(%rbp), %rax	# mg, tmp104
	movq	32(%rax), %rax	# mg_15(D)->mg_ptr, D.15651
	movq	(%rax), %rax	# MEM[(struct SV *)_23].sv_any, D.15650
	movq	8(%rax), %rax	# MEM[(struct XPV *)_24].xpv_cur, klen.128
	movq	%rax, -456(%rbp)	# klen.128, klen
	movq	-496(%rbp), %rax	# mg, tmp105
	movq	32(%rax), %rax	# mg_15(D)->mg_ptr, D.15651
	movq	(%rax), %rax	# MEM[(struct SV *)_26].sv_any, D.15650
	movq	(%rax), %rax	# MEM[(struct XPV *)_27].xpv_pv, iftmp.127
	jmp	.L239	#
.L237:
	.loc 1 978 0 discriminator 2
	movq	-496(%rbp), %rax	# mg, tmp106
	movq	32(%rax), %rax	# mg_15(D)->mg_ptr, D.15651
	leaq	-456(%rbp), %rcx	#, tmp107
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.15651,
	call	Perl_sv_2pv_flags	#
	jmp	.L239	#
.L236:
	movq	-496(%rbp), %rax	# mg, tmp108
	movq	32(%rax), %rax	# mg_15(D)->mg_ptr, iftmp.124
.L239:
	.loc 1 978 0 discriminator 3
	movq	%rax, -448(%rbp)	# iftmp.124, ptr
	.loc 1 979 0 is_stmt 1 discriminator 3
	movq	-448(%rbp), %rax	# ptr, tmp109
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp109,
	call	Perl_my_setenv	#
	.loc 1 994 0 discriminator 3
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.129
	testb	%al, %al	# PL_tainting.129
	je	.L240	#,
	.loc 1 995 0
	movq	-496(%rbp), %rax	# mg, tmp110
	movzbl	19(%rax), %eax	# mg_15(D)->mg_flags, D.15652
	andl	$-2, %eax	#, D.15652
	movl	%eax, %edx	# D.15652, D.15652
	movq	-496(%rbp), %rax	# mg, tmp111
	movb	%dl, 19(%rax)	# D.15652, mg_15(D)->mg_flags
	.loc 1 1022 0
	testq	%rbx, %rbx	# s
	je	.L240	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# klen, klen.130
	cmpq	$4, %rax	#, klen.130
	jne	.L240	#,
	movq	-448(%rbp), %rax	# ptr, tmp112
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	strcmp	#
	testl	%eax, %eax	# D.15648
	jne	.L240	#,
.LBB22:
	.loc 1 1023 0 is_stmt 1
	movq	-464(%rbp), %rax	# len, len.131
	addq	%rbx, %rax	# s, tmp113
	movq	%rax, -440(%rbp)	# tmp113, strend
	.loc 1 1025 0
	jmp	.L241	#
.L245:
.LBB23:
	.loc 1 1029 0
	leaq	-468(%rbp), %rcx	#, tmp114
	movq	-440(%rbp), %rdx	# strend, tmp115
	leaq	-288(%rbp), %rax	#, tmp116
	leaq	256(%rax), %rsi	#, tmp117
	leaq	-288(%rbp), %rax	#, tmp118
	movq	%rcx, %r9	# tmp114,
	movl	$58, %r8d	#,
	movq	%rdx, %rcx	# tmp115,
	movq	%rbx, %rdx	# s,
	movq	%rax, %rdi	# tmp118,
	call	Perl_delimcpy	#
	movq	%rax, %rbx	#, s
	.loc 1 1031 0
	addq	$1, %rbx	#, s
	.loc 1 1032 0
	movl	-468(%rbp), %eax	# i, i.132
	cmpl	$255, %eax	#, i.133
	ja	.L242	#,
	.loc 1 1033 0
	movzbl	-288(%rbp), %eax	# tmpbuf, D.15653
	cmpb	$47, %al	#, D.15653
	jne	.L242	#,
	.loc 1 1034 0
	leaq	-432(%rbp), %rdx	#, tmp119
	leaq	-288(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	stat	#
	testl	%eax, %eax	# D.15648
	jne	.L241	#,
	.loc 1 1034 0 is_stmt 0 discriminator 1
	movl	-408(%rbp), %eax	# st.st_mode, D.15649
	andl	$2, %eax	#, D.15649
	testl	%eax, %eax	# D.15649
	je	.L241	#,
.L242:
	.loc 1 1035 0 is_stmt 1
	movq	-496(%rbp), %rax	# mg, tmp121
	movzbl	19(%rax), %eax	# mg_15(D)->mg_flags, D.15652
	orl	$1, %eax	#, D.15652
	movl	%eax, %edx	# D.15652, D.15652
	movq	-496(%rbp), %rax	# mg, tmp122
	movb	%dl, 19(%rax)	# D.15652, mg_15(D)->mg_flags
	.loc 1 1036 0
	movl	$0, %eax	#, D.15648
	jmp	.L246	#
.L241:
.LBE23:
	.loc 1 1025 0 discriminator 1
	cmpq	-440(%rbp), %rbx	# strend, s
	jb	.L245	#,
.L240:
.LBE22:
	.loc 1 1043 0
	movl	$0, %eax	#, D.15648
.L246:
	.loc 1 1044 0
	movq	-24(%rbp), %rcx	# D.15654, tmp125
	xorq	%fs:40, %rcx	#, tmp125
	je	.L247	#,
	call	__stack_chk_fail	#
.L247:
	addq	$488, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_magic_setenv, .-Perl_magic_setenv
	.globl	Perl_magic_clearenv
	.type	Perl_magic_clearenv, @function
Perl_magic_clearenv:
.LFB19:
	.loc 1 1048 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 1050 0
	movq	-32(%rbp), %rax	# mg, tmp76
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15658
	cltq
	movq	%rax, -8(%rbp)	# n_a.135, n_a
	movq	-8(%rbp), %rax	# n_a, n_a.136
	cmpl	$-2, %eax	#, D.15658
	jne	.L249	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp77
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15659
	movl	12(%rax), %eax	# MEM[(struct SV *)_8].sv_flags, D.15660
	andl	$262144, %eax	#, D.15660
	testl	%eax, %eax	# D.15660
	je	.L250	#,
	movq	-32(%rbp), %rax	# mg, tmp78
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15659
	movq	(%rax), %rax	# MEM[(struct SV *)_11].sv_any, D.15661
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, n_a.138
	movq	%rax, -8(%rbp)	# n_a.138, n_a
	movq	-32(%rbp), %rax	# mg, tmp79
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15659
	movq	(%rax), %rax	# MEM[(struct SV *)_14].sv_any, D.15661
	movq	(%rax), %rax	# MEM[(struct XPV *)_15].xpv_pv, iftmp.137
	jmp	.L252	#
.L250:
	.loc 1 1050 0 discriminator 2
	movq	-32(%rbp), %rax	# mg, tmp80
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15659
	leaq	-8(%rbp), %rcx	#, tmp81
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.15659,
	call	Perl_sv_2pv_flags	#
	jmp	.L252	#
.L249:
	movq	-32(%rbp), %rax	# mg, tmp82
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, iftmp.134
.L252:
	.loc 1 1050 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.134,
	call	Perl_my_setenv	#
	.loc 1 1051 0 is_stmt 1 discriminator 3
	movl	$0, %eax	#, D.15658
	.loc 1 1052 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_magic_clearenv, .-Perl_magic_clearenv
	.globl	Perl_magic_set_all_env
	.type	Perl_magic_set_all_env, @function
Perl_magic_set_all_env:
.LFB20:
	.loc 1 1056 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1060 0
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.139
	testl	%eax, %eax	# PL_localizing.139
	je	.L255	#,
.LBB24:
	.loc 1 1063 0
	movq	-64(%rbp), %rdx	# mg, tmp73
	movq	-56(%rbp), %rax	# sv, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	Perl_magic_clear_all_env	#
	.loc 1 1064 0
	movq	-56(%rbp), %rax	# sv, tmp75
	movq	%rax, %rdi	# tmp75,
	call	Perl_hv_iterinit	#
	.loc 1 1065 0
	jmp	.L256	#
.L259:
.LBB25:
	.loc 1 1068 0
	movq	-24(%rbp), %rdx	# entry, tmp76
	movq	-56(%rbp), %rax	# sv, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	Perl_hv_iterval	#
	movl	12(%rax), %eax	# _6->sv_flags, D.15663
	andl	$262144, %eax	#, D.15663
	.loc 1 1067 0
	testl	%eax, %eax	# D.15663
	je	.L257	#,
	.loc 1 1068 0
	movq	-24(%rbp), %rdx	# entry, tmp78
	movq	-56(%rbp), %rax	# sv, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Perl_hv_iterval	#
	movq	(%rax), %rax	# _9->sv_any, D.15664
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, n_a.141
	movq	%rax, -32(%rbp)	# n_a.141, n_a
	movq	-24(%rbp), %rdx	# entry, tmp80
	movq	-56(%rbp), %rax	# sv, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	Perl_hv_iterval	#
	movq	(%rax), %rax	# _12->sv_any, D.15664
	.loc 1 1067 0
	movq	(%rax), %rbx	# MEM[(struct XPV *)_13].xpv_pv, iftmp.140
	jmp	.L258	#
.L257:
	.loc 1 1068 0 discriminator 1
	movq	-24(%rbp), %rdx	# entry, tmp82
	movq	-56(%rbp), %rax	# sv, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	Perl_hv_iterval	#
	.loc 1 1067 0 discriminator 1
	leaq	-32(%rbp), %rcx	#, tmp84
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# D.15662,
	call	Perl_sv_2pv_flags	#
	movq	%rax, %rbx	#, iftmp.140
.L258:
	leaq	-36(%rbp), %rdx	#, tmp85
	movq	-24(%rbp), %rax	# entry, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	Perl_hv_iterkey	#
	movq	%rbx, %rsi	# iftmp.140,
	movq	%rax, %rdi	# D.15665,
	call	Perl_my_setenv	#
.L256:
.LBE25:
	.loc 1 1065 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_hv_iternext	#
	movq	%rax, -24(%rbp)	# tmp88, entry
	cmpq	$0, -24(%rbp)	#, entry
	jne	.L259	#,
.L255:
.LBE24:
	.loc 1 1072 0
	movl	$0, %eax	#, D.15666
	.loc 1 1073 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_magic_set_all_env, .-Perl_magic_set_all_env
	.globl	Perl_magic_clear_all_env
	.type	Perl_magic_clear_all_env, @function
Perl_magic_clear_all_env:
.LFB21:
	.loc 1 1077 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 1092 0
	movl	PL_use_safe_putenv(%rip), %eax	# PL_use_safe_putenv, PL_use_safe_putenv.142
	testl	%eax, %eax	# PL_use_safe_putenv.142
	jne	.L262	#,
.LBB26:
	.loc 1 1095 0
	movq	environ(%rip), %rdx	# environ, environ.143
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.144
	cmpq	%rax, %rdx	# PL_origenviron.144, environ.143
	jne	.L263	#,
	.loc 1 1096 0
	movl	$8, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, environ(%rip)	# environ.145, environ
	jmp	.L262	#
.L263:
	.loc 1 1098 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L264	#
.L265:
	.loc 1 1099 0 discriminator 2
	movq	environ(%rip), %rax	# environ, environ.146
	movl	-4(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, D.15667
	salq	$3, %rdx	#, D.15667
	addq	%rdx, %rax	# D.15667, D.15668
	movq	(%rax), %rax	# *_15, D.15669
	movq	%rax, %rdi	# D.15669,
	call	Perl_safesysfree	#
	.loc 1 1098 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L264:
	.loc 1 1098 0 is_stmt 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.147
	movl	-4(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, D.15667
	salq	$3, %rdx	#, D.15667
	addq	%rdx, %rax	# D.15667, D.15668
	movq	(%rax), %rax	# *_10, D.15669
	testq	%rax, %rax	# D.15669
	jne	.L265	#,
.L262:
.LBE26:
	.loc 1 1103 0 is_stmt 1
	movq	environ(%rip), %rax	# environ, environ.148
	movq	$0, (%rax)	#, *environ.148_18
	.loc 1 1109 0
	movl	$0, %eax	#, D.15670
	.loc 1 1110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_magic_clear_all_env, .-Perl_magic_clear_all_env
	.section	.rodata
.LC15:
	.string	"IGNORE"
	.text
	.globl	Perl_magic_getsig
	.type	Perl_magic_getsig, @function
Perl_magic_getsig:
.LFB22:
	.loc 1 1133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1137 0
	movq	-48(%rbp), %rax	# mg, tmp100
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15671
	cltq
	movq	%rax, -16(%rbp)	# n_a.150, n_a
	movq	-16(%rbp), %rax	# n_a, n_a.151
	cmpl	$-2, %eax	#, D.15671
	jne	.L268	#,
	.loc 1 1137 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp101
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15672
	movl	12(%rax), %eax	# MEM[(struct SV *)_8].sv_flags, D.15673
	andl	$262144, %eax	#, D.15673
	testl	%eax, %eax	# D.15673
	je	.L269	#,
	movq	-48(%rbp), %rax	# mg, tmp102
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15672
	movq	(%rax), %rax	# MEM[(struct SV *)_11].sv_any, D.15674
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, n_a.153
	movq	%rax, -16(%rbp)	# n_a.153, n_a
	movq	-48(%rbp), %rax	# mg, tmp103
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15672
	movq	(%rax), %rax	# MEM[(struct SV *)_14].sv_any, D.15674
	movq	(%rax), %rax	# MEM[(struct XPV *)_15].xpv_pv, iftmp.152
	jmp	.L271	#
.L269:
	.loc 1 1137 0 discriminator 2
	movq	-48(%rbp), %rax	# mg, tmp104
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, D.15672
	leaq	-16(%rbp), %rcx	#, tmp105
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# D.15672,
	call	Perl_sv_2pv_flags	#
	jmp	.L271	#
.L268:
	movq	-48(%rbp), %rax	# mg, tmp106
	movq	32(%rax), %rax	# mg_3(D)->mg_ptr, iftmp.149
.L271:
	.loc 1 1137 0 discriminator 3
	movq	%rax, %rdi	# iftmp.149,
	call	Perl_whichsig	#
	movl	%eax, -20(%rbp)	# tmp107, i
	.loc 1 1138 0 is_stmt 1 discriminator 3
	cmpl	$0, -20(%rbp)	#, i
	jle	.L272	#,
	.loc 1 1139 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.154
	movl	-20(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, D.15675
	salq	$3, %rdx	#, D.15675
	addq	%rdx, %rax	# D.15675, D.15676
	movq	(%rax), %rax	# *_25, D.15677
	testq	%rax, %rax	# D.15677
	je	.L273	#,
	.loc 1 1140 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.155
	movl	-20(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.15675
	salq	$3, %rdx	#, D.15675
	addq	%rdx, %rax	# D.15675, D.15676
	movq	(%rax), %rcx	# *_30, D.15677
	movq	-40(%rbp), %rax	# sv, tmp110
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15677,
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_setsv_flags	#
	jmp	.L272	#
.L273:
.LBB27:
	.loc 1 1143 0
	movl	-20(%rbp), %eax	# i, tmp111
	movl	%eax, %edi	# tmp111,
	call	Perl_rsignal_state	#
	movq	%rax, -8(%rbp)	# tmp112, sigstate
	.loc 1 1151 0
	cmpq	$1, -8(%rbp)	#, sigstate
	jne	.L274	#,
	.loc 1 1152 0
	movq	-40(%rbp), %rax	# sv, tmp113
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	Perl_sv_setpv	#
	jmp	.L275	#
.L274:
	.loc 1 1154 0
	movq	-40(%rbp), %rax	# sv, tmp114
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	Perl_sv_setsv_flags	#
.L275:
	.loc 1 1155 0
	movq	-40(%rbp), %rax	# sv, tmp115
	movq	%rax, PL_Sv(%rip)	# tmp115, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.157
	testq	%rax, %rax	# PL_Sv.157
	je	.L277	#,
	.loc 1 1155 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.158
	movl	8(%rax), %edx	# PL_Sv.158_35->sv_refcnt, D.15673
	addl	$1, %edx	#, D.15673
	movl	%edx, 8(%rax)	# D.15673, PL_Sv.158_35->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.158_35->sv_refcnt, D.15673
	testl	%eax, %eax	# D.15673
	je	.L277	#,
	.loc 1 1155 0
	nop
.L277:
	.loc 1 1155 0 discriminator 4
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.159
	movl	-20(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, D.15675
	salq	$3, %rdx	#, D.15675
	addq	%rax, %rdx	# PL_psig_ptr.159, D.15676
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.160
	movq	%rax, (%rdx)	# PL_Sv.160, *_44
	.loc 1 1156 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax	# sv, tmp117
	movl	12(%rax), %eax	# sv_32(D)->sv_flags, D.15673
	andb	$247, %ah	#, D.15673
	movl	%eax, %edx	# D.15673, D.15673
	movq	-40(%rbp), %rax	# sv, tmp118
	movl	%edx, 12(%rax)	# D.15673, sv_32(D)->sv_flags
.L272:
.LBE27:
	.loc 1 1159 0
	movl	$0, %eax	#, D.15671
	.loc 1 1160 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_magic_getsig, .-Perl_magic_getsig
	.section	.rodata
.LC16:
	.string	"__DIE__"
.LC17:
	.string	"__WARN__"
.LC18:
	.string	"No such hook: %s"
	.text
	.globl	Perl_magic_clearsig
	.type	Perl_magic_clearsig, @function
Perl_magic_clearsig:
.LFB23:
	.loc 1 1163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1170 0
	movq	-64(%rbp), %rax	# mg, tmp109
	movl	40(%rax), %eax	# mg_4(D)->mg_len, D.15679
	cltq
	movq	%rax, -40(%rbp)	# n_a.162, n_a
	movq	-40(%rbp), %rax	# n_a, n_a.163
	cmpl	$-2, %eax	#, D.15679
	jne	.L280	#,
	.loc 1 1170 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp110
	movq	32(%rax), %rax	# mg_4(D)->mg_ptr, D.15680
	movl	12(%rax), %eax	# MEM[(struct SV *)_9].sv_flags, D.15681
	andl	$262144, %eax	#, D.15681
	testl	%eax, %eax	# D.15681
	je	.L281	#,
	movq	-64(%rbp), %rax	# mg, tmp111
	movq	32(%rax), %rax	# mg_4(D)->mg_ptr, D.15680
	movq	(%rax), %rax	# MEM[(struct SV *)_12].sv_any, D.15682
	movq	8(%rax), %rax	# MEM[(struct XPV *)_13].xpv_cur, n_a.165
	movq	%rax, -40(%rbp)	# n_a.165, n_a
	movq	-64(%rbp), %rax	# mg, tmp112
	movq	32(%rax), %rax	# mg_4(D)->mg_ptr, D.15680
	movq	(%rax), %rax	# MEM[(struct SV *)_15].sv_any, D.15682
	movq	(%rax), %rax	# MEM[(struct XPV *)_16].xpv_pv, iftmp.164
	jmp	.L283	#
.L281:
	.loc 1 1170 0 discriminator 2
	movq	-64(%rbp), %rax	# mg, tmp113
	movq	32(%rax), %rax	# mg_4(D)->mg_ptr, D.15680
	leaq	-40(%rbp), %rcx	#, tmp114
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.15680,
	call	Perl_sv_2pv_flags	#
	jmp	.L283	#
.L280:
	movq	-64(%rbp), %rax	# mg, tmp115
	movq	32(%rax), %rax	# mg_4(D)->mg_ptr, iftmp.161
.L283:
	.loc 1 1170 0 discriminator 3
	movq	%rax, %rbx	# iftmp.161, s
	.loc 1 1171 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %eax	# *s_22, D.15683
	cmpb	$95, %al	#, D.15683
	jne	.L284	#,
.LBB28:
	.loc 1 1173 0
	movl	$.LC16, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15679
	jne	.L285	#,
	.loc 1 1174 0
	movq	$PL_diehook, -32(%rbp)	#, svp
	jmp	.L286	#
.L285:
	.loc 1 1175 0
	movl	$.LC17, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15679
	jne	.L287	#,
	.loc 1 1176 0
	movq	$PL_warnhook, -32(%rbp)	#, svp
	jmp	.L286	#
.L287:
	.loc 1 1178 0
	movq	%rbx, %rsi	# s,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L286:
	.loc 1 1179 0
	movq	-32(%rbp), %rax	# svp, tmp116
	movq	(%rax), %rax	# *svp_1, D.15684
	testq	%rax, %rax	# D.15684
	je	.L288	#,
	.loc 1 1180 0
	movq	-32(%rbp), %rax	# svp, tmp117
	movq	(%rax), %rax	# *svp_1, tmp118
	movq	%rax, -24(%rbp)	# tmp118, to_dec
	.loc 1 1181 0
	movq	-32(%rbp), %rax	# svp, tmp119
	movq	$0, (%rax)	#, *svp_1
	.loc 1 1182 0
	movq	-24(%rbp), %rax	# to_dec, tmp120
	movq	%rax, %rdi	# tmp120,
	call	Perl_sv_free	#
.LBE28:
	jmp	.L289	#
.L288:
	jmp	.L289	#
.L284:
.LBB29:
	.loc 1 1188 0
	movq	%rbx, %rdi	# s,
	call	Perl_whichsig	#
	movl	%eax, -44(%rbp)	# tmp121, i
	.loc 1 1189 0
	cmpl	$0, -44(%rbp)	#, i
	jle	.L289	#,
	.loc 1 1202 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.166
	testl	%eax, %eax	# PL_sig_pending.166
	je	.L290	#,
	.loc 1 1202 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L290:
	.loc 1 1210 0 is_stmt 1
	movl	-44(%rbp), %eax	# i, tmp122
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp122,
	call	Perl_rsignal	#
	.loc 1 1212 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.167
	movl	-44(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	(%rax), %rax	# *_36, D.15684
	testq	%rax, %rax	# D.15684
	je	.L291	#,
	.loc 1 1213 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.168
	movl	-44(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	(%rax), %rax	# *_41, D.15684
	movq	%rax, %rdi	# D.15684,
	call	Perl_sv_free	#
	.loc 1 1214 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.169
	movl	-44(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	$0, (%rax)	#, *_46
.L291:
	.loc 1 1216 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.170
	movl	-44(%rbp), %edx	# i, tmp126
	movslq	%edx, %rdx	# tmp126, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	(%rax), %rax	# *_50, D.15684
	testq	%rax, %rax	# D.15684
	je	.L292	#,
	.loc 1 1217 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.171
	movl	-44(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	(%rax), %rax	# *_55, tmp128
	movq	%rax, -24(%rbp)	# tmp128, to_dec
	.loc 1 1218 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.172
	movl	-44(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, D.15685
	salq	$3, %rdx	#, D.15685
	addq	%rdx, %rax	# D.15685, D.15686
	movq	$0, (%rax)	#, *_60
	.loc 1 1219 0
	call	Perl_pop_scope	#
	.loc 1 1220 0
	movq	-24(%rbp), %rax	# to_dec, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_sv_free	#
	jmp	.L289	#
.L292:
	.loc 1 1223 0
	call	Perl_pop_scope	#
.L289:
.LBE29:
	.loc 1 1226 0
	movl	$0, %eax	#, D.15679
	.loc 1 1227 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_magic_clearsig, .-Perl_magic_clearsig
	.globl	Perl_raise_signal
	.type	Perl_raise_signal, @function
Perl_raise_signal:
.LFB24:
	.loc 1 1231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# sig, sig
	.loc 1 1233 0
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.173
	movl	-4(%rbp), %edx	# sig, tmp65
	movslq	%edx, %rdx	# tmp65, D.15690
	salq	$2, %rdx	#, D.15690
	addq	%rdx, %rax	# D.15690, D.15691
	movl	(%rax), %edx	# *_5, D.15692
	addl	$1, %edx	#, D.15692
	movl	%edx, (%rax)	# D.15692, *_5
	.loc 1 1235 0
	movl	$1, PL_sig_pending(%rip)	#, PL_sig_pending
	.loc 1 1236 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_raise_signal, .-Perl_raise_signal
	.globl	Perl_csighandler
	.type	Perl_csighandler, @function
Perl_csighandler:
.LFB25:
	.loc 1 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# sig, sig
	.loc 1 1258 0
	movl	PL_signals(%rip), %eax	# PL_signals, PL_signals.174
	andl	$1, %eax	#, D.15693
	testl	%eax, %eax	# D.15693
	je	.L296	#,
	.loc 1 1261 0
	movq	PL_sighandlerp(%rip), %rax	# PL_sighandlerp, PL_sighandlerp.175
	movl	-4(%rbp), %edx	# sig, tmp62
	movl	%edx, %edi	# tmp62,
	call	*%rax	# PL_sighandlerp.175
	jmp	.L295	#
.L296:
	.loc 1 1263 0
	movl	-4(%rbp), %eax	# sig, tmp63
	movl	%eax, %edi	# tmp63,
	call	Perl_raise_signal	#
.L295:
	.loc 1 1264 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_csighandler, .-Perl_csighandler
	.globl	Perl_despatch_signals
	.type	Perl_despatch_signals, @function
Perl_despatch_signals:
.LFB26:
	.loc 1 1289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1291 0
	movl	$0, PL_sig_pending(%rip)	#, PL_sig_pending
	.loc 1 1292 0
	movl	$1, -4(%rbp)	#, sig
	jmp	.L299	#
.L301:
	.loc 1 1293 0
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.176
	movl	-4(%rbp), %edx	# sig, tmp69
	movslq	%edx, %rdx	# tmp69, D.15694
	salq	$2, %rdx	#, D.15694
	addq	%rdx, %rax	# D.15694, D.15695
	movl	(%rax), %eax	# *_6, D.15696
	testl	%eax, %eax	# D.15696
	je	.L300	#,
	.loc 1 1295 0
	movq	PL_psig_pend(%rip), %rax	# PL_psig_pend, PL_psig_pend.177
	movl	-4(%rbp), %edx	# sig, tmp70
	movslq	%edx, %rdx	# tmp70, D.15694
	salq	$2, %rdx	#, D.15694
	addq	%rdx, %rax	# D.15694, D.15695
	movl	$0, (%rax)	#, *_11
	.loc 1 1297 0
	movq	PL_sighandlerp(%rip), %rax	# PL_sighandlerp, PL_sighandlerp.178
	movl	-4(%rbp), %edx	# sig, tmp71
	movl	%edx, %edi	# tmp71,
	call	*%rax	# PL_sighandlerp.178
.L300:
	.loc 1 1292 0
	addl	$1, -4(%rbp)	#, sig
.L299:
	.loc 1 1292 0 is_stmt 0 discriminator 1
	cmpl	$15, -4(%rbp)	#, sig
	jle	.L301	#,
	.loc 1 1301 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_despatch_signals, .-Perl_despatch_signals
	.section	.rodata
.LC19:
	.string	"No such signal: SIG%s"
.LC20:
	.string	"DEFAULT"
.LC21:
	.string	"main::"
	.text
	.globl	Perl_magic_setsig
	.type	Perl_magic_setsig, @function
Perl_magic_setsig:
.LFB27:
	.loc 1 1305 0
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
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1308 0
	movq	$0, -32(%rbp)	#, svp
	.loc 1 1313 0
	movq	$0, -24(%rbp)	#, to_dec
	.loc 1 1320 0
	movq	-64(%rbp), %rax	# mg, tmp175
	movl	40(%rax), %eax	# mg_12(D)->mg_len, D.15697
	cltq
	movq	%rax, -40(%rbp)	# len.180, len
	movq	-40(%rbp), %rax	# len, len.181
	cmpl	$-2, %eax	#, D.15697
	jne	.L303	#,
	.loc 1 1320 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp176
	movq	32(%rax), %rax	# mg_12(D)->mg_ptr, D.15698
	movl	12(%rax), %eax	# MEM[(struct SV *)_17].sv_flags, D.15699
	andl	$262144, %eax	#, D.15699
	testl	%eax, %eax	# D.15699
	je	.L304	#,
	movq	-64(%rbp), %rax	# mg, tmp177
	movq	32(%rax), %rax	# mg_12(D)->mg_ptr, D.15698
	movq	(%rax), %rax	# MEM[(struct SV *)_20].sv_any, D.15700
	movq	8(%rax), %rax	# MEM[(struct XPV *)_21].xpv_cur, len.183
	movq	%rax, -40(%rbp)	# len.183, len
	movq	-64(%rbp), %rax	# mg, tmp178
	movq	32(%rax), %rax	# mg_12(D)->mg_ptr, D.15698
	movq	(%rax), %rax	# MEM[(struct SV *)_23].sv_any, D.15700
	movq	(%rax), %rax	# MEM[(struct XPV *)_24].xpv_pv, iftmp.182
	jmp	.L306	#
.L304:
	.loc 1 1320 0 discriminator 2
	movq	-64(%rbp), %rax	# mg, tmp179
	movq	32(%rax), %rax	# mg_12(D)->mg_ptr, D.15698
	leaq	-40(%rbp), %rcx	#, tmp180
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp180,
	movq	%rax, %rdi	# D.15698,
	call	Perl_sv_2pv_flags	#
	jmp	.L306	#
.L303:
	movq	-64(%rbp), %rax	# mg, tmp181
	movq	32(%rax), %rax	# mg_12(D)->mg_ptr, iftmp.179
.L306:
	.loc 1 1320 0 discriminator 3
	movq	%rax, %rbx	# iftmp.179, s
	.loc 1 1321 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %eax	# *s_30, D.15701
	cmpb	$95, %al	#, D.15701
	jne	.L307	#,
	.loc 1 1322 0
	movl	$.LC16, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15697
	jne	.L308	#,
	.loc 1 1323 0
	movq	$PL_diehook, -32(%rbp)	#, svp
	jmp	.L309	#
.L308:
	.loc 1 1324 0
	movl	$.LC17, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15697
	jne	.L310	#,
	.loc 1 1325 0
	movq	$PL_warnhook, -32(%rbp)	#, svp
	jmp	.L309	#
.L310:
	.loc 1 1327 0
	movq	%rbx, %rsi	# s,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L309:
	.loc 1 1328 0
	movl	$0, -44(%rbp)	#, i
	.loc 1 1329 0
	movq	-32(%rbp), %rax	# svp, tmp182
	movq	(%rax), %rax	# *svp_2, D.15702
	testq	%rax, %rax	# D.15702
	je	.L312	#,
	.loc 1 1330 0
	movq	-32(%rbp), %rax	# svp, tmp183
	movq	(%rax), %rax	# *svp_2, tmp184
	movq	%rax, -24(%rbp)	# tmp184, to_dec
	.loc 1 1331 0
	movq	-32(%rbp), %rax	# svp, tmp185
	movq	$0, (%rax)	#, *svp_2
	jmp	.L312	#
.L307:
	.loc 1 1335 0
	movq	%rbx, %rdi	# s,
	call	Perl_whichsig	#
	movl	%eax, -44(%rbp)	# tmp186, i
	.loc 1 1336 0
	cmpl	$0, -44(%rbp)	#, i
	jns	.L313	#,
	.loc 1 1337 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.184
	movq	80(%rax), %rax	# PL_curcop.184_40->cop_warnings, D.15702
	testq	%rax, %rax	# D.15702
	je	.L314	#,
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.185
	movq	80(%rax), %rax	# PL_curcop.185_42->cop_warnings, D.15702
	cmpq	$32, %rax	#, D.15702
	je	.L314	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.186
	movq	80(%rax), %rax	# PL_curcop.186_44->cop_warnings, D.15702
	cmpq	$16, %rax	#, D.15702
	je	.L315	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.187
	movq	80(%rax), %rax	# PL_curcop.187_46->cop_warnings, D.15702
	movq	(%rax), %rax	# _47->sv_any, D.15700
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, D.15698
	addq	$6, %rax	#, D.15698
	movzbl	(%rax), %eax	# *_50, D.15701
	movsbl	%al, %eax	# D.15701, D.15697
	andl	$16, %eax	#, D.15697
	testl	%eax, %eax	# D.15697
	jne	.L315	#,
.L314:
	.loc 1 1337 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.188
	movq	80(%rax), %rax	# PL_curcop.188_54->cop_warnings, D.15702
	testq	%rax, %rax	# D.15702
	jne	.L316	#,
	.loc 1 1337 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.189
	movzbl	%al, %eax	# PL_dowarn.189, D.15697
	andl	$1, %eax	#, D.15697
	testl	%eax, %eax	# D.15697
	je	.L316	#,
.L315:
	.loc 1 1338 0 is_stmt 1
	movq	%rbx, %rdx	# s,
	movl	$.LC19, %esi	#,
	movl	$26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L316:
	.loc 1 1339 0
	movl	$0, %eax	#, D.15697
	jmp	.L341	#
.L313:
	.loc 1 1351 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.190
	testl	%eax, %eax	# PL_sig_pending.190
	je	.L318	#,
	.loc 1 1351 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L318:
	.loc 1 1361 0 is_stmt 1
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.191
	movl	-44(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, D.15703
	salq	$3, %rdx	#, D.15703
	addq	%rdx, %rax	# D.15703, D.15704
	movq	(%rax), %rax	# *_64, D.15702
	movq	%rax, %rdi	# D.15702,
	call	Perl_sv_free	#
	.loc 1 1362 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.192
	movl	-44(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, D.15703
	salq	$3, %rdx	#, D.15703
	addq	%rdx, %rax	# D.15703, D.15704
	movq	(%rax), %rax	# *_69, tmp189
	movq	%rax, -24(%rbp)	# tmp189, to_dec
	.loc 1 1363 0
	movq	-56(%rbp), %rax	# sv, tmp190
	movq	%rax, PL_Sv(%rip)	# tmp190, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.194
	testq	%rax, %rax	# PL_Sv.194
	je	.L320	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.195
	movl	8(%rax), %edx	# PL_Sv.195_73->sv_refcnt, D.15699
	addl	$1, %edx	#, D.15699
	movl	%edx, 8(%rax)	# D.15699, PL_Sv.195_73->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.195_73->sv_refcnt, D.15699
	testl	%eax, %eax	# D.15699
	je	.L320	#,
	.loc 1 1363 0
	nop
.L320:
	.loc 1 1363 0 discriminator 4
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.196
	movl	-44(%rbp), %edx	# i, tmp191
	movslq	%edx, %rdx	# tmp191, D.15703
	salq	$3, %rdx	#, D.15703
	addq	%rax, %rdx	# PL_psig_ptr.196, D.15704
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.197
	movq	%rax, (%rdx)	# PL_Sv.197, *_82
	.loc 1 1364 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# sv, tmp192
	movl	12(%rax), %eax	# sv_71(D)->sv_flags, D.15699
	andb	$247, %ah	#, D.15699
	movl	%eax, %edx	# D.15699, D.15699
	movq	-56(%rbp), %rax	# sv, tmp193
	movl	%edx, 12(%rax)	# D.15699, sv_71(D)->sv_flags
	.loc 1 1365 0 discriminator 4
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.198
	movl	-44(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, D.15703
	salq	$3, %rdx	#, D.15703
	leaq	(%rax,%rdx), %r12	#, D.15704
	movq	-40(%rbp), %rax	# len, len.199
	movq	%rax, %rsi	# len.199,
	movq	%rbx, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, (%r12)	# D.15702, *_89
	.loc 1 1366 0 discriminator 4
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.200
	movl	-44(%rbp), %edx	# i, tmp195
	movslq	%edx, %rdx	# tmp195, D.15703
	salq	$3, %rdx	#, D.15703
	addq	%rdx, %rax	# D.15703, D.15704
	movq	(%rax), %rax	# *_95, D.15702
	movq	PL_psig_name(%rip), %rdx	# PL_psig_name, PL_psig_name.201
	movl	-44(%rbp), %ecx	# i, tmp196
	movslq	%ecx, %rcx	# tmp196, D.15703
	salq	$3, %rcx	#, D.15703
	addq	%rcx, %rdx	# D.15703, D.15704
	movq	(%rdx), %rdx	# *_100, D.15702
	movl	12(%rdx), %edx	# _101->sv_flags, D.15699
	orl	$8388608, %edx	#, D.15699
	movl	%edx, 12(%rax)	# D.15699, _96->sv_flags
.L312:
	.loc 1 1368 0
	movq	-56(%rbp), %rax	# sv, tmp197
	movl	12(%rax), %eax	# sv_71(D)->sv_flags, D.15699
	movzbl	%al, %eax	# D.15699, D.15699
	cmpl	$13, %eax	#, D.15699
	je	.L321	#,
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp198
	movl	12(%rax), %eax	# sv_71(D)->sv_flags, D.15699
	andl	$524288, %eax	#, D.15699
	testl	%eax, %eax	# D.15699
	je	.L322	#,
.L321:
	.loc 1 1369 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, i
	je	.L323	#,
	.loc 1 1370 0
	movq	PL_csighandlerp(%rip), %rdx	# PL_csighandlerp, PL_csighandlerp.202
	movl	-44(%rbp), %eax	# i, tmp199
	movq	%rdx, %rsi	# PL_csighandlerp.202,
	movl	%eax, %edi	# tmp199,
	call	Perl_rsignal	#
	jmp	.L324	#
.L323:
	.loc 1 1376 0
	movq	-56(%rbp), %rax	# sv, tmp200
	movq	%rax, PL_Sv(%rip)	# tmp200, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.204
	testq	%rax, %rax	# PL_Sv.204
	je	.L326	#,
	.loc 1 1376 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.205
	movl	8(%rax), %edx	# PL_Sv.205_133->sv_refcnt, D.15699
	addl	$1, %edx	#, D.15699
	movl	%edx, 8(%rax)	# D.15699, PL_Sv.205_133->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.205_133->sv_refcnt, D.15699
	testl	%eax, %eax	# D.15699
	je	.L326	#,
	.loc 1 1376 0
	nop
.L326:
	.loc 1 1376 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.206
	movq	-32(%rbp), %rax	# svp, tmp201
	movq	%rdx, (%rax)	# PL_Sv.206, *svp_3
.L324:
	.loc 1 1377 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, to_dec
	je	.L327	#,
	.loc 1 1378 0
	movq	-24(%rbp), %rax	# to_dec, tmp202
	movq	%rax, %rdi	# tmp202,
	call	Perl_sv_free	#
.L327:
	.loc 1 1379 0
	movl	$0, %eax	#, D.15697
	jmp	.L341	#
.L322:
	.loc 1 1381 0
	movq	-56(%rbp), %rax	# sv, tmp203
	movl	12(%rax), %eax	# sv_71(D)->sv_flags, D.15699
	andl	$10223616, %eax	#, D.15699
	cmpl	$262144, %eax	#, D.15699
	jne	.L328	#,
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp204
	movq	(%rax), %rax	# sv_71(D)->sv_any, D.15700
	movq	8(%rax), %rax	# MEM[(struct XPV *)_110].xpv_cur, len.208
	movq	%rax, -40(%rbp)	# len.208, len
	movq	-56(%rbp), %rax	# sv, tmp205
	movq	(%rax), %rax	# sv_71(D)->sv_any, D.15700
	movq	(%rax), %rax	# MEM[(struct XPV *)_112].xpv_pv, iftmp.207
	jmp	.L329	#
.L328:
	.loc 1 1381 0 discriminator 2
	leaq	-40(%rbp), %rcx	#, tmp206
	movq	-56(%rbp), %rax	# sv, tmp207
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp206,
	movq	%rax, %rdi	# tmp207,
	call	Perl_sv_pvn_force_flags	#
.L329:
	.loc 1 1381 0 discriminator 3
	movq	%rax, %rbx	# iftmp.207, s
	.loc 1 1382 0 is_stmt 1 discriminator 3
	movl	$.LC15, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15697
	jne	.L330	#,
	.loc 1 1383 0
	cmpl	$0, -44(%rbp)	#, i
	je	.L332	#,
	.loc 1 1388 0
	movl	-44(%rbp), %eax	# i, tmp208
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp208,
	call	Perl_rsignal	#
	jmp	.L332	#
.L330:
	.loc 1 1392 0
	movl	$.LC20, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strcmp	#
	testl	%eax, %eax	# D.15697
	je	.L333	#,
	.loc 1 1392 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_115, D.15701
	testb	%al, %al	# D.15701
	jne	.L334	#,
.L333:
	.loc 1 1393 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, i
	je	.L335	#,
	.loc 1 1400 0
	movl	-44(%rbp), %eax	# i, tmp209
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp209,
	call	Perl_rsignal	#
	.loc 1 1393 0
	jmp	.L332	#
.L335:
	.loc 1 1393 0 is_stmt 0 discriminator 1
	jmp	.L332	#
.L334:
	.loc 1 1409 0 is_stmt 1
	movl	$58, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strchr	#
	testq	%rax, %rax	# D.15698
	jne	.L336	#,
	.loc 1 1409 0 is_stmt 0 discriminator 1
	movl	$39, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strchr	#
	testq	%rax, %rax	# D.15698
	jne	.L336	#,
	.loc 1 1410 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp210
	movl	$6, %r8d	#,
	movl	$.LC21, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	Perl_sv_insert	#
.L336:
	.loc 1 1411 0
	cmpl	$0, -44(%rbp)	#, i
	je	.L337	#,
	.loc 1 1412 0
	movq	PL_csighandlerp(%rip), %rdx	# PL_csighandlerp, PL_csighandlerp.209
	movl	-44(%rbp), %eax	# i, tmp211
	movq	%rdx, %rsi	# PL_csighandlerp.209,
	movl	%eax, %edi	# tmp211,
	call	Perl_rsignal	#
	jmp	.L332	#
.L337:
	.loc 1 1414 0
	movq	-56(%rbp), %rax	# sv, tmp212
	movq	%rax, PL_Sv(%rip)	# tmp212, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.211
	testq	%rax, %rax	# PL_Sv.211
	je	.L339	#,
	.loc 1 1414 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.212
	movl	8(%rax), %edx	# PL_Sv.212_123->sv_refcnt, D.15699
	addl	$1, %edx	#, D.15699
	movl	%edx, 8(%rax)	# D.15699, PL_Sv.212_123->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.212_123->sv_refcnt, D.15699
	testl	%eax, %eax	# D.15699
	je	.L339	#,
	.loc 1 1414 0
	nop
.L339:
	.loc 1 1414 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.213
	movq	-32(%rbp), %rax	# svp, tmp213
	movq	%rdx, (%rax)	# PL_Sv.213, *svp_3
.L332:
	.loc 1 1420 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, to_dec
	je	.L340	#,
	.loc 1 1421 0
	movq	-24(%rbp), %rax	# to_dec, tmp214
	movq	%rax, %rdi	# tmp214,
	call	Perl_sv_free	#
.L340:
	.loc 1 1422 0
	movl	$0, %eax	#, D.15697
.L341:
	.loc 1 1423 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_magic_setsig, .-Perl_magic_setsig
	.globl	Perl_magic_setisa
	.type	Perl_magic_setisa, @function
Perl_magic_setisa:
.LFB28:
	.loc 1 1428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1429 0
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.214
	addl	$1, %eax	#, PL_sub_generation.215
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.215, PL_sub_generation
	.loc 1 1430 0
	movl	$0, %eax	#, D.15708
	.loc 1 1431 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_magic_setisa, .-Perl_magic_setisa
	.globl	Perl_magic_setamagic
	.type	Perl_magic_setamagic, @function
Perl_magic_setamagic:
.LFB29:
	.loc 1 1435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1437 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.216
	addq	$1, %rax	#, PL_amagic_generation.217
	movq	%rax, PL_amagic_generation(%rip)	# PL_amagic_generation.217, PL_amagic_generation
	.loc 1 1439 0
	movl	$0, %eax	#, D.15709
	.loc 1 1440 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_magic_setamagic, .-Perl_magic_setamagic
	.globl	Perl_magic_getnkeys
	.type	Perl_magic_getnkeys, @function
Perl_magic_getnkeys:
.LFB30:
	.loc 1 1444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 1445 0
	movq	-24(%rbp), %rax	# sv, tmp75
	movq	(%rax), %rax	# sv_3(D)->sv_any, D.15710
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_4].xlv_targ, tmp76
	movq	%rax, -8(%rbp)	# tmp76, hv
	.loc 1 1446 0
	movl	$0, -12(%rbp)	#, i
	.loc 1 1448 0
	cmpq	$0, -8(%rbp)	#, hv
	je	.L347	#,
	.loc 1 1449 0
	movq	-8(%rbp), %rax	# hv, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_hv_iterinit	#
	.loc 1 1450 0
	movq	-8(%rbp), %rax	# hv, tmp78
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_5].sv_flags, D.15711
	andl	$32768, %eax	#, D.15711
	testl	%eax, %eax	# D.15711
	je	.L348	#,
	.loc 1 1450 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hv, tmp79
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.15712
	jne	.L349	#,
.L348:
	.loc 1 1451 0 is_stmt 1
	movq	-8(%rbp), %rax	# hv, tmp80
	movq	(%rax), %rax	# hv_5->sv_any, D.15714
	movq	24(%rax), %rax	# _12->xhv_keys, D.15715
	movl	%eax, %edx	# D.15715, D.15716
	movq	-8(%rbp), %rax	# hv, tmp81
	movq	(%rax), %rax	# hv_5->sv_any, D.15714
	movsd	32(%rax), %xmm0	# _15->xnv_nv, D.15717
	cvttsd2siq	%xmm0, %rax	# D.15717, D.15715
	subl	%eax, %edx	# D.15716, D.15716
	movl	%edx, %eax	# D.15716, D.15716
	movl	%eax, -12(%rbp)	# D.15716, i
	jmp	.L347	#
.L349:
	.loc 1 1453 0
	jmp	.L350	#
.L351:
	.loc 1 1454 0
	addl	$1, -12(%rbp)	#, i
.L350:
	.loc 1 1453 0 discriminator 1
	movq	-8(%rbp), %rax	# hv, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_hv_iternext	#
	testq	%rax, %rax	# D.15713
	jne	.L351	#,
.L347:
	.loc 1 1458 0
	movl	-12(%rbp), %eax	# i, tmp83
	movslq	%eax, %rdx	# tmp83, D.15715
	movq	-24(%rbp), %rax	# sv, tmp84
	movq	%rdx, %rsi	# D.15715,
	movq	%rax, %rdi	# tmp84,
	call	Perl_sv_setiv	#
	.loc 1 1459 0
	movl	$0, %eax	#, D.15718
	.loc 1 1460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_magic_getnkeys, .-Perl_magic_getnkeys
	.globl	Perl_magic_setnkeys
	.type	Perl_magic_setnkeys, @function
Perl_magic_setnkeys:
.LFB31:
	.loc 1 1464 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1465 0
	movq	-8(%rbp), %rax	# sv, tmp69
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15719
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_3].xlv_targ, D.15720
	testq	%rax, %rax	# D.15720
	je	.L354	#,
	.loc 1 1466 0
	movq	-8(%rbp), %rax	# sv, tmp70
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15721
	andl	$65536, %eax	#, D.15721
	testl	%eax, %eax	# D.15721
	je	.L355	#,
	.loc 1 1466 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp71
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15719
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_7].xiv_iv, iftmp.218
	jmp	.L356	#
.L355:
	.loc 1 1466 0 discriminator 2
	movq	-8(%rbp), %rax	# sv, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_sv_2iv	#
.L356:
	.loc 1 1466 0 discriminator 3
	movq	-8(%rbp), %rdx	# sv, tmp73
	movq	(%rdx), %rdx	# sv_2(D)->sv_any, D.15719
	movq	72(%rdx), %rdx	# MEM[(struct XPVLV *)_10].xlv_targ, D.15720
	movq	%rax, %rsi	# iftmp.218,
	movq	%rdx, %rdi	# D.15720,
	call	Perl_hv_ksplit	#
.L354:
	.loc 1 1468 0 is_stmt 1
	movl	$0, %eax	#, D.15722
	.loc 1 1469 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_magic_setnkeys, .-Perl_magic_setnkeys
	.type	S_magic_methcall, @function
S_magic_methcall:
.LFB32:
	.loc 1 1474 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	movq	%rdx, -40(%rbp)	# meth, meth
	movl	%ecx, -44(%rbp)	# flags, flags
	movl	%r8d, -48(%rbp)	# n, n
	movq	%r9, -56(%rbp)	# val, val
	.loc 1 1475 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB30:
	.loc 1 1477 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.219
	addq	$4, %rax	#, PL_markstack_ptr.220
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.220, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.221
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.222
	cmpq	%rax, %rdx	# PL_markstack_max.222, PL_markstack_ptr.221
	jne	.L359	#,
	.loc 1 1477 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L359:
	.loc 1 1477 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.223
	movq	%rbx, %rcx	# sp, sp.224
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.225
	subq	%rdx, %rcx	# PL_stack_base.226, D.15723
	movq	%rcx, %rdx	# D.15723, D.15723
	sarq	$3, %rdx	#, tmp97
	movl	%edx, (%rax)	# D.15724, *PL_markstack_ptr.223_11
.LBE30:
	.loc 1 1478 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.227
	movq	%rax, %rdx	# PL_stack_max.227, PL_stack_max.228
	movq	%rbx, %rax	# sp, sp.229
	subq	%rax, %rdx	# sp.229, D.15723
	movq	%rdx, %rax	# D.15723, D.15723
	sarq	$3, %rax	#, tmp98
	movq	%rax, %rdx	# tmp98, D.15723
	movl	-48(%rbp), %eax	# n, tmp99
	cltq
	cmpq	%rax, %rdx	# D.15723, D.15723
	jge	.L360	#,
	.loc 1 1478 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# n, tmp100
	movl	%eax, %edx	# tmp100,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L360:
	.loc 1 1479 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp101
	movq	24(%rax), %rax	# mg_28(D)->mg_obj, D.15726
	testq	%rax, %rax	# D.15726
	je	.L361	#,
	.loc 1 1479 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp102
	movq	24(%rax), %rax	# mg_28(D)->mg_obj, iftmp.230
	jmp	.L362	#
.L361:
	.loc 1 1479 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15726,
	call	Perl_sv_2mortal	#
.L362:
	.loc 1 1479 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.230, *sp_27
	.loc 1 1480 0 is_stmt 1 discriminator 3
	cmpl	$1, -48(%rbp)	#, n
	jle	.L363	#,
	.loc 1 1481 0
	movq	-32(%rbp), %rax	# mg, tmp104
	movq	32(%rax), %rax	# mg_28(D)->mg_ptr, D.15727
	testq	%rax, %rax	# D.15727
	je	.L364	#,
	.loc 1 1482 0
	movq	-32(%rbp), %rax	# mg, tmp105
	movl	40(%rax), %eax	# mg_28(D)->mg_len, D.15724
	testl	%eax, %eax	# D.15724
	js	.L365	#,
	.loc 1 1483 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp106
	movl	40(%rax), %eax	# mg_28(D)->mg_len, D.15724
	movslq	%eax, %rdx	# D.15724, D.15728
	movq	-32(%rbp), %rax	# mg, tmp107
	movq	32(%rax), %rax	# mg_28(D)->mg_ptr, D.15727
	movq	%rdx, %rsi	# D.15728,
	movq	%rax, %rdi	# D.15727,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15726,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.15726, *sp_36
	jmp	.L363	#
.L365:
	.loc 1 1484 0
	movq	-32(%rbp), %rax	# mg, tmp108
	movl	40(%rax), %eax	# mg_28(D)->mg_len, D.15724
	cmpl	$-2, %eax	#, D.15724
	jne	.L363	#,
	.loc 1 1485 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp109
	movq	32(%rax), %rax	# mg_28(D)->mg_ptr, D.15727
	movq	%rax, (%rbx)	# D.15727, *sp_43
	jmp	.L363	#
.L364:
	.loc 1 1487 0
	movq	-32(%rbp), %rax	# mg, tmp110
	movzbl	18(%rax), %eax	# mg_28(D)->mg_type, D.15729
	cmpb	$112, %al	#, D.15729
	jne	.L363	#,
	.loc 1 1488 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp111
	movl	40(%rax), %eax	# mg_28(D)->mg_len, D.15724
	cltq
	movq	%rax, %rdi	# D.15723,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15726,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.15726, *sp_46
.L363:
	.loc 1 1491 0
	cmpl	$2, -48(%rbp)	#, n
	jle	.L367	#,
	.loc 1 1492 0
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# val, tmp112
	movq	%rax, (%rbx)	# tmp112, *sp_51
.L367:
	.loc 1 1494 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1496 0
	movl	-44(%rbp), %edx	# flags, tmp113
	movq	-40(%rbp), %rax	# meth, tmp114
	movl	%edx, %esi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	Perl_call_method	#
	.loc 1 1497 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	S_magic_methcall, .-S_magic_methcall
	.section	.rodata
.LC22:
	.string	"panic: POPSTACK\n"
	.text
	.type	S_magic_methpack, @function
S_magic_methpack:
.LFB33:
	.loc 1 1501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	movq	%rdx, -56(%rbp)	# meth, meth
	.loc 1 1502 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1504 0
	call	Perl_push_scope	#
	.loc 1 1505 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.231
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.231, PL_tmps_floor
.LBB31:
	.loc 1 1506 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.232
	movq	40(%rax), %rax	# PL_curstackinfo.232_5->si_next, tmp150
	movq	%rax, -32(%rbp)	# tmp150, next
	cmpq	$0, -32(%rbp)	#, next
	jne	.L370	#,
	.loc 1 1506 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -32(%rbp)	# tmp151, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.233
	movq	-32(%rbp), %rax	# next, tmp152
	movq	%rdx, 32(%rax)	# PL_curstackinfo.233, next_7->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.234
	movq	-32(%rbp), %rdx	# next, tmp153
	movq	%rdx, 40(%rax)	# tmp153, PL_curstackinfo.234_9->si_next
.L370:
	.loc 1 1506 0 discriminator 2
	movq	-32(%rbp), %rax	# next, tmp154
	movl	$2, 24(%rax)	#, next_1->si_type
	movq	-32(%rbp), %rax	# next, tmp155
	movl	$-1, 16(%rax)	#, next_1->si_cxix
	movq	-32(%rbp), %rax	# next, tmp156
	movq	(%rax), %rax	# next_1->si_stack, D.15730
	movq	(%rax), %rax	# _10->sv_any, D.15731
	movq	$0, 8(%rax)	#, _11->xav_fill
.LBB32:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.235
	movq	(%rax), %rax	# PL_curstack.235_12->sv_any, D.15731
	movq	%rbx, %rcx	# sp, sp.236
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.237
	subq	%rdx, %rcx	# PL_stack_base.238, D.15732
	movq	%rcx, %rdx	# D.15732, D.15732
	sarq	$3, %rdx	#, tmp157
	movq	%rdx, 8(%rax)	# D.15732, _13->xav_fill
	movq	-32(%rbp), %rax	# next, tmp158
	movq	(%rax), %rax	# next_1->si_stack, D.15730
	movq	(%rax), %rax	# _19->sv_any, D.15731
	movq	(%rax), %rax	# _20->xav_array, PL_stack_base.239
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.239, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.240
	movq	-32(%rbp), %rax	# next, tmp159
	movq	(%rax), %rax	# next_1->si_stack, D.15730
	movq	(%rax), %rax	# _23->sv_any, D.15731
	movq	16(%rax), %rax	# _24->xav_max, D.15732
	salq	$3, %rax	#, D.15733
	addq	%rdx, %rax	# PL_stack_base.240, PL_stack_max.241
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.241, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.242
	movq	-32(%rbp), %rax	# next, tmp160
	movq	(%rax), %rax	# next_1->si_stack, D.15730
	movq	(%rax), %rax	# _30->sv_any, D.15731
	movq	8(%rax), %rax	# _31->xav_fill, D.15732
	salq	$3, %rax	#, D.15733
	addq	%rdx, %rax	# PL_stack_base.242, PL_stack_sp.243
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.243, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# next, tmp161
	movq	(%rax), %rax	# next_1->si_stack, PL_curstack.244
	movq	%rax, PL_curstack(%rip)	# PL_curstack.244, PL_curstack
.LBE32:
	movq	-32(%rbp), %rax	# next, tmp162
	movq	%rax, PL_curstackinfo(%rip)	# tmp162, PL_curstackinfo
.LBE31:
	.loc 1 1508 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rdx	# meth, tmp163
	movq	-48(%rbp), %rsi	# mg, tmp164
	movq	-40(%rbp), %rax	# sv, tmp165
	movl	$0, %r9d	#,
	movl	$2, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp165,
	call	S_magic_methcall	#
	testl	%eax, %eax	# D.15734
	je	.L371	#,
	.loc 1 1509 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.245
	leaq	-8(%rax), %rdx	#, PL_stack_sp.247
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.247, PL_stack_sp
	movq	(%rax), %rcx	# *PL_stack_sp.246_44, D.15735
	movq	-40(%rbp), %rax	# sv, tmp166
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15735,
	movq	%rax, %rdi	# tmp166,
	call	Perl_sv_setsv_flags	#
.L371:
.LBB33:
	.loc 1 1512 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.248
	movq	32(%rax), %rax	# PL_curstackinfo.248_48->si_prev, tmp167
	movq	%rax, -24(%rbp)	# tmp167, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L372	#,
	.loc 1 1512 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.250
	testq	%rax, %rax	# PL_stderrgv.250
	je	.L373	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.251
	movl	12(%rax), %eax	# PL_stderrgv.251_51->sv_flags, D.15736
	movzbl	%al, %eax	# D.15736, D.15736
	cmpl	$13, %eax	#, D.15736
	jne	.L373	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.252
	movq	(%rax), %rax	# PL_stderrgv.252_54->sv_any, D.15737
	movq	56(%rax), %rax	# _55->xgv_gp, D.15738
	movq	16(%rax), %rax	# _56->gp_io, D.15739
	testq	%rax, %rax	# D.15739
	je	.L373	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.253
	movq	(%rax), %rax	# PL_stderrgv.253_58->sv_any, D.15737
	movq	56(%rax), %rax	# _59->xgv_gp, D.15738
	movq	16(%rax), %rax	# _60->gp_io, D.15739
	movq	(%rax), %rax	# _61->sv_any, D.15740
	movq	64(%rax), %rax	# _62->xio_ofp, D.15741
	testq	%rax, %rax	# D.15741
	je	.L373	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.254
	movq	(%rax), %rax	# PL_stderrgv.254_64->sv_any, D.15737
	movq	56(%rax), %rax	# _65->xgv_gp, D.15738
	movq	16(%rax), %rax	# _66->gp_io, D.15739
	movq	(%rax), %rax	# _67->sv_any, D.15740
	movq	64(%rax), %rax	# _68->xio_ofp, iftmp.249
	jmp	.L374	#
.L373:
	.loc 1 1512 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L374:
	.loc 1 1512 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.249,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L372:
.LBB34:
	.loc 1 1512 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.255
	movq	(%rax), %rax	# PL_curstack.255_71->sv_any, D.15731
	movq	%rbx, %rcx	# sp, sp.256
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.257
	subq	%rdx, %rcx	# PL_stack_base.258, D.15732
	movq	%rcx, %rdx	# D.15732, D.15732
	sarq	$3, %rdx	#, tmp168
	movq	%rdx, 8(%rax)	# D.15732, _72->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp169
	movq	(%rax), %rax	# prev_49->si_stack, D.15730
	movq	(%rax), %rax	# _78->sv_any, D.15731
	movq	(%rax), %rax	# _79->xav_array, PL_stack_base.259
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.259, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.260
	movq	-24(%rbp), %rax	# prev, tmp170
	movq	(%rax), %rax	# prev_49->si_stack, D.15730
	movq	(%rax), %rax	# _82->sv_any, D.15731
	movq	16(%rax), %rax	# _83->xav_max, D.15732
	salq	$3, %rax	#, D.15733
	addq	%rdx, %rax	# PL_stack_base.260, PL_stack_max.261
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.261, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.262
	movq	-24(%rbp), %rax	# prev, tmp171
	movq	(%rax), %rax	# prev_49->si_stack, D.15730
	movq	(%rax), %rax	# _89->sv_any, D.15731
	movq	8(%rax), %rax	# _90->xav_fill, D.15732
	salq	$3, %rax	#, D.15733
	addq	%rdx, %rax	# PL_stack_base.262, PL_stack_sp.263
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.263, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp172
	movq	(%rax), %rax	# prev_49->si_stack, PL_curstack.264
	movq	%rax, PL_curstack(%rip)	# PL_curstack.264, PL_curstack
.LBE34:
	movq	-24(%rbp), %rax	# prev, tmp173
	movq	%rax, PL_curstackinfo(%rip)	# tmp173, PL_curstackinfo
.LBE33:
	.loc 1 1513 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.265
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.266
	cmpl	%eax, %edx	# PL_tmps_floor.266, PL_tmps_ix.265
	jle	.L375	#,
	.loc 1 1513 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L375:
	.loc 1 1514 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1515 0
	movl	$0, %eax	#, D.15734
	.loc 1 1516 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	S_magic_methpack, .-S_magic_methpack
	.section	.rodata
.LC23:
	.string	"FETCH"
	.text
	.globl	Perl_magic_getpack
	.type	Perl_magic_getpack, @function
Perl_magic_getpack:
.LFB34:
	.loc 1 1520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1521 0
	movq	-16(%rbp), %rax	# mg, tmp64
	movq	32(%rax), %rax	# mg_1(D)->mg_ptr, D.15744
	testq	%rax, %rax	# D.15744
	je	.L378	#,
	.loc 1 1522 0
	movq	-16(%rbp), %rax	# mg, tmp65
	movzbl	19(%rax), %eax	# mg_1(D)->mg_flags, D.15745
	orl	$4, %eax	#, D.15745
	movl	%eax, %edx	# D.15745, D.15745
	movq	-16(%rbp), %rax	# mg, tmp66
	movb	%dl, 19(%rax)	# D.15745, mg_1(D)->mg_flags
.L378:
	.loc 1 1523 0
	movq	-16(%rbp), %rcx	# mg, tmp67
	movq	-8(%rbp), %rax	# sv, tmp68
	movl	$.LC23, %edx	#,
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	S_magic_methpack	#
	.loc 1 1524 0
	movl	$0, %eax	#, D.15746
	.loc 1 1525 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_magic_getpack, .-Perl_magic_getpack
	.section	.rodata
.LC24:
	.string	"STORE"
	.text
	.globl	Perl_magic_setpack
	.type	Perl_magic_setpack, @function
Perl_magic_setpack:
.LFB35:
	.loc 1 1529 0
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
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1530 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1531 0
	call	Perl_push_scope	#
.LBB35:
	.loc 1 1532 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.267
	movq	40(%rax), %rax	# PL_curstackinfo.267_4->si_next, tmp142
	movq	%rax, -32(%rbp)	# tmp142, next
	cmpq	$0, -32(%rbp)	#, next
	jne	.L381	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -32(%rbp)	# tmp143, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.268
	movq	-32(%rbp), %rax	# next, tmp144
	movq	%rdx, 32(%rax)	# PL_curstackinfo.268, next_6->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.269
	movq	-32(%rbp), %rdx	# next, tmp145
	movq	%rdx, 40(%rax)	# tmp145, PL_curstackinfo.269_8->si_next
.L381:
	.loc 1 1532 0 discriminator 2
	movq	-32(%rbp), %rax	# next, tmp146
	movl	$2, 24(%rax)	#, next_1->si_type
	movq	-32(%rbp), %rax	# next, tmp147
	movl	$-1, 16(%rax)	#, next_1->si_cxix
	movq	-32(%rbp), %rax	# next, tmp148
	movq	(%rax), %rax	# next_1->si_stack, D.15748
	movq	(%rax), %rax	# _9->sv_any, D.15749
	movq	$0, 8(%rax)	#, _10->xav_fill
.LBB36:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.270
	movq	(%rax), %rax	# PL_curstack.270_11->sv_any, D.15749
	movq	%rbx, %rcx	# sp, sp.271
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.272
	subq	%rdx, %rcx	# PL_stack_base.273, D.15750
	movq	%rcx, %rdx	# D.15750, D.15750
	sarq	$3, %rdx	#, tmp149
	movq	%rdx, 8(%rax)	# D.15750, _12->xav_fill
	movq	-32(%rbp), %rax	# next, tmp150
	movq	(%rax), %rax	# next_1->si_stack, D.15748
	movq	(%rax), %rax	# _18->sv_any, D.15749
	movq	(%rax), %rax	# _19->xav_array, PL_stack_base.274
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.274, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.275
	movq	-32(%rbp), %rax	# next, tmp151
	movq	(%rax), %rax	# next_1->si_stack, D.15748
	movq	(%rax), %rax	# _22->sv_any, D.15749
	movq	16(%rax), %rax	# _23->xav_max, D.15750
	salq	$3, %rax	#, D.15751
	addq	%rdx, %rax	# PL_stack_base.275, PL_stack_max.276
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.276, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.277
	movq	-32(%rbp), %rax	# next, tmp152
	movq	(%rax), %rax	# next_1->si_stack, D.15748
	movq	(%rax), %rax	# _29->sv_any, D.15749
	movq	8(%rax), %rax	# _30->xav_fill, D.15750
	salq	$3, %rax	#, D.15751
	addq	%rdx, %rax	# PL_stack_base.277, PL_stack_sp.278
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.278, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# next, tmp153
	movq	(%rax), %rax	# next_1->si_stack, PL_curstack.279
	movq	%rax, PL_curstack(%rip)	# PL_curstack.279, PL_curstack
.LBE36:
	movq	-32(%rbp), %rax	# next, tmp154
	movq	%rax, PL_curstackinfo(%rip)	# tmp154, PL_curstackinfo
.LBE35:
	.loc 1 1533 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rdx	# sv, tmp155
	movq	-48(%rbp), %rsi	# mg, tmp156
	movq	-40(%rbp), %rax	# sv, tmp157
	movq	%rdx, %r9	# tmp155,
	movl	$3, %r8d	#,
	movl	$2, %ecx	#,
	movl	$.LC24, %edx	#,
	movq	%rax, %rdi	# tmp157,
	call	S_magic_methcall	#
.LBB37:
	.loc 1 1534 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.280
	movq	32(%rax), %rax	# PL_curstackinfo.280_41->si_prev, tmp158
	movq	%rax, -24(%rbp)	# tmp158, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L382	#,
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.282
	testq	%rax, %rax	# PL_stderrgv.282
	je	.L383	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.283
	movl	12(%rax), %eax	# PL_stderrgv.283_44->sv_flags, D.15752
	movzbl	%al, %eax	# D.15752, D.15752
	cmpl	$13, %eax	#, D.15752
	jne	.L383	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.284
	movq	(%rax), %rax	# PL_stderrgv.284_47->sv_any, D.15753
	movq	56(%rax), %rax	# _48->xgv_gp, D.15754
	movq	16(%rax), %rax	# _49->gp_io, D.15755
	testq	%rax, %rax	# D.15755
	je	.L383	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.285
	movq	(%rax), %rax	# PL_stderrgv.285_51->sv_any, D.15753
	movq	56(%rax), %rax	# _52->xgv_gp, D.15754
	movq	16(%rax), %rax	# _53->gp_io, D.15755
	movq	(%rax), %rax	# _54->sv_any, D.15756
	movq	64(%rax), %rax	# _55->xio_ofp, D.15757
	testq	%rax, %rax	# D.15757
	je	.L383	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.286
	movq	(%rax), %rax	# PL_stderrgv.286_57->sv_any, D.15753
	movq	56(%rax), %rax	# _58->xgv_gp, D.15754
	movq	16(%rax), %rax	# _59->gp_io, D.15755
	movq	(%rax), %rax	# _60->sv_any, D.15756
	movq	64(%rax), %rax	# _61->xio_ofp, iftmp.281
	jmp	.L384	#
.L383:
	.loc 1 1534 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L384:
	.loc 1 1534 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.281,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L382:
.LBB38:
	.loc 1 1534 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.287
	movq	(%rax), %rax	# PL_curstack.287_64->sv_any, D.15749
	movq	%rbx, %rcx	# sp, sp.288
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.289
	subq	%rdx, %rcx	# PL_stack_base.290, D.15750
	movq	%rcx, %rdx	# D.15750, D.15750
	sarq	$3, %rdx	#, tmp159
	movq	%rdx, 8(%rax)	# D.15750, _65->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp160
	movq	(%rax), %rax	# prev_42->si_stack, D.15748
	movq	(%rax), %rax	# _71->sv_any, D.15749
	movq	(%rax), %rax	# _72->xav_array, PL_stack_base.291
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.291, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.292
	movq	-24(%rbp), %rax	# prev, tmp161
	movq	(%rax), %rax	# prev_42->si_stack, D.15748
	movq	(%rax), %rax	# _75->sv_any, D.15749
	movq	16(%rax), %rax	# _76->xav_max, D.15750
	salq	$3, %rax	#, D.15751
	addq	%rdx, %rax	# PL_stack_base.292, PL_stack_max.293
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.293, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.294
	movq	-24(%rbp), %rax	# prev, tmp162
	movq	(%rax), %rax	# prev_42->si_stack, D.15748
	movq	(%rax), %rax	# _82->sv_any, D.15749
	movq	8(%rax), %rax	# _83->xav_fill, D.15750
	salq	$3, %rax	#, D.15751
	addq	%rdx, %rax	# PL_stack_base.294, PL_stack_sp.295
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.295, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp163
	movq	(%rax), %rax	# prev_42->si_stack, PL_curstack.296
	movq	%rax, PL_curstack(%rip)	# PL_curstack.296, PL_curstack
.LBE38:
	movq	-24(%rbp), %rax	# prev, tmp164
	movq	%rax, PL_curstackinfo(%rip)	# tmp164, PL_curstackinfo
.LBE37:
	.loc 1 1535 0 is_stmt 1 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 1536 0 discriminator 2
	movl	$0, %eax	#, D.15759
	.loc 1 1537 0 discriminator 2
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_magic_setpack, .-Perl_magic_setpack
	.section	.rodata
.LC25:
	.string	"DELETE"
	.text
	.globl	Perl_magic_clearpack
	.type	Perl_magic_clearpack, @function
Perl_magic_clearpack:
.LFB36:
	.loc 1 1541 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1542 0
	movq	-16(%rbp), %rcx	# mg, tmp61
	movq	-8(%rbp), %rax	# sv, tmp62
	movl	$.LC25, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	S_magic_methpack	#
	.loc 1 1543 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_magic_clearpack, .-Perl_magic_clearpack
	.section	.rodata
.LC26:
	.string	"FETCHSIZE"
	.text
	.globl	Perl_magic_sizepack
	.type	Perl_magic_sizepack, @function
Perl_magic_sizepack:
.LFB37:
	.loc 1 1548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1549 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1550 0
	movl	$0, -36(%rbp)	#, retval
	.loc 1 1552 0
	call	Perl_push_scope	#
	.loc 1 1553 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.297
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.297, PL_tmps_floor
.LBB39:
	.loc 1 1554 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.298
	movq	40(%rax), %rax	# PL_curstackinfo.298_8->si_next, tmp157
	movq	%rax, -32(%rbp)	# tmp157, next
	cmpq	$0, -32(%rbp)	#, next
	jne	.L389	#,
	.loc 1 1554 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -32(%rbp)	# tmp158, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.299
	movq	-32(%rbp), %rax	# next, tmp159
	movq	%rdx, 32(%rax)	# PL_curstackinfo.299, next_10->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.300
	movq	-32(%rbp), %rdx	# next, tmp160
	movq	%rdx, 40(%rax)	# tmp160, PL_curstackinfo.300_12->si_next
.L389:
	.loc 1 1554 0 discriminator 2
	movq	-32(%rbp), %rax	# next, tmp161
	movl	$2, 24(%rax)	#, next_2->si_type
	movq	-32(%rbp), %rax	# next, tmp162
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-32(%rbp), %rax	# next, tmp163
	movq	(%rax), %rax	# next_2->si_stack, D.15763
	movq	(%rax), %rax	# _13->sv_any, D.15764
	movq	$0, 8(%rax)	#, _14->xav_fill
.LBB40:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.301
	movq	(%rax), %rax	# PL_curstack.301_15->sv_any, D.15764
	movq	%rbx, %rcx	# sp, sp.302
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.303
	subq	%rdx, %rcx	# PL_stack_base.304, D.15765
	movq	%rcx, %rdx	# D.15765, D.15765
	sarq	$3, %rdx	#, tmp164
	movq	%rdx, 8(%rax)	# D.15765, _16->xav_fill
	movq	-32(%rbp), %rax	# next, tmp165
	movq	(%rax), %rax	# next_2->si_stack, D.15763
	movq	(%rax), %rax	# _22->sv_any, D.15764
	movq	(%rax), %rax	# _23->xav_array, PL_stack_base.305
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.305, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.306
	movq	-32(%rbp), %rax	# next, tmp166
	movq	(%rax), %rax	# next_2->si_stack, D.15763
	movq	(%rax), %rax	# _26->sv_any, D.15764
	movq	16(%rax), %rax	# _27->xav_max, D.15765
	salq	$3, %rax	#, D.15766
	addq	%rdx, %rax	# PL_stack_base.306, PL_stack_max.307
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.307, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.308
	movq	-32(%rbp), %rax	# next, tmp167
	movq	(%rax), %rax	# next_2->si_stack, D.15763
	movq	(%rax), %rax	# _33->sv_any, D.15764
	movq	8(%rax), %rax	# _34->xav_fill, D.15765
	salq	$3, %rax	#, D.15766
	addq	%rdx, %rax	# PL_stack_base.308, PL_stack_sp.309
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.309, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# next, tmp168
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.310
	movq	%rax, PL_curstack(%rip)	# PL_curstack.310, PL_curstack
.LBE40:
	movq	-32(%rbp), %rax	# next, tmp169
	movq	%rax, PL_curstackinfo(%rip)	# tmp169, PL_curstackinfo
.LBE39:
	.loc 1 1555 0 is_stmt 1 discriminator 2
	movq	-64(%rbp), %rsi	# mg, tmp170
	movq	-56(%rbp), %rax	# sv, tmp171
	movl	$0, %r9d	#,
	movl	$2, %r8d	#,
	movl	$0, %ecx	#,
	movl	$.LC26, %edx	#,
	movq	%rax, %rdi	# tmp171,
	call	S_magic_methcall	#
	testl	%eax, %eax	# D.15767
	je	.L390	#,
	.loc 1 1556 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.311
	leaq	-8(%rax), %rdx	#, PL_stack_sp.313
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.313, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.312_46, tmp172
	movq	%rax, -56(%rbp)	# tmp172, sv
	.loc 1 1557 0
	movq	-56(%rbp), %rax	# sv, tmp173
	movl	12(%rax), %eax	# sv_48->sv_flags, D.15768
	andl	$65536, %eax	#, D.15768
	testl	%eax, %eax	# D.15768
	je	.L391	#,
	.loc 1 1557 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp174
	movq	(%rax), %rax	# sv_48->sv_any, D.15769
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_51].xiv_iv, D.15765
	subl	$1, %eax	#, iftmp.314
	jmp	.L392	#
.L391:
	.loc 1 1557 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp175
	movq	%rax, %rdi	# tmp175,
	call	Perl_sv_2iv	#
	subl	$1, %eax	#, iftmp.314
.L392:
	.loc 1 1557 0 discriminator 3
	movl	%eax, -36(%rbp)	# iftmp.314, retval
.L390:
.LBB41:
	.loc 1 1559 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.315
	movq	32(%rax), %rax	# PL_curstackinfo.315_60->si_prev, tmp176
	movq	%rax, -24(%rbp)	# tmp176, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L393	#,
	.loc 1 1559 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.317
	testq	%rax, %rax	# PL_stderrgv.317
	je	.L394	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.318
	movl	12(%rax), %eax	# PL_stderrgv.318_63->sv_flags, D.15768
	movzbl	%al, %eax	# D.15768, D.15768
	cmpl	$13, %eax	#, D.15768
	jne	.L394	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.319
	movq	(%rax), %rax	# PL_stderrgv.319_66->sv_any, D.15770
	movq	56(%rax), %rax	# _67->xgv_gp, D.15771
	movq	16(%rax), %rax	# _68->gp_io, D.15772
	testq	%rax, %rax	# D.15772
	je	.L394	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.320
	movq	(%rax), %rax	# PL_stderrgv.320_70->sv_any, D.15770
	movq	56(%rax), %rax	# _71->xgv_gp, D.15771
	movq	16(%rax), %rax	# _72->gp_io, D.15772
	movq	(%rax), %rax	# _73->sv_any, D.15773
	movq	64(%rax), %rax	# _74->xio_ofp, D.15774
	testq	%rax, %rax	# D.15774
	je	.L394	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.321
	movq	(%rax), %rax	# PL_stderrgv.321_76->sv_any, D.15770
	movq	56(%rax), %rax	# _77->xgv_gp, D.15771
	movq	16(%rax), %rax	# _78->gp_io, D.15772
	movq	(%rax), %rax	# _79->sv_any, D.15773
	movq	64(%rax), %rax	# _80->xio_ofp, iftmp.316
	jmp	.L395	#
.L394:
	.loc 1 1559 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L395:
	.loc 1 1559 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.316,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L393:
.LBB42:
	.loc 1 1559 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.322
	movq	(%rax), %rax	# PL_curstack.322_83->sv_any, D.15764
	movq	%rbx, %rcx	# sp, sp.323
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.324
	subq	%rdx, %rcx	# PL_stack_base.325, D.15765
	movq	%rcx, %rdx	# D.15765, D.15765
	sarq	$3, %rdx	#, tmp177
	movq	%rdx, 8(%rax)	# D.15765, _84->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp178
	movq	(%rax), %rax	# prev_61->si_stack, D.15763
	movq	(%rax), %rax	# _90->sv_any, D.15764
	movq	(%rax), %rax	# _91->xav_array, PL_stack_base.326
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.326, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.327
	movq	-24(%rbp), %rax	# prev, tmp179
	movq	(%rax), %rax	# prev_61->si_stack, D.15763
	movq	(%rax), %rax	# _94->sv_any, D.15764
	movq	16(%rax), %rax	# _95->xav_max, D.15765
	salq	$3, %rax	#, D.15766
	addq	%rdx, %rax	# PL_stack_base.327, PL_stack_max.328
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.328, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.329
	movq	-24(%rbp), %rax	# prev, tmp180
	movq	(%rax), %rax	# prev_61->si_stack, D.15763
	movq	(%rax), %rax	# _101->sv_any, D.15764
	movq	8(%rax), %rax	# _102->xav_fill, D.15765
	salq	$3, %rax	#, D.15766
	addq	%rdx, %rax	# PL_stack_base.329, PL_stack_sp.330
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.330, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp181
	movq	(%rax), %rax	# prev_61->si_stack, PL_curstack.331
	movq	%rax, PL_curstack(%rip)	# PL_curstack.331, PL_curstack
.LBE42:
	movq	-24(%rbp), %rax	# prev, tmp182
	movq	%rax, PL_curstackinfo(%rip)	# tmp182, PL_curstackinfo
.LBE41:
	.loc 1 1560 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.332
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.333
	cmpl	%eax, %edx	# PL_tmps_floor.333, PL_tmps_ix.332
	jle	.L396	#,
	.loc 1 1560 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L396:
	.loc 1 1561 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1562 0
	movl	-36(%rbp), %eax	# retval, D.15776
	.loc 1 1563 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_magic_sizepack, .-Perl_magic_sizepack
	.section	.rodata
.LC27:
	.string	"CLEAR"
	.text
	.globl	Perl_magic_wipepack
	.type	Perl_magic_wipepack, @function
Perl_magic_wipepack:
.LFB38:
	.loc 1 1567 0
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
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1568 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1570 0
	call	Perl_push_scope	#
.LBB43:
	.loc 1 1571 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.334
	movq	40(%rax), %rax	# PL_curstackinfo.334_6->si_next, tmp162
	movq	%rax, -32(%rbp)	# tmp162, next
	cmpq	$0, -32(%rbp)	#, next
	jne	.L399	#,
	.loc 1 1571 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -32(%rbp)	# tmp163, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.335
	movq	-32(%rbp), %rax	# next, tmp164
	movq	%rdx, 32(%rax)	# PL_curstackinfo.335, next_8->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.336
	movq	-32(%rbp), %rdx	# next, tmp165
	movq	%rdx, 40(%rax)	# tmp165, PL_curstackinfo.336_10->si_next
.L399:
	.loc 1 1571 0 discriminator 2
	movq	-32(%rbp), %rax	# next, tmp166
	movl	$2, 24(%rax)	#, next_2->si_type
	movq	-32(%rbp), %rax	# next, tmp167
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-32(%rbp), %rax	# next, tmp168
	movq	(%rax), %rax	# next_2->si_stack, D.15778
	movq	(%rax), %rax	# _11->sv_any, D.15779
	movq	$0, 8(%rax)	#, _12->xav_fill
.LBB44:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.337
	movq	(%rax), %rax	# PL_curstack.337_13->sv_any, D.15779
	movq	%rbx, %rcx	# sp, sp.338
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.339
	subq	%rdx, %rcx	# PL_stack_base.340, D.15780
	movq	%rcx, %rdx	# D.15780, D.15780
	sarq	$3, %rdx	#, tmp169
	movq	%rdx, 8(%rax)	# D.15780, _14->xav_fill
	movq	-32(%rbp), %rax	# next, tmp170
	movq	(%rax), %rax	# next_2->si_stack, D.15778
	movq	(%rax), %rax	# _20->sv_any, D.15779
	movq	(%rax), %rax	# _21->xav_array, PL_stack_base.341
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.341, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.342
	movq	-32(%rbp), %rax	# next, tmp171
	movq	(%rax), %rax	# next_2->si_stack, D.15778
	movq	(%rax), %rax	# _24->sv_any, D.15779
	movq	16(%rax), %rax	# _25->xav_max, D.15780
	salq	$3, %rax	#, D.15781
	addq	%rdx, %rax	# PL_stack_base.342, PL_stack_max.343
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.343, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.344
	movq	-32(%rbp), %rax	# next, tmp172
	movq	(%rax), %rax	# next_2->si_stack, D.15778
	movq	(%rax), %rax	# _31->sv_any, D.15779
	movq	8(%rax), %rax	# _32->xav_fill, D.15780
	salq	$3, %rax	#, D.15781
	addq	%rdx, %rax	# PL_stack_base.344, PL_stack_sp.345
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.345, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# next, tmp173
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.346
	movq	%rax, PL_curstack(%rip)	# PL_curstack.346, PL_curstack
.LBE44:
	movq	-32(%rbp), %rax	# next, tmp174
	movq	%rax, PL_curstackinfo(%rip)	# tmp174, PL_curstackinfo
.LBE43:
.LBB45:
	.loc 1 1572 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.347
	addq	$4, %rax	#, PL_markstack_ptr.348
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.348, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.349
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.350
	cmpq	%rax, %rdx	# PL_markstack_max.350, PL_markstack_ptr.349
	jne	.L400	#,
	.loc 1 1572 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L400:
	.loc 1 1572 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.351
	movq	%rbx, %rcx	# sp, sp.352
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.353
	subq	%rdx, %rcx	# PL_stack_base.354, D.15780
	movq	%rcx, %rdx	# D.15780, D.15780
	sarq	$3, %rdx	#, tmp175
	movl	%edx, (%rax)	# D.15782, *PL_markstack_ptr.351_44
.LBE45:
.LBB46:
	.loc 1 1573 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.355
	movq	%rax, %rdx	# PL_stack_max.355, PL_stack_max.356
	movq	%rbx, %rax	# sp, sp.357
	subq	%rax, %rdx	# sp.357, D.15780
	movq	%rdx, %rax	# D.15780, D.15780
	cmpq	$7, %rax	#, D.15780
	jg	.L401	#,
	.loc 1 1573 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L401:
	.loc 1 1573 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# mg, tmp176
	movq	24(%rax), %rax	# mg_58(D)->mg_obj, D.15784
	testq	%rax, %rax	# D.15784
	je	.L402	#,
	.loc 1 1573 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp177
	movq	24(%rax), %rax	# mg_58(D)->mg_obj, iftmp.358
	jmp	.L403	#
.L402:
	.loc 1 1573 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp178
	movq	%rax, %rdi	# tmp178,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15784,
	call	Perl_sv_2mortal	#
.L403:
	.loc 1 1573 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.358, *sp_57
.LBE46:
	.loc 1 1574 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1575 0 discriminator 3
	movl	$2, %esi	#,
	movl	$.LC27, %edi	#,
	call	Perl_call_method	#
.LBB47:
	.loc 1 1576 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.359
	movq	32(%rax), %rax	# PL_curstackinfo.359_66->si_prev, tmp179
	movq	%rax, -24(%rbp)	# tmp179, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L404	#,
	.loc 1 1576 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.361
	testq	%rax, %rax	# PL_stderrgv.361
	je	.L405	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.362
	movl	12(%rax), %eax	# PL_stderrgv.362_69->sv_flags, D.15785
	movzbl	%al, %eax	# D.15785, D.15785
	cmpl	$13, %eax	#, D.15785
	jne	.L405	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.363
	movq	(%rax), %rax	# PL_stderrgv.363_72->sv_any, D.15786
	movq	56(%rax), %rax	# _73->xgv_gp, D.15787
	movq	16(%rax), %rax	# _74->gp_io, D.15788
	testq	%rax, %rax	# D.15788
	je	.L405	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.364
	movq	(%rax), %rax	# PL_stderrgv.364_76->sv_any, D.15786
	movq	56(%rax), %rax	# _77->xgv_gp, D.15787
	movq	16(%rax), %rax	# _78->gp_io, D.15788
	movq	(%rax), %rax	# _79->sv_any, D.15789
	movq	64(%rax), %rax	# _80->xio_ofp, D.15790
	testq	%rax, %rax	# D.15790
	je	.L405	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.365
	movq	(%rax), %rax	# PL_stderrgv.365_82->sv_any, D.15786
	movq	56(%rax), %rax	# _83->xgv_gp, D.15787
	movq	16(%rax), %rax	# _84->gp_io, D.15788
	movq	(%rax), %rax	# _85->sv_any, D.15789
	movq	64(%rax), %rax	# _86->xio_ofp, iftmp.360
	jmp	.L406	#
.L405:
	.loc 1 1576 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L406:
	.loc 1 1576 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.360,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L404:
.LBB48:
	.loc 1 1576 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.366
	movq	(%rax), %rax	# PL_curstack.366_89->sv_any, D.15779
	movq	%rbx, %rcx	# sp, sp.367
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.368
	subq	%rdx, %rcx	# PL_stack_base.369, D.15780
	movq	%rcx, %rdx	# D.15780, D.15780
	sarq	$3, %rdx	#, tmp180
	movq	%rdx, 8(%rax)	# D.15780, _90->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp181
	movq	(%rax), %rax	# prev_67->si_stack, D.15778
	movq	(%rax), %rax	# _96->sv_any, D.15779
	movq	(%rax), %rax	# _97->xav_array, PL_stack_base.370
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.370, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.371
	movq	-24(%rbp), %rax	# prev, tmp182
	movq	(%rax), %rax	# prev_67->si_stack, D.15778
	movq	(%rax), %rax	# _100->sv_any, D.15779
	movq	16(%rax), %rax	# _101->xav_max, D.15780
	salq	$3, %rax	#, D.15781
	addq	%rdx, %rax	# PL_stack_base.371, PL_stack_max.372
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.372, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.373
	movq	-24(%rbp), %rax	# prev, tmp183
	movq	(%rax), %rax	# prev_67->si_stack, D.15778
	movq	(%rax), %rax	# _107->sv_any, D.15779
	movq	8(%rax), %rax	# _108->xav_fill, D.15780
	salq	$3, %rax	#, D.15781
	addq	%rdx, %rax	# PL_stack_base.373, PL_stack_sp.374
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.374, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp184
	movq	(%rax), %rax	# prev_67->si_stack, PL_curstack.375
	movq	%rax, PL_curstack(%rip)	# PL_curstack.375, PL_curstack
.LBE48:
	movq	-24(%rbp), %rax	# prev, tmp185
	movq	%rax, PL_curstackinfo(%rip)	# tmp185, PL_curstackinfo
.LBE47:
	.loc 1 1577 0 is_stmt 1 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 1579 0 discriminator 2
	movl	$0, %eax	#, D.15782
	.loc 1 1580 0 discriminator 2
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_magic_wipepack, .-Perl_magic_wipepack
	.section	.rodata
.LC28:
	.string	"NEXTKEY"
.LC29:
	.string	"FIRSTKEY"
	.text
	.globl	Perl_magic_nextpack
	.type	Perl_magic_nextpack, @function
Perl_magic_nextpack:
.LFB39:
	.loc 1 1584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	movq	%rdx, -72(%rbp)	# key, key
	.loc 1 1585 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1586 0
	movq	-72(%rbp), %rax	# key, tmp174
	movl	12(%rax), %eax	# key_8(D)->sv_flags, D.15793
	andl	$118423552, %eax	#, D.15793
	testl	%eax, %eax	# D.15793
	je	.L409	#,
	.loc 1 1586 0 is_stmt 0 discriminator 1
	movl	$.LC28, %eax	#, iftmp.376
	jmp	.L410	#
.L409:
	.loc 1 1586 0 discriminator 2
	movl	$.LC29, %eax	#, iftmp.376
.L410:
	.loc 1 1586 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.376, meth
	.loc 1 1588 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1589 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.377
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.377, PL_tmps_floor
.LBB49:
	.loc 1 1590 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.378
	movq	40(%rax), %rax	# PL_curstackinfo.378_15->si_next, tmp175
	movq	%rax, -40(%rbp)	# tmp175, next
	cmpq	$0, -40(%rbp)	#, next
	jne	.L411	#,
	.loc 1 1590 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -40(%rbp)	# tmp176, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.379
	movq	-40(%rbp), %rax	# next, tmp177
	movq	%rdx, 32(%rax)	# PL_curstackinfo.379, next_17->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.380
	movq	-40(%rbp), %rdx	# next, tmp178
	movq	%rdx, 40(%rax)	# tmp178, PL_curstackinfo.380_19->si_next
.L411:
	.loc 1 1590 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp179
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-40(%rbp), %rax	# next, tmp180
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-40(%rbp), %rax	# next, tmp181
	movq	(%rax), %rax	# next_3->si_stack, D.15794
	movq	(%rax), %rax	# _20->sv_any, D.15795
	movq	$0, 8(%rax)	#, _21->xav_fill
.LBB50:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.381
	movq	(%rax), %rax	# PL_curstack.381_22->sv_any, D.15795
	movq	%rbx, %rcx	# sp, sp.382
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.383
	subq	%rdx, %rcx	# PL_stack_base.384, D.15796
	movq	%rcx, %rdx	# D.15796, D.15796
	sarq	$3, %rdx	#, tmp182
	movq	%rdx, 8(%rax)	# D.15796, _23->xav_fill
	movq	-40(%rbp), %rax	# next, tmp183
	movq	(%rax), %rax	# next_3->si_stack, D.15794
	movq	(%rax), %rax	# _29->sv_any, D.15795
	movq	(%rax), %rax	# _30->xav_array, PL_stack_base.385
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.385, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.386
	movq	-40(%rbp), %rax	# next, tmp184
	movq	(%rax), %rax	# next_3->si_stack, D.15794
	movq	(%rax), %rax	# _33->sv_any, D.15795
	movq	16(%rax), %rax	# _34->xav_max, D.15796
	salq	$3, %rax	#, D.15797
	addq	%rdx, %rax	# PL_stack_base.386, PL_stack_max.387
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.387, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.388
	movq	-40(%rbp), %rax	# next, tmp185
	movq	(%rax), %rax	# next_3->si_stack, D.15794
	movq	(%rax), %rax	# _40->sv_any, D.15795
	movq	8(%rax), %rax	# _41->xav_fill, D.15796
	salq	$3, %rax	#, D.15797
	addq	%rdx, %rax	# PL_stack_base.388, PL_stack_sp.389
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.389, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# next, tmp186
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.390
	movq	%rax, PL_curstack(%rip)	# PL_curstack.390, PL_curstack
.LBE50:
	movq	-40(%rbp), %rax	# next, tmp187
	movq	%rax, PL_curstackinfo(%rip)	# tmp187, PL_curstackinfo
.LBE49:
.LBB51:
	.loc 1 1591 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.391
	addq	$4, %rax	#, PL_markstack_ptr.392
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.392, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.393
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.394
	cmpq	%rax, %rdx	# PL_markstack_max.394, PL_markstack_ptr.393
	jne	.L412	#,
	.loc 1 1591 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L412:
	.loc 1 1591 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.395
	movq	%rbx, %rcx	# sp, sp.396
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.397
	subq	%rdx, %rcx	# PL_stack_base.398, D.15796
	movq	%rcx, %rdx	# D.15796, D.15796
	sarq	$3, %rdx	#, tmp188
	movl	%edx, (%rax)	# D.15798, *PL_markstack_ptr.395_53
.LBE51:
	.loc 1 1592 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.399
	movq	%rax, %rdx	# PL_stack_max.399, PL_stack_max.400
	movq	%rbx, %rax	# sp, sp.401
	subq	%rax, %rdx	# sp.401, D.15796
	movq	%rdx, %rax	# D.15796, D.15796
	cmpq	$15, %rax	#, D.15796
	jg	.L413	#,
	.loc 1 1592 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L413:
	.loc 1 1593 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-64(%rbp), %rax	# mg, tmp189
	movq	24(%rax), %rax	# mg_67(D)->mg_obj, D.15800
	testq	%rax, %rax	# D.15800
	je	.L414	#,
	.loc 1 1593 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp190
	movq	24(%rax), %rax	# mg_67(D)->mg_obj, iftmp.402
	jmp	.L415	#
.L414:
	.loc 1 1593 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp191
	movq	%rax, %rdi	# tmp191,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15800,
	call	Perl_sv_2mortal	#
.L415:
	.loc 1 1593 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.402, *sp_66
	.loc 1 1594 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# key, tmp192
	movl	12(%rax), %eax	# key_8(D)->sv_flags, D.15793
	andl	$118423552, %eax	#, D.15793
	testl	%eax, %eax	# D.15793
	je	.L416	#,
	.loc 1 1595 0
	addq	$8, %rbx	#, sp
	movq	-72(%rbp), %rax	# key, tmp193
	movq	%rax, (%rbx)	# tmp193, *sp_75
.L416:
	.loc 1 1596 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1598 0
	movq	-32(%rbp), %rax	# meth, tmp194
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.15798
	je	.L417	#,
	.loc 1 1599 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.403
	leaq	-8(%rax), %rdx	#, PL_stack_sp.405
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.405, PL_stack_sp
	movq	(%rax), %rcx	# *PL_stack_sp.404_78, D.15800
	movq	-72(%rbp), %rax	# key, tmp195
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.15800,
	movq	%rax, %rdi	# tmp195,
	call	Perl_sv_setsv_flags	#
.L417:
.LBB52:
	.loc 1 1601 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.406
	movq	32(%rax), %rax	# PL_curstackinfo.406_82->si_prev, tmp196
	movq	%rax, -24(%rbp)	# tmp196, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L418	#,
	.loc 1 1601 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.408
	testq	%rax, %rax	# PL_stderrgv.408
	je	.L419	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.409
	movl	12(%rax), %eax	# PL_stderrgv.409_85->sv_flags, D.15793
	movzbl	%al, %eax	# D.15793, D.15793
	cmpl	$13, %eax	#, D.15793
	jne	.L419	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.410
	movq	(%rax), %rax	# PL_stderrgv.410_88->sv_any, D.15801
	movq	56(%rax), %rax	# _89->xgv_gp, D.15802
	movq	16(%rax), %rax	# _90->gp_io, D.15803
	testq	%rax, %rax	# D.15803
	je	.L419	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.411
	movq	(%rax), %rax	# PL_stderrgv.411_92->sv_any, D.15801
	movq	56(%rax), %rax	# _93->xgv_gp, D.15802
	movq	16(%rax), %rax	# _94->gp_io, D.15803
	movq	(%rax), %rax	# _95->sv_any, D.15804
	movq	64(%rax), %rax	# _96->xio_ofp, D.15805
	testq	%rax, %rax	# D.15805
	je	.L419	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.412
	movq	(%rax), %rax	# PL_stderrgv.412_98->sv_any, D.15801
	movq	56(%rax), %rax	# _99->xgv_gp, D.15802
	movq	16(%rax), %rax	# _100->gp_io, D.15803
	movq	(%rax), %rax	# _101->sv_any, D.15804
	movq	64(%rax), %rax	# _102->xio_ofp, iftmp.407
	jmp	.L420	#
.L419:
	.loc 1 1601 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L420:
	.loc 1 1601 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.407,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L418:
.LBB53:
	.loc 1 1601 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.413
	movq	(%rax), %rax	# PL_curstack.413_105->sv_any, D.15795
	movq	%rbx, %rcx	# sp, sp.414
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.415
	subq	%rdx, %rcx	# PL_stack_base.416, D.15796
	movq	%rcx, %rdx	# D.15796, D.15796
	sarq	$3, %rdx	#, tmp197
	movq	%rdx, 8(%rax)	# D.15796, _106->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp198
	movq	(%rax), %rax	# prev_83->si_stack, D.15794
	movq	(%rax), %rax	# _112->sv_any, D.15795
	movq	(%rax), %rax	# _113->xav_array, PL_stack_base.417
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.417, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.418
	movq	-24(%rbp), %rax	# prev, tmp199
	movq	(%rax), %rax	# prev_83->si_stack, D.15794
	movq	(%rax), %rax	# _116->sv_any, D.15795
	movq	16(%rax), %rax	# _117->xav_max, D.15796
	salq	$3, %rax	#, D.15797
	addq	%rdx, %rax	# PL_stack_base.418, PL_stack_max.419
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.419, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.420
	movq	-24(%rbp), %rax	# prev, tmp200
	movq	(%rax), %rax	# prev_83->si_stack, D.15794
	movq	(%rax), %rax	# _123->sv_any, D.15795
	movq	8(%rax), %rax	# _124->xav_fill, D.15796
	salq	$3, %rax	#, D.15797
	addq	%rdx, %rax	# PL_stack_base.420, PL_stack_sp.421
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.421, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp201
	movq	(%rax), %rax	# prev_83->si_stack, PL_curstack.422
	movq	%rax, PL_curstack(%rip)	# PL_curstack.422, PL_curstack
.LBE53:
	movq	-24(%rbp), %rax	# prev, tmp202
	movq	%rax, PL_curstackinfo(%rip)	# tmp202, PL_curstackinfo
.LBE52:
	.loc 1 1602 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.423
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.424
	cmpl	%eax, %edx	# PL_tmps_floor.424, PL_tmps_ix.423
	jle	.L421	#,
	.loc 1 1602 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L421:
	.loc 1 1603 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1604 0
	movl	$0, %eax	#, D.15798
	.loc 1 1605 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_magic_nextpack, .-Perl_magic_nextpack
	.section	.rodata
.LC30:
	.string	"EXISTS"
	.text
	.globl	Perl_magic_existspack
	.type	Perl_magic_existspack, @function
Perl_magic_existspack:
.LFB40:
	.loc 1 1609 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1610 0
	movq	-16(%rbp), %rcx	# mg, tmp61
	movq	-8(%rbp), %rax	# sv, tmp62
	movl	$.LC30, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	S_magic_methpack	#
	.loc 1 1611 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_magic_existspack, .-Perl_magic_existspack
	.section	.rodata
.LC31:
	.string	"SCALAR"
	.text
	.globl	Perl_magic_scalarpack
	.type	Perl_magic_scalarpack, @function
Perl_magic_scalarpack:
.LFB41:
	.loc 1 1615 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# hv, hv
	movq	%rsi, -80(%rbp)	# mg, mg
	.loc 1 1616 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1617 0
	movq	$PL_sv_undef, -64(%rbp)	#, retval
	.loc 1 1618 0
	movq	-80(%rbp), %rax	# mg, tmp175
	movq	24(%rax), %rax	# mg_10(D)->mg_obj, D.15811
	testq	%rax, %rax	# D.15811
	je	.L426	#,
	.loc 1 1618 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mg, tmp176
	movq	24(%rax), %rax	# mg_10(D)->mg_obj, iftmp.425
	jmp	.L427	#
.L426:
	.loc 1 1618 0 discriminator 2
	movq	-72(%rbp), %rax	# hv, tmp177
	movq	%rax, %rdi	# tmp177,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15811,
	call	Perl_sv_2mortal	#
.L427:
	.loc 1 1618 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.425, tied
	.loc 1 1619 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# tied, tmp178
	movq	(%rax), %rax	# tied_16->sv_any, D.15812
	movq	(%rax), %rax	# MEM[(struct XRV *)_17].xrv_rv, D.15811
	movq	(%rax), %rax	# _18->sv_any, D.15812
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_19].xmg_stash, tmp179
	movq	%rax, -40(%rbp)	# tmp179, pkg
	.loc 1 1621 0 discriminator 3
	movq	-40(%rbp), %rax	# pkg, tmp180
	movl	$0, %edx	#,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp180,
	call	Perl_gv_fetchmethod_autoload	#
	testq	%rax, %rax	# D.15813
	jne	.L428	#,
.LBB54:
	.loc 1 1623 0
	movq	-72(%rbp), %rax	# hv, tmp181
	movq	(%rax), %rax	# hv_13(D)->sv_any, D.15814
	movq	64(%rax), %rax	# _22->xhv_eiter, D.15815
	testq	%rax, %rax	# D.15815
	je	.L429	#,
	.loc 1 1625 0
	movl	$PL_sv_yes, %eax	#, D.15811
	jmp	.L430	#
.L429:
	.loc 1 1627 0
	call	Perl_sv_newmortal	#
	movq	%rax, -32(%rbp)	# tmp182, key
	.loc 1 1628 0
	movq	-32(%rbp), %rdx	# key, tmp183
	movq	-80(%rbp), %rcx	# mg, tmp184
	movq	-72(%rbp), %rax	# hv, tmp185
	movq	%rcx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	Perl_magic_nextpack	#
	.loc 1 1629 0
	movq	-72(%rbp), %rax	# hv, tmp186
	movq	(%rax), %rax	# hv_13(D)->sv_any, D.15814
	movq	$0, 64(%rax)	#, _26->xhv_eiter
	.loc 1 1630 0
	movq	-32(%rbp), %rax	# key, tmp187
	movl	12(%rax), %eax	# key_25->sv_flags, D.15816
	andl	$118423552, %eax	#, D.15816
	testl	%eax, %eax	# D.15816
	je	.L431	#,
	.loc 1 1630 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.426
	jmp	.L432	#
.L431:
	.loc 1 1630 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.426
.L432:
	.loc 1 1630 0 discriminator 3
	jmp	.L430	#
.L428:
.LBE54:
	.loc 1 1634 0 is_stmt 1
	call	Perl_push_scope	#
.LBB55:
	.loc 1 1635 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.427
	movq	40(%rax), %rax	# PL_curstackinfo.427_32->si_next, tmp188
	movq	%rax, -56(%rbp)	# tmp188, next
	cmpq	$0, -56(%rbp)	#, next
	jne	.L433	#,
	.loc 1 1635 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -56(%rbp)	# tmp189, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.428
	movq	-56(%rbp), %rax	# next, tmp190
	movq	%rdx, 32(%rax)	# PL_curstackinfo.428, next_34->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.429
	movq	-56(%rbp), %rdx	# next, tmp191
	movq	%rdx, 40(%rax)	# tmp191, PL_curstackinfo.429_36->si_next
.L433:
	.loc 1 1635 0 discriminator 2
	movq	-56(%rbp), %rax	# next, tmp192
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-56(%rbp), %rax	# next, tmp193
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-56(%rbp), %rax	# next, tmp194
	movq	(%rax), %rax	# next_3->si_stack, D.15817
	movq	(%rax), %rax	# _37->sv_any, D.15818
	movq	$0, 8(%rax)	#, _38->xav_fill
.LBB56:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.430
	movq	(%rax), %rax	# PL_curstack.430_39->sv_any, D.15818
	movq	%rbx, %rcx	# sp, sp.431
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.432
	subq	%rdx, %rcx	# PL_stack_base.433, D.15819
	movq	%rcx, %rdx	# D.15819, D.15819
	sarq	$3, %rdx	#, tmp195
	movq	%rdx, 8(%rax)	# D.15819, _40->xav_fill
	movq	-56(%rbp), %rax	# next, tmp196
	movq	(%rax), %rax	# next_3->si_stack, D.15817
	movq	(%rax), %rax	# _46->sv_any, D.15818
	movq	(%rax), %rax	# _47->xav_array, PL_stack_base.434
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.434, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.435
	movq	-56(%rbp), %rax	# next, tmp197
	movq	(%rax), %rax	# next_3->si_stack, D.15817
	movq	(%rax), %rax	# _50->sv_any, D.15818
	movq	16(%rax), %rax	# _51->xav_max, D.15819
	salq	$3, %rax	#, D.15820
	addq	%rdx, %rax	# PL_stack_base.435, PL_stack_max.436
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.436, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.437
	movq	-56(%rbp), %rax	# next, tmp198
	movq	(%rax), %rax	# next_3->si_stack, D.15817
	movq	(%rax), %rax	# _57->sv_any, D.15818
	movq	8(%rax), %rax	# _58->xav_fill, D.15819
	salq	$3, %rax	#, D.15820
	addq	%rdx, %rax	# PL_stack_base.437, PL_stack_sp.438
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.438, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-56(%rbp), %rax	# next, tmp199
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.439
	movq	%rax, PL_curstack(%rip)	# PL_curstack.439, PL_curstack
.LBE56:
	movq	-56(%rbp), %rax	# next, tmp200
	movq	%rax, PL_curstackinfo(%rip)	# tmp200, PL_curstackinfo
.LBE55:
.LBB57:
	.loc 1 1636 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.440
	addq	$4, %rax	#, PL_markstack_ptr.441
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.441, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.442
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.443
	cmpq	%rax, %rdx	# PL_markstack_max.443, PL_markstack_ptr.442
	jne	.L434	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L434:
	.loc 1 1636 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.444
	movq	%rbx, %rcx	# sp, sp.445
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.446
	subq	%rdx, %rcx	# PL_stack_base.447, D.15819
	movq	%rcx, %rdx	# D.15819, D.15819
	sarq	$3, %rdx	#, tmp201
	movl	%edx, (%rax)	# D.15821, *PL_markstack_ptr.444_70
.LBE57:
	.loc 1 1637 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.448
	movq	%rax, %rdx	# PL_stack_max.448, PL_stack_max.449
	movq	%rbx, %rax	# sp, sp.450
	subq	%rax, %rdx	# sp.450, D.15819
	movq	%rdx, %rax	# D.15819, D.15819
	cmpq	$7, %rax	#, D.15819
	jg	.L435	#,
	.loc 1 1637 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L435:
	.loc 1 1638 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# tied, tmp202
	movq	%rax, (%rbx)	# tmp202, *sp_83
	.loc 1 1639 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1641 0
	movl	$0, %esi	#,
	movl	$.LC31, %edi	#,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.15821
	je	.L436	#,
	.loc 1 1642 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.451
	leaq	-8(%rax), %rdx	#, PL_stack_sp.453
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.453, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.452_86, tmp203
	movq	%rax, -64(%rbp)	# tmp203, retval
.L436:
.LBB58:
	.loc 1 1643 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.454
	movq	32(%rax), %rax	# PL_curstackinfo.454_90->si_prev, tmp204
	movq	%rax, -24(%rbp)	# tmp204, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L437	#,
	.loc 1 1643 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.456
	testq	%rax, %rax	# PL_stderrgv.456
	je	.L438	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.457
	movl	12(%rax), %eax	# PL_stderrgv.457_93->sv_flags, D.15816
	movzbl	%al, %eax	# D.15816, D.15816
	cmpl	$13, %eax	#, D.15816
	jne	.L438	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.458
	movq	(%rax), %rax	# PL_stderrgv.458_96->sv_any, D.15823
	movq	56(%rax), %rax	# _97->xgv_gp, D.15824
	movq	16(%rax), %rax	# _98->gp_io, D.15825
	testq	%rax, %rax	# D.15825
	je	.L438	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.459
	movq	(%rax), %rax	# PL_stderrgv.459_100->sv_any, D.15823
	movq	56(%rax), %rax	# _101->xgv_gp, D.15824
	movq	16(%rax), %rax	# _102->gp_io, D.15825
	movq	(%rax), %rax	# _103->sv_any, D.15826
	movq	64(%rax), %rax	# _104->xio_ofp, D.15827
	testq	%rax, %rax	# D.15827
	je	.L438	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.460
	movq	(%rax), %rax	# PL_stderrgv.460_106->sv_any, D.15823
	movq	56(%rax), %rax	# _107->xgv_gp, D.15824
	movq	16(%rax), %rax	# _108->gp_io, D.15825
	movq	(%rax), %rax	# _109->sv_any, D.15826
	movq	64(%rax), %rax	# _110->xio_ofp, iftmp.455
	jmp	.L439	#
.L438:
	.loc 1 1643 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L439:
	.loc 1 1643 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.455,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L437:
.LBB59:
	.loc 1 1643 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.461
	movq	(%rax), %rax	# PL_curstack.461_113->sv_any, D.15818
	movq	%rbx, %rcx	# sp, sp.462
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.463
	subq	%rdx, %rcx	# PL_stack_base.464, D.15819
	movq	%rcx, %rdx	# D.15819, D.15819
	sarq	$3, %rdx	#, tmp205
	movq	%rdx, 8(%rax)	# D.15819, _114->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp206
	movq	(%rax), %rax	# prev_91->si_stack, D.15817
	movq	(%rax), %rax	# _120->sv_any, D.15818
	movq	(%rax), %rax	# _121->xav_array, PL_stack_base.465
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.465, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.466
	movq	-24(%rbp), %rax	# prev, tmp207
	movq	(%rax), %rax	# prev_91->si_stack, D.15817
	movq	(%rax), %rax	# _124->sv_any, D.15818
	movq	16(%rax), %rax	# _125->xav_max, D.15819
	salq	$3, %rax	#, D.15820
	addq	%rdx, %rax	# PL_stack_base.466, PL_stack_max.467
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.467, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.468
	movq	-24(%rbp), %rax	# prev, tmp208
	movq	(%rax), %rax	# prev_91->si_stack, D.15817
	movq	(%rax), %rax	# _131->sv_any, D.15818
	movq	8(%rax), %rax	# _132->xav_fill, D.15819
	salq	$3, %rax	#, D.15820
	addq	%rdx, %rax	# PL_stack_base.468, PL_stack_sp.469
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.469, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp209
	movq	(%rax), %rax	# prev_91->si_stack, PL_curstack.470
	movq	%rax, PL_curstack(%rip)	# PL_curstack.470, PL_curstack
.LBE59:
	movq	-24(%rbp), %rax	# prev, tmp210
	movq	%rax, PL_curstackinfo(%rip)	# tmp210, PL_curstackinfo
.LBE58:
	.loc 1 1644 0 is_stmt 1 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 1645 0 discriminator 2
	movq	-64(%rbp), %rax	# retval, D.15811
.L430:
	.loc 1 1646 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_magic_scalarpack, .-Perl_magic_scalarpack
	.globl	Perl_magic_setdbline
	.type	Perl_magic_setdbline, @function
Perl_magic_setdbline:
.LFB42:
	.loc 1 1650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1657 0
	movq	PL_DBline(%rip), %rax	# PL_DBline, tmp117
	movq	%rax, -24(%rbp)	# tmp117, gv
	.loc 1 1658 0
	cmpq	$0, -56(%rbp)	#, sv
	je	.L441	#,
	.loc 1 1658 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp118
	movl	12(%rax), %eax	# sv_9(D)->sv_flags, D.15830
	andl	$262144, %eax	#, D.15830
	testl	%eax, %eax	# D.15830
	je	.L442	#,
	movq	-56(%rbp), %rax	# sv, tmp119
	movq	(%rax), %rax	# sv_9(D)->sv_any, PL_Xpv.474
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.474, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.475
	testq	%rax, %rax	# PL_Xpv.475
	je	.L443	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.476
	movq	8(%rax), %rax	# PL_Xpv.476_14->xpv_cur, D.15831
	cmpq	$1, %rax	#, D.15831
	ja	.L444	#,
	.loc 1 1658 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.477
	movq	8(%rax), %rax	# PL_Xpv.477_16->xpv_cur, D.15831
	testq	%rax, %rax	# D.15831
	je	.L443	#,
	.loc 1 1658 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.478
	movq	(%rax), %rax	# PL_Xpv.478_18->xpv_pv, D.15832
	movzbl	(%rax), %eax	# *_19, D.15833
	cmpb	$48, %al	#, D.15833
	je	.L443	#,
.L444:
	.loc 1 1658 0 discriminator 3
	movl	$1, %eax	#, iftmp.473
	jmp	.L445	#
.L443:
	.loc 1 1658 0 discriminator 2
	movl	$0, %eax	#, iftmp.473
.L445:
	jmp	.L451	#
.L442:
	movq	-56(%rbp), %rax	# sv, tmp120
	movl	12(%rax), %eax	# sv_9(D)->sv_flags, D.15830
	andl	$65536, %eax	#, D.15830
	testl	%eax, %eax	# D.15830
	je	.L447	#,
	.loc 1 1658 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp121
	movq	(%rax), %rax	# sv_9(D)->sv_any, D.15834
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_26].xiv_iv, D.15835
	testq	%rax, %rax	# D.15835
	setne	%al	#, D.15836
	movzbl	%al, %eax	# D.15836, iftmp.479
	jmp	.L451	#
.L447:
	.loc 1 1658 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp122
	movl	12(%rax), %eax	# sv_9(D)->sv_flags, D.15830
	andl	$131072, %eax	#, D.15830
	testl	%eax, %eax	# D.15830
	je	.L449	#,
	.loc 1 1658 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp123
	movq	(%rax), %rax	# sv_9(D)->sv_any, D.15834
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_32].xnv_nv, D.15837
	xorpd	%xmm1, %xmm1	# tmp125
	ucomisd	%xmm1, %xmm0	# tmp125, D.15837
	setp	%dl	#, tmp124
	movl	$1, %eax	#, tmp127
	xorpd	%xmm1, %xmm1	# tmp126
	ucomisd	%xmm1, %xmm0	# tmp126, D.15837
	cmove	%edx, %eax	# tmp124,, D.15836
	movzbl	%al, %eax	# D.15836, iftmp.480
	jmp	.L451	#
.L449:
	.loc 1 1658 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp128
	movq	%rax, %rdi	# tmp128,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.15833, iftmp.480
	jmp	.L451	#
.L441:
	movl	$0, %eax	#, iftmp.471
.L451:
	.loc 1 1658 0 discriminator 3
	movl	%eax, -36(%rbp)	# iftmp.471, i
	.loc 1 1660 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# mg, tmp129
	movl	40(%rax), %eax	# mg_43(D)->mg_len, D.15838
	cltq
	movq	%rax, -32(%rbp)	# n_a.482, n_a
	movq	-32(%rbp), %rax	# n_a, n_a.483
	.loc 1 1659 0 discriminator 3
	cmpl	$-2, %eax	#, D.15838
	jne	.L452	#,
	.loc 1 1660 0
	movq	-64(%rbp), %rax	# mg, tmp130
	movq	32(%rax), %rax	# mg_43(D)->mg_ptr, D.15832
	movl	12(%rax), %eax	# MEM[(struct SV *)_48].sv_flags, D.15830
	andl	$262144, %eax	#, D.15830
	testl	%eax, %eax	# D.15830
	je	.L453	#,
	.loc 1 1660 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp131
	movq	32(%rax), %rax	# mg_43(D)->mg_ptr, D.15832
	movq	(%rax), %rax	# MEM[(struct SV *)_51].sv_any, D.15834
	movq	8(%rax), %rax	# MEM[(struct XPV *)_52].xpv_cur, n_a.485
	movq	%rax, -32(%rbp)	# n_a.485, n_a
	movq	-64(%rbp), %rax	# mg, tmp132
	movq	32(%rax), %rax	# mg_43(D)->mg_ptr, D.15832
	movq	(%rax), %rax	# MEM[(struct SV *)_54].sv_any, D.15834
	movq	(%rax), %rax	# MEM[(struct XPV *)_55].xpv_pv, iftmp.484
	jmp	.L455	#
.L453:
	.loc 1 1660 0 discriminator 2
	movq	-64(%rbp), %rax	# mg, tmp133
	movq	32(%rax), %rax	# mg_43(D)->mg_ptr, D.15832
	leaq	-32(%rbp), %rcx	#, tmp134
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.15832,
	call	Perl_sv_2pv_flags	#
	jmp	.L455	#
.L452:
	.loc 1 1659 0 is_stmt 1 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp135
	movq	32(%rax), %rax	# mg_43(D)->mg_ptr, iftmp.481
.L455:
	.loc 1 1659 0 is_stmt 0 discriminator 2
	movq	%rax, %rdi	# iftmp.481,
	call	atoi	#
	movl	%eax, %ecx	#, D.15838
	movq	-24(%rbp), %rax	# gv, tmp136
	movq	(%rax), %rax	# gv_8->sv_any, D.15839
	movq	56(%rax), %rax	# _62->xgv_gp, D.15840
	movq	32(%rax), %rax	# _63->gp_av, D.15841
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.15838,
	movq	%rax, %rdi	# D.15841,
	call	Perl_av_fetch	#
	movq	%rax, -16(%rbp)	# tmp137, svp
	.loc 1 1661 0 is_stmt 1 discriminator 2
	cmpq	$0, -16(%rbp)	#, svp
	je	.L456	#,
	.loc 1 1661 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# svp, tmp138
	movq	(%rax), %rax	# *svp_65, D.15842
	movl	12(%rax), %eax	# _66->sv_flags, D.15830
	andl	$16777216, %eax	#, D.15830
	testl	%eax, %eax	# D.15830
	je	.L456	#,
	movq	-16(%rbp), %rax	# svp, tmp139
	movq	(%rax), %rax	# *svp_65, D.15842
	movq	(%rax), %rax	# _69->sv_any, D.15834
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_70].xiv_iv, D.15835
	movq	%rax, -8(%rbp)	# D.15835, o
	cmpq	$0, -8(%rbp)	#, o
	je	.L456	#,
	.loc 1 1663 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, i
	je	.L457	#,
	.loc 1 1664 0
	movq	-8(%rbp), %rax	# o, tmp140
	movzbl	36(%rax), %eax	# o_72->op_flags, D.15843
	orl	$-128, %eax	#, D.15843
	movl	%eax, %edx	# D.15843, D.15843
	movq	-8(%rbp), %rax	# o, tmp141
	movb	%dl, 36(%rax)	# D.15843, o_72->op_flags
	jmp	.L456	#
.L457:
	.loc 1 1666 0
	movq	-8(%rbp), %rax	# o, tmp142
	movzbl	36(%rax), %eax	# o_72->op_flags, D.15843
	andl	$127, %eax	#, D.15843
	movl	%eax, %edx	# D.15843, D.15843
	movq	-8(%rbp), %rax	# o, tmp143
	movb	%dl, 36(%rax)	# D.15843, o_72->op_flags
.L456:
	.loc 1 1668 0
	movl	$0, %eax	#, D.15838
	.loc 1 1669 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_magic_setdbline, .-Perl_magic_setdbline
	.globl	Perl_magic_getarylen
	.type	Perl_magic_getarylen, @function
Perl_magic_getarylen:
.LFB43:
	.loc 1 1673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1674 0
	movq	-16(%rbp), %rax	# mg, tmp73
	movq	24(%rax), %rax	# mg_2(D)->mg_obj, D.15844
	movl	12(%rax), %eax	# _3->sv_flags, D.15845
	andl	$32768, %eax	#, D.15845
	testl	%eax, %eax	# D.15845
	je	.L460	#,
	.loc 1 1674 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# mg, tmp74
	movq	24(%rax), %rax	# mg_2(D)->mg_obj, D.15844
	movq	%rax, %rdi	# D.15844,
	call	Perl_mg_size	#
	cltq
	jmp	.L461	#
.L460:
	.loc 1 1674 0 discriminator 2
	movq	-16(%rbp), %rax	# mg, tmp75
	movq	24(%rax), %rax	# mg_2(D)->mg_obj, D.15844
	movq	(%rax), %rax	# MEM[(struct AV *)_9].sv_any, D.15847
	movq	8(%rax), %rax	# _10->xav_fill, iftmp.486
.L461:
	.loc 1 1674 0 discriminator 3
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.487
	movl	68(%rdx), %edx	# PL_curcop.487_12->cop_arybase, D.15846
	movslq	%edx, %rdx	# D.15846, D.15848
	addq	%rax, %rdx	# iftmp.486, D.15848
	movq	-8(%rbp), %rax	# sv, tmp76
	movq	%rdx, %rsi	# D.15848,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_setiv	#
	.loc 1 1675 0 is_stmt 1 discriminator 3
	movl	$0, %eax	#, D.15846
	.loc 1 1676 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_magic_getarylen, .-Perl_magic_getarylen
	.globl	Perl_magic_setarylen
	.type	Perl_magic_setarylen, @function
Perl_magic_setarylen:
.LFB44:
	.loc 1 1680 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1681 0
	movq	-8(%rbp), %rax	# sv, tmp73
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15849
	andl	$65536, %eax	#, D.15849
	testl	%eax, %eax	# D.15849
	je	.L464	#,
	.loc 1 1681 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp74
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15850
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_5].xiv_iv, D.15851
	jmp	.L465	#
.L464:
	.loc 1 1681 0 discriminator 2
	movq	-8(%rbp), %rax	# sv, tmp75
	movq	%rax, %rdi	# tmp75,
	call	Perl_sv_2iv	#
.L465:
	.loc 1 1681 0 discriminator 3
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.489
	movl	68(%rdx), %edx	# PL_curcop.489_10->cop_arybase, D.15852
	subl	%edx, %eax	# D.15853, D.15853
	movl	%eax, %edx	# D.15853, D.15852
	movq	-16(%rbp), %rax	# mg, tmp76
	movq	24(%rax), %rax	# mg_15(D)->mg_obj, D.15854
	movl	%edx, %esi	# D.15852,
	movq	%rax, %rdi	# D.15854,
	call	Perl_av_fill	#
	.loc 1 1682 0 is_stmt 1 discriminator 3
	movl	$0, %eax	#, D.15852
	.loc 1 1683 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_magic_setarylen, .-Perl_magic_setarylen
	.globl	Perl_magic_getpos
	.type	Perl_magic_getpos, @function
Perl_magic_getpos:
.LFB45:
	.loc 1 1687 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1688 0
	movq	-40(%rbp), %rax	# sv, tmp86
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15856
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_3].xlv_targ, tmp87
	movq	%rax, -16(%rbp)	# tmp87, lsv
	.loc 1 1690 0
	movq	-16(%rbp), %rax	# lsv, tmp88
	movl	12(%rax), %eax	# lsv_4->sv_flags, D.15857
	movzbl	%al, %eax	# D.15857, D.15857
	cmpl	$6, %eax	#, D.15857
	jbe	.L468	#,
	.loc 1 1690 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# lsv, tmp89
	movq	(%rax), %rax	# lsv_4->sv_any, D.15856
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_7].xmg_magic, D.15858
	testq	%rax, %rax	# D.15858
	je	.L468	#,
	.loc 1 1691 0 is_stmt 1
	movq	-16(%rbp), %rax	# lsv, tmp90
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_mg_find	#
	movq	%rax, -8(%rbp)	# tmp91, mg
	.loc 1 1692 0
	cmpq	$0, -8(%rbp)	#, mg
	je	.L468	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mg, tmp92
	movl	40(%rax), %eax	# mg_9->mg_len, D.15855
	testl	%eax, %eax	# D.15855
	js	.L468	#,
.LBB60:
	.loc 1 1693 0 is_stmt 1
	movq	-8(%rbp), %rax	# mg, tmp93
	movl	40(%rax), %eax	# mg_9->mg_len, i.490
	movl	%eax, -20(%rbp)	# i.490, i
	.loc 1 1694 0
	movq	-16(%rbp), %rax	# lsv, tmp94
	movl	12(%rax), %eax	# lsv_4->sv_flags, D.15857
	andl	$536870912, %eax	#, D.15857
	testl	%eax, %eax	# D.15857
	je	.L469	#,
	.loc 1 1694 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.491
	movzbl	37(%rax), %eax	# PL_curcop.491_14->op_private, D.15859
	movzbl	%al, %eax	# D.15859, D.15855
	andl	$8, %eax	#, D.15855
	testl	%eax, %eax	# D.15855
	jne	.L469	#,
	.loc 1 1695 0 is_stmt 1
	leaq	-20(%rbp), %rdx	#, tmp95
	movq	-16(%rbp), %rax	# lsv, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	Perl_sv_pos_b2u	#
.L469:
	.loc 1 1696 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.492
	movl	68(%rax), %edx	# PL_curcop.492_18->cop_arybase, D.15855
	movl	-20(%rbp), %eax	# i, i.493
	addl	%edx, %eax	# D.15855, D.15855
	movslq	%eax, %rdx	# D.15855, D.15860
	movq	-40(%rbp), %rax	# sv, tmp97
	movq	%rdx, %rsi	# D.15860,
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_setiv	#
	.loc 1 1697 0
	movl	$0, %eax	#, D.15855
	jmp	.L470	#
.L468:
.LBE60:
	.loc 1 1700 0
	movq	-40(%rbp), %rax	# sv, tmp98
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15857
	andl	$1223753727, %eax	#, D.15857
	movl	%eax, %edx	# D.15857, D.15857
	movq	-40(%rbp), %rax	# sv, tmp99
	movl	%edx, 12(%rax)	# D.15857, sv_2(D)->sv_flags
	movq	-40(%rbp), %rax	# sv, tmp100
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15857
	andl	$2097152, %eax	#, D.15857
	testl	%eax, %eax	# D.15857
	je	.L472	#,
	.loc 1 1700 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp101
	movq	%rax, %rdi	# tmp101,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15855
	je	.L472	#,
	.loc 1 1700 0
	nop
.L472:
	.loc 1 1701 0 is_stmt 1
	movl	$0, %eax	#, D.15855
.L470:
	.loc 1 1702 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_magic_getpos, .-Perl_magic_getpos
	.globl	Perl_magic_setpos
	.type	Perl_magic_setpos, @function
Perl_magic_setpos:
.LFB46:
	.loc 1 1706 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	movq	%rsi, -64(%rbp)	# mg, mg
	.loc 1 1707 0
	movq	-56(%rbp), %rax	# sv, tmp95
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.15862
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_12].xlv_targ, tmp96
	movq	%rax, -8(%rbp)	# tmp96, lsv
	.loc 1 1710 0
	movq	$0, -16(%rbp)	#, ulen
	.loc 1 1712 0
	movq	$0, -40(%rbp)	#, mg
	.loc 1 1714 0
	movq	-8(%rbp), %rax	# lsv, tmp97
	movl	12(%rax), %eax	# lsv_13->sv_flags, D.15863
	movzbl	%al, %eax	# D.15863, D.15863
	cmpl	$6, %eax	#, D.15863
	jbe	.L474	#,
	.loc 1 1714 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lsv, tmp98
	movq	(%rax), %rax	# lsv_13->sv_any, D.15862
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_18].xmg_magic, D.15864
	testq	%rax, %rax	# D.15864
	je	.L474	#,
	.loc 1 1715 0 is_stmt 1
	movq	-8(%rbp), %rax	# lsv, tmp99
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	Perl_mg_find	#
	movq	%rax, -40(%rbp)	# tmp100, mg
.L474:
	.loc 1 1716 0
	cmpq	$0, -40(%rbp)	#, mg
	jne	.L475	#,
	.loc 1 1717 0
	movq	-56(%rbp), %rax	# sv, tmp101
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15863
	andl	$118423552, %eax	#, D.15863
	testl	%eax, %eax	# D.15863
	jne	.L476	#,
	.loc 1 1718 0
	movl	$0, %eax	#, D.15861
	jmp	.L477	#
.L476:
	.loc 1 1719 0
	movq	-8(%rbp), %rax	# lsv, tmp102
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	Perl_sv_magic	#
	.loc 1 1720 0
	movq	-8(%rbp), %rax	# lsv, tmp103
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	Perl_mg_find	#
	movq	%rax, -40(%rbp)	# tmp104, mg
	jmp	.L478	#
.L475:
	.loc 1 1722 0
	movq	-56(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15863
	andl	$118423552, %eax	#, D.15863
	testl	%eax, %eax	# D.15863
	jne	.L478	#,
	.loc 1 1723 0
	movq	-40(%rbp), %rax	# mg, tmp106
	movl	$-1, 40(%rax)	#, mg_1->mg_len
	.loc 1 1724 0
	movl	$0, %eax	#, D.15861
	jmp	.L477	#
.L478:
	.loc 1 1726 0
	movq	-8(%rbp), %rax	# lsv, tmp107
	movl	12(%rax), %eax	# lsv_13->sv_flags, D.15863
	andl	$262144, %eax	#, D.15863
	testl	%eax, %eax	# D.15863
	je	.L479	#,
	.loc 1 1726 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lsv, tmp108
	movq	(%rax), %rax	# lsv_13->sv_any, D.15862
	movq	8(%rax), %rax	# MEM[(struct XPV *)_30].xpv_cur, iftmp.495
	jmp	.L480	#
.L479:
	.loc 1 1726 0 discriminator 2
	movq	-8(%rbp), %rax	# lsv, tmp109
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_len	#
.L480:
	.loc 1 1726 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.495, len
	.loc 1 1728 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# sv, tmp110
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.15863
	andl	$65536, %eax	#, D.15863
	testl	%eax, %eax	# D.15863
	je	.L481	#,
	.loc 1 1728 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp111
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.15862
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_36].xiv_iv, iftmp.496
	jmp	.L482	#
.L481:
	.loc 1 1728 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp112
	movq	%rax, %rdi	# tmp112,
	call	Perl_sv_2iv	#
.L482:
	.loc 1 1728 0 discriminator 3
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.497
	movl	68(%rdx), %edx	# PL_curcop.497_39->cop_arybase, D.15861
	movslq	%edx, %rdx	# D.15861, D.15865
	subq	%rdx, %rax	# D.15865, tmp113
	movq	%rax, -32(%rbp)	# tmp113, pos
	.loc 1 1730 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# lsv, tmp114
	movl	12(%rax), %eax	# lsv_13->sv_flags, D.15863
	andl	$536870912, %eax	#, D.15863
	testl	%eax, %eax	# D.15863
	je	.L483	#,
	.loc 1 1730 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.498
	movzbl	37(%rax), %eax	# PL_curcop.498_45->op_private, D.15866
	movzbl	%al, %eax	# D.15866, D.15861
	andl	$8, %eax	#, D.15861
	testl	%eax, %eax	# D.15861
	jne	.L483	#,
	.loc 1 1731 0 is_stmt 1
	movq	-8(%rbp), %rax	# lsv, tmp115
	movq	%rax, %rdi	# tmp115,
	call	Perl_sv_len_utf8	#
	movq	%rax, -16(%rbp)	# tmp116, ulen
	.loc 1 1732 0
	cmpq	$0, -16(%rbp)	#, ulen
	je	.L483	#,
	.loc 1 1733 0
	movq	-16(%rbp), %rax	# ulen, tmp117
	movq	%rax, -24(%rbp)	# tmp117, len
.L483:
	.loc 1 1736 0
	cmpq	$0, -32(%rbp)	#, pos
	jns	.L484	#,
	.loc 1 1737 0
	movq	-32(%rbp), %rdx	# pos, pos.499
	movq	-24(%rbp), %rax	# len, tmp118
	addq	%rdx, %rax	# pos.499, D.15867
	movq	%rax, -32(%rbp)	# D.15867, pos
	.loc 1 1738 0
	cmpq	$0, -32(%rbp)	#, pos
	jns	.L486	#,
	.loc 1 1739 0
	movq	$0, -32(%rbp)	#, pos
	jmp	.L486	#
.L484:
	.loc 1 1741 0
	movq	-24(%rbp), %rax	# len, len.500
	cmpq	-32(%rbp), %rax	# pos, len.500
	jge	.L486	#,
	.loc 1 1742 0
	movq	-24(%rbp), %rax	# len, tmp119
	movq	%rax, -32(%rbp)	# tmp119, pos
.L486:
	.loc 1 1744 0
	cmpq	$0, -16(%rbp)	#, ulen
	je	.L487	#,
.LBB61:
	.loc 1 1745 0
	movq	-32(%rbp), %rax	# pos, tmp120
	movl	%eax, -44(%rbp)	# p.501, p
	.loc 1 1746 0
	leaq	-44(%rbp), %rcx	#, tmp121
	movq	-8(%rbp), %rax	# lsv, tmp122
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	Perl_sv_pos_u2b	#
	.loc 1 1747 0
	movl	-44(%rbp), %eax	# p, p.502
	cltq
	movq	%rax, -32(%rbp)	# tmp123, pos
.L487:
.LBE61:
	.loc 1 1750 0
	movq	-32(%rbp), %rax	# pos, tmp124
	movl	%eax, %edx	# tmp124, D.15861
	movq	-40(%rbp), %rax	# mg, tmp125
	movl	%edx, 40(%rax)	# D.15861, mg_2->mg_len
	.loc 1 1751 0
	movq	-40(%rbp), %rax	# mg, tmp126
	movzbl	19(%rax), %eax	# mg_2->mg_flags, D.15866
	andl	$-2, %eax	#, D.15866
	movl	%eax, %edx	# D.15866, D.15866
	movq	-40(%rbp), %rax	# mg, tmp127
	movb	%dl, 19(%rax)	# D.15866, mg_2->mg_flags
	.loc 1 1753 0
	movl	$0, %eax	#, D.15861
.L477:
	.loc 1 1754 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_magic_setpos, .-Perl_magic_setpos
	.section	.rodata
.LC33:
	.string	"*"
	.text
	.globl	Perl_magic_getglob
	.type	Perl_magic_getglob, @function
Perl_magic_getglob:
.LFB47:
	.loc 1 1758 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1759 0
	movq	-8(%rbp), %rax	# sv, tmp67
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.15868
	andl	$1048576, %eax	#, D.15868
	testl	%eax, %eax	# D.15868
	je	.L489	#,
	.loc 1 1760 0
	movq	-8(%rbp), %rax	# sv, tmp68
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.15868
	andl	$-1048577, %eax	#, D.15868
	movl	%eax, %edx	# D.15868, D.15868
	movq	-8(%rbp), %rax	# sv, tmp69
	movl	%edx, 12(%rax)	# D.15868, sv_1(D)->sv_flags
	.loc 1 1761 0
	movq	-8(%rbp), %rsi	# sv, tmp70
	movq	-8(%rbp), %rax	# sv, tmp71
	movl	$1, %ecx	#,
	movl	$.LC33, %edx	#,
	movq	%rax, %rdi	# tmp71,
	call	Perl_gv_efullname4	#
	.loc 1 1762 0
	movq	-8(%rbp), %rax	# sv, tmp72
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.15868
	orl	$1048576, %eax	#, D.15868
	movl	%eax, %edx	# D.15868, D.15868
	movq	-8(%rbp), %rax	# sv, tmp73
	movl	%edx, 12(%rax)	# D.15868, sv_1(D)->sv_flags
	jmp	.L490	#
.L489:
	.loc 1 1765 0
	movq	-8(%rbp), %rsi	# sv, tmp74
	movq	-8(%rbp), %rax	# sv, tmp75
	movl	$1, %ecx	#,
	movl	$.LC33, %edx	#,
	movq	%rax, %rdi	# tmp75,
	call	Perl_gv_efullname4	#
.L490:
	.loc 1 1766 0
	movl	$0, %eax	#, D.15869
	.loc 1 1767 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_magic_getglob, .-Perl_magic_getglob
	.globl	Perl_magic_setglob
	.type	Perl_magic_setglob, @function
Perl_magic_setglob:
.LFB48:
	.loc 1 1771 0
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
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1776 0
	movq	-40(%rbp), %rax	# sv, tmp79
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.15872
	andl	$118423552, %eax	#, D.15872
	testl	%eax, %eax	# D.15872
	jne	.L493	#,
	.loc 1 1777 0
	movl	$0, %eax	#, D.15871
	jmp	.L500	#
.L493:
	.loc 1 1778 0
	movq	-40(%rbp), %rax	# sv, tmp80
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.15872
	andl	$262144, %eax	#, D.15872
	testl	%eax, %eax	# D.15872
	je	.L495	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp81
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15873
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, n_a.504
	movq	%rax, -32(%rbp)	# n_a.504, n_a
	movq	-40(%rbp), %rax	# sv, tmp82
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15873
	movq	(%rax), %rax	# MEM[(struct XPV *)_12].xpv_pv, iftmp.503
	jmp	.L496	#
.L495:
	.loc 1 1778 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp83
	movq	-40(%rbp), %rax	# sv, tmp84
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	Perl_sv_2pv_flags	#
.L496:
	.loc 1 1778 0 discriminator 3
	movq	%rax, %rbx	# iftmp.503, s
	.loc 1 1779 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %eax	# *s_15, D.15874
	cmpb	$42, %al	#, D.15874
	jne	.L497	#,
	.loc 1 1779 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.15875
	movzbl	(%rax), %eax	# *_17, D.15874
	testb	%al, %al	# D.15874
	je	.L497	#,
	.loc 1 1780 0 is_stmt 1
	addq	$1, %rbx	#, s
.L497:
	.loc 1 1781 0
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# s,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp85, gv
	.loc 1 1782 0
	movq	-40(%rbp), %rax	# sv, tmp86
	cmpq	-24(%rbp), %rax	# gv, tmp86
	jne	.L498	#,
	.loc 1 1783 0
	movl	$0, %eax	#, D.15871
	jmp	.L500	#
.L498:
	.loc 1 1784 0
	movq	-40(%rbp), %rax	# sv, tmp87
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.15873
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_22].xgv_gp, D.15876
	testq	%rax, %rax	# D.15876
	je	.L499	#,
	.loc 1 1785 0
	movq	-40(%rbp), %rax	# sv, tmp88
	movq	%rax, %rdi	# tmp88,
	call	Perl_gp_free	#
.L499:
	.loc 1 1786 0
	movq	-40(%rbp), %rax	# sv, tmp89
	movq	(%rax), %rbx	# sv_4(D)->sv_any, D.15873
	movq	-24(%rbp), %rax	# gv, tmp90
	movq	(%rax), %rax	# gv_20->sv_any, D.15877
	movq	56(%rax), %rax	# _25->xgv_gp, D.15876
	movq	%rax, %rdi	# D.15876,
	call	Perl_gp_ref	#
	movq	%rax, 56(%rbx)	# D.15876, MEM[(struct XPVGV *)_24].xgv_gp
	.loc 1 1787 0
	movl	$0, %eax	#, D.15871
.L500:
	.loc 1 1788 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	Perl_magic_setglob, .-Perl_magic_setglob
	.globl	Perl_magic_getsubstr
	.type	Perl_magic_getsubstr, @function
Perl_magic_getsubstr:
.LFB49:
	.loc 1 1792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1794 0
	movq	-40(%rbp), %rax	# sv, tmp101
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15878
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_3].xlv_targ, tmp102
	movq	%rax, -16(%rbp)	# tmp102, lsv
	.loc 1 1795 0
	movq	-16(%rbp), %rax	# lsv, tmp103
	movl	12(%rax), %eax	# lsv_4->sv_flags, D.15879
	andl	$262144, %eax	#, D.15879
	testl	%eax, %eax	# D.15879
	je	.L502	#,
	.loc 1 1795 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# lsv, tmp104
	movq	(%rax), %rax	# lsv_4->sv_any, D.15878
	movq	8(%rax), %rax	# MEM[(struct XPV *)_7].xpv_cur, len.506
	movq	%rax, -24(%rbp)	# len.506, len
	movq	-16(%rbp), %rax	# lsv, tmp105
	movq	(%rax), %rax	# lsv_4->sv_any, D.15878
	movq	(%rax), %rax	# MEM[(struct XPV *)_9].xpv_pv, iftmp.505
	jmp	.L503	#
.L502:
	.loc 1 1795 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp106
	movq	-16(%rbp), %rax	# lsv, tmp107
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	Perl_sv_2pv_flags	#
.L503:
	.loc 1 1795 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.505, tmps
	.loc 1 1796 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp108
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15878
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_13].xlv_targoff, D.15880
	movl	%eax, -32(%rbp)	# offs.507, offs
	.loc 1 1797 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp109
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15878
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_16].xlv_targlen, D.15880
	movl	%eax, -28(%rbp)	# rem.508, rem
	.loc 1 1799 0 discriminator 3
	movq	-16(%rbp), %rax	# lsv, tmp110
	movl	12(%rax), %eax	# lsv_4->sv_flags, D.15879
	andl	$536870912, %eax	#, D.15879
	testl	%eax, %eax	# D.15879
	je	.L504	#,
	.loc 1 1800 0
	leaq	-28(%rbp), %rdx	#, tmp111
	leaq	-32(%rbp), %rcx	#, tmp112
	movq	-16(%rbp), %rax	# lsv, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	Perl_sv_pos_u2b	#
.L504:
	.loc 1 1801 0
	movq	-24(%rbp), %rax	# len, len.509
	movl	%eax, %edx	# len.509, D.15881
	movl	-32(%rbp), %eax	# offs, offs.510
	cmpl	%eax, %edx	# offs.510, D.15881
	jge	.L505	#,
	.loc 1 1802 0
	movq	-24(%rbp), %rax	# len, len.511
	movl	%eax, -32(%rbp)	# offs.512, offs
.L505:
	.loc 1 1803 0
	movl	-28(%rbp), %edx	# rem, rem.513
	movl	-32(%rbp), %eax	# offs, offs.514
	addl	%eax, %edx	# offs.514, D.15881
	movq	-24(%rbp), %rax	# len, len.515
	cmpl	%eax, %edx	# D.15881, D.15881
	jle	.L506	#,
	.loc 1 1804 0
	movq	-24(%rbp), %rax	# len, len.516
	movl	%eax, %edx	# len.516, D.15882
	movl	-32(%rbp), %eax	# offs, offs.517
	subl	%eax, %edx	# offs.518, D.15882
	movl	%edx, %eax	# D.15882, D.15882
	movl	%eax, -28(%rbp)	# rem.519, rem
.L506:
	.loc 1 1805 0
	movl	-28(%rbp), %eax	# rem, rem.520
	movslq	%eax, %rdx	# rem.520, D.15880
	movl	-32(%rbp), %eax	# offs, offs.521
	movslq	%eax, %rcx	# offs.521, D.15883
	movq	-8(%rbp), %rax	# tmps, tmp114
	addq	%rax, %rcx	# tmp114, D.15884
	movq	-40(%rbp), %rax	# sv, tmp115
	movq	%rcx, %rsi	# D.15884,
	movq	%rax, %rdi	# tmp115,
	call	Perl_sv_setpvn	#
	.loc 1 1806 0
	movq	-16(%rbp), %rax	# lsv, tmp116
	movl	12(%rax), %eax	# lsv_4->sv_flags, D.15879
	andl	$536870912, %eax	#, D.15879
	testl	%eax, %eax	# D.15879
	je	.L507	#,
	.loc 1 1807 0
	movq	-40(%rbp), %rax	# sv, tmp117
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15879
	orl	$536870912, %eax	#, D.15879
	movl	%eax, %edx	# D.15879, D.15879
	movq	-40(%rbp), %rax	# sv, tmp118
	movl	%edx, 12(%rax)	# D.15879, sv_2(D)->sv_flags
.L507:
	.loc 1 1808 0
	movl	$0, %eax	#, D.15881
	.loc 1 1809 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_magic_getsubstr, .-Perl_magic_getsubstr
	.globl	Perl_magic_setsubstr
	.type	Perl_magic_setsubstr, @function
Perl_magic_setsubstr:
.LFB50:
	.loc 1 1813 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1815 0
	movq	-40(%rbp), %rax	# sv, tmp99
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15885
	andl	$262144, %eax	#, D.15885
	testl	%eax, %eax	# D.15885
	je	.L510	#,
	.loc 1 1815 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp100
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15886
	movq	8(%rax), %rax	# MEM[(struct XPV *)_5].xpv_cur, len.523
	movq	%rax, -24(%rbp)	# len.523, len
	movq	-40(%rbp), %rax	# sv, tmp101
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15886
	movq	(%rax), %rax	# MEM[(struct XPV *)_7].xpv_pv, iftmp.522
	jmp	.L511	#
.L510:
	.loc 1 1815 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp102
	movq	-40(%rbp), %rax	# sv, tmp103
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	Perl_sv_2pv_flags	#
.L511:
	.loc 1 1815 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.522, tmps
	.loc 1 1816 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp104
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15886
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_11].xlv_targ, tmp105
	movq	%rax, -8(%rbp)	# tmp105, lsv
	.loc 1 1817 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp106
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15886
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_13].xlv_targoff, D.15887
	movl	%eax, -32(%rbp)	# lvoff.524, lvoff
	.loc 1 1818 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp107
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15886
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_16].xlv_targlen, D.15887
	movl	%eax, -28(%rbp)	# lvlen.525, lvlen
	.loc 1 1820 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp108
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15885
	andl	$536870912, %eax	#, D.15885
	testl	%eax, %eax	# D.15885
	je	.L512	#,
	.loc 1 1820 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.526
	movzbl	37(%rax), %eax	# PL_curcop.526_21->op_private, D.15888
	movzbl	%al, %eax	# D.15888, D.15889
	andl	$8, %eax	#, D.15889
	testl	%eax, %eax	# D.15889
	jne	.L512	#,
	.loc 1 1821 0 is_stmt 1
	movq	-8(%rbp), %rax	# lsv, tmp109
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 1822 0
	leaq	-28(%rbp), %rdx	#, tmp110
	leaq	-32(%rbp), %rcx	#, tmp111
	movq	-8(%rbp), %rax	# lsv, tmp112
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	Perl_sv_pos_u2b	#
	.loc 1 1823 0
	movq	-24(%rbp), %rdi	# len, len.527
	movl	-28(%rbp), %eax	# lvlen, lvlen.528
	movslq	%eax, %rdx	# lvlen.528, D.15887
	movl	-32(%rbp), %eax	# lvoff, lvoff.529
	movslq	%eax, %rsi	# lvoff.529, D.15887
	movq	-16(%rbp), %rcx	# tmps, tmp113
	movq	-8(%rbp), %rax	# lsv, tmp114
	movq	%rdi, %r8	# len.527,
	movq	%rax, %rdi	# tmp114,
	call	Perl_sv_insert	#
	.loc 1 1824 0
	movq	-8(%rbp), %rax	# lsv, tmp115
	movl	12(%rax), %eax	# lsv_12->sv_flags, D.15885
	orl	$536870912, %eax	#, D.15885
	movl	%eax, %edx	# D.15885, D.15885
	movq	-8(%rbp), %rax	# lsv, tmp116
	movl	%edx, 12(%rax)	# D.15885, lsv_12->sv_flags
	jmp	.L513	#
.L512:
	.loc 1 1826 0
	cmpq	$0, -8(%rbp)	#, lsv
	je	.L514	#,
	.loc 1 1826 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lsv, tmp117
	movl	12(%rax), %eax	# lsv_12->sv_flags, D.15885
	andl	$536870912, %eax	#, D.15885
	testl	%eax, %eax	# D.15885
	je	.L514	#,
	.loc 1 1827 0 is_stmt 1
	leaq	-28(%rbp), %rdx	#, tmp118
	leaq	-32(%rbp), %rcx	#, tmp119
	movq	-8(%rbp), %rax	# lsv, tmp120
	movq	%rcx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	Perl_sv_pos_u2b	#
	.loc 1 1828 0
	leaq	-24(%rbp), %rdx	#, tmp121
	movq	-16(%rbp), %rax	# tmps, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -16(%rbp)	# tmp123, tmps
	.loc 1 1829 0
	movq	-24(%rbp), %rdi	# len, len.530
	movl	-28(%rbp), %eax	# lvlen, lvlen.531
	movslq	%eax, %rdx	# lvlen.531, D.15887
	movl	-32(%rbp), %eax	# lvoff, lvoff.532
	movslq	%eax, %rsi	# lvoff.532, D.15887
	movq	-16(%rbp), %rcx	# tmps, tmp124
	movq	-8(%rbp), %rax	# lsv, tmp125
	movq	%rdi, %r8	# len.530,
	movq	%rax, %rdi	# tmp125,
	call	Perl_sv_insert	#
	.loc 1 1830 0
	movq	-16(%rbp), %rax	# tmps, tmp126
	movq	%rax, %rdi	# tmp126,
	call	Perl_safesysfree	#
	jmp	.L513	#
.L514:
	.loc 1 1833 0
	movq	-24(%rbp), %rdi	# len, len.533
	movl	-28(%rbp), %eax	# lvlen, lvlen.534
	movslq	%eax, %rdx	# lvlen.534, D.15887
	movl	-32(%rbp), %eax	# lvoff, lvoff.535
	movslq	%eax, %rsi	# lvoff.535, D.15887
	movq	-16(%rbp), %rcx	# tmps, tmp127
	movq	-8(%rbp), %rax	# lsv, tmp128
	movq	%rdi, %r8	# len.533,
	movq	%rax, %rdi	# tmp128,
	call	Perl_sv_insert	#
.L513:
	.loc 1 1835 0
	movl	$0, %eax	#, D.15889
	.loc 1 1836 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_magic_setsubstr, .-Perl_magic_setsubstr
	.globl	Perl_magic_gettaint
	.type	Perl_magic_gettaint, @function
Perl_magic_gettaint:
.LFB51:
	.loc 1 1840 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1841 0
	movq	-16(%rbp), %rax	# mg, tmp66
	movl	40(%rax), %eax	# mg_1(D)->mg_len, D.15890
	andl	$1, %eax	#, D.15890
	testl	%eax, %eax	# D.15890
	jne	.L517	#,
	.loc 1 1841 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# mg, tmp67
	movl	40(%rax), %eax	# mg_1(D)->mg_len, D.15890
	andl	$2, %eax	#, D.15890
	testl	%eax, %eax	# D.15890
	je	.L518	#,
	.loc 1 1841 0 discriminator 1
	movq	-16(%rbp), %rax	# mg, tmp68
	movq	24(%rax), %rax	# mg_1(D)->mg_obj, D.15891
	cmpq	-8(%rbp), %rax	# sv, D.15891
	jne	.L518	#,
.L517:
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L518:
	.loc 1 1843 0 is_stmt 1
	movl	$0, %eax	#, D.15890
	.loc 1 1844 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_magic_gettaint, .-Perl_magic_gettaint
	.globl	Perl_magic_settaint
	.type	Perl_magic_settaint, @function
Perl_magic_settaint:
.LFB52:
	.loc 1 1848 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1849 0
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.536
	testl	%eax, %eax	# PL_localizing.536
	je	.L521	#,
	.loc 1 1850 0
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.537
	cmpl	$1, %eax	#, PL_localizing.537
	jne	.L522	#,
	.loc 1 1851 0
	movq	-16(%rbp), %rax	# mg, tmp72
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15892
	leal	(%rax,%rax), %edx	#, D.15892
	movq	-16(%rbp), %rax	# mg, tmp73
	movl	%edx, 40(%rax)	# D.15892, mg_3(D)->mg_len
	jmp	.L524	#
.L522:
	.loc 1 1853 0
	movq	-16(%rbp), %rax	# mg, tmp74
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15892
	sarl	%eax	# D.15892
	movl	%eax, %edx	# D.15892, D.15892
	movq	-16(%rbp), %rax	# mg, tmp75
	movl	%edx, 40(%rax)	# D.15892, mg_3(D)->mg_len
	jmp	.L524	#
.L521:
	.loc 1 1855 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.538
	testb	%al, %al	# PL_tainted.538
	je	.L525	#,
	.loc 1 1856 0
	movq	-16(%rbp), %rax	# mg, tmp76
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15892
	orl	$1, %eax	#, D.15892
	movl	%eax, %edx	# D.15892, D.15892
	movq	-16(%rbp), %rax	# mg, tmp77
	movl	%edx, 40(%rax)	# D.15892, mg_3(D)->mg_len
	jmp	.L524	#
.L525:
	.loc 1 1858 0
	movq	-16(%rbp), %rax	# mg, tmp78
	movl	40(%rax), %eax	# mg_3(D)->mg_len, D.15892
	andl	$-2, %eax	#, D.15892
	movl	%eax, %edx	# D.15892, D.15892
	movq	-16(%rbp), %rax	# mg, tmp79
	movl	%edx, 40(%rax)	# D.15892, mg_3(D)->mg_len
.L524:
	.loc 1 1859 0
	movl	$0, %eax	#, D.15892
	.loc 1 1860 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_magic_settaint, .-Perl_magic_settaint
	.globl	Perl_magic_getvec
	.type	Perl_magic_getvec, @function
Perl_magic_getvec:
.LFB53:
	.loc 1 1864 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 1865 0
	movq	-24(%rbp), %rax	# sv, tmp76
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15894
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_3].xlv_targ, tmp77
	movq	%rax, -8(%rbp)	# tmp77, lsv
	.loc 1 1867 0
	cmpq	$0, -8(%rbp)	#, lsv
	jne	.L528	#,
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# sv, tmp78
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15895
	andl	$1223753727, %eax	#, D.15895
	movl	%eax, %edx	# D.15895, D.15895
	movq	-24(%rbp), %rax	# sv, tmp79
	movl	%edx, 12(%rax)	# D.15895, sv_2(D)->sv_flags
	movq	-24(%rbp), %rax	# sv, tmp80
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15895
	andl	$2097152, %eax	#, D.15895
	testl	%eax, %eax	# D.15895
	je	.L530	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15893
	je	.L530	#,
	.loc 1 1868 0
	nop
.L530:
	.loc 1 1869 0 is_stmt 1
	movl	$0, %eax	#, D.15893
	jmp	.L531	#
.L528:
	.loc 1 1872 0
	movq	-24(%rbp), %rax	# sv, tmp82
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15894
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_13].xlv_targlen, D.15896
	movl	%eax, %edx	# D.15896, D.15893
	movq	-24(%rbp), %rax	# sv, tmp83
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15894
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_16].xlv_targoff, D.15896
	movl	%eax, %ecx	# D.15896, D.15893
	movq	-8(%rbp), %rax	# lsv, tmp84
	movl	%ecx, %esi	# D.15893,
	movq	%rax, %rdi	# tmp84,
	call	Perl_do_vecget	#
	movq	%rax, %rdx	#, D.15896
	movq	-24(%rbp), %rax	# sv, tmp85
	movq	%rdx, %rsi	# D.15896,
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_setuv	#
	.loc 1 1873 0
	movl	$0, %eax	#, D.15893
.L531:
	.loc 1 1874 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_magic_getvec, .-Perl_magic_getvec
	.globl	Perl_magic_setvec
	.type	Perl_magic_setvec, @function
Perl_magic_setvec:
.LFB54:
	.loc 1 1878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1879 0
	movq	-8(%rbp), %rax	# sv, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_do_vecset	#
	.loc 1 1880 0
	movl	$0, %eax	#, D.15897
	.loc 1 1881 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_magic_setvec, .-Perl_magic_setvec
	.globl	Perl_magic_getdefelem
	.type	Perl_magic_getdefelem, @function
Perl_magic_getdefelem:
.LFB55:
	.loc 1 1885 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# sv, sv
	movq	%rsi, -80(%rbp)	# mg, mg
	.loc 1 1886 0
	movq	$0, -56(%rbp)	#, targ
	.loc 1 1887 0
	movq	-72(%rbp), %rax	# sv, tmp102
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_9].xlv_targlen, D.15899
	testq	%rax, %rax	# D.15899
	je	.L535	#,
	.loc 1 1888 0
	movq	-80(%rbp), %rax	# mg, tmp103
	movq	24(%rax), %rax	# mg_11(D)->mg_obj, D.15900
	testq	%rax, %rax	# D.15900
	je	.L536	#,
.LBB62:
	.loc 1 1889 0
	movq	-72(%rbp), %rax	# sv, tmp104
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_13].xlv_targ, tmp105
	movq	%rax, -48(%rbp)	# tmp105, ahv
	.loc 1 1890 0
	movq	-48(%rbp), %rax	# ahv, tmp106
	movl	12(%rax), %eax	# ahv_14->sv_flags, D.15901
	movzbl	%al, %eax	# D.15901, D.15901
	cmpl	$11, %eax	#, D.15901
	jne	.L537	#,
.LBB63:
	.loc 1 1891 0
	movq	-80(%rbp), %rax	# mg, tmp107
	movq	24(%rax), %rsi	# mg_11(D)->mg_obj, D.15900
	movq	-48(%rbp), %rax	# ahv, tmp108
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp108,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -40(%rbp)	# tmp109, he
	.loc 1 1892 0
	cmpq	$0, -40(%rbp)	#, he
	je	.L538	#,
	.loc 1 1893 0
	movq	-40(%rbp), %rax	# he, tmp110
	movq	16(%rax), %rax	# he_18->hent_val, tmp111
	movq	%rax, -56(%rbp)	# tmp111, targ
.LBE63:
	jmp	.L539	#
.L538:
	jmp	.L539	#
.L537:
.LBB64:
	.loc 1 1896 0
	movq	-80(%rbp), %rax	# mg, tmp112
	movq	24(%rax), %rsi	# mg_11(D)->mg_obj, D.15900
	movq	-48(%rbp), %rax	# ahv, tmp113
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp113,
	call	Perl_avhv_fetch_ent	#
	movq	%rax, -32(%rbp)	# tmp114, svp
	.loc 1 1897 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L539	#,
	.loc 1 1898 0
	movq	-32(%rbp), %rax	# svp, tmp115
	movq	(%rax), %rax	# *svp_21, tmp116
	movq	%rax, -56(%rbp)	# tmp116, targ
.LBE64:
.LBE62:
	jmp	.L540	#
.L539:
	jmp	.L540	#
.L536:
.LBB65:
	.loc 1 1902 0
	movq	-72(%rbp), %rax	# sv, tmp117
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_23].xlv_targ, tmp118
	movq	%rax, -24(%rbp)	# tmp118, av
	.loc 1 1903 0
	movq	-72(%rbp), %rax	# sv, tmp119
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_25].xlv_targoff, D.15899
	movslq	%eax, %rbx	# D.15902, D.15903
	movq	-24(%rbp), %rax	# av, tmp120
	movl	12(%rax), %eax	# MEM[(struct SV *)av_24].sv_flags, D.15901
	andl	$32768, %eax	#, D.15901
	testl	%eax, %eax	# D.15901
	je	.L541	#,
	.loc 1 1903 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# av, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_mg_size	#
	cltq
	jmp	.L542	#
.L541:
	.loc 1 1903 0 discriminator 2
	movq	-24(%rbp), %rax	# av, tmp122
	movq	(%rax), %rax	# av_24->sv_any, D.15904
	movq	8(%rax), %rax	# _33->xav_fill, iftmp.540
.L542:
	.loc 1 1903 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.540, D.15903
	jg	.L540	#,
	.loc 1 1904 0 is_stmt 1
	movq	-24(%rbp), %rax	# av, tmp123
	movq	(%rax), %rax	# av_24->sv_any, D.15904
	movq	(%rax), %rdx	# _35->xav_array, D.15905
	movq	-72(%rbp), %rax	# sv, tmp124
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_37].xlv_targoff, D.15899
	salq	$3, %rax	#, D.15899
	addq	%rdx, %rax	# D.15905, D.15906
	movq	(%rax), %rax	# *_40, tmp125
	movq	%rax, -56(%rbp)	# tmp125, targ
.L540:
.LBE65:
	.loc 1 1906 0
	cmpq	$0, -56(%rbp)	#, targ
	je	.L546	#,
	.loc 1 1906 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -56(%rbp)	#, targ
	je	.L546	#,
	.loc 1 1908 0 is_stmt 1
	movq	-72(%rbp), %rax	# sv, tmp126
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_42].xlv_targ, D.15900
	movq	%rax, %rdi	# D.15900,
	call	Perl_sv_free	#
	.loc 1 1909 0
	movq	-56(%rbp), %rax	# targ, tmp127
	movq	%rax, PL_Sv(%rip)	# tmp127, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.542
	testq	%rax, %rax	# PL_Sv.542
	je	.L545	#,
	.loc 1 1909 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.543
	movl	8(%rax), %edx	# PL_Sv.543_45->sv_refcnt, D.15901
	addl	$1, %edx	#, D.15901
	movl	%edx, 8(%rax)	# D.15901, PL_Sv.543_45->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.543_45->sv_refcnt, D.15901
	testl	%eax, %eax	# D.15901
	je	.L545	#,
	.loc 1 1909 0
	nop
.L545:
	.loc 1 1909 0 discriminator 4
	movq	-72(%rbp), %rax	# sv, tmp128
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.544
	movq	%rdx, 72(%rax)	# PL_Sv.544, MEM[(struct XPVLV *)_51].xlv_targ
	.loc 1 1910 0 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rax	# sv, tmp129
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	$0, 64(%rax)	#, MEM[(struct XPVLV *)_53].xlv_targlen
	.loc 1 1911 0 discriminator 4
	movq	-80(%rbp), %rax	# mg, tmp130
	movq	24(%rax), %rax	# mg_11(D)->mg_obj, D.15900
	movq	%rax, %rdi	# D.15900,
	call	Perl_sv_free	#
	.loc 1 1912 0 discriminator 4
	movq	-80(%rbp), %rax	# mg, tmp131
	movq	$0, 24(%rax)	#, mg_11(D)->mg_obj
	.loc 1 1913 0 discriminator 4
	movq	-80(%rbp), %rax	# mg, tmp132
	movzbl	19(%rax), %eax	# mg_11(D)->mg_flags, D.15907
	andl	$-3, %eax	#, D.15907
	movl	%eax, %edx	# D.15907, D.15907
	movq	-80(%rbp), %rax	# mg, tmp133
	movb	%dl, 19(%rax)	# D.15907, mg_11(D)->mg_flags
	jmp	.L546	#
.L535:
	.loc 1 1917 0
	movq	-72(%rbp), %rax	# sv, tmp134
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15898
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_57].xlv_targ, tmp135
	movq	%rax, -56(%rbp)	# tmp135, targ
.L546:
	.loc 1 1918 0
	cmpq	$0, -56(%rbp)	#, targ
	je	.L547	#,
	.loc 1 1918 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, iftmp.545
	jmp	.L548	#
.L547:
	.loc 1 1918 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.545
.L548:
	.loc 1 1918 0 discriminator 3
	movq	-72(%rbp), %rcx	# sv, tmp136
	movl	$2, %edx	#,
	movq	%rax, %rsi	# iftmp.545,
	movq	%rcx, %rdi	# tmp136,
	call	Perl_sv_setsv_flags	#
	.loc 1 1919 0 is_stmt 1 discriminator 3
	movl	$0, %eax	#, D.15902
	.loc 1 1920 0 discriminator 3
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	Perl_magic_getdefelem, .-Perl_magic_getdefelem
	.globl	Perl_magic_setdefelem
	.type	Perl_magic_setdefelem, @function
Perl_magic_setdefelem:
.LFB56:
	.loc 1 1924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 1925 0
	movq	-8(%rbp), %rax	# sv, tmp73
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.15908
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_2].xlv_targlen, D.15909
	testq	%rax, %rax	# D.15909
	je	.L551	#,
	.loc 1 1926 0
	movq	-8(%rbp), %rax	# sv, tmp74
	movq	%rax, %rdi	# tmp74,
	call	Perl_vivify_defelem	#
.L551:
	.loc 1 1927 0
	movq	-8(%rbp), %rax	# sv, tmp75
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.15908
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_4].xlv_targ, D.15910
	testq	%rax, %rax	# D.15910
	je	.L552	#,
	.loc 1 1928 0
	movq	-8(%rbp), %rax	# sv, tmp76
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.15908
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_6].xlv_targ, D.15910
	movq	-8(%rbp), %rcx	# sv, tmp77
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# D.15910,
	call	Perl_sv_setsv_flags	#
	.loc 1 1929 0
	movq	-8(%rbp), %rax	# sv, tmp78
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.15908
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_8].xlv_targ, D.15910
	movl	12(%rax), %eax	# _9->sv_flags, D.15911
	andl	$16384, %eax	#, D.15911
	testl	%eax, %eax	# D.15911
	je	.L552	#,
	.loc 1 1929 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp79
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.15908
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_12].xlv_targ, D.15910
	movq	%rax, %rdi	# D.15910,
	call	Perl_mg_set	#
.L552:
	.loc 1 1931 0 is_stmt 1
	movl	$0, %eax	#, D.15912
	.loc 1 1932 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	Perl_magic_setdefelem, .-Perl_magic_setdefelem
	.globl	Perl_vivify_defelem
	.type	Perl_vivify_defelem, @function
Perl_vivify_defelem:
.LFB57:
	.loc 1 1936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# sv, sv
	.loc 1 1938 0
	movq	$0, -72(%rbp)	#, value
	.loc 1 1940 0
	movq	-88(%rbp), %rax	# sv, tmp111
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_9].xlv_targlen, D.15914
	testq	%rax, %rax	# D.15914
	je	.L555	#,
	.loc 1 1940 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp112
	movl	$121, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	Perl_mg_find	#
	movq	%rax, -64(%rbp)	# tmp113, mg
	cmpq	$0, -64(%rbp)	#, mg
	jne	.L556	#,
.L555:
	.loc 1 1941 0 is_stmt 1
	jmp	.L554	#
.L556:
	.loc 1 1942 0
	movq	-64(%rbp), %rax	# mg, tmp114
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	testq	%rax, %rax	# D.15915
	je	.L558	#,
.LBB66:
	.loc 1 1943 0
	movq	-88(%rbp), %rax	# sv, tmp115
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_13].xlv_targ, tmp116
	movq	%rax, -56(%rbp)	# tmp116, ahv
	.loc 1 1945 0
	movq	-56(%rbp), %rax	# ahv, tmp117
	movl	12(%rax), %eax	# ahv_14->sv_flags, D.15916
	movzbl	%al, %eax	# D.15916, D.15916
	cmpl	$11, %eax	#, D.15916
	jne	.L559	#,
.LBB67:
	.loc 1 1946 0
	movq	-64(%rbp), %rax	# mg, tmp118
	movq	24(%rax), %rsi	# mg_11->mg_obj, D.15915
	movq	-56(%rbp), %rax	# ahv, tmp119
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp119,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -48(%rbp)	# tmp120, he
	.loc 1 1947 0
	cmpq	$0, -48(%rbp)	#, he
	je	.L560	#,
	.loc 1 1948 0
	movq	-48(%rbp), %rax	# he, tmp121
	movq	16(%rax), %rax	# he_18->hent_val, tmp122
	movq	%rax, -72(%rbp)	# tmp122, value
.LBE67:
	jmp	.L561	#
.L560:
	jmp	.L561	#
.L559:
.LBB68:
	.loc 1 1951 0
	movq	-64(%rbp), %rax	# mg, tmp123
	movq	24(%rax), %rsi	# mg_11->mg_obj, D.15915
	movq	-56(%rbp), %rax	# ahv, tmp124
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp124,
	call	Perl_avhv_fetch_ent	#
	movq	%rax, -40(%rbp)	# tmp125, svp
	.loc 1 1952 0
	cmpq	$0, -40(%rbp)	#, svp
	je	.L561	#,
	.loc 1 1953 0
	movq	-40(%rbp), %rax	# svp, tmp126
	movq	(%rax), %rax	# *svp_21, tmp127
	movq	%rax, -72(%rbp)	# tmp127, value
.L561:
.LBE68:
	.loc 1 1955 0
	cmpq	$0, -72(%rbp)	#, value
	je	.L562	#,
	.loc 1 1955 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -72(%rbp)	#, value
	jne	.L563	#,
.L562:
	.loc 1 1956 0 is_stmt 1
	movq	-64(%rbp), %rax	# mg, tmp128
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	movl	12(%rax), %eax	# _23->sv_flags, D.15916
	andl	$262144, %eax	#, D.15916
	testl	%eax, %eax	# D.15916
	je	.L564	#,
	.loc 1 1956 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp129
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	movq	(%rax), %rax	# _26->sv_any, D.15913
	movq	8(%rax), %rax	# MEM[(struct XPV *)_27].xpv_cur, n_a.547
	movq	%rax, -80(%rbp)	# n_a.547, n_a
	movq	-64(%rbp), %rax	# mg, tmp130
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	movq	(%rax), %rax	# _29->sv_any, D.15913
	movq	(%rax), %rax	# MEM[(struct XPV *)_30].xpv_pv, iftmp.546
	jmp	.L565	#
.L564:
	.loc 1 1956 0 discriminator 2
	movq	-64(%rbp), %rax	# mg, tmp131
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	leaq	-80(%rbp), %rcx	#, tmp132
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# D.15915,
	call	Perl_sv_2pv_flags	#
.L565:
	.loc 1 1956 0 discriminator 3
	movq	%rax, %rsi	# iftmp.546,
	movl	$PL_no_helem, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE66:
	jmp	.L566	#
.L563:
	jmp	.L566	#
.L558:
.LBB69:
	.loc 1 1959 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp133
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_34].xlv_targ, tmp134
	movq	%rax, -32(%rbp)	# tmp134, av
	.loc 1 1960 0
	movq	-88(%rbp), %rax	# sv, tmp135
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	64(%rax), %rax	# MEM[(struct XPVLV *)_36].xlv_targlen, D.15914
	testl	%eax, %eax	# D.15917
	jns	.L567	#,
	.loc 1 1960 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp136
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_39].xlv_targoff, D.15914
	movslq	%eax, %rbx	# D.15917, D.15918
	movq	-32(%rbp), %rax	# av, tmp137
	movl	12(%rax), %eax	# MEM[(struct SV *)av_35].sv_flags, D.15916
	andl	$32768, %eax	#, D.15916
	testl	%eax, %eax	# D.15916
	je	.L568	#,
	movq	-32(%rbp), %rax	# av, tmp138
	movq	%rax, %rdi	# tmp138,
	call	Perl_mg_size	#
	cltq
	jmp	.L569	#
.L568:
	.loc 1 1960 0 discriminator 2
	movq	-32(%rbp), %rax	# av, tmp139
	movq	(%rax), %rax	# av_35->sv_any, D.15919
	movq	8(%rax), %rax	# _47->xav_fill, iftmp.548
.L569:
	.loc 1 1960 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.548, D.15918
	jle	.L567	#,
	.loc 1 1961 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp140
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	$0, 72(%rax)	#, MEM[(struct XPVLV *)_49].xlv_targ
	jmp	.L566	#
.L567:
.LBB70:
	.loc 1 1963 0
	movq	-88(%rbp), %rax	# sv, tmp141
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_50].xlv_targoff, D.15914
	movl	%eax, %ecx	# D.15914, D.15917
	movq	-32(%rbp), %rax	# av, tmp142
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.15917,
	movq	%rax, %rdi	# tmp142,
	call	Perl_av_fetch	#
	movq	%rax, -24(%rbp)	# tmp143, svp
	.loc 1 1964 0
	cmpq	$0, -24(%rbp)	#, svp
	je	.L570	#,
	.loc 1 1964 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# svp, tmp144
	movq	(%rax), %rax	# *svp_53, tmp145
	movq	%rax, -72(%rbp)	# tmp145, value
	cmpq	$PL_sv_undef, -72(%rbp)	#, value
	jne	.L566	#,
.L570:
	.loc 1 1965 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp146
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	56(%rax), %rax	# MEM[(struct XPVLV *)_55].xlv_targoff, D.15914
	movl	%eax, %esi	# D.15917,
	movl	$PL_no_aelem, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L566:
.LBE70:
.LBE69:
	.loc 1 1968 0
	movq	-72(%rbp), %rax	# value, tmp147
	movq	%rax, PL_Sv(%rip)	# tmp147, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.550
	testq	%rax, %rax	# PL_Sv.550
	je	.L572	#,
	.loc 1 1968 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.551
	movl	8(%rax), %edx	# PL_Sv.551_59->sv_refcnt, D.15916
	addl	$1, %edx	#, D.15916
	movl	%edx, 8(%rax)	# D.15916, PL_Sv.551_59->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.551_59->sv_refcnt, D.15916
	testl	%eax, %eax	# D.15916
	je	.L572	#,
	.loc 1 1968 0
	nop
.L572:
	.loc 1 1969 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp148
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_65].xlv_targ, D.15915
	movq	%rax, %rdi	# D.15915,
	call	Perl_sv_free	#
	.loc 1 1970 0
	movq	-88(%rbp), %rax	# sv, tmp149
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	-72(%rbp), %rdx	# value, tmp150
	movq	%rdx, 72(%rax)	# tmp150, MEM[(struct XPVLV *)_67].xlv_targ
	.loc 1 1971 0
	movq	-88(%rbp), %rax	# sv, tmp151
	movq	(%rax), %rax	# sv_8(D)->sv_any, D.15913
	movq	$0, 64(%rax)	#, MEM[(struct XPVLV *)_68].xlv_targlen
	.loc 1 1972 0
	movq	-64(%rbp), %rax	# mg, tmp152
	movq	24(%rax), %rax	# mg_11->mg_obj, D.15915
	movq	%rax, %rdi	# D.15915,
	call	Perl_sv_free	#
	.loc 1 1973 0
	movq	-64(%rbp), %rax	# mg, tmp153
	movq	$0, 24(%rax)	#, mg_11->mg_obj
	.loc 1 1974 0
	movq	-64(%rbp), %rax	# mg, tmp154
	movzbl	19(%rax), %eax	# mg_11->mg_flags, D.15920
	andl	$-3, %eax	#, D.15920
	movl	%eax, %edx	# D.15920, D.15920
	movq	-64(%rbp), %rax	# mg, tmp155
	movb	%dl, 19(%rax)	# D.15920, mg_11->mg_flags
.L554:
	.loc 1 1975 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	Perl_vivify_defelem, .-Perl_vivify_defelem
	.section	.rodata
.LC34:
	.string	"panic: magic_killbackrefs"
	.text
	.globl	Perl_magic_killbackrefs
	.type	Perl_magic_killbackrefs, @function
Perl_magic_killbackrefs:
.LFB58:
	.loc 1 1979 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# mg, mg
	.loc 1 1980 0
	movq	-48(%rbp), %rax	# mg, tmp115
	movq	24(%rax), %rax	# mg_2(D)->mg_obj, tmp116
	movq	%rax, -16(%rbp)	# tmp116, av
	.loc 1 1981 0
	movq	-16(%rbp), %rax	# av, tmp117
	movq	(%rax), %rax	# av_3->sv_any, D.15921
	movq	(%rax), %rax	# _4->xav_array, tmp118
	movq	%rax, -8(%rbp)	# tmp118, svp
	.loc 1 1982 0
	movq	-16(%rbp), %rax	# av, tmp119
	movq	(%rax), %rax	# av_3->sv_any, D.15921
	movq	8(%rax), %rax	# _6->xav_fill, D.15922
	movl	%eax, -20(%rbp)	# D.15922, i
	.loc 1 1983 0
	jmp	.L574	#
.L579:
	.loc 1 1984 0
	movl	-20(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp121
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_11, D.15925
	testq	%rax, %rax	# D.15925
	je	.L575	#,
	.loc 1 1985 0
	movl	-20(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp123
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_15, D.15925
	movl	12(%rax), %eax	# _16->sv_flags, D.15926
	andl	$-2146959360, %eax	#, D.15926
	cmpl	$-2146959360, %eax	#, D.15926
	je	.L576	#,
	.loc 1 1986 0
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L576:
	.loc 1 1988 0
	movl	-20(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp125
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_21, D.15925
	movq	(%rax), %rax	# _22->sv_any, D.15927
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	.loc 1 1989 0
	movl	-20(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp127
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_26, D.15925
	movl	-20(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, D.15923
	leaq	0(,%rdx,8), %rcx	#, D.15923
	movq	-8(%rbp), %rdx	# svp, tmp129
	addq	%rcx, %rdx	# D.15923, D.15924
	movq	(%rdx), %rdx	# *_30, D.15925
	movl	12(%rdx), %edx	# _31->sv_flags, D.15926
	andl	$1223753727, %edx	#, D.15926
	movl	%edx, 12(%rax)	# D.15926, _27->sv_flags
	movl	-20(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp131
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_36, D.15925
	movl	12(%rax), %eax	# _37->sv_flags, D.15926
	andl	$2097152, %eax	#, D.15926
	testl	%eax, %eax	# D.15926
	je	.L578	#,
	.loc 1 1989 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp133
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_42, D.15925
	movq	%rax, %rdi	# D.15925,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15928
	je	.L578	#,
	.loc 1 1989 0
	nop
.L578:
	.loc 1 1990 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp135
	addq	%rdx, %rax	# D.15923, D.15924
	movq	(%rax), %rax	# *_49, D.15925
	movl	-20(%rbp), %edx	# i, tmp136
	movslq	%edx, %rdx	# tmp136, D.15923
	leaq	0(,%rdx,8), %rcx	#, D.15923
	movq	-8(%rbp), %rdx	# svp, tmp137
	addq	%rcx, %rdx	# D.15923, D.15924
	movq	(%rdx), %rdx	# *_53, D.15925
	movl	12(%rdx), %edx	# _54->sv_flags, D.15926
	andl	$2146959359, %edx	#, D.15926
	movl	%edx, 12(%rax)	# D.15926, _50->sv_flags
	.loc 1 1991 0
	movl	-20(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15923
	movq	-8(%rbp), %rax	# svp, tmp139
	addq	%rdx, %rax	# D.15923, D.15924
	movq	$0, (%rax)	#, *_59
.L575:
	.loc 1 1993 0
	subl	$1, -20(%rbp)	#, i
.L574:
	.loc 1 1983 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L579	#,
	.loc 1 1995 0
	movq	-16(%rbp), %rax	# av, tmp140
	movq	%rax, %rdi	# tmp140,
	call	Perl_sv_free	#
	.loc 1 1996 0
	movl	$0, %eax	#, D.15928
	.loc 1 1997 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	Perl_magic_killbackrefs, .-Perl_magic_killbackrefs
	.globl	Perl_magic_setmglob
	.type	Perl_magic_setmglob, @function
Perl_magic_setmglob:
.LFB59:
	.loc 1 2001 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 2002 0
	movq	-16(%rbp), %rax	# mg, tmp63
	movl	$-1, 40(%rax)	#, mg_1(D)->mg_len
	.loc 1 2003 0
	movq	-8(%rbp), %rax	# sv, tmp64
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15930
	andl	$-134217729, %eax	#, D.15930
	movl	%eax, %edx	# D.15930, D.15930
	movq	-8(%rbp), %rax	# sv, tmp65
	movl	%edx, 12(%rax)	# D.15930, sv_2(D)->sv_flags
	.loc 1 2004 0
	movl	$0, %eax	#, D.15931
	.loc 1 2005 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	Perl_magic_setmglob, .-Perl_magic_setmglob
	.globl	Perl_magic_setbm
	.type	Perl_magic_setbm, @function
Perl_magic_setbm:
.LFB60:
	.loc 1 2009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 2010 0
	movq	-8(%rbp), %rax	# sv, tmp63
	movl	$66, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_sv_unmagic	#
	.loc 1 2011 0
	movq	-8(%rbp), %rax	# sv, tmp64
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.15932
	andl	$2147483647, %eax	#, D.15932
	movl	%eax, %edx	# D.15932, D.15932
	movq	-8(%rbp), %rax	# sv, tmp65
	movl	%edx, 12(%rax)	# D.15932, sv_1(D)->sv_flags
	.loc 1 2012 0
	movl	$0, %eax	#, D.15933
	.loc 1 2013 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	Perl_magic_setbm, .-Perl_magic_setbm
	.globl	Perl_magic_setfm
	.type	Perl_magic_setfm, @function
Perl_magic_setfm:
.LFB61:
	.loc 1 2017 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 2018 0
	movq	-8(%rbp), %rax	# sv, tmp63
	movl	$102, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_sv_unmagic	#
	.loc 1 2019 0
	movq	-8(%rbp), %rax	# sv, tmp64
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.15934
	andl	$2147483647, %eax	#, D.15934
	movl	%eax, %edx	# D.15934, D.15934
	movq	-8(%rbp), %rax	# sv, tmp65
	movl	%edx, 12(%rax)	# D.15934, sv_1(D)->sv_flags
	.loc 1 2020 0
	movl	$0, %eax	#, D.15935
	.loc 1 2021 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	Perl_magic_setfm, .-Perl_magic_setfm
	.globl	Perl_magic_setuvar
	.type	Perl_magic_setuvar, @function
Perl_magic_setuvar:
.LFB62:
	.loc 1 2025 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 2026 0
	movq	-32(%rbp), %rax	# mg, tmp64
	movq	32(%rax), %rax	# mg_1(D)->mg_ptr, tmp65
	movq	%rax, -8(%rbp)	# tmp65, uf
	.loc 1 2028 0
	cmpq	$0, -8(%rbp)	#, uf
	je	.L588	#,
	.loc 1 2028 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# uf, tmp66
	movq	8(%rax), %rax	# uf_2->uf_set, D.15936
	testq	%rax, %rax	# D.15936
	je	.L588	#,
	.loc 1 2029 0 is_stmt 1
	movq	-8(%rbp), %rax	# uf, tmp67
	movq	8(%rax), %rax	# uf_2->uf_set, D.15936
	movq	-8(%rbp), %rdx	# uf, tmp68
	movq	16(%rdx), %rdx	# uf_2->uf_index, D.15937
	movq	-24(%rbp), %rcx	# sv, tmp69
	movq	%rcx, %rsi	# tmp69,
	movq	%rdx, %rdi	# D.15937,
	call	*%rax	# D.15936
.L588:
	.loc 1 2030 0
	movl	$0, %eax	#, D.15938
	.loc 1 2031 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	Perl_magic_setuvar, .-Perl_magic_setuvar
	.globl	Perl_magic_setregexp
	.type	Perl_magic_setregexp, @function
Perl_magic_setregexp:
.LFB63:
	.loc 1 2035 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 2036 0
	movq	-8(%rbp), %rax	# sv, tmp61
	movl	$114, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_sv_unmagic	#
	.loc 1 2037 0
	movl	$0, %eax	#, D.15939
	.loc 1 2038 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	Perl_magic_setregexp, .-Perl_magic_setregexp
	.globl	Perl_magic_freeregexp
	.type	Perl_magic_freeregexp, @function
Perl_magic_freeregexp:
.LFB64:
	.loc 1 2042 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movq	%rsi, -32(%rbp)	# mg, mg
	.loc 1 2043 0
	movq	-32(%rbp), %rax	# mg, tmp62
	movq	24(%rax), %rax	# mg_1(D)->mg_obj, tmp63
	movq	%rax, -8(%rbp)	# tmp63, re
	.loc 1 2044 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.553
	movq	-8(%rbp), %rdx	# re, tmp64
	movq	%rdx, %rdi	# tmp64,
	call	*%rax	# PL_regfree.553
	.loc 1 2045 0
	movl	$0, %eax	#, D.15940
	.loc 1 2046 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	Perl_magic_freeregexp, .-Perl_magic_freeregexp
	.globl	Perl_magic_setutf8
	.type	Perl_magic_setutf8, @function
Perl_magic_setutf8:
.LFB65:
	.loc 1 2068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 1 2069 0
	movq	-16(%rbp), %rax	# mg, tmp62
	movq	32(%rax), %rax	# mg_1(D)->mg_ptr, D.15941
	movq	%rax, %rdi	# D.15941,
	call	Perl_safesysfree	#
	.loc 1 2070 0
	movq	-16(%rbp), %rax	# mg, tmp63
	movq	$0, 32(%rax)	#, mg_1(D)->mg_ptr
	.loc 1 2071 0
	movq	-16(%rbp), %rax	# mg, tmp64
	movl	$-1, 40(%rax)	#, mg_1(D)->mg_len
	.loc 1 2072 0
	movl	$0, %eax	#, D.15942
	.loc 1 2073 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	Perl_magic_setutf8, .-Perl_magic_setutf8
	.section	.rodata
.LC35:
	.string	"assigning to $^O"
.LC36:
	.string	"setruid() not implemented"
.LC37:
	.string	"seteuid() not implemented"
.LC38:
	.string	"setrgid() not implemented"
.LC39:
	.string	"setegid() not implemented"
	.text
	.globl	Perl_magic_set
	.type	Perl_magic_set, @function
Perl_magic_set:
.LFB66:
	.loc 1 2077 0
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
	movq	%rdi, -88(%rbp)	# sv, sv
	movq	%rsi, -96(%rbp)	# mg, mg
	.loc 1 2081 0
	movq	-96(%rbp), %rax	# mg, tmp517
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	movzbl	(%rax), %eax	# *_35, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	cmpl	$126, %eax	#, D.15945
	ja	.L597	#,
	movl	%eax, %eax	# D.15945, tmp518
	movq	.L599(,%rax,8), %rax	#, tmp519
	jmp	*%rax	# tmp519
	.section	.rodata
	.align 8
	.align 4
.L599:
	.quad	.L597
	.quad	.L598
	.quad	.L597
	.quad	.L600
	.quad	.L601
	.quad	.L602
	.quad	.L603
	.quad	.L597
	.quad	.L604
	.quad	.L605
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L606
	.quad	.L607
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L608
	.quad	.L597
	.quad	.L597
	.quad	.L609
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L610
	.quad	.L597
	.quad	.L611
	.quad	.L597
	.quad	.L612
	.quad	.L597
	.quad	.L597
	.quad	.L613
	.quad	.L614
	.quad	.L615
	.quad	.L597
	.quad	.L616
	.quad	.L617
	.quad	.L618
	.quad	.L619
	.quad	.L620
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L621
	.quad	.L597
	.quad	.L622
	.quad	.L623
	.quad	.L624
	.quad	.L625
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L626
	.quad	.L627
	.quad	.L597
	.quad	.L628
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L629
	.quad	.L597
	.quad	.L630
	.text
.L598:
	.loc 1 2083 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.554
	movq	-88(%rbp), %rcx	# sv, tmp520
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp520,
	movq	%rax, %rdi	# PL_bodytarget.554,
	call	Perl_sv_setsv_flags	#
	.loc 1 2084 0
	jmp	.L597	#
.L600:
	.loc 1 2086 0
	movq	-88(%rbp), %rax	# sv, tmp521
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L631	#,
	.loc 1 2086 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp522
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_42].xiv_iv, D.15948
	jmp	.L632	#
.L631:
	.loc 1 2086 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp523
	movq	%rax, %rdi	# tmp523,
	call	Perl_sv_2iv	#
.L632:
	.loc 1 2086 0 discriminator 3
	movb	%al, PL_minus_c(%rip)	# iftmp.555, PL_minus_c
	.loc 1 2087 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L601:
	.loc 1 2095 0
	movq	-88(%rbp), %rax	# sv, tmp524
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L633	#,
	.loc 1 2095 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp525
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_49].xiv_iv, D.15948
	orl	$-2147483648, %eax	#, D.15949
	jmp	.L634	#
.L633:
	.loc 1 2095 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp526
	movq	%rax, %rdi	# tmp526,
	call	Perl_sv_2iv	#
	orl	$-2147483648, %eax	#, D.15949
.L634:
	.loc 1 2095 0 discriminator 3
	movl	%eax, PL_debug(%rip)	# iftmp.556, PL_debug
	.loc 1 2097 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L602:
	.loc 1 2099 0
	movq	-96(%rbp), %rax	# mg, tmp527
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	addq	$1, %rax	#, D.15943
	movzbl	(%rax), %eax	# *_59, D.15944
	testb	%al, %al	# D.15944
	jne	.L635	#,
	.loc 1 2113 0
	call	__errno_location	#
	movq	%rax, %rbx	#, D.15950
	movq	-88(%rbp), %rax	# sv, tmp528
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L636	#,
	.loc 1 2113 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp529
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_64].xiv_iv, D.15948
	jmp	.L637	#
.L636:
	.loc 1 2113 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp530
	movq	%rax, %rdi	# tmp530,
	call	Perl_sv_2iv	#
.L637:
	.loc 1 2113 0 discriminator 1
	movl	%eax, (%rbx)	# iftmp.557, *_61
	jmp	.L638	#
.L635:
	.loc 1 2119 0 is_stmt 1
	movq	-96(%rbp), %rax	# mg, tmp531
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	addq	$1, %rax	#, D.15951
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.15951,
	call	strcmp	#
	testl	%eax, %eax	# D.15945
	jne	.L638	#,
	.loc 1 2120 0
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.558
	testq	%rax, %rax	# PL_encoding.558
	je	.L639	#,
	.loc 1 2121 0
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.559
	movq	%rax, %rdi	# PL_encoding.559,
	call	Perl_sv_free	#
.L639:
	.loc 1 2122 0
	movq	-88(%rbp), %rax	# sv, tmp532
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	jne	.L640	#,
	.loc 1 2122 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp533
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$8192, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L641	#,
.L640:
	.loc 1 2123 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp534
	movq	%rax, %rdi	# tmp534,
	call	Perl_newSVsv	#
	movq	%rax, PL_encoding(%rip)	# PL_encoding.560, PL_encoding
	jmp	.L638	#
.L641:
	.loc 1 2126 0
	movq	$0, PL_encoding(%rip)	#, PL_encoding
	.loc 1 2129 0
	jmp	.L597	#
.L638:
	jmp	.L597	#
.L603:
	.loc 1 2131 0
	movq	-88(%rbp), %rax	# sv, tmp535
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L642	#,
	.loc 1 2131 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp536
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_81].xiv_iv, D.15948
	jmp	.L643	#
.L642:
	.loc 1 2131 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp537
	movq	%rax, %rdi	# tmp537,
	call	Perl_sv_2iv	#
.L643:
	.loc 1 2131 0 discriminator 3
	movl	%eax, PL_maxsysfd(%rip)	# iftmp.561, PL_maxsysfd
	.loc 1 2132 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L604:
	.loc 1 2134 0
	movq	-88(%rbp), %rax	# sv, tmp538
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L644	#,
	.loc 1 2134 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp539
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_88].xiv_iv, D.15948
	jmp	.L645	#
.L644:
	.loc 1 2134 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp540
	movq	%rax, %rdi	# tmp540,
	call	Perl_sv_2iv	#
.L645:
	.loc 1 2134 0 discriminator 3
	movl	%eax, PL_hints(%rip)	# iftmp.562, PL_hints
	.loc 1 2135 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L605:
	.loc 1 2137 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.563
	testq	%rax, %rax	# PL_inplace.563
	je	.L646	#,
	.loc 1 2138 0
	movq	PL_inplace(%rip), %rax	# PL_inplace, PL_inplace.564
	movq	%rax, %rdi	# PL_inplace.564,
	call	Perl_safesysfree	#
.L646:
	.loc 1 2139 0
	movq	-88(%rbp), %rax	# sv, tmp541
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L647	#,
	.loc 1 2140 0
	movq	-88(%rbp), %rax	# sv, tmp542
	movq	%rax, %rdi	# tmp542,
	call	Perl_savesvpv	#
	movq	%rax, PL_inplace(%rip)	# PL_inplace.565, PL_inplace
	.loc 1 2143 0
	jmp	.L597	#
.L647:
	.loc 1 2142 0
	movq	$0, PL_inplace(%rip)	#, PL_inplace
	.loc 1 2143 0
	jmp	.L597	#
.L606:
	.loc 1 2145 0
	movq	-96(%rbp), %rax	# mg, tmp543
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	addq	$1, %rax	#, D.15943
	movzbl	(%rax), %eax	# *_99, D.15944
	testb	%al, %al	# D.15944
	jne	.L649	#,
	.loc 1 2146 0
	movq	PL_osname(%rip), %rax	# PL_osname, PL_osname.566
	testq	%rax, %rax	# PL_osname.566
	je	.L650	#,
	.loc 1 2147 0
	movq	PL_osname(%rip), %rax	# PL_osname, PL_osname.567
	movq	%rax, %rdi	# PL_osname.567,
	call	Perl_safesysfree	#
	.loc 1 2148 0
	movq	$0, PL_osname(%rip)	#, PL_osname
.L650:
	.loc 1 2150 0
	movq	-88(%rbp), %rax	# sv, tmp544
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L653	#,
	.loc 1 2151 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.568
	testb	%al, %al	# PL_tainting.568
	je	.L652	#,
	.loc 1 2151 0 is_stmt 0 discriminator 1
	movl	$.LC35, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L652:
	.loc 1 2152 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp545
	movq	%rax, %rdi	# tmp545,
	call	Perl_savesvpv	#
	movq	%rax, PL_osname(%rip)	# PL_osname.569, PL_osname
	.loc 1 2161 0
	jmp	.L597	#
.L649:
	.loc 1 2155 0
	movq	-96(%rbp), %rax	# mg, tmp546
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# D.15943,
	call	strcmp	#
	testl	%eax, %eax	# D.15945
	jne	.L653	#,
	.loc 1 2156 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.15952
	testq	%rax, %rax	# D.15952
	jne	.L654	#,
	.loc 1 2157 0
	movq	-88(%rbp), %rax	# sv, tmp547
	movq	%rax, %rdi	# tmp547,
	call	Perl_newSVsv	#
	movq	%rax, PL_compiling+88(%rip)	# D.15952, PL_compiling.cop_io
	jmp	.L653	#
.L654:
	.loc 1 2159 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.15952
	movq	-88(%rbp), %rcx	# sv, tmp548
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp548,
	movq	%rax, %rdi	# D.15952,
	call	Perl_sv_setsv_flags	#
	.loc 1 2161 0
	jmp	.L597	#
.L653:
	jmp	.L597	#
.L607:
	.loc 1 2163 0
	movq	-88(%rbp), %rax	# sv, tmp549
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L655	#,
	.loc 1 2163 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp550
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_114].xiv_iv, D.15948
	jmp	.L656	#
.L655:
	.loc 1 2163 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp551
	movq	%rax, %rdi	# tmp551,
	call	Perl_sv_2iv	#
.L656:
	.loc 1 2163 0 discriminator 3
	movl	%eax, PL_perldb(%rip)	# iftmp.570, PL_perldb
	.loc 1 2164 0 is_stmt 1 discriminator 3
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.571
	testl	%eax, %eax	# PL_perldb.571
	je	.L657	#,
	.loc 1 2164 0 is_stmt 0 discriminator 1
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.572
	testq	%rax, %rax	# PL_DBsingle.572
	jne	.L657	#,
	.loc 1 2165 0 is_stmt 1
	call	Perl_init_debugger	#
	.loc 1 2166 0
	jmp	.L597	#
.L657:
	jmp	.L597	#
.L608:
	.loc 1 2171 0
	movq	-88(%rbp), %rax	# sv, tmp552
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L658	#,
	.loc 1 2171 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp553
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_123].xiv_iv, iftmp.573
	jmp	.L659	#
.L658:
	.loc 1 2171 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp554
	movq	%rax, %rdi	# tmp554,
	call	Perl_sv_2iv	#
.L659:
	.loc 1 2171 0 discriminator 3
	movq	%rax, PL_basetime(%rip)	# iftmp.573, PL_basetime
	.loc 1 2173 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L609:
	.loc 1 2175 0
	movq	-96(%rbp), %rax	# mg, tmp555
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	addq	$1, %rax	#, D.15943
	movzbl	(%rax), %eax	# *_127, D.15944
	testb	%al, %al	# D.15944
	jne	.L660	#,
	.loc 1 2176 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.574
	movzbl	%al, %eax	# PL_dowarn.574, D.15945
	andl	$6, %eax	#, D.15945
	testl	%eax, %eax	# D.15945
	jne	.L664	#,
	.loc 1 2177 0
	movq	-88(%rbp), %rax	# sv, tmp556
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L662	#,
	.loc 1 2177 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp557
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_134].xiv_iv, D.15948
	jmp	.L663	#
.L662:
	.loc 1 2177 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp558
	movq	%rax, %rdi	# tmp558,
	call	Perl_sv_2iv	#
.L663:
	.loc 1 2177 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.575, i
	.loc 1 2178 0 is_stmt 1 discriminator 3
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.576
	andl	$-2, %eax	#, D.15953
	movl	%eax, %edx	# D.15953, D.15953
	.loc 1 2179 0 discriminator 3
	cmpl	$0, -68(%rbp)	#, i
	setne	%al	#, D.15954
	.loc 1 2178 0 discriminator 3
	orl	%edx, %eax	# D.15953, D.15953
	movb	%al, PL_dowarn(%rip)	# PL_dowarn.578, PL_dowarn
	.loc 1 2216 0 discriminator 3
	jmp	.L597	#
.L660:
	.loc 1 2182 0
	movq	-96(%rbp), %rax	# mg, tmp559
	movq	32(%rax), %rax	# mg_34(D)->mg_ptr, D.15943
	addq	$1, %rax	#, D.15951
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.15951,
	call	strcmp	#
	testl	%eax, %eax	# D.15945
	jne	.L664	#,
	.loc 1 2183 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.579
	movzbl	%al, %eax	# PL_dowarn.579, D.15945
	andl	$6, %eax	#, D.15945
	testl	%eax, %eax	# D.15945
	jne	.L664	#,
	.loc 1 2184 0
	movq	-88(%rbp), %rax	# sv, tmp560
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$262144, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	jne	.L665	#,
	.loc 1 2184 0 is_stmt 0 discriminator 1
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.580
	testl	%eax, %eax	# PL_localizing.580
	je	.L665	#,
	.loc 1 2185 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp561
	movl	$12, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp561,
	call	Perl_sv_setpvn	#
	.loc 1 2186 0
	movq	$32, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	.loc 1 2187 0
	jmp	.L597	#
.L665:
.LBB71:
	.loc 1 2191 0
	movl	$0, -64(%rbp)	#, accumulate
	.loc 1 2192 0
	movl	$0, -60(%rbp)	#, any_fatals
	.loc 1 2193 0
	movq	-88(%rbp), %rax	# sv, tmp562
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$262144, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L666	#,
	.loc 1 2193 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp563
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	8(%rax), %rax	# MEM[(struct XPV *)_160].xpv_cur, len.582
	movq	%rax, -56(%rbp)	# len.582, len
	movq	-88(%rbp), %rax	# sv, tmp564
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	(%rax), %rax	# MEM[(struct XPV *)_162].xpv_pv, iftmp.581
	jmp	.L667	#
.L666:
	.loc 1 2193 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp565
	movq	-88(%rbp), %rax	# sv, tmp566
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp565,
	movq	%rax, %rdi	# tmp566,
	call	Perl_sv_2pv_flags	#
.L667:
	.loc 1 2193 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.581, ptr
	.loc 1 2194 0 is_stmt 1 discriminator 3
	movq	$0, -48(%rbp)	#, i
	jmp	.L668	#
.L669:
	.loc 1 2195 0 discriminator 2
	movq	-48(%rbp), %rax	# i, tmp567
	movq	-40(%rbp), %rdx	# ptr, tmp568
	addq	%rdx, %rax	# tmp568, D.15943
	movzbl	(%rax), %eax	# *_168, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	orl	%eax, -64(%rbp)	# D.15945, accumulate
	.loc 1 2196 0 discriminator 2
	movq	-48(%rbp), %rax	# i, tmp569
	movq	-40(%rbp), %rdx	# ptr, tmp570
	addq	%rdx, %rax	# tmp570, D.15943
	movzbl	(%rax), %eax	# *_172, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	andl	$170, %eax	#, D.15945
	orl	%eax, -60(%rbp)	# D.15945, any_fatals
	.loc 1 2194 0 discriminator 2
	addq	$1, -48(%rbp)	#, i
.L668:
	.loc 1 2194 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# len, len.583
	cmpq	%rax, -48(%rbp)	# len.583, i
	jb	.L669	#,
	.loc 1 2198 0 is_stmt 1
	cmpl	$0, -64(%rbp)	#, accumulate
	jne	.L670	#,
	.loc 1 2199 0
	movq	$32, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	jmp	.L664	#
.L670:
	.loc 1 2200 0
	movq	-88(%rbp), %rax	# sv, tmp571
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	(%rax), %rax	# MEM[(struct XPV *)_178].xpv_pv, D.15943
	movzbl	(%rax), %eax	# *_179, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	andl	$1, %eax	#, D.15945
	testl	%eax, %eax	# D.15945
	je	.L672	#,
	.loc 1 2200 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, any_fatals
	jne	.L672	#,
	.loc 1 2201 0 is_stmt 1
	movq	$16, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	.loc 1 2202 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.584
	orl	$8, %eax	#, PL_dowarn.585
	movb	%al, PL_dowarn(%rip)	# PL_dowarn.585, PL_dowarn
	jmp	.L664	#
.L672:
	.loc 1 2205 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15952
	testq	%rax, %rax	# D.15952
	je	.L673	#,
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15952
	cmpq	$16, %rax	#, D.15952
	je	.L673	#,
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15952
	cmpq	$32, %rax	#, D.15952
	jne	.L674	#,
.L673:
	.loc 1 2206 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp572
	movq	%rax, %rdi	# tmp572,
	call	Perl_newSVsv	#
	movq	%rax, PL_compiling+80(%rip)	# D.15952, PL_compiling.cop_warnings
	jmp	.L675	#
.L674:
	.loc 1 2208 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15952
	movq	-88(%rbp), %rcx	# sv, tmp573
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp573,
	movq	%rax, %rdi	# D.15952,
	call	Perl_sv_setsv_flags	#
.L675:
	.loc 1 2209 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.15952
	movq	(%rax), %rax	# _190->sv_any, D.15947
	movq	(%rax), %rax	# MEM[(struct XPV *)_191].xpv_pv, D.15943
	addq	$3, %rax	#, D.15943
	movzbl	(%rax), %eax	# *_193, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	andl	$16, %eax	#, D.15945
	testl	%eax, %eax	# D.15945
	je	.L664	#,
	.loc 1 2210 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.586
	orl	$8, %eax	#, PL_dowarn.587
	movb	%al, PL_dowarn(%rip)	# PL_dowarn.587, PL_dowarn
.LBE71:
	.loc 1 2216 0
	jmp	.L597	#
.L664:
	jmp	.L597	#
.L618:
	.loc 1 2218 0
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.588
	testl	%eax, %eax	# PL_localizing.588
	je	.L676	#,
	.loc 1 2219 0
	movl	PL_localizing(%rip), %eax	# PL_localizing, PL_localizing.589
	cmpl	$1, %eax	#, PL_localizing.589
	jne	.L678	#,
	.loc 1 2220 0
	movl	$PL_last_in_gv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 2224 0
	jmp	.L597	#
.L676:
	.loc 1 2222 0
	movq	-88(%rbp), %rax	# sv, tmp574
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L678	#,
	.loc 1 2222 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.590
	testq	%rax, %rax	# PL_last_in_gv.590
	je	.L678	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.591
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.591_204].sv_flags, D.15946
	movzbl	%al, %eax	# D.15946, D.15946
	cmpl	$13, %eax	#, D.15946
	jne	.L678	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.592
	movq	(%rax), %rax	# PL_last_in_gv.592_207->sv_any, D.15955
	movq	56(%rax), %rax	# _208->xgv_gp, D.15956
	testq	%rax, %rax	# D.15956
	je	.L678	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.593
	movq	(%rax), %rax	# PL_last_in_gv.593_210->sv_any, D.15955
	movq	56(%rax), %rax	# _211->xgv_gp, D.15956
	movq	16(%rax), %rax	# _212->gp_io, D.15957
	testq	%rax, %rax	# D.15957
	je	.L678	#,
	.loc 1 2223 0 is_stmt 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.594
	movq	(%rax), %rax	# PL_last_in_gv.594_214->sv_any, D.15955
	movq	56(%rax), %rax	# _215->xgv_gp, D.15956
	movq	16(%rax), %rax	# _216->gp_io, D.15957
	movq	(%rax), %rbx	# _217->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp575
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L679	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp576
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_221].xiv_iv, iftmp.595
	jmp	.L680	#
.L679:
	.loc 1 2223 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp577
	movq	%rax, %rdi	# tmp577,
	call	Perl_sv_2iv	#
.L680:
	.loc 1 2223 0 discriminator 3
	movq	%rax, 80(%rbx)	# iftmp.595, _218->xio_lines
	.loc 1 2224 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L678:
	.loc 1 2224 0 is_stmt 0
	jmp	.L597	#
.L628:
	.loc 1 2226 0 is_stmt 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.596
	movq	(%rax), %rax	# PL_defoutgv.596_224->sv_any, D.15955
	movq	56(%rax), %rax	# _225->xgv_gp, D.15956
	movq	16(%rax), %rax	# _226->gp_io, D.15957
	movq	(%rax), %rax	# _227->sv_any, D.15958
	movq	112(%rax), %rax	# _228->xio_top_name, D.15943
	movq	%rax, %rdi	# D.15943,
	call	Perl_safesysfree	#
	.loc 1 2227 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.597
	movq	(%rax), %rax	# PL_defoutgv.597_230->sv_any, D.15955
	movq	56(%rax), %rax	# _231->xgv_gp, D.15956
	movq	16(%rax), %rax	# _232->gp_io, D.15957
	movq	(%rax), %r12	# _233->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp578
	movq	%rax, %rdi	# tmp578,
	call	Perl_savesvpv	#
	movq	%rax, %rbx	#, s
	movq	%rbx, 112(%r12)	# s, _234->xio_top_name
	.loc 1 2228 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.598
	movq	(%rax), %rax	# PL_defoutgv.598_236->sv_any, D.15955
	movq	56(%rax), %rax	# _237->xgv_gp, D.15956
	movq	16(%rax), %rax	# _238->gp_io, D.15957
	movq	(%rax), %r12	# _239->sv_any, D.15958
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# s,
	call	Perl_gv_fetchpv	#
	movq	%rax, 120(%r12)	# D.15959, _240->xio_top_gv
	.loc 1 2229 0
	jmp	.L597	#
.L630:
	.loc 1 2231 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.599
	movq	(%rax), %rax	# PL_defoutgv.599_242->sv_any, D.15955
	movq	56(%rax), %rax	# _243->xgv_gp, D.15956
	movq	16(%rax), %rax	# _244->gp_io, D.15957
	movq	(%rax), %rax	# _245->sv_any, D.15958
	movq	128(%rax), %rax	# _246->xio_fmt_name, D.15943
	movq	%rax, %rdi	# D.15943,
	call	Perl_safesysfree	#
	.loc 1 2232 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.600
	movq	(%rax), %rax	# PL_defoutgv.600_248->sv_any, D.15955
	movq	56(%rax), %rax	# _249->xgv_gp, D.15956
	movq	16(%rax), %rax	# _250->gp_io, D.15957
	movq	(%rax), %r12	# _251->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp579
	movq	%rax, %rdi	# tmp579,
	call	Perl_savesvpv	#
	movq	%rax, %rbx	#, s
	movq	%rbx, 128(%r12)	# s, _252->xio_fmt_name
	.loc 1 2233 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.601
	movq	(%rax), %rax	# PL_defoutgv.601_254->sv_any, D.15955
	movq	56(%rax), %rax	# _255->xgv_gp, D.15956
	movq	16(%rax), %rax	# _256->gp_io, D.15957
	movq	(%rax), %r12	# _257->sv_any, D.15958
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# s,
	call	Perl_gv_fetchpv	#
	movq	%rax, 136(%r12)	# D.15959, _258->xio_fmt_gv
	.loc 1 2234 0
	jmp	.L597	#
.L623:
	.loc 1 2236 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.602
	movq	(%rax), %rax	# PL_defoutgv.602_260->sv_any, D.15955
	movq	56(%rax), %rax	# _261->xgv_gp, D.15956
	movq	16(%rax), %rax	# _262->gp_io, D.15957
	movq	(%rax), %rbx	# _263->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp580
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L681	#,
	.loc 1 2236 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp581
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_267].xiv_iv, iftmp.603
	jmp	.L682	#
.L681:
	.loc 1 2236 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp582
	movq	%rax, %rdi	# tmp582,
	call	Perl_sv_2iv	#
.L682:
	.loc 1 2236 0 discriminator 3
	movq	%rax, 96(%rbx)	# iftmp.603, _264->xio_page_len
	.loc 1 2237 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L617:
	.loc 1 2239 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.604
	movq	(%rax), %rax	# PL_defoutgv.604_270->sv_any, D.15955
	movq	56(%rax), %rax	# _271->xgv_gp, D.15956
	movq	16(%rax), %rax	# _272->gp_io, D.15957
	movq	(%rax), %rbx	# _273->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp583
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L683	#,
	.loc 1 2239 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp584
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_277].xiv_iv, iftmp.605
	jmp	.L684	#
.L683:
	.loc 1 2239 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp585
	movq	%rax, %rdi	# tmp585,
	call	Perl_sv_2iv	#
.L684:
	.loc 1 2239 0 discriminator 3
	movq	%rax, 104(%rbx)	# iftmp.605, _274->xio_lines_left
	.loc 1 2240 0 is_stmt 1 discriminator 3
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.606
	movq	(%rax), %rax	# PL_defoutgv.606_280->sv_any, D.15955
	movq	56(%rax), %rax	# _281->xgv_gp, D.15956
	movq	16(%rax), %rax	# _282->gp_io, D.15957
	movq	(%rax), %rax	# _283->sv_any, D.15958
	movq	104(%rax), %rax	# _284->xio_lines_left, D.15948
	testq	%rax, %rax	# D.15948
	jns	.L685	#,
	.loc 1 2241 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.607
	movq	(%rax), %rax	# PL_defoutgv.607_286->sv_any, D.15955
	movq	56(%rax), %rax	# _287->xgv_gp, D.15956
	movq	16(%rax), %rax	# _288->gp_io, D.15957
	movq	(%rax), %rax	# _289->sv_any, D.15958
	movq	$0, 104(%rax)	#, _290->xio_lines_left
	.loc 1 2242 0
	jmp	.L597	#
.L685:
	jmp	.L597	#
.L612:
	.loc 1 2244 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.608
	movq	(%rax), %rax	# PL_defoutgv.608_291->sv_any, D.15955
	movq	56(%rax), %rax	# _292->xgv_gp, D.15956
	movq	16(%rax), %rax	# _293->gp_io, D.15957
	movq	(%rax), %rbx	# _294->sv_any, D.15958
	movq	-88(%rbp), %rax	# sv, tmp586
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L686	#,
	.loc 1 2244 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp587
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_298].xiv_iv, iftmp.609
	jmp	.L687	#
.L686:
	.loc 1 2244 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp588
	movq	%rax, %rdi	# tmp588,
	call	Perl_sv_2iv	#
.L687:
	.loc 1 2244 0 discriminator 3
	movq	%rax, 88(%rbx)	# iftmp.609, _295->xio_page
	.loc 1 2245 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L629:
.LBB72:
	.loc 1 2248 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.610
	movq	(%rax), %rax	# PL_defoutgv.610_301->sv_any, D.15955
	movq	56(%rax), %rax	# _302->xgv_gp, D.15956
	movq	16(%rax), %rax	# _303->gp_io, tmp589
	movq	%rax, -32(%rbp)	# tmp589, io
	.loc 1 2249 0
	cmpq	$0, -32(%rbp)	#, io
	jne	.L688	#,
	.loc 1 2250 0
	jmp	.L597	#
.L688:
	.loc 1 2251 0
	movq	-88(%rbp), %rax	# sv, tmp590
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L689	#,
	.loc 1 2251 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp591
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_307].xiv_iv, D.15948
	testq	%rax, %rax	# D.15948
	sete	%al	#, iftmp.611
	jmp	.L690	#
.L689:
	.loc 1 2251 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp592
	movq	%rax, %rdi	# tmp592,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.15948
	sete	%al	#, iftmp.611
.L690:
	.loc 1 2251 0 discriminator 3
	testb	%al, %al	# iftmp.611
	je	.L691	#,
	.loc 1 2252 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp593
	movq	(%rax), %rax	# io_304->sv_any, D.15958
	movq	-32(%rbp), %rdx	# io, tmp594
	movq	(%rdx), %rdx	# io_304->sv_any, D.15958
	movzbl	163(%rdx), %edx	# _313->xio_flags, D.15944
	andl	$-5, %edx	#, D.15944
	movb	%dl, 163(%rax)	# D.15944, _312->xio_flags
	jmp	.L692	#
.L691:
	.loc 1 2254 0
	movq	-32(%rbp), %rax	# io, tmp595
	movq	(%rax), %rax	# io_304->sv_any, D.15958
	movzbl	163(%rax), %eax	# _316->xio_flags, D.15944
	movsbl	%al, %eax	# D.15944, D.15945
	andl	$4, %eax	#, D.15945
	testl	%eax, %eax	# D.15945
	jne	.L692	#,
.LBB73:
	.loc 1 2255 0
	movq	-32(%rbp), %rax	# io, tmp596
	movq	(%rax), %rax	# io_304->sv_any, D.15958
	movq	64(%rax), %rax	# _320->xio_ofp, tmp597
	movq	%rax, -24(%rbp)	# tmp597, ofp
	.loc 1 2256 0
	cmpq	$0, -24(%rbp)	#, ofp
	je	.L693	#,
	.loc 1 2257 0
	movq	-24(%rbp), %rax	# ofp, tmp598
	movq	%rax, %rdi	# tmp598,
	call	Perl_PerlIO_flush	#
.L693:
	.loc 1 2258 0
	movq	-32(%rbp), %rax	# io, tmp599
	movq	(%rax), %rax	# io_304->sv_any, D.15958
	movq	-32(%rbp), %rdx	# io, tmp600
	movq	(%rdx), %rdx	# io_304->sv_any, D.15958
	movzbl	163(%rdx), %edx	# _323->xio_flags, D.15944
	orl	$4, %edx	#, D.15960
	movb	%dl, 163(%rax)	# D.15960, _322->xio_flags
.LBE73:
.LBE72:
	.loc 1 2262 0
	jmp	.L597	#
.L692:
	jmp	.L597	#
.L615:
	.loc 1 2264 0
	movq	-88(%rbp), %rax	# sv, tmp601
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L694	#,
	.loc 1 2264 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp602
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_328].xiv_iv, D.15948
	jmp	.L695	#
.L694:
	.loc 1 2264 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp603
	movq	%rax, %rdi	# tmp603,
	call	Perl_sv_2iv	#
.L695:
	.loc 1 2264 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.612, i
	.loc 1 2265 0 is_stmt 1 discriminator 3
	cmpl	$0, -68(%rbp)	#, i
	setne	%al	#, D.15954
	movzbl	%al, %eax	# D.15954, PL_multiline.613
	movl	%eax, PL_multiline(%rip)	# PL_multiline.613, PL_multiline
	.loc 1 2266 0 discriminator 3
	jmp	.L597	#
.L619:
	.loc 1 2268 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.614
	movq	%rax, %rdi	# PL_rs.614,
	call	Perl_sv_free	#
	.loc 1 2269 0
	movq	-88(%rbp), %rax	# sv, tmp604
	movq	%rax, %rdi	# tmp604,
	call	Perl_newSVsv	#
	movq	%rax, PL_rs(%rip)	# PL_rs.615, PL_rs
	.loc 1 2270 0
	jmp	.L597	#
.L627:
	.loc 1 2272 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.616
	testq	%rax, %rax	# PL_ors_sv.616
	je	.L696	#,
	.loc 1 2273 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.617
	movq	%rax, %rdi	# PL_ors_sv.617,
	call	Perl_sv_free	#
.L696:
	.loc 1 2274 0
	movq	-88(%rbp), %rax	# sv, tmp605
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	jne	.L697	#,
	.loc 1 2274 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp606
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$8192, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L698	#,
.L697:
	.loc 1 2275 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp607
	movq	%rax, %rdi	# tmp607,
	call	Perl_newSVsv	#
	movq	%rax, PL_ors_sv(%rip)	# PL_ors_sv.618, PL_ors_sv
	.loc 1 2280 0
	jmp	.L597	#
.L698:
	.loc 1 2278 0
	movq	$0, PL_ors_sv(%rip)	#, PL_ors_sv
	.loc 1 2280 0
	jmp	.L597	#
.L616:
	.loc 1 2282 0
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.619
	testq	%rax, %rax	# PL_ofs_sv.619
	je	.L700	#,
	.loc 1 2283 0
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.620
	movq	%rax, %rdi	# PL_ofs_sv.620,
	call	Perl_sv_free	#
.L700:
	.loc 1 2284 0
	movq	-88(%rbp), %rax	# sv, tmp608
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	jne	.L701	#,
	.loc 1 2284 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp609
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$8192, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L702	#,
.L701:
	.loc 1 2285 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp610
	movq	%rax, %rdi	# tmp610,
	call	Perl_newSVsv	#
	movq	%rax, PL_ofs_sv(%rip)	# PL_ofs_sv.621, PL_ofs_sv
	.loc 1 2290 0
	jmp	.L597	#
.L702:
	.loc 1 2288 0
	movq	$0, PL_ofs_sv(%rip)	#, PL_ofs_sv
	.loc 1 2290 0
	jmp	.L597	#
.L611:
	.loc 1 2292 0
	movq	PL_ofmt(%rip), %rax	# PL_ofmt, PL_ofmt.622
	testq	%rax, %rax	# PL_ofmt.622
	je	.L704	#,
	.loc 1 2293 0
	movq	PL_ofmt(%rip), %rax	# PL_ofmt, PL_ofmt.623
	movq	%rax, %rdi	# PL_ofmt.623,
	call	Perl_safesysfree	#
.L704:
	.loc 1 2294 0
	movq	-88(%rbp), %rax	# sv, tmp611
	movq	%rax, %rdi	# tmp611,
	call	Perl_savesvpv	#
	movq	%rax, PL_ofmt(%rip)	# PL_ofmt.624, PL_ofmt
	.loc 1 2295 0
	jmp	.L597	#
.L626:
	.loc 1 2297 0
	movq	-88(%rbp), %rax	# sv, tmp612
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L705	#,
	.loc 1 2297 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp613
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_357].xiv_iv, D.15948
	jmp	.L706	#
.L705:
	.loc 1 2297 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp614
	movq	%rax, %rdi	# tmp614,
	call	Perl_sv_2iv	#
.L706:
	.loc 1 2297 0 discriminator 3
	movl	%eax, PL_compiling+68(%rip)	# iftmp.625, PL_compiling.cop_arybase
	.loc 1 2298 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L625:
.LBB74:
	.loc 1 2312 0
	movq	-88(%rbp), %rax	# sv, tmp615
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L707	#,
	.loc 1 2312 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp616
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_364].xiv_iv, D.15948
	jmp	.L708	#
.L707:
	.loc 1 2312 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp617
	movq	%rax, %rdi	# tmp617,
	call	Perl_sv_2iv	#
.L708:
	.loc 1 2312 0 discriminator 3
	movl	%eax, PL_statusvalue(%rip)	# iftmp.626, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.627
	cmpl	$-1, %eax	#, PL_statusvalue.627
	je	.L709	#,
	.loc 1 2312 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.628
	movzwl	%ax, %eax	# PL_statusvalue.628, PL_statusvalue.629
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.629, PL_statusvalue
.LBE74:
	.loc 1 2313 0 is_stmt 1 discriminator 1
	jmp	.L597	#
.L709:
	.loc 1 2313 0 is_stmt 0
	jmp	.L597	#
.L610:
	.loc 1 2321 0 is_stmt 1
	call	__errno_location	#
	movq	%rax, %rbx	#, D.15950
	movq	-88(%rbp), %rax	# sv, tmp618
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L710	#,
	.loc 1 2321 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp619
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_375].xiv_iv, D.15948
	jmp	.L711	#
.L710:
	.loc 1 2321 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp620
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$118423552, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L712	#,
	.loc 1 2321 0 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp621
	movq	%rax, %rdi	# tmp621,
	call	Perl_sv_2iv	#
	jmp	.L711	#
.L712:
	.loc 1 2321 0 discriminator 4
	movl	$0, %eax	#, iftmp.631
.L711:
	.loc 1 2321 0 discriminator 6
	movl	%eax, (%rbx)	# iftmp.630, *_372
	.loc 1 2324 0 is_stmt 1 discriminator 6
	jmp	.L597	#
.L622:
	.loc 1 2326 0
	movq	-88(%rbp), %rax	# sv, tmp622
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L714	#,
	.loc 1 2326 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp623
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_386].xiv_iv, D.15948
	jmp	.L715	#
.L714:
	.loc 1 2326 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp624
	movq	%rax, %rdi	# tmp624,
	call	Perl_sv_2iv	#
.L715:
	.loc 1 2326 0 discriminator 3
	movl	%eax, PL_uid(%rip)	# iftmp.632, PL_uid
	.loc 1 2327 0 is_stmt 1 discriminator 3
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.633
	testl	%eax, %eax	# PL_delaymagic.633
	je	.L716	#,
	.loc 1 2328 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.634
	orl	$1, %eax	#, PL_delaymagic.635
	movl	%eax, PL_delaymagic(%rip)	# PL_delaymagic.635, PL_delaymagic
	.loc 1 2329 0
	jmp	.L597	#
.L716:
	.loc 1 2340 0
	movl	PL_uid(%rip), %edx	# PL_uid, PL_uid.636
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.637
	cmpl	%eax, %edx	# PL_euid.637, PL_uid.636
	jne	.L717	#,
	.loc 1 2346 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.638
	movl	%eax, %edi	# PL_uid.638,
	call	setuid	#
	jmp	.L718	#
.L717:
	.loc 1 2348 0
	call	getuid	#
	movl	%eax, PL_uid(%rip)	# PL_uid.639, PL_uid
	.loc 1 2349 0
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L718:
	.loc 1 2354 0
	call	getuid	#
	movl	%eax, PL_uid(%rip)	# PL_uid.640, PL_uid
	.loc 1 2355 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.642
	testl	%eax, %eax	# PL_uid.642
	je	.L719	#,
	.loc 1 2355 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.643
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.644
	cmpl	%eax, %edx	# PL_uid.644, PL_euid.643
	jne	.L720	#,
	.loc 1 2355 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.645
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.646
	cmpl	%eax, %edx	# PL_gid.646, PL_egid.645
	je	.L719	#,
.L720:
	.loc 1 2355 0 discriminator 3
	movl	$1, %eax	#, iftmp.641
	jmp	.L721	#
.L719:
	.loc 1 2355 0 discriminator 2
	movl	$0, %eax	#, iftmp.641
.L721:
	.loc 1 2355 0 discriminator 5
	movl	%eax, %edx	# iftmp.641, D.15944
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.647
	orl	%edx, %eax	# D.15944, PL_tainting.648
	movb	%al, PL_tainting(%rip)	# PL_tainting.648, PL_tainting
	.loc 1 2356 0 is_stmt 1 discriminator 5
	jmp	.L597	#
.L624:
	.loc 1 2358 0
	movq	-88(%rbp), %rax	# sv, tmp625
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L722	#,
	.loc 1 2358 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp626
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_411].xiv_iv, D.15948
	jmp	.L723	#
.L722:
	.loc 1 2358 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp627
	movq	%rax, %rdi	# tmp627,
	call	Perl_sv_2iv	#
.L723:
	.loc 1 2358 0 discriminator 3
	movl	%eax, PL_euid(%rip)	# iftmp.649, PL_euid
	.loc 1 2359 0 is_stmt 1 discriminator 3
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.650
	testl	%eax, %eax	# PL_delaymagic.650
	je	.L724	#,
	.loc 1 2360 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.651
	orl	$2, %eax	#, PL_delaymagic.652
	movl	%eax, PL_delaymagic(%rip)	# PL_delaymagic.652, PL_delaymagic
	.loc 1 2361 0
	jmp	.L597	#
.L724:
	.loc 1 2372 0
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.653
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.654
	cmpl	%eax, %edx	# PL_uid.654, PL_euid.653
	jne	.L725	#,
	.loc 1 2373 0
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.655
	movl	%eax, %edi	# PL_euid.655,
	call	setuid	#
	jmp	.L726	#
.L725:
	.loc 1 2375 0
	call	geteuid	#
	movl	%eax, PL_euid(%rip)	# PL_euid.656, PL_euid
	.loc 1 2376 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L726:
	.loc 1 2381 0
	call	geteuid	#
	movl	%eax, PL_euid(%rip)	# PL_euid.657, PL_euid
	.loc 1 2382 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.659
	testl	%eax, %eax	# PL_uid.659
	je	.L727	#,
	.loc 1 2382 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.660
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.661
	cmpl	%eax, %edx	# PL_uid.661, PL_euid.660
	jne	.L728	#,
	.loc 1 2382 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.662
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.663
	cmpl	%eax, %edx	# PL_gid.663, PL_egid.662
	je	.L727	#,
.L728:
	.loc 1 2382 0 discriminator 3
	movl	$1, %eax	#, iftmp.658
	jmp	.L729	#
.L727:
	.loc 1 2382 0 discriminator 2
	movl	$0, %eax	#, iftmp.658
.L729:
	.loc 1 2382 0 discriminator 5
	movl	%eax, %edx	# iftmp.658, D.15944
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.664
	orl	%edx, %eax	# D.15944, PL_tainting.665
	movb	%al, PL_tainting(%rip)	# PL_tainting.665, PL_tainting
	.loc 1 2383 0 is_stmt 1 discriminator 5
	jmp	.L597	#
.L613:
	.loc 1 2385 0
	movq	-88(%rbp), %rax	# sv, tmp628
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L730	#,
	.loc 1 2385 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp629
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_436].xiv_iv, D.15948
	jmp	.L731	#
.L730:
	.loc 1 2385 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp630
	movq	%rax, %rdi	# tmp630,
	call	Perl_sv_2iv	#
.L731:
	.loc 1 2385 0 discriminator 3
	movl	%eax, PL_gid(%rip)	# iftmp.666, PL_gid
	.loc 1 2386 0 is_stmt 1 discriminator 3
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.667
	testl	%eax, %eax	# PL_delaymagic.667
	je	.L732	#,
	.loc 1 2387 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.668
	orl	$16, %eax	#, PL_delaymagic.669
	movl	%eax, PL_delaymagic(%rip)	# PL_delaymagic.669, PL_delaymagic
	.loc 1 2388 0
	jmp	.L597	#
.L732:
	.loc 1 2399 0
	movl	PL_gid(%rip), %edx	# PL_gid, PL_gid.670
	movl	PL_egid(%rip), %eax	# PL_egid, PL_egid.671
	cmpl	%eax, %edx	# PL_egid.671, PL_gid.670
	jne	.L733	#,
	.loc 1 2400 0
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.672
	movl	%eax, %edi	# PL_gid.672,
	call	setgid	#
	jmp	.L734	#
.L733:
	.loc 1 2402 0
	call	getgid	#
	movl	%eax, PL_gid(%rip)	# PL_gid.673, PL_gid
	.loc 1 2403 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L734:
	.loc 1 2408 0
	call	getgid	#
	movl	%eax, PL_gid(%rip)	# PL_gid.674, PL_gid
	.loc 1 2409 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.676
	testl	%eax, %eax	# PL_uid.676
	je	.L735	#,
	.loc 1 2409 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.677
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.678
	cmpl	%eax, %edx	# PL_uid.678, PL_euid.677
	jne	.L736	#,
	.loc 1 2409 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.679
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.680
	cmpl	%eax, %edx	# PL_gid.680, PL_egid.679
	je	.L735	#,
.L736:
	.loc 1 2409 0 discriminator 3
	movl	$1, %eax	#, iftmp.675
	jmp	.L737	#
.L735:
	.loc 1 2409 0 discriminator 2
	movl	$0, %eax	#, iftmp.675
.L737:
	.loc 1 2409 0 discriminator 5
	movl	%eax, %edx	# iftmp.675, D.15944
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.681
	orl	%edx, %eax	# D.15944, PL_tainting.682
	movb	%al, PL_tainting(%rip)	# PL_tainting.682, PL_tainting
	.loc 1 2410 0 is_stmt 1 discriminator 5
	jmp	.L597	#
.L614:
	.loc 1 2433 0
	movq	-88(%rbp), %rax	# sv, tmp631
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$65536, %eax	#, D.15946
	testl	%eax, %eax	# D.15946
	je	.L738	#,
	.loc 1 2433 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp632
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_461].xiv_iv, D.15948
	jmp	.L739	#
.L738:
	.loc 1 2433 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp633
	movq	%rax, %rdi	# tmp633,
	call	Perl_sv_2iv	#
.L739:
	.loc 1 2433 0 discriminator 3
	movl	%eax, PL_egid(%rip)	# iftmp.683, PL_egid
	.loc 1 2435 0 is_stmt 1 discriminator 3
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.684
	testl	%eax, %eax	# PL_delaymagic.684
	je	.L740	#,
	.loc 1 2436 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.685
	orl	$32, %eax	#, PL_delaymagic.686
	movl	%eax, PL_delaymagic(%rip)	# PL_delaymagic.686, PL_delaymagic
	.loc 1 2437 0
	jmp	.L597	#
.L740:
	.loc 1 2448 0
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.687
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.688
	cmpl	%eax, %edx	# PL_gid.688, PL_egid.687
	jne	.L741	#,
	.loc 1 2449 0
	movl	PL_egid(%rip), %eax	# PL_egid, PL_egid.689
	movl	%eax, %edi	# PL_egid.689,
	call	setgid	#
	jmp	.L742	#
.L741:
	.loc 1 2451 0
	call	getegid	#
	movl	%eax, PL_egid(%rip)	# PL_egid.690, PL_egid
	.loc 1 2452 0
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L742:
	.loc 1 2457 0
	call	getegid	#
	movl	%eax, PL_egid(%rip)	# PL_egid.691, PL_egid
	.loc 1 2458 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.693
	testl	%eax, %eax	# PL_uid.693
	je	.L743	#,
	.loc 1 2458 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.694
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.695
	cmpl	%eax, %edx	# PL_uid.695, PL_euid.694
	jne	.L744	#,
	.loc 1 2458 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.696
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.697
	cmpl	%eax, %edx	# PL_gid.697, PL_egid.696
	je	.L743	#,
.L744:
	.loc 1 2458 0 discriminator 3
	movl	$1, %eax	#, iftmp.692
	jmp	.L745	#
.L743:
	.loc 1 2458 0 discriminator 2
	movl	$0, %eax	#, iftmp.692
.L745:
	.loc 1 2458 0 discriminator 5
	movl	%eax, %edx	# iftmp.692, D.15944
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.698
	orl	%edx, %eax	# D.15944, PL_tainting.699
	movb	%al, PL_tainting(%rip)	# PL_tainting.699, PL_tainting
	.loc 1 2459 0 is_stmt 1 discriminator 5
	jmp	.L597	#
.L621:
	.loc 1 2461 0
	movq	-88(%rbp), %rax	# sv, tmp634
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$10223616, %eax	#, D.15946
	cmpl	$262144, %eax	#, D.15946
	jne	.L746	#,
	.loc 1 2461 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp635
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	8(%rax), %rax	# MEM[(struct XPV *)_486].xpv_cur, len.701
	movq	%rax, -56(%rbp)	# len.701, len
	movq	-88(%rbp), %rax	# sv, tmp636
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	(%rax), %rax	# MEM[(struct XPV *)_488].xpv_pv, iftmp.700
	jmp	.L747	#
.L746:
	.loc 1 2461 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp637
	movq	-88(%rbp), %rax	# sv, tmp638
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp637,
	movq	%rax, %rdi	# tmp638,
	call	Perl_sv_pvn_force_flags	#
.L747:
	.loc 1 2461 0 discriminator 3
	movq	%rax, PL_chopset(%rip)	# iftmp.700, PL_chopset
	.loc 1 2462 0 is_stmt 1 discriminator 3
	jmp	.L597	#
.L620:
	.loc 1 2499 0
	movq	-88(%rbp), %rax	# sv, tmp639
	movl	12(%rax), %eax	# sv_39(D)->sv_flags, D.15946
	andl	$10223616, %eax	#, D.15946
	cmpl	$262144, %eax	#, D.15946
	jne	.L748	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp640
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	8(%rax), %rax	# MEM[(struct XPV *)_493].xpv_cur, len.703
	movq	%rax, -56(%rbp)	# len.703, len
	movq	-88(%rbp), %rax	# sv, tmp641
	movq	(%rax), %rax	# sv_39(D)->sv_any, D.15947
	movq	(%rax), %rax	# MEM[(struct XPV *)_495].xpv_pv, iftmp.702
	jmp	.L749	#
.L748:
	.loc 1 2499 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp642
	movq	-88(%rbp), %rax	# sv, tmp643
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp642,
	movq	%rax, %rdi	# tmp643,
	call	Perl_sv_pvn_force_flags	#
.L749:
	.loc 1 2499 0 discriminator 3
	movq	%rax, %rbx	# iftmp.702, s
	.loc 1 2500 0 is_stmt 1 discriminator 3
	movl	PL_origalen(%rip), %eax	# PL_origalen, PL_origalen.704
	movl	%eax, %edx	# PL_origalen.704, D.15961
	movq	-56(%rbp), %rax	# len, len.705
	cmpq	%rax, %rdx	# len.705, D.15961
	ja	.L750	#,
	.loc 1 2502 0
	movl	PL_origalen(%rip), %eax	# PL_origalen, PL_origalen.706
	movl	%eax, %edx	# PL_origalen.706, D.15961
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.707
	movq	(%rax), %rax	# *PL_origargv.707_504, D.15943
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# D.15943,
	call	memcpy	#
	.loc 1 2503 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.708
	movq	(%rax), %rdx	# *PL_origargv.708_506, D.15943
	movl	PL_origalen(%rip), %eax	# PL_origalen, PL_origalen.709
	subl	$1, %eax	#, D.15946
	movl	%eax, %eax	# D.15946, D.15962
	addq	%rdx, %rax	# D.15943, D.15943
	movb	$0, (%rax)	#, *_511
	jmp	.L751	#
.L750:
	.loc 1 2507 0
	movq	-56(%rbp), %rdx	# len, len.710
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.711
	movq	(%rax), %rax	# *PL_origargv.711_513, D.15943
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# D.15943,
	call	memcpy	#
	.loc 1 2508 0
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.712
	movq	(%rax), %rdx	# *PL_origargv.712_515, D.15943
	movq	-56(%rbp), %rax	# len, len.713
	addq	%rdx, %rax	# D.15943, D.15943
	movb	$0, (%rax)	#, *_518
	.loc 1 2515 0
	movl	PL_origalen(%rip), %eax	# PL_origalen, PL_origalen.714
	movl	%eax, %edx	# PL_origalen.714, D.15961
	movq	-56(%rbp), %rax	# len, len.715
	subq	%rax, %rdx	# len.715, D.15961
	movq	%rdx, %rax	# D.15961, D.15961
	.loc 1 2509 0
	leaq	-1(%rax), %rdx	#, D.15961
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.716
	movq	(%rax), %rax	# *PL_origargv.716_524, D.15943
	movq	-56(%rbp), %rcx	# len, len.717
	addq	$1, %rcx	#, D.15962
	addq	%rcx, %rax	# D.15962, D.15943
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.15943,
	call	memset	#
	.loc 1 2516 0
	movl	$1, -68(%rbp)	#, i
	jmp	.L752	#
.L753:
	.loc 1 2517 0 discriminator 2
	movq	PL_origargv(%rip), %rax	# PL_origargv, PL_origargv.718
	movl	-68(%rbp), %edx	# i, tmp644
	movslq	%edx, %rdx	# tmp644, D.15961
	salq	$3, %rdx	#, D.15961
	addq	%rdx, %rax	# D.15961, D.15963
	movq	$0, (%rax)	#, *_534
	.loc 1 2516 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L752:
	.loc 1 2516 0 is_stmt 0 discriminator 1
	movl	PL_origargc(%rip), %eax	# PL_origargc, PL_origargc.719
	cmpl	%eax, -68(%rbp)	# PL_origargc.719, i
	jl	.L753	#,
.L751:
	.loc 1 2520 0 is_stmt 1
	nop
.L597:
	.loc 1 2528 0
	movl	$0, %eax	#, D.15945
	.loc 1 2529 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	Perl_magic_set, .-Perl_magic_set
	.section	.rodata
.LC40:
	.string	"CHLD"
.LC41:
	.string	"CLD"
	.text
	.globl	Perl_whichsig
	.type	Perl_whichsig, @function
Perl_whichsig:
.LFB67:
	.loc 1 2548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# sig, sig
	.loc 1 2551 0
	movl	$PL_sig_name, %ebx	#, sigv
	jmp	.L756	#
.L759:
	.loc 1 2552 0
	movq	(%rbx), %rdx	# *sigv_1, D.15971
	movq	-24(%rbp), %rax	# sig, tmp71
	movq	%rdx, %rsi	# D.15971,
	movq	%rax, %rdi	# tmp71,
	call	strcmp	#
	testl	%eax, %eax	# D.15972
	jne	.L757	#,
	.loc 1 2553 0
	movq	%rbx, %rdx	# sigv, sigv.720
	movl	$PL_sig_name, %eax	#, PL_sig_name.721
	subq	%rax, %rdx	# PL_sig_name.721, D.15973
	movq	%rdx, %rax	# D.15973, D.15973
	sarq	$3, %rax	#, tmp72
	movl	PL_sig_num(,%rax,4), %eax	# PL_sig_num, D.15970
	jmp	.L758	#
.L757:
	.loc 1 2551 0
	addq	$8, %rbx	#, sigv
.L756:
	.loc 1 2551 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sigv_1, D.15971
	testq	%rax, %rax	# D.15971
	jne	.L759	#,
	.loc 1 2555 0 is_stmt 1
	movq	-24(%rbp), %rax	# sig, tmp73
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	strcmp	#
	testl	%eax, %eax	# D.15972
	jne	.L760	#,
	.loc 1 2556 0
	movl	$17, %eax	#, D.15970
	jmp	.L758	#
.L760:
	.loc 1 2559 0
	movq	-24(%rbp), %rax	# sig, tmp74
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	strcmp	#
	testl	%eax, %eax	# D.15972
	jne	.L761	#,
	.loc 1 2560 0
	movl	$17, %eax	#, D.15970
	jmp	.L758	#
.L761:
	.loc 1 2562 0
	movl	$-1, %eax	#, D.15970
.L758:
	.loc 1 2563 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	Perl_whichsig, .-Perl_whichsig
	.local	sig_sv
	.comm	sig_sv,8,8
	.section	.rodata
	.align 8
.LC42:
	.string	"Signal SIG%s received, but no signal handler set.\n"
.LC43:
	.string	"__ANON__"
	.align 8
.LC44:
	.string	"SIG%s handler \"%s\" not defined.\n"
	.text
	.globl	Perl_sighandler
	.type	Perl_sighandler, @function
Perl_sighandler:
.LFB68:
	.loc 1 2571 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# sig, sig
	.loc 1 2577 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2578 0
	movq	$0, -88(%rbp)	#, gv
	.loc 1 2580 0
	movq	$0, -72(%rbp)	#, sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp383
	movq	%rax, -48(%rbp)	# tmp383, tSv
	.loc 1 2581 0
	movq	$0, -64(%rbp)	#, cv
	.loc 1 2582 0
	movq	PL_op(%rip), %rax	# PL_op, tmp384
	movq	%rax, -40(%rbp)	# tmp384, myop
	.loc 1 2583 0
	movl	$0, -92(%rbp)	#, flags
	.loc 1 2584 0
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, tmp385
	movq	%rax, -32(%rbp)	# tmp385, tXpv
	.loc 1 2586 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.722
	leal	15(%rax), %edx	#, D.15976
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.723
	cmpl	%eax, %edx	# PL_savestack_max.723, D.15976
	jg	.L763	#,
	.loc 1 2587 0
	movl	-92(%rbp), %eax	# flags, flags.724
	orl	$1, %eax	#, flags.725
	movl	%eax, -92(%rbp)	# flags.725, flags
.L763:
	.loc 1 2588 0
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.726
	leaq	-8(%rax), %rdx	#, D.15977
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.727
	cmpq	%rax, %rdx	# PL_markstack_ptr.727, D.15977
	jbe	.L764	#,
	.loc 1 2589 0
	movl	-92(%rbp), %eax	# flags, flags.728
	orl	$4, %eax	#, flags.729
	movl	%eax, -92(%rbp)	# flags.729, flags
.L764:
	.loc 1 2590 0
	movl	PL_retstack_max(%rip), %eax	# PL_retstack_max, PL_retstack_max.730
	leal	-2(%rax), %edx	#, D.15976
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.731
	cmpl	%eax, %edx	# PL_retstack_ix.731, D.15976
	jle	.L765	#,
	.loc 1 2591 0
	movl	-92(%rbp), %eax	# flags, flags.732
	orl	$8, %eax	#, flags.733
	movl	%eax, -92(%rbp)	# flags.733, flags
.L765:
	.loc 1 2592 0
	movl	PL_scopestack_max(%rip), %eax	# PL_scopestack_max, PL_scopestack_max.734
	leal	-3(%rax), %edx	#, D.15976
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.735
	cmpl	%eax, %edx	# PL_scopestack_ix.735, D.15976
	jle	.L766	#,
	.loc 1 2593 0
	movl	-92(%rbp), %eax	# flags, flags.736
	orl	$16, %eax	#, flags.737
	movl	%eax, -92(%rbp)	# flags.737, flags
.L766:
	.loc 1 2595 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.738
	movl	-100(%rbp), %edx	# sig, tmp386
	movslq	%edx, %rdx	# tmp386, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_46, D.15980
	testq	%rax, %rax	# D.15980
	jne	.L767	#,
	.loc 1 2596 0
	movl	-100(%rbp), %eax	# sig, tmp388
	cltq
	movq	PL_sig_name(,%rax,8), %rbx	# PL_sig_name, D.15981
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.740
	testq	%rax, %rax	# PL_stderrgv.740
	je	.L768	#,
	.loc 1 2596 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.741
	movl	12(%rax), %eax	# PL_stderrgv.741_50->sv_flags, D.15982
	movzbl	%al, %eax	# D.15982, D.15982
	cmpl	$13, %eax	#, D.15982
	jne	.L768	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.742
	movq	(%rax), %rax	# PL_stderrgv.742_53->sv_any, D.15983
	movq	56(%rax), %rax	# _54->xgv_gp, D.15984
	movq	16(%rax), %rax	# _55->gp_io, D.15985
	testq	%rax, %rax	# D.15985
	je	.L768	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.743
	movq	(%rax), %rax	# PL_stderrgv.743_57->sv_any, D.15983
	movq	56(%rax), %rax	# _58->xgv_gp, D.15984
	movq	16(%rax), %rax	# _59->gp_io, D.15985
	movq	(%rax), %rax	# _60->sv_any, D.15986
	movq	64(%rax), %rax	# _61->xio_ofp, D.15987
	testq	%rax, %rax	# D.15987
	je	.L768	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.744
	movq	(%rax), %rax	# PL_stderrgv.744_63->sv_any, D.15983
	movq	56(%rax), %rax	# _64->xgv_gp, D.15984
	movq	16(%rax), %rax	# _65->gp_io, D.15985
	movq	(%rax), %rax	# _66->sv_any, D.15986
	movq	64(%rax), %rax	# _67->xio_ofp, iftmp.739
	jmp	.L769	#
.L768:
	.loc 1 2596 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L769:
	.loc 1 2596 0 discriminator 3
	movq	%rbx, %rdx	# D.15981,
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# iftmp.739,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 2598 0 is_stmt 1 discriminator 3
	movl	-100(%rbp), %eax	# sig, tmp389
	movl	%eax, %edi	# tmp389,
	call	exit	#
.L767:
	.loc 1 2603 0
	movl	-92(%rbp), %eax	# flags, flags.745
	andl	$1, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L770	#,
	.loc 1 2604 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.746
	addl	$5, %eax	#, PL_savestack_ix.747
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.747, PL_savestack_ix
	.loc 1 2605 0
	leaq	-92(%rbp), %rax	#, tmp390
	movq	%rax, %rsi	# tmp390,
	movl	$unwind_handler_stack, %edi	#,
	call	Perl_save_destructor_x	#
.L770:
	.loc 1 2607 0
	movl	-92(%rbp), %eax	# flags, flags.748
	andl	$4, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L771	#,
	.loc 1 2608 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.749
	addq	$4, %rax	#, PL_markstack_ptr.750
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.750, PL_markstack_ptr
.L771:
	.loc 1 2609 0
	movl	-92(%rbp), %eax	# flags, flags.751
	andl	$8, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L772	#,
	.loc 1 2610 0
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.752
	addl	$1, %eax	#, PL_retstack_ix.753
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.753, PL_retstack_ix
	.loc 1 2611 0
	movq	PL_retstack(%rip), %rax	# PL_retstack, PL_retstack.754
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.755
	movslq	%edx, %rdx	# PL_retstack_ix.755, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15988
	movq	$0, (%rax)	#, *_86
.L772:
	.loc 1 2613 0
	movl	-92(%rbp), %eax	# flags, flags.756
	andl	$16, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L773	#,
	.loc 1 2614 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.757
	addl	$1, %eax	#, PL_scopestack_ix.758
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.758, PL_scopestack_ix
.L773:
	.loc 1 2616 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.759
	movl	-100(%rbp), %edx	# sig, tmp391
	movslq	%edx, %rdx	# tmp391, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_94, D.15980
	movl	12(%rax), %eax	# _95->sv_flags, D.15982
	andl	$524288, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L774	#,
	.loc 1 2616 0 is_stmt 0 discriminator 1
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.760
	movl	-100(%rbp), %edx	# sig, tmp392
	movslq	%edx, %rdx	# tmp392, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_101, D.15980
	movq	(%rax), %rax	# _102->sv_any, D.15989
	movq	(%rax), %rax	# MEM[(struct XRV *)_103].xrv_rv, tmp393
	movq	%rax, -64(%rbp)	# tmp393, cv
	cmpq	$0, -64(%rbp)	#, cv
	je	.L774	#,
	.loc 1 2617 0 is_stmt 1
	movq	-64(%rbp), %rax	# cv, tmp394
	movl	12(%rax), %eax	# cv_104->sv_flags, D.15982
	movzbl	%al, %eax	# D.15982, D.15982
	cmpl	$12, %eax	#, D.15982
	je	.L775	#,
.L774:
	.loc 1 2618 0
	movq	PL_psig_ptr(%rip), %rax	# PL_psig_ptr, PL_psig_ptr.761
	movl	-100(%rbp), %edx	# sig, tmp395
	movslq	%edx, %rdx	# tmp395, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_110, D.15980
	leaq	-88(%rbp), %rdx	#, tmp396
	leaq	-80(%rbp), %rsi	#, tmp397
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.15980,
	call	Perl_sv_2cv	#
	movq	%rax, -64(%rbp)	# tmp398, cv
.L775:
	.loc 1 2620 0
	cmpq	$0, -64(%rbp)	#, cv
	je	.L776	#,
	.loc 1 2620 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# cv, tmp399
	movq	(%rax), %rax	# cv_3->sv_any, D.15990
	movq	72(%rax), %rax	# _113->xcv_root, D.15991
	testq	%rax, %rax	# D.15991
	jne	.L777	#,
.L776:
	.loc 1 2621 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.762
	movq	80(%rax), %rax	# PL_curcop.762_299->cop_warnings, D.15980
	testq	%rax, %rax	# D.15980
	je	.L778	#,
	.loc 1 2621 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.763
	movq	80(%rax), %rax	# PL_curcop.763_301->cop_warnings, D.15980
	cmpq	$32, %rax	#, D.15980
	je	.L778	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.764
	movq	80(%rax), %rax	# PL_curcop.764_303->cop_warnings, D.15980
	cmpq	$16, %rax	#, D.15980
	je	.L779	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.765
	movq	80(%rax), %rax	# PL_curcop.765_305->cop_warnings, D.15980
	movq	(%rax), %rax	# _306->sv_any, D.15989
	movq	(%rax), %rax	# MEM[(struct XPV *)_307].xpv_pv, D.15981
	addq	$6, %rax	#, D.15981
	movzbl	(%rax), %eax	# *_309, D.15997
	movsbl	%al, %eax	# D.15997, D.15976
	andl	$16, %eax	#, D.15976
	testl	%eax, %eax	# D.15976
	jne	.L779	#,
.L778:
	.loc 1 2621 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.766
	movq	80(%rax), %rax	# PL_curcop.766_313->cop_warnings, D.15980
	testq	%rax, %rax	# D.15980
	jne	.L780	#,
	.loc 1 2621 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.767
	movzbl	%al, %eax	# PL_dowarn.767, D.15976
	andl	$1, %eax	#, D.15976
	testl	%eax, %eax	# D.15976
	je	.L780	#,
.L779:
	.loc 1 2623 0 is_stmt 1
	movq	-88(%rbp), %rax	# gv, gv.769
	.loc 1 2622 0
	testq	%rax, %rax	# gv.769
	je	.L781	#,
	.loc 1 2623 0
	movq	-88(%rbp), %rax	# gv, gv.771
	movq	(%rax), %rax	# gv.771_319->sv_any, D.15983
	movq	56(%rax), %rax	# _320->xgv_gp, D.15984
	movq	48(%rax), %rax	# _321->gp_egv, D.15999
	testq	%rax, %rax	# D.15999
	je	.L782	#,
	.loc 1 2623 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# gv, gv.772
	movq	(%rax), %rax	# gv.772_323->sv_any, D.15983
	movq	56(%rax), %rax	# _324->xgv_gp, D.15984
	movq	48(%rax), %rax	# _325->gp_egv, iftmp.770
	jmp	.L783	#
.L782:
	.loc 1 2623 0 discriminator 2
	movq	-88(%rbp), %rax	# gv, iftmp.770
.L783:
	.loc 1 2623 0 discriminator 1
	movq	(%rax), %rax	# iftmp.770_7->sv_any, D.15983
	.loc 1 2622 0 is_stmt 1 discriminator 1
	movq	64(%rax), %rax	# _328->xgv_name, iftmp.768
	jmp	.L784	#
.L781:
	.loc 1 2626 0
	cmpq	$0, -64(%rbp)	#, cv
	je	.L785	#,
	.loc 1 2624 0
	movq	-64(%rbp), %rax	# cv, tmp400
	movq	(%rax), %rax	# cv_3->sv_any, D.15990
	movq	96(%rax), %rax	# _330->xcv_gv, D.15999
	testq	%rax, %rax	# D.15999
	je	.L785	#,
	.loc 1 2625 0
	movq	-64(%rbp), %rax	# cv, tmp401
	movq	(%rax), %rax	# cv_3->sv_any, D.15990
	movq	96(%rax), %rax	# _332->xcv_gv, D.15999
	movq	(%rax), %rax	# _333->sv_any, D.15983
	movq	56(%rax), %rax	# _334->xgv_gp, D.15984
	movq	48(%rax), %rax	# _335->gp_egv, D.15999
	testq	%rax, %rax	# D.15999
	je	.L786	#,
	.loc 1 2625 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# cv, tmp402
	movq	(%rax), %rax	# cv_3->sv_any, D.15990
	movq	96(%rax), %rax	# _337->xcv_gv, D.15999
	movq	(%rax), %rax	# _338->sv_any, D.15983
	movq	56(%rax), %rax	# _339->xgv_gp, D.15984
	movq	48(%rax), %rax	# _340->gp_egv, iftmp.774
	jmp	.L787	#
.L786:
	.loc 1 2625 0 discriminator 2
	movq	-64(%rbp), %rax	# cv, tmp403
	movq	(%rax), %rax	# cv_3->sv_any, D.15990
	movq	96(%rax), %rax	# _342->xcv_gv, iftmp.774
.L787:
	.loc 1 2625 0 discriminator 3
	movq	(%rax), %rax	# iftmp.774_9->sv_any, D.15983
	.loc 1 2626 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _344->xgv_name, iftmp.773
	jmp	.L784	#
.L785:
	.loc 1 2626 0 is_stmt 0 discriminator 1
	movl	$.LC43, %eax	#, iftmp.773
.L784:
	.loc 1 2622 0 is_stmt 1 discriminator 1
	movl	-100(%rbp), %edx	# sig, tmp405
	movslq	%edx, %rdx	# tmp405, tmp404
	movq	PL_sig_name(,%rdx,8), %rdx	# PL_sig_name, D.15981
	movq	%rax, %rcx	# iftmp.768,
	movl	$.LC44, %esi	#,
	movl	$26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 2627 0 discriminator 1
	jmp	.L789	#
.L780:
	.loc 1 2627 0 is_stmt 0
	jmp	.L789	#
.L777:
	.loc 1 2630 0 is_stmt 1
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.775
	movl	-100(%rbp), %edx	# sig, tmp406
	movslq	%edx, %rdx	# tmp406, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_118, D.15980
	testq	%rax, %rax	# D.15980
	je	.L790	#,
	.loc 1 2631 0
	movq	PL_psig_name(%rip), %rax	# PL_psig_name, PL_psig_name.776
	movl	-100(%rbp), %edx	# sig, tmp407
	movslq	%edx, %rdx	# tmp407, D.15978
	salq	$3, %rdx	#, D.15978
	addq	%rdx, %rax	# D.15978, D.15979
	movq	(%rax), %rax	# *_123, PL_Sv.777
	movq	%rax, PL_Sv(%rip)	# PL_Sv.777, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.779
	testq	%rax, %rax	# PL_Sv.779
	je	.L792	#,
	.loc 1 2631 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.780
	movl	8(%rax), %edx	# PL_Sv.780_126->sv_refcnt, D.15982
	addl	$1, %edx	#, D.15982
	movl	%edx, 8(%rax)	# D.15982, PL_Sv.780_126->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.780_126->sv_refcnt, D.15982
	testl	%eax, %eax	# D.15982
	je	.L792	#,
	.loc 1 2631 0
	nop
.L792:
	.loc 1 2631 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp408
	movq	%rax, -72(%rbp)	# tmp408, sv
	.loc 1 2632 0 is_stmt 1 discriminator 4
	movl	-92(%rbp), %eax	# flags, flags.781
	orl	$64, %eax	#, flags.782
	movl	%eax, -92(%rbp)	# flags.782, flags
	.loc 1 2634 0 discriminator 4
	movq	-72(%rbp), %rax	# sv, tmp409
	movq	%rax, sig_sv(%rip)	# tmp409, sig_sv
	jmp	.L793	#
.L790:
	.loc 1 2637 0
	call	Perl_sv_newmortal	#
	movq	%rax, -72(%rbp)	# tmp410, sv
	.loc 1 2638 0
	movl	-100(%rbp), %eax	# sig, tmp412
	cltq
	movq	PL_sig_name(,%rax,8), %rdx	# PL_sig_name, D.15981
	movq	-72(%rbp), %rax	# sv, tmp413
	movq	%rdx, %rsi	# D.15981,
	movq	%rax, %rdi	# tmp413,
	call	Perl_sv_setpv	#
.L793:
.LBB75:
	.loc 1 2641 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.783
	movq	40(%rax), %rax	# PL_curstackinfo.783_137->si_next, tmp414
	movq	%rax, -56(%rbp)	# tmp414, next
	cmpq	$0, -56(%rbp)	#, next
	jne	.L794	#,
	.loc 1 2641 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -56(%rbp)	# tmp415, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.784
	movq	-56(%rbp), %rax	# next, tmp416
	movq	%rdx, 32(%rax)	# PL_curstackinfo.784, next_139->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.785
	movq	-56(%rbp), %rdx	# next, tmp417
	movq	%rdx, 40(%rax)	# tmp417, PL_curstackinfo.785_141->si_next
.L794:
	.loc 1 2641 0 discriminator 2
	movq	-56(%rbp), %rax	# next, tmp418
	movl	$4, 24(%rax)	#, next_4->si_type
	movq	-56(%rbp), %rax	# next, tmp419
	movl	$-1, 16(%rax)	#, next_4->si_cxix
	movq	-56(%rbp), %rax	# next, tmp420
	movq	(%rax), %rax	# next_4->si_stack, D.15992
	movq	(%rax), %rax	# _142->sv_any, D.15993
	movq	$0, 8(%rax)	#, _143->xav_fill
.LBB76:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.786
	movq	(%rax), %rax	# PL_curstack.786_144->sv_any, D.15993
	movq	%rbx, %rcx	# sp, sp.787
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.788
	subq	%rdx, %rcx	# PL_stack_base.789, D.15994
	movq	%rcx, %rdx	# D.15994, D.15994
	sarq	$3, %rdx	#, tmp421
	movq	%rdx, 8(%rax)	# D.15994, _145->xav_fill
	movq	-56(%rbp), %rax	# next, tmp422
	movq	(%rax), %rax	# next_4->si_stack, D.15992
	movq	(%rax), %rax	# _151->sv_any, D.15993
	movq	(%rax), %rax	# _152->xav_array, PL_stack_base.790
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.790, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.791
	movq	-56(%rbp), %rax	# next, tmp423
	movq	(%rax), %rax	# next_4->si_stack, D.15992
	movq	(%rax), %rax	# _155->sv_any, D.15993
	movq	16(%rax), %rax	# _156->xav_max, D.15994
	salq	$3, %rax	#, D.15978
	addq	%rdx, %rax	# PL_stack_base.791, PL_stack_max.792
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.792, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.793
	movq	-56(%rbp), %rax	# next, tmp424
	movq	(%rax), %rax	# next_4->si_stack, D.15992
	movq	(%rax), %rax	# _162->sv_any, D.15993
	movq	8(%rax), %rax	# _163->xav_fill, D.15994
	salq	$3, %rax	#, D.15978
	addq	%rdx, %rax	# PL_stack_base.793, PL_stack_sp.794
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.794, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-56(%rbp), %rax	# next, tmp425
	movq	(%rax), %rax	# next_4->si_stack, PL_curstack.795
	movq	%rax, PL_curstack(%rip)	# PL_curstack.795, PL_curstack
.LBE76:
	movq	-56(%rbp), %rax	# next, tmp426
	movq	%rax, PL_curstackinfo(%rip)	# tmp426, PL_curstackinfo
.LBE75:
.LBB77:
	.loc 1 2642 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.796
	addq	$4, %rax	#, PL_markstack_ptr.797
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.797, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.798
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.799
	cmpq	%rax, %rdx	# PL_markstack_max.799, PL_markstack_ptr.798
	jne	.L795	#,
	.loc 1 2642 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L795:
	.loc 1 2642 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.800
	movq	%rbx, %rcx	# sp, sp.801
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.802
	subq	%rdx, %rcx	# PL_stack_base.803, D.15994
	movq	%rcx, %rdx	# D.15994, D.15994
	sarq	$3, %rdx	#, tmp427
	movl	%edx, (%rax)	# D.15976, *PL_markstack_ptr.800_175
.LBE77:
	.loc 1 2643 0 is_stmt 1 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-72(%rbp), %rax	# sv, tmp428
	movq	%rax, (%rbx)	# tmp428, *sp_183
	.loc 1 2644 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2646 0 discriminator 2
	movq	-64(%rbp), %rax	# cv, tmp429
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp429,
	call	Perl_call_sv	#
.LBB78:
	.loc 1 2648 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.804
	movq	32(%rax), %rax	# PL_curstackinfo.804_185->si_prev, tmp430
	movq	%rax, -24(%rbp)	# tmp430, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L796	#,
	.loc 1 2648 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.806
	testq	%rax, %rax	# PL_stderrgv.806
	je	.L797	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.807
	movl	12(%rax), %eax	# PL_stderrgv.807_188->sv_flags, D.15982
	movzbl	%al, %eax	# D.15982, D.15982
	cmpl	$13, %eax	#, D.15982
	jne	.L797	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.808
	movq	(%rax), %rax	# PL_stderrgv.808_191->sv_any, D.15983
	movq	56(%rax), %rax	# _192->xgv_gp, D.15984
	movq	16(%rax), %rax	# _193->gp_io, D.15985
	testq	%rax, %rax	# D.15985
	je	.L797	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.809
	movq	(%rax), %rax	# PL_stderrgv.809_195->sv_any, D.15983
	movq	56(%rax), %rax	# _196->xgv_gp, D.15984
	movq	16(%rax), %rax	# _197->gp_io, D.15985
	movq	(%rax), %rax	# _198->sv_any, D.15986
	movq	64(%rax), %rax	# _199->xio_ofp, D.15987
	testq	%rax, %rax	# D.15987
	je	.L797	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.810
	movq	(%rax), %rax	# PL_stderrgv.810_201->sv_any, D.15983
	movq	56(%rax), %rax	# _202->xgv_gp, D.15984
	movq	16(%rax), %rax	# _203->gp_io, D.15985
	movq	(%rax), %rax	# _204->sv_any, D.15986
	movq	64(%rax), %rax	# _205->xio_ofp, iftmp.805
	jmp	.L798	#
.L797:
	.loc 1 2648 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L798:
	.loc 1 2648 0 discriminator 3
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# iftmp.805,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L796:
.LBB79:
	.loc 1 2648 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.811
	movq	(%rax), %rax	# PL_curstack.811_208->sv_any, D.15993
	movq	%rbx, %rcx	# sp, sp.812
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.813
	subq	%rdx, %rcx	# PL_stack_base.814, D.15994
	movq	%rcx, %rdx	# D.15994, D.15994
	sarq	$3, %rdx	#, tmp431
	movq	%rdx, 8(%rax)	# D.15994, _209->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp432
	movq	(%rax), %rax	# prev_186->si_stack, D.15992
	movq	(%rax), %rax	# _215->sv_any, D.15993
	movq	(%rax), %rax	# _216->xav_array, PL_stack_base.815
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.815, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.816
	movq	-24(%rbp), %rax	# prev, tmp433
	movq	(%rax), %rax	# prev_186->si_stack, D.15992
	movq	(%rax), %rax	# _219->sv_any, D.15993
	movq	16(%rax), %rax	# _220->xav_max, D.15994
	salq	$3, %rax	#, D.15978
	addq	%rdx, %rax	# PL_stack_base.816, PL_stack_max.817
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.817, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.818
	movq	-24(%rbp), %rax	# prev, tmp434
	movq	(%rax), %rax	# prev_186->si_stack, D.15992
	movq	(%rax), %rax	# _226->sv_any, D.15993
	movq	8(%rax), %rax	# _227->xav_fill, D.15994
	salq	$3, %rax	#, D.15978
	addq	%rdx, %rax	# PL_stack_base.818, PL_stack_sp.819
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.819, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp435
	movq	(%rax), %rax	# prev_186->si_stack, PL_curstack.820
	movq	%rax, PL_curstack(%rip)	# PL_curstack.820, PL_curstack
.LBE79:
	movq	-24(%rbp), %rax	# prev, tmp436
	movq	%rax, PL_curstackinfo(%rip)	# tmp436, PL_curstackinfo
.LBE78:
	.loc 1 2649 0 is_stmt 1 discriminator 2
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.822
	movq	(%rax), %rax	# PL_errgv.822_236->sv_any, D.15983
	movq	56(%rax), %rax	# _237->xgv_gp, D.15984
	movq	(%rax), %rax	# _238->gp_sv, D.15980
	testq	%rax, %rax	# D.15980
	je	.L799	#,
	.loc 1 2649 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.824
	movq	(%rax), %rax	# PL_errgv.824_240->sv_any, D.15983
	movq	56(%rax), %rax	# _241->xgv_gp, D.15984
	movq	(%rax), %rax	# _242->gp_sv, D.15980
	movl	12(%rax), %eax	# _243->sv_flags, D.15982
	andl	$262144, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L800	#,
	.loc 1 2649 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.826
	movq	(%rax), %rax	# PL_errgv.826_246->sv_any, D.15983
	movq	56(%rax), %rax	# _247->xgv_gp, D.15984
	movq	(%rax), %rax	# _248->gp_sv, D.15980
	movq	(%rax), %rax	# _249->sv_any, PL_Xpv.827
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.827, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.828
	testq	%rax, %rax	# PL_Xpv.828
	je	.L801	#,
	.loc 1 2649 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.829
	movq	8(%rax), %rax	# PL_Xpv.829_252->xpv_cur, D.15978
	cmpq	$1, %rax	#, D.15978
	ja	.L802	#,
	.loc 1 2649 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.830
	movq	8(%rax), %rax	# PL_Xpv.830_254->xpv_cur, D.15978
	testq	%rax, %rax	# D.15978
	je	.L801	#,
	.loc 1 2649 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.831
	movq	(%rax), %rax	# PL_Xpv.831_256->xpv_pv, D.15981
	movzbl	(%rax), %eax	# *_257, D.15997
	cmpb	$48, %al	#, D.15997
	je	.L801	#,
.L802:
	.loc 1 2649 0 discriminator 7
	movl	$1, %eax	#, iftmp.825
	jmp	.L803	#
.L801:
	.loc 1 2649 0 discriminator 6
	movl	$0, %eax	#, iftmp.825
.L803:
	.loc 1 2649 0 discriminator 9
	andl	$1, %eax	#, iftmp.823
	jmp	.L809	#
.L800:
	.loc 1 2649 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.833
	movq	(%rax), %rax	# PL_errgv.833_262->sv_any, D.15983
	movq	56(%rax), %rax	# _263->xgv_gp, D.15984
	movq	(%rax), %rax	# _264->gp_sv, D.15980
	movl	12(%rax), %eax	# _265->sv_flags, D.15982
	andl	$65536, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L805	#,
	.loc 1 2649 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.834
	movq	(%rax), %rax	# PL_errgv.834_268->sv_any, D.15983
	movq	56(%rax), %rax	# _269->xgv_gp, D.15984
	movq	(%rax), %rax	# _270->gp_sv, D.15980
	movq	(%rax), %rax	# _271->sv_any, D.15989
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_272].xiv_iv, D.15994
	testq	%rax, %rax	# D.15994
	setne	%al	#, iftmp.832
	jmp	.L809	#
.L805:
	.loc 1 2649 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.836
	movq	(%rax), %rax	# PL_errgv.836_275->sv_any, D.15983
	movq	56(%rax), %rax	# _276->xgv_gp, D.15984
	movq	(%rax), %rax	# _277->gp_sv, D.15980
	movl	12(%rax), %eax	# _278->sv_flags, D.15982
	andl	$131072, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L807	#,
	.loc 1 2649 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.837
	movq	(%rax), %rax	# PL_errgv.837_281->sv_any, D.15983
	movq	56(%rax), %rax	# _282->xgv_gp, D.15984
	movq	(%rax), %rax	# _283->gp_sv, D.15980
	movq	(%rax), %rax	# _284->sv_any, D.15989
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_285].xnv_nv, D.15998
	xorpd	%xmm1, %xmm1	# tmp438
	ucomisd	%xmm1, %xmm0	# tmp438, D.15998
	setp	%dl	#, tmp437
	movl	$1, %eax	#, tmp440
	xorpd	%xmm1, %xmm1	# tmp439
	ucomisd	%xmm1, %xmm0	# tmp439, D.15998
	cmove	%edx, %eax	# tmp437,, iftmp.835
	jmp	.L809	#
.L807:
	.loc 1 2649 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.838
	movq	(%rax), %rax	# PL_errgv.838_288->sv_any, D.15983
	movq	56(%rax), %rax	# _289->xgv_gp, D.15984
	movq	(%rax), %rax	# _290->gp_sv, D.15980
	movq	%rax, %rdi	# D.15980,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.15997
	setne	%al	#, iftmp.835
	jmp	.L809	#
.L799:
	.loc 1 2649 0 discriminator 2
	movl	$0, %eax	#, iftmp.821
.L809:
	.loc 1 2649 0 discriminator 16
	testb	%al, %al	# iftmp.821
	je	.L789	#,
	.loc 1 2662 0 is_stmt 1
	movl	-100(%rbp), %eax	# sig, tmp441
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp441,
	call	Perl_rsignal	#
	.loc 1 2663 0
	movq	PL_csighandlerp(%rip), %rdx	# PL_csighandlerp, PL_csighandlerp.839
	movl	-100(%rbp), %eax	# sig, tmp442
	movq	%rdx, %rsi	# PL_csighandlerp.839,
	movl	%eax, %edi	# tmp442,
	call	Perl_rsignal	#
	.loc 1 2666 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
.L789:
	.loc 1 2669 0
	movl	-92(%rbp), %eax	# flags, flags.840
	andl	$1, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L810	#,
	.loc 1 2670 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.841
	subl	$8, %eax	#, PL_savestack_ix.842
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.842, PL_savestack_ix
.L810:
	.loc 1 2671 0
	movl	-92(%rbp), %eax	# flags, flags.843
	andl	$4, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L811	#,
	.loc 1 2672 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.844
	subq	$4, %rax	#, PL_markstack_ptr.845
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.845, PL_markstack_ptr
.L811:
	.loc 1 2673 0
	movl	-92(%rbp), %eax	# flags, flags.846
	andl	$8, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L812	#,
	.loc 1 2674 0
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.847
	subl	$1, %eax	#, PL_retstack_ix.848
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.848, PL_retstack_ix
.L812:
	.loc 1 2675 0
	movl	-92(%rbp), %eax	# flags, flags.849
	andl	$16, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L813	#,
	.loc 1 2676 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.850
	subl	$1, %eax	#, PL_scopestack_ix.851
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.851, PL_scopestack_ix
.L813:
	.loc 1 2677 0
	movl	-92(%rbp), %eax	# flags, flags.852
	andl	$64, %eax	#, D.15982
	testl	%eax, %eax	# D.15982
	je	.L814	#,
	.loc 1 2678 0
	movq	-72(%rbp), %rax	# sv, tmp443
	movq	%rax, %rdi	# tmp443,
	call	Perl_sv_free	#
.L814:
	.loc 1 2679 0
	movq	-40(%rbp), %rax	# myop, tmp444
	movq	%rax, PL_op(%rip)	# tmp444, PL_op
	.loc 1 2681 0
	movq	-48(%rbp), %rax	# tSv, tmp445
	movq	%rax, PL_Sv(%rip)	# tmp445, PL_Sv
	.loc 1 2682 0
	movq	-32(%rbp), %rax	# tXpv, tmp446
	movq	%rax, PL_Xpv(%rip)	# tmp446, PL_Xpv
	.loc 1 2683 0
	nop
	.loc 1 2684 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	Perl_sighandler, .-Perl_sighandler
	.type	restore_magic, @function
restore_magic:
.LFB69:
	.loc 1 2689 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 2690 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.853
	movq	-40(%rbp), %rax	# p, p.854
	addq	%rdx, %rax	# PL_savestack.853, tmp100
	movq	%rax, -16(%rbp)	# tmp100, mgs
	.loc 1 2691 0
	movq	-16(%rbp), %rax	# mgs, tmp101
	movq	(%rax), %rax	# mgs_4->mgs_sv, tmp102
	movq	%rax, -8(%rbp)	# tmp102, sv
	.loc 1 2693 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L817	#,
	.loc 1 2694 0
	jmp	.L816	#
.L817:
	.loc 1 2696 0
	movq	-8(%rbp), %rax	# sv, tmp103
	movl	12(%rax), %eax	# sv_5->sv_flags, D.16003
	movzbl	%al, %eax	# D.16003, D.16003
	cmpl	$6, %eax	#, D.16003
	jbe	.L819	#,
	.loc 1 2696 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp104
	movq	(%rax), %rax	# sv_5->sv_any, D.16004
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_8].xmg_magic, D.16005
	testq	%rax, %rax	# D.16005
	je	.L819	#,
	.loc 1 2698 0 is_stmt 1
	movq	-16(%rbp), %rax	# mgs, tmp105
	movl	8(%rax), %eax	# mgs_4->mgs_flags, D.16003
	testl	%eax, %eax	# D.16003
	je	.L820	#,
	.loc 1 2699 0
	movq	-8(%rbp), %rax	# sv, tmp106
	movl	12(%rax), %edx	# sv_5->sv_flags, D.16003
	movq	-16(%rbp), %rax	# mgs, tmp107
	movl	8(%rax), %eax	# mgs_4->mgs_flags, D.16003
	orl	%eax, %edx	# D.16003, D.16003
	movq	-8(%rbp), %rax	# sv, tmp108
	movl	%edx, 12(%rax)	# D.16003, sv_5->sv_flags
	jmp	.L821	#
.L820:
	.loc 1 2701 0
	movq	-8(%rbp), %rax	# sv, tmp109
	movq	%rax, %rdi	# tmp109,
	call	Perl_mg_magical	#
.L821:
	.loc 1 2702 0
	movq	-8(%rbp), %rax	# sv, tmp110
	movl	12(%rax), %eax	# sv_5->sv_flags, D.16003
	andl	$8192, %eax	#, D.16003
	testl	%eax, %eax	# D.16003
	je	.L819	#,
	.loc 1 2703 0
	movq	-8(%rbp), %rax	# sv, tmp111
	movl	12(%rax), %eax	# sv_5->sv_flags, D.16003
	andl	$-458753, %eax	#, D.16003
	movl	%eax, %edx	# D.16003, D.16003
	movq	-8(%rbp), %rax	# sv, tmp112
	movl	%edx, 12(%rax)	# D.16003, sv_5->sv_flags
.L819:
	.loc 1 2706 0
	movq	-16(%rbp), %rax	# mgs, tmp113
	movq	$0, (%rax)	#, mgs_4->mgs_sv
	.loc 1 2715 0
	movq	-16(%rbp), %rax	# mgs, tmp114
	movl	12(%rax), %edx	# mgs_4->mgs_ss_ix, D.16006
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.855
	cmpl	%eax, %edx	# PL_savestack_ix.855, D.16006
	jne	.L816	#,
.LBB80:
	.loc 1 2717 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.856
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.857
	subl	$1, %edx	#, PL_savestack_ix.858
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.858, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.859
	movslq	%edx, %rdx	# PL_savestack_ix.859, D.16007
	salq	$3, %rdx	#, D.16007
	addq	%rdx, %rax	# D.16007, D.16008
	movl	(%rax), %eax	# _26->any_i32, tmp115
	movl	%eax, -20(%rbp)	# tmp115, popval
	.loc 1 2719 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.860
	subl	$2, %eax	#, PL_savestack_ix.861
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.861, PL_savestack_ix
	.loc 1 2720 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.862
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.863
	subl	$1, %edx	#, PL_savestack_ix.864
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.864, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.865
	movslq	%edx, %rdx	# PL_savestack_ix.865, D.16007
	salq	$3, %rdx	#, D.16007
	addq	%rdx, %rax	# D.16007, D.16008
	movl	(%rax), %eax	# _36->any_i32, tmp116
	movl	%eax, -20(%rbp)	# tmp116, popval
	.loc 1 2722 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.866
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.867
	subl	$1, %edx	#, PL_savestack_ix.868
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.868, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.869
	movslq	%edx, %rdx	# PL_savestack_ix.869, D.16007
	salq	$3, %rdx	#, D.16007
	addq	%rdx, %rax	# D.16007, D.16008
	movl	(%rax), %eax	# _44->any_i32, tmp117
	movl	%eax, -20(%rbp)	# tmp117, popval
	.loc 1 2723 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.870
	subl	-20(%rbp), %eax	# popval, PL_savestack_ix.871
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.871, PL_savestack_ix
.L816:
.LBE80:
	.loc 1 2726 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	restore_magic, .-restore_magic
	.type	unwind_handler_stack, @function
unwind_handler_stack:
.LFB70:
	.loc 1 2730 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2731 0
	movq	-24(%rbp), %rax	# p, tmp64
	movl	(%rax), %eax	# MEM[(U32 *)p_1(D)], tmp65
	movl	%eax, -4(%rbp)	# tmp65, flags
	.loc 1 2733 0
	movl	-4(%rbp), %eax	# flags, tmp66
	andl	$1, %eax	#, D.16009
	testl	%eax, %eax	# D.16009
	je	.L823	#,
	.loc 1 2734 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.872
	subl	$5, %eax	#, PL_savestack_ix.873
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.873, PL_savestack_ix
.L823:
	.loc 1 2737 0
	movl	-4(%rbp), %eax	# flags, tmp67
	andl	$64, %eax	#, D.16009
	testl	%eax, %eax	# D.16009
	je	.L822	#,
	.loc 1 2738 0
	movq	sig_sv(%rip), %rax	# sig_sv, sig_sv.874
	movq	%rax, %rdi	# sig_sv.874,
	call	Perl_sv_free	#
.L822:
	.loc 1 2740 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	unwind_handler_stack, .-unwind_handler_stack
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stat.h"
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
	.file 20 "iperlsys.h"
	.file 21 "pad.h"
	.file 22 "/usr/include/signal.h"
	.file 23 "intrpvar.h"
	.file 24 "thrdvar.h"
	.file 25 "perlvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e18
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF611
	.byte	0x1
	.long	.LASF612
	.long	.LASF613
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
	.byte	0x2
	.byte	0x85
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x86
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x87
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x88
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x8a
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x8b
	.long	0x42
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
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
	.byte	0x3
	.byte	0x41
	.long	0x7b
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x50
	.long	0x70
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x6d
	.long	0xdc
	.uleb128 0x4
	.long	.LASF24
	.byte	0x4
	.byte	0x4b
	.long	0xb9
	.uleb128 0x4
	.long	.LASF25
	.byte	0x5
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.long	.LASF30
	.byte	0x10
	.byte	0x4
	.byte	0x78
	.long	0x15b
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x7a
	.long	0xb9
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x7b
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF28
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0x9
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0x174
	.uleb128 0xa
	.long	0xf8
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x7
	.long	.LASF31
	.byte	0x90
	.byte	0x6
	.byte	0x2e
	.long	0x240
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x4e
	.long	0xc6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x50
	.long	0xd1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x5b
	.long	0x136
	.byte	0x48
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x5c
	.long	0x136
	.byte	0x58
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x5d
	.long	0x136
	.byte	0x68
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0x6a
	.long	0x240
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0xe7
	.long	0x250
	.uleb128 0xc
	.long	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	0xf8
	.long	0x260
	.uleb128 0xc
	.long	0xb2
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.string	"DIR"
	.byte	0x7
	.byte	0x80
	.long	0x26b
	.uleb128 0xe
	.long	.LASF238
	.uleb128 0xf
	.string	"IV"
	.byte	0x8
	.value	0x52b
	.long	0x5e
	.uleb128 0xf
	.string	"UV"
	.byte	0x8
	.value	0x52c
	.long	0x42
	.uleb128 0xf
	.string	"NV"
	.byte	0x8
	.value	0x5f3
	.long	0x291
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x10
	.long	.LASF48
	.byte	0x8
	.value	0x7d3
	.long	0x12b
	.uleb128 0xf
	.string	"OP"
	.byte	0x8
	.value	0x7d5
	.long	0x2af
	.uleb128 0x11
	.string	"op"
	.byte	0x28
	.byte	0x9
	.byte	0xe2
	.long	0x31b
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xe3
	.long	0x124f
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xe3
	.long	0x124f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xe3
	.long	0x12de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xe3
	.long	0x12c8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xe3
	.long	0x109a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xe3
	.long	0x109a
	.byte	0x22
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xe3
	.long	0x1090
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0xe3
	.long	0x1090
	.byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"COP"
	.byte	0x8
	.value	0x7d6
	.long	0x327
	.uleb128 0x11
	.string	"cop"
	.byte	0x60
	.byte	0xa
	.byte	0x10
	.long	0x3f4
	.uleb128 0x8
	.long	.LASF49
	.byte	0xa
	.byte	0x11
	.long	0x124f
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0xa
	.byte	0x11
	.long	0x124f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0xa
	.byte	0x11
	.long	0x12de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0xa
	.byte	0x11
	.long	0x12c8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0xa
	.byte	0x11
	.long	0x109a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0xa
	.byte	0x11
	.long	0x109a
	.byte	0x22
	.uleb128 0x8
	.long	.LASF55
	.byte	0xa
	.byte	0x11
	.long	0x1090
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0xa
	.byte	0x11
	.long	0x1090
	.byte	0x25
	.uleb128 0x8
	.long	.LASF57
	.byte	0xa
	.byte	0x12
	.long	0xf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF58
	.byte	0xa
	.byte	0x17
	.long	0x1237
	.byte	0x30
	.uleb128 0x8
	.long	.LASF59
	.byte	0xa
	.byte	0x18
	.long	0x126c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF60
	.byte	0xa
	.byte	0x1a
	.long	0x10b0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x1b
	.long	0x10a5
	.byte	0x44
	.uleb128 0x8
	.long	.LASF62
	.byte	0xa
	.byte	0x1c
	.long	0x10bb
	.byte	0x48
	.uleb128 0x8
	.long	.LASF63
	.byte	0xa
	.byte	0x1d
	.long	0x10d8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF64
	.byte	0xa
	.byte	0x1e
	.long	0x10d8
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.value	0x7db
	.long	0x400
	.uleb128 0x7
	.long	.LASF66
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x4ee
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xfe
	.long	0x124f
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xfe
	.long	0x124f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xfe
	.long	0x12de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xfe
	.long	0x12c8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xfe
	.long	0x109a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xfe
	.long	0x109a
	.byte	0x22
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xfe
	.long	0x1090
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0xfe
	.long	0x1090
	.byte	0x25
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0xff
	.long	0x124f
	.byte	0x28
	.uleb128 0x12
	.long	.LASF68
	.byte	0x9
	.value	0x100
	.long	0x124f
	.byte	0x30
	.uleb128 0x12
	.long	.LASF69
	.byte	0x9
	.value	0x101
	.long	0x124f
	.byte	0x38
	.uleb128 0x12
	.long	.LASF70
	.byte	0x9
	.value	0x102
	.long	0x124f
	.byte	0x40
	.uleb128 0x12
	.long	.LASF71
	.byte	0x9
	.value	0x103
	.long	0x12e4
	.byte	0x48
	.uleb128 0x12
	.long	.LASF72
	.byte	0x9
	.value	0x107
	.long	0x12ea
	.byte	0x50
	.uleb128 0x12
	.long	.LASF73
	.byte	0x9
	.value	0x109
	.long	0x10b0
	.byte	0x58
	.uleb128 0x12
	.long	.LASF74
	.byte	0x9
	.value	0x10a
	.long	0x10b0
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF75
	.byte	0x9
	.value	0x10b
	.long	0x1090
	.byte	0x60
	.uleb128 0x12
	.long	.LASF76
	.byte	0x9
	.value	0x10f
	.long	0x1237
	.byte	0x68
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x8
	.value	0x7e1
	.long	0x4fa
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x515
	.uleb128 0x12
	.long	.LASF79
	.byte	0x8
	.value	0xea8
	.long	0xf8
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x520
	.uleb128 0x11
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x550
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x44
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x45
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x46
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x55b
	.uleb128 0x11
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x58b
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x56
	.long	0x121f
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x57
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x58
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x596
	.uleb128 0x11
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x5c6
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x5c
	.long	0x1225
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x5d
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x5e
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x5d1
	.uleb128 0x11
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x601
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x50
	.long	0x1219
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x51
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x52
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF83
	.byte	0x8
	.value	0x7ee
	.long	0x60d
	.uleb128 0x7
	.long	.LASF84
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x6e6
	.uleb128 0x8
	.long	.LASF85
	.byte	0xc
	.byte	0x20
	.long	0x1167
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0xc
	.byte	0x21
	.long	0x1167
	.byte	0x8
	.uleb128 0x8
	.long	.LASF87
	.byte	0xc
	.byte	0x22
	.long	0x116d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF88
	.byte	0xc
	.byte	0x23
	.long	0x1178
	.byte	0x18
	.uleb128 0x8
	.long	.LASF89
	.byte	0xc
	.byte	0x24
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF90
	.byte	0xc
	.byte	0x25
	.long	0x1183
	.byte	0x28
	.uleb128 0x8
	.long	.LASF91
	.byte	0xc
	.byte	0x26
	.long	0xf2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF92
	.byte	0xc
	.byte	0x28
	.long	0x1189
	.byte	0x38
	.uleb128 0x8
	.long	.LASF93
	.byte	0xc
	.byte	0x29
	.long	0x10a5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x2a
	.long	0x10a5
	.byte	0x44
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x2b
	.long	0x10a5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x2c
	.long	0x10a5
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x2d
	.long	0x10b0
	.byte	0x50
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x2e
	.long	0x10b0
	.byte	0x54
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x2f
	.long	0x10b0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x30
	.long	0x10b0
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x32
	.long	0x118f
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x6f1
	.uleb128 0x11
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x78d
	.uleb128 0x8
	.long	.LASF102
	.byte	0xd
	.byte	0xc
	.long	0x10d8
	.byte	0
	.uleb128 0x8
	.long	.LASF103
	.byte	0xd
	.byte	0xd
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF104
	.byte	0xd
	.byte	0xe
	.long	0x12ac
	.byte	0x10
	.uleb128 0x8
	.long	.LASF105
	.byte	0xd
	.byte	0xf
	.long	0x1260
	.byte	0x18
	.uleb128 0x8
	.long	.LASF106
	.byte	0xd
	.byte	0x10
	.long	0x1272
	.byte	0x20
	.uleb128 0x8
	.long	.LASF107
	.byte	0xd
	.byte	0x11
	.long	0x1237
	.byte	0x28
	.uleb128 0x8
	.long	.LASF108
	.byte	0xd
	.byte	0x12
	.long	0x126c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0x13
	.long	0x1260
	.byte	0x38
	.uleb128 0x8
	.long	.LASF110
	.byte	0xd
	.byte	0x14
	.long	0x10b0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0x15
	.long	0x10b0
	.byte	0x44
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0x16
	.long	0x10bb
	.byte	0x48
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x17
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x798
	.uleb128 0x11
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x7c8
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x4a
	.long	0x1213
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x4b
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x4c
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"IO"
	.byte	0x8
	.value	0x7f1
	.long	0x7d3
	.uleb128 0x11
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x803
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0x62
	.long	0x122b
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x63
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x64
	.long	0x10b0
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF114
	.byte	0x8
	.value	0x7f2
	.long	0x80f
	.uleb128 0x13
	.long	.LASF115
	.byte	0x90
	.byte	0xa
	.value	0x1a2
	.long	0x837
	.uleb128 0x12
	.long	.LASF116
	.byte	0xa
	.value	0x1a3
	.long	0x10b0
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xa
	.value	0x1a7
	.long	0x1551
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x88
	.byte	0xa
	.value	0x130
	.long	0x8ad
	.uleb128 0x12
	.long	.LASF119
	.byte	0xa
	.value	0x131
	.long	0x10a5
	.byte	0
	.uleb128 0x12
	.long	.LASF120
	.byte	0xa
	.value	0x132
	.long	0x1487
	.byte	0x8
	.uleb128 0x12
	.long	.LASF121
	.byte	0xa
	.value	0x133
	.long	0x10a5
	.byte	0x10
	.uleb128 0x12
	.long	.LASF122
	.byte	0xa
	.value	0x134
	.long	0x10a5
	.byte	0x14
	.uleb128 0x12
	.long	.LASF123
	.byte	0xa
	.value	0x135
	.long	0x10a5
	.byte	0x18
	.uleb128 0x12
	.long	.LASF124
	.byte	0xa
	.value	0x136
	.long	0x12e4
	.byte	0x20
	.uleb128 0x12
	.long	.LASF125
	.byte	0xa
	.value	0x137
	.long	0x1090
	.byte	0x28
	.uleb128 0x12
	.long	.LASF126
	.byte	0xa
	.value	0x13d
	.long	0x1459
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF127
	.byte	0x8
	.value	0x7f5
	.long	0x8b9
	.uleb128 0x7
	.long	.LASF128
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x926
	.uleb128 0x8
	.long	.LASF129
	.byte	0xe
	.byte	0x1b
	.long	0x1231
	.byte	0
	.uleb128 0x8
	.long	.LASF130
	.byte	0xe
	.byte	0x1c
	.long	0x1700
	.byte	0x8
	.uleb128 0x8
	.long	.LASF131
	.byte	0xe
	.byte	0x1d
	.long	0x109a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF132
	.byte	0xe
	.byte	0x1e
	.long	0xf8
	.byte	0x12
	.uleb128 0x8
	.long	.LASF133
	.byte	0xe
	.byte	0x1f
	.long	0x1090
	.byte	0x13
	.uleb128 0x8
	.long	.LASF134
	.byte	0xe
	.byte	0x20
	.long	0x10d8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF135
	.byte	0xe
	.byte	0x21
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x22
	.long	0x10a5
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0x932
	.uleb128 0x11
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0x94b
	.uleb128 0x8
	.long	.LASF137
	.byte	0xb
	.byte	0xf6
	.long	0x10d8
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0x957
	.uleb128 0x11
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x988
	.uleb128 0x8
	.long	.LASF138
	.byte	0xb
	.byte	0xfa
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0xb
	.byte	0xfb
	.long	0x298
	.byte	0x8
	.uleb128 0x8
	.long	.LASF140
	.byte	0xb
	.byte	0xfc
	.long	0x298
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF141
	.byte	0x8
	.value	0x7f8
	.long	0x994
	.uleb128 0x7
	.long	.LASF142
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0x9d5
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x100
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x101
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x102
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x103
	.long	0x270
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF144
	.byte	0x8
	.value	0x7fa
	.long	0x9e1
	.uleb128 0x13
	.long	.LASF145
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0xa30
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x10e
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x10f
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x110
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x111
	.long	0x270
	.byte	0x18
	.uleb128 0x12
	.long	.LASF146
	.byte	0xb
	.value	0x112
	.long	0x286
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF147
	.byte	0x8
	.value	0x7fb
	.long	0xa3c
	.uleb128 0x13
	.long	.LASF148
	.byte	0x38
	.byte	0xb
	.value	0x116
	.long	0xaa5
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x117
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x118
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x119
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x11a
	.long	0x270
	.byte	0x18
	.uleb128 0x12
	.long	.LASF146
	.byte	0xb
	.value	0x11b
	.long	0x286
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0xb
	.value	0x11c
	.long	0x1231
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0xb
	.value	0x11d
	.long	0x1237
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF151
	.byte	0x8
	.value	0x7fc
	.long	0xab1
	.uleb128 0x13
	.long	.LASF152
	.byte	0x58
	.byte	0xb
	.value	0x120
	.long	0xb4e
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x121
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x122
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x123
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x124
	.long	0x270
	.byte	0x18
	.uleb128 0x12
	.long	.LASF146
	.byte	0xb
	.value	0x125
	.long	0x286
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0xb
	.value	0x126
	.long	0x1231
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0xb
	.value	0x127
	.long	0x1237
	.byte	0x30
	.uleb128 0x12
	.long	.LASF153
	.byte	0xb
	.value	0x129
	.long	0x298
	.byte	0x38
	.uleb128 0x12
	.long	.LASF154
	.byte	0xb
	.value	0x12a
	.long	0x298
	.byte	0x40
	.uleb128 0x12
	.long	.LASF155
	.byte	0xb
	.value	0x12b
	.long	0x10d8
	.byte	0x48
	.uleb128 0x12
	.long	.LASF156
	.byte	0xb
	.value	0x12c
	.long	0xf8
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF157
	.byte	0x8
	.value	0x7fd
	.long	0xb5a
	.uleb128 0x7
	.long	.LASF158
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0xbdf
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0xc
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF160
	.byte	0xf
	.byte	0xd
	.long	0x115
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0xf
	.byte	0xe
	.long	0x115
	.byte	0x10
	.uleb128 0x8
	.long	.LASF162
	.byte	0xf
	.byte	0xf
	.long	0x270
	.byte	0x18
	.uleb128 0x8
	.long	.LASF146
	.byte	0xf
	.byte	0x10
	.long	0x286
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0xf
	.byte	0x11
	.long	0x1231
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0xf
	.byte	0x12
	.long	0x1237
	.byte	0x30
	.uleb128 0x8
	.long	.LASF163
	.byte	0xf
	.byte	0x14
	.long	0x1453
	.byte	0x38
	.uleb128 0x8
	.long	.LASF164
	.byte	0xf
	.byte	0x15
	.long	0x10d8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF165
	.byte	0xf
	.byte	0x16
	.long	0x1090
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.long	.LASF166
	.byte	0x8
	.value	0x7fe
	.long	0xbeb
	.uleb128 0x7
	.long	.LASF167
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0xc7c
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x23
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x10
	.byte	0x24
	.long	0x298
	.byte	0x8
	.uleb128 0x8
	.long	.LASF170
	.byte	0x10
	.byte	0x25
	.long	0x298
	.byte	0x10
	.uleb128 0x8
	.long	.LASF171
	.byte	0x10
	.byte	0x26
	.long	0x270
	.byte	0x18
	.uleb128 0x8
	.long	.LASF146
	.byte	0x10
	.byte	0x27
	.long	0x286
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x10
	.byte	0x29
	.long	0x1231
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0x10
	.byte	0x2a
	.long	0x1237
	.byte	0x30
	.uleb128 0x8
	.long	.LASF172
	.byte	0x10
	.byte	0x2c
	.long	0x10a5
	.byte	0x38
	.uleb128 0x8
	.long	.LASF173
	.byte	0x10
	.byte	0x2d
	.long	0x1677
	.byte	0x40
	.uleb128 0x8
	.long	.LASF174
	.byte	0x10
	.byte	0x2e
	.long	0x12e4
	.byte	0x48
	.uleb128 0x8
	.long	.LASF175
	.byte	0x10
	.byte	0x2f
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF176
	.byte	0x8
	.value	0x7ff
	.long	0xc88
	.uleb128 0x13
	.long	.LASF177
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xd32
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x131
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x132
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x133
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x134
	.long	0x270
	.byte	0x18
	.uleb128 0x12
	.long	.LASF146
	.byte	0xb
	.value	0x135
	.long	0x286
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0xb
	.value	0x136
	.long	0x1231
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0xb
	.value	0x137
	.long	0x1237
	.byte	0x30
	.uleb128 0x12
	.long	.LASF178
	.byte	0xb
	.value	0x139
	.long	0x123d
	.byte	0x38
	.uleb128 0x12
	.long	.LASF179
	.byte	0xb
	.value	0x13a
	.long	0xf2
	.byte	0x40
	.uleb128 0x12
	.long	.LASF180
	.byte	0xb
	.value	0x13b
	.long	0x298
	.byte	0x48
	.uleb128 0x12
	.long	.LASF181
	.byte	0xb
	.value	0x13c
	.long	0x1237
	.byte	0x50
	.uleb128 0x12
	.long	.LASF182
	.byte	0xb
	.value	0x13d
	.long	0x1090
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF183
	.byte	0x8
	.value	0x800
	.long	0xd3e
	.uleb128 0x7
	.long	.LASF184
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0xe2f
	.uleb128 0x8
	.long	.LASF138
	.byte	0x11
	.byte	0xf
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0x11
	.byte	0x10
	.long	0x298
	.byte	0x8
	.uleb128 0x8
	.long	.LASF140
	.byte	0x11
	.byte	0x11
	.long	0x298
	.byte	0x10
	.uleb128 0x8
	.long	.LASF162
	.byte	0x11
	.byte	0x12
	.long	0x270
	.byte	0x18
	.uleb128 0x8
	.long	.LASF146
	.byte	0x11
	.byte	0x13
	.long	0x286
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x11
	.byte	0x14
	.long	0x1231
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0x11
	.byte	0x15
	.long	0x1237
	.byte	0x30
	.uleb128 0x8
	.long	.LASF185
	.byte	0x11
	.byte	0x17
	.long	0x1237
	.byte	0x38
	.uleb128 0x8
	.long	.LASF186
	.byte	0x11
	.byte	0x18
	.long	0x124f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF187
	.byte	0x11
	.byte	0x19
	.long	0x124f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF188
	.byte	0x11
	.byte	0x1a
	.long	0x1266
	.byte	0x50
	.uleb128 0x8
	.long	.LASF189
	.byte	0x11
	.byte	0x1b
	.long	0xfe1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF190
	.byte	0x11
	.byte	0x1c
	.long	0x126c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF191
	.byte	0x11
	.byte	0x1d
	.long	0xf2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF192
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF193
	.byte	0x11
	.byte	0x1f
	.long	0x12d3
	.byte	0x78
	.uleb128 0x8
	.long	.LASF194
	.byte	0x11
	.byte	0x20
	.long	0x1260
	.byte	0x80
	.uleb128 0x8
	.long	.LASF195
	.byte	0x11
	.byte	0x25
	.long	0x1243
	.byte	0x88
	.uleb128 0x8
	.long	.LASF196
	.byte	0x11
	.byte	0x26
	.long	0x10b0
	.byte	0x8c
	.byte	0
	.uleb128 0x10
	.long	.LASF197
	.byte	0x8
	.value	0x803
	.long	0xe3b
	.uleb128 0x13
	.long	.LASF198
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xf74
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x171
	.long	0xf2
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xb
	.value	0x172
	.long	0x298
	.byte	0x8
	.uleb128 0x12
	.long	.LASF140
	.byte	0xb
	.value	0x173
	.long	0x298
	.byte	0x10
	.uleb128 0x12
	.long	.LASF143
	.byte	0xb
	.value	0x174
	.long	0x270
	.byte	0x18
	.uleb128 0x12
	.long	.LASF146
	.byte	0xb
	.value	0x175
	.long	0x286
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0xb
	.value	0x176
	.long	0x1231
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0xb
	.value	0x177
	.long	0x1237
	.byte	0x30
	.uleb128 0x12
	.long	.LASF199
	.byte	0xb
	.value	0x179
	.long	0x12a0
	.byte	0x38
	.uleb128 0x12
	.long	.LASF200
	.byte	0xb
	.value	0x17a
	.long	0x12a0
	.byte	0x40
	.uleb128 0x12
	.long	.LASF201
	.byte	0xb
	.value	0x187
	.long	0x1278
	.byte	0x48
	.uleb128 0x12
	.long	.LASF202
	.byte	0xb
	.value	0x188
	.long	0x270
	.byte	0x50
	.uleb128 0x12
	.long	.LASF203
	.byte	0xb
	.value	0x189
	.long	0x270
	.byte	0x58
	.uleb128 0x12
	.long	.LASF204
	.byte	0xb
	.value	0x18a
	.long	0x270
	.byte	0x60
	.uleb128 0x12
	.long	.LASF205
	.byte	0xb
	.value	0x18b
	.long	0x270
	.byte	0x68
	.uleb128 0x12
	.long	.LASF206
	.byte	0xb
	.value	0x18c
	.long	0xf2
	.byte	0x70
	.uleb128 0x12
	.long	.LASF207
	.byte	0xb
	.value	0x18d
	.long	0x126c
	.byte	0x78
	.uleb128 0x12
	.long	.LASF208
	.byte	0xb
	.value	0x18e
	.long	0xf2
	.byte	0x80
	.uleb128 0x12
	.long	.LASF209
	.byte	0xb
	.value	0x18f
	.long	0x126c
	.byte	0x88
	.uleb128 0x12
	.long	.LASF210
	.byte	0xb
	.value	0x190
	.long	0xf2
	.byte	0x90
	.uleb128 0x12
	.long	.LASF211
	.byte	0xb
	.value	0x191
	.long	0x126c
	.byte	0x98
	.uleb128 0x12
	.long	.LASF212
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF213
	.byte	0xb
	.value	0x193
	.long	0xf8
	.byte	0xa2
	.uleb128 0x12
	.long	.LASF214
	.byte	0xb
	.value	0x194
	.long	0xf8
	.byte	0xa3
	.byte	0
	.uleb128 0x10
	.long	.LASF215
	.byte	0x8
	.value	0x804
	.long	0xf80
	.uleb128 0x7
	.long	.LASF216
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xfe1
	.uleb128 0x8
	.long	.LASF217
	.byte	0xe
	.byte	0xf
	.long	0x1697
	.byte	0
	.uleb128 0x8
	.long	.LASF218
	.byte	0xe
	.byte	0x10
	.long	0x1697
	.byte	0x8
	.uleb128 0x8
	.long	.LASF219
	.byte	0xe
	.byte	0x11
	.long	0x16b1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF220
	.byte	0xe
	.byte	0x12
	.long	0x1697
	.byte	0x18
	.uleb128 0x8
	.long	.LASF221
	.byte	0xe
	.byte	0x13
	.long	0x1697
	.byte	0x20
	.uleb128 0x8
	.long	.LASF222
	.byte	0xe
	.byte	0x14
	.long	0x16da
	.byte	0x28
	.uleb128 0x8
	.long	.LASF223
	.byte	0xe
	.byte	0x16
	.long	0x16fa
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0xfed
	.uleb128 0x14
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0x104f
	.uleb128 0x15
	.long	.LASF224
	.byte	0x8
	.value	0x9f2
	.long	0xc4
	.uleb128 0x15
	.long	.LASF225
	.byte	0x8
	.value	0x9f3
	.long	0x10a5
	.uleb128 0x15
	.long	.LASF226
	.byte	0x8
	.value	0x9f4
	.long	0x270
	.uleb128 0x15
	.long	.LASF227
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x15
	.long	.LASF228
	.byte	0x8
	.value	0x9f6
	.long	0xf8
	.uleb128 0x15
	.long	.LASF229
	.byte	0x8
	.value	0x9f7
	.long	0x10d2
	.uleb128 0x15
	.long	.LASF230
	.byte	0x8
	.value	0x9f8
	.long	0x10d2
	.byte	0
	.uleb128 0x10
	.long	.LASF231
	.byte	0x8
	.value	0x808
	.long	0x105b
	.uleb128 0x13
	.long	.LASF232
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0x1090
	.uleb128 0x12
	.long	.LASF233
	.byte	0xb
	.value	0x4ee
	.long	0x1272
	.byte	0
	.uleb128 0x12
	.long	.LASF234
	.byte	0xb
	.value	0x4ef
	.long	0x27b
	.byte	0x8
	.uleb128 0x12
	.long	.LASF235
	.byte	0xb
	.value	0x4f0
	.long	0x12a6
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0xd
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0xd
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0xd
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0x10
	.long	.LASF236
	.byte	0x12
	.value	0x209
	.long	0x10b0
	.uleb128 0x16
	.long	0x10d2
	.uleb128 0x17
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10c7
	.uleb128 0x6
	.byte	0x8
	.long	0x515
	.uleb128 0xb
	.long	0xf8
	.long	0x10ee
	.uleb128 0xc
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF237
	.byte	0x13
	.byte	0x63
	.long	0x10f9
	.uleb128 0xe
	.long	.LASF239
	.uleb128 0x4
	.long	.LASF240
	.byte	0x13
	.byte	0x65
	.long	0x1109
	.uleb128 0x6
	.byte	0x8
	.long	0x10ee
	.uleb128 0x4
	.long	.LASF241
	.byte	0x14
	.byte	0x36
	.long	0x111a
	.uleb128 0x6
	.byte	0x8
	.long	0x1120
	.uleb128 0x16
	.long	0x112b
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x7
	.long	.LASF242
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0x115c
	.uleb128 0x8
	.long	.LASF234
	.byte	0xc
	.byte	0x14
	.long	0x1090
	.byte	0
	.uleb128 0x8
	.long	.LASF243
	.byte	0xc
	.byte	0x15
	.long	0x1090
	.byte	0x1
	.uleb128 0x8
	.long	.LASF244
	.byte	0xc
	.byte	0x16
	.long	0x109a
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF242
	.byte	0xc
	.byte	0x19
	.long	0x112b
	.uleb128 0x6
	.byte	0x8
	.long	0x10a5
	.uleb128 0x6
	.byte	0x8
	.long	0x115c
	.uleb128 0xe
	.long	.LASF245
	.uleb128 0x6
	.byte	0x8
	.long	0x1173
	.uleb128 0xe
	.long	.LASF246
	.uleb128 0x6
	.byte	0x8
	.long	0x117e
	.uleb128 0x6
	.byte	0x8
	.long	0x10b0
	.uleb128 0xb
	.long	0x115c
	.long	0x119f
	.uleb128 0xc
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF84
	.byte	0xc
	.byte	0x33
	.long	0x60d
	.uleb128 0x18
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x1213
	.uleb128 0x19
	.long	.LASF247
	.sleb128 0
	.uleb128 0x19
	.long	.LASF248
	.sleb128 1
	.uleb128 0x19
	.long	.LASF249
	.sleb128 2
	.uleb128 0x19
	.long	.LASF250
	.sleb128 3
	.uleb128 0x19
	.long	.LASF251
	.sleb128 4
	.uleb128 0x19
	.long	.LASF252
	.sleb128 5
	.uleb128 0x19
	.long	.LASF253
	.sleb128 6
	.uleb128 0x19
	.long	.LASF254
	.sleb128 7
	.uleb128 0x19
	.long	.LASF255
	.sleb128 8
	.uleb128 0x19
	.long	.LASF256
	.sleb128 9
	.uleb128 0x19
	.long	.LASF257
	.sleb128 10
	.uleb128 0x19
	.long	.LASF258
	.sleb128 11
	.uleb128 0x19
	.long	.LASF259
	.sleb128 12
	.uleb128 0x19
	.long	.LASF260
	.sleb128 13
	.uleb128 0x19
	.long	.LASF261
	.sleb128 14
	.uleb128 0x19
	.long	.LASF262
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc7c
	.uleb128 0x6
	.byte	0x8
	.long	0xd32
	.uleb128 0x6
	.byte	0x8
	.long	0xb4e
	.uleb128 0x6
	.byte	0x8
	.long	0xbdf
	.uleb128 0x6
	.byte	0x8
	.long	0xe2f
	.uleb128 0x6
	.byte	0x8
	.long	0x8ad
	.uleb128 0x6
	.byte	0x8
	.long	0x58b
	.uleb128 0x6
	.byte	0x8
	.long	0x6e6
	.uleb128 0x10
	.long	.LASF263
	.byte	0xb
	.value	0x150
	.long	0x109a
	.uleb128 0x6
	.byte	0x8
	.long	0x2a4
	.uleb128 0x16
	.long	0x1260
	.uleb128 0x17
	.long	0x1260
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c6
	.uleb128 0x6
	.byte	0x8
	.long	0x1255
	.uleb128 0x6
	.byte	0x8
	.long	0x78d
	.uleb128 0x6
	.byte	0x8
	.long	0x550
	.uleb128 0x1a
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x129a
	.uleb128 0x15
	.long	.LASF264
	.byte	0xb
	.value	0x185
	.long	0x129a
	.uleb128 0x15
	.long	.LASF265
	.byte	0xb
	.value	0x186
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x260
	.uleb128 0x6
	.byte	0x8
	.long	0x10fe
	.uleb128 0x6
	.byte	0x8
	.long	0x4ee
	.uleb128 0x6
	.byte	0x8
	.long	0x7d3
	.uleb128 0x4
	.long	.LASF266
	.byte	0x15
	.byte	0x13
	.long	0x550
	.uleb128 0xd
	.string	"PAD"
	.byte	0x15
	.byte	0x14
	.long	0x550
	.uleb128 0x4
	.long	.LASF267
	.byte	0x15
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x12b2
	.uleb128 0x1b
	.long	0x124f
	.uleb128 0x6
	.byte	0x8
	.long	0x12d9
	.uleb128 0x6
	.byte	0x8
	.long	0x3f4
	.uleb128 0x6
	.byte	0x8
	.long	0x601
	.uleb128 0x7
	.long	.LASF268
	.byte	0x40
	.byte	0xa
	.byte	0x70
	.long	0x1367
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0x71
	.long	0x1260
	.byte	0
	.uleb128 0x1c
	.string	"gv"
	.byte	0xa
	.byte	0x72
	.long	0x126c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF269
	.byte	0xa
	.byte	0x73
	.long	0x126c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF270
	.byte	0xa
	.byte	0x75
	.long	0x1272
	.byte	0x18
	.uleb128 0x8
	.long	.LASF271
	.byte	0xa
	.byte	0x77
	.long	0x1272
	.byte	0x20
	.uleb128 0x8
	.long	.LASF272
	.byte	0xa
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF273
	.byte	0xa
	.byte	0x79
	.long	0x1090
	.byte	0x30
	.uleb128 0x8
	.long	.LASF274
	.byte	0xa
	.byte	0x7a
	.long	0x1090
	.byte	0x31
	.uleb128 0x8
	.long	.LASF275
	.byte	0xa
	.byte	0x7b
	.long	0x1367
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12bd
	.uleb128 0x7
	.long	.LASF276
	.byte	0x28
	.byte	0xa
	.byte	0xd3
	.long	0x13c1
	.uleb128 0x8
	.long	.LASF277
	.byte	0xa
	.byte	0xd4
	.long	0x10a5
	.byte	0
	.uleb128 0x8
	.long	.LASF278
	.byte	0xa
	.byte	0xd5
	.long	0x10a5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF279
	.byte	0xa
	.byte	0xd6
	.long	0x10d8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF280
	.byte	0xa
	.byte	0xd7
	.long	0x124f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF281
	.byte	0xa
	.byte	0xd8
	.long	0x10d8
	.byte	0x18
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0xd9
	.long	0x1260
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF282
	.byte	0x58
	.byte	0xa
	.byte	0xf0
	.long	0x1453
	.uleb128 0x8
	.long	.LASF283
	.byte	0xa
	.byte	0xf1
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF284
	.byte	0xa
	.byte	0xf2
	.long	0x10a5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF285
	.byte	0xa
	.byte	0xf3
	.long	0x124f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF286
	.byte	0xa
	.byte	0xf4
	.long	0x124f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF287
	.byte	0xa
	.byte	0xf5
	.long	0x124f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF288
	.byte	0xa
	.byte	0xfa
	.long	0x1453
	.byte	0x28
	.uleb128 0x8
	.long	.LASF289
	.byte	0xa
	.byte	0xfc
	.long	0x10d8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF290
	.byte	0xa
	.byte	0xfd
	.long	0x10d8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF291
	.byte	0xa
	.byte	0xfe
	.long	0x1272
	.byte	0x40
	.uleb128 0x8
	.long	.LASF292
	.byte	0xa
	.byte	0xff
	.long	0x270
	.byte	0x48
	.uleb128 0x12
	.long	.LASF293
	.byte	0xa
	.value	0x100
	.long	0x270
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d8
	.uleb128 0x1a
	.byte	0x58
	.byte	0xa
	.value	0x139
	.long	0x1487
	.uleb128 0x15
	.long	.LASF294
	.byte	0xa
	.value	0x13a
	.long	0x12f0
	.uleb128 0x15
	.long	.LASF295
	.byte	0xa
	.value	0x13b
	.long	0x136d
	.uleb128 0x15
	.long	.LASF296
	.byte	0xa
	.value	0x13c
	.long	0x13c1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x31b
	.uleb128 0x13
	.long	.LASF297
	.byte	0x58
	.byte	0xa
	.value	0x16e
	.long	0x1551
	.uleb128 0x12
	.long	.LASF298
	.byte	0xa
	.value	0x16f
	.long	0x10a5
	.byte	0
	.uleb128 0x12
	.long	.LASF299
	.byte	0xa
	.value	0x170
	.long	0x10a5
	.byte	0x4
	.uleb128 0x12
	.long	.LASF300
	.byte	0xa
	.value	0x171
	.long	0x10a5
	.byte	0x8
	.uleb128 0x12
	.long	.LASF301
	.byte	0xa
	.value	0x172
	.long	0x10a5
	.byte	0xc
	.uleb128 0x12
	.long	.LASF302
	.byte	0xa
	.value	0x173
	.long	0xf8
	.byte	0x10
	.uleb128 0x12
	.long	.LASF303
	.byte	0xa
	.value	0x174
	.long	0xf8
	.byte	0x11
	.uleb128 0x12
	.long	.LASF304
	.byte	0xa
	.value	0x175
	.long	0xf2
	.byte	0x18
	.uleb128 0x12
	.long	.LASF305
	.byte	0xa
	.value	0x176
	.long	0x10d8
	.byte	0x20
	.uleb128 0x12
	.long	.LASF306
	.byte	0xa
	.value	0x177
	.long	0x10d8
	.byte	0x28
	.uleb128 0x12
	.long	.LASF307
	.byte	0xa
	.value	0x178
	.long	0xf2
	.byte	0x30
	.uleb128 0x12
	.long	.LASF308
	.byte	0xa
	.value	0x179
	.long	0xf2
	.byte	0x38
	.uleb128 0x12
	.long	.LASF309
	.byte	0xa
	.value	0x17a
	.long	0xf2
	.byte	0x40
	.uleb128 0x12
	.long	.LASF310
	.byte	0xa
	.value	0x17b
	.long	0xc4
	.byte	0x48
	.uleb128 0x12
	.long	.LASF311
	.byte	0xa
	.value	0x17c
	.long	0x12ea
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.byte	0x88
	.byte	0xa
	.value	0x1a4
	.long	0x1573
	.uleb128 0x15
	.long	.LASF312
	.byte	0xa
	.value	0x1a5
	.long	0x837
	.uleb128 0x15
	.long	.LASF313
	.byte	0xa
	.value	0x1a6
	.long	0x148d
	.byte	0
	.uleb128 0x13
	.long	.LASF314
	.byte	0x38
	.byte	0xa
	.value	0x20c
	.long	0x15e9
	.uleb128 0x12
	.long	.LASF315
	.byte	0xa
	.value	0x20d
	.long	0x1272
	.byte	0
	.uleb128 0x12
	.long	.LASF316
	.byte	0xa
	.value	0x20e
	.long	0x15e9
	.byte	0x8
	.uleb128 0x12
	.long	.LASF317
	.byte	0xa
	.value	0x20f
	.long	0x10a5
	.byte	0x10
	.uleb128 0x12
	.long	.LASF318
	.byte	0xa
	.value	0x210
	.long	0x10a5
	.byte	0x14
	.uleb128 0x12
	.long	.LASF319
	.byte	0xa
	.value	0x211
	.long	0x10a5
	.byte	0x18
	.uleb128 0x12
	.long	.LASF320
	.byte	0xa
	.value	0x212
	.long	0x15ef
	.byte	0x20
	.uleb128 0x12
	.long	.LASF321
	.byte	0xa
	.value	0x213
	.long	0x15ef
	.byte	0x28
	.uleb128 0x12
	.long	.LASF322
	.byte	0xa
	.value	0x214
	.long	0x10a5
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x803
	.uleb128 0x6
	.byte	0x8
	.long	0x1573
	.uleb128 0x10
	.long	.LASF323
	.byte	0xa
	.value	0x219
	.long	0x1573
	.uleb128 0xd
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x160b
	.uleb128 0x11
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x163b
	.uleb128 0x8
	.long	.LASF324
	.byte	0x10
	.byte	0x11
	.long	0x1677
	.byte	0
	.uleb128 0x8
	.long	.LASF325
	.byte	0x10
	.byte	0x12
	.long	0x167d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF326
	.byte	0x10
	.byte	0x13
	.long	0x10d8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x1646
	.uleb128 0x11
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x1677
	.uleb128 0x8
	.long	.LASF327
	.byte	0x10
	.byte	0x18
	.long	0x10b0
	.byte	0
	.uleb128 0x8
	.long	.LASF328
	.byte	0x10
	.byte	0x19
	.long	0x10a5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF329
	.byte	0x10
	.byte	0x1a
	.long	0x10de
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1601
	.uleb128 0x6
	.byte	0x8
	.long	0x163b
	.uleb128 0x1d
	.long	0x57
	.long	0x1697
	.uleb128 0x17
	.long	0x10d8
	.uleb128 0x17
	.long	0x1231
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1683
	.uleb128 0x1d
	.long	0x10b0
	.long	0x16b1
	.uleb128 0x17
	.long	0x10d8
	.uleb128 0x17
	.long	0x1231
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x169d
	.uleb128 0x1d
	.long	0x57
	.long	0x16da
	.uleb128 0x17
	.long	0x10d8
	.uleb128 0x17
	.long	0x1231
	.uleb128 0x17
	.long	0x10d8
	.uleb128 0x17
	.long	0x16e
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16b7
	.uleb128 0x1d
	.long	0x57
	.long	0x16f4
	.uleb128 0x17
	.long	0x1231
	.uleb128 0x17
	.long	0x16f4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x104f
	.uleb128 0x6
	.byte	0x8
	.long	0x16e0
	.uleb128 0x6
	.byte	0x8
	.long	0xf74
	.uleb128 0xf
	.string	"MGS"
	.byte	0x8
	.value	0xa4e
	.long	0x1712
	.uleb128 0x7
	.long	.LASF330
	.byte	0x10
	.byte	0x1
	.byte	0x51
	.long	0x1743
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1
	.byte	0x52
	.long	0x10d8
	.byte	0
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1
	.byte	0x53
	.long	0x10b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1
	.byte	0x54
	.long	0x10a5
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	.LASF334
	.byte	0x18
	.byte	0x8
	.value	0xbe8
	.long	0x1778
	.uleb128 0x12
	.long	.LASF335
	.byte	0x8
	.value	0xbe9
	.long	0x178c
	.byte	0
	.uleb128 0x12
	.long	.LASF336
	.byte	0x8
	.value	0xbea
	.long	0x178c
	.byte	0x8
	.uleb128 0x12
	.long	.LASF337
	.byte	0x8
	.value	0xbeb
	.long	0x270
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.long	0x10a5
	.long	0x178c
	.uleb128 0x17
	.long	0x270
	.uleb128 0x17
	.long	0x10d8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1778
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF338
	.uleb128 0x6
	.byte	0x8
	.long	0x119f
	.uleb128 0x10
	.long	.LASF339
	.byte	0x8
	.value	0xe6b
	.long	0x17ab
	.uleb128 0x6
	.byte	0x8
	.long	0x17b1
	.uleb128 0x16
	.long	0x17bc
	.uleb128 0x17
	.long	0x17bc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x60d
	.uleb128 0x10
	.long	.LASF340
	.byte	0x8
	.value	0xe6e
	.long	0x10d2
	.uleb128 0x1e
	.byte	0x4
	.byte	0x8
	.value	0xfb1
	.long	0x196d
	.uleb128 0x19
	.long	.LASF341
	.sleb128 0
	.uleb128 0x19
	.long	.LASF342
	.sleb128 1
	.uleb128 0x19
	.long	.LASF343
	.sleb128 2
	.uleb128 0x19
	.long	.LASF344
	.sleb128 3
	.uleb128 0x19
	.long	.LASF345
	.sleb128 4
	.uleb128 0x19
	.long	.LASF346
	.sleb128 5
	.uleb128 0x19
	.long	.LASF347
	.sleb128 6
	.uleb128 0x19
	.long	.LASF348
	.sleb128 7
	.uleb128 0x19
	.long	.LASF349
	.sleb128 8
	.uleb128 0x19
	.long	.LASF350
	.sleb128 9
	.uleb128 0x19
	.long	.LASF351
	.sleb128 10
	.uleb128 0x19
	.long	.LASF352
	.sleb128 11
	.uleb128 0x19
	.long	.LASF353
	.sleb128 12
	.uleb128 0x19
	.long	.LASF354
	.sleb128 13
	.uleb128 0x19
	.long	.LASF355
	.sleb128 14
	.uleb128 0x19
	.long	.LASF356
	.sleb128 15
	.uleb128 0x19
	.long	.LASF357
	.sleb128 16
	.uleb128 0x19
	.long	.LASF358
	.sleb128 17
	.uleb128 0x19
	.long	.LASF359
	.sleb128 18
	.uleb128 0x19
	.long	.LASF360
	.sleb128 19
	.uleb128 0x19
	.long	.LASF361
	.sleb128 20
	.uleb128 0x19
	.long	.LASF362
	.sleb128 21
	.uleb128 0x19
	.long	.LASF363
	.sleb128 22
	.uleb128 0x19
	.long	.LASF364
	.sleb128 23
	.uleb128 0x19
	.long	.LASF365
	.sleb128 24
	.uleb128 0x19
	.long	.LASF366
	.sleb128 25
	.uleb128 0x19
	.long	.LASF367
	.sleb128 26
	.uleb128 0x19
	.long	.LASF368
	.sleb128 27
	.uleb128 0x19
	.long	.LASF369
	.sleb128 28
	.uleb128 0x19
	.long	.LASF370
	.sleb128 29
	.uleb128 0x19
	.long	.LASF371
	.sleb128 30
	.uleb128 0x19
	.long	.LASF372
	.sleb128 31
	.uleb128 0x19
	.long	.LASF373
	.sleb128 32
	.uleb128 0x19
	.long	.LASF374
	.sleb128 33
	.uleb128 0x19
	.long	.LASF375
	.sleb128 34
	.uleb128 0x19
	.long	.LASF376
	.sleb128 35
	.uleb128 0x19
	.long	.LASF377
	.sleb128 36
	.uleb128 0x19
	.long	.LASF378
	.sleb128 37
	.uleb128 0x19
	.long	.LASF379
	.sleb128 38
	.uleb128 0x19
	.long	.LASF380
	.sleb128 39
	.uleb128 0x19
	.long	.LASF381
	.sleb128 40
	.uleb128 0x19
	.long	.LASF382
	.sleb128 41
	.uleb128 0x19
	.long	.LASF383
	.sleb128 42
	.uleb128 0x19
	.long	.LASF384
	.sleb128 43
	.uleb128 0x19
	.long	.LASF385
	.sleb128 44
	.uleb128 0x19
	.long	.LASF386
	.sleb128 45
	.uleb128 0x19
	.long	.LASF387
	.sleb128 46
	.uleb128 0x19
	.long	.LASF388
	.sleb128 47
	.uleb128 0x19
	.long	.LASF389
	.sleb128 48
	.uleb128 0x19
	.long	.LASF390
	.sleb128 49
	.uleb128 0x19
	.long	.LASF391
	.sleb128 50
	.uleb128 0x19
	.long	.LASF392
	.sleb128 51
	.uleb128 0x19
	.long	.LASF393
	.sleb128 52
	.uleb128 0x19
	.long	.LASF394
	.sleb128 53
	.uleb128 0x19
	.long	.LASF395
	.sleb128 54
	.uleb128 0x19
	.long	.LASF396
	.sleb128 55
	.uleb128 0x19
	.long	.LASF397
	.sleb128 56
	.uleb128 0x19
	.long	.LASF398
	.sleb128 57
	.uleb128 0x19
	.long	.LASF399
	.sleb128 58
	.uleb128 0x19
	.long	.LASF400
	.sleb128 59
	.uleb128 0x19
	.long	.LASF401
	.sleb128 60
	.uleb128 0x19
	.long	.LASF402
	.sleb128 61
	.uleb128 0x19
	.long	.LASF403
	.sleb128 62
	.uleb128 0x19
	.long	.LASF404
	.sleb128 63
	.uleb128 0x19
	.long	.LASF405
	.sleb128 64
	.uleb128 0x19
	.long	.LASF406
	.sleb128 65
	.uleb128 0x19
	.long	.LASF407
	.sleb128 66
	.byte	0
	.uleb128 0x4
	.long	.LASF408
	.byte	0x16
	.byte	0x55
	.long	0x111a
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x1
	.byte	0x59
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x19bf
	.uleb128 0x20
	.long	.LASF409
	.byte	0x1
	.byte	0x59
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0x59
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"mgs"
	.byte	0x1
	.byte	0x5b
	.long	0x19bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1706
	.uleb128 0x23
	.long	.LASF454
	.byte	0x1
	.byte	0x73
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a1d
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0x73
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.byte	0x75
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.long	.LASF410
	.byte	0x1
	.byte	0x77
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF415
	.byte	0x1
	.byte	0x8c
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1acf
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0x8c
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF411
	.byte	0x1
	.byte	0x8e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF412
	.byte	0x1
	.byte	0x8f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF413
	.byte	0x1
	.byte	0x8f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"cur"
	.byte	0x1
	.byte	0x8f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.byte	0x8f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF409
	.byte	0x1
	.byte	0x90
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF414
	.byte	0x1
	.byte	0x91
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.long	.LASF410
	.byte	0x1
	.byte	0xa6
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF416
	.byte	0x1
	.byte	0xdc
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b47
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0xdc
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF409
	.byte	0x1
	.byte	0xde
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.byte	0xdf
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF417
	.byte	0x1
	.byte	0xe0
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.long	.LASF410
	.byte	0x1
	.byte	0xe6
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF418
	.byte	0x1
	.byte	0xfd
	.long	0x10b0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf8
	.uleb128 0x21
	.string	"sv"
	.byte	0x1
	.byte	0xfd
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.byte	0xff
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x100
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1bd8
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x103
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x105
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x112
	.long	0x1bf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1090
	.uleb128 0x2a
	.long	.LASF419
	.byte	0x1
	.value	0x11b
	.long	0x10a5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c8e
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x11b
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x11d
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x11e
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x121
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x123
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF420
	.byte	0x1
	.value	0x144
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cfd
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x144
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x146
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x147
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x14d
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF421
	.byte	0x1
	.value	0x161
	.long	0x1231
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4b
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x161
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF243
	.byte	0x1
	.value	0x161
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x163
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x176
	.long	0x57
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1deb
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x176
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"nsv"
	.byte	0x1
	.value	0x176
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"key"
	.byte	0x1
	.value	0x176
	.long	0x16e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF423
	.byte	0x1
	.value	0x176
	.long	0x10a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF424
	.byte	0x1
	.value	0x178
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x179
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x17b
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF425
	.byte	0x1
	.value	0x194
	.long	0x57
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5a
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x194
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x196
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF426
	.byte	0x1
	.value	0x197
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x199
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF427
	.byte	0x1
	.value	0x1ae
	.long	0x10b0
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea6
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x1ae
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x1ae
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"rx"
	.byte	0x1
	.value	0x1b0
	.long	0x12ea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2a
	.long	.LASF428
	.byte	0x1
	.value	0x1bd
	.long	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f46
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x1bd
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x1bd
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF429
	.byte	0x1
	.value	0x1bf
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1c0
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1c1
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"rx"
	.byte	0x1
	.value	0x1c2
	.long	0x12ea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x1c3
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x1d3
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF430
	.byte	0x1
	.value	0x1df
	.long	0x57
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f85
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x1df
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x1df
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF431
	.byte	0x1
	.value	0x1e7
	.long	0x10b0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x207c
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x1e7
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x1e7
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF429
	.byte	0x1
	.value	0x1e9
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1ea
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"rx"
	.byte	0x1
	.value	0x1eb
	.long	0x12ea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x1ec
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"t1"
	.byte	0x1
	.value	0x1ec
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.LASF432
	.byte	0x1
	.value	0x1f4
	.quad	.L104
	.uleb128 0x2e
	.long	.LASF433
	.byte	0x1
	.value	0x1fa
	.quad	.L106
	.uleb128 0x28
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x205a
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1fc
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF434
	.byte	0x1
	.value	0x1fd
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x23a
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x243
	.long	0x57
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2223
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x243
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x243
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF429
	.byte	0x1
	.value	0x245
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x246
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x247
	.long	0x10a5
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"rx"
	.byte	0x1
	.value	0x248
	.long	0x12ea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF432
	.byte	0x1
	.value	0x2f7
	.quad	.L197
	.uleb128 0x2e
	.long	.LASF436
	.byte	0x1
	.value	0x301
	.quad	.L198
	.uleb128 0x2e
	.long	.LASF437
	.byte	0x1
	.value	0x3a6
	.quad	.L226
	.uleb128 0x28
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2145
	.uleb128 0x29
	.long	.LASF438
	.byte	0x1
	.value	0x28b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x28
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x217b
	.uleb128 0x29
	.long	.LASF439
	.byte	0x1
	.value	0x2de
	.long	0x1453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF440
	.byte	0x1
	.value	0x2df
	.long	0x1237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x21de
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x2f0
	.long	0x10a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.string	"t1"
	.byte	0x1
	.value	0x2f0
	.long	0x10a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x30a
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"mgt"
	.byte	0x1
	.value	0x30b
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2200
	.uleb128 0x2f
	.long	.LASF457
	.byte	0x1
	.value	0x373
	.long	0x57
	.byte	0
	.uleb128 0x24
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x29
	.long	.LASF438
	.byte	0x1
	.value	0x388
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF441
	.byte	0x1
	.value	0x3c1
	.long	0x57
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2270
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x3c1
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x3c1
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uf"
	.byte	0x1
	.value	0x3c3
	.long	0x2270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1743
	.uleb128 0x2a
	.long	.LASF442
	.byte	0x1
	.value	0x3cb
	.long	0x57
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2354
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x3cb
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x3cb
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x3cd
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.value	0x3ce
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x3cf
	.long	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x29
	.long	.LASF423
	.byte	0x1
	.value	0x3cf
	.long	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x24
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x29
	.long	.LASF443
	.byte	0x1
	.value	0x3ff
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x29
	.long	.LASF444
	.byte	0x1
	.value	0x402
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.string	"st"
	.byte	0x1
	.value	0x403
	.long	0x17f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x404
	.long	0x10a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF445
	.byte	0x1
	.value	0x417
	.long	0x57
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x23a2
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x417
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x417
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x419
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF446
	.byte	0x1
	.value	0x41f
	.long	0x57
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2434
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x41f
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x41f
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x29
	.long	.LASF447
	.byte	0x1
	.value	0x425
	.long	0x1677
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x426
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x29
	.long	.LASF448
	.byte	0x1
	.value	0x42a
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF449
	.byte	0x1
	.value	0x434
	.long	0x57
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2492
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x434
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x434
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x445
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF450
	.byte	0x1
	.value	0x46c
	.long	0x57
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x250e
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x46c
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x46c
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x46e
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x46f
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x29
	.long	.LASF451
	.byte	0x1
	.value	0x476
	.long	0x110f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF452
	.byte	0x1
	.value	0x48a
	.long	0x57
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x25bd
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x48a
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x48a
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x48f
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x490
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF453
	.byte	0x1
	.value	0x491
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x259d
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x494
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4a2
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF455
	.byte	0x1
	.value	0x4ce
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x25eb
	.uleb128 0x2b
	.string	"sig"
	.byte	0x1
	.value	0x4ce
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF456
	.byte	0x1
	.value	0x4d7
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2625
	.uleb128 0x2b
	.string	"sig"
	.byte	0x1
	.value	0x4d7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF457
	.byte	0x1
	.value	0x4dc
	.long	0x57
	.byte	0
	.uleb128 0x31
	.long	.LASF458
	.byte	0x1
	.value	0x508
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2653
	.uleb128 0x27
	.string	"sig"
	.byte	0x1
	.value	0x50a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF459
	.byte	0x1
	.value	0x518
	.long	0x57
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x26da
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x518
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x518
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x51a
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x51b
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x51c
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF453
	.byte	0x1
	.value	0x521
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x522
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.long	.LASF460
	.byte	0x1
	.value	0x593
	.long	0x57
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2719
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x593
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x593
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF461
	.byte	0x1
	.value	0x59a
	.long	0x57
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2758
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x59a
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x59a
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF462
	.byte	0x1
	.value	0x5a3
	.long	0x57
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b2
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5a3
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5a3
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"hv"
	.byte	0x1
	.value	0x5a5
	.long	0x1237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x5a6
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF463
	.byte	0x1
	.value	0x5b7
	.long	0x57
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f1
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5b7
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5b7
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF465
	.byte	0x1
	.value	0x5c1
	.long	0x57
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2878
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5c1
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5c1
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF464
	.byte	0x1
	.value	0x5c1
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF234
	.byte	0x1
	.value	0x5c1
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x5c1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x5c1
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x5c3
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x32
	.long	.LASF466
	.byte	0x1
	.value	0x5dc
	.long	0x57
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2927
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5dc
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5dc
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF464
	.byte	0x1
	.value	0x5dc
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x5de
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x28f8
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x5e2
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x5e8
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x5e8
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15f5
	.uleb128 0x2a
	.long	.LASF469
	.byte	0x1
	.value	0x5ef
	.long	0x57
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x296c
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5ef
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5ef
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF470
	.byte	0x1
	.value	0x5f8
	.long	0x57
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a0b
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5f8
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x5f8
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x5fa
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x29dc
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x5fc
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x5fe
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x5fe
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF471
	.byte	0x1
	.value	0x604
	.long	0x57
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a4a
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x604
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x604
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF472
	.byte	0x1
	.value	0x60b
	.long	0x10b0
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2afa
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x60b
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x60b
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x60d
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF473
	.byte	0x1
	.value	0x60e
	.long	0x10b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x2acb
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x612
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x617
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x617
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF474
	.byte	0x1
	.value	0x61e
	.long	0x57
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b99
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x61e
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x61e
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x620
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x2b6a
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x623
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x628
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x628
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF475
	.byte	0x1
	.value	0x62f
	.long	0x57
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c59
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x62f
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x62f
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"key"
	.byte	0x1
	.value	0x62f
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x631
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF464
	.byte	0x1
	.value	0x632
	.long	0x16e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x2c2a
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x636
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x641
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x641
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF476
	.byte	0x1
	.value	0x648
	.long	0x57
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c98
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x648
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x648
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF477
	.byte	0x1
	.value	0x64e
	.long	0x10d8
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d8d
	.uleb128 0x2b
	.string	"hv"
	.byte	0x1
	.value	0x64e
	.long	0x1237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x64e
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x650
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF473
	.byte	0x1
	.value	0x651
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF478
	.byte	0x1
	.value	0x652
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"pkg"
	.byte	0x1
	.value	0x653
	.long	0x1237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x2d38
	.uleb128 0x27
	.string	"key"
	.byte	0x1
	.value	0x656
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x2d5e
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0x663
	.long	0x2927
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x66b
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0x66b
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF479
	.byte	0x1
	.value	0x671
	.long	0x57
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e14
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x671
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x671
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"o"
	.byte	0x1
	.value	0x673
	.long	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x674
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"gv"
	.byte	0x1
	.value	0x675
	.long	0x126c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x676
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x677
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF480
	.byte	0x1
	.value	0x688
	.long	0x57
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e53
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x688
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x688
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x68f
	.long	0x57
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e92
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x68f
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x68f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x696
	.long	0x57
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eff
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x696
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x696
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"lsv"
	.byte	0x1
	.value	0x698
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x69d
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF483
	.byte	0x1
	.value	0x6a9
	.long	0x57
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f9b
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x6a9
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x6a9
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"lsv"
	.byte	0x1
	.value	0x6ab
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"pos"
	.byte	0x1
	.value	0x6ac
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x6ad
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF484
	.byte	0x1
	.value	0x6ae
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x6d1
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x6dd
	.long	0x57
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fda
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x6dd
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x6dd
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF486
	.byte	0x1
	.value	0x6ea
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3042
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x6ea
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x6ea
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x6ec
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"gv"
	.byte	0x1
	.value	0x6ed
	.long	0x126c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x6ee
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF487
	.byte	0x1
	.value	0x6ff
	.long	0x57
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x30cc
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x6ff
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x6ff
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x701
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"lsv"
	.byte	0x1
	.value	0x702
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF488
	.byte	0x1
	.value	0x703
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF489
	.byte	0x1
	.value	0x704
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"rem"
	.byte	0x1
	.value	0x705
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.long	.LASF490
	.byte	0x1
	.value	0x714
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3156
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x714
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x714
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x716
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF488
	.byte	0x1
	.value	0x717
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"lsv"
	.byte	0x1
	.value	0x718
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF491
	.byte	0x1
	.value	0x719
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF492
	.byte	0x1
	.value	0x71a
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2c
	.long	.LASF493
	.byte	0x1
	.value	0x72f
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3195
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x72f
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x72f
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF494
	.byte	0x1
	.value	0x737
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d4
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x737
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x737
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF495
	.byte	0x1
	.value	0x747
	.long	0x57
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x3222
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x747
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x747
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"lsv"
	.byte	0x1
	.value	0x749
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF496
	.byte	0x1
	.value	0x755
	.long	0x57
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3261
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x755
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x755
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF497
	.byte	0x1
	.value	0x75c
	.long	0x57
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x333c
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x75c
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x75c
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF498
	.byte	0x1
	.value	0x75e
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x331b
	.uleb128 0x27
	.string	"ahv"
	.byte	0x1
	.value	0x761
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x32f9
	.uleb128 0x27
	.string	"he"
	.byte	0x1
	.value	0x763
	.long	0x1677
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x768
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x27
	.string	"av"
	.byte	0x1
	.value	0x76e
	.long	0x1272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF499
	.byte	0x1
	.value	0x783
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x337b
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x783
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x783
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF500
	.byte	0x1
	.value	0x78f
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3484
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x78f
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x791
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF501
	.byte	0x1
	.value	0x792
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x3442
	.uleb128 0x27
	.string	"ahv"
	.byte	0x1
	.value	0x797
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"n_a"
	.byte	0x1
	.value	0x798
	.long	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x3420
	.uleb128 0x27
	.string	"he"
	.byte	0x1
	.value	0x79a
	.long	0x1677
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x79f
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x27
	.string	"av"
	.byte	0x1
	.value	0x7a7
	.long	0x1272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x7ab
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF502
	.byte	0x1
	.value	0x7ba
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x34ed
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7ba
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7ba
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"av"
	.byte	0x1
	.value	0x7bc
	.long	0x1272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x7bd
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x7be
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF503
	.byte	0x1
	.value	0x7d0
	.long	0x57
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x352c
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7d0
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7d0
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF504
	.byte	0x1
	.value	0x7d8
	.long	0x57
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x356b
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7d8
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7d8
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF505
	.byte	0x1
	.value	0x7e0
	.long	0x57
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x35aa
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7e0
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7e0
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF506
	.byte	0x1
	.value	0x7e8
	.long	0x57
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f7
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7e8
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7e8
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uf"
	.byte	0x1
	.value	0x7ea
	.long	0x2270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF507
	.byte	0x1
	.value	0x7f2
	.long	0x57
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3636
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7f2
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7f2
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF508
	.byte	0x1
	.value	0x7f9
	.long	0x57
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3683
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7f9
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x7f9
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"re"
	.byte	0x1
	.value	0x7fb
	.long	0x1799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF509
	.byte	0x1
	.value	0x813
	.long	0x57
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c2
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x813
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x813
	.long	0x1231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF510
	.byte	0x1
	.value	0x81c
	.long	0x57
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d0
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x81c
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"mg"
	.byte	0x1
	.value	0x81c
	.long	0x1231
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x81e
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x81f
	.long	0x10a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x820
	.long	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x378e
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x88e
	.long	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x88e
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF511
	.byte	0x1
	.value	0x88f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF512
	.byte	0x1
	.value	0x890
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.value	0x891
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x27
	.string	"io"
	.byte	0x1
	.value	0x8c8
	.long	0x37d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x27
	.string	"ofp"
	.byte	0x1
	.value	0x8cf
	.long	0x12a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7c8
	.uleb128 0x2a
	.long	.LASF513
	.byte	0x1
	.value	0x9f3
	.long	0x10a5
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x3816
	.uleb128 0x2b
	.string	"sig"
	.byte	0x1
	.value	0x9f3
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF514
	.byte	0x1
	.value	0x9f5
	.long	0x3816
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf2
	.uleb128 0x31
	.long	.LASF515
	.byte	0x1
	.value	0xa0a
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x3941
	.uleb128 0x2b
	.string	"sig"
	.byte	0x1
	.value	0xa0a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF457
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0xa11
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"gv"
	.byte	0x1
	.value	0xa12
	.long	0x126c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"st"
	.byte	0x1
	.value	0xa13
	.long	0x1237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0xa14
	.long	0x10d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"tSv"
	.byte	0x1
	.value	0xa14
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"cv"
	.byte	0x1
	.value	0xa15
	.long	0x1260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF516
	.byte	0x1
	.value	0xa16
	.long	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF234
	.byte	0x1
	.value	0xa17
	.long	0x10b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF517
	.byte	0x1
	.value	0xa18
	.long	0x3941
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF518
	.byte	0x1
	.value	0xa6c
	.quad	.L789
	.uleb128 0x28
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x3912
	.uleb128 0x29
	.long	.LASF467
	.byte	0x1
	.value	0xa51
	.long	0x2927
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0xa58
	.long	0x1453
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF468
	.byte	0x1
	.value	0xa58
	.long	0x2927
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x94b
	.uleb128 0x33
	.long	.LASF520
	.byte	0x1
	.value	0xa80
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b1
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xa80
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"mgs"
	.byte	0x1
	.value	0xa82
	.long	0x19bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0xa83
	.long	0x10d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x29
	.long	.LASF521
	.byte	0x1
	.value	0xa9d
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF522
	.byte	0x1
	.value	0xaa9
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ec
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xaa9
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF234
	.byte	0x1
	.value	0xaab
	.long	0x10b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF523
	.byte	0x1
	.value	0xa06
	.long	0x10d8
	.uleb128 0x9
	.byte	0x3
	.quad	sig_sv
	.uleb128 0x2f
	.long	.LASF524
	.byte	0x8
	.value	0xcdd
	.long	0x3816
	.uleb128 0xb
	.long	0xf8
	.long	0x3a19
	.uleb128 0x34
	.byte	0
	.uleb128 0x2f
	.long	.LASF525
	.byte	0x8
	.value	0xcf3
	.long	0x3a25
	.uleb128 0xa
	.long	0x3a0e
	.uleb128 0x2f
	.long	.LASF526
	.byte	0x8
	.value	0xcf5
	.long	0x3a36
	.uleb128 0xa
	.long	0x3a0e
	.uleb128 0x2f
	.long	.LASF527
	.byte	0x8
	.value	0xcf7
	.long	0x3a47
	.uleb128 0xa
	.long	0x3a0e
	.uleb128 0xb
	.long	0xf2
	.long	0x3a57
	.uleb128 0x34
	.byte	0
	.uleb128 0x2f
	.long	.LASF528
	.byte	0x8
	.value	0xd14
	.long	0x3a4c
	.uleb128 0xb
	.long	0x57
	.long	0x3a6e
	.uleb128 0x34
	.byte	0
	.uleb128 0x2f
	.long	.LASF529
	.byte	0x8
	.value	0xd15
	.long	0x3a63
	.uleb128 0x35
	.long	.LASF530
	.byte	0x17
	.byte	0x14
	.long	0x57
	.uleb128 0x35
	.long	.LASF531
	.byte	0x17
	.byte	0x15
	.long	0x3816
	.uleb128 0x35
	.long	.LASF532
	.byte	0x17
	.byte	0x1a
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF533
	.byte	0x17
	.byte	0x1b
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF534
	.byte	0x17
	.byte	0x1e
	.long	0xf8
	.uleb128 0x35
	.long	.LASF535
	.byte	0x17
	.byte	0x34
	.long	0x1090
	.uleb128 0x35
	.long	.LASF536
	.byte	0x17
	.byte	0x38
	.long	0xf8
	.uleb128 0x35
	.long	.LASF537
	.byte	0x17
	.byte	0x39
	.long	0xf2
	.uleb128 0x35
	.long	.LASF538
	.byte	0x17
	.byte	0x3b
	.long	0x10b0
	.uleb128 0x35
	.long	.LASF539
	.byte	0x17
	.byte	0x42
	.long	0x120
	.uleb128 0x35
	.long	.LASF540
	.byte	0x17
	.byte	0x46
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF541
	.byte	0x17
	.byte	0x48
	.long	0x57
	.uleb128 0x35
	.long	.LASF542
	.byte	0x17
	.byte	0x49
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF543
	.byte	0x17
	.byte	0x51
	.long	0x126c
	.uleb128 0x35
	.long	.LASF544
	.byte	0x17
	.byte	0x5d
	.long	0x126c
	.uleb128 0x35
	.long	.LASF545
	.byte	0x17
	.byte	0x61
	.long	0x126c
	.uleb128 0x35
	.long	.LASF546
	.byte	0x17
	.byte	0x7a
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF547
	.byte	0x17
	.byte	0x89
	.long	0x10b0
	.uleb128 0x35
	.long	.LASF548
	.byte	0x17
	.byte	0x98
	.long	0xf8
	.uleb128 0x35
	.long	.LASF549
	.byte	0x17
	.byte	0xb4
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF550
	.byte	0x17
	.byte	0xb5
	.long	0xf2
	.uleb128 0x35
	.long	.LASF551
	.byte	0x17
	.byte	0xcf
	.long	0x31b
	.uleb128 0x35
	.long	.LASF552
	.byte	0x17
	.byte	0xed
	.long	0x10a
	.uleb128 0x35
	.long	.LASF553
	.byte	0x17
	.byte	0xee
	.long	0x10a
	.uleb128 0x35
	.long	.LASF554
	.byte	0x17
	.byte	0xef
	.long	0xff
	.uleb128 0x35
	.long	.LASF555
	.byte	0x17
	.byte	0xf0
	.long	0xff
	.uleb128 0x35
	.long	.LASF556
	.byte	0x17
	.byte	0xf6
	.long	0x3816
	.uleb128 0x35
	.long	.LASF557
	.byte	0x17
	.byte	0xf7
	.long	0x10b0
	.uleb128 0x35
	.long	.LASF558
	.byte	0x17
	.byte	0xfa
	.long	0xf2
	.uleb128 0x35
	.long	.LASF559
	.byte	0x17
	.byte	0xff
	.long	0x110f
	.uleb128 0x2f
	.long	.LASF560
	.byte	0x17
	.value	0x125
	.long	0x515
	.uleb128 0x2f
	.long	.LASF561
	.byte	0x17
	.value	0x126
	.long	0x515
	.uleb128 0x2f
	.long	.LASF562
	.byte	0x17
	.value	0x127
	.long	0x515
	.uleb128 0x2f
	.long	.LASF563
	.byte	0x17
	.value	0x12e
	.long	0x10b0
	.uleb128 0x2f
	.long	.LASF564
	.byte	0x17
	.value	0x162
	.long	0x10b0
	.uleb128 0x2f
	.long	.LASF565
	.byte	0x17
	.value	0x164
	.long	0x3c0c
	.uleb128 0x9
	.long	0x10b0
	.uleb128 0x2f
	.long	.LASF566
	.byte	0x17
	.value	0x166
	.long	0x5e
	.uleb128 0x2f
	.long	.LASF567
	.byte	0x17
	.value	0x1b7
	.long	0x1453
	.uleb128 0x2f
	.long	.LASF568
	.byte	0x17
	.value	0x1b8
	.long	0x1453
	.uleb128 0x2f
	.long	.LASF569
	.byte	0x17
	.value	0x1e1
	.long	0x179
	.uleb128 0x2f
	.long	.LASF570
	.byte	0x17
	.value	0x1e2
	.long	0x57
	.uleb128 0x2f
	.long	.LASF571
	.byte	0x17
	.value	0x1ff
	.long	0x10d8
	.uleb128 0x2f
	.long	.LASF572
	.byte	0x17
	.value	0x203
	.long	0xf8
	.uleb128 0x2f
	.long	.LASF573
	.byte	0x17
	.value	0x20b
	.long	0xf8
	.uleb128 0x2f
	.long	.LASF574
	.byte	0x17
	.value	0x218
	.long	0x10b0
	.uleb128 0x2f
	.long	.LASF575
	.byte	0x17
	.value	0x21a
	.long	0x10b0
	.uleb128 0x35
	.long	.LASF576
	.byte	0x18
	.byte	0x22
	.long	0x1453
	.uleb128 0x35
	.long	.LASF577
	.byte	0x18
	.byte	0x26
	.long	0x124f
	.uleb128 0x35
	.long	.LASF578
	.byte	0x18
	.byte	0x2a
	.long	0x1453
	.uleb128 0x35
	.long	.LASF579
	.byte	0x18
	.byte	0x2b
	.long	0x1453
	.uleb128 0x35
	.long	.LASF580
	.byte	0x18
	.byte	0x2e
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF581
	.byte	0x18
	.byte	0x2f
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF582
	.byte	0x18
	.byte	0x31
	.long	0x3cd6
	.uleb128 0x6
	.byte	0x8
	.long	0xfe1
	.uleb128 0x35
	.long	.LASF583
	.byte	0x18
	.byte	0x33
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF584
	.byte	0x18
	.byte	0x34
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF585
	.byte	0x18
	.byte	0x37
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF586
	.byte	0x18
	.byte	0x38
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF587
	.byte	0x18
	.byte	0x3c
	.long	0x1167
	.uleb128 0x35
	.long	.LASF588
	.byte	0x18
	.byte	0x3d
	.long	0x1167
	.uleb128 0x35
	.long	.LASF589
	.byte	0x18
	.byte	0x3f
	.long	0x3d29
	.uleb128 0x6
	.byte	0x8
	.long	0x124f
	.uleb128 0x35
	.long	.LASF590
	.byte	0x18
	.byte	0x40
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF591
	.byte	0x18
	.byte	0x41
	.long	0x10a5
	.uleb128 0x35
	.long	.LASF592
	.byte	0x18
	.byte	0x43
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF593
	.byte	0x18
	.byte	0x44
	.long	0x3941
	.uleb128 0x35
	.long	.LASF594
	.byte	0x18
	.byte	0x5f
	.long	0xf8
	.uleb128 0x35
	.long	.LASF595
	.byte	0x18
	.byte	0x60
	.long	0x12e4
	.uleb128 0x35
	.long	.LASF596
	.byte	0x18
	.byte	0x73
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF597
	.byte	0x18
	.byte	0x74
	.long	0x126c
	.uleb128 0x35
	.long	.LASF598
	.byte	0x18
	.byte	0x75
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF599
	.byte	0x18
	.byte	0x76
	.long	0x126c
	.uleb128 0x35
	.long	.LASF600
	.byte	0x18
	.byte	0x77
	.long	0xf2
	.uleb128 0x35
	.long	.LASF601
	.byte	0x18
	.byte	0x79
	.long	0x10d8
	.uleb128 0x35
	.long	.LASF602
	.byte	0x18
	.byte	0x81
	.long	0x3dbe
	.uleb128 0x9
	.long	0x1487
	.uleb128 0x35
	.long	.LASF603
	.byte	0x18
	.byte	0x82
	.long	0x169
	.uleb128 0x35
	.long	.LASF604
	.byte	0x18
	.byte	0x83
	.long	0x57
	.uleb128 0x35
	.long	.LASF605
	.byte	0x18
	.byte	0x85
	.long	0x57
	.uleb128 0x35
	.long	.LASF606
	.byte	0x18
	.byte	0x87
	.long	0x1272
	.uleb128 0x35
	.long	.LASF607
	.byte	0x18
	.byte	0x88
	.long	0x2927
	.uleb128 0x35
	.long	.LASF608
	.byte	0x18
	.byte	0xed
	.long	0x179f
	.uleb128 0x35
	.long	.LASF609
	.byte	0x19
	.byte	0x45
	.long	0x110f
	.uleb128 0x35
	.long	.LASF610
	.byte	0x19
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF551:
	.string	"PL_compiling"
.LASF89:
	.string	"precomp"
.LASF121:
	.string	"blku_oldretsp"
.LASF403:
	.string	"to_cv_amg"
.LASF394:
	.string	"repeat_ass_amg"
.LASF362:
	.string	"rshift_ass_amg"
.LASF320:
	.string	"si_prev"
.LASF420:
	.string	"Perl_mg_clear"
.LASF21:
	.string	"gid_t"
.LASF265:
	.string	"xiou_any"
.LASF113:
	.string	"gp_file"
.LASF598:
	.string	"PL_ofs_sv"
.LASF514:
	.string	"sigv"
.LASF118:
	.string	"block"
.LASF177:
	.string	"xpvgv"
.LASF491:
	.string	"lvoff"
.LASF438:
	.string	"saveerrno"
.LASF199:
	.string	"xio_ifp"
.LASF64:
	.string	"cop_io"
.LASF314:
	.string	"stackinfo"
.LASF364:
	.string	"band_ass_amg"
.LASF371:
	.string	"gt_amg"
.LASF418:
	.string	"Perl_mg_length"
.LASF171:
	.string	"xhv_keys"
.LASF488:
	.string	"tmps"
.LASF214:
	.string	"xio_flags"
.LASF513:
	.string	"Perl_whichsig"
.LASF218:
	.string	"svt_set"
.LASF167:
	.string	"xpvhv"
.LASF396:
	.string	"concat_ass_amg"
.LASF613:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF590:
	.string	"PL_retstack_ix"
.LASF107:
	.string	"gp_hv"
.LASF198:
	.string	"xpvio"
.LASF142:
	.string	"xpviv"
.LASF388:
	.string	"cos_amg"
.LASF306:
	.string	"sbu_targ"
.LASF24:
	.string	"time_t"
.LASF467:
	.string	"next"
.LASF526:
	.string	"PL_no_helem"
.LASF340:
	.string	"DESTRUCTORFUNC_t"
.LASF186:
	.string	"xcv_start"
.LASF13:
	.string	"__off_t"
.LASF104:
	.string	"gp_io"
.LASF108:
	.string	"gp_egv"
.LASF40:
	.string	"st_size"
.LASF298:
	.string	"sbu_iters"
.LASF463:
	.string	"Perl_magic_setnkeys"
.LASF522:
	.string	"unwind_handler_stack"
.LASF327:
	.string	"hek_hash"
.LASF375:
	.string	"ncmp_amg"
.LASF62:
	.string	"cop_line"
.LASF185:
	.string	"xcv_stash"
.LASF448:
	.string	"keylen"
.LASF594:
	.string	"PL_tainted"
.LASF557:
	.string	"PL_origalen"
.LASF575:
	.string	"PL_signals"
.LASF391:
	.string	"log_amg"
.LASF546:
	.string	"PL_DBsingle"
.LASF190:
	.string	"xcv_gv"
.LASF559:
	.string	"PL_sighandlerp"
.LASF321:
	.string	"si_next"
.LASF139:
	.string	"xpv_cur"
.LASF421:
	.string	"Perl_mg_find"
.LASF132:
	.string	"mg_type"
.LASF512:
	.string	"any_fatals"
.LASF41:
	.string	"st_blksize"
.LASF333:
	.string	"mgs_ss_ix"
.LASF435:
	.string	"Perl_magic_get"
.LASF152:
	.string	"xpvlv"
.LASF138:
	.string	"xpv_pv"
.LASF459:
	.string	"Perl_magic_setsig"
.LASF517:
	.string	"tXpv"
.LASF148:
	.string	"xpvmg"
.LASF305:
	.string	"sbu_dstr"
.LASF373:
	.string	"eq_amg"
.LASF37:
	.string	"st_gid"
.LASF263:
	.string	"cv_flags_t"
.LASF112:
	.string	"gp_line"
.LASF297:
	.string	"subst"
.LASF19:
	.string	"__syscall_slong_t"
.LASF204:
	.string	"xio_page_len"
.LASF511:
	.string	"accumulate"
.LASF370:
	.string	"le_amg"
.LASF565:
	.string	"PL_debug"
.LASF409:
	.string	"mgs_ix"
.LASF34:
	.string	"st_nlink"
.LASF145:
	.string	"xpvnv"
.LASF178:
	.string	"xgv_gp"
.LASF131:
	.string	"mg_private"
.LASF592:
	.string	"PL_Sv"
.LASF45:
	.string	"st_ctim"
.LASF400:
	.string	"to_av_amg"
.LASF304:
	.string	"sbu_orig"
.LASF164:
	.string	"xav_arylen"
.LASF101:
	.string	"program"
.LASF187:
	.string	"xcv_root"
.LASF277:
	.string	"old_in_eval"
.LASF241:
	.string	"Sighandler_t"
.LASF571:
	.string	"PL_encoding"
.LASF130:
	.string	"mg_virtual"
.LASF486:
	.string	"Perl_magic_setglob"
.LASF539:
	.string	"PL_basetime"
.LASF155:
	.string	"xlv_targ"
.LASF390:
	.string	"exp_amg"
.LASF397:
	.string	"copy_amg"
.LASF485:
	.string	"Perl_magic_getglob"
.LASF60:
	.string	"cop_seq"
.LASF82:
	.string	"sv_flags"
.LASF443:
	.string	"strend"
.LASF363:
	.string	"band_amg"
.LASF495:
	.string	"Perl_magic_getvec"
.LASF345:
	.string	"string_amg"
.LASF529:
	.string	"PL_sig_num"
.LASF79:
	.string	"broiled"
.LASF209:
	.string	"xio_fmt_gv"
.LASF43:
	.string	"st_atim"
.LASF453:
	.string	"to_dec"
.LASF545:
	.string	"PL_DBline"
.LASF111:
	.string	"gp_flags"
.LASF117:
	.string	"cx_u"
.LASF103:
	.string	"gp_refcnt"
.LASF288:
	.string	"itervar"
.LASF97:
	.string	"nparens"
.LASF452:
	.string	"Perl_magic_clearsig"
.LASF243:
	.string	"type"
.LASF457:
	.string	"Perl___notused"
.LASF8:
	.string	"__uid_t"
.LASF339:
	.string	"regfree_t"
.LASF203:
	.string	"xio_page"
.LASF553:
	.string	"PL_euid"
.LASF461:
	.string	"Perl_magic_setamagic"
.LASF193:
	.string	"xcv_padlist"
.LASF296:
	.string	"blku_loop"
.LASF344:
	.string	"nomethod_amg"
.LASF102:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF240:
	.string	"PerlIO"
.LASF519:
	.string	"S_save_magic"
.LASF307:
	.string	"sbu_s"
.LASF17:
	.string	"__blkcnt_t"
.LASF484:
	.string	"ulen"
.LASF470:
	.string	"Perl_magic_setpack"
.LASF336:
	.string	"uf_set"
.LASF603:
	.string	"PL_in_eval"
.LASF338:
	.string	"float"
.LASF604:
	.string	"PL_delaymagic"
.LASF471:
	.string	"Perl_magic_clearpack"
.LASF289:
	.string	"itersave"
.LASF469:
	.string	"Perl_magic_getpack"
.LASF49:
	.string	"op_next"
.LASF80:
	.string	"sv_any"
.LASF532:
	.string	"PL_diehook"
.LASF276:
	.string	"block_eval"
.LASF377:
	.string	"slt_amg"
.LASF100:
	.string	"reganch"
.LASF233:
	.string	"stashes"
.LASF521:
	.string	"popval"
.LASF86:
	.string	"endp"
.LASF510:
	.string	"Perl_magic_set"
.LASF422:
	.string	"Perl_mg_copy"
.LASF600:
	.string	"PL_chopset"
.LASF414:
	.string	"was_temp"
.LASF11:
	.string	"__mode_t"
.LASF25:
	.string	"size_t"
.LASF591:
	.string	"PL_retstack_max"
.LASF154:
	.string	"xlv_targlen"
.LASF536:
	.string	"PL_unsafe"
.LASF554:
	.string	"PL_gid"
.LASF583:
	.string	"PL_savestack_ix"
.LASF260:
	.string	"SVt_PVGV"
.LASF295:
	.string	"blku_eval"
.LASF451:
	.string	"sigstate"
.LASF331:
	.string	"mgs_sv"
.LASF93:
	.string	"sublen"
.LASF556:
	.string	"PL_origenviron"
.LASF160:
	.string	"xav_fill"
.LASF343:
	.string	"bool__amg"
.LASF460:
	.string	"Perl_magic_setisa"
.LASF129:
	.string	"mg_moremagic"
.LASF515:
	.string	"Perl_sighandler"
.LASF309:
	.string	"sbu_strend"
.LASF61:
	.string	"cop_arybase"
.LASF587:
	.string	"PL_markstack_ptr"
.LASF318:
	.string	"si_cxmax"
.LASF135:
	.string	"mg_ptr"
.LASF367:
	.string	"bxor_amg"
.LASF426:
	.string	"moremagic"
.LASF293:
	.string	"itermax"
.LASF212:
	.string	"xio_subprocess"
.LASF91:
	.string	"subbeg"
.LASF85:
	.string	"startp"
.LASF401:
	.string	"to_hv_amg"
.LASF496:
	.string	"Perl_magic_setvec"
.LASF334:
	.string	"ufuncs"
.LASF494:
	.string	"Perl_magic_settaint"
.LASF574:
	.string	"PL_unicode"
.LASF503:
	.string	"Perl_magic_setmglob"
.LASF412:
	.string	"newmg"
.LASF611:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF489:
	.string	"offs"
.LASF439:
	.string	"bits_all"
.LASF482:
	.string	"Perl_magic_getpos"
.LASF402:
	.string	"to_gv_amg"
.LASF84:
	.string	"regexp"
.LASF455:
	.string	"Perl_raise_signal"
.LASF548:
	.string	"PL_tainting"
.LASF83:
	.string	"REGEXP"
.LASF609:
	.string	"PL_csighandlerp"
.LASF81:
	.string	"sv_refcnt"
.LASF219:
	.string	"svt_len"
.LASF589:
	.string	"PL_retstack"
.LASF407:
	.string	"max_amg_code"
.LASF244:
	.string	"next_off"
.LASF274:
	.string	"lval"
.LASF55:
	.string	"op_flags"
.LASF462:
	.string	"Perl_magic_getnkeys"
.LASF516:
	.string	"myop"
.LASF46:
	.string	"__unused"
.LASF63:
	.string	"cop_warnings"
.LASF323:
	.string	"PERL_SI"
.LASF88:
	.string	"substrs"
.LASF524:
	.string	"environ"
.LASF123:
	.string	"blku_oldscopesp"
.LASF257:
	.string	"SVt_PVAV"
.LASF317:
	.string	"si_cxix"
.LASF168:
	.string	"xhv_array"
.LASF358:
	.string	"pow_ass_amg"
.LASF534:
	.string	"PL_minus_c"
.LASF92:
	.string	"offsets"
.LASF576:
	.string	"PL_stack_sp"
.LASF454:
	.string	"Perl_mg_magical"
.LASF210:
	.string	"xio_bottom_name"
.LASF255:
	.string	"SVt_PVBM"
.LASF433:
	.string	"getlen"
.LASF12:
	.string	"__nlink_t"
.LASF341:
	.string	"fallback_amg"
.LASF33:
	.string	"st_ino"
.LASF35:
	.string	"st_mode"
.LASF127:
	.string	"MAGIC"
.LASF57:
	.string	"cop_label"
.LASF601:
	.string	"PL_bodytarget"
.LASF133:
	.string	"mg_flags"
.LASF281:
	.string	"cur_text"
.LASF157:
	.string	"XPVAV"
.LASF533:
	.string	"PL_warnhook"
.LASF259:
	.string	"SVt_PVCV"
.LASF558:
	.string	"PL_osname"
.LASF96:
	.string	"prelen"
.LASF325:
	.string	"hent_hek"
.LASF602:
	.string	"PL_curcop"
.LASF52:
	.string	"op_targ"
.LASF501:
	.string	"value"
.LASF500:
	.string	"Perl_vivify_defelem"
.LASF211:
	.string	"xio_bottom_gv"
.LASF429:
	.string	"paren"
.LASF543:
	.string	"PL_stderrgv"
.LASF122:
	.string	"blku_oldmarksp"
.LASF487:
	.string	"Perl_magic_getsubstr"
.LASF98:
	.string	"lastparen"
.LASF366:
	.string	"bor_ass_amg"
.LASF183:
	.string	"XPVCV"
.LASF417:
	.string	"nextmg"
.LASF291:
	.string	"iterary"
.LASF584:
	.string	"PL_savestack_max"
.LASF18:
	.string	"__ssize_t"
.LASF246:
	.string	"reg_data"
.LASF208:
	.string	"xio_fmt_name"
.LASF326:
	.string	"hent_val"
.LASF410:
	.string	"vtbl"
.LASF146:
	.string	"xnv_nv"
.LASF30:
	.string	"timespec"
.LASF324:
	.string	"hent_next"
.LASF361:
	.string	"rshift_amg"
.LASF156:
	.string	"xlv_type"
.LASF221:
	.string	"svt_free"
.LASF75:
	.string	"op_pmdynflags"
.LASF404:
	.string	"iter_amg"
.LASF379:
	.string	"sgt_amg"
.LASF261:
	.string	"SVt_PVFM"
.LASF544:
	.string	"PL_errgv"
.LASF232:
	.string	"clone_params"
.LASF490:
	.string	"Perl_magic_setsubstr"
.LASF564:
	.string	"PL_hints"
.LASF408:
	.string	"__sighandler_t"
.LASF478:
	.string	"tied"
.LASF335:
	.string	"uf_val"
.LASF368:
	.string	"bxor_ass_amg"
.LASF311:
	.string	"sbu_rx"
.LASF36:
	.string	"st_uid"
.LASF308:
	.string	"sbu_m"
.LASF194:
	.string	"xcv_outside"
.LASF266:
	.string	"PADLIST"
.LASF474:
	.string	"Perl_magic_wipepack"
.LASF230:
	.string	"any_dxptr"
.LASF586:
	.string	"PL_tmps_floor"
.LASF182:
	.string	"xgv_flags"
.LASF128:
	.string	"magic"
.LASF562:
	.string	"PL_sv_yes"
.LASF330:
	.string	"magic_state"
.LASF428:
	.string	"Perl_magic_regdatum_get"
.LASF465:
	.string	"S_magic_methcall"
.LASF258:
	.string	"SVt_PVHV"
.LASF247:
	.string	"SVt_NULL"
.LASF570:
	.string	"PL_sig_pending"
.LASF216:
	.string	"mgvtbl"
.LASF547:
	.string	"PL_sub_generation"
.LASF176:
	.string	"XPVGV"
.LASF215:
	.string	"MGVTBL"
.LASF313:
	.string	"cx_subst"
.LASF504:
	.string	"Perl_magic_setbm"
.LASF262:
	.string	"SVt_PVIO"
.LASF15:
	.string	"__time_t"
.LASF563:
	.string	"PL_lex_state"
.LASF252:
	.string	"SVt_PVIV"
.LASF94:
	.string	"refcnt"
.LASF464:
	.string	"meth"
.LASF303:
	.string	"sbu_rxtainted"
.LASF372:
	.string	"ge_amg"
.LASF166:
	.string	"XPVHV"
.LASF14:
	.string	"sizetype"
.LASF71:
	.string	"op_pmnext"
.LASF161:
	.string	"xav_max"
.LASF188:
	.string	"xcv_xsub"
.LASF509:
	.string	"Perl_magic_setutf8"
.LASF273:
	.string	"hasargs"
.LASF56:
	.string	"op_private"
.LASF386:
	.string	"dec_amg"
.LASF224:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF578:
	.string	"PL_stack_base"
.LASF197:
	.string	"XPVIO"
.LASF16:
	.string	"__blksize_t"
.LASF141:
	.string	"XPVIV"
.LASF163:
	.string	"xav_alloc"
.LASF450:
	.string	"Perl_magic_getsig"
.LASF301:
	.string	"sbu_oldsave"
.LASF170:
	.string	"xhv_max"
.LASF540:
	.string	"PL_maxsysfd"
.LASF95:
	.string	"minlen"
.LASF356:
	.string	"modulo_ass_amg"
.LASF424:
	.string	"count"
.LASF518:
	.string	"cleanup"
.LASF437:
	.string	"add_groups"
.LASF477:
	.string	"Perl_magic_scalarpack"
.LASF381:
	.string	"seq_amg"
.LASF150:
	.string	"xmg_stash"
.LASF300:
	.string	"sbu_rflags"
.LASF87:
	.string	"regstclass"
.LASF173:
	.string	"xhv_eiter"
.LASF472:
	.string	"Perl_magic_sizepack"
.LASF612:
	.string	"mg.c"
.LASF256:
	.string	"SVt_PVLV"
.LASF245:
	.string	"reg_substr_data"
.LASF378:
	.string	"sle_amg"
.LASF499:
	.string	"Perl_magic_setdefelem"
.LASF270:
	.string	"savearray"
.LASF290:
	.string	"iterlval"
.LASF568:
	.string	"PL_psig_name"
.LASF347:
	.string	"add_amg"
.LASF445:
	.string	"Perl_magic_clearenv"
.LASF419:
	.string	"Perl_mg_size"
.LASF579:
	.string	"PL_stack_max"
.LASF126:
	.string	"blk_u"
.LASF254:
	.string	"SVt_PVMG"
.LASF162:
	.string	"xof_off"
.LASF588:
	.string	"PL_markstack_max"
.LASF350:
	.string	"subtr_ass_amg"
.LASF180:
	.string	"xgv_namelen"
.LASF68:
	.string	"op_last"
.LASF238:
	.string	"__dirstream"
.LASF227:
	.string	"any_long"
.LASF151:
	.string	"XPVLV"
.LASF585:
	.string	"PL_tmps_ix"
.LASF54:
	.string	"op_seq"
.LASF431:
	.string	"Perl_magic_len"
.LASF383:
	.string	"not_amg"
.LASF507:
	.string	"Perl_magic_setregexp"
.LASF606:
	.string	"PL_curstack"
.LASF153:
	.string	"xlv_targoff"
.LASF253:
	.string	"SVt_PVNV"
.LASF65:
	.string	"PMOP"
.LASF446:
	.string	"Perl_magic_set_all_env"
.LASF351:
	.string	"mult_amg"
.LASF440:
	.string	"bits"
.LASF99:
	.string	"lastcloseparen"
.LASF147:
	.string	"XPVMG"
.LASF342:
	.string	"abs_amg"
.LASF299:
	.string	"sbu_maxiters"
.LASF577:
	.string	"PL_op"
.LASF432:
	.string	"getparen"
.LASF213:
	.string	"xio_type"
.LASF6:
	.string	"long int"
.LASF220:
	.string	"svt_clear"
.LASF200:
	.string	"xio_ofp"
.LASF181:
	.string	"xgv_stash"
.LASF278:
	.string	"old_op_type"
.LASF69:
	.string	"op_pmreplroot"
.LASF466:
	.string	"S_magic_methpack"
.LASF192:
	.string	"xcv_depth"
.LASF110:
	.string	"gp_cvgen"
.LASF144:
	.string	"XPVNV"
.LASF172:
	.string	"xhv_riter"
.LASF125:
	.string	"blku_gimme"
.LASF283:
	.string	"label"
.LASF115:
	.string	"context"
.LASF269:
	.string	"dfoutgv"
.LASF376:
	.string	"scmp_amg"
.LASF561:
	.string	"PL_sv_no"
.LASF493:
	.string	"Perl_magic_gettaint"
.LASF70:
	.string	"op_pmreplstart"
.LASF580:
	.string	"PL_scopestack_ix"
.LASF248:
	.string	"SVt_IV"
.LASF242:
	.string	"regnode"
.LASF286:
	.string	"next_op"
.LASF608:
	.string	"PL_regfree"
.LASF550:
	.string	"PL_ofmt"
.LASF50:
	.string	"op_sibling"
.LASF201:
	.string	"xio_dirpu"
.LASF226:
	.string	"any_iv"
.LASF596:
	.string	"PL_rs"
.LASF174:
	.string	"xhv_pmroot"
.LASF360:
	.string	"lshift_ass_amg"
.LASF538:
	.string	"PL_perldb"
.LASF3:
	.string	"long unsigned int"
.LASF66:
	.string	"pmop"
.LASF506:
	.string	"Perl_magic_setuvar"
.LASF447:
	.string	"entry"
.LASF302:
	.string	"sbu_once"
.LASF405:
	.string	"int_amg"
.LASF441:
	.string	"Perl_magic_getuvar"
.LASF77:
	.string	"PerlInterpreter"
.LASF346:
	.string	"numer_amg"
.LASF355:
	.string	"modulo_amg"
.LASF392:
	.string	"sqrt_amg"
.LASF395:
	.string	"concat_amg"
.LASF20:
	.string	"char"
.LASF271:
	.string	"argarray"
.LASF206:
	.string	"xio_top_name"
.LASF528:
	.string	"PL_sig_name"
.LASF136:
	.string	"mg_len"
.LASF264:
	.string	"xiou_dirp"
.LASF582:
	.string	"PL_savestack"
.LASF179:
	.string	"xgv_name"
.LASF595:
	.string	"PL_curpm"
.LASF354:
	.string	"div_ass_amg"
.LASF268:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF430:
	.string	"Perl_magic_regdatum_set"
.LASF202:
	.string	"xio_lines"
.LASF530:
	.string	"PL_origargc"
.LASF605:
	.string	"PL_localizing"
.LASF316:
	.string	"si_cxstack"
.LASF140:
	.string	"xpv_len"
.LASF531:
	.string	"PL_origargv"
.LASF53:
	.string	"op_type"
.LASF415:
	.string	"Perl_mg_get"
.LASF48:
	.string	"STRLEN"
.LASF527:
	.string	"PL_no_modify"
.LASF279:
	.string	"old_namesv"
.LASF492:
	.string	"lvlen"
.LASF249:
	.string	"SVt_NV"
.LASF476:
	.string	"Perl_magic_existspack"
.LASF329:
	.string	"hek_key"
.LASF406:
	.string	"DESTROY_amg"
.LASF191:
	.string	"xcv_file"
.LASF38:
	.string	"__pad0"
.LASF479:
	.string	"Perl_magic_setdbline"
.LASF480:
	.string	"Perl_magic_getarylen"
.LASF449:
	.string	"Perl_magic_clear_all_env"
.LASF235:
	.string	"proto_perl"
.LASF280:
	.string	"old_eval_root"
.LASF581:
	.string	"PL_scopestack_max"
.LASF560:
	.string	"PL_sv_undef"
.LASF535:
	.string	"PL_dowarn"
.LASF434:
	.string	"send"
.LASF387:
	.string	"atan2_amg"
.LASF267:
	.string	"PADOFFSET"
.LASF73:
	.string	"op_pmflags"
.LASF294:
	.string	"blku_sub"
.LASF78:
	.string	"interpreter"
.LASF124:
	.string	"blku_oldpm"
.LASF541:
	.string	"PL_multiline"
.LASF380:
	.string	"sge_amg"
.LASF67:
	.string	"op_first"
.LASF47:
	.string	"double"
.LASF599:
	.string	"PL_defoutgv"
.LASF74:
	.string	"op_pmpermflags"
.LASF137:
	.string	"xrv_rv"
.LASF39:
	.string	"st_rdev"
.LASF32:
	.string	"st_dev"
.LASF23:
	.string	"ssize_t"
.LASF51:
	.string	"op_ppaddr"
.LASF384:
	.string	"compl_amg"
.LASF225:
	.string	"any_i32"
.LASF385:
	.string	"inc_amg"
.LASF398:
	.string	"neg_amg"
.LASF549:
	.string	"PL_ors_sv"
.LASF251:
	.string	"SVt_PV"
.LASF59:
	.string	"cop_filegv"
.LASF228:
	.string	"any_bool"
.LASF196:
	.string	"xcv_outside_seq"
.LASF90:
	.string	"data"
.LASF610:
	.string	"PL_use_safe_putenv"
.LASF427:
	.string	"Perl_magic_regdata_cnt"
.LASF319:
	.string	"si_type"
.LASF159:
	.string	"xav_array"
.LASF250:
	.string	"SVt_RV"
.LASF413:
	.string	"head"
.LASF231:
	.string	"CLONE_PARAMS"
.LASF284:
	.string	"resetsp"
.LASF114:
	.string	"PERL_CONTEXT"
.LASF169:
	.string	"xhv_fill"
.LASF481:
	.string	"Perl_magic_setarylen"
.LASF143:
	.string	"xiv_iv"
.LASF119:
	.string	"blku_oldsp"
.LASF359:
	.string	"lshift_amg"
.LASF456:
	.string	"Perl_csighandler"
.LASF520:
	.string	"restore_magic"
.LASF393:
	.string	"repeat_amg"
.LASF332:
	.string	"mgs_flags"
.LASF9:
	.string	"__gid_t"
.LASF352:
	.string	"mult_ass_amg"
.LASF285:
	.string	"redo_op"
.LASF328:
	.string	"hek_len"
.LASF425:
	.string	"Perl_mg_free"
.LASF444:
	.string	"tmpbuf"
.LASF26:
	.string	"tv_sec"
.LASF28:
	.string	"long long unsigned int"
.LASF369:
	.string	"lt_amg"
.LASF287:
	.string	"last_op"
.LASF22:
	.string	"uid_t"
.LASF573:
	.string	"PL_utf8locale"
.LASF505:
	.string	"Perl_magic_setfm"
.LASF497:
	.string	"Perl_magic_getdefelem"
.LASF42:
	.string	"st_blocks"
.LASF442:
	.string	"Perl_magic_setenv"
.LASF555:
	.string	"PL_egid"
.LASF223:
	.string	"svt_dup"
.LASF322:
	.string	"si_markoff"
.LASF207:
	.string	"xio_top_gv"
.LASF353:
	.string	"div_amg"
.LASF566:
	.string	"PL_amagic_generation"
.LASF349:
	.string	"subtr_amg"
.LASF310:
	.string	"sbu_rxres"
.LASF607:
	.string	"PL_curstackinfo"
.LASF416:
	.string	"Perl_mg_set"
.LASF525:
	.string	"PL_no_aelem"
.LASF76:
	.string	"op_pmstash"
.LASF217:
	.string	"svt_get"
.LASF105:
	.string	"gp_form"
.LASF542:
	.string	"PL_statusvalue"
.LASF475:
	.string	"Perl_magic_nextpack"
.LASF473:
	.string	"retval"
.LASF120:
	.string	"blku_oldcop"
.LASF58:
	.string	"cop_stash"
.LASF29:
	.string	"long long int"
.LASF236:
	.string	"line_t"
.LASF175:
	.string	"xhv_name"
.LASF374:
	.string	"ne_amg"
.LASF315:
	.string	"si_stack"
.LASF222:
	.string	"svt_copy"
.LASF498:
	.string	"targ"
.LASF27:
	.string	"tv_nsec"
.LASF116:
	.string	"cx_type"
.LASF165:
	.string	"xav_flags"
.LASF292:
	.string	"iterix"
.LASF572:
	.string	"PL_taint_warn"
.LASF10:
	.string	"__ino_t"
.LASF458:
	.string	"Perl_despatch_signals"
.LASF149:
	.string	"xmg_magic"
.LASF134:
	.string	"mg_obj"
.LASF229:
	.string	"any_dptr"
.LASF483:
	.string	"Perl_magic_setpos"
.LASF399:
	.string	"to_sv_amg"
.LASF158:
	.string	"xpvav"
.LASF72:
	.string	"op_pmregexp"
.LASF523:
	.string	"sig_sv"
.LASF569:
	.string	"PL_psig_pend"
.LASF189:
	.string	"xcv_xsubany"
.LASF502:
	.string	"Perl_magic_killbackrefs"
.LASF205:
	.string	"xio_lines_left"
.LASF106:
	.string	"gp_av"
.LASF537:
	.string	"PL_inplace"
.LASF436:
	.string	"getrx"
.LASF411:
	.string	"have_new"
.LASF282:
	.string	"block_loop"
.LASF357:
	.string	"pow_amg"
.LASF597:
	.string	"PL_last_in_gv"
.LASF552:
	.string	"PL_uid"
.LASF593:
	.string	"PL_Xpv"
.LASF195:
	.string	"xcv_flags"
.LASF2:
	.string	"unsigned int"
.LASF184:
	.string	"xpvcv"
.LASF275:
	.string	"oldcomppad"
.LASF239:
	.string	"_PerlIO"
.LASF44:
	.string	"st_mtim"
.LASF365:
	.string	"bor_amg"
.LASF382:
	.string	"sne_amg"
.LASF5:
	.string	"short int"
.LASF337:
	.string	"uf_index"
.LASF109:
	.string	"gp_cv"
.LASF468:
	.string	"prev"
.LASF272:
	.string	"olddepth"
.LASF348:
	.string	"add_ass_amg"
.LASF508:
	.string	"Perl_magic_freeregexp"
.LASF423:
	.string	"klen"
.LASF312:
	.string	"cx_blk"
.LASF389:
	.string	"sin_amg"
.LASF31:
	.string	"stat"
.LASF237:
	.string	"PerlIOl"
.LASF234:
	.string	"flags"
.LASF567:
	.string	"PL_psig_ptr"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
