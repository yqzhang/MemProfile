	.file	"recog.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 recog.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	volatile_ok,4,4
	.comm	recog_data,1008,32
	.comm	recog_op_alt,28800,32
	.comm	which_alternative,4,4
	.comm	reload_completed,4,4
	.globl	init_recog_no_volatile
	.type	init_recog_no_volatile, @function
init_recog_no_volatile:
.LFB2:
	.file 1 "recog.c"
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 96 0
	movl	$0, volatile_ok(%rip)	#, volatile_ok
	.loc 1 97 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_recog_no_volatile, .-init_recog_no_volatile
	.globl	init_recog
	.type	init_recog, @function
init_recog:
.LFB3:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 102 0
	movl	$1, volatile_ok(%rip)	#, volatile_ok
	.loc 1 103 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	init_recog, .-init_recog
	.globl	recog_memoized_1
	.type	recog_memoized_1, @function
recog_memoized_1:
.LFB4:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 118 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movl	40(%rax), %eax	# insn_1(D)->fld[4].rtint, D.15873
	testl	%eax, %eax	# D.15873
	jns	.L4	#,
	.loc 1 119 0
	movq	-8(%rbp), %rax	# insn, tmp65
	movq	32(%rax), %rax	# insn_1(D)->fld[3].rtx, D.15874
	movq	-8(%rbp), %rcx	# insn, tmp66
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.15874,
	call	recog	#
	movq	-8(%rbp), %rdx	# insn, tmp67
	movl	%eax, 40(%rdx)	# D.15873, insn_1(D)->fld[4].rtint
.L4:
	.loc 1 120 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movl	40(%rax), %eax	# insn_1(D)->fld[4].rtint, D.15873
	.loc 1 121 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	recog_memoized_1, .-recog_memoized_1
	.globl	check_asm_operands
	.type	check_asm_operands, @function
check_asm_operands:
.LFB5:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	.loc 1 136 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.0
	testl	%eax, %eax	# reload_completed.0
	je	.L7	#,
	.loc 1 139 0
	movq	-56(%rbp), %rax	# x, tmp91
	movq	%rax, %rdi	# tmp91,
	call	make_insn_raw	#
	movq	%rax, %rdi	# D.15876,
	call	extract_insn	#
	.loc 1 140 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	.loc 1 141 0
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.1
	notl	%eax	# tmp92
	shrl	$31, %eax	#, tmp93
	movzbl	%al, %eax	# D.15877, D.15875
	jmp	.L8	#
.L7:
	.loc 1 144 0
	movq	-56(%rbp), %rax	# x, tmp94
	movq	%rax, %rdi	# tmp94,
	call	asm_noperands	#
	movl	%eax, -44(%rbp)	# tmp95, noperands
	.loc 1 145 0
	cmpl	$0, -44(%rbp)	#, noperands
	jns	.L9	#,
	.loc 1 146 0
	movl	$0, %eax	#, D.15875
	jmp	.L8	#
.L9:
	.loc 1 147 0
	cmpl	$0, -44(%rbp)	#, noperands
	jne	.L10	#,
	.loc 1 148 0
	movl	$1, %eax	#, D.15875
	jmp	.L8	#
.L10:
	.loc 1 150 0
	movl	-44(%rbp), %eax	# noperands, tmp96
	cltq
	salq	$3, %rax	#, D.15878
	leaq	15(%rax), %rdx	#, tmp97
	movl	$16, %eax	#, tmp138
	subq	$1, %rax	#, tmp98
	addq	%rdx, %rax	# tmp97, tmp99
	movl	$16, %ebx	#, tmp139
	movl	$0, %edx	#, tmp102
	divq	%rbx	# tmp139
	imulq	$16, %rax, %rax	#, tmp101, tmp103
	subq	%rax, %rsp	# tmp103,
	movq	%rsp, %rax	#, tmp104
	addq	$15, %rax	#, tmp105
	shrq	$4, %rax	#, tmp106
	salq	$4, %rax	#, tmp107
	movq	%rax, -32(%rbp)	# tmp107, operands
	.loc 1 151 0
	movl	-44(%rbp), %eax	# noperands, tmp108
	cltq
	salq	$3, %rax	#, D.15878
	leaq	15(%rax), %rdx	#, tmp109
	movl	$16, %eax	#, tmp140
	subq	$1, %rax	#, tmp110
	addq	%rdx, %rax	# tmp109, tmp111
	movl	$16, %ecx	#, tmp141
	movl	$0, %edx	#, tmp114
	divq	%rcx	# tmp141
	imulq	$16, %rax, %rax	#, tmp113, tmp115
	subq	%rax, %rsp	# tmp115,
	movq	%rsp, %rax	#, tmp116
	addq	$15, %rax	#, tmp117
	shrq	$4, %rax	#, tmp118
	salq	$4, %rax	#, tmp119
	movq	%rax, -24(%rbp)	# tmp119, constraints
	.loc 1 153 0
	movq	-24(%rbp), %rdx	# constraints, tmp120
	movq	-32(%rbp), %rsi	# operands, tmp121
	movq	-56(%rbp), %rax	# x, tmp122
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp120,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp122,
	call	decode_asm_operands	#
	.loc 1 155 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L11	#
.L15:
.LBB2:
	.loc 1 157 0
	movl	-48(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15878
	movq	-24(%rbp), %rax	# constraints, tmp124
	addq	%rdx, %rax	# D.15878, D.15879
	movq	(%rax), %rax	# *_23, tmp125
	movq	%rax, -40(%rbp)	# tmp125, c
	.loc 1 158 0
	movq	-40(%rbp), %rax	# c, tmp126
	movzbl	(%rax), %eax	# *c_24, D.15880
	cmpb	$37, %al	#, D.15880
	jne	.L12	#,
	.loc 1 159 0
	addq	$1, -40(%rbp)	#, c
.L12:
	.loc 1 160 0
	movq	-40(%rbp), %rax	# c, tmp127
	movzbl	(%rax), %eax	# *c_2, D.15880
	movzbl	%al, %eax	# D.15881, D.15875
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.15882
	movzwl	%ax, %eax	# D.15882, D.15875
	andl	$4, %eax	#, D.15875
	testl	%eax, %eax	# D.15875
	je	.L13	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# c, tmp129
	addq	$1, %rax	#, D.15883
	movzbl	(%rax), %eax	# *_33, D.15880
	testb	%al, %al	# D.15880
	jne	.L13	#,
	.loc 1 161 0 is_stmt 1
	movq	-40(%rbp), %rax	# c, tmp130
	movzbl	(%rax), %eax	# *c_2, D.15880
	movsbq	%al, %rax	# D.15880, D.15878
	salq	$3, %rax	#, D.15878
	leaq	-384(%rax), %rdx	#, D.15884
	movq	-24(%rbp), %rax	# constraints, tmp131
	addq	%rdx, %rax	# D.15884, D.15879
	movq	(%rax), %rax	# *_39, tmp132
	movq	%rax, -40(%rbp)	# tmp132, c
.L13:
	.loc 1 163 0
	movl	-48(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15878
	movq	-32(%rbp), %rax	# operands, tmp134
	addq	%rdx, %rax	# D.15878, D.15885
	movq	(%rax), %rax	# *_43, D.15876
	movq	-40(%rbp), %rdx	# c, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.15876,
	call	asm_operand_ok	#
	testl	%eax, %eax	# D.15875
	jne	.L14	#,
	.loc 1 164 0
	movl	$0, %eax	#, D.15875
	jmp	.L8	#
.L14:
.LBE2:
	.loc 1 155 0
	addl	$1, -48(%rbp)	#, i
.L11:
	.loc 1 155 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp136
	cmpl	-44(%rbp), %eax	# noperands, tmp136
	jl	.L15	#,
	.loc 1 167 0 is_stmt 1
	movl	$1, %eax	#, D.15875
.L8:
	.loc 1 168 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	check_asm_operands, .-check_asm_operands
	.local	changes
	.comm	changes,8,8
	.local	changes_allocated
	.comm	changes_allocated,4,4
	.local	num_changes
	.comm	num_changes,4,4
	.section	.rodata
.LC0:
	.string	"recog.c"
	.text
	.globl	validate_change
	.type	validate_change, @function
validate_change:
.LFB6:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# object, object
	movq	%rsi, -32(%rbp)	# loc, loc
	movq	%rdx, -40(%rbp)	# new, new
	movl	%ecx, -44(%rbp)	# in_group, in_group
	.loc 1 210 0
	movq	-32(%rbp), %rax	# loc, tmp97
	movq	(%rax), %rax	# *loc_2(D), tmp98
	movq	%rax, -8(%rbp)	# tmp98, old
	.loc 1 212 0
	movq	-8(%rbp), %rax	# old, tmp99
	cmpq	-40(%rbp), %rax	# new, tmp99
	je	.L17	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# new, tmp100
	movq	-8(%rbp), %rax	# old, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15887
	je	.L18	#,
.L17:
	.loc 1 213 0 is_stmt 1
	movl	$1, %eax	#, D.15887
	jmp	.L19	#
.L18:
	.loc 1 215 0
	cmpl	$0, -44(%rbp)	#, in_group
	jne	.L20	#,
	.loc 1 215 0 is_stmt 0 discriminator 1
	movl	num_changes(%rip), %eax	# num_changes, num_changes.2
	testl	%eax, %eax	# num_changes.2
	je	.L20	#,
	.loc 1 216 0 is_stmt 1
	movl	$__FUNCTION__.11536, %edx	#,
	movl	$216, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L20:
	.loc 1 218 0
	movq	-32(%rbp), %rax	# loc, tmp102
	movq	-40(%rbp), %rdx	# new, tmp103
	movq	%rdx, (%rax)	# tmp103, *loc_2(D)
	.loc 1 221 0
	movl	num_changes(%rip), %edx	# num_changes, num_changes.3
	movl	changes_allocated(%rip), %eax	# changes_allocated, changes_allocated.4
	cmpl	%eax, %edx	# changes_allocated.4, num_changes.3
	jl	.L21	#,
	.loc 1 223 0
	movl	changes_allocated(%rip), %eax	# changes_allocated, changes_allocated.5
	testl	%eax, %eax	# changes_allocated.5
	jne	.L22	#,
	.loc 1 226 0
	movl	$150, changes_allocated(%rip)	#, changes_allocated
	jmp	.L23	#
.L22:
	.loc 1 228 0
	movl	changes_allocated(%rip), %eax	# changes_allocated, changes_allocated.6
	addl	%eax, %eax	# changes_allocated.7
	movl	%eax, changes_allocated(%rip)	# changes_allocated.7, changes_allocated
.L23:
	.loc 1 231 0
	movl	changes_allocated(%rip), %eax	# changes_allocated, changes_allocated.8
	cltq
	salq	$5, %rax	#, D.15888
	movq	%rax, %rdx	# D.15888, D.15888
	movq	changes(%rip), %rax	# changes, changes.9
	movq	%rdx, %rsi	# D.15888,
	movq	%rax, %rdi	# changes.9,
	call	xrealloc	#
	.loc 1 230 0
	movq	%rax, changes(%rip)	# changes.10, changes
.L21:
	.loc 1 235 0
	movq	changes(%rip), %rax	# changes, changes.11
	movl	num_changes(%rip), %edx	# num_changes, num_changes.12
	movslq	%edx, %rdx	# num_changes.12, D.15888
	salq	$5, %rdx	#, D.15888
	addq	%rax, %rdx	# changes.11, D.15889
	movq	-24(%rbp), %rax	# object, tmp104
	movq	%rax, (%rdx)	# tmp104, _22->object
	.loc 1 236 0
	movq	changes(%rip), %rax	# changes, changes.13
	movl	num_changes(%rip), %edx	# num_changes, num_changes.14
	movslq	%edx, %rdx	# num_changes.14, D.15888
	salq	$5, %rdx	#, D.15888
	addq	%rax, %rdx	# changes.13, D.15889
	movq	-32(%rbp), %rax	# loc, tmp105
	movq	%rax, 16(%rdx)	# tmp105, _28->loc
	.loc 1 237 0
	movq	changes(%rip), %rax	# changes, changes.15
	movl	num_changes(%rip), %edx	# num_changes, num_changes.16
	movslq	%edx, %rdx	# num_changes.16, D.15888
	salq	$5, %rdx	#, D.15888
	addq	%rax, %rdx	# changes.15, D.15889
	movq	-8(%rbp), %rax	# old, tmp106
	movq	%rax, 24(%rdx)	# tmp106, _33->old
	.loc 1 239 0
	cmpq	$0, -24(%rbp)	#, object
	je	.L24	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# object, tmp107
	movzwl	(%rax), %eax	# object_23(D)->code, D.15890
	cmpw	$66, %ax	#, D.15890
	je	.L24	#,
	.loc 1 243 0 is_stmt 1
	movq	changes(%rip), %rax	# changes, changes.17
	movl	num_changes(%rip), %edx	# num_changes, num_changes.18
	movslq	%edx, %rdx	# num_changes.18, D.15888
	salq	$5, %rdx	#, D.15888
	addq	%rax, %rdx	# changes.17, D.15889
	movq	-24(%rbp), %rax	# object, tmp108
	movl	40(%rax), %eax	# object_23(D)->fld[4].rtint, D.15887
	movl	%eax, 8(%rdx)	# D.15887, _39->old_code
	.loc 1 244 0
	movq	-24(%rbp), %rax	# object, tmp109
	movl	$-1, 40(%rax)	#, object_23(D)->fld[4].rtint
.L24:
	.loc 1 247 0
	movl	num_changes(%rip), %eax	# num_changes, num_changes.19
	addl	$1, %eax	#, num_changes.20
	movl	%eax, num_changes(%rip)	# num_changes.20, num_changes
	.loc 1 252 0
	cmpl	$0, -44(%rbp)	#, in_group
	je	.L25	#,
	.loc 1 253 0
	movl	$1, %eax	#, D.15887
	jmp	.L19	#
.L25:
	.loc 1 255 0
	call	apply_change_group	#
.L19:
	.loc 1 256 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	validate_change, .-validate_change
	.globl	insn_invalid_p
	.type	insn_invalid_p, @function
insn_invalid_p:
.LFB7:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 265 0
	movq	-40(%rbp), %rax	# insn, tmp78
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, tmp79
	movq	%rax, -16(%rbp)	# tmp79, pat
	.loc 1 266 0
	movl	$0, -28(%rbp)	#, num_clobbers
	.loc 1 270 0
	movq	-16(%rbp), %rax	# pat, tmp80
	movzwl	(%rax), %eax	# pat_5->code, D.15893
	.loc 1 269 0
	cmpw	$47, %ax	#, D.15893
	jne	.L27	#,
	.loc 1 271 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.22
	testl	%eax, %eax	# reload_completed.22
	jne	.L27	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.23
	testl	%eax, %eax	# reload_in_progress.23
	jne	.L27	#,
	.loc 1 269 0 is_stmt 1
	leaq	-28(%rbp), %rax	#, iftmp.21
	jmp	.L28	#
.L27:
	.loc 1 269 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.21
.L28:
	.loc 1 269 0 discriminator 2
	movq	-40(%rbp), %rsi	# insn, tmp81
	movq	-16(%rbp), %rcx	# pat, tmp82
	movq	%rax, %rdx	# iftmp.21,
	movq	%rcx, %rdi	# tmp82,
	call	recog	#
	movl	%eax, -24(%rbp)	# tmp83, icode
	.loc 1 273 0 is_stmt 1 discriminator 2
	cmpl	$0, -24(%rbp)	#, icode
	jns	.L29	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.15894
	movq	%rax, %rdi	# D.15894,
	call	asm_noperands	#
	testl	%eax, %eax	# D.15892
	js	.L29	#,
	.loc 1 273 0 discriminator 3
	movl	$1, %eax	#, iftmp.24
	jmp	.L30	#
.L29:
	.loc 1 273 0 discriminator 2
	movl	$0, %eax	#, iftmp.24
.L30:
	.loc 1 273 0 discriminator 4
	movl	%eax, -20(%rbp)	# iftmp.24, is_asm
	.loc 1 278 0 is_stmt 1 discriminator 4
	cmpl	$0, -20(%rbp)	#, is_asm
	je	.L31	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.15894
	movq	%rax, %rdi	# D.15894,
	call	check_asm_operands	#
	testl	%eax, %eax	# D.15892
	je	.L32	#,
.L31:
	.loc 1 279 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, is_asm
	jne	.L33	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, icode
	jns	.L33	#,
.L32:
	.loc 1 280 0 is_stmt 1
	movl	$1, %eax	#, D.15892
	jmp	.L38	#
.L33:
	.loc 1 285 0
	movl	-28(%rbp), %eax	# num_clobbers, num_clobbers.25
	testl	%eax, %eax	# num_clobbers.25
	jle	.L35	#,
.LBB3:
	.loc 1 289 0
	movl	-24(%rbp), %eax	# icode, tmp86
	movl	%eax, %edi	# tmp86,
	call	added_clobbers_hard_reg_p	#
	testl	%eax, %eax	# D.15892
	je	.L36	#,
	.loc 1 290 0
	movl	$1, %eax	#, D.15892
	jmp	.L38	#
.L36:
	.loc 1 292 0
	movl	-28(%rbp), %eax	# num_clobbers, num_clobbers.26
	addl	$1, %eax	#, D.15892
	movl	%eax, %edi	# D.15892,
	call	rtvec_alloc	#
	movq	%rax, %rdx	# D.15895,
	movl	$0, %esi	#,
	movl	$39, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -8(%rbp)	# tmp87, newpat
	.loc 1 293 0
	movq	-8(%rbp), %rax	# newpat, tmp88
	movq	8(%rax), %rax	# newpat_25->fld[0].rtvec, D.15895
	movq	-16(%rbp), %rdx	# pat, tmp89
	movq	%rdx, 8(%rax)	# tmp89, _26->elem
	.loc 1 294 0
	movl	-24(%rbp), %edx	# icode, tmp90
	movq	-8(%rbp), %rax	# newpat, tmp91
	movl	%edx, %esi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	add_clobbers	#
	.loc 1 295 0
	movq	-8(%rbp), %rax	# newpat, tmp92
	movq	%rax, -16(%rbp)	# tmp92, pat
	movq	-40(%rbp), %rax	# insn, tmp93
	movq	-16(%rbp), %rdx	# pat, tmp94
	movq	%rdx, 32(%rax)	# tmp94, insn_4(D)->fld[3].rtx
.L35:
.LBE3:
	.loc 1 299 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.27
	testl	%eax, %eax	# reload_completed.27
	je	.L37	#,
	.loc 1 301 0
	movq	-40(%rbp), %rax	# insn, tmp95
	movq	%rax, %rdi	# tmp95,
	call	extract_insn	#
	.loc 1 303 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	testl	%eax, %eax	# D.15892
	jne	.L37	#,
	.loc 1 304 0
	movl	$1, %eax	#, D.15892
	jmp	.L38	#
.L37:
	.loc 1 307 0
	movq	-40(%rbp), %rax	# insn, tmp96
	movl	-24(%rbp), %edx	# icode, tmp97
	movl	%edx, 40(%rax)	# tmp97, insn_4(D)->fld[4].rtint
	.loc 1 308 0
	movl	$0, %eax	#, D.15892
.L38:
	.loc 1 309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	insn_invalid_p, .-insn_invalid_p
	.globl	apply_change_group
	.type	apply_change_group, @function
apply_change_group:
.LFB8:
	.loc 1 316 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 318 0
	movq	$0, -32(%rbp)	#, last_validated
	.loc 1 329 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L40	#
.L53:
.LBB4:
	.loc 1 331 0
	movq	changes(%rip), %rax	# changes, changes.28
	movl	-40(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, D.15897
	salq	$5, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15898
	movq	(%rax), %rax	# _13->object, tmp98
	movq	%rax, -16(%rbp)	# tmp98, object
	.loc 1 335 0
	cmpq	$0, -16(%rbp)	#, object
	je	.L41	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# object, tmp99
	cmpq	-32(%rbp), %rax	# last_validated, tmp99
	jne	.L42	#,
.L41:
	.loc 1 336 0 is_stmt 1
	jmp	.L43	#
.L42:
	.loc 1 338 0
	movq	-16(%rbp), %rax	# object, tmp100
	movzwl	(%rax), %eax	# object_14->code, D.15899
	cmpw	$66, %ax	#, D.15899
	jne	.L44	#,
	.loc 1 340 0
	movq	-16(%rbp), %rax	# object, tmp101
	movq	8(%rax), %rdx	# object_14->fld[0].rtx, D.15900
	movq	-16(%rbp), %rax	# object, tmp102
	movzbl	2(%rax), %eax	# object_14->mode, D.15901
	movzbl	%al, %eax	# D.15901, D.15902
	movq	%rdx, %rsi	# D.15900,
	movl	%eax, %edi	# D.15902,
	call	memory_address_p	#
	testl	%eax, %eax	# D.15896
	jne	.L45	#,
	.loc 1 341 0
	jmp	.L46	#
.L44:
	.loc 1 343 0
	movq	-16(%rbp), %rax	# object, tmp103
	movq	%rax, %rdi	# tmp103,
	call	insn_invalid_p	#
	testl	%eax, %eax	# D.15896
	je	.L45	#,
.LBB5:
	.loc 1 345 0
	movq	-16(%rbp), %rax	# object, tmp104
	movq	32(%rax), %rax	# object_14->fld[3].rtx, tmp105
	movq	%rax, -8(%rbp)	# tmp105, pat
	.loc 1 352 0
	movq	-8(%rbp), %rax	# pat, tmp106
	movzwl	(%rax), %eax	# pat_21->code, D.15899
	cmpw	$39, %ax	#, D.15899
	jne	.L47	#,
	.loc 1 353 0
	movq	-8(%rbp), %rax	# pat, tmp107
	movq	8(%rax), %rax	# pat_21->fld[0].rtvec, D.15903
	movq	-8(%rbp), %rdx	# pat, tmp108
	movq	8(%rdx), %rdx	# pat_21->fld[0].rtvec, D.15903
	movl	(%rdx), %edx	# _24->num_elem, D.15896
	subl	$1, %edx	#, D.15896
	movslq	%edx, %rdx	# D.15896, tmp109
	movq	8(%rax,%rdx,8), %rax	# _23->elem, D.15900
	movzwl	(%rax), %eax	# _27->code, D.15899
	cmpw	$49, %ax	#, D.15899
	jne	.L47	#,
	.loc 1 354 0
	movq	-16(%rbp), %rax	# object, tmp110
	movq	32(%rax), %rax	# object_14->fld[3].rtx, D.15900
	movq	%rax, %rdi	# D.15900,
	call	asm_noperands	#
	testl	%eax, %eax	# D.15896
	jns	.L47	#,
.LBB6:
	.loc 1 358 0
	movq	-8(%rbp), %rax	# pat, tmp111
	movq	8(%rax), %rax	# pat_21->fld[0].rtvec, D.15903
	movl	(%rax), %eax	# _31->num_elem, D.15896
	cmpl	$2, %eax	#, D.15896
	jne	.L48	#,
	.loc 1 359 0
	movq	-8(%rbp), %rax	# pat, tmp112
	movq	8(%rax), %rax	# pat_21->fld[0].rtvec, D.15903
	movq	8(%rax), %rax	# _33->elem, tmp113
	movq	%rax, -24(%rbp)	# tmp113, newpat
	jmp	.L49	#
.L48:
.LBB7:
	.loc 1 365 0
	movq	-8(%rbp), %rax	# pat, tmp114
	movq	8(%rax), %rax	# pat_21->fld[0].rtvec, D.15903
	movl	(%rax), %eax	# _35->num_elem, D.15896
	subl	$1, %eax	#, D.15896
	movl	%eax, %edi	# D.15896,
	call	rtvec_alloc	#
	movq	%rax, %rdx	# D.15903,
	movl	$0, %esi	#,
	movl	$39, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -24(%rbp)	# tmp115, newpat
	.loc 1 367 0
	movl	$0, -36(%rbp)	#, j
	jmp	.L50	#
.L51:
	.loc 1 368 0 discriminator 2
	movq	-24(%rbp), %rax	# newpat, tmp116
	movq	8(%rax), %rax	# newpat_39->fld[0].rtvec, D.15903
	movq	-8(%rbp), %rdx	# pat, tmp117
	movq	8(%rdx), %rdx	# pat_21->fld[0].rtvec, D.15903
	movl	-36(%rbp), %ecx	# j, tmp119
	movslq	%ecx, %rcx	# tmp119, tmp118
	movq	8(%rdx,%rcx,8), %rcx	# _44->elem, D.15900
	movl	-36(%rbp), %edx	# j, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	movq	%rcx, 8(%rax,%rdx,8)	# D.15900, _43->elem
	.loc 1 367 0 discriminator 2
	addl	$1, -36(%rbp)	#, j
.L50:
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# newpat, tmp122
	movq	8(%rax), %rax	# newpat_39->fld[0].rtvec, D.15903
	movl	(%rax), %eax	# _41->num_elem, D.15896
	cmpl	-36(%rbp), %eax	# j, D.15896
	jg	.L51	#,
.L49:
.LBE7:
	.loc 1 380 0 is_stmt 1
	movq	-16(%rbp), %rax	# object, tmp123
	leaq	32(%rax), %rsi	#, D.15904
	movq	-24(%rbp), %rdx	# newpat, tmp124
	movq	-16(%rbp), %rax	# object, tmp125
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp125,
	call	validate_change	#
	.loc 1 381 0
	jmp	.L43	#
.L47:
.LBE6:
	.loc 1 383 0
	movq	-8(%rbp), %rax	# pat, tmp126
	movzwl	(%rax), %eax	# pat_21->code, D.15899
	cmpw	$48, %ax	#, D.15899
	je	.L52	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp127
	movzwl	(%rax), %eax	# pat_21->code, D.15899
	cmpw	$49, %ax	#, D.15899
	jne	.L46	#,
.L52:
	.loc 1 386 0 is_stmt 1
	jmp	.L43	#
.L45:
.LBE5:
	.loc 1 390 0
	movq	-16(%rbp), %rax	# object, tmp128
	movq	%rax, -32(%rbp)	# tmp128, last_validated
.L43:
.LBE4:
	.loc 1 329 0
	addl	$1, -40(%rbp)	#, i
.L40:
	.loc 1 329 0 is_stmt 0 discriminator 1
	movl	num_changes(%rip), %eax	# num_changes, num_changes.29
	cmpl	%eax, -40(%rbp)	# num_changes.29, i
	jl	.L53	#,
.L46:
	.loc 1 393 0 is_stmt 1
	movl	num_changes(%rip), %eax	# num_changes, num_changes.30
	cmpl	%eax, -40(%rbp)	# num_changes.30, i
	jne	.L54	#,
	.loc 1 395 0
	movl	$0, num_changes(%rip)	#, num_changes
	.loc 1 396 0
	movl	$1, %eax	#, D.15896
	jmp	.L55	#
.L54:
	.loc 1 400 0
	movl	$0, %edi	#,
	call	cancel_changes	#
	.loc 1 401 0
	movl	$0, %eax	#, D.15896
.L55:
	.loc 1 403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	apply_change_group, .-apply_change_group
	.globl	num_validated_changes
	.type	num_validated_changes, @function
num_validated_changes:
.LFB9:
	.loc 1 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 410 0
	movl	num_changes(%rip), %eax	# num_changes, D.15905
	.loc 1 411 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	num_validated_changes, .-num_validated_changes
	.globl	cancel_changes
	.type	cancel_changes, @function
cancel_changes:
.LFB10:
	.loc 1 418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# num, num
	.loc 1 423 0
	movl	num_changes(%rip), %eax	# num_changes, num_changes.31
	subl	$1, %eax	#, tmp91
	movl	%eax, -4(%rbp)	# tmp91, i
	jmp	.L59	#
.L61:
	.loc 1 425 0
	movq	changes(%rip), %rax	# changes, changes.32
	movl	-4(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, D.15906
	salq	$5, %rdx	#, D.15906
	addq	%rdx, %rax	# D.15906, D.15907
	movq	16(%rax), %rax	# _8->loc, D.15908
	movq	changes(%rip), %rdx	# changes, changes.33
	movl	-4(%rbp), %ecx	# i, tmp93
	movslq	%ecx, %rcx	# tmp93, D.15906
	salq	$5, %rcx	#, D.15906
	addq	%rcx, %rdx	# D.15906, D.15907
	movq	24(%rdx), %rdx	# _13->old, D.15909
	movq	%rdx, (%rax)	# D.15909, *_9
	.loc 1 426 0
	movq	changes(%rip), %rax	# changes, changes.34
	movl	-4(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, D.15906
	salq	$5, %rdx	#, D.15906
	addq	%rdx, %rax	# D.15906, D.15907
	movq	(%rax), %rax	# _18->object, D.15909
	testq	%rax, %rax	# D.15909
	je	.L60	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	changes(%rip), %rax	# changes, changes.35
	movl	-4(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.15906
	salq	$5, %rdx	#, D.15906
	addq	%rdx, %rax	# D.15906, D.15907
	movq	(%rax), %rax	# _23->object, D.15909
	movzwl	(%rax), %eax	# _24->code, D.15910
	cmpw	$66, %ax	#, D.15910
	je	.L60	#,
	.loc 1 427 0 is_stmt 1
	movq	changes(%rip), %rax	# changes, changes.36
	movl	-4(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, D.15906
	salq	$5, %rdx	#, D.15906
	addq	%rdx, %rax	# D.15906, D.15907
	movq	(%rax), %rax	# _29->object, D.15909
	movq	changes(%rip), %rdx	# changes, changes.37
	movl	-4(%rbp), %ecx	# i, tmp97
	movslq	%ecx, %rcx	# tmp97, D.15906
	salq	$5, %rcx	#, D.15906
	addq	%rcx, %rdx	# D.15906, D.15907
	movl	8(%rdx), %edx	# _34->old_code, D.15911
	movl	%edx, 40(%rax)	# D.15911, _30->fld[4].rtint
.L60:
	.loc 1 423 0
	subl	$1, -4(%rbp)	#, i
.L59:
	.loc 1 423 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-20(%rbp), %eax	# num, tmp98
	jge	.L61	#,
	.loc 1 429 0 is_stmt 1
	movl	-20(%rbp), %eax	# num, tmp99
	movl	%eax, num_changes(%rip)	# tmp99, num_changes
	.loc 1 430 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	cancel_changes, .-cancel_changes
	.type	validate_replace_rtx_1, @function
validate_replace_rtx_1:
.LFB11:
	.loc 1 439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)	# loc, loc
	movq	%rsi, -128(%rbp)	# from, from
	movq	%rdx, -136(%rbp)	# to, to
	movq	%rcx, -144(%rbp)	# object, object
	.loc 1 442 0
	movq	-120(%rbp), %rax	# loc, tmp180
	movq	(%rax), %rax	# *loc_12(D), tmp181
	movq	%rax, -64(%rbp)	# tmp181, x
	.loc 1 444 0
	movl	$0, -96(%rbp)	#, op0_mode
	.loc 1 445 0
	movl	num_changes(%rip), %eax	# num_changes, tmp182
	movl	%eax, -88(%rbp)	# tmp182, prev_changes
	.loc 1 448 0
	cmpq	$0, -64(%rbp)	#, x
	jne	.L63	#,
	.loc 1 449 0
	jmp	.L62	#
.L63:
	.loc 1 451 0
	movq	-64(%rbp), %rax	# x, tmp183
	movzwl	(%rax), %eax	# x_13->code, D.15912
	movzwl	%ax, %eax	# D.15912, tmp184
	movl	%eax, -100(%rbp)	# tmp184, code
	.loc 1 452 0
	movl	-100(%rbp), %eax	# code, code.38
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp186
	movq	%rax, -48(%rbp)	# tmp186, fmt
	.loc 1 453 0
	movq	-48(%rbp), %rax	# fmt, tmp187
	movzbl	(%rax), %eax	# *fmt_19, D.15913
	cmpb	$101, %al	#, D.15913
	jne	.L65	#,
	.loc 1 454 0
	movq	-64(%rbp), %rax	# x, tmp188
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _21->mode, D.15915
	movzbl	%al, %eax	# D.15915, tmp189
	movl	%eax, -96(%rbp)	# tmp189, op0_mode
.L65:
	.loc 1 460 0
	movq	-64(%rbp), %rax	# x, tmp190
	cmpq	-128(%rbp), %rax	# from, tmp190
	je	.L66	#,
	.loc 1 461 0
	movq	-64(%rbp), %rax	# x, tmp191
	movzwl	(%rax), %eax	# x_13->code, D.15912
	cmpw	$61, %ax	#, D.15912
	jne	.L67	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# from, tmp192
	movzwl	(%rax), %eax	# from_24(D)->code, D.15912
	cmpw	$61, %ax	#, D.15912
	jne	.L67	#,
	.loc 1 462 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp193
	movzbl	2(%rax), %edx	# x_13->mode, D.15915
	movq	-128(%rbp), %rax	# from, tmp194
	movzbl	2(%rax), %eax	# from_24(D)->mode, D.15915
	cmpb	%al, %dl	# D.15915, D.15915
	jne	.L67	#,
	.loc 1 463 0
	movq	-64(%rbp), %rax	# x, tmp195
	movl	8(%rax), %edx	# x_13->fld[0].rtuint, D.15916
	movq	-128(%rbp), %rax	# from, tmp196
	movl	8(%rax), %eax	# from_24(D)->fld[0].rtuint, D.15916
	cmpl	%eax, %edx	# D.15916, D.15916
	je	.L66	#,
.L67:
	.loc 1 464 0
	movq	-64(%rbp), %rax	# x, tmp197
	movzwl	(%rax), %edx	# x_13->code, D.15912
	movq	-128(%rbp), %rax	# from, tmp198
	movzwl	(%rax), %eax	# from_24(D)->code, D.15912
	cmpw	%ax, %dx	# D.15912, D.15912
	jne	.L68	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp199
	movzbl	2(%rax), %edx	# x_13->mode, D.15915
	movq	-128(%rbp), %rax	# from, tmp200
	movzbl	2(%rax), %eax	# from_24(D)->mode, D.15915
	cmpb	%al, %dl	# D.15915, D.15915
	jne	.L68	#,
	.loc 1 465 0 is_stmt 1
	movq	-128(%rbp), %rdx	# from, tmp201
	movq	-64(%rbp), %rax	# x, tmp202
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15917
	je	.L68	#,
.L66:
	.loc 1 467 0
	movq	-136(%rbp), %rdx	# to, tmp203
	movq	-120(%rbp), %rsi	# loc, tmp204
	movq	-144(%rbp), %rax	# object, tmp205
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp205,
	call	validate_change	#
	.loc 1 468 0
	jmp	.L62	#
.L68:
	.loc 1 473 0
	movl	-100(%rbp), %eax	# code, code.39
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15915
	movzbl	%al, %eax	# D.15915, D.15917
	subl	$1, %eax	#, tmp207
	movl	%eax, -108(%rbp)	# tmp207, i
	jmp	.L69	#
.L74:
	.loc 1 475 0
	movl	-108(%rbp), %eax	# i, tmp208
	movslq	%eax, %rdx	# tmp208, D.15918
	movq	-48(%rbp), %rax	# fmt, tmp209
	addq	%rdx, %rax	# D.15918, D.15919
	movzbl	(%rax), %eax	# *_41, D.15913
	cmpb	$101, %al	#, D.15913
	jne	.L70	#,
	.loc 1 476 0
	movl	-108(%rbp), %eax	# i, tmp211
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp212
	movq	-64(%rbp), %rax	# x, tmp214
	addq	%rdx, %rax	# tmp212, tmp213
	leaq	8(%rax), %rdi	#, D.15920
	movq	-144(%rbp), %rcx	# object, tmp215
	movq	-136(%rbp), %rdx	# to, tmp216
	movq	-128(%rbp), %rax	# from, tmp217
	movq	%rax, %rsi	# tmp217,
	call	validate_replace_rtx_1	#
	jmp	.L71	#
.L70:
	.loc 1 477 0
	movl	-108(%rbp), %eax	# i, tmp218
	movslq	%eax, %rdx	# tmp218, D.15918
	movq	-48(%rbp), %rax	# fmt, tmp219
	addq	%rdx, %rax	# D.15918, D.15919
	movzbl	(%rax), %eax	# *_47, D.15913
	cmpb	$69, %al	#, D.15913
	jne	.L71	#,
	.loc 1 478 0
	movq	-64(%rbp), %rax	# x, tmp220
	movl	-108(%rbp), %edx	# i, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	movq	8(%rax,%rdx,8), %rax	# x_13->fld[i_1].rtvec, D.15921
	movl	(%rax), %eax	# _49->num_elem, D.15917
	subl	$1, %eax	#, tmp223
	movl	%eax, -104(%rbp)	# tmp223, j
	jmp	.L72	#
.L73:
	.loc 1 479 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp224
	movl	-108(%rbp), %edx	# i, tmp226
	movslq	%edx, %rdx	# tmp226, tmp225
	movq	8(%rax,%rdx,8), %rax	# x_13->fld[i_1].rtvec, D.15921
	movl	-104(%rbp), %edx	# j, tmp228
	movslq	%edx, %rdx	# tmp228, tmp227
	salq	$3, %rdx	#, tmp229
	addq	%rdx, %rax	# tmp229, tmp230
	leaq	8(%rax), %rdi	#, D.15920
	movq	-144(%rbp), %rcx	# object, tmp231
	movq	-136(%rbp), %rdx	# to, tmp232
	movq	-128(%rbp), %rax	# from, tmp233
	movq	%rax, %rsi	# tmp233,
	call	validate_replace_rtx_1	#
	.loc 1 478 0 discriminator 2
	subl	$1, -104(%rbp)	#, j
.L72:
	.loc 1 478 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, j
	jns	.L73	#,
.L71:
	.loc 1 473 0 is_stmt 1
	subl	$1, -108(%rbp)	#, i
.L69:
	.loc 1 473 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, i
	jns	.L74	#,
	.loc 1 483 0 is_stmt 1
	movl	num_changes(%rip), %eax	# num_changes, num_changes.40
	cmpl	-88(%rbp), %eax	# prev_changes, num_changes.40
	jne	.L75	#,
	.loc 1 484 0
	jmp	.L62	#
.L75:
	.loc 1 488 0
	movq	-48(%rbp), %rax	# fmt, tmp234
	movzbl	(%rax), %eax	# *fmt_19, D.15913
	cmpb	$101, %al	#, D.15913
	jne	.L76	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp235
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _58->mode, D.15915
	testb	%al, %al	# D.15915
	je	.L76	#,
	.loc 1 489 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp236
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _60->mode, D.15915
	movzbl	%al, %eax	# D.15915, tmp237
	movl	%eax, -96(%rbp)	# tmp237, op0_mode
.L76:
	.loc 1 494 0
	movl	-100(%rbp), %eax	# code, code.41
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15913
	cmpb	$60, %al	#, D.15913
	je	.L77	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# code, code.42
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15913
	cmpb	$99, %al	#, D.15913
	jne	.L78	#,
.L77:
	.loc 1 495 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp240
	movq	16(%rax), %rdx	# x_13->fld[1].rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp241
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.15914
	movq	%rdx, %rsi	# D.15914,
	movq	%rax, %rdi	# D.15914,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.15917
	je	.L78	#,
	.loc 1 497 0
	movq	-64(%rbp), %rax	# x, tmp242
	movq	8(%rax), %r13	# x_13->fld[0].rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp243
	movq	16(%rax), %r12	# x_13->fld[1].rtx, D.15914
	.loc 1 500 0
	movq	-64(%rbp), %rax	# x, tmp244
	movzbl	2(%rax), %eax	# x_13->mode, D.15915
	.loc 1 497 0
	movzbl	%al, %ebx	# D.15915, D.15922
	.loc 1 498 0
	movl	-100(%rbp), %eax	# code, code.44
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15913
	.loc 1 497 0
	cmpb	$99, %al	#, D.15913
	je	.L79	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# code, tmp246
	movl	%eax, %edi	# tmp246,
	call	swap_condition	#
	jmp	.L80	#
.L79:
	.loc 1 497 0 discriminator 2
	movl	-100(%rbp), %eax	# code, iftmp.43
.L80:
	.loc 1 497 0 discriminator 3
	movq	%r13, %rcx	# D.15914,
	movq	%r12, %rdx	# D.15914,
	movl	%ebx, %esi	# D.15922,
	movl	%eax, %edi	# iftmp.43,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.15914
	movq	-120(%rbp), %rsi	# loc, tmp247
	movq	-144(%rbp), %rax	# object, tmp248
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp248,
	call	validate_change	#
	.loc 1 502 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# loc, tmp249
	movq	(%rax), %rax	# *loc_12(D), tmp250
	movq	%rax, -64(%rbp)	# tmp250, x
	.loc 1 503 0 discriminator 3
	movq	-64(%rbp), %rax	# x, tmp251
	movzwl	(%rax), %eax	# x_79->code, D.15912
	movzwl	%ax, %eax	# D.15912, tmp252
	movl	%eax, -100(%rbp)	# tmp252, code
.L78:
	.loc 1 506 0
	movl	-100(%rbp), %eax	# code, tmp254
	subl	$63, %eax	#, tmp253
	cmpl	$70, %eax	#, tmp253
	ja	.L99	#,
	movl	%eax, %eax	# tmp253, tmp255
	movq	.L83(,%rax,8), %rax	#, tmp256
	jmp	*%rax	# tmp256
	.section	.rodata
	.align 8
	.align 4
.L83:
	.quad	.L82
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L84
	.quad	.L85
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L86
	.quad	.L86
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L87
	.quad	.L87
	.text
.L84:
	.loc 1 513 0
	movq	-64(%rbp), %rax	# x, tmp257
	movq	16(%rax), %rax	# x_3->fld[1].rtx, D.15914
	movzwl	(%rax), %eax	# _82->code, D.15912
	cmpw	$54, %ax	#, D.15912
	jne	.L88	#,
	.loc 1 514 0
	movq	-64(%rbp), %rax	# x, tmp258
	movq	16(%rax), %rcx	# x_3->fld[1].rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp259
	movq	8(%rax), %rdx	# x_3->fld[0].rtx, D.15914
	.loc 1 516 0
	movq	-64(%rbp), %rax	# x, tmp260
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	.loc 1 514 0
	movzbl	%al, %eax	# D.15915, D.15922
	movl	%eax, %esi	# D.15922,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, %rdx	#, D.15914
	movq	-120(%rbp), %rsi	# loc, tmp261
	movq	-144(%rbp), %rax	# object, tmp262
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp262,
	call	validate_change	#
	.loc 1 517 0
	jmp	.L62	#
.L88:
	jmp	.L62	#
.L85:
	.loc 1 519 0
	movq	-64(%rbp), %rax	# x, tmp263
	movq	16(%rax), %rax	# x_3->fld[1].rtx, D.15914
	movzwl	(%rax), %eax	# _89->code, D.15912
	cmpw	$54, %ax	#, D.15912
	je	.L89	#,
	.loc 1 520 0
	movq	-64(%rbp), %rax	# x, tmp264
	movq	16(%rax), %rax	# x_3->fld[1].rtx, D.15914
	movzwl	(%rax), %eax	# _91->code, D.15912
	cmpw	$55, %ax	#, D.15912
	jne	.L90	#,
.L89:
	.loc 1 526 0
	movq	-64(%rbp), %rax	# x, tmp265
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	.loc 1 521 0
	movzbl	%al, %ecx	# D.15915, D.15922
	movq	-64(%rbp), %rax	# x, tmp266
	movq	16(%rax), %rdx	# x_3->fld[1].rtx, D.15914
	.loc 1 525 0
	movq	-64(%rbp), %rax	# x, tmp267
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	.loc 1 521 0
	movzbl	%al, %eax	# D.15915, D.15922
	movl	%eax, %esi	# D.15922,
	movl	$77, %edi	#,
	call	simplify_gen_unary	#
	movq	%rax, %rcx	#, D.15914
	movq	-64(%rbp), %rax	# x, tmp268
	movq	8(%rax), %rdx	# x_3->fld[0].rtx, D.15914
	.loc 1 523 0
	movq	-64(%rbp), %rax	# x, tmp269
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	.loc 1 521 0
	movzbl	%al, %eax	# D.15915, D.15922
	movl	%eax, %esi	# D.15922,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, %rdx	#, D.15914
	movq	-120(%rbp), %rsi	# loc, tmp270
	movq	-144(%rbp), %rax	# object, tmp271
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp271,
	call	validate_change	#
	.loc 1 527 0
	jmp	.L62	#
.L90:
	jmp	.L62	#
.L86:
	.loc 1 530 0
	movq	-64(%rbp), %rax	# x, tmp272
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _103->mode, D.15915
	testb	%al, %al	# D.15915
	jne	.L91	#,
	.loc 1 532 0
	movq	-64(%rbp), %rax	# x, tmp273
	movq	8(%rax), %rdx	# x_3->fld[0].rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp274
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	movzbl	%al, %esi	# D.15915, D.15922
	movl	-96(%rbp), %ecx	# op0_mode, tmp275
	movl	-100(%rbp), %eax	# code, tmp276
	movl	%eax, %edi	# tmp276,
	call	simplify_gen_unary	#
	movq	%rax, -56(%rbp)	# tmp277, new
	.loc 1 536 0
	cmpq	$0, -56(%rbp)	#, new
	jne	.L92	#,
	.loc 1 537 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp278
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	movzbl	%al, %eax	# D.15915, D.15922
	movl	%eax, %esi	# D.15922,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -56(%rbp)	# tmp279, new
.L92:
	.loc 1 538 0
	movq	-56(%rbp), %rdx	# new, tmp280
	movq	-120(%rbp), %rsi	# loc, tmp281
	movq	-144(%rbp), %rax	# object, tmp282
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp282,
	call	validate_change	#
	.loc 1 540 0
	jmp	.L62	#
.L91:
	jmp	.L62	#
.L82:
	.loc 1 543 0
	movq	-64(%rbp), %rax	# x, tmp283
	movl	16(%rax), %ecx	# x_3->fld[1].rtuint, D.15916
	movq	-64(%rbp), %rax	# x, tmp284
	movq	8(%rax), %rsi	# x_3->fld[0].rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp285
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	movzbl	%al, %eax	# D.15915, D.15922
	movl	-96(%rbp), %edx	# op0_mode, tmp286
	movl	%eax, %edi	# D.15922,
	call	simplify_subreg	#
	movq	%rax, -56(%rbp)	# tmp287, new
	.loc 1 547 0
	cmpq	$0, -56(%rbp)	#, new
	jne	.L93	#,
	.loc 1 547 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp288
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _118->mode, D.15915
	testb	%al, %al	# D.15915
	jne	.L93	#,
	.loc 1 548 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.15914
	movq	-64(%rbp), %rax	# x, tmp289
	movzbl	2(%rax), %eax	# x_3->mode, D.15915
	movzbl	%al, %eax	# D.15915, D.15922
	movl	%eax, %esi	# D.15922,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -56(%rbp)	# tmp290, new
.L93:
	.loc 1 549 0
	cmpq	$0, -56(%rbp)	#, new
	je	.L94	#,
	.loc 1 550 0
	movq	-56(%rbp), %rdx	# new, tmp291
	movq	-120(%rbp), %rsi	# loc, tmp292
	movq	-144(%rbp), %rax	# object, tmp293
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp293,
	call	validate_change	#
	.loc 1 551 0
	jmp	.L62	#
.L94:
	jmp	.L62	#
.L87:
	.loc 1 559 0
	movq	-64(%rbp), %rax	# x, tmp294
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movzwl	(%rax), %eax	# _124->code, D.15912
	cmpw	$66, %ax	#, D.15912
	jne	.L95	#,
	.loc 1 560 0
	movq	-64(%rbp), %rax	# x, tmp295
	movq	16(%rax), %rax	# x_3->fld[1].rtx, D.15914
	movzwl	(%rax), %eax	# _126->code, D.15912
	cmpw	$54, %ax	#, D.15912
	jne	.L95	#,
	.loc 1 561 0
	movq	-64(%rbp), %rax	# x, tmp296
	movq	24(%rax), %rax	# x_3->fld[2].rtx, D.15914
	movzwl	(%rax), %eax	# _128->code, D.15912
	cmpw	$54, %ax	#, D.15912
	jne	.L95	#,
	.loc 1 562 0
	movq	-64(%rbp), %rax	# x, tmp297
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movq	8(%rax), %rax	# _130->fld[0].rtx, D.15914
	movq	%rax, %rdi	# D.15914,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.15917
	jne	.L95	#,
	.loc 1 563 0
	movq	-64(%rbp), %rax	# x, tmp298
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movzbl	3(%rax), %eax	# *_133, D.15915
	andl	$8, %eax	#, D.15915
	testb	%al, %al	# D.15915
	jne	.L95	#,
.LBB8:
	.loc 1 565 0
	movl	$0, -92(%rbp)	#, wanted_mode
	.loc 1 566 0
	movq	-64(%rbp), %rax	# x, tmp299
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movzbl	2(%rax), %eax	# _137->mode, D.15915
	movzbl	%al, %eax	# D.15915, tmp300
	movl	%eax, -84(%rbp)	# tmp300, is_mode
	.loc 1 567 0
	movq	-64(%rbp), %rax	# x, tmp301
	movq	24(%rax), %rax	# x_3->fld[2].rtx, D.15914
	movq	8(%rax), %rax	# _140->fld[0].rtwint, D.15923
	movl	%eax, -80(%rbp)	# D.15923, pos
	.loc 1 569 0
	movq	-64(%rbp), %rax	# x, tmp302
	movzwl	(%rax), %eax	# x_3->code, D.15912
	cmpw	$133, %ax	#, D.15912
	jne	.L96	#,
.LBB9:
	.loc 1 571 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -76(%rbp)	# tmp303, new_mode
	.loc 1 573 0
	cmpl	$59, -76(%rbp)	#, new_mode
	je	.L97	#,
	.loc 1 574 0
	movl	-76(%rbp), %eax	# new_mode, tmp304
	movl	%eax, -92(%rbp)	# tmp304, wanted_mode
.LBE9:
	jmp	.L98	#
.L97:
	jmp	.L98	#
.L96:
	.loc 1 576 0
	movq	-64(%rbp), %rax	# x, tmp305
	movzwl	(%rax), %eax	# x_3->code, D.15912
	cmpw	$132, %ax	#, D.15912
	jne	.L98	#,
.LBB10:
	.loc 1 578 0
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -72(%rbp)	# tmp306, new_mode
	.loc 1 580 0
	cmpl	$59, -72(%rbp)	#, new_mode
	je	.L98	#,
	.loc 1 581 0
	movl	-72(%rbp), %eax	# new_mode, tmp307
	movl	%eax, -92(%rbp)	# tmp307, wanted_mode
.L98:
.LBE10:
	.loc 1 585 0
	cmpl	$0, -92(%rbp)	#, wanted_mode
	je	.L95	#,
	.loc 1 586 0
	movl	-92(%rbp), %eax	# wanted_mode, wanted_mode.45
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15915
	movl	-84(%rbp), %eax	# is_mode, is_mode.46
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15915
	cmpb	%al, %dl	# D.15915, D.15915
	jae	.L95	#,
.LBB11:
	.loc 1 588 0
	movl	-80(%rbp), %eax	# pos, tmp311
	leal	7(%rax), %edx	#, tmp313
	testl	%eax, %eax	# tmp312
	cmovs	%edx, %eax	# tmp313,, tmp312
	sarl	$3, %eax	#, tmp314
	movl	%eax, -68(%rbp)	# tmp314, offset
	.loc 1 598 0
	movl	-92(%rbp), %eax	# wanted_mode, wanted_mode.49
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.15912
	movzwl	%ax, %ecx	# D.15912, D.15917
	movl	-80(%rbp), %eax	# pos, tmp317
	cltd
	idivl	%ecx	# D.15917
	movl	%edx, -80(%rbp)	# tmp318, pos
	.loc 1 600 0
	movl	-68(%rbp), %eax	# offset, tmp320
	movslq	%eax, %rdx	# tmp320, D.15923
	movq	-64(%rbp), %rax	# x, tmp321
	movq	8(%rax), %rax	# x_3->fld[0].rtx, D.15914
	movl	-92(%rbp), %esi	# wanted_mode, tmp322
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.15914,
	call	adjust_address_1	#
	movq	%rax, -40(%rbp)	# tmp323, newmem
	.loc 1 602 0
	movl	-80(%rbp), %eax	# pos, tmp324
	cltq
	movq	%rax, %rsi	# D.15923,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.15914
	movq	-64(%rbp), %rax	# x, tmp325
	leaq	24(%rax), %rsi	#, D.15920
	movq	-144(%rbp), %rax	# object, tmp326
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp326,
	call	validate_change	#
	.loc 1 603 0
	movq	-64(%rbp), %rax	# x, tmp327
	leaq	8(%rax), %rsi	#, D.15920
	movq	-40(%rbp), %rdx	# newmem, tmp328
	movq	-144(%rbp), %rax	# object, tmp329
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp329,
	call	validate_change	#
.LBE11:
.LBE8:
	.loc 1 607 0
	jmp	.L62	#
.L95:
	jmp	.L62	#
.L99:
	.loc 1 610 0
	nop
.L62:
	.loc 1 612 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	validate_replace_rtx_1, .-validate_replace_rtx_1
	.globl	validate_replace_rtx_subexp
	.type	validate_replace_rtx_subexp, @function
validate_replace_rtx_subexp:
.LFB12:
	.loc 1 621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# from, from
	movq	%rsi, -16(%rbp)	# to, to
	movq	%rdx, -24(%rbp)	# insn, insn
	movq	%rcx, -32(%rbp)	# loc, loc
	.loc 1 622 0
	movq	-24(%rbp), %rcx	# insn, tmp61
	movq	-16(%rbp), %rdx	# to, tmp62
	movq	-8(%rbp), %rsi	# from, tmp63
	movq	-32(%rbp), %rax	# loc, tmp64
	movq	%rax, %rdi	# tmp64,
	call	validate_replace_rtx_1	#
	.loc 1 623 0
	call	apply_change_group	#
	.loc 1 624 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	validate_replace_rtx_subexp, .-validate_replace_rtx_subexp
	.globl	validate_replace_rtx
	.type	validate_replace_rtx, @function
validate_replace_rtx:
.LFB13:
	.loc 1 632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# from, from
	movq	%rsi, -16(%rbp)	# to, to
	movq	%rdx, -24(%rbp)	# insn, insn
	.loc 1 633 0
	movq	-24(%rbp), %rax	# insn, tmp62
	leaq	32(%rax), %rdi	#, D.15925
	movq	-24(%rbp), %rcx	# insn, tmp63
	movq	-16(%rbp), %rdx	# to, tmp64
	movq	-8(%rbp), %rax	# from, tmp65
	movq	%rax, %rsi	# tmp65,
	call	validate_replace_rtx_1	#
	.loc 1 634 0
	call	apply_change_group	#
	.loc 1 635 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	validate_replace_rtx, .-validate_replace_rtx
	.globl	validate_replace_rtx_group
	.type	validate_replace_rtx_group, @function
validate_replace_rtx_group:
.LFB14:
	.loc 1 642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# from, from
	movq	%rsi, -16(%rbp)	# to, to
	movq	%rdx, -24(%rbp)	# insn, insn
	.loc 1 643 0
	movq	-24(%rbp), %rax	# insn, tmp60
	leaq	32(%rax), %rdi	#, D.15927
	movq	-24(%rbp), %rcx	# insn, tmp61
	movq	-16(%rbp), %rdx	# to, tmp62
	movq	-8(%rbp), %rax	# from, tmp63
	movq	%rax, %rsi	# tmp63,
	call	validate_replace_rtx_1	#
	.loc 1 644 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	validate_replace_rtx_group, .-validate_replace_rtx_group
	.type	validate_replace_src_1, @function
validate_replace_src_1:
.LFB15:
	.loc 1 658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 659 0
	movq	-32(%rbp), %rax	# data, tmp62
	movq	%rax, -8(%rbp)	# tmp62, d
	.loc 1 662 0
	movq	-8(%rbp), %rax	# d, tmp63
	movq	16(%rax), %rcx	# d_2->insn, D.15928
	movq	-8(%rbp), %rax	# d, tmp64
	movq	8(%rax), %rdx	# d_2->to, D.15928
	movq	-8(%rbp), %rax	# d, tmp65
	movq	(%rax), %rsi	# d_2->from, D.15928
	movq	-24(%rbp), %rax	# x, tmp66
	movq	%rax, %rdi	# tmp66,
	call	validate_replace_rtx_1	#
	.loc 1 663 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	validate_replace_src_1, .-validate_replace_src_1
	.globl	validate_replace_src
	.type	validate_replace_src, @function
validate_replace_src:
.LFB16:
	.loc 1 672 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# from, from
	movq	%rsi, -48(%rbp)	# to, to
	movq	%rdx, -56(%rbp)	# insn, insn
	.loc 1 675 0
	movq	-40(%rbp), %rax	# from, tmp62
	movq	%rax, -32(%rbp)	# tmp62, d.from
	.loc 1 676 0
	movq	-48(%rbp), %rax	# to, tmp63
	movq	%rax, -24(%rbp)	# tmp63, d.to
	.loc 1 677 0
	movq	-56(%rbp), %rax	# insn, tmp64
	movq	%rax, -16(%rbp)	# tmp64, d.insn
	.loc 1 678 0
	movq	-56(%rbp), %rax	# insn, tmp65
	leaq	32(%rax), %rcx	#, D.15929
	leaq	-32(%rbp), %rax	#, tmp66
	movq	%rax, %rdx	# tmp66,
	movl	$validate_replace_src_1, %esi	#,
	movq	%rcx, %rdi	# D.15929,
	call	note_uses	#
	.loc 1 679 0
	call	apply_change_group	#
	.loc 1 680 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	validate_replace_src, .-validate_replace_src
	.type	find_single_use_1, @function
find_single_use_1:
.LFB17:
	.loc 1 741 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# dest, dest
	movq	%rsi, -80(%rbp)	# loc, loc
	.loc 1 742 0
	movq	-80(%rbp), %rax	# loc, tmp134
	movq	(%rax), %rax	# *loc_14(D), tmp135
	movq	%rax, -32(%rbp)	# tmp135, x
	.loc 1 743 0
	movq	-32(%rbp), %rax	# x, tmp136
	movzwl	(%rax), %eax	# x_15->code, D.15932
	movzwl	%ax, %eax	# D.15932, tmp137
	movl	%eax, -52(%rbp)	# tmp137, code
	.loc 1 744 0
	movq	$0, -48(%rbp)	#, result
	.loc 1 749 0
	movl	-52(%rbp), %eax	# code, tmp139
	subl	$47, %eax	#, tmp138
	cmpl	$21, %eax	#, tmp138
	ja	.L140	#,
	movl	%eax, %eax	# tmp138, tmp140
	movq	.L111(,%rax,8), %rax	#, tmp141
	jmp	*%rax	# tmp141
	.section	.rodata
	.align 8
	.align 4
.L111:
	.quad	.L110
	.quad	.L140
	.quad	.L112
	.quad	.L140
	.quad	.L140
	.quad	.L140
	.quad	.L140
	.quad	.L112
	.quad	.L112
	.quad	.L112
	.quad	.L140
	.quad	.L112
	.quad	.L140
	.quad	.L140
	.quad	.L140
	.quad	.L140
	.quad	.L113
	.quad	.L140
	.quad	.L140
	.quad	.L113
	.quad	.L112
	.quad	.L112
	.text
.L112:
	.loc 1 758 0
	movl	$0, %eax	#, D.15931
	jmp	.L114	#
.L110:
	.loc 1 765 0
	movq	-32(%rbp), %rax	# x, tmp142
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movzwl	(%rax), %eax	# _20->code, D.15932
	cmpw	$69, %ax	#, D.15932
	je	.L115	#,
	.loc 1 766 0
	movq	-32(%rbp), %rax	# x, tmp143
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movzwl	(%rax), %eax	# _22->code, D.15932
	cmpw	$59, %ax	#, D.15932
	je	.L115	#,
	.loc 1 767 0
	movq	-32(%rbp), %rax	# x, tmp144
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movzwl	(%rax), %eax	# _24->code, D.15932
	cmpw	$61, %ax	#, D.15932
	je	.L115	#,
	.loc 1 768 0
	movq	-32(%rbp), %rax	# x, tmp145
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movzwl	(%rax), %eax	# _26->code, D.15932
	cmpw	$63, %ax	#, D.15932
	jne	.L116	#,
	.loc 1 769 0
	movq	-32(%rbp), %rax	# x, tmp146
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movq	8(%rax), %rax	# _28->fld[0].rtx, D.15933
	movzwl	(%rax), %eax	# _29->code, D.15932
	cmpw	$61, %ax	#, D.15932
	jne	.L116	#,
	.loc 1 770 0
	movq	-32(%rbp), %rax	# x, tmp147
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movq	8(%rax), %rax	# _31->fld[0].rtx, D.15933
	movzbl	2(%rax), %eax	# _32->mode, D.15934
	movzbl	%al, %eax	# D.15934, D.15935
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15934
	.loc 1 771 0
	movzbl	%al, %edx	# D.15934, D.15935
	movl	target_flags(%rip), %eax	# target_flags, target_flags.51
	andl	$33554432, %eax	#, D.15935
	testl	%eax, %eax	# D.15935
	je	.L117	#,
	.loc 1 771 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.50
	jmp	.L118	#
.L117:
	.loc 1 771 0 discriminator 2
	movl	$3, %eax	#, iftmp.50
.L118:
	.loc 1 771 0 discriminator 3
	addl	%edx, %eax	# D.15935, D.15935
	movl	target_flags(%rip), %edx	# target_flags, target_flags.53
	andl	$33554432, %edx	#, D.15935
	testl	%edx, %edx	# D.15935
	je	.L119	#,
	.loc 1 771 0 discriminator 1
	movl	$8, %ebx	#, iftmp.52
	jmp	.L120	#
.L119:
	.loc 1 771 0 discriminator 2
	movl	$4, %ebx	#, iftmp.52
.L120:
	.loc 1 771 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.52
	movl	%eax, %ecx	# tmp149, D.15935
	.loc 1 772 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_15->fld[0].rtx, D.15933
	movzbl	2(%rax), %eax	# _47->mode, D.15934
	movzbl	%al, %eax	# D.15934, D.15935
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15934
	.loc 1 773 0 discriminator 3
	movzbl	%al, %edx	# D.15934, D.15935
	movl	target_flags(%rip), %eax	# target_flags, target_flags.55
	andl	$33554432, %eax	#, D.15935
	testl	%eax, %eax	# D.15935
	je	.L121	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.54
	jmp	.L122	#
.L121:
	.loc 1 773 0 discriminator 2
	movl	$3, %eax	#, iftmp.54
.L122:
	.loc 1 773 0 discriminator 3
	addl	%edx, %eax	# D.15935, D.15935
	movl	target_flags(%rip), %edx	# target_flags, target_flags.57
	andl	$33554432, %edx	#, D.15935
	testl	%edx, %edx	# D.15935
	je	.L123	#,
	.loc 1 773 0 discriminator 1
	movl	$8, %ebx	#, iftmp.56
	jmp	.L124	#
.L123:
	.loc 1 773 0 discriminator 2
	movl	$4, %ebx	#, iftmp.56
.L124:
	.loc 1 773 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.56
	.loc 1 768 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.15935, D.15935
	jne	.L116	#,
.L115:
	.loc 1 776 0
	movq	-32(%rbp), %rax	# x, tmp155
	leaq	16(%rax), %rdx	#, D.15931
	movq	-72(%rbp), %rax	# dest, tmp156
	movq	%rdx, %rsi	# D.15931,
	movq	%rax, %rdi	# tmp156,
	call	find_single_use_1	#
	jmp	.L114	#
.L113:
	.loc 1 780 0
	movq	-32(%rbp), %rax	# x, tmp157
	leaq	8(%rax), %rdx	#, D.15931
	movq	-72(%rbp), %rax	# dest, tmp158
	movq	%rdx, %rsi	# D.15931,
	movq	%rax, %rdi	# tmp158,
	call	find_single_use_1	#
	jmp	.L114	#
.L140:
	.loc 1 783 0
	nop
.L116:
	.loc 1 789 0
	movl	-52(%rbp), %eax	# code, code.58
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp160
	movq	%rax, -24(%rbp)	# tmp160, fmt
	.loc 1 790 0
	movl	-52(%rbp), %eax	# code, code.59
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15934
	movzbl	%al, %eax	# D.15934, D.15935
	subl	$1, %eax	#, tmp162
	movl	%eax, -60(%rbp)	# tmp162, i
	jmp	.L125	#
.L139:
	.loc 1 792 0
	movl	-60(%rbp), %eax	# i, tmp163
	movslq	%eax, %rdx	# tmp163, D.15936
	movq	-24(%rbp), %rax	# fmt, tmp164
	addq	%rdx, %rax	# D.15936, D.15937
	movzbl	(%rax), %eax	# *_74, D.15938
	cmpb	$101, %al	#, D.15938
	jne	.L126	#,
	.loc 1 794 0
	movq	-32(%rbp), %rax	# x, tmp165
	movl	-60(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, tmp166
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtx, D.15933
	cmpq	-72(%rbp), %rax	# dest, D.15933
	je	.L127	#,
	.loc 1 795 0
	movq	-72(%rbp), %rax	# dest, tmp168
	movzwl	(%rax), %eax	# dest_63(D)->code, D.15932
	cmpw	$61, %ax	#, D.15932
	jne	.L128	#,
	.loc 1 795 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# x, tmp169
	movl	-60(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtx, D.15933
	movzwl	(%rax), %eax	# _78->code, D.15932
	cmpw	$61, %ax	#, D.15932
	jne	.L128	#,
	.loc 1 796 0 is_stmt 1
	movq	-72(%rbp), %rax	# dest, tmp172
	movl	8(%rax), %ecx	# dest_63(D)->fld[0].rtuint, D.15939
	movq	-32(%rbp), %rax	# x, tmp173
	movl	-60(%rbp), %edx	# i, tmp175
	movslq	%edx, %rdx	# tmp175, tmp174
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtx, D.15933
	movl	8(%rax), %eax	# _81->fld[0].rtuint, D.15939
	cmpl	%eax, %ecx	# D.15939, D.15939
	jne	.L128	#,
.L127:
	.loc 1 797 0
	movq	-80(%rbp), %rax	# loc, tmp176
	movq	%rax, -40(%rbp)	# tmp176, this_result
	jmp	.L129	#
.L128:
	.loc 1 799 0
	movl	-60(%rbp), %eax	# i, tmp178
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp179
	movq	-32(%rbp), %rax	# x, tmp181
	addq	%rdx, %rax	# tmp179, tmp180
	leaq	8(%rax), %rdx	#, D.15931
	movq	-72(%rbp), %rax	# dest, tmp182
	movq	%rdx, %rsi	# D.15931,
	movq	%rax, %rdi	# tmp182,
	call	find_single_use_1	#
	movq	%rax, -40(%rbp)	# tmp183, this_result
.L129:
	.loc 1 801 0
	cmpq	$0, -48(%rbp)	#, result
	jne	.L130	#,
	.loc 1 802 0
	movq	-40(%rbp), %rax	# this_result, tmp184
	movq	%rax, -48(%rbp)	# tmp184, result
	jmp	.L131	#
.L130:
	.loc 1 803 0
	cmpq	$0, -40(%rbp)	#, this_result
	je	.L131	#,
	.loc 1 805 0
	movl	$0, %eax	#, D.15931
	jmp	.L114	#
.L126:
	.loc 1 807 0
	movl	-60(%rbp), %eax	# i, tmp185
	movslq	%eax, %rdx	# tmp185, D.15936
	movq	-24(%rbp), %rax	# fmt, tmp186
	addq	%rdx, %rax	# D.15936, D.15937
	movzbl	(%rax), %eax	# *_89, D.15938
	cmpb	$69, %al	#, D.15938
	jne	.L131	#,
.LBB12:
	.loc 1 811 0
	movq	-32(%rbp), %rax	# x, tmp187
	movl	-60(%rbp), %edx	# i, tmp189
	movslq	%edx, %rdx	# tmp189, tmp188
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtvec, D.15940
	movl	(%rax), %eax	# _91->num_elem, D.15935
	subl	$1, %eax	#, tmp190
	movl	%eax, -56(%rbp)	# tmp190, j
	jmp	.L132	#
.L138:
	.loc 1 813 0
	movq	-32(%rbp), %rax	# x, tmp191
	movl	-60(%rbp), %edx	# i, tmp193
	movslq	%edx, %rdx	# tmp193, tmp192
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtvec, D.15940
	movl	-56(%rbp), %edx	# j, tmp195
	movslq	%edx, %rdx	# tmp195, tmp194
	movq	8(%rax,%rdx,8), %rax	# _94->elem, D.15933
	cmpq	-72(%rbp), %rax	# dest, D.15933
	je	.L133	#,
	.loc 1 814 0
	movq	-72(%rbp), %rax	# dest, tmp196
	movzwl	(%rax), %eax	# dest_63(D)->code, D.15932
	cmpw	$61, %ax	#, D.15932
	jne	.L134	#,
	.loc 1 815 0
	movq	-32(%rbp), %rax	# x, tmp197
	movl	-60(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, tmp198
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtvec, D.15940
	movl	-56(%rbp), %edx	# j, tmp201
	movslq	%edx, %rdx	# tmp201, tmp200
	movq	8(%rax,%rdx,8), %rax	# _97->elem, D.15933
	movzwl	(%rax), %eax	# _98->code, D.15932
	cmpw	$61, %ax	#, D.15932
	jne	.L134	#,
	.loc 1 816 0
	movq	-32(%rbp), %rax	# x, tmp202
	movl	-60(%rbp), %edx	# i, tmp204
	movslq	%edx, %rdx	# tmp204, tmp203
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtvec, D.15940
	movl	-56(%rbp), %edx	# j, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	movq	8(%rax,%rdx,8), %rax	# _100->elem, D.15933
	movl	8(%rax), %edx	# _101->fld[0].rtuint, D.15939
	movq	-72(%rbp), %rax	# dest, tmp207
	movl	8(%rax), %eax	# dest_63(D)->fld[0].rtuint, D.15939
	cmpl	%eax, %edx	# D.15939, D.15939
	jne	.L134	#,
.L133:
	.loc 1 817 0
	movq	-80(%rbp), %rax	# loc, tmp208
	movq	%rax, -40(%rbp)	# tmp208, this_result
	jmp	.L135	#
.L134:
	.loc 1 819 0
	movq	-32(%rbp), %rax	# x, tmp209
	movl	-60(%rbp), %edx	# i, tmp211
	movslq	%edx, %rdx	# tmp211, tmp210
	movq	8(%rax,%rdx,8), %rax	# x_15->fld[i_7].rtvec, D.15940
	movl	-56(%rbp), %edx	# j, tmp213
	movslq	%edx, %rdx	# tmp213, tmp212
	salq	$3, %rdx	#, tmp214
	addq	%rdx, %rax	# tmp214, tmp215
	leaq	8(%rax), %rdx	#, D.15931
	movq	-72(%rbp), %rax	# dest, tmp216
	movq	%rdx, %rsi	# D.15931,
	movq	%rax, %rdi	# tmp216,
	call	find_single_use_1	#
	movq	%rax, -40(%rbp)	# tmp217, this_result
.L135:
	.loc 1 821 0
	cmpq	$0, -48(%rbp)	#, result
	jne	.L136	#,
	.loc 1 822 0
	movq	-40(%rbp), %rax	# this_result, tmp218
	movq	%rax, -48(%rbp)	# tmp218, result
	jmp	.L137	#
.L136:
	.loc 1 823 0
	cmpq	$0, -40(%rbp)	#, this_result
	je	.L137	#,
	.loc 1 824 0
	movl	$0, %eax	#, D.15931
	jmp	.L114	#
.L137:
	.loc 1 811 0
	subl	$1, -56(%rbp)	#, j
.L132:
	.loc 1 811 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, j
	jns	.L138	#,
.L131:
.LBE12:
	.loc 1 790 0 is_stmt 1
	subl	$1, -60(%rbp)	#, i
.L125:
	.loc 1 790 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L139	#,
	.loc 1 829 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, D.15931
.L114:
	.loc 1 830 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	find_single_use_1, .-find_single_use_1
	.globl	find_single_use
	.type	find_single_use, @function
find_single_use:
.LFB18:
	.loc 1 855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# dest, dest
	movq	%rsi, -48(%rbp)	# insn, insn
	movq	%rdx, -56(%rbp)	# ploc, ploc
	.loc 1 875 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.60
	testl	%eax, %eax	# reload_completed.60
	jne	.L142	#,
	.loc 1 875 0 is_stmt 0 discriminator 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.61
	testl	%eax, %eax	# reload_in_progress.61
	jne	.L142	#,
	movq	-40(%rbp), %rax	# dest, tmp71
	movzwl	(%rax), %eax	# dest_6(D)->code, D.15942
	cmpw	$61, %ax	#, D.15942
	je	.L143	#,
.L142:
	.loc 1 876 0 is_stmt 1
	movl	$0, %eax	#, D.15941
	jmp	.L144	#
.L143:
	.loc 1 878 0
	movq	-48(%rbp), %rax	# insn, tmp72
	movq	%rax, %rdi	# tmp72,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp73, next
	jmp	.L145	#
.L153:
	.loc 1 881 0
	movq	-24(%rbp), %rax	# next, tmp74
	movzwl	(%rax), %eax	# next_1->code, D.15942
	movzwl	%ax, %eax	# D.15942, D.15943
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15944
	cmpb	$105, %al	#, D.15944
	jne	.L146	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# dest, tmp76
	movq	-24(%rbp), %rax	# next, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	dead_or_set_p	#
	testl	%eax, %eax	# D.15943
	je	.L146	#,
	.loc 1 883 0 is_stmt 1
	movq	-24(%rbp), %rax	# next, tmp78
	movq	48(%rax), %rax	# next_1->fld[5].rtx, tmp79
	movq	%rax, -16(%rbp)	# tmp79, link
	jmp	.L147	#
.L150:
	.loc 1 884 0
	movq	-16(%rbp), %rax	# link, tmp80
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.15945
	cmpq	-48(%rbp), %rax	# insn, D.15945
	jne	.L148	#,
	.loc 1 885 0
	jmp	.L149	#
.L148:
	.loc 1 883 0
	movq	-16(%rbp), %rax	# link, tmp81
	movq	16(%rax), %rax	# link_2->fld[1].rtx, tmp82
	movq	%rax, -16(%rbp)	# tmp82, link
.L147:
	.loc 1 883 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L150	#,
.L149:
	.loc 1 887 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, link
	je	.L146	#,
	.loc 1 889 0
	movq	-24(%rbp), %rax	# next, tmp83
	leaq	32(%rax), %rdx	#, D.15941
	movq	-40(%rbp), %rax	# dest, tmp84
	movq	%rdx, %rsi	# D.15941,
	movq	%rax, %rdi	# tmp84,
	call	find_single_use_1	#
	movq	%rax, -8(%rbp)	# tmp85, result
	.loc 1 890 0
	cmpq	$0, -56(%rbp)	#, ploc
	je	.L151	#,
	.loc 1 891 0
	movq	-56(%rbp), %rax	# ploc, tmp86
	movq	-24(%rbp), %rdx	# next, tmp87
	movq	%rdx, (%rax)	# tmp87, *ploc_20(D)
.L151:
	.loc 1 892 0
	movq	-8(%rbp), %rax	# result, D.15941
	jmp	.L144	#
.L146:
	.loc 1 880 0
	movq	-24(%rbp), %rax	# next, tmp88
	movq	%rax, %rdi	# tmp88,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp89, next
.L145:
	.loc 1 878 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, next
	je	.L152	#,
	.loc 1 879 0
	movq	-24(%rbp), %rax	# next, tmp90
	movzwl	(%rax), %eax	# next_1->code, D.15942
	cmpw	$36, %ax	#, D.15942
	jne	.L153	#,
.L152:
	.loc 1 896 0
	movl	$0, %eax	#, D.15941
.L144:
	.loc 1 897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_single_use, .-find_single_use
	.globl	general_operand
	.type	general_operand, @function
general_operand:
.LFB19:
	.loc 1 920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# op, op
	movl	%esi, -44(%rbp)	# mode, mode
	.loc 1 921 0
	movq	-40(%rbp), %rax	# op, tmp121
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	movzwl	%ax, %eax	# D.15947, tmp122
	movl	%eax, -20(%rbp)	# tmp122, code
	.loc 1 923 0
	cmpl	$0, -44(%rbp)	#, mode
	jne	.L155	#,
	.loc 1 924 0
	movq	-40(%rbp), %rax	# op, tmp123
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	movzbl	%al, %eax	# D.15948, tmp124
	movl	%eax, -44(%rbp)	# tmp124, mode
.L155:
	.loc 1 928 0
	movq	-40(%rbp), %rax	# op, tmp125
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	testb	%al, %al	# D.15948
	jne	.L156	#,
	.loc 1 928 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, mode
	je	.L156	#,
	.loc 1 929 0 is_stmt 1
	movl	-44(%rbp), %eax	# mode, mode.62
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15949
	cmpl	$1, %eax	#, D.15949
	je	.L156	#,
	.loc 1 930 0
	movl	-44(%rbp), %eax	# mode, mode.63
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15949
	cmpl	$3, %eax	#, D.15949
	je	.L156	#,
	.loc 1 931 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L156:
	.loc 1 933 0
	movq	-40(%rbp), %rax	# op, tmp128
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$54, %ax	#, D.15947
	jne	.L158	#,
	.loc 1 934 0
	movq	-40(%rbp), %rax	# op, tmp129
	movq	8(%rax), %rax	# op_7(D)->fld[0].rtwint, D.15950
	movl	-44(%rbp), %edx	# mode, tmp130
	movl	%edx, %esi	# tmp130,
	movq	%rax, %rdi	# D.15950,
	call	trunc_int_for_mode	#
	movq	-40(%rbp), %rdx	# op, tmp131
	movq	8(%rdx), %rdx	# op_7(D)->fld[0].rtwint, D.15950
	cmpq	%rdx, %rax	# D.15950, D.15950
	je	.L158	#,
	.loc 1 935 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L158:
	.loc 1 937 0
	movq	-40(%rbp), %rax	# op, tmp132
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$67, %ax	#, D.15947
	je	.L159	#,
	.loc 1 937 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op, tmp133
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$68, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp134
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$54, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp135
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$55, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp136
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$58, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp137
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$134, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp138
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$56, %ax	#, D.15947
	je	.L159	#,
	movq	-40(%rbp), %rax	# op, tmp139
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$140, %ax	#, D.15947
	jne	.L160	#,
.L159:
	.loc 1 938 0 is_stmt 1
	movq	-40(%rbp), %rax	# op, tmp140
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	.loc 1 943 0
	testb	%al, %al	# D.15948
	je	.L161	#,
	.loc 1 938 0
	movq	-40(%rbp), %rax	# op, tmp141
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15951
	cmpl	-44(%rbp), %eax	# mode, D.15951
	je	.L161	#,
	.loc 1 939 0
	cmpl	$0, -44(%rbp)	#, mode
	jne	.L162	#,
.L161:
	.loc 1 941 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.65
	testl	%eax, %eax	# flag_pic.65
	je	.L163	#,
	.loc 1 941 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op, tmp142
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$68, %ax	#, D.15947
	je	.L164	#,
	movq	-40(%rbp), %rax	# op, tmp143
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$67, %ax	#, D.15947
	je	.L164	#,
	movq	-40(%rbp), %rax	# op, tmp144
	movzwl	(%rax), %eax	# op_7(D)->code, D.15947
	cmpw	$58, %ax	#, D.15947
	jne	.L163	#,
	movq	-40(%rbp), %rax	# op, tmp145
	movq	%rax, %rdi	# tmp145,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.15946
	je	.L163	#,
.L164:
	.loc 1 941 0 discriminator 2
	movq	-40(%rbp), %rax	# op, tmp146
	movq	%rax, %rdi	# tmp146,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.15946
	je	.L162	#,
.L163:
	.loc 1 943 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.64
	jmp	.L165	#
.L162:
	.loc 1 943 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L165:
	.loc 1 938 0 is_stmt 1
	jmp	.L157	#
.L160:
	.loc 1 948 0
	movq	-40(%rbp), %rax	# op, tmp147
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15951
	cmpl	-44(%rbp), %eax	# mode, D.15951
	je	.L166	#,
	.loc 1 949 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L166:
	.loc 1 951 0
	cmpl	$63, -20(%rbp)	#, code
	jne	.L167	#,
.LBB13:
	.loc 1 953 0
	movq	-40(%rbp), %rax	# op, tmp148
	movq	8(%rax), %rax	# op_7(D)->fld[0].rtx, tmp149
	movq	%rax, -16(%rbp)	# tmp149, sub
	.loc 1 958 0
	movq	-16(%rbp), %rax	# sub, tmp150
	movzwl	(%rax), %eax	# sub_35->code, D.15947
	cmpw	$66, %ax	#, D.15947
	jne	.L168	#,
	.loc 1 959 0
	movl	-44(%rbp), %eax	# mode, mode.66
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15948
	movq	-16(%rbp), %rax	# sub, tmp152
	movzbl	2(%rax), %eax	# sub_35->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15946
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15948
	cmpb	%al, %dl	# D.15948, D.15948
	jbe	.L168	#,
	.loc 1 960 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L168:
	.loc 1 968 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.67
	testl	%eax, %eax	# reload_completed.67
	jne	.L169	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op, tmp154
	movl	16(%rax), %eax	# op_7(D)->fld[1].rtuint, D.15951
	testl	%eax, %eax	# D.15951
	je	.L169	#,
	.loc 1 969 0 is_stmt 1
	movq	-16(%rbp), %rax	# sub, tmp155
	movzwl	(%rax), %eax	# sub_35->code, D.15947
	cmpw	$66, %ax	#, D.15947
	jne	.L169	#,
	.loc 1 970 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L169:
	.loc 1 974 0
	movq	-40(%rbp), %rax	# op, tmp156
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15946
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15949
	cmpl	$2, %eax	#, D.15949
	jne	.L170	#,
	.loc 1 975 0
	movq	-40(%rbp), %rax	# op, tmp158
	movzbl	2(%rax), %eax	# op_7(D)->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15946
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15948
	movq	-16(%rbp), %rax	# sub, tmp160
	movzbl	2(%rax), %eax	# sub_35->mode, D.15948
	movzbl	%al, %eax	# D.15948, D.15946
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15948
	cmpb	%al, %dl	# D.15948, D.15948
	jbe	.L170	#,
	.loc 1 976 0
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L170:
	.loc 1 978 0
	movq	-16(%rbp), %rax	# sub, tmp162
	movq	%rax, -40(%rbp)	# tmp162, op
	.loc 1 979 0
	movq	-40(%rbp), %rax	# op, tmp163
	movzwl	(%rax), %eax	# op_57->code, D.15947
	movzwl	%ax, %eax	# D.15947, tmp164
	movl	%eax, -20(%rbp)	# tmp164, code
.L167:
.LBE13:
	.loc 1 982 0
	cmpl	$61, -20(%rbp)	#, code
	jne	.L171	#,
	.loc 1 984 0
	movq	-40(%rbp), %rax	# op, tmp165
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15951
	.loc 1 985 0
	cmpl	$52, %eax	#, D.15951
	ja	.L172	#,
	.loc 1 985 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# op, tmp166
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15951
	movl	%eax, %eax	# D.15951, tmp167
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15952
	testl	%eax, %eax	# D.15952
	je	.L173	#,
.L172:
	.loc 1 985 0 discriminator 1
	movl	$1, %eax	#, iftmp.68
	jmp	.L174	#
.L173:
	.loc 1 985 0 discriminator 3
	movl	$0, %eax	#, iftmp.68
.L174:
	.loc 1 984 0 is_stmt 1
	jmp	.L157	#
.L171:
	.loc 1 987 0
	cmpl	$66, -20(%rbp)	#, code
	jne	.L175	#,
.LBB14:
	.loc 1 989 0
	movq	-40(%rbp), %rax	# op, tmp168
	movq	8(%rax), %rax	# op_1->fld[0].rtx, tmp169
	movq	%rax, -8(%rbp)	# tmp169, y
	.loc 1 991 0
	movl	volatile_ok(%rip), %eax	# volatile_ok, volatile_ok.69
	testl	%eax, %eax	# volatile_ok.69
	jne	.L176	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op, tmp170
	movzbl	3(%rax), %eax	# *op_1, D.15948
	andl	$8, %eax	#, D.15948
	testb	%al, %al	# D.15948
	je	.L176	#,
	.loc 1 992 0 is_stmt 1
	movl	$0, %eax	#, D.15946
	jmp	.L157	#
.L176:
	.loc 1 994 0
	movq	-8(%rbp), %rax	# y, tmp171
	movzwl	(%rax), %eax	# y_66->code, D.15947
	cmpw	$70, %ax	#, D.15947
	jne	.L177	#,
	.loc 1 995 0
	movl	$1, %eax	#, D.15946
	jmp	.L157	#
.L177:
	.loc 1 998 0
	movq	-40(%rbp), %rax	# op, tmp172
	movzbl	2(%rax), %eax	# op_1->mode, D.15948
	movzbl	%al, %eax	# D.15948, tmp173
	movl	%eax, -44(%rbp)	# tmp173, mode
	.loc 1 999 0
	movq	-8(%rbp), %rcx	# y, tmp174
	movl	-44(%rbp), %eax	# mode, tmp175
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp174,
	movl	%eax, %edi	# tmp175,
	call	legitimate_address_p	#
	testl	%eax, %eax	# D.15946
	je	.L175	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	nop
.L178:
.LBE14:
	.loc 1 1010 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, D.15946
	jmp	.L157	#
.L175:
	.loc 1 1004 0
	cmpl	$70, -20(%rbp)	#, code
	jne	.L179	#,
	.loc 1 1005 0
	movl	$1, %eax	#, D.15946
	jmp	.L157	#
.L179:
	.loc 1 1007 0
	movl	$0, %eax	#, D.15946
.L157:
	.loc 1 1011 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	general_operand, .-general_operand
	.globl	address_operand
	.type	address_operand, @function
address_operand:
.LFB20:
	.loc 1 1023 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1024 0
	movq	-8(%rbp), %rdx	# op, tmp61
	movl	-12(%rbp), %eax	# mode, tmp62
	movq	%rdx, %rsi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	memory_address_p	#
	.loc 1 1025 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	address_operand, .-address_operand
	.globl	register_operand
	.type	register_operand, @function
register_operand:
.LFB21:
	.loc 1 1045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 1046 0
	movq	-24(%rbp), %rax	# op, tmp81
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.15955
	movzbl	%al, %eax	# D.15955, D.15956
	cmpl	-28(%rbp), %eax	# mode, D.15956
	je	.L183	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, mode
	je	.L183	#,
	.loc 1 1047 0 is_stmt 1
	movl	$0, %eax	#, D.15954
	jmp	.L184	#
.L183:
	.loc 1 1049 0
	movq	-24(%rbp), %rax	# op, tmp82
	movzwl	(%rax), %eax	# op_4(D)->code, D.15957
	cmpw	$63, %ax	#, D.15957
	jne	.L185	#,
.LBB15:
	.loc 1 1051 0
	movq	-24(%rbp), %rax	# op, tmp83
	movq	8(%rax), %rax	# op_4(D)->fld[0].rtx, tmp84
	movq	%rax, -8(%rbp)	# tmp84, sub
	.loc 1 1059 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.70
	testl	%eax, %eax	# reload_completed.70
	jne	.L186	#,
	.loc 1 1059 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sub, tmp85
	movzwl	(%rax), %eax	# sub_10->code, D.15957
	cmpw	$66, %ax	#, D.15957
	jne	.L186	#,
	.loc 1 1060 0 is_stmt 1
	movl	-28(%rbp), %edx	# mode, tmp86
	movq	-24(%rbp), %rax	# op, tmp87
	movl	%edx, %esi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	general_operand	#
	jmp	.L184	#
.L186:
	.loc 1 1076 0
	movq	-24(%rbp), %rax	# op, tmp88
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.15955
	movzbl	%al, %eax	# D.15955, D.15954
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15958
	cmpl	$2, %eax	#, D.15958
	jne	.L187	#,
	.loc 1 1077 0
	movq	-24(%rbp), %rax	# op, tmp90
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.15955
	movzbl	%al, %eax	# D.15955, D.15954
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15955
	movq	-8(%rbp), %rax	# sub, tmp92
	movzbl	2(%rax), %eax	# sub_10->mode, D.15955
	movzbl	%al, %eax	# D.15955, D.15954
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15955
	cmpb	%al, %dl	# D.15955, D.15955
	jbe	.L187	#,
	.loc 1 1078 0
	movl	$0, %eax	#, D.15954
	jmp	.L184	#
.L187:
	.loc 1 1080 0
	movq	-8(%rbp), %rax	# sub, tmp94
	movq	%rax, -24(%rbp)	# tmp94, op
.L185:
.LBE15:
	.loc 1 1085 0
	movq	-24(%rbp), %rax	# op, tmp95
	movzwl	(%rax), %eax	# op_1->code, D.15957
	cmpw	$70, %ax	#, D.15957
	jne	.L188	#,
	.loc 1 1086 0
	movl	$1, %eax	#, D.15954
	jmp	.L184	#
.L188:
	.loc 1 1090 0
	movq	-24(%rbp), %rax	# op, tmp96
	movzwl	(%rax), %eax	# op_1->code, D.15957
	.loc 1 1091 0
	cmpw	$61, %ax	#, D.15957
	jne	.L189	#,
	.loc 1 1091 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp97
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15956
	cmpl	$52, %eax	#, D.15956
	ja	.L190	#,
	.loc 1 1092 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp98
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15956
	movl	%eax, %eax	# D.15956, tmp99
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15959
	testl	%eax, %eax	# D.15959
	je	.L189	#,
.L190:
	.loc 1 1091 0 discriminator 3
	movl	$1, %eax	#, iftmp.71
	jmp	.L191	#
.L189:
	.loc 1 1091 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.71
.L191:
.L184:
	.loc 1 1093 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	register_operand, .-register_operand
	.globl	pmode_register_operand
	.type	pmode_register_operand, @function
pmode_register_operand:
.LFB22:
	.loc 1 1101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1102 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.73
	andl	$33554432, %eax	#, D.15960
	testl	%eax, %eax	# D.15960
	je	.L193	#,
	.loc 1 1102 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.72
	jmp	.L194	#
.L193:
	.loc 1 1102 0 discriminator 2
	movl	$4, %eax	#, iftmp.72
.L194:
	.loc 1 1102 0 discriminator 3
	movq	-8(%rbp), %rdx	# op, tmp64
	movl	%eax, %esi	# iftmp.72,
	movq	%rdx, %rdi	# tmp64,
	call	register_operand	#
	.loc 1 1103 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	pmode_register_operand, .-pmode_register_operand
	.globl	scratch_operand
	.type	scratch_operand, @function
scratch_operand:
.LFB23:
	.loc 1 1112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1113 0
	movq	-8(%rbp), %rax	# op, tmp67
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15962
	movzbl	%al, %eax	# D.15962, D.15963
	cmpl	-12(%rbp), %eax	# mode, D.15963
	je	.L197	#,
	.loc 1 1113 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L197	#,
	.loc 1 1114 0 is_stmt 1
	movl	$0, %eax	#, D.15961
	jmp	.L198	#
.L197:
	.loc 1 1116 0
	movq	-8(%rbp), %rax	# op, tmp68
	movzwl	(%rax), %eax	# op_3(D)->code, D.15964
	.loc 1 1117 0
	cmpw	$62, %ax	#, D.15964
	je	.L199	#,
	.loc 1 1117 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# op, tmp69
	movzwl	(%rax), %eax	# op_3(D)->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L200	#,
	.loc 1 1118 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp70
	movl	8(%rax), %eax	# op_3(D)->fld[0].rtuint, D.15963
	cmpl	$52, %eax	#, D.15963
	ja	.L200	#,
.L199:
	.loc 1 1117 0 discriminator 1
	movl	$1, %eax	#, iftmp.74
	jmp	.L201	#
.L200:
	.loc 1 1117 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.74
.L201:
.L198:
	.loc 1 1119 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	scratch_operand, .-scratch_operand
	.globl	immediate_operand
	.type	immediate_operand, @function
immediate_operand:
.LFB24:
	.loc 1 1130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1133 0
	movq	-8(%rbp), %rax	# op, tmp89
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15966
	testb	%al, %al	# D.15966
	jne	.L203	#,
	.loc 1 1133 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L203	#,
	.loc 1 1134 0 is_stmt 1
	movl	-12(%rbp), %eax	# mode, mode.75
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15967
	cmpl	$1, %eax	#, D.15967
	je	.L203	#,
	.loc 1 1135 0
	movl	-12(%rbp), %eax	# mode, mode.76
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15967
	cmpl	$3, %eax	#, D.15967
	je	.L203	#,
	.loc 1 1136 0
	movl	$0, %eax	#, D.15965
	jmp	.L204	#
.L203:
	.loc 1 1138 0
	movq	-8(%rbp), %rax	# op, tmp92
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$54, %ax	#, D.15968
	jne	.L205	#,
	.loc 1 1139 0
	movq	-8(%rbp), %rax	# op, tmp93
	movq	8(%rax), %rax	# op_3(D)->fld[0].rtwint, D.15969
	movl	-12(%rbp), %edx	# mode, tmp94
	movl	%edx, %esi	# tmp94,
	movq	%rax, %rdi	# D.15969,
	call	trunc_int_for_mode	#
	movq	-8(%rbp), %rdx	# op, tmp95
	movq	8(%rdx), %rdx	# op_3(D)->fld[0].rtwint, D.15969
	cmpq	%rdx, %rax	# D.15969, D.15969
	je	.L205	#,
	.loc 1 1140 0
	movl	$0, %eax	#, D.15965
	jmp	.L204	#
.L205:
	.loc 1 1145 0
	movq	-8(%rbp), %rax	# op, tmp96
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$140, %ax	#, D.15968
	jne	.L206	#,
	.loc 1 1146 0
	movl	$1, %eax	#, D.15965
	jmp	.L204	#
.L206:
	.loc 1 1148 0
	movq	-8(%rbp), %rax	# op, tmp97
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	.loc 1 1154 0
	cmpw	$67, %ax	#, D.15968
	je	.L207	#,
	.loc 1 1148 0
	movq	-8(%rbp), %rax	# op, tmp98
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$68, %ax	#, D.15968
	je	.L207	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp99
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$54, %ax	#, D.15968
	je	.L207	#,
	movq	-8(%rbp), %rax	# op, tmp100
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$55, %ax	#, D.15968
	je	.L207	#,
	movq	-8(%rbp), %rax	# op, tmp101
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$58, %ax	#, D.15968
	je	.L207	#,
	movq	-8(%rbp), %rax	# op, tmp102
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$134, %ax	#, D.15968
	je	.L207	#,
	movq	-8(%rbp), %rax	# op, tmp103
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$56, %ax	#, D.15968
	je	.L207	#,
	movq	-8(%rbp), %rax	# op, tmp104
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$140, %ax	#, D.15968
	jne	.L208	#,
.L207:
	.loc 1 1149 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp105
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15966
	movzbl	%al, %eax	# D.15966, D.15970
	cmpl	-12(%rbp), %eax	# mode, D.15970
	je	.L209	#,
	.loc 1 1149 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L209	#,
	.loc 1 1150 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp106
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15966
	testb	%al, %al	# D.15966
	jne	.L208	#,
.L209:
	.loc 1 1152 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.78
	testl	%eax, %eax	# flag_pic.78
	je	.L210	#,
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp107
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$68, %ax	#, D.15968
	je	.L211	#,
	movq	-8(%rbp), %rax	# op, tmp108
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$67, %ax	#, D.15968
	je	.L211	#,
	movq	-8(%rbp), %rax	# op, tmp109
	movzwl	(%rax), %eax	# op_3(D)->code, D.15968
	cmpw	$58, %ax	#, D.15968
	jne	.L210	#,
	movq	-8(%rbp), %rax	# op, tmp110
	movq	%rax, %rdi	# tmp110,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.15965
	je	.L210	#,
.L211:
	.loc 1 1152 0 discriminator 2
	movq	-8(%rbp), %rax	# op, tmp111
	movq	%rax, %rdi	# tmp111,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.15965
	je	.L208	#,
.L210:
	.loc 1 1154 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.77
	jmp	.L212	#
.L208:
	.loc 1 1154 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.77
.L212:
.L204:
	.loc 1 1155 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	immediate_operand, .-immediate_operand
	.globl	const_int_operand
	.type	const_int_operand, @function
const_int_operand:
.LFB25:
	.loc 1 1163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1164 0
	movq	-8(%rbp), %rax	# op, tmp65
	movzwl	(%rax), %eax	# op_2(D)->code, D.15972
	cmpw	$54, %ax	#, D.15972
	je	.L214	#,
	.loc 1 1165 0
	movl	$0, %eax	#, D.15971
	jmp	.L215	#
.L214:
	.loc 1 1167 0
	cmpl	$0, -12(%rbp)	#, mode
	je	.L216	#,
	.loc 1 1168 0
	movq	-8(%rbp), %rax	# op, tmp66
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtwint, D.15973
	movl	-12(%rbp), %edx	# mode, tmp67
	movl	%edx, %esi	# tmp67,
	movq	%rax, %rdi	# D.15973,
	call	trunc_int_for_mode	#
	movq	-8(%rbp), %rdx	# op, tmp68
	movq	8(%rdx), %rdx	# op_2(D)->fld[0].rtwint, D.15973
	cmpq	%rdx, %rax	# D.15973, D.15973
	je	.L216	#,
	.loc 1 1169 0
	movl	$0, %eax	#, D.15971
	jmp	.L215	#
.L216:
	.loc 1 1171 0
	movl	$1, %eax	#, D.15971
.L215:
	.loc 1 1172 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	const_int_operand, .-const_int_operand
	.globl	const_double_operand
	.type	const_double_operand, @function
const_double_operand:
.LFB26:
	.loc 1 1181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1184 0
	movq	-8(%rbp), %rax	# op, tmp72
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15975
	testb	%al, %al	# D.15975
	jne	.L218	#,
	.loc 1 1184 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L218	#,
	.loc 1 1185 0 is_stmt 1
	movl	-12(%rbp), %eax	# mode, mode.79
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15976
	cmpl	$1, %eax	#, D.15976
	je	.L218	#,
	.loc 1 1186 0
	movl	-12(%rbp), %eax	# mode, mode.80
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15976
	cmpl	$3, %eax	#, D.15976
	je	.L218	#,
	.loc 1 1187 0
	movl	$0, %eax	#, D.15974
	jmp	.L219	#
.L218:
	.loc 1 1189 0
	movq	-8(%rbp), %rax	# op, tmp75
	movzwl	(%rax), %eax	# op_3(D)->code, D.15977
	.loc 1 1190 0
	cmpw	$55, %ax	#, D.15977
	je	.L220	#,
	.loc 1 1189 0
	movq	-8(%rbp), %rax	# op, tmp76
	movzwl	(%rax), %eax	# op_3(D)->code, D.15977
	cmpw	$54, %ax	#, D.15977
	jne	.L221	#,
.L220:
	.loc 1 1190 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L222	#,
	.loc 1 1190 0 is_stmt 0 discriminator 3
	movq	-8(%rbp), %rax	# op, tmp77
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15975
	movzbl	%al, %eax	# D.15975, D.15978
	cmpl	-12(%rbp), %eax	# mode, D.15978
	je	.L222	#,
	.loc 1 1191 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp78
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.15975
	testb	%al, %al	# D.15975
	jne	.L221	#,
.L222:
	.loc 1 1190 0 discriminator 2
	movl	$1, %eax	#, iftmp.81
	jmp	.L223	#
.L221:
	.loc 1 1190 0 is_stmt 0
	movl	$0, %eax	#, iftmp.81
.L223:
.L219:
	.loc 1 1192 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	const_double_operand, .-const_double_operand
	.globl	nonimmediate_operand
	.type	nonimmediate_operand, @function
nonimmediate_operand:
.LFB27:
	.loc 1 1200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1201 0
	movl	-12(%rbp), %edx	# mode, tmp71
	movq	-8(%rbp), %rax	# op, tmp72
	movl	%edx, %esi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	general_operand	#
	testl	%eax, %eax	# D.15979
	je	.L225	#,
	.loc 1 1201 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp73
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$67, %ax	#, D.15980
	je	.L225	#,
	.loc 1 1201 0 discriminator 3
	movq	-8(%rbp), %rax	# op, tmp74
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$68, %ax	#, D.15980
	je	.L225	#,
	.loc 1 1201 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp75
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$54, %ax	#, D.15980
	je	.L225	#,
	movq	-8(%rbp), %rax	# op, tmp76
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$55, %ax	#, D.15980
	je	.L225	#,
	movq	-8(%rbp), %rax	# op, tmp77
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$58, %ax	#, D.15980
	je	.L225	#,
	movq	-8(%rbp), %rax	# op, tmp78
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$134, %ax	#, D.15980
	je	.L225	#,
	movq	-8(%rbp), %rax	# op, tmp79
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$56, %ax	#, D.15980
	je	.L225	#,
	movq	-8(%rbp), %rax	# op, tmp80
	movzwl	(%rax), %eax	# op_2(D)->code, D.15980
	cmpw	$140, %ax	#, D.15980
	je	.L225	#,
	movl	$1, %eax	#, iftmp.82
	jmp	.L226	#
.L225:
	.loc 1 1201 0 discriminator 2
	movl	$0, %eax	#, iftmp.82
.L226:
	.loc 1 1202 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	nonimmediate_operand, .-nonimmediate_operand
	.globl	nonmemory_operand
	.type	nonmemory_operand, @function
nonmemory_operand:
.LFB28:
	.loc 1 1210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1211 0
	movq	-8(%rbp), %rax	# op, tmp99
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$67, %ax	#, D.15982
	je	.L229	#,
	.loc 1 1211 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp100
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$68, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp101
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$54, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp102
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$55, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp103
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$58, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp104
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$134, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp105
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$56, %ax	#, D.15982
	je	.L229	#,
	movq	-8(%rbp), %rax	# op, tmp106
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$140, %ax	#, D.15982
	jne	.L230	#,
.L229:
	.loc 1 1215 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp107
	movzbl	2(%rax), %eax	# op_5(D)->mode, D.15983
	testb	%al, %al	# D.15983
	jne	.L231	#,
	.loc 1 1215 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L231	#,
	.loc 1 1216 0 is_stmt 1
	movl	-12(%rbp), %eax	# mode, mode.83
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15987
	cmpl	$1, %eax	#, D.15987
	je	.L231	#,
	.loc 1 1217 0
	movl	-12(%rbp), %eax	# mode, mode.84
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15987
	cmpl	$3, %eax	#, D.15987
	je	.L231	#,
	.loc 1 1218 0
	movl	$0, %eax	#, D.15981
	jmp	.L232	#
.L231:
	.loc 1 1220 0
	movq	-8(%rbp), %rax	# op, tmp110
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$54, %ax	#, D.15982
	jne	.L233	#,
	.loc 1 1221 0
	movq	-8(%rbp), %rax	# op, tmp111
	movq	8(%rax), %rax	# op_5(D)->fld[0].rtwint, D.15988
	movl	-12(%rbp), %edx	# mode, tmp112
	movl	%edx, %esi	# tmp112,
	movq	%rax, %rdi	# D.15988,
	call	trunc_int_for_mode	#
	movq	-8(%rbp), %rdx	# op, tmp113
	movq	8(%rdx), %rdx	# op_5(D)->fld[0].rtwint, D.15988
	cmpq	%rdx, %rax	# D.15988, D.15988
	je	.L233	#,
	.loc 1 1222 0
	movl	$0, %eax	#, D.15981
	jmp	.L232	#
.L233:
	.loc 1 1224 0
	movq	-8(%rbp), %rax	# op, tmp114
	movzbl	2(%rax), %eax	# op_5(D)->mode, D.15983
	.loc 1 1229 0
	testb	%al, %al	# D.15983
	je	.L234	#,
	.loc 1 1224 0
	movq	-8(%rbp), %rax	# op, tmp115
	movzbl	2(%rax), %eax	# op_5(D)->mode, D.15983
	movzbl	%al, %eax	# D.15983, D.15984
	cmpl	-12(%rbp), %eax	# mode, D.15984
	je	.L234	#,
	.loc 1 1225 0
	cmpl	$0, -12(%rbp)	#, mode
	jne	.L235	#,
.L234:
	.loc 1 1227 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.86
	testl	%eax, %eax	# flag_pic.86
	je	.L236	#,
	.loc 1 1227 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp116
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$68, %ax	#, D.15982
	je	.L237	#,
	movq	-8(%rbp), %rax	# op, tmp117
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$67, %ax	#, D.15982
	je	.L237	#,
	movq	-8(%rbp), %rax	# op, tmp118
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$58, %ax	#, D.15982
	jne	.L236	#,
	movq	-8(%rbp), %rax	# op, tmp119
	movq	%rax, %rdi	# tmp119,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.15981
	je	.L236	#,
.L237:
	.loc 1 1227 0 discriminator 2
	movq	-8(%rbp), %rax	# op, tmp120
	movq	%rax, %rdi	# tmp120,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.15981
	je	.L235	#,
.L236:
	.loc 1 1229 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.85
	jmp	.L238	#
.L235:
	.loc 1 1229 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.85
.L238:
	.loc 1 1224 0 is_stmt 1
	jmp	.L232	#
.L230:
	.loc 1 1232 0
	movq	-8(%rbp), %rax	# op, tmp121
	movzbl	2(%rax), %eax	# op_5(D)->mode, D.15983
	movzbl	%al, %eax	# D.15983, D.15984
	cmpl	-12(%rbp), %eax	# mode, D.15984
	je	.L239	#,
	.loc 1 1232 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, mode
	je	.L239	#,
	.loc 1 1233 0 is_stmt 1
	movl	$0, %eax	#, D.15981
	jmp	.L232	#
.L239:
	.loc 1 1235 0
	movq	-8(%rbp), %rax	# op, tmp122
	movzwl	(%rax), %eax	# op_5(D)->code, D.15982
	cmpw	$63, %ax	#, D.15982
	jne	.L240	#,
	.loc 1 1243 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.87
	testl	%eax, %eax	# reload_completed.87
	jne	.L241	#,
	.loc 1 1243 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp123
	movq	8(%rax), %rax	# op_5(D)->fld[0].rtx, D.15985
	movzwl	(%rax), %eax	# _20->code, D.15982
	cmpw	$66, %ax	#, D.15982
	jne	.L241	#,
	.loc 1 1244 0 is_stmt 1
	movl	-12(%rbp), %edx	# mode, tmp124
	movq	-8(%rbp), %rax	# op, tmp125
	movl	%edx, %esi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	general_operand	#
	jmp	.L232	#
.L241:
	.loc 1 1245 0
	movq	-8(%rbp), %rax	# op, tmp126
	movq	8(%rax), %rax	# op_5(D)->fld[0].rtx, tmp127
	movq	%rax, -8(%rbp)	# tmp127, op
.L240:
	.loc 1 1250 0
	movq	-8(%rbp), %rax	# op, tmp128
	movzwl	(%rax), %eax	# op_1->code, D.15982
	.loc 1 1251 0
	cmpw	$61, %ax	#, D.15982
	jne	.L242	#,
	.loc 1 1251 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp129
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15984
	cmpl	$52, %eax	#, D.15984
	ja	.L243	#,
	.loc 1 1252 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp130
	movl	8(%rax), %eax	# op_1->fld[0].rtuint, D.15984
	movl	%eax, %eax	# D.15984, tmp131
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15986
	testl	%eax, %eax	# D.15986
	je	.L242	#,
.L243:
	.loc 1 1251 0 discriminator 3
	movl	$1, %eax	#, iftmp.88
	jmp	.L244	#
.L242:
	.loc 1 1251 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.88
.L244:
.L232:
	.loc 1 1253 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	nonmemory_operand, .-nonmemory_operand
	.globl	push_operand
	.type	push_operand, @function
push_operand:
.LFB29:
	.loc 1 1265 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 1266 0
	movl	-28(%rbp), %eax	# mode, mode.89
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15990
	movzbl	%al, %eax	# D.15990, tmp94
	movl	%eax, -4(%rbp)	# tmp94, rounded_size
	.loc 1 1269 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.91
	andl	$33554432, %eax	#, D.15989
	testl	%eax, %eax	# D.15989
	je	.L246	#,
	.loc 1 1269 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# rounded_size, tmp95
	addl	$7, %eax	#, D.15991
	andl	$-8, %eax	#, iftmp.90
	jmp	.L247	#
.L246:
	.loc 1 1269 0 discriminator 2
	movl	-4(%rbp), %eax	# rounded_size, tmp96
	addl	$1, %eax	#, D.15991
	andl	$-2, %eax	#, iftmp.90
.L247:
	.loc 1 1269 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.90, rounded_size
	.loc 1 1272 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# op, tmp97
	movzwl	(%rax), %eax	# op_14(D)->code, D.15992
	cmpw	$66, %ax	#, D.15992
	je	.L248	#,
	.loc 1 1273 0
	movl	$0, %eax	#, D.15989
	jmp	.L249	#
.L248:
	.loc 1 1275 0
	cmpl	$0, -28(%rbp)	#, mode
	je	.L250	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp98
	movzbl	2(%rax), %eax	# op_14(D)->mode, D.15990
	movzbl	%al, %eax	# D.15990, D.15991
	cmpl	-28(%rbp), %eax	# mode, D.15991
	je	.L250	#,
	.loc 1 1276 0 is_stmt 1
	movl	$0, %eax	#, D.15989
	jmp	.L249	#
.L250:
	.loc 1 1278 0
	movq	-24(%rbp), %rax	# op, tmp99
	movq	8(%rax), %rax	# op_14(D)->fld[0].rtx, tmp100
	movq	%rax, -24(%rbp)	# tmp100, op
	.loc 1 1280 0
	movl	-28(%rbp), %eax	# mode, mode.92
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15990
	movzbl	%al, %eax	# D.15990, D.15991
	cmpl	-4(%rbp), %eax	# rounded_size, D.15991
	jne	.L251	#,
	.loc 1 1282 0
	movq	-24(%rbp), %rax	# op, tmp102
	movzwl	(%rax), %eax	# op_20->code, D.15992
	cmpw	$96, %ax	#, D.15992
	je	.L252	#,
	.loc 1 1283 0
	movl	$0, %eax	#, D.15989
	jmp	.L249	#
.L251:
	.loc 1 1287 0
	movq	-24(%rbp), %rax	# op, tmp103
	movzwl	(%rax), %eax	# op_20->code, D.15992
	cmpw	$100, %ax	#, D.15992
	jne	.L253	#,
	.loc 1 1288 0
	movq	-24(%rbp), %rax	# op, tmp104
	movq	16(%rax), %rax	# op_20->fld[1].rtx, D.15993
	movzwl	(%rax), %eax	# _27->code, D.15992
	cmpw	$75, %ax	#, D.15992
	jne	.L253	#,
	.loc 1 1289 0
	movq	-24(%rbp), %rax	# op, tmp105
	movq	16(%rax), %rax	# op_20->fld[1].rtx, D.15993
	movq	8(%rax), %rdx	# _29->fld[0].rtx, D.15993
	movq	-24(%rbp), %rax	# op, tmp106
	movq	8(%rax), %rax	# op_20->fld[0].rtx, D.15993
	cmpq	%rax, %rdx	# D.15993, D.15993
	jne	.L253	#,
	.loc 1 1290 0
	movq	-24(%rbp), %rax	# op, tmp107
	movq	16(%rax), %rax	# op_20->fld[1].rtx, D.15993
	movq	16(%rax), %rax	# _32->fld[1].rtx, D.15993
	movzwl	(%rax), %eax	# _33->code, D.15992
	cmpw	$54, %ax	#, D.15992
	jne	.L253	#,
	.loc 1 1292 0
	movq	-24(%rbp), %rax	# op, tmp108
	movq	16(%rax), %rax	# op_20->fld[1].rtx, D.15993
	movq	16(%rax), %rax	# _35->fld[1].rtx, D.15993
	movq	8(%rax), %rdx	# _36->fld[0].rtwint, D.15994
	movl	-4(%rbp), %eax	# rounded_size, rounded_size.93
	negl	%eax	# D.15989
	cltq
	cmpq	%rax, %rdx	# D.15994, D.15994
	je	.L252	#,
.L253:
	.loc 1 1297 0
	movl	$0, %eax	#, D.15989
	jmp	.L249	#
.L252:
	.loc 1 1300 0
	movq	-24(%rbp), %rax	# op, tmp109
	movq	8(%rax), %rdx	# op_20->fld[0].rtx, D.15993
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.15993
	cmpq	%rax, %rdx	# D.15993, D.15993
	sete	%al	#, D.15995
	movzbl	%al, %eax	# D.15995, D.15989
.L249:
	.loc 1 1301 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	push_operand, .-push_operand
	.globl	pop_operand
	.type	pop_operand, @function
pop_operand:
.LFB30:
	.loc 1 1313 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1314 0
	movq	-8(%rbp), %rax	# op, tmp68
	movzwl	(%rax), %eax	# op_2(D)->code, D.15997
	cmpw	$66, %ax	#, D.15997
	je	.L255	#,
	.loc 1 1315 0
	movl	$0, %eax	#, D.15996
	jmp	.L256	#
.L255:
	.loc 1 1317 0
	cmpl	$0, -12(%rbp)	#, mode
	je	.L257	#,
	.loc 1 1317 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp69
	movzbl	2(%rax), %eax	# op_2(D)->mode, D.15998
	movzbl	%al, %eax	# D.15998, D.15999
	cmpl	-12(%rbp), %eax	# mode, D.15999
	je	.L257	#,
	.loc 1 1318 0 is_stmt 1
	movl	$0, %eax	#, D.15996
	jmp	.L256	#
.L257:
	.loc 1 1320 0
	movq	-8(%rbp), %rax	# op, tmp70
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, op
	.loc 1 1322 0
	movq	-8(%rbp), %rax	# op, tmp72
	movzwl	(%rax), %eax	# op_9->code, D.15997
	cmpw	$99, %ax	#, D.15997
	je	.L258	#,
	.loc 1 1323 0
	movl	$0, %eax	#, D.15996
	jmp	.L256	#
.L258:
	.loc 1 1325 0
	movq	-8(%rbp), %rax	# op, tmp73
	movq	8(%rax), %rdx	# op_9->fld[0].rtx, D.16000
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.16000
	cmpq	%rax, %rdx	# D.16000, D.16000
	sete	%al	#, D.16001
	movzbl	%al, %eax	# D.16001, D.15996
.L256:
	.loc 1 1326 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	pop_operand, .-pop_operand
	.globl	memory_address_p
	.type	memory_address_p, @function
memory_address_p:
.LFB31:
	.loc 1 1334 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 1335 0
	movq	-16(%rbp), %rax	# addr, tmp63
	movzwl	(%rax), %eax	# addr_2(D)->code, D.16003
	cmpw	$70, %ax	#, D.16003
	jne	.L260	#,
	.loc 1 1336 0
	movl	$1, %eax	#, D.16002
	jmp	.L261	#
.L260:
	.loc 1 1338 0
	movq	-16(%rbp), %rcx	# addr, tmp64
	movl	-4(%rbp), %eax	# mode, tmp65
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp64,
	movl	%eax, %edi	# tmp65,
	call	legitimate_address_p	#
	testl	%eax, %eax	# D.16002
	je	.L262	#,
	.loc 1 1338 0 is_stmt 0 discriminator 1
	nop
.L263:
	.loc 1 1342 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, D.16002
	jmp	.L261	#
.L262:
	.loc 1 1339 0
	movl	$0, %eax	#, D.16002
.L261:
	.loc 1 1343 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	memory_address_p, .-memory_address_p
	.globl	memory_operand
	.type	memory_operand, @function
memory_operand:
.LFB32:
	.loc 1 1355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 1358 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.94
	testl	%eax, %eax	# reload_completed.94
	jne	.L265	#,
	.loc 1 1361 0
	movq	-24(%rbp), %rax	# op, tmp71
	movzwl	(%rax), %eax	# op_6(D)->code, D.16005
	cmpw	$66, %ax	#, D.16005
	jne	.L266	#,
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %edx	# mode, tmp72
	movq	-24(%rbp), %rax	# op, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	general_operand	#
	testl	%eax, %eax	# D.16004
	je	.L266	#,
	.loc 1 1361 0 discriminator 3
	movl	$1, %eax	#, iftmp.95
	jmp	.L267	#
.L266:
	.loc 1 1361 0 discriminator 2
	movl	$0, %eax	#, iftmp.95
.L267:
	.loc 1 1361 0 discriminator 4
	jmp	.L268	#
.L265:
	.loc 1 1363 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, mode
	je	.L269	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp74
	movzbl	2(%rax), %eax	# op_6(D)->mode, D.16006
	movzbl	%al, %eax	# D.16006, D.16007
	cmpl	-28(%rbp), %eax	# mode, D.16007
	je	.L269	#,
	.loc 1 1364 0 is_stmt 1
	movl	$0, %eax	#, D.16004
	jmp	.L268	#
.L269:
	.loc 1 1366 0
	movq	-24(%rbp), %rax	# op, tmp75
	movq	%rax, -8(%rbp)	# tmp75, inner
	.loc 1 1367 0
	movq	-8(%rbp), %rax	# inner, tmp76
	movzwl	(%rax), %eax	# inner_16->code, D.16005
	cmpw	$63, %ax	#, D.16005
	jne	.L270	#,
	.loc 1 1368 0
	movq	-8(%rbp), %rax	# inner, tmp77
	movq	8(%rax), %rax	# inner_16->fld[0].rtx, tmp78
	movq	%rax, -8(%rbp)	# tmp78, inner
.L270:
	.loc 1 1370 0
	movq	-8(%rbp), %rax	# inner, tmp79
	movzwl	(%rax), %eax	# inner_1->code, D.16005
	cmpw	$66, %ax	#, D.16005
	jne	.L271	#,
	.loc 1 1370 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %edx	# mode, tmp80
	movq	-24(%rbp), %rax	# op, tmp81
	movl	%edx, %esi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	general_operand	#
	testl	%eax, %eax	# D.16004
	je	.L271	#,
	.loc 1 1370 0 discriminator 3
	movl	$1, %eax	#, iftmp.96
	jmp	.L272	#
.L271:
	.loc 1 1370 0 discriminator 2
	movl	$0, %eax	#, iftmp.96
.L272:
.L268:
	.loc 1 1371 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	memory_operand, .-memory_operand
	.globl	indirect_operand
	.type	indirect_operand, @function
indirect_operand:
.LFB33:
	.loc 1 1380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 1382 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.97
	testl	%eax, %eax	# reload_completed.97
	jne	.L274	#,
	.loc 1 1383 0
	movq	-24(%rbp), %rax	# op, tmp98
	movzwl	(%rax), %eax	# op_8(D)->code, D.16009
	cmpw	$63, %ax	#, D.16009
	jne	.L274	#,
	.loc 1 1383 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp99
	movq	8(%rax), %rax	# op_8(D)->fld[0].rtx, D.16010
	movzwl	(%rax), %eax	# _10->code, D.16009
	cmpw	$66, %ax	#, D.16009
	jne	.L274	#,
.LBB16:
	.loc 1 1385 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp100
	movl	16(%rax), %eax	# op_8(D)->fld[1].rtuint, D.16011
	movl	%eax, -12(%rbp)	# D.16011, offset
	.loc 1 1386 0
	movq	-24(%rbp), %rax	# op, tmp101
	movq	8(%rax), %rax	# op_8(D)->fld[0].rtx, tmp102
	movq	%rax, -8(%rbp)	# tmp102, inner
	.loc 1 1388 0
	cmpl	$0, -28(%rbp)	#, mode
	je	.L275	#,
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp103
	movzbl	2(%rax), %eax	# op_8(D)->mode, D.16012
	movzbl	%al, %eax	# D.16012, D.16011
	cmpl	-28(%rbp), %eax	# mode, D.16011
	je	.L275	#,
	.loc 1 1389 0 is_stmt 1
	movl	$0, %eax	#, D.16008
	jmp	.L276	#
.L275:
	.loc 1 1397 0
	cmpl	$0, -12(%rbp)	#, offset
	jne	.L277	#,
	.loc 1 1396 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.100
	andl	$33554432, %eax	#, D.16008
	testl	%eax, %eax	# D.16008
	je	.L278	#,
	.loc 1 1396 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.99
	jmp	.L279	#
.L278:
	.loc 1 1396 0 discriminator 2
	movl	$4, %eax	#, iftmp.99
.L279:
	.loc 1 1396 0 discriminator 3
	movq	-8(%rbp), %rdx	# inner, tmp104
	movq	8(%rdx), %rdx	# inner_14->fld[0].rtx, D.16010
	movl	%eax, %esi	# iftmp.99,
	movq	%rdx, %rdi	# D.16010,
	call	general_operand	#
	testl	%eax, %eax	# D.16008
	jne	.L280	#,
.L277:
	.loc 1 1397 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# inner, tmp105
	movq	8(%rax), %rax	# inner_14->fld[0].rtx, D.16010
	movzwl	(%rax), %eax	# _25->code, D.16009
	cmpw	$75, %ax	#, D.16009
	jne	.L281	#,
	.loc 1 1398 0
	movq	-8(%rbp), %rax	# inner, tmp106
	movq	8(%rax), %rax	# inner_14->fld[0].rtx, D.16010
	movq	16(%rax), %rax	# _27->fld[1].rtx, D.16010
	movzwl	(%rax), %eax	# _28->code, D.16009
	cmpw	$54, %ax	#, D.16009
	jne	.L281	#,
	.loc 1 1399 0
	movq	-8(%rbp), %rax	# inner, tmp107
	movq	8(%rax), %rax	# inner_14->fld[0].rtx, D.16010
	movq	16(%rax), %rax	# _30->fld[1].rtx, D.16010
	movq	8(%rax), %rdx	# _31->fld[0].rtwint, D.16013
	movl	-12(%rbp), %eax	# offset, tmp108
	negl	%eax	# D.16008
	cltq
	cmpq	%rax, %rdx	# D.16013, D.16013
	jne	.L281	#,
	.loc 1 1400 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.102
	andl	$33554432, %eax	#, D.16008
	testl	%eax, %eax	# D.16008
	je	.L282	#,
	.loc 1 1400 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.101
	jmp	.L283	#
.L282:
	.loc 1 1400 0 discriminator 2
	movl	$4, %eax	#, iftmp.101
.L283:
	.loc 1 1400 0 discriminator 3
	movq	-8(%rbp), %rdx	# inner, tmp109
	movq	8(%rdx), %rdx	# inner_14->fld[0].rtx, D.16010
	movq	8(%rdx), %rdx	# _39->fld[0].rtx, D.16010
	movl	%eax, %esi	# iftmp.101,
	movq	%rdx, %rdi	# D.16010,
	call	general_operand	#
	testl	%eax, %eax	# D.16008
	je	.L281	#,
.L280:
	.loc 1 1397 0 is_stmt 1
	movl	$1, %eax	#, iftmp.98
	jmp	.L284	#
.L281:
	.loc 1 1397 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.98
.L284:
	.loc 1 1396 0 is_stmt 1
	jmp	.L276	#
.L274:
.LBE16:
	.loc 1 1403 0
	movq	-24(%rbp), %rax	# op, tmp110
	movzwl	(%rax), %eax	# op_8(D)->code, D.16009
	.loc 1 1405 0
	cmpw	$66, %ax	#, D.16009
	jne	.L285	#,
	.loc 1 1404 0
	movl	-28(%rbp), %edx	# mode, tmp111
	movq	-24(%rbp), %rax	# op, tmp112
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	memory_operand	#
	testl	%eax, %eax	# D.16008
	je	.L285	#,
	.loc 1 1405 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.105
	andl	$33554432, %eax	#, D.16008
	testl	%eax, %eax	# D.16008
	je	.L286	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.104
	jmp	.L287	#
.L286:
	.loc 1 1405 0 discriminator 2
	movl	$4, %eax	#, iftmp.104
.L287:
	.loc 1 1405 0 discriminator 3
	movq	-24(%rbp), %rdx	# op, tmp113
	movq	8(%rdx), %rdx	# op_8(D)->fld[0].rtx, D.16010
	movl	%eax, %esi	# iftmp.104,
	movq	%rdx, %rdi	# D.16010,
	call	general_operand	#
	testl	%eax, %eax	# D.16008
	je	.L285	#,
	.loc 1 1405 0 discriminator 2
	movl	$1, %eax	#, iftmp.103
	jmp	.L288	#
.L285:
	.loc 1 1405 0 discriminator 1
	movl	$0, %eax	#, iftmp.103
.L288:
.L276:
	.loc 1 1406 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	indirect_operand, .-indirect_operand
	.globl	comparison_operator
	.type	comparison_operator, @function
comparison_operator:
.LFB34:
	.loc 1 1415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# op, op
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 1417 0
	cmpl	$0, -12(%rbp)	#, mode
	je	.L290	#,
	.loc 1 1416 0
	movq	-8(%rbp), %rax	# op, tmp67
	movzbl	2(%rax), %eax	# op_3(D)->mode, D.16014
	movzbl	%al, %eax	# D.16014, D.16015
	cmpl	-12(%rbp), %eax	# mode, D.16015
	jne	.L291	#,
.L290:
	.loc 1 1417 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp68
	movzwl	(%rax), %eax	# op_3(D)->code, D.16016
	movzwl	%ax, %eax	# D.16016, D.16017
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16018
	cmpb	$60, %al	#, D.16018
	jne	.L291	#,
	.loc 1 1417 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.106
	jmp	.L292	#
.L291:
	.loc 1 1417 0 discriminator 3
	movl	$0, %eax	#, iftmp.106
.L292:
	.loc 1 1418 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	comparison_operator, .-comparison_operator
	.globl	asm_noperands
	.type	asm_noperands, @function
asm_noperands:
.LFB35:
	.loc 1 1427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# body, body
	.loc 1 1428 0
	movq	-40(%rbp), %rax	# body, tmp111
	movzwl	(%rax), %eax	# body_5(D)->code, D.16020
	movzwl	%ax, %eax	# D.16020, D.16021
	cmpl	$41, %eax	#, D.16021
	je	.L296	#,
	cmpl	$47, %eax	#, D.16021
	je	.L297	#,
	cmpl	$39, %eax	#, D.16021
	je	.L298	#,
	jmp	.L316	#
.L296:
	.loc 1 1432 0
	movq	-40(%rbp), %rax	# body, tmp112
	movq	32(%rax), %rax	# body_5(D)->fld[3].rtvec, D.16022
	movl	(%rax), %eax	# _8->num_elem, D.16019
	jmp	.L299	#
.L297:
	.loc 1 1434 0
	movq	-40(%rbp), %rax	# body, tmp113
	movq	16(%rax), %rax	# body_5(D)->fld[1].rtx, D.16023
	movzwl	(%rax), %eax	# _10->code, D.16020
	cmpw	$41, %ax	#, D.16020
	jne	.L300	#,
	.loc 1 1436 0
	movq	-40(%rbp), %rax	# body, tmp114
	movq	16(%rax), %rax	# body_5(D)->fld[1].rtx, D.16023
	movq	32(%rax), %rax	# _12->fld[3].rtvec, D.16022
	movl	(%rax), %eax	# _13->num_elem, D.16019
	addl	$1, %eax	#, D.16019
	jmp	.L299	#
.L300:
	.loc 1 1438 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L298:
	.loc 1 1440 0
	movq	-40(%rbp), %rax	# body, tmp115
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _17->elem, D.16023
	movzwl	(%rax), %eax	# _18->code, D.16020
	cmpw	$47, %ax	#, D.16020
	jne	.L301	#,
	.loc 1 1441 0
	movq	-40(%rbp), %rax	# body, tmp116
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _20->elem, D.16023
	movq	16(%rax), %rax	# _21->fld[1].rtx, D.16023
	movzwl	(%rax), %eax	# _22->code, D.16020
	cmpw	$41, %ax	#, D.16020
	jne	.L301	#,
.LBB17:
	.loc 1 1449 0
	movq	-40(%rbp), %rax	# body, tmp117
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	(%rax), %eax	# _24->num_elem, tmp118
	movl	%eax, -20(%rbp)	# tmp118, i
	jmp	.L302	#
.L306:
	.loc 1 1451 0
	movq	-40(%rbp), %rax	# body, tmp119
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	-20(%rbp), %edx	# i, tmp120
	subl	$1, %edx	#, D.16019
	movslq	%edx, %rdx	# D.16019, tmp121
	movq	8(%rax,%rdx,8), %rax	# _26->elem, D.16023
	movzwl	(%rax), %eax	# _28->code, D.16020
	cmpw	$47, %ax	#, D.16020
	jne	.L303	#,
	.loc 1 1452 0
	jmp	.L304	#
.L303:
	.loc 1 1453 0
	movq	-40(%rbp), %rax	# body, tmp122
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	-20(%rbp), %edx	# i, tmp123
	subl	$1, %edx	#, D.16019
	movslq	%edx, %rdx	# D.16019, tmp124
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.16023
	movzwl	(%rax), %eax	# _32->code, D.16020
	cmpw	$49, %ax	#, D.16020
	je	.L305	#,
	.loc 1 1454 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L305:
	.loc 1 1449 0
	subl	$1, -20(%rbp)	#, i
.L302:
	.loc 1 1449 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jg	.L306	#,
.L304:
	.loc 1 1458 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp125
	movl	%eax, -12(%rbp)	# tmp125, n_sets
	.loc 1 1463 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L307	#
.L311:
.LBB18:
	.loc 1 1465 0
	movq	-40(%rbp), %rax	# body, tmp126
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	-20(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	movq	8(%rax,%rdx,8), %rax	# _38->elem, tmp129
	movq	%rax, -8(%rbp)	# tmp129, elt
	.loc 1 1466 0
	movq	-8(%rbp), %rax	# elt, tmp130
	movzwl	(%rax), %eax	# elt_39->code, D.16020
	cmpw	$47, %ax	#, D.16020
	je	.L308	#,
	.loc 1 1467 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L308:
	.loc 1 1468 0
	movq	-8(%rbp), %rax	# elt, tmp131
	movq	16(%rax), %rax	# elt_39->fld[1].rtx, D.16023
	movzwl	(%rax), %eax	# _42->code, D.16020
	cmpw	$41, %ax	#, D.16020
	je	.L309	#,
	.loc 1 1469 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L309:
	.loc 1 1472 0
	movq	-8(%rbp), %rax	# elt, tmp132
	movq	16(%rax), %rax	# elt_39->fld[1].rtx, D.16023
	movq	32(%rax), %rdx	# _45->fld[3].rtvec, D.16022
	.loc 1 1473 0
	movq	-40(%rbp), %rax	# body, tmp133
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _47->elem, D.16023
	movq	16(%rax), %rax	# _48->fld[1].rtx, D.16023
	movq	32(%rax), %rax	# _49->fld[3].rtvec, D.16022
	.loc 1 1472 0
	cmpq	%rax, %rdx	# D.16022, D.16022
	je	.L310	#,
	.loc 1 1474 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L310:
.LBE18:
	.loc 1 1463 0
	addl	$1, -20(%rbp)	#, i
.L307:
	.loc 1 1463 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp134
	cmpl	-12(%rbp), %eax	# n_sets, tmp134
	jl	.L311	#,
	.loc 1 1476 0 is_stmt 1
	movq	-40(%rbp), %rax	# body, tmp135
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _53->elem, D.16023
	movq	16(%rax), %rax	# _54->fld[1].rtx, D.16023
	movq	32(%rax), %rax	# _55->fld[3].rtvec, D.16022
	movl	(%rax), %edx	# _56->num_elem, D.16019
	movl	-12(%rbp), %eax	# n_sets, tmp136
	addl	%edx, %eax	# D.16019, D.16019
	jmp	.L299	#
.L301:
.LBE17:
	.loc 1 1479 0
	movq	-40(%rbp), %rax	# body, tmp137
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _59->elem, D.16023
	movzwl	(%rax), %eax	# _60->code, D.16020
	cmpw	$41, %ax	#, D.16020
	jne	.L312	#,
.LBB19:
	.loc 1 1486 0
	movq	-40(%rbp), %rax	# body, tmp138
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	(%rax), %eax	# _62->num_elem, D.16019
	subl	$1, %eax	#, tmp139
	movl	%eax, -16(%rbp)	# tmp139, i
	jmp	.L313	#
.L315:
	.loc 1 1487 0
	movq	-40(%rbp), %rax	# body, tmp140
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movl	-16(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	movq	8(%rax,%rdx,8), %rax	# _65->elem, D.16023
	movzwl	(%rax), %eax	# _66->code, D.16020
	cmpw	$49, %ax	#, D.16020
	je	.L314	#,
	.loc 1 1488 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L314:
	.loc 1 1486 0
	subl	$1, -16(%rbp)	#, i
.L313:
	.loc 1 1486 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jg	.L315	#,
	.loc 1 1490 0 is_stmt 1
	movq	-40(%rbp), %rax	# body, tmp143
	movq	8(%rax), %rax	# body_5(D)->fld[0].rtvec, D.16022
	movq	8(%rax), %rax	# _70->elem, D.16023
	movq	32(%rax), %rax	# _71->fld[3].rtvec, D.16022
	movl	(%rax), %eax	# _72->num_elem, D.16019
	jmp	.L299	#
.L312:
.LBE19:
	.loc 1 1493 0
	movl	$-1, %eax	#, D.16019
	jmp	.L299	#
.L316:
	.loc 1 1495 0
	movl	$-1, %eax	#, D.16019
.L299:
	.loc 1 1497 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	asm_noperands, .-asm_noperands
	.globl	decode_asm_operands
	.type	decode_asm_operands, @function
decode_asm_operands:
.LFB36:
	.loc 1 1516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# body, body
	movq	%rsi, -80(%rbp)	# operands, operands
	movq	%rdx, -88(%rbp)	# operand_locs, operand_locs
	movq	%rcx, -96(%rbp)	# constraints, constraints
	movq	%r8, -104(%rbp)	# modes, modes
	.loc 1 1519 0
	movq	$0, -40(%rbp)	#, template
	.loc 1 1521 0
	movq	-72(%rbp), %rax	# body, tmp222
	movzwl	(%rax), %eax	# body_9(D)->code, D.16024
	cmpw	$47, %ax	#, D.16024
	jne	.L318	#,
	.loc 1 1521 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# body, tmp223
	movq	16(%rax), %rax	# body_9(D)->fld[1].rtx, D.16025
	movzwl	(%rax), %eax	# _11->code, D.16024
	cmpw	$41, %ax	#, D.16024
	jne	.L318	#,
.LBB20:
	.loc 1 1523 0 is_stmt 1
	movq	-72(%rbp), %rax	# body, tmp224
	movq	16(%rax), %rax	# body_9(D)->fld[1].rtx, tmp225
	movq	%rax, -32(%rbp)	# tmp225, asmop
	.loc 1 1526 0
	movq	-32(%rbp), %rax	# asmop, tmp226
	movq	32(%rax), %rax	# asmop_13->fld[3].rtvec, D.16026
	movl	(%rax), %eax	# _14->num_elem, D.16027
	addl	$1, %eax	#, tmp227
	movl	%eax, -56(%rbp)	# tmp227, noperands
	.loc 1 1528 0
	movl	$1, -64(%rbp)	#, i
	jmp	.L319	#
.L324:
	.loc 1 1530 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L320	#,
	.loc 1 1531 0
	movl	-64(%rbp), %eax	# i, tmp228
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-88(%rbp), %rax	# operand_locs, tmp229
	addq	%rax, %rdx	# tmp229, D.16029
	movq	-32(%rbp), %rax	# asmop, tmp230
	movq	32(%rax), %rax	# asmop_13->fld[3].rtvec, D.16026
	movl	-64(%rbp), %ecx	# i, tmp231
	subl	$1, %ecx	#, D.16027
	movslq	%ecx, %rcx	# D.16027, tmp232
	salq	$3, %rcx	#, tmp233
	addq	%rcx, %rax	# tmp233, tmp234
	addq	$8, %rax	#, D.16030
	movq	%rax, (%rdx)	# D.16030, *_21
.L320:
	.loc 1 1532 0
	cmpq	$0, -80(%rbp)	#, operands
	je	.L321	#,
	.loc 1 1533 0
	movl	-64(%rbp), %eax	# i, tmp235
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-80(%rbp), %rax	# operands, tmp236
	leaq	(%rdx,%rax), %rcx	#, D.16030
	movq	-32(%rbp), %rax	# asmop, tmp237
	movq	32(%rax), %rax	# asmop_13->fld[3].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp238
	subl	$1, %edx	#, D.16027
	movslq	%edx, %rdx	# D.16027, tmp239
	movq	8(%rax,%rdx,8), %rax	# _29->elem, D.16025
	movq	%rax, (%rcx)	# D.16025, *_28
.L321:
	.loc 1 1534 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L322	#,
	.loc 1 1535 0
	movl	-64(%rbp), %eax	# i, tmp240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-96(%rbp), %rax	# constraints, tmp241
	leaq	(%rdx,%rax), %rcx	#, D.16031
	movq	-32(%rbp), %rax	# asmop, tmp242
	movq	40(%rax), %rax	# asmop_13->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp243
	subl	$1, %edx	#, D.16027
	movslq	%edx, %rdx	# D.16027, tmp244
	movq	8(%rax,%rdx,8), %rax	# _36->elem, D.16025
	movq	8(%rax), %rax	# _38->fld[0].rtstr, D.16032
	movq	%rax, (%rcx)	# D.16032, *_35
.L322:
	.loc 1 1536 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L323	#,
	.loc 1 1537 0
	movl	-64(%rbp), %eax	# i, tmp245
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16028
	movq	-104(%rbp), %rax	# modes, tmp246
	leaq	(%rdx,%rax), %rcx	#, D.16033
	movq	-32(%rbp), %rax	# asmop, tmp247
	movq	40(%rax), %rax	# asmop_13->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp248
	subl	$1, %edx	#, D.16027
	movslq	%edx, %rdx	# D.16027, tmp249
	movq	8(%rax,%rdx,8), %rax	# _44->elem, D.16025
	movzbl	2(%rax), %eax	# _46->mode, D.16034
	movzbl	%al, %eax	# D.16034, D.16035
	movl	%eax, (%rcx)	# D.16035, *_43
.L323:
	.loc 1 1528 0
	addl	$1, -64(%rbp)	#, i
.L319:
	.loc 1 1528 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp250
	cmpl	-56(%rbp), %eax	# noperands, tmp250
	jl	.L324	#,
	.loc 1 1542 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, operands
	je	.L325	#,
	.loc 1 1543 0
	movq	-72(%rbp), %rax	# body, tmp251
	movq	8(%rax), %rdx	# body_9(D)->fld[0].rtx, D.16025
	movq	-80(%rbp), %rax	# operands, tmp252
	movq	%rdx, (%rax)	# D.16025, *operands_25(D)
.L325:
	.loc 1 1544 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L326	#,
	.loc 1 1545 0
	movq	-72(%rbp), %rax	# body, tmp253
	leaq	8(%rax), %rdx	#, D.16030
	movq	-88(%rbp), %rax	# operand_locs, tmp254
	movq	%rdx, (%rax)	# D.16030, *operand_locs_18(D)
.L326:
	.loc 1 1546 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L327	#,
	.loc 1 1547 0
	movq	-32(%rbp), %rax	# asmop, tmp255
	movq	16(%rax), %rdx	# asmop_13->fld[1].rtstr, D.16032
	movq	-96(%rbp), %rax	# constraints, tmp256
	movq	%rdx, (%rax)	# D.16032, *constraints_32(D)
.L327:
	.loc 1 1548 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L328	#,
	.loc 1 1549 0
	movq	-72(%rbp), %rax	# body, tmp257
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.16025
	movzbl	2(%rax), %eax	# _53->mode, D.16034
	movzbl	%al, %edx	# D.16034, D.16035
	movq	-104(%rbp), %rax	# modes, tmp258
	movl	%edx, (%rax)	# D.16035, *modes_40(D)
.L328:
	.loc 1 1550 0
	movq	-32(%rbp), %rax	# asmop, tmp259
	movq	8(%rax), %rax	# asmop_13->fld[0].rtstr, tmp260
	movq	%rax, -40(%rbp)	# tmp260, template
.LBE20:
	.loc 1 1522 0
	jmp	.L329	#
.L318:
	.loc 1 1552 0
	movq	-72(%rbp), %rax	# body, tmp261
	movzwl	(%rax), %eax	# body_9(D)->code, D.16024
	cmpw	$41, %ax	#, D.16024
	jne	.L330	#,
.LBB21:
	.loc 1 1554 0
	movq	-72(%rbp), %rax	# body, tmp262
	movq	%rax, -24(%rbp)	# tmp262, asmop
	.loc 1 1557 0
	movq	-24(%rbp), %rax	# asmop, tmp263
	movq	32(%rax), %rax	# asmop_58->fld[3].rtvec, D.16026
	movl	(%rax), %eax	# _59->num_elem, tmp264
	movl	%eax, -56(%rbp)	# tmp264, noperands
	.loc 1 1561 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L331	#
.L336:
	.loc 1 1563 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L332	#,
	.loc 1 1564 0
	movl	-64(%rbp), %eax	# i, tmp265
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-88(%rbp), %rax	# operand_locs, tmp266
	addq	%rax, %rdx	# tmp266, D.16029
	movq	-24(%rbp), %rax	# asmop, tmp267
	movq	32(%rax), %rax	# asmop_58->fld[3].rtvec, D.16026
	movl	-64(%rbp), %ecx	# i, tmp269
	movslq	%ecx, %rcx	# tmp269, tmp268
	salq	$3, %rcx	#, tmp270
	addq	%rcx, %rax	# tmp270, tmp271
	addq	$8, %rax	#, D.16030
	movq	%rax, (%rdx)	# D.16030, *_64
.L332:
	.loc 1 1565 0
	cmpq	$0, -80(%rbp)	#, operands
	je	.L333	#,
	.loc 1 1566 0
	movl	-64(%rbp), %eax	# i, tmp272
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-80(%rbp), %rax	# operands, tmp273
	leaq	(%rdx,%rax), %rcx	#, D.16030
	movq	-24(%rbp), %rax	# asmop, tmp274
	movq	32(%rax), %rax	# asmop_58->fld[3].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, tmp275
	movq	8(%rax,%rdx,8), %rax	# _70->elem, D.16025
	movq	%rax, (%rcx)	# D.16025, *_69
.L333:
	.loc 1 1567 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L334	#,
	.loc 1 1568 0
	movl	-64(%rbp), %eax	# i, tmp277
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-96(%rbp), %rax	# constraints, tmp278
	leaq	(%rdx,%rax), %rcx	#, D.16031
	movq	-24(%rbp), %rax	# asmop, tmp279
	movq	40(%rax), %rax	# asmop_58->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp281
	movslq	%edx, %rdx	# tmp281, tmp280
	movq	8(%rax,%rdx,8), %rax	# _75->elem, D.16025
	movq	8(%rax), %rax	# _76->fld[0].rtstr, D.16032
	movq	%rax, (%rcx)	# D.16032, *_74
.L334:
	.loc 1 1569 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L335	#,
	.loc 1 1570 0
	movl	-64(%rbp), %eax	# i, tmp282
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16028
	movq	-104(%rbp), %rax	# modes, tmp283
	leaq	(%rdx,%rax), %rcx	#, D.16033
	movq	-24(%rbp), %rax	# asmop, tmp284
	movq	40(%rax), %rax	# asmop_58->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp286
	movslq	%edx, %rdx	# tmp286, tmp285
	movq	8(%rax,%rdx,8), %rax	# _81->elem, D.16025
	movzbl	2(%rax), %eax	# _82->mode, D.16034
	movzbl	%al, %eax	# D.16034, D.16035
	movl	%eax, (%rcx)	# D.16035, *_80
.L335:
	.loc 1 1561 0
	addl	$1, -64(%rbp)	#, i
.L331:
	.loc 1 1561 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp287
	cmpl	-56(%rbp), %eax	# noperands, tmp287
	jl	.L336	#,
	.loc 1 1572 0 is_stmt 1
	movq	-24(%rbp), %rax	# asmop, tmp288
	movq	8(%rax), %rax	# asmop_58->fld[0].rtstr, tmp289
	movq	%rax, -40(%rbp)	# tmp289, template
.LBE21:
	jmp	.L329	#
.L330:
	.loc 1 1574 0
	movq	-72(%rbp), %rax	# body, tmp290
	movzwl	(%rax), %eax	# body_9(D)->code, D.16024
	cmpw	$39, %ax	#, D.16024
	jne	.L337	#,
	.loc 1 1575 0
	movq	-72(%rbp), %rax	# body, tmp291
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movq	8(%rax), %rax	# _88->elem, D.16025
	movzwl	(%rax), %eax	# _89->code, D.16024
	cmpw	$47, %ax	#, D.16024
	jne	.L337	#,
	.loc 1 1576 0
	movq	-72(%rbp), %rax	# body, tmp292
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movq	8(%rax), %rax	# _91->elem, D.16025
	movq	16(%rax), %rax	# _92->fld[1].rtx, D.16025
	movzwl	(%rax), %eax	# _93->code, D.16024
	cmpw	$41, %ax	#, D.16024
	jne	.L337	#,
.LBB22:
	.loc 1 1578 0
	movq	-72(%rbp), %rax	# body, tmp293
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movq	8(%rax), %rax	# _95->elem, D.16025
	movq	16(%rax), %rax	# _96->fld[1].rtx, tmp294
	movq	%rax, -16(%rbp)	# tmp294, asmop
	.loc 1 1579 0
	movq	-72(%rbp), %rax	# body, tmp295
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	(%rax), %eax	# _98->num_elem, tmp296
	movl	%eax, -52(%rbp)	# tmp296, nparallel
	.loc 1 1580 0
	movq	-16(%rbp), %rax	# asmop, tmp297
	movq	32(%rax), %rax	# asmop_97->fld[3].rtvec, D.16026
	movl	(%rax), %eax	# _100->num_elem, tmp298
	movl	%eax, -48(%rbp)	# tmp298, nin
	.loc 1 1581 0
	movl	$0, -60(%rbp)	#, nout
	.loc 1 1587 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L338	#
.L345:
	.loc 1 1589 0
	movq	-72(%rbp), %rax	# body, tmp299
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp301
	movslq	%edx, %rdx	# tmp301, tmp300
	movq	8(%rax,%rdx,8), %rax	# _104->elem, D.16025
	movzwl	(%rax), %eax	# _105->code, D.16024
	cmpw	$49, %ax	#, D.16024
	jne	.L339	#,
	.loc 1 1590 0
	jmp	.L340	#
.L339:
	.loc 1 1592 0
	cmpq	$0, -80(%rbp)	#, operands
	je	.L341	#,
	.loc 1 1593 0
	movl	-64(%rbp), %eax	# i, tmp302
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-80(%rbp), %rax	# operands, tmp303
	leaq	(%rdx,%rax), %rcx	#, D.16030
	movq	-72(%rbp), %rax	# body, tmp304
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp306
	movslq	%edx, %rdx	# tmp306, tmp305
	movq	8(%rax,%rdx,8), %rax	# _110->elem, D.16025
	movq	8(%rax), %rax	# _111->fld[0].rtx, D.16025
	movq	%rax, (%rcx)	# D.16025, *_109
.L341:
	.loc 1 1594 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L342	#,
	.loc 1 1595 0
	movl	-64(%rbp), %eax	# i, tmp307
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-88(%rbp), %rax	# operand_locs, tmp308
	leaq	(%rdx,%rax), %rcx	#, D.16029
	movq	-72(%rbp), %rax	# body, tmp309
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp311
	movslq	%edx, %rdx	# tmp311, tmp310
	movq	8(%rax,%rdx,8), %rax	# _116->elem, D.16025
	addq	$8, %rax	#, D.16030
	movq	%rax, (%rcx)	# D.16030, *_115
.L342:
	.loc 1 1596 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L343	#,
	.loc 1 1597 0
	movl	-64(%rbp), %eax	# i, tmp312
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-96(%rbp), %rax	# constraints, tmp313
	leaq	(%rdx,%rax), %rcx	#, D.16031
	movq	-72(%rbp), %rax	# body, tmp314
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp316
	movslq	%edx, %rdx	# tmp316, tmp315
	movq	8(%rax,%rdx,8), %rax	# _122->elem, D.16025
	movq	16(%rax), %rax	# _123->fld[1].rtx, D.16025
	movq	16(%rax), %rax	# _124->fld[1].rtstr, D.16032
	movq	%rax, (%rcx)	# D.16032, *_121
.L343:
	.loc 1 1598 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L344	#,
	.loc 1 1599 0
	movl	-64(%rbp), %eax	# i, tmp317
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16028
	movq	-104(%rbp), %rax	# modes, tmp318
	leaq	(%rdx,%rax), %rcx	#, D.16033
	movq	-72(%rbp), %rax	# body, tmp319
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp321
	movslq	%edx, %rdx	# tmp321, tmp320
	movq	8(%rax,%rdx,8), %rax	# _129->elem, D.16025
	movq	8(%rax), %rax	# _130->fld[0].rtx, D.16025
	movzbl	2(%rax), %eax	# _131->mode, D.16034
	movzbl	%al, %eax	# D.16034, D.16035
	movl	%eax, (%rcx)	# D.16035, *_128
.L344:
	.loc 1 1600 0
	addl	$1, -60(%rbp)	#, nout
	.loc 1 1587 0
	addl	$1, -64(%rbp)	#, i
.L338:
	.loc 1 1587 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp322
	cmpl	-52(%rbp), %eax	# nparallel, tmp322
	jl	.L345	#,
.L340:
	.loc 1 1603 0 is_stmt 1
	movl	$0, -64(%rbp)	#, i
	jmp	.L346	#
.L351:
	.loc 1 1605 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L347	#,
	.loc 1 1606 0
	movl	-60(%rbp), %eax	# nout, tmp323
	movl	-64(%rbp), %edx	# i, tmp324
	addl	%edx, %eax	# tmp324, D.16027
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-88(%rbp), %rax	# operand_locs, tmp325
	addq	%rax, %rdx	# tmp325, D.16029
	movq	-16(%rbp), %rax	# asmop, tmp326
	movq	32(%rax), %rax	# asmop_97->fld[3].rtvec, D.16026
	movl	-64(%rbp), %ecx	# i, tmp328
	movslq	%ecx, %rcx	# tmp328, tmp327
	salq	$3, %rcx	#, tmp329
	addq	%rcx, %rax	# tmp329, tmp330
	addq	$8, %rax	#, D.16030
	movq	%rax, (%rdx)	# D.16030, *_140
.L347:
	.loc 1 1607 0
	cmpq	$0, -80(%rbp)	#, operands
	je	.L348	#,
	.loc 1 1608 0
	movl	-60(%rbp), %eax	# nout, tmp331
	movl	-64(%rbp), %edx	# i, tmp332
	addl	%edx, %eax	# tmp332, D.16027
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-80(%rbp), %rax	# operands, tmp333
	leaq	(%rdx,%rax), %rcx	#, D.16030
	movq	-16(%rbp), %rax	# asmop, tmp334
	movq	32(%rax), %rax	# asmop_97->fld[3].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp336
	movslq	%edx, %rdx	# tmp336, tmp335
	movq	8(%rax,%rdx,8), %rax	# _147->elem, D.16025
	movq	%rax, (%rcx)	# D.16025, *_146
.L348:
	.loc 1 1609 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L349	#,
	.loc 1 1610 0
	movl	-60(%rbp), %eax	# nout, tmp337
	movl	-64(%rbp), %edx	# i, tmp338
	addl	%edx, %eax	# tmp338, D.16027
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-96(%rbp), %rax	# constraints, tmp339
	leaq	(%rdx,%rax), %rcx	#, D.16031
	movq	-16(%rbp), %rax	# asmop, tmp340
	movq	40(%rax), %rax	# asmop_97->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp342
	movslq	%edx, %rdx	# tmp342, tmp341
	movq	8(%rax,%rdx,8), %rax	# _153->elem, D.16025
	movq	8(%rax), %rax	# _154->fld[0].rtstr, D.16032
	movq	%rax, (%rcx)	# D.16032, *_152
.L349:
	.loc 1 1611 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L350	#,
	.loc 1 1612 0
	movl	-60(%rbp), %eax	# nout, tmp343
	movl	-64(%rbp), %edx	# i, tmp344
	addl	%edx, %eax	# tmp344, D.16027
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16028
	movq	-104(%rbp), %rax	# modes, tmp345
	leaq	(%rdx,%rax), %rcx	#, D.16033
	movq	-16(%rbp), %rax	# asmop, tmp346
	movq	40(%rax), %rax	# asmop_97->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp348
	movslq	%edx, %rdx	# tmp348, tmp347
	movq	8(%rax,%rdx,8), %rax	# _160->elem, D.16025
	movzbl	2(%rax), %eax	# _161->mode, D.16034
	movzbl	%al, %eax	# D.16034, D.16035
	movl	%eax, (%rcx)	# D.16035, *_159
.L350:
	.loc 1 1603 0
	addl	$1, -64(%rbp)	#, i
.L346:
	.loc 1 1603 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp349
	cmpl	-48(%rbp), %eax	# nin, tmp349
	jl	.L351	#,
	.loc 1 1615 0 is_stmt 1
	movq	-16(%rbp), %rax	# asmop, tmp350
	movq	8(%rax), %rax	# asmop_97->fld[0].rtstr, tmp351
	movq	%rax, -40(%rbp)	# tmp351, template
.LBE22:
	.loc 1 1577 0
	jmp	.L329	#
.L337:
	.loc 1 1617 0
	movq	-72(%rbp), %rax	# body, tmp352
	movzwl	(%rax), %eax	# body_9(D)->code, D.16024
	cmpw	$39, %ax	#, D.16024
	jne	.L329	#,
	.loc 1 1618 0
	movq	-72(%rbp), %rax	# body, tmp353
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movq	8(%rax), %rax	# _167->elem, D.16025
	movzwl	(%rax), %eax	# _168->code, D.16024
	cmpw	$41, %ax	#, D.16024
	jne	.L329	#,
.LBB23:
	.loc 1 1622 0
	movq	-72(%rbp), %rax	# body, tmp354
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.16026
	movq	8(%rax), %rax	# _170->elem, tmp355
	movq	%rax, -8(%rbp)	# tmp355, asmop
	.loc 1 1623 0
	movq	-8(%rbp), %rax	# asmop, tmp356
	movq	32(%rax), %rax	# asmop_171->fld[3].rtvec, D.16026
	movl	(%rax), %eax	# _172->num_elem, tmp357
	movl	%eax, -44(%rbp)	# tmp357, nin
	.loc 1 1625 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L352	#
.L357:
	.loc 1 1627 0
	cmpq	$0, -88(%rbp)	#, operand_locs
	je	.L353	#,
	.loc 1 1628 0
	movl	-64(%rbp), %eax	# i, tmp358
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-88(%rbp), %rax	# operand_locs, tmp359
	addq	%rax, %rdx	# tmp359, D.16029
	movq	-8(%rbp), %rax	# asmop, tmp360
	movq	32(%rax), %rax	# asmop_171->fld[3].rtvec, D.16026
	movl	-64(%rbp), %ecx	# i, tmp362
	movslq	%ecx, %rcx	# tmp362, tmp361
	salq	$3, %rcx	#, tmp363
	addq	%rcx, %rax	# tmp363, tmp364
	addq	$8, %rax	#, D.16030
	movq	%rax, (%rdx)	# D.16030, *_177
.L353:
	.loc 1 1629 0
	cmpq	$0, -80(%rbp)	#, operands
	je	.L354	#,
	.loc 1 1630 0
	movl	-64(%rbp), %eax	# i, tmp365
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-80(%rbp), %rax	# operands, tmp366
	leaq	(%rdx,%rax), %rcx	#, D.16030
	movq	-8(%rbp), %rax	# asmop, tmp367
	movq	32(%rax), %rax	# asmop_171->fld[3].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp369
	movslq	%edx, %rdx	# tmp369, tmp368
	movq	8(%rax,%rdx,8), %rax	# _183->elem, D.16025
	movq	%rax, (%rcx)	# D.16025, *_182
.L354:
	.loc 1 1631 0
	cmpq	$0, -96(%rbp)	#, constraints
	je	.L355	#,
	.loc 1 1632 0
	movl	-64(%rbp), %eax	# i, tmp370
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16028
	movq	-96(%rbp), %rax	# constraints, tmp371
	leaq	(%rdx,%rax), %rcx	#, D.16031
	movq	-8(%rbp), %rax	# asmop, tmp372
	movq	40(%rax), %rax	# asmop_171->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp374
	movslq	%edx, %rdx	# tmp374, tmp373
	movq	8(%rax,%rdx,8), %rax	# _188->elem, D.16025
	movq	8(%rax), %rax	# _189->fld[0].rtstr, D.16032
	movq	%rax, (%rcx)	# D.16032, *_187
.L355:
	.loc 1 1633 0
	cmpq	$0, -104(%rbp)	#, modes
	je	.L356	#,
	.loc 1 1634 0
	movl	-64(%rbp), %eax	# i, tmp375
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16028
	movq	-104(%rbp), %rax	# modes, tmp376
	leaq	(%rdx,%rax), %rcx	#, D.16033
	movq	-8(%rbp), %rax	# asmop, tmp377
	movq	40(%rax), %rax	# asmop_171->fld[4].rtvec, D.16026
	movl	-64(%rbp), %edx	# i, tmp379
	movslq	%edx, %rdx	# tmp379, tmp378
	movq	8(%rax,%rdx,8), %rax	# _194->elem, D.16025
	movzbl	2(%rax), %eax	# _195->mode, D.16034
	movzbl	%al, %eax	# D.16034, D.16035
	movl	%eax, (%rcx)	# D.16035, *_193
.L356:
	.loc 1 1625 0
	addl	$1, -64(%rbp)	#, i
.L352:
	.loc 1 1625 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp380
	cmpl	-44(%rbp), %eax	# nin, tmp380
	jl	.L357	#,
	.loc 1 1637 0 is_stmt 1
	movq	-8(%rbp), %rax	# asmop, tmp381
	movq	8(%rax), %rax	# asmop_171->fld[0].rtstr, tmp382
	movq	%rax, -40(%rbp)	# tmp382, template
.L329:
.LBE23:
	.loc 1 1640 0
	movq	-40(%rbp), %rax	# template, D.16032
	.loc 1 1641 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	decode_asm_operands, .-decode_asm_operands
	.globl	asm_operand_ok
	.type	asm_operand_ok, @function
asm_operand_ok:
.LFB37:
	.loc 1 1650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movq	%rsi, -32(%rbp)	# constraint, constraint
	.loc 1 1651 0
	movl	$0, -4(%rbp)	#, result
	.loc 1 1654 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.107
	testl	%eax, %eax	# reload_completed.107
	je	.L360	#,
	.loc 1 1655 0
	movl	$__FUNCTION__.11811, %edx	#,
	movl	$1655, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L360:
	.loc 1 1657 0
	jmp	.L361	#
.L460:
.LBB24:
	.loc 1 1659 0
	movq	-32(%rbp), %rax	# constraint, constraint.108
	leaq	1(%rax), %rdx	#, tmp162
	movq	%rdx, -32(%rbp)	# tmp162, constraint
	movzbl	(%rax), %eax	# *constraint.108_29, tmp163
	movb	%al, -5(%rbp)	# tmp163, c
	.loc 1 1660 0
	movsbl	-5(%rbp), %eax	# c, D.16036
	subl	$33, %eax	#, tmp164
	cmpl	$82, %eax	#, tmp164
	ja	.L362	#,
	movl	%eax, %eax	# tmp164, tmp165
	movq	.L364(,%rax,8), %rax	#, tmp166
	jmp	*%rax	# tmp166
	.section	.rodata
	.align 8
	.align 4
.L364:
	.quad	.L461
	.quad	.L362
	.quad	.L461
	.quad	.L362
	.quad	.L461
	.quad	.L461
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L462
	.quad	.L362
	.quad	.L362
	.quad	.L366
	.quad	.L461
	.quad	.L367
	.quad	.L461
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L368
	.quad	.L368
	.quad	.L369
	.quad	.L370
	.quad	.L371
	.quad	.L372
	.quad	.L373
	.quad	.L374
	.quad	.L375
	.quad	.L376
	.quad	.L461
	.quad	.L461
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L379
	.quad	.L362
	.quad	.L380
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L381
	.quad	.L362
	.quad	.L382
	.quad	.L362
	.quad	.L362
	.quad	.L362
	.quad	.L379
	.quad	.L383
	.quad	.L384
	.quad	.L385
	.quad	.L362
	.quad	.L386
	.quad	.L387
	.text
.L389:
	.loc 1 1680 0
	addq	$1, -32(%rbp)	#, constraint
	jmp	.L388	#
.L462:
	.loc 1 1679 0
	nop
.L388:
	.loc 1 1679 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# constraint, tmp167
	movzbl	(%rax), %eax	# *constraint_1, D.16037
	movsbl	%al, %eax	# D.16037, D.16036
	movzbl	%al, %eax	# D.16036, D.16036
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.16038
	movzwl	%ax, %eax	# D.16038, D.16036
	andl	$4, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	jne	.L389	#,
	.loc 1 1681 0 is_stmt 1
	movl	$-1, -4(%rbp)	#, result
	.loc 1 1682 0
	jmp	.L361	#
.L385:
	.loc 1 1685 0
	movq	-24(%rbp), %rax	# op, tmp169
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	address_operand	#
	testl	%eax, %eax	# D.16036
	je	.L390	#,
	.loc 1 1686 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L390:
	.loc 1 1687 0
	jmp	.L361	#
.L379:
	.loc 1 1691 0
	movq	-24(%rbp), %rax	# op, tmp170
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	memory_operand	#
	testl	%eax, %eax	# D.16036
	je	.L392	#,
	.loc 1 1692 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L392:
	.loc 1 1693 0
	jmp	.L361	#
.L384:
	.loc 1 1696 0
	movq	-24(%rbp), %rax	# op, tmp171
	movq	%rax, %rdi	# tmp171,
	call	offsettable_nonstrict_memref_p	#
	testl	%eax, %eax	# D.16036
	je	.L393	#,
	.loc 1 1697 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L393:
	.loc 1 1698 0
	jmp	.L361	#
.L366:
	.loc 1 1708 0
	movq	-24(%rbp), %rax	# op, tmp172
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$66, %ax	#, D.16038
	jne	.L394	#,
	.loc 1 1712 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L394:
	.loc 1 1713 0
	jmp	.L361	#
.L367:
	.loc 1 1716 0
	movq	-24(%rbp), %rax	# op, tmp173
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$66, %ax	#, D.16038
	jne	.L395	#,
	.loc 1 1720 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L395:
	.loc 1 1721 0
	jmp	.L361	#
.L368:
	.loc 1 1735 0
	movq	-24(%rbp), %rax	# op, tmp174
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	jne	.L396	#,
	.loc 1 1736 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L396:
	.loc 1 1737 0
	jmp	.L361	#
.L369:
	.loc 1 1740 0
	movq	-24(%rbp), %rax	# op, tmp175
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	jne	.L397	#,
	.loc 1 1741 0
	movq	-24(%rbp), %rax	# op, tmp176
	movq	%rax, %rdi	# tmp176,
	call	standard_80387_constant_p	#
	testl	%eax, %eax	# D.16036
	je	.L397	#,
	.loc 1 1742 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L397:
	.loc 1 1743 0
	jmp	.L361	#
.L370:
	.loc 1 1745 0
	movq	-24(%rbp), %rax	# op, tmp177
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	jne	.L398	#,
	.loc 1 1746 0
	movq	-24(%rbp), %rax	# op, tmp178
	movq	%rax, %rdi	# tmp178,
	call	standard_sse_constant_p	#
	testl	%eax, %eax	# D.16036
	je	.L398	#,
	.loc 1 1747 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L398:
	.loc 1 1748 0
	jmp	.L361	#
.L387:
	.loc 1 1751 0
	movq	-24(%rbp), %rax	# op, tmp179
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	je	.L361	#,
	.loc 1 1752 0
	movq	-24(%rbp), %rax	# op, tmp180
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	jne	.L382	#,
	.loc 1 1753 0
	movq	-24(%rbp), %rax	# op, tmp181
	movzbl	2(%rax), %eax	# op_41(D)->mode, D.16039
	testb	%al, %al	# D.16039
	je	.L361	#,
.L382:
	.loc 1 1758 0
	movq	-24(%rbp), %rax	# op, tmp182
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$67, %ax	#, D.16038
	je	.L399	#,
	.loc 1 1758 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp183
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$68, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp184
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp185
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp186
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$58, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp187
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$134, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp188
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$56, %ax	#, D.16038
	je	.L399	#,
	movq	-24(%rbp), %rax	# op, tmp189
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$140, %ax	#, D.16038
	jne	.L400	#,
.L399:
	.loc 1 1760 0 is_stmt 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.109
	testl	%eax, %eax	# flag_pic.109
	je	.L401	#,
	.loc 1 1760 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp190
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$68, %ax	#, D.16038
	je	.L402	#,
	movq	-24(%rbp), %rax	# op, tmp191
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$67, %ax	#, D.16038
	je	.L402	#,
	movq	-24(%rbp), %rax	# op, tmp192
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$58, %ax	#, D.16038
	jne	.L401	#,
	movq	-24(%rbp), %rax	# op, tmp193
	movq	%rax, %rdi	# tmp193,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.16036
	je	.L401	#,
.L402:
	.loc 1 1760 0 discriminator 2
	movq	-24(%rbp), %rax	# op, tmp194
	movq	%rax, %rdi	# tmp194,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.16036
	je	.L400	#,
.L401:
	.loc 1 1763 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L400:
	.loc 1 1764 0
	jmp	.L361	#
.L383:
	.loc 1 1767 0
	movq	-24(%rbp), %rax	# op, tmp195
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	je	.L403	#,
	.loc 1 1768 0
	movq	-24(%rbp), %rax	# op, tmp196
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$55, %ax	#, D.16038
	jne	.L404	#,
	.loc 1 1769 0
	movq	-24(%rbp), %rax	# op, tmp197
	movzbl	2(%rax), %eax	# op_41(D)->mode, D.16039
	testb	%al, %al	# D.16039
	jne	.L404	#,
.L403:
	.loc 1 1770 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L404:
	.loc 1 1771 0
	jmp	.L361	#
.L371:
	.loc 1 1774 0
	movq	-24(%rbp), %rax	# op, tmp198
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L405	#,
	.loc 1 1775 0
	movq	-24(%rbp), %rax	# op, tmp199
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	testq	%rax, %rax	# D.16040
	js	.L405	#,
	.loc 1 1775 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp200
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$31, %rax	#, D.16040
	jg	.L405	#,
	.loc 1 1776 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L405:
	.loc 1 1777 0
	jmp	.L361	#
.L372:
	.loc 1 1779 0
	movq	-24(%rbp), %rax	# op, tmp201
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L406	#,
	.loc 1 1780 0
	movq	-24(%rbp), %rax	# op, tmp202
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	testq	%rax, %rax	# D.16040
	js	.L406	#,
	.loc 1 1780 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp203
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$63, %rax	#, D.16040
	jg	.L406	#,
	.loc 1 1781 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L406:
	.loc 1 1782 0
	jmp	.L361	#
.L373:
	.loc 1 1784 0
	movq	-24(%rbp), %rax	# op, tmp204
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L407	#,
	.loc 1 1785 0
	movq	-24(%rbp), %rax	# op, tmp205
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$-128, %rax	#, D.16040
	jl	.L407	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp206
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$127, %rax	#, D.16040
	jg	.L407	#,
	.loc 1 1786 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L407:
	.loc 1 1787 0
	jmp	.L361	#
.L374:
	.loc 1 1789 0
	movq	-24(%rbp), %rax	# op, tmp207
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L408	#,
	.loc 1 1790 0
	movq	-24(%rbp), %rax	# op, tmp208
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$255, %rax	#, D.16040
	je	.L409	#,
	.loc 1 1790 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp209
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$65535, %rax	#, D.16040
	jne	.L408	#,
.L409:
	.loc 1 1791 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L408:
	.loc 1 1792 0
	jmp	.L361	#
.L375:
	.loc 1 1794 0
	movq	-24(%rbp), %rax	# op, tmp210
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L410	#,
	.loc 1 1795 0
	movq	-24(%rbp), %rax	# op, tmp211
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	testq	%rax, %rax	# D.16040
	js	.L410	#,
	.loc 1 1795 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp212
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$3, %rax	#, D.16040
	jg	.L410	#,
	.loc 1 1796 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L410:
	.loc 1 1797 0
	jmp	.L361	#
.L376:
	.loc 1 1799 0
	movq	-24(%rbp), %rax	# op, tmp213
	movzwl	(%rax), %eax	# op_41(D)->code, D.16038
	cmpw	$54, %ax	#, D.16038
	jne	.L411	#,
	.loc 1 1800 0
	movq	-24(%rbp), %rax	# op, tmp214
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	testq	%rax, %rax	# D.16040
	js	.L411	#,
	.loc 1 1800 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp215
	movq	8(%rax), %rax	# op_41(D)->fld[0].rtwint, D.16040
	cmpq	$255, %rax	#, D.16040
	jg	.L411	#,
	.loc 1 1801 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L411:
	.loc 1 1802 0
	jmp	.L361	#
.L380:
	.loc 1 1815 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L381:
	.loc 1 1818 0
	movq	-24(%rbp), %rax	# op, tmp216
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	general_operand	#
	testl	%eax, %eax	# D.16036
	je	.L412	#,
	.loc 1 1819 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L412:
	.loc 1 1820 0
	jmp	.L361	#
.L362:
	.loc 1 1825 0
	cmpb	$114, -5(%rbp)	#, c
	je	.L413	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	cmpb	$82, -5(%rbp)	#, c
	je	.L414	#,
	.loc 1 1825 0 discriminator 3
	cmpb	$113, -5(%rbp)	#, c
	je	.L415	#,
	.loc 1 1825 0 discriminator 5
	cmpb	$81, -5(%rbp)	#, c
	je	.L416	#,
	.loc 1 1825 0 discriminator 7
	cmpb	$102, -5(%rbp)	#, c
	jne	.L417	#,
	.loc 1 1825 0 discriminator 9
	movl	target_flags(%rip), %eax	# target_flags, target_flags.116
	andl	$1, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	jne	.L418	#,
	.loc 1 1825 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.117
	andl	$32, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	je	.L419	#,
.L418:
	.loc 1 1825 0 discriminator 1
	movl	$1, %eax	#, iftmp.115
	jmp	.L420	#
.L419:
	.loc 1 1825 0 discriminator 3
	movl	$0, %eax	#, iftmp.115
.L420:
	.loc 1 1825 0 discriminator 4
	andl	$1, %eax	#, iftmp.114
	jmp	.L452	#
.L417:
	.loc 1 1825 0 discriminator 10
	cmpb	$116, -5(%rbp)	#, c
	jne	.L422	#,
	.loc 1 1825 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.120
	andl	$1, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	jne	.L423	#,
	.loc 1 1825 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.121
	andl	$32, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	je	.L424	#,
.L423:
	.loc 1 1825 0 discriminator 1
	movl	$1, %eax	#, iftmp.119
	jmp	.L425	#
.L424:
	.loc 1 1825 0 discriminator 3
	movl	$0, %eax	#, iftmp.119
.L425:
	.loc 1 1825 0 discriminator 4
	andl	$1, %eax	#, iftmp.118
	jmp	.L452	#
.L422:
	.loc 1 1825 0 discriminator 12
	cmpb	$117, -5(%rbp)	#, c
	jne	.L427	#,
	.loc 1 1825 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.124
	andl	$1, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	jne	.L428	#,
	.loc 1 1825 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.125
	andl	$32, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	je	.L429	#,
.L428:
	.loc 1 1825 0 discriminator 1
	movl	$1, %eax	#, iftmp.123
	jmp	.L430	#
.L429:
	.loc 1 1825 0 discriminator 3
	movl	$0, %eax	#, iftmp.123
.L430:
	.loc 1 1825 0 discriminator 4
	andl	$1, %eax	#, iftmp.122
	jmp	.L452	#
.L427:
	.loc 1 1825 0 discriminator 14
	cmpb	$97, -5(%rbp)	#, c
	je	.L432	#,
	.loc 1 1825 0 discriminator 15
	cmpb	$98, -5(%rbp)	#, c
	je	.L433	#,
	.loc 1 1825 0 discriminator 17
	cmpb	$99, -5(%rbp)	#, c
	je	.L434	#,
	.loc 1 1825 0 discriminator 19
	cmpb	$100, -5(%rbp)	#, c
	je	.L435	#,
	.loc 1 1825 0 discriminator 21
	cmpb	$120, -5(%rbp)	#, c
	jne	.L436	#,
	.loc 1 1825 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.131
	andl	$327680, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	setne	%al	#, iftmp.130
	jmp	.L452	#
.L436:
	.loc 1 1825 0 discriminator 24
	cmpb	$89, -5(%rbp)	#, c
	jne	.L438	#,
	.loc 1 1825 0 discriminator 25
	movl	target_flags(%rip), %eax	# target_flags, target_flags.133
	andl	$262144, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	setne	%al	#, iftmp.132
	jmp	.L452	#
.L438:
	.loc 1 1825 0 discriminator 26
	cmpb	$121, -5(%rbp)	#, c
	jne	.L440	#,
	.loc 1 1825 0 discriminator 27
	movl	target_flags(%rip), %eax	# target_flags, target_flags.135
	andl	$16384, %eax	#, D.16036
	testl	%eax, %eax	# D.16036
	setne	%al	#, iftmp.134
	jmp	.L452	#
.L440:
	.loc 1 1825 0 discriminator 28
	cmpb	$65, -5(%rbp)	#, c
	je	.L442	#,
	.loc 1 1825 0 discriminator 30
	cmpb	$68, -5(%rbp)	#, c
	je	.L442	#,
	.loc 1 1825 0 discriminator 31
	cmpb	$83, -5(%rbp)	#, c
	jne	.L443	#,
.L442:
	.loc 1 1825 0 discriminator 29
	movl	$1, %eax	#, iftmp.136
	jmp	.L444	#
.L443:
	.loc 1 1825 0 discriminator 32
	movl	$0, %eax	#, iftmp.136
.L444:
	.loc 1 1825 0 discriminator 33
	andl	$1, %eax	#, iftmp.134
	jmp	.L452	#
.L435:
	.loc 1 1825 0 discriminator 22
	movl	$1, %eax	#, iftmp.129
	jmp	.L452	#
.L434:
	.loc 1 1825 0 discriminator 20
	movl	$1, %eax	#, iftmp.128
	jmp	.L452	#
.L433:
	.loc 1 1825 0 discriminator 18
	movl	$1, %eax	#, iftmp.127
	jmp	.L452	#
.L432:
	.loc 1 1825 0 discriminator 16
	movl	$1, %eax	#, iftmp.126
	jmp	.L452	#
.L416:
	.loc 1 1825 0 discriminator 8
	movl	$1, %eax	#, iftmp.113
	jmp	.L452	#
.L415:
	.loc 1 1825 0 discriminator 6
	movl	$1, %eax	#, iftmp.112
	jmp	.L452	#
.L414:
	.loc 1 1825 0 discriminator 4
	movl	$1, %eax	#, iftmp.111
	jmp	.L452	#
.L413:
	.loc 1 1825 0 discriminator 2
	movl	$1, %eax	#, iftmp.110
.L452:
	.loc 1 1825 0 discriminator 39
	testb	%al, %al	# iftmp.110
	je	.L453	#,
.L386:
	.loc 1 1828 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp217
	movzbl	2(%rax), %eax	# op_41(D)->mode, D.16039
	cmpb	$51, %al	#, D.16039
	jne	.L454	#,
	.loc 1 1829 0
	jmp	.L361	#
.L454:
	.loc 1 1830 0
	movq	-24(%rbp), %rax	# op, tmp218
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	register_operand	#
	testl	%eax, %eax	# D.16036
	je	.L453	#,
	.loc 1 1831 0
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L453:
	.loc 1 1834 0
	cmpb	$101, -5(%rbp)	#, c
	jne	.L455	#,
	.loc 1 1834 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op, tmp219
	movq	%rax, %rdi	# tmp219,
	call	x86_64_sign_extended_value	#
	testl	%eax, %eax	# D.16036
	setne	%al	#, iftmp.137
	jmp	.L456	#
.L455:
	.loc 1 1834 0 discriminator 2
	cmpb	$90, -5(%rbp)	#, c
	jne	.L457	#,
	.loc 1 1834 0 discriminator 3
	movq	-24(%rbp), %rax	# op, tmp220
	movq	%rax, %rdi	# tmp220,
	call	x86_64_zero_extended_value	#
	testl	%eax, %eax	# D.16036
	je	.L457	#,
	.loc 1 1834 0 discriminator 5
	movl	$1, %eax	#, iftmp.138
	jmp	.L458	#
.L457:
	.loc 1 1834 0 discriminator 4
	movl	$0, %eax	#, iftmp.138
.L458:
	.loc 1 1834 0 discriminator 6
	andl	$1, %eax	#, iftmp.137
.L456:
	.loc 1 1834 0 discriminator 7
	testb	%al, %al	# iftmp.137
	je	.L459	#,
	.loc 1 1835 0 is_stmt 1
	movl	$1, %eax	#, D.16036
	jmp	.L391	#
.L459:
	.loc 1 1837 0
	jmp	.L361	#
.L461:
	.loc 1 1671 0
	nop
.L361:
.LBE24:
	.loc 1 1657 0 discriminator 1
	movq	-32(%rbp), %rax	# constraint, tmp221
	movzbl	(%rax), %eax	# *constraint_2, D.16037
	testb	%al, %al	# D.16037
	jne	.L460	#,
	.loc 1 1841 0
	movl	-4(%rbp), %eax	# result, D.16036
.L391:
	.loc 1 1842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	asm_operand_ok, .-asm_operand_ok
	.globl	find_constant_term_loc
	.type	find_constant_term_loc, @function
find_constant_term_loc:
.LFB38:
	.loc 1 1851 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 1853 0
	movq	-24(%rbp), %rax	# p, tmp125
	movq	(%rax), %rax	# *p_2(D), D.16042
	movzwl	(%rax), %eax	# _3->code, D.16043
	movzwl	%ax, %eax	# D.16043, tmp126
	movl	%eax, -12(%rbp)	# tmp126, code
	.loc 1 1857 0
	cmpl	$54, -12(%rbp)	#, code
	je	.L464	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	cmpl	$68, -12(%rbp)	#, code
	je	.L464	#,
	cmpl	$67, -12(%rbp)	#, code
	je	.L464	#,
	.loc 1 1858 0 is_stmt 1
	cmpl	$58, -12(%rbp)	#, code
	jne	.L465	#,
.L464:
	.loc 1 1859 0
	movq	-24(%rbp), %rax	# p, D.16041
	jmp	.L466	#
.L465:
	.loc 1 1863 0
	movq	-24(%rbp), %rax	# p, tmp127
	movq	(%rax), %rax	# *p_2(D), D.16042
	movzwl	(%rax), %eax	# _6->code, D.16043
	cmpw	$75, %ax	#, D.16043
	je	.L467	#,
	.loc 1 1864 0
	movl	$0, %eax	#, D.16041
	jmp	.L466	#
.L467:
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# p, tmp128
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _9->fld[0].rtx, D.16042
	testq	%rax, %rax	# D.16042
	je	.L468	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp129
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _11->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _12->code, D.16043
	cmpw	$67, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp130
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _15->code, D.16043
	cmpw	$68, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp131
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _17->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _18->code, D.16043
	cmpw	$54, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp132
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _21->code, D.16043
	cmpw	$55, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp133
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _24->code, D.16043
	cmpw	$58, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp134
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _26->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _27->code, D.16043
	cmpw	$134, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp135
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _29->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _30->code, D.16043
	cmpw	$56, %ax	#, D.16043
	je	.L469	#,
	movq	-24(%rbp), %rax	# p, tmp136
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _32->fld[0].rtx, D.16042
	movzwl	(%rax), %eax	# _33->code, D.16043
	cmpw	$140, %ax	#, D.16043
	jne	.L468	#,
.L469:
	.loc 1 1869 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp137
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _35->fld[1].rtx, D.16042
	testq	%rax, %rax	# D.16042
	je	.L468	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp138
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _37->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _38->code, D.16043
	cmpw	$67, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp139
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _40->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _41->code, D.16043
	cmpw	$68, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp140
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _43->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _44->code, D.16043
	cmpw	$54, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp141
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _46->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _47->code, D.16043
	cmpw	$55, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp142
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _49->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _50->code, D.16043
	cmpw	$58, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp143
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _52->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _53->code, D.16043
	cmpw	$134, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp144
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _55->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _56->code, D.16043
	cmpw	$56, %ax	#, D.16043
	je	.L470	#,
	movq	-24(%rbp), %rax	# p, tmp145
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _58->fld[1].rtx, D.16042
	movzwl	(%rax), %eax	# _59->code, D.16043
	cmpw	$140, %ax	#, D.16043
	jne	.L468	#,
.L470:
	.loc 1 1870 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, D.16041
	jmp	.L466	#
.L468:
	.loc 1 1874 0
	movq	-24(%rbp), %rax	# p, tmp146
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	8(%rax), %rax	# _62->fld[0].rtx, D.16042
	testq	%rax, %rax	# D.16042
	je	.L471	#,
	.loc 1 1876 0
	movq	-24(%rbp), %rax	# p, tmp147
	movq	(%rax), %rax	# *p_2(D), D.16042
	addq	$8, %rax	#, D.16041
	movq	%rax, %rdi	# D.16041,
	call	find_constant_term_loc	#
	movq	%rax, -8(%rbp)	# tmp148, tem
	.loc 1 1877 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L471	#,
	.loc 1 1878 0
	movq	-8(%rbp), %rax	# tem, D.16041
	jmp	.L466	#
.L471:
	.loc 1 1881 0
	movq	-24(%rbp), %rax	# p, tmp149
	movq	(%rax), %rax	# *p_2(D), D.16042
	movq	16(%rax), %rax	# _68->fld[1].rtx, D.16042
	testq	%rax, %rax	# D.16042
	je	.L472	#,
	.loc 1 1883 0
	movq	-24(%rbp), %rax	# p, tmp150
	movq	(%rax), %rax	# *p_2(D), D.16042
	addq	$16, %rax	#, D.16041
	movq	%rax, %rdi	# D.16041,
	call	find_constant_term_loc	#
	movq	%rax, -8(%rbp)	# tmp151, tem
	.loc 1 1884 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L472	#,
	.loc 1 1885 0
	movq	-8(%rbp), %rax	# tem, D.16041
	jmp	.L466	#
.L472:
	.loc 1 1888 0
	movl	$0, %eax	#, D.16041
.L466:
	.loc 1 1889 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	find_constant_term_loc, .-find_constant_term_loc
	.globl	offsettable_memref_p
	.type	offsettable_memref_p, @function
offsettable_memref_p:
.LFB39:
	.loc 1 1905 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	.loc 1 1906 0
	movq	-8(%rbp), %rax	# op, tmp67
	movzwl	(%rax), %eax	# op_2(D)->code, D.16044
	.loc 1 1907 0
	cmpw	$66, %ax	#, D.16044
	jne	.L474	#,
	.loc 1 1907 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp68
	movq	8(%rax), %rdx	# op_2(D)->fld[0].rtx, D.16045
	movq	-8(%rbp), %rax	# op, tmp69
	movzbl	2(%rax), %eax	# op_2(D)->mode, D.16046
	movzbl	%al, %eax	# D.16046, D.16047
	movl	%eax, %esi	# D.16047,
	movl	$1, %edi	#,
	call	offsettable_address_p	#
	testl	%eax, %eax	# D.16048
	je	.L474	#,
	.loc 1 1907 0 discriminator 3
	movl	$1, %eax	#, iftmp.139
	jmp	.L475	#
.L474:
	.loc 1 1907 0 discriminator 2
	movl	$0, %eax	#, iftmp.139
.L475:
	.loc 1 1908 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	offsettable_memref_p, .-offsettable_memref_p
	.globl	offsettable_nonstrict_memref_p
	.type	offsettable_nonstrict_memref_p, @function
offsettable_nonstrict_memref_p:
.LFB40:
	.loc 1 1916 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	.loc 1 1917 0
	movq	-8(%rbp), %rax	# op, tmp67
	movzwl	(%rax), %eax	# op_2(D)->code, D.16049
	.loc 1 1918 0
	cmpw	$66, %ax	#, D.16049
	jne	.L478	#,
	.loc 1 1918 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp68
	movq	8(%rax), %rdx	# op_2(D)->fld[0].rtx, D.16050
	movq	-8(%rbp), %rax	# op, tmp69
	movzbl	2(%rax), %eax	# op_2(D)->mode, D.16051
	movzbl	%al, %eax	# D.16051, D.16052
	movl	%eax, %esi	# D.16052,
	movl	$0, %edi	#,
	call	offsettable_address_p	#
	testl	%eax, %eax	# D.16053
	je	.L478	#,
	.loc 1 1918 0 discriminator 3
	movl	$1, %eax	#, iftmp.140
	jmp	.L479	#
.L478:
	.loc 1 1918 0 discriminator 2
	movl	$0, %eax	#, iftmp.140
.L479:
	.loc 1 1919 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	offsettable_nonstrict_memref_p, .-offsettable_nonstrict_memref_p
	.globl	offsettable_address_p
	.type	offsettable_address_p, @function
offsettable_address_p:
.LFB41:
	.loc 1 1936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# strictp, strictp
	movl	%esi, -56(%rbp)	# mode, mode
	movq	%rdx, -64(%rbp)	# y, y
	.loc 1 1937 0
	movq	-64(%rbp), %rax	# y, tmp91
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	movzwl	%ax, %eax	# D.16055, tmp92
	movl	%eax, -40(%rbp)	# tmp92, ycode
	.loc 1 1939 0
	movq	-64(%rbp), %rax	# y, tmp93
	movq	%rax, -32(%rbp)	# tmp93, y1
	.loc 1 1942 0
	cmpl	$0, -52(%rbp)	#, strictp
	je	.L482	#,
	.loc 1 1942 0 is_stmt 0 discriminator 1
	movl	$strict_memory_address_p, %eax	#, iftmp.141
	jmp	.L483	#
.L482:
	.loc 1 1942 0 discriminator 2
	movl	$memory_address_p, %eax	#, iftmp.141
.L483:
	.loc 1 1941 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.141, addressp
	.loc 1 1943 0
	movl	-56(%rbp), %eax	# mode, mode.142
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16056
	movzbl	%al, %eax	# D.16056, tmp95
	movl	%eax, -44(%rbp)	# tmp95, mode_sz
	.loc 1 1945 0
	movq	-64(%rbp), %rax	# y, tmp96
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$67, %ax	#, D.16055
	je	.L484	#,
	.loc 1 1945 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# y, tmp97
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$68, %ax	#, D.16055
	je	.L484	#,
	movq	-64(%rbp), %rax	# y, tmp98
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$54, %ax	#, D.16055
	je	.L484	#,
	movq	-64(%rbp), %rax	# y, tmp99
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$58, %ax	#, D.16055
	je	.L484	#,
	movq	-64(%rbp), %rax	# y, tmp100
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$55, %ax	#, D.16055
	jne	.L485	#,
.L484:
	.loc 1 1946 0 is_stmt 1
	movl	$1, %eax	#, D.16054
	jmp	.L493	#
.L485:
	.loc 1 1951 0
	movq	-64(%rbp), %rax	# y, tmp101
	movq	%rax, %rdi	# tmp101,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.16054
	je	.L487	#,
	.loc 1 1952 0
	movl	$0, %eax	#, D.16054
	jmp	.L493	#
.L487:
	.loc 1 1958 0
	cmpl	$0, -44(%rbp)	#, mode_sz
	jne	.L488	#,
	.loc 1 1959 0
	movl	$16, -44(%rbp)	#, mode_sz
.L488:
	.loc 1 1964 0
	cmpl	$75, -40(%rbp)	#, ycode
	jne	.L489	#,
	.loc 1 1964 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	find_constant_term_loc	#
	movq	%rax, -8(%rbp)	# tmp103, y2
	cmpq	$0, -8(%rbp)	#, y2
	je	.L489	#,
.LBB25:
	.loc 1 1968 0 is_stmt 1
	movq	-8(%rbp), %rax	# y2, tmp104
	movq	(%rax), %rax	# *y2_24, y1.143
	movq	%rax, -32(%rbp)	# y1.143, y1
	.loc 1 1969 0
	movl	-44(%rbp), %eax	# mode_sz, tmp105
	subl	$1, %eax	#, D.16057
	movl	%eax, %edx	# D.16057, D.16058
	movq	-8(%rbp), %rax	# y2, tmp106
	movq	(%rax), %rax	# *y2_24, D.16059
	movq	%rdx, %rsi	# D.16058,
	movq	%rax, %rdi	# D.16059,
	call	plus_constant_wide	#
	movq	-8(%rbp), %rdx	# y2, tmp107
	movq	%rax, (%rdx)	# D.16059, *y2_24
	.loc 1 1972 0
	movq	-64(%rbp), %rdx	# y, tmp108
	movq	-16(%rbp), %rax	# addressp, tmp109
	movq	%rdx, %rsi	# tmp108,
	movl	$2, %edi	#,
	call	*%rax	# tmp109
	movl	%eax, -36(%rbp)	# tmp110, good
	.loc 1 1975 0
	movq	-32(%rbp), %rdx	# y1, y1.144
	movq	-8(%rbp), %rax	# y2, tmp111
	movq	%rdx, (%rax)	# y1.144, *y2_24
	.loc 1 1976 0
	movl	-36(%rbp), %eax	# good, D.16054
	jmp	.L493	#
.L489:
.LBE25:
	.loc 1 1979 0
	movl	-40(%rbp), %eax	# ycode, ycode.145
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16060
	cmpb	$97, %al	#, D.16060
	jne	.L490	#,
	.loc 1 1980 0
	movl	$0, %eax	#, D.16054
	jmp	.L493	#
.L490:
	.loc 1 1987 0
	movq	-64(%rbp), %rax	# y, tmp113
	movzwl	(%rax), %eax	# y_5(D)->code, D.16055
	cmpw	$135, %ax	#, D.16055
	jne	.L491	#,
	.loc 1 1988 0
	cmpl	$51, -56(%rbp)	#, mode
	je	.L491	#,
	.loc 1 1989 0
	movl	-56(%rbp), %eax	# mode, tmp114
	movl	%eax, %edi	# tmp114,
	call	get_mode_alignment	#
	shrl	$3, %eax	#, D.16057
	cmpl	-44(%rbp), %eax	# mode_sz, D.16057
	jb	.L491	#,
	.loc 1 1990 0
	movl	-44(%rbp), %eax	# mode_sz, tmp115
	subl	$1, %eax	#, D.16057
	movl	%eax, %edx	# D.16057, D.16058
	movq	-64(%rbp), %rax	# y, tmp116
	movq	16(%rax), %rax	# y_5(D)->fld[1].rtx, D.16059
	movq	%rdx, %rsi	# D.16058,
	movq	%rax, %rdi	# D.16059,
	call	plus_constant_wide	#
	movq	%rax, %rcx	#, D.16059
	movq	-64(%rbp), %rax	# y, tmp117
	movq	8(%rax), %rdx	# y_5(D)->fld[0].rtx, D.16059
	movq	-64(%rbp), %rax	# y, tmp118
	movzbl	2(%rax), %eax	# y_5(D)->mode, D.16056
	movzbl	%al, %eax	# D.16056, D.16061
	movl	%eax, %esi	# D.16061,
	movl	$135, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -24(%rbp)	# tmp119, z
	jmp	.L492	#
.L491:
	.loc 1 1993 0
	movl	-44(%rbp), %eax	# mode_sz, tmp120
	subl	$1, %eax	#, D.16057
	movl	%eax, %edx	# D.16057, D.16058
	movq	-64(%rbp), %rax	# y, tmp121
	movq	%rdx, %rsi	# D.16058,
	movq	%rax, %rdi	# tmp121,
	call	plus_constant_wide	#
	movq	%rax, -24(%rbp)	# tmp122, z
.L492:
	.loc 1 1997 0
	movq	-24(%rbp), %rdx	# z, tmp123
	movq	-16(%rbp), %rax	# addressp, tmp124
	movq	%rdx, %rsi	# tmp123,
	movl	$2, %edi	#,
	call	*%rax	# tmp124
.L493:
	.loc 1 1998 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	offsettable_address_p, .-offsettable_address_p
	.globl	mode_dependent_address_p
	.type	mode_dependent_address_p, @function
mode_dependent_address_p:
.LFB42:
	.loc 1 2009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# addr, addr
	.loc 1 2010 0
	movq	-8(%rbp), %rax	# addr, tmp63
	movzwl	(%rax), %eax	# addr_2(D)->code, D.16063
	cmpw	$99, %ax	#, D.16063
	je	.L495	#,
	.loc 1 2010 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# addr, tmp64
	movzwl	(%rax), %eax	# addr_2(D)->code, D.16063
	cmpw	$98, %ax	#, D.16063
	je	.L495	#,
	.loc 1 2011 0 is_stmt 1
	movl	$0, %eax	#, D.16062
	jmp	.L496	#
.L495:
	.loc 1 2014 0
	movl	$1, %eax	#, D.16062
.L496:
	.loc 1 2015 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	mode_dependent_address_p, .-mode_dependent_address_p
	.globl	mode_independent_operand
	.type	mode_independent_operand, @function
mode_independent_operand:
.LFB43:
	.loc 1 2024 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 2027 0
	movl	-28(%rbp), %edx	# mode, tmp65
	movq	-24(%rbp), %rax	# op, tmp66
	movl	%edx, %esi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	general_operand	#
	testl	%eax, %eax	# D.16064
	jne	.L498	#,
	.loc 1 2028 0
	movl	$0, %eax	#, D.16064
	jmp	.L499	#
.L498:
	.loc 1 2030 0
	movq	-24(%rbp), %rax	# op, tmp67
	movzwl	(%rax), %eax	# op_2(D)->code, D.16065
	cmpw	$66, %ax	#, D.16065
	je	.L500	#,
	.loc 1 2031 0
	movl	$1, %eax	#, D.16064
	jmp	.L499	#
.L500:
	.loc 1 2033 0
	movq	-24(%rbp), %rax	# op, tmp68
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtx, tmp69
	movq	%rax, -8(%rbp)	# tmp69, addr
	.loc 1 2034 0
	movq	-8(%rbp), %rax	# addr, tmp70
	movzwl	(%rax), %eax	# addr_8->code, D.16065
	cmpw	$99, %ax	#, D.16065
	je	.L501	#,
	.loc 1 2034 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# addr, tmp71
	movzwl	(%rax), %eax	# addr_8->code, D.16065
	cmpw	$98, %ax	#, D.16065
	je	.L501	#,
	.loc 1 2035 0 is_stmt 1
	movl	$1, %eax	#, D.16064
	jmp	.L499	#
.L501:
	.loc 1 2038 0
	movl	$0, %eax	#, D.16064
.L499:
	.loc 1 2039 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	mode_independent_operand, .-mode_independent_operand
	.globl	extract_insn_cached
	.type	extract_insn_cached, @function
extract_insn_cached:
.LFB44:
	.loc 1 2048 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2049 0
	movq	recog_data+1000(%rip), %rax	# recog_data.insn, D.16066
	cmpq	-8(%rbp), %rax	# insn, D.16066
	jne	.L503	#,
	.loc 1 2049 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp61
	movl	40(%rax), %eax	# insn_2(D)->fld[4].rtint, D.16067
	testl	%eax, %eax	# D.16067
	js	.L503	#,
	.loc 1 2050 0 is_stmt 1
	jmp	.L502	#
.L503:
	.loc 1 2051 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	extract_insn	#
	.loc 1 2052 0
	movq	-8(%rbp), %rax	# insn, tmp63
	movq	%rax, recog_data+1000(%rip)	# tmp63, recog_data.insn
.L502:
	.loc 1 2053 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	extract_insn_cached, .-extract_insn_cached
	.globl	extract_constrain_insn_cached
	.type	extract_constrain_insn_cached, @function
extract_constrain_insn_cached:
.LFB45:
	.loc 1 2059 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2060 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	extract_insn_cached	#
	.loc 1 2061 0
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.146
	cmpl	$-1, %eax	#, which_alternative.146
	jne	.L505	#,
	.loc 1 2062 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.147
	movl	%eax, %edi	# reload_completed.147,
	call	constrain_operands	#
	testl	%eax, %eax	# D.16068
	jne	.L505	#,
	.loc 1 2063 0
	movq	-8(%rbp), %rax	# insn, tmp63
	movl	$__FUNCTION__.11905, %ecx	#,
	movl	$2063, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	_fatal_insn_not_found	#
.L505:
	.loc 1 2064 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	extract_constrain_insn_cached, .-extract_constrain_insn_cached
	.globl	constrain_operands_cached
	.type	constrain_operands_cached, @function
constrain_operands_cached:
.LFB46:
	.loc 1 2069 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# strict, strict
	.loc 1 2070 0
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.148
	cmpl	$-1, %eax	#, which_alternative.148
	jne	.L508	#,
	.loc 1 2071 0
	movl	-4(%rbp), %eax	# strict, tmp62
	movl	%eax, %edi	# tmp62,
	call	constrain_operands	#
	jmp	.L509	#
.L508:
	.loc 1 2073 0
	movl	$1, %eax	#, D.16069
.L509:
	.loc 1 2074 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	constrain_operands_cached, .-constrain_operands_cached
	.globl	extract_insn
	.type	extract_insn, @function
extract_insn:
.LFB47:
	.loc 1 2081 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2085 0
	movq	-40(%rbp), %rax	# insn, tmp111
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, tmp112
	movq	%rax, -8(%rbp)	# tmp112, body
	.loc 1 2087 0
	movq	$0, recog_data+1000(%rip)	#, recog_data.insn
	.loc 1 2088 0
	movb	$0, recog_data+996(%rip)	#, recog_data.n_operands
	.loc 1 2089 0
	movb	$0, recog_data+998(%rip)	#, recog_data.n_alternatives
	.loc 1 2090 0
	movb	$0, recog_data+997(%rip)	#, recog_data.n_dups
	.loc 1 2091 0
	movl	$-1, which_alternative(%rip)	#, which_alternative
	.loc 1 2093 0
	movq	-8(%rbp), %rax	# body, tmp113
	movzwl	(%rax), %eax	# body_9->code, D.16070
	movzwl	%ax, %eax	# D.16070, D.16071
	subl	$39, %eax	#, tmp114
	cmpl	$10, %eax	#, tmp114
	ja	.L511	#,
	movl	%eax, %eax	# tmp114, tmp115
	movq	.L513(,%rax,8), %rax	#, tmp116
	jmp	*%rax	# tmp116
	.section	.rodata
	.align 8
	.align 4
.L513:
	.quad	.L512
	.quad	.L538
	.quad	.L515
	.quad	.L511
	.quad	.L511
	.quad	.L538
	.quad	.L538
	.quad	.L511
	.quad	.L516
	.quad	.L538
	.quad	.L538
	.text
.L516:
	.loc 1 2103 0
	movq	-8(%rbp), %rax	# body, tmp117
	movq	16(%rax), %rax	# body_9->fld[1].rtx, D.16072
	movzwl	(%rax), %eax	# _12->code, D.16070
	cmpw	$41, %ax	#, D.16070
	jne	.L518	#,
	.loc 1 2104 0
	jmp	.L515	#
.L518:
	.loc 1 2106 0
	jmp	.L511	#
.L512:
	.loc 1 2108 0
	movq	-8(%rbp), %rax	# body, tmp118
	movq	8(%rax), %rax	# body_9->fld[0].rtvec, D.16073
	movq	8(%rax), %rax	# _14->elem, D.16072
	movzwl	(%rax), %eax	# _15->code, D.16070
	cmpw	$47, %ax	#, D.16070
	jne	.L519	#,
	.loc 1 2109 0
	movq	-8(%rbp), %rax	# body, tmp119
	movq	8(%rax), %rax	# body_9->fld[0].rtvec, D.16073
	movq	8(%rax), %rax	# _17->elem, D.16072
	movq	16(%rax), %rax	# _18->fld[1].rtx, D.16072
	movzwl	(%rax), %eax	# _19->code, D.16070
	cmpw	$41, %ax	#, D.16070
	je	.L515	#,
.L519:
	.loc 1 2110 0
	movq	-8(%rbp), %rax	# body, tmp120
	movq	8(%rax), %rax	# body_9->fld[0].rtvec, D.16073
	movq	8(%rax), %rax	# _21->elem, D.16072
	movzwl	(%rax), %eax	# _22->code, D.16070
	cmpw	$41, %ax	#, D.16070
	jne	.L511	#,
.L515:
	.loc 1 2116 0
	movq	-8(%rbp), %rax	# body, tmp121
	movq	%rax, %rdi	# tmp121,
	call	asm_noperands	#
	movl	%eax, -24(%rbp)	# tmp122, noperands
	movl	-24(%rbp), %eax	# noperands, tmp123
	movb	%al, recog_data+996(%rip)	# D.16074, recog_data.n_operands
	.loc 1 2117 0
	cmpl	$0, -24(%rbp)	#, noperands
	js	.L520	#,
	.loc 1 2122 0
	cmpl	$30, -24(%rbp)	#, noperands
	jle	.L521	#,
	.loc 1 2123 0
	movl	$__FUNCTION__.11926, %edx	#,
	movl	$2123, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L521:
	.loc 1 2126 0
	movq	-8(%rbp), %rax	# body, tmp124
	movl	$recog_data+720, %r8d	#,
	movl	$recog_data+480, %ecx	#,
	movl	$recog_data+240, %edx	#,
	movl	$recog_data, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	decode_asm_operands	#
	.loc 1 2130 0
	cmpl	$0, -24(%rbp)	#, noperands
	jle	.L522	#,
.LBB26:
	.loc 1 2132 0
	movq	recog_data+480(%rip), %rax	# recog_data.constraints, tmp125
	movq	%rax, -16(%rbp)	# tmp125, p
	.loc 1 2133 0
	movb	$1, recog_data+998(%rip)	#, recog_data.n_alternatives
	.loc 1 2134 0
	jmp	.L523	#
.L524:
	.loc 1 2135 0
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.16074
	movl	%eax, %ecx	# D.16074, D.16075
	movq	-16(%rbp), %rax	# p, p.149
	leaq	1(%rax), %rdx	#, tmp126
	movq	%rdx, -16(%rbp)	# tmp126, p
	movzbl	(%rax), %eax	# *p.149_30, D.16074
	cmpb	$44, %al	#, D.16074
	sete	%al	#, D.16076
	addl	%ecx, %eax	# D.16075, D.16075
	movb	%al, recog_data+998(%rip)	# D.16074, recog_data.n_alternatives
.L523:
	.loc 1 2134 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp127
	movzbl	(%rax), %eax	# *p_4, D.16074
	testb	%al, %al	# D.16074
	jne	.L524	#,
.L522:
.LBE26:
	.loc 1 2137 0
	jmp	.L525	#
.L520:
	.loc 1 2139 0
	movq	-40(%rbp), %rax	# insn, tmp128
	movl	$__FUNCTION__.11926, %ecx	#,
	movl	$2139, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	_fatal_insn_not_found	#
.L511:
	.loc 1 2146 0
	movq	-40(%rbp), %rax	# insn, tmp129
	movl	40(%rax), %eax	# insn_8(D)->fld[4].rtint, D.16077
	testl	%eax, %eax	# D.16077
	js	.L526	#,
	.loc 1 2146 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp130
	movl	40(%rax), %eax	# insn_8(D)->fld[4].rtint, iftmp.150
	jmp	.L527	#
.L526:
	.loc 1 2146 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp131
	movq	%rax, %rdi	# tmp131,
	call	recog_memoized_1	#
.L527:
	.loc 1 2146 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.150, icode
	.loc 1 2147 0 is_stmt 1 discriminator 3
	cmpl	$0, -20(%rbp)	#, icode
	jns	.L528	#,
	.loc 1 2148 0
	movq	-40(%rbp), %rax	# insn, tmp132
	movl	$__FUNCTION__.11926, %ecx	#,
	movl	$2148, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	_fatal_insn_not_found	#
.L528:
	.loc 1 2150 0
	movl	-20(%rbp), %eax	# icode, tmp134
	movslq	%eax, %rdx	# tmp134, tmp133
	movq	%rdx, %rax	# tmp133, tmp135
	salq	$2, %rax	#, tmp135
	addq	%rdx, %rax	# tmp133, tmp135
	salq	$3, %rax	#, tmp136
	addq	$insn_data+32, %rax	#, tmp137
	movzbl	(%rax), %eax	# insn_data[icode_40].n_operands, D.16074
	movsbl	%al, %eax	# D.16074, tmp138
	movl	%eax, -24(%rbp)	# tmp138, noperands
	movl	-24(%rbp), %eax	# noperands, tmp139
	movb	%al, recog_data+996(%rip)	# D.16074, recog_data.n_operands
	.loc 1 2151 0
	movl	-20(%rbp), %eax	# icode, tmp141
	movslq	%eax, %rdx	# tmp141, tmp140
	movq	%rdx, %rax	# tmp140, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# tmp140, tmp142
	salq	$3, %rax	#, tmp143
	addq	$insn_data+32, %rax	#, tmp144
	movzbl	2(%rax), %eax	# insn_data[icode_40].n_alternatives, D.16074
	movb	%al, recog_data+998(%rip)	# D.16074, recog_data.n_alternatives
	.loc 1 2152 0
	movl	-20(%rbp), %eax	# icode, tmp146
	movslq	%eax, %rdx	# tmp146, tmp145
	movq	%rdx, %rax	# tmp145, tmp147
	salq	$2, %rax	#, tmp147
	addq	%rdx, %rax	# tmp145, tmp147
	salq	$3, %rax	#, tmp148
	addq	$insn_data+32, %rax	#, tmp149
	movzbl	1(%rax), %eax	# insn_data[icode_40].n_dups, D.16074
	movb	%al, recog_data+997(%rip)	# D.16074, recog_data.n_dups
	.loc 1 2154 0
	movq	-40(%rbp), %rax	# insn, tmp150
	movq	%rax, %rdi	# tmp150,
	call	insn_extract	#
	.loc 1 2156 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L529	#
.L531:
	.loc 1 2158 0
	movl	-20(%rbp), %eax	# icode, tmp152
	movslq	%eax, %rdx	# tmp152, tmp151
	movq	%rdx, %rax	# tmp151, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# tmp151, tmp153
	salq	$3, %rax	#, tmp154
	addq	$insn_data+24, %rax	#, tmp155
	movq	(%rax), %rcx	# insn_data[icode_40].operand, D.16078
	movl	-28(%rbp), %eax	# i, tmp156
	movslq	%eax, %rdx	# tmp156, D.16079
	movq	%rdx, %rax	# D.16079, tmp157
	addq	%rax, %rax	# tmp157
	addq	%rdx, %rax	# D.16079, tmp157
	salq	$3, %rax	#, tmp158
	addq	%rcx, %rax	# D.16078, D.16078
	movq	8(%rax), %rax	# _50->constraint, D.16080
	movl	-28(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	addq	$60, %rdx	#, tmp161
	movq	%rax, recog_data(,%rdx,8)	# D.16080, recog_data.constraints
	.loc 1 2159 0
	movl	-20(%rbp), %eax	# icode, tmp163
	movslq	%eax, %rdx	# tmp163, tmp162
	movq	%rdx, %rax	# tmp162, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# tmp162, tmp164
	salq	$3, %rax	#, tmp165
	addq	$insn_data+24, %rax	#, tmp166
	movq	(%rax), %rcx	# insn_data[icode_40].operand, D.16078
	movl	-28(%rbp), %eax	# i, tmp167
	movslq	%eax, %rdx	# tmp167, D.16079
	movq	%rdx, %rax	# D.16079, tmp168
	addq	%rax, %rax	# tmp168
	addq	%rdx, %rax	# D.16079, tmp168
	salq	$3, %rax	#, tmp169
	addq	%rcx, %rax	# D.16078, D.16078
	movzwl	16(%rax), %eax	# _55->mode, D.16070
	movzwl	%ax, %eax	# D.16070, D.16081
	movl	-28(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	addq	$180, %rdx	#, tmp172
	movl	%eax, recog_data(,%rdx,4)	# D.16081, recog_data.operand_mode
	.loc 1 2161 0
	movl	-28(%rbp), %eax	# i, tmp174
	cltq
	addq	$180, %rax	#, tmp175
	movl	recog_data(,%rax,4), %eax	# recog_data.operand_mode, D.16081
	testl	%eax, %eax	# D.16081
	jne	.L530	#,
	.loc 1 2162 0
	movl	-28(%rbp), %eax	# i, tmp177
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16072
	movzbl	2(%rax), %eax	# _59->mode, D.16082
	movzbl	%al, %eax	# D.16082, D.16081
	movl	-28(%rbp), %edx	# i, tmp179
	movslq	%edx, %rdx	# tmp179, tmp178
	addq	$180, %rdx	#, tmp180
	movl	%eax, recog_data(,%rdx,4)	# D.16081, recog_data.operand_mode
.L530:
	.loc 1 2156 0
	addl	$1, -28(%rbp)	#, i
.L529:
	.loc 1 2156 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp181
	cmpl	-24(%rbp), %eax	# noperands, tmp181
	jl	.L531	#,
.L525:
	.loc 1 2165 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L532	#
.L537:
	.loc 1 2167 0
	movl	-28(%rbp), %eax	# i, tmp183
	cltq
	addq	$60, %rax	#, tmp184
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.16080
	movzbl	(%rax), %eax	# *_64, D.16074
	cmpb	$61, %al	#, D.16074
	je	.L533	#,
	.loc 1 2168 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp186
	cltq
	addq	$60, %rax	#, tmp187
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.16080
	movzbl	(%rax), %eax	# *_66, D.16074
	.loc 1 2167 0 discriminator 1
	cmpb	$43, %al	#, D.16074
	jne	.L534	#,
	.loc 1 2167 0 is_stmt 0 discriminator 3
	movl	$2, %eax	#, iftmp.152
	jmp	.L536	#
.L534:
	.loc 1 2167 0 discriminator 4
	movl	$0, %eax	#, iftmp.152
	jmp	.L536	#
.L533:
	.loc 1 2167 0 discriminator 2
	movl	$1, %eax	#, iftmp.151
.L536:
	.loc 1 2167 0 discriminator 5
	movl	-28(%rbp), %edx	# i, tmp189
	movslq	%edx, %rdx	# tmp189, tmp188
	addq	$208, %rdx	#, tmp190
	movl	%eax, recog_data+8(,%rdx,4)	# iftmp.151, recog_data.operand_type
	.loc 1 2165 0 is_stmt 1 discriminator 5
	addl	$1, -28(%rbp)	#, i
.L532:
	.loc 1 2165 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp191
	cmpl	-24(%rbp), %eax	# noperands, tmp191
	jl	.L537	#,
	.loc 1 2171 0 is_stmt 1
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.16074
	cmpb	$30, %al	#, D.16074
	jle	.L510	#,
	.loc 1 2172 0
	movl	$__FUNCTION__.11926, %edx	#,
	movl	$2172, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L538:
	.loc 1 2100 0
	nop
.L510:
	.loc 1 2173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	extract_insn, .-extract_insn
	.globl	preprocess_constraints
	.type	preprocess_constraints, @function
preprocess_constraints:
.LFB48:
	.loc 1 2180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2183 0
	movl	$28800, %edx	#,
	movl	$0, %esi	#,
	movl	$recog_op_alt, %edi	#,
	call	memset	#
	.loc 1 2184 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L540	#
.L615:
.LBB27:
	.loc 1 2188 0
	movl	-48(%rbp), %eax	# i, tmp205
	cltq
	addq	$60, %rax	#, tmp206
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, tmp207
	movq	%rax, -32(%rbp)	# tmp207, p
	.loc 1 2190 0
	movl	-48(%rbp), %eax	# i, tmp209
	cltq
	salq	$6, %rax	#, tmp211
	movq	%rax, %rdx	# tmp210, tmp212
	salq	$4, %rdx	#, tmp212
	subq	%rax, %rdx	# tmp210, tmp212
	leaq	recog_op_alt(%rdx), %rax	#, tmp213
	movq	%rax, -24(%rbp)	# tmp213, op_alt
	.loc 1 2192 0
	movl	$0, -44(%rbp)	#, j
	jmp	.L541	#
.L614:
	.loc 1 2194 0
	movl	-44(%rbp), %eax	# j, tmp214
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp215
	addq	%rdx, %rax	# D.16085, D.16086
	movl	$0, 8(%rax)	#, _44->class
	.loc 1 2195 0
	movl	-44(%rbp), %eax	# j, tmp216
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp217
	addq	%rax, %rdx	# tmp217, D.16086
	movq	-32(%rbp), %rax	# p, tmp218
	movq	%rax, (%rdx)	# tmp218, _47->constraint
	.loc 1 2196 0
	movl	-44(%rbp), %eax	# j, tmp219
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp220
	addq	%rdx, %rax	# D.16085, D.16086
	movl	$-1, 16(%rax)	#, _50->matches
	.loc 1 2197 0
	movl	-44(%rbp), %eax	# j, tmp221
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp222
	addq	%rdx, %rax	# D.16085, D.16086
	movl	$-1, 20(%rax)	#, _53->matched
	.loc 1 2199 0
	movq	-32(%rbp), %rax	# p, tmp223
	movzbl	(%rax), %eax	# *p_8, D.16083
	testb	%al, %al	# D.16083
	je	.L542	#,
	.loc 1 2199 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp224
	movzbl	(%rax), %eax	# *p_8, D.16083
	cmpb	$44, %al	#, D.16083
	jne	.L543	#,
.L542:
	.loc 1 2201 0 is_stmt 1
	movl	-44(%rbp), %eax	# j, tmp225
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp226
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _211->anything_ok, tmp229
	orl	$-128, %edx	#, tmp230
	movb	%dl, 24(%rax)	# tmp230, _211->anything_ok
	.loc 1 2202 0
	jmp	.L544	#
.L543:
.LBB28:
	.loc 1 2207 0
	movq	-32(%rbp), %rax	# p, p.153
	leaq	1(%rax), %rdx	#, tmp231
	movq	%rdx, -32(%rbp)	# tmp231, p
	movzbl	(%rax), %eax	# *p.153_56, tmp232
	movb	%al, -49(%rbp)	# tmp232, c
	.loc 1 2208 0
	cmpb	$35, -49(%rbp)	#, c
	jne	.L545	#,
.L546:
	.loc 1 2210 0 discriminator 1
	movq	-32(%rbp), %rax	# p, p.154
	leaq	1(%rax), %rdx	#, tmp233
	movq	%rdx, -32(%rbp)	# tmp233, p
	movzbl	(%rax), %eax	# *p.154_59, tmp234
	movb	%al, -49(%rbp)	# tmp234, c
	.loc 1 2211 0 discriminator 1
	cmpb	$44, -49(%rbp)	#, c
	je	.L545	#,
	cmpb	$0, -49(%rbp)	#, c
	jne	.L546	#,
.L545:
	.loc 1 2212 0
	cmpb	$44, -49(%rbp)	#, c
	je	.L544	#,
	.loc 1 2212 0 is_stmt 0 discriminator 1
	cmpb	$0, -49(%rbp)	#, c
	je	.L544	#,
	.loc 1 2215 0 is_stmt 1
	movsbl	-49(%rbp), %eax	# c, D.16084
	subl	$33, %eax	#, tmp235
	cmpl	$82, %eax	#, tmp235
	ja	.L547	#,
	movl	%eax, %eax	# tmp235, tmp236
	movq	.L549(,%rax,8), %rax	#, tmp237
	jmp	*%rax	# tmp237
	.section	.rodata
	.align 8
	.align 4
.L549:
	.quad	.L548
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L616
	.quad	.L551
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L616
	.quad	.L616
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L552
	.quad	.L547
	.quad	.L547
	.quad	.L553
	.quad	.L616
	.quad	.L554
	.quad	.L555
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L616
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L556
	.quad	.L547
	.quad	.L557
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L558
	.quad	.L547
	.quad	.L616
	.quad	.L547
	.quad	.L547
	.quad	.L547
	.quad	.L559
	.quad	.L616
	.quad	.L560
	.quad	.L561
	.quad	.L547
	.quad	.L558
	.quad	.L616
	.text
.L555:
	.loc 1 2226 0
	movl	-44(%rbp), %eax	# j, tmp238
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp239
	addq	%rdx, %rax	# D.16085, D.16086
	movl	-44(%rbp), %edx	# j, tmp240
	movslq	%edx, %rdx	# tmp240, D.16085
	movq	%rdx, %rcx	# D.16085, D.16085
	salq	$5, %rcx	#, D.16085
	movq	-24(%rbp), %rdx	# op_alt, tmp241
	addq	%rcx, %rdx	# D.16085, D.16086
	movl	12(%rdx), %edx	# _68->reject, D.16087
	addl	$6, %edx	#, D.16087
	movl	%edx, 12(%rax)	# D.16087, _65->reject
	.loc 1 2227 0
	jmp	.L562	#
.L548:
	.loc 1 2229 0
	movl	-44(%rbp), %eax	# j, tmp242
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp243
	addq	%rdx, %rax	# D.16085, D.16086
	movl	-44(%rbp), %edx	# j, tmp244
	movslq	%edx, %rdx	# tmp244, D.16085
	movq	%rdx, %rcx	# D.16085, D.16085
	salq	$5, %rcx	#, D.16085
	movq	-24(%rbp), %rdx	# op_alt, tmp245
	addq	%rcx, %rdx	# D.16085, D.16086
	movl	12(%rdx), %edx	# _76->reject, D.16087
	addl	$600, %edx	#, D.16087
	movl	%edx, 12(%rax)	# D.16087, _73->reject
	.loc 1 2230 0
	jmp	.L562	#
.L551:
	.loc 1 2232 0
	movl	-44(%rbp), %eax	# j, tmp246
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp247
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _81->earlyclobber, tmp250
	orl	$1, %edx	#, tmp251
	movb	%dl, 24(%rax)	# tmp251, _81->earlyclobber
	.loc 1 2233 0
	jmp	.L562	#
.L552:
.LBB29:
	.loc 1 2239 0
	movl	-44(%rbp), %eax	# j, tmp252
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp253
	leaq	(%rdx,%rax), %rbx	#, D.16086
	movq	-32(%rbp), %rax	# p, tmp254
	leaq	-1(%rax), %rcx	#, D.16088
	leaq	-40(%rbp), %rax	#, tmp255
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp255,
	movq	%rcx, %rdi	# D.16088,
	call	strtoul	#
	movl	%eax, 16(%rbx)	# D.16084, _84->matches
	.loc 1 2240 0
	movl	-44(%rbp), %eax	# j, tmp256
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp257
	addq	%rdx, %rax	# D.16085, D.16086
	movl	16(%rax), %eax	# _90->matches, D.16084
	movl	-44(%rbp), %edx	# j, tmp259
	movslq	%edx, %rcx	# tmp259, tmp258
	cltq
	addq	%rax, %rax	# tmp262
	movq	%rax, %rdx	# tmp261, tmp263
	salq	$4, %rdx	#, tmp263
	subq	%rax, %rdx	# tmp261, tmp263
	leaq	(%rdx,%rcx), %rax	#, tmp264
	salq	$5, %rax	#, tmp265
	leaq	recog_op_alt+16(%rax), %rdx	#, tmp266
	movl	-48(%rbp), %eax	# i, tmp267
	movl	%eax, 4(%rdx)	# tmp267, recog_op_alt[_91][j_2].matched
	.loc 1 2241 0
	movq	-40(%rbp), %rax	# end, tmp268
	movq	%rax, -32(%rbp)	# tmp268, p
.LBE29:
	.loc 1 2243 0
	jmp	.L562	#
.L559:
	.loc 1 2246 0
	movl	-44(%rbp), %eax	# j, tmp269
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp270
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _95->memory_ok, tmp273
	orl	$2, %edx	#, tmp274
	movb	%dl, 24(%rax)	# tmp274, _95->memory_ok
	.loc 1 2247 0
	jmp	.L562	#
.L553:
	.loc 1 2249 0
	movl	-44(%rbp), %eax	# j, tmp275
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp276
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _98->decmem_ok, tmp279
	orl	$16, %edx	#, tmp280
	movb	%dl, 24(%rax)	# tmp280, _98->decmem_ok
	.loc 1 2250 0
	jmp	.L562	#
.L554:
	.loc 1 2252 0
	movl	-44(%rbp), %eax	# j, tmp281
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp282
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _101->incmem_ok, tmp285
	orl	$32, %edx	#, tmp286
	movb	%dl, 24(%rax)	# tmp286, _101->incmem_ok
	.loc 1 2253 0
	jmp	.L562	#
.L556:
	.loc 1 2255 0
	movl	-44(%rbp), %eax	# j, tmp287
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp288
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _104->nonoffmem_ok, tmp291
	orl	$8, %edx	#, tmp292
	movb	%dl, 24(%rax)	# tmp292, _104->nonoffmem_ok
	.loc 1 2256 0
	jmp	.L562	#
.L560:
	.loc 1 2258 0
	movl	-44(%rbp), %eax	# j, tmp293
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp294
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _107->offmem_ok, tmp297
	orl	$4, %edx	#, tmp298
	movb	%dl, 24(%rax)	# tmp298, _107->offmem_ok
	.loc 1 2259 0
	jmp	.L562	#
.L557:
	.loc 1 2261 0
	movl	-44(%rbp), %eax	# j, tmp299
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp300
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _110->anything_ok, tmp303
	orl	$-128, %edx	#, tmp304
	movb	%dl, 24(%rax)	# tmp304, _110->anything_ok
	.loc 1 2262 0
	jmp	.L562	#
.L561:
	.loc 1 2265 0
	movl	-44(%rbp), %eax	# j, tmp305
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp306
	addq	%rdx, %rax	# D.16085, D.16086
	movzbl	24(%rax), %edx	# _113->is_address, tmp309
	orl	$64, %edx	#, tmp310
	movb	%dl, 24(%rax)	# tmp310, _113->is_address
	.loc 1 2266 0
	movl	-44(%rbp), %eax	# j, tmp311
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp312
	leaq	(%rdx,%rax), %rcx	#, D.16086
	movl	-44(%rbp), %eax	# j, tmp313
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp314
	addq	%rdx, %rax	# D.16085, D.16086
	movl	8(%rax), %eax	# _119->class, D.16089
	.loc 1 2267 0
	movslq	%eax, %rdx	# D.16084, tmp315
	movq	%rdx, %rax	# tmp315, tmp316
	salq	$2, %rax	#, tmp316
	addq	%rdx, %rax	# tmp315, tmp316
	leaq	0(,%rax,4), %rdx	#, tmp317
	addq	%rdx, %rax	# tmp317, tmp316
	salq	$2, %rax	#, tmp318
	addq	$reg_class_subunion+48, %rax	#, tmp319
	movl	(%rax), %eax	# reg_class_subunion, D.16089
	.loc 1 2266 0
	movl	%eax, 8(%rcx)	# D.16089, _116->class
	.loc 1 2268 0
	jmp	.L562	#
.L558:
	.loc 1 2271 0
	movl	-44(%rbp), %eax	# j, tmp320
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp321
	leaq	(%rdx,%rax), %rcx	#, D.16086
	movl	-44(%rbp), %eax	# j, tmp322
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp323
	addq	%rdx, %rax	# D.16085, D.16086
	movl	8(%rax), %eax	# _128->class, D.16089
	movslq	%eax, %rdx	# D.16084, tmp324
	movq	%rdx, %rax	# tmp324, tmp325
	salq	$2, %rax	#, tmp325
	addq	%rdx, %rax	# tmp324, tmp325
	leaq	0(,%rax,4), %rdx	#, tmp326
	addq	%rdx, %rax	# tmp326, tmp325
	salq	$2, %rax	#, tmp327
	addq	$reg_class_subunion+48, %rax	#, tmp328
	movl	(%rax), %eax	# reg_class_subunion, D.16089
	movl	%eax, 8(%rcx)	# D.16089, _125->class
	.loc 1 2272 0
	jmp	.L562	#
.L547:
	.loc 1 2275 0
	movl	-44(%rbp), %eax	# j, tmp329
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp330
	leaq	(%rdx,%rax), %rcx	#, D.16086
	movl	-44(%rbp), %eax	# j, tmp331
	cltq
	salq	$5, %rax	#, D.16085
	movq	%rax, %rdx	# D.16085, D.16085
	movq	-24(%rbp), %rax	# op_alt, tmp332
	addq	%rdx, %rax	# D.16085, D.16086
	movl	8(%rax), %eax	# _137->class, D.16089
	movl	%eax, %edx	# D.16089, D.16084
	cmpb	$114, -49(%rbp)	#, c
	je	.L563	#,
	.loc 1 2275 0 is_stmt 0 discriminator 1
	cmpb	$82, -49(%rbp)	#, c
	je	.L564	#,
	cmpb	$113, -49(%rbp)	#, c
	jne	.L565	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.159
	andl	$33554432, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L566	#,
	movl	$12, %eax	#, iftmp.158
	jmp	.L613	#
.L566:
	.loc 1 2275 0 discriminator 2
	movl	$8, %eax	#, iftmp.158
	jmp	.L613	#
.L565:
	cmpb	$81, -49(%rbp)	#, c
	je	.L569	#,
	.loc 1 2275 0 discriminator 1
	cmpb	$102, -49(%rbp)	#, c
	jne	.L570	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.163
	andl	$1, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	jne	.L571	#,
	.loc 1 2275 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.164
	andl	$32, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L572	#,
.L571:
	.loc 1 2275 0 discriminator 1
	movl	$15, %eax	#, iftmp.162
	jmp	.L573	#
.L572:
	movl	$0, %eax	#, iftmp.162
.L573:
	jmp	.L613	#
.L570:
	.loc 1 2275 0 discriminator 2
	cmpb	$116, -49(%rbp)	#, c
	jne	.L575	#,
	.loc 1 2275 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.167
	andl	$1, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	jne	.L576	#,
	.loc 1 2275 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.168
	andl	$32, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L577	#,
.L576:
	.loc 1 2275 0 discriminator 1
	movl	$13, %eax	#, iftmp.166
	jmp	.L578	#
.L577:
	movl	$0, %eax	#, iftmp.166
.L578:
	jmp	.L613	#
.L575:
	.loc 1 2275 0 discriminator 2
	cmpb	$117, -49(%rbp)	#, c
	jne	.L580	#,
	.loc 1 2275 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.171
	andl	$1, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	jne	.L581	#,
	.loc 1 2275 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.172
	andl	$32, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L582	#,
.L581:
	.loc 1 2275 0 discriminator 1
	movl	$14, %eax	#, iftmp.170
	jmp	.L583	#
.L582:
	movl	$0, %eax	#, iftmp.170
.L583:
	jmp	.L613	#
.L580:
	.loc 1 2275 0 discriminator 2
	cmpb	$97, -49(%rbp)	#, c
	je	.L585	#,
	.loc 1 2275 0 discriminator 1
	cmpb	$98, -49(%rbp)	#, c
	je	.L586	#,
	cmpb	$99, -49(%rbp)	#, c
	je	.L587	#,
	cmpb	$100, -49(%rbp)	#, c
	je	.L588	#,
	cmpb	$120, -49(%rbp)	#, c
	jne	.L589	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.179
	andl	$327680, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L590	#,
	movl	$16, %eax	#, iftmp.178
	jmp	.L613	#
.L590:
	.loc 1 2275 0 discriminator 2
	movl	$0, %eax	#, iftmp.178
	jmp	.L613	#
.L589:
	cmpb	$89, -49(%rbp)	#, c
	jne	.L593	#,
	.loc 1 2275 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.182
	andl	$262144, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L594	#,
	movl	$16, %eax	#, iftmp.181
	jmp	.L613	#
.L594:
	.loc 1 2275 0 discriminator 2
	movl	$0, %eax	#, iftmp.181
	jmp	.L613	#
.L593:
	cmpb	$121, -49(%rbp)	#, c
	jne	.L597	#,
	.loc 1 2275 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.185
	andl	$16384, %eax	#, D.16084
	testl	%eax, %eax	# D.16084
	je	.L598	#,
	movl	$17, %eax	#, iftmp.184
	jmp	.L613	#
.L598:
	.loc 1 2275 0 discriminator 2
	movl	$0, %eax	#, iftmp.184
	jmp	.L613	#
.L597:
	cmpb	$65, -49(%rbp)	#, c
	je	.L601	#,
	.loc 1 2275 0 discriminator 1
	cmpb	$68, -49(%rbp)	#, c
	je	.L602	#,
	cmpb	$83, -49(%rbp)	#, c
	jne	.L603	#,
	movl	$5, %eax	#, iftmp.188
	jmp	.L613	#
.L603:
	.loc 1 2275 0 discriminator 2
	movl	$0, %eax	#, iftmp.188
	jmp	.L613	#
.L602:
	movl	$6, %eax	#, iftmp.187
	jmp	.L613	#
.L601:
	movl	$7, %eax	#, iftmp.186
	jmp	.L613	#
.L588:
	movl	$2, %eax	#, iftmp.176
	jmp	.L613	#
.L587:
	movl	$3, %eax	#, iftmp.175
	jmp	.L613	#
.L586:
	movl	$4, %eax	#, iftmp.174
	jmp	.L613	#
.L585:
	movl	$1, %eax	#, iftmp.173
	jmp	.L613	#
.L569:
	movl	$8, %eax	#, iftmp.160
	jmp	.L613	#
.L564:
	movl	$11, %eax	#, iftmp.156
	jmp	.L613	#
.L563:
	movl	$12, %eax	#, iftmp.155
.L613:
	.loc 1 2275 0 discriminator 3
	movslq	%eax, %rsi	# iftmp.155, tmp333
	movslq	%edx, %rdx	# D.16084, tmp334
	movq	%rdx, %rax	# tmp334, tmp335
	salq	$2, %rax	#, tmp335
	addq	%rdx, %rax	# tmp334, tmp335
	leaq	0(,%rax,4), %rdx	#, tmp336
	addq	%rdx, %rax	# tmp336, tmp335
	addq	%rsi, %rax	# tmp333, tmp337
	movl	reg_class_subunion(,%rax,4), %eax	# reg_class_subunion, D.16089
	movl	%eax, 8(%rcx)	# D.16089, _134->class
	.loc 1 2276 0 is_stmt 1 discriminator 3
	jmp	.L562	#
.L616:
	.loc 1 2223 0
	nop
.L562:
.LBE28:
	.loc 1 2278 0
	jmp	.L543	#
.L544:
	.loc 1 2192 0
	addl	$1, -44(%rbp)	#, j
.L541:
	.loc 1 2192 0 is_stmt 0 discriminator 1
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.16083
	movsbl	%al, %eax	# D.16083, D.16084
	cmpl	-44(%rbp), %eax	# j, D.16084
	jg	.L614	#,
.LBE27:
	.loc 1 2184 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L540:
	.loc 1 2184 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16083
	movsbl	%al, %eax	# D.16083, D.16084
	cmpl	-48(%rbp), %eax	# i, D.16084
	jg	.L615	#,
	.loc 1 2281 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	preprocess_constraints, .-preprocess_constraints
	.globl	constrain_operands
	.type	constrain_operands, @function
constrain_operands:
.LFB49:
	.loc 1 2318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$848, %rsp	#,
	movl	%edi, -836(%rbp)	# strict, strict
	.loc 1 2327 0
	movl	$0, which_alternative(%rip)	#, which_alternative
	.loc 1 2328 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16091
	testb	%al, %al	# D.16091
	je	.L618	#,
	.loc 1 2328 0 is_stmt 0 discriminator 1
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.16091
	testb	%al, %al	# D.16091
	jne	.L619	#,
.L618:
	.loc 1 2329 0 is_stmt 1
	movl	$1, %eax	#, D.16090
	jmp	.L797	#
.L619:
	.loc 1 2331 0
	movl	$0, -824(%rbp)	#, c
	jmp	.L621	#
.L622:
	.loc 1 2333 0 discriminator 2
	movl	-824(%rbp), %eax	# c, tmp285
	cltq
	addq	$60, %rax	#, tmp286
	movq	recog_data(,%rax,8), %rdx	# recog_data.constraints, D.16092
	movl	-824(%rbp), %eax	# c, tmp288
	cltq
	movq	%rdx, -480(%rbp,%rax,8)	# D.16092, constraints
	.loc 1 2334 0 discriminator 2
	movl	-824(%rbp), %eax	# c, tmp290
	cltq
	movl	$-1, -736(%rbp,%rax,4)	#, matching_operands
	.loc 1 2331 0 discriminator 2
	addl	$1, -824(%rbp)	#, c
.L621:
	.loc 1 2331 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16091
	movsbl	%al, %eax	# D.16091, D.16090
	cmpl	-824(%rbp), %eax	# c, D.16090
	jg	.L622	#,
.L795:
.LBB30:
	.loc 1 2340 0 is_stmt 1
	movl	$0, -812(%rbp)	#, lose
	.loc 1 2341 0
	movl	$0, -820(%rbp)	#, funny_match_index
	.loc 1 2343 0
	movl	$0, -816(%rbp)	#, opno
	jmp	.L623	#
.L782:
.LBB31:
	.loc 1 2345 0
	movl	-816(%rbp), %eax	# opno, tmp292
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp293
	movq	%rax, -768(%rbp)	# tmp293, op
	.loc 1 2346 0
	movq	-768(%rbp), %rax	# op, tmp294
	movzbl	2(%rax), %eax	# op_97->mode, D.16093
	movzbl	%al, %eax	# D.16093, tmp295
	movl	%eax, -788(%rbp)	# tmp295, mode
	.loc 1 2347 0
	movl	-816(%rbp), %eax	# opno, tmp297
	cltq
	movq	-480(%rbp,%rax,8), %rax	# constraints, tmp298
	movq	%rax, -760(%rbp)	# tmp298, p
	.loc 1 2348 0
	movl	$0, -808(%rbp)	#, offset
	.loc 1 2349 0
	movl	$0, -804(%rbp)	#, win
	.loc 1 2352 0
	movl	-816(%rbp), %eax	# opno, tmp300
	cltq
	movl	$0, -608(%rbp,%rax,4)	#, earlyclobber
	.loc 1 2356 0
	movq	-768(%rbp), %rax	# op, tmp301
	movzwl	(%rax), %eax	# op_97->code, D.16094
	movzwl	%ax, %eax	# D.16094, D.16090
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16091
	cmpb	$49, %al	#, D.16091
	jne	.L624	#,
	.loc 1 2357 0
	movq	-768(%rbp), %rax	# op, tmp303
	movq	8(%rax), %rax	# op_97->fld[0].rtx, tmp304
	movq	%rax, -768(%rbp)	# tmp304, op
.L624:
	.loc 1 2359 0
	movq	-768(%rbp), %rax	# op, tmp305
	movzwl	(%rax), %eax	# op_14->code, D.16094
	cmpw	$63, %ax	#, D.16094
	jne	.L625	#,
	.loc 1 2361 0
	movq	-768(%rbp), %rax	# op, tmp306
	movq	8(%rax), %rax	# op_14->fld[0].rtx, D.16095
	movzwl	(%rax), %eax	# _108->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L626	#,
	.loc 1 2362 0
	movq	-768(%rbp), %rax	# op, tmp307
	movq	8(%rax), %rax	# op_14->fld[0].rtx, D.16095
	movl	8(%rax), %eax	# _110->fld[0].rtuint, D.16096
	cmpl	$52, %eax	#, D.16096
	ja	.L626	#,
	.loc 1 2366 0
	movq	-768(%rbp), %rax	# op, tmp308
	movzbl	2(%rax), %eax	# op_14->mode, D.16093
	.loc 1 2363 0
	movzbl	%al, %ecx	# D.16093, D.16097
	movq	-768(%rbp), %rax	# op, tmp309
	movl	16(%rax), %edx	# op_14->fld[1].rtuint, D.16096
	.loc 1 2364 0
	movq	-768(%rbp), %rax	# op, tmp310
	movq	8(%rax), %rax	# op_14->fld[0].rtx, D.16095
	movzbl	2(%rax), %eax	# _115->mode, D.16093
	.loc 1 2363 0
	movzbl	%al, %esi	# D.16093, D.16097
	movq	-768(%rbp), %rax	# op, tmp311
	movq	8(%rax), %rax	# op_14->fld[0].rtx, D.16095
	movl	8(%rax), %eax	# _118->fld[0].rtuint, D.16096
	movl	%eax, %edi	# D.16096,
	call	subreg_regno_offset	#
	movl	%eax, -808(%rbp)	# D.16096, offset
.L626:
	.loc 1 2367 0
	movq	-768(%rbp), %rax	# op, tmp312
	movq	8(%rax), %rax	# op_14->fld[0].rtx, tmp313
	movq	%rax, -768(%rbp)	# tmp313, op
.L625:
	.loc 1 2372 0
	movq	-760(%rbp), %rax	# p, tmp314
	movzbl	(%rax), %eax	# *p_100, D.16091
	testb	%al, %al	# D.16091
	je	.L627	#,
	.loc 1 2372 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# p, tmp315
	movzbl	(%rax), %eax	# *p_100, D.16091
	cmpb	$44, %al	#, D.16091
	jne	.L628	#,
.L627:
	.loc 1 2373 0 is_stmt 1
	movl	$1, -804(%rbp)	#, win
	.loc 1 2375 0
	jmp	.L629	#
.L628:
	jmp	.L629	#
.L780:
	.loc 1 2376 0
	movl	-824(%rbp), %eax	# c, tmp317
	subl	$33, %eax	#, tmp316
	cmpl	$82, %eax	#, tmp316
	ja	.L630	#,
	movl	%eax, %eax	# tmp316, tmp318
	movq	.L632(,%rax,8), %rax	#, tmp319
	jmp	*%rax	# tmp319
	.section	.rodata
	.align 8
	.align 4
.L632:
	.quad	.L798
	.quad	.L630
	.quad	.L799
	.quad	.L630
	.quad	.L798
	.quad	.L634
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L798
	.quad	.L798
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L635
	.quad	.L630
	.quad	.L630
	.quad	.L636
	.quad	.L798
	.quad	.L637
	.quad	.L798
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L638
	.quad	.L639
	.quad	.L640
	.quad	.L640
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L641
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L642
	.quad	.L630
	.quad	.L643
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L644
	.quad	.L630
	.quad	.L645
	.quad	.L630
	.quad	.L630
	.quad	.L630
	.quad	.L646
	.quad	.L647
	.quad	.L648
	.quad	.L649
	.quad	.L630
	.quad	.L630
	.quad	.L650
	.text
.L653:
	.loc 1 2386 0
	addq	$1, -760(%rbp)	#, p
	jmp	.L651	#
.L799:
	.loc 1 2385 0
	nop
.L651:
	.loc 1 2385 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# p, tmp320
	movzbl	(%rax), %eax	# *p_16, D.16091
	testb	%al, %al	# D.16091
	je	.L652	#,
	.loc 1 2385 0 discriminator 2
	movq	-760(%rbp), %rax	# p, tmp321
	movzbl	(%rax), %eax	# *p_16, D.16091
	cmpb	$44, %al	#, D.16091
	jne	.L653	#,
.L652:
	.loc 1 2387 0 is_stmt 1
	jmp	.L629	#
.L634:
	.loc 1 2390 0
	movl	-816(%rbp), %eax	# opno, tmp323
	cltq
	movl	$1, -608(%rbp,%rax,4)	#, earlyclobber
	.loc 1 2391 0
	jmp	.L629	#
.L635:
.LBB32:
	.loc 1 2408 0
	movq	-760(%rbp), %rax	# p, tmp324
	leaq	-1(%rax), %rcx	#, D.16092
	leaq	-776(%rbp), %rax	#, tmp325
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp325,
	movq	%rcx, %rdi	# D.16092,
	call	strtoul	#
	movl	%eax, -784(%rbp)	# D.16098, match
	.loc 1 2409 0
	movq	-776(%rbp), %rax	# end, tmp326
	movq	%rax, -760(%rbp)	# tmp326, p
	.loc 1 2411 0
	cmpl	$0, -836(%rbp)	#, strict
	jns	.L654	#,
	.loc 1 2412 0
	movl	$1, -800(%rbp)	#, val
	jmp	.L655	#
.L654:
.LBB33:
	.loc 1 2415 0
	movl	-784(%rbp), %eax	# match, tmp328
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp329
	movq	%rax, -752(%rbp)	# tmp329, op1
	.loc 1 2416 0
	movl	-816(%rbp), %eax	# opno, tmp331
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp332
	movq	%rax, -744(%rbp)	# tmp332, op2
	.loc 1 2420 0
	movq	-752(%rbp), %rax	# op1, tmp333
	movzwl	(%rax), %eax	# op1_140->code, D.16094
	movzwl	%ax, %eax	# D.16094, D.16090
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16091
	cmpb	$49, %al	#, D.16091
	jne	.L656	#,
	.loc 1 2421 0
	movq	-752(%rbp), %rax	# op1, tmp335
	movq	8(%rax), %rax	# op1_140->fld[0].rtx, tmp336
	movq	%rax, -752(%rbp)	# tmp336, op1
.L656:
	.loc 1 2422 0
	movq	-744(%rbp), %rax	# op2, tmp337
	movzwl	(%rax), %eax	# op2_141->code, D.16094
	movzwl	%ax, %eax	# D.16094, D.16090
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16091
	cmpb	$49, %al	#, D.16091
	jne	.L657	#,
	.loc 1 2423 0
	movq	-744(%rbp), %rax	# op2, tmp339
	movq	8(%rax), %rax	# op2_141->fld[0].rtx, tmp340
	movq	%rax, -744(%rbp)	# tmp340, op2
.L657:
	.loc 1 2425 0
	movq	-744(%rbp), %rdx	# op2, tmp341
	movq	-752(%rbp), %rax	# op1, tmp342
	movq	%rdx, %rsi	# tmp341,
	movq	%rax, %rdi	# tmp342,
	call	operands_match_p	#
	movl	%eax, -800(%rbp)	# tmp343, val
.L655:
.LBE33:
	.loc 1 2428 0
	movl	-816(%rbp), %eax	# opno, tmp345
	cltq
	movl	-784(%rbp), %edx	# match, tmp346
	movl	%edx, -736(%rbp,%rax,4)	# tmp346, matching_operands
	.loc 1 2429 0
	movl	-784(%rbp), %eax	# match, tmp348
	cltq
	movl	-816(%rbp), %edx	# opno, tmp349
	movl	%edx, -736(%rbp,%rax,4)	# tmp349, matching_operands
	.loc 1 2431 0
	cmpl	$0, -800(%rbp)	#, val
	je	.L658	#,
	.loc 1 2432 0
	movl	$1, -804(%rbp)	#, win
.L658:
	.loc 1 2437 0
	cmpl	$2, -800(%rbp)	#, val
	jne	.L659	#,
	.loc 1 2437 0 is_stmt 0 discriminator 1
	cmpl	$0, -836(%rbp)	#, strict
	jle	.L659	#,
	.loc 1 2439 0 is_stmt 1
	movl	-820(%rbp), %eax	# funny_match_index, tmp351
	cltq
	movl	-816(%rbp), %edx	# opno, tmp352
	movl	%edx, -240(%rbp,%rax,8)	# tmp352, funny_match[funny_match_index_3].this
	.loc 1 2440 0
	movl	-820(%rbp), %eax	# funny_match_index, funny_match_index.189
	leal	1(%rax), %edx	#, tmp353
	movl	%edx, -820(%rbp)	# tmp353, funny_match_index
	cltq
	movl	-784(%rbp), %edx	# match, tmp355
	movl	%edx, -236(%rbp,%rax,8)	# tmp355, funny_match[funny_match_index.189_152].other
.LBE32:
	.loc 1 2443 0
	jmp	.L629	#
.L659:
	jmp	.L629	#
.L649:
	.loc 1 2450 0
	cmpl	$0, -836(%rbp)	#, strict
	jle	.L660	#,
	.loc 1 2451 0
	movl	-816(%rbp), %eax	# opno, tmp357
	cltq
	addq	$180, %rax	#, tmp358
	movl	recog_data(,%rax,4), %eax	# recog_data.operand_mode, D.16097
	movq	-768(%rbp), %rdx	# op, tmp359
	movq	%rdx, %rsi	# tmp359,
	movl	%eax, %edi	# D.16097,
	call	strict_memory_address_p	#
	testl	%eax, %eax	# D.16090
	je	.L661	#,
.L660:
	.loc 1 2453 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2454 0
	jmp	.L629	#
.L661:
	jmp	.L629	#
.L644:
	.loc 1 2461 0
	cmpl	$0, -836(%rbp)	#, strict
	js	.L662	#,
	.loc 1 2463 0
	movq	-768(%rbp), %rax	# op, tmp360
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L662	#,
	.loc 1 2464 0
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.190
	testl	%eax, %eax	# reload_in_progress.190
	je	.L663	#,
	.loc 1 2465 0
	movq	-768(%rbp), %rax	# op, tmp361
	movl	8(%rax), %eax	# op_15->fld[0].rtuint, D.16096
	cmpl	$52, %eax	#, D.16096
	ja	.L662	#,
.L663:
	.loc 1 2466 0
	movl	-788(%rbp), %ecx	# mode, tmp362
	movl	-808(%rbp), %edx	# offset, tmp363
	movq	-768(%rbp), %rax	# op, tmp364
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp364,
	call	reg_fits_class_p	#
	testl	%eax, %eax	# D.16090
	je	.L664	#,
.L662:
	.loc 1 2467 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2468 0
	jmp	.L629	#
.L664:
	jmp	.L629	#
.L643:
	.loc 1 2474 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2475 0
	jmp	.L629	#
.L646:
	.loc 1 2478 0
	movq	-768(%rbp), %rax	# op, tmp365
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	je	.L665	#,
	.loc 1 2480 0
	cmpl	$0, -836(%rbp)	#, strict
	jns	.L666	#,
	.loc 1 2480 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp366
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$67, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp367
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$68, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp368
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp369
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp370
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$58, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp371
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$134, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp372
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$56, %ax	#, D.16094
	je	.L665	#,
	movq	-768(%rbp), %rax	# op, tmp373
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$140, %ax	#, D.16094
	je	.L665	#,
.L666:
	.loc 1 2482 0 is_stmt 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.191
	testl	%eax, %eax	# reload_in_progress.191
	je	.L667	#,
	.loc 1 2482 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp374
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L667	#,
	.loc 1 2483 0 is_stmt 1
	movq	-768(%rbp), %rax	# op, tmp375
	movl	8(%rax), %eax	# op_15->fld[0].rtuint, D.16096
	cmpl	$52, %eax	#, D.16096
	jbe	.L667	#,
.L665:
	.loc 1 2484 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2485 0
	jmp	.L629	#
.L667:
	jmp	.L629	#
.L636:
	.loc 1 2488 0
	movq	-768(%rbp), %rax	# op, tmp376
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	jne	.L668	#,
	.loc 1 2489 0
	movq	-768(%rbp), %rax	# op, tmp377
	movq	8(%rax), %rax	# op_15->fld[0].rtx, D.16095
	movzwl	(%rax), %eax	# _177->code, D.16094
	cmpw	$96, %ax	#, D.16094
	je	.L669	#,
	.loc 1 2490 0
	movq	-768(%rbp), %rax	# op, tmp378
	movq	8(%rax), %rax	# op_15->fld[0].rtx, D.16095
	movzwl	(%rax), %eax	# _179->code, D.16094
	cmpw	$98, %ax	#, D.16094
	jne	.L668	#,
.L669:
	.loc 1 2491 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2492 0
	jmp	.L629	#
.L668:
	jmp	.L629	#
.L637:
	.loc 1 2495 0
	movq	-768(%rbp), %rax	# op, tmp379
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	jne	.L670	#,
	.loc 1 2496 0
	movq	-768(%rbp), %rax	# op, tmp380
	movq	8(%rax), %rax	# op_15->fld[0].rtx, D.16095
	movzwl	(%rax), %eax	# _183->code, D.16094
	cmpw	$97, %ax	#, D.16094
	je	.L671	#,
	.loc 1 2497 0
	movq	-768(%rbp), %rax	# op, tmp381
	movq	8(%rax), %rax	# op_15->fld[0].rtx, D.16095
	movzwl	(%rax), %eax	# _185->code, D.16094
	cmpw	$99, %ax	#, D.16094
	jne	.L670	#,
.L671:
	.loc 1 2498 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2499 0
	jmp	.L629	#
.L670:
	jmp	.L629	#
.L638:
	.loc 1 2510 0
	movq	-768(%rbp), %rax	# op, tmp382
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	jne	.L672	#,
	.loc 1 2511 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2512 0
	jmp	.L629	#
.L672:
	jmp	.L629	#
.L639:
	.loc 1 2515 0
	movq	-768(%rbp), %rax	# op, tmp383
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	jne	.L673	#,
	.loc 1 2516 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2517 0
	jmp	.L629	#
.L673:
	jmp	.L629	#
.L640:
	.loc 1 2521 0
	movq	-768(%rbp), %rax	# op, tmp384
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	jne	.L674	#,
	.loc 1 2522 0
	cmpl	$71, -824(%rbp)	#, c
	jne	.L675	#,
	.loc 1 2522 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp385
	movq	%rax, %rdi	# tmp385,
	call	standard_80387_constant_p	#
	testl	%eax, %eax	# D.16090
	setne	%al	#, iftmp.192
	jmp	.L676	#
.L675:
	.loc 1 2522 0 discriminator 2
	cmpl	$72, -824(%rbp)	#, c
	jne	.L677	#,
	.loc 1 2522 0 discriminator 3
	movq	-768(%rbp), %rax	# op, tmp386
	movq	%rax, %rdi	# tmp386,
	call	standard_sse_constant_p	#
	testl	%eax, %eax	# D.16090
	je	.L677	#,
	.loc 1 2522 0 discriminator 5
	movl	$1, %eax	#, iftmp.193
	jmp	.L678	#
.L677:
	.loc 1 2522 0 discriminator 4
	movl	$0, %eax	#, iftmp.193
.L678:
	.loc 1 2522 0 discriminator 6
	andl	$1, %eax	#, iftmp.192
.L676:
	.loc 1 2522 0 discriminator 7
	testb	%al, %al	# iftmp.192
	je	.L674	#,
	.loc 1 2523 0 is_stmt 1
	movl	$1, -804(%rbp)	#, win
	.loc 1 2524 0
	jmp	.L629	#
.L674:
	jmp	.L629	#
.L650:
	.loc 1 2527 0
	movq	-768(%rbp), %rax	# op, tmp387
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L629	#,
	.loc 1 2528 0
	movq	-768(%rbp), %rax	# op, tmp388
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	jne	.L645	#,
	.loc 1 2529 0
	movq	-768(%rbp), %rax	# op, tmp389
	movzbl	2(%rax), %eax	# op_15->mode, D.16093
	testb	%al, %al	# D.16093
	je	.L629	#,
.L645:
	.loc 1 2532 0
	movq	-768(%rbp), %rax	# op, tmp390
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$67, %ax	#, D.16094
	je	.L679	#,
	.loc 1 2532 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp391
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$68, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp392
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp393
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp394
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$58, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp395
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$134, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp396
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$56, %ax	#, D.16094
	je	.L679	#,
	movq	-768(%rbp), %rax	# op, tmp397
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$140, %ax	#, D.16094
	jne	.L680	#,
.L679:
	.loc 1 2533 0 is_stmt 1
	movl	$1, -804(%rbp)	#, win
	.loc 1 2534 0
	jmp	.L629	#
.L680:
	jmp	.L629	#
.L647:
	.loc 1 2537 0
	movq	-768(%rbp), %rax	# op, tmp398
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L681	#,
	.loc 1 2538 0
	movq	-768(%rbp), %rax	# op, tmp399
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	jne	.L682	#,
	.loc 1 2539 0
	movq	-768(%rbp), %rax	# op, tmp400
	movzbl	2(%rax), %eax	# op_15->mode, D.16093
	testb	%al, %al	# D.16093
	jne	.L682	#,
.L681:
	.loc 1 2540 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2541 0
	jmp	.L629	#
.L682:
	jmp	.L629	#
.L641:
	.loc 1 2551 0
	movq	-768(%rbp), %rax	# op, tmp401
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	jne	.L683	#,
	.loc 1 2552 0
	cmpl	$73, -824(%rbp)	#, c
	jne	.L684	#,
	.loc 1 2552 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp402
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	testq	%rax, %rax	# D.16099
	js	.L685	#,
	movq	-768(%rbp), %rax	# op, tmp403
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$31, %rax	#, D.16099
	jg	.L685	#,
	.loc 1 2552 0 discriminator 3
	movl	$1, %eax	#, iftmp.195
	jmp	.L686	#
.L685:
	.loc 1 2552 0 discriminator 2
	movl	$0, %eax	#, iftmp.195
.L686:
	.loc 1 2552 0 discriminator 4
	andl	$1, %eax	#, iftmp.194
	jmp	.L687	#
.L684:
	.loc 1 2552 0 discriminator 2
	cmpl	$74, -824(%rbp)	#, c
	jne	.L688	#,
	.loc 1 2552 0 discriminator 3
	movq	-768(%rbp), %rax	# op, tmp404
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	testq	%rax, %rax	# D.16099
	js	.L689	#,
	.loc 1 2552 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp405
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$63, %rax	#, D.16099
	jg	.L689	#,
	.loc 1 2552 0 discriminator 3
	movl	$1, %eax	#, iftmp.197
	jmp	.L690	#
.L689:
	.loc 1 2552 0 discriminator 2
	movl	$0, %eax	#, iftmp.197
.L690:
	.loc 1 2552 0 discriminator 4
	andl	$1, %eax	#, iftmp.196
	jmp	.L687	#
.L688:
	cmpl	$75, -824(%rbp)	#, c
	jne	.L692	#,
	.loc 1 2552 0 discriminator 5
	movq	-768(%rbp), %rax	# op, tmp406
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$-128, %rax	#, D.16099
	jl	.L693	#,
	.loc 1 2552 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp407
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$127, %rax	#, D.16099
	jg	.L693	#,
	.loc 1 2552 0 discriminator 3
	movl	$1, %eax	#, iftmp.199
	jmp	.L694	#
.L693:
	.loc 1 2552 0 discriminator 2
	movl	$0, %eax	#, iftmp.199
.L694:
	.loc 1 2552 0 discriminator 4
	andl	$1, %eax	#, iftmp.198
	jmp	.L687	#
.L692:
	.loc 1 2552 0 discriminator 6
	cmpl	$76, -824(%rbp)	#, c
	jne	.L696	#,
	.loc 1 2552 0 discriminator 7
	movq	-768(%rbp), %rax	# op, tmp408
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$255, %rax	#, D.16099
	je	.L697	#,
	.loc 1 2552 0 discriminator 2
	movq	-768(%rbp), %rax	# op, tmp409
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$65535, %rax	#, D.16099
	jne	.L698	#,
.L697:
	.loc 1 2552 0 discriminator 1
	movl	$1, %eax	#, iftmp.201
	jmp	.L699	#
.L698:
	.loc 1 2552 0 discriminator 3
	movl	$0, %eax	#, iftmp.201
.L699:
	.loc 1 2552 0 discriminator 4
	andl	$1, %eax	#, iftmp.200
	jmp	.L687	#
.L696:
	.loc 1 2552 0 discriminator 8
	cmpl	$77, -824(%rbp)	#, c
	jne	.L701	#,
	.loc 1 2552 0 discriminator 9
	movq	-768(%rbp), %rax	# op, tmp410
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	testq	%rax, %rax	# D.16099
	js	.L702	#,
	.loc 1 2552 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp411
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$3, %rax	#, D.16099
	jg	.L702	#,
	.loc 1 2552 0 discriminator 3
	movl	$1, %eax	#, iftmp.203
	jmp	.L703	#
.L702:
	.loc 1 2552 0 discriminator 2
	movl	$0, %eax	#, iftmp.203
.L703:
	.loc 1 2552 0 discriminator 4
	andl	$1, %eax	#, iftmp.202
	jmp	.L687	#
.L701:
	.loc 1 2552 0 discriminator 10
	cmpl	$78, -824(%rbp)	#, c
	jne	.L705	#,
	.loc 1 2552 0 discriminator 11
	movq	-768(%rbp), %rax	# op, tmp412
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	testq	%rax, %rax	# D.16099
	js	.L705	#,
	.loc 1 2552 0 discriminator 13
	movq	-768(%rbp), %rax	# op, tmp413
	movq	8(%rax), %rax	# op_15->fld[0].rtwint, D.16099
	cmpq	$255, %rax	#, D.16099
	jg	.L705	#,
	.loc 1 2552 0 discriminator 1
	movl	$1, %eax	#, iftmp.204
	jmp	.L706	#
.L705:
	.loc 1 2552 0 discriminator 12
	movl	$0, %eax	#, iftmp.204
.L706:
	.loc 1 2552 0 discriminator 14
	andl	$1, %eax	#, iftmp.202
.L687:
	.loc 1 2552 0 discriminator 19
	testb	%al, %al	# iftmp.194
	je	.L683	#,
	.loc 1 2553 0 is_stmt 1
	movl	$1, -804(%rbp)	#, win
	.loc 1 2554 0
	jmp	.L629	#
.L683:
	jmp	.L629	#
.L642:
	.loc 1 2557 0
	movq	-768(%rbp), %rax	# op, tmp414
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	jne	.L707	#,
	.loc 1 2558 0
	cmpl	$0, -836(%rbp)	#, strict
	jle	.L708	#,
	.loc 1 2558 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp415
	movq	%rax, %rdi	# tmp415,
	call	offsettable_memref_p	#
	testl	%eax, %eax	# D.16090
	je	.L709	#,
.L708:
	.loc 1 2559 0 is_stmt 1
	cmpl	$0, -836(%rbp)	#, strict
	jns	.L710	#,
	.loc 1 2560 0
	movq	-768(%rbp), %rax	# op, tmp416
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$67, %ax	#, D.16094
	je	.L710	#,
	.loc 1 2560 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp417
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$68, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp418
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp419
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp420
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$58, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp421
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$134, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp422
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$56, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp423
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$140, %ax	#, D.16094
	je	.L710	#,
	movq	-768(%rbp), %rax	# op, tmp424
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	jne	.L709	#,
.L710:
	.loc 1 2561 0 is_stmt 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.205
	testl	%eax, %eax	# reload_in_progress.205
	je	.L707	#,
	.loc 1 2562 0
	movq	-768(%rbp), %rax	# op, tmp425
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L709	#,
	.loc 1 2563 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp426
	movl	8(%rax), %eax	# op_15->fld[0].rtuint, D.16096
	.loc 1 2562 0 discriminator 1
	cmpl	$52, %eax	#, D.16096
	ja	.L707	#,
.L709:
	.loc 1 2564 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2565 0
	jmp	.L629	#
.L707:
	jmp	.L629	#
.L648:
	.loc 1 2568 0
	cmpl	$0, -836(%rbp)	#, strict
	jle	.L711	#,
	.loc 1 2568 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp427
	movq	%rax, %rdi	# tmp427,
	call	offsettable_memref_p	#
	testl	%eax, %eax	# D.16090
	jne	.L712	#,
.L711:
	.loc 1 2569 0 is_stmt 1
	cmpl	$0, -836(%rbp)	#, strict
	jne	.L713	#,
	.loc 1 2569 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp428
	movq	%rax, %rdi	# tmp428,
	call	offsettable_nonstrict_memref_p	#
	testl	%eax, %eax	# D.16090
	jne	.L712	#,
.L713:
	.loc 1 2571 0 is_stmt 1
	cmpl	$0, -836(%rbp)	#, strict
	jns	.L714	#,
	.loc 1 2572 0
	movq	-768(%rbp), %rax	# op, tmp429
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$67, %ax	#, D.16094
	je	.L712	#,
	.loc 1 2572 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp430
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$68, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp431
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$54, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp432
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$55, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp433
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$58, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp434
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$134, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp435
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$56, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp436
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$140, %ax	#, D.16094
	je	.L712	#,
	movq	-768(%rbp), %rax	# op, tmp437
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$66, %ax	#, D.16094
	je	.L712	#,
.L714:
	.loc 1 2574 0 is_stmt 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.206
	testl	%eax, %eax	# reload_in_progress.206
	je	.L715	#,
	.loc 1 2574 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp438
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L715	#,
	.loc 1 2575 0 is_stmt 1
	movq	-768(%rbp), %rax	# op, tmp439
	movl	8(%rax), %eax	# op_15->fld[0].rtuint, D.16096
	cmpl	$52, %eax	#, D.16096
	jbe	.L715	#,
.L712:
	.loc 1 2576 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2577 0
	jmp	.L629	#
.L715:
	jmp	.L629	#
.L630:
.LBB34:
	.loc 1 2583 0
	cmpl	$114, -824(%rbp)	#, c
	je	.L716	#,
	.loc 1 2583 0 is_stmt 0 discriminator 1
	cmpl	$114, -824(%rbp)	#, c
	je	.L717	#,
	.loc 1 2583 0 discriminator 3
	cmpl	$82, -824(%rbp)	#, c
	je	.L718	#,
	.loc 1 2583 0 discriminator 5
	cmpl	$113, -824(%rbp)	#, c
	jne	.L719	#,
	.loc 1 2583 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.212
	andl	$33554432, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L720	#,
	.loc 1 2583 0 discriminator 9
	movl	$12, %eax	#, iftmp.211
	jmp	.L768	#
.L720:
	.loc 1 2583 0 discriminator 10
	movl	$8, %eax	#, iftmp.211
	jmp	.L768	#
.L719:
	.loc 1 2583 0 discriminator 8
	cmpl	$81, -824(%rbp)	#, c
	je	.L723	#,
	.loc 1 2583 0 discriminator 11
	cmpl	$102, -824(%rbp)	#, c
	jne	.L724	#,
	.loc 1 2583 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.216
	andl	$1, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	jne	.L725	#,
	.loc 1 2583 0 discriminator 16
	movl	target_flags(%rip), %eax	# target_flags, target_flags.217
	andl	$32, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L726	#,
.L725:
	.loc 1 2583 0 discriminator 15
	movl	$15, %eax	#, iftmp.215
	jmp	.L727	#
.L726:
	.loc 1 2583 0 discriminator 1
	movl	$0, %eax	#, iftmp.215
.L727:
	jmp	.L768	#
.L724:
	.loc 1 2583 0 discriminator 14
	cmpl	$116, -824(%rbp)	#, c
	jne	.L729	#,
	.loc 1 2583 0 discriminator 18
	movl	target_flags(%rip), %eax	# target_flags, target_flags.220
	andl	$1, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	jne	.L730	#,
	.loc 1 2583 0 discriminator 21
	movl	target_flags(%rip), %eax	# target_flags, target_flags.221
	andl	$32, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L731	#,
.L730:
	.loc 1 2583 0 discriminator 20
	movl	$13, %eax	#, iftmp.219
	jmp	.L732	#
.L731:
	.loc 1 2583 0 discriminator 1
	movl	$0, %eax	#, iftmp.219
.L732:
	jmp	.L768	#
.L729:
	.loc 1 2583 0 discriminator 19
	cmpl	$117, -824(%rbp)	#, c
	jne	.L734	#,
	.loc 1 2583 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.224
	andl	$1, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	jne	.L735	#,
	.loc 1 2583 0 discriminator 26
	movl	target_flags(%rip), %eax	# target_flags, target_flags.225
	andl	$32, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L736	#,
.L735:
	.loc 1 2583 0 discriminator 25
	movl	$14, %eax	#, iftmp.223
	jmp	.L737	#
.L736:
	.loc 1 2583 0 discriminator 1
	movl	$0, %eax	#, iftmp.223
.L737:
	jmp	.L768	#
.L734:
	.loc 1 2583 0 discriminator 24
	cmpl	$97, -824(%rbp)	#, c
	je	.L739	#,
	.loc 1 2583 0 discriminator 28
	cmpl	$98, -824(%rbp)	#, c
	je	.L740	#,
	.loc 1 2583 0 discriminator 30
	cmpl	$99, -824(%rbp)	#, c
	je	.L741	#,
	.loc 1 2583 0 discriminator 32
	cmpl	$100, -824(%rbp)	#, c
	je	.L742	#,
	.loc 1 2583 0 discriminator 34
	cmpl	$120, -824(%rbp)	#, c
	jne	.L743	#,
	.loc 1 2583 0 discriminator 36
	movl	target_flags(%rip), %eax	# target_flags, target_flags.232
	andl	$327680, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L744	#,
	.loc 1 2583 0 discriminator 38
	movl	$16, %eax	#, iftmp.231
	jmp	.L768	#
.L744:
	.loc 1 2583 0 discriminator 39
	movl	$0, %eax	#, iftmp.231
	jmp	.L768	#
.L743:
	.loc 1 2583 0 discriminator 37
	cmpl	$89, -824(%rbp)	#, c
	jne	.L747	#,
	.loc 1 2583 0 discriminator 40
	movl	target_flags(%rip), %eax	# target_flags, target_flags.235
	andl	$262144, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L748	#,
	.loc 1 2583 0 discriminator 42
	movl	$16, %eax	#, iftmp.234
	jmp	.L768	#
.L748:
	.loc 1 2583 0 discriminator 43
	movl	$0, %eax	#, iftmp.234
	jmp	.L768	#
.L747:
	.loc 1 2583 0 discriminator 41
	cmpl	$121, -824(%rbp)	#, c
	jne	.L751	#,
	.loc 1 2583 0 discriminator 44
	movl	target_flags(%rip), %eax	# target_flags, target_flags.238
	andl	$16384, %eax	#, D.16090
	testl	%eax, %eax	# D.16090
	je	.L752	#,
	.loc 1 2583 0 discriminator 46
	movl	$17, %eax	#, iftmp.237
	jmp	.L768	#
.L752:
	.loc 1 2583 0 discriminator 47
	movl	$0, %eax	#, iftmp.237
	jmp	.L768	#
.L751:
	.loc 1 2583 0 discriminator 45
	cmpl	$65, -824(%rbp)	#, c
	je	.L755	#,
	.loc 1 2583 0 discriminator 48
	cmpl	$68, -824(%rbp)	#, c
	je	.L756	#,
	.loc 1 2583 0 discriminator 50
	cmpl	$83, -824(%rbp)	#, c
	jne	.L757	#,
	.loc 1 2583 0 discriminator 52
	movl	$5, %eax	#, iftmp.241
	jmp	.L768	#
.L757:
	.loc 1 2583 0 discriminator 53
	movl	$0, %eax	#, iftmp.241
	jmp	.L768	#
.L756:
	.loc 1 2583 0 discriminator 51
	movl	$6, %eax	#, iftmp.240
	jmp	.L768	#
.L755:
	.loc 1 2583 0 discriminator 49
	movl	$7, %eax	#, iftmp.239
	jmp	.L768	#
.L742:
	.loc 1 2583 0 discriminator 35
	movl	$2, %eax	#, iftmp.229
	jmp	.L768	#
.L741:
	.loc 1 2583 0 discriminator 33
	movl	$3, %eax	#, iftmp.228
	jmp	.L768	#
.L740:
	.loc 1 2583 0 discriminator 31
	movl	$4, %eax	#, iftmp.227
	jmp	.L768	#
.L739:
	.loc 1 2583 0 discriminator 29
	movl	$1, %eax	#, iftmp.226
	jmp	.L768	#
.L723:
	.loc 1 2583 0 discriminator 12
	movl	$8, %eax	#, iftmp.213
	jmp	.L768	#
.L718:
	.loc 1 2583 0 discriminator 6
	movl	$11, %eax	#, iftmp.209
	jmp	.L768	#
.L717:
	.loc 1 2583 0 discriminator 4
	movl	$12, %eax	#, iftmp.208
	jmp	.L768	#
.L716:
	.loc 1 2583 0 discriminator 2
	movl	$12, %eax	#, iftmp.207
.L768:
	.loc 1 2583 0 discriminator 61
	movl	%eax, -780(%rbp)	# iftmp.207, class
	.loc 1 2584 0 is_stmt 1 discriminator 61
	cmpl	$0, -780(%rbp)	#, class
	je	.L769	#,
	.loc 1 2586 0
	cmpl	$0, -836(%rbp)	#, strict
	js	.L770	#,
	.loc 1 2587 0
	cmpl	$0, -836(%rbp)	#, strict
	jne	.L771	#,
	.loc 1 2588 0
	movq	-768(%rbp), %rax	# op, tmp440
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L771	#,
	.loc 1 2589 0
	movq	-768(%rbp), %rax	# op, tmp441
	movl	8(%rax), %eax	# op_15->fld[0].rtuint, D.16096
	cmpl	$52, %eax	#, D.16096
	ja	.L770	#,
.L771:
	.loc 1 2590 0
	cmpl	$0, -836(%rbp)	#, strict
	jne	.L772	#,
	.loc 1 2590 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp442
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$62, %ax	#, D.16094
	je	.L770	#,
.L772:
	.loc 1 2591 0 is_stmt 1
	movq	-768(%rbp), %rax	# op, tmp443
	movzwl	(%rax), %eax	# op_15->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L774	#,
	.loc 1 2592 0
	movl	-788(%rbp), %ecx	# mode, tmp444
	movl	-808(%rbp), %edx	# offset, tmp445
	movl	-780(%rbp), %esi	# class, tmp446
	movq	-768(%rbp), %rax	# op, tmp447
	movq	%rax, %rdi	# tmp447,
	call	reg_fits_class_p	#
	testl	%eax, %eax	# D.16090
	je	.L774	#,
.L770:
	.loc 1 2593 0
	movl	$1, -804(%rbp)	#, win
	.loc 1 2599 0
	jmp	.L629	#
.L769:
	.loc 1 2596 0
	cmpl	$101, -824(%rbp)	#, c
	jne	.L775	#,
	.loc 1 2596 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# op, tmp448
	movq	%rax, %rdi	# tmp448,
	call	x86_64_sign_extended_value	#
	testl	%eax, %eax	# D.16090
	setne	%al	#, iftmp.242
	jmp	.L776	#
.L775:
	.loc 1 2596 0 discriminator 2
	cmpl	$90, -824(%rbp)	#, c
	jne	.L777	#,
	.loc 1 2596 0 discriminator 3
	movq	-768(%rbp), %rax	# op, tmp449
	movq	%rax, %rdi	# tmp449,
	call	x86_64_zero_extended_value	#
	testl	%eax, %eax	# D.16090
	je	.L777	#,
	.loc 1 2596 0 discriminator 5
	movl	$1, %eax	#, iftmp.243
	jmp	.L778	#
.L777:
	.loc 1 2596 0 discriminator 4
	movl	$0, %eax	#, iftmp.243
.L778:
	.loc 1 2596 0 discriminator 6
	andl	$1, %eax	#, iftmp.242
.L776:
	.loc 1 2596 0 discriminator 7
	testb	%al, %al	# iftmp.242
	je	.L774	#,
	.loc 1 2597 0 is_stmt 1
	movl	$1, -804(%rbp)	#, win
	.loc 1 2599 0
	jmp	.L629	#
.L774:
	jmp	.L629	#
.L798:
.LBE34:
	.loc 1 2380 0
	nop
.L629:
	.loc 1 2375 0 discriminator 1
	movq	-760(%rbp), %rax	# p, tmp450
	movzbl	(%rax), %eax	# *p_17, D.16091
	testb	%al, %al	# D.16091
	je	.L779	#,
	.loc 1 2375 0 is_stmt 0 discriminator 2
	movq	-760(%rbp), %rax	# p, p.244
	leaq	1(%rax), %rdx	#, tmp451
	movq	%rdx, -760(%rbp)	# tmp451, p
	movzbl	(%rax), %eax	# *p.244_127, D.16091
	movsbl	%al, %eax	# D.16091, tmp452
	movl	%eax, -824(%rbp)	# tmp452, c
	cmpl	$44, -824(%rbp)	#, c
	jne	.L780	#,
.L779:
	.loc 1 2603 0 is_stmt 1
	movl	-816(%rbp), %eax	# opno, tmp454
	cltq
	movq	-760(%rbp), %rdx	# p, tmp455
	movq	%rdx, -480(%rbp,%rax,8)	# tmp455, constraints
	.loc 1 2606 0
	cmpl	$0, -804(%rbp)	#, win
	jne	.L781	#,
	.loc 1 2607 0
	movl	$1, -812(%rbp)	#, lose
.L781:
.LBE31:
	.loc 1 2343 0
	addl	$1, -816(%rbp)	#, opno
.L623:
	.loc 1 2343 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16091
	movsbl	%al, %eax	# D.16091, D.16090
	cmpl	-816(%rbp), %eax	# opno, D.16090
	jg	.L782	#,
	.loc 1 2611 0 is_stmt 1
	cmpl	$0, -812(%rbp)	#, lose
	jne	.L783	#,
.LBB35:
	.loc 1 2618 0
	cmpl	$0, -836(%rbp)	#, strict
	jle	.L784	#,
	.loc 1 2619 0
	movl	$0, -792(%rbp)	#, eopno
	jmp	.L785	#
.L792:
	.loc 1 2623 0
	movl	-792(%rbp), %eax	# eopno, tmp457
	cltq
	movl	-608(%rbp,%rax,4), %eax	# earlyclobber, D.16090
	testl	%eax, %eax	# D.16090
	je	.L786	#,
	.loc 1 2624 0
	movl	-792(%rbp), %eax	# eopno, tmp459
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16095
	movzwl	(%rax), %eax	# _372->code, D.16094
	cmpw	$61, %ax	#, D.16094
	jne	.L786	#,
	.loc 1 2625 0
	movl	$0, -796(%rbp)	#, opno
	jmp	.L787	#
.L791:
	.loc 1 2626 0
	movl	-796(%rbp), %eax	# opno, tmp461
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16095
	movzwl	(%rax), %eax	# _377->code, D.16094
	cmpw	$66, %ax	#, D.16094
	je	.L788	#,
	.loc 1 2627 0
	movl	-796(%rbp), %eax	# opno, tmp463
	cltq
	addq	$208, %rax	#, tmp464
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.16100
	cmpl	$1, %eax	#, D.16100
	je	.L789	#,
.L788:
	.loc 1 2628 0
	movl	-796(%rbp), %eax	# opno, tmp465
	cmpl	-792(%rbp), %eax	# eopno, tmp465
	je	.L789	#,
	.loc 1 2630 0
	movl	-796(%rbp), %eax	# opno, tmp467
	cltq
	addq	$60, %rax	#, tmp468
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.16092
	movzbl	(%rax), %eax	# *_380, D.16091
	testb	%al, %al	# D.16091
	je	.L789	#,
	.loc 1 2631 0
	movl	-796(%rbp), %eax	# opno, tmp470
	cltq
	movl	-736(%rbp,%rax,4), %eax	# matching_operands, D.16090
	cmpl	-792(%rbp), %eax	# eopno, D.16090
	jne	.L790	#,
	.loc 1 2632 0 discriminator 1
	movl	-792(%rbp), %eax	# eopno, tmp472
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16095
	movl	-796(%rbp), %eax	# opno, tmp474
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16095
	movq	%rdx, %rsi	# D.16095,
	movq	%rax, %rdi	# D.16095,
	call	operands_match_p	#
	.loc 1 2631 0 discriminator 1
	testl	%eax, %eax	# D.16090
	jne	.L789	#,
.L790:
	.loc 1 2634 0
	movl	-792(%rbp), %eax	# eopno, tmp476
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16095
	movl	-796(%rbp), %eax	# opno, tmp478
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16095
	movq	%rdx, %rsi	# D.16095,
	movq	%rax, %rdi	# D.16095,
	call	safe_from_earlyclobber	#
	testl	%eax, %eax	# D.16090
	jne	.L789	#,
	.loc 1 2636 0
	movl	$1, -812(%rbp)	#, lose
.L789:
	.loc 1 2625 0
	addl	$1, -796(%rbp)	#, opno
.L787:
	.loc 1 2625 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16091
	movsbl	%al, %eax	# D.16091, D.16090
	cmpl	-796(%rbp), %eax	# opno, D.16090
	jg	.L791	#,
.L786:
	.loc 1 2619 0 is_stmt 1
	addl	$1, -792(%rbp)	#, eopno
.L785:
	.loc 1 2619 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16091
	movsbl	%al, %eax	# D.16091, D.16090
	cmpl	-792(%rbp), %eax	# eopno, D.16090
	jg	.L792	#,
.L784:
	.loc 1 2638 0 is_stmt 1
	cmpl	$0, -812(%rbp)	#, lose
	jne	.L783	#,
	.loc 1 2640 0
	jmp	.L793	#
.L794:
	.loc 1 2642 0
	movl	-820(%rbp), %eax	# funny_match_index, tmp480
	cltq
	movl	-236(%rbp,%rax,8), %ecx	# funny_match[funny_match_index_392].other, D.16090
	.loc 1 2643 0
	movl	-820(%rbp), %eax	# funny_match_index, tmp482
	cltq
	movl	-240(%rbp,%rax,8), %eax	# funny_match[funny_match_index_392].this, D.16090
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16095
	movslq	%ecx, %rax	# D.16090, tmp484
	movq	%rdx, recog_data(,%rax,8)	# D.16095, recog_data.operand
.L793:
	.loc 1 2640 0 discriminator 1
	subl	$1, -820(%rbp)	#, funny_match_index
	cmpl	$0, -820(%rbp)	#, funny_match_index
	jns	.L794	#,
	.loc 1 2646 0
	movl	$1, %eax	#, D.16090
	jmp	.L797	#
.L783:
.LBE35:
	.loc 1 2650 0
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.245
	addl	$1, %eax	#, which_alternative.246
	movl	%eax, which_alternative(%rip)	# which_alternative.246, which_alternative
.LBE30:
	.loc 1 2652 0
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.16091
	movsbl	%al, %edx	# D.16091, D.16090
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.247
	cmpl	%eax, %edx	# which_alternative.247, D.16090
	jg	.L795	#,
	.loc 1 2654 0
	movl	$-1, which_alternative(%rip)	#, which_alternative
	.loc 1 2657 0
	cmpl	$0, -836(%rbp)	#, strict
	jne	.L796	#,
	.loc 1 2658 0
	movl	$-1, %edi	#,
	call	constrain_operands	#
	jmp	.L797	#
.L796:
	.loc 1 2660 0
	movl	$0, %eax	#, D.16090
.L797:
	.loc 1 2661 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	constrain_operands, .-constrain_operands
	.globl	reg_fits_class_p
	.type	reg_fits_class_p, @function
reg_fits_class_p:
.LFB50:
	.loc 1 2674 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# operand, operand
	movl	%esi, -36(%rbp)	# class, class
	movl	%edx, -40(%rbp)	# offset, offset
	movl	%ecx, -44(%rbp)	# mode, mode
	.loc 1 2675 0
	movq	-32(%rbp), %rax	# operand, tmp99
	movl	8(%rax), %eax	# operand_11(D)->fld[0].rtuint, D.16102
	movl	%eax, -12(%rbp)	# D.16102, regno
	.loc 1 2676 0
	cmpl	$52, -12(%rbp)	#, regno
	jg	.L801	#,
	.loc 1 2677 0
	movl	-36(%rbp), %eax	# class, class.248
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.16103
	movl	-40(%rbp), %eax	# offset, tmp101
	movl	-12(%rbp), %ecx	# regno, tmp102
	addl	%ecx, %eax	# tmp102, D.16101
	movl	%eax, %ecx	# D.16101, tmp114
	shrq	%cl, %rdx	# tmp114, D.16103
	movq	%rdx, %rax	# D.16103, D.16103
	andl	$1, %eax	#, D.16103
	testq	%rax, %rax	# D.16103
	je	.L801	#,
.LBB36:
	.loc 1 2681 0
	movl	-40(%rbp), %eax	# offset, tmp103
	addl	%eax, -12(%rbp)	# tmp103, regno
	.loc 1 2682 0
	cmpl	$7, -12(%rbp)	#, regno
	jle	.L802	#,
	.loc 1 2682 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, regno
	jle	.L803	#,
.L802:
	.loc 1 2682 0 discriminator 2
	cmpl	$20, -12(%rbp)	#, regno
	jle	.L804	#,
	.loc 1 2682 0 discriminator 1
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L803	#,
.L804:
	.loc 1 2682 0 discriminator 2
	cmpl	$44, -12(%rbp)	#, regno
	jle	.L805	#,
	.loc 1 2682 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, regno
	jle	.L803	#,
.L805:
	.loc 1 2682 0 discriminator 2
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L806	#,
	.loc 1 2682 0 discriminator 1
	cmpl	$36, -12(%rbp)	#, regno
	jg	.L806	#,
.L803:
	movl	-44(%rbp), %eax	# mode, mode.251
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16105
	cmpl	$5, %eax	#, D.16105
	je	.L807	#,
	.loc 1 2682 0 discriminator 2
	movl	-44(%rbp), %eax	# mode, mode.252
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16105
	cmpl	$6, %eax	#, D.16105
	jne	.L808	#,
.L807:
	.loc 1 2682 0 discriminator 1
	movl	$1, %eax	#, iftmp.250
	jmp	.L809	#
.L808:
	.loc 1 2682 0 discriminator 3
	movl	$0, %eax	#, iftmp.250
.L809:
	.loc 1 2682 0 discriminator 4
	jmp	.L810	#
.L806:
	.loc 1 2682 0 discriminator 2
	cmpl	$18, -44(%rbp)	#, mode
	jne	.L811	#,
	.loc 1 2682 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.255
	andl	$33554432, %eax	#, D.16101
	testl	%eax, %eax	# D.16101
	je	.L812	#,
	.loc 1 2682 0 discriminator 6
	movl	$1, %eax	#, iftmp.254
	jmp	.L810	#
.L812:
	.loc 1 2682 0 discriminator 7
	movl	$2, %eax	#, iftmp.254
	jmp	.L810	#
.L811:
	.loc 1 2682 0 discriminator 5
	cmpl	$24, -44(%rbp)	#, mode
	jne	.L815	#,
	.loc 1 2682 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.258
	andl	$33554432, %eax	#, D.16101
	testl	%eax, %eax	# D.16101
	je	.L816	#,
	.loc 1 2682 0 discriminator 10
	movl	$3, %eax	#, iftmp.257
	jmp	.L810	#
.L816:
	.loc 1 2682 0 discriminator 11
	movl	$5, %eax	#, iftmp.257
	jmp	.L810	#
.L815:
	.loc 1 2682 0 discriminator 9
	movl	-44(%rbp), %eax	# mode, mode.259
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16104
	movzbl	%al, %edx	# D.16104, D.16101
	movl	target_flags(%rip), %eax	# target_flags, target_flags.261
	andl	$33554432, %eax	#, D.16101
	testl	%eax, %eax	# D.16101
	je	.L819	#,
	.loc 1 2682 0 discriminator 1
	movl	$8, %eax	#, iftmp.260
	jmp	.L820	#
.L819:
	.loc 1 2682 0 discriminator 2
	movl	$4, %eax	#, iftmp.260
.L820:
	.loc 1 2682 0 discriminator 3
	addl	%edx, %eax	# D.16101, D.16101
	subl	$1, %eax	#, D.16101
	movl	target_flags(%rip), %edx	# target_flags, target_flags.263
	andl	$33554432, %edx	#, D.16101
	testl	%edx, %edx	# D.16101
	je	.L821	#,
	.loc 1 2682 0 discriminator 1
	movl	$8, %ebx	#, iftmp.262
	jmp	.L822	#
.L821:
	.loc 1 2682 0 discriminator 2
	movl	$4, %ebx	#, iftmp.262
.L822:
	.loc 1 2682 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.262
	subl	$1, %eax	#, iftmp.256
.L810:
	movl	%eax, -16(%rbp)	# iftmp.249, sr
	jmp	.L823	#
.L826:
	.loc 1 2684 0 is_stmt 1
	movl	-36(%rbp), %eax	# class, class.264
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.16103
	movl	-16(%rbp), %eax	# sr, tmp110
	movl	-12(%rbp), %ecx	# regno, tmp111
	addl	%ecx, %eax	# tmp111, D.16101
	movl	%eax, %ecx	# D.16101, tmp117
	shrq	%cl, %rdx	# tmp117, D.16103
	movq	%rdx, %rax	# D.16103, D.16103
	andl	$1, %eax	#, D.16103
	testq	%rax, %rax	# D.16103
	jne	.L824	#,
	.loc 1 2686 0
	jmp	.L825	#
.L824:
	.loc 1 2683 0
	subl	$1, -16(%rbp)	#, sr
.L823:
	.loc 1 2682 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, sr
	jg	.L826	#,
.L825:
	.loc 1 2687 0
	cmpl	$0, -16(%rbp)	#, sr
	sete	%al	#, D.16106
	movzbl	%al, %eax	# D.16106, D.16101
	jmp	.L827	#
.L801:
.LBE36:
	.loc 1 2690 0
	movl	$0, %eax	#, D.16101
.L827:
	.loc 1 2691 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	reg_fits_class_p, .-reg_fits_class_p
	.type	split_insn, @function
split_insn:
.LFB51:
	.loc 1 2698 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2700 0
	movq	-40(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_5(D)->code, D.16108
	movzwl	%ax, %eax	# D.16108, D.16109
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16110
	cmpb	$105, %al	#, D.16110
	jne	.L829	#,
	.loc 1 2706 0
	movq	-40(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_5(D)->code, D.16108
	movzwl	%ax, %eax	# D.16108, D.16109
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16110
	cmpb	$105, %al	#, D.16110
	jne	.L830	#,
	.loc 1 2706 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.16111
	movzwl	(%rax), %eax	# _12->code, D.16108
	cmpw	$47, %ax	#, D.16108
	jne	.L831	#,
	.loc 1 2706 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, iftmp.266
	jmp	.L833	#
.L831:
	.loc 1 2706 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rdx	# insn_5(D)->fld[3].rtx, D.16111
	movq	-40(%rbp), %rax	# insn, tmp86
	movq	%rdx, %rsi	# D.16111,
	movq	%rax, %rdi	# tmp86,
	call	single_set_2	#
	jmp	.L833	#
.L830:
	.loc 1 2706 0 discriminator 2
	movl	$0, %eax	#, iftmp.265
.L833:
	.loc 1 2706 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.265, set
	cmpq	$0, -16(%rbp)	#, set
	je	.L834	#,
	.loc 1 2706 0 discriminator 1
	movq	-16(%rbp), %rax	# set, tmp87
	movq	%rax, %rdi	# tmp87,
	call	set_noop_p	#
	testl	%eax, %eax	# D.16109
	je	.L834	#,
	.loc 1 2713 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.267
	testl	%eax, %eax	# reload_completed.267
	je	.L835	#,
	.loc 1 2715 0
	movq	-40(%rbp), %rax	# insn, tmp88
	movw	$37, (%rax)	#, insn_5(D)->code
	.loc 1 2716 0
	movq	-40(%rbp), %rax	# insn, tmp89
	movl	$-99, 40(%rax)	#, insn_5(D)->fld[4].rtint
	.loc 1 2717 0
	movq	-40(%rbp), %rax	# insn, tmp90
	movq	$0, 32(%rax)	#, insn_5(D)->fld[3].rtstr
	.loc 1 2713 0
	jmp	.L829	#
.L835:
	.loc 1 2713 0 is_stmt 0 discriminator 1
	jmp	.L829	#
.L834:
.LBB37:
	.loc 1 2723 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp91
	movq	16(%rax), %rax	# insn_5(D)->fld[1].rtx, tmp92
	movq	%rax, -24(%rbp)	# tmp92, first
	.loc 1 2724 0
	movq	-40(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.16111
	movq	-40(%rbp), %rcx	# insn, tmp94
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.16111,
	call	try_split	#
	movq	%rax, -8(%rbp)	# tmp95, last
	.loc 1 2726 0
	movq	-8(%rbp), %rax	# last, tmp96
	cmpq	-40(%rbp), %rax	# insn, tmp96
	je	.L829	#,
	.loc 1 2729 0
	movq	-40(%rbp), %rax	# insn, tmp97
	movw	$37, (%rax)	#, insn_5(D)->code
	.loc 1 2730 0
	movq	-40(%rbp), %rax	# insn, tmp98
	movq	$0, 32(%rax)	#, insn_5(D)->fld[3].rtstr
	.loc 1 2731 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movl	$-99, 40(%rax)	#, insn_5(D)->fld[4].rtint
	.loc 1 2736 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.268
	testl	%eax, %eax	# reload_completed.268
	je	.L836	#,
	.loc 1 2736 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# first, tmp100
	cmpq	-8(%rbp), %rax	# last, tmp100
	je	.L836	#,
	.loc 1 2738 0 is_stmt 1
	movq	-24(%rbp), %rax	# first, tmp101
	movq	24(%rax), %rax	# first_22->fld[2].rtx, tmp102
	movq	%rax, -24(%rbp)	# tmp102, first
.L839:
	.loc 1 2741 0
	movq	-24(%rbp), %rax	# first, tmp103
	movzwl	(%rax), %eax	# first_1->code, D.16108
	movzwl	%ax, %eax	# D.16108, D.16109
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16110
	cmpb	$105, %al	#, D.16110
	jne	.L837	#,
	.loc 1 2742 0
	movq	-24(%rbp), %rax	# first, tmp105
	movq	%rax, %rdi	# tmp105,
	call	cleanup_subreg_operands	#
.L837:
	.loc 1 2743 0
	movq	-24(%rbp), %rax	# first, tmp106
	cmpq	-8(%rbp), %rax	# last, tmp106
	jne	.L838	#,
	.loc 1 2744 0
	jmp	.L836	#
.L838:
	.loc 1 2745 0
	movq	-24(%rbp), %rax	# first, tmp107
	movq	24(%rax), %rax	# first_1->fld[2].rtx, tmp108
	movq	%rax, -24(%rbp)	# tmp108, first
	.loc 1 2746 0
	jmp	.L839	#
.L836:
	.loc 1 2748 0
	movq	-8(%rbp), %rax	# last, D.16107
	jmp	.L840	#
.L829:
.LBE37:
	.loc 1 2751 0
	movl	$0, %eax	#, D.16107
.L840:
	.loc 1 2752 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	split_insn, .-split_insn
	.globl	split_all_insns
	.type	split_all_insns, @function
split_all_insns:
.LFB52:
	.loc 1 2758 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# upd_life, upd_life
	.loc 1 2763 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.269
	movl	%eax, %edi	# n_basic_blocks.270,
	call	sbitmap_alloc	#
	movq	%rax, -24(%rbp)	# tmp71, blocks
	.loc 1 2764 0
	movq	-24(%rbp), %rax	# blocks, tmp72
	movq	%rax, %rdi	# tmp72,
	call	sbitmap_zero	#
	.loc 1 2765 0
	movl	$0, -48(%rbp)	#, changed
	.loc 1 2767 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.271
	subl	$1, %eax	#, tmp73
	movl	%eax, -44(%rbp)	# tmp73, i
	jmp	.L842	#
.L851:
.LBB38:
	.loc 1 2769 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.272
	movl	-44(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, tmp74
	addq	$4, %rdx	#, tmp76
	movq	(%rax,%rdx,8), %rax	# basic_block_info.272_16->data.bb, tmp77
	movq	%rax, -16(%rbp)	# tmp77, bb
	.loc 1 2772 0
	movq	-16(%rbp), %rax	# bb, tmp78
	movq	(%rax), %rax	# bb_17->head, tmp79
	movq	%rax, -40(%rbp)	# tmp79, insn
	jmp	.L843	#
.L849:
.LBB39:
	.loc 1 2778 0
	movq	-40(%rbp), %rax	# insn, tmp80
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, next
	.loc 1 2779 0
	movq	-40(%rbp), %rax	# insn, tmp82
	movq	%rax, %rdi	# tmp82,
	call	split_insn	#
	movq	%rax, -32(%rbp)	# tmp83, last
	.loc 1 2780 0
	cmpq	$0, -32(%rbp)	#, last
	je	.L844	#,
	.loc 1 2786 0
	jmp	.L845	#
.L846:
	.loc 1 2787 0
	movq	-32(%rbp), %rax	# last, tmp84
	movq	16(%rax), %rax	# last_9->fld[1].rtx, tmp85
	movq	%rax, -32(%rbp)	# tmp85, last
.L845:
	.loc 1 2786 0 discriminator 1
	movq	-32(%rbp), %rax	# last, tmp86
	movzwl	(%rax), %eax	# last_9->code, D.16112
	cmpw	$35, %ax	#, D.16112
	je	.L846	#,
	.loc 1 2788 0
	movl	-44(%rbp), %eax	# i, i.273
	shrl	$6, %eax	#, D.16113
	movq	-24(%rbp), %rdx	# blocks, tmp87
	movl	%eax, %ecx	# D.16113, tmp88
	addq	$2, %rcx	#, tmp89
	movq	(%rdx,%rcx,8), %rdx	# blocks_12->elms, D.16114
	movl	-44(%rbp), %ecx	# i, tmp90
	andl	$63, %ecx	#, D.16115
	movl	$1, %esi	#, tmp91
	salq	%cl, %rsi	# D.16115, D.16114
	movq	%rsi, %rcx	# D.16114, D.16114
	orq	%rdx, %rcx	# D.16114, D.16114
	movq	-24(%rbp), %rdx	# blocks, tmp92
	movl	%eax, %eax	# D.16113, tmp93
	addq	$2, %rax	#, tmp94
	movq	%rcx, (%rdx,%rax,8)	# D.16114, blocks_12->elms
	.loc 1 2789 0
	movl	$1, -48(%rbp)	#, changed
	.loc 1 2790 0
	movq	-32(%rbp), %rax	# last, tmp95
	movq	%rax, -40(%rbp)	# tmp95, insn
.L844:
	.loc 1 2793 0
	movq	-16(%rbp), %rax	# bb, tmp96
	movq	8(%rax), %rax	# bb_17->end, D.16116
	cmpq	-40(%rbp), %rax	# insn, D.16116
	jne	.L847	#,
	.loc 1 2794 0
	jmp	.L848	#
.L847:
.LBE39:
	.loc 1 2772 0
	movq	-8(%rbp), %rax	# next, tmp97
	movq	%rax, -40(%rbp)	# tmp97, insn
.L843:
	.loc 1 2772 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L849	#,
.L848:
	.loc 1 2797 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L850	#,
	.loc 1 2798 0
	movl	$__FUNCTION__.12129, %edx	#,
	movl	$2798, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L850:
.LBE38:
	.loc 1 2767 0
	subl	$1, -44(%rbp)	#, i
.L842:
	.loc 1 2767 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L851	#,
	.loc 1 2801 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, changed
	je	.L852	#,
	.loc 1 2803 0
	movq	-24(%rbp), %rax	# blocks, tmp98
	movq	%rax, %rdi	# tmp98,
	call	find_many_sub_basic_blocks	#
.L852:
	.loc 1 2806 0
	cmpl	$0, -48(%rbp)	#, changed
	je	.L853	#,
	.loc 1 2806 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, upd_life
	je	.L853	#,
	.loc 1 2808 0 is_stmt 1
	movq	-24(%rbp), %rax	# blocks, tmp99
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	count_or_remove_death_notes	#
	.loc 1 2809 0
	movq	-24(%rbp), %rax	# blocks, tmp100
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	update_life_info	#
.L853:
	.loc 1 2815 0
	movq	-24(%rbp), %rax	# blocks, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free	#
	.loc 1 2816 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	split_all_insns, .-split_all_insns
	.globl	split_all_insns_noflow
	.type	split_all_insns_noflow, @function
split_all_insns_noflow:
.LFB53:
	.loc 1 2823 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2826 0
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp59, insn
	jmp	.L855	#
.L856:
	.loc 1 2828 0 discriminator 2
	movq	-16(%rbp), %rax	# insn, tmp60
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp61
	movq	%rax, -8(%rbp)	# tmp61, next
	.loc 1 2829 0 discriminator 2
	movq	-16(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	split_insn	#
	.loc 1 2826 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp63
	movq	%rax, -16(%rbp)	# tmp63, insn
.L855:
	.loc 1 2826 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	jne	.L856	#,
	.loc 1 2831 0 is_stmt 1
	nop
	.loc 1 2832 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	split_all_insns_noflow, .-split_all_insns_noflow
	.local	peep2_insn_data
	.comm	peep2_insn_data,80,32
	.local	peep2_current
	.comm	peep2_current,4,4
	.globl	peep2_next_insn
	.type	peep2_next_insn, @function
peep2_next_insn:
.LFB54:
	.loc 1 2856 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 2857 0
	cmpl	$4, -4(%rbp)	#, n
	jle	.L859	#,
	.loc 1 2858 0
	movl	$__FUNCTION__.12148, %edx	#,
	movl	$2858, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L859:
	.loc 1 2860 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.274
	addl	%eax, -4(%rbp)	# peep2_current.274, n
	.loc 1 2861 0
	cmpl	$4, -4(%rbp)	#, n
	jle	.L860	#,
	.loc 1 2862 0
	subl	$5, -4(%rbp)	#, n
.L860:
	.loc 1 2864 0
	movl	-4(%rbp), %eax	# n, tmp65
	cltq
	salq	$4, %rax	#, tmp66
	addq	$peep2_insn_data, %rax	#, tmp67
	movq	(%rax), %rdx	# peep2_insn_data[n_1].insn, D.16118
	movq	global_rtl(%rip), %rax	# global_rtl, D.16118
	cmpq	%rax, %rdx	# D.16118, D.16118
	jne	.L861	#,
	.loc 1 2865 0
	movl	$0, %eax	#, D.16117
	jmp	.L862	#
.L861:
	.loc 1 2866 0
	movl	-4(%rbp), %eax	# n, tmp69
	cltq
	salq	$4, %rax	#, tmp70
	addq	$peep2_insn_data, %rax	#, tmp71
	movq	(%rax), %rax	# peep2_insn_data[n_1].insn, D.16117
.L862:
	.loc 1 2867 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	peep2_next_insn, .-peep2_next_insn
	.globl	peep2_regno_dead_p
	.type	peep2_regno_dead_p, @function
peep2_regno_dead_p:
.LFB55:
	.loc 1 2876 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ofs, ofs
	movl	%esi, -8(%rbp)	# regno, regno
	.loc 1 2877 0
	cmpl	$4, -4(%rbp)	#, ofs
	jle	.L864	#,
	.loc 1 2878 0
	movl	$__FUNCTION__.12153, %edx	#,
	movl	$2878, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L864:
	.loc 1 2880 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.275
	addl	%eax, -4(%rbp)	# peep2_current.275, ofs
	.loc 1 2881 0
	cmpl	$4, -4(%rbp)	#, ofs
	jle	.L865	#,
	.loc 1 2882 0
	subl	$5, -4(%rbp)	#, ofs
.L865:
	.loc 1 2884 0
	movl	-4(%rbp), %eax	# ofs, tmp67
	cltq
	salq	$4, %rax	#, tmp68
	addq	$peep2_insn_data, %rax	#, tmp69
	movq	(%rax), %rax	# peep2_insn_data[ofs_1].insn, D.16119
	testq	%rax, %rax	# D.16119
	jne	.L866	#,
	.loc 1 2885 0
	movl	$__FUNCTION__.12153, %edx	#,
	movl	$2885, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L866:
	.loc 1 2887 0
	movl	-4(%rbp), %eax	# ofs, tmp71
	cltq
	salq	$4, %rax	#, tmp72
	addq	$peep2_insn_data, %rax	#, tmp73
	movq	8(%rax), %rax	# peep2_insn_data[ofs_1].live_before, D.16120
	movl	-8(%rbp), %edx	# regno, tmp74
	movl	%edx, %esi	# tmp74,
	movq	%rax, %rdi	# D.16120,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16121
	sete	%al	#, D.16122
	movzbl	%al, %eax	# D.16122, D.16121
	.loc 1 2888 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	peep2_regno_dead_p, .-peep2_regno_dead_p
	.globl	peep2_reg_dead_p
	.type	peep2_reg_dead_p, @function
peep2_reg_dead_p:
.LFB56:
	.loc 1 2896 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# ofs, ofs
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 2899 0
	cmpl	$4, -20(%rbp)	#, ofs
	jle	.L869	#,
	.loc 1 2900 0
	movl	$__FUNCTION__.12160, %edx	#,
	movl	$2900, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L869:
	.loc 1 2902 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.276
	addl	%eax, -20(%rbp)	# peep2_current.276, ofs
	.loc 1 2903 0
	cmpl	$4, -20(%rbp)	#, ofs
	jle	.L870	#,
	.loc 1 2904 0
	subl	$5, -20(%rbp)	#, ofs
.L870:
	.loc 1 2906 0
	movl	-20(%rbp), %eax	# ofs, tmp98
	cltq
	salq	$4, %rax	#, tmp99
	addq	$peep2_insn_data, %rax	#, tmp100
	movq	(%rax), %rax	# peep2_insn_data[ofs_1].insn, D.16124
	testq	%rax, %rax	# D.16124
	jne	.L871	#,
	.loc 1 2907 0
	movl	$__FUNCTION__.12160, %edx	#,
	movl	$2907, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L871:
	.loc 1 2909 0
	movq	-32(%rbp), %rax	# reg, tmp101
	movl	8(%rax), %eax	# reg_17(D)->fld[0].rtuint, D.16125
	movl	%eax, -4(%rbp)	# D.16125, regno
	.loc 1 2910 0
	cmpl	$7, -4(%rbp)	#, regno
	jle	.L872	#,
	.loc 1 2910 0 is_stmt 0 discriminator 1
	cmpl	$15, -4(%rbp)	#, regno
	jle	.L873	#,
.L872:
	.loc 1 2910 0 discriminator 2
	cmpl	$20, -4(%rbp)	#, regno
	jle	.L874	#,
	.loc 1 2910 0 discriminator 1
	cmpl	$28, -4(%rbp)	#, regno
	jle	.L873	#,
.L874:
	.loc 1 2910 0 discriminator 2
	cmpl	$44, -4(%rbp)	#, regno
	jle	.L875	#,
	.loc 1 2910 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, regno
	jle	.L873	#,
.L875:
	.loc 1 2910 0 discriminator 2
	cmpl	$28, -4(%rbp)	#, regno
	jle	.L876	#,
	.loc 1 2910 0 discriminator 1
	cmpl	$36, -4(%rbp)	#, regno
	jg	.L876	#,
.L873:
	movq	-32(%rbp), %rax	# reg, tmp102
	movzbl	2(%rax), %eax	# reg_17(D)->mode, D.16126
	movzbl	%al, %eax	# D.16126, D.16123
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16127
	cmpl	$5, %eax	#, D.16127
	je	.L877	#,
	.loc 1 2910 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp104
	movzbl	2(%rax), %eax	# reg_17(D)->mode, D.16126
	movzbl	%al, %eax	# D.16126, D.16123
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16127
	cmpl	$6, %eax	#, D.16127
	jne	.L878	#,
.L877:
	.loc 1 2910 0 discriminator 1
	movl	$2, %eax	#, iftmp.278
	jmp	.L879	#
.L878:
	movl	$1, %eax	#, iftmp.278
.L879:
	.loc 1 2910 0 discriminator 3
	jmp	.L880	#
.L876:
	.loc 1 2910 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp106
	movzbl	2(%rax), %eax	# reg_17(D)->mode, D.16126
	cmpb	$18, %al	#, D.16126
	jne	.L881	#,
	.loc 1 2910 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.281
	andl	$33554432, %eax	#, D.16123
	testl	%eax, %eax	# D.16123
	je	.L882	#,
	movl	$2, %eax	#, iftmp.280
	jmp	.L880	#
.L882:
	.loc 1 2910 0 discriminator 2
	movl	$3, %eax	#, iftmp.280
	jmp	.L880	#
.L881:
	movq	-32(%rbp), %rax	# reg, tmp107
	movzbl	2(%rax), %eax	# reg_17(D)->mode, D.16126
	cmpb	$24, %al	#, D.16126
	jne	.L885	#,
	.loc 1 2910 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.284
	andl	$33554432, %eax	#, D.16123
	testl	%eax, %eax	# D.16123
	je	.L886	#,
	movl	$4, %eax	#, iftmp.283
	jmp	.L880	#
.L886:
	.loc 1 2910 0 discriminator 2
	movl	$6, %eax	#, iftmp.283
	jmp	.L880	#
.L885:
	movq	-32(%rbp), %rax	# reg, tmp108
	movzbl	2(%rax), %eax	# reg_17(D)->mode, D.16126
	movzbl	%al, %eax	# D.16126, D.16123
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16126
	movzbl	%al, %edx	# D.16126, D.16123
	movl	target_flags(%rip), %eax	# target_flags, target_flags.286
	andl	$33554432, %eax	#, D.16123
	testl	%eax, %eax	# D.16123
	je	.L889	#,
	.loc 1 2910 0 discriminator 1
	movl	$8, %eax	#, iftmp.285
	jmp	.L890	#
.L889:
	.loc 1 2910 0 discriminator 2
	movl	$4, %eax	#, iftmp.285
.L890:
	.loc 1 2910 0 discriminator 3
	addl	%edx, %eax	# D.16123, D.16123
	subl	$1, %eax	#, D.16123
	movl	target_flags(%rip), %edx	# target_flags, target_flags.288
	andl	$33554432, %edx	#, D.16123
	testl	%edx, %edx	# D.16123
	je	.L891	#,
	.loc 1 2910 0 discriminator 1
	movl	$8, %ecx	#, iftmp.287
	jmp	.L892	#
.L891:
	.loc 1 2910 0 discriminator 2
	movl	$4, %ecx	#, iftmp.287
.L892:
	.loc 1 2910 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.287
.L880:
	movl	%eax, -8(%rbp)	# iftmp.277, n
	.loc 1 2911 0 is_stmt 1 discriminator 3
	jmp	.L893	#
.L895:
	.loc 1 2912 0
	movl	-8(%rbp), %eax	# n, tmp112
	movl	-4(%rbp), %edx	# regno, tmp113
	addl	%eax, %edx	# tmp112, D.16123
	movl	-20(%rbp), %eax	# ofs, tmp115
	cltq
	salq	$4, %rax	#, tmp116
	addq	$peep2_insn_data, %rax	#, tmp117
	movq	8(%rax), %rax	# peep2_insn_data[ofs_1].live_before, D.16128
	movl	%edx, %esi	# D.16123,
	movq	%rax, %rdi	# D.16128,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16123
	je	.L893	#,
	.loc 1 2913 0
	movl	$0, %eax	#, D.16123
	jmp	.L894	#
.L893:
	.loc 1 2911 0 discriminator 1
	subl	$1, -8(%rbp)	#, n
	cmpl	$0, -8(%rbp)	#, n
	jns	.L895	#,
	.loc 1 2914 0
	movl	$1, %eax	#, D.16123
.L894:
	.loc 1 2915 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	peep2_reg_dead_p, .-peep2_reg_dead_p
	.globl	peep2_find_free_register
	.type	peep2_find_free_register, @function
peep2_find_free_register:
.LFB57:
	.loc 1 2934 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# from, from
	movl	%esi, -72(%rbp)	# to, to
	movq	%rdx, -80(%rbp)	# class_str, class_str
	movl	%ecx, -84(%rbp)	# mode, mode
	movq	%r8, -96(%rbp)	# reg_set, reg_set
	.loc 1 2940 0
	cmpl	$4, -68(%rbp)	#, from
	jg	.L897	#,
	.loc 1 2940 0 is_stmt 0 discriminator 1
	cmpl	$4, -72(%rbp)	#, to
	jle	.L898	#,
.L897:
	.loc 1 2941 0 is_stmt 1
	movl	$__FUNCTION__.12175, %edx	#,
	movl	$2941, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L898:
	.loc 1 2943 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.289
	addl	%eax, -68(%rbp)	# peep2_current.289, from
	.loc 1 2944 0
	cmpl	$4, -68(%rbp)	#, from
	jle	.L899	#,
	.loc 1 2945 0
	subl	$5, -68(%rbp)	#, from
.L899:
	.loc 1 2946 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.290
	addl	%eax, -72(%rbp)	# peep2_current.290, to
	.loc 1 2947 0
	cmpl	$4, -72(%rbp)	#, to
	jle	.L900	#,
	.loc 1 2948 0
	subl	$5, -72(%rbp)	#, to
.L900:
	.loc 1 2950 0
	movl	-68(%rbp), %eax	# from, tmp208
	cltq
	salq	$4, %rax	#, tmp209
	addq	$peep2_insn_data, %rax	#, tmp210
	movq	(%rax), %rax	# peep2_insn_data[from_1].insn, D.16130
	testq	%rax, %rax	# D.16130
	jne	.L901	#,
	.loc 1 2951 0
	movl	$__FUNCTION__.12175, %edx	#,
	movl	$2951, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L901:
	.loc 1 2952 0
	movq	$0, -32(%rbp)	#, live
	movl	-68(%rbp), %eax	# from, tmp212
	cltq
	salq	$4, %rax	#, tmp213
	addq	$peep2_insn_data, %rax	#, tmp214
	movq	8(%rax), %rdx	# peep2_insn_data[from_1].live_before, D.16131
	leaq	-32(%rbp), %rax	#, tmp215
	movq	%rdx, %rsi	# D.16131,
	movq	%rax, %rdi	# tmp215,
	call	reg_set_to_hard_reg_set	#
	.loc 1 2954 0
	jmp	.L902	#
.L905:
.LBB40:
	.loc 1 2958 0
	addl	$1, -68(%rbp)	#, from
	cmpl	$4, -68(%rbp)	#, from
	jle	.L903	#,
	.loc 1 2959 0
	movl	$0, -68(%rbp)	#, from
.L903:
	.loc 1 2960 0
	movl	-68(%rbp), %eax	# from, tmp217
	cltq
	salq	$4, %rax	#, tmp218
	addq	$peep2_insn_data, %rax	#, tmp219
	movq	(%rax), %rax	# peep2_insn_data[from_2].insn, D.16130
	testq	%rax, %rax	# D.16130
	jne	.L904	#,
	.loc 1 2961 0
	movl	$__FUNCTION__.12175, %edx	#,
	movl	$2961, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L904:
	.loc 1 2962 0
	movq	$0, -24(%rbp)	#, this_live
	movl	-68(%rbp), %eax	# from, tmp221
	cltq
	salq	$4, %rax	#, tmp222
	addq	$peep2_insn_data, %rax	#, tmp223
	movq	8(%rax), %rdx	# peep2_insn_data[from_2].live_before, D.16131
	leaq	-24(%rbp), %rax	#, tmp224
	movq	%rdx, %rsi	# D.16131,
	movq	%rax, %rdi	# tmp224,
	call	reg_set_to_hard_reg_set	#
	.loc 1 2963 0
	movq	-32(%rbp), %rdx	# live, live.291
	movq	-24(%rbp), %rax	# this_live, this_live.292
	orq	%rdx, %rax	# live.291, live.293
	movq	%rax, -32(%rbp)	# live.293, live
.L902:
.LBE40:
	.loc 1 2954 0 discriminator 1
	movl	-68(%rbp), %eax	# from, tmp225
	cmpl	-72(%rbp), %eax	# to, tmp225
	jne	.L905	#,
	.loc 1 2966 0
	movq	-80(%rbp), %rax	# class_str, tmp226
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	cmpb	$114, %al	#, D.16132
	je	.L906	#,
	.loc 1 2967 0 discriminator 1
	movq	-80(%rbp), %rax	# class_str, tmp227
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 1
	cmpb	$114, %al	#, D.16132
	je	.L907	#,
	.loc 1 2967 0 discriminator 3
	movq	-80(%rbp), %rax	# class_str, tmp228
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 3
	cmpb	$82, %al	#, D.16132
	je	.L908	#,
	.loc 1 2967 0 discriminator 5
	movq	-80(%rbp), %rax	# class_str, tmp229
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 5
	cmpb	$113, %al	#, D.16132
	jne	.L909	#,
	.loc 1 2967 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.299
	andl	$33554432, %eax	#, D.16133
	.loc 1 2966 0 discriminator 7
	testl	%eax, %eax	# D.16133
	je	.L910	#,
	.loc 1 2966 0 is_stmt 0 discriminator 9
	movl	$12, %eax	#, iftmp.298
	jmp	.L958	#
.L910:
	.loc 1 2966 0 discriminator 10
	movl	$8, %eax	#, iftmp.298
	jmp	.L958	#
.L909:
	.loc 1 2967 0 is_stmt 1 discriminator 8
	movq	-80(%rbp), %rax	# class_str, tmp230
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 8
	cmpb	$81, %al	#, D.16132
	je	.L913	#,
	.loc 1 2967 0 discriminator 11
	movq	-80(%rbp), %rax	# class_str, tmp231
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 11
	cmpb	$102, %al	#, D.16132
	jne	.L914	#,
	.loc 1 2967 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.303
	andl	$1, %eax	#, D.16133
	.loc 1 2966 0 discriminator 13
	testl	%eax, %eax	# D.16133
	jne	.L915	#,
	.loc 1 2967 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.304
	andl	$32, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L916	#,
.L915:
	.loc 1 2966 0 discriminator 15
	movl	$15, %eax	#, iftmp.302
	jmp	.L917	#
.L916:
	.loc 1 2966 0 is_stmt 0
	movl	$0, %eax	#, iftmp.302
.L917:
	jmp	.L958	#
.L914:
	.loc 1 2967 0 is_stmt 1 discriminator 14
	movq	-80(%rbp), %rax	# class_str, tmp232
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 14
	cmpb	$116, %al	#, D.16132
	jne	.L919	#,
	.loc 1 2967 0 discriminator 17
	movl	target_flags(%rip), %eax	# target_flags, target_flags.307
	andl	$1, %eax	#, D.16133
	.loc 1 2966 0 discriminator 17
	testl	%eax, %eax	# D.16133
	jne	.L920	#,
	.loc 1 2967 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.308
	andl	$32, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L921	#,
.L920:
	.loc 1 2966 0 discriminator 19
	movl	$13, %eax	#, iftmp.306
	jmp	.L922	#
.L921:
	.loc 1 2966 0 is_stmt 0
	movl	$0, %eax	#, iftmp.306
.L922:
	jmp	.L958	#
.L919:
	.loc 1 2967 0 is_stmt 1 discriminator 18
	movq	-80(%rbp), %rax	# class_str, tmp233
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 18
	cmpb	$117, %al	#, D.16132
	jne	.L924	#,
	.loc 1 2967 0 discriminator 21
	movl	target_flags(%rip), %eax	# target_flags, target_flags.311
	andl	$1, %eax	#, D.16133
	.loc 1 2966 0 discriminator 21
	testl	%eax, %eax	# D.16133
	jne	.L925	#,
	.loc 1 2967 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.312
	andl	$32, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L926	#,
.L925:
	.loc 1 2966 0 discriminator 23
	movl	$14, %eax	#, iftmp.310
	jmp	.L927	#
.L926:
	.loc 1 2966 0 is_stmt 0
	movl	$0, %eax	#, iftmp.310
.L927:
	jmp	.L958	#
.L924:
	.loc 1 2967 0 is_stmt 1 discriminator 22
	movq	-80(%rbp), %rax	# class_str, tmp234
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 22
	cmpb	$97, %al	#, D.16132
	je	.L929	#,
	.loc 1 2967 0 discriminator 25
	movq	-80(%rbp), %rax	# class_str, tmp235
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 25
	cmpb	$98, %al	#, D.16132
	je	.L930	#,
	.loc 1 2967 0 discriminator 27
	movq	-80(%rbp), %rax	# class_str, tmp236
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 27
	cmpb	$99, %al	#, D.16132
	je	.L931	#,
	.loc 1 2967 0 discriminator 29
	movq	-80(%rbp), %rax	# class_str, tmp237
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 29
	cmpb	$100, %al	#, D.16132
	je	.L932	#,
	.loc 1 2967 0 discriminator 31
	movq	-80(%rbp), %rax	# class_str, tmp238
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 31
	cmpb	$120, %al	#, D.16132
	jne	.L933	#,
	.loc 1 2967 0 discriminator 33
	movl	target_flags(%rip), %eax	# target_flags, target_flags.319
	andl	$327680, %eax	#, D.16133
	.loc 1 2966 0 discriminator 33
	testl	%eax, %eax	# D.16133
	je	.L934	#,
	.loc 1 2966 0 is_stmt 0 discriminator 35
	movl	$16, %eax	#, iftmp.318
	jmp	.L958	#
.L934:
	.loc 1 2966 0 discriminator 36
	movl	$0, %eax	#, iftmp.318
	jmp	.L958	#
.L933:
	.loc 1 2967 0 is_stmt 1 discriminator 34
	movq	-80(%rbp), %rax	# class_str, tmp239
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 34
	cmpb	$89, %al	#, D.16132
	jne	.L937	#,
	.loc 1 2967 0 discriminator 37
	movl	target_flags(%rip), %eax	# target_flags, target_flags.322
	andl	$262144, %eax	#, D.16133
	.loc 1 2966 0 discriminator 37
	testl	%eax, %eax	# D.16133
	je	.L938	#,
	.loc 1 2966 0 is_stmt 0 discriminator 39
	movl	$16, %eax	#, iftmp.321
	jmp	.L958	#
.L938:
	.loc 1 2966 0 discriminator 40
	movl	$0, %eax	#, iftmp.321
	jmp	.L958	#
.L937:
	.loc 1 2967 0 is_stmt 1 discriminator 38
	movq	-80(%rbp), %rax	# class_str, tmp240
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 38
	cmpb	$121, %al	#, D.16132
	jne	.L941	#,
	.loc 1 2967 0 discriminator 41
	movl	target_flags(%rip), %eax	# target_flags, target_flags.325
	andl	$16384, %eax	#, D.16133
	.loc 1 2966 0 discriminator 41
	testl	%eax, %eax	# D.16133
	je	.L942	#,
	.loc 1 2966 0 is_stmt 0 discriminator 43
	movl	$17, %eax	#, iftmp.324
	jmp	.L958	#
.L942:
	.loc 1 2966 0 discriminator 44
	movl	$0, %eax	#, iftmp.324
	jmp	.L958	#
.L941:
	.loc 1 2967 0 is_stmt 1 discriminator 42
	movq	-80(%rbp), %rax	# class_str, tmp241
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 42
	cmpb	$65, %al	#, D.16132
	je	.L945	#,
	.loc 1 2967 0 discriminator 45
	movq	-80(%rbp), %rax	# class_str, tmp242
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 45
	cmpb	$68, %al	#, D.16132
	je	.L946	#,
	.loc 1 2967 0 discriminator 47
	movq	-80(%rbp), %rax	# class_str, tmp243
	movzbl	(%rax), %eax	# *class_str_70(D), D.16132
	.loc 1 2966 0 discriminator 47
	cmpb	$83, %al	#, D.16132
	jne	.L947	#,
	.loc 1 2966 0 is_stmt 0 discriminator 49
	movl	$5, %eax	#, iftmp.328
	jmp	.L958	#
.L947:
	.loc 1 2966 0 discriminator 50
	movl	$0, %eax	#, iftmp.328
	jmp	.L958	#
.L946:
	.loc 1 2966 0 discriminator 48
	movl	$6, %eax	#, iftmp.327
	jmp	.L958	#
.L945:
	.loc 1 2966 0 discriminator 46
	movl	$7, %eax	#, iftmp.326
	jmp	.L958	#
.L932:
	.loc 1 2966 0 discriminator 32
	movl	$2, %eax	#, iftmp.316
	jmp	.L958	#
.L931:
	.loc 1 2966 0 discriminator 30
	movl	$3, %eax	#, iftmp.315
	jmp	.L958	#
.L930:
	.loc 1 2966 0 discriminator 28
	movl	$4, %eax	#, iftmp.314
	jmp	.L958	#
.L929:
	.loc 1 2966 0 discriminator 26
	movl	$1, %eax	#, iftmp.313
	jmp	.L958	#
.L913:
	.loc 1 2966 0 discriminator 12
	movl	$8, %eax	#, iftmp.300
	jmp	.L958	#
.L908:
	.loc 1 2966 0 discriminator 6
	movl	$11, %eax	#, iftmp.296
	jmp	.L958	#
.L907:
	.loc 1 2966 0 discriminator 4
	movl	$12, %eax	#, iftmp.295
	jmp	.L958	#
.L906:
	.loc 1 2966 0 discriminator 2
	movl	$12, %eax	#, iftmp.294
.L958:
	.loc 1 2966 0 discriminator 58
	movl	%eax, -40(%rbp)	# iftmp.294, class
	.loc 1 2969 0 is_stmt 1 discriminator 58
	movl	$0, -56(%rbp)	#, i
	jmp	.L959	#
.L1020:
.LBB41:
	.loc 1 2974 0
	movl	search_ofs.12171(%rip), %edx	# search_ofs, search_ofs.329
	movl	-56(%rbp), %eax	# i, tmp247
	addl	%edx, %eax	# search_ofs.329, tmp246
	movl	%eax, -52(%rbp)	# tmp246, raw_regno
	.loc 1 2975 0
	cmpl	$52, -52(%rbp)	#, raw_regno
	jle	.L960	#,
	.loc 1 2976 0
	subl	$53, -52(%rbp)	#, raw_regno
.L960:
	.loc 1 2978 0
	movl	-52(%rbp), %eax	# raw_regno, tmp249
	cltq
	movl	reg_alloc_order(,%rax,4), %eax	# reg_alloc_order, tmp250
	movl	%eax, -36(%rbp)	# tmp250, regno
	.loc 1 2984 0
	movl	-36(%rbp), %eax	# regno, tmp252
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.16132
	testb	%al, %al	# D.16132
	je	.L961	#,
	.loc 1 2985 0
	jmp	.L962	#
.L961:
	.loc 1 2987 0
	movl	-40(%rbp), %eax	# class, tmp253
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.16134
	movl	-36(%rbp), %eax	# regno, tmp254
	movl	%eax, %ecx	# tmp254, tmp286
	shrq	%cl, %rdx	# tmp286, D.16134
	movq	%rdx, %rax	# D.16134, D.16134
	andl	$1, %eax	#, D.16134
	testq	%rax, %rax	# D.16134
	jne	.L963	#,
	.loc 1 2988 0
	jmp	.L962	#
.L963:
	.loc 1 2990 0
	movl	-84(%rbp), %edx	# mode, tmp255
	movl	-36(%rbp), %eax	# regno, tmp256
	movl	%edx, %esi	# tmp255,
	movl	%eax, %edi	# tmp256,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.16133
	jne	.L964	#,
	.loc 1 2991 0
	jmp	.L962	#
.L964:
	.loc 1 2993 0
	movl	-36(%rbp), %eax	# regno, tmp258
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.16132
	testb	%al, %al	# D.16132
	jne	.L965	#,
	.loc 1 2993 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# regno, tmp260
	cltq
	movzbl	regs_ever_live(%rax), %eax	# regs_ever_live, D.16132
	testb	%al, %al	# D.16132
	jne	.L965	#,
	.loc 1 2994 0 is_stmt 1
	jmp	.L962	#
.L965:
	.loc 1 2996 0
	cmpl	$20, -36(%rbp)	#, regno
	je	.L966	#,
	.loc 1 2996 0 is_stmt 0 discriminator 1
	cmpl	$6, -36(%rbp)	#, regno
	jne	.L967	#,
.L966:
	.loc 1 2997 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.330
	testl	%eax, %eax	# reload_completed.330
	je	.L968	#,
	.loc 1 2997 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.331
	testl	%eax, %eax	# frame_pointer_needed.331
	je	.L967	#,
.L968:
	.loc 1 2998 0 is_stmt 1
	jmp	.L962	#
.L967:
	.loc 1 3000 0
	movl	$1, -48(%rbp)	#, success
	.loc 1 3001 0
	cmpl	$7, -36(%rbp)	#, regno
	jle	.L969	#,
	.loc 1 3001 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jle	.L970	#,
.L969:
	.loc 1 3001 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jle	.L971	#,
	.loc 1 3001 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L970	#,
.L971:
	.loc 1 3001 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jle	.L972	#,
	.loc 1 3001 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jle	.L970	#,
.L972:
	.loc 1 3001 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L973	#,
	.loc 1 3001 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	jg	.L973	#,
.L970:
	movl	-84(%rbp), %eax	# mode, mode.334
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16136
	cmpl	$5, %eax	#, D.16136
	je	.L974	#,
	.loc 1 3001 0 discriminator 2
	movl	-84(%rbp), %eax	# mode, mode.335
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16136
	cmpl	$6, %eax	#, D.16136
	jne	.L975	#,
.L974:
	.loc 1 3001 0 discriminator 1
	movl	$1, %eax	#, iftmp.333
	jmp	.L976	#
.L975:
	.loc 1 3001 0 discriminator 3
	movl	$0, %eax	#, iftmp.333
.L976:
	.loc 1 3001 0 discriminator 4
	jmp	.L977	#
.L973:
	.loc 1 3001 0 discriminator 2
	cmpl	$18, -84(%rbp)	#, mode
	jne	.L978	#,
	.loc 1 3001 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.338
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L979	#,
	.loc 1 3001 0 discriminator 6
	movl	$1, %eax	#, iftmp.337
	jmp	.L977	#
.L979:
	.loc 1 3001 0 discriminator 7
	movl	$2, %eax	#, iftmp.337
	jmp	.L977	#
.L978:
	.loc 1 3001 0 discriminator 5
	cmpl	$24, -84(%rbp)	#, mode
	jne	.L982	#,
	.loc 1 3001 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.341
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L983	#,
	.loc 1 3001 0 discriminator 10
	movl	$3, %eax	#, iftmp.340
	jmp	.L977	#
.L983:
	.loc 1 3001 0 discriminator 11
	movl	$5, %eax	#, iftmp.340
	jmp	.L977	#
.L982:
	.loc 1 3001 0 discriminator 9
	movl	-84(%rbp), %eax	# mode, mode.342
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16135
	movzbl	%al, %edx	# D.16135, D.16133
	movl	target_flags(%rip), %eax	# target_flags, target_flags.344
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L986	#,
	.loc 1 3001 0 discriminator 1
	movl	$8, %eax	#, iftmp.343
	jmp	.L987	#
.L986:
	.loc 1 3001 0 discriminator 2
	movl	$4, %eax	#, iftmp.343
.L987:
	.loc 1 3001 0 discriminator 3
	addl	%edx, %eax	# D.16133, D.16133
	subl	$1, %eax	#, D.16133
	movl	target_flags(%rip), %edx	# target_flags, target_flags.346
	andl	$33554432, %edx	#, D.16133
	testl	%edx, %edx	# D.16133
	je	.L988	#,
	.loc 1 3001 0 discriminator 1
	movl	$8, %ebx	#, iftmp.345
	jmp	.L989	#
.L988:
	.loc 1 3001 0 discriminator 2
	movl	$4, %ebx	#, iftmp.345
.L989:
	.loc 1 3001 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.345
	subl	$1, %eax	#, iftmp.339
.L977:
	movl	%eax, -44(%rbp)	# iftmp.332, j
	jmp	.L990	#
.L994:
	.loc 1 3003 0 is_stmt 1
	movq	-96(%rbp), %rax	# reg_set, tmp266
	movq	(%rax), %rdx	# *reg_set_211(D), D.16134
	movl	-44(%rbp), %eax	# j, tmp267
	movl	-36(%rbp), %ecx	# regno, tmp268
	addl	%ecx, %eax	# tmp268, D.16133
	movl	%eax, %ecx	# D.16133, tmp289
	shrq	%cl, %rdx	# tmp289, D.16134
	movq	%rdx, %rax	# D.16134, D.16134
	andl	$1, %eax	#, D.16134
	testq	%rax, %rax	# D.16134
	jne	.L991	#,
	.loc 1 3004 0
	movq	-32(%rbp), %rdx	# live, live.347
	movl	-44(%rbp), %eax	# j, tmp269
	movl	-36(%rbp), %ecx	# regno, tmp270
	addl	%ecx, %eax	# tmp270, D.16133
	movl	%eax, %ecx	# D.16133, tmp291
	shrq	%cl, %rdx	# tmp291, D.16134
	movq	%rdx, %rax	# D.16134, D.16134
	andl	$1, %eax	#, D.16134
	testq	%rax, %rax	# D.16134
	je	.L992	#,
.L991:
	.loc 1 3006 0
	movl	$0, -48(%rbp)	#, success
	.loc 1 3007 0
	jmp	.L993	#
.L992:
	.loc 1 3001 0
	subl	$1, -44(%rbp)	#, j
.L990:
	.loc 1 3001 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L994	#,
.L993:
	.loc 1 3010 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, success
	je	.L962	#,
	.loc 1 3012 0
	cmpl	$7, -36(%rbp)	#, regno
	jle	.L995	#,
	.loc 1 3012 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jle	.L996	#,
.L995:
	.loc 1 3012 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jle	.L997	#,
	.loc 1 3012 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L996	#,
.L997:
	.loc 1 3012 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jle	.L998	#,
	.loc 1 3012 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jle	.L996	#,
.L998:
	.loc 1 3012 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L999	#,
	.loc 1 3012 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	jg	.L999	#,
.L996:
	movl	-84(%rbp), %eax	# mode, mode.350
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16136
	cmpl	$5, %eax	#, D.16136
	je	.L1000	#,
	.loc 1 3012 0 discriminator 2
	movl	-84(%rbp), %eax	# mode, mode.351
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16136
	cmpl	$6, %eax	#, D.16136
	jne	.L1001	#,
.L1000:
	.loc 1 3012 0 discriminator 1
	movl	$1, %eax	#, iftmp.349
	jmp	.L1002	#
.L1001:
	.loc 1 3012 0 discriminator 3
	movl	$0, %eax	#, iftmp.349
.L1002:
	.loc 1 3012 0 discriminator 4
	jmp	.L1003	#
.L999:
	.loc 1 3012 0 discriminator 2
	cmpl	$18, -84(%rbp)	#, mode
	jne	.L1004	#,
	.loc 1 3012 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.354
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L1005	#,
	.loc 1 3012 0 discriminator 6
	movl	$1, %eax	#, iftmp.353
	jmp	.L1003	#
.L1005:
	.loc 1 3012 0 discriminator 7
	movl	$2, %eax	#, iftmp.353
	jmp	.L1003	#
.L1004:
	.loc 1 3012 0 discriminator 5
	cmpl	$24, -84(%rbp)	#, mode
	jne	.L1008	#,
	.loc 1 3012 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.357
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L1009	#,
	.loc 1 3012 0 discriminator 10
	movl	$3, %eax	#, iftmp.356
	jmp	.L1003	#
.L1009:
	.loc 1 3012 0 discriminator 11
	movl	$5, %eax	#, iftmp.356
	jmp	.L1003	#
.L1008:
	.loc 1 3012 0 discriminator 9
	movl	-84(%rbp), %eax	# mode, mode.358
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16135
	movzbl	%al, %edx	# D.16135, D.16133
	movl	target_flags(%rip), %eax	# target_flags, target_flags.360
	andl	$33554432, %eax	#, D.16133
	testl	%eax, %eax	# D.16133
	je	.L1012	#,
	.loc 1 3012 0 discriminator 1
	movl	$8, %eax	#, iftmp.359
	jmp	.L1013	#
.L1012:
	.loc 1 3012 0 discriminator 2
	movl	$4, %eax	#, iftmp.359
.L1013:
	.loc 1 3012 0 discriminator 3
	addl	%edx, %eax	# D.16133, D.16133
	subl	$1, %eax	#, D.16133
	movl	target_flags(%rip), %edx	# target_flags, target_flags.362
	andl	$33554432, %edx	#, D.16133
	testl	%edx, %edx	# D.16133
	je	.L1014	#,
	.loc 1 3012 0 discriminator 1
	movl	$8, %ebx	#, iftmp.361
	jmp	.L1015	#
.L1014:
	.loc 1 3012 0 discriminator 2
	movl	$4, %ebx	#, iftmp.361
.L1015:
	.loc 1 3012 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.361
	subl	$1, %eax	#, iftmp.355
.L1003:
	movl	%eax, -44(%rbp)	# iftmp.348, j
	jmp	.L1016	#
.L1017:
	.loc 1 3013 0 is_stmt 1 discriminator 2
	movq	-96(%rbp), %rax	# reg_set, tmp276
	movq	(%rax), %rax	# *reg_set_211(D), D.16134
	movl	-44(%rbp), %edx	# j, tmp277
	movl	-36(%rbp), %ecx	# regno, tmp278
	addl	%ecx, %edx	# tmp278, D.16133
	movl	$1, %esi	#, tmp279
	movl	%edx, %ecx	# D.16133, tmp294
	salq	%cl, %rsi	# tmp294, D.16134
	movq	%rsi, %rdx	# D.16134, D.16134
	orq	%rax, %rdx	# D.16134, D.16134
	movq	-96(%rbp), %rax	# reg_set, tmp280
	movq	%rdx, (%rax)	# D.16134, *reg_set_211(D)
	.loc 1 3012 0 discriminator 2
	subl	$1, -44(%rbp)	#, j
.L1016:
	.loc 1 3012 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L1017	#,
	.loc 1 3016 0 is_stmt 1
	addl	$1, -52(%rbp)	#, raw_regno
	cmpl	$52, -52(%rbp)	#, raw_regno
	jle	.L1018	#,
	.loc 1 3017 0
	movl	$0, -52(%rbp)	#, raw_regno
.L1018:
	.loc 1 3018 0
	movl	-52(%rbp), %eax	# raw_regno, tmp281
	movl	%eax, search_ofs.12171(%rip)	# tmp281, search_ofs
	.loc 1 3020 0
	movl	-36(%rbp), %edx	# regno, tmp282
	movl	-84(%rbp), %eax	# mode, tmp283
	movl	%edx, %esi	# tmp282,
	movl	%eax, %edi	# tmp283,
	call	gen_rtx_REG	#
	jmp	.L1021	#
.L962:
.LBE41:
	.loc 1 2969 0
	addl	$1, -56(%rbp)	#, i
.L959:
	.loc 1 2969 0 is_stmt 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, i
	jle	.L1020	#,
	.loc 1 3024 0 is_stmt 1
	movl	$0, search_ofs.12171(%rip)	#, search_ofs
	.loc 1 3025 0
	movl	$0, %eax	#, D.16129
.L1021:
	.loc 1 3026 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	peep2_find_free_register, .-peep2_find_free_register
	.globl	peephole2_optimize
	.type	peephole2_optimize, @function
peephole2_optimize:
.LFB58:
	.loc 1 3033 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# dump_file, dump_file
	.loc 1 3042 0
	movb	$0, -314(%rbp)	#, do_cleanup_cfg
	.loc 1 3043 0
	movb	$0, -313(%rbp)	#, do_rebuild_jump_labels
	.loc 1 3046 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L1023	#
.L1024:
	.loc 1 3047 0 discriminator 2
	leaq	-160(%rbp), %rcx	#, tmp138
	movl	-308(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp141
	addq	%rax, %rax	# tmp141
	addq	%rdx, %rax	# tmp139, tmp141
	salq	$3, %rax	#, tmp142
	addq	%rcx, %rax	# tmp138, D.16137
	movq	%rax, %rdi	# D.16137,
	call	bitmap_initialize	#
	movl	-308(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, tmp143
	salq	$4, %rdx	#, tmp145
	addq	$peep2_insn_data, %rdx	#, tmp146
	movq	%rax, 8(%rdx)	# D.16138, peep2_insn_data[i_2].live_before
	.loc 1 3046 0 discriminator 2
	addl	$1, -308(%rbp)	#, i
.L1023:
	.loc 1 3046 0 is_stmt 0 discriminator 1
	cmpl	$4, -308(%rbp)	#, i
	jle	.L1024	#,
	.loc 1 3048 0 is_stmt 1
	leaq	-160(%rbp), %rcx	#, tmp147
	movl	-308(%rbp), %eax	# i, tmp149
	movslq	%eax, %rdx	# tmp149, tmp148
	movq	%rdx, %rax	# tmp148, tmp150
	addq	%rax, %rax	# tmp150
	addq	%rdx, %rax	# tmp148, tmp150
	salq	$3, %rax	#, tmp151
	addq	%rcx, %rax	# tmp147, D.16137
	movq	%rax, %rdi	# D.16137,
	call	bitmap_initialize	#
	movq	%rax, -240(%rbp)	# tmp152, live
	.loc 1 3055 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	count_or_remove_death_notes	#
	.loc 1 3058 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.363
	subl	$1, %eax	#, tmp153
	movl	%eax, -304(%rbp)	# tmp153, b
	jmp	.L1025	#
.L1071:
.LBB42:
	.loc 1 3060 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.364
	movl	-304(%rbp), %edx	# b, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	addq	$4, %rdx	#, tmp156
	movq	(%rax,%rdx,8), %rax	# basic_block_info.364_53->data.bb, tmp157
	movq	%rax, -280(%rbp)	# tmp157, bb
	.loc 1 3064 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L1026	#
.L1027:
	.loc 1 3065 0 discriminator 2
	movl	-308(%rbp), %eax	# i, tmp159
	cltq
	salq	$4, %rax	#, tmp160
	addq	$peep2_insn_data, %rax	#, tmp161
	movq	$0, (%rax)	#, peep2_insn_data[i_3].insn
	.loc 1 3064 0 discriminator 2
	addl	$1, -308(%rbp)	#, i
.L1026:
	.loc 1 3064 0 is_stmt 0 discriminator 1
	cmpl	$3, -308(%rbp)	#, i
	jle	.L1027	#,
	.loc 1 3068 0 is_stmt 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.16139
	movq	%rax, peep2_insn_data+64(%rip)	# D.16139, peep2_insn_data[4].insn
	.loc 1 3069 0
	movl	$4, peep2_current(%rip)	#, peep2_current
	.loc 1 3072 0
	movq	-280(%rbp), %rax	# bb, tmp162
	movq	72(%rax), %rdx	# bb_54->global_live_at_end, D.16138
	movq	-240(%rbp), %rax	# live, tmp163
	movq	%rdx, %rsi	# D.16138,
	movq	%rax, %rdi	# tmp163,
	call	bitmap_copy	#
	.loc 1 3073 0
	movq	peep2_insn_data+72(%rip), %rax	# peep2_insn_data[4].live_before, D.16138
	movq	-240(%rbp), %rdx	# live, tmp164
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# D.16138,
	call	bitmap_copy	#
	.loc 1 3078 0
	movq	-240(%rbp), %rsi	# live, tmp165
	movq	-280(%rbp), %rax	# bb, tmp166
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp166,
	call	init_propagate_block_info	#
	movq	%rax, -232(%rbp)	# tmp167, pbi
	.loc 1 3081 0
	movq	-280(%rbp), %rax	# bb, tmp168
	movq	8(%rax), %rax	# bb_54->end, tmp169
	movq	%rax, -288(%rbp)	# tmp169, insn
.L1070:
	.loc 1 3083 0
	movq	-288(%rbp), %rax	# insn, tmp170
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp171
	movq	%rax, -224(%rbp)	# tmp171, prev
	.loc 1 3084 0
	movq	-288(%rbp), %rax	# insn, tmp172
	movzwl	(%rax), %eax	# insn_1->code, D.16140
	movzwl	%ax, %eax	# D.16140, D.16141
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16142
	cmpb	$105, %al	#, D.16142
	jne	.L1028	#,
.LBB43:
	.loc 1 3091 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.365
	subl	$1, %eax	#, peep2_current.366
	movl	%eax, peep2_current(%rip)	# peep2_current.366, peep2_current
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.367
	testl	%eax, %eax	# peep2_current.367
	jns	.L1029	#,
	.loc 1 3092 0
	movl	$4, peep2_current(%rip)	#, peep2_current
.L1029:
	.loc 1 3093 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.368
	cltq
	salq	$4, %rax	#, tmp175
	leaq	peep2_insn_data(%rax), %rdx	#, tmp176
	movq	-288(%rbp), %rax	# insn, tmp177
	movq	%rax, (%rdx)	# tmp177, peep2_insn_data[peep2_current.368_69].insn
	.loc 1 3094 0
	movq	-288(%rbp), %rdx	# insn, tmp178
	movq	-232(%rbp), %rax	# pbi, tmp179
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	propagate_one_insn	#
	.loc 1 3095 0
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.369
	cltq
	salq	$4, %rax	#, tmp181
	addq	$peep2_insn_data, %rax	#, tmp182
	movq	8(%rax), %rax	# peep2_insn_data[peep2_current.369_70].live_before, D.16138
	movq	-240(%rbp), %rdx	# live, tmp183
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# D.16138,
	call	bitmap_copy	#
	.loc 1 3098 0
	movq	-288(%rbp), %rax	# insn, tmp184
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.16139
	leaq	-312(%rbp), %rdx	#, tmp185
	movq	-288(%rbp), %rcx	# insn, tmp186
	movq	%rcx, %rsi	# tmp186,
	movq	%rax, %rdi	# D.16139,
	call	peephole2_insns	#
	movq	%rax, -216(%rbp)	# tmp187, try
	.loc 1 3099 0
	cmpq	$0, -216(%rbp)	#, try
	je	.L1028	#,
	.loc 1 3104 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L1031	#
.L1049:
.LBB44:
	.loc 1 3109 0
	movl	peep2_current(%rip), %edx	# peep2_current, peep2_current.370
	movl	-308(%rbp), %eax	# i, tmp191
	addl	%edx, %eax	# peep2_current.370, tmp190
	movl	%eax, -300(%rbp)	# tmp190, j
	.loc 1 3110 0
	cmpl	$4, -300(%rbp)	#, j
	jle	.L1032	#,
	.loc 1 3111 0
	subl	$5, -300(%rbp)	#, j
.L1032:
	.loc 1 3112 0
	movl	-300(%rbp), %eax	# j, tmp193
	cltq
	salq	$4, %rax	#, tmp194
	addq	$peep2_insn_data, %rax	#, tmp195
	movq	(%rax), %rax	# peep2_insn_data[j_33].insn, tmp196
	movq	%rax, -208(%rbp)	# tmp196, old_insn
	.loc 1 3113 0
	movq	-208(%rbp), %rax	# old_insn, tmp197
	movzwl	(%rax), %eax	# old_insn_79->code, D.16140
	cmpw	$34, %ax	#, D.16140
	je	.L1033	#,
.LBE44:
	.loc 1 3104 0
	addl	$1, -308(%rbp)	#, i
	jmp	.L1031	#
.L1033:
.LBB46:
	.loc 1 3116 0
	movq	$0, -264(%rbp)	#, new_insn
	.loc 1 3117 0
	movq	-216(%rbp), %rax	# try, tmp198
	movzwl	(%rax), %eax	# try_73->code, D.16140
	cmpw	$24, %ax	#, D.16140
	jne	.L1034	#,
	.loc 1 3118 0
	movq	-216(%rbp), %rax	# try, tmp199
	movq	8(%rax), %rax	# try_73->fld[0].rtvec, D.16143
	movl	(%rax), %eax	# _84->num_elem, D.16141
	subl	$1, %eax	#, tmp200
	movl	%eax, -296(%rbp)	# tmp200, k
	jmp	.L1035	#
.L1038:
.LBB45:
	.loc 1 3120 0
	movq	-216(%rbp), %rax	# try, tmp201
	movq	8(%rax), %rax	# try_73->fld[0].rtvec, D.16143
	movl	-296(%rbp), %edx	# k, tmp203
	movslq	%edx, %rdx	# tmp203, tmp202
	movq	8(%rax,%rdx,8), %rax	# _87->elem, tmp204
	movq	%rax, -200(%rbp)	# tmp204, x
	.loc 1 3121 0
	movq	-200(%rbp), %rax	# x, tmp205
	movzwl	(%rax), %eax	# x_88->code, D.16140
	cmpw	$34, %ax	#, D.16140
	jne	.L1036	#,
	.loc 1 3123 0
	movq	-200(%rbp), %rax	# x, tmp206
	movq	%rax, -264(%rbp)	# tmp206, new_insn
	.loc 1 3124 0
	nop
	jmp	.L1039	#
.L1036:
.LBE45:
	.loc 1 3118 0
	subl	$1, -296(%rbp)	#, k
.L1035:
	.loc 1 3118 0 is_stmt 0 discriminator 1
	cmpl	$0, -296(%rbp)	#, k
	jns	.L1038	#,
	jmp	.L1039	#
.L1034:
	.loc 1 3127 0 is_stmt 1
	movq	-216(%rbp), %rax	# try, tmp207
	movzwl	(%rax), %eax	# try_73->code, D.16140
	cmpw	$34, %ax	#, D.16140
	jne	.L1039	#,
	.loc 1 3128 0
	movq	-216(%rbp), %rax	# try, tmp208
	movq	%rax, -264(%rbp)	# tmp208, new_insn
.L1039:
	.loc 1 3129 0
	cmpq	$0, -264(%rbp)	#, new_insn
	jne	.L1040	#,
	.loc 1 3130 0
	movl	$__FUNCTION__.12228, %edx	#,
	movl	$3130, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1040:
	.loc 1 3133 0
	movq	-208(%rbp), %rax	# old_insn, tmp209
	movq	64(%rax), %rdx	# old_insn_79->fld[7].rtx, D.16139
	movq	-264(%rbp), %rax	# new_insn, tmp210
	movq	%rdx, 64(%rax)	# D.16139, new_insn_37->fld[7].rtx
	.loc 1 3135 0
	movq	-208(%rbp), %rax	# old_insn, tmp211
	movq	56(%rax), %rax	# old_insn_79->fld[6].rtx, tmp212
	movq	%rax, -256(%rbp)	# tmp212, note
	jmp	.L1041	#
.L1044:
	.loc 1 3138 0
	movq	-256(%rbp), %rax	# note, tmp213
	movzbl	2(%rax), %eax	# note_38->mode, D.16144
	movzbl	%al, %eax	# D.16144, D.16145
	cmpl	$26, %eax	#, D.16145
	je	.L1043	#,
	cmpl	$26, %eax	#, D.16145
	jb	.L1079	#,
	subl	$28, %eax	#, tmp214
	cmpl	$1, %eax	#, tmp214
	ja	.L1079	#,
.L1043:
	.loc 1 3144 0
	movq	-264(%rbp), %rax	# new_insn, tmp215
	movq	56(%rax), %rcx	# new_insn_37->fld[6].rtx, D.16139
	movq	-256(%rbp), %rax	# note, tmp216
	movq	8(%rax), %rdx	# note_38->fld[0].rtx, D.16139
	movq	-256(%rbp), %rax	# note, tmp217
	movzbl	2(%rax), %eax	# note_38->mode, D.16144
	movzbl	%al, %eax	# D.16144, D.16146
	movl	%eax, %esi	# D.16146,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-264(%rbp), %rdx	# new_insn, tmp218
	movq	%rax, 56(%rdx)	# D.16139, new_insn_37->fld[6].rtx
.L1079:
	.loc 1 3149 0
	nop
	.loc 1 3137 0
	movq	-256(%rbp), %rax	# note, tmp219
	movq	16(%rax), %rax	# note_38->fld[1].rtx, tmp220
	movq	%rax, -256(%rbp)	# tmp220, note
.L1041:
	.loc 1 3135 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, note
	jne	.L1044	#,
	.loc 1 3153 0
	jmp	.L1045	#
.L1047:
	.loc 1 3155 0
	movl	peep2_current(%rip), %edx	# peep2_current, peep2_current.371
	movl	-308(%rbp), %eax	# i, tmp224
	addl	%edx, %eax	# peep2_current.371, tmp223
	movl	%eax, -300(%rbp)	# tmp223, j
	.loc 1 3156 0
	cmpl	$4, -300(%rbp)	#, j
	jle	.L1046	#,
	.loc 1 3157 0
	subl	$5, -300(%rbp)	#, j
.L1046:
	.loc 1 3158 0
	movl	-300(%rbp), %eax	# j, tmp226
	cltq
	salq	$4, %rax	#, tmp227
	addq	$peep2_insn_data, %rax	#, tmp228
	movq	(%rax), %rax	# peep2_insn_data[j_34].insn, tmp229
	movq	%rax, -208(%rbp)	# tmp229, old_insn
	.loc 1 3159 0
	movq	-208(%rbp), %rax	# old_insn, tmp230
	movzwl	(%rax), %eax	# old_insn_109->code, D.16140
	cmpw	$34, %ax	#, D.16140
	jne	.L1045	#,
	.loc 1 3160 0
	movl	$__FUNCTION__.12228, %edx	#,
	movl	$3160, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1045:
	.loc 1 3153 0 discriminator 1
	addl	$1, -308(%rbp)	#, i
	movl	-312(%rbp), %eax	# match_len, match_len.372
	cmpl	%eax, -308(%rbp)	# match_len.372, i
	jle	.L1047	#,
	.loc 1 3162 0
	jmp	.L1048	#
.L1031:
.LBE46:
	.loc 1 3104 0 discriminator 1
	movl	-312(%rbp), %eax	# match_len, match_len.373
	cmpl	%eax, -308(%rbp)	# match_len.373, i
	jle	.L1049	#,
.L1048:
	.loc 1 3165 0
	movl	-312(%rbp), %edx	# match_len, match_len.374
	movl	peep2_current(%rip), %eax	# peep2_current, peep2_current.375
	addl	%edx, %eax	# match_len.374, tmp231
	movl	%eax, -308(%rbp)	# tmp231, i
	.loc 1 3166 0
	cmpl	$4, -308(%rbp)	#, i
	jle	.L1050	#,
	.loc 1 3167 0
	subl	$5, -308(%rbp)	#, i
.L1050:
	.loc 1 3169 0
	movl	-308(%rbp), %eax	# i, tmp233
	cltq
	salq	$4, %rax	#, tmp234
	addq	$peep2_insn_data, %rax	#, tmp235
	movq	(%rax), %rax	# peep2_insn_data[i_6].insn, D.16139
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# D.16139,
	call	find_reg_note	#
	movq	%rax, -192(%rbp)	# tmp236, note
	.loc 1 3173 0
	movl	-308(%rbp), %eax	# i, tmp238
	cltq
	salq	$4, %rax	#, tmp239
	addq	$peep2_insn_data, %rax	#, tmp240
	movq	(%rax), %rdx	# peep2_insn_data[i_6].insn, D.16139
	movq	-216(%rbp), %rax	# try, tmp241
	movq	%rdx, %rsi	# D.16139,
	movq	%rax, %rdi	# tmp241,
	call	emit_insn_after	#
	movq	%rax, -216(%rbp)	# tmp242, try
	.loc 1 3174 0
	movq	-288(%rbp), %rax	# insn, tmp243
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp244
	movq	%rax, -184(%rbp)	# tmp244, before_try
	.loc 1 3175 0
	movl	-308(%rbp), %eax	# i, tmp246
	cltq
	salq	$4, %rax	#, tmp247
	addq	$peep2_insn_data, %rax	#, tmp248
	movq	(%rax), %rdx	# peep2_insn_data[i_6].insn, D.16139
	movq	-288(%rbp), %rax	# insn, tmp249
	movq	%rdx, %rsi	# D.16139,
	movq	%rax, %rdi	# tmp249,
	call	delete_insn_chain	#
	.loc 1 3178 0
	cmpq	$0, -192(%rbp)	#, note
	je	.L1051	#,
.LBB47:
	.loc 1 3182 0
	movq	-280(%rbp), %rax	# bb, tmp250
	movq	40(%rax), %rax	# bb_24->succ, tmp251
	movq	%rax, -248(%rbp)	# tmp251, eh_edge
	jmp	.L1052	#
.L1055:
	.loc 1 3184 0
	movq	-248(%rbp), %rax	# eh_edge, tmp252
	movl	48(%rax), %eax	# eh_edge_39->flags, D.16141
	andl	$8, %eax	#, D.16141
	testl	%eax, %eax	# D.16141
	je	.L1053	#,
	.loc 1 3185 0
	jmp	.L1054	#
.L1053:
	.loc 1 3183 0
	movq	-248(%rbp), %rax	# eh_edge, tmp253
	movq	8(%rax), %rax	# eh_edge_39->succ_next, tmp254
	movq	%rax, -248(%rbp)	# tmp254, eh_edge
.L1052:
	.loc 1 3182 0 discriminator 1
	cmpq	$0, -248(%rbp)	#, eh_edge
	jne	.L1055	#,
.L1054:
	.loc 1 3187 0
	movq	-216(%rbp), %rax	# try, tmp255
	movq	%rax, -272(%rbp)	# tmp255, x
	jmp	.L1056	#
.L1060:
	.loc 1 3188 0
	movq	-272(%rbp), %rax	# x, tmp256
	movzwl	(%rax), %eax	# x_30->code, D.16140
	cmpw	$34, %ax	#, D.16140
	je	.L1057	#,
	.loc 1 3189 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.376
	testl	%eax, %eax	# flag_non_call_exceptions.376
	je	.L1058	#,
	.loc 1 3190 0
	movq	-272(%rbp), %rax	# x, tmp257
	movq	32(%rax), %rax	# x_30->fld[3].rtx, D.16139
	movq	%rax, %rdi	# D.16139,
	call	may_trap_p	#
	testl	%eax, %eax	# D.16141
	je	.L1058	#,
	.loc 1 3191 0
	movq	-272(%rbp), %rax	# x, tmp258
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	find_reg_note	#
	testq	%rax, %rax	# D.16139
	jne	.L1058	#,
.L1057:
	.loc 1 3194 0
	movq	-272(%rbp), %rax	# x, tmp259
	movq	56(%rax), %rdx	# x_30->fld[6].rtx, D.16139
	movq	-192(%rbp), %rax	# note, tmp260
	movq	8(%rax), %rax	# note_116->fld[0].rtx, D.16139
	movq	%rdx, %rcx	# D.16139,
	movq	%rax, %rdx	# D.16139,
	movl	$23, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-272(%rbp), %rdx	# x, tmp261
	movq	%rax, 56(%rdx)	# D.16139, x_30->fld[6].rtx
	.loc 1 3198 0
	movq	-280(%rbp), %rax	# bb, tmp262
	movq	8(%rax), %rax	# bb_26->end, D.16139
	cmpq	-272(%rbp), %rax	# x, D.16139
	je	.L1058	#,
	.loc 1 3198 0 is_stmt 0 discriminator 1
	cmpq	$0, -248(%rbp)	#, eh_edge
	je	.L1058	#,
.LBB48:
	.loc 1 3203 0 is_stmt 1
	movq	-272(%rbp), %rdx	# x, tmp263
	movq	-280(%rbp), %rax	# bb, tmp264
	movq	%rdx, %rsi	# tmp263,
	movq	%rax, %rdi	# tmp264,
	call	split_block	#
	movq	%rax, -176(%rbp)	# tmp265, nfte
	.loc 1 3204 0
	movl	$10, -292(%rbp)	#, flags
	.loc 1 3205 0
	movq	-272(%rbp), %rax	# x, tmp266
	movzwl	(%rax), %eax	# x_30->code, D.16140
	cmpw	$34, %ax	#, D.16140
	jne	.L1059	#,
	.loc 1 3206 0
	orl	$4, -292(%rbp)	#, flags
.L1059:
	.loc 1 3207 0
	movq	-248(%rbp), %rax	# eh_edge, tmp267
	movq	24(%rax), %rcx	# eh_edge_41->dest, D.16147
	movq	-176(%rbp), %rax	# nfte, tmp268
	movq	16(%rax), %rax	# nfte_135->src, D.16147
	movl	-292(%rbp), %edx	# flags, tmp269
	movq	%rcx, %rsi	# D.16147,
	movq	%rax, %rdi	# D.16147,
	call	make_edge	#
	movq	%rax, -168(%rbp)	# tmp270, nehe
	.loc 1 3210 0
	movq	-248(%rbp), %rax	# eh_edge, tmp271
	movl	52(%rax), %edx	# eh_edge_41->probability, D.16141
	movq	-168(%rbp), %rax	# nehe, tmp272
	movl	%edx, 52(%rax)	# D.16141, nehe_141->probability
	.loc 1 3212 0
	movq	-168(%rbp), %rax	# nehe, tmp273
	movl	52(%rax), %eax	# nehe_141->probability, D.16141
	movl	$10000, %edx	#, tmp274
	subl	%eax, %edx	# D.16141, D.16141
	movq	-176(%rbp), %rax	# nfte, tmp275
	movl	%edx, 52(%rax)	# D.16141, nfte_135->probability
	.loc 1 3214 0
	movzbl	-314(%rbp), %ebx	# do_cleanup_cfg, D.16141
	movq	-176(%rbp), %rax	# nfte, tmp276
	movq	24(%rax), %rax	# nfte_135->dest, D.16147
	movq	%rax, %rdi	# D.16147,
	call	purge_dead_edges	#
	movzbl	%al, %eax	# D.16148, D.16141
	orl	%ebx, %eax	# D.16141, D.16141
	testl	%eax, %eax	# D.16141
	setne	%al	#, tmp277
	movb	%al, -314(%rbp)	# tmp277, do_cleanup_cfg
	.loc 1 3219 0
	movq	-176(%rbp), %rax	# nfte, tmp278
	movq	16(%rax), %rax	# nfte_135->src, tmp279
	movq	%rax, -280(%rbp)	# tmp279, bb
	.loc 1 3220 0
	movq	-168(%rbp), %rax	# nehe, tmp280
	movq	%rax, -248(%rbp)	# tmp280, eh_edge
.L1058:
.LBE48:
	.loc 1 3187 0
	movq	-272(%rbp), %rax	# x, tmp281
	movq	16(%rax), %rax	# x_30->fld[1].rtx, tmp282
	movq	%rax, -272(%rbp)	# tmp282, x
.L1056:
	.loc 1 3187 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# x, tmp283
	cmpq	-184(%rbp), %rax	# before_try, tmp283
	jne	.L1060	#,
	.loc 1 3226 0 is_stmt 1
	movzbl	-314(%rbp), %ebx	# do_cleanup_cfg, D.16141
	movq	-280(%rbp), %rax	# bb, tmp284
	movq	%rax, %rdi	# tmp284,
	call	purge_dead_edges	#
	movzbl	%al, %eax	# D.16148, D.16141
	orl	%ebx, %eax	# D.16141, D.16141
	testl	%eax, %eax	# D.16141
	setne	%al	#, tmp285
	movb	%al, -314(%rbp)	# tmp285, do_cleanup_cfg
.L1051:
.LBE47:
	.loc 1 3244 0
	addl	$1, -308(%rbp)	#, i
	cmpl	$4, -308(%rbp)	#, i
	jle	.L1061	#,
	.loc 1 3245 0
	movl	$0, -308(%rbp)	#, i
.L1061:
	.loc 1 3246 0
	movl	-308(%rbp), %eax	# i, tmp287
	cltq
	salq	$4, %rax	#, tmp288
	addq	$peep2_insn_data, %rax	#, tmp289
	movq	8(%rax), %rdx	# peep2_insn_data[i_7].live_before, D.16138
	movq	-240(%rbp), %rax	# live, tmp290
	movq	%rdx, %rsi	# D.16138,
	movq	%rax, %rdi	# tmp290,
	call	bitmap_copy	#
	.loc 1 3249 0
	movq	-216(%rbp), %rax	# try, tmp291
	movq	%rax, -272(%rbp)	# tmp291, x
.L1064:
	.loc 1 3252 0
	movq	-272(%rbp), %rax	# x, tmp292
	movzwl	(%rax), %eax	# x_31->code, D.16140
	movzwl	%ax, %eax	# D.16140, D.16141
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16142
	cmpb	$105, %al	#, D.16142
	jne	.L1062	#,
	.loc 1 3254 0
	subl	$1, -308(%rbp)	#, i
	cmpl	$0, -308(%rbp)	#, i
	jns	.L1063	#,
	.loc 1 3255 0
	movl	$4, -308(%rbp)	#, i
.L1063:
	.loc 1 3256 0
	movl	-308(%rbp), %eax	# i, tmp295
	cltq
	salq	$4, %rax	#, tmp296
	leaq	peep2_insn_data(%rax), %rdx	#, tmp297
	movq	-272(%rbp), %rax	# x, tmp298
	movq	%rax, (%rdx)	# tmp298, peep2_insn_data[i_9].insn
	.loc 1 3257 0
	movq	-272(%rbp), %rdx	# x, tmp299
	movq	-232(%rbp), %rax	# pbi, tmp300
	movq	%rdx, %rsi	# tmp299,
	movq	%rax, %rdi	# tmp300,
	call	propagate_one_insn	#
	.loc 1 3258 0
	movl	-308(%rbp), %eax	# i, tmp302
	cltq
	salq	$4, %rax	#, tmp303
	addq	$peep2_insn_data, %rax	#, tmp304
	movq	8(%rax), %rax	# peep2_insn_data[i_9].live_before, D.16138
	movq	-240(%rbp), %rdx	# live, tmp305
	movq	%rdx, %rsi	# tmp305,
	movq	%rax, %rdi	# D.16138,
	call	bitmap_copy	#
.L1062:
	.loc 1 3260 0
	movq	-272(%rbp), %rax	# x, tmp306
	movq	16(%rax), %rax	# x_31->fld[1].rtx, tmp307
	movq	%rax, -272(%rbp)	# tmp307, x
	.loc 1 3262 0
	movq	-272(%rbp), %rax	# x, tmp308
	cmpq	-224(%rbp), %rax	# prev, tmp308
	jne	.L1064	#,
	.loc 1 3267 0
	movl	-308(%rbp), %eax	# i, tmp309
	movl	%eax, peep2_current(%rip)	# tmp309, peep2_current
	.loc 1 3272 0
	movq	-216(%rbp), %rax	# try, tmp310
	movq	%rax, -272(%rbp)	# tmp310, x
	jmp	.L1065	#
.L1067:
	.loc 1 3273 0
	movq	-272(%rbp), %rax	# x, tmp311
	movzwl	(%rax), %eax	# x_32->code, D.16140
	cmpw	$33, %ax	#, D.16140
	jne	.L1066	#,
	.loc 1 3275 0
	movb	$1, -313(%rbp)	#, do_rebuild_jump_labels
	.loc 1 3276 0
	jmp	.L1028	#
.L1066:
	.loc 1 3272 0
	movq	-272(%rbp), %rax	# x, tmp312
	movq	16(%rax), %rax	# x_32->fld[1].rtx, tmp313
	movq	%rax, -272(%rbp)	# tmp313, x
.L1065:
	.loc 1 3272 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# x, tmp314
	cmpq	-184(%rbp), %rax	# before_try, tmp314
	jne	.L1067	#,
.L1028:
.LBE43:
	.loc 1 3281 0 is_stmt 1
	movq	-280(%rbp), %rax	# bb, tmp315
	movq	(%rax), %rax	# bb_29->head, D.16139
	cmpq	-288(%rbp), %rax	# insn, D.16139
	jne	.L1068	#,
	.loc 1 3282 0
	nop
	.loc 1 3285 0
	movq	-232(%rbp), %rax	# pbi, tmp317
	movq	%rax, %rdi	# tmp317,
	call	free_propagate_block_info	#
.LBE42:
	.loc 1 3058 0
	subl	$1, -304(%rbp)	#, b
	jmp	.L1025	#
.L1068:
.LBB49:
	.loc 1 3081 0
	movq	-224(%rbp), %rax	# prev, tmp316
	movq	%rax, -288(%rbp)	# tmp316, insn
	.loc 1 3283 0
	jmp	.L1070	#
.L1025:
.LBE49:
	.loc 1 3058 0 discriminator 1
	cmpl	$0, -304(%rbp)	#, b
	jns	.L1071	#,
	.loc 1 3288 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L1072	#
.L1074:
	.loc 1 3289 0
	movl	-308(%rbp), %eax	# i, tmp319
	cltq
	salq	$4, %rax	#, tmp320
	addq	$peep2_insn_data, %rax	#, tmp321
	movq	8(%rax), %rax	# peep2_insn_data[i_11].live_before, D.16138
	testq	%rax, %rax	# D.16138
	je	.L1073	#,
	.loc 1 3289 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# i, tmp323
	cltq
	salq	$4, %rax	#, tmp324
	addq	$peep2_insn_data, %rax	#, tmp325
	movq	8(%rax), %rax	# peep2_insn_data[i_11].live_before, D.16138
	movq	%rax, %rdi	# D.16138,
	call	bitmap_clear	#
	movl	-308(%rbp), %eax	# i, tmp327
	cltq
	salq	$4, %rax	#, tmp328
	addq	$peep2_insn_data, %rax	#, tmp329
	movq	$0, 8(%rax)	#, peep2_insn_data[i_11].live_before
.L1073:
	.loc 1 3288 0 is_stmt 1
	addl	$1, -308(%rbp)	#, i
.L1072:
	.loc 1 3288 0 is_stmt 0 discriminator 1
	cmpl	$4, -308(%rbp)	#, i
	jle	.L1074	#,
	.loc 1 3290 0 is_stmt 1
	cmpq	$0, -240(%rbp)	#, live
	je	.L1075	#,
	.loc 1 3290 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# live, tmp330
	movq	%rax, %rdi	# tmp330,
	call	bitmap_clear	#
	movq	$0, -240(%rbp)	#, live
.L1075:
	.loc 1 3292 0 is_stmt 1
	cmpb	$0, -313(%rbp)	#, do_rebuild_jump_labels
	je	.L1076	#,
	.loc 1 3293 0
	call	get_insns	#
	movq	%rax, %rdi	# D.16139,
	call	rebuild_jump_labels	#
.L1076:
	.loc 1 3298 0
	cmpb	$0, -314(%rbp)	#, do_cleanup_cfg
	je	.L1022	#,
	.loc 1 3300 0
	movl	$0, %edi	#,
	call	cleanup_cfg	#
	.loc 1 3301 0
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
.L1022:
	.loc 1 3311 0
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	peephole2_optimize, .-peephole2_optimize
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11536, @object
	.size	__FUNCTION__.11536, 16
__FUNCTION__.11536:
	.string	"validate_change"
	.type	__FUNCTION__.11811, @object
	.size	__FUNCTION__.11811, 15
__FUNCTION__.11811:
	.string	"asm_operand_ok"
	.align 16
	.type	__FUNCTION__.11905, @object
	.size	__FUNCTION__.11905, 30
__FUNCTION__.11905:
	.string	"extract_constrain_insn_cached"
	.type	__FUNCTION__.11926, @object
	.size	__FUNCTION__.11926, 13
__FUNCTION__.11926:
	.string	"extract_insn"
	.align 16
	.type	__FUNCTION__.12129, @object
	.size	__FUNCTION__.12129, 16
__FUNCTION__.12129:
	.string	"split_all_insns"
	.align 16
	.type	__FUNCTION__.12148, @object
	.size	__FUNCTION__.12148, 16
__FUNCTION__.12148:
	.string	"peep2_next_insn"
	.align 16
	.type	__FUNCTION__.12153, @object
	.size	__FUNCTION__.12153, 19
__FUNCTION__.12153:
	.string	"peep2_regno_dead_p"
	.align 16
	.type	__FUNCTION__.12160, @object
	.size	__FUNCTION__.12160, 17
__FUNCTION__.12160:
	.string	"peep2_reg_dead_p"
	.align 16
	.type	__FUNCTION__.12175, @object
	.size	__FUNCTION__.12175, 25
__FUNCTION__.12175:
	.string	"peep2_find_free_register"
	.local	search_ofs.12171
	.comm	search_ofs.12171,4,4
	.align 16
	.type	__FUNCTION__.12228, @object
	.size	__FUNCTION__.12228, 19
__FUNCTION__.12228:
	.string	"peephole2_optimize"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "i386.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "hard-reg-set.h"
	.file 15 "recog.h"
	.file 16 "expr.h"
	.file 17 "sbitmap.h"
	.file 18 "./safe-ctype.h"
	.file 19 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37c1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF692
	.byte	0x1
	.long	.LASF693
	.long	.LASF694
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
	.long	0x1f1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd50
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
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xd60
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
	.long	.LASF695
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF109
	.byte	0x4
	.byte	0x8
	.value	0x4b2
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF17
	.sleb128 0
	.uleb128 0xd
	.long	.LASF18
	.sleb128 1
	.uleb128 0xd
	.long	.LASF19
	.sleb128 2
	.uleb128 0xd
	.long	.LASF20
	.sleb128 3
	.uleb128 0xd
	.long	.LASF21
	.sleb128 4
	.uleb128 0xd
	.long	.LASF22
	.sleb128 5
	.uleb128 0xd
	.long	.LASF23
	.sleb128 6
	.uleb128 0xd
	.long	.LASF24
	.sleb128 7
	.uleb128 0xd
	.long	.LASF25
	.sleb128 8
	.uleb128 0xd
	.long	.LASF26
	.sleb128 9
	.uleb128 0xd
	.long	.LASF27
	.sleb128 10
	.uleb128 0xd
	.long	.LASF28
	.sleb128 11
	.uleb128 0xd
	.long	.LASF29
	.sleb128 12
	.uleb128 0xd
	.long	.LASF30
	.sleb128 13
	.uleb128 0xd
	.long	.LASF31
	.sleb128 14
	.uleb128 0xd
	.long	.LASF32
	.sleb128 15
	.uleb128 0xd
	.long	.LASF33
	.sleb128 16
	.uleb128 0xd
	.long	.LASF34
	.sleb128 17
	.uleb128 0xd
	.long	.LASF35
	.sleb128 18
	.uleb128 0xd
	.long	.LASF36
	.sleb128 19
	.uleb128 0xd
	.long	.LASF37
	.sleb128 20
	.uleb128 0xd
	.long	.LASF38
	.sleb128 21
	.uleb128 0xd
	.long	.LASF39
	.sleb128 22
	.uleb128 0xd
	.long	.LASF40
	.sleb128 23
	.uleb128 0xd
	.long	.LASF41
	.sleb128 24
	.uleb128 0xd
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x4
	.byte	0xd4
	.long	0x20c
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF47
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF48
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF49
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF50
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0x8c
	.long	0x1fa
	.uleb128 0x7
	.long	.LASF52
	.byte	0x5
	.byte	0x8d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x8
	.long	0x24b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0x30
	.long	0x25d
	.uleb128 0x4
	.long	.LASF55
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x3de
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0xfc
	.long	0x245
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0xfd
	.long	0x245
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0xfe
	.long	0x245
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xff
	.long	0x245
	.byte	0x20
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x100
	.long	0x245
	.byte	0x28
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.value	0x101
	.long	0x245
	.byte	0x30
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.value	0x102
	.long	0x245
	.byte	0x38
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.value	0x103
	.long	0x245
	.byte	0x40
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.value	0x105
	.long	0x245
	.byte	0x48
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.value	0x106
	.long	0x245
	.byte	0x50
	.uleb128 0xf
	.long	.LASF67
	.byte	0x7
	.value	0x107
	.long	0x245
	.byte	0x58
	.uleb128 0xf
	.long	.LASF68
	.byte	0x7
	.value	0x109
	.long	0x426
	.byte	0x60
	.uleb128 0xf
	.long	.LASF69
	.byte	0x7
	.value	0x10b
	.long	0x42c
	.byte	0x68
	.uleb128 0xf
	.long	.LASF70
	.byte	0x7
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF71
	.byte	0x7
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF72
	.byte	0x7
	.value	0x113
	.long	0x22f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF73
	.byte	0x7
	.value	0x117
	.long	0x21a
	.byte	0x80
	.uleb128 0xf
	.long	.LASF74
	.byte	0x7
	.value	0x118
	.long	0x221
	.byte	0x82
	.uleb128 0xf
	.long	.LASF75
	.byte	0x7
	.value	0x119
	.long	0x432
	.byte	0x83
	.uleb128 0xf
	.long	.LASF76
	.byte	0x7
	.value	0x11d
	.long	0x442
	.byte	0x88
	.uleb128 0xf
	.long	.LASF77
	.byte	0x7
	.value	0x126
	.long	0x23a
	.byte	0x90
	.uleb128 0xf
	.long	.LASF78
	.byte	0x7
	.value	0x12f
	.long	0x1f8
	.byte	0x98
	.uleb128 0xf
	.long	.LASF79
	.byte	0x7
	.value	0x130
	.long	0x1f8
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x7
	.value	0x131
	.long	0x1f8
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF81
	.byte	0x7
	.value	0x132
	.long	0x1f8
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF82
	.byte	0x7
	.value	0x133
	.long	0x201
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF83
	.byte	0x7
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x7
	.value	0x137
	.long	0x448
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x3ee
	.uleb128 0x11
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF696
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF85
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x426
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0xa2
	.long	0x426
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0xa3
	.long	0x42c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0x7
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3f5
	.uleb128 0x3
	.byte	0x8
	.long	0x25d
	.uleb128 0x10
	.long	0x24b
	.long	0x442
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3ee
	.uleb128 0x10
	.long	0x24b
	.long	0x458
	.uleb128 0x11
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45e
	.uleb128 0x13
	.long	0x24b
	.uleb128 0x14
	.byte	0x4
	.byte	0x12
	.byte	0x2c
	.long	0x4e4
	.uleb128 0xd
	.long	.LASF89
	.sleb128 1
	.uleb128 0xd
	.long	.LASF90
	.sleb128 2
	.uleb128 0xd
	.long	.LASF91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF92
	.sleb128 8
	.uleb128 0xd
	.long	.LASF93
	.sleb128 16
	.uleb128 0xd
	.long	.LASF94
	.sleb128 32
	.uleb128 0xd
	.long	.LASF95
	.sleb128 64
	.uleb128 0xd
	.long	.LASF96
	.sleb128 128
	.uleb128 0xd
	.long	.LASF97
	.sleb128 256
	.uleb128 0xd
	.long	.LASF98
	.sleb128 512
	.uleb128 0xd
	.long	.LASF99
	.sleb128 1024
	.uleb128 0xd
	.long	.LASF100
	.sleb128 2048
	.uleb128 0xd
	.long	.LASF101
	.sleb128 136
	.uleb128 0xd
	.long	.LASF102
	.sleb128 140
	.uleb128 0xd
	.long	.LASF103
	.sleb128 516
	.uleb128 0xd
	.long	.LASF104
	.sleb128 172
	.uleb128 0xd
	.long	.LASF105
	.sleb128 3072
	.uleb128 0xd
	.long	.LASF106
	.sleb128 3088
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF107
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF108
	.uleb128 0x3
	.byte	0x8
	.long	0x4f8
	.uleb128 0x15
	.uleb128 0x16
	.long	.LASF110
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x66e
	.uleb128 0xd
	.long	.LASF111
	.sleb128 0
	.uleb128 0xd
	.long	.LASF112
	.sleb128 1
	.uleb128 0xd
	.long	.LASF113
	.sleb128 2
	.uleb128 0xd
	.long	.LASF114
	.sleb128 3
	.uleb128 0xd
	.long	.LASF115
	.sleb128 4
	.uleb128 0xd
	.long	.LASF116
	.sleb128 5
	.uleb128 0xd
	.long	.LASF117
	.sleb128 6
	.uleb128 0xd
	.long	.LASF118
	.sleb128 7
	.uleb128 0xd
	.long	.LASF119
	.sleb128 8
	.uleb128 0xd
	.long	.LASF120
	.sleb128 9
	.uleb128 0xd
	.long	.LASF121
	.sleb128 10
	.uleb128 0xd
	.long	.LASF122
	.sleb128 11
	.uleb128 0xd
	.long	.LASF123
	.sleb128 12
	.uleb128 0xd
	.long	.LASF124
	.sleb128 13
	.uleb128 0xd
	.long	.LASF125
	.sleb128 14
	.uleb128 0xd
	.long	.LASF126
	.sleb128 15
	.uleb128 0xd
	.long	.LASF127
	.sleb128 16
	.uleb128 0xd
	.long	.LASF128
	.sleb128 17
	.uleb128 0xd
	.long	.LASF129
	.sleb128 18
	.uleb128 0xd
	.long	.LASF130
	.sleb128 19
	.uleb128 0xd
	.long	.LASF131
	.sleb128 20
	.uleb128 0xd
	.long	.LASF132
	.sleb128 21
	.uleb128 0xd
	.long	.LASF133
	.sleb128 22
	.uleb128 0xd
	.long	.LASF134
	.sleb128 23
	.uleb128 0xd
	.long	.LASF135
	.sleb128 24
	.uleb128 0xd
	.long	.LASF136
	.sleb128 25
	.uleb128 0xd
	.long	.LASF137
	.sleb128 26
	.uleb128 0xd
	.long	.LASF138
	.sleb128 27
	.uleb128 0xd
	.long	.LASF139
	.sleb128 28
	.uleb128 0xd
	.long	.LASF140
	.sleb128 29
	.uleb128 0xd
	.long	.LASF141
	.sleb128 30
	.uleb128 0xd
	.long	.LASF142
	.sleb128 31
	.uleb128 0xd
	.long	.LASF143
	.sleb128 32
	.uleb128 0xd
	.long	.LASF144
	.sleb128 33
	.uleb128 0xd
	.long	.LASF145
	.sleb128 34
	.uleb128 0xd
	.long	.LASF146
	.sleb128 35
	.uleb128 0xd
	.long	.LASF147
	.sleb128 36
	.uleb128 0xd
	.long	.LASF148
	.sleb128 37
	.uleb128 0xd
	.long	.LASF149
	.sleb128 38
	.uleb128 0xd
	.long	.LASF150
	.sleb128 39
	.uleb128 0xd
	.long	.LASF151
	.sleb128 40
	.uleb128 0xd
	.long	.LASF152
	.sleb128 41
	.uleb128 0xd
	.long	.LASF153
	.sleb128 42
	.uleb128 0xd
	.long	.LASF154
	.sleb128 43
	.uleb128 0xd
	.long	.LASF155
	.sleb128 44
	.uleb128 0xd
	.long	.LASF156
	.sleb128 45
	.uleb128 0xd
	.long	.LASF157
	.sleb128 46
	.uleb128 0xd
	.long	.LASF158
	.sleb128 47
	.uleb128 0xd
	.long	.LASF159
	.sleb128 48
	.uleb128 0xd
	.long	.LASF160
	.sleb128 49
	.uleb128 0xd
	.long	.LASF161
	.sleb128 50
	.uleb128 0xd
	.long	.LASF162
	.sleb128 51
	.uleb128 0xd
	.long	.LASF163
	.sleb128 52
	.uleb128 0xd
	.long	.LASF164
	.sleb128 53
	.uleb128 0xd
	.long	.LASF165
	.sleb128 54
	.uleb128 0xd
	.long	.LASF166
	.sleb128 55
	.uleb128 0xd
	.long	.LASF167
	.sleb128 56
	.uleb128 0xd
	.long	.LASF168
	.sleb128 57
	.uleb128 0xd
	.long	.LASF169
	.sleb128 58
	.uleb128 0xd
	.long	.LASF170
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF171
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6b7
	.uleb128 0xd
	.long	.LASF172
	.sleb128 0
	.uleb128 0xd
	.long	.LASF173
	.sleb128 1
	.uleb128 0xd
	.long	.LASF174
	.sleb128 2
	.uleb128 0xd
	.long	.LASF175
	.sleb128 3
	.uleb128 0xd
	.long	.LASF176
	.sleb128 4
	.uleb128 0xd
	.long	.LASF177
	.sleb128 5
	.uleb128 0xd
	.long	.LASF178
	.sleb128 6
	.uleb128 0xd
	.long	.LASF179
	.sleb128 7
	.uleb128 0xd
	.long	.LASF180
	.sleb128 8
	.uleb128 0xd
	.long	.LASF181
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF182
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xab3
	.uleb128 0xd
	.long	.LASF183
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF184
	.sleb128 2
	.uleb128 0xd
	.long	.LASF185
	.sleb128 3
	.uleb128 0xd
	.long	.LASF186
	.sleb128 4
	.uleb128 0xd
	.long	.LASF187
	.sleb128 5
	.uleb128 0xd
	.long	.LASF188
	.sleb128 6
	.uleb128 0xd
	.long	.LASF189
	.sleb128 7
	.uleb128 0xd
	.long	.LASF190
	.sleb128 8
	.uleb128 0xd
	.long	.LASF191
	.sleb128 9
	.uleb128 0xd
	.long	.LASF192
	.sleb128 10
	.uleb128 0xd
	.long	.LASF193
	.sleb128 11
	.uleb128 0xd
	.long	.LASF194
	.sleb128 12
	.uleb128 0xd
	.long	.LASF195
	.sleb128 13
	.uleb128 0xd
	.long	.LASF196
	.sleb128 14
	.uleb128 0xd
	.long	.LASF197
	.sleb128 15
	.uleb128 0xd
	.long	.LASF198
	.sleb128 16
	.uleb128 0xd
	.long	.LASF199
	.sleb128 17
	.uleb128 0xd
	.long	.LASF200
	.sleb128 18
	.uleb128 0xd
	.long	.LASF201
	.sleb128 19
	.uleb128 0xd
	.long	.LASF202
	.sleb128 20
	.uleb128 0xd
	.long	.LASF203
	.sleb128 21
	.uleb128 0xd
	.long	.LASF204
	.sleb128 22
	.uleb128 0xd
	.long	.LASF205
	.sleb128 23
	.uleb128 0xd
	.long	.LASF206
	.sleb128 24
	.uleb128 0xd
	.long	.LASF207
	.sleb128 25
	.uleb128 0xd
	.long	.LASF208
	.sleb128 26
	.uleb128 0xd
	.long	.LASF209
	.sleb128 27
	.uleb128 0xd
	.long	.LASF210
	.sleb128 28
	.uleb128 0xd
	.long	.LASF211
	.sleb128 29
	.uleb128 0xd
	.long	.LASF212
	.sleb128 30
	.uleb128 0xd
	.long	.LASF213
	.sleb128 31
	.uleb128 0xd
	.long	.LASF214
	.sleb128 32
	.uleb128 0xd
	.long	.LASF215
	.sleb128 33
	.uleb128 0xd
	.long	.LASF216
	.sleb128 34
	.uleb128 0xd
	.long	.LASF217
	.sleb128 35
	.uleb128 0xd
	.long	.LASF218
	.sleb128 36
	.uleb128 0xd
	.long	.LASF219
	.sleb128 37
	.uleb128 0xd
	.long	.LASF220
	.sleb128 38
	.uleb128 0xd
	.long	.LASF221
	.sleb128 39
	.uleb128 0xd
	.long	.LASF222
	.sleb128 40
	.uleb128 0xd
	.long	.LASF223
	.sleb128 41
	.uleb128 0xd
	.long	.LASF224
	.sleb128 42
	.uleb128 0xd
	.long	.LASF225
	.sleb128 43
	.uleb128 0xd
	.long	.LASF226
	.sleb128 44
	.uleb128 0xd
	.long	.LASF227
	.sleb128 45
	.uleb128 0xd
	.long	.LASF228
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF229
	.sleb128 49
	.uleb128 0xd
	.long	.LASF230
	.sleb128 50
	.uleb128 0xd
	.long	.LASF231
	.sleb128 51
	.uleb128 0xd
	.long	.LASF232
	.sleb128 52
	.uleb128 0xd
	.long	.LASF233
	.sleb128 53
	.uleb128 0xd
	.long	.LASF234
	.sleb128 54
	.uleb128 0xd
	.long	.LASF235
	.sleb128 55
	.uleb128 0xd
	.long	.LASF236
	.sleb128 56
	.uleb128 0xd
	.long	.LASF237
	.sleb128 57
	.uleb128 0xd
	.long	.LASF238
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF239
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF240
	.sleb128 62
	.uleb128 0xd
	.long	.LASF241
	.sleb128 63
	.uleb128 0xd
	.long	.LASF242
	.sleb128 64
	.uleb128 0xd
	.long	.LASF243
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF244
	.sleb128 67
	.uleb128 0xd
	.long	.LASF245
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF246
	.sleb128 70
	.uleb128 0xd
	.long	.LASF247
	.sleb128 71
	.uleb128 0xd
	.long	.LASF248
	.sleb128 72
	.uleb128 0xd
	.long	.LASF249
	.sleb128 73
	.uleb128 0xd
	.long	.LASF250
	.sleb128 74
	.uleb128 0xd
	.long	.LASF251
	.sleb128 75
	.uleb128 0xd
	.long	.LASF252
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF253
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF254
	.sleb128 81
	.uleb128 0xd
	.long	.LASF255
	.sleb128 82
	.uleb128 0x17
	.string	"AND"
	.sleb128 83
	.uleb128 0x17
	.string	"IOR"
	.sleb128 84
	.uleb128 0x17
	.string	"XOR"
	.sleb128 85
	.uleb128 0x17
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF256
	.sleb128 87
	.uleb128 0xd
	.long	.LASF257
	.sleb128 88
	.uleb128 0xd
	.long	.LASF258
	.sleb128 89
	.uleb128 0xd
	.long	.LASF259
	.sleb128 90
	.uleb128 0xd
	.long	.LASF260
	.sleb128 91
	.uleb128 0xd
	.long	.LASF261
	.sleb128 92
	.uleb128 0xd
	.long	.LASF262
	.sleb128 93
	.uleb128 0xd
	.long	.LASF263
	.sleb128 94
	.uleb128 0xd
	.long	.LASF264
	.sleb128 95
	.uleb128 0xd
	.long	.LASF265
	.sleb128 96
	.uleb128 0xd
	.long	.LASF266
	.sleb128 97
	.uleb128 0xd
	.long	.LASF267
	.sleb128 98
	.uleb128 0xd
	.long	.LASF268
	.sleb128 99
	.uleb128 0xd
	.long	.LASF269
	.sleb128 100
	.uleb128 0xd
	.long	.LASF270
	.sleb128 101
	.uleb128 0x17
	.string	"NE"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ"
	.sleb128 103
	.uleb128 0x17
	.string	"GE"
	.sleb128 104
	.uleb128 0x17
	.string	"GT"
	.sleb128 105
	.uleb128 0x17
	.string	"LE"
	.sleb128 106
	.uleb128 0x17
	.string	"LT"
	.sleb128 107
	.uleb128 0x17
	.string	"GEU"
	.sleb128 108
	.uleb128 0x17
	.string	"GTU"
	.sleb128 109
	.uleb128 0x17
	.string	"LEU"
	.sleb128 110
	.uleb128 0x17
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF271
	.sleb128 112
	.uleb128 0xd
	.long	.LASF272
	.sleb128 113
	.uleb128 0xd
	.long	.LASF273
	.sleb128 114
	.uleb128 0xd
	.long	.LASF274
	.sleb128 115
	.uleb128 0xd
	.long	.LASF275
	.sleb128 116
	.uleb128 0xd
	.long	.LASF276
	.sleb128 117
	.uleb128 0xd
	.long	.LASF277
	.sleb128 118
	.uleb128 0xd
	.long	.LASF278
	.sleb128 119
	.uleb128 0xd
	.long	.LASF279
	.sleb128 120
	.uleb128 0xd
	.long	.LASF280
	.sleb128 121
	.uleb128 0xd
	.long	.LASF281
	.sleb128 122
	.uleb128 0xd
	.long	.LASF282
	.sleb128 123
	.uleb128 0xd
	.long	.LASF283
	.sleb128 124
	.uleb128 0xd
	.long	.LASF284
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF285
	.sleb128 127
	.uleb128 0xd
	.long	.LASF286
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF287
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF288
	.sleb128 132
	.uleb128 0xd
	.long	.LASF289
	.sleb128 133
	.uleb128 0xd
	.long	.LASF290
	.sleb128 134
	.uleb128 0xd
	.long	.LASF291
	.sleb128 135
	.uleb128 0xd
	.long	.LASF292
	.sleb128 136
	.uleb128 0xd
	.long	.LASF293
	.sleb128 137
	.uleb128 0xd
	.long	.LASF294
	.sleb128 138
	.uleb128 0xd
	.long	.LASF295
	.sleb128 139
	.uleb128 0xd
	.long	.LASF296
	.sleb128 140
	.uleb128 0xd
	.long	.LASF297
	.sleb128 141
	.uleb128 0xd
	.long	.LASF298
	.sleb128 142
	.uleb128 0xd
	.long	.LASF299
	.sleb128 143
	.uleb128 0xd
	.long	.LASF300
	.sleb128 144
	.uleb128 0xd
	.long	.LASF301
	.sleb128 145
	.uleb128 0xd
	.long	.LASF302
	.sleb128 146
	.uleb128 0xd
	.long	.LASF303
	.sleb128 147
	.uleb128 0xd
	.long	.LASF304
	.sleb128 148
	.uleb128 0xd
	.long	.LASF305
	.sleb128 149
	.uleb128 0xd
	.long	.LASF306
	.sleb128 150
	.uleb128 0xd
	.long	.LASF307
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF308
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb34
	.uleb128 0x5
	.long	.LASF309
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF310
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF311
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF312
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF313
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF314
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF315
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF316
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF317
	.byte	0x2
	.byte	0x56
	.long	0xab3
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb84
	.uleb128 0x8
	.long	.LASF318
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF319
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF320
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF321
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF322
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF323
	.byte	0x2
	.byte	0x63
	.long	0xb3f
	.uleb128 0x19
	.long	.LASF423
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc2a
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x2
	.byte	0x6c
	.long	0x458
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1a
	.long	.LASF328
	.byte	0x2
	.byte	0x6f
	.long	0x4f9
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x2
	.byte	0x70
	.long	0xb34
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x2
	.byte	0x71
	.long	0xc2f
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x2
	.byte	0x72
	.long	0xc66
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd39
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x2
	.byte	0x75
	.long	0xd3f
	.byte	0
	.uleb128 0x1c
	.long	.LASF432
	.uleb128 0x3
	.byte	0x8
	.long	0xc2a
	.uleb128 0x4
	.long	.LASF334
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc66
	.uleb128 0x8
	.long	.LASF335
	.byte	0xa
	.byte	0x35
	.long	0x1600
	.byte	0
	.uleb128 0x8
	.long	.LASF336
	.byte	0xa
	.byte	0x36
	.long	0x1600
	.byte	0x8
	.uleb128 0x8
	.long	.LASF337
	.byte	0xa
	.byte	0x37
	.long	0x1f1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc35
	.uleb128 0x4
	.long	.LASF338
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd39
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xb7
	.long	0x170a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xb7
	.long	0x170a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF344
	.byte	0xb
	.byte	0xbc
	.long	0x1675
	.byte	0x30
	.uleb128 0x8
	.long	.LASF345
	.byte	0xb
	.byte	0xc0
	.long	0x1675
	.byte	0x38
	.uleb128 0x8
	.long	.LASF346
	.byte	0xb
	.byte	0xc6
	.long	0x1675
	.byte	0x40
	.uleb128 0x8
	.long	.LASF347
	.byte	0xb
	.byte	0xc8
	.long	0x1675
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x1f8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF348
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF349
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF350
	.byte	0xb
	.byte	0xd4
	.long	0x1680
	.byte	0x60
	.uleb128 0x8
	.long	.LASF351
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF352
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc6c
	.uleb128 0x3
	.byte	0x8
	.long	0xb84
	.uleb128 0x7
	.long	.LASF353
	.byte	0x2
	.byte	0x76
	.long	0xb8f
	.uleb128 0x10
	.long	0xd45
	.long	0xd60
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0xd70
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF354
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe32
	.uleb128 0xd
	.long	.LASF355
	.sleb128 1
	.uleb128 0xd
	.long	.LASF356
	.sleb128 2
	.uleb128 0xd
	.long	.LASF357
	.sleb128 3
	.uleb128 0xd
	.long	.LASF358
	.sleb128 4
	.uleb128 0xd
	.long	.LASF359
	.sleb128 5
	.uleb128 0xd
	.long	.LASF360
	.sleb128 6
	.uleb128 0xd
	.long	.LASF361
	.sleb128 7
	.uleb128 0xd
	.long	.LASF362
	.sleb128 8
	.uleb128 0xd
	.long	.LASF363
	.sleb128 9
	.uleb128 0xd
	.long	.LASF364
	.sleb128 10
	.uleb128 0xd
	.long	.LASF365
	.sleb128 11
	.uleb128 0xd
	.long	.LASF366
	.sleb128 12
	.uleb128 0xd
	.long	.LASF367
	.sleb128 13
	.uleb128 0xd
	.long	.LASF368
	.sleb128 14
	.uleb128 0xd
	.long	.LASF369
	.sleb128 15
	.uleb128 0xd
	.long	.LASF370
	.sleb128 16
	.uleb128 0xd
	.long	.LASF371
	.sleb128 17
	.uleb128 0xd
	.long	.LASF372
	.sleb128 18
	.uleb128 0xd
	.long	.LASF373
	.sleb128 19
	.uleb128 0xd
	.long	.LASF374
	.sleb128 20
	.uleb128 0xd
	.long	.LASF375
	.sleb128 21
	.uleb128 0xd
	.long	.LASF376
	.sleb128 22
	.uleb128 0xd
	.long	.LASF377
	.sleb128 23
	.uleb128 0xd
	.long	.LASF378
	.sleb128 24
	.uleb128 0xd
	.long	.LASF379
	.sleb128 25
	.uleb128 0xd
	.long	.LASF380
	.sleb128 26
	.uleb128 0xd
	.long	.LASF381
	.sleb128 27
	.uleb128 0xd
	.long	.LASF382
	.sleb128 28
	.uleb128 0xd
	.long	.LASF383
	.sleb128 29
	.uleb128 0xd
	.long	.LASF384
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF385
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xee1
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF391
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF392
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF393
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF394
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF395
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF396
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF397
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF398
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF399
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF400
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF401
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF402
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF403
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF404
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF405
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF406
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF407
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF408
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF409
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf3d
	.uleb128 0xd
	.long	.LASF410
	.sleb128 0
	.uleb128 0xd
	.long	.LASF411
	.sleb128 1
	.uleb128 0xd
	.long	.LASF412
	.sleb128 2
	.uleb128 0xd
	.long	.LASF413
	.sleb128 3
	.uleb128 0xd
	.long	.LASF414
	.sleb128 4
	.uleb128 0xd
	.long	.LASF415
	.sleb128 5
	.uleb128 0xd
	.long	.LASF416
	.sleb128 6
	.uleb128 0xd
	.long	.LASF417
	.sleb128 7
	.uleb128 0xd
	.long	.LASF418
	.sleb128 8
	.uleb128 0xd
	.long	.LASF419
	.sleb128 9
	.uleb128 0xd
	.long	.LASF420
	.sleb128 10
	.uleb128 0xd
	.long	.LASF421
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF422
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xf62
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF424
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0x1047
	.uleb128 0x1b
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x432
	.uleb128 0x1b
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0x1047
	.uleb128 0x1b
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0x1057
	.uleb128 0x1b
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0x1067
	.uleb128 0x1b
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0x1077
	.uleb128 0x1b
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x1087
	.uleb128 0x1b
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x1097
	.uleb128 0x1b
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x10a7
	.uleb128 0x1a
	.long	.LASF425
	.byte	0xc
	.byte	0x43
	.long	0x1097
	.uleb128 0x1a
	.long	.LASF426
	.byte	0xc
	.byte	0x44
	.long	0x10a7
	.uleb128 0x1a
	.long	.LASF427
	.byte	0xc
	.byte	0x45
	.long	0x10b7
	.uleb128 0x1a
	.long	.LASF428
	.byte	0xc
	.byte	0x46
	.long	0x10c7
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x10d7
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x10e7
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x10f7
	.uleb128 0x1a
	.long	.LASF429
	.byte	0xc
	.byte	0x4a
	.long	0x1107
	.uleb128 0x1a
	.long	.LASF430
	.byte	0xc
	.byte	0x4b
	.long	0x1117
	.uleb128 0x1b
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x1132
	.uleb128 0x1a
	.long	.LASF431
	.byte	0xc
	.byte	0x4d
	.long	0x11d9
	.uleb128 0x1b
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x11e9
	.uleb128 0x1b
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x11f9
	.byte	0
	.uleb128 0x10
	.long	0x213
	.long	0x1057
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x228
	.long	0x1067
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x21a
	.long	0x1077
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x139
	.long	0x1087
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1f1
	.long	0x1097
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1fa
	.long	0x10a7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x20c
	.long	0x10b7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1f8
	.long	0x10c7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x245
	.long	0x10d7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x38
	.long	0x10e7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xf8
	.long	0x10f7
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x12e
	.long	0x1107
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xc66
	.long	0x1117
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1127
	.long	0x1127
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x112d
	.uleb128 0x1c
	.long	.LASF433
	.uleb128 0x10
	.long	0x1142
	.long	0x1142
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1148
	.uleb128 0x4
	.long	.LASF434
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x11d9
	.uleb128 0x8
	.long	.LASF435
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF436
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF437
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF438
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF439
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF440
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF441
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF442
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF443
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF444
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF445
	.byte	0xd
	.byte	0x3d
	.long	0x24b
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	0xf3d
	.long	0x11e9
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xd39
	.long	0x11f9
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1209
	.long	0x1209
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x120f
	.uleb128 0x1c
	.long	.LASF446
	.uleb128 0x7
	.long	.LASF447
	.byte	0xc
	.byte	0x50
	.long	0xf62
	.uleb128 0x4
	.long	.LASF448
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x1268
	.uleb128 0x8
	.long	.LASF449
	.byte	0xc
	.byte	0x54
	.long	0x201
	.byte	0
	.uleb128 0x8
	.long	.LASF450
	.byte	0xc
	.byte	0x55
	.long	0x201
	.byte	0x8
	.uleb128 0x8
	.long	.LASF451
	.byte	0xc
	.byte	0x57
	.long	0x201
	.byte	0x10
	.uleb128 0x8
	.long	.LASF452
	.byte	0xc
	.byte	0x58
	.long	0x458
	.byte	0x18
	.uleb128 0x8
	.long	.LASF453
	.byte	0xc
	.byte	0x59
	.long	0x1214
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF454
	.byte	0xc
	.byte	0x5a
	.long	0x1273
	.uleb128 0x3
	.byte	0x8
	.long	0x121f
	.uleb128 0x13
	.long	0x458
	.uleb128 0x7
	.long	.LASF455
	.byte	0xe
	.byte	0x29
	.long	0x20c
	.uleb128 0x16
	.long	.LASF456
	.byte	0x4
	.byte	0xf
	.byte	0x1c
	.long	0x12a8
	.uleb128 0xd
	.long	.LASF457
	.sleb128 0
	.uleb128 0xd
	.long	.LASF458
	.sleb128 1
	.uleb128 0xd
	.long	.LASF459
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF460
	.byte	0x20
	.byte	0xf
	.byte	0x22
	.long	0x1369
	.uleb128 0x8
	.long	.LASF461
	.byte	0xf
	.byte	0x26
	.long	0x458
	.byte	0
	.uleb128 0x8
	.long	.LASF462
	.byte	0xf
	.byte	0x29
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF463
	.byte	0xf
	.byte	0x2d
	.long	0x1f1
	.byte	0xc
	.uleb128 0x8
	.long	.LASF464
	.byte	0xf
	.byte	0x30
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF465
	.byte	0xf
	.byte	0x34
	.long	0x139
	.byte	0x14
	.uleb128 0x5
	.long	.LASF466
	.byte	0xf
	.byte	0x37
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x5
	.long	.LASF467
	.byte	0xf
	.byte	0x39
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x5
	.long	.LASF468
	.byte	0xf
	.byte	0x3b
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x18
	.uleb128 0x5
	.long	.LASF469
	.byte	0xf
	.byte	0x3d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.uleb128 0x5
	.long	.LASF470
	.byte	0xf
	.byte	0x3f
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x18
	.uleb128 0x5
	.long	.LASF471
	.byte	0xf
	.byte	0x41
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.uleb128 0x5
	.long	.LASF472
	.byte	0xf
	.byte	0x43
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.uleb128 0x5
	.long	.LASF473
	.byte	0xf
	.byte	0x46
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF474
	.value	0x3f0
	.byte	0xf
	.byte	0x95
	.long	0x1404
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0x9e
	.long	0x1404
	.byte	0
	.uleb128 0x8
	.long	.LASF476
	.byte	0xf
	.byte	0xa1
	.long	0x1414
	.byte	0xf0
	.uleb128 0x1e
	.long	.LASF477
	.byte	0xf
	.byte	0xa4
	.long	0x1424
	.value	0x1e0
	.uleb128 0x1e
	.long	.LASF478
	.byte	0xf
	.byte	0xa7
	.long	0x1434
	.value	0x2d0
	.uleb128 0x1e
	.long	.LASF479
	.byte	0xf
	.byte	0xaa
	.long	0x1444
	.value	0x348
	.uleb128 0x1e
	.long	.LASF480
	.byte	0xf
	.byte	0xae
	.long	0x1454
	.value	0x3c0
	.uleb128 0x1e
	.long	.LASF481
	.byte	0xf
	.byte	0xb2
	.long	0x3de
	.value	0x3e0
	.uleb128 0x1e
	.long	.LASF482
	.byte	0xf
	.byte	0xbf
	.long	0x24b
	.value	0x3e4
	.uleb128 0x1e
	.long	.LASF483
	.byte	0xf
	.byte	0xc2
	.long	0x24b
	.value	0x3e5
	.uleb128 0x1e
	.long	.LASF484
	.byte	0xf
	.byte	0xc5
	.long	0x24b
	.value	0x3e6
	.uleb128 0x1e
	.long	.LASF485
	.byte	0xf
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0x1414
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0xee1
	.long	0x1424
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x458
	.long	0x1434
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x4f9
	.long	0x1444
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x1289
	.long	0x1454
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0xee1
	.long	0x1464
	.uleb128 0x11
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF486
	.byte	0xf
	.byte	0xd4
	.long	0x146f
	.uleb128 0x3
	.byte	0x8
	.long	0x1475
	.uleb128 0x1f
	.long	0x139
	.long	0x1489
	.uleb128 0x20
	.long	0x2d
	.uleb128 0x20
	.long	0x4f9
	.byte	0
	.uleb128 0x7
	.long	.LASF487
	.byte	0xf
	.byte	0xd6
	.long	0x1494
	.uleb128 0x3
	.byte	0x8
	.long	0x149a
	.uleb128 0x1f
	.long	0x2d
	.long	0x14aa
	.uleb128 0x20
	.long	0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	.LASF488
	.byte	0x18
	.byte	0xf
	.byte	0xd8
	.long	0x14f6
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0xda
	.long	0x14f6
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xf
	.byte	0xdc
	.long	0x1279
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1
	.byte	0xf
	.byte	0xde
	.long	0x14fb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.uleb128 0x8
	.long	.LASF490
	.byte	0xf
	.byte	0xe0
	.long	0x45e
	.byte	0x12
	.uleb128 0x8
	.long	.LASF491
	.byte	0xf
	.byte	0xe2
	.long	0x45e
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.long	0x1464
	.uleb128 0x13
	.long	0x1f1
	.uleb128 0x4
	.long	.LASF492
	.byte	0x28
	.byte	0xf
	.byte	0xec
	.long	0x156d
	.uleb128 0x8
	.long	.LASF452
	.byte	0xf
	.byte	0xee
	.long	0x1279
	.byte	0
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0xef
	.long	0x4f2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0xf0
	.long	0x156d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0xf1
	.long	0x1572
	.byte	0x18
	.uleb128 0x8
	.long	.LASF482
	.byte	0xf
	.byte	0xf3
	.long	0x45e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0xf4
	.long	0x45e
	.byte	0x21
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0xf5
	.long	0x45e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0xf6
	.long	0x45e
	.byte	0x23
	.byte	0
	.uleb128 0x13
	.long	0x1489
	.uleb128 0x13
	.long	0x1577
	.uleb128 0x3
	.byte	0x8
	.long	0x157d
	.uleb128 0x13
	.long	0x14aa
	.uleb128 0xc
	.long	.LASF496
	.byte	0x4
	.byte	0x10
	.value	0x2ed
	.long	0x15a2
	.uleb128 0xd
	.long	.LASF497
	.sleb128 0
	.uleb128 0xd
	.long	.LASF498
	.sleb128 1
	.uleb128 0xd
	.long	.LASF499
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF500
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x15df
	.uleb128 0x8
	.long	.LASF501
	.byte	0xa
	.byte	0x2d
	.long	0x15df
	.byte	0
	.uleb128 0x8
	.long	.LASF502
	.byte	0xa
	.byte	0x2e
	.long	0x15df
	.byte	0x8
	.uleb128 0x8
	.long	.LASF337
	.byte	0xa
	.byte	0x2f
	.long	0x1f1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF503
	.byte	0xa
	.byte	0x30
	.long	0x15e5
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x15a2
	.uleb128 0x10
	.long	0x20c
	.long	0x15f5
	.uleb128 0x11
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF504
	.byte	0xa
	.byte	0x31
	.long	0x15a2
	.uleb128 0x3
	.byte	0x8
	.long	0x15f5
	.uleb128 0x7
	.long	.LASF505
	.byte	0xa
	.byte	0x39
	.long	0xc35
	.uleb128 0x7
	.long	.LASF429
	.byte	0xa
	.byte	0x39
	.long	0xc66
	.uleb128 0x4
	.long	.LASF506
	.byte	0x18
	.byte	0x11
	.byte	0x1f
	.long	0x1659
	.uleb128 0x8
	.long	.LASF507
	.byte	0x11
	.byte	0x21
	.long	0x1f1
	.byte	0
	.uleb128 0x8
	.long	.LASF321
	.byte	0x11
	.byte	0x22
	.long	0x1f1
	.byte	0x4
	.uleb128 0x8
	.long	.LASF508
	.byte	0x11
	.byte	0x23
	.long	0x1f1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF509
	.byte	0x11
	.byte	0x24
	.long	0x10a7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF510
	.byte	0x11
	.byte	0x25
	.long	0x1664
	.uleb128 0x3
	.byte	0x8
	.long	0x161c
	.uleb128 0x7
	.long	.LASF511
	.byte	0xb
	.byte	0x1f
	.long	0x1606
	.uleb128 0x7
	.long	.LASF512
	.byte	0xb
	.byte	0x21
	.long	0x1611
	.uleb128 0x7
	.long	.LASF513
	.byte	0xb
	.byte	0x74
	.long	0x1fa
	.uleb128 0x4
	.long	.LASF514
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1704
	.uleb128 0x8
	.long	.LASF515
	.byte	0xb
	.byte	0x79
	.long	0x1704
	.byte	0
	.uleb128 0x8
	.long	.LASF516
	.byte	0xb
	.byte	0x79
	.long	0x1704
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd39
	.byte	0x10
	.uleb128 0x8
	.long	.LASF517
	.byte	0xb
	.byte	0x7c
	.long	0xd39
	.byte	0x18
	.uleb128 0x8
	.long	.LASF518
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x1f8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF352
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF519
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF350
	.byte	0xb
	.byte	0x86
	.long	0x1680
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x168b
	.uleb128 0x7
	.long	.LASF520
	.byte	0xb
	.byte	0x88
	.long	0x1704
	.uleb128 0x7
	.long	.LASF444
	.byte	0xb
	.byte	0xdb
	.long	0xd39
	.uleb128 0xc
	.long	.LASF521
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x1740
	.uleb128 0xd
	.long	.LASF522
	.sleb128 0
	.uleb128 0xd
	.long	.LASF523
	.sleb128 1
	.uleb128 0xd
	.long	.LASF524
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF525
	.byte	0x20
	.byte	0x1
	.byte	0xac
	.long	0x177d
	.uleb128 0x8
	.long	.LASF526
	.byte	0x1
	.byte	0xae
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF527
	.byte	0x1
	.byte	0xaf
	.long	0x139
	.byte	0x8
	.uleb128 0x6
	.string	"loc"
	.byte	0x1
	.byte	0xb0
	.long	0xee1
	.byte	0x10
	.uleb128 0x6
	.string	"old"
	.byte	0x1
	.byte	0xb1
	.long	0x2d
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF525
	.byte	0x1
	.byte	0xb2
	.long	0x1740
	.uleb128 0x22
	.long	.LASF528
	.byte	0x18
	.byte	0x1
	.value	0x287
	.long	0x17bc
	.uleb128 0xf
	.long	.LASF529
	.byte	0x1
	.value	0x289
	.long	0x2d
	.byte	0
	.uleb128 0x23
	.string	"to"
	.byte	0x1
	.value	0x28a
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF485
	.byte	0x1
	.value	0x28b
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.long	.LASF530
	.byte	0x8
	.byte	0x1
	.value	0x906
	.long	0x17e4
	.uleb128 0xf
	.long	.LASF531
	.byte	0x1
	.value	0x908
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF532
	.byte	0x1
	.value	0x908
	.long	0x139
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.long	.LASF533
	.byte	0x10
	.byte	0x1
	.value	0xb13
	.long	0x180c
	.uleb128 0xf
	.long	.LASF485
	.byte	0x1
	.value	0xb15
	.long	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LASF534
	.byte	0x1
	.value	0xb16
	.long	0x1675
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	.LASF535
	.byte	0x1
	.byte	0x5e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF536
	.byte	0x1
	.byte	0x64
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF537
	.byte	0x1
	.byte	0x73
	.long	0x139
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x186e
	.uleb128 0x26
	.long	.LASF485
	.byte	0x1
	.byte	0x74
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF538
	.byte	0x1
	.byte	0x7f
	.long	0x139
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f1
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x80
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.byte	0x82
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF540
	.byte	0x1
	.byte	0x83
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF477
	.byte	0x1
	.byte	0x84
	.long	0x18f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.byte	0x9d
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x458
	.uleb128 0x25
	.long	.LASF541
	.byte	0x1
	.byte	0xcc
	.long	0x139
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1972
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.byte	0xcd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"loc"
	.byte	0x1
	.byte	0xce
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"new"
	.byte	0x1
	.byte	0xcf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF542
	.byte	0x1
	.byte	0xd0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"old"
	.byte	0x1
	.byte	0xd2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF598
	.long	0x1982
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11536
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x1982
	.uleb128 0x11
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	0x1972
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x106
	.long	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a16
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x107
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x109
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF544
	.byte	0x1
	.value	0x10a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x1
	.value	0x10d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF546
	.byte	0x1
	.value	0x111
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF547
	.byte	0x1
	.value	0x11f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF548
	.byte	0x1
	.value	0x13b
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ad7
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x13d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF549
	.byte	0x1
	.value	0x13e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.long	.LASF526
	.byte	0x1
	.value	0x14b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x159
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.long	.LASF547
	.byte	0x1
	.value	0x164
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x16a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF697
	.byte	0x1
	.value	0x198
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF558
	.byte	0x1
	.value	0x1a0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b30
	.uleb128 0x32
	.string	"num"
	.byte	0x1
	.value	0x1a1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1a3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF560
	.byte	0x1
	.value	0x1b4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cc6
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0x1b5
	.long	0xee1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0x1b6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x1b6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF526
	.byte	0x1
	.value	0x1b6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1b8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x1b8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x1b9
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1ba
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1bb
	.long	0x6b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF550
	.byte	0x1
	.value	0x1bc
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF551
	.byte	0x1
	.value	0x1bd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x1be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF552
	.byte	0x1
	.value	0x235
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF553
	.byte	0x1
	.value	0x236
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0x237
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1c6d
	.uleb128 0x2f
	.long	.LASF554
	.byte	0x1
	.value	0x23b
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x34
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1c93
	.uleb128 0x2f
	.long	.LASF554
	.byte	0x1
	.value	0x242
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x1
	.value	0x24c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF555
	.byte	0x1
	.value	0x24d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF556
	.byte	0x1
	.value	0x26b
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d24
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0x26c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x26c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x26c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0x26c
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x1
	.value	0x276
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d73
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0x277
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x277
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x277
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF559
	.byte	0x1
	.value	0x280
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dbe
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0x281
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x281
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x281
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF561
	.byte	0x1
	.value	0x28f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e06
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x290
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF453
	.byte	0x1
	.value	0x291
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.value	0x293
	.long	0x1e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1788
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x29e
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e69
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0x29f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x29f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x29f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.value	0x2a1
	.long	0x1788
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.long	.LASF628
	.byte	0x1
	.value	0x2e2
	.long	0xee1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f24
	.uleb128 0x2d
	.long	.LASF517
	.byte	0x1
	.value	0x2e3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0x2e4
	.long	0xee1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x2e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x2e7
	.long	0x6b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF563
	.byte	0x1
	.value	0x2e8
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF564
	.byte	0x1
	.value	0x2e9
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x2ea
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x2eb
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x329
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF565
	.byte	0x1
	.value	0x353
	.long	0xee1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa2
	.uleb128 0x2d
	.long	.LASF517
	.byte	0x1
	.value	0x354
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x355
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF566
	.byte	0x1
	.value	0x356
	.long	0xee1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF501
	.byte	0x1
	.value	0x358
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF563
	.byte	0x1
	.value	0x359
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF567
	.byte	0x1
	.value	0x35a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF568
	.byte	0x1
	.value	0x395
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2045
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x396
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x397
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x399
	.long	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.string	"win"
	.byte	0x1
	.value	0x3f1
	.quad	.L178
	.uleb128 0x34
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x2025
	.uleb128 0x2e
	.string	"sub"
	.byte	0x1
	.value	0x3b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x3dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF569
	.byte	0x1
	.value	0x3fc
	.long	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2085
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x3fd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x3fe
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF570
	.byte	0x1
	.value	0x412
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x20e6
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x413
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x414
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.string	"sub"
	.byte	0x1
	.value	0x41b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF571
	.byte	0x1
	.value	0x44a
	.long	0x139
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2126
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x44b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x44c
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF572
	.byte	0x1
	.value	0x455
	.long	0x139
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2166
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x456
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x457
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF573
	.byte	0x1
	.value	0x467
	.long	0x139
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x21a6
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x468
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x469
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF574
	.byte	0x1
	.value	0x488
	.long	0x139
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x21e6
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x489
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x48a
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF575
	.byte	0x1
	.value	0x49a
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2226
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x49b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x49c
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF576
	.byte	0x1
	.value	0x4ad
	.long	0x139
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2266
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x4ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x4af
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF577
	.byte	0x1
	.value	0x4b7
	.long	0x139
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a6
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x4b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x4b9
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF578
	.byte	0x1
	.value	0x4ee
	.long	0x139
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f5
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x4ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x4f0
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF579
	.byte	0x1
	.value	0x4f2
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF580
	.byte	0x1
	.value	0x51e
	.long	0x139
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2335
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x51f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x520
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF581
	.byte	0x1
	.value	0x533
	.long	0x139
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2386
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x534
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF582
	.byte	0x1
	.value	0x535
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"win"
	.byte	0x1
	.value	0x53d
	.quad	.L263
	.byte	0
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x548
	.long	0x139
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x23d5
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x549
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x54a
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF584
	.byte	0x1
	.value	0x54c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF585
	.byte	0x1
	.value	0x561
	.long	0x139
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2445
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x562
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x563
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x1
	.value	0x569
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF584
	.byte	0x1
	.value	0x56a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF586
	.byte	0x1
	.value	0x584
	.long	0x139
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2485
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x585
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x586
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF587
	.byte	0x1
	.value	0x591
	.long	0x139
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2529
	.uleb128 0x2d
	.long	.LASF588
	.byte	0x1
	.value	0x592
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x2509
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5a5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF589
	.byte	0x1
	.value	0x5a6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2e
	.string	"elt"
	.byte	0x1
	.value	0x5b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5cb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF590
	.byte	0x1
	.value	0x5e6
	.long	0x458
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2697
	.uleb128 0x2d
	.long	.LASF588
	.byte	0x1
	.value	0x5e7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF540
	.byte	0x1
	.value	0x5e8
	.long	0xee1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF591
	.byte	0x1
	.value	0x5e9
	.long	0x2697
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF477
	.byte	0x1
	.value	0x5ea
	.long	0x18f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF592
	.byte	0x1
	.value	0x5eb
	.long	0x269d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5ed
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF539
	.byte	0x1
	.value	0x5ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF593
	.byte	0x1
	.value	0x5ef
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x25ed
	.uleb128 0x2f
	.long	.LASF594
	.byte	0x1
	.value	0x5f3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2612
	.uleb128 0x2f
	.long	.LASF594
	.byte	0x1
	.value	0x612
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2666
	.uleb128 0x2f
	.long	.LASF594
	.byte	0x1
	.value	0x62a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF595
	.byte	0x1
	.value	0x62b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.string	"nin"
	.byte	0x1
	.value	0x62c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF596
	.byte	0x1
	.value	0x62d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2f
	.long	.LASF594
	.byte	0x1
	.value	0x656
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"nin"
	.byte	0x1
	.value	0x657
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xee1
	.uleb128 0x3
	.byte	0x8
	.long	0x4f9
	.uleb128 0x2c
	.long	.LASF597
	.byte	0x1
	.value	0x66f
	.long	0x139
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2724
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x670
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF461
	.byte	0x1
	.value	0x671
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF563
	.byte	0x1
	.value	0x673
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF598
	.long	0x2734
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11811
	.uleb128 0x2a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x67b
	.long	0x24b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x2734
	.uleb128 0x11
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.long	0x2724
	.uleb128 0x2c
	.long	.LASF599
	.byte	0x1
	.value	0x739
	.long	0xee1
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2787
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x73a
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"tem"
	.byte	0x1
	.value	0x73c
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x73d
	.long	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF600
	.byte	0x1
	.value	0x76f
	.long	0x139
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b8
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x770
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF601
	.byte	0x1
	.value	0x77a
	.long	0x139
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e9
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x77b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF602
	.byte	0x1
	.value	0x78c
	.long	0x139
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b1
	.uleb128 0x2d
	.long	.LASF603
	.byte	0x1
	.value	0x78d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x78e
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.value	0x78f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF604
	.byte	0x1
	.value	0x791
	.long	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"z"
	.byte	0x1
	.value	0x792
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"y1"
	.byte	0x1
	.value	0x793
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"y2"
	.byte	0x1
	.value	0x794
	.long	0xee1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF605
	.byte	0x1
	.value	0x795
	.long	0x28c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF606
	.byte	0x1
	.value	0x797
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x7ae
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x139
	.long	0x28c5
	.uleb128 0x20
	.long	0x4f9
	.uleb128 0x20
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28b1
	.uleb128 0x38
	.long	.LASF608
	.byte	0x1
	.value	0x7d7
	.long	0x139
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x290d
	.uleb128 0x2d
	.long	.LASF582
	.byte	0x1
	.value	0x7d8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"win"
	.byte	0x1
	.value	0x7dd
	.quad	.L495
	.byte	0
	.uleb128 0x2c
	.long	.LASF609
	.byte	0x1
	.value	0x7e5
	.long	0x139
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x296c
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x7e7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x7e6
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF582
	.byte	0x1
	.value	0x7e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF610
	.byte	0x1
	.value	0x7f5
	.quad	.L501
	.byte	0
	.uleb128 0x35
	.long	.LASF611
	.byte	0x1
	.value	0x7fe
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x299a
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x7ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF612
	.byte	0x1
	.value	0x809
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x29db
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x80a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF598
	.long	0x29eb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11905
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x29eb
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x29db
	.uleb128 0x2c
	.long	.LASF613
	.byte	0x1
	.value	0x813
	.long	0x139
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a22
	.uleb128 0x2d
	.long	.LASF614
	.byte	0x1
	.value	0x814
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF615
	.byte	0x1
	.value	0x81f
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2adc
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x820
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x822
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF539
	.byte	0x1
	.value	0x824
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF588
	.byte	0x1
	.value	0x825
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF616
	.byte	0x1
	.value	0x843
	.quad	.L515
	.uleb128 0x39
	.long	.LASF617
	.byte	0x1
	.value	0x85e
	.quad	.L511
	.uleb128 0x2b
	.long	.LASF598
	.long	0x2aec
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11926
	.uleb128 0x2a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x854
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x2aec
	.uleb128 0x11
	.long	0x140
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	0x2adc
	.uleb128 0x35
	.long	.LASF618
	.byte	0x1
	.value	0x883
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b99
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x885
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x88a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF619
	.byte	0x1
	.value	0x88b
	.long	0x2b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x88c
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x89f
	.long	0x24b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x8be
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12a8
	.uleb128 0x2c
	.long	.LASF620
	.byte	0x1
	.value	0x90c
	.long	0x139
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d91
	.uleb128 0x2d
	.long	.LASF614
	.byte	0x1
	.value	0x90d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x2f
	.long	.LASF477
	.byte	0x1
	.value	0x90f
	.long	0x1424
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2f
	.long	.LASF621
	.byte	0x1
	.value	0x910
	.long	0x2d91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x2f
	.long	.LASF466
	.byte	0x1
	.value	0x911
	.long	0x2d91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x912
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x914
	.long	0x2da1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF622
	.byte	0x1
	.value	0x915
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x2a
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2f
	.long	.LASF623
	.byte	0x1
	.value	0x923
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x2f
	.long	.LASF610
	.byte	0x1
	.value	0x924
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x34
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x2d5d
	.uleb128 0x2e
	.string	"op"
	.byte	0x1
	.value	0x929
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x92a
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x92b
	.long	0x458
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x1
	.value	0x92c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x2e
	.string	"win"
	.byte	0x1
	.value	0x92d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0x92e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x34
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x2d3a
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x965
	.long	0x245
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x2f
	.long	.LASF624
	.byte	0x1
	.value	0x966
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x2a
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2e
	.string	"op1"
	.byte	0x1
	.value	0x96f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x2e
	.string	"op2"
	.byte	0x1
	.value	0x970
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.long	.LASF462
	.byte	0x1
	.value	0xa15
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2f
	.long	.LASF623
	.byte	0x1
	.value	0xa35
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -812
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0xa35
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x139
	.long	0x2da1
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x17bc
	.long	0x2db1
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x38
	.long	.LASF626
	.byte	0x1
	.value	0xa6d
	.long	0x139
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e3f
	.uleb128 0x2d
	.long	.LASF475
	.byte	0x1
	.value	0xa6e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF462
	.byte	0x1
	.value	0xa6f
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF320
	.byte	0x1
	.value	0xa70
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0xa71
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF627
	.byte	0x1
	.value	0xa73
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2e
	.string	"sr"
	.byte	0x1
	.value	0xa78
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF629
	.byte	0x1
	.value	0xa88
	.long	0x2d
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eb0
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0xa89
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0xa8b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2f
	.long	.LASF335
	.byte	0x1
	.value	0xaa3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF630
	.byte	0x1
	.value	0xaa4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF631
	.byte	0x1
	.value	0xac4
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f7c
	.uleb128 0x2d
	.long	.LASF632
	.byte	0x1
	.value	0xac5
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF633
	.byte	0x1
	.value	0xac7
	.long	0x1659
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF634
	.byte	0x1
	.value	0xac8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xac9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF598
	.long	0x2f7c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12129
	.uleb128 0x2a
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0xad1
	.long	0x1715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x1
	.value	0xad2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF501
	.byte	0x1
	.value	0xad2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2f
	.long	.LASF630
	.byte	0x1
	.value	0xad6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1972
	.uleb128 0x35
	.long	.LASF635
	.byte	0x1
	.value	0xb06
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fbe
	.uleb128 0x2f
	.long	.LASF501
	.byte	0x1
	.value	0xb08
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x1
	.value	0xb08
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF636
	.byte	0x1
	.value	0xb26
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3001
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0xb27
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF598
	.long	0x3001
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12148
	.byte	0
	.uleb128 0x13
	.long	0x1972
	.uleb128 0x2c
	.long	.LASF637
	.byte	0x1
	.value	0xb39
	.long	0x139
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x305a
	.uleb128 0x32
	.string	"ofs"
	.byte	0x1
	.value	0xb3a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF627
	.byte	0x1
	.value	0xb3b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF598
	.long	0x306a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12153
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x306a
	.uleb128 0x11
	.long	0x140
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.long	0x305a
	.uleb128 0x2c
	.long	.LASF638
	.byte	0x1
	.value	0xb4d
	.long	0x139
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x30df
	.uleb128 0x32
	.string	"ofs"
	.byte	0x1
	.value	0xb4e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0xb4f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF627
	.byte	0x1
	.value	0xb51
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.value	0xb51
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF598
	.long	0x30ef
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12160
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x30ef
	.uleb128 0x11
	.long	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.long	0x30df
	.uleb128 0x2c
	.long	.LASF639
	.byte	0x1
	.value	0xb71
	.long	0x2d
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x322d
	.uleb128 0x2d
	.long	.LASF529
	.byte	0x1
	.value	0xb72
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0xb72
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF640
	.byte	0x1
	.value	0xb73
	.long	0x458
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0xb74
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF641
	.byte	0x1
	.value	0xb75
	.long	0x322d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF642
	.byte	0x1
	.value	0xb77
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	search_ofs.12171
	.uleb128 0x2f
	.long	.LASF462
	.byte	0x1
	.value	0xb78
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF643
	.byte	0x1
	.value	0xb79
	.long	0x127e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xb7a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF598
	.long	0x3243
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12175
	.uleb128 0x34
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x31df
	.uleb128 0x2f
	.long	.LASF644
	.byte	0x1
	.value	0xb8c
	.long	0x127e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2f
	.long	.LASF645
	.byte	0x1
	.value	0xb9b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF627
	.byte	0x1
	.value	0xb9b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF646
	.byte	0x1
	.value	0xb9b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0xb9b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x127e
	.uleb128 0x10
	.long	0x24b
	.long	0x3243
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	0x3233
	.uleb128 0x35
	.long	.LASF647
	.byte	0x1
	.value	0xbd7
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x3465
	.uleb128 0x2d
	.long	.LASF648
	.byte	0x1
	.value	0xbd8
	.long	0x3465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF649
	.byte	0x1
	.value	0xbda
	.long	0x346b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x1
	.value	0xbdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF502
	.byte	0x1
	.value	0xbdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF643
	.byte	0x1
	.value	0xbdc
	.long	0x1675
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xbdd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0xbdd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF650
	.byte	0x1
	.value	0xbe2
	.long	0x347b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -330
	.uleb128 0x2f
	.long	.LASF651
	.byte	0x1
	.value	0xbe3
	.long	0x347b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -329
	.uleb128 0x2b
	.long	.LASF598
	.long	0x3482
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12228
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0xbf4
	.long	0x1715
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xbf5
	.long	0x348c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2a
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2e
	.string	"try"
	.byte	0x1
	.value	0xc0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF652
	.byte	0x1
	.value	0xc0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xc0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF653
	.byte	0x1
	.value	0xc0f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF654
	.byte	0x1
	.value	0xc10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3b
	.long	.Ldebug_ranges0+0x30
	.long	0x33fe
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0xc22
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xc22
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF655
	.byte	0x1
	.value	0xc23
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF656
	.byte	0x1
	.value	0xc23
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF654
	.byte	0x1
	.value	0xc23
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xc30
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.long	.LASF657
	.byte	0x1
	.value	0xc6c
	.long	0x170a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2f
	.long	.LASF658
	.byte	0x1
	.value	0xc80
	.long	0x170a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF659
	.byte	0x1
	.value	0xc80
	.long	0x170a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF352
	.byte	0x1
	.value	0xc81
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x252
	.uleb128 0x10
	.long	0x166a
	.long	0x347b
	.uleb128 0x11
	.long	0x140
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF660
	.uleb128 0x13
	.long	0x305a
	.uleb128 0x1c
	.long	.LASF661
	.uleb128 0x3
	.byte	0x8
	.long	0x3487
	.uleb128 0x28
	.long	.LASF662
	.byte	0x1
	.byte	0xb4
	.long	0x34a7
	.uleb128 0x9
	.byte	0x3
	.quad	changes
	.uleb128 0x3
	.byte	0x8
	.long	0x177d
	.uleb128 0x28
	.long	.LASF663
	.byte	0x1
	.byte	0xb5
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	changes_allocated
	.uleb128 0x28
	.long	.LASF664
	.byte	0x1
	.byte	0xb7
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	num_changes
	.uleb128 0x10
	.long	0x17e4
	.long	0x34e7
	.uleb128 0x11
	.long	0x140
	.byte	0x4
	.byte	0
	.uleb128 0x2f
	.long	.LASF533
	.byte	0x1
	.value	0xb19
	.long	0x34d7
	.uleb128 0x9
	.byte	0x3
	.quad	peep2_insn_data
	.uleb128 0x2f
	.long	.LASF665
	.byte	0x1
	.value	0xb1a
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	peep2_current
	.uleb128 0x3c
	.long	.LASF666
	.byte	0x8
	.byte	0x62
	.long	0x139
	.uleb128 0x10
	.long	0x147
	.long	0x352e
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x3d
	.long	.LASF667
	.byte	0x8
	.value	0xc3a
	.long	0x353a
	.uleb128 0x13
	.long	0x351e
	.uleb128 0x10
	.long	0x21a
	.long	0x354f
	.uleb128 0x11
	.long	0x140
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.long	.LASF668
	.byte	0x12
	.byte	0x48
	.long	0x355a
	.uleb128 0x13
	.long	0x353f
	.uleb128 0x10
	.long	0x66e
	.long	0x356f
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF171
	.byte	0x9
	.byte	0x34
	.long	0x357a
	.uleb128 0x13
	.long	0x355f
	.uleb128 0x10
	.long	0x213
	.long	0x358f
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF669
	.byte	0x9
	.byte	0x50
	.long	0x359a
	.uleb128 0x13
	.long	0x357f
	.uleb128 0x10
	.long	0x21a
	.long	0x35af
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF670
	.byte	0x9
	.byte	0x60
	.long	0x35ba
	.uleb128 0x13
	.long	0x359f
	.uleb128 0x10
	.long	0x213
	.long	0x35cf
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF671
	.byte	0x2
	.byte	0x36
	.long	0x35da
	.uleb128 0x13
	.long	0x35bf
	.uleb128 0x10
	.long	0x458
	.long	0x35ef
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF672
	.byte	0x2
	.byte	0x3c
	.long	0x35fa
	.uleb128 0x13
	.long	0x35df
	.uleb128 0x10
	.long	0x24b
	.long	0x360f
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF673
	.byte	0x2
	.byte	0x3f
	.long	0x361a
	.uleb128 0x13
	.long	0x35ff
	.uleb128 0x10
	.long	0x2d
	.long	0x362f
	.uleb128 0x11
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x3d
	.long	.LASF674
	.byte	0x2
	.value	0x611
	.long	0x361f
	.uleb128 0x10
	.long	0x2d
	.long	0x364b
	.uleb128 0x11
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x3d
	.long	.LASF675
	.byte	0x2
	.value	0x652
	.long	0x363b
	.uleb128 0x3e
	.long	.LASF676
	.byte	0x1
	.byte	0x57
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	reload_completed
	.uleb128 0x3d
	.long	.LASF677
	.byte	0x2
	.value	0x6d7
	.long	0x139
	.uleb128 0x10
	.long	0x24b
	.long	0x3688
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x3d
	.long	.LASF678
	.byte	0xe
	.value	0x18b
	.long	0x3678
	.uleb128 0x3d
	.long	.LASF679
	.byte	0xe
	.value	0x196
	.long	0x3678
	.uleb128 0x10
	.long	0x139
	.long	0x36b0
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x3d
	.long	.LASF680
	.byte	0xe
	.value	0x1be
	.long	0x36a0
	.uleb128 0x10
	.long	0x127e
	.long	0x36cc
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x3d
	.long	.LASF681
	.byte	0xe
	.value	0x1c7
	.long	0x36bc
	.uleb128 0x10
	.long	0x147
	.long	0x36ee
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x3d
	.long	.LASF682
	.byte	0xe
	.value	0x1d8
	.long	0x36d8
	.uleb128 0x3e
	.long	.LASF683
	.byte	0x1
	.byte	0x46
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	volatile_ok
	.uleb128 0x3e
	.long	.LASF684
	.byte	0x1
	.byte	0x51
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	which_alternative
	.uleb128 0x3e
	.long	.LASF474
	.byte	0x1
	.byte	0x48
	.long	0x1369
	.uleb128 0x9
	.byte	0x3
	.quad	recog_data
	.uleb128 0x10
	.long	0x12a8
	.long	0x374f
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x3e
	.long	.LASF685
	.byte	0x1
	.byte	0x4c
	.long	0x3739
	.uleb128 0x9
	.byte	0x3
	.quad	recog_op_alt
	.uleb128 0x10
	.long	0x1500
	.long	0x376f
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3c
	.long	.LASF492
	.byte	0xf
	.byte	0xf9
	.long	0x377a
	.uleb128 0x13
	.long	0x3764
	.uleb128 0x3c
	.long	.LASF686
	.byte	0xd
	.byte	0xa2
	.long	0x3678
	.uleb128 0x3d
	.long	.LASF687
	.byte	0x13
	.value	0x1c8
	.long	0x139
	.uleb128 0x3d
	.long	.LASF688
	.byte	0x13
	.value	0x244
	.long	0x139
	.uleb128 0x3d
	.long	.LASF689
	.byte	0x13
	.value	0x282
	.long	0x139
	.uleb128 0x3c
	.long	.LASF690
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x3c
	.long	.LASF691
	.byte	0xb
	.byte	0xec
	.long	0x1268
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2116
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF370:
	.string	"REG_BR_PROB"
.LASF400:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF327:
	.string	"rtstr"
.LASF577:
	.string	"nonmemory_operand"
.LASF595:
	.string	"nparallel"
.LASF387:
	.string	"NOTE_INSN_DELETED"
.LASF84:
	.string	"_unused2"
.LASF255:
	.string	"UMOD"
.LASF309:
	.string	"min_align"
.LASF70:
	.string	"_fileno"
.LASF200:
	.string	"DEFINE_COMBINE"
.LASF424:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF335:
	.string	"first"
.LASF618:
	.string	"preprocess_constraints"
.LASF296:
	.string	"CONSTANT_P_RTX"
.LASF660:
	.string	"_Bool"
.LASF326:
	.string	"rtuint"
.LASF690:
	.string	"n_basic_blocks"
.LASF574:
	.string	"const_int_operand"
.LASF330:
	.string	"rt_cselib"
.LASF199:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF259:
	.string	"LSHIFTRT"
.LASF90:
	.string	"_sch_iscntrl"
.LASF638:
	.string	"peep2_reg_dead_p"
.LASF193:
	.string	"MATCH_PAR_DUP"
.LASF75:
	.string	"_shortbuf"
.LASF694:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF679:
	.string	"call_used_regs"
.LASF254:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF96:
	.string	"_sch_isupper"
.LASF633:
	.string	"blocks"
.LASF187:
	.string	"MATCH_OPERAND"
.LASF168:
	.string	"CCFPmode"
.LASF109:
	.string	"reg_class"
.LASF459:
	.string	"OP_INOUT"
.LASF276:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF314:
	.string	"max_after_base"
.LASF528:
	.string	"validate_replace_src_data"
.LASF277:
	.string	"UNLT"
.LASF686:
	.string	"regs_ever_live"
.LASF519:
	.string	"probability"
.LASF140:
	.string	"CTImode"
.LASF56:
	.string	"_flags"
.LASF501:
	.string	"next"
.LASF581:
	.string	"memory_address_p"
.LASF615:
	.string	"extract_insn"
.LASF51:
	.string	"__off_t"
.LASF138:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF298:
	.string	"VEC_MERGE"
.LASF630:
	.string	"last"
.LASF76:
	.string	"_lock"
.LASF426:
	.string	"uhint"
.LASF231:
	.string	"RETURN"
.LASF597:
	.string	"asm_operand_ok"
.LASF495:
	.string	"output_format"
.LASF427:
	.string	"generic"
.LASF527:
	.string	"old_code"
.LASF14:
	.string	"elem"
.LASF492:
	.string	"insn_data"
.LASF594:
	.string	"asmop"
.LASF174:
	.string	"MODE_FLOAT"
.LASF658:
	.string	"nfte"
.LASF460:
	.string	"operand_alternative"
.LASF572:
	.string	"scratch_operand"
.LASF626:
	.string	"reg_fits_class_p"
.LASF318:
	.string	"alias"
.LASF315:
	.string	"offset_unsigned"
.LASF144:
	.string	"V2SImode"
.LASF25:
	.string	"Q_REGS"
.LASF218:
	.string	"CODE_LABEL"
.LASF139:
	.string	"CDImode"
.LASF224:
	.string	"UNSPEC"
.LASF217:
	.string	"BARRIER"
.LASF393:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF220:
	.string	"COND_EXEC"
.LASF234:
	.string	"CONST_INT"
.LASF230:
	.string	"CALL"
.LASF146:
	.string	"V4QImode"
.LASF209:
	.string	"ATTR"
.LASF350:
	.string	"count"
.LASF328:
	.string	"rttype"
.LASF526:
	.string	"object"
.LASF672:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF340:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF417:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF145:
	.string	"V2DImode"
.LASF655:
	.string	"old_insn"
.LASF454:
	.string	"varray_type"
.LASF323:
	.string	"mem_attrs"
.LASF62:
	.string	"_IO_write_end"
.LASF364:
	.string	"REG_UNUSED"
.LASF579:
	.string	"rounded_size"
.LASF202:
	.string	"DEFINE_DELAY"
.LASF252:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF433:
	.string	"sched_info_tag"
.LASF242:
	.string	"STRICT_LOW_PART"
.LASF680:
	.string	"reg_alloc_order"
.LASF548:
	.string	"apply_change_group"
.LASF601:
	.string	"offsettable_nonstrict_memref_p"
.LASF184:
	.string	"INCLUDE"
.LASF413:
	.string	"GR_FRAME_POINTER"
.LASF348:
	.string	"index"
.LASF440:
	.string	"freq"
.LASF280:
	.string	"ZERO_EXTEND"
.LASF283:
	.string	"FLOAT_TRUNCATE"
.LASF472:
	.string	"is_address"
.LASF640:
	.string	"class_str"
.LASF410:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF155:
	.string	"V2SFmode"
.LASF447:
	.string	"varray_data"
.LASF284:
	.string	"FLOAT"
.LASF376:
	.string	"REG_EH_CONTEXT"
.LASF110:
	.string	"machine_mode"
.LASF606:
	.string	"mode_sz"
.LASF333:
	.string	"rtmem"
.LASF293:
	.string	"RANGE_REG"
.LASF331:
	.string	"rtbit"
.LASF500:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF117:
	.string	"TImode"
.LASF269:
	.string	"PRE_MODIFY"
.LASF549:
	.string	"last_validated"
.LASF98:
	.string	"_sch_isidst"
.LASF282:
	.string	"FLOAT_EXTEND"
.LASF496:
	.string	"extraction_pattern"
.LASF437:
	.string	"last_note_uid"
.LASF6:
	.string	"in_struct"
.LASF580:
	.string	"pop_operand"
.LASF388:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF115:
	.string	"SImode"
.LASF226:
	.string	"ADDR_VEC"
.LASF667:
	.string	"regclass_map"
.LASF156:
	.string	"V2DFmode"
.LASF620:
	.string	"constrain_operands"
.LASF308:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF689:
	.string	"flag_non_call_exceptions"
.LASF322:
	.string	"align"
.LASF590:
	.string	"decode_asm_operands"
.LASF337:
	.string	"indx"
.LASF245:
	.string	"SYMBOL_REF"
.LASF386:
	.string	"NOTE_INSN_BIAS"
.LASF106:
	.string	"_sch_isbasic"
.LASF408:
	.string	"NOTE_INSN_MAX"
.LASF471:
	.string	"incmem_ok"
.LASF681:
	.string	"reg_class_contents"
.LASF198:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF250:
	.string	"COMPARE"
.LASF278:
	.string	"LTGT"
.LASF693:
	.string	"recog.c"
.LASF290:
	.string	"HIGH"
.LASF247:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF116:
	.string	"DImode"
.LASF509:
	.string	"elms"
.LASF422:
	.string	"const_equiv_data"
.LASF497:
	.string	"EP_insv"
.LASF69:
	.string	"_chain"
.LASF546:
	.string	"is_asm"
.LASF268:
	.string	"POST_INC"
.LASF682:
	.string	"reg_class_subunion"
.LASF129:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF612:
	.string	"extract_constrain_insn_cached"
.LASF670:
	.string	"mode_bitsize"
.LASF696:
	.string	"_IO_lock_t"
.LASF468:
	.string	"offmem_ok"
.LASF462:
	.string	"class"
.LASF444:
	.string	"basic_block"
.LASF112:
	.string	"BImode"
.LASF266:
	.string	"PRE_INC"
.LASF363:
	.string	"REG_NO_CONFLICT"
.LASF126:
	.string	"SFmode"
.LASF97:
	.string	"_sch_isxdigit"
.LASF477:
	.string	"constraints"
.LASF493:
	.string	"output"
.LASF215:
	.string	"JUMP_INSN"
.LASF345:
	.string	"cond_local_set"
.LASF520:
	.string	"edge"
.LASF486:
	.string	"insn_operand_predicate_fn"
.LASF178:
	.string	"MODE_COMPLEX_FLOAT"
.LASF332:
	.string	"rttree"
.LASF385:
	.string	"insn_note"
.LASF475:
	.string	"operand"
.LASF404:
	.string	"NOTE_INSN_RANGE_END"
.LASF197:
	.string	"DEFINE_SPLIT"
.LASF543:
	.string	"insn_invalid_p"
.LASF236:
	.string	"CONST_VECTOR"
.LASF194:
	.string	"MATCH_INSN"
.LASF525:
	.string	"change_t"
.LASF498:
	.string	"EP_extv"
.LASF127:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF513:
	.string	"gcov_type"
.LASF45:
	.string	"size_t"
.LASF228:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF121:
	.string	"PSImode"
.LASF553:
	.string	"is_mode"
.LASF556:
	.string	"validate_replace_rtx_subexp"
.LASF292:
	.string	"RANGE_INFO"
.LASF423:
	.string	"rtunion_def"
.LASF534:
	.string	"live_before"
.LASF208:
	.string	"DEFINE_ATTR"
.LASF210:
	.string	"SET_ATTR"
.LASF135:
	.string	"TCmode"
.LASF285:
	.string	"UNSIGNED_FLOAT"
.LASF375:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF432:
	.string	"cselib_val_struct"
.LASF407:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF61:
	.string	"_IO_write_ptr"
.LASF632:
	.string	"upd_life"
.LASF257:
	.string	"ROTATE"
.LASF343:
	.string	"succ"
.LASF439:
	.string	"refs"
.LASF547:
	.string	"newpat"
.LASF281:
	.string	"TRUNCATE"
.LASF583:
	.string	"memory_operand"
.LASF368:
	.string	"REG_DEP_ANTI"
.LASF132:
	.string	"SCmode"
.LASF532:
	.string	"other"
.LASF671:
	.string	"rtx_length"
.LASF418:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF122:
	.string	"PDImode"
.LASF529:
	.string	"from"
.LASF389:
	.string	"NOTE_INSN_BLOCK_END"
.LASF429:
	.string	"bitmap"
.LASF398:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF673:
	.string	"rtx_class"
.LASF567:
	.string	"link"
.LASF352:
	.string	"flags"
.LASF185:
	.string	"EXPR_LIST"
.LASF212:
	.string	"EQ_ATTR"
.LASF599:
	.string	"find_constant_term_loc"
.LASF165:
	.string	"CCGOCmode"
.LASF243:
	.string	"CONCAT"
.LASF515:
	.string	"pred_next"
.LASF311:
	.string	"min_after_vec"
.LASF645:
	.string	"raw_regno"
.LASF100:
	.string	"_sch_isnvsp"
.LASF54:
	.string	"FILE"
.LASF249:
	.string	"COND"
.LASF506:
	.string	"simple_bitmap_def"
.LASF175:
	.string	"MODE_PARTIAL_INT"
.LASF647:
	.string	"peephole2_optimize"
.LASF15:
	.string	"tree"
.LASF604:
	.string	"ycode"
.LASF133:
	.string	"DCmode"
.LASF104:
	.string	"_sch_isgraph"
.LASF692:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF258:
	.string	"ASHIFTRT"
.LASF613:
	.string	"constrain_operands_cached"
.LASF163:
	.string	"CCmode"
.LASF341:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF391:
	.string	"NOTE_INSN_LOOP_END"
.LASF161:
	.string	"V16SFmode"
.LASF628:
	.string	"find_single_use_1"
.LASF405:
	.string	"NOTE_INSN_LIVE"
.LASF205:
	.string	"DEFINE_COND_EXEC"
.LASF639:
	.string	"peep2_find_free_register"
.LASF65:
	.string	"_IO_save_base"
.LASF582:
	.string	"addr"
.LASF466:
	.string	"earlyclobber"
.LASF201:
	.string	"DEFINE_EXPAND"
.LASF450:
	.string	"elements_used"
.LASF152:
	.string	"V8SImode"
.LASF214:
	.string	"INSN"
.LASF325:
	.string	"rtint"
.LASF617:
	.string	"normal_insn"
.LASF244:
	.string	"LABEL_REF"
.LASF575:
	.string	"const_double_operand"
.LASF614:
	.string	"strict"
.LASF367:
	.string	"REG_LABEL"
.LASF568:
	.string	"general_operand"
.LASF446:
	.string	"elt_list"
.LASF355:
	.string	"REG_DEAD"
.LASF395:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF79:
	.string	"__pad2"
.LASF669:
	.string	"mode_size"
.LASF358:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF512:
	.string	"regset"
.LASF523:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF491:
	.string	"eliminable"
.LASF560:
	.string	"validate_replace_rtx_1"
.LASF164:
	.string	"CCGCmode"
.LASF347:
	.string	"global_live_at_end"
.LASF570:
	.string	"register_operand"
.LASF558:
	.string	"cancel_changes"
.LASF240:
	.string	"SCRATCH"
.LASF150:
	.string	"V8QImode"
.LASF153:
	.string	"V8DImode"
.LASF181:
	.string	"MAX_MODE_CLASS"
.LASF677:
	.string	"reload_in_progress"
.LASF622:
	.string	"funny_match_index"
.LASF92:
	.string	"_sch_islower"
.LASF279:
	.string	"SIGN_EXTEND"
.LASF674:
	.string	"const_int_rtx"
.LASF301:
	.string	"VEC_DUPLICATE"
.LASF505:
	.string	"bitmap_head"
.LASF86:
	.string	"_next"
.LASF484:
	.string	"n_alternatives"
.LASF319:
	.string	"expr"
.LASF401:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF559:
	.string	"validate_replace_rtx_group"
.LASF478:
	.string	"operand_mode"
.LASF159:
	.string	"V8SFmode"
.LASF531:
	.string	"this"
.LASF485:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF652:
	.string	"before_try"
.LASF366:
	.string	"REG_CC_USER"
.LASF223:
	.string	"ASM_OPERANDS"
.LASF642:
	.string	"search_ofs"
.LASF675:
	.string	"global_rtl"
.LASF609:
	.string	"mode_independent_operand"
.LASF623:
	.string	"opno"
.LASF167:
	.string	"CCZmode"
.LASF392:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF644:
	.string	"this_live"
.LASF551:
	.string	"prev_changes"
.LASF27:
	.string	"INDEX_REGS"
.LASF643:
	.string	"live"
.LASF571:
	.string	"pmode_register_operand"
.LASF463:
	.string	"reject"
.LASF381:
	.string	"REG_NON_LOCAL_GOTO"
.LASF593:
	.string	"template"
.LASF530:
	.string	"funny_match"
.LASF227:
	.string	"ADDR_DIFF_VEC"
.LASF461:
	.string	"constraint"
.LASF289:
	.string	"ZERO_EXTRACT"
.LASF425:
	.string	"hint"
.LASF222:
	.string	"ASM_INPUT"
.LASF272:
	.string	"ORDERED"
.LASF160:
	.string	"V8DFmode"
.LASF449:
	.string	"num_elements"
.LASF286:
	.string	"UNSIGNED_FIX"
.LASF29:
	.string	"GENERAL_REGS"
.LASF563:
	.string	"result"
.LASF661:
	.string	"propagate_block_info"
.LASF452:
	.string	"name"
.LASF186:
	.string	"INSN_LIST"
.LASF87:
	.string	"_sbuf"
.LASF469:
	.string	"nonoffmem_ok"
.LASF294:
	.string	"RANGE_VAR"
.LASF445:
	.string	"changes_mode"
.LASF67:
	.string	"_IO_save_end"
.LASF173:
	.string	"MODE_INT"
.LASF451:
	.string	"element_size"
.LASF554:
	.string	"new_mode"
.LASF2:
	.string	"jump"
.LASF627:
	.string	"regno"
.LASF607:
	.string	"good"
.LASF586:
	.string	"comparison_operator"
.LASF295:
	.string	"RANGE_LIVE"
.LASF143:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF474:
	.string	"recog_data"
.LASF431:
	.string	"const_equiv"
.LASF550:
	.string	"op0_mode"
.LASF436:
	.string	"last_uid"
.LASF329:
	.string	"rt_addr_diff_vec_flags"
.LASF636:
	.string	"peep2_next_insn"
.LASF415:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF304:
	.string	"SS_MINUS"
.LASF191:
	.string	"MATCH_PARALLEL"
.LASF148:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF524:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF357:
	.string	"REG_EQUIV"
.LASF656:
	.string	"new_insn"
.LASF48:
	.string	"short unsigned int"
.LASF91:
	.string	"_sch_isdigit"
.LASF49:
	.string	"signed char"
.LASF190:
	.string	"MATCH_OPERATOR"
.LASF646:
	.string	"success"
.LASF448:
	.string	"varray_head_tag"
.LASF336:
	.string	"current"
.LASF488:
	.string	"insn_operand_data"
.LASF306:
	.string	"SS_TRUNCATE"
.LASF371:
	.string	"REG_EXEC_COUNT"
.LASF678:
	.string	"fixed_regs"
.LASF470:
	.string	"decmem_ok"
.LASF310:
	.string	"base_after_vec"
.LASF195:
	.string	"DEFINE_INSN"
.LASF566:
	.string	"ploc"
.LASF52:
	.string	"__off64_t"
.LASF149:
	.string	"V4DImode"
.LASF349:
	.string	"loop_depth"
.LASF59:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF77:
	.string	"_offset"
.LASF416:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF369:
	.string	"REG_DEP_OUTPUT"
.LASF535:
	.string	"init_recog_no_volatile"
.LASF64:
	.string	"_IO_buf_end"
.LASF507:
	.string	"n_bits"
.LASF204:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF305:
	.string	"US_MINUS"
.LASF635:
	.string	"split_all_insns_noflow"
.LASF541:
	.string	"validate_change"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF288:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF442:
	.string	"live_length"
.LASF229:
	.string	"CLOBBER"
.LASF514:
	.string	"edge_def"
.LASF83:
	.string	"_mode"
.LASF179:
	.string	"MODE_VECTOR_INT"
.LASF60:
	.string	"_IO_write_base"
.LASF373:
	.string	"REG_SAVE_AREA"
.LASF297:
	.string	"CALL_PLACEHOLDER"
.LASF157:
	.string	"V4SFmode"
.LASF457:
	.string	"OP_IN"
.LASF663:
	.string	"changes_allocated"
.LASF684:
	.string	"which_alternative"
.LASF251:
	.string	"PLUS"
.LASF542:
	.string	"in_group"
.LASF267:
	.string	"POST_DEC"
.LASF503:
	.string	"bits"
.LASF114:
	.string	"HImode"
.LASF353:
	.string	"rtunion"
.LASF394:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF522:
	.string	"UPDATE_LIFE_LOCAL"
.LASF177:
	.string	"MODE_COMPLEX_INT"
.LASF552:
	.string	"wanted_mode"
.LASF44:
	.string	"long int"
.LASF621:
	.string	"matching_operands"
.LASF420:
	.string	"GR_VIRTUAL_CFA"
.LASF691:
	.string	"basic_block_info"
.LASF359:
	.string	"REG_WAS_0"
.LASF499:
	.string	"EP_extzv"
.LASF380:
	.string	"REG_NORETURN"
.LASF85:
	.string	"_IO_marker"
.LASF128:
	.string	"XFmode"
.LASF379:
	.string	"REG_MAYBE_DEAD"
.LASF616:
	.string	"asm_insn"
.LASF697:
	.string	"num_validated_changes"
.LASF158:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF354:
	.string	"reg_note"
.LASF483:
	.string	"n_dups"
.LASF105:
	.string	"_sch_iscppsp"
.LASF182:
	.string	"rtx_code"
.LASF490:
	.string	"strict_low"
.LASF557:
	.string	"validate_replace_rtx"
.LASF533:
	.string	"peep2_insn_data"
.LASF473:
	.string	"anything_ok"
.LASF20:
	.string	"CREG"
.LASF624:
	.string	"match"
.LASF183:
	.string	"UNKNOWN"
.LASF225:
	.string	"UNSPEC_VOLATILE"
.LASF665:
	.string	"peep2_current"
.LASF480:
	.string	"dup_loc"
.LASF600:
	.string	"offsettable_memref_p"
.LASF397:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF537:
	.string	"recog_memoized_1"
.LASF94:
	.string	"_sch_ispunct"
.LASF124:
	.string	"HFmode"
.LASF232:
	.string	"TRAP_IF"
.LASF441:
	.string	"deaths"
.LASF685:
	.string	"recog_op_alt"
.LASF377:
	.string	"REG_EH_REGION"
.LASF482:
	.string	"n_operands"
.LASF587:
	.string	"asm_noperands"
.LASF360:
	.string	"REG_RETVAL"
.LASF569:
	.string	"address_operand"
.LASF136:
	.string	"CQImode"
.LASF53:
	.string	"char"
.LASF134:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF63:
	.string	"_IO_buf_base"
.LASF260:
	.string	"ROTATERT"
.LASF625:
	.string	"eopno"
.LASF246:
	.string	"ADDRESSOF"
.LASF382:
	.string	"REG_SETJMP"
.LASF668:
	.string	"_sch_istable"
.LASF142:
	.string	"V2QImode"
.LASF120:
	.string	"PHImode"
.LASF58:
	.string	"_IO_read_end"
.LASF434:
	.string	"reg_info_def"
.LASF141:
	.string	"COImode"
.LASF265:
	.string	"PRE_DEC"
.LASF489:
	.string	"predicate"
.LASF99:
	.string	"_sch_isvsp"
.LASF55:
	.string	"_IO_FILE"
.LASF396:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF414:
	.string	"GR_HARD_FRAME_POINTER"
.LASF365:
	.string	"REG_CC_SETTER"
.LASF456:
	.string	"op_type"
.LASF172:
	.string	"MODE_RANDOM"
.LASF303:
	.string	"US_PLUS"
.LASF649:
	.string	"rs_heads"
.LASF664:
	.string	"num_changes"
.LASF162:
	.string	"BLKmode"
.LASF561:
	.string	"validate_replace_src_1"
.LASF131:
	.string	"HCmode"
.LASF589:
	.string	"n_sets"
.LASF511:
	.string	"regset_head"
.LASF538:
	.string	"check_asm_operands"
.LASF237:
	.string	"CONST_STRING"
.LASF300:
	.string	"VEC_CONCAT"
.LASF611:
	.string	"extract_insn_cached"
.LASF321:
	.string	"size"
.LASF78:
	.string	"__pad1"
.LASF80:
	.string	"__pad3"
.LASF81:
	.string	"__pad4"
.LASF82:
	.string	"__pad5"
.LASF372:
	.string	"REG_NOALIAS"
.LASF213:
	.string	"ATTR_FLAG"
.LASF169:
	.string	"CCFPUmode"
.LASF356:
	.string	"REG_INC"
.LASF203:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF510:
	.string	"sbitmap"
.LASF605:
	.string	"addressp"
.LASF68:
	.string	"_markers"
.LASF88:
	.string	"_pos"
.LASF207:
	.string	"ADDRESS"
.LASF518:
	.string	"insns"
.LASF629:
	.string	"split_insn"
.LASF578:
	.string	"push_operand"
.LASF585:
	.string	"indirect_operand"
.LASF428:
	.string	"cptr"
.LASF334:
	.string	"bitmap_head_def"
.LASF494:
	.string	"genfun"
.LASF608:
	.string	"mode_dependent_address_p"
.LASF634:
	.string	"changed"
.LASF443:
	.string	"calls_crossed"
.LASF307:
	.string	"US_TRUNCATE"
.LASF662:
	.string	"changes"
.LASF409:
	.string	"global_rtl_index"
.LASF302:
	.string	"SS_PLUS"
.LASF536:
	.string	"init_recog"
.LASF264:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF316:
	.string	"scale"
.LASF113:
	.string	"QImode"
.LASF666:
	.string	"target_flags"
.LASF683:
	.string	"volatile_ok"
.LASF453:
	.string	"data"
.LASF412:
	.string	"GR_STACK_POINTER"
.LASF125:
	.string	"TQFmode"
.LASF339:
	.string	"head"
.LASF631:
	.string	"split_all_insns"
.LASF313:
	.string	"min_after_base"
.LASF653:
	.string	"match_len"
.LASF430:
	.string	"sched"
.LASF659:
	.string	"nehe"
.LASF651:
	.string	"do_rebuild_jump_labels"
.LASF544:
	.string	"num_clobbers"
.LASF17:
	.string	"NO_REGS"
.LASF687:
	.string	"flag_pic"
.LASF118:
	.string	"OImode"
.LASF539:
	.string	"noperands"
.LASF378:
	.string	"REG_SAVE_NOTE"
.LASF508:
	.string	"bytes"
.LASF262:
	.string	"SMAX"
.LASF421:
	.string	"GR_MAX"
.LASF299:
	.string	"VEC_SELECT"
.LASF641:
	.string	"reg_set"
.LASF362:
	.string	"REG_NONNEG"
.LASF540:
	.string	"operands"
.LASF564:
	.string	"this_result"
.LASF180:
	.string	"MODE_VECTOR_FLOAT"
.LASF270:
	.string	"POST_MODIFY"
.LASF374:
	.string	"REG_BR_PRED"
.LASF196:
	.string	"DEFINE_PEEPHOLE"
.LASF107:
	.string	"long long unsigned int"
.LASF403:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF320:
	.string	"offset"
.LASF317:
	.string	"addr_diff_vec_flags"
.LASF73:
	.string	"_cur_column"
.LASF192:
	.string	"MATCH_OP_DUP"
.LASF206:
	.string	"SEQUENCE"
.LASF123:
	.string	"QFmode"
.LASF438:
	.string	"sets"
.LASF562:
	.string	"validate_replace_src"
.LASF233:
	.string	"RESX"
.LASF89:
	.string	"_sch_isblank"
.LASF555:
	.string	"newmem"
.LASF517:
	.string	"dest"
.LASF221:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF565:
	.string	"find_single_use"
.LASF66:
	.string	"_IO_backup_base"
.LASF271:
	.string	"UNORDERED"
.LASF170:
	.string	"MAX_MACHINE_MODE"
.LASF57:
	.string	"_IO_read_ptr"
.LASF596:
	.string	"nout"
.LASF346:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF188:
	.string	"MATCH_SCRATCH"
.LASF238:
	.string	"CONST"
.LASF465:
	.string	"matched"
.LASF287:
	.string	"SQRT"
.LASF411:
	.string	"GR_CC0"
.LASF464:
	.string	"matches"
.LASF171:
	.string	"mode_class"
.LASF253:
	.string	"MULT"
.LASF176:
	.string	"MODE_CC"
.LASF344:
	.string	"local_set"
.LASF119:
	.string	"PQImode"
.LASF584:
	.string	"inner"
.LASF151:
	.string	"V8HImode"
.LASF72:
	.string	"_old_offset"
.LASF216:
	.string	"CALL_INSN"
.LASF592:
	.string	"modes"
.LASF241:
	.string	"SUBREG"
.LASF101:
	.string	"_sch_isalpha"
.LASF545:
	.string	"icode"
.LASF154:
	.string	"V16QImode"
.LASF383:
	.string	"REG_ALWAYS_RETURN"
.LASF650:
	.string	"do_cleanup_cfg"
.LASF108:
	.string	"long long int"
.LASF576:
	.string	"nonimmediate_operand"
.LASF361:
	.string	"REG_LIBCALL"
.LASF71:
	.string	"_flags2"
.LASF130:
	.string	"QCmode"
.LASF239:
	.string	"VALUE"
.LASF219:
	.string	"NOTE"
.LASF458:
	.string	"OP_OUT"
.LASF263:
	.string	"UMIN"
.LASF189:
	.string	"MATCH_DUP"
.LASF93:
	.string	"_sch_isprint"
.LASF455:
	.string	"HARD_REG_ELT_TYPE"
.LASF338:
	.string	"basic_block_def"
.LASF676:
	.string	"reload_completed"
.LASF102:
	.string	"_sch_isalnum"
.LASF7:
	.string	"used"
.LASF588:
	.string	"body"
.LASF390:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF504:
	.string	"bitmap_element"
.LASF137:
	.string	"CHImode"
.LASF95:
	.string	"_sch_isspace"
.LASF406:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF211:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF235:
	.string	"CONST_DOUBLE"
.LASF435:
	.string	"first_uid"
.LASF166:
	.string	"CCNOmode"
.LASF147:
	.string	"V4HImode"
.LASF273:
	.string	"UNEQ"
.LASF591:
	.string	"operand_locs"
.LASF256:
	.string	"ASHIFT"
.LASF261:
	.string	"SMIN"
.LASF598:
	.string	"__FUNCTION__"
.LASF248:
	.string	"IF_THEN_ELSE"
.LASF688:
	.string	"frame_pointer_needed"
.LASF481:
	.string	"dup_num"
.LASF602:
	.string	"offsettable_address_p"
.LASF402:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF103:
	.string	"_sch_isidnum"
.LASF399:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF637:
	.string	"peep2_regno_dead_p"
.LASF695:
	.string	"tree_node"
.LASF619:
	.string	"op_alt"
.LASF654:
	.string	"note"
.LASF573:
	.string	"immediate_operand"
.LASF603:
	.string	"strictp"
.LASF312:
	.string	"max_after_vec"
.LASF274:
	.string	"UNGE"
.LASF657:
	.string	"eh_edge"
.LASF476:
	.string	"operand_loc"
.LASF50:
	.string	"short int"
.LASF342:
	.string	"pred"
.LASF275:
	.string	"UNGT"
.LASF648:
	.string	"dump_file"
.LASF479:
	.string	"operand_type"
.LASF467:
	.string	"memory_ok"
.LASF502:
	.string	"prev"
.LASF74:
	.string	"_vtable_offset"
.LASF487:
	.string	"insn_gen_fn"
.LASF610:
	.string	"lose"
.LASF111:
	.string	"VOIDmode"
.LASF384:
	.string	"REG_VTABLE_REF"
.LASF419:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF291:
	.string	"LO_SUM"
.LASF521:
	.string	"update_life_extent"
.LASF351:
	.string	"frequency"
.LASF324:
	.string	"rtwint"
.LASF516:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
