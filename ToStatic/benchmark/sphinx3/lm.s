	.file	"lm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 lm.c
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
	.string	"Darpa Trigram LM"
	.data
	.align 8
	.type	darpa_hdr, @object
	.size	darpa_hdr, 8
darpa_hdr:
	.quad	.LC0
	.local	LM_IN_MEMORY
	.comm	LM_IN_MEMORY,4,4
	.text
	.globl	lm_get_classid
	.type	lm_get_classid, @function
lm_get_classid:
.LFB2:
	.file 1 "lm.c"
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# model, model
	movq	%rsi, -32(%rbp)	# name, name
	.loc 1 85 0
	movq	-24(%rbp), %rax	# model, tmp70
	movq	224(%rax), %rax	# model_3(D)->lmclass, D.7569
	testq	%rax, %rax	# D.7569
	jne	.L2	#,
	.loc 1 86 0
	movl	$-1, %eax	#, D.7568
	jmp	.L3	#
.L2:
	.loc 1 88 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L6:
	.loc 1 89 0
	movq	-24(%rbp), %rax	# model, tmp71
	movq	224(%rax), %rax	# model_3(D)->lmclass, D.7569
	movl	-4(%rbp), %edx	# i, tmp72
	movslq	%edx, %rdx	# tmp72, D.7571
	salq	$3, %rdx	#, D.7571
	addq	%rdx, %rax	# D.7571, D.7569
	movq	(%rax), %rax	# *_11, D.7572
	movq	(%rax), %rax	# _12->name, D.7573
	movq	-32(%rbp), %rdx	# name, tmp73
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# D.7573,
	call	strcmp	#
	testl	%eax, %eax	# D.7570
	jne	.L5	#,
	.loc 1 90 0
	movl	-4(%rbp), %eax	# i, tmp74
	addl	$16777216, %eax	#, D.7568
	jmp	.L3	#
.L5:
	.loc 1 88 0
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 88 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# model, tmp75
	movl	232(%rax), %eax	# model_3(D)->n_lmclass, D.7570
	cmpl	-4(%rbp), %eax	# i, D.7570
	jg	.L6	#,
	.loc 1 92 0 is_stmt 1
	movl	$-1, %eax	#, D.7568
.L3:
	.loc 1 93 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	lm_get_classid, .-lm_get_classid
	.section	.rodata
.LC1:
	.string	"INFO"
.LC2:
	.string	"lm.c"
	.align 8
.LC3:
	.string	"Warning, lm_delete is currently empty, no memory is deleted\n"
	.text
	.globl	lm_delete
	.type	lm_delete, @function
lm_delete:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# lm, lm
	movq	%rsi, -16(%rbp)	# lmset, lmset
	.loc 1 151 0
	movl	$.LC1, %edx	#,
	movl	$151, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 153 0
	movl	$0, %eax	#, D.7574
	.loc 1 154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lm_delete, .-lm_delete
	.section	.rodata
.LC5:
	.string	"<s>"
	.text
	.type	lm_uw, @function
lm_uw:
.LFB4:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lm, lm
	movsd	%xmm0, -64(%rbp)	# uw, uw
	.loc 1 164 0
	movq	-64(%rbp), %rax	# uw, tmp81
	movq	%rax, -72(%rbp)	# tmp81, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, -36(%rbp)	# tmp82, loguw
	.loc 1 165 0
	movsd	.LC4(%rip), %xmm0	#, tmp83
	subsd	-64(%rbp), %xmm0	# uw, D.7578
	call	logs3	#
	movl	%eax, -32(%rbp)	# tmp84, loguw_
	.loc 1 166 0
	movq	-56(%rbp), %rax	# lm, tmp85
	movl	(%rax), %eax	# lm_6(D)->n_ug, D.7579
	subl	$1, %eax	#, D.7579
	cvtsi2sd	%eax, %xmm0	# D.7579, D.7578
	movsd	.LC4(%rip), %xmm1	#, tmp86
	divsd	%xmm0, %xmm1	# D.7578, D.7578
	movapd	%xmm1, %xmm0	# D.7578, D.7578
	call	logs3	#
	movl	%eax, -28(%rbp)	# tmp87, loguniform
	.loc 1 168 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L10	#
