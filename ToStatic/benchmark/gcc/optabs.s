	.file	"optabs.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 optabs.c -mtune=generic -march=x86-64 -g -fverbose-asm
# -fno-strict-aliasing -fstack-protector -Wformat -Wformat-security
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
	.comm	optab_table,392,32
	.comm	libfunc_table,776,32
	.comm	extendtab,27848,32
	.comm	fixtab,27848,32
	.comm	fixtrunctab,27848,32
	.comm	floattab,27848,32
	.comm	code_to_optab,1232,32
	.comm	bcc_gen_fctn,1224,32
	.comm	setcc_gen_code,612,32
	.comm	movcc_gen_code,236,32
	.type	add_equal_note, @function
add_equal_note:
.LFB2:
	.file 1 "optabs.c"
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# seq, seq
	movq	%rsi, -64(%rbp)	# target, target
	movl	%edx, -68(%rbp)	# code, code
	movq	%rcx, -80(%rbp)	# op0, op0
	movq	%r8, -88(%rbp)	# op1, op1
	.loc 1 143 0
	movl	-68(%rbp), %eax	# code, code.0
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$49, %al	#, D.18038
	je	.L2	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# code, code.1
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$50, %al	#, D.18038
	je	.L2	#,
	.loc 1 144 0 is_stmt 1
	movl	-68(%rbp), %eax	# code, code.2
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$99, %al	#, D.18038
	je	.L2	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# code, code.3
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$60, %al	#, D.18038
	jne	.L3	#,
.L2:
	.loc 1 145 0 is_stmt 1
	movq	-56(%rbp), %rax	# seq, tmp137
	movzwl	(%rax), %eax	# seq_15(D)->code, D.18039
	cmpw	$24, %ax	#, D.18039
	jne	.L3	#,
	.loc 1 146 0
	movq	-56(%rbp), %rax	# seq, tmp138
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rdx	# seq, tmp139
	movq	8(%rdx), %rdx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rdx), %edx	# _18->num_elem, D.18037
	subl	$1, %edx	#, D.18037
	movslq	%edx, %rdx	# D.18037, tmp140
	movq	8(%rax,%rdx,8), %rax	# _17->elem, D.18041
	movzwl	(%rax), %eax	# _21->code, D.18039
	movzwl	%ax, %eax	# D.18039, D.18037
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$105, %al	#, D.18038
	jne	.L4	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# seq, tmp142
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rdx	# seq, tmp143
	movq	8(%rdx), %rdx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rdx), %edx	# _26->num_elem, D.18037
	subl	$1, %edx	#, D.18037
	movslq	%edx, %rdx	# D.18037, tmp144
	movq	8(%rax,%rdx,8), %rax	# _25->elem, D.18041
	movq	32(%rax), %rax	# _29->fld[3].rtx, D.18041
	movzwl	(%rax), %eax	# _30->code, D.18039
	cmpw	$47, %ax	#, D.18039
	jne	.L5	#,
	.loc 1 146 0 discriminator 3
	movq	-56(%rbp), %rax	# seq, tmp145
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rdx	# seq, tmp146
	movq	8(%rdx), %rdx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rdx), %edx	# _33->num_elem, D.18037
	subl	$1, %edx	#, D.18037
	movslq	%edx, %rdx	# D.18037, tmp147
	movq	8(%rax,%rdx,8), %rax	# _32->elem, D.18041
	movq	32(%rax), %rax	# _36->fld[3].rtx, iftmp.5
	jmp	.L7	#
.L5:
	.loc 1 146 0 discriminator 4
	movq	-56(%rbp), %rax	# seq, tmp148
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rdx	# seq, tmp149
	movq	8(%rdx), %rdx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rdx), %edx	# _39->num_elem, D.18037
	subl	$1, %edx	#, D.18037
	movslq	%edx, %rdx	# D.18037, tmp150
	movq	8(%rax,%rdx,8), %rax	# _38->elem, D.18041
	movq	32(%rax), %rdx	# _42->fld[3].rtx, D.18041
	movq	-56(%rbp), %rax	# seq, tmp151
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rcx	# seq, tmp152
	movq	8(%rcx), %rcx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rcx), %ecx	# _45->num_elem, D.18037
	subl	$1, %ecx	#, D.18037
	movslq	%ecx, %rcx	# D.18037, tmp153
	movq	8(%rax,%rcx,8), %rax	# _44->elem, D.18041
	movq	%rdx, %rsi	# D.18041,
	movq	%rax, %rdi	# D.18041,
	call	single_set_2	#
	jmp	.L7	#
.L4:
	.loc 1 146 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L7:
	.loc 1 146 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.4, set
	cmpq	$0, -24(%rbp)	#, set
	je	.L3	#,
	.loc 1 147 0 is_stmt 1
	movq	-64(%rbp), %rax	# target, tmp154
	movzwl	(%rax), %eax	# target_53(D)->code, D.18039
	cmpw	$133, %ax	#, D.18039
	je	.L3	#,
	.loc 1 148 0
	movq	-24(%rbp), %rax	# set, tmp155
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.18041
	movq	-64(%rbp), %rdx	# target, tmp156
	movq	%rdx, %rsi	# tmp156,
	movq	%rax, %rdi	# D.18041,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.18037
	jne	.L8	#,
	.loc 1 151 0
	movq	-24(%rbp), %rax	# set, tmp157
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.18041
	movzwl	(%rax), %eax	# _57->code, D.18039
	cmpw	$64, %ax	#, D.18039
	jne	.L3	#,
	.loc 1 152 0
	movq	-24(%rbp), %rax	# set, tmp158
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.18041
	movq	8(%rax), %rax	# _59->fld[0].rtx, D.18041
	movq	8(%rax), %rax	# _60->fld[0].rtx, D.18041
	movq	-64(%rbp), %rdx	# target, tmp159
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# D.18041,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.18037
	jne	.L8	#,
.L3:
	.loc 1 154 0
	movl	$1, %eax	#, D.18037
	jmp	.L9	#
.L8:
	.loc 1 158 0
	movq	-80(%rbp), %rdx	# op0, tmp160
	movq	-64(%rbp), %rax	# target, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.18037
	jne	.L10	#,
	.loc 1 159 0
	cmpq	$0, -88(%rbp)	#, op1
	je	.L11	#,
	.loc 1 159 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# op1, tmp162
	movq	-64(%rbp), %rax	# target, tmp163
	movq	%rdx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.18037
	je	.L11	#,
.L10:
	.loc 1 160 0 is_stmt 1
	movq	-56(%rbp), %rax	# seq, tmp164
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rax), %eax	# _67->num_elem, D.18037
	subl	$2, %eax	#, tmp165
	movl	%eax, -36(%rbp)	# tmp165, i
	jmp	.L12	#
.L14:
	.loc 1 161 0
	movq	-56(%rbp), %rax	# seq, tmp166
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movl	-36(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rdx	# _70->elem, D.18041
	movq	-64(%rbp), %rax	# target, tmp169
	movq	%rdx, %rsi	# D.18041,
	movq	%rax, %rdi	# tmp169,
	call	reg_set_p	#
	testl	%eax, %eax	# D.18037
	je	.L13	#,
	.loc 1 162 0
	movl	$0, %eax	#, D.18037
	jmp	.L9	#
.L13:
	.loc 1 160 0
	subl	$1, -36(%rbp)	#, i
.L12:
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L14	#,
.L11:
	.loc 1 164 0 is_stmt 1
	movl	-68(%rbp), %eax	# code, code.6
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18038
	cmpb	$49, %al	#, D.18038
	jne	.L15	#,
	.loc 1 165 0
	movq	-80(%rbp), %rax	# op0, tmp171
	movq	%rax, %rdi	# tmp171,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18041
	movq	-64(%rbp), %rax	# target, tmp172
	movzbl	2(%rax), %eax	# target_53(D)->mode, D.18042
	movzbl	%al, %ecx	# D.18042, D.18043
	movl	-68(%rbp), %eax	# code, tmp173
	movl	%ecx, %esi	# D.18043,
	movl	%eax, %edi	# tmp173,
	call	gen_rtx_fmt_e	#
	movq	%rax, -32(%rbp)	# tmp174, note
	jmp	.L16	#
.L15:
	.loc 1 167 0
	movq	-88(%rbp), %rax	# op1, tmp175
	movq	%rax, %rdi	# tmp175,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.18041
	movq	-80(%rbp), %rax	# op0, tmp176
	movq	%rax, %rdi	# tmp176,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18041
	movq	-64(%rbp), %rax	# target, tmp177
	movzbl	2(%rax), %eax	# target_53(D)->mode, D.18042
	movzbl	%al, %esi	# D.18042, D.18043
	movl	-68(%rbp), %eax	# code, tmp178
	movq	%rbx, %rcx	# D.18041,
	movl	%eax, %edi	# tmp178,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -32(%rbp)	# tmp179, note
.L16:
	.loc 1 169 0
	movq	-56(%rbp), %rax	# seq, tmp180
	movq	8(%rax), %rax	# seq_15(D)->fld[0].rtvec, D.18040
	movq	-56(%rbp), %rdx	# seq, tmp181
	movq	8(%rdx), %rdx	# seq_15(D)->fld[0].rtvec, D.18040
	movl	(%rdx), %edx	# _87->num_elem, D.18037
	subl	$1, %edx	#, D.18037
	movslq	%edx, %rdx	# D.18037, tmp182
	movq	8(%rax,%rdx,8), %rax	# _86->elem, D.18041
	movq	-32(%rbp), %rdx	# note, tmp183
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18041,
	call	set_unique_reg_note	#
	.loc 1 171 0
	movl	$1, %eax	#, D.18037
.L9:
	.loc 1 172 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	add_equal_note, .-add_equal_note
	.type	widen_operand, @function
widen_operand:
.LFB3:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	movl	%edx, -32(%rbp)	# oldmode, oldmode
	movl	%ecx, -36(%rbp)	# unsignedp, unsignedp
	movl	%r8d, -40(%rbp)	# no_extend, no_extend
	.loc 1 190 0
	cmpl	$0, -40(%rbp)	#, no_extend
	je	.L18	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp80
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.18045
	testb	%al, %al	# D.18045
	jne	.L18	#,
	.loc 1 191 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, D.18044
	jmp	.L19	#
.L18:
	.loc 1 196 0
	cmpl	$0, -40(%rbp)	#, no_extend
	je	.L20	#,
	.loc 1 197 0
	movq	-24(%rbp), %rax	# op, tmp81
	movzwl	(%rax), %eax	# op_4(D)->code, D.18046
	cmpw	$63, %ax	#, D.18046
	jne	.L21	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp82
	movzbl	3(%rax), %eax	# *op_4(D), D.18045
	andl	$16, %eax	#, D.18045
	testb	%al, %al	# D.18045
	je	.L21	#,
	.loc 1 198 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp83
	movzbl	3(%rax), %eax	# *op_4(D), tmp86
	shrb	$2, %al	#, D.18047
	andl	$1, %eax	#, D.18047
	movzbl	%al, %eax	# D.18047, D.18048
	cmpl	-36(%rbp), %eax	# unsignedp, D.18048
	jne	.L21	#,
.L20:
	.loc 1 199 0
	movl	-36(%rbp), %ecx	# unsignedp, tmp87
	movq	-24(%rbp), %rdx	# op, tmp88
	movl	-32(%rbp), %esi	# oldmode, tmp89
	movl	-28(%rbp), %eax	# mode, tmp90
	movl	%eax, %edi	# tmp90,
	call	convert_modes	#
	jmp	.L19	#
.L21:
	.loc 1 203 0
	movl	-28(%rbp), %eax	# mode, mode.7
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18045
	movzbl	%al, %edx	# D.18045, D.18048
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.18048
	testl	%eax, %eax	# D.18048
	je	.L22	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.8
	jmp	.L23	#
.L22:
	.loc 1 203 0 discriminator 2
	movl	$4, %eax	#, iftmp.8
.L23:
	.loc 1 203 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.8, D.18048
	jg	.L24	#,
	.loc 1 204 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp92
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.18045
	movzbl	%al, %eax	# D.18045, D.18049
	movq	-24(%rbp), %rdx	# op, tmp93
	movq	%rdx, %rsi	# tmp93,
	movl	%eax, %edi	# D.18049,
	call	force_reg	#
	movq	%rax, %rcx	#, D.18050
	movl	-28(%rbp), %eax	# mode, tmp94
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18050,
	movl	%eax, %edi	# tmp94,
	call	gen_rtx_SUBREG	#
	jmp	.L19	#
.L24:
	.loc 1 209 0
	movl	-28(%rbp), %eax	# mode, tmp95
	movl	%eax, %edi	# tmp95,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp96, result
	.loc 1 210 0
	movq	-8(%rbp), %rax	# result, tmp97
	movq	%rax, %rdx	# tmp97,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.18050,
	call	emit_insn	#
	.loc 1 211 0
	movq	-24(%rbp), %rax	# op, tmp98
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.18045
	movzbl	%al, %eax	# D.18045, D.18049
	movq	-8(%rbp), %rdx	# result, tmp99
	movq	%rdx, %rsi	# tmp99,
	movl	%eax, %edi	# D.18049,
	call	gen_lowpart	#
	movq	-24(%rbp), %rdx	# op, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.18050,
	call	emit_move_insn	#
	.loc 1 212 0
	movq	-8(%rbp), %rax	# result, D.18044
.L19:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	widen_operand, .-widen_operand
	.type	expand_cmplxdiv_straight, @function
expand_cmplxdiv_straight:
.LFB4:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -88(%rbp)	# real0, real0
	movq	%rsi, -96(%rbp)	# real1, real1
	movq	%rdx, -104(%rbp)	# imag0, imag0
	movq	%rcx, -112(%rbp)	# imag1, imag1
	movq	%r8, -120(%rbp)	# realr, realr
	movq	%r9, -128(%rbp)	# imagr, imagr
	.loc 1 231 0
	movq	optab_table(%rip), %rax	# optab_table, tmp62
	movq	%rax, -56(%rbp)	# tmp62, this_add_optab
	.loc 1 232 0
	movq	optab_table+16(%rip), %rax	# optab_table, tmp63
	movq	%rax, -48(%rbp)	# tmp63, this_sub_optab
	.loc 1 233 0
	movq	optab_table+256(%rip), %rax	# optab_table, tmp64
	movq	%rax, -40(%rbp)	# tmp64, this_neg_optab
	.loc 1 234 0
	movq	optab_table+32(%rip), %rax	# optab_table, tmp65
	movq	%rax, -32(%rbp)	# tmp65, this_mul_optab
	.loc 1 236 0
	movq	optab_table+88(%rip), %rax	# optab_table, D.18052
	cmpq	48(%rbp), %rax	# binoptab, D.18052
	jne	.L26	#,
	.loc 1 238 0
	movq	optab_table+8(%rip), %rax	# optab_table, tmp66
	movq	%rax, -56(%rbp)	# tmp66, this_add_optab
	.loc 1 239 0
	movq	optab_table+24(%rip), %rax	# optab_table, tmp67
	movq	%rax, -48(%rbp)	# tmp67, this_sub_optab
	.loc 1 240 0
	movq	optab_table+264(%rip), %rax	# optab_table, tmp68
	movq	%rax, -40(%rbp)	# tmp68, this_neg_optab
	.loc 1 241 0
	movq	optab_table+40(%rip), %rax	# optab_table, tmp69
	movq	%rax, -32(%rbp)	# tmp69, this_mul_optab
.L26:
	.loc 1 245 0
	movq	-88(%rbp), %rax	# real0, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -88(%rbp)	# tmp71, real0
	.loc 1 246 0
	movq	-96(%rbp), %rax	# real1, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -96(%rbp)	# tmp73, real1
	.loc 1 248 0
	cmpq	$0, -104(%rbp)	#, imag0
	je	.L27	#,
	.loc 1 249 0
	movq	-104(%rbp), %rax	# imag0, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -104(%rbp)	# tmp75, imag0
.L27:
	.loc 1 251 0
	movq	-112(%rbp), %rax	# imag1, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -112(%rbp)	# tmp77, imag1
	.loc 1 254 0
	movl	24(%rbp), %edi	# unsignedp, tmp78
	movq	-96(%rbp), %rcx	# real1, tmp79
	movq	-96(%rbp), %rdx	# real1, tmp80
	movq	-32(%rbp), %rax	# this_mul_optab, tmp81
	movl	32(%rbp), %esi	# methods, tmp82
	movl	%esi, (%rsp)	# tmp82,
	movl	%edi, %r9d	# tmp78,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp81,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp83, temp1
	.loc 1 257 0
	movl	24(%rbp), %edi	# unsignedp, tmp84
	movq	-112(%rbp), %rcx	# imag1, tmp85
	movq	-112(%rbp), %rdx	# imag1, tmp86
	movq	-32(%rbp), %rax	# this_mul_optab, tmp87
	movl	32(%rbp), %esi	# methods, tmp88
	movl	%esi, (%rsp)	# tmp88,
	movl	%edi, %r9d	# tmp84,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp87,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp89, temp2
	.loc 1 260 0
	cmpq	$0, -24(%rbp)	#, temp1
	je	.L28	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, temp2
	jne	.L29	#,
.L28:
	.loc 1 261 0 is_stmt 1
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L29:
	.loc 1 263 0
	movl	24(%rbp), %edi	# unsignedp, tmp90
	movq	-16(%rbp), %rcx	# temp2, tmp91
	movq	-24(%rbp), %rdx	# temp1, tmp92
	movq	-56(%rbp), %rax	# this_add_optab, tmp93
	movl	32(%rbp), %esi	# methods, tmp94
	movl	%esi, (%rsp)	# tmp94,
	movl	%edi, %r9d	# tmp90,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp93,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -8(%rbp)	# tmp95, divisor
	.loc 1 265 0
	cmpq	$0, -8(%rbp)	#, divisor
	jne	.L31	#,
	.loc 1 266 0
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L31:
	.loc 1 268 0
	cmpq	$0, -104(%rbp)	#, imag0
	jne	.L32	#,
	.loc 1 274 0
	movl	24(%rbp), %edi	# unsignedp, tmp96
	movq	-96(%rbp), %rcx	# real1, tmp97
	movq	-88(%rbp), %rdx	# real0, tmp98
	movq	-32(%rbp), %rax	# this_mul_optab, tmp99
	movl	32(%rbp), %esi	# methods, tmp100
	movl	%esi, (%rsp)	# tmp100,
	movl	%edi, %r9d	# tmp96,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp99,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp101, real_t
	.loc 1 277 0
	movl	24(%rbp), %edi	# unsignedp, tmp102
	movq	-112(%rbp), %rcx	# imag1, tmp103
	movq	-88(%rbp), %rdx	# real0, tmp104
	movq	-32(%rbp), %rax	# this_mul_optab, tmp105
	movl	32(%rbp), %esi	# methods, tmp106
	movl	%esi, (%rsp)	# tmp106,
	movl	%edi, %r9d	# tmp102,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp105,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -72(%rbp)	# tmp107, imag_t
	.loc 1 280 0
	cmpq	$0, -80(%rbp)	#, real_t
	je	.L33	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, imag_t
	jne	.L34	#,
.L33:
	.loc 1 281 0 is_stmt 1
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L34:
	.loc 1 283 0
	movl	24(%rbp), %ecx	# unsignedp, tmp108
	movq	-72(%rbp), %rdx	# imag_t, tmp109
	movq	-40(%rbp), %rax	# this_neg_optab, tmp110
	movl	%ecx, %r8d	# tmp108,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp110,
	movl	16(%rbp), %edi	# submode,
	call	expand_unop	#
	movq	%rax, -72(%rbp)	# tmp111, imag_t
	jmp	.L35	#
.L32:
	.loc 1 290 0
	movl	24(%rbp), %edi	# unsignedp, tmp112
	movq	-96(%rbp), %rcx	# real1, tmp113
	movq	-88(%rbp), %rdx	# real0, tmp114
	movq	-32(%rbp), %rax	# this_mul_optab, tmp115
	movl	32(%rbp), %esi	# methods, tmp116
	movl	%esi, (%rsp)	# tmp116,
	movl	%edi, %r9d	# tmp112,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp115,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp117, temp1
	.loc 1 293 0
	movl	24(%rbp), %edi	# unsignedp, tmp118
	movq	-112(%rbp), %rcx	# imag1, tmp119
	movq	-104(%rbp), %rdx	# imag0, tmp120
	movq	-32(%rbp), %rax	# this_mul_optab, tmp121
	movl	32(%rbp), %esi	# methods, tmp122
	movl	%esi, (%rsp)	# tmp122,
	movl	%edi, %r9d	# tmp118,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp121,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp123, temp2
	.loc 1 296 0
	cmpq	$0, -24(%rbp)	#, temp1
	je	.L36	#,
	.loc 1 296 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, temp2
	jne	.L37	#,
.L36:
	.loc 1 297 0 is_stmt 1
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L37:
	.loc 1 299 0
	movl	24(%rbp), %edi	# unsignedp, tmp124
	movq	-16(%rbp), %rcx	# temp2, tmp125
	movq	-24(%rbp), %rdx	# temp1, tmp126
	movq	-56(%rbp), %rax	# this_add_optab, tmp127
	movl	32(%rbp), %esi	# methods, tmp128
	movl	%esi, (%rsp)	# tmp128,
	movl	%edi, %r9d	# tmp124,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp127,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp129, real_t
	.loc 1 302 0
	movl	24(%rbp), %edi	# unsignedp, tmp130
	movq	-96(%rbp), %rcx	# real1, tmp131
	movq	-104(%rbp), %rdx	# imag0, tmp132
	movq	-32(%rbp), %rax	# this_mul_optab, tmp133
	movl	32(%rbp), %esi	# methods, tmp134
	movl	%esi, (%rsp)	# tmp134,
	movl	%edi, %r9d	# tmp130,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp133,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp135, temp1
	.loc 1 305 0
	movl	24(%rbp), %edi	# unsignedp, tmp136
	movq	-112(%rbp), %rcx	# imag1, tmp137
	movq	-88(%rbp), %rdx	# real0, tmp138
	movq	-32(%rbp), %rax	# this_mul_optab, tmp139
	movl	32(%rbp), %esi	# methods, tmp140
	movl	%esi, (%rsp)	# tmp140,
	movl	%edi, %r9d	# tmp136,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp139,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp141, temp2
	.loc 1 308 0
	cmpq	$0, -24(%rbp)	#, temp1
	je	.L38	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, temp2
	jne	.L39	#,
.L38:
	.loc 1 309 0 is_stmt 1
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L39:
	.loc 1 311 0
	movl	24(%rbp), %edi	# unsignedp, tmp142
	movq	-16(%rbp), %rcx	# temp2, tmp143
	movq	-24(%rbp), %rdx	# temp1, tmp144
	movq	-48(%rbp), %rax	# this_sub_optab, tmp145
	movl	32(%rbp), %esi	# methods, tmp146
	movl	%esi, (%rsp)	# tmp146,
	movl	%edi, %r9d	# tmp142,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp145,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -72(%rbp)	# tmp147, imag_t
	.loc 1 314 0
	cmpq	$0, -80(%rbp)	#, real_t
	je	.L40	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, imag_t
	jne	.L35	#,
.L40:
	.loc 1 315 0 is_stmt 1
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L35:
	.loc 1 318 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L41	#,
	.loc 1 319 0
	movl	24(%rbp), %r8d	# unsignedp, tmp148
	movq	-120(%rbp), %rdi	# realr, tmp149
	movq	-8(%rbp), %rcx	# divisor, tmp150
	movq	-80(%rbp), %rdx	# real_t, tmp151
	movq	48(%rbp), %rax	# binoptab, tmp152
	movl	32(%rbp), %esi	# methods, tmp153
	movl	%esi, (%rsp)	# tmp153,
	movl	%r8d, %r9d	# tmp148,
	movq	%rdi, %r8	# tmp149,
	movq	%rax, %rsi	# tmp152,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp154, res
	jmp	.L42	#
.L41:
	.loc 1 322 0
	movq	-120(%rbp), %rsi	# realr, tmp155
	movq	-8(%rbp), %rcx	# divisor, tmp156
	movq	-80(%rbp), %rax	# real_t, tmp157
	movl	24(%rbp), %edx	# unsignedp, tmp158
	movl	%edx, (%rsp)	# tmp158,
	movq	%rsi, %r9	# tmp155,
	movq	%rcx, %r8	# tmp156,
	movq	%rax, %rcx	# tmp157,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp159, res
.L42:
	.loc 1 325 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L43	#,
	.loc 1 326 0
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L43:
	.loc 1 328 0
	movq	-64(%rbp), %rax	# res, tmp160
	cmpq	-120(%rbp), %rax	# realr, tmp160
	je	.L44	#,
	.loc 1 329 0
	movq	-64(%rbp), %rdx	# res, tmp161
	movq	-120(%rbp), %rax	# realr, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	emit_move_insn	#
.L44:
	.loc 1 331 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L45	#,
	.loc 1 332 0
	movl	24(%rbp), %r8d	# unsignedp, tmp163
	movq	-128(%rbp), %rdi	# imagr, tmp164
	movq	-8(%rbp), %rcx	# divisor, tmp165
	movq	-72(%rbp), %rdx	# imag_t, tmp166
	movq	48(%rbp), %rax	# binoptab, tmp167
	movl	32(%rbp), %esi	# methods, tmp168
	movl	%esi, (%rsp)	# tmp168,
	movl	%r8d, %r9d	# tmp163,
	movq	%rdi, %r8	# tmp164,
	movq	%rax, %rsi	# tmp167,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp169, res
	jmp	.L46	#
.L45:
	.loc 1 335 0
	movq	-128(%rbp), %rsi	# imagr, tmp170
	movq	-8(%rbp), %rcx	# divisor, tmp171
	movq	-72(%rbp), %rax	# imag_t, tmp172
	movl	24(%rbp), %edx	# unsignedp, tmp173
	movl	%edx, (%rsp)	# tmp173,
	movq	%rsi, %r9	# tmp170,
	movq	%rcx, %r8	# tmp171,
	movq	%rax, %rcx	# tmp172,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp174, res
.L46:
	.loc 1 338 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L47	#,
	.loc 1 339 0
	movl	$0, %eax	#, D.18051
	jmp	.L30	#
.L47:
	.loc 1 341 0
	movq	-64(%rbp), %rax	# res, tmp175
	cmpq	-128(%rbp), %rax	# imagr, tmp175
	je	.L48	#,
	.loc 1 342 0
	movq	-64(%rbp), %rdx	# res, tmp176
	movq	-128(%rbp), %rax	# imagr, tmp177
	movq	%rdx, %rsi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	emit_move_insn	#
.L48:
	.loc 1 344 0
	movl	$1, %eax	#, D.18051
.L30:
	.loc 1 345 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	expand_cmplxdiv_straight, .-expand_cmplxdiv_straight
	.type	expand_cmplxdiv_wide, @function
expand_cmplxdiv_wide:
.LFB5:
	.loc 1 358 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -120(%rbp)	# real0, real0
	movq	%rsi, -128(%rbp)	# real1, real1
	movq	%rdx, -136(%rbp)	# imag0, imag0
	movq	%rcx, -144(%rbp)	# imag1, imag1
	movq	%r8, -152(%rbp)	# realr, realr
	movq	%r9, -160(%rbp)	# imagr, imagr
	.loc 1 364 0
	movq	optab_table(%rip), %rax	# optab_table, tmp64
	movq	%rax, -56(%rbp)	# tmp64, this_add_optab
	.loc 1 365 0
	movq	optab_table+16(%rip), %rax	# optab_table, tmp65
	movq	%rax, -48(%rbp)	# tmp65, this_sub_optab
	.loc 1 366 0
	movq	optab_table+256(%rip), %rax	# optab_table, tmp66
	movq	%rax, -40(%rbp)	# tmp66, this_neg_optab
	.loc 1 367 0
	movq	optab_table+32(%rip), %rax	# optab_table, tmp67
	movq	%rax, -32(%rbp)	# tmp67, this_mul_optab
	.loc 1 369 0
	movq	optab_table+88(%rip), %rax	# optab_table, D.18054
	cmpq	48(%rbp), %rax	# binoptab, D.18054
	jne	.L50	#,
	.loc 1 371 0
	movq	optab_table+8(%rip), %rax	# optab_table, tmp68
	movq	%rax, -56(%rbp)	# tmp68, this_add_optab
	.loc 1 372 0
	movq	optab_table+24(%rip), %rax	# optab_table, tmp69
	movq	%rax, -48(%rbp)	# tmp69, this_sub_optab
	.loc 1 373 0
	movq	optab_table+264(%rip), %rax	# optab_table, tmp70
	movq	%rax, -40(%rbp)	# tmp70, this_neg_optab
	.loc 1 374 0
	movq	optab_table+40(%rip), %rax	# optab_table, tmp71
	movq	%rax, -32(%rbp)	# tmp71, this_mul_optab
.L50:
	.loc 1 378 0
	movq	-120(%rbp), %rax	# real0, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -120(%rbp)	# tmp73, real0
	.loc 1 379 0
	movq	-128(%rbp), %rax	# real1, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -128(%rbp)	# tmp75, real1
	.loc 1 381 0
	cmpq	$0, -136(%rbp)	#, imag0
	je	.L51	#,
	.loc 1 382 0
	movq	-136(%rbp), %rax	# imag0, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -136(%rbp)	# tmp77, imag0
.L51:
	.loc 1 384 0
	movq	-144(%rbp), %rax	# imag1, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	16(%rbp), %edi	# submode,
	call	force_reg	#
	movq	%rax, -144(%rbp)	# tmp79, imag1
	.loc 1 387 0
	cmpl	$0, 24(%rbp)	#, unsignedp
	je	.L52	#,
	.loc 1 389 0
	movq	-128(%rbp), %rax	# real1, tmp80
	movq	%rax, -80(%rbp)	# tmp80, temp1
	.loc 1 390 0
	movq	-144(%rbp), %rax	# imag1, tmp81
	movq	%rax, -72(%rbp)	# tmp81, temp2
	jmp	.L53	#
.L52:
	.loc 1 394 0
	movl	24(%rbp), %edx	# unsignedp, tmp82
	movq	-128(%rbp), %rax	# real1, tmp83
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# tmp82,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp83,
	movl	16(%rbp), %edi	# submode,
	call	expand_abs	#
	movq	%rax, -80(%rbp)	# tmp84, temp1
	.loc 1 395 0
	movl	24(%rbp), %edx	# unsignedp, tmp85
	movq	-144(%rbp), %rax	# imag1, tmp86
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# tmp85,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp86,
	movl	16(%rbp), %edi	# submode,
	call	expand_abs	#
	movq	%rax, -72(%rbp)	# tmp87, temp2
.L53:
	.loc 1 398 0
	cmpq	$0, -80(%rbp)	#, temp1
	je	.L54	#,
	.loc 1 398 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, temp2
	jne	.L55	#,
.L54:
	.loc 1 399 0 is_stmt 1
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L55:
	.loc 1 401 0
	movq	-80(%rbp), %rax	# temp1, tmp88
	movzbl	2(%rax), %eax	# temp1_8->mode, D.18055
	movzbl	%al, %eax	# D.18055, tmp89
	movl	%eax, -108(%rbp)	# tmp89, mode
	.loc 1 402 0
	call	gen_label_rtx	#
	movq	%rax, -24(%rbp)	# tmp90, lab1
	.loc 1 403 0
	movl	24(%rbp), %edi	# unsignedp, tmp91
	movl	-108(%rbp), %ecx	# mode, tmp92
	movq	-72(%rbp), %rsi	# temp2, tmp93
	movq	-80(%rbp), %rax	# temp1, tmp94
	movq	-24(%rbp), %rdx	# lab1, tmp95
	movq	%rdx, (%rsp)	# tmp95,
	movl	%edi, %r9d	# tmp91,
	movl	%ecx, %r8d	# tmp92,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp94,
	call	emit_cmp_and_jump_insns	#
	.loc 1 408 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L57	#,
	.loc 1 409 0
	movl	24(%rbp), %edi	# unsignedp, tmp96
	movq	-128(%rbp), %rcx	# real1, tmp97
	movq	-144(%rbp), %rdx	# imag1, tmp98
	movq	48(%rbp), %rax	# binoptab, tmp99
	movl	32(%rbp), %esi	# methods, tmp100
	movl	%esi, (%rsp)	# tmp100,
	movl	%edi, %r9d	# tmp96,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp99,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp101, ratio
	jmp	.L58	#
.L57:
	.loc 1 412 0
	movq	-128(%rbp), %rcx	# real1, tmp102
	movq	-144(%rbp), %rax	# imag1, tmp103
	movl	24(%rbp), %edx	# unsignedp, tmp104
	movl	%edx, (%rsp)	# tmp104,
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp102,
	movq	%rax, %rcx	# tmp103,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -104(%rbp)	# tmp105, ratio
.L58:
	.loc 1 415 0
	cmpq	$0, -104(%rbp)	#, ratio
	jne	.L59	#,
	.loc 1 416 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L59:
	.loc 1 420 0
	movl	24(%rbp), %edi	# unsignedp, tmp106
	movq	-104(%rbp), %rcx	# ratio, tmp107
	movq	-144(%rbp), %rdx	# imag1, tmp108
	movq	-32(%rbp), %rax	# this_mul_optab, tmp109
	movl	32(%rbp), %esi	# methods, tmp110
	movl	%esi, (%rsp)	# tmp110,
	movl	%edi, %r9d	# tmp106,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp109,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp111, temp1
	.loc 1 423 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L60	#,
	.loc 1 424 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L60:
	.loc 1 426 0
	movl	24(%rbp), %edi	# unsignedp, tmp112
	movq	-128(%rbp), %rcx	# real1, tmp113
	movq	-80(%rbp), %rdx	# temp1, tmp114
	movq	-56(%rbp), %rax	# this_add_optab, tmp115
	movl	32(%rbp), %esi	# methods, tmp116
	movl	%esi, (%rsp)	# tmp116,
	movl	%edi, %r9d	# tmp112,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp115,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp117, divisor
	.loc 1 429 0
	cmpq	$0, -16(%rbp)	#, divisor
	jne	.L61	#,
	.loc 1 430 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L61:
	.loc 1 434 0
	cmpq	$0, -136(%rbp)	#, imag0
	jne	.L62	#,
	.loc 1 436 0
	movq	-120(%rbp), %rax	# real0, tmp118
	movq	%rax, -96(%rbp)	# tmp118, real_t
	.loc 1 440 0
	movl	24(%rbp), %edi	# unsignedp, tmp119
	movq	-104(%rbp), %rcx	# ratio, tmp120
	movq	-120(%rbp), %rdx	# real0, tmp121
	movq	-32(%rbp), %rax	# this_mul_optab, tmp122
	movl	32(%rbp), %esi	# methods, tmp123
	movl	%esi, (%rsp)	# tmp123,
	movl	%edi, %r9d	# tmp119,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp122,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -88(%rbp)	# tmp124, imag_t
	.loc 1 443 0
	cmpq	$0, -88(%rbp)	#, imag_t
	jne	.L63	#,
	.loc 1 444 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L63:
	.loc 1 446 0
	movl	24(%rbp), %ecx	# unsignedp, tmp125
	movq	-88(%rbp), %rdx	# imag_t, tmp126
	movq	-40(%rbp), %rax	# this_neg_optab, tmp127
	movl	%ecx, %r8d	# tmp125,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp127,
	movl	16(%rbp), %edi	# submode,
	call	expand_unop	#
	movq	%rax, -88(%rbp)	# tmp128, imag_t
	.loc 1 449 0
	cmpq	$0, -96(%rbp)	#, real_t
	je	.L64	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, imag_t
	jne	.L65	#,
.L64:
	.loc 1 450 0 is_stmt 1
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L62:
	.loc 1 457 0
	movl	24(%rbp), %edi	# unsignedp, tmp129
	movq	-104(%rbp), %rcx	# ratio, tmp130
	movq	-136(%rbp), %rdx	# imag0, tmp131
	movq	-32(%rbp), %rax	# this_mul_optab, tmp132
	movl	32(%rbp), %esi	# methods, tmp133
	movl	%esi, (%rsp)	# tmp133,
	movl	%edi, %r9d	# tmp129,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp132,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp134, temp1
	.loc 1 460 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L66	#,
	.loc 1 461 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L66:
	.loc 1 463 0
	movl	24(%rbp), %edi	# unsignedp, tmp135
	movq	-120(%rbp), %rcx	# real0, tmp136
	movq	-80(%rbp), %rdx	# temp1, tmp137
	movq	-56(%rbp), %rax	# this_add_optab, tmp138
	movl	32(%rbp), %esi	# methods, tmp139
	movl	%esi, (%rsp)	# tmp139,
	movl	%edi, %r9d	# tmp135,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp138,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp140, real_t
	.loc 1 466 0
	movl	24(%rbp), %edi	# unsignedp, tmp141
	movq	-104(%rbp), %rcx	# ratio, tmp142
	movq	-120(%rbp), %rdx	# real0, tmp143
	movq	-32(%rbp), %rax	# this_mul_optab, tmp144
	movl	32(%rbp), %esi	# methods, tmp145
	movl	%esi, (%rsp)	# tmp145,
	movl	%edi, %r9d	# tmp141,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp144,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp146, temp1
	.loc 1 469 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L67	#,
	.loc 1 470 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L67:
	.loc 1 472 0
	movl	24(%rbp), %edi	# unsignedp, tmp147
	movq	-80(%rbp), %rcx	# temp1, tmp148
	movq	-136(%rbp), %rdx	# imag0, tmp149
	movq	-48(%rbp), %rax	# this_sub_optab, tmp150
	movl	32(%rbp), %esi	# methods, tmp151
	movl	%esi, (%rsp)	# tmp151,
	movl	%edi, %r9d	# tmp147,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp150,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -88(%rbp)	# tmp152, imag_t
	.loc 1 475 0
	cmpq	$0, -96(%rbp)	#, real_t
	je	.L68	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, imag_t
	jne	.L65	#,
.L68:
	.loc 1 476 0 is_stmt 1
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L65:
	.loc 1 479 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L69	#,
	.loc 1 480 0
	movl	24(%rbp), %r8d	# unsignedp, tmp153
	movq	-152(%rbp), %rdi	# realr, tmp154
	movq	-16(%rbp), %rcx	# divisor, tmp155
	movq	-96(%rbp), %rdx	# real_t, tmp156
	movq	48(%rbp), %rax	# binoptab, tmp157
	movl	32(%rbp), %esi	# methods, tmp158
	movl	%esi, (%rsp)	# tmp158,
	movl	%r8d, %r9d	# tmp153,
	movq	%rdi, %r8	# tmp154,
	movq	%rax, %rsi	# tmp157,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp159, res
	jmp	.L70	#
.L69:
	.loc 1 483 0
	movq	-152(%rbp), %rsi	# realr, tmp160
	movq	-16(%rbp), %rcx	# divisor, tmp161
	movq	-96(%rbp), %rax	# real_t, tmp162
	movl	24(%rbp), %edx	# unsignedp, tmp163
	movl	%edx, (%rsp)	# tmp163,
	movq	%rsi, %r9	# tmp160,
	movq	%rcx, %r8	# tmp161,
	movq	%rax, %rcx	# tmp162,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp164, res
.L70:
	.loc 1 486 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L71	#,
	.loc 1 487 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L71:
	.loc 1 489 0
	movq	-64(%rbp), %rax	# res, tmp165
	cmpq	-152(%rbp), %rax	# realr, tmp165
	je	.L72	#,
	.loc 1 490 0
	movq	-64(%rbp), %rdx	# res, tmp166
	movq	-152(%rbp), %rax	# realr, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	emit_move_insn	#
.L72:
	.loc 1 492 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L73	#,
	.loc 1 493 0
	movl	24(%rbp), %r8d	# unsignedp, tmp168
	movq	-160(%rbp), %rdi	# imagr, tmp169
	movq	-16(%rbp), %rcx	# divisor, tmp170
	movq	-88(%rbp), %rdx	# imag_t, tmp171
	movq	48(%rbp), %rax	# binoptab, tmp172
	movl	32(%rbp), %esi	# methods, tmp173
	movl	%esi, (%rsp)	# tmp173,
	movl	%r8d, %r9d	# tmp168,
	movq	%rdi, %r8	# tmp169,
	movq	%rax, %rsi	# tmp172,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp174, res
	jmp	.L74	#
.L73:
	.loc 1 496 0
	movq	-160(%rbp), %rsi	# imagr, tmp175
	movq	-16(%rbp), %rcx	# divisor, tmp176
	movq	-88(%rbp), %rax	# imag_t, tmp177
	movl	24(%rbp), %edx	# unsignedp, tmp178
	movl	%edx, (%rsp)	# tmp178,
	movq	%rsi, %r9	# tmp175,
	movq	%rcx, %r8	# tmp176,
	movq	%rax, %rcx	# tmp177,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp179, res
.L74:
	.loc 1 499 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L75	#,
	.loc 1 500 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L75:
	.loc 1 502 0
	movq	-64(%rbp), %rax	# res, tmp180
	cmpq	-160(%rbp), %rax	# imagr, tmp180
	je	.L76	#,
	.loc 1 503 0
	movq	-64(%rbp), %rdx	# res, tmp181
	movq	-160(%rbp), %rax	# imagr, tmp182
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# tmp182,
	call	emit_move_insn	#
.L76:
	.loc 1 505 0
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp183, lab2
	.loc 1 506 0
	movq	-8(%rbp), %rax	# lab2, tmp184
	movq	%rax, %rdi	# tmp184,
	call	gen_jump	#
	movq	%rax, %rdi	# D.18056,
	call	emit_jump_insn	#
	.loc 1 507 0
	call	emit_barrier	#
	.loc 1 509 0
	movq	-24(%rbp), %rax	# lab1, tmp185
	movq	%rax, %rdi	# tmp185,
	call	emit_label	#
	.loc 1 513 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L77	#,
	.loc 1 514 0
	movl	24(%rbp), %edi	# unsignedp, tmp186
	movq	-144(%rbp), %rcx	# imag1, tmp187
	movq	-128(%rbp), %rdx	# real1, tmp188
	movq	48(%rbp), %rax	# binoptab, tmp189
	movl	32(%rbp), %esi	# methods, tmp190
	movl	%esi, (%rsp)	# tmp190,
	movl	%edi, %r9d	# tmp186,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp189,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp191, ratio
	jmp	.L78	#
.L77:
	.loc 1 517 0
	movq	-144(%rbp), %rcx	# imag1, tmp192
	movq	-128(%rbp), %rax	# real1, tmp193
	movl	24(%rbp), %edx	# unsignedp, tmp194
	movl	%edx, (%rsp)	# tmp194,
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp192,
	movq	%rax, %rcx	# tmp193,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -104(%rbp)	# tmp195, ratio
.L78:
	.loc 1 520 0
	cmpq	$0, -104(%rbp)	#, ratio
	jne	.L79	#,
	.loc 1 521 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L79:
	.loc 1 525 0
	movl	24(%rbp), %edi	# unsignedp, tmp196
	movq	-104(%rbp), %rcx	# ratio, tmp197
	movq	-128(%rbp), %rdx	# real1, tmp198
	movq	-32(%rbp), %rax	# this_mul_optab, tmp199
	movl	32(%rbp), %esi	# methods, tmp200
	movl	%esi, (%rsp)	# tmp200,
	movl	%edi, %r9d	# tmp196,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp199,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp201, temp1
	.loc 1 528 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L80	#,
	.loc 1 529 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L80:
	.loc 1 531 0
	movl	24(%rbp), %edi	# unsignedp, tmp202
	movq	-144(%rbp), %rcx	# imag1, tmp203
	movq	-80(%rbp), %rdx	# temp1, tmp204
	movq	-56(%rbp), %rax	# this_add_optab, tmp205
	movl	32(%rbp), %esi	# methods, tmp206
	movl	%esi, (%rsp)	# tmp206,
	movl	%edi, %r9d	# tmp202,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp205,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp207, divisor
	.loc 1 534 0
	cmpq	$0, -16(%rbp)	#, divisor
	jne	.L81	#,
	.loc 1 535 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L81:
	.loc 1 539 0
	cmpq	$0, -136(%rbp)	#, imag0
	jne	.L82	#,
	.loc 1 543 0
	movl	24(%rbp), %edi	# unsignedp, tmp208
	movq	-104(%rbp), %rcx	# ratio, tmp209
	movq	-120(%rbp), %rdx	# real0, tmp210
	movq	-32(%rbp), %rax	# this_mul_optab, tmp211
	movl	32(%rbp), %esi	# methods, tmp212
	movl	%esi, (%rsp)	# tmp212,
	movl	%edi, %r9d	# tmp208,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp211,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp213, real_t
	.loc 1 546 0
	movl	24(%rbp), %ecx	# unsignedp, tmp214
	movq	-120(%rbp), %rdx	# real0, tmp215
	movq	-40(%rbp), %rax	# this_neg_optab, tmp216
	movl	%ecx, %r8d	# tmp214,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp216,
	movl	16(%rbp), %edi	# submode,
	call	expand_unop	#
	movq	%rax, -88(%rbp)	# tmp217, imag_t
	.loc 1 549 0
	cmpq	$0, -96(%rbp)	#, real_t
	je	.L83	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, imag_t
	jne	.L84	#,
.L83:
	.loc 1 550 0 is_stmt 1
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L82:
	.loc 1 557 0
	movl	24(%rbp), %edi	# unsignedp, tmp218
	movq	-104(%rbp), %rcx	# ratio, tmp219
	movq	-120(%rbp), %rdx	# real0, tmp220
	movq	-32(%rbp), %rax	# this_mul_optab, tmp221
	movl	32(%rbp), %esi	# methods, tmp222
	movl	%esi, (%rsp)	# tmp222,
	movl	%edi, %r9d	# tmp218,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp221,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp223, temp1
	.loc 1 560 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L85	#,
	.loc 1 561 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L85:
	.loc 1 563 0
	movl	24(%rbp), %edi	# unsignedp, tmp224
	movq	-136(%rbp), %rcx	# imag0, tmp225
	movq	-80(%rbp), %rdx	# temp1, tmp226
	movq	-56(%rbp), %rax	# this_add_optab, tmp227
	movl	32(%rbp), %esi	# methods, tmp228
	movl	%esi, (%rsp)	# tmp228,
	movl	%edi, %r9d	# tmp224,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp227,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp229, real_t
	.loc 1 566 0
	movl	24(%rbp), %edi	# unsignedp, tmp230
	movq	-104(%rbp), %rcx	# ratio, tmp231
	movq	-136(%rbp), %rdx	# imag0, tmp232
	movq	-32(%rbp), %rax	# this_mul_optab, tmp233
	movl	32(%rbp), %esi	# methods, tmp234
	movl	%esi, (%rsp)	# tmp234,
	movl	%edi, %r9d	# tmp230,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp233,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp235, temp1
	.loc 1 569 0
	cmpq	$0, -80(%rbp)	#, temp1
	jne	.L86	#,
	.loc 1 570 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L86:
	.loc 1 572 0
	movl	24(%rbp), %edi	# unsignedp, tmp236
	movq	-120(%rbp), %rcx	# real0, tmp237
	movq	-80(%rbp), %rdx	# temp1, tmp238
	movq	-48(%rbp), %rax	# this_sub_optab, tmp239
	movl	32(%rbp), %esi	# methods, tmp240
	movl	%esi, (%rsp)	# tmp240,
	movl	%edi, %r9d	# tmp236,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# tmp239,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -88(%rbp)	# tmp241, imag_t
	.loc 1 575 0
	cmpq	$0, -96(%rbp)	#, real_t
	je	.L87	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, imag_t
	jne	.L84	#,
.L87:
	.loc 1 576 0 is_stmt 1
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L84:
	.loc 1 579 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L88	#,
	.loc 1 580 0
	movl	24(%rbp), %r8d	# unsignedp, tmp242
	movq	-152(%rbp), %rdi	# realr, tmp243
	movq	-16(%rbp), %rcx	# divisor, tmp244
	movq	-96(%rbp), %rdx	# real_t, tmp245
	movq	48(%rbp), %rax	# binoptab, tmp246
	movl	32(%rbp), %esi	# methods, tmp247
	movl	%esi, (%rsp)	# tmp247,
	movl	%r8d, %r9d	# tmp242,
	movq	%rdi, %r8	# tmp243,
	movq	%rax, %rsi	# tmp246,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp248, res
	jmp	.L89	#
.L88:
	.loc 1 583 0
	movq	-152(%rbp), %rsi	# realr, tmp249
	movq	-16(%rbp), %rcx	# divisor, tmp250
	movq	-96(%rbp), %rax	# real_t, tmp251
	movl	24(%rbp), %edx	# unsignedp, tmp252
	movl	%edx, (%rsp)	# tmp252,
	movq	%rsi, %r9	# tmp249,
	movq	%rcx, %r8	# tmp250,
	movq	%rax, %rcx	# tmp251,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp253, res
.L89:
	.loc 1 586 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L90	#,
	.loc 1 587 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L90:
	.loc 1 589 0
	movq	-64(%rbp), %rax	# res, tmp254
	cmpq	-152(%rbp), %rax	# realr, tmp254
	je	.L91	#,
	.loc 1 590 0
	movq	-64(%rbp), %rdx	# res, tmp255
	movq	-152(%rbp), %rax	# realr, tmp256
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	emit_move_insn	#
.L91:
	.loc 1 592 0
	cmpl	$6, 40(%rbp)	#, class
	jne	.L92	#,
	.loc 1 593 0
	movl	24(%rbp), %r8d	# unsignedp, tmp257
	movq	-160(%rbp), %rdi	# imagr, tmp258
	movq	-16(%rbp), %rcx	# divisor, tmp259
	movq	-88(%rbp), %rdx	# imag_t, tmp260
	movq	48(%rbp), %rax	# binoptab, tmp261
	movl	32(%rbp), %esi	# methods, tmp262
	movl	%esi, (%rsp)	# tmp262,
	movl	%r8d, %r9d	# tmp257,
	movq	%rdi, %r8	# tmp258,
	movq	%rax, %rsi	# tmp261,
	movl	16(%rbp), %edi	# submode,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp263, res
	jmp	.L93	#
.L92:
	.loc 1 596 0
	movq	-160(%rbp), %rsi	# imagr, tmp264
	movq	-16(%rbp), %rcx	# divisor, tmp265
	movq	-88(%rbp), %rax	# imag_t, tmp266
	movl	24(%rbp), %edx	# unsignedp, tmp267
	movl	%edx, (%rsp)	# tmp267,
	movq	%rsi, %r9	# tmp264,
	movq	%rcx, %r8	# tmp265,
	movq	%rax, %rcx	# tmp266,
	movl	16(%rbp), %edx	# submode,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -64(%rbp)	# tmp268, res
.L93:
	.loc 1 599 0
	cmpq	$0, -64(%rbp)	#, res
	jne	.L94	#,
	.loc 1 600 0
	movl	$0, %eax	#, D.18053
	jmp	.L56	#
.L94:
	.loc 1 602 0
	movq	-64(%rbp), %rax	# res, tmp269
	cmpq	-160(%rbp), %rax	# imagr, tmp269
	je	.L95	#,
	.loc 1 603 0
	movq	-64(%rbp), %rdx	# res, tmp270
	movq	-160(%rbp), %rax	# imagr, tmp271
	movq	%rdx, %rsi	# tmp270,
	movq	%rax, %rdi	# tmp271,
	call	emit_move_insn	#
.L95:
	.loc 1 605 0
	movq	-8(%rbp), %rax	# lab2, tmp272
	movq	%rax, %rdi	# tmp272,
	call	emit_label	#
	.loc 1 607 0
	movl	$1, %eax	#, D.18053
.L56:
	.loc 1 608 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	expand_cmplxdiv_wide, .-expand_cmplxdiv_wide
	.section	.rodata
.LC0:
	.string	"optabs.c"
	.text
	.globl	expand_simple_binop
	.type	expand_simple_binop, @function
expand_simple_binop:
.LFB6:
	.loc 1 621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# code, code
	movq	%rdx, -32(%rbp)	# op0, op0
	movq	%rcx, -40(%rbp)	# op1, op1
	movq	%r8, -48(%rbp)	# target, target
	movl	%r9d, -52(%rbp)	# unsignedp, unsignedp
	.loc 1 622 0
	movl	-24(%rbp), %eax	# code, code.10
	cltq
	movq	code_to_optab(,%rax,8), %rax	# code_to_optab, tmp63
	movq	%rax, -8(%rbp)	# tmp63, binop
	.loc 1 623 0
	cmpq	$0, -8(%rbp)	#, binop
	jne	.L97	#,
	.loc 1 624 0
	movl	$__FUNCTION__.13565, %edx	#,
	movl	$624, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L97:
	.loc 1 626 0
	movl	-52(%rbp), %r9d	# unsignedp, tmp64
	movq	-48(%rbp), %r8	# target, tmp65
	movq	-40(%rbp), %rcx	# op1, tmp66
	movq	-32(%rbp), %rdx	# op0, tmp67
	movq	-8(%rbp), %rsi	# binop, tmp68
	movl	-20(%rbp), %eax	# mode, tmp69
	movl	16(%rbp), %edi	# methods, tmp70
	movl	%edi, (%rsp)	# tmp70,
	movl	%eax, %edi	# tmp69,
	call	expand_binop	#
	.loc 1 627 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	expand_simple_binop, .-expand_simple_binop
	.globl	expand_binop
	.type	expand_binop, @function
expand_binop:
.LFB7:
	.loc 1 648 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$808, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -740(%rbp)	# mode, mode
	movq	%rsi, -752(%rbp)	# binoptab, binoptab
	movq	%rdx, -760(%rbp)	# op0, op0
	movq	%rcx, -768(%rbp)	# op1, op1
	movq	%r8, -776(%rbp)	# target, target
	movl	%r9d, -744(%rbp)	# unsignedp, unsignedp
	.loc 1 651 0
	cmpl	$1, 16(%rbp)	#, methods
	je	.L100	#,
	.loc 1 650 0
	cmpl	$3, 16(%rbp)	#, methods
	je	.L100	#,
	.loc 1 651 0
	movl	16(%rbp), %eax	# methods, iftmp.11
	jmp	.L101	#
.L100:
	.loc 1 651 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.11
.L101:
	.loc 1 649 0 is_stmt 1
	movl	%eax, -696(%rbp)	# iftmp.11, next_methods
	.loc 1 655 0
	movl	$0, -724(%rbp)	#, commutative_op
	.loc 1 656 0
	movq	-752(%rbp), %rax	# binoptab, tmp545
	movl	(%rax), %eax	# binoptab_138(D)->code, D.18060
	.loc 1 660 0
	cmpl	$87, %eax	#, D.18060
	je	.L102	#,
	.loc 1 657 0
	movq	-752(%rbp), %rax	# binoptab, tmp546
	movl	(%rax), %eax	# binoptab_138(D)->code, D.18060
	cmpl	$89, %eax	#, D.18060
	je	.L102	#,
	.loc 1 658 0
	movq	-752(%rbp), %rax	# binoptab, tmp547
	movl	(%rax), %eax	# binoptab_138(D)->code, D.18060
	cmpl	$90, %eax	#, D.18060
	je	.L102	#,
	.loc 1 659 0
	movq	-752(%rbp), %rax	# binoptab, tmp548
	movl	(%rax), %eax	# binoptab_138(D)->code, D.18060
	cmpl	$88, %eax	#, D.18060
	je	.L102	#,
	.loc 1 660 0
	movq	-752(%rbp), %rax	# binoptab, tmp549
	movl	(%rax), %eax	# binoptab_138(D)->code, D.18060
	cmpl	$91, %eax	#, D.18060
	jne	.L103	#,
.L102:
	.loc 1 660 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.12
	jmp	.L104	#
.L103:
	.loc 1 660 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L104:
	.loc 1 656 0 is_stmt 1
	movl	%eax, -692(%rbp)	# iftmp.12, shift_op
	.loc 1 661 0
	call	get_last_insn	#
	movq	%rax, -440(%rbp)	# tmp550, entry_last
	.loc 1 664 0
	movl	-740(%rbp), %eax	# mode, mode.13
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp552
	movl	%eax, -688(%rbp)	# tmp552, class
	.loc 1 666 0
	movq	-760(%rbp), %rax	# op0, tmp553
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp553,
	call	protect_from_queue	#
	movq	%rax, -760(%rbp)	# tmp554, op0
	.loc 1 667 0
	movq	-768(%rbp), %rax	# op1, tmp555
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp555,
	call	protect_from_queue	#
	movq	%rax, -768(%rbp)	# tmp556, op1
	.loc 1 668 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L105	#,
	.loc 1 669 0
	movq	-776(%rbp), %rax	# target, tmp557
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp557,
	call	protect_from_queue	#
	movq	%rax, -776(%rbp)	# tmp558, target
.L105:
	.loc 1 671 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.14
	testl	%eax, %eax	# flag_force_mem.14
	je	.L106	#,
	.loc 1 673 0
	movq	-760(%rbp), %rax	# op0, tmp559
	movq	%rax, %rdi	# tmp559,
	call	force_not_mem	#
	movq	%rax, -760(%rbp)	# tmp560, op0
	.loc 1 674 0
	movq	-768(%rbp), %rax	# op1, tmp561
	movq	%rax, %rdi	# tmp561,
	call	force_not_mem	#
	movq	%rax, -768(%rbp)	# tmp562, op1
.L106:
	.loc 1 680 0
	movq	optab_table+16(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L107	#,
	.loc 1 680 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op1, tmp563
	movzwl	(%rax), %eax	# op1_8->code, D.18062
	cmpw	$54, %ax	#, D.18062
	jne	.L107	#,
	.loc 1 682 0 is_stmt 1
	movq	-768(%rbp), %rdx	# op1, tmp564
	movl	-740(%rbp), %eax	# mode, tmp565
	movq	%rdx, %rsi	# tmp564,
	movl	%eax, %edi	# tmp565,
	call	negate_rtx	#
	movq	%rax, -768(%rbp)	# tmp566, op1
	.loc 1 683 0
	movq	optab_table(%rip), %rax	# optab_table, tmp567
	movq	%rax, -752(%rbp)	# tmp567, binoptab
.L107:
	.loc 1 688 0
	movq	-760(%rbp), %rax	# op0, tmp568
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$67, %ax	#, D.18062
	je	.L108	#,
	.loc 1 688 0 is_stmt 0 discriminator 2
	movq	-760(%rbp), %rax	# op0, tmp569
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$68, %ax	#, D.18062
	je	.L108	#,
	.loc 1 688 0 discriminator 1
	movq	-760(%rbp), %rax	# op0, tmp570
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$54, %ax	#, D.18062
	je	.L108	#,
	movq	-760(%rbp), %rax	# op0, tmp571
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$55, %ax	#, D.18062
	je	.L108	#,
	movq	-760(%rbp), %rax	# op0, tmp572
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$58, %ax	#, D.18062
	je	.L108	#,
	movq	-760(%rbp), %rax	# op0, tmp573
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$134, %ax	#, D.18062
	je	.L108	#,
	movq	-760(%rbp), %rax	# op0, tmp574
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$56, %ax	#, D.18062
	je	.L108	#,
	movq	-760(%rbp), %rax	# op0, tmp575
	movzwl	(%rax), %eax	# op0_2->code, D.18062
	cmpw	$140, %ax	#, D.18062
	jne	.L109	#,
.L108:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18063
	je	.L109	#,
	.loc 1 689 0 is_stmt 1
	movq	-752(%rbp), %rax	# binoptab, tmp576
	movl	(%rax), %edx	# binoptab_1->code, D.18060
	movq	-760(%rbp), %rax	# op0, tmp577
	movl	%edx, %esi	# D.18060,
	movq	%rax, %rdi	# tmp577,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18063
	jle	.L109	#,
	.loc 1 690 0
	movq	-760(%rbp), %rdx	# op0, tmp578
	movl	-740(%rbp), %eax	# mode, tmp579
	movq	%rdx, %rsi	# tmp578,
	movl	%eax, %edi	# tmp579,
	call	force_reg	#
	movq	%rax, -760(%rbp)	# tmp580, op0
.L109:
	.loc 1 692 0
	movq	-768(%rbp), %rax	# op1, tmp581
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$67, %ax	#, D.18062
	je	.L110	#,
	.loc 1 692 0 is_stmt 0 discriminator 2
	movq	-768(%rbp), %rax	# op1, tmp582
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$68, %ax	#, D.18062
	je	.L110	#,
	.loc 1 692 0 discriminator 1
	movq	-768(%rbp), %rax	# op1, tmp583
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$54, %ax	#, D.18062
	je	.L110	#,
	movq	-768(%rbp), %rax	# op1, tmp584
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$55, %ax	#, D.18062
	je	.L110	#,
	movq	-768(%rbp), %rax	# op1, tmp585
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$58, %ax	#, D.18062
	je	.L110	#,
	movq	-768(%rbp), %rax	# op1, tmp586
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$134, %ax	#, D.18062
	je	.L110	#,
	movq	-768(%rbp), %rax	# op1, tmp587
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$56, %ax	#, D.18062
	je	.L110	#,
	movq	-768(%rbp), %rax	# op1, tmp588
	movzwl	(%rax), %eax	# op1_9->code, D.18062
	cmpw	$140, %ax	#, D.18062
	jne	.L111	#,
.L110:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18063
	je	.L111	#,
	.loc 1 693 0 is_stmt 1
	cmpl	$0, -692(%rbp)	#, shift_op
	jne	.L111	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	-752(%rbp), %rax	# binoptab, tmp589
	movl	(%rax), %edx	# binoptab_1->code, D.18060
	movq	-768(%rbp), %rax	# op1, tmp590
	movl	%edx, %esi	# D.18060,
	movq	%rax, %rdi	# tmp590,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18063
	jle	.L111	#,
	.loc 1 694 0 is_stmt 1
	movq	-768(%rbp), %rdx	# op1, tmp591
	movl	-740(%rbp), %eax	# mode, tmp592
	movq	%rdx, %rsi	# tmp591,
	movl	%eax, %edi	# tmp592,
	call	force_reg	#
	movq	%rax, -768(%rbp)	# tmp593, op1
.L111:
	.loc 1 697 0
	call	get_last_insn	#
	movq	%rax, -432(%rbp)	# tmp594, last
	.loc 1 703 0
	movq	-752(%rbp), %rax	# binoptab, tmp595
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18064
	cmpb	$99, %al	#, D.18064
	je	.L112	#,
	.loc 1 704 0
	movq	optab_table+64(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L112	#,
	.loc 1 705 0
	movq	optab_table+72(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L112	#,
	.loc 1 706 0
	movq	optab_table+48(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L112	#,
	.loc 1 707 0
	movq	optab_table+56(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L113	#,
.L112:
	.loc 1 709 0
	movl	$1, -724(%rbp)	#, commutative_op
	.loc 1 711 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L114	#,
	.loc 1 711 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp597
	movzwl	(%rax), %eax	# target_14->code, D.18062
	cmpw	$61, %ax	#, D.18062
	jne	.L115	#,
.L114:
	.loc 1 712 0 is_stmt 1
	movq	-768(%rbp), %rax	# op1, tmp598
	movzwl	(%rax), %eax	# op1_10->code, D.18062
	.loc 1 714 0
	cmpw	$61, %ax	#, D.18062
	jne	.L116	#,
	.loc 1 713 0
	movq	-760(%rbp), %rax	# op0, tmp599
	movzwl	(%rax), %eax	# op0_3->code, D.18062
	cmpw	$61, %ax	#, D.18062
	jne	.L117	#,
.L116:
	.loc 1 714 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp600
	cmpq	-768(%rbp), %rax	# op1, tmp600
	jne	.L118	#,
.L117:
	.loc 1 714 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.15
	jmp	.L119	#
.L118:
	.loc 1 714 0 discriminator 3
	movl	$0, %eax	#, iftmp.15
.L119:
	.loc 1 716 0 is_stmt 1
	andl	$1, %eax	#, D.18065
	.loc 1 711 0
	testb	%al, %al	# D.18065
	jne	.L120	#,
	.loc 1 711 0 is_stmt 0 discriminator 2
	jmp	.L121	#
.L115:
	.loc 1 715 0 is_stmt 1
	movq	-776(%rbp), %rdx	# target, tmp601
	movq	-768(%rbp), %rax	# op1, tmp602
	movq	%rdx, %rsi	# tmp601,
	movq	%rax, %rdi	# tmp602,
	call	rtx_equal_p	#
	.loc 1 716 0
	testl	%eax, %eax	# D.18063
	jne	.L120	#,
.L121:
	.loc 1 716 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# op0, tmp603
	movzwl	(%rax), %eax	# op0_3->code, D.18062
	cmpw	$54, %ax	#, D.18062
	jne	.L113	#,
.L120:
	.loc 1 718 0 is_stmt 1
	movq	-768(%rbp), %rax	# op1, tmp604
	movq	%rax, -624(%rbp)	# tmp604, temp
	.loc 1 719 0
	movq	-760(%rbp), %rax	# op0, tmp605
	movq	%rax, -768(%rbp)	# tmp605, op1
	.loc 1 720 0
	movq	-624(%rbp), %rax	# temp, tmp606
	movq	%rax, -760(%rbp)	# tmp606, op0
.L113:
	.loc 1 726 0
	cmpl	$4, 16(%rbp)	#, methods
	je	.L122	#,
	.loc 1 727 0
	movl	-740(%rbp), %edx	# mode, mode.16
	movq	-752(%rbp), %rax	# binoptab, tmp607
	movslq	%edx, %rdx	# mode.16, tmp608
	salq	$4, %rdx	#, tmp609
	addq	%rdx, %rax	# tmp609, tmp610
	movl	8(%rax), %eax	# binoptab_1->handlers[mode.16_208].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L122	#,
.LBB2:
	.loc 1 729 0
	movl	-740(%rbp), %edx	# mode, mode.17
	movq	-752(%rbp), %rax	# binoptab, tmp611
	movslq	%edx, %rdx	# mode.17, tmp612
	salq	$4, %rdx	#, tmp613
	addq	%rdx, %rax	# tmp613, tmp614
	movl	8(%rax), %eax	# binoptab_1->handlers[mode.17_210].insn_code, D.18066
	movl	%eax, -684(%rbp)	# D.18066, icode
	.loc 1 730 0
	movl	-684(%rbp), %eax	# icode, tmp616
	movslq	%eax, %rdx	# tmp616, tmp615
	movq	%rdx, %rax	# tmp615, tmp617
	salq	$2, %rax	#, tmp617
	addq	%rdx, %rax	# tmp615, tmp617
	salq	$3, %rax	#, tmp618
	addq	$insn_data+24, %rax	#, tmp619
	movq	(%rax), %rax	# insn_data[icode_212].operand, D.18067
	addq	$24, %rax	#, D.18067
	movzwl	16(%rax), %eax	# _214->mode, D.18062
	movzwl	%ax, %eax	# D.18062, tmp620
	movl	%eax, -680(%rbp)	# tmp620, mode0
	.loc 1 731 0
	movl	-684(%rbp), %eax	# icode, tmp622
	movslq	%eax, %rdx	# tmp622, tmp621
	movq	%rdx, %rax	# tmp621, tmp623
	salq	$2, %rax	#, tmp623
	addq	%rdx, %rax	# tmp621, tmp623
	salq	$3, %rax	#, tmp624
	addq	$insn_data+24, %rax	#, tmp625
	movq	(%rax), %rax	# insn_data[icode_212].operand, D.18067
	addq	$48, %rax	#, D.18067
	movzwl	16(%rax), %eax	# _218->mode, D.18062
	movzwl	%ax, %eax	# D.18062, tmp626
	movl	%eax, -676(%rbp)	# tmp626, mode1
	.loc 1 733 0
	movq	-760(%rbp), %rax	# op0, tmp627
	movq	%rax, -616(%rbp)	# tmp627, xop0
	movq	-768(%rbp), %rax	# op1, tmp628
	movq	%rax, -608(%rbp)	# tmp628, xop1
	.loc 1 735 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L123	#,
	.loc 1 736 0
	movq	-776(%rbp), %rax	# target, tmp629
	movq	%rax, -624(%rbp)	# tmp629, temp
	jmp	.L124	#
.L123:
	.loc 1 738 0
	movl	-740(%rbp), %eax	# mode, tmp630
	movl	%eax, %edi	# tmp630,
	call	gen_reg_rtx	#
	movq	%rax, -624(%rbp)	# tmp631, temp
.L124:
	.loc 1 742 0
	cmpl	$0, -724(%rbp)	#, commutative_op
	je	.L125	#,
	.loc 1 744 0
	movq	-760(%rbp), %rax	# op0, tmp632
	movzbl	2(%rax), %eax	# op0_4->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-680(%rbp), %eax	# mode0, D.18069
	je	.L125	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op1, tmp633
	movzbl	2(%rax), %eax	# op1_11->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-676(%rbp), %eax	# mode1, D.18069
	je	.L125	#,
	.loc 1 745 0 is_stmt 1
	movq	-760(%rbp), %rax	# op0, tmp634
	movzbl	2(%rax), %eax	# op0_4->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-676(%rbp), %eax	# mode1, D.18069
	jne	.L125	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op1, tmp635
	movzbl	2(%rax), %eax	# op1_11->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-680(%rbp), %eax	# mode0, D.18069
	jne	.L125	#,
.LBB3:
	.loc 1 749 0 is_stmt 1
	movq	-760(%rbp), %rax	# op0, tmp636
	movq	%rax, -424(%rbp)	# tmp636, tmp
	movq	-768(%rbp), %rax	# op1, tmp637
	movq	%rax, -760(%rbp)	# tmp637, op0
	movq	-424(%rbp), %rax	# tmp, tmp638
	movq	%rax, -768(%rbp)	# tmp638, op1
	.loc 1 750 0
	movq	-616(%rbp), %rax	# xop0, tmp639
	movq	%rax, -424(%rbp)	# tmp639, tmp
	movq	-608(%rbp), %rax	# xop1, tmp640
	movq	%rax, -616(%rbp)	# tmp640, xop0
	movq	-424(%rbp), %rax	# tmp, tmp641
	movq	%rax, -608(%rbp)	# tmp641, xop1
.L125:
.LBE3:
	.loc 1 764 0
	movq	-760(%rbp), %rax	# op0, tmp642
	movzbl	2(%rax), %eax	# op0_5->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-680(%rbp), %eax	# mode0, D.18069
	je	.L126	#,
	.loc 1 765 0
	cmpl	$0, -680(%rbp)	#, mode0
	je	.L126	#,
	.loc 1 767 0
	movq	-760(%rbp), %rax	# op0, tmp643
	movzbl	2(%rax), %eax	# op0_5->mode, D.18068
	.loc 1 766 0
	testb	%al, %al	# D.18068
	je	.L127	#,
	.loc 1 768 0
	movq	-760(%rbp), %rax	# op0, tmp644
	movzbl	2(%rax), %eax	# op0_5->mode, D.18068
	.loc 1 766 0
	movzbl	%al, %eax	# D.18068, iftmp.18
	jmp	.L128	#
.L127:
	.loc 1 769 0 discriminator 1
	movl	-740(%rbp), %eax	# mode, mode.20
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18068
	movl	-680(%rbp), %eax	# mode0, mode0.21
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	.loc 1 766 0 discriminator 1
	cmpb	%al, %dl	# D.18068, D.18068
	jbe	.L129	#,
	.loc 1 766 0 is_stmt 0 discriminator 2
	movl	-740(%rbp), %eax	# mode, iftmp.19
	jmp	.L128	#
.L129:
	.loc 1 766 0 discriminator 3
	movl	-680(%rbp), %eax	# mode0, iftmp.19
.L128:
	.loc 1 766 0 discriminator 5
	movl	-744(%rbp), %ecx	# unsignedp, tmp647
	movq	-616(%rbp), %rdx	# xop0, tmp648
	movl	-680(%rbp), %edi	# mode0, tmp649
	movl	%eax, %esi	# iftmp.18,
	call	convert_modes	#
	movq	%rax, -616(%rbp)	# tmp650, xop0
.L126:
	.loc 1 774 0 is_stmt 1
	movq	-608(%rbp), %rax	# xop1, tmp651
	movzbl	2(%rax), %eax	# xop1_37->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-676(%rbp), %eax	# mode1, D.18069
	je	.L131	#,
	.loc 1 775 0
	cmpl	$0, -676(%rbp)	#, mode1
	je	.L131	#,
	.loc 1 777 0
	movq	-768(%rbp), %rax	# op1, tmp652
	movzbl	2(%rax), %eax	# op1_12->mode, D.18068
	.loc 1 776 0
	testb	%al, %al	# D.18068
	je	.L132	#,
	.loc 1 778 0
	movq	-768(%rbp), %rax	# op1, tmp653
	movzbl	2(%rax), %eax	# op1_12->mode, D.18068
	.loc 1 776 0
	movzbl	%al, %eax	# D.18068, iftmp.22
	jmp	.L133	#
.L132:
	.loc 1 779 0 discriminator 1
	movl	-740(%rbp), %eax	# mode, mode.24
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18068
	movl	-676(%rbp), %eax	# mode1, mode1.25
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	.loc 1 776 0 discriminator 1
	cmpb	%al, %dl	# D.18068, D.18068
	jbe	.L134	#,
	.loc 1 780 0
	cmpl	$0, -692(%rbp)	#, shift_op
	jne	.L134	#,
	.loc 1 776 0
	movl	-740(%rbp), %eax	# mode, iftmp.23
	jmp	.L133	#
.L134:
	.loc 1 776 0 is_stmt 0 discriminator 2
	movl	-676(%rbp), %eax	# mode1, iftmp.23
.L133:
	.loc 1 776 0 discriminator 4
	movl	-744(%rbp), %ecx	# unsignedp, tmp656
	movq	-608(%rbp), %rdx	# xop1, tmp657
	movl	-676(%rbp), %edi	# mode1, tmp658
	movl	%eax, %esi	# iftmp.22,
	call	convert_modes	#
	movq	%rax, -608(%rbp)	# tmp659, xop1
.L131:
	.loc 1 788 0 is_stmt 1
	movl	-684(%rbp), %eax	# icode, tmp661
	movslq	%eax, %rdx	# tmp661, tmp660
	movq	%rdx, %rax	# tmp660, tmp662
	salq	$2, %rax	#, tmp662
	addq	%rdx, %rax	# tmp660, tmp662
	salq	$3, %rax	#, tmp663
	addq	$insn_data+24, %rax	#, tmp664
	movq	(%rax), %rax	# insn_data[icode_212].operand, D.18067
	addq	$24, %rax	#, D.18067
	movq	(%rax), %rax	# _267->predicate, D.18070
	movl	-680(%rbp), %ecx	# mode0, tmp665
	movq	-616(%rbp), %rdx	# xop0, tmp666
	movl	%ecx, %esi	# tmp665,
	movq	%rdx, %rdi	# tmp666,
	call	*%rax	# D.18070
	testl	%eax, %eax	# D.18063
	jne	.L136	#,
	.loc 1 789 0
	cmpl	$0, -680(%rbp)	#, mode0
	je	.L136	#,
	.loc 1 790 0
	movq	-616(%rbp), %rdx	# xop0, tmp667
	movl	-680(%rbp), %eax	# mode0, tmp668
	movq	%rdx, %rsi	# tmp667,
	movl	%eax, %edi	# tmp668,
	call	copy_to_mode_reg	#
	movq	%rax, -616(%rbp)	# tmp669, xop0
.L136:
	.loc 1 792 0
	movl	-684(%rbp), %eax	# icode, tmp671
	movslq	%eax, %rdx	# tmp671, tmp670
	movq	%rdx, %rax	# tmp670, tmp672
	salq	$2, %rax	#, tmp672
	addq	%rdx, %rax	# tmp670, tmp672
	salq	$3, %rax	#, tmp673
	addq	$insn_data+24, %rax	#, tmp674
	movq	(%rax), %rax	# insn_data[icode_212].operand, D.18067
	addq	$48, %rax	#, D.18067
	movq	(%rax), %rax	# _272->predicate, D.18070
	movl	-676(%rbp), %ecx	# mode1, tmp675
	movq	-608(%rbp), %rdx	# xop1, tmp676
	movl	%ecx, %esi	# tmp675,
	movq	%rdx, %rdi	# tmp676,
	call	*%rax	# D.18070
	testl	%eax, %eax	# D.18063
	jne	.L137	#,
	.loc 1 793 0
	cmpl	$0, -676(%rbp)	#, mode1
	je	.L137	#,
	.loc 1 794 0
	movq	-608(%rbp), %rdx	# xop1, tmp677
	movl	-676(%rbp), %eax	# mode1, tmp678
	movq	%rdx, %rsi	# tmp677,
	movl	%eax, %edi	# tmp678,
	call	copy_to_mode_reg	#
	movq	%rax, -608(%rbp)	# tmp679, xop1
.L137:
	.loc 1 796 0
	movl	-684(%rbp), %eax	# icode, tmp681
	movslq	%eax, %rdx	# tmp681, tmp680
	movq	%rdx, %rax	# tmp680, tmp682
	salq	$2, %rax	#, tmp682
	addq	%rdx, %rax	# tmp680, tmp682
	salq	$3, %rax	#, tmp683
	addq	$insn_data+24, %rax	#, tmp684
	movq	(%rax), %rax	# insn_data[icode_212].operand, D.18067
	movq	(%rax), %rax	# _276->predicate, D.18070
	movl	-740(%rbp), %ecx	# mode, tmp685
	movq	-624(%rbp), %rdx	# temp, tmp686
	movl	%ecx, %esi	# tmp685,
	movq	%rdx, %rdi	# tmp686,
	call	*%rax	# D.18070
	testl	%eax, %eax	# D.18063
	jne	.L138	#,
	.loc 1 797 0
	movl	-740(%rbp), %eax	# mode, tmp687
	movl	%eax, %edi	# tmp687,
	call	gen_reg_rtx	#
	movq	%rax, -624(%rbp)	# tmp688, temp
.L138:
	.loc 1 799 0
	movl	-684(%rbp), %eax	# icode, tmp690
	movslq	%eax, %rdx	# tmp690, tmp689
	movq	%rdx, %rax	# tmp689, tmp691
	salq	$2, %rax	#, tmp691
	addq	%rdx, %rax	# tmp689, tmp691
	salq	$3, %rax	#, tmp692
	addq	$insn_data+16, %rax	#, tmp693
	movq	(%rax), %rcx	# insn_data[icode_212].genfun, D.18071
	movq	-608(%rbp), %rdx	# xop1, tmp694
	movq	-616(%rbp), %rsi	# xop0, tmp695
	movq	-624(%rbp), %rax	# temp, tmp696
	movq	%rax, %rdi	# tmp696,
	movl	$0, %eax	#,
	call	*%rcx	# D.18071
	movq	%rax, -416(%rbp)	# tmp697, pat
	.loc 1 800 0
	cmpq	$0, -416(%rbp)	#, pat
	je	.L139	#,
	.loc 1 805 0
	movq	-416(%rbp), %rax	# pat, tmp698
	movzwl	(%rax), %eax	# pat_281->code, D.18062
	cmpw	$24, %ax	#, D.18062
	jne	.L140	#,
	.loc 1 806 0
	movq	-752(%rbp), %rax	# binoptab, tmp699
	movl	(%rax), %edx	# binoptab_1->code, D.18060
	movq	-608(%rbp), %rdi	# xop1, tmp700
	movq	-616(%rbp), %rcx	# xop0, tmp701
	movq	-624(%rbp), %rsi	# temp, tmp702
	movq	-416(%rbp), %rax	# pat, tmp703
	movq	%rdi, %r8	# tmp700,
	movq	%rax, %rdi	# tmp703,
	call	add_equal_note	#
	testl	%eax, %eax	# D.18063
	jne	.L140	#,
	.loc 1 808 0
	movq	-432(%rbp), %rax	# last, tmp704
	movq	%rax, %rdi	# tmp704,
	call	delete_insns_since	#
	.loc 1 809 0
	movl	-744(%rbp), %r8d	# unsignedp, tmp705
	movq	-768(%rbp), %rcx	# op1, tmp706
	movq	-760(%rbp), %rdx	# op0, tmp707
	movq	-752(%rbp), %rsi	# binoptab, tmp708
	movl	-740(%rbp), %eax	# mode, tmp709
	movl	16(%rbp), %edi	# methods, tmp710
	movl	%edi, (%rsp)	# tmp710,
	movl	%r8d, %r9d	# tmp705,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp709,
	call	expand_binop	#
	jmp	.L141	#
.L140:
	.loc 1 813 0
	movq	-416(%rbp), %rax	# pat, tmp711
	movq	%rax, %rdi	# tmp711,
	call	emit_insn	#
	.loc 1 814 0
	movq	-624(%rbp), %rax	# temp, D.18059
	jmp	.L141	#
.L139:
	.loc 1 817 0
	movq	-432(%rbp), %rax	# last, tmp712
	movq	%rax, %rdi	# tmp712,
	call	delete_insns_since	#
.L122:
.LBE2:
	.loc 1 823 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L142	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# mode, mode.26
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	testb	%al, %al	# D.18068
	je	.L142	#,
	.loc 1 824 0 is_stmt 1
	cmpl	$0, -744(%rbp)	#, unsignedp
	je	.L143	#,
	.loc 1 824 0 is_stmt 0 discriminator 1
	movq	optab_table+72(%rip), %rax	# optab_table, iftmp.27
	jmp	.L144	#
.L143:
	.loc 1 824 0 discriminator 2
	movq	optab_table+64(%rip), %rax	# optab_table, iftmp.27
.L144:
	.loc 1 825 0 is_stmt 1 discriminator 3
	movl	-740(%rbp), %edx	# mode, mode.28
	movslq	%edx, %rdx	# mode.28, tmp714
	movzbl	mode_wider_mode(%rdx), %edx	# mode_wider_mode, D.18068
	movzbl	%dl, %edx	# D.18068, D.18063
	movslq	%edx, %rdx	# D.18063, tmp715
	salq	$4, %rdx	#, tmp716
	addq	%rdx, %rax	# tmp716, tmp717
	movl	8(%rax), %eax	# iftmp.27_94->handlers[_294].insn_code, D.18066
	.loc 1 824 0 discriminator 3
	cmpl	$1317, %eax	#, D.18066
	je	.L142	#,
	.loc 1 828 0
	cmpl	$0, -744(%rbp)	#, unsignedp
	je	.L145	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movq	optab_table+72(%rip), %rax	# optab_table, iftmp.29
	jmp	.L146	#
.L145:
	.loc 1 828 0 discriminator 2
	movq	optab_table+64(%rip), %rax	# optab_table, iftmp.29
.L146:
	.loc 1 828 0 discriminator 3
	movl	-740(%rbp), %edx	# mode, mode.30
	movslq	%edx, %rdx	# mode.30, tmp718
	movzbl	mode_wider_mode(%rdx), %edx	# mode_wider_mode, D.18068
	movzbl	%dl, %edi	# D.18068, D.18072
	movl	-744(%rbp), %esi	# unsignedp, tmp719
	movq	-768(%rbp), %rcx	# op1, tmp720
	movq	-760(%rbp), %rdx	# op0, tmp721
	movl	$0, (%rsp)	#,
	movl	%esi, %r9d	# tmp719,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# iftmp.29,
	call	expand_binop	#
	movq	%rax, -624(%rbp)	# tmp722, temp
	.loc 1 832 0 is_stmt 1 discriminator 3
	cmpq	$0, -624(%rbp)	#, temp
	je	.L142	#,
	.loc 1 834 0
	movl	-740(%rbp), %eax	# mode, mode.31
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18073
	cmpl	$1, %eax	#, D.18073
	jne	.L147	#,
	.loc 1 835 0
	movq	-624(%rbp), %rdx	# temp, tmp724
	movl	-740(%rbp), %eax	# mode, tmp725
	movq	%rdx, %rsi	# tmp724,
	movl	%eax, %edi	# tmp725,
	call	gen_lowpart	#
	jmp	.L141	#
.L147:
	.loc 1 837 0
	movl	-744(%rbp), %edx	# unsignedp, tmp726
	movq	-624(%rbp), %rcx	# temp, tmp727
	movl	-740(%rbp), %eax	# mode, tmp728
	movq	%rcx, %rsi	# tmp727,
	movl	%eax, %edi	# tmp728,
	call	convert_to_mode	#
	jmp	.L141	#
.L142:
	.loc 1 845 0
	cmpl	$1, -688(%rbp)	#, class
	je	.L148	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	cmpl	$2, -688(%rbp)	#, class
	je	.L148	#,
	cmpl	$6, -688(%rbp)	#, class
	jne	.L149	#,
.L148:
	.loc 1 846 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, methods
	je	.L149	#,
	.loc 1 846 0 is_stmt 0 discriminator 1
	cmpl	$1, 16(%rbp)	#, methods
	je	.L149	#,
	.loc 1 847 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, mode.32
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	movzbl	%al, %eax	# D.18068, tmp730
	movl	%eax, -728(%rbp)	# tmp730, wider_mode
	jmp	.L150	#
.L162:
	.loc 1 850 0
	movl	-728(%rbp), %edx	# wider_mode, wider_mode.33
	movq	-752(%rbp), %rax	# binoptab, tmp731
	movslq	%edx, %rdx	# wider_mode.33, tmp732
	salq	$4, %rdx	#, tmp733
	addq	%rdx, %rax	# tmp733, tmp734
	movl	8(%rax), %eax	# binoptab_1->handlers[wider_mode.33_309].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	jne	.L151	#,
	.loc 1 851 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L152	#,
	.loc 1 852 0
	movl	-728(%rbp), %eax	# wider_mode, wider_mode.34
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	testb	%al, %al	# D.18068
	je	.L152	#,
	.loc 1 853 0
	cmpl	$0, -744(%rbp)	#, unsignedp
	je	.L153	#,
	.loc 1 853 0 is_stmt 0 discriminator 1
	movq	optab_table+72(%rip), %rax	# optab_table, iftmp.35
	jmp	.L154	#
.L153:
	.loc 1 853 0 discriminator 2
	movq	optab_table+64(%rip), %rax	# optab_table, iftmp.35
.L154:
	.loc 1 854 0 is_stmt 1 discriminator 3
	movl	-728(%rbp), %edx	# wider_mode, wider_mode.36
	movslq	%edx, %rdx	# wider_mode.36, tmp736
	movzbl	mode_wider_mode(%rdx), %edx	# mode_wider_mode, D.18068
	movzbl	%dl, %edx	# D.18068, D.18063
	movslq	%edx, %rdx	# D.18063, tmp737
	salq	$4, %rdx	#, tmp738
	addq	%rdx, %rax	# tmp738, tmp739
	movl	8(%rax), %eax	# iftmp.35_96->handlers[_318].insn_code, D.18066
	.loc 1 853 0 discriminator 3
	cmpl	$1317, %eax	#, D.18066
	je	.L152	#,
.L151:
.LBB4:
	.loc 1 857 0
	movq	-760(%rbp), %rax	# op0, tmp740
	movq	%rax, -408(%rbp)	# tmp740, xop0
	movq	-768(%rbp), %rax	# op1, tmp741
	movq	%rax, -400(%rbp)	# tmp741, xop1
	.loc 1 858 0
	movl	$0, -720(%rbp)	#, no_extend
	.loc 1 864 0
	movq	optab_table+152(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	optab_table+144(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 865 0 is_stmt 1
	movq	optab_table+160(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 866 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 866 0 is_stmt 0 discriminator 1
	movq	optab_table+16(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 867 0 is_stmt 1
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L155	#,
	.loc 1 867 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L156	#,
.L155:
	.loc 1 868 0 is_stmt 1
	cmpl	$1, -688(%rbp)	#, class
	jne	.L156	#,
	.loc 1 869 0
	movl	$1, -720(%rbp)	#, no_extend
.L156:
	.loc 1 871 0
	movl	-720(%rbp), %edi	# no_extend, tmp742
	movl	-744(%rbp), %ecx	# unsignedp, tmp743
	movl	-740(%rbp), %edx	# mode, tmp744
	movl	-728(%rbp), %esi	# wider_mode, tmp745
	movq	-408(%rbp), %rax	# xop0, tmp746
	movl	%edi, %r8d	# tmp742,
	movq	%rax, %rdi	# tmp746,
	call	widen_operand	#
	movq	%rax, -408(%rbp)	# tmp747, xop0
	.loc 1 874 0
	cmpl	$0, -720(%rbp)	#, no_extend
	je	.L157	#,
	.loc 1 875 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	.loc 1 874 0 discriminator 1
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L157	#,
	.loc 1 874 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.37
	jmp	.L158	#
.L157:
	.loc 1 874 0 discriminator 2
	movl	$0, %eax	#, iftmp.37
.L158:
	.loc 1 874 0 discriminator 4
	movl	-744(%rbp), %ecx	# unsignedp, tmp748
	movl	-740(%rbp), %edx	# mode, tmp749
	movl	-728(%rbp), %esi	# wider_mode, tmp750
	movq	-400(%rbp), %rdi	# xop1, tmp751
	movl	%eax, %r8d	# iftmp.37,
	call	widen_operand	#
	movq	%rax, -400(%rbp)	# tmp752, xop1
	.loc 1 877 0 is_stmt 1 discriminator 4
	movl	-744(%rbp), %edi	# unsignedp, tmp753
	movq	-400(%rbp), %rcx	# xop1, tmp754
	movq	-408(%rbp), %rdx	# xop0, tmp755
	movq	-752(%rbp), %rsi	# binoptab, tmp756
	movl	-728(%rbp), %eax	# wider_mode, tmp757
	movl	$0, (%rsp)	#,
	movl	%edi, %r9d	# tmp753,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp757,
	call	expand_binop	#
	movq	%rax, -624(%rbp)	# tmp758, temp
	.loc 1 879 0 discriminator 4
	cmpq	$0, -624(%rbp)	#, temp
	je	.L159	#,
	.loc 1 881 0
	cmpl	$1, -688(%rbp)	#, class
	je	.L160	#,
	.loc 1 883 0
	cmpq	$0, -776(%rbp)	#, target
	jne	.L161	#,
	.loc 1 884 0
	movl	-740(%rbp), %eax	# mode, tmp759
	movl	%eax, %edi	# tmp759,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp760, target
.L161:
	.loc 1 885 0
	movq	-624(%rbp), %rcx	# temp, tmp761
	movq	-776(%rbp), %rax	# target, tmp762
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp761,
	movq	%rax, %rdi	# tmp762,
	call	convert_move	#
	.loc 1 886 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L160:
	.loc 1 889 0
	movq	-624(%rbp), %rdx	# temp, tmp763
	movl	-740(%rbp), %eax	# mode, tmp764
	movq	%rdx, %rsi	# tmp763,
	movl	%eax, %edi	# tmp764,
	call	gen_lowpart	#
	jmp	.L141	#
.L159:
	.loc 1 892 0
	movq	-432(%rbp), %rax	# last, tmp765
	movq	%rax, %rdi	# tmp765,
	call	delete_insns_since	#
.L152:
.LBE4:
	.loc 1 848 0
	movl	-728(%rbp), %eax	# wider_mode, wider_mode.38
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	movzbl	%al, %eax	# D.18068, tmp767
	movl	%eax, -728(%rbp)	# tmp767, wider_mode
.L150:
	.loc 1 847 0 discriminator 1
	cmpl	$0, -728(%rbp)	#, wider_mode
	jne	.L162	#,
.L149:
	.loc 1 897 0
	movq	optab_table+144(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L163	#,
	.loc 1 897 0 is_stmt 0 discriminator 1
	movq	optab_table+152(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L163	#,
	movq	optab_table+160(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L164	#,
.L163:
	.loc 1 898 0 is_stmt 1
	cmpl	$1, -688(%rbp)	#, class
	jne	.L164	#,
	.loc 1 899 0
	movl	-740(%rbp), %eax	# mode, mode.39
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	movzbl	%al, %edx	# D.18068, D.18063
	movl	target_flags(%rip), %eax	# target_flags, target_flags.41
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L165	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.40
	jmp	.L166	#
.L165:
	.loc 1 899 0 discriminator 2
	movl	$4, %eax	#, iftmp.40
.L166:
	.loc 1 899 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.40, D.18063
	jle	.L164	#,
	.loc 1 900 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.42
	movl	%eax, %edx	# word_mode.42, word_mode.43
	movq	-752(%rbp), %rax	# binoptab, tmp769
	movslq	%edx, %rdx	# word_mode.43, tmp770
	salq	$4, %rdx	#, tmp771
	addq	%rdx, %rax	# tmp771, tmp772
	movl	8(%rax), %eax	# binoptab_1->handlers[word_mode.43_354].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L164	#,
.LBB5:
	.loc 1 908 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L167	#,
	.loc 1 908 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp773
	cmpq	-760(%rbp), %rax	# op0, tmp773
	je	.L167	#,
	movq	-776(%rbp), %rax	# target, tmp774
	cmpq	-768(%rbp), %rax	# op1, tmp774
	jne	.L168	#,
.L167:
	.loc 1 909 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, tmp775
	movl	%eax, %edi	# tmp775,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp776, target
.L168:
	.loc 1 911 0
	call	start_sequence	#
	.loc 1 914 0
	movl	$0, -716(%rbp)	#, i
	jmp	.L169	#
.L175:
.LBB6:
	.loc 1 916 0
	movl	-716(%rbp), %esi	# i, i.44
	movl	-740(%rbp), %edx	# mode, tmp777
	movq	-776(%rbp), %rax	# target, tmp778
	movl	%edx, %ecx	# tmp777,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp778,
	call	operand_subword	#
	movq	%rax, -392(%rbp)	# tmp779, target_piece
	.loc 1 917 0
	movl	-716(%rbp), %ecx	# i, i.45
	movl	-740(%rbp), %edx	# mode, tmp780
	movq	-768(%rbp), %rax	# op1, tmp781
	movl	%ecx, %esi	# i.45,
	movq	%rax, %rdi	# tmp781,
	call	operand_subword_force	#
	movq	%rax, %rbx	#, D.18074
	movl	-716(%rbp), %ecx	# i, i.46
	movl	-740(%rbp), %edx	# mode, tmp782
	movq	-760(%rbp), %rax	# op0, tmp783
	movl	%ecx, %esi	# i.46,
	movq	%rax, %rdi	# tmp783,
	call	operand_subword_force	#
	movq	%rax, %rdx	#, D.18074
	movl	word_mode(%rip), %eax	# word_mode, word_mode.47
	movl	-744(%rbp), %r8d	# unsignedp, tmp784
	movq	-392(%rbp), %rdi	# target_piece, tmp785
	movq	-752(%rbp), %rsi	# binoptab, tmp786
	movl	-696(%rbp), %ecx	# next_methods, tmp787
	movl	%ecx, (%rsp)	# tmp787,
	movl	%r8d, %r9d	# tmp784,
	movq	%rdi, %r8	# tmp785,
	movq	%rbx, %rcx	# D.18074,
	movl	%eax, %edi	# word_mode.47,
	call	expand_binop	#
	movq	%rax, -384(%rbp)	# tmp788, x
	.loc 1 922 0
	cmpq	$0, -384(%rbp)	#, x
	jne	.L170	#,
	.loc 1 923 0
	jmp	.L171	#
.L170:
	.loc 1 925 0
	movq	-392(%rbp), %rax	# target_piece, tmp789
	cmpq	-384(%rbp), %rax	# x, tmp789
	je	.L172	#,
	.loc 1 926 0
	movq	-384(%rbp), %rdx	# x, tmp790
	movq	-392(%rbp), %rax	# target_piece, tmp791
	movq	%rdx, %rsi	# tmp790,
	movq	%rax, %rdi	# tmp791,
	call	emit_move_insn	#
.L172:
.LBE6:
	.loc 1 914 0
	addl	$1, -716(%rbp)	#, i
.L169:
	.loc 1 914 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# mode, mode.48
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18062
	movzwl	%ax, %eax	# D.18062, D.18063
	movl	target_flags(%rip), %edx	# target_flags, target_flags.50
	andl	$33554432, %edx	#, D.18063
	testl	%edx, %edx	# D.18063
	je	.L173	#,
	movl	$64, %ebx	#, iftmp.49
	jmp	.L174	#
.L173:
	.loc 1 914 0 discriminator 2
	movl	$32, %ebx	#, iftmp.49
.L174:
	.loc 1 914 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.49
	cmpl	-716(%rbp), %eax	# i, D.18063
	jg	.L175	#,
.L171:
	.loc 1 929 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -376(%rbp)	# tmp795, insns
	.loc 1 930 0
	call	end_sequence	#
	.loc 1 932 0
	movl	-740(%rbp), %eax	# mode, mode.51
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18062
	movzwl	%ax, %eax	# D.18062, D.18063
	movl	target_flags(%rip), %edx	# target_flags, target_flags.53
	andl	$33554432, %edx	#, D.18063
	testl	%edx, %edx	# D.18063
	je	.L176	#,
	.loc 1 932 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.52
	jmp	.L177	#
.L176:
	.loc 1 932 0 discriminator 2
	movl	$32, %ebx	#, iftmp.52
.L177:
	.loc 1 932 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.52
	cmpl	-716(%rbp), %eax	# i, D.18063
	jne	.L164	#,
	.loc 1 934 0 is_stmt 1
	movq	-752(%rbp), %rax	# binoptab, tmp799
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	testl	%eax, %eax	# D.18060
	je	.L178	#,
	.loc 1 936 0
	movq	-768(%rbp), %rax	# op1, tmp800
	movq	%rax, %rdi	# tmp800,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.18074
	movq	-760(%rbp), %rax	# op0, tmp801
	movq	%rax, %rdi	# tmp801,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18074
	movq	-752(%rbp), %rax	# binoptab, tmp802
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movl	-740(%rbp), %esi	# mode, tmp803
	movq	%rbx, %rcx	# D.18074,
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -600(%rbp)	# tmp804, equiv_value
	jmp	.L179	#
.L178:
	.loc 1 939 0
	movq	$0, -600(%rbp)	#, equiv_value
.L179:
	.loc 1 941 0
	movq	-600(%rbp), %rdi	# equiv_value, tmp805
	movq	-768(%rbp), %rcx	# op1, tmp806
	movq	-760(%rbp), %rdx	# op0, tmp807
	movq	-776(%rbp), %rsi	# target, tmp808
	movq	-376(%rbp), %rax	# insns, tmp809
	movq	%rdi, %r8	# tmp805,
	movq	%rax, %rdi	# tmp809,
	call	emit_no_conflict_block	#
	.loc 1 942 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L164:
.LBE5:
	.loc 1 947 0
	movq	optab_table+176(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L180	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L180	#,
	.loc 1 948 0 is_stmt 1
	movq	optab_table+184(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L181	#,
.L180:
	.loc 1 949 0
	cmpl	$1, -688(%rbp)	#, class
	jne	.L181	#,
	.loc 1 950 0
	movq	-768(%rbp), %rax	# op1, tmp810
	movzwl	(%rax), %eax	# op1_13->code, D.18062
	cmpw	$54, %ax	#, D.18062
	jne	.L181	#,
	.loc 1 951 0
	movl	-740(%rbp), %eax	# mode, mode.54
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	movzbl	%al, %edx	# D.18068, D.18063
	movl	target_flags(%rip), %eax	# target_flags, target_flags.56
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L182	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.55
	jmp	.L183	#
.L182:
	.loc 1 951 0 discriminator 2
	movl	$8, %eax	#, iftmp.55
.L183:
	.loc 1 951 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.55, D.18063
	jne	.L181	#,
	.loc 1 952 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.57
	movl	%eax, %edx	# word_mode.57, word_mode.58
	movq	-752(%rbp), %rax	# binoptab, tmp812
	movslq	%edx, %rdx	# word_mode.58, tmp813
	salq	$4, %rdx	#, tmp814
	addq	%rdx, %rax	# tmp814, tmp815
	movl	8(%rax), %eax	# binoptab_1->handlers[word_mode.58_403].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L181	#,
	.loc 1 953 0
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.59
	movslq	%edx, %rdx	# word_mode.60, tmp816
	salq	$4, %rdx	#, tmp817
	addq	%rdx, %rax	# tmp817, tmp818
	movl	8(%rax), %eax	# _405->handlers[word_mode.60_407].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L181	#,
	.loc 1 954 0
	movq	optab_table+176(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.61
	movslq	%edx, %rdx	# word_mode.62, tmp819
	salq	$4, %rdx	#, tmp820
	addq	%rdx, %rax	# tmp820, tmp821
	movl	8(%rax), %eax	# _409->handlers[word_mode.62_411].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L181	#,
.LBB7:
	.loc 1 963 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L184	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp822
	cmpq	-760(%rbp), %rax	# op0, tmp822
	je	.L184	#,
	movq	-776(%rbp), %rax	# target, tmp823
	cmpq	-768(%rbp), %rax	# op1, tmp823
	jne	.L185	#,
.L184:
	.loc 1 964 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, tmp824
	movl	%eax, %edi	# tmp824,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp825, target
.L185:
	.loc 1 966 0
	call	start_sequence	#
	.loc 1 968 0
	movq	-768(%rbp), %rax	# op1, tmp826
	movq	8(%rax), %rax	# op1_13->fld[0].rtwint, D.18075
	movl	%eax, -672(%rbp)	# D.18075, shift_count
	.loc 1 975 0
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	sete	%al	#, D.18065
	movzbl	%al, %eax	# D.18065, tmp827
	movl	%eax, -668(%rbp)	# tmp827, left_shift
	.loc 1 976 0
	movl	-668(%rbp), %eax	# left_shift, tmp831
	xorl	$1, %eax	#, tmp830
	movl	%eax, -664(%rbp)	# tmp830, outof_word
	.loc 1 978 0
	movl	-664(%rbp), %esi	# outof_word, outof_word.63
	movl	-740(%rbp), %edx	# mode, tmp832
	movq	-776(%rbp), %rax	# target, tmp833
	movl	%edx, %ecx	# tmp832,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp833,
	call	operand_subword	#
	movq	%rax, -368(%rbp)	# tmp834, outof_target
	.loc 1 979 0
	movl	$1, %eax	#, tmp835
	subl	-664(%rbp), %eax	# outof_word, D.18063
	movl	%eax, %esi	# D.18063, D.18069
	movl	-740(%rbp), %edx	# mode, tmp836
	movq	-776(%rbp), %rax	# target, tmp837
	movl	%edx, %ecx	# tmp836,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp837,
	call	operand_subword	#
	movq	%rax, -360(%rbp)	# tmp838, into_target
	.loc 1 981 0
	movl	-664(%rbp), %ecx	# outof_word, outof_word.64
	movl	-740(%rbp), %edx	# mode, tmp839
	movq	-760(%rbp), %rax	# op0, tmp840
	movl	%ecx, %esi	# outof_word.64,
	movq	%rax, %rdi	# tmp840,
	call	operand_subword_force	#
	movq	%rax, -352(%rbp)	# tmp841, outof_input
	.loc 1 982 0
	movl	$1, %eax	#, tmp842
	subl	-664(%rbp), %eax	# outof_word, D.18063
	movl	%eax, %ecx	# D.18063, D.18069
	movl	-740(%rbp), %edx	# mode, tmp843
	movq	-760(%rbp), %rax	# op0, tmp844
	movl	%ecx, %esi	# D.18069,
	movq	%rax, %rdi	# tmp844,
	call	operand_subword_force	#
	movq	%rax, -344(%rbp)	# tmp845, into_input
	.loc 1 984 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.66
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L186	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.65
	jmp	.L187	#
.L186:
	.loc 1 984 0 discriminator 2
	movl	$32, %eax	#, iftmp.65
.L187:
	.loc 1 984 0 discriminator 3
	cmpl	-672(%rbp), %eax	# shift_count, iftmp.65
	jg	.L188	#,
	.loc 1 988 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.68
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L189	#,
	.loc 1 988 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.67
	jmp	.L190	#
.L189:
	.loc 1 988 0 discriminator 2
	movl	$32, %eax	#, iftmp.67
.L190:
	.loc 1 988 0 discriminator 3
	movl	-672(%rbp), %edx	# shift_count, tmp846
	subl	%eax, %edx	# iftmp.67, D.18063
	movl	%edx, %eax	# D.18063, D.18063
	.loc 1 986 0 is_stmt 1 discriminator 3
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.18074
	movl	word_mode(%rip), %eax	# word_mode, word_mode.69
	movl	-744(%rbp), %r9d	# unsignedp, tmp847
	movq	-360(%rbp), %r8	# into_target, tmp848
	movq	-352(%rbp), %rdx	# outof_input, tmp849
	movq	-752(%rbp), %rsi	# binoptab, tmp850
	movl	-696(%rbp), %edi	# next_methods, tmp851
	movl	%edi, (%rsp)	# tmp851,
	movl	%eax, %edi	# word_mode.69,
	call	expand_binop	#
	movq	%rax, -592(%rbp)	# tmp852, inter
	.loc 1 991 0 discriminator 3
	cmpq	$0, -592(%rbp)	#, inter
	je	.L191	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	movq	-592(%rbp), %rax	# inter, tmp853
	cmpq	-360(%rbp), %rax	# into_target, tmp853
	je	.L191	#,
	.loc 1 992 0 is_stmt 1
	movq	-592(%rbp), %rdx	# inter, tmp854
	movq	-360(%rbp), %rax	# into_target, tmp855
	movq	%rdx, %rsi	# tmp854,
	movq	%rax, %rdi	# tmp855,
	call	emit_move_insn	#
.L191:
	.loc 1 996 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L192	#,
	.loc 1 996 0 is_stmt 0 discriminator 1
	movq	optab_table+184(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L192	#,
	.loc 1 997 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.70
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, tmp857
	movq	%rax, -592(%rbp)	# tmp857, inter
	jmp	.L193	#
.L192:
	.loc 1 998 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L193	#,
	.loc 1 1001 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.73
	andl	$33554432, %eax	#, D.18063
	.loc 1 999 0
	testl	%eax, %eax	# D.18063
	je	.L194	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movl	$63, %eax	#, iftmp.72
	jmp	.L195	#
.L194:
	.loc 1 999 0 discriminator 2
	movl	$31, %eax	#, iftmp.72
.L195:
	.loc 1 999 0 discriminator 3
	movq	%rax, %rsi	# iftmp.72,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.18074
	movl	word_mode(%rip), %eax	# word_mode, word_mode.74
	movl	-744(%rbp), %r9d	# unsignedp, tmp858
	movq	-368(%rbp), %r8	# outof_target, tmp859
	movq	-352(%rbp), %rdx	# outof_input, tmp860
	movq	-752(%rbp), %rsi	# binoptab, tmp861
	movl	-696(%rbp), %edi	# next_methods, tmp862
	movl	%edi, (%rsp)	# tmp862,
	movl	%eax, %edi	# word_mode.74,
	call	expand_binop	#
	movq	%rax, -592(%rbp)	# tmp863, inter
.L193:
	.loc 1 1004 0 is_stmt 1
	cmpq	$0, -592(%rbp)	#, inter
	je	.L197	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movq	-592(%rbp), %rax	# inter, tmp864
	cmpq	-368(%rbp), %rax	# outof_target, tmp864
	je	.L197	#,
	.loc 1 1005 0 is_stmt 1
	movq	-592(%rbp), %rdx	# inter, tmp865
	movq	-368(%rbp), %rax	# outof_target, tmp866
	movq	%rdx, %rsi	# tmp865,
	movq	%rax, %rdi	# tmp866,
	call	emit_move_insn	#
	jmp	.L197	#
.L188:
.LBB8:
	.loc 1 1016 0
	cmpl	$0, -668(%rbp)	#, left_shift
	je	.L198	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.75
	jmp	.L199	#
.L198:
	.loc 1 1016 0 discriminator 2
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.75
.L199:
	.loc 1 1016 0 discriminator 3
	movq	%rax, -336(%rbp)	# iftmp.75, reverse_unsigned_shift
	.loc 1 1022 0 is_stmt 1 discriminator 3
	cmpl	$0, -668(%rbp)	#, left_shift
	je	.L200	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.76
	jmp	.L201	#
.L200:
	.loc 1 1022 0 discriminator 2
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.76
.L201:
	.loc 1 1022 0 discriminator 3
	movq	%rax, -328(%rbp)	# iftmp.76, unsigned_shift
	.loc 1 1026 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L202	#,
	.loc 1 1026 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.77
	jmp	.L203	#
.L202:
	.loc 1 1026 0 discriminator 2
	movl	$32, %eax	#, iftmp.77
.L203:
	.loc 1 1026 0 discriminator 3
	subl	-672(%rbp), %eax	# shift_count, D.18063
	.loc 1 1024 0 is_stmt 1 discriminator 3
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.18074
	movl	word_mode(%rip), %eax	# word_mode, word_mode.79
	movl	-744(%rbp), %r8d	# unsignedp, tmp867
	movq	-352(%rbp), %rdx	# outof_input, tmp868
	movq	-336(%rbp), %rsi	# reverse_unsigned_shift, tmp869
	movl	-696(%rbp), %edi	# next_methods, tmp870
	movl	%edi, (%rsp)	# tmp870,
	movl	%r8d, %r9d	# tmp867,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.79,
	call	expand_binop	#
	movq	%rax, -320(%rbp)	# tmp871, carries
	.loc 1 1029 0 discriminator 3
	cmpq	$0, -320(%rbp)	#, carries
	jne	.L204	#,
	.loc 1 1030 0
	movq	$0, -592(%rbp)	#, inter
	jmp	.L205	#
.L204:
	.loc 1 1032 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.80
	movl	-744(%rbp), %r8d	# unsignedp, tmp872
	movq	-768(%rbp), %rcx	# op1, tmp873
	movq	-344(%rbp), %rdx	# into_input, tmp874
	movq	-328(%rbp), %rsi	# unsigned_shift, tmp875
	movl	-696(%rbp), %edi	# next_methods, tmp876
	movl	%edi, (%rsp)	# tmp876,
	movl	%r8d, %r9d	# tmp872,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.80,
	call	expand_binop	#
	movq	%rax, -592(%rbp)	# tmp877, inter
.L205:
	.loc 1 1035 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L206	#,
	.loc 1 1036 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.81
	movl	-744(%rbp), %r9d	# unsignedp, tmp878
	movq	-360(%rbp), %r8	# into_target, tmp879
	movq	-592(%rbp), %rcx	# inter, tmp880
	movq	-320(%rbp), %rdx	# carries, tmp881
	movl	-696(%rbp), %edi	# next_methods, tmp882
	movl	%edi, (%rsp)	# tmp882,
	movl	%eax, %edi	# word_mode.81,
	call	expand_binop	#
	movq	%rax, -592(%rbp)	# tmp883, inter
.L206:
	.loc 1 1039 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L207	#,
	.loc 1 1039 0 is_stmt 0 discriminator 1
	movq	-592(%rbp), %rax	# inter, tmp884
	cmpq	-360(%rbp), %rax	# into_target, tmp884
	je	.L207	#,
	.loc 1 1040 0 is_stmt 1
	movq	-592(%rbp), %rdx	# inter, tmp885
	movq	-360(%rbp), %rax	# into_target, tmp886
	movq	%rdx, %rsi	# tmp885,
	movq	%rax, %rdi	# tmp886,
	call	emit_move_insn	#
.L207:
	.loc 1 1042 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L208	#,
	.loc 1 1043 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.82
	movl	-744(%rbp), %r9d	# unsignedp, tmp887
	movq	-368(%rbp), %r8	# outof_target, tmp888
	movq	-768(%rbp), %rcx	# op1, tmp889
	movq	-352(%rbp), %rdx	# outof_input, tmp890
	movq	-752(%rbp), %rsi	# binoptab, tmp891
	movl	-696(%rbp), %edi	# next_methods, tmp892
	movl	%edi, (%rsp)	# tmp892,
	movl	%eax, %edi	# word_mode.82,
	call	expand_binop	#
	movq	%rax, -592(%rbp)	# tmp893, inter
.L208:
	.loc 1 1046 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L197	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	-592(%rbp), %rax	# inter, tmp894
	cmpq	-368(%rbp), %rax	# outof_target, tmp894
	je	.L197	#,
	.loc 1 1047 0 is_stmt 1
	movq	-592(%rbp), %rdx	# inter, tmp895
	movq	-368(%rbp), %rax	# outof_target, tmp896
	movq	%rdx, %rsi	# tmp895,
	movq	%rax, %rdi	# tmp896,
	call	emit_move_insn	#
.L197:
.LBE8:
	.loc 1 1050 0
	call	get_insns	#
	movq	%rax, -312(%rbp)	# tmp897, insns
	.loc 1 1051 0
	call	end_sequence	#
	.loc 1 1053 0
	cmpq	$0, -592(%rbp)	#, inter
	je	.L181	#,
	.loc 1 1055 0
	movq	-752(%rbp), %rax	# binoptab, tmp898
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	testl	%eax, %eax	# D.18060
	je	.L209	#,
	.loc 1 1056 0
	movq	-752(%rbp), %rax	# binoptab, tmp899
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movq	-768(%rbp), %rcx	# op1, tmp900
	movq	-760(%rbp), %rdx	# op0, tmp901
	movl	-740(%rbp), %esi	# mode, tmp902
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -584(%rbp)	# tmp903, equiv_value
	jmp	.L210	#
.L209:
	.loc 1 1058 0
	movq	$0, -584(%rbp)	#, equiv_value
.L210:
	.loc 1 1060 0
	movq	-584(%rbp), %rdi	# equiv_value, tmp904
	movq	-768(%rbp), %rcx	# op1, tmp905
	movq	-760(%rbp), %rdx	# op0, tmp906
	movq	-776(%rbp), %rsi	# target, tmp907
	movq	-312(%rbp), %rax	# insns, tmp908
	movq	%rdi, %r8	# tmp904,
	movq	%rax, %rdi	# tmp908,
	call	emit_no_conflict_block	#
	.loc 1 1061 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L181:
.LBE7:
	.loc 1 1066 0
	movq	optab_table+192(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L211	#,
	.loc 1 1066 0 is_stmt 0 discriminator 1
	movq	optab_table+200(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L212	#,
.L211:
	.loc 1 1067 0 is_stmt 1
	cmpl	$1, -688(%rbp)	#, class
	jne	.L212	#,
	.loc 1 1068 0
	movq	-768(%rbp), %rax	# op1, tmp909
	movzwl	(%rax), %eax	# op1_13->code, D.18062
	cmpw	$54, %ax	#, D.18062
	jne	.L212	#,
	.loc 1 1069 0
	movl	-740(%rbp), %eax	# mode, mode.83
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	movzbl	%al, %edx	# D.18068, D.18063
	movl	target_flags(%rip), %eax	# target_flags, target_flags.85
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L213	#,
	.loc 1 1069 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.84
	jmp	.L214	#
.L213:
	.loc 1 1069 0 discriminator 2
	movl	$8, %eax	#, iftmp.84
.L214:
	.loc 1 1069 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.84, D.18063
	jne	.L212	#,
	.loc 1 1070 0 is_stmt 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.86
	movslq	%edx, %rdx	# word_mode.87, tmp911
	salq	$4, %rdx	#, tmp912
	addq	%rdx, %rax	# tmp912, tmp913
	movl	8(%rax), %eax	# _493->handlers[word_mode.87_495].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L212	#,
	.loc 1 1071 0
	movq	optab_table+176(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.88
	movslq	%edx, %rdx	# word_mode.89, tmp914
	salq	$4, %rdx	#, tmp915
	addq	%rdx, %rax	# tmp915, tmp916
	movl	8(%rax), %eax	# _497->handlers[word_mode.89_499].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L212	#,
.LBB9:
	.loc 1 1081 0
	cmpq	$0, -776(%rbp)	#, target
	je	.L215	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp917
	cmpq	-760(%rbp), %rax	# op0, tmp917
	je	.L215	#,
	movq	-776(%rbp), %rax	# target, tmp918
	cmpq	-768(%rbp), %rax	# op1, tmp918
	jne	.L216	#,
.L215:
	.loc 1 1082 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, tmp919
	movl	%eax, %edi	# tmp919,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp920, target
.L216:
	.loc 1 1084 0
	call	start_sequence	#
	.loc 1 1086 0
	movq	-768(%rbp), %rax	# op1, tmp921
	movq	8(%rax), %rax	# op1_13->fld[0].rtwint, D.18075
	movl	%eax, -660(%rbp)	# D.18075, shift_count
	.loc 1 1093 0
	movq	optab_table+192(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	sete	%al	#, D.18065
	movzbl	%al, %eax	# D.18065, tmp922
	movl	%eax, -656(%rbp)	# tmp922, left_shift
	.loc 1 1094 0
	movl	-656(%rbp), %eax	# left_shift, tmp926
	xorl	$1, %eax	#, tmp925
	movl	%eax, -652(%rbp)	# tmp925, outof_word
	.loc 1 1096 0
	movl	-652(%rbp), %esi	# outof_word, outof_word.90
	movl	-740(%rbp), %edx	# mode, tmp927
	movq	-776(%rbp), %rax	# target, tmp928
	movl	%edx, %ecx	# tmp927,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp928,
	call	operand_subword	#
	movq	%rax, -304(%rbp)	# tmp929, outof_target
	.loc 1 1097 0
	movl	$1, %eax	#, tmp930
	subl	-652(%rbp), %eax	# outof_word, D.18063
	movl	%eax, %esi	# D.18063, D.18069
	movl	-740(%rbp), %edx	# mode, tmp931
	movq	-776(%rbp), %rax	# target, tmp932
	movl	%edx, %ecx	# tmp931,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp932,
	call	operand_subword	#
	movq	%rax, -296(%rbp)	# tmp933, into_target
	.loc 1 1099 0
	movl	-652(%rbp), %ecx	# outof_word, outof_word.91
	movl	-740(%rbp), %edx	# mode, tmp934
	movq	-760(%rbp), %rax	# op0, tmp935
	movl	%ecx, %esi	# outof_word.91,
	movq	%rax, %rdi	# tmp935,
	call	operand_subword_force	#
	movq	%rax, -288(%rbp)	# tmp936, outof_input
	.loc 1 1100 0
	movl	$1, %eax	#, tmp937
	subl	-652(%rbp), %eax	# outof_word, D.18063
	movl	%eax, %ecx	# D.18063, D.18069
	movl	-740(%rbp), %edx	# mode, tmp938
	movq	-760(%rbp), %rax	# op0, tmp939
	movl	%ecx, %esi	# D.18069,
	movq	%rax, %rdi	# tmp939,
	call	operand_subword_force	#
	movq	%rax, -280(%rbp)	# tmp940, into_input
	.loc 1 1102 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.93
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L217	#,
	.loc 1 1102 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.92
	jmp	.L218	#
.L217:
	.loc 1 1102 0 discriminator 2
	movl	$32, %eax	#, iftmp.92
.L218:
	.loc 1 1102 0 discriminator 3
	cmpl	-660(%rbp), %eax	# shift_count, iftmp.92
	jne	.L219	#,
	.loc 1 1105 0 is_stmt 1
	movq	-280(%rbp), %rdx	# into_input, tmp941
	movq	-304(%rbp), %rax	# outof_target, tmp942
	movq	%rdx, %rsi	# tmp941,
	movq	%rax, %rdi	# tmp942,
	call	emit_move_insn	#
	.loc 1 1106 0
	movq	-288(%rbp), %rdx	# outof_input, tmp943
	movq	-296(%rbp), %rax	# into_target, tmp944
	movq	%rdx, %rsi	# tmp943,
	movq	%rax, %rdi	# tmp944,
	call	emit_move_insn	#
	.loc 1 1107 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp945
	movq	%rax, -568(%rbp)	# tmp945, inter
	jmp	.L220	#
.L219:
.LBB10:
	.loc 1 1115 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.96
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L221	#,
	.loc 1 1115 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.95
	jmp	.L222	#
.L221:
	.loc 1 1115 0 discriminator 2
	movl	$32, %eax	#, iftmp.95
.L222:
	.loc 1 1115 0 discriminator 3
	cmpl	-660(%rbp), %eax	# shift_count, iftmp.95
	setg	%al	#, D.18065
	movzbl	%al, %eax	# D.18065, D.18063
	.loc 1 1116 0 is_stmt 1 discriminator 3
	cmpl	-656(%rbp), %eax	# left_shift, D.18063
	je	.L223	#,
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.94
	jmp	.L224	#
.L223:
	.loc 1 1116 0 discriminator 2
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.94
.L224:
	.loc 1 1115 0 is_stmt 1
	movq	%rax, -272(%rbp)	# iftmp.94, reverse_unsigned_shift
	.loc 1 1118 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.99
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L225	#,
	.loc 1 1118 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.98
	jmp	.L226	#
.L225:
	.loc 1 1118 0 discriminator 2
	movl	$32, %eax	#, iftmp.98
.L226:
	.loc 1 1118 0 discriminator 3
	cmpl	-660(%rbp), %eax	# shift_count, iftmp.98
	setg	%al	#, D.18065
	movzbl	%al, %eax	# D.18065, D.18063
	.loc 1 1119 0 is_stmt 1 discriminator 3
	cmpl	-656(%rbp), %eax	# left_shift, D.18063
	je	.L227	#,
	.loc 1 1119 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.97
	jmp	.L228	#
.L227:
	.loc 1 1119 0 discriminator 2
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.97
.L228:
	.loc 1 1118 0 is_stmt 1
	movq	%rax, -264(%rbp)	# iftmp.97, unsigned_shift
	.loc 1 1121 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.101
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L229	#,
	.loc 1 1121 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.100
	jmp	.L230	#
.L229:
	.loc 1 1121 0 discriminator 2
	movl	$32, %eax	#, iftmp.100
.L230:
	.loc 1 1121 0 discriminator 3
	cmpl	-660(%rbp), %eax	# shift_count, iftmp.100
	jge	.L231	#,
	.loc 1 1123 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.103
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L232	#,
	.loc 1 1123 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.102
	jmp	.L233	#
.L232:
	.loc 1 1123 0 discriminator 2
	movl	$32, %eax	#, iftmp.102
.L233:
	.loc 1 1123 0 discriminator 3
	movl	-660(%rbp), %edx	# shift_count, tmp946
	subl	%eax, %edx	# iftmp.102, D.18063
	movl	%edx, %eax	# D.18063, D.18063
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -560(%rbp)	# tmp947, first_shift_count
	.loc 1 1124 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.105
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L234	#,
	.loc 1 1124 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.104
	jmp	.L235	#
.L234:
	.loc 1 1124 0 discriminator 2
	movl	$64, %eax	#, iftmp.104
.L235:
	.loc 1 1124 0 discriminator 1
	subl	-660(%rbp), %eax	# shift_count, D.18063
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -552(%rbp)	# tmp948, second_shift_count
	jmp	.L236	#
.L231:
	.loc 1 1128 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.107
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L237	#,
	.loc 1 1128 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.106
	jmp	.L238	#
.L237:
	.loc 1 1128 0 discriminator 2
	movl	$32, %eax	#, iftmp.106
.L238:
	.loc 1 1128 0 discriminator 3
	subl	-660(%rbp), %eax	# shift_count, D.18063
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -560(%rbp)	# tmp949, first_shift_count
	.loc 1 1129 0 is_stmt 1 discriminator 3
	movl	-660(%rbp), %eax	# shift_count, tmp950
	cltq
	movq	%rax, %rsi	# D.18075,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -552(%rbp)	# tmp951, second_shift_count
.L236:
	.loc 1 1132 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.108
	movl	-744(%rbp), %r8d	# unsignedp, tmp952
	movq	-560(%rbp), %rcx	# first_shift_count, tmp953
	movq	-288(%rbp), %rdx	# outof_input, tmp954
	movq	-264(%rbp), %rsi	# unsigned_shift, tmp955
	movl	-696(%rbp), %edi	# next_methods, tmp956
	movl	%edi, (%rsp)	# tmp956,
	movl	%r8d, %r9d	# tmp952,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.108,
	call	expand_binop	#
	movq	%rax, -256(%rbp)	# tmp957, into_temp1
	.loc 1 1135 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.109
	movl	-744(%rbp), %r9d	# unsignedp, tmp958
	movq	-296(%rbp), %r8	# into_target, tmp959
	movq	-552(%rbp), %rcx	# second_shift_count, tmp960
	movq	-280(%rbp), %rdx	# into_input, tmp961
	movq	-272(%rbp), %rsi	# reverse_unsigned_shift, tmp962
	movl	-696(%rbp), %edi	# next_methods, tmp963
	movl	%edi, (%rsp)	# tmp963,
	movl	%eax, %edi	# word_mode.109,
	call	expand_binop	#
	movq	%rax, -248(%rbp)	# tmp964, into_temp2
	.loc 1 1139 0
	cmpq	$0, -256(%rbp)	#, into_temp1
	je	.L239	#,
	.loc 1 1139 0 is_stmt 0 discriminator 1
	cmpq	$0, -248(%rbp)	#, into_temp2
	je	.L239	#,
	.loc 1 1140 0 is_stmt 1
	movq	optab_table+152(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.110
	movl	-744(%rbp), %r9d	# unsignedp, tmp965
	movq	-296(%rbp), %r8	# into_target, tmp966
	movq	-248(%rbp), %rcx	# into_temp2, tmp967
	movq	-256(%rbp), %rdx	# into_temp1, tmp968
	movl	-696(%rbp), %edi	# next_methods, tmp969
	movl	%edi, (%rsp)	# tmp969,
	movl	%eax, %edi	# word_mode.110,
	call	expand_binop	#
	movq	%rax, -568(%rbp)	# tmp970, inter
	jmp	.L240	#
.L239:
	.loc 1 1143 0
	movq	$0, -568(%rbp)	#, inter
.L240:
	.loc 1 1145 0
	cmpq	$0, -568(%rbp)	#, inter
	je	.L241	#,
	.loc 1 1145 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# inter, tmp971
	cmpq	-296(%rbp), %rax	# into_target, tmp971
	je	.L241	#,
	.loc 1 1146 0 is_stmt 1
	movq	-568(%rbp), %rdx	# inter, tmp972
	movq	-296(%rbp), %rax	# into_target, tmp973
	movq	%rdx, %rsi	# tmp972,
	movq	%rax, %rdi	# tmp973,
	call	emit_move_insn	#
.L241:
	.loc 1 1148 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.111
	movl	-744(%rbp), %r8d	# unsignedp, tmp974
	movq	-560(%rbp), %rcx	# first_shift_count, tmp975
	movq	-280(%rbp), %rdx	# into_input, tmp976
	movq	-264(%rbp), %rsi	# unsigned_shift, tmp977
	movl	-696(%rbp), %edi	# next_methods, tmp978
	movl	%edi, (%rsp)	# tmp978,
	movl	%r8d, %r9d	# tmp974,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.111,
	call	expand_binop	#
	movq	%rax, -240(%rbp)	# tmp979, outof_temp1
	.loc 1 1151 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.112
	movl	-744(%rbp), %r9d	# unsignedp, tmp980
	movq	-304(%rbp), %r8	# outof_target, tmp981
	movq	-552(%rbp), %rcx	# second_shift_count, tmp982
	movq	-288(%rbp), %rdx	# outof_input, tmp983
	movq	-272(%rbp), %rsi	# reverse_unsigned_shift, tmp984
	movl	-696(%rbp), %edi	# next_methods, tmp985
	movl	%edi, (%rsp)	# tmp985,
	movl	%eax, %edi	# word_mode.112,
	call	expand_binop	#
	movq	%rax, -232(%rbp)	# tmp986, outof_temp2
	.loc 1 1155 0
	cmpq	$0, -568(%rbp)	#, inter
	je	.L242	#,
	.loc 1 1155 0 is_stmt 0 discriminator 1
	cmpq	$0, -240(%rbp)	#, outof_temp1
	je	.L242	#,
	cmpq	$0, -232(%rbp)	#, outof_temp2
	je	.L242	#,
	.loc 1 1156 0 is_stmt 1
	movq	optab_table+152(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.113
	movl	-744(%rbp), %r9d	# unsignedp, tmp987
	movq	-304(%rbp), %r8	# outof_target, tmp988
	movq	-232(%rbp), %rcx	# outof_temp2, tmp989
	movq	-240(%rbp), %rdx	# outof_temp1, tmp990
	movl	-696(%rbp), %edi	# next_methods, tmp991
	movl	%edi, (%rsp)	# tmp991,
	movl	%eax, %edi	# word_mode.113,
	call	expand_binop	#
	movq	%rax, -568(%rbp)	# tmp992, inter
.L242:
	.loc 1 1160 0
	cmpq	$0, -568(%rbp)	#, inter
	je	.L220	#,
	.loc 1 1160 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# inter, tmp993
	cmpq	-304(%rbp), %rax	# outof_target, tmp993
	je	.L220	#,
	.loc 1 1161 0 is_stmt 1
	movq	-568(%rbp), %rdx	# inter, tmp994
	movq	-304(%rbp), %rax	# outof_target, tmp995
	movq	%rdx, %rsi	# tmp994,
	movq	%rax, %rdi	# tmp995,
	call	emit_move_insn	#
.L220:
.LBE10:
	.loc 1 1164 0
	call	get_insns	#
	movq	%rax, -224(%rbp)	# tmp996, insns
	.loc 1 1165 0
	call	end_sequence	#
	.loc 1 1167 0
	cmpq	$0, -568(%rbp)	#, inter
	je	.L212	#,
	.loc 1 1169 0
	movq	-752(%rbp), %rax	# binoptab, tmp997
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	testl	%eax, %eax	# D.18060
	je	.L243	#,
	.loc 1 1170 0
	movq	-752(%rbp), %rax	# binoptab, tmp998
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movq	-768(%rbp), %rcx	# op1, tmp999
	movq	-760(%rbp), %rdx	# op0, tmp1000
	movl	-740(%rbp), %esi	# mode, tmp1001
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -576(%rbp)	# tmp1002, equiv_value
	jmp	.L244	#
.L243:
	.loc 1 1172 0
	movq	$0, -576(%rbp)	#, equiv_value
.L244:
	.loc 1 1177 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.115
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L245	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.114
	jmp	.L246	#
.L245:
	.loc 1 1177 0 discriminator 2
	movl	$32, %eax	#, iftmp.114
.L246:
	.loc 1 1177 0 discriminator 3
	cmpl	-660(%rbp), %eax	# shift_count, iftmp.114
	je	.L247	#,
	.loc 1 1178 0 is_stmt 1
	movq	-576(%rbp), %rdi	# equiv_value, tmp1003
	movq	-768(%rbp), %rcx	# op1, tmp1004
	movq	-760(%rbp), %rdx	# op0, tmp1005
	movq	-776(%rbp), %rsi	# target, tmp1006
	movq	-224(%rbp), %rax	# insns, tmp1007
	movq	%rdi, %r8	# tmp1003,
	movq	%rax, %rdi	# tmp1007,
	call	emit_no_conflict_block	#
	jmp	.L248	#
.L247:
	.loc 1 1180 0
	movq	-224(%rbp), %rax	# insns, tmp1008
	movq	%rax, %rdi	# tmp1008,
	call	emit_insns	#
.L248:
	.loc 1 1183 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L212:
.LBE9:
	.loc 1 1188 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L249	#,
	.loc 1 1188 0 is_stmt 0 discriminator 1
	movq	optab_table+16(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L250	#,
.L249:
	.loc 1 1189 0 is_stmt 1
	cmpl	$1, -688(%rbp)	#, class
	jne	.L250	#,
	.loc 1 1190 0
	movl	-740(%rbp), %eax	# mode, mode.116
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	movzbl	%al, %edx	# D.18068, D.18063
	movl	target_flags(%rip), %eax	# target_flags, target_flags.118
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L251	#,
	.loc 1 1190 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.117
	jmp	.L252	#
.L251:
	.loc 1 1190 0 discriminator 2
	movl	$8, %eax	#, iftmp.117
.L252:
	.loc 1 1190 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.117, D.18063
	jl	.L250	#,
	.loc 1 1191 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.119
	movl	%eax, %edx	# word_mode.119, word_mode.120
	movq	-752(%rbp), %rax	# binoptab, tmp1010
	movslq	%edx, %rdx	# word_mode.120, tmp1011
	salq	$4, %rdx	#, tmp1012
	addq	%rdx, %rax	# tmp1012, tmp1013
	movl	8(%rax), %eax	# binoptab_1->handlers[word_mode.120_603].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L250	#,
.LBB11:
	.loc 1 1194 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L253	#,
	.loc 1 1194 0 is_stmt 0 discriminator 1
	movq	optab_table+16(%rip), %rax	# optab_table, iftmp.121
	jmp	.L254	#
.L253:
	.loc 1 1194 0 discriminator 2
	movq	optab_table(%rip), %rax	# optab_table, iftmp.121
.L254:
	.loc 1 1194 0 discriminator 3
	movq	%rax, -216(%rbp)	# iftmp.121, otheroptab
	.loc 1 1195 0 is_stmt 1 discriminator 3
	movl	-740(%rbp), %eax	# mode, mode.122
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18062
	movzwl	%ax, %eax	# D.18062, D.18063
	movl	target_flags(%rip), %edx	# target_flags, target_flags.124
	andl	$33554432, %edx	#, D.18063
	testl	%edx, %edx	# D.18063
	je	.L255	#,
	.loc 1 1195 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.123
	jmp	.L256	#
.L255:
	.loc 1 1195 0 discriminator 2
	movl	$32, %ebx	#, iftmp.123
.L256:
	.loc 1 1195 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.123
	movl	%eax, -648(%rbp)	# D.18063, nwords
	.loc 1 1196 0 is_stmt 1 discriminator 3
	movq	$0, -544(%rbp)	#, carry_in
	movq	$0, -536(%rbp)	#, carry_out
	.loc 1 1203 0 discriminator 3
	movl	$1, -644(%rbp)	#, normalizep
	.loc 1 1209 0 discriminator 3
	movq	-760(%rbp), %rdx	# op0, tmp1017
	movl	-740(%rbp), %eax	# mode, tmp1018
	movq	%rdx, %rsi	# tmp1017,
	movl	%eax, %edi	# tmp1018,
	call	force_reg	#
	movq	%rax, -208(%rbp)	# tmp1019, xop0
	.loc 1 1210 0 discriminator 3
	movq	-768(%rbp), %rdx	# op1, tmp1020
	movl	-740(%rbp), %eax	# mode, tmp1021
	movq	%rdx, %rsi	# tmp1020,
	movl	%eax, %edi	# tmp1021,
	call	force_reg	#
	movq	%rax, -200(%rbp)	# tmp1022, xop1
	.loc 1 1212 0 discriminator 3
	cmpq	$0, -776(%rbp)	#, target
	je	.L257	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp1023
	movzwl	(%rax), %eax	# target_21->code, D.18062
	cmpw	$61, %ax	#, D.18062
	jne	.L257	#,
	.loc 1 1213 0 is_stmt 1
	movq	-776(%rbp), %rax	# target, tmp1024
	cmpq	-208(%rbp), %rax	# xop0, tmp1024
	je	.L257	#,
	.loc 1 1213 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp1025
	cmpq	-200(%rbp), %rax	# xop1, tmp1025
	jne	.L258	#,
.L257:
	.loc 1 1214 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, tmp1026
	movl	%eax, %edi	# tmp1026,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp1027, target
.L258:
	.loc 1 1217 0
	movq	-776(%rbp), %rax	# target, tmp1028
	movzwl	(%rax), %eax	# target_22->code, D.18062
	cmpw	$61, %ax	#, D.18062
	jne	.L259	#,
	.loc 1 1218 0
	movq	-776(%rbp), %rax	# target, tmp1029
	movq	%rax, %rdx	# tmp1029,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.18074,
	call	emit_insn	#
.L259:
	.loc 1 1221 0
	movl	$0, -712(%rbp)	#, i
	jmp	.L260	#
.L272:
.LBB12:
	.loc 1 1223 0
	movl	-712(%rbp), %eax	# i, tmp1030
	movl	%eax, -640(%rbp)	# tmp1030, index
	.loc 1 1224 0
	movl	-640(%rbp), %esi	# index, index.125
	movl	-740(%rbp), %edx	# mode, tmp1031
	movq	-776(%rbp), %rax	# target, tmp1032
	movl	%edx, %ecx	# tmp1031,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp1032,
	call	operand_subword	#
	movq	%rax, -192(%rbp)	# tmp1033, target_piece
	.loc 1 1225 0
	movl	-640(%rbp), %ecx	# index, index.126
	movl	-740(%rbp), %edx	# mode, tmp1034
	movq	-208(%rbp), %rax	# xop0, tmp1035
	movl	%ecx, %esi	# index.126,
	movq	%rax, %rdi	# tmp1035,
	call	operand_subword_force	#
	movq	%rax, -184(%rbp)	# tmp1036, op0_piece
	.loc 1 1226 0
	movl	-640(%rbp), %ecx	# index, index.127
	movl	-740(%rbp), %edx	# mode, tmp1037
	movq	-200(%rbp), %rax	# xop1, tmp1038
	movl	%ecx, %esi	# index.127,
	movq	%rax, %rdi	# tmp1038,
	call	operand_subword_force	#
	movq	%rax, -176(%rbp)	# tmp1039, op1_piece
	.loc 1 1230 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.128
	movl	-744(%rbp), %r9d	# unsignedp, tmp1040
	movq	-192(%rbp), %r8	# target_piece, tmp1041
	movq	-176(%rbp), %rcx	# op1_piece, tmp1042
	movq	-184(%rbp), %rdx	# op0_piece, tmp1043
	movq	-752(%rbp), %rsi	# binoptab, tmp1044
	movl	-696(%rbp), %edi	# next_methods, tmp1045
	movl	%edi, (%rsp)	# tmp1045,
	movl	%eax, %edi	# word_mode.128,
	call	expand_binop	#
	movq	%rax, -168(%rbp)	# tmp1046, x
	.loc 1 1233 0
	cmpq	$0, -168(%rbp)	#, x
	jne	.L261	#,
	.loc 1 1234 0
	jmp	.L262	#
.L261:
	.loc 1 1236 0
	movl	-712(%rbp), %eax	# i, tmp1047
	addl	$1, %eax	#, D.18063
	cmpl	-648(%rbp), %eax	# nwords, D.18069
	jae	.L263	#,
	.loc 1 1239 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.129
	movl	%eax, %edi	# word_mode.129,
	call	gen_reg_rtx	#
	movq	%rax, -536(%rbp)	# tmp1048, carry_out
	.loc 1 1240 0
	movl	word_mode(%rip), %r8d	# word_mode, word_mode.130
	.loc 1 1241 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	.loc 1 1240 0
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L264	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movl	$107, %eax	#, iftmp.131
	jmp	.L265	#
.L264:
	.loc 1 1240 0 discriminator 2
	movl	$105, %eax	#, iftmp.131
.L265:
	.loc 1 1240 0 discriminator 3
	movq	-184(%rbp), %rcx	# op0_piece, tmp1049
	movq	-168(%rbp), %rdx	# x, tmp1050
	movq	-536(%rbp), %rdi	# carry_out, tmp1051
	movl	-644(%rbp), %esi	# normalizep, tmp1052
	movl	%esi, (%rsp)	# tmp1052,
	movl	$1, %r9d	#,
	movl	%eax, %esi	# iftmp.131,
	call	emit_store_flag_force	#
	movq	%rax, -536(%rbp)	# tmp1053, carry_out
.L263:
	.loc 1 1247 0 is_stmt 1
	cmpl	$0, -712(%rbp)	#, i
	jle	.L266	#,
.LBB13:
	.loc 1 1252 0
	cmpl	$1, -644(%rbp)	#, normalizep
	jne	.L267	#,
	.loc 1 1252 0 is_stmt 0 discriminator 1
	movq	-752(%rbp), %rax	# binoptab, iftmp.132
	jmp	.L268	#
.L267:
	.loc 1 1252 0 discriminator 2
	movq	-216(%rbp), %rax	# otheroptab, iftmp.132
.L268:
	.loc 1 1252 0 discriminator 3
	movl	word_mode(%rip), %edi	# word_mode, word_mode.133
	movq	-544(%rbp), %rcx	# carry_in, tmp1054
	movq	-168(%rbp), %rdx	# x, tmp1055
	movl	-696(%rbp), %esi	# next_methods, tmp1056
	movl	%esi, (%rsp)	# tmp1056,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# iftmp.132,
	call	expand_binop	#
	movq	%rax, -160(%rbp)	# tmp1057, newx
	.loc 1 1257 0 is_stmt 1 discriminator 3
	movl	-712(%rbp), %eax	# i, tmp1058
	addl	$1, %eax	#, D.18063
	cmpl	-648(%rbp), %eax	# nwords, D.18069
	jae	.L269	#,
.LBB14:
	.loc 1 1260 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.134
	movl	%eax, %edi	# word_mode.134,
	call	gen_reg_rtx	#
	movq	%rax, -152(%rbp)	# tmp1059, carry_tmp
	.loc 1 1261 0
	movl	word_mode(%rip), %r8d	# word_mode, word_mode.135
	.loc 1 1262 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	.loc 1 1261 0
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L270	#,
	.loc 1 1261 0 is_stmt 0 discriminator 1
	movl	$107, %eax	#, iftmp.136
	jmp	.L271	#
.L270:
	.loc 1 1261 0 discriminator 2
	movl	$105, %eax	#, iftmp.136
.L271:
	.loc 1 1261 0 discriminator 3
	movq	-168(%rbp), %rcx	# x, tmp1060
	movq	-160(%rbp), %rdx	# newx, tmp1061
	movq	-152(%rbp), %rdi	# carry_tmp, tmp1062
	movl	-644(%rbp), %esi	# normalizep, tmp1063
	movl	%esi, (%rsp)	# tmp1063,
	movl	$1, %r9d	#,
	movl	%eax, %esi	# iftmp.136,
	call	emit_store_flag_force	#
	movq	%rax, -152(%rbp)	# tmp1064, carry_tmp
	.loc 1 1268 0 is_stmt 1 discriminator 3
	movq	optab_table+152(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.137
	movq	-536(%rbp), %r8	# carry_out, tmp1065
	movq	-152(%rbp), %rcx	# carry_tmp, tmp1066
	movq	-536(%rbp), %rdx	# carry_out, tmp1067
	movl	-696(%rbp), %edi	# next_methods, tmp1068
	movl	%edi, (%rsp)	# tmp1068,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.137,
	call	expand_binop	#
	movq	%rax, -536(%rbp)	# tmp1069, carry_out
	.loc 1 1271 0 discriminator 3
	cmpq	$0, -536(%rbp)	#, carry_out
	jne	.L269	#,
	.loc 1 1272 0
	jmp	.L262	#
.L269:
.LBE14:
	.loc 1 1274 0
	movq	-160(%rbp), %rdx	# newx, tmp1070
	movq	-192(%rbp), %rax	# target_piece, tmp1071
	movq	%rdx, %rsi	# tmp1070,
	movq	%rax, %rdi	# tmp1071,
	call	emit_move_insn	#
.L266:
.LBE13:
	.loc 1 1277 0
	movq	-536(%rbp), %rax	# carry_out, tmp1072
	movq	%rax, -544(%rbp)	# tmp1072, carry_in
.LBE12:
	.loc 1 1221 0
	addl	$1, -712(%rbp)	#, i
.L260:
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movl	-712(%rbp), %eax	# i, i.138
	cmpl	-648(%rbp), %eax	# nwords, i.138
	jb	.L272	#,
.L262:
	.loc 1 1280 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, mode.139
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18062
	movzwl	%ax, %eax	# D.18062, D.18063
	movl	target_flags(%rip), %edx	# target_flags, target_flags.141
	andl	$33554432, %edx	#, D.18063
	testl	%edx, %edx	# D.18063
	je	.L273	#,
	.loc 1 1280 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.140
	jmp	.L274	#
.L273:
	.loc 1 1280 0 discriminator 2
	movl	$32, %ebx	#, iftmp.140
.L274:
	.loc 1 1280 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.140
	cmpl	-712(%rbp), %eax	# i, D.18063
	jne	.L275	#,
	.loc 1 1282 0 is_stmt 1
	movq	optab_table+240(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.142
	movslq	%edx, %rdx	# mode.142, tmp1076
	salq	$4, %rdx	#, tmp1077
	addq	%rdx, %rax	# tmp1077, tmp1078
	movl	8(%rax), %eax	# _673->handlers[mode.142_674].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L276	#,
.LBB15:
	.loc 1 1284 0
	movq	-776(%rbp), %rdx	# target, tmp1079
	movq	-776(%rbp), %rax	# target, tmp1080
	movq	%rdx, %rsi	# tmp1079,
	movq	%rax, %rdi	# tmp1080,
	call	emit_move_insn	#
	movq	%rax, -144(%rbp)	# tmp1081, temp
	.loc 1 1286 0
	movq	-200(%rbp), %rax	# xop1, tmp1082
	movq	%rax, %rdi	# tmp1082,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.18074
	movq	-208(%rbp), %rax	# xop0, tmp1083
	movq	%rax, %rdi	# tmp1083,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18074
	movq	-752(%rbp), %rax	# binoptab, tmp1084
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movl	-740(%rbp), %esi	# mode, tmp1085
	movq	%rbx, %rcx	# D.18074,
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.18074
	movq	-144(%rbp), %rax	# temp, tmp1086
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp1086,
	call	set_unique_reg_note	#
.L276:
.LBE15:
	.loc 1 1293 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L275:
	.loc 1 1297 0
	movq	-432(%rbp), %rax	# last, tmp1087
	movq	%rax, %rdi	# tmp1087,
	call	delete_insns_since	#
.L250:
.LBE11:
	.loc 1 1350 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L277	#,
	.loc 1 1351 0
	cmpl	$1, -688(%rbp)	#, class
	jne	.L277	#,
	.loc 1 1352 0
	movl	-740(%rbp), %eax	# mode, mode.143
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18068
	movzbl	%al, %edx	# D.18068, D.18063
	movl	target_flags(%rip), %eax	# target_flags, target_flags.145
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L278	#,
	.loc 1 1352 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.144
	jmp	.L279	#
.L278:
	.loc 1 1352 0 discriminator 2
	movl	$8, %eax	#, iftmp.144
.L279:
	.loc 1 1352 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.144, D.18063
	jne	.L277	#,
	.loc 1 1353 0 is_stmt 1
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.146
	movslq	%edx, %rdx	# word_mode.147, tmp1089
	salq	$4, %rdx	#, tmp1090
	addq	%rdx, %rax	# tmp1090, tmp1091
	movl	8(%rax), %eax	# _690->handlers[word_mode.147_692].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L277	#,
	.loc 1 1354 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	movl	word_mode(%rip), %edx	# word_mode, word_mode.148
	movslq	%edx, %rdx	# word_mode.149, tmp1092
	salq	$4, %rdx	#, tmp1093
	addq	%rdx, %rax	# tmp1093, tmp1094
	movl	8(%rax), %eax	# _694->handlers[word_mode.149_696].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L277	#,
	.loc 1 1355 0
	movq	optab_table+72(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.150
	movslq	%edx, %rdx	# mode.150, tmp1095
	salq	$4, %rdx	#, tmp1096
	addq	%rdx, %rax	# tmp1096, tmp1097
	movl	8(%rax), %eax	# _698->handlers[mode.150_699].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	jne	.L280	#,
	.loc 1 1357 0
	movq	optab_table+64(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.151
	movslq	%edx, %rdx	# mode.151, tmp1098
	salq	$4, %rdx	#, tmp1099
	addq	%rdx, %rax	# tmp1099, tmp1100
	movl	8(%rax), %eax	# _701->handlers[mode.151_702].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L277	#,
.L280:
.LBB16:
	.loc 1 1360 0
	movl	$0, -636(%rbp)	#, low
	.loc 1 1361 0
	movl	$1, -632(%rbp)	#, high
	.loc 1 1362 0
	movl	-632(%rbp), %ecx	# high, high.152
	movl	-740(%rbp), %edx	# mode, tmp1101
	movq	-760(%rbp), %rax	# op0, tmp1102
	movl	%ecx, %esi	# high.152,
	movq	%rax, %rdi	# tmp1102,
	call	operand_subword_force	#
	movq	%rax, -136(%rbp)	# tmp1103, op0_high
	.loc 1 1363 0
	movl	-636(%rbp), %ecx	# low, low.153
	movl	-740(%rbp), %edx	# mode, tmp1104
	movq	-760(%rbp), %rax	# op0, tmp1105
	movl	%ecx, %esi	# low.153,
	movq	%rax, %rdi	# tmp1105,
	call	operand_subword_force	#
	movq	%rax, -128(%rbp)	# tmp1106, op0_low
	.loc 1 1364 0
	movl	-632(%rbp), %ecx	# high, high.154
	movl	-740(%rbp), %edx	# mode, tmp1107
	movq	-768(%rbp), %rax	# op1, tmp1108
	movl	%ecx, %esi	# high.154,
	movq	%rax, %rdi	# tmp1108,
	call	operand_subword_force	#
	movq	%rax, -120(%rbp)	# tmp1109, op1_high
	.loc 1 1365 0
	movl	-636(%rbp), %ecx	# low, low.155
	movl	-740(%rbp), %edx	# mode, tmp1110
	movq	-768(%rbp), %rax	# op1, tmp1111
	movl	%ecx, %esi	# low.155,
	movq	%rax, %rdi	# tmp1111,
	call	operand_subword_force	#
	movq	%rax, -112(%rbp)	# tmp1112, op1_low
	.loc 1 1366 0
	movq	$0, -528(%rbp)	#, product
	.loc 1 1367 0
	movq	$0, -520(%rbp)	#, op0_xhigh
	.loc 1 1368 0
	movq	$0, -512(%rbp)	#, op1_xhigh
	.loc 1 1372 0
	movq	-776(%rbp), %rax	# target, tmp1113
	cmpq	-760(%rbp), %rax	# op0, tmp1113
	je	.L281	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp1114
	cmpq	-768(%rbp), %rax	# op1, tmp1114
	je	.L281	#,
	.loc 1 1373 0 is_stmt 1
	cmpq	$0, -776(%rbp)	#, target
	je	.L282	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# target, tmp1115
	movzwl	(%rax), %eax	# target_23->code, D.18062
	cmpw	$61, %ax	#, D.18062
	je	.L282	#,
.L281:
	.loc 1 1374 0 is_stmt 1
	movq	$0, -776(%rbp)	#, target
.L282:
	.loc 1 1380 0
	movq	optab_table+72(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.156
	movslq	%edx, %rdx	# mode.156, tmp1116
	salq	$4, %rdx	#, tmp1117
	addq	%rdx, %rax	# tmp1117, tmp1118
	movl	8(%rax), %eax	# _719->handlers[mode.156_720].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L283	#,
	.loc 1 1382 0
	movq	optab_table+72(%rip), %rsi	# optab_table, D.18061
	movq	-776(%rbp), %rdi	# target, tmp1119
	movq	-112(%rbp), %rcx	# op1_low, tmp1120
	movq	-128(%rbp), %rdx	# op0_low, tmp1121
	movl	-740(%rbp), %eax	# mode, tmp1122
	movl	$0, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1119,
	movl	%eax, %edi	# tmp1122,
	call	expand_binop	#
	movq	%rax, -528(%rbp)	# tmp1123, product
	.loc 1 1386 0
	cmpq	$0, -528(%rbp)	#, product
	jne	.L284	#,
	.loc 1 1387 0
	movq	-432(%rbp), %rax	# last, tmp1124
	movq	%rax, %rdi	# tmp1124,
	call	delete_insns_since	#
	jmp	.L283	#
.L284:
	.loc 1 1389 0
	movq	-136(%rbp), %rax	# op0_high, tmp1125
	movq	%rax, -520(%rbp)	# tmp1125, op0_xhigh
	movq	-120(%rbp), %rax	# op1_high, tmp1126
	movq	%rax, -512(%rbp)	# tmp1126, op1_xhigh
.L283:
	.loc 1 1392 0
	cmpq	$0, -528(%rbp)	#, product
	jne	.L285	#,
	.loc 1 1393 0
	movq	optab_table+64(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.157
	movslq	%edx, %rdx	# mode.157, tmp1127
	salq	$4, %rdx	#, tmp1128
	addq	%rdx, %rax	# tmp1128, tmp1129
	movl	8(%rax), %eax	# _726->handlers[mode.157_727].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L285	#,
.LBB17:
	.loc 1 1396 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.159
	andl	$33554432, %eax	#, D.18063
	testl	%eax, %eax	# D.18063
	je	.L286	#,
	.loc 1 1396 0 is_stmt 0 discriminator 1
	movl	$63, %eax	#, iftmp.158
	jmp	.L287	#
.L286:
	.loc 1 1396 0 discriminator 2
	movl	$31, %eax	#, iftmp.158
.L287:
	.loc 1 1396 0 discriminator 3
	movq	%rax, %rsi	# iftmp.158,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -104(%rbp)	# tmp1130, wordm1
	.loc 1 1397 0 is_stmt 1 discriminator 3
	movq	optab_table+64(%rip), %rsi	# optab_table, D.18061
	movq	-776(%rbp), %rdi	# target, tmp1131
	movq	-112(%rbp), %rcx	# op1_low, tmp1132
	movq	-128(%rbp), %rdx	# op0_low, tmp1133
	movl	-740(%rbp), %eax	# mode, tmp1134
	movl	$0, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1131,
	movl	%eax, %edi	# tmp1134,
	call	expand_binop	#
	movq	%rax, -528(%rbp)	# tmp1135, product
	.loc 1 1399 0 discriminator 3
	movq	optab_table+176(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.160
	movq	-104(%rbp), %rcx	# wordm1, tmp1136
	movq	-128(%rbp), %rdx	# op0_low, tmp1137
	movl	-696(%rbp), %edi	# next_methods, tmp1138
	movl	%edi, (%rsp)	# tmp1138,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.160,
	call	expand_binop	#
	movq	%rax, -520(%rbp)	# tmp1139, op0_xhigh
	.loc 1 1401 0 discriminator 3
	cmpq	$0, -520(%rbp)	#, op0_xhigh
	je	.L288	#,
	.loc 1 1402 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.161
	movq	-520(%rbp), %r8	# op0_xhigh, tmp1140
	movq	-520(%rbp), %rcx	# op0_xhigh, tmp1141
	movq	-136(%rbp), %rdx	# op0_high, tmp1142
	movl	-696(%rbp), %edi	# next_methods, tmp1143
	movl	%edi, (%rsp)	# tmp1143,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.161,
	call	expand_binop	#
	movq	%rax, -520(%rbp)	# tmp1144, op0_xhigh
	jmp	.L289	#
.L288:
	.loc 1 1406 0
	movq	optab_table+184(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.162
	movq	-104(%rbp), %rcx	# wordm1, tmp1145
	movq	-128(%rbp), %rdx	# op0_low, tmp1146
	movl	-696(%rbp), %edi	# next_methods, tmp1147
	movl	%edi, (%rsp)	# tmp1147,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.162,
	call	expand_binop	#
	movq	%rax, -520(%rbp)	# tmp1148, op0_xhigh
	.loc 1 1408 0
	cmpq	$0, -520(%rbp)	#, op0_xhigh
	je	.L289	#,
	.loc 1 1409 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.163
	movq	-520(%rbp), %r8	# op0_xhigh, tmp1149
	movq	-520(%rbp), %rcx	# op0_xhigh, tmp1150
	movq	-136(%rbp), %rdx	# op0_high, tmp1151
	movl	-696(%rbp), %edi	# next_methods, tmp1152
	movl	%edi, (%rsp)	# tmp1152,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.163,
	call	expand_binop	#
	movq	%rax, -520(%rbp)	# tmp1153, op0_xhigh
.L289:
	.loc 1 1414 0
	movq	optab_table+176(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.164
	movq	-104(%rbp), %rcx	# wordm1, tmp1154
	movq	-112(%rbp), %rdx	# op1_low, tmp1155
	movl	-696(%rbp), %edi	# next_methods, tmp1156
	movl	%edi, (%rsp)	# tmp1156,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.164,
	call	expand_binop	#
	movq	%rax, -512(%rbp)	# tmp1157, op1_xhigh
	.loc 1 1416 0
	cmpq	$0, -512(%rbp)	#, op1_xhigh
	je	.L290	#,
	.loc 1 1417 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.165
	movq	-512(%rbp), %r8	# op1_xhigh, tmp1158
	movq	-512(%rbp), %rcx	# op1_xhigh, tmp1159
	movq	-120(%rbp), %rdx	# op1_high, tmp1160
	movl	-696(%rbp), %edi	# next_methods, tmp1161
	movl	%edi, (%rsp)	# tmp1161,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.165,
	call	expand_binop	#
	movq	%rax, -512(%rbp)	# tmp1162, op1_xhigh
	jmp	.L285	#
.L290:
	.loc 1 1421 0
	movq	optab_table+184(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.166
	movq	-104(%rbp), %rcx	# wordm1, tmp1163
	movq	-112(%rbp), %rdx	# op1_low, tmp1164
	movl	-696(%rbp), %edi	# next_methods, tmp1165
	movl	%edi, (%rsp)	# tmp1165,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.166,
	call	expand_binop	#
	movq	%rax, -512(%rbp)	# tmp1166, op1_xhigh
	.loc 1 1423 0
	cmpq	$0, -512(%rbp)	#, op1_xhigh
	je	.L285	#,
	.loc 1 1424 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.167
	movq	-512(%rbp), %r8	# op1_xhigh, tmp1167
	movq	-512(%rbp), %rcx	# op1_xhigh, tmp1168
	movq	-120(%rbp), %rdx	# op1_high, tmp1169
	movl	-696(%rbp), %edi	# next_methods, tmp1170
	movl	%edi, (%rsp)	# tmp1170,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.167,
	call	expand_binop	#
	movq	%rax, -512(%rbp)	# tmp1171, op1_xhigh
.L285:
.LBE17:
	.loc 1 1440 0
	cmpq	$0, -528(%rbp)	#, product
	je	.L291	#,
	.loc 1 1440 0 is_stmt 0 discriminator 1
	cmpq	$0, -520(%rbp)	#, op0_xhigh
	je	.L291	#,
	cmpq	$0, -512(%rbp)	#, op1_xhigh
	je	.L291	#,
.LBB18:
	.loc 1 1442 0 is_stmt 1
	movl	-632(%rbp), %esi	# high, high.168
	movl	-740(%rbp), %edx	# mode, tmp1172
	movq	-528(%rbp), %rax	# product, tmp1173
	movl	%edx, %ecx	# tmp1172,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp1173,
	call	operand_subword	#
	movq	%rax, -96(%rbp)	# tmp1174, product_high
	.loc 1 1443 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.169
	movq	-512(%rbp), %rcx	# op1_xhigh, tmp1175
	movq	-128(%rbp), %rdx	# op0_low, tmp1176
	movq	-752(%rbp), %rsi	# binoptab, tmp1177
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.169,
	call	expand_binop	#
	movq	%rax, -504(%rbp)	# tmp1178, temp
	.loc 1 1446 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L292	#,
	.loc 1 1447 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.170
	movq	-96(%rbp), %r8	# product_high, tmp1179
	movq	-96(%rbp), %rcx	# product_high, tmp1180
	movq	-504(%rbp), %rdx	# temp, tmp1181
	movl	-696(%rbp), %edi	# next_methods, tmp1182
	movl	%edi, (%rsp)	# tmp1182,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.170,
	call	expand_binop	#
	movq	%rax, -504(%rbp)	# tmp1183, temp
.L292:
	.loc 1 1450 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L293	#,
	.loc 1 1450 0 is_stmt 0 discriminator 1
	movq	-504(%rbp), %rax	# temp, tmp1184
	cmpq	-96(%rbp), %rax	# product_high, tmp1184
	je	.L293	#,
	.loc 1 1451 0 is_stmt 1
	movq	-504(%rbp), %rdx	# temp, tmp1185
	movq	-96(%rbp), %rax	# product_high, tmp1186
	movq	%rdx, %rsi	# tmp1185,
	movq	%rax, %rdi	# tmp1186,
	call	emit_move_insn	#
.L293:
	.loc 1 1453 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L294	#,
	.loc 1 1454 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.171
	movq	-520(%rbp), %rcx	# op0_xhigh, tmp1187
	movq	-112(%rbp), %rdx	# op1_low, tmp1188
	movq	-752(%rbp), %rsi	# binoptab, tmp1189
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.171,
	call	expand_binop	#
	movq	%rax, -504(%rbp)	# tmp1190, temp
.L294:
	.loc 1 1457 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L295	#,
	.loc 1 1458 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18061
	movl	word_mode(%rip), %eax	# word_mode, word_mode.172
	movq	-96(%rbp), %r8	# product_high, tmp1191
	movq	-96(%rbp), %rcx	# product_high, tmp1192
	movq	-504(%rbp), %rdx	# temp, tmp1193
	movl	-696(%rbp), %edi	# next_methods, tmp1194
	movl	%edi, (%rsp)	# tmp1194,
	movl	$0, %r9d	#,
	movl	%eax, %edi	# word_mode.172,
	call	expand_binop	#
	movq	%rax, -504(%rbp)	# tmp1195, temp
.L295:
	.loc 1 1462 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L296	#,
	.loc 1 1462 0 is_stmt 0 discriminator 1
	movq	-504(%rbp), %rax	# temp, tmp1196
	cmpq	-96(%rbp), %rax	# product_high, tmp1196
	je	.L296	#,
	.loc 1 1463 0 is_stmt 1
	movq	-504(%rbp), %rdx	# temp, tmp1197
	movq	-96(%rbp), %rax	# product_high, tmp1198
	movq	%rdx, %rsi	# tmp1197,
	movq	%rax, %rdi	# tmp1198,
	call	emit_move_insn	#
.L296:
	.loc 1 1465 0
	cmpq	$0, -504(%rbp)	#, temp
	je	.L291	#,
	.loc 1 1467 0
	movq	optab_table+240(%rip), %rax	# optab_table, D.18061
	movl	-740(%rbp), %edx	# mode, mode.173
	movslq	%edx, %rdx	# mode.173, tmp1199
	salq	$4, %rdx	#, tmp1200
	addq	%rdx, %rax	# tmp1200, tmp1201
	movl	8(%rax), %eax	# _772->handlers[mode.173_773].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	je	.L297	#,
	.loc 1 1469 0
	movq	-528(%rbp), %rdx	# product, tmp1202
	movq	-528(%rbp), %rax	# product, tmp1203
	movq	%rdx, %rsi	# tmp1202,
	movq	%rax, %rdi	# tmp1203,
	call	emit_move_insn	#
	movq	%rax, -504(%rbp)	# tmp1204, temp
	.loc 1 1470 0
	movq	-768(%rbp), %rax	# op1, tmp1205
	movq	%rax, %rdi	# tmp1205,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.18074
	movq	-760(%rbp), %rax	# op0, tmp1206
	movq	%rax, %rdi	# tmp1206,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18074
	movl	-740(%rbp), %eax	# mode, tmp1207
	movq	%rbx, %rcx	# D.18074,
	movl	%eax, %esi	# tmp1207,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.18074
	movq	-504(%rbp), %rax	# temp, tmp1208
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp1208,
	call	set_unique_reg_note	#
.L297:
	.loc 1 1477 0
	movq	-528(%rbp), %rax	# product, D.18059
	jmp	.L141	#
.L291:
.LBE18:
	.loc 1 1485 0
	movq	-432(%rbp), %rax	# last, tmp1209
	movq	%rax, %rdi	# tmp1209,
	call	delete_insns_since	#
.L277:
.LBE16:
	.loc 1 1496 0
	cmpl	$6, -688(%rbp)	#, class
	je	.L298	#,
	.loc 1 1496 0 is_stmt 0 discriminator 1
	cmpl	$5, -688(%rbp)	#, class
	jne	.L299	#,
.L298:
.LBB19:
	.loc 1 1498 0 is_stmt 1
	movq	$0, -496(%rbp)	#, real0
	movq	$0, -488(%rbp)	#, imag0
	.loc 1 1499 0
	movq	$0, -480(%rbp)	#, real1
	movq	$0, -472(%rbp)	#, imag1
	.loc 1 1503 0
	movl	$0, -708(%rbp)	#, ok
	.loc 1 1507 0
	cmpl	$5, -688(%rbp)	#, class
	jne	.L300	#,
	.loc 1 1507 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.174
	jmp	.L301	#
.L300:
	.loc 1 1507 0 discriminator 2
	movl	$2, %eax	#, iftmp.174
.L301:
	.loc 1 1507 0 discriminator 3
	movl	-740(%rbp), %edx	# mode, mode.175
	movslq	%edx, %rdx	# mode.175, tmp1210
	movzbl	mode_unit_size(%rdx), %edx	# mode_unit_size, D.18068
	movzbl	%dl, %edx	# D.18068, D.18063
	sall	$3, %edx	#, D.18063
	movl	%edx, %ecx	# D.18063, D.18069
	.loc 1 1506 0 is_stmt 1 discriminator 3
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.174,
	movl	%ecx, %edi	# D.18069,
	call	mode_for_size	#
	movl	%eax, -628(%rbp)	# tmp1211, submode
	.loc 1 1511 0 discriminator 3
	cmpl	$51, -628(%rbp)	#, submode
	jne	.L302	#,
	.loc 1 1512 0
	movl	$__FUNCTION__.13677, %edx	#,
	movl	$1512, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L302:
	.loc 1 1514 0
	cmpq	$0, -776(%rbp)	#, target
	jne	.L303	#,
	.loc 1 1515 0
	movl	-740(%rbp), %eax	# mode, tmp1212
	movl	%eax, %edi	# tmp1212,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp1213, target
.L303:
	.loc 1 1517 0
	call	start_sequence	#
	.loc 1 1519 0
	movq	-776(%rbp), %rdx	# target, tmp1214
	movl	-628(%rbp), %eax	# submode, tmp1215
	movq	%rdx, %rsi	# tmp1214,
	movl	%eax, %edi	# tmp1215,
	call	gen_realpart	#
	movq	%rax, -88(%rbp)	# tmp1216, realr
	.loc 1 1520 0
	movq	-776(%rbp), %rdx	# target, tmp1217
	movl	-628(%rbp), %eax	# submode, tmp1218
	movq	%rdx, %rsi	# tmp1217,
	movl	%eax, %edi	# tmp1218,
	call	gen_imagpart	#
	movq	%rax, -80(%rbp)	# tmp1219, imagr
	.loc 1 1522 0
	movq	-760(%rbp), %rax	# op0, tmp1220
	movzbl	2(%rax), %eax	# op0_6->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-740(%rbp), %eax	# mode, D.18069
	jne	.L304	#,
	.loc 1 1524 0
	movq	-760(%rbp), %rdx	# op0, tmp1221
	movl	-628(%rbp), %eax	# submode, tmp1222
	movq	%rdx, %rsi	# tmp1221,
	movl	%eax, %edi	# tmp1222,
	call	gen_realpart	#
	movq	%rax, -496(%rbp)	# tmp1223, real0
	.loc 1 1525 0
	movq	-760(%rbp), %rdx	# op0, tmp1224
	movl	-628(%rbp), %eax	# submode, tmp1225
	movq	%rdx, %rsi	# tmp1224,
	movl	%eax, %edi	# tmp1225,
	call	gen_imagpart	#
	movq	%rax, -488(%rbp)	# tmp1226, imag0
	jmp	.L305	#
.L304:
	.loc 1 1528 0
	movq	-760(%rbp), %rax	# op0, tmp1227
	movq	%rax, -496(%rbp)	# tmp1227, real0
.L305:
	.loc 1 1530 0
	movq	-768(%rbp), %rax	# op1, tmp1228
	movzbl	2(%rax), %eax	# op1_13->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-740(%rbp), %eax	# mode, D.18069
	jne	.L306	#,
	.loc 1 1532 0
	movq	-768(%rbp), %rdx	# op1, tmp1229
	movl	-628(%rbp), %eax	# submode, tmp1230
	movq	%rdx, %rsi	# tmp1229,
	movl	%eax, %edi	# tmp1230,
	call	gen_realpart	#
	movq	%rax, -480(%rbp)	# tmp1231, real1
	.loc 1 1533 0
	movq	-768(%rbp), %rdx	# op1, tmp1232
	movl	-628(%rbp), %eax	# submode, tmp1233
	movq	%rdx, %rsi	# tmp1232,
	movl	%eax, %edi	# tmp1233,
	call	gen_imagpart	#
	movq	%rax, -472(%rbp)	# tmp1234, imag1
	jmp	.L307	#
.L306:
	.loc 1 1536 0
	movq	-768(%rbp), %rax	# op1, tmp1235
	movq	%rax, -480(%rbp)	# tmp1235, real1
.L307:
	.loc 1 1538 0
	cmpq	$0, -496(%rbp)	#, real0
	je	.L308	#,
	.loc 1 1538 0 is_stmt 0 discriminator 1
	cmpq	$0, -480(%rbp)	#, real1
	je	.L308	#,
	cmpq	$0, -488(%rbp)	#, imag0
	jne	.L309	#,
	cmpq	$0, -472(%rbp)	#, imag1
	jne	.L309	#,
.L308:
	.loc 1 1539 0 is_stmt 1
	movl	$__FUNCTION__.13677, %edx	#,
	movl	$1539, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L309:
	.loc 1 1541 0
	movq	-752(%rbp), %rax	# binoptab, tmp1236
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	cmpl	$78, %eax	#, D.18060
	je	.L311	#,
	cmpl	$78, %eax	#, D.18060
	ja	.L312	#,
	subl	$75, %eax	#, tmp1237
	cmpl	$1, %eax	#, tmp1237
	ja	.L310	#,
	jmp	.L375	#
.L312:
	cmpl	$79, %eax	#, D.18060
	je	.L314	#,
	jmp	.L310	#
.L375:
	.loc 1 1547 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1238
	movq	-88(%rbp), %r8	# realr, tmp1239
	movq	-480(%rbp), %rcx	# real1, tmp1240
	movq	-496(%rbp), %rdx	# real0, tmp1241
	movq	-752(%rbp), %rsi	# binoptab, tmp1242
	movl	-628(%rbp), %eax	# submode, tmp1243
	movl	16(%rbp), %edi	# methods, tmp1244
	movl	%edi, (%rsp)	# tmp1244,
	movl	%eax, %edi	# tmp1243,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1245, res
	.loc 1 1550 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L315	#,
	.loc 1 1551 0
	jmp	.L316	#
.L315:
	.loc 1 1552 0
	movq	-464(%rbp), %rax	# res, tmp1246
	cmpq	-88(%rbp), %rax	# realr, tmp1246
	je	.L317	#,
	.loc 1 1553 0
	movq	-464(%rbp), %rdx	# res, tmp1247
	movq	-88(%rbp), %rax	# realr, tmp1248
	movq	%rdx, %rsi	# tmp1247,
	movq	%rax, %rdi	# tmp1248,
	call	emit_move_insn	#
.L317:
	.loc 1 1555 0
	cmpq	$0, -488(%rbp)	#, imag0
	je	.L318	#,
	.loc 1 1555 0 is_stmt 0 discriminator 1
	cmpq	$0, -472(%rbp)	#, imag1
	je	.L318	#,
	.loc 1 1556 0 is_stmt 1
	movl	-744(%rbp), %r9d	# unsignedp, tmp1249
	movq	-80(%rbp), %r8	# imagr, tmp1250
	movq	-472(%rbp), %rcx	# imag1, tmp1251
	movq	-488(%rbp), %rdx	# imag0, tmp1252
	movq	-752(%rbp), %rsi	# binoptab, tmp1253
	movl	-628(%rbp), %eax	# submode, tmp1254
	movl	16(%rbp), %edi	# methods, tmp1255
	movl	%edi, (%rsp)	# tmp1255,
	movl	%eax, %edi	# tmp1254,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1256, res
	jmp	.L319	#
.L318:
	.loc 1 1558 0
	cmpq	$0, -488(%rbp)	#, imag0
	je	.L320	#,
	.loc 1 1559 0
	movq	-488(%rbp), %rax	# imag0, tmp1257
	movq	%rax, -464(%rbp)	# tmp1257, res
	jmp	.L319	#
.L320:
	.loc 1 1560 0
	movq	-752(%rbp), %rax	# binoptab, tmp1258
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	cmpl	$76, %eax	#, D.18060
	jne	.L321	#,
	.loc 1 1562 0
	movq	optab_table+24(%rip), %rax	# optab_table, D.18061
	.loc 1 1561 0
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L322	#,
	.loc 1 1561 0 is_stmt 0 discriminator 1
	movq	optab_table+264(%rip), %rax	# optab_table, iftmp.176
	jmp	.L323	#
.L322:
	.loc 1 1561 0 discriminator 2
	movq	optab_table+256(%rip), %rax	# optab_table, iftmp.176
.L323:
	.loc 1 1561 0 discriminator 1
	movl	-744(%rbp), %esi	# unsignedp, tmp1259
	movq	-80(%rbp), %rcx	# imagr, tmp1260
	movq	-472(%rbp), %rdx	# imag1, tmp1261
	movl	-628(%rbp), %edi	# submode, tmp1262
	movl	%esi, %r8d	# tmp1259,
	movq	%rax, %rsi	# iftmp.176,
	call	expand_unop	#
	movq	%rax, -464(%rbp)	# tmp1263, res
	jmp	.L319	#
.L321:
	.loc 1 1565 0 is_stmt 1
	movq	-472(%rbp), %rax	# imag1, tmp1264
	movq	%rax, -464(%rbp)	# tmp1264, res
.L319:
	.loc 1 1567 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L324	#,
	.loc 1 1568 0
	jmp	.L316	#
.L324:
	.loc 1 1569 0
	movq	-464(%rbp), %rax	# res, tmp1265
	cmpq	-80(%rbp), %rax	# imagr, tmp1265
	je	.L325	#,
	.loc 1 1570 0
	movq	-464(%rbp), %rdx	# res, tmp1266
	movq	-80(%rbp), %rax	# imagr, tmp1267
	movq	%rdx, %rsi	# tmp1266,
	movq	%rax, %rdi	# tmp1267,
	call	emit_move_insn	#
.L325:
	.loc 1 1572 0
	movl	$1, -708(%rbp)	#, ok
	.loc 1 1573 0
	jmp	.L316	#
.L311:
	.loc 1 1578 0
	cmpq	$0, -488(%rbp)	#, imag0
	je	.L326	#,
	.loc 1 1578 0 is_stmt 0 discriminator 1
	cmpq	$0, -472(%rbp)	#, imag1
	je	.L326	#,
.LBB20:
	.loc 1 1583 0 is_stmt 1
	movq	-496(%rbp), %rdx	# real0, tmp1268
	movl	-628(%rbp), %eax	# submode, tmp1269
	movq	%rdx, %rsi	# tmp1268,
	movl	%eax, %edi	# tmp1269,
	call	force_reg	#
	movq	%rax, -496(%rbp)	# tmp1270, real0
	.loc 1 1584 0
	movq	-480(%rbp), %rdx	# real1, tmp1271
	movl	-628(%rbp), %eax	# submode, tmp1272
	movq	%rdx, %rsi	# tmp1271,
	movl	%eax, %edi	# tmp1272,
	call	force_reg	#
	movq	%rax, -480(%rbp)	# tmp1273, real1
	.loc 1 1585 0
	movq	-488(%rbp), %rdx	# imag0, tmp1274
	movl	-628(%rbp), %eax	# submode, tmp1275
	movq	%rdx, %rsi	# tmp1274,
	movl	%eax, %edi	# tmp1275,
	call	force_reg	#
	movq	%rax, -488(%rbp)	# tmp1276, imag0
	.loc 1 1586 0
	movq	-472(%rbp), %rdx	# imag1, tmp1277
	movl	-628(%rbp), %eax	# submode, tmp1278
	movq	%rdx, %rsi	# tmp1277,
	movl	%eax, %edi	# tmp1278,
	call	force_reg	#
	movq	%rax, -472(%rbp)	# tmp1279, imag1
	.loc 1 1588 0
	movl	-744(%rbp), %r8d	# unsignedp, tmp1280
	movq	-480(%rbp), %rcx	# real1, tmp1281
	movq	-496(%rbp), %rdx	# real0, tmp1282
	movq	-752(%rbp), %rsi	# binoptab, tmp1283
	movl	-628(%rbp), %eax	# submode, tmp1284
	movl	16(%rbp), %edi	# methods, tmp1285
	movl	%edi, (%rsp)	# tmp1285,
	movl	%r8d, %r9d	# tmp1280,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1284,
	call	expand_binop	#
	movq	%rax, -72(%rbp)	# tmp1286, temp1
	.loc 1 1591 0
	movl	-744(%rbp), %r8d	# unsignedp, tmp1287
	movq	-472(%rbp), %rcx	# imag1, tmp1288
	movq	-488(%rbp), %rdx	# imag0, tmp1289
	movq	-752(%rbp), %rsi	# binoptab, tmp1290
	movl	-628(%rbp), %eax	# submode, tmp1291
	movl	16(%rbp), %edi	# methods, tmp1292
	movl	%edi, (%rsp)	# tmp1292,
	movl	%r8d, %r9d	# tmp1287,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1291,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp1293, temp2
	.loc 1 1594 0
	cmpq	$0, -72(%rbp)	#, temp1
	je	.L316	#,
	.loc 1 1594 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, temp2
	je	.L316	#,
	.loc 1 1599 0 is_stmt 1
	movq	optab_table+40(%rip), %rax	# optab_table, D.18061
	.loc 1 1598 0
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L327	#,
	.loc 1 1598 0 is_stmt 0 discriminator 1
	movq	optab_table+24(%rip), %rax	# optab_table, iftmp.177
	jmp	.L328	#
.L327:
	.loc 1 1598 0 discriminator 2
	movq	optab_table+16(%rip), %rax	# optab_table, iftmp.177
.L328:
	.loc 1 1597 0 is_stmt 1
	movl	-744(%rbp), %r9d	# unsignedp, tmp1294
	movq	-88(%rbp), %r8	# realr, tmp1295
	movq	-64(%rbp), %rcx	# temp2, tmp1296
	movq	-72(%rbp), %rdx	# temp1, tmp1297
	movl	-628(%rbp), %edi	# submode, tmp1298
	movl	16(%rbp), %esi	# methods, tmp1299
	movl	%esi, (%rsp)	# tmp1299,
	movq	%rax, %rsi	# iftmp.177,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1300, res
	.loc 1 1602 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L329	#,
	.loc 1 1603 0
	jmp	.L316	#
.L329:
	.loc 1 1604 0
	movq	-464(%rbp), %rax	# res, tmp1301
	cmpq	-88(%rbp), %rax	# realr, tmp1301
	je	.L330	#,
	.loc 1 1605 0
	movq	-464(%rbp), %rdx	# res, tmp1302
	movq	-88(%rbp), %rax	# realr, tmp1303
	movq	%rdx, %rsi	# tmp1302,
	movq	%rax, %rdi	# tmp1303,
	call	emit_move_insn	#
.L330:
	.loc 1 1607 0
	movl	-744(%rbp), %r8d	# unsignedp, tmp1304
	movq	-472(%rbp), %rcx	# imag1, tmp1305
	movq	-496(%rbp), %rdx	# real0, tmp1306
	movq	-752(%rbp), %rsi	# binoptab, tmp1307
	movl	-628(%rbp), %eax	# submode, tmp1308
	movl	16(%rbp), %edi	# methods, tmp1309
	movl	%edi, (%rsp)	# tmp1309,
	movl	%r8d, %r9d	# tmp1304,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1308,
	call	expand_binop	#
	movq	%rax, -72(%rbp)	# tmp1310, temp1
	.loc 1 1610 0
	movl	-744(%rbp), %r8d	# unsignedp, tmp1311
	movq	-488(%rbp), %rcx	# imag0, tmp1312
	movq	-480(%rbp), %rdx	# real1, tmp1313
	movq	-752(%rbp), %rsi	# binoptab, tmp1314
	movl	-628(%rbp), %eax	# submode, tmp1315
	movl	16(%rbp), %edi	# methods, tmp1316
	movl	%edi, (%rsp)	# tmp1316,
	movl	%r8d, %r9d	# tmp1311,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1315,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp1317, temp2
	.loc 1 1613 0
	cmpq	$0, -72(%rbp)	#, temp1
	je	.L316	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, temp2
	je	.L316	#,
	.loc 1 1618 0 is_stmt 1
	movq	optab_table+40(%rip), %rax	# optab_table, D.18061
	.loc 1 1617 0
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L331	#,
	.loc 1 1617 0 is_stmt 0 discriminator 1
	movq	optab_table+8(%rip), %rax	# optab_table, iftmp.178
	jmp	.L332	#
.L331:
	.loc 1 1617 0 discriminator 2
	movq	optab_table(%rip), %rax	# optab_table, iftmp.178
.L332:
	.loc 1 1616 0 is_stmt 1
	movl	-744(%rbp), %r9d	# unsignedp, tmp1318
	movq	-80(%rbp), %r8	# imagr, tmp1319
	movq	-64(%rbp), %rcx	# temp2, tmp1320
	movq	-72(%rbp), %rdx	# temp1, tmp1321
	movl	-628(%rbp), %edi	# submode, tmp1322
	movl	16(%rbp), %esi	# methods, tmp1323
	movl	%esi, (%rsp)	# tmp1323,
	movq	%rax, %rsi	# iftmp.178,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1324, res
	.loc 1 1621 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L333	#,
	.loc 1 1622 0
	jmp	.L316	#
.L333:
	.loc 1 1623 0
	movq	-464(%rbp), %rax	# res, tmp1325
	cmpq	-80(%rbp), %rax	# imagr, tmp1325
	je	.L334	#,
	.loc 1 1624 0
	movq	-464(%rbp), %rdx	# res, tmp1326
	movq	-80(%rbp), %rax	# imagr, tmp1327
	movq	%rdx, %rsi	# tmp1326,
	movq	%rax, %rdi	# tmp1327,
	call	emit_move_insn	#
.L334:
	.loc 1 1626 0
	movl	$1, -708(%rbp)	#, ok
.LBE20:
	.loc 1 1579 0
	nop
	.loc 1 1655 0
	jmp	.L316	#
.L326:
	.loc 1 1631 0
	movq	-496(%rbp), %rdx	# real0, tmp1328
	movl	-628(%rbp), %eax	# submode, tmp1329
	movq	%rdx, %rsi	# tmp1328,
	movl	%eax, %edi	# tmp1329,
	call	force_reg	#
	movq	%rax, -496(%rbp)	# tmp1330, real0
	.loc 1 1632 0
	movq	-480(%rbp), %rdx	# real1, tmp1331
	movl	-628(%rbp), %eax	# submode, tmp1332
	movq	%rdx, %rsi	# tmp1331,
	movl	%eax, %edi	# tmp1332,
	call	force_reg	#
	movq	%rax, -480(%rbp)	# tmp1333, real1
	.loc 1 1634 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1334
	movq	-88(%rbp), %r8	# realr, tmp1335
	movq	-480(%rbp), %rcx	# real1, tmp1336
	movq	-496(%rbp), %rdx	# real0, tmp1337
	movq	-752(%rbp), %rsi	# binoptab, tmp1338
	movl	-628(%rbp), %eax	# submode, tmp1339
	movl	16(%rbp), %edi	# methods, tmp1340
	movl	%edi, (%rsp)	# tmp1340,
	movl	%eax, %edi	# tmp1339,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1341, res
	.loc 1 1636 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L336	#,
	.loc 1 1637 0
	jmp	.L316	#
.L336:
	.loc 1 1638 0
	movq	-464(%rbp), %rax	# res, tmp1342
	cmpq	-88(%rbp), %rax	# realr, tmp1342
	je	.L337	#,
	.loc 1 1639 0
	movq	-464(%rbp), %rdx	# res, tmp1343
	movq	-88(%rbp), %rax	# realr, tmp1344
	movq	%rdx, %rsi	# tmp1343,
	movq	%rax, %rdi	# tmp1344,
	call	emit_move_insn	#
.L337:
	.loc 1 1641 0
	cmpq	$0, -488(%rbp)	#, imag0
	je	.L338	#,
	.loc 1 1642 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1345
	movq	-80(%rbp), %r8	# imagr, tmp1346
	movq	-488(%rbp), %rcx	# imag0, tmp1347
	movq	-480(%rbp), %rdx	# real1, tmp1348
	movq	-752(%rbp), %rsi	# binoptab, tmp1349
	movl	-628(%rbp), %eax	# submode, tmp1350
	movl	16(%rbp), %edi	# methods, tmp1351
	movl	%edi, (%rsp)	# tmp1351,
	movl	%eax, %edi	# tmp1350,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1352, res
	jmp	.L339	#
.L338:
	.loc 1 1645 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1353
	movq	-80(%rbp), %r8	# imagr, tmp1354
	movq	-472(%rbp), %rcx	# imag1, tmp1355
	movq	-496(%rbp), %rdx	# real0, tmp1356
	movq	-752(%rbp), %rsi	# binoptab, tmp1357
	movl	-628(%rbp), %eax	# submode, tmp1358
	movl	16(%rbp), %edi	# methods, tmp1359
	movl	%edi, (%rsp)	# tmp1359,
	movl	%eax, %edi	# tmp1358,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1360, res
.L339:
	.loc 1 1648 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L340	#,
	.loc 1 1649 0
	jmp	.L316	#
.L340:
	.loc 1 1650 0
	movq	-464(%rbp), %rax	# res, tmp1361
	cmpq	-80(%rbp), %rax	# imagr, tmp1361
	je	.L341	#,
	.loc 1 1651 0
	movq	-464(%rbp), %rdx	# res, tmp1362
	movq	-80(%rbp), %rax	# imagr, tmp1363
	movq	%rdx, %rsi	# tmp1362,
	movq	%rax, %rdi	# tmp1363,
	call	emit_move_insn	#
.L341:
	.loc 1 1653 0
	movl	$1, -708(%rbp)	#, ok
	.loc 1 1655 0
	jmp	.L316	#
.L314:
	.loc 1 1660 0
	cmpq	$0, -472(%rbp)	#, imag1
	jne	.L342	#,
	.loc 1 1665 0
	movq	-480(%rbp), %rdx	# real1, tmp1364
	movl	-628(%rbp), %eax	# submode, tmp1365
	movq	%rdx, %rsi	# tmp1364,
	movl	%eax, %edi	# tmp1365,
	call	force_reg	#
	movq	%rax, -480(%rbp)	# tmp1366, real1
	.loc 1 1668 0
	cmpl	$6, -688(%rbp)	#, class
	jne	.L343	#,
	.loc 1 1669 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1367
	movq	-88(%rbp), %r8	# realr, tmp1368
	movq	-480(%rbp), %rcx	# real1, tmp1369
	movq	-496(%rbp), %rdx	# real0, tmp1370
	movq	-752(%rbp), %rsi	# binoptab, tmp1371
	movl	-628(%rbp), %eax	# submode, tmp1372
	movl	16(%rbp), %edi	# methods, tmp1373
	movl	%edi, (%rsp)	# tmp1373,
	movl	%eax, %edi	# tmp1372,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1374, res
	jmp	.L344	#
.L343:
	.loc 1 1672 0
	movq	-88(%rbp), %rdi	# realr, tmp1375
	movq	-480(%rbp), %rsi	# real1, tmp1376
	movq	-496(%rbp), %rdx	# real0, tmp1377
	movl	-628(%rbp), %eax	# submode, tmp1378
	movl	-744(%rbp), %ecx	# unsignedp, tmp1379
	movl	%ecx, (%rsp)	# tmp1379,
	movq	%rdi, %r9	# tmp1375,
	movq	%rsi, %r8	# tmp1376,
	movq	%rdx, %rcx	# tmp1377,
	movl	%eax, %edx	# tmp1378,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -464(%rbp)	# tmp1380, res
.L344:
	.loc 1 1675 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L345	#,
	.loc 1 1676 0
	jmp	.L316	#
.L345:
	.loc 1 1677 0
	movq	-464(%rbp), %rax	# res, tmp1381
	cmpq	-88(%rbp), %rax	# realr, tmp1381
	je	.L346	#,
	.loc 1 1678 0
	movq	-464(%rbp), %rdx	# res, tmp1382
	movq	-88(%rbp), %rax	# realr, tmp1383
	movq	%rdx, %rsi	# tmp1382,
	movq	%rax, %rdi	# tmp1383,
	call	emit_move_insn	#
.L346:
	.loc 1 1680 0
	cmpl	$6, -688(%rbp)	#, class
	jne	.L347	#,
	.loc 1 1681 0
	movl	-744(%rbp), %r9d	# unsignedp, tmp1384
	movq	-80(%rbp), %r8	# imagr, tmp1385
	movq	-480(%rbp), %rcx	# real1, tmp1386
	movq	-488(%rbp), %rdx	# imag0, tmp1387
	movq	-752(%rbp), %rsi	# binoptab, tmp1388
	movl	-628(%rbp), %eax	# submode, tmp1389
	movl	16(%rbp), %edi	# methods, tmp1390
	movl	%edi, (%rsp)	# tmp1390,
	movl	%eax, %edi	# tmp1389,
	call	expand_binop	#
	movq	%rax, -464(%rbp)	# tmp1391, res
	jmp	.L348	#
.L347:
	.loc 1 1684 0
	movq	-80(%rbp), %rdi	# imagr, tmp1392
	movq	-480(%rbp), %rsi	# real1, tmp1393
	movq	-488(%rbp), %rdx	# imag0, tmp1394
	movl	-628(%rbp), %eax	# submode, tmp1395
	movl	-744(%rbp), %ecx	# unsignedp, tmp1396
	movl	%ecx, (%rsp)	# tmp1396,
	movq	%rdi, %r9	# tmp1392,
	movq	%rsi, %r8	# tmp1393,
	movq	%rdx, %rcx	# tmp1394,
	movl	%eax, %edx	# tmp1395,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -464(%rbp)	# tmp1397, res
.L348:
	.loc 1 1687 0
	cmpq	$0, -464(%rbp)	#, res
	jne	.L349	#,
	.loc 1 1688 0
	jmp	.L316	#
.L349:
	.loc 1 1689 0
	movq	-464(%rbp), %rax	# res, tmp1398
	cmpq	-80(%rbp), %rax	# imagr, tmp1398
	je	.L350	#,
	.loc 1 1690 0
	movq	-464(%rbp), %rdx	# res, tmp1399
	movq	-80(%rbp), %rax	# imagr, tmp1400
	movq	%rdx, %rsi	# tmp1399,
	movq	%rax, %rdi	# tmp1400,
	call	emit_move_insn	#
.L350:
	.loc 1 1692 0
	movl	$1, -708(%rbp)	#, ok
	jmp	.L351	#
.L342:
	.loc 1 1696 0
	movl	flag_complex_divide_method(%rip), %eax	# flag_complex_divide_method, flag_complex_divide_method.179
	testl	%eax, %eax	# flag_complex_divide_method.179
	je	.L353	#,
	cmpl	$1, %eax	#, flag_complex_divide_method.179
	je	.L354	#,
	jmp	.L376	#
.L353:
	.loc 1 1699 0
	movq	-80(%rbp), %r9	# imagr, tmp1401
	movq	-88(%rbp), %r8	# realr, tmp1402
	movq	-472(%rbp), %rcx	# imag1, tmp1403
	movq	-488(%rbp), %rdx	# imag0, tmp1404
	movq	-480(%rbp), %rsi	# real1, tmp1405
	movq	-496(%rbp), %rax	# real0, tmp1406
	movq	-752(%rbp), %rdi	# binoptab, tmp1407
	movq	%rdi, 32(%rsp)	# tmp1407,
	movl	-688(%rbp), %edi	# class, tmp1408
	movl	%edi, 24(%rsp)	# tmp1408,
	movl	16(%rbp), %edi	# methods, tmp1409
	movl	%edi, 16(%rsp)	# tmp1409,
	movl	-744(%rbp), %edi	# unsignedp, tmp1410
	movl	%edi, 8(%rsp)	# tmp1410,
	movl	-628(%rbp), %edi	# submode, tmp1411
	movl	%edi, (%rsp)	# tmp1411,
	movq	%rax, %rdi	# tmp1406,
	call	expand_cmplxdiv_straight	#
	movl	%eax, -708(%rbp)	# tmp1412, ok
	.loc 1 1703 0
	jmp	.L351	#
.L354:
	.loc 1 1706 0
	movq	-80(%rbp), %r9	# imagr, tmp1413
	movq	-88(%rbp), %r8	# realr, tmp1414
	movq	-472(%rbp), %rcx	# imag1, tmp1415
	movq	-488(%rbp), %rdx	# imag0, tmp1416
	movq	-480(%rbp), %rsi	# real1, tmp1417
	movq	-496(%rbp), %rax	# real0, tmp1418
	movq	-752(%rbp), %rdi	# binoptab, tmp1419
	movq	%rdi, 32(%rsp)	# tmp1419,
	movl	-688(%rbp), %edi	# class, tmp1420
	movl	%edi, 24(%rsp)	# tmp1420,
	movl	16(%rbp), %edi	# methods, tmp1421
	movl	%edi, 16(%rsp)	# tmp1421,
	movl	-744(%rbp), %edi	# unsignedp, tmp1422
	movl	%edi, 8(%rsp)	# tmp1422,
	movl	-628(%rbp), %edi	# submode, tmp1423
	movl	%edi, (%rsp)	# tmp1423,
	movq	%rax, %rdi	# tmp1418,
	call	expand_cmplxdiv_wide	#
	movl	%eax, -708(%rbp)	# tmp1424, ok
	.loc 1 1710 0
	jmp	.L351	#
.L376:
	.loc 1 1713 0
	movl	$__FUNCTION__.13677, %edx	#,
	movl	$1713, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L351:
	.loc 1 1716 0
	jmp	.L316	#
.L310:
	.loc 1 1719 0
	movl	$__FUNCTION__.13677, %edx	#,
	movl	$1719, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L316:
	.loc 1 1722 0
	call	get_insns	#
	movq	%rax, -56(%rbp)	# tmp1425, seq
	.loc 1 1723 0
	call	end_sequence	#
	.loc 1 1725 0
	cmpl	$0, -708(%rbp)	#, ok
	je	.L299	#,
	.loc 1 1727 0
	movq	-752(%rbp), %rax	# binoptab, tmp1426
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	testl	%eax, %eax	# D.18060
	je	.L355	#,
	.loc 1 1729 0
	movq	-768(%rbp), %rax	# op1, tmp1427
	movq	%rax, %rdi	# tmp1427,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.18074
	movq	-760(%rbp), %rax	# op0, tmp1428
	movq	%rax, %rdi	# tmp1428,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18074
	movq	-752(%rbp), %rax	# binoptab, tmp1429
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movl	-740(%rbp), %esi	# mode, tmp1430
	movq	%rbx, %rcx	# D.18074,
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -456(%rbp)	# tmp1431, equiv_value
	jmp	.L356	#
.L355:
	.loc 1 1732 0
	movq	$0, -456(%rbp)	#, equiv_value
.L356:
	.loc 1 1734 0
	movq	-456(%rbp), %rdi	# equiv_value, tmp1432
	movq	-768(%rbp), %rcx	# op1, tmp1433
	movq	-760(%rbp), %rdx	# op0, tmp1434
	movq	-776(%rbp), %rsi	# target, tmp1435
	movq	-56(%rbp), %rax	# seq, tmp1436
	movq	%rdi, %r8	# tmp1432,
	movq	%rax, %rdi	# tmp1436,
	call	emit_no_conflict_block	#
	.loc 1 1736 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L299:
.LBE19:
	.loc 1 1743 0
	movl	-740(%rbp), %edx	# mode, mode.180
	movq	-752(%rbp), %rax	# binoptab, tmp1437
	movslq	%edx, %rdx	# mode.180, tmp1438
	salq	$4, %rdx	#, tmp1439
	addq	%rdx, %rax	# tmp1439, tmp1440
	addq	$16, %rax	#, tmp1441
	movq	(%rax), %rax	# binoptab_1->handlers[mode.180_857].libfunc, D.18074
	testq	%rax, %rax	# D.18074
	je	.L357	#,
	.loc 1 1744 0
	cmpl	$1, 16(%rbp)	#, methods
	je	.L358	#,
	.loc 1 1744 0 is_stmt 0 discriminator 1
	cmpl	$3, 16(%rbp)	#, methods
	jne	.L357	#,
.L358:
.LBB21:
	.loc 1 1747 0 is_stmt 1
	movq	-768(%rbp), %rax	# op1, tmp1442
	movq	%rax, -448(%rbp)	# tmp1442, op1x
	.loc 1 1748 0
	movl	-740(%rbp), %eax	# mode, tmp1443
	movl	%eax, -704(%rbp)	# tmp1443, op1_mode
	.loc 1 1751 0
	call	start_sequence	#
	.loc 1 1753 0
	cmpl	$0, -692(%rbp)	#, shift_op
	je	.L359	#,
	.loc 1 1755 0
	movl	word_mode(%rip), %eax	# word_mode, tmp1444
	movl	%eax, -704(%rbp)	# tmp1444, op1_mode
	.loc 1 1758 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.181
	movq	-768(%rbp), %rcx	# op1, tmp1445
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1445,
	movl	%eax, %edi	# word_mode.181,
	call	convert_to_mode	#
	movq	%rax, -448(%rbp)	# tmp1446, op1x
.L359:
	.loc 1 1761 0
	movq	-760(%rbp), %rax	# op0, tmp1447
	movzbl	2(%rax), %eax	# op0_6->mode, D.18068
	testb	%al, %al	# D.18068
	je	.L360	#,
	.loc 1 1762 0
	movq	-760(%rbp), %rax	# op0, tmp1448
	movzbl	2(%rax), %eax	# op0_6->mode, D.18068
	movzbl	%al, %eax	# D.18068, D.18069
	cmpl	-740(%rbp), %eax	# mode, D.18069
	je	.L360	#,
	.loc 1 1763 0
	movl	-744(%rbp), %edx	# unsignedp, tmp1449
	movq	-760(%rbp), %rcx	# op0, tmp1450
	movl	-740(%rbp), %eax	# mode, tmp1451
	movq	%rcx, %rsi	# tmp1450,
	movl	%eax, %edi	# tmp1451,
	call	convert_to_mode	#
	movq	%rax, -760(%rbp)	# tmp1452, op0
.L360:
	.loc 1 1767 0
	movl	-740(%rbp), %edx	# mode, mode.182
	movq	-752(%rbp), %rax	# binoptab, tmp1453
	movslq	%edx, %rdx	# mode.182, tmp1454
	salq	$4, %rdx	#, tmp1455
	addq	%rdx, %rax	# tmp1455, tmp1456
	addq	$16, %rax	#, tmp1457
	movq	(%rax), %rax	# binoptab_1->handlers[mode.182_868].libfunc, D.18074
	movq	-760(%rbp), %rsi	# op0, tmp1458
	movl	-740(%rbp), %edx	# mode, tmp1459
	movl	-704(%rbp), %ecx	# op1_mode, tmp1460
	movl	%ecx, 16(%rsp)	# tmp1460,
	movq	-448(%rbp), %rcx	# op1x, tmp1461
	movq	%rcx, 8(%rsp)	# tmp1461,
	movl	-740(%rbp), %ecx	# mode, tmp1462
	movl	%ecx, (%rsp)	# tmp1462,
	movq	%rsi, %r9	# tmp1458,
	movl	$2, %r8d	#,
	movl	%edx, %ecx	# tmp1459,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18074,
	movl	$0, %eax	#,
	call	emit_library_call_value	#
	movq	%rax, -48(%rbp)	# tmp1463, value
	.loc 1 1771 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp1464, insns
	.loc 1 1772 0
	call	end_sequence	#
	.loc 1 1774 0
	movl	-740(%rbp), %eax	# mode, tmp1465
	movl	%eax, %edi	# tmp1465,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp1466, target
	.loc 1 1775 0
	movq	-752(%rbp), %rax	# binoptab, tmp1467
	movl	(%rax), %eax	# binoptab_1->code, D.18060
	movq	-768(%rbp), %rcx	# op1, tmp1468
	movq	-760(%rbp), %rdx	# op0, tmp1469
	movl	-740(%rbp), %esi	# mode, tmp1470
	movl	%eax, %edi	# D.18060,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rcx	#, D.18074
	movq	-48(%rbp), %rdx	# value, tmp1471
	movq	-776(%rbp), %rsi	# target, tmp1472
	movq	-40(%rbp), %rax	# insns, tmp1473
	movq	%rax, %rdi	# tmp1473,
	call	emit_libcall_block	#
	.loc 1 1778 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L357:
.LBE21:
	.loc 1 1781 0
	movq	-432(%rbp), %rax	# last, tmp1474
	movq	%rax, %rdi	# tmp1474,
	call	delete_insns_since	#
	.loc 1 1785 0
	cmpl	$2, 16(%rbp)	#, methods
	je	.L361	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	cmpl	$3, 16(%rbp)	#, methods
	je	.L361	#,
	cmpl	$4, 16(%rbp)	#, methods
	je	.L361	#,
	.loc 1 1789 0 is_stmt 1
	movq	-440(%rbp), %rax	# entry_last, tmp1475
	movq	%rax, %rdi	# tmp1475,
	call	delete_insns_since	#
	.loc 1 1790 0
	movl	$0, %eax	#, D.18059
	jmp	.L141	#
.L361:
	.loc 1 1796 0
	cmpl	$3, 16(%rbp)	#, methods
	sete	%al	#, D.18065
	movzbl	%al, %eax	# D.18065, tmp1476
	movl	%eax, 16(%rbp)	# tmp1476, methods
	.loc 1 1801 0
	cmpl	$1, -688(%rbp)	#, class
	je	.L362	#,
	.loc 1 1801 0 is_stmt 0 discriminator 1
	cmpl	$2, -688(%rbp)	#, class
	je	.L362	#,
	cmpl	$6, -688(%rbp)	#, class
	jne	.L363	#,
.L362:
	.loc 1 1803 0 is_stmt 1
	movl	-740(%rbp), %eax	# mode, mode.183
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	movzbl	%al, %eax	# D.18068, tmp1478
	movl	%eax, -728(%rbp)	# tmp1478, wider_mode
	jmp	.L364	#
.L374:
	.loc 1 1806 0
	movl	-728(%rbp), %edx	# wider_mode, wider_mode.184
	movq	-752(%rbp), %rax	# binoptab, tmp1479
	movslq	%edx, %rdx	# wider_mode.184, tmp1480
	salq	$4, %rdx	#, tmp1481
	addq	%rdx, %rax	# tmp1481, tmp1482
	movl	8(%rax), %eax	# binoptab_1->handlers[wider_mode.184_882].insn_code, D.18066
	cmpl	$1317, %eax	#, D.18066
	jne	.L365	#,
	.loc 1 1808 0
	cmpl	$1, 16(%rbp)	#, methods
	jne	.L366	#,
	.loc 1 1809 0
	movl	-728(%rbp), %edx	# wider_mode, wider_mode.185
	movq	-752(%rbp), %rax	# binoptab, tmp1483
	movslq	%edx, %rdx	# wider_mode.185, tmp1484
	salq	$4, %rdx	#, tmp1485
	addq	%rdx, %rax	# tmp1485, tmp1486
	addq	$16, %rax	#, tmp1487
	movq	(%rax), %rax	# binoptab_1->handlers[wider_mode.185_884].libfunc, D.18074
	testq	%rax, %rax	# D.18074
	je	.L366	#,
.L365:
.LBB22:
	.loc 1 1811 0
	movq	-760(%rbp), %rax	# op0, tmp1488
	movq	%rax, -32(%rbp)	# tmp1488, xop0
	movq	-768(%rbp), %rax	# op1, tmp1489
	movq	%rax, -24(%rbp)	# tmp1489, xop1
	.loc 1 1812 0
	movl	$0, -700(%rbp)	#, no_extend
	.loc 1 1818 0
	movq	optab_table+152(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1818 0 is_stmt 0 discriminator 1
	movq	optab_table+144(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1819 0 is_stmt 1
	movq	optab_table+160(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1820 0
	movq	optab_table(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1820 0 is_stmt 0 discriminator 1
	movq	optab_table+16(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1821 0 is_stmt 1
	movq	optab_table+32(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L367	#,
	.loc 1 1821 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	jne	.L368	#,
.L367:
	.loc 1 1822 0 is_stmt 1
	cmpl	$1, -688(%rbp)	#, class
	jne	.L368	#,
	.loc 1 1823 0
	movl	$1, -700(%rbp)	#, no_extend
.L368:
	.loc 1 1825 0
	movl	-700(%rbp), %edi	# no_extend, tmp1490
	movl	-744(%rbp), %ecx	# unsignedp, tmp1491
	movl	-740(%rbp), %edx	# mode, tmp1492
	movl	-728(%rbp), %esi	# wider_mode, tmp1493
	movq	-32(%rbp), %rax	# xop0, tmp1494
	movl	%edi, %r8d	# tmp1490,
	movq	%rax, %rdi	# tmp1494,
	call	widen_operand	#
	movq	%rax, -32(%rbp)	# tmp1495, xop0
	.loc 1 1829 0
	cmpl	$0, -700(%rbp)	#, no_extend
	je	.L369	#,
	.loc 1 1830 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, D.18061
	.loc 1 1829 0 discriminator 1
	cmpq	-752(%rbp), %rax	# binoptab, D.18061
	je	.L369	#,
	.loc 1 1829 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.186
	jmp	.L370	#
.L369:
	.loc 1 1829 0 discriminator 2
	movl	$0, %eax	#, iftmp.186
.L370:
	.loc 1 1829 0 discriminator 4
	movl	-744(%rbp), %ecx	# unsignedp, tmp1496
	movl	-740(%rbp), %edx	# mode, tmp1497
	movl	-728(%rbp), %esi	# wider_mode, tmp1498
	movq	-24(%rbp), %rdi	# xop1, tmp1499
	movl	%eax, %r8d	# iftmp.186,
	call	widen_operand	#
	movq	%rax, -24(%rbp)	# tmp1500, xop1
	.loc 1 1832 0 is_stmt 1 discriminator 4
	movl	-744(%rbp), %r8d	# unsignedp, tmp1501
	movq	-24(%rbp), %rcx	# xop1, tmp1502
	movq	-32(%rbp), %rdx	# xop0, tmp1503
	movq	-752(%rbp), %rsi	# binoptab, tmp1504
	movl	-728(%rbp), %eax	# wider_mode, tmp1505
	movl	16(%rbp), %edi	# methods, tmp1506
	movl	%edi, (%rsp)	# tmp1506,
	movl	%r8d, %r9d	# tmp1501,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1505,
	call	expand_binop	#
	movq	%rax, -624(%rbp)	# tmp1507, temp
	.loc 1 1834 0 discriminator 4
	cmpq	$0, -624(%rbp)	#, temp
	je	.L371	#,
	.loc 1 1836 0
	cmpl	$1, -688(%rbp)	#, class
	je	.L372	#,
	.loc 1 1838 0
	cmpq	$0, -776(%rbp)	#, target
	jne	.L373	#,
	.loc 1 1839 0
	movl	-740(%rbp), %eax	# mode, tmp1508
	movl	%eax, %edi	# tmp1508,
	call	gen_reg_rtx	#
	movq	%rax, -776(%rbp)	# tmp1509, target
.L373:
	.loc 1 1840 0
	movq	-624(%rbp), %rcx	# temp, tmp1510
	movq	-776(%rbp), %rax	# target, tmp1511
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp1510,
	movq	%rax, %rdi	# tmp1511,
	call	convert_move	#
	.loc 1 1841 0
	movq	-776(%rbp), %rax	# target, D.18059
	jmp	.L141	#
.L372:
	.loc 1 1844 0
	movq	-624(%rbp), %rdx	# temp, tmp1512
	movl	-740(%rbp), %eax	# mode, tmp1513
	movq	%rdx, %rsi	# tmp1512,
	movl	%eax, %edi	# tmp1513,
	call	gen_lowpart	#
	jmp	.L141	#
.L371:
	.loc 1 1847 0
	movq	-432(%rbp), %rax	# last, tmp1514
	movq	%rax, %rdi	# tmp1514,
	call	delete_insns_since	#
.L366:
.LBE22:
	.loc 1 1804 0
	movl	-728(%rbp), %eax	# wider_mode, wider_mode.187
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18068
	movzbl	%al, %eax	# D.18068, tmp1516
	movl	%eax, -728(%rbp)	# tmp1516, wider_mode
.L364:
	.loc 1 1803 0 discriminator 1
	cmpl	$0, -728(%rbp)	#, wider_mode
	jne	.L374	#,
.L363:
	.loc 1 1852 0
	movq	-440(%rbp), %rax	# entry_last, tmp1517
	movq	%rax, %rdi	# tmp1517,
	call	delete_insns_since	#
	.loc 1 1853 0
	movl	$0, %eax	#, D.18059
.L141:
	.loc 1 1854 0
	addq	$808, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	expand_binop, .-expand_binop
	.globl	sign_expand_binop
	.type	sign_expand_binop, @function
sign_expand_binop:
.LFB8:
	.loc 1 1870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1040, %rsp	#,
	movl	%edi, -980(%rbp)	# mode, mode
	movq	%rsi, -992(%rbp)	# uoptab, uoptab
	movq	%rdx, -1000(%rbp)	# soptab, soptab
	movq	%rcx, -1008(%rbp)	# op0, op0
	movq	%r8, -1016(%rbp)	# op1, op1
	movq	%r9, -1024(%rbp)	# target, target
	.loc 1 1872 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L378	#,
	.loc 1 1872 0 is_stmt 0 discriminator 1
	movq	-992(%rbp), %rax	# uoptab, iftmp.188
	jmp	.L379	#
.L378:
	.loc 1 1872 0 discriminator 2
	movq	-1000(%rbp), %rax	# soptab, iftmp.188
.L379:
	.loc 1 1872 0 discriminator 3
	movq	%rax, -968(%rbp)	# iftmp.188, direct_optab
	.loc 1 1876 0 is_stmt 1 discriminator 3
	movq	-1024(%rbp), %rdi	# target, tmp64
	movq	-1016(%rbp), %rcx	# op1, tmp65
	movq	-1008(%rbp), %rdx	# op0, tmp66
	movq	-968(%rbp), %rsi	# direct_optab, tmp67
	movl	-980(%rbp), %eax	# mode, tmp68
	movl	$0, (%rsp)	#,
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rdi, %r8	# tmp64,
	movl	%eax, %edi	# tmp68,
	call	expand_binop	#
	movq	%rax, -976(%rbp)	# tmp69, temp
	.loc 1 1878 0 discriminator 3
	cmpq	$0, -976(%rbp)	#, temp
	jne	.L380	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	cmpl	$0, 24(%rbp)	#, methods
	jne	.L381	#,
.L380:
	.loc 1 1879 0 is_stmt 1
	movq	-976(%rbp), %rax	# temp, D.18077
	jmp	.L390	#
.L381:
	.loc 1 1883 0
	movq	-1000(%rbp), %rax	# soptab, tmp70
	leaq	-960(%rbp), %rdx	#, tmp71
	movq	%rax, %rsi	# tmp70, tmp72
	movl	$119, %eax	#, tmp73
	movq	%rdx, %rdi	# tmp71, tmp71
	movq	%rax, %rcx	# tmp73, tmp73
	rep movsq
	.loc 1 1884 0
	movl	-980(%rbp), %eax	# mode, mode.189
	cltq
	salq	$4, %rax	#, tmp75
	addq	%rbp, %rax	#, tmp76
	subq	$960, %rax	#, tmp77
	movl	$1317, 8(%rax)	#, wide_soptab.handlers[mode.189_16].insn_code
	.loc 1 1885 0
	movl	-980(%rbp), %eax	# mode, mode.190
	cltq
	salq	$4, %rax	#, tmp79
	addq	%rbp, %rax	#, tmp80
	subq	$944, %rax	#, tmp81
	movq	$0, (%rax)	#, wide_soptab.handlers[mode.190_17].libfunc
	.loc 1 1887 0
	movq	-1024(%rbp), %rdi	# target, tmp82
	movq	-1016(%rbp), %rcx	# op1, tmp83
	movq	-1008(%rbp), %rdx	# op0, tmp84
	leaq	-960(%rbp), %rsi	#, tmp85
	movl	-980(%rbp), %eax	# mode, tmp86
	movl	$2, (%rsp)	#,
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rdi, %r8	# tmp82,
	movl	%eax, %edi	# tmp86,
	call	expand_binop	#
	movq	%rax, -976(%rbp)	# tmp87, temp
	.loc 1 1891 0
	cmpq	$0, -976(%rbp)	#, temp
	jne	.L383	#,
	.loc 1 1891 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L383	#,
	.loc 1 1892 0 is_stmt 1
	movq	-1024(%rbp), %rdi	# target, tmp88
	movq	-1016(%rbp), %rcx	# op1, tmp89
	movq	-1008(%rbp), %rdx	# op0, tmp90
	movq	-992(%rbp), %rsi	# uoptab, tmp91
	movl	-980(%rbp), %eax	# mode, tmp92
	movl	$2, (%rsp)	#,
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rdi, %r8	# tmp88,
	movl	%eax, %edi	# tmp92,
	call	expand_binop	#
	movq	%rax, -976(%rbp)	# tmp93, temp
.L383:
	.loc 1 1894 0
	cmpq	$0, -976(%rbp)	#, temp
	jne	.L384	#,
	.loc 1 1894 0 is_stmt 0 discriminator 1
	cmpl	$2, 24(%rbp)	#, methods
	jne	.L385	#,
.L384:
	.loc 1 1895 0 is_stmt 1
	movq	-976(%rbp), %rax	# temp, D.18077
	jmp	.L390	#
.L385:
	.loc 1 1898 0
	movq	-1024(%rbp), %rdi	# target, tmp94
	movq	-1016(%rbp), %rcx	# op1, tmp95
	movq	-1008(%rbp), %rdx	# op0, tmp96
	movq	-968(%rbp), %rsi	# direct_optab, tmp97
	movl	-980(%rbp), %eax	# mode, tmp98
	movl	$1, (%rsp)	#,
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rdi, %r8	# tmp94,
	movl	%eax, %edi	# tmp98,
	call	expand_binop	#
	movq	%rax, -976(%rbp)	# tmp99, temp
	.loc 1 1899 0
	cmpq	$0, -976(%rbp)	#, temp
	jne	.L386	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	cmpl	$1, 24(%rbp)	#, methods
	jne	.L387	#,
.L386:
	.loc 1 1900 0 is_stmt 1
	movq	-976(%rbp), %rax	# temp, D.18077
	jmp	.L390	#
.L387:
	.loc 1 1903 0
	movq	-1024(%rbp), %r8	# target, tmp100
	movq	-1016(%rbp), %rcx	# op1, tmp101
	movq	-1008(%rbp), %rdx	# op0, tmp102
	leaq	-960(%rbp), %rsi	#, tmp103
	movl	-980(%rbp), %eax	# mode, tmp104
	movl	24(%rbp), %edi	# methods, tmp105
	movl	%edi, (%rsp)	# tmp105,
	movl	16(%rbp), %r9d	# unsignedp,
	movl	%eax, %edi	# tmp104,
	call	expand_binop	#
	movq	%rax, -976(%rbp)	# tmp106, temp
	.loc 1 1905 0
	cmpq	$0, -976(%rbp)	#, temp
	je	.L388	#,
	.loc 1 1906 0
	movq	-976(%rbp), %rax	# temp, D.18077
	jmp	.L390	#
.L388:
	.loc 1 1907 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L389	#,
	.loc 1 1908 0
	movq	-1024(%rbp), %r8	# target, tmp107
	movq	-1016(%rbp), %rcx	# op1, tmp108
	movq	-1008(%rbp), %rdx	# op0, tmp109
	movq	-992(%rbp), %rsi	# uoptab, tmp110
	movl	-980(%rbp), %eax	# mode, tmp111
	movl	24(%rbp), %edi	# methods, tmp112
	movl	%edi, (%rsp)	# tmp112,
	movl	16(%rbp), %r9d	# unsignedp,
	movl	%eax, %edi	# tmp111,
	call	expand_binop	#
	jmp	.L390	#
.L389:
	.loc 1 1910 0
	movl	$0, %eax	#, D.18077
.L390:
	.loc 1 1911 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sign_expand_binop, .-sign_expand_binop
	.globl	expand_twoval_binop
	.type	expand_twoval_binop, @function
expand_twoval_binop:
.LFB9:
	.loc 1 1931 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# binoptab, binoptab
	movq	%rsi, -112(%rbp)	# op0, op0
	movq	%rdx, -120(%rbp)	# op1, op1
	movq	%rcx, -128(%rbp)	# targ0, targ0
	movq	%r8, -136(%rbp)	# targ1, targ1
	movl	%r9d, -140(%rbp)	# unsignedp, unsignedp
	.loc 1 1932 0
	cmpq	$0, -128(%rbp)	#, targ0
	je	.L392	#,
	.loc 1 1932 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# targ0, iftmp.191
	jmp	.L393	#
.L392:
	.loc 1 1932 0 discriminator 2
	movq	-136(%rbp), %rax	# targ1, iftmp.191
.L393:
	.loc 1 1932 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.191_12->mode, D.18079
	movzbl	%al, %eax	# D.18079, tmp126
	movl	%eax, -92(%rbp)	# tmp126, mode
	.loc 1 1935 0 is_stmt 1 discriminator 3
	call	get_last_insn	#
	movq	%rax, -56(%rbp)	# tmp127, entry_last
	.loc 1 1938 0 discriminator 3
	movl	-92(%rbp), %eax	# mode, mode.192
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp129
	movl	%eax, -88(%rbp)	# tmp129, class
	.loc 1 1940 0 discriminator 3
	movq	-112(%rbp), %rax	# op0, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	protect_from_queue	#
	movq	%rax, -112(%rbp)	# tmp131, op0
	.loc 1 1941 0 discriminator 3
	movq	-120(%rbp), %rax	# op1, tmp132
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	protect_from_queue	#
	movq	%rax, -120(%rbp)	# tmp133, op1
	.loc 1 1943 0 discriminator 3
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.193
	testl	%eax, %eax	# flag_force_mem.193
	je	.L394	#,
	.loc 1 1945 0
	movq	-112(%rbp), %rax	# op0, tmp134
	movq	%rax, %rdi	# tmp134,
	call	force_not_mem	#
	movq	%rax, -112(%rbp)	# tmp135, op0
	.loc 1 1946 0
	movq	-120(%rbp), %rax	# op1, tmp136
	movq	%rax, %rdi	# tmp136,
	call	force_not_mem	#
	movq	%rax, -120(%rbp)	# tmp137, op1
.L394:
	.loc 1 1951 0
	movq	-112(%rbp), %rax	# op0, tmp138
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$67, %ax	#, D.18080
	je	.L395	#,
	.loc 1 1951 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# op0, tmp139
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$68, %ax	#, D.18080
	je	.L395	#,
	.loc 1 1951 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp140
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$54, %ax	#, D.18080
	je	.L395	#,
	movq	-112(%rbp), %rax	# op0, tmp141
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$55, %ax	#, D.18080
	je	.L395	#,
	movq	-112(%rbp), %rax	# op0, tmp142
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$58, %ax	#, D.18080
	je	.L395	#,
	movq	-112(%rbp), %rax	# op0, tmp143
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$134, %ax	#, D.18080
	je	.L395	#,
	movq	-112(%rbp), %rax	# op0, tmp144
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$56, %ax	#, D.18080
	je	.L395	#,
	movq	-112(%rbp), %rax	# op0, tmp145
	movzwl	(%rax), %eax	# op0_1->code, D.18080
	cmpw	$140, %ax	#, D.18080
	jne	.L396	#,
.L395:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18078
	je	.L396	#,
	.loc 1 1952 0 is_stmt 1
	movq	-104(%rbp), %rax	# binoptab, tmp146
	movl	(%rax), %edx	# binoptab_39(D)->code, D.18081
	movq	-112(%rbp), %rax	# op0, tmp147
	movl	%edx, %esi	# D.18081,
	movq	%rax, %rdi	# tmp147,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18078
	jle	.L396	#,
	.loc 1 1953 0
	movq	-112(%rbp), %rdx	# op0, tmp148
	movl	-92(%rbp), %eax	# mode, tmp149
	movq	%rdx, %rsi	# tmp148,
	movl	%eax, %edi	# tmp149,
	call	force_reg	#
	movq	%rax, -112(%rbp)	# tmp150, op0
.L396:
	.loc 1 1955 0
	movq	-120(%rbp), %rax	# op1, tmp151
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$67, %ax	#, D.18080
	je	.L397	#,
	.loc 1 1955 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# op1, tmp152
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$68, %ax	#, D.18080
	je	.L397	#,
	.loc 1 1955 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp153
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$54, %ax	#, D.18080
	je	.L397	#,
	movq	-120(%rbp), %rax	# op1, tmp154
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$55, %ax	#, D.18080
	je	.L397	#,
	movq	-120(%rbp), %rax	# op1, tmp155
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$58, %ax	#, D.18080
	je	.L397	#,
	movq	-120(%rbp), %rax	# op1, tmp156
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$134, %ax	#, D.18080
	je	.L397	#,
	movq	-120(%rbp), %rax	# op1, tmp157
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$56, %ax	#, D.18080
	je	.L397	#,
	movq	-120(%rbp), %rax	# op1, tmp158
	movzwl	(%rax), %eax	# op1_3->code, D.18080
	cmpw	$140, %ax	#, D.18080
	jne	.L398	#,
.L397:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18078
	je	.L398	#,
	.loc 1 1956 0 is_stmt 1
	movq	-104(%rbp), %rax	# binoptab, tmp159
	movl	(%rax), %edx	# binoptab_39(D)->code, D.18081
	movq	-120(%rbp), %rax	# op1, tmp160
	movl	%edx, %esi	# D.18081,
	movq	%rax, %rdi	# tmp160,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18078
	jle	.L398	#,
	.loc 1 1957 0
	movq	-120(%rbp), %rdx	# op1, tmp161
	movl	-92(%rbp), %eax	# mode, tmp162
	movq	%rdx, %rsi	# tmp161,
	movl	%eax, %edi	# tmp162,
	call	force_reg	#
	movq	%rax, -120(%rbp)	# tmp163, op1
.L398:
	.loc 1 1959 0
	cmpq	$0, -128(%rbp)	#, targ0
	je	.L399	#,
	.loc 1 1960 0
	movq	-128(%rbp), %rax	# targ0, tmp164
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	protect_from_queue	#
	movq	%rax, -128(%rbp)	# tmp165, targ0
	jmp	.L400	#
.L399:
	.loc 1 1962 0
	movl	-92(%rbp), %eax	# mode, tmp166
	movl	%eax, %edi	# tmp166,
	call	gen_reg_rtx	#
	movq	%rax, -128(%rbp)	# tmp167, targ0
.L400:
	.loc 1 1963 0
	cmpq	$0, -136(%rbp)	#, targ1
	je	.L401	#,
	.loc 1 1964 0
	movq	-136(%rbp), %rax	# targ1, tmp168
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp169, targ1
	jmp	.L402	#
.L401:
	.loc 1 1966 0
	movl	-92(%rbp), %eax	# mode, tmp170
	movl	%eax, %edi	# tmp170,
	call	gen_reg_rtx	#
	movq	%rax, -136(%rbp)	# tmp171, targ1
.L402:
	.loc 1 1969 0
	call	get_last_insn	#
	movq	%rax, -48(%rbp)	# tmp172, last
	.loc 1 1971 0
	movl	-92(%rbp), %edx	# mode, mode.194
	movq	-104(%rbp), %rax	# binoptab, tmp173
	movslq	%edx, %rdx	# mode.194, tmp174
	salq	$4, %rdx	#, tmp175
	addq	%rdx, %rax	# tmp175, tmp176
	movl	8(%rax), %eax	# binoptab_39(D)->handlers[mode.194_60].insn_code, D.18082
	cmpl	$1317, %eax	#, D.18082
	je	.L403	#,
.LBB23:
	.loc 1 1973 0
	movl	-92(%rbp), %edx	# mode, mode.195
	movq	-104(%rbp), %rax	# binoptab, tmp177
	movslq	%edx, %rdx	# mode.195, tmp178
	salq	$4, %rdx	#, tmp179
	addq	%rdx, %rax	# tmp179, tmp180
	movl	8(%rax), %eax	# binoptab_39(D)->handlers[mode.195_62].insn_code, D.18082
	movl	%eax, -84(%rbp)	# D.18082, icode
	.loc 1 1974 0
	movl	-84(%rbp), %eax	# icode, tmp182
	movslq	%eax, %rdx	# tmp182, tmp181
	movq	%rdx, %rax	# tmp181, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# tmp181, tmp183
	salq	$3, %rax	#, tmp184
	addq	$insn_data+24, %rax	#, tmp185
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	addq	$24, %rax	#, D.18083
	movzwl	16(%rax), %eax	# _66->mode, D.18080
	movzwl	%ax, %eax	# D.18080, tmp186
	movl	%eax, -80(%rbp)	# tmp186, mode0
	.loc 1 1975 0
	movl	-84(%rbp), %eax	# icode, tmp188
	movslq	%eax, %rdx	# tmp188, tmp187
	movq	%rdx, %rax	# tmp187, tmp189
	salq	$2, %rax	#, tmp189
	addq	%rdx, %rax	# tmp187, tmp189
	salq	$3, %rax	#, tmp190
	addq	$insn_data+24, %rax	#, tmp191
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	addq	$48, %rax	#, D.18083
	movzwl	16(%rax), %eax	# _70->mode, D.18080
	movzwl	%ax, %eax	# D.18080, tmp192
	movl	%eax, -76(%rbp)	# tmp192, mode1
	.loc 1 1977 0
	movq	-112(%rbp), %rax	# op0, tmp193
	movq	%rax, -72(%rbp)	# tmp193, xop0
	movq	-120(%rbp), %rax	# op1, tmp194
	movq	%rax, -64(%rbp)	# tmp194, xop1
	.loc 1 1981 0
	movq	-112(%rbp), %rax	# op0, tmp195
	movzbl	2(%rax), %eax	# op0_2->mode, D.18079
	testb	%al, %al	# D.18079
	je	.L404	#,
	.loc 1 1981 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp196
	movzbl	2(%rax), %eax	# op0_2->mode, D.18079
	movzbl	%al, %eax	# D.18079, D.18084
	cmpl	-80(%rbp), %eax	# mode0, D.18084
	je	.L404	#,
	.loc 1 1982 0 is_stmt 1
	movl	-140(%rbp), %edx	# unsignedp, tmp197
	movq	-72(%rbp), %rcx	# xop0, tmp198
	movl	-80(%rbp), %eax	# mode0, tmp199
	movq	%rcx, %rsi	# tmp198,
	movl	%eax, %edi	# tmp199,
	call	convert_to_mode	#
	movq	%rax, -72(%rbp)	# tmp200, xop0
.L404:
	.loc 1 1984 0
	movq	-120(%rbp), %rax	# op1, tmp201
	movzbl	2(%rax), %eax	# op1_4->mode, D.18079
	testb	%al, %al	# D.18079
	je	.L405	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp202
	movzbl	2(%rax), %eax	# op1_4->mode, D.18079
	movzbl	%al, %eax	# D.18079, D.18084
	cmpl	-76(%rbp), %eax	# mode1, D.18084
	je	.L405	#,
	.loc 1 1985 0 is_stmt 1
	movl	-140(%rbp), %edx	# unsignedp, tmp203
	movq	-64(%rbp), %rcx	# xop1, tmp204
	movl	-76(%rbp), %eax	# mode1, tmp205
	movq	%rcx, %rsi	# tmp204,
	movl	%eax, %edi	# tmp205,
	call	convert_to_mode	#
	movq	%rax, -64(%rbp)	# tmp206, xop1
.L405:
	.loc 1 1988 0
	movl	-84(%rbp), %eax	# icode, tmp208
	movslq	%eax, %rdx	# tmp208, tmp207
	movq	%rdx, %rax	# tmp207, tmp209
	salq	$2, %rax	#, tmp209
	addq	%rdx, %rax	# tmp207, tmp209
	salq	$3, %rax	#, tmp210
	addq	$insn_data+24, %rax	#, tmp211
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	addq	$24, %rax	#, D.18083
	movq	(%rax), %rax	# _85->predicate, D.18085
	movl	-80(%rbp), %ecx	# mode0, tmp212
	movq	-72(%rbp), %rdx	# xop0, tmp213
	movl	%ecx, %esi	# tmp212,
	movq	%rdx, %rdi	# tmp213,
	call	*%rax	# D.18085
	testl	%eax, %eax	# D.18078
	jne	.L406	#,
	.loc 1 1989 0
	movq	-72(%rbp), %rdx	# xop0, tmp214
	movl	-80(%rbp), %eax	# mode0, tmp215
	movq	%rdx, %rsi	# tmp214,
	movl	%eax, %edi	# tmp215,
	call	copy_to_mode_reg	#
	movq	%rax, -72(%rbp)	# tmp216, xop0
.L406:
	.loc 1 1991 0
	movl	-84(%rbp), %eax	# icode, tmp218
	movslq	%eax, %rdx	# tmp218, tmp217
	movq	%rdx, %rax	# tmp217, tmp219
	salq	$2, %rax	#, tmp219
	addq	%rdx, %rax	# tmp217, tmp219
	salq	$3, %rax	#, tmp220
	addq	$insn_data+24, %rax	#, tmp221
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	addq	$48, %rax	#, D.18083
	movq	(%rax), %rax	# _90->predicate, D.18085
	movl	-76(%rbp), %ecx	# mode1, tmp222
	movq	-64(%rbp), %rdx	# xop1, tmp223
	movl	%ecx, %esi	# tmp222,
	movq	%rdx, %rdi	# tmp223,
	call	*%rax	# D.18085
	testl	%eax, %eax	# D.18078
	jne	.L407	#,
	.loc 1 1992 0
	movq	-64(%rbp), %rdx	# xop1, tmp224
	movl	-76(%rbp), %eax	# mode1, tmp225
	movq	%rdx, %rsi	# tmp224,
	movl	%eax, %edi	# tmp225,
	call	copy_to_mode_reg	#
	movq	%rax, -64(%rbp)	# tmp226, xop1
.L407:
	.loc 1 1996 0
	movl	-84(%rbp), %eax	# icode, tmp228
	movslq	%eax, %rdx	# tmp228, tmp227
	movq	%rdx, %rax	# tmp227, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# tmp227, tmp229
	salq	$3, %rax	#, tmp230
	addq	$insn_data+24, %rax	#, tmp231
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	movq	(%rax), %rax	# _94->predicate, D.18085
	movl	-92(%rbp), %ecx	# mode, tmp232
	movq	-128(%rbp), %rdx	# targ0, tmp233
	movl	%ecx, %esi	# tmp232,
	movq	%rdx, %rdi	# tmp233,
	call	*%rax	# D.18085
	testl	%eax, %eax	# D.18078
	je	.L408	#,
	.loc 1 1997 0
	movl	-84(%rbp), %eax	# icode, tmp235
	movslq	%eax, %rdx	# tmp235, tmp234
	movq	%rdx, %rax	# tmp234, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# tmp234, tmp236
	salq	$3, %rax	#, tmp237
	addq	$insn_data+24, %rax	#, tmp238
	movq	(%rax), %rax	# insn_data[icode_64].operand, D.18083
	addq	$72, %rax	#, D.18083
	movq	(%rax), %rax	# _98->predicate, D.18085
	movl	-92(%rbp), %ecx	# mode, tmp239
	movq	-136(%rbp), %rdx	# targ1, tmp240
	movl	%ecx, %esi	# tmp239,
	movq	%rdx, %rdi	# tmp240,
	call	*%rax	# D.18085
	testl	%eax, %eax	# D.18078
	jne	.L409	#,
.L408:
	.loc 1 1998 0
	movl	$__FUNCTION__.13732, %edx	#,
	movl	$1998, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L409:
	.loc 1 2000 0
	movl	-84(%rbp), %eax	# icode, tmp242
	movslq	%eax, %rdx	# tmp242, tmp241
	movq	%rdx, %rax	# tmp241, tmp243
	salq	$2, %rax	#, tmp243
	addq	%rdx, %rax	# tmp241, tmp243
	salq	$3, %rax	#, tmp244
	addq	$insn_data+16, %rax	#, tmp245
	movq	(%rax), %r8	# insn_data[icode_64].genfun, D.18086
	movq	-136(%rbp), %rcx	# targ1, tmp246
	movq	-64(%rbp), %rdx	# xop1, tmp247
	movq	-72(%rbp), %rsi	# xop0, tmp248
	movq	-128(%rbp), %rax	# targ0, tmp249
	movq	%rax, %rdi	# tmp249,
	movl	$0, %eax	#,
	call	*%r8	# D.18086
	movq	%rax, -40(%rbp)	# tmp250, pat
	.loc 1 2001 0
	cmpq	$0, -40(%rbp)	#, pat
	je	.L410	#,
	.loc 1 2003 0
	movq	-40(%rbp), %rax	# pat, tmp251
	movq	%rax, %rdi	# tmp251,
	call	emit_insn	#
	.loc 1 2004 0
	movl	$1, %eax	#, D.18078
	jmp	.L411	#
.L410:
	.loc 1 2007 0
	movq	-48(%rbp), %rax	# last, tmp252
	movq	%rax, %rdi	# tmp252,
	call	delete_insns_since	#
.L403:
.LBE23:
	.loc 1 2012 0
	cmpl	$1, -88(%rbp)	#, class
	je	.L412	#,
	.loc 1 2012 0 is_stmt 0 discriminator 1
	cmpl	$2, -88(%rbp)	#, class
	je	.L412	#,
	cmpl	$6, -88(%rbp)	#, class
	jne	.L413	#,
.L412:
	.loc 1 2014 0 is_stmt 1
	movl	-92(%rbp), %eax	# mode, mode.196
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18079
	movzbl	%al, %eax	# D.18079, tmp254
	movl	%eax, -96(%rbp)	# tmp254, wider_mode
	jmp	.L414	#
.L417:
	.loc 1 2017 0
	movl	-96(%rbp), %edx	# wider_mode, wider_mode.197
	movq	-104(%rbp), %rax	# binoptab, tmp255
	movslq	%edx, %rdx	# wider_mode.197, tmp256
	salq	$4, %rdx	#, tmp257
	addq	%rdx, %rax	# tmp257, tmp258
	movl	8(%rax), %eax	# binoptab_39(D)->handlers[wider_mode.197_107].insn_code, D.18082
	cmpl	$1317, %eax	#, D.18082
	je	.L415	#,
.LBB24:
	.loc 1 2020 0
	movl	-96(%rbp), %eax	# wider_mode, tmp259
	movl	%eax, %edi	# tmp259,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp260, t0
	.loc 1 2021 0
	movl	-96(%rbp), %eax	# wider_mode, tmp261
	movl	%eax, %edi	# tmp261,
	call	gen_reg_rtx	#
	movq	%rax, -24(%rbp)	# tmp262, t1
	.loc 1 2022 0
	movl	-140(%rbp), %ecx	# unsignedp, tmp263
	movq	-112(%rbp), %rdx	# op0, tmp264
	movl	-92(%rbp), %esi	# mode, tmp265
	movl	-96(%rbp), %eax	# wider_mode, tmp266
	movl	%eax, %edi	# tmp266,
	call	convert_modes	#
	movq	%rax, -16(%rbp)	# tmp267, cop0
	.loc 1 2023 0
	movl	-140(%rbp), %ecx	# unsignedp, tmp268
	movq	-120(%rbp), %rdx	# op1, tmp269
	movl	-92(%rbp), %esi	# mode, tmp270
	movl	-96(%rbp), %eax	# wider_mode, tmp271
	movl	%eax, %edi	# tmp271,
	call	convert_modes	#
	movq	%rax, -8(%rbp)	# tmp272, cop1
	.loc 1 2025 0
	movl	-140(%rbp), %r8d	# unsignedp, tmp273
	movq	-24(%rbp), %rdi	# t1, tmp274
	movq	-32(%rbp), %rcx	# t0, tmp275
	movq	-8(%rbp), %rdx	# cop1, tmp276
	movq	-16(%rbp), %rsi	# cop0, tmp277
	movq	-104(%rbp), %rax	# binoptab, tmp278
	movl	%r8d, %r9d	# tmp273,
	movq	%rdi, %r8	# tmp274,
	movq	%rax, %rdi	# tmp278,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.18078
	je	.L416	#,
	.loc 1 2028 0
	movl	-140(%rbp), %edx	# unsignedp, tmp279
	movq	-32(%rbp), %rcx	# t0, tmp280
	movq	-128(%rbp), %rax	# targ0, tmp281
	movq	%rcx, %rsi	# tmp280,
	movq	%rax, %rdi	# tmp281,
	call	convert_move	#
	.loc 1 2029 0
	movl	-140(%rbp), %edx	# unsignedp, tmp282
	movq	-24(%rbp), %rcx	# t1, tmp283
	movq	-136(%rbp), %rax	# targ1, tmp284
	movq	%rcx, %rsi	# tmp283,
	movq	%rax, %rdi	# tmp284,
	call	convert_move	#
	.loc 1 2030 0
	movl	$1, %eax	#, D.18078
	jmp	.L411	#
.L416:
	.loc 1 2033 0
	movq	-48(%rbp), %rax	# last, tmp285
	movq	%rax, %rdi	# tmp285,
	call	delete_insns_since	#
.L415:
.LBE24:
	.loc 1 2015 0
	movl	-96(%rbp), %eax	# wider_mode, wider_mode.198
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18079
	movzbl	%al, %eax	# D.18079, tmp287
	movl	%eax, -96(%rbp)	# tmp287, wider_mode
.L414:
	.loc 1 2014 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, wider_mode
	jne	.L417	#,
.L413:
	.loc 1 2038 0
	movq	-56(%rbp), %rax	# entry_last, tmp288
	movq	%rax, %rdi	# tmp288,
	call	delete_insns_since	#
	.loc 1 2039 0
	movl	$0, %eax	#, D.18078
.L411:
	.loc 1 2040 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	expand_twoval_binop, .-expand_twoval_binop
	.globl	expand_simple_unop
	.type	expand_simple_unop, @function
expand_simple_unop:
.LFB10:
	.loc 1 2052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# code, code
	movq	%rdx, -32(%rbp)	# op0, op0
	movq	%rcx, -40(%rbp)	# target, target
	movl	%r8d, -44(%rbp)	# unsignedp, unsignedp
	.loc 1 2053 0
	movl	-24(%rbp), %eax	# code, code.199
	cltq
	movq	code_to_optab(,%rax,8), %rax	# code_to_optab, tmp63
	movq	%rax, -8(%rbp)	# tmp63, unop
	.loc 1 2054 0
	cmpq	$0, -8(%rbp)	#, unop
	jne	.L419	#,
	.loc 1 2055 0
	movl	$__FUNCTION__.13748, %edx	#,
	movl	$2055, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L419:
	.loc 1 2057 0
	movl	-44(%rbp), %edi	# unsignedp, tmp64
	movq	-40(%rbp), %rcx	# target, tmp65
	movq	-32(%rbp), %rdx	# op0, tmp66
	movq	-8(%rbp), %rsi	# unop, tmp67
	movl	-20(%rbp), %eax	# mode, tmp68
	movl	%edi, %r8d	# tmp64,
	movl	%eax, %edi	# tmp68,
	call	expand_unop	#
	.loc 1 2058 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	expand_simple_unop, .-expand_simple_unop
	.globl	expand_unop
	.type	expand_unop, @function
expand_unop:
.LFB11:
	.loc 1 2078 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)	# mode, mode
	movq	%rsi, -176(%rbp)	# unoptab, unoptab
	movq	%rdx, -184(%rbp)	# op0, op0
	movq	%rcx, -192(%rbp)	# target, target
	movl	%r8d, -168(%rbp)	# unsignedp, unsignedp
	.loc 1 2082 0
	call	get_last_insn	#
	movq	%rax, -120(%rbp)	# tmp151, last
	.loc 1 2085 0
	movl	-164(%rbp), %eax	# mode, mode.200
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp153
	movl	%eax, -152(%rbp)	# tmp153, class
	.loc 1 2087 0
	movq	-184(%rbp), %rax	# op0, tmp154
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	protect_from_queue	#
	movq	%rax, -184(%rbp)	# tmp155, op0
	.loc 1 2089 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.201
	testl	%eax, %eax	# flag_force_mem.201
	je	.L422	#,
	.loc 1 2091 0
	movq	-184(%rbp), %rax	# op0, tmp156
	movq	%rax, %rdi	# tmp156,
	call	force_not_mem	#
	movq	%rax, -184(%rbp)	# tmp157, op0
.L422:
	.loc 1 2094 0
	cmpq	$0, -192(%rbp)	#, target
	je	.L423	#,
	.loc 1 2095 0
	movq	-192(%rbp), %rax	# target, tmp158
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	protect_from_queue	#
	movq	%rax, -192(%rbp)	# tmp159, target
.L423:
	.loc 1 2097 0
	movl	-164(%rbp), %edx	# mode, mode.202
	movq	-176(%rbp), %rax	# unoptab, tmp160
	movslq	%edx, %rdx	# mode.202, tmp161
	salq	$4, %rdx	#, tmp162
	addq	%rdx, %rax	# tmp162, tmp163
	movl	8(%rax), %eax	# unoptab_32(D)->handlers[mode.202_31].insn_code, D.18089
	cmpl	$1317, %eax	#, D.18089
	je	.L424	#,
.LBB25:
	.loc 1 2099 0
	movl	-164(%rbp), %edx	# mode, mode.203
	movq	-176(%rbp), %rax	# unoptab, tmp164
	movslq	%edx, %rdx	# mode.203, tmp165
	salq	$4, %rdx	#, tmp166
	addq	%rdx, %rax	# tmp166, tmp167
	movl	8(%rax), %eax	# unoptab_32(D)->handlers[mode.203_34].insn_code, D.18089
	movl	%eax, -148(%rbp)	# D.18089, icode
	.loc 1 2100 0
	movl	-148(%rbp), %eax	# icode, tmp169
	movslq	%eax, %rdx	# tmp169, tmp168
	movq	%rdx, %rax	# tmp168, tmp170
	salq	$2, %rax	#, tmp170
	addq	%rdx, %rax	# tmp168, tmp170
	salq	$3, %rax	#, tmp171
	addq	$insn_data+24, %rax	#, tmp172
	movq	(%rax), %rax	# insn_data[icode_36].operand, D.18090
	addq	$24, %rax	#, D.18090
	movzwl	16(%rax), %eax	# _38->mode, D.18091
	movzwl	%ax, %eax	# D.18091, tmp173
	movl	%eax, -144(%rbp)	# tmp173, mode0
	.loc 1 2101 0
	movq	-184(%rbp), %rax	# op0, tmp174
	movq	%rax, -128(%rbp)	# tmp174, xop0
	.loc 1 2103 0
	cmpq	$0, -192(%rbp)	#, target
	je	.L425	#,
	.loc 1 2104 0
	movq	-192(%rbp), %rax	# target, tmp175
	movq	%rax, -136(%rbp)	# tmp175, temp
	jmp	.L426	#
.L425:
	.loc 1 2106 0
	movl	-164(%rbp), %eax	# mode, tmp176
	movl	%eax, %edi	# tmp176,
	call	gen_reg_rtx	#
	movq	%rax, -136(%rbp)	# tmp177, temp
.L426:
	.loc 1 2108 0
	movq	-128(%rbp), %rax	# xop0, tmp178
	movzbl	2(%rax), %eax	# xop0_41->mode, D.18092
	testb	%al, %al	# D.18092
	je	.L427	#,
	.loc 1 2109 0
	movq	-128(%rbp), %rax	# xop0, tmp179
	movzbl	2(%rax), %eax	# xop0_41->mode, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	cmpl	-144(%rbp), %eax	# mode0, D.18093
	je	.L427	#,
	.loc 1 2110 0
	movl	-168(%rbp), %edx	# unsignedp, tmp180
	movq	-128(%rbp), %rcx	# xop0, tmp181
	movl	-144(%rbp), %eax	# mode0, tmp182
	movq	%rcx, %rsi	# tmp181,
	movl	%eax, %edi	# tmp182,
	call	convert_to_mode	#
	movq	%rax, -128(%rbp)	# tmp183, xop0
.L427:
	.loc 1 2114 0
	movl	-148(%rbp), %eax	# icode, tmp185
	movslq	%eax, %rdx	# tmp185, tmp184
	movq	%rdx, %rax	# tmp184, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# tmp184, tmp186
	salq	$3, %rax	#, tmp187
	addq	$insn_data+24, %rax	#, tmp188
	movq	(%rax), %rax	# insn_data[icode_36].operand, D.18090
	addq	$24, %rax	#, D.18090
	movq	(%rax), %rax	# _50->predicate, D.18094
	movl	-144(%rbp), %ecx	# mode0, tmp189
	movq	-128(%rbp), %rdx	# xop0, tmp190
	movl	%ecx, %esi	# tmp189,
	movq	%rdx, %rdi	# tmp190,
	call	*%rax	# D.18094
	testl	%eax, %eax	# D.18095
	jne	.L428	#,
	.loc 1 2115 0
	movq	-128(%rbp), %rdx	# xop0, tmp191
	movl	-144(%rbp), %eax	# mode0, tmp192
	movq	%rdx, %rsi	# tmp191,
	movl	%eax, %edi	# tmp192,
	call	copy_to_mode_reg	#
	movq	%rax, -128(%rbp)	# tmp193, xop0
.L428:
	.loc 1 2117 0
	movl	-148(%rbp), %eax	# icode, tmp195
	movslq	%eax, %rdx	# tmp195, tmp194
	movq	%rdx, %rax	# tmp194, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# tmp194, tmp196
	salq	$3, %rax	#, tmp197
	addq	$insn_data+24, %rax	#, tmp198
	movq	(%rax), %rax	# insn_data[icode_36].operand, D.18090
	movq	(%rax), %rax	# _54->predicate, D.18094
	movl	-164(%rbp), %ecx	# mode, tmp199
	movq	-136(%rbp), %rdx	# temp, tmp200
	movl	%ecx, %esi	# tmp199,
	movq	%rdx, %rdi	# tmp200,
	call	*%rax	# D.18094
	testl	%eax, %eax	# D.18095
	jne	.L429	#,
	.loc 1 2118 0
	movl	-164(%rbp), %eax	# mode, tmp201
	movl	%eax, %edi	# tmp201,
	call	gen_reg_rtx	#
	movq	%rax, -136(%rbp)	# tmp202, temp
.L429:
	.loc 1 2120 0
	movl	-148(%rbp), %eax	# icode, tmp204
	movslq	%eax, %rdx	# tmp204, tmp203
	movq	%rdx, %rax	# tmp203, tmp205
	salq	$2, %rax	#, tmp205
	addq	%rdx, %rax	# tmp203, tmp205
	salq	$3, %rax	#, tmp206
	addq	$insn_data+16, %rax	#, tmp207
	movq	(%rax), %rdx	# insn_data[icode_36].genfun, D.18096
	movq	-128(%rbp), %rcx	# xop0, tmp208
	movq	-136(%rbp), %rax	# temp, tmp209
	movq	%rcx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	movl	$0, %eax	#,
	call	*%rdx	# D.18096
	movq	%rax, -112(%rbp)	# tmp210, pat
	.loc 1 2121 0
	cmpq	$0, -112(%rbp)	#, pat
	je	.L430	#,
	.loc 1 2123 0
	movq	-112(%rbp), %rax	# pat, tmp211
	movzwl	(%rax), %eax	# pat_59->code, D.18091
	cmpw	$24, %ax	#, D.18091
	jne	.L431	#,
	.loc 1 2124 0
	movq	-176(%rbp), %rax	# unoptab, tmp212
	movl	(%rax), %edx	# unoptab_32(D)->code, D.18097
	movq	-128(%rbp), %rcx	# xop0, tmp213
	movq	-136(%rbp), %rsi	# temp, tmp214
	movq	-112(%rbp), %rax	# pat, tmp215
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp215,
	call	add_equal_note	#
	testl	%eax, %eax	# D.18095
	jne	.L431	#,
	.loc 1 2126 0
	movq	-120(%rbp), %rax	# last, tmp216
	movq	%rax, %rdi	# tmp216,
	call	delete_insns_since	#
	.loc 1 2127 0
	movl	-168(%rbp), %ecx	# unsignedp, tmp217
	movq	-184(%rbp), %rdx	# op0, tmp218
	movq	-176(%rbp), %rsi	# unoptab, tmp219
	movl	-164(%rbp), %eax	# mode, tmp220
	movl	%ecx, %r8d	# tmp217,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp220,
	call	expand_unop	#
	jmp	.L432	#
.L431:
	.loc 1 2130 0
	movq	-112(%rbp), %rax	# pat, tmp221
	movq	%rax, %rdi	# tmp221,
	call	emit_insn	#
	.loc 1 2132 0
	movq	-136(%rbp), %rax	# temp, D.18088
	jmp	.L432	#
.L430:
	.loc 1 2135 0
	movq	-120(%rbp), %rax	# last, tmp222
	movq	%rax, %rdi	# tmp222,
	call	delete_insns_since	#
.L424:
.LBE25:
	.loc 1 2140 0
	cmpl	$1, -152(%rbp)	#, class
	je	.L433	#,
	.loc 1 2140 0 is_stmt 0 discriminator 1
	cmpl	$2, -152(%rbp)	#, class
	je	.L433	#,
	cmpl	$6, -152(%rbp)	#, class
	jne	.L434	#,
.L433:
	.loc 1 2141 0 is_stmt 1
	movl	-164(%rbp), %eax	# mode, mode.204
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18092
	movzbl	%al, %eax	# D.18092, tmp224
	movl	%eax, -160(%rbp)	# tmp224, wider_mode
	jmp	.L435	#
.L443:
	.loc 1 2144 0
	movl	-160(%rbp), %edx	# wider_mode, wider_mode.205
	movq	-176(%rbp), %rax	# unoptab, tmp225
	movslq	%edx, %rdx	# wider_mode.205, tmp226
	salq	$4, %rdx	#, tmp227
	addq	%rdx, %rax	# tmp227, tmp228
	movl	8(%rax), %eax	# unoptab_32(D)->handlers[wider_mode.205_68].insn_code, D.18089
	cmpl	$1317, %eax	#, D.18089
	je	.L436	#,
.LBB26:
	.loc 1 2146 0
	movq	-184(%rbp), %rax	# op0, tmp229
	movq	%rax, -104(%rbp)	# tmp229, xop0
	.loc 1 2153 0
	movq	optab_table+256(%rip), %rax	# optab_table, D.18098
	.loc 1 2152 0
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	je	.L437	#,
	.loc 1 2154 0
	movq	optab_table+288(%rip), %rax	# optab_table, D.18098
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	jne	.L438	#,
.L437:
	.loc 1 2152 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, class
	jne	.L438	#,
	.loc 1 2152 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.206
	jmp	.L439	#
.L438:
	.loc 1 2152 0 discriminator 3
	movl	$0, %eax	#, iftmp.206
.L439:
	.loc 1 2152 0 discriminator 4
	movl	-168(%rbp), %ecx	# unsignedp, tmp230
	movl	-164(%rbp), %edx	# mode, tmp231
	movl	-160(%rbp), %esi	# wider_mode, tmp232
	movq	-104(%rbp), %rdi	# xop0, tmp233
	movl	%eax, %r8d	# iftmp.206,
	call	widen_operand	#
	movq	%rax, -104(%rbp)	# tmp234, xop0
	.loc 1 2157 0 is_stmt 1 discriminator 4
	movl	-168(%rbp), %ecx	# unsignedp, tmp235
	movq	-104(%rbp), %rdx	# xop0, tmp236
	movq	-176(%rbp), %rsi	# unoptab, tmp237
	movl	-160(%rbp), %eax	# wider_mode, tmp238
	movl	%ecx, %r8d	# tmp235,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp238,
	call	expand_unop	#
	movq	%rax, -136(%rbp)	# tmp239, temp
	.loc 1 2160 0 discriminator 4
	cmpq	$0, -136(%rbp)	#, temp
	je	.L440	#,
	.loc 1 2162 0
	cmpl	$1, -152(%rbp)	#, class
	je	.L441	#,
	.loc 1 2164 0
	cmpq	$0, -192(%rbp)	#, target
	jne	.L442	#,
	.loc 1 2165 0
	movl	-164(%rbp), %eax	# mode, tmp240
	movl	%eax, %edi	# tmp240,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp241, target
.L442:
	.loc 1 2166 0
	movq	-136(%rbp), %rcx	# temp, tmp242
	movq	-192(%rbp), %rax	# target, tmp243
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp242,
	movq	%rax, %rdi	# tmp243,
	call	convert_move	#
	.loc 1 2167 0
	movq	-192(%rbp), %rax	# target, D.18088
	jmp	.L432	#
.L441:
	.loc 1 2170 0
	movq	-136(%rbp), %rdx	# temp, tmp244
	movl	-164(%rbp), %eax	# mode, tmp245
	movq	%rdx, %rsi	# tmp244,
	movl	%eax, %edi	# tmp245,
	call	gen_lowpart	#
	jmp	.L432	#
.L440:
	.loc 1 2173 0
	movq	-120(%rbp), %rax	# last, tmp246
	movq	%rax, %rdi	# tmp246,
	call	delete_insns_since	#
.L436:
.LBE26:
	.loc 1 2142 0
	movl	-160(%rbp), %eax	# wider_mode, wider_mode.207
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18092
	movzbl	%al, %eax	# D.18092, tmp248
	movl	%eax, -160(%rbp)	# tmp248, wider_mode
.L435:
	.loc 1 2141 0 discriminator 1
	cmpl	$0, -160(%rbp)	#, wider_mode
	jne	.L443	#,
.L434:
	.loc 1 2178 0
	movq	optab_table+288(%rip), %rax	# optab_table, D.18098
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	jne	.L444	#,
	.loc 1 2179 0
	cmpl	$1, -152(%rbp)	#, class
	jne	.L444	#,
	.loc 1 2180 0
	movl	-164(%rbp), %eax	# mode, mode.208
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18092
	movzbl	%al, %edx	# D.18092, D.18095
	movl	target_flags(%rip), %eax	# target_flags, target_flags.210
	andl	$33554432, %eax	#, D.18095
	testl	%eax, %eax	# D.18095
	je	.L445	#,
	.loc 1 2180 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.209
	jmp	.L446	#
.L445:
	.loc 1 2180 0 discriminator 2
	movl	$4, %eax	#, iftmp.209
.L446:
	.loc 1 2180 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.209, D.18095
	jle	.L444	#,
	.loc 1 2181 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.211
	movl	%eax, %edx	# word_mode.211, word_mode.212
	movq	-176(%rbp), %rax	# unoptab, tmp250
	movslq	%edx, %rdx	# word_mode.212, tmp251
	salq	$4, %rdx	#, tmp252
	addq	%rdx, %rax	# tmp252, tmp253
	movl	8(%rax), %eax	# unoptab_32(D)->handlers[word_mode.212_92].insn_code, D.18089
	cmpl	$1317, %eax	#, D.18089
	je	.L444	#,
.LBB27:
	.loc 1 2186 0
	cmpq	$0, -192(%rbp)	#, target
	je	.L447	#,
	.loc 1 2186 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# target, tmp254
	cmpq	-184(%rbp), %rax	# op0, tmp254
	jne	.L448	#,
.L447:
	.loc 1 2187 0 is_stmt 1
	movl	-164(%rbp), %eax	# mode, tmp255
	movl	%eax, %edi	# tmp255,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp256, target
.L448:
	.loc 1 2189 0
	call	start_sequence	#
	.loc 1 2192 0
	movl	$0, -156(%rbp)	#, i
	jmp	.L449	#
.L453:
.LBB28:
	.loc 1 2194 0
	movl	-156(%rbp), %esi	# i, i.213
	movl	-164(%rbp), %edx	# mode, tmp257
	movq	-192(%rbp), %rax	# target, tmp258
	movl	%edx, %ecx	# tmp257,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp258,
	call	operand_subword	#
	movq	%rax, -96(%rbp)	# tmp259, target_piece
	.loc 1 2195 0
	movl	-156(%rbp), %ecx	# i, i.214
	movl	-164(%rbp), %edx	# mode, tmp260
	movq	-184(%rbp), %rax	# op0, tmp261
	movl	%ecx, %esi	# i.214,
	movq	%rax, %rdi	# tmp261,
	call	operand_subword_force	#
	movq	%rax, %rdx	#, D.18099
	movl	word_mode(%rip), %eax	# word_mode, word_mode.215
	movl	-168(%rbp), %edi	# unsignedp, tmp262
	movq	-96(%rbp), %rcx	# target_piece, tmp263
	movq	-176(%rbp), %rsi	# unoptab, tmp264
	movl	%edi, %r8d	# tmp262,
	movl	%eax, %edi	# word_mode.215,
	call	expand_unop	#
	movq	%rax, -88(%rbp)	# tmp265, x
	.loc 1 2199 0
	movq	-96(%rbp), %rax	# target_piece, tmp266
	cmpq	-88(%rbp), %rax	# x, tmp266
	je	.L450	#,
	.loc 1 2200 0
	movq	-88(%rbp), %rdx	# x, tmp267
	movq	-96(%rbp), %rax	# target_piece, tmp268
	movq	%rdx, %rsi	# tmp267,
	movq	%rax, %rdi	# tmp268,
	call	emit_move_insn	#
.L450:
.LBE28:
	.loc 1 2192 0
	addl	$1, -156(%rbp)	#, i
.L449:
	.loc 1 2192 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# mode, mode.216
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18091
	movzwl	%ax, %eax	# D.18091, D.18095
	movl	target_flags(%rip), %edx	# target_flags, target_flags.218
	andl	$33554432, %edx	#, D.18095
	testl	%edx, %edx	# D.18095
	je	.L451	#,
	movl	$64, %ebx	#, iftmp.217
	jmp	.L452	#
.L451:
	.loc 1 2192 0 discriminator 2
	movl	$32, %ebx	#, iftmp.217
.L452:
	.loc 1 2192 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.217
	cmpl	-156(%rbp), %eax	# i, D.18095
	jg	.L453	#,
	.loc 1 2203 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -80(%rbp)	# tmp272, insns
	.loc 1 2204 0
	call	end_sequence	#
	.loc 1 2206 0
	movq	-184(%rbp), %rax	# op0, tmp273
	movq	%rax, %rdi	# tmp273,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18099
	movq	-176(%rbp), %rax	# unoptab, tmp274
	movl	(%rax), %eax	# unoptab_32(D)->code, D.18097
	movl	-164(%rbp), %ecx	# mode, tmp275
	movl	%ecx, %esi	# tmp275,
	movl	%eax, %edi	# D.18097,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18099
	movq	-184(%rbp), %rdx	# op0, tmp276
	movq	-192(%rbp), %rsi	# target, tmp277
	movq	-80(%rbp), %rax	# insns, tmp278
	movq	%rcx, %r8	# D.18099,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp278,
	call	emit_no_conflict_block	#
	.loc 1 2209 0
	movq	-192(%rbp), %rax	# target, D.18088
	jmp	.L432	#
.L444:
.LBE27:
	.loc 1 2213 0
	movq	-176(%rbp), %rax	# unoptab, tmp279
	movl	(%rax), %eax	# unoptab_32(D)->code, D.18097
	cmpl	$77, %eax	#, D.18097
	jne	.L454	#,
	.loc 1 2214 0
	cmpl	$6, -152(%rbp)	#, class
	je	.L455	#,
	.loc 1 2214 0 is_stmt 0 discriminator 1
	cmpl	$5, -152(%rbp)	#, class
	jne	.L454	#,
.L455:
.LBB29:
	.loc 1 2222 0 is_stmt 1
	cmpl	$5, -152(%rbp)	#, class
	jne	.L456	#,
	.loc 1 2222 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.219
	jmp	.L457	#
.L456:
	.loc 1 2222 0 discriminator 2
	movl	$2, %eax	#, iftmp.219
.L457:
	.loc 1 2222 0 discriminator 3
	movl	-164(%rbp), %edx	# mode, mode.220
	movslq	%edx, %rdx	# mode.220, tmp280
	movzbl	mode_unit_size(%rdx), %edx	# mode_unit_size, D.18092
	movzbl	%dl, %edx	# D.18092, D.18095
	sall	$3, %edx	#, D.18095
	movl	%edx, %ecx	# D.18095, D.18093
	.loc 1 2221 0 is_stmt 1 discriminator 3
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.219,
	movl	%ecx, %edi	# D.18093,
	call	mode_for_size	#
	movl	%eax, -140(%rbp)	# tmp281, submode
	.loc 1 2226 0 discriminator 3
	cmpl	$51, -140(%rbp)	#, submode
	jne	.L458	#,
	.loc 1 2227 0
	movl	$__FUNCTION__.13779, %edx	#,
	movl	$2227, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L458:
	.loc 1 2229 0
	cmpq	$0, -192(%rbp)	#, target
	jne	.L459	#,
	.loc 1 2230 0
	movl	-164(%rbp), %eax	# mode, tmp282
	movl	%eax, %edi	# tmp282,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp283, target
.L459:
	.loc 1 2232 0
	call	start_sequence	#
	.loc 1 2234 0
	movq	-192(%rbp), %rdx	# target, tmp284
	movl	-140(%rbp), %eax	# submode, tmp285
	movq	%rdx, %rsi	# tmp284,
	movl	%eax, %edi	# tmp285,
	call	gen_imagpart	#
	movq	%rax, -72(%rbp)	# tmp286, target_piece
	.loc 1 2235 0
	movq	-184(%rbp), %rdx	# op0, tmp287
	movl	-140(%rbp), %eax	# submode, tmp288
	movq	%rdx, %rsi	# tmp287,
	movl	%eax, %edi	# tmp288,
	call	gen_imagpart	#
	movq	%rax, %rdx	#, D.18099
	movl	-168(%rbp), %edi	# unsignedp, tmp289
	movq	-72(%rbp), %rcx	# target_piece, tmp290
	movq	-176(%rbp), %rsi	# unoptab, tmp291
	movl	-140(%rbp), %eax	# submode, tmp292
	movl	%edi, %r8d	# tmp289,
	movl	%eax, %edi	# tmp292,
	call	expand_unop	#
	movq	%rax, -64(%rbp)	# tmp293, x
	.loc 1 2238 0
	movq	-72(%rbp), %rax	# target_piece, tmp294
	cmpq	-64(%rbp), %rax	# x, tmp294
	je	.L460	#,
	.loc 1 2239 0
	movq	-64(%rbp), %rdx	# x, tmp295
	movq	-72(%rbp), %rax	# target_piece, tmp296
	movq	%rdx, %rsi	# tmp295,
	movq	%rax, %rdi	# tmp296,
	call	emit_move_insn	#
.L460:
	.loc 1 2241 0
	movq	-192(%rbp), %rdx	# target, tmp297
	movl	-140(%rbp), %eax	# submode, tmp298
	movq	%rdx, %rsi	# tmp297,
	movl	%eax, %edi	# tmp298,
	call	gen_realpart	#
	movq	%rax, -72(%rbp)	# tmp299, target_piece
	.loc 1 2242 0
	movq	-184(%rbp), %rdx	# op0, tmp300
	movl	-140(%rbp), %eax	# submode, tmp301
	movq	%rdx, %rsi	# tmp300,
	movl	%eax, %edi	# tmp301,
	call	gen_realpart	#
	movq	%rax, %rdx	#, D.18099
	movl	-168(%rbp), %edi	# unsignedp, tmp302
	movq	-72(%rbp), %rcx	# target_piece, tmp303
	movq	-176(%rbp), %rsi	# unoptab, tmp304
	movl	-140(%rbp), %eax	# submode, tmp305
	movl	%edi, %r8d	# tmp302,
	movl	%eax, %edi	# tmp305,
	call	expand_unop	#
	movq	%rax, -64(%rbp)	# tmp306, x
	.loc 1 2245 0
	movq	-72(%rbp), %rax	# target_piece, tmp307
	cmpq	-64(%rbp), %rax	# x, tmp307
	je	.L461	#,
	.loc 1 2246 0
	movq	-64(%rbp), %rdx	# x, tmp308
	movq	-72(%rbp), %rax	# target_piece, tmp309
	movq	%rdx, %rsi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	emit_move_insn	#
.L461:
	.loc 1 2248 0
	call	get_insns	#
	movq	%rax, -56(%rbp)	# tmp310, seq
	.loc 1 2249 0
	call	end_sequence	#
	.loc 1 2251 0
	movq	-184(%rbp), %rax	# op0, tmp311
	movq	%rax, %rdi	# tmp311,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18099
	movq	-176(%rbp), %rax	# unoptab, tmp312
	movl	(%rax), %eax	# unoptab_32(D)->code, D.18097
	movl	-164(%rbp), %ecx	# mode, tmp313
	movl	%ecx, %esi	# tmp313,
	movl	%eax, %edi	# D.18097,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18099
	movq	-184(%rbp), %rdx	# op0, tmp314
	movq	-192(%rbp), %rsi	# target, tmp315
	movq	-56(%rbp), %rax	# seq, tmp316
	movq	%rcx, %r8	# D.18099,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp316,
	call	emit_no_conflict_block	#
	.loc 1 2254 0
	movq	-192(%rbp), %rax	# target, D.18088
	jmp	.L432	#
.L454:
.LBE29:
	.loc 1 2258 0
	movl	-164(%rbp), %edx	# mode, mode.221
	movq	-176(%rbp), %rax	# unoptab, tmp317
	movslq	%edx, %rdx	# mode.221, tmp318
	salq	$4, %rdx	#, tmp319
	addq	%rdx, %rax	# tmp319, tmp320
	addq	$16, %rax	#, tmp321
	movq	(%rax), %rax	# unoptab_32(D)->handlers[mode.221_137].libfunc, D.18099
	testq	%rax, %rax	# D.18099
	je	.L462	#,
.LBB30:
	.loc 1 2263 0
	call	start_sequence	#
	.loc 1 2267 0
	movl	-164(%rbp), %edx	# mode, mode.222
	movq	-176(%rbp), %rax	# unoptab, tmp322
	movslq	%edx, %rdx	# mode.222, tmp323
	salq	$4, %rdx	#, tmp324
	addq	%rdx, %rax	# tmp324, tmp325
	addq	$16, %rax	#, tmp326
	movq	(%rax), %rax	# unoptab_32(D)->handlers[mode.222_139].libfunc, D.18099
	movq	-184(%rbp), %rsi	# op0, tmp327
	movl	-164(%rbp), %edx	# mode, tmp328
	movl	-164(%rbp), %ecx	# mode, tmp329
	movl	%ecx, (%rsp)	# tmp329,
	movq	%rsi, %r9	# tmp327,
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# tmp328,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18099,
	movl	$0, %eax	#,
	call	emit_library_call_value	#
	movq	%rax, -48(%rbp)	# tmp330, value
	.loc 1 2269 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp331, insns
	.loc 1 2270 0
	call	end_sequence	#
	.loc 1 2272 0
	movl	-164(%rbp), %eax	# mode, tmp332
	movl	%eax, %edi	# tmp332,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp333, target
	.loc 1 2273 0
	movq	-176(%rbp), %rax	# unoptab, tmp334
	movl	(%rax), %eax	# unoptab_32(D)->code, D.18097
	movq	-184(%rbp), %rdx	# op0, tmp335
	movl	-164(%rbp), %ecx	# mode, tmp336
	movl	%ecx, %esi	# tmp336,
	movl	%eax, %edi	# D.18097,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18099
	movq	-48(%rbp), %rdx	# value, tmp337
	movq	-192(%rbp), %rsi	# target, tmp338
	movq	-40(%rbp), %rax	# insns, tmp339
	movq	%rax, %rdi	# tmp339,
	call	emit_libcall_block	#
	.loc 1 2276 0
	movq	-192(%rbp), %rax	# target, D.18088
	jmp	.L432	#
.L462:
.LBE30:
	.loc 1 2281 0
	cmpl	$1, -152(%rbp)	#, class
	je	.L463	#,
	.loc 1 2281 0 is_stmt 0 discriminator 1
	cmpl	$2, -152(%rbp)	#, class
	je	.L463	#,
	cmpl	$6, -152(%rbp)	#, class
	jne	.L464	#,
.L463:
	.loc 1 2283 0 is_stmt 1
	movl	-164(%rbp), %eax	# mode, mode.223
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18092
	movzbl	%al, %eax	# D.18092, tmp341
	movl	%eax, -160(%rbp)	# tmp341, wider_mode
	jmp	.L465	#
.L474:
	.loc 1 2286 0
	movl	-160(%rbp), %edx	# wider_mode, wider_mode.224
	movq	-176(%rbp), %rax	# unoptab, tmp342
	movslq	%edx, %rdx	# wider_mode.224, tmp343
	salq	$4, %rdx	#, tmp344
	addq	%rdx, %rax	# tmp344, tmp345
	movl	8(%rax), %eax	# unoptab_32(D)->handlers[wider_mode.224_150].insn_code, D.18089
	cmpl	$1317, %eax	#, D.18089
	jne	.L466	#,
	.loc 1 2288 0
	movl	-160(%rbp), %edx	# wider_mode, wider_mode.225
	movq	-176(%rbp), %rax	# unoptab, tmp346
	movslq	%edx, %rdx	# wider_mode.225, tmp347
	salq	$4, %rdx	#, tmp348
	addq	%rdx, %rax	# tmp348, tmp349
	addq	$16, %rax	#, tmp350
	movq	(%rax), %rax	# unoptab_32(D)->handlers[wider_mode.225_152].libfunc, D.18099
	testq	%rax, %rax	# D.18099
	je	.L467	#,
.L466:
.LBB31:
	.loc 1 2290 0
	movq	-184(%rbp), %rax	# op0, tmp351
	movq	%rax, -32(%rbp)	# tmp351, xop0
	.loc 1 2297 0
	movq	optab_table+256(%rip), %rax	# optab_table, D.18098
	.loc 1 2296 0
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	je	.L468	#,
	.loc 1 2298 0
	movq	optab_table+288(%rip), %rax	# optab_table, D.18098
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	jne	.L469	#,
.L468:
	.loc 1 2296 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, class
	jne	.L469	#,
	.loc 1 2296 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.226
	jmp	.L470	#
.L469:
	.loc 1 2296 0 discriminator 3
	movl	$0, %eax	#, iftmp.226
.L470:
	.loc 1 2296 0 discriminator 4
	movl	-168(%rbp), %ecx	# unsignedp, tmp352
	movl	-164(%rbp), %edx	# mode, tmp353
	movl	-160(%rbp), %esi	# wider_mode, tmp354
	movq	-32(%rbp), %rdi	# xop0, tmp355
	movl	%eax, %r8d	# iftmp.226,
	call	widen_operand	#
	movq	%rax, -32(%rbp)	# tmp356, xop0
	.loc 1 2301 0 is_stmt 1 discriminator 4
	movl	-168(%rbp), %ecx	# unsignedp, tmp357
	movq	-32(%rbp), %rdx	# xop0, tmp358
	movq	-176(%rbp), %rsi	# unoptab, tmp359
	movl	-160(%rbp), %eax	# wider_mode, tmp360
	movl	%ecx, %r8d	# tmp357,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp360,
	call	expand_unop	#
	movq	%rax, -136(%rbp)	# tmp361, temp
	.loc 1 2304 0 discriminator 4
	cmpq	$0, -136(%rbp)	#, temp
	je	.L471	#,
	.loc 1 2306 0
	cmpl	$1, -152(%rbp)	#, class
	je	.L472	#,
	.loc 1 2308 0
	cmpq	$0, -192(%rbp)	#, target
	jne	.L473	#,
	.loc 1 2309 0
	movl	-164(%rbp), %eax	# mode, tmp362
	movl	%eax, %edi	# tmp362,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp363, target
.L473:
	.loc 1 2310 0
	movq	-136(%rbp), %rcx	# temp, tmp364
	movq	-192(%rbp), %rax	# target, tmp365
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp364,
	movq	%rax, %rdi	# tmp365,
	call	convert_move	#
	.loc 1 2311 0
	movq	-192(%rbp), %rax	# target, D.18088
	jmp	.L432	#
.L472:
	.loc 1 2314 0
	movq	-136(%rbp), %rdx	# temp, tmp366
	movl	-164(%rbp), %eax	# mode, tmp367
	movq	%rdx, %rsi	# tmp366,
	movl	%eax, %edi	# tmp367,
	call	gen_lowpart	#
	jmp	.L432	#
.L471:
	.loc 1 2317 0
	movq	-120(%rbp), %rax	# last, tmp368
	movq	%rax, %rdi	# tmp368,
	call	delete_insns_since	#
.L467:
.LBE31:
	.loc 1 2284 0
	movl	-160(%rbp), %eax	# wider_mode, wider_mode.227
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18092
	movzbl	%al, %eax	# D.18092, tmp370
	movl	%eax, -160(%rbp)	# tmp370, wider_mode
.L465:
	.loc 1 2283 0 discriminator 1
	cmpl	$0, -160(%rbp)	#, wider_mode
	jne	.L474	#,
.L464:
	.loc 1 2324 0
	movq	-176(%rbp), %rax	# unoptab, tmp371
	movl	(%rax), %eax	# unoptab_32(D)->code, D.18097
	cmpl	$77, %eax	#, D.18097
	jne	.L475	#,
.LBB32:
	.loc 1 2329 0
	movl	-164(%rbp), %eax	# mode, mode.228
	.loc 1 2327 0
	cltq
	movq	const_tiny_rtx(,%rax,8), %rdx	# const_tiny_rtx, D.18099
	.loc 1 2328 0
	movq	optab_table+264(%rip), %rax	# optab_table, D.18098
	.loc 1 2327 0
	cmpq	-176(%rbp), %rax	# unoptab, D.18098
	jne	.L476	#,
	.loc 1 2327 0 is_stmt 0 discriminator 1
	movq	optab_table+24(%rip), %rax	# optab_table, iftmp.229
	jmp	.L477	#
.L476:
	.loc 1 2327 0 discriminator 2
	movq	optab_table+16(%rip), %rax	# optab_table, iftmp.229
.L477:
	.loc 1 2327 0 discriminator 3
	movl	-168(%rbp), %r8d	# unsignedp, tmp373
	movq	-192(%rbp), %rsi	# target, tmp374
	movq	-184(%rbp), %rcx	# op0, tmp375
	movl	-164(%rbp), %edi	# mode, tmp376
	movl	$3, (%rsp)	#,
	movl	%r8d, %r9d	# tmp373,
	movq	%rsi, %r8	# tmp374,
	movq	%rax, %rsi	# iftmp.229,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp377, temp
	.loc 1 2331 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, temp
	je	.L475	#,
	.loc 1 2332 0
	movq	-24(%rbp), %rax	# temp, D.18088
	jmp	.L432	#
.L475:
.LBE32:
	.loc 1 2335 0
	movl	$0, %eax	#, D.18088
.L432:
	.loc 1 2336 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	expand_unop, .-expand_unop
	.globl	expand_abs
	.type	expand_abs, @function
expand_abs:
.LFB12:
	.loc 1 2354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -36(%rbp)	# mode, mode
	movq	%rsi, -48(%rbp)	# op0, op0
	movq	%rdx, -56(%rbp)	# target, target
	movl	%ecx, -40(%rbp)	# result_unsignedp, result_unsignedp
	movl	%r8d, -60(%rbp)	# safe, safe
	.loc 1 2357 0
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.230
	testl	%eax, %eax	# flag_trapv.230
	jne	.L479	#,
	.loc 1 2358 0
	movl	$1, -40(%rbp)	#, result_unsignedp
.L479:
	.loc 1 2361 0
	cmpl	$0, -40(%rbp)	#, result_unsignedp
	je	.L480	#,
	.loc 1 2361 0 is_stmt 0 discriminator 1
	movq	optab_table+272(%rip), %rax	# optab_table, iftmp.231
	jmp	.L481	#
.L480:
	.loc 1 2361 0 discriminator 2
	movq	optab_table+280(%rip), %rax	# optab_table, iftmp.231
.L481:
	.loc 1 2361 0 discriminator 3
	movq	-56(%rbp), %rcx	# target, tmp107
	movq	-48(%rbp), %rdx	# op0, tmp108
	movl	-36(%rbp), %edi	# mode, tmp109
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# iftmp.231,
	call	expand_unop	#
	movq	%rax, -32(%rbp)	# tmp110, temp
	.loc 1 2363 0 is_stmt 1 discriminator 3
	cmpq	$0, -32(%rbp)	#, temp
	je	.L482	#,
	.loc 1 2364 0
	movq	-32(%rbp), %rax	# temp, D.18100
	jmp	.L483	#
.L482:
	.loc 1 2367 0
	movq	optab_table+216(%rip), %rax	# optab_table, D.18101
	movl	-36(%rbp), %edx	# mode, mode.232
	movslq	%edx, %rdx	# mode.232, tmp111
	salq	$4, %rdx	#, tmp112
	addq	%rdx, %rax	# tmp112, tmp113
	movl	8(%rax), %eax	# _20->handlers[mode.232_21].insn_code, D.18102
	cmpl	$1317, %eax	#, D.18102
	je	.L484	#,
.LBB33:
	.loc 1 2369 0
	call	get_last_insn	#
	movq	%rax, -24(%rbp)	# tmp114, last
	.loc 1 2371 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.18101
	movq	-48(%rbp), %rdx	# op0, tmp115
	movl	-36(%rbp), %eax	# mode, tmp116
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp116,
	call	expand_unop	#
	movq	%rax, -32(%rbp)	# tmp117, temp
	.loc 1 2372 0
	cmpq	$0, -32(%rbp)	#, temp
	je	.L485	#,
	.loc 1 2373 0
	movq	optab_table+216(%rip), %rsi	# optab_table, D.18101
	movq	-56(%rbp), %rdi	# target, tmp118
	movq	-32(%rbp), %rcx	# temp, tmp119
	movq	-48(%rbp), %rdx	# op0, tmp120
	movl	-36(%rbp), %eax	# mode, tmp121
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp118,
	movl	%eax, %edi	# tmp121,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp122, temp
.L485:
	.loc 1 2376 0
	cmpq	$0, -32(%rbp)	#, temp
	je	.L486	#,
	.loc 1 2377 0
	movq	-32(%rbp), %rax	# temp, D.18100
	jmp	.L483	#
.L486:
	.loc 1 2379 0
	movq	-24(%rbp), %rax	# last, tmp123
	movq	%rax, %rdi	# tmp123,
	call	delete_insns_since	#
.L484:
.LBE33:
	.loc 1 2386 0
	movl	-36(%rbp), %eax	# mode, mode.233
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18103
	cmpl	$1, %eax	#, D.18103
	jne	.L487	#,
	.loc 1 2386 0 is_stmt 0 discriminator 1
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.234
	cmpl	$1, %eax	#, ix86_branch_cost.234
	jle	.L487	#,
.LBB34:
	.loc 1 2389 0 is_stmt 1
	movl	-36(%rbp), %eax	# mode, mode.235
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18104
	movzwl	%ax, %eax	# D.18104, D.18105
	subl	$1, %eax	#, D.18105
	.loc 1 2388 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18106,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.18107
	movq	-48(%rbp), %rdx	# op0, tmp126
	movl	-36(%rbp), %eax	# mode, tmp127
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp127,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -16(%rbp)	# tmp128, extended
	.loc 1 2392 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.18101
	movq	-56(%rbp), %rdi	# target, tmp129
	movq	-48(%rbp), %rcx	# op0, tmp130
	movq	-16(%rbp), %rdx	# extended, tmp131
	movl	-36(%rbp), %eax	# mode, tmp132
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp129,
	movl	%eax, %edi	# tmp132,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp133, temp
	.loc 1 2394 0
	cmpq	$0, -32(%rbp)	#, temp
	je	.L488	#,
	.loc 1 2395 0
	cmpl	$0, -40(%rbp)	#, result_unsignedp
	je	.L489	#,
	.loc 1 2395 0 is_stmt 0 discriminator 1
	movq	optab_table+16(%rip), %rax	# optab_table, iftmp.236
	jmp	.L490	#
.L489:
	.loc 1 2395 0 discriminator 2
	movq	optab_table+24(%rip), %rax	# optab_table, iftmp.236
.L490:
	.loc 1 2395 0 discriminator 3
	movq	-56(%rbp), %rsi	# target, tmp134
	movq	-16(%rbp), %rcx	# extended, tmp135
	movq	-32(%rbp), %rdx	# temp, tmp136
	movl	-36(%rbp), %edi	# mode, tmp137
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp134,
	movq	%rax, %rsi	# iftmp.236,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp138, temp
.L488:
	.loc 1 2398 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, temp
	je	.L487	#,
	.loc 1 2399 0
	movq	-32(%rbp), %rax	# temp, D.18100
	jmp	.L483	#
.L487:
.LBE34:
	.loc 1 2406 0
	movq	-48(%rbp), %rax	# op0, tmp139
	cmpq	-56(%rbp), %rax	# target, tmp139
	jne	.L491	#,
	.loc 1 2406 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# op0, tmp140
	movzwl	(%rax), %eax	# op0_16(D)->code, D.18104
	cmpw	$61, %ax	#, D.18104
	jne	.L491	#,
	.loc 1 2407 0 is_stmt 1
	movq	-48(%rbp), %rax	# op0, tmp141
	movl	8(%rax), %eax	# op0_16(D)->fld[0].rtuint, D.18108
	cmpl	$52, %eax	#, D.18108
	jbe	.L491	#,
	.loc 1 2408 0
	movl	$1, -60(%rbp)	#, safe
.L491:
	.loc 1 2410 0
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp142, op1
	.loc 1 2411 0
	cmpq	$0, -56(%rbp)	#, target
	je	.L492	#,
	.loc 1 2411 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, safe
	je	.L492	#,
	.loc 1 2412 0 is_stmt 1
	movq	-56(%rbp), %rax	# target, tmp143
	movzbl	2(%rax), %eax	# target_17(D)->mode, D.18109
	movzbl	%al, %eax	# D.18109, D.18108
	cmpl	-36(%rbp), %eax	# mode, D.18108
	jne	.L492	#,
	.loc 1 2413 0
	movq	-56(%rbp), %rax	# target, tmp144
	movzwl	(%rax), %eax	# target_17(D)->code, D.18104
	cmpw	$66, %ax	#, D.18104
	jne	.L493	#,
	.loc 1 2413 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# target, tmp145
	movzbl	3(%rax), %eax	# *target_17(D), D.18109
	andl	$8, %eax	#, D.18109
	testb	%al, %al	# D.18109
	jne	.L492	#,
.L493:
	.loc 1 2414 0 is_stmt 1
	movq	-56(%rbp), %rax	# target, tmp146
	movzwl	(%rax), %eax	# target_17(D)->code, D.18104
	cmpw	$61, %ax	#, D.18104
	jne	.L494	#,
	.loc 1 2415 0
	movq	-56(%rbp), %rax	# target, tmp147
	movl	8(%rax), %eax	# target_17(D)->fld[0].rtuint, D.18108
	cmpl	$52, %eax	#, D.18108
	ja	.L494	#,
.L492:
	.loc 1 2416 0
	movl	-36(%rbp), %eax	# mode, tmp148
	movl	%eax, %edi	# tmp148,
	call	gen_reg_rtx	#
	movq	%rax, -56(%rbp)	# tmp149, target
.L494:
	.loc 1 2418 0
	movq	-48(%rbp), %rdx	# op0, tmp150
	movq	-56(%rbp), %rax	# target, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	emit_move_insn	#
	.loc 1 2419 0
	movq	cfun(%rip), %rax	# cfun, cfun.237
	movq	16(%rax), %rax	# cfun.237_58->expr, D.18110
	movq	cfun(%rip), %rdx	# cfun, cfun.238
	movq	16(%rdx), %rdx	# cfun.238_60->expr, D.18110
	movl	4(%rdx), %edx	# _61->x_inhibit_defer_pop, D.18105
	addl	$1, %edx	#, D.18105
	movl	%edx, 4(%rax)	# D.18105, _59->x_inhibit_defer_pop
	.loc 1 2423 0
	movl	-36(%rbp), %eax	# mode, mode.239
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18103
	cmpl	$1, %eax	#, D.18103
	jne	.L495	#,
	.loc 1 2424 0
	movl	-36(%rbp), %eax	# mode, tmp153
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp153,
	movl	$104, %edi	#,
	call	can_compare_p	#
	testl	%eax, %eax	# D.18105
	jne	.L495	#,
	.loc 1 2425 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.18111
	movq	-8(%rbp), %rsi	# op1, tmp154
	movq	-56(%rbp), %rdx	# target, tmp155
	movl	-36(%rbp), %eax	# mode, tmp156
	movq	%rsi, %r9	# tmp154,
	movl	$0, %r8d	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp156,
	call	do_jump_by_parts_greater_rtx	#
	jmp	.L496	#
.L495:
	.loc 1 2428 0
	movl	-36(%rbp), %eax	# mode, mode.240
	cltq
	movq	const_tiny_rtx(,%rax,8), %rsi	# const_tiny_rtx, D.18111
	movl	-36(%rbp), %ecx	# mode, tmp158
	movq	-56(%rbp), %rax	# target, tmp159
	movq	-8(%rbp), %rdx	# op1, tmp160
	movq	%rdx, 8(%rsp)	# tmp160,
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# tmp158,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp159,
	call	do_compare_rtx_and_jump	#
.L496:
	.loc 1 2431 0
	cmpl	$0, -40(%rbp)	#, result_unsignedp
	je	.L497	#,
	.loc 1 2431 0 is_stmt 0 discriminator 1
	movq	optab_table+256(%rip), %rax	# optab_table, iftmp.241
	jmp	.L498	#
.L497:
	.loc 1 2431 0 discriminator 2
	movq	optab_table+264(%rip), %rax	# optab_table, iftmp.241
.L498:
	.loc 1 2431 0 discriminator 3
	movq	-56(%rbp), %rcx	# target, tmp161
	movq	-56(%rbp), %rdx	# target, tmp162
	movl	-36(%rbp), %edi	# mode, tmp163
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# iftmp.241,
	call	expand_unop	#
	movq	%rax, -48(%rbp)	# tmp164, op0
	.loc 1 2433 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# op0, tmp165
	cmpq	-56(%rbp), %rax	# target, tmp165
	je	.L499	#,
	.loc 1 2434 0
	movq	-48(%rbp), %rdx	# op0, tmp166
	movq	-56(%rbp), %rax	# target, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	emit_move_insn	#
.L499:
	.loc 1 2435 0
	movq	-8(%rbp), %rax	# op1, tmp168
	movq	%rax, %rdi	# tmp168,
	call	emit_label	#
	.loc 1 2436 0
	movq	cfun(%rip), %rax	# cfun, cfun.242
	movq	16(%rax), %rax	# cfun.242_73->expr, D.18110
	movq	cfun(%rip), %rdx	# cfun, cfun.243
	movq	16(%rdx), %rdx	# cfun.243_75->expr, D.18110
	movl	4(%rdx), %edx	# _76->x_inhibit_defer_pop, D.18105
	subl	$1, %edx	#, D.18105
	movl	%edx, 4(%rax)	# D.18105, _74->x_inhibit_defer_pop
	.loc 1 2437 0
	movq	-56(%rbp), %rax	# target, D.18100
.L483:
	.loc 1 2438 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	expand_abs, .-expand_abs
	.globl	expand_complex_abs
	.type	expand_complex_abs, @function
expand_complex_abs:
.LFB13:
	.loc 1 2455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -132(%rbp)	# mode, mode
	movq	%rsi, -144(%rbp)	# op0, op0
	movq	%rdx, -152(%rbp)	# target, target
	movl	%ecx, -136(%rbp)	# unsignedp, unsignedp
	.loc 1 2456 0
	movl	-132(%rbp), %eax	# mode, mode.244
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp122
	movl	%eax, -120(%rbp)	# tmp122, class
	.loc 1 2459 0
	call	get_last_insn	#
	movq	%rax, -88(%rbp)	# tmp123, entry_last
	.loc 1 2466 0
	cmpl	$5, -120(%rbp)	#, class
	jne	.L501	#,
	.loc 1 2466 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.245
	jmp	.L502	#
.L501:
	.loc 1 2466 0 discriminator 2
	movl	$2, %eax	#, iftmp.245
.L502:
	.loc 1 2466 0 discriminator 3
	movl	-132(%rbp), %edx	# mode, mode.246
	movslq	%edx, %rdx	# mode.246, tmp124
	movzbl	mode_unit_size(%rdx), %edx	# mode_unit_size, D.18113
	movzbl	%dl, %edx	# D.18113, D.18114
	sall	$3, %edx	#, D.18114
	movl	%edx, %ecx	# D.18114, D.18115
	.loc 1 2465 0 is_stmt 1 discriminator 3
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.245,
	movl	%ecx, %edi	# D.18115,
	call	mode_for_size	#
	movl	%eax, -116(%rbp)	# tmp125, submode
	.loc 1 2470 0 discriminator 3
	cmpl	$51, -116(%rbp)	#, submode
	jne	.L503	#,
	.loc 1 2471 0
	movl	$__FUNCTION__.13812, %edx	#,
	movl	$2471, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L503:
	.loc 1 2473 0
	movq	-144(%rbp), %rax	# op0, tmp126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp127, op0
	.loc 1 2475 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.247
	testl	%eax, %eax	# flag_force_mem.247
	je	.L504	#,
	.loc 1 2477 0
	movq	-144(%rbp), %rax	# op0, tmp128
	movq	%rax, %rdi	# tmp128,
	call	force_not_mem	#
	movq	%rax, -144(%rbp)	# tmp129, op0
.L504:
	.loc 1 2480 0
	call	get_last_insn	#
	movq	%rax, -80(%rbp)	# tmp130, last
	.loc 1 2482 0
	cmpq	$0, -152(%rbp)	#, target
	je	.L505	#,
	.loc 1 2483 0
	movq	-152(%rbp), %rax	# target, tmp131
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	protect_from_queue	#
	movq	%rax, -152(%rbp)	# tmp132, target
.L505:
	.loc 1 2487 0
	cmpl	$0, -136(%rbp)	#, unsignedp
	jne	.L506	#,
	.loc 1 2485 0
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.249
	testl	%eax, %eax	# flag_trapv.249
	je	.L506	#,
	.loc 1 2486 0
	movl	-132(%rbp), %eax	# mode, mode.250
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18116
	cmpl	$1, %eax	#, D.18116
	jne	.L506	#,
	.loc 1 2487 0
	movq	optab_table+280(%rip), %rax	# optab_table, iftmp.248
	jmp	.L507	#
.L506:
	.loc 1 2487 0 is_stmt 0 discriminator 1
	movq	optab_table+272(%rip), %rax	# optab_table, iftmp.248
.L507:
	.loc 1 2485 0 is_stmt 1
	movq	%rax, -72(%rbp)	# iftmp.248, this_abs_optab
	.loc 1 2489 0
	movl	-132(%rbp), %edx	# mode, mode.251
	movq	-72(%rbp), %rax	# this_abs_optab, tmp134
	movslq	%edx, %rdx	# mode.251, tmp135
	salq	$4, %rdx	#, tmp136
	addq	%rdx, %rax	# tmp136, tmp137
	movl	8(%rax), %eax	# this_abs_optab_40->handlers[mode.251_41].insn_code, D.18117
	cmpl	$1317, %eax	#, D.18117
	je	.L508	#,
.LBB35:
	.loc 1 2491 0
	movl	-132(%rbp), %edx	# mode, mode.252
	movq	-72(%rbp), %rax	# this_abs_optab, tmp138
	movslq	%edx, %rdx	# mode.252, tmp139
	salq	$4, %rdx	#, tmp140
	addq	%rdx, %rax	# tmp140, tmp141
	movl	8(%rax), %eax	# this_abs_optab_40->handlers[mode.252_43].insn_code, D.18117
	movl	%eax, -112(%rbp)	# D.18117, icode
	.loc 1 2492 0
	movl	-112(%rbp), %eax	# icode, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# tmp142, tmp144
	salq	$3, %rax	#, tmp145
	addq	$insn_data+24, %rax	#, tmp146
	movq	(%rax), %rax	# insn_data[icode_45].operand, D.18118
	addq	$24, %rax	#, D.18118
	movzwl	16(%rax), %eax	# _47->mode, D.18119
	movzwl	%ax, %eax	# D.18119, tmp147
	movl	%eax, -108(%rbp)	# tmp147, mode0
	.loc 1 2493 0
	movq	-144(%rbp), %rax	# op0, tmp148
	movq	%rax, -96(%rbp)	# tmp148, xop0
	.loc 1 2495 0
	cmpq	$0, -152(%rbp)	#, target
	je	.L509	#,
	.loc 1 2496 0
	movq	-152(%rbp), %rax	# target, tmp149
	movq	%rax, -104(%rbp)	# tmp149, temp
	jmp	.L510	#
.L509:
	.loc 1 2498 0
	movl	-116(%rbp), %eax	# submode, tmp150
	movl	%eax, %edi	# tmp150,
	call	gen_reg_rtx	#
	movq	%rax, -104(%rbp)	# tmp151, temp
.L510:
	.loc 1 2500 0
	movq	-96(%rbp), %rax	# xop0, tmp152
	movzbl	2(%rax), %eax	# xop0_50->mode, D.18113
	testb	%al, %al	# D.18113
	je	.L511	#,
	.loc 1 2501 0
	movq	-96(%rbp), %rax	# xop0, tmp153
	movzbl	2(%rax), %eax	# xop0_50->mode, D.18113
	movzbl	%al, %eax	# D.18113, D.18115
	cmpl	-108(%rbp), %eax	# mode0, D.18115
	je	.L511	#,
	.loc 1 2502 0
	movl	-136(%rbp), %edx	# unsignedp, tmp154
	movq	-96(%rbp), %rcx	# xop0, tmp155
	movl	-108(%rbp), %eax	# mode0, tmp156
	movq	%rcx, %rsi	# tmp155,
	movl	%eax, %edi	# tmp156,
	call	convert_to_mode	#
	movq	%rax, -96(%rbp)	# tmp157, xop0
.L511:
	.loc 1 2506 0
	movl	-112(%rbp), %eax	# icode, tmp159
	movslq	%eax, %rdx	# tmp159, tmp158
	movq	%rdx, %rax	# tmp158, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# tmp158, tmp160
	salq	$3, %rax	#, tmp161
	addq	$insn_data+24, %rax	#, tmp162
	movq	(%rax), %rax	# insn_data[icode_45].operand, D.18118
	addq	$24, %rax	#, D.18118
	movq	(%rax), %rax	# _58->predicate, D.18120
	movl	-108(%rbp), %ecx	# mode0, tmp163
	movq	-96(%rbp), %rdx	# xop0, tmp164
	movl	%ecx, %esi	# tmp163,
	movq	%rdx, %rdi	# tmp164,
	call	*%rax	# D.18120
	testl	%eax, %eax	# D.18114
	jne	.L512	#,
	.loc 1 2507 0
	movq	-96(%rbp), %rdx	# xop0, tmp165
	movl	-108(%rbp), %eax	# mode0, tmp166
	movq	%rdx, %rsi	# tmp165,
	movl	%eax, %edi	# tmp166,
	call	copy_to_mode_reg	#
	movq	%rax, -96(%rbp)	# tmp167, xop0
.L512:
	.loc 1 2509 0
	movl	-112(%rbp), %eax	# icode, tmp169
	movslq	%eax, %rdx	# tmp169, tmp168
	movq	%rdx, %rax	# tmp168, tmp170
	salq	$2, %rax	#, tmp170
	addq	%rdx, %rax	# tmp168, tmp170
	salq	$3, %rax	#, tmp171
	addq	$insn_data+24, %rax	#, tmp172
	movq	(%rax), %rax	# insn_data[icode_45].operand, D.18118
	movq	(%rax), %rax	# _62->predicate, D.18120
	movl	-116(%rbp), %ecx	# submode, tmp173
	movq	-104(%rbp), %rdx	# temp, tmp174
	movl	%ecx, %esi	# tmp173,
	movq	%rdx, %rdi	# tmp174,
	call	*%rax	# D.18120
	testl	%eax, %eax	# D.18114
	jne	.L513	#,
	.loc 1 2510 0
	movl	-116(%rbp), %eax	# submode, tmp175
	movl	%eax, %edi	# tmp175,
	call	gen_reg_rtx	#
	movq	%rax, -104(%rbp)	# tmp176, temp
.L513:
	.loc 1 2512 0
	movl	-112(%rbp), %eax	# icode, tmp178
	movslq	%eax, %rdx	# tmp178, tmp177
	movq	%rdx, %rax	# tmp177, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# tmp177, tmp179
	salq	$3, %rax	#, tmp180
	addq	$insn_data+16, %rax	#, tmp181
	movq	(%rax), %rdx	# insn_data[icode_45].genfun, D.18121
	movq	-96(%rbp), %rcx	# xop0, tmp182
	movq	-104(%rbp), %rax	# temp, tmp183
	movq	%rcx, %rsi	# tmp182,
	movq	%rax, %rdi	# tmp183,
	movl	$0, %eax	#,
	call	*%rdx	# D.18121
	movq	%rax, -64(%rbp)	# tmp184, pat
	.loc 1 2513 0
	cmpq	$0, -64(%rbp)	#, pat
	je	.L514	#,
	.loc 1 2515 0
	movq	-64(%rbp), %rax	# pat, tmp185
	movzwl	(%rax), %eax	# pat_67->code, D.18119
	cmpw	$24, %ax	#, D.18119
	jne	.L515	#,
	.loc 1 2516 0
	movq	-72(%rbp), %rax	# this_abs_optab, tmp186
	movl	(%rax), %edx	# this_abs_optab_40->code, D.18122
	movq	-96(%rbp), %rcx	# xop0, tmp187
	movq	-104(%rbp), %rsi	# temp, tmp188
	movq	-64(%rbp), %rax	# pat, tmp189
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp189,
	call	add_equal_note	#
	testl	%eax, %eax	# D.18114
	jne	.L515	#,
	.loc 1 2519 0
	movq	-80(%rbp), %rax	# last, tmp190
	movq	%rax, %rdi	# tmp190,
	call	delete_insns_since	#
	.loc 1 2520 0
	movl	-136(%rbp), %ecx	# unsignedp, tmp191
	movq	-144(%rbp), %rdx	# op0, tmp192
	movq	-72(%rbp), %rsi	# this_abs_optab, tmp193
	movl	-132(%rbp), %eax	# mode, tmp194
	movl	%ecx, %r8d	# tmp191,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp194,
	call	expand_unop	#
	jmp	.L516	#
.L515:
	.loc 1 2524 0
	movq	-64(%rbp), %rax	# pat, tmp195
	movq	%rax, %rdi	# tmp195,
	call	emit_insn	#
	.loc 1 2526 0
	movq	-104(%rbp), %rax	# temp, D.18112
	jmp	.L516	#
.L514:
	.loc 1 2529 0
	movq	-80(%rbp), %rax	# last, tmp196
	movq	%rax, %rdi	# tmp196,
	call	delete_insns_since	#
.L508:
.LBE35:
	.loc 1 2534 0
	movl	-132(%rbp), %eax	# mode, mode.253
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18113
	movzbl	%al, %eax	# D.18113, tmp198
	movl	%eax, -124(%rbp)	# tmp198, wider_mode
	jmp	.L517	#
.L522:
	.loc 1 2537 0
	movl	-124(%rbp), %edx	# wider_mode, wider_mode.254
	movq	-72(%rbp), %rax	# this_abs_optab, tmp199
	movslq	%edx, %rdx	# wider_mode.254, tmp200
	salq	$4, %rdx	#, tmp201
	addq	%rdx, %rax	# tmp201, tmp202
	movl	8(%rax), %eax	# this_abs_optab_40->handlers[wider_mode.254_76].insn_code, D.18117
	cmpl	$1317, %eax	#, D.18117
	je	.L518	#,
.LBB36:
	.loc 1 2540 0
	movq	-144(%rbp), %rax	# op0, tmp203
	movq	%rax, -56(%rbp)	# tmp203, xop0
	.loc 1 2542 0
	movl	-136(%rbp), %ecx	# unsignedp, tmp204
	movq	-56(%rbp), %rdx	# xop0, tmp205
	movl	-132(%rbp), %esi	# mode, tmp206
	movl	-124(%rbp), %eax	# wider_mode, tmp207
	movl	%eax, %edi	# tmp207,
	call	convert_modes	#
	movq	%rax, -56(%rbp)	# tmp208, xop0
	.loc 1 2543 0
	movl	-136(%rbp), %edx	# unsignedp, tmp209
	movq	-56(%rbp), %rsi	# xop0, tmp210
	movl	-124(%rbp), %eax	# wider_mode, tmp211
	movl	%edx, %ecx	# tmp209,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp211,
	call	expand_complex_abs	#
	movq	%rax, -104(%rbp)	# tmp212, temp
	.loc 1 2545 0
	cmpq	$0, -104(%rbp)	#, temp
	je	.L519	#,
	.loc 1 2547 0
	cmpl	$5, -120(%rbp)	#, class
	je	.L520	#,
	.loc 1 2549 0
	cmpq	$0, -152(%rbp)	#, target
	jne	.L521	#,
	.loc 1 2550 0
	movl	-116(%rbp), %eax	# submode, tmp213
	movl	%eax, %edi	# tmp213,
	call	gen_reg_rtx	#
	movq	%rax, -152(%rbp)	# tmp214, target
.L521:
	.loc 1 2551 0
	movq	-104(%rbp), %rcx	# temp, tmp215
	movq	-152(%rbp), %rax	# target, tmp216
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	convert_move	#
	.loc 1 2552 0
	movq	-152(%rbp), %rax	# target, D.18112
	jmp	.L516	#
.L520:
	.loc 1 2555 0
	movq	-104(%rbp), %rdx	# temp, tmp217
	movl	-116(%rbp), %eax	# submode, tmp218
	movq	%rdx, %rsi	# tmp217,
	movl	%eax, %edi	# tmp218,
	call	gen_lowpart	#
	jmp	.L516	#
.L519:
	.loc 1 2558 0
	movq	-80(%rbp), %rax	# last, tmp219
	movq	%rax, %rdi	# tmp219,
	call	delete_insns_since	#
.L518:
.LBE36:
	.loc 1 2535 0
	movl	-124(%rbp), %eax	# wider_mode, wider_mode.255
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18113
	movzbl	%al, %eax	# D.18113, tmp221
	movl	%eax, -124(%rbp)	# tmp221, wider_mode
.L517:
	.loc 1 2534 0 discriminator 1
	cmpl	$0, -124(%rbp)	#, wider_mode
	jne	.L522	#,
	.loc 1 2564 0
	movq	optab_table+304(%rip), %rax	# optab_table, D.18123
	movl	-116(%rbp), %edx	# submode, submode.256
	movslq	%edx, %rdx	# submode.256, tmp222
	salq	$4, %rdx	#, tmp223
	addq	%rdx, %rax	# tmp223, tmp224
	movl	8(%rax), %eax	# _87->handlers[submode.256_88].insn_code, D.18117
	cmpl	$1317, %eax	#, D.18117
	je	.L523	#,
	.loc 1 2565 0
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.257
	testl	%eax, %eax	# flag_trapv.257
	jne	.L523	#,
.LBB37:
	.loc 1 2569 0
	movq	-144(%rbp), %rdx	# op0, tmp225
	movl	-116(%rbp), %eax	# submode, tmp226
	movq	%rdx, %rsi	# tmp225,
	movl	%eax, %edi	# tmp226,
	call	gen_realpart	#
	movq	%rax, -48(%rbp)	# tmp227, real
	.loc 1 2570 0
	movq	-144(%rbp), %rdx	# op0, tmp228
	movl	-116(%rbp), %eax	# submode, tmp229
	movq	%rdx, %rsi	# tmp228,
	movl	%eax, %edi	# tmp229,
	call	gen_imagpart	#
	movq	%rax, -40(%rbp)	# tmp230, imag
	.loc 1 2573 0
	movq	-48(%rbp), %rdx	# real, tmp231
	movq	-48(%rbp), %rsi	# real, tmp232
	movl	-116(%rbp), %eax	# submode, tmp233
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp233,
	call	expand_mult	#
	movq	%rax, -48(%rbp)	# tmp234, real
	.loc 1 2574 0
	movq	-40(%rbp), %rdx	# imag, tmp235
	movq	-40(%rbp), %rsi	# imag, tmp236
	movl	-116(%rbp), %eax	# submode, tmp237
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp237,
	call	expand_mult	#
	movq	%rax, -40(%rbp)	# tmp238, imag
	.loc 1 2577 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18123
	movq	-40(%rbp), %rcx	# imag, tmp239
	movq	-48(%rbp), %rdx	# real, tmp240
	movl	-116(%rbp), %eax	# submode, tmp241
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp241,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp242, total
	.loc 1 2581 0
	movq	optab_table+304(%rip), %rsi	# optab_table, D.18123
	movq	-152(%rbp), %rcx	# target, tmp243
	movq	-32(%rbp), %rdx	# total, tmp244
	movl	-116(%rbp), %eax	# submode, tmp245
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp245,
	call	expand_unop	#
	movq	%rax, -152(%rbp)	# tmp246, target
	.loc 1 2582 0
	cmpq	$0, -152(%rbp)	#, target
	jne	.L524	#,
	.loc 1 2583 0
	movq	-80(%rbp), %rax	# last, tmp247
	movq	%rax, %rdi	# tmp247,
	call	delete_insns_since	#
	jmp	.L523	#
.L524:
	.loc 1 2585 0
	movq	-152(%rbp), %rax	# target, D.18112
	jmp	.L516	#
.L523:
.LBE37:
	.loc 1 2589 0
	movl	-132(%rbp), %edx	# mode, mode.258
	movq	-72(%rbp), %rax	# this_abs_optab, tmp248
	movslq	%edx, %rdx	# mode.258, tmp249
	salq	$4, %rdx	#, tmp250
	addq	%rdx, %rax	# tmp250, tmp251
	addq	$16, %rax	#, tmp252
	movq	(%rax), %rax	# this_abs_optab_40->handlers[mode.258_100].libfunc, D.18124
	testq	%rax, %rax	# D.18124
	je	.L525	#,
.LBB38:
	.loc 1 2594 0
	call	start_sequence	#
	.loc 1 2598 0
	movq	optab_table+272(%rip), %rax	# optab_table, D.18123
	movl	-132(%rbp), %edx	# mode, mode.259
	movslq	%edx, %rdx	# mode.259, tmp253
	salq	$4, %rdx	#, tmp254
	addq	%rdx, %rax	# tmp254, tmp255
	addq	$16, %rax	#, tmp256
	movq	(%rax), %rax	# _102->handlers[mode.259_103].libfunc, D.18124
	movq	-144(%rbp), %rsi	# op0, tmp257
	movl	-116(%rbp), %edx	# submode, tmp258
	movl	-132(%rbp), %ecx	# mode, tmp259
	movl	%ecx, (%rsp)	# tmp259,
	movq	%rsi, %r9	# tmp257,
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# tmp258,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18124,
	movl	$0, %eax	#,
	call	emit_library_call_value	#
	movq	%rax, -24(%rbp)	# tmp260, value
	.loc 1 2600 0
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp261, insns
	.loc 1 2601 0
	call	end_sequence	#
	.loc 1 2603 0
	movl	-116(%rbp), %eax	# submode, tmp262
	movl	%eax, %edi	# tmp262,
	call	gen_reg_rtx	#
	movq	%rax, -152(%rbp)	# tmp263, target
	.loc 1 2604 0
	movq	-72(%rbp), %rax	# this_abs_optab, tmp264
	movl	(%rax), %eax	# this_abs_optab_40->code, D.18122
	movq	-144(%rbp), %rdx	# op0, tmp265
	movl	-132(%rbp), %ecx	# mode, tmp266
	movl	%ecx, %esi	# tmp266,
	movl	%eax, %edi	# D.18122,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18124
	movq	-24(%rbp), %rdx	# value, tmp267
	movq	-152(%rbp), %rsi	# target, tmp268
	movq	-16(%rbp), %rax	# insns, tmp269
	movq	%rax, %rdi	# tmp269,
	call	emit_libcall_block	#
	.loc 1 2607 0
	movq	-152(%rbp), %rax	# target, D.18112
	jmp	.L516	#
.L525:
.LBE38:
	.loc 1 2612 0
	movl	-132(%rbp), %eax	# mode, mode.260
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18113
	movzbl	%al, %eax	# D.18113, tmp271
	movl	%eax, -124(%rbp)	# tmp271, wider_mode
	jmp	.L526	#
.L532:
	.loc 1 2615 0
	movl	-124(%rbp), %edx	# wider_mode, wider_mode.261
	movq	-72(%rbp), %rax	# this_abs_optab, tmp272
	movslq	%edx, %rdx	# wider_mode.261, tmp273
	salq	$4, %rdx	#, tmp274
	addq	%rdx, %rax	# tmp274, tmp275
	movl	8(%rax), %eax	# this_abs_optab_40->handlers[wider_mode.261_114].insn_code, D.18117
	cmpl	$1317, %eax	#, D.18117
	jne	.L527	#,
	.loc 1 2617 0
	movl	-124(%rbp), %edx	# wider_mode, wider_mode.262
	movq	-72(%rbp), %rax	# this_abs_optab, tmp276
	movslq	%edx, %rdx	# wider_mode.262, tmp277
	salq	$4, %rdx	#, tmp278
	addq	%rdx, %rax	# tmp278, tmp279
	addq	$16, %rax	#, tmp280
	movq	(%rax), %rax	# this_abs_optab_40->handlers[wider_mode.262_116].libfunc, D.18124
	testq	%rax, %rax	# D.18124
	je	.L528	#,
.L527:
.LBB39:
	.loc 1 2619 0
	movq	-144(%rbp), %rax	# op0, tmp281
	movq	%rax, -8(%rbp)	# tmp281, xop0
	.loc 1 2621 0
	movl	-136(%rbp), %ecx	# unsignedp, tmp282
	movq	-8(%rbp), %rdx	# xop0, tmp283
	movl	-132(%rbp), %esi	# mode, tmp284
	movl	-124(%rbp), %eax	# wider_mode, tmp285
	movl	%eax, %edi	# tmp285,
	call	convert_modes	#
	movq	%rax, -8(%rbp)	# tmp286, xop0
	.loc 1 2623 0
	movl	-136(%rbp), %edx	# unsignedp, tmp287
	movq	-8(%rbp), %rsi	# xop0, tmp288
	movl	-124(%rbp), %eax	# wider_mode, tmp289
	movl	%edx, %ecx	# tmp287,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp289,
	call	expand_complex_abs	#
	movq	%rax, -104(%rbp)	# tmp290, temp
	.loc 1 2625 0
	cmpq	$0, -104(%rbp)	#, temp
	je	.L529	#,
	.loc 1 2627 0
	cmpl	$5, -120(%rbp)	#, class
	je	.L530	#,
	.loc 1 2629 0
	cmpq	$0, -152(%rbp)	#, target
	jne	.L531	#,
	.loc 1 2630 0
	movl	-116(%rbp), %eax	# submode, tmp291
	movl	%eax, %edi	# tmp291,
	call	gen_reg_rtx	#
	movq	%rax, -152(%rbp)	# tmp292, target
.L531:
	.loc 1 2631 0
	movq	-104(%rbp), %rcx	# temp, tmp293
	movq	-152(%rbp), %rax	# target, tmp294
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp293,
	movq	%rax, %rdi	# tmp294,
	call	convert_move	#
	.loc 1 2632 0
	movq	-152(%rbp), %rax	# target, D.18112
	jmp	.L516	#
.L530:
	.loc 1 2635 0
	movq	-104(%rbp), %rdx	# temp, tmp295
	movl	-116(%rbp), %eax	# submode, tmp296
	movq	%rdx, %rsi	# tmp295,
	movl	%eax, %edi	# tmp296,
	call	gen_lowpart	#
	jmp	.L516	#
.L529:
	.loc 1 2638 0
	movq	-80(%rbp), %rax	# last, tmp297
	movq	%rax, %rdi	# tmp297,
	call	delete_insns_since	#
.L528:
.LBE39:
	.loc 1 2613 0
	movl	-124(%rbp), %eax	# wider_mode, wider_mode.263
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18113
	movzbl	%al, %eax	# D.18113, tmp299
	movl	%eax, -124(%rbp)	# tmp299, wider_mode
.L526:
	.loc 1 2612 0 discriminator 1
	cmpl	$0, -124(%rbp)	#, wider_mode
	jne	.L532	#,
	.loc 1 2642 0
	movq	-88(%rbp), %rax	# entry_last, tmp300
	movq	%rax, %rdi	# tmp300,
	call	delete_insns_since	#
	.loc 1 2643 0
	movl	$0, %eax	#, D.18112
.L516:
	.loc 1 2644 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	expand_complex_abs, .-expand_complex_abs
	.globl	emit_unop_insn
	.type	emit_unop_insn, @function
emit_unop_insn:
.LFB14:
	.loc 1 2658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# icode, icode
	movq	%rsi, -48(%rbp)	# target, target
	movq	%rdx, -56(%rbp)	# op0, op0
	movl	%ecx, -40(%rbp)	# code, code
	.loc 1 2660 0
	movl	-36(%rbp), %eax	# icode, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	salq	$2, %rax	#, tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp81
	addq	$insn_data+24, %rax	#, tmp82
	movq	(%rax), %rax	# insn_data[icode_4(D)].operand, D.18125
	addq	$24, %rax	#, D.18125
	movzwl	16(%rax), %eax	# _6->mode, D.18126
	movzwl	%ax, %eax	# D.18126, tmp83
	movl	%eax, -20(%rbp)	# tmp83, mode0
	.loc 1 2663 0
	movq	-48(%rbp), %rax	# target, tmp84
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	protect_from_queue	#
	movq	%rax, -48(%rbp)	# tmp85, target
	movq	-48(%rbp), %rax	# target, tmp86
	movq	%rax, -16(%rbp)	# tmp86, temp
	.loc 1 2665 0
	movq	-56(%rbp), %rax	# op0, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	protect_from_queue	#
	movq	%rax, -56(%rbp)	# tmp88, op0
	.loc 1 2670 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.264
	testl	%eax, %eax	# flag_force_mem.264
	je	.L534	#,
	.loc 1 2670 0 is_stmt 0 discriminator 1
	cmpl	$120, -40(%rbp)	#, code
	je	.L534	#,
	cmpl	$121, -40(%rbp)	#, code
	je	.L534	#,
	.loc 1 2671 0 is_stmt 1
	movq	-56(%rbp), %rax	# op0, tmp89
	movq	%rax, %rdi	# tmp89,
	call	force_not_mem	#
	movq	%rax, -56(%rbp)	# tmp90, op0
.L534:
	.loc 1 2675 0
	movl	-36(%rbp), %eax	# icode, tmp92
	movslq	%eax, %rdx	# tmp92, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	salq	$2, %rax	#, tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$3, %rax	#, tmp94
	addq	$insn_data+24, %rax	#, tmp95
	movq	(%rax), %rax	# insn_data[icode_4(D)].operand, D.18125
	addq	$24, %rax	#, D.18125
	movq	(%rax), %rax	# _18->predicate, D.18127
	movl	-20(%rbp), %ecx	# mode0, tmp96
	movq	-56(%rbp), %rdx	# op0, tmp97
	movl	%ecx, %esi	# tmp96,
	movq	%rdx, %rdi	# tmp97,
	call	*%rax	# D.18127
	testl	%eax, %eax	# D.18128
	jne	.L535	#,
	.loc 1 2676 0
	movq	-56(%rbp), %rdx	# op0, tmp98
	movl	-20(%rbp), %eax	# mode0, tmp99
	movq	%rdx, %rsi	# tmp98,
	movl	%eax, %edi	# tmp99,
	call	copy_to_mode_reg	#
	movq	%rax, -56(%rbp)	# tmp100, op0
.L535:
	.loc 1 2678 0
	movl	-36(%rbp), %eax	# icode, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$3, %rax	#, tmp104
	addq	$insn_data+24, %rax	#, tmp105
	movq	(%rax), %rax	# insn_data[icode_4(D)].operand, D.18125
	movq	(%rax), %rax	# _22->predicate, D.18127
	movq	-16(%rbp), %rdx	# temp, tmp106
	movzbl	2(%rdx), %edx	# temp_11->mode, D.18129
	movzbl	%dl, %ecx	# D.18129, D.18130
	movq	-16(%rbp), %rdx	# temp, tmp107
	movl	%ecx, %esi	# D.18130,
	movq	%rdx, %rdi	# tmp107,
	call	*%rax	# D.18127
	testl	%eax, %eax	# D.18128
	je	.L536	#,
	.loc 1 2679 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.265
	testl	%eax, %eax	# flag_force_mem.265
	je	.L537	#,
	.loc 1 2679 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# temp, tmp108
	movzwl	(%rax), %eax	# temp_11->code, D.18126
	cmpw	$66, %ax	#, D.18126
	jne	.L537	#,
.L536:
	.loc 1 2680 0 is_stmt 1
	movq	-16(%rbp), %rax	# temp, tmp109
	movzbl	2(%rax), %eax	# temp_11->mode, D.18129
	movzbl	%al, %eax	# D.18129, D.18130
	movl	%eax, %edi	# D.18130,
	call	gen_reg_rtx	#
	movq	%rax, -16(%rbp)	# tmp110, temp
.L537:
	.loc 1 2682 0
	movl	-36(%rbp), %eax	# icode, tmp112
	movslq	%eax, %rdx	# tmp112, tmp111
	movq	%rdx, %rax	# tmp111, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# tmp111, tmp113
	salq	$3, %rax	#, tmp114
	addq	$insn_data+16, %rax	#, tmp115
	movq	(%rax), %rdx	# insn_data[icode_4(D)].genfun, D.18131
	movq	-56(%rbp), %rcx	# op0, tmp116
	movq	-16(%rbp), %rax	# temp, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	*%rdx	# D.18131
	movq	%rax, -8(%rbp)	# tmp118, pat
	.loc 1 2684 0
	movq	-8(%rbp), %rax	# pat, tmp119
	movzwl	(%rax), %eax	# pat_33->code, D.18126
	cmpw	$24, %ax	#, D.18126
	jne	.L538	#,
	.loc 1 2684 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, code
	je	.L538	#,
	.loc 1 2685 0 is_stmt 1
	movq	-56(%rbp), %rcx	# op0, tmp120
	movl	-40(%rbp), %edx	# code, tmp121
	movq	-16(%rbp), %rsi	# temp, tmp122
	movq	-8(%rbp), %rax	# pat, tmp123
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp123,
	call	add_equal_note	#
.L538:
	.loc 1 2687 0
	movq	-8(%rbp), %rax	# pat, tmp124
	movq	%rax, %rdi	# tmp124,
	call	emit_insn	#
	.loc 1 2689 0
	movq	-16(%rbp), %rax	# temp, tmp125
	cmpq	-48(%rbp), %rax	# target, tmp125
	je	.L533	#,
	.loc 1 2690 0
	movq	-16(%rbp), %rdx	# temp, tmp126
	movq	-48(%rbp), %rax	# target, tmp127
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	emit_move_insn	#
.L533:
	.loc 1 2691 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	emit_unop_insn, .-emit_unop_insn
	.globl	emit_no_conflict_block
	.type	emit_no_conflict_block, @function
emit_no_conflict_block:
.LFB15:
	.loc 1 2727 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# insns, insns
	movq	%rsi, -80(%rbp)	# target, target
	movq	%rdx, -88(%rbp)	# op0, op0
	movq	%rcx, -96(%rbp)	# op1, op1
	movq	%r8, -104(%rbp)	# equiv, equiv
	.loc 1 2730 0
	movq	-80(%rbp), %rax	# target, tmp103
	movzwl	(%rax), %eax	# target_12(D)->code, D.18133
	cmpw	$61, %ax	#, D.18133
	jne	.L541	#,
	.loc 1 2730 0 is_stmt 0 discriminator 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.266
	testl	%eax, %eax	# reload_in_progress.266
	je	.L542	#,
.L541:
	.loc 1 2731 0 is_stmt 1
	movq	-72(%rbp), %rax	# insns, tmp104
	movq	%rax, %rdi	# tmp104,
	call	emit_insns	#
	jmp	.L543	#
.L542:
	.loc 1 2733 0
	movq	-72(%rbp), %rax	# insns, tmp105
	movq	%rax, -40(%rbp)	# tmp105, insn
	jmp	.L544	#
.L547:
	.loc 1 2734 0
	movq	-40(%rbp), %rax	# insn, tmp106
	movzwl	(%rax), %eax	# insn_6->code, D.18133
	cmpw	$32, %ax	#, D.18133
	jne	.L545	#,
	.loc 1 2735 0
	movq	-40(%rbp), %rax	# insn, tmp107
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	find_reg_note	#
	testq	%rax, %rax	# D.18134
	je	.L546	#,
.L545:
	.loc 1 2736 0
	movq	-72(%rbp), %rax	# insns, tmp108
	movq	%rax, %rdi	# tmp108,
	call	emit_insns	#
	jmp	.L543	#
.L546:
	.loc 1 2733 0
	movq	-40(%rbp), %rax	# insn, tmp109
	movq	24(%rax), %rax	# insn_6->fld[2].rtx, tmp110
	movq	%rax, -40(%rbp)	# tmp110, insn
.L544:
	.loc 1 2733 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L547	#,
	.loc 1 2740 0 is_stmt 1
	movq	-72(%rbp), %rax	# insns, tmp111
	movq	%rax, -40(%rbp)	# tmp111, insn
	jmp	.L548	#
.L562:
.LBB40:
	.loc 1 2742 0
	movq	$0, -32(%rbp)	#, set
	.loc 1 2745 0
	movq	-40(%rbp), %rax	# insn, tmp112
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp113
	movq	%rax, -24(%rbp)	# tmp113, next
	.loc 1 2749 0
	movq	-40(%rbp), %rax	# insn, tmp114
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp115, note
	cmpq	$0, -16(%rbp)	#, note
	je	.L549	#,
	.loc 1 2750 0
	movq	-16(%rbp), %rdx	# note, tmp116
	movq	-40(%rbp), %rax	# insn, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	remove_note	#
.L549:
	.loc 1 2751 0
	movq	-40(%rbp), %rax	# insn, tmp118
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp119, note
	cmpq	$0, -16(%rbp)	#, note
	je	.L550	#,
	.loc 1 2752 0
	movq	-16(%rbp), %rdx	# note, tmp120
	movq	-40(%rbp), %rax	# insn, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	remove_note	#
.L550:
	.loc 1 2754 0
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movzwl	(%rax), %eax	# _26->code, D.18133
	cmpw	$47, %ax	#, D.18133
	je	.L551	#,
	.loc 1 2754 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp123
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movzwl	(%rax), %eax	# _28->code, D.18133
	cmpw	$48, %ax	#, D.18133
	je	.L551	#,
	.loc 1 2755 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp124
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movzwl	(%rax), %eax	# _30->code, D.18133
	cmpw	$49, %ax	#, D.18133
	jne	.L552	#,
.L551:
	.loc 1 2756 0
	movq	-40(%rbp), %rax	# insn, tmp125
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, tmp126
	movq	%rax, -32(%rbp)	# tmp126, set
	jmp	.L553	#
.L552:
	.loc 1 2757 0
	movq	-40(%rbp), %rax	# insn, tmp127
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movzwl	(%rax), %eax	# _32->code, D.18133
	cmpw	$39, %ax	#, D.18133
	jne	.L553	#,
	.loc 1 2759 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L554	#
.L556:
	.loc 1 2760 0
	movq	-40(%rbp), %rax	# insn, tmp128
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movq	8(%rax), %rax	# _38->fld[0].rtvec, D.18135
	movl	-60(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	movq	8(%rax,%rdx,8), %rax	# _39->elem, D.18134
	movzwl	(%rax), %eax	# _40->code, D.18133
	cmpw	$47, %ax	#, D.18133
	jne	.L555	#,
	.loc 1 2762 0
	movq	-40(%rbp), %rax	# insn, tmp131
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movq	8(%rax), %rax	# _42->fld[0].rtvec, D.18135
	movl	-60(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	movq	8(%rax,%rdx,8), %rax	# _43->elem, tmp134
	movq	%rax, -32(%rbp)	# tmp134, set
	.loc 1 2763 0
	jmp	.L553	#
.L555:
	.loc 1 2759 0
	addl	$1, -60(%rbp)	#, i
.L554:
	.loc 1 2759 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp135
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.18134
	movq	8(%rax), %rax	# _35->fld[0].rtvec, D.18135
	movl	(%rax), %eax	# _36->num_elem, D.18136
	cmpl	-60(%rbp), %eax	# i, D.18136
	jg	.L556	#,
.L553:
	.loc 1 2767 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, set
	jne	.L557	#,
	.loc 1 2768 0
	movl	$__FUNCTION__.13859, %edx	#,
	movl	$2768, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L557:
	.loc 1 2770 0
	movq	-32(%rbp), %rax	# set, tmp136
	movq	8(%rax), %rdx	# set_9->fld[0].rtx, D.18134
	movq	-80(%rbp), %rax	# target, tmp137
	movq	%rdx, %rsi	# D.18134,
	movq	%rax, %rdi	# tmp137,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.18136
	jne	.L558	#,
	.loc 1 2772 0
	movq	-40(%rbp), %rax	# insn, tmp138
	movq	16(%rax), %rax	# insn_7->fld[1].rtx, D.18134
	testq	%rax, %rax	# D.18134
	je	.L559	#,
	.loc 1 2773 0
	movq	-40(%rbp), %rax	# insn, tmp139
	movq	16(%rax), %rax	# insn_7->fld[1].rtx, D.18134
	movq	-24(%rbp), %rdx	# next, tmp140
	movq	%rdx, 24(%rax)	# tmp140, _50->fld[2].rtx
	jmp	.L560	#
.L559:
	.loc 1 2775 0
	movq	-24(%rbp), %rax	# next, tmp141
	movq	%rax, -72(%rbp)	# tmp141, insns
.L560:
	.loc 1 2777 0
	cmpq	$0, -24(%rbp)	#, next
	je	.L561	#,
	.loc 1 2778 0
	movq	-40(%rbp), %rax	# insn, tmp142
	movq	16(%rax), %rdx	# insn_7->fld[1].rtx, D.18134
	movq	-24(%rbp), %rax	# next, tmp143
	movq	%rdx, 16(%rax)	# D.18134, next_23->fld[1].rtx
.L561:
	.loc 1 2780 0
	movq	-40(%rbp), %rax	# insn, tmp144
	movq	%rax, %rdi	# tmp144,
	call	add_insn	#
.L558:
.LBE40:
	.loc 1 2740 0
	movq	-24(%rbp), %rax	# next, tmp145
	movq	%rax, -40(%rbp)	# tmp145, insn
.L548:
	.loc 1 2740 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L562	#,
	.loc 1 2784 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp146, prev
	.loc 1 2788 0
	movq	-80(%rbp), %rax	# target, tmp147
	cmpq	-88(%rbp), %rax	# op0, tmp147
	je	.L563	#,
	.loc 1 2788 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# target, tmp148
	cmpq	-96(%rbp), %rax	# op1, tmp148
	je	.L563	#,
	.loc 1 2789 0 is_stmt 1
	movq	-80(%rbp), %rax	# target, tmp149
	movq	%rax, %rdx	# tmp149,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.18134,
	call	emit_insn	#
.L563:
	.loc 1 2791 0
	movq	-72(%rbp), %rax	# insns, tmp150
	movq	%rax, -40(%rbp)	# tmp150, insn
	jmp	.L564	#
.L567:
	.loc 1 2793 0
	movq	-40(%rbp), %rax	# insn, tmp151
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, tmp152
	movq	%rax, -24(%rbp)	# tmp152, next
	.loc 1 2794 0
	movq	-40(%rbp), %rax	# insn, tmp153
	movq	%rax, %rdi	# tmp153,
	call	add_insn	#
	.loc 1 2796 0
	cmpq	$0, -96(%rbp)	#, op1
	je	.L565	#,
	.loc 1 2796 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# op1, tmp154
	movzwl	(%rax), %eax	# op1_56(D)->code, D.18133
	cmpw	$61, %ax	#, D.18133
	jne	.L565	#,
	.loc 1 2797 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp155
	movq	56(%rax), %rdx	# insn_8->fld[6].rtx, D.18134
	movq	-96(%rbp), %rax	# op1, tmp156
	movq	%rdx, %rcx	# D.18134,
	movq	%rax, %rdx	# tmp156,
	movl	$9, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-40(%rbp), %rdx	# insn, tmp157
	movq	%rax, 56(%rdx)	# D.18134, insn_8->fld[6].rtx
.L565:
	.loc 1 2800 0
	cmpq	$0, -88(%rbp)	#, op0
	je	.L566	#,
	.loc 1 2800 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp158
	movzwl	(%rax), %eax	# op0_55(D)->code, D.18133
	cmpw	$61, %ax	#, D.18133
	jne	.L566	#,
	.loc 1 2801 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp159
	movq	56(%rax), %rdx	# insn_8->fld[6].rtx, D.18134
	movq	-88(%rbp), %rax	# op0, tmp160
	movq	%rdx, %rcx	# D.18134,
	movq	%rax, %rdx	# tmp160,
	movl	$9, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-40(%rbp), %rdx	# insn, tmp161
	movq	%rax, 56(%rdx)	# D.18134, insn_8->fld[6].rtx
.L566:
	.loc 1 2791 0
	movq	-24(%rbp), %rax	# next, tmp162
	movq	%rax, -40(%rbp)	# tmp162, insn
.L564:
	.loc 1 2791 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L567	#,
	.loc 1 2805 0 is_stmt 1
	movq	optab_table+240(%rip), %rdx	# optab_table, D.18137
	movq	-80(%rbp), %rax	# target, tmp163
	movzbl	2(%rax), %eax	# target_12(D)->mode, D.18138
	movzbl	%al, %eax	# D.18138, D.18136
	cltq
	salq	$4, %rax	#, tmp165
	addq	%rdx, %rax	# D.18137, tmp166
	movl	8(%rax), %eax	# _67->handlers[_69].insn_code, D.18139
	cmpl	$1317, %eax	#, D.18139
	je	.L568	#,
	.loc 1 2808 0
	movq	-80(%rbp), %rdx	# target, tmp167
	movq	-80(%rbp), %rax	# target, tmp168
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	emit_move_insn	#
	movq	%rax, -48(%rbp)	# tmp169, last
	.loc 1 2809 0
	cmpq	$0, -104(%rbp)	#, equiv
	je	.L570	#,
	.loc 1 2810 0
	movq	-104(%rbp), %rdx	# equiv, tmp170
	movq	-48(%rbp), %rax	# last, tmp171
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp171,
	call	set_unique_reg_note	#
	jmp	.L570	#
.L568:
	.loc 1 2814 0
	call	get_last_insn	#
	movq	%rax, -48(%rbp)	# tmp172, last
	.loc 1 2821 0
	movq	-48(%rbp), %rax	# last, tmp173
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.18134
	movq	-48(%rbp), %rax	# last, tmp174
	movq	%rdx, %rsi	# D.18134,
	movq	%rax, %rdi	# tmp174,
	call	remove_note	#
.L570:
	.loc 1 2824 0
	cmpq	$0, -8(%rbp)	#, prev
	jne	.L571	#,
	.loc 1 2825 0
	call	get_insns	#
	movq	%rax, -56(%rbp)	# tmp175, first
	jmp	.L572	#
.L571:
	.loc 1 2827 0
	movq	-8(%rbp), %rax	# prev, tmp176
	movq	24(%rax), %rax	# prev_54->fld[2].rtx, tmp177
	movq	%rax, -56(%rbp)	# tmp177, first
.L572:
	.loc 1 2830 0
	movq	-56(%rbp), %rax	# first, tmp178
	movq	56(%rax), %rdx	# first_4->fld[6].rtx, D.18134
	movq	-48(%rbp), %rax	# last, tmp179
	movq	%rdx, %rcx	# D.18134,
	movq	%rax, %rdx	# tmp179,
	movl	$7, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-56(%rbp), %rdx	# first, tmp180
	movq	%rax, 56(%rdx)	# D.18134, first_4->fld[6].rtx
	.loc 1 2832 0
	movq	-48(%rbp), %rax	# last, tmp181
	movq	56(%rax), %rdx	# last_5->fld[6].rtx, D.18134
	movq	-56(%rbp), %rax	# first, tmp182
	movq	%rdx, %rcx	# D.18134,
	movq	%rax, %rdx	# tmp182,
	movl	$6, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-48(%rbp), %rdx	# last, tmp183
	movq	%rax, 56(%rdx)	# D.18134, last_5->fld[6].rtx
	.loc 1 2834 0
	movq	-48(%rbp), %rax	# last, D.18132
.L543:
	.loc 1 2835 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	emit_no_conflict_block, .-emit_no_conflict_block
	.globl	emit_libcall_block
	.type	emit_libcall_block, @function
emit_libcall_block:
.LFB16:
	.loc 1 2868 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# insns, insns
	movq	%rsi, -112(%rbp)	# target, target
	movq	%rdx, -120(%rbp)	# result, result
	movq	%rcx, -128(%rbp)	# equiv, equiv
	.loc 1 2869 0
	movq	-112(%rbp), %rax	# target, tmp113
	movq	%rax, -80(%rbp)	# tmp113, final_dest
	.loc 1 2874 0
	movq	-112(%rbp), %rax	# target, tmp114
	movzwl	(%rax), %eax	# target_12(D)->code, D.18140
	cmpw	$61, %ax	#, D.18140
	jne	.L574	#,
	.loc 1 2874 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# target, tmp115
	movzbl	3(%rax), %eax	# *target_12(D), D.18141
	andl	$8, %eax	#, D.18141
	testb	%al, %al	# D.18141
	je	.L575	#,
.L574:
	.loc 1 2875 0 is_stmt 1
	movq	-112(%rbp), %rax	# target, tmp116
	movzbl	2(%rax), %eax	# target_12(D)->mode, D.18141
	movzbl	%al, %eax	# D.18141, D.18142
	movl	%eax, %edi	# D.18142,
	call	gen_reg_rtx	#
	movq	%rax, -112(%rbp)	# tmp117, target
.L575:
	.loc 1 2879 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.267
	testl	%eax, %eax	# flag_non_call_exceptions.267
	je	.L576	#,
	.loc 1 2879 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# equiv, tmp118
	movq	%rax, %rdi	# tmp118,
	call	may_trap_p	#
	testl	%eax, %eax	# D.18143
	je	.L576	#,
	.loc 1 2881 0 is_stmt 1
	movq	-104(%rbp), %rax	# insns, tmp119
	movq	%rax, -88(%rbp)	# tmp119, insn
	jmp	.L577	#
.L579:
	.loc 1 2882 0
	movq	-88(%rbp), %rax	# insn, tmp120
	movzwl	(%rax), %eax	# insn_6->code, D.18140
	cmpw	$34, %ax	#, D.18140
	jne	.L578	#,
.LBB41:
	.loc 1 2884 0
	movq	-88(%rbp), %rax	# insn, tmp121
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	find_reg_note	#
	movq	%rax, -72(%rbp)	# tmp122, note
	.loc 1 2886 0
	cmpq	$0, -72(%rbp)	#, note
	je	.L578	#,
	.loc 1 2886 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# note, tmp123
	movq	8(%rax), %rax	# note_26->fld[0].rtx, D.18144
	movq	8(%rax), %rax	# _27->fld[0].rtwint, D.18145
	testq	%rax, %rax	# D.18145
	jg	.L578	#,
	.loc 1 2887 0 is_stmt 1
	movq	-72(%rbp), %rdx	# note, tmp124
	movq	-88(%rbp), %rax	# insn, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	remove_note	#
.L578:
.LBE41:
	.loc 1 2881 0
	movq	-88(%rbp), %rax	# insn, tmp126
	movq	24(%rax), %rax	# insn_6->fld[2].rtx, tmp127
	movq	%rax, -88(%rbp)	# tmp127, insn
.L577:
	.loc 1 2881 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	jne	.L579	#,
	.loc 1 2879 0 is_stmt 1
	jmp	.L580	#
.L576:
	.loc 1 2895 0
	movq	-104(%rbp), %rax	# insns, tmp128
	movq	%rax, -88(%rbp)	# tmp128, insn
	jmp	.L581	#
.L584:
	.loc 1 2896 0
	movq	-88(%rbp), %rax	# insn, tmp129
	movzwl	(%rax), %eax	# insn_7->code, D.18140
	cmpw	$34, %ax	#, D.18140
	jne	.L582	#,
.LBB42:
	.loc 1 2898 0
	movq	-88(%rbp), %rax	# insn, tmp130
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	find_reg_note	#
	movq	%rax, -64(%rbp)	# tmp131, note
	.loc 1 2900 0
	cmpq	$0, -64(%rbp)	#, note
	je	.L583	#,
	.loc 1 2901 0
	movq	$-1, %rsi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-64(%rbp), %rdx	# note, tmp132
	movq	%rax, 8(%rdx)	# D.18144, note_32->fld[0].rtx
	jmp	.L582	#
.L583:
	.loc 1 2903 0
	movq	-88(%rbp), %rax	# insn, tmp133
	movq	56(%rax), %rbx	# insn_7->fld[6].rtx, D.18144
	movq	$-1, %rsi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rbx, %rcx	# D.18144,
	movq	%rax, %rdx	# D.18144,
	movl	$23, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-88(%rbp), %rdx	# insn, tmp134
	movq	%rax, 56(%rdx)	# D.18144, insn_7->fld[6].rtx
.L582:
.LBE42:
	.loc 1 2895 0
	movq	-88(%rbp), %rax	# insn, tmp135
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp136
	movq	%rax, -88(%rbp)	# tmp136, insn
.L581:
	.loc 1 2895 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	jne	.L584	#,
.L580:
	.loc 1 2913 0 is_stmt 1
	movq	-104(%rbp), %rax	# insns, tmp137
	movq	%rax, -88(%rbp)	# tmp137, insn
	jmp	.L585	#
.L598:
.LBB43:
	.loc 1 2915 0
	movq	-88(%rbp), %rax	# insn, tmp138
	movzwl	(%rax), %eax	# insn_8->code, D.18140
	movzwl	%ax, %eax	# D.18140, D.18143
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18146
	cmpb	$105, %al	#, D.18146
	jne	.L586	#,
	.loc 1 2915 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp140
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.18144
	movzwl	(%rax), %eax	# _42->code, D.18140
	cmpw	$47, %ax	#, D.18140
	jne	.L587	#,
	.loc 1 2915 0 discriminator 3
	movq	-88(%rbp), %rax	# insn, tmp141
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, iftmp.269
	jmp	.L589	#
.L587:
	.loc 1 2915 0 discriminator 4
	movq	-88(%rbp), %rax	# insn, tmp142
	movq	32(%rax), %rdx	# insn_8->fld[3].rtx, D.18144
	movq	-88(%rbp), %rax	# insn, tmp143
	movq	%rdx, %rsi	# D.18144,
	movq	%rax, %rdi	# tmp143,
	call	single_set_2	#
	jmp	.L589	#
.L586:
	.loc 1 2915 0 discriminator 2
	movl	$0, %eax	#, iftmp.268
.L589:
	.loc 1 2915 0 discriminator 5
	movq	%rax, -56(%rbp)	# iftmp.268, set
	.loc 1 2920 0 is_stmt 1 discriminator 5
	movq	-88(%rbp), %rax	# insn, tmp144
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	find_reg_note	#
	movq	%rax, -48(%rbp)	# tmp145, note
	cmpq	$0, -48(%rbp)	#, note
	je	.L590	#,
	.loc 1 2921 0
	movq	-48(%rbp), %rdx	# note, tmp146
	movq	-88(%rbp), %rax	# insn, tmp147
	movq	%rdx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	remove_note	#
.L590:
	.loc 1 2922 0
	movq	-88(%rbp), %rax	# insn, tmp148
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	find_reg_note	#
	movq	%rax, -48(%rbp)	# tmp149, note
	cmpq	$0, -48(%rbp)	#, note
	je	.L591	#,
	.loc 1 2923 0
	movq	-48(%rbp), %rdx	# note, tmp150
	movq	-88(%rbp), %rax	# insn, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	remove_note	#
.L591:
	.loc 1 2925 0
	movq	-88(%rbp), %rax	# insn, tmp152
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, tmp153
	movq	%rax, -40(%rbp)	# tmp153, next
	.loc 1 2927 0
	cmpq	$0, -56(%rbp)	#, set
	je	.L592	#,
	.loc 1 2927 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# set, tmp154
	movq	8(%rax), %rax	# set_49->fld[0].rtx, D.18144
	movzwl	(%rax), %eax	# _53->code, D.18140
	cmpw	$61, %ax	#, D.18140
	jne	.L592	#,
	.loc 1 2928 0 is_stmt 1
	movq	-56(%rbp), %rax	# set, tmp155
	movq	8(%rax), %rax	# set_49->fld[0].rtx, D.18144
	movl	8(%rax), %eax	# _55->fld[0].rtuint, D.18147
	cmpl	$52, %eax	#, D.18147
	jbe	.L592	#,
	.loc 1 2929 0
	movq	-88(%rbp), %rax	# insn, tmp156
	cmpq	-104(%rbp), %rax	# insns, tmp156
	je	.L593	#,
	.loc 1 2930 0
	movq	-104(%rbp), %rax	# insns, tmp157
	movzwl	(%rax), %eax	# insns_3->code, D.18140
	movzwl	%ax, %eax	# D.18140, D.18143
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18146
	cmpb	$105, %al	#, D.18146
	jne	.L594	#,
	.loc 1 2931 0
	movq	-104(%rbp), %rax	# insns, tmp159
	movq	32(%rax), %rdx	# insns_3->fld[3].rtx, D.18144
	movq	-56(%rbp), %rax	# set, tmp160
	movq	8(%rax), %rax	# set_49->fld[0].rtx, D.18144
	movq	%rdx, %rsi	# D.18144,
	movq	%rax, %rdi	# D.18144,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.18143
	jne	.L592	#,
.L594:
	.loc 1 2932 0
	movq	-56(%rbp), %rax	# set, tmp161
	movq	8(%rax), %rax	# set_49->fld[0].rtx, D.18144
	movq	-88(%rbp), %rdx	# insn, tmp162
	movq	-104(%rbp), %rcx	# insns, tmp163
	movq	%rcx, %rsi	# tmp163,
	movq	%rax, %rdi	# D.18144,
	call	reg_used_between_p	#
	testl	%eax, %eax	# D.18143
	jne	.L592	#,
	.loc 1 2933 0
	movq	-56(%rbp), %rax	# set, tmp164
	movq	16(%rax), %rax	# set_49->fld[1].rtx, D.18144
	movq	-104(%rbp), %rdx	# insns, tmp165
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# D.18144,
	call	modified_in_p	#
	testl	%eax, %eax	# D.18143
	jne	.L592	#,
	.loc 1 2934 0
	movq	-56(%rbp), %rax	# set, tmp166
	movq	16(%rax), %rax	# set_49->fld[1].rtx, D.18144
	movq	-88(%rbp), %rdx	# insn, tmp167
	movq	-104(%rbp), %rcx	# insns, tmp168
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, %rdi	# D.18144,
	call	modified_between_p	#
	testl	%eax, %eax	# D.18143
	jne	.L592	#,
.L593:
	.loc 1 2936 0
	movq	-88(%rbp), %rax	# insn, tmp169
	movq	16(%rax), %rax	# insn_8->fld[1].rtx, D.18144
	testq	%rax, %rax	# D.18144
	je	.L595	#,
	.loc 1 2937 0
	movq	-88(%rbp), %rax	# insn, tmp170
	movq	16(%rax), %rax	# insn_8->fld[1].rtx, D.18144
	movq	-40(%rbp), %rdx	# next, tmp171
	movq	%rdx, 24(%rax)	# tmp171, _70->fld[2].rtx
	jmp	.L596	#
.L595:
	.loc 1 2939 0
	movq	-40(%rbp), %rax	# next, tmp172
	movq	%rax, -104(%rbp)	# tmp172, insns
.L596:
	.loc 1 2941 0
	cmpq	$0, -40(%rbp)	#, next
	je	.L597	#,
	.loc 1 2942 0
	movq	-88(%rbp), %rax	# insn, tmp173
	movq	16(%rax), %rdx	# insn_8->fld[1].rtx, D.18144
	movq	-40(%rbp), %rax	# next, tmp174
	movq	%rdx, 16(%rax)	# D.18144, next_52->fld[1].rtx
.L597:
	.loc 1 2944 0
	movq	-88(%rbp), %rax	# insn, tmp175
	movq	%rax, %rdi	# tmp175,
	call	add_insn	#
.L592:
.LBE43:
	.loc 1 2913 0
	movq	-40(%rbp), %rax	# next, tmp176
	movq	%rax, -88(%rbp)	# tmp176, insn
.L585:
	.loc 1 2913 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	jne	.L598	#,
	.loc 1 2948 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -32(%rbp)	# tmp177, prev
	.loc 1 2952 0
	movq	-104(%rbp), %rax	# insns, tmp178
	movq	%rax, -88(%rbp)	# tmp178, insn
	jmp	.L599	#
.L600:
	.loc 1 2954 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp179
	movq	24(%rax), %rax	# insn_9->fld[2].rtx, tmp180
	movq	%rax, -40(%rbp)	# tmp180, next
	.loc 1 2956 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp181
	movq	%rax, %rdi	# tmp181,
	call	add_insn	#
	.loc 1 2952 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp182
	movq	%rax, -88(%rbp)	# tmp182, insn
.L599:
	.loc 1 2952 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	jne	.L600	#,
	.loc 1 2959 0 is_stmt 1
	movq	-120(%rbp), %rdx	# result, tmp183
	movq	-112(%rbp), %rax	# target, tmp184
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	emit_move_insn	#
	movq	%rax, -24(%rbp)	# tmp185, last
	.loc 1 2960 0
	movq	optab_table+240(%rip), %rdx	# optab_table, D.18148
	movq	-112(%rbp), %rax	# target, tmp186
	movzbl	2(%rax), %eax	# target_4->mode, D.18141
	movzbl	%al, %eax	# D.18141, D.18143
	cltq
	salq	$4, %rax	#, tmp188
	addq	%rdx, %rax	# D.18148, tmp189
	movl	8(%rax), %eax	# _80->handlers[_82].insn_code, D.18149
	cmpl	$1317, %eax	#, D.18149
	je	.L601	#,
	.loc 1 2962 0
	movq	-128(%rbp), %rax	# equiv, tmp190
	movq	%rax, %rdi	# tmp190,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18144
	movq	-24(%rbp), %rax	# last, tmp191
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	set_unique_reg_note	#
	jmp	.L602	#
.L601:
	.loc 1 2970 0
	movq	-24(%rbp), %rax	# last, tmp192
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.18144
	movq	-24(%rbp), %rax	# last, tmp193
	movq	%rdx, %rsi	# D.18144,
	movq	%rax, %rdi	# tmp193,
	call	remove_note	#
.L602:
	.loc 1 2973 0
	movq	-80(%rbp), %rax	# final_dest, tmp194
	cmpq	-112(%rbp), %rax	# target, tmp194
	je	.L603	#,
	.loc 1 2974 0
	movq	-112(%rbp), %rdx	# target, tmp195
	movq	-80(%rbp), %rax	# final_dest, tmp196
	movq	%rdx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp196,
	call	emit_move_insn	#
.L603:
	.loc 1 2976 0
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L604	#,
	.loc 1 2977 0
	call	get_insns	#
	movq	%rax, -96(%rbp)	# tmp197, first
	jmp	.L605	#
.L604:
	.loc 1 2979 0
	movq	-32(%rbp), %rax	# prev, tmp198
	movq	24(%rax), %rax	# prev_74->fld[2].rtx, tmp199
	movq	%rax, -96(%rbp)	# tmp199, first
.L605:
	.loc 1 2982 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.270
	testl	%eax, %eax	# flag_non_call_exceptions.270
	je	.L606	#,
	.loc 1 2982 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# equiv, tmp200
	movq	%rax, %rdi	# tmp200,
	call	may_trap_p	#
	testl	%eax, %eax	# D.18143
	jne	.L573	#,
.L606:
	.loc 1 2984 0 is_stmt 1
	movq	-96(%rbp), %rax	# first, tmp201
	movq	56(%rax), %rdx	# first_5->fld[6].rtx, D.18144
	movq	-24(%rbp), %rax	# last, tmp202
	movq	%rdx, %rcx	# D.18144,
	movq	%rax, %rdx	# tmp202,
	movl	$7, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-96(%rbp), %rdx	# first, tmp203
	movq	%rax, 56(%rdx)	# D.18144, first_5->fld[6].rtx
	.loc 1 2986 0
	movq	-24(%rbp), %rax	# last, tmp204
	movq	56(%rax), %rdx	# last_79->fld[6].rtx, D.18144
	movq	-96(%rbp), %rax	# first, tmp205
	movq	%rdx, %rcx	# D.18144,
	movq	%rax, %rdx	# tmp205,
	movl	$6, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-24(%rbp), %rdx	# last, tmp206
	movq	%rax, 56(%rdx)	# D.18144, last_79->fld[6].rtx
.L573:
	.loc 1 2989 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	emit_libcall_block, .-emit_libcall_block
	.globl	emit_clr_insn
	.type	emit_clr_insn, @function
emit_clr_insn:
.LFB17:
	.loc 1 2996 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2997 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.18150
	movq	-8(%rbp), %rax	# x, tmp60
	movq	%rdx, %rsi	# D.18150,
	movq	%rax, %rdi	# tmp60,
	call	emit_move_insn	#
	.loc 1 2998 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	emit_clr_insn, .-emit_clr_insn
	.globl	emit_0_to_1_insn
	.type	emit_0_to_1_insn, @function
emit_0_to_1_insn:
.LFB18:
	.loc 1 3006 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 3007 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.18151
	movq	-8(%rbp), %rax	# x, tmp60
	movq	%rdx, %rsi	# D.18151,
	movq	%rax, %rdi	# tmp60,
	call	emit_move_insn	#
	.loc 1 3008 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	emit_0_to_1_insn, .-emit_0_to_1_insn
	.globl	can_compare_p
	.type	can_compare_p, @function
can_compare_p:
.LFB19:
	.loc 1 3023 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# code, code
	movl	%esi, -8(%rbp)	# mode, mode
	movl	%edx, -12(%rbp)	# purpose, purpose
.L618:
	.loc 1 3026 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18153
	movl	-8(%rbp), %edx	# mode, mode.271
	movslq	%edx, %rdx	# mode.271, tmp81
	salq	$4, %rdx	#, tmp82
	addq	%rdx, %rax	# tmp82, tmp83
	movl	8(%rax), %eax	# _4->handlers[mode.271_5].insn_code, D.18154
	cmpl	$1317, %eax	#, D.18154
	je	.L611	#,
	.loc 1 3028 0
	cmpl	$0, -12(%rbp)	#, purpose
	jne	.L612	#,
	.loc 1 3029 0
	movl	-4(%rbp), %eax	# code, code.272
	cltq
	movq	bcc_gen_fctn(,%rax,8), %rax	# bcc_gen_fctn, D.18155
	testq	%rax, %rax	# D.18155
	setne	%al	#, D.18156
	movzbl	%al, %eax	# D.18156, D.18152
	jmp	.L613	#
.L612:
	.loc 1 3030 0
	cmpl	$2, -12(%rbp)	#, purpose
	jne	.L614	#,
	.loc 1 3031 0
	movl	-4(%rbp), %eax	# code, code.273
	cltq
	movl	setcc_gen_code(,%rax,4), %eax	# setcc_gen_code, D.18154
	cmpl	$1317, %eax	#, D.18154
	setne	%al	#, D.18156
	movzbl	%al, %eax	# D.18156, D.18152
	jmp	.L613	#
.L614:
	.loc 1 3034 0
	movl	$1, %eax	#, D.18152
	jmp	.L613	#
.L611:
	.loc 1 3036 0
	cmpl	$0, -12(%rbp)	#, purpose
	jne	.L615	#,
	.loc 1 3037 0
	movq	optab_table+360(%rip), %rax	# optab_table, D.18153
	movl	-8(%rbp), %edx	# mode, mode.274
	movslq	%edx, %rdx	# mode.274, tmp86
	salq	$4, %rdx	#, tmp87
	addq	%rdx, %rax	# tmp87, tmp88
	movl	8(%rax), %eax	# _18->handlers[mode.274_19].insn_code, D.18154
	cmpl	$1317, %eax	#, D.18154
	je	.L615	#,
	.loc 1 3038 0
	movl	$1, %eax	#, D.18152
	jmp	.L613	#
.L615:
	.loc 1 3039 0
	cmpl	$1, -12(%rbp)	#, purpose
	jne	.L616	#,
	.loc 1 3040 0
	movq	optab_table+368(%rip), %rax	# optab_table, D.18153
	movl	-8(%rbp), %edx	# mode, mode.275
	movslq	%edx, %rdx	# mode.275, tmp89
	salq	$4, %rdx	#, tmp90
	addq	%rdx, %rax	# tmp90, tmp91
	movl	8(%rax), %eax	# _22->handlers[mode.275_23].insn_code, D.18154
	cmpl	$1317, %eax	#, D.18154
	je	.L616	#,
	.loc 1 3041 0
	movl	$1, %eax	#, D.18152
	jmp	.L613	#
.L616:
	.loc 1 3042 0
	cmpl	$2, -12(%rbp)	#, purpose
	jne	.L617	#,
	.loc 1 3043 0
	movq	optab_table+376(%rip), %rax	# optab_table, D.18153
	movl	-8(%rbp), %edx	# mode, mode.276
	movslq	%edx, %rdx	# mode.276, tmp92
	salq	$4, %rdx	#, tmp93
	addq	%rdx, %rax	# tmp93, tmp94
	movl	8(%rax), %eax	# _26->handlers[mode.276_27].insn_code, D.18154
	cmpl	$1317, %eax	#, D.18154
	je	.L617	#,
	.loc 1 3044 0
	movl	$1, %eax	#, D.18152
	jmp	.L613	#
.L617:
	.loc 1 3046 0
	movl	-8(%rbp), %eax	# mode, mode.277
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18157
	movzbl	%al, %eax	# D.18157, tmp96
	movl	%eax, -8(%rbp)	# tmp96, mode
	.loc 1 3048 0
	cmpl	$0, -8(%rbp)	#, mode
	jne	.L618	#,
	.loc 1 3050 0
	movl	$0, %eax	#, D.18152
.L613:
	.loc 1 3051 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	can_compare_p, .-can_compare_p
	.type	prepare_cmp_insn, @function
prepare_cmp_insn:
.LFB20:
	.loc 1 3077 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -72(%rbp)	# px, px
	movq	%rsi, -80(%rbp)	# py, py
	movq	%rdx, -88(%rbp)	# pcomparison, pcomparison
	movq	%rcx, -96(%rbp)	# size, size
	movq	%r8, -104(%rbp)	# pmode, pmode
	movq	%r9, -112(%rbp)	# punsignedp, punsignedp
	.loc 1 3078 0
	movq	-104(%rbp), %rax	# pmode, tmp115
	movl	(%rax), %eax	# *pmode_9(D), tmp116
	movl	%eax, -64(%rbp)	# tmp116, mode
	.loc 1 3079 0
	movq	-72(%rbp), %rax	# px, tmp117
	movq	(%rax), %rax	# *px_11(D), tmp118
	movq	%rax, -48(%rbp)	# tmp118, x
	movq	-80(%rbp), %rax	# py, tmp119
	movq	(%rax), %rax	# *py_13(D), tmp120
	movq	%rax, -40(%rbp)	# tmp120, y
	.loc 1 3080 0
	movq	-112(%rbp), %rax	# punsignedp, tmp121
	movl	(%rax), %eax	# *punsignedp_15(D), tmp122
	movl	%eax, -60(%rbp)	# tmp122, unsignedp
	.loc 1 3083 0
	movl	-64(%rbp), %eax	# mode, mode.278
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp124
	movl	%eax, -56(%rbp)	# tmp124, class
	.loc 1 3090 0
	cmpl	$51, -64(%rbp)	#, mode
	je	.L620	#,
	.loc 1 3090 0 is_stmt 0 discriminator 1
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.279
	testl	%eax, %eax	# flag_force_mem.279
	je	.L620	#,
	.loc 1 3092 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp125
	movq	%rax, %rdi	# tmp125,
	call	force_not_mem	#
	movq	%rax, -48(%rbp)	# tmp126, x
	.loc 1 3093 0
	movq	-40(%rbp), %rax	# y, tmp127
	movq	%rax, %rdi	# tmp127,
	call	force_not_mem	#
	movq	%rax, -40(%rbp)	# tmp128, y
.L620:
	.loc 1 3098 0
	movq	-48(%rbp), %rax	# x, tmp129
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$67, %ax	#, D.18158
	je	.L621	#,
	.loc 1 3098 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# x, tmp130
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$68, %ax	#, D.18158
	je	.L621	#,
	.loc 1 3098 0 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp131
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$54, %ax	#, D.18158
	je	.L621	#,
	movq	-48(%rbp), %rax	# x, tmp132
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$55, %ax	#, D.18158
	je	.L621	#,
	movq	-48(%rbp), %rax	# x, tmp133
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$58, %ax	#, D.18158
	je	.L621	#,
	movq	-48(%rbp), %rax	# x, tmp134
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$134, %ax	#, D.18158
	je	.L621	#,
	movq	-48(%rbp), %rax	# x, tmp135
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$56, %ax	#, D.18158
	je	.L621	#,
	movq	-48(%rbp), %rax	# x, tmp136
	movzwl	(%rax), %eax	# x_1->code, D.18158
	cmpw	$140, %ax	#, D.18158
	jne	.L622	#,
.L621:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18159
	je	.L622	#,
	.loc 1 3099 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp137
	movl	$74, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18159
	jle	.L622	#,
	.loc 1 3100 0
	movq	-48(%rbp), %rdx	# x, tmp138
	movl	-64(%rbp), %eax	# mode, tmp139
	movq	%rdx, %rsi	# tmp138,
	movl	%eax, %edi	# tmp139,
	call	force_reg	#
	movq	%rax, -48(%rbp)	# tmp140, x
.L622:
	.loc 1 3102 0
	movq	-40(%rbp), %rax	# y, tmp141
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$67, %ax	#, D.18158
	je	.L623	#,
	.loc 1 3102 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# y, tmp142
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$68, %ax	#, D.18158
	je	.L623	#,
	.loc 1 3102 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp143
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$54, %ax	#, D.18158
	je	.L623	#,
	movq	-40(%rbp), %rax	# y, tmp144
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$55, %ax	#, D.18158
	je	.L623	#,
	movq	-40(%rbp), %rax	# y, tmp145
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$58, %ax	#, D.18158
	je	.L623	#,
	movq	-40(%rbp), %rax	# y, tmp146
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$134, %ax	#, D.18158
	je	.L623	#,
	movq	-40(%rbp), %rax	# y, tmp147
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$56, %ax	#, D.18158
	je	.L623	#,
	movq	-40(%rbp), %rax	# y, tmp148
	movzwl	(%rax), %eax	# y_4->code, D.18158
	cmpw	$140, %ax	#, D.18158
	jne	.L624	#,
.L623:
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.18159
	je	.L624	#,
	.loc 1 3103 0 is_stmt 1
	movq	-40(%rbp), %rax	# y, tmp149
	movl	$74, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.18159
	jle	.L624	#,
	.loc 1 3104 0
	movq	-40(%rbp), %rdx	# y, tmp150
	movl	-64(%rbp), %eax	# mode, tmp151
	movq	%rdx, %rsi	# tmp150,
	movl	%eax, %edi	# tmp151,
	call	force_reg	#
	movq	%rax, -40(%rbp)	# tmp152, y
.L624:
	.loc 1 3115 0
	movq	-48(%rbp), %rax	# x, tmp153
	movzbl	2(%rax), %eax	# x_2->mode, D.18160
	testb	%al, %al	# D.18160
	jne	.L625	#,
	.loc 1 3115 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp154
	movzbl	2(%rax), %eax	# y_5->mode, D.18160
	testb	%al, %al	# D.18160
	jne	.L625	#,
	.loc 1 3116 0 is_stmt 1
	movq	-48(%rbp), %rdx	# x, tmp155
	movl	-64(%rbp), %eax	# mode, tmp156
	movq	%rdx, %rsi	# tmp155,
	movl	%eax, %edi	# tmp156,
	call	force_reg	#
	movq	%rax, -48(%rbp)	# tmp157, x
.L625:
	.loc 1 3120 0
	cmpl	$51, -64(%rbp)	#, mode
	jne	.L626	#,
.LBB44:
	.loc 1 3125 0
	movq	-40(%rbp), %rax	# y, tmp158
	movq	16(%rax), %rax	# y_5->fld[1].rtmem, D.18161
	testq	%rax, %rax	# D.18161
	je	.L627	#,
	.loc 1 3125 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp159
	movq	16(%rax), %rax	# y_5->fld[1].rtmem, D.18161
	movl	32(%rax), %edx	# _48->align, iftmp.280
	jmp	.L628	#
.L627:
	.loc 1 3125 0 discriminator 2
	movl	$8, %edx	#, iftmp.280
.L628:
	.loc 1 3125 0 discriminator 3
	movq	-48(%rbp), %rax	# x, tmp160
	movq	16(%rax), %rax	# x_3->fld[1].rtmem, D.18161
	testq	%rax, %rax	# D.18161
	je	.L629	#,
	.loc 1 3125 0 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp161
	movq	16(%rax), %rax	# x_3->fld[1].rtmem, D.18161
	movl	32(%rax), %eax	# _52->align, iftmp.281
	jmp	.L630	#
.L629:
	.loc 1 3125 0 discriminator 2
	movl	$8, %eax	#, iftmp.281
.L630:
	.loc 1 3125 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.281, iftmp.280
	cmovbe	%edx, %eax	# iftmp.280,, D.18162
	shrl	$3, %eax	#, D.18162
	movl	%eax, %eax	# D.18162, D.18163
	.loc 1 3124 0 is_stmt 1 discriminator 3
	movq	%rax, %rsi	# D.18163,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp162, opalign
	.loc 1 3127 0 discriminator 3
	call	emit_queue	#
	.loc 1 3128 0 discriminator 3
	movq	-48(%rbp), %rax	# x, tmp163
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp163,
	call	protect_from_queue	#
	movq	%rax, -48(%rbp)	# tmp164, x
	.loc 1 3129 0 discriminator 3
	movq	-40(%rbp), %rax	# y, tmp165
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	protect_from_queue	#
	movq	%rax, -40(%rbp)	# tmp166, y
	.loc 1 3131 0 discriminator 3
	cmpq	$0, -96(%rbp)	#, size
	jne	.L631	#,
	.loc 1 3132 0
	movl	$__FUNCTION__.13924, %edx	#,
	movl	$3132, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L631:
	.loc 1 3158 0
	movq	insn_data+48144(%rip), %rax	# insn_data[1203].operand, D.18164
	movzwl	16(%rax), %eax	# _62->mode, D.18158
	movzwl	%ax, %eax	# D.18158, tmp167
	movl	%eax, -52(%rbp)	# tmp167, result_mode
	.loc 1 3159 0
	movl	-52(%rbp), %eax	# result_mode, tmp168
	movl	%eax, %edi	# tmp168,
	call	gen_reg_rtx	#
	movq	%rax, -16(%rbp)	# tmp169, result
	.loc 1 3160 0
	movq	-96(%rbp), %rax	# size, tmp170
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	protect_from_queue	#
	movq	%rax, -96(%rbp)	# tmp171, size
	.loc 1 3161 0
	movq	-96(%rbp), %rax	# size, tmp172
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp172,
	movl	$4, %edi	#,
	call	convert_to_mode	#
	movq	%rax, %rcx	#, D.18165
	movq	-24(%rbp), %rdi	# opalign, tmp173
	movq	-40(%rbp), %rdx	# y, tmp174
	movq	-48(%rbp), %rsi	# x, tmp175
	movq	-16(%rbp), %rax	# result, tmp176
	movq	%rdi, %r8	# tmp173,
	movq	%rax, %rdi	# tmp176,
	call	gen_cmpstrsi	#
	movq	%rax, %rdi	# D.18165,
	call	emit_insn	#
	.loc 1 3193 0
	movq	-72(%rbp), %rax	# px, tmp177
	movq	-16(%rbp), %rdx	# result, tmp178
	movq	%rdx, (%rax)	# tmp178, *px_11(D)
	.loc 1 3194 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.18165
	movq	-80(%rbp), %rax	# py, tmp179
	movq	%rdx, (%rax)	# D.18165, *py_13(D)
	.loc 1 3195 0
	movq	-104(%rbp), %rax	# pmode, tmp180
	movl	-52(%rbp), %edx	# result_mode, tmp181
	movl	%edx, (%rax)	# tmp181, *pmode_9(D)
	.loc 1 3196 0
	jmp	.L619	#
.L626:
.LBE44:
	.loc 1 3199 0
	movq	-72(%rbp), %rax	# px, tmp182
	movq	-48(%rbp), %rdx	# x, tmp183
	movq	%rdx, (%rax)	# tmp183, *px_11(D)
	.loc 1 3200 0
	movq	-80(%rbp), %rax	# py, tmp184
	movq	-40(%rbp), %rdx	# y, tmp185
	movq	%rdx, (%rax)	# tmp185, *py_13(D)
	.loc 1 3201 0
	movq	-88(%rbp), %rax	# pcomparison, tmp186
	movl	(%rax), %eax	# *pcomparison_70(D), D.18166
	movl	-64(%rbp), %ecx	# mode, tmp187
	movl	16(%rbp), %edx	# purpose,
	movl	%ecx, %esi	# tmp187,
	movl	%eax, %edi	# D.18166,
	call	can_compare_p	#
	testl	%eax, %eax	# D.18159
	je	.L633	#,
	.loc 1 3202 0
	jmp	.L619	#
.L633:
	.loc 1 3206 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18167
	movl	-64(%rbp), %edx	# mode, mode.286
	movslq	%edx, %rdx	# mode.286, tmp188
	salq	$4, %rdx	#, tmp189
	addq	%rdx, %rax	# tmp189, tmp190
	addq	$16, %rax	#, tmp191
	movq	(%rax), %rax	# _74->handlers[mode.286_75].libfunc, D.18165
	testq	%rax, %rax	# D.18165
	je	.L634	#,
	.loc 1 3206 0 is_stmt 0 discriminator 1
	cmpl	$2, -56(%rbp)	#, class
	je	.L634	#,
.LBB45:
	.loc 1 3208 0 is_stmt 1
	movq	optab_table+328(%rip), %rax	# optab_table, D.18167
	movl	-64(%rbp), %edx	# mode, mode.287
	movslq	%edx, %rdx	# mode.287, tmp192
	salq	$4, %rdx	#, tmp193
	addq	%rdx, %rax	# tmp193, tmp194
	addq	$16, %rax	#, tmp195
	movq	(%rax), %rax	# _77->handlers[mode.287_78].libfunc, tmp196
	movq	%rax, -32(%rbp)	# tmp196, libfunc
	.loc 1 3213 0
	cmpl	$0, -60(%rbp)	#, unsignedp
	je	.L635	#,
	.loc 1 3213 0 is_stmt 0 discriminator 1
	movq	optab_table+336(%rip), %rax	# optab_table, D.18167
	movl	-64(%rbp), %edx	# mode, mode.288
	movslq	%edx, %rdx	# mode.288, tmp197
	salq	$4, %rdx	#, tmp198
	addq	%rdx, %rax	# tmp198, tmp199
	addq	$16, %rax	#, tmp200
	movq	(%rax), %rax	# _80->handlers[mode.288_81].libfunc, D.18165
	testq	%rax, %rax	# D.18165
	je	.L635	#,
	.loc 1 3214 0 is_stmt 1
	movq	optab_table+336(%rip), %rax	# optab_table, D.18167
	movl	-64(%rbp), %edx	# mode, mode.289
	movslq	%edx, %rdx	# mode.289, tmp201
	salq	$4, %rdx	#, tmp202
	addq	%rdx, %rax	# tmp202, tmp203
	addq	$16, %rax	#, tmp204
	movq	(%rax), %rax	# _83->handlers[mode.289_84].libfunc, tmp205
	movq	%rax, -32(%rbp)	# tmp205, libfunc
.L635:
	.loc 1 3216 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.290
	movl	-64(%rbp), %edi	# mode, tmp206
	movq	-48(%rbp), %rsi	# x, tmp207
	movq	-32(%rbp), %rax	# libfunc, tmp208
	movl	-64(%rbp), %ecx	# mode, tmp209
	movl	%ecx, 8(%rsp)	# tmp209,
	movq	-40(%rbp), %rcx	# y, tmp210
	movq	%rcx, (%rsp)	# tmp210,
	movl	%edi, %r9d	# tmp206,
	movq	%rsi, %r8	# tmp207,
	movl	$2, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp208,
	movl	$0, %eax	#,
	call	emit_library_call	#
	.loc 1 3222 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.291
	movl	%eax, %edi	# word_mode.291,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp211, result
	.loc 1 3223 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.292
	movl	%eax, %edi	# word_mode.292,
	call	hard_libcall_value	#
	movq	%rax, %rdx	#, D.18165
	movq	-8(%rbp), %rax	# result, tmp212
	movq	%rdx, %rsi	# D.18165,
	movq	%rax, %rdi	# tmp212,
	call	emit_move_insn	#
	.loc 1 3228 0
	movq	-72(%rbp), %rax	# px, tmp213
	movq	-8(%rbp), %rdx	# result, tmp214
	movq	%rdx, (%rax)	# tmp214, *px_11(D)
	.loc 1 3229 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.18165
	movq	-80(%rbp), %rax	# py, tmp215
	movq	%rdx, (%rax)	# D.18165, *py_13(D)
	.loc 1 3230 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.293
	movq	-104(%rbp), %rax	# pmode, tmp216
	movl	%edx, (%rax)	# word_mode.293, *pmode_9(D)
	.loc 1 3231 0
	jmp	.L619	#
.L634:
.LBE45:
	.loc 1 3234 0
	cmpl	$2, -56(%rbp)	#, class
	jne	.L636	#,
	.loc 1 3235 0
	movq	-112(%rbp), %rdi	# punsignedp, tmp217
	movq	-104(%rbp), %rcx	# pmode, tmp218
	movq	-88(%rbp), %rdx	# pcomparison, tmp219
	movq	-80(%rbp), %rsi	# py, tmp220
	movq	-72(%rbp), %rax	# px, tmp221
	movq	%rdi, %r8	# tmp217,
	movq	%rax, %rdi	# tmp221,
	call	prepare_float_lib_cmp	#
	jmp	.L619	#
.L636:
	.loc 1 3238 0
	movl	$__FUNCTION__.13924, %edx	#,
	movl	$3238, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L619:
	.loc 1 3239 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	prepare_cmp_insn, .-prepare_cmp_insn
	.globl	prepare_operand
	.type	prepare_operand, @function
prepare_operand:
.LFB21:
	.loc 1 3253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# icode, icode
	movq	%rsi, -16(%rbp)	# x, x
	movl	%edx, -8(%rbp)	# opnum, opnum
	movl	%ecx, -20(%rbp)	# mode, mode
	movl	%r8d, -24(%rbp)	# wider_mode, wider_mode
	movl	%r9d, -28(%rbp)	# unsignedp, unsignedp
	.loc 1 3254 0
	movq	-16(%rbp), %rax	# x, tmp79
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	protect_from_queue	#
	movq	%rax, -16(%rbp)	# tmp80, x
	.loc 1 3256 0
	movl	-20(%rbp), %eax	# mode, tmp81
	cmpl	-24(%rbp), %eax	# wider_mode, tmp81
	je	.L638	#,
	.loc 1 3257 0
	movl	-28(%rbp), %ecx	# unsignedp, tmp82
	movq	-16(%rbp), %rdx	# x, tmp83
	movl	-20(%rbp), %esi	# mode, tmp84
	movl	-24(%rbp), %eax	# wider_mode, tmp85
	movl	%eax, %edi	# tmp85,
	call	convert_modes	#
	movq	%rax, -16(%rbp)	# tmp86, x
.L638:
	.loc 1 3259 0
	movl	-4(%rbp), %eax	# icode, tmp88
	movslq	%eax, %rdx	# tmp88, tmp87
	movq	%rdx, %rax	# tmp87, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# tmp87, tmp89
	salq	$3, %rax	#, tmp90
	addq	$insn_data+24, %rax	#, tmp91
	movq	(%rax), %rcx	# insn_data[icode_9(D)].operand, D.18168
	movl	-8(%rbp), %eax	# opnum, tmp92
	movslq	%eax, %rdx	# tmp92, D.18169
	movq	%rdx, %rax	# D.18169, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# D.18169, tmp93
	salq	$3, %rax	#, tmp94
	addq	%rcx, %rax	# D.18168, D.18168
	.loc 1 3260 0
	movq	(%rax), %rcx	# _14->predicate, D.18170
	movl	-4(%rbp), %eax	# icode, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	salq	$2, %rax	#, tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$insn_data+24, %rax	#, tmp99
	movq	(%rax), %rsi	# insn_data[icode_9(D)].operand, D.18168
	movl	-8(%rbp), %eax	# opnum, tmp100
	movslq	%eax, %rdx	# tmp100, D.18169
	movq	%rdx, %rax	# D.18169, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.18169, tmp101
	salq	$3, %rax	#, tmp102
	addq	%rsi, %rax	# D.18168, D.18168
	movzwl	16(%rax), %eax	# _19->mode, D.18171
	movzwl	%ax, %edx	# D.18171, D.18172
	movq	-16(%rbp), %rax	# x, tmp103
	movl	%edx, %esi	# D.18172,
	movq	%rax, %rdi	# tmp103,
	call	*%rcx	# D.18170
	.loc 1 3259 0
	testl	%eax, %eax	# D.18173
	jne	.L639	#,
	.loc 1 3261 0
	movl	-4(%rbp), %eax	# icode, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$insn_data+24, %rax	#, tmp108
	movq	(%rax), %rcx	# insn_data[icode_9(D)].operand, D.18168
	movl	-8(%rbp), %eax	# opnum, tmp109
	movslq	%eax, %rdx	# tmp109, D.18169
	movq	%rdx, %rax	# D.18169, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.18169, tmp110
	salq	$3, %rax	#, tmp111
	addq	%rcx, %rax	# D.18168, D.18168
	movzwl	16(%rax), %eax	# _26->mode, D.18171
	movzwl	%ax, %eax	# D.18171, D.18172
	movq	-16(%rbp), %rdx	# x, tmp112
	movq	%rdx, %rsi	# tmp112,
	movl	%eax, %edi	# D.18172,
	call	copy_to_mode_reg	#
	movq	%rax, -16(%rbp)	# tmp113, x
.L639:
	.loc 1 3262 0
	movq	-16(%rbp), %rax	# x, D.18174
	.loc 1 3263 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	prepare_operand, .-prepare_operand
	.type	emit_cmp_and_jump_insn_1, @function
emit_cmp_and_jump_insn_1:
.LFB22:
	.loc 1 3277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# y, y
	movl	%edx, -52(%rbp)	# mode, mode
	movl	%ecx, -56(%rbp)	# comparison, comparison
	movl	%r8d, -60(%rbp)	# unsignedp, unsignedp
	movq	%r9, -72(%rbp)	# label, label
	.loc 1 3278 0
	movq	-48(%rbp), %rcx	# y, tmp94
	movq	-40(%rbp), %rdx	# x, tmp95
	movl	-52(%rbp), %esi	# mode, tmp96
	movl	-56(%rbp), %eax	# comparison, tmp97
	movl	%eax, %edi	# tmp97,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp98, test
	.loc 1 3279 0
	movl	-52(%rbp), %eax	# mode, mode.294
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, tmp100
	movl	%eax, -16(%rbp)	# tmp100, class
	.loc 1 3280 0
	movl	-52(%rbp), %eax	# mode, tmp101
	movl	%eax, -20(%rbp)	# tmp101, wider_mode
.L650:
.LBB46:
	.loc 1 3286 0
	movl	-20(%rbp), %eax	# wider_mode, tmp102
	movl	%eax, %edx	# tmp102, D.18175
	movq	-8(%rbp), %rax	# test, tmp103
	movb	%dl, 2(%rax)	# D.18175, test_6->mode
	.loc 1 3288 0
	cmpq	$0, -72(%rbp)	#, label
	je	.L642	#,
	.loc 1 3290 0
	movq	optab_table+360(%rip), %rax	# optab_table, D.18176
	movl	-20(%rbp), %edx	# wider_mode, wider_mode.295
	movslq	%edx, %rdx	# wider_mode.295, tmp104
	salq	$4, %rdx	#, tmp105
	addq	%rdx, %rax	# tmp105, tmp106
	movl	8(%rax), %eax	# _12->handlers[wider_mode.295_13].insn_code, tmp107
	movl	%eax, -12(%rbp)	# tmp107, icode
	.loc 1 3292 0
	cmpl	$1317, -12(%rbp)	#, icode
	je	.L642	#,
	.loc 1 3293 0
	movl	-12(%rbp), %edx	# icode, tmp108
	movq	%rdx, %rax	# tmp108, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# tmp108, tmp109
	salq	$3, %rax	#, tmp110
	addq	$insn_data+24, %rax	#, tmp111
	movq	(%rax), %rax	# insn_data[icode_14].operand, D.18177
	movq	(%rax), %rax	# _15->predicate, D.18178
	movl	-20(%rbp), %ecx	# wider_mode, tmp112
	movq	-8(%rbp), %rdx	# test, tmp113
	movl	%ecx, %esi	# tmp112,
	movq	%rdx, %rdi	# tmp113,
	call	*%rax	# D.18178
	testl	%eax, %eax	# D.18179
	je	.L642	#,
	.loc 1 3295 0
	movl	-12(%rbp), %eax	# icode, icode.296
	movl	-60(%rbp), %edi	# unsignedp, tmp114
	movl	-20(%rbp), %ecx	# wider_mode, tmp115
	movl	-52(%rbp), %edx	# mode, tmp116
	movq	-40(%rbp), %rsi	# x, tmp117
	movl	%edi, %r9d	# tmp114,
	movl	%ecx, %r8d	# tmp115,
	movl	%edx, %ecx	# tmp116,
	movl	$1, %edx	#,
	movl	%eax, %edi	# icode.296,
	call	prepare_operand	#
	movq	%rax, -40(%rbp)	# tmp118, x
	.loc 1 3296 0
	movl	-12(%rbp), %eax	# icode, icode.297
	movl	-60(%rbp), %edi	# unsignedp, tmp119
	movl	-20(%rbp), %ecx	# wider_mode, tmp120
	movl	-52(%rbp), %edx	# mode, tmp121
	movq	-48(%rbp), %rsi	# y, tmp122
	movl	%edi, %r9d	# tmp119,
	movl	%ecx, %r8d	# tmp120,
	movl	%edx, %ecx	# tmp121,
	movl	$2, %edx	#,
	movl	%eax, %edi	# icode.297,
	call	prepare_operand	#
	movq	%rax, -48(%rbp)	# tmp123, y
	.loc 1 3297 0
	movl	-12(%rbp), %eax	# icode, icode.298
	movslq	%eax, %rdx	# icode.298, tmp124
	movq	%rdx, %rax	# tmp124, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# tmp124, tmp125
	salq	$3, %rax	#, tmp126
	addq	$insn_data+16, %rax	#, tmp127
	movq	(%rax), %r8	# insn_data[icode.298_23].genfun, D.18180
	movq	-72(%rbp), %rcx	# label, tmp128
	movq	-48(%rbp), %rdx	# y, tmp129
	movq	-40(%rbp), %rsi	# x, tmp130
	movq	-8(%rbp), %rax	# test, tmp131
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	*%r8	# D.18180
	movq	%rax, %rdi	# D.18181,
	call	emit_jump_insn	#
	.loc 1 3298 0
	jmp	.L641	#
.L642:
	.loc 1 3303 0
	movq	optab_table+344(%rip), %rax	# optab_table, D.18176
	movl	-20(%rbp), %edx	# wider_mode, wider_mode.299
	movslq	%edx, %rdx	# wider_mode.299, tmp132
	salq	$4, %rdx	#, tmp133
	addq	%rdx, %rax	# tmp133, tmp134
	movl	8(%rax), %eax	# _26->handlers[wider_mode.299_27].insn_code, tmp135
	movl	%eax, -12(%rbp)	# tmp135, icode
	.loc 1 3304 0
	movl	-52(%rbp), %eax	# mode, mode.300
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.18181
	cmpq	-48(%rbp), %rax	# y, D.18181
	jne	.L644	#,
	.loc 1 3304 0 is_stmt 0 discriminator 1
	cmpl	$1317, -12(%rbp)	#, icode
	je	.L644	#,
	.loc 1 3306 0 is_stmt 1
	movl	-12(%rbp), %eax	# icode, icode.301
	movl	-60(%rbp), %edi	# unsignedp, tmp137
	movl	-20(%rbp), %ecx	# wider_mode, tmp138
	movl	-52(%rbp), %edx	# mode, tmp139
	movq	-40(%rbp), %rsi	# x, tmp140
	movl	%edi, %r9d	# tmp137,
	movl	%ecx, %r8d	# tmp138,
	movl	%edx, %ecx	# tmp139,
	movl	$0, %edx	#,
	movl	%eax, %edi	# icode.301,
	call	prepare_operand	#
	movq	%rax, -40(%rbp)	# tmp141, x
	.loc 1 3307 0
	movl	-12(%rbp), %eax	# icode, icode.302
	movslq	%eax, %rdx	# icode.302, tmp142
	movq	%rdx, %rax	# tmp142, tmp143
	salq	$2, %rax	#, tmp143
	addq	%rdx, %rax	# tmp142, tmp143
	salq	$3, %rax	#, tmp144
	addq	$insn_data+16, %rax	#, tmp145
	movq	(%rax), %rdx	# insn_data[icode.302_33].genfun, D.18180
	movq	-40(%rbp), %rax	# x, tmp146
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	*%rdx	# D.18180
	movq	%rax, %rdi	# D.18181,
	call	emit_insn	#
	.loc 1 3308 0
	cmpq	$0, -72(%rbp)	#, label
	je	.L645	#,
	.loc 1 3309 0
	movl	-56(%rbp), %eax	# comparison, comparison.303
	cltq
	movq	bcc_gen_fctn(,%rax,8), %rax	# bcc_gen_fctn, D.18182
	movq	-72(%rbp), %rdx	# label, tmp148
	movq	%rdx, %rdi	# tmp148,
	call	*%rax	# D.18182
	movq	%rax, %rdi	# D.18181,
	call	emit_jump_insn	#
	.loc 1 3310 0
	jmp	.L641	#
.L645:
	jmp	.L641	#
.L644:
	.loc 1 3315 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18176
	movl	-20(%rbp), %edx	# wider_mode, wider_mode.304
	movslq	%edx, %rdx	# wider_mode.304, tmp149
	salq	$4, %rdx	#, tmp150
	addq	%rdx, %rax	# tmp150, tmp151
	movl	8(%rax), %eax	# _39->handlers[wider_mode.304_40].insn_code, tmp152
	movl	%eax, -12(%rbp)	# tmp152, icode
	.loc 1 3316 0
	cmpl	$1317, -12(%rbp)	#, icode
	je	.L646	#,
	.loc 1 3318 0
	movl	-12(%rbp), %eax	# icode, icode.305
	movl	-60(%rbp), %edi	# unsignedp, tmp153
	movl	-20(%rbp), %ecx	# wider_mode, tmp154
	movl	-52(%rbp), %edx	# mode, tmp155
	movq	-40(%rbp), %rsi	# x, tmp156
	movl	%edi, %r9d	# tmp153,
	movl	%ecx, %r8d	# tmp154,
	movl	%edx, %ecx	# tmp155,
	movl	$0, %edx	#,
	movl	%eax, %edi	# icode.305,
	call	prepare_operand	#
	movq	%rax, -40(%rbp)	# tmp157, x
	.loc 1 3319 0
	movl	-12(%rbp), %eax	# icode, icode.306
	movl	-60(%rbp), %edi	# unsignedp, tmp158
	movl	-20(%rbp), %ecx	# wider_mode, tmp159
	movl	-52(%rbp), %edx	# mode, tmp160
	movq	-48(%rbp), %rsi	# y, tmp161
	movl	%edi, %r9d	# tmp158,
	movl	%ecx, %r8d	# tmp159,
	movl	%edx, %ecx	# tmp160,
	movl	$1, %edx	#,
	movl	%eax, %edi	# icode.306,
	call	prepare_operand	#
	movq	%rax, -48(%rbp)	# tmp162, y
	.loc 1 3320 0
	movl	-12(%rbp), %eax	# icode, icode.307
	movslq	%eax, %rdx	# icode.307, tmp163
	movq	%rdx, %rax	# tmp163, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# tmp163, tmp164
	salq	$3, %rax	#, tmp165
	addq	$insn_data+16, %rax	#, tmp166
	movq	(%rax), %rdx	# insn_data[icode.307_46].genfun, D.18180
	movq	-48(%rbp), %rcx	# y, tmp167
	movq	-40(%rbp), %rax	# x, tmp168
	movq	%rcx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	movl	$0, %eax	#,
	call	*%rdx	# D.18180
	movq	%rax, %rdi	# D.18181,
	call	emit_insn	#
	.loc 1 3321 0
	cmpq	$0, -72(%rbp)	#, label
	je	.L647	#,
	.loc 1 3322 0
	movl	-56(%rbp), %eax	# comparison, comparison.308
	cltq
	movq	bcc_gen_fctn(,%rax,8), %rax	# bcc_gen_fctn, D.18182
	movq	-72(%rbp), %rdx	# label, tmp170
	movq	%rdx, %rdi	# tmp170,
	call	*%rax	# D.18182
	movq	%rax, %rdi	# D.18181,
	call	emit_jump_insn	#
	.loc 1 3323 0
	jmp	.L641	#
.L647:
	jmp	.L641	#
.L646:
	.loc 1 3326 0
	cmpl	$1, -16(%rbp)	#, class
	je	.L648	#,
	.loc 1 3326 0 is_stmt 0 discriminator 1
	cmpl	$2, -16(%rbp)	#, class
	je	.L648	#,
	.loc 1 3327 0 is_stmt 1
	cmpl	$6, -16(%rbp)	#, class
	je	.L648	#,
	.loc 1 3328 0
	jmp	.L649	#
.L648:
	.loc 1 3330 0
	movl	-20(%rbp), %eax	# wider_mode, wider_mode.309
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18175
	movzbl	%al, %eax	# D.18175, tmp172
	movl	%eax, -20(%rbp)	# tmp172, wider_mode
.LBE46:
	.loc 1 3331 0
	cmpl	$0, -20(%rbp)	#, wider_mode
	jne	.L650	#,
.L649:
	.loc 1 3333 0
	movl	$__FUNCTION__.13949, %edx	#,
	movl	$3333, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L641:
	.loc 1 3334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	emit_cmp_and_jump_insn_1, .-emit_cmp_and_jump_insn_1
	.globl	emit_cmp_and_jump_insns
	.type	emit_cmp_and_jump_insns, @function
emit_cmp_and_jump_insns:
.LFB23:
	.loc 1 3361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	movl	%edx, -36(%rbp)	# comparison, comparison
	movq	%rcx, -48(%rbp)	# size, size
	movl	%r8d, -40(%rbp)	# mode, mode
	movl	%r9d, -52(%rbp)	# unsignedp, unsignedp
	.loc 1 3362 0
	movq	-24(%rbp), %rax	# x, tmp70
	movq	%rax, -16(%rbp)	# tmp70, op0
	movq	-32(%rbp), %rax	# y, tmp71
	movq	%rax, -8(%rbp)	# tmp71, op1
	.loc 1 3365 0
	movq	-32(%rbp), %rdx	# y, tmp72
	movq	-24(%rbp), %rax	# x, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.18183
	je	.L652	#,
	.loc 1 3369 0
	cmpq	$0, 16(%rbp)	#, label
	jne	.L653	#,
	.loc 1 3370 0
	movl	$__FUNCTION__.13961, %edx	#,
	movl	$3370, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L653:
	.loc 1 3372 0
	movq	-32(%rbp), %rax	# y, tmp74
	movq	%rax, -16(%rbp)	# tmp74, op0
	movq	-24(%rbp), %rax	# x, tmp75
	movq	%rax, -8(%rbp)	# tmp75, op1
	.loc 1 3373 0
	movl	-36(%rbp), %eax	# comparison, comparison.310
	movl	%eax, %edi	# comparison.310,
	call	swap_condition	#
	movl	%eax, -36(%rbp)	# comparison.311, comparison
.L652:
	.loc 1 3384 0
	call	emit_queue	#
	.loc 1 3385 0
	movl	-52(%rbp), %eax	# unsignedp, unsignedp.312
	testl	%eax, %eax	# unsignedp.312
	je	.L654	#,
	.loc 1 3386 0
	movl	-36(%rbp), %eax	# comparison, comparison.313
	movl	%eax, %edi	# comparison.313,
	call	unsigned_condition	#
	movl	%eax, -36(%rbp)	# comparison.314, comparison
.L654:
	.loc 1 3388 0
	leaq	-52(%rbp), %r8	#, tmp76
	leaq	-40(%rbp), %rdi	#, tmp77
	movq	-48(%rbp), %rcx	# size, tmp78
	leaq	-36(%rbp), %rdx	#, tmp79
	leaq	-8(%rbp), %rsi	#, tmp80
	leaq	-16(%rbp), %rax	#, tmp81
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp76,
	movq	%rdi, %r8	# tmp77,
	movq	%rax, %rdi	# tmp81,
	call	prepare_cmp_insn	#
	.loc 1 3390 0
	movl	-52(%rbp), %edi	# unsignedp, unsignedp.315
	movl	-36(%rbp), %ecx	# comparison, comparison.316
	movl	-40(%rbp), %edx	# mode, mode.317
	movq	-8(%rbp), %rsi	# op1, op1.318
	movq	-16(%rbp), %rax	# op0, op0.319
	movq	16(%rbp), %r9	# label,
	movl	%edi, %r8d	# unsignedp.315,
	movq	%rax, %rdi	# op0.319,
	call	emit_cmp_and_jump_insn_1	#
	.loc 1 3391 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	emit_cmp_and_jump_insns, .-emit_cmp_and_jump_insns
	.globl	emit_cmp_insn
	.type	emit_cmp_insn, @function
emit_cmp_insn:
.LFB24:
	.loc 1 3402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# y, y
	movl	%edx, -20(%rbp)	# comparison, comparison
	movq	%rcx, -32(%rbp)	# size, size
	movl	%r8d, -24(%rbp)	# mode, mode
	movl	%r9d, -36(%rbp)	# unsignedp, unsignedp
	.loc 1 3403 0
	movl	-36(%rbp), %r8d	# unsignedp, tmp59
	movl	-24(%rbp), %edi	# mode, tmp60
	movq	-32(%rbp), %rcx	# size, tmp61
	movl	-20(%rbp), %edx	# comparison, tmp62
	movq	-16(%rbp), %rsi	# y, tmp63
	movq	-8(%rbp), %rax	# x, tmp64
	movq	$0, (%rsp)	#,
	movl	%r8d, %r9d	# tmp59,
	movl	%edi, %r8d	# tmp60,
	movq	%rax, %rdi	# tmp64,
	call	emit_cmp_and_jump_insns	#
	.loc 1 3404 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	emit_cmp_insn, .-emit_cmp_insn
	.type	prepare_float_lib_cmp, @function
prepare_float_lib_cmp:
.LFB25:
	.loc 1 3415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -56(%rbp)	# px, px
	movq	%rsi, -64(%rbp)	# py, py
	movq	%rdx, -72(%rbp)	# pcomparison, pcomparison
	movq	%rcx, -80(%rbp)	# pmode, pmode
	movq	%r8, -88(%rbp)	# punsignedp, punsignedp
	.loc 1 3416 0
	movq	-72(%rbp), %rax	# pcomparison, tmp82
	movl	(%rax), %eax	# *pcomparison_8(D), tmp83
	movl	%eax, -40(%rbp)	# tmp83, comparison
	.loc 1 3417 0
	movq	-56(%rbp), %rax	# px, tmp84
	movq	(%rax), %rax	# *px_10(D), D.18184
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18184,
	call	protect_from_queue	#
	movq	-56(%rbp), %rdx	# px, tmp85
	movq	%rax, (%rdx)	# D.18184, *px_10(D)
	movq	-56(%rbp), %rax	# px, tmp86
	movq	(%rax), %rax	# *px_10(D), tmp87
	movq	%rax, -24(%rbp)	# tmp87, x
	.loc 1 3418 0
	movq	-64(%rbp), %rax	# py, tmp88
	movq	(%rax), %rax	# *py_14(D), D.18184
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18184,
	call	protect_from_queue	#
	movq	-64(%rbp), %rdx	# py, tmp89
	movq	%rax, (%rdx)	# D.18184, *py_14(D)
	movq	-64(%rbp), %rax	# py, tmp90
	movq	(%rax), %rax	# *py_14(D), tmp91
	movq	%rax, -16(%rbp)	# tmp91, y
	.loc 1 3419 0
	movq	-24(%rbp), %rax	# x, tmp92
	movzbl	2(%rax), %eax	# x_13->mode, D.18185
	movzbl	%al, %eax	# D.18185, tmp93
	movl	%eax, -36(%rbp)	# tmp93, mode
	.loc 1 3420 0
	movq	$0, -32(%rbp)	#, libfunc
	.loc 1 3423 0
	cmpl	$13, -36(%rbp)	#, mode
	jne	.L657	#,
	.loc 1 3424 0
	movl	-40(%rbp), %eax	# comparison, tmp95
	subl	$102, %eax	#, tmp94
	cmpl	$10, %eax	#, tmp94
	ja	.L720	#,
	movl	%eax, %eax	# tmp94, tmp96
	movq	.L660(,%rax,8), %rax	#, tmp97
	jmp	*%rax	# tmp97
	.section	.rodata
	.align 8
	.align 4
.L660:
	.quad	.L659
	.quad	.L661
	.quad	.L662
	.quad	.L663
	.quad	.L664
	.quad	.L665
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L720
	.quad	.L666
	.text
.L661:
	.loc 1 3427 0
	movq	libfunc_table+192(%rip), %rax	# libfunc_table, tmp98
	movq	%rax, -32(%rbp)	# tmp98, libfunc
	.loc 1 3428 0
	jmp	.L667	#
.L659:
	.loc 1 3431 0
	movq	libfunc_table+200(%rip), %rax	# libfunc_table, tmp99
	movq	%rax, -32(%rbp)	# tmp99, libfunc
	.loc 1 3432 0
	jmp	.L667	#
.L663:
	.loc 1 3435 0
	movq	libfunc_table+208(%rip), %rax	# libfunc_table, tmp100
	movq	%rax, -32(%rbp)	# tmp100, libfunc
	.loc 1 3436 0
	jmp	.L667	#
.L662:
	.loc 1 3439 0
	movq	libfunc_table+216(%rip), %rax	# libfunc_table, tmp101
	movq	%rax, -32(%rbp)	# tmp101, libfunc
	.loc 1 3440 0
	jmp	.L667	#
.L665:
	.loc 1 3443 0
	movq	libfunc_table+224(%rip), %rax	# libfunc_table, tmp102
	movq	%rax, -32(%rbp)	# tmp102, libfunc
	.loc 1 3444 0
	jmp	.L667	#
.L664:
	.loc 1 3447 0
	movq	libfunc_table+232(%rip), %rax	# libfunc_table, tmp103
	movq	%rax, -32(%rbp)	# tmp103, libfunc
	.loc 1 3448 0
	jmp	.L667	#
.L666:
	.loc 1 3451 0
	movq	libfunc_table+240(%rip), %rax	# libfunc_table, tmp104
	movq	%rax, -32(%rbp)	# tmp104, libfunc
	.loc 1 3452 0
	jmp	.L667	#
.L720:
	.loc 1 3455 0
	nop
.L667:
	jmp	.L668	#
.L657:
	.loc 1 3457 0
	cmpl	$15, -36(%rbp)	#, mode
	jne	.L669	#,
	.loc 1 3458 0
	movl	-40(%rbp), %eax	# comparison, tmp106
	subl	$102, %eax	#, tmp105
	cmpl	$10, %eax	#, tmp105
	ja	.L721	#,
	movl	%eax, %eax	# tmp105, tmp107
	movq	.L672(,%rax,8), %rax	#, tmp108
	jmp	*%rax	# tmp108
	.section	.rodata
	.align 8
	.align 4
.L672:
	.quad	.L671
	.quad	.L673
	.quad	.L674
	.quad	.L675
	.quad	.L676
	.quad	.L677
	.quad	.L721
	.quad	.L721
	.quad	.L721
	.quad	.L721
	.quad	.L678
	.text
.L673:
	.loc 1 3461 0
	movq	libfunc_table+248(%rip), %rax	# libfunc_table, tmp109
	movq	%rax, -32(%rbp)	# tmp109, libfunc
	.loc 1 3462 0
	jmp	.L679	#
.L671:
	.loc 1 3465 0
	movq	libfunc_table+256(%rip), %rax	# libfunc_table, tmp110
	movq	%rax, -32(%rbp)	# tmp110, libfunc
	.loc 1 3466 0
	jmp	.L679	#
.L675:
	.loc 1 3469 0
	movq	libfunc_table+264(%rip), %rax	# libfunc_table, tmp111
	movq	%rax, -32(%rbp)	# tmp111, libfunc
	.loc 1 3470 0
	jmp	.L679	#
.L674:
	.loc 1 3473 0
	movq	libfunc_table+272(%rip), %rax	# libfunc_table, tmp112
	movq	%rax, -32(%rbp)	# tmp112, libfunc
	.loc 1 3474 0
	jmp	.L679	#
.L677:
	.loc 1 3477 0
	movq	libfunc_table+280(%rip), %rax	# libfunc_table, tmp113
	movq	%rax, -32(%rbp)	# tmp113, libfunc
	.loc 1 3478 0
	jmp	.L679	#
.L676:
	.loc 1 3481 0
	movq	libfunc_table+288(%rip), %rax	# libfunc_table, tmp114
	movq	%rax, -32(%rbp)	# tmp114, libfunc
	.loc 1 3482 0
	jmp	.L679	#
.L678:
	.loc 1 3485 0
	movq	libfunc_table+296(%rip), %rax	# libfunc_table, tmp115
	movq	%rax, -32(%rbp)	# tmp115, libfunc
	.loc 1 3486 0
	jmp	.L679	#
.L721:
	.loc 1 3489 0
	nop
.L679:
	jmp	.L668	#
.L669:
	.loc 1 3491 0
	cmpl	$16, -36(%rbp)	#, mode
	jne	.L680	#,
	.loc 1 3492 0
	movl	-40(%rbp), %eax	# comparison, tmp117
	subl	$102, %eax	#, tmp116
	cmpl	$10, %eax	#, tmp116
	ja	.L722	#,
	movl	%eax, %eax	# tmp116, tmp118
	movq	.L683(,%rax,8), %rax	#, tmp119
	jmp	*%rax	# tmp119
	.section	.rodata
	.align 8
	.align 4
.L683:
	.quad	.L682
	.quad	.L684
	.quad	.L685
	.quad	.L686
	.quad	.L687
	.quad	.L688
	.quad	.L722
	.quad	.L722
	.quad	.L722
	.quad	.L722
	.quad	.L689
	.text
.L684:
	.loc 1 3495 0
	movq	libfunc_table+304(%rip), %rax	# libfunc_table, tmp120
	movq	%rax, -32(%rbp)	# tmp120, libfunc
	.loc 1 3496 0
	jmp	.L690	#
.L682:
	.loc 1 3499 0
	movq	libfunc_table+312(%rip), %rax	# libfunc_table, tmp121
	movq	%rax, -32(%rbp)	# tmp121, libfunc
	.loc 1 3500 0
	jmp	.L690	#
.L686:
	.loc 1 3503 0
	movq	libfunc_table+320(%rip), %rax	# libfunc_table, tmp122
	movq	%rax, -32(%rbp)	# tmp122, libfunc
	.loc 1 3504 0
	jmp	.L690	#
.L685:
	.loc 1 3507 0
	movq	libfunc_table+328(%rip), %rax	# libfunc_table, tmp123
	movq	%rax, -32(%rbp)	# tmp123, libfunc
	.loc 1 3508 0
	jmp	.L690	#
.L688:
	.loc 1 3511 0
	movq	libfunc_table+336(%rip), %rax	# libfunc_table, tmp124
	movq	%rax, -32(%rbp)	# tmp124, libfunc
	.loc 1 3512 0
	jmp	.L690	#
.L687:
	.loc 1 3515 0
	movq	libfunc_table+344(%rip), %rax	# libfunc_table, tmp125
	movq	%rax, -32(%rbp)	# tmp125, libfunc
	.loc 1 3516 0
	jmp	.L690	#
.L689:
	.loc 1 3519 0
	movq	libfunc_table+352(%rip), %rax	# libfunc_table, tmp126
	movq	%rax, -32(%rbp)	# tmp126, libfunc
	.loc 1 3520 0
	jmp	.L690	#
.L722:
	.loc 1 3523 0
	nop
.L690:
	jmp	.L668	#
.L680:
	.loc 1 3525 0
	cmpl	$17, -36(%rbp)	#, mode
	jne	.L691	#,
	.loc 1 3526 0
	movl	-40(%rbp), %eax	# comparison, tmp128
	subl	$102, %eax	#, tmp127
	cmpl	$10, %eax	#, tmp127
	ja	.L723	#,
	movl	%eax, %eax	# tmp127, tmp129
	movq	.L694(,%rax,8), %rax	#, tmp130
	jmp	*%rax	# tmp130
	.section	.rodata
	.align 8
	.align 4
.L694:
	.quad	.L693
	.quad	.L695
	.quad	.L696
	.quad	.L697
	.quad	.L698
	.quad	.L699
	.quad	.L723
	.quad	.L723
	.quad	.L723
	.quad	.L723
	.quad	.L700
	.text
.L695:
	.loc 1 3529 0
	movq	libfunc_table+360(%rip), %rax	# libfunc_table, tmp131
	movq	%rax, -32(%rbp)	# tmp131, libfunc
	.loc 1 3530 0
	jmp	.L701	#
.L693:
	.loc 1 3533 0
	movq	libfunc_table+368(%rip), %rax	# libfunc_table, tmp132
	movq	%rax, -32(%rbp)	# tmp132, libfunc
	.loc 1 3534 0
	jmp	.L701	#
.L697:
	.loc 1 3537 0
	movq	libfunc_table+376(%rip), %rax	# libfunc_table, tmp133
	movq	%rax, -32(%rbp)	# tmp133, libfunc
	.loc 1 3538 0
	jmp	.L701	#
.L696:
	.loc 1 3541 0
	movq	libfunc_table+384(%rip), %rax	# libfunc_table, tmp134
	movq	%rax, -32(%rbp)	# tmp134, libfunc
	.loc 1 3542 0
	jmp	.L701	#
.L699:
	.loc 1 3545 0
	movq	libfunc_table+392(%rip), %rax	# libfunc_table, tmp135
	movq	%rax, -32(%rbp)	# tmp135, libfunc
	.loc 1 3546 0
	jmp	.L701	#
.L698:
	.loc 1 3549 0
	movq	libfunc_table+400(%rip), %rax	# libfunc_table, tmp136
	movq	%rax, -32(%rbp)	# tmp136, libfunc
	.loc 1 3550 0
	jmp	.L701	#
.L700:
	.loc 1 3553 0
	movq	libfunc_table+408(%rip), %rax	# libfunc_table, tmp137
	movq	%rax, -32(%rbp)	# tmp137, libfunc
	.loc 1 3554 0
	jmp	.L701	#
.L723:
	.loc 1 3557 0
	nop
.L701:
	jmp	.L668	#
.L691:
	.loc 1 3559 0
	cmpl	$18, -36(%rbp)	#, mode
	jne	.L702	#,
	.loc 1 3560 0
	movl	-40(%rbp), %eax	# comparison, tmp139
	subl	$102, %eax	#, tmp138
	cmpl	$10, %eax	#, tmp138
	ja	.L724	#,
	movl	%eax, %eax	# tmp138, tmp140
	movq	.L705(,%rax,8), %rax	#, tmp141
	jmp	*%rax	# tmp141
	.section	.rodata
	.align 8
	.align 4
.L705:
	.quad	.L704
	.quad	.L706
	.quad	.L707
	.quad	.L708
	.quad	.L709
	.quad	.L710
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L711
	.text
.L706:
	.loc 1 3563 0
	movq	libfunc_table+416(%rip), %rax	# libfunc_table, tmp142
	movq	%rax, -32(%rbp)	# tmp142, libfunc
	.loc 1 3564 0
	jmp	.L712	#
.L704:
	.loc 1 3567 0
	movq	libfunc_table+424(%rip), %rax	# libfunc_table, tmp143
	movq	%rax, -32(%rbp)	# tmp143, libfunc
	.loc 1 3568 0
	jmp	.L712	#
.L708:
	.loc 1 3571 0
	movq	libfunc_table+432(%rip), %rax	# libfunc_table, tmp144
	movq	%rax, -32(%rbp)	# tmp144, libfunc
	.loc 1 3572 0
	jmp	.L712	#
.L707:
	.loc 1 3575 0
	movq	libfunc_table+440(%rip), %rax	# libfunc_table, tmp145
	movq	%rax, -32(%rbp)	# tmp145, libfunc
	.loc 1 3576 0
	jmp	.L712	#
.L710:
	.loc 1 3579 0
	movq	libfunc_table+448(%rip), %rax	# libfunc_table, tmp146
	movq	%rax, -32(%rbp)	# tmp146, libfunc
	.loc 1 3580 0
	jmp	.L712	#
.L709:
	.loc 1 3583 0
	movq	libfunc_table+456(%rip), %rax	# libfunc_table, tmp147
	movq	%rax, -32(%rbp)	# tmp147, libfunc
	.loc 1 3584 0
	jmp	.L712	#
.L711:
	.loc 1 3587 0
	movq	libfunc_table+464(%rip), %rax	# libfunc_table, tmp148
	movq	%rax, -32(%rbp)	# tmp148, libfunc
	.loc 1 3588 0
	jmp	.L712	#
.L724:
	.loc 1 3591 0
	nop
.L712:
	jmp	.L668	#
.L702:
.LBB47:
	.loc 1 3597 0
	movl	-36(%rbp), %eax	# mode, mode.320
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18185
	movzbl	%al, %eax	# D.18185, tmp150
	movl	%eax, -44(%rbp)	# tmp150, wider_mode
	jmp	.L713	#
.L717:
	.loc 1 3600 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18186
	movl	-44(%rbp), %edx	# wider_mode, wider_mode.321
	movslq	%edx, %rdx	# wider_mode.321, tmp151
	salq	$4, %rdx	#, tmp152
	addq	%rdx, %rax	# tmp152, tmp153
	movl	8(%rax), %eax	# _59->handlers[wider_mode.321_60].insn_code, D.18187
	cmpl	$1317, %eax	#, D.18187
	jne	.L714	#,
	.loc 1 3602 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18186
	movl	-44(%rbp), %edx	# wider_mode, wider_mode.322
	movslq	%edx, %rdx	# wider_mode.322, tmp154
	salq	$4, %rdx	#, tmp155
	addq	%rdx, %rax	# tmp155, tmp156
	addq	$16, %rax	#, tmp157
	movq	(%rax), %rax	# _62->handlers[wider_mode.322_63].libfunc, D.18184
	testq	%rax, %rax	# D.18184
	je	.L715	#,
.L714:
	.loc 1 3604 0
	movq	-24(%rbp), %rax	# x, tmp158
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	protect_from_queue	#
	movq	%rax, -24(%rbp)	# tmp159, x
	.loc 1 3605 0
	movq	-16(%rbp), %rax	# y, tmp160
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	protect_from_queue	#
	movq	%rax, -16(%rbp)	# tmp161, y
	.loc 1 3606 0
	movq	-24(%rbp), %rcx	# x, tmp162
	movl	-44(%rbp), %eax	# wider_mode, tmp163
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp162,
	movl	%eax, %edi	# tmp163,
	call	convert_to_mode	#
	movq	-56(%rbp), %rdx	# px, tmp164
	movq	%rax, (%rdx)	# D.18184, *px_10(D)
	.loc 1 3607 0
	movq	-16(%rbp), %rcx	# y, tmp165
	movl	-44(%rbp), %eax	# wider_mode, tmp166
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp165,
	movl	%eax, %edi	# tmp166,
	call	convert_to_mode	#
	movq	-64(%rbp), %rdx	# py, tmp167
	movq	%rax, (%rdx)	# D.18184, *py_14(D)
	.loc 1 3608 0
	movq	-88(%rbp), %rdi	# punsignedp, tmp168
	movq	-80(%rbp), %rcx	# pmode, tmp169
	movq	-72(%rbp), %rdx	# pcomparison, tmp170
	movq	-64(%rbp), %rsi	# py, tmp171
	movq	-56(%rbp), %rax	# px, tmp172
	movq	%rdi, %r8	# tmp168,
	movq	%rax, %rdi	# tmp172,
	call	prepare_float_lib_cmp	#
	.loc 1 3609 0
	jmp	.L656	#
.L715:
	.loc 1 3598 0
	movl	-44(%rbp), %eax	# wider_mode, wider_mode.323
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18185
	movzbl	%al, %eax	# D.18185, tmp174
	movl	%eax, -44(%rbp)	# tmp174, wider_mode
.L713:
	.loc 1 3597 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, wider_mode
	jne	.L717	#,
	.loc 1 3612 0
	movl	$__FUNCTION__.14032, %edx	#,
	movl	$3612, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L668:
.LBE47:
	.loc 1 3615 0
	cmpq	$0, -32(%rbp)	#, libfunc
	jne	.L718	#,
	.loc 1 3616 0
	movl	$__FUNCTION__.14032, %edx	#,
	movl	$3616, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L718:
	.loc 1 3618 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.324
	movl	-36(%rbp), %edi	# mode, tmp175
	movq	-24(%rbp), %rsi	# x, tmp176
	movq	-32(%rbp), %rax	# libfunc, tmp177
	movl	-36(%rbp), %ecx	# mode, tmp178
	movl	%ecx, 8(%rsp)	# tmp178,
	movq	-16(%rbp), %rcx	# y, tmp179
	movq	%rcx, (%rsp)	# tmp179,
	movl	%edi, %r9d	# tmp175,
	movq	%rsi, %r8	# tmp176,
	movl	$2, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp177,
	movl	$0, %eax	#,
	call	emit_library_call	#
	.loc 1 3624 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.325
	movl	%eax, %edi	# word_mode.325,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp180, result
	.loc 1 3625 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.326
	movl	%eax, %edi	# word_mode.326,
	call	hard_libcall_value	#
	movq	%rax, %rdx	#, D.18184
	movq	-8(%rbp), %rax	# result, tmp181
	movq	%rdx, %rsi	# D.18184,
	movq	%rax, %rdi	# tmp181,
	call	emit_move_insn	#
	.loc 1 3626 0
	movq	-56(%rbp), %rax	# px, tmp182
	movq	-8(%rbp), %rdx	# result, tmp183
	movq	%rdx, (%rax)	# tmp183, *px_10(D)
	.loc 1 3627 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.18184
	movq	-64(%rbp), %rax	# py, tmp184
	movq	%rdx, (%rax)	# D.18184, *py_14(D)
	.loc 1 3628 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.327
	movq	-80(%rbp), %rax	# pmode, tmp185
	movl	%edx, (%rax)	# word_mode.327, *pmode_72(D)
	.loc 1 3629 0
	cmpl	$112, -40(%rbp)	#, comparison
	jne	.L719	#,
	.loc 1 3630 0
	movq	-72(%rbp), %rax	# pcomparison, tmp186
	movl	$102, (%rax)	#, *pcomparison_8(D)
.L719:
	.loc 1 3635 0
	movq	-88(%rbp), %rax	# punsignedp, tmp187
	movl	$0, (%rax)	#, *punsignedp_73(D)
.L656:
	.loc 1 3636 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	prepare_float_lib_cmp, .-prepare_float_lib_cmp
	.globl	emit_indirect_jump
	.type	emit_indirect_jump, @function
emit_indirect_jump:
.LFB26:
	.loc 1 3643 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# loc, loc
	.loc 1 3644 0
	movq	insn_data+46384(%rip), %rax	# insn_data[1159].operand, D.18188
	.loc 1 3645 0
	movq	(%rax), %rdx	# _4->predicate, D.18189
	movl	target_flags(%rip), %eax	# target_flags, target_flags.329
	andl	$33554432, %eax	#, D.18190
	testl	%eax, %eax	# D.18190
	je	.L726	#,
	.loc 1 3645 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.328
	jmp	.L727	#
.L726:
	.loc 1 3645 0 discriminator 2
	movl	$4, %eax	#, iftmp.328
.L727:
	.loc 1 3645 0 discriminator 3
	movq	-8(%rbp), %rcx	# loc, tmp69
	movl	%eax, %esi	# iftmp.328,
	movq	%rcx, %rdi	# tmp69,
	call	*%rdx	# D.18189
	.loc 1 3644 0 is_stmt 1 discriminator 3
	testl	%eax, %eax	# D.18190
	jne	.L728	#,
	.loc 1 3646 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.331
	andl	$33554432, %eax	#, D.18190
	testl	%eax, %eax	# D.18190
	je	.L729	#,
	.loc 1 3646 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.330
	jmp	.L730	#
.L729:
	.loc 1 3646 0 discriminator 2
	movl	$4, %eax	#, iftmp.330
.L730:
	.loc 1 3646 0 discriminator 3
	movq	-8(%rbp), %rdx	# loc, tmp70
	movq	%rdx, %rsi	# tmp70,
	movl	%eax, %edi	# iftmp.330,
	call	copy_to_mode_reg	#
	movq	%rax, -8(%rbp)	# tmp71, loc
.L728:
	.loc 1 3648 0 is_stmt 1
	movq	-8(%rbp), %rax	# loc, tmp72
	movq	%rax, %rdi	# tmp72,
	call	gen_indirect_jump	#
	movq	%rax, %rdi	# D.18191,
	call	emit_jump_insn	#
	.loc 1 3649 0
	call	emit_barrier	#
	.loc 1 3650 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	emit_indirect_jump, .-emit_indirect_jump
	.globl	emit_conditional_move
	.type	emit_conditional_move, @function
emit_conditional_move:
.LFB27:
	.loc 1 3678 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# target, target
	movl	%esi, -60(%rbp)	# code, code
	movq	%rdx, -72(%rbp)	# op0, op0
	movq	%rcx, -80(%rbp)	# op1, op1
	movl	%r8d, -64(%rbp)	# cmode, cmode
	movq	%r9, -88(%rbp)	# op2, op2
	.loc 1 3686 0
	movq	-80(%rbp), %rdx	# op1, tmp107
	movq	-72(%rbp), %rax	# op0, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.18193
	je	.L732	#,
	.loc 1 3688 0
	movq	-72(%rbp), %rax	# op0, tmp109
	movq	%rax, -24(%rbp)	# tmp109, tem
	.loc 1 3689 0
	movq	-80(%rbp), %rax	# op1, tmp110
	movq	%rax, -72(%rbp)	# tmp110, op0
	.loc 1 3690 0
	movq	-24(%rbp), %rax	# tem, tmp111
	movq	%rax, -80(%rbp)	# tmp111, op1
	.loc 1 3691 0
	movl	-60(%rbp), %eax	# code, tmp112
	movl	%eax, %edi	# tmp112,
	call	swap_condition	#
	movl	%eax, -60(%rbp)	# tmp113, code
.L732:
	.loc 1 3697 0
	cmpl	$107, -60(%rbp)	#, code
	jne	.L733	#,
	.loc 1 3697 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op1, tmp114
	movzwl	(%rax), %eax	# op1_6->code, D.18194
	cmpw	$54, %ax	#, D.18194
	jne	.L733	#,
	movq	-80(%rbp), %rax	# op1, tmp115
	movq	8(%rax), %rax	# op1_6->fld[0].rtwint, D.18195
	cmpq	$1, %rax	#, D.18195
	jne	.L733	#,
	.loc 1 3698 0 is_stmt 1
	movl	$106, -60(%rbp)	#, code
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp116
	movq	%rax, -80(%rbp)	# tmp116, op1
	jmp	.L734	#
.L733:
	.loc 1 3699 0
	cmpl	$105, -60(%rbp)	#, code
	jne	.L734	#,
	.loc 1 3699 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op1, tmp117
	movzwl	(%rax), %eax	# op1_6->code, D.18194
	cmpw	$54, %ax	#, D.18194
	jne	.L734	#,
	movq	-80(%rbp), %rax	# op1, tmp118
	movq	8(%rax), %rax	# op1_6->fld[0].rtwint, D.18195
	cmpq	$-1, %rax	#, D.18195
	jne	.L734	#,
	.loc 1 3700 0 is_stmt 1
	movl	$104, -60(%rbp)	#, code
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp119
	movq	%rax, -80(%rbp)	# tmp119, op1
.L734:
	.loc 1 3702 0
	cmpl	$0, -64(%rbp)	#, cmode
	jne	.L735	#,
	.loc 1 3703 0
	movq	-72(%rbp), %rax	# op0, tmp120
	movzbl	2(%rax), %eax	# op0_5->mode, D.18196
	movzbl	%al, %eax	# D.18196, tmp121
	movl	%eax, -64(%rbp)	# tmp121, cmode
.L735:
	.loc 1 3705 0
	movq	-88(%rbp), %rax	# op2, tmp122
	movq	16(%rbp), %rsi	# op3,
	movq	%rax, %rdi	# tmp122,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.18193
	je	.L736	#,
	.loc 1 3706 0
	movq	-80(%rbp), %rdx	# op1, tmp123
	movq	-72(%rbp), %rsi	# op0, tmp124
	movl	-60(%rbp), %eax	# code, tmp125
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp125,
	call	reversed_comparison_code_parts	#
	movl	%eax, -40(%rbp)	# tmp126, reversed
	cmpl	$0, -40(%rbp)	#, reversed
	je	.L736	#,
	.loc 1 3709 0
	movq	-88(%rbp), %rax	# op2, tmp127
	movq	%rax, -24(%rbp)	# tmp127, tem
	.loc 1 3710 0
	movq	16(%rbp), %rax	# op3, tmp128
	movq	%rax, -88(%rbp)	# tmp128, op2
	.loc 1 3711 0
	movq	-24(%rbp), %rax	# tem, tmp129
	movq	%rax, 16(%rbp)	# tmp129, op3
	.loc 1 3712 0
	movl	-40(%rbp), %eax	# reversed, tmp130
	movl	%eax, -60(%rbp)	# tmp130, code
.L736:
	.loc 1 3715 0
	cmpl	$0, 24(%rbp)	#, mode
	jne	.L737	#,
	.loc 1 3716 0
	movq	-88(%rbp), %rax	# op2, tmp131
	movzbl	2(%rax), %eax	# op2_9->mode, D.18196
	movzbl	%al, %eax	# D.18196, tmp132
	movl	%eax, 24(%rbp)	# tmp132, mode
.L737:
	.loc 1 3718 0
	movl	24(%rbp), %eax	# mode, tmp133
	movl	movcc_gen_code(,%rax,4), %eax	# movcc_gen_code, tmp134
	movl	%eax, -36(%rbp)	# tmp134, icode
	.loc 1 3720 0
	cmpl	$1317, -36(%rbp)	#, icode
	jne	.L738	#,
	.loc 1 3721 0
	movl	$0, %eax	#, D.18192
	jmp	.L739	#
.L738:
	.loc 1 3723 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.332
	testl	%eax, %eax	# flag_force_mem.332
	je	.L740	#,
	.loc 1 3725 0
	movq	-88(%rbp), %rax	# op2, tmp135
	movq	%rax, %rdi	# tmp135,
	call	force_not_mem	#
	movq	%rax, -88(%rbp)	# tmp136, op2
	.loc 1 3726 0
	movq	16(%rbp), %rdi	# op3,
	call	force_not_mem	#
	movq	%rax, 16(%rbp)	# tmp137, op3
.L740:
	.loc 1 3729 0
	cmpq	$0, -56(%rbp)	#, target
	je	.L741	#,
	.loc 1 3730 0
	movq	-56(%rbp), %rax	# target, tmp138
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	protect_from_queue	#
	movq	%rax, -56(%rbp)	# tmp139, target
	jmp	.L742	#
.L741:
	.loc 1 3732 0
	movl	24(%rbp), %eax	# mode, tmp140
	movl	%eax, %edi	# tmp140,
	call	gen_reg_rtx	#
	movq	%rax, -56(%rbp)	# tmp141, target
.L742:
	.loc 1 3734 0
	movq	-56(%rbp), %rax	# target, tmp142
	movq	%rax, -32(%rbp)	# tmp142, subtarget
	.loc 1 3736 0
	call	emit_queue	#
	.loc 1 3738 0
	movq	-88(%rbp), %rax	# op2, tmp143
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	protect_from_queue	#
	movq	%rax, -88(%rbp)	# tmp144, op2
	.loc 1 3739 0
	movl	$0, %esi	#,
	movq	16(%rbp), %rdi	# op3,
	call	protect_from_queue	#
	movq	%rax, 16(%rbp)	# tmp145, op3
	.loc 1 3743 0
	movl	-36(%rbp), %edx	# icode, tmp146
	movq	%rdx, %rax	# tmp146, tmp147
	salq	$2, %rax	#, tmp147
	addq	%rdx, %rax	# tmp146, tmp147
	salq	$3, %rax	#, tmp148
	addq	$insn_data+24, %rax	#, tmp149
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	.loc 1 3744 0
	movq	(%rax), %rcx	# _59->predicate, D.18198
	movl	-36(%rbp), %edx	# icode, tmp150
	movq	%rdx, %rax	# tmp150, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# tmp150, tmp151
	salq	$3, %rax	#, tmp152
	addq	$insn_data+24, %rax	#, tmp153
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	movzwl	16(%rax), %eax	# _61->mode, D.18194
	movzwl	%ax, %edx	# D.18194, D.18199
	movq	-32(%rbp), %rax	# subtarget, tmp154
	movl	%edx, %esi	# D.18199,
	movq	%rax, %rdi	# tmp154,
	call	*%rcx	# D.18198
	.loc 1 3743 0
	testl	%eax, %eax	# D.18193
	jne	.L743	#,
	.loc 1 3745 0
	movl	-36(%rbp), %edx	# icode, tmp155
	movq	%rdx, %rax	# tmp155, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# tmp155, tmp156
	salq	$3, %rax	#, tmp157
	addq	$insn_data+24, %rax	#, tmp158
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	movzwl	16(%rax), %eax	# _65->mode, D.18194
	movzwl	%ax, %eax	# D.18194, D.18199
	movl	%eax, %edi	# D.18199,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp159, subtarget
.L743:
	.loc 1 3747 0
	movl	-36(%rbp), %edx	# icode, tmp160
	movq	%rdx, %rax	# tmp160, tmp161
	salq	$2, %rax	#, tmp161
	addq	%rdx, %rax	# tmp160, tmp161
	salq	$3, %rax	#, tmp162
	addq	$insn_data+24, %rax	#, tmp163
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$48, %rax	#, D.18197
	.loc 1 3748 0
	movq	(%rax), %rcx	# _70->predicate, D.18198
	movl	-36(%rbp), %edx	# icode, tmp164
	movq	%rdx, %rax	# tmp164, tmp165
	salq	$2, %rax	#, tmp165
	addq	%rdx, %rax	# tmp164, tmp165
	salq	$3, %rax	#, tmp166
	addq	$insn_data+24, %rax	#, tmp167
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$48, %rax	#, D.18197
	movzwl	16(%rax), %eax	# _73->mode, D.18194
	movzwl	%ax, %edx	# D.18194, D.18199
	movq	-88(%rbp), %rax	# op2, tmp168
	movl	%edx, %esi	# D.18199,
	movq	%rax, %rdi	# tmp168,
	call	*%rcx	# D.18198
	.loc 1 3747 0
	testl	%eax, %eax	# D.18193
	jne	.L744	#,
	.loc 1 3749 0
	movl	-36(%rbp), %edx	# icode, tmp169
	movq	%rdx, %rax	# tmp169, tmp170
	salq	$2, %rax	#, tmp170
	addq	%rdx, %rax	# tmp169, tmp170
	salq	$3, %rax	#, tmp171
	addq	$insn_data+24, %rax	#, tmp172
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$48, %rax	#, D.18197
	movzwl	16(%rax), %eax	# _78->mode, D.18194
	movzwl	%ax, %eax	# D.18194, D.18199
	movq	-88(%rbp), %rdx	# op2, tmp173
	movq	%rdx, %rsi	# tmp173,
	movl	%eax, %edi	# D.18199,
	call	copy_to_mode_reg	#
	movq	%rax, -88(%rbp)	# tmp174, op2
.L744:
	.loc 1 3751 0
	movl	-36(%rbp), %edx	# icode, tmp175
	movq	%rdx, %rax	# tmp175, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# tmp175, tmp176
	salq	$3, %rax	#, tmp177
	addq	$insn_data+24, %rax	#, tmp178
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$72, %rax	#, D.18197
	.loc 1 3752 0
	movq	(%rax), %rcx	# _83->predicate, D.18198
	movl	-36(%rbp), %edx	# icode, tmp179
	movq	%rdx, %rax	# tmp179, tmp180
	salq	$2, %rax	#, tmp180
	addq	%rdx, %rax	# tmp179, tmp180
	salq	$3, %rax	#, tmp181
	addq	$insn_data+24, %rax	#, tmp182
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$72, %rax	#, D.18197
	movzwl	16(%rax), %eax	# _86->mode, D.18194
	movzwl	%ax, %eax	# D.18194, D.18199
	movl	%eax, %esi	# D.18199,
	movq	16(%rbp), %rdi	# op3,
	call	*%rcx	# D.18198
	.loc 1 3751 0
	testl	%eax, %eax	# D.18193
	jne	.L745	#,
	.loc 1 3753 0
	movl	-36(%rbp), %edx	# icode, tmp183
	movq	%rdx, %rax	# tmp183, tmp184
	salq	$2, %rax	#, tmp184
	addq	%rdx, %rax	# tmp183, tmp184
	salq	$3, %rax	#, tmp185
	addq	$insn_data+24, %rax	#, tmp186
	movq	(%rax), %rax	# insn_data[icode_48].operand, D.18197
	addq	$72, %rax	#, D.18197
	movzwl	16(%rax), %eax	# _91->mode, D.18194
	movzwl	%ax, %eax	# D.18194, D.18199
	movq	16(%rbp), %rsi	# op3,
	movl	%eax, %edi	# D.18199,
	call	copy_to_mode_reg	#
	movq	%rax, 16(%rbp)	# tmp187, op3
.L745:
	.loc 1 3759 0
	movl	-64(%rbp), %edi	# cmode, tmp188
	movl	32(%rbp), %ecx	# unsignedp, tmp189
	movl	-60(%rbp), %edx	# code, tmp190
	movq	-80(%rbp), %rsi	# op1, tmp191
	movq	-72(%rbp), %rax	# op0, tmp192
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp188,
	movq	%rax, %rdi	# tmp192,
	call	compare_from_rtx	#
	movq	%rax, -16(%rbp)	# tmp193, comparison
	.loc 1 3765 0
	movq	-16(%rbp), %rax	# comparison, tmp194
	movzwl	(%rax), %eax	# comparison_96->code, D.18194
	movzwl	%ax, %eax	# D.18194, D.18200
	cmpl	-60(%rbp), %eax	# code, D.18200
	je	.L746	#,
	.loc 1 3766 0
	movl	$0, %eax	#, D.18192
	jmp	.L739	#
.L746:
	.loc 1 3768 0
	movl	-36(%rbp), %eax	# icode, icode.333
	movslq	%eax, %rdx	# icode.333, tmp195
	movq	%rdx, %rax	# tmp195, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# tmp195, tmp196
	salq	$3, %rax	#, tmp197
	addq	$insn_data+16, %rax	#, tmp198
	movq	(%rax), %r8	# insn_data[icode.333_100].genfun, D.18201
	movq	-88(%rbp), %rdx	# op2, tmp199
	movq	-16(%rbp), %rsi	# comparison, tmp200
	movq	-32(%rbp), %rax	# subtarget, tmp201
	movq	16(%rbp), %rcx	# op3,
	movq	%rax, %rdi	# tmp201,
	movl	$0, %eax	#,
	call	*%r8	# D.18201
	movq	%rax, -8(%rbp)	# tmp202, insn
	.loc 1 3771 0
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L747	#,
	.loc 1 3772 0
	movl	$0, %eax	#, D.18192
	jmp	.L739	#
.L747:
	.loc 1 3774 0
	movq	-8(%rbp), %rax	# insn, tmp203
	movq	%rax, %rdi	# tmp203,
	call	emit_insn	#
	.loc 1 3776 0
	movq	-32(%rbp), %rax	# subtarget, tmp204
	cmpq	-56(%rbp), %rax	# target, tmp204
	je	.L748	#,
	.loc 1 3777 0
	movq	-32(%rbp), %rcx	# subtarget, tmp205
	movq	-56(%rbp), %rax	# target, tmp206
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	convert_move	#
.L748:
	.loc 1 3779 0
	movq	-56(%rbp), %rax	# target, D.18192
.L739:
	.loc 1 3780 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	emit_conditional_move, .-emit_conditional_move
	.globl	can_conditionally_move_p
	.type	can_conditionally_move_p, @function
can_conditionally_move_p:
.LFB28:
	.loc 1 3793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# mode, mode
	.loc 1 3794 0
	movl	-4(%rbp), %eax	# mode, tmp62
	movl	movcc_gen_code(,%rax,4), %eax	# movcc_gen_code, D.18203
	cmpl	$1317, %eax	#, D.18203
	je	.L750	#,
	.loc 1 3795 0
	movl	$1, %eax	#, D.18202
	jmp	.L751	#
.L750:
	.loc 1 3797 0
	movl	$0, %eax	#, D.18202
.L751:
	.loc 1 3798 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	can_conditionally_move_p, .-can_conditionally_move_p
	.globl	gen_add2_insn
	.type	gen_add2_insn, @function
gen_add2_insn:
.LFB29:
	.loc 1 3814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 3815 0
	movq	optab_table(%rip), %rdx	# optab_table, D.18204
	movq	-24(%rbp), %rax	# x, tmp88
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18205
	movzbl	%al, %eax	# D.18205, D.18206
	cltq
	salq	$4, %rax	#, tmp90
	addq	%rdx, %rax	# D.18204, tmp91
	movl	8(%rax), %eax	# _1->handlers[_4].insn_code, D.18207
	movl	%eax, -4(%rbp)	# D.18207, icode
	.loc 1 3817 0
	movl	-4(%rbp), %eax	# icode, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$insn_data+24, %rax	#, tmp96
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	.loc 1 3818 0
	movq	(%rax), %rcx	# _7->predicate, D.18209
	movl	-4(%rbp), %eax	# icode, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	addq	$insn_data+24, %rax	#, tmp101
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	movzwl	16(%rax), %eax	# _9->mode, D.18210
	movzwl	%ax, %edx	# D.18210, D.18211
	movq	-24(%rbp), %rax	# x, tmp102
	movl	%edx, %esi	# D.18211,
	movq	%rax, %rdi	# tmp102,
	call	*%rcx	# D.18209
	.loc 1 3817 0
	testl	%eax, %eax	# D.18206
	je	.L753	#,
	.loc 1 3819 0
	movl	-4(%rbp), %eax	# icode, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$3, %rax	#, tmp106
	addq	$insn_data+24, %rax	#, tmp107
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	addq	$24, %rax	#, D.18208
	.loc 1 3820 0
	movq	(%rax), %rcx	# _14->predicate, D.18209
	movl	-4(%rbp), %eax	# icode, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	addq	$insn_data+24, %rax	#, tmp112
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	addq	$24, %rax	#, D.18208
	movzwl	16(%rax), %eax	# _17->mode, D.18210
	movzwl	%ax, %edx	# D.18210, D.18211
	movq	-24(%rbp), %rax	# x, tmp113
	movl	%edx, %esi	# D.18211,
	movq	%rax, %rdi	# tmp113,
	call	*%rcx	# D.18209
	.loc 1 3819 0
	testl	%eax, %eax	# D.18206
	je	.L753	#,
	.loc 1 3821 0
	movl	-4(%rbp), %eax	# icode, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$insn_data+24, %rax	#, tmp118
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	addq	$48, %rax	#, D.18208
	.loc 1 3822 0
	movq	(%rax), %rcx	# _22->predicate, D.18209
	movl	-4(%rbp), %eax	# icode, tmp120
	movslq	%eax, %rdx	# tmp120, tmp119
	movq	%rdx, %rax	# tmp119, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# tmp119, tmp121
	salq	$3, %rax	#, tmp122
	addq	$insn_data+24, %rax	#, tmp123
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18208
	addq	$48, %rax	#, D.18208
	movzwl	16(%rax), %eax	# _25->mode, D.18210
	movzwl	%ax, %edx	# D.18210, D.18211
	movq	-32(%rbp), %rax	# y, tmp124
	movl	%edx, %esi	# D.18211,
	movq	%rax, %rdi	# tmp124,
	call	*%rcx	# D.18209
	.loc 1 3821 0
	testl	%eax, %eax	# D.18206
	jne	.L754	#,
.L753:
	.loc 1 3823 0
	movl	$__FUNCTION__.14061, %edx	#,
	movl	$3823, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L754:
	.loc 1 3825 0
	movl	-4(%rbp), %eax	# icode, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	salq	$2, %rax	#, tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	addq	$insn_data+16, %rax	#, tmp129
	movq	(%rax), %rcx	# insn_data[icode_6].genfun, D.18212
	movq	-32(%rbp), %rdx	# y, tmp130
	movq	-24(%rbp), %rsi	# x, tmp131
	movq	-24(%rbp), %rax	# x, tmp132
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	*%rcx	# D.18212
	.loc 1 3826 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	gen_add2_insn, .-gen_add2_insn
	.globl	gen_add3_insn
	.type	gen_add3_insn, @function
gen_add3_insn:
.LFB30:
	.loc 1 3833 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# r0, r0
	movq	%rsi, -32(%rbp)	# r1, r1
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 3834 0
	movq	optab_table(%rip), %rdx	# optab_table, D.18215
	movq	-24(%rbp), %rax	# r0, tmp88
	movzbl	2(%rax), %eax	# r0_3(D)->mode, D.18216
	movzbl	%al, %eax	# D.18216, D.18217
	cltq
	salq	$4, %rax	#, tmp90
	addq	%rdx, %rax	# D.18215, tmp91
	movl	8(%rax), %eax	# _2->handlers[_5].insn_code, D.18218
	movl	%eax, -4(%rbp)	# D.18218, icode
	.loc 1 3836 0
	cmpl	$1317, -4(%rbp)	#, icode
	je	.L757	#,
	.loc 1 3837 0
	movl	-4(%rbp), %eax	# icode, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$insn_data+24, %rax	#, tmp96
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	.loc 1 3838 0
	movq	(%rax), %rcx	# _8->predicate, D.18220
	movl	-4(%rbp), %eax	# icode, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	addq	$insn_data+24, %rax	#, tmp101
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	movzwl	16(%rax), %eax	# _10->mode, D.18221
	movzwl	%ax, %edx	# D.18221, D.18222
	movq	-24(%rbp), %rax	# r0, tmp102
	movl	%edx, %esi	# D.18222,
	movq	%rax, %rdi	# tmp102,
	call	*%rcx	# D.18220
	.loc 1 3837 0
	testl	%eax, %eax	# D.18217
	je	.L757	#,
	.loc 1 3839 0
	movl	-4(%rbp), %eax	# icode, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$3, %rax	#, tmp106
	addq	$insn_data+24, %rax	#, tmp107
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	addq	$24, %rax	#, D.18219
	.loc 1 3840 0
	movq	(%rax), %rcx	# _15->predicate, D.18220
	movl	-4(%rbp), %eax	# icode, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	addq	$insn_data+24, %rax	#, tmp112
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	addq	$24, %rax	#, D.18219
	movzwl	16(%rax), %eax	# _18->mode, D.18221
	movzwl	%ax, %edx	# D.18221, D.18222
	movq	-32(%rbp), %rax	# r1, tmp113
	movl	%edx, %esi	# D.18222,
	movq	%rax, %rdi	# tmp113,
	call	*%rcx	# D.18220
	.loc 1 3839 0
	testl	%eax, %eax	# D.18217
	je	.L757	#,
	.loc 1 3841 0
	movl	-4(%rbp), %eax	# icode, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$insn_data+24, %rax	#, tmp118
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	addq	$48, %rax	#, D.18219
	.loc 1 3842 0
	movq	(%rax), %rcx	# _24->predicate, D.18220
	movl	-4(%rbp), %eax	# icode, tmp120
	movslq	%eax, %rdx	# tmp120, tmp119
	movq	%rdx, %rax	# tmp119, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# tmp119, tmp121
	salq	$3, %rax	#, tmp122
	addq	$insn_data+24, %rax	#, tmp123
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18219
	addq	$48, %rax	#, D.18219
	movzwl	16(%rax), %eax	# _27->mode, D.18221
	movzwl	%ax, %edx	# D.18221, D.18222
	movq	-40(%rbp), %rax	# c, tmp124
	movl	%edx, %esi	# D.18222,
	movq	%rax, %rdi	# tmp124,
	call	*%rcx	# D.18220
	.loc 1 3841 0
	testl	%eax, %eax	# D.18217
	jne	.L758	#,
.L757:
	.loc 1 3843 0
	movl	$0, %eax	#, D.18214
	jmp	.L759	#
.L758:
	.loc 1 3845 0
	movl	-4(%rbp), %eax	# icode, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	salq	$2, %rax	#, tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	addq	$insn_data+16, %rax	#, tmp129
	movq	(%rax), %rcx	# insn_data[icode_7].genfun, D.18223
	movq	-40(%rbp), %rdx	# c, tmp130
	movq	-32(%rbp), %rsi	# r1, tmp131
	movq	-24(%rbp), %rax	# r0, tmp132
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	*%rcx	# D.18223
.L759:
	.loc 1 3846 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	gen_add3_insn, .-gen_add3_insn
	.globl	have_add2_insn
	.type	have_add2_insn, @function
have_add2_insn:
.LFB31:
	.loc 1 3851 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 3854 0
	movq	-24(%rbp), %rax	# x, tmp88
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18225
	testb	%al, %al	# D.18225
	jne	.L761	#,
	.loc 1 3855 0
	movl	$__FUNCTION__.14073, %edx	#,
	movl	$3855, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L761:
	.loc 1 3857 0
	movq	optab_table(%rip), %rdx	# optab_table, D.18226
	movq	-24(%rbp), %rax	# x, tmp89
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18225
	movzbl	%al, %eax	# D.18225, D.18224
	cltq
	salq	$4, %rax	#, tmp91
	addq	%rdx, %rax	# D.18226, tmp92
	movl	8(%rax), %eax	# _4->handlers[_6].insn_code, D.18227
	movl	%eax, -4(%rbp)	# D.18227, icode
	.loc 1 3859 0
	cmpl	$1317, -4(%rbp)	#, icode
	jne	.L762	#,
	.loc 1 3860 0
	movl	$0, %eax	#, D.18224
	jmp	.L763	#
.L762:
	.loc 1 3862 0
	movl	-4(%rbp), %eax	# icode, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	salq	$2, %rax	#, tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$insn_data+24, %rax	#, tmp97
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	.loc 1 3863 0
	movq	(%rax), %rcx	# _10->predicate, D.18229
	movl	-4(%rbp), %eax	# icode, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$insn_data+24, %rax	#, tmp102
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	movzwl	16(%rax), %eax	# _12->mode, D.18230
	movzwl	%ax, %edx	# D.18230, D.18231
	movq	-24(%rbp), %rax	# x, tmp103
	movl	%edx, %esi	# D.18231,
	movq	%rax, %rdi	# tmp103,
	call	*%rcx	# D.18229
	.loc 1 3862 0
	testl	%eax, %eax	# D.18224
	je	.L764	#,
	.loc 1 3864 0
	movl	-4(%rbp), %eax	# icode, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$insn_data+24, %rax	#, tmp108
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	addq	$24, %rax	#, D.18228
	.loc 1 3865 0
	movq	(%rax), %rcx	# _17->predicate, D.18229
	movl	-4(%rbp), %eax	# icode, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$insn_data+24, %rax	#, tmp113
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	addq	$24, %rax	#, D.18228
	movzwl	16(%rax), %eax	# _20->mode, D.18230
	movzwl	%ax, %edx	# D.18230, D.18231
	movq	-24(%rbp), %rax	# x, tmp114
	movl	%edx, %esi	# D.18231,
	movq	%rax, %rdi	# tmp114,
	call	*%rcx	# D.18229
	.loc 1 3864 0
	testl	%eax, %eax	# D.18224
	je	.L764	#,
	.loc 1 3866 0
	movl	-4(%rbp), %eax	# icode, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	salq	$3, %rax	#, tmp118
	addq	$insn_data+24, %rax	#, tmp119
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	addq	$48, %rax	#, D.18228
	.loc 1 3867 0
	movq	(%rax), %rcx	# _25->predicate, D.18229
	movl	-4(%rbp), %eax	# icode, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$3, %rax	#, tmp123
	addq	$insn_data+24, %rax	#, tmp124
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18228
	addq	$48, %rax	#, D.18228
	movzwl	16(%rax), %eax	# _28->mode, D.18230
	movzwl	%ax, %edx	# D.18230, D.18231
	movq	-32(%rbp), %rax	# y, tmp125
	movl	%edx, %esi	# D.18231,
	movq	%rax, %rdi	# tmp125,
	call	*%rcx	# D.18229
	.loc 1 3866 0
	testl	%eax, %eax	# D.18224
	jne	.L765	#,
.L764:
	.loc 1 3868 0
	movl	$0, %eax	#, D.18224
	jmp	.L763	#
.L765:
	.loc 1 3870 0
	movl	$1, %eax	#, D.18224
.L763:
	.loc 1 3871 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	have_add2_insn, .-have_add2_insn
	.globl	gen_sub2_insn
	.type	gen_sub2_insn, @function
gen_sub2_insn:
.LFB32:
	.loc 1 3878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 3879 0
	movq	optab_table+16(%rip), %rdx	# optab_table, D.18232
	movq	-24(%rbp), %rax	# x, tmp88
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18233
	movzbl	%al, %eax	# D.18233, D.18234
	cltq
	salq	$4, %rax	#, tmp90
	addq	%rdx, %rax	# D.18232, tmp91
	movl	8(%rax), %eax	# _1->handlers[_4].insn_code, D.18235
	movl	%eax, -4(%rbp)	# D.18235, icode
	.loc 1 3881 0
	movl	-4(%rbp), %eax	# icode, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$insn_data+24, %rax	#, tmp96
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	.loc 1 3882 0
	movq	(%rax), %rcx	# _7->predicate, D.18237
	movl	-4(%rbp), %eax	# icode, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	addq	$insn_data+24, %rax	#, tmp101
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	movzwl	16(%rax), %eax	# _9->mode, D.18238
	movzwl	%ax, %edx	# D.18238, D.18239
	movq	-24(%rbp), %rax	# x, tmp102
	movl	%edx, %esi	# D.18239,
	movq	%rax, %rdi	# tmp102,
	call	*%rcx	# D.18237
	.loc 1 3881 0
	testl	%eax, %eax	# D.18234
	je	.L767	#,
	.loc 1 3883 0
	movl	-4(%rbp), %eax	# icode, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$3, %rax	#, tmp106
	addq	$insn_data+24, %rax	#, tmp107
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	addq	$24, %rax	#, D.18236
	.loc 1 3884 0
	movq	(%rax), %rcx	# _14->predicate, D.18237
	movl	-4(%rbp), %eax	# icode, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	addq	$insn_data+24, %rax	#, tmp112
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	addq	$24, %rax	#, D.18236
	movzwl	16(%rax), %eax	# _17->mode, D.18238
	movzwl	%ax, %edx	# D.18238, D.18239
	movq	-24(%rbp), %rax	# x, tmp113
	movl	%edx, %esi	# D.18239,
	movq	%rax, %rdi	# tmp113,
	call	*%rcx	# D.18237
	.loc 1 3883 0
	testl	%eax, %eax	# D.18234
	je	.L767	#,
	.loc 1 3885 0
	movl	-4(%rbp), %eax	# icode, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$insn_data+24, %rax	#, tmp118
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	addq	$48, %rax	#, D.18236
	.loc 1 3886 0
	movq	(%rax), %rcx	# _22->predicate, D.18237
	movl	-4(%rbp), %eax	# icode, tmp120
	movslq	%eax, %rdx	# tmp120, tmp119
	movq	%rdx, %rax	# tmp119, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# tmp119, tmp121
	salq	$3, %rax	#, tmp122
	addq	$insn_data+24, %rax	#, tmp123
	movq	(%rax), %rax	# insn_data[icode_6].operand, D.18236
	addq	$48, %rax	#, D.18236
	movzwl	16(%rax), %eax	# _25->mode, D.18238
	movzwl	%ax, %edx	# D.18238, D.18239
	movq	-32(%rbp), %rax	# y, tmp124
	movl	%edx, %esi	# D.18239,
	movq	%rax, %rdi	# tmp124,
	call	*%rcx	# D.18237
	.loc 1 3885 0
	testl	%eax, %eax	# D.18234
	jne	.L768	#,
.L767:
	.loc 1 3887 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$3887, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L768:
	.loc 1 3889 0
	movl	-4(%rbp), %eax	# icode, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	salq	$2, %rax	#, tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	addq	$insn_data+16, %rax	#, tmp129
	movq	(%rax), %rcx	# insn_data[icode_6].genfun, D.18240
	movq	-32(%rbp), %rdx	# y, tmp130
	movq	-24(%rbp), %rsi	# x, tmp131
	movq	-24(%rbp), %rax	# x, tmp132
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	*%rcx	# D.18240
	.loc 1 3890 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	gen_sub2_insn, .-gen_sub2_insn
	.globl	gen_sub3_insn
	.type	gen_sub3_insn, @function
gen_sub3_insn:
.LFB33:
	.loc 1 3897 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# r0, r0
	movq	%rsi, -32(%rbp)	# r1, r1
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 3898 0
	movq	optab_table+16(%rip), %rdx	# optab_table, D.18243
	movq	-24(%rbp), %rax	# r0, tmp88
	movzbl	2(%rax), %eax	# r0_3(D)->mode, D.18244
	movzbl	%al, %eax	# D.18244, D.18245
	cltq
	salq	$4, %rax	#, tmp90
	addq	%rdx, %rax	# D.18243, tmp91
	movl	8(%rax), %eax	# _2->handlers[_5].insn_code, D.18246
	movl	%eax, -4(%rbp)	# D.18246, icode
	.loc 1 3900 0
	cmpl	$1317, -4(%rbp)	#, icode
	je	.L771	#,
	.loc 1 3901 0
	movl	-4(%rbp), %eax	# icode, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$insn_data+24, %rax	#, tmp96
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	.loc 1 3902 0
	movq	(%rax), %rcx	# _8->predicate, D.18248
	movl	-4(%rbp), %eax	# icode, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	addq	$insn_data+24, %rax	#, tmp101
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	movzwl	16(%rax), %eax	# _10->mode, D.18249
	movzwl	%ax, %edx	# D.18249, D.18250
	movq	-24(%rbp), %rax	# r0, tmp102
	movl	%edx, %esi	# D.18250,
	movq	%rax, %rdi	# tmp102,
	call	*%rcx	# D.18248
	.loc 1 3901 0
	testl	%eax, %eax	# D.18245
	je	.L771	#,
	.loc 1 3903 0
	movl	-4(%rbp), %eax	# icode, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$3, %rax	#, tmp106
	addq	$insn_data+24, %rax	#, tmp107
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	addq	$24, %rax	#, D.18247
	.loc 1 3904 0
	movq	(%rax), %rcx	# _15->predicate, D.18248
	movl	-4(%rbp), %eax	# icode, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	addq	$insn_data+24, %rax	#, tmp112
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	addq	$24, %rax	#, D.18247
	movzwl	16(%rax), %eax	# _18->mode, D.18249
	movzwl	%ax, %edx	# D.18249, D.18250
	movq	-32(%rbp), %rax	# r1, tmp113
	movl	%edx, %esi	# D.18250,
	movq	%rax, %rdi	# tmp113,
	call	*%rcx	# D.18248
	.loc 1 3903 0
	testl	%eax, %eax	# D.18245
	je	.L771	#,
	.loc 1 3905 0
	movl	-4(%rbp), %eax	# icode, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$insn_data+24, %rax	#, tmp118
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	addq	$48, %rax	#, D.18247
	.loc 1 3906 0
	movq	(%rax), %rcx	# _24->predicate, D.18248
	movl	-4(%rbp), %eax	# icode, tmp120
	movslq	%eax, %rdx	# tmp120, tmp119
	movq	%rdx, %rax	# tmp119, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# tmp119, tmp121
	salq	$3, %rax	#, tmp122
	addq	$insn_data+24, %rax	#, tmp123
	movq	(%rax), %rax	# insn_data[icode_7].operand, D.18247
	addq	$48, %rax	#, D.18247
	movzwl	16(%rax), %eax	# _27->mode, D.18249
	movzwl	%ax, %edx	# D.18249, D.18250
	movq	-40(%rbp), %rax	# c, tmp124
	movl	%edx, %esi	# D.18250,
	movq	%rax, %rdi	# tmp124,
	call	*%rcx	# D.18248
	.loc 1 3905 0
	testl	%eax, %eax	# D.18245
	jne	.L772	#,
.L771:
	.loc 1 3907 0
	movl	$0, %eax	#, D.18242
	jmp	.L773	#
.L772:
	.loc 1 3909 0
	movl	-4(%rbp), %eax	# icode, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	salq	$2, %rax	#, tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	addq	$insn_data+16, %rax	#, tmp129
	movq	(%rax), %rcx	# insn_data[icode_7].genfun, D.18251
	movq	-40(%rbp), %rdx	# c, tmp130
	movq	-32(%rbp), %rsi	# r1, tmp131
	movq	-24(%rbp), %rax	# r0, tmp132
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	*%rcx	# D.18251
.L773:
	.loc 1 3910 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	gen_sub3_insn, .-gen_sub3_insn
	.globl	have_sub2_insn
	.type	have_sub2_insn, @function
have_sub2_insn:
.LFB34:
	.loc 1 3915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 3918 0
	movq	-24(%rbp), %rax	# x, tmp88
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18253
	testb	%al, %al	# D.18253
	jne	.L775	#,
	.loc 1 3919 0
	movl	$__FUNCTION__.14091, %edx	#,
	movl	$3919, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L775:
	.loc 1 3921 0
	movq	optab_table+16(%rip), %rdx	# optab_table, D.18254
	movq	-24(%rbp), %rax	# x, tmp89
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18253
	movzbl	%al, %eax	# D.18253, D.18252
	cltq
	salq	$4, %rax	#, tmp91
	addq	%rdx, %rax	# D.18254, tmp92
	movl	8(%rax), %eax	# _4->handlers[_6].insn_code, D.18255
	movl	%eax, -4(%rbp)	# D.18255, icode
	.loc 1 3923 0
	cmpl	$1317, -4(%rbp)	#, icode
	jne	.L776	#,
	.loc 1 3924 0
	movl	$0, %eax	#, D.18252
	jmp	.L777	#
.L776:
	.loc 1 3926 0
	movl	-4(%rbp), %eax	# icode, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	salq	$2, %rax	#, tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$insn_data+24, %rax	#, tmp97
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	.loc 1 3927 0
	movq	(%rax), %rcx	# _10->predicate, D.18257
	movl	-4(%rbp), %eax	# icode, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$insn_data+24, %rax	#, tmp102
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	movzwl	16(%rax), %eax	# _12->mode, D.18258
	movzwl	%ax, %edx	# D.18258, D.18259
	movq	-24(%rbp), %rax	# x, tmp103
	movl	%edx, %esi	# D.18259,
	movq	%rax, %rdi	# tmp103,
	call	*%rcx	# D.18257
	.loc 1 3926 0
	testl	%eax, %eax	# D.18252
	je	.L778	#,
	.loc 1 3928 0
	movl	-4(%rbp), %eax	# icode, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$insn_data+24, %rax	#, tmp108
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	addq	$24, %rax	#, D.18256
	.loc 1 3929 0
	movq	(%rax), %rcx	# _17->predicate, D.18257
	movl	-4(%rbp), %eax	# icode, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$insn_data+24, %rax	#, tmp113
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	addq	$24, %rax	#, D.18256
	movzwl	16(%rax), %eax	# _20->mode, D.18258
	movzwl	%ax, %edx	# D.18258, D.18259
	movq	-24(%rbp), %rax	# x, tmp114
	movl	%edx, %esi	# D.18259,
	movq	%rax, %rdi	# tmp114,
	call	*%rcx	# D.18257
	.loc 1 3928 0
	testl	%eax, %eax	# D.18252
	je	.L778	#,
	.loc 1 3930 0
	movl	-4(%rbp), %eax	# icode, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	salq	$3, %rax	#, tmp118
	addq	$insn_data+24, %rax	#, tmp119
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	addq	$48, %rax	#, D.18256
	.loc 1 3931 0
	movq	(%rax), %rcx	# _25->predicate, D.18257
	movl	-4(%rbp), %eax	# icode, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$3, %rax	#, tmp123
	addq	$insn_data+24, %rax	#, tmp124
	movq	(%rax), %rax	# insn_data[icode_8].operand, D.18256
	addq	$48, %rax	#, D.18256
	movzwl	16(%rax), %eax	# _28->mode, D.18258
	movzwl	%ax, %edx	# D.18258, D.18259
	movq	-32(%rbp), %rax	# y, tmp125
	movl	%edx, %esi	# D.18259,
	movq	%rax, %rdi	# tmp125,
	call	*%rcx	# D.18257
	.loc 1 3930 0
	testl	%eax, %eax	# D.18252
	jne	.L779	#,
.L778:
	.loc 1 3932 0
	movl	$0, %eax	#, D.18252
	jmp	.L777	#
.L779:
	.loc 1 3934 0
	movl	$1, %eax	#, D.18252
.L777:
	.loc 1 3935 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	have_sub2_insn, .-have_sub2_insn
	.globl	gen_move_insn
	.type	gen_move_insn, @function
gen_move_insn:
.LFB35:
	.loc 1 3943 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# y, y
	.loc 1 3944 0
	movq	-56(%rbp), %rax	# x, tmp82
	movzbl	2(%rax), %eax	# x_9(D)->mode, D.18261
	movzbl	%al, %eax	# D.18261, tmp83
	movl	%eax, -36(%rbp)	# tmp83, mode
	.loc 1 3948 0
	cmpl	$0, -36(%rbp)	#, mode
	jne	.L781	#,
	.loc 1 3949 0
	movq	-64(%rbp), %rax	# y, tmp84
	movzbl	2(%rax), %eax	# y_12(D)->mode, D.18261
	movzbl	%al, %eax	# D.18261, tmp85
	movl	%eax, -36(%rbp)	# tmp85, mode
.L781:
	.loc 1 3951 0
	movq	optab_table+240(%rip), %rax	# optab_table, D.18262
	movl	-36(%rbp), %edx	# mode, mode.334
	movslq	%edx, %rdx	# mode.334, tmp86
	salq	$4, %rdx	#, tmp87
	addq	%rdx, %rax	# tmp87, tmp88
	movl	8(%rax), %eax	# _15->handlers[mode.334_16].insn_code, tmp89
	movl	%eax, -28(%rbp)	# tmp89, insn_code
	.loc 1 3957 0
	movl	-36(%rbp), %eax	# mode, mode.335
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18263
	cmpl	$4, %eax	#, D.18263
	jne	.L782	#,
	.loc 1 3957 0 is_stmt 0 discriminator 1
	cmpl	$1317, -28(%rbp)	#, insn_code
	jne	.L782	#,
.LBB48:
	.loc 1 3959 0 is_stmt 1
	movl	$0, -32(%rbp)	#, tmode
	.loc 1 3960 0
	movq	-56(%rbp), %rax	# x, tmp91
	movq	%rax, -24(%rbp)	# tmp91, x1
	movq	-64(%rbp), %rax	# y, tmp92
	movq	%rax, -16(%rbp)	# tmp92, y1
	.loc 1 3962 0
	cmpl	$52, -36(%rbp)	#, mode
	je	.L783	#,
	.loc 1 3963 0
	movq	optab_table+240(%rip), %rax	# optab_table, D.18262
	movl	840(%rax), %eax	# _23->handlers[52].insn_code, D.18264
	cmpl	$1317, %eax	#, D.18264
	je	.L783	#,
	.loc 1 3964 0
	movl	$52, -32(%rbp)	#, tmode
	jmp	.L784	#
.L783:
	.loc 1 3966 0
	movl	$2, -32(%rbp)	#, tmode
	jmp	.L785	#
.L787:
	.loc 1 3968 0
	movl	-32(%rbp), %eax	# tmode, tmode.336
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18261
	movl	-36(%rbp), %eax	# mode, mode.337
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18261
	cmpb	%al, %dl	# D.18261, D.18261
	jne	.L786	#,
	.loc 1 3969 0
	jmp	.L784	#
.L786:
	.loc 1 3967 0
	movl	-32(%rbp), %eax	# tmode, tmode.338
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18261
	movzbl	%al, %eax	# D.18261, tmp96
	movl	%eax, -32(%rbp)	# tmp96, tmode
.L785:
	.loc 1 3966 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, tmode
	jne	.L787	#,
.L784:
	.loc 1 3971 0
	cmpl	$0, -32(%rbp)	#, tmode
	jne	.L788	#,
	.loc 1 3972 0
	movl	$__FUNCTION__.14105, %edx	#,
	movl	$3972, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L788:
	.loc 1 3981 0
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.339
	testl	%eax, %eax	# reload_in_progress.339
	je	.L789	#,
	.loc 1 3983 0
	movq	-24(%rbp), %rdx	# x1, tmp97
	movl	-32(%rbp), %eax	# tmode, tmp98
	movq	%rdx, %rsi	# tmp97,
	movl	%eax, %edi	# tmp98,
	call	gen_lowpart_common	#
	movq	%rax, -56(%rbp)	# tmp99, x
	.loc 1 3984 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L790	#,
	.loc 1 3984 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x1, tmp100
	movzwl	(%rax), %eax	# x1_21->code, D.18265
	cmpw	$66, %ax	#, D.18265
	jne	.L790	#,
	.loc 1 3986 0 is_stmt 1
	movl	-32(%rbp), %esi	# tmode, tmp101
	movq	-24(%rbp), %rax	# x1, tmp102
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	adjust_address_1	#
	movq	%rax, -56(%rbp)	# tmp103, x
	.loc 1 3987 0
	movq	-56(%rbp), %rdx	# x, tmp104
	movq	-24(%rbp), %rax	# x1, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	copy_replacements	#
.L790:
	.loc 1 3990 0
	movq	-16(%rbp), %rdx	# y1, tmp106
	movl	-32(%rbp), %eax	# tmode, tmp107
	movq	%rdx, %rsi	# tmp106,
	movl	%eax, %edi	# tmp107,
	call	gen_lowpart_common	#
	movq	%rax, -64(%rbp)	# tmp108, y
	.loc 1 3991 0
	cmpq	$0, -64(%rbp)	#, y
	jne	.L792	#,
	.loc 1 3991 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# y1, tmp109
	movzwl	(%rax), %eax	# y1_22->code, D.18265
	cmpw	$66, %ax	#, D.18265
	jne	.L792	#,
	.loc 1 3993 0 is_stmt 1
	movl	-32(%rbp), %esi	# tmode, tmp110
	movq	-16(%rbp), %rax	# y1, tmp111
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp111,
	call	adjust_address_1	#
	movq	%rax, -64(%rbp)	# tmp112, y
	.loc 1 3994 0
	movq	-64(%rbp), %rdx	# y, tmp113
	movq	-16(%rbp), %rax	# y1, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	copy_replacements	#
	jmp	.L792	#
.L789:
	.loc 1 3999 0
	movq	-56(%rbp), %rdx	# x, tmp115
	movl	-32(%rbp), %eax	# tmode, tmp116
	movq	%rdx, %rsi	# tmp115,
	movl	%eax, %edi	# tmp116,
	call	gen_lowpart	#
	movq	%rax, -56(%rbp)	# tmp117, x
	.loc 1 4000 0
	movq	-64(%rbp), %rdx	# y, tmp118
	movl	-32(%rbp), %eax	# tmode, tmp119
	movq	%rdx, %rsi	# tmp118,
	movl	%eax, %edi	# tmp119,
	call	gen_lowpart	#
	movq	%rax, -64(%rbp)	# tmp120, y
.L792:
	.loc 1 4003 0
	movq	optab_table+240(%rip), %rax	# optab_table, D.18262
	movl	-32(%rbp), %edx	# tmode, tmode.340
	movslq	%edx, %rdx	# tmode.340, tmp121
	salq	$4, %rdx	#, tmp122
	addq	%rdx, %rax	# tmp122, tmp123
	movl	8(%rax), %eax	# _43->handlers[tmode.340_44].insn_code, tmp124
	movl	%eax, -28(%rbp)	# tmp124, insn_code
	.loc 1 4004 0
	movl	-28(%rbp), %eax	# insn_code, insn_code.341
	movslq	%eax, %rdx	# insn_code.341, tmp125
	movq	%rdx, %rax	# tmp125, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# tmp125, tmp126
	salq	$3, %rax	#, tmp127
	addq	$insn_data+16, %rax	#, tmp128
	movq	(%rax), %rdx	# insn_data[insn_code.341_46].genfun, D.18266
	movq	-64(%rbp), %rcx	# y, tmp129
	movq	-56(%rbp), %rax	# x, tmp130
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	movl	$0, %eax	#,
	call	*%rdx	# D.18266
	jmp	.L793	#
.L782:
.LBE48:
	.loc 1 4007 0
	call	start_sequence	#
	.loc 1 4008 0
	movq	-64(%rbp), %rdx	# y, tmp131
	movq	-56(%rbp), %rax	# x, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	emit_move_insn_1	#
	.loc 1 4009 0
	call	gen_sequence	#
	movq	%rax, -8(%rbp)	# tmp133, seq
	.loc 1 4010 0
	call	end_sequence	#
	.loc 1 4011 0
	movq	-8(%rbp), %rax	# seq, D.18260
.L793:
	.loc 1 4012 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	gen_move_insn, .-gen_move_insn
	.globl	can_extend_p
	.type	can_extend_p, @function
can_extend_p:
.LFB36:
	.loc 1 4022 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# to_mode, to_mode
	movl	%esi, -8(%rbp)	# from_mode, from_mode
	movl	%edx, -12(%rbp)	# unsignedp, unsignedp
	.loc 1 4028 0
	movl	-4(%rbp), %edx	# to_mode, to_mode.342
	movl	-8(%rbp), %eax	# from_mode, from_mode.343
	cmpl	$0, -12(%rbp)	#, unsignedp
	setne	%cl	#, D.18267
	movzbl	%cl, %ecx	# D.18267, D.18268
	movslq	%ecx, %rsi	# D.18268, tmp65
	movslq	%edx, %rcx	# to_mode.342, tmp66
	movslq	%eax, %rdi	# from_mode.343, tmp67
	movq	%rcx, %rdx	# tmp66, tmp68
	leaq	0(,%rdx,4), %rax	#, tmp69
	movq	%rax, %rdx	# tmp69, tmp68
	movq	%rdx, %rax	# tmp68, tmp70
	salq	$4, %rax	#, tmp70
	subq	%rdx, %rax	# tmp68, tmp70
	subq	%rcx, %rax	# tmp66, tmp70
	addq	%rdi, %rax	# tmp67, tmp71
	addq	%rax, %rax	# tmp72
	addq	%rsi, %rax	# tmp65, tmp73
	movl	extendtab(,%rax,4), %eax	# extendtab, D.18269
	.loc 1 4029 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	can_extend_p, .-can_extend_p
	.globl	gen_extend_insn
	.type	gen_extend_insn, @function
gen_extend_insn:
.LFB37:
	.loc 1 4039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# y, y
	movl	%edx, -20(%rbp)	# mto, mto
	movl	%ecx, -24(%rbp)	# mfrom, mfrom
	movl	%r8d, -28(%rbp)	# unsignedp, unsignedp
	.loc 1 4040 0
	movl	-20(%rbp), %edx	# mto, mto.344
	movl	-24(%rbp), %eax	# mfrom, mfrom.345
	cmpl	$0, -28(%rbp)	#, unsignedp
	setne	%cl	#, D.18270
	movzbl	%cl, %ecx	# D.18270, D.18271
	movslq	%ecx, %rsi	# D.18271, tmp68
	movslq	%edx, %rcx	# mto.344, tmp69
	movslq	%eax, %rdi	# mfrom.345, tmp70
	movq	%rcx, %rdx	# tmp69, tmp71
	leaq	0(,%rdx,4), %rax	#, tmp72
	movq	%rax, %rdx	# tmp72, tmp71
	movq	%rdx, %rax	# tmp71, tmp73
	salq	$4, %rax	#, tmp73
	subq	%rdx, %rax	# tmp71, tmp73
	subq	%rcx, %rax	# tmp69, tmp73
	addq	%rdi, %rax	# tmp70, tmp74
	addq	%rax, %rax	# tmp75
	addq	%rsi, %rax	# tmp68, tmp76
	movl	extendtab(,%rax,4), %eax	# extendtab, D.18272
	movslq	%eax, %rdx	# D.18271, tmp77
	movq	%rdx, %rax	# tmp77, tmp78
	salq	$2, %rax	#, tmp78
	addq	%rdx, %rax	# tmp77, tmp78
	salq	$3, %rax	#, tmp79
	addq	$insn_data+16, %rax	#, tmp80
	movq	(%rax), %rdx	# insn_data[_9].genfun, D.18273
	movq	-16(%rbp), %rcx	# y, tmp81
	movq	-8(%rbp), %rax	# x, tmp82
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	*%rdx	# D.18273
	.loc 1 4041 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	gen_extend_insn, .-gen_extend_insn
	.type	can_fix_p, @function
can_fix_p:
.LFB38:
	.loc 1 4057 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# fixmode, fixmode
	movl	%esi, -8(%rbp)	# fltmode, fltmode
	movl	%edx, -12(%rbp)	# unsignedp, unsignedp
	movq	%rcx, -24(%rbp)	# truncp_ptr, truncp_ptr
	.loc 1 4058 0
	movq	-24(%rbp), %rax	# truncp_ptr, tmp77
	movl	$0, (%rax)	#, *truncp_ptr_2(D)
	.loc 1 4059 0
	movl	-8(%rbp), %edx	# fltmode, fltmode.346
	movl	-4(%rbp), %eax	# fixmode, fixmode.347
	cmpl	$0, -12(%rbp)	#, unsignedp
	setne	%cl	#, D.18276
	movzbl	%cl, %ecx	# D.18276, D.18277
	movslq	%ecx, %rsi	# D.18277, tmp78
	movslq	%edx, %rcx	# fltmode.346, tmp79
	movslq	%eax, %rdi	# fixmode.347, tmp80
	movq	%rcx, %rdx	# tmp79, tmp81
	leaq	0(,%rdx,4), %rax	#, tmp82
	movq	%rax, %rdx	# tmp82, tmp81
	movq	%rdx, %rax	# tmp81, tmp83
	salq	$4, %rax	#, tmp83
	subq	%rdx, %rax	# tmp81, tmp83
	subq	%rcx, %rax	# tmp79, tmp83
	addq	%rdi, %rax	# tmp80, tmp84
	addq	%rax, %rax	# tmp85
	addq	%rsi, %rax	# tmp78, tmp86
	movl	fixtrunctab(,%rax,4), %eax	# fixtrunctab, D.18275
	cmpl	$1317, %eax	#, D.18275
	je	.L799	#,
	.loc 1 4061 0
	movl	-8(%rbp), %edx	# fltmode, fltmode.348
	movl	-4(%rbp), %eax	# fixmode, fixmode.349
	cmpl	$0, -12(%rbp)	#, unsignedp
	setne	%cl	#, D.18276
	movzbl	%cl, %ecx	# D.18276, D.18277
	movslq	%ecx, %rsi	# D.18277, tmp87
	movslq	%edx, %rcx	# fltmode.348, tmp88
	movslq	%eax, %rdi	# fixmode.349, tmp89
	movq	%rcx, %rdx	# tmp88, tmp90
	leaq	0(,%rdx,4), %rax	#, tmp91
	movq	%rax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	salq	$4, %rax	#, tmp92
	subq	%rdx, %rax	# tmp90, tmp92
	subq	%rcx, %rax	# tmp88, tmp92
	addq	%rdi, %rax	# tmp89, tmp93
	addq	%rax, %rax	# tmp94
	addq	%rsi, %rax	# tmp87, tmp95
	movl	fixtrunctab(,%rax,4), %eax	# fixtrunctab, D.18275
	jmp	.L800	#
.L799:
	.loc 1 4063 0
	movq	optab_table+136(%rip), %rax	# optab_table, D.18278
	movl	-8(%rbp), %edx	# fltmode, fltmode.350
	movslq	%edx, %rdx	# fltmode.350, tmp96
	salq	$4, %rdx	#, tmp97
	addq	%rdx, %rax	# tmp97, tmp98
	movl	8(%rax), %eax	# _16->handlers[fltmode.350_17].insn_code, D.18275
	cmpl	$1317, %eax	#, D.18275
	je	.L801	#,
	.loc 1 4065 0
	movq	-24(%rbp), %rax	# truncp_ptr, tmp99
	movl	$1, (%rax)	#, *truncp_ptr_2(D)
	.loc 1 4066 0
	movl	-8(%rbp), %edx	# fltmode, fltmode.351
	movl	-4(%rbp), %eax	# fixmode, fixmode.352
	cmpl	$0, -12(%rbp)	#, unsignedp
	setne	%cl	#, D.18276
	movzbl	%cl, %ecx	# D.18276, D.18277
	movslq	%ecx, %rsi	# D.18277, tmp100
	movslq	%edx, %rcx	# fltmode.351, tmp101
	movslq	%eax, %rdi	# fixmode.352, tmp102
	movq	%rcx, %rdx	# tmp101, tmp103
	leaq	0(,%rdx,4), %rax	#, tmp104
	movq	%rax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$4, %rax	#, tmp105
	subq	%rdx, %rax	# tmp103, tmp105
	subq	%rcx, %rax	# tmp101, tmp105
	addq	%rdi, %rax	# tmp102, tmp106
	addq	%rax, %rax	# tmp107
	addq	%rsi, %rax	# tmp100, tmp108
	movl	fixtab(,%rax,4), %eax	# fixtab, D.18275
	jmp	.L800	#
.L801:
	.loc 1 4068 0
	movl	$1317, %eax	#, D.18275
.L800:
	.loc 1 4069 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	can_fix_p, .-can_fix_p
	.type	can_float_p, @function
can_float_p:
.LFB39:
	.loc 1 4075 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# fltmode, fltmode
	movl	%esi, -8(%rbp)	# fixmode, fixmode
	movl	%edx, -12(%rbp)	# unsignedp, unsignedp
	.loc 1 4076 0
	movl	-4(%rbp), %edx	# fltmode, fltmode.353
	movl	-8(%rbp), %eax	# fixmode, fixmode.354
	cmpl	$0, -12(%rbp)	#, unsignedp
	setne	%cl	#, D.18279
	movzbl	%cl, %ecx	# D.18279, D.18280
	movslq	%ecx, %rsi	# D.18280, tmp65
	movslq	%edx, %rcx	# fltmode.353, tmp66
	movslq	%eax, %rdi	# fixmode.354, tmp67
	movq	%rcx, %rdx	# tmp66, tmp68
	leaq	0(,%rdx,4), %rax	#, tmp69
	movq	%rax, %rdx	# tmp69, tmp68
	movq	%rdx, %rax	# tmp68, tmp70
	salq	$4, %rax	#, tmp70
	subq	%rdx, %rax	# tmp68, tmp70
	subq	%rcx, %rax	# tmp66, tmp70
	addq	%rdi, %rax	# tmp67, tmp71
	addq	%rax, %rax	# tmp72
	addq	%rsi, %rax	# tmp65, tmp73
	movl	floattab(,%rax,4), %eax	# floattab, D.18281
	.loc 1 4077 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	can_float_p, .-can_float_p
	.globl	expand_float
	.type	expand_float, @function
expand_float:
.LFB40:
	.loc 1 4089 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -120(%rbp)	# to, to
	movq	%rsi, -128(%rbp)	# from, from
	movl	%edx, -132(%rbp)	# unsignedp, unsignedp
	.loc 1 4091 0
	movq	-120(%rbp), %rax	# to, tmp155
	movq	%rax, -96(%rbp)	# tmp155, target
	.loc 1 4095 0
	movq	-128(%rbp), %rax	# from, tmp156
	movzbl	2(%rax), %eax	# from_21(D)->mode, D.18282
	testb	%al, %al	# D.18282
	jne	.L805	#,
	.loc 1 4096 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4096, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L805:
	.loc 1 4103 0
	movq	-128(%rbp), %rax	# from, tmp157
	movzbl	2(%rax), %eax	# from_21(D)->mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp158
	movl	%eax, -104(%rbp)	# tmp158, imode
	jmp	.L806	#
.L818:
	.loc 1 4105 0
	movq	-120(%rbp), %rax	# to, tmp159
	movzbl	2(%rax), %eax	# to_19(D)->mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp160
	movl	%eax, -108(%rbp)	# tmp160, fmode
	jmp	.L807	#
.L817:
.LBB49:
	.loc 1 4108 0
	movl	-132(%rbp), %eax	# unsignedp, tmp161
	movl	%eax, -100(%rbp)	# tmp161, doing_unsigned
	.loc 1 4110 0
	movq	-120(%rbp), %rax	# to, tmp162
	movzbl	2(%rax), %eax	# to_19(D)->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-108(%rbp), %eax	# fmode, D.18283
	je	.L808	#,
	.loc 1 4111 0
	movl	-108(%rbp), %eax	# fmode, tmp163
	movl	%eax, %edi	# tmp163,
	call	significand_size	#
	movq	-128(%rbp), %rdx	# from, tmp164
	movzbl	2(%rdx), %edx	# from_21(D)->mode, D.18282
	movzbl	%dl, %edx	# D.18282, D.18284
	movslq	%edx, %rdx	# D.18284, tmp165
	movzwl	mode_bitsize(%rdx,%rdx), %edx	# mode_bitsize, D.18285
	movzwl	%dx, %edx	# D.18285, D.18283
	cmpl	%edx, %eax	# D.18283, D.18283
	jae	.L808	#,
	.loc 1 4112 0
	jmp	.L809	#
.L808:
	.loc 1 4114 0
	movl	-132(%rbp), %edx	# unsignedp, tmp166
	movl	-104(%rbp), %ecx	# imode, tmp167
	movl	-108(%rbp), %eax	# fmode, tmp168
	movl	%ecx, %esi	# tmp167,
	movl	%eax, %edi	# tmp168,
	call	can_float_p	#
	movl	%eax, -112(%rbp)	# tmp169, icode
	.loc 1 4115 0
	cmpl	$1317, -112(%rbp)	#, icode
	jne	.L810	#,
	.loc 1 4115 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# from, tmp170
	movzbl	2(%rax), %eax	# from_21(D)->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-104(%rbp), %eax	# imode, D.18283
	je	.L810	#,
	cmpl	$0, -132(%rbp)	#, unsignedp
	je	.L810	#,
	.loc 1 4116 0 is_stmt 1
	movl	-104(%rbp), %ecx	# imode, tmp171
	movl	-108(%rbp), %eax	# fmode, tmp172
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp171,
	movl	%eax, %edi	# tmp172,
	call	can_float_p	#
	movl	%eax, -112(%rbp)	# tmp173, icode
	movl	$0, -100(%rbp)	#, doing_unsigned
.L810:
	.loc 1 4118 0
	cmpl	$1317, -112(%rbp)	#, icode
	je	.L809	#,
	.loc 1 4120 0
	movq	-120(%rbp), %rax	# to, tmp174
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	protect_from_queue	#
	movq	%rax, -120(%rbp)	# tmp175, to
	.loc 1 4121 0
	movq	-128(%rbp), %rax	# from, tmp176
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	protect_from_queue	#
	movq	%rax, -128(%rbp)	# tmp177, from
	.loc 1 4123 0
	movq	-128(%rbp), %rax	# from, tmp178
	movzbl	2(%rax), %eax	# from_42->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-104(%rbp), %eax	# imode, D.18283
	je	.L811	#,
	.loc 1 4124 0
	movl	-132(%rbp), %edx	# unsignedp, tmp179
	movq	-128(%rbp), %rcx	# from, tmp180
	movl	-104(%rbp), %eax	# imode, tmp181
	movq	%rcx, %rsi	# tmp180,
	movl	%eax, %edi	# tmp181,
	call	convert_to_mode	#
	movq	%rax, -128(%rbp)	# tmp182, from
.L811:
	.loc 1 4126 0
	movq	-120(%rbp), %rax	# to, tmp183
	movzbl	2(%rax), %eax	# to_41->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-108(%rbp), %eax	# fmode, D.18283
	je	.L812	#,
	.loc 1 4127 0
	movl	-108(%rbp), %eax	# fmode, tmp184
	movl	%eax, %edi	# tmp184,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp185, target
.L812:
	.loc 1 4129 0
	cmpl	$0, -100(%rbp)	#, doing_unsigned
	je	.L813	#,
	.loc 1 4129 0 is_stmt 0 discriminator 1
	movl	$127, %eax	#, iftmp.355
	jmp	.L814	#
.L813:
	.loc 1 4129 0 discriminator 2
	movl	$125, %eax	#, iftmp.355
.L814:
	.loc 1 4129 0 discriminator 3
	movl	-112(%rbp), %edi	# icode, icode.356
	movq	-128(%rbp), %rdx	# from, tmp186
	movq	-96(%rbp), %rsi	# target, tmp187
	movl	%eax, %ecx	# iftmp.355,
	call	emit_unop_insn	#
	.loc 1 4132 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# target, tmp188
	cmpq	-120(%rbp), %rax	# to, tmp188
	je	.L815	#,
	.loc 1 4133 0
	movq	-96(%rbp), %rcx	# target, tmp189
	movq	-120(%rbp), %rax	# to, tmp190
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp189,
	movq	%rax, %rdi	# tmp190,
	call	convert_move	#
	.loc 1 4134 0
	jmp	.L804	#
.L815:
	jmp	.L804	#
.L809:
.LBE49:
	.loc 1 4106 0
	movl	-108(%rbp), %eax	# fmode, fmode.357
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp192
	movl	%eax, -108(%rbp)	# tmp192, fmode
.L807:
	.loc 1 4105 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, fmode
	jne	.L817	#,
	.loc 1 4104 0
	movl	-104(%rbp), %eax	# imode, imode.358
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp194
	movl	%eax, -104(%rbp)	# tmp194, imode
.L806:
	.loc 1 4103 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, imode
	jne	.L818	#,
	.loc 1 4142 0
	cmpl	$0, -132(%rbp)	#, unsignedp
	je	.L819	#,
.LBB50:
	.loc 1 4144 0
	call	gen_label_rtx	#
	movq	%rax, -80(%rbp)	# tmp195, label
	.loc 1 4148 0
	call	emit_queue	#
	.loc 1 4150 0
	movq	-120(%rbp), %rax	# to, tmp196
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	protect_from_queue	#
	movq	%rax, -120(%rbp)	# tmp197, to
	.loc 1 4151 0
	movq	-128(%rbp), %rax	# from, tmp198
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	protect_from_queue	#
	movq	%rax, -128(%rbp)	# tmp199, from
	.loc 1 4153 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.359
	testl	%eax, %eax	# flag_force_mem.359
	je	.L820	#,
	.loc 1 4154 0
	movq	-128(%rbp), %rax	# from, tmp200
	movq	%rax, %rdi	# tmp200,
	call	force_not_mem	#
	movq	%rax, -128(%rbp)	# tmp201, from
.L820:
	.loc 1 4160 0
	movq	-120(%rbp), %rax	# to, tmp202
	movzbl	2(%rax), %eax	# to_59->mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp203
	movl	%eax, -108(%rbp)	# tmp203, fmode
	jmp	.L821	#
.L824:
	.loc 1 4162 0
	movq	-128(%rbp), %rax	# from, tmp204
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18284
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.18285
	movl	-108(%rbp), %eax	# fmode, fmode.360
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18285
	cmpw	%ax, %dx	# D.18285, D.18285
	jae	.L822	#,
	.loc 1 4163 0
	movq	-128(%rbp), %rax	# from, tmp207
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %ecx	# D.18282, D.18286
	movl	-108(%rbp), %eax	# fmode, tmp208
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18286,
	movl	%eax, %edi	# tmp208,
	call	can_float_p	#
	cmpl	$1317, %eax	#, D.18287
	je	.L822	#,
	.loc 1 4164 0
	jmp	.L823	#
.L822:
	.loc 1 4161 0
	movl	-108(%rbp), %eax	# fmode, fmode.361
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp210
	movl	%eax, -108(%rbp)	# tmp210, fmode
.L821:
	.loc 1 4160 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, fmode
	jne	.L824	#,
.L823:
	.loc 1 4166 0
	cmpl	$0, -108(%rbp)	#, fmode
	jne	.L825	#,
	.loc 1 4169 0
	movq	-120(%rbp), %rax	# to, tmp211
	movzbl	2(%rax), %eax	# to_59->mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp212
	movl	%eax, -108(%rbp)	# tmp212, fmode
	.loc 1 4172 0
	movl	-108(%rbp), %eax	# fmode, tmp213
	movl	%eax, %edi	# tmp213,
	call	significand_size	#
	leal	1(%rax), %edx	#, D.18283
	.loc 1 4173 0
	movq	-128(%rbp), %rax	# from, tmp214
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18284
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18285
	movzwl	%ax, %eax	# D.18285, D.18283
	.loc 1 4172 0
	cmpl	%eax, %edx	# D.18283, D.18283
	jae	.L825	#,
.LBB51:
	.loc 1 4176 0
	call	gen_label_rtx	#
	movq	%rax, -72(%rbp)	# tmp216, neglabel
	.loc 1 4180 0
	movq	-96(%rbp), %rax	# target, tmp217
	movzwl	(%rax), %eax	# target_20->code, D.18285
	cmpw	$61, %ax	#, D.18285
	jne	.L826	#,
	.loc 1 4181 0
	movq	-96(%rbp), %rax	# target, tmp218
	movl	8(%rax), %eax	# target_20->fld[0].rtuint, D.18283
	cmpl	$52, %eax	#, D.18283
	jbe	.L826	#,
	.loc 1 4182 0
	movq	-96(%rbp), %rax	# target, tmp219
	movzbl	2(%rax), %eax	# target_20->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-108(%rbp), %eax	# fmode, D.18283
	je	.L827	#,
.L826:
	.loc 1 4183 0
	movl	-108(%rbp), %eax	# fmode, tmp220
	movl	%eax, %edi	# tmp220,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp221, target
.L827:
	.loc 1 4185 0
	movq	-128(%rbp), %rax	# from, tmp222
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %eax	# D.18282, tmp223
	movl	%eax, -104(%rbp)	# tmp223, imode
	.loc 1 4186 0
	call	do_pending_stack_adjust	#
	.loc 1 4189 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.18288
	movl	-104(%rbp), %ecx	# imode, tmp224
	movq	-128(%rbp), %rax	# from, tmp225
	movq	-72(%rbp), %rdx	# neglabel, tmp226
	movq	%rdx, (%rsp)	# tmp226,
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# tmp224,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp225,
	call	emit_cmp_and_jump_insns	#
	.loc 1 4193 0
	movq	-128(%rbp), %rcx	# from, tmp227
	movq	-96(%rbp), %rax	# target, tmp228
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	expand_float	#
	.loc 1 4194 0
	movq	-80(%rbp), %rax	# label, tmp229
	movq	%rax, %rdi	# tmp229,
	call	gen_jump	#
	movq	%rax, %rdi	# D.18288,
	call	emit_jump_insn	#
	.loc 1 4195 0
	call	emit_barrier	#
	.loc 1 4202 0
	movq	-72(%rbp), %rax	# neglabel, tmp230
	movq	%rax, %rdi	# tmp230,
	call	emit_label	#
	.loc 1 4203 0
	movq	const_int_rtx+520(%rip), %rcx	# const_int_rtx, D.18288
	movq	optab_table+144(%rip), %rsi	# optab_table, D.18289
	movq	-128(%rbp), %rdx	# from, tmp231
	movl	-104(%rbp), %eax	# imode, tmp232
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp232,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp233, temp
	.loc 1 4205 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.18290
	movq	-128(%rbp), %rdx	# from, tmp234
	movl	-104(%rbp), %eax	# imode, tmp235
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp235,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -56(%rbp)	# tmp236, temp1
	.loc 1 4207 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.18289
	movq	-64(%rbp), %rdi	# temp, tmp237
	movq	-56(%rbp), %rcx	# temp1, tmp238
	movq	-64(%rbp), %rdx	# temp, tmp239
	movl	-104(%rbp), %eax	# imode, tmp240
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp237,
	movl	%eax, %edi	# tmp240,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp241, temp
	.loc 1 4209 0
	movq	-64(%rbp), %rcx	# temp, tmp242
	movq	-96(%rbp), %rax	# target, tmp243
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp242,
	movq	%rax, %rdi	# tmp243,
	call	expand_float	#
	.loc 1 4212 0
	movq	optab_table(%rip), %rsi	# optab_table, D.18289
	movq	-96(%rbp), %rdi	# target, tmp244
	movq	-96(%rbp), %rcx	# target, tmp245
	movq	-96(%rbp), %rdx	# target, tmp246
	movl	-108(%rbp), %eax	# fmode, tmp247
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp244,
	movl	%eax, %edi	# tmp247,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp248, temp
	.loc 1 4214 0
	movq	-64(%rbp), %rax	# temp, tmp249
	cmpq	-96(%rbp), %rax	# target, tmp249
	je	.L828	#,
	.loc 1 4215 0
	movq	-64(%rbp), %rdx	# temp, tmp250
	movq	-96(%rbp), %rax	# target, tmp251
	movq	%rdx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	emit_move_insn	#
.L828:
	.loc 1 4217 0
	call	do_pending_stack_adjust	#
	.loc 1 4218 0
	movq	-80(%rbp), %rax	# label, tmp252
	movq	%rax, %rdi	# tmp252,
	call	emit_label	#
	.loc 1 4219 0
	jmp	.L833	#
.L825:
.LBE51:
	.loc 1 4226 0
	movq	-120(%rbp), %rax	# to, tmp253
	movzbl	2(%rax), %eax	# to_59->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18283
	cmpl	-108(%rbp), %eax	# fmode, D.18283
	jne	.L830	#,
	.loc 1 4227 0
	movq	-120(%rbp), %rax	# to, tmp254
	movzwl	(%rax), %eax	# to_59->code, D.18285
	cmpw	$61, %ax	#, D.18285
	jne	.L830	#,
	.loc 1 4227 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# to, tmp255
	movl	8(%rax), %eax	# to_59->fld[0].rtuint, D.18283
	cmpl	$52, %eax	#, D.18283
	ja	.L831	#,
.L830:
	.loc 1 4228 0 is_stmt 1
	movl	-108(%rbp), %eax	# fmode, tmp256
	movl	%eax, %edi	# tmp256,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp257, target
.L831:
	.loc 1 4231 0
	movq	-128(%rbp), %rcx	# from, tmp258
	movq	-96(%rbp), %rax	# target, tmp259
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	expand_float	#
	.loc 1 4236 0
	call	do_pending_stack_adjust	#
	.loc 1 4237 0
	movq	-128(%rbp), %rax	# from, tmp260
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %ecx	# D.18282, D.18286
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.18288
	movq	-128(%rbp), %rax	# from, tmp261
	movq	-80(%rbp), %rdx	# label, tmp262
	movq	%rdx, (%rsp)	# tmp262,
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# D.18286,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp261,
	call	emit_cmp_and_jump_insns	#
	.loc 1 4243 0
	movq	-128(%rbp), %rax	# from, tmp263
	movzbl	2(%rax), %eax	# from_3->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18284
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18285
	movzwl	%ax, %edx	# D.18285, D.18284
	leaq	-32(%rbp), %rax	#, tmp265
	movq	dconst1(%rip), %rcx	# dconst1, tmp267
	movq	%rcx, (%rsp)	# tmp267,
	movq	dconst1+8(%rip), %rcx	# dconst1, tmp268
	movq	%rcx, 8(%rsp)	# tmp268,
	movq	dconst1+16(%rip), %rcx	# dconst1, tmp269
	movq	%rcx, 16(%rsp)	# tmp269,
	movl	%edx, %esi	# D.18284,
	movq	%rax, %rdi	# tmp265,
	call	ereal_ldexp	#
	.loc 1 4244 0
	movl	-108(%rbp), %eax	# fmode, tmp270
	movq	-32(%rbp), %rdx	# offset, tmp271
	movq	%rdx, (%rsp)	# tmp271,
	movq	-24(%rbp), %rdx	# offset, tmp272
	movq	%rdx, 8(%rsp)	# tmp272,
	movq	-16(%rbp), %rdx	# offset, tmp273
	movq	%rdx, 16(%rsp)	# tmp273,
	movl	%eax, %edi	# tmp270,
	call	immed_real_const_1	#
	movq	%rax, %rcx	#, D.18288
	movq	optab_table(%rip), %rsi	# optab_table, D.18289
	movq	-96(%rbp), %rdi	# target, tmp274
	movq	-96(%rbp), %rdx	# target, tmp275
	movl	-108(%rbp), %eax	# fmode, tmp276
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp274,
	movl	%eax, %edi	# tmp276,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp277, temp
	.loc 1 4247 0
	movq	-64(%rbp), %rax	# temp, tmp278
	cmpq	-96(%rbp), %rax	# target, tmp278
	je	.L832	#,
	.loc 1 4248 0
	movq	-64(%rbp), %rdx	# temp, tmp279
	movq	-96(%rbp), %rax	# target, tmp280
	movq	%rdx, %rsi	# tmp279,
	movq	%rax, %rdi	# tmp280,
	call	emit_move_insn	#
.L832:
	.loc 1 4250 0
	call	do_pending_stack_adjust	#
	.loc 1 4251 0
	movq	-80(%rbp), %rax	# label, tmp281
	movq	%rax, %rdi	# tmp281,
	call	emit_label	#
	.loc 1 4252 0
	nop
	jmp	.L833	#
.L819:
.LBE50:
.LBB52:
	.loc 1 4263 0
	movq	-120(%rbp), %rax	# to, tmp282
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp282,
	call	protect_from_queue	#
	movq	%rax, -120(%rbp)	# tmp283, to
	.loc 1 4264 0
	movq	-128(%rbp), %rax	# from, tmp284
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp284,
	call	protect_from_queue	#
	movq	%rax, -128(%rbp)	# tmp285, from
	.loc 1 4266 0
	movq	-128(%rbp), %rax	# from, tmp286
	movzbl	2(%rax), %eax	# from_119->mode, D.18282
	movzbl	%al, %eax	# D.18282, D.18284
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18282
	movzbl	mode_size+4(%rip), %eax	# mode_size, D.18282
	cmpb	%al, %dl	# D.18282, D.18282
	jae	.L834	#,
	.loc 1 4267 0
	movl	-132(%rbp), %edx	# unsignedp, tmp288
	movq	-128(%rbp), %rax	# from, tmp289
	movq	%rax, %rsi	# tmp289,
	movl	$4, %edi	#,
	call	convert_to_mode	#
	movq	%rax, -128(%rbp)	# tmp290, from
.L834:
	.loc 1 4269 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.362
	testl	%eax, %eax	# flag_force_mem.362
	je	.L835	#,
	.loc 1 4270 0
	movq	-128(%rbp), %rax	# from, tmp291
	movq	%rax, %rdi	# tmp291,
	call	force_not_mem	#
	movq	%rax, -128(%rbp)	# tmp292, from
.L835:
	.loc 1 4272 0
	movq	-120(%rbp), %rax	# to, tmp293
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	cmpb	$15, %al	#, D.18282
	jne	.L836	#,
	.loc 1 4274 0
	movq	-128(%rbp), %rax	# from, tmp294
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$4, %al	#, D.18282
	jne	.L837	#,
	.loc 1 4275 0
	movq	libfunc_table+472(%rip), %rax	# libfunc_table, tmp295
	movq	%rax, -88(%rbp)	# tmp295, libfcn
	jmp	.L838	#
.L837:
	.loc 1 4276 0
	movq	-128(%rbp), %rax	# from, tmp296
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$5, %al	#, D.18282
	jne	.L839	#,
	.loc 1 4277 0
	movq	libfunc_table+480(%rip), %rax	# libfunc_table, tmp297
	movq	%rax, -88(%rbp)	# tmp297, libfcn
	jmp	.L838	#
.L839:
	.loc 1 4278 0
	movq	-128(%rbp), %rax	# from, tmp298
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$6, %al	#, D.18282
	jne	.L840	#,
	.loc 1 4279 0
	movq	libfunc_table+488(%rip), %rax	# libfunc_table, tmp299
	movq	%rax, -88(%rbp)	# tmp299, libfcn
	jmp	.L838	#
.L840:
	.loc 1 4281 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4281, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L836:
	.loc 1 4283 0
	movq	-120(%rbp), %rax	# to, tmp300
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	cmpb	$16, %al	#, D.18282
	jne	.L841	#,
	.loc 1 4285 0
	movq	-128(%rbp), %rax	# from, tmp301
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$4, %al	#, D.18282
	jne	.L842	#,
	.loc 1 4286 0
	movq	libfunc_table+496(%rip), %rax	# libfunc_table, tmp302
	movq	%rax, -88(%rbp)	# tmp302, libfcn
	jmp	.L838	#
.L842:
	.loc 1 4287 0
	movq	-128(%rbp), %rax	# from, tmp303
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$5, %al	#, D.18282
	jne	.L843	#,
	.loc 1 4288 0
	movq	libfunc_table+504(%rip), %rax	# libfunc_table, tmp304
	movq	%rax, -88(%rbp)	# tmp304, libfcn
	jmp	.L838	#
.L843:
	.loc 1 4289 0
	movq	-128(%rbp), %rax	# from, tmp305
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$6, %al	#, D.18282
	jne	.L844	#,
	.loc 1 4290 0
	movq	libfunc_table+512(%rip), %rax	# libfunc_table, tmp306
	movq	%rax, -88(%rbp)	# tmp306, libfcn
	jmp	.L838	#
.L844:
	.loc 1 4292 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4292, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L841:
	.loc 1 4294 0
	movq	-120(%rbp), %rax	# to, tmp307
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	cmpb	$17, %al	#, D.18282
	jne	.L845	#,
	.loc 1 4296 0
	movq	-128(%rbp), %rax	# from, tmp308
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$4, %al	#, D.18282
	jne	.L846	#,
	.loc 1 4297 0
	movq	libfunc_table+520(%rip), %rax	# libfunc_table, tmp309
	movq	%rax, -88(%rbp)	# tmp309, libfcn
	jmp	.L838	#
.L846:
	.loc 1 4298 0
	movq	-128(%rbp), %rax	# from, tmp310
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$5, %al	#, D.18282
	jne	.L847	#,
	.loc 1 4299 0
	movq	libfunc_table+528(%rip), %rax	# libfunc_table, tmp311
	movq	%rax, -88(%rbp)	# tmp311, libfcn
	jmp	.L838	#
.L847:
	.loc 1 4300 0
	movq	-128(%rbp), %rax	# from, tmp312
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$6, %al	#, D.18282
	jne	.L848	#,
	.loc 1 4301 0
	movq	libfunc_table+536(%rip), %rax	# libfunc_table, tmp313
	movq	%rax, -88(%rbp)	# tmp313, libfcn
	jmp	.L838	#
.L848:
	.loc 1 4303 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4303, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L845:
	.loc 1 4305 0
	movq	-120(%rbp), %rax	# to, tmp314
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	cmpb	$18, %al	#, D.18282
	jne	.L849	#,
	.loc 1 4307 0
	movq	-128(%rbp), %rax	# from, tmp315
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$4, %al	#, D.18282
	jne	.L850	#,
	.loc 1 4308 0
	movq	libfunc_table+544(%rip), %rax	# libfunc_table, tmp316
	movq	%rax, -88(%rbp)	# tmp316, libfcn
	jmp	.L838	#
.L850:
	.loc 1 4309 0
	movq	-128(%rbp), %rax	# from, tmp317
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$5, %al	#, D.18282
	jne	.L851	#,
	.loc 1 4310 0
	movq	libfunc_table+552(%rip), %rax	# libfunc_table, tmp318
	movq	%rax, -88(%rbp)	# tmp318, libfcn
	jmp	.L838	#
.L851:
	.loc 1 4311 0
	movq	-128(%rbp), %rax	# from, tmp319
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	cmpb	$6, %al	#, D.18282
	jne	.L852	#,
	.loc 1 4312 0
	movq	libfunc_table+560(%rip), %rax	# libfunc_table, tmp320
	movq	%rax, -88(%rbp)	# tmp320, libfcn
	jmp	.L838	#
.L852:
	.loc 1 4314 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4314, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L849:
	.loc 1 4317 0
	movl	$__FUNCTION__.14138, %edx	#,
	movl	$4317, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L838:
	.loc 1 4319 0
	call	start_sequence	#
	.loc 1 4323 0
	movq	-128(%rbp), %rax	# from, tmp321
	movzbl	2(%rax), %eax	# from_5->mode, D.18282
	.loc 1 4321 0
	movzbl	%al, %ecx	# D.18282, D.18283
	.loc 1 4322 0
	movq	-120(%rbp), %rax	# to, tmp322
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	.loc 1 4321 0
	movzbl	%al, %edx	# D.18282, D.18286
	movq	-128(%rbp), %rsi	# from, tmp323
	movq	-88(%rbp), %rax	# libfcn, tmp324
	movl	%ecx, (%rsp)	# D.18283,
	movq	%rsi, %r9	# tmp323,
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# D.18286,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp324,
	movl	$0, %eax	#,
	call	emit_library_call_value	#
	movq	%rax, -48(%rbp)	# tmp325, value
	.loc 1 4324 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp326, insns
	.loc 1 4325 0
	call	end_sequence	#
	.loc 1 4328 0
	movq	-120(%rbp), %rax	# to, tmp327
	movzbl	2(%rax), %eax	# to_118->mode, D.18282
	.loc 1 4327 0
	movzbl	%al, %eax	# D.18282, D.18286
	movq	-128(%rbp), %rdx	# from, tmp328
	movl	%eax, %esi	# D.18286,
	movl	$125, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18288
	movq	-48(%rbp), %rdx	# value, tmp329
	movq	-96(%rbp), %rsi	# target, tmp330
	movq	-40(%rbp), %rax	# insns, tmp331
	movq	%rax, %rdi	# tmp331,
	call	emit_libcall_block	#
.L833:
.LBE52:
	.loc 1 4336 0
	movq	-96(%rbp), %rax	# target, tmp332
	cmpq	-120(%rbp), %rax	# to, tmp332
	je	.L804	#,
	.loc 1 4338 0
	movq	-96(%rbp), %rax	# target, tmp333
	movzbl	2(%rax), %edx	# target_11->mode, D.18282
	movq	-120(%rbp), %rax	# to, tmp334
	movzbl	2(%rax), %eax	# to_1->mode, D.18282
	cmpb	%al, %dl	# D.18282, D.18282
	jne	.L853	#,
	.loc 1 4339 0
	movq	-96(%rbp), %rdx	# target, tmp335
	movq	-120(%rbp), %rax	# to, tmp336
	movq	%rdx, %rsi	# tmp335,
	movq	%rax, %rdi	# tmp336,
	call	emit_move_insn	#
	jmp	.L804	#
.L853:
	.loc 1 4341 0
	movq	-96(%rbp), %rcx	# target, tmp337
	movq	-120(%rbp), %rax	# to, tmp338
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp337,
	movq	%rax, %rdi	# tmp338,
	call	convert_move	#
.L804:
	.loc 1 4343 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	expand_float, .-expand_float
	.type	ftruncify, @function
ftruncify:
.LFB41:
	.loc 1 4351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 4352 0
	movq	-24(%rbp), %rax	# x, tmp66
	movzbl	2(%rax), %eax	# x_1(D)->mode, D.18293
	movzbl	%al, %eax	# D.18293, D.18294
	movl	%eax, %edi	# D.18294,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp67, temp
	.loc 1 4353 0
	movq	optab_table+136(%rip), %rsi	# optab_table, D.18295
	movq	-24(%rbp), %rax	# x, tmp68
	movzbl	2(%rax), %eax	# x_1(D)->mode, D.18293
	movzbl	%al, %eax	# D.18293, D.18294
	movq	-8(%rbp), %rcx	# temp, tmp69
	movq	-24(%rbp), %rdx	# x, tmp70
	movl	$0, %r8d	#,
	movl	%eax, %edi	# D.18294,
	call	expand_unop	#
	.loc 1 4354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ftruncify, .-ftruncify
	.globl	expand_fix
	.type	expand_fix, @function
expand_fix:
.LFB42:
	.loc 1 4360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -136(%rbp)	# to, to
	movq	%rsi, -144(%rbp)	# from, from
	movl	%edx, -148(%rbp)	# unsignedp, unsignedp
	.loc 1 4362 0
	movq	-136(%rbp), %rax	# to, tmp161
	movq	%rax, -96(%rbp)	# tmp161, target
	.loc 1 4364 0
	movl	$0, -120(%rbp)	#, must_trunc
	.loc 1 4365 0
	movq	$0, -88(%rbp)	#, libfcn
	.loc 1 4372 0
	movq	-144(%rbp), %rax	# from, tmp162
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp163
	movl	%eax, -112(%rbp)	# tmp163, fmode
	jmp	.L857	#
.L869:
	.loc 1 4374 0
	movq	-136(%rbp), %rax	# to, tmp164
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp165
	movl	%eax, -108(%rbp)	# tmp165, imode
	jmp	.L858	#
.L868:
.LBB53:
	.loc 1 4377 0
	movl	-148(%rbp), %eax	# unsignedp, tmp166
	movl	%eax, -104(%rbp)	# tmp166, doing_unsigned
	.loc 1 4379 0
	leaq	-120(%rbp), %rcx	#, tmp167
	movl	-148(%rbp), %edx	# unsignedp, tmp168
	movl	-112(%rbp), %esi	# fmode, tmp169
	movl	-108(%rbp), %eax	# imode, tmp170
	movl	%eax, %edi	# tmp170,
	call	can_fix_p	#
	movl	%eax, -116(%rbp)	# tmp171, icode
	.loc 1 4380 0
	cmpl	$1317, -116(%rbp)	#, icode
	jne	.L859	#,
	.loc 1 4380 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# to, tmp172
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18298
	cmpl	-108(%rbp), %eax	# imode, D.18298
	je	.L859	#,
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L859	#,
	.loc 1 4381 0 is_stmt 1
	leaq	-120(%rbp), %rdx	#, tmp173
	movl	-112(%rbp), %esi	# fmode, tmp174
	movl	-108(%rbp), %eax	# imode, tmp175
	movq	%rdx, %rcx	# tmp173,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp175,
	call	can_fix_p	#
	movl	%eax, -116(%rbp)	# tmp176, icode
	movl	$0, -104(%rbp)	#, doing_unsigned
.L859:
	.loc 1 4383 0
	cmpl	$1317, -116(%rbp)	#, icode
	je	.L860	#,
	.loc 1 4385 0
	movq	-136(%rbp), %rax	# to, tmp177
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp178, to
	.loc 1 4386 0
	movq	-144(%rbp), %rax	# from, tmp179
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp180, from
	.loc 1 4388 0
	movq	-144(%rbp), %rax	# from, tmp181
	movzbl	2(%rax), %eax	# from_45->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18298
	cmpl	-112(%rbp), %eax	# fmode, D.18298
	je	.L861	#,
	.loc 1 4389 0
	movq	-144(%rbp), %rcx	# from, tmp182
	movl	-112(%rbp), %eax	# fmode, tmp183
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp182,
	movl	%eax, %edi	# tmp183,
	call	convert_to_mode	#
	movq	%rax, -144(%rbp)	# tmp184, from
.L861:
	.loc 1 4391 0
	movl	-120(%rbp), %eax	# must_trunc, must_trunc.363
	testl	%eax, %eax	# must_trunc.363
	je	.L862	#,
	.loc 1 4392 0
	movq	-144(%rbp), %rax	# from, tmp185
	movq	%rax, %rdi	# tmp185,
	call	ftruncify	#
	movq	%rax, -144(%rbp)	# tmp186, from
.L862:
	.loc 1 4394 0
	movq	-136(%rbp), %rax	# to, tmp187
	movzbl	2(%rax), %eax	# to_44->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18298
	cmpl	-108(%rbp), %eax	# imode, D.18298
	je	.L863	#,
	.loc 1 4395 0
	movl	-108(%rbp), %eax	# imode, tmp188
	movl	%eax, %edi	# tmp188,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp189, target
.L863:
	.loc 1 4397 0
	cmpl	$0, -104(%rbp)	#, doing_unsigned
	je	.L864	#,
	.loc 1 4397 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.364
	jmp	.L865	#
.L864:
	.loc 1 4397 0 discriminator 2
	movl	$126, %eax	#, iftmp.364
.L865:
	.loc 1 4397 0 discriminator 3
	movl	-116(%rbp), %edi	# icode, icode.365
	movq	-144(%rbp), %rdx	# from, tmp190
	movq	-96(%rbp), %rsi	# target, tmp191
	movl	%eax, %ecx	# iftmp.364,
	call	emit_unop_insn	#
	.loc 1 4399 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# target, tmp192
	cmpq	-136(%rbp), %rax	# to, tmp192
	je	.L866	#,
	.loc 1 4400 0
	movl	-148(%rbp), %edx	# unsignedp, tmp193
	movq	-96(%rbp), %rcx	# target, tmp194
	movq	-136(%rbp), %rax	# to, tmp195
	movq	%rcx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	convert_move	#
	.loc 1 4401 0
	jmp	.L856	#
.L866:
	jmp	.L856	#
.L860:
.LBE53:
	.loc 1 4375 0
	movl	-108(%rbp), %eax	# imode, imode.366
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp197
	movl	%eax, -108(%rbp)	# tmp197, imode
.L858:
	.loc 1 4374 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, imode
	jne	.L868	#,
	.loc 1 4373 0
	movl	-112(%rbp), %eax	# fmode, fmode.367
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp199
	movl	%eax, -112(%rbp)	# tmp199, fmode
.L857:
	.loc 1 4372 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, fmode
	jne	.L869	#,
	.loc 1 4415 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L870	#,
	.loc 1 4415 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# to, tmp200
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18299
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18300
	cmpw	$64, %ax	#, D.18300
	ja	.L870	#,
	.loc 1 4416 0 is_stmt 1
	movq	-144(%rbp), %rax	# from, tmp202
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp203
	movl	%eax, -112(%rbp)	# tmp203, fmode
	jmp	.L871	#
.L877:
	.loc 1 4419 0
	movl	-112(%rbp), %eax	# fmode, fmode.368
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.18300
	movq	-136(%rbp), %rax	# to, tmp205
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18299
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18300
	cmpw	%ax, %dx	# D.18300, D.18300
	jbe	.L872	#,
	.loc 1 4420 0
	movq	-136(%rbp), %rax	# to, tmp207
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18301
	leaq	-120(%rbp), %rdx	#, tmp208
	movl	-112(%rbp), %esi	# fmode, tmp209
	movq	%rdx, %rcx	# tmp208,
	movl	$0, %edx	#,
	movl	%eax, %edi	# D.18301,
	call	can_fix_p	#
	cmpl	$1317, %eax	#, D.18302
	je	.L872	#,
.LBB54:
	.loc 1 4427 0
	movq	-136(%rbp), %rax	# to, tmp210
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18299
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18300
	movzwl	%ax, %eax	# D.18300, tmp212
	movl	%eax, -100(%rbp)	# tmp212, bitsize
	.loc 1 4428 0
	movl	-100(%rbp), %eax	# bitsize, tmp213
	leal	-1(%rax), %ecx	#, D.18299
	leaq	-32(%rbp), %rax	#, tmp214
	movq	dconst1(%rip), %rdx	# dconst1, tmp216
	movq	%rdx, (%rsp)	# tmp216,
	movq	dconst1+8(%rip), %rdx	# dconst1, tmp217
	movq	%rdx, 8(%rsp)	# tmp217,
	movq	dconst1+16(%rip), %rdx	# dconst1, tmp218
	movq	%rdx, 16(%rsp)	# tmp218,
	movl	%ecx, %esi	# D.18299,
	movq	%rax, %rdi	# tmp214,
	call	ereal_ldexp	#
	.loc 1 4429 0
	movl	-112(%rbp), %eax	# fmode, tmp219
	movq	-32(%rbp), %rdx	# offset, tmp220
	movq	%rdx, (%rsp)	# tmp220,
	movq	-24(%rbp), %rdx	# offset, tmp221
	movq	%rdx, 8(%rsp)	# tmp221,
	movq	-16(%rbp), %rdx	# offset, tmp222
	movq	%rdx, 16(%rsp)	# tmp222,
	movl	%eax, %edi	# tmp219,
	call	immed_real_const_1	#
	movq	%rax, -80(%rbp)	# tmp223, limit
	.loc 1 4430 0
	call	gen_label_rtx	#
	movq	%rax, -72(%rbp)	# tmp224, lab1
	.loc 1 4431 0
	call	gen_label_rtx	#
	movq	%rax, -64(%rbp)	# tmp225, lab2
	.loc 1 4433 0
	call	emit_queue	#
	.loc 1 4434 0
	movq	-136(%rbp), %rax	# to, tmp226
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp227, to
	.loc 1 4435 0
	movq	-144(%rbp), %rax	# from, tmp228
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp229, from
	.loc 1 4437 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.369
	testl	%eax, %eax	# flag_force_mem.369
	je	.L873	#,
	.loc 1 4438 0
	movq	-144(%rbp), %rax	# from, tmp230
	movq	%rax, %rdi	# tmp230,
	call	force_not_mem	#
	movq	%rax, -144(%rbp)	# tmp231, from
.L873:
	.loc 1 4440 0
	movq	-144(%rbp), %rax	# from, tmp232
	movzbl	2(%rax), %eax	# from_4->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18298
	cmpl	-112(%rbp), %eax	# fmode, D.18298
	je	.L874	#,
	.loc 1 4441 0
	movq	-144(%rbp), %rcx	# from, tmp233
	movl	-112(%rbp), %eax	# fmode, tmp234
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp233,
	movl	%eax, %edi	# tmp234,
	call	convert_to_mode	#
	movq	%rax, -144(%rbp)	# tmp235, from
.L874:
	.loc 1 4444 0
	call	do_pending_stack_adjust	#
	.loc 1 4445 0
	movq	-144(%rbp), %rax	# from, tmp236
	movzbl	2(%rax), %eax	# from_5->mode, D.18297
	movzbl	%al, %ecx	# D.18297, D.18301
	movq	-80(%rbp), %rsi	# limit, tmp237
	movq	-144(%rbp), %rax	# from, tmp238
	movq	-72(%rbp), %rdx	# lab1, tmp239
	movq	%rdx, (%rsp)	# tmp239,
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# D.18301,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp238,
	call	emit_cmp_and_jump_insns	#
	.loc 1 4449 0
	movq	-144(%rbp), %rcx	# from, tmp240
	movq	-136(%rbp), %rax	# to, tmp241
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	expand_fix	#
	.loc 1 4450 0
	movq	-64(%rbp), %rax	# lab2, tmp242
	movq	%rax, %rdi	# tmp242,
	call	gen_jump	#
	movq	%rax, %rdi	# D.18303,
	call	emit_jump_insn	#
	.loc 1 4451 0
	call	emit_barrier	#
	.loc 1 4456 0
	movq	-72(%rbp), %rax	# lab1, tmp243
	movq	%rax, %rdi	# tmp243,
	call	emit_label	#
	.loc 1 4457 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.18304
	movq	-144(%rbp), %rax	# from, tmp244
	movzbl	2(%rax), %eax	# from_5->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18301
	movq	-80(%rbp), %rcx	# limit, tmp245
	movq	-144(%rbp), %rdx	# from, tmp246
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# D.18301,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp247, target
	.loc 1 4459 0
	movq	-96(%rbp), %rcx	# target, tmp248
	movq	-136(%rbp), %rax	# to, tmp249
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	expand_fix	#
	.loc 1 4461 0
	movq	-136(%rbp), %rax	# to, tmp250
	movzbl	2(%rax), %eax	# to_84->mode, D.18297
	.loc 1 4460 0
	movzbl	%al, %eax	# D.18297, D.18301
	.loc 1 4461 0
	movl	-100(%rbp), %edx	# bitsize, tmp251
	subl	$1, %edx	#, D.18299
	.loc 1 4460 0
	movl	$1, %esi	#, tmp252
	movl	%edx, %ecx	# D.18299, tmp320
	salq	%cl, %rsi	# tmp320, D.18305
	movq	%rsi, %rdx	# D.18305, D.18305
	movl	%eax, %esi	# D.18301,
	movq	%rdx, %rdi	# D.18305,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.18305,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.18303
	movq	optab_table+160(%rip), %rsi	# optab_table, D.18304
	movq	-136(%rbp), %rax	# to, tmp253
	movzbl	2(%rax), %eax	# to_84->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18301
	movq	-136(%rbp), %rdi	# to, tmp254
	movq	-136(%rbp), %rdx	# to, tmp255
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp254,
	movl	%eax, %edi	# D.18301,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp256, target
	.loc 1 4466 0
	movq	-96(%rbp), %rax	# target, tmp257
	cmpq	-136(%rbp), %rax	# to, tmp257
	je	.L875	#,
	.loc 1 4467 0
	movq	-96(%rbp), %rdx	# target, tmp258
	movq	-136(%rbp), %rax	# to, tmp259
	movq	%rdx, %rsi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	emit_move_insn	#
.L875:
	.loc 1 4469 0
	movq	-64(%rbp), %rax	# lab2, tmp260
	movq	%rax, %rdi	# tmp260,
	call	emit_label	#
	.loc 1 4471 0
	movq	optab_table+240(%rip), %rdx	# optab_table, D.18304
	movq	-136(%rbp), %rax	# to, tmp261
	movzbl	2(%rax), %eax	# to_84->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18299
	cltq
	salq	$4, %rax	#, tmp263
	addq	%rdx, %rax	# D.18304, tmp264
	movl	8(%rax), %eax	# _108->handlers[_110].insn_code, D.18302
	cmpl	$1317, %eax	#, D.18302
	je	.L876	#,
	.loc 1 4475 0
	movq	-136(%rbp), %rdx	# to, tmp265
	movq	-136(%rbp), %rax	# to, tmp266
	movq	%rdx, %rsi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	emit_move_insn	#
	movq	%rax, -56(%rbp)	# tmp267, insn
	.loc 1 4476 0
	movq	-144(%rbp), %rax	# from, tmp268
	movq	%rax, %rdi	# tmp268,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.18303
	.loc 1 4479 0
	movq	-136(%rbp), %rax	# to, tmp269
	movzbl	2(%rax), %eax	# to_84->mode, D.18297
	.loc 1 4476 0
	movzbl	%al, %eax	# D.18297, D.18301
	movl	%eax, %esi	# D.18301,
	movl	$128, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdx	#, D.18303
	movq	-56(%rbp), %rax	# insn, tmp270
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp270,
	call	set_unique_reg_note	#
.L876:
	.loc 1 4483 0
	nop
	jmp	.L856	#
.L872:
.LBE54:
	.loc 1 4417 0
	movl	-112(%rbp), %eax	# fmode, fmode.370
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.18297
	movzbl	%al, %eax	# D.18297, tmp272
	movl	%eax, -112(%rbp)	# tmp272, fmode
.L871:
	.loc 1 4416 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, fmode
	jne	.L877	#,
.L870:
	.loc 1 4491 0
	movq	-136(%rbp), %rax	# to, tmp273
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	movzbl	%al, %eax	# D.18297, D.18299
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18297
	movzbl	mode_size+4(%rip), %eax	# mode_size, D.18297
	cmpb	%al, %dl	# D.18297, D.18297
	jae	.L878	#,
	.loc 1 4493 0
	movl	$4, %edi	#,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp275, target
	.loc 1 4495 0
	movl	-148(%rbp), %edx	# unsignedp, tmp276
	movq	-144(%rbp), %rcx	# from, tmp277
	movq	-96(%rbp), %rax	# target, tmp278
	movq	%rcx, %rsi	# tmp277,
	movq	%rax, %rdi	# tmp278,
	call	expand_fix	#
	jmp	.L879	#
.L878:
	.loc 1 4497 0
	movq	-144(%rbp), %rax	# from, tmp279
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	cmpb	$15, %al	#, D.18297
	jne	.L880	#,
	.loc 1 4499 0
	movq	-136(%rbp), %rax	# to, tmp280
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$4, %al	#, D.18297
	jne	.L881	#,
	.loc 1 4500 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L882	#,
	.loc 1 4500 0 is_stmt 0 discriminator 1
	movq	libfunc_table+664(%rip), %rax	# libfunc_table, iftmp.371
	jmp	.L883	#
.L882:
	.loc 1 4500 0 discriminator 2
	movq	libfunc_table+568(%rip), %rax	# libfunc_table, iftmp.371
.L883:
	.loc 1 4500 0 discriminator 1
	movq	%rax, -88(%rbp)	# iftmp.371, libfcn
	jmp	.L879	#
.L881:
	.loc 1 4501 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp281
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$5, %al	#, D.18297
	jne	.L884	#,
	.loc 1 4502 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L885	#,
	.loc 1 4502 0 is_stmt 0 discriminator 1
	movq	libfunc_table+672(%rip), %rax	# libfunc_table, iftmp.372
	jmp	.L886	#
.L885:
	.loc 1 4502 0 discriminator 2
	movq	libfunc_table+576(%rip), %rax	# libfunc_table, iftmp.372
.L886:
	.loc 1 4502 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.372, libfcn
	jmp	.L879	#
.L884:
	.loc 1 4503 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp282
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$6, %al	#, D.18297
	jne	.L887	#,
	.loc 1 4504 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L888	#,
	.loc 1 4504 0 is_stmt 0 discriminator 1
	movq	libfunc_table+680(%rip), %rax	# libfunc_table, iftmp.373
	jmp	.L889	#
.L888:
	.loc 1 4504 0 discriminator 2
	movq	libfunc_table+584(%rip), %rax	# libfunc_table, iftmp.373
.L889:
	.loc 1 4504 0 discriminator 4
	movq	%rax, -88(%rbp)	# iftmp.373, libfcn
	jmp	.L879	#
.L887:
	.loc 1 4506 0 is_stmt 1
	movl	$__FUNCTION__.14190, %edx	#,
	movl	$4506, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L880:
	.loc 1 4508 0
	movq	-144(%rbp), %rax	# from, tmp283
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	cmpb	$16, %al	#, D.18297
	jne	.L890	#,
	.loc 1 4510 0
	movq	-136(%rbp), %rax	# to, tmp284
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$4, %al	#, D.18297
	jne	.L891	#,
	.loc 1 4511 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L892	#,
	.loc 1 4511 0 is_stmt 0 discriminator 1
	movq	libfunc_table+688(%rip), %rax	# libfunc_table, iftmp.374
	jmp	.L893	#
.L892:
	.loc 1 4511 0 discriminator 2
	movq	libfunc_table+592(%rip), %rax	# libfunc_table, iftmp.374
.L893:
	.loc 1 4511 0 discriminator 5
	movq	%rax, -88(%rbp)	# iftmp.374, libfcn
	jmp	.L879	#
.L891:
	.loc 1 4512 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp285
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$5, %al	#, D.18297
	jne	.L894	#,
	.loc 1 4513 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L895	#,
	.loc 1 4513 0 is_stmt 0 discriminator 1
	movq	libfunc_table+696(%rip), %rax	# libfunc_table, iftmp.375
	jmp	.L896	#
.L895:
	.loc 1 4513 0 discriminator 2
	movq	libfunc_table+600(%rip), %rax	# libfunc_table, iftmp.375
.L896:
	.loc 1 4513 0 discriminator 7
	movq	%rax, -88(%rbp)	# iftmp.375, libfcn
	jmp	.L879	#
.L894:
	.loc 1 4514 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp286
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$6, %al	#, D.18297
	jne	.L897	#,
	.loc 1 4515 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L898	#,
	.loc 1 4515 0 is_stmt 0 discriminator 1
	movq	libfunc_table+704(%rip), %rax	# libfunc_table, iftmp.376
	jmp	.L899	#
.L898:
	.loc 1 4515 0 discriminator 2
	movq	libfunc_table+608(%rip), %rax	# libfunc_table, iftmp.376
.L899:
	.loc 1 4515 0 discriminator 8
	movq	%rax, -88(%rbp)	# iftmp.376, libfcn
	jmp	.L879	#
.L897:
	.loc 1 4517 0 is_stmt 1
	movl	$__FUNCTION__.14190, %edx	#,
	movl	$4517, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L890:
	.loc 1 4519 0
	movq	-144(%rbp), %rax	# from, tmp287
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	cmpb	$17, %al	#, D.18297
	jne	.L900	#,
	.loc 1 4521 0
	movq	-136(%rbp), %rax	# to, tmp288
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$4, %al	#, D.18297
	jne	.L901	#,
	.loc 1 4522 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L902	#,
	.loc 1 4522 0 is_stmt 0 discriminator 1
	movq	libfunc_table+712(%rip), %rax	# libfunc_table, iftmp.377
	jmp	.L903	#
.L902:
	.loc 1 4522 0 discriminator 2
	movq	libfunc_table+616(%rip), %rax	# libfunc_table, iftmp.377
.L903:
	.loc 1 4522 0 discriminator 9
	movq	%rax, -88(%rbp)	# iftmp.377, libfcn
	jmp	.L879	#
.L901:
	.loc 1 4523 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp289
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$5, %al	#, D.18297
	jne	.L904	#,
	.loc 1 4524 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L905	#,
	.loc 1 4524 0 is_stmt 0 discriminator 1
	movq	libfunc_table+720(%rip), %rax	# libfunc_table, iftmp.378
	jmp	.L906	#
.L905:
	.loc 1 4524 0 discriminator 2
	movq	libfunc_table+624(%rip), %rax	# libfunc_table, iftmp.378
.L906:
	.loc 1 4524 0 discriminator 11
	movq	%rax, -88(%rbp)	# iftmp.378, libfcn
	jmp	.L879	#
.L904:
	.loc 1 4525 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp290
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$6, %al	#, D.18297
	jne	.L907	#,
	.loc 1 4526 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L908	#,
	.loc 1 4526 0 is_stmt 0 discriminator 1
	movq	libfunc_table+728(%rip), %rax	# libfunc_table, iftmp.379
	jmp	.L909	#
.L908:
	.loc 1 4526 0 discriminator 2
	movq	libfunc_table+632(%rip), %rax	# libfunc_table, iftmp.379
.L909:
	.loc 1 4526 0 discriminator 12
	movq	%rax, -88(%rbp)	# iftmp.379, libfcn
	jmp	.L879	#
.L907:
	.loc 1 4528 0 is_stmt 1
	movl	$__FUNCTION__.14190, %edx	#,
	movl	$4528, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L900:
	.loc 1 4530 0
	movq	-144(%rbp), %rax	# from, tmp291
	movzbl	2(%rax), %eax	# from_32(D)->mode, D.18297
	cmpb	$18, %al	#, D.18297
	jne	.L910	#,
	.loc 1 4532 0
	movq	-136(%rbp), %rax	# to, tmp292
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$4, %al	#, D.18297
	jne	.L911	#,
	.loc 1 4533 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L912	#,
	.loc 1 4533 0 is_stmt 0 discriminator 1
	movq	libfunc_table+736(%rip), %rax	# libfunc_table, iftmp.380
	jmp	.L913	#
.L912:
	.loc 1 4533 0 discriminator 2
	movq	libfunc_table+640(%rip), %rax	# libfunc_table, iftmp.380
.L913:
	.loc 1 4533 0 discriminator 13
	movq	%rax, -88(%rbp)	# iftmp.380, libfcn
	jmp	.L879	#
.L911:
	.loc 1 4534 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp293
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$5, %al	#, D.18297
	jne	.L914	#,
	.loc 1 4535 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L915	#,
	.loc 1 4535 0 is_stmt 0 discriminator 1
	movq	libfunc_table+744(%rip), %rax	# libfunc_table, iftmp.381
	jmp	.L916	#
.L915:
	.loc 1 4535 0 discriminator 2
	movq	libfunc_table+648(%rip), %rax	# libfunc_table, iftmp.381
.L916:
	.loc 1 4535 0 discriminator 15
	movq	%rax, -88(%rbp)	# iftmp.381, libfcn
	jmp	.L879	#
.L914:
	.loc 1 4536 0 is_stmt 1
	movq	-136(%rbp), %rax	# to, tmp294
	movzbl	2(%rax), %eax	# to_29(D)->mode, D.18297
	cmpb	$6, %al	#, D.18297
	jne	.L917	#,
	.loc 1 4537 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L918	#,
	.loc 1 4537 0 is_stmt 0 discriminator 1
	movq	libfunc_table+752(%rip), %rax	# libfunc_table, iftmp.382
	jmp	.L919	#
.L918:
	.loc 1 4537 0 discriminator 2
	movq	libfunc_table+656(%rip), %rax	# libfunc_table, iftmp.382
.L919:
	.loc 1 4537 0 discriminator 16
	movq	%rax, -88(%rbp)	# iftmp.382, libfcn
	jmp	.L879	#
.L917:
	.loc 1 4539 0 is_stmt 1
	movl	$__FUNCTION__.14190, %edx	#,
	movl	$4539, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L910:
	.loc 1 4542 0
	movl	$__FUNCTION__.14190, %edx	#,
	movl	$4542, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L879:
	.loc 1 4544 0
	cmpq	$0, -88(%rbp)	#, libfcn
	je	.L920	#,
.LBB55:
	.loc 1 4549 0
	movq	-136(%rbp), %rax	# to, tmp295
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp296, to
	.loc 1 4550 0
	movq	-144(%rbp), %rax	# from, tmp297
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp297,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp298, from
	.loc 1 4552 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.383
	testl	%eax, %eax	# flag_force_mem.383
	je	.L921	#,
	.loc 1 4553 0
	movq	-144(%rbp), %rax	# from, tmp299
	movq	%rax, %rdi	# tmp299,
	call	force_not_mem	#
	movq	%rax, -144(%rbp)	# tmp300, from
.L921:
	.loc 1 4555 0
	call	start_sequence	#
	.loc 1 4559 0
	movq	-144(%rbp), %rax	# from, tmp301
	movzbl	2(%rax), %eax	# from_6->mode, D.18297
	.loc 1 4557 0
	movzbl	%al, %ecx	# D.18297, D.18298
	.loc 1 4558 0
	movq	-136(%rbp), %rax	# to, tmp302
	movzbl	2(%rax), %eax	# to_177->mode, D.18297
	.loc 1 4557 0
	movzbl	%al, %edx	# D.18297, D.18301
	movq	-144(%rbp), %rsi	# from, tmp303
	movq	-88(%rbp), %rax	# libfcn, tmp304
	movl	%ecx, (%rsp)	# D.18298,
	movq	%rsi, %r9	# tmp303,
	movl	$1, %r8d	#,
	movl	%edx, %ecx	# D.18301,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp304,
	movl	$0, %eax	#,
	call	emit_library_call_value	#
	movq	%rax, -48(%rbp)	# tmp305, value
	.loc 1 4560 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp306, insns
	.loc 1 4561 0
	call	end_sequence	#
	.loc 1 4565 0
	movq	-136(%rbp), %rax	# to, tmp307
	movzbl	2(%rax), %eax	# to_177->mode, D.18297
	.loc 1 4563 0
	movzbl	%al, %ecx	# D.18297, D.18301
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L922	#,
	.loc 1 4563 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.384
	jmp	.L923	#
.L922:
	.loc 1 4563 0 discriminator 2
	movl	$126, %eax	#, iftmp.384
.L923:
	.loc 1 4563 0 discriminator 3
	movq	-144(%rbp), %rdx	# from, tmp308
	movl	%ecx, %esi	# D.18301,
	movl	%eax, %edi	# iftmp.384,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.18303
	movq	-48(%rbp), %rdx	# value, tmp309
	movq	-96(%rbp), %rsi	# target, tmp310
	movq	-40(%rbp), %rax	# insns, tmp311
	movq	%rax, %rdi	# tmp311,
	call	emit_libcall_block	#
.L920:
.LBE55:
	.loc 1 4568 0 is_stmt 1
	movq	-96(%rbp), %rax	# target, tmp312
	cmpq	-136(%rbp), %rax	# to, tmp312
	je	.L856	#,
	.loc 1 4570 0
	movq	-136(%rbp), %rax	# to, tmp313
	movzbl	2(%rax), %edx	# to_1->mode, D.18297
	movq	-96(%rbp), %rax	# target, tmp314
	movzbl	2(%rax), %eax	# target_9->mode, D.18297
	cmpb	%al, %dl	# D.18297, D.18297
	jne	.L925	#,
	.loc 1 4571 0
	movq	-96(%rbp), %rdx	# target, tmp315
	movq	-136(%rbp), %rax	# to, tmp316
	movq	%rdx, %rsi	# tmp315,
	movq	%rax, %rdi	# tmp316,
	call	emit_move_insn	#
	jmp	.L856	#
.L925:
	.loc 1 4573 0
	movq	-96(%rbp), %rcx	# target, tmp317
	movq	-136(%rbp), %rax	# to, tmp318
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp317,
	movq	%rax, %rdi	# tmp318,
	call	convert_move	#
.L856:
	.loc 1 4575 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	expand_fix, .-expand_fix
	.globl	have_insn_for
	.type	have_insn_for, @function
have_insn_for:
.LFB43:
	.loc 1 4583 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# code, code
	movl	%esi, -8(%rbp)	# mode, mode
	.loc 1 4584 0
	movl	-4(%rbp), %eax	# code, code.386
	cltq
	movq	code_to_optab(,%rax,8), %rax	# code_to_optab, D.18307
	.loc 1 4585 0
	testq	%rax, %rax	# D.18307
	je	.L928	#,
	.loc 1 4585 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# code, code.387
	cltq
	movq	code_to_optab(,%rax,8), %rax	# code_to_optab, D.18307
	movl	-8(%rbp), %edx	# mode, mode.388
	movslq	%edx, %rdx	# mode.388, tmp70
	salq	$4, %rdx	#, tmp71
	addq	%rdx, %rax	# tmp71, tmp72
	movl	8(%rax), %eax	# _6->handlers[mode.388_8].insn_code, D.18308
	cmpl	$1317, %eax	#, D.18308
	je	.L928	#,
	.loc 1 4585 0 discriminator 3
	movl	$1, %eax	#, iftmp.385
	jmp	.L929	#
.L928:
	.loc 1 4585 0 discriminator 2
	movl	$0, %eax	#, iftmp.385
.L929:
	.loc 1 4587 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	have_insn_for, .-have_insn_for
	.type	new_optab, @function
new_optab:
.LFB44:
	.loc 1 4592 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4594 0
	movl	$952, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp61, op
	.loc 1 4595 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L932	#
.L933:
	.loc 1 4597 0 discriminator 2
	movq	-8(%rbp), %rax	# op, tmp62
	movl	-12(%rbp), %edx	# i, tmp64
	movslq	%edx, %rdx	# tmp64, tmp63
	salq	$4, %rdx	#, tmp65
	addq	%rdx, %rax	# tmp65, tmp66
	movl	$1317, 8(%rax)	#, op_2->handlers[i_1].insn_code
	.loc 1 4598 0 discriminator 2
	movq	-8(%rbp), %rax	# op, tmp67
	movl	-12(%rbp), %edx	# i, tmp69
	movslq	%edx, %rdx	# tmp69, tmp68
	salq	$4, %rdx	#, tmp70
	addq	%rdx, %rax	# tmp70, tmp71
	addq	$16, %rax	#, tmp72
	movq	$0, (%rax)	#, op_2->handlers[i_1].libfunc
	.loc 1 4595 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L932:
	.loc 1 4595 0 is_stmt 0 discriminator 1
	cmpl	$58, -12(%rbp)	#, i
	jle	.L933	#,
	.loc 1 4601 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, D.18310
	.loc 1 4602 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	new_optab, .-new_optab
	.type	init_optab, @function
init_optab:
.LFB45:
	.loc 1 4609 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	.loc 1 4610 0
	call	new_optab	#
	movq	%rax, -8(%rbp)	# tmp62, op
	.loc 1 4611 0
	movq	-8(%rbp), %rax	# op, tmp63
	movl	-20(%rbp), %edx	# code, tmp64
	movl	%edx, (%rax)	# tmp64, op_1->code
	.loc 1 4612 0
	movl	-20(%rbp), %eax	# code, code.400
	cltq
	movq	-8(%rbp), %rdx	# op, tmp66
	movq	%rdx, code_to_optab(,%rax,8)	# tmp66, code_to_optab
	.loc 1 4613 0
	movq	-8(%rbp), %rax	# op, D.18311
	.loc 1 4614 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	init_optab, .-init_optab
	.type	init_optabv, @function
init_optabv:
.LFB46:
	.loc 1 4621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	.loc 1 4622 0
	call	new_optab	#
	movq	%rax, -8(%rbp)	# tmp61, op
	.loc 1 4623 0
	movq	-8(%rbp), %rax	# op, tmp62
	movl	-20(%rbp), %edx	# code, tmp63
	movl	%edx, (%rax)	# tmp63, op_1->code
	.loc 1 4624 0
	movq	-8(%rbp), %rax	# op, D.18312
	.loc 1 4625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	init_optabv, .-init_optabv
	.type	init_libfuncs, @function
init_libfuncs:
.LFB47:
	.loc 1 4651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# optable, optable
	movl	%esi, -76(%rbp)	# first_mode, first_mode
	movl	%edx, -80(%rbp)	# last_mode, last_mode
	movq	%rcx, -88(%rbp)	# opname, opname
	movl	%r8d, -92(%rbp)	# suffix, suffix
	.loc 1 4653 0
	movq	-88(%rbp), %rax	# opname, tmp88
	movq	%rax, %rdi	# tmp88,
	call	strlen	#
	movl	%eax, -56(%rbp)	# D.18313, opname_len
	.loc 1 4655 0
	movl	-76(%rbp), %eax	# first_mode, tmp89
	movl	%eax, -60(%rbp)	# tmp89, mode
	jmp	.L940	#
.L947:
.LBB56:
	.loc 1 4658 0
	movl	-60(%rbp), %eax	# mode, tmp91
	cltq
	movq	mode_name(,%rax,8), %rax	# mode_name, tmp92
	movq	%rax, -32(%rbp)	# tmp92, mname
	.loc 1 4659 0
	movq	-32(%rbp), %rax	# mname, tmp93
	movq	%rax, %rdi	# tmp93,
	call	strlen	#
	movl	%eax, -52(%rbp)	# D.18313, mname_len
	.loc 1 4660 0
	movl	-52(%rbp), %eax	# mname_len, tmp94
	movl	-56(%rbp), %edx	# opname_len, tmp95
	addl	%edx, %eax	# tmp95, D.18314
	addl	$4, %eax	#, D.18314
	movl	%eax, %eax	# D.18314, D.18313
	leaq	15(%rax), %rdx	#, tmp96
	movl	$16, %eax	#, tmp130
	subq	$1, %rax	#, tmp97
	addq	%rdx, %rax	# tmp96, tmp98
	movl	$16, %ebx	#, tmp131
	movl	$0, %edx	#, tmp101
	divq	%rbx	# tmp131
	imulq	$16, %rax, %rax	#, tmp100, tmp102
	subq	%rax, %rsp	# tmp102,
	movq	%rsp, %rax	#, tmp103
	addq	$15, %rax	#, tmp104
	shrq	$4, %rax	#, tmp105
	salq	$4, %rax	#, tmp106
	movq	%rax, -24(%rbp)	# tmp106, libfunc_name
	.loc 1 4664 0
	movq	-24(%rbp), %rax	# libfunc_name, tmp107
	movq	%rax, -48(%rbp)	# tmp107, p
	.loc 1 4665 0
	movq	-48(%rbp), %rax	# p, p.389
	leaq	1(%rax), %rdx	#, tmp108
	movq	%rdx, -48(%rbp)	# tmp108, p
	movb	$95, (%rax)	#, *p.389_21
	.loc 1 4666 0
	movq	-48(%rbp), %rax	# p, p.390
	leaq	1(%rax), %rdx	#, tmp109
	movq	%rdx, -48(%rbp)	# tmp109, p
	movb	$95, (%rax)	#, *p.390_23
	.loc 1 4667 0
	movq	-88(%rbp), %rax	# opname, tmp110
	movq	%rax, -40(%rbp)	# tmp110, q
	jmp	.L941	#
.L942:
	.loc 1 4668 0
	movq	-48(%rbp), %rax	# p, p.391
	leaq	1(%rax), %rdx	#, tmp111
	movq	%rdx, -48(%rbp)	# tmp111, p
	movq	-40(%rbp), %rdx	# q, q.392
	leaq	1(%rdx), %rcx	#, tmp112
	movq	%rcx, -40(%rbp)	# tmp112, q
	movzbl	(%rdx), %edx	# *q.392_29, D.18315
	movb	%dl, (%rax)	# D.18315, *p.391_27
.L941:
	.loc 1 4667 0 discriminator 1
	movq	-40(%rbp), %rax	# q, tmp113
	movzbl	(%rax), %eax	# *q_4, D.18315
	testb	%al, %al	# D.18315
	jne	.L942	#,
	.loc 1 4669 0
	movq	-32(%rbp), %rax	# mname, tmp114
	movq	%rax, -40(%rbp)	# tmp114, q
	jmp	.L943	#
.L944:
	.loc 1 4670 0 discriminator 2
	movq	-48(%rbp), %rax	# p, p.393
	leaq	1(%rax), %rdx	#, tmp115
	movq	%rdx, -48(%rbp)	# tmp115, p
	movq	-40(%rbp), %rdx	# q, tmp116
	movzbl	(%rdx), %edx	# *q_5, D.18315
	movsbl	%dl, %edx	# D.18315, D.18316
	movzbl	%dl, %edx	# D.18316, D.18316
	movslq	%edx, %rdx	# D.18316, tmp117
	movzbl	_sch_tolower(%rdx), %edx	# _sch_tolower, D.18317
	movb	%dl, (%rax)	# D.18315, *p.393_34
	.loc 1 4669 0 discriminator 2
	addq	$1, -40(%rbp)	#, q
.L943:
	.loc 1 4669 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# q, tmp118
	movzbl	(%rax), %eax	# *q_5, D.18315
	testb	%al, %al	# D.18315
	jne	.L944	#,
	.loc 1 4671 0 is_stmt 1
	movq	-48(%rbp), %rax	# p, p.394
	leaq	1(%rax), %rdx	#, tmp119
	movq	%rdx, -48(%rbp)	# tmp119, p
	movl	-92(%rbp), %edx	# suffix, tmp120
	movb	%dl, (%rax)	# D.18315, *p.394_42
	.loc 1 4672 0
	movq	-48(%rbp), %rax	# p, tmp121
	movb	$0, (%rax)	#, *p_43
	.loc 1 4675 0
	movq	-48(%rbp), %rdx	# p, p.395
	movq	-24(%rbp), %rax	# libfunc_name, libfunc_name.396
	subq	%rax, %rdx	# libfunc_name.396, D.18318
	movq	%rdx, %rax	# D.18318, D.18318
	movl	%eax, %edx	# D.18318, D.18316
	movq	-24(%rbp), %rax	# libfunc_name, tmp122
	movl	%edx, %esi	# D.18316,
	movq	%rax, %rdi	# tmp122,
	call	ggc_alloc_string	#
	movq	%rax, %rdx	#, D.18319
	movl	target_flags(%rip), %eax	# target_flags, target_flags.398
	andl	$33554432, %eax	#, D.18316
	testl	%eax, %eax	# D.18316
	je	.L945	#,
	.loc 1 4675 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.397
	jmp	.L946	#
.L945:
	.loc 1 4675 0 discriminator 2
	movl	$4, %eax	#, iftmp.397
.L946:
	.loc 1 4675 0 discriminator 3
	movl	%eax, %esi	# iftmp.397,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	-72(%rbp), %rdx	# optable, tmp123
	movl	-60(%rbp), %ecx	# mode, tmp125
	movslq	%ecx, %rcx	# tmp125, tmp124
	salq	$4, %rcx	#, tmp126
	addq	%rcx, %rdx	# tmp126, tmp127
	addq	$16, %rdx	#, tmp128
	movq	%rax, (%rdx)	# D.18320, optable_56(D)->handlers[mode_1].libfunc
.LBE56:
	.loc 1 4656 0 is_stmt 1 discriminator 3
	addl	$1, -60(%rbp)	#, mode
.L940:
	.loc 1 4655 0 discriminator 1
	movl	-60(%rbp), %eax	# mode, tmp129
	cmpl	-80(%rbp), %eax	# last_mode, tmp129
	jle	.L947	#,
	.loc 1 4678 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	init_libfuncs, .-init_libfuncs
	.type	init_integral_libfuncs, @function
init_integral_libfuncs:
.LFB48:
	.loc 1 4690 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# optable, optable
	movq	%rsi, -16(%rbp)	# opname, opname
	movl	%edx, -20(%rbp)	# suffix, suffix
	.loc 1 4691 0
	movl	-20(%rbp), %ecx	# suffix, tmp59
	movq	-16(%rbp), %rdx	# opname, tmp60
	movq	-8(%rbp), %rax	# optable, tmp61
	movl	%ecx, %r8d	# tmp59,
	movq	%rdx, %rcx	# tmp60,
	movl	$6, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	init_libfuncs	#
	.loc 1 4692 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	init_integral_libfuncs, .-init_integral_libfuncs
	.type	init_floating_libfuncs, @function
init_floating_libfuncs:
.LFB49:
	.loc 1 4704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# optable, optable
	movq	%rsi, -16(%rbp)	# opname, opname
	movl	%edx, -20(%rbp)	# suffix, suffix
	.loc 1 4705 0
	movl	-20(%rbp), %ecx	# suffix, tmp59
	movq	-16(%rbp), %rdx	# opname, tmp60
	movq	-8(%rbp), %rax	# optable, tmp61
	movl	%ecx, %r8d	# tmp59,
	movq	%rdx, %rcx	# tmp60,
	movl	$18, %edx	#,
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	init_libfuncs	#
	.loc 1 4706 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	init_floating_libfuncs, .-init_floating_libfuncs
	.globl	init_one_libfunc
	.type	init_one_libfunc, @function
init_one_libfunc:
.LFB50:
	.loc 1 4711 0
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
	.loc 1 4715 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.18322
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18322,
	call	build_function_type	#
	movq	%rax, %rbx	#, D.18322
	movq	-40(%rbp), %rax	# name, tmp66
	movq	%rax, %rdi	# tmp66,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.18322,
	movq	%rax, %rsi	# D.18322,
	movl	$30, %edi	#,
	call	build_decl	#
	movq	%rax, -24(%rbp)	# tmp67, decl
	.loc 1 4717 0
	movq	-24(%rbp), %rax	# decl, tmp68
	movzbl	50(%rax), %edx	#, tmp71
	orl	$64, %edx	#, tmp72
	movb	%dl, 50(%rax)	# tmp72,
	.loc 1 4718 0
	movq	-24(%rbp), %rax	# decl, tmp73
	movzbl	49(%rax), %edx	#, tmp76
	orl	$1, %edx	#, tmp77
	movb	%dl, 49(%rax)	# tmp77,
	.loc 1 4719 0
	movq	-24(%rbp), %rax	# decl, tmp78
	movzbl	18(%rax), %edx	#, tmp81
	orl	$8, %edx	#, tmp82
	movb	%dl, 18(%rax)	# tmp82,
	.loc 1 4722 0
	movq	-24(%rbp), %rax	# decl, tmp83
	movq	144(%rax), %rax	# decl_6->decl.rtl, D.18323
	testq	%rax, %rax	# D.18323
	je	.L951	#,
	.loc 1 4722 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp84
	movq	144(%rax), %rax	# decl_6->decl.rtl, iftmp.399
	jmp	.L952	#
.L951:
	.loc 1 4722 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp85
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_6->decl.rtl, iftmp.399
.L952:
	.loc 1 4722 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.399_1->fld[0].rtx, D.18324
	.loc 1 4723 0 is_stmt 1 discriminator 3
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	init_one_libfunc, .-init_one_libfunc
	.globl	mark_optab
	.type	mark_optab, @function
mark_optab:
.LFB51:
	.loc 1 4730 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# arg, arg
	.loc 1 4731 0
	movq	-40(%rbp), %rax	# arg, tmp60
	movq	(%rax), %rax	# MEM[(struct optab * *)arg_2(D)], tmp61
	movq	%rax, -16(%rbp)	# tmp61, o
	.loc 1 4734 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L955	#
.L957:
.LBB57:
	.loc 1 4735 0
	movq	-16(%rbp), %rax	# o, tmp62
	movl	-20(%rbp), %edx	# i, tmp64
	movslq	%edx, %rdx	# tmp64, tmp63
	salq	$4, %rdx	#, tmp65
	addq	%rdx, %rax	# tmp65, tmp66
	addq	$16, %rax	#, tmp67
	movq	(%rax), %rax	# o_3->handlers[i_1].libfunc, tmp68
	movq	%rax, -8(%rbp)	# tmp68, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L956	#,
	.loc 1 4735 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp69
	movq	%rax, %rdi	# tmp69,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18325
	jne	.L956	#,
	movq	-8(%rbp), %rax	# r__, tmp70
	movq	%rax, %rdi	# tmp70,
	call	ggc_mark_rtx_children	#
.L956:
.LBE57:
	.loc 1 4734 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L955:
	.loc 1 4734 0 is_stmt 0 discriminator 1
	cmpl	$58, -20(%rbp)	#, i
	jle	.L957	#,
	.loc 1 4736 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	mark_optab, .-mark_optab
	.section	.rodata
.LC1:
	.string	"add"
.LC2:
	.string	"addv"
.LC3:
	.string	"sub"
.LC4:
	.string	"subv"
.LC5:
	.string	"mul"
.LC6:
	.string	"mulv"
.LC7:
	.string	"div"
.LC8:
	.string	"divv"
.LC9:
	.string	"udiv"
.LC10:
	.string	"divmod"
.LC11:
	.string	"udivmod"
.LC12:
	.string	"mod"
.LC13:
	.string	"umod"
.LC14:
	.string	"ftrunc"
.LC15:
	.string	"and"
.LC16:
	.string	"ior"
.LC17:
	.string	"xor"
.LC18:
	.string	"ashl"
.LC19:
	.string	"ashr"
.LC20:
	.string	"lshr"
.LC21:
	.string	"min"
.LC22:
	.string	"max"
.LC23:
	.string	"umin"
.LC24:
	.string	"umax"
.LC25:
	.string	"neg"
.LC26:
	.string	"negv"
.LC27:
	.string	"one_cmpl"
.LC28:
	.string	"ffs"
.LC29:
	.string	"cmp"
.LC30:
	.string	"ucmp"
.LC31:
	.string	"cabs"
.LC32:
	.string	"__extendsfdf2"
.LC33:
	.string	"__extendsfxf2"
.LC34:
	.string	"__extendsftf2"
.LC35:
	.string	"__extenddfxf2"
.LC36:
	.string	"__extenddftf2"
.LC37:
	.string	"__truncdfsf2"
.LC38:
	.string	"__truncxfsf2"
.LC39:
	.string	"__trunctfsf2"
.LC40:
	.string	"__truncxfdf2"
.LC41:
	.string	"__trunctfdf2"
.LC42:
	.string	"abort"
.LC43:
	.string	"memcpy"
.LC44:
	.string	"memmove"
.LC45:
	.string	"bcopy"
.LC46:
	.string	"memcmp"
.LC47:
	.string	"__gcc_bcmp"
.LC48:
	.string	"memset"
.LC49:
	.string	"bzero"
.LC50:
	.string	"_Unwind_Resume"
.LC51:
	.string	"__builtin_setjmp"
.LC52:
	.string	"__builtin_longjmp"
.LC53:
	.string	"_Unwind_SjLj_Register"
.LC54:
	.string	"_Unwind_SjLj_Unregister"
.LC55:
	.string	"__eqhf2"
.LC56:
	.string	"__nehf2"
.LC57:
	.string	"__gthf2"
.LC58:
	.string	"__gehf2"
.LC59:
	.string	"__lthf2"
.LC60:
	.string	"__lehf2"
.LC61:
	.string	"__unordhf2"
.LC62:
	.string	"__eqsf2"
.LC63:
	.string	"__nesf2"
.LC64:
	.string	"__gtsf2"
.LC65:
	.string	"__gesf2"
.LC66:
	.string	"__ltsf2"
.LC67:
	.string	"__lesf2"
.LC68:
	.string	"__unordsf2"
.LC69:
	.string	"__eqdf2"
.LC70:
	.string	"__nedf2"
.LC71:
	.string	"__gtdf2"
.LC72:
	.string	"__gedf2"
.LC73:
	.string	"__ltdf2"
.LC74:
	.string	"__ledf2"
.LC75:
	.string	"__unorddf2"
.LC76:
	.string	"__eqxf2"
.LC77:
	.string	"__nexf2"
.LC78:
	.string	"__gtxf2"
.LC79:
	.string	"__gexf2"
.LC80:
	.string	"__ltxf2"
.LC81:
	.string	"__lexf2"
.LC82:
	.string	"__unordxf2"
.LC83:
	.string	"__eqtf2"
.LC84:
	.string	"__netf2"
.LC85:
	.string	"__gttf2"
.LC86:
	.string	"__getf2"
.LC87:
	.string	"__lttf2"
.LC88:
	.string	"__letf2"
.LC89:
	.string	"__unordtf2"
.LC90:
	.string	"__floatsisf"
.LC91:
	.string	"__floatdisf"
.LC92:
	.string	"__floattisf"
.LC93:
	.string	"__floatsidf"
.LC94:
	.string	"__floatdidf"
.LC95:
	.string	"__floattidf"
.LC96:
	.string	"__floatsixf"
.LC97:
	.string	"__floatdixf"
.LC98:
	.string	"__floattixf"
.LC99:
	.string	"__floatsitf"
.LC100:
	.string	"__floatditf"
.LC101:
	.string	"__floattitf"
.LC102:
	.string	"__fixsfsi"
.LC103:
	.string	"__fixsfdi"
.LC104:
	.string	"__fixsfti"
.LC105:
	.string	"__fixdfsi"
.LC106:
	.string	"__fixdfdi"
.LC107:
	.string	"__fixdfti"
.LC108:
	.string	"__fixxfsi"
.LC109:
	.string	"__fixxfdi"
.LC110:
	.string	"__fixxfti"
.LC111:
	.string	"__fixtfsi"
.LC112:
	.string	"__fixtfdi"
.LC113:
	.string	"__fixtfti"
.LC114:
	.string	"__fixunssfsi"
.LC115:
	.string	"__fixunssfdi"
.LC116:
	.string	"__fixunssfti"
.LC117:
	.string	"__fixunsdfsi"
.LC118:
	.string	"__fixunsdfdi"
.LC119:
	.string	"__fixunsdfti"
.LC120:
	.string	"__fixunsxfsi"
.LC121:
	.string	"__fixunsxfdi"
.LC122:
	.string	"__fixunsxfti"
.LC123:
	.string	"__fixunstfsi"
.LC124:
	.string	"__fixunstfdi"
.LC125:
	.string	"__fixunstfti"
.LC126:
	.string	"__cyg_profile_func_enter"
.LC127:
	.string	"__cyg_profile_func_exit"
	.text
	.globl	init_optabs
	.type	init_optabs, @function
init_optabs:
.LFB52:
	.loc 1 4743 0
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
	.loc 1 4748 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L959	#
.L964:
	.loc 1 4749 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L960	#
.L963:
	.loc 1 4750 0
	movl	$0, -20(%rbp)	#, k
	jmp	.L961	#
.L962:
	.loc 1 4751 0 discriminator 2
	movl	-20(%rbp), %esi	# k, tmp253
	movl	-28(%rbp), %ecx	# i, tmp254
	movl	-24(%rbp), %edi	# j, tmp255
	movq	%rcx, %rdx	# tmp254, tmp256
	leaq	0(,%rdx,4), %rax	#, tmp257
	movq	%rax, %rdx	# tmp257, tmp256
	movq	%rdx, %rax	# tmp256, tmp258
	salq	$4, %rax	#, tmp258
	subq	%rdx, %rax	# tmp256, tmp258
	subq	%rcx, %rax	# tmp254, tmp258
	addq	%rdi, %rax	# tmp255, tmp259
	addq	%rax, %rax	# tmp260
	addq	%rsi, %rax	# tmp253, tmp261
	movl	$1317, fixtab(,%rax,4)	#, fixtab
	.loc 1 4750 0 discriminator 2
	addl	$1, -20(%rbp)	#, k
.L961:
	.loc 1 4750 0 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)	#, k
	jbe	.L962	#,
	.loc 1 4749 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L960:
	.loc 1 4749 0 is_stmt 0 discriminator 1
	cmpl	$58, -24(%rbp)	#, j
	jbe	.L963	#,
	.loc 1 4748 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L959:
	.loc 1 4748 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L964	#,
	.loc 1 4753 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L965	#
.L970:
	.loc 1 4754 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L966	#
.L969:
	.loc 1 4755 0
	movl	$0, -20(%rbp)	#, k
	jmp	.L967	#
.L968:
	.loc 1 4756 0 discriminator 2
	movl	-20(%rbp), %esi	# k, tmp262
	movl	-28(%rbp), %ecx	# i, tmp263
	movl	-24(%rbp), %edi	# j, tmp264
	movq	%rcx, %rdx	# tmp263, tmp265
	leaq	0(,%rdx,4), %rax	#, tmp266
	movq	%rax, %rdx	# tmp266, tmp265
	movq	%rdx, %rax	# tmp265, tmp267
	salq	$4, %rax	#, tmp267
	subq	%rdx, %rax	# tmp265, tmp267
	subq	%rcx, %rax	# tmp263, tmp267
	addq	%rdi, %rax	# tmp264, tmp268
	addq	%rax, %rax	# tmp269
	addq	%rsi, %rax	# tmp262, tmp270
	movl	$1317, fixtrunctab(,%rax,4)	#, fixtrunctab
	.loc 1 4755 0 discriminator 2
	addl	$1, -20(%rbp)	#, k
.L967:
	.loc 1 4755 0 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)	#, k
	jbe	.L968	#,
	.loc 1 4754 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L966:
	.loc 1 4754 0 is_stmt 0 discriminator 1
	cmpl	$58, -24(%rbp)	#, j
	jbe	.L969	#,
	.loc 1 4753 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L965:
	.loc 1 4753 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L970	#,
	.loc 1 4758 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L971	#
.L976:
	.loc 1 4759 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L972	#
.L975:
	.loc 1 4760 0
	movl	$0, -20(%rbp)	#, k
	jmp	.L973	#
.L974:
	.loc 1 4761 0 discriminator 2
	movl	-20(%rbp), %esi	# k, tmp271
	movl	-28(%rbp), %ecx	# i, tmp272
	movl	-24(%rbp), %edi	# j, tmp273
	movq	%rcx, %rdx	# tmp272, tmp274
	leaq	0(,%rdx,4), %rax	#, tmp275
	movq	%rax, %rdx	# tmp275, tmp274
	movq	%rdx, %rax	# tmp274, tmp276
	salq	$4, %rax	#, tmp276
	subq	%rdx, %rax	# tmp274, tmp276
	subq	%rcx, %rax	# tmp272, tmp276
	addq	%rdi, %rax	# tmp273, tmp277
	addq	%rax, %rax	# tmp278
	addq	%rsi, %rax	# tmp271, tmp279
	movl	$1317, floattab(,%rax,4)	#, floattab
	.loc 1 4760 0 discriminator 2
	addl	$1, -20(%rbp)	#, k
.L973:
	.loc 1 4760 0 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)	#, k
	jbe	.L974	#,
	.loc 1 4759 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L972:
	.loc 1 4759 0 is_stmt 0 discriminator 1
	cmpl	$58, -24(%rbp)	#, j
	jbe	.L975	#,
	.loc 1 4758 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L971:
	.loc 1 4758 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L976	#,
	.loc 1 4763 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L977	#
.L982:
	.loc 1 4764 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L978	#
.L981:
	.loc 1 4765 0
	movl	$0, -20(%rbp)	#, k
	jmp	.L979	#
.L980:
	.loc 1 4766 0 discriminator 2
	movl	-20(%rbp), %esi	# k, tmp280
	movl	-28(%rbp), %ecx	# i, tmp281
	movl	-24(%rbp), %edi	# j, tmp282
	movq	%rcx, %rdx	# tmp281, tmp283
	leaq	0(,%rdx,4), %rax	#, tmp284
	movq	%rax, %rdx	# tmp284, tmp283
	movq	%rdx, %rax	# tmp283, tmp285
	salq	$4, %rax	#, tmp285
	subq	%rdx, %rax	# tmp283, tmp285
	subq	%rcx, %rax	# tmp281, tmp285
	addq	%rdi, %rax	# tmp282, tmp286
	addq	%rax, %rax	# tmp287
	addq	%rsi, %rax	# tmp280, tmp288
	movl	$1317, extendtab(,%rax,4)	#, extendtab
	.loc 1 4765 0 discriminator 2
	addl	$1, -20(%rbp)	#, k
.L979:
	.loc 1 4765 0 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)	#, k
	jbe	.L980	#,
	.loc 1 4764 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L978:
	.loc 1 4764 0 is_stmt 0 discriminator 1
	cmpl	$58, -24(%rbp)	#, j
	jbe	.L981	#,
	.loc 1 4763 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L977:
	.loc 1 4763 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L982	#,
	.loc 1 4768 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L983	#
.L984:
	.loc 1 4769 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp289
	movl	$1317, setcc_gen_code(,%rax,4)	#, setcc_gen_code
	.loc 1 4768 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L983:
	.loc 1 4768 0 is_stmt 0 discriminator 1
	cmpl	$152, -28(%rbp)	#, i
	jbe	.L984	#,
	.loc 1 4772 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L985	#
.L986:
	.loc 1 4773 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp290
	movl	$1317, movcc_gen_code(,%rax,4)	#, movcc_gen_code
	.loc 1 4772 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L985:
	.loc 1 4772 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L986	#,
	.loc 1 4776 0 is_stmt 1
	movl	$75, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table(%rip)	# D.18326, optab_table
	.loc 1 4777 0
	movl	$75, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+8(%rip)	# D.18326, optab_table
	.loc 1 4778 0
	movl	$76, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+16(%rip)	# D.18326, optab_table
	.loc 1 4779 0
	movl	$76, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+24(%rip)	# D.18326, optab_table
	.loc 1 4780 0
	movl	$78, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+32(%rip)	# D.18326, optab_table
	.loc 1 4781 0
	movl	$78, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+40(%rip)	# D.18326, optab_table
	.loc 1 4782 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+48(%rip)	# D.18326, optab_table
	.loc 1 4783 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+56(%rip)	# D.18326, optab_table
	.loc 1 4784 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+64(%rip)	# D.18326, optab_table
	.loc 1 4785 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+72(%rip)	# D.18326, optab_table
	.loc 1 4786 0
	movl	$79, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+80(%rip)	# D.18326, optab_table
	.loc 1 4787 0
	movl	$79, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+88(%rip)	# D.18326, optab_table
	.loc 1 4788 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+96(%rip)	# D.18326, optab_table
	.loc 1 4789 0
	movl	$81, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+104(%rip)	# D.18326, optab_table
	.loc 1 4790 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+112(%rip)	# D.18326, optab_table
	.loc 1 4791 0
	movl	$80, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+120(%rip)	# D.18326, optab_table
	.loc 1 4792 0
	movl	$82, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+128(%rip)	# D.18326, optab_table
	.loc 1 4793 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+136(%rip)	# D.18326, optab_table
	.loc 1 4794 0
	movl	$83, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+144(%rip)	# D.18326, optab_table
	.loc 1 4795 0
	movl	$84, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+152(%rip)	# D.18326, optab_table
	.loc 1 4796 0
	movl	$85, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+160(%rip)	# D.18326, optab_table
	.loc 1 4797 0
	movl	$87, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+168(%rip)	# D.18326, optab_table
	.loc 1 4798 0
	movl	$89, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+184(%rip)	# D.18326, optab_table
	.loc 1 4799 0
	movl	$90, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+176(%rip)	# D.18326, optab_table
	.loc 1 4800 0
	movl	$88, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+192(%rip)	# D.18326, optab_table
	.loc 1 4801 0
	movl	$91, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+200(%rip)	# D.18326, optab_table
	.loc 1 4802 0
	movl	$92, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+208(%rip)	# D.18326, optab_table
	.loc 1 4803 0
	movl	$93, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+216(%rip)	# D.18326, optab_table
	.loc 1 4804 0
	movl	$94, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+224(%rip)	# D.18326, optab_table
	.loc 1 4805 0
	movl	$95, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+232(%rip)	# D.18326, optab_table
	.loc 1 4809 0
	movl	$47, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+240(%rip)	# D.18326, optab_table
	.loc 1 4810 0
	movl	$64, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+248(%rip)	# D.18326, optab_table
	.loc 1 4811 0
	movl	$74, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+328(%rip)	# D.18326, optab_table
	.loc 1 4813 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+336(%rip)	# D.18326, optab_table
	.loc 1 4814 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+344(%rip)	# D.18326, optab_table
	.loc 1 4815 0
	movl	$77, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+256(%rip)	# D.18326, optab_table
	.loc 1 4816 0
	movl	$77, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+264(%rip)	# D.18326, optab_table
	.loc 1 4817 0
	movl	$129, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+272(%rip)	# D.18326, optab_table
	.loc 1 4818 0
	movl	$129, %edi	#,
	call	init_optabv	#
	movq	%rax, optab_table+280(%rip)	# D.18326, optab_table
	.loc 1 4819 0
	movl	$86, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+288(%rip)	# D.18326, optab_table
	.loc 1 4820 0
	movl	$131, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+296(%rip)	# D.18326, optab_table
	.loc 1 4821 0
	movl	$130, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+304(%rip)	# D.18326, optab_table
	.loc 1 4822 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+312(%rip)	# D.18326, optab_table
	.loc 1 4823 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+320(%rip)	# D.18326, optab_table
	.loc 1 4824 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+352(%rip)	# D.18326, optab_table
	.loc 1 4825 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+360(%rip)	# D.18326, optab_table
	.loc 1 4826 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+368(%rip)	# D.18326, optab_table
	.loc 1 4827 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+376(%rip)	# D.18326, optab_table
	.loc 1 4828 0
	movl	$0, %edi	#,
	call	init_optab	#
	movq	%rax, optab_table+384(%rip)	# D.18326, optab_table
	.loc 1 4830 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L987	#
.L988:
	.loc 1 4832 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp291
	movl	$1317, movstr_optab(,%rax,4)	#, movstr_optab
	.loc 1 4833 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp292
	movl	$1317, clrstr_optab(,%rax,4)	#, clrstr_optab
	.loc 1 4836 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp293
	movl	$1317, reload_out_optab(,%rax,4)	#, reload_out_optab
	movl	-28(%rbp), %eax	# i, tmp294
	movl	reload_out_optab(,%rax,4), %edx	# reload_out_optab, D.18327
	movl	-28(%rbp), %eax	# i, tmp295
	movl	%edx, reload_in_optab(,%rax,4)	# D.18327, reload_in_optab
	.loc 1 4830 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L987:
	.loc 1 4830 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, i
	jbe	.L988	#,
	.loc 1 4841 0 is_stmt 1
	call	init_all_optabs	#
	.loc 1 4852 0
	movq	optab_table(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4853 0
	movq	optab_table(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4854 0
	movq	optab_table+8(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4855 0
	movq	optab_table+8(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4856 0
	movq	optab_table+16(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4857 0
	movq	optab_table+16(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4858 0
	movq	optab_table+24(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4859 0
	movq	optab_table+24(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4860 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4861 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4862 0
	movq	optab_table+40(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4863 0
	movq	optab_table+40(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4864 0
	movq	optab_table+80(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4865 0
	movq	optab_table+80(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4866 0
	movq	optab_table+88(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4867 0
	movq	optab_table+104(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4868 0
	movq	optab_table+96(%rip), %rax	# optab_table, D.18326
	movl	$52, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4869 0
	movq	optab_table+112(%rip), %rax	# optab_table, D.18326
	movl	$52, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4870 0
	movq	optab_table+120(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4871 0
	movq	optab_table+128(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4872 0
	movq	optab_table+136(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4873 0
	movq	optab_table+144(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4874 0
	movq	optab_table+152(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4875 0
	movq	optab_table+160(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4876 0
	movq	optab_table+168(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4877 0
	movq	optab_table+184(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4878 0
	movq	optab_table+176(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4879 0
	movq	optab_table+208(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4880 0
	movq	optab_table+208(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4881 0
	movq	optab_table+216(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4882 0
	movq	optab_table+216(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4883 0
	movq	optab_table+224(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4884 0
	movq	optab_table+232(%rip), %rax	# optab_table, D.18326
	movl	$51, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4885 0
	movq	optab_table+256(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4886 0
	movq	optab_table+256(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4887 0
	movq	optab_table+264(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4888 0
	movq	optab_table+264(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4889 0
	movq	optab_table+288(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4890 0
	movq	optab_table+296(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4893 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4894 0
	movq	optab_table+336(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_integral_libfuncs	#
	.loc 1 4895 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18326
	movl	$50, %edx	#,
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# D.18326,
	call	init_floating_libfuncs	#
	.loc 1 4944 0
	movq	optab_table+272(%rip), %rbx	# optab_table, D.18326
	.loc 1 4945 0
	movl	$.LC31, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, 368(%rbx)	# D.18328, _138->handlers[22].libfunc
	.loc 1 4948 0
	movq	optab_table+296(%rip), %rbx	# optab_table, D.18326
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$32, %edi	#,
	call	mode_for_size	#
	movl	%eax, %r12d	# D.18329, D.18330
	.loc 1 4949 0
	movl	$.LC28, %edi	#,
	call	init_one_libfunc	#
	movslq	%r12d, %rdx	# D.18330, tmp296
	salq	$4, %rdx	#, tmp297
	addq	%rbx, %rdx	# D.18326, tmp298
	addq	$16, %rdx	#, tmp299
	movq	%rax, (%rdx)	# D.18328, _140->handlers[_142].libfunc
	.loc 1 4951 0
	movl	$.LC32, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table(%rip)	# D.18328, libfunc_table
	.loc 1 4952 0
	movl	$.LC33, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+8(%rip)	# D.18328, libfunc_table
	.loc 1 4953 0
	movl	$.LC34, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+16(%rip)	# D.18328, libfunc_table
	.loc 1 4954 0
	movl	$.LC35, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+24(%rip)	# D.18328, libfunc_table
	.loc 1 4955 0
	movl	$.LC36, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+32(%rip)	# D.18328, libfunc_table
	.loc 1 4957 0
	movl	$.LC37, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+40(%rip)	# D.18328, libfunc_table
	.loc 1 4958 0
	movl	$.LC38, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+48(%rip)	# D.18328, libfunc_table
	.loc 1 4959 0
	movl	$.LC39, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+56(%rip)	# D.18328, libfunc_table
	.loc 1 4960 0
	movl	$.LC40, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+64(%rip)	# D.18328, libfunc_table
	.loc 1 4961 0
	movl	$.LC41, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+72(%rip)	# D.18328, libfunc_table
	.loc 1 4963 0
	movl	$.LC42, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+80(%rip)	# D.18328, libfunc_table
	.loc 1 4964 0
	movl	$.LC43, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+88(%rip)	# D.18328, libfunc_table
	.loc 1 4965 0
	movl	$.LC44, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+96(%rip)	# D.18328, libfunc_table
	.loc 1 4966 0
	movl	$.LC45, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+104(%rip)	# D.18328, libfunc_table
	.loc 1 4967 0
	movl	$.LC46, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+112(%rip)	# D.18328, libfunc_table
	.loc 1 4968 0
	movl	$.LC47, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+120(%rip)	# D.18328, libfunc_table
	.loc 1 4969 0
	movl	$.LC48, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+128(%rip)	# D.18328, libfunc_table
	.loc 1 4970 0
	movl	$.LC49, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+136(%rip)	# D.18328, libfunc_table
	.loc 1 4972 0
	movl	$.LC50, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+144(%rip)	# D.18328, libfunc_table
	.loc 1 4976 0
	movl	$.LC51, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+160(%rip)	# D.18328, libfunc_table
	.loc 1 4977 0
	movl	$.LC52, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+168(%rip)	# D.18328, libfunc_table
	.loc 1 4982 0
	movl	$.LC53, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+176(%rip)	# D.18328, libfunc_table
	.loc 1 4984 0
	movl	$.LC54, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+184(%rip)	# D.18328, libfunc_table
	.loc 1 4986 0
	movl	$.LC55, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+192(%rip)	# D.18328, libfunc_table
	.loc 1 4987 0
	movl	$.LC56, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+200(%rip)	# D.18328, libfunc_table
	.loc 1 4988 0
	movl	$.LC57, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+208(%rip)	# D.18328, libfunc_table
	.loc 1 4989 0
	movl	$.LC58, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+216(%rip)	# D.18328, libfunc_table
	.loc 1 4990 0
	movl	$.LC59, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+224(%rip)	# D.18328, libfunc_table
	.loc 1 4991 0
	movl	$.LC60, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+232(%rip)	# D.18328, libfunc_table
	.loc 1 4992 0
	movl	$.LC61, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+240(%rip)	# D.18328, libfunc_table
	.loc 1 4994 0
	movl	$.LC62, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+248(%rip)	# D.18328, libfunc_table
	.loc 1 4995 0
	movl	$.LC63, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+256(%rip)	# D.18328, libfunc_table
	.loc 1 4996 0
	movl	$.LC64, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+264(%rip)	# D.18328, libfunc_table
	.loc 1 4997 0
	movl	$.LC65, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+272(%rip)	# D.18328, libfunc_table
	.loc 1 4998 0
	movl	$.LC66, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+280(%rip)	# D.18328, libfunc_table
	.loc 1 4999 0
	movl	$.LC67, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+288(%rip)	# D.18328, libfunc_table
	.loc 1 5000 0
	movl	$.LC68, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+296(%rip)	# D.18328, libfunc_table
	.loc 1 5002 0
	movl	$.LC69, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+304(%rip)	# D.18328, libfunc_table
	.loc 1 5003 0
	movl	$.LC70, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+312(%rip)	# D.18328, libfunc_table
	.loc 1 5004 0
	movl	$.LC71, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+320(%rip)	# D.18328, libfunc_table
	.loc 1 5005 0
	movl	$.LC72, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+328(%rip)	# D.18328, libfunc_table
	.loc 1 5006 0
	movl	$.LC73, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+336(%rip)	# D.18328, libfunc_table
	.loc 1 5007 0
	movl	$.LC74, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+344(%rip)	# D.18328, libfunc_table
	.loc 1 5008 0
	movl	$.LC75, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+352(%rip)	# D.18328, libfunc_table
	.loc 1 5010 0
	movl	$.LC76, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+360(%rip)	# D.18328, libfunc_table
	.loc 1 5011 0
	movl	$.LC77, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+368(%rip)	# D.18328, libfunc_table
	.loc 1 5012 0
	movl	$.LC78, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+376(%rip)	# D.18328, libfunc_table
	.loc 1 5013 0
	movl	$.LC79, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+384(%rip)	# D.18328, libfunc_table
	.loc 1 5014 0
	movl	$.LC80, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+392(%rip)	# D.18328, libfunc_table
	.loc 1 5015 0
	movl	$.LC81, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+400(%rip)	# D.18328, libfunc_table
	.loc 1 5016 0
	movl	$.LC82, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+408(%rip)	# D.18328, libfunc_table
	.loc 1 5018 0
	movl	$.LC83, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+416(%rip)	# D.18328, libfunc_table
	.loc 1 5019 0
	movl	$.LC84, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+424(%rip)	# D.18328, libfunc_table
	.loc 1 5020 0
	movl	$.LC85, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+432(%rip)	# D.18328, libfunc_table
	.loc 1 5021 0
	movl	$.LC86, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+440(%rip)	# D.18328, libfunc_table
	.loc 1 5022 0
	movl	$.LC87, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+448(%rip)	# D.18328, libfunc_table
	.loc 1 5023 0
	movl	$.LC88, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+456(%rip)	# D.18328, libfunc_table
	.loc 1 5024 0
	movl	$.LC89, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+464(%rip)	# D.18328, libfunc_table
	.loc 1 5026 0
	movl	$.LC90, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+472(%rip)	# D.18328, libfunc_table
	.loc 1 5027 0
	movl	$.LC91, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+480(%rip)	# D.18328, libfunc_table
	.loc 1 5028 0
	movl	$.LC92, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+488(%rip)	# D.18328, libfunc_table
	.loc 1 5030 0
	movl	$.LC93, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+496(%rip)	# D.18328, libfunc_table
	.loc 1 5031 0
	movl	$.LC94, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+504(%rip)	# D.18328, libfunc_table
	.loc 1 5032 0
	movl	$.LC95, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+512(%rip)	# D.18328, libfunc_table
	.loc 1 5034 0
	movl	$.LC96, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+520(%rip)	# D.18328, libfunc_table
	.loc 1 5035 0
	movl	$.LC97, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+528(%rip)	# D.18328, libfunc_table
	.loc 1 5036 0
	movl	$.LC98, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+536(%rip)	# D.18328, libfunc_table
	.loc 1 5038 0
	movl	$.LC99, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+544(%rip)	# D.18328, libfunc_table
	.loc 1 5039 0
	movl	$.LC100, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+552(%rip)	# D.18328, libfunc_table
	.loc 1 5040 0
	movl	$.LC101, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+560(%rip)	# D.18328, libfunc_table
	.loc 1 5042 0
	movl	$.LC102, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+568(%rip)	# D.18328, libfunc_table
	.loc 1 5043 0
	movl	$.LC103, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+576(%rip)	# D.18328, libfunc_table
	.loc 1 5044 0
	movl	$.LC104, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+584(%rip)	# D.18328, libfunc_table
	.loc 1 5046 0
	movl	$.LC105, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+592(%rip)	# D.18328, libfunc_table
	.loc 1 5047 0
	movl	$.LC106, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+600(%rip)	# D.18328, libfunc_table
	.loc 1 5048 0
	movl	$.LC107, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+608(%rip)	# D.18328, libfunc_table
	.loc 1 5050 0
	movl	$.LC108, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+616(%rip)	# D.18328, libfunc_table
	.loc 1 5051 0
	movl	$.LC109, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+624(%rip)	# D.18328, libfunc_table
	.loc 1 5052 0
	movl	$.LC110, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+632(%rip)	# D.18328, libfunc_table
	.loc 1 5054 0
	movl	$.LC111, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+640(%rip)	# D.18328, libfunc_table
	.loc 1 5055 0
	movl	$.LC112, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+648(%rip)	# D.18328, libfunc_table
	.loc 1 5056 0
	movl	$.LC113, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+656(%rip)	# D.18328, libfunc_table
	.loc 1 5058 0
	movl	$.LC114, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+664(%rip)	# D.18328, libfunc_table
	.loc 1 5059 0
	movl	$.LC115, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+672(%rip)	# D.18328, libfunc_table
	.loc 1 5060 0
	movl	$.LC116, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+680(%rip)	# D.18328, libfunc_table
	.loc 1 5062 0
	movl	$.LC117, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+688(%rip)	# D.18328, libfunc_table
	.loc 1 5063 0
	movl	$.LC118, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+696(%rip)	# D.18328, libfunc_table
	.loc 1 5064 0
	movl	$.LC119, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+704(%rip)	# D.18328, libfunc_table
	.loc 1 5066 0
	movl	$.LC120, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+712(%rip)	# D.18328, libfunc_table
	.loc 1 5067 0
	movl	$.LC121, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+720(%rip)	# D.18328, libfunc_table
	.loc 1 5068 0
	movl	$.LC122, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+728(%rip)	# D.18328, libfunc_table
	.loc 1 5070 0
	movl	$.LC123, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+736(%rip)	# D.18328, libfunc_table
	.loc 1 5071 0
	movl	$.LC124, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+744(%rip)	# D.18328, libfunc_table
	.loc 1 5072 0
	movl	$.LC125, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+752(%rip)	# D.18328, libfunc_table
	.loc 1 5076 0
	movl	$.LC126, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+760(%rip)	# D.18328, libfunc_table
	.loc 1 5078 0
	movl	$.LC127, %edi	#,
	call	init_one_libfunc	#
	movq	%rax, libfunc_table+768(%rip)	# D.18328, libfunc_table
	.loc 1 5081 0
	call	init_traps	#
	.loc 1 5090 0
	movl	$mark_optab, %ecx	#,
	movl	$8, %edx	#,
	movl	$49, %esi	#,
	movl	$optab_table, %edi	#,
	call	ggc_add_root	#
	.loc 1 5091 0
	movl	$97, %esi	#,
	movl	$libfunc_table, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5092 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	init_optabs, .-init_optabs
	.local	trap_rtx
	.comm	trap_rtx,8,8
	.type	init_traps, @function
init_traps:
.LFB53:
	.loc 1 5103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5106 0
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$103, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, trap_rtx(%rip)	# trap_rtx.401, trap_rtx
	.loc 1 5107 0
	movl	$1, %esi	#,
	movl	$trap_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5109 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	init_traps, .-init_traps
	.globl	gen_cond_trap
	.type	gen_cond_trap, @function
gen_cond_trap:
.LFB54:
	.loc 1 5119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# op1, op1
	movq	%rdx, -40(%rbp)	# op2, op2
	movq	%rcx, -48(%rbp)	# tcode, tcode
	.loc 1 5120 0
	movq	-32(%rbp), %rax	# op1, tmp74
	movzbl	2(%rax), %eax	# op1_3(D)->mode, D.18459
	movzbl	%al, %eax	# D.18459, tmp75
	movl	%eax, -12(%rbp)	# tmp75, mode
	.loc 1 5122 0
	cmpl	$0, -12(%rbp)	#, mode
	jne	.L991	#,
	.loc 1 5123 0
	movl	$0, %eax	#, D.18458
	jmp	.L992	#
.L991:
	.loc 1 5127 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18460
	movl	-12(%rbp), %edx	# mode, mode.402
	movslq	%edx, %rdx	# mode.402, tmp76
	salq	$4, %rdx	#, tmp77
	addq	%rdx, %rax	# tmp77, tmp78
	movl	8(%rax), %eax	# _7->handlers[mode.402_8].insn_code, D.18461
	.loc 1 5126 0
	cmpl	$1317, %eax	#, D.18461
	je	.L993	#,
.LBB58:
	.loc 1 5130 0
	call	start_sequence	#
	.loc 1 5131 0
	movq	optab_table+328(%rip), %rax	# optab_table, D.18460
	movl	-12(%rbp), %edx	# mode, mode.403
	movslq	%edx, %rdx	# mode.403, tmp79
	salq	$4, %rdx	#, tmp80
	addq	%rdx, %rax	# tmp80, tmp81
	movl	8(%rax), %eax	# _10->handlers[mode.403_11].insn_code, D.18461
	movslq	%eax, %rdx	# D.18462, tmp82
	movq	%rdx, %rax	# tmp82, tmp83
	salq	$2, %rax	#, tmp83
	addq	%rdx, %rax	# tmp82, tmp83
	salq	$3, %rax	#, tmp84
	addq	$insn_data+16, %rax	#, tmp85
	movq	(%rax), %rdx	# insn_data[_13].genfun, D.18463
	movq	-40(%rbp), %rcx	# op2, tmp86
	movq	-32(%rbp), %rax	# op1, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	*%rdx	# D.18463
	movq	%rax, %rdi	# D.18464,
	call	emit_insn	#
	.loc 1 5132 0
	movq	trap_rtx(%rip), %rax	# trap_rtx, trap_rtx.404
	movl	-20(%rbp), %edx	# code, tmp88
	movw	%dx, (%rax)	# D.18465, trap_rtx.404_17->code
	.loc 1 5133 0
	movq	trap_rtx(%rip), %rax	# trap_rtx, trap_rtx.405
	movq	-48(%rbp), %rdx	# tcode, tmp89
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# trap_rtx.405,
	call	gen_conditional_trap	#
	movq	%rax, -8(%rbp)	# tmp90, insn
	.loc 1 5134 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L994	#,
	.loc 1 5136 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movq	%rax, %rdi	# tmp91,
	call	emit_insn	#
	.loc 1 5137 0
	call	gen_sequence	#
	movq	%rax, -8(%rbp)	# tmp92, insn
.L994:
	.loc 1 5139 0
	call	end_sequence	#
	.loc 1 5140 0
	movq	-8(%rbp), %rax	# insn, D.18458
	jmp	.L992	#
.L993:
.LBE58:
	.loc 1 5144 0
	movl	$0, %eax	#, D.18458
.L992:
	.loc 1 5145 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	gen_cond_trap, .-gen_cond_trap
	.section	.rodata
	.align 16
	.type	__FUNCTION__.13565, @object
	.size	__FUNCTION__.13565, 20
__FUNCTION__.13565:
	.string	"expand_simple_binop"
	.type	__FUNCTION__.13677, @object
	.size	__FUNCTION__.13677, 13
__FUNCTION__.13677:
	.string	"expand_binop"
	.align 16
	.type	__FUNCTION__.13732, @object
	.size	__FUNCTION__.13732, 20
__FUNCTION__.13732:
	.string	"expand_twoval_binop"
	.align 16
	.type	__FUNCTION__.13748, @object
	.size	__FUNCTION__.13748, 19
__FUNCTION__.13748:
	.string	"expand_simple_unop"
	.type	__FUNCTION__.13779, @object
	.size	__FUNCTION__.13779, 12
__FUNCTION__.13779:
	.string	"expand_unop"
	.align 16
	.type	__FUNCTION__.13812, @object
	.size	__FUNCTION__.13812, 19
__FUNCTION__.13812:
	.string	"expand_complex_abs"
	.align 16
	.type	__FUNCTION__.13859, @object
	.size	__FUNCTION__.13859, 23
__FUNCTION__.13859:
	.string	"emit_no_conflict_block"
	.align 16
	.type	__FUNCTION__.13924, @object
	.size	__FUNCTION__.13924, 17
__FUNCTION__.13924:
	.string	"prepare_cmp_insn"
	.align 16
	.type	__FUNCTION__.13949, @object
	.size	__FUNCTION__.13949, 25
__FUNCTION__.13949:
	.string	"emit_cmp_and_jump_insn_1"
	.align 16
	.type	__FUNCTION__.13961, @object
	.size	__FUNCTION__.13961, 24
__FUNCTION__.13961:
	.string	"emit_cmp_and_jump_insns"
	.align 16
	.type	__FUNCTION__.14032, @object
	.size	__FUNCTION__.14032, 22
__FUNCTION__.14032:
	.string	"prepare_float_lib_cmp"
	.type	__FUNCTION__.14061, @object
	.size	__FUNCTION__.14061, 14
__FUNCTION__.14061:
	.string	"gen_add2_insn"
	.type	__FUNCTION__.14073, @object
	.size	__FUNCTION__.14073, 15
__FUNCTION__.14073:
	.string	"have_add2_insn"
	.type	__FUNCTION__.14079, @object
	.size	__FUNCTION__.14079, 14
__FUNCTION__.14079:
	.string	"gen_sub2_insn"
	.type	__FUNCTION__.14091, @object
	.size	__FUNCTION__.14091, 15
__FUNCTION__.14091:
	.string	"have_sub2_insn"
	.type	__FUNCTION__.14105, @object
	.size	__FUNCTION__.14105, 14
__FUNCTION__.14105:
	.string	"gen_move_insn"
	.type	__FUNCTION__.14138, @object
	.size	__FUNCTION__.14138, 13
__FUNCTION__.14138:
	.string	"expand_float"
	.type	__FUNCTION__.14190, @object
	.size	__FUNCTION__.14190, 11
__FUNCTION__.14190:
	.string	"expand_fix"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "machmode.h"
	.file 7 "real.h"
	.file 8 "hashtable.h"
	.file 9 "function.h"
	.file 10 "expr.h"
	.file 11 "insn-codes.h"
	.file 12 "optabs.h"
	.file 13 "libfuncs.h"
	.file 14 "recog.h"
	.file 15 "./safe-ctype.h"
	.file 16 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6b0c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1891
	.byte	0x1
	.long	.LASF1892
	.long	.LASF1893
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x30b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xae4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xaf4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF288
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x135b
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x151b
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x157e
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1637
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x15b3
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x15f5
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x169c
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1f55
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x182b
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x16c3
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x16f8
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x173b
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1770
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xe
	.long	.LASF73
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x296
	.uleb128 0xf
	.long	.LASF28
	.sleb128 0
	.uleb128 0xf
	.long	.LASF29
	.sleb128 1
	.uleb128 0xf
	.long	.LASF30
	.sleb128 2
	.uleb128 0xf
	.long	.LASF31
	.sleb128 3
	.uleb128 0xf
	.long	.LASF32
	.sleb128 4
	.uleb128 0xf
	.long	.LASF33
	.sleb128 5
	.uleb128 0xf
	.long	.LASF34
	.sleb128 6
	.uleb128 0xf
	.long	.LASF35
	.sleb128 7
	.uleb128 0xf
	.long	.LASF36
	.sleb128 8
	.uleb128 0xf
	.long	.LASF37
	.sleb128 9
	.uleb128 0xf
	.long	.LASF38
	.sleb128 10
	.uleb128 0xf
	.long	.LASF39
	.sleb128 11
	.uleb128 0xf
	.long	.LASF40
	.sleb128 12
	.uleb128 0xf
	.long	.LASF41
	.sleb128 13
	.uleb128 0xf
	.long	.LASF42
	.sleb128 14
	.uleb128 0xf
	.long	.LASF43
	.sleb128 15
	.uleb128 0xf
	.long	.LASF44
	.sleb128 16
	.uleb128 0xf
	.long	.LASF45
	.sleb128 17
	.uleb128 0xf
	.long	.LASF46
	.sleb128 18
	.uleb128 0xf
	.long	.LASF47
	.sleb128 19
	.uleb128 0xf
	.long	.LASF48
	.sleb128 20
	.uleb128 0xf
	.long	.LASF49
	.sleb128 21
	.uleb128 0xf
	.long	.LASF50
	.sleb128 22
	.uleb128 0xf
	.long	.LASF51
	.sleb128 23
	.uleb128 0xf
	.long	.LASF52
	.sleb128 24
	.uleb128 0xf
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x2ff
	.uleb128 0x11
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1de
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1de
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1de
	.byte	0x8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1de
	.byte	0xc
	.uleb128 0x11
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1de
	.byte	0x10
	.uleb128 0x11
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1de
	.byte	0x14
	.uleb128 0x11
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1de
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x296
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x13
	.byte	0x8
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF66
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF67
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF68
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF69
	.uleb128 0x3
	.byte	0x8
	.long	0x344
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF70
	.uleb128 0x14
	.long	0x344
	.long	0x35b
	.uleb128 0x15
	.long	0x1e5
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x361
	.uleb128 0x16
	.long	0x344
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF72
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x380
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF74
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x4f6
	.uleb128 0xf
	.long	.LASF75
	.sleb128 0
	.uleb128 0xf
	.long	.LASF76
	.sleb128 1
	.uleb128 0xf
	.long	.LASF77
	.sleb128 2
	.uleb128 0xf
	.long	.LASF78
	.sleb128 3
	.uleb128 0xf
	.long	.LASF79
	.sleb128 4
	.uleb128 0xf
	.long	.LASF80
	.sleb128 5
	.uleb128 0xf
	.long	.LASF81
	.sleb128 6
	.uleb128 0xf
	.long	.LASF82
	.sleb128 7
	.uleb128 0xf
	.long	.LASF83
	.sleb128 8
	.uleb128 0xf
	.long	.LASF84
	.sleb128 9
	.uleb128 0xf
	.long	.LASF85
	.sleb128 10
	.uleb128 0xf
	.long	.LASF86
	.sleb128 11
	.uleb128 0xf
	.long	.LASF87
	.sleb128 12
	.uleb128 0xf
	.long	.LASF88
	.sleb128 13
	.uleb128 0xf
	.long	.LASF89
	.sleb128 14
	.uleb128 0xf
	.long	.LASF90
	.sleb128 15
	.uleb128 0xf
	.long	.LASF91
	.sleb128 16
	.uleb128 0xf
	.long	.LASF92
	.sleb128 17
	.uleb128 0xf
	.long	.LASF93
	.sleb128 18
	.uleb128 0xf
	.long	.LASF94
	.sleb128 19
	.uleb128 0xf
	.long	.LASF95
	.sleb128 20
	.uleb128 0xf
	.long	.LASF96
	.sleb128 21
	.uleb128 0xf
	.long	.LASF97
	.sleb128 22
	.uleb128 0xf
	.long	.LASF98
	.sleb128 23
	.uleb128 0xf
	.long	.LASF99
	.sleb128 24
	.uleb128 0xf
	.long	.LASF100
	.sleb128 25
	.uleb128 0xf
	.long	.LASF101
	.sleb128 26
	.uleb128 0xf
	.long	.LASF102
	.sleb128 27
	.uleb128 0xf
	.long	.LASF103
	.sleb128 28
	.uleb128 0xf
	.long	.LASF104
	.sleb128 29
	.uleb128 0xf
	.long	.LASF105
	.sleb128 30
	.uleb128 0xf
	.long	.LASF106
	.sleb128 31
	.uleb128 0xf
	.long	.LASF107
	.sleb128 32
	.uleb128 0xf
	.long	.LASF108
	.sleb128 33
	.uleb128 0xf
	.long	.LASF109
	.sleb128 34
	.uleb128 0xf
	.long	.LASF110
	.sleb128 35
	.uleb128 0xf
	.long	.LASF111
	.sleb128 36
	.uleb128 0xf
	.long	.LASF112
	.sleb128 37
	.uleb128 0xf
	.long	.LASF113
	.sleb128 38
	.uleb128 0xf
	.long	.LASF114
	.sleb128 39
	.uleb128 0xf
	.long	.LASF115
	.sleb128 40
	.uleb128 0xf
	.long	.LASF116
	.sleb128 41
	.uleb128 0xf
	.long	.LASF117
	.sleb128 42
	.uleb128 0xf
	.long	.LASF118
	.sleb128 43
	.uleb128 0xf
	.long	.LASF119
	.sleb128 44
	.uleb128 0xf
	.long	.LASF120
	.sleb128 45
	.uleb128 0xf
	.long	.LASF121
	.sleb128 46
	.uleb128 0xf
	.long	.LASF122
	.sleb128 47
	.uleb128 0xf
	.long	.LASF123
	.sleb128 48
	.uleb128 0xf
	.long	.LASF124
	.sleb128 49
	.uleb128 0xf
	.long	.LASF125
	.sleb128 50
	.uleb128 0xf
	.long	.LASF126
	.sleb128 51
	.uleb128 0xf
	.long	.LASF127
	.sleb128 52
	.uleb128 0xf
	.long	.LASF128
	.sleb128 53
	.uleb128 0xf
	.long	.LASF129
	.sleb128 54
	.uleb128 0xf
	.long	.LASF130
	.sleb128 55
	.uleb128 0xf
	.long	.LASF131
	.sleb128 56
	.uleb128 0xf
	.long	.LASF132
	.sleb128 57
	.uleb128 0xf
	.long	.LASF133
	.sleb128 58
	.uleb128 0xf
	.long	.LASF134
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF135
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x53f
	.uleb128 0xf
	.long	.LASF136
	.sleb128 0
	.uleb128 0xf
	.long	.LASF137
	.sleb128 1
	.uleb128 0xf
	.long	.LASF138
	.sleb128 2
	.uleb128 0xf
	.long	.LASF139
	.sleb128 3
	.uleb128 0xf
	.long	.LASF140
	.sleb128 4
	.uleb128 0xf
	.long	.LASF141
	.sleb128 5
	.uleb128 0xf
	.long	.LASF142
	.sleb128 6
	.uleb128 0xf
	.long	.LASF143
	.sleb128 7
	.uleb128 0xf
	.long	.LASF144
	.sleb128 8
	.uleb128 0xf
	.long	.LASF145
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF146
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x93b
	.uleb128 0xf
	.long	.LASF147
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF148
	.sleb128 2
	.uleb128 0xf
	.long	.LASF149
	.sleb128 3
	.uleb128 0xf
	.long	.LASF150
	.sleb128 4
	.uleb128 0xf
	.long	.LASF151
	.sleb128 5
	.uleb128 0xf
	.long	.LASF152
	.sleb128 6
	.uleb128 0xf
	.long	.LASF153
	.sleb128 7
	.uleb128 0xf
	.long	.LASF154
	.sleb128 8
	.uleb128 0xf
	.long	.LASF155
	.sleb128 9
	.uleb128 0xf
	.long	.LASF156
	.sleb128 10
	.uleb128 0xf
	.long	.LASF157
	.sleb128 11
	.uleb128 0xf
	.long	.LASF158
	.sleb128 12
	.uleb128 0xf
	.long	.LASF159
	.sleb128 13
	.uleb128 0xf
	.long	.LASF160
	.sleb128 14
	.uleb128 0xf
	.long	.LASF161
	.sleb128 15
	.uleb128 0xf
	.long	.LASF162
	.sleb128 16
	.uleb128 0xf
	.long	.LASF163
	.sleb128 17
	.uleb128 0xf
	.long	.LASF164
	.sleb128 18
	.uleb128 0xf
	.long	.LASF165
	.sleb128 19
	.uleb128 0xf
	.long	.LASF166
	.sleb128 20
	.uleb128 0xf
	.long	.LASF167
	.sleb128 21
	.uleb128 0xf
	.long	.LASF168
	.sleb128 22
	.uleb128 0xf
	.long	.LASF169
	.sleb128 23
	.uleb128 0xf
	.long	.LASF170
	.sleb128 24
	.uleb128 0xf
	.long	.LASF171
	.sleb128 25
	.uleb128 0xf
	.long	.LASF172
	.sleb128 26
	.uleb128 0xf
	.long	.LASF173
	.sleb128 27
	.uleb128 0xf
	.long	.LASF174
	.sleb128 28
	.uleb128 0xf
	.long	.LASF175
	.sleb128 29
	.uleb128 0xf
	.long	.LASF176
	.sleb128 30
	.uleb128 0xf
	.long	.LASF177
	.sleb128 31
	.uleb128 0xf
	.long	.LASF178
	.sleb128 32
	.uleb128 0xf
	.long	.LASF179
	.sleb128 33
	.uleb128 0xf
	.long	.LASF180
	.sleb128 34
	.uleb128 0xf
	.long	.LASF181
	.sleb128 35
	.uleb128 0xf
	.long	.LASF182
	.sleb128 36
	.uleb128 0xf
	.long	.LASF183
	.sleb128 37
	.uleb128 0xf
	.long	.LASF184
	.sleb128 38
	.uleb128 0xf
	.long	.LASF185
	.sleb128 39
	.uleb128 0xf
	.long	.LASF186
	.sleb128 40
	.uleb128 0xf
	.long	.LASF187
	.sleb128 41
	.uleb128 0xf
	.long	.LASF188
	.sleb128 42
	.uleb128 0xf
	.long	.LASF189
	.sleb128 43
	.uleb128 0xf
	.long	.LASF190
	.sleb128 44
	.uleb128 0xf
	.long	.LASF191
	.sleb128 45
	.uleb128 0xf
	.long	.LASF192
	.sleb128 46
	.uleb128 0x19
	.string	"SET"
	.sleb128 47
	.uleb128 0x19
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF193
	.sleb128 49
	.uleb128 0xf
	.long	.LASF194
	.sleb128 50
	.uleb128 0xf
	.long	.LASF195
	.sleb128 51
	.uleb128 0xf
	.long	.LASF196
	.sleb128 52
	.uleb128 0xf
	.long	.LASF197
	.sleb128 53
	.uleb128 0xf
	.long	.LASF198
	.sleb128 54
	.uleb128 0xf
	.long	.LASF199
	.sleb128 55
	.uleb128 0xf
	.long	.LASF200
	.sleb128 56
	.uleb128 0xf
	.long	.LASF201
	.sleb128 57
	.uleb128 0xf
	.long	.LASF202
	.sleb128 58
	.uleb128 0x19
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF203
	.sleb128 60
	.uleb128 0x19
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF204
	.sleb128 62
	.uleb128 0xf
	.long	.LASF205
	.sleb128 63
	.uleb128 0xf
	.long	.LASF206
	.sleb128 64
	.uleb128 0xf
	.long	.LASF207
	.sleb128 65
	.uleb128 0x19
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF208
	.sleb128 67
	.uleb128 0xf
	.long	.LASF209
	.sleb128 68
	.uleb128 0x19
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF210
	.sleb128 70
	.uleb128 0xf
	.long	.LASF211
	.sleb128 71
	.uleb128 0xf
	.long	.LASF212
	.sleb128 72
	.uleb128 0xf
	.long	.LASF213
	.sleb128 73
	.uleb128 0xf
	.long	.LASF214
	.sleb128 74
	.uleb128 0xf
	.long	.LASF215
	.sleb128 75
	.uleb128 0xf
	.long	.LASF216
	.sleb128 76
	.uleb128 0x19
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF217
	.sleb128 78
	.uleb128 0x19
	.string	"DIV"
	.sleb128 79
	.uleb128 0x19
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF218
	.sleb128 81
	.uleb128 0xf
	.long	.LASF219
	.sleb128 82
	.uleb128 0x19
	.string	"AND"
	.sleb128 83
	.uleb128 0x19
	.string	"IOR"
	.sleb128 84
	.uleb128 0x19
	.string	"XOR"
	.sleb128 85
	.uleb128 0x19
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF220
	.sleb128 87
	.uleb128 0xf
	.long	.LASF221
	.sleb128 88
	.uleb128 0xf
	.long	.LASF222
	.sleb128 89
	.uleb128 0xf
	.long	.LASF223
	.sleb128 90
	.uleb128 0xf
	.long	.LASF224
	.sleb128 91
	.uleb128 0xf
	.long	.LASF225
	.sleb128 92
	.uleb128 0xf
	.long	.LASF226
	.sleb128 93
	.uleb128 0xf
	.long	.LASF227
	.sleb128 94
	.uleb128 0xf
	.long	.LASF228
	.sleb128 95
	.uleb128 0xf
	.long	.LASF229
	.sleb128 96
	.uleb128 0xf
	.long	.LASF230
	.sleb128 97
	.uleb128 0xf
	.long	.LASF231
	.sleb128 98
	.uleb128 0xf
	.long	.LASF232
	.sleb128 99
	.uleb128 0xf
	.long	.LASF233
	.sleb128 100
	.uleb128 0xf
	.long	.LASF234
	.sleb128 101
	.uleb128 0x19
	.string	"NE"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ"
	.sleb128 103
	.uleb128 0x19
	.string	"GE"
	.sleb128 104
	.uleb128 0x19
	.string	"GT"
	.sleb128 105
	.uleb128 0x19
	.string	"LE"
	.sleb128 106
	.uleb128 0x19
	.string	"LT"
	.sleb128 107
	.uleb128 0x19
	.string	"GEU"
	.sleb128 108
	.uleb128 0x19
	.string	"GTU"
	.sleb128 109
	.uleb128 0x19
	.string	"LEU"
	.sleb128 110
	.uleb128 0x19
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF235
	.sleb128 112
	.uleb128 0xf
	.long	.LASF236
	.sleb128 113
	.uleb128 0xf
	.long	.LASF237
	.sleb128 114
	.uleb128 0xf
	.long	.LASF238
	.sleb128 115
	.uleb128 0xf
	.long	.LASF239
	.sleb128 116
	.uleb128 0xf
	.long	.LASF240
	.sleb128 117
	.uleb128 0xf
	.long	.LASF241
	.sleb128 118
	.uleb128 0xf
	.long	.LASF242
	.sleb128 119
	.uleb128 0xf
	.long	.LASF243
	.sleb128 120
	.uleb128 0xf
	.long	.LASF244
	.sleb128 121
	.uleb128 0xf
	.long	.LASF245
	.sleb128 122
	.uleb128 0xf
	.long	.LASF246
	.sleb128 123
	.uleb128 0xf
	.long	.LASF247
	.sleb128 124
	.uleb128 0xf
	.long	.LASF248
	.sleb128 125
	.uleb128 0x19
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF249
	.sleb128 127
	.uleb128 0xf
	.long	.LASF250
	.sleb128 128
	.uleb128 0x19
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF251
	.sleb128 130
	.uleb128 0x19
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF252
	.sleb128 132
	.uleb128 0xf
	.long	.LASF253
	.sleb128 133
	.uleb128 0xf
	.long	.LASF254
	.sleb128 134
	.uleb128 0xf
	.long	.LASF255
	.sleb128 135
	.uleb128 0xf
	.long	.LASF256
	.sleb128 136
	.uleb128 0xf
	.long	.LASF257
	.sleb128 137
	.uleb128 0xf
	.long	.LASF258
	.sleb128 138
	.uleb128 0xf
	.long	.LASF259
	.sleb128 139
	.uleb128 0xf
	.long	.LASF260
	.sleb128 140
	.uleb128 0xf
	.long	.LASF261
	.sleb128 141
	.uleb128 0xf
	.long	.LASF262
	.sleb128 142
	.uleb128 0xf
	.long	.LASF263
	.sleb128 143
	.uleb128 0xf
	.long	.LASF264
	.sleb128 144
	.uleb128 0xf
	.long	.LASF265
	.sleb128 145
	.uleb128 0xf
	.long	.LASF266
	.sleb128 146
	.uleb128 0xf
	.long	.LASF267
	.sleb128 147
	.uleb128 0xf
	.long	.LASF268
	.sleb128 148
	.uleb128 0xf
	.long	.LASF269
	.sleb128 149
	.uleb128 0xf
	.long	.LASF270
	.sleb128 150
	.uleb128 0xf
	.long	.LASF271
	.sleb128 151
	.uleb128 0x19
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF272
	.sleb128 153
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x9bc
	.uleb128 0x5
	.long	.LASF273
	.byte	0x2
	.byte	0x47
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF274
	.byte	0x2
	.byte	0x49
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF275
	.byte	0x2
	.byte	0x4a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF276
	.byte	0x2
	.byte	0x4c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF277
	.byte	0x2
	.byte	0x4e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x2
	.byte	0x50
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x2
	.byte	0x53
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF280
	.byte	0x2
	.byte	0x55
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF281
	.byte	0x2
	.byte	0x56
	.long	0x93b
	.uleb128 0x1a
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xa0c
	.uleb128 0x8
	.long	.LASF282
	.byte	0x2
	.byte	0x5e
	.long	0x314
	.byte	0
	.uleb128 0x8
	.long	.LASF283
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF285
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF286
	.byte	0x2
	.byte	0x62
	.long	0x30b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF287
	.byte	0x2
	.byte	0x63
	.long	0x9c7
	.uleb128 0x1b
	.long	.LASF289
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xab2
	.uleb128 0x1c
	.long	.LASF290
	.byte	0x2
	.byte	0x69
	.long	0x314
	.uleb128 0x1c
	.long	.LASF291
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x1c
	.long	.LASF292
	.byte	0x2
	.byte	0x6b
	.long	0x30b
	.uleb128 0x1c
	.long	.LASF293
	.byte	0x2
	.byte	0x6c
	.long	0x35b
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1c
	.long	.LASF294
	.byte	0x2
	.byte	0x6f
	.long	0x381
	.uleb128 0x1c
	.long	.LASF295
	.byte	0x2
	.byte	0x70
	.long	0x9bc
	.uleb128 0x1c
	.long	.LASF296
	.byte	0x2
	.byte	0x71
	.long	0xab7
	.uleb128 0x1c
	.long	.LASF297
	.byte	0x2
	.byte	0x72
	.long	0xac2
	.uleb128 0x1c
	.long	.LASF298
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1d
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xacd
	.uleb128 0x1c
	.long	.LASF299
	.byte	0x2
	.byte	0x75
	.long	0xad3
	.byte	0
	.uleb128 0x1e
	.long	.LASF300
	.uleb128 0x3
	.byte	0x8
	.long	0xab2
	.uleb128 0x1e
	.long	.LASF301
	.uleb128 0x3
	.byte	0x8
	.long	0xabd
	.uleb128 0x1e
	.long	.LASF302
	.uleb128 0x3
	.byte	0x8
	.long	0xac8
	.uleb128 0x3
	.byte	0x8
	.long	0xa0c
	.uleb128 0x7
	.long	.LASF303
	.byte	0x2
	.byte	0x76
	.long	0xa17
	.uleb128 0x14
	.long	0xad9
	.long	0xaf4
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0xb04
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF304
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xbc6
	.uleb128 0xf
	.long	.LASF305
	.sleb128 1
	.uleb128 0xf
	.long	.LASF306
	.sleb128 2
	.uleb128 0xf
	.long	.LASF307
	.sleb128 3
	.uleb128 0xf
	.long	.LASF308
	.sleb128 4
	.uleb128 0xf
	.long	.LASF309
	.sleb128 5
	.uleb128 0xf
	.long	.LASF310
	.sleb128 6
	.uleb128 0xf
	.long	.LASF311
	.sleb128 7
	.uleb128 0xf
	.long	.LASF312
	.sleb128 8
	.uleb128 0xf
	.long	.LASF313
	.sleb128 9
	.uleb128 0xf
	.long	.LASF314
	.sleb128 10
	.uleb128 0xf
	.long	.LASF315
	.sleb128 11
	.uleb128 0xf
	.long	.LASF316
	.sleb128 12
	.uleb128 0xf
	.long	.LASF317
	.sleb128 13
	.uleb128 0xf
	.long	.LASF318
	.sleb128 14
	.uleb128 0xf
	.long	.LASF319
	.sleb128 15
	.uleb128 0xf
	.long	.LASF320
	.sleb128 16
	.uleb128 0xf
	.long	.LASF321
	.sleb128 17
	.uleb128 0xf
	.long	.LASF322
	.sleb128 18
	.uleb128 0xf
	.long	.LASF323
	.sleb128 19
	.uleb128 0xf
	.long	.LASF324
	.sleb128 20
	.uleb128 0xf
	.long	.LASF325
	.sleb128 21
	.uleb128 0xf
	.long	.LASF326
	.sleb128 22
	.uleb128 0xf
	.long	.LASF327
	.sleb128 23
	.uleb128 0xf
	.long	.LASF328
	.sleb128 24
	.uleb128 0xf
	.long	.LASF329
	.sleb128 25
	.uleb128 0xf
	.long	.LASF330
	.sleb128 26
	.uleb128 0xf
	.long	.LASF331
	.sleb128 27
	.uleb128 0xf
	.long	.LASF332
	.sleb128 28
	.uleb128 0xf
	.long	.LASF333
	.sleb128 29
	.uleb128 0xf
	.long	.LASF334
	.sleb128 30
	.byte	0
	.uleb128 0xe
	.long	.LASF335
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xc75
	.uleb128 0xf
	.long	.LASF336
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF337
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF338
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF339
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF340
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF341
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF342
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF343
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF344
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF345
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF346
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF347
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF348
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF349
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF350
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF351
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF352
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF353
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF354
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF355
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF356
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF357
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF358
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xe
	.long	.LASF359
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xcd1
	.uleb128 0xf
	.long	.LASF360
	.sleb128 0
	.uleb128 0xf
	.long	.LASF361
	.sleb128 1
	.uleb128 0xf
	.long	.LASF362
	.sleb128 2
	.uleb128 0xf
	.long	.LASF363
	.sleb128 3
	.uleb128 0xf
	.long	.LASF364
	.sleb128 4
	.uleb128 0xf
	.long	.LASF365
	.sleb128 5
	.uleb128 0xf
	.long	.LASF366
	.sleb128 6
	.uleb128 0xf
	.long	.LASF367
	.sleb128 7
	.uleb128 0xf
	.long	.LASF368
	.sleb128 8
	.uleb128 0xf
	.long	.LASF369
	.sleb128 9
	.uleb128 0xf
	.long	.LASF370
	.sleb128 10
	.uleb128 0xf
	.long	.LASF371
	.sleb128 11
	.byte	0
	.uleb128 0xe
	.long	.LASF372
	.byte	0x4
	.byte	0x2
	.value	0x7f5
	.long	0xd15
	.uleb128 0xf
	.long	.LASF373
	.sleb128 0
	.uleb128 0xf
	.long	.LASF374
	.sleb128 1
	.uleb128 0xf
	.long	.LASF375
	.sleb128 2
	.uleb128 0xf
	.long	.LASF376
	.sleb128 3
	.uleb128 0xf
	.long	.LASF377
	.sleb128 4
	.uleb128 0xf
	.long	.LASF378
	.sleb128 5
	.uleb128 0xf
	.long	.LASF379
	.sleb128 6
	.uleb128 0xf
	.long	.LASF380
	.sleb128 7
	.uleb128 0xf
	.long	.LASF381
	.sleb128 8
	.byte	0
	.uleb128 0x18
	.long	.LASF382
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x10ee
	.uleb128 0xf
	.long	.LASF383
	.sleb128 0
	.uleb128 0xf
	.long	.LASF384
	.sleb128 1
	.uleb128 0xf
	.long	.LASF385
	.sleb128 2
	.uleb128 0xf
	.long	.LASF386
	.sleb128 3
	.uleb128 0xf
	.long	.LASF387
	.sleb128 4
	.uleb128 0xf
	.long	.LASF388
	.sleb128 5
	.uleb128 0xf
	.long	.LASF389
	.sleb128 6
	.uleb128 0xf
	.long	.LASF390
	.sleb128 7
	.uleb128 0xf
	.long	.LASF391
	.sleb128 8
	.uleb128 0xf
	.long	.LASF392
	.sleb128 9
	.uleb128 0xf
	.long	.LASF393
	.sleb128 10
	.uleb128 0xf
	.long	.LASF394
	.sleb128 11
	.uleb128 0xf
	.long	.LASF395
	.sleb128 12
	.uleb128 0xf
	.long	.LASF396
	.sleb128 13
	.uleb128 0xf
	.long	.LASF397
	.sleb128 14
	.uleb128 0xf
	.long	.LASF398
	.sleb128 15
	.uleb128 0xf
	.long	.LASF399
	.sleb128 16
	.uleb128 0xf
	.long	.LASF400
	.sleb128 17
	.uleb128 0xf
	.long	.LASF401
	.sleb128 18
	.uleb128 0xf
	.long	.LASF402
	.sleb128 19
	.uleb128 0xf
	.long	.LASF403
	.sleb128 20
	.uleb128 0xf
	.long	.LASF404
	.sleb128 21
	.uleb128 0xf
	.long	.LASF405
	.sleb128 22
	.uleb128 0xf
	.long	.LASF406
	.sleb128 23
	.uleb128 0xf
	.long	.LASF407
	.sleb128 24
	.uleb128 0xf
	.long	.LASF408
	.sleb128 25
	.uleb128 0xf
	.long	.LASF409
	.sleb128 26
	.uleb128 0xf
	.long	.LASF410
	.sleb128 27
	.uleb128 0xf
	.long	.LASF411
	.sleb128 28
	.uleb128 0xf
	.long	.LASF412
	.sleb128 29
	.uleb128 0xf
	.long	.LASF413
	.sleb128 30
	.uleb128 0xf
	.long	.LASF414
	.sleb128 31
	.uleb128 0xf
	.long	.LASF415
	.sleb128 32
	.uleb128 0xf
	.long	.LASF416
	.sleb128 33
	.uleb128 0xf
	.long	.LASF417
	.sleb128 34
	.uleb128 0xf
	.long	.LASF418
	.sleb128 35
	.uleb128 0xf
	.long	.LASF419
	.sleb128 36
	.uleb128 0xf
	.long	.LASF420
	.sleb128 37
	.uleb128 0xf
	.long	.LASF421
	.sleb128 38
	.uleb128 0xf
	.long	.LASF422
	.sleb128 39
	.uleb128 0xf
	.long	.LASF423
	.sleb128 40
	.uleb128 0xf
	.long	.LASF424
	.sleb128 41
	.uleb128 0xf
	.long	.LASF425
	.sleb128 42
	.uleb128 0xf
	.long	.LASF426
	.sleb128 43
	.uleb128 0xf
	.long	.LASF427
	.sleb128 44
	.uleb128 0xf
	.long	.LASF428
	.sleb128 45
	.uleb128 0xf
	.long	.LASF429
	.sleb128 46
	.uleb128 0xf
	.long	.LASF430
	.sleb128 47
	.uleb128 0xf
	.long	.LASF431
	.sleb128 48
	.uleb128 0xf
	.long	.LASF432
	.sleb128 49
	.uleb128 0xf
	.long	.LASF433
	.sleb128 50
	.uleb128 0xf
	.long	.LASF434
	.sleb128 51
	.uleb128 0xf
	.long	.LASF435
	.sleb128 52
	.uleb128 0xf
	.long	.LASF436
	.sleb128 53
	.uleb128 0xf
	.long	.LASF437
	.sleb128 54
	.uleb128 0xf
	.long	.LASF438
	.sleb128 55
	.uleb128 0xf
	.long	.LASF439
	.sleb128 56
	.uleb128 0xf
	.long	.LASF440
	.sleb128 57
	.uleb128 0xf
	.long	.LASF441
	.sleb128 58
	.uleb128 0xf
	.long	.LASF442
	.sleb128 59
	.uleb128 0xf
	.long	.LASF443
	.sleb128 60
	.uleb128 0xf
	.long	.LASF444
	.sleb128 61
	.uleb128 0xf
	.long	.LASF445
	.sleb128 62
	.uleb128 0xf
	.long	.LASF446
	.sleb128 63
	.uleb128 0xf
	.long	.LASF447
	.sleb128 64
	.uleb128 0xf
	.long	.LASF448
	.sleb128 65
	.uleb128 0xf
	.long	.LASF449
	.sleb128 66
	.uleb128 0xf
	.long	.LASF450
	.sleb128 67
	.uleb128 0xf
	.long	.LASF451
	.sleb128 68
	.uleb128 0xf
	.long	.LASF452
	.sleb128 69
	.uleb128 0xf
	.long	.LASF453
	.sleb128 70
	.uleb128 0xf
	.long	.LASF454
	.sleb128 71
	.uleb128 0xf
	.long	.LASF455
	.sleb128 72
	.uleb128 0xf
	.long	.LASF456
	.sleb128 73
	.uleb128 0xf
	.long	.LASF457
	.sleb128 74
	.uleb128 0xf
	.long	.LASF458
	.sleb128 75
	.uleb128 0xf
	.long	.LASF459
	.sleb128 76
	.uleb128 0xf
	.long	.LASF460
	.sleb128 77
	.uleb128 0xf
	.long	.LASF461
	.sleb128 78
	.uleb128 0xf
	.long	.LASF462
	.sleb128 79
	.uleb128 0xf
	.long	.LASF463
	.sleb128 80
	.uleb128 0xf
	.long	.LASF464
	.sleb128 81
	.uleb128 0xf
	.long	.LASF465
	.sleb128 82
	.uleb128 0xf
	.long	.LASF466
	.sleb128 83
	.uleb128 0xf
	.long	.LASF467
	.sleb128 84
	.uleb128 0xf
	.long	.LASF468
	.sleb128 85
	.uleb128 0xf
	.long	.LASF469
	.sleb128 86
	.uleb128 0xf
	.long	.LASF470
	.sleb128 87
	.uleb128 0xf
	.long	.LASF471
	.sleb128 88
	.uleb128 0xf
	.long	.LASF472
	.sleb128 89
	.uleb128 0xf
	.long	.LASF473
	.sleb128 90
	.uleb128 0xf
	.long	.LASF474
	.sleb128 91
	.uleb128 0xf
	.long	.LASF475
	.sleb128 92
	.uleb128 0xf
	.long	.LASF476
	.sleb128 93
	.uleb128 0xf
	.long	.LASF477
	.sleb128 94
	.uleb128 0xf
	.long	.LASF478
	.sleb128 95
	.uleb128 0xf
	.long	.LASF479
	.sleb128 96
	.uleb128 0xf
	.long	.LASF480
	.sleb128 97
	.uleb128 0xf
	.long	.LASF481
	.sleb128 98
	.uleb128 0xf
	.long	.LASF482
	.sleb128 99
	.uleb128 0xf
	.long	.LASF483
	.sleb128 100
	.uleb128 0xf
	.long	.LASF484
	.sleb128 101
	.uleb128 0xf
	.long	.LASF485
	.sleb128 102
	.uleb128 0xf
	.long	.LASF486
	.sleb128 103
	.uleb128 0xf
	.long	.LASF487
	.sleb128 104
	.uleb128 0xf
	.long	.LASF488
	.sleb128 105
	.uleb128 0xf
	.long	.LASF489
	.sleb128 106
	.uleb128 0xf
	.long	.LASF490
	.sleb128 107
	.uleb128 0xf
	.long	.LASF491
	.sleb128 108
	.uleb128 0xf
	.long	.LASF492
	.sleb128 109
	.uleb128 0xf
	.long	.LASF493
	.sleb128 110
	.uleb128 0xf
	.long	.LASF494
	.sleb128 111
	.uleb128 0xf
	.long	.LASF495
	.sleb128 112
	.uleb128 0xf
	.long	.LASF496
	.sleb128 113
	.uleb128 0xf
	.long	.LASF497
	.sleb128 114
	.uleb128 0xf
	.long	.LASF498
	.sleb128 115
	.uleb128 0xf
	.long	.LASF499
	.sleb128 116
	.uleb128 0xf
	.long	.LASF500
	.sleb128 117
	.uleb128 0xf
	.long	.LASF501
	.sleb128 118
	.uleb128 0xf
	.long	.LASF502
	.sleb128 119
	.uleb128 0xf
	.long	.LASF503
	.sleb128 120
	.uleb128 0xf
	.long	.LASF504
	.sleb128 121
	.uleb128 0xf
	.long	.LASF505
	.sleb128 122
	.uleb128 0xf
	.long	.LASF506
	.sleb128 123
	.uleb128 0xf
	.long	.LASF507
	.sleb128 124
	.uleb128 0xf
	.long	.LASF508
	.sleb128 125
	.uleb128 0xf
	.long	.LASF509
	.sleb128 126
	.uleb128 0xf
	.long	.LASF510
	.sleb128 127
	.uleb128 0xf
	.long	.LASF511
	.sleb128 128
	.uleb128 0xf
	.long	.LASF512
	.sleb128 129
	.uleb128 0xf
	.long	.LASF513
	.sleb128 130
	.uleb128 0xf
	.long	.LASF514
	.sleb128 131
	.uleb128 0xf
	.long	.LASF515
	.sleb128 132
	.uleb128 0xf
	.long	.LASF516
	.sleb128 133
	.uleb128 0xf
	.long	.LASF517
	.sleb128 134
	.uleb128 0xf
	.long	.LASF518
	.sleb128 135
	.uleb128 0xf
	.long	.LASF519
	.sleb128 136
	.uleb128 0xf
	.long	.LASF520
	.sleb128 137
	.uleb128 0xf
	.long	.LASF521
	.sleb128 138
	.uleb128 0xf
	.long	.LASF522
	.sleb128 139
	.uleb128 0xf
	.long	.LASF523
	.sleb128 140
	.uleb128 0xf
	.long	.LASF524
	.sleb128 141
	.uleb128 0xf
	.long	.LASF525
	.sleb128 142
	.uleb128 0xf
	.long	.LASF526
	.sleb128 143
	.uleb128 0xf
	.long	.LASF527
	.sleb128 144
	.uleb128 0xf
	.long	.LASF528
	.sleb128 145
	.uleb128 0xf
	.long	.LASF529
	.sleb128 146
	.uleb128 0xf
	.long	.LASF530
	.sleb128 147
	.byte	0
	.uleb128 0x18
	.long	.LASF531
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x135b
	.uleb128 0xf
	.long	.LASF532
	.sleb128 0
	.uleb128 0xf
	.long	.LASF533
	.sleb128 1
	.uleb128 0xf
	.long	.LASF534
	.sleb128 2
	.uleb128 0xf
	.long	.LASF535
	.sleb128 3
	.uleb128 0xf
	.long	.LASF536
	.sleb128 4
	.uleb128 0xf
	.long	.LASF537
	.sleb128 5
	.uleb128 0xf
	.long	.LASF538
	.sleb128 6
	.uleb128 0xf
	.long	.LASF539
	.sleb128 7
	.uleb128 0xf
	.long	.LASF540
	.sleb128 8
	.uleb128 0xf
	.long	.LASF541
	.sleb128 9
	.uleb128 0xf
	.long	.LASF542
	.sleb128 10
	.uleb128 0xf
	.long	.LASF543
	.sleb128 11
	.uleb128 0xf
	.long	.LASF544
	.sleb128 12
	.uleb128 0xf
	.long	.LASF545
	.sleb128 13
	.uleb128 0xf
	.long	.LASF546
	.sleb128 14
	.uleb128 0xf
	.long	.LASF547
	.sleb128 15
	.uleb128 0xf
	.long	.LASF548
	.sleb128 16
	.uleb128 0xf
	.long	.LASF549
	.sleb128 17
	.uleb128 0xf
	.long	.LASF550
	.sleb128 18
	.uleb128 0xf
	.long	.LASF551
	.sleb128 19
	.uleb128 0xf
	.long	.LASF552
	.sleb128 20
	.uleb128 0xf
	.long	.LASF553
	.sleb128 21
	.uleb128 0xf
	.long	.LASF554
	.sleb128 22
	.uleb128 0xf
	.long	.LASF555
	.sleb128 23
	.uleb128 0xf
	.long	.LASF556
	.sleb128 24
	.uleb128 0xf
	.long	.LASF557
	.sleb128 25
	.uleb128 0xf
	.long	.LASF558
	.sleb128 26
	.uleb128 0xf
	.long	.LASF559
	.sleb128 27
	.uleb128 0xf
	.long	.LASF560
	.sleb128 28
	.uleb128 0xf
	.long	.LASF561
	.sleb128 29
	.uleb128 0xf
	.long	.LASF562
	.sleb128 30
	.uleb128 0xf
	.long	.LASF563
	.sleb128 31
	.uleb128 0xf
	.long	.LASF564
	.sleb128 32
	.uleb128 0xf
	.long	.LASF565
	.sleb128 33
	.uleb128 0xf
	.long	.LASF566
	.sleb128 34
	.uleb128 0xf
	.long	.LASF567
	.sleb128 35
	.uleb128 0xf
	.long	.LASF568
	.sleb128 36
	.uleb128 0xf
	.long	.LASF569
	.sleb128 37
	.uleb128 0xf
	.long	.LASF570
	.sleb128 38
	.uleb128 0xf
	.long	.LASF571
	.sleb128 39
	.uleb128 0xf
	.long	.LASF572
	.sleb128 40
	.uleb128 0xf
	.long	.LASF573
	.sleb128 41
	.uleb128 0xf
	.long	.LASF574
	.sleb128 42
	.uleb128 0xf
	.long	.LASF575
	.sleb128 43
	.uleb128 0xf
	.long	.LASF576
	.sleb128 44
	.uleb128 0xf
	.long	.LASF577
	.sleb128 45
	.uleb128 0xf
	.long	.LASF578
	.sleb128 46
	.uleb128 0xf
	.long	.LASF579
	.sleb128 47
	.uleb128 0xf
	.long	.LASF580
	.sleb128 48
	.uleb128 0xf
	.long	.LASF581
	.sleb128 49
	.uleb128 0xf
	.long	.LASF582
	.sleb128 50
	.uleb128 0xf
	.long	.LASF583
	.sleb128 51
	.uleb128 0xf
	.long	.LASF584
	.sleb128 52
	.uleb128 0xf
	.long	.LASF585
	.sleb128 53
	.uleb128 0xf
	.long	.LASF586
	.sleb128 54
	.uleb128 0xf
	.long	.LASF587
	.sleb128 55
	.uleb128 0xf
	.long	.LASF588
	.sleb128 56
	.uleb128 0xf
	.long	.LASF589
	.sleb128 57
	.uleb128 0xf
	.long	.LASF590
	.sleb128 58
	.uleb128 0xf
	.long	.LASF591
	.sleb128 59
	.uleb128 0xf
	.long	.LASF592
	.sleb128 60
	.uleb128 0xf
	.long	.LASF593
	.sleb128 61
	.uleb128 0xf
	.long	.LASF594
	.sleb128 62
	.uleb128 0xf
	.long	.LASF595
	.sleb128 63
	.uleb128 0xf
	.long	.LASF596
	.sleb128 64
	.uleb128 0xf
	.long	.LASF597
	.sleb128 65
	.uleb128 0xf
	.long	.LASF598
	.sleb128 66
	.uleb128 0xf
	.long	.LASF599
	.sleb128 67
	.uleb128 0xf
	.long	.LASF600
	.sleb128 68
	.uleb128 0xf
	.long	.LASF601
	.sleb128 69
	.uleb128 0xf
	.long	.LASF602
	.sleb128 70
	.uleb128 0xf
	.long	.LASF603
	.sleb128 71
	.uleb128 0xf
	.long	.LASF604
	.sleb128 72
	.uleb128 0xf
	.long	.LASF605
	.sleb128 73
	.uleb128 0xf
	.long	.LASF606
	.sleb128 74
	.uleb128 0xf
	.long	.LASF607
	.sleb128 75
	.uleb128 0xf
	.long	.LASF608
	.sleb128 76
	.uleb128 0xf
	.long	.LASF609
	.sleb128 77
	.uleb128 0xf
	.long	.LASF610
	.sleb128 78
	.uleb128 0xf
	.long	.LASF611
	.sleb128 79
	.uleb128 0xf
	.long	.LASF612
	.sleb128 80
	.uleb128 0xf
	.long	.LASF613
	.sleb128 81
	.uleb128 0xf
	.long	.LASF614
	.sleb128 82
	.uleb128 0xf
	.long	.LASF615
	.sleb128 83
	.uleb128 0xf
	.long	.LASF616
	.sleb128 84
	.uleb128 0xf
	.long	.LASF617
	.sleb128 85
	.uleb128 0xf
	.long	.LASF618
	.sleb128 86
	.uleb128 0xf
	.long	.LASF619
	.sleb128 87
	.uleb128 0xf
	.long	.LASF620
	.sleb128 88
	.uleb128 0xf
	.long	.LASF621
	.sleb128 89
	.uleb128 0xf
	.long	.LASF622
	.sleb128 90
	.uleb128 0xf
	.long	.LASF623
	.sleb128 91
	.uleb128 0xf
	.long	.LASF624
	.sleb128 92
	.uleb128 0xf
	.long	.LASF625
	.sleb128 93
	.uleb128 0xf
	.long	.LASF626
	.sleb128 94
	.uleb128 0xf
	.long	.LASF627
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF628
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x14f7
	.uleb128 0x8
	.long	.LASF629
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF630
	.byte	0x4
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF631
	.byte	0x4
	.byte	0x81
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF632
	.byte	0x4
	.byte	0x82
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF633
	.byte	0x4
	.byte	0x83
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF634
	.byte	0x4
	.byte	0x84
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF635
	.byte	0x4
	.byte	0x85
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF636
	.byte	0x4
	.byte	0x86
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF637
	.byte	0x4
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF638
	.byte	0x4
	.byte	0x89
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF639
	.byte	0x4
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF640
	.byte	0x4
	.byte	0x8b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF641
	.byte	0x4
	.byte	0x8c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF642
	.byte	0x4
	.byte	0x8d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF643
	.byte	0x4
	.byte	0x8e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF644
	.byte	0x4
	.byte	0x8f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF645
	.byte	0x4
	.byte	0x90
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF646
	.byte	0x4
	.byte	0x92
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF647
	.byte	0x4
	.byte	0x93
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF648
	.byte	0x4
	.byte	0x94
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF649
	.byte	0x4
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF650
	.byte	0x4
	.byte	0x96
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF651
	.byte	0x4
	.byte	0x97
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF652
	.byte	0x4
	.byte	0x98
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF653
	.byte	0x4
	.byte	0x99
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x151b
	.uleb128 0x20
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x31b
	.byte	0
	.uleb128 0x11
	.long	.LASF654
	.byte	0x4
	.value	0x2cb
	.long	0x314
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF655
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x1550
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x14f7
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.byte	0x18
	.byte	0x7
	.byte	0x6b
	.long	0x1563
	.uleb128 0x6
	.string	"r"
	.byte	0x7
	.byte	0x6c
	.long	0x1563
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	0x1573
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF656
	.byte	0x7
	.byte	0x6d
	.long	0x1550
	.uleb128 0x10
	.long	.LASF657
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x15b3
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x1573
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF658
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x15f5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF659
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x11
	.long	.LASF660
	.byte	0x4
	.value	0x2ee
	.long	0x35b
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF661
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1637
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF662
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF663
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF664
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x166c
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF665
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF666
	.byte	0x10
	.byte	0x8
	.byte	0x1a
	.long	0x1691
	.uleb128 0x6
	.string	"len"
	.byte	0x8
	.byte	0x1c
	.long	0x30b
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x8
	.byte	0x1d
	.long	0x1691
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1697
	.uleb128 0x16
	.long	0x322
	.uleb128 0x10
	.long	.LASF667
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x16c3
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x135b
	.byte	0
	.uleb128 0x20
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x166c
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF668
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x16f8
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x135b
	.byte	0
	.uleb128 0x11
	.long	.LASF669
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF670
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF671
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x172b
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x135b
	.byte	0
	.uleb128 0x11
	.long	.LASF659
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x20
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x172b
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0x173b
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF672
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1770
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x135b
	.byte	0
	.uleb128 0x11
	.long	.LASF673
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x11
	.long	.LASF674
	.byte	0x4
	.value	0x373
	.long	0x172b
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF675
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1809
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x135b
	.byte	0
	.uleb128 0x21
	.long	.LASF676
	.byte	0x4
	.value	0x3a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x21
	.long	.LASF677
	.byte	0x4
	.value	0x3a8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x21
	.long	.LASF678
	.byte	0x4
	.value	0x3a9
	.long	0x30b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x11
	.long	.LASF679
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF680
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF681
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x11
	.long	.LASF682
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x11
	.long	.LASF683
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF684
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x182b
	.uleb128 0xa
	.long	.LASF685
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF660
	.byte	0x4
	.value	0x4d8
	.long	0x33e
	.byte	0
	.uleb128 0x10
	.long	.LASF686
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1a40
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x135b
	.byte	0
	.uleb128 0x11
	.long	.LASF687
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF285
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF688
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF689
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x30b
	.byte	0x38
	.uleb128 0x21
	.long	.LASF690
	.byte	0x4
	.value	0x4c1
	.long	0x30b
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x30b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF691
	.byte	0x4
	.value	0x4c4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF692
	.byte	0x4
	.value	0x4c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF693
	.byte	0x4
	.value	0x4c6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF694
	.byte	0x4
	.value	0x4c7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF695
	.byte	0x4
	.value	0x4c8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF696
	.byte	0x4
	.value	0x4c9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF697
	.byte	0x4
	.value	0x4ca
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF646
	.byte	0x4
	.value	0x4cc
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF647
	.byte	0x4
	.value	0x4cd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF648
	.byte	0x4
	.value	0x4ce
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF649
	.byte	0x4
	.value	0x4cf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF650
	.byte	0x4
	.value	0x4d0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF651
	.byte	0x4
	.value	0x4d1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF652
	.byte	0x4
	.value	0x4d2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF698
	.byte	0x4
	.value	0x4d3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF286
	.byte	0x4
	.value	0x4d5
	.long	0x30b
	.byte	0x40
	.uleb128 0x11
	.long	.LASF699
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF700
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF701
	.byte	0x4
	.value	0x4d8
	.long	0x1809
	.byte	0x58
	.uleb128 0x11
	.long	.LASF702
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF703
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF704
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF705
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF706
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF707
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x11
	.long	.LASF708
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x11
	.long	.LASF709
	.byte	0x4
	.value	0x4e0
	.long	0x314
	.byte	0x98
	.uleb128 0x11
	.long	.LASF710
	.byte	0x4
	.value	0x4e2
	.long	0x1a45
	.byte	0xa0
	.byte	0
	.uleb128 0x1e
	.long	.LASF711
	.uleb128 0x3
	.byte	0x8
	.long	0x1a40
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1a75
	.uleb128 0x21
	.long	.LASF286
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.long	.LASF712
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1a9d
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x10ee
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x314
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1a4b
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1acf
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1f4f
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1de
	.byte	0
	.uleb128 0x23
	.long	.LASF713
	.value	0x1b0
	.byte	0x9
	.byte	0xae
	.long	0x1f4f
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb0
	.long	0x2665
	.byte	0
	.uleb128 0x8
	.long	.LASF714
	.byte	0x9
	.byte	0xb1
	.long	0x2670
	.byte	0x8
	.uleb128 0x8
	.long	.LASF283
	.byte	0x9
	.byte	0xb2
	.long	0x2676
	.byte	0x10
	.uleb128 0x8
	.long	.LASF715
	.byte	0x9
	.byte	0xb3
	.long	0x267c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF716
	.byte	0x9
	.byte	0xb4
	.long	0x2687
	.byte	0x20
	.uleb128 0x8
	.long	.LASF702
	.byte	0x9
	.byte	0xb9
	.long	0x35b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0x9
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF717
	.byte	0x9
	.byte	0xbf
	.long	0x1f4f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF718
	.byte	0x9
	.byte	0xc4
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF719
	.byte	0x9
	.byte	0xc9
	.long	0x1de
	.byte	0x44
	.uleb128 0x8
	.long	.LASF720
	.byte	0x9
	.byte	0xce
	.long	0x1de
	.byte	0x48
	.uleb128 0x8
	.long	.LASF721
	.byte	0x9
	.byte	0xd2
	.long	0x1de
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF722
	.byte	0x9
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF723
	.byte	0x9
	.byte	0xda
	.long	0x2ff
	.byte	0x58
	.uleb128 0x8
	.long	.LASF724
	.byte	0x9
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF725
	.byte	0x9
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF726
	.byte	0x9
	.byte	0xe7
	.long	0x35b
	.byte	0x88
	.uleb128 0x8
	.long	.LASF727
	.byte	0x9
	.byte	0xeb
	.long	0x2692
	.byte	0x90
	.uleb128 0x8
	.long	.LASF728
	.byte	0x9
	.byte	0xee
	.long	0x1de
	.byte	0x98
	.uleb128 0x8
	.long	.LASF729
	.byte	0x9
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF730
	.byte	0x9
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF731
	.byte	0x9
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF732
	.byte	0x9
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF733
	.byte	0x9
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF734
	.byte	0x9
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x11
	.long	.LASF735
	.byte	0x9
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF736
	.byte	0x9
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF737
	.byte	0x9
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF738
	.byte	0x9
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF739
	.byte	0x9
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x11
	.long	.LASF740
	.byte	0x9
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x24
	.long	.LASF741
	.byte	0x9
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x24
	.long	.LASF742
	.byte	0x9
	.value	0x12f
	.long	0x314
	.value	0x108
	.uleb128 0x24
	.long	.LASF743
	.byte	0x9
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x24
	.long	.LASF744
	.byte	0x9
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x24
	.long	.LASF745
	.byte	0x9
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x24
	.long	.LASF746
	.byte	0x9
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x24
	.long	.LASF747
	.byte	0x9
	.value	0x148
	.long	0x30b
	.value	0x130
	.uleb128 0x24
	.long	.LASF748
	.byte	0x9
	.value	0x14e
	.long	0xc75
	.value	0x138
	.uleb128 0x24
	.long	.LASF749
	.byte	0x9
	.value	0x151
	.long	0x269d
	.value	0x140
	.uleb128 0x24
	.long	.LASF750
	.byte	0x9
	.value	0x154
	.long	0x1de
	.value	0x148
	.uleb128 0x24
	.long	.LASF751
	.byte	0x9
	.value	0x157
	.long	0x1de
	.value	0x14c
	.uleb128 0x24
	.long	.LASF752
	.byte	0x9
	.value	0x15d
	.long	0x1de
	.value	0x150
	.uleb128 0x24
	.long	.LASF753
	.byte	0x9
	.value	0x161
	.long	0x2507
	.value	0x158
	.uleb128 0x24
	.long	.LASF754
	.byte	0x9
	.value	0x164
	.long	0x1de
	.value	0x160
	.uleb128 0x24
	.long	.LASF755
	.byte	0x9
	.value	0x165
	.long	0x1de
	.value	0x164
	.uleb128 0x24
	.long	.LASF756
	.byte	0x9
	.value	0x167
	.long	0x312
	.value	0x168
	.uleb128 0x24
	.long	.LASF757
	.byte	0x9
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x24
	.long	.LASF758
	.byte	0x9
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x24
	.long	.LASF759
	.byte	0x9
	.value	0x16d
	.long	0x1de
	.value	0x180
	.uleb128 0x24
	.long	.LASF760
	.byte	0x9
	.value	0x170
	.long	0x1de
	.value	0x184
	.uleb128 0x24
	.long	.LASF761
	.byte	0x9
	.value	0x175
	.long	0x26a8
	.value	0x188
	.uleb128 0x24
	.long	.LASF762
	.byte	0x9
	.value	0x177
	.long	0x1de
	.value	0x190
	.uleb128 0x24
	.long	.LASF763
	.byte	0x9
	.value	0x179
	.long	0x1de
	.value	0x194
	.uleb128 0x24
	.long	.LASF764
	.byte	0x9
	.value	0x17c
	.long	0x26b3
	.value	0x198
	.uleb128 0x24
	.long	.LASF765
	.byte	0x9
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x25
	.long	.LASF766
	.byte	0x9
	.value	0x188
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF767
	.byte	0x9
	.value	0x18c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF768
	.byte	0x9
	.value	0x18f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF769
	.byte	0x9
	.value	0x192
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF770
	.byte	0x9
	.value	0x195
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF771
	.byte	0x9
	.value	0x198
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF772
	.byte	0x9
	.value	0x19c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF773
	.byte	0x9
	.value	0x19f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF774
	.byte	0x9
	.value	0x1a3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF775
	.byte	0x9
	.value	0x1a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF776
	.byte	0x9
	.value	0x1aa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF777
	.byte	0x9
	.value	0x1ad
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF778
	.byte	0x9
	.value	0x1b2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF779
	.byte	0x9
	.value	0x1b6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF780
	.byte	0x9
	.value	0x1b9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF781
	.byte	0x9
	.value	0x1bd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF782
	.byte	0x9
	.value	0x1c1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF783
	.byte	0x9
	.value	0x1c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF784
	.byte	0x9
	.value	0x1cb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF785
	.byte	0x9
	.value	0x1d4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF786
	.byte	0x9
	.value	0x1d7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF787
	.byte	0x9
	.value	0x1da
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF788
	.byte	0x9
	.value	0x1dd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF789
	.byte	0x9
	.value	0x1e0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1acf
	.uleb128 0x10
	.long	.LASF790
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x22d9
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x135b
	.byte	0
	.uleb128 0x11
	.long	.LASF791
	.byte	0x4
	.value	0x6df
	.long	0x35b
	.byte	0x18
	.uleb128 0x11
	.long	.LASF792
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x30b
	.byte	0x24
	.uleb128 0x11
	.long	.LASF285
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x21
	.long	.LASF793
	.byte	0x4
	.value	0x6e5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x21
	.long	.LASF794
	.byte	0x4
	.value	0x6e6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x21
	.long	.LASF795
	.byte	0x4
	.value	0x6e7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x21
	.long	.LASF796
	.byte	0x4
	.value	0x6e8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x21
	.long	.LASF797
	.byte	0x4
	.value	0x6e9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x21
	.long	.LASF798
	.byte	0x4
	.value	0x6ea
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x21
	.long	.LASF799
	.byte	0x4
	.value	0x6eb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x21
	.long	.LASF677
	.byte	0x4
	.value	0x6ec
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x21
	.long	.LASF800
	.byte	0x4
	.value	0x6ee
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x21
	.long	.LASF801
	.byte	0x4
	.value	0x6ef
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x21
	.long	.LASF802
	.byte	0x4
	.value	0x6f0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x21
	.long	.LASF803
	.byte	0x4
	.value	0x6f1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x21
	.long	.LASF804
	.byte	0x4
	.value	0x6f2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x21
	.long	.LASF805
	.byte	0x4
	.value	0x6f3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x21
	.long	.LASF806
	.byte	0x4
	.value	0x6f4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x21
	.long	.LASF807
	.byte	0x4
	.value	0x6f5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x21
	.long	.LASF808
	.byte	0x4
	.value	0x6f7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x21
	.long	.LASF809
	.byte	0x4
	.value	0x6f8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x21
	.long	.LASF810
	.byte	0x4
	.value	0x6f9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x21
	.long	.LASF811
	.byte	0x4
	.value	0x6fa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x21
	.long	.LASF812
	.byte	0x4
	.value	0x6fb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x21
	.long	.LASF813
	.byte	0x4
	.value	0x6fc
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.long	.LASF814
	.byte	0x4
	.value	0x6fd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x21
	.long	.LASF697
	.byte	0x4
	.value	0x6ff
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x21
	.long	.LASF815
	.byte	0x4
	.value	0x700
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x21
	.long	.LASF698
	.byte	0x4
	.value	0x701
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x21
	.long	.LASF816
	.byte	0x4
	.value	0x702
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x21
	.long	.LASF646
	.byte	0x4
	.value	0x705
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x21
	.long	.LASF647
	.byte	0x4
	.value	0x706
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x21
	.long	.LASF648
	.byte	0x4
	.value	0x707
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x21
	.long	.LASF649
	.byte	0x4
	.value	0x708
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x21
	.long	.LASF650
	.byte	0x4
	.value	0x709
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x21
	.long	.LASF651
	.byte	0x4
	.value	0x70a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x21
	.long	.LASF652
	.byte	0x4
	.value	0x70b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x21
	.long	.LASF817
	.byte	0x4
	.value	0x70c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x20
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1a75
	.byte	0x38
	.uleb128 0x11
	.long	.LASF688
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF702
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF708
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF818
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x11
	.long	.LASF819
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF820
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF682
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF821
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF822
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF689
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x11
	.long	.LASF823
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x20
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1a9d
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF824
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF825
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF826
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF827
	.byte	0x4
	.value	0x73b
	.long	0x314
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF710
	.byte	0x4
	.value	0x73d
	.long	0x22de
	.byte	0xc8
	.byte	0
	.uleb128 0x1e
	.long	.LASF828
	.uleb128 0x3
	.byte	0x8
	.long	0x22d9
	.uleb128 0xe
	.long	.LASF829
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x242a
	.uleb128 0xf
	.long	.LASF830
	.sleb128 0
	.uleb128 0xf
	.long	.LASF831
	.sleb128 1
	.uleb128 0xf
	.long	.LASF832
	.sleb128 2
	.uleb128 0xf
	.long	.LASF833
	.sleb128 3
	.uleb128 0xf
	.long	.LASF834
	.sleb128 4
	.uleb128 0xf
	.long	.LASF835
	.sleb128 5
	.uleb128 0xf
	.long	.LASF836
	.sleb128 6
	.uleb128 0xf
	.long	.LASF837
	.sleb128 7
	.uleb128 0xf
	.long	.LASF838
	.sleb128 8
	.uleb128 0xf
	.long	.LASF839
	.sleb128 9
	.uleb128 0xf
	.long	.LASF840
	.sleb128 10
	.uleb128 0xf
	.long	.LASF841
	.sleb128 11
	.uleb128 0xf
	.long	.LASF842
	.sleb128 12
	.uleb128 0xf
	.long	.LASF843
	.sleb128 13
	.uleb128 0xf
	.long	.LASF844
	.sleb128 14
	.uleb128 0xf
	.long	.LASF845
	.sleb128 15
	.uleb128 0xf
	.long	.LASF846
	.sleb128 16
	.uleb128 0xf
	.long	.LASF847
	.sleb128 17
	.uleb128 0xf
	.long	.LASF848
	.sleb128 18
	.uleb128 0xf
	.long	.LASF849
	.sleb128 19
	.uleb128 0xf
	.long	.LASF850
	.sleb128 20
	.uleb128 0xf
	.long	.LASF851
	.sleb128 21
	.uleb128 0xf
	.long	.LASF852
	.sleb128 22
	.uleb128 0xf
	.long	.LASF853
	.sleb128 23
	.uleb128 0xf
	.long	.LASF854
	.sleb128 24
	.uleb128 0xf
	.long	.LASF855
	.sleb128 25
	.uleb128 0xf
	.long	.LASF856
	.sleb128 26
	.uleb128 0xf
	.long	.LASF857
	.sleb128 27
	.uleb128 0xf
	.long	.LASF858
	.sleb128 28
	.uleb128 0xf
	.long	.LASF859
	.sleb128 29
	.uleb128 0xf
	.long	.LASF860
	.sleb128 30
	.uleb128 0xf
	.long	.LASF861
	.sleb128 31
	.uleb128 0xf
	.long	.LASF862
	.sleb128 32
	.uleb128 0xf
	.long	.LASF863
	.sleb128 33
	.uleb128 0xf
	.long	.LASF864
	.sleb128 34
	.uleb128 0xf
	.long	.LASF865
	.sleb128 35
	.uleb128 0xf
	.long	.LASF866
	.sleb128 36
	.uleb128 0xf
	.long	.LASF867
	.sleb128 37
	.uleb128 0xf
	.long	.LASF868
	.sleb128 38
	.uleb128 0xf
	.long	.LASF869
	.sleb128 39
	.uleb128 0xf
	.long	.LASF870
	.sleb128 40
	.uleb128 0xf
	.long	.LASF871
	.sleb128 41
	.uleb128 0xf
	.long	.LASF872
	.sleb128 42
	.uleb128 0xf
	.long	.LASF873
	.sleb128 43
	.uleb128 0xf
	.long	.LASF874
	.sleb128 44
	.uleb128 0xf
	.long	.LASF875
	.sleb128 45
	.uleb128 0xf
	.long	.LASF876
	.sleb128 46
	.uleb128 0xf
	.long	.LASF877
	.sleb128 47
	.uleb128 0xf
	.long	.LASF878
	.sleb128 48
	.uleb128 0xf
	.long	.LASF879
	.sleb128 49
	.uleb128 0xf
	.long	.LASF880
	.sleb128 50
	.uleb128 0xf
	.long	.LASF881
	.sleb128 51
	.byte	0
	.uleb128 0xe
	.long	.LASF882
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x2480
	.uleb128 0xf
	.long	.LASF883
	.sleb128 0
	.uleb128 0xf
	.long	.LASF884
	.sleb128 1
	.uleb128 0xf
	.long	.LASF885
	.sleb128 2
	.uleb128 0xf
	.long	.LASF886
	.sleb128 3
	.uleb128 0xf
	.long	.LASF887
	.sleb128 4
	.uleb128 0xf
	.long	.LASF888
	.sleb128 5
	.uleb128 0xf
	.long	.LASF889
	.sleb128 6
	.uleb128 0xf
	.long	.LASF890
	.sleb128 7
	.uleb128 0xf
	.long	.LASF891
	.sleb128 8
	.uleb128 0xf
	.long	.LASF892
	.sleb128 9
	.uleb128 0xf
	.long	.LASF893
	.sleb128 10
	.uleb128 0xf
	.long	.LASF894
	.sleb128 11
	.byte	0
	.uleb128 0x16
	.long	0x35b
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF895
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xe
	.long	.LASF896
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x24ca
	.uleb128 0xf
	.long	.LASF897
	.sleb128 0
	.uleb128 0xf
	.long	.LASF898
	.sleb128 1
	.uleb128 0xf
	.long	.LASF899
	.sleb128 2
	.uleb128 0xf
	.long	.LASF900
	.sleb128 3
	.uleb128 0xf
	.long	.LASF901
	.sleb128 4
	.uleb128 0xf
	.long	.LASF902
	.sleb128 5
	.uleb128 0xf
	.long	.LASF903
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF904
	.byte	0x18
	.byte	0x9
	.byte	0x16
	.long	0x2507
	.uleb128 0x8
	.long	.LASF905
	.byte	0x9
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF906
	.byte	0x9
	.byte	0x19
	.long	0x381
	.byte	0x8
	.uleb128 0x8
	.long	.LASF907
	.byte	0x9
	.byte	0x1a
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF908
	.byte	0x9
	.byte	0x1b
	.long	0x2507
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x24ca
	.uleb128 0x4
	.long	.LASF909
	.byte	0x20
	.byte	0x9
	.byte	0x23
	.long	0x254a
	.uleb128 0x8
	.long	.LASF910
	.byte	0x9
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF911
	.byte	0x9
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF912
	.byte	0x9
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF908
	.byte	0x9
	.byte	0x28
	.long	0x254a
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x250d
	.uleb128 0x4
	.long	.LASF913
	.byte	0x58
	.byte	0x9
	.byte	0x35
	.long	0x25f9
	.uleb128 0x8
	.long	.LASF914
	.byte	0x9
	.byte	0x39
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF915
	.byte	0x9
	.byte	0x3c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF916
	.byte	0x9
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF917
	.byte	0x9
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF912
	.byte	0x9
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF909
	.byte	0x9
	.byte	0x4f
	.long	0x254a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF918
	.byte	0x9
	.byte	0x53
	.long	0x1de
	.byte	0x28
	.uleb128 0x8
	.long	.LASF919
	.byte	0x9
	.byte	0x57
	.long	0x1de
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF920
	.byte	0x9
	.byte	0x58
	.long	0x35b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF921
	.byte	0x9
	.byte	0x5e
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF922
	.byte	0x9
	.byte	0x63
	.long	0x25f9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF923
	.byte	0x9
	.byte	0x67
	.long	0x248c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF924
	.byte	0x9
	.byte	0x6b
	.long	0xc75
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x322
	.uleb128 0x4
	.long	.LASF925
	.byte	0x30
	.byte	0x9
	.byte	0x77
	.long	0x2660
	.uleb128 0x8
	.long	.LASF926
	.byte	0x9
	.byte	0x7b
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF927
	.byte	0x9
	.byte	0x8c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF928
	.byte	0x9
	.byte	0x92
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF929
	.byte	0x9
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF930
	.byte	0x9
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF931
	.byte	0x9
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF932
	.byte	0x9
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF933
	.uleb128 0x3
	.byte	0x8
	.long	0x2660
	.uleb128 0x1e
	.long	.LASF934
	.uleb128 0x3
	.byte	0x8
	.long	0x266b
	.uleb128 0x3
	.byte	0x8
	.long	0x25ff
	.uleb128 0x3
	.byte	0x8
	.long	0x2550
	.uleb128 0x1e
	.long	.LASF935
	.uleb128 0x3
	.byte	0x8
	.long	0x2682
	.uleb128 0x1e
	.long	.LASF936
	.uleb128 0x3
	.byte	0x8
	.long	0x268d
	.uleb128 0x1e
	.long	.LASF937
	.uleb128 0x3
	.byte	0x8
	.long	0x2698
	.uleb128 0x1e
	.long	.LASF938
	.uleb128 0x3
	.byte	0x8
	.long	0x26a3
	.uleb128 0x1e
	.long	.LASF939
	.uleb128 0x3
	.byte	0x8
	.long	0x26ae
	.uleb128 0xe
	.long	.LASF940
	.byte	0x4
	.byte	0xa
	.value	0x100
	.long	0x26e5
	.uleb128 0xf
	.long	.LASF941
	.sleb128 0
	.uleb128 0xf
	.long	.LASF942
	.sleb128 1
	.uleb128 0xf
	.long	.LASF943
	.sleb128 2
	.uleb128 0xf
	.long	.LASF944
	.sleb128 3
	.uleb128 0xf
	.long	.LASF945
	.sleb128 4
	.byte	0
	.uleb128 0x18
	.long	.LASF946
	.byte	0x4
	.byte	0xb
	.byte	0x7
	.long	0x35d2
	.uleb128 0xf
	.long	.LASF947
	.sleb128 0
	.uleb128 0xf
	.long	.LASF948
	.sleb128 2
	.uleb128 0xf
	.long	.LASF949
	.sleb128 15
	.uleb128 0xf
	.long	.LASF950
	.sleb128 16
	.uleb128 0xf
	.long	.LASF951
	.sleb128 30
	.uleb128 0xf
	.long	.LASF952
	.sleb128 31
	.uleb128 0xf
	.long	.LASF953
	.sleb128 42
	.uleb128 0xf
	.long	.LASF954
	.sleb128 73
	.uleb128 0xf
	.long	.LASF955
	.sleb128 77
	.uleb128 0xf
	.long	.LASF956
	.sleb128 80
	.uleb128 0xf
	.long	.LASF957
	.sleb128 105
	.uleb128 0xf
	.long	.LASF958
	.sleb128 106
	.uleb128 0xf
	.long	.LASF959
	.sleb128 107
	.uleb128 0xf
	.long	.LASF960
	.sleb128 115
	.uleb128 0xf
	.long	.LASF961
	.sleb128 116
	.uleb128 0xf
	.long	.LASF962
	.sleb128 117
	.uleb128 0xf
	.long	.LASF963
	.sleb128 118
	.uleb128 0xf
	.long	.LASF964
	.sleb128 120
	.uleb128 0xf
	.long	.LASF965
	.sleb128 121
	.uleb128 0xf
	.long	.LASF966
	.sleb128 122
	.uleb128 0xf
	.long	.LASF967
	.sleb128 123
	.uleb128 0xf
	.long	.LASF968
	.sleb128 125
	.uleb128 0xf
	.long	.LASF969
	.sleb128 126
	.uleb128 0xf
	.long	.LASF970
	.sleb128 142
	.uleb128 0xf
	.long	.LASF971
	.sleb128 143
	.uleb128 0xf
	.long	.LASF972
	.sleb128 153
	.uleb128 0xf
	.long	.LASF973
	.sleb128 154
	.uleb128 0xf
	.long	.LASF974
	.sleb128 155
	.uleb128 0xf
	.long	.LASF975
	.sleb128 156
	.uleb128 0xf
	.long	.LASF976
	.sleb128 158
	.uleb128 0xf
	.long	.LASF977
	.sleb128 159
	.uleb128 0xf
	.long	.LASF978
	.sleb128 160
	.uleb128 0xf
	.long	.LASF979
	.sleb128 161
	.uleb128 0xf
	.long	.LASF980
	.sleb128 163
	.uleb128 0xf
	.long	.LASF981
	.sleb128 164
	.uleb128 0xf
	.long	.LASF982
	.sleb128 165
	.uleb128 0xf
	.long	.LASF983
	.sleb128 166
	.uleb128 0xf
	.long	.LASF984
	.sleb128 167
	.uleb128 0xf
	.long	.LASF985
	.sleb128 173
	.uleb128 0xf
	.long	.LASF986
	.sleb128 179
	.uleb128 0xf
	.long	.LASF987
	.sleb128 180
	.uleb128 0xf
	.long	.LASF988
	.sleb128 181
	.uleb128 0xf
	.long	.LASF989
	.sleb128 182
	.uleb128 0xf
	.long	.LASF990
	.sleb128 183
	.uleb128 0xf
	.long	.LASF991
	.sleb128 184
	.uleb128 0xf
	.long	.LASF992
	.sleb128 191
	.uleb128 0xf
	.long	.LASF993
	.sleb128 208
	.uleb128 0xf
	.long	.LASF994
	.sleb128 227
	.uleb128 0xf
	.long	.LASF995
	.sleb128 231
	.uleb128 0xf
	.long	.LASF996
	.sleb128 235
	.uleb128 0xf
	.long	.LASF997
	.sleb128 236
	.uleb128 0xf
	.long	.LASF998
	.sleb128 266
	.uleb128 0xf
	.long	.LASF999
	.sleb128 267
	.uleb128 0xf
	.long	.LASF1000
	.sleb128 274
	.uleb128 0xf
	.long	.LASF1001
	.sleb128 275
	.uleb128 0xf
	.long	.LASF1002
	.sleb128 277
	.uleb128 0xf
	.long	.LASF1003
	.sleb128 281
	.uleb128 0xf
	.long	.LASF1004
	.sleb128 302
	.uleb128 0xf
	.long	.LASF1005
	.sleb128 355
	.uleb128 0xf
	.long	.LASF1006
	.sleb128 356
	.uleb128 0xf
	.long	.LASF1007
	.sleb128 358
	.uleb128 0xf
	.long	.LASF1008
	.sleb128 359
	.uleb128 0xf
	.long	.LASF1009
	.sleb128 374
	.uleb128 0xf
	.long	.LASF1010
	.sleb128 375
	.uleb128 0xf
	.long	.LASF1011
	.sleb128 377
	.uleb128 0xf
	.long	.LASF1012
	.sleb128 378
	.uleb128 0xf
	.long	.LASF1013
	.sleb128 405
	.uleb128 0xf
	.long	.LASF1014
	.sleb128 407
	.uleb128 0xf
	.long	.LASF1015
	.sleb128 418
	.uleb128 0xf
	.long	.LASF1016
	.sleb128 423
	.uleb128 0xf
	.long	.LASF1017
	.sleb128 425
	.uleb128 0xf
	.long	.LASF1018
	.sleb128 426
	.uleb128 0xf
	.long	.LASF1019
	.sleb128 448
	.uleb128 0xf
	.long	.LASF1020
	.sleb128 487
	.uleb128 0xf
	.long	.LASF1021
	.sleb128 502
	.uleb128 0xf
	.long	.LASF1022
	.sleb128 507
	.uleb128 0xf
	.long	.LASF1023
	.sleb128 513
	.uleb128 0xf
	.long	.LASF1024
	.sleb128 514
	.uleb128 0xf
	.long	.LASF1025
	.sleb128 515
	.uleb128 0xf
	.long	.LASF1026
	.sleb128 516
	.uleb128 0xf
	.long	.LASF1027
	.sleb128 517
	.uleb128 0xf
	.long	.LASF1028
	.sleb128 518
	.uleb128 0xf
	.long	.LASF1029
	.sleb128 519
	.uleb128 0xf
	.long	.LASF1030
	.sleb128 520
	.uleb128 0xf
	.long	.LASF1031
	.sleb128 521
	.uleb128 0xf
	.long	.LASF1032
	.sleb128 522
	.uleb128 0xf
	.long	.LASF1033
	.sleb128 523
	.uleb128 0xf
	.long	.LASF1034
	.sleb128 524
	.uleb128 0xf
	.long	.LASF1035
	.sleb128 559
	.uleb128 0xf
	.long	.LASF1036
	.sleb128 560
	.uleb128 0xf
	.long	.LASF1037
	.sleb128 561
	.uleb128 0xf
	.long	.LASF1038
	.sleb128 562
	.uleb128 0xf
	.long	.LASF1039
	.sleb128 563
	.uleb128 0xf
	.long	.LASF1040
	.sleb128 564
	.uleb128 0xf
	.long	.LASF1041
	.sleb128 566
	.uleb128 0xf
	.long	.LASF1042
	.sleb128 567
	.uleb128 0xf
	.long	.LASF1043
	.sleb128 572
	.uleb128 0xf
	.long	.LASF1044
	.sleb128 573
	.uleb128 0xf
	.long	.LASF1045
	.sleb128 575
	.uleb128 0xf
	.long	.LASF1046
	.sleb128 576
	.uleb128 0xf
	.long	.LASF1047
	.sleb128 577
	.uleb128 0xf
	.long	.LASF1048
	.sleb128 578
	.uleb128 0xf
	.long	.LASF1049
	.sleb128 580
	.uleb128 0xf
	.long	.LASF1050
	.sleb128 581
	.uleb128 0xf
	.long	.LASF1051
	.sleb128 582
	.uleb128 0xf
	.long	.LASF1052
	.sleb128 583
	.uleb128 0xf
	.long	.LASF1053
	.sleb128 584
	.uleb128 0xf
	.long	.LASF1054
	.sleb128 585
	.uleb128 0xf
	.long	.LASF1055
	.sleb128 586
	.uleb128 0xf
	.long	.LASF1056
	.sleb128 587
	.uleb128 0xf
	.long	.LASF1057
	.sleb128 588
	.uleb128 0xf
	.long	.LASF1058
	.sleb128 589
	.uleb128 0xf
	.long	.LASF1059
	.sleb128 590
	.uleb128 0xf
	.long	.LASF1060
	.sleb128 591
	.uleb128 0xf
	.long	.LASF1061
	.sleb128 592
	.uleb128 0xf
	.long	.LASF1062
	.sleb128 593
	.uleb128 0xf
	.long	.LASF1063
	.sleb128 594
	.uleb128 0xf
	.long	.LASF1064
	.sleb128 595
	.uleb128 0xf
	.long	.LASF1065
	.sleb128 596
	.uleb128 0xf
	.long	.LASF1066
	.sleb128 597
	.uleb128 0xf
	.long	.LASF1067
	.sleb128 598
	.uleb128 0xf
	.long	.LASF1068
	.sleb128 599
	.uleb128 0xf
	.long	.LASF1069
	.sleb128 600
	.uleb128 0xf
	.long	.LASF1070
	.sleb128 601
	.uleb128 0xf
	.long	.LASF1071
	.sleb128 602
	.uleb128 0xf
	.long	.LASF1072
	.sleb128 603
	.uleb128 0xf
	.long	.LASF1073
	.sleb128 604
	.uleb128 0xf
	.long	.LASF1074
	.sleb128 605
	.uleb128 0xf
	.long	.LASF1075
	.sleb128 606
	.uleb128 0xf
	.long	.LASF1076
	.sleb128 607
	.uleb128 0xf
	.long	.LASF1077
	.sleb128 608
	.uleb128 0xf
	.long	.LASF1078
	.sleb128 609
	.uleb128 0xf
	.long	.LASF1079
	.sleb128 610
	.uleb128 0xf
	.long	.LASF1080
	.sleb128 611
	.uleb128 0xf
	.long	.LASF1081
	.sleb128 612
	.uleb128 0xf
	.long	.LASF1082
	.sleb128 613
	.uleb128 0xf
	.long	.LASF1083
	.sleb128 615
	.uleb128 0xf
	.long	.LASF1084
	.sleb128 636
	.uleb128 0xf
	.long	.LASF1085
	.sleb128 637
	.uleb128 0xf
	.long	.LASF1086
	.sleb128 638
	.uleb128 0xf
	.long	.LASF1087
	.sleb128 639
	.uleb128 0xf
	.long	.LASF1088
	.sleb128 640
	.uleb128 0xf
	.long	.LASF1089
	.sleb128 649
	.uleb128 0xf
	.long	.LASF1090
	.sleb128 650
	.uleb128 0xf
	.long	.LASF1091
	.sleb128 657
	.uleb128 0xf
	.long	.LASF1092
	.sleb128 659
	.uleb128 0xf
	.long	.LASF1093
	.sleb128 660
	.uleb128 0xf
	.long	.LASF1094
	.sleb128 661
	.uleb128 0xf
	.long	.LASF1095
	.sleb128 662
	.uleb128 0xf
	.long	.LASF1096
	.sleb128 663
	.uleb128 0xf
	.long	.LASF1097
	.sleb128 664
	.uleb128 0xf
	.long	.LASF1098
	.sleb128 672
	.uleb128 0xf
	.long	.LASF1099
	.sleb128 674
	.uleb128 0xf
	.long	.LASF1100
	.sleb128 675
	.uleb128 0xf
	.long	.LASF1101
	.sleb128 676
	.uleb128 0xf
	.long	.LASF1102
	.sleb128 677
	.uleb128 0xf
	.long	.LASF1103
	.sleb128 678
	.uleb128 0xf
	.long	.LASF1104
	.sleb128 679
	.uleb128 0xf
	.long	.LASF1105
	.sleb128 680
	.uleb128 0xf
	.long	.LASF1106
	.sleb128 681
	.uleb128 0xf
	.long	.LASF1107
	.sleb128 682
	.uleb128 0xf
	.long	.LASF1108
	.sleb128 683
	.uleb128 0xf
	.long	.LASF1109
	.sleb128 684
	.uleb128 0xf
	.long	.LASF1110
	.sleb128 685
	.uleb128 0xf
	.long	.LASF1111
	.sleb128 686
	.uleb128 0xf
	.long	.LASF1112
	.sleb128 687
	.uleb128 0xf
	.long	.LASF1113
	.sleb128 688
	.uleb128 0xf
	.long	.LASF1114
	.sleb128 689
	.uleb128 0xf
	.long	.LASF1115
	.sleb128 690
	.uleb128 0xf
	.long	.LASF1116
	.sleb128 691
	.uleb128 0xf
	.long	.LASF1117
	.sleb128 692
	.uleb128 0xf
	.long	.LASF1118
	.sleb128 693
	.uleb128 0xf
	.long	.LASF1119
	.sleb128 694
	.uleb128 0xf
	.long	.LASF1120
	.sleb128 695
	.uleb128 0xf
	.long	.LASF1121
	.sleb128 696
	.uleb128 0xf
	.long	.LASF1122
	.sleb128 697
	.uleb128 0xf
	.long	.LASF1123
	.sleb128 698
	.uleb128 0xf
	.long	.LASF1124
	.sleb128 699
	.uleb128 0xf
	.long	.LASF1125
	.sleb128 700
	.uleb128 0xf
	.long	.LASF1126
	.sleb128 701
	.uleb128 0xf
	.long	.LASF1127
	.sleb128 702
	.uleb128 0xf
	.long	.LASF1128
	.sleb128 703
	.uleb128 0xf
	.long	.LASF1129
	.sleb128 708
	.uleb128 0xf
	.long	.LASF1130
	.sleb128 712
	.uleb128 0xf
	.long	.LASF1131
	.sleb128 718
	.uleb128 0xf
	.long	.LASF1132
	.sleb128 724
	.uleb128 0xf
	.long	.LASF1133
	.sleb128 726
	.uleb128 0xf
	.long	.LASF1134
	.sleb128 727
	.uleb128 0xf
	.long	.LASF1135
	.sleb128 728
	.uleb128 0xf
	.long	.LASF1136
	.sleb128 729
	.uleb128 0xf
	.long	.LASF1137
	.sleb128 730
	.uleb128 0xf
	.long	.LASF1138
	.sleb128 731
	.uleb128 0xf
	.long	.LASF1139
	.sleb128 732
	.uleb128 0xf
	.long	.LASF1140
	.sleb128 733
	.uleb128 0xf
	.long	.LASF1141
	.sleb128 734
	.uleb128 0xf
	.long	.LASF1142
	.sleb128 735
	.uleb128 0xf
	.long	.LASF1143
	.sleb128 736
	.uleb128 0xf
	.long	.LASF1144
	.sleb128 737
	.uleb128 0xf
	.long	.LASF1145
	.sleb128 738
	.uleb128 0xf
	.long	.LASF1146
	.sleb128 739
	.uleb128 0xf
	.long	.LASF1147
	.sleb128 740
	.uleb128 0xf
	.long	.LASF1148
	.sleb128 741
	.uleb128 0xf
	.long	.LASF1149
	.sleb128 742
	.uleb128 0xf
	.long	.LASF1150
	.sleb128 743
	.uleb128 0xf
	.long	.LASF1151
	.sleb128 744
	.uleb128 0xf
	.long	.LASF1152
	.sleb128 745
	.uleb128 0xf
	.long	.LASF1153
	.sleb128 746
	.uleb128 0xf
	.long	.LASF1154
	.sleb128 747
	.uleb128 0xf
	.long	.LASF1155
	.sleb128 748
	.uleb128 0xf
	.long	.LASF1156
	.sleb128 749
	.uleb128 0xf
	.long	.LASF1157
	.sleb128 750
	.uleb128 0xf
	.long	.LASF1158
	.sleb128 751
	.uleb128 0xf
	.long	.LASF1159
	.sleb128 752
	.uleb128 0xf
	.long	.LASF1160
	.sleb128 753
	.uleb128 0xf
	.long	.LASF1161
	.sleb128 754
	.uleb128 0xf
	.long	.LASF1162
	.sleb128 755
	.uleb128 0xf
	.long	.LASF1163
	.sleb128 756
	.uleb128 0xf
	.long	.LASF1164
	.sleb128 757
	.uleb128 0xf
	.long	.LASF1165
	.sleb128 758
	.uleb128 0xf
	.long	.LASF1166
	.sleb128 759
	.uleb128 0xf
	.long	.LASF1167
	.sleb128 760
	.uleb128 0xf
	.long	.LASF1168
	.sleb128 761
	.uleb128 0xf
	.long	.LASF1169
	.sleb128 762
	.uleb128 0xf
	.long	.LASF1170
	.sleb128 763
	.uleb128 0xf
	.long	.LASF1171
	.sleb128 764
	.uleb128 0xf
	.long	.LASF1172
	.sleb128 765
	.uleb128 0xf
	.long	.LASF1173
	.sleb128 766
	.uleb128 0xf
	.long	.LASF1174
	.sleb128 767
	.uleb128 0xf
	.long	.LASF1175
	.sleb128 768
	.uleb128 0xf
	.long	.LASF1176
	.sleb128 769
	.uleb128 0xf
	.long	.LASF1177
	.sleb128 770
	.uleb128 0xf
	.long	.LASF1178
	.sleb128 771
	.uleb128 0xf
	.long	.LASF1179
	.sleb128 772
	.uleb128 0xf
	.long	.LASF1180
	.sleb128 773
	.uleb128 0xf
	.long	.LASF1181
	.sleb128 774
	.uleb128 0xf
	.long	.LASF1182
	.sleb128 775
	.uleb128 0xf
	.long	.LASF1183
	.sleb128 776
	.uleb128 0xf
	.long	.LASF1184
	.sleb128 777
	.uleb128 0xf
	.long	.LASF1185
	.sleb128 778
	.uleb128 0xf
	.long	.LASF1186
	.sleb128 779
	.uleb128 0xf
	.long	.LASF1187
	.sleb128 780
	.uleb128 0xf
	.long	.LASF1188
	.sleb128 781
	.uleb128 0xf
	.long	.LASF1189
	.sleb128 782
	.uleb128 0xf
	.long	.LASF1190
	.sleb128 783
	.uleb128 0xf
	.long	.LASF1191
	.sleb128 784
	.uleb128 0xf
	.long	.LASF1192
	.sleb128 785
	.uleb128 0xf
	.long	.LASF1193
	.sleb128 786
	.uleb128 0xf
	.long	.LASF1194
	.sleb128 787
	.uleb128 0xf
	.long	.LASF1195
	.sleb128 788
	.uleb128 0xf
	.long	.LASF1196
	.sleb128 789
	.uleb128 0xf
	.long	.LASF1197
	.sleb128 790
	.uleb128 0xf
	.long	.LASF1198
	.sleb128 791
	.uleb128 0xf
	.long	.LASF1199
	.sleb128 792
	.uleb128 0xf
	.long	.LASF1200
	.sleb128 793
	.uleb128 0xf
	.long	.LASF1201
	.sleb128 794
	.uleb128 0xf
	.long	.LASF1202
	.sleb128 795
	.uleb128 0xf
	.long	.LASF1203
	.sleb128 796
	.uleb128 0xf
	.long	.LASF1204
	.sleb128 797
	.uleb128 0xf
	.long	.LASF1205
	.sleb128 798
	.uleb128 0xf
	.long	.LASF1206
	.sleb128 799
	.uleb128 0xf
	.long	.LASF1207
	.sleb128 800
	.uleb128 0xf
	.long	.LASF1208
	.sleb128 801
	.uleb128 0xf
	.long	.LASF1209
	.sleb128 802
	.uleb128 0xf
	.long	.LASF1210
	.sleb128 803
	.uleb128 0xf
	.long	.LASF1211
	.sleb128 806
	.uleb128 0xf
	.long	.LASF1212
	.sleb128 807
	.uleb128 0xf
	.long	.LASF1213
	.sleb128 808
	.uleb128 0xf
	.long	.LASF1214
	.sleb128 809
	.uleb128 0xf
	.long	.LASF1215
	.sleb128 810
	.uleb128 0xf
	.long	.LASF1216
	.sleb128 811
	.uleb128 0xf
	.long	.LASF1217
	.sleb128 812
	.uleb128 0xf
	.long	.LASF1218
	.sleb128 813
	.uleb128 0xf
	.long	.LASF1219
	.sleb128 814
	.uleb128 0xf
	.long	.LASF1220
	.sleb128 815
	.uleb128 0xf
	.long	.LASF1221
	.sleb128 816
	.uleb128 0xf
	.long	.LASF1222
	.sleb128 817
	.uleb128 0xf
	.long	.LASF1223
	.sleb128 818
	.uleb128 0xf
	.long	.LASF1224
	.sleb128 819
	.uleb128 0xf
	.long	.LASF1225
	.sleb128 820
	.uleb128 0xf
	.long	.LASF1226
	.sleb128 821
	.uleb128 0xf
	.long	.LASF1227
	.sleb128 822
	.uleb128 0xf
	.long	.LASF1228
	.sleb128 823
	.uleb128 0xf
	.long	.LASF1229
	.sleb128 824
	.uleb128 0xf
	.long	.LASF1230
	.sleb128 825
	.uleb128 0xf
	.long	.LASF1231
	.sleb128 826
	.uleb128 0xf
	.long	.LASF1232
	.sleb128 827
	.uleb128 0xf
	.long	.LASF1233
	.sleb128 828
	.uleb128 0xf
	.long	.LASF1234
	.sleb128 829
	.uleb128 0xf
	.long	.LASF1235
	.sleb128 830
	.uleb128 0xf
	.long	.LASF1236
	.sleb128 831
	.uleb128 0xf
	.long	.LASF1237
	.sleb128 834
	.uleb128 0xf
	.long	.LASF1238
	.sleb128 835
	.uleb128 0xf
	.long	.LASF1239
	.sleb128 836
	.uleb128 0xf
	.long	.LASF1240
	.sleb128 837
	.uleb128 0xf
	.long	.LASF1241
	.sleb128 838
	.uleb128 0xf
	.long	.LASF1242
	.sleb128 839
	.uleb128 0xf
	.long	.LASF1243
	.sleb128 840
	.uleb128 0xf
	.long	.LASF1244
	.sleb128 841
	.uleb128 0xf
	.long	.LASF1245
	.sleb128 842
	.uleb128 0xf
	.long	.LASF1246
	.sleb128 843
	.uleb128 0xf
	.long	.LASF1247
	.sleb128 844
	.uleb128 0xf
	.long	.LASF1248
	.sleb128 846
	.uleb128 0xf
	.long	.LASF1249
	.sleb128 847
	.uleb128 0xf
	.long	.LASF1250
	.sleb128 848
	.uleb128 0xf
	.long	.LASF1251
	.sleb128 849
	.uleb128 0xf
	.long	.LASF1252
	.sleb128 850
	.uleb128 0xf
	.long	.LASF1253
	.sleb128 851
	.uleb128 0xf
	.long	.LASF1254
	.sleb128 852
	.uleb128 0xf
	.long	.LASF1255
	.sleb128 861
	.uleb128 0xf
	.long	.LASF1256
	.sleb128 865
	.uleb128 0xf
	.long	.LASF1257
	.sleb128 870
	.uleb128 0xf
	.long	.LASF1258
	.sleb128 871
	.uleb128 0xf
	.long	.LASF1259
	.sleb128 878
	.uleb128 0xf
	.long	.LASF1260
	.sleb128 880
	.uleb128 0xf
	.long	.LASF1261
	.sleb128 884
	.uleb128 0xf
	.long	.LASF1262
	.sleb128 888
	.uleb128 0xf
	.long	.LASF1263
	.sleb128 892
	.uleb128 0xf
	.long	.LASF1264
	.sleb128 904
	.uleb128 0xf
	.long	.LASF1265
	.sleb128 905
	.uleb128 0xf
	.long	.LASF1266
	.sleb128 906
	.uleb128 0xf
	.long	.LASF1267
	.sleb128 907
	.uleb128 0xf
	.long	.LASF1268
	.sleb128 908
	.uleb128 0xf
	.long	.LASF1269
	.sleb128 909
	.uleb128 0xf
	.long	.LASF1270
	.sleb128 913
	.uleb128 0xf
	.long	.LASF1271
	.sleb128 916
	.uleb128 0xf
	.long	.LASF1272
	.sleb128 919
	.uleb128 0xf
	.long	.LASF1273
	.sleb128 922
	.uleb128 0xf
	.long	.LASF1274
	.sleb128 925
	.uleb128 0xf
	.long	.LASF1275
	.sleb128 926
	.uleb128 0xf
	.long	.LASF1276
	.sleb128 927
	.uleb128 0xf
	.long	.LASF1277
	.sleb128 928
	.uleb128 0xf
	.long	.LASF1278
	.sleb128 932
	.uleb128 0xf
	.long	.LASF1279
	.sleb128 933
	.uleb128 0xf
	.long	.LASF1280
	.sleb128 934
	.uleb128 0xf
	.long	.LASF1281
	.sleb128 935
	.uleb128 0xf
	.long	.LASF1282
	.sleb128 939
	.uleb128 0xf
	.long	.LASF1283
	.sleb128 940
	.uleb128 0xf
	.long	.LASF1284
	.sleb128 941
	.uleb128 0xf
	.long	.LASF1285
	.sleb128 942
	.uleb128 0xf
	.long	.LASF1286
	.sleb128 946
	.uleb128 0xf
	.long	.LASF1287
	.sleb128 947
	.uleb128 0xf
	.long	.LASF1288
	.sleb128 948
	.uleb128 0xf
	.long	.LASF1289
	.sleb128 949
	.uleb128 0xf
	.long	.LASF1290
	.sleb128 951
	.uleb128 0xf
	.long	.LASF1291
	.sleb128 953
	.uleb128 0xf
	.long	.LASF1292
	.sleb128 963
	.uleb128 0xf
	.long	.LASF1293
	.sleb128 964
	.uleb128 0xf
	.long	.LASF1294
	.sleb128 965
	.uleb128 0xf
	.long	.LASF1295
	.sleb128 966
	.uleb128 0xf
	.long	.LASF1296
	.sleb128 967
	.uleb128 0xf
	.long	.LASF1297
	.sleb128 968
	.uleb128 0xf
	.long	.LASF1298
	.sleb128 969
	.uleb128 0xf
	.long	.LASF1299
	.sleb128 971
	.uleb128 0xf
	.long	.LASF1300
	.sleb128 972
	.uleb128 0xf
	.long	.LASF1301
	.sleb128 973
	.uleb128 0xf
	.long	.LASF1302
	.sleb128 974
	.uleb128 0xf
	.long	.LASF1303
	.sleb128 975
	.uleb128 0xf
	.long	.LASF1304
	.sleb128 976
	.uleb128 0xf
	.long	.LASF1305
	.sleb128 977
	.uleb128 0xf
	.long	.LASF1306
	.sleb128 978
	.uleb128 0xf
	.long	.LASF1307
	.sleb128 979
	.uleb128 0xf
	.long	.LASF1308
	.sleb128 980
	.uleb128 0xf
	.long	.LASF1309
	.sleb128 981
	.uleb128 0xf
	.long	.LASF1310
	.sleb128 982
	.uleb128 0xf
	.long	.LASF1311
	.sleb128 983
	.uleb128 0xf
	.long	.LASF1312
	.sleb128 984
	.uleb128 0xf
	.long	.LASF1313
	.sleb128 985
	.uleb128 0xf
	.long	.LASF1314
	.sleb128 986
	.uleb128 0xf
	.long	.LASF1315
	.sleb128 987
	.uleb128 0xf
	.long	.LASF1316
	.sleb128 988
	.uleb128 0xf
	.long	.LASF1317
	.sleb128 989
	.uleb128 0xf
	.long	.LASF1318
	.sleb128 990
	.uleb128 0xf
	.long	.LASF1319
	.sleb128 991
	.uleb128 0xf
	.long	.LASF1320
	.sleb128 992
	.uleb128 0xf
	.long	.LASF1321
	.sleb128 993
	.uleb128 0xf
	.long	.LASF1322
	.sleb128 994
	.uleb128 0xf
	.long	.LASF1323
	.sleb128 995
	.uleb128 0xf
	.long	.LASF1324
	.sleb128 996
	.uleb128 0xf
	.long	.LASF1325
	.sleb128 997
	.uleb128 0xf
	.long	.LASF1326
	.sleb128 998
	.uleb128 0xf
	.long	.LASF1327
	.sleb128 999
	.uleb128 0xf
	.long	.LASF1328
	.sleb128 1000
	.uleb128 0xf
	.long	.LASF1329
	.sleb128 1002
	.uleb128 0xf
	.long	.LASF1330
	.sleb128 1006
	.uleb128 0xf
	.long	.LASF1331
	.sleb128 1007
	.uleb128 0xf
	.long	.LASF1332
	.sleb128 1008
	.uleb128 0xf
	.long	.LASF1333
	.sleb128 1009
	.uleb128 0xf
	.long	.LASF1334
	.sleb128 1011
	.uleb128 0xf
	.long	.LASF1335
	.sleb128 1012
	.uleb128 0xf
	.long	.LASF1336
	.sleb128 1016
	.uleb128 0xf
	.long	.LASF1337
	.sleb128 1017
	.uleb128 0xf
	.long	.LASF1338
	.sleb128 1018
	.uleb128 0xf
	.long	.LASF1339
	.sleb128 1019
	.uleb128 0xf
	.long	.LASF1340
	.sleb128 1020
	.uleb128 0xf
	.long	.LASF1341
	.sleb128 1021
	.uleb128 0xf
	.long	.LASF1342
	.sleb128 1022
	.uleb128 0xf
	.long	.LASF1343
	.sleb128 1023
	.uleb128 0xf
	.long	.LASF1344
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF1345
	.sleb128 1025
	.uleb128 0xf
	.long	.LASF1346
	.sleb128 1026
	.uleb128 0xf
	.long	.LASF1347
	.sleb128 1027
	.uleb128 0xf
	.long	.LASF1348
	.sleb128 1029
	.uleb128 0xf
	.long	.LASF1349
	.sleb128 1030
	.uleb128 0xf
	.long	.LASF1350
	.sleb128 1031
	.uleb128 0xf
	.long	.LASF1351
	.sleb128 1032
	.uleb128 0xf
	.long	.LASF1352
	.sleb128 1039
	.uleb128 0xf
	.long	.LASF1353
	.sleb128 1046
	.uleb128 0xf
	.long	.LASF1354
	.sleb128 1047
	.uleb128 0xf
	.long	.LASF1355
	.sleb128 1052
	.uleb128 0xf
	.long	.LASF1356
	.sleb128 1059
	.uleb128 0xf
	.long	.LASF1357
	.sleb128 1065
	.uleb128 0xf
	.long	.LASF1358
	.sleb128 1066
	.uleb128 0xf
	.long	.LASF1359
	.sleb128 1071
	.uleb128 0xf
	.long	.LASF1360
	.sleb128 1073
	.uleb128 0xf
	.long	.LASF1361
	.sleb128 1076
	.uleb128 0xf
	.long	.LASF1362
	.sleb128 1078
	.uleb128 0xf
	.long	.LASF1363
	.sleb128 1080
	.uleb128 0xf
	.long	.LASF1364
	.sleb128 1084
	.uleb128 0xf
	.long	.LASF1365
	.sleb128 1085
	.uleb128 0xf
	.long	.LASF1366
	.sleb128 1086
	.uleb128 0xf
	.long	.LASF1367
	.sleb128 1089
	.uleb128 0xf
	.long	.LASF1368
	.sleb128 1090
	.uleb128 0xf
	.long	.LASF1369
	.sleb128 1091
	.uleb128 0xf
	.long	.LASF1370
	.sleb128 1094
	.uleb128 0xf
	.long	.LASF1371
	.sleb128 1095
	.uleb128 0xf
	.long	.LASF1372
	.sleb128 1096
	.uleb128 0xf
	.long	.LASF1373
	.sleb128 1097
	.uleb128 0xf
	.long	.LASF1374
	.sleb128 1098
	.uleb128 0xf
	.long	.LASF1375
	.sleb128 1101
	.uleb128 0xf
	.long	.LASF1376
	.sleb128 1102
	.uleb128 0xf
	.long	.LASF1377
	.sleb128 1103
	.uleb128 0xf
	.long	.LASF1378
	.sleb128 1104
	.uleb128 0xf
	.long	.LASF1379
	.sleb128 1105
	.uleb128 0xf
	.long	.LASF1380
	.sleb128 1106
	.uleb128 0xf
	.long	.LASF1381
	.sleb128 1107
	.uleb128 0xf
	.long	.LASF1382
	.sleb128 1108
	.uleb128 0xf
	.long	.LASF1383
	.sleb128 1109
	.uleb128 0xf
	.long	.LASF1384
	.sleb128 1110
	.uleb128 0xf
	.long	.LASF1385
	.sleb128 1111
	.uleb128 0xf
	.long	.LASF1386
	.sleb128 1112
	.uleb128 0xf
	.long	.LASF1387
	.sleb128 1113
	.uleb128 0xf
	.long	.LASF1388
	.sleb128 1114
	.uleb128 0xf
	.long	.LASF1389
	.sleb128 1115
	.uleb128 0xf
	.long	.LASF1390
	.sleb128 1116
	.uleb128 0xf
	.long	.LASF1391
	.sleb128 1117
	.uleb128 0xf
	.long	.LASF1392
	.sleb128 1118
	.uleb128 0xf
	.long	.LASF1393
	.sleb128 1119
	.uleb128 0xf
	.long	.LASF1394
	.sleb128 1120
	.uleb128 0xf
	.long	.LASF1395
	.sleb128 1121
	.uleb128 0xf
	.long	.LASF1396
	.sleb128 1122
	.uleb128 0xf
	.long	.LASF1397
	.sleb128 1123
	.uleb128 0xf
	.long	.LASF1398
	.sleb128 1124
	.uleb128 0xf
	.long	.LASF1399
	.sleb128 1125
	.uleb128 0xf
	.long	.LASF1400
	.sleb128 1126
	.uleb128 0xf
	.long	.LASF1401
	.sleb128 1127
	.uleb128 0xf
	.long	.LASF1402
	.sleb128 1128
	.uleb128 0xf
	.long	.LASF1403
	.sleb128 1129
	.uleb128 0xf
	.long	.LASF1404
	.sleb128 1130
	.uleb128 0xf
	.long	.LASF1405
	.sleb128 1131
	.uleb128 0xf
	.long	.LASF1406
	.sleb128 1132
	.uleb128 0xf
	.long	.LASF1407
	.sleb128 1137
	.uleb128 0xf
	.long	.LASF1408
	.sleb128 1138
	.uleb128 0xf
	.long	.LASF1409
	.sleb128 1139
	.uleb128 0xf
	.long	.LASF1410
	.sleb128 1140
	.uleb128 0xf
	.long	.LASF1411
	.sleb128 1141
	.uleb128 0xf
	.long	.LASF1412
	.sleb128 1142
	.uleb128 0xf
	.long	.LASF1413
	.sleb128 1143
	.uleb128 0xf
	.long	.LASF1414
	.sleb128 1144
	.uleb128 0xf
	.long	.LASF1415
	.sleb128 1145
	.uleb128 0xf
	.long	.LASF1416
	.sleb128 1146
	.uleb128 0xf
	.long	.LASF1417
	.sleb128 1147
	.uleb128 0xf
	.long	.LASF1418
	.sleb128 1148
	.uleb128 0xf
	.long	.LASF1419
	.sleb128 1149
	.uleb128 0xf
	.long	.LASF1420
	.sleb128 1150
	.uleb128 0xf
	.long	.LASF1421
	.sleb128 1151
	.uleb128 0xf
	.long	.LASF1422
	.sleb128 1152
	.uleb128 0xf
	.long	.LASF1423
	.sleb128 1153
	.uleb128 0xf
	.long	.LASF1424
	.sleb128 1154
	.uleb128 0xf
	.long	.LASF1425
	.sleb128 1159
	.uleb128 0xf
	.long	.LASF1426
	.sleb128 1160
	.uleb128 0xf
	.long	.LASF1427
	.sleb128 1161
	.uleb128 0xf
	.long	.LASF1428
	.sleb128 1166
	.uleb128 0xf
	.long	.LASF1429
	.sleb128 1167
	.uleb128 0xf
	.long	.LASF1430
	.sleb128 1168
	.uleb128 0xf
	.long	.LASF1431
	.sleb128 1169
	.uleb128 0xf
	.long	.LASF1432
	.sleb128 1170
	.uleb128 0xf
	.long	.LASF1433
	.sleb128 1171
	.uleb128 0xf
	.long	.LASF1434
	.sleb128 1172
	.uleb128 0xf
	.long	.LASF1435
	.sleb128 1173
	.uleb128 0xf
	.long	.LASF1436
	.sleb128 1174
	.uleb128 0xf
	.long	.LASF1437
	.sleb128 1175
	.uleb128 0xf
	.long	.LASF1438
	.sleb128 1176
	.uleb128 0xf
	.long	.LASF1439
	.sleb128 1177
	.uleb128 0xf
	.long	.LASF1440
	.sleb128 1180
	.uleb128 0xf
	.long	.LASF1441
	.sleb128 1183
	.uleb128 0xf
	.long	.LASF1442
	.sleb128 1184
	.uleb128 0xf
	.long	.LASF1443
	.sleb128 1185
	.uleb128 0xf
	.long	.LASF1444
	.sleb128 1186
	.uleb128 0xf
	.long	.LASF1445
	.sleb128 1187
	.uleb128 0xf
	.long	.LASF1446
	.sleb128 1188
	.uleb128 0xf
	.long	.LASF1447
	.sleb128 1189
	.uleb128 0xf
	.long	.LASF1448
	.sleb128 1190
	.uleb128 0xf
	.long	.LASF1449
	.sleb128 1191
	.uleb128 0xf
	.long	.LASF1450
	.sleb128 1192
	.uleb128 0xf
	.long	.LASF1451
	.sleb128 1193
	.uleb128 0xf
	.long	.LASF1452
	.sleb128 1194
	.uleb128 0xf
	.long	.LASF1453
	.sleb128 1195
	.uleb128 0xf
	.long	.LASF1454
	.sleb128 1196
	.uleb128 0xf
	.long	.LASF1455
	.sleb128 1197
	.uleb128 0xf
	.long	.LASF1456
	.sleb128 1198
	.uleb128 0xf
	.long	.LASF1457
	.sleb128 1199
	.uleb128 0xf
	.long	.LASF1458
	.sleb128 1200
	.uleb128 0xf
	.long	.LASF1459
	.sleb128 1201
	.uleb128 0xf
	.long	.LASF1460
	.sleb128 1202
	.uleb128 0xf
	.long	.LASF1461
	.sleb128 1203
	.uleb128 0xf
	.long	.LASF1462
	.sleb128 1204
	.uleb128 0xf
	.long	.LASF1463
	.sleb128 1205
	.uleb128 0xf
	.long	.LASF1464
	.sleb128 1206
	.uleb128 0xf
	.long	.LASF1465
	.sleb128 1209
	.uleb128 0xf
	.long	.LASF1466
	.sleb128 1210
	.uleb128 0xf
	.long	.LASF1467
	.sleb128 1211
	.uleb128 0xf
	.long	.LASF1468
	.sleb128 1212
	.uleb128 0xf
	.long	.LASF1469
	.sleb128 1213
	.uleb128 0xf
	.long	.LASF1470
	.sleb128 1215
	.uleb128 0xf
	.long	.LASF1471
	.sleb128 1216
	.uleb128 0xf
	.long	.LASF1472
	.sleb128 1217
	.uleb128 0xf
	.long	.LASF1473
	.sleb128 1220
	.uleb128 0xf
	.long	.LASF1474
	.sleb128 1223
	.uleb128 0xf
	.long	.LASF1475
	.sleb128 1226
	.uleb128 0xf
	.long	.LASF1476
	.sleb128 1229
	.uleb128 0xf
	.long	.LASF1477
	.sleb128 1233
	.uleb128 0xf
	.long	.LASF1478
	.sleb128 1234
	.uleb128 0xf
	.long	.LASF1479
	.sleb128 1235
	.uleb128 0xf
	.long	.LASF1480
	.sleb128 1298
	.uleb128 0xf
	.long	.LASF1481
	.sleb128 1299
	.uleb128 0xf
	.long	.LASF1482
	.sleb128 1300
	.uleb128 0xf
	.long	.LASF1483
	.sleb128 1301
	.uleb128 0xf
	.long	.LASF1484
	.sleb128 1302
	.uleb128 0xf
	.long	.LASF1485
	.sleb128 1303
	.uleb128 0xf
	.long	.LASF1486
	.sleb128 1304
	.uleb128 0xf
	.long	.LASF1487
	.sleb128 1305
	.uleb128 0xf
	.long	.LASF1488
	.sleb128 1314
	.uleb128 0xf
	.long	.LASF1489
	.sleb128 1315
	.uleb128 0xf
	.long	.LASF1490
	.sleb128 1316
	.uleb128 0xf
	.long	.LASF1491
	.sleb128 1317
	.byte	0
	.uleb128 0x1a
	.byte	0x10
	.byte	0xc
	.byte	0x2c
	.long	0x35f3
	.uleb128 0x8
	.long	.LASF946
	.byte	0xc
	.byte	0x2d
	.long	0x26e5
	.byte	0
	.uleb128 0x8
	.long	.LASF1492
	.byte	0xc
	.byte	0x2e
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF1493
	.value	0x3b8
	.byte	0xc
	.byte	0x29
	.long	0x3619
	.uleb128 0x8
	.long	.LASF0
	.byte	0xc
	.byte	0x2b
	.long	0x53f
	.byte	0
	.uleb128 0x8
	.long	.LASF1494
	.byte	0xc
	.byte	0x2f
	.long	0x3619
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x35d2
	.long	0x3629
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x7
	.long	.LASF1493
	.byte	0xc
	.byte	0x30
	.long	0x3634
	.uleb128 0x3
	.byte	0x8
	.long	0x35f3
	.uleb128 0x18
	.long	.LASF1495
	.byte	0x4
	.byte	0xc
	.byte	0x37
	.long	0x3773
	.uleb128 0xf
	.long	.LASF1496
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1497
	.sleb128 1
	.uleb128 0xf
	.long	.LASF1498
	.sleb128 2
	.uleb128 0xf
	.long	.LASF1499
	.sleb128 3
	.uleb128 0xf
	.long	.LASF1500
	.sleb128 4
	.uleb128 0xf
	.long	.LASF1501
	.sleb128 5
	.uleb128 0xf
	.long	.LASF1502
	.sleb128 6
	.uleb128 0xf
	.long	.LASF1503
	.sleb128 7
	.uleb128 0xf
	.long	.LASF1504
	.sleb128 8
	.uleb128 0xf
	.long	.LASF1505
	.sleb128 9
	.uleb128 0xf
	.long	.LASF1506
	.sleb128 10
	.uleb128 0xf
	.long	.LASF1507
	.sleb128 11
	.uleb128 0xf
	.long	.LASF1508
	.sleb128 12
	.uleb128 0xf
	.long	.LASF1509
	.sleb128 13
	.uleb128 0xf
	.long	.LASF1510
	.sleb128 14
	.uleb128 0xf
	.long	.LASF1511
	.sleb128 15
	.uleb128 0xf
	.long	.LASF1512
	.sleb128 16
	.uleb128 0xf
	.long	.LASF1513
	.sleb128 17
	.uleb128 0xf
	.long	.LASF1514
	.sleb128 18
	.uleb128 0xf
	.long	.LASF1515
	.sleb128 19
	.uleb128 0xf
	.long	.LASF1516
	.sleb128 20
	.uleb128 0xf
	.long	.LASF1517
	.sleb128 21
	.uleb128 0xf
	.long	.LASF1518
	.sleb128 22
	.uleb128 0xf
	.long	.LASF1519
	.sleb128 23
	.uleb128 0xf
	.long	.LASF1520
	.sleb128 24
	.uleb128 0xf
	.long	.LASF1521
	.sleb128 25
	.uleb128 0xf
	.long	.LASF1522
	.sleb128 26
	.uleb128 0xf
	.long	.LASF1523
	.sleb128 27
	.uleb128 0xf
	.long	.LASF1524
	.sleb128 28
	.uleb128 0xf
	.long	.LASF1525
	.sleb128 29
	.uleb128 0xf
	.long	.LASF1526
	.sleb128 30
	.uleb128 0xf
	.long	.LASF1527
	.sleb128 31
	.uleb128 0xf
	.long	.LASF1528
	.sleb128 32
	.uleb128 0xf
	.long	.LASF1529
	.sleb128 33
	.uleb128 0xf
	.long	.LASF1530
	.sleb128 34
	.uleb128 0xf
	.long	.LASF1531
	.sleb128 35
	.uleb128 0xf
	.long	.LASF1532
	.sleb128 36
	.uleb128 0xf
	.long	.LASF1533
	.sleb128 37
	.uleb128 0xf
	.long	.LASF1534
	.sleb128 38
	.uleb128 0xf
	.long	.LASF1535
	.sleb128 39
	.uleb128 0xf
	.long	.LASF1536
	.sleb128 40
	.uleb128 0xf
	.long	.LASF1537
	.sleb128 41
	.uleb128 0xf
	.long	.LASF1538
	.sleb128 42
	.uleb128 0xf
	.long	.LASF1539
	.sleb128 43
	.uleb128 0xf
	.long	.LASF1540
	.sleb128 44
	.uleb128 0xf
	.long	.LASF1541
	.sleb128 45
	.uleb128 0xf
	.long	.LASF1542
	.sleb128 46
	.uleb128 0xf
	.long	.LASF1543
	.sleb128 47
	.uleb128 0xf
	.long	.LASF1544
	.sleb128 48
	.uleb128 0xf
	.long	.LASF1545
	.sleb128 49
	.byte	0
	.uleb128 0x7
	.long	.LASF1546
	.byte	0xc
	.byte	0xe6
	.long	0x377e
	.uleb128 0x3
	.byte	0x8
	.long	0x3784
	.uleb128 0x26
	.long	0x2d
	.long	0x3793
	.uleb128 0x27
	.long	0x2d
	.byte	0
	.uleb128 0xe
	.long	.LASF1547
	.byte	0x4
	.byte	0xc
	.value	0x12a
	.long	0x37b3
	.uleb128 0xf
	.long	.LASF1548
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1549
	.sleb128 1
	.uleb128 0xf
	.long	.LASF1550
	.sleb128 2
	.byte	0
	.uleb128 0x18
	.long	.LASF1551
	.byte	0x4
	.byte	0xd
	.byte	0x19
	.long	0x3a2e
	.uleb128 0xf
	.long	.LASF1552
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1553
	.sleb128 1
	.uleb128 0xf
	.long	.LASF1554
	.sleb128 2
	.uleb128 0xf
	.long	.LASF1555
	.sleb128 3
	.uleb128 0xf
	.long	.LASF1556
	.sleb128 4
	.uleb128 0xf
	.long	.LASF1557
	.sleb128 5
	.uleb128 0xf
	.long	.LASF1558
	.sleb128 6
	.uleb128 0xf
	.long	.LASF1559
	.sleb128 7
	.uleb128 0xf
	.long	.LASF1560
	.sleb128 8
	.uleb128 0xf
	.long	.LASF1561
	.sleb128 9
	.uleb128 0xf
	.long	.LASF1562
	.sleb128 10
	.uleb128 0xf
	.long	.LASF1563
	.sleb128 11
	.uleb128 0xf
	.long	.LASF1564
	.sleb128 12
	.uleb128 0xf
	.long	.LASF1565
	.sleb128 13
	.uleb128 0xf
	.long	.LASF1566
	.sleb128 14
	.uleb128 0xf
	.long	.LASF1567
	.sleb128 15
	.uleb128 0xf
	.long	.LASF1568
	.sleb128 16
	.uleb128 0xf
	.long	.LASF1569
	.sleb128 17
	.uleb128 0xf
	.long	.LASF1570
	.sleb128 18
	.uleb128 0xf
	.long	.LASF1571
	.sleb128 19
	.uleb128 0xf
	.long	.LASF1572
	.sleb128 20
	.uleb128 0xf
	.long	.LASF1573
	.sleb128 21
	.uleb128 0xf
	.long	.LASF1574
	.sleb128 22
	.uleb128 0xf
	.long	.LASF1575
	.sleb128 23
	.uleb128 0xf
	.long	.LASF1576
	.sleb128 24
	.uleb128 0xf
	.long	.LASF1577
	.sleb128 25
	.uleb128 0xf
	.long	.LASF1578
	.sleb128 26
	.uleb128 0xf
	.long	.LASF1579
	.sleb128 27
	.uleb128 0xf
	.long	.LASF1580
	.sleb128 28
	.uleb128 0xf
	.long	.LASF1581
	.sleb128 29
	.uleb128 0xf
	.long	.LASF1582
	.sleb128 30
	.uleb128 0xf
	.long	.LASF1583
	.sleb128 31
	.uleb128 0xf
	.long	.LASF1584
	.sleb128 32
	.uleb128 0xf
	.long	.LASF1585
	.sleb128 33
	.uleb128 0xf
	.long	.LASF1586
	.sleb128 34
	.uleb128 0xf
	.long	.LASF1587
	.sleb128 35
	.uleb128 0xf
	.long	.LASF1588
	.sleb128 36
	.uleb128 0xf
	.long	.LASF1589
	.sleb128 37
	.uleb128 0xf
	.long	.LASF1590
	.sleb128 38
	.uleb128 0xf
	.long	.LASF1591
	.sleb128 39
	.uleb128 0xf
	.long	.LASF1592
	.sleb128 40
	.uleb128 0xf
	.long	.LASF1593
	.sleb128 41
	.uleb128 0xf
	.long	.LASF1594
	.sleb128 42
	.uleb128 0xf
	.long	.LASF1595
	.sleb128 43
	.uleb128 0xf
	.long	.LASF1596
	.sleb128 44
	.uleb128 0xf
	.long	.LASF1597
	.sleb128 45
	.uleb128 0xf
	.long	.LASF1598
	.sleb128 46
	.uleb128 0xf
	.long	.LASF1599
	.sleb128 47
	.uleb128 0xf
	.long	.LASF1600
	.sleb128 48
	.uleb128 0xf
	.long	.LASF1601
	.sleb128 49
	.uleb128 0xf
	.long	.LASF1602
	.sleb128 50
	.uleb128 0xf
	.long	.LASF1603
	.sleb128 51
	.uleb128 0xf
	.long	.LASF1604
	.sleb128 52
	.uleb128 0xf
	.long	.LASF1605
	.sleb128 53
	.uleb128 0xf
	.long	.LASF1606
	.sleb128 54
	.uleb128 0xf
	.long	.LASF1607
	.sleb128 55
	.uleb128 0xf
	.long	.LASF1608
	.sleb128 56
	.uleb128 0xf
	.long	.LASF1609
	.sleb128 57
	.uleb128 0xf
	.long	.LASF1610
	.sleb128 58
	.uleb128 0xf
	.long	.LASF1611
	.sleb128 59
	.uleb128 0xf
	.long	.LASF1612
	.sleb128 60
	.uleb128 0xf
	.long	.LASF1613
	.sleb128 61
	.uleb128 0xf
	.long	.LASF1614
	.sleb128 62
	.uleb128 0xf
	.long	.LASF1615
	.sleb128 63
	.uleb128 0xf
	.long	.LASF1616
	.sleb128 64
	.uleb128 0xf
	.long	.LASF1617
	.sleb128 65
	.uleb128 0xf
	.long	.LASF1618
	.sleb128 66
	.uleb128 0xf
	.long	.LASF1619
	.sleb128 67
	.uleb128 0xf
	.long	.LASF1620
	.sleb128 68
	.uleb128 0xf
	.long	.LASF1621
	.sleb128 69
	.uleb128 0xf
	.long	.LASF1622
	.sleb128 70
	.uleb128 0xf
	.long	.LASF1623
	.sleb128 71
	.uleb128 0xf
	.long	.LASF1624
	.sleb128 72
	.uleb128 0xf
	.long	.LASF1625
	.sleb128 73
	.uleb128 0xf
	.long	.LASF1626
	.sleb128 74
	.uleb128 0xf
	.long	.LASF1627
	.sleb128 75
	.uleb128 0xf
	.long	.LASF1628
	.sleb128 76
	.uleb128 0xf
	.long	.LASF1629
	.sleb128 77
	.uleb128 0xf
	.long	.LASF1630
	.sleb128 78
	.uleb128 0xf
	.long	.LASF1631
	.sleb128 79
	.uleb128 0xf
	.long	.LASF1632
	.sleb128 80
	.uleb128 0xf
	.long	.LASF1633
	.sleb128 81
	.uleb128 0xf
	.long	.LASF1634
	.sleb128 82
	.uleb128 0xf
	.long	.LASF1635
	.sleb128 83
	.uleb128 0xf
	.long	.LASF1636
	.sleb128 84
	.uleb128 0xf
	.long	.LASF1637
	.sleb128 85
	.uleb128 0xf
	.long	.LASF1638
	.sleb128 86
	.uleb128 0xf
	.long	.LASF1639
	.sleb128 87
	.uleb128 0xf
	.long	.LASF1640
	.sleb128 88
	.uleb128 0xf
	.long	.LASF1641
	.sleb128 89
	.uleb128 0xf
	.long	.LASF1642
	.sleb128 90
	.uleb128 0xf
	.long	.LASF1643
	.sleb128 91
	.uleb128 0xf
	.long	.LASF1644
	.sleb128 92
	.uleb128 0xf
	.long	.LASF1645
	.sleb128 93
	.uleb128 0xf
	.long	.LASF1646
	.sleb128 94
	.uleb128 0xf
	.long	.LASF1647
	.sleb128 95
	.uleb128 0xf
	.long	.LASF1648
	.sleb128 96
	.uleb128 0xf
	.long	.LASF1649
	.sleb128 97
	.byte	0
	.uleb128 0x7
	.long	.LASF1650
	.byte	0xe
	.byte	0xd4
	.long	0x3a39
	.uleb128 0x3
	.byte	0x8
	.long	0x3a3f
	.uleb128 0x26
	.long	0x1de
	.long	0x3a53
	.uleb128 0x27
	.long	0x2d
	.uleb128 0x27
	.long	0x381
	.byte	0
	.uleb128 0x7
	.long	.LASF1651
	.byte	0xe
	.byte	0xd6
	.long	0x3a5e
	.uleb128 0x3
	.byte	0x8
	.long	0x3a64
	.uleb128 0x26
	.long	0x2d
	.long	0x3a74
	.uleb128 0x27
	.long	0x2d
	.uleb128 0x28
	.byte	0
	.uleb128 0x4
	.long	.LASF1652
	.byte	0x18
	.byte	0xe
	.byte	0xd8
	.long	0x3ac0
	.uleb128 0x8
	.long	.LASF1653
	.byte	0xe
	.byte	0xda
	.long	0x3ac0
	.byte	0
	.uleb128 0x8
	.long	.LASF1654
	.byte	0xe
	.byte	0xdc
	.long	0x2480
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1
	.byte	0xe
	.byte	0xde
	.long	0x3ac5
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1655
	.byte	0xe
	.byte	0xe0
	.long	0x361
	.byte	0x12
	.uleb128 0x8
	.long	.LASF1656
	.byte	0xe
	.byte	0xe2
	.long	0x361
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.long	0x3a2e
	.uleb128 0x16
	.long	0x30b
	.uleb128 0x4
	.long	.LASF1657
	.byte	0x28
	.byte	0xe
	.byte	0xec
	.long	0x3b37
	.uleb128 0x8
	.long	.LASF702
	.byte	0xe
	.byte	0xee
	.long	0x2480
	.byte	0
	.uleb128 0x8
	.long	.LASF1658
	.byte	0xe
	.byte	0xef
	.long	0x37a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1659
	.byte	0xe
	.byte	0xf0
	.long	0x3b37
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1660
	.byte	0xe
	.byte	0xf1
	.long	0x3b3c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1661
	.byte	0xe
	.byte	0xf3
	.long	0x361
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1662
	.byte	0xe
	.byte	0xf4
	.long	0x361
	.byte	0x21
	.uleb128 0x8
	.long	.LASF1663
	.byte	0xe
	.byte	0xf5
	.long	0x361
	.byte	0x22
	.uleb128 0x8
	.long	.LASF1664
	.byte	0xe
	.byte	0xf6
	.long	0x361
	.byte	0x23
	.byte	0
	.uleb128 0x16
	.long	0x3a53
	.uleb128 0x16
	.long	0x3b41
	.uleb128 0x3
	.byte	0x8
	.long	0x3b47
	.uleb128 0x16
	.long	0x3a74
	.uleb128 0x29
	.long	.LASF1667
	.byte	0x1
	.byte	0x85
	.long	0x1de
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3be1
	.uleb128 0x2a
	.string	"seq"
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF1665
	.byte	0x1
	.byte	0x87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.byte	0x88
	.long	0x53f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.string	"op1"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"set"
	.byte	0x1
	.byte	0x8b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF1666
	.byte	0x1
	.byte	0x8d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.long	.LASF1668
	.byte	0x1
	.byte	0xb5
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c56
	.uleb128 0x2a
	.string	"op"
	.byte	0x1
	.byte	0xb6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.byte	0xb7
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF1669
	.byte	0x1
	.byte	0xb7
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF907
	.byte	0x1
	.byte	0xb8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF1670
	.byte	0x1
	.byte	0xb9
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF819
	.byte	0x1
	.byte	0xbb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1671
	.byte	0x1
	.byte	0xda
	.long	0x1de
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da8
	.uleb128 0x2b
	.long	.LASF1672
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF1673
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF1674
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF1675
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF1676
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF1677
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF1678
	.byte	0x1
	.byte	0xdd
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF907
	.byte	0x1
	.byte	0xde
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF1679
	.byte	0x1
	.byte	0xdf
	.long	0x26b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.long	.LASF1680
	.byte	0x1
	.byte	0xe0
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.long	.LASF1681
	.byte	0x1
	.byte	0xe1
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	.LASF1682
	.byte	0x1
	.byte	0xe3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1683
	.byte	0x1
	.byte	0xe4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1684
	.byte	0x1
	.byte	0xe4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1685
	.byte	0x1
	.byte	0xe5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1686
	.byte	0x1
	.byte	0xe5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"res"
	.byte	0x1
	.byte	0xe6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1687
	.byte	0x1
	.byte	0xe7
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1688
	.byte	0x1
	.byte	0xe8
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1689
	.byte	0x1
	.byte	0xe9
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1690
	.byte	0x1
	.byte	0xea
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.long	.LASF1691
	.byte	0x1
	.value	0x15e
	.long	0x1de
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f50
	.uleb128 0x2f
	.long	.LASF1672
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1673
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1674
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1675
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1676
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF1677
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF1678
	.byte	0x1
	.value	0x161
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x162
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF1679
	.byte	0x1
	.value	0x163
	.long	0x26b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF1680
	.byte	0x1
	.value	0x164
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	.LASF1681
	.byte	0x1
	.value	0x165
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x30
	.long	.LASF1692
	.byte	0x1
	.value	0x167
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1682
	.byte	0x1
	.value	0x167
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1683
	.byte	0x1
	.value	0x168
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1684
	.byte	0x1
	.value	0x168
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1685
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1686
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1693
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1694
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x16a
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.string	"res"
	.byte	0x1
	.value	0x16b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1687
	.byte	0x1
	.value	0x16c
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1688
	.byte	0x1
	.value	0x16d
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1689
	.byte	0x1
	.value	0x16e
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1690
	.byte	0x1
	.value	0x16f
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.long	.LASF1696
	.byte	0x1
	.value	0x266
	.long	0x2d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fff
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x267
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x268
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x269
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x269
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x26a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x26b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1679
	.byte	0x1
	.value	0x26c
	.long	0x26b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1695
	.byte	0x1
	.value	0x26e
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1704
	.long	0x3fff
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13565
	.byte	0
	.uleb128 0x16
	.long	0x34b
	.uleb128 0x32
	.long	.LASF1697
	.byte	0x1
	.value	0x281
	.long	0x2d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a2
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x282
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x2f
	.long	.LASF1681
	.byte	0x1
	.value	0x283
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x284
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x284
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x285
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x286
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x2f
	.long	.LASF1679
	.byte	0x1
	.value	0x287
	.long	0x26b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1698
	.byte	0x1
	.value	0x289
	.long	0x26b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0x28c
	.long	0x4f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0x28d
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x28e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x30
	.long	.LASF1701
	.byte	0x1
	.value	0x28f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x30
	.long	.LASF1702
	.byte	0x1
	.value	0x290
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x30
	.long	.LASF1703
	.byte	0x1
	.value	0x295
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x296
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x34
	.long	.LASF1704
	.long	0x48b2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13677
	.uleb128 0x35
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x41c0
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0x2d9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x30
	.long	.LASF1706
	.byte	0x1
	.value	0x2da
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x30
	.long	.LASF1707
	.byte	0x1
	.value	0x2db
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x2dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x2dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x30
	.long	.LASF1709
	.byte	0x1
	.value	0x2dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x36
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x2eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x4206
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x359
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x30
	.long	.LASF1709
	.byte	0x1
	.value	0x359
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x30
	.long	.LASF1670
	.byte	0x1
	.value	0x35a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0x35
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x427a
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x386
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x387
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x30
	.long	.LASF1711
	.byte	0x1
	.value	0x388
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x36
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x30
	.long	.LASF1712
	.byte	0x1
	.value	0x394
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x395
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x4372
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x3bc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x30
	.long	.LASF1713
	.byte	0x1
	.value	0x3bc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x30
	.long	.LASF1711
	.byte	0x1
	.value	0x3bc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x30
	.long	.LASF1714
	.byte	0x1
	.value	0x3bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x30
	.long	.LASF1715
	.byte	0x1
	.value	0x3bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x30
	.long	.LASF1716
	.byte	0x1
	.value	0x3be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x30
	.long	.LASF1717
	.byte	0x1
	.value	0x3be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x30
	.long	.LASF1718
	.byte	0x1
	.value	0x3bf
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x30
	.long	.LASF1719
	.byte	0x1
	.value	0x3bf
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x30
	.long	.LASF1720
	.byte	0x1
	.value	0x3bf
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x30
	.long	.LASF1721
	.byte	0x1
	.value	0x3f1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x30
	.long	.LASF1722
	.byte	0x1
	.value	0x3f2
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x30
	.long	.LASF1723
	.byte	0x1
	.value	0x3f2
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x44ba
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x431
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x30
	.long	.LASF1711
	.byte	0x1
	.value	0x431
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x30
	.long	.LASF1714
	.byte	0x1
	.value	0x432
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x30
	.long	.LASF1715
	.byte	0x1
	.value	0x432
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x30
	.long	.LASF1716
	.byte	0x1
	.value	0x433
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.long	.LASF1717
	.byte	0x1
	.value	0x433
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x30
	.long	.LASF1713
	.byte	0x1
	.value	0x434
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x30
	.long	.LASF1718
	.byte	0x1
	.value	0x435
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x30
	.long	.LASF1719
	.byte	0x1
	.value	0x435
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x30
	.long	.LASF1720
	.byte	0x1
	.value	0x435
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x30
	.long	.LASF1724
	.byte	0x1
	.value	0x457
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x30
	.long	.LASF1725
	.byte	0x1
	.value	0x457
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x30
	.long	.LASF1726
	.byte	0x1
	.value	0x457
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x30
	.long	.LASF1727
	.byte	0x1
	.value	0x457
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x30
	.long	.LASF1728
	.byte	0x1
	.value	0x458
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x30
	.long	.LASF1729
	.byte	0x1
	.value	0x458
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x30
	.long	.LASF1722
	.byte	0x1
	.value	0x459
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x30
	.long	.LASF1723
	.byte	0x1
	.value	0x459
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x4618
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x4a9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x30
	.long	.LASF1730
	.byte	0x1
	.value	0x4aa
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x30
	.long	.LASF1731
	.byte	0x1
	.value	0x4ab
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x30
	.long	.LASF1732
	.byte	0x1
	.value	0x4ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x30
	.long	.LASF1733
	.byte	0x1
	.value	0x4ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x4ad
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x30
	.long	.LASF1709
	.byte	0x1
	.value	0x4ad
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x30
	.long	.LASF1734
	.byte	0x1
	.value	0x4b3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -660
	.uleb128 0x35
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x45f5
	.uleb128 0x30
	.long	.LASF1735
	.byte	0x1
	.value	0x4c7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x30
	.long	.LASF1712
	.byte	0x1
	.value	0x4c8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.long	.LASF1736
	.byte	0x1
	.value	0x4c9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LASF1737
	.byte	0x1
	.value	0x4ca
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x4cb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x30
	.long	.LASF1738
	.byte	0x1
	.value	0x4e1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x30
	.long	.LASF1739
	.byte	0x1
	.value	0x4ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x504
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x4716
	.uleb128 0x31
	.string	"low"
	.byte	0x1
	.value	0x550
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x30
	.long	.LASF654
	.byte	0x1
	.value	0x551
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x30
	.long	.LASF1740
	.byte	0x1
	.value	0x552
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF1741
	.byte	0x1
	.value	0x553
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF1742
	.byte	0x1
	.value	0x554
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF1743
	.byte	0x1
	.value	0x555
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1744
	.byte	0x1
	.value	0x556
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x30
	.long	.LASF1745
	.byte	0x1
	.value	0x557
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x30
	.long	.LASF1746
	.byte	0x1
	.value	0x558
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x35
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x46e3
	.uleb128 0x30
	.long	.LASF1747
	.byte	0x1
	.value	0x574
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x30
	.long	.LASF1748
	.byte	0x1
	.value	0x5a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x5a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x480d
	.uleb128 0x30
	.long	.LASF1672
	.byte	0x1
	.value	0x5da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x30
	.long	.LASF1674
	.byte	0x1
	.value	0x5da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x30
	.long	.LASF1673
	.byte	0x1
	.value	0x5db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x30
	.long	.LASF1675
	.byte	0x1
	.value	0x5db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x30
	.long	.LASF1676
	.byte	0x1
	.value	0x5dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1677
	.byte	0x1
	.value	0x5dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"res"
	.byte	0x1
	.value	0x5dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x5dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1711
	.byte	0x1
	.value	0x5de
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x31
	.string	"ok"
	.byte	0x1
	.value	0x5df
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x30
	.long	.LASF1678
	.byte	0x1
	.value	0x5e2
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0x36
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x30
	.long	.LASF1685
	.byte	0x1
	.value	0x62c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1686
	.byte	0x1
	.value	0x62c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x4861
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x6d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1749
	.byte	0x1
	.value	0x6d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x30
	.long	.LASF1750
	.byte	0x1
	.value	0x6d4
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x30
	.long	.LASF670
	.byte	0x1
	.value	0x6d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x36
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x713
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1709
	.byte	0x1
	.value	0x713
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1670
	.byte	0x1
	.value	0x714
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x48b2
	.uleb128 0x15
	.long	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.long	0x48a2
	.uleb128 0x32
	.long	.LASF1751
	.byte	0x1
	.value	0x748
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4988
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x749
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -996
	.uleb128 0x2f
	.long	.LASF1752
	.byte	0x1
	.value	0x74a
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x2f
	.long	.LASF1753
	.byte	0x1
	.value	0x74a
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x74c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF1679
	.byte	0x1
	.value	0x74d
	.long	0x26b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x74f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x30
	.long	.LASF1754
	.byte	0x1
	.value	0x750
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.uleb128 0x30
	.long	.LASF1755
	.byte	0x1
	.value	0x751
	.long	0x35f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.byte	0
	.uleb128 0x32
	.long	.LASF1756
	.byte	0x1
	.value	0x786
	.long	0x1de
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b2e
	.uleb128 0x2f
	.long	.LASF1681
	.byte	0x1
	.value	0x787
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x788
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x788
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1757
	.byte	0x1
	.value	0x789
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1758
	.byte	0x1
	.value	0x789
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x78a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x78c
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0x78d
	.long	0x4f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0x78e
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1703
	.byte	0x1
	.value	0x78f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x790
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1704
	.long	0x4b2e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13732
	.uleb128 0x35
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x4ae1
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0x7b5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF1706
	.byte	0x1
	.value	0x7b6
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1707
	.byte	0x1
	.value	0x7b7
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x7b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x7b9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1709
	.byte	0x1
	.value	0x7b9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x31
	.string	"t0"
	.byte	0x1
	.value	0x7e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0x7e5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1759
	.byte	0x1
	.value	0x7e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1760
	.byte	0x1
	.value	0x7e7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x34b
	.uleb128 0x32
	.long	.LASF1761
	.byte	0x1
	.value	0x7fe
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bc3
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x7ff
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x800
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x801
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x802
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x803
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF1762
	.byte	0x1
	.value	0x805
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1704
	.long	0x4bd3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13748
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x4bd3
	.uleb128 0x15
	.long	0x1e5
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.long	0x4bc3
	.uleb128 0x32
	.long	.LASF1763
	.byte	0x1
	.value	0x818
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4c
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x819
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2f
	.long	.LASF1764
	.byte	0x1
	.value	0x81a
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x81b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x81c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x81d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0x81f
	.long	0x4f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0x820
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x821
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x822
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x823
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF1704
	.long	0x4e5c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13779
	.uleb128 0x35
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x4cf3
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0x833
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x30
	.long	.LASF1706
	.byte	0x1
	.value	0x834
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x835
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x35
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x4d19
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x862
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x35
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x4d7d
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x887
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x888
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x30
	.long	.LASF1712
	.byte	0x1
	.value	0x892
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x893
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x4dd1
	.uleb128 0x30
	.long	.LASF1712
	.byte	0x1
	.value	0x8a8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8a9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x8aa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1678
	.byte	0x1
	.value	0x8ad
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x35
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x4e05
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x8d4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF670
	.byte	0x1
	.value	0x8d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x4e2a
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x8f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x916
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x4e5c
	.uleb128 0x15
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0x16
	.long	0x4e4c
	.uleb128 0x32
	.long	.LASF1765
	.byte	0x1
	.value	0x92c
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f35
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x92d
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x92e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x92f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1766
	.byte	0x1
	.value	0x930
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1767
	.byte	0x1
	.value	0x931
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x933
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x933
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x4f13
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x941
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x30
	.long	.LASF1768
	.byte	0x1
	.value	0x954
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1769
	.byte	0x1
	.value	0x992
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x512f
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x993
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x994
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0x995
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x996
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0x998
	.long	0x4f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0x999
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x99a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1703
	.byte	0x1
	.value	0x99b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x99c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x99d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1770
	.byte	0x1
	.value	0x99e
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1678
	.byte	0x1
	.value	0x9a1
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x34
	.long	.LASF1704
	.long	0x512f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13812
	.uleb128 0x35
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x5070
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0x9bb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1706
	.byte	0x1
	.value	0x9bc
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x9bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x35
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x5096
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0x9ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x35
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x50d9
	.uleb128 0x30
	.long	.LASF662
	.byte	0x1
	.value	0xa07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF663
	.byte	0x1
	.value	0xa07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1771
	.byte	0x1
	.value	0xa07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x35
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x510d
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0xa1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF670
	.byte	0x1
	.value	0xa20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x30
	.long	.LASF1708
	.byte	0x1
	.value	0xa3b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x4bc3
	.uleb128 0x37
	.long	.LASF1776
	.byte	0x1
	.value	0xa5d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x51bd
	.uleb128 0x2f
	.long	.LASF1705
	.byte	0x1
	.value	0xa5e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0xa5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xa60
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xa61
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0xa63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1706
	.byte	0x1
	.value	0xa64
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0xa65
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF1772
	.byte	0x1
	.value	0xaa2
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x52cd
	.uleb128 0x2f
	.long	.LASF1710
	.byte	0x1
	.value	0xaa3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0xaa4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xaa5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xaa5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1773
	.byte	0x1
	.value	0xaa6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1774
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF908
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF910
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1775
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1704
	.long	0x52dd
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13859
	.uleb128 0x36
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0xab6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1666
	.byte	0x1
	.value	0xab6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xab7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x52dd
	.uleb128 0x15
	.long	0x1e5
	.byte	0x16
	.byte	0
	.uleb128 0x16
	.long	0x52cd
	.uleb128 0x37
	.long	.LASF1777
	.byte	0x1
	.value	0xb2f
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x541b
	.uleb128 0x2f
	.long	.LASF1710
	.byte	0x1
	.value	0xb30
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0xb31
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF819
	.byte	0x1
	.value	0xb32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1773
	.byte	0x1
	.value	0xb33
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF1778
	.byte	0x1
	.value	0xb35
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1774
	.byte	0x1
	.value	0xb36
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF908
	.byte	0x1
	.value	0xb36
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF910
	.byte	0x1
	.value	0xb36
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0xb36
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1775
	.byte	0x1
	.value	0xb36
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x53c3
	.uleb128 0x30
	.long	.LASF1666
	.byte	0x1
	.value	0xb44
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x35
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x53e9
	.uleb128 0x30
	.long	.LASF1666
	.byte	0x1
	.value	0xb52
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x36
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0xb63
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1666
	.byte	0x1
	.value	0xb64
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1779
	.byte	0x1
	.value	0xbb2
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x5447
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xbb3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1780
	.byte	0x1
	.value	0xbbc
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x5473
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xbbd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1781
	.byte	0x1
	.value	0xbcb
	.long	0x1de
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x54c3
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xbcc
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xbcd
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF669
	.byte	0x1
	.value	0xbce
	.long	0x3793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x39
	.long	.LASF1789
	.byte	0x1
	.value	0xbfe
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x5620
	.uleb128 0x33
	.string	"px"
	.byte	0x1
	.value	0xbff
	.long	0xc75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"py"
	.byte	0x1
	.value	0xbff
	.long	0xc75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1782
	.byte	0x1
	.value	0xc00
	.long	0x5620
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xc01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1783
	.byte	0x1
	.value	0xc02
	.long	0x5626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1784
	.byte	0x1
	.value	0xc03
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF669
	.byte	0x1
	.value	0xc04
	.long	0x3793
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0xc06
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xc07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF907
	.byte	0x1
	.value	0xc08
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0xc09
	.long	0x4f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1704
	.long	0x563c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13924
	.uleb128 0x35
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x55ef
	.uleb128 0x30
	.long	.LASF819
	.byte	0x1
	.value	0xc32
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1785
	.byte	0x1
	.value	0xc33
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF1786
	.byte	0x1
	.value	0xc34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x30
	.long	.LASF1492
	.byte	0x1
	.value	0xc88
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF819
	.byte	0x1
	.value	0xc89
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x53f
	.uleb128 0x3
	.byte	0x8
	.long	0x381
	.uleb128 0x14
	.long	0x344
	.long	0x563c
	.uleb128 0x15
	.long	0x1e5
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	0x562c
	.uleb128 0x32
	.long	.LASF1787
	.byte	0x1
	.value	0xcaf
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x56bc
	.uleb128 0x2f
	.long	.LASF1705
	.byte	0x1
	.value	0xcb0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xcb1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1788
	.byte	0x1
	.value	0xcb2
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xcb3
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1699
	.byte	0x1
	.value	0xcb3
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xcb4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x39
	.long	.LASF1790
	.byte	0x1
	.value	0xcc7
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x5796
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xcc8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xcc8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xcc9
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1791
	.byte	0x1
	.value	0xcca
	.long	0x53f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xccb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1792
	.byte	0x1
	.value	0xccc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1793
	.byte	0x1
	.value	0xcce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1680
	.byte	0x1
	.value	0xccf
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0xcd0
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1704
	.long	0x57a6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13949
	.uleb128 0x36
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xcd5
	.long	0x26e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x57a6
	.uleb128 0x15
	.long	0x1e5
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.long	0x5796
	.uleb128 0x37
	.long	.LASF1794
	.byte	0x1
	.value	0xd1a
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x5861
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xd1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xd1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1791
	.byte	0x1
	.value	0xd1c
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xd1d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xd1e
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xd1f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1792
	.byte	0x1
	.value	0xd20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xd22
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0xd22
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5871
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13961
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x5871
	.uleb128 0x15
	.long	0x1e5
	.byte	0x17
	.byte	0
	.uleb128 0x16
	.long	0x5861
	.uleb128 0x37
	.long	.LASF1795
	.byte	0x1
	.value	0xd44
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x58eb
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xd45
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xd45
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1791
	.byte	0x1
	.value	0xd46
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xd47
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xd48
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xd49
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x39
	.long	.LASF1796
	.byte	0x1
	.value	0xd52
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x59e2
	.uleb128 0x33
	.string	"px"
	.byte	0x1
	.value	0xd53
	.long	0xc75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"py"
	.byte	0x1
	.value	0xd53
	.long	0xc75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1782
	.byte	0x1
	.value	0xd54
	.long	0x5620
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1783
	.byte	0x1
	.value	0xd55
	.long	0x5626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1784
	.byte	0x1
	.value	0xd56
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1791
	.byte	0x1
	.value	0xd58
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xd59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xd5a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0xd5b
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF1492
	.byte	0x1
	.value	0xd5c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF819
	.byte	0x1
	.value	0xd5d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1704
	.long	0x59f2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14032
	.uleb128 0x36
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x30
	.long	.LASF1699
	.byte	0x1
	.value	0xe0b
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x59f2
	.uleb128 0x15
	.long	0x1e5
	.byte	0x15
	.byte	0
	.uleb128 0x16
	.long	0x59e2
	.uleb128 0x37
	.long	.LASF1797
	.byte	0x1
	.value	0xe39
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a25
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0xe3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF1798
	.byte	0x1
	.value	0xe55
	.long	0x2d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b2f
	.uleb128 0x2f
	.long	.LASF1665
	.byte	0x1
	.value	0xe57
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xe58
	.long	0x53f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xe59
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xe59
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1799
	.byte	0x1
	.value	0xe5a
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"op2"
	.byte	0x1
	.value	0xe5b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"op3"
	.byte	0x1
	.value	0xe5b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xe5c
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xe5d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xe5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1800
	.byte	0x1
	.value	0xe5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1791
	.byte	0x1
	.value	0xe5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1775
	.byte	0x1
	.value	0xe5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xe60
	.long	0x26e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF1801
	.byte	0x1
	.value	0xe61
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x38
	.long	.LASF1802
	.byte	0x1
	.value	0xecf
	.long	0x1de
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b61
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xed0
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1803
	.byte	0x1
	.value	0xee4
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bc0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xee5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xee5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xee7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5bd0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14061
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x5bd0
	.uleb128 0x15
	.long	0x1e5
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.long	0x5bc0
	.uleb128 0x32
	.long	.LASF1804
	.byte	0x1
	.value	0xef7
	.long	0x2d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c30
	.uleb128 0x33
	.string	"r0"
	.byte	0x1
	.value	0xef8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"r1"
	.byte	0x1
	.value	0xef8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0xef8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xefa
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1805
	.byte	0x1
	.value	0xf09
	.long	0x1de
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c8f
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xf0a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xf0a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xf0c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5c9f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14073
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x5c9f
	.uleb128 0x15
	.long	0x1e5
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	0x5c8f
	.uleb128 0x32
	.long	.LASF1806
	.byte	0x1
	.value	0xf24
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d03
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xf25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xf25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xf27
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5d03
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14079
	.byte	0
	.uleb128 0x16
	.long	0x5bc0
	.uleb128 0x32
	.long	.LASF1807
	.byte	0x1
	.value	0xf37
	.long	0x2d
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d63
	.uleb128 0x33
	.string	"r0"
	.byte	0x1
	.value	0xf38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"r1"
	.byte	0x1
	.value	0xf38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0xf38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xf3a
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1808
	.byte	0x1
	.value	0xf49
	.long	0x1de
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dc2
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xf4a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xf4a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xf4c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5dc2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14091
	.byte	0
	.uleb128 0x16
	.long	0x5c8f
	.uleb128 0x32
	.long	.LASF1809
	.byte	0x1
	.value	0xf65
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e83
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xf66
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xf66
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0xf68
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF946
	.byte	0x1
	.value	0xf69
	.long	0x26e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0xf6a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1704
	.long	0x5e83
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14105
	.uleb128 0x36
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x30
	.long	.LASF1810
	.byte	0x1
	.value	0xf77
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"x1"
	.byte	0x1
	.value	0xf78
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"y1"
	.byte	0x1
	.value	0xf78
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x5bc0
	.uleb128 0x38
	.long	.LASF1811
	.byte	0x1
	.value	0xfb3
	.long	0x26e5
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ed8
	.uleb128 0x2f
	.long	.LASF1812
	.byte	0x1
	.value	0xfb4
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1813
	.byte	0x1
	.value	0xfb4
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xfb5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x32
	.long	.LASF1814
	.byte	0x1
	.value	0xfc3
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f42
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xfc4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xfc4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"mto"
	.byte	0x1
	.value	0xfc5
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1815
	.byte	0x1
	.value	0xfc5
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xfc6
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3a
	.long	.LASF1816
	.byte	0x1
	.value	0xfd5
	.long	0x26e5
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fa1
	.uleb128 0x2f
	.long	.LASF1817
	.byte	0x1
	.value	0xfd6
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1818
	.byte	0x1
	.value	0xfd6
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xfd7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1819
	.byte	0x1
	.value	0xfd8
	.long	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.long	.LASF1820
	.byte	0x1
	.value	0xfe8
	.long	0x26e5
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ff1
	.uleb128 0x2f
	.long	.LASF1818
	.byte	0x1
	.value	0xfe9
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1817
	.byte	0x1
	.value	0xfe9
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xfea
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1821
	.byte	0x1
	.value	0xff6
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x617f
	.uleb128 0x33
	.string	"to"
	.byte	0x1
	.value	0xff7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1822
	.byte	0x1
	.value	0xff7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xff8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0xffa
	.long	0x26e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1665
	.byte	0x1
	.value	0xffb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1823
	.byte	0x1
	.value	0xffc
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF1824
	.byte	0x1
	.value	0xffc
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1704
	.long	0x617f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14138
	.uleb128 0x3b
	.long	.LASF1894
	.byte	0x1
	.value	0x10eb
	.quad	.L833
	.uleb128 0x35
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x60c7
	.uleb128 0x30
	.long	.LASF1825
	.byte	0x1
	.value	0x100c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x35
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x613e
	.uleb128 0x30
	.long	.LASF1792
	.byte	0x1
	.value	0x1030
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x1031
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF284
	.byte	0x1
	.value	0x1032
	.long	0x1573
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x30
	.long	.LASF1685
	.byte	0x1
	.value	0x104f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1826
	.byte	0x1
	.value	0x1050
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x30
	.long	.LASF1827
	.byte	0x1
	.value	0x10a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x10a4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF670
	.byte	0x1
	.value	0x10a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x48a2
	.uleb128 0x2e
	.long	.LASF1828
	.byte	0x1
	.value	0x10fd
	.long	0x2d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x61c3
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x10fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1700
	.byte	0x1
	.value	0x1100
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1829
	.byte	0x1
	.value	0x1105
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x634f
	.uleb128 0x33
	.string	"to"
	.byte	0x1
	.value	0x1106
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1822
	.byte	0x1
	.value	0x1106
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0x1107
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x30
	.long	.LASF1705
	.byte	0x1
	.value	0x1109
	.long	0x26e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x30
	.long	.LASF1665
	.byte	0x1
	.value	0x110a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1823
	.byte	0x1
	.value	0x110b
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1824
	.byte	0x1
	.value	0x110b
	.long	0x381
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF1830
	.byte	0x1
	.value	0x110c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF1827
	.byte	0x1
	.value	0x110d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1704
	.long	0x635f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14190
	.uleb128 0x35
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x62a9
	.uleb128 0x30
	.long	.LASF1825
	.byte	0x1
	.value	0x1119
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x35
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x631e
	.uleb128 0x30
	.long	.LASF1831
	.byte	0x1
	.value	0x1147
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF284
	.byte	0x1
	.value	0x1148
	.long	0x1573
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1832
	.byte	0x1
	.value	0x1149
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1693
	.byte	0x1
	.value	0x1149
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1694
	.byte	0x1
	.value	0x1149
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1775
	.byte	0x1
	.value	0x1149
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x36
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x30
	.long	.LASF1710
	.byte	0x1
	.value	0x11c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF670
	.byte	0x1
	.value	0x11c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x344
	.long	0x635f
	.uleb128 0x15
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x16
	.long	0x634f
	.uleb128 0x38
	.long	.LASF1833
	.byte	0x1
	.value	0x11e4
	.long	0x1de
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x63a5
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x11e5
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x11e6
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1834
	.byte	0x1
	.value	0x11ef
	.long	0x3629
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x63e3
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x11f1
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0x11f2
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1835
	.byte	0x1
	.value	0x11ff
	.long	0x3629
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x6423
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1200
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0x1202
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1836
	.byte	0x1
	.value	0x120b
	.long	0x3629
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x6463
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x120c
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0x120e
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1837
	.byte	0x1
	.value	0x1225
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x654c
	.uleb128 0x2f
	.long	.LASF1838
	.byte	0x1
	.value	0x1226
	.long	0x3629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1839
	.byte	0x1
	.value	0x1227
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF1840
	.byte	0x1
	.value	0x1228
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1841
	.byte	0x1
	.value	0x1229
	.long	0x35b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1842
	.byte	0x1
	.value	0x122a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x122c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF1843
	.byte	0x1
	.value	0x122d
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x30
	.long	.LASF1844
	.byte	0x1
	.value	0x1232
	.long	0x35b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1845
	.byte	0x1
	.value	0x1233
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF1846
	.byte	0x1
	.value	0x1234
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1235
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.value	0x1236
	.long	0x35b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1847
	.byte	0x1
	.value	0x124e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x6598
	.uleb128 0x2f
	.long	.LASF1838
	.byte	0x1
	.value	0x124f
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1841
	.byte	0x1
	.value	0x1250
	.long	0x35b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1842
	.byte	0x1
	.value	0x1251
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x39
	.long	.LASF1848
	.byte	0x1
	.value	0x125c
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x65e4
	.uleb128 0x2f
	.long	.LASF1838
	.byte	0x1
	.value	0x125d
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1841
	.byte	0x1
	.value	0x125e
	.long	0x35b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1842
	.byte	0x1
	.value	0x125f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF1849
	.byte	0x1
	.value	0x1265
	.long	0x2d
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6625
	.uleb128 0x2f
	.long	.LASF702
	.byte	0x1
	.value	0x1266
	.long	0x35b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x126b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1850
	.byte	0x1
	.value	0x1278
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x668e
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x1279
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"o"
	.byte	0x1
	.value	0x127b
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x127c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x31
	.string	"r__"
	.byte	0x1
	.value	0x127f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1851
	.byte	0x1
	.value	0x1286
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x66d4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1288
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x1288
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.value	0x1288
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3c
	.long	.LASF1895
	.byte	0x1
	.value	0x13ee
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF1852
	.byte	0x1
	.value	0x13fc
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x677d
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x13fd
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x13fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"op2"
	.byte	0x1
	.value	0x13fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1853
	.byte	0x1
	.value	0x13fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x1400
	.long	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x30
	.long	.LASF1775
	.byte	0x1
	.value	0x1409
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF1854
	.byte	0x1
	.value	0x13eb
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	trap_rtx
	.uleb128 0x3d
	.long	.LASF1855
	.byte	0x5
	.byte	0x62
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1856
	.byte	0x5
	.value	0xc39
	.long	0x1de
	.uleb128 0x14
	.long	0x322
	.long	0x67ba
	.uleb128 0x15
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x3d
	.long	.LASF1857
	.byte	0xf
	.byte	0x62
	.long	0x67c5
	.uleb128 0x16
	.long	0x67aa
	.uleb128 0x14
	.long	0x35b
	.long	0x67da
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LASF1858
	.byte	0x6
	.byte	0x29
	.long	0x67e5
	.uleb128 0x16
	.long	0x67ca
	.uleb128 0x14
	.long	0x4f6
	.long	0x67fa
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LASF135
	.byte	0x6
	.byte	0x34
	.long	0x6805
	.uleb128 0x16
	.long	0x67ea
	.uleb128 0x14
	.long	0x322
	.long	0x681a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LASF1859
	.byte	0x6
	.byte	0x50
	.long	0x6825
	.uleb128 0x16
	.long	0x680a
	.uleb128 0x3d
	.long	.LASF1860
	.byte	0x6
	.byte	0x55
	.long	0x6835
	.uleb128 0x16
	.long	0x680a
	.uleb128 0x14
	.long	0x329
	.long	0x684a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LASF1861
	.byte	0x6
	.byte	0x60
	.long	0x6855
	.uleb128 0x16
	.long	0x683a
	.uleb128 0x3d
	.long	.LASF1862
	.byte	0x6
	.byte	0x7b
	.long	0x6865
	.uleb128 0x16
	.long	0x680a
	.uleb128 0x3d
	.long	.LASF1863
	.byte	0x6
	.byte	0xa4
	.long	0x381
	.uleb128 0x14
	.long	0x344
	.long	0x6885
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3d
	.long	.LASF1864
	.byte	0x2
	.byte	0x3f
	.long	0x6890
	.uleb128 0x16
	.long	0x6875
	.uleb128 0x14
	.long	0x2d
	.long	0x68a5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x3e
	.long	.LASF1865
	.byte	0x2
	.value	0x611
	.long	0x6895
	.uleb128 0x14
	.long	0x2d
	.long	0x68c7
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3e
	.long	.LASF1866
	.byte	0x2
	.value	0x619
	.long	0x68b1
	.uleb128 0x3e
	.long	.LASF1867
	.byte	0x2
	.value	0x6d7
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1868
	.byte	0x7
	.value	0x1b6
	.long	0x1573
	.uleb128 0x14
	.long	0x123
	.long	0x68fb
	.uleb128 0x15
	.long	0x1e5
	.byte	0x32
	.byte	0
	.uleb128 0x3e
	.long	.LASF1869
	.byte	0x4
	.value	0x79b
	.long	0x68eb
	.uleb128 0x14
	.long	0x123
	.long	0x6917
	.uleb128 0x15
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x3e
	.long	.LASF1870
	.byte	0x4
	.value	0x7f8
	.long	0x6907
	.uleb128 0x14
	.long	0x123
	.long	0x6933
	.uleb128 0x15
	.long	0x1e5
	.byte	0x5
	.byte	0
	.uleb128 0x3e
	.long	.LASF1871
	.byte	0x4
	.value	0x97c
	.long	0x6923
	.uleb128 0x3d
	.long	.LASF1872
	.byte	0x10
	.byte	0xef
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1873
	.byte	0x10
	.value	0x166
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1874
	.byte	0x10
	.value	0x248
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1875
	.byte	0x10
	.value	0x282
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1876
	.byte	0x9
	.value	0x1e4
	.long	0x1f4f
	.uleb128 0x14
	.long	0x3629
	.long	0x698a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x30
	.byte	0
	.uleb128 0x3f
	.long	.LASF1877
	.byte	0x1
	.byte	0x35
	.long	0x697a
	.uleb128 0x9
	.byte	0x3
	.quad	optab_table
	.uleb128 0x14
	.long	0x26e5
	.long	0x69bb
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.long	.LASF1878
	.byte	0x1
	.byte	0x3a
	.long	0x699f
	.uleb128 0x9
	.byte	0x3
	.quad	extendtab
	.uleb128 0x3f
	.long	.LASF1879
	.byte	0x1
	.byte	0x3d
	.long	0x699f
	.uleb128 0x9
	.byte	0x3
	.quad	fixtab
	.uleb128 0x3f
	.long	.LASF1880
	.byte	0x1
	.byte	0x3e
	.long	0x699f
	.uleb128 0x9
	.byte	0x3
	.quad	fixtrunctab
	.uleb128 0x3f
	.long	.LASF1881
	.byte	0x1
	.byte	0x3f
	.long	0x699f
	.uleb128 0x9
	.byte	0x3
	.quad	floattab
	.uleb128 0x14
	.long	0x26e5
	.long	0x6a1f
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LASF1882
	.byte	0xc
	.byte	0xdf
	.long	0x6a0f
	.uleb128 0x3d
	.long	.LASF1883
	.byte	0xc
	.byte	0xe0
	.long	0x6a0f
	.uleb128 0x14
	.long	0x3629
	.long	0x6a45
	.uleb128 0x15
	.long	0x1e5
	.byte	0x99
	.byte	0
	.uleb128 0x3f
	.long	.LASF1884
	.byte	0x1
	.byte	0x42
	.long	0x6a35
	.uleb128 0x9
	.byte	0x3
	.quad	code_to_optab
	.uleb128 0x14
	.long	0x3773
	.long	0x6a6a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1885
	.byte	0x1
	.byte	0x47
	.long	0x6a5a
	.uleb128 0x9
	.byte	0x3
	.quad	bcc_gen_fctn
	.uleb128 0x14
	.long	0x26e5
	.long	0x6a8f
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1886
	.byte	0x1
	.byte	0x4d
	.long	0x6a7f
	.uleb128 0x9
	.byte	0x3
	.quad	setcc_gen_code
	.uleb128 0x3f
	.long	.LASF1887
	.byte	0x1
	.byte	0x55
	.long	0x6a0f
	.uleb128 0x9
	.byte	0x3
	.quad	movcc_gen_code
	.uleb128 0x3d
	.long	.LASF1888
	.byte	0xc
	.byte	0xfb
	.long	0x6a0f
	.uleb128 0x3d
	.long	.LASF1889
	.byte	0xc
	.byte	0xfe
	.long	0x6a0f
	.uleb128 0x14
	.long	0x2d
	.long	0x6adf
	.uleb128 0x15
	.long	0x1e5
	.byte	0x60
	.byte	0
	.uleb128 0x3f
	.long	.LASF1890
	.byte	0x1
	.byte	0x37
	.long	0x6acf
	.uleb128 0x9
	.byte	0x3
	.quad	libfunc_table
	.uleb128 0x14
	.long	0x3aca
	.long	0x6aff
	.uleb128 0x40
	.byte	0
	.uleb128 0x3d
	.long	.LASF1657
	.byte	0xe
	.byte	0xf9
	.long	0x6b0a
	.uleb128 0x16
	.long	0x6af4
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x17
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x17
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x21
	.byte	0
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
.LASF1730:
	.string	"otheroptab"
.LASF1607:
	.string	"LTI_getf2"
.LASF1279:
	.string	"CODE_FOR_fix_trunctfsi2"
.LASF72:
	.string	"long long int"
.LASF872:
	.string	"TI_V16SF_TYPE"
.LASF756:
	.string	"original_arg_vector"
.LASF75:
	.string	"VOIDmode"
.LASF567:
	.string	"BUILT_IN_STRCSPN"
.LASF268:
	.string	"SS_MINUS"
.LASF1595:
	.string	"LTI_ledf2"
.LASF811:
	.string	"malloc_flag"
.LASF468:
	.string	"RROTATE_EXPR"
.LASF257:
	.string	"RANGE_REG"
.LASF384:
	.string	"IDENTIFIER_NODE"
.LASF662:
	.string	"real"
.LASF1554:
	.string	"LTI_extendsftf2"
.LASF1332:
	.string	"CODE_FOR_testqi_ccz_1"
.LASF759:
	.string	"inl_max_label_num"
.LASF637:
	.string	"unused_0"
.LASF653:
	.string	"unused_1"
.LASF65:
	.string	"long unsigned int"
.LASF1263:
	.string	"CODE_FOR_extendsidi2"
.LASF1879:
	.string	"fixtab"
.LASF1815:
	.string	"mfrom"
.LASF473:
	.string	"BIT_NOT_EXPR"
.LASF1582:
	.string	"LTI_unordhf2"
.LASF299:
	.string	"rtmem"
.LASF558:
	.string	"BUILT_IN_STRNCAT"
.LASF1364:
	.string	"CODE_FOR_x86_shift_adj_1"
.LASF874:
	.string	"TI_V8HI_TYPE"
.LASF1370:
	.string	"CODE_FOR_x86_shift_adj_3"
.LASF1312:
	.string	"CODE_FOR_umulditi3"
.LASF213:
	.string	"COND"
.LASF1362:
	.string	"CODE_FOR_one_cmplqi2"
.LASF1795:
	.string	"emit_cmp_insn"
.LASF214:
	.string	"COMPARE"
.LASF1735:
	.string	"index"
.LASF57:
	.string	"regno"
.LASF297:
	.string	"rtbit"
.LASF328:
	.string	"REG_SAVE_NOTE"
.LASF128:
	.string	"CCGCmode"
.LASF469:
	.string	"BIT_IOR_EXPR"
.LASF1487:
	.string	"CODE_FOR_movv2sf"
.LASF1037:
	.string	"CODE_FOR_sqrtsf2_i387"
.LASF1484:
	.string	"CODE_FOR_movv2si"
.LASF1857:
	.string	"_sch_tolower"
.LASF1056:
	.string	"CODE_FOR_strmovhi_rex_1"
.LASF507:
	.string	"FDESC_EXPR"
.LASF1861:
	.string	"mode_bitsize"
.LASF1057:
	.string	"CODE_FOR_strmovqi_1"
.LASF1520:
	.string	"OTI_rotl"
.LASF1870:
	.string	"integer_types"
.LASF1453:
	.string	"CODE_FOR_clrstrdi"
.LASF450:
	.string	"CEIL_MOD_EXPR"
.LASF836:
	.string	"TI_UINTQI_TYPE"
.LASF1485:
	.string	"CODE_FOR_movv4hi"
.LASF1236:
	.string	"CODE_FOR_pswapdv2sf2"
.LASF799:
	.string	"ignored_flag"
.LASF1820:
	.string	"can_float_p"
.LASF1230:
	.string	"CODE_FOR_pfrcpit1v2sf3"
.LASF1871:
	.string	"sizetype_tab"
.LASF267:
	.string	"US_PLUS"
.LASF170:
	.string	"SEQUENCE"
.LASF822:
	.string	"section_name"
.LASF1739:
	.string	"carry_tmp"
.LASF186:
	.string	"ASM_INPUT"
.LASF781:
	.string	"limit_stack"
.LASF475:
	.string	"TRUTH_ORIF_EXPR"
.LASF208:
	.string	"LABEL_REF"
.LASF921:
	.string	"regno_pointer_align_length"
.LASF1674:
	.string	"imag0"
.LASF1675:
	.string	"imag1"
.LASF696:
	.string	"restrict_flag"
.LASF489:
	.string	"UNLE_EXPR"
.LASF1615:
	.string	"LTI_floatdidf"
.LASF1874:
	.string	"flag_trapv"
.LASF98:
	.string	"XCmode"
.LASF720:
	.string	"pretend_args_size"
.LASF462:
	.string	"MAX_EXPR"
.LASF1845:
	.string	"mname_len"
.LASF25:
	.string	"list"
.LASF589:
	.string	"BUILT_IN_RETURN"
.LASF565:
	.string	"BUILT_IN_STRPBRK"
.LASF157:
	.string	"MATCH_PAR_DUP"
.LASF1589:
	.string	"LTI_unordsf2"
.LASF960:
	.string	"CODE_FOR_zero_extendsidi2_32"
.LASF668:
	.string	"tree_list"
.LASF702:
	.string	"name"
.LASF503:
	.string	"RTL_EXPR"
.LASF714:
	.string	"stmt"
.LASF137:
	.string	"MODE_INT"
.LASF95:
	.string	"HCmode"
.LASF1233:
	.string	"CODE_FOR_pfrsqit1v2sf3"
.LASF1215:
	.string	"CODE_FOR_gev2sf3"
.LASF1314:
	.string	"CODE_FOR_mulditi3"
.LASF1090:
	.string	"CODE_FOR_allocate_stack_worker_rex64"
.LASF521:
	.string	"GOTO_EXPR"
.LASF859:
	.string	"TI_CONST_PTR_TYPE"
.LASF1054:
	.string	"CODE_FOR_strmovsi_rex_1"
.LASF1538:
	.string	"OTI_ucmp"
.LASF451:
	.string	"FLOOR_MOD_EXPR"
.LASF122:
	.string	"V4DFmode"
.LASF570:
	.string	"BUILT_IN_SQRT"
.LASF819:
	.string	"result"
.LASF442:
	.string	"PLUS_EXPR"
.LASF1301:
	.string	"CODE_FOR_subqi3"
.LASF1235:
	.string	"CODE_FOR_pswapdv2si2"
.LASF1081:
	.string	"CODE_FOR_strlenqi_rex_1"
.LASF845:
	.string	"TI_SIZE_ZERO"
.LASF1537:
	.string	"OTI_cmp"
.LASF896:
	.string	"size_type_kind"
.LASF202:
	.string	"CONST"
.LASF130:
	.string	"CCNOmode"
.LASF601:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF371:
	.string	"GR_MAX"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF1138:
	.string	"CODE_FOR_sse_comi"
.LASF342:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF397:
	.string	"OFFSET_TYPE"
.LASF250:
	.string	"UNSIGNED_FIX"
.LASF1522:
	.string	"OTI_smin"
.LASF163:
	.string	"DEFINE_PEEPHOLE2"
.LASF481:
	.string	"LE_EXPR"
.LASF1294:
	.string	"CODE_FOR_addxf3"
.LASF1342:
	.string	"CODE_FOR_xordi3"
.LASF174:
	.string	"SET_ATTR"
.LASF355:
	.string	"NOTE_INSN_LIVE"
.LASF1003:
	.string	"CODE_FOR_testsi_1"
.LASF716:
	.string	"varasm"
.LASF1627:
	.string	"LTI_fixdfdi"
.LASF1154:
	.string	"CODE_FOR_addv2si3"
.LASF1529:
	.string	"OTI_negv"
.LASF970:
	.string	"CODE_FOR_truncdfsf2_3"
.LASF726:
	.string	"cannot_inline"
.LASF654:
	.string	"high"
.LASF1720:
	.string	"outof_word"
.LASF1243:
	.string	"CODE_FOR_cmpqi_ext_3"
.LASF1039:
	.string	"CODE_FOR_sqrtdf2_1_sse_only"
.LASF416:
	.string	"TYPE_DECL"
.LASF1008:
	.string	"CODE_FOR_negdf2_ifs"
.LASF599:
	.string	"BUILT_IN_FWRITE"
.LASF977:
	.string	"CODE_FOR_fix_truncsi_memory"
.LASF1536:
	.string	"OTI_cos"
.LASF801:
	.string	"common_flag"
.LASF733:
	.string	"x_cleanup_label"
.LASF325:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF406:
	.string	"FUNCTION_TYPE"
.LASF935:
	.string	"varasm_status"
.LASF529:
	.string	"EXC_PTR_EXPR"
.LASF1564:
	.string	"LTI_memmove"
.LASF479:
	.string	"TRUTH_NOT_EXPR"
.LASF1786:
	.string	"opalign"
.LASF1202:
	.string	"CODE_FOR_mmx_punpckhbw"
.LASF386:
	.string	"TREE_VEC"
.LASF44:
	.string	"SSE_REGS"
.LASF1683:
	.string	"real_t"
.LASF1064:
	.string	"CODE_FOR_strsetdi_rex_1"
.LASF646:
	.string	"lang_flag_0"
.LASF647:
	.string	"lang_flag_1"
.LASF648:
	.string	"lang_flag_2"
.LASF649:
	.string	"lang_flag_3"
.LASF350:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF651:
	.string	"lang_flag_5"
.LASF652:
	.string	"lang_flag_6"
.LASF817:
	.string	"lang_flag_7"
.LASF1075:
	.string	"CODE_FOR_rep_stosqi_rex64"
.LASF1053:
	.string	"CODE_FOR_strmovsi_1"
.LASF1729:
	.string	"second_shift_count"
.LASF105:
	.string	"COImode"
.LASF880:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1869:
	.string	"global_trees"
.LASF660:
	.string	"pointer"
.LASF136:
	.string	"MODE_RANDOM"
.LASF1171:
	.string	"CODE_FOR_mmx_xordi3"
.LASF1193:
	.string	"CODE_FOR_lshrv4hi3"
.LASF1069:
	.string	"CODE_FOR_strsetqi_1"
.LASF1361:
	.string	"CODE_FOR_one_cmplhi2"
.LASF1400:
	.string	"CODE_FOR_sordered"
.LASF800:
	.string	"in_system_header_flag"
.LASF1178:
	.string	"CODE_FOR_mmx_pinsrw"
.LASF1811:
	.string	"can_extend_p"
.LASF432:
	.string	"INIT_EXPR"
.LASF314:
	.string	"REG_UNUSED"
.LASF734:
	.string	"x_return_label"
.LASF76:
	.string	"BImode"
.LASF768:
	.string	"returns_pointer"
.LASF1204:
	.string	"CODE_FOR_mmx_punpckhdq"
.LASF1007:
	.string	"CODE_FOR_negdf2_memory"
.LASF1457:
	.string	"CODE_FOR_strsethi"
.LASF252:
	.string	"SIGN_EXTRACT"
.LASF889:
	.string	"itk_unsigned_int"
.LASF502:
	.string	"UNSAVE_EXPR"
.LASF807:
	.string	"weak_flag"
.LASF1769:
	.string	"expand_complex_abs"
.LASF1130:
	.string	"CODE_FOR_sse_nandti3"
.LASF1875:
	.string	"flag_non_call_exceptions"
.LASF199:
	.string	"CONST_DOUBLE"
.LASF1465:
	.string	"CODE_FOR_movdicc"
.LASF1051:
	.string	"CODE_FOR_cld"
.LASF463:
	.string	"ABS_EXPR"
.LASF1073:
	.string	"CODE_FOR_rep_stossi_rex64"
.LASF1825:
	.string	"doing_unsigned"
.LASF1443:
	.string	"CODE_FOR_movstrsi"
.LASF514:
	.string	"POSTDECREMENT_EXPR"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF148:
	.string	"INCLUDE"
.LASF1296:
	.string	"CODE_FOR_adddf3"
.LASF1241:
	.string	"CODE_FOR_cmpdi_1_rex64"
.LASF195:
	.string	"RETURN"
.LASF139:
	.string	"MODE_PARTIAL_INT"
.LASF1018:
	.string	"CODE_FOR_ashrsi3_31"
.LASF1020:
	.string	"CODE_FOR_setcc_2"
.LASF595:
	.string	"BUILT_IN_PUTS"
.LASF1286:
	.string	"CODE_FOR_floatsisf2"
.LASF1602:
	.string	"LTI_lexf2"
.LASF209:
	.string	"SYMBOL_REF"
.LASF1568:
	.string	"LTI_memset"
.LASF617:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF867:
	.string	"TI_UV4HI_TYPE"
.LASF1320:
	.string	"CODE_FOR_mulxf3"
.LASF1511:
	.string	"OTI_smod"
.LASF932:
	.string	"x_pending_chain"
.LASF1753:
	.string	"soptab"
.LASF1168:
	.string	"CODE_FOR_umulv4hi3_highpart"
.LASF879:
	.string	"TI_V16QI_TYPE"
.LASF1797:
	.string	"emit_indirect_jump"
.LASF1681:
	.string	"binoptab"
.LASF425:
	.string	"BUFFER_REF"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF1360:
	.string	"CODE_FOR_one_cmplsi2"
.LASF743:
	.string	"x_context_display"
.LASF474:
	.string	"TRUTH_ANDIF_EXPR"
.LASF842:
	.string	"TI_INTEGER_ONE"
.LASF566:
	.string	"BUILT_IN_STRSPN"
.LASF717:
	.string	"outer"
.LASF1599:
	.string	"LTI_gtxf2"
.LASF1089:
	.string	"CODE_FOR_allocate_stack_worker_1"
.LASF360:
	.string	"GR_PC"
.LASF1748:
	.string	"product_high"
.LASF1580:
	.string	"LTI_lthf2"
.LASF1482:
	.string	"CODE_FOR_movv4sf"
.LASF1483:
	.string	"CODE_FOR_movv4si"
.LASF1131:
	.string	"CODE_FOR_sse_iorti3"
.LASF1651:
	.string	"insn_gen_fn"
.LASF550:
	.string	"BUILT_IN_BCMP"
.LASF924:
	.string	"x_regno_reg_rtx"
.LASF285:
	.string	"size"
.LASF534:
	.string	"BUILT_IN_LABS"
.LASF1747:
	.string	"wordm1"
.LASF715:
	.string	"emit"
.LASF1140:
	.string	"CODE_FOR_sse_unpckhps"
.LASF493:
	.string	"IN_EXPR"
.LASF519:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF1305:
	.string	"CODE_FOR_subsf3"
.LASF1290:
	.string	"CODE_FOR_adddi3"
.LASF910:
	.string	"first"
.LASF200:
	.string	"CONST_VECTOR"
.LASF1506:
	.string	"OTI_sdiv"
.LASF464:
	.string	"FFS_EXPR"
.LASF641:
	.string	"public_flag"
.LASF1150:
	.string	"CODE_FOR_cvtss2si"
.LASF153:
	.string	"MATCH_DUP"
.LASF620:
	.string	"BUILT_IN_EH_RETURN"
.LASF1647:
	.string	"LTI_profile_function_entry"
.LASF341:
	.string	"NOTE_INSN_LOOP_END"
.LASF3:
	.string	"call"
.LASF143:
	.string	"MODE_VECTOR_INT"
.LASF2:
	.string	"jump"
.LASF345:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF472:
	.string	"BIT_ANDTC_EXPR"
.LASF1431:
	.string	"CODE_FOR_call_value_pop"
.LASF1434:
	.string	"CODE_FOR_untyped_call"
.LASF1662:
	.string	"n_dups"
.LASF1885:
	.string	"bcc_gen_fctn"
.LASF1001:
	.string	"CODE_FOR_udivmoddi4"
.LASF1821:
	.string	"expand_float"
.LASF560:
	.string	"BUILT_IN_STRNCPY"
.LASF939:
	.string	"language_function"
.LASF1880:
	.string	"fixtrunctab"
.LASF839:
	.string	"TI_UINTDI_TYPE"
.LASF1719:
	.string	"left_shift"
.LASF1105:
	.string	"CODE_FOR_sse_movntv4sf"
.LASF470:
	.string	"BIT_XOR_EXPR"
.LASF944:
	.string	"OPTAB_LIB_WIDEN"
.LASF1572:
	.string	"LTI_setjmp"
.LASF1242:
	.string	"CODE_FOR_cmpsi_1"
.LASF626:
	.string	"BUILT_IN_EXPECT"
.LASF287:
	.string	"mem_attrs"
.LASF253:
	.string	"ZERO_EXTRACT"
.LASF421:
	.string	"NAMESPACE_DECL"
.LASF490:
	.string	"UNGT_EXPR"
.LASF1096:
	.string	"CODE_FOR_movv2si_internal"
.LASF1705:
	.string	"icode"
.LASF1587:
	.string	"LTI_ltsf2"
.LASF1784:
	.string	"punsignedp"
.LASF1094:
	.string	"CODE_FOR_movv8qi_internal"
.LASF1642:
	.string	"LTI_fixunsxfdi"
.LASF82:
	.string	"OImode"
.LASF1126:
	.string	"CODE_FOR_vmrsqrtv4sf2"
.LASF695:
	.string	"packed_flag"
.LASF1079:
	.string	"CODE_FOR_cmpstrqi_rex_1"
.LASF946:
	.string	"insn_code"
.LASF564:
	.string	"BUILT_IN_STRSTR"
.LASF930:
	.string	"x_apply_args_value"
.LASF749:
	.string	"x_temp_slots"
.LASF1497:
	.string	"OTI_addv"
.LASF1452:
	.string	"CODE_FOR_clrstrsi"
.LASF1022:
	.string	"CODE_FOR_doloop_end_internal"
.LASF29:
	.string	"AREG"
.LASF437:
	.string	"METHOD_CALL_EXPR"
.LASF612:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF1558:
	.string	"LTI_truncxfsf2"
.LASF1655:
	.string	"strict_low"
.LASF770:
	.string	"calls_setjmp"
.LASF729:
	.string	"x_nonlocal_labels"
.LASF900:
	.string	"BITSIZETYPE"
.LASF917:
	.string	"x_last_insn"
.LASF1119:
	.string	"CODE_FOR_mulv4sf3"
.LASF830:
	.string	"TI_ERROR_MARK"
.LASF820:
	.string	"initial"
.LASF1592:
	.string	"LTI_gtdf2"
.LASF1028:
	.string	"CODE_FOR_prologue_set_got"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF948:
	.string	"CODE_FOR_cmpdi_1_insn_rex64"
.LASF1500:
	.string	"OTI_smul"
.LASF762:
	.string	"stack_alignment_needed"
.LASF1111:
	.string	"CODE_FOR_sse_loadss"
.LASF1412:
	.string	"CODE_FOR_bltu"
.LASF309:
	.string	"REG_WAS_0"
.LASF1317:
	.string	"CODE_FOR_umulsi3_highpart"
.LASF1726:
	.string	"outof_temp1"
.LASF1127:
	.string	"CODE_FOR_sqrtv4sf2"
.LASF767:
	.string	"returns_pcc_struct"
.LASF583:
	.string	"BUILT_IN_CONSTANT_P"
.LASF835:
	.string	"TI_INTTI_TYPE"
.LASF387:
	.string	"BLOCK"
.LASF1713:
	.string	"inter"
.LASF1451:
	.string	"CODE_FOR_strmovqi_rex64"
.LASF1737:
	.string	"op1_piece"
.LASF1034:
	.string	"CODE_FOR_ffssi_1"
.LASF1763:
	.string	"expand_unop"
.LASF1063:
	.string	"CODE_FOR_rep_movqi_rex64"
.LASF1101:
	.string	"CODE_FOR_sse_movmskps"
.LASF1049:
	.string	"CODE_FOR_cosxf2"
.LASF385:
	.string	"TREE_LIST"
.LASF627:
	.string	"END_BUILTINS"
.LASF482:
	.string	"GT_EXPR"
.LASF258:
	.string	"RANGE_VAR"
.LASF146:
	.string	"rtx_code"
.LASF452:
	.string	"ROUND_MOD_EXPR"
.LASF409:
	.string	"REAL_CST"
.LASF357:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF539:
	.string	"BUILT_IN_IMAXABS"
.LASF1185:
	.string	"CODE_FOR_gtv4hi3"
.LASF142:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1011:
	.string	"CODE_FOR_absdf2_memory"
.LASF1741:
	.string	"op0_low"
.LASF242:
	.string	"LTGT"
.LASF709:
	.string	"alias_set"
.LASF1212:
	.string	"CODE_FOR_subv2sf3"
.LASF864:
	.string	"TI_UV4SI_TYPE"
.LASF418:
	.string	"PARM_DECL"
.LASF778:
	.string	"is_thunk"
.LASF1796:
	.string	"prepare_float_lib_cmp"
.LASF683:
	.string	"fragment_origin"
.LASF327:
	.string	"REG_EH_REGION"
.LASF512:
	.string	"PREDECREMENT_EXPR"
.LASF117:
	.string	"V8DImode"
.LASF1671:
	.string	"expand_cmplxdiv_straight"
.LASF445:
	.string	"TRUNC_DIV_EXPR"
.LASF304:
	.string	"reg_note"
.LASF1531:
	.string	"OTI_absv"
.LASF1217:
	.string	"CODE_FOR_pfmaxv2sf3"
.LASF728:
	.string	"x_function_call_count"
.LASF1227:
	.string	"CODE_FOR_floatv2si2"
.LASF1113:
	.string	"CODE_FOR_sse_storess"
.LASF592:
	.string	"BUILT_IN_TRAP"
.LASF1068:
	.string	"CODE_FOR_strsethi_rex_1"
.LASF832:
	.string	"TI_INTHI_TYPE"
.LASF1433:
	.string	"CODE_FOR_call_value_exp"
.LASF1455:
	.string	"CODE_FOR_strsetsi"
.LASF1616:
	.string	"LTI_floattidf"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF890:
	.string	"itk_long"
.LASF517:
	.string	"TRY_CATCH_EXPR"
.LASF1715:
	.string	"outof_target"
.LASF1714:
	.string	"into_target"
.LASF415:
	.string	"CONST_DECL"
.LASF1345:
	.string	"CODE_FOR_xorqi3"
.LASF1315:
	.string	"CODE_FOR_mulsidi3"
.LASF1626:
	.string	"LTI_fixdfsi"
.LASF511:
	.string	"IMAGPART_EXPR"
.LASF1860:
	.string	"mode_unit_size"
.LASF1837:
	.string	"init_libfuncs"
.LASF563:
	.string	"BUILT_IN_STRLEN"
.LASF958:
	.string	"CODE_FOR_swaptf"
.LASF205:
	.string	"SUBREG"
.LASF964:
	.string	"CODE_FOR_extendsidi2_rex64"
.LASF1853:
	.string	"tcode"
.LASF985:
	.string	"CODE_FOR_floathidf2"
.LASF40:
	.string	"GENERAL_REGS"
.LASF1122:
	.string	"CODE_FOR_vmdivv4sf3"
.LASF112:
	.string	"V4SImode"
.LASF1547:
	.string	"can_compare_purpose"
.LASF478:
	.string	"TRUTH_XOR_EXPR"
.LASF1805:
	.string	"have_add2_insn"
.LASF383:
	.string	"ERROR_MARK"
.LASF1192:
	.string	"CODE_FOR_ashrv2si3"
.LASF1628:
	.string	"LTI_fixdfti"
.LASF1066:
	.string	"CODE_FOR_strsetsi_rex_1"
.LASF572:
	.string	"BUILT_IN_COS"
.LASF323:
	.string	"REG_SAVE_AREA"
.LASF1553:
	.string	"LTI_extendsfxf2"
.LASF615:
	.string	"BUILT_IN_DWARF_CFA"
.LASF150:
	.string	"INSN_LIST"
.LASF210:
	.string	"ADDRESSOF"
.LASF266:
	.string	"SS_PLUS"
.LASF630:
	.string	"side_effects_flag"
.LASF1440:
	.string	"CODE_FOR_ffssi2"
.LASF1047:
	.string	"CODE_FOR_cosdf2"
.LASF1764:
	.string	"unoptab"
.LASF1179:
	.string	"CODE_FOR_mmx_pextrw"
.LASF523:
	.string	"EXIT_EXPR"
.LASF283:
	.string	"expr"
.LASF1272:
	.string	"CODE_FOR_truncxfdf2"
.LASF374:
	.string	"LCT_CONST"
.LASF978:
	.string	"CODE_FOR_fix_truncsfsi_sse"
.LASF1550:
	.string	"ccp_store_flag"
.LASF865:
	.string	"TI_UV8HI_TYPE"
.LASF938:
	.string	"machine_function"
.LASF1762:
	.string	"unop"
.LASF886:
	.string	"itk_short"
.LASF707:
	.string	"binfo"
.LASF1322:
	.string	"CODE_FOR_muldf3"
.LASF1668:
	.string	"widen_operand"
.LASF1488:
	.string	"CODE_FOR_sfence"
.LASF1406:
	.string	"CODE_FOR_sltgt"
.LASF61:
	.string	"maybe_vaarg"
.LASF398:
	.string	"REFERENCE_TYPE"
.LASF1097:
	.string	"CODE_FOR_movv2sf_internal"
.LASF230:
	.string	"PRE_INC"
.LASF1031:
	.string	"CODE_FOR_eh_return_di"
.LASF993:
	.string	"CODE_FOR_addsi_1_zext"
.LASF85:
	.string	"PSImode"
.LASF1891:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF916:
	.string	"x_first_insn"
.LASF233:
	.string	"PRE_MODIFY"
.LASF120:
	.string	"V2DFmode"
.LASF1605:
	.string	"LTI_netf2"
.LASF956:
	.string	"CODE_FOR_popdi1"
.LASF1164:
	.string	"CODE_FOR_ussubv8qi3"
.LASF957:
	.string	"CODE_FOR_swapxf"
.LASF114:
	.string	"V8QImode"
.LASF1854:
	.string	"trap_rtx"
.LASF557:
	.string	"BUILT_IN_STRCAT"
.LASF324:
	.string	"REG_BR_PRED"
.LASF1846:
	.string	"libfunc_name"
.LASF608:
	.string	"BUILT_IN_ISGREATER"
.LASF1832:
	.string	"limit"
.LASF1091:
	.string	"CODE_FOR_trap"
.LASF1692:
	.string	"ratio"
.LASF792:
	.string	"linenum"
.LASF1189:
	.string	"CODE_FOR_uminv8qi3"
.LASF461:
	.string	"MIN_EXPR"
.LASF243:
	.string	"SIGN_EXTEND"
.LASF1823:
	.string	"fmode"
.LASF272:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1468:
	.string	"CODE_FOR_movsfcc"
.LASF552:
	.string	"BUILT_IN_INDEX"
.LASF391:
	.string	"COMPLEX_TYPE"
.LASF824:
	.string	"saved_tree"
.LASF1613:
	.string	"LTI_floattisf"
.LASF1306:
	.string	"CODE_FOR_muldi3"
.LASF863:
	.string	"TI_UV4SF_TYPE"
.LASF118:
	.string	"V16QImode"
.LASF1552:
	.string	"LTI_extendsfdf2"
.LASF16:
	.string	"common"
.LASF975:
	.string	"CODE_FOR_fix_truncdfdi_sse"
.LASF259:
	.string	"RANGE_LIVE"
.LASF439:
	.string	"CLEANUP_POINT_EXPR"
.LASF1842:
	.string	"suffix"
.LASF201:
	.string	"CONST_STRING"
.LASF1622:
	.string	"LTI_floattitf"
.LASF179:
	.string	"JUMP_INSN"
.LASF1203:
	.string	"CODE_FOR_mmx_punpckhwd"
.LASF1088:
	.string	"CODE_FOR_sse_movdfcc_eq"
.LASF193:
	.string	"CLOBBER"
.LASF667:
	.string	"tree_identifier"
.LASF833:
	.string	"TI_INTSI_TYPE"
.LASF1679:
	.string	"methods"
.LASF1736:
	.string	"op0_piece"
.LASF359:
	.string	"global_rtl_index"
.LASF1293:
	.string	"CODE_FOR_addqi3"
.LASF828:
	.string	"lang_decl"
.LASF962:
	.string	"CODE_FOR_zero_extendhidi2"
.LASF982:
	.string	"CODE_FOR_x86_fnstcw_1"
.LASF1246:
	.string	"CODE_FOR_cmpdf"
.LASF710:
	.string	"lang_specific"
.LASF1237:
	.string	"CODE_FOR_cmpdi"
.LASF93:
	.string	"TFmode"
.LASF1201:
	.string	"CODE_FOR_mmx_packuswb"
.LASF1024:
	.string	"CODE_FOR_return_internal"
.LASF556:
	.string	"BUILT_IN_MEMSET"
.LASF1398:
	.string	"CODE_FOR_sleu"
.LASF1344:
	.string	"CODE_FOR_xorhi3"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF1734:
	.string	"normalizep"
.LASF661:
	.string	"tree_complex"
.LASF91:
	.string	"DFmode"
.LASF1711:
	.string	"equiv_value"
.LASF5:
	.string	"volatil"
.LASF912:
	.string	"sequence_rtl_expr"
.LASF1878:
	.string	"extendtab"
.LASF1728:
	.string	"first_shift_count"
.LASF588:
	.string	"BUILT_IN_APPLY"
.LASF144:
	.string	"MODE_VECTOR_FLOAT"
.LASF381:
	.string	"LCT_RETURNS_TWICE"
.LASF1841:
	.string	"opname"
.LASF1584:
	.string	"LTI_nesf2"
.LASF1082:
	.string	"CODE_FOR_x86_movdicc_0_m1_rex64"
.LASF1118:
	.string	"CODE_FOR_vmsubv4sf3"
.LASF1851:
	.string	"init_optabs"
.LASF1363:
	.string	"CODE_FOR_ashldi3"
.LASF1836:
	.string	"init_optabv"
.LASF1696:
	.string	"expand_simple_binop"
.LASF1814:
	.string	"gen_extend_insn"
.LASF254:
	.string	"HIGH"
.LASF776:
	.string	"contains_functions"
.LASF963:
	.string	"CODE_FOR_zero_extendqidi2"
.LASF1205:
	.string	"CODE_FOR_mmx_punpcklbw"
.LASF477:
	.string	"TRUTH_OR_EXPR"
.LASF632:
	.string	"addressable_flag"
.LASF1812:
	.string	"to_mode"
.LASF403:
	.string	"RECORD_TYPE"
.LASF675:
	.string	"tree_block"
.LASF1641:
	.string	"LTI_fixunsxfsi"
.LASF1652:
	.string	"insn_operand_data"
.LASF1477:
	.string	"CODE_FOR_allocate_stack_worker"
.LASF760:
	.string	"profile_label_no"
.LASF1685:
	.string	"temp1"
.LASF1161:
	.string	"CODE_FOR_subv2si3"
.LASF1645:
	.string	"LTI_fixunstfdi"
.LASF1785:
	.string	"result_mode"
.LASF1619:
	.string	"LTI_floattixf"
.LASF1019:
	.string	"CODE_FOR_lshrdi3_1"
.LASF1388:
	.string	"CODE_FOR_insv"
.LASF296:
	.string	"rt_cselib"
.LASF1643:
	.string	"LTI_fixunsxfti"
.LASF613:
	.string	"BUILT_IN_ISUNORDERED"
.LASF329:
	.string	"REG_MAYBE_DEAD"
.LASF691:
	.string	"string_flag"
.LASF809:
	.string	"no_instrument_function_entry_exit"
.LASF19:
	.string	"vector"
.LASF1292:
	.string	"CODE_FOR_addhi3"
.LASF159:
	.string	"DEFINE_INSN"
.LASF1035:
	.string	"CODE_FOR_sqrtsf2_1"
.LASF33:
	.string	"SIREG"
.LASF1343:
	.string	"CODE_FOR_xorsi3"
.LASF1207:
	.string	"CODE_FOR_mmx_punpckldq"
.LASF568:
	.string	"BUILT_IN_STRCHR"
.LASF1221:
	.string	"CODE_FOR_pf2id"
.LASF1773:
	.string	"equiv"
.LASF1239:
	.string	"CODE_FOR_cmphi"
.LASF1695:
	.string	"binop"
.LASF312:
	.string	"REG_NONNEG"
.LASF273:
	.string	"min_align"
.LASF1222:
	.string	"CODE_FOR_pf2iw"
.LASF1502:
	.string	"OTI_smul_highpart"
.LASF1565:
	.string	"LTI_bcopy"
.LASF909:
	.string	"sequence_stack"
.LASF1268:
	.string	"CODE_FOR_extenddftf2"
.LASF590:
	.string	"BUILT_IN_SETJMP"
.LASF1877:
	.string	"optab_table"
.LASF1727:
	.string	"outof_temp2"
.LASF158:
	.string	"MATCH_INSN"
.LASF1486:
	.string	"CODE_FOR_movv8qi"
.LASF791:
	.string	"filename"
.LASF1414:
	.string	"CODE_FOR_bgeu"
.LASF306:
	.string	"REG_INC"
.LASF1479:
	.string	"CODE_FOR_builtin_setjmp_receiver"
.LASF38:
	.string	"INDEX_REGS"
.LASF216:
	.string	"MINUS"
.LASF1134:
	.string	"CODE_FOR_maskcmpv4sf3"
.LASF1574:
	.string	"LTI_unwind_sjlj_register"
.LASF1093:
	.string	"CODE_FOR_movv4si_internal"
.LASF713:
	.string	"function"
.LASF294:
	.string	"rttype"
.LASF922:
	.string	"regno_pointer_align"
.LASF302:
	.string	"basic_block_def"
.LASF681:
	.string	"supercontext"
.LASF808:
	.string	"non_addr_const_p"
.LASF525:
	.string	"LABELED_BLOCK_EXPR"
.LASF235:
	.string	"UNORDERED"
.LASF516:
	.string	"VA_ARG_EXPR"
.LASF30:
	.string	"DREG"
.LASF320:
	.string	"REG_BR_PROB"
.LASF495:
	.string	"CARD_EXPR"
.LASF1250:
	.string	"CODE_FOR_movstricthi"
.LASF1518:
	.string	"OTI_lshr"
.LASF1882:
	.string	"reload_in_optab"
.LASF1573:
	.string	"LTI_longjmp"
.LASF1180:
	.string	"CODE_FOR_mmx_pshufw"
.LASF929:
	.string	"x_saveregs_value"
.LASF427:
	.string	"ARRAY_RANGE_REF"
.LASF138:
	.string	"MODE_FLOAT"
.LASF814:
	.string	"pure_flag"
.LASF1276:
	.string	"CODE_FOR_fix_truncdfdi2"
.LASF693:
	.string	"needs_constructing_flag"
.LASF1743:
	.string	"op1_low"
.LASF761:
	.string	"machine"
.LASF378:
	.string	"LCT_NORETURN"
.LASF1561:
	.string	"LTI_trunctfdf2"
.LASF1010:
	.string	"CODE_FOR_abssf2_ifs"
.LASF87:
	.string	"QFmode"
.LASF1677:
	.string	"imagr"
.LASF965:
	.string	"CODE_FOR_extendhidi2"
.LASF430:
	.string	"COMPOUND_EXPR"
.LASF54:
	.string	"ix86_args"
.LASF1273:
	.string	"CODE_FOR_trunctfdf2"
.LASF1172:
	.string	"CODE_FOR_mmx_clrdi"
.LASF226:
	.string	"SMAX"
.LASF1782:
	.string	"pcomparison"
.LASF1460:
	.string	"CODE_FOR_strsetqi_rex64"
.LASF788:
	.string	"uses_eh_lsda"
.LASF803:
	.string	"transparent_union"
.LASF436:
	.string	"CALL_EXPR"
.LASF607:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF1123:
	.string	"CODE_FOR_rcpv4sf2"
.LASF1297:
	.string	"CODE_FOR_addsf3"
.LASF1341:
	.string	"CODE_FOR_iorqi3"
.LASF467:
	.string	"LROTATE_EXPR"
.LASF441:
	.string	"WITH_RECORD_EXPR"
.LASF1197:
	.string	"CODE_FOR_ashlv2si3"
.LASF561:
	.string	"BUILT_IN_STRCMP"
.LASF1640:
	.string	"LTI_fixunsdfti"
.LASF976:
	.string	"CODE_FOR_fix_truncsi_nomemory"
.LASF1534:
	.string	"OTI_sqrt"
.LASF236:
	.string	"ORDERED"
.LASF192:
	.string	"PREFETCH"
.LASF908:
	.string	"next"
.LASF1667:
	.string	"add_equal_note"
.LASF194:
	.string	"CALL"
.LASF1330:
	.string	"CODE_FOR_udivmodhi4"
.LASF619:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1041:
	.string	"CODE_FOR_sqrtxf2"
.LASF102:
	.string	"CSImode"
.LASF1228:
	.string	"CODE_FOR_pavgusb"
.LASF1866:
	.string	"const_tiny_rtx"
.LASF861:
	.string	"TI_VA_LIST_TYPE"
.LASF1490:
	.string	"CODE_FOR_prefetch"
.LASF237:
	.string	"UNEQ"
.LASF6:
	.string	"in_struct"
.LASF1600:
	.string	"LTI_gexf2"
.LASF901:
	.string	"SBITSIZETYPE"
.LASF1581:
	.string	"LTI_lehf2"
.LASF1231:
	.string	"CODE_FOR_pfrcpit2v2sf3"
.LASF455:
	.string	"FIX_TRUNC_EXPR"
.LASF706:
	.string	"main_variant"
.LASF591:
	.string	"BUILT_IN_LONGJMP"
.LASF616:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1654:
	.string	"constraint"
.LASF1358:
	.string	"CODE_FOR_abstf2"
.LASF999:
	.string	"CODE_FOR_udivqi3"
.LASF1085:
	.string	"CODE_FOR_sse_movsfcc"
.LASF1777:
	.string	"emit_libcall_block"
.LASF991:
	.string	"CODE_FOR_floatditf2"
.LASF180:
	.string	"CALL_INSN"
.LASF1291:
	.string	"CODE_FOR_addsi3"
.LASF1578:
	.string	"LTI_gthf2"
.LASF238:
	.string	"UNGE"
.LASF1269:
	.string	"CODE_FOR_truncdfsf2"
.LASF804:
	.string	"static_ctor_flag"
.LASF888:
	.string	"itk_int"
.LASF239:
	.string	"UNGT"
.LASF953:
	.string	"CODE_FOR_popsi1"
.LASF13:
	.string	"num_elem"
.LASF1541:
	.string	"OTI_cbranch"
.LASF1569:
	.string	"LTI_bzero"
.LASF497:
	.string	"CONVERT_EXPR"
.LASF1489:
	.string	"CODE_FOR_sse_prologue_save"
.LASF321:
	.string	"REG_EXEC_COUNT"
.LASF1438:
	.string	"CODE_FOR_sibcall_epilogue"
.LASF1801:
	.string	"reversed"
.LASF271:
	.string	"US_TRUNCATE"
.LASF918:
	.string	"x_cur_insn_uid"
.LASF182:
	.string	"CODE_LABEL"
.LASF1802:
	.string	"can_conditionally_move_p"
.LASF411:
	.string	"VECTOR_CST"
.LASF1157:
	.string	"CODE_FOR_usaddv8qi3"
.LASF1240:
	.string	"CODE_FOR_cmpqi"
.LASF295:
	.string	"rt_addr_diff_vec_flags"
.LASF1002:
	.string	"CODE_FOR_udivmodsi4"
.LASF974:
	.string	"CODE_FOR_fix_truncsfdi_sse"
.LASF1515:
	.string	"OTI_ior"
.LASF1425:
	.string	"CODE_FOR_indirect_jump"
.LASF160:
	.string	"DEFINE_PEEPHOLE"
.LASF1733:
	.string	"carry_out"
.LASF1030:
	.string	"CODE_FOR_eh_return_si"
.LASF605:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF197:
	.string	"RESX"
.LASF351:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF108:
	.string	"V2SImode"
.LASF682:
	.string	"abstract_origin"
.LASF222:
	.string	"ASHIFTRT"
.LASF176:
	.string	"EQ_ATTR"
.LASF1788:
	.string	"opnum"
.LASF812:
	.string	"no_limit_stack"
.LASF1415:
	.string	"CODE_FOR_ble"
.LASF1712:
	.string	"target_piece"
.LASF135:
	.string	"mode_class"
.LASF1588:
	.string	"LTI_lesf2"
.LASF1808:
	.string	"have_sub2_insn"
.LASF731:
	.string	"x_nonlocal_goto_handler_labels"
.LASF286:
	.string	"align"
.LASF356:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF1336:
	.string	"CODE_FOR_andhi3"
.LASF1803:
	.string	"gen_add2_insn"
.LASF1544:
	.string	"OTI_push"
.LASF1740:
	.string	"op0_high"
.LASF211:
	.string	"QUEUED"
.LASF1442:
	.string	"CODE_FOR_sqrtdf2"
.LASF1623:
	.string	"LTI_fixsfsi"
.LASF173:
	.string	"ATTR"
.LASF509:
	.string	"CONJ_EXPR"
.LASF419:
	.string	"RESULT_DECL"
.LASF59:
	.string	"sse_nregs"
.LASF724:
	.string	"return_rtx"
.LASF1247:
	.string	"CODE_FOR_cmpsf"
.LASF1238:
	.string	"CODE_FOR_cmpsi"
.LASF730:
	.string	"x_nonlocal_goto_handler_slots"
.LASF1218:
	.string	"CODE_FOR_pfminv2sf3"
.LASF1211:
	.string	"CODE_FOR_addv2sf3"
.LASF1593:
	.string	"LTI_gedf2"
.LASF1394:
	.string	"CODE_FOR_sltu"
.LASF298:
	.string	"rttree"
.LASF1401:
	.string	"CODE_FOR_suneq"
.LASF1175:
	.string	"CODE_FOR_mmx_uavgv8qi3"
.LASF1187:
	.string	"CODE_FOR_umaxv8qi3"
.LASF492:
	.string	"UNEQ_EXPR"
.LASF1690:
	.string	"this_mul_optab"
.LASF1810:
	.string	"tmode"
.LASF443:
	.string	"MINUS_EXPR"
.LASF1789:
	.string	"prepare_cmp_insn"
.LASF1112:
	.string	"CODE_FOR_sse_movss"
.LASF1077:
	.string	"CODE_FOR_cmpstrqi_nz_rex_1"
.LASF466:
	.string	"RSHIFT_EXPR"
.LASF74:
	.string	"machine_mode"
.LASF225:
	.string	"SMIN"
.LASF1338:
	.string	"CODE_FOR_iordi3"
.LASF1245:
	.string	"CODE_FOR_cmptf"
.LASF1253:
	.string	"CODE_FOR_movstrictqi"
.LASF697:
	.string	"pointer_depth"
.LASF496:
	.string	"RANGE_EXPR"
.LASF1893:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF395:
	.string	"CHAR_TYPE"
.LASF444:
	.string	"MULT_EXPR"
.LASF405:
	.string	"QUAL_UNION_TYPE"
.LASF330:
	.string	"REG_NORETURN"
.LASF456:
	.string	"FIX_CEIL_EXPR"
.LASF1699:
	.string	"wider_mode"
.LASF1499:
	.string	"OTI_subv"
.LASF1428:
	.string	"CODE_FOR_call_pop"
.LASF494:
	.string	"SET_LE_EXPR"
.LASF1368:
	.string	"CODE_FOR_ashlqi3"
.LASF579:
	.string	"BUILT_IN_SAVEREGS"
.LASF223:
	.string	"LSHIFTRT"
.LASF240:
	.string	"UNLE"
.LASF904:
	.string	"var_refs_queue"
.LASF871:
	.string	"TI_V4SF_TYPE"
.LASF905:
	.string	"modified"
.LASF1868:
	.string	"dconst1"
.LASF123:
	.string	"V8SFmode"
.LASF1402:
	.string	"CODE_FOR_sunge"
.LASF1426:
	.string	"CODE_FOR_tablejump"
.LASF518:
	.string	"TRY_FINALLY_EXPR"
.LASF1551:
	.string	"libfunc_index"
.LASF1403:
	.string	"CODE_FOR_sungt"
.LASF1220:
	.string	"CODE_FOR_femms"
.LASF1614:
	.string	"LTI_floatsidf"
.LASF20:
	.string	"string"
.LASF1644:
	.string	"LTI_fixunstfsi"
.LASF1170:
	.string	"CODE_FOR_mmx_iordi3"
.LASF408:
	.string	"INTEGER_CST"
.LASF8:
	.string	"integrated"
.LASF125:
	.string	"V16SFmode"
.LASF1116:
	.string	"CODE_FOR_vmaddv4sf3"
.LASF673:
	.string	"complexity"
.LASF79:
	.string	"SImode"
.LASF484:
	.string	"EQ_EXPR"
.LASF769:
	.string	"needs_context"
.LASF318:
	.string	"REG_DEP_ANTI"
.LASF983:
	.string	"CODE_FOR_x86_fldcw_1"
.LASF21:
	.string	"complex"
.LASF1702:
	.string	"shift_op"
.LASF745:
	.string	"x_parm_birth_insn"
.LASF1182:
	.string	"CODE_FOR_eqv4hi3"
.LASF1517:
	.string	"OTI_ashl"
.LASF229:
	.string	"PRE_DEC"
.LASF656:
	.string	"realvaluetype"
.LASF1519:
	.string	"OTI_ashr"
.LASF417:
	.string	"VAR_DECL"
.LASF796:
	.string	"inline_flag"
.LASF1012:
	.string	"CODE_FOR_absdf2_ifs"
.LASF1646:
	.string	"LTI_fixunstfti"
.LASF587:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1624:
	.string	"LTI_fixsfdi"
.LASF1663:
	.string	"n_alternatives"
.LASF165:
	.string	"DEFINE_EXPAND"
.LASF1252:
	.string	"CODE_FOR_reload_outqi"
.LASF1135:
	.string	"CODE_FOR_maskncmpv4sf3"
.LASF1074:
	.string	"CODE_FOR_rep_stosqi"
.LASF184:
	.string	"COND_EXEC"
.LASF744:
	.string	"x_trampoline_list"
.LASF785:
	.string	"x_dont_save_pending_sizes_p"
.LASF740:
	.string	"x_arg_pointer_save_area"
.LASF104:
	.string	"CTImode"
.LASF1378:
	.string	"CODE_FOR_rotldi3"
.LASF1129:
	.string	"CODE_FOR_sse_andti3"
.LASF189:
	.string	"UNSPEC_VOLATILE"
.LASF1435:
	.string	"CODE_FOR_return"
.LASF1005:
	.string	"CODE_FOR_negsf2_memory"
.LASF704:
	.string	"maxval"
.LASF984:
	.string	"CODE_FOR_floathisf2"
.LASF340:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF289:
	.string	"rtunion_def"
.LASF1872:
	.string	"flag_force_mem"
.LASF1244:
	.string	"CODE_FOR_cmpxf"
.LASF1165:
	.string	"CODE_FOR_ussubv4hi3"
.LASF1792:
	.string	"label"
.LASF831:
	.string	"TI_INTQI_TYPE"
.LASF349:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1492:
	.string	"libfunc"
.LASF433:
	.string	"TARGET_EXPR"
.LASF115:
	.string	"V8HImode"
.LASF1758:
	.string	"targ1"
.LASF1226:
	.string	"CODE_FOR_pi2fw"
.LASF1410:
	.string	"CODE_FOR_bgtu"
.LASF1776:
	.string	"emit_unop_insn"
.LASF1539:
	.string	"OTI_tst"
.LASF1121:
	.string	"CODE_FOR_divv4sf3"
.LASF540:
	.string	"BUILT_IN_CONJ"
.LASF1722:
	.string	"reverse_unsigned_shift"
.LASF1072:
	.string	"CODE_FOR_rep_stossi"
.LASF402:
	.string	"SET_TYPE"
.LASF1048:
	.string	"CODE_FOR_cossf2"
.LASF175:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF1532:
	.string	"OTI_one_cmpl"
.LASF293:
	.string	"rtstr"
.LASF1333:
	.string	"CODE_FOR_testqi_ext_ccno_0"
.LASF877:
	.string	"TI_V2SI_TYPE"
.LASF1308:
	.string	"CODE_FOR_mulhi3"
.LASF1563:
	.string	"LTI_memcpy"
.LASF1270:
	.string	"CODE_FOR_truncxfsf2"
.LASF623:
	.string	"BUILT_IN_STDARG_START"
.LASF423:
	.string	"BIT_FIELD_REF"
.LASF1353:
	.string	"CODE_FOR_negxf2"
.LASF1562:
	.string	"LTI_abort"
.LASF280:
	.string	"scale"
.LASF1106:
	.string	"CODE_FOR_sse_movntdi"
.LASF282:
	.string	"alias"
.LASF1525:
	.string	"OTI_umax"
.LASF644:
	.string	"bounded_flag"
.LASF1404:
	.string	"CODE_FOR_sunle"
.LASF549:
	.string	"BUILT_IN_BZERO"
.LASF1405:
	.string	"CODE_FOR_sunlt"
.LASF786:
	.string	"uses_const_pool"
.LASF1206:
	.string	"CODE_FOR_mmx_punpcklwd"
.LASF866:
	.string	"TI_UV8QI_TYPE"
.LASF1575:
	.string	"LTI_unwind_sjlj_unregister"
.LASF1630:
	.string	"LTI_fixxfdi"
.LASF986:
	.string	"CODE_FOR_floathixf2"
.LASF1092:
	.string	"CODE_FOR_movv4sf_internal"
.LASF369:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF129:
	.string	"CCGOCmode"
.LASF737:
	.string	"x_rtl_expr_chain"
.LASF919:
	.string	"x_last_linenum"
.LASF933:
	.string	"eh_status"
.LASF1310:
	.string	"CODE_FOR_umulqihi3"
.LASF1718:
	.string	"shift_count"
.LASF1703:
	.string	"entry_last"
.LASF771:
	.string	"calls_longjmp"
.LASF698:
	.string	"user_align"
.LASF1817:
	.string	"fixmode"
.LASF1461:
	.string	"CODE_FOR_cmpstrsi"
.LASF536:
	.string	"BUILT_IN_FABSF"
.LASF67:
	.string	"short unsigned int"
.LASF537:
	.string	"BUILT_IN_FABSL"
.LASF435:
	.string	"BIND_EXPR"
.LASF1432:
	.string	"CODE_FOR_call_value"
.LASF1528:
	.string	"OTI_neg"
.LASF1078:
	.string	"CODE_FOR_cmpstrqi_1"
.LASF1141:
	.string	"CODE_FOR_sse_unpcklps"
.LASF1505:
	.string	"OTI_umul_widen"
.LASF1046:
	.string	"CODE_FOR_sintf2"
.LASF1448:
	.string	"CODE_FOR_strmovhi"
.LASF1848:
	.string	"init_floating_libfuncs"
.LASF1469:
	.string	"CODE_FOR_movdfcc"
.LASF134:
	.string	"MAX_MACHINE_MODE"
.LASF166:
	.string	"DEFINE_DELAY"
.LASF1591:
	.string	"LTI_nedf2"
.LASF1858:
	.string	"mode_name"
.LASF265:
	.string	"VEC_DUPLICATE"
.LASF1873:
	.string	"flag_complex_divide_method"
.LASF1367:
	.string	"CODE_FOR_ashlhi3"
.LASF1307:
	.string	"CODE_FOR_mulsi3"
.LASF1146:
	.string	"CODE_FOR_cvtpi2ps"
.LASF1416:
	.string	"CODE_FOR_bleu"
.LASF777:
	.string	"has_computed_jump"
.LASF499:
	.string	"NON_LVALUE_EXPR"
.LASF927:
	.string	"x_inhibit_defer_pop"
.LASF1606:
	.string	"LTI_gttf2"
.LASF1604:
	.string	"LTI_eqtf2"
.LASF1098:
	.string	"CODE_FOR_movti_internal"
.LASF343:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF633:
	.string	"volatile_flag"
.LASF1664:
	.string	"output_format"
.LASF575:
	.string	"BUILT_IN_COSF"
.LASF578:
	.string	"BUILT_IN_COSL"
.LASF711:
	.string	"lang_type"
.LASF491:
	.string	"UNGE_EXPR"
.LASF1557:
	.string	"LTI_truncdfsf2"
.LASF600:
	.string	"BUILT_IN_FPRINTF"
.LASF823:
	.string	"live_range_rtl"
.LASF1781:
	.string	"can_compare_p"
.LASF152:
	.string	"MATCH_SCRATCH"
.LASF1352:
	.string	"CODE_FOR_negdf2"
.LASF1827:
	.string	"libfcn"
.LASF645:
	.string	"deprecated_flag"
.LASF685:
	.string	"address"
.LASF1259:
	.string	"CODE_FOR_zero_extendhisi2"
.LASF1103:
	.string	"CODE_FOR_mmx_maskmovq"
.LASF582:
	.string	"BUILT_IN_ARGS_INFO"
.LASF655:
	.string	"tree_int_cst"
.LASF1311:
	.string	"CODE_FOR_mulqihi3"
.LASF798:
	.string	"virtual_flag"
.LASF1285:
	.string	"CODE_FOR_fix_truncsfhi2"
.LASF934:
	.string	"stmt_status"
.LASF96:
	.string	"SCmode"
.LASF414:
	.string	"LABEL_DECL"
.LASF1724:
	.string	"into_temp1"
.LASF1725:
	.string	"into_temp2"
.LASF947:
	.string	"CODE_FOR_cmpdi_ccno_1_rex64"
.LASF217:
	.string	"MULT"
.LASF642:
	.string	"private_flag"
.LASF1267:
	.string	"CODE_FOR_extenddfxf2"
.LASF127:
	.string	"CCmode"
.LASF1840:
	.string	"last_mode"
.LASF1375:
	.string	"CODE_FOR_lshrsi3"
.LASF923:
	.string	"regno_decl"
.LASF1309:
	.string	"CODE_FOR_mulqi3"
.LASF657:
	.string	"tree_real_cst"
.LASF1761:
	.string	"expand_simple_unop"
.LASF1366:
	.string	"CODE_FOR_ashlsi3"
.LASF483:
	.string	"GE_EXPR"
.LASF362:
	.string	"GR_STACK_POINTER"
.LASF860:
	.string	"TI_PTRDIFF_TYPE"
.LASF171:
	.string	"ADDRESS"
.LASF260:
	.string	"CONSTANT_P_RTX"
.LASF1867:
	.string	"reload_in_progress"
.LASF1318:
	.string	"CODE_FOR_smuldi3_highpart"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1493:
	.string	"optab"
.LASF1159:
	.string	"CODE_FOR_subv8qi3"
.LASF955:
	.string	"CODE_FOR_pushdi2_rex64"
.LASF732:
	.string	"x_nonlocal_goto_stack_level"
.LASF1009:
	.string	"CODE_FOR_abssf2_memory"
.LASF878:
	.string	"TI_V2SF_TYPE"
.LASF1844:
	.string	"mname"
.LASF66:
	.string	"unsigned char"
.LASF1826:
	.string	"neglabel"
.LASF701:
	.string	"symtab"
.LASF1407:
	.string	"CODE_FOR_beq"
.LASF1347:
	.string	"CODE_FOR_negdi2"
.LASF392:
	.string	"VECTOR_TYPE"
.LASF893:
	.string	"itk_unsigned_long_long"
.LASF1316:
	.string	"CODE_FOR_umuldi3_highpart"
.LASF1749:
	.string	"op1x"
.LASF1661:
	.string	"n_operands"
.LASF196:
	.string	"TRAP_IF"
.LASF1757:
	.string	"targ0"
.LASF332:
	.string	"REG_SETJMP"
.LASF1524:
	.string	"OTI_umin"
.LASF746:
	.string	"x_last_parm_insn"
.LASF1058:
	.string	"CODE_FOR_strmovqi_rex_1"
.LASF611:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF688:
	.string	"size_unit"
.LASF434:
	.string	"COND_EXPR"
.LASF1181:
	.string	"CODE_FOR_eqv8qi3"
.LASF1014:
	.string	"CODE_FOR_x86_shld_1"
.LASF36:
	.string	"Q_REGS"
.LASF311:
	.string	"REG_LIBCALL"
.LASF92:
	.string	"XFmode"
.LASF1071:
	.string	"CODE_FOR_rep_stosdi_rex64"
.LASF1680:
	.string	"class"
.LASF410:
	.string	"COMPLEX_CST"
.LASF1284:
	.string	"CODE_FOR_fix_truncdfhi2"
.LASF305:
	.string	"REG_DEAD"
.LASF413:
	.string	"FUNCTION_DECL"
.LASF88:
	.string	"HFmode"
.LASF1413:
	.string	"CODE_FOR_bge"
.LASF895:
	.string	"_Bool"
.LASF1409:
	.string	"CODE_FOR_bgt"
.LASF1864:
	.string	"rtx_class"
.LASF1693:
	.string	"lab1"
.LASF1694:
	.string	"lab2"
.LASF1828:
	.string	"ftruncify"
.LASF1325:
	.string	"CODE_FOR_divtf3"
.LASF639:
	.string	"nothrow_flag"
.LASF454:
	.string	"EXACT_DIV_EXPR"
.LASF1396:
	.string	"CODE_FOR_sgeu"
.LASF113:
	.string	"V4DImode"
.LASF449:
	.string	"TRUNC_MOD_EXPR"
.LASF187:
	.string	"ASM_OPERANDS"
.LASF1256:
	.string	"CODE_FOR_movdf"
.LASF1108:
	.string	"CODE_FOR_sse_movlhps"
.LASF1254:
	.string	"CODE_FOR_movdi"
.LASF1611:
	.string	"LTI_floatsisf"
.LASF1526:
	.string	"OTI_mov"
.LASF1151:
	.string	"CODE_FOR_cvttss2si"
.LASF772:
	.string	"calls_alloca"
.LASF1829:
	.string	"expand_fix"
.LASF622:
	.string	"BUILT_IN_VARARGS_START"
.LASF1065:
	.string	"CODE_FOR_strsetsi_1"
.LASF913:
	.string	"emit_status"
.LASF665:
	.string	"elements"
.LASF1620:
	.string	"LTI_floatsitf"
.LASF487:
	.string	"ORDERED_EXPR"
.LASF24:
	.string	"type"
.LASF1521:
	.string	"OTI_rotr"
.LASF1687:
	.string	"this_add_optab"
.LASF364:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1669:
	.string	"oldmode"
.LASF834:
	.string	"TI_INTDI_TYPE"
.LASF635:
	.string	"unsigned_flag"
.LASF1026:
	.string	"CODE_FOR_return_indirect_internal"
.LASF1771:
	.string	"total"
.LASF1381:
	.string	"CODE_FOR_rotlqi3"
.LASF1280:
	.string	"CODE_FOR_fix_truncdfsi2"
.LASF920:
	.string	"x_last_filename"
.LASF1357:
	.string	"CODE_FOR_absxf2"
.LASF1198:
	.string	"CODE_FOR_mmx_ashldi3"
.LASF465:
	.string	"LSHIFT_EXPR"
.LASF1559:
	.string	"LTI_trunctfsf2"
.LASF471:
	.string	"BIT_AND_EXPR"
.LASF686:
	.string	"tree_type"
.LASF990:
	.string	"CODE_FOR_floatdixf2"
.LASF126:
	.string	"BLKmode"
.LASF735:
	.string	"x_save_expr_regs"
.LASF1859:
	.string	"mode_size"
.LASF1894:
	.string	"done"
.LASF86:
	.string	"PDImode"
.LASF795:
	.string	"regdecl_flag"
.LASF424:
	.string	"INDIRECT_REF"
.LASF700:
	.string	"reference_to"
.LASF1806:
	.string	"gen_sub2_insn"
.LASF764:
	.string	"language"
.LASF14:
	.string	"elem"
.LASF313:
	.string	"REG_NO_CONFLICT"
.LASF1446:
	.string	"CODE_FOR_strmovsi"
.LASF847:
	.string	"TI_BITSIZE_ZERO"
.LASF1570:
	.string	"LTI_unwind_resume"
.LASF1700:
	.string	"temp"
.LASF1512:
	.string	"OTI_umod"
.LASF885:
	.string	"itk_unsigned_char"
.LASF35:
	.string	"AD_REGS"
.LASF154:
	.string	"MATCH_OPERATOR"
.LASF741:
	.string	"x_clobber_return_insn"
.LASF541:
	.string	"BUILT_IN_CONJF"
.LASF162:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF542:
	.string	"BUILT_IN_CONJL"
.LASF1830:
	.string	"must_trunc"
.LASF555:
	.string	"BUILT_IN_MEMCMP"
.LASF1249:
	.string	"CODE_FOR_movhi"
.LASF899:
	.string	"USIZETYPE"
.LASF1133:
	.string	"CODE_FOR_sse_clrv4sf"
.LASF1158:
	.string	"CODE_FOR_usaddv4hi3"
.LASF1411:
	.string	"CODE_FOR_blt"
.LASF1328:
	.string	"CODE_FOR_divmoddi4"
.LASF773:
	.string	"calls_eh_return"
.LASF269:
	.string	"US_MINUS"
.LASF614:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF1476:
	.string	"CODE_FOR_pro_epilogue_adjust_stack"
.LASF640:
	.string	"static_flag"
.LASF1636:
	.string	"LTI_fixunssfdi"
.LASF1603:
	.string	"LTI_unordxf2"
.LASF1503:
	.string	"OTI_umul_highpart"
.LASF1055:
	.string	"CODE_FOR_strmovhi_1"
.LASF670:
	.string	"value"
.LASF1617:
	.string	"LTI_floatsixf"
.LASF1838:
	.string	"optable"
.LASF750:
	.string	"x_temp_slot_level"
.LASF506:
	.string	"ENTRY_VALUE_EXPR"
.LASF725:
	.string	"internal_arg_pointer"
.LASF1629:
	.string	"LTI_fixxfsi"
.LASF1087:
	.string	"CODE_FOR_sse_movdfcc"
.LASF738:
	.string	"x_tail_recursion_label"
.LASF1213:
	.string	"CODE_FOR_subrv2sf3"
.LASF486:
	.string	"UNORDERED_EXPR"
.LASF1633:
	.string	"LTI_fixtfdi"
.LASF763:
	.string	"preferred_stack_boundary"
.LASF775:
	.string	"has_nonlocal_goto"
.LASF1408:
	.string	"CODE_FOR_bne"
.LASF1509:
	.string	"OTI_udiv"
.LASF1567:
	.string	"LTI_bcmp"
.LASF39:
	.string	"LEGACY_REGS"
.LASF1439:
	.string	"CODE_FOR_eh_return"
.LASF1579:
	.string	"LTI_gehf2"
.LASF1501:
	.string	"OTI_smulv"
.LASF844:
	.string	"TI_NULL_POINTER"
.LASF1548:
	.string	"ccp_jump"
.LASF997:
	.string	"CODE_FOR_subsi3_carry_zext"
.LASF1631:
	.string	"LTI_fixxfti"
.LASF1176:
	.string	"CODE_FOR_mmx_uavgv4hi3"
.LASF396:
	.string	"POINTER_TYPE"
.LASF1027:
	.string	"CODE_FOR_nop"
.LASF544:
	.string	"BUILT_IN_CREALF"
.LASF110:
	.string	"V4QImode"
.LASF887:
	.string	"itk_unsigned_short"
.LASF545:
	.string	"BUILT_IN_CREALL"
.LASF1356:
	.string	"CODE_FOR_absdf2"
.LASF1767:
	.string	"safe"
.LASF1340:
	.string	"CODE_FOR_iorhi3"
.LASF554:
	.string	"BUILT_IN_MEMCPY"
.LASF354:
	.string	"NOTE_INSN_RANGE_END"
.LASF292:
	.string	"rtuint"
.LASF727:
	.string	"hard_reg_initial_vals"
.LASF1289:
	.string	"CODE_FOR_floatdidf2"
.LASF1369:
	.string	"CODE_FOR_ashrdi3"
.LASF1889:
	.string	"clrstr_optab"
.LASF1209:
	.string	"CODE_FOR_ldmxcsr"
.LASF231:
	.string	"POST_DEC"
.LASF1459:
	.string	"CODE_FOR_strsetqi"
.LASF1516:
	.string	"OTI_xor"
.LASF366:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1887:
	.string	"movcc_gen_code"
.LASF1282:
	.string	"CODE_FOR_fix_truncxfhi2"
.LASF407:
	.string	"LANG_TYPE"
.LASF846:
	.string	"TI_SIZE_ONE"
.LASF315:
	.string	"REG_CC_SETTER"
.LASF1751:
	.string	"sign_expand_binop"
.LASF326:
	.string	"REG_EH_CONTEXT"
.LASF680:
	.string	"subblocks"
.LASF1756:
	.string	"expand_twoval_binop"
.LASF361:
	.string	"GR_CC0"
.LASF719:
	.string	"args_size"
.LASF31:
	.string	"CREG"
.LASF1721:
	.string	"carries"
.LASF1436:
	.string	"CODE_FOR_prologue"
.LASF346:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF1441:
	.string	"CODE_FOR_sqrtsf2"
.LASF981:
	.string	"CODE_FOR_fix_trunchi_memory"
.LASF1610:
	.string	"LTI_unordtf2"
.LASF797:
	.string	"bit_field_flag"
.LASF875:
	.string	"TI_V8QI_TYPE"
.LASF1023:
	.string	"CODE_FOR_blockage"
.LASF1793:
	.string	"test"
.LASF766:
	.string	"returns_struct"
.LASF1445:
	.string	"CODE_FOR_strmovdi_rex64"
.LASF547:
	.string	"BUILT_IN_CIMAGF"
.LASF241:
	.string	"UNLT"
.LASF1059:
	.string	"CODE_FOR_rep_movdi_rex64"
.LASF401:
	.string	"ARRAY_TYPE"
.LASF1586:
	.string	"LTI_gesf2"
.LASF1350:
	.string	"CODE_FOR_negqi2"
.LASF1424:
	.string	"CODE_FOR_bltgt"
.LASF476:
	.string	"TRUTH_AND_EXPR"
.LASF794:
	.string	"nonlocal_flag"
.LASF83:
	.string	"PQImode"
.LASF1266:
	.string	"CODE_FOR_extendsftf2"
.LASF687:
	.string	"values"
.LASF1759:
	.string	"cop0"
.LASF856:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF15:
	.string	"tree"
.LASF1380:
	.string	"CODE_FOR_rotlhi3"
.LASF1214:
	.string	"CODE_FOR_gtv2sf3"
.LASF1339:
	.string	"CODE_FOR_iorsi3"
.LASF56:
	.string	"nregs"
.LASF255:
	.string	"LO_SUM"
.LASF167:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF316:
	.string	"REG_CC_USER"
.LASF1191:
	.string	"CODE_FOR_ashrv4hi3"
.LASF694:
	.string	"transparent_union_flag"
.LASF1507:
	.string	"OTI_sdivv"
.LASF1174:
	.string	"CODE_FOR_mmx_nanddi3"
.LASF373:
	.string	"LCT_NORMAL"
.LASF246:
	.string	"FLOAT_EXTEND"
.LASF393:
	.string	"ENUMERAL_TYPE"
.LASF147:
	.string	"UNKNOWN"
.LASF1542:
	.string	"OTI_cmov"
.LASF133:
	.string	"CCFPUmode"
.LASF426:
	.string	"ARRAY_REF"
.LASF1278:
	.string	"CODE_FOR_fix_truncxfsi2"
.LASF995:
	.string	"CODE_FOR_subdi3_carry_rex64"
.LASF546:
	.string	"BUILT_IN_CIMAG"
.LASF1472:
	.string	"CODE_FOR_minsf3"
.LASF855:
	.string	"TI_DOUBLE_TYPE"
.LASF1152:
	.string	"CODE_FOR_addv8qi3"
.LASF17:
	.string	"int_cst"
.LASF1067:
	.string	"CODE_FOR_strsethi_1"
.LASF1665:
	.string	"target"
.LASF498:
	.string	"NOP_EXPR"
.LASF692:
	.string	"no_force_blk_flag"
.LASF358:
	.string	"NOTE_INSN_MAX"
.LASF1224:
	.string	"CODE_FOR_pfnacc"
.LASF868:
	.string	"TI_UV2SI_TYPE"
.LASF375:
	.string	"LCT_PURE"
.LASF894:
	.string	"itk_none"
.LASF1277:
	.string	"CODE_FOR_fix_truncsfdi2"
.LASF1251:
	.string	"CODE_FOR_movqi"
.LASF1571:
	.string	"LTI_eh_personality"
.LASF431:
	.string	"MODIFY_EXPR"
.LASF404:
	.string	"UNION_TYPE"
.LASF625:
	.string	"BUILT_IN_VA_COPY"
.LASF1686:
	.string	"temp2"
.LASF754:
	.string	"inlinable"
.LASF850:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF1775:
	.string	"insn"
.LASF428:
	.string	"VTABLE_REF"
.LASF690:
	.string	"precision"
.LASF1791:
	.string	"comparison"
.LASF1717:
	.string	"outof_input"
.LASF739:
	.string	"x_tail_recursion_reentry"
.LASF348:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1822:
	.string	"from"
.LASF1379:
	.string	"CODE_FOR_rotlsi3"
.LASF636:
	.string	"asm_written_flag"
.LASF1658:
	.string	"output"
.LASF1780:
	.string	"emit_0_to_1_insn"
.LASF460:
	.string	"NEGATE_EXPR"
.LASF453:
	.string	"RDIV_EXPR"
.LASF1274:
	.string	"CODE_FOR_fix_truncxfdi2"
.LASF574:
	.string	"BUILT_IN_SINF"
.LASF577:
	.string	"BUILT_IN_SINL"
.LASF1545:
	.string	"OTI_MAX"
.LASF522:
	.string	"RETURN_EXPR"
.LASF1787:
	.string	"prepare_operand"
.LASF805:
	.string	"static_dtor_flag"
.LASF1166:
	.string	"CODE_FOR_mulv4hi3"
.LASF1255:
	.string	"CODE_FOR_movsf"
.LASF1248:
	.string	"CODE_FOR_movsi"
.LASF674:
	.string	"operands"
.LASF1136:
	.string	"CODE_FOR_vmmaskcmpv4sf3"
.LASF1650:
	.string	"insn_operand_predicate_fn"
.LASF1374:
	.string	"CODE_FOR_lshrdi3"
.LASF1045:
	.string	"CODE_FOR_sinxf2"
.LASF1147:
	.string	"CODE_FOR_cvtps2pi"
.LASF1819:
	.string	"truncp_ptr"
.LASF952:
	.string	"CODE_FOR_x86_sahf_1"
.LASF191:
	.string	"ADDR_DIFF_VEC"
.LASF1038:
	.string	"CODE_FOR_sqrtdf2_1"
.LASF1865:
	.string	"const_int_rtx"
.LASF1577:
	.string	"LTI_nehf2"
.LASF207:
	.string	"CONCAT"
.LASF288:
	.string	"tree_node"
.LASF597:
	.string	"BUILT_IN_FPUTC"
.LASF757:
	.string	"original_decl_initial"
.LASF1258:
	.string	"CODE_FOR_movtf"
.LASF1162:
	.string	"CODE_FOR_sssubv8qi3"
.LASF1481:
	.string	"CODE_FOR_movti"
.LASF884:
	.string	"itk_signed_char"
.LASF598:
	.string	"BUILT_IN_FPUTS"
.LASF251:
	.string	"SQRT"
.LASF586:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF103:
	.string	"CDImode"
.LASF1346:
	.string	"CODE_FOR_xorqi_cc_ext_1"
.LASF806:
	.string	"artificial_flag"
.LASF9:
	.string	"frame_related"
.LASF1070:
	.string	"CODE_FOR_strsetqi_rex_1"
.LASF1691:
	.string	"expand_cmplxdiv_wide"
.LASF882:
	.string	"integer_type_kind"
.LASF989:
	.string	"CODE_FOR_floatsitf2"
.LASF854:
	.string	"TI_FLOAT_TYPE"
.LASF943:
	.string	"OPTAB_WIDEN"
.LASF1670:
	.string	"no_extend"
.LASF532:
	.string	"BUILT_IN_ALLOCA"
.LASF220:
	.string	"ASHIFT"
.LASF412:
	.string	"STRING_CST"
.LASF1300:
	.string	"CODE_FOR_subhi3"
.LASF911:
	.string	"last"
.LASF1566:
	.string	"LTI_memcmp"
.LASF69:
	.string	"short int"
.LASF971:
	.string	"CODE_FOR_truncdfsf2_sse_only"
.LASF1831:
	.string	"bitsize"
.LASF310:
	.string	"REG_RETVAL"
.LASF204:
	.string	"SCRATCH"
.LASF1200:
	.string	"CODE_FOR_mmx_packssdw"
.LASF1042:
	.string	"CODE_FOR_sqrttf2"
.LASF247:
	.string	"FLOAT_TRUNCATE"
.LASF1809:
	.string	"gen_move_insn"
.LASF1334:
	.string	"CODE_FOR_anddi3"
.LASF1148:
	.string	"CODE_FOR_cvttps2pi"
.LASF1083:
	.string	"CODE_FOR_x86_movsicc_0_m1"
.LASF810:
	.string	"comdat_flag"
.LASF1491:
	.string	"CODE_FOR_nothing"
.LASF140:
	.string	"MODE_CC"
.LASF339:
	.string	"NOTE_INSN_BLOCK_END"
.LASF1462:
	.string	"CODE_FOR_cmpintqi"
.LASF527:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF1303:
	.string	"CODE_FOR_subtf3"
.LASF1169:
	.string	"CODE_FOR_mmx_pmaddwd"
.LASF531:
	.string	"built_in_function"
.LASF818:
	.string	"arguments"
.LASF1194:
	.string	"CODE_FOR_lshrv2si3"
.LASF1648:
	.string	"LTI_profile_function_exit"
.LASF290:
	.string	"rtwint"
.LASF748:
	.string	"x_parm_reg_stack_loc"
.LASF1635:
	.string	"LTI_fixunssfsi"
.LASF372:
	.string	"libcall_type"
.LASF1257:
	.string	"CODE_FOR_movxf"
.LASF22:
	.string	"identifier"
.LASF1738:
	.string	"newx"
.LASF1043:
	.string	"CODE_FOR_sindf2"
.LASF1371:
	.string	"CODE_FOR_ashrsi3"
.LASF1160:
	.string	"CODE_FOR_subv4hi3"
.LASF1804:
	.string	"gen_add3_insn"
.LASF109:
	.string	"V2DImode"
.LASF869:
	.string	"TI_UV2SF_TYPE"
.LASF1637:
	.string	"LTI_fixunssfti"
.LASF742:
	.string	"x_frame_offset"
.LASF1117:
	.string	"CODE_FOR_subv4sf3"
.LASF669:
	.string	"purpose"
.LASF1349:
	.string	"CODE_FOR_neghi2"
.LASF1029:
	.string	"CODE_FOR_prologue_get_pc"
.LASF606:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1173:
	.string	"CODE_FOR_mmx_anddi3"
.LASF1632:
	.string	"LTI_fixtfsi"
.LASF1710:
	.string	"insns"
.LASF1843:
	.string	"opname_len"
.LASF1399:
	.string	"CODE_FOR_sunordered"
.LASF1678:
	.string	"submode"
.LASF446:
	.string	"CEIL_DIV_EXPR"
.LASF1449:
	.string	"CODE_FOR_strmovhi_rex64"
.LASF1351:
	.string	"CODE_FOR_negsf2"
.LASF650:
	.string	"lang_flag_4"
.LASF672:
	.string	"tree_exp"
.LASF857:
	.string	"TI_VOID_TYPE"
.LASF677:
	.string	"abstract_flag"
.LASF1590:
	.string	"LTI_eqdf2"
.LASF1464:
	.string	"CODE_FOR_strlendi"
.LASF1824:
	.string	"imode"
.LASF1770:
	.string	"this_abs_optab"
.LASF1723:
	.string	"unsigned_shift"
.LASF959:
	.string	"CODE_FOR_zero_extendhisi2_and"
.LASF1608:
	.string	"LTI_lttf2"
.LASF256:
	.string	"RANGE_INFO"
.LASF64:
	.string	"long int"
.LASF221:
	.string	"ROTATE"
.LASF596:
	.string	"BUILT_IN_PRINTF"
.LASF1533:
	.string	"OTI_ffs"
.LASF1319:
	.string	"CODE_FOR_smulsi3_highpart"
.LASF1036:
	.string	"CODE_FOR_sqrtsf2_1_sse_only"
.LASF782:
	.string	"varargs"
.LASF1556:
	.string	"LTI_extenddftf2"
.LASF853:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF543:
	.string	"BUILT_IN_CREAL"
.LASF181:
	.string	"BARRIER"
.LASF1688:
	.string	"this_sub_optab"
.LASF1510:
	.string	"OTI_udivmod"
.LASF1373:
	.string	"CODE_FOR_ashrqi3"
.LASF58:
	.string	"sse_words"
.LASF966:
	.string	"CODE_FOR_extendqidi2"
.LASF638:
	.string	"used_flag"
.LASF1890:
	.string	"libfunc_table"
.LASF447:
	.string	"FLOOR_DIV_EXPR"
.LASF1324:
	.string	"CODE_FOR_divxf3"
.LASF336:
	.string	"NOTE_INSN_BIAS"
.LASF1478:
	.string	"CODE_FOR_allocate_stack"
.LASF621:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF1673:
	.string	"real1"
.LASF132:
	.string	"CCFPmode"
.LASF1750:
	.string	"op1_mode"
.LASF206:
	.string	"STRICT_LOW_PART"
.LASF100:
	.string	"CQImode"
.LASF941:
	.string	"OPTAB_DIRECT"
.LASF1772:
	.string	"emit_no_conflict_block"
.LASF370:
	.string	"GR_VIRTUAL_CFA"
.LASF972:
	.string	"CODE_FOR_fix_truncdi_nomemory"
.LASF124:
	.string	"V8DFmode"
.LASF784:
	.string	"x_whole_function_mode_p"
.LASF802:
	.string	"defer_output"
.LASF1732:
	.string	"carry_in"
.LASF1114:
	.string	"CODE_FOR_sse_shufps"
.LASF81:
	.string	"TImode"
.LASF1744:
	.string	"product"
.LASF1447:
	.string	"CODE_FOR_strmovsi_rex64"
.LASF520:
	.string	"LABEL_EXPR"
.LASF573:
	.string	"BUILT_IN_SQRTF"
.LASF1682:
	.string	"divisor"
.LASF1061:
	.string	"CODE_FOR_rep_movsi_rex64"
.LASF576:
	.string	"BUILT_IN_SQRTL"
.LASF1676:
	.string	"realr"
.LASF1219:
	.string	"CODE_FOR_mulv2sf3"
.LASF319:
	.string	"REG_DEP_OUTPUT"
.LASF950:
	.string	"CODE_FOR_cmpqi_ext_3_insn_rex64"
.LASF80:
	.string	"DImode"
.LASF1638:
	.string	"LTI_fixunsdfsi"
.LASF488:
	.string	"UNLT_EXPR"
.LASF1706:
	.string	"mode0"
.LASF1707:
	.string	"mode1"
.LASF41:
	.string	"FP_TOP_REG"
.LASF1382:
	.string	"CODE_FOR_rotrdi3"
.LASF262:
	.string	"VEC_MERGE"
.LASF261:
	.string	"CALL_PLACEHOLDER"
.LASF1765:
	.string	"expand_abs"
.LASF870:
	.string	"TI_UV16QI_TYPE"
.LASF1754:
	.string	"direct_optab"
.LASF1779:
	.string	"emit_clr_insn"
.LASF27:
	.string	"sizetype"
.LASF1084:
	.string	"CODE_FOR_pro_epilogue_adjust_stack_rex64"
.LASF594:
	.string	"BUILT_IN_PUTCHAR"
.LASF1766:
	.string	"result_unsignedp"
.LASF1847:
	.string	"init_integral_libfuncs"
.LASF722:
	.string	"arg_offset_rtx"
.LASF881:
	.string	"TI_MAX"
.LASF1752:
	.string	"uoptab"
.LASF121:
	.string	"V4SFmode"
.LASF1196:
	.string	"CODE_FOR_ashlv4hi3"
.LASF161:
	.string	"DEFINE_SPLIT"
.LASF185:
	.string	"PARALLEL"
.LASF1109:
	.string	"CODE_FOR_sse_movhps"
.LASF898:
	.string	"SSIZETYPE"
.LASF43:
	.string	"FLOAT_REGS"
.LASF1774:
	.string	"prev"
.LASF333:
	.string	"REG_ALWAYS_RETURN"
.LASF1612:
	.string	"LTI_floatdisf"
.LASF224:
	.string	"ROTATERT"
.LASF190:
	.string	"ADDR_VEC"
.LASF0:
	.string	"code"
.LASF1120:
	.string	"CODE_FOR_vmmulv4sf3"
.LASF420:
	.string	"FIELD_DECL"
.LASF1331:
	.string	"CODE_FOR_testsi_ccno_1"
.LASF382:
	.string	"tree_code"
.LASF480:
	.string	"LT_EXPR"
.LASF308:
	.string	"REG_EQUAL"
.LASF270:
	.string	"SS_TRUNCATE"
.LASF1454:
	.string	"CODE_FOR_strsetdi_rex64"
.LASF106:
	.string	"V2QImode"
.LASF721:
	.string	"outgoing_args_size"
.LASF1598:
	.string	"LTI_nexf2"
.LASF1326:
	.string	"CODE_FOR_divdf3"
.LASF1000:
	.string	"CODE_FOR_divmodhi4"
.LASF1621:
	.string	"LTI_floatditf"
.LASF12:
	.string	"rtvec_def"
.LASF604:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF852:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF1299:
	.string	"CODE_FOR_subsi3"
.LASF708:
	.string	"context"
.LASF751:
	.string	"x_var_temp_slot_level"
.LASF337:
	.string	"NOTE_INSN_DELETED"
.LASF951:
	.string	"CODE_FOR_x86_fnstsw_1"
.LASF1076:
	.string	"CODE_FOR_cmpstrqi_nz_1"
.LASF275:
	.string	"min_after_vec"
.LASF228:
	.string	"UMAX"
.LASF848:
	.string	"TI_BITSIZE_ONE"
.LASF780:
	.string	"profile"
.LASF949:
	.string	"CODE_FOR_cmpqi_ext_3_insn"
.LASF789:
	.string	"arg_pointer_save_area_init"
.LASF1188:
	.string	"CODE_FOR_smaxv4hi3"
.LASF1080:
	.string	"CODE_FOR_strlenqi_1"
.LASF666:
	.string	"ht_identifier"
.LASF779:
	.string	"instrument_entry_exit"
.LASF1839:
	.string	"first_mode"
.LASF1186:
	.string	"CODE_FOR_gtv2si3"
.LASF940:
	.string	"optab_methods"
.LASF1684:
	.string	"imag_t"
.LASF1142:
	.string	"CODE_FOR_smaxv4sf3"
.LASF1419:
	.string	"CODE_FOR_buneq"
.LASF151:
	.string	"MATCH_OPERAND"
.LASF1139:
	.string	"CODE_FOR_sse_ucomi"
.LASF248:
	.string	"FLOAT"
.LASF758:
	.string	"inl_last_parm_insn"
.LASF331:
	.string	"REG_NON_LOCAL_GOTO"
.LASF11:
	.string	"rtx_def"
.LASF1818:
	.string	"fltmode"
.LASF111:
	.string	"V4HImode"
.LASF1475:
	.string	"CODE_FOR_maxdf3"
.LASF765:
	.string	"epilogue_delay_list"
.LASF1377:
	.string	"CODE_FOR_lshrqi3"
.LASF334:
	.string	"REG_VTABLE_REF"
.LASF551:
	.string	"BUILT_IN_FFS"
.LASF945:
	.string	"OPTAB_MUST_WIDEN"
.LASF1372:
	.string	"CODE_FOR_ashrhi3"
.LASF1167:
	.string	"CODE_FOR_smulv4hi3_highpart"
.LASF1799:
	.string	"cmode"
.LASF1783:
	.string	"pmode"
.LASF996:
	.string	"CODE_FOR_subsi3_carry"
.LASF1329:
	.string	"CODE_FOR_divmodsi4"
.LASF1444:
	.string	"CODE_FOR_movstrdi"
.LASF840:
	.string	"TI_UINTTI_TYPE"
.LASF284:
	.string	"offset"
.LASF1639:
	.string	"LTI_fixunsdfdi"
.LASF1666:
	.string	"note"
.LASF347:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF883:
	.string	"itk_char"
.LASF274:
	.string	"base_after_vec"
.LASF1892:
	.string	"optabs.c"
.LASF215:
	.string	"PLUS"
.LASF928:
	.string	"x_stack_pointer_delta"
.LASF1275:
	.string	"CODE_FOR_fix_trunctfdi2"
.LASF1421:
	.string	"CODE_FOR_bungt"
.LASF1527:
	.string	"OTI_movstrict"
.LASF1618:
	.string	"LTI_floatdixf"
.LASF77:
	.string	"QImode"
.LASF684:
	.string	"fragment_chain"
.LASF1143:
	.string	"CODE_FOR_vmsmaxv4sf3"
.LASF629:
	.string	"chain"
.LASF624:
	.string	"BUILT_IN_VA_END"
.LASF851:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF1155:
	.string	"CODE_FOR_ssaddv8qi3"
.LASF1021:
	.string	"CODE_FOR_jump"
.LASF1450:
	.string	"CODE_FOR_strmovqi"
.LASF156:
	.string	"MATCH_OP_DUP"
.LASF528:
	.string	"SWITCH_EXPR"
.LASF892:
	.string	"itk_long_long"
.LASF753:
	.string	"fixup_var_refs_queue"
.LASF380:
	.string	"LCT_ALWAYS_RETURN"
.LASF931:
	.string	"x_forced_labels"
.LASF618:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1006:
	.string	"CODE_FOR_negsf2_ifs"
.LASF1337:
	.string	"CODE_FOR_andqi3"
.LASF84:
	.string	"PHImode"
.LASF1265:
	.string	"CODE_FOR_extendsfxf2"
.LASF99:
	.string	"TCmode"
.LASF68:
	.string	"signed char"
.LASF755:
	.string	"no_debugging_symbols"
.LASF816:
	.string	"uninlinable"
.LASF1417:
	.string	"CODE_FOR_bunordered"
.LASF390:
	.string	"REAL_TYPE"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF1355:
	.string	"CODE_FOR_abssf2"
.LASF1653:
	.string	"predicate"
.LASF97:
	.string	"DCmode"
.LASF942:
	.string	"OPTAB_LIB"
.LASF89:
	.string	"TQFmode"
.LASF145:
	.string	"MAX_MODE_CLASS"
.LASF1287:
	.string	"CODE_FOR_floatdisf2"
.LASF1016:
	.string	"CODE_FOR_ashrdi3_1"
.LASF60:
	.string	"sse_regno"
.LASF676:
	.string	"handler_block_flag"
.LASF593:
	.string	"BUILT_IN_PREFETCH"
.LASF643:
	.string	"protected_flag"
.LASF827:
	.string	"pointer_alias_set"
.LASF1494:
	.string	"handlers"
.LASF4:
	.string	"unchanging"
.LASF501:
	.string	"SAVE_EXPR"
.LASF279:
	.string	"offset_unsigned"
.LASF1313:
	.string	"CODE_FOR_umulsidi3"
.LASF837:
	.string	"TI_UINTHI_TYPE"
.LASF1473:
	.string	"CODE_FOR_mindf3"
.LASF1895:
	.string	"init_traps"
.LASF774:
	.string	"has_nonlocal_label"
.LASF1208:
	.string	"CODE_FOR_emms"
.LASF628:
	.string	"tree_common"
.LASF429:
	.string	"CONSTRUCTOR"
.LASF849:
	.string	"TI_BITSIZE_UNIT"
.LASF1816:
	.string	"can_fix_p"
.LASF1546:
	.string	"rtxfun"
.LASF307:
	.string	"REG_EQUIV"
.LASF1153:
	.string	"CODE_FOR_addv4hi3"
.LASF535:
	.string	"BUILT_IN_FABS"
.LASF1798:
	.string	"emit_conditional_move"
.LASF1389:
	.string	"CODE_FOR_seq"
.LASF1392:
	.string	"CODE_FOR_sgtu"
.LASF457:
	.string	"FIX_FLOOR_EXPR"
.LASF335:
	.string	"insn_note"
.LASF1017:
	.string	"CODE_FOR_x86_shrd_1"
.LASF1271:
	.string	"CODE_FOR_trunctfsf2"
.LASF1115:
	.string	"CODE_FOR_addv4sf3"
.LASF1032:
	.string	"CODE_FOR_leave"
.LASF967:
	.string	"CODE_FOR_extendhisi2"
.LASF322:
	.string	"REG_NOALIAS"
.LASF1102:
	.string	"CODE_FOR_mmx_pmovmskb"
.LASF1199:
	.string	"CODE_FOR_mmx_packsswb"
.LASF1128:
	.string	"CODE_FOR_vmsqrtv4sf2"
.LASF992:
	.string	"CODE_FOR_addqi3_cc"
.LASF365:
	.string	"GR_ARG_POINTER"
.LASF1463:
	.string	"CODE_FOR_strlensi"
.LASF1422:
	.string	"CODE_FOR_bunle"
.LASF1585:
	.string	"LTI_gtsf2"
.LASF1768:
	.string	"extended"
.LASF400:
	.string	"FILE_TYPE"
.LASF1423:
	.string	"CODE_FOR_bunlt"
.LASF149:
	.string	"EXPR_LIST"
.LASF227:
	.string	"UMIN"
.LASF1323:
	.string	"CODE_FOR_mulsf3"
.LASF1778:
	.string	"final_dest"
.LASF580:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF1596:
	.string	"LTI_unorddf2"
.LASF178:
	.string	"INSN"
.LASF524:
	.string	"LOOP_EXPR"
.LASF1855:
	.string	"target_flags"
.LASF1395:
	.string	"CODE_FOR_sge"
.LASF961:
	.string	"CODE_FOR_zero_extendsidi2_rex64"
.LASF1470:
	.string	"CODE_FOR_movxfcc"
.LASF1391:
	.string	"CODE_FOR_sgt"
.LASF1862:
	.string	"mode_wider_mode"
.LASF448:
	.string	"ROUND_DIV_EXPR"
.LASF1260:
	.string	"CODE_FOR_zero_extendqihi2"
.LASF815:
	.string	"non_addressable"
.LASF1856:
	.string	"ix86_branch_cost"
.LASF1264:
	.string	"CODE_FOR_extendsfdf2"
.LASF172:
	.string	"DEFINE_ATTR"
.LASF679:
	.string	"vars"
.LASF1062:
	.string	"CODE_FOR_rep_movqi"
.LASF1137:
	.string	"CODE_FOR_vmmaskncmpv4sf3"
.LASF1760:
	.string	"cop1"
.LASF71:
	.string	"long long unsigned int"
.LASF1834:
	.string	"new_optab"
.LASF1634:
	.string	"LTI_fixtfti"
.LASF1107:
	.string	"CODE_FOR_sse_movhlps"
.LASF1376:
	.string	"CODE_FOR_lshrhi3"
.LASF1689:
	.string	"this_neg_optab"
.LASF1354:
	.string	"CODE_FOR_negtf2"
.LASF438:
	.string	"WITH_CLEANUP_EXPR"
.LASF203:
	.string	"VALUE"
.LASF277:
	.string	"min_after_base"
.LASF634:
	.string	"readonly_flag"
.LASF906:
	.string	"promoted_mode"
.LASF1704:
	.string	"__FUNCTION__"
.LASF141:
	.string	"MODE_COMPLEX_INT"
.LASF234:
	.string	"POST_MODIFY"
.LASF1163:
	.string	"CODE_FOR_sssubv4hi3"
.LASF581:
	.string	"BUILT_IN_NEXT_ARG"
.LASF264:
	.string	"VEC_CONCAT"
.LASF1281:
	.string	"CODE_FOR_fix_truncsfsi2"
.LASF73:
	.string	"reg_class"
.LASF1458:
	.string	"CODE_FOR_strsethi_rex64"
.LASF1385:
	.string	"CODE_FOR_rotrqi3"
.LASF1060:
	.string	"CODE_FOR_rep_movsi"
.LASF988:
	.string	"CODE_FOR_floatsixf2"
.LASF907:
	.string	"unsignedp"
.LASF664:
	.string	"tree_vector"
.LASF678:
	.string	"block_num"
.LASF954:
	.string	"CODE_FOR_movsi_insv_1"
.LASF671:
	.string	"tree_vec"
.LASF813:
	.string	"built_in_class"
.LASF249:
	.string	"UNSIGNED_FLOAT"
.LASF1742:
	.string	"op1_high"
.LASF1513:
	.string	"OTI_ftrunc"
.LASF1015:
	.string	"CODE_FOR_ashrdi3_63_rex64"
.LASF94:
	.string	"QCmode"
.LASF116:
	.string	"V8SImode"
.LASF1807:
	.string	"gen_sub3_insn"
.LASF562:
	.string	"BUILT_IN_STRNCMP"
.LASF1261:
	.string	"CODE_FOR_zero_extendqisi2"
.LASF188:
	.string	"UNSPEC"
.LASF367:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF1004:
	.string	"CODE_FOR_andqi_ext_0"
.LASF458:
	.string	"FIX_ROUND_EXPR"
.LASF353:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF1100:
	.string	"CODE_FOR_sse_movups"
.LASF838:
	.string	"TI_UINTSI_TYPE"
.LASF232:
	.string	"POST_INC"
.LASF1456:
	.string	"CODE_FOR_strsetsi_rex64"
.LASF1698:
	.string	"next_methods"
.LASF212:
	.string	"IF_THEN_ELSE"
.LASF28:
	.string	"NO_REGS"
.LASF394:
	.string	"BOOLEAN_TYPE"
.LASF538:
	.string	"BUILT_IN_LLABS"
.LASF1033:
	.string	"CODE_FOR_leave_rex64"
.LASF1348:
	.string	"CODE_FOR_negsi2"
.LASF926:
	.string	"x_pending_stack_adjust"
.LASF1302:
	.string	"CODE_FOR_subxf3"
.LASF168:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF1397:
	.string	"CODE_FOR_sle"
.LASF219:
	.string	"UMOD"
.LASF7:
	.string	"used"
.LASF1393:
	.string	"CODE_FOR_slt"
.LASF937:
	.string	"temp_slot"
.LASF1813:
	.string	"from_mode"
.LASF1530:
	.string	"OTI_abs"
.LASF1295:
	.string	"CODE_FOR_addtf3"
.LASF32:
	.string	"BREG"
.LASF914:
	.string	"x_reg_rtx_no"
.LASF1437:
	.string	"CODE_FOR_epilogue"
.LASF45:
	.string	"MMX_REGS"
.LASF1508:
	.string	"OTI_sdivmod"
.LASF584:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF526:
	.string	"EXIT_BLOCK_EXPR"
.LASF1886:
	.string	"setcc_gen_code"
.LASF1232:
	.string	"CODE_FOR_pfrsqrtv2sf2"
.LASF1504:
	.string	"OTI_smul_widen"
.LASF1466:
	.string	"CODE_FOR_movsicc"
.LASF459:
	.string	"FLOAT_EXPR"
.LASF377:
	.string	"LCT_PURE_MAKE_BLOCK"
.LASF70:
	.string	"char"
.LASF610:
	.string	"BUILT_IN_ISLESS"
.LASF1659:
	.string	"genfun"
.LASF1390:
	.string	"CODE_FOR_sne"
.LASF1835:
	.string	"init_optab"
.LASF1790:
	.string	"emit_cmp_and_jump_insn_1"
.LASF1496:
	.string	"OTI_add"
.LASF504:
	.string	"ADDR_EXPR"
.LASF1125:
	.string	"CODE_FOR_rsqrtv4sf2"
.LASF1229:
	.string	"CODE_FOR_pfrcpv2sf2"
.LASF1576:
	.string	"LTI_eqhf2"
.LASF1335:
	.string	"CODE_FOR_andsi3"
.LASF1288:
	.string	"CODE_FOR_floatsidf2"
.LASF1601:
	.string	"LTI_ltxf2"
.LASF1498:
	.string	"OTI_sub"
.LASF218:
	.string	"UDIV"
.LASF505:
	.string	"REFERENCE_EXPR"
.LASF1104:
	.string	"CODE_FOR_mmx_maskmovq_rex"
.LASF603:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF26:
	.string	"block"
.LASF1649:
	.string	"LTI_MAX"
.LASF1555:
	.string	"LTI_extenddfxf2"
.LASF278:
	.string	"max_after_base"
.LASF485:
	.string	"NE_EXPR"
.LASF1386:
	.string	"CODE_FOR_extv"
.LASF998:
	.string	"CODE_FOR_divqi3"
.LASF1359:
	.string	"CODE_FOR_one_cmpldi2"
.LASF968:
	.string	"CODE_FOR_extendqihi2"
.LASF101:
	.string	"CHImode"
.LASF422:
	.string	"COMPONENT_REF"
.LASF389:
	.string	"INTEGER_TYPE"
.LASF787:
	.string	"uses_pic_offset_table"
.LASF548:
	.string	"BUILT_IN_CIMAGL"
.LASF376:
	.string	"LCT_CONST_MAKE_BLOCK"
.LASF1099:
	.string	"CODE_FOR_sse_movaps"
.LASF515:
	.string	"POSTINCREMENT_EXPR"
.LASF291:
	.string	"rtint"
.LASF1124:
	.string	"CODE_FOR_vmrcpv4sf2"
.LASF440:
	.string	"PLACEHOLDER_EXPR"
.LASF1746:
	.string	"op1_xhigh"
.LASF1044:
	.string	"CODE_FOR_sinsf2"
.LASF119:
	.string	"V2SFmode"
.LASF1863:
	.string	"word_mode"
.LASF1040:
	.string	"CODE_FOR_sqrtdf2_i387"
.LASF843:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1304:
	.string	"CODE_FOR_subdf3"
.LASF1225:
	.string	"CODE_FOR_pfpnacc"
.LASF303:
	.string	"rtunion"
.LASF508:
	.string	"COMPLEX_EXPR"
.LASF1540:
	.string	"OTI_strlen"
.LASF300:
	.string	"cselib_val_struct"
.LASF1672:
	.string	"real0"
.LASF52:
	.string	"ALL_REGS"
.LASF1800:
	.string	"subtarget"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF1195:
	.string	"CODE_FOR_mmx_lshrdi3"
.LASF1583:
	.string	"LTI_eqsf2"
.LASF1384:
	.string	"CODE_FOR_rotrhi3"
.LASF1609:
	.string	"LTI_letf2"
.LASF1852:
	.string	"gen_cond_trap"
.LASF1708:
	.string	"xop0"
.LASF1709:
	.string	"xop1"
.LASF368:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF858:
	.string	"TI_PTR_TYPE"
.LASF1418:
	.string	"CODE_FOR_bordered"
.LASF571:
	.string	"BUILT_IN_SIN"
.LASF276:
	.string	"max_after_vec"
.LASF1755:
	.string	"wide_soptab"
.LASF979:
	.string	"CODE_FOR_fix_truncdfsi_sse"
.LASF1427:
	.string	"CODE_FOR_doloop_end"
.LASF1597:
	.string	"LTI_eqxf2"
.LASF876:
	.string	"TI_V4HI_TYPE"
.LASF500:
	.string	"VIEW_CONVERT_EXPR"
.LASF969:
	.string	"CODE_FOR_extendqisi2"
.LASF1095:
	.string	"CODE_FOR_movv4hi_internal"
.LASF55:
	.string	"words"
.LASF553:
	.string	"BUILT_IN_RINDEX"
.LASF752:
	.string	"x_target_temp_slot_level"
.LASF1:
	.string	"mode"
.LASF1013:
	.string	"CODE_FOR_ashldi3_1"
.LASF1110:
	.string	"CODE_FOR_sse_movlps"
.LASF1701:
	.string	"commutative_op"
.LASF699:
	.string	"pointer_to"
.LASF1594:
	.string	"LTI_ltdf2"
.LASF1656:
	.string	"eliminable"
.LASF301:
	.string	"bitmap_head_def"
.LASF1298:
	.string	"CODE_FOR_subdi3"
.LASF829:
	.string	"tree_index"
.LASF1052:
	.string	"CODE_FOR_strmovdi_rex_1"
.LASF169:
	.string	"DEFINE_COND_EXEC"
.LASF663:
	.string	"imag"
.LASF1560:
	.string	"LTI_truncxfdf2"
.LASF1177:
	.string	"CODE_FOR_mmx_psadbw"
.LASF1697:
	.string	"expand_binop"
.LASF107:
	.string	"V2HImode"
.LASF363:
	.string	"GR_FRAME_POINTER"
.LASF915:
	.string	"x_first_label_num"
.LASF1660:
	.string	"operand"
.LASF1884:
	.string	"code_to_optab"
.LASF198:
	.string	"CONST_INT"
.LASF510:
	.string	"REALPART_EXPR"
.LASF90:
	.string	"SFmode"
.LASF177:
	.string	"ATTR_FLAG"
.LASF1833:
	.string	"have_insn_for"
.LASF317:
	.string	"REG_LABEL"
.LASF1420:
	.string	"CODE_FOR_bunge"
.LASF1383:
	.string	"CODE_FOR_rotrsi3"
.LASF18:
	.string	"real_cst"
.LASF1883:
	.string	"reload_out_optab"
.LASF1149:
	.string	"CODE_FOR_cvtsi2ss"
.LASF1262:
	.string	"CODE_FOR_zero_extendsidi2"
.LASF1716:
	.string	"into_input"
.LASF980:
	.string	"CODE_FOR_fix_trunchi_nomemory"
.LASF1234:
	.string	"CODE_FOR_pmulhrwv4hi3"
.LASF1543:
	.string	"OTI_cstore"
.LASF1876:
	.string	"cfun"
.LASF245:
	.string	"TRUNCATE"
.LASF10:
	.string	"rtvec"
.LASF821:
	.string	"assembler_name"
.LASF569:
	.string	"BUILT_IN_STRRCHR"
.LASF718:
	.string	"pops_args"
.LASF559:
	.string	"BUILT_IN_STRCPY"
.LASF705:
	.string	"next_variant"
.LASF826:
	.string	"vindex"
.LASF1471:
	.string	"CODE_FOR_movtfcc"
.LASF862:
	.string	"TI_VOID_LIST_NODE"
.LASF1657:
	.string	"insn_data"
.LASF897:
	.string	"SIZETYPE"
.LASF131:
	.string	"CCZmode"
.LASF338:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1190:
	.string	"CODE_FOR_sminv4hi3"
.LASF379:
	.string	"LCT_THROW"
.LASF891:
	.string	"itk_unsigned_long"
.LASF736:
	.string	"x_stack_slot_list"
.LASF936:
	.string	"initial_value_struct"
.LASF1144:
	.string	"CODE_FOR_sminv4sf3"
.LASF1429:
	.string	"CODE_FOR_call"
.LASF1387:
	.string	"CODE_FOR_extzv"
.LASF902:
	.string	"UBITSIZETYPE"
.LASF712:
	.string	"off_align"
.LASF987:
	.string	"CODE_FOR_floathitf2"
.LASF1216:
	.string	"CODE_FOR_eqv2sf3"
.LASF1480:
	.string	"CODE_FOR_conditional_trap"
.LASF747:
	.string	"x_max_parm_reg"
.LASF825:
	.string	"inlined_fns"
.LASF973:
	.string	"CODE_FOR_fix_truncdi_memory"
.LASF689:
	.string	"attributes"
.LASF1086:
	.string	"CODE_FOR_sse_movsfcc_eq"
.LASF1132:
	.string	"CODE_FOR_sse_xorti3"
.LASF658:
	.string	"tree_string"
.LASF1327:
	.string	"CODE_FOR_divsf3"
.LASF602:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1794:
	.string	"emit_cmp_and_jump_insns"
.LASF1514:
	.string	"OTI_and"
.LASF1430:
	.string	"CODE_FOR_call_exp"
.LASF1283:
	.string	"CODE_FOR_fix_trunctfhi2"
.LASF23:
	.string	"decl"
.LASF793:
	.string	"external_flag"
.LASF78:
	.string	"HImode"
.LASF790:
	.string	"tree_decl"
.LASF513:
	.string	"PREINCREMENT_EXPR"
.LASF1467:
	.string	"CODE_FOR_movhicc"
.LASF1365:
	.string	"CODE_FOR_x86_shift_adj_2"
.LASF1050:
	.string	"CODE_FOR_costf2"
.LASF183:
	.string	"NOTE"
.LASF263:
	.string	"VEC_SELECT"
.LASF34:
	.string	"DIREG"
.LASF1523:
	.string	"OTI_smax"
.LASF703:
	.string	"minval"
.LASF994:
	.string	"CODE_FOR_addqi_ext_1"
.LASF1156:
	.string	"CODE_FOR_ssaddv4hi3"
.LASF1145:
	.string	"CODE_FOR_vmsminv4sf3"
.LASF1184:
	.string	"CODE_FOR_gtv8qi3"
.LASF841:
	.string	"TI_INTEGER_ZERO"
.LASF1625:
	.string	"LTI_fixsfti"
.LASF1210:
	.string	"CODE_FOR_stmxcsr"
.LASF659:
	.string	"length"
.LASF723:
	.string	"args_info"
.LASF873:
	.string	"TI_V4SI_TYPE"
.LASF1495:
	.string	"optab_index"
.LASF609:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF1321:
	.string	"CODE_FOR_multf3"
.LASF783:
	.string	"stdarg"
.LASF1849:
	.string	"init_one_libfunc"
.LASF1850:
	.string	"mark_optab"
.LASF244:
	.string	"ZERO_EXTEND"
.LASF155:
	.string	"MATCH_PARALLEL"
.LASF399:
	.string	"METHOD_TYPE"
.LASF1474:
	.string	"CODE_FOR_maxsf3"
.LASF1745:
	.string	"op0_xhigh"
.LASF1881:
	.string	"floattab"
.LASF164:
	.string	"DEFINE_COMBINE"
.LASF631:
	.string	"constant_flag"
.LASF1731:
	.string	"nwords"
.LASF585:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF388:
	.string	"VOID_TYPE"
.LASF63:
	.string	"unsigned int"
.LASF1888:
	.string	"movstr_optab"
.LASF1223:
	.string	"CODE_FOR_pfacc"
.LASF344:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF925:
	.string	"expr_status"
.LASF1183:
	.string	"CODE_FOR_eqv2si3"
.LASF1025:
	.string	"CODE_FOR_return_pop_internal"
.LASF1549:
	.string	"ccp_cmov"
.LASF903:
	.string	"TYPE_KIND_LAST"
.LASF530:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF533:
	.string	"BUILT_IN_ABS"
.LASF1535:
	.string	"OTI_sin"
.LASF281:
	.string	"addr_diff_vec_flags"
.LASF352:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