.L12:
	.loc 1 169 0
	movq	-56(%rbp), %rax	# lm, tmp88
	movq	16(%rax), %rax	# lm_6(D)->wordstr, D.7580
	movl	-40(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, D.7581
	salq	$3, %rdx	#, D.7581
	addq	%rdx, %rax	# D.7581, D.7580
	movq	(%rax), %rax	# *_17, D.7582
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.7582,
	call	strcmp	#
	testl	%eax, %eax	# D.7579
	je	.L11	#,
	.loc 1 170 0
	movq	-56(%rbp), %rax	# lm, tmp90
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7583
	movl	-40(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.7581
	salq	$4, %rdx	#, D.7581
	addq	%rdx, %rax	# D.7581, D.7583
	movl	4(%rax), %edx	# _23->prob.l, D.7579
	movl	-36(%rbp), %eax	# loguw, tmp95
	addl	%edx, %eax	# D.7579, tmp94
	movl	%eax, -24(%rbp)	# tmp94, p1
	.loc 1 171 0
	movl	-32(%rbp), %eax	# loguw_, tmp100
	movl	-28(%rbp), %edx	# loguniform, tmp101
	addl	%edx, %eax	# tmp101, tmp99
	movl	%eax, -20(%rbp)	# tmp99, p2
	.loc 1 172 0
	movq	-56(%rbp), %rax	# lm, tmp102
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7583
	movl	-40(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, D.7581
	salq	$4, %rdx	#, D.7581
	leaq	(%rax,%rdx), %rbx	#, D.7583
	movl	-20(%rbp), %edx	# p2, tmp104
	movl	-24(%rbp), %eax	# p1, tmp105
	movl	%edx, %esi	# tmp104,
	movl	%eax, %edi	# tmp105,
	call	logs3_add	#
	movl	%eax, 4(%rbx)	# D.7579, _30->prob.l
.L11:
	.loc 1 168 0
	addl	$1, -40(%rbp)	#, i
.L10:
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lm, tmp106
	movl	(%rax), %eax	# lm_6(D)->n_ug, D.7579
	cmpl	-40(%rbp), %eax	# i, D.7579
	jg	.L12	#,
	.loc 1 175 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lm_uw, .-lm_uw
	.type	lm2logs3, @function
lm2logs3:
.LFB5:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# lm, lm
	movsd	%xmm0, -48(%rbp)	# uw, uw
	.loc 1 182 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L14	#
.L15:
	.loc 1 183 0 discriminator 2
	movq	-40(%rbp), %rax	# lm, tmp119
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7587
	movl	-20(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, D.7588
	salq	$4, %rdx	#, D.7588
	leaq	(%rax,%rdx), %rbx	#, D.7587
	movq	-40(%rbp), %rax	# lm, tmp121
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7587
	movl	-20(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, D.7588
	salq	$4, %rdx	#, D.7588
	addq	%rdx, %rax	# D.7588, D.7587
	movss	4(%rax), %xmm0	# _15->prob.f, D.7589
	unpcklps	%xmm0, %xmm0	# D.7589, D.7589
	cvtps2pd	%xmm0, %xmm0	# D.7589, D.7590
	call	log10_to_logs3	#
	movl	%eax, 4(%rbx)	# D.7586, _11->prob.l
	.loc 1 184 0 discriminator 2
	movq	-40(%rbp), %rax	# lm, tmp123
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7587
	movl	-20(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, D.7588
	salq	$4, %rdx	#, D.7588
	leaq	(%rax,%rdx), %rbx	#, D.7587
	movq	-40(%rbp), %rax	# lm, tmp125
	movq	40(%rax), %rax	# lm_6(D)->ug, D.7587
	movl	-20(%rbp), %edx	# i, tmp126
	movslq	%edx, %rdx	# tmp126, D.7588
	salq	$4, %rdx	#, D.7588
	addq	%rdx, %rax	# D.7588, D.7587
	movss	8(%rax), %xmm0	# _26->bowt.f, D.7589
	unpcklps	%xmm0, %xmm0	# D.7589, D.7589
	cvtps2pd	%xmm0, %xmm0	# D.7589, D.7590
	call	log10_to_logs3	#
	movl	%eax, 8(%rbx)	# D.7586, _22->bowt.l
	.loc 1 182 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L14:
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lm, tmp127
	movl	(%rax), %eax	# lm_6(D)->n_ug, D.7586
	cmpl	-20(%rbp), %eax	# i, D.7586
	jg	.L15	#,
	.loc 1 187 0 is_stmt 1
	movq	-48(%rbp), %rax	# uw, tmp128
	movq	-40(%rbp), %rdx	# lm, tmp129
	movq	%rax, -56(%rbp)	# tmp128, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp129,
	call	lm_uw	#
	.loc 1 189 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L16	#
.L17:
	.loc 1 190 0 discriminator 2
	movq	-40(%rbp), %rax	# lm, tmp130
	movq	80(%rax), %rax	# lm_6(D)->bgprob, D.7591
	movl	-20(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, D.7588
	salq	$2, %rdx	#, D.7588
	leaq	(%rax,%rdx), %rbx	#, D.7591
	movq	-40(%rbp), %rax	# lm, tmp132
	movq	80(%rax), %rax	# lm_6(D)->bgprob, D.7591
	movl	-20(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, D.7588
	salq	$2, %rdx	#, D.7588
	addq	%rdx, %rax	# D.7588, D.7591
	movss	(%rax), %xmm0	# _41->f, D.7589
	unpcklps	%xmm0, %xmm0	# D.7589, D.7589
	cvtps2pd	%xmm0, %xmm0	# D.7589, D.7590
	call	log10_to_logs3	#
	movl	%eax, (%rbx)	# D.7586, _37->l
	.loc 1 189 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L16:
	.loc 1 189 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lm, tmp134
	movl	112(%rax), %eax	# lm_6(D)->n_bgprob, D.7586
	cmpl	-20(%rbp), %eax	# i, D.7586
	jg	.L17	#,
	.loc 1 192 0 is_stmt 1
	movq	-40(%rbp), %rax	# lm, tmp135
	movl	8(%rax), %eax	# lm_6(D)->n_tg, D.7586
	testl	%eax, %eax	# D.7586
	jle	.L13	#,
	.loc 1 193 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L19	#
.L20:
	.loc 1 194 0 discriminator 2
	movq	-40(%rbp), %rax	# lm, tmp136
	movq	88(%rax), %rax	# lm_6(D)->tgprob, D.7591
	movl	-20(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, D.7588
	salq	$2, %rdx	#, D.7588
	leaq	(%rax,%rdx), %rbx	#, D.7591
	movq	-40(%rbp), %rax	# lm, tmp138
	movq	88(%rax), %rax	# lm_6(D)->tgprob, D.7591
	movl	-20(%rbp), %edx	# i, tmp139
	movslq	%edx, %rdx	# tmp139, D.7588
	salq	$2, %rdx	#, D.7588
	addq	%rdx, %rax	# D.7588, D.7591
	movss	(%rax), %xmm0	# _56->f, D.7589
	unpcklps	%xmm0, %xmm0	# D.7589, D.7589
	cvtps2pd	%xmm0, %xmm0	# D.7589, D.7590
	call	log10_to_logs3	#
	movl	%eax, (%rbx)	# D.7586, _52->l
	.loc 1 193 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L19:
	.loc 1 193 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lm, tmp140
	movl	116(%rax), %eax	# lm_6(D)->n_tgprob, D.7586
	cmpl	-20(%rbp), %eax	# i, D.7586
	jg	.L20	#,
	.loc 1 195 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L21	#
.L22:
	.loc 1 196 0 discriminator 2
	movq	-40(%rbp), %rax	# lm, tmp141
	movq	96(%rax), %rax	# lm_6(D)->tgbowt, D.7591
	movl	-20(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, D.7588
	salq	$2, %rdx	#, D.7588
	leaq	(%rax,%rdx), %rbx	#, D.7591
	movq	-40(%rbp), %rax	# lm, tmp143
	movq	96(%rax), %rax	# lm_6(D)->tgbowt, D.7591
	movl	-20(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, D.7588
	salq	$2, %rdx	#, D.7588
	addq	%rdx, %rax	# D.7588, D.7591
	movss	(%rax), %xmm0	# _70->f, D.7589
	unpcklps	%xmm0, %xmm0	# D.7589, D.7589
	cvtps2pd	%xmm0, %xmm0	# D.7589, D.7590
	call	log10_to_logs3	#
	movl	%eax, (%rbx)	# D.7586, _66->l
	.loc 1 195 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L21:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# lm, tmp145
	movl	120(%rax), %eax	# lm_6(D)->n_tgbowt, D.7586
	cmpl	-20(%rbp), %eax	# i, D.7586
	jg	.L22	#,
.L13:
	.loc 1 198 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lm2logs3, .-lm2logs3
	.section	.rodata
.LC7:
	.string	"FATAL_ERROR"
.LC8:
	.string	"lw = %e\n"
.LC9:
	.string	"wip = %e\n"
	.text
	.globl	lm_set_param
	.type	lm_set_param, @function
lm_set_param:
.LFB6:
	.loc 1 202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	movsd	%xmm0, -32(%rbp)	# lw, lw
	movsd	%xmm1, -40(%rbp)	# wip, wip
	.loc 1 206 0
	xorpd	%xmm0, %xmm0	# tmp136
	ucomisd	-32(%rbp), %xmm0	# lw, tmp136
	jb	.L24	#,
	.loc 1 207 0
	movl	$.LC7, %edx	#,
	movl	$207, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-32(%rbp), %rax	# lw, tmp137
	movq	%rax, -48(%rbp)	# tmp137, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC8, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L24:
	.loc 1 208 0
	xorpd	%xmm0, %xmm0	# tmp138
	ucomisd	-40(%rbp), %xmm0	# wip, tmp138
	jb	.L26	#,
	.loc 1 209 0
	movl	$.LC7, %edx	#,
	movl	$209, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# wip, tmp139
	movq	%rax, -48(%rbp)	# tmp139, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC9, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L26:
	.loc 1 213 0
	movq	-40(%rbp), %rax	# wip, tmp140
	movq	%rax, -48(%rbp)	# tmp140, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, -12(%rbp)	# tmp141, iwip
	.loc 1 215 0
	movq	-24(%rbp), %rax	# lm, tmp142
	movss	148(%rax), %xmm0	# lm_8(D)->lw, D.7592
	unpcklps	%xmm0, %xmm0	# D.7592, D.7592
	cvtps2pd	%xmm0, %xmm0	# D.7592, D.7593
	movsd	-32(%rbp), %xmm1	# lw, tmp144
	divsd	%xmm0, %xmm1	# D.7593, tmp143
	movapd	%xmm1, %xmm0	# tmp143, tmp143
	movsd	%xmm0, -8(%rbp)	# tmp143, f
	.loc 1 217 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L28	#
.L29:
	.loc 1 218 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp145
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7595
	movl	-16(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, D.7596
	salq	$4, %rdx	#, D.7596
	addq	%rax, %rdx	# D.7595, D.7595
	movq	-24(%rbp), %rax	# lm, tmp147
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7595
	movl	-16(%rbp), %ecx	# i, tmp148
	movslq	%ecx, %rcx	# tmp148, D.7596
	salq	$4, %rcx	#, D.7596
	addq	%rcx, %rax	# D.7596, D.7595
	movl	4(%rax), %ecx	# _21->prob.l, D.7594
	movq	-24(%rbp), %rax	# lm, tmp149
	movl	152(%rax), %eax	# lm_8(D)->wip, D.7594
	subl	%eax, %ecx	# D.7594, D.7594
	movl	%ecx, %eax	# D.7594, D.7594
	cvtsi2sd	%eax, %xmm0	# D.7594, D.7593
	mulsd	-8(%rbp), %xmm0	# f, D.7593
	cvttsd2si	%xmm0, %ecx	# D.7593, D.7594
	movl	-12(%rbp), %eax	# iwip, tmp150
	addl	%ecx, %eax	# D.7594, D.7594
	movl	%eax, 4(%rdx)	# D.7594, _17->prob.l
	.loc 1 219 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp151
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7595
	movl	-16(%rbp), %edx	# i, tmp152
	movslq	%edx, %rdx	# tmp152, D.7596
	salq	$4, %rdx	#, D.7596
	addq	%rax, %rdx	# D.7595, D.7595
	movq	-24(%rbp), %rax	# lm, tmp153
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7595
	movl	-16(%rbp), %ecx	# i, tmp154
	movslq	%ecx, %rcx	# tmp154, D.7596
	salq	$4, %rcx	#, D.7596
	addq	%rcx, %rax	# D.7596, D.7595
	movl	8(%rax), %eax	# _36->bowt.l, D.7594
	cvtsi2sd	%eax, %xmm0	# D.7594, D.7593
	mulsd	-8(%rbp), %xmm0	# f, D.7593
	cvttsd2si	%xmm0, %eax	# D.7593, D.7594
	movl	%eax, 8(%rdx)	# D.7594, _32->bowt.l
	.loc 1 217 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L28:
	.loc 1 217 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp155
	movl	(%rax), %eax	# lm_8(D)->n_ug, D.7594
	cmpl	-16(%rbp), %eax	# i, D.7594
	jg	.L29	#,
	.loc 1 222 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L30	#
.L31:
	.loc 1 223 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp156
	movq	80(%rax), %rax	# lm_8(D)->bgprob, D.7597
	movl	-16(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, D.7596
	salq	$2, %rdx	#, D.7596
	addq	%rax, %rdx	# D.7597, D.7597
	movq	-24(%rbp), %rax	# lm, tmp158
	movq	80(%rax), %rax	# lm_8(D)->bgprob, D.7597
	movl	-16(%rbp), %ecx	# i, tmp159
	movslq	%ecx, %rcx	# tmp159, D.7596
	salq	$2, %rcx	#, D.7596
	addq	%rcx, %rax	# D.7596, D.7597
	movl	(%rax), %ecx	# _51->l, D.7594
	movq	-24(%rbp), %rax	# lm, tmp160
	movl	152(%rax), %eax	# lm_8(D)->wip, D.7594
	subl	%eax, %ecx	# D.7594, D.7594
	movl	%ecx, %eax	# D.7594, D.7594
	cvtsi2sd	%eax, %xmm0	# D.7594, D.7593
	mulsd	-8(%rbp), %xmm0	# f, D.7593
	cvttsd2si	%xmm0, %ecx	# D.7593, D.7594
	movl	-12(%rbp), %eax	# iwip, tmp161
	addl	%ecx, %eax	# D.7594, D.7594
	movl	%eax, (%rdx)	# D.7594, _47->l
	.loc 1 222 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L30:
	.loc 1 222 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp162
	movl	112(%rax), %eax	# lm_8(D)->n_bgprob, D.7594
	cmpl	-16(%rbp), %eax	# i, D.7594
	jg	.L31	#,
	.loc 1 225 0 is_stmt 1
	movq	-24(%rbp), %rax	# lm, tmp163
	movl	8(%rax), %eax	# lm_8(D)->n_tg, D.7594
	testl	%eax, %eax	# D.7594
	jle	.L32	#,
	.loc 1 226 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L33	#
.L34:
	.loc 1 227 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp164
	movq	88(%rax), %rax	# lm_8(D)->tgprob, D.7597
	movl	-16(%rbp), %edx	# i, tmp165
	movslq	%edx, %rdx	# tmp165, D.7596
	salq	$2, %rdx	#, D.7596
	addq	%rax, %rdx	# D.7597, D.7597
	movq	-24(%rbp), %rax	# lm, tmp166
	movq	88(%rax), %rax	# lm_8(D)->tgprob, D.7597
	movl	-16(%rbp), %ecx	# i, tmp167
	movslq	%ecx, %rcx	# tmp167, D.7596
	salq	$2, %rcx	#, D.7596
	addq	%rcx, %rax	# D.7596, D.7597
	movl	(%rax), %ecx	# _70->l, D.7594
	movq	-24(%rbp), %rax	# lm, tmp168
	movl	152(%rax), %eax	# lm_8(D)->wip, D.7594
	subl	%eax, %ecx	# D.7594, D.7594
	movl	%ecx, %eax	# D.7594, D.7594
	cvtsi2sd	%eax, %xmm0	# D.7594, D.7593
	mulsd	-8(%rbp), %xmm0	# f, D.7593
	cvttsd2si	%xmm0, %ecx	# D.7593, D.7594
	movl	-12(%rbp), %eax	# iwip, tmp169
	addl	%ecx, %eax	# D.7594, D.7594
	movl	%eax, (%rdx)	# D.7594, _66->l
	.loc 1 226 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L33:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp170
	movl	116(%rax), %eax	# lm_8(D)->n_tgprob, D.7594
	cmpl	-16(%rbp), %eax	# i, D.7594
	jg	.L34	#,
	.loc 1 228 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L35	#
.L36:
	.loc 1 229 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp171
	movq	96(%rax), %rax	# lm_8(D)->tgbowt, D.7597
	movl	-16(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, D.7596
	salq	$2, %rdx	#, D.7596
	addq	%rax, %rdx	# D.7597, D.7597
	movq	-24(%rbp), %rax	# lm, tmp173
	movq	96(%rax), %rax	# lm_8(D)->tgbowt, D.7597
	movl	-16(%rbp), %ecx	# i, tmp174
	movslq	%ecx, %rcx	# tmp174, D.7596
	salq	$2, %rcx	#, D.7596
	addq	%rcx, %rax	# D.7596, D.7597
	movl	(%rax), %eax	# _88->l, D.7594
	cvtsi2sd	%eax, %xmm0	# D.7594, D.7593
	mulsd	-8(%rbp), %xmm0	# f, D.7593
	cvttsd2si	%xmm0, %eax	# D.7593, D.7594
	movl	%eax, (%rdx)	# D.7594, _84->l
	.loc 1 228 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L35:
	.loc 1 228 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp175
	movl	120(%rax), %eax	# lm_8(D)->n_tgbowt, D.7594
	cmpl	-16(%rbp), %eax	# i, D.7594
	jg	.L36	#,
.L32:
	.loc 1 232 0 is_stmt 1
	movsd	-32(%rbp), %xmm0	# lw, D.7592
	cvtpd2ps	%xmm0, %xmm0	# D.7592, D.7592
	movq	-24(%rbp), %rax	# lm, tmp176
	movss	%xmm0, 148(%rax)	# D.7592, lm_8(D)->lw
	.loc 1 233 0
	movq	-24(%rbp), %rax	# lm, tmp177
	movl	-12(%rbp), %edx	# iwip, tmp178
	movl	%edx, 152(%rax)	# tmp178, lm_8(D)->wip
	.loc 1 234 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	lm_set_param, .-lm_set_param
	.section	.rodata
.LC10:
	.string	"fread failed\n"
	.text
	.type	lm_fread_int32, @function
lm_fread_int32:
.LFB7:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	.loc 1 241 0
	movq	-24(%rbp), %rax	# lm, tmp82
	movq	128(%rax), %rdx	# lm_1(D)->fp, D.7601
	leaq	-4(%rbp), %rax	#, tmp83
	movq	%rdx, %rcx	# D.7601,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	fread	#
	cmpq	$1, %rax	#, D.7602
	je	.L40	#,
	.loc 1 242 0
	movl	$.LC7, %edx	#,
	movl	$242, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L40:
	.loc 1 243 0
	movq	-24(%rbp), %rax	# lm, tmp84
	movl	136(%rax), %eax	# lm_1(D)->byteswap, D.7603
	testl	%eax, %eax	# D.7603
	je	.L41	#,
	.loc 1 244 0
	movl	-4(%rbp), %eax	# val, val.0
	shrl	$24, %eax	#, D.7604
	movl	-4(%rbp), %edx	# val, val.2
	sarl	$8, %edx	#, D.7603
	andl	$65280, %edx	#, D.7603
	orl	%eax, %edx	# D.7603, D.7603
	movl	-4(%rbp), %eax	# val, val.3
	sall	$8, %eax	#, D.7603
	andl	$16711680, %eax	#, D.7603
	orl	%edx, %eax	# D.7603, D.7603
	movl	%eax, %edx	# D.7603, D.7605
	movl	-4(%rbp), %eax	# val, val.4
	sall	$24, %eax	#, D.7603
	orl	%edx, %eax	# D.7605, D.7605
	movl	%eax, -4(%rbp)	# val.5, val
.L41:
	.loc 1 245 0
	movl	-4(%rbp), %eax	# val, D.7606
	.loc 1 246 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	lm_fread_int32, .-lm_fread_int32
	.section	.rodata
.LC11:
	.string	"Reading LM control file '%s'\n"
.LC12:
	.string	"-lminmemory"
.LC13:
	.string	"r"
.LC14:
	.string	"%s"
.LC15:
	.string	"{"
.LC16:
	.string	"}"
.LC17:
	.string	"Unexpected EOF(%s)\n"
	.align 8
.LC18:
	.string	"Number of LM class specified %d in file %s\n"
	.align 8
.LC19:
	.string	"LMname missing after LMFileName '%s'\n"
	.align 8
.LC20:
	.string	"Too many LM classes specified for '%s'\n"
.LC21:
	.string	"LM class '%s' not found\n"
	.align 8
.LC22:
	.string	"No. of LM set allocated %d, no. of LM %d \n"
	.text
	.globl	lm_read_ctl
	.type	lm_read_ctl, @function
lm_read_ctl:
.LFB8:
	.loc 1 277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$12472, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -12408(%rbp)	# ctlfile, ctlfile
	movq	%rsi, -12416(%rbp)	# dict, dict
	movsd	%xmm0, -12424(%rbp)	# lw, lw
	movsd	%xmm1, -12432(%rbp)	# wip, wip
	movsd	%xmm2, -12440(%rbp)	# uw, uw
	movq	%rdx, -12448(%rbp)	# lmdumpdir, lmdumpdir
	movq	%rcx, -12456(%rbp)	# n_lm, n_lm
	movq	%r8, -12464(%rbp)	# n_alloclm, n_alloclm
	movl	%r9d, -12468(%rbp)	# dict_size, dict_size
	.loc 1 277 0
	movq	%fs:40, %rax	#, tmp221
	movq	%rax, -24(%rbp)	# tmp221, D.7618
	xorl	%eax, %eax	# tmp221
	.loc 1 286 0
	movq	$0, -12360(%rbp)	#, lmset
	.loc 1 287 0
	movq	$0, -12344(%rbp)	#, tmp
	.loc 1 289 0
	call	lmclass_newset	#
	movq	%rax, -12384(%rbp)	# tmp118, lmclass_set
	.loc 1 291 0
	movl	$.LC1, %edx	#,
	movl	$291, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-12408(%rbp), %rax	# ctlfile, tmp119
	movq	%rax, %rsi	# tmp119,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 293 0
	movl	$.LC12, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_18], D.7609
	testl	%eax, %eax	# D.7609
	je	.L44	#,
	.loc 1 294 0
	movl	$1, LM_IN_MEMORY(%rip)	#, LM_IN_MEMORY
	jmp	.L45	#
.L44:
	.loc 1 296 0
	movl	$0, LM_IN_MEMORY(%rip)	#, LM_IN_MEMORY
.L45:
	.loc 1 299 0
	movq	-12408(%rbp), %rax	# ctlfile, tmp120
	movl	$299, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	_myfopen	#
	movq	%rax, -12336(%rbp)	# tmp121, ctlfp
	.loc 1 301 0
	leaq	-4128(%rbp), %rdx	#, tmp122
	movq	-12336(%rbp), %rax	# ctlfp, tmp123
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	jne	.L46	#,
	.loc 1 302 0
	leaq	-4128(%rbp), %rax	#, tmp124
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	strcmp	#
	testl	%eax, %eax	# D.7609
	jne	.L52	#,
	.loc 1 304 0
	jmp	.L48	#
.L50:
	.loc 1 305 0
	leaq	-4128(%rbp), %rdx	#, tmp125
	movq	-12384(%rbp), %rax	# lmclass_set, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	lmclass_loadfile	#
	movq	%rax, -12384(%rbp)	# tmp127, lmclass_set
.L48:
	.loc 1 304 0 discriminator 1
	leaq	-4128(%rbp), %rdx	#, tmp128
	movq	-12336(%rbp), %rax	# ctlfp, tmp129
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	jne	.L49	#,
	.loc 1 304 0 is_stmt 0 discriminator 2
	leaq	-4128(%rbp), %rax	#, tmp130
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	strcmp	#
	testl	%eax, %eax	# D.7609
	jne	.L50	#,
.L49:
	.loc 1 307 0 is_stmt 1
	leaq	-4128(%rbp), %rax	#, tmp131
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	strcmp	#
	testl	%eax, %eax	# D.7609
	je	.L51	#,
	.loc 1 308 0
	movl	$.LC7, %edx	#,
	movl	$308, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-12408(%rbp), %rax	# ctlfile, tmp132
	movq	%rax, %rsi	# tmp132,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L51:
	.loc 1 310 0
	leaq	-4128(%rbp), %rdx	#, tmp133
	movq	-12336(%rbp), %rax	# ctlfp, tmp134
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp134,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	je	.L52	#,
	.loc 1 311 0
	movb	$0, -4128(%rbp)	#, str
	jmp	.L52	#
.L46:
	.loc 1 314 0
	movb	$0, -4128(%rbp)	#, str
.L52:
	.loc 1 323 0
	movq	-12384(%rbp), %rax	# lmclass_set, tmp135
	movq	(%rax), %rax	# lmclass_set_3->lmclass_list, tmp136
	movq	%rax, -12376(%rbp)	# tmp136, cl
	jmp	.L53	#
.L56:
.LBB2:
	.loc 1 338 0
	movq	-12376(%rbp), %rax	# cl, tmp137
	movq	8(%rax), %rax	# cl_4->wordlist, tmp138
	movq	%rax, -12352(%rbp)	# tmp138, w
	jmp	.L54	#
.L55:
	.loc 1 339 0 discriminator 2
	movq	-12352(%rbp), %rax	# w, tmp139
	movq	(%rax), %rdx	# w_13->word, D.7610
	movq	-12416(%rbp), %rax	# dict, tmp140
	movq	%rdx, %rsi	# D.7610,
	movq	%rax, %rdi	# tmp140,
	call	dict_wordid	#
	movl	%eax, -12392(%rbp)	# tmp141, wid
	.loc 1 343 0 discriminator 2
	movl	-12392(%rbp), %edx	# wid, tmp142
	movq	-12352(%rbp), %rax	# w, tmp143
	movl	%edx, %esi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	lmclass_set_dictwid	#
	.loc 1 338 0 discriminator 2
	movq	-12352(%rbp), %rax	# w, tmp144
	movq	16(%rax), %rax	# w_13->next, tmp145
	movq	%rax, -12352(%rbp)	# tmp145, w
.L54:
	.loc 1 338 0 is_stmt 0 discriminator 1
	cmpq	$0, -12352(%rbp)	#, w
	jne	.L55	#,
.LBE2:
	.loc 1 325 0 is_stmt 1
	movq	-12376(%rbp), %rax	# cl, tmp146
	movq	16(%rax), %rax	# cl_4->next, tmp147
	movq	%rax, -12376(%rbp)	# tmp147, cl
.L53:
	.loc 1 323 0 discriminator 1
	cmpq	$0, -12376(%rbp)	#, cl
	jne	.L56	#,
	.loc 1 349 0
	movq	-12384(%rbp), %rax	# lmclass_set, tmp148
	movq	%rax, %rdi	# tmp148,
	call	lmclass_get_nclass	#
	movl	%eax, -12388(%rbp)	# tmp149, n_lmclass
	.loc 1 350 0
	movl	-12388(%rbp), %eax	# n_lmclass, tmp150
	cltq
	movl	$350, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7611,
	call	__ckd_calloc__	#
	movq	%rax, -12328(%rbp)	# tmp151, lmclass
	.loc 1 352 0
	movl	$.LC1, %edx	#,
	movl	$352, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-12408(%rbp), %rdx	# ctlfile, tmp152
	movl	-12388(%rbp), %eax	# n_lmclass, tmp153
	movl	%eax, %esi	# tmp153,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 355 0
	jmp	.L57	#
.L75:
	.loc 1 356 0
	leaq	-4128(%rbp), %rdx	#, tmp154
	leaq	-12320(%rbp), %rax	#, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	strcpy	#
	.loc 1 357 0
	leaq	-8224(%rbp), %rdx	#, tmp156
	movq	-12336(%rbp), %rax	# ctlfp, tmp157
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp157,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	je	.L58	#,
	.loc 1 358 0
	movl	$.LC7, %edx	#,
	movl	$358, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	leaq	-12320(%rbp), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L58:
	.loc 1 360 0
	movl	$0, -12400(%rbp)	#, n_lmclass_used
	.loc 1 362 0
	leaq	-4128(%rbp), %rdx	#, tmp159
	movq	-12336(%rbp), %rax	# ctlfp, tmp160
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp160,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	jne	.L59	#,
	.loc 1 363 0
	leaq	-4128(%rbp), %rax	#, tmp161
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	strcmp	#
	testl	%eax, %eax	# D.7609
	jne	.L67	#,
	.loc 1 364 0
	jmp	.L61	#
.L65:
	.loc 1 366 0
	movl	-12400(%rbp), %eax	# n_lmclass_used, tmp162
	cmpl	-12388(%rbp), %eax	# n_lmclass, tmp162
	jl	.L62	#,
	.loc 1 367 0
	movl	$.LC7, %edx	#,
	movl	$367, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	leaq	-12320(%rbp), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L62:
	.loc 1 371 0
	movl	-12400(%rbp), %eax	# n_lmclass_used, tmp164
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7611
	movq	-12328(%rbp), %rax	# lmclass, tmp165
	leaq	(%rdx,%rax), %rbx	#, D.7613
	leaq	-4128(%rbp), %rdx	#, tmp166
	movq	-12384(%rbp), %rax	# lmclass_set, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	lmclass_get_lmclass	#
	movq	%rax, (%rbx)	# D.7614, *_47
	.loc 1 373 0
	movl	-12400(%rbp), %eax	# n_lmclass_used, tmp168
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7611
	movq	-12328(%rbp), %rax	# lmclass, tmp169
	addq	%rdx, %rax	# D.7611, D.7613
	movq	(%rax), %rax	# *_51, D.7614
	testq	%rax, %rax	# D.7614
	jne	.L63	#,
	.loc 1 374 0
	movl	$.LC7, %edx	#,
	movl	$374, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	leaq	-4128(%rbp), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L63:
	.loc 1 375 0
	addl	$1, -12400(%rbp)	#, n_lmclass_used
.L61:
	.loc 1 364 0 discriminator 1
	leaq	-4128(%rbp), %rdx	#, tmp171
	movq	-12336(%rbp), %rax	# ctlfp, tmp172
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp172,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	jne	.L64	#,
	.loc 1 365 0 discriminator 2
	leaq	-4128(%rbp), %rax	#, tmp173
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	strcmp	#
	.loc 1 364 0 discriminator 2
	testl	%eax, %eax	# D.7609
	jne	.L65	#,
.L64:
	.loc 1 377 0
	leaq	-4128(%rbp), %rax	#, tmp174
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	strcmp	#
	testl	%eax, %eax	# D.7609
	je	.L66	#,
	.loc 1 378 0
	movl	$.LC7, %edx	#,
	movl	$378, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-12408(%rbp), %rax	# ctlfile, tmp175
	movq	%rax, %rsi	# tmp175,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L66:
	.loc 1 379 0
	leaq	-4128(%rbp), %rdx	#, tmp176
	movq	-12336(%rbp), %rax	# ctlfp, tmp177
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp177,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.7609
	je	.L67	#,
	.loc 1 380 0
	movb	$0, -4128(%rbp)	#, str
	jmp	.L67	#
.L59:
	.loc 1 383 0
	movb	$0, -4128(%rbp)	#, str
.L67:
	.loc 1 385 0
	cmpl	$0, -12400(%rbp)	#, n_lmclass_used
	jle	.L68	#,
	.loc 1 396 0
	movl	-12468(%rbp), %ecx	# dict_size, tmp178
	movq	-12328(%rbp), %rdx	# lmclass, tmp179
	movl	-12400(%rbp), %esi	# n_lmclass_used, tmp180
	movq	-12440(%rbp), %r8	# uw, tmp181
	movq	-12432(%rbp), %rdi	# wip, tmp182
	movq	-12424(%rbp), %rax	# lw, tmp183
	leaq	-12320(%rbp), %r9	#, tmp184
	movq	%r8, -12480(%rbp)	# tmp181, %sfp
	movsd	-12480(%rbp), %xmm2	# %sfp,
	movq	%rdi, -12480(%rbp)	# tmp182, %sfp
	movsd	-12480(%rbp), %xmm1	# %sfp,
	movq	%rax, -12480(%rbp)	# tmp183, %sfp
	movsd	-12480(%rbp), %xmm0	# %sfp,
	movq	%r9, %rdi	# tmp184,
	call	lm_read_dump	#
	movq	%rax, -12368(%rbp)	# tmp185, lm
	.loc 1 399 0
	movl	$399, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$12, %esi	#,
	movl	$100003, %edi	#,
	call	__ckd_calloc__	#
	movq	-12368(%rbp), %rdx	# lm, tmp186
	movq	%rax, 160(%rdx)	# D.7615, lm_60->tgcache
	.loc 1 400 0
	movl	$0, -12396(%rbp)	#, i
	jmp	.L69	#
.L70:
	.loc 1 401 0 discriminator 2
	movq	-12368(%rbp), %rax	# lm, tmp187
	movq	160(%rax), %rcx	# lm_60->tgcache, D.7616
	movl	-12396(%rbp), %eax	# i, tmp188
	movslq	%eax, %rdx	# tmp188, D.7611
	movq	%rdx, %rax	# D.7611, tmp189
	addq	%rax, %rax	# tmp189
	addq	%rdx, %rax	# D.7611, tmp189
	salq	$2, %rax	#, tmp190
	addq	%rcx, %rax	# D.7616, D.7616
	movw	$-1, (%rax)	#, _66->lwid
	.loc 1 400 0 discriminator 2
	addl	$1, -12396(%rbp)	#, i
.L69:
	.loc 1 400 0 is_stmt 0 discriminator 1
	cmpl	$100002, -12396(%rbp)	#, i
	jle	.L70	#,
	jmp	.L71	#
.L68:
	.loc 1 407 0 is_stmt 1
	movl	-12468(%rbp), %edx	# dict_size, tmp191
	movq	-12440(%rbp), %r8	# uw, tmp192
	movq	-12432(%rbp), %rdi	# wip, tmp193
	movq	-12424(%rbp), %rax	# lw, tmp194
	leaq	-12320(%rbp), %r9	#, tmp195
	movl	%edx, %ecx	# tmp191,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%r8, -12480(%rbp)	# tmp192, %sfp
	movsd	-12480(%rbp), %xmm2	# %sfp,
	movq	%rdi, -12480(%rbp)	# tmp193, %sfp
	movsd	-12480(%rbp), %xmm1	# %sfp,
	movq	%rax, -12480(%rbp)	# tmp194, %sfp
	movsd	-12480(%rbp), %xmm0	# %sfp,
	movq	%r9, %rdi	# tmp195,
	call	lm_read_dump	#
	movq	%rax, -12368(%rbp)	# tmp196, lm
	.loc 1 410 0
	movl	$410, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$12, %esi	#,
	movl	$100003, %edi	#,
	call	__ckd_calloc__	#
	movq	-12368(%rbp), %rdx	# lm, tmp197
	movq	%rax, 160(%rdx)	# D.7615, lm_68->tgcache
	.loc 1 411 0
	movl	$0, -12396(%rbp)	#, i
	jmp	.L72	#
.L73:
	.loc 1 412 0 discriminator 2
	movq	-12368(%rbp), %rax	# lm, tmp198
	movq	160(%rax), %rcx	# lm_68->tgcache, D.7616
	movl	-12396(%rbp), %eax	# i, tmp199
	movslq	%eax, %rdx	# tmp199, D.7611
	movq	%rdx, %rax	# D.7611, tmp200
	addq	%rax, %rax	# tmp200
	addq	%rdx, %rax	# D.7611, tmp200
	salq	$2, %rax	#, tmp201
	addq	%rcx, %rax	# D.7616, D.7616
	movw	$-1, (%rax)	#, _74->lwid
	.loc 1 411 0 discriminator 2
	addl	$1, -12396(%rbp)	#, i
.L72:
	.loc 1 411 0 is_stmt 0 discriminator 1
	cmpl	$100002, -12396(%rbp)	#, i
	jle	.L73	#,
.L71:
	.loc 1 415 0 is_stmt 1
	movq	-12456(%rbp), %rax	# n_lm, tmp202
	movl	(%rax), %edx	# *n_lm_76(D), D.7609
	movq	-12464(%rbp), %rax	# n_alloclm, tmp203
	movl	(%rax), %eax	# *n_alloclm_78(D), D.7609
	cmpl	%eax, %edx	# D.7609, D.7609
	jne	.L74	#,
	.loc 1 416 0
	movq	-12464(%rbp), %rax	# n_alloclm, tmp204
	movl	(%rax), %eax	# *n_alloclm_78(D), D.7609
	addl	$16, %eax	#, D.7609
	cltq
	salq	$4, %rax	#, D.7611
	movq	%rax, %rsi	# D.7611, D.7611
	movq	-12360(%rbp), %rax	# lmset, tmp205
	movl	$416, %ecx	#,
	movl	$.LC2, %edx	#,
	movq	%rax, %rdi	# tmp205,
	call	__ckd_realloc__	#
	movq	%rax, -12360(%rbp)	# tmp206, lmset
	.loc 1 417 0
	movq	-12464(%rbp), %rax	# n_alloclm, tmp207
	movl	(%rax), %eax	# *n_alloclm_78(D), D.7609
	leal	16(%rax), %edx	#, D.7609
	movq	-12464(%rbp), %rax	# n_alloclm, tmp208
	movl	%edx, (%rax)	# D.7609, *n_alloclm_78(D)
.L74:
	.loc 1 419 0
	movq	-12456(%rbp), %rax	# n_lm, tmp209
	movl	(%rax), %eax	# *n_lm_76(D), D.7609
	cltq
	salq	$4, %rax	#, D.7611
	movq	%rax, %rdx	# D.7611, D.7611
	movq	-12360(%rbp), %rax	# lmset, tmp210
	leaq	(%rdx,%rax), %rbx	#, D.7617
	leaq	-8224(%rbp), %rax	#, tmp211
	movl	$419, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.7610, _90->name
	.loc 1 420 0
	movq	-12456(%rbp), %rax	# n_lm, tmp212
	movl	(%rax), %eax	# *n_lm_76(D), D.7609
	cltq
	salq	$4, %rax	#, D.7611
	movq	%rax, %rdx	# D.7611, D.7611
	movq	-12360(%rbp), %rax	# lmset, tmp213
	addq	%rax, %rdx	# tmp213, D.7617
	movq	-12368(%rbp), %rax	# lm, tmp214
	movq	%rax, 8(%rdx)	# tmp214, _95->lm
	.loc 1 421 0
	movq	-12456(%rbp), %rax	# n_lm, tmp215
	movl	(%rax), %eax	# *n_lm_76(D), D.7609
	leal	1(%rax), %edx	#, D.7609
	movq	-12456(%rbp), %rax	# n_lm, tmp216
	movl	%edx, (%rax)	# D.7609, *n_lm_76(D)
.L57:
	.loc 1 355 0 discriminator 1
	movzbl	-4128(%rbp), %eax	# str, D.7612
	testb	%al, %al	# D.7612
	jne	.L75	#,
	.loc 1 424 0
	movl	$.LC1, %edx	#,
	movl	$424, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-12456(%rbp), %rax	# n_lm, tmp217
	movl	(%rax), %edx	# *n_lm_76(D), D.7609
	movq	-12464(%rbp), %rax	# n_alloclm, tmp218
	movl	(%rax), %eax	# *n_alloclm_78(D), D.7609
	movl	%eax, %esi	# D.7609,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 428 0
	movq	-12336(%rbp), %rax	# ctlfp, tmp219
	movq	%rax, %rdi	# tmp219,
	call	fclose	#
	.loc 1 429 0
	movq	-12360(%rbp), %rax	# lmset, D.7617
	.loc 1 430 0
	movq	-24(%rbp), %rbx	# D.7618, tmp222
	xorq	%fs:40, %rbx	#, tmp222
	je	.L77	#,
	call	__stack_chk_fail	#
.L77:
	addq	$12472, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lm_read_ctl, .-lm_read_ctl
	.section	.rodata
.LC23:
	.string	"LM->inclass_ugscore size %d\n"
.LC24:
	.string	"Number of class used %d\n"
	.text
	.type	lm_build_lmclass_info, @function
lm_build_lmclass_info:
.LFB9:
	.loc 1 433 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	movsd	%xmm0, -32(%rbp)	# lw, lw
	movsd	%xmm1, -40(%rbp)	# uw, uw
	movsd	%xmm2, -48(%rbp)	# wip, wip
	movl	%esi, -52(%rbp)	# n_lmclass_used, n_lmclass_used
	movq	%rdx, -64(%rbp)	# lmclass, lmclass
	.loc 1 435 0
	cmpl	$0, -52(%rbp)	#, n_lmclass_used
	jle	.L79	#,
	.loc 1 436 0
	movl	-52(%rbp), %eax	# n_lmclass_used, tmp75
	cltq
	movl	$436, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7633,
	call	__ckd_calloc__	#
	movq	-24(%rbp), %rdx	# lm, tmp76
	movq	%rax, 224(%rdx)	# D.7634, lm_5(D)->lmclass
	.loc 1 437 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L80	#
.L81:
	.loc 1 438 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp77
	movq	224(%rax), %rax	# lm_5(D)->lmclass, D.7635
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.7633
	salq	$3, %rdx	#, D.7633
	addq	%rax, %rdx	# D.7635, D.7635
	movl	-4(%rbp), %eax	# i, tmp79
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7633
	movq	-64(%rbp), %rax	# lmclass, tmp80
	addq	%rcx, %rax	# D.7633, D.7635
	movq	(%rax), %rax	# *_14, D.7636
	movq	%rax, (%rdx)	# D.7636, *_10
	.loc 1 437 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L80:
	.loc 1 437 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp81
	cmpl	-52(%rbp), %eax	# n_lmclass_used, tmp81
	jl	.L81	#,
	jmp	.L82	#
.L79:
	.loc 1 440 0 is_stmt 1
	movq	-24(%rbp), %rax	# lm, tmp82
	movq	$0, 224(%rax)	#, lm_5(D)->lmclass
.L82:
	.loc 1 441 0
	movq	-24(%rbp), %rax	# lm, tmp83
	movl	-52(%rbp), %edx	# n_lmclass_used, tmp84
	movl	%edx, 232(%rax)	# tmp84, lm_5(D)->n_lmclass
	.loc 1 443 0
	movq	-24(%rbp), %rax	# lm, tmp85
	movl	216(%rax), %eax	# lm_5(D)->dict_size, D.7637
	cltq
	movl	$443, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7633,
	call	__ckd_calloc__	#
	movq	-24(%rbp), %rdx	# lm, tmp86
	movq	%rax, 240(%rdx)	# D.7634, lm_5(D)->inclass_ugscore
	.loc 1 445 0
	movl	$.LC1, %edx	#,
	movl	$445, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-24(%rbp), %rax	# lm, tmp87
	movl	216(%rax), %eax	# lm_5(D)->dict_size, D.7637
	movl	%eax, %esi	# D.7637,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 446 0
	movl	$.LC1, %edx	#,
	movl	$446, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movl	-52(%rbp), %eax	# n_lmclass_used, tmp88
	movl	%eax, %esi	# tmp88,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 447 0
	movl	$1, %eax	#, D.7638
	.loc 1 448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lm_build_lmclass_info, .-lm_build_lmclass_info
	.section	.rodata
.LC25:
	.string	"rb"
.LC26:
	.string	"SYSTEM_ERROR"
.LC27:
	.string	"fopen(%s,rb) failed\n"
.LC28:
	.string	"fread(%s) failed\n"
	.align 8
.LC29:
	.string	"Bad magic number: %d(%08x), not an LM dumpfile??\n"
.LC30:
	.string	"Bad header\n"
	.align 8
.LC31:
	.string	"Bad original filename size: %d\n"
	.align 8
.LC32:
	.string	"log2(bg_seg_sz) outside range 1..15\n"
.LC33:
	.string	"Bad #ug: %d (must be >0, <%d\n"
.LC34:
	.string	"Bad #bigrams: %d\n"
.LC35:
	.string	"Bad #trigrams: %d\n"
.LC36:
	.string	"%8d ug\n"
.LC37:
	.string	"Read %8d bigrams [in memory]\n"
	.align 8
.LC38:
	.string	"Read %8d trigrams [in memory]\n"
.LC39:
	.string	"%8d bigrams [on disk]\n"
.LC40:
	.string	"%8d trigrams [on disk]\n"
	.align 8
.LC41:
	.string	"Bad bigram prob table size: %d\n"
.LC42:
	.string	"%8d bigram prob entries\n"
	.align 8
.LC43:
	.string	"Bad trigram bowt table size: %d\n"
.LC44:
	.string	"%8d trigram bowt entries\n"
.LC45:
	.string	"%8d trigram prob entries\n"
	.align 8
.LC46:
	.string	"Bad trigram seg table size: %d\n"
	.align 8
.LC47:
	.string	"%8d trigram segtable entries (%d segsize)\n"
.LC48:
	.string	"Bad wordstrings size: %d\n"
.LC49:
	.string	"Bad #words: %d\n"
.LC50:
	.string	"</s>"
.LC51:
	.string	"%8d word strings\n"
	.text
	.type	lm_read_dump, @function
lm_read_dump:
.LFB10:
	.loc 1 457 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1160, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1112(%rbp)	# file, file
	movsd	%xmm0, -1120(%rbp)	# lw, lw
	movsd	%xmm1, -1128(%rbp)	# wip, wip
	movsd	%xmm2, -1136(%rbp)	# uw, uw
	movl	%esi, -1140(%rbp)	# n_lmclass_used, n_lmclass_used
	movq	%rdx, -1152(%rbp)	# lmclass, lmclass
	movl	%ecx, -1144(%rbp)	# dict_size, dict_size
	.loc 1 457 0
	movq	%fs:40, %rax	#, tmp903
	movq	%rax, -24(%rbp)	# tmp903, D.7659
	xorl	%eax, %eax	# tmp903
	.loc 1 464 0
	movl	$464, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$248, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -1072(%rbp)	# tmp626, lm
	.loc 1 466 0
	movq	-1072(%rbp), %rax	# lm, tmp627
	movl	-1144(%rbp), %edx	# dict_size, tmp628
	movl	%edx, 216(%rax)	# tmp628, lm_15->dict_size
	.loc 1 467 0
	movq	-1112(%rbp), %rax	# file, tmp629
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp629,
	call	fopen	#
	movq	-1072(%rbp), %rdx	# lm, tmp630
	movq	%rax, 128(%rdx)	# D.7641, lm_15->fp
	movq	-1072(%rbp), %rax	# lm, tmp631
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	testq	%rax, %rax	# D.7641
	jne	.L85	#,
	.loc 1 468 0
	movl	$.LC26, %edx	#,
	movl	$468, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp632
	movq	%rax, %rsi	# tmp632,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L85:
	.loc 1 471 0
	movq	-1072(%rbp), %rax	# lm, tmp633
	movq	128(%rax), %rdx	# lm_15->fp, D.7641
	leaq	-1088(%rbp), %rax	#, tmp634
	movq	%rdx, %rcx	# D.7641,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp634,
	call	fread	#
	cmpq	$1, %rax	#, D.7642
	je	.L86	#,
	.loc 1 472 0
	movl	$.LC7, %edx	#,
	movl	$472, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp635
	movq	%rax, %rsi	# tmp635,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L86:
	.loc 1 473 0
	movl	-1088(%rbp), %eax	# k, k.6
	movslq	%eax, %rbx	# k.6, D.7642
	movq	darpa_hdr(%rip), %rax	# darpa_hdr, darpa_hdr.7
	movq	%rax, %rdi	# darpa_hdr.7,
	call	strlen	#
	addq	$1, %rax	#, D.7642
	cmpq	%rax, %rbx	# D.7642, D.7642
	jne	.L87	#,
	.loc 1 474 0
	movq	-1072(%rbp), %rax	# lm, tmp636
	movl	$0, 136(%rax)	#, lm_15->byteswap
	jmp	.L88	#
.L87:
	.loc 1 476 0
	movl	-1088(%rbp), %eax	# k, k.8
	shrl	$24, %eax	#, D.7643
	movl	-1088(%rbp), %edx	# k, k.10
	sarl	$8, %edx	#, D.7644
	andl	$65280, %edx	#, D.7644
	orl	%eax, %edx	# D.7644, D.7644
	movl	-1088(%rbp), %eax	# k, k.11
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%edx, %eax	# D.7644, D.7644
	movl	%eax, %edx	# D.7644, D.7645
	movl	-1088(%rbp), %eax	# k, k.12
	sall	$24, %eax	#, D.7644
	orl	%edx, %eax	# D.7645, D.7645
	movl	%eax, -1088(%rbp)	# k.13, k
	.loc 1 477 0
	movl	-1088(%rbp), %eax	# k, k.14
	movslq	%eax, %rbx	# k.14, D.7642
	movq	darpa_hdr(%rip), %rax	# darpa_hdr, darpa_hdr.15
	movq	%rax, %rdi	# darpa_hdr.15,
	call	strlen	#
	addq	$1, %rax	#, D.7642
	cmpq	%rax, %rbx	# D.7642, D.7642
	jne	.L89	#,
	.loc 1 478 0
	movq	-1072(%rbp), %rax	# lm, tmp637
	movl	$1, 136(%rax)	#, lm_15->byteswap
	jmp	.L88	#
.L89:
	.loc 1 480 0
	movl	-1088(%rbp), %eax	# k, k.16
	shrl	$24, %eax	#, D.7643
	movl	-1088(%rbp), %edx	# k, k.18
	sarl	$8, %edx	#, D.7644
	andl	$65280, %edx	#, D.7644
	orl	%eax, %edx	# D.7644, D.7644
	movl	-1088(%rbp), %eax	# k, k.19
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%edx, %eax	# D.7644, D.7644
	movl	%eax, %edx	# D.7644, D.7645
	movl	-1088(%rbp), %eax	# k, k.20
	sall	$24, %eax	#, D.7644
	orl	%edx, %eax	# D.7645, D.7645
	movl	%eax, -1088(%rbp)	# k.21, k
	.loc 1 481 0
	movl	$.LC7, %edx	#,
	movl	$481, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1088(%rbp), %edx	# k, k.22
	movl	-1088(%rbp), %eax	# k, k.23
	movl	%eax, %esi	# k.23,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L88:
	.loc 1 486 0
	movq	-1072(%rbp), %rax	# lm, tmp638
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movl	-1088(%rbp), %eax	# k, k.24
	movslq	%eax, %rdx	# k.24, D.7642
	leaq	-1056(%rbp), %rax	#, tmp639
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp639,
	call	fread	#
	movl	-1088(%rbp), %edx	# k, k.25
	movslq	%edx, %rdx	# k.25, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L90	#,
	.loc 1 487 0
	movl	$.LC7, %edx	#,
	movl	$487, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp640
	movq	%rax, %rsi	# tmp640,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L90:
	.loc 1 488 0
	movl	-1088(%rbp), %eax	# k, k.26
	movslq	%eax, %rdx	# k.26, D.7642
	movq	darpa_hdr(%rip), %rcx	# darpa_hdr, darpa_hdr.27
	leaq	-1056(%rbp), %rax	#, tmp641
	movq	%rcx, %rsi	# darpa_hdr.27,
	movq	%rax, %rdi	# tmp641,
	call	strncmp	#
	testl	%eax, %eax	# D.7644
	je	.L91	#,
	.loc 1 489 0
	movl	$.LC7, %edx	#,
	movl	$489, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L91:
	.loc 1 492 0
	movq	-1072(%rbp), %rax	# lm, tmp642
	movq	%rax, %rdi	# tmp642,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.28, k
	.loc 1 493 0
	movl	-1088(%rbp), %eax	# k, k.29
	testl	%eax, %eax	# k.29
	jle	.L92	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	-1088(%rbp), %eax	# k, k.30
	cmpl	$1024, %eax	#, k.30
	jle	.L93	#,
.L92:
	.loc 1 494 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$494, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1088(%rbp), %eax	# k, k.31
	movl	%eax, %esi	# k.31,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L93:
	.loc 1 495 0
	movq	-1072(%rbp), %rax	# lm, tmp643
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movl	-1088(%rbp), %eax	# k, k.32
	movslq	%eax, %rdx	# k.32, D.7642
	leaq	-1056(%rbp), %rax	#, tmp644
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp644,
	call	fread	#
	movl	-1088(%rbp), %edx	# k, k.33
	movslq	%edx, %rdx	# k.33, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L94	#,
	.loc 1 496 0
	movl	$.LC7, %edx	#,
	movl	$496, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp645
	movq	%rax, %rsi	# tmp645,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L94:
	.loc 1 499 0
	movq	-1072(%rbp), %rax	# lm, tmp646
	movq	%rax, %rdi	# tmp646,
	call	lm_fread_int32	#
	movl	%eax, -1076(%rbp)	# tmp647, vn
	.loc 1 500 0
	cmpl	$0, -1076(%rbp)	#, vn
	jg	.L95	#,
	.loc 1 502 0
	movq	-1072(%rbp), %rax	# lm, tmp648
	movq	%rax, %rdi	# tmp648,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.34, k
.L99:
	.loc 1 506 0
	movq	-1072(%rbp), %rax	# lm, tmp649
	movq	%rax, %rdi	# tmp649,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.35, k
	movl	-1088(%rbp), %eax	# k, k.36
	testl	%eax, %eax	# k.36
	jne	.L96	#,
	.loc 1 507 0
	nop
	.loc 1 513 0
	cmpl	$-1, -1076(%rbp)	#, vn
	jge	.L100	#,
	jmp	.L158	#
.L96:
	.loc 1 508 0
	movq	-1072(%rbp), %rax	# lm, tmp650
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movl	-1088(%rbp), %eax	# k, k.37
	movslq	%eax, %rdx	# k.37, D.7642
	leaq	-1056(%rbp), %rax	#, tmp651
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp651,
	call	fread	#
	movl	-1088(%rbp), %edx	# k, k.38
	movslq	%edx, %rdx	# k.38, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L98	#,
	.loc 1 509 0
	movl	$.LC7, %edx	#,
	movl	$509, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp652
	movq	%rax, %rsi	# tmp652,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 510 0
	jmp	.L99	#
.L98:
	jmp	.L99	#
.L158:
	.loc 1 514 0
	movq	-1072(%rbp), %rax	# lm, tmp653
	movq	%rax, %rdi	# tmp653,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.39, k
	.loc 1 515 0
	movl	-1088(%rbp), %eax	# k, k.40
	testl	%eax, %eax	# k.40
	jle	.L101	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movl	-1088(%rbp), %eax	# k, k.41
	cmpl	$15, %eax	#, k.41
	jle	.L102	#,
.L101:
	.loc 1 516 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$516, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1088(%rbp), %eax	# k, k.42
	movl	%eax, %esi	# k.42,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L102:
	.loc 1 517 0
	movl	-1088(%rbp), %edx	# k, k.43
	movq	-1072(%rbp), %rax	# lm, tmp654
	movl	%edx, 28(%rax)	# k.43, lm_15->log_bg_seg_sz
	jmp	.L103	#
.L100:
	.loc 1 519 0
	movq	-1072(%rbp), %rax	# lm, tmp655
	movl	$9, 28(%rax)	#, lm_15->log_bg_seg_sz
.L103:
	.loc 1 522 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp656
	movq	%rax, %rdi	# tmp656,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp657
	movl	%eax, (%rdx)	# D.7644, lm_15->n_ug
	jmp	.L104	#
.L95:
	.loc 1 525 0
	movq	-1072(%rbp), %rax	# lm, tmp658
	movl	-1076(%rbp), %edx	# vn, tmp659
	movl	%edx, (%rax)	# tmp659, lm_15->n_ug
	.loc 1 526 0
	movq	-1072(%rbp), %rax	# lm, tmp660
	movl	$9, 28(%rax)	#, lm_15->log_bg_seg_sz
.L104:
	.loc 1 528 0
	movq	-1072(%rbp), %rax	# lm, tmp661
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L105	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp662
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cmpl	$65533, %eax	#, D.7645
	jbe	.L106	#,
.L105:
	.loc 1 529 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$529, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp663
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	movl	$65534, %edx	#,
	movl	%eax, %esi	# D.7644,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L106:
	.loc 1 531 0
	movq	-1072(%rbp), %rax	# lm, tmp664
	movl	28(%rax), %eax	# lm_15->log_bg_seg_sz, D.7644
	movl	$1, %edx	#, tmp665
	movl	%eax, %ecx	# D.7644, tmp905
	sall	%cl, %edx	# tmp905, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp666
	movl	%edx, 32(%rax)	# D.7644, lm_15->bg_seg_sz
	.loc 1 534 0
	movq	-1072(%rbp), %rax	# lm, tmp667
	movq	%rax, %rdi	# tmp667,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp668
	movl	%eax, 4(%rdx)	# D.7644, lm_15->n_bg
	.loc 1 535 0
	movq	-1072(%rbp), %rax	# lm, tmp669
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	testl	%eax, %eax	# D.7644
	jns	.L107	#,
	.loc 1 536 0
	movl	$.LC7, %edx	#,
	movl	$536, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp670
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L107:
	.loc 1 539 0
	movq	-1072(%rbp), %rax	# lm, tmp671
	movq	%rax, %rdi	# tmp671,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp672
	movl	%eax, 8(%rdx)	# D.7644, lm_15->n_tg
	.loc 1 540 0
	movq	-1072(%rbp), %rax	# lm, tmp673
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	testl	%eax, %eax	# D.7644
	jns	.L108	#,
	.loc 1 541 0
	movl	$.LC7, %edx	#,
	movl	$541, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp674
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L108:
	.loc 1 544 0
	movq	-1072(%rbp), %rax	# lm, tmp675
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	addl	$1, %eax	#, D.7644
	cltq
	movl	$544, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp676
	movq	%rax, 40(%rdx)	# D.7646, lm_15->ug
	.loc 1 545 0
	movq	-1072(%rbp), %rax	# lm, tmp677
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp678
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	addl	$1, %eax	#, D.7644
	movslq	%eax, %rdx	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp679
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.7647,
	call	fread	#
	movq	-1072(%rbp), %rdx	# lm, tmp680
	movl	(%rdx), %edx	# lm_15->n_ug, D.7644
	addl	$1, %edx	#, D.7644
	movslq	%edx, %rdx	# D.7644, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L109	#,
	.loc 1 546 0
	movl	$.LC7, %edx	#,
	movl	$546, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp681
	movq	%rax, %rsi	# tmp681,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L109:
	.loc 1 547 0
	movq	-1072(%rbp), %rax	# lm, tmp682
	movl	136(%rax), %eax	# lm_15->byteswap, D.7644
	testl	%eax, %eax	# D.7644
	je	.L110	#,
	.loc 1 548 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L111	#
.L112:
	.loc 1 549 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp683
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %edx	# i, tmp684
	movslq	%edx, %rdx	# tmp684, D.7642
	salq	$4, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7647, D.7647
	movq	-1072(%rbp), %rax	# lm, tmp685
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp686
	movslq	%ecx, %rcx	# tmp686, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	4(%rax), %eax	# _141->prob.l, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp687
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp688
	movslq	%esi, %rsi	# tmp688, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	4(%rax), %eax	# _149->prob.l, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp689
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp690
	movslq	%ecx, %rcx	# tmp690, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	4(%rax), %eax	# _157->prob.l, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp691
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp692
	movslq	%esi, %rsi	# tmp692, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	4(%rax), %eax	# _166->prob.l, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, 4(%rdx)	# D.7644, _137->prob.l
	.loc 1 550 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp693
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %edx	# i, tmp694
	movslq	%edx, %rdx	# tmp694, D.7642
	salq	$4, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7647, D.7647
	movq	-1072(%rbp), %rax	# lm, tmp695
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp696
	movslq	%ecx, %rcx	# tmp696, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	8(%rax), %eax	# _179->bowt.l, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp697
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp698
	movslq	%esi, %rsi	# tmp698, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	8(%rax), %eax	# _187->bowt.l, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp699
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp700
	movslq	%ecx, %rcx	# tmp700, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	8(%rax), %eax	# _195->bowt.l, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp701
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp702
	movslq	%esi, %rsi	# tmp702, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	8(%rax), %eax	# _204->bowt.l, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, 8(%rdx)	# D.7644, _175->bowt.l
	.loc 1 551 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp703
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %edx	# i, tmp704
	movslq	%edx, %rdx	# tmp704, D.7642
	salq	$4, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7647, D.7647
	movq	-1072(%rbp), %rax	# lm, tmp705
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp706
	movslq	%ecx, %rcx	# tmp706, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	12(%rax), %eax	# _217->firstbg, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp707
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp708
	movslq	%esi, %rsi	# tmp708, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	12(%rax), %eax	# _225->firstbg, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp709
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %ecx	# i, tmp710
	movslq	%ecx, %rcx	# tmp710, D.7642
	salq	$4, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7647
	movl	12(%rax), %eax	# _233->firstbg, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp711
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movl	-1084(%rbp), %esi	# i, tmp712
	movslq	%esi, %rsi	# tmp712, D.7642
	salq	$4, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7647
	movl	12(%rax), %eax	# _242->firstbg, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, 12(%rdx)	# D.7644, _213->firstbg
	.loc 1 548 0 discriminator 2
	addl	$1, -1084(%rbp)	#, i
.L111:
	.loc 1 548 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp713
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cmpl	-1084(%rbp), %eax	# i, D.7644
	jge	.L112	#,
.L110:
	.loc 1 553 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$553, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp714
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 556 0
	movl	LM_IN_MEMORY(%rip), %eax	# LM_IN_MEMORY, LM_IN_MEMORY.44
	testl	%eax, %eax	# LM_IN_MEMORY.44
	je	.L113	#,
	.loc 1 557 0
	movq	-1072(%rbp), %rax	# lm, tmp715
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	addl	$1, %eax	#, D.7644
	cltq
	movl	$557, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp716
	movq	%rax, 48(%rdx)	# D.7646, lm_15->bg
	.loc 1 558 0
	movq	-1072(%rbp), %rax	# lm, tmp717
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	addl	$1, %eax	#, D.7644
	cltq
	movl	$558, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp718
	movq	%rax, 56(%rdx)	# D.7646, lm_15->tg
	.loc 1 560 0
	movq	-1072(%rbp), %rax	# lm, tmp719
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L114	#,
	.loc 1 561 0
	movq	-1072(%rbp), %rax	# lm, tmp720
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movq	%rax, %rdi	# D.7641,
	call	ftell	#
	movl	%eax, %edx	# D.7648, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp721
	movl	%edx, 140(%rax)	# D.7644, lm_15->bgoff
	.loc 1 562 0
	movq	-1072(%rbp), %rax	# lm, tmp722
	movq	128(%rax), %rdx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp723
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	addl	$1, %eax	#, D.7644
	movslq	%eax, %rsi	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp724
	movq	48(%rax), %rax	# lm_15->bg, D.7649
	movq	%rdx, %rcx	# D.7641,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.7649,
	call	fread	#
	.loc 1 563 0
	movl	$.LC1, %edx	#,
	movl	$563, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp725
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 565 0
	movq	-1072(%rbp), %rax	# lm, tmp726
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cltq
	movl	$565, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp727
	movq	%rax, 64(%rdx)	# D.7646, lm_15->membg
.L114:
	.loc 1 568 0
	movq	-1072(%rbp), %rax	# lm, tmp728
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L116	#,
	.loc 1 569 0
	movq	-1072(%rbp), %rax	# lm, tmp729
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movq	%rax, %rdi	# D.7641,
	call	ftell	#
	movl	%eax, %edx	# D.7648, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp730
	movl	%edx, 144(%rax)	# D.7644, lm_15->tgoff
	.loc 1 570 0
	movq	-1072(%rbp), %rax	# lm, tmp731
	movq	128(%rax), %rdx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp732
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	movslq	%eax, %rsi	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp733
	movq	56(%rax), %rax	# lm_15->tg, D.7650
	movq	%rdx, %rcx	# D.7641,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# D.7650,
	call	fread	#
	.loc 1 571 0
	movl	$.LC1, %edx	#,
	movl	$571, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp734
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 573 0
	movq	-1072(%rbp), %rax	# lm, tmp735
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cltq
	movl	$573, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp736
	movq	%rax, 72(%rdx)	# D.7646, lm_15->tginfo
	jmp	.L116	#
.L113:
	.loc 1 576 0
	movq	-1072(%rbp), %rax	# lm, tmp737
	movq	$0, 48(%rax)	#, lm_15->bg
	.loc 1 577 0
	movq	-1072(%rbp), %rax	# lm, tmp738
	movq	$0, 56(%rax)	#, lm_15->tg
	.loc 1 580 0
	movq	-1072(%rbp), %rax	# lm, tmp739
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L117	#,
	.loc 1 581 0
	movq	-1072(%rbp), %rax	# lm, tmp740
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movq	%rax, %rdi	# D.7641,
	call	ftell	#
	movl	%eax, %edx	# D.7648, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp741
	movl	%edx, 140(%rax)	# D.7644, lm_15->bgoff
	.loc 1 582 0
	movq	-1072(%rbp), %rax	# lm, tmp742
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	addl	$1, %eax	#, D.7644
	cltq
	salq	$3, %rax	#, D.7642
	movq	%rax, %rcx	# D.7642, D.7648
	movq	-1072(%rbp), %rax	# lm, tmp743
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.7648,
	movq	%rax, %rdi	# D.7641,
	call	fseek	#
	.loc 1 583 0
	movl	$.LC1, %edx	#,
	movl	$583, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp744
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 584 0
	movq	-1072(%rbp), %rax	# lm, tmp745
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cltq
	movl	$584, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp746
	movq	%rax, 64(%rdx)	# D.7646, lm_15->membg
.L117:
	.loc 1 588 0
	movq	-1072(%rbp), %rax	# lm, tmp747
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L116	#,
	.loc 1 589 0
	movq	-1072(%rbp), %rax	# lm, tmp748
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movq	%rax, %rdi	# D.7641,
	call	ftell	#
	movl	%eax, %edx	# D.7648, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp749
	movl	%edx, 144(%rax)	# D.7644, lm_15->tgoff
	.loc 1 590 0
	movq	-1072(%rbp), %rax	# lm, tmp750
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	cltq
	salq	$2, %rax	#, D.7642
	movq	%rax, %rcx	# D.7642, D.7648
	movq	-1072(%rbp), %rax	# lm, tmp751
	movq	128(%rax), %rax	# lm_15->fp, D.7641
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.7648,
	movq	%rax, %rdi	# D.7641,
	call	fseek	#
	.loc 1 591 0
	movl	$.LC1, %edx	#,
	movl	$591, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp752
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 593 0
	movq	-1072(%rbp), %rax	# lm, tmp753
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cltq
	movl	$593, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp754
	movq	%rax, 72(%rdx)	# D.7646, lm_15->tginfo
.L116:
	.loc 1 597 0
	movq	-1072(%rbp), %rax	# lm, tmp755
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L118	#,
	.loc 1 599 0
	movq	-1072(%rbp), %rax	# lm, tmp756
	movq	%rax, %rdi	# tmp756,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp757
	movl	%eax, 112(%rdx)	# D.7644, lm_15->n_bgprob
	.loc 1 600 0
	movq	-1072(%rbp), %rax	# lm, tmp758
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L119	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp759
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	cmpl	$65536, %eax	#, D.7644
	jle	.L120	#,
.L119:
	.loc 1 601 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$601, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp760
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L120:
	.loc 1 604 0
	movq	-1072(%rbp), %rax	# lm, tmp761
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	cltq
	movl	$604, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp762
	movq	%rax, 80(%rdx)	# D.7646, lm_15->bgprob
	.loc 1 605 0
	movq	-1072(%rbp), %rax	# lm, tmp763
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp764
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	movslq	%eax, %rdx	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp765
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7651,
	call	fread	#
	.loc 1 606 0
	movq	-1072(%rbp), %rdx	# lm, tmp766
	movl	112(%rdx), %edx	# lm_15->n_bgprob, D.7644
	movslq	%edx, %rdx	# D.7644, D.7642
	.loc 1 605 0
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L121	#,
	.loc 1 607 0
	movl	$.LC7, %edx	#,
	movl	$607, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp767
	movq	%rax, %rsi	# tmp767,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L121:
	.loc 1 608 0
	movq	-1072(%rbp), %rax	# lm, tmp768
	movl	136(%rax), %eax	# lm_15->byteswap, D.7644
	testl	%eax, %eax	# D.7644
	je	.L122	#,
	.loc 1 609 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L123	#
.L124:
	.loc 1 610 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp769
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	-1084(%rbp), %edx	# i, tmp770
	movslq	%edx, %rdx	# tmp770, D.7642
	salq	$2, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7651, D.7651
	movq	-1072(%rbp), %rax	# lm, tmp771
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp772
	movslq	%ecx, %rcx	# tmp772, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _336->l, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp773
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	-1084(%rbp), %esi	# i, tmp774
	movslq	%esi, %rsi	# tmp774, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _344->l, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp775
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp776
	movslq	%ecx, %rcx	# tmp776, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _352->l, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp777
	movq	80(%rax), %rax	# lm_15->bgprob, D.7651
	movl	-1084(%rbp), %esi	# i, tmp778
	movslq	%esi, %rsi	# tmp778, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _361->l, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, (%rdx)	# D.7644, _332->l
	.loc 1 609 0 discriminator 2
	addl	$1, -1084(%rbp)	#, i
.L123:
	.loc 1 609 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp779
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	cmpl	-1084(%rbp), %eax	# i, D.7644
	jg	.L124	#,
.L122:
	.loc 1 613 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$613, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp780
	movl	112(%rax), %eax	# lm_15->n_bgprob, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L118:
	.loc 1 616 0
	movq	-1072(%rbp), %rax	# lm, tmp781
	movl	8(%rax), %eax	# lm_15->n_tg, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L125	#,
	.loc 1 618 0
	movq	-1072(%rbp), %rax	# lm, tmp782
	movq	%rax, %rdi	# tmp782,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp783
	movl	%eax, 120(%rdx)	# D.7644, lm_15->n_tgbowt
	.loc 1 619 0
	movq	-1072(%rbp), %rax	# lm, tmp784
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L126	#,
	.loc 1 619 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp785
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	cmpl	$65536, %eax	#, D.7644
	jle	.L127	#,
.L126:
	.loc 1 620 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$620, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp786
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L127:
	.loc 1 623 0
	movq	-1072(%rbp), %rax	# lm, tmp787
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	cltq
	movl	$623, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp788
	movq	%rax, 96(%rdx)	# D.7646, lm_15->tgbowt
	.loc 1 624 0
	movq	-1072(%rbp), %rax	# lm, tmp789
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp790
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	movslq	%eax, %rdx	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp791
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7651,
	call	fread	#
	.loc 1 625 0
	movq	-1072(%rbp), %rdx	# lm, tmp792
	movl	120(%rdx), %edx	# lm_15->n_tgbowt, D.7644
	movslq	%edx, %rdx	# D.7644, D.7642
	.loc 1 624 0
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L128	#,
	.loc 1 626 0
	movl	$.LC7, %edx	#,
	movl	$626, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp793
	movq	%rax, %rsi	# tmp793,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L128:
	.loc 1 627 0
	movq	-1072(%rbp), %rax	# lm, tmp794
	movl	136(%rax), %eax	# lm_15->byteswap, D.7644
	testl	%eax, %eax	# D.7644
	je	.L129	#,
	.loc 1 628 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L130	#
.L131:
	.loc 1 629 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp795
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	-1084(%rbp), %edx	# i, tmp796
	movslq	%edx, %rdx	# tmp796, D.7642
	salq	$2, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7651, D.7651
	movq	-1072(%rbp), %rax	# lm, tmp797
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp798
	movslq	%ecx, %rcx	# tmp798, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _394->l, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp799
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	-1084(%rbp), %esi	# i, tmp800
	movslq	%esi, %rsi	# tmp800, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _402->l, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp801
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp802
	movslq	%ecx, %rcx	# tmp802, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _410->l, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp803
	movq	96(%rax), %rax	# lm_15->tgbowt, D.7651
	movl	-1084(%rbp), %esi	# i, tmp804
	movslq	%esi, %rsi	# tmp804, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _419->l, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, (%rdx)	# D.7644, _390->l
	.loc 1 628 0 discriminator 2
	addl	$1, -1084(%rbp)	#, i
.L130:
	.loc 1 628 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp805
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	cmpl	-1084(%rbp), %eax	# i, D.7644
	jg	.L131	#,
.L129:
	.loc 1 631 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$631, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp806
	movl	120(%rax), %eax	# lm_15->n_tgbowt, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 634 0
	movq	-1072(%rbp), %rax	# lm, tmp807
	movq	%rax, %rdi	# tmp807,
	call	lm_fread_int32	#
	movq	-1072(%rbp), %rdx	# lm, tmp808
	movl	%eax, 116(%rdx)	# D.7644, lm_15->n_tgprob
	.loc 1 635 0
	movq	-1072(%rbp), %rax	# lm, tmp809
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	testl	%eax, %eax	# D.7644
	jle	.L132	#,
	.loc 1 635 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp810
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	cmpl	$65536, %eax	#, D.7644
	jle	.L133	#,
.L132:
	.loc 1 636 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$636, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1072(%rbp), %rax	# lm, tmp811
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L133:
	.loc 1 639 0
	movq	-1072(%rbp), %rax	# lm, tmp812
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	cltq
	movl	$639, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp813
	movq	%rax, 88(%rdx)	# D.7646, lm_15->tgprob
	.loc 1 640 0
	movq	-1072(%rbp), %rax	# lm, tmp814
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movq	-1072(%rbp), %rax	# lm, tmp815
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	movslq	%eax, %rdx	# D.7644, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp816
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7651,
	call	fread	#
	.loc 1 641 0
	movq	-1072(%rbp), %rdx	# lm, tmp817
	movl	116(%rdx), %edx	# lm_15->n_tgprob, D.7644
	movslq	%edx, %rdx	# D.7644, D.7642
	.loc 1 640 0
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L134	#,
	.loc 1 642 0
	movl	$.LC7, %edx	#,
	movl	$642, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp818
	movq	%rax, %rsi	# tmp818,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L134:
	.loc 1 643 0
	movq	-1072(%rbp), %rax	# lm, tmp819
	movl	136(%rax), %eax	# lm_15->byteswap, D.7644
	testl	%eax, %eax	# D.7644
	je	.L135	#,
	.loc 1 644 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L136	#
.L137:
	.loc 1 645 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp820
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	-1084(%rbp), %edx	# i, tmp821
	movslq	%edx, %rdx	# tmp821, D.7642
	salq	$2, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7651, D.7651
	movq	-1072(%rbp), %rax	# lm, tmp822
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp823
	movslq	%ecx, %rcx	# tmp823, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _451->l, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp824
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	-1084(%rbp), %esi	# i, tmp825
	movslq	%esi, %rsi	# tmp825, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _459->l, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp826
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	-1084(%rbp), %ecx	# i, tmp827
	movslq	%ecx, %rcx	# tmp827, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _467->l, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp828
	movq	88(%rax), %rax	# lm_15->tgprob, D.7651
	movl	-1084(%rbp), %esi	# i, tmp829
	movslq	%esi, %rsi	# tmp829, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7651
	movl	(%rax), %eax	# _476->l, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, (%rdx)	# D.7644, _447->l
	.loc 1 644 0 discriminator 2
	addl	$1, -1084(%rbp)	#, i
.L136:
	.loc 1 644 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp830
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	cmpl	-1084(%rbp), %eax	# i, D.7644
	jg	.L137	#,
.L135:
	.loc 1 647 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$647, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp831
	movl	116(%rax), %eax	# lm_15->n_tgprob, D.7644
	movl	%eax, %esi	# D.7644,
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 650 0
	movq	-1072(%rbp), %rax	# lm, tmp832
	movq	%rax, %rdi	# tmp832,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.45, k
	.loc 1 651 0
	movq	-1072(%rbp), %rax	# lm, tmp833
	movl	4(%rax), %eax	# lm_15->n_bg, D.7644
	leal	1(%rax), %ecx	#, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp834
	movl	32(%rax), %ebx	# lm_15->bg_seg_sz, D.7644
	movl	%ecx, %eax	# D.7644, tmp835
	cltd
	idivl	%ebx	# D.7644
	leal	1(%rax), %edx	#, D.7644
	movl	-1088(%rbp), %eax	# k, k.46
	cmpl	%eax, %edx	# k.46, D.7644
	je	.L138	#,
	.loc 1 652 0
	movl	$.LC7, %edx	#,
	movl	$652, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1088(%rbp), %eax	# k, k.47
	movl	%eax, %esi	# k.47,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L138:
	.loc 1 655 0
	movl	-1088(%rbp), %eax	# k, k.48
	cltq
	movl	$655, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp837
	movq	%rax, 104(%rdx)	# D.7646, lm_15->tg_segbase
	.loc 1 656 0
	movq	-1072(%rbp), %rax	# lm, tmp838
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movl	-1088(%rbp), %eax	# k, k.49
	movslq	%eax, %rdx	# k.49, D.7642
	movq	-1072(%rbp), %rax	# lm, tmp839
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7652,
	call	fread	#
	movl	-1088(%rbp), %edx	# k, k.50
	movslq	%edx, %rdx	# k.50, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L139	#,
	.loc 1 657 0
	movl	$.LC7, %edx	#,
	movl	$657, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp840
	movq	%rax, %rsi	# tmp840,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L139:
	.loc 1 658 0
	movq	-1072(%rbp), %rax	# lm, tmp841
	movl	136(%rax), %eax	# lm_15->byteswap, D.7644
	testl	%eax, %eax	# D.7644
	je	.L140	#,
	.loc 1 659 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L141	#
.L142:
	.loc 1 660 0 discriminator 2
	movq	-1072(%rbp), %rax	# lm, tmp842
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	-1084(%rbp), %edx	# i, tmp843
	movslq	%edx, %rdx	# tmp843, D.7642
	salq	$2, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7652, D.7652
	movq	-1072(%rbp), %rax	# lm, tmp844
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	-1084(%rbp), %ecx	# i, tmp845
	movslq	%ecx, %rcx	# tmp845, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7652
	movl	(%rax), %eax	# *_512, D.7644
	shrl	$24, %eax	#, D.7643
	movl	%eax, %ecx	# D.7643, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp846
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	-1084(%rbp), %esi	# i, tmp847
	movslq	%esi, %rsi	# tmp847, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7652
	movl	(%rax), %eax	# *_520, D.7644
	sarl	$8, %eax	#, D.7644
	andl	$65280, %eax	#, D.7644
	orl	%eax, %ecx	# D.7644, D.7644
	movl	%ecx, %esi	# D.7644, D.7644
	movq	-1072(%rbp), %rax	# lm, tmp848
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	-1084(%rbp), %ecx	# i, tmp849
	movslq	%ecx, %rcx	# tmp849, D.7642
	salq	$2, %rcx	#, D.7642
	addq	%rcx, %rax	# D.7642, D.7652
	movl	(%rax), %eax	# *_528, D.7644
	sall	$8, %eax	#, D.7644
	andl	$16711680, %eax	#, D.7644
	orl	%esi, %eax	# D.7644, D.7644
	movl	%eax, %ecx	# D.7644, D.7645
	movq	-1072(%rbp), %rax	# lm, tmp850
	movq	104(%rax), %rax	# lm_15->tg_segbase, D.7652
	movl	-1084(%rbp), %esi	# i, tmp851
	movslq	%esi, %rsi	# tmp851, D.7642
	salq	$2, %rsi	#, D.7642
	addq	%rsi, %rax	# D.7642, D.7652
	movl	(%rax), %eax	# *_537, D.7644
	sall	$24, %eax	#, D.7644
	orl	%ecx, %eax	# D.7645, D.7645
	movl	%eax, (%rdx)	# D.7644, *_508
	.loc 1 659 0 discriminator 2
	addl	$1, -1084(%rbp)	#, i
.L141:
	.loc 1 659 0 is_stmt 0 discriminator 1
	movl	-1088(%rbp), %eax	# k, k.51
	cmpl	%eax, -1084(%rbp)	# k.51, i
	jl	.L142	#,
.L140:
	.loc 1 662 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$662, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-1072(%rbp), %rax	# lm, tmp852
	movl	32(%rax), %edx	# lm_15->bg_seg_sz, D.7644
	movl	-1088(%rbp), %eax	# k, k.52
	movl	%eax, %esi	# k.52,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L125:
	.loc 1 666 0
	movq	-1072(%rbp), %rax	# lm, tmp853
	movq	%rax, %rdi	# tmp853,
	call	lm_fread_int32	#
	movl	%eax, -1088(%rbp)	# k.53, k
	.loc 1 667 0
	movl	-1088(%rbp), %eax	# k, k.54
	testl	%eax, %eax	# k.54
	jg	.L143	#,
	.loc 1 668 0
	movl	$.LC7, %edx	#,
	movl	$668, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1088(%rbp), %eax	# k, k.55
	movl	%eax, %esi	# k.55,
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L143:
	.loc 1 670 0
	movl	-1088(%rbp), %eax	# k, k.56
	cltq
	movl	$670, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	%rax, -1064(%rbp)	# tmp854, tmp_word_str
	.loc 1 671 0
	movq	-1072(%rbp), %rax	# lm, tmp855
	movq	128(%rax), %rcx	# lm_15->fp, D.7641
	movl	-1088(%rbp), %eax	# k, k.57
	movslq	%eax, %rdx	# k.57, D.7642
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp856
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp856,
	call	fread	#
	movl	-1088(%rbp), %edx	# k, k.58
	movslq	%edx, %rdx	# k.58, D.7642
	cmpq	%rdx, %rax	# D.7642, D.7642
	je	.L144	#,
	.loc 1 672 0
	movl	$.LC7, %edx	#,
	movl	$672, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# file, tmp857
	movq	%rax, %rsi	# tmp857,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L144:
	.loc 1 675 0
	movl	$0, -1084(%rbp)	#, i
	movl	$0, -1080(%rbp)	#, j
	jmp	.L145	#
.L147:
	.loc 1 676 0
	movl	-1084(%rbp), %eax	# i, tmp858
	movslq	%eax, %rdx	# tmp858, D.7653
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp859
	addq	%rdx, %rax	# D.7653, D.7654
	movzbl	(%rax), %eax	# *_562, D.7655
	testb	%al, %al	# D.7655
	jne	.L146	#,
	.loc 1 677 0
	addl	$1, -1080(%rbp)	#, j
.L146:
	.loc 1 675 0
	addl	$1, -1084(%rbp)	#, i
.L145:
	.loc 1 675 0 is_stmt 0 discriminator 1
	movl	-1088(%rbp), %eax	# k, k.59
	cmpl	%eax, -1084(%rbp)	# k.59, i
	jl	.L147	#,
	.loc 1 678 0 is_stmt 1
	movq	-1072(%rbp), %rax	# lm, tmp860
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cmpl	-1080(%rbp), %eax	# j, D.7644
	je	.L148	#,
	.loc 1 679 0
	movl	$.LC7, %edx	#,
	movl	$679, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	-1080(%rbp), %eax	# j, tmp861
	movl	%eax, %esi	# tmp861,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L148:
	.loc 1 682 0
	movw	$-1, -1090(%rbp)	#, endwid
	movzwl	-1090(%rbp), %eax	# endwid, tmp862
	movw	%ax, -1092(%rbp)	# tmp862, startwid
	.loc 1 683 0
	movq	-1072(%rbp), %rax	# lm, tmp863
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cltq
	movl	$683, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7642,
	call	__ckd_calloc__	#
	movq	-1072(%rbp), %rdx	# lm, tmp864
	movq	%rax, 16(%rdx)	# D.7646, lm_15->wordstr
	.loc 1 684 0
	movl	$0, -1080(%rbp)	#, j
	.loc 1 685 0
	movl	$0, -1084(%rbp)	#, i
	jmp	.L149	#
.L152:
	.loc 1 686 0
	movl	-1080(%rbp), %eax	# j, tmp865
	movslq	%eax, %rdx	# tmp865, D.7653
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp866
	addq	%rdx, %rax	# D.7653, D.7656
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.7656,
	call	strcmp	#
	testl	%eax, %eax	# D.7644
	jne	.L150	#,
	.loc 1 687 0
	movl	-1084(%rbp), %eax	# i, tmp867
	movw	%ax, -1092(%rbp)	# tmp867, startwid
	jmp	.L151	#
.L150:
	.loc 1 688 0
	movl	-1080(%rbp), %eax	# j, tmp868
	movslq	%eax, %rdx	# tmp868, D.7653
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp869
	addq	%rdx, %rax	# D.7653, D.7656
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# D.7656,
	call	strcmp	#
	testl	%eax, %eax	# D.7644
	jne	.L151	#,
	.loc 1 689 0
	movl	-1084(%rbp), %eax	# i, tmp870
	movw	%ax, -1090(%rbp)	# tmp870, endwid
.L151:
	.loc 1 691 0
	movq	-1072(%rbp), %rax	# lm, tmp871
	movq	16(%rax), %rax	# lm_15->wordstr, D.7657
	movl	-1084(%rbp), %edx	# i, tmp872
	movslq	%edx, %rdx	# tmp872, D.7642
	salq	$3, %rdx	#, D.7642
	leaq	(%rax,%rdx), %rbx	#, D.7657
	movl	-1080(%rbp), %eax	# j, tmp873
	movslq	%eax, %rdx	# tmp873, D.7653
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp874
	addq	%rdx, %rax	# D.7653, D.7656
	movl	$691, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.7656,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.7654, *_586
	.loc 1 693 0
	movl	-1080(%rbp), %eax	# j, tmp875
	movslq	%eax, %rdx	# tmp875, D.7653
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp876
	addq	%rdx, %rax	# D.7653, D.7656
	movq	%rax, %rdi	# D.7656,
	call	strlen	#
	movl	%eax, %edx	# D.7642, D.7643
	movl	-1080(%rbp), %eax	# j, j.60
	addl	%edx, %eax	# D.7643, D.7643
	addl	$1, %eax	#, D.7643
	movl	%eax, -1080(%rbp)	# D.7643, j
	.loc 1 685 0
	addl	$1, -1084(%rbp)	#, i
.L149:
	.loc 1 685 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# lm, tmp877
	movl	(%rax), %eax	# lm_15->n_ug, D.7644
	cmpl	-1084(%rbp), %eax	# i, D.7644
	jg	.L152	#,
	.loc 1 695 0 is_stmt 1
	movq	-1064(%rbp), %rax	# tmp_word_str, tmp878
	movq	%rax, %rdi	# tmp878,
	call	free	#
	.loc 1 696 0
	movl	$.LC1, %edx	#,
	movl	$696, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movl	-1084(%rbp), %eax	# i, tmp879
	movl	%eax, %esi	# tmp879,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 699 0
	cmpw	$-1, -1092(%rbp)	#, startwid
	je	.L153	#,
	.loc 1 700 0
	movq	-1072(%rbp), %rax	# lm, tmp880
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movzwl	-1092(%rbp), %edx	# startwid, D.7642
	salq	$4, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7647, D.7647
	movl	.LC52(%rip), %eax	#, tmp881
	movl	%eax, 4(%rdx)	# tmp881, _602->prob.f
	.loc 1 701 0
	movq	-1072(%rbp), %rax	# lm, tmp882
	movzwl	-1092(%rbp), %edx	# startwid, tmp883
	movw	%dx, 24(%rax)	# tmp883, lm_15->startlwid
.L153:
	.loc 1 705 0
	cmpw	$-1, -1090(%rbp)	#, endwid
	je	.L154	#,
	.loc 1 706 0
	movq	-1072(%rbp), %rax	# lm, tmp884
	movq	40(%rax), %rax	# lm_15->ug, D.7647
	movzwl	-1090(%rbp), %edx	# endwid, D.7642
	salq	$4, %rdx	#, D.7642
	addq	%rax, %rdx	# D.7647, D.7647
	movl	.LC52(%rip), %eax	#, tmp885
	movl	%eax, 8(%rdx)	# tmp885, _606->bowt.f
	.loc 1 707 0
	movq	-1072(%rbp), %rax	# lm, tmp886
	movzwl	-1090(%rbp), %edx	# endwid, tmp887
	movw	%dx, 26(%rax)	# tmp887, lm_15->finishlwid
.L154:
	.loc 1 710 0
	cmpl	$0, -1140(%rbp)	#, n_lmclass_used
	jle	.L155	#,
	.loc 1 711 0
	movq	-1152(%rbp), %rdx	# lmclass, tmp888
	movl	-1140(%rbp), %esi	# n_lmclass_used, tmp889
	movq	-1128(%rbp), %rdi	# wip, tmp890
	movq	-1136(%rbp), %rcx	# uw, tmp891
	movq	-1120(%rbp), %rax	# lw, tmp892
	movq	-1072(%rbp), %r8	# lm, tmp893
	movq	%rdi, -1160(%rbp)	# tmp890, %sfp
	movsd	-1160(%rbp), %xmm2	# %sfp,
	movq	%rcx, -1160(%rbp)	# tmp891, %sfp
	movsd	-1160(%rbp), %xmm1	# %sfp,
	movq	%rax, -1160(%rbp)	# tmp892, %sfp
	movsd	-1160(%rbp), %xmm0	# %sfp,
	movq	%r8, %rdi	# tmp893,
	call	lm_build_lmclass_info	#
.L155:
	.loc 1 714 0
	movq	-1136(%rbp), %rax	# uw, tmp894
	movq	-1072(%rbp), %rdx	# lm, tmp895
	movq	%rax, -1160(%rbp)	# tmp894, %sfp
	movsd	-1160(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp895,
	call	lm2logs3	#
	.loc 1 717 0
	movq	-1072(%rbp), %rdx	# lm, tmp896
	movl	.LC53(%rip), %eax	#, tmp897
	movl	%eax, 148(%rdx)	# tmp897, lm_15->lw
	.loc 1 718 0
	movq	-1072(%rbp), %rax	# lm, tmp898
	movl	$0, 152(%rax)	#, lm_15->wip
	.loc 1 719 0
	movq	-1128(%rbp), %rdx	# wip, tmp899
	movq	-1120(%rbp), %rax	# lw, tmp900
	movq	-1072(%rbp), %rcx	# lm, tmp901
	movq	%rdx, -1160(%rbp)	# tmp899, %sfp
	movsd	-1160(%rbp), %xmm1	# %sfp,
	movq	%rax, -1160(%rbp)	# tmp900, %sfp
	movsd	-1160(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp901,
	call	lm_set_param	#
	.loc 1 721 0
	movq	-1072(%rbp), %rax	# lm, D.7658
	.loc 1 722 0
	movq	-24(%rbp), %rbx	# D.7659, tmp904
	xorq	%fs:40, %rbx	#, tmp904
	je	.L157	#,
	call	__stack_chk_fail	#
.L157:
	addq	$1160, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lm_read_dump, .-lm_read_dump
	.section	.rodata
.LC54:
	.string	"No LM file\n"
.LC55:
	.string	"uw = %e\n"
	.align 8
.LC56:
	.string	"LM read('%s', lw= %.2f, wip= %d, uw= %.2f)\n"
	.text
	.globl	lm_read
	.type	lm_read, @function
lm_read:
.LFB11:
	.loc 1 726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movsd	%xmm0, -32(%rbp)	# lw, lw
	movsd	%xmm1, -40(%rbp)	# wip, wip
	movsd	%xmm2, -48(%rbp)	# uw, uw
	.loc 1 730 0
	cmpq	$0, -24(%rbp)	#, file
	jne	.L160	#,
	.loc 1 731 0
	movl	$.LC7, %edx	#,
	movl	$731, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L160:
	.loc 1 732 0
	xorpd	%xmm0, %xmm0	# tmp74
	ucomisd	-32(%rbp), %xmm0	# lw, tmp74
	jb	.L161	#,
	.loc 1 733 0
	movl	$.LC7, %edx	#,
	movl	$733, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-32(%rbp), %rax	# lw, tmp75
	movq	%rax, -56(%rbp)	# tmp75, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC8, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L161:
	.loc 1 734 0
	xorpd	%xmm0, %xmm0	# tmp76
	ucomisd	-40(%rbp), %xmm0	# wip, tmp76
	jb	.L163	#,
	.loc 1 735 0
	movl	$.LC7, %edx	#,
	movl	$735, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# wip, tmp77
	movq	%rax, -56(%rbp)	# tmp77, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC9, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L163:
	.loc 1 736 0
	xorpd	%xmm0, %xmm0	# tmp78
	ucomisd	-48(%rbp), %xmm0	# uw, tmp78
	ja	.L165	#,
	.loc 1 736 0 is_stmt 0 discriminator 1
	movsd	-48(%rbp), %xmm0	# uw, tmp79
	movsd	.LC4(%rip), %xmm1	#, tmp80
	ucomisd	%xmm1, %xmm0	# tmp80, tmp79
	jbe	.L166	#,
.L165:
	.loc 1 737 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$737, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# uw, tmp81
	movq	%rax, -56(%rbp)	# tmp81, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC55, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L166:
	.loc 1 739 0
	movl	$.LC1, %edx	#,
	movl	$739, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-40(%rbp), %rax	# wip, tmp82
	movq	%rax, -56(%rbp)	# tmp82, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, %esi	#, D.7687
	movq	-48(%rbp), %rdx	# uw, tmp83
	movq	-32(%rbp), %rax	# lw, tmp84
	movq	-24(%rbp), %rcx	# file, tmp85
	movq	%rdx, -56(%rbp)	# tmp83, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movl	%esi, %edx	# D.7687,
	movq	%rax, -56(%rbp)	# tmp84, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp85,
	movl	$.LC56, %edi	#,
	movl	$2, %eax	#,
	call	_E__pr_info	#
	.loc 1 740 0
	movl	$.LC12, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_8], D.7687
	testl	%eax, %eax	# D.7687
	je	.L168	#,
	.loc 1 741 0
	movl	$1, LM_IN_MEMORY(%rip)	#, LM_IN_MEMORY
	jmp	.L169	#
.L168:
	.loc 1 743 0
	movl	$0, LM_IN_MEMORY(%rip)	#, LM_IN_MEMORY
.L169:
	.loc 1 746 0
	movq	-48(%rbp), %r8	# uw, tmp86
	movq	-40(%rbp), %rdi	# wip, tmp87
	movq	-32(%rbp), %rax	# lw, tmp88
	movq	-24(%rbp), %r9	# file, tmp89
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%r8, -56(%rbp)	# tmp86, %sfp
	movsd	-56(%rbp), %xmm2	# %sfp,
	movq	%rdi, -56(%rbp)	# tmp87, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movq	%rax, -56(%rbp)	# tmp88, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%r9, %rdi	# tmp89,
	call	lm_read_dump	#
	movq	%rax, -8(%rbp)	# tmp90, lm
	.loc 1 748 0
	movl	$0, -12(%rbp)	#, u
	jmp	.L170	#
.L171:
	.loc 1 749 0 discriminator 2
	movq	-8(%rbp), %rax	# lm, tmp91
	movq	40(%rax), %rax	# lm_10->ug, D.7689
	movl	-12(%rbp), %edx	# u, tmp92
	movslq	%edx, %rdx	# tmp92, D.7690
	salq	$4, %rdx	#, D.7690
	addq	%rdx, %rax	# D.7690, D.7689
	movl	$-1, (%rax)	#, _16->dictwid
	.loc 1 748 0 discriminator 2
	addl	$1, -12(%rbp)	#, u
.L170:
	.loc 1 748 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lm, tmp93
	movl	(%rax), %eax	# lm_10->n_ug, D.7687
	cmpl	-12(%rbp), %eax	# u, D.7687
	jg	.L171	#,
	.loc 1 752 0 is_stmt 1
	movl	$752, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$12, %esi	#,
	movl	$100003, %edi	#,
	call	__ckd_calloc__	#
	movq	-8(%rbp), %rdx	# lm, tmp94
	movq	%rax, 160(%rdx)	# D.7691, lm_10->tgcache
	.loc 1 753 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L172	#
.L173:
	.loc 1 754 0 discriminator 2
	movq	-8(%rbp), %rax	# lm, tmp95
	movq	160(%rax), %rcx	# lm_10->tgcache, D.7692
	movl	-16(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, D.7690
	movq	%rdx, %rax	# D.7690, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.7690, tmp97
	salq	$2, %rax	#, tmp98
	addq	%rcx, %rax	# D.7692, D.7692
	movw	$-1, (%rax)	#, _23->lwid
	.loc 1 753 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L172:
	.loc 1 753 0 is_stmt 0 discriminator 1
	cmpl	$100002, -16(%rbp)	#, i
	jle	.L173	#,
	.loc 1 756 0 is_stmt 1
	movq	-8(%rbp), %rax	# lm, D.7693
	.loc 1 757 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lm_read, .-lm_read
	.section	.rodata
	.align 8
.LC57:
	.string	"%d tg frees, %d in mem; %d bg frees, %d in mem\n"
	.text
	.globl	lm_cache_reset
	.type	lm_cache_reset, @function
lm_cache_reset:
.LFB12:
	.loc 1 764 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# lm, lm
	.loc 1 768 0
	movl	$0, -28(%rbp)	#, n_tgfree
	movl	-28(%rbp), %eax	# n_tgfree, tmp119
	movl	%eax, -32(%rbp)	# tmp119, n_bgfree
	.loc 1 771 0
	movl	LM_IN_MEMORY(%rip), %eax	# LM_IN_MEMORY, LM_IN_MEMORY.61
	testl	%eax, %eax	# LM_IN_MEMORY.61
	je	.L178	#,
	.loc 1 772 0
	jmp	.L177	#
.L178:
	.loc 1 774 0
	movq	-56(%rbp), %rax	# lm, tmp120
	movl	4(%rax), %eax	# lm_17(D)->n_bg, D.7697
	testl	%eax, %eax	# D.7697
	jle	.L180	#,
	.loc 1 774 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lm, tmp121
	movq	48(%rax), %rax	# lm_17(D)->bg, D.7698
	testq	%rax, %rax	# D.7698
	jne	.L180	#,
	.loc 1 775 0 is_stmt 1
	movl	$0, -36(%rbp)	#, i
	jmp	.L181	#
.L183:
	.loc 1 776 0
	movq	-56(%rbp), %rax	# lm, tmp122
	movq	64(%rax), %rax	# lm_17(D)->membg, D.7699
	movl	-36(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, D.7700
	salq	$4, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7699
	movq	(%rax), %rax	# _25->bg, D.7698
	testq	%rax, %rax	# D.7698
	je	.L182	#,
	.loc 1 776 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lm, tmp124
	movq	64(%rax), %rax	# lm_17(D)->membg, D.7699
	movl	-36(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, D.7700
	salq	$4, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7699
	movl	8(%rax), %eax	# _30->used, D.7697
	testl	%eax, %eax	# D.7697
	jne	.L182	#,
	.loc 1 777 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp126
	movl	172(%rax), %edx	# lm_17(D)->n_bg_inmem, D.7697
	movq	-56(%rbp), %rax	# lm, tmp127
	movq	40(%rax), %rax	# lm_17(D)->ug, D.7701
	movl	-36(%rbp), %ecx	# i, tmp128
	movslq	%ecx, %rcx	# tmp128, D.7700
	salq	$4, %rcx	#, D.7700
	addq	%rcx, %rax	# D.7700, D.7701
	movl	12(%rax), %ecx	# _36->firstbg, D.7697
	movq	-56(%rbp), %rax	# lm, tmp129
	movq	40(%rax), %rax	# lm_17(D)->ug, D.7701
	movl	-36(%rbp), %esi	# i, tmp130
	movslq	%esi, %rsi	# tmp130, D.7702
	addq	$1, %rsi	#, D.7702
	salq	$4, %rsi	#, D.7702
	addq	%rsi, %rax	# D.7702, D.7701
	movl	12(%rax), %eax	# _42->firstbg, D.7697
	subl	%eax, %ecx	# D.7697, D.7697
	movl	%ecx, %eax	# D.7697, D.7697
	addl	%eax, %edx	# D.7697, D.7697
	movq	-56(%rbp), %rax	# lm, tmp131
	movl	%edx, 172(%rax)	# D.7697, lm_17(D)->n_bg_inmem
	.loc 1 779 0
	movq	-56(%rbp), %rax	# lm, tmp132
	movq	64(%rax), %rax	# lm_17(D)->membg, D.7699
	movl	-36(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, D.7700
	salq	$4, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7699
	movq	(%rax), %rax	# _49->bg, D.7698
	movq	%rax, %rdi	# D.7698,
	call	free	#
	.loc 1 780 0
	movq	-56(%rbp), %rax	# lm, tmp134
	movq	64(%rax), %rax	# lm_17(D)->membg, D.7699
	movl	-36(%rbp), %edx	# i, tmp135
	movslq	%edx, %rdx	# tmp135, D.7700
	salq	$4, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7699
	movq	$0, (%rax)	#, _54->bg
	.loc 1 781 0
	addl	$1, -32(%rbp)	#, n_bgfree
.L182:
	.loc 1 784 0
	movq	-56(%rbp), %rax	# lm, tmp136
	movq	64(%rax), %rax	# lm_17(D)->membg, D.7699
	movl	-36(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, D.7700
	salq	$4, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7699
	movl	$0, 8(%rax)	#, _59->used
	.loc 1 775 0
	addl	$1, -36(%rbp)	#, i
.L181:
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lm, tmp138
	movl	(%rax), %eax	# lm_17(D)->n_ug, D.7697
	cmpl	-36(%rbp), %eax	# i, D.7697
	jg	.L183	#,
.L180:
	.loc 1 788 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp139
	movl	8(%rax), %eax	# lm_17(D)->n_tg, D.7697
	testl	%eax, %eax	# D.7697
	jle	.L184	#,
	.loc 1 789 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L185	#
.L193:
	.loc 1 790 0
	movq	$0, -16(%rbp)	#, prev_tginfo
	.loc 1 791 0
	movq	-56(%rbp), %rax	# lm, tmp140
	movq	72(%rax), %rax	# lm_17(D)->tginfo, D.7703
	movl	-36(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, D.7700
	salq	$3, %rdx	#, D.7700
	addq	%rdx, %rax	# D.7700, D.7703
	movq	(%rax), %rax	# *_68, tmp142
	movq	%rax, -24(%rbp)	# tmp142, tginfo
	jmp	.L186	#
.L192:
	.loc 1 792 0
	movq	-24(%rbp), %rax	# tginfo, tmp143
	movq	24(%rax), %rax	# tginfo_11->next, tmp144
	movq	%rax, -8(%rbp)	# tmp144, next_tginfo
	.loc 1 794 0
	movq	-24(%rbp), %rax	# tginfo, tmp145
	movl	20(%rax), %eax	# tginfo_11->used, D.7697
	testl	%eax, %eax	# D.7697
	jne	.L187	#,
	.loc 1 795 0
	movq	-56(%rbp), %rax	# lm, tmp146
	movq	56(%rax), %rax	# lm_17(D)->tg, D.7704
	testq	%rax, %rax	# D.7704
	jne	.L188	#,
	.loc 1 795 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tginfo, tmp147
	movq	8(%rax), %rax	# tginfo_11->tg, D.7704
	testq	%rax, %rax	# D.7704
	je	.L188	#,
	.loc 1 796 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp148
	movl	188(%rax), %edx	# lm_17(D)->n_tg_inmem, D.7697
	movq	-24(%rbp), %rax	# tginfo, tmp149
	movl	4(%rax), %eax	# tginfo_11->n_tg, D.7697
	subl	%eax, %edx	# D.7697, D.7697
	movq	-56(%rbp), %rax	# lm, tmp150
	movl	%edx, 188(%rax)	# D.7697, lm_17(D)->n_tg_inmem
	.loc 1 797 0
	movq	-24(%rbp), %rax	# tginfo, tmp151
	movq	8(%rax), %rax	# tginfo_11->tg, D.7704
	movq	%rax, %rdi	# D.7704,
	call	free	#
	.loc 1 798 0
	addl	$1, -28(%rbp)	#, n_tgfree
.L188:
	.loc 1 801 0
	movq	-24(%rbp), %rax	# tginfo, tmp152
	movq	%rax, %rdi	# tmp152,
	call	free	#
	.loc 1 802 0
	cmpq	$0, -16(%rbp)	#, prev_tginfo
	je	.L189	#,
	.loc 1 803 0
	movq	-16(%rbp), %rax	# prev_tginfo, tmp153
	movq	-8(%rbp), %rdx	# next_tginfo, tmp154
	movq	%rdx, 24(%rax)	# tmp154, prev_tginfo_13->next
	jmp	.L191	#
.L189:
	.loc 1 805 0
	movq	-56(%rbp), %rax	# lm, tmp155
	movq	72(%rax), %rax	# lm_17(D)->tginfo, D.7703
	movl	-36(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, D.7700
	salq	$3, %rdx	#, D.7700
	addq	%rax, %rdx	# D.7703, D.7703
	movq	-8(%rbp), %rax	# next_tginfo, tmp157
	movq	%rax, (%rdx)	# tmp157, *_82
	jmp	.L191	#
.L187:
	.loc 1 807 0
	movq	-24(%rbp), %rax	# tginfo, tmp158
	movl	$0, 20(%rax)	#, tginfo_11->used
	.loc 1 808 0
	movq	-24(%rbp), %rax	# tginfo, tmp159
	movq	%rax, -16(%rbp)	# tmp159, prev_tginfo
.L191:
	.loc 1 791 0
	movq	-8(%rbp), %rax	# next_tginfo, tmp160
	movq	%rax, -24(%rbp)	# tmp160, tginfo
.L186:
	.loc 1 791 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tginfo
	jne	.L192	#,
	.loc 1 789 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L185:
	.loc 1 789 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# lm, tmp161
	movl	(%rax), %eax	# lm_17(D)->n_ug, D.7697
	cmpl	-36(%rbp), %eax	# i, D.7697
	jg	.L193	#,
.L184:
	.loc 1 814 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, n_tgfree
	jg	.L194	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, n_bgfree
	jle	.L177	#,
.L194:
	.loc 1 815 0 is_stmt 1
	movl	$.LC1, %edx	#,
	movl	$815, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movq	-56(%rbp), %rax	# lm, tmp162
	movl	172(%rax), %esi	# lm_17(D)->n_bg_inmem, D.7697
	movq	-56(%rbp), %rax	# lm, tmp163
	movl	188(%rax), %edx	# lm_17(D)->n_tg_inmem, D.7697
	movl	-32(%rbp), %ecx	# n_bgfree, tmp164
	movl	-28(%rbp), %eax	# n_tgfree, tmp165
	movl	%esi, %r8d	# D.7697,
	movl	%eax, %esi	# tmp165,
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L177:
	.loc 1 818 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	lm_cache_reset, .-lm_cache_reset
	.section	.rodata
	.align 8
.LC59:
	.string	"%9d tg(), %9d tgcache, %8d bo; %5d fills, %8d in mem (%.1f%%)\n"
	.align 8
.LC60:
	.string	"%8d bg(), %8d bo; %5d fills, %8d in mem (%.1f%%)\n"
	.text
	.globl	lm_cache_stats_dump
	.type	lm_cache_stats_dump, @function
lm_cache_stats_dump:
.LFB13:
	.loc 1 822 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# lm, lm
	.loc 1 823 0
	movl	$.LC1, %edx	#,
	movl	$823, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 825 0
	movq	-8(%rbp), %rax	# lm, tmp82
	movl	188(%rax), %eax	# lm_1(D)->n_tg_inmem, D.7706
	cvtsi2sd	%eax, %xmm0	# D.7706, D.7707
	movsd	.LC58(%rip), %xmm1	#, tmp83
	mulsd	%xmm1, %xmm0	# tmp83, D.7707
	movq	-8(%rbp), %rax	# lm, tmp84
	movl	8(%rax), %eax	# lm_1(D)->n_tg, D.7706
	addl	$1, %eax	#, D.7706
	.loc 1 823 0
	cvtsi2sd	%eax, %xmm1	# D.7706, D.7707
	divsd	%xmm1, %xmm0	# D.7707, D.7707
	movq	-8(%rbp), %rax	# lm, tmp85
	movl	188(%rax), %edi	# lm_1(D)->n_tg_inmem, D.7706
	movq	-8(%rbp), %rax	# lm, tmp86
	movl	184(%rax), %esi	# lm_1(D)->n_tg_fill, D.7706
	movq	-8(%rbp), %rax	# lm, tmp87
	movl	196(%rax), %ecx	# lm_1(D)->n_tg_bo, D.7706
	movq	-8(%rbp), %rax	# lm, tmp88
	movl	200(%rax), %edx	# lm_1(D)->n_tgcache_hit, D.7706
	movq	-8(%rbp), %rax	# lm, tmp89
	movl	192(%rax), %eax	# lm_1(D)->n_tg_score, D.7706
	movl	%edi, %r9d	# D.7706,
	movl	%esi, %r8d	# D.7706,
	movl	%eax, %esi	# D.7706,
	movl	$.LC59, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_info	#
	.loc 1 826 0
	movl	$.LC1, %edx	#,
	movl	$826, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 828 0
	movq	-8(%rbp), %rax	# lm, tmp90
	movl	172(%rax), %eax	# lm_1(D)->n_bg_inmem, D.7706
	cvtsi2sd	%eax, %xmm0	# D.7706, D.7707
	movsd	.LC58(%rip), %xmm1	#, tmp91
	mulsd	%xmm1, %xmm0	# tmp91, D.7707
	movq	-8(%rbp), %rax	# lm, tmp92
	movl	4(%rax), %eax	# lm_1(D)->n_bg, D.7706
	addl	$1, %eax	#, D.7706
	.loc 1 826 0
	cvtsi2sd	%eax, %xmm1	# D.7706, D.7707
	divsd	%xmm1, %xmm0	# D.7707, D.7707
	movq	-8(%rbp), %rax	# lm, tmp93
	movl	172(%rax), %esi	# lm_1(D)->n_bg_inmem, D.7706
	movq	-8(%rbp), %rax	# lm, tmp94
	movl	168(%rax), %ecx	# lm_1(D)->n_bg_fill, D.7706
	movq	-8(%rbp), %rax	# lm, tmp95
	movl	180(%rax), %edx	# lm_1(D)->n_bg_bo, D.7706
	movq	-8(%rbp), %rax	# lm, tmp96
	movl	176(%rax), %eax	# lm_1(D)->n_bg_score, D.7706
	movl	%esi, %r8d	# D.7706,
	movl	%eax, %esi	# D.7706,
	movl	$.LC60, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_info	#
	.loc 1 830 0
	movq	-8(%rbp), %rax	# lm, tmp97
	movl	$0, 200(%rax)	#, lm_1(D)->n_tgcache_hit
	.loc 1 831 0
	movq	-8(%rbp), %rax	# lm, tmp98
	movl	$0, 184(%rax)	#, lm_1(D)->n_tg_fill
	.loc 1 832 0
	movq	-8(%rbp), %rax	# lm, tmp99
	movl	$0, 192(%rax)	#, lm_1(D)->n_tg_score
	.loc 1 833 0
	movq	-8(%rbp), %rax	# lm, tmp100
	movl	$0, 196(%rax)	#, lm_1(D)->n_tg_bo
	.loc 1 834 0
	movq	-8(%rbp), %rax	# lm, tmp101
	movl	$0, 168(%rax)	#, lm_1(D)->n_bg_fill
	.loc 1 835 0
	movq	-8(%rbp), %rax	# lm, tmp102
	movl	$0, 176(%rax)	#, lm_1(D)->n_bg_score
	.loc 1 836 0
	movq	-8(%rbp), %rax	# lm, tmp103
	movl	$0, 180(%rax)	#, lm_1(D)->n_bg_bo
	.loc 1 837 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	lm_cache_stats_dump, .-lm_cache_stats_dump
	.section	.rodata
	.align 8
.LC61:
	.string	"Bad argument (%d) to lm_ug_score\n"
	.text
	.globl	lm_ug_score
	.type	lm_ug_score, @function
lm_ug_score:
.LFB14:
	.loc 1 841 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# lm, lm
	movl	%esi, %eax	# lwid, tmp78
	movl	%edx, -16(%rbp)	# wid, wid
	movw	%ax, -12(%rbp)	# tmp78, lwid
	.loc 1 842 0
	cmpw	$-1, -12(%rbp)	#, lwid
	je	.L197	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lm, tmp79
	movl	(%rax), %eax	# lm_3(D)->n_ug, D.7711
	cmpl	-16(%rbp), %eax	# wid, D.7711
	jg	.L198	#,
.L197:
	.loc 1 843 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$843, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-12(%rbp), %eax	# lwid, D.7711
	movl	%eax, %esi	# D.7711,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L198:
	.loc 1 845 0
	movq	-8(%rbp), %rax	# lm, tmp80
	movl	$1, 204(%rax)	#, lm_3(D)->access_type
	.loc 1 847 0
	movq	-8(%rbp), %rax	# lm, tmp81
	movq	240(%rax), %rax	# lm_3(D)->inclass_ugscore, D.7712
	testq	%rax, %rax	# D.7712
	je	.L199	#,
	.loc 1 848 0
	movq	-8(%rbp), %rax	# lm, tmp82
	movq	40(%rax), %rax	# lm_3(D)->ug, D.7713
	movzwl	-12(%rbp), %edx	# lwid, D.7714
	salq	$4, %rdx	#, D.7714
	addq	%rdx, %rax	# D.7714, D.7713
	movl	4(%rax), %edx	# _11->prob.l, D.7711
	movq	-8(%rbp), %rax	# lm, tmp83
	movq	240(%rax), %rax	# lm_3(D)->inclass_ugscore, D.7712
	movl	-16(%rbp), %ecx	# wid, tmp84
	movslq	%ecx, %rcx	# tmp84, D.7714
	salq	$2, %rcx	#, D.7714
	addq	%rcx, %rax	# D.7714, D.7712
	movl	(%rax), %eax	# *_16, D.7711
	addl	%edx, %eax	# D.7711, D.7710
	jmp	.L200	#
.L199:
	.loc 1 850 0
	movq	-8(%rbp), %rax	# lm, tmp85
	movq	40(%rax), %rax	# lm_3(D)->ug, D.7713
	movzwl	-12(%rbp), %edx	# lwid, D.7714
	salq	$4, %rdx	#, D.7714
	addq	%rdx, %rax	# D.7714, D.7713
	movl	4(%rax), %eax	# _22->prob.l, D.7710
.L200:
	.loc 1 851 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	lm_ug_score, .-lm_ug_score
	.globl	lm_uglist
	.type	lm_uglist, @function
lm_uglist:
.LFB15:
	.loc 1 855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# lm, lm
	movq	%rsi, -16(%rbp)	# ugptr, ugptr
	.loc 1 856 0
	movq	-8(%rbp), %rax	# lm, tmp62
	movq	40(%rax), %rdx	# lm_1(D)->ug, D.7716
	movq	-16(%rbp), %rax	# ugptr, tmp63
	movq	%rdx, (%rax)	# D.7716, *ugptr_3(D)
	.loc 1 857 0
	movq	-8(%rbp), %rax	# lm, tmp64
	movl	(%rax), %eax	# lm_1(D)->n_ug, D.7717
	.loc 1 858 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	lm_uglist, .-lm_uglist
	.globl	lm_ug_wordprob
	.type	lm_ug_wordprob, @function
lm_ug_wordprob:
.LFB16:
	.loc 1 863 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# lm, lm
	movq	%rsi, -64(%rbp)	# dict, dict
	movl	%edx, -68(%rbp)	# th, th
	movq	%rcx, -80(%rbp)	# wp, wp
	.loc 1 868 0
	movq	-56(%rbp), %rax	# lm, tmp110
	movl	(%rax), %eax	# lm_9(D)->n_ug, tmp111
	movl	%eax, -28(%rbp)	# tmp111, n
	.loc 1 870 0
	movl	$0, -40(%rbp)	#, i
	movl	$0, -36(%rbp)	#, j
	jmp	.L204	#
.L212:
	.loc 1 871 0
	movq	-56(%rbp), %rax	# lm, tmp112
	movq	40(%rax), %rax	# lm_9(D)->ug, D.7718
	movl	-40(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, D.7719
	salq	$4, %rdx	#, D.7719
	addq	%rdx, %rax	# D.7719, D.7718
	movl	(%rax), %eax	# _16->dictwid, tmp114
	movl	%eax, -24(%rbp)	# tmp114, w
	.loc 1 872 0
	cmpl	$0, -24(%rbp)	#, w
	js	.L205	#,
	.loc 1 873 0
	cmpl	$16777215, -24(%rbp)	#, w
	jg	.L206	#,
	.loc 1 874 0
	movq	-56(%rbp), %rax	# lm, tmp115
	movq	40(%rax), %rax	# lm_9(D)->ug, D.7718
	movl	-40(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, D.7719
	salq	$4, %rdx	#, D.7719
	addq	%rdx, %rax	# D.7719, D.7718
	movl	4(%rax), %eax	# _21->prob.l, tmp117
	movl	%eax, -20(%rbp)	# tmp117, p
	movl	-20(%rbp), %eax	# p, tmp118
	cmpl	-68(%rbp), %eax	# th, tmp118
	jl	.L205	#,
	.loc 1 875 0
	movl	-36(%rbp), %eax	# j, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7719
	movq	-80(%rbp), %rax	# wp, tmp120
	addq	%rax, %rdx	# tmp120, D.7720
	movl	-24(%rbp), %eax	# w, tmp121
	movl	%eax, (%rdx)	# tmp121, _27->wid
	.loc 1 876 0
	movl	-36(%rbp), %eax	# j, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7719
	movq	-80(%rbp), %rax	# wp, tmp123
	addq	%rax, %rdx	# tmp123, D.7720
	movl	-20(%rbp), %eax	# p, tmp124
	movl	%eax, 4(%rdx)	# tmp124, _30->prob
	.loc 1 877 0
	addl	$1, -36(%rbp)	#, j
	jmp	.L205	#
.L206:
	.loc 1 880 0
	movq	-56(%rbp), %rax	# lm, tmp125
	movq	224(%rax), %rax	# lm_9(D)->lmclass, D.7721
	movl	-24(%rbp), %edx	# w, tmp126
	movslq	%edx, %rdx	# tmp126, D.7719
	salq	$3, %rdx	#, D.7719
	subq	$134217728, %rdx	#, D.7722
	addq	%rdx, %rax	# D.7722, D.7721
	movq	(%rax), %rax	# *_36, tmp127
	movq	%rax, -8(%rbp)	# tmp127, lmclass
	.loc 1 881 0
	movq	-8(%rbp), %rax	# lmclass, tmp128
	movq	8(%rax), %rax	# lmclass_37->wordlist, tmp129
	movq	%rax, -16(%rbp)	# tmp129, lm_cw
	.loc 1 882 0
	jmp	.L208	#
.L211:
	.loc 1 883 0
	movq	-16(%rbp), %rax	# lm_cw, tmp130
	movl	8(%rax), %eax	# lm_cw_8->dictwid, tmp131
	movl	%eax, -32(%rbp)	# tmp131, dictid
	.loc 1 885 0
	movq	-64(%rbp), %rax	# dict, tmp132
	movq	32(%rax), %rcx	# dict_40(D)->word, D.7723
	movl	-32(%rbp), %eax	# dictid, tmp133
	movslq	%eax, %rdx	# tmp133, D.7719
	movq	%rdx, %rax	# D.7719, tmp134
	salq	$2, %rax	#, tmp134
	addq	%rdx, %rax	# D.7719, tmp134
	salq	$3, %rax	#, tmp135
	addq	%rcx, %rax	# D.7723, D.7723
	movl	24(%rax), %eax	# _44->basewid, D.7724
	cmpl	-32(%rbp), %eax	# dictid, D.7724
	je	.L209	#,
	.loc 1 886 0
	movq	-64(%rbp), %rax	# dict, tmp136
	movq	32(%rax), %rcx	# dict_40(D)->word, D.7723
	movl	-32(%rbp), %eax	# dictid, tmp137
	movslq	%eax, %rdx	# tmp137, D.7719
	movq	%rdx, %rax	# D.7719, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# D.7719, tmp138
	salq	$3, %rax	#, tmp139
	addq	%rcx, %rax	# D.7723, D.7723
	movl	24(%rax), %eax	# _49->basewid, tmp140
	movl	%eax, -32(%rbp)	# tmp140, dictid
.L209:
	.loc 1 888 0
	movq	-56(%rbp), %rax	# lm, tmp141
	movq	40(%rax), %rax	# lm_9(D)->ug, D.7718
	movl	-40(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, D.7719
	salq	$4, %rdx	#, D.7719
	addq	%rdx, %rax	# D.7719, D.7718
	movl	4(%rax), %edx	# _54->prob.l, D.7724
	movq	-56(%rbp), %rax	# lm, tmp143
	movq	240(%rax), %rax	# lm_9(D)->inclass_ugscore, D.7725
	movl	-32(%rbp), %ecx	# dictid, tmp144
	movslq	%ecx, %rcx	# tmp144, D.7719
	salq	$2, %rcx	#, D.7719
	addq	%rcx, %rax	# D.7719, D.7725
	movl	(%rax), %eax	# *_59, D.7724
	addl	%edx, %eax	# D.7724, tmp145
	movl	%eax, -20(%rbp)	# tmp145, p
	movl	-20(%rbp), %eax	# p, tmp146
	cmpl	-68(%rbp), %eax	# th, tmp146
	jl	.L210	#,
	.loc 1 889 0
	movl	-36(%rbp), %eax	# j, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7719
	movq	-80(%rbp), %rax	# wp, tmp148
	addq	%rax, %rdx	# tmp148, D.7720
	movl	-32(%rbp), %eax	# dictid, tmp149
	movl	%eax, (%rdx)	# tmp149, _64->wid
	.loc 1 890 0
	movl	-36(%rbp), %eax	# j, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7719
	movq	-80(%rbp), %rax	# wp, tmp151
	addq	%rax, %rdx	# tmp151, D.7720
	movq	-56(%rbp), %rax	# lm, tmp152
	movq	40(%rax), %rax	# lm_9(D)->ug, D.7718
	movl	-40(%rbp), %ecx	# i, tmp153
	movslq	%ecx, %rcx	# tmp153, D.7719
	salq	$4, %rcx	#, D.7719
	addq	%rcx, %rax	# D.7719, D.7718
	movl	4(%rax), %eax	# _71->prob.l, D.7724
	movl	%eax, 4(%rdx)	# D.7724, _67->prob
	.loc 1 891 0
	addl	$1, -36(%rbp)	#, j
.L210:
	.loc 1 894 0
	movq	-16(%rbp), %rax	# lm_cw, tmp154
	movq	16(%rax), %rax	# lm_cw_8->next, tmp155
	movq	%rax, -16(%rbp)	# tmp155, lm_cw
.L208:
	.loc 1 882 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, lm_cw
	jne	.L211	#,
.L205:
	.loc 1 870 0
	addl	$1, -40(%rbp)	#, i
.L204:
	.loc 1 870 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp156
	cmpl	-28(%rbp), %eax	# n, tmp156
	jl	.L212	#,
	.loc 1 901 0 is_stmt 1
	movl	-36(%rbp), %eax	# j, D.7726
	.loc 1 902 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	lm_ug_wordprob, .-lm_ug_wordprob
	.section	.rodata
.LC62:
	.string	"fseek failed\n"
	.text
	.type	load_bg, @function
load_bg:
.LFB17:
	.loc 1 909 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lm, lm
	movl	%esi, %eax	# lw1, tmp176
	movw	%ax, -60(%rbp)	# tmp176, lw1
	.loc 1 913 0
	movq	-56(%rbp), %rax	# lm, tmp177
	movq	40(%rax), %rax	# lm_2(D)->ug, D.7727
	movzwl	-60(%rbp), %edx	# lw1, D.7728
	salq	$4, %rdx	#, D.7728
	addq	%rdx, %rax	# D.7728, D.7727
	movl	12(%rax), %eax	# _7->firstbg, tmp178
	movl	%eax, -32(%rbp)	# tmp178, b
	.loc 1 914 0
	movq	-56(%rbp), %rax	# lm, tmp179
	movq	40(%rax), %rax	# lm_2(D)->ug, D.7727
	movzwl	-60(%rbp), %edx	# lw1, D.7729
	addq	$1, %rdx	#, D.7729
	salq	$4, %rdx	#, D.7729
	addq	%rdx, %rax	# D.7729, D.7727
	movl	12(%rax), %eax	# _13->firstbg, D.7730
	subl	-32(%rbp), %eax	# b, tmp181
	movl	%eax, -28(%rbp)	# tmp181, n
	.loc 1 916 0
	movl	LM_IN_MEMORY(%rip), %eax	# LM_IN_MEMORY, LM_IN_MEMORY.62
	testl	%eax, %eax	# LM_IN_MEMORY.62
	je	.L215	#,
	.loc 1 917 0
	movq	-56(%rbp), %rax	# lm, tmp182
	movq	64(%rax), %rax	# lm_2(D)->membg, D.7731
	movzwl	-60(%rbp), %edx	# lw1, D.7728
	salq	$4, %rdx	#, D.7728
	addq	%rdx, %rax	# D.7728, D.7731
	movq	-56(%rbp), %rdx	# lm, tmp183
	movq	48(%rdx), %rdx	# lm_2(D)->bg, D.7732
	movl	-32(%rbp), %ecx	# b, tmp184
	movslq	%ecx, %rcx	# tmp184, D.7728
	salq	$3, %rcx	#, D.7728
	addq	%rcx, %rdx	# D.7728, D.7732
	movq	%rdx, (%rax)	# D.7732, _20->bg
	movq	(%rax), %rax	# _20->bg, tmp185
	movq	%rax, -24(%rbp)	# tmp185, bg
	jmp	.L216	#
.L215:
	.loc 1 919 0
	movq	-56(%rbp), %rax	# lm, tmp186
	movq	64(%rax), %rax	# lm_2(D)->membg, D.7731
	movzwl	-60(%rbp), %edx	# lw1, D.7728
	salq	$4, %rdx	#, D.7728
	leaq	(%rax,%rdx), %rbx	#, D.7731
	movl	-28(%rbp), %eax	# n, tmp187
	addl	$1, %eax	#, D.7730
	cltq
	movl	$919, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7728,
	call	__ckd_calloc__	#
	movq	%rax, (%rbx)	# D.7733, _29->bg
	movq	(%rbx), %rax	# _29->bg, tmp188
	movq	%rax, -24(%rbp)	# tmp188, bg
	.loc 1 921 0
	movq	-56(%rbp), %rax	# lm, tmp189
	movl	140(%rax), %eax	# lm_2(D)->bgoff, D.7730
	cltq
	movl	-32(%rbp), %edx	# b, tmp190
	movslq	%edx, %rdx	# tmp190, D.7728
	salq	$3, %rdx	#, D.7728
	addq	%rdx, %rax	# D.7728, D.7728
	movq	%rax, %rcx	# D.7728, D.7734
	movq	-56(%rbp), %rax	# lm, tmp191
	movq	128(%rax), %rax	# lm_2(D)->fp, D.7735
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.7734,
	movq	%rax, %rdi	# D.7735,
	call	fseek	#
	testl	%eax, %eax	# D.7730
	jns	.L217	#,
	.loc 1 922 0
	movl	$.LC26, %edx	#,
	movl	$922, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L217:
	.loc 1 925 0
	movq	-56(%rbp), %rax	# lm, tmp192
	movq	128(%rax), %rcx	# lm_2(D)->fp, D.7735
	movl	-28(%rbp), %eax	# n, tmp193
	addl	$1, %eax	#, D.7730
	movslq	%eax, %rdx	# D.7730, D.7728
	movq	-24(%rbp), %rax	# bg, tmp194
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	fread	#
	movl	-28(%rbp), %edx	# n, tmp195
	addl	$1, %edx	#, D.7730
	movslq	%edx, %rdx	# D.7730, D.7728
	cmpq	%rdx, %rax	# D.7728, D.7728
	je	.L218	#,
	.loc 1 926 0
	movl	$.LC7, %edx	#,
	movl	$926, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L218:
	.loc 1 927 0
	movq	-56(%rbp), %rax	# lm, tmp196
	movl	136(%rax), %eax	# lm_2(D)->byteswap, D.7730
	testl	%eax, %eax	# D.7730
	je	.L216	#,
	.loc 1 928 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L219	#
.L220:
	.loc 1 929 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp198
	addq	%rax, %rdx	# tmp198, D.7732
	movl	-36(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp200
	addq	%rcx, %rax	# D.7728, D.7732
	movzwl	(%rax), %eax	# _55->wid, D.7736
	shrw	$8, %ax	#, D.7736
	movl	%eax, %ecx	# D.7736, D.7737
	movl	-36(%rbp), %eax	# i, tmp201
	cltq
	leaq	0(,%rax,8), %rsi	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp202
	addq	%rsi, %rax	# D.7728, D.7732
	movzwl	(%rax), %eax	# _61->wid, D.7736
	movzwl	%ax, %eax	# D.7736, D.7730
	sall	$8, %eax	#, D.7730
	orl	%ecx, %eax	# D.7737, D.7737
	movw	%ax, (%rdx)	# D.7736, _52->wid
	.loc 1 930 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp203
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp204
	addq	%rax, %rdx	# tmp204, D.7732
	movl	-36(%rbp), %eax	# i, tmp205
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp206
	addq	%rcx, %rax	# D.7728, D.7732
	movzwl	2(%rax), %eax	# _73->probid, D.7736
	shrw	$8, %ax	#, D.7736
	movl	%eax, %ecx	# D.7736, D.7737
	movl	-36(%rbp), %eax	# i, tmp207
	cltq
	leaq	0(,%rax,8), %rsi	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp208
	addq	%rsi, %rax	# D.7728, D.7732
	movzwl	2(%rax), %eax	# _79->probid, D.7736
	movzwl	%ax, %eax	# D.7736, D.7730
	sall	$8, %eax	#, D.7730
	orl	%ecx, %eax	# D.7737, D.7737
	movw	%ax, 2(%rdx)	# D.7736, _70->probid
	.loc 1 931 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp210
	addq	%rax, %rdx	# tmp210, D.7732
	movl	-36(%rbp), %eax	# i, tmp211
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp212
	addq	%rcx, %rax	# D.7728, D.7732
	movzwl	4(%rax), %eax	# _91->bowtid, D.7736
	shrw	$8, %ax	#, D.7736
	movl	%eax, %ecx	# D.7736, D.7737
	movl	-36(%rbp), %eax	# i, tmp213
	cltq
	leaq	0(,%rax,8), %rsi	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp214
	addq	%rsi, %rax	# D.7728, D.7732
	movzwl	4(%rax), %eax	# _97->bowtid, D.7736
	movzwl	%ax, %eax	# D.7736, D.7730
	sall	$8, %eax	#, D.7730
	orl	%ecx, %eax	# D.7737, D.7737
	movw	%ax, 4(%rdx)	# D.7736, _88->bowtid
	.loc 1 932 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp215
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp216
	addq	%rax, %rdx	# tmp216, D.7732
	movl	-36(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp218
	addq	%rcx, %rax	# D.7728, D.7732
	movzwl	6(%rax), %eax	# _109->firsttg, D.7736
	shrw	$8, %ax	#, D.7736
	movl	%eax, %ecx	# D.7736, D.7737
	movl	-36(%rbp), %eax	# i, tmp219
	cltq
	leaq	0(,%rax,8), %rsi	#, D.7728
	movq	-24(%rbp), %rax	# bg, tmp220
	addq	%rsi, %rax	# D.7728, D.7732
	movzwl	6(%rax), %eax	# _115->firsttg, D.7736
	movzwl	%ax, %eax	# D.7736, D.7730
	sall	$8, %eax	#, D.7730
	orl	%ecx, %eax	# D.7737, D.7737
	movw	%ax, 6(%rdx)	# D.7736, _106->firsttg
	.loc 1 928 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L219:
	.loc 1 928 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp221
	cmpl	-28(%rbp), %eax	# n, tmp221
	jle	.L220	#,
.L216:
	.loc 1 936 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp222
	movl	168(%rax), %eax	# lm_2(D)->n_bg_fill, D.7730
	leal	1(%rax), %edx	#, D.7730
	movq	-56(%rbp), %rax	# lm, tmp223
	movl	%edx, 168(%rax)	# D.7730, lm_2(D)->n_bg_fill
	.loc 1 937 0
	movq	-56(%rbp), %rax	# lm, tmp224
	movl	172(%rax), %edx	# lm_2(D)->n_bg_inmem, D.7730
	movl	-28(%rbp), %eax	# n, tmp225
	addl	%eax, %edx	# tmp225, D.7730
	movq	-56(%rbp), %rax	# lm, tmp226
	movl	%edx, 172(%rax)	# D.7730, lm_2(D)->n_bg_inmem
	.loc 1 938 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	load_bg, .-load_bg
	.type	find_bg, @function
find_bg:
.LFB18:
	.loc 1 945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# bg, bg
	movl	%esi, -28(%rbp)	# n, n
	movl	%edx, %eax	# w, tmp76
	movw	%ax, -32(%rbp)	# tmp76, w
	.loc 1 949 0
	movl	$0, -8(%rbp)	#, b
	.loc 1 950 0
	movl	-28(%rbp), %eax	# n, tmp77
	movl	%eax, -4(%rbp)	# tmp77, e
	.loc 1 951 0
	jmp	.L222	#
.L226:
	.loc 1 952 0
	movl	-4(%rbp), %eax	# e, tmp78
	movl	-8(%rbp), %edx	# b, tmp79
	addl	%edx, %eax	# tmp79, D.7740
	sarl	%eax	# tmp80
	movl	%eax, -12(%rbp)	# tmp80, i
	.loc 1 953 0
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7741
	movq	-24(%rbp), %rax	# bg, tmp82
	addq	%rdx, %rax	# D.7741, D.7742
	movzwl	(%rax), %eax	# _15->wid, D.7743
	cmpw	-32(%rbp), %ax	# w, D.7743
	jae	.L223	#,
	.loc 1 954 0
	movl	-12(%rbp), %eax	# i, tmp86
	addl	$1, %eax	#, tmp85
	movl	%eax, -8(%rbp)	# tmp85, b
	jmp	.L222	#
.L223:
	.loc 1 955 0
	movl	-12(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7741
	movq	-24(%rbp), %rax	# bg, tmp88
	addq	%rdx, %rax	# D.7741, D.7742
	movzwl	(%rax), %eax	# _21->wid, D.7743
	cmpw	-32(%rbp), %ax	# w, D.7743
	jbe	.L224	#,
	.loc 1 956 0
	movl	-12(%rbp), %eax	# i, tmp89
	movl	%eax, -4(%rbp)	# tmp89, e
	jmp	.L222	#
.L224:
	.loc 1 958 0
	movl	-12(%rbp), %eax	# i, D.7739
	jmp	.L225	#
.L222:
	.loc 1 951 0 discriminator 1
	movl	-8(%rbp), %eax	# b, tmp90
	movl	-4(%rbp), %edx	# e, tmp91
	subl	%eax, %edx	# tmp90, D.7740
	movl	%edx, %eax	# D.7740, D.7740
	cmpl	$16, %eax	#, D.7740
	jg	.L226	#,
	.loc 1 962 0
	movl	-8(%rbp), %eax	# b, tmp92
	movl	%eax, -12(%rbp)	# tmp92, i
	jmp	.L227	#
.L229:
	.loc 1 962 0 is_stmt 0 discriminator 1
	addl	$1, -12(%rbp)	#, i
.L227:
	movl	-12(%rbp), %eax	# i, tmp93
	cmpl	-4(%rbp), %eax	# e, tmp93
	jge	.L228	#,
	.loc 1 962 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7741
	movq	-24(%rbp), %rax	# bg, tmp95
	addq	%rdx, %rax	# D.7741, D.7742
	movzwl	(%rax), %eax	# _28->wid, D.7743
	cmpw	-32(%rbp), %ax	# w, D.7743
	jne	.L229	#,
.L228:
	.loc 1 963 0 is_stmt 1
	movl	-12(%rbp), %eax	# i, tmp96
	cmpl	-4(%rbp), %eax	# e, tmp96
	jge	.L230	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, iftmp.63
	jmp	.L231	#
.L230:
	.loc 1 963 0 discriminator 2
	movl	$-1, %eax	#, iftmp.63
.L231:
.L225:
	.loc 1 964 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_bg, .-find_bg
	.section	.rodata
	.align 8
.LC63:
	.string	"Bad w1 argument (%d) to lm_bglist\n"
	.text
	.globl	lm_bglist
	.type	lm_bglist, @function
lm_bglist:
.LFB19:
	.loc 1 968 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	movl	%esi, %eax	# w1, tmp97
	movq	%rdx, -40(%rbp)	# bgptr, bgptr
	movq	%rcx, -48(%rbp)	# bowt, bowt
	movw	%ax, -28(%rbp)	# tmp97, w1
	.loc 1 971 0
	cmpw	$-1, -28(%rbp)	#, w1
	je	.L233	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movzwl	-28(%rbp), %edx	# w1, D.7744
	movq	-24(%rbp), %rax	# lm, tmp98
	movl	(%rax), %eax	# lm_4(D)->n_ug, D.7744
	cmpl	%eax, %edx	# D.7744, D.7744
	jl	.L234	#,
.L233:
	.loc 1 972 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$972, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-28(%rbp), %eax	# w1, D.7744
	movl	%eax, %esi	# D.7744,
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L234:
	.loc 1 974 0
	movq	-24(%rbp), %rax	# lm, tmp99
	movl	4(%rax), %eax	# lm_4(D)->n_bg, D.7744
	testl	%eax, %eax	# D.7744
	jle	.L235	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp100
	movq	40(%rax), %rax	# lm_4(D)->ug, D.7745
	movzwl	-28(%rbp), %edx	# w1, D.7746
	addq	$1, %rdx	#, D.7746
	salq	$4, %rdx	#, D.7746
	addq	%rdx, %rax	# D.7746, D.7745
	movl	12(%rax), %edx	# _12->firstbg, D.7744
	movq	-24(%rbp), %rax	# lm, tmp101
	movq	40(%rax), %rax	# lm_4(D)->ug, D.7745
	movzwl	-28(%rbp), %ecx	# w1, D.7747
	salq	$4, %rcx	#, D.7747
	addq	%rcx, %rax	# D.7747, D.7745
	movl	12(%rax), %eax	# _17->firstbg, D.7744
	subl	%eax, %edx	# D.7744, iftmp.64
	movl	%edx, %eax	# iftmp.64, iftmp.64
	jmp	.L236	#
.L235:
	.loc 1 974 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L236:
	.loc 1 974 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.64, n
	.loc 1 976 0 is_stmt 1 discriminator 3
	cmpl	$0, -4(%rbp)	#, n
	jle	.L237	#,
	.loc 1 977 0
	movq	-24(%rbp), %rax	# lm, tmp102
	movq	64(%rax), %rax	# lm_4(D)->membg, D.7748
	movzwl	-28(%rbp), %edx	# w1, D.7747
	salq	$4, %rdx	#, D.7747
	addq	%rdx, %rax	# D.7747, D.7748
	movq	(%rax), %rax	# _25->bg, D.7749
	testq	%rax, %rax	# D.7749
	jne	.L238	#,
	.loc 1 978 0
	movzwl	-28(%rbp), %edx	# w1, D.7744
	movq	-24(%rbp), %rax	# lm, tmp103
	movl	%edx, %esi	# D.7744,
	movq	%rax, %rdi	# tmp103,
	call	load_bg	#
.L238:
	.loc 1 979 0
	movq	-24(%rbp), %rax	# lm, tmp104
	movq	64(%rax), %rax	# lm_4(D)->membg, D.7748
	movzwl	-28(%rbp), %edx	# w1, D.7747
	salq	$4, %rdx	#, D.7747
	addq	%rdx, %rax	# D.7747, D.7748
	movl	$1, 8(%rax)	#, _31->used
	.loc 1 981 0
	movq	-24(%rbp), %rax	# lm, tmp105
	movq	64(%rax), %rax	# lm_4(D)->membg, D.7748
	movzwl	-28(%rbp), %edx	# w1, D.7747
	salq	$4, %rdx	#, D.7747
	addq	%rdx, %rax	# D.7747, D.7748
	movq	(%rax), %rdx	# _35->bg, D.7749
	movq	-40(%rbp), %rax	# bgptr, tmp106
	movq	%rdx, (%rax)	# D.7749, *bgptr_37(D)
	.loc 1 982 0
	movq	-24(%rbp), %rax	# lm, tmp107
	movq	40(%rax), %rax	# lm_4(D)->ug, D.7745
	movzwl	-28(%rbp), %edx	# w1, D.7747
	salq	$4, %rdx	#, D.7747
	addq	%rdx, %rax	# D.7747, D.7745
	movl	8(%rax), %edx	# _41->bowt.l, D.7744
	movq	-48(%rbp), %rax	# bowt, tmp108
	movl	%edx, (%rax)	# D.7744, *bowt_43(D)
	jmp	.L239	#
.L237:
	.loc 1 984 0
	movq	-40(%rbp), %rax	# bgptr, tmp109
	movq	$0, (%rax)	#, *bgptr_37(D)
	.loc 1 985 0
	movq	-48(%rbp), %rax	# bowt, tmp110
	movl	$0, (%rax)	#, *bowt_43(D)
.L239:
	.loc 1 988 0
	movl	-4(%rbp), %eax	# n, D.7750
	.loc 1 989 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	lm_bglist, .-lm_bglist
	.section	.rodata
	.align 8
.LC64:
	.string	"Bad lw2 argument (%d) to lm_bg_score\n"
	.text
	.globl	lm_bg_score
	.type	lm_bg_score, @function
lm_bg_score:
.LFB20:
	.loc 1 1028 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# lm, lm
	movl	%edx, %eax	# lw2, tmp121
	movl	%ecx, -52(%rbp)	# w2, w2
	movw	%si, -44(%rbp)	# tmp120, lw1
	movw	%ax, -48(%rbp)	# tmp121, lw2
	.loc 1 1030 0
	movq	$0, -8(%rbp)	#, bg
	.loc 1 1032 0
	movq	-40(%rbp), %rax	# lm, tmp122
	movl	4(%rax), %eax	# lm_7(D)->n_bg, D.7753
	testl	%eax, %eax	# D.7753
	je	.L242	#,
	.loc 1 1032 0 is_stmt 0 discriminator 1
	cmpw	$-1, -44(%rbp)	#, lw1
	jne	.L243	#,
.L242:
	.loc 1 1033 0 is_stmt 1
	movzwl	-48(%rbp), %ecx	# lw2, D.7753
	movl	-52(%rbp), %edx	# w2, tmp123
	movq	-40(%rbp), %rax	# lm, tmp124
	movl	%ecx, %esi	# D.7753,
	movq	%rax, %rdi	# tmp124,
	call	lm_ug_score	#
	jmp	.L244	#
.L243:
	.loc 1 1035 0
	movq	-40(%rbp), %rax	# lm, tmp125
	movl	176(%rax), %eax	# lm_7(D)->n_bg_score, D.7753
	leal	1(%rax), %edx	#, D.7753
	movq	-40(%rbp), %rax	# lm, tmp126
	movl	%edx, 176(%rax)	# D.7753, lm_7(D)->n_bg_score
	.loc 1 1037 0
	cmpw	$-1, -48(%rbp)	#, lw2
	je	.L245	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movzwl	-48(%rbp), %edx	# lw2, D.7753
	movq	-40(%rbp), %rax	# lm, tmp127
	movl	(%rax), %eax	# lm_7(D)->n_ug, D.7753
	cmpl	%eax, %edx	# D.7753, D.7753
	jl	.L246	#,
.L245:
	.loc 1 1038 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1038, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-48(%rbp), %eax	# lw2, D.7753
	movl	%eax, %esi	# D.7753,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L246:
	.loc 1 1040 0
	movq	-40(%rbp), %rax	# lm, tmp128
	movq	40(%rax), %rax	# lm_7(D)->ug, D.7754
	movzwl	-44(%rbp), %edx	# lw1, D.7755
	addq	$1, %rdx	#, D.7755
	salq	$4, %rdx	#, D.7755
	addq	%rdx, %rax	# D.7755, D.7754
	movl	12(%rax), %edx	# _20->firstbg, D.7753
	movq	-40(%rbp), %rax	# lm, tmp129
	movq	40(%rax), %rax	# lm_7(D)->ug, D.7754
	movzwl	-44(%rbp), %ecx	# lw1, D.7756
	salq	$4, %rcx	#, D.7756
	addq	%rcx, %rax	# D.7756, D.7754
	movl	12(%rax), %eax	# _25->firstbg, D.7753
	subl	%eax, %edx	# D.7753, tmp130
	movl	%edx, %eax	# tmp130, tmp130
	movl	%eax, -12(%rbp)	# tmp130, n
	.loc 1 1042 0
	cmpl	$0, -12(%rbp)	#, n
	jle	.L247	#,
	.loc 1 1043 0
	movq	-40(%rbp), %rax	# lm, tmp131
	movq	64(%rax), %rax	# lm_7(D)->membg, D.7757
	movzwl	-44(%rbp), %edx	# lw1, D.7756
	salq	$4, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7757
	movq	(%rax), %rax	# _31->bg, D.7758
	testq	%rax, %rax	# D.7758
	jne	.L248	#,
	.loc 1 1044 0
	movzwl	-44(%rbp), %edx	# lw1, D.7753
	movq	-40(%rbp), %rax	# lm, tmp132
	movl	%edx, %esi	# D.7753,
	movq	%rax, %rdi	# tmp132,
	call	load_bg	#
.L248:
	.loc 1 1045 0
	movq	-40(%rbp), %rax	# lm, tmp133
	movq	64(%rax), %rax	# lm_7(D)->membg, D.7757
	movzwl	-44(%rbp), %edx	# lw1, D.7756
	salq	$4, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7757
	movl	$1, 8(%rax)	#, _37->used
	.loc 1 1046 0
	movq	-40(%rbp), %rax	# lm, tmp134
	movq	64(%rax), %rax	# lm_7(D)->membg, D.7757
	movzwl	-44(%rbp), %edx	# lw1, D.7756
	salq	$4, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7757
	movq	(%rax), %rax	# _41->bg, tmp135
	movq	%rax, -8(%rbp)	# tmp135, bg
	.loc 1 1048 0
	movzwl	-48(%rbp), %edx	# lw2, D.7753
	movl	-12(%rbp), %ecx	# n, tmp136
	movq	-8(%rbp), %rax	# bg, tmp137
	movl	%ecx, %esi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	find_bg	#
	movl	%eax, -20(%rbp)	# tmp138, i
	jmp	.L249	#
.L247:
	.loc 1 1050 0
	movl	$-1, -20(%rbp)	#, i
.L249:
	.loc 1 1052 0
	cmpl	$0, -20(%rbp)	#, i
	js	.L250	#,
	.loc 1 1053 0
	movq	-40(%rbp), %rax	# lm, tmp139
	movq	80(%rax), %rax	# lm_7(D)->bgprob, D.7759
	movl	-20(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, D.7756
	leaq	0(,%rdx,8), %rcx	#, D.7756
	movq	-8(%rbp), %rdx	# bg, tmp141
	addq	%rcx, %rdx	# D.7756, D.7758
	movzwl	2(%rdx), %edx	# _49->probid, D.7760
	movzwl	%dx, %edx	# D.7760, D.7756
	salq	$2, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7759
	movl	(%rax), %eax	# _53->l, tmp142
	movl	%eax, -16(%rbp)	# tmp142, score
	.loc 1 1054 0
	movq	-40(%rbp), %rax	# lm, tmp143
	movq	240(%rax), %rax	# lm_7(D)->inclass_ugscore, D.7761
	testq	%rax, %rax	# D.7761
	je	.L251	#,
	.loc 1 1059 0
	movq	-40(%rbp), %rax	# lm, tmp144
	movq	240(%rax), %rax	# lm_7(D)->inclass_ugscore, D.7761
	movl	-52(%rbp), %edx	# w2, tmp145
	movslq	%edx, %rdx	# tmp145, D.7756
	salq	$2, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7761
	movl	(%rax), %eax	# *_60, D.7753
	addl	%eax, -16(%rbp)	# D.7753, score
.L251:
	.loc 1 1062 0
	movq	-40(%rbp), %rax	# lm, tmp146
	movl	$2, 204(%rax)	#, lm_7(D)->access_type
	jmp	.L252	#
.L250:
	.loc 1 1064 0
	movq	-40(%rbp), %rax	# lm, tmp147
	movl	180(%rax), %eax	# lm_7(D)->n_bg_bo, D.7753
	leal	1(%rax), %edx	#, D.7753
	movq	-40(%rbp), %rax	# lm, tmp148
	movl	%edx, 180(%rax)	# D.7753, lm_7(D)->n_bg_bo
	.loc 1 1065 0
	movq	-40(%rbp), %rax	# lm, tmp149
	movl	$1, 204(%rax)	#, lm_7(D)->access_type
	.loc 1 1066 0
	movq	-40(%rbp), %rax	# lm, tmp150
	movq	40(%rax), %rax	# lm_7(D)->ug, D.7754
	movzwl	-44(%rbp), %edx	# lw1, D.7756
	salq	$4, %rdx	#, D.7756
	addq	%rdx, %rax	# D.7756, D.7754
	movl	8(%rax), %edx	# _68->bowt.l, D.7753
	movq	-40(%rbp), %rax	# lm, tmp151
	movq	40(%rax), %rax	# lm_7(D)->ug, D.7754
	movzwl	-48(%rbp), %ecx	# lw2, D.7756
	salq	$4, %rcx	#, D.7756
	addq	%rcx, %rax	# D.7756, D.7754
	movl	4(%rax), %eax	# _73->prob.l, D.7753
	addl	%edx, %eax	# D.7753, tmp152
	movl	%eax, -16(%rbp)	# tmp152, score
.L252:
	.loc 1 1073 0
	movl	-16(%rbp), %eax	# score, D.7752
.L244:
	.loc 1 1074 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	lm_bg_score, .-lm_bg_score
	.section	.rodata
.LC65:
	.string	"fread(tg, %d at %d) failed\n"
	.text
	.type	load_tg, @function
load_tg:
.LFB21:
	.loc 1 1078 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# lm, lm
	movl	%esi, %ecx	# lw1, tmp187
	movl	%edx, %eax	# lw2, tmp188
	movw	%cx, -60(%rbp)	# tmp187, lw1
	movw	%ax, -64(%rbp)	# tmp188, lw2
	.loc 1 1080 0
	movl	$-1, -32(%rbp)	#, t
	.loc 1 1087 0
	movl	$1087, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$32, %edi	#,
	call	__ckd_malloc__	#
	movq	%rax, -16(%rbp)	# tmp189, tginfo
	.loc 1 1088 0
	movq	-16(%rbp), %rax	# tginfo, tmp190
	movzwl	-60(%rbp), %edx	# lw1, tmp191
	movw	%dx, (%rax)	# tmp191, tginfo_6->w1
	.loc 1 1089 0
	movq	-16(%rbp), %rax	# tginfo, tmp192
	movq	$0, 8(%rax)	#, tginfo_6->tg
	.loc 1 1090 0
	movq	-56(%rbp), %rax	# lm, tmp193
	movq	72(%rax), %rax	# lm_8(D)->tginfo, D.7763
	movzwl	-64(%rbp), %edx	# lw2, D.7764
	salq	$3, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7763
	movq	(%rax), %rdx	# *_13, D.7765
	movq	-16(%rbp), %rax	# tginfo, tmp194
	movq	%rdx, 24(%rax)	# D.7765, tginfo_6->next
	.loc 1 1091 0
	movq	-56(%rbp), %rax	# lm, tmp195
	movq	72(%rax), %rax	# lm_8(D)->tginfo, D.7763
	movzwl	-64(%rbp), %edx	# lw2, D.7764
	salq	$3, %rdx	#, D.7764
	addq	%rax, %rdx	# D.7763, D.7763
	movq	-16(%rbp), %rax	# tginfo, tmp196
	movq	%rax, (%rdx)	# tmp196, *_18
	.loc 1 1095 0
	movq	-56(%rbp), %rax	# lm, tmp197
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7766
	movzwl	-60(%rbp), %edx	# lw1, D.7764
	salq	$4, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7766
	movl	12(%rax), %eax	# _22->firstbg, tmp198
	movl	%eax, -28(%rbp)	# tmp198, b
	.loc 1 1096 0
	movq	-56(%rbp), %rax	# lm, tmp199
	movq	40(%rax), %rax	# lm_8(D)->ug, D.7766
	movzwl	-60(%rbp), %edx	# lw1, D.7767
	addq	$1, %rdx	#, D.7767
	salq	$4, %rdx	#, D.7767
	addq	%rdx, %rax	# D.7767, D.7766
	movl	12(%rax), %eax	# _28->firstbg, D.7768
	subl	-28(%rbp), %eax	# b, tmp201
	movl	%eax, -36(%rbp)	# tmp201, n
	.loc 1 1099 0
	cmpl	$0, -36(%rbp)	#, n
	jle	.L254	#,
	.loc 1 1100 0
	movq	-56(%rbp), %rax	# lm, tmp202
	movq	64(%rax), %rax	# lm_8(D)->membg, D.7769
	movzwl	-60(%rbp), %edx	# lw1, D.7764
	salq	$4, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7769
	movq	(%rax), %rax	# _35->bg, D.7770
	testq	%rax, %rax	# D.7770
	jne	.L255	#,
	.loc 1 1101 0
	movzwl	-60(%rbp), %edx	# lw1, D.7768
	movq	-56(%rbp), %rax	# lm, tmp203
	movl	%edx, %esi	# D.7768,
	movq	%rax, %rdi	# tmp203,
	call	load_bg	#
.L255:
	.loc 1 1102 0
	movq	-56(%rbp), %rax	# lm, tmp204
	movq	64(%rax), %rax	# lm_8(D)->membg, D.7769
	movzwl	-60(%rbp), %edx	# lw1, D.7764
	salq	$4, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7769
	movl	$1, 8(%rax)	#, _41->used
	.loc 1 1103 0
	movq	-56(%rbp), %rax	# lm, tmp205
	movq	64(%rax), %rax	# lm_8(D)->membg, D.7769
	movzwl	-60(%rbp), %edx	# lw1, D.7764
	salq	$4, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7769
	movq	(%rax), %rax	# _45->bg, tmp206
	movq	%rax, -24(%rbp)	# tmp206, bg
.L254:
	.loc 1 1107 0
	cmpl	$0, -36(%rbp)	#, n
	jle	.L256	#,
	.loc 1 1107 0 is_stmt 0 discriminator 1
	movzwl	-64(%rbp), %edx	# lw2, D.7768
	movl	-36(%rbp), %ecx	# n, tmp207
	movq	-24(%rbp), %rax	# bg, tmp208
	movl	%ecx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	find_bg	#
	movl	%eax, -40(%rbp)	# tmp209, i
	cmpl	$0, -40(%rbp)	#, i
	js	.L256	#,
	.loc 1 1108 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp210
	movq	96(%rax), %rax	# lm_8(D)->tgbowt, D.7771
	movl	-40(%rbp), %edx	# i, tmp211
	movslq	%edx, %rdx	# tmp211, D.7764
	leaq	0(,%rdx,8), %rcx	#, D.7764
	movq	-24(%rbp), %rdx	# bg, tmp212
	addq	%rcx, %rdx	# D.7764, D.7770
	movzwl	4(%rdx), %edx	# _52->bowtid, D.7772
	movzwl	%dx, %edx	# D.7772, D.7764
	salq	$2, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7771
	movl	(%rax), %edx	# _56->l, D.7768
	movq	-16(%rbp), %rax	# tginfo, tmp213
	movl	%edx, 16(%rax)	# D.7768, tginfo_6->bowt
	.loc 1 1111 0
	movl	-40(%rbp), %eax	# i, tmp214
	addl	%eax, -28(%rbp)	# tmp214, b
	.loc 1 1112 0
	movq	-56(%rbp), %rax	# lm, tmp215
	movq	104(%rax), %rdx	# lm_8(D)->tg_segbase, D.7773
	movq	-56(%rbp), %rax	# lm, tmp216
	movl	28(%rax), %eax	# lm_8(D)->log_bg_seg_sz, D.7768
	movl	-28(%rbp), %esi	# b, tmp217
	movl	%eax, %ecx	# D.7768, tmp272
	sarl	%cl, %esi	# tmp272, D.7768
	movl	%esi, %eax	# D.7768, D.7768
	cltq
	salq	$2, %rax	#, D.7764
	addq	%rdx, %rax	# D.7773, D.7773
	movl	(%rax), %eax	# *_64, tmp218
	movl	%eax, -32(%rbp)	# tmp218, t
	.loc 1 1113 0
	movl	-40(%rbp), %eax	# i, tmp219
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7764
	movq	-24(%rbp), %rax	# bg, tmp220
	addq	%rdx, %rax	# D.7764, D.7770
	movzwl	6(%rax), %eax	# _68->firsttg, D.7772
	movzwl	%ax, %eax	# D.7772, D.7768
	addl	%eax, -32(%rbp)	# D.7768, t
	.loc 1 1116 0
	movq	-56(%rbp), %rax	# lm, tmp221
	movq	104(%rax), %rdx	# lm_8(D)->tg_segbase, D.7773
	movl	-28(%rbp), %eax	# b, tmp222
	leal	1(%rax), %esi	#, D.7768
	movq	-56(%rbp), %rax	# lm, tmp223
	movl	28(%rax), %eax	# lm_8(D)->log_bg_seg_sz, D.7768
	movl	%eax, %ecx	# D.7768, tmp274
	sarl	%cl, %esi	# tmp274, D.7768
	movl	%esi, %eax	# D.7768, D.7768
	cltq
	salq	$2, %rax	#, D.7764
	addq	%rdx, %rax	# D.7773, D.7773
	movl	(%rax), %eax	# *_78, tmp224
	movl	%eax, -36(%rbp)	# tmp224, n
	.loc 1 1117 0
	movl	-40(%rbp), %eax	# i, tmp225
	cltq
	addq	$1, %rax	#, D.7767
	leaq	0(,%rax,8), %rdx	#, D.7767
	movq	-24(%rbp), %rax	# bg, tmp226
	addq	%rdx, %rax	# D.7767, D.7770
	movzwl	6(%rax), %eax	# _83->firsttg, D.7772
	movzwl	%ax, %eax	# D.7772, D.7768
	addl	%eax, -36(%rbp)	# D.7768, n
	.loc 1 1118 0
	movl	-32(%rbp), %eax	# t, tmp227
	subl	%eax, -36(%rbp)	# tmp227, n
	.loc 1 1119 0
	movq	-16(%rbp), %rax	# tginfo, tmp228
	movl	-36(%rbp), %edx	# n, tmp229
	movl	%edx, 4(%rax)	# tmp229, tginfo_6->n_tg
	jmp	.L257	#
.L256:
	.loc 1 1121 0
	movq	-16(%rbp), %rax	# tginfo, tmp230
	movl	$0, 16(%rax)	#, tginfo_6->bowt
	.loc 1 1122 0
	movq	-16(%rbp), %rax	# tginfo, tmp231
	movl	$0, 4(%rax)	#, tginfo_6->n_tg
	movq	-16(%rbp), %rax	# tginfo, tmp232
	movl	4(%rax), %eax	# tginfo_6->n_tg, tmp233
	movl	%eax, -36(%rbp)	# tmp233, n
.L257:
	.loc 1 1132 0
	movl	LM_IN_MEMORY(%rip), %eax	# LM_IN_MEMORY, LM_IN_MEMORY.65
	testl	%eax, %eax	# LM_IN_MEMORY.65
	je	.L258	#,
	.loc 1 1134 0
	cmpl	$0, -36(%rbp)	#, n
	jle	.L260	#,
	.loc 1 1136 0
	movq	-56(%rbp), %rax	# lm, tmp234
	movq	56(%rax), %rax	# lm_8(D)->tg, D.7774
	movl	-32(%rbp), %edx	# t, tmp235
	movslq	%edx, %rdx	# tmp235, D.7764
	salq	$2, %rdx	#, D.7764
	addq	%rax, %rdx	# D.7774, D.7774
	movq	-16(%rbp), %rax	# tginfo, tmp236
	movq	%rdx, 8(%rax)	# D.7774, tginfo_6->tg
	movq	-16(%rbp), %rax	# tginfo, tmp237
	movq	8(%rax), %rax	# tginfo_6->tg, tmp238
	movq	%rax, -8(%rbp)	# tmp238, tg
	jmp	.L260	#
.L258:
	.loc 1 1139 0
	cmpl	$0, -36(%rbp)	#, n
	jle	.L260	#,
	.loc 1 1140 0
	movl	-36(%rbp), %eax	# n, tmp239
	cltq
	movl	$1140, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7764,
	call	__ckd_calloc__	#
	movq	-16(%rbp), %rdx	# tginfo, tmp240
	movq	%rax, 8(%rdx)	# D.7775, tginfo_6->tg
	movq	-16(%rbp), %rax	# tginfo, tmp241
	movq	8(%rax), %rax	# tginfo_6->tg, tmp242
	movq	%rax, -8(%rbp)	# tmp242, tg
	.loc 1 1141 0
	movq	-56(%rbp), %rax	# lm, tmp243
	movl	144(%rax), %eax	# lm_8(D)->tgoff, D.7768
	cltq
	movl	-32(%rbp), %edx	# t, tmp244
	movslq	%edx, %rdx	# tmp244, D.7764
	salq	$2, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7764
	movq	%rax, %rcx	# D.7764, D.7776
	movq	-56(%rbp), %rax	# lm, tmp245
	movq	128(%rax), %rax	# lm_8(D)->fp, D.7777
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.7776,
	movq	%rax, %rdi	# D.7777,
	call	fseek	#
	testl	%eax, %eax	# D.7768
	jns	.L261	#,
	.loc 1 1142 0
	movl	$.LC26, %edx	#,
	movl	$1142, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L261:
	.loc 1 1144 0
	movq	-56(%rbp), %rax	# lm, tmp246
	movq	128(%rax), %rcx	# lm_8(D)->fp, D.7777
	movl	-36(%rbp), %eax	# n, tmp247
	movslq	%eax, %rdx	# tmp247, D.7764
	movq	-8(%rbp), %rax	# tg, tmp248
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp248,
	call	fread	#
	movl	-36(%rbp), %edx	# n, tmp249
	movslq	%edx, %rdx	# tmp249, D.7764
	cmpq	%rdx, %rax	# D.7764, D.7764
	je	.L262	#,
	.loc 1 1145 0
	movl	$.LC7, %edx	#,
	movl	$1145, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# lm, tmp250
	movl	144(%rax), %edx	# lm_8(D)->tgoff, D.7768
	movl	-36(%rbp), %eax	# n, tmp251
	movl	%eax, %esi	# tmp251,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L262:
	.loc 1 1146 0
	movq	-56(%rbp), %rax	# lm, tmp252
	movl	136(%rax), %eax	# lm_8(D)->byteswap, D.7768
	testl	%eax, %eax	# D.7768
	je	.L260	#,
	.loc 1 1147 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L263	#
.L264:
	.loc 1 1148 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp253
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp254
	addq	%rax, %rdx	# tmp254, D.7774
	movl	-40(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,4), %rcx	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp256
	addq	%rcx, %rax	# D.7764, D.7774
	movzwl	(%rax), %eax	# _118->wid, D.7772
	shrw	$8, %ax	#, D.7772
	movl	%eax, %ecx	# D.7772, D.7778
	movl	-40(%rbp), %eax	# i, tmp257
	cltq
	leaq	0(,%rax,4), %rsi	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp258
	addq	%rsi, %rax	# D.7764, D.7774
	movzwl	(%rax), %eax	# _124->wid, D.7772
	movzwl	%ax, %eax	# D.7772, D.7768
	sall	$8, %eax	#, D.7768
	orl	%ecx, %eax	# D.7778, D.7778
	movw	%ax, (%rdx)	# D.7772, _115->wid
	.loc 1 1149 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp259
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp260
	addq	%rax, %rdx	# tmp260, D.7774
	movl	-40(%rbp), %eax	# i, tmp261
	cltq
	leaq	0(,%rax,4), %rcx	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp262
	addq	%rcx, %rax	# D.7764, D.7774
	movzwl	2(%rax), %eax	# _136->probid, D.7772
	shrw	$8, %ax	#, D.7772
	movl	%eax, %ecx	# D.7772, D.7778
	movl	-40(%rbp), %eax	# i, tmp263
	cltq
	leaq	0(,%rax,4), %rsi	#, D.7764
	movq	-8(%rbp), %rax	# tg, tmp264
	addq	%rsi, %rax	# D.7764, D.7774
	movzwl	2(%rax), %eax	# _142->probid, D.7772
	movzwl	%ax, %eax	# D.7772, D.7768
	sall	$8, %eax	#, D.7768
	orl	%ecx, %eax	# D.7778, D.7778
	movw	%ax, 2(%rdx)	# D.7772, _133->probid
	.loc 1 1147 0 discriminator 2
	addl	$1, -40(%rbp)	#, i
.L263:
	.loc 1 1147 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp265
	cmpl	-36(%rbp), %eax	# n, tmp265
	jl	.L264	#,
.L260:
	.loc 1 1154 0 is_stmt 1
	movq	-56(%rbp), %rax	# lm, tmp266
	movl	184(%rax), %eax	# lm_8(D)->n_tg_fill, D.7768
	leal	1(%rax), %edx	#, D.7768
	movq	-56(%rbp), %rax	# lm, tmp267
	movl	%edx, 184(%rax)	# D.7768, lm_8(D)->n_tg_fill
	.loc 1 1155 0
	movq	-56(%rbp), %rax	# lm, tmp268
	movl	188(%rax), %edx	# lm_8(D)->n_tg_inmem, D.7768
	movl	-36(%rbp), %eax	# n, tmp269
	addl	%eax, %edx	# tmp269, D.7768
	movq	-56(%rbp), %rax	# lm, tmp270
	movl	%edx, 188(%rax)	# D.7768, lm_8(D)->n_tg_inmem
	.loc 1 1156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	load_tg, .-load_tg
	.type	find_tg, @function
find_tg:
.LFB22:
	.loc 1 1161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# tg, tg
	movl	%esi, -28(%rbp)	# n, n
	movl	%edx, %eax	# w, tmp76
	movw	%ax, -32(%rbp)	# tmp76, w
	.loc 1 1164 0
	movl	$0, -8(%rbp)	#, b
	.loc 1 1165 0
	movl	-28(%rbp), %eax	# n, tmp77
	movl	%eax, -4(%rbp)	# tmp77, e
	.loc 1 1166 0
	jmp	.L266	#
.L270:
	.loc 1 1167 0
	movl	-4(%rbp), %eax	# e, tmp78
	movl	-8(%rbp), %edx	# b, tmp79
	addl	%edx, %eax	# tmp79, D.7781
	sarl	%eax	# tmp80
	movl	%eax, -12(%rbp)	# tmp80, i
	.loc 1 1168 0
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7782
	movq	-24(%rbp), %rax	# tg, tmp82
	addq	%rdx, %rax	# D.7782, D.7783
	movzwl	(%rax), %eax	# _15->wid, D.7784
	cmpw	-32(%rbp), %ax	# w, D.7784
	jae	.L267	#,
	.loc 1 1169 0
	movl	-12(%rbp), %eax	# i, tmp86
	addl	$1, %eax	#, tmp85
	movl	%eax, -8(%rbp)	# tmp85, b
	jmp	.L266	#
.L267:
	.loc 1 1170 0
	movl	-12(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7782
	movq	-24(%rbp), %rax	# tg, tmp88
	addq	%rdx, %rax	# D.7782, D.7783
	movzwl	(%rax), %eax	# _21->wid, D.7784
	cmpw	-32(%rbp), %ax	# w, D.7784
	jbe	.L268	#,
	.loc 1 1171 0
	movl	-12(%rbp), %eax	# i, tmp89
	movl	%eax, -4(%rbp)	# tmp89, e
	jmp	.L266	#
.L268:
	.loc 1 1173 0
	movl	-12(%rbp), %eax	# i, D.7780
	jmp	.L269	#
.L266:
	.loc 1 1166 0 discriminator 1
	movl	-8(%rbp), %eax	# b, tmp90
	movl	-4(%rbp), %edx	# e, tmp91
	subl	%eax, %edx	# tmp90, D.7781
	movl	%edx, %eax	# D.7781, D.7781
	cmpl	$16, %eax	#, D.7781
	jg	.L270	#,
	.loc 1 1176 0
	movl	-8(%rbp), %eax	# b, tmp92
	movl	%eax, -12(%rbp)	# tmp92, i
	jmp	.L271	#
.L273:
	.loc 1 1176 0 is_stmt 0 discriminator 1
	addl	$1, -12(%rbp)	#, i
.L271:
	movl	-12(%rbp), %eax	# i, tmp93
	cmpl	-4(%rbp), %eax	# e, tmp93
	jge	.L272	#,
	.loc 1 1176 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7782
	movq	-24(%rbp), %rax	# tg, tmp95
	addq	%rdx, %rax	# D.7782, D.7783
	movzwl	(%rax), %eax	# _28->wid, D.7784
	cmpw	-32(%rbp), %ax	# w, D.7784
	jne	.L273	#,
.L272:
	.loc 1 1177 0 is_stmt 1
	movl	-12(%rbp), %eax	# i, tmp96
	cmpl	-4(%rbp), %eax	# e, tmp96
	jge	.L274	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, iftmp.66
	jmp	.L275	#
.L274:
	.loc 1 1177 0 discriminator 2
	movl	$-1, %eax	#, iftmp.66
.L275:
.L269:
	.loc 1 1178 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	find_tg, .-find_tg
	.section	.rodata
	.align 8
.LC66:
	.string	"Bad lw1 argument (%d) to lm_tglist\n"
	.align 8
.LC67:
	.string	"Bad lw2 argument (%d) to lm_tglist\n"
	.text
	.globl	lm_tglist
	.type	lm_tglist, @function
lm_tglist:
.LFB23:
	.loc 1 1182 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	movl	%edx, %eax	# lw2, tmp92
	movq	%rcx, -40(%rbp)	# tgptr, tgptr
	movq	%r8, -48(%rbp)	# bowt, bowt
	movw	%si, -28(%rbp)	# tmp91, lw1
	movw	%ax, -32(%rbp)	# tmp92, lw2
	.loc 1 1185 0
	movq	-24(%rbp), %rax	# lm, tmp93
	movl	8(%rax), %eax	# lm_5(D)->n_tg, D.7786
	testl	%eax, %eax	# D.7786
	jg	.L277	#,
	.loc 1 1186 0
	movq	-40(%rbp), %rax	# tgptr, tmp94
	movq	$0, (%rax)	#, *tgptr_7(D)
	.loc 1 1187 0
	movq	-48(%rbp), %rax	# bowt, tmp95
	movl	$0, (%rax)	#, *bowt_8(D)
	.loc 1 1188 0
	movl	$0, %eax	#, D.7785
	jmp	.L278	#
.L277:
	.loc 1 1191 0
	cmpw	$-1, -28(%rbp)	#, lw1
	je	.L279	#,
	.loc 1 1191 0 is_stmt 0 discriminator 1
	movzwl	-28(%rbp), %edx	# lw1, D.7786
	movq	-24(%rbp), %rax	# lm, tmp96
	movl	(%rax), %eax	# lm_5(D)->n_ug, D.7786
	cmpl	%eax, %edx	# D.7786, D.7786
	jl	.L280	#,
.L279:
	.loc 1 1192 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1192, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-28(%rbp), %eax	# lw1, D.7786
	movl	%eax, %esi	# D.7786,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L280:
	.loc 1 1193 0
	cmpw	$-1, -32(%rbp)	#, lw2
	je	.L281	#,
	.loc 1 1193 0 is_stmt 0 discriminator 1
	movzwl	-32(%rbp), %edx	# lw2, D.7786
	movq	-24(%rbp), %rax	# lm, tmp97
	movl	(%rax), %eax	# lm_5(D)->n_ug, D.7786
	cmpl	%eax, %edx	# D.7786, D.7786
	jl	.L282	#,
.L281:
	.loc 1 1194 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1194, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-32(%rbp), %eax	# lw2, D.7786
	movl	%eax, %esi	# D.7786,
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L282:
	.loc 1 1196 0
	movq	$0, -8(%rbp)	#, prev_tginfo
	.loc 1 1197 0
	movq	-24(%rbp), %rax	# lm, tmp98
	movq	72(%rax), %rax	# lm_5(D)->tginfo, D.7787
	movzwl	-32(%rbp), %edx	# lw2, D.7788
	salq	$3, %rdx	#, D.7788
	addq	%rdx, %rax	# D.7788, D.7787
	movq	(%rax), %rax	# *_22, tmp99
	movq	%rax, -16(%rbp)	# tmp99, tginfo
	jmp	.L283	#
.L286:
	.loc 1 1198 0
	movq	-16(%rbp), %rax	# tginfo, tmp100
	movzwl	(%rax), %eax	# tginfo_1->w1, D.7789
	cmpw	-28(%rbp), %ax	# lw1, D.7789
	jne	.L284	#,
	.loc 1 1199 0
	jmp	.L285	#
.L284:
	.loc 1 1200 0
	movq	-16(%rbp), %rax	# tginfo, tmp101
	movq	%rax, -8(%rbp)	# tmp101, prev_tginfo
	.loc 1 1197 0
	movq	-16(%rbp), %rax	# tginfo, tmp102
	movq	24(%rax), %rax	# tginfo_1->next, tmp103
	movq	%rax, -16(%rbp)	# tmp103, tginfo
.L283:
	.loc 1 1197 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tginfo
	jne	.L286	#,
.L285:
	.loc 1 1203 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, tginfo
	jne	.L287	#,
	.loc 1 1204 0
	movzwl	-32(%rbp), %edx	# lw2, D.7786
	movzwl	-28(%rbp), %ecx	# lw1, D.7786
	movq	-24(%rbp), %rax	# lm, tmp104
	movl	%ecx, %esi	# D.7786,
	movq	%rax, %rdi	# tmp104,
	call	load_tg	#
	.loc 1 1205 0
	movq	-24(%rbp), %rax	# lm, tmp105
	movq	72(%rax), %rax	# lm_5(D)->tginfo, D.7787
	movzwl	-32(%rbp), %edx	# lw2, D.7788
	salq	$3, %rdx	#, D.7788
	addq	%rdx, %rax	# D.7788, D.7787
	movq	(%rax), %rax	# *_32, tmp106
	movq	%rax, -16(%rbp)	# tmp106, tginfo
	jmp	.L288	#
.L287:
	.loc 1 1206 0
	cmpq	$0, -8(%rbp)	#, prev_tginfo
	je	.L288	#,
	.loc 1 1207 0
	movq	-16(%rbp), %rax	# tginfo, tmp107
	movq	24(%rax), %rdx	# tginfo_1->next, D.7790
	movq	-8(%rbp), %rax	# prev_tginfo, tmp108
	movq	%rdx, 24(%rax)	# D.7790, prev_tginfo_3->next
	.loc 1 1208 0
	movq	-24(%rbp), %rax	# lm, tmp109
	movq	72(%rax), %rax	# lm_5(D)->tginfo, D.7787
	movzwl	-32(%rbp), %edx	# lw2, D.7788
	salq	$3, %rdx	#, D.7788
	addq	%rdx, %rax	# D.7788, D.7787
	movq	(%rax), %rdx	# *_38, D.7791
	movq	-16(%rbp), %rax	# tginfo, tmp110
	movq	%rdx, 24(%rax)	# D.7791, tginfo_1->next
	.loc 1 1209 0
	movq	-24(%rbp), %rax	# lm, tmp111
	movq	72(%rax), %rax	# lm_5(D)->tginfo, D.7787
	movzwl	-32(%rbp), %edx	# lw2, D.7788
	salq	$3, %rdx	#, D.7788
	addq	%rax, %rdx	# D.7787, D.7787
	movq	-16(%rbp), %rax	# tginfo, tmp112
	movq	%rax, (%rdx)	# tmp112, *_43
.L288:
	.loc 1 1211 0
	movq	-16(%rbp), %rax	# tginfo, tmp113
	movl	$1, 20(%rax)	#, tginfo_2->used
	.loc 1 1213 0
	movq	-16(%rbp), %rax	# tginfo, tmp114
	movq	8(%rax), %rdx	# tginfo_2->tg, D.7792
	movq	-40(%rbp), %rax	# tgptr, tmp115
	movq	%rdx, (%rax)	# D.7792, *tgptr_7(D)
	.loc 1 1214 0
	movq	-16(%rbp), %rax	# tginfo, tmp116
	movl	16(%rax), %edx	# tginfo_2->bowt, D.7786
	movq	-48(%rbp), %rax	# bowt, tmp117
	movl	%edx, (%rax)	# D.7786, *bowt_8(D)
	.loc 1 1216 0
	movq	-16(%rbp), %rax	# tginfo, tmp118
	movl	4(%rax), %eax	# tginfo_2->n_tg, D.7785
.L278:
	.loc 1 1217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	lm_tglist, .-lm_tglist
	.section	.rodata
	.align 8
.LC68:
	.string	"Bad lw1 argument (%d) to lm_tg_score\n"
	.align 8
.LC69:
	.string	"Bad lw2 argument (%d) to lm_tg_score\n"
	.align 8
.LC70:
	.string	"Bad lw3 argument (%d) to lm_tg_score\n"
	.text
	.globl	lm_tg_score
	.type	lm_tg_score, @function
lm_tg_score:
.LFB24:
	.loc 1 1229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# lm, lm
	movl	%ecx, %eax	# lw3, tmp165
	movl	%r8d, -88(%rbp)	# w3, w3
	movw	%si, -76(%rbp)	# tmp163, lw1
	movw	%dx, -80(%rbp)	# tmp164, lw2
	movw	%ax, -84(%rbp)	# tmp165, lw3
	.loc 1 1235 0
	movq	-72(%rbp), %rax	# lm, tmp166
	movl	8(%rax), %eax	# lm_7(D)->n_tg, D.7796
	testl	%eax, %eax	# D.7796
	je	.L290	#,
	.loc 1 1235 0 is_stmt 0 discriminator 1
	cmpw	$-1, -76(%rbp)	#, lw1
	jne	.L291	#,
.L290:
	.loc 1 1236 0 is_stmt 1
	movzwl	-84(%rbp), %edx	# lw3, D.7796
	movzwl	-80(%rbp), %esi	# lw2, D.7796
	movl	-88(%rbp), %ecx	# w3, tmp167
	movq	-72(%rbp), %rax	# lm, tmp168
	movq	%rax, %rdi	# tmp168,
	call	lm_bg_score	#
	jmp	.L292	#
.L291:
	.loc 1 1238 0
	movq	-72(%rbp), %rax	# lm, tmp169
	movl	192(%rax), %eax	# lm_7(D)->n_tg_score, D.7796
	leal	1(%rax), %edx	#, D.7796
	movq	-72(%rbp), %rax	# lm, tmp170
	movl	%edx, 192(%rax)	# D.7796, lm_7(D)->n_tg_score
	.loc 1 1240 0
	cmpw	$-1, -76(%rbp)	#, lw1
	je	.L293	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movzwl	-76(%rbp), %edx	# lw1, D.7796
	movq	-72(%rbp), %rax	# lm, tmp171
	movl	(%rax), %eax	# lm_7(D)->n_ug, D.7796
	cmpl	%eax, %edx	# D.7796, D.7796
	jl	.L294	#,
.L293:
	.loc 1 1241 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1241, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-76(%rbp), %eax	# lw1, D.7796
	movl	%eax, %esi	# D.7796,
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L294:
	.loc 1 1242 0
	cmpw	$-1, -80(%rbp)	#, lw2
	je	.L295	#,
	.loc 1 1242 0 is_stmt 0 discriminator 1
	movzwl	-80(%rbp), %edx	# lw2, D.7796
	movq	-72(%rbp), %rax	# lm, tmp172
	movl	(%rax), %eax	# lm_7(D)->n_ug, D.7796
	cmpl	%eax, %edx	# D.7796, D.7796
	jl	.L296	#,
.L295:
	.loc 1 1243 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1243, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-80(%rbp), %eax	# lw2, D.7796
	movl	%eax, %esi	# D.7796,
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L296:
	.loc 1 1244 0
	cmpw	$-1, -84(%rbp)	#, lw3
	je	.L297	#,
	.loc 1 1244 0 is_stmt 0 discriminator 1
	movzwl	-84(%rbp), %edx	# lw3, D.7796
	movq	-72(%rbp), %rax	# lm, tmp173
	movl	(%rax), %eax	# lm_7(D)->n_ug, D.7796
	cmpl	%eax, %edx	# D.7796, D.7796
	jl	.L298	#,
.L297:
	.loc 1 1245 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$1245, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movzwl	-84(%rbp), %eax	# lw3, D.7796
	movl	%eax, %esi	# D.7796,
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L298:
	.loc 1 1248 0
	movzwl	-76(%rbp), %eax	# lw1, D.7796
	andl	$1023, %eax	#, D.7796
	sall	$21, %eax	#, D.7796
	movl	%eax, %edx	# D.7796, D.7796
	movzwl	-80(%rbp), %eax	# lw2, D.7796
	andl	$1023, %eax	#, D.7796
	sall	$11, %eax	#, D.7796
	addl	%eax, %edx	# D.7796, D.7796
	movzwl	-84(%rbp), %eax	# lw3, D.7796
	andl	$2047, %eax	#, D.7796
	addl	%edx, %eax	# D.7796, tmp174
	movl	%eax, -52(%rbp)	# tmp174, h
	.loc 1 1249 0
	movl	-52(%rbp), %ecx	# h, tmp176
	movl	$175916583, %edx	#, tmp178
	movl	%ecx, %eax	# tmp176, tmp259
	imull	%edx	# tmp178
	sarl	$12, %edx	#, tmp179
	movl	%ecx, %eax	# tmp176, tmp180
	sarl	$31, %eax	#, tmp180
	subl	%eax, %edx	# tmp180, tmp175
	movl	%edx, %eax	# tmp175, tmp175
	imull	$100003, %eax, %eax	#, tmp175, tmp181
	subl	%eax, %ecx	# tmp181, tmp182
	movl	%ecx, %eax	# tmp182, tmp182
	movl	%eax, -52(%rbp)	# tmp182, h
	.loc 1 1251 0
	movq	-72(%rbp), %rax	# lm, tmp183
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp184
	movslq	%eax, %rdx	# tmp184, D.7798
	movq	%rdx, %rax	# D.7798, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# D.7798, tmp185
	salq	$2, %rax	#, tmp186
	addq	%rcx, %rax	# D.7797, D.7797
	movzwl	(%rax), %eax	# _37->lwid, D.7799
	cmpw	-76(%rbp), %ax	# lw1, D.7799
	jne	.L299	#,
	.loc 1 1252 0 discriminator 1
	movq	-72(%rbp), %rax	# lm, tmp187
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp188
	movslq	%eax, %rdx	# tmp188, D.7798
	movq	%rdx, %rax	# D.7798, tmp189
	addq	%rax, %rax	# tmp189
	addq	%rdx, %rax	# D.7798, tmp189
	salq	$2, %rax	#, tmp190
	addq	%rcx, %rax	# D.7797, D.7797
	movzwl	2(%rax), %eax	# _42->lwid, D.7799
	.loc 1 1251 0 discriminator 1
	cmpw	-80(%rbp), %ax	# lw2, D.7799
	jne	.L299	#,
	.loc 1 1253 0
	movq	-72(%rbp), %rax	# lm, tmp191
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp192
	movslq	%eax, %rdx	# tmp192, D.7798
	movq	%rdx, %rax	# D.7798, tmp193
	addq	%rax, %rax	# tmp193
	addq	%rdx, %rax	# D.7798, tmp193
	salq	$2, %rax	#, tmp194
	addq	%rcx, %rax	# D.7797, D.7797
	movzwl	4(%rax), %eax	# _47->lwid, D.7799
	.loc 1 1252 0
	cmpw	-84(%rbp), %ax	# lw3, D.7799
	jne	.L299	#,
	.loc 1 1255 0
	movq	-72(%rbp), %rax	# lm, tmp195
	movl	200(%rax), %eax	# lm_7(D)->n_tgcache_hit, D.7796
	leal	1(%rax), %edx	#, D.7796
	movq	-72(%rbp), %rax	# lm, tmp196
	movl	%edx, 200(%rax)	# D.7796, lm_7(D)->n_tgcache_hit
	.loc 1 1256 0
	movq	-72(%rbp), %rax	# lm, tmp197
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp198
	movslq	%eax, %rdx	# tmp198, D.7798
	movq	%rdx, %rax	# D.7798, tmp199
	addq	%rax, %rax	# tmp199
	addq	%rdx, %rax	# D.7798, tmp199
	salq	$2, %rax	#, tmp200
	addq	%rcx, %rax	# D.7797, D.7797
	movl	8(%rax), %eax	# _54->lscr, D.7795
	jmp	.L292	#
.L299:
	.loc 1 1258 0
	movq	$0, -32(%rbp)	#, prev_tginfo
	.loc 1 1259 0
	movq	-72(%rbp), %rax	# lm, tmp201
	movq	72(%rax), %rax	# lm_7(D)->tginfo, D.7800
	movzwl	-80(%rbp), %edx	# lw2, D.7798
	salq	$3, %rdx	#, D.7798
	addq	%rdx, %rax	# D.7798, D.7800
	movq	(%rax), %rax	# *_60, tmp202
	movq	%rax, -40(%rbp)	# tmp202, tginfo
	jmp	.L300	#
.L303:
	.loc 1 1260 0
	movq	-40(%rbp), %rax	# tginfo, tmp203
	movzwl	(%rax), %eax	# tginfo_3->w1, D.7799
	cmpw	-76(%rbp), %ax	# lw1, D.7799
	jne	.L301	#,
	.loc 1 1261 0
	jmp	.L302	#
.L301:
	.loc 1 1262 0
	movq	-40(%rbp), %rax	# tginfo, tmp204
	movq	%rax, -32(%rbp)	# tmp204, prev_tginfo
	.loc 1 1259 0
	movq	-40(%rbp), %rax	# tginfo, tmp205
	movq	24(%rax), %rax	# tginfo_3->next, tmp206
	movq	%rax, -40(%rbp)	# tmp206, tginfo
.L300:
	.loc 1 1259 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, tginfo
	jne	.L303	#,
.L302:
	.loc 1 1265 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, tginfo
	jne	.L304	#,
	.loc 1 1266 0
	movzwl	-80(%rbp), %edx	# lw2, D.7796
	movzwl	-76(%rbp), %ecx	# lw1, D.7796
	movq	-72(%rbp), %rax	# lm, tmp207
	movl	%ecx, %esi	# D.7796,
	movq	%rax, %rdi	# tmp207,
	call	load_tg	#
	.loc 1 1267 0
	movq	-72(%rbp), %rax	# lm, tmp208
	movq	72(%rax), %rax	# lm_7(D)->tginfo, D.7800
	movzwl	-80(%rbp), %edx	# lw2, D.7798
	salq	$3, %rdx	#, D.7798
	addq	%rdx, %rax	# D.7798, D.7800
	movq	(%rax), %rax	# *_70, tmp209
	movq	%rax, -40(%rbp)	# tmp209, tginfo
	jmp	.L305	#
.L304:
	.loc 1 1268 0
	cmpq	$0, -32(%rbp)	#, prev_tginfo
	je	.L305	#,
	.loc 1 1269 0
	movq	-40(%rbp), %rax	# tginfo, tmp210
	movq	24(%rax), %rdx	# tginfo_3->next, D.7801
	movq	-32(%rbp), %rax	# prev_tginfo, tmp211
	movq	%rdx, 24(%rax)	# D.7801, prev_tginfo_5->next
	.loc 1 1270 0
	movq	-72(%rbp), %rax	# lm, tmp212
	movq	72(%rax), %rax	# lm_7(D)->tginfo, D.7800
	movzwl	-80(%rbp), %edx	# lw2, D.7798
	salq	$3, %rdx	#, D.7798
	addq	%rdx, %rax	# D.7798, D.7800
	movq	(%rax), %rdx	# *_76, D.7802
	movq	-40(%rbp), %rax	# tginfo, tmp213
	movq	%rdx, 24(%rax)	# D.7802, tginfo_3->next
	.loc 1 1271 0
	movq	-72(%rbp), %rax	# lm, tmp214
	movq	72(%rax), %rax	# lm_7(D)->tginfo, D.7800
	movzwl	-80(%rbp), %edx	# lw2, D.7798
	salq	$3, %rdx	#, D.7798
	addq	%rax, %rdx	# D.7800, D.7800
	movq	-40(%rbp), %rax	# tginfo, tmp215
	movq	%rax, (%rdx)	# tmp215, *_81
.L305:
	.loc 1 1274 0
	movq	-40(%rbp), %rax	# tginfo, tmp216
	movl	$1, 20(%rax)	#, tginfo_4->used
	.loc 1 1277 0
	movq	-40(%rbp), %rax	# tginfo, tmp217
	movl	4(%rax), %eax	# tginfo_4->n_tg, tmp218
	movl	%eax, -48(%rbp)	# tmp218, n
	.loc 1 1278 0
	movq	-40(%rbp), %rax	# tginfo, tmp219
	movq	8(%rax), %rax	# tginfo_4->tg, tmp220
	movq	%rax, -24(%rbp)	# tmp220, tg
	.loc 1 1280 0
	movzwl	-84(%rbp), %edx	# lw3, D.7796
	movl	-48(%rbp), %ecx	# n, tmp221
	movq	-24(%rbp), %rax	# tg, tmp222
	movl	%ecx, %esi	# tmp221,
	movq	%rax, %rdi	# tmp222,
	call	find_tg	#
	movl	%eax, -44(%rbp)	# tmp223, i
	cmpl	$0, -44(%rbp)	#, i
	js	.L306	#,
	.loc 1 1281 0
	movq	-72(%rbp), %rax	# lm, tmp224
	movq	88(%rax), %rax	# lm_7(D)->tgprob, D.7803
	movl	-44(%rbp), %edx	# i, tmp225
	movslq	%edx, %rdx	# tmp225, D.7798
	leaq	0(,%rdx,4), %rcx	#, D.7798
	movq	-24(%rbp), %rdx	# tg, tmp226
	addq	%rcx, %rdx	# D.7798, D.7804
	movzwl	2(%rdx), %edx	# _89->probid, D.7799
	movzwl	%dx, %edx	# D.7799, D.7798
	salq	$2, %rdx	#, D.7798
	addq	%rdx, %rax	# D.7798, D.7803
	movl	(%rax), %eax	# _93->l, tmp227
	movl	%eax, -56(%rbp)	# tmp227, score
	.loc 1 1282 0
	movq	-72(%rbp), %rax	# lm, tmp228
	movq	240(%rax), %rax	# lm_7(D)->inclass_ugscore, D.7805
	testq	%rax, %rax	# D.7805
	je	.L307	#,
	.loc 1 1286 0
	movq	-72(%rbp), %rax	# lm, tmp229
	movq	240(%rax), %rax	# lm_7(D)->inclass_ugscore, D.7805
	movl	-88(%rbp), %edx	# w3, tmp230
	movslq	%edx, %rdx	# tmp230, D.7798
	salq	$2, %rdx	#, D.7798
	addq	%rdx, %rax	# D.7798, D.7805
	movl	(%rax), %eax	# *_100, D.7796
	addl	%eax, -56(%rbp)	# D.7796, score
.L307:
	.loc 1 1288 0
	movq	-72(%rbp), %rax	# lm, tmp231
	movl	$3, 204(%rax)	#, lm_7(D)->access_type
	jmp	.L308	#
.L306:
	.loc 1 1290 0
	movq	-72(%rbp), %rax	# lm, tmp232
	movl	196(%rax), %eax	# lm_7(D)->n_tg_bo, D.7796
	leal	1(%rax), %edx	#, D.7796
	movq	-72(%rbp), %rax	# lm, tmp233
	movl	%edx, 196(%rax)	# D.7796, lm_7(D)->n_tg_bo
	.loc 1 1291 0
	movq	-40(%rbp), %rax	# tginfo, tmp234
	movl	16(%rax), %ebx	# tginfo_4->bowt, D.7796
	movzwl	-84(%rbp), %edx	# lw3, D.7796
	movzwl	-80(%rbp), %esi	# lw2, D.7796
	movl	-88(%rbp), %ecx	# w3, tmp235
	movq	-72(%rbp), %rax	# lm, tmp236
	movq	%rax, %rdi	# tmp236,
	call	lm_bg_score	#
	addl	%ebx, %eax	# D.7796, tmp237
	movl	%eax, -56(%rbp)	# tmp237, score
.L308:
	.loc 1 1297 0
	movq	-72(%rbp), %rax	# lm, tmp238
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp239
	movslq	%eax, %rdx	# tmp239, D.7798
	movq	%rdx, %rax	# D.7798, tmp240
	addq	%rax, %rax	# tmp240
	addq	%rdx, %rax	# D.7798, tmp240
	salq	$2, %rax	#, tmp241
	leaq	(%rcx,%rax), %rdx	#, D.7797
	movzwl	-76(%rbp), %eax	# lw1, tmp242
	movw	%ax, (%rdx)	# tmp242, _113->lwid
	.loc 1 1298 0
	movq	-72(%rbp), %rax	# lm, tmp243
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp244
	movslq	%eax, %rdx	# tmp244, D.7798
	movq	%rdx, %rax	# D.7798, tmp245
	addq	%rax, %rax	# tmp245
	addq	%rdx, %rax	# D.7798, tmp245
	salq	$2, %rax	#, tmp246
	leaq	(%rcx,%rax), %rdx	#, D.7797
	movzwl	-80(%rbp), %eax	# lw2, tmp247
	movw	%ax, 2(%rdx)	# tmp247, _117->lwid
	.loc 1 1299 0
	movq	-72(%rbp), %rax	# lm, tmp248
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp249
	movslq	%eax, %rdx	# tmp249, D.7798
	movq	%rdx, %rax	# D.7798, tmp250
	addq	%rax, %rax	# tmp250
	addq	%rdx, %rax	# D.7798, tmp250
	salq	$2, %rax	#, tmp251
	leaq	(%rcx,%rax), %rdx	#, D.7797
	movzwl	-84(%rbp), %eax	# lw3, tmp252
	movw	%ax, 4(%rdx)	# tmp252, _121->lwid
	.loc 1 1300 0
	movq	-72(%rbp), %rax	# lm, tmp253
	movq	160(%rax), %rcx	# lm_7(D)->tgcache, D.7797
	movl	-52(%rbp), %eax	# h, tmp254
	movslq	%eax, %rdx	# tmp254, D.7798
	movq	%rdx, %rax	# D.7798, tmp255
	addq	%rax, %rax	# tmp255
	addq	%rdx, %rax	# D.7798, tmp255
	salq	$2, %rax	#, tmp256
	leaq	(%rcx,%rax), %rdx	#, D.7797
	movl	-56(%rbp), %eax	# score, tmp257
	movl	%eax, 8(%rdx)	# tmp257, _125->lscr
	.loc 1 1302 0
	movl	-56(%rbp), %eax	# score, D.7795
.L292:
	.loc 1 1303 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	lm_tg_score, .-lm_tg_score
	.globl	lm_wid
	.type	lm_wid, @function
lm_wid:
.LFB25:
	.loc 1 1307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	movq	%rsi, -32(%rbp)	# word, word
	.loc 1 1310 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L310	#
.L313:
	.loc 1 1311 0
	movq	-24(%rbp), %rax	# lm, tmp68
	movq	16(%rax), %rax	# lm_4(D)->wordstr, D.7811
	movl	-4(%rbp), %edx	# i, tmp69
	movslq	%edx, %rdx	# tmp69, D.7812
	salq	$3, %rdx	#, D.7812
	addq	%rdx, %rax	# D.7812, D.7811
	movq	(%rax), %rax	# *_9, D.7813
	movq	-32(%rbp), %rdx	# word, tmp70
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# D.7813,
	call	strcmp	#
	testl	%eax, %eax	# D.7810
	jne	.L311	#,
	.loc 1 1312 0
	movl	-4(%rbp), %eax	# i, tmp71
	jmp	.L312	#
.L311:
	.loc 1 1310 0
	addl	$1, -4(%rbp)	#, i
.L310:
	.loc 1 1310 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp72
	movl	(%rax), %eax	# lm_4(D)->n_ug, D.7810
	cmpl	-4(%rbp), %eax	# i, D.7810
	jg	.L313	#,
	.loc 1 1314 0 is_stmt 1
	movl	$-1, %eax	#, D.7809
.L312:
	.loc 1 1315 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	lm_wid, .-lm_wid
	.globl	lm_free
	.type	lm_free, @function
lm_free:
.LFB26:
	.loc 1 1318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# lm, lm
	.loc 1 1321 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L315	#
.L316:
	.loc 1 1322 0 discriminator 2
	movq	-24(%rbp), %rax	# lm, tmp74
	movq	16(%rax), %rax	# lm_3(D)->wordstr, D.7815
	movl	-4(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.7816
	salq	$3, %rdx	#, D.7816
	addq	%rdx, %rax	# D.7816, D.7815
	movq	(%rax), %rax	# *_8, D.7817
	movq	%rax, %rdi	# D.7817,
	call	ckd_free	#
	.loc 1 1321 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L315:
	.loc 1 1321 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# lm, tmp76
	movl	(%rax), %eax	# lm_3(D)->n_ug, D.7814
	cmpl	-4(%rbp), %eax	# i, D.7814
	jg	.L316	#,
	.loc 1 1323 0 is_stmt 1
	movq	-24(%rbp), %rax	# lm, tmp77
	movq	64(%rax), %rax	# lm_3(D)->membg, D.7818
	movq	%rax, %rdi	# D.7818,
	call	ckd_free	#
	.loc 1 1324 0
	movq	-24(%rbp), %rax	# lm, tmp78
	movq	16(%rax), %rax	# lm_3(D)->wordstr, D.7815
	movq	%rax, %rdi	# D.7815,
	call	ckd_free	#
	.loc 1 1325 0
	movq	-24(%rbp), %rax	# lm, tmp79
	movq	160(%rax), %rax	# lm_3(D)->tgcache, D.7819
	movq	%rax, %rdi	# D.7819,
	call	ckd_free	#
	.loc 1 1326 0
	movq	-24(%rbp), %rax	# lm, tmp80
	movq	104(%rax), %rax	# lm_3(D)->tg_segbase, D.7820
	movq	%rax, %rdi	# D.7820,
	call	ckd_free	#
	.loc 1 1327 0
	movq	-24(%rbp), %rax	# lm, tmp81
	movq	88(%rax), %rax	# lm_3(D)->tgprob, D.7821
	movq	%rax, %rdi	# D.7821,
	call	ckd_free	#
	.loc 1 1328 0
	movq	-24(%rbp), %rax	# lm, tmp82
	movq	96(%rax), %rax	# lm_3(D)->tgbowt, D.7821
	movq	%rax, %rdi	# D.7821,
	call	ckd_free	#
	.loc 1 1329 0
	movq	-24(%rbp), %rax	# lm, tmp83
	movq	80(%rax), %rax	# lm_3(D)->bgprob, D.7821
	movq	%rax, %rdi	# D.7821,
	call	ckd_free	#
	.loc 1 1330 0
	movq	-24(%rbp), %rax	# lm, tmp84
	movq	72(%rax), %rax	# lm_3(D)->tginfo, D.7822
	movq	%rax, %rdi	# D.7822,
	call	ckd_free	#
	.loc 1 1331 0
	movq	-24(%rbp), %rax	# lm, tmp85
	movq	40(%rax), %rax	# lm_3(D)->ug, D.7823
	movq	%rax, %rdi	# D.7823,
	call	ckd_free	#
	.loc 1 1332 0
	movq	-24(%rbp), %rax	# lm, tmp86
	movq	%rax, %rdi	# tmp86,
	call	ckd_free	#
	.loc 1 1334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	lm_free, .-lm_free
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 4
.LC52:
	.long	3267756032
	.align 4
.LC53:
	.long	1065353216
	.align 8
.LC58:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/hash.h"
	.file 8 "s3types.h"
	.file 9 "lmclass.h"
	.file 10 "mdef.h"
	.file 11 "dict.h"
	.file 12 "lm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x19e1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF249
	.byte	0x1
	.long	.LASF250
	.long	.LASF251
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF252
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF59
	.byte	0x18
	.byte	0x7
	.byte	0x58
	.long	0x34e
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x7
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x5f
	.long	0x34e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x60
	.long	0x311
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x38c
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x63
	.long	0x38c
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x354
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x68
	.long	0x35f
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x57
	.long	0x3a8
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF71
	.byte	0x8
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF72
	.byte	0x8
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x7
	.long	.LASF73
	.byte	0x18
	.byte	0x9
	.byte	0x42
	.long	0x427
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF60
	.byte	0x9
	.byte	0x47
	.long	0x427
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ea
	.uleb128 0x2
	.long	.LASF77
	.byte	0x9
	.byte	0x49
	.long	0x427
	.uleb128 0x7
	.long	.LASF78
	.byte	0x18
	.byte	0x9
	.byte	0x4f
	.long	0x469
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x51
	.long	0x42d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x9
	.byte	0x52
	.long	0x469
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x438
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.byte	0x54
	.long	0x469
	.uleb128 0x7
	.long	.LASF82
	.byte	0x8
	.byte	0x9
	.byte	0x5b
	.long	0x493
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x5c
	.long	0x46f
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0x9
	.byte	0x5d
	.long	0x49e
	.uleb128 0x6
	.byte	0x8
	.long	0x47a
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.byte	0x48
	.long	0x4cb
	.uleb128 0x11
	.long	.LASF85
	.sleb128 0
	.uleb128 0x11
	.long	.LASF86
	.sleb128 1
	.uleb128 0x11
	.long	.LASF87
	.sleb128 2
	.uleb128 0x11
	.long	.LASF88
	.sleb128 3
	.uleb128 0x11
	.long	.LASF89
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.byte	0x4e
	.long	0x4a4
	.uleb128 0xf
	.byte	0x10
	.byte	0xa
	.byte	0x54
	.long	0x4f7
	.uleb128 0x8
	.long	.LASF79
	.byte	0xa
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0xa
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.byte	0x58
	.long	0x4d6
	.uleb128 0xf
	.byte	0x10
	.byte	0xa
	.byte	0x5e
	.long	0x550
	.uleb128 0x8
	.long	.LASF93
	.byte	0xa
	.byte	0x5f
	.long	0x3b3
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x62
	.long	0x3be
	.byte	0x4
	.uleb128 0xe
	.string	"ci"
	.byte	0xa
	.byte	0x63
	.long	0x39d
	.byte	0x8
	.uleb128 0xe
	.string	"lc"
	.byte	0xa
	.byte	0x63
	.long	0x39d
	.byte	0x9
	.uleb128 0xe
	.string	"rc"
	.byte	0xa
	.byte	0x63
	.long	0x39d
	.byte	0xa
	.uleb128 0x8
	.long	.LASF95
	.byte	0xa
	.byte	0x64
	.long	0x4cb
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF96
	.byte	0xa
	.byte	0x65
	.long	0x502
	.uleb128 0x7
	.long	.LASF97
	.byte	0x10
	.byte	0xa
	.byte	0x6c
	.long	0x58b
	.uleb128 0xe
	.string	"rc"
	.byte	0xa
	.byte	0x6d
	.long	0x39d
	.byte	0
	.uleb128 0xe
	.string	"pid"
	.byte	0xa
	.byte	0x6e
	.long	0x3a8
	.byte	0x4
	.uleb128 0x8
	.long	.LASF60
	.byte	0xa
	.byte	0x6f
	.long	0x58b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55b
	.uleb128 0x2
	.long	.LASF98
	.byte	0xa
	.byte	0x70
	.long	0x55b
	.uleb128 0x7
	.long	.LASF99
	.byte	0x18
	.byte	0xa
	.byte	0x72
	.long	0x5cc
	.uleb128 0xe
	.string	"lc"
	.byte	0xa
	.byte	0x73
	.long	0x39d
	.byte	0
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x74
	.long	0x5cc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0xa
	.byte	0x75
	.long	0x5d2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x591
	.uleb128 0x6
	.byte	0x8
	.long	0x59c
	.uleb128 0x2
	.long	.LASF101
	.byte	0xa
	.byte	0x76
	.long	0x59c
	.uleb128 0xf
	.byte	0x68
	.byte	0xa
	.byte	0x7a
	.long	0x6ac
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF108
	.byte	0xa
	.byte	0x82
	.long	0x6ac
	.byte	0x18
	.uleb128 0x8
	.long	.LASF109
	.byte	0xa
	.byte	0x83
	.long	0x6b2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF110
	.byte	0xa
	.byte	0x84
	.long	0x6b8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF111
	.byte	0xa
	.byte	0x85
	.long	0x6be
	.byte	0x30
	.uleb128 0x8
	.long	.LASF112
	.byte	0xa
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF113
	.byte	0xa
	.byte	0x89
	.long	0x6c4
	.byte	0x40
	.uleb128 0x8
	.long	.LASF114
	.byte	0xa
	.byte	0x8c
	.long	0x6ca
	.byte	0x48
	.uleb128 0x8
	.long	.LASF115
	.byte	0xa
	.byte	0x8d
	.long	0x6d0
	.byte	0x50
	.uleb128 0xe
	.string	"sil"
	.byte	0xa
	.byte	0x8f
	.long	0x39d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF116
	.byte	0xa
	.byte	0x91
	.long	0x6d6
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x392
	.uleb128 0x6
	.byte	0x8
	.long	0x4f7
	.uleb128 0x6
	.byte	0x8
	.long	0x550
	.uleb128 0x6
	.byte	0x8
	.long	0x6c4
	.uleb128 0x6
	.byte	0x8
	.long	0x3df
	.uleb128 0x6
	.byte	0x8
	.long	0x39d
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x6dc
	.uleb128 0x6
	.byte	0x8
	.long	0x6e2
	.uleb128 0x6
	.byte	0x8
	.long	0x5d8
	.uleb128 0x2
	.long	.LASF117
	.byte	0xa
	.byte	0x96
	.long	0x5e3
	.uleb128 0xf
	.byte	0x28
	.byte	0xb
	.byte	0x47
	.long	0x750
	.uleb128 0x8
	.long	.LASF74
	.byte	0xb
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xb
	.byte	0x49
	.long	0x6ca
	.byte	0x8
	.uleb128 0x8
	.long	.LASF118
	.byte	0xb
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0xe
	.string	"alt"
	.byte	0xb
	.byte	0x4b
	.long	0x3c9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF119
	.byte	0xb
	.byte	0x4c
	.long	0x3c9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF120
	.byte	0xb
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF121
	.byte	0xb
	.byte	0x51
	.long	0x750
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c9
	.uleb128 0x2
	.long	.LASF122
	.byte	0xb
	.byte	0x52
	.long	0x6f3
	.uleb128 0xf
	.byte	0x58
	.byte	0xb
	.byte	0x54
	.long	0x811
	.uleb128 0x8
	.long	.LASF123
	.byte	0xb
	.byte	0x55
	.long	0x811
	.byte	0
	.uleb128 0xe
	.string	"pht"
	.byte	0xb
	.byte	0x56
	.long	0x6ac
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0xb
	.byte	0x57
	.long	0x817
	.byte	0x10
	.uleb128 0x8
	.long	.LASF102
	.byte	0xb
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF74
	.byte	0xb
	.byte	0x59
	.long	0x81d
	.byte	0x20
	.uleb128 0xe
	.string	"ht"
	.byte	0xb
	.byte	0x5a
	.long	0x6ac
	.byte	0x28
	.uleb128 0x8
	.long	.LASF125
	.byte	0xb
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF126
	.byte	0xb
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF127
	.byte	0xb
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF128
	.byte	0xb
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF129
	.byte	0xb
	.byte	0x5f
	.long	0x750
	.byte	0x40
	.uleb128 0x8
	.long	.LASF130
	.byte	0xb
	.byte	0x62
	.long	0x3c9
	.byte	0x48
	.uleb128 0x8
	.long	.LASF131
	.byte	0xb
	.byte	0x63
	.long	0x3c9
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF132
	.byte	0xb
	.byte	0x64
	.long	0x3c9
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e8
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x756
	.uleb128 0x2
	.long	.LASF133
	.byte	0xb
	.byte	0x65
	.long	0x761
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.byte	0x4d
	.long	0x849
	.uleb128 0x13
	.string	"f"
	.byte	0xc
	.byte	0x4e
	.long	0x2fb
	.uleb128 0x13
	.string	"l"
	.byte	0xc
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF134
	.byte	0xc
	.byte	0x50
	.long	0x82e
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x52
	.long	0x88d
	.uleb128 0x8
	.long	.LASF75
	.byte	0xc
	.byte	0x53
	.long	0x3c9
	.byte	0
	.uleb128 0x8
	.long	.LASF135
	.byte	0xc
	.byte	0x57
	.long	0x849
	.byte	0x4
	.uleb128 0x8
	.long	.LASF136
	.byte	0xc
	.byte	0x58
	.long	0x849
	.byte	0x8
	.uleb128 0x8
	.long	.LASF137
	.byte	0xc
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF138
	.byte	0xc
	.byte	0x5a
	.long	0x854
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x5c
	.long	0x8d1
	.uleb128 0xe
	.string	"wid"
	.byte	0xc
	.byte	0x5d
	.long	0x3d4
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0xc
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF140
	.byte	0xc
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF141
	.byte	0xc
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF142
	.byte	0xc
	.byte	0x61
	.long	0x898
	.uleb128 0xf
	.byte	0x4
	.byte	0xc
	.byte	0x63
	.long	0x8fd
	.uleb128 0xe
	.string	"wid"
	.byte	0xc
	.byte	0x64
	.long	0x3d4
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0xc
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF143
	.byte	0xc
	.byte	0x66
	.long	0x8dc
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x6c
	.long	0x928
	.uleb128 0xe
	.string	"bg"
	.byte	0xc
	.byte	0x6d
	.long	0x928
	.byte	0
	.uleb128 0x8
	.long	.LASF144
	.byte	0xc
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8d1
	.uleb128 0x2
	.long	.LASF145
	.byte	0xc
	.byte	0x70
	.long	0x908
	.uleb128 0x7
	.long	.LASF146
	.byte	0x20
	.byte	0xc
	.byte	0x7a
	.long	0x98c
	.uleb128 0xe
	.string	"w1"
	.byte	0xc
	.byte	0x7b
	.long	0x3d4
	.byte	0
	.uleb128 0x8
	.long	.LASF147
	.byte	0xc
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0xe
	.string	"tg"
	.byte	0xc
	.byte	0x7e
	.long	0x98c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF136
	.byte	0xc
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF144
	.byte	0xc
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x81
	.long	0x992
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8fd
	.uleb128 0x6
	.byte	0x8
	.long	0x939
	.uleb128 0x2
	.long	.LASF148
	.byte	0xc
	.byte	0x82
	.long	0x939
	.uleb128 0xf
	.byte	0xc
	.byte	0xc
	.byte	0x88
	.long	0x9c4
	.uleb128 0x8
	.long	.LASF149
	.byte	0xc
	.byte	0x89
	.long	0x9c4
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0xc
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x3d4
	.long	0x9d4
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF151
	.byte	0xc
	.byte	0x8b
	.long	0x9a3
	.uleb128 0x7
	.long	.LASF152
	.byte	0xf8
	.byte	0xc
	.byte	0xb4
	.long	0xbeb
	.uleb128 0x8
	.long	.LASF153
	.byte	0xc
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF154
	.byte	0xc
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF147
	.byte	0xc
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF155
	.byte	0xc
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF156
	.byte	0xc
	.byte	0xba
	.long	0x817
	.byte	0x10
	.uleb128 0x8
	.long	.LASF157
	.byte	0xc
	.byte	0xbc
	.long	0x3d4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0xc
	.byte	0xbd
	.long	0x3d4
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF159
	.byte	0xc
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF160
	.byte	0xc
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0xe
	.string	"ug"
	.byte	0xc
	.byte	0xc2
	.long	0xbeb
	.byte	0x28
	.uleb128 0xe
	.string	"bg"
	.byte	0xc
	.byte	0xc3
	.long	0x928
	.byte	0x30
	.uleb128 0xe
	.string	"tg"
	.byte	0xc
	.byte	0xc4
	.long	0x98c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF161
	.byte	0xc
	.byte	0xc5
	.long	0xbf1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF162
	.byte	0xc
	.byte	0xc6
	.long	0xbf7
	.byte	0x48
	.uleb128 0x8
	.long	.LASF163
	.byte	0xc
	.byte	0xc8
	.long	0xc03
	.byte	0x50
	.uleb128 0x8
	.long	.LASF164
	.byte	0xc
	.byte	0xc9
	.long	0xc03
	.byte	0x58
	.uleb128 0x8
	.long	.LASF165
	.byte	0xc
	.byte	0xca
	.long	0xc03
	.byte	0x60
	.uleb128 0x8
	.long	.LASF166
	.byte	0xc
	.byte	0xcb
	.long	0x6d0
	.byte	0x68
	.uleb128 0x8
	.long	.LASF167
	.byte	0xc
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF168
	.byte	0xc
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF169
	.byte	0xc
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0xe
	.string	"fp"
	.byte	0xc
	.byte	0xd1
	.long	0xc09
	.byte	0x80
	.uleb128 0x8
	.long	.LASF170
	.byte	0xc
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF171
	.byte	0xc
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF172
	.byte	0xc
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0xe
	.string	"lw"
	.byte	0xc
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0xe
	.string	"wip"
	.byte	0xc
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF173
	.byte	0xc
	.byte	0xdd
	.long	0xc0f
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF174
	.byte	0xc
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF175
	.byte	0xc
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF176
	.byte	0xc
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF177
	.byte	0xc
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF178
	.byte	0xc
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF179
	.byte	0xc
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF180
	.byte	0xc
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF181
	.byte	0xc
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF182
	.byte	0xc
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF183
	.byte	0xc
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF184
	.byte	0xc
	.byte	0xef
	.long	0xc15
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF185
	.byte	0xc
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF186
	.byte	0xc
	.byte	0xf4
	.long	0xc1b
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF187
	.byte	0xc
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF188
	.byte	0xc
	.byte	0xf6
	.long	0x6d0
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x88d
	.uleb128 0x6
	.byte	0x8
	.long	0x92e
	.uleb128 0x6
	.byte	0x8
	.long	0xbfd
	.uleb128 0x6
	.byte	0x8
	.long	0x998
	.uleb128 0x6
	.byte	0x8
	.long	0x849
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x9d4
	.uleb128 0x6
	.byte	0x8
	.long	0x3d4
	.uleb128 0x6
	.byte	0x8
	.long	0x46f
	.uleb128 0x2
	.long	.LASF189
	.byte	0xc
	.byte	0xf8
	.long	0x9df
	.uleb128 0x7
	.long	.LASF190
	.byte	0x10
	.byte	0xc
	.byte	0xfb
	.long	0xc50
	.uleb128 0x8
	.long	.LASF79
	.byte	0xc
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"lm"
	.byte	0xc
	.byte	0xfd
	.long	0xc50
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc21
	.uleb128 0x2
	.long	.LASF191
	.byte	0xc
	.byte	0xfe
	.long	0xc2c
	.uleb128 0x14
	.byte	0x8
	.byte	0xc
	.value	0x10c
	.long	0xc85
	.uleb128 0x15
	.string	"wid"
	.byte	0xc
	.value	0x10d
	.long	0x3c9
	.byte	0
	.uleb128 0x9
	.long	.LASF135
	.byte	0xc
	.value	0x10e
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF192
	.byte	0xc
	.value	0x10f
	.long	0xc61
	.uleb128 0x17
	.long	.LASF194
	.byte	0x1
	.byte	0x51
	.long	0x2b9
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xcdb
	.uleb128 0x18
	.long	.LASF193
	.byte	0x1
	.byte	0x51
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0x51
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF195
	.byte	0x1
	.byte	0x60
	.long	0x2b9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xd18
	.uleb128 0x1a
	.string	"lm"
	.byte	0x1
	.byte	0x60
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF196
	.byte	0x1
	.byte	0x60
	.long	0xd18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc56
	.uleb128 0x1b
	.long	.LASF200
	.byte	0x1
	.byte	0x9f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xda8
	.uleb128 0x1a
	.string	"lm"
	.byte	0x1
	.byte	0x9f
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"uw"
	.byte	0x1
	.byte	0x9f
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF198
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF199
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"p1"
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"p2"
	.byte	0x1
	.byte	0xa1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.long	.LASF201
	.byte	0x1
	.byte	0xb2
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xdec
	.uleb128 0x1a
	.string	"lm"
	.byte	0x1
	.byte	0xb2
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"uw"
	.byte	0x1
	.byte	0xb2
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF221
	.byte	0x1
	.byte	0xc9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xe58
	.uleb128 0x1a
	.string	"lm"
	.byte	0x1
	.byte	0xc9
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"lw"
	.byte	0x1
	.byte	0xc9
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"wip"
	.byte	0x1
	.byte	0xc9
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x1
	.byte	0xcb
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0xcc
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF214
	.byte	0x1
	.byte	0xed
	.long	0x2b9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xe95
	.uleb128 0x1a
	.string	"lm"
	.byte	0x1
	.byte	0xed
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0xef
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF203
	.byte	0x1
	.value	0x114
	.long	0xd18
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1059
	.uleb128 0x20
	.long	.LASF204
	.byte	0x1
	.value	0x114
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12424
	.uleb128 0x20
	.long	.LASF205
	.byte	0x1
	.value	0x114
	.long	0x1059
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12432
	.uleb128 0x21
	.string	"lw"
	.byte	0x1
	.value	0x114
	.long	0x306
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12440
	.uleb128 0x21
	.string	"wip"
	.byte	0x1
	.value	0x114
	.long	0x306
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12448
	.uleb128 0x21
	.string	"uw"
	.byte	0x1
	.value	0x114
	.long	0x306
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12456
	.uleb128 0x20
	.long	.LASF206
	.byte	0x1
	.value	0x114
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12464
	.uleb128 0x20
	.long	.LASF207
	.byte	0x1
	.value	0x114
	.long	0x6d0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12472
	.uleb128 0x20
	.long	.LASF208
	.byte	0x1
	.value	0x114
	.long	0x6d0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12480
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.value	0x114
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12484
	.uleb128 0x22
	.long	.LASF209
	.byte	0x1
	.value	0x116
	.long	0xc09
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12352
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x117
	.long	0xc09
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12360
	.uleb128 0x22
	.long	.LASF210
	.byte	0x1
	.value	0x118
	.long	0x105f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12336
	.uleb128 0x22
	.long	.LASF211
	.byte	0x1
	.value	0x118
	.long	0x105f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.value	0x118
	.long	0x105f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x22
	.long	.LASF212
	.byte	0x1
	.value	0x119
	.long	0x493
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12400
	.uleb128 0x22
	.long	.LASF186
	.byte	0x1
	.value	0x11a
	.long	0xc1b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x23
	.string	"cl"
	.byte	0x1
	.value	0x11a
	.long	0x46f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12392
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.value	0x11b
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12404
	.uleb128 0x22
	.long	.LASF213
	.byte	0x1
	.value	0x11b
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12416
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12412
	.uleb128 0x23
	.string	"lm"
	.byte	0x1
	.value	0x11d
	.long	0xc50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12384
	.uleb128 0x22
	.long	.LASF196
	.byte	0x1
	.value	0x11e
	.long	0xd18
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12376
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.string	"w"
	.byte	0x1
	.value	0x150
	.long	0x42d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12368
	.uleb128 0x23
	.string	"wid"
	.byte	0x1
	.value	0x151
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12408
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x823
	.uleb128 0xb
	.long	0x95
	.long	0x1070
	.uleb128 0x25
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x26
	.long	.LASF215
	.byte	0x1
	.value	0x1b0
	.long	0x2b9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f9
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x1b0
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"lw"
	.byte	0x1
	.value	0x1b0
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"uw"
	.byte	0x1
	.value	0x1b0
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"wip"
	.byte	0x1
	.value	0x1b0
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF213
	.byte	0x1
	.value	0x1b0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.value	0x1b0
	.long	0xc1b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1b2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF216
	.byte	0x1
	.value	0x1c8
	.long	0xc50
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1212
	.uleb128 0x20
	.long	.LASF217
	.byte	0x1
	.value	0x1c8
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x21
	.string	"lw"
	.byte	0x1
	.value	0x1c8
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x21
	.string	"wip"
	.byte	0x1
	.value	0x1c8
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x21
	.string	"uw"
	.byte	0x1
	.value	0x1c8
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x20
	.long	.LASF213
	.byte	0x1
	.value	0x1c8
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.value	0x1c8
	.long	0xc1b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.value	0x1c8
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x23
	.string	"lm"
	.byte	0x1
	.value	0x1ca
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1cb
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x1cb
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x1cb
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x23
	.string	"vn"
	.byte	0x1
	.value	0x1cb
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.value	0x1cc
	.long	0x1212
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x22
	.long	.LASF218
	.byte	0x1
	.value	0x1cd
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x1ce
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x22
	.long	.LASF219
	.byte	0x1
	.value	0x1ce
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1106
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1223
	.uleb128 0x25
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x1f
	.long	.LASF220
	.byte	0x1
	.value	0x2d5
	.long	0xc50
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a8
	.uleb128 0x20
	.long	.LASF217
	.byte	0x1
	.value	0x2d5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"lw"
	.byte	0x1
	.value	0x2d5
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"wip"
	.byte	0x1
	.value	0x2d5
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"uw"
	.byte	0x1
	.value	0x2d5
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2d7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"u"
	.byte	0x1
	.value	0x2d7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"lm"
	.byte	0x1
	.value	0x2d8
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF222
	.byte	0x1
	.value	0x2fb
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x132e
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x2fb
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2fd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.long	.LASF223
	.byte	0x1
	.value	0x2fd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF224
	.byte	0x1
	.value	0x2fd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF162
	.byte	0x1
	.value	0x2fe
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF225
	.byte	0x1
	.value	0x2fe
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF226
	.byte	0x1
	.value	0x2fe
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF227
	.byte	0x1
	.value	0x335
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x135b
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x335
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF228
	.byte	0x1
	.value	0x348
	.long	0x2b9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x13aa
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x348
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF149
	.byte	0x1
	.value	0x348
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"wid"
	.byte	0x1
	.value	0x348
	.long	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF229
	.byte	0x1
	.value	0x356
	.long	0x2b9
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ea
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x356
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF230
	.byte	0x1
	.value	0x356
	.long	0x13ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbeb
	.uleb128 0x28
	.long	.LASF231
	.byte	0x1
	.value	0x35e
	.long	0x2b9
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x14be
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x35e
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF205
	.byte	0x1
	.value	0x35e
	.long	0x1059
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"th"
	.byte	0x1
	.value	0x35e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.string	"wp"
	.byte	0x1
	.value	0x35e
	.long	0x14be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x360
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x360
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x360
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x360
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"w"
	.byte	0x1
	.value	0x361
	.long	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF232
	.byte	0x1
	.value	0x361
	.long	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF186
	.byte	0x1
	.value	0x362
	.long	0x46f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF233
	.byte	0x1
	.value	0x363
	.long	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc85
	.uleb128 0x29
	.long	.LASF234
	.byte	0x1
	.value	0x38c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1537
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x38c
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"lw1"
	.byte	0x1
	.value	0x38c
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x38e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x38e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x38e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"bg"
	.byte	0x1
	.value	0x38f
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF235
	.byte	0x1
	.value	0x3b0
	.long	0x2b9
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a9
	.uleb128 0x21
	.string	"bg"
	.byte	0x1
	.value	0x3b0
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.value	0x3b0
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.value	0x3b0
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x3b2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x3b2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x3b2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF236
	.byte	0x1
	.value	0x3c7
	.long	0x2b9
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1613
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x3c7
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"w1"
	.byte	0x1
	.value	0x3c7
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF237
	.byte	0x1
	.value	0x3c7
	.long	0x1613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF136
	.byte	0x1
	.value	0x3c7
	.long	0x6d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x3c9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x928
	.uleb128 0x1f
	.long	.LASF238
	.byte	0x1
	.value	0x403
	.long	0x2b9
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ae
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x403
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"lw1"
	.byte	0x1
	.value	0x403
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.string	"lw2"
	.byte	0x1
	.value	0x403
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"w2"
	.byte	0x1
	.value	0x403
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x405
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x405
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF239
	.byte	0x1
	.value	0x405
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"bg"
	.byte	0x1
	.value	0x406
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF240
	.byte	0x1
	.value	0x435
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x175b
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x435
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"lw1"
	.byte	0x1
	.value	0x435
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"lw2"
	.byte	0x1
	.value	0x435
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x437
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x437
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x437
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x438
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"bg"
	.byte	0x1
	.value	0x43a
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"tg"
	.byte	0x1
	.value	0x43b
	.long	0x98c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF162
	.byte	0x1
	.value	0x43c
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x1
	.value	0x488
	.long	0x2b9
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x17cd
	.uleb128 0x21
	.string	"tg"
	.byte	0x1
	.value	0x488
	.long	0x98c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.value	0x488
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.value	0x488
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x48a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x48a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x48a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF242
	.byte	0x1
	.value	0x49d
	.long	0x2b9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1858
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x49d
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"lw1"
	.byte	0x1
	.value	0x49d
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"lw2"
	.byte	0x1
	.value	0x49d
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF243
	.byte	0x1
	.value	0x49d
	.long	0x1858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF136
	.byte	0x1
	.value	0x49d
	.long	0x6d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF162
	.byte	0x1
	.value	0x49f
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF226
	.byte	0x1
	.value	0x49f
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98c
	.uleb128 0x1f
	.long	.LASF244
	.byte	0x1
	.value	0x4cc
	.long	0x2b9
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1933
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x4cc
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"lw1"
	.byte	0x1
	.value	0x4cc
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"lw2"
	.byte	0x1
	.value	0x4cc
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"lw3"
	.byte	0x1
	.value	0x4cc
	.long	0x3d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.string	"w3"
	.byte	0x1
	.value	0x4cc
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x4ce
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.value	0x4ce
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x4ce
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF239
	.byte	0x1
	.value	0x4ce
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"tg"
	.byte	0x1
	.value	0x4cf
	.long	0x98c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF162
	.byte	0x1
	.value	0x4d0
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF226
	.byte	0x1
	.value	0x4d0
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.long	.LASF245
	.byte	0x1
	.value	0x51a
	.long	0x3d4
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1980
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x51a
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF74
	.byte	0x1
	.value	0x51a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x51c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF246
	.byte	0x1
	.value	0x525
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x19ba
	.uleb128 0x21
	.string	"lm"
	.byte	0x1
	.value	0x525
	.long	0xc50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x527
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF247
	.byte	0x1
	.byte	0x4a
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	darpa_hdr
	.uleb128 0x1c
	.long	.LASF248
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	LM_IN_MEMORY
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
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
.LASF235:
	.string	"find_bg"
.LASF7:
	.string	"size_t"
.LASF218:
	.string	"tmp_word_str"
.LASF10:
	.string	"sizetype"
.LASF211:
	.string	"lmname"
.LASF111:
	.string	"sseq"
.LASF164:
	.string	"tgprob"
.LASF144:
	.string	"used"
.LASF119:
	.string	"basewid"
.LASF72:
	.string	"s3senid_t"
.LASF117:
	.string	"mdef_t"
.LASF205:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF241:
	.string	"find_tg"
.LASF54:
	.string	"uint32"
.LASF166:
	.string	"tg_segbase"
.LASF106:
	.string	"n_sen"
.LASF17:
	.string	"_IO_write_base"
.LASF229:
	.string	"lm_uglist"
.LASF121:
	.string	"comp"
.LASF206:
	.string	"lmdumpdir"
.LASF33:
	.string	"_lock"
.LASF176:
	.string	"n_bg_score"
.LASF149:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF85:
	.string	"WORD_POSN_BEGIN"
.LASF53:
	.string	"int8"
.LASF26:
	.string	"_chain"
.LASF174:
	.string	"n_bg_fill"
.LASF199:
	.string	"loguniform"
.LASF30:
	.string	"_cur_column"
.LASF246:
	.string	"lm_free"
.LASF186:
	.string	"lmclass"
.LASF250:
	.string	"lm.c"
.LASF93:
	.string	"ssid"
.LASF6:
	.string	"long int"
.LASF219:
	.string	"endwid"
.LASF124:
	.string	"ciphone_str"
.LASF65:
	.string	"hash_table_t"
.LASF208:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF225:
	.string	"next_tginfo"
.LASF171:
	.string	"bgoff"
.LASF109:
	.string	"ciphone"
.LASF94:
	.string	"tmat"
.LASF71:
	.string	"s3lmwid_t"
.LASF180:
	.string	"n_tg_score"
.LASF131:
	.string	"finishwid"
.LASF137:
	.string	"firstbg"
.LASF213:
	.string	"n_lmclass_used"
.LASF82:
	.string	"lmclass_set_s"
.LASF84:
	.string	"lmclass_set_t"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF212:
	.string	"lmclass_set"
.LASF181:
	.string	"n_tg_bo"
.LASF96:
	.string	"phone_t"
.LASF230:
	.string	"ugptr"
.LASF1:
	.string	"unsigned char"
.LASF145:
	.string	"membg_t"
.LASF182:
	.string	"n_tgcache_hit"
.LASF239:
	.string	"score"
.LASF91:
	.string	"filler"
.LASF240:
	.string	"load_tg"
.LASF130:
	.string	"startwid"
.LASF160:
	.string	"bg_seg_sz"
.LASF62:
	.string	"table"
.LASF11:
	.string	"char"
.LASF193:
	.string	"model"
.LASF70:
	.string	"s3wid_t"
.LASF80:
	.string	"wordlist"
.LASF190:
	.string	"lmset_s"
.LASF191:
	.string	"lmset_t"
.LASF252:
	.string	"_IO_lock_t"
.LASF127:
	.string	"filler_start"
.LASF99:
	.string	"ph_lc_s"
.LASF101:
	.string	"ph_lc_t"
.LASF135:
	.string	"prob"
.LASF14:
	.string	"_IO_read_ptr"
.LASF112:
	.string	"n_sseq"
.LASF46:
	.string	"_pos"
.LASF97:
	.string	"ph_rc_s"
.LASF98:
	.string	"ph_rc_t"
.LASF128:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF217:
	.string	"file"
.LASF231:
	.string	"lm_ug_wordprob"
.LASF113:
	.string	"cd2cisen"
.LASF233:
	.string	"lm_cw"
.LASF163:
	.string	"bgprob"
.LASF67:
	.string	"s3pid_t"
.LASF187:
	.string	"n_lmclass"
.LASF175:
	.string	"n_bg_inmem"
.LASF207:
	.string	"n_lm"
.LASF243:
	.string	"tgptr"
.LASF34:
	.string	"_offset"
.LASF224:
	.string	"n_tgfree"
.LASF178:
	.string	"n_tg_fill"
.LASF162:
	.string	"tginfo"
.LASF155:
	.string	"max_ug"
.LASF248:
	.string	"LM_IN_MEMORY"
.LASF0:
	.string	"long unsigned int"
.LASF138:
	.string	"ug_t"
.LASF102:
	.string	"n_ciphone"
.LASF192:
	.string	"wordprob_t"
.LASF28:
	.string	"_flags2"
.LASF146:
	.string	"tginfo_s"
.LASF148:
	.string	"tginfo_t"
.LASF236:
	.string	"lm_bglist"
.LASF16:
	.string	"_IO_read_base"
.LASF122:
	.string	"dictword_t"
.LASF41:
	.string	"_unused2"
.LASF196:
	.string	"lmset"
.LASF197:
	.string	"loguw"
.LASF69:
	.string	"s3tmatid_t"
.LASF242:
	.string	"lm_tglist"
.LASF185:
	.string	"dict_size"
.LASF29:
	.string	"_old_offset"
.LASF179:
	.string	"n_tg_inmem"
.LASF90:
	.string	"word_posn_t"
.LASF107:
	.string	"n_tmat"
.LASF169:
	.string	"n_tgbowt"
.LASF223:
	.string	"n_bgfree"
.LASF73:
	.string	"lmclass_word_s"
.LASF77:
	.string	"lmclass_word_t"
.LASF47:
	.string	"long long int"
.LASF195:
	.string	"lm_delete"
.LASF50:
	.string	"double"
.LASF116:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF156:
	.string	"wordstr"
.LASF198:
	.string	"loguw_"
.LASF49:
	.string	"float"
.LASF114:
	.string	"sen2cimap"
.LASF20:
	.string	"_IO_buf_base"
.LASF247:
	.string	"darpa_hdr"
.LASF210:
	.string	"lmfile"
.LASF227:
	.string	"lm_cache_stats_dump"
.LASF3:
	.string	"unsigned int"
.LASF88:
	.string	"WORD_POSN_INTERNAL"
.LASF133:
	.string	"dict_t"
.LASF86:
	.string	"WORD_POSN_END"
.LASF151:
	.string	"lm_tgcache_entry_t"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF45:
	.string	"_sbuf"
.LASF202:
	.string	"iwip"
.LASF204:
	.string	"ctlfile"
.LASF251:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF108:
	.string	"ciphone_ht"
.LASF13:
	.string	"_flags"
.LASF139:
	.string	"probid"
.LASF215:
	.string	"lm_build_lmclass_info"
.LASF40:
	.string	"_mode"
.LASF249:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF165:
	.string	"tgbowt"
.LASF150:
	.string	"lscr"
.LASF87:
	.string	"WORD_POSN_SINGLE"
.LASF147:
	.string	"n_tg"
.LASF123:
	.string	"mdef"
.LASF74:
	.string	"word"
.LASF12:
	.string	"FILE"
.LASF234:
	.string	"load_bg"
.LASF153:
	.string	"n_ug"
.LASF59:
	.string	"hash_entry_s"
.LASF61:
	.string	"hash_entry_t"
.LASF173:
	.string	"tgcache"
.LASF214:
	.string	"lm_fread_int32"
.LASF132:
	.string	"silwid"
.LASF63:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF120:
	.string	"n_comp"
.LASF8:
	.string	"__off_t"
.LASF183:
	.string	"access_type"
.LASF66:
	.string	"s3cipid_t"
.LASF92:
	.string	"ciphone_t"
.LASF172:
	.string	"tgoff"
.LASF100:
	.string	"rclist"
.LASF238:
	.string	"lm_bg_score"
.LASF89:
	.string	"WORD_POSN_UNDEFINED"
.LASF245:
	.string	"lm_wid"
.LASF154:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF152:
	.string	"lm_s"
.LASF189:
	.string	"lm_t"
.LASF75:
	.string	"dictwid"
.LASF95:
	.string	"wpos"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF110:
	.string	"phone"
.LASF159:
	.string	"log_bg_seg_sz"
.LASF129:
	.string	"comp_head"
.LASF105:
	.string	"n_ci_sen"
.LASF141:
	.string	"firsttg"
.LASF21:
	.string	"_IO_buf_end"
.LASF228:
	.string	"lm_ug_score"
.LASF157:
	.string	"startlwid"
.LASF134:
	.string	"lmlog_t"
.LASF79:
	.string	"name"
.LASF56:
	.string	"uint8"
.LASF5:
	.string	"short int"
.LASF201:
	.string	"lm2logs3"
.LASF194:
	.string	"lm_get_classid"
.LASF140:
	.string	"bowtid"
.LASF244:
	.string	"lm_tg_score"
.LASF76:
	.string	"LOGprob"
.LASF115:
	.string	"ciphone2n_cd_sen"
.LASF222:
	.string	"lm_cache_reset"
.LASF104:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF221:
	.string	"lm_set_param"
.LASF237:
	.string	"bgptr"
.LASF226:
	.string	"prev_tginfo"
.LASF167:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF68:
	.string	"s3ssid_t"
.LASF232:
	.string	"dictid"
.LASF83:
	.string	"lmclass_list"
.LASF15:
	.string	"_IO_read_end"
.LASF168:
	.string	"n_tgprob"
.LASF188:
	.string	"inclass_ugscore"
.LASF136:
	.string	"bowt"
.LASF64:
	.string	"nocase"
.LASF78:
	.string	"lmclass_s"
.LASF81:
	.string	"lmclass_t"
.LASF216:
	.string	"lm_read_dump"
.LASF27:
	.string	"_fileno"
.LASF143:
	.string	"tg_t"
.LASF125:
	.string	"max_words"
.LASF58:
	.string	"float64"
.LASF184:
	.string	"dict2lmwid"
.LASF103:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF161:
	.string	"membg"
.LASF200:
	.string	"lm_uw"
.LASF51:
	.string	"int32"
.LASF170:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF142:
	.string	"bg_t"
.LASF158:
	.string	"finishlwid"
.LASF126:
	.string	"n_word"
.LASF118:
	.string	"pronlen"
.LASF203:
	.string	"lm_read_ctl"
.LASF60:
	.string	"next"
.LASF177:
	.string	"n_bg_bo"
.LASF55:
	.string	"uint16"
.LASF220:
	.string	"lm_read"
.LASF209:
	.string	"ctlfp"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
